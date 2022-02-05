; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

	ld e, $e7                                        ; $4000: $1e $e7
	ccf                                              ; $4002: $3f
	di                                               ; $4003: $f3
	ld a, a                                          ; $4004: $7f
	adc c                                            ; $4005: $89
	rst $38                                          ; $4006: $ff
	push bc                                          ; $4007: $c5
	rst $38                                          ; $4008: $ff
	inc hl                                           ; $4009: $23
	rst $38                                          ; $400a: $ff
	inc de                                           ; $400b: $13
	rst $38                                          ; $400c: $ff
	adc c                                            ; $400d: $89
	rst SubAFromDE                                          ; $400e: $df
	ld c, h                                          ; $400f: $4c
	rst AddAOntoHL                                          ; $4010: $ef
	ld b, [hl]                                       ; $4011: $46
	rst AddAOntoHL                                          ; $4012: $ef
	dec h                                            ; $4013: $25
	rst FarCall                                          ; $4014: $f7
	inc h                                            ; $4015: $24
	sbc l                                            ; $4016: $9d
	rst FarCall                                          ; $4017: $f7
	ld [hl+], a                                      ; $4018: $22
	ld a, e                                          ; $4019: $7b
	cp $9d                                           ; $401a: $fe $9d
	and d                                            ; $401c: $a2
	rst $38                                          ; $401d: $ff
	ld e, e                                          ; $401e: $5b
	ld h, b                                          ; $401f: $60
	sub l                                            ; $4020: $95
	add b                                            ; $4021: $80
	rst $38                                          ; $4022: $ff
	ld e, $f3                                        ; $4023: $1e $f3
	scf                                              ; $4025: $37
	db $eb                                           ; $4026: $eb
	rst $38                                          ; $4027: $ff
	ld [hl], h                                       ; $4028: $74
	ld a, $3f                                        ; $4029: $3e $3f
	ld e, e                                          ; $402b: $5b
	ld h, b                                          ; $402c: $60
	ld d, e                                          ; $402d: $53
	add b                                            ; $402e: $80
	sbc d                                            ; $402f: $9a
	add hl, bc                                       ; $4030: $09
	or $0f                                           ; $4031: $f6 $0f
	rst JumpTable                                          ; $4033: $c7
	adc c                                            ; $4034: $89
	dec de                                           ; $4035: $1b
	add b                                            ; $4036: $80
	sub h                                            ; $4037: $94
	inc bc                                           ; $4038: $03
	cp $f1                                           ; $4039: $fe $f1
	sbc [hl]                                         ; $403b: $9e
	cp c                                             ; $403c: $b9
	sbc $fd                                          ; $403d: $de $fd
	xor [hl]                                         ; $403f: $ae
	ldh [$fd], a                                     ; $4040: $e0 $fd
	ld [hl], c                                       ; $4042: $71
	ld h, a                                          ; $4043: $67
	add b                                            ; $4044: $80
	ld d, e                                          ; $4045: $53
	and b                                            ; $4046: $a0
	sbc b                                            ; $4047: $98
	nop                                              ; $4048: $00
	rst $38                                          ; $4049: $ff
	ld a, a                                          ; $404a: $7f
	rst $38                                          ; $404b: $ff
	ld a, $eb                                        ; $404c: $3e $eb
	rst AddAOntoHL                                          ; $404e: $ef
	ld d, a                                          ; $404f: $57
	nop                                              ; $4050: $00
	ld c, e                                          ; $4051: $4b
	ret nz                                           ; $4052: $c0

	sub [hl]                                         ; $4053: $96
	ld bc, $f9fe                                     ; $4054: $01 $fe $f9

Call_064_4057:
	cp [hl]                                          ; $4057: $be
	cp l                                             ; $4058: $bd
	sbc $f0                                          ; $4059: $de $f0
	db $fd                                           ; $405b: $fd
	ld h, c                                          ; $405c: $61
	dec hl                                           ; $405d: $2b
	ret nz                                           ; $405e: $c0

	ld a, a                                          ; $405f: $7f
	ld sp, hl                                        ; $4060: $f9
	sbc c                                            ; $4061: $99
	ccf                                              ; $4062: $3f
	rst $38                                          ; $4063: $ff
	pop hl                                           ; $4064: $e1
	ld a, a                                          ; $4065: $7f
	ld a, [hl]                                       ; $4066: $7e
	cp [hl]                                          ; $4067: $be
	daa                                              ; $4068: $27
	ld h, b                                          ; $4069: $60
	ld a, [hl]                                       ; $406a: $7e
	ldh [rIF], a                                     ; $406b: $e0 $0f
	ld h, b                                          ; $406d: $60
	ld a, a                                          ; $406e: $7f
	and b                                            ; $406f: $a0
	sbc d                                            ; $4070: $9a
	dec b                                            ; $4071: $05
	cp $fd                                           ; $4072: $fe $fd
	cp $c8                                           ; $4074: $fe $c8
	ld e, a                                          ; $4076: $5f
	ld h, b                                          ; $4077: $60
	sbc d                                            ; $4078: $9a
	ld a, $1a                                        ; $4079: $3e $1a
	inc e                                            ; $407b: $1c
	inc c                                            ; $407c: $0c
	inc c                                            ; $407d: $0c
	cp [hl]                                          ; $407e: $be
	ld bc, $0f03                                     ; $407f: $01 $03 $0f
	sbc b                                            ; $4082: $98
	inc bc                                           ; $4083: $03
	cp a                                             ; $4084: $bf
	rrca                                             ; $4085: $0f
	ei                                               ; $4086: $fb
	rst $38                                          ; $4087: $ff
	ld [$773f], a                                    ; $4088: $ea $3f $77
	cp $93                                           ; $408b: $fe $93
	ld l, d                                          ; $408d: $6a
	ccf                                              ; $408e: $3f
	ld l, c                                          ; $408f: $69
	ccf                                              ; $4090: $3f
	ld [hl], l                                       ; $4091: $75
	rra                                              ; $4092: $1f
	ld [hl], l                                       ; $4093: $75
	rra                                              ; $4094: $1f
	inc [hl]                                         ; $4095: $34
	rra                                              ; $4096: $1f
	ld [hl-], a                                      ; $4097: $32
	ld [de], a                                       ; $4098: $12
	rrca                                             ; $4099: $0f
	ldh [$df], a                                     ; $409a: $e0 $df
	ld a, [hl-]                                      ; $409c: $3a
	sbc e                                            ; $409d: $9b
	inc e                                            ; $409e: $1c
	db $10                                           ; $409f: $10
	inc c                                            ; $40a0: $0c
	inc c                                            ; $40a1: $0c
	rra                                              ; $40a2: $1f
	ldh [$97], a                                     ; $40a3: $e0 $97
	ld a, $36                                        ; $40a5: $3e $36
	jr nc, jr_064_40d9                               ; $40a7: $30 $30

	inc a                                            ; $40a9: $3c
	db $10                                           ; $40aa: $10
	dec e                                            ; $40ab: $1d
	inc c                                            ; $40ac: $0c
	daa                                              ; $40ad: $27
	ldh [$2e], a                                     ; $40ae: $e0 $2e
	ld bc, $a584                                     ; $40b0: $01 $84 $a5
	rst $38                                          ; $40b3: $ff
	rst SubAFromDE                                          ; $40b4: $df
	ld a, a                                          ; $40b5: $7f
	cp a                                             ; $40b6: $bf
	pop af                                           ; $40b7: $f1
	ret nz                                           ; $40b8: $c0

	ret nz                                           ; $40b9: $c0

	nop                                              ; $40ba: $00
	ld a, a                                          ; $40bb: $7f
	ld a, a                                          ; $40bc: $7f
	sbc [hl]                                         ; $40bd: $9e
	di                                               ; $40be: $f3
	inc sp                                           ; $40bf: $33
	and $ef                                          ; $40c0: $e6 $ef
	ld l, h                                          ; $40c2: $6c
	ld a, [hl]                                       ; $40c3: $7e
	ld [hl], d                                       ; $40c4: $72
	ld e, $3d                                        ; $40c5: $1e $3d
	ld e, $9e                                        ; $40c7: $1e $9e
	nop                                              ; $40c9: $00
	add b                                            ; $40ca: $80
	nop                                              ; $40cb: $00
	ld a, a                                          ; $40cc: $7f
	ld hl, sp+$7f                                    ; $40cd: $f8 $7f
	db $f4                                           ; $40cf: $f4
	add b                                            ; $40d0: $80
	ldh [$c0], a                                     ; $40d1: $e0 $c0
	ld hl, sp+$30                                    ; $40d3: $f8 $30
	rst $38                                          ; $40d5: $ff
	adc h                                            ; $40d6: $8c
	rst $38                                          ; $40d7: $ff
	add e                                            ; $40d8: $83

jr_064_40d9:
	ld a, c                                          ; $40d9: $79
	ret nz                                           ; $40da: $c0

	jr c, jr_064_413d                                ; $40db: $38 $60

	db $10                                           ; $40dd: $10
	jr nc, jr_064_40e8                               ; $40de: $30 $08

	sbc b                                            ; $40e0: $98
	ld c, h                                          ; $40e1: $4c
	ld c, b                                          ; $40e2: $48
	inc h                                            ; $40e3: $24
	ld l, h                                          ; $40e4: $6c
	ld d, $bc                                        ; $40e5: $16 $bc
	sub d                                            ; $40e7: $92

jr_064_40e8:
	cp $4b                                           ; $40e8: $fe $4b
	cp $3c                                           ; $40ea: $fe $3c
	rst AddAOntoHL                                          ; $40ec: $ef
	ld a, l                                          ; $40ed: $7d
	rst JumpTable                                          ; $40ee: $c7
	ei                                               ; $40ef: $fb
	add b                                            ; $40f0: $80
	adc [hl]                                         ; $40f1: $8e
	rra                                              ; $40f2: $1f
	db $ec                                           ; $40f3: $ec
	rrca                                             ; $40f4: $0f
	ld sp, hl                                        ; $40f5: $f9
	rst FarCall                                          ; $40f6: $f7
	add hl, de                                       ; $40f7: $19
	or $09                                           ; $40f8: $f6 $09
	or $0f                                           ; $40fa: $f6 $0f
	rst JumpTable                                          ; $40fc: $c7
	add hl, bc                                       ; $40fd: $09
	adc a                                            ; $40fe: $8f
	nop                                              ; $40ff: $00
	ld c, $00                                        ; $4100: $0e $00
	ld a, [de]                                       ; $4102: $1a
	nop                                              ; $4103: $00
	ld [hl], e                                       ; $4104: $73
	nop                                              ; $4105: $00
	jp $0702                                         ; $4106: $c3 $02 $07


	inc bc                                           ; $4109: $03
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	adc $ff                                          ; $410c: $ce $ff
	adc $7b                                          ; $410e: $ce $7b
	add b                                            ; $4110: $80
	jp nc, $be7f                                     ; $4111: $d2 $7f $be

	rst $38                                          ; $4114: $ff
	rst JumpTable                                          ; $4115: $c7
	rst $38                                          ; $4116: $ff
	rst $38                                          ; $4117: $ff
	ld [bc], a                                       ; $4118: $02
	db $fd                                           ; $4119: $fd
	ld [hl], e                                       ; $411a: $73
	sbc [hl]                                         ; $411b: $9e
	sbc c                                            ; $411c: $99
	ld [hl], $7d                                     ; $411d: $36 $7d
	ld h, [hl]                                       ; $411f: $66
	pop af                                           ; $4120: $f1
	sbc [hl]                                         ; $4121: $9e
	ldh a, [$fd]                                     ; $4122: $f0 $fd
	pop hl                                           ; $4124: $e1
	ld a, e                                          ; $4125: $7b
	ld bc, $0387                                     ; $4126: $01 $87 $03
	rst $38                                          ; $4129: $ff
	rrca                                             ; $412a: $0f
	jr c, jr_064_413d                                ; $412b: $38 $10

	ld a, a                                          ; $412d: $7f
	db $10                                           ; $412e: $10
	ld a, a                                          ; $412f: $7f
	add a                                            ; $4130: $87
	ld e, $e7                                        ; $4131: $1e $e7
	ccf                                              ; $4133: $3f
	di                                               ; $4134: $f3
	ld a, a                                          ; $4135: $7f
	adc c                                            ; $4136: $89
	rst $38                                          ; $4137: $ff
	push bc                                          ; $4138: $c5
	rst $38                                          ; $4139: $ff
	inc hl                                           ; $413a: $23
	rst $38                                          ; $413b: $ff
	inc de                                           ; $413c: $13

jr_064_413d:
	rst $38                                          ; $413d: $ff
	adc c                                            ; $413e: $89
	rst SubAFromDE                                          ; $413f: $df
	ld c, h                                          ; $4140: $4c
	rst AddAOntoHL                                          ; $4141: $ef
	ld b, [hl]                                       ; $4142: $46
	rst AddAOntoHL                                          ; $4143: $ef
	dec h                                            ; $4144: $25
	rst FarCall                                          ; $4145: $f7
	inc h                                            ; $4146: $24
	rst FarCall                                          ; $4147: $f7
	ld [hl+], a                                      ; $4148: $22
	ld a, e                                          ; $4149: $7b
	cp $9d                                           ; $414a: $fe $9d
	and d                                            ; $414c: $a2
	rst $38                                          ; $414d: $ff
	ld e, e                                          ; $414e: $5b
	ld h, b                                          ; $414f: $60
	sub h                                            ; $4150: $94
	add b                                            ; $4151: $80
	rst $38                                          ; $4152: $ff
	ccf                                              ; $4153: $3f
	rst SubAFromBC                                          ; $4154: $e7
	ld h, a                                          ; $4155: $67
	jp c, Jump_064_62df                              ; $4156: $da $df $62

	ld a, $3f                                        ; $4159: $3e $3f
	ld a, $5f                                        ; $415b: $3e $5f
	ld h, b                                          ; $415d: $60
	ld d, e                                          ; $415e: $53
	and b                                            ; $415f: $a0
	sbc b                                            ; $4160: $98
	inc bc                                           ; $4161: $03
	cp $f1                                           ; $4162: $fe $f1
	cp [hl]                                          ; $4164: $be
	cp l                                             ; $4165: $bd
	ld d, [hl]                                       ; $4166: $56
	ld [hl], c                                       ; $4167: $71
	ld a, e                                          ; $4168: $7b
	and b                                            ; $4169: $a0
	sbc [hl]                                         ; $416a: $9e
	pop af                                           ; $416b: $f1
	ld h, a                                          ; $416c: $67
	and b                                            ; $416d: $a0
	ld d, e                                          ; $416e: $53

Call_064_416f:
	ret nz                                           ; $416f: $c0

	sub a                                            ; $4170: $97
	nop                                              ; $4171: $00
	rst $38                                          ; $4172: $ff
	ld a, a                                          ; $4173: $7f
	rst $38                                          ; $4174: $ff
	ld a, $d3                                        ; $4175: $3e $d3
	rst SubAFromDE                                          ; $4177: $df
	dec a                                            ; $4178: $3d
	rra                                              ; $4179: $1f
	ret nz                                           ; $417a: $c0

	sub [hl]                                         ; $417b: $96
	ld bc, $f9fe                                     ; $417c: $01 $fe $f9
	cp [hl]                                          ; $417f: $be
	cp l                                             ; $4180: $bd
	sbc $f0                                          ; $4181: $de $f0
	db $fd                                           ; $4183: $fd
	ld h, c                                          ; $4184: $61
	dec hl                                           ; $4185: $2b
	ret nz                                           ; $4186: $c0

	ld a, a                                          ; $4187: $7f
	ld sp, hl                                        ; $4188: $f9
	sbc c                                            ; $4189: $99
	ccf                                              ; $418a: $3f
	rst $38                                          ; $418b: $ff
	pop hl                                           ; $418c: $e1
	ld a, a                                          ; $418d: $7f
	ld a, [hl]                                       ; $418e: $7e
	cp [hl]                                          ; $418f: $be
	ld h, e                                          ; $4190: $63
	ret nz                                           ; $4191: $c0

	ld b, e                                          ; $4192: $43
	nop                                              ; $4193: $00
	sbc [hl]                                         ; $4194: $9e
	ret                                              ; $4195: $c9


	dec de                                           ; $4196: $1b
	nop                                              ; $4197: $00
	ld [hl], a                                       ; $4198: $77
	and b                                            ; $4199: $a0
	ld a, a                                          ; $419a: $7f
	cp $9a                                           ; $419b: $fe $9a
	db $fd                                           ; $419d: $fd
	cp $c8                                           ; $419e: $fe $c8
	db $fd                                           ; $41a0: $fd
	ld [hl], c                                       ; $41a1: $71
	ld h, a                                          ; $41a2: $67
	and b                                            ; $41a3: $a0
	adc l                                            ; $41a4: $8d
	ld e, $14                                        ; $41a5: $1e $14
	ld [$0c00], sp                                   ; $41a7: $08 $00 $0c
	nop                                              ; $41aa: $00
	ld bc, $0300                                     ; $41ab: $01 $00 $03
	nop                                              ; $41ae: $00
	rrca                                             ; $41af: $0f
	inc bc                                           ; $41b0: $03
	cp a                                             ; $41b1: $bf
	rrca                                             ; $41b2: $0f
	ei                                               ; $41b3: $fb
	rst $38                                          ; $41b4: $ff
	ld [$773f], a                                    ; $41b5: $ea $3f $77
	cp $90                                           ; $41b8: $fe $90
	ld l, d                                          ; $41ba: $6a
	ccf                                              ; $41bb: $3f
	ld l, c                                          ; $41bc: $69
	ccf                                              ; $41bd: $3f
	ld [hl], l                                       ; $41be: $75
	rra                                              ; $41bf: $1f
	ld [hl], l                                       ; $41c0: $75
	rra                                              ; $41c1: $1f
	inc [hl]                                         ; $41c2: $34
	rra                                              ; $41c3: $1f
	ld [hl], $34                                     ; $41c4: $36 $34
	inc e                                            ; $41c6: $1c
	ld [$1b18], sp                                   ; $41c7: $08 $18 $1b
	ldh [$9b], a                                     ; $41ca: $e0 $9b
	ld h, [hl]                                       ; $41cc: $66
	inc h                                            ; $41cd: $24
	inc a                                            ; $41ce: $3c
	jr jr_064_41e8                                   ; $41cf: $18 $17

	ldh [$97], a                                     ; $41d1: $e0 $97
	ld a, [hl]                                       ; $41d3: $7e
	inc [hl]                                         ; $41d4: $34
	ld h, h                                          ; $41d5: $64
	jr nz, jr_064_4250                               ; $41d6: $20 $78

	jr nz, jr_064_4213                               ; $41d8: $20 $39

	jr jr_064_4203                                   ; $41da: $18 $27

	ldh [rAUDTERM], a                                ; $41dc: $e0 $25
	ld bc, $a584                                     ; $41de: $01 $84 $a5
	rst $38                                          ; $41e1: $ff
	rst SubAFromDE                                          ; $41e2: $df
	ld a, a                                          ; $41e3: $7f
	cp a                                             ; $41e4: $bf
	pop af                                           ; $41e5: $f1
	ret nz                                           ; $41e6: $c0

	ret nz                                           ; $41e7: $c0

jr_064_41e8:
	nop                                              ; $41e8: $00
	ld a, a                                          ; $41e9: $7f
	ld a, a                                          ; $41ea: $7f
	sbc [hl]                                         ; $41eb: $9e
	di                                               ; $41ec: $f3
	inc sp                                           ; $41ed: $33
	xor $ef                                          ; $41ee: $ee $ef
	ld l, h                                          ; $41f0: $6c
	ld a, [hl]                                       ; $41f1: $7e
	ld [hl], d                                       ; $41f2: $72
	ld e, $3d                                        ; $41f3: $1e $3d
	ld e, $9e                                        ; $41f5: $1e $9e
	nop                                              ; $41f7: $00
	add b                                            ; $41f8: $80
	nop                                              ; $41f9: $00
	ld a, a                                          ; $41fa: $7f
	ld hl, sp+$7f                                    ; $41fb: $f8 $7f
	db $f4                                           ; $41fd: $f4
	add b                                            ; $41fe: $80
	ldh [$c0], a                                     ; $41ff: $e0 $c0
	ld hl, sp+$30                                    ; $4201: $f8 $30

jr_064_4203:
	rst $38                                          ; $4203: $ff
	adc h                                            ; $4204: $8c
	rst $38                                          ; $4205: $ff
	add e                                            ; $4206: $83
	ld a, c                                          ; $4207: $79
	ret nz                                           ; $4208: $c0

	jr c, jr_064_426b                                ; $4209: $38 $60

	db $10                                           ; $420b: $10
	jr nc, jr_064_4216                               ; $420c: $30 $08

	sbc b                                            ; $420e: $98
	ld c, h                                          ; $420f: $4c
	ld c, b                                          ; $4210: $48
	inc h                                            ; $4211: $24
	ld l, h                                          ; $4212: $6c

jr_064_4213:
	ld d, $bc                                        ; $4213: $16 $bc
	sub d                                            ; $4215: $92

jr_064_4216:
	cp $4b                                           ; $4216: $fe $4b
	cp $3c                                           ; $4218: $fe $3c
	rst AddAOntoHL                                          ; $421a: $ef
	ld a, l                                          ; $421b: $7d
	rst JumpTable                                          ; $421c: $c7
	ei                                               ; $421d: $fb
	add b                                            ; $421e: $80
	adc [hl]                                         ; $421f: $8e
	rra                                              ; $4220: $1f
	db $ec                                           ; $4221: $ec
	rrca                                             ; $4222: $0f
	ld sp, hl                                        ; $4223: $f9
	rst FarCall                                          ; $4224: $f7
	add hl, de                                       ; $4225: $19
	or $09                                           ; $4226: $f6 $09
	or $0f                                           ; $4228: $f6 $0f
	rst JumpTable                                          ; $422a: $c7
	add hl, bc                                       ; $422b: $09
	adc a                                            ; $422c: $8f
	nop                                              ; $422d: $00
	ld c, $00                                        ; $422e: $0e $00
	ld a, [de]                                       ; $4230: $1a
	nop                                              ; $4231: $00
	ld [hl], e                                       ; $4232: $73
	nop                                              ; $4233: $00
	jp $0702                                         ; $4234: $c3 $02 $07


	inc bc                                           ; $4237: $03
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	adc $ff                                          ; $423a: $ce $ff
	adc $7b                                          ; $423c: $ce $7b
	add b                                            ; $423e: $80
	jp nc, $be7f                                     ; $423f: $d2 $7f $be

	rst $38                                          ; $4242: $ff
	rst JumpTable                                          ; $4243: $c7
	rst $38                                          ; $4244: $ff
	rst $38                                          ; $4245: $ff
	ld [bc], a                                       ; $4246: $02
	db $fd                                           ; $4247: $fd
	ld [hl], e                                       ; $4248: $73
	sbc [hl]                                         ; $4249: $9e
	sbc l                                            ; $424a: $9d
	halt                                             ; $424b: $76
	ld a, c                                          ; $424c: $79
	ld h, [hl]                                       ; $424d: $66
	pop af                                           ; $424e: $f1
	sbc [hl]                                         ; $424f: $9e

jr_064_4250:
	ldh a, [$fd]                                     ; $4250: $f0 $fd
	ld h, c                                          ; $4252: $61
	ld a, e                                          ; $4253: $7b
	ld bc, $0387                                     ; $4254: $01 $87 $03
	rst $38                                          ; $4257: $ff
	rrca                                             ; $4258: $0f
	jr c, jr_064_426b                                ; $4259: $38 $10

	ld a, a                                          ; $425b: $7f
	db $10                                           ; $425c: $10
	ld a, a                                          ; $425d: $7f
	add a                                            ; $425e: $87
	ld e, $e7                                        ; $425f: $1e $e7
	ccf                                              ; $4261: $3f
	di                                               ; $4262: $f3
	ld a, a                                          ; $4263: $7f
	adc c                                            ; $4264: $89
	rst $38                                          ; $4265: $ff
	push bc                                          ; $4266: $c5
	rst $38                                          ; $4267: $ff
	inc hl                                           ; $4268: $23
	rst $38                                          ; $4269: $ff
	inc de                                           ; $426a: $13

jr_064_426b:
	rst $38                                          ; $426b: $ff
	adc c                                            ; $426c: $89
	rst SubAFromDE                                          ; $426d: $df
	ld c, h                                          ; $426e: $4c
	rst AddAOntoHL                                          ; $426f: $ef
	ld b, [hl]                                       ; $4270: $46
	rst AddAOntoHL                                          ; $4271: $ef
	dec h                                            ; $4272: $25
	rst FarCall                                          ; $4273: $f7
	inc h                                            ; $4274: $24
	rst FarCall                                          ; $4275: $f7
	ld [hl+], a                                      ; $4276: $22
	ld a, e                                          ; $4277: $7b
	cp $9d                                           ; $4278: $fe $9d
	and d                                            ; $427a: $a2
	rst $38                                          ; $427b: $ff
	ld e, e                                          ; $427c: $5b
	ld h, b                                          ; $427d: $60
	sub [hl]                                         ; $427e: $96
	add b                                            ; $427f: $80
	rst $38                                          ; $4280: $ff
	ld e, $f3                                        ; $4281: $1e $f3
	scf                                              ; $4283: $37
	db $eb                                           ; $4284: $eb
	rst $38                                          ; $4285: $ff
	halt                                             ; $4286: $76
	ld a, $57                                        ; $4287: $3e $57
	ld h, b                                          ; $4289: $60
	ld d, e                                          ; $428a: $53
	and b                                            ; $428b: $a0
	sub a                                            ; $428c: $97
	inc bc                                           ; $428d: $03
	cp $f1                                           ; $428e: $fe $f1
	sbc [hl]                                         ; $4290: $9e
	cp c                                             ; $4291: $b9
	sub $f1                                          ; $4292: $d6 $f1
	cp [hl]                                          ; $4294: $be
	ld e, e                                          ; $4295: $5b
	and b                                            ; $4296: $a0
	ld d, e                                          ; $4297: $53
	ret nz                                           ; $4298: $c0

	sbc b                                            ; $4299: $98
	nop                                              ; $429a: $00
	rst $38                                          ; $429b: $ff
	rra                                              ; $429c: $1f
	rst $38                                          ; $429d: $ff
	ld a, $eb                                        ; $429e: $3e $eb
	rst AddAOntoHL                                          ; $42a0: $ef
	dec de                                           ; $42a1: $1b
	ret nz                                           ; $42a2: $c0

	sbc c                                            ; $42a3: $99
	ld bc, $f9fe                                     ; $42a4: $01 $fe $f9
	cp [hl]                                          ; $42a7: $be
	cp l                                             ; $42a8: $bd
	sbc $1f                                          ; $42a9: $de $1f
	ret nz                                           ; $42ab: $c0

	sub a                                            ; $42ac: $97
	ld b, b                                          ; $42ad: $40
	ld a, a                                          ; $42ae: $7f
	ccf                                              ; $42af: $3f
	rst $38                                          ; $42b0: $ff
	pop hl                                           ; $42b1: $e1
	ld a, a                                          ; $42b2: $7f
	ld a, $be                                        ; $42b3: $3e $be
	ld h, e                                          ; $42b5: $63
	ret nz                                           ; $42b6: $c0

	ld b, e                                          ; $42b7: $43
	nop                                              ; $42b8: $00
	sbc [hl]                                         ; $42b9: $9e
	ret                                              ; $42ba: $c9


	dec de                                           ; $42bb: $1b
	nop                                              ; $42bc: $00

Jump_064_42bd:
	ld [hl], a                                       ; $42bd: $77
	and b                                            ; $42be: $a0
	sbc b                                            ; $42bf: $98
	dec b                                            ; $42c0: $05
	cp $f9                                           ; $42c1: $fe $f9
	cp $c8                                           ; $42c3: $fe $c8
	db $fd                                           ; $42c5: $fd
	ld [hl], c                                       ; $42c6: $71
	ld h, a                                          ; $42c7: $67
	and b                                            ; $42c8: $a0
	adc l                                            ; $42c9: $8d
	ld e, $0c                                        ; $42ca: $1e $0c
	jr jr_064_42ce                                   ; $42cc: $18 $00

jr_064_42ce:
	inc c                                            ; $42ce: $0c
	nop                                              ; $42cf: $00
	ld bc, $0300                                     ; $42d0: $01 $00 $03
	nop                                              ; $42d3: $00
	rrca                                             ; $42d4: $0f
	inc bc                                           ; $42d5: $03
	cp a                                             ; $42d6: $bf
	rrca                                             ; $42d7: $0f
	ei                                               ; $42d8: $fb
	rst $38                                          ; $42d9: $ff
	ld [$773f], a                                    ; $42da: $ea $3f $77
	cp $90                                           ; $42dd: $fe $90
	ld l, d                                          ; $42df: $6a
	ccf                                              ; $42e0: $3f
	ld l, c                                          ; $42e1: $69
	ccf                                              ; $42e2: $3f
	ld [hl], l                                       ; $42e3: $75
	rra                                              ; $42e4: $1f
	ld [hl], l                                       ; $42e5: $75
	rra                                              ; $42e6: $1f
	inc [hl]                                         ; $42e7: $34
	rra                                              ; $42e8: $1f
	ld e, $0e                                        ; $42e9: $1e $0e
	ld a, [de]                                       ; $42eb: $1a
	jr jr_064_430a                                   ; $42ec: $18 $1c

	inc de                                           ; $42ee: $13
	ldh [$9b], a                                     ; $42ef: $e0 $9b
	ld [de], a                                       ; $42f1: $12
	db $10                                           ; $42f2: $10
	inc c                                            ; $42f3: $0c
	inc c                                            ; $42f4: $0c
	rra                                              ; $42f5: $1f
	ldh [$97], a                                     ; $42f6: $e0 $97
	ld a, $1a                                        ; $42f8: $3e $1a
	ld [hl-], a                                      ; $42fa: $32
	ld [hl-], a                                      ; $42fb: $32
	inc a                                            ; $42fc: $3c
	db $10                                           ; $42fd: $10
	dec e                                            ; $42fe: $1d
	inc c                                            ; $42ff: $0c
	daa                                              ; $4300: $27
	ldh [$37], a                                     ; $4301: $e0 $37
	ld bc, $a788                                     ; $4303: $01 $88 $a7
	rst $38                                          ; $4306: $ff
	db $d3                                           ; $4307: $d3
	ld a, a                                          ; $4308: $7f
	cp c                                             ; $4309: $b9

jr_064_430a:
	rst AddAOntoHL                                          ; $430a: $ef
	ret nz                                           ; $430b: $c0

	ret nz                                           ; $430c: $c0

	nop                                              ; $430d: $00
	ld a, a                                          ; $430e: $7f
	ld a, a                                          ; $430f: $7f
	sbc [hl]                                         ; $4310: $9e
	di                                               ; $4311: $f3
	scf                                              ; $4312: $37
	add $ef                                          ; $4313: $c6 $ef
	ld e, h                                          ; $4315: $5c
	ld a, [hl]                                       ; $4316: $7e
	ld [hl], d                                       ; $4317: $72
	ld e, $2d                                        ; $4318: $1e $2d
	ld e, $9e                                        ; $431a: $1e $9e
	cp c                                             ; $431c: $b9
	add b                                            ; $431d: $80
	ld a, a                                          ; $431e: $7f
	nop                                              ; $431f: $00
	nop                                              ; $4320: $00
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	add b                                            ; $4323: $80
	ldh [$80], a                                     ; $4324: $e0 $80
	ret nz                                           ; $4326: $c0

	ld hl, sp+$30                                    ; $4327: $f8 $30
	rst $38                                          ; $4329: $ff
	adc h                                            ; $432a: $8c
	rst $38                                          ; $432b: $ff
	add e                                            ; $432c: $83
	ld a, c                                          ; $432d: $79
	ret nz                                           ; $432e: $c0

	jr c, jr_064_4391                                ; $432f: $38 $60

	db $10                                           ; $4331: $10
	jr nc, jr_064_433c                               ; $4332: $30 $08

	sbc b                                            ; $4334: $98
	ld c, h                                          ; $4335: $4c
	ld c, b                                          ; $4336: $48
	inc h                                            ; $4337: $24
	ld l, h                                          ; $4338: $6c
	ld d, $bc                                        ; $4339: $16 $bc
	sub d                                            ; $433b: $92

jr_064_433c:
	cp $4b                                           ; $433c: $fe $4b
	cp $3c                                           ; $433e: $fe $3c
	rst AddAOntoHL                                          ; $4340: $ef
	ld a, l                                          ; $4341: $7d
	rst JumpTable                                          ; $4342: $c7
	ei                                               ; $4343: $fb
	adc [hl]                                         ; $4344: $8e
	sub d                                            ; $4345: $92
	rra                                              ; $4346: $1f
	db $ec                                           ; $4347: $ec
	rrca                                             ; $4348: $0f
	ld sp, hl                                        ; $4349: $f9
	rst FarCall                                          ; $434a: $f7
	add hl, de                                       ; $434b: $19
	or $09                                           ; $434c: $f6 $09
	or $8f                                           ; $434e: $f6 $8f
	rst JumpTable                                          ; $4350: $c7
	add hl, bc                                       ; $4351: $09
	adc a                                            ; $4352: $8f
	cp l                                             ; $4353: $bd
	ld c, $1a                                        ; $4354: $0e $1a
	ld [hl], e                                       ; $4356: $73
	jp $0280                                         ; $4357: $c3 $80 $02


	rlca                                             ; $435a: $07
	inc bc                                           ; $435b: $03
	nop                                              ; $435c: $00
	nop                                              ; $435d: $00
	adc $ff                                          ; $435e: $ce $ff
	jp z, $d67f                                      ; $4360: $ca $7f $d6

	ld a, a                                          ; $4363: $7f
	cp [hl]                                          ; $4364: $be
	rst $38                                          ; $4365: $ff
	rst JumpTable                                          ; $4366: $c7
	rst $38                                          ; $4367: $ff
	rst $38                                          ; $4368: $ff
	ld [bc], a                                       ; $4369: $02
	db $fd                                           ; $436a: $fd
	ld [hl], e                                       ; $436b: $73
	sbc [hl]                                         ; $436c: $9e
	cp l                                             ; $436d: $bd
	ld a, $79                                        ; $436e: $3e $79
	and $f1                                          ; $4370: $e6 $f1
	sbc [hl]                                         ; $4372: $9e
	ldh a, [$fd]                                     ; $4373: $f0 $fd
	ld h, c                                          ; $4375: $61
	ld a, e                                          ; $4376: $7b
	ld bc, $8780                                     ; $4377: $01 $80 $87
	inc bc                                           ; $437a: $03
	rst $38                                          ; $437b: $ff
	rrca                                             ; $437c: $0f
	jr c, jr_064_438f                                ; $437d: $38 $10

	ld a, a                                          ; $437f: $7f
	db $10                                           ; $4380: $10
	ld a, a                                          ; $4381: $7f
	ld e, $e7                                        ; $4382: $1e $e7
	ccf                                              ; $4384: $3f
	di                                               ; $4385: $f3
	ld a, a                                          ; $4386: $7f
	adc c                                            ; $4387: $89
	rst $38                                          ; $4388: $ff
	push bc                                          ; $4389: $c5
	rst $38                                          ; $438a: $ff
	inc hl                                           ; $438b: $23
	rst $38                                          ; $438c: $ff
	inc de                                           ; $438d: $13
	rst $38                                          ; $438e: $ff

jr_064_438f:
	adc c                                            ; $438f: $89
	rst SubAFromDE                                          ; $4390: $df

jr_064_4391:
	ld c, h                                          ; $4391: $4c
	rst AddAOntoHL                                          ; $4392: $ef
	ld b, [hl]                                       ; $4393: $46
	rst AddAOntoHL                                          ; $4394: $ef
	dec h                                            ; $4395: $25
	rst FarCall                                          ; $4396: $f7
	inc h                                            ; $4397: $24
	sbc l                                            ; $4398: $9d
	rst FarCall                                          ; $4399: $f7
	ld [hl+], a                                      ; $439a: $22
	ld a, e                                          ; $439b: $7b
	cp $9d                                           ; $439c: $fe $9d
	and d                                            ; $439e: $a2
	rst $38                                          ; $439f: $ff
	ld e, e                                          ; $43a0: $5b
	ld h, b                                          ; $43a1: $60
	sub h                                            ; $43a2: $94
	add b                                            ; $43a3: $80
	rst $38                                          ; $43a4: $ff
	ld a, $e7                                        ; $43a5: $3e $e7
	ld h, a                                          ; $43a7: $67
	db $db                                           ; $43a8: $db
	rst SubAFromDE                                          ; $43a9: $df
	ld h, d                                          ; $43aa: $62
	ld a, $3f                                        ; $43ab: $3e $3f
	ld a, $5f                                        ; $43ad: $3e $5f
	ld h, b                                          ; $43af: $60
	ld c, e                                          ; $43b0: $4b
	add b                                            ; $43b1: $80
	sbc h                                            ; $43b2: $9c
	rrca                                             ; $43b3: $0f
	rst JumpTable                                          ; $43b4: $c7
	adc c                                            ; $43b5: $89
	inc hl                                           ; $43b6: $23
	add b                                            ; $43b7: $80
	sub [hl]                                         ; $43b8: $96
	add d                                            ; $43b9: $82
	db $fd                                           ; $43ba: $fd
	inc bc                                           ; $43bb: $03
	cp $f1                                           ; $43bc: $fe $f1
	xor d                                            ; $43be: $aa
	cp c                                             ; $43bf: $b9
	ld d, [hl]                                       ; $43c0: $56

Jump_064_43c1:
	ld [hl], c                                       ; $43c1: $71
	ld a, e                                          ; $43c2: $7b
	add b                                            ; $43c3: $80
	sbc [hl]                                         ; $43c4: $9e
	pop af                                           ; $43c5: $f1
	ld h, a                                          ; $43c6: $67

jr_064_43c7:
	add b                                            ; $43c7: $80
	ld d, e                                          ; $43c8: $53
	and b                                            ; $43c9: $a0
	sub a                                            ; $43ca: $97
	nop                                              ; $43cb: $00
	rst $38                                          ; $43cc: $ff
	ccf                                              ; $43cd: $3f
	ei                                               ; $43ce: $fb
	ld a, [hl]                                       ; $43cf: $7e
	rst SubAFromHL                                          ; $43d0: $d7
	rst SubAFromDE                                          ; $43d1: $df
	dec a                                            ; $43d2: $3d
	rla                                              ; $43d3: $17
	and b                                            ; $43d4: $a0
	rla                                              ; $43d5: $17
	jr nz, jr_064_4457                               ; $43d6: $20 $7f

	and b                                            ; $43d8: $a0
	sbc b                                            ; $43d9: $98
	ld bc, $fdfe                                     ; $43da: $01 $fe $fd
	xor [hl]                                         ; $43dd: $ae
	cp c                                             ; $43de: $b9
	sbc $fc                                          ; $43df: $de $fc
	ld e, a                                          ; $43e1: $5f
	jr nz, jr_064_442f                               ; $43e2: $20 $4b

	and b                                            ; $43e4: $a0
	sub a                                            ; $43e5: $97
	ld b, b                                          ; $43e6: $40
	ld a, a                                          ; $43e7: $7f
	ccf                                              ; $43e8: $3f
	rst $38                                          ; $43e9: $ff
	db $e3                                           ; $43ea: $e3
	ld a, a                                          ; $43eb: $7f
	ld a, a                                          ; $43ec: $7f
	cp [hl]                                          ; $43ed: $be
	daa                                              ; $43ee: $27
	and b                                            ; $43ef: $a0
	sbc [hl]                                         ; $43f0: $9e
	ld c, a                                          ; $43f1: $4f
	ld [hl], a                                       ; $43f2: $77
	ld b, b                                          ; $43f3: $40
	sbc [hl]                                         ; $43f4: $9e
	adc [hl]                                         ; $43f5: $8e
	rla                                              ; $43f6: $17
	and b                                            ; $43f7: $a0
	ld a, a                                          ; $43f8: $7f
	db $fc                                           ; $43f9: $fc
	sbc d                                            ; $43fa: $9a
	db $fd                                           ; $43fb: $fd
	cp $c8                                           ; $43fc: $fe $c8
	db $fd                                           ; $43fe: $fd
	ld [hl], c                                       ; $43ff: $71
	ld h, a                                          ; $4400: $67
	and b                                            ; $4401: $a0
	rst SubAFromDE                                          ; $4402: $df
	inc b                                            ; $4403: $04
	sbc h                                            ; $4404: $9c
	inc e                                            ; $4405: $1c
	db $10                                           ; $4406: $10
	jr jr_064_43c7                                   ; $4407: $18 $be

	ld bc, $0f03                                     ; $4409: $01 $03 $0f
	sbc b                                            ; $440c: $98
	inc bc                                           ; $440d: $03
	cp a                                             ; $440e: $bf
	rrca                                             ; $440f: $0f
	ei                                               ; $4410: $fb
	rst $38                                          ; $4411: $ff
	ld [$773f], a                                    ; $4412: $ea $3f $77
	cp $91                                           ; $4415: $fe $91
	ld l, d                                          ; $4417: $6a
	ccf                                              ; $4418: $3f
	ld l, c                                          ; $4419: $69
	ccf                                              ; $441a: $3f
	ld [hl], l                                       ; $441b: $75
	rra                                              ; $441c: $1f
	ld [hl], l                                       ; $441d: $75
	rra                                              ; $441e: $1f
	inc [hl]                                         ; $441f: $34
	rra                                              ; $4420: $1f
	inc e                                            ; $4421: $1c
	inc c                                            ; $4422: $0c
	inc e                                            ; $4423: $1c
	inc d                                            ; $4424: $14
	rrca                                             ; $4425: $0f
	ldh [$9b], a                                     ; $4426: $e0 $9b
	inc a                                            ; $4428: $3c
	inc d                                            ; $4429: $14
	jr jr_064_4444                                   ; $442a: $18 $18

	rra                                              ; $442c: $1f
	ldh [$df], a                                     ; $442d: $e0 $df

jr_064_442f:
	inc c                                            ; $442f: $0c
	ld a, a                                          ; $4430: $7f
	ret nz                                           ; $4431: $c0

	sbc e                                            ; $4432: $9b

Jump_064_4433:
	inc d                                            ; $4433: $14
	db $10                                           ; $4434: $10
	add hl, de                                       ; $4435: $19
	ld [$e027], sp                                   ; $4436: $08 $27 $e0
	ld [hl-], a                                      ; $4439: $32
	ld bc, $a784                                     ; $443a: $01 $84 $a7
	rst $38                                          ; $443d: $ff
	db $dd                                           ; $443e: $dd
	ld a, a                                          ; $443f: $7f
	or e                                             ; $4440: $b3
	rst $38                                          ; $4441: $ff
	ret nz                                           ; $4442: $c0

	ret nz                                           ; $4443: $c0

Call_064_4444:
jr_064_4444:
	nop                                              ; $4444: $00
	ld a, a                                          ; $4445: $7f
	ld a, a                                          ; $4446: $7f
	add b                                            ; $4447: $80
	xor $1f                                          ; $4448: $ee $1f
	or e                                             ; $444a: $b3
	ld [hl], a                                       ; $444b: $77
	xor $ef                                          ; $444c: $ee $ef
	ld [hl], d                                       ; $444e: $72
	ld a, $3c                                        ; $444f: $3e $3c
	ld e, $9f                                        ; $4451: $1e $9f
	nop                                              ; $4453: $00
	add b                                            ; $4454: $80
	nop                                              ; $4455: $00
	ld a, a                                          ; $4456: $7f

jr_064_4457:
	ld hl, sp+$7f                                    ; $4457: $f8 $7f
	db $f4                                           ; $4459: $f4
	add b                                            ; $445a: $80
	ldh [$c0], a                                     ; $445b: $e0 $c0
	ld hl, sp+$30                                    ; $445d: $f8 $30
	rst $38                                          ; $445f: $ff
	adc h                                            ; $4460: $8c
	rst $38                                          ; $4461: $ff
	add e                                            ; $4462: $83
	ld a, c                                          ; $4463: $79
	ret nz                                           ; $4464: $c0

	jr c, jr_064_44c7                                ; $4465: $38 $60

	db $10                                           ; $4467: $10
	jr nc, jr_064_4472                               ; $4468: $30 $08

	sbc b                                            ; $446a: $98
	ld c, h                                          ; $446b: $4c
	ld c, b                                          ; $446c: $48
	inc h                                            ; $446d: $24
	ld l, h                                          ; $446e: $6c
	ld d, $bc                                        ; $446f: $16 $bc
	sub d                                            ; $4471: $92

jr_064_4472:
	cp $4b                                           ; $4472: $fe $4b
	cp $3c                                           ; $4474: $fe $3c
	rst AddAOntoHL                                          ; $4476: $ef
	ld a, l                                          ; $4477: $7d
	rst JumpTable                                          ; $4478: $c7
	ei                                               ; $4479: $fb
	add b                                            ; $447a: $80
	adc [hl]                                         ; $447b: $8e
	rra                                              ; $447c: $1f
	db $ec                                           ; $447d: $ec
	rrca                                             ; $447e: $0f
	ld sp, hl                                        ; $447f: $f9
	rst FarCall                                          ; $4480: $f7
	add hl, de                                       ; $4481: $19
	or $09                                           ; $4482: $f6 $09
	or [hl]                                          ; $4484: $b6
	rst GetHLinHL                                          ; $4485: $cf
	rst JumpTable                                          ; $4486: $c7
	adc c                                            ; $4487: $89
	adc a                                            ; $4488: $8f
	nop                                              ; $4489: $00
	adc [hl]                                         ; $448a: $8e
	nop                                              ; $448b: $00
	ld a, [de]                                       ; $448c: $1a
	nop                                              ; $448d: $00
	ld [hl], e                                       ; $448e: $73
	nop                                              ; $448f: $00
	jp $0702                                         ; $4490: $c3 $02 $07


	inc bc                                           ; $4493: $03
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	adc $ff                                          ; $4496: $ce $ff
	adc $7b                                          ; $4498: $ce $7b
	add b                                            ; $449a: $80
	sub $7f                                          ; $449b: $d6 $7f
	cp [hl]                                          ; $449d: $be
	rst $38                                          ; $449e: $ff
	rst JumpTable                                          ; $449f: $c7
	rst $38                                          ; $44a0: $ff
	rst $38                                          ; $44a1: $ff
	ld [bc], a                                       ; $44a2: $02
	db $fd                                           ; $44a3: $fd
	inc bc                                           ; $44a4: $03
	or $79                                           ; $44a5: $f6 $79
	sbc [hl]                                         ; $44a7: $9e
	cp l                                             ; $44a8: $bd
	xor $f9                                          ; $44a9: $ee $f9
	adc [hl]                                         ; $44ab: $8e
	ldh [$fd], a                                     ; $44ac: $e0 $fd
	ld h, c                                          ; $44ae: $61
	ld a, e                                          ; $44af: $7b
	ld bc, $0387                                     ; $44b0: $01 $87 $03
	rst $38                                          ; $44b3: $ff
	rrca                                             ; $44b4: $0f
	jr c, jr_064_44c7                                ; $44b5: $38 $10

	ld a, a                                          ; $44b7: $7f
	db $10                                           ; $44b8: $10
	ld a, a                                          ; $44b9: $7f
	add a                                            ; $44ba: $87
	ld e, $e7                                        ; $44bb: $1e $e7
	ccf                                              ; $44bd: $3f
	di                                               ; $44be: $f3
	ld a, a                                          ; $44bf: $7f
	adc c                                            ; $44c0: $89
	rst $38                                          ; $44c1: $ff
	push bc                                          ; $44c2: $c5
	rst $38                                          ; $44c3: $ff
	inc hl                                           ; $44c4: $23
	rst $38                                          ; $44c5: $ff
	inc de                                           ; $44c6: $13

jr_064_44c7:
	rst $38                                          ; $44c7: $ff
	adc c                                            ; $44c8: $89
	rst SubAFromDE                                          ; $44c9: $df
	ld c, h                                          ; $44ca: $4c
	rst AddAOntoHL                                          ; $44cb: $ef
	ld b, [hl]                                       ; $44cc: $46
	rst AddAOntoHL                                          ; $44cd: $ef
	dec h                                            ; $44ce: $25
	rst FarCall                                          ; $44cf: $f7
	inc h                                            ; $44d0: $24
	rst FarCall                                          ; $44d1: $f7
	ld [hl+], a                                      ; $44d2: $22
	ld a, e                                          ; $44d3: $7b
	cp $9d                                           ; $44d4: $fe $9d
	and d                                            ; $44d6: $a2
	rst $38                                          ; $44d7: $ff
	ld d, a                                          ; $44d8: $57
	ld h, b                                          ; $44d9: $60
	ld a, a                                          ; $44da: $7f
	ret nc                                           ; $44db: $d0

	sub [hl]                                         ; $44dc: $96
	ei                                               ; $44dd: $fb
	ccf                                              ; $44de: $3f
	ld [$76ee], a                                    ; $44df: $ea $ee $76
	ld a, $3d                                        ; $44e2: $3e $3d
	ld e, $9e                                        ; $44e4: $1e $9e
	ld h, e                                          ; $44e6: $63
	ld h, b                                          ; $44e7: $60
	ld c, a                                          ; $44e8: $4f
	add b                                            ; $44e9: $80
	sbc b                                            ; $44ea: $98
	or $cf                                           ; $44eb: $f6 $cf
	rst JumpTable                                          ; $44ed: $c7
	add hl, bc                                       ; $44ee: $09
	adc a                                            ; $44ef: $8f
	nop                                              ; $44f0: $00
	ld c, $23                                        ; $44f1: $0e $23
	add b                                            ; $44f3: $80
	sbc b                                            ; $44f4: $98
	cp $71                                           ; $44f5: $fe $71
	cp [hl]                                          ; $44f7: $be
	cp c                                             ; $44f8: $b9
	sbc $fd                                          ; $44f9: $de $fd
	xor [hl]                                         ; $44fb: $ae
	ld e, e                                          ; $44fc: $5b
	add b                                            ; $44fd: $80
	ld d, e                                          ; $44fe: $53
	and b                                            ; $44ff: $a0
	sub [hl]                                         ; $4500: $96
	nop                                              ; $4501: $00
	rst $38                                          ; $4502: $ff
	ccf                                              ; $4503: $3f
	db $eb                                           ; $4504: $eb
	rst AddAOntoHL                                          ; $4505: $ef
	halt                                             ; $4506: $76
	ld a, $3f                                        ; $4507: $3e $3f
	rra                                              ; $4509: $1f
	inc hl                                           ; $450a: $23
	and b                                            ; $450b: $a0
	sbc h                                            ; $450c: $9c
	rrca                                             ; $450d: $0f
	rst JumpTable                                          ; $450e: $c7
	ret                                              ; $450f: $c9


	inc de                                           ; $4510: $13
	and b                                            ; $4511: $a0
	sbc d                                            ; $4512: $9a
	ld bc, $f9fe                                     ; $4513: $01 $fe $f9
	cp [hl]                                          ; $4516: $be
	cp l                                             ; $4517: $bd
	ld a, e                                          ; $4518: $7b
	and b                                            ; $4519: $a0
	sbc [hl]                                         ; $451a: $9e
	ld [hl], c                                       ; $451b: $71
	dec hl                                           ; $451c: $2b
	and b                                            ; $451d: $a0
	ld a, a                                          ; $451e: $7f
	ld sp, hl                                        ; $451f: $f9
	sbc c                                            ; $4520: $99
	ccf                                              ; $4521: $3f
	rst $38                                          ; $4522: $ff
	pop hl                                           ; $4523: $e1
	ld a, a                                          ; $4524: $7f
	ld a, $be                                        ; $4525: $3e $be
	inc bc                                           ; $4527: $03
	and b                                            ; $4528: $a0
	inc hl                                           ; $4529: $23
	and b                                            ; $452a: $a0
	ld a, a                                          ; $452b: $7f
	cp $9c                                           ; $452c: $fe $9c
	db $fd                                           ; $452e: $fd
	cp $c8                                           ; $452f: $fe $c8
	ld e, a                                          ; $4531: $5f
	and b                                            ; $4532: $a0
	adc l                                            ; $4533: $8d
	ld e, $0a                                        ; $4534: $1e $0a
	jr jr_064_4538                                   ; $4536: $18 $00

jr_064_4538:
	inc c                                            ; $4538: $0c
	nop                                              ; $4539: $00
	ld bc, $0300                                     ; $453a: $01 $00 $03
	nop                                              ; $453d: $00
	rrca                                             ; $453e: $0f
	inc bc                                           ; $453f: $03
	cp a                                             ; $4540: $bf
	rrca                                             ; $4541: $0f
	ei                                               ; $4542: $fb
	rst $38                                          ; $4543: $ff
	ld [$773f], a                                    ; $4544: $ea $3f $77
	cp $90                                           ; $4547: $fe $90
	ld l, d                                          ; $4549: $6a
	ccf                                              ; $454a: $3f
	ld l, c                                          ; $454b: $69
	ccf                                              ; $454c: $3f
	ld [hl], l                                       ; $454d: $75
	rra                                              ; $454e: $1f
	ld [hl], l                                       ; $454f: $75
	rra                                              ; $4550: $1f
	inc [hl]                                         ; $4551: $34
	rra                                              ; $4552: $1f
	ld c, $0c                                        ; $4553: $0e $0c
	inc e                                            ; $4555: $1c
	stop                                             ; $4556: $10 $00
	inc de                                           ; $4558: $13
	ldh [$9c], a                                     ; $4559: $e0 $9c
	ld d, $14                                        ; $455b: $16 $14
	jr jr_064_457a                                   ; $455d: $18 $1b

	ldh [$97], a                                     ; $455f: $e0 $97
	ld e, $0c                                        ; $4561: $1e $0c
	ld a, $12                                        ; $4563: $3e $12
	jr c, jr_064_4577                                ; $4565: $38 $10

	dec e                                            ; $4567: $1d
	ld [$e027], sp                                   ; $4568: $08 $27 $e0
	ld l, $83                                        ; $456b: $2e $83
	pop af                                           ; $456d: $f1
	adc a                                            ; $456e: $8f
	inc bc                                           ; $456f: $03
	rlca                                             ; $4570: $07
	dec bc                                           ; $4571: $0b
	inc d                                            ; $4572: $14
	rla                                              ; $4573: $17
	ld e, $1f                                        ; $4574: $1e $1f
	rra                                              ; $4576: $1f

jr_064_4577:
	inc bc                                           ; $4577: $03
	ld b, $0c                                        ; $4578: $06 $0c

jr_064_457a:
	dec de                                           ; $457a: $1b
	jr jr_064_458e                                   ; $457b: $18 $11

	db $10                                           ; $457d: $10
	db $10                                           ; $457e: $10
	db $ec                                           ; $457f: $ec
	sbc h                                            ; $4580: $9c
	inc bc                                           ; $4581: $03
	dec b                                            ; $4582: $05
	ld a, [bc]                                       ; $4583: $0a
	ld l, a                                          ; $4584: $6f
	ld hl, sp-$80                                    ; $4585: $f8 $80
	ld b, $0d                                        ; $4587: $06 $0d
	ld de, $252e                                     ; $4589: $11 $2e $25
	dec bc                                           ; $458c: $0b
	rla                                              ; $458d: $17

jr_064_458e:
	ld l, $39                                        ; $458e: $2e $39
	ld b, d                                          ; $4590: $42
	rra                                              ; $4591: $1f
	ccf                                              ; $4592: $3f
	ld h, $0c                                        ; $4593: $26 $0c
	jr jr_064_45c8                                   ; $4595: $18 $31

	daa                                              ; $4597: $27
	ld a, a                                          ; $4598: $7f
	ld c, l                                          ; $4599: $4d
	sub l                                            ; $459a: $95
	xor c                                            ; $459b: $a9
	jp z, $1192                                      ; $459c: $ca $92 $11

	inc de                                           ; $459f: $13
	dec d                                            ; $45a0: $15
	ld a, [hl]                                       ; $45a1: $7e
	or $ee                                           ; $45a2: $f6 $ee
	call $df9d                                       ; $45a4: $cd $9d $df
	rra                                              ; $45a7: $1f
	sbc d                                            ; $45a8: $9a
	dec e                                            ; $45a9: $1d
	dec d                                            ; $45aa: $15
	add hl, de                                       ; $45ab: $19
	add hl, de                                       ; $45ac: $19
	ld de, $bb77                                     ; $45ad: $11 $77 $bb
	sbc [hl]                                         ; $45b0: $9e
	dec e                                            ; $45b1: $1d
	ld l, e                                          ; $45b2: $6b
	ld hl, sp-$13                                    ; $45b3: $f8 $ed
	sbc e                                            ; $45b5: $9b
	ld bc, $0202                                     ; $45b6: $01 $02 $02
	dec b                                            ; $45b9: $05
	ld [hl], e                                       ; $45ba: $73
	ld hl, sp-$21                                    ; $45bb: $f8 $df
	inc bc                                           ; $45bd: $03
	sub c                                            ; $45be: $91
	ld b, $07                                        ; $45bf: $06 $07
	rlca                                             ; $45c1: $07
	ld a, [bc]                                       ; $45c2: $0a
	ld c, $0e                                        ; $45c3: $0e $0e
	inc c                                            ; $45c5: $0c
	dec c                                            ; $45c6: $0d
	dec c                                            ; $45c7: $0d

jr_064_45c8:
	inc b                                            ; $45c8: $04
	inc b                                            ; $45c9: $04
	dec c                                            ; $45ca: $0d
	add hl, bc                                       ; $45cb: $09
	add hl, bc                                       ; $45cc: $09
	sbc $0b                                          ; $45cd: $de $0b
	sbc $09                                          ; $45cf: $de $09
	sbc d                                            ; $45d1: $9a
	dec b                                            ; $45d2: $05

jr_064_45d3:
	ld a, l                                          ; $45d3: $7d
	db $fd                                           ; $45d4: $fd
	rst $38                                          ; $45d5: $ff
	rst $38                                          ; $45d6: $ff
	sbc $0f                                          ; $45d7: $de $0f
	adc d                                            ; $45d9: $8a
	rlca                                             ; $45da: $07
	ld a, a                                          ; $45db: $7f
	add a                                            ; $45dc: $87
	rst $38                                          ; $45dd: $ff
	ret nz                                           ; $45de: $c0

	cp a                                             ; $45df: $bf
	ld a, c                                          ; $45e0: $79
	ldh [c], a                                       ; $45e1: $e2
	db $fc                                           ; $45e2: $fc
	ld c, $ff                                        ; $45e3: $0e $ff
	ld a, a                                          ; $45e5: $7f
	rrca                                             ; $45e6: $0f
	adc a                                            ; $45e7: $8f
	ccf                                              ; $45e8: $3f
	ld a, a                                          ; $45e9: $7f
	ld a, a                                          ; $45ea: $7f
	inc bc                                           ; $45eb: $03
	ld bc, $017f                                     ; $45ec: $01 $7f $01
	ld a, [$1f9e]                                    ; $45ef: $fa $9e $1f
	ld h, a                                          ; $45f2: $67
	ld hl, sp+$7f                                    ; $45f3: $f8 $7f
	and $80                                          ; $45f5: $e6 $80
	nop                                              ; $45f7: $00
	inc a                                            ; $45f8: $3c
	rst GetHLinHL                                          ; $45f9: $cf
	ld a, a                                          ; $45fa: $7f
	db $fc                                           ; $45fb: $fc
	inc bc                                           ; $45fc: $03
	ld [hl], b                                       ; $45fd: $70
	rrca                                             ; $45fe: $0f
	nop                                              ; $45ff: $00
	ccf                                              ; $4600: $3f
	ldh a, [$80]                                     ; $4601: $f0 $80
	inc bc                                           ; $4603: $03
	db $fc                                           ; $4604: $fc
	ret c                                            ; $4605: $d8

	inc h                                            ; $4606: $24
	sub d                                            ; $4607: $92
	ret z                                            ; $4608: $c8

	jr nc, jr_064_45d3                               ; $4609: $30 $c8

	ld sp, $e0da                                     ; $460b: $31 $da $e0
	jp $300c                                         ; $460e: $c3 $0c $30


	ret nz                                           ; $4611: $c0

	add b                                            ; $4612: $80
	adc b                                            ; $4613: $88
	ld sp, $86a6                                     ; $4614: $31 $a6 $86
	ld c, l                                          ; $4617: $4d
	ld c, [hl]                                       ; $4618: $4e
	or [hl]                                          ; $4619: $b6
	cp e                                             ; $461a: $bb
	cpl                                              ; $461b: $2f
	ld c, $14                                        ; $461c: $0e $14
	ld [hl], c                                       ; $461e: $71
	ldh [c], a                                       ; $461f: $e2
	db $e4                                           ; $4620: $e4
	call z, $d8cc                                    ; $4621: $cc $cc $d8
	ld sp, hl                                        ; $4624: $f9
	ei                                               ; $4625: $fb
	ld de, $1311                                     ; $4626: $11 $11 $13
	inc de                                           ; $4629: $13
	sub e                                            ; $462a: $93
	sbc e                                            ; $462b: $9b
	xor e                                            ; $462c: $ab
	ld l, [hl]                                       ; $462d: $6e
	rst $38                                          ; $462e: $ff
	rst $38                                          ; $462f: $ff
	db $dd                                           ; $4630: $dd
	cp $9a                                           ; $4631: $fe $9a
	xor $6f                                          ; $4633: $ee $6f
	ld l, $2e                                        ; $4635: $2e $2e
	inc c                                            ; $4637: $0c
	ld a, e                                          ; $4638: $7b
	sub [hl]                                         ; $4639: $96
	ld a, a                                          ; $463a: $7f
	ld a, b                                          ; $463b: $78
	sbc l                                            ; $463c: $9d
	cpl                                              ; $463d: $2f
	dec hl                                           ; $463e: $2b
	ld a, e                                          ; $463f: $7b
	add l                                            ; $4640: $85
	add d                                            ; $4641: $82
	dec b                                            ; $4642: $05
	inc bc                                           ; $4643: $03
	rlca                                             ; $4644: $07
	add hl, bc                                       ; $4645: $09
	rla                                              ; $4646: $17
	ld l, [hl]                                       ; $4647: $6e
	sbc b                                            ; $4648: $98
	ld [hl], e                                       ; $4649: $73
	db $e4                                           ; $464a: $e4
	ret                                              ; $464b: $c9


	sub e                                            ; $464c: $93
	ld c, $18                                        ; $464d: $0e $18
	ld [hl], c                                       ; $464f: $71
	rst SubAFromBC                                          ; $4650: $e7
	adc a                                            ; $4651: $8f
	rra                                              ; $4652: $1f
	ld a, $7c                                        ; $4653: $3e $7c
	dec [hl]                                         ; $4655: $35
	ld h, e                                          ; $4656: $63
	ld l, d                                          ; $4657: $6a
	and $a6                                          ; $4658: $e6 $a6
	and l                                            ; $465a: $a5
	dec l                                            ; $465b: $2d
	ld c, d                                          ; $465c: $4a
	ld hl, sp-$08                                    ; $465d: $f8 $f8
	sbc $f1                                          ; $465f: $de $f1
	rst SubAFromDE                                          ; $4661: $df
	di                                               ; $4662: $f3
	sub [hl]                                         ; $4663: $96
	rst FarCall                                          ; $4664: $f7
	ld b, e                                          ; $4665: $43
	ld b, h                                          ; $4666: $44
	ld c, b                                          ; $4667: $48
	ld [hl], e                                       ; $4668: $73
	ld a, h                                          ; $4669: $7c
	ld a, b                                          ; $466a: $78
	rst $38                                          ; $466b: $ff
	ldh [$da], a                                     ; $466c: $e0 $da
	rst $38                                          ; $466e: $ff
	adc [hl]                                         ; $466f: $8e
	ldh [$d8], a                                     ; $4670: $e0 $d8
	ld h, b                                          ; $4672: $60
	ld [hl], c                                       ; $4673: $71

jr_064_4674:
	ld l, [hl]                                       ; $4674: $6e
	xor [hl]                                         ; $4675: $ae
	dec hl                                           ; $4676: $2b
	ld c, b                                          ; $4677: $48
	ld e, h                                          ; $4678: $5c
	ret c                                            ; $4679: $d8

	ldh [$f1], a                                     ; $467a: $e0 $f1
	rst $38                                          ; $467c: $ff
	ld sp, hl                                        ; $467d: $f9
	db $fc                                           ; $467e: $fc
	rst $38                                          ; $467f: $ff
	di                                               ; $4680: $f3
	db $fc                                           ; $4681: $fc
	sbc h                                            ; $4682: $9c
	rlca                                             ; $4683: $07
	nop                                              ; $4684: $00
	cp $67                                           ; $4685: $fe $67
	ld hl, sp-$80                                    ; $4687: $f8 $80
	add hl, bc                                       ; $4689: $09
	ld [hl], c                                       ; $468a: $71
	ldh a, [c]                                       ; $468b: $f2
	ld a, h                                          ; $468c: $7c
	rst $38                                          ; $468d: $ff
	rst $38                                          ; $468e: $ff
	nop                                              ; $468f: $00
	rrca                                             ; $4690: $0f
	rlca                                             ; $4691: $07
	add b                                            ; $4692: $80
	db $fc                                           ; $4693: $fc
	add e                                            ; $4694: $83
	nop                                              ; $4695: $00
	nop                                              ; $4696: $00
	rst $38                                          ; $4697: $ff
	nop                                              ; $4698: $00
	jp Jump_064_783f                                 ; $4699: $c3 $3f $78


	push bc                                          ; $469c: $c5
	inc de                                           ; $469d: $13
	and a                                            ; $469e: $a7
	ld b, l                                          ; $469f: $45
	adc [hl]                                         ; $46a0: $8e
	inc a                                            ; $46a1: $3c
	ret nz                                           ; $46a2: $c0

	rlca                                             ; $46a3: $07
	jr @+$22                                         ; $46a4: $18 $20

	ld b, b                                          ; $46a6: $40
	add d                                            ; $46a7: $82
	adc [hl]                                         ; $46a8: $8e
	ld [bc], a                                       ; $46a9: $02
	inc c                                            ; $46aa: $0c
	dec d                                            ; $46ab: $15
	ld a, c                                          ; $46ac: $79
	ld [$56ea], a                                    ; $46ad: $ea $ea $56
	call nc, $0690                                   ; $46b0: $d4 $90 $06
	inc c                                            ; $46b3: $0c
	inc c                                            ; $46b4: $0c
	add hl, de                                       ; $46b5: $19
	add hl, de                                       ; $46b6: $19
	cp c                                             ; $46b7: $b9
	cp e                                             ; $46b8: $bb
	rst $38                                          ; $46b9: $ff
	ldh [$c1], a                                     ; $46ba: $e0 $c1
	add b                                            ; $46bc: $80
	inc de                                           ; $46bd: $13
	daa                                              ; $46be: $27
	rst JumpTable                                          ; $46bf: $c7
	add hl, bc                                       ; $46c0: $09
	rrca                                             ; $46c1: $0f
	jr jr_064_4674                                   ; $46c2: $18 $b0

	ei                                               ; $46c4: $fb
	cp $fc                                           ; $46c5: $fe $fc
	db $fc                                           ; $46c7: $fc
	ld hl, sp-$01                                    ; $46c8: $f8 $ff
	rst $38                                          ; $46ca: $ff
	ret c                                            ; $46cb: $d8

	sub b                                            ; $46cc: $90
	rst FarCall                                          ; $46cd: $f7
	rst FarCall                                          ; $46ce: $f7
	or $f1                                           ; $46cf: $f6 $f1
	di                                               ; $46d1: $f3
	ld d, a                                          ; $46d2: $57
	rra                                              ; $46d3: $1f
	rra                                              ; $46d4: $1f
	sbc b                                            ; $46d5: $98
	sbc b                                            ; $46d6: $98
	add hl, de                                       ; $46d7: $19
	rra                                              ; $46d8: $1f
	ld e, $3c                                        ; $46d9: $1e $3c
	jr c, @-$60                                      ; $46db: $38 $9e

	or b                                             ; $46dd: $b0
	db $fc                                           ; $46de: $fc
	sbc h                                            ; $46df: $9c
	db $fc                                           ; $46e0: $fc
	rlca                                             ; $46e1: $07
	add hl, sp                                       ; $46e2: $39
	ld l, a                                          ; $46e3: $6f
	ld hl, sp-$74                                    ; $46e4: $f8 $8c
	rst $38                                          ; $46e6: $ff
	daa                                              ; $46e7: $27
	ld a, [$658d]                                    ; $46e8: $fa $8d $65
	pop af                                           ; $46eb: $f1
	ld [hl-], a                                      ; $46ec: $32
	add b                                            ; $46ed: $80
	ld b, b                                          ; $46ee: $40
	add c                                            ; $46ef: $81
	pop af                                           ; $46f0: $f1
	ld a, b                                          ; $46f1: $78
	jr jr_064_4700                                   ; $46f2: $18 $0c

	call $bf7f                                       ; $46f4: $cd $7f $bf
	ld a, [hl]                                       ; $46f7: $7e
	di                                               ; $46f8: $f3
	db $dd                                           ; $46f9: $dd
	rst $38                                          ; $46fa: $ff
	sbc e                                            ; $46fb: $9b
	ei                                               ; $46fc: $fb
	di                                               ; $46fd: $f3
	sub e                                            ; $46fe: $93
	inc c                                            ; $46ff: $0c

jr_064_4700:
	db $fc                                           ; $4700: $fc
	adc l                                            ; $4701: $8d
	ld [$9948], sp                                   ; $4702: $08 $48 $99
	dec c                                            ; $4705: $0d
	add h                                            ; $4706: $84
	sub h                                            ; $4707: $94
	add d                                            ; $4708: $82
	add d                                            ; $4709: $82
	sub l                                            ; $470a: $95
	adc c                                            ; $470b: $89
	ld b, h                                          ; $470c: $44
	call nc, $c6d6                                   ; $470d: $d4 $d6 $c6
	rst JumpTable                                          ; $4710: $c7
	rst JumpTable                                          ; $4711: $c7
	jp $e0d3                                         ; $4712: $c3 $d3 $e0


	pop bc                                           ; $4715: $c1
	sbc b                                            ; $4716: $98
	ret nz                                           ; $4717: $c0

	pop bc                                           ; $4718: $c1
	add e                                            ; $4719: $83
	inc b                                            ; $471a: $04
	ld sp, hl                                        ; $471b: $f9
	rra                                              ; $471c: $1f
	rrca                                             ; $471d: $0f
	ld [hl], d                                       ; $471e: $72
	ld b, b                                          ; $471f: $40
	sbc c                                            ; $4720: $99
	pop hl                                           ; $4721: $e1
	or $38                                           ; $4722: $f6 $38
	sub b                                            ; $4724: $90
	ccf                                              ; $4725: $3f
	ld a, a                                          ; $4726: $7f
	ld l, d                                          ; $4727: $6a
	or a                                             ; $4728: $b7
	ld a, [hl]                                       ; $4729: $7e
	ld d, e                                          ; $472a: $53
	or $9d                                           ; $472b: $f6 $9d
	inc e                                            ; $472d: $1c
	adc [hl]                                         ; $472e: $8e
	ld l, e                                          ; $472f: $6b

Jump_064_4730:
	ld hl, sp-$80                                    ; $4730: $f8 $80
	adc d                                            ; $4732: $8a
	push af                                          ; $4733: $f5
	dec b                                            ; $4734: $05
	dec d                                            ; $4735: $15
	inc hl                                           ; $4736: $23
	ld c, $70                                        ; $4737: $0e $70
	ret nz                                           ; $4739: $c0

	sub b                                            ; $473a: $90
	di                                               ; $473b: $f3
	di                                               ; $473c: $f3
	db $e3                                           ; $473d: $e3
	call z, $80f1                                    ; $473e: $cc $f1 $80
	inc bc                                           ; $4741: $03
	nop                                              ; $4742: $00
	ld h, h                                          ; $4743: $64
	rst SubAFromDE                                          ; $4744: $df
	di                                               ; $4745: $f3
	db $fc                                           ; $4746: $fc
	rst $38                                          ; $4747: $ff
	add a                                            ; $4748: $87
	ld a, [bc]                                       ; $4749: $0a
	ld h, [hl]                                       ; $474a: $66
	inc bc                                           ; $474b: $03
	nop                                              ; $474c: $00
	inc c                                            ; $474d: $0c
	inc bc                                           ; $474e: $03
	jr c, @+$7e                                      ; $474f: $38 $7c

	adc l                                            ; $4751: $8d
	add a                                            ; $4752: $87
	inc bc                                           ; $4753: $03
	pop af                                           ; $4754: $f1
	dec hl                                           ; $4755: $2b
	ld e, h                                          ; $4756: $5c
	and a                                            ; $4757: $a7
	dec bc                                           ; $4758: $0b
	ld [hl+], a                                      ; $4759: $22
	dec h                                            ; $475a: $25
	ld [de], a                                       ; $475b: $12
	inc bc                                           ; $475c: $03
	sub c                                            ; $475d: $91
	adc c                                            ; $475e: $89
	ld c, h                                          ; $475f: $4c
	ld h, [hl]                                       ; $4760: $66
	ld [hl], a                                       ; $4761: $77
	ei                                               ; $4762: $fb
	db $fd                                           ; $4763: $fd
	ldh [$c1], a                                     ; $4764: $e0 $c1
	rst SubAFromDE                                          ; $4766: $df
	ld a, [$fd96]                                    ; $4767: $fa $96 $fd
	push af                                          ; $476a: $f5
	sub l                                            ; $476b: $95
	ld d, $1a                                        ; $476c: $16 $1a
	dec bc                                           ; $476e: $0b
	rrca                                             ; $476f: $0f
	rrca                                             ; $4770: $0f
	rra                                              ; $4771: $1f
	ld [hl], e                                       ; $4772: $73
	ld h, [hl]                                       ; $4773: $66
	ld a, l                                          ; $4774: $7d
	ld h, a                                          ; $4775: $67
	db $dd                                           ; $4776: $dd
	rst $38                                          ; $4777: $ff
	sbc l                                            ; $4778: $9d
	cp $24                                           ; $4779: $fe $24
	sbc $ff                                          ; $477b: $de $ff
	sbc h                                            ; $477d: $9c
	add d                                            ; $477e: $82
	adc [hl]                                         ; $477f: $8e
	add e                                            ; $4780: $83
	ld a, d                                          ; $4781: $7a
	ld [hl], $f0                                     ; $4782: $36 $f0
	sbc c                                            ; $4784: $99
	ldh a, [$f8]                                     ; $4785: $f0 $f8
	ld a, b                                          ; $4787: $78
	db $fc                                           ; $4788: $fc
	ld d, $e3                                        ; $4789: $16 $e3
	ld a, e                                          ; $478b: $7b
	ld hl, sp-$80                                    ; $478c: $f8 $80
	ld [$1cf8], sp                                   ; $478e: $08 $f8 $1c
	xor $1f                                          ; $4791: $ee $1f
	ld a, l                                          ; $4793: $7d
	sbc a                                            ; $4794: $9f
	db $e3                                           ; $4795: $e3
	cp $39                                           ; $4796: $fe $39
	sbc [hl]                                         ; $4798: $9e
	ld c, a                                          ; $4799: $4f
	rlca                                             ; $479a: $07
	add e                                            ; $479b: $83
	ld h, b                                          ; $479c: $60
	inc e                                            ; $479d: $1c
	rlca                                             ; $479e: $07
	rst JumpTable                                          ; $479f: $c7
	ld h, c                                          ; $47a0: $61
	or b                                             ; $47a1: $b0
	ld hl, sp+$05                                    ; $47a2: $f8 $05
	ld a, [bc]                                       ; $47a4: $0a

jr_064_47a5:
	add l                                            ; $47a5: $85
	ld b, d                                          ; $47a6: $42
	and l                                            ; $47a7: $a5
	sub d                                            ; $47a8: $92
	add hl, bc                                       ; $47a9: $09
	call nz, $f7fe                                   ; $47aa: $c4 $fe $f7
	ld a, a                                          ; $47ad: $7f
	ld h, h                                          ; $47ae: $64
	sbc [hl]                                         ; $47af: $9e
	ld a, [hl]                                       ; $47b0: $7e
	ld a, e                                          ; $47b1: $7b
	xor [hl]                                         ; $47b2: $ae
	sbc b                                            ; $47b3: $98
	or d                                             ; $47b4: $b2
	ld c, c                                          ; $47b5: $49
	ld h, $31                                        ; $47b6: $26 $31
	sbc h                                            ; $47b8: $9c
	db $eb                                           ; $47b9: $eb
	ld a, b                                          ; $47ba: $78
	ld l, a                                          ; $47bb: $6f
	ld a, [bc]                                       ; $47bc: $0a
	sbc d                                            ; $47bd: $9a
	ld a, a                                          ; $47be: $7f
	sbc a                                            ; $47bf: $9f
	adc a                                            ; $47c0: $8f
	rlca                                             ; $47c1: $07
	rst $38                                          ; $47c2: $ff
	sbc $7f                                          ; $47c3: $de $7f
	adc a                                            ; $47c5: $8f
	ld a, [hl]                                       ; $47c6: $7e
	cp $fa                                           ; $47c7: $fe $fa
	db $fc                                           ; $47c9: $fc
	ld a, b                                          ; $47ca: $78
	inc c                                            ; $47cb: $0c
	ld [$0b09], sp                                   ; $47cc: $08 $09 $0b
	rlca                                             ; $47cf: $07
	rrca                                             ; $47d0: $0f
	ldh a, [c]                                       ; $47d1: $f2
	ldh [c], a                                       ; $47d2: $e2
	ldh [c], a                                       ; $47d3: $e2
	jp nz, $dec2                                     ; $47d4: $c2 $c2 $de

	ld b, d                                          ; $47d7: $42
	ld a, h                                          ; $47d8: $7c
	and b                                            ; $47d9: $a0
	ld l, a                                          ; $47da: $6f
	db $dd                                           ; $47db: $dd
	rst SubAFromDE                                          ; $47dc: $df
	ld b, d                                          ; $47dd: $42
	sbc $02                                          ; $47de: $de $02
	sbc $44                                          ; $47e0: $de $44
	reti                                             ; $47e2: $d9


	rst $38                                          ; $47e3: $ff
	rst SubAFromDE                                          ; $47e4: $df
	ld b, b                                          ; $47e5: $40
	sbc c                                            ; $47e6: $99
	jr nz, @+$23                                     ; $47e7: $20 $21

	ld hl, $9291                                     ; $47e9: $21 $91 $92
	sub a                                            ; $47ec: $97
	reti                                             ; $47ed: $d9


	rst $38                                          ; $47ee: $ff
	sub a                                            ; $47ef: $97
	adc $cc                                          ; $47f0: $ce $cc
	cp $fe                                           ; $47f2: $fe $fe
	rst $38                                          ; $47f4: $ff
	rst $38                                          ; $47f5: $ff
	ld e, a                                          ; $47f6: $5f
	ld b, [hl]                                       ; $47f7: $46
	sbc $ff                                          ; $47f8: $de $ff
	add b                                            ; $47fa: $80
	and e                                            ; $47fb: $a3
	ld sp, $ffe1                                     ; $47fc: $31 $e1 $ff
	rst $38                                          ; $47ff: $ff
	ret nz                                           ; $4800: $c0

	ld h, b                                          ; $4801: $60
	or b                                             ; $4802: $b0
	ret c                                            ; $4803: $d8

	ld l, b                                          ; $4804: $68
	xor h                                            ; $4805: $ac
	ld b, h                                          ; $4806: $44
	and h                                            ; $4807: $a4
	ret nz                                           ; $4808: $c0

	ldh [rSVBK], a                                   ; $4809: $e0 $70
	jr c, jr_064_47a5                                ; $480b: $38 $98

	call c, $7cfc                                    ; $480d: $dc $fc $7c
	and [hl]                                         ; $4810: $a6
	jp nc, $aa4a                                     ; $4811: $d2 $4a $aa

	ld b, [hl]                                       ; $4814: $46
	and a                                            ; $4815: $a7
	ld h, e                                          ; $4816: $63
	db $d3                                           ; $4817: $d3
	ld a, [hl]                                       ; $4818: $7e
	ld a, $94                                        ; $4819: $3e $94
	cp [hl]                                          ; $481b: $be
	sbc $fe                                          ; $481c: $de $fe
	ld a, a                                          ; $481e: $7f
	cp a                                             ; $481f: $bf
	cp a                                             ; $4820: $bf
	or e                                             ; $4821: $b3
	ld l, e                                          ; $4822: $6b
	xor c                                            ; $4823: $a9
	jp hl                                            ; $4824: $e9


	ld sp, hl                                        ; $4825: $f9
	sbc $b5                                          ; $4826: $de $b5
	rst SubAFromDE                                          ; $4828: $df
	rst SubAFromDE                                          ; $4829: $df
	rst SubAFromDE                                          ; $482a: $df
	rst $38                                          ; $482b: $ff
	db $dd                                           ; $482c: $dd
	rst AddAOntoHL                                          ; $482d: $ef
	sub l                                            ; $482e: $95
	or l                                             ; $482f: $b5
	ld [hl], l                                       ; $4830: $75
	dec a                                            ; $4831: $3d
	cp l                                             ; $4832: $bd
	cp l                                             ; $4833: $bd
	db $fd                                           ; $4834: $fd
	db $dd                                           ; $4835: $dd
	push de                                          ; $4836: $d5
	rst AddAOntoHL                                          ; $4837: $ef
	rst AddAOntoHL                                          ; $4838: $ef
	sbc $e7                                          ; $4839: $de $e7
	rst SubAFromDE                                          ; $483b: $df
	and a                                            ; $483c: $a7
	sbc h                                            ; $483d: $9c
	xor a                                            ; $483e: $af
	push de                                          ; $483f: $d5
	ld d, l                                          ; $4840: $55
	db $dd                                           ; $4841: $dd
	ld d, [hl]                                       ; $4842: $56
	sbc e                                            ; $4843: $9b
	ld h, h                                          ; $4844: $64
	db $e4                                           ; $4845: $e4
	xor a                                            ; $4846: $af
	xor a                                            ; $4847: $af
	db $dd                                           ; $4848: $dd
	xor [hl]                                         ; $4849: $ae
	rst SubAFromDE                                          ; $484a: $df
	cp h                                             ; $484b: $bc
	rst SubAFromDE                                          ; $484c: $df
	and h                                            ; $484d: $a4
	db $dd                                           ; $484e: $dd
	xor b                                            ; $484f: $a8
	rst SubAFromDE                                          ; $4850: $df
	or b                                             ; $4851: $b0
	ld a, c                                          ; $4852: $79
	or c                                             ; $4853: $b1
	sbc $f8                                          ; $4854: $de $f8
	rst SubAFromDE                                          ; $4856: $df
	ldh a, [hDisp1_WX]                                     ; $4857: $f0 $96
	cp b                                             ; $4859: $b8
	and [hl]                                         ; $485a: $a6
	pop hl                                           ; $485b: $e1
	ld b, b                                          ; $485c: $40
	ld b, b                                          ; $485d: $40
	jp $988e                                         ; $485e: $c3 $8e $98


	ld hl, sp+$7b                                    ; $4861: $f8 $7b
	adc d                                            ; $4863: $8a
	add e                                            ; $4864: $83
	rst $38                                          ; $4865: $ff
	db $fc                                           ; $4866: $fc
	pop af                                           ; $4867: $f1
	rst SubAFromBC                                          ; $4868: $e7
	inc sp                                           ; $4869: $33
	ld h, h                                          ; $486a: $64
	res 3, h                                         ; $486b: $cb $9c
	pop hl                                           ; $486d: $e1
	add e                                            ; $486e: $83
	rlca                                             ; $486f: $07
	rrca                                             ; $4870: $0f
	rst GetHLinHL                                          ; $4871: $cf
	sbc a                                            ; $4872: $9f
	ccf                                              ; $4873: $3f
	rst $38                                          ; $4874: $ff
	cp $fc                                           ; $4875: $fe $fc
	ld hl, sp-$10                                    ; $4877: $f8 $f0
	nop                                              ; $4879: $00
	nop                                              ; $487a: $00
	add b                                            ; $487b: $80
	ld h, b                                          ; $487c: $60
	ld hl, sp-$7c                                    ; $487d: $f8 $84
	ld a, [de]                                       ; $487f: $1a
	and $7b                                          ; $4880: $e6 $7b
	ld hl, sp-$6a                                    ; $4882: $f8 $96
	ldh [rAUD2LOW], a                                ; $4884: $e0 $18
	ld a, h                                          ; $4886: $7c
	cp $fe                                           ; $4887: $fe $fe
	ld b, $7e                                        ; $4889: $06 $7e
	add [hl]                                         ; $488b: $86
	jp nz, $e2de                                     ; $488c: $c2 $de $e2

	sbc [hl]                                         ; $488f: $9e
	ldh a, [c]                                       ; $4890: $f2
	sbc $fe                                          ; $4891: $de $fe
	sbc [hl]                                         ; $4893: $9e
	ld a, $de                                        ; $4894: $3e $de
	ld e, $9e                                        ; $4896: $1e $9e
	ld c, $20                                        ; $4898: $0e $20
	nop                                              ; $489a: $00
	sbc [hl]                                         ; $489b: $9e
	cp e                                             ; $489c: $bb
	db $dd                                           ; $489d: $dd
	xor d                                            ; $489e: $aa
	sub h                                            ; $489f: $94
	add b                                            ; $48a0: $80
	xor d                                            ; $48a1: $aa
	ld [hl+], a                                      ; $48a2: $22
	adc b                                            ; $48a3: $88
	and d                                            ; $48a4: $a2
	ld d, l                                          ; $48a5: $55
	and d                                            ; $48a6: $a2
	ld [hl+], a                                      ; $48a7: $22
	sbc c                                            ; $48a8: $99
	sbc c                                            ; $48a9: $99
	ld de, $fb63                                     ; $48aa: $11 $63 $fb
	sub h                                            ; $48ad: $94
	ld [hl], a                                       ; $48ae: $77
	xor d                                            ; $48af: $aa
	ld [hl+], a                                      ; $48b0: $22
	nop                                              ; $48b1: $00
	ld d, l                                          ; $48b2: $55
	nop                                              ; $48b3: $00
	xor d                                            ; $48b4: $aa
	ld [hl+], a                                      ; $48b5: $22
	xor d                                            ; $48b6: $aa
	sub c                                            ; $48b7: $91
	sbc c                                            ; $48b8: $99
	rrca                                             ; $48b9: $0f
	ld bc, $9180                                     ; $48ba: $01 $80 $91
	rst $38                                          ; $48bd: $ff
	cp c                                             ; $48be: $b9
	xor $b9                                          ; $48bf: $ee $b9
	xor $b5                                          ; $48c1: $ee $b5
	xor $45                                          ; $48c3: $ee $45
	cp $cf                                           ; $48c5: $fe $cf
	ld [hl], d                                       ; $48c7: $72

Call_064_48c8:
	nop                                              ; $48c8: $00
	adc a                                            ; $48c9: $8f
	ld a, a                                          ; $48ca: $7f
	nop                                              ; $48cb: $00
	rst SubAFromBC                                          ; $48cc: $e7
	jr @-$3f                                         ; $48cd: $18 $bf

	ld a, h                                          ; $48cf: $7c
	push hl                                          ; $48d0: $e5
	ld h, [hl]                                       ; $48d1: $66
	rst $38                                          ; $48d2: $ff
	cp [hl]                                          ; $48d3: $be
	xor e                                            ; $48d4: $ab
	ld e, $97                                        ; $48d5: $1e $97

jr_064_48d7:
	inc e                                            ; $48d7: $1c
	cp a                                             ; $48d8: $bf
	nop                                              ; $48d9: $00
	ret nz                                           ; $48da: $c0

	add c                                            ; $48db: $81
	add b                                            ; $48dc: $80
	rst FarCall                                          ; $48dd: $f7
	add b                                            ; $48de: $80
	ld h, b                                          ; $48df: $60
	ret nz                                           ; $48e0: $c0

	ld [hl], b                                       ; $48e1: $70
	ret nz                                           ; $48e2: $c0

	ldh a, [$e0]                                     ; $48e3: $f0 $e0
	jr c, jr_064_48d7                                ; $48e5: $38 $f0

	inc l                                            ; $48e7: $2c
	ld hl, sp+$27                                    ; $48e8: $f8 $27
	cp $47                                           ; $48ea: $fe $47
	rst $38                                          ; $48ec: $ff
	ld b, a                                          ; $48ed: $47
	rst $38                                          ; $48ee: $ff
	ld b, l                                          ; $48ef: $45
	rst $38                                          ; $48f0: $ff
	adc c                                            ; $48f1: $89
	rst $38                                          ; $48f2: $ff
	adc e                                            ; $48f3: $8b
	rst $38                                          ; $48f4: $ff
	sub d                                            ; $48f5: $92
	rst $38                                          ; $48f6: $ff
	inc h                                            ; $48f7: $24
	rst $38                                          ; $48f8: $ff
	ld c, b                                          ; $48f9: $48
	ld a, e                                          ; $48fa: $7b
	or $9b                                           ; $48fb: $f6 $9b
	add e                                            ; $48fd: $83
	ld a, [$fe8b]                                    ; $48fe: $fa $8b $fe
	ld [hl], a                                       ; $4901: $77
	cp $90                                           ; $4902: $fe $90
	rst GetHLinHL                                          ; $4904: $cf
	halt                                             ; $4905: $76
	call z, Call_064_6972                            ; $4906: $cc $72 $69
	or h                                             ; $4909: $b4
	add hl, sp                                       ; $490a: $39
	jp nc, Jump_064_7a81                             ; $490b: $d2 $81 $7a

	cp c                                             ; $490e: $b9
	ld b, a                                          ; $490f: $47
	and c                                            ; $4910: $a1
	ld b, [hl]                                       ; $4911: $46
	ldh [$bc], a                                     ; $4912: $e0 $bc
	cp b                                             ; $4914: $b8
	cp [hl]                                          ; $4915: $be
	ld a, a                                          ; $4916: $7f
	or a                                             ; $4917: $b7
	sbc b                                            ; $4918: $98
	add l                                            ; $4919: $85
	rst $38                                          ; $491a: $ff
	call z, $ee7f                                    ; $491b: $cc $7f $ee
	dec sp                                           ; $491e: $3b
	sub a                                            ; $491f: $97
	ld a, l                                          ; $4920: $7d
	rrca                                             ; $4921: $0f
	db $fc                                           ; $4922: $fc
	nop                                              ; $4923: $00
	cpl                                              ; $4924: $2f
	cp $01                                           ; $4925: $fe $01
	rst GetHLinHL                                          ; $4927: $cf
	jr nc, jr_064_49a5                               ; $4928: $30 $7b

	db $fc                                           ; $492a: $fc
	call z, $ffcf                                    ; $492b: $cc $cf $ff
	ld a, a                                          ; $492e: $7f
	ld d, a                                          ; $492f: $57
	inc a                                            ; $4930: $3c
	cpl                                              ; $4931: $2f
	jr c, jr_064_49b2                                ; $4932: $38 $7e

	cp d                                             ; $4934: $ba
	nop                                              ; $4935: $00
	rst GetHLinHL                                          ; $4936: $cf
	inc bc                                           ; $4937: $03
	rlca                                             ; $4938: $07
	rlca                                             ; $4939: $07
	rlca                                             ; $493a: $07
	rrca                                             ; $493b: $0f
	sub d                                            ; $493c: $92
	ld bc, $071f                                     ; $493d: $01 $1f $07
	ld a, a                                          ; $4940: $7f
	dec de                                           ; $4941: $1b
	rst $38                                          ; $4942: $ff
	ld h, e                                          ; $4943: $63
	cp $87                                           ; $4944: $fe $87
	cp $07                                           ; $4946: $fe $07
	ld a, [$5f0f]                                    ; $4948: $fa $0f $5f
	cp $47                                           ; $494b: $fe $47
	ld h, b                                          ; $494d: $60
	sbc [hl]                                         ; $494e: $9e
	rst $38                                          ; $494f: $ff
	cp a                                             ; $4950: $bf
	rst $38                                          ; $4951: $ff
	rst $38                                          ; $4952: $ff
	sbc c                                            ; $4953: $99
	inc a                                            ; $4954: $3c
	db $eb                                           ; $4955: $eb
	ld l, [hl]                                       ; $4956: $6e
	rst JumpTable                                          ; $4957: $c7
	cp $9f                                           ; $4958: $fe $9f
	ld [hl], e                                       ; $495a: $73
	ld h, b                                          ; $495b: $60
	ld c, a                                          ; $495c: $4f
	and b                                            ; $495d: $a0
	ld [hl], e                                       ; $495e: $73
	ldh [c], a                                       ; $495f: $e2
	sub a                                            ; $4960: $97
	ld a, b                                          ; $4961: $78
	rst SubAFromHL                                          ; $4962: $d7
	sbc $af                                          ; $4963: $de $af
	ld a, a                                          ; $4965: $7f
	ld a, a                                          ; $4966: $7f
	ld a, b                                          ; $4967: $78
	ld a, $be                                        ; $4968: $3e $be
	nop                                              ; $496a: $00
	rst GetHLinHL                                          ; $496b: $cf
	sub c                                            ; $496c: $91
	scf                                              ; $496d: $37
	ret nz                                           ; $496e: $c0

	ld a, e                                          ; $496f: $7b
	cp [hl]                                          ; $4970: $be
	sbc e                                            ; $4971: $9b
	rst SubAFromBC                                          ; $4972: $e7
	xor $ff                                          ; $4973: $ee $ff
	inc a                                            ; $4975: $3c
	dec hl                                           ; $4976: $2b
	ret nz                                           ; $4977: $c0

	ld a, e                                          ; $4978: $7b
	cp [hl]                                          ; $4979: $be
	sbc e                                            ; $497a: $9b
	rst GetHLinHL                                          ; $497b: $cf
	sbc $ff                                          ; $497c: $de $ff
	ld a, b                                          ; $497e: $78
	ld l, a                                          ; $497f: $6f
	ld h, b                                          ; $4980: $60
	dec hl                                           ; $4981: $2b
	ret nz                                           ; $4982: $c0

	ld a, a                                          ; $4983: $7f
	cp $9e                                           ; $4984: $fe $9e
	and $1b                                          ; $4986: $e6 $1b
	ret nz                                           ; $4988: $c0

	ld a, a                                          ; $4989: $7f
	cp $9c                                           ; $498a: $fe $9c
	rst JumpTable                                          ; $498c: $c7
	rst $38                                          ; $498d: $ff
	ld a, h                                          ; $498e: $7c
	ld l, a                                          ; $498f: $6f
	ret nz                                           ; $4990: $c0

	sbc b                                            ; $4991: $98
	jr nc, jr_064_49b4                               ; $4992: $30 $20

	nop                                              ; $4994: $00
	nop                                              ; $4995: $00
	inc l                                            ; $4996: $2c
	jr z, jr_064_49b1                                ; $4997: $28 $18

	cp h                                             ; $4999: $bc
	nop                                              ; $499a: $00
	jr jr_064_499d                                   ; $499b: $18 $00

jr_064_499d:
	add c                                            ; $499d: $81
	rst FarCall                                          ; $499e: $f7
	sub l                                            ; $499f: $95
	pop bc                                           ; $49a0: $c1
	rst $38                                          ; $49a1: $ff
	cp $ff                                           ; $49a2: $fe $ff
	ret nz                                           ; $49a4: $c0

jr_064_49a5:
	rst FarCall                                          ; $49a5: $f7
	ret nz                                           ; $49a6: $c0

	ld h, e                                          ; $49a7: $63
	ret nz                                           ; $49a8: $c0

	ld h, c                                          ; $49a9: $61
	db $dd                                           ; $49aa: $dd
	ret nz                                           ; $49ab: $c0

	sbc [hl]                                         ; $49ac: $9e
	ld b, b                                          ; $49ad: $40
	ld [hl], a                                       ; $49ae: $77
	ldh [$9c], a                                     ; $49af: $e0 $9c

jr_064_49b1:
	inc a                                            ; $49b1: $3c

jr_064_49b2:
	jr z, jr_064_49ec                                ; $49b2: $28 $38

jr_064_49b4:
	ld a, e                                          ; $49b4: $7b
	db $e3                                           ; $49b5: $e3
	inc de                                           ; $49b6: $13
	ldh [$9c], a                                     ; $49b7: $e0 $9c
	jr c, jr_064_49eb                                ; $49b9: $38 $30

	db $10                                           ; $49bb: $10
	ld [hl], a                                       ; $49bc: $77
	sbc $1f                                          ; $49bd: $de $1f
	ldh [$7f], a                                     ; $49bf: $e0 $7f
	cp [hl]                                          ; $49c1: $be
	ld [hl], a                                       ; $49c2: $77

jr_064_49c3:
	ret nz                                           ; $49c3: $c0

	sbc [hl]                                         ; $49c4: $9e
	sbc c                                            ; $49c5: $99
	ld b, e                                          ; $49c6: $43
	ldh [$15], a                                     ; $49c7: $e0 $15
	ld bc, $9180                                     ; $49c9: $01 $80 $91
	rst $38                                          ; $49cc: $ff
	cp c                                             ; $49cd: $b9
	xor $b9                                          ; $49ce: $ee $b9
	xor $a5                                          ; $49d0: $ee $a5
	cp $45                                           ; $49d2: $fe $45
	cp $ff                                           ; $49d4: $fe $ff
	ld b, d                                          ; $49d6: $42
	nop                                              ; $49d7: $00
	adc a                                            ; $49d8: $8f
	ld a, a                                          ; $49d9: $7f
	jr jr_064_49c3                                   ; $49da: $18 $e7

	ld a, h                                          ; $49dc: $7c
	and a                                            ; $49dd: $a7
	and $af                                          ; $49de: $e6 $af
	ld l, $bb                                        ; $49e0: $2e $bb
	ld a, $a3                                        ; $49e2: $3e $a3
	ld e, $97                                        ; $49e4: $1e $97

jr_064_49e6:
	inc e                                            ; $49e6: $1c
	cp a                                             ; $49e7: $bf
	nop                                              ; $49e8: $00
	ret nz                                           ; $49e9: $c0

	add c                                            ; $49ea: $81

jr_064_49eb:
	add b                                            ; $49eb: $80

jr_064_49ec:
	rst FarCall                                          ; $49ec: $f7
	add b                                            ; $49ed: $80
	ld h, b                                          ; $49ee: $60
	ret nz                                           ; $49ef: $c0

	ld [hl], b                                       ; $49f0: $70
	ret nz                                           ; $49f1: $c0

	ldh a, [$e0]                                     ; $49f2: $f0 $e0
	jr c, jr_064_49e6                                ; $49f4: $38 $f0

	inc l                                            ; $49f6: $2c
	ld hl, sp+$27                                    ; $49f7: $f8 $27
	cp $47                                           ; $49f9: $fe $47
	rst $38                                          ; $49fb: $ff
	ld b, a                                          ; $49fc: $47
	rst $38                                          ; $49fd: $ff
	ld b, l                                          ; $49fe: $45
	rst $38                                          ; $49ff: $ff
	adc c                                            ; $4a00: $89
	rst $38                                          ; $4a01: $ff
	adc e                                            ; $4a02: $8b
	rst $38                                          ; $4a03: $ff
	sub d                                            ; $4a04: $92
	rst $38                                          ; $4a05: $ff
	inc h                                            ; $4a06: $24
	rst $38                                          ; $4a07: $ff
	ld c, b                                          ; $4a08: $48
	ld a, e                                          ; $4a09: $7b
	or $9b                                           ; $4a0a: $f6 $9b
	add e                                            ; $4a0c: $83
	ld a, [$fe8b]                                    ; $4a0d: $fa $8b $fe
	ld [hl], a                                       ; $4a10: $77
	cp $90                                           ; $4a11: $fe $90
	rst GetHLinHL                                          ; $4a13: $cf
	halt                                             ; $4a14: $76
	call z, Call_064_6972                            ; $4a15: $cc $72 $69
	or h                                             ; $4a18: $b4
	add hl, sp                                       ; $4a19: $39
	jp nc, Jump_064_7b81                             ; $4a1a: $d2 $81 $7b

	cp c                                             ; $4a1d: $b9
	ld b, [hl]                                       ; $4a1e: $46
	and c                                            ; $4a1f: $a1
	ld b, [hl]                                       ; $4a20: $46
	pop bc                                           ; $4a21: $c1
	cp h                                             ; $4a22: $bc
	add b                                            ; $4a23: $80
	and b                                            ; $4a24: $a0
	ld h, c                                          ; $4a25: $61
	or b                                             ; $4a26: $b0
	sbc b                                            ; $4a27: $98
	add l                                            ; $4a28: $85
	rst $38                                          ; $4a29: $ff
	call z, $ae7f                                    ; $4a2a: $cc $7f $ae
	ld a, e                                          ; $4a2d: $7b
	rla                                              ; $4a2e: $17
	db $fd                                           ; $4a2f: $fd
	rst $38                                          ; $4a30: $ff
	inc c                                            ; $4a31: $0c
	nop                                              ; $4a32: $00
	rra                                              ; $4a33: $1f
	cp [hl]                                          ; $4a34: $be
	ld [hl], c                                       ; $4a35: $71
	rst GetHLinHL                                          ; $4a36: $cf
	db $fc                                           ; $4a37: $fc
	rst GetHLinHL                                          ; $4a38: $cf
	rst GetHLinHL                                          ; $4a39: $cf
	ld e, l                                          ; $4a3a: $5d
	ld e, [hl]                                       ; $4a3b: $5e
	ld [hl], a                                       ; $4a3c: $77
	ld a, h                                          ; $4a3d: $7c
	ld b, a                                          ; $4a3e: $47
	inc a                                            ; $4a3f: $3c
	xor a                                            ; $4a40: $af
	jr c, jr_064_4ac1                                ; $4a41: $38 $7e

	cp d                                             ; $4a43: $ba
	nop                                              ; $4a44: $00
	rst AddAOntoHL                                          ; $4a45: $ef
	inc bc                                           ; $4a46: $03
	rlca                                             ; $4a47: $07
	rlca                                             ; $4a48: $07
	rlca                                             ; $4a49: $07
	rrca                                             ; $4a4a: $0f
	sub d                                            ; $4a4b: $92
	ld bc, $071f                                     ; $4a4c: $01 $1f $07
	ld a, a                                          ; $4a4f: $7f
	dec de                                           ; $4a50: $1b
	rst $38                                          ; $4a51: $ff
	ld h, e                                          ; $4a52: $63
	cp $87                                           ; $4a53: $fe $87
	cp $07                                           ; $4a55: $fe $07
	ld a, [$5f0f]                                    ; $4a57: $fa $0f $5f
	cp $4b                                           ; $4a5a: $fe $4b
	ld h, b                                          ; $4a5c: $60
	cp a                                             ; $4a5d: $bf
	rst $38                                          ; $4a5e: $ff
	rst $38                                          ; $4a5f: $ff
	sub a                                            ; $4a60: $97
	inc a                                            ; $4a61: $3c
	rst JumpTable                                          ; $4a62: $c7
	ld l, [hl]                                       ; $4a63: $6e
	rst AddAOntoHL                                          ; $4a64: $ef
	cp $f3                                           ; $4a65: $fe $f3
	ld a, $9f                                        ; $4a67: $3e $9f
	ld [hl], e                                       ; $4a69: $73
	ld h, b                                          ; $4a6a: $60
	ld d, a                                          ; $4a6b: $57
	and b                                            ; $4a6c: $a0
	sbc l                                            ; $4a6d: $9d
	cp $01                                           ; $4a6e: $fe $01
	ld a, e                                          ; $4a70: $7b
	ldh [c], a                                       ; $4a71: $e2
	sub l                                            ; $4a72: $95

jr_064_4a73:
	ld a, b                                          ; $4a73: $78
	adc a                                            ; $4a74: $8f
	sbc $77                                          ; $4a75: $de $77
	ld a, a                                          ; $4a77: $7f
	rst GetHLinHL                                          ; $4a78: $cf
	ld a, h                                          ; $4a79: $7c
	ld a, a                                          ; $4a7a: $7f
	jr c, jr_064_4abb                                ; $4a7b: $38 $3e

	cp [hl]                                          ; $4a7d: $be
	nop                                              ; $4a7e: $00
	rst AddAOntoHL                                          ; $4a7f: $ef
	sub c                                            ; $4a80: $91
	ccf                                              ; $4a81: $3f
	ret nz                                           ; $4a82: $c0

	ld [hl], e                                       ; $4a83: $73
	cp [hl]                                          ; $4a84: $be
	sbc l                                            ; $4a85: $9d
	db $eb                                           ; $4a86: $eb
	cp $2b                                           ; $4a87: $fe $2b
	ret nz                                           ; $4a89: $c0

	ld a, e                                          ; $4a8a: $7b
	cp [hl]                                          ; $4a8b: $be
	sbc e                                            ; $4a8c: $9b
	rst GetHLinHL                                          ; $4a8d: $cf
	sbc $d7                                          ; $4a8e: $de $d7
	ld a, a                                          ; $4a90: $7f
	inc de                                           ; $4a91: $13
	ret nz                                           ; $4a92: $c0

	cp a                                             ; $4a93: $bf
	rst $38                                          ; $4a94: $ff
	rst $38                                          ; $4a95: $ff
	sbc h                                            ; $4a96: $9c
	adc $bf                                          ; $4a97: $ce $bf
	inc a                                            ; $4a99: $3c
	dec hl                                           ; $4a9a: $2b
	ret nz                                           ; $4a9b: $c0

	cp a                                             ; $4a9c: $bf
	rst $38                                          ; $4a9d: $ff
	rst $38                                          ; $4a9e: $ff
	sbc h                                            ; $4a9f: $9c
	ld c, a                                          ; $4aa0: $4f
	ld a, a                                          ; $4aa1: $7f
	inc a                                            ; $4aa2: $3c
	ld l, a                                          ; $4aa3: $6f
	ret nz                                           ; $4aa4: $c0

	sub [hl]                                         ; $4aa5: $96
	jr nc, jr_064_4ac8                               ; $4aa6: $30 $20

	nop                                              ; $4aa8: $00
	nop                                              ; $4aa9: $00
	inc a                                            ; $4aaa: $3c
	jr c, jr_064_4ae5                                ; $4aab: $38 $38

	stop                                             ; $4aad: $10 $00
	cp l                                             ; $4aaf: $bd
	jr jr_064_4ab2                                   ; $4ab0: $18 $00

jr_064_4ab2:
	add c                                            ; $4ab2: $81
	rst FarCall                                          ; $4ab3: $f7
	sub l                                            ; $4ab4: $95
	pop bc                                           ; $4ab5: $c1
	rst $38                                          ; $4ab6: $ff
	cp $ff                                           ; $4ab7: $fe $ff
	ret nz                                           ; $4ab9: $c0

	rst FarCall                                          ; $4aba: $f7

jr_064_4abb:
	ret nz                                           ; $4abb: $c0

	ld h, e                                          ; $4abc: $63
	ret nz                                           ; $4abd: $c0

	ld h, c                                          ; $4abe: $61
	db $dd                                           ; $4abf: $dd
	ret nz                                           ; $4ac0: $c0

jr_064_4ac1:
	sbc [hl]                                         ; $4ac1: $9e
	ld b, b                                          ; $4ac2: $40
	ld l, e                                          ; $4ac3: $6b
	ldh [$7b], a                                     ; $4ac4: $e0 $7b
	db $e3                                           ; $4ac6: $e3
	dec de                                           ; $4ac7: $1b

jr_064_4ac8:
	ldh [$df], a                                     ; $4ac8: $e0 $df
	inc a                                            ; $4aca: $3c
	rst SubAFromDE                                          ; $4acb: $df
	jr jr_064_4b41                                   ; $4acc: $18 $73

	cp [hl]                                          ; $4ace: $be
	inc hl                                           ; $4acf: $23
	ldh [$df], a                                     ; $4ad0: $e0 $df
	inc e                                            ; $4ad2: $1c
	rst SubAFromDE                                          ; $4ad3: $df
	jr jr_064_4a73                                   ; $4ad4: $18 $9d

	ld [$bf00], sp                                   ; $4ad6: $08 $00 $bf
	sbc c                                            ; $4ad9: $99
	rst FarCall                                          ; $4ada: $f7
	ld c, e                                          ; $4adb: $4b
	ldh [rAUD1LOW], a                                ; $4adc: $e0 $13
	ld bc, $9180                                     ; $4ade: $01 $80 $91
	rst $38                                          ; $4ae1: $ff
	cp c                                             ; $4ae2: $b9
	xor $b9                                          ; $4ae3: $ee $b9

jr_064_4ae5:
	xor $b5                                          ; $4ae5: $ee $b5
	xor $45                                          ; $4ae7: $ee $45
	cp $cf                                           ; $4ae9: $fe $cf
	ld [hl], d                                       ; $4aeb: $72
	nop                                              ; $4aec: $00
	adc a                                            ; $4aed: $8f
	ld a, a                                          ; $4aee: $7f
	nop                                              ; $4aef: $00
	ei                                               ; $4af0: $fb
	inc a                                            ; $4af1: $3c
	push hl                                          ; $4af2: $e5
	ld h, [hl]                                       ; $4af3: $66
	xor a                                            ; $4af4: $af
	xor $fb                                          ; $4af5: $ee $fb
	ld a, $a3                                        ; $4af7: $3e $a3
	ld e, $97                                        ; $4af9: $1e $97

jr_064_4afb:
	inc e                                            ; $4afb: $1c
	cp a                                             ; $4afc: $bf
	nop                                              ; $4afd: $00
	ret nz                                           ; $4afe: $c0

	add c                                            ; $4aff: $81
	add b                                            ; $4b00: $80
	rst FarCall                                          ; $4b01: $f7
	add b                                            ; $4b02: $80
	ld h, b                                          ; $4b03: $60
	ret nz                                           ; $4b04: $c0

	ld [hl], b                                       ; $4b05: $70
	ret nz                                           ; $4b06: $c0

	ldh a, [$e0]                                     ; $4b07: $f0 $e0
	jr c, jr_064_4afb                                ; $4b09: $38 $f0

	inc l                                            ; $4b0b: $2c
	ld hl, sp+$27                                    ; $4b0c: $f8 $27
	cp $47                                           ; $4b0e: $fe $47
	rst $38                                          ; $4b10: $ff
	ld b, a                                          ; $4b11: $47
	rst $38                                          ; $4b12: $ff
	ld b, l                                          ; $4b13: $45
	rst $38                                          ; $4b14: $ff
	adc c                                            ; $4b15: $89
	rst $38                                          ; $4b16: $ff
	adc e                                            ; $4b17: $8b
	rst $38                                          ; $4b18: $ff
	sub d                                            ; $4b19: $92
	rst $38                                          ; $4b1a: $ff
	inc h                                            ; $4b1b: $24
	rst $38                                          ; $4b1c: $ff
	ld c, b                                          ; $4b1d: $48
	ld a, e                                          ; $4b1e: $7b
	or $9b                                           ; $4b1f: $f6 $9b
	add e                                            ; $4b21: $83
	ld a, [$fe8b]                                    ; $4b22: $fa $8b $fe
	ld [hl], a                                       ; $4b25: $77
	cp $80                                           ; $4b26: $fe $80
	rst GetHLinHL                                          ; $4b28: $cf
	halt                                             ; $4b29: $76
	call z, Call_064_6972                            ; $4b2a: $cc $72 $69
	or h                                             ; $4b2d: $b4
	add hl, sp                                       ; $4b2e: $39
	jp nc, Jump_064_7b81                             ; $4b2f: $d2 $81 $7b

	cp c                                             ; $4b32: $b9
	ld b, [hl]                                       ; $4b33: $46
	and c                                            ; $4b34: $a1
	ld b, [hl]                                       ; $4b35: $46
	ldh [rP1], a                                     ; $4b36: $e0 $00
	add b                                            ; $4b38: $80
	nop                                              ; $4b39: $00
	and b                                            ; $4b3a: $a0
	nop                                              ; $4b3b: $00
	ld h, c                                          ; $4b3c: $61
	nop                                              ; $4b3d: $00
	or b                                             ; $4b3e: $b0
	nop                                              ; $4b3f: $00
	sbc b                                            ; $4b40: $98

jr_064_4b41:
	rst $38                                          ; $4b41: $ff
	call z, $ee7f                                    ; $4b42: $cc $7f $ee
	dec sp                                           ; $4b45: $3b
	sub a                                            ; $4b46: $97
	adc e                                            ; $4b47: $8b
	ld a, l                                          ; $4b48: $7d
	rrca                                             ; $4b49: $0f
	db $fc                                           ; $4b4a: $fc
	nop                                              ; $4b4b: $00
	cpl                                              ; $4b4c: $2f
	cp $01                                           ; $4b4d: $fe $01
	ei                                               ; $4b4f: $fb
	db $fc                                           ; $4b50: $fc
	call Call_064_5fce                               ; $4b51: $cd $ce $5f
	ld e, a                                          ; $4b54: $5f
	ld [hl], a                                       ; $4b55: $77
	ld a, h                                          ; $4b56: $7c
	rlca                                             ; $4b57: $07
	inc a                                            ; $4b58: $3c
	xor a                                            ; $4b59: $af
	jr c, jr_064_4bda                                ; $4b5a: $38 $7e

	cp $9a                                           ; $4b5c: $fe $9a
	rst AddAOntoHL                                          ; $4b5e: $ef
	nop                                              ; $4b5f: $00
	inc bc                                           ; $4b60: $03
	nop                                              ; $4b61: $00
	rlca                                             ; $4b62: $07
	ld [hl], e                                       ; $4b63: $73
	cp $91                                           ; $4b64: $fe $91
	rrca                                             ; $4b66: $0f
	ld bc, $071f                                     ; $4b67: $01 $1f $07
	ld a, a                                          ; $4b6a: $7f
	dec de                                           ; $4b6b: $1b
	rst $38                                          ; $4b6c: $ff
	ld h, e                                          ; $4b6d: $63
	cp $87                                           ; $4b6e: $fe $87
	cp $07                                           ; $4b70: $fe $07
	ld a, [$5f0f]                                    ; $4b72: $fa $0f $5f
	cp $47                                           ; $4b75: $fe $47
	ld h, b                                          ; $4b77: $60
	sub h                                            ; $4b78: $94
	rst $38                                          ; $4b79: $ff
	nop                                              ; $4b7a: $00
	rst $38                                          ; $4b7b: $ff
	inc a                                            ; $4b7c: $3c
	rst GetHLinHL                                          ; $4b7d: $cf
	ld l, [hl]                                       ; $4b7e: $6e
	cp e                                             ; $4b7f: $bb
	cp $87                                           ; $4b80: $fe $87
	ld a, $9f                                        ; $4b82: $3e $9f
	ld [hl], e                                       ; $4b84: $73
	ld h, b                                          ; $4b85: $60
	ld c, a                                          ; $4b86: $4f
	and b                                            ; $4b87: $a0
	ld a, e                                          ; $4b88: $7b
	ldh [c], a                                       ; $4b89: $e2
	sub l                                            ; $4b8a: $95
	ld a, b                                          ; $4b8b: $78
	adc a                                            ; $4b8c: $8f
	sbc $77                                          ; $4b8d: $de $77
	ld a, a                                          ; $4b8f: $7f
	adc a                                            ; $4b90: $8f
	ld a, h                                          ; $4b91: $7c
	ld a, a                                          ; $4b92: $7f
	jr c, jr_064_4bd3                                ; $4b93: $38 $3e

	ld [hl], e                                       ; $4b95: $73
	and b                                            ; $4b96: $a0
	dec sp                                           ; $4b97: $3b
	ret nz                                           ; $4b98: $c0

	ld [hl], a                                       ; $4b99: $77
	cp $9c                                           ; $4b9a: $fe $9c
	ld a, h                                          ; $4b9c: $7c
	rst JumpTable                                          ; $4b9d: $c7
	xor $2b                                          ; $4b9e: $ee $2b
	ret nz                                           ; $4ba0: $c0

	ld [hl], a                                       ; $4ba1: $77
	cp $9c                                           ; $4ba2: $fe $9c
	db $fc                                           ; $4ba4: $fc
	adc a                                            ; $4ba5: $8f
	ld e, a                                          ; $4ba6: $5f
	dec bc                                           ; $4ba7: $0b
	ret nz                                           ; $4ba8: $c0

	ld a, a                                          ; $4ba9: $7f
	cp $9c                                           ; $4baa: $fe $9c
	adc $ff                                          ; $4bac: $ce $ff
	ld a, h                                          ; $4bae: $7c
	inc hl                                           ; $4baf: $23
	ret nz                                           ; $4bb0: $c0

	ld a, a                                          ; $4bb1: $7f
	cp $9c                                           ; $4bb2: $fe $9c
	rst SubAFromBC                                          ; $4bb4: $e7
	ld a, a                                          ; $4bb5: $7f
	ld a, $6f                                        ; $4bb6: $3e $6f
	ret nz                                           ; $4bb8: $c0

	sub [hl]                                         ; $4bb9: $96
	jr nc, jr_064_4bdc                               ; $4bba: $30 $20

	ld b, $00                                        ; $4bbc: $06 $00
	ld a, $24                                        ; $4bbe: $3e $24

jr_064_4bc0:
	inc b                                            ; $4bc0: $04
	nop                                              ; $4bc1: $00
	jr jr_064_4bc0                                   ; $4bc2: $18 $fc

	sub d                                            ; $4bc4: $92

jr_064_4bc5:
	add c                                            ; $4bc5: $81
	nop                                              ; $4bc6: $00
	rst FarCall                                          ; $4bc7: $f7
	pop bc                                           ; $4bc8: $c1
	rst $38                                          ; $4bc9: $ff
	cp $ff                                           ; $4bca: $fe $ff
	ret nz                                           ; $4bcc: $c0

	rst FarCall                                          ; $4bcd: $f7
	ret nz                                           ; $4bce: $c0

	ld h, e                                          ; $4bcf: $63
	ret nz                                           ; $4bd0: $c0

	ld h, c                                          ; $4bd1: $61
	db $dd                                           ; $4bd2: $dd

jr_064_4bd3:
	ret nz                                           ; $4bd3: $c0

	sbc [hl]                                         ; $4bd4: $9e
	ld b, b                                          ; $4bd5: $40
	ld [hl], e                                       ; $4bd6: $73
	ldh [$9d], a                                     ; $4bd7: $e0 $9d
	inc l                                            ; $4bd9: $2c

jr_064_4bda:
	inc a                                            ; $4bda: $3c
	ld a, e                                          ; $4bdb: $7b

jr_064_4bdc:
	pop hl                                           ; $4bdc: $e1
	ld [hl], a                                       ; $4bdd: $77
	sbc $2b                                          ; $4bde: $de $2b
	ldh [$df], a                                     ; $4be0: $e0 $df
	inc a                                            ; $4be2: $3c
	rst SubAFromDE                                          ; $4be3: $df

jr_064_4be4:
	jr jr_064_4be4                                   ; $4be4: $18 $fe

	ld a, a                                          ; $4be6: $7f
	db $fc                                           ; $4be7: $fc
	inc hl                                           ; $4be8: $23
	ldh [$df], a                                     ; $4be9: $e0 $df
	inc e                                            ; $4beb: $1c
	ld [hl], e                                       ; $4bec: $73
	cp [hl]                                          ; $4bed: $be
	ccf                                              ; $4bee: $3f
	ldh [$0c], a                                     ; $4bef: $e0 $0c
	ld bc, $9180                                     ; $4bf1: $01 $80 $91
	rst $38                                          ; $4bf4: $ff
	cp c                                             ; $4bf5: $b9
	xor $b9                                          ; $4bf6: $ee $b9
	xor $b5                                          ; $4bf8: $ee $b5
	xor $45                                          ; $4bfa: $ee $45
	cp $cf                                           ; $4bfc: $fe $cf
	ld [hl], d                                       ; $4bfe: $72
	nop                                              ; $4bff: $00
	adc a                                            ; $4c00: $8f
	ld a, a                                          ; $4c01: $7f
	nop                                              ; $4c02: $00
	rst SubAFromBC                                          ; $4c03: $e7
	jr jr_064_4bc5                                   ; $4c04: $18 $bf

	ld a, h                                          ; $4c06: $7c
	push hl                                          ; $4c07: $e5
	ld h, [hl]                                       ; $4c08: $66
	rst $38                                          ; $4c09: $ff
	cp [hl]                                          ; $4c0a: $be
	xor e                                            ; $4c0b: $ab
	ld e, $97                                        ; $4c0c: $1e $97

jr_064_4c0e:
	inc e                                            ; $4c0e: $1c
	cp a                                             ; $4c0f: $bf
	nop                                              ; $4c10: $00
	ret nz                                           ; $4c11: $c0

	add c                                            ; $4c12: $81
	add b                                            ; $4c13: $80
	rst FarCall                                          ; $4c14: $f7
	add b                                            ; $4c15: $80
	ld h, b                                          ; $4c16: $60
	ret nz                                           ; $4c17: $c0

	ld [hl], b                                       ; $4c18: $70
	ret nz                                           ; $4c19: $c0

	ldh a, [$e0]                                     ; $4c1a: $f0 $e0
	jr c, jr_064_4c0e                                ; $4c1c: $38 $f0

	inc l                                            ; $4c1e: $2c
	ld hl, sp+$27                                    ; $4c1f: $f8 $27
	cp $47                                           ; $4c21: $fe $47
	rst $38                                          ; $4c23: $ff
	ld b, a                                          ; $4c24: $47
	rst $38                                          ; $4c25: $ff
	ld b, l                                          ; $4c26: $45
	rst $38                                          ; $4c27: $ff
	adc c                                            ; $4c28: $89
	rst $38                                          ; $4c29: $ff
	adc e                                            ; $4c2a: $8b
	rst $38                                          ; $4c2b: $ff
	sub d                                            ; $4c2c: $92
	rst $38                                          ; $4c2d: $ff
	inc h                                            ; $4c2e: $24
	rst $38                                          ; $4c2f: $ff
	ld c, b                                          ; $4c30: $48
	ld a, e                                          ; $4c31: $7b
	or $9b                                           ; $4c32: $f6 $9b
	add e                                            ; $4c34: $83
	ld a, [$fe8b]                                    ; $4c35: $fa $8b $fe
	ld [hl], a                                       ; $4c38: $77
	cp $80                                           ; $4c39: $fe $80
	rst GetHLinHL                                          ; $4c3b: $cf
	halt                                             ; $4c3c: $76
	call z, Call_064_6972                            ; $4c3d: $cc $72 $69
	or h                                             ; $4c40: $b4
	add hl, sp                                       ; $4c41: $39
	jp nc, Jump_064_7a81                             ; $4c42: $d2 $81 $7a

	cp c                                             ; $4c45: $b9
	ld b, a                                          ; $4c46: $47
	and c                                            ; $4c47: $a1
	ld b, [hl]                                       ; $4c48: $46
	pop hl                                           ; $4c49: $e1
	nop                                              ; $4c4a: $00
	add b                                            ; $4c4b: $80
	nop                                              ; $4c4c: $00
	and b                                            ; $4c4d: $a0
	nop                                              ; $4c4e: $00
	ld h, c                                          ; $4c4f: $61
	nop                                              ; $4c50: $00
	or b                                             ; $4c51: $b0
	nop                                              ; $4c52: $00
	sbc b                                            ; $4c53: $98
	rst $38                                          ; $4c54: $ff
	call z, $ee7f                                    ; $4c55: $cc $7f $ee
	dec sp                                           ; $4c58: $3b
	sub a                                            ; $4c59: $97
	adc e                                            ; $4c5a: $8b
	ld a, l                                          ; $4c5b: $7d
	rrca                                             ; $4c5c: $0f
	db $fc                                           ; $4c5d: $fc
	nop                                              ; $4c5e: $00
	cpl                                              ; $4c5f: $2f
	cp $01                                           ; $4c60: $fe $01
	rst GetHLinHL                                          ; $4c62: $cf
	jr nc, jr_064_4ce0                               ; $4c63: $30 $7b

	db $fc                                           ; $4c65: $fc
	call z, $ffcf                                    ; $4c66: $cc $cf $ff
	ld a, a                                          ; $4c69: $7f
	ld d, a                                          ; $4c6a: $57
	inc a                                            ; $4c6b: $3c
	cpl                                              ; $4c6c: $2f
	jr c, @+$80                                      ; $4c6d: $38 $7e

	cp $9a                                           ; $4c6f: $fe $9a
	rst AddAOntoHL                                          ; $4c71: $ef
	nop                                              ; $4c72: $00
	inc bc                                           ; $4c73: $03
	nop                                              ; $4c74: $00
	rlca                                             ; $4c75: $07
	ld [hl], e                                       ; $4c76: $73
	cp $91                                           ; $4c77: $fe $91
	rrca                                             ; $4c79: $0f
	ld bc, $071f                                     ; $4c7a: $01 $1f $07
	ld a, a                                          ; $4c7d: $7f
	dec de                                           ; $4c7e: $1b
	rst $38                                          ; $4c7f: $ff
	ld h, e                                          ; $4c80: $63
	cp $87                                           ; $4c81: $fe $87
	cp $07                                           ; $4c83: $fe $07
	ld a, [$5f0f]                                    ; $4c85: $fa $0f $5f
	cp $47                                           ; $4c88: $fe $47
	ld h, b                                          ; $4c8a: $60
	sbc [hl]                                         ; $4c8b: $9e
	rst $38                                          ; $4c8c: $ff
	ld [hl], a                                       ; $4c8d: $77
	cp $99                                           ; $4c8e: $fe $99
	inc a                                            ; $4c90: $3c
	db $eb                                           ; $4c91: $eb
	ld l, [hl]                                       ; $4c92: $6e
	or a                                             ; $4c93: $b7
	cp $9f                                           ; $4c94: $fe $9f
	ld [hl], e                                       ; $4c96: $73
	ld h, b                                          ; $4c97: $60
	ld c, a                                          ; $4c98: $4f
	and b                                            ; $4c99: $a0
	ld [hl], e                                       ; $4c9a: $73
	ldh [c], a                                       ; $4c9b: $e2
	sub a                                            ; $4c9c: $97
	ld a, b                                          ; $4c9d: $78
	rst SubAFromDE                                          ; $4c9e: $df
	sbc $eb                                          ; $4c9f: $de $eb
	ld a, a                                          ; $4ca1: $7f
	ld a, a                                          ; $4ca2: $7f
	jr c, @+$40                                      ; $4ca3: $38 $3e

	ld [hl], e                                       ; $4ca5: $73
	and b                                            ; $4ca6: $a0
	inc sp                                           ; $4ca7: $33
	ret nz                                           ; $4ca8: $c0

	ld a, e                                          ; $4ca9: $7b
	cp [hl]                                          ; $4caa: $be
	sbc l                                            ; $4cab: $9d
	rst SubAFromBC                                          ; $4cac: $e7
	xor $23                                          ; $4cad: $ee $23
	ret nz                                           ; $4caf: $c0

	ld a, a                                          ; $4cb0: $7f
	cp $9c                                           ; $4cb1: $fe $9c
	ld a, h                                          ; $4cb3: $7c
	rst GetHLinHL                                          ; $4cb4: $cf
	rst SubAFromDE                                          ; $4cb5: $df
	dec bc                                           ; $4cb6: $0b
	ret nz                                           ; $4cb7: $c0

	sbc h                                            ; $4cb8: $9c
	jp nz, Jump_064_7eff                             ; $4cb9: $c2 $ff $7e

	dec de                                           ; $4cbc: $1b
	ret nz                                           ; $4cbd: $c0

	sbc h                                            ; $4cbe: $9c
	jp Jump_064_7eff                                 ; $4cbf: $c3 $ff $7e


	ld h, a                                          ; $4cc2: $67
	ret nz                                           ; $4cc3: $c0

	sub [hl]                                         ; $4cc4: $96
	jr nc, jr_064_4ce7                               ; $4cc5: $30 $20

	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	inc a                                            ; $4cc9: $3c
	jr z, jr_064_4cd4                                ; $4cca: $28 $08

	nop                                              ; $4ccc: $00
	jr @-$02                                         ; $4ccd: $18 $fc

	sub d                                            ; $4ccf: $92
	add c                                            ; $4cd0: $81

jr_064_4cd1:
	nop                                              ; $4cd1: $00
	rst FarCall                                          ; $4cd2: $f7
	pop bc                                           ; $4cd3: $c1

jr_064_4cd4:
	rst $38                                          ; $4cd4: $ff
	cp $ff                                           ; $4cd5: $fe $ff
	ret nz                                           ; $4cd7: $c0

	rst FarCall                                          ; $4cd8: $f7
	ret nz                                           ; $4cd9: $c0

	ld h, e                                          ; $4cda: $63
	ret nz                                           ; $4cdb: $c0

	ld h, c                                          ; $4cdc: $61
	db $dd                                           ; $4cdd: $dd
	ret nz                                           ; $4cde: $c0

	sbc [hl]                                         ; $4cdf: $9e

jr_064_4ce0:
	ld b, b                                          ; $4ce0: $40
	ld [hl], a                                       ; $4ce1: $77
	ldh [$9a], a                                     ; $4ce2: $e0 $9a
	jr c, jr_064_4d16                                ; $4ce4: $38 $30

	inc a                                            ; $4ce6: $3c

jr_064_4ce7:
	jr c, jr_064_4ce9                                ; $4ce7: $38 $00

jr_064_4ce9:
	ld [hl], e                                       ; $4ce9: $73
	sbc $1f                                          ; $4cea: $de $1f
	ldh [$df], a                                     ; $4cec: $e0 $df
	jr @+$79                                         ; $4cee: $18 $77

	sbc $1f                                          ; $4cf0: $de $1f
	ldh [$9e], a                                     ; $4cf2: $e0 $9e
	inc a                                            ; $4cf4: $3c
	sbc $18                                          ; $4cf5: $de $18
	rst $38                                          ; $4cf7: $ff
	sbc [hl]                                         ; $4cf8: $9e
	sbc c                                            ; $4cf9: $99
	ld b, e                                          ; $4cfa: $43
	ldh [$0b], a                                     ; $4cfb: $e0 $0b
	ld bc, $1180                                     ; $4cfd: $01 $80 $11
	rst $38                                          ; $4d00: $ff
	add hl, sp                                       ; $4d01: $39
	xor $3b                                          ; $4d02: $ee $3b
	xor $2f                                          ; $4d04: $ee $2f
	or $b7                                           ; $4d06: $f6 $b7
	ld a, [hl]                                       ; $4d08: $7e
	rst $38                                          ; $4d09: $ff
	ld c, [hl]                                       ; $4d0a: $4e
	nop                                              ; $4d0b: $00
	adc a                                            ; $4d0c: $8f
	ld a, a                                          ; $4d0d: $7f
	ld [bc], a                                       ; $4d0e: $02
	rst SubAFromBC                                          ; $4d0f: $e7
	jr jr_064_4cd1                                   ; $4d10: $18 $bf

	ld a, h                                          ; $4d12: $7c
	push hl                                          ; $4d13: $e5
	ld h, [hl]                                       ; $4d14: $66
	rst $38                                          ; $4d15: $ff

jr_064_4d16:
	cp [hl]                                          ; $4d16: $be
	xor e                                            ; $4d17: $ab
	ld e, $97                                        ; $4d18: $1e $97

jr_064_4d1a:
	inc e                                            ; $4d1a: $1c
	cp a                                             ; $4d1b: $bf
	nop                                              ; $4d1c: $00
	ret nz                                           ; $4d1d: $c0

	add c                                            ; $4d1e: $81
	add b                                            ; $4d1f: $80
	rst FarCall                                          ; $4d20: $f7
	add b                                            ; $4d21: $80
	ld h, b                                          ; $4d22: $60
	ret nz                                           ; $4d23: $c0

	ld [hl], b                                       ; $4d24: $70
	ret nz                                           ; $4d25: $c0

	ldh a, [$e0]                                     ; $4d26: $f0 $e0
	jr c, jr_064_4d1a                                ; $4d28: $38 $f0

	inc l                                            ; $4d2a: $2c
	ld hl, sp+$27                                    ; $4d2b: $f8 $27
	cp $47                                           ; $4d2d: $fe $47
	rst $38                                          ; $4d2f: $ff
	ld b, a                                          ; $4d30: $47
	rst $38                                          ; $4d31: $ff
	ld b, l                                          ; $4d32: $45
	rst $38                                          ; $4d33: $ff
	adc c                                            ; $4d34: $89
	rst $38                                          ; $4d35: $ff
	adc e                                            ; $4d36: $8b
	rst $38                                          ; $4d37: $ff
	sub d                                            ; $4d38: $92
	rst $38                                          ; $4d39: $ff
	inc h                                            ; $4d3a: $24
	rst $38                                          ; $4d3b: $ff
	ld c, b                                          ; $4d3c: $48
	ld a, e                                          ; $4d3d: $7b
	or $88                                           ; $4d3e: $f6 $88
	add e                                            ; $4d40: $83
	ld a, [$fe8b]                                    ; $4d41: $fa $8b $fe
	adc e                                            ; $4d44: $8b
	cp $8f                                           ; $4d45: $fe $8f
	or $cf                                           ; $4d47: $f6 $cf
	ld [hl], e                                       ; $4d49: $73
	call z, Call_064_6973                            ; $4d4a: $cc $73 $69
	or l                                             ; $4d4d: $b5
	add hl, sp                                       ; $4d4e: $39
	jp nc, Jump_064_7a81                             ; $4d4f: $d2 $81 $7a

	cp c                                             ; $4d52: $b9
	ld b, a                                          ; $4d53: $47
	and c                                            ; $4d54: $a1
	ld b, [hl]                                       ; $4d55: $46
	ldh [$bc], a                                     ; $4d56: $e0 $bc
	add b                                            ; $4d58: $80
	and b                                            ; $4d59: $a0
	ld h, c                                          ; $4d5a: $61
	or b                                             ; $4d5b: $b0
	sbc b                                            ; $4d5c: $98
	add l                                            ; $4d5d: $85
	rst $38                                          ; $4d5e: $ff
	call z, $ee7f                                    ; $4d5f: $cc $7f $ee
	ld a, e                                          ; $4d62: $7b
	or a                                             ; $4d63: $b7
	db $fd                                           ; $4d64: $fd
	ld a, a                                          ; $4d65: $7f
	call z, $3f00                                    ; $4d66: $cc $00 $3f
	cp $01                                           ; $4d69: $fe $01
	rst GetHLinHL                                          ; $4d6b: $cf
	jr nc, jr_064_4de9                               ; $4d6c: $30 $7b

	db $fc                                           ; $4d6e: $fc
	call z, $ffcf                                    ; $4d6f: $cc $cf $ff
	ld a, a                                          ; $4d72: $7f
	rst SubAFromHL                                          ; $4d73: $d7
	inc a                                            ; $4d74: $3c
	ld l, a                                          ; $4d75: $6f
	jr c, jr_064_4db6                                ; $4d76: $38 $3e

	cp d                                             ; $4d78: $ba
	nop                                              ; $4d79: $00
	rst AddAOntoHL                                          ; $4d7a: $ef
	inc bc                                           ; $4d7b: $03
	rlca                                             ; $4d7c: $07
	rlca                                             ; $4d7d: $07
	rlca                                             ; $4d7e: $07
	rrca                                             ; $4d7f: $0f
	sub d                                            ; $4d80: $92
	ld bc, $071f                                     ; $4d81: $01 $1f $07
	ld a, a                                          ; $4d84: $7f
	dec de                                           ; $4d85: $1b
	rst $38                                          ; $4d86: $ff
	ld h, e                                          ; $4d87: $63
	cp $87                                           ; $4d88: $fe $87
	cp $07                                           ; $4d8a: $fe $07
	ld a, [$5f0f]                                    ; $4d8c: $fa $0f $5f
	cp $47                                           ; $4d8f: $fe $47
	ld h, b                                          ; $4d91: $60
	sbc [hl]                                         ; $4d92: $9e
	rst $38                                          ; $4d93: $ff

jr_064_4d94:
	cp a                                             ; $4d94: $bf
	rst $38                                          ; $4d95: $ff
	rst $38                                          ; $4d96: $ff
	sbc c                                            ; $4d97: $99
	inc a                                            ; $4d98: $3c
	db $eb                                           ; $4d99: $eb
	xor $97                                          ; $4d9a: $ee $97
	ld a, $9f                                        ; $4d9c: $3e $9f
	ld [hl], e                                       ; $4d9e: $73
	ld h, b                                          ; $4d9f: $60
	ld c, a                                          ; $4da0: $4f
	and b                                            ; $4da1: $a0
	ld [hl], e                                       ; $4da2: $73
	ldh [c], a                                       ; $4da3: $e2
	sbc c                                            ; $4da4: $99
	ld a, h                                          ; $4da5: $7c
	rst SubAFromHL                                          ; $4da6: $d7
	rst SubAFromDE                                          ; $4da7: $df
	xor a                                            ; $4da8: $af
	ld a, h                                          ; $4da9: $7c
	ld a, a                                          ; $4daa: $7f
	ld l, e                                          ; $4dab: $6b
	and b                                            ; $4dac: $a0
	inc sp                                           ; $4dad: $33
	ret nz                                           ; $4dae: $c0

	ld a, e                                          ; $4daf: $7b
	cp [hl]                                          ; $4db0: $be
	sbc l                                            ; $4db1: $9d
	rst SubAFromBC                                          ; $4db2: $e7
	xor $23                                          ; $4db3: $ee $23
	ret nz                                           ; $4db5: $c0

jr_064_4db6:
	ld a, e                                          ; $4db6: $7b
	cp [hl]                                          ; $4db7: $be
	sbc l                                            ; $4db8: $9d
	rst GetHLinHL                                          ; $4db9: $cf
	rst SubAFromDE                                          ; $4dba: $df
	dec bc                                           ; $4dbb: $0b
	ret nz                                           ; $4dbc: $c0

	ld a, a                                          ; $4dbd: $7f
	cp $9c                                           ; $4dbe: $fe $9c
	sbc $bf                                          ; $4dc0: $de $bf
	inc a                                            ; $4dc2: $3c
	inc hl                                           ; $4dc3: $23
	ret nz                                           ; $4dc4: $c0

	ld a, a                                          ; $4dc5: $7f
	cp $7f                                           ; $4dc6: $fe $7f
	ret nz                                           ; $4dc8: $c0

	sbc [hl]                                         ; $4dc9: $9e
	inc a                                            ; $4dca: $3c
	ld l, a                                          ; $4dcb: $6f
	ret nz                                           ; $4dcc: $c0

	sbc b                                            ; $4dcd: $98
	jr nc, jr_064_4df0                               ; $4dce: $30 $20

	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	inc a                                            ; $4dd2: $3c
	jr z, jr_064_4de1                                ; $4dd3: $28 $0c

	cp h                                             ; $4dd5: $bc
	jr jr_064_4dd8                                   ; $4dd6: $18 $00

jr_064_4dd8:
	nop                                              ; $4dd8: $00
	add c                                            ; $4dd9: $81
	rst FarCall                                          ; $4dda: $f7
	sub l                                            ; $4ddb: $95

jr_064_4ddc:
	pop bc                                           ; $4ddc: $c1
	rst $38                                          ; $4ddd: $ff
	cp $ff                                           ; $4dde: $fe $ff
	ret nz                                           ; $4de0: $c0

jr_064_4de1:
	rst FarCall                                          ; $4de1: $f7
	ret nz                                           ; $4de2: $c0

	ld h, e                                          ; $4de3: $63
	ret nz                                           ; $4de4: $c0

	ld h, c                                          ; $4de5: $61
	db $dd                                           ; $4de6: $dd
	ret nz                                           ; $4de7: $c0

	sbc [hl]                                         ; $4de8: $9e

jr_064_4de9:
	ld b, b                                          ; $4de9: $40
	ld [hl], e                                       ; $4dea: $73
	ldh [$9d], a                                     ; $4deb: $e0 $9d
	jr c, jr_064_4e2b                                ; $4ded: $38 $3c

	ld a, e                                          ; $4def: $7b

jr_064_4df0:
	pop hl                                           ; $4df0: $e1
	ld [hl], a                                       ; $4df1: $77
	sbc $2f                                          ; $4df2: $de $2f
	ldh [$df], a                                     ; $4df4: $e0 $df
	jr c, jr_064_4d94                                ; $4df6: $38 $9c

	inc a                                            ; $4df8: $3c
	inc e                                            ; $4df9: $1c
	inc e                                            ; $4dfa: $1c
	ld [hl], e                                       ; $4dfb: $73
	sbc $23                                          ; $4dfc: $de $23
	ldh [rPCM34], a                                  ; $4dfe: $e0 $77
	rst SubAFromDE                                          ; $4e00: $df
	ld a, e                                          ; $4e01: $7b
	sbc $9e                                          ; $4e02: $de $9e
	sbc c                                            ; $4e04: $99
	ld b, e                                          ; $4e05: $43
	ldh [$0b], a                                     ; $4e06: $e0 $0b
	ld bc, $9180                                     ; $4e08: $01 $80 $91
	rst $38                                          ; $4e0b: $ff
	cp c                                             ; $4e0c: $b9
	xor $b9                                          ; $4e0d: $ee $b9
	xor $b5                                          ; $4e0f: $ee $b5
	xor $65                                          ; $4e11: $ee $65
	sbc $cf                                          ; $4e13: $de $cf
	ld [hl], d                                       ; $4e15: $72
	nop                                              ; $4e16: $00
	adc a                                            ; $4e17: $8f
	ld a, a                                          ; $4e18: $7f
	nop                                              ; $4e19: $00
	rst SubAFromBC                                          ; $4e1a: $e7
	jr jr_064_4ddc                                   ; $4e1b: $18 $bf

	ld a, h                                          ; $4e1d: $7c
	push hl                                          ; $4e1e: $e5
	ld h, [hl]                                       ; $4e1f: $66
	rst $38                                          ; $4e20: $ff
	cp [hl]                                          ; $4e21: $be
	adc e                                            ; $4e22: $8b
	ld e, $97                                        ; $4e23: $1e $97

jr_064_4e25:
	inc e                                            ; $4e25: $1c
	cp a                                             ; $4e26: $bf
	nop                                              ; $4e27: $00
	ret nz                                           ; $4e28: $c0

	add c                                            ; $4e29: $81
	add b                                            ; $4e2a: $80

jr_064_4e2b:
	rst FarCall                                          ; $4e2b: $f7
	add b                                            ; $4e2c: $80
	ld h, b                                          ; $4e2d: $60
	ret nz                                           ; $4e2e: $c0

	ld [hl], b                                       ; $4e2f: $70
	ret nz                                           ; $4e30: $c0

	ldh a, [$e0]                                     ; $4e31: $f0 $e0
	jr c, jr_064_4e25                                ; $4e33: $38 $f0

	inc l                                            ; $4e35: $2c
	ld hl, sp+$27                                    ; $4e36: $f8 $27
	cp $47                                           ; $4e38: $fe $47
	rst $38                                          ; $4e3a: $ff
	ld b, a                                          ; $4e3b: $47
	rst $38                                          ; $4e3c: $ff
	ld b, l                                          ; $4e3d: $45
	rst $38                                          ; $4e3e: $ff
	adc c                                            ; $4e3f: $89
	rst $38                                          ; $4e40: $ff
	adc e                                            ; $4e41: $8b
	rst $38                                          ; $4e42: $ff
	sub d                                            ; $4e43: $92
	rst $38                                          ; $4e44: $ff
	inc h                                            ; $4e45: $24
	rst $38                                          ; $4e46: $ff
	ld c, b                                          ; $4e47: $48
	ld a, e                                          ; $4e48: $7b
	or $88                                           ; $4e49: $f6 $88
	add e                                            ; $4e4b: $83
	ld a, [$fe8b]                                    ; $4e4c: $fa $8b $fe
	adc d                                            ; $4e4f: $8a
	rst $38                                          ; $4e50: $ff
	adc d                                            ; $4e51: $8a
	rst $38                                          ; $4e52: $ff
	rst GetHLinHL                                          ; $4e53: $cf
	halt                                             ; $4e54: $76
	call z, Call_064_6972                            ; $4e55: $cc $72 $69
	or h                                             ; $4e58: $b4
	add hl, sp                                       ; $4e59: $39
	jp nc, Jump_064_7a81                             ; $4e5a: $d2 $81 $7a

	cp c                                             ; $4e5d: $b9
	ld b, a                                          ; $4e5e: $47
	and c                                            ; $4e5f: $a1
	ld b, [hl]                                       ; $4e60: $46
	ldh [$bc], a                                     ; $4e61: $e0 $bc
	add b                                            ; $4e63: $80
	and b                                            ; $4e64: $a0
	ld h, c                                          ; $4e65: $61
	or b                                             ; $4e66: $b0
	sbc b                                            ; $4e67: $98
	add l                                            ; $4e68: $85
	rst $38                                          ; $4e69: $ff
	call z, $ee7f                                    ; $4e6a: $cc $7f $ee
	dec sp                                           ; $4e6d: $3b
	scf                                              ; $4e6e: $37
	db $dd                                           ; $4e6f: $dd
	rrca                                             ; $4e70: $0f
	db $fc                                           ; $4e71: $fc
	nop                                              ; $4e72: $00
	cpl                                              ; $4e73: $2f
	cp $01                                           ; $4e74: $fe $01
	rst GetHLinHL                                          ; $4e76: $cf
	jr nc, jr_064_4ef4                               ; $4e77: $30 $7b

	db $fc                                           ; $4e79: $fc
	call z, $ffcf                                    ; $4e7a: $cc $cf $ff
	ld a, a                                          ; $4e7d: $7f
	rst SubAFromHL                                          ; $4e7e: $d7
	inc a                                            ; $4e7f: $3c
	ld l, a                                          ; $4e80: $6f
	jr c, jr_064_4ec1                                ; $4e81: $38 $3e

	cp d                                             ; $4e83: $ba
	nop                                              ; $4e84: $00
	rst AddAOntoHL                                          ; $4e85: $ef
	inc bc                                           ; $4e86: $03
	rlca                                             ; $4e87: $07
	rlca                                             ; $4e88: $07
	rlca                                             ; $4e89: $07
	rrca                                             ; $4e8a: $0f
	sub d                                            ; $4e8b: $92
	ld bc, $071f                                     ; $4e8c: $01 $1f $07
	ld a, a                                          ; $4e8f: $7f
	dec de                                           ; $4e90: $1b
	rst $38                                          ; $4e91: $ff
	ld h, e                                          ; $4e92: $63
	cp $87                                           ; $4e93: $fe $87
	cp $07                                           ; $4e95: $fe $07
	ld a, [$5f0f]                                    ; $4e97: $fa $0f $5f
	cp $47                                           ; $4e9a: $fe $47
	ld h, b                                          ; $4e9c: $60
	sbc [hl]                                         ; $4e9d: $9e
	rst $38                                          ; $4e9e: $ff
	cp a                                             ; $4e9f: $bf
	rst $38                                          ; $4ea0: $ff
	rst $38                                          ; $4ea1: $ff
	sbc c                                            ; $4ea2: $99
	inc a                                            ; $4ea3: $3c
	db $eb                                           ; $4ea4: $eb
	ld l, [hl]                                       ; $4ea5: $6e
	and a                                            ; $4ea6: $a7
	cp $9f                                           ; $4ea7: $fe $9f
	ld [hl], e                                       ; $4ea9: $73
	ld h, b                                          ; $4eaa: $60
	ld c, a                                          ; $4eab: $4f
	and b                                            ; $4eac: $a0
	ld [hl], e                                       ; $4ead: $73
	ldh [c], a                                       ; $4eae: $e2
	sbc c                                            ; $4eaf: $99
	ld a, b                                          ; $4eb0: $78
	rst SubAFromHL                                          ; $4eb1: $d7
	sbc $cf                                          ; $4eb2: $de $cf
	ld a, a                                          ; $4eb4: $7f
	ld a, a                                          ; $4eb5: $7f
	ld l, e                                          ; $4eb6: $6b
	and b                                            ; $4eb7: $a0
	inc sp                                           ; $4eb8: $33
	ret nz                                           ; $4eb9: $c0

	ld a, a                                          ; $4eba: $7f
	cp $9c                                           ; $4ebb: $fe $9c
	ld a, h                                          ; $4ebd: $7c
	and a                                            ; $4ebe: $a7
	xor $23                                          ; $4ebf: $ee $23

jr_064_4ec1:
	ret nz                                           ; $4ec1: $c0

	ld a, a                                          ; $4ec2: $7f
	cp $9c                                           ; $4ec3: $fe $9c
	cp $4f                                           ; $4ec5: $fe $4f
	rst SubAFromDE                                          ; $4ec7: $df
	dec bc                                           ; $4ec8: $0b
	ret nz                                           ; $4ec9: $c0

	ld a, a                                          ; $4eca: $7f
	cp $9c                                           ; $4ecb: $fe $9c
	or $bf                                           ; $4ecd: $f6 $bf
	inc a                                            ; $4ecf: $3c
	inc hl                                           ; $4ed0: $23
	ret nz                                           ; $4ed1: $c0

	sbc d                                            ; $4ed2: $9a
	nop                                              ; $4ed3: $00
	ld a, a                                          ; $4ed4: $7f
	rst FarCall                                          ; $4ed5: $f7
	ld a, a                                          ; $4ed6: $7f
	inc a                                            ; $4ed7: $3c
	ld l, a                                          ; $4ed8: $6f
	ret nz                                           ; $4ed9: $c0

	sbc b                                            ; $4eda: $98
	jr nc, jr_064_4efd                               ; $4edb: $30 $20

	nop                                              ; $4edd: $00
	nop                                              ; $4ede: $00
	jr c, jr_064_4f09                                ; $4edf: $38 $28

	ld [$18bc], sp                                   ; $4ee1: $08 $bc $18
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	add c                                            ; $4ee6: $81
	rst FarCall                                          ; $4ee7: $f7
	sub l                                            ; $4ee8: $95
	pop bc                                           ; $4ee9: $c1
	rst $38                                          ; $4eea: $ff
	cp $ff                                           ; $4eeb: $fe $ff
	ret nz                                           ; $4eed: $c0

	rst FarCall                                          ; $4eee: $f7
	ret nz                                           ; $4eef: $c0

	ld h, e                                          ; $4ef0: $63
	ret nz                                           ; $4ef1: $c0

	ld h, c                                          ; $4ef2: $61
	db $dd                                           ; $4ef3: $dd

jr_064_4ef4:
	ret nz                                           ; $4ef4: $c0

	sbc [hl]                                         ; $4ef5: $9e
	ld b, b                                          ; $4ef6: $40
	ld [hl], e                                       ; $4ef7: $73
	ldh [$9d], a                                     ; $4ef8: $e0 $9d
	jr nc, jr_064_4f34                               ; $4efa: $30 $38

	ld a, e                                          ; $4efc: $7b

jr_064_4efd:
	pop hl                                           ; $4efd: $e1
	ld [hl], a                                       ; $4efe: $77
	sbc $23                                          ; $4eff: $de $23
	ldh [$7f], a                                     ; $4f01: $e0 $7f
	rst SubAFromDE                                          ; $4f03: $df
	sbc [hl]                                         ; $4f04: $9e
	db $10                                           ; $4f05: $10
	ld [hl], a                                       ; $4f06: $77
	sbc $1f                                          ; $4f07: $de $1f

jr_064_4f09:
	ldh [$7f], a                                     ; $4f09: $e0 $7f
	rst SubAFromDE                                          ; $4f0b: $df
	ld [hl], a                                       ; $4f0c: $77
	sbc $9e                                          ; $4f0d: $de $9e
	sbc c                                            ; $4f0f: $99
	ld b, e                                          ; $4f10: $43
	ldh [$03], a                                     ; $4f11: $e0 $03
	add e                                            ; $4f13: $83
	pop af                                           ; $4f14: $f1
	sbc $01                                          ; $4f15: $de $01
	sbc [hl]                                         ; $4f17: $9e
	inc bc                                           ; $4f18: $03
	db $dd                                           ; $4f19: $dd
	ld [bc], a                                       ; $4f1a: $02
	ld [hl], a                                       ; $4f1b: $77
	ld hl, sp-$23                                    ; $4f1c: $f8 $dd
	inc bc                                           ; $4f1e: $03
	call c, $9e02                                    ; $4f1f: $dc $02 $9e
	inc bc                                           ; $4f22: $03
	ld l, e                                          ; $4f23: $6b
	di                                               ; $4f24: $f3
	ld a, e                                          ; $4f25: $7b
	ld hl, sp-$10                                    ; $4f26: $f8 $f0
	adc a                                            ; $4f28: $8f
	inc bc                                           ; $4f29: $03
	rlca                                             ; $4f2a: $07
	rrca                                             ; $4f2b: $0f
	rra                                              ; $4f2c: $1f
	rra                                              ; $4f2d: $1f
	ccf                                              ; $4f2e: $3f
	ccf                                              ; $4f2f: $3f
	nop                                              ; $4f30: $00
	inc bc                                           ; $4f31: $03
	ld b, $0c                                        ; $4f32: $06 $0c

jr_064_4f34:
	jr @+$12                                         ; $4f34: $18 $10

	jr nc, jr_064_4f58                               ; $4f36: $30 $20

	ccf                                              ; $4f38: $3f
	jp c, $9d7f                                      ; $4f39: $da $7f $9d

	jr nz, jr_064_4f9e                               ; $4f3c: $20 $60

	db $db                                           ; $4f3e: $db
	ld b, c                                          ; $4f3f: $41
	db $ed                                           ; $4f40: $ed
	sbc e                                            ; $4f41: $9b
	rlca                                             ; $4f42: $07
	inc c                                            ; $4f43: $0c
	inc bc                                           ; $4f44: $03
	ld b, $73                                        ; $4f45: $06 $73
	ld hl, sp-$80                                    ; $4f47: $f8 $80
	rrca                                             ; $4f49: $0f
	inc bc                                           ; $4f4a: $03
	rlca                                             ; $4f4b: $07
	dec c                                            ; $4f4c: $0d
	jr jr_064_4f80                                   ; $4f4d: $18 $31

	ld h, e                                          ; $4f4f: $63
	ld b, a                                          ; $4f50: $47
	adc $9d                                          ; $4f51: $ce $9d
	cp l                                             ; $4f53: $bd
	ld c, $1f                                        ; $4f54: $0e $1f
	ld a, $7c                                        ; $4f56: $3e $7c

jr_064_4f58:
	ld a, b                                          ; $4f58: $78
	pop af                                           ; $4f59: $f1
	ldh [c], a                                       ; $4f5a: $e2
	jp nz, Jump_064_55ba                             ; $4f5b: $c2 $ba $55

	jr nc, @+$15                                     ; $4f5e: $30 $13

	ld l, d                                          ; $4f60: $6a
	cp e                                             ; $4f61: $bb
	db $dd                                           ; $4f62: $dd
	ld d, [hl]                                       ; $4f63: $56
	call nz, $8888                                   ; $4f64: $c4 $88 $88
	or c                                             ; $4f67: $b1
	sub b                                            ; $4f68: $90
	inc sp                                           ; $4f69: $33
	ld h, [hl]                                       ; $4f6a: $66
	ld h, [hl]                                       ; $4f6b: $66
	db $ed                                           ; $4f6c: $ed
	ld l, d                                          ; $4f6d: $6a
	xor h                                            ; $4f6e: $ac
	push de                                          ; $4f6f: $d5
	pop de                                           ; $4f70: $d1
	pop de                                           ; $4f71: $d1
	jp nc, $93d3                                     ; $4f72: $d2 $d3 $93

	db $dd                                           ; $4f75: $dd
	db $db                                           ; $4f76: $db
	cp e                                             ; $4f77: $bb
	db $dd                                           ; $4f78: $dd
	cp a                                             ; $4f79: $bf
	sub [hl]                                         ; $4f7a: $96
	rst $38                                          ; $4f7b: $ff
	sub [hl]                                         ; $4f7c: $96
	sbc [hl]                                         ; $4f7d: $9e
	cp h                                             ; $4f7e: $bc
	xor h                                            ; $4f7f: $ac

jr_064_4f80:
	or h                                             ; $4f80: $b4
	cp h                                             ; $4f81: $bc
	cp d                                             ; $4f82: $ba
	ld a, [$ffdd]                                    ; $4f83: $fa $dd $ff
	adc d                                            ; $4f86: $8a
	rst AddAOntoHL                                          ; $4f87: $ef
	rst SubAFromBC                                          ; $4f88: $e7
	push hl                                          ; $4f89: $e5
	push hl                                          ; $4f8a: $e5
	ld l, e                                          ; $4f8b: $6b
	ld l, e                                          ; $4f8c: $6b
	ld l, $3c                                        ; $4f8d: $2e $3c
	ld d, $1e                                        ; $4f8f: $16 $1e
	ld a, [bc]                                       ; $4f91: $0a
	dec bc                                           ; $4f92: $0b
	ld [hl], h                                       ; $4f93: $74
	ld [hl], h                                       ; $4f94: $74
	dec [hl]                                         ; $4f95: $35
	scf                                              ; $4f96: $37
	dec de                                           ; $4f97: $1b
	dec de                                           ; $4f98: $1b
	rrca                                             ; $4f99: $0f
	dec c                                            ; $4f9a: $0d
	rrca                                             ; $4f9b: $0f
	sbc $05                                          ; $4f9c: $de $05

jr_064_4f9e:
	adc e                                            ; $4f9e: $8b
	ld b, $02                                        ; $4f9f: $06 $02
	ld [bc], a                                       ; $4fa1: $02
	rlca                                             ; $4fa2: $07
	dec c                                            ; $4fa3: $0d
	rlca                                             ; $4fa4: $07
	ld b, $06                                        ; $4fa5: $06 $06
	rlca                                             ; $4fa7: $07
	inc bc                                           ; $4fa8: $03
	inc bc                                           ; $4fa9: $03
	rlca                                             ; $4faa: $07
	rst $38                                          ; $4fab: $ff
	add c                                            ; $4fac: $81
	nop                                              ; $4fad: $00
	ld hl, sp+$3e                                    ; $4fae: $f8 $3e
	rlca                                             ; $4fb0: $07
	ld bc, $7b0f                                     ; $4fb1: $01 $0f $7b
	ld hl, sp-$63                                    ; $4fb4: $f8 $9d
	jr c, jr_064_4fbe                                ; $4fb6: $38 $06

	ld a, e                                          ; $4fb8: $7b
	ld b, d                                          ; $4fb9: $42
	sub e                                            ; $4fba: $93
	rra                                              ; $4fbb: $1f
	sbc a                                            ; $4fbc: $9f
	sbc a                                            ; $4fbd: $9f

jr_064_4fbe:
	adc a                                            ; $4fbe: $8f
	add e                                            ; $4fbf: $83
	add c                                            ; $4fc0: $81
	add b                                            ; $4fc1: $80
	add b                                            ; $4fc2: $80
	rrca                                             ; $4fc3: $0f
	add hl, bc                                       ; $4fc4: $09
	inc c                                            ; $4fc5: $0c
	inc bc                                           ; $4fc6: $03
	ccf                                              ; $4fc7: $3f
	inc sp                                           ; $4fc8: $33
	ld a, e                                          ; $4fc9: $7b
	nop                                              ; $4fca: $00
	add b                                            ; $4fcb: $80
	inc bc                                           ; $4fcc: $03
	ld [hl], d                                       ; $4fcd: $72
	sbc a                                            ; $4fce: $9f
	push hl                                          ; $4fcf: $e5
	ld sp, hl                                        ; $4fd0: $f9
	sbc b                                            ; $4fd1: $98
	ldh [rSB], a                                     ; $4fd2: $e0 $01
	inc bc                                           ; $4fd4: $03
	ld [hl], e                                       ; $4fd5: $73
	cp $fe                                           ; $4fd6: $fe $fe
	ld b, $e7                                        ; $4fd8: $06 $e7
	rra                                              ; $4fda: $1f
	sbc c                                            ; $4fdb: $99
	ld [hl], a                                       ; $4fdc: $77
	ld [$4d66], a                                    ; $4fdd: $ea $66 $4d
	call z, $9898                                    ; $4fe0: $cc $98 $98
	ld h, [hl]                                       ; $4fe3: $66
	adc b                                            ; $4fe4: $88
	ld de, $a291                                     ; $4fe5: $11 $91 $a2
	ld [hl+], a                                      ; $4fe8: $22
	ld b, d                                          ; $4fe9: $42
	ld b, d                                          ; $4fea: $42
	adc a                                            ; $4feb: $8f
	ld c, b                                          ; $4fec: $48
	nop                                              ; $4fed: $00
	ld bc, $16b7                                     ; $4fee: $01 $b7 $16
	ld [$8672], a                                    ; $4ff1: $ea $72 $86
	add d                                            ; $4ff4: $82
	add d                                            ; $4ff5: $82
	ld [bc], a                                       ; $4ff6: $02
	ld [bc], a                                       ; $4ff7: $02
	ld h, e                                          ; $4ff8: $63
	ld b, a                                          ; $4ff9: $47
	rst GetHLinHL                                          ; $4ffa: $cf
	rst $38                                          ; $4ffb: $ff
	ldh [$c1], a                                     ; $4ffc: $e0 $c1
	sbc b                                            ; $4ffe: $98
	ld hl, $8890                                     ; $4fff: $21 $90 $88
	ret                                              ; $5002: $c9


	call nz, $fbe2                                   ; $5003: $c4 $e2 $fb
	call c, $dfff                                    ; $5006: $dc $ff $df
	ld a, a                                          ; $5009: $7f
	sbc c                                            ; $500a: $99
	cp a                                             ; $500b: $bf
	ld e, a                                          ; $500c: $5f
	rst $38                                          ; $500d: $ff
	or $f8                                           ; $500e: $f6 $f8
	db $fd                                           ; $5010: $fd
	db $dd                                           ; $5011: $dd
	rst $38                                          ; $5012: $ff
	sub a                                            ; $5013: $97
	daa                                              ; $5014: $27
	ldh [rSVBK], a                                   ; $5015: $e0 $70
	add hl, de                                       ; $5017: $19
	adc l                                            ; $5018: $8d
	ld b, [hl]                                       ; $5019: $46
	ld h, $16                                        ; $501a: $26 $16
	ld l, [hl]                                       ; $501c: $6e
	sbc h                                            ; $501d: $9c
	sbc l                                            ; $501e: $9d
	ld h, [hl]                                       ; $501f: $66
	call z, $f86f                                    ; $5020: $cc $6f $f8
	add b                                            ; $5023: $80
	ld h, a                                          ; $5024: $67
	rst GetHLinHL                                          ; $5025: $cf
	ld [hl], h                                       ; $5026: $74
	ld l, c                                          ; $5027: $69
	ret nc                                           ; $5028: $d0

	or c                                             ; $5029: $b1
	scf                                              ; $502a: $37
	ld l, a                                          ; $502b: $6f
	ld a, a                                          ; $502c: $7f
	ld a, a                                          ; $502d: $7f
	ei                                               ; $502e: $fb
	di                                               ; $502f: $f3
	rst SubAFromBC                                          ; $5030: $e7

jr_064_5031:
	adc $c8                                          ; $5031: $ce $c8
	sub b                                            ; $5033: $90
	add b                                            ; $5034: $80
	add b                                            ; $5035: $80
	ei                                               ; $5036: $fb
	ld a, l                                          ; $5037: $7d
	xor $f7                                          ; $5038: $ee $f7
	rst SubAFromHL                                          ; $503a: $d7
	ret                                              ; $503b: $c9


	pop de                                           ; $503c: $d1
	jp nc, $8204                                     ; $503d: $d2 $04 $82

	ld de, $2808                                     ; $5040: $11 $08 $28
	sub h                                            ; $5043: $94
	inc h                                            ; $5044: $24
	inc b                                            ; $5045: $04
	inc b                                            ; $5046: $04
	add b                                            ; $5047: $80
	ld d, $96                                        ; $5048: $16 $96
	and a                                            ; $504a: $a7
	jp nc, $3292                                     ; $504b: $d2 $92 $32

	inc sp                                           ; $504e: $33
	ld a, d                                          ; $504f: $7a
	db $fc                                           ; $5050: $fc
	sbc e                                            ; $5051: $9b
	ld [de], a                                       ; $5052: $12
	scf                                              ; $5053: $37
	ld a, a                                          ; $5054: $7f
	rst $38                                          ; $5055: $ff
	inc bc                                           ; $5056: $03
	ld h, b                                          ; $5057: $60
	pop hl                                           ; $5058: $e1
	sub a                                            ; $5059: $97
	adc d                                            ; $505a: $8a
	jp z, Jump_064_6549                              ; $505b: $ca $49 $65

	and l                                            ; $505e: $a5
	ld d, a                                          ; $505f: $57
	ld a, e                                          ; $5060: $7b
	cp [hl]                                          ; $5061: $be
	jp c, $8eff                                      ; $5062: $da $ff $8e

	cp $fa                                           ; $5065: $fe $fa
	rst SubAFromBC                                          ; $5067: $e7
	adc c                                            ; $5068: $89
	rla                                              ; $5069: $17
	adc l                                            ; $506a: $8d
	db $dd                                           ; $506b: $dd
	db $fc                                           ; $506c: $fc
	db $fc                                           ; $506d: $fc
	ld a, [$8967]                                    ; $506e: $fa $67 $89
	rla                                              ; $5071: $17
	adc a                                            ; $5072: $8f
	rst SubAFromHL                                          ; $5073: $d7
	ld h, a                                          ; $5074: $67
	rlca                                             ; $5075: $07
	db $fd                                           ; $5076: $fd
	sbc e                                            ; $5077: $9b
	ld a, b                                          ; $5078: $78
	db $e3                                           ; $5079: $e3
	ld e, [hl]                                       ; $507a: $5e
	db $fc                                           ; $507b: $fc
	ld l, a                                          ; $507c: $6f
	ld hl, sp-$80                                    ; $507d: $f8 $80
	rst SubAFromDE                                          ; $507f: $df
	di                                               ; $5080: $f3
	ldh [$c3], a                                     ; $5081: $e0 $c3
	rrca                                             ; $5083: $0f
	dec e                                            ; $5084: $1d
	ld a, $7f                                        ; $5085: $3e $7f
	ret nz                                           ; $5087: $c0

	rst $38                                          ; $5088: $ff
	rst GetHLinHL                                          ; $5089: $cf
	dec e                                            ; $508a: $1d
	ld [hl], b                                       ; $508b: $70
	ldh [$c1], a                                     ; $508c: $e0 $c1
	add b                                            ; $508e: $80
	ccf                                              ; $508f: $3f
	nop                                              ; $5090: $00
	rst $38                                          ; $5091: $ff
	rst $38                                          ; $5092: $ff
	rst SubAFromDE                                          ; $5093: $df
	ld l, e                                          ; $5094: $6b
	ld [hl], l                                       ; $5095: $75
	sbc a                                            ; $5096: $9f
	sub l                                            ; $5097: $95
	adc [hl]                                         ; $5098: $8e
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	jr nz, jr_064_5031                               ; $509b: $20 $94

	adc d                                            ; $509d: $8a
	sub e                                            ; $509e: $93
	ld c, c                                          ; $509f: $49
	ld c, h                                          ; $50a0: $4c
	ld h, h                                          ; $50a1: $64
	ld a, [hl+]                                      ; $50a2: $2a
	ld h, $a6                                        ; $50a3: $26 $a6
	xor a                                            ; $50a5: $af
	cp e                                             ; $50a6: $bb
	xor e                                            ; $50a7: $ab
	ld [hl+], a                                      ; $50a8: $22
	ld [hl+], a                                      ; $50a9: $22
	ld h, [hl]                                       ; $50aa: $66
	sbc $62                                          ; $50ab: $de $62
	sbc l                                            ; $50ad: $9d
	ld h, [hl]                                       ; $50ae: $66
	halt                                             ; $50af: $76
	inc bc                                           ; $50b0: $03
	ld h, b                                          ; $50b1: $60
	ldh [$e0], a                                     ; $50b2: $e0 $e0
	add e                                            ; $50b4: $83
	ld b, b                                          ; $50b5: $40
	ld b, a                                          ; $50b6: $47
	ld h, a                                          ; $50b7: $67
	daa                                              ; $50b8: $27
	cpl                                              ; $50b9: $2f
	dec hl                                           ; $50ba: $2b
	rst $38                                          ; $50bb: $ff
	jr nc, @-$3e                                     ; $50bc: $30 $c0

	rst JumpTable                                          ; $50be: $c7
	rst SubAFromBC                                          ; $50bf: $e7
	push hl                                          ; $50c0: $e5
	db $ec                                           ; $50c1: $ec
	ld [$30ff], a                                    ; $50c2: $ea $ff $30
	inc l                                            ; $50c5: $2c
	ld hl, sp+$57                                    ; $50c6: $f8 $57
	dec hl                                           ; $50c8: $2b
	dec d                                            ; $50c9: $15
	inc de                                           ; $50ca: $13
	adc c                                            ; $50cb: $89
	adc c                                            ; $50cc: $89
	inc l                                            ; $50cd: $2c
	ld hl, sp-$01                                    ; $50ce: $f8 $ff
	cp $dd                                           ; $50d0: $fe $dd
	rst $38                                          ; $50d2: $ff
	db $fc                                           ; $50d3: $fc
	sbc h                                            ; $50d4: $9c
	rst $38                                          ; $50d5: $ff
	inc a                                            ; $50d6: $3c
	ld h, b                                          ; $50d7: $60
	ld l, a                                          ; $50d8: $6f
	ld hl, sp-$6f                                    ; $50d9: $f8 $91
	db $fc                                           ; $50db: $fc
	ldh [rIE], a                                     ; $50dc: $e0 $ff
	rra                                              ; $50de: $1f
	and c                                            ; $50df: $a1
	nop                                              ; $50e0: $00
	ld c, $f1                                        ; $50e1: $0e $f1
	nop                                              ; $50e3: $00
	db $fc                                           ; $50e4: $fc
	rst $38                                          ; $50e5: $ff
	pop hl                                           ; $50e6: $e1
	nop                                              ; $50e7: $00
	nop                                              ; $50e8: $00
	ld a, e                                          ; $50e9: $7b
	ld sp, hl                                        ; $50ea: $f9
	add e                                            ; $50eb: $83
	inc bc                                           ; $50ec: $03
	adc a                                            ; $50ed: $8f
	pop af                                           ; $50ee: $f1
	cp $69                                           ; $50ef: $fe $69
	sub h                                            ; $50f1: $94
	jp z, $f9e5                                      ; $50f2: $ca $e5 $f9

	ld [hl], b                                       ; $50f5: $70
	ld c, $01                                        ; $50f6: $0e $01
	sub b                                            ; $50f8: $90
	ld c, b                                          ; $50f9: $48
	inc h                                            ; $50fa: $24
	sub d                                            ; $50fb: $92
	sub c                                            ; $50fc: $91
	db $ec                                           ; $50fd: $ec
	ld sp, hl                                        ; $50fe: $f9
	sub $45                                          ; $50ff: $d6 $45
	ld b, d                                          ; $5101: $42
	ld b, d                                          ; $5102: $42
	ld h, e                                          ; $5103: $63
	ld [hl], e                                       ; $5104: $73
	ld e, b                                          ; $5105: $58
	ld c, h                                          ; $5106: $4c
	ld l, h                                          ; $5107: $6c
	ld e, a                                          ; $5108: $5f
	ret nz                                           ; $5109: $c0

	ldh [$c6], a                                     ; $510a: $e0 $c6
	adc a                                            ; $510c: $8f
	adc h                                            ; $510d: $8c
	ld c, h                                          ; $510e: $4c
	xor [hl]                                         ; $510f: $ae
	ei                                               ; $5110: $fb
	rst FarCall                                          ; $5111: $f7
	rst $38                                          ; $5112: $ff
	cp $fe                                           ; $5113: $fe $fe
	adc a                                            ; $5115: $8f
	ld c, a                                          ; $5116: $4f
	xor a                                            ; $5117: $af
	ei                                               ; $5118: $fb

jr_064_5119:
	push af                                          ; $5119: $f5
	ld a, c                                          ; $511a: $79
	ld a, [hl-]                                      ; $511b: $3a
	and $72                                          ; $511c: $e6 $72
	add hl, de                                       ; $511e: $19
	sbc $7f                                          ; $511f: $de $7f
	sbc d                                            ; $5121: $9a
	rst SubAFromBC                                          ; $5122: $e7
	db $dd                                           ; $5123: $dd
	ret z                                            ; $5124: $c8

	ld c, b                                          ; $5125: $48
	ld c, b                                          ; $5126: $48
	sbc $44                                          ; $5127: $de $44
	ldh a, [$80]                                     ; $5129: $f0 $80
	ldh a, [rAUD3LEVEL]                              ; $512b: $f0 $1c
	ldh [c], a                                       ; $512d: $e2
	ld a, a                                          ; $512e: $7f
	db $ec                                           ; $512f: $ec
	ld a, [$003d]                                    ; $5130: $fa $3d $00
	ldh a, [$fc]                                     ; $5133: $f0 $fc
	ld e, $ff                                        ; $5135: $1e $ff
	inc e                                            ; $5137: $1c
	ld b, $c3                                        ; $5138: $06 $c3
	add [hl]                                         ; $513a: $86
	ldh a, [$0e]                                     ; $513b: $f0 $0e
	adc e                                            ; $513d: $8b
	call z, $3b6f                                    ; $513e: $cc $6f $3b
	or l                                             ; $5141: $b5
	ld a, c                                          ; $5142: $79
	rra                                              ; $5143: $1f
	sbc a                                            ; $5144: $9f
	ld b, a                                          ; $5145: $47
	inc hl                                           ; $5146: $23
	db $10                                           ; $5147: $10
	inc c                                            ; $5148: $0c
	ld c, $80                                        ; $5149: $0e $80
	cp d                                             ; $514b: $ba
	ld e, l                                          ; $514c: $5d
	and l                                            ; $514d: $a5
	ld d, b                                          ; $514e: $50
	ret c                                            ; $514f: $d8

	ld c, b                                          ; $5150: $48
	inc c                                            ; $5151: $0c
	dec c                                            ; $5152: $0d
	rst JumpTable                                          ; $5153: $c7
	db $e3                                           ; $5154: $e3
	ld a, e                                          ; $5155: $7b

jr_064_5156:
	ccf                                              ; $5156: $3f
	ccf                                              ; $5157: $3f
	cp a                                             ; $5158: $bf
	rst $38                                          ; $5159: $ff
	rst $38                                          ; $515a: $ff
	adc c                                            ; $515b: $89
	adc c                                            ; $515c: $89
	bit 5, c                                         ; $515d: $cb $69
	jr z, jr_064_5119                                ; $515f: $28 $b8

	or b                                             ; $5161: $b0
	or b                                             ; $5162: $b0
	ei                                               ; $5163: $fb
	ei                                               ; $5164: $fb
	ld a, e                                          ; $5165: $7b
	cp c                                             ; $5166: $b9
	ld hl, sp+$58                                    ; $5167: $f8 $58
	ld d, b                                          ; $5169: $50
	sbc [hl]                                         ; $516a: $9e
	ld d, b                                          ; $516b: $50
	sbc $f0                                          ; $516c: $de $f0
	add b                                            ; $516e: $80
	ldh [$c0], a                                     ; $516f: $e0 $c0
	ldh [$a0], a                                     ; $5171: $e0 $a0
	sub b                                            ; $5173: $90
	db $10                                           ; $5174: $10
	ld d, b                                          ; $5175: $50
	ld d, b                                          ; $5176: $50
	ld h, b                                          ; $5177: $60
	ld b, b                                          ; $5178: $40
	ldh [$e0], a                                     ; $5179: $e0 $e0
	ldh a, [$78]                                     ; $517b: $f0 $78
	xor b                                            ; $517d: $a8
	call nc, Call_064_64ec                           ; $517e: $d4 $ec $64
	or d                                             ; $5181: $b2
	jp c, $d8da                                      ; $5182: $da $da $d8

	ld a, b                                          ; $5185: $78
	cp h                                             ; $5186: $bc
	call c, Call_064_6edc                            ; $5187: $dc $dc $6e
	or [hl]                                          ; $518a: $b6
	cp [hl]                                          ; $518b: $be
	ld l, l                                          ; $518c: $6d
	xor l                                            ; $518d: $ad
	add a                                            ; $518e: $87

jr_064_518f:
	rst SubAFromHL                                          ; $518f: $d7
	sub $6a                                          ; $5190: $d6 $6a
	dec hl                                           ; $5192: $2b
	xor c                                            ; $5193: $a9
	sub l                                            ; $5194: $95
	db $db                                           ; $5195: $db
	ld e, a                                          ; $5196: $5f
	dec l                                            ; $5197: $2d
	cpl                                              ; $5198: $2f
	sub a                                            ; $5199: $97
	rst SubAFromHL                                          ; $519a: $d7
	rst SubAFromDE                                          ; $519b: $df
	rst AddAOntoHL                                          ; $519c: $ef
	ld c, l                                          ; $519d: $4d
	ld l, d                                          ; $519e: $6a
	ld [hl], $19                                     ; $519f: $36 $19
	rst $38                                          ; $51a1: $ff
	adc c                                            ; $51a2: $89
	add hl, sp                                       ; $51a3: $39
	rrca                                             ; $51a4: $0f
	rst FarCall                                          ; $51a5: $f7
	rst FarCall                                          ; $51a6: $f7
	ld a, c                                          ; $51a7: $79
	ld a, h                                          ; $51a8: $7c
	ld a, e                                          ; $51a9: $7b
	ld hl, sp-$6d                                    ; $51aa: $f8 $93
	dec a                                            ; $51ac: $3d
	jp hl                                            ; $51ad: $e9


	call $9392                                       ; $51ae: $cd $92 $93
	sub e                                            ; $51b1: $93
	sub d                                            ; $51b2: $92
	sub b                                            ; $51b3: $90
	ccf                                              ; $51b4: $3f
	rst $38                                          ; $51b5: $ff
	ei                                               ; $51b6: $fb
	jp hl                                            ; $51b7: $e9


	db $dd                                           ; $51b8: $dd
	add sp, -$7a                                     ; $51b9: $e8 $86
	add b                                            ; $51bb: $80
	ld b, b                                          ; $51bc: $40
	jr nz, jr_064_518f                               ; $51bd: $20 $d0

	cp b                                             ; $51bf: $b8
	ld e, h                                          ; $51c0: $5c
	and [hl]                                         ; $51c1: $a6
	or d                                             ; $51c2: $b2
	add b                                            ; $51c3: $80
	ret nz                                           ; $51c4: $c0

	ldh [$f0], a                                     ; $51c5: $e0 $f0
	cp b                                             ; $51c7: $b8
	call c, $7266                                    ; $51c8: $dc $66 $72
	db $10                                           ; $51cb: $10
	jr jr_064_5156                                   ; $51cc: $18 $88

	ret z                                            ; $51ce: $c8

	xor b                                            ; $51cf: $a8
	sbc b                                            ; $51d0: $98
	adc b                                            ; $51d1: $88
	add b                                            ; $51d2: $80
	ldh a, [$de]                                     ; $51d3: $f0 $de
	ld hl, sp-$62                                    ; $51d5: $f8 $9e
	cp b                                             ; $51d7: $b8
	ld a, e                                          ; $51d8: $7b
	ld hl, sp-$12                                    ; $51d9: $f8 $ee
	rst SubAFromDE                                          ; $51db: $df
	add b                                            ; $51dc: $80
	ld a, e                                          ; $51dd: $7b
	call nc, $f86f                                   ; $51de: $d4 $6f $f8
	sbc e                                            ; $51e1: $9b
	and b                                            ; $51e2: $a0
	ret nc                                           ; $51e3: $d0

	ld hl, sp-$04                                    ; $51e4: $f8 $fc
	ld [hl], d                                       ; $51e6: $72
	cp c                                             ; $51e7: $b9
	add a                                            ; $51e8: $87
	rst $38                                          ; $51e9: $ff
	ret z                                            ; $51ea: $c8

	add h                                            ; $51eb: $84
	add d                                            ; $51ec: $82
	di                                               ; $51ed: $f3
	dec bc                                           ; $51ee: $0b
	adc e                                            ; $51ef: $8b
	ld a, [bc]                                       ; $51f0: $0a
	ld a, [$5efa]                                    ; $51f1: $fa $fa $5e
	xor [hl]                                         ; $51f4: $ae
	xor [hl]                                         ; $51f5: $ae
	and [hl]                                         ; $51f6: $a6
	ld h, [hl]                                       ; $51f7: $66
	ld h, e                                          ; $51f8: $63
	ld h, e                                          ; $51f9: $63
	jp z, $e6ce                                      ; $51fa: $ca $ce $e6

	and $e2                                          ; $51fd: $e6 $e2
	ldh [c], a                                       ; $51ff: $e2
	pop hl                                           ; $5200: $e1
	ld a, d                                          ; $5201: $7a
	ld a, d                                          ; $5202: $7a
	ld [hl], e                                       ; $5203: $73
	call $c09e                                       ; $5204: $cd $9e $c0
	ld h, a                                          ; $5207: $67
	ld hl, sp+$7f                                    ; $5208: $f8 $7f
	push bc                                          ; $520a: $c5
	sbc $e0                                          ; $520b: $de $e0
	sbc $f0                                          ; $520d: $de $f0
	ld a, a                                          ; $520f: $7f
	adc c                                            ; $5210: $89
	sbc $20                                          ; $5211: $de $20
	sbc $10                                          ; $5213: $de $10
	dec h                                            ; $5215: $25
	nop                                              ; $5216: $00
	rst SubAFromDE                                          ; $5217: $df
	sbc c                                            ; $5218: $99
	sub h                                            ; $5219: $94
	db $dd                                           ; $521a: $dd
	cp e                                             ; $521b: $bb
	sub c                                            ; $521c: $91
	ld de, $4499                                     ; $521d: $11 $99 $44
	cp e                                             ; $5220: $bb
	ld de, $9999                                     ; $5221: $11 $99 $99
	ld b, h                                          ; $5224: $44
	ld a, e                                          ; $5225: $7b
	rst FarCall                                          ; $5226: $f7
	sbc l                                            ; $5227: $9d
	sbc c                                            ; $5228: $99
	nop                                              ; $5229: $00
	ld [hl], a                                       ; $522a: $77
	ei                                               ; $522b: $fb
	sbc [hl]                                         ; $522c: $9e
	ld [hl+], a                                      ; $522d: $22
	ld [hl], e                                       ; $522e: $73
	ei                                               ; $522f: $fb
	sub [hl]                                         ; $5230: $96
	sbc c                                            ; $5231: $99
	ld de, $9988                                     ; $5232: $11 $88 $99
	ld de, $aabb                                     ; $5235: $11 $bb $aa
	push de                                          ; $5238: $d5
	db $dd                                           ; $5239: $dd
	ld h, h                                          ; $523a: $64
	ld bc, $8480                                     ; $523b: $01 $80 $84
	rst $38                                          ; $523e: $ff
	adc h                                            ; $523f: $8c
	rst $38                                          ; $5240: $ff
	inc e                                            ; $5241: $1c
	rst $38                                          ; $5242: $ff
	add hl, sp                                       ; $5243: $39
	rst $38                                          ; $5244: $ff
	ld a, e                                          ; $5245: $7b
	rst $38                                          ; $5246: $ff
	rst FarCall                                          ; $5247: $f7
	cp $fe                                           ; $5248: $fe $fe
	db $fd                                           ; $524a: $fd
	dec a                                            ; $524b: $3d
	ldh a, [c]                                       ; $524c: $f2
	ld a, l                                          ; $524d: $7d
	db $e3                                           ; $524e: $e3
	ld h, e                                          ; $524f: $63
	rst GetHLinHL                                          ; $5250: $cf
	ld a, l                                          ; $5251: $7d
	add c                                            ; $5252: $81
	cp b                                             ; $5253: $b8
	cp b                                             ; $5254: $b8
	cp d                                             ; $5255: $ba
	sbc b                                            ; $5256: $98
	db $dd                                           ; $5257: $dd
	call z, $e0ec                                    ; $5258: $cc $ec $e0
	xor [hl]                                         ; $525b: $ae
	add b                                            ; $525c: $80
	ldh [$ef], a                                     ; $525d: $e0 $ef
	cp [hl]                                          ; $525f: $be
	db $ed                                           ; $5260: $ed
	cp e                                             ; $5261: $bb
	db $dd                                           ; $5262: $dd
	xor e                                            ; $5263: $ab
	push de                                          ; $5264: $d5
	xor e                                            ; $5265: $ab
	push de                                          ; $5266: $d5
	ld l, e                                          ; $5267: $6b
	push de                                          ; $5268: $d5
	ld l, e                                          ; $5269: $6b
	ld d, l                                          ; $526a: $55
	dec hl                                           ; $526b: $2b
	add l                                            ; $526c: $85
	dec sp                                           ; $526d: $3b
	xor l                                            ; $526e: $ad
	dec de                                           ; $526f: $1b
	call Call_064_591b                               ; $5270: $cd $1b $59
	rrca                                             ; $5273: $0f
	dec c                                            ; $5274: $0d
	rlca                                             ; $5275: $07
	dec b                                            ; $5276: $05
	rlca                                             ; $5277: $07
	or a                                             ; $5278: $b7
	inc bc                                           ; $5279: $03
	cp e                                             ; $527a: $bb
	rlca                                             ; $527b: $07
	add d                                            ; $527c: $82
	ld d, c                                          ; $527d: $51
	xor a                                            ; $527e: $af
	ld h, a                                          ; $527f: $67
	db $fd                                           ; $5280: $fd
	ld l, c                                          ; $5281: $69
	rst $38                                          ; $5282: $ff
	cp a                                             ; $5283: $bf
	rst $38                                          ; $5284: $ff
	cp $b1                                           ; $5285: $fe $b1
	add c                                            ; $5287: $81
	ld a, a                                          ; $5288: $7f
	ld a, [hl]                                       ; $5289: $7e
	add e                                            ; $528a: $83
	rst $38                                          ; $528b: $ff
	inc a                                            ; $528c: $3c
	rst $38                                          ; $528d: $ff
	cp $8b                                           ; $528e: $fe $8b
	adc $9b                                          ; $5290: $ce $9b
	cp b                                             ; $5292: $b8
	ld [hl], d                                       ; $5293: $72
	ld hl, sp-$36                                    ; $5294: $f8 $ca
	ld a, b                                          ; $5296: $78
	inc a                                            ; $5297: $3c
	jr nc, jr_064_529a                               ; $5298: $30 $00

jr_064_529a:
	cp h                                             ; $529a: $bc
	rst $38                                          ; $529b: $ff
	rrca                                             ; $529c: $0f
	nop                                              ; $529d: $00
	add b                                            ; $529e: $80
	ret nz                                           ; $529f: $c0

	add b                                            ; $52a0: $80
	add b                                            ; $52a1: $80
	ldh [$c0], a                                     ; $52a2: $e0 $c0
	ldh a, [$e0]                                     ; $52a4: $f0 $e0
	cp h                                             ; $52a6: $bc
	ld hl, sp-$41                                    ; $52a7: $f8 $bf
	rst $38                                          ; $52a9: $ff
	xor a                                            ; $52aa: $af
	ld hl, sp+$57                                    ; $52ab: $f8 $57
	db $fc                                           ; $52ad: $fc
	ld d, a                                          ; $52ae: $57
	cp $4b                                           ; $52af: $fe $4b
	cp $2b                                           ; $52b1: $fe $2b
	rst $38                                          ; $52b3: $ff
	dec l                                            ; $52b4: $2d
	rst $38                                          ; $52b5: $ff
	dec h                                            ; $52b6: $25
	rst $38                                          ; $52b7: $ff
	sub [hl]                                         ; $52b8: $96
	rst $38                                          ; $52b9: $ff
	sub d                                            ; $52ba: $92
	rst $38                                          ; $52bb: $ff
	ld h, $ff                                        ; $52bc: $26 $ff
	halt                                             ; $52be: $76
	db $dd                                           ; $52bf: $dd
	ld a, a                                          ; $52c0: $7f
	cp $92                                           ; $52c1: $fe $92
	or $9d                                           ; $52c3: $f6 $9d
	halt                                             ; $52c5: $76
	sbc l                                            ; $52c6: $9d
	cp a                                             ; $52c7: $bf
	reti                                             ; $52c8: $d9


	and c                                            ; $52c9: $a1
	ld d, a                                          ; $52ca: $57
	adc [hl]                                         ; $52cb: $8e
	ld a, a                                          ; $52cc: $7f
	or a                                             ; $52cd: $b7
	ld [hl], c                                       ; $52ce: $71
	ld l, $bd                                        ; $52cf: $2e $bd
	ld a, $3f                                        ; $52d1: $3e $3f
	ld a, a                                          ; $52d3: $7f
	rst $38                                          ; $52d4: $ff
	add b                                            ; $52d5: $80
	inc b                                            ; $52d6: $04
	rst AddAOntoHL                                          ; $52d7: $ef
	inc b                                            ; $52d8: $04
	add [hl]                                         ; $52d9: $86
	nop                                              ; $52da: $00
	ld a, e                                          ; $52db: $7b
	adc $07                                          ; $52dc: $ce $07
	cp $f3                                           ; $52de: $fe $f3
	sbc [hl]                                         ; $52e0: $9e
	ret nz                                           ; $52e1: $c0

	rst $38                                          ; $52e2: $ff
	cp $81                                           ; $52e3: $fe $81
	cp $3c                                           ; $52e5: $fe $3c
	rst $38                                          ; $52e7: $ff
	ld a, a                                          ; $52e8: $7f
	push bc                                          ; $52e9: $c5
	and $cd                                          ; $52ea: $e6 $cd
	call c, Call_064_7c58                            ; $52ec: $dc $58 $7c
	ld h, $7c                                        ; $52ef: $26 $7c
	ld a, h                                          ; $52f1: $7c
	jr c, jr_064_5334                                ; $52f2: $38 $40

	nop                                              ; $52f4: $00
	sbc b                                            ; $52f5: $98
	cp a                                             ; $52f6: $bf
	ld bc, $010f                                     ; $52f7: $01 $0f $01
	rrca                                             ; $52fa: $0f
	inc bc                                           ; $52fb: $03
	ld e, $7b                                        ; $52fc: $1e $7b
	cp $83                                           ; $52fe: $fe $83
	dec e                                            ; $5300: $1d
	rlca                                             ; $5301: $07
	ld a, $0f                                        ; $5302: $3e $0f
	ld a, [hl]                                       ; $5304: $7e
	rra                                              ; $5305: $1f
	push af                                          ; $5306: $f5
	ccf                                              ; $5307: $3f
	push af                                          ; $5308: $f5
	rst $38                                          ; $5309: $ff
	call nc, $d4ff                                   ; $530a: $d4 $ff $d4
	ld a, a                                          ; $530d: $7f
	jp nc, $ca7f                                     ; $530e: $d2 $7f $ca

	ld a, a                                          ; $5311: $7f
	bit 7, a                                         ; $5312: $cb $7f
	jp hl                                            ; $5314: $e9


	ld a, a                                          ; $5315: $7f
	ld sp, hl                                        ; $5316: $f9
	ld a, a                                          ; $5317: $7f
	ld a, b                                          ; $5318: $78
	ld e, a                                          ; $5319: $5f
	ld hl, sp+$1f                                    ; $531a: $f8 $1f
	ld b, e                                          ; $531c: $43
	jr nz, @-$60                                     ; $531d: $20 $9e

	ldh [c], a                                       ; $531f: $e2
	ld c, a                                          ; $5320: $4f
	jr nz, jr_064_5376                               ; $5321: $20 $53

	ld b, b                                          ; $5323: $40
	ld a, a                                          ; $5324: $7f
	adc h                                            ; $5325: $8c
	ld a, e                                          ; $5326: $7b
	ld a, $9b                                        ; $5327: $3e $9b
	sbc e                                            ; $5329: $9b
	sbc $32                                          ; $532a: $de $32
	cp b                                             ; $532c: $b8
	ld e, a                                          ; $532d: $5f
	ld b, b                                          ; $532e: $40
	ld e, e                                          ; $532f: $5b
	add b                                            ; $5330: $80
	ld [hl], a                                       ; $5331: $77
	ldh [c], a                                       ; $5332: $e2
	sbc d                                            ; $5333: $9a

jr_064_5334:
	ld a, [hl]                                       ; $5334: $7e
	call $18ef                                       ; $5335: $cd $ef $18
	ld e, h                                          ; $5338: $5c
	ld d, a                                          ; $5339: $57
	add b                                            ; $533a: $80
	dec sp                                           ; $533b: $3b
	and b                                            ; $533c: $a0
	sbc h                                            ; $533d: $9c
	call $837f                                       ; $533e: $cd $7f $83
	inc hl                                           ; $5341: $23
	and b                                            ; $5342: $a0
	ld a, a                                          ; $5343: $7f
	cp $99                                           ; $5344: $fe $99
	ld a, b                                          ; $5346: $78
	rst $38                                          ; $5347: $ff
	db $fc                                           ; $5348: $fc
	ld d, $be                                        ; $5349: $16 $be
	ld [$a02f], a                                    ; $534b: $ea $2f $a0
	ld [hl], e                                       ; $534e: $73
	sbc [hl]                                         ; $534f: $9e
	sbc h                                            ; $5350: $9c
	set 3, a                                         ; $5351: $cb $df
	ld [hl], $0f                                     ; $5353: $36 $0f
	and b                                            ; $5355: $a0
	sbc h                                            ; $5356: $9c
	call z, $807f                                    ; $5357: $cc $7f $80
	dec de                                           ; $535a: $1b
	and b                                            ; $535b: $a0
	cp a                                             ; $535c: $bf
	rst $38                                          ; $535d: $ff
	cp [hl]                                          ; $535e: $be
	sbc d                                            ; $535f: $9a
	add d                                            ; $5360: $82
	cp $fc                                           ; $5361: $fe $fc
	ld a, h                                          ; $5363: $7c
	ld a, h                                          ; $5364: $7c
	inc sp                                           ; $5365: $33
	and b                                            ; $5366: $a0
	cp a                                             ; $5367: $bf
	rst $38                                          ; $5368: $ff
	cp a                                             ; $5369: $bf
	sbc d                                            ; $536a: $9a
	inc bc                                           ; $536b: $03
	ld a, [hl]                                       ; $536c: $7e
	ld a, h                                          ; $536d: $7c
	ld a, h                                          ; $536e: $7c
	inc a                                            ; $536f: $3c
	ld h, a                                          ; $5370: $67
	and b                                            ; $5371: $a0
	rst $38                                          ; $5372: $ff
	sbc h                                            ; $5373: $9c
	inc e                                            ; $5374: $1c
	inc c                                            ; $5375: $0c

jr_064_5376:
	inc b                                            ; $5376: $04
	cp h                                             ; $5377: $bc
	inc c                                            ; $5378: $0c
	nop                                              ; $5379: $00
	nop                                              ; $537a: $00
	add c                                            ; $537b: $81
	rst FarCall                                          ; $537c: $f7
	sbc e                                            ; $537d: $9b
	db $e3                                           ; $537e: $e3
	rst $38                                          ; $537f: $ff
	ld e, $ff                                        ; $5380: $1e $ff
	cp [hl]                                          ; $5382: $be
	rlca                                             ; $5383: $07
	add e                                            ; $5384: $83
	pop hl                                           ; $5385: $e1
	sbc b                                            ; $5386: $98
	ret nz                                           ; $5387: $c0

	ld sp, hl                                        ; $5388: $f9
	ldh a, [$8e]                                     ; $5389: $f0 $8e
	db $fc                                           ; $538b: $fc
	jp Jump_064_77ff                                 ; $538c: $c3 $ff $77


	ldh [$de], a                                     ; $538f: $e0 $de
	inc e                                            ; $5391: $1c
	rlca                                             ; $5392: $07
	ldh [$9e], a                                     ; $5393: $e0 $9e
	ld [$be77], sp                                   ; $5395: $08 $77 $be
	dec de                                           ; $5398: $1b
	ldh [$73], a                                     ; $5399: $e0 $73
	sbc $37                                          ; $539b: $de $37
	ldh [$7f], a                                     ; $539d: $e0 $7f
	ld bc, $8480                                     ; $539f: $01 $80 $84
	rst $38                                          ; $53a2: $ff
	adc h                                            ; $53a3: $8c
	rst $38                                          ; $53a4: $ff
	inc e                                            ; $53a5: $1c
	rst $38                                          ; $53a6: $ff
	add hl, sp                                       ; $53a7: $39
	rst $38                                          ; $53a8: $ff
	ld a, e                                          ; $53a9: $7b
	rst $38                                          ; $53aa: $ff
	rst FarCall                                          ; $53ab: $f7
	cp $fe                                           ; $53ac: $fe $fe
	db $fd                                           ; $53ae: $fd
	dec a                                            ; $53af: $3d
	di                                               ; $53b0: $f3
	ld a, l                                          ; $53b1: $7d
	db $e3                                           ; $53b2: $e3
	ld h, d                                          ; $53b3: $62
	rst GetHLinHL                                          ; $53b4: $cf
	ld a, h                                          ; $53b5: $7c
	add b                                            ; $53b6: $80
	cp b                                             ; $53b7: $b8
	cp b                                             ; $53b8: $b8
	cp d                                             ; $53b9: $ba
	sbc b                                            ; $53ba: $98
	db $dd                                           ; $53bb: $dd
	call z, $e0ec                                    ; $53bc: $cc $ec $e0
	xor [hl]                                         ; $53bf: $ae
	add b                                            ; $53c0: $80
	ldh [$ef], a                                     ; $53c1: $e0 $ef
	cp [hl]                                          ; $53c3: $be
	db $ed                                           ; $53c4: $ed
	cp e                                             ; $53c5: $bb
	db $dd                                           ; $53c6: $dd
	xor e                                            ; $53c7: $ab
	push de                                          ; $53c8: $d5
	xor e                                            ; $53c9: $ab
	push de                                          ; $53ca: $d5
	ld l, e                                          ; $53cb: $6b
	push de                                          ; $53cc: $d5
	ld l, e                                          ; $53cd: $6b
	ld d, l                                          ; $53ce: $55
	dec hl                                           ; $53cf: $2b
	add l                                            ; $53d0: $85
	dec sp                                           ; $53d1: $3b
	xor l                                            ; $53d2: $ad
	dec de                                           ; $53d3: $1b
	call Call_064_591b                               ; $53d4: $cd $1b $59
	rrca                                             ; $53d7: $0f
	dec c                                            ; $53d8: $0d
	rlca                                             ; $53d9: $07
	dec b                                            ; $53da: $05
	rlca                                             ; $53db: $07
	or a                                             ; $53dc: $b7
	inc bc                                           ; $53dd: $03
	cp e                                             ; $53de: $bb
	rlca                                             ; $53df: $07
	add d                                            ; $53e0: $82
	ld d, c                                          ; $53e1: $51
	xor a                                            ; $53e2: $af
	ld h, a                                          ; $53e3: $67
	db $fd                                           ; $53e4: $fd
	ld l, c                                          ; $53e5: $69
	rst $38                                          ; $53e6: $ff
	cp a                                             ; $53e7: $bf
	rst $38                                          ; $53e8: $ff
	cp $b1                                           ; $53e9: $fe $b1
	add c                                            ; $53eb: $81
	ld a, a                                          ; $53ec: $7f
	ld c, [hl]                                       ; $53ed: $4e
	or e                                             ; $53ee: $b3
	rst $38                                          ; $53ef: $ff
	ld a, b                                          ; $53f0: $78
	add a                                            ; $53f1: $87
	sbc $8b                                          ; $53f2: $de $8b
	adc [hl]                                         ; $53f4: $8e
	cp e                                             ; $53f5: $bb
	ld hl, sp+$72                                    ; $53f6: $f8 $72
	ld hl, sp+$4a                                    ; $53f8: $f8 $4a
	ld a, b                                          ; $53fa: $78
	ld a, h                                          ; $53fb: $7c
	jr nc, jr_064_53fe                               ; $53fc: $30 $00

jr_064_53fe:
	cp h                                             ; $53fe: $bc
	rst $38                                          ; $53ff: $ff
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	add b                                            ; $5402: $80
	ret nz                                           ; $5403: $c0

	add b                                            ; $5404: $80
	add b                                            ; $5405: $80
	ldh [$c0], a                                     ; $5406: $e0 $c0
	ldh a, [$e0]                                     ; $5408: $f0 $e0
	cp h                                             ; $540a: $bc
	ld hl, sp-$41                                    ; $540b: $f8 $bf
	rst $38                                          ; $540d: $ff
	xor a                                            ; $540e: $af
	ld hl, sp+$57                                    ; $540f: $f8 $57
	db $fc                                           ; $5411: $fc
	ld d, a                                          ; $5412: $57
	cp $4b                                           ; $5413: $fe $4b
	cp $2b                                           ; $5415: $fe $2b
	rst $38                                          ; $5417: $ff
	dec l                                            ; $5418: $2d
	rst $38                                          ; $5419: $ff
	dec h                                            ; $541a: $25

jr_064_541b:
	rst $38                                          ; $541b: $ff
	sub [hl]                                         ; $541c: $96
	rst $38                                          ; $541d: $ff
	sub d                                            ; $541e: $92
	rst $38                                          ; $541f: $ff
	ld h, $ff                                        ; $5420: $26 $ff
	halt                                             ; $5422: $76
	db $dd                                           ; $5423: $dd
	ld a, a                                          ; $5424: $7f
	cp $92                                           ; $5425: $fe $92
	or $9d                                           ; $5427: $f6 $9d
	halt                                             ; $5429: $76
	sbc l                                            ; $542a: $9d
	cp a                                             ; $542b: $bf
	reti                                             ; $542c: $d9


	and c                                            ; $542d: $a1
	ld d, a                                          ; $542e: $57
	adc [hl]                                         ; $542f: $8e
	ld a, a                                          ; $5430: $7f
	or a                                             ; $5431: $b7
	ld [hl], c                                       ; $5432: $71
	ld h, $bd                                        ; $5433: $26 $bd
	ld h, $07                                        ; $5435: $26 $07
	ld b, a                                          ; $5437: $47
	add a                                            ; $5438: $87
	add b                                            ; $5439: $80
	inc b                                            ; $543a: $04
	rrca                                             ; $543b: $0f
	inc b                                            ; $543c: $04
	ld b, $00                                        ; $543d: $06 $00
	ld a, e                                          ; $543f: $7b
	adc $07                                          ; $5440: $ce $07
	cp $ff                                           ; $5442: $fe $ff
	add d                                            ; $5444: $82
	ret nz                                           ; $5445: $c0

	rst $38                                          ; $5446: $ff
	and $99                                          ; $5447: $e6 $99
	cp [hl]                                          ; $5449: $be
	ld a, h                                          ; $544a: $7c
	rst JumpTable                                          ; $544b: $c7
	ld l, a                                          ; $544c: $6f
	rst JumpTable                                          ; $544d: $c7
	call nz, $fcdd                                   ; $544e: $c4 $dd $fc
	jr c, jr_064_54cf                                ; $5451: $38 $7c

	ld h, [hl]                                       ; $5453: $66

Call_064_5454:
	inc a                                            ; $5454: $3c
	ld a, h                                          ; $5455: $7c
	jr c, @+$42                                      ; $5456: $38 $40

	nop                                              ; $5458: $00
	sbc b                                            ; $5459: $98
	cp a                                             ; $545a: $bf
	ld bc, $010f                                     ; $545b: $01 $0f $01
	rrca                                             ; $545e: $0f
	inc bc                                           ; $545f: $03
	ld e, $7b                                        ; $5460: $1e $7b
	cp $83                                           ; $5462: $fe $83
	dec e                                            ; $5464: $1d
	rlca                                             ; $5465: $07
	ld a, $0f                                        ; $5466: $3e $0f
	ld a, [hl]                                       ; $5468: $7e
	rra                                              ; $5469: $1f
	push af                                          ; $546a: $f5
	ccf                                              ; $546b: $3f
	push af                                          ; $546c: $f5
	rst $38                                          ; $546d: $ff
	call nc, $d4ff                                   ; $546e: $d4 $ff $d4
	ld a, a                                          ; $5471: $7f
	jp nc, $ca7f                                     ; $5472: $d2 $7f $ca

	ld a, a                                          ; $5475: $7f
	bit 7, a                                         ; $5476: $cb $7f
	jp hl                                            ; $5478: $e9


	ld a, a                                          ; $5479: $7f
	ld sp, hl                                        ; $547a: $f9
	ld a, a                                          ; $547b: $7f
	ld a, b                                          ; $547c: $78
	ld e, a                                          ; $547d: $5f
	ld hl, sp+$1f                                    ; $547e: $f8 $1f
	ld c, e                                          ; $5480: $4b
	jr nz, jr_064_541b                               ; $5481: $20 $98

	ldh a, [c]                                       ; $5483: $f2
	ld a, l                                          ; $5484: $7d
	ldh [c], a                                       ; $5485: $e2
	ld h, e                                          ; $5486: $63
	rst GetHLinHL                                          ; $5487: $cf
	ld a, l                                          ; $5488: $7d
	add c                                            ; $5489: $81
	ld e, a                                          ; $548a: $5f
	jr nz, jr_064_54ec                               ; $548b: $20 $5f

	ld b, b                                          ; $548d: $40
	sub b                                            ; $548e: $90
	ld a, [hl]                                       ; $548f: $7e
	add e                                            ; $5490: $83
	rst $38                                          ; $5491: $ff
	nop                                              ; $5492: $00
	rst $38                                          ; $5493: $ff
	inc a                                            ; $5494: $3c
	rst $38                                          ; $5495: $ff
	ld a, [hl]                                       ; $5496: $7e
	set 3, [hl]                                      ; $5497: $cb $de
	or d                                             ; $5499: $b2
	ld hl, sp-$36                                    ; $549a: $f8 $ca
	ld a, b                                          ; $549c: $78
	inc a                                            ; $549d: $3c
	ld l, e                                          ; $549e: $6b
	ld b, b                                          ; $549f: $40
	ld h, a                                          ; $54a0: $67
	add b                                            ; $54a1: $80
	sbc d                                            ; $54a2: $9a
	cp $81                                           ; $54a3: $fe $81
	cp $00                                           ; $54a5: $fe $00
	cp $7b                                           ; $54a7: $fe $7b
	ldh [c], a                                       ; $54a9: $e2
	sub a                                            ; $54aa: $97
	call Call_064_58df                               ; $54ab: $cd $df $58
	ld a, h                                          ; $54ae: $7c
	ld h, $7c                                        ; $54af: $26 $7c
	ld e, h                                          ; $54b1: $5c
	jr jr_064_551b                                   ; $54b2: $18 $67

	add b                                            ; $54b4: $80
	dec sp                                           ; $54b5: $3b
	and b                                            ; $54b6: $a0
	sbc [hl]                                         ; $54b7: $9e
	call z, $a01b                                    ; $54b8: $cc $1b $a0
	ld [hl], a                                       ; $54bb: $77
	sbc [hl]                                         ; $54bc: $9e
	sbc b                                            ; $54bd: $98
	cp $32                                           ; $54be: $fe $32
	cp [hl]                                          ; $54c0: $be
	ld c, d                                          ; $54c1: $4a
	ld a, b                                          ; $54c2: $78
	inc a                                            ; $54c3: $3c
	jr c, jr_064_5501                                ; $54c4: $38 $3b

	and b                                            ; $54c6: $a0
	ld [hl], e                                       ; $54c7: $73
	add b                                            ; $54c8: $80
	sbc l                                            ; $54c9: $9d
	ld e, b                                          ; $54ca: $58
	ld e, h                                          ; $54cb: $5c
	inc bc                                           ; $54cc: $03
	and b                                            ; $54cd: $a0
	ld e, d                                          ; $54ce: $5a

jr_064_54cf:
	ld h, b                                          ; $54cf: $60
	ld b, e                                          ; $54d0: $43
	and b                                            ; $54d1: $a0
	cp a                                             ; $54d2: $bf
	rst $38                                          ; $54d3: $ff
	ld e, $9a                                        ; $54d4: $1e $9a
	ld [bc], a                                       ; $54d6: $02
	cp $fc                                           ; $54d7: $fe $fc
	ld a, h                                          ; $54d9: $7c
	ld a, b                                          ; $54da: $78
	inc sp                                           ; $54db: $33
	and b                                            ; $54dc: $a0
	cp a                                             ; $54dd: $bf
	rst $38                                          ; $54de: $ff
	ld e, h                                          ; $54df: $5c
	sbc d                                            ; $54e0: $9a
	ld b, b                                          ; $54e1: $40
	ld a, $3e                                        ; $54e2: $3e $3e
	ld e, h                                          ; $54e4: $5c
	inc e                                            ; $54e5: $1c
	ld h, a                                          ; $54e6: $67
	and b                                            ; $54e7: $a0
	rst $38                                          ; $54e8: $ff
	sbc h                                            ; $54e9: $9c
	inc e                                            ; $54ea: $1c
	inc c                                            ; $54eb: $0c

jr_064_54ec:
	inc b                                            ; $54ec: $04
	cp h                                             ; $54ed: $bc
	inc c                                            ; $54ee: $0c
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	add c                                            ; $54f1: $81
	rst FarCall                                          ; $54f2: $f7
	sbc e                                            ; $54f3: $9b
	db $e3                                           ; $54f4: $e3
	rst $38                                          ; $54f5: $ff
	ld e, $ff                                        ; $54f6: $1e $ff
	cp [hl]                                          ; $54f8: $be
	rlca                                             ; $54f9: $07
	add e                                            ; $54fa: $83
	pop hl                                           ; $54fb: $e1
	sub [hl]                                         ; $54fc: $96
	ret nz                                           ; $54fd: $c0

	ld sp, hl                                        ; $54fe: $f9
	ldh a, [$8e]                                     ; $54ff: $f0 $8e

jr_064_5501:
	db $fc                                           ; $5501: $fc
	jp $1cff                                         ; $5502: $c3 $ff $1c


	nop                                              ; $5505: $00
	sbc $1c                                          ; $5506: $de $1c
	sbc [hl]                                         ; $5508: $9e
	ld [$de6f], sp                                   ; $5509: $08 $6f $de
	daa                                              ; $550c: $27
	ldh [$df], a                                     ; $550d: $e0 $df
	jr jr_064_5590                                   ; $550f: $18 $7f

	sbc $27                                          ; $5511: $de $27
	ldh [$dc], a                                     ; $5513: $e0 $dc
	inc a                                            ; $5515: $3c
	sbc e                                            ; $5516: $9b
	jr c, @+$3e                                      ; $5517: $38 $3c

	jr jr_064_5533                                   ; $5519: $18 $18

jr_064_551b:
	dec hl                                           ; $551b: $2b
	ldh [$72], a                                     ; $551c: $e0 $72
	ld bc, $8480                                     ; $551e: $01 $80 $84
	rst $38                                          ; $5521: $ff
	adc h                                            ; $5522: $8c
	rst $38                                          ; $5523: $ff
	inc e                                            ; $5524: $1c
	rst $38                                          ; $5525: $ff
	add hl, sp                                       ; $5526: $39
	rst $38                                          ; $5527: $ff
	ld a, e                                          ; $5528: $7b
	rst $38                                          ; $5529: $ff
	rst FarCall                                          ; $552a: $f7
	cp $fe                                           ; $552b: $fe $fe
	db $fd                                           ; $552d: $fd
	dec a                                            ; $552e: $3d
	ldh a, [c]                                       ; $552f: $f2
	ld a, l                                          ; $5530: $7d
	db $e3                                           ; $5531: $e3
	ld h, e                                          ; $5532: $63

jr_064_5533:
	rst GetHLinHL                                          ; $5533: $cf
	ld a, l                                          ; $5534: $7d
	add c                                            ; $5535: $81
	cp b                                             ; $5536: $b8
	cp b                                             ; $5537: $b8
	cp d                                             ; $5538: $ba
	sbc b                                            ; $5539: $98
	db $dd                                           ; $553a: $dd
	call z, $e0ec                                    ; $553b: $cc $ec $e0
	xor [hl]                                         ; $553e: $ae
	add b                                            ; $553f: $80
	ldh [$ef], a                                     ; $5540: $e0 $ef
	cp [hl]                                          ; $5542: $be
	db $ed                                           ; $5543: $ed
	cp e                                             ; $5544: $bb
	db $dd                                           ; $5545: $dd
	xor e                                            ; $5546: $ab
	push de                                          ; $5547: $d5
	xor e                                            ; $5548: $ab
	push de                                          ; $5549: $d5
	ld l, e                                          ; $554a: $6b
	push de                                          ; $554b: $d5
	ld l, e                                          ; $554c: $6b
	ld d, l                                          ; $554d: $55
	dec hl                                           ; $554e: $2b
	add l                                            ; $554f: $85
	dec sp                                           ; $5550: $3b
	xor l                                            ; $5551: $ad
	dec de                                           ; $5552: $1b
	call Call_064_591b                               ; $5553: $cd $1b $59
	rrca                                             ; $5556: $0f
	dec c                                            ; $5557: $0d
	rlca                                             ; $5558: $07
	dec b                                            ; $5559: $05
	rlca                                             ; $555a: $07
	or a                                             ; $555b: $b7
	inc bc                                           ; $555c: $03
	cp e                                             ; $555d: $bb
	rlca                                             ; $555e: $07
	add d                                            ; $555f: $82
	ld d, c                                          ; $5560: $51
	xor a                                            ; $5561: $af
	ld h, a                                          ; $5562: $67
	db $fd                                           ; $5563: $fd
	ld l, c                                          ; $5564: $69
	rst $38                                          ; $5565: $ff
	cp a                                             ; $5566: $bf
	rst $38                                          ; $5567: $ff
	cp $b1                                           ; $5568: $fe $b1
	add c                                            ; $556a: $81
	ld a, a                                          ; $556b: $7f
	ld a, [hl]                                       ; $556c: $7e
	add e                                            ; $556d: $83
	rst $38                                          ; $556e: $ff
	inc a                                            ; $556f: $3c
	rst GetHLinHL                                          ; $5570: $cf
	cp $8b                                           ; $5571: $fe $8b
	adc $9b                                          ; $5573: $ce $9b
	cp b                                             ; $5575: $b8
	ld [hl], d                                       ; $5576: $72
	ld hl, sp-$36                                    ; $5577: $f8 $ca
	ld a, b                                          ; $5579: $78
	inc a                                            ; $557a: $3c
	jr nc, jr_064_557d                               ; $557b: $30 $00

jr_064_557d:
	cp h                                             ; $557d: $bc
	rst $38                                          ; $557e: $ff
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	add b                                            ; $5581: $80
	ret nz                                           ; $5582: $c0

	add b                                            ; $5583: $80
	add b                                            ; $5584: $80
	ldh [$c0], a                                     ; $5585: $e0 $c0
	ldh a, [$e0]                                     ; $5587: $f0 $e0
	cp h                                             ; $5589: $bc
	ld hl, sp-$41                                    ; $558a: $f8 $bf
	rst $38                                          ; $558c: $ff
	xor a                                            ; $558d: $af
	ld hl, sp+$57                                    ; $558e: $f8 $57

jr_064_5590:
	db $fc                                           ; $5590: $fc
	ld d, a                                          ; $5591: $57
	cp $4b                                           ; $5592: $fe $4b
	cp $2b                                           ; $5594: $fe $2b
	rst $38                                          ; $5596: $ff
	dec l                                            ; $5597: $2d
	rst $38                                          ; $5598: $ff
	dec h                                            ; $5599: $25
	rst $38                                          ; $559a: $ff
	sub [hl]                                         ; $559b: $96
	rst $38                                          ; $559c: $ff
	sub d                                            ; $559d: $92
	rst $38                                          ; $559e: $ff
	ld h, $ff                                        ; $559f: $26 $ff
	halt                                             ; $55a1: $76
	db $dd                                           ; $55a2: $dd
	ld a, a                                          ; $55a3: $7f
	cp $92                                           ; $55a4: $fe $92
	or $9d                                           ; $55a6: $f6 $9d
	halt                                             ; $55a8: $76
	sbc l                                            ; $55a9: $9d
	cp a                                             ; $55aa: $bf
	reti                                             ; $55ab: $d9


	and c                                            ; $55ac: $a1
	ld d, a                                          ; $55ad: $57
	adc [hl]                                         ; $55ae: $8e
	ld a, a                                          ; $55af: $7f
	or a                                             ; $55b0: $b7
	ld [hl], c                                       ; $55b1: $71
	ld h, $bd                                        ; $55b2: $26 $bd
	ld h, $07                                        ; $55b4: $26 $07
	ld b, a                                          ; $55b6: $47
	add a                                            ; $55b7: $87
	add b                                            ; $55b8: $80
	inc b                                            ; $55b9: $04

Jump_064_55ba:
	rrca                                             ; $55ba: $0f
	inc b                                            ; $55bb: $04
	ld b, $00                                        ; $55bc: $06 $00
	ld a, e                                          ; $55be: $7b
	adc $07                                          ; $55bf: $ce $07
	cp $ff                                           ; $55c1: $fe $ff
	add d                                            ; $55c3: $82
	ret nz                                           ; $55c4: $c0

	rst $38                                          ; $55c5: $ff
	cp $81                                           ; $55c6: $fe $81
	cp $3c                                           ; $55c8: $fe $3c
	rst SubAFromBC                                          ; $55ca: $e7
	ld a, a                                          ; $55cb: $7f
	push bc                                          ; $55cc: $c5
	and $cd                                          ; $55cd: $e6 $cd
	call c, Call_064_7c58                            ; $55cf: $dc $58 $7c
	ld h, $7c                                        ; $55d2: $26 $7c
	ld a, h                                          ; $55d4: $7c
	jr c, jr_064_5617                                ; $55d5: $38 $40

	nop                                              ; $55d7: $00
	sbc b                                            ; $55d8: $98
	cp a                                             ; $55d9: $bf
	ld bc, $010f                                     ; $55da: $01 $0f $01
	rrca                                             ; $55dd: $0f
	inc bc                                           ; $55de: $03
	ld e, $7b                                        ; $55df: $1e $7b
	cp $83                                           ; $55e1: $fe $83
	dec e                                            ; $55e3: $1d
	rlca                                             ; $55e4: $07
	ld a, $0f                                        ; $55e5: $3e $0f
	ld a, [hl]                                       ; $55e7: $7e
	rra                                              ; $55e8: $1f
	push af                                          ; $55e9: $f5
	ccf                                              ; $55ea: $3f
	push af                                          ; $55eb: $f5
	rst $38                                          ; $55ec: $ff
	call nc, $d4ff                                   ; $55ed: $d4 $ff $d4
	ld a, a                                          ; $55f0: $7f
	jp nc, $ca7f                                     ; $55f1: $d2 $7f $ca

	ld a, a                                          ; $55f4: $7f
	bit 7, a                                         ; $55f5: $cb $7f
	jp hl                                            ; $55f7: $e9


	ld a, a                                          ; $55f8: $7f
	ld sp, hl                                        ; $55f9: $f9
	ld a, a                                          ; $55fa: $7f
	ld a, b                                          ; $55fb: $78
	ld e, a                                          ; $55fc: $5f
	ld hl, sp+$1f                                    ; $55fd: $f8 $1f
	ld b, e                                          ; $55ff: $43
	jr nz, @-$60                                     ; $5600: $20 $9e

	ldh [c], a                                       ; $5602: $e2
	ld c, a                                          ; $5603: $4f
	jr nz, jr_064_5659                               ; $5604: $20 $53

	ld b, b                                          ; $5606: $40
	ld a, a                                          ; $5607: $7f
	ld c, [hl]                                       ; $5608: $4e
	sub h                                            ; $5609: $94
	inc a                                            ; $560a: $3c
	rst $38                                          ; $560b: $ff
	cp $cb                                           ; $560c: $fe $cb
	xor $52                                          ; $560e: $ee $52
	ret c                                            ; $5610: $d8

	xor d                                            ; $5611: $aa
	ld a, b                                          ; $5612: $78
	inc a                                            ; $5613: $3c
	inc a                                            ; $5614: $3c
	ld l, a                                          ; $5615: $6f
	ld b, b                                          ; $5616: $40

jr_064_5617:
	ld e, e                                          ; $5617: $5b
	add b                                            ; $5618: $80
	ld [hl], a                                       ; $5619: $77
	ldh [c], a                                       ; $561a: $e2
	sbc d                                            ; $561b: $9a
	ld a, [hl]                                       ; $561c: $7e
	call Call_064_58ec                               ; $561d: $cd $ec $58
	ld e, h                                          ; $5620: $5c
	ld a, e                                          ; $5621: $7b
	add b                                            ; $5622: $80
	sbc [hl]                                         ; $5623: $9e
	inc a                                            ; $5624: $3c
	ld h, a                                          ; $5625: $67
	add b                                            ; $5626: $80
	dec sp                                           ; $5627: $3b
	and b                                            ; $5628: $a0
	sbc d                                            ; $5629: $9a
	call z, $807d                                    ; $562a: $cc $7d $80
	cp c                                             ; $562d: $b9
	cp c                                             ; $562e: $b9
	dec hl                                           ; $562f: $2b
	and b                                            ; $5630: $a0
	cp a                                             ; $5631: $bf
	rst $38                                          ; $5632: $ff
	rst $38                                          ; $5633: $ff
	sbc b                                            ; $5634: $98
	inc a                                            ; $5635: $3c
	and $ee                                          ; $5636: $e6 $ee
	xor d                                            ; $5638: $aa
	db $fc                                           ; $5639: $fc
	ld a, h                                          ; $563a: $7c
	ld a, h                                          ; $563b: $7c
	dec sp                                           ; $563c: $3b
	and b                                            ; $563d: $a0
	cp a                                             ; $563e: $bf
	rst $38                                          ; $563f: $ff
	db $fd                                           ; $5640: $fd
	sbc e                                            ; $5641: $9b
	inc a                                            ; $5642: $3c
	ld h, a                                          ; $5643: $67
	ld l, a                                          ; $5644: $6f
	ld c, d                                          ; $5645: $4a
	inc bc                                           ; $5646: $03
	and b                                            ; $5647: $a0
	inc de                                           ; $5648: $13
	and b                                            ; $5649: $a0
	sbc e                                            ; $564a: $9b
	nop                                              ; $564b: $00
	ld a, $02                                        ; $564c: $3e $02
	cp $23                                           ; $564e: $fe $23
	and b                                            ; $5650: $a0
	ld a, a                                          ; $5651: $7f
	cp $9b                                           ; $5652: $fe $9b
	sbc a                                            ; $5654: $9f
	ld bc, $7e7e                                     ; $5655: $01 $7e $7e
	ld e, a                                          ; $5658: $5f

jr_064_5659:
	and b                                            ; $5659: $a0
	rst $38                                          ; $565a: $ff
	sbc h                                            ; $565b: $9c
	inc a                                            ; $565c: $3c
	inc c                                            ; $565d: $0c
	inc b                                            ; $565e: $04
	cp h                                             ; $565f: $bc
	inc e                                            ; $5660: $1c
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	add c                                            ; $5663: $81
	rst FarCall                                          ; $5664: $f7
	sbc e                                            ; $5665: $9b
	db $e3                                           ; $5666: $e3
	rst $38                                          ; $5667: $ff
	ld e, $ff                                        ; $5668: $1e $ff
	cp [hl]                                          ; $566a: $be
	rlca                                             ; $566b: $07
	add e                                            ; $566c: $83
	pop hl                                           ; $566d: $e1
	sbc c                                            ; $566e: $99
	ret nz                                           ; $566f: $c0

	ld sp, hl                                        ; $5670: $f9
	ldh a, [$8e]                                     ; $5671: $f0 $8e
	db $fc                                           ; $5673: $fc
	jp $bd7b                                         ; $5674: $c3 $7b $bd


	sbc d                                            ; $5677: $9a
	inc a                                            ; $5678: $3c
	inc e                                            ; $5679: $1c
	inc a                                            ; $567a: $3c
	jr jr_064_5695                                   ; $567b: $18 $18

	rla                                              ; $567d: $17
	ldh [$df], a                                     ; $567e: $e0 $df
	inc a                                            ; $5680: $3c
	rst SubAFromDE                                          ; $5681: $df
	jr c, jr_064_56f7                                ; $5682: $38 $73

	sbc $37                                          ; $5684: $de $37
	ldh [$dc], a                                     ; $5686: $e0 $dc
	inc a                                            ; $5688: $3c
	sbc [hl]                                         ; $5689: $9e
	jr c, jr_064_56fb                                ; $568a: $38 $6f

	cp [hl]                                          ; $568c: $be
	scf                                              ; $568d: $37
	ldh [$61], a                                     ; $568e: $e0 $61
	ld bc, $8480                                     ; $5690: $01 $80 $84
	rst $38                                          ; $5693: $ff
	adc h                                            ; $5694: $8c

jr_064_5695:
	rst $38                                          ; $5695: $ff
	inc e                                            ; $5696: $1c
	rst $38                                          ; $5697: $ff
	add hl, sp                                       ; $5698: $39
	rst $38                                          ; $5699: $ff
	ld a, e                                          ; $569a: $7b
	rst $38                                          ; $569b: $ff
	rst FarCall                                          ; $569c: $f7
	cp $fe                                           ; $569d: $fe $fe
	db $fd                                           ; $569f: $fd
	dec a                                            ; $56a0: $3d
	ldh a, [c]                                       ; $56a1: $f2
	ld a, l                                          ; $56a2: $7d
	db $e3                                           ; $56a3: $e3
	ld h, e                                          ; $56a4: $63
	rst GetHLinHL                                          ; $56a5: $cf
	ld a, l                                          ; $56a6: $7d
	add c                                            ; $56a7: $81
	cp b                                             ; $56a8: $b8
	cp b                                             ; $56a9: $b8
	cp d                                             ; $56aa: $ba
	sbc b                                            ; $56ab: $98
	db $dd                                           ; $56ac: $dd
	call z, $e0ec                                    ; $56ad: $cc $ec $e0
	xor [hl]                                         ; $56b0: $ae
	add b                                            ; $56b1: $80
	ldh [$ef], a                                     ; $56b2: $e0 $ef
	cp [hl]                                          ; $56b4: $be
	db $ed                                           ; $56b5: $ed
	cp e                                             ; $56b6: $bb
	db $dd                                           ; $56b7: $dd
	xor e                                            ; $56b8: $ab
	push de                                          ; $56b9: $d5
	xor e                                            ; $56ba: $ab
	push de                                          ; $56bb: $d5
	ld l, e                                          ; $56bc: $6b
	push de                                          ; $56bd: $d5
	ld l, e                                          ; $56be: $6b
	ld d, l                                          ; $56bf: $55
	dec hl                                           ; $56c0: $2b
	add l                                            ; $56c1: $85
	dec sp                                           ; $56c2: $3b
	xor l                                            ; $56c3: $ad
	dec de                                           ; $56c4: $1b
	call Call_064_591b                               ; $56c5: $cd $1b $59
	rrca                                             ; $56c8: $0f
	dec c                                            ; $56c9: $0d
	rlca                                             ; $56ca: $07
	dec b                                            ; $56cb: $05
	rlca                                             ; $56cc: $07
	or a                                             ; $56cd: $b7
	inc bc                                           ; $56ce: $03
	cp e                                             ; $56cf: $bb
	rlca                                             ; $56d0: $07
	add d                                            ; $56d1: $82
	ld d, c                                          ; $56d2: $51
	xor a                                            ; $56d3: $af
	ld h, a                                          ; $56d4: $67
	db $fd                                           ; $56d5: $fd
	ld l, e                                          ; $56d6: $6b
	rst $38                                          ; $56d7: $ff
	cp c                                             ; $56d8: $b9
	rst $38                                          ; $56d9: $ff
	db $fc                                           ; $56da: $fc
	or a                                             ; $56db: $b7
	add c                                            ; $56dc: $81
	ld a, a                                          ; $56dd: $7f
	ld a, [hl]                                       ; $56de: $7e
	add e                                            ; $56df: $83
	rst $38                                          ; $56e0: $ff
	inc a                                            ; $56e1: $3c
	rst JumpTable                                          ; $56e2: $c7
	cp $8b                                           ; $56e3: $fe $8b
	adc $9b                                          ; $56e5: $ce $9b
	cp b                                             ; $56e7: $b8
	ld [hl], d                                       ; $56e8: $72
	ld hl, sp-$36                                    ; $56e9: $f8 $ca
	ld a, b                                          ; $56eb: $78
	inc a                                            ; $56ec: $3c
	jr nc, jr_064_56ef                               ; $56ed: $30 $00

jr_064_56ef:
	cp h                                             ; $56ef: $bc
	rst $38                                          ; $56f0: $ff
	nop                                              ; $56f1: $00
	nop                                              ; $56f2: $00
	add b                                            ; $56f3: $80
	ret nz                                           ; $56f4: $c0

	add b                                            ; $56f5: $80
	add b                                            ; $56f6: $80

jr_064_56f7:
	ldh [$c0], a                                     ; $56f7: $e0 $c0
	ldh a, [$e0]                                     ; $56f9: $f0 $e0

jr_064_56fb:
	cp h                                             ; $56fb: $bc
	ld hl, sp-$41                                    ; $56fc: $f8 $bf
	rst $38                                          ; $56fe: $ff
	xor a                                            ; $56ff: $af
	ld hl, sp+$57                                    ; $5700: $f8 $57
	db $fc                                           ; $5702: $fc
	ld d, a                                          ; $5703: $57
	cp $4b                                           ; $5704: $fe $4b
	cp $2b                                           ; $5706: $fe $2b
	rst $38                                          ; $5708: $ff
	dec l                                            ; $5709: $2d
	rst $38                                          ; $570a: $ff
	dec h                                            ; $570b: $25
	rst $38                                          ; $570c: $ff
	sub [hl]                                         ; $570d: $96
	rst $38                                          ; $570e: $ff
	sub d                                            ; $570f: $92
	rst $38                                          ; $5710: $ff
	ld h, $ff                                        ; $5711: $26 $ff
	halt                                             ; $5713: $76
	db $dd                                           ; $5714: $dd
	ld a, a                                          ; $5715: $7f
	cp $92                                           ; $5716: $fe $92
	or $9d                                           ; $5718: $f6 $9d
	halt                                             ; $571a: $76
	sbc l                                            ; $571b: $9d
	cp a                                             ; $571c: $bf
	reti                                             ; $571d: $d9


	and c                                            ; $571e: $a1
	ld d, a                                          ; $571f: $57
	adc [hl]                                         ; $5720: $8e
	ld a, a                                          ; $5721: $7f
	or a                                             ; $5722: $b7
	ld [hl], c                                       ; $5723: $71
	ld h, $bd                                        ; $5724: $26 $bd
	ld h, $07                                        ; $5726: $26 $07
	ld b, a                                          ; $5728: $47
	add a                                            ; $5729: $87
	add b                                            ; $572a: $80
	inc b                                            ; $572b: $04
	rrca                                             ; $572c: $0f
	inc b                                            ; $572d: $04
	ld b, $00                                        ; $572e: $06 $00
	ld a, e                                          ; $5730: $7b
	adc $27                                          ; $5731: $ce $27
	cp $cf                                           ; $5733: $fe $cf
	ldh a, [c]                                       ; $5735: $f2
	add b                                            ; $5736: $80
	rst $38                                          ; $5737: $ff
	cp $81                                           ; $5738: $fe $81
	cp $3c                                           ; $573a: $fe $3c
	rst SubAFromBC                                          ; $573c: $e7
	ld a, a                                          ; $573d: $7f
	push bc                                          ; $573e: $c5
	and $cd                                          ; $573f: $e6 $cd
	call c, Call_064_7c58                            ; $5741: $dc $58 $7c
	ld h, $7c                                        ; $5744: $26 $7c
	ld a, h                                          ; $5746: $7c
	jr c, jr_064_5789                                ; $5747: $38 $40

	nop                                              ; $5749: $00
	sbc b                                            ; $574a: $98
	cp a                                             ; $574b: $bf
	ld bc, $010f                                     ; $574c: $01 $0f $01
	rrca                                             ; $574f: $0f
	inc bc                                           ; $5750: $03
	ld e, $7b                                        ; $5751: $1e $7b
	cp $83                                           ; $5753: $fe $83
	dec e                                            ; $5755: $1d
	rlca                                             ; $5756: $07
	ld a, $0f                                        ; $5757: $3e $0f
	ld a, [hl]                                       ; $5759: $7e
	rra                                              ; $575a: $1f
	push af                                          ; $575b: $f5
	ccf                                              ; $575c: $3f
	push af                                          ; $575d: $f5
	rst $38                                          ; $575e: $ff
	call nc, $d4ff                                   ; $575f: $d4 $ff $d4
	ld a, a                                          ; $5762: $7f
	jp nc, $ca7f                                     ; $5763: $d2 $7f $ca

	ld a, a                                          ; $5766: $7f
	bit 7, a                                         ; $5767: $cb $7f
	jp hl                                            ; $5769: $e9


	ld a, a                                          ; $576a: $7f
	ld sp, hl                                        ; $576b: $f9
	ld a, a                                          ; $576c: $7f
	ld a, b                                          ; $576d: $78
	ld e, a                                          ; $576e: $5f
	ld hl, sp+$1f                                    ; $576f: $f8 $1f
	ld b, e                                          ; $5771: $43
	jr nz, @-$60                                     ; $5772: $20 $9e

	ldh [c], a                                       ; $5774: $e2
	ld c, a                                          ; $5775: $4f
	jr nz, jr_064_57cb                               ; $5776: $20 $53

	ld b, b                                          ; $5778: $40
	ld a, a                                          ; $5779: $7f
	ld c, [hl]                                       ; $577a: $4e
	sbc d                                            ; $577b: $9a
	ld a, h                                          ; $577c: $7c
	rst GetHLinHL                                          ; $577d: $cf
	sbc $9b                                          ; $577e: $de $9b
	cp [hl]                                          ; $5780: $be
	ld d, a                                          ; $5781: $57
	ld b, b                                          ; $5782: $40
	ld e, e                                          ; $5783: $5b
	add b                                            ; $5784: $80
	ld a, a                                          ; $5785: $7f
	ldh a, [$7f]                                     ; $5786: $f0 $7f
	ld a, [hl]                                       ; $5788: $7e

jr_064_5789:
	sbc h                                            ; $5789: $9c
	ld l, [hl]                                       ; $578a: $6e
	call $4fde                                       ; $578b: $cd $de $4f
	add b                                            ; $578e: $80
	dec sp                                           ; $578f: $3b
	and b                                            ; $5790: $a0
	sbc [hl]                                         ; $5791: $9e
	call z, $a01b                                    ; $5792: $cc $1b $a0
	ld a, e                                          ; $5795: $7b
	sbc [hl]                                         ; $5796: $9e
	sbc e                                            ; $5797: $9b
	rst SubAFromDE                                          ; $5798: $df
	cp $32                                           ; $5799: $fe $32
	cp [hl]                                          ; $579b: $be
	dec hl                                           ; $579c: $2b
	and b                                            ; $579d: $a0
	ld a, e                                          ; $579e: $7b
	sbc [hl]                                         ; $579f: $9e
	sbc e                                            ; $57a0: $9b
	rst AddAOntoHL                                          ; $57a1: $ef
	ld a, [hl]                                       ; $57a2: $7e
	ret c                                            ; $57a3: $d8

	call c, $a003                                    ; $57a4: $dc $03 $a0
	rla                                              ; $57a7: $17
	and b                                            ; $57a8: $a0
	cp a                                             ; $57a9: $bf
	ld a, a                                          ; $57aa: $7f
	sbc [hl]                                         ; $57ab: $9e
	sbc d                                            ; $57ac: $9a
	add d                                            ; $57ad: $82
	cp $7c                                           ; $57ae: $fe $7c
	ld a, h                                          ; $57b0: $7c
	ld a, b                                          ; $57b1: $78
	inc sp                                           ; $57b2: $33
	and b                                            ; $57b3: $a0
	cp a                                             ; $57b4: $bf
	rst $38                                          ; $57b5: $ff
	sbc a                                            ; $57b6: $9f
	sbc d                                            ; $57b7: $9a
	inc bc                                           ; $57b8: $03
	ld a, [hl]                                       ; $57b9: $7e
	ld a, h                                          ; $57ba: $7c
	ld a, h                                          ; $57bb: $7c
	inc a                                            ; $57bc: $3c
	ld h, a                                          ; $57bd: $67
	and b                                            ; $57be: $a0
	rst $38                                          ; $57bf: $ff
	rst SubAFromDE                                          ; $57c0: $df
	inc e                                            ; $57c1: $1c
	sbc [hl]                                         ; $57c2: $9e
	inc b                                            ; $57c3: $04
	cp h                                             ; $57c4: $bc
	inc c                                            ; $57c5: $0c
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	add c                                            ; $57c8: $81
	rst FarCall                                          ; $57c9: $f7
	sbc e                                            ; $57ca: $9b

jr_064_57cb:
	db $e3                                           ; $57cb: $e3
	rst $38                                          ; $57cc: $ff
	ld e, $ff                                        ; $57cd: $1e $ff
	cp [hl]                                          ; $57cf: $be
	rlca                                             ; $57d0: $07
	add e                                            ; $57d1: $83
	pop hl                                           ; $57d2: $e1
	sbc c                                            ; $57d3: $99
	ret nz                                           ; $57d4: $c0

	ld sp, hl                                        ; $57d5: $f9
	ldh a, [$8e]                                     ; $57d6: $f0 $8e
	db $fc                                           ; $57d8: $fc
	jp $bd7b                                         ; $57d9: $c3 $7b $bd


	sbc d                                            ; $57dc: $9a
	inc a                                            ; $57dd: $3c
	inc e                                            ; $57de: $1c
	inc a                                            ; $57df: $3c
	jr jr_064_57fe                                   ; $57e0: $18 $1c

	rla                                              ; $57e2: $17
	ldh [$dd], a                                     ; $57e3: $e0 $dd
	inc a                                            ; $57e5: $3c
	ld [hl], e                                       ; $57e6: $73
	sbc $37                                          ; $57e7: $de $37
	ldh [$7f], a                                     ; $57e9: $e0 $7f
	sub [hl]                                         ; $57eb: $96
	ld [hl], a                                       ; $57ec: $77
	cp $1f                                           ; $57ed: $fe $1f
	ldh [hLCDCIntHandlerIdx], a                                     ; $57ef: $e0 $81
	ld bc, $8480                                     ; $57f1: $01 $80 $84
	rst $38                                          ; $57f4: $ff
	adc h                                            ; $57f5: $8c
	rst $38                                          ; $57f6: $ff
	inc e                                            ; $57f7: $1c
	rst $38                                          ; $57f8: $ff
	add hl, sp                                       ; $57f9: $39
	rst $38                                          ; $57fa: $ff
	ld a, e                                          ; $57fb: $7b
	rst $38                                          ; $57fc: $ff
	rst FarCall                                          ; $57fd: $f7

jr_064_57fe:
	cp $fe                                           ; $57fe: $fe $fe
	db $fd                                           ; $5800: $fd
	dec a                                            ; $5801: $3d
	ldh a, [c]                                       ; $5802: $f2
	ld a, l                                          ; $5803: $7d
	db $e3                                           ; $5804: $e3
	ld h, e                                          ; $5805: $63
	rst GetHLinHL                                          ; $5806: $cf
	ld a, l                                          ; $5807: $7d
	add c                                            ; $5808: $81
	cp b                                             ; $5809: $b8
	cp b                                             ; $580a: $b8
	cp d                                             ; $580b: $ba
	sbc b                                            ; $580c: $98
	db $dd                                           ; $580d: $dd
	call z, $e0ec                                    ; $580e: $cc $ec $e0
	xor [hl]                                         ; $5811: $ae
	add b                                            ; $5812: $80
	ldh [$ef], a                                     ; $5813: $e0 $ef
	cp [hl]                                          ; $5815: $be
	db $ed                                           ; $5816: $ed
	cp e                                             ; $5817: $bb
	db $dd                                           ; $5818: $dd
	xor e                                            ; $5819: $ab
	push de                                          ; $581a: $d5
	xor e                                            ; $581b: $ab
	push de                                          ; $581c: $d5
	ld l, e                                          ; $581d: $6b
	push de                                          ; $581e: $d5
	ld l, e                                          ; $581f: $6b
	ld d, l                                          ; $5820: $55
	dec hl                                           ; $5821: $2b
	add l                                            ; $5822: $85
	dec sp                                           ; $5823: $3b
	xor l                                            ; $5824: $ad
	dec de                                           ; $5825: $1b
	call Call_064_591b                               ; $5826: $cd $1b $59
	rrca                                             ; $5829: $0f
	dec c                                            ; $582a: $0d
	rlca                                             ; $582b: $07
	dec b                                            ; $582c: $05
	rlca                                             ; $582d: $07
	or a                                             ; $582e: $b7
	inc bc                                           ; $582f: $03
	cp e                                             ; $5830: $bb
	rlca                                             ; $5831: $07
	add b                                            ; $5832: $80
	ld d, c                                          ; $5833: $51
	xor a                                            ; $5834: $af
	ld h, a                                          ; $5835: $67
	db $fd                                           ; $5836: $fd
	ld l, e                                          ; $5837: $6b
	rst $38                                          ; $5838: $ff
	cp c                                             ; $5839: $b9
	rst $38                                          ; $583a: $ff
	db $fc                                           ; $583b: $fc
	or a                                             ; $583c: $b7
	add c                                            ; $583d: $81
	ld a, a                                          ; $583e: $7f
	ld a, [hl]                                       ; $583f: $7e
	add e                                            ; $5840: $83
	rst $38                                          ; $5841: $ff
	jr c, @+$01                                      ; $5842: $38 $ff

	db $fc                                           ; $5844: $fc
	add a                                            ; $5845: $87
	adc $9b                                          ; $5846: $ce $9b
	cp [hl]                                          ; $5848: $be
	ld [hl], d                                       ; $5849: $72
	ld hl, sp-$36                                    ; $584a: $f8 $ca
	ld a, b                                          ; $584c: $78
	inc a                                            ; $584d: $3c
	jr nc, jr_064_5850                               ; $584e: $30 $00

jr_064_5850:
	nop                                              ; $5850: $00
	rst $38                                          ; $5851: $ff
	db $fc                                           ; $5852: $fc
	add b                                            ; $5853: $80
	add b                                            ; $5854: $80
	nop                                              ; $5855: $00
	ret nz                                           ; $5856: $c0

	add b                                            ; $5857: $80
	ldh [$c0], a                                     ; $5858: $e0 $c0
	ldh a, [$e0]                                     ; $585a: $f0 $e0
	cp h                                             ; $585c: $bc
	ld hl, sp-$41                                    ; $585d: $f8 $bf
	rst $38                                          ; $585f: $ff
	xor a                                            ; $5860: $af
	ld hl, sp+$57                                    ; $5861: $f8 $57
	db $fc                                           ; $5863: $fc
	ld d, a                                          ; $5864: $57
	cp $4b                                           ; $5865: $fe $4b
	cp $2b                                           ; $5867: $fe $2b
	rst $38                                          ; $5869: $ff
	dec l                                            ; $586a: $2d
	rst $38                                          ; $586b: $ff
	dec h                                            ; $586c: $25
	rst $38                                          ; $586d: $ff
	sub [hl]                                         ; $586e: $96
	rst $38                                          ; $586f: $ff
	sub d                                            ; $5870: $92
	rst $38                                          ; $5871: $ff
	ld h, $80                                        ; $5872: $26 $80

jr_064_5874:
	rst $38                                          ; $5874: $ff
	halt                                             ; $5875: $76
	db $dd                                           ; $5876: $dd
	halt                                             ; $5877: $76
	db $dd                                           ; $5878: $dd
	or $9d                                           ; $5879: $f6 $9d
	halt                                             ; $587b: $76
	sbc l                                            ; $587c: $9d
	cp a                                             ; $587d: $bf
	reti                                             ; $587e: $d9


	and c                                            ; $587f: $a1
	ld d, a                                          ; $5880: $57
	adc [hl]                                         ; $5881: $8e
	ld a, a                                          ; $5882: $7f
	or a                                             ; $5883: $b7
	ld [hl], c                                       ; $5884: $71
	ld h, $00                                        ; $5885: $26 $00
	ld h, $00                                        ; $5887: $26 $00
	rlca                                             ; $5889: $07
	nop                                              ; $588a: $00
	ld b, a                                          ; $588b: $47
	nop                                              ; $588c: $00
	add a                                            ; $588d: $87
	inc b                                            ; $588e: $04
	rrca                                             ; $588f: $0f
	inc b                                            ; $5890: $04
	ld b, $00                                        ; $5891: $06 $00
	add b                                            ; $5893: $80
	ld a, e                                          ; $5894: $7b
	adc $27                                          ; $5895: $ce $27
	cp $cf                                           ; $5897: $fe $cf
	ld a, [$ff80]                                    ; $5899: $fa $80 $ff
	cp $81                                           ; $589c: $fe $81
	cp $3c                                           ; $589e: $fe $3c
	rst $38                                          ; $58a0: $ff
	ld a, [hl]                                       ; $58a1: $7e
	push bc                                          ; $58a2: $c5
	and $cd                                          ; $58a3: $e6 $cd
	call c, Call_064_7c58                            ; $58a5: $dc $58 $7c
	ld h, $7c                                        ; $58a8: $26 $7c
	ld a, h                                          ; $58aa: $7c
	jr c, jr_064_58ed                                ; $58ab: $38 $40

	nop                                              ; $58ad: $00
	cp a                                             ; $58ae: $bf
	ld bc, $010f                                     ; $58af: $01 $0f $01
	rrca                                             ; $58b2: $0f
	sbc l                                            ; $58b3: $9d
	inc bc                                           ; $58b4: $03
	ld e, $7b                                        ; $58b5: $1e $7b
	cp $83                                           ; $58b7: $fe $83
	dec e                                            ; $58b9: $1d
	rlca                                             ; $58ba: $07
	ld a, $0f                                        ; $58bb: $3e $0f
	ld a, [hl]                                       ; $58bd: $7e
	rra                                              ; $58be: $1f
	push af                                          ; $58bf: $f5
	ccf                                              ; $58c0: $3f
	push af                                          ; $58c1: $f5
	rst $38                                          ; $58c2: $ff
	call nc, $d4ff                                   ; $58c3: $d4 $ff $d4
	ld a, a                                          ; $58c6: $7f
	jp nc, $ca7f                                     ; $58c7: $d2 $7f $ca

	ld a, a                                          ; $58ca: $7f
	bit 7, a                                         ; $58cb: $cb $7f
	jp hl                                            ; $58cd: $e9


	ld a, a                                          ; $58ce: $7f
	ld sp, hl                                        ; $58cf: $f9
	ld a, a                                          ; $58d0: $7f
	ld a, b                                          ; $58d1: $78
	ld e, a                                          ; $58d2: $5f
	ld hl, sp+$1f                                    ; $58d3: $f8 $1f
	ld b, e                                          ; $58d5: $43
	jr nz, jr_064_5874                               ; $58d6: $20 $9c

	ldh [c], a                                       ; $58d8: $e2
	ld h, e                                          ; $58d9: $63
	call $2057                                       ; $58da: $cd $57 $20
	ld a, a                                          ; $58dd: $7f
	ld b, b                                          ; $58de: $40

Call_064_58df:
	sbc c                                            ; $58df: $99
	ld l, c                                          ; $58e0: $69
	rst $38                                          ; $58e1: $ff
	cp a                                             ; $58e2: $bf
	rst $38                                          ; $58e3: $ff
	cp $b1                                           ; $58e4: $fe $b1
	ld [hl], e                                       ; $58e6: $73
	ld b, b                                          ; $58e7: $40
	ld a, a                                          ; $58e8: $7f
	ld c, [hl]                                       ; $58e9: $4e
	sbc h                                            ; $58ea: $9c
	ld a, h                                          ; $58eb: $7c

Call_064_58ec:
	rst $38                                          ; $58ec: $ff

jr_064_58ed:
	cp $4f                                           ; $58ed: $fe $4f
	ld b, b                                          ; $58ef: $40
	ld a, a                                          ; $58f0: $7f
	add b                                            ; $58f1: $80
	sbc d                                            ; $58f2: $9a
	rlca                                             ; $58f3: $07
	cp $ff                                           ; $58f4: $fe $ff
	add d                                            ; $58f6: $82
	ret nz                                           ; $58f7: $c0

	ld [hl], a                                       ; $58f8: $77
	add b                                            ; $58f9: $80
	sbc b                                            ; $58fa: $98
	nop                                              ; $58fb: $00
	cp $3e                                           ; $58fc: $fe $3e
	rst $38                                          ; $58fe: $ff
	ld a, a                                          ; $58ff: $7f
	call $4fde                                       ; $5900: $cd $de $4f
	add b                                            ; $5903: $80
	dec sp                                           ; $5904: $3b
	and b                                            ; $5905: $a0
	sbc [hl]                                         ; $5906: $9e
	call z, $a01b                                    ; $5907: $cc $1b $a0
	ld [hl], a                                       ; $590a: $77
	cp $98                                           ; $590b: $fe $98
	db $fc                                           ; $590d: $fc
	sbc [hl]                                         ; $590e: $9e
	cp [hl]                                          ; $590f: $be
	ld a, [hl+]                                      ; $5910: $2a
	ld hl, sp+$7c                                    ; $5911: $f8 $7c
	ld [hl], b                                       ; $5913: $70
	dec sp                                           ; $5914: $3b
	and b                                            ; $5915: $a0
	ld [hl], a                                       ; $5916: $77
	ldh [c], a                                       ; $5917: $e2
	sbc e                                            ; $5918: $9b
	ld a, $4f                                        ; $5919: $3e $4f

Call_064_591b:
	ld e, a                                          ; $591b: $5f
	ld d, $03                                        ; $591c: $16 $03
	and b                                            ; $591e: $a0
	ld d, a                                          ; $591f: $57
	and b                                            ; $5920: $a0
	ld e, d                                          ; $5921: $5a
	add b                                            ; $5922: $80
	ld [hl], e                                       ; $5923: $73
	and b                                            ; $5924: $a0
	sub a                                            ; $5925: $97
	ld a, a                                          ; $5926: $7f
	nop                                              ; $5927: $00
	sbc [hl]                                         ; $5928: $9e
	add d                                            ; $5929: $82
	cp $7c                                           ; $592a: $fe $7c
	db $fc                                           ; $592c: $fc
	ld hl, sp+$67                                    ; $592d: $f8 $67
	and b                                            ; $592f: $a0
	ld h, d                                          ; $5930: $62
	ret nz                                           ; $5931: $c0

	ld l, a                                          ; $5932: $6f
	add d                                            ; $5933: $82
	sbc b                                            ; $5934: $98
	nop                                              ; $5935: $00
	sbc a                                            ; $5936: $9f
	add e                                            ; $5937: $83
	ld a, [hl]                                       ; $5938: $7e
	ld a, h                                          ; $5939: $7c
	ld a, [hl]                                       ; $593a: $7e
	ld a, $67                                        ; $593b: $3e $67
	and b                                            ; $593d: $a0
	rst $38                                          ; $593e: $ff
	sbc d                                            ; $593f: $9a
	inc e                                            ; $5940: $1c
	inc c                                            ; $5941: $0c

jr_064_5942:
	inc a                                            ; $5942: $3c
	db $10                                           ; $5943: $10
	jr jr_064_5942                                   ; $5944: $18 $fc

	sbc b                                            ; $5946: $98
	add c                                            ; $5947: $81
	nop                                              ; $5948: $00
	rst FarCall                                          ; $5949: $f7
	db $e3                                           ; $594a: $e3
	rst $38                                          ; $594b: $ff
	ld e, $ff                                        ; $594c: $1e $ff
	ld a, d                                          ; $594e: $7a
	add d                                            ; $594f: $82
	sub [hl]                                         ; $5950: $96
	add e                                            ; $5951: $83
	nop                                              ; $5952: $00
	pop hl                                           ; $5953: $e1
	ret nz                                           ; $5954: $c0

	ld sp, hl                                        ; $5955: $f9
	ldh a, [$8e]                                     ; $5956: $f0 $8e
	db $fc                                           ; $5958: $fc
	jp $bd7b                                         ; $5959: $c3 $7b $bd


	ld a, e                                          ; $595c: $7b
	ldh [$df], a                                     ; $595d: $e0 $df
	jr jr_064_5970                                   ; $595f: $18 $0f

	ldh [$9e], a                                     ; $5961: $e0 $9e
	inc e                                            ; $5963: $1c
	ld l, a                                          ; $5964: $6f
	sbc $37                                          ; $5965: $de $37
	ldh [$7f], a                                     ; $5967: $e0 $7f
	db $e4                                           ; $5969: $e4
	sbc e                                            ; $596a: $9b
	ld a, h                                          ; $596b: $7c
	inc a                                            ; $596c: $3c
	ld a, h                                          ; $596d: $7c
	inc a                                            ; $596e: $3c
	rra                                              ; $596f: $1f

jr_064_5970:
	ldh [rAUD1SWEEP], a                              ; $5970: $e0 $10
	add e                                            ; $5972: $83
	add b                                            ; $5973: $80
	ld bc, $0502                                     ; $5974: $01 $02 $05
	dec bc                                           ; $5977: $0b
	rrca                                             ; $5978: $0f
	ld d, $2c                                        ; $5979: $16 $2c
	inc a                                            ; $597b: $3c
	ld bc, $0603                                     ; $597c: $01 $03 $06
	inc c                                            ; $597f: $0c
	ld [$3319], sp                                   ; $5980: $08 $19 $33
	inc hl                                           ; $5983: $23
	ld e, b                                          ; $5984: $58
	cp b                                             ; $5985: $b8
	ld hl, sp-$48                                    ; $5986: $f8 $b8
	call c, $0c36                                    ; $5988: $dc $36 $0c
	inc bc                                           ; $598b: $03
	ld h, a                                          ; $598c: $67
	rst JumpTable                                          ; $598d: $c7
	add a                                            ; $598e: $87
	rst JumpTable                                          ; $598f: $c7
	db $e3                                           ; $5990: $e3
	add hl, sp                                       ; $5991: $39
	rrca                                             ; $5992: $0f
	sbc [hl]                                         ; $5993: $9e
	inc bc                                           ; $5994: $03
	ldh a, [rPCM34]                                  ; $5995: $f0 $77
	rst GetHLinHL                                          ; $5997: $cf
	sbc e                                            ; $5998: $9b
	rla                                              ; $5999: $17
	ld l, a                                          ; $599a: $6f
	cp a                                             ; $599b: $bf
	nop                                              ; $599c: $00
	ld [hl], a                                       ; $599d: $77
	rst GetHLinHL                                          ; $599e: $cf
	sbc b                                            ; $599f: $98
	jr jr_064_5a12                                   ; $59a0: $18 $70

	ret nz                                           ; $59a2: $c0

	add e                                            ; $59a3: $83
	rrca                                             ; $59a4: $0f
	ccf                                              ; $59a5: $3f
	ld a, a                                          ; $59a6: $7f
	db $dd                                           ; $59a7: $dd
	rst $38                                          ; $59a8: $ff
	ld l, e                                          ; $59a9: $6b
	db $e3                                           ; $59aa: $e3
	sbc [hl]                                         ; $59ab: $9e
	inc bc                                           ; $59ac: $03
	reti                                             ; $59ad: $d9


	rst $38                                          ; $59ae: $ff
	sbc l                                            ; $59af: $9d
	rlca                                             ; $59b0: $07
	add hl, de                                       ; $59b1: $19
	ei                                               ; $59b2: $fb
	sub e                                            ; $59b3: $93
	rst $38                                          ; $59b4: $ff
	ld a, a                                          ; $59b5: $7f
	rra                                              ; $59b6: $1f
	rrca                                             ; $59b7: $0f
	dec bc                                           ; $59b8: $0b
	add hl, bc                                       ; $59b9: $09
	add hl, bc                                       ; $59ba: $09
	dec bc                                           ; $59bb: $0b
	add b                                            ; $59bc: $80
	ld h, c                                          ; $59bd: $61
	add hl, de                                       ; $59be: $19
	dec c                                            ; $59bf: $0d
	db $dd                                           ; $59c0: $dd
	rrca                                             ; $59c1: $0f
	sbc $0a                                          ; $59c2: $de $0a
	sbc [hl]                                         ; $59c4: $9e
	ld c, $dd                                        ; $59c5: $0e $dd
	inc c                                            ; $59c7: $0c
	reti                                             ; $59c8: $d9


	rrca                                             ; $59c9: $0f
	ld [hl], e                                       ; $59ca: $73
	xor a                                            ; $59cb: $af
	sbc h                                            ; $59cc: $9c
	dec de                                           ; $59cd: $1b
	cpl                                              ; $59ce: $2f
	ld e, [hl]                                       ; $59cf: $5e
	ld [hl], a                                       ; $59d0: $77
	call nz, $068b                                   ; $59d1: $c4 $8b $06
	inc e                                            ; $59d4: $1c
	jr nc, jr_064_5a38                               ; $59d5: $30 $61

	ld hl, sp-$10                                    ; $59d7: $f8 $f0
	ldh [$e1], a                                     ; $59d9: $e0 $e1
	jp nz, $84c4                                     ; $59db: $c2 $c4 $84

	ld [$0f87], sp                                   ; $59de: $08 $87 $0f
	rra                                              ; $59e1: $1f
	rra                                              ; $59e2: $1f
	ld a, $3c                                        ; $59e3: $3e $3c
	ld a, h                                          ; $59e5: $7c
	ld hl, sp+$7b                                    ; $59e6: $f8 $7b
	ldh a, [hDisp1_WY]                                     ; $59e8: $f0 $95
	ldh [$c0], a                                     ; $59ea: $e0 $c0
	ret nz                                           ; $59ec: $c0

	add b                                            ; $59ed: $80
	ret nz                                           ; $59ee: $c0

	ld [$2010], sp                                   ; $59ef: $08 $10 $20
	jr nz, @+$42                                     ; $59f2: $20 $40

	ld a, e                                          ; $59f4: $7b
	ld hl, sp-$63                                    ; $59f5: $f8 $9d
	jr c, @+$11                                      ; $59f7: $38 $0f

	db $db                                           ; $59f9: $db
	adc b                                            ; $59fa: $88
	sbc [hl]                                         ; $59fb: $9e
	ld hl, sp-$26                                    ; $59fc: $f8 $da
	rst $38                                          ; $59fe: $ff
	add d                                            ; $59ff: $82
	jp hl                                            ; $5a00: $e9


	add sp, -$18                                     ; $5a01: $e8 $e8
	ret nc                                           ; $5a03: $d0

	ret nc                                           ; $5a04: $d0

	reti                                             ; $5a05: $d9


	rst SubAFromDE                                          ; $5a06: $df
	sbc $9e                                          ; $5a07: $de $9e
	rra                                              ; $5a09: $1f
	rra                                              ; $5a0a: $1f
	ccf                                              ; $5a0b: $3f
	ccf                                              ; $5a0c: $3f
	ld [hl], $30                                     ; $5a0d: $36 $30
	ld sp, $a0d8                                     ; $5a0f: $31 $d8 $a0

jr_064_5a12:
	and c                                            ; $5a12: $a1
	and e                                            ; $5a13: $a3
	and b                                            ; $5a14: $a0
	and b                                            ; $5a15: $a0
	ld b, c                                          ; $5a16: $41
	ld b, c                                          ; $5a17: $41
	scf                                              ; $5a18: $37
	ld a, a                                          ; $5a19: $7f
	ld a, [hl]                                       ; $5a1a: $7e
	ld a, h                                          ; $5a1b: $7c
	ld a, a                                          ; $5a1c: $7f
	ld a, e                                          ; $5a1d: $7b
	ld h, [hl]                                       ; $5a1e: $66
	sbc l                                            ; $5a1f: $9d
	ld bc, $7b07                                     ; $5a20: $01 $07 $7b
	or a                                             ; $5a23: $b7
	ld a, a                                          ; $5a24: $7f
	ld e, l                                          ; $5a25: $5d
	sub [hl]                                         ; $5a26: $96
	ld a, a                                          ; $5a27: $7f
	ld bc, $0906                                     ; $5a28: $01 $06 $09
	ld [de], a                                       ; $5a2b: $12
	inc d                                            ; $5a2c: $14
	inc h                                            ; $5a2d: $24
	ld c, b                                          ; $5a2e: $48
	ld e, d                                          ; $5a2f: $5a
	db $dd                                           ; $5a30: $dd
	rst $38                                          ; $5a31: $ff
	sub [hl]                                         ; $5a32: $96
	cp $fc                                           ; $5a33: $fe $fc
	db $fc                                           ; $5a35: $fc
	ld hl, sp-$2c                                    ; $5a36: $f8 $d4

jr_064_5a38:
	sbc c                                            ; $5a38: $99
	cp [hl]                                          ; $5a39: $be
	cp l                                             ; $5a3a: $bd
	cp e                                             ; $5a3b: $bb
	sbc $bf                                          ; $5a3c: $de $bf
	rst SubAFromDE                                          ; $5a3e: $df
	cp b                                             ; $5a3f: $b8
	add a                                            ; $5a40: $87
	or b                                             ; $5a41: $b0
	ret nc                                           ; $5a42: $d0

	ld d, c                                          ; $5a43: $51
	ld [hl], c                                       ; $5a44: $71
	ld [hl], e                                       ; $5a45: $73
	di                                               ; $5a46: $f3
	cp [hl]                                          ; $5a47: $be
	cp l                                             ; $5a48: $bd
	sbc l                                            ; $5a49: $9d
	ld e, e                                          ; $5a4a: $5b
	ld e, e                                          ; $5a4b: $5b
	ccf                                              ; $5a4c: $3f
	ccf                                              ; $5a4d: $3f
	rra                                              ; $5a4e: $1f
	rst FarCall                                          ; $5a4f: $f7
	rst SubAFromHL                                          ; $5a50: $d7
	sbc a                                            ; $5a51: $9f
	dec b                                            ; $5a52: $05
	dec b                                            ; $5a53: $05
	ld bc, $0000                                     ; $5a54: $01 $00 $00
	ccf                                              ; $5a57: $3f
	ld e, l                                          ; $5a58: $5d
	ld l, a                                          ; $5a59: $6f
	ld hl, sp-$10                                    ; $5a5a: $f8 $f0
	ld a, a                                          ; $5a5c: $7f
	add a                                            ; $5a5d: $87
	add b                                            ; $5a5e: $80
	cp $e6                                           ; $5a5f: $fe $e6
	di                                               ; $5a61: $f3
	ld sp, hl                                        ; $5a62: $f9
	db $fd                                           ; $5a63: $fd
	nop                                              ; $5a64: $00
	ld hl, sp-$31                                    ; $5a65: $f8 $cf
	ld b, l                                          ; $5a67: $45
	dec sp                                           ; $5a68: $3b
	dec e                                            ; $5a69: $1d
	rrca                                             ; $5a6a: $0f
	rlca                                             ; $5a6b: $07
	rst $38                                          ; $5a6c: $ff
	rst FarCall                                          ; $5a6d: $f7
	rrca                                             ; $5a6e: $0f
	dec e                                            ; $5a6f: $1d
	ld [hl], e                                       ; $5a70: $73
	ldh [c], a                                       ; $5a71: $e2
	add h                                            ; $5a72: $84
	rra                                              ; $5a73: $1f
	inc bc                                           ; $5a74: $03
	add hl, bc                                       ; $5a75: $09
	pop af                                           ; $5a76: $f1

jr_064_5a77:
	db $e3                                           ; $5a77: $e3
	adc a                                            ; $5a78: $8f
	rra                                              ; $5a79: $1f
	ld a, a                                          ; $5a7a: $7f
	rst $38                                          ; $5a7b: $ff
	add hl, sp                                       ; $5a7c: $39
	ldh a, [hDisp1_SCX]                                     ; $5a7d: $f0 $91
	ldh a, [$d1]                                     ; $5a7f: $f0 $d1
	pop de                                           ; $5a81: $d1
	or b                                             ; $5a82: $b0
	pop hl                                           ; $5a83: $e1
	rst $38                                          ; $5a84: $ff
	ret nc                                           ; $5a85: $d0

	db $10                                           ; $5a86: $10
	jr nc, jr_064_5af9                               ; $5a87: $30 $70

	pop af                                           ; $5a89: $f1
	ldh [$c0], a                                     ; $5a8a: $e0 $c0
	pop bc                                           ; $5a8c: $c1
	db $ed                                           ; $5a8d: $ed
	sbc h                                            ; $5a8e: $9c
	ld bc, $3f0f                                     ; $5a8f: $01 $0f $3f
	ld [hl], d                                       ; $5a92: $72
	ret nc                                           ; $5a93: $d0

	sbc e                                            ; $5a94: $9b
	ld bc, $300e                                     ; $5a95: $01 $0e $30
	rst JumpTable                                          ; $5a98: $c7
	jp c, $93ff                                      ; $5a99: $da $ff $93

	cp $18                                           ; $5a9c: $fe $18
	ld h, d                                          ; $5a9e: $62
	adc b                                            ; $5a9f: $88
	jr nc, jr_064_5b1e                               ; $5aa0: $30 $7c

	or e                                             ; $5aa2: $b3
	cpl                                              ; $5aa3: $2f

jr_064_5aa4:
	ld c, a                                          ; $5aa4: $4f
	db $fc                                           ; $5aa5: $fc
	ldh a, [$c0]                                     ; $5aa6: $f0 $c0
	cp $7f                                           ; $5aa8: $fe $7f
	inc de                                           ; $5aaa: $13
	sub a                                            ; $5aab: $97
	sbc a                                            ; $5aac: $9f
	ld a, [hl]                                       ; $5aad: $7e
	ld hl, sp-$20                                    ; $5aae: $f8 $e0
	ret nz                                           ; $5ab0: $c0

	sbc b                                            ; $5ab1: $98
	jr nc, @+$63                                     ; $5ab2: $30 $61

	ldh [$c1], a                                     ; $5ab4: $e0 $c1
	sbc d                                            ; $5ab6: $9a
	ld h, l                                          ; $5ab7: $65
	ld l, [hl]                                       ; $5ab8: $6e
	ld l, [hl]                                       ; $5ab9: $6e
	xor $ef                                          ; $5aba: $ee $ef
	ld a, e                                          ; $5abc: $7b
	ld c, $7f                                        ; $5abd: $0e $7f
	ld e, b                                          ; $5abf: $58
	rst SubAFromDE                                          ; $5ac0: $df
	or $df                                           ; $5ac1: $f6 $df
	or a                                             ; $5ac3: $b7

jr_064_5ac4:
	adc l                                            ; $5ac4: $8d
	sub [hl]                                         ; $5ac5: $96
	inc d                                            ; $5ac6: $14
	ld sp, hl                                        ; $5ac7: $f9
	ld a, e                                          ; $5ac8: $7b
	ld a, e                                          ; $5ac9: $7b
	cp a                                             ; $5aca: $bf
	cp $f2                                           ; $5acb: $fe $f2
	rst SubAFromBC                                          ; $5acd: $e7
	cp $97                                           ; $5ace: $fe $97
	ld e, a                                          ; $5ad0: $5f
	ccf                                              ; $5ad1: $3f
	rra                                              ; $5ad2: $1f
	ldh [c], a                                       ; $5ad3: $e2
	ld [hl+], a                                      ; $5ad4: $22
	ld h, d                                          ; $5ad5: $62
	db $fc                                           ; $5ad6: $fc
	rst AddAOntoHL                                          ; $5ad7: $ef
	sbc l                                            ; $5ad8: $9d
	rlca                                             ; $5ad9: $07
	ccf                                              ; $5ada: $3f
	ld l, [hl]                                       ; $5adb: $6e
	jr nc, jr_064_5a77                               ; $5adc: $30 $99

	rlca                                             ; $5ade: $07
	jr c, jr_064_5aa4                                ; $5adf: $38 $c3

	rra                                              ; $5ae1: $1f
	pop hl                                           ; $5ae2: $e1
	inc b                                            ; $5ae3: $04
	call c, $98ff                                    ; $5ae4: $dc $ff $98
	ldh a, [$80]                                     ; $5ae7: $f0 $80
	nop                                              ; $5ae9: $00
	nop                                              ; $5aea: $00
	inc c                                            ; $5aeb: $0c
	rlca                                             ; $5aec: $07
	ccf                                              ; $5aed: $3f
	ld a, e                                          ; $5aee: $7b
	rst SubAFromBC                                          ; $5aef: $e7
	sbc [hl]                                         ; $5af0: $9e
	rst GetHLinHL                                          ; $5af1: $cf
	db $fd                                           ; $5af2: $fd
	sbc $08                                          ; $5af3: $de $08
	sub [hl]                                         ; $5af5: $96
	jr jr_064_5ac4                                   ; $5af6: $18 $cc

	ld a, b                                          ; $5af8: $78

jr_064_5af9:
	jr z, jr_064_5b23                                ; $5af9: $28 $28

	ld c, b                                          ; $5afb: $48
	jr @-$66                                         ; $5afc: $18 $98

	sbc b                                            ; $5afe: $98
	ldh [$c1], a                                     ; $5aff: $e0 $c1
	rst SubAFromDE                                          ; $5b01: $df
	dec bc                                           ; $5b02: $0b
	rst SubAFromDE                                          ; $5b03: $df
	rla                                              ; $5b04: $17
	ld a, a                                          ; $5b05: $7f
	ld a, [bc]                                       ; $5b06: $0a
	adc h                                            ; $5b07: $8c
	ld e, e                                          ; $5b08: $5b
	sbc c                                            ; $5b09: $99
	rrca                                             ; $5b0a: $0f
	ld e, [hl]                                       ; $5b0b: $5e
	ld e, h                                          ; $5b0c: $5c
	cp h                                             ; $5b0d: $bc
	cp h                                             ; $5b0e: $bc
	ld a, b                                          ; $5b0f: $78
	ld hl, sp-$08                                    ; $5b10: $f8 $f8
	cp a                                             ; $5b12: $bf
	ld a, a                                          ; $5b13: $7f
	jp $05ff                                         ; $5b14: $c3 $ff $05


	dec b                                            ; $5b17: $05
	rst GetHLinHL                                          ; $5b18: $cf
	ld a, [$defb]                                    ; $5b19: $fa $fb $de
	cp $df                                           ; $5b1c: $fe $df

jr_064_5b1e:
	rlca                                             ; $5b1e: $07
	sbc l                                            ; $5b1f: $9d
	ld b, $0e                                        ; $5b20: $06 $0e
	rst AddAOntoHL                                          ; $5b22: $ef

jr_064_5b23:
	db $db                                           ; $5b23: $db
	rst $38                                          ; $5b24: $ff
	ld a, e                                          ; $5b25: $7b
	ld hl, sp+$7f                                    ; $5b26: $f8 $7f
	cp $9c                                           ; $5b28: $fe $9c
	ldh a, [rSB]                                     ; $5b2a: $f0 $01
	ld a, $dc                                        ; $5b2c: $3e $dc
	rst $38                                          ; $5b2e: $ff
	sbc c                                            ; $5b2f: $99
	ldh [rLCDC], a                                   ; $5b30: $e0 $40
	nop                                              ; $5b32: $00
	add hl, sp                                       ; $5b33: $39
	ld bc, $77fe                                     ; $5b34: $01 $fe $77
	ld d, a                                          ; $5b37: $57
	sbc [hl]                                         ; $5b38: $9e
	pop hl                                           ; $5b39: $e1
	ld [hl], l                                       ; $5b3a: $75
	ld c, a                                          ; $5b3b: $4f
	rst SubAFromDE                                          ; $5b3c: $df
	inc b                                            ; $5b3d: $04
	sub l                                            ; $5b3e: $95
	ld [bc], a                                       ; $5b3f: $02
	ld [de], a                                       ; $5b40: $12
	ld b, a                                          ; $5b41: $47
	ld c, a                                          ; $5b42: $4f
	ld b, c                                          ; $5b43: $41
	inc b                                            ; $5b44: $04
	ld b, $06                                        ; $5b45: $06 $06
	scf                                              ; $5b47: $37
	rst FarCall                                          ; $5b48: $f7
	ldh [$c1], a                                     ; $5b49: $e0 $c1

jr_064_5b4b:
	sub a                                            ; $5b4b: $97
	adc l                                            ; $5b4c: $8d
	dec c                                            ; $5b4d: $0d
	dec b                                            ; $5b4e: $05
	dec b                                            ; $5b4f: $05
	dec c                                            ; $5b50: $0d
	ld a, l                                          ; $5b51: $7d
	ld h, l                                          ; $5b52: $65
	push bc                                          ; $5b53: $c5
	call c, Call_064_7d07                            ; $5b54: $dc $07 $7d
	or a                                             ; $5b57: $b7
	adc [hl]                                         ; $5b58: $8e
	rst $38                                          ; $5b59: $ff
	push bc                                          ; $5b5a: $c5
	ld [hl], l                                       ; $5b5b: $75
	rra                                              ; $5b5c: $1f
	rlca                                             ; $5b5d: $07
	ld a, a                                          ; $5b5e: $7f
	ld c, a                                          ; $5b5f: $4f
	ld b, $0f                                        ; $5b60: $06 $0f
	rst $38                                          ; $5b62: $ff
	ccf                                              ; $5b63: $3f
	rrca                                             ; $5b64: $0f
	rlca                                             ; $5b65: $07
	inc bc                                           ; $5b66: $03
	ld [bc], a                                       ; $5b67: $02
	ld [bc], a                                       ; $5b68: $02
	ld b, $ef                                        ; $5b69: $06 $ef
	sbc l                                            ; $5b6b: $9d
	add b                                            ; $5b6c: $80
	ldh a, [rPCM34]                                  ; $5b6d: $f0 $77
	halt                                             ; $5b6f: $76
	ld a, e                                          ; $5b70: $7b
	ld hl, sp-$66                                    ; $5b71: $f8 $9a
	ld [hl], b                                       ; $5b73: $70
	adc [hl]                                         ; $5b74: $8e
	ld [hl], c                                       ; $5b75: $71
	ld c, $01                                        ; $5b76: $0e $01
	call c, $84ff                                    ; $5b78: $dc $ff $84
	ccf                                              ; $5b7b: $3f
	rlca                                             ; $5b7c: $07
	pop af                                           ; $5b7d: $f1
	nop                                              ; $5b7e: $00
	jr nz, jr_064_5b81                               ; $5b7f: $20 $00

jr_064_5b81:
	add d                                            ; $5b81: $82
	ld sp, hl                                        ; $5b82: $f9
	rst $38                                          ; $5b83: $ff
	ccf                                              ; $5b84: $3f
	rst $38                                          ; $5b85: $ff
	ld [$0404], sp                                   ; $5b86: $08 $04 $04
	add d                                            ; $5b89: $82
	ld b, d                                          ; $5b8a: $42
	ld b, c                                          ; $5b8b: $41
	ld hl, $ff20                                     ; $5b8c: $21 $20 $ff
	rra                                              ; $5b8f: $1f
	adc a                                            ; $5b90: $8f
	rst GetHLinHL                                          ; $5b91: $cf
	rst SubAFromBC                                          ; $5b92: $e7
	ld h, a                                          ; $5b93: $67
	ld [hl], e                                       ; $5b94: $73
	inc sp                                           ; $5b95: $33
	ldh [$c1], a                                     ; $5b96: $e0 $c1
	add a                                            ; $5b98: $87
	ld [hl], $7a                                     ; $5b99: $36 $7a
	ld l, l                                          ; $5b9b: $6d
	ld [hl], l                                       ; $5b9c: $75
	ld a, [hl]                                       ; $5b9d: $7e
	ld e, h                                          ; $5b9e: $5c
	ld a, c                                          ; $5b9f: $79
	ld a, d                                          ; $5ba0: $7a
	call $9b8d                                       ; $5ba1: $cd $8d $9b
	sbc e                                            ; $5ba4: $9b
	sub e                                            ; $5ba5: $93
	or a                                             ; $5ba6: $b7
	xor a                                            ; $5ba7: $af
	xor a                                            ; $5ba8: $af
	ld [hl], d                                       ; $5ba9: $72
	ld [hl], h                                       ; $5baa: $74
	ld l, e                                          ; $5bab: $6b
	ld [hl], $af                                     ; $5bac: $36 $af
	ld sp, hl                                        ; $5bae: $f9
	ld h, b                                          ; $5baf: $60
	db $fc                                           ; $5bb0: $fc
	sbc $bf                                          ; $5bb1: $de $bf
	rst SubAFromDE                                          ; $5bb3: $df
	rst $38                                          ; $5bb4: $ff
	sbc h                                            ; $5bb5: $9c
	ld [hl], b                                       ; $5bb6: $70
	jr nz, jr_064_5bd9                               ; $5bb7: $20 $20

	db $ec                                           ; $5bb9: $ec
	sbc h                                            ; $5bba: $9c
	ret nz                                           ; $5bbb: $c0

	ldh a, [$f8]                                     ; $5bbc: $f0 $f8
	ld l, a                                          ; $5bbe: $6f
	ld hl, sp-$64                                    ; $5bbf: $f8 $9c
	jr nc, jr_064_5b4b                               ; $5bc1: $30 $88

	db $fc                                           ; $5bc3: $fc
	ld [hl], a                                       ; $5bc4: $77
	ld d, e                                          ; $5bc5: $53
	sbc $ff                                          ; $5bc6: $de $ff
	adc [hl]                                         ; $5bc8: $8e
	ld h, h                                          ; $5bc9: $64
	ld [de], a                                       ; $5bca: $12
	add hl, bc                                       ; $5bcb: $09
	inc b                                            ; $5bcc: $04

jr_064_5bcd:
	adc d                                            ; $5bcd: $8a
	push hl                                          ; $5bce: $e5
	ldh a, [c]                                       ; $5bcf: $f2
	db $eb                                           ; $5bd0: $eb
	ld a, a                                          ; $5bd1: $7f
	ccf                                              ; $5bd2: $3f
	rra                                              ; $5bd3: $1f
	rrca                                             ; $5bd4: $0f
	rlca                                             ; $5bd5: $07
	daa                                              ; $5bd6: $27
	inc de                                           ; $5bd7: $13
	adc c                                            ; $5bd8: $89

jr_064_5bd9:
	db $fd                                           ; $5bd9: $fd
	ld l, e                                          ; $5bda: $6b
	rst SubAFromBC                                          ; $5bdb: $e7
	sub a                                            ; $5bdc: $97
	and l                                            ; $5bdd: $a5
	ld d, e                                          ; $5bde: $53
	ld c, c                                          ; $5bdf: $49
	dec h                                            ; $5be0: $25
	inc h                                            ; $5be1: $24
	ld [de], a                                       ; $5be2: $12
	jp c, $d96d                                      ; $5be3: $da $6d $d9

	rst $38                                          ; $5be6: $ff
	sbc e                                            ; $5be7: $9b
	dec a                                            ; $5be8: $3d
	rra                                              ; $5be9: $1f
	call nz, $dd24                                   ; $5bea: $c4 $24 $dd
	ld a, h                                          ; $5bed: $7c
	db $dd                                           ; $5bee: $dd
	rst $38                                          ; $5bef: $ff
	sbc e                                            ; $5bf0: $9b
	db $fd                                           ; $5bf1: $fd
	push de                                          ; $5bf2: $d5
	push de                                          ; $5bf3: $d5
	push af                                          ; $5bf4: $f5
	sbc $fc                                          ; $5bf5: $de $fc
	add b                                            ; $5bf7: $80
	call z, $0c0c                                    ; $5bf8: $cc $0c $0c
	ld [$cd18], sp                                   ; $5bfb: $08 $18 $cd
	sbc l                                            ; $5bfe: $9d
	dec a                                            ; $5bff: $3d
	db $fd                                           ; $5c00: $fd
	db $ed                                           ; $5c01: $ed
	db $ed                                           ; $5c02: $ed
	db $dd                                           ; $5c03: $dd
	sbc l                                            ; $5c04: $9d
	db $10                                           ; $5c05: $10
	ld hl, $8941                                     ; $5c06: $21 $41 $89
	dec bc                                           ; $5c09: $0b
	dec de                                           ; $5c0a: $1b
	inc sp                                           ; $5c0b: $33
	scf                                              ; $5c0c: $37
	dec a                                            ; $5c0d: $3d
	ld l, e                                          ; $5c0e: $6b
	db $db                                           ; $5c0f: $db
	sbc e                                            ; $5c10: $9b
	dec sp                                           ; $5c11: $3b
	dec sp                                           ; $5c12: $3b
	ld [hl], a                                       ; $5c13: $77
	rst FarCall                                          ; $5c14: $f7
	ld h, l                                          ; $5c15: $65
	and h                                            ; $5c16: $a4
	sub a                                            ; $5c17: $97
	ld c, h                                          ; $5c18: $4c
	ld c, d                                          ; $5c19: $4a
	sub c                                            ; $5c1a: $91
	sub c                                            ; $5c1b: $91
	ld hl, $fd22                                     ; $5c1c: $21 $22 $fd
	db $fc                                           ; $5c1f: $fc
	ld l, a                                          ; $5c20: $6f
	xor a                                            ; $5c21: $af
	sub a                                            ; $5c22: $97
	ld b, c                                          ; $5c23: $41
	add e                                            ; $5c24: $83
	inc b                                            ; $5c25: $04
	add hl, bc                                       ; $5c26: $09
	inc de                                           ; $5c27: $13
	and e                                            ; $5c28: $a3
	rst JumpTable                                          ; $5c29: $c7
	rst JumpTable                                          ; $5c2a: $c7
	ld a, c                                          ; $5c2b: $79
	ld l, [hl]                                       ; $5c2c: $6e
	ld [hl], h                                       ; $5c2d: $74
	ld a, c                                          ; $5c2e: $79
	ld [hl], a                                       ; $5c2f: $77
	ld a, b                                          ; $5c30: $78
	ld a, h                                          ; $5c31: $7c
	dec hl                                           ; $5c32: $2b
	sbc h                                            ; $5c33: $9c
	ldh [$f0], a                                     ; $5c34: $e0 $f0
	ldh a, [rPCM34]                                  ; $5c36: $f0 $77
	ld hl, sp-$67                                    ; $5c38: $f8 $99
	ld b, b                                          ; $5c3a: $40
	jr nz, jr_064_5bcd                               ; $5c3b: $20 $90

	ld d, b                                          ; $5c3d: $50
	ld hl, sp-$08                                    ; $5c3e: $f8 $f8
	ld a, e                                          ; $5c40: $7b
	rst SubAFromHL                                          ; $5c41: $d7
	rst SubAFromDE                                          ; $5c42: $df
	cp $96                                           ; $5c43: $fe $96
	rst $38                                          ; $5c45: $ff
	ret z                                            ; $5c46: $c8

	xor b                                            ; $5c47: $a8
	db $e4                                           ; $5c48: $e4
	ld [hl], h                                       ; $5c49: $74
	ld d, d                                          ; $5c4a: $52
	jp c, $e9ea                                      ; $5c4b: $da $ea $e9

	reti                                             ; $5c4e: $d9


	rst $38                                          ; $5c4f: $ff
	ld a, h                                          ; $5c50: $7c
	adc [hl]                                         ; $5c51: $8e
	db $db                                           ; $5c52: $db
	db $fd                                           ; $5c53: $fd
	ld l, h                                          ; $5c54: $6c
	jp nc, $fedf                                     ; $5c55: $d2 $df $fe

	db $dd                                           ; $5c58: $dd
	db $fd                                           ; $5c59: $fd

jr_064_5c5a:
	sub a                                            ; $5c5a: $97
	ld sp, hl                                        ; $5c5b: $f9
	ld a, [$f2fa]                                    ; $5c5c: $fa $fa $f2
	db $fc                                           ; $5c5f: $fc
	ld hl, sp-$10                                    ; $5c60: $f8 $f0
	ldh [$dd], a                                     ; $5c62: $e0 $dd
	add b                                            ; $5c64: $80
	sbc h                                            ; $5c65: $9c
	db $e4                                           ; $5c66: $e4
	ret z                                            ; $5c67: $c8

	sub b                                            ; $5c68: $90
	ld [hl], e                                       ; $5c69: $73
	ld hl, sp-$34                                    ; $5c6a: $f8 $cc
	add b                                            ; $5c6c: $80
	sbc h                                            ; $5c6d: $9c
	ret nz                                           ; $5c6e: $c0

	jr nz, @+$12                                     ; $5c6f: $20 $10

	ld l, a                                          ; $5c71: $6f
	ld hl, sp+$7f                                    ; $5c72: $f8 $7f
	sub a                                            ; $5c74: $97
	sbc h                                            ; $5c75: $9c
	ret z                                            ; $5c76: $c8

	inc h                                            ; $5c77: $24
	db $f4                                           ; $5c78: $f4
	call c, $9cf2                                    ; $5c79: $dc $f2 $9c
	jr c, jr_064_5c5a                                ; $5c7c: $38 $dc

	inc c                                            ; $5c7e: $0c
	call c, $250e                                    ; $5c7f: $dc $0e $25
	nop                                              ; $5c82: $00
	rst SubAFromDE                                          ; $5c83: $df
	xor d                                            ; $5c84: $aa
	sub c                                            ; $5c85: $91
	nop                                              ; $5c86: $00
	xor $aa                                          ; $5c87: $ee $aa
	xor $33                                          ; $5c89: $ee $33
	adc b                                            ; $5c8b: $88
	ld [$33bb], sp                                   ; $5c8c: $08 $bb $33
	adc b                                            ; $5c8f: $88
	ld b, h                                          ; $5c90: $44
	sbc c                                            ; $5c91: $99
	adc b                                            ; $5c92: $88
	ld de, $fb7b                                     ; $5c93: $11 $7b $fb
	sbc l                                            ; $5c96: $9d
	sbc c                                            ; $5c97: $99
	nop                                              ; $5c98: $00
	ld h, e                                          ; $5c99: $63
	ei                                               ; $5c9a: $fb
	ld a, a                                          ; $5c9b: $7f
	pop af                                           ; $5c9c: $f1
	sbc e                                            ; $5c9d: $9b
	call z, Call_064_4444                            ; $5c9e: $cc $44 $44
	cp e                                             ; $5ca1: $bb
	sbc $88                                          ; $5ca2: $de $88
	sbc [hl]                                         ; $5ca4: $9e
	cp e                                             ; $5ca5: $bb

jr_064_5ca6:
	and l                                            ; $5ca6: $a5
	ld bc, $4180                                     ; $5ca7: $01 $80 $41
	db $ed                                           ; $5caa: $ed
	ld c, c                                          ; $5cab: $49
	res 1, d                                         ; $5cac: $cb $8a
	db $db                                           ; $5cae: $db
	sub d                                            ; $5caf: $92
	sbc e                                            ; $5cb0: $9b
	ld [de], a                                       ; $5cb1: $12
	cp e                                             ; $5cb2: $bb
	inc de                                           ; $5cb3: $13
	cp a                                             ; $5cb4: $bf
	rla                                              ; $5cb5: $17
	cp a                                             ; $5cb6: $bf
	scf                                              ; $5cb7: $37
	db $fc                                           ; $5cb8: $fc
	ld a, $fd                                        ; $5cb9: $3e $fd
	ld a, b                                          ; $5cbb: $78
	db $fc                                           ; $5cbc: $fc
	ld a, b                                          ; $5cbd: $78
	db $dd                                           ; $5cbe: $dd
	ld a, e                                          ; $5cbf: $7b
	rst SubAFromDE                                          ; $5cc0: $df
	ld a, [hl]                                       ; $5cc1: $7e
	push af                                          ; $5cc2: $f5
	ld a, $f4                                        ; $5cc3: $3e $f4
	cp [hl]                                          ; $5cc5: $be
	db $f4                                           ; $5cc6: $f4
	db $f4                                           ; $5cc7: $f4
	sbc d                                            ; $5cc8: $9a
	ldh a, [rIF]                                     ; $5cc9: $f0 $0f
	inc c                                            ; $5ccb: $0c
	inc bc                                           ; $5ccc: $03
	ld [bc], a                                       ; $5ccd: $02
	ld a, e                                          ; $5cce: $7b
	cp $89                                           ; $5ccf: $fe $89
	inc bc                                           ; $5cd1: $03
	dec b                                            ; $5cd2: $05
	rlca                                             ; $5cd3: $07
	dec c                                            ; $5cd4: $0d
	rrca                                             ; $5cd5: $0f
	ld [$190f], sp                                   ; $5cd6: $08 $0f $19
	rra                                              ; $5cd9: $1f
	ld de, $331f                                     ; $5cda: $11 $1f $33
	ccf                                              ; $5cdd: $3f
	ldh a, [c]                                       ; $5cde: $f2
	rst $38                                          ; $5cdf: $ff
	ld h, d                                          ; $5ce0: $62
	rst $38                                          ; $5ce1: $ff
	ldh [c], a                                       ; $5ce2: $e2
	rst $38                                          ; $5ce3: $ff
	push hl                                          ; $5ce4: $e5
	rst $38                                          ; $5ce5: $ff
	ld h, l                                          ; $5ce6: $65
	ld a, e                                          ; $5ce7: $7b
	cp $80                                           ; $5ce8: $fe $80
	jr jr_064_5ca6                                   ; $5cea: $18 $ba

	jr c, @+$6a                                      ; $5cec: $38 $68

	jr c, jr_064_5d5d                                ; $5cee: $38 $6d

	ld a, b                                          ; $5cf0: $78
	ld c, l                                          ; $5cf1: $4d
	ld a, l                                          ; $5cf2: $7d
	rst FarCall                                          ; $5cf3: $f7
	ld c, l                                          ; $5cf4: $4d
	rst FarCall                                          ; $5cf5: $f7
	ld a, l                                          ; $5cf6: $7d
	rst JumpTable                                          ; $5cf7: $c7
	rst JumpTable                                          ; $5cf8: $c7
	rst $38                                          ; $5cf9: $ff
	ei                                               ; $5cfa: $fb
	rlca                                             ; $5cfb: $07
	ld a, a                                          ; $5cfc: $7f
	di                                               ; $5cfd: $f3
	adc l                                            ; $5cfe: $8d
	sbc e                                            ; $5cff: $9b
	inc a                                            ; $5d00: $3c
	ld a, e                                          ; $5d01: $7b
	ld [hl], l                                       ; $5d02: $75
	ld a, b                                          ; $5d03: $78
	ld c, l                                          ; $5d04: $4d
	ld a, b                                          ; $5d05: $78
	dec a                                            ; $5d06: $3d
	jr nc, jr_064_5d86                               ; $5d07: $30 $7d

	add b                                            ; $5d09: $80
	nop                                              ; $5d0a: $00
	sub d                                            ; $5d0b: $92
	rst $38                                          ; $5d0c: $ff
	sbc c                                            ; $5d0d: $99
	rst $38                                          ; $5d0e: $ff
	reti                                             ; $5d0f: $d9


	rst $38                                          ; $5d10: $ff
	db $dd                                           ; $5d11: $dd
	rst FarCall                                          ; $5d12: $f7
	db $dd                                           ; $5d13: $dd
	ld [hl], a                                       ; $5d14: $77
	ldh a, [$3f]                                     ; $5d15: $f0 $3f
	cp $3f                                           ; $5d17: $fe $3f
	rst $38                                          ; $5d19: $ff
	inc de                                           ; $5d1a: $13
	ldh [$1f], a                                     ; $5d1b: $e0 $1f
	jp Jump_064_4730                                 ; $5d1d: $c3 $30 $47


	inc hl                                           ; $5d20: $23
	inc b                                            ; $5d21: $04
	and $e8                                          ; $5d22: $e6 $e8
	dec b                                            ; $5d24: $05
	db $ed                                           ; $5d25: $ed
	ld bc, $01ad                                     ; $5d26: $01 $ad $01
	add b                                            ; $5d29: $80
	sub $00                                          ; $5d2a: $d6 $00
	db $10                                           ; $5d2c: $10
	cp c                                             ; $5d2d: $b9
	db $10                                           ; $5d2e: $10
	sbc l                                            ; $5d2f: $9d
	ld [$8cdd], sp                                   ; $5d30: $08 $dd $8c
	adc $ca                                          ; $5d33: $ce $ca
	ld l, a                                          ; $5d35: $6f
	push hl                                          ; $5d36: $e5
	xor a                                            ; $5d37: $af
	inc [hl]                                         ; $5d38: $34
	rst SubAFromDE                                          ; $5d39: $df
	ld a, [$0fef]                                    ; $5d3a: $fa $ef $0f
	rst FarCall                                          ; $5d3d: $f7
	rst FarCall                                          ; $5d3e: $f7
	add hl, bc                                       ; $5d3f: $09
	cp b                                             ; $5d40: $b8
	rst JumpTable                                          ; $5d41: $c7
	ld l, e                                          ; $5d42: $6b
	ld [hl], a                                       ; $5d43: $77
	ei                                               ; $5d44: $fb
	ld hl, sp-$25                                    ; $5d45: $f8 $db
	ldh a, [$3b]                                     ; $5d47: $f0 $3b
	add b                                            ; $5d49: $80
	ldh a, [$f7]                                     ; $5d4a: $f0 $f7
	ldh [rIF], a                                     ; $5d4c: $e0 $0f
	nop                                              ; $5d4e: $00
	ld a, a                                          ; $5d4f: $7f
	nop                                              ; $5d50: $00
	rra                                              ; $5d51: $1f
	nop                                              ; $5d52: $00
	rra                                              ; $5d53: $1f
	ld bc, $033e                                     ; $5d54: $01 $3e $03
	ld a, [hl]                                       ; $5d57: $7e
	rlca                                             ; $5d58: $07
	ld a, h                                          ; $5d59: $7c
	rrca                                             ; $5d5a: $0f
	ld hl, sp+$3f                                    ; $5d5b: $f8 $3f

jr_064_5d5d:
	ldh [rIE], a                                     ; $5d5d: $e0 $ff
	ret nc                                           ; $5d5f: $d0

	cp $a0                                           ; $5d60: $fe $a0
	db $fc                                           ; $5d62: $fc
	ld b, b                                          ; $5d63: $40
	ld hl, sp+$40                                    ; $5d64: $f8 $40
	pop af                                           ; $5d66: $f1
	add b                                            ; $5d67: $80
	pop hl                                           ; $5d68: $e1
	sbc e                                            ; $5d69: $9b
	add b                                            ; $5d6a: $80
	and $80                                          ; $5d6b: $e6 $80
	adc $37                                          ; $5d6d: $ce $37
	ld b, b                                          ; $5d6f: $40
	sbc c                                            ; $5d70: $99
	ld a, c                                          ; $5d71: $79
	call c, $dd78                                    ; $5d72: $dc $78 $dd
	ld a, a                                          ; $5d75: $7f
	rst FarCall                                          ; $5d76: $f7
	ld l, a                                          ; $5d77: $6f
	ld b, b                                          ; $5d78: $40
	ccf                                              ; $5d79: $3f
	ld h, b                                          ; $5d7a: $60
	sub [hl]                                         ; $5d7b: $96
	rst $38                                          ; $5d7c: $ff
	inc bc                                           ; $5d7d: $03
	db $fd                                           ; $5d7e: $fd
	ld [hl], e                                       ; $5d7f: $73
	db $fc                                           ; $5d80: $fc
	ei                                               ; $5d81: $fb
	dec e                                            ; $5d82: $1d
	cp b                                             ; $5d83: $b8
	dec l                                            ; $5d84: $2d
	rra                                              ; $5d85: $1f

jr_064_5d86:
	ld h, b                                          ; $5d86: $60
	sub a                                            ; $5d87: $97
	jr nz, jr_064_5d91                               ; $5d88: $20 $07

	db $e3                                           ; $5d8a: $e3
	rst AddAOntoHL                                          ; $5d8b: $ef
	rlca                                             ; $5d8c: $07
	db $ec                                           ; $5d8d: $ec
	ld b, $ac                                        ; $5d8e: $06 $ac
	dec hl                                           ; $5d90: $2b

jr_064_5d91:
	ld h, b                                          ; $5d91: $60
	sub [hl]                                         ; $5d92: $96
	ld hl, sp+$07                                    ; $5d93: $f8 $07
	cp e                                             ; $5d95: $bb
	rst JumpTable                                          ; $5d96: $c7
	db $eb                                           ; $5d97: $eb
	ldh a, [$7b]                                     ; $5d98: $f0 $7b
	ld hl, sp-$4d                                    ; $5d9a: $f8 $b3
	ld a, e                                          ; $5d9c: $7b
	ld h, b                                          ; $5d9d: $60
	cpl                                              ; $5d9e: $2f
	add b                                            ; $5d9f: $80
	ld a, a                                          ; $5da0: $7f
	cp $9b                                           ; $5da1: $fe $9b
	ld a, a                                          ; $5da3: $7f
	push af                                          ; $5da4: $f5
	ccf                                              ; $5da5: $3f
	rst FarCall                                          ; $5da6: $f7
	inc hl                                           ; $5da7: $23
	add b                                            ; $5da8: $80
	sub [hl]                                         ; $5da9: $96
	inc bc                                           ; $5daa: $03
	ld a, h                                          ; $5dab: $7c
	di                                               ; $5dac: $f3
	db $fd                                           ; $5dad: $fd
	ld hl, sp+$1d                                    ; $5dae: $f8 $1d
	cp b                                             ; $5db0: $b8
	dec a                                            ; $5db1: $3d
	ld [hl], b                                       ; $5db2: $70
	inc hl                                           ; $5db3: $23
	add b                                            ; $5db4: $80
	sbc d                                            ; $5db5: $9a
	ldh [$ef], a                                     ; $5db6: $e0 $ef
	inc bc                                           ; $5db8: $03
	rst AddAOntoHL                                          ; $5db9: $ef
	rlca                                             ; $5dba: $07
	rra                                              ; $5dbb: $1f
	add b                                            ; $5dbc: $80
	ld a, a                                          ; $5dbd: $7f
	cp d                                             ; $5dbe: $ba
	sbc c                                            ; $5dbf: $99
	db $db                                           ; $5dc0: $db
	ldh [$fb], a                                     ; $5dc1: $e0 $fb
	ld hl, sp+$33                                    ; $5dc3: $f8 $33
	ld [hl], b                                       ; $5dc5: $70
	inc de                                           ; $5dc6: $13
	add b                                            ; $5dc7: $80
	rra                                              ; $5dc8: $1f
	nop                                              ; $5dc9: $00
	sub [hl]                                         ; $5dca: $96
	inc bc                                           ; $5dcb: $03
	db $fc                                           ; $5dcc: $fc
	inc bc                                           ; $5dcd: $03
	dec a                                            ; $5dce: $3d
	inc b                                            ; $5dcf: $04
	db $fd                                           ; $5dd0: $fd
	ld hl, sp-$03                                    ; $5dd1: $f8 $fd
	ldh a, [rAUD3LEN]                                ; $5dd3: $f0 $1b
	add b                                            ; $5dd5: $80
	sbc h                                            ; $5dd6: $9c
	nop                                              ; $5dd7: $00
	xor $06                                          ; $5dd8: $ee $06
	ld h, $60                                        ; $5dda: $26 $60
	ld [hl], a                                       ; $5ddc: $77
	add b                                            ; $5ddd: $80
	add b                                            ; $5dde: $80
	ei                                               ; $5ddf: $fb
	nop                                              ; $5de0: $00
	ld a, e                                          ; $5de1: $7b
	ld [$f0f3], sp                                   ; $5de2: $08 $f3 $f0
	rst FarCall                                          ; $5de5: $f7
	ldh a, [$03]                                     ; $5de6: $f0 $03
	ld bc, $013d                                     ; $5de8: $01 $3d $01
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	ld bc, $8101                                     ; $5ded: $01 $01 $81
	ld bc, $80c0                                     ; $5df0: $01 $c0 $80
	ldh [$c0], a                                     ; $5df3: $e0 $c0
	ldh a, [$e0]                                     ; $5df5: $f0 $e0
	ld e, h                                          ; $5df7: $5c
	ld hl, sp+$5e                                    ; $5df8: $f8 $5e
	db $fc                                           ; $5dfa: $fc
	adc a                                            ; $5dfb: $8f
	rst $38                                          ; $5dfc: $ff
	sub a                                            ; $5dfd: $97
	sub e                                            ; $5dfe: $93
	cp a                                             ; $5dff: $bf
	sub a                                            ; $5e00: $97
	cp a                                             ; $5e01: $bf
	dec d                                            ; $5e02: $15
	cp a                                             ; $5e03: $bf
	dec h                                            ; $5e04: $25
	cpl                                              ; $5e05: $2f
	dec bc                                           ; $5e06: $0b
	cpl                                              ; $5e07: $2f
	ldh [rP1], a                                     ; $5e08: $e0 $00
	cp $fe                                           ; $5e0a: $fe $fe
	ld a, e                                          ; $5e0c: $7b
	db $e4                                           ; $5e0d: $e4
	sbc l                                            ; $5e0e: $9d
	ld b, b                                          ; $5e0f: $40
	ret nz                                           ; $5e10: $c0

	db $fc                                           ; $5e11: $fc
	ld a, a                                          ; $5e12: $7f
	db $d3                                           ; $5e13: $d3
	sub c                                            ; $5e14: $91
	rlca                                             ; $5e15: $07
	ld bc, $071f                                     ; $5e16: $01 $1f $07
	rst $38                                          ; $5e19: $ff
	rra                                              ; $5e1a: $1f
	rst $38                                          ; $5e1b: $ff
	ccf                                              ; $5e1c: $3f
	cp $07                                           ; $5e1d: $fe $07
	adc $07                                          ; $5e1f: $ce $07
	adc h                                            ; $5e21: $8c
	rlca                                             ; $5e22: $07
	ld e, a                                          ; $5e23: $5f
	ret nz                                           ; $5e24: $c0

	sbc [hl]                                         ; $5e25: $9e
	pop bc                                           ; $5e26: $c1
	rrca                                             ; $5e27: $0f
	ret nz                                           ; $5e28: $c0

	db $dd                                           ; $5e29: $dd
	ret nz                                           ; $5e2a: $c0

	dec hl                                           ; $5e2b: $2b
	ret nz                                           ; $5e2c: $c0

	ld a, a                                          ; $5e2d: $7f
	db $ec                                           ; $5e2e: $ec
	ld l, a                                          ; $5e2f: $6f
	ret nz                                           ; $5e30: $c0

	sbc [hl]                                         ; $5e31: $9e
	pop hl                                           ; $5e32: $e1
	dec hl                                           ; $5e33: $2b
	ret nz                                           ; $5e34: $c0

	sbc [hl]                                         ; $5e35: $9e
	add b                                            ; $5e36: $80
	ld [hl], e                                       ; $5e37: $73
	ret nz                                           ; $5e38: $c0

	ld [hl], a                                       ; $5e39: $77
	cp $7f                                           ; $5e3a: $fe $7f
	cp [hl]                                          ; $5e3c: $be
	dec de                                           ; $5e3d: $1b
	ret nz                                           ; $5e3e: $c0

	sbc [hl]                                         ; $5e3f: $9e
	add c                                            ; $5e40: $81
	daa                                              ; $5e41: $27
	ret nz                                           ; $5e42: $c0

	ld a, a                                          ; $5e43: $7f
	jp z, $c47b                                      ; $5e44: $ca $7b $c4

	db $dd                                           ; $5e47: $dd
	ldh [$3b], a                                     ; $5e48: $e0 $3b
	ret nz                                           ; $5e4a: $c0

jr_064_5e4b:
	xor b                                            ; $5e4b: $a8
	ld bc, $4180                                     ; $5e4c: $01 $80 $41
	db $ed                                           ; $5e4f: $ed
	ld c, c                                          ; $5e50: $49
	res 1, d                                         ; $5e51: $cb $8a
	db $db                                           ; $5e53: $db
	sub d                                            ; $5e54: $92
	sbc e                                            ; $5e55: $9b
	ld [de], a                                       ; $5e56: $12
	cp e                                             ; $5e57: $bb
	inc de                                           ; $5e58: $13
	cp a                                             ; $5e59: $bf
	rla                                              ; $5e5a: $17
	cp a                                             ; $5e5b: $bf
	scf                                              ; $5e5c: $37
	db $fc                                           ; $5e5d: $fc
	ld a, $fd                                        ; $5e5e: $3e $fd
	ld a, b                                          ; $5e60: $78
	db $fc                                           ; $5e61: $fc
	ld a, c                                          ; $5e62: $79
	db $dd                                           ; $5e63: $dd
	ld a, d                                          ; $5e64: $7a
	db $dd                                           ; $5e65: $dd
	ld a, [hl]                                       ; $5e66: $7e
	db $f4                                           ; $5e67: $f4
	ld a, $f4                                        ; $5e68: $3e $f4
	cp [hl]                                          ; $5e6a: $be
	db $f4                                           ; $5e6b: $f4
	db $f4                                           ; $5e6c: $f4
	sbc d                                            ; $5e6d: $9a
	ldh a, [rIF]                                     ; $5e6e: $f0 $0f
	inc c                                            ; $5e70: $0c
	inc bc                                           ; $5e71: $03
	ld [bc], a                                       ; $5e72: $02
	ld a, e                                          ; $5e73: $7b
	cp $89                                           ; $5e74: $fe $89
	inc bc                                           ; $5e76: $03
	dec b                                            ; $5e77: $05
	rlca                                             ; $5e78: $07
	dec c                                            ; $5e79: $0d
	rrca                                             ; $5e7a: $0f
	ld [$190f], sp                                   ; $5e7b: $08 $0f $19
	rra                                              ; $5e7e: $1f
	ld de, $331f                                     ; $5e7f: $11 $1f $33
	ccf                                              ; $5e82: $3f
	ldh a, [c]                                       ; $5e83: $f2
	rst $38                                          ; $5e84: $ff
	ld h, d                                          ; $5e85: $62
	rst $38                                          ; $5e86: $ff
	ldh [c], a                                       ; $5e87: $e2
	rst $38                                          ; $5e88: $ff
	push hl                                          ; $5e89: $e5
	rst $38                                          ; $5e8a: $ff
	ld h, l                                          ; $5e8b: $65
	ld a, e                                          ; $5e8c: $7b
	cp $80                                           ; $5e8d: $fe $80
	jr jr_064_5e4b                                   ; $5e8f: $18 $ba

	jr c, jr_064_5efb                                ; $5e91: $38 $68

	jr c, @+$6f                                      ; $5e93: $38 $6d

	ld a, b                                          ; $5e95: $78
	ld c, l                                          ; $5e96: $4d
	ld a, l                                          ; $5e97: $7d
	rst FarCall                                          ; $5e98: $f7
	ld c, l                                          ; $5e99: $4d
	rst FarCall                                          ; $5e9a: $f7
	ld a, l                                          ; $5e9b: $7d
	rst JumpTable                                          ; $5e9c: $c7
	rst JumpTable                                          ; $5e9d: $c7
	rst $38                                          ; $5e9e: $ff
	ld a, e                                          ; $5e9f: $7b
	rst FarCall                                          ; $5ea0: $f7
	adc a                                            ; $5ea1: $8f
	sbc e                                            ; $5ea2: $9b
	dec e                                            ; $5ea3: $1d
	ld a, e                                          ; $5ea4: $7b
	ld [hl], h                                       ; $5ea5: $74
	ld a, e                                          ; $5ea6: $7b
	ld [hl], l                                       ; $5ea7: $75
	ld a, b                                          ; $5ea8: $78
	ld c, l                                          ; $5ea9: $4d
	ld a, b                                          ; $5eaa: $78
	inc a                                            ; $5eab: $3c
	jr nc, jr_064_5f2a                               ; $5eac: $30 $7c

	add b                                            ; $5eae: $80
	nop                                              ; $5eaf: $00
	sub d                                            ; $5eb0: $92
	rst $38                                          ; $5eb1: $ff
	sbc c                                            ; $5eb2: $99
	rst $38                                          ; $5eb3: $ff
	reti                                             ; $5eb4: $d9


	rst $38                                          ; $5eb5: $ff
	db $dd                                           ; $5eb6: $dd
	rst $38                                          ; $5eb7: $ff
	call c, $f277                                    ; $5eb8: $dc $77 $f2
	ccf                                              ; $5ebb: $3f
	rst $38                                          ; $5ebc: $ff
	scf                                              ; $5ebd: $37
	rst $38                                          ; $5ebe: $ff
	db $10                                           ; $5ebf: $10
	ldh [$1f], a                                     ; $5ec0: $e0 $1f
	jp Jump_064_4433                                 ; $5ec2: $c3 $33 $44


	ld h, $00                                        ; $5ec5: $26 $00
	push hl                                          ; $5ec7: $e5
	db $ed                                           ; $5ec8: $ed
	ld bc, $01ed                                     ; $5ec9: $01 $ed $01
	dec l                                            ; $5ecc: $2d
	ld bc, $9680                                     ; $5ecd: $01 $80 $96
	nop                                              ; $5ed0: $00
	db $10                                           ; $5ed1: $10
	cp c                                             ; $5ed2: $b9
	db $10                                           ; $5ed3: $10
	sbc l                                            ; $5ed4: $9d
	ld [$8cdd], sp                                   ; $5ed5: $08 $dd $8c
	adc $ca                                          ; $5ed8: $ce $ca
	rst AddAOntoHL                                          ; $5eda: $ef
	push hl                                          ; $5edb: $e5
	xor a                                            ; $5edc: $af
	ld [hl], h                                       ; $5edd: $74
	rst SubAFromDE                                          ; $5ede: $df
	ld a, [$0fcf]                                    ; $5edf: $fa $cf $0f
	rst FarCall                                          ; $5ee2: $f7
	or a                                             ; $5ee3: $b7
	ret                                              ; $5ee4: $c9


	ld l, b                                          ; $5ee5: $68
	ld [hl], a                                       ; $5ee6: $77
	ei                                               ; $5ee7: $fb
	rst $38                                          ; $5ee8: $ff
	db $db                                           ; $5ee9: $db
	ldh a, [$db]                                     ; $5eea: $f0 $db
	ldh a, [$3b]                                     ; $5eec: $f0 $3b
	sbc e                                            ; $5eee: $9b
	ldh [$f7], a                                     ; $5eef: $e0 $f7
	ret nz                                           ; $5ef1: $c0

	rrca                                             ; $5ef2: $0f
	cp [hl]                                          ; $5ef3: $be
	ld a, a                                          ; $5ef4: $7f
	rra                                              ; $5ef5: $1f
	rra                                              ; $5ef6: $1f
	add [hl]                                         ; $5ef7: $86
	ld bc, $033e                                     ; $5ef8: $01 $3e $03

jr_064_5efb:
	ld a, [hl]                                       ; $5efb: $7e
	rlca                                             ; $5efc: $07
	ld a, h                                          ; $5efd: $7c
	rrca                                             ; $5efe: $0f
	ld hl, sp+$3f                                    ; $5eff: $f8 $3f
	ldh [rIE], a                                     ; $5f01: $e0 $ff
	ret nc                                           ; $5f03: $d0

	cp $a0                                           ; $5f04: $fe $a0
	db $fc                                           ; $5f06: $fc
	ld b, b                                          ; $5f07: $40
	ld hl, sp+$40                                    ; $5f08: $f8 $40
	pop af                                           ; $5f0a: $f1
	add b                                            ; $5f0b: $80
	pop hl                                           ; $5f0c: $e1
	add b                                            ; $5f0d: $80
	and $80                                          ; $5f0e: $e6 $80
	adc $37                                          ; $5f10: $ce $37
	ld b, b                                          ; $5f12: $40
	sbc c                                            ; $5f13: $99
	ld a, b                                          ; $5f14: $78
	call c, $dd79                                    ; $5f15: $dc $79 $dd
	ld a, a                                          ; $5f18: $7f
	rst FarCall                                          ; $5f19: $f7
	ld l, a                                          ; $5f1a: $6f
	ld b, b                                          ; $5f1b: $40
	ld b, a                                          ; $5f1c: $47
	ld h, b                                          ; $5f1d: $60
	sub h                                            ; $5f1e: $94
	ei                                               ; $5f1f: $fb
	rlca                                             ; $5f20: $07
	rst $38                                          ; $5f21: $ff
	inc bc                                           ; $5f22: $03
	ld a, l                                          ; $5f23: $7d
	di                                               ; $5f24: $f3
	sbc h                                            ; $5f25: $9c
	cp e                                             ; $5f26: $bb
	ld l, l                                          ; $5f27: $6d
	ld hl, sp+$1d                                    ; $5f28: $f8 $1d

jr_064_5f2a:
	daa                                              ; $5f2a: $27
	ld h, b                                          ; $5f2b: $60
	sub l                                            ; $5f2c: $95
	jr nc, jr_064_5f76                               ; $5f2d: $30 $47

	jr nz, jr_064_5f38                               ; $5f2f: $20 $07

	db $e3                                           ; $5f31: $e3
	db $ec                                           ; $5f32: $ec
	ld b, $ed                                        ; $5f33: $06 $ed
	ld bc, $332c                                     ; $5f35: $01 $2c $33

jr_064_5f38:
	ld h, b                                          ; $5f38: $60
	sub c                                            ; $5f39: $91
	rst FarCall                                          ; $5f3a: $f7
	add hl, bc                                       ; $5f3b: $09
	ld hl, sp+$07                                    ; $5f3c: $f8 $07
	cp e                                             ; $5f3e: $bb
	rst JumpTable                                          ; $5f3f: $c7
	ld l, e                                          ; $5f40: $6b
	ldh a, [$db]                                     ; $5f41: $f0 $db
	ld hl, sp+$33                                    ; $5f43: $f8 $33
	ldh a, [$f7]                                     ; $5f45: $f0 $f7
	ldh [$2b], a                                     ; $5f47: $e0 $2b
	add b                                            ; $5f49: $80
	sbc d                                            ; $5f4a: $9a
	call c, $f57f                                    ; $5f4b: $dc $7f $f5
	ccf                                              ; $5f4e: $3f
	rst FarCall                                          ; $5f4f: $f7
	daa                                              ; $5f50: $27
	add b                                            ; $5f51: $80
	sub l                                            ; $5f52: $95
	db $fd                                           ; $5f53: $fd
	inc bc                                           ; $5f54: $03
	db $fc                                           ; $5f55: $fc
	di                                               ; $5f56: $f3
	dec a                                            ; $5f57: $3d
	ld a, b                                          ; $5f58: $78
	ld a, l                                          ; $5f59: $7d
	ld hl, sp+$7c                                    ; $5f5a: $f8 $7c
	ld [hl], b                                       ; $5f5c: $70
	inc hl                                           ; $5f5d: $23
	add b                                            ; $5f5e: $80
	sbc b                                            ; $5f5f: $98
	ldh [$ef], a                                     ; $5f60: $e0 $ef
	inc bc                                           ; $5f62: $03
	xor $06                                          ; $5f63: $ee $06
	dec l                                            ; $5f65: $2d
	inc bc                                           ; $5f66: $03
	daa                                              ; $5f67: $27
	add b                                            ; $5f68: $80
	ld a, a                                          ; $5f69: $7f
	cp d                                             ; $5f6a: $ba
	sbc d                                            ; $5f6b: $9a
	db $db                                           ; $5f6c: $db
	ldh [$73], a                                     ; $5f6d: $e0 $73
	ld hl, sp-$0d                                    ; $5f6f: $f8 $f3
	inc de                                           ; $5f71: $13
	add b                                            ; $5f72: $80
	rra                                              ; $5f73: $1f
	nop                                              ; $5f74: $00
	ld a, e                                          ; $5f75: $7b

jr_064_5f76:
	add b                                            ; $5f76: $80
	ld a, [hl]                                       ; $5f77: $7e
	db $fc                                           ; $5f78: $fc
	sbc d                                            ; $5f79: $9a
	inc b                                            ; $5f7a: $04
	db $fd                                           ; $5f7b: $fd
	ld hl, sp-$24                                    ; $5f7c: $f8 $dc
	ret nc                                           ; $5f7e: $d0

	dec de                                           ; $5f7f: $1b
	add b                                            ; $5f80: $80
	sbc c                                            ; $5f81: $99
	nop                                              ; $5f82: $00
	db $ec                                           ; $5f83: $ec
	inc b                                            ; $5f84: $04
	cpl                                              ; $5f85: $2f
	inc bc                                           ; $5f86: $03
	sub a                                            ; $5f87: $97
	inc hl                                           ; $5f88: $23
	add b                                            ; $5f89: $80
	add b                                            ; $5f8a: $80
	ei                                               ; $5f8b: $fb
	nop                                              ; $5f8c: $00
	ei                                               ; $5f8d: $fb
	ld [$f0f3], sp                                   ; $5f8e: $08 $f3 $f0
	rst SubAFromHL                                          ; $5f91: $d7
	ret nc                                           ; $5f92: $d0

	inc bc                                           ; $5f93: $03
	ld bc, $013d                                     ; $5f94: $01 $3d $01
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	ld bc, $8101                                     ; $5f99: $01 $01 $81
	nop                                              ; $5f9c: $00
	ret nz                                           ; $5f9d: $c0

	add b                                            ; $5f9e: $80
	ldh [$c0], a                                     ; $5f9f: $e0 $c0
	ldh a, [$e0]                                     ; $5fa1: $f0 $e0
	ld e, h                                          ; $5fa3: $5c
	ld hl, sp+$5e                                    ; $5fa4: $f8 $5e
	db $fc                                           ; $5fa6: $fc
	adc a                                            ; $5fa7: $8f
	rst $38                                          ; $5fa8: $ff
	sub a                                            ; $5fa9: $97
	sub l                                            ; $5faa: $95
	cp a                                             ; $5fab: $bf
	sub a                                            ; $5fac: $97
	cp a                                             ; $5fad: $bf
	dec d                                            ; $5fae: $15
	cp a                                             ; $5faf: $bf
	dec h                                            ; $5fb0: $25
	cpl                                              ; $5fb1: $2f
	dec bc                                           ; $5fb2: $0b
	cpl                                              ; $5fb3: $2f
	ret nz                                           ; $5fb4: $c0

	cp [hl]                                          ; $5fb5: $be
	add $00                                          ; $5fb6: $c6 $00
	ldh a, [$df]                                     ; $5fb8: $f0 $df
	ldh [$df], a                                     ; $5fba: $e0 $df
	ret nz                                           ; $5fbc: $c0

	cp l                                             ; $5fbd: $bd
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	ld bc, $9207                                     ; $5fc0: $01 $07 $92
	ld bc, $071f                                     ; $5fc3: $01 $1f $07
	rst $38                                          ; $5fc6: $ff
	rra                                              ; $5fc7: $1f
	rst $38                                          ; $5fc8: $ff
	ccf                                              ; $5fc9: $3f
	cp $07                                           ; $5fca: $fe $07
	adc $07                                          ; $5fcc: $ce $07

Call_064_5fce:
	adc h                                            ; $5fce: $8c
	rlca                                             ; $5fcf: $07
	inc bc                                           ; $5fd0: $03
	ret nz                                           ; $5fd1: $c0

	cp [hl]                                          ; $5fd2: $be
	add $00                                          ; $5fd3: $c6 $00
	ldh [$9e], a                                     ; $5fd5: $e0 $9e
	jr nz, @+$05                                     ; $5fd7: $20 $03

	ret nz                                           ; $5fd9: $c0

	sbc l                                            ; $5fda: $9d
	ld bc, $4bc1                                     ; $5fdb: $01 $c1 $4b
	ret nz                                           ; $5fde: $c0

	sbc [hl]                                         ; $5fdf: $9e
	sub l                                            ; $5fe0: $95
	ld d, a                                          ; $5fe1: $57
	ret nz                                           ; $5fe2: $c0

	sbc [hl]                                         ; $5fe3: $9e
	ld h, b                                          ; $5fe4: $60
	ld h, a                                          ; $5fe5: $67
	cp [hl]                                          ; $5fe6: $be
	rla                                              ; $5fe7: $17
	ret nz                                           ; $5fe8: $c0

	sbc [hl]                                         ; $5fe9: $9e
	pop hl                                           ; $5fea: $e1
	rra                                              ; $5feb: $1f
	add b                                            ; $5fec: $80
	ld [hl], a                                       ; $5fed: $77
	ret nz                                           ; $5fee: $c0

	ld [hl], e                                       ; $5fef: $73
	cp [hl]                                          ; $5ff0: $be
	ld b, a                                          ; $5ff1: $47
	ret nz                                           ; $5ff2: $c0

jr_064_5ff3:
	sbc c                                            ; $5ff3: $99
	ld bc, $4180                                     ; $5ff4: $01 $80 $41
	db $ed                                           ; $5ff7: $ed
	ld c, c                                          ; $5ff8: $49
	res 1, d                                         ; $5ff9: $cb $8a
	db $db                                           ; $5ffb: $db
	sub d                                            ; $5ffc: $92
	sbc e                                            ; $5ffd: $9b
	ld [de], a                                       ; $5ffe: $12
	cp e                                             ; $5fff: $bb
	inc de                                           ; $6000: $13
	cp a                                             ; $6001: $bf
	rla                                              ; $6002: $17
	cp a                                             ; $6003: $bf
	scf                                              ; $6004: $37
	db $fc                                           ; $6005: $fc
	ld a, $fd                                        ; $6006: $3e $fd
	ld a, b                                          ; $6008: $78
	db $fc                                           ; $6009: $fc
	ld a, b                                          ; $600a: $78
	db $dd                                           ; $600b: $dd
	ld a, e                                          ; $600c: $7b
	rst SubAFromDE                                          ; $600d: $df
	ld a, [hl]                                       ; $600e: $7e
	push af                                          ; $600f: $f5
	ld a, $f4                                        ; $6010: $3e $f4
	cp [hl]                                          ; $6012: $be
	db $f4                                           ; $6013: $f4
	db $f4                                           ; $6014: $f4
	sbc d                                            ; $6015: $9a
	ldh a, [rIF]                                     ; $6016: $f0 $0f
	inc c                                            ; $6018: $0c
	inc bc                                           ; $6019: $03
	ld [bc], a                                       ; $601a: $02
	ld a, e                                          ; $601b: $7b
	cp $89                                           ; $601c: $fe $89
	inc bc                                           ; $601e: $03
	dec b                                            ; $601f: $05
	rlca                                             ; $6020: $07
	dec c                                            ; $6021: $0d
	rrca                                             ; $6022: $0f
	ld [$190f], sp                                   ; $6023: $08 $0f $19
	rra                                              ; $6026: $1f
	ld de, $331f                                     ; $6027: $11 $1f $33
	ccf                                              ; $602a: $3f
	ldh a, [c]                                       ; $602b: $f2
	rst $38                                          ; $602c: $ff
	ld h, d                                          ; $602d: $62
	rst $38                                          ; $602e: $ff
	ldh [c], a                                       ; $602f: $e2
	rst $38                                          ; $6030: $ff
	push hl                                          ; $6031: $e5
	rst $38                                          ; $6032: $ff
	ld h, l                                          ; $6033: $65
	ld a, e                                          ; $6034: $7b
	cp $80                                           ; $6035: $fe $80
	jr jr_064_5ff3                                   ; $6037: $18 $ba

	jr c, jr_064_60a3                                ; $6039: $38 $68

	jr c, @+$6f                                      ; $603b: $38 $6d

	ld a, b                                          ; $603d: $78
	ld c, l                                          ; $603e: $4d
	ld a, l                                          ; $603f: $7d
	rst FarCall                                          ; $6040: $f7
	ld c, l                                          ; $6041: $4d
	rst FarCall                                          ; $6042: $f7
	ld a, l                                          ; $6043: $7d
	rst JumpTable                                          ; $6044: $c7
	rst JumpTable                                          ; $6045: $c7
	rst $38                                          ; $6046: $ff
	ld a, e                                          ; $6047: $7b
	add a                                            ; $6048: $87
	ld a, a                                          ; $6049: $7f
	di                                               ; $604a: $f3
	adc l                                            ; $604b: $8d
	sbc e                                            ; $604c: $9b
	inc a                                            ; $604d: $3c
	ld a, e                                          ; $604e: $7b
	ld [hl], l                                       ; $604f: $75
	ld a, b                                          ; $6050: $78
	ld c, l                                          ; $6051: $4d
	ld a, b                                          ; $6052: $78
	inc a                                            ; $6053: $3c
	jr nc, jr_064_60d2                               ; $6054: $30 $7c

	add b                                            ; $6056: $80
	nop                                              ; $6057: $00
	sub d                                            ; $6058: $92
	rst $38                                          ; $6059: $ff
	sbc c                                            ; $605a: $99
	rst $38                                          ; $605b: $ff
	reti                                             ; $605c: $d9


	rst $38                                          ; $605d: $ff
	db $dd                                           ; $605e: $dd
	rst $38                                          ; $605f: $ff
	call c, $f277                                    ; $6060: $dc $77 $f2
	ccf                                              ; $6063: $3f
	rst $38                                          ; $6064: $ff
	scf                                              ; $6065: $37
	rst $38                                          ; $6066: $ff
	db $10                                           ; $6067: $10
	ldh [$1f], a                                     ; $6068: $e0 $1f
	jp Jump_064_4730                                 ; $606a: $c3 $30 $47


	inc hl                                           ; $606d: $23
	inc b                                            ; $606e: $04
	and $e8                                          ; $606f: $e6 $e8
	dec b                                            ; $6071: $05
	db $ed                                           ; $6072: $ed
	ld bc, $012d                                     ; $6073: $01 $2d $01
	add b                                            ; $6076: $80
	sub [hl]                                         ; $6077: $96
	nop                                              ; $6078: $00
	db $10                                           ; $6079: $10
	cp c                                             ; $607a: $b9
	db $10                                           ; $607b: $10
	sbc l                                            ; $607c: $9d
	ld [$8cdd], sp                                   ; $607d: $08 $dd $8c
	adc $ca                                          ; $6080: $ce $ca
	rst AddAOntoHL                                          ; $6082: $ef
	push hl                                          ; $6083: $e5
	xor a                                            ; $6084: $af
	ld [hl], h                                       ; $6085: $74
	rst SubAFromDE                                          ; $6086: $df
	ld a, [$0fcf]                                    ; $6087: $fa $cf $0f
	rst FarCall                                          ; $608a: $f7
	rst FarCall                                          ; $608b: $f7
	add hl, bc                                       ; $608c: $09
	cp b                                             ; $608d: $b8
	rst JumpTable                                          ; $608e: $c7
	ld l, e                                          ; $608f: $6b
	ld [hl], a                                       ; $6090: $77
	ei                                               ; $6091: $fb
	ld hl, sp-$25                                    ; $6092: $f8 $db
	ldh a, [$3b]                                     ; $6094: $f0 $3b
	sbc e                                            ; $6096: $9b
	ldh [$f7], a                                     ; $6097: $e0 $f7
	ret nz                                           ; $6099: $c0

	rrca                                             ; $609a: $0f
	cp [hl]                                          ; $609b: $be
	ld a, a                                          ; $609c: $7f
	rra                                              ; $609d: $1f
	rra                                              ; $609e: $1f
	add [hl]                                         ; $609f: $86
	ld bc, $033e                                     ; $60a0: $01 $3e $03

jr_064_60a3:
	ld a, [hl]                                       ; $60a3: $7e
	rlca                                             ; $60a4: $07
	ld a, h                                          ; $60a5: $7c
	rrca                                             ; $60a6: $0f
	ld hl, sp+$3f                                    ; $60a7: $f8 $3f
	ldh [rIE], a                                     ; $60a9: $e0 $ff
	ret nc                                           ; $60ab: $d0

	cp $a0                                           ; $60ac: $fe $a0
	db $fc                                           ; $60ae: $fc
	ld b, b                                          ; $60af: $40
	ld hl, sp+$40                                    ; $60b0: $f8 $40
	pop af                                           ; $60b2: $f1
	add b                                            ; $60b3: $80
	pop hl                                           ; $60b4: $e1
	add b                                            ; $60b5: $80
	and $80                                          ; $60b6: $e6 $80
	adc $33                                          ; $60b8: $ce $33
	ld b, b                                          ; $60ba: $40
	sbc d                                            ; $60bb: $9a
	call c, $dd79                                    ; $60bc: $dc $79 $dd
	ld a, a                                          ; $60bf: $7f
	rst FarCall                                          ; $60c0: $f7
	ld l, a                                          ; $60c1: $6f
	ld b, b                                          ; $60c2: $40
	ld b, a                                          ; $60c3: $47
	ld h, b                                          ; $60c4: $60
	sub h                                            ; $60c5: $94
	ei                                               ; $60c6: $fb
	rlca                                             ; $60c7: $07
	rst $38                                          ; $60c8: $ff
	inc bc                                           ; $60c9: $03
	ld a, l                                          ; $60ca: $7d
	di                                               ; $60cb: $f3
	db $fc                                           ; $60cc: $fc
	ei                                               ; $60cd: $fb
	dec e                                            ; $60ce: $1d
	cp b                                             ; $60cf: $b8
	dec l                                            ; $60d0: $2d
	rra                                              ; $60d1: $1f

jr_064_60d2:
	ld h, b                                          ; $60d2: $60
	sub a                                            ; $60d3: $97
	jr nz, jr_064_60dd                               ; $60d4: $20 $07

	db $e3                                           ; $60d6: $e3
	rst AddAOntoHL                                          ; $60d7: $ef
	rlca                                             ; $60d8: $07
	db $ec                                           ; $60d9: $ec
	ld b, $2c                                        ; $60da: $06 $2c
	dec hl                                           ; $60dc: $2b

jr_064_60dd:
	ld h, b                                          ; $60dd: $60
	sub e                                            ; $60de: $93
	ld hl, sp+$07                                    ; $60df: $f8 $07
	cp e                                             ; $60e1: $bb
	rst JumpTable                                          ; $60e2: $c7
	db $eb                                           ; $60e3: $eb
	ldh a, [$7b]                                     ; $60e4: $f0 $7b
	ld hl, sp-$6d                                    ; $60e6: $f8 $93
	ldh a, [$f7]                                     ; $60e8: $f0 $f7
	ldh [$2b], a                                     ; $60ea: $e0 $2b
	add b                                            ; $60ec: $80
	sbc d                                            ; $60ed: $9a
	call c, $f47f                                    ; $60ee: $dc $7f $f4
	ccf                                              ; $60f1: $3f
	push af                                          ; $60f2: $f5
	daa                                              ; $60f3: $27
	add b                                            ; $60f4: $80
	sub a                                            ; $60f5: $97
	db $fd                                           ; $60f6: $fd
	inc bc                                           ; $60f7: $03
	db $fc                                           ; $60f8: $fc
	ld [hl], e                                       ; $60f9: $73
	sbc l                                            ; $60fa: $9d
	cp b                                             ; $60fb: $b8
	cp l                                             ; $60fc: $bd
	ld hl, sp+$1b                                    ; $60fd: $f8 $1b
	add b                                            ; $60ff: $80
	sbc d                                            ; $6100: $9a
	ldh [$ef], a                                     ; $6101: $e0 $ef
	inc bc                                           ; $6103: $03
	db $ec                                           ; $6104: $ec
	ld b, $26                                        ; $6105: $06 $26
	ldh [$7f], a                                     ; $6107: $e0 $7f
	add b                                            ; $6109: $80
	ld a, a                                          ; $610a: $7f
	cp d                                             ; $610b: $ba
	sbc d                                            ; $610c: $9a
	db $db                                           ; $610d: $db
	ldh [$73], a                                     ; $610e: $e0 $73
	ld hl, sp-$0d                                    ; $6110: $f8 $f3
	inc bc                                           ; $6112: $03
	add b                                            ; $6113: $80
	inc hl                                           ; $6114: $23
	add b                                            ; $6115: $80
	ld a, a                                          ; $6116: $7f
	db $fc                                           ; $6117: $fc
	sbc d                                            ; $6118: $9a
	nop                                              ; $6119: $00
	db $fd                                           ; $611a: $fd
	add sp, -$04                                     ; $611b: $e8 $fc
	ldh a, [rAUD3LEN]                                ; $611d: $f0 $1b
	add b                                            ; $611f: $80
	sbc l                                            ; $6120: $9d
	nop                                              ; $6121: $00
	rst AddAOntoHL                                          ; $6122: $ef
	inc de                                           ; $6123: $13
	add b                                            ; $6124: $80
	sbc [hl]                                         ; $6125: $9e
	ei                                               ; $6126: $fb
	cp a                                             ; $6127: $bf
	ei                                               ; $6128: $fb
	di                                               ; $6129: $f3
	sbc b                                            ; $612a: $98
	ret nc                                           ; $612b: $d0

	rst FarCall                                          ; $612c: $f7
	ldh [$03], a                                     ; $612d: $e0 $03
	ld bc, $013d                                     ; $612f: $01 $3d $01
	db $fd                                           ; $6132: $fd
	add [hl]                                         ; $6133: $86
	add c                                            ; $6134: $81
	ld bc, $80c0                                     ; $6135: $01 $c0 $80
	ldh [$c0], a                                     ; $6138: $e0 $c0
	ldh a, [$e0]                                     ; $613a: $f0 $e0
	ld e, h                                          ; $613c: $5c
	ld hl, sp+$5e                                    ; $613d: $f8 $5e
	db $fc                                           ; $613f: $fc
	adc a                                            ; $6140: $8f
	rst $38                                          ; $6141: $ff
	sub a                                            ; $6142: $97
	cp a                                             ; $6143: $bf
	sub a                                            ; $6144: $97
	cp a                                             ; $6145: $bf
	dec d                                            ; $6146: $15
	cp a                                             ; $6147: $bf
	dec h                                            ; $6148: $25
	cpl                                              ; $6149: $2f
	dec bc                                           ; $614a: $0b
	cpl                                              ; $614b: $2f
	ret nz                                           ; $614c: $c0

	cp l                                             ; $614d: $bd
	add $00                                          ; $614e: $c6 $00
	ld h, b                                          ; $6150: $60
	ldh [$9e], a                                     ; $6151: $e0 $9e
	ld b, b                                          ; $6153: $40
	ei                                               ; $6154: $fb
	ld a, a                                          ; $6155: $7f
	db $d3                                           ; $6156: $d3
	sub c                                            ; $6157: $91
	rlca                                             ; $6158: $07
	ld bc, $071f                                     ; $6159: $01 $1f $07
	rst $38                                          ; $615c: $ff
	rra                                              ; $615d: $1f
	rst $38                                          ; $615e: $ff
	ccf                                              ; $615f: $3f
	cp $07                                           ; $6160: $fe $07
	adc $07                                          ; $6162: $ce $07
	adc h                                            ; $6164: $8c
	rlca                                             ; $6165: $07
	ld l, a                                          ; $6166: $6f
	ret nz                                           ; $6167: $c0

	rst SubAFromDE                                          ; $6168: $df
	ld bc, $819d                                     ; $6169: $01 $9d $81
	nop                                              ; $616c: $00
	inc de                                           ; $616d: $13
	ret nz                                           ; $616e: $c0

	sbc e                                            ; $616f: $9b
	ld h, b                                          ; $6170: $60
	ldh [$c0], a                                     ; $6171: $e0 $c0
	ret nz                                           ; $6173: $c0

	rrca                                             ; $6174: $0f
	ret nz                                           ; $6175: $c0

	sbc l                                            ; $6176: $9d
	ld bc, $13c1                                     ; $6177: $01 $c1 $13
	ret nz                                           ; $617a: $c0

	sbc l                                            ; $617b: $9d
	ld h, b                                          ; $617c: $60
	jr nz, @+$71                                     ; $617d: $20 $6f

	cp [hl]                                          ; $617f: $be
	rra                                              ; $6180: $1f
	ret nz                                           ; $6181: $c0

	rrca                                             ; $6182: $0f
	add b                                            ; $6183: $80
	ld a, e                                          ; $6184: $7b
	ret nz                                           ; $6185: $c0

	ld [hl], a                                       ; $6186: $77
	cp $9e                                           ; $6187: $fe $9e
	ret nz                                           ; $6189: $c0

	ld b, a                                          ; $618a: $47
	ret nz                                           ; $618b: $c0

jr_064_618c:
	sbc b                                            ; $618c: $98
	ld bc, $4180                                     ; $618d: $01 $80 $41
	db $ed                                           ; $6190: $ed
	ld c, c                                          ; $6191: $49
	res 1, d                                         ; $6192: $cb $8a
	db $db                                           ; $6194: $db
	sub d                                            ; $6195: $92
	sbc e                                            ; $6196: $9b
	ld [de], a                                       ; $6197: $12
	cp e                                             ; $6198: $bb
	inc de                                           ; $6199: $13
	cp a                                             ; $619a: $bf
	rla                                              ; $619b: $17
	cp a                                             ; $619c: $bf
	scf                                              ; $619d: $37
	db $fc                                           ; $619e: $fc
	ld a, $fd                                        ; $619f: $3e $fd
	ld a, b                                          ; $61a1: $78
	db $fc                                           ; $61a2: $fc
	ld a, c                                          ; $61a3: $79
	db $dd                                           ; $61a4: $dd
	ld a, d                                          ; $61a5: $7a
	db $dd                                           ; $61a6: $dd
	ld a, [hl]                                       ; $61a7: $7e
	db $f4                                           ; $61a8: $f4
	ld a, $f4                                        ; $61a9: $3e $f4
	cp [hl]                                          ; $61ab: $be
	db $f4                                           ; $61ac: $f4
	db $f4                                           ; $61ad: $f4
	sbc d                                            ; $61ae: $9a
	ldh a, [rIF]                                     ; $61af: $f0 $0f
	inc c                                            ; $61b1: $0c
	inc bc                                           ; $61b2: $03
	ld [bc], a                                       ; $61b3: $02
	ld a, e                                          ; $61b4: $7b
	cp $89                                           ; $61b5: $fe $89
	inc bc                                           ; $61b7: $03
	dec b                                            ; $61b8: $05
	rlca                                             ; $61b9: $07
	dec c                                            ; $61ba: $0d
	rrca                                             ; $61bb: $0f
	ld [$190f], sp                                   ; $61bc: $08 $0f $19
	rra                                              ; $61bf: $1f
	ld de, $331f                                     ; $61c0: $11 $1f $33
	ccf                                              ; $61c3: $3f
	ldh a, [c]                                       ; $61c4: $f2
	rst $38                                          ; $61c5: $ff
	ld h, d                                          ; $61c6: $62
	rst $38                                          ; $61c7: $ff
	ldh [c], a                                       ; $61c8: $e2
	rst $38                                          ; $61c9: $ff
	push hl                                          ; $61ca: $e5
	rst $38                                          ; $61cb: $ff
	ld h, l                                          ; $61cc: $65
	ld a, e                                          ; $61cd: $7b
	cp $80                                           ; $61ce: $fe $80
	jr jr_064_618c                                   ; $61d0: $18 $ba

	jr c, jr_064_623c                                ; $61d2: $38 $68

	jr c, @+$6f                                      ; $61d4: $38 $6d

	ld a, b                                          ; $61d6: $78
	ld c, l                                          ; $61d7: $4d
	ld a, l                                          ; $61d8: $7d
	rst JumpTable                                          ; $61d9: $c7
	ld c, l                                          ; $61da: $4d
	rst FarCall                                          ; $61db: $f7
	ld a, l                                          ; $61dc: $7d
	rst FarCall                                          ; $61dd: $f7
	rst JumpTable                                          ; $61de: $c7
	ei                                               ; $61df: $fb
	ei                                               ; $61e0: $fb
	rlca                                             ; $61e1: $07
	rst $38                                          ; $61e2: $ff
	di                                               ; $61e3: $f3
	adc l                                            ; $61e4: $8d
	sbc e                                            ; $61e5: $9b
	inc a                                            ; $61e6: $3c
	ld a, e                                          ; $61e7: $7b
	ld [hl], l                                       ; $61e8: $75
	ld a, b                                          ; $61e9: $78
	ld c, l                                          ; $61ea: $4d
	ld a, b                                          ; $61eb: $78
	inc a                                            ; $61ec: $3c
	jr nc, @+$7e                                     ; $61ed: $30 $7c

	add b                                            ; $61ef: $80
	nop                                              ; $61f0: $00
	sub d                                            ; $61f1: $92
	rst $38                                          ; $61f2: $ff
	sbc c                                            ; $61f3: $99
	rst $38                                          ; $61f4: $ff
	reti                                             ; $61f5: $d9


	rst $38                                          ; $61f6: $ff
	call c, $dcf7                                    ; $61f7: $dc $f7 $dc
	ld [hl], a                                       ; $61fa: $77
	cp $33                                           ; $61fb: $fe $33
	ld sp, hl                                        ; $61fd: $f9
	scf                                              ; $61fe: $37
	rst $38                                          ; $61ff: $ff
	db $10                                           ; $6200: $10
	ldh [$1f], a                                     ; $6201: $e0 $1f
	jp Jump_064_4730                                 ; $6203: $c3 $30 $47


	inc hl                                           ; $6206: $23
	inc b                                            ; $6207: $04
	and $e8                                          ; $6208: $e6 $e8
	dec b                                            ; $620a: $05
	db $ed                                           ; $620b: $ed
	ld bc, $012d                                     ; $620c: $01 $2d $01
	add b                                            ; $620f: $80
	sub [hl]                                         ; $6210: $96
	nop                                              ; $6211: $00
	db $10                                           ; $6212: $10
	cp c                                             ; $6213: $b9
	db $10                                           ; $6214: $10
	sbc l                                            ; $6215: $9d
	ld [$8cdd], sp                                   ; $6216: $08 $dd $8c
	adc $8a                                          ; $6219: $ce $8a
	rst AddAOntoHL                                          ; $621b: $ef
	ld b, l                                          ; $621c: $45
	rst AddAOntoHL                                          ; $621d: $ef
	ld h, h                                          ; $621e: $64
	rst $38                                          ; $621f: $ff
	ld a, [$0fdf]                                    ; $6220: $fa $df $0f
	rst FarCall                                          ; $6223: $f7
	rst FarCall                                          ; $6224: $f7
	add hl, bc                                       ; $6225: $09
	ret c                                            ; $6226: $d8

	rst SubAFromBC                                          ; $6227: $e7
	dec sp                                           ; $6228: $3b
	ld a, a                                          ; $6229: $7f
	ei                                               ; $622a: $fb
	ldh a, [$db]                                     ; $622b: $f0 $db
	ldh a, [$3b]                                     ; $622d: $f0 $3b
	sbc e                                            ; $622f: $9b
	ldh [$f7], a                                     ; $6230: $e0 $f7
	ret nz                                           ; $6232: $c0

	rrca                                             ; $6233: $0f
	cp [hl]                                          ; $6234: $be
	ld a, a                                          ; $6235: $7f
	rra                                              ; $6236: $1f
	rra                                              ; $6237: $1f
	add [hl]                                         ; $6238: $86
	ld bc, $033e                                     ; $6239: $01 $3e $03

jr_064_623c:
	ld a, [hl]                                       ; $623c: $7e
	rlca                                             ; $623d: $07
	ld a, h                                          ; $623e: $7c
	rrca                                             ; $623f: $0f
	ld hl, sp+$3f                                    ; $6240: $f8 $3f
	ldh [rIE], a                                     ; $6242: $e0 $ff
	ret nc                                           ; $6244: $d0

	cp $a0                                           ; $6245: $fe $a0
	db $fc                                           ; $6247: $fc
	ld b, b                                          ; $6248: $40
	ld hl, sp+$40                                    ; $6249: $f8 $40
	pop af                                           ; $624b: $f1
	add b                                            ; $624c: $80
	pop hl                                           ; $624d: $e1
	add b                                            ; $624e: $80
	and $80                                          ; $624f: $e6 $80
	adc $33                                          ; $6251: $ce $33
	ld b, b                                          ; $6253: $40
	sbc d                                            ; $6254: $9a
	call c, $dd79                                    ; $6255: $dc $79 $dd
	ld a, a                                          ; $6258: $7f
	push af                                          ; $6259: $f5
	ld l, a                                          ; $625a: $6f
	ld b, b                                          ; $625b: $40
	dec sp                                           ; $625c: $3b
	ld h, b                                          ; $625d: $60
	sub a                                            ; $625e: $97
	inc bc                                           ; $625f: $03
	db $fd                                           ; $6260: $fd
	di                                               ; $6261: $f3
	sbc h                                            ; $6262: $9c
	cp e                                             ; $6263: $bb
	ld l, l                                          ; $6264: $6d
	ld hl, sp+$1d                                    ; $6265: $f8 $1d
	rra                                              ; $6267: $1f
	ld h, b                                          ; $6268: $60
	sub a                                            ; $6269: $97
	jr nz, jr_064_6273                               ; $626a: $20 $07

	db $e3                                           ; $626c: $e3
	xor $06                                          ; $626d: $ee $06
	db $ed                                           ; $626f: $ed
	rlca                                             ; $6270: $07
	inc l                                            ; $6271: $2c
	dec hl                                           ; $6272: $2b

jr_064_6273:
	ld h, b                                          ; $6273: $60
	sub e                                            ; $6274: $93
	ld hl, sp+$07                                    ; $6275: $f8 $07
	ei                                               ; $6277: $fb
	rst SubAFromBC                                          ; $6278: $e7
	ld a, e                                          ; $6279: $7b
	ldh a, [$db]                                     ; $627a: $f0 $db
	ld hl, sp+$33                                    ; $627c: $f8 $33
	ldh a, [$f7]                                     ; $627e: $f0 $f7
	ldh [$2b], a                                     ; $6280: $e0 $2b
	add b                                            ; $6282: $80
	sbc d                                            ; $6283: $9a
	call c, $f57f                                    ; $6284: $dc $7f $f5
	ccf                                              ; $6287: $3f
	push af                                          ; $6288: $f5
	inc hl                                           ; $6289: $23
	add b                                            ; $628a: $80
	sub [hl]                                         ; $628b: $96
	inc bc                                           ; $628c: $03
	db $fc                                           ; $628d: $fc
	di                                               ; $628e: $f3
	dec a                                            ; $628f: $3d
	ld a, b                                          ; $6290: $78
	ld c, l                                          ; $6291: $4d
	ld hl, sp+$7c                                    ; $6292: $f8 $7c
	ld [hl], b                                       ; $6294: $70
	inc hl                                           ; $6295: $23
	add b                                            ; $6296: $80
	sbc d                                            ; $6297: $9a
	ldh [$ef], a                                     ; $6298: $e0 $ef
	inc bc                                           ; $629a: $03
	xor $06                                          ; $629b: $ee $06
	dec de                                           ; $629d: $1b
	add b                                            ; $629e: $80
	ld a, a                                          ; $629f: $7f
	cp $9b                                           ; $62a0: $fe $9b
	ldh [$7b], a                                     ; $62a2: $e0 $7b
	ldh a, [hDisp1_OBP0]                                     ; $62a4: $f0 $93
	rla                                              ; $62a6: $17
	add b                                            ; $62a7: $80
	sbc [hl]                                         ; $62a8: $9e
	db $f4                                           ; $62a9: $f4
	inc de                                           ; $62aa: $13
	add b                                            ; $62ab: $80
	ld a, a                                          ; $62ac: $7f
	db $fc                                           ; $62ad: $fc
	sbc d                                            ; $62ae: $9a
	nop                                              ; $62af: $00
	db $fd                                           ; $62b0: $fd
	add sp, -$04                                     ; $62b1: $e8 $fc
	ldh a, [rAUD3LEN]                                ; $62b3: $f0 $1b
	add b                                            ; $62b5: $80
	sbc h                                            ; $62b6: $9c
	nop                                              ; $62b7: $00
	rst AddAOntoHL                                          ; $62b8: $ef
	ld b, $26                                        ; $62b9: $06 $26
	ld h, b                                          ; $62bb: $60
	ld [hl], e                                       ; $62bc: $73
	add b                                            ; $62bd: $80
	sbc e                                            ; $62be: $9b
	nop                                              ; $62bf: $00
	ei                                               ; $62c0: $fb
	ld [$7bf3], sp                                   ; $62c1: $08 $f3 $7b
	add b                                            ; $62c4: $80
	sbc e                                            ; $62c5: $9b
	inc bc                                           ; $62c6: $03
	ld bc, $013d                                     ; $62c7: $01 $3d $01
	db $fd                                           ; $62ca: $fd
	add [hl]                                         ; $62cb: $86
	add c                                            ; $62cc: $81
	ld bc, $80c0                                     ; $62cd: $01 $c0 $80
	ldh [$c0], a                                     ; $62d0: $e0 $c0
	ldh a, [$e0]                                     ; $62d2: $f0 $e0
	ld e, h                                          ; $62d4: $5c
	ld hl, sp+$5e                                    ; $62d5: $f8 $5e
	db $fc                                           ; $62d7: $fc
	adc a                                            ; $62d8: $8f
	rst $38                                          ; $62d9: $ff
	sub a                                            ; $62da: $97
	cp a                                             ; $62db: $bf
	sub a                                            ; $62dc: $97
	cp a                                             ; $62dd: $bf
	dec d                                            ; $62de: $15

Jump_064_62df:
	cp a                                             ; $62df: $bf
	dec h                                            ; $62e0: $25
	cpl                                              ; $62e1: $2f
	dec bc                                           ; $62e2: $0b
	cpl                                              ; $62e3: $2f
	ret nz                                           ; $62e4: $c0

	cp l                                             ; $62e5: $bd
	add $00                                          ; $62e6: $c6 $00
	nop                                              ; $62e8: $00
	ldh [$df], a                                     ; $62e9: $e0 $df
	ld b, b                                          ; $62eb: $40
	cp l                                             ; $62ec: $bd
	ret nz                                           ; $62ed: $c0

	nop                                              ; $62ee: $00
	ld bc, $9207                                     ; $62ef: $01 $07 $92
	ld bc, $071f                                     ; $62f2: $01 $1f $07
	rst $38                                          ; $62f5: $ff
	rra                                              ; $62f6: $1f
	rst $38                                          ; $62f7: $ff
	ccf                                              ; $62f8: $3f
	cp $07                                           ; $62f9: $fe $07
	adc $07                                          ; $62fb: $ce $07
	adc h                                            ; $62fd: $8c
	rlca                                             ; $62fe: $07
	ld l, a                                          ; $62ff: $6f
	ret nz                                           ; $6300: $c0

	rst SubAFromDE                                          ; $6301: $df
	ld bc, $819d                                     ; $6302: $01 $9d $81
	nop                                              ; $6305: $00
	rla                                              ; $6306: $17
	ret nz                                           ; $6307: $c0

	db $dd                                           ; $6308: $dd
	ldh [rPCM34], a                                  ; $6309: $e0 $77
	jp nz, $c01b                                     ; $630b: $c2 $1b $c0

	inc de                                           ; $630e: $13
	add b                                            ; $630f: $80
	sbc b                                            ; $6310: $98
	ld h, b                                          ; $6311: $60
	ld b, b                                          ; $6312: $40
	ldh [rAUD4LEN], a                                ; $6313: $e0 $20
	ldh [$c0], a                                     ; $6315: $e0 $c0
	ldh [$03], a                                     ; $6317: $e0 $03
	ret nz                                           ; $6319: $c0

	inc hl                                           ; $631a: $23
	add b                                            ; $631b: $80
	ld a, a                                          ; $631c: $7f
	call nz, $c07f                                   ; $631d: $c4 $7f $c0
	ld a, e                                          ; $6320: $7b
	cp [hl]                                          ; $6321: $be
	ccf                                              ; $6322: $3f
	ret nz                                           ; $6323: $c0

jr_064_6324:
	sub d                                            ; $6324: $92
	ld bc, $4180                                     ; $6325: $01 $80 $41
	db $ed                                           ; $6328: $ed
	ld c, c                                          ; $6329: $49
	res 1, d                                         ; $632a: $cb $8a
	db $db                                           ; $632c: $db
	sub d                                            ; $632d: $92
	sbc e                                            ; $632e: $9b
	ld [de], a                                       ; $632f: $12
	cp e                                             ; $6330: $bb
	inc de                                           ; $6331: $13
	cp a                                             ; $6332: $bf
	rla                                              ; $6333: $17
	cp a                                             ; $6334: $bf
	scf                                              ; $6335: $37
	db $fc                                           ; $6336: $fc
	ld a, $fd                                        ; $6337: $3e $fd
	ld a, b                                          ; $6339: $78
	db $fc                                           ; $633a: $fc
	ld a, c                                          ; $633b: $79
	db $dd                                           ; $633c: $dd
	ld a, d                                          ; $633d: $7a
	call c, $f47e                                    ; $633e: $dc $7e $f4
	ld a, $f4                                        ; $6341: $3e $f4
	cp [hl]                                          ; $6343: $be
	db $f4                                           ; $6344: $f4
	db $f4                                           ; $6345: $f4
	sbc d                                            ; $6346: $9a
	ldh a, [rIF]                                     ; $6347: $f0 $0f
	inc c                                            ; $6349: $0c
	inc bc                                           ; $634a: $03
	ld [bc], a                                       ; $634b: $02
	ld a, e                                          ; $634c: $7b
	cp $89                                           ; $634d: $fe $89
	inc bc                                           ; $634f: $03
	dec b                                            ; $6350: $05
	rlca                                             ; $6351: $07
	dec c                                            ; $6352: $0d
	rrca                                             ; $6353: $0f
	ld [$190f], sp                                   ; $6354: $08 $0f $19
	rra                                              ; $6357: $1f
	ld de, $331f                                     ; $6358: $11 $1f $33
	ccf                                              ; $635b: $3f
	ldh a, [c]                                       ; $635c: $f2
	rst $38                                          ; $635d: $ff
	ld h, d                                          ; $635e: $62
	rst $38                                          ; $635f: $ff
	ldh [c], a                                       ; $6360: $e2
	rst $38                                          ; $6361: $ff
	push hl                                          ; $6362: $e5
	rst $38                                          ; $6363: $ff
	ld h, l                                          ; $6364: $65
	ld a, e                                          ; $6365: $7b
	cp $80                                           ; $6366: $fe $80
	jr jr_064_6324                                   ; $6368: $18 $ba

	jr c, jr_064_63d4                                ; $636a: $38 $68

	jr c, jr_064_63db                                ; $636c: $38 $6d

	ld a, b                                          ; $636e: $78
	ld c, l                                          ; $636f: $4d
	ld a, l                                          ; $6370: $7d
	rst SubAFromBC                                          ; $6371: $e7
	ld e, l                                          ; $6372: $5d
	rst FarCall                                          ; $6373: $f7
	ld l, l                                          ; $6374: $6d
	rst SubAFromDE                                          ; $6375: $df
	rst JumpTable                                          ; $6376: $c7
	rst $38                                          ; $6377: $ff
	ei                                               ; $6378: $fb
	rlca                                             ; $6379: $07
	ld a, a                                          ; $637a: $7f
	di                                               ; $637b: $f3
	adc l                                            ; $637c: $8d
	db $db                                           ; $637d: $db
	inc a                                            ; $637e: $3c
	cp e                                             ; $637f: $bb
	ld [hl], l                                       ; $6380: $75
	ld a, b                                          ; $6381: $78
	ld c, l                                          ; $6382: $4d
	ld a, b                                          ; $6383: $78
	inc a                                            ; $6384: $3c
	jr nc, jr_064_6403                               ; $6385: $30 $7c

	sbc c                                            ; $6387: $99
	nop                                              ; $6388: $00
	sub d                                            ; $6389: $92
	rst $38                                          ; $638a: $ff
	sub c                                            ; $638b: $91
	rst $38                                          ; $638c: $ff
	reti                                             ; $638d: $d9


	ld a, e                                          ; $638e: $7b
	cp $80                                           ; $638f: $fe $80
	call c, $fc77                                    ; $6391: $dc $77 $fc
	inc sp                                           ; $6394: $33
	ld sp, hl                                        ; $6395: $f9
	scf                                              ; $6396: $37
	di                                               ; $6397: $f3
	inc e                                            ; $6398: $1c
	ldh [$1f], a                                     ; $6399: $e0 $1f
	jp $4530                                         ; $639b: $c3 $30 $45


	inc hl                                           ; $639e: $23
	ld b, $e7                                        ; $639f: $06 $e7
	db $ec                                           ; $63a1: $ec
	ld [bc], a                                       ; $63a2: $02
	db $ed                                           ; $63a3: $ed
	ld bc, $012d                                     ; $63a4: $01 $2d $01
	sub [hl]                                         ; $63a7: $96
	nop                                              ; $63a8: $00
	db $10                                           ; $63a9: $10
	cp c                                             ; $63aa: $b9
	db $10                                           ; $63ab: $10
	sbc l                                            ; $63ac: $9d
	ld [$0cdd], sp                                   ; $63ad: $08 $dd $0c
	add l                                            ; $63b0: $85
	adc $8a                                          ; $63b1: $ce $8a
	rst AddAOntoHL                                          ; $63b3: $ef
	and l                                            ; $63b4: $a5
	rst AddAOntoHL                                          ; $63b5: $ef
	ld [hl], h                                       ; $63b6: $74
	rst SubAFromDE                                          ; $63b7: $df
	ld a, [$0fcf]                                    ; $63b8: $fa $cf $0f
	rst FarCall                                          ; $63bb: $f7
	rst FarCall                                          ; $63bc: $f7
	add hl, bc                                       ; $63bd: $09
	ret c                                            ; $63be: $d8

	rst SubAFromBC                                          ; $63bf: $e7
	dec sp                                           ; $63c0: $3b
	ccf                                              ; $63c1: $3f
	ei                                               ; $63c2: $fb
	ldh a, [$db]                                     ; $63c3: $f0 $db
	ldh a, [$3b]                                     ; $63c5: $f0 $3b
	ldh [$f7], a                                     ; $63c7: $e0 $f7
	ret nz                                           ; $63c9: $c0

	rrca                                             ; $63ca: $0f
	cp [hl]                                          ; $63cb: $be
	ld a, a                                          ; $63cc: $7f
	rra                                              ; $63cd: $1f
	rra                                              ; $63ce: $1f
	add [hl]                                         ; $63cf: $86
	ld bc, $033e                                     ; $63d0: $01 $3e $03
	ld a, [hl]                                       ; $63d3: $7e

jr_064_63d4:
	rlca                                             ; $63d4: $07
	ld a, h                                          ; $63d5: $7c
	rrca                                             ; $63d6: $0f
	ld hl, sp+$3f                                    ; $63d7: $f8 $3f
	ldh [rIE], a                                     ; $63d9: $e0 $ff

jr_064_63db:
	ret nc                                           ; $63db: $d0

	cp $a0                                           ; $63dc: $fe $a0
	db $fc                                           ; $63de: $fc
	ld b, b                                          ; $63df: $40
	ld hl, sp+$40                                    ; $63e0: $f8 $40
	pop af                                           ; $63e2: $f1
	add b                                            ; $63e3: $80
	pop hl                                           ; $63e4: $e1
	add b                                            ; $63e5: $80
	and $80                                          ; $63e6: $e6 $80
	adc $33                                          ; $63e8: $ce $33
	ld b, b                                          ; $63ea: $40
	sbc d                                            ; $63eb: $9a
	call c, $dd79                                    ; $63ec: $dc $79 $dd
	ld a, a                                          ; $63ef: $7f
	push af                                          ; $63f0: $f5
	ld l, a                                          ; $63f1: $6f
	ld b, b                                          ; $63f2: $40
	ld b, e                                          ; $63f3: $43
	ld h, b                                          ; $63f4: $60
	sub l                                            ; $63f5: $95
	rrca                                             ; $63f6: $0f
	rst $38                                          ; $63f7: $ff
	inc bc                                           ; $63f8: $03
	db $fd                                           ; $63f9: $fd
	di                                               ; $63fa: $f3
	sbc h                                            ; $63fb: $9c
	cp e                                             ; $63fc: $bb
	ld l, l                                          ; $63fd: $6d
	ld hl, sp+$1d                                    ; $63fe: $f8 $1d
	inc hl                                           ; $6400: $23
	ld h, b                                          ; $6401: $60
	sub [hl]                                         ; $6402: $96

jr_064_6403:
	ld b, a                                          ; $6403: $47
	jr nz, jr_064_640d                               ; $6404: $20 $07

	db $e3                                           ; $6406: $e3
	xor $06                                          ; $6407: $ee $06
	db $ed                                           ; $6409: $ed
	rlca                                             ; $640a: $07
	inc l                                            ; $640b: $2c
	dec hl                                           ; $640c: $2b

jr_064_640d:
	ld h, b                                          ; $640d: $60
	sub e                                            ; $640e: $93
	ld hl, sp+$07                                    ; $640f: $f8 $07
	ei                                               ; $6411: $fb
	rst SubAFromBC                                          ; $6412: $e7
	ld a, e                                          ; $6413: $7b
	ldh a, [$db]                                     ; $6414: $f0 $db
	ld hl, sp+$33                                    ; $6416: $f8 $33
	ldh a, [$f7]                                     ; $6418: $f0 $f7
	ldh [$2b], a                                     ; $641a: $e0 $2b
	add b                                            ; $641c: $80
	sbc d                                            ; $641d: $9a
	call c, $f57f                                    ; $641e: $dc $7f $f5
	ccf                                              ; $6421: $3f
	push af                                          ; $6422: $f5
	inc hl                                           ; $6423: $23
	add b                                            ; $6424: $80
	sbc c                                            ; $6425: $99
	inc bc                                           ; $6426: $03
	db $fc                                           ; $6427: $fc
	di                                               ; $6428: $f3
	sbc l                                            ; $6429: $9d
	cp b                                             ; $642a: $b8
	dec l                                            ; $642b: $2d
	rla                                              ; $642c: $17
	add b                                            ; $642d: $80
	sbc d                                            ; $642e: $9a
	ldh [$ef], a                                     ; $642f: $e0 $ef
	inc bc                                           ; $6431: $03
	xor $06                                          ; $6432: $ee $06
	dec de                                           ; $6434: $1b
	add b                                            ; $6435: $80
	ld a, a                                          ; $6436: $7f
	cp $9b                                           ; $6437: $fe $9b
	ldh [$7b], a                                     ; $6439: $e0 $7b
	ldh a, [hDisp1_OBP0]                                     ; $643b: $f0 $93
	dec de                                           ; $643d: $1b
	add b                                            ; $643e: $80
	ld a, [hl]                                       ; $643f: $7e
	ld b, b                                          ; $6440: $40
	inc de                                           ; $6441: $13
	add b                                            ; $6442: $80
	sbc b                                            ; $6443: $98
	inc bc                                           ; $6444: $03
	ld a, l                                          ; $6445: $7d
	nop                                              ; $6446: $00
	db $fd                                           ; $6447: $fd
	add sp, -$04                                     ; $6448: $e8 $fc
	ldh a, [rAUD3LEN]                                ; $644a: $f0 $1b
	add b                                            ; $644c: $80
	sbc h                                            ; $644d: $9c
	nop                                              ; $644e: $00
	xor $06                                          ; $644f: $ee $06
	ld h, $60                                        ; $6451: $26 $60
	ld [hl], e                                       ; $6453: $73
	add b                                            ; $6454: $80
	sbc e                                            ; $6455: $9b
	nop                                              ; $6456: $00
	ld a, e                                          ; $6457: $7b
	ld [$7bf3], sp                                   ; $6458: $08 $f3 $7b
	add b                                            ; $645b: $80
	sbc d                                            ; $645c: $9a
	inc bc                                           ; $645d: $03
	ld bc, $013d                                     ; $645e: $01 $3d $01
	nop                                              ; $6461: $00
	cp a                                             ; $6462: $bf
	ld bc, $8781                                     ; $6463: $01 $81 $87
	ld bc, $80c0                                     ; $6466: $01 $c0 $80
	ldh [$c0], a                                     ; $6469: $e0 $c0
	ldh a, [$e0]                                     ; $646b: $f0 $e0
	ld e, h                                          ; $646d: $5c
	ld hl, sp+$5e                                    ; $646e: $f8 $5e
	db $fc                                           ; $6470: $fc
	adc a                                            ; $6471: $8f
	rst $38                                          ; $6472: $ff
	sub a                                            ; $6473: $97
	cp a                                             ; $6474: $bf
	sub a                                            ; $6475: $97
	cp a                                             ; $6476: $bf
	dec d                                            ; $6477: $15
	cp a                                             ; $6478: $bf
	dec h                                            ; $6479: $25
	cpl                                              ; $647a: $2f
	dec bc                                           ; $647b: $0b
	cpl                                              ; $647c: $2f
	ret nz                                           ; $647d: $c0

	cp l                                             ; $647e: $bd
	add $00                                          ; $647f: $c6 $00
	add b                                            ; $6481: $80
	ldh [$9e], a                                     ; $6482: $e0 $9e
	ld b, b                                          ; $6484: $40
	ei                                               ; $6485: $fb
	ld a, a                                          ; $6486: $7f
	sub $91                                          ; $6487: $d6 $91
	rlca                                             ; $6489: $07
	ld bc, $071f                                     ; $648a: $01 $1f $07
	rst $38                                          ; $648d: $ff
	rra                                              ; $648e: $1f
	rst $38                                          ; $648f: $ff
	ccf                                              ; $6490: $3f
	cp $07                                           ; $6491: $fe $07
	adc $07                                          ; $6493: $ce $07
	adc h                                            ; $6495: $8c
	rlca                                             ; $6496: $07
	ld l, e                                          ; $6497: $6b
	ret nz                                           ; $6498: $c0

	sbc [hl]                                         ; $6499: $9e
	ld bc, $c00f                                     ; $649a: $01 $0f $c0
	ld a, a                                          ; $649d: $7f
	and $9d                                          ; $649e: $e6 $9d
	ldh [rAUD4LEN], a                                ; $64a0: $e0 $20
	ld a, e                                          ; $64a2: $7b
	db $fc                                           ; $64a3: $fc
	inc bc                                           ; $64a4: $03
	ret nz                                           ; $64a5: $c0

	inc de                                           ; $64a6: $13
	ret nz                                           ; $64a7: $c0

	ld a, e                                          ; $64a8: $7b
	cp [hl]                                          ; $64a9: $be
	inc bc                                           ; $64aa: $03
	ret nz                                           ; $64ab: $c0

	dec de                                           ; $64ac: $1b
	ret nz                                           ; $64ad: $c0

	sbc [hl]                                         ; $64ae: $9e
	ld h, b                                          ; $64af: $60
	ld a, e                                          ; $64b0: $7b
	cp $7f                                           ; $64b1: $fe $7f
	ld hl, sp+$47                                    ; $64b3: $f8 $47
	ret nz                                           ; $64b5: $c0

	rst $38                                          ; $64b6: $ff
	ld [bc], a                                       ; $64b7: $02
	rst SubAFromDE                                          ; $64b8: $df
	ld bc, $03df                                     ; $64b9: $01 $df $03
	sub a                                            ; $64bc: $97
	ld [bc], a                                       ; $64bd: $02
	inc bc                                           ; $64be: $03
	dec b                                            ; $64bf: $05
	rlca                                             ; $64c0: $07
	ld b, $06                                        ; $64c1: $06 $06
	inc b                                            ; $64c3: $04
	inc b                                            ; $64c4: $04
	ld sp, hl                                        ; $64c5: $f9
	push de                                          ; $64c6: $d5
	ld bc, $07df                                     ; $64c7: $01 $df $07
	add [hl]                                         ; $64ca: $86
	inc c                                            ; $64cb: $0c
	rrca                                             ; $64cc: $0f
	ld a, [bc]                                       ; $64cd: $0a
	dec c                                            ; $64ce: $0d
	dec de                                           ; $64cf: $1b
	inc e                                            ; $64d0: $1c
	rla                                              ; $64d1: $17
	jr jr_064_64eb                                   ; $64d2: $18 $17

	jr jr_064_650d                                   ; $64d4: $18 $37

	jr c, jr_064_6506                                ; $64d6: $38 $2e

	add hl, sp                                       ; $64d8: $39
	dec l                                            ; $64d9: $2d
	dec sp                                           ; $64da: $3b
	ld l, l                                          ; $64db: $6d
	ld a, e                                          ; $64dc: $7b
	ld b, l                                          ; $64dd: $45
	ld a, a                                          ; $64de: $7f
	ld b, l                                          ; $64df: $45
	ld a, a                                          ; $64e0: $7f
	rst JumpTable                                          ; $64e1: $c7
	rst $38                                          ; $64e2: $ff
	add d                                            ; $64e3: $82
	ld [hl], e                                       ; $64e4: $73
	cp $f3                                           ; $64e5: $fe $f3
	rst SubAFromDE                                          ; $64e7: $df
	ld bc, $dffd                                     ; $64e8: $01 $fd $df

jr_064_64eb:
	inc bc                                           ; $64eb: $03

Call_064_64ec:
	add b                                            ; $64ec: $80
	ld c, $0f                                        ; $64ed: $0e $0f
	dec de                                           ; $64ef: $1b
	inc e                                            ; $64f0: $1c
	jr nc, @+$41                                     ; $64f1: $30 $3f

	ld b, e                                          ; $64f3: $43
	ld a, a                                          ; $64f4: $7f
	adc [hl]                                         ; $64f5: $8e
	rst $38                                          ; $64f6: $ff
	dec [hl]                                         ; $64f7: $35
	or $6b                                           ; $64f8: $f6 $6b
	db $ec                                           ; $64fa: $ec
	sub a                                            ; $64fb: $97
	sbc b                                            ; $64fc: $98
	ld e, $11                                        ; $64fd: $1e $11
	inc a                                            ; $64ff: $3c
	inc hl                                           ; $6500: $23
	ld e, c                                          ; $6501: $59
	ld h, a                                          ; $6502: $67
	ld [hl], e                                       ; $6503: $73
	ld c, a                                          ; $6504: $4f
	and d                                            ; $6505: $a2

jr_064_6506:
	rst SubAFromDE                                          ; $6506: $df
	add a                                            ; $6507: $87
	cp $85                                           ; $6508: $fe $85
	cp $0d                                           ; $650a: $fe $0d
	sub c                                            ; $650c: $91

jr_064_650d:
	cp $15                                           ; $650d: $fe $15
	or $24                                           ; $650f: $f6 $24
	rst SubAFromBC                                          ; $6511: $e7
	ld h, h                                          ; $6512: $64
	rst SubAFromBC                                          ; $6513: $e7
	ld b, h                                          ; $6514: $44
	rst JumpTable                                          ; $6515: $c7
	call nz, $84c7                                   ; $6516: $c4 $c7 $84
	add a                                            ; $6519: $87
	add l                                            ; $651a: $85
	ld a, e                                          ; $651b: $7b
	cp $df                                           ; $651c: $fe $df
	rlca                                             ; $651e: $07
	rst SubAFromDE                                          ; $651f: $df
	ld b, $dd                                        ; $6520: $06 $dd
	ld [bc], a                                       ; $6522: $02
	reti                                             ; $6523: $d9


	ld bc, $6e7f                                     ; $6524: $01 $7f $6e
	ld e, a                                          ; $6527: $5f
	cp $99                                           ; $6528: $fe $99
	ld b, $07                                        ; $652a: $06 $07
	inc b                                            ; $652c: $04
	rlca                                             ; $652d: $07
	dec b                                            ; $652e: $05
	ld b, $37                                        ; $652f: $06 $37
	cp $80                                           ; $6531: $fe $80
	inc a                                            ; $6533: $3c
	ccf                                              ; $6534: $3f
	cp $ff                                           ; $6535: $fe $ff
	add [hl]                                         ; $6537: $86
	rst $38                                          ; $6538: $ff
	inc sp                                           ; $6539: $33
	rst GetHLinHL                                          ; $653a: $cf
	rlc a                                            ; $653b: $cb $07
	rlc a                                            ; $653d: $cb $07
	rra                                              ; $653f: $1f
	inc bc                                           ; $6540: $03
	dec e                                            ; $6541: $1d
	inc bc                                           ; $6542: $03
	ld a, l                                          ; $6543: $7d
	inc bc                                           ; $6544: $03
	db $fd                                           ; $6545: $fd
	inc bc                                           ; $6546: $03
	cp $01                                           ; $6547: $fe $01

Jump_064_6549:
	ld a, $01                                        ; $6549: $3e $01
	ld e, $01                                        ; $654b: $1e $01
	rrca                                             ; $654d: $0f
	inc bc                                           ; $654e: $03
	ld b, $02                                        ; $654f: $06 $02
	ld b, $9a                                        ; $6551: $06 $9a
	ld [bc], a                                       ; $6553: $02
	ld c, $02                                        ; $6554: $0e $02
	dec a                                            ; $6556: $3d
	inc bc                                           ; $6557: $03
	di                                               ; $6558: $f3
	rst SubAFromDE                                          ; $6559: $df
	rst $38                                          ; $655a: $ff
	add b                                            ; $655b: $80
	dec e                                            ; $655c: $1d
	ld e, $7e                                        ; $655d: $1e $7e
	ld a, a                                          ; $655f: $7f
	sbc a                                            ; $6560: $9f
	ldh [rIE], a                                     ; $6561: $e0 $ff
	nop                                              ; $6563: $00
	rst $38                                          ; $6564: $ff
	nop                                              ; $6565: $00
	rra                                              ; $6566: $1f
	ldh [$c7], a                                     ; $6567: $e0 $c7
	ld hl, sp+$7f                                    ; $6569: $f8 $7f
	add b                                            ; $656b: $80
	add l                                            ; $656c: $85
	ld [$10ab], sp                                   ; $656d: $08 $ab $10
	ld [hl-], a                                      ; $6570: $32
	ld h, c                                          ; $6571: $61
	ld b, l                                          ; $6572: $45
	ldh [c], a                                       ; $6573: $e2
	xor d                                            ; $6574: $aa
	call nz, $8c41                                   ; $6575: $c4 $41 $8c
	add c                                            ; $6578: $81
	ld [$8e02], sp                                   ; $6579: $08 $02 $8e
	ld bc, $0344                                     ; $657c: $01 $44 $03
	adc h                                            ; $657f: $8c
	ld b, d                                          ; $6580: $42
	add hl, bc                                       ; $6581: $09
	add $59                                          ; $6582: $c6 $59
	add $73                                          ; $6584: $c6 $73
	adc $f3                                          ; $6586: $ce $f3
	adc $a4                                          ; $6588: $ce $a4
	rst SubAFromDE                                          ; $658a: $df
	and h                                            ; $658b: $a4
	rst SubAFromDE                                          ; $658c: $df
	ldh [$c1], a                                     ; $658d: $e0 $c1
	sbc l                                            ; $658f: $9d
	add hl, sp                                       ; $6590: $39
	rst $38                                          ; $6591: $ff
	ld [hl], a                                       ; $6592: $77
	cp $9e                                           ; $6593: $fe $9e
	sbc c                                            ; $6595: $99
	ld a, e                                          ; $6596: $7b
	cp $96                                           ; $6597: $fe $96
	ld c, c                                          ; $6599: $49
	rst $38                                          ; $659a: $ff
	add hl, hl                                       ; $659b: $29
	rst $38                                          ; $659c: $ff
	xor c                                            ; $659d: $a9
	rst $38                                          ; $659e: $ff
	sbc e                                            ; $659f: $9b
	rst $38                                          ; $65a0: $ff
	db $db                                           ; $65a1: $db
	sbc $ff                                          ; $65a2: $de $ff
	rst SubAFromDE                                          ; $65a4: $df
	ld sp, hl                                        ; $65a5: $f9
	rst SubAFromDE                                          ; $65a6: $df
	add hl, bc                                       ; $65a7: $09
	rst SubAFromDE                                          ; $65a8: $df
	rrca                                             ; $65a9: $0f
	sbc h                                            ; $65aa: $9c
	add hl, de                                       ; $65ab: $19
	rra                                              ; $65ac: $1f
	pop af                                           ; $65ad: $f1
	ld d, d                                          ; $65ae: $52
	ret nz                                           ; $65af: $c0

	rst SubAFromDE                                          ; $65b0: $df
	cp $8e                                           ; $65b1: $fe $8e
	db $db                                           ; $65b3: $db
	rst SubAFromBC                                          ; $65b4: $e7
	ldh a, [$3b]                                     ; $65b5: $f0 $3b
	ld sp, hl                                        ; $65b7: $f9
	inc e                                            ; $65b8: $1c
	inc a                                            ; $65b9: $3c
	call z, $34cc                                    ; $65ba: $cc $cc $34
	ldh [rAUD3HIGH], a                               ; $65bd: $e0 $1e
	nop                                              ; $65bf: $00
	cp $f0                                           ; $65c0: $fe $f0
	rrca                                             ; $65c2: $0f
	db $fc                                           ; $65c3: $fc
	ld a, e                                          ; $65c4: $7b
	jr nc, jr_064_6646                               ; $65c5: $30 $7f

	db $dd                                           ; $65c7: $dd
	add h                                            ; $65c8: $84
	cp [hl]                                          ; $65c9: $be
	nop                                              ; $65ca: $00
	ld a, d                                          ; $65cb: $7a
	inc b                                            ; $65cc: $04
	or $08                                           ; $65cd: $f6 $08
	or $08                                           ; $65cf: $f6 $08
	inc l                                            ; $65d1: $2c
	sub b                                            ; $65d2: $90
	ld l, h                                          ; $65d3: $6c
	db $10                                           ; $65d4: $10
	ld l, h                                          ; $65d5: $6c
	db $10                                           ; $65d6: $10
	jp z, $8a34                                      ; $65d7: $ca $34 $8a

	ld [hl], h                                       ; $65da: $74
	add b                                            ; $65db: $80
	ld a, [hl]                                       ; $65dc: $7e

jr_064_65dd:
	jr nz, jr_064_65dd                               ; $65dd: $20 $fe

	dec h                                            ; $65df: $25
	cp $64                                           ; $65e0: $fe $64
	rst $38                                          ; $65e2: $ff
	ld l, h                                          ; $65e3: $6c
	ld c, d                                          ; $65e4: $4a
	add b                                            ; $65e5: $80
	ldh [$cf], a                                     ; $65e6: $e0 $cf
	add b                                            ; $65e8: $80
	db $fc                                           ; $65e9: $fc
	ld hl, sp-$03                                    ; $65ea: $f8 $fd
	ld hl, sp-$07                                    ; $65ec: $f8 $f9
	ldh a, [$fb]                                     ; $65ee: $f0 $fb
	pop af                                           ; $65f0: $f1
	rst $38                                          ; $65f1: $ff
	db $e3                                           ; $65f2: $e3
	db $fd                                           ; $65f3: $fd
	rst $38                                          ; $65f4: $ff
	ld a, [$faef]                                    ; $65f5: $fa $ef $fa
	xor $f4                                          ; $65f8: $ee $f4
	sbc $d0                                          ; $65fa: $de $d0
	sbc h                                            ; $65fc: $9c
	ldh a, [$f1]                                     ; $65fd: $f0 $f1
	add hl, sp                                       ; $65ff: $39
	ccf                                              ; $6600: $3f
	adc a                                            ; $6601: $8f
	adc a                                            ; $6602: $8f
	ld c, $08                                        ; $6603: $0e $08
	ld hl, sp-$08                                    ; $6605: $f8 $f8
	inc hl                                           ; $6607: $23
	sbc [hl]                                         ; $6608: $9e
	ldh a, [$f3]                                     ; $6609: $f0 $f3
	rst SubAFromDE                                          ; $660b: $df
	ld hl, sp-$71                                    ; $660c: $f8 $8f
	rst AddAOntoHL                                          ; $660e: $ef
	rst SubAFromDE                                          ; $660f: $df
	ld d, a                                          ; $6610: $57
	adc $56                                          ; $6611: $ce $56
	call $cb14                                       ; $6613: $cd $14 $cb
	inc hl                                           ; $6616: $23
	sbc h                                            ; $6617: $9c
	ld bc, $07be                                     ; $6618: $01 $be $07
	ld hl, sp+$3f                                    ; $661b: $f8 $3f
	ret nz                                           ; $661d: $c0

	halt                                             ; $661e: $76
	or [hl]                                          ; $661f: $b6
	sub h                                            ; $6620: $94
	cp e                                             ; $6621: $bb
	ld b, h                                          ; $6622: $44
	cp l                                             ; $6623: $bd
	ld b, d                                          ; $6624: $42
	sbc l                                            ; $6625: $9d
	ld b, d                                          ; $6626: $42
	sbc h                                            ; $6627: $9c
	ld b, c                                          ; $6628: $41
	ld d, h                                          ; $6629: $54
	ld bc, $7b50                                     ; $662a: $01 $50 $7b
	cp $92                                           ; $662d: $fe $92
	inc d                                            ; $662f: $14
	ld b, c                                          ; $6630: $41
	sub h                                            ; $6631: $94
	ld c, c                                          ; $6632: $49
	ld b, h                                          ; $6633: $44
	reti                                             ; $6634: $d9


	ld b, b                                          ; $6635: $40
	db $fd                                           ; $6636: $fd
	ld b, d                                          ; $6637: $42
	db $fd                                           ; $6638: $fd
	ld b, b                                          ; $6639: $40
	rst $38                                          ; $663a: $ff
	ld b, h                                          ; $663b: $44
	inc bc                                           ; $663c: $03
	ld h, b                                          ; $663d: $60
	pop hl                                           ; $663e: $e1
	add b                                            ; $663f: $80
	add c                                            ; $6640: $81
	add b                                            ; $6641: $80
	add c                                            ; $6642: $81
	add b                                            ; $6643: $80
	pop bc                                           ; $6644: $c1
	add b                                            ; $6645: $80

jr_064_6646:
	pop hl                                           ; $6646: $e1
	ret nz                                           ; $6647: $c0

	ld a, a                                          ; $6648: $7f
	ldh [$7f], a                                     ; $6649: $e0 $7f
	rst $38                                          ; $664b: $ff
	ld e, a                                          ; $664c: $5f
	ldh a, [$e8]                                     ; $664d: $f0 $e8

jr_064_664f:
	ld hl, sp-$5c                                    ; $664f: $f8 $a4
	db $fc                                           ; $6651: $fc
	sub e                                            ; $6652: $93
	di                                               ; $6653: $f3
	sub c                                            ; $6654: $91
	ld sp, hl                                        ; $6655: $f9
	ret                                              ; $6656: $c9


	ld a, c                                          ; $6657: $79
	jp Jump_064_6673                                 ; $6658: $c3 $73 $66


	ld a, $1e                                        ; $665b: $3e $1e
	ld a, [de]                                       ; $665d: $1a
	adc [hl]                                         ; $665e: $8e
	sbc [hl]                                         ; $665f: $9e
	ld [bc], a                                       ; $6660: $02
	pop af                                           ; $6661: $f1
	rst SubAFromDE                                          ; $6662: $df
	ldh a, [$80]                                     ; $6663: $f0 $80
	ldh [rAUD4LEN], a                                ; $6665: $e0 $20
	rlca                                             ; $6667: $07
	rst $38                                          ; $6668: $ff
	ld a, h                                          ; $6669: $7c
	add e                                            ; $666a: $83
	rst $38                                          ; $666b: $ff
	nop                                              ; $666c: $00
	add e                                            ; $666d: $83
	ld a, a                                          ; $666e: $7f
	rst $38                                          ; $666f: $ff
	nop                                              ; $6670: $00
	di                                               ; $6671: $f3
	inc c                                            ; $6672: $0c

Jump_064_6673:
	db $fc                                           ; $6673: $fc
	inc bc                                           ; $6674: $03
	rst JumpTable                                          ; $6675: $c7
	jr c, jr_064_66b3                                ; $6676: $38 $3b

	call nz, $028d                                   ; $6678: $c4 $8d $02
	push bc                                          ; $667b: $c5
	ld [bc], a                                       ; $667c: $02
	and l                                            ; $667d: $a5
	ld b, e                                          ; $667e: $43
	ld b, e                                          ; $667f: $43
	ld hl, $2153                                     ; $6680: $21 $53 $21
	ld [hl+], a                                      ; $6683: $22
	sub c                                            ; $6684: $91
	ld de, $10a9                                     ; $6685: $11 $a9 $10
	add c                                            ; $6688: $81
	jr jr_064_664f                                   ; $6689: $18 $c4

	sbc b                                            ; $668b: $98
	sbc d                                            ; $668c: $9a
	call z, $ee99                                    ; $668d: $cc $99 $ee
	sub h                                            ; $6690: $94
	rst AddAOntoHL                                          ; $6691: $ef
	add $03                                          ; $6692: $c6 $03
	ld h, b                                          ; $6694: $60
	pop hl                                           ; $6695: $e1
	add b                                            ; $6696: $80
	pop bc                                           ; $6697: $c1
	ld l, e                                          ; $6698: $6b
	pop bc                                           ; $6699: $c1
	ld l, e                                          ; $669a: $6b
	ret                                              ; $669b: $c9


	ld a, e                                          ; $669c: $7b
	ret                                              ; $669d: $c9


	ld a, a                                          ; $669e: $7f
	call nz, $e4ff                                   ; $669f: $c4 $ff $e4
	ld a, a                                          ; $66a2: $7f
	and $7f                                          ; $66a3: $e6 $7f
	ldh a, [c]                                       ; $66a5: $f2
	cp a                                             ; $66a6: $bf
	di                                               ; $66a7: $f3
	sbc a                                            ; $66a8: $9f
	ld sp, hl                                        ; $66a9: $f9
	rra                                              ; $66aa: $1f
	rst $38                                          ; $66ab: $ff
	rst $38                                          ; $66ac: $ff
	inc b                                            ; $66ad: $04

jr_064_66ae:
	inc b                                            ; $66ae: $04
	add h                                            ; $66af: $84
	add h                                            ; $66b0: $84
	cp a                                             ; $66b1: $bf
	cp a                                             ; $66b2: $bf

jr_064_66b3:
	db $fc                                           ; $66b3: $fc
	db $fd                                           ; $66b4: $fd
	db $e4                                           ; $66b5: $e4
	sbc [hl]                                         ; $66b6: $9e
	dec a                                            ; $66b7: $3d
	db $eb                                           ; $66b8: $eb
	rst SubAFromDE                                          ; $66b9: $df
	ret nz                                           ; $66ba: $c0

	add b                                            ; $66bb: $80
	jr nc, jr_064_66ae                               ; $66bc: $30 $f0

	adc b                                            ; $66be: $88
	ld hl, sp+$74                                    ; $66bf: $f8 $74
	db $fc                                           ; $66c1: $fc
	sbc [hl]                                         ; $66c2: $9e
	ld a, [hl]                                       ; $66c3: $7e
	rst SubAFromBC                                          ; $66c4: $e7
	rra                                              ; $66c5: $1f
	ld [hl], c                                       ; $66c6: $71
	adc a                                            ; $66c7: $8f
	cp c                                             ; $66c8: $b9
	ld b, a                                          ; $66c9: $47
	ret c                                            ; $66ca: $d8

	daa                                              ; $66cb: $27
	ld b, b                                          ; $66cc: $40
	cp a                                             ; $66cd: $bf
	or b                                             ; $66ce: $b0
	ld e, a                                          ; $66cf: $5f
	xor b                                            ; $66d0: $a8
	ld e, a                                          ; $66d1: $5f
	ld d, h                                          ; $66d2: $54
	xor a                                            ; $66d3: $af
	jp c, $b2a7                                      ; $66d4: $da $a7 $b2

	rst SubAFromDE                                          ; $66d7: $df
	or c                                             ; $66d8: $b1
	rst SubAFromDE                                          ; $66d9: $df
	ld l, c                                          ; $66da: $69
	add b                                            ; $66db: $80
	rst SubAFromDE                                          ; $66dc: $df
	ld e, b                                          ; $66dd: $58
	rst AddAOntoHL                                          ; $66de: $ef
	inc h                                            ; $66df: $24
	rst $38                                          ; $66e0: $ff
	inc h                                            ; $66e1: $24
	rst $38                                          ; $66e2: $ff
	ld [de], a                                       ; $66e3: $12
	rst $38                                          ; $66e4: $ff
	ld a, [bc]                                       ; $66e5: $0a
	rst $38                                          ; $66e6: $ff
	adc c                                            ; $66e7: $89
	rst $38                                          ; $66e8: $ff
	ld b, l                                          ; $66e9: $45
	rst $38                                          ; $66ea: $ff
	inc hl                                           ; $66eb: $23
	rst $38                                          ; $66ec: $ff
	ld de, $98ff                                     ; $66ed: $11 $ff $98
	rst $38                                          ; $66f0: $ff
	ld [hl], a                                       ; $66f1: $77
	rst $38                                          ; $66f2: $ff
	ldh a, [c]                                       ; $66f3: $f2
	ld c, a                                          ; $66f4: $4f
	cp e                                             ; $66f5: $bb
	ld c, a                                          ; $66f6: $4f
	cp c                                             ; $66f7: $b9
	ld c, a                                          ; $66f8: $4f
	ld a, l                                          ; $66f9: $7d
	ld l, a                                          ; $66fa: $6f
	sub [hl]                                         ; $66fb: $96
	ld [hl], h                                       ; $66fc: $74
	ld c, a                                          ; $66fd: $4f
	or $1f                                           ; $66fe: $f6 $1f
	ldh a, [c]                                       ; $6700: $f2
	rst $38                                          ; $6701: $ff
	xor d                                            ; $6702: $aa
	rst $38                                          ; $6703: $ff
	xor e                                            ; $6704: $ab
	ld a, c                                          ; $6705: $79
	xor [hl]                                         ; $6706: $ae
	sbc d                                            ; $6707: $9a
	push hl                                          ; $6708: $e5
	cp a                                             ; $6709: $bf
	rst FarCall                                          ; $670a: $f7
	xor l                                            ; $670b: $ad
	rst SubAFromHL                                          ; $670c: $d7
	ld a, e                                          ; $670d: $7b
	cp $9d                                           ; $670e: $fe $9d
	jp z, Jump_064_6fa5                              ; $6710: $ca $a5 $6f

	cp $80                                           ; $6713: $fe $80
	ld [$ae25], a                                    ; $6715: $ea $25 $ae
	ld h, l                                          ; $6718: $65
	and $4d                                          ; $6719: $e6 $4d
	ld d, l                                          ; $671b: $55
	rst GetHLinHL                                          ; $671c: $cf
	ld c, l                                          ; $671d: $4d
	rst SubAFromDE                                          ; $671e: $df
	db $ed                                           ; $671f: $ed
	sbc a                                            ; $6720: $9f
	reti                                             ; $6721: $d9


	cp a                                             ; $6722: $bf

jr_064_6723:
	add hl, de                                       ; $6723: $19
	rst $38                                          ; $6724: $ff
	dec sp                                           ; $6725: $3b
	cp $33                                           ; $6726: $fe $33
	cp $73                                           ; $6728: $fe $73
	cp $e7                                           ; $672a: $fe $e7
	db $fc                                           ; $672c: $fc
	rst SubAFromBC                                          ; $672d: $e7
	db $fc                                           ; $672e: $fc
	rst GetHLinHL                                          ; $672f: $cf
	ld hl, sp+$5f                                    ; $6730: $f8 $5f
	ld hl, sp+$5f                                    ; $6732: $f8 $5f
	sub c                                            ; $6734: $91
	ldh a, [$7f]                                     ; $6735: $f0 $7f
	ldh a, [rIE]                                     ; $6737: $f0 $ff
	db $fc                                           ; $6739: $fc
	add a                                            ; $673a: $87
	add h                                            ; $673b: $84
	and a                                            ; $673c: $a7
	and h                                            ; $673d: $a4
	rst JumpTable                                          ; $673e: $c7
	call nz, $fc7f                                   ; $673f: $c4 $7f $fc
	ld e, a                                          ; $6742: $5f
	ld a, d                                          ; $6743: $7a
	jr nz, jr_064_6723                               ; $6744: $20 $dd

	add b                                            ; $6746: $80
	rst SubAFromDE                                          ; $6747: $df
	ret nz                                           ; $6748: $c0

	sbc [hl]                                         ; $6749: $9e
	ld b, b                                          ; $674a: $40
	ld a, e                                          ; $674b: $7b
	cp $9c                                           ; $674c: $fe $9c
	ld h, b                                          ; $674e: $60
	ldh [rAUD4LEN], a                                ; $674f: $e0 $20
	ld a, e                                          ; $6751: $7b
	cp $7f                                           ; $6752: $fe $7f
	ld h, [hl]                                       ; $6754: $66
	ld a, a                                          ; $6755: $7f
	cp $9c                                           ; $6756: $fe $9c
	or b                                             ; $6758: $b0
	ldh a, [hDisp1_SCY]                                     ; $6759: $f0 $90
	ld a, e                                          ; $675b: $7b
	cp $9e                                           ; $675c: $fe $9e
	ld d, b                                          ; $675e: $50
	ld h, e                                          ; $675f: $63
	cp $9e                                           ; $6760: $fe $9e
	ret nc                                           ; $6762: $d0

	ld a, e                                          ; $6763: $7b
	cp $7f                                           ; $6764: $fe $7f
	ld a, [$f0df]                                    ; $6766: $fa $df $f0
	sbc d                                            ; $6769: $9a
	ld [hl], b                                       ; $676a: $70
	ldh a, [$60]                                     ; $676b: $f0 $60
	ldh [$60], a                                     ; $676d: $e0 $60
	sbc $e0                                          ; $676f: $de $e0
	db $dd                                           ; $6771: $dd
	ret nz                                           ; $6772: $c0

	ld [hl], a                                       ; $6773: $77
	adc $57                                          ; $6774: $ce $57
	cp $df                                           ; $6776: $fe $df
	ret nz                                           ; $6778: $c0

	pop de                                           ; $6779: $d1
	add b                                            ; $677a: $80
	halt                                             ; $677b: $76
	ld [hl], d                                       ; $677c: $72
	sbc h                                            ; $677d: $9c
	ccf                                              ; $677e: $3f
	rst $38                                          ; $677f: $ff

jr_064_6780:
	di                                               ; $6780: $f3
	ld a, c                                          ; $6781: $79
	ld a, [hl-]                                      ; $6782: $3a
	adc l                                            ; $6783: $8d
	rst $38                                          ; $6784: $ff
	ld bc, $03fe                                     ; $6785: $01 $fe $03
	db $fc                                           ; $6788: $fc
	rlca                                             ; $6789: $07
	db $e4                                           ; $678a: $e4
	rra                                              ; $678b: $1f
	ret                                              ; $678c: $c9


	ld a, $8b                                        ; $678d: $3e $8b
	ld a, h                                          ; $678f: $7c
	rra                                              ; $6790: $1f
	ldh a, [$1f]                                     ; $6791: $f0 $1f
	ldh a, [$df]                                     ; $6793: $f0 $df
	jr nc, jr_064_67fe                               ; $6795: $30 $67

	cp $76                                           ; $6797: $fe $76
	db $f4                                           ; $6799: $f4
	ld [hl], a                                       ; $679a: $77
	xor [hl]                                         ; $679b: $ae
	ld a, a                                          ; $679c: $7f
	adc h                                            ; $679d: $8c
	sbc [hl]                                         ; $679e: $9e
	db $10                                           ; $679f: $10
	ld a, e                                          ; $67a0: $7b
	cp $92                                           ; $67a1: $fe $92
	sub b                                            ; $67a3: $90
	ld [hl], b                                       ; $67a4: $70
	ret nc                                           ; $67a5: $d0

	jr nc, jr_064_6780                               ; $67a6: $30 $d8

	jr c, @-$16                                      ; $67a8: $38 $e8

jr_064_67aa:
	jr @-$16                                         ; $67aa: $18 $e8

	jr jr_064_67aa                                   ; $67ac: $18 $fc

	inc c                                            ; $67ae: $0c
	db $f4                                           ; $67af: $f4
	ld a, e                                          ; $67b0: $7b
	cp $9d                                           ; $67b1: $fe $9d
	db $fc                                           ; $67b3: $fc
	inc b                                            ; $67b4: $04
	ld [hl+], a                                      ; $67b5: $22
	nop                                              ; $67b6: $00
	sbc l                                            ; $67b7: $9d
	sbc c                                            ; $67b8: $99
	xor $dd                                          ; $67b9: $ee $dd
	sbc c                                            ; $67bb: $99
	sbc b                                            ; $67bc: $98
	inc sp                                           ; $67bd: $33
	sbc c                                            ; $67be: $99
	ld de, $9999                                     ; $67bf: $11 $99 $99
	nop                                              ; $67c2: $00
	sub c                                            ; $67c3: $91
	ld a, e                                          ; $67c4: $7b
	ei                                               ; $67c5: $fb
	sbc [hl]                                         ; $67c6: $9e
	ld b, h                                          ; $67c7: $44
	ld [hl], e                                       ; $67c8: $73
	ei                                               ; $67c9: $fb
	ld [hl], a                                       ; $67ca: $77
	pop af                                           ; $67cb: $f1
	sbc c                                            ; $67cc: $99
	ld [hl+], a                                      ; $67cd: $22
	sbc c                                            ; $67ce: $99
	ld de, $1100                                     ; $67cf: $11 $00 $11
	ld [hl+], a                                      ; $67d2: $22
	ld [hl], a                                       ; $67d3: $77
	db $e3                                           ; $67d4: $e3
	sbc [hl]                                         ; $67d5: $9e
	cp e                                             ; $67d6: $bb
	add [hl]                                         ; $67d7: $86
	ld bc, $8c80                                     ; $67d8: $01 $80 $8c
	rst $38                                          ; $67db: $ff
	adc [hl]                                         ; $67dc: $8e
	ei                                               ; $67dd: $fb
	sbc [hl]                                         ; $67de: $9e
	ld sp, hl                                        ; $67df: $f9
	sbc a                                            ; $67e0: $9f
	pop af                                           ; $67e1: $f1
	rst SubAFromDE                                          ; $67e2: $df
	di                                               ; $67e3: $f3
	call c, $fbf1                                    ; $67e4: $dc $f1 $fb
	db $f4                                           ; $67e7: $f4
	and a                                            ; $67e8: $a7
	ld hl, sp-$6a                                    ; $67e9: $f8 $96
	reti                                             ; $67eb: $d9


	ld [hl], a                                       ; $67ec: $77
	db $db                                           ; $67ed: $db
	ld [hl], b                                       ; $67ee: $70
	pop de                                           ; $67ef: $d1
	ld d, b                                          ; $67f0: $50
	ret nc                                           ; $67f1: $d0

	ld a, b                                          ; $67f2: $78
	ret z                                            ; $67f3: $c8

	inc a                                            ; $67f4: $3c
	add sp, $1c                                      ; $67f5: $e8 $1c
	db $f4                                           ; $67f7: $f4
	ccf                                              ; $67f8: $3f
	add b                                            ; $67f9: $80
	db $fc                                           ; $67fa: $fc
	ld h, e                                          ; $67fb: $63
	cp a                                             ; $67fc: $bf
	db $e3                                           ; $67fd: $e3

jr_064_67fe:
	ccf                                              ; $67fe: $3f
	pop de                                           ; $67ff: $d1
	ld l, a                                          ; $6800: $6f
	bit 4, a                                         ; $6801: $cb $67
	ld c, e                                          ; $6803: $4b
	ld h, a                                          ; $6804: $67
	cpl                                              ; $6805: $2f
	ld b, l                                          ; $6806: $45
	rlca                                             ; $6807: $07
	ld c, l                                          ; $6808: $4d
	ld d, l                                          ; $6809: $55
	rrca                                             ; $680a: $0f
	dec c                                            ; $680b: $0d
	dec de                                           ; $680c: $1b
	rrca                                             ; $680d: $0f
	dec de                                           ; $680e: $1b
	ld c, e                                          ; $680f: $4b
	rra                                              ; $6810: $1f
	dec de                                           ; $6811: $1b
	ld d, a                                          ; $6812: $57
	dec a                                            ; $6813: $3d
	ld d, a                                          ; $6814: $57
	push de                                          ; $6815: $d5
	ld a, a                                          ; $6816: $7f
	push de                                          ; $6817: $d5
	ld a, a                                          ; $6818: $7f
	add d                                            ; $6819: $82
	ld sp, hl                                        ; $681a: $f9
	ld a, a                                          ; $681b: $7f
	ld l, h                                          ; $681c: $6c
	db $db                                           ; $681d: $db
	db $ec                                           ; $681e: $ec
	db $db                                           ; $681f: $db
	adc $b9                                          ; $6820: $ce $b9
	xor [hl]                                         ; $6822: $ae

jr_064_6823:
	ld sp, hl                                        ; $6823: $f9
	ld a, [hl]                                       ; $6824: $7e
	sub c                                            ; $6825: $91
	ld bc, $fefe                                     ; $6826: $01 $fe $fe
	ld bc, $78b7                                     ; $6829: $01 $b7 $78
	rst $38                                          ; $682c: $ff
	db $fc                                           ; $682d: $fc
	dec b                                            ; $682e: $05
	xor h                                            ; $682f: $ac
	add hl, sp                                       ; $6830: $39
	ld a, h                                          ; $6831: $7c
	ld c, h                                          ; $6832: $4c
	ld a, b                                          ; $6833: $78
	or l                                             ; $6834: $b5
	jr c, jr_064_68b0                                ; $6835: $38 $79

	cp h                                             ; $6837: $bc
	inc bc                                           ; $6838: $03
	rst GetHLinHL                                          ; $6839: $cf
	add b                                            ; $683a: $80
	add b                                            ; $683b: $80
	ret nz                                           ; $683c: $c0

	adc a                                            ; $683d: $8f
	add b                                            ; $683e: $80
	ldh [$c0], a                                     ; $683f: $e0 $c0
	jr nc, jr_064_6823                               ; $6841: $30 $e0

	inc a                                            ; $6843: $3c
	ld hl, sp+$2f                                    ; $6844: $f8 $2f
	cp $2f                                           ; $6846: $fe $2f
	db $fd                                           ; $6848: $fd
	cpl                                              ; $6849: $2f
	db $fc                                           ; $684a: $fc
	cpl                                              ; $684b: $2f
	db $fc                                           ; $684c: $fc
	dec l                                            ; $684d: $2d
	ld a, e                                          ; $684e: $7b
	cp $7f                                           ; $684f: $fe $7f
	and [hl]                                         ; $6851: $a6
	add h                                            ; $6852: $84

jr_064_6853:
	ccf                                              ; $6853: $3f
	cp $7f                                           ; $6854: $fe $7f
	db $fd                                           ; $6856: $fd
	ld a, h                                          ; $6857: $7c
	ld hl, sp+$64                                    ; $6858: $f8 $64
	rst SubAFromDE                                          ; $685a: $df
	ld h, [hl]                                       ; $685b: $66
	rst SubAFromDE                                          ; $685c: $df
	ld h, [hl]                                       ; $685d: $66
	db $dd                                           ; $685e: $dd
	ld h, a                                          ; $685f: $67
	call c, $cc77                                    ; $6860: $dc $77 $cc
	ld [hl], h                                       ; $6863: $74
	rst GetHLinHL                                          ; $6864: $cf
	ei                                               ; $6865: $fb
	inc b                                            ; $6866: $04
	inc bc                                           ; $6867: $03
	adc b                                            ; $6868: $88
	rlca                                             ; $6869: $07
	ld sp, hl                                        ; $686a: $f9
	ld [hl], a                                       ; $686b: $77
	adc c                                            ; $686c: $89
	sbc a                                            ; $686d: $9f
	cp l                                             ; $686e: $bd
	ld h, h                                          ; $686f: $64
	db $f4                                           ; $6870: $f4
	ld hl, sp-$02                                    ; $6871: $f8 $fe
	add c                                            ; $6873: $81
	ld b, b                                          ; $6874: $40
	rlca                                             ; $6875: $07
	nop                                              ; $6876: $00
	push bc                                          ; $6877: $c5
	cp a                                             ; $6878: $bf
	ldh [c], a                                       ; $6879: $e2
	sbc a                                            ; $687a: $9f
	sub d                                            ; $687b: $92
	rst AddAOntoHL                                          ; $687c: $ef
	pop hl                                           ; $687d: $e1
	rst $38                                          ; $687e: $ff
	ei                                               ; $687f: $fb
	sbc a                                            ; $6880: $9f
	nop                                              ; $6881: $00
	rst $38                                          ; $6882: $ff
	rst $38                                          ; $6883: $ff
	nop                                              ; $6884: $00
	ld [hl], a                                       ; $6885: $77
	ld hl, sp-$03                                    ; $6886: $f8 $fd
	cp $07                                           ; $6888: $fe $07
	xor a                                            ; $688a: $af
	add hl, sp                                       ; $688b: $39
	ld a, d                                          ; $688c: $7a
	ld c, a                                          ; $688d: $4f
	ld hl, sp+$76                                    ; $688e: $f8 $76
	jr nc, jr_064_68ce                               ; $6890: $30 $3c

	cp a                                             ; $6892: $bf
	ld bc, $8bff                                     ; $6893: $01 $ff $8b
	ld bc, $031e                                     ; $6896: $01 $1e $03
	ld a, $07                                        ; $6899: $3e $07
	ld a, $0f                                        ; $689b: $3e $0f
	ld a, [hl]                                       ; $689d: $7e
	rra                                              ; $689e: $1f
	db $f4                                           ; $689f: $f4
	ld a, a                                          ; $68a0: $7f
	db $f4                                           ; $68a1: $f4
	rst $38                                          ; $68a2: $ff
	add sp, -$01                                     ; $68a3: $e8 $ff
	add sp, $7f                                      ; $68a5: $e8 $7f
	jp hl                                            ; $68a7: $e9


	ld a, e                                          ; $68a8: $7b
	ret                                              ; $68a9: $c9


	ld a, e                                          ; $68aa: $7b
	cp $95                                           ; $68ab: $fe $95
	pop bc                                           ; $68ad: $c1
	ld l, e                                          ; $68ae: $6b
	pop bc                                           ; $68af: $c1

jr_064_68b0:
	db $eb                                           ; $68b0: $eb
	pop bc                                           ; $68b1: $c1
	jp Jump_064_43c1                                 ; $68b2: $c3 $c1 $43


	pop bc                                           ; $68b5: $c1
	ld c, e                                          ; $68b6: $4b
	ld b, a                                          ; $68b7: $47
	jr nz, jr_064_6853                               ; $68b8: $20 $99

	sub a                                            ; $68ba: $97
	ret c                                            ; $68bb: $d8

	halt                                             ; $68bc: $76
	reti                                             ; $68bd: $d9


	ld [hl], e                                       ; $68be: $73
	db $d3                                           ; $68bf: $d3
	ld e, a                                          ; $68c0: $5f
	jr nz, jr_064_6912                               ; $68c1: $20 $4f

	ld b, b                                          ; $68c3: $40
	ld a, a                                          ; $68c4: $7f
	sbc [hl]                                         ; $68c5: $9e
	ld a, a                                          ; $68c6: $7f
	ld a, $9a                                        ; $68c7: $3e $9a
	db $fd                                           ; $68c9: $fd
	db $fc                                           ; $68ca: $fc
	dec e                                            ; $68cb: $1d
	cp h                                             ; $68cc: $bc
	ld l, h                                          ; $68cd: $6c

jr_064_68ce:
	ld h, e                                          ; $68ce: $63
	ld b, b                                          ; $68cf: $40
	ld b, e                                          ; $68d0: $43
	ld h, b                                          ; $68d1: $60
	sbc [hl]                                         ; $68d2: $9e
	ld hl, sp+$7b                                    ; $68d3: $f8 $7b
	ld h, b                                          ; $68d5: $60
	sbc [hl]                                         ; $68d6: $9e
	ld bc, $6027                                     ; $68d7: $01 $27 $60
	ld a, a                                          ; $68da: $7f
	cp $97                                           ; $68db: $fe $97
	ld l, a                                          ; $68dd: $6f
	ldh a, [$fb]                                     ; $68de: $f0 $fb
	db $fc                                           ; $68e0: $fc
	rra                                              ; $68e1: $1f
	cp [hl]                                          ; $68e2: $be
	rst AddAOntoHL                                          ; $68e3: $ef
	ld a, b                                          ; $68e4: $78
	ld h, a                                          ; $68e5: $67
	ld h, b                                          ; $68e6: $60
	ccf                                              ; $68e7: $3f
	add b                                            ; $68e8: $80

jr_064_68e9:
	sbc c                                            ; $68e9: $99
	ld [hl], a                                       ; $68ea: $77
	ret c                                            ; $68eb: $d8

	ld [hl], e                                       ; $68ec: $73
	pop de                                           ; $68ed: $d1
	ld d, e                                          ; $68ee: $53
	db $d3                                           ; $68ef: $d3
	daa                                              ; $68f0: $27
	add b                                            ; $68f1: $80
	ld a, a                                          ; $68f2: $7f
	cp $9a                                           ; $68f3: $fe $9a
	ld a, a                                          ; $68f5: $7f
	ld hl, sp-$63                                    ; $68f6: $f8 $9d
	cp h                                             ; $68f8: $bc
	ld a, h                                          ; $68f9: $7c
	rla                                              ; $68fa: $17
	add b                                            ; $68fb: $80
	sbc [hl]                                         ; $68fc: $9e
	adc b                                            ; $68fd: $88
	rla                                              ; $68fe: $17
	add b                                            ; $68ff: $80
	ld a, a                                          ; $6900: $7f
	cp $99                                           ; $6901: $fe $99
	rst FarCall                                          ; $6903: $f7
	ld hl, sp-$61                                    ; $6904: $f8 $9f
	cp h                                             ; $6906: $bc
	ei                                               ; $6907: $fb
	ld a, [hl]                                       ; $6908: $7e
	inc de                                           ; $6909: $13
	add b                                            ; $690a: $80
	sbc [hl]                                         ; $690b: $9e
	ret nc                                           ; $690c: $d0

	rla                                              ; $690d: $17
	add b                                            ; $690e: $80
	ld a, a                                          ; $690f: $7f
	cp $99                                           ; $6910: $fe $99

jr_064_6912:
	db $fd                                           ; $6912: $fd
	inc b                                            ; $6913: $04
	ld a, h                                          ; $6914: $7c
	ld a, b                                          ; $6915: $78
	push af                                          ; $6916: $f5
	ld hl, sp+$03                                    ; $6917: $f8 $03
	add b                                            ; $6919: $80
	dec hl                                           ; $691a: $2b
	add b                                            ; $691b: $80
	ld a, e                                          ; $691c: $7b
	cp $9a                                           ; $691d: $fe $9a
	add b                                            ; $691f: $80
	rst SubAFromDE                                          ; $6920: $df
	ld e, [hl]                                       ; $6921: $5e
	ld a, [hl]                                       ; $6922: $7e
	inc a                                            ; $6923: $3c
	ld l, a                                          ; $6924: $6f
	add b                                            ; $6925: $80
	rst $38                                          ; $6926: $ff
	rst SubAFromDE                                          ; $6927: $df
	ld h, b                                          ; $6928: $60
	sbc [hl]                                         ; $6929: $9e
	jr nz, jr_064_68e9                               ; $692a: $20 $bd

	ld h, b                                          ; $692c: $60
	nop                                              ; $692d: $00
	inc bc                                           ; $692e: $03
	rlca                                             ; $692f: $07
	ld a, a                                          ; $6930: $7f
	and b                                            ; $6931: $a0
	sbc e                                            ; $6932: $9b
	add [hl]                                         ; $6933: $86
	rst $38                                          ; $6934: $ff
	ld a, b                                          ; $6935: $78
	rra                                              ; $6936: $1f
	cp l                                             ; $6937: $bd
	rlca                                             ; $6938: $07
	ld [bc], a                                       ; $6939: $02
	dec b                                            ; $693a: $05
	rrca                                             ; $693b: $0f
	sub l                                            ; $693c: $95
	inc bc                                           ; $693d: $03
	rst $38                                          ; $693e: $ff
	cp $83                                           ; $693f: $fe $83
	add b                                            ; $6941: $80
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	ldh a, [$60]                                     ; $6944: $f0 $60
	ld [hl], b                                       ; $6946: $70
	ld a, e                                          ; $6947: $7b
	pop hl                                           ; $6948: $e1
	ld a, a                                          ; $6949: $7f
	call c, $e02f                                    ; $694a: $dc $2f $e0
	ld a, a                                          ; $694d: $7f
	push hl                                          ; $694e: $e5
	ld a, a                                          ; $694f: $7f
	ldh [rPCM34], a                                  ; $6950: $e0 $77
	cp $7f                                           ; $6952: $fe $7f
	ld hl, sp+$2f                                    ; $6954: $f8 $2f
	ldh [$7b], a                                     ; $6956: $e0 $7b
	db $e4                                           ; $6958: $e4
	db $dd                                           ; $6959: $dd
	ldh a, [rAUD4GO]                                 ; $695a: $f0 $23
	ldh [hDisp1_OBP0], a                                     ; $695c: $e0 $93
	ld bc, $8c80                                     ; $695e: $01 $80 $8c
	rst $38                                          ; $6961: $ff
	adc [hl]                                         ; $6962: $8e
	ei                                               ; $6963: $fb
	sbc [hl]                                         ; $6964: $9e
	ld sp, hl                                        ; $6965: $f9
	sbc l                                            ; $6966: $9d
	di                                               ; $6967: $f3
	rst SubAFromDE                                          ; $6968: $df
	ldh a, [c]                                       ; $6969: $f2
	call c, $fbf1                                    ; $696a: $dc $f1 $fb
	db $f4                                           ; $696d: $f4
	and [hl]                                         ; $696e: $a6
	ld sp, hl                                        ; $696f: $f9
	sub a                                            ; $6970: $97
	db $db                                           ; $6971: $db

Call_064_6972:
	ld [hl], a                                       ; $6972: $77

Call_064_6973:
	reti                                             ; $6973: $d9


	ld [hl], b                                       ; $6974: $70
	ret nc                                           ; $6975: $d0

	ld d, b                                          ; $6976: $50
	ret nc                                           ; $6977: $d0

	ld a, b                                          ; $6978: $78
	ret z                                            ; $6979: $c8

	inc a                                            ; $697a: $3c
	add sp, $1c                                      ; $697b: $e8 $1c
	db $f4                                           ; $697d: $f4
	ccf                                              ; $697e: $3f
	add b                                            ; $697f: $80
	db $fc                                           ; $6980: $fc
	ld h, e                                          ; $6981: $63
	cp a                                             ; $6982: $bf
	db $e3                                           ; $6983: $e3
	ccf                                              ; $6984: $3f
	pop de                                           ; $6985: $d1
	ld l, a                                          ; $6986: $6f
	bit 4, a                                         ; $6987: $cb $67
	ld c, e                                          ; $6989: $4b
	ld h, a                                          ; $698a: $67
	cpl                                              ; $698b: $2f
	ld b, l                                          ; $698c: $45
	rlca                                             ; $698d: $07
	ld c, l                                          ; $698e: $4d
	ld d, l                                          ; $698f: $55
	rrca                                             ; $6990: $0f
	dec c                                            ; $6991: $0d
	dec de                                           ; $6992: $1b
	rrca                                             ; $6993: $0f
	dec de                                           ; $6994: $1b
	ld c, e                                          ; $6995: $4b
	rra                                              ; $6996: $1f
	dec de                                           ; $6997: $1b
	ld d, a                                          ; $6998: $57
	dec a                                            ; $6999: $3d
	ld d, a                                          ; $699a: $57
	push de                                          ; $699b: $d5
	ld a, a                                          ; $699c: $7f
	push de                                          ; $699d: $d5
	ld a, a                                          ; $699e: $7f
	add d                                            ; $699f: $82
	ld sp, hl                                        ; $69a0: $f9
	ld a, a                                          ; $69a1: $7f
	ld l, h                                          ; $69a2: $6c
	db $db                                           ; $69a3: $db
	db $ec                                           ; $69a4: $ec
	db $db                                           ; $69a5: $db
	adc [hl]                                         ; $69a6: $8e
	ld sp, hl                                        ; $69a7: $f9
	xor $f9                                          ; $69a8: $ee $f9
	cp $91                                           ; $69aa: $fe $91
	ld bc, $fefe                                     ; $69ac: $01 $fe $fe
	ld sp, $f8cf                                     ; $69af: $31 $cf $f8
	adc a                                            ; $69b2: $8f
	adc h                                            ; $69b3: $8c
	add hl, de                                       ; $69b4: $19
	cp h                                             ; $69b5: $bc
	ld a, c                                          ; $69b6: $79
	ld a, b                                          ; $69b7: $78
	ld c, b                                          ; $69b8: $48
	ld a, b                                          ; $69b9: $78
	or l                                             ; $69ba: $b5
	jr nc, jr_064_6a36                               ; $69bb: $30 $79

	cp h                                             ; $69bd: $bc
	ld [bc], a                                       ; $69be: $02
	call z, $8080                                    ; $69bf: $cc $80 $80
	ret nz                                           ; $69c2: $c0

	adc a                                            ; $69c3: $8f
	add b                                            ; $69c4: $80
	ldh [$c0], a                                     ; $69c5: $e0 $c0
	jr nc, @-$1e                                     ; $69c7: $30 $e0

	inc a                                            ; $69c9: $3c
	ld hl, sp+$2f                                    ; $69ca: $f8 $2f
	cp $2f                                           ; $69cc: $fe $2f
	db $fd                                           ; $69ce: $fd
	cpl                                              ; $69cf: $2f
	db $fc                                           ; $69d0: $fc
	cpl                                              ; $69d1: $2f
	db $fc                                           ; $69d2: $fc
	dec l                                            ; $69d3: $2d
	ld a, e                                          ; $69d4: $7b
	cp $7f                                           ; $69d5: $fe $7f

jr_064_69d7:
	and [hl]                                         ; $69d7: $a6
	add h                                            ; $69d8: $84
	ccf                                              ; $69d9: $3f
	cp $7f                                           ; $69da: $fe $7f
	db $fd                                           ; $69dc: $fd
	ld a, h                                          ; $69dd: $7c
	ld hl, sp+$64                                    ; $69de: $f8 $64
	rst SubAFromDE                                          ; $69e0: $df
	ld h, [hl]                                       ; $69e1: $66
	rst SubAFromDE                                          ; $69e2: $df
	ld h, [hl]                                       ; $69e3: $66
	db $dd                                           ; $69e4: $dd
	ld h, a                                          ; $69e5: $67
	call c, $cc77                                    ; $69e6: $dc $77 $cc
	ld [hl], h                                       ; $69e9: $74
	rst GetHLinHL                                          ; $69ea: $cf
	ei                                               ; $69eb: $fb
	inc b                                            ; $69ec: $04
	inc bc                                           ; $69ed: $03
	adc b                                            ; $69ee: $88
	rlca                                             ; $69ef: $07
	ld sp, hl                                        ; $69f0: $f9
	ld [hl], a                                       ; $69f1: $77
	adc b                                            ; $69f2: $88
	sbc a                                            ; $69f3: $9f
	cp l                                             ; $69f4: $bd
	inc b                                            ; $69f5: $04
	inc h                                            ; $69f6: $24
	ld [hl], b                                       ; $69f7: $70
	ld a, d                                          ; $69f8: $7a
	add c                                            ; $69f9: $81
	ld b, b                                          ; $69fa: $40
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	push bc                                          ; $69fd: $c5
	cp a                                             ; $69fe: $bf
	ldh [c], a                                       ; $69ff: $e2
	sbc a                                            ; $6a00: $9f
	add d                                            ; $6a01: $82
	rst $38                                          ; $6a02: $ff
	cp c                                             ; $6a03: $b9
	rst $38                                          ; $6a04: $ff
	rst $38                                          ; $6a05: $ff
	jp $fb04                                         ; $6a06: $c3 $04 $fb


	rst $38                                          ; $6a09: $ff
	ld [hl], b                                       ; $6a0a: $70
	adc l                                            ; $6a0b: $8d
	cp $0b                                           ; $6a0c: $fe $0b
	rra                                              ; $6a0e: $1f
	ld a, e                                          ; $6a0f: $7b
	ld a, d                                          ; $6a10: $7a
	ld a, e                                          ; $6a11: $7b
	ld hl, sp-$31                                    ; $6a12: $f8 $cf
	ld a, b                                          ; $6a14: $78
	halt                                             ; $6a15: $76
	jr nc, jr_064_6a54                               ; $6a16: $30 $3c

	cp a                                             ; $6a18: $bf
	ld bc, $8bff                                     ; $6a19: $01 $ff $8b
	ld bc, $031e                                     ; $6a1c: $01 $1e $03
	ld a, $07                                        ; $6a1f: $3e $07
	ld a, $0f                                        ; $6a21: $3e $0f
	ld a, [hl]                                       ; $6a23: $7e
	rra                                              ; $6a24: $1f
	db $f4                                           ; $6a25: $f4
	ld a, a                                          ; $6a26: $7f
	db $f4                                           ; $6a27: $f4
	rst $38                                          ; $6a28: $ff
	add sp, -$01                                     ; $6a29: $e8 $ff
	add sp, $7f                                      ; $6a2b: $e8 $7f
	jp hl                                            ; $6a2d: $e9


	ld a, e                                          ; $6a2e: $7b
	ret                                              ; $6a2f: $c9


	ld a, e                                          ; $6a30: $7b
	cp $95                                           ; $6a31: $fe $95
	pop bc                                           ; $6a33: $c1
	ld l, e                                          ; $6a34: $6b
	pop bc                                           ; $6a35: $c1

jr_064_6a36:
	db $eb                                           ; $6a36: $eb
	pop bc                                           ; $6a37: $c1
	jp Jump_064_43c1                                 ; $6a38: $c3 $c1 $43


	pop bc                                           ; $6a3b: $c1
	ld c, e                                          ; $6a3c: $4b
	ld c, a                                          ; $6a3d: $4f
	jr nz, jr_064_69d7                               ; $6a3e: $20 $97

	and a                                            ; $6a40: $a7
	ld hl, sp-$6a                                    ; $6a41: $f8 $96
	reti                                             ; $6a43: $d9


	ld [hl], a                                       ; $6a44: $77
	db $db                                           ; $6a45: $db
	ld [hl], b                                       ; $6a46: $70
	pop de                                           ; $6a47: $d1
	ld e, a                                          ; $6a48: $5f
	jr nz, jr_064_6a9e                               ; $6a49: $20 $53

	ld b, b                                          ; $6a4b: $40
	sub d                                            ; $6a4c: $92
	ld bc, $78ff                                     ; $6a4d: $01 $ff $78
	add a                                            ; $6a50: $87
	call z, $bc1d                                    ; $6a51: $cc $1d $bc

jr_064_6a54:
	ld a, c                                          ; $6a54: $79
	ld a, h                                          ; $6a55: $7c
	ld c, h                                          ; $6a56: $4c
	ld a, b                                          ; $6a57: $78
	or l                                             ; $6a58: $b5
	jr c, jr_064_6aca                                ; $6a59: $38 $6f

	ld b, b                                          ; $6a5b: $40
	dec sp                                           ; $6a5c: $3b
	ld h, b                                          ; $6a5d: $60
	sbc [hl]                                         ; $6a5e: $9e
	adc c                                            ; $6a5f: $89
	cpl                                              ; $6a60: $2f
	ld h, b                                          ; $6a61: $60
	ld a, a                                          ; $6a62: $7f
	ld [hl], e                                       ; $6a63: $73
	sub l                                            ; $6a64: $95
	rst $38                                          ; $6a65: $ff
	nop                                              ; $6a66: $00
	rst $38                                          ; $6a67: $ff
	ld hl, sp-$7b                                    ; $6a68: $f8 $85
	sbc [hl]                                         ; $6a6a: $9e
	dec de                                           ; $6a6b: $1b
	ld a, a                                          ; $6a6c: $7f
	ld a, c                                          ; $6a6d: $79
	ld a, [$605f]                                    ; $6a6e: $fa $5f $60
	ld b, a                                          ; $6a71: $47
	add b                                            ; $6a72: $80
	sbc c                                            ; $6a73: $99
	sub a                                            ; $6a74: $97
	ret c                                            ; $6a75: $d8

	ld [hl], a                                       ; $6a76: $77
	reti                                             ; $6a77: $d9


	ld [hl], e                                       ; $6a78: $73
	db $d3                                           ; $6a79: $d3
	inc hl                                           ; $6a7a: $23
	add b                                            ; $6a7b: $80
	sbc b                                            ; $6a7c: $98
	nop                                              ; $6a7d: $00
	ld a, a                                          ; $6a7e: $7f
	ld hl, sp-$63                                    ; $6a7f: $f8 $9d
	cp h                                             ; $6a81: $bc
	ld a, c                                          ; $6a82: $79
	ld hl, sp+$5e                                    ; $6a83: $f8 $5e
	ret nz                                           ; $6a85: $c0

	ld b, e                                          ; $6a86: $43
	add b                                            ; $6a87: $80
	sbc [hl]                                         ; $6a88: $9e
	ld hl, sp+$13                                    ; $6a89: $f8 $13
	add b                                            ; $6a8b: $80
	sbc b                                            ; $6a8c: $98
	nop                                              ; $6a8d: $00
	ei                                               ; $6a8e: $fb
	db $fc                                           ; $6a8f: $fc
	sbc a                                            ; $6a90: $9f
	cp [hl]                                          ; $6a91: $be
	ld a, e                                          ; $6a92: $7b
	rst $38                                          ; $6a93: $ff
	inc de                                           ; $6a94: $13
	add b                                            ; $6a95: $80
	sbc [hl]                                         ; $6a96: $9e
	ret c                                            ; $6a97: $d8

	rla                                              ; $6a98: $17
	add b                                            ; $6a99: $80
	ld a, a                                          ; $6a9a: $7f
	cp $97                                           ; $6a9b: $fe $97
	db $fd                                           ; $6a9d: $fd

jr_064_6a9e:
	nop                                              ; $6a9e: $00
	add hl, sp                                       ; $6a9f: $39
	ld [$f8f8], sp                                   ; $6aa0: $08 $f8 $f8
	push af                                          ; $6aa3: $f5
	ld [hl], b                                       ; $6aa4: $70
	inc hl                                           ; $6aa5: $23
	add b                                            ; $6aa6: $80
	ld a, [hl]                                       ; $6aa7: $7e
	ld h, b                                          ; $6aa8: $60
	sbc [hl]                                         ; $6aa9: $9e
	ld bc, $801f                                     ; $6aaa: $01 $1f $80
	ld [hl], a                                       ; $6aad: $77
	cp $99                                           ; $6aae: $fe $99
	sbc a                                            ; $6ab0: $9f
	add [hl]                                         ; $6ab1: $86
	rst $38                                          ; $6ab2: $ff
	ld a, h                                          ; $6ab3: $7c
	ld a, [hl]                                       ; $6ab4: $7e
	jr c, jr_064_6b26                                ; $6ab5: $38 $6f

	add b                                            ; $6ab7: $80
	sbc b                                            ; $6ab8: $98
	ret c                                            ; $6ab9: $d8

	nop                                              ; $6aba: $00
	ld hl, sp+$50                                    ; $6abb: $f8 $50
	ld [hl], b                                       ; $6abd: $70
	jr nz, @+$22                                     ; $6abe: $20 $20

	cp [hl]                                          ; $6ac0: $be
	nop                                              ; $6ac1: $00
	inc bc                                           ; $6ac2: $03
	rlca                                             ; $6ac3: $07
	ld a, a                                          ; $6ac4: $7f
	and b                                            ; $6ac5: $a0
	ld a, a                                          ; $6ac6: $7f
	and $9d                                          ; $6ac7: $e6 $9d
	ld a, b                                          ; $6ac9: $78

jr_064_6aca:
	rra                                              ; $6aca: $1f
	cp l                                             ; $6acb: $bd
	rlca                                             ; $6acc: $07
	ld [bc], a                                       ; $6acd: $02
	dec b                                            ; $6ace: $05
	rrca                                             ; $6acf: $0f
	sub [hl]                                         ; $6ad0: $96
	inc bc                                           ; $6ad1: $03
	rst $38                                          ; $6ad2: $ff
	cp $83                                           ; $6ad3: $fe $83
	add b                                            ; $6ad5: $80
	adc b                                            ; $6ad6: $88
	nop                                              ; $6ad7: $00
	sbc b                                            ; $6ad8: $98
	sub b                                            ; $6ad9: $90
	sbc $60                                          ; $6ada: $de $60
	dec de                                           ; $6adc: $1b
	ldh [$9a], a                                     ; $6add: $e0 $9a
	ld hl, sp-$50                                    ; $6adf: $f8 $b0
	ldh a, [hDisp1_SCY]                                     ; $6ae1: $f0 $90
	ld [hl], b                                       ; $6ae3: $70
	ld a, e                                          ; $6ae4: $7b
	sbc $2f                                          ; $6ae5: $de $2f
	ldh [$7f], a                                     ; $6ae7: $e0 $7f
	ldh [c], a                                       ; $6ae9: $e2
	ld a, a                                          ; $6aea: $7f
	ret nz                                           ; $6aeb: $c0

	rst SubAFromDE                                          ; $6aec: $df
	sub b                                            ; $6aed: $90
	rra                                              ; $6aee: $1f
	ldh [$7f], a                                     ; $6aef: $e0 $7f
	ld bc, $8c80                                     ; $6af1: $01 $80 $8c
	rst $38                                          ; $6af4: $ff
	adc [hl]                                         ; $6af5: $8e
	ei                                               ; $6af6: $fb
	sbc [hl]                                         ; $6af7: $9e
	ld sp, hl                                        ; $6af8: $f9
	sbc l                                            ; $6af9: $9d
	di                                               ; $6afa: $f3
	rst SubAFromDE                                          ; $6afb: $df
	ldh a, [c]                                       ; $6afc: $f2
	call c, $fbf1                                    ; $6afd: $dc $f1 $fb
	db $f4                                           ; $6b00: $f4
	and a                                            ; $6b01: $a7
	ld hl, sp-$6a                                    ; $6b02: $f8 $96
	reti                                             ; $6b04: $d9


	ld [hl], a                                       ; $6b05: $77
	db $db                                           ; $6b06: $db
	ld [hl], b                                       ; $6b07: $70
	pop de                                           ; $6b08: $d1
	ld d, b                                          ; $6b09: $50
	ret nc                                           ; $6b0a: $d0

	ld a, b                                          ; $6b0b: $78
	ret z                                            ; $6b0c: $c8

	inc a                                            ; $6b0d: $3c
	add sp, $1c                                      ; $6b0e: $e8 $1c
	db $f4                                           ; $6b10: $f4
	ccf                                              ; $6b11: $3f
	add b                                            ; $6b12: $80
	db $fc                                           ; $6b13: $fc
	ld h, e                                          ; $6b14: $63
	cp a                                             ; $6b15: $bf
	db $e3                                           ; $6b16: $e3
	ccf                                              ; $6b17: $3f
	pop de                                           ; $6b18: $d1
	ld l, a                                          ; $6b19: $6f
	bit 4, a                                         ; $6b1a: $cb $67
	ld c, e                                          ; $6b1c: $4b
	ld h, a                                          ; $6b1d: $67
	cpl                                              ; $6b1e: $2f
	ld b, l                                          ; $6b1f: $45
	rlca                                             ; $6b20: $07
	ld c, l                                          ; $6b21: $4d
	ld d, l                                          ; $6b22: $55
	rrca                                             ; $6b23: $0f
	dec c                                            ; $6b24: $0d
	dec de                                           ; $6b25: $1b

jr_064_6b26:
	rrca                                             ; $6b26: $0f
	dec de                                           ; $6b27: $1b
	ld c, e                                          ; $6b28: $4b
	rra                                              ; $6b29: $1f
	dec de                                           ; $6b2a: $1b
	ld d, a                                          ; $6b2b: $57
	dec a                                            ; $6b2c: $3d
	ld d, a                                          ; $6b2d: $57
	push de                                          ; $6b2e: $d5
	ld a, a                                          ; $6b2f: $7f
	push de                                          ; $6b30: $d5
	ld a, a                                          ; $6b31: $7f
	add d                                            ; $6b32: $82
	ld sp, hl                                        ; $6b33: $f9
	ld a, a                                          ; $6b34: $7f
	ld l, h                                          ; $6b35: $6c
	db $db                                           ; $6b36: $db
	db $ec                                           ; $6b37: $ec
	db $db                                           ; $6b38: $db
	adc [hl]                                         ; $6b39: $8e
	ld sp, hl                                        ; $6b3a: $f9
	xor $f9                                          ; $6b3b: $ee $f9
	cp $91                                           ; $6b3d: $fe $91
	ld bc, $fefe                                     ; $6b3f: $01 $fe $fe
	ld bc, $78ff                                     ; $6b42: $01 $ff $78
	rst GetHLinHL                                          ; $6b45: $cf
	call z, $bc1d                                    ; $6b46: $cc $1d $bc
	ld a, c                                          ; $6b49: $79
	ld a, h                                          ; $6b4a: $7c
	ld c, h                                          ; $6b4b: $4c
	ld a, b                                          ; $6b4c: $78
	or l                                             ; $6b4d: $b5
	jr c, jr_064_6bc9                                ; $6b4e: $38 $79

	cp h                                             ; $6b50: $bc
	ld [bc], a                                       ; $6b51: $02
	call z, $8080                                    ; $6b52: $cc $80 $80
	ret nz                                           ; $6b55: $c0

	adc a                                            ; $6b56: $8f
	add b                                            ; $6b57: $80
	ldh [$c0], a                                     ; $6b58: $e0 $c0
	jr nc, @-$1e                                     ; $6b5a: $30 $e0

	inc a                                            ; $6b5c: $3c
	ld hl, sp+$2f                                    ; $6b5d: $f8 $2f
	cp $2f                                           ; $6b5f: $fe $2f
	db $fd                                           ; $6b61: $fd
	cpl                                              ; $6b62: $2f
	db $fc                                           ; $6b63: $fc
	cpl                                              ; $6b64: $2f
	db $fc                                           ; $6b65: $fc
	dec l                                            ; $6b66: $2d
	ld a, e                                          ; $6b67: $7b
	cp $7f                                           ; $6b68: $fe $7f
	and [hl]                                         ; $6b6a: $a6
	add h                                            ; $6b6b: $84

jr_064_6b6c:
	ccf                                              ; $6b6c: $3f
	cp $7f                                           ; $6b6d: $fe $7f
	db $fd                                           ; $6b6f: $fd
	ld a, h                                          ; $6b70: $7c
	ld hl, sp+$64                                    ; $6b71: $f8 $64
	rst SubAFromDE                                          ; $6b73: $df
	ld h, [hl]                                       ; $6b74: $66
	rst SubAFromDE                                          ; $6b75: $df
	ld h, [hl]                                       ; $6b76: $66
	db $dd                                           ; $6b77: $dd
	ld h, a                                          ; $6b78: $67
	call c, $cc77                                    ; $6b79: $dc $77 $cc
	ld [hl], h                                       ; $6b7c: $74
	rst GetHLinHL                                          ; $6b7d: $cf
	ei                                               ; $6b7e: $fb
	inc b                                            ; $6b7f: $04
	inc bc                                           ; $6b80: $03
	adc b                                            ; $6b81: $88
	rlca                                             ; $6b82: $07
	ld sp, hl                                        ; $6b83: $f9
	ld [hl], a                                       ; $6b84: $77
	adc c                                            ; $6b85: $89
	sbc a                                            ; $6b86: $9f
	cp l                                             ; $6b87: $bd
	inc b                                            ; $6b88: $04
	inc h                                            ; $6b89: $24
	ld [hl], b                                       ; $6b8a: $70
	ld a, d                                          ; $6b8b: $7a
	add c                                            ; $6b8c: $81
	ld b, b                                          ; $6b8d: $40
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	push bc                                          ; $6b90: $c5
	cp a                                             ; $6b91: $bf
	ldh [c], a                                       ; $6b92: $e2
	sbc a                                            ; $6b93: $9f
	add d                                            ; $6b94: $82
	rst $38                                          ; $6b95: $ff
	cp c                                             ; $6b96: $b9
	rst $38                                          ; $6b97: $ff
	rst $38                                          ; $6b98: $ff
	jp $ff00                                         ; $6b99: $c3 $00 $ff


	rst $38                                          ; $6b9c: $ff
	nop                                              ; $6b9d: $00
	rst $38                                          ; $6b9e: $ff
	ld hl, sp-$73                                    ; $6b9f: $f8 $8d
	sbc [hl]                                         ; $6ba1: $9e
	dec sp                                           ; $6ba2: $3b
	ld a, a                                          ; $6ba3: $7f
	ld a, c                                          ; $6ba4: $79
	ld a, [$78cf]                                    ; $6ba5: $fa $cf $78
	halt                                             ; $6ba8: $76
	jr nc, jr_064_6be7                               ; $6ba9: $30 $3c

	cp a                                             ; $6bab: $bf
	ld bc, $8bff                                     ; $6bac: $01 $ff $8b
	ld bc, $031e                                     ; $6baf: $01 $1e $03
	ld a, $07                                        ; $6bb2: $3e $07
	ld a, $0f                                        ; $6bb4: $3e $0f
	ld a, [hl]                                       ; $6bb6: $7e
	rra                                              ; $6bb7: $1f
	db $f4                                           ; $6bb8: $f4
	ld a, a                                          ; $6bb9: $7f
	db $f4                                           ; $6bba: $f4
	rst $38                                          ; $6bbb: $ff
	add sp, -$01                                     ; $6bbc: $e8 $ff
	add sp, $7f                                      ; $6bbe: $e8 $7f
	jp hl                                            ; $6bc0: $e9


	ld a, e                                          ; $6bc1: $7b
	ret                                              ; $6bc2: $c9


	ld a, e                                          ; $6bc3: $7b
	cp $95                                           ; $6bc4: $fe $95
	pop bc                                           ; $6bc6: $c1
	ld l, e                                          ; $6bc7: $6b
	pop bc                                           ; $6bc8: $c1

jr_064_6bc9:
	db $eb                                           ; $6bc9: $eb
	pop bc                                           ; $6bca: $c1
	jp Jump_064_43c1                                 ; $6bcb: $c3 $c1 $43


	pop bc                                           ; $6bce: $c1
	ld c, e                                          ; $6bcf: $4b
	ld b, a                                          ; $6bd0: $47
	jr nz, jr_064_6b6c                               ; $6bd1: $20 $99

	sub a                                            ; $6bd3: $97
	ret c                                            ; $6bd4: $d8

	ld [hl], a                                       ; $6bd5: $77
	reti                                             ; $6bd6: $d9


	ld [hl], e                                       ; $6bd7: $73
	db $d3                                           ; $6bd8: $d3
	ld e, a                                          ; $6bd9: $5f
	jr nz, @+$4d                                     ; $6bda: $20 $4b

	ld b, b                                          ; $6bdc: $40
	ld a, a                                          ; $6bdd: $7f
	xor [hl]                                         ; $6bde: $ae
	sbc d                                            ; $6bdf: $9a
	ld a, b                                          ; $6be0: $78
	call Call_064_79dc                               ; $6be1: $cd $dc $79
	db $fc                                           ; $6be4: $fc
	ld e, a                                          ; $6be5: $5f
	ld b, b                                          ; $6be6: $40

jr_064_6be7:
	ld b, e                                          ; $6be7: $43
	ld h, b                                          ; $6be8: $60
	sbc [hl]                                         ; $6be9: $9e
	ld hl, sp+$13                                    ; $6bea: $f8 $13
	ld h, b                                          ; $6bec: $60
	ld a, e                                          ; $6bed: $7b
	ld e, [hl]                                       ; $6bee: $5e
	sbc e                                            ; $6bef: $9b
	sbc a                                            ; $6bf0: $9f
	cp [hl]                                          ; $6bf1: $be
	ld a, e                                          ; $6bf2: $7b
	rst $38                                          ; $6bf3: $ff
	ld e, a                                          ; $6bf4: $5f
	ld h, b                                          ; $6bf5: $60
	dec sp                                           ; $6bf6: $3b
	add b                                            ; $6bf7: $80
	sbc d                                            ; $6bf8: $9a
	ret c                                            ; $6bf9: $d8

	ld [hl], e                                       ; $6bfa: $73
	ret nc                                           ; $6bfb: $d0

	ld d, e                                          ; $6bfc: $53
	db $d3                                           ; $6bfd: $d3
	inc hl                                           ; $6bfe: $23
	add b                                            ; $6bff: $80
	sbc b                                            ; $6c00: $98
	nop                                              ; $6c01: $00
	db $fd                                           ; $6c02: $fd
	ld a, b                                          ; $6c03: $78
	db $fd                                           ; $6c04: $fd
	db $fc                                           ; $6c05: $fc
	ld c, b                                          ; $6c06: $48
	call c, $801b                                    ; $6c07: $dc $1b $80
	sbc h                                            ; $6c0a: $9c
	adc b                                            ; $6c0b: $88
	sbc a                                            ; $6c0c: $9f
	ld bc, $801b                                     ; $6c0d: $01 $1b $80
	ld a, e                                          ; $6c10: $7b
	ld a, [hl]                                       ; $6c11: $7e
	sbc e                                            ; $6c12: $9b
	ld a, a                                          ; $6c13: $7f
	db $fc                                           ; $6c14: $fc
	bit 3, a                                         ; $6c15: $cb $5f
	inc de                                           ; $6c17: $13
	add b                                            ; $6c18: $80
	sbc l                                            ; $6c19: $9d
	db $d3                                           ; $6c1a: $d3
	ld d, e                                          ; $6c1b: $53
	rra                                              ; $6c1c: $1f
	nop                                              ; $6c1d: $00
	cp a                                             ; $6c1e: $bf
	db $fd                                           ; $6c1f: $fd
	dec a                                            ; $6c20: $3d
	sbc d                                            ; $6c21: $9a
	inc b                                            ; $6c22: $04
	db $fc                                           ; $6c23: $fc
	db $fc                                           ; $6c24: $fc
	db $fd                                           ; $6c25: $fd
	ld hl, sp+$03                                    ; $6c26: $f8 $03
	add b                                            ; $6c28: $80
	daa                                              ; $6c29: $27
	add b                                            ; $6c2a: $80
	sbc b                                            ; $6c2b: $98
	nop                                              ; $6c2c: $00
	sbc a                                            ; $6c2d: $9f
	add e                                            ; $6c2e: $83
	rst $38                                          ; $6c2f: $ff
	ld a, h                                          ; $6c30: $7c
	ld a, [hl]                                       ; $6c31: $7e
	inc a                                            ; $6c32: $3c
	ld l, a                                          ; $6c33: $6f
	add b                                            ; $6c34: $80
	sbc d                                            ; $6c35: $9a
	adc b                                            ; $6c36: $88
	nop                                              ; $6c37: $00
	ld hl, sp+$50                                    ; $6c38: $f8 $50
	nop                                              ; $6c3a: $00
	cp l                                             ; $6c3b: $bd
	jr nz, jr_064_6c3e                               ; $6c3c: $20 $00

jr_064_6c3e:
	inc bc                                           ; $6c3e: $03
	rlca                                             ; $6c3f: $07
	ld a, a                                          ; $6c40: $7f
	and b                                            ; $6c41: $a0
	sbc e                                            ; $6c42: $9b
	add [hl]                                         ; $6c43: $86
	rst $38                                          ; $6c44: $ff
	ld a, b                                          ; $6c45: $78
	rra                                              ; $6c46: $1f
	cp l                                             ; $6c47: $bd
	rlca                                             ; $6c48: $07
	ld [bc], a                                       ; $6c49: $02
	dec b                                            ; $6c4a: $05
	rrca                                             ; $6c4b: $0f
	sbc d                                            ; $6c4c: $9a
	inc bc                                           ; $6c4d: $03
	rst $38                                          ; $6c4e: $ff
	cp $83                                           ; $6c4f: $fe $83
	add b                                            ; $6c51: $80
	ld a, e                                          ; $6c52: $7b
	ldh [$9c], a                                     ; $6c53: $e0 $9c
	ldh a, [$60]                                     ; $6c55: $f0 $60
	ld h, b                                          ; $6c57: $60
	rra                                              ; $6c58: $1f
	ldh [$7f], a                                     ; $6c59: $e0 $7f
	ldh [c], a                                       ; $6c5b: $e2
	sbc c                                            ; $6c5c: $99
	ld hl, sp-$70                                    ; $6c5d: $f8 $90
	ldh a, [hDisp1_SCY]                                     ; $6c5f: $f0 $90
	ld h, b                                          ; $6c61: $60
	ld h, b                                          ; $6c62: $60
	inc hl                                           ; $6c63: $23
	ldh [$9e], a                                     ; $6c64: $e0 $9e
	ret c                                            ; $6c66: $d8

	db $dd                                           ; $6c67: $dd
	adc b                                            ; $6c68: $88
	sbc h                                            ; $6c69: $9c
	ld hl, sp+$70                                    ; $6c6a: $f8 $70
	ld [hl], b                                       ; $6c6c: $70
	dec hl                                           ; $6c6d: $2b
	ldh [$7b], a                                     ; $6c6e: $e0 $7b
	ld bc, $8c80                                     ; $6c70: $01 $80 $8c
	rst $38                                          ; $6c73: $ff
	adc [hl]                                         ; $6c74: $8e
	ei                                               ; $6c75: $fb
	sbc [hl]                                         ; $6c76: $9e
	ld sp, hl                                        ; $6c77: $f9
	sbc l                                            ; $6c78: $9d
	di                                               ; $6c79: $f3
	rst SubAFromDE                                          ; $6c7a: $df
	ldh a, [$dc]                                     ; $6c7b: $f0 $dc
	pop af                                           ; $6c7d: $f1
	ei                                               ; $6c7e: $fb
	db $f4                                           ; $6c7f: $f4
	and a                                            ; $6c80: $a7
	ld hl, sp-$6a                                    ; $6c81: $f8 $96
	reti                                             ; $6c83: $d9


	ld [hl], a                                       ; $6c84: $77
	db $db                                           ; $6c85: $db
	ld [hl], b                                       ; $6c86: $70
	pop de                                           ; $6c87: $d1
	ld d, b                                          ; $6c88: $50
	ret nc                                           ; $6c89: $d0

	ld a, b                                          ; $6c8a: $78
	ret z                                            ; $6c8b: $c8

	inc a                                            ; $6c8c: $3c
	add sp, $1c                                      ; $6c8d: $e8 $1c
	db $f4                                           ; $6c8f: $f4
	ccf                                              ; $6c90: $3f
	add b                                            ; $6c91: $80
	db $fc                                           ; $6c92: $fc
	ld h, e                                          ; $6c93: $63
	cp a                                             ; $6c94: $bf
	db $e3                                           ; $6c95: $e3
	ccf                                              ; $6c96: $3f
	pop de                                           ; $6c97: $d1
	ld l, a                                          ; $6c98: $6f
	bit 4, a                                         ; $6c99: $cb $67
	ld c, e                                          ; $6c9b: $4b
	ld h, a                                          ; $6c9c: $67
	cpl                                              ; $6c9d: $2f
	ld b, l                                          ; $6c9e: $45
	rlca                                             ; $6c9f: $07
	ld c, l                                          ; $6ca0: $4d
	ld d, l                                          ; $6ca1: $55
	rrca                                             ; $6ca2: $0f
	dec c                                            ; $6ca3: $0d
	dec de                                           ; $6ca4: $1b
	rrca                                             ; $6ca5: $0f
	dec de                                           ; $6ca6: $1b
	ld c, e                                          ; $6ca7: $4b
	rra                                              ; $6ca8: $1f
	dec de                                           ; $6ca9: $1b
	ld d, a                                          ; $6caa: $57
	dec a                                            ; $6cab: $3d
	ld d, a                                          ; $6cac: $57
	push de                                          ; $6cad: $d5
	ld a, a                                          ; $6cae: $7f
	push de                                          ; $6caf: $d5
	ld a, a                                          ; $6cb0: $7f
	add d                                            ; $6cb1: $82
	ld sp, hl                                        ; $6cb2: $f9
	ld a, a                                          ; $6cb3: $7f
	ld l, h                                          ; $6cb4: $6c
	db $db                                           ; $6cb5: $db
	db $ec                                           ; $6cb6: $ec
	db $db                                           ; $6cb7: $db
	adc [hl]                                         ; $6cb8: $8e
	ld sp, hl                                        ; $6cb9: $f9
	xor $f9                                          ; $6cba: $ee $f9
	cp $91                                           ; $6cbc: $fe $91
	ld bc, $fefe                                     ; $6cbe: $01 $fe $fe
	ld bc, $f07f                                     ; $6cc1: $01 $7f $f0
	rst GetHLinHL                                          ; $6cc4: $cf
	ret z                                            ; $6cc5: $c8

	dec e                                            ; $6cc6: $1d
	cp h                                             ; $6cc7: $bc
	ld a, c                                          ; $6cc8: $79
	ld a, h                                          ; $6cc9: $7c
	ld c, h                                          ; $6cca: $4c
	ld a, b                                          ; $6ccb: $78
	or l                                             ; $6ccc: $b5
	jr c, jr_064_6d48                                ; $6ccd: $38 $79

	cp h                                             ; $6ccf: $bc
	ld [bc], a                                       ; $6cd0: $02
	call z, $8080                                    ; $6cd1: $cc $80 $80
	ret nz                                           ; $6cd4: $c0

	adc a                                            ; $6cd5: $8f
	add b                                            ; $6cd6: $80
	ldh [$c0], a                                     ; $6cd7: $e0 $c0
	jr nc, @-$1e                                     ; $6cd9: $30 $e0

	inc a                                            ; $6cdb: $3c
	ld hl, sp+$2f                                    ; $6cdc: $f8 $2f
	cp $2f                                           ; $6cde: $fe $2f
	db $fd                                           ; $6ce0: $fd
	cpl                                              ; $6ce1: $2f
	db $fc                                           ; $6ce2: $fc
	cpl                                              ; $6ce3: $2f
	db $fc                                           ; $6ce4: $fc
	dec l                                            ; $6ce5: $2d
	ld a, e                                          ; $6ce6: $7b
	cp $7f                                           ; $6ce7: $fe $7f
	and [hl]                                         ; $6ce9: $a6
	add h                                            ; $6cea: $84

jr_064_6ceb:
	ccf                                              ; $6ceb: $3f
	cp $7f                                           ; $6cec: $fe $7f
	db $fd                                           ; $6cee: $fd
	ld a, h                                          ; $6cef: $7c
	ld hl, sp+$64                                    ; $6cf0: $f8 $64
	rst SubAFromDE                                          ; $6cf2: $df
	ld h, [hl]                                       ; $6cf3: $66
	rst SubAFromDE                                          ; $6cf4: $df
	ld h, [hl]                                       ; $6cf5: $66
	db $dd                                           ; $6cf6: $dd
	ld h, a                                          ; $6cf7: $67
	call c, $cc77                                    ; $6cf8: $dc $77 $cc
	ld [hl], h                                       ; $6cfb: $74
	rst GetHLinHL                                          ; $6cfc: $cf
	ei                                               ; $6cfd: $fb
	inc b                                            ; $6cfe: $04
	inc bc                                           ; $6cff: $03
	adc b                                            ; $6d00: $88
	rlca                                             ; $6d01: $07
	ld hl, sp+$77                                    ; $6d02: $f8 $77
	adc c                                            ; $6d04: $89
	sbc a                                            ; $6d05: $9f
	cp l                                             ; $6d06: $bd
	inc b                                            ; $6d07: $04
	inc h                                            ; $6d08: $24
	ld [hl], b                                       ; $6d09: $70
	ld a, d                                          ; $6d0a: $7a
	add c                                            ; $6d0b: $81
	ld b, b                                          ; $6d0c: $40
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	push bc                                          ; $6d0f: $c5
	cp a                                             ; $6d10: $bf
	ldh [c], a                                       ; $6d11: $e2
	sbc a                                            ; $6d12: $9f
	jp nz, $b9bf                                     ; $6d13: $c2 $bf $b9

	rst $38                                          ; $6d16: $ff
	rst $38                                          ; $6d17: $ff
	jp $ff00                                         ; $6d18: $c3 $00 $ff


	rst $38                                          ; $6d1b: $ff
	nop                                              ; $6d1c: $00
	ei                                               ; $6d1d: $fb
	ld a, h                                          ; $6d1e: $7c
	call $9bce                                       ; $6d1f: $cd $ce $9b
	cp a                                             ; $6d22: $bf
	ld a, c                                          ; $6d23: $79
	ld a, [$78cf]                                    ; $6d24: $fa $cf $78
	halt                                             ; $6d27: $76
	jr nc, jr_064_6d66                               ; $6d28: $30 $3c

	cp a                                             ; $6d2a: $bf
	ld bc, $8bff                                     ; $6d2b: $01 $ff $8b
	ld bc, $031e                                     ; $6d2e: $01 $1e $03
	ld a, $07                                        ; $6d31: $3e $07
	ld a, $0f                                        ; $6d33: $3e $0f
	ld a, [hl]                                       ; $6d35: $7e
	rra                                              ; $6d36: $1f
	db $f4                                           ; $6d37: $f4
	ld a, a                                          ; $6d38: $7f
	db $f4                                           ; $6d39: $f4
	rst $38                                          ; $6d3a: $ff
	add sp, -$01                                     ; $6d3b: $e8 $ff
	add sp, $7f                                      ; $6d3d: $e8 $7f
	jp hl                                            ; $6d3f: $e9


	ld a, e                                          ; $6d40: $7b
	ret                                              ; $6d41: $c9


	ld a, e                                          ; $6d42: $7b
	cp $95                                           ; $6d43: $fe $95
	pop bc                                           ; $6d45: $c1
	ld l, e                                          ; $6d46: $6b
	pop bc                                           ; $6d47: $c1

jr_064_6d48:
	db $eb                                           ; $6d48: $eb
	pop bc                                           ; $6d49: $c1
	jp Jump_064_43c1                                 ; $6d4a: $c3 $c1 $43


	pop bc                                           ; $6d4d: $c1
	ld c, e                                          ; $6d4e: $4b
	ld b, a                                          ; $6d4f: $47
	jr nz, jr_064_6ceb                               ; $6d50: $20 $99

	sub a                                            ; $6d52: $97
	ret c                                            ; $6d53: $d8

	ld [hl], a                                       ; $6d54: $77
	ret c                                            ; $6d55: $d8

	ld [hl], e                                       ; $6d56: $73
	db $d3                                           ; $6d57: $d3
	ld e, a                                          ; $6d58: $5f
	jr nz, jr_064_6daa                               ; $6d59: $20 $4f

	ld b, b                                          ; $6d5b: $40
	ld a, a                                          ; $6d5c: $7f
	sbc [hl]                                         ; $6d5d: $9e
	sbc c                                            ; $6d5e: $99
	rst $38                                          ; $6d5f: $ff
	ld a, b                                          ; $6d60: $78
	call Call_064_79ec                               ; $6d61: $cd $ec $79
	db $fc                                           ; $6d64: $fc
	ld e, a                                          ; $6d65: $5f

jr_064_6d66:
	ld b, b                                          ; $6d66: $40
	ld c, a                                          ; $6d67: $4f
	add b                                            ; $6d68: $80
	ld a, e                                          ; $6d69: $7b
	cp $9a                                           ; $6d6a: $fe $9a
	ld hl, sp-$61                                    ; $6d6c: $f8 $9f
	call c, $fe7b                                    ; $6d6e: $dc $7b $fe
	ld e, a                                          ; $6d71: $5f
	add b                                            ; $6d72: $80
	inc sp                                           ; $6d73: $33
	and b                                            ; $6d74: $a0
	sbc h                                            ; $6d75: $9c
	pop de                                           ; $6d76: $d1
	ld d, e                                          ; $6d77: $53
	db $d3                                           ; $6d78: $d3
	inc hl                                           ; $6d79: $23
	and b                                            ; $6d7a: $a0
	sbc b                                            ; $6d7b: $98
	nop                                              ; $6d7c: $00
	db $fd                                           ; $6d7d: $fd
	ld hl, sp-$03                                    ; $6d7e: $f8 $fd
	db $fc                                           ; $6d80: $fc
	ld c, h                                          ; $6d81: $4c
	ret c                                            ; $6d82: $d8

	ld h, a                                          ; $6d83: $67
	and b                                            ; $6d84: $a0
	dec sp                                           ; $6d85: $3b
	nop                                              ; $6d86: $00
	sbc h                                            ; $6d87: $9c
	adc b                                            ; $6d88: $88
	sbc a                                            ; $6d89: $9f
	ld bc, $0027                                     ; $6d8a: $01 $27 $00
	ld [hl], e                                       ; $6d8d: $73
	cp $9a                                           ; $6d8e: $fe $9a
	db $fc                                           ; $6d90: $fc
	ld a, a                                          ; $6d91: $7f
	cp $cb                                           ; $6d92: $fe $cb
	ld e, a                                          ; $6d94: $5f
	rla                                              ; $6d95: $17
	add b                                            ; $6d96: $80
	sbc e                                            ; $6d97: $9b
	ld [hl], d                                       ; $6d98: $72
	jp nc, $d153                                     ; $6d99: $d2 $53 $d1

	dec de                                           ; $6d9c: $1b
	add b                                            ; $6d9d: $80
	sbc b                                            ; $6d9e: $98
	nop                                              ; $6d9f: $00
	ld a, l                                          ; $6da0: $7d
	inc b                                            ; $6da1: $04
	db $fc                                           ; $6da2: $fc
	ld hl, sp-$03                                    ; $6da3: $f8 $fd
	ldh a, [$03]                                     ; $6da5: $f0 $03
	add b                                            ; $6da7: $80
	daa                                              ; $6da8: $27
	add b                                            ; $6da9: $80

jr_064_6daa:
	sbc b                                            ; $6daa: $98
	nop                                              ; $6dab: $00
	sbc a                                            ; $6dac: $9f
	add c                                            ; $6dad: $81
	rst $38                                          ; $6dae: $ff
	ld a, [hl]                                       ; $6daf: $7e
	ld a, [hl]                                       ; $6db0: $7e
	inc a                                            ; $6db1: $3c
	ld l, a                                          ; $6db2: $6f
	add b                                            ; $6db3: $80
	rst $38                                          ; $6db4: $ff
	sbc h                                            ; $6db5: $9c
	ld hl, sp+$50                                    ; $6db6: $f8 $50
	nop                                              ; $6db8: $00
	cp l                                             ; $6db9: $bd
	jr nz, jr_064_6dbc                               ; $6dba: $20 $00

jr_064_6dbc:
	inc bc                                           ; $6dbc: $03
	rlca                                             ; $6dbd: $07
	ld a, a                                          ; $6dbe: $7f
	and b                                            ; $6dbf: $a0
	sbc e                                            ; $6dc0: $9b
	add [hl]                                         ; $6dc1: $86
	rst $38                                          ; $6dc2: $ff
	ld a, b                                          ; $6dc3: $78
	rra                                              ; $6dc4: $1f
	cp l                                             ; $6dc5: $bd
	rlca                                             ; $6dc6: $07
	ld [bc], a                                       ; $6dc7: $02
	dec b                                            ; $6dc8: $05
	rrca                                             ; $6dc9: $0f
	sbc d                                            ; $6dca: $9a
	inc bc                                           ; $6dcb: $03
	rst $38                                          ; $6dcc: $ff
	cp $83                                           ; $6dcd: $fe $83
	add b                                            ; $6dcf: $80
	ld [hl], a                                       ; $6dd0: $77
	ldh [$9c], a                                     ; $6dd1: $e0 $9c
	ld a, b                                          ; $6dd3: $78
	ld [hl], b                                       ; $6dd4: $70
	ld [hl], b                                       ; $6dd5: $70
	rla                                              ; $6dd6: $17
	ldh [$9e], a                                     ; $6dd7: $e0 $9e
	ld [hl], b                                       ; $6dd9: $70
	ld a, e                                          ; $6dda: $7b
	ldh [$7b], a                                     ; $6ddb: $e0 $7b
	sbc $2f                                          ; $6ddd: $de $2f
	ldh [$9c], a                                     ; $6ddf: $e0 $9c
	ld a, b                                          ; $6de1: $78
	jr nc, @-$06                                     ; $6de2: $30 $f8

	db $dd                                           ; $6de4: $dd
	ld a, b                                          ; $6de5: $78
	rst SubAFromDE                                          ; $6de6: $df
	jr nc, jr_064_6e14                               ; $6de7: $30 $2b

	ldh [$7d], a                                     ; $6de9: $e0 $7d
	ld bc, $8c80                                     ; $6deb: $01 $80 $8c
	rst $38                                          ; $6dee: $ff
	adc [hl]                                         ; $6def: $8e
	ei                                               ; $6df0: $fb
	sbc [hl]                                         ; $6df1: $9e
	ld sp, hl                                        ; $6df2: $f9
	sbc [hl]                                         ; $6df3: $9e
	di                                               ; $6df4: $f3
	rst SubAFromDE                                          ; $6df5: $df
	ldh a, [$dc]                                     ; $6df6: $f0 $dc
	pop af                                           ; $6df8: $f1
	ei                                               ; $6df9: $fb
	db $f4                                           ; $6dfa: $f4
	and a                                            ; $6dfb: $a7
	ld hl, sp-$6a                                    ; $6dfc: $f8 $96
	reti                                             ; $6dfe: $d9


	ld [hl], a                                       ; $6dff: $77
	db $db                                           ; $6e00: $db
	ld [hl], b                                       ; $6e01: $70
	pop de                                           ; $6e02: $d1
	ld d, b                                          ; $6e03: $50
	ret nc                                           ; $6e04: $d0

	ld a, b                                          ; $6e05: $78
	ret z                                            ; $6e06: $c8

	inc a                                            ; $6e07: $3c
	add sp, $1c                                      ; $6e08: $e8 $1c
	db $f4                                           ; $6e0a: $f4
	ccf                                              ; $6e0b: $3f
	add b                                            ; $6e0c: $80
	db $fc                                           ; $6e0d: $fc
	ld h, e                                          ; $6e0e: $63
	cp a                                             ; $6e0f: $bf
	db $e3                                           ; $6e10: $e3
	ccf                                              ; $6e11: $3f
	pop de                                           ; $6e12: $d1
	ld l, a                                          ; $6e13: $6f

jr_064_6e14:
	bit 4, a                                         ; $6e14: $cb $67
	ld c, e                                          ; $6e16: $4b
	ld h, a                                          ; $6e17: $67
	cpl                                              ; $6e18: $2f
	ld b, l                                          ; $6e19: $45
	rlca                                             ; $6e1a: $07
	ld c, l                                          ; $6e1b: $4d
	ld d, l                                          ; $6e1c: $55
	rrca                                             ; $6e1d: $0f
	dec c                                            ; $6e1e: $0d
	dec de                                           ; $6e1f: $1b
	rrca                                             ; $6e20: $0f
	dec de                                           ; $6e21: $1b
	ld c, e                                          ; $6e22: $4b
	rra                                              ; $6e23: $1f
	dec de                                           ; $6e24: $1b
	ld d, a                                          ; $6e25: $57
	dec a                                            ; $6e26: $3d
	ld d, a                                          ; $6e27: $57
	push de                                          ; $6e28: $d5
	ld a, a                                          ; $6e29: $7f
	push de                                          ; $6e2a: $d5
	ld a, a                                          ; $6e2b: $7f
	add d                                            ; $6e2c: $82
	ld sp, hl                                        ; $6e2d: $f9
	ld a, a                                          ; $6e2e: $7f
	ld l, h                                          ; $6e2f: $6c
	db $db                                           ; $6e30: $db
	db $ec                                           ; $6e31: $ec
	db $db                                           ; $6e32: $db
	xor [hl]                                         ; $6e33: $ae
	reti                                             ; $6e34: $d9


	adc $f9                                          ; $6e35: $ce $f9
	cp $71                                           ; $6e37: $fe $71
	ld bc, $fefe                                     ; $6e39: $01 $fe $fe
	ld bc, $78b7                                     ; $6e3c: $01 $b7 $78
	ei                                               ; $6e3f: $fb
	db $fc                                           ; $6e40: $fc
	dec c                                            ; $6e41: $0d
	sbc h                                            ; $6e42: $9c
	ld a, c                                          ; $6e43: $79
	ld a, h                                          ; $6e44: $7c
	ld c, h                                          ; $6e45: $4c
	ld a, b                                          ; $6e46: $78
	or l                                             ; $6e47: $b5
	jr c, jr_064_6ec3                                ; $6e48: $38 $79

	cp h                                             ; $6e4a: $bc
	ld [bc], a                                       ; $6e4b: $02
	call z, $8080                                    ; $6e4c: $cc $80 $80
	ret nz                                           ; $6e4f: $c0

	adc a                                            ; $6e50: $8f
	add b                                            ; $6e51: $80
	ldh [$c0], a                                     ; $6e52: $e0 $c0
	jr nc, @-$1e                                     ; $6e54: $30 $e0

	inc a                                            ; $6e56: $3c
	ld hl, sp+$2f                                    ; $6e57: $f8 $2f
	cp $2f                                           ; $6e59: $fe $2f
	db $fd                                           ; $6e5b: $fd
	cpl                                              ; $6e5c: $2f
	db $fc                                           ; $6e5d: $fc
	cpl                                              ; $6e5e: $2f
	db $fc                                           ; $6e5f: $fc
	dec l                                            ; $6e60: $2d
	ld a, e                                          ; $6e61: $7b
	cp $7f                                           ; $6e62: $fe $7f
	and [hl]                                         ; $6e64: $a6
	add h                                            ; $6e65: $84

jr_064_6e66:
	ccf                                              ; $6e66: $3f
	cp $7f                                           ; $6e67: $fe $7f
	db $fd                                           ; $6e69: $fd
	ld a, h                                          ; $6e6a: $7c
	ld hl, sp+$64                                    ; $6e6b: $f8 $64
	rst SubAFromDE                                          ; $6e6d: $df
	ld h, [hl]                                       ; $6e6e: $66
	rst SubAFromDE                                          ; $6e6f: $df
	ld h, [hl]                                       ; $6e70: $66
	db $dd                                           ; $6e71: $dd
	ld h, a                                          ; $6e72: $67
	call c, $cc77                                    ; $6e73: $dc $77 $cc
	ld [hl], h                                       ; $6e76: $74
	rst GetHLinHL                                          ; $6e77: $cf
	ei                                               ; $6e78: $fb
	inc b                                            ; $6e79: $04
	inc bc                                           ; $6e7a: $03
	adc b                                            ; $6e7b: $88
	rlca                                             ; $6e7c: $07
	ld hl, sp+$77                                    ; $6e7d: $f8 $77
	adc c                                            ; $6e7f: $89
	sbc a                                            ; $6e80: $9f
	cp l                                             ; $6e81: $bd
	inc b                                            ; $6e82: $04
	inc h                                            ; $6e83: $24
	ld [hl], b                                       ; $6e84: $70
	ld a, d                                          ; $6e85: $7a
	add c                                            ; $6e86: $81
	ld b, b                                          ; $6e87: $40
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	push bc                                          ; $6e8a: $c5
	cp a                                             ; $6e8b: $bf
	ldh [c], a                                       ; $6e8c: $e2
	sbc a                                            ; $6e8d: $9f
	ld [$d99f], a                                    ; $6e8e: $ea $9f $d9
	cp a                                             ; $6e91: $bf
	cp a                                             ; $6e92: $bf
	di                                               ; $6e93: $f3
	nop                                              ; $6e94: $00
	rst $38                                          ; $6e95: $ff
	rst $38                                          ; $6e96: $ff
	nop                                              ; $6e97: $00
	rst FarCall                                          ; $6e98: $f7
	ld a, b                                          ; $6e99: $78
	db $fd                                           ; $6e9a: $fd
	cp $0b                                           ; $6e9b: $fe $0b
	sbc a                                            ; $6e9d: $9f
	ld a, c                                          ; $6e9e: $79
	ld a, d                                          ; $6e9f: $7a
	rst GetHLinHL                                          ; $6ea0: $cf
	ld a, b                                          ; $6ea1: $78
	halt                                             ; $6ea2: $76
	jr nc, jr_064_6ee1                               ; $6ea3: $30 $3c

	cp a                                             ; $6ea5: $bf
	ld bc, $8bff                                     ; $6ea6: $01 $ff $8b
	ld bc, $031e                                     ; $6ea9: $01 $1e $03
	ld a, $07                                        ; $6eac: $3e $07
	ld a, $0f                                        ; $6eae: $3e $0f
	ld a, [hl]                                       ; $6eb0: $7e
	rra                                              ; $6eb1: $1f
	db $f4                                           ; $6eb2: $f4
	ld a, a                                          ; $6eb3: $7f
	db $f4                                           ; $6eb4: $f4
	rst $38                                          ; $6eb5: $ff
	add sp, -$01                                     ; $6eb6: $e8 $ff
	add sp, $7f                                      ; $6eb8: $e8 $7f
	jp hl                                            ; $6eba: $e9


	ld a, e                                          ; $6ebb: $7b
	ret                                              ; $6ebc: $c9


	ld a, e                                          ; $6ebd: $7b
	cp $95                                           ; $6ebe: $fe $95
	pop bc                                           ; $6ec0: $c1
	ld l, e                                          ; $6ec1: $6b
	pop bc                                           ; $6ec2: $c1

jr_064_6ec3:
	db $eb                                           ; $6ec3: $eb
	pop bc                                           ; $6ec4: $c1
	jp Jump_064_43c1                                 ; $6ec5: $c3 $c1 $43


	pop bc                                           ; $6ec8: $c1
	ld c, e                                          ; $6ec9: $4b
	ld b, a                                          ; $6eca: $47
	jr nz, jr_064_6e66                               ; $6ecb: $20 $99

	sub a                                            ; $6ecd: $97
	ret c                                            ; $6ece: $d8

	ld [hl], a                                       ; $6ecf: $77
	reti                                             ; $6ed0: $d9


	ld [hl], d                                       ; $6ed1: $72
	db $d3                                           ; $6ed2: $d3
	ld e, a                                          ; $6ed3: $5f
	jr nz, jr_064_6f29                               ; $6ed4: $20 $53

	ld b, b                                          ; $6ed6: $40
	sbc b                                            ; $6ed7: $98
	dec c                                            ; $6ed8: $0d
	rst $38                                          ; $6ed9: $ff
	nop                                              ; $6eda: $00
	rst $38                                          ; $6edb: $ff

Call_064_6edc:
	ld hl, sp-$33                                    ; $6edc: $f8 $cd
	call c, Call_064_4057                            ; $6ede: $dc $57 $40

jr_064_6ee1:
	ld d, e                                          ; $6ee1: $53
	add b                                            ; $6ee2: $80
	sbc [hl]                                         ; $6ee3: $9e
	ret nz                                           ; $6ee4: $c0

	ld a, e                                          ; $6ee5: $7b
	ldh [$9a], a                                     ; $6ee6: $e0 $9a
	db $fc                                           ; $6ee8: $fc
	sbc a                                            ; $6ee9: $9f
	cp [hl]                                          ; $6eea: $be
	ld a, c                                          ; $6eeb: $79
	ei                                               ; $6eec: $fb
	ld e, a                                          ; $6eed: $5f
	add b                                            ; $6eee: $80
	dec sp                                           ; $6eef: $3b
	and b                                            ; $6ef0: $a0

jr_064_6ef1:
	sbc l                                            ; $6ef1: $9d
	ret c                                            ; $6ef2: $d8

	ld [hl], e                                       ; $6ef3: $73
	daa                                              ; $6ef4: $27
	and b                                            ; $6ef5: $a0
	sbc [hl]                                         ; $6ef6: $9e
	dec e                                            ; $6ef7: $1d
	ld a, e                                          ; $6ef8: $7b
	ret nz                                           ; $6ef9: $c0

	sbc b                                            ; $6efa: $98
	nop                                              ; $6efb: $00
	db $fd                                           ; $6efc: $fd
	ld hl, sp-$63                                    ; $6efd: $f8 $9d
	call c, $f86c                                    ; $6eff: $dc $6c $f8
	ld h, a                                          ; $6f02: $67
	and b                                            ; $6f03: $a0
	dec sp                                           ; $6f04: $3b
	nop                                              ; $6f05: $00
	sbc h                                            ; $6f06: $9c
	adc b                                            ; $6f07: $88
	sbc a                                            ; $6f08: $9f
	ld bc, $002b                                     ; $6f09: $01 $2b $00
	ld [hl], a                                       ; $6f0c: $77
	add b                                            ; $6f0d: $80
	ld [hl], a                                       ; $6f0e: $77
	ld a, [hl]                                       ; $6f0f: $7e
	sbc h                                            ; $6f10: $9c
	sbc $eb                                          ; $6f11: $de $eb
	ld a, h                                          ; $6f13: $7c
	inc bc                                           ; $6f14: $03
	add b                                            ; $6f15: $80
	rra                                              ; $6f16: $1f
	add b                                            ; $6f17: $80
	ld a, a                                          ; $6f18: $7f
	cp $9a                                           ; $6f19: $fe $9a
	inc b                                            ; $6f1b: $04
	db $fc                                           ; $6f1c: $fc
	ld hl, sp-$03                                    ; $6f1d: $f8 $fd
	ld [hl], b                                       ; $6f1f: $70
	inc bc                                           ; $6f20: $03
	add b                                            ; $6f21: $80
	daa                                              ; $6f22: $27
	add b                                            ; $6f23: $80
	ld a, a                                          ; $6f24: $7f
	cp $9a                                           ; $6f25: $fe $9a
	add [hl]                                         ; $6f27: $86
	rst $38                                          ; $6f28: $ff

jr_064_6f29:
	ld a, h                                          ; $6f29: $7c
	ld a, [hl]                                       ; $6f2a: $7e
	jr c, jr_064_6f9c                                ; $6f2b: $38 $6f

	add b                                            ; $6f2d: $80
	rst $38                                          ; $6f2e: $ff
	sbc h                                            ; $6f2f: $9c
	ld hl, sp+$50                                    ; $6f30: $f8 $50
	jr jr_064_6ef1                                   ; $6f32: $18 $bd

	jr nc, jr_064_6f36                               ; $6f34: $30 $00

jr_064_6f36:
	inc bc                                           ; $6f36: $03
	rlca                                             ; $6f37: $07
	sbc [hl]                                         ; $6f38: $9e
	ld bc, $e67b                                     ; $6f39: $01 $7b $e6
	sbc l                                            ; $6f3c: $9d
	ld a, b                                          ; $6f3d: $78
	rra                                              ; $6f3e: $1f
	cp l                                             ; $6f3f: $bd
	rlca                                             ; $6f40: $07
	ld [bc], a                                       ; $6f41: $02
	dec b                                            ; $6f42: $05
	rrca                                             ; $6f43: $0f
	sbc d                                            ; $6f44: $9a
	inc bc                                           ; $6f45: $03
	rst $38                                          ; $6f46: $ff
	cp $83                                           ; $6f47: $fe $83
	add b                                            ; $6f49: $80
	ld a, e                                          ; $6f4a: $7b
	ldh [$9b], a                                     ; $6f4b: $e0 $9b
	ld [hl], b                                       ; $6f4d: $70
	ld hl, sp+$70                                    ; $6f4e: $f8 $70
	ld [hl], b                                       ; $6f50: $70
	inc hl                                           ; $6f51: $23
	ldh [$9d], a                                     ; $6f52: $e0 $9d
	ld [hl], b                                       ; $6f54: $70
	ld h, b                                          ; $6f55: $60
	ld [hl], e                                       ; $6f56: $73
	ldh [$9e], a                                     ; $6f57: $e0 $9e
	jr nz, jr_064_6f82                               ; $6f59: $20 $27

	ldh [$7b], a                                     ; $6f5b: $e0 $7b
	ldh [c], a                                       ; $6f5d: $e2
	sbc e                                            ; $6f5e: $9b
	ld c, b                                          ; $6f5f: $48
	ld hl, sp+$48                                    ; $6f60: $f8 $48
	ld a, b                                          ; $6f62: $78
	ld a, e                                          ; $6f63: $7b
	sbc $2f                                          ; $6f64: $de $2f
	ldh [$3d], a                                     ; $6f66: $e0 $3d
	add e                                            ; $6f68: $83
	cp $9a                                           ; $6f69: $fe $9a
	ld bc, $0603                                     ; $6f6b: $01 $03 $06
	dec b                                            ; $6f6e: $05
	dec c                                            ; $6f6f: $0d
	ld [hl], e                                       ; $6f70: $73
	ld hl, sp-$79                                    ; $6f71: $f8 $87
	rlca                                             ; $6f73: $07
	ld b, $0e                                        ; $6f74: $06 $0e
	dec bc                                           ; $6f76: $0b
	ld a, [de]                                       ; $6f77: $1a
	db $10                                           ; $6f78: $10
	ld de, $2733                                     ; $6f79: $11 $33 $27
	dec l                                            ; $6f7c: $2d
	add hl, hl                                       ; $6f7d: $29
	inc c                                            ; $6f7e: $0c
	dec e                                            ; $6f7f: $1d
	rra                                              ; $6f80: $1f
	rra                                              ; $6f81: $1f

jr_064_6f82:
	ccf                                              ; $6f82: $3f
	ccf                                              ; $6f83: $3f
	dec a                                            ; $6f84: $3d
	add hl, sp                                       ; $6f85: $39
	ld a, [hl-]                                      ; $6f86: $3a
	ld [hl-], a                                      ; $6f87: $32
	ld [hl+], a                                      ; $6f88: $22
	ld [hl+], a                                      ; $6f89: $22
	ld [bc], a                                       ; $6f8a: $02
	cp $9a                                           ; $6f8b: $fe $9a
	dec sp                                           ; $6f8d: $3b
	inc sp                                           ; $6f8e: $33
	inc hl                                           ; $6f8f: $23
	inc hl                                           ; $6f90: $23
	inc bc                                           ; $6f91: $03
	sbc $01                                          ; $6f92: $de $01
	ld sp, hl                                        ; $6f94: $f9
	ld h, e                                          ; $6f95: $63
	rst FarCall                                          ; $6f96: $f7
	ld [hl], e                                       ; $6f97: $73
	di                                               ; $6f98: $f3
	sbc l                                            ; $6f99: $9d
	ld [bc], a                                       ; $6f9a: $02
	inc bc                                           ; $6f9b: $03

jr_064_6f9c:
	ld l, a                                          ; $6f9c: $6f
	ld hl, sp-$65                                    ; $6f9d: $f8 $9b
	inc bc                                           ; $6f9f: $03
	ld [bc], a                                       ; $6fa0: $02
	dec b                                            ; $6fa1: $05
	rlca                                             ; $6fa2: $07
	sbc $0b                                          ; $6fa3: $de $0b

Jump_064_6fa5:
	sbc $17                                          ; $6fa5: $de $17
	sbc l                                            ; $6fa7: $9d
	ld b, $04                                        ; $6fa8: $06 $04
	sbc $0c                                          ; $6faa: $de $0c
	sbc $18                                          ; $6fac: $de $18
	pop af                                           ; $6fae: $f1
	ld a, a                                          ; $6faf: $7f
	push de                                          ; $6fb0: $d5
	adc c                                            ; $6fb1: $89
	dec c                                            ; $6fb2: $0d
	ld d, $28                                        ; $6fb3: $16 $28
	ld e, e                                          ; $6fb5: $5b
	ld l, a                                          ; $6fb6: $6f
	sbc a                                            ; $6fb7: $9f
	ld bc, $0e03                                     ; $6fb8: $01 $03 $0e
	add hl, de                                       ; $6fbb: $19
	scf                                              ; $6fbc: $37
	ld h, h                                          ; $6fbd: $64
	ld d, a                                          ; $6fbe: $57
	rst AddAOntoHL                                          ; $6fbf: $ef
	sbc h                                            ; $6fc0: $9c
	cp a                                             ; $6fc1: $bf
	ldh [$b7], a                                     ; $6fc2: $e0 $b7
	ld c, h                                          ; $6fc4: $4c
	add b                                            ; $6fc5: $80
	ld b, c                                          ; $6fc6: $41
	sub d                                            ; $6fc7: $92
	sbc $ff                                          ; $6fc8: $de $ff

jr_064_6fca:
	add d                                            ; $6fca: $82
	ret nz                                           ; $6fcb: $c0

	add b                                            ; $6fcc: $80
	inc bc                                           ; $6fcd: $03
	ld b, $0c                                        ; $6fce: $06 $0c
	ld b, c                                          ; $6fd0: $41
	inc hl                                           ; $6fd1: $23
	jp $c180                                         ; $6fd2: $c3 $80 $c1


	sub c                                            ; $6fd5: $91
	xor d                                            ; $6fd6: $aa
	ld e, b                                          ; $6fd7: $58
	jr c, jr_064_6fca                                ; $6fd8: $38 $f0

	ldh [$c0], a                                     ; $6fda: $e0 $c0
	add b                                            ; $6fdc: $80
	adc b                                            ; $6fdd: $88
	ld de, $11bb                                     ; $6fde: $11 $bb $11
	ld sp, $5331                                     ; $6fe1: $31 $31 $53
	ld d, e                                          ; $6fe4: $53
	ld d, a                                          ; $6fe5: $57
	sub a                                            ; $6fe6: $97
	sbc a                                            ; $6fe7: $9f
	sbc $ff                                          ; $6fe8: $de $ff
	adc a                                            ; $6fea: $8f
	rst SubAFromDE                                          ; $6feb: $df
	sbc $de                                          ; $6fec: $de $de
	sbc h                                            ; $6fee: $9c
	sbc h                                            ; $6fef: $9c
	adc [hl]                                         ; $6ff0: $8e
	adc h                                            ; $6ff1: $8c
	add l                                            ; $6ff2: $85
	dec b                                            ; $6ff3: $05
	dec b                                            ; $6ff4: $05
	rlca                                             ; $6ff5: $07
	inc bc                                           ; $6ff6: $03
	inc bc                                           ; $6ff7: $03
	adc l                                            ; $6ff8: $8d
	adc a                                            ; $6ff9: $8f
	add [hl]                                         ; $6ffa: $86
	sbc $06                                          ; $6ffb: $de $06
	rst SubAFromDE                                          ; $6ffd: $df
	ld [bc], a                                       ; $6ffe: $02
	ld a, a                                          ; $6fff: $7f
	adc [hl]                                         ; $7000: $8e
	sbc c                                            ; $7001: $99
	ld [bc], a                                       ; $7002: $02
	inc b                                            ; $7003: $04
	inc b                                            ; $7004: $04
	dec b                                            ; $7005: $05
	add hl, bc                                       ; $7006: $09
	dec bc                                           ; $7007: $0b
	sbc $03                                          ; $7008: $de $03
	sbc $07                                          ; $700a: $de $07
	sub h                                            ; $700c: $94
	rrca                                             ; $700d: $0f
	dec c                                            ; $700e: $0d
	add hl, bc                                       ; $700f: $09
	dec e                                            ; $7010: $1d
	dec d                                            ; $7011: $15

jr_064_7012:
	dec d                                            ; $7012: $15
	dec [hl]                                         ; $7013: $35
	dec hl                                           ; $7014: $2b
	dec hl                                           ; $7015: $2b
	dec l                                            ; $7016: $2d
	ld c, $de                                        ; $7017: $0e $de
	ld a, [de]                                       ; $7019: $1a
	adc c                                            ; $701a: $89
	ld a, [hl-]                                      ; $701b: $3a
	inc [hl]                                         ; $701c: $34
	inc [hl]                                         ; $701d: $34
	ld [hl], $24                                     ; $701e: $36 $24
	inc h                                            ; $7020: $24
	ld h, h                                          ; $7021: $64
	ld [hl], h                                       ; $7022: $74
	di                                               ; $7023: $f3
	ei                                               ; $7024: $fb
	ld a, [$3ffe]                                    ; $7025: $fa $fe $3f
	ccf                                              ; $7028: $3f
	ld a, a                                          ; $7029: $7f
	ld e, a                                          ; $702a: $5f
	sbc a                                            ; $702b: $9f
	rrca                                             ; $702c: $0f
	rrca                                             ; $702d: $0f
	rlca                                             ; $702e: $07
	cp $fe                                           ; $702f: $fe $fe
	db $db                                           ; $7031: $db
	rst $38                                          ; $7032: $ff
	rst SubAFromDE                                          ; $7033: $df
	inc bc                                           ; $7034: $03
	sbc c                                            ; $7035: $99
	rra                                              ; $7036: $1f
	ld hl, $1122                                     ; $7037: $21 $22 $11
	dec bc                                           ; $703a: $0b
	rrca                                             ; $703b: $0f
	db $fc                                           ; $703c: $fc
	sbc h                                            ; $703d: $9c
	inc bc                                           ; $703e: $03
	inc a                                            ; $703f: $3c
	rst GetHLinHL                                          ; $7040: $cf
	ld l, a                                          ; $7041: $6f
	ld hl, sp-$80                                    ; $7042: $f8 $80
	ccf                                              ; $7044: $3f
	ldh a, [$3f]                                     ; $7045: $f0 $3f
	db $e3                                           ; $7047: $e3
	rst JumpTable                                          ; $7048: $c7
	ccf                                              ; $7049: $3f
	db $fc                                           ; $704a: $fc
	ldh [$c0], a                                     ; $704b: $e0 $c0
	ld hl, sp-$40                                    ; $704d: $f8 $c0
	inc e                                            ; $704f: $1c
	jr c, jr_064_7012                                ; $7050: $38 $c0

	inc bc                                           ; $7052: $03
	rra                                              ; $7053: $1f
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	ld e, a                                          ; $7056: $5f
	or a                                             ; $7057: $b7
	dec de                                           ; $7058: $1b
	ld b, l                                          ; $7059: $45
	rlca                                             ; $705a: $07
	ld b, l                                          ; $705b: $45
	ld a, $ff                                        ; $705c: $3e $ff
	cp a                                             ; $705e: $bf
	rst GetHLinHL                                          ; $705f: $cf
	rst SubAFromBC                                          ; $7060: $e7
	dec sp                                           ; $7061: $3b
	rst $38                                          ; $7062: $ff
	adc h                                            ; $7063: $8c
	add e                                            ; $7064: $83
	ld bc, $f100                                     ; $7065: $01 $00 $f1
	and e                                            ; $7068: $a3
	ld b, h                                          ; $7069: $44
	xor d                                            ; $706a: $aa
	jr z, @+$47                                      ; $706b: $28 $45

	ld c, c                                          ; $706d: $49
	adc l                                            ; $706e: $8d
	inc c                                            ; $706f: $0c
	jr jr_064_70a4                                   ; $7070: $18 $32

	ld h, h                                          ; $7072: $64
	push hl                                          ; $7073: $e5
	reti                                             ; $7074: $d9


	db $db                                           ; $7075: $db
	db $db                                           ; $7076: $db
	ldh [$c1], a                                     ; $7077: $e0 $c1
	adc a                                            ; $7079: $8f
	and a                                            ; $707a: $a7
	rst JumpTable                                          ; $707b: $c7
	db $d3                                           ; $707c: $d3
	call $99ad                                       ; $707d: $cd $ad $99
	ld e, e                                          ; $7080: $5b
	or e                                             ; $7081: $b3
	ld d, e                                          ; $7082: $53
	or e                                             ; $7083: $b3
	and a                                            ; $7084: $a7
	and a                                            ; $7085: $a7
	ld c, a                                          ; $7086: $4f
	ld c, a                                          ; $7087: $4f
	sbc [hl]                                         ; $7088: $9e
	ld e, $e1                                        ; $7089: $1e $e1
	sbc l                                            ; $708b: $9d
	ld h, a                                          ; $708c: $67
	ld l, a                                          ; $708d: $6f
	sbc $ff                                          ; $708e: $de $ff
	sub h                                            ; $7090: $94
	ld e, a                                          ; $7091: $5f
	inc de                                           ; $7092: $13
	inc de                                           ; $7093: $13
	db $fc                                           ; $7094: $fc
	rst $38                                          ; $7095: $ff
	sub b                                            ; $7096: $90
	sbc h                                            ; $7097: $9c
	ldh a, [$fc]                                     ; $7098: $f0 $fc
	cp a                                             ; $709a: $bf
	or a                                             ; $709b: $b7
	db $fc                                           ; $709c: $fc
	sbc h                                            ; $709d: $9c
	rst $38                                          ; $709e: $ff
	inc a                                            ; $709f: $3c
	rst $38                                          ; $70a0: $ff
	ld l, a                                          ; $70a1: $6f
	ld hl, sp-$64                                    ; $70a2: $f8 $9c

jr_064_70a4:
	jp $fc00                                         ; $70a4: $c3 $00 $fc


	sbc $ff                                          ; $70a7: $de $ff
	sbc e                                            ; $70a9: $9b
	rra                                              ; $70aa: $1f
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	rra                                              ; $70ad: $1f
	halt                                             ; $70ae: $76
	ld l, a                                          ; $70af: $6f
	sbc [hl]                                         ; $70b0: $9e
	ldh [$de], a                                     ; $70b1: $e0 $de
	rst $38                                          ; $70b3: $ff
	add b                                            ; $70b4: $80
	ldh [$a6], a                                     ; $70b5: $e0 $a6
	ld b, c                                          ; $70b7: $41
	cp $01                                           ; $70b8: $fe $01
	ld a, [hl]                                       ; $70ba: $7e
	xor a                                            ; $70bb: $af
	rst SubAFromHL                                          ; $70bc: $d7
	rst $38                                          ; $70bd: $ff
	pop bc                                           ; $70be: $c1
	add b                                            ; $70bf: $80
	nop                                              ; $70c0: $00
	cp $81                                           ; $70c1: $fe $81
	ld b, b                                          ; $70c3: $40
	jr nz, @-$78                                     ; $70c4: $20 $86

	and a                                            ; $70c6: $a7
	daa                                              ; $70c7: $27
	dec l                                            ; $70c8: $2d
	ld l, a                                          ; $70c9: $6f
	ld c, d                                          ; $70ca: $4a
	adc d                                            ; $70cb: $8a
	adc c                                            ; $70cc: $89
	ld sp, $9010                                     ; $70cd: $31 $10 $90
	sub d                                            ; $70d0: $92
	ld [de], a                                       ; $70d1: $12
	scf                                              ; $70d2: $37
	ld [hl], a                                       ; $70d3: $77
	sbc [hl]                                         ; $70d4: $9e
	ld [hl], a                                       ; $70d5: $77
	ldh [$c1], a                                     ; $70d6: $e0 $c1
	add b                                            ; $70d8: $80
	rra                                              ; $70d9: $1f
	ld l, $34                                        ; $70da: $2e $34
	dec d                                            ; $70dc: $15
	inc [hl]                                         ; $70dd: $34
	ld [hl], $16                                     ; $70de: $36 $16
	jr nz, @+$01                                     ; $70e0: $20 $ff

	pop de                                           ; $70e2: $d1
	set 5, d                                         ; $70e3: $cb $ea
	set 1, c                                         ; $70e5: $cb $c9
	jp hl                                            ; $70e7: $e9


	rst SubAFromDE                                          ; $70e8: $df
	ccf                                              ; $70e9: $3f
	sbc a                                            ; $70ea: $9f
	add a                                            ; $70eb: $87
	add c                                            ; $70ec: $81
	or h                                             ; $70ed: $b4
	cp a                                             ; $70ee: $bf
	cp a                                             ; $70ef: $bf
	ld a, a                                          ; $70f0: $7f
	ret nz                                           ; $70f1: $c0

	ldh [$f8], a                                     ; $70f2: $e0 $f8
	cp $cb                                           ; $70f4: $fe $cb
	ret nz                                           ; $70f6: $c0

	ret nz                                           ; $70f7: $c0

	ld a, a                                          ; $70f8: $7f
	adc e                                            ; $70f9: $8b
	db $fd                                           ; $70fa: $fd
	sbc h                                            ; $70fb: $9c
	ret nz                                           ; $70fc: $c0

	ld a, b                                          ; $70fd: $78
	db $ec                                           ; $70fe: $ec
	ld l, a                                          ; $70ff: $6f
	ld hl, sp-$6f                                    ; $7100: $f8 $91
	ld hl, sp+$1c                                    ; $7102: $f8 $1c
	rrca                                             ; $7104: $0f
	ret nz                                           ; $7105: $c0

	ldh a, [$fc]                                     ; $7106: $f0 $fc
	rst $38                                          ; $7108: $ff
	ccf                                              ; $7109: $3f
	rlca                                             ; $710a: $07
	ld bc, $3ff3                                     ; $710b: $01 $f3 $3f
	rrca                                             ; $710e: $0f
	inc bc                                           ; $710f: $03
	ld a, e                                          ; $7110: $7b
	ldh a, [$80]                                     ; $7111: $f0 $80
	cp $e0                                           ; $7113: $fe $e0
	inc a                                            ; $7115: $3c
	sbc a                                            ; $7116: $9f
	ld c, c                                          ; $7117: $49
	and h                                            ; $7118: $a4
	ld [hl], d                                       ; $7119: $72
	ld e, c                                          ; $711a: $59
	or h                                             ; $711b: $b4
	rst $38                                          ; $711c: $ff
	rst $38                                          ; $711d: $ff
	ld a, a                                          ; $711e: $7f
	ccf                                              ; $711f: $3f
	rra                                              ; $7120: $1f
	adc a                                            ; $7121: $8f
	rst SubAFromBC                                          ; $7122: $e7
	ld a, e                                          ; $7123: $7b
	ld [$7c75], a                                    ; $7124: $ea $75 $7c
	cp d                                             ; $7127: $ba
	sbc [hl]                                         ; $7128: $9e
	db $ed                                           ; $7129: $ed
	push de                                          ; $712a: $d5
	ld d, b                                          ; $712b: $50
	dec e                                            ; $712c: $1d
	adc [hl]                                         ; $712d: $8e
	add a                                            ; $712e: $87
	ld b, a                                          ; $712f: $47
	ld h, e                                          ; $7130: $63
	inc sp                                           ; $7131: $33
	sbc l                                            ; $7132: $9d
	dec sp                                           ; $7133: $3b
	cp a                                             ; $7134: $bf
	ldh [$c1], a                                     ; $7135: $e0 $c1
	rst SubAFromDE                                          ; $7137: $df
	push bc                                          ; $7138: $c5
	adc a                                            ; $7139: $8f
	push hl                                          ; $713a: $e5
	call z, $e2ce                                    ; $713b: $cc $ce $e2
	jp $ff39                                         ; $713e: $c3 $39 $ff


	ccf                                              ; $7141: $3f
	rra                                              ; $7142: $1f
	scf                                              ; $7143: $37
	scf                                              ; $7144: $37
	rra                                              ; $7145: $1f
	ccf                                              ; $7146: $3f
	rst JumpTable                                          ; $7147: $c7
	rst AddAOntoHL                                          ; $7148: $ef
	rst $38                                          ; $7149: $ff
	ld a, e                                          ; $714a: $7b
	add c                                            ; $714b: $81
	sub l                                            ; $714c: $95
	rst $38                                          ; $714d: $ff
	cp $fc                                           ; $714e: $fe $fc
	rra                                              ; $7150: $1f
	db $10                                           ; $7151: $10
	inc de                                           ; $7152: $13
	db $10                                           ; $7153: $10
	pop de                                           ; $7154: $d1
	dec de                                           ; $7155: $1b
	rrca                                             ; $7156: $0f
	ld l, [hl]                                       ; $7157: $6e
	nop                                              ; $7158: $00
	push af                                          ; $7159: $f5
	add b                                            ; $715a: $80
	add b                                            ; $715b: $80
	ld h, b                                          ; $715c: $60
	db $10                                           ; $715d: $10
	ld [$e4c4], sp                                   ; $715e: $08 $c4 $e4
	ld a, [$8000]                                    ; $7161: $fa $00 $80
	ldh [$f0], a                                     ; $7164: $e0 $f0
	ld hl, sp+$3c                                    ; $7166: $f8 $3c
	inc e                                            ; $7168: $1c
	ld b, $ff                                        ; $7169: $06 $ff
	ld a, a                                          ; $716b: $7f
	ld a, a                                          ; $716c: $7f
	cp a                                             ; $716d: $bf
	ld e, a                                          ; $716e: $5f
	cpl                                              ; $716f: $2f

jr_064_7170:
	rra                                              ; $7170: $1f
	adc a                                            ; $7171: $8f
	ld bc, $8080                                     ; $7172: $01 $80 $80
	ret nz                                           ; $7175: $c0

	ldh [$f0], a                                     ; $7176: $e0 $f0
	ldh a, [$f8]                                     ; $7178: $f0 $f8
	sub [hl]                                         ; $717a: $96
	ld b, a                                          ; $717b: $47
	inc hl                                           ; $717c: $23
	add hl, de                                       ; $717d: $19
	dec b                                            ; $717e: $05
	inc de                                           ; $717f: $13
	ld c, c                                          ; $7180: $49
	inc h                                            ; $7181: $24
	sub d                                            ; $7182: $92
	db $fc                                           ; $7183: $fc
	ld l, c                                          ; $7184: $69
	cp b                                             ; $7185: $b8
	sbc c                                            ; $7186: $99
	ld e, c                                          ; $7187: $59
	ld c, l                                          ; $7188: $4d
	inc a                                            ; $7189: $3c
	ld e, $8e                                        ; $718a: $1e $8e
	rst SubAFromBC                                          ; $718c: $e7
	jp c, Jump_064_7fff                              ; $718d: $da $ff $7f

	dec a                                            ; $7190: $3d
	ld a, a                                          ; $7191: $7f
	sbc d                                            ; $7192: $9a
	ld a, l                                          ; $7193: $7d
	sub h                                            ; $7194: $94
	add [hl]                                         ; $7195: $86
	ld a, [$fef6]                                    ; $7196: $fa $f6 $fe
	rst SubAFromDE                                          ; $7199: $df
	ei                                               ; $719a: $fb
	rst SubAFromBC                                          ; $719b: $e7
	inc de                                           ; $719c: $13
	inc de                                           ; $719d: $13
	dec de                                           ; $719e: $1b
	inc bc                                           ; $719f: $03
	rla                                              ; $71a0: $17
	ccf                                              ; $71a1: $3f
	ccf                                              ; $71a2: $3f
	cp c                                             ; $71a3: $b9
	ld a, c                                          ; $71a4: $79
	ld a, [$ddf8]                                    ; $71a5: $fa $f8 $dd
	push de                                          ; $71a8: $d5
	or l                                             ; $71a9: $b5
	ld [hl-], a                                      ; $71aa: $32
	ld a, a                                          ; $71ab: $7f
	rst $38                                          ; $71ac: $ff
	db $fd                                           ; $71ad: $fd
	db $fd                                           ; $71ae: $fd
	sbc $f8                                          ; $71af: $de $f8
	sub [hl]                                         ; $71b1: $96
	ld sp, hl                                        ; $71b2: $f9
	ld a, e                                          ; $71b3: $7b
	ld e, d                                          ; $71b4: $5a
	xor b                                            ; $71b5: $a8
	or h                                             ; $71b6: $b4
	or l                                             ; $71b7: $b5
	ld d, e                                          ; $71b8: $53
	ld l, e                                          ; $71b9: $6b
	ld l, c                                          ; $71ba: $69
	sbc $f0                                          ; $71bb: $de $f0
	rst SubAFromDE                                          ; $71bd: $df
	pop hl                                           ; $71be: $e1
	sub h                                            ; $71bf: $94
	push hl                                          ; $71c0: $e5
	push bc                                          ; $71c1: $c5
	rst JumpTable                                          ; $71c2: $c7
	ld b, d                                          ; $71c3: $42
	ld b, d                                          ; $71c4: $42
	ld b, h                                          ; $71c5: $44
	call nz, Call_064_48c8                           ; $71c6: $c4 $c8 $48
	ld d, c                                          ; $71c9: $51
	rst $38                                          ; $71ca: $ff
	sbc $ef                                          ; $71cb: $de $ef
	ret c                                            ; $71cd: $d8

	rst $38                                          ; $71ce: $ff
	sub l                                            ; $71cf: $95
	xor a                                            ; $71d0: $af
	ld c, e                                          ; $71d1: $4b
	ld c, c                                          ; $71d2: $49
	ld c, b                                          ; $71d3: $48
	rst $38                                          ; $71d4: $ff
	ld c, b                                          ; $71d5: $48
	adc $7c                                          ; $71d6: $ce $7c
	cp $df                                           ; $71d8: $fe $df
	ld a, c                                          ; $71da: $79
	and b                                            ; $71db: $a0
	add h                                            ; $71dc: $84
	ret nz                                           ; $71dd: $c0

	jr nz, jr_064_7170                               ; $71de: $20 $90

	sub b                                            ; $71e0: $90
	adc b                                            ; $71e1: $88
	ret c                                            ; $71e2: $d8

	call c, $c000                                    ; $71e3: $dc $00 $c0
	ldh [rSVBK], a                                   ; $71e6: $e0 $70
	ld [hl], b                                       ; $71e8: $70
	ld a, b                                          ; $71e9: $78
	jr z, @+$26                                      ; $71ea: $28 $24

	call z, $e6ea                                    ; $71ec: $cc $ea $e6
	ld h, $85                                        ; $71ef: $26 $85
	add l                                            ; $71f1: $85
	push bc                                          ; $71f2: $c5
	call $1634                                       ; $71f3: $cd $34 $16
	ld a, [de]                                       ; $71f6: $1a
	jp c, $fbde                                      ; $71f7: $da $de $fb

	add l                                            ; $71fa: $85
	di                                               ; $71fb: $f3
	ld a, a                                          ; $71fc: $7f
	ccf                                              ; $71fd: $3f
	cp a                                             ; $71fe: $bf
	sbc a                                            ; $71ff: $9f
	ld e, a                                          ; $7200: $5f
	ld c, a                                          ; $7201: $4f
	ld c, a                                          ; $7202: $4f
	ld l, $e1                                        ; $7203: $2e $e1
	pop hl                                           ; $7205: $e1
	pop af                                           ; $7206: $f1
	pop af                                           ; $7207: $f1
	ld sp, hl                                        ; $7208: $f9
	ld sp, hl                                        ; $7209: $f9
	ei                                               ; $720a: $fb
	cp $a6                                           ; $720b: $fe $a6
	and h                                            ; $720d: $a4
	sub h                                            ; $720e: $94
	call nc, Call_064_5454                           ; $720f: $d4 $54 $54
	ld b, h                                          ; $7212: $44
	ld b, h                                          ; $7213: $44
	cp $da                                           ; $7214: $fe $da
	db $fc                                           ; $7216: $fc
	rst SubAFromDE                                          ; $7217: $df
	ld b, h                                          ; $7218: $44
	db $dd                                           ; $7219: $dd
	call nz, $84df                                   ; $721a: $c4 $df $84
	reti                                             ; $721d: $d9


	db $fc                                           ; $721e: $fc
	sbc e                                            ; $721f: $9b
	adc b                                            ; $7220: $88
	adc a                                            ; $7221: $8f
	adc a                                            ; $7222: $8f
	rrca                                             ; $7223: $0f
	sbc $1f                                          ; $7224: $de $1f
	sbc d                                            ; $7226: $9a
	ccf                                              ; $7227: $3f
	ld hl, sp-$01                                    ; $7228: $f8 $ff
	ld hl, sp-$08                                    ; $722a: $f8 $f8
	sbc $f0                                          ; $722c: $de $f0
	add b                                            ; $722e: $80
	ldh [rAUD4LEN], a                                ; $722f: $e0 $20
	inc [hl]                                         ; $7231: $34
	ld c, e                                          ; $7232: $4b
	ld e, e                                          ; $7233: $5b
	sub l                                            ; $7234: $95
	sbc h                                            ; $7235: $9c
	ld b, l                                          ; $7236: $45
	dec bc                                           ; $7237: $0b
	rst $38                                          ; $7238: $ff
	db $eb                                           ; $7239: $eb
	db $f4                                           ; $723a: $f4
	db $e4                                           ; $723b: $e4
	ld [$bae3], a                                    ; $723c: $ea $e3 $ba
	db $f4                                           ; $723f: $f4
	db $eb                                           ; $7240: $eb
	push af                                          ; $7241: $f5
	ld a, [$ece6]                                    ; $7242: $fa $e6 $ec
	push af                                          ; $7245: $f5
	inc hl                                           ; $7246: $23
	rst GetHLinHL                                          ; $7247: $cf
	db $f4                                           ; $7248: $f4
	ld a, [hl+]                                      ; $7249: $2a
	dec h                                            ; $724a: $25
	add hl, sp                                       ; $724b: $39
	inc sp                                           ; $724c: $33
	ld [$dc9d], a                                    ; $724d: $ea $9d $dc
	or b                                             ; $7250: $b0
	ldh a, [$80]                                     ; $7251: $f0 $80
	ldh [hDisp1_SCY], a                                     ; $7253: $e0 $90
	ret z                                            ; $7255: $c8

	db $f4                                           ; $7256: $f4
	ld [hl], d                                       ; $7257: $72
	dec a                                            ; $7258: $3d
	dec l                                            ; $7259: $2d
	nop                                              ; $725a: $00
	ldh [rSVBK], a                                   ; $725b: $e0 $70
	jr c, jr_064_726b                                ; $725d: $38 $0c

	adc [hl]                                         ; $725f: $8e
	jp $37d3                                         ; $7260: $c3 $d3 $37


	ld a, c                                          ; $7263: $79
	jp nc, $e4a9                                     ; $7264: $d2 $a9 $e4

	rst JumpTable                                          ; $7267: $c7
	add e                                            ; $7268: $83
	inc bc                                           ; $7269: $03
	ret z                                            ; $726a: $c8

jr_064_726b:
	add [hl]                                         ; $726b: $86
	dec l                                            ; $726c: $2d
	ld d, [hl]                                       ; $726d: $56
	rra                                              ; $726e: $1f
	inc a                                            ; $726f: $3c
	ld a, [hl]                                       ; $7270: $7e
	cp $7c                                           ; $7271: $fe $7c
	ld [hl], d                                       ; $7273: $72
	add b                                            ; $7274: $80
	add l                                            ; $7275: $85
	ld h, l                                          ; $7276: $65
	push de                                          ; $7277: $d5
	adc d                                            ; $7278: $8a
	sub $e2                                          ; $7279: $d6 $e2
	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	ld a, [hl]                                       ; $727d: $7e
	sbc [hl]                                         ; $727e: $9e
	ld l, $77                                        ; $727f: $2e $77
	dec hl                                           ; $7281: $2b
	rra                                              ; $7282: $1f
	add b                                            ; $7283: $80
	ret nz                                           ; $7284: $c0

	and b                                            ; $7285: $a0
	ret nc                                           ; $7286: $d0

	ret nc                                           ; $7287: $d0

	cp b                                             ; $7288: $b8
	adc b                                            ; $7289: $88
	jr @-$7e                                         ; $728a: $18 $80

	ld b, b                                          ; $728c: $40
	ld h, b                                          ; $728d: $60
	jr nc, jr_064_72c0                               ; $728e: $30 $30

	ld c, b                                          ; $7290: $48
	ld a, b                                          ; $7291: $78
	add sp, $68                                      ; $7292: $e8 $68
	sub b                                            ; $7294: $90
	add sp, -$28                                     ; $7295: $e8 $d8
	call z, $3694                                    ; $7297: $cc $94 $36
	ld [hl], e                                       ; $729a: $73
	ld sp, hl                                        ; $729b: $f9
	sbc b                                            ; $729c: $98
	jr @+$2a                                         ; $729d: $18 $28

	inc a                                            ; $729f: $3c
	ld l, h                                          ; $72a0: $6c
	adc $8f                                          ; $72a1: $ce $8f
	rlca                                             ; $72a3: $07
	jr nz, jr_064_72a6                               ; $72a4: $20 $00

jr_064_72a6:
	rst SubAFromDE                                          ; $72a6: $df
	xor d                                            ; $72a7: $aa
	rst SubAFromDE                                          ; $72a8: $df
	rst $38                                          ; $72a9: $ff
	sub c                                            ; $72aa: $91
	ld [hl+], a                                      ; $72ab: $22
	adc b                                            ; $72ac: $88
	xor d                                            ; $72ad: $aa
	or e                                             ; $72ae: $b3
	rst $38                                          ; $72af: $ff
	ld [hl+], a                                      ; $72b0: $22
	sbc c                                            ; $72b1: $99
	sbc c                                            ; $72b2: $99
	jr nz, @+$01                                     ; $72b3: $20 $ff

	ld b, h                                          ; $72b5: $44
	sbc c                                            ; $72b6: $99
	sbc c                                            ; $72b7: $99
	ld d, l                                          ; $72b8: $55
	ld l, a                                          ; $72b9: $6f
	ei                                               ; $72ba: $fb
	sbc [hl]                                         ; $72bb: $9e
	inc sp                                           ; $72bc: $33
	cp a                                             ; $72bd: $bf
	ld [hl+], a                                      ; $72be: $22
	rst $38                                          ; $72bf: $ff

jr_064_72c0:
	ld [hl], a                                       ; $72c0: $77
	rst FarCall                                          ; $72c1: $f7
	ld a, a                                          ; $72c2: $7f
	cp $23                                           ; $72c3: $fe $23
	ld bc, $1180                                     ; $72c5: $01 $80 $11
	rst $38                                          ; $72c8: $ff
	ld de, $13ff                                     ; $72c9: $11 $ff $13
	cp $13                                           ; $72cc: $fe $13
	cp $33                                           ; $72ce: $fe $33
	xor $b7                                          ; $72d0: $ee $b7
	ld a, h                                          ; $72d2: $7c
	ld b, a                                          ; $72d3: $47
	db $fc                                           ; $72d4: $fc
	rst FarCall                                          ; $72d5: $f7
	ld c, h                                          ; $72d6: $4c
	nop                                              ; $72d7: $00
	rst $38                                          ; $72d8: $ff
	sbc $3d                                          ; $72d9: $de $3d
	and e                                            ; $72db: $a3
	ld [hl], d                                       ; $72dc: $72
	ld h, a                                          ; $72dd: $67
	xor $de                                          ; $72de: $ee $de
	ld a, $12                                        ; $72e0: $3e $12
	ld e, $3e                                        ; $72e2: $1e $3e
	inc c                                            ; $72e4: $0c
	nop                                              ; $72e5: $00
	cp a                                             ; $72e6: $bf
	add c                                            ; $72e7: $81
	or $82                                           ; $72e8: $f6 $82
	add b                                            ; $72ea: $80
	ldh [$c0], a                                     ; $72eb: $e0 $c0
	ldh a, [$e0]                                     ; $72ed: $f0 $e0
	ld a, b                                          ; $72ef: $78
	ldh a, [$7e]                                     ; $72f0: $f0 $7e
	db $fc                                           ; $72f2: $fc
	ld e, a                                          ; $72f3: $5f
	cp $df                                           ; $72f4: $fe $df
	ld a, a                                          ; $72f6: $7f
	jp hl                                            ; $72f7: $e9


	ld e, a                                          ; $72f8: $5f
	dec l                                            ; $72f9: $2d
	ld e, e                                          ; $72fa: $5b
	ld b, l                                          ; $72fb: $45
	dec de                                           ; $72fc: $1b
	dec b                                            ; $72fd: $05
	dec de                                           ; $72fe: $1b
	dec c                                            ; $72ff: $0d
	inc de                                           ; $7300: $13
	ld b, l                                          ; $7301: $45
	inc de                                           ; $7302: $13
	dec h                                            ; $7303: $25
	ld d, e                                          ; $7304: $53
	dec h                                            ; $7305: $25
	ld d, e                                          ; $7306: $53
	ld [hl], a                                       ; $7307: $77
	ret nz                                           ; $7308: $c0

	adc b                                            ; $7309: $88
	add hl, de                                       ; $730a: $19
	rst FarCall                                          ; $730b: $f7
	add hl, de                                       ; $730c: $19
	rst FarCall                                          ; $730d: $f7
	dec e                                            ; $730e: $1d
	di                                               ; $730f: $f3
	sbc a                                            ; $7310: $9f
	ld [hl], c                                       ; $7311: $71
	sbc h                                            ; $7312: $9c
	ld [hl], e                                       ; $7313: $73
	db $db                                           ; $7314: $db
	inc [hl]                                         ; $7315: $34
	rst FarCall                                          ; $7316: $f7
	jr jr_064_7390                                   ; $7317: $18 $77

	adc b                                            ; $7319: $88
	rlca                                             ; $731a: $07
	ld hl, sp+$77                                    ; $731b: $f8 $77
	adc b                                            ; $731d: $88
	ld c, e                                          ; $731e: $4b
	add b                                            ; $731f: $80
	or b                                             ; $7320: $b0
	cp [hl]                                          ; $7321: $be
	cp b                                             ; $7322: $b8
	ld a, h                                          ; $7323: $7c
	adc b                                            ; $7324: $88
	add e                                            ; $7325: $83
	rst $38                                          ; $7326: $ff
	adc h                                            ; $7327: $8c
	ld a, a                                          ; $7328: $7f
	adc $3b                                          ; $7329: $ce $3b
	rst JumpTable                                          ; $732b: $c7
	db $fd                                           ; $732c: $fd
	rla                                              ; $732d: $17
	db $fc                                           ; $732e: $fc
	ei                                               ; $732f: $fb
	ld e, $0f                                        ; $7330: $1e $0f
	cp $ff                                           ; $7332: $fe $ff
	inc bc                                           ; $7334: $03
	cp d                                             ; $7335: $ba
	ld a, l                                          ; $7336: $7d
	ld b, h                                          ; $7337: $44
	rst SubAFromBC                                          ; $7338: $e7
	adc $df                                          ; $7339: $ce $df
	ccf                                              ; $733b: $3f
	ld a, a                                          ; $733c: $7f
	ld h, $3c                                        ; $733d: $26 $3c
	ld a, h                                          ; $733f: $7c
	jr jr_064_7342                                   ; $7340: $18 $00

jr_064_7342:
	cp l                                             ; $7342: $bd
	ld bc, $03bf                                     ; $7343: $01 $bf $03
	inc bc                                           ; $7346: $03
	sub [hl]                                         ; $7347: $96
	ld bc, $0307                                     ; $7348: $01 $07 $03
	rrca                                             ; $734b: $0f
	rlca                                             ; $734c: $07
	rra                                              ; $734d: $1f
	rrca                                             ; $734e: $0f
	ld a, a                                          ; $734f: $7f
	ccf                                              ; $7350: $3f

jr_064_7351:
	sbc $ff                                          ; $7351: $de $ff
	sub b                                            ; $7353: $90
	ld sp, hl                                        ; $7354: $f9
	cp $c3                                           ; $7355: $fe $c3
	cp $0f                                           ; $7357: $fe $0f
	ld [hl], $33                                     ; $7359: $36 $33
	call nz, $8dc7                                   ; $735b: $c4 $c7 $8d
	rlca                                             ; $735e: $07
	db $fd                                           ; $735f: $fd
	rlca                                             ; $7360: $07
	db $fd                                           ; $7361: $fd
	ccf                                              ; $7362: $3f
	ccf                                              ; $7363: $3f
	ld h, b                                          ; $7364: $60
	sub a                                            ; $7365: $97
	cp $01                                           ; $7366: $fe $01
	rst SubAFromDE                                          ; $7368: $df
	inc a                                            ; $7369: $3c
	and a                                            ; $736a: $a7
	ld l, [hl]                                       ; $736b: $6e
	sbc $fe                                          ; $736c: $de $fe
	ld l, a                                          ; $736e: $6f
	ld h, b                                          ; $736f: $60

jr_064_7370:
	ld b, a                                          ; $7370: $47
	and b                                            ; $7371: $a0
	ld a, a                                          ; $7372: $7f
	ldh [c], a                                       ; $7373: $e2
	sbc c                                            ; $7374: $99
	ld a, [$cc3d]                                    ; $7375: $fa $3d $cc
	ld e, a                                          ; $7378: $5f
	cp a                                             ; $7379: $bf
	rst $38                                          ; $737a: $ff
	ld h, a                                          ; $737b: $67
	and b                                            ; $737c: $a0
	scf                                              ; $737d: $37
	ret nz                                           ; $737e: $c0

	sub [hl]                                         ; $737f: $96
	rst $38                                          ; $7380: $ff
	nop                                              ; $7381: $00
	rst $38                                          ; $7382: $ff
	inc e                                            ; $7383: $1c
	cp $3e                                           ; $7384: $fe $3e
	ld h, d                                          ; $7386: $62
	halt                                             ; $7387: $76
	ld e, $33                                        ; $7388: $1e $33
	ret nz                                           ; $738a: $c0

	ld a, e                                          ; $738b: $7b
	cp $97                                           ; $738c: $fe $97
	ld a, c                                          ; $738e: $79
	rst $38                                          ; $738f: $ff

jr_064_7390:
	db $fc                                           ; $7390: $fc
	ld h, $6e                                        ; $7391: $26 $6e
	ld a, h                                          ; $7393: $7c
	jr @+$3a                                         ; $7394: $18 $38

	rra                                              ; $7396: $1f
	ret nz                                           ; $7397: $c0

	sbc b                                            ; $7398: $98
	nop                                              ; $7399: $00
	cp $40                                           ; $739a: $fe $40
	ld l, [hl]                                       ; $739c: $6e
	ld l, $3e                                        ; $739d: $2e $3e
	inc a                                            ; $739f: $3c
	dec hl                                           ; $73a0: $2b
	ret nz                                           ; $73a1: $c0

	ld a, a                                          ; $73a2: $7f
	sbc $9a                                          ; $73a3: $de $9a
	add b                                            ; $73a5: $80
	ld e, [hl]                                       ; $73a6: $5e
	ld e, [hl]                                       ; $73a7: $5e
	ld a, h                                          ; $73a8: $7c
	inc a                                            ; $73a9: $3c
	ld [hl], a                                       ; $73aa: $77
	ret nz                                           ; $73ab: $c0

	sbc h                                            ; $73ac: $9c
	ld a, a                                          ; $73ad: $7f
	ld b, b                                          ; $73ae: $40
	jr nz, jr_064_7370                               ; $73af: $20 $bf

	nop                                              ; $73b1: $00
	jr nc, jr_064_7351                               ; $73b2: $30 $9d

	jr nz, jr_064_73e6                               ; $73b4: $20 $30

	cp [hl]                                          ; $73b6: $be
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	pop bc                                           ; $73b9: $c1

jr_064_73ba:
	sbc b                                            ; $73ba: $98
	add b                                            ; $73bb: $80
	rst FarCall                                          ; $73bc: $f7

Call_064_73bd:
	db $e3                                           ; $73bd: $e3
	rst $38                                          ; $73be: $ff
	ld sp, hl                                        ; $73bf: $f9
	di                                               ; $73c0: $f3
	ret nz                                           ; $73c1: $c0

	sbc $e0                                          ; $73c2: $de $e0
	sbc b                                            ; $73c4: $98
	jr nz, jr_064_73ba                               ; $73c5: $20 $f3

	inc de                                           ; $73c7: $13
	rst GetHLinHL                                          ; $73c8: $cf
	adc h                                            ; $73c9: $8c
	rst AddAOntoHL                                          ; $73ca: $ef
	db $ec                                           ; $73cb: $ec
	ld [hl], a                                       ; $73cc: $77
	ldh [$9d], a                                     ; $73cd: $e0 $9d
	jr c, jr_064_7401                                ; $73cf: $38 $30

	sbc $38                                          ; $73d1: $de $38
	dec de                                           ; $73d3: $1b
	ldh [$98], a                                     ; $73d4: $e0 $98
	ld a, b                                          ; $73d6: $78
	jr nc, jr_064_7451                               ; $73d7: $30 $78

	jr c, jr_064_7413                                ; $73d9: $38 $38

	db $10                                           ; $73db: $10
	db $10                                           ; $73dc: $10
	dec de                                           ; $73dd: $1b
	ldh [$9c], a                                     ; $73de: $e0 $9c
	ld a, h                                          ; $73e0: $7c
	jr c, jr_064_745f                                ; $73e1: $38 $7c

	ld [hl], e                                       ; $73e3: $73
	sbc $3f                                          ; $73e4: $de $3f

jr_064_73e6:
	ldh [rAUDTERM], a                                ; $73e6: $e0 $25
	ld bc, $1180                                     ; $73e8: $01 $80 $11
	rst $38                                          ; $73eb: $ff
	ld de, $13ff                                     ; $73ec: $11 $ff $13
	cp $13                                           ; $73ef: $fe $13
	cp $33                                           ; $73f1: $fe $33
	xor $b7                                          ; $73f3: $ee $b7
	ld a, h                                          ; $73f5: $7c
	ld b, a                                          ; $73f6: $47
	db $fc                                           ; $73f7: $fc
	rst FarCall                                          ; $73f8: $f7
	ld c, h                                          ; $73f9: $4c
	nop                                              ; $73fa: $00
	rst $38                                          ; $73fb: $ff
	or $3d                                           ; $73fc: $f6 $3d
	ld h, e                                          ; $73fe: $63
	ldh [c], a                                       ; $73ff: $e2
	add a                                            ; $7400: $87

jr_064_7401:
	ld l, [hl]                                       ; $7401: $6e
	sbc $1e                                          ; $7402: $de $1e
	ld [de], a                                       ; $7404: $12
	ld e, $3e                                        ; $7405: $1e $3e
	inc c                                            ; $7407: $0c
	nop                                              ; $7408: $00
	cp a                                             ; $7409: $bf
	add c                                            ; $740a: $81
	or $82                                           ; $740b: $f6 $82
	add b                                            ; $740d: $80
	ldh [$c0], a                                     ; $740e: $e0 $c0
	ldh a, [$e0]                                     ; $7410: $f0 $e0
	ld a, b                                          ; $7412: $78

jr_064_7413:
	ldh a, [$7e]                                     ; $7413: $f0 $7e
	db $fc                                           ; $7415: $fc
	ld e, a                                          ; $7416: $5f
	cp $df                                           ; $7417: $fe $df
	ld a, a                                          ; $7419: $7f
	jp hl                                            ; $741a: $e9


	ld e, a                                          ; $741b: $5f
	dec l                                            ; $741c: $2d
	ld e, e                                          ; $741d: $5b
	ld b, l                                          ; $741e: $45
	dec de                                           ; $741f: $1b
	dec b                                            ; $7420: $05
	dec de                                           ; $7421: $1b
	dec c                                            ; $7422: $0d
	inc de                                           ; $7423: $13
	ld b, l                                          ; $7424: $45
	inc de                                           ; $7425: $13
	dec h                                            ; $7426: $25
	ld d, e                                          ; $7427: $53
	dec h                                            ; $7428: $25
	ld d, e                                          ; $7429: $53
	ld [hl], a                                       ; $742a: $77
	ret nz                                           ; $742b: $c0

	adc b                                            ; $742c: $88
	add hl, de                                       ; $742d: $19
	rst FarCall                                          ; $742e: $f7
	add hl, de                                       ; $742f: $19
	rst FarCall                                          ; $7430: $f7
	dec e                                            ; $7431: $1d
	di                                               ; $7432: $f3
	sbc a                                            ; $7433: $9f
	ld [hl], c                                       ; $7434: $71
	sbc h                                            ; $7435: $9c
	ld [hl], e                                       ; $7436: $73
	db $db                                           ; $7437: $db
	inc [hl]                                         ; $7438: $34
	rst FarCall                                          ; $7439: $f7
	jr jr_064_74b3                                   ; $743a: $18 $77

	adc b                                            ; $743c: $88
	rlca                                             ; $743d: $07
	ld hl, sp+$77                                    ; $743e: $f8 $77
	adc b                                            ; $7440: $88
	ld c, e                                          ; $7441: $4b
	add b                                            ; $7442: $80
	add b                                            ; $7443: $80
	cp [hl]                                          ; $7444: $be
	and b                                            ; $7445: $a0
	jr nc, @-$76                                     ; $7446: $30 $88

	add e                                            ; $7448: $83
	rst $38                                          ; $7449: $ff
	adc h                                            ; $744a: $8c
	ld a, a                                          ; $744b: $7f
	adc $3b                                          ; $744c: $ce $3b
	rst JumpTable                                          ; $744e: $c7
	db $fd                                           ; $744f: $fd
	rla                                              ; $7450: $17

jr_064_7451:
	db $fc                                           ; $7451: $fc
	ei                                               ; $7452: $fb
	ld e, $0f                                        ; $7453: $1e $0f
	cp $ff                                           ; $7455: $fe $ff
	inc sp                                           ; $7457: $33
	ld c, d                                          ; $7458: $4a
	db $fd                                           ; $7459: $fd
	add $c7                                          ; $745a: $c6 $c7
	rst GetHLinHL                                          ; $745c: $cf
	ld e, a                                          ; $745d: $5f
	ccf                                              ; $745e: $3f

jr_064_745f:
	inc a                                            ; $745f: $3c
	ld h, $3c                                        ; $7460: $26 $3c
	ld a, h                                          ; $7462: $7c
	jr jr_064_7465                                   ; $7463: $18 $00

jr_064_7465:
	cp l                                             ; $7465: $bd
	ld bc, $03bf                                     ; $7466: $01 $bf $03
	inc bc                                           ; $7469: $03
	sub [hl]                                         ; $746a: $96
	ld bc, $0307                                     ; $746b: $01 $07 $03
	rrca                                             ; $746e: $0f
	rlca                                             ; $746f: $07
	rra                                              ; $7470: $1f
	rrca                                             ; $7471: $0f
	ld a, a                                          ; $7472: $7f
	ccf                                              ; $7473: $3f
	sbc $ff                                          ; $7474: $de $ff
	sub b                                            ; $7476: $90
	ld sp, hl                                        ; $7477: $f9
	cp $c3                                           ; $7478: $fe $c3
	cp $0f                                           ; $747a: $fe $0f
	ld [hl], $33                                     ; $747c: $36 $33
	call nz, $8dc7                                   ; $747e: $c4 $c7 $8d
	rlca                                             ; $7481: $07
	db $fd                                           ; $7482: $fd
	rlca                                             ; $7483: $07
	db $fd                                           ; $7484: $fd
	ccf                                              ; $7485: $3f
	ccf                                              ; $7486: $3f
	ld h, b                                          ; $7487: $60
	sbc d                                            ; $7488: $9a
	cp $1d                                           ; $7489: $fe $1d
	db $e3                                           ; $748b: $e3
	ld [hl], $e7                                     ; $748c: $36 $e7

jr_064_748e:
	ld [hl], e                                       ; $748e: $73
	ld h, b                                          ; $748f: $60
	sbc [hl]                                         ; $7490: $9e
	ld e, $7b                                        ; $7491: $1e $7b
	ld h, b                                          ; $7493: $60
	ld c, e                                          ; $7494: $4b
	and b                                            ; $7495: $a0
	sub [hl]                                         ; $7496: $96
	inc bc                                           ; $7497: $03
	cp $39                                           ; $7498: $fe $39
	adc $6d                                          ; $749a: $ce $6d
	adc $df                                          ; $749c: $ce $df
	ccf                                              ; $749e: $3f
	ccf                                              ; $749f: $3f
	ld h, a                                          ; $74a0: $67
	and b                                            ; $74a1: $a0
	dec sp                                           ; $74a2: $3b
	ret nz                                           ; $74a3: $c0

	sub a                                            ; $74a4: $97
	ld bc, $1cff                                     ; $74a5: $01 $ff $1c
	rst SubAFromBC                                          ; $74a8: $e7
	ld l, $de                                        ; $74a9: $2e $de
	ld a, [hl]                                       ; $74ab: $7e
	ld [hl-], a                                      ; $74ac: $32
	cpl                                              ; $74ad: $2f
	ret nz                                           ; $74ae: $c0

	sbc [hl]                                         ; $74af: $9e
	ld bc, $be7b                                     ; $74b0: $01 $7b $be

jr_064_74b3:
	sbc h                                            ; $74b3: $9c
	ld e, l                                          ; $74b4: $5d
	cp [hl]                                          ; $74b5: $be
	cp $13                                           ; $74b6: $fe $13
	ret nz                                           ; $74b8: $c0

	cp a                                             ; $74b9: $bf
	rst $38                                          ; $74ba: $ff
	adc $9a                                          ; $74bb: $ce $9a
	ld b, d                                          ; $74bd: $42
	ld a, $3e                                        ; $74be: $3e $3e
	ld e, $1c                                        ; $74c0: $1e $1c
	inc sp                                           ; $74c2: $33
	ret nz                                           ; $74c3: $c0

	ld a, e                                          ; $74c4: $7b
	cp $98                                           ; $74c5: $fe $98
	sbc [hl]                                         ; $74c7: $9e
	add d                                            ; $74c8: $82
	ld a, [hl]                                       ; $74c9: $7e
	ld a, [hl]                                       ; $74ca: $7e
	ld a, h                                          ; $74cb: $7c
	inc a                                            ; $74cc: $3c
	jr c, jr_064_748e                                ; $74cd: $38 $bf

	ld bc, $9778                                     ; $74cf: $01 $78 $97
	ld b, b                                          ; $74d2: $40
	jr nz, jr_064_74d5                               ; $74d3: $20 $00

jr_064_74d5:
	inc a                                            ; $74d5: $3c
	jr c, jr_064_7510                                ; $74d6: $38 $38

	stop                                             ; $74d8: $10 $00
	cp [hl]                                          ; $74da: $be
	stop                                             ; $74db: $10 $00
	pop bc                                           ; $74dd: $c1

jr_064_74de:
	sbc b                                            ; $74de: $98
	add b                                            ; $74df: $80
	rst FarCall                                          ; $74e0: $f7
	db $e3                                           ; $74e1: $e3
	rst $38                                          ; $74e2: $ff
	ld sp, hl                                        ; $74e3: $f9
	di                                               ; $74e4: $f3
	ret nz                                           ; $74e5: $c0

	sbc $e0                                          ; $74e6: $de $e0
	sbc b                                            ; $74e8: $98
	jr nz, jr_064_74de                               ; $74e9: $20 $f3

	inc de                                           ; $74eb: $13
	rst GetHLinHL                                          ; $74ec: $cf
	adc h                                            ; $74ed: $8c
	rst AddAOntoHL                                          ; $74ee: $ef
	db $ec                                           ; $74ef: $ec
	ld l, a                                          ; $74f0: $6f
	ldh [$9d], a                                     ; $74f1: $e0 $9d
	inc a                                            ; $74f3: $3c
	jr z, @-$20                                      ; $74f4: $28 $de

	db $10                                           ; $74f6: $10
	inc de                                           ; $74f7: $13
	ldh [$9c], a                                     ; $74f8: $e0 $9c
	inc e                                            ; $74fa: $1c
	ld [$7b18], sp                                   ; $74fb: $08 $18 $7b
	rst SubAFromDE                                          ; $74fe: $df
	dec hl                                           ; $74ff: $2b
	ldh [$df], a                                     ; $7500: $e0 $df
	inc a                                            ; $7502: $3c
	sbc c                                            ; $7503: $99
	inc h                                            ; $7504: $24
	inc c                                            ; $7505: $0c
	inc b                                            ; $7506: $04
	inc e                                            ; $7507: $1c
	jr @+$1a                                         ; $7508: $18 $18

	dec sp                                           ; $750a: $3b
	ldh [rAUD4GO], a                                 ; $750b: $e0 $23
	ld bc, $1180                                     ; $750d: $01 $80 $11

jr_064_7510:
	rst $38                                          ; $7510: $ff
	ld de, $13ff                                     ; $7511: $11 $ff $13
	cp $13                                           ; $7514: $fe $13
	cp $33                                           ; $7516: $fe $33
	xor $b7                                          ; $7518: $ee $b7
	ld a, h                                          ; $751a: $7c
	ld b, a                                          ; $751b: $47
	db $fc                                           ; $751c: $fc
	rst FarCall                                          ; $751d: $f7
	ld c, h                                          ; $751e: $4c
	nop                                              ; $751f: $00
	rst $38                                          ; $7520: $ff
	sbc $3d                                          ; $7521: $de $3d
	and e                                            ; $7523: $a3
	ld [hl], d                                       ; $7524: $72
	ld b, a                                          ; $7525: $47
	xor $de                                          ; $7526: $ee $de
	ld e, $12                                        ; $7528: $1e $12
	ld e, $3e                                        ; $752a: $1e $3e
	inc c                                            ; $752c: $0c
	nop                                              ; $752d: $00
	cp a                                             ; $752e: $bf
	add c                                            ; $752f: $81
	or $82                                           ; $7530: $f6 $82
	add b                                            ; $7532: $80
	ldh [$c0], a                                     ; $7533: $e0 $c0
	ldh a, [$e0]                                     ; $7535: $f0 $e0
	ld a, b                                          ; $7537: $78
	ldh a, [$7e]                                     ; $7538: $f0 $7e
	db $fc                                           ; $753a: $fc
	ld e, a                                          ; $753b: $5f
	cp $df                                           ; $753c: $fe $df
	ld a, a                                          ; $753e: $7f
	jp hl                                            ; $753f: $e9


	ld e, a                                          ; $7540: $5f
	dec l                                            ; $7541: $2d
	ld e, e                                          ; $7542: $5b
	ld b, l                                          ; $7543: $45
	dec de                                           ; $7544: $1b
	dec b                                            ; $7545: $05
	dec de                                           ; $7546: $1b
	dec c                                            ; $7547: $0d
	inc de                                           ; $7548: $13
	ld b, l                                          ; $7549: $45
	inc de                                           ; $754a: $13
	dec h                                            ; $754b: $25
	ld d, e                                          ; $754c: $53
	dec h                                            ; $754d: $25
	ld d, e                                          ; $754e: $53
	ld [hl], a                                       ; $754f: $77
	ret nz                                           ; $7550: $c0

	adc b                                            ; $7551: $88
	add hl, de                                       ; $7552: $19
	rst FarCall                                          ; $7553: $f7
	add hl, de                                       ; $7554: $19
	rst FarCall                                          ; $7555: $f7
	dec e                                            ; $7556: $1d
	di                                               ; $7557: $f3
	sbc a                                            ; $7558: $9f
	ld [hl], c                                       ; $7559: $71
	sbc h                                            ; $755a: $9c
	ld [hl], e                                       ; $755b: $73
	db $db                                           ; $755c: $db
	inc [hl]                                         ; $755d: $34
	rst FarCall                                          ; $755e: $f7
	jr jr_064_75d8                                   ; $755f: $18 $77

	adc b                                            ; $7561: $88
	rlca                                             ; $7562: $07
	ld hl, sp+$77                                    ; $7563: $f8 $77
	adc b                                            ; $7565: $88
	ld c, e                                          ; $7566: $4b
	add b                                            ; $7567: $80
	add b                                            ; $7568: $80
	cp [hl]                                          ; $7569: $be
	and b                                            ; $756a: $a0
	jr nc, @-$76                                     ; $756b: $30 $88

	add e                                            ; $756d: $83
	rst $38                                          ; $756e: $ff
	adc h                                            ; $756f: $8c
	ld a, a                                          ; $7570: $7f
	adc $3b                                          ; $7571: $ce $3b
	rst JumpTable                                          ; $7573: $c7
	db $fd                                           ; $7574: $fd
	rla                                              ; $7575: $17
	db $fc                                           ; $7576: $fc
	ei                                               ; $7577: $fb
	ld e, $0f                                        ; $7578: $1e $0f
	cp $ff                                           ; $757a: $fe $ff
	inc bc                                           ; $757c: $03
	cp d                                             ; $757d: $ba
	ld a, l                                          ; $757e: $7d
	ld b, h                                          ; $757f: $44
	rst SubAFromBC                                          ; $7580: $e7
	adc [hl]                                         ; $7581: $8e
	rst SubAFromDE                                          ; $7582: $df
	ccf                                              ; $7583: $3f
	ccf                                              ; $7584: $3f
	ld h, $3c                                        ; $7585: $26 $3c
	ld a, h                                          ; $7587: $7c
	jr jr_064_758a                                   ; $7588: $18 $00

jr_064_758a:
	cp l                                             ; $758a: $bd
	ld bc, $03bf                                     ; $758b: $01 $bf $03
	inc bc                                           ; $758e: $03
	sub [hl]                                         ; $758f: $96
	ld bc, $0307                                     ; $7590: $01 $07 $03
	rrca                                             ; $7593: $0f
	rlca                                             ; $7594: $07
	rra                                              ; $7595: $1f
	rrca                                             ; $7596: $0f
	ld a, a                                          ; $7597: $7f
	ccf                                              ; $7598: $3f
	sbc $ff                                          ; $7599: $de $ff
	sub b                                            ; $759b: $90
	ld sp, hl                                        ; $759c: $f9
	cp $c3                                           ; $759d: $fe $c3
	cp $0f                                           ; $759f: $fe $0f
	ld [hl], $33                                     ; $75a1: $36 $33
	call nz, $8dc7                                   ; $75a3: $c4 $c7 $8d
	rlca                                             ; $75a6: $07
	db $fd                                           ; $75a7: $fd
	rlca                                             ; $75a8: $07
	db $fd                                           ; $75a9: $fd
	ccf                                              ; $75aa: $3f
	ccf                                              ; $75ab: $3f
	ld h, b                                          ; $75ac: $60
	sub h                                            ; $75ad: $94
	cp $01                                           ; $75ae: $fe $01
	rst $38                                          ; $75b0: $ff
	inc e                                            ; $75b1: $1c
	rst SubAFromBC                                          ; $75b2: $e7
	ld l, $de                                        ; $75b3: $2e $de
	ld a, [hl]                                       ; $75b5: $7e
	ld [hl-], a                                      ; $75b6: $32
	ld e, $1e                                        ; $75b7: $1e $1e

jr_064_75b9:
	ld a, e                                          ; $75b9: $7b
	ld h, b                                          ; $75ba: $60
	ld b, a                                          ; $75bb: $47
	and b                                            ; $75bc: $a0
	ld a, a                                          ; $75bd: $7f
	ldh [c], a                                       ; $75be: $e2
	sbc c                                            ; $75bf: $99
	cp $39                                           ; $75c0: $fe $39
	adc $5d                                          ; $75c2: $ce $5d
	cp a                                             ; $75c4: $bf
	rst $38                                          ; $75c5: $ff
	ld h, a                                          ; $75c6: $67
	and b                                            ; $75c7: $a0
	inc sp                                           ; $75c8: $33
	ret nz                                           ; $75c9: $c0

	ld a, a                                          ; $75ca: $7f
	ei                                               ; $75cb: $fb
	sbc d                                            ; $75cc: $9a
	inc e                                            ; $75cd: $1c
	cp $3e                                           ; $75ce: $fe $3e
	ld d, d                                          ; $75d0: $52
	halt                                             ; $75d1: $76
	dec hl                                           ; $75d2: $2b
	ret nz                                           ; $75d3: $c0

	ld a, a                                          ; $75d4: $7f
	cp $97                                           ; $75d5: $fe $97
	dec a                                            ; $75d7: $3d

jr_064_75d8:
	cp $7e                                           ; $75d8: $fe $7e
	and [hl]                                         ; $75da: $a6
	xor $5c                                          ; $75db: $ee $5c
	jr @+$3a                                         ; $75dd: $18 $38

	rra                                              ; $75df: $1f
	ret nz                                           ; $75e0: $c0

	sbc b                                            ; $75e1: $98
	nop                                              ; $75e2: $00
	cp [hl]                                          ; $75e3: $be
	ld [bc], a                                       ; $75e4: $02
	ld a, [hl]                                       ; $75e5: $7e
	ld a, h                                          ; $75e6: $7c
	ld a, $3c                                        ; $75e7: $3e $3c
	dec hl                                           ; $75e9: $2b
	ret nz                                           ; $75ea: $c0

	sbc b                                            ; $75eb: $98
	ld bc, $003e                                     ; $75ec: $01 $3e $00
	cp $fe                                           ; $75ef: $fe $fe
	ld a, h                                          ; $75f1: $7c
	ld a, h                                          ; $75f2: $7c
	ld [hl], a                                       ; $75f3: $77
	ret nz                                           ; $75f4: $c0

	sbc h                                            ; $75f5: $9c
	ld a, b                                          ; $75f6: $78
	ld b, b                                          ; $75f7: $40
	jr nz, jr_064_75b9                               ; $75f8: $20 $bf

	inc c                                            ; $75fa: $0c
	inc a                                            ; $75fb: $3c
	sbc l                                            ; $75fc: $9d
	jr z, jr_064_75ff                                ; $75fd: $28 $00

jr_064_75ff:
	cp [hl]                                          ; $75ff: $be
	stop                                             ; $7600: $10 $00
	pop bc                                           ; $7602: $c1

jr_064_7603:
	sbc b                                            ; $7603: $98
	add b                                            ; $7604: $80
	rst FarCall                                          ; $7605: $f7
	db $e3                                           ; $7606: $e3
	rst $38                                          ; $7607: $ff
	ld sp, hl                                        ; $7608: $f9
	di                                               ; $7609: $f3
	ret nz                                           ; $760a: $c0

	sbc $e0                                          ; $760b: $de $e0
	sbc b                                            ; $760d: $98
	jr nz, jr_064_7603                               ; $760e: $20 $f3

	inc de                                           ; $7610: $13
	rst GetHLinHL                                          ; $7611: $cf
	adc h                                            ; $7612: $8c
	rst AddAOntoHL                                          ; $7613: $ef
	db $ec                                           ; $7614: $ec
	ld [hl], a                                       ; $7615: $77
	ldh [$9c], a                                     ; $7616: $e0 $9c

jr_064_7618:
	inc l                                            ; $7618: $2c
	jr z, jr_064_7653                                ; $7619: $28 $38

	ld a, e                                          ; $761b: $7b
	db $e3                                           ; $761c: $e3
	rra                                              ; $761d: $1f
	ldh [$98], a                                     ; $761e: $e0 $98
	ld a, h                                          ; $7620: $7c
	ld e, b                                          ; $7621: $58
	ld c, b                                          ; $7622: $48
	ld c, b                                          ; $7623: $48
	jr c, jr_064_765e                                ; $7624: $38 $38

	jr nc, jr_064_763b                               ; $7626: $30 $13

	ldh [$df], a                                     ; $7628: $e0 $df
	ld [$30df], sp                                   ; $762a: $08 $df $30
	scf                                              ; $762d: $37
	ldh [rAUD3HIGH], a                               ; $762e: $e0 $1e
	ld bc, $1180                                     ; $7630: $01 $80 $11
	rst $38                                          ; $7633: $ff
	ld de, $13ff                                     ; $7634: $11 $ff $13
	cp $13                                           ; $7637: $fe $13
	cp $33                                           ; $7639: $fe $33

jr_064_763b:
	xor $b7                                          ; $763b: $ee $b7
	ld a, h                                          ; $763d: $7c
	ld b, a                                          ; $763e: $47
	db $fc                                           ; $763f: $fc
	rst FarCall                                          ; $7640: $f7
	ld c, h                                          ; $7641: $4c
	nop                                              ; $7642: $00
	rst $38                                          ; $7643: $ff
	sbc $3d                                          ; $7644: $de $3d
	and e                                            ; $7646: $a3
	ld h, [hl]                                       ; $7647: $66
	ld e, a                                          ; $7648: $5f
	cp $d6                                           ; $7649: $fe $d6
	ld e, $12                                        ; $764b: $1e $12
	ld e, $3e                                        ; $764d: $1e $3e
	inc c                                            ; $764f: $0c
	nop                                              ; $7650: $00
	cp a                                             ; $7651: $bf
	add c                                            ; $7652: $81

jr_064_7653:
	or $82                                           ; $7653: $f6 $82
	add b                                            ; $7655: $80
	ldh [$c0], a                                     ; $7656: $e0 $c0
	ldh a, [$e0]                                     ; $7658: $f0 $e0
	ld a, b                                          ; $765a: $78
	ldh a, [$7e]                                     ; $765b: $f0 $7e
	db $fc                                           ; $765d: $fc

jr_064_765e:
	ld e, a                                          ; $765e: $5f
	cp $df                                           ; $765f: $fe $df
	ld a, a                                          ; $7661: $7f
	jp hl                                            ; $7662: $e9


	ld e, a                                          ; $7663: $5f
	dec l                                            ; $7664: $2d
	ld e, e                                          ; $7665: $5b
	ld b, l                                          ; $7666: $45
	dec de                                           ; $7667: $1b
	dec b                                            ; $7668: $05
	dec de                                           ; $7669: $1b
	dec c                                            ; $766a: $0d
	inc de                                           ; $766b: $13
	ld b, l                                          ; $766c: $45
	inc de                                           ; $766d: $13
	dec h                                            ; $766e: $25
	ld d, e                                          ; $766f: $53
	dec h                                            ; $7670: $25
	ld d, e                                          ; $7671: $53
	ld [hl], a                                       ; $7672: $77
	ret nz                                           ; $7673: $c0

	adc b                                            ; $7674: $88
	add hl, de                                       ; $7675: $19
	rst FarCall                                          ; $7676: $f7
	add hl, de                                       ; $7677: $19
	rst FarCall                                          ; $7678: $f7
	dec e                                            ; $7679: $1d
	di                                               ; $767a: $f3
	sbc a                                            ; $767b: $9f
	ld [hl], c                                       ; $767c: $71
	sbc h                                            ; $767d: $9c
	ld [hl], e                                       ; $767e: $73
	db $db                                           ; $767f: $db
	inc [hl]                                         ; $7680: $34
	rst FarCall                                          ; $7681: $f7
	jr jr_064_76fb                                   ; $7682: $18 $77

	adc b                                            ; $7684: $88
	ld b, $f9                                        ; $7685: $06 $f9
	ld [hl], a                                       ; $7687: $77
	adc b                                            ; $7688: $88
	ld c, e                                          ; $7689: $4b
	add b                                            ; $768a: $80
	add b                                            ; $768b: $80
	cp [hl]                                          ; $768c: $be
	and b                                            ; $768d: $a0
	jr nc, jr_064_7618                               ; $768e: $30 $88

	add e                                            ; $7690: $83
	rst $38                                          ; $7691: $ff
	adc h                                            ; $7692: $8c
	ld a, a                                          ; $7693: $7f
	adc $3b                                          ; $7694: $ce $3b
	rst JumpTable                                          ; $7696: $c7
	db $fd                                           ; $7697: $fd
	rla                                              ; $7698: $17
	db $fc                                           ; $7699: $fc
	ei                                               ; $769a: $fb
	ld e, $0f                                        ; $769b: $1e $0f
	cp $ff                                           ; $769d: $fe $ff
	inc bc                                           ; $769f: $03
	cp [hl]                                          ; $76a0: $be
	ld a, c                                          ; $76a1: $79
	ld b, [hl]                                       ; $76a2: $46
	call $ffbe                                       ; $76a3: $cd $be $ff
	cpl                                              ; $76a6: $2f
	ccf                                              ; $76a7: $3f
	ld h, $3c                                        ; $76a8: $26 $3c
	ld a, h                                          ; $76aa: $7c
	jr jr_064_76ad                                   ; $76ab: $18 $00

jr_064_76ad:
	cp l                                             ; $76ad: $bd
	ld bc, $03bf                                     ; $76ae: $01 $bf $03
	inc bc                                           ; $76b1: $03
	sub [hl]                                         ; $76b2: $96
	ld bc, $0307                                     ; $76b3: $01 $07 $03
	rrca                                             ; $76b6: $0f
	rlca                                             ; $76b7: $07
	rra                                              ; $76b8: $1f
	rrca                                             ; $76b9: $0f
	ld a, a                                          ; $76ba: $7f
	ccf                                              ; $76bb: $3f

jr_064_76bc:
	sbc $ff                                          ; $76bc: $de $ff
	sub b                                            ; $76be: $90
	ld sp, hl                                        ; $76bf: $f9
	cp $c3                                           ; $76c0: $fe $c3
	cp $0f                                           ; $76c2: $fe $0f
	ld [hl], $33                                     ; $76c4: $36 $33
	call nz, $8dc7                                   ; $76c6: $c4 $c7 $8d
	rlca                                             ; $76c9: $07
	db $fd                                           ; $76ca: $fd
	rlca                                             ; $76cb: $07
	db $fd                                           ; $76cc: $fd
	ccf                                              ; $76cd: $3f
	ccf                                              ; $76ce: $3f
	ld h, b                                          ; $76cf: $60
	sub a                                            ; $76d0: $97
	cp $01                                           ; $76d1: $fe $01
	cp a                                             ; $76d3: $bf
	ld a, h                                          ; $76d4: $7c
	ld b, a                                          ; $76d5: $47
	xor $de                                          ; $76d6: $ee $de
	sbc $6f                                          ; $76d8: $de $6f
	ld h, b                                          ; $76da: $60

jr_064_76db:
	ld b, a                                          ; $76db: $47
	and b                                            ; $76dc: $a0
	ld a, a                                          ; $76dd: $7f
	ldh [c], a                                       ; $76de: $e2
	sbc c                                            ; $76df: $99
	ld a, [$8e7d]                                    ; $76e0: $fa $7d $8e
	rst SubAFromDE                                          ; $76e3: $df
	cp a                                             ; $76e4: $bf
	cp a                                             ; $76e5: $bf
	ld h, a                                          ; $76e6: $67
	and b                                            ; $76e7: $a0
	scf                                              ; $76e8: $37
	ret nz                                           ; $76e9: $c0

	sub [hl]                                         ; $76ea: $96
	rst $38                                          ; $76eb: $ff
	nop                                              ; $76ec: $00
	rst $38                                          ; $76ed: $ff
	inc a                                            ; $76ee: $3c
	and $76                                          ; $76ef: $e6 $76
	ld [de], a                                       ; $76f1: $12
	ld a, $1e                                        ; $76f2: $3e $1e
	inc sp                                           ; $76f4: $33
	ret nz                                           ; $76f5: $c0

	ld a, e                                          ; $76f6: $7b
	cp $97                                           ; $76f7: $fe $97
	ld a, l                                          ; $76f9: $7d
	rst GetHLinHL                                          ; $76fa: $cf

jr_064_76fb:
	rst AddAOntoHL                                          ; $76fb: $ef
	ld h, $7c                                        ; $76fc: $26 $7c
	ld e, h                                          ; $76fe: $5c
	jr @+$3a                                         ; $76ff: $18 $38

	rra                                              ; $7701: $1f
	ret nz                                           ; $7702: $c0

	sbc b                                            ; $7703: $98
	nop                                              ; $7704: $00
	sbc $42                                          ; $7705: $de $42
	ld a, $3e                                        ; $7707: $3e $3e
	ld e, $1c                                        ; $7709: $1e $1c
	dec hl                                           ; $770b: $2b
	ret nz                                           ; $770c: $c0

	ld a, a                                          ; $770d: $7f
	ld e, [hl]                                       ; $770e: $5e
	sbc d                                            ; $770f: $9a
	add e                                            ; $7710: $83
	ld a, [hl]                                       ; $7711: $7e
	ld a, h                                          ; $7712: $7c
	ld a, h                                          ; $7713: $7c
	inc a                                            ; $7714: $3c
	ld [hl], a                                       ; $7715: $77
	ret nz                                           ; $7716: $c0

	sbc h                                            ; $7717: $9c
	ld a, b                                          ; $7718: $78
	ld b, b                                          ; $7719: $40
	jr nz, jr_064_76db                               ; $771a: $20 $bf

	nop                                              ; $771c: $00
	jr c, jr_064_76bc                                ; $771d: $38 $9d

Call_064_771f:
	jr z, jr_064_7721                                ; $771f: $28 $00

jr_064_7721:
	cp [hl]                                          ; $7721: $be
	jr jr_064_7724                                   ; $7722: $18 $00

jr_064_7724:
	pop bc                                           ; $7724: $c1

jr_064_7725:
	sbc b                                            ; $7725: $98
	add b                                            ; $7726: $80
	rst FarCall                                          ; $7727: $f7
	db $e3                                           ; $7728: $e3
	rst $38                                          ; $7729: $ff
	ld sp, hl                                        ; $772a: $f9
	di                                               ; $772b: $f3
	ret nz                                           ; $772c: $c0

	sbc $e0                                          ; $772d: $de $e0
	sbc b                                            ; $772f: $98
	jr nz, jr_064_7725                               ; $7730: $20 $f3

	inc de                                           ; $7732: $13
	rst GetHLinHL                                          ; $7733: $cf
	adc h                                            ; $7734: $8c
	rst AddAOntoHL                                          ; $7735: $ef

jr_064_7736:
	db $ec                                           ; $7736: $ec
	ld [hl], a                                       ; $7737: $77
	ldh [$df], a                                     ; $7738: $e0 $df
	jr nc, jr_064_77bb                               ; $773a: $30 $7f

	push de                                          ; $773c: $d5
	sbc [hl]                                         ; $773d: $9e
	ld [$e00b], sp                                   ; $773e: $08 $0b $e0
	ld a, a                                          ; $7741: $7f
	cp $7e                                           ; $7742: $fe $7e
	or h                                             ; $7744: $b4
	rrca                                             ; $7745: $0f
	ldh [$9c], a                                     ; $7746: $e0 $9c
	jr c, @+$12                                      ; $7748: $38 $10

	jr jr_064_7787                                   ; $774a: $18 $3b

	ldh [rAUDENA], a                                 ; $774c: $e0 $26
	ld bc, $1180                                     ; $774e: $01 $80 $11
	rst $38                                          ; $7751: $ff
	ld de, $13ff                                     ; $7752: $11 $ff $13
	cp $13                                           ; $7755: $fe $13
	cp $33                                           ; $7757: $fe $33
	xor $b7                                          ; $7759: $ee $b7
	ld l, h                                          ; $775b: $6c
	ld d, a                                          ; $775c: $57
	db $fc                                           ; $775d: $fc
	rst SubAFromBC                                          ; $775e: $e7
	ld e, h                                          ; $775f: $5c
	nop                                              ; $7760: $00
	rst $38                                          ; $7761: $ff
	sbc $3d                                          ; $7762: $de $3d
	and e                                            ; $7764: $a3
	ld h, [hl]                                       ; $7765: $66
	ld e, a                                          ; $7766: $5f
	cp $d6                                           ; $7767: $fe $d6
	ld e, $12                                        ; $7769: $1e $12
	ld e, $3e                                        ; $776b: $1e $3e
	inc c                                            ; $776d: $0c
	nop                                              ; $776e: $00
	cp a                                             ; $776f: $bf
	add c                                            ; $7770: $81
	or $82                                           ; $7771: $f6 $82
	add b                                            ; $7773: $80
	ldh [$c0], a                                     ; $7774: $e0 $c0
	ldh a, [$e0]                                     ; $7776: $f0 $e0
	ld a, b                                          ; $7778: $78
	ldh a, [$7e]                                     ; $7779: $f0 $7e
	db $fc                                           ; $777b: $fc
	ld e, a                                          ; $777c: $5f
	cp $df                                           ; $777d: $fe $df
	ld a, a                                          ; $777f: $7f
	jp hl                                            ; $7780: $e9


	ld e, a                                          ; $7781: $5f
	dec l                                            ; $7782: $2d
	ld e, e                                          ; $7783: $5b
	ld b, l                                          ; $7784: $45
	dec de                                           ; $7785: $1b
	dec b                                            ; $7786: $05

jr_064_7787:
	dec de                                           ; $7787: $1b
	dec c                                            ; $7788: $0d
	inc de                                           ; $7789: $13
	ld b, l                                          ; $778a: $45
	inc de                                           ; $778b: $13
	dec h                                            ; $778c: $25
	ld d, e                                          ; $778d: $53
	dec h                                            ; $778e: $25
	ld d, e                                          ; $778f: $53
	ld [hl], a                                       ; $7790: $77
	ret nz                                           ; $7791: $c0

	adc b                                            ; $7792: $88
	add hl, de                                       ; $7793: $19
	rst FarCall                                          ; $7794: $f7
	add hl, de                                       ; $7795: $19
	rst FarCall                                          ; $7796: $f7
	dec e                                            ; $7797: $1d
	di                                               ; $7798: $f3
	sbc a                                            ; $7799: $9f
	ld [hl], c                                       ; $779a: $71
	sbc h                                            ; $779b: $9c
	ld [hl], e                                       ; $779c: $73
	db $db                                           ; $779d: $db
	inc [hl]                                         ; $779e: $34
	rst FarCall                                          ; $779f: $f7
	jr jr_064_7819                                   ; $77a0: $18 $77

	adc b                                            ; $77a2: $88
	rlca                                             ; $77a3: $07
	ld hl, sp+$77                                    ; $77a4: $f8 $77
	adc b                                            ; $77a6: $88
	ld c, e                                          ; $77a7: $4b
	add b                                            ; $77a8: $80
	add b                                            ; $77a9: $80
	cp [hl]                                          ; $77aa: $be
	and b                                            ; $77ab: $a0
	jr nc, jr_064_7736                               ; $77ac: $30 $88

	add e                                            ; $77ae: $83
	rst $38                                          ; $77af: $ff
	adc h                                            ; $77b0: $8c
	ld a, a                                          ; $77b1: $7f
	adc $3b                                          ; $77b2: $ce $3b
	rst JumpTable                                          ; $77b4: $c7
	ld a, l                                          ; $77b5: $7d
	sub a                                            ; $77b6: $97
	db $fc                                           ; $77b7: $fc
	dec sp                                           ; $77b8: $3b
	sbc $0f                                          ; $77b9: $de $0f

jr_064_77bb:
	cp $ff                                           ; $77bb: $fe $ff
	inc bc                                           ; $77bd: $03
	cp [hl]                                          ; $77be: $be
	ld a, c                                          ; $77bf: $79
	ld b, [hl]                                       ; $77c0: $46
	call $ffbe                                       ; $77c1: $cd $be $ff
	cpl                                              ; $77c4: $2f
	ccf                                              ; $77c5: $3f
	ld h, $3c                                        ; $77c6: $26 $3c
	ld a, h                                          ; $77c8: $7c
	jr jr_064_77cb                                   ; $77c9: $18 $00

jr_064_77cb:
	cp l                                             ; $77cb: $bd
	ld bc, $03bf                                     ; $77cc: $01 $bf $03
	inc bc                                           ; $77cf: $03
	sub [hl]                                         ; $77d0: $96
	ld bc, $0307                                     ; $77d1: $01 $07 $03
	rrca                                             ; $77d4: $0f
	rlca                                             ; $77d5: $07
	rra                                              ; $77d6: $1f
	rrca                                             ; $77d7: $0f
	ld a, a                                          ; $77d8: $7f
	ccf                                              ; $77d9: $3f
	sbc $ff                                          ; $77da: $de $ff
	sub b                                            ; $77dc: $90
	ld sp, hl                                        ; $77dd: $f9
	cp $c3                                           ; $77de: $fe $c3
	cp $0f                                           ; $77e0: $fe $0f
	ld [hl], $33                                     ; $77e2: $36 $33
	call nz, $8dc7                                   ; $77e4: $c4 $c7 $8d
	rlca                                             ; $77e7: $07
	db $fd                                           ; $77e8: $fd
	rlca                                             ; $77e9: $07
	db $fd                                           ; $77ea: $fd
	ccf                                              ; $77eb: $3f
	ccf                                              ; $77ec: $3f
	ld h, b                                          ; $77ed: $60
	sub a                                            ; $77ee: $97
	cp $01                                           ; $77ef: $fe $01
	rst SubAFromDE                                          ; $77f1: $df
	inc a                                            ; $77f2: $3c
	and a                                            ; $77f3: $a7
	ld l, [hl]                                       ; $77f4: $6e
	sbc $fe                                          ; $77f5: $de $fe
	ld l, a                                          ; $77f7: $6f
	ld h, b                                          ; $77f8: $60
	ld b, a                                          ; $77f9: $47
	and b                                            ; $77fa: $a0
	ld a, a                                          ; $77fb: $7f

jr_064_77fc:
	ldh [c], a                                       ; $77fc: $e2
	ld a, a                                          ; $77fd: $7f
	sbc [hl]                                         ; $77fe: $9e

Jump_064_77ff:
	sbc e                                            ; $77ff: $9b
	ld c, [hl]                                       ; $7800: $4e
	db $dd                                           ; $7801: $dd
	cp a                                             ; $7802: $bf
	rst $38                                          ; $7803: $ff
	ld h, a                                          ; $7804: $67
	and b                                            ; $7805: $a0
	scf                                              ; $7806: $37
	ret nz                                           ; $7807: $c0

	sub [hl]                                         ; $7808: $96
	rst $38                                          ; $7809: $ff
	nop                                              ; $780a: $00
	rst SubAFromDE                                          ; $780b: $df
	inc a                                            ; $780c: $3c
	and [hl]                                         ; $780d: $a6
	halt                                             ; $780e: $76
	ldh a, [c]                                       ; $780f: $f2
	sbc $1e                                          ; $7810: $de $1e
	inc sp                                           ; $7812: $33
	ret nz                                           ; $7813: $c0

	ld a, a                                          ; $7814: $7f
	cp $96                                           ; $7815: $fe $96
	cp d                                             ; $7817: $ba
	ld a, l                                          ; $7818: $7d

jr_064_7819:
	ld c, a                                          ; $7819: $4f
	rst AddAOntoHL                                          ; $781a: $ef
	and [hl]                                         ; $781b: $a6
	db $fc                                           ; $781c: $fc
	ld e, h                                          ; $781d: $5c
	jr jr_064_7858                                   ; $781e: $18 $38

	inc hl                                           ; $7820: $23
	ret nz                                           ; $7821: $c0

	ld a, a                                          ; $7822: $7f
	cp $99                                           ; $7823: $fe $99
	cp [hl]                                          ; $7825: $be
	ld [bc], a                                       ; $7826: $02
	cp $7e                                           ; $7827: $fe $7e
	ld a, $3c                                        ; $7829: $3e $3c
	cpl                                              ; $782b: $2f
	ret nz                                           ; $782c: $c0

	ld a, a                                          ; $782d: $7f
	cp $99                                           ; $782e: $fe $99
	cp a                                             ; $7830: $bf
	add e                                            ; $7831: $83
	cp $fc                                           ; $7832: $fe $fc
	ld a, h                                          ; $7834: $7c
	inc a                                            ; $7835: $3c
	ld [hl], a                                       ; $7836: $77
	ret nz                                           ; $7837: $c0

	sbc h                                            ; $7838: $9c
	ld a, b                                          ; $7839: $78
	ld b, b                                          ; $783a: $40
	jr nz, jr_064_77fc                               ; $783b: $20 $bf

	nop                                              ; $783d: $00
	inc a                                            ; $783e: $3c

Jump_064_783f:
	sbc l                                            ; $783f: $9d
	jr z, jr_064_784e                                ; $7840: $28 $0c

	cp [hl]                                          ; $7842: $be
	stop                                             ; $7843: $10 $00
	pop bc                                           ; $7845: $c1

jr_064_7846:
	sbc b                                            ; $7846: $98
	add b                                            ; $7847: $80
	rst FarCall                                          ; $7848: $f7
	db $e3                                           ; $7849: $e3
	rst $38                                          ; $784a: $ff
	ld sp, hl                                        ; $784b: $f9
	di                                               ; $784c: $f3
	ret nz                                           ; $784d: $c0

jr_064_784e:
	sbc $e0                                          ; $784e: $de $e0
	sbc b                                            ; $7850: $98
	jr nz, jr_064_7846                               ; $7851: $20 $f3

	inc de                                           ; $7853: $13
	rst GetHLinHL                                          ; $7854: $cf
	adc h                                            ; $7855: $8c
	rst AddAOntoHL                                          ; $7856: $ef
	db $ec                                           ; $7857: $ec

jr_064_7858:
	ld [hl], a                                       ; $7858: $77
	ldh [$9d], a                                     ; $7859: $e0 $9d
	jr c, jr_064_788d                                ; $785b: $38 $30

	rlca                                             ; $785d: $07
	ldh [$9b], a                                     ; $785e: $e0 $9b
	inc l                                            ; $7860: $2c
	jr z, jr_064_786f                                ; $7861: $28 $0c

	ld [$317b], sp                                   ; $7863: $08 $7b $31
	daa                                              ; $7866: $27
	ldh [$97], a                                     ; $7867: $e0 $97
	jr c, jr_064_7897                                ; $7869: $38 $2c

	inc h                                            ; $786b: $24
	inc b                                            ; $786c: $04
	inc b                                            ; $786d: $04
	inc e                                            ; $786e: $1c

jr_064_786f:
	jr jr_064_7889                                   ; $786f: $18 $18

	dec sp                                           ; $7871: $3b
	ldh [rAUD1HIGH], a                               ; $7872: $e0 $14
	inc bc                                           ; $7874: $03
	rst AddAOntoHL                                          ; $7875: $ef
	rst SubAFromDE                                          ; $7876: $df
	ld bc, $f867                                     ; $7877: $01 $67 $f8
	add b                                            ; $787a: $80
	rlca                                             ; $787b: $07
	ld b, $0f                                        ; $787c: $06 $0f
	ld [$131c], sp                                   ; $787e: $08 $1c $13
	dec sp                                           ; $7881: $3b

jr_064_7882:
	daa                                              ; $7882: $27
	ld l, h                                          ; $7883: $6c
	ld e, h                                          ; $7884: $5c
	ld d, e                                          ; $7885: $53
	ld [hl], e                                       ; $7886: $73
	and a                                            ; $7887: $a7
	db $e4                                           ; $7888: $e4

jr_064_7889:
	rst GetHLinHL                                          ; $7889: $cf
	ret z                                            ; $788a: $c8

	sub [hl]                                         ; $788b: $96
	sbc c                                            ; $788c: $99

jr_064_788d:
	inc l                                            ; $788d: $2c
	inc sp                                           ; $788e: $33
	add hl, sp                                       ; $788f: $39
	daa                                              ; $7890: $27
	ld d, d                                          ; $7891: $52
	ld l, a                                          ; $7892: $6f
	ld [hl], l                                       ; $7893: $75
	ld c, [hl]                                       ; $7894: $4e
	ld h, a                                          ; $7895: $67
	ld e, h                                          ; $7896: $5c

jr_064_7897:
	adc e                                            ; $7897: $8b
	db $fc                                           ; $7898: $fc
	sbc d                                            ; $7899: $9a
	sub l                                            ; $789a: $95
	db $fd                                           ; $789b: $fd
	xor d                                            ; $789c: $aa
	db $ed                                           ; $789d: $ed
	xor b                                            ; $789e: $a8
	rst AddAOntoHL                                          ; $789f: $ef
	ld l, h                                          ; $78a0: $6c
	ld l, a                                          ; $78a1: $6f
	ld b, l                                          ; $78a2: $45
	ld b, a                                          ; $78a3: $47
	inc b                                            ; $78a4: $04
	sbc $06                                          ; $78a5: $de $06
	db $dd                                           ; $78a7: $dd
	ld [bc], a                                       ; $78a8: $02
	ldh [$cf], a                                     ; $78a9: $e0 $cf
	rst SubAFromDE                                          ; $78ab: $df
	ld bc, $0280                                     ; $78ac: $01 $80 $02
	inc bc                                           ; $78af: $03
	dec b                                            ; $78b0: $05
	ld b, $0b                                        ; $78b1: $06 $0b
	inc c                                            ; $78b3: $0c
	dec c                                            ; $78b4: $0d
	ld a, [bc]                                       ; $78b5: $0a
	ld d, $19                                        ; $78b6: $16 $19
	rra                                              ; $78b8: $1f
	db $10                                           ; $78b9: $10
	cpl                                              ; $78ba: $2f
	jr nc, jr_064_78ec                               ; $78bb: $30 $2f

	inc sp                                           ; $78bd: $33
	ccf                                              ; $78be: $3f
	ld [hl+], a                                      ; $78bf: $22
	ld e, a                                          ; $78c0: $5f
	ld h, d                                          ; $78c1: $62
	ld a, a                                          ; $78c2: $7f
	ld b, e                                          ; $78c3: $43
	cp a                                             ; $78c4: $bf
	ret nz                                           ; $78c5: $c0

	rst SubAFromDE                                          ; $78c6: $df
	and c                                            ; $78c7: $a1
	rst AddAOntoHL                                          ; $78c8: $ef
	sub c                                            ; $78c9: $91
	di                                               ; $78ca: $f3
	adc l                                            ; $78cb: $8d
	rst $38                                          ; $78cc: $ff
	sbc [hl]                                         ; $78cd: $9e
	add c                                            ; $78ce: $81
	di                                               ; $78cf: $f3
	rst SubAFromDE                                          ; $78d0: $df
	rrca                                             ; $78d1: $0f
	add b                                            ; $78d2: $80
	ld a, a                                          ; $78d3: $7f
	ld [hl], b                                       ; $78d4: $70
	cp $ff                                           ; $78d5: $fe $ff
	ld bc, $0f01                                     ; $78d7: $01 $01 $0f
	ld c, $7f                                        ; $78da: $0e $7f
	ld [hl], b                                       ; $78dc: $70
	rst $38                                          ; $78dd: $ff
	add b                                            ; $78de: $80
	ldh a, [rIF]                                     ; $78df: $f0 $0f
	add b                                            ; $78e1: $80
	ld a, a                                          ; $78e2: $7f
	rlca                                             ; $78e3: $07
	ld hl, sp+$33                                    ; $78e4: $f8 $33
	ret nz                                           ; $78e6: $c0

	adc $c0                                          ; $78e7: $ce $c0
	add c                                            ; $78e9: $81
	nop                                              ; $78ea: $00
	inc h                                            ; $78eb: $24

jr_064_78ec:
	inc bc                                           ; $78ec: $03
	adc c                                            ; $78ed: $89
	ld b, [hl]                                       ; $78ee: $46
	ld [de], a                                       ; $78ef: $12
	call z, $8024                                    ; $78f0: $cc $24 $80
	sbc b                                            ; $78f3: $98
	ld b, l                                          ; $78f4: $45
	jr c, jr_064_7882                                ; $78f5: $38 $8b

	ld [hl], b                                       ; $78f7: $70
	sbc a                                            ; $78f8: $9f
	ld [hl], b                                       ; $78f9: $70
	ld a, [hl-]                                      ; $78fa: $3a
	push hl                                          ; $78fb: $e5
	ld [hl], $e9                                     ; $78fc: $36 $e9
	ld h, l                                          ; $78fe: $65
	jp c, $de69                                      ; $78ff: $da $69 $de

	res 7, [hl]                                      ; $7902: $cb $be
	sub c                                            ; $7904: $91
	rst $38                                          ; $7905: $ff
	sub b                                            ; $7906: $90
	rst $38                                          ; $7907: $ff
	sub d                                            ; $7908: $92
	rst $38                                          ; $7909: $ff
	or e                                             ; $790a: $b3
	cp $ab                                           ; $790b: $fe $ab
	xor $6a                                          ; $790d: $ee $6a
	ld l, a                                          ; $790f: $6f
	ld l, l                                          ; $7910: $6d
	ld l, [hl]                                       ; $7911: $6e
	sub b                                            ; $7912: $90
	dec l                                            ; $7913: $2d
	ld l, $25                                        ; $7914: $2e $25
	ld h, $1f                                        ; $7916: $26 $1f
	ld e, $1f                                        ; $7918: $1e $1f
	ld [de], a                                       ; $791a: $12
	rra                                              ; $791b: $1f
	ld de, $090f                                     ; $791c: $11 $0f $09
	rlca                                             ; $791f: $07
	inc b                                            ; $7920: $04
	rlca                                             ; $7921: $07
	ld a, e                                          ; $7922: $7b
	db $fd                                           ; $7923: $fd
	ld a, a                                          ; $7924: $7f
	cp $8c                                           ; $7925: $fe $8c
	dec c                                            ; $7927: $0d
	ld c, $0a                                        ; $7928: $0e $0a
	dec c                                            ; $792a: $0d
	ld a, [de]                                       ; $792b: $1a
	dec e                                            ; $792c: $1d
	dec d                                            ; $792d: $15
	ld a, [de]                                       ; $792e: $1a
	dec d                                            ; $792f: $15
	ld a, [de]                                       ; $7930: $1a
	ld [hl], $39                                     ; $7931: $36 $39
	ld l, $31                                        ; $7933: $2e $31
	dec l                                            ; $7935: $2d
	inc sp                                           ; $7936: $33
	add hl, hl                                       ; $7937: $29
	scf                                              ; $7938: $37
	dec hl                                           ; $7939: $2b
	ld a, e                                          ; $793a: $7b
	cp $9e                                           ; $793b: $fe $9e
	ld a, [hl+]                                      ; $793d: $2a
	ld a, e                                          ; $793e: $7b
	cp $80                                           ; $793f: $fe $80
	db $eb                                           ; $7941: $eb
	or $6b                                           ; $7942: $f6 $6b
	cp [hl]                                          ; $7944: $be
	ld a, [hl+]                                      ; $7945: $2a
	ccf                                              ; $7946: $3f
	ld a, [hl-]                                      ; $7947: $3a
	ccf                                              ; $7948: $3f
	dec de                                           ; $7949: $1b
	rra                                              ; $794a: $1f
	add hl, de                                       ; $794b: $19
	rra                                              ; $794c: $1f
	dec c                                            ; $794d: $0d
	rrca                                             ; $794e: $0f
	rrca                                             ; $794f: $0f
	adc a                                            ; $7950: $8f
	rra                                              ; $7951: $1f
	rra                                              ; $7952: $1f
	rst $38                                          ; $7953: $ff
	rst FarCall                                          ; $7954: $f7
	db $fc                                           ; $7955: $fc
	jr @+$01                                         ; $7956: $18 $ff

	ld a, e                                          ; $7958: $7b
	rst AddAOntoHL                                          ; $7959: $ef
	cp $af                                           ; $795a: $fe $af
	db $fc                                           ; $795c: $fc
	xor a                                            ; $795d: $af
	db $fc                                           ; $795e: $fc
	cpl                                              ; $795f: $2f
	ld a, a                                          ; $7960: $7f
	cp $9c                                           ; $7961: $fe $9c
	cp $4b                                           ; $7963: $fe $4b
	cp $f5                                           ; $7965: $fe $f5
	rst SubAFromDE                                          ; $7967: $df

jr_064_7968:
	rlca                                             ; $7968: $07
	adc [hl]                                         ; $7969: $8e
	ldh a, [c]                                       ; $796a: $f2
	di                                               ; $796b: $f3
	rst $38                                          ; $796c: $ff
	rrca                                             ; $796d: $0f
	ld a, [hl]                                       ; $796e: $7e
	add c                                            ; $796f: $81
	cp a                                             ; $7970: $bf
	ret nz                                           ; $7971: $c0

	rst GetHLinHL                                          ; $7972: $cf
	jr nc, jr_064_7968                               ; $7973: $30 $f3

	inc c                                            ; $7975: $0c
	rst $38                                          ; $7976: $ff
	nop                                              ; $7977: $00
	ld b, $f9                                        ; $7978: $06 $f9
	rst $38                                          ; $797a: $ff
	cp a                                             ; $797b: $bf
	rst $38                                          ; $797c: $ff
	cp $82                                           ; $797d: $fe $82
	ld bc, $205f                                     ; $797f: $01 $5f $20
	dec sp                                           ; $7982: $3b
	call nz, $08b7                                   ; $7983: $c4 $b7 $08
	ld l, [hl]                                       ; $7986: $6e
	ld de, $21ce                                     ; $7987: $11 $ce $21
	xor l                                            ; $798a: $ad
	ld b, d                                          ; $798b: $42
	sbc b                                            ; $798c: $98
	ld b, d                                          ; $798d: $42

jr_064_798e:
	ld e, d                                          ; $798e: $5a
	sub d                                            ; $798f: $92
	ld [hl], $92                                     ; $7990: $36 $92
	or h                                             ; $7992: $b4
	ld h, $f5                                        ; $7993: $26 $f5
	ld h, $fd                                        ; $7995: $26 $fd
	ld h, $fd                                        ; $7997: $26 $fd
	ld h, [hl]                                       ; $7999: $66
	db $fd                                           ; $799a: $fd
	ld d, [hl]                                       ; $799b: $56
	ldh [$c1], a                                     ; $799c: $e0 $c1
	adc e                                            ; $799e: $8b
	ld d, e                                          ; $799f: $53
	rst $38                                          ; $79a0: $ff
	sub e                                            ; $79a1: $93
	rst $38                                          ; $79a2: $ff
	ld h, $fe                                        ; $79a3: $26 $fe
	call z, $9ffc                                    ; $79a5: $cc $fc $9f
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	db $fc                                           ; $79aa: $fc
	cp $00                                           ; $79ab: $fe $00
	add c                                            ; $79ad: $81
	ld bc, $7e7f                                     ; $79ae: $01 $7f $7e
	rst $38                                          ; $79b1: $ff
	add b                                            ; $79b2: $80
	ld [hl], a                                       ; $79b3: $77
	adc d                                            ; $79b4: $8a
	sub a                                            ; $79b5: $97
	rst $38                                          ; $79b6: $ff
	rlca                                             ; $79b7: $07
	ld hl, sp+$0c                                    ; $79b8: $f8 $0c
	ldh a, [rAUD1HIGH]                               ; $79ba: $f0 $14
	ldh [rAUDVOL], a                                 ; $79bc: $e0 $24
	push af                                          ; $79be: $f5
	rst SubAFromDE                                          ; $79bf: $df
	add [hl]                                         ; $79c0: $86
	add b                                            ; $79c1: $80
	ld h, e                                          ; $79c2: $63
	db $e3                                           ; $79c3: $e3
	sbc $3f                                          ; $79c4: $de $3f
	rst FarCall                                          ; $79c6: $f7
	rst GetHLinHL                                          ; $79c7: $cf
	cp e                                             ; $79c8: $bb
	ld h, a                                          ; $79c9: $67
	db $dd                                           ; $79ca: $dd
	inc hl                                           ; $79cb: $23
	db $ed                                           ; $79cc: $ed
	inc de                                           ; $79cd: $13
	xor $13                                          ; $79ce: $ee $13
	ld [hl], h                                       ; $79d0: $74
	adc e                                            ; $79d1: $8b
	add b                                            ; $79d2: $80
	ld a, a                                          ; $79d3: $7f
	inc bc                                           ; $79d4: $03
	db $fc                                           ; $79d5: $fc
	rst SubAFromHL                                          ; $79d6: $d7
	jr z, jr_064_798e                                ; $79d7: $28 $b5

	ld c, d                                          ; $79d9: $4a
	ld l, l                                          ; $79da: $6d
	sub d                                            ; $79db: $92

Call_064_79dc:
jr_064_79dc:
	ld l, d                                          ; $79dc: $6a
	sub l                                            ; $79dd: $95
	jp c, $d325                                      ; $79de: $da $25 $d3

	adc h                                            ; $79e1: $8c
	inc h                                            ; $79e2: $24
	jp nc, $9224                                     ; $79e3: $d2 $24 $92

	inc h                                            ; $79e6: $24
	dec d                                            ; $79e7: $15
	ld [hl+], a                                      ; $79e8: $22
	sbc e                                            ; $79e9: $9b
	ld [hl-], a                                      ; $79ea: $32

jr_064_79eb:
	sbc e                                            ; $79eb: $9b

Call_064_79ec:
	ld sp, $986d                                     ; $79ec: $31 $6d $98
	ld l, [hl]                                       ; $79ef: $6e
	sbc b                                            ; $79f0: $98
	scf                                              ; $79f1: $37
	call z, $ee17                                    ; $79f2: $cc $17 $ee
	ldh [$c1], a                                     ; $79f5: $e0 $c1
	sub c                                            ; $79f7: $91
	pop hl                                           ; $79f8: $e1
	ld bc, $c2f3                                     ; $79f9: $01 $f3 $c2
	ld [hl], a                                       ; $79fc: $77
	ld h, d                                          ; $79fd: $62
	rra                                              ; $79fe: $1f
	rra                                              ; $79ff: $1f
	ld hl, sp-$01                                    ; $7a00: $f8 $ff
	nop                                              ; $7a02: $00
	ld hl, sp+$07                                    ; $7a03: $f8 $07
	rlca                                             ; $7a05: $07
	ld a, e                                          ; $7a06: $7b
	ld a, [$6577]                                    ; $7a07: $fa $77 $65
	sbc d                                            ; $7a0a: $9a
	rst $38                                          ; $7a0b: $ff
	ld a, b                                          ; $7a0c: $78
	ld hl, sp-$80                                    ; $7a0d: $f8 $80
	add b                                            ; $7a0f: $80
	db $eb                                           ; $7a10: $eb
	rst SubAFromDE                                          ; $7a11: $df
	add e                                            ; $7a12: $83
	sub e                                            ; $7a13: $93
	ld c, a                                          ; $7a14: $4f
	call z, Call_064_73bd                            ; $7a15: $cc $bd $73
	cp e                                             ; $7a18: $bb
	ld h, a                                          ; $7a19: $67
	jr nc, jr_064_79eb                               ; $7a1a: $30 $cf

	rlca                                             ; $7a1c: $07
	rst $38                                          ; $7a1d: $ff
	jr c, @+$01                                      ; $7a1e: $38 $ff

	ld a, e                                          ; $7a20: $7b
	db $d3                                           ; $7a21: $d3
	add b                                            ; $7a22: $80
	inc bc                                           ; $7a23: $03
	rst $38                                          ; $7a24: $ff
	nop                                              ; $7a25: $00
	sub c                                            ; $7a26: $91
	ld l, [hl]                                       ; $7a27: $6e
	ld l, h                                          ; $7a28: $6c
	di                                               ; $7a29: $f3
	rst SubAFromHL                                          ; $7a2a: $d7
	jr c, jr_064_79dc                                ; $7a2b: $38 $af

	jr jr_064_7a89                                   ; $7a2d: $18 $5a

	adc l                                            ; $7a2f: $8d
	rst JumpTable                                          ; $7a30: $c7
	adc h                                            ; $7a31: $8c
	db $e3                                           ; $7a32: $e3
	ld b, [hl]                                       ; $7a33: $46
	ld [hl], l                                       ; $7a34: $75
	inc hl                                           ; $7a35: $23
	ld a, e                                          ; $7a36: $7b
	ld sp, $19bc                                     ; $7a37: $31 $bc $19
	rst SubAFromDE                                          ; $7a3a: $df
	adc h                                            ; $7a3b: $8c
	cp $cf                                           ; $7a3c: $fe $cf
	rst $38                                          ; $7a3e: $ff
	ld h, a                                          ; $7a3f: $67
	ei                                               ; $7a40: $fb
	scf                                              ; $7a41: $37
	ldh [$c1], a                                     ; $7a42: $e0 $c1
	sbc c                                            ; $7a44: $99
	di                                               ; $7a45: $f3
	rra                                              ; $7a46: $1f
	ei                                               ; $7a47: $fb
	ld a, a                                          ; $7a48: $7f
	rst $38                                          ; $7a49: $ff
	rrca                                             ; $7a4a: $0f
	ld e, a                                          ; $7a4b: $5f
	ld h, d                                          ; $7a4c: $62
	ld a, a                                          ; $7a4d: $7f
	sub c                                            ; $7a4e: $91
	sbc e                                            ; $7a4f: $9b
	inc a                                            ; $7a50: $3c
	db $fc                                           ; $7a51: $fc
	ret nz                                           ; $7a52: $c0

	ret nz                                           ; $7a53: $c0

	rst SubAFromBC                                          ; $7a54: $e7
	rst SubAFromDE                                          ; $7a55: $df
	ret nz                                           ; $7a56: $c0

	ld [hl], a                                       ; $7a57: $77
	ld b, [hl]                                       ; $7a58: $46
	rst SubAFromDE                                          ; $7a59: $df
	ret nz                                           ; $7a5a: $c0

	ld a, a                                          ; $7a5b: $7f
	ld a, $df                                        ; $7a5c: $3e $df
	cp $7f                                           ; $7a5e: $fe $7f
	ld e, [hl]                                       ; $7a60: $5e
	add b                                            ; $7a61: $80
	ld sp, hl                                        ; $7a62: $f9
	rlca                                             ; $7a63: $07
	cp $f1                                           ; $7a64: $fe $f1
	xor $1f                                          ; $7a66: $ee $1f
	db $dd                                           ; $7a68: $dd
	inc hl                                           ; $7a69: $23
	ld a, e                                          ; $7a6a: $7b
	sbc h                                            ; $7a6b: $9c
	ld [hl], $cf                                     ; $7a6c: $36 $cf
	cp l                                             ; $7a6e: $bd
	ld h, e                                          ; $7a6f: $63
	sub $39                                          ; $7a70: $d6 $39
	ld l, d                                          ; $7a72: $6a
	sbc l                                            ; $7a73: $9d
	or h                                             ; $7a74: $b4
	ld c, a                                          ; $7a75: $4f
	sub d                                            ; $7a76: $92
	ld l, a                                          ; $7a77: $6f
	ld hl, $91ff                                     ; $7a78: $21 $ff $91
	rst $38                                          ; $7a7b: $ff
	ld c, b                                          ; $7a7c: $48
	rst $38                                          ; $7a7d: $ff
	ret z                                            ; $7a7e: $c8

	ld a, a                                          ; $7a7f: $7f
	inc h                                            ; $7a80: $24

Jump_064_7a81:
	add b                                            ; $7a81: $80
	rst $38                                          ; $7a82: $ff
	sub h                                            ; $7a83: $94
	rst $38                                          ; $7a84: $ff
	jp nc, $eaff                                     ; $7a85: $d2 $ff $ea

	ld a, a                                          ; $7a88: $7f

jr_064_7a89:
	ld sp, hl                                        ; $7a89: $f9
	ccf                                              ; $7a8a: $3f
	db $ed                                           ; $7a8b: $ed
	cp a                                             ; $7a8c: $bf
	ld h, [hl]                                       ; $7a8d: $66
	rst $38                                          ; $7a8e: $ff
	cpl                                              ; $7a8f: $2f
	ld sp, hl                                        ; $7a90: $f9
	ld l, a                                          ; $7a91: $6f
	cp c                                             ; $7a92: $b9
	ld a, a                                          ; $7a93: $7f
	or c                                             ; $7a94: $b1
	ld a, a                                          ; $7a95: $7f
	and c                                            ; $7a96: $a1
	ld a, a                                          ; $7a97: $7f
	ld bc, $037e                                     ; $7a98: $01 $7e $03
	db $fc                                           ; $7a9b: $fc
	rla                                              ; $7a9c: $17
	db $fc                                           ; $7a9d: $fc
	ccf                                              ; $7a9e: $3f
	add sp, $3f                                      ; $7a9f: $e8 $3f
	add b                                            ; $7aa1: $80
	add sp, $7f                                      ; $7aa2: $e8 $7f
	ret z                                            ; $7aa4: $c8

	rst $38                                          ; $7aa5: $ff
	jp z, $fafd                                      ; $7aa6: $ca $fd $fa

	db $dd                                           ; $7aa9: $dd
	cp d                                             ; $7aaa: $ba
	reti                                             ; $7aab: $d9


	cp d                                             ; $7aac: $ba
	reti                                             ; $7aad: $d9


	jp nc, $f2b9                                     ; $7aae: $d2 $b9 $f2

	cp c                                             ; $7ab1: $b9
	ld [hl], d                                       ; $7ab2: $72
	or c                                             ; $7ab3: $b1
	or $31                                           ; $7ab4: $f6 $31
	and [hl]                                         ; $7ab6: $a6
	ld [hl], c                                       ; $7ab7: $71
	rst SubAFromBC                                          ; $7ab8: $e7
	ld [hl], c                                       ; $7ab9: $71
	push hl                                          ; $7aba: $e5
	ld h, e                                          ; $7abb: $63
	db $ed                                           ; $7abc: $ed
	ld h, e                                          ; $7abd: $63
	ld c, a                                          ; $7abe: $4f
	db $e3                                           ; $7abf: $e3
	jp c, $c795                                      ; $7ac0: $da $95 $c7

	or a                                             ; $7ac3: $b7
	rst GetHLinHL                                          ; $7ac4: $cf
	add [hl]                                         ; $7ac5: $86
	rst $38                                          ; $7ac6: $ff
	inc c                                            ; $7ac7: $0c
	cp $3c                                           ; $7ac8: $fe $3c
	cp $fc                                           ; $7aca: $fe $fc
	ld a, e                                          ; $7acc: $7b
	sub [hl]                                         ; $7acd: $96
	adc a                                            ; $7ace: $8f
	ld [bc], a                                       ; $7acf: $02
	ld c, $f2                                        ; $7ad0: $0e $f2
	cp $02                                           ; $7ad2: $fe $02
	cp $03                                           ; $7ad4: $fe $03
	rst $38                                          ; $7ad6: $ff
	di                                               ; $7ad7: $f3
	rst $38                                          ; $7ad8: $ff
	ld de, $111f                                     ; $7ad9: $11 $1f $11
	rra                                              ; $7adc: $1f
	add hl, bc                                       ; $7add: $09
	rrca                                             ; $7ade: $0f
	ld [hl], a                                       ; $7adf: $77
	cp $75                                           ; $7ae0: $fe $75
	ld b, d                                          ; $7ae2: $42
	rst SubAFromDE                                          ; $7ae3: $df
	add b                                            ; $7ae4: $80
	adc [hl]                                         ; $7ae5: $8e
	ld b, b                                          ; $7ae6: $40
	ret nz                                           ; $7ae7: $c0

	ldh [$e0], a                                     ; $7ae8: $e0 $e0
	ld h, b                                          ; $7aea: $60
	ldh [$b0], a                                     ; $7aeb: $e0 $b0
	ld [hl], b                                       ; $7aed: $70
	ld e, b                                          ; $7aee: $58
	cp b                                             ; $7aef: $b8
	adc b                                            ; $7af0: $88
	ld hl, sp+$48                                    ; $7af1: $f8 $48
	ld hl, sp+$4c                                    ; $7af3: $f8 $4c
	db $fc                                           ; $7af5: $fc
	inc h                                            ; $7af6: $24
	ld a, e                                          ; $7af7: $7b
	cp $96                                           ; $7af8: $fe $96
	inc d                                            ; $7afa: $14
	db $fc                                           ; $7afb: $fc
	sub [hl]                                         ; $7afc: $96
	cp $92                                           ; $7afd: $fe $92
	cp $8a                                           ; $7aff: $fe $8a
	cp $4a                                           ; $7b01: $fe $4a
	ld [hl], e                                       ; $7b03: $73
	cp $9e                                           ; $7b04: $fe $9e
	ld a, [hl+]                                      ; $7b06: $2a
	ld a, e                                          ; $7b07: $7b
	cp $9e                                           ; $7b08: $fe $9e
	xor d                                            ; $7b0a: $aa
	ld a, e                                          ; $7b0b: $7b
	cp $9c                                           ; $7b0c: $fe $9c
	xor [hl]                                         ; $7b0e: $ae
	cp $a6                                           ; $7b0f: $fe $a6
	ld d, c                                          ; $7b11: $51
	ld d, b                                          ; $7b12: $50
	db $ed                                           ; $7b13: $ed
	sbc h                                            ; $7b14: $9c
	or [hl]                                          ; $7b15: $b6
	cp $96                                           ; $7b16: $fe $96
	ld h, e                                          ; $7b18: $63
	cp $9d                                           ; $7b19: $fe $9d
	call nc, $77bc                                   ; $7b1b: $d4 $bc $77
	cp $9e                                           ; $7b1e: $fe $9e
	call c, $fe73                                    ; $7b20: $dc $73 $fe
	sbc c                                            ; $7b23: $99
	sbc b                                            ; $7b24: $98
	ld hl, sp-$68                                    ; $7b25: $f8 $98
	ld hl, sp-$70                                    ; $7b27: $f8 $90
	ldh a, [rPCM34]                                  ; $7b29: $f0 $77
	cp $95                                           ; $7b2b: $fe $95
	jr nc, @-$0e                                     ; $7b2d: $30 $f0

	ccf                                              ; $7b2f: $3f
	rst $38                                          ; $7b30: $ff
	ld a, [hl]                                       ; $7b31: $7e
	pop hl                                           ; $7b32: $e1
	ld a, a                                          ; $7b33: $7f
	ret nz                                           ; $7b34: $c0

	rst $38                                          ; $7b35: $ff
	ret nz                                           ; $7b36: $c0

	ld [hl], l                                       ; $7b37: $75
	sub [hl]                                         ; $7b38: $96
	ei                                               ; $7b39: $fb
	sbc c                                            ; $7b3a: $99
	add b                                            ; $7b3b: $80
	sub b                                            ; $7b3c: $90
	add b                                            ; $7b3d: $80
	or b                                             ; $7b3e: $b0
	add b                                            ; $7b3f: $80
	ldh [rPCM34], a                                  ; $7b40: $e0 $77
	cp $bc                                           ; $7b42: $fe $bc
	and b                                            ; $7b44: $a0
	jr nz, jr_064_7b67                               ; $7b45: $20 $20

	jr nz, @-$5e                                     ; $7b47: $20 $a0

	ld a, e                                          ; $7b49: $7b
	ldh a, [c]                                       ; $7b4a: $f2
	sbc h                                            ; $7b4b: $9c
	ldh a, [$80]                                     ; $7b4c: $f0 $80
	ldh a, [$ed]                                     ; $7b4e: $f0 $ed
	ld [hl], a                                       ; $7b50: $77
	ld c, h                                          ; $7b51: $4c
	add b                                            ; $7b52: $80
	and b                                            ; $7b53: $a0
	ld h, b                                          ; $7b54: $60
	ret nc                                           ; $7b55: $d0

	jr nc, @-$0e                                     ; $7b56: $30 $f0

	db $10                                           ; $7b58: $10
	add sp, $18                                      ; $7b59: $e8 $18
	ld a, b                                          ; $7b5b: $78
	adc b                                            ; $7b5c: $88
	ld [hl], h                                       ; $7b5d: $74
	adc h                                            ; $7b5e: $8c
	ld [hl], h                                       ; $7b5f: $74
	adc h                                            ; $7b60: $8c

jr_064_7b61:
	cp d                                             ; $7b61: $ba
	ld b, [hl]                                       ; $7b62: $46
	cp [hl]                                          ; $7b63: $be
	ld b, d                                          ; $7b64: $42
	db $dd                                           ; $7b65: $dd
	inc hl                                           ; $7b66: $23

jr_064_7b67:
	rst SubAFromDE                                          ; $7b67: $df
	ld hl, $11ee                                     ; $7b68: $21 $ee $11
	or $09                                           ; $7b6b: $f6 $09
	pop af                                           ; $7b6d: $f1
	ld c, $f8                                        ; $7b6e: $0e $f8
	rlca                                             ; $7b70: $07
	db $fc                                           ; $7b71: $fc
	sbc h                                            ; $7b72: $9c
	inc bc                                           ; $7b73: $03
	cp $01                                           ; $7b74: $fe $01
	ld [hl], c                                       ; $7b76: $71
	push de                                          ; $7b77: $d5
	ld b, e                                          ; $7b78: $43
	add $77                                          ; $7b79: $c6 $77
	call nz, $fe7f                                   ; $7b7b: $c4 $7f $fe
	sbc l                                            ; $7b7e: $9d
	jr nz, jr_064_7b61                               ; $7b7f: $20 $e0

Jump_064_7b81:
	ld [hl], a                                       ; $7b81: $77
	cp $7f                                           ; $7b82: $fe $7f
	cp h                                             ; $7b84: $bc
	ld a, a                                          ; $7b85: $7f
	cp $22                                           ; $7b86: $fe $22
	nop                                              ; $7b88: $00
	sbc $99                                          ; $7b89: $de $99
	sub e                                            ; $7b8b: $93
	adc b                                            ; $7b8c: $88
	xor d                                            ; $7b8d: $aa
	sbc c                                            ; $7b8e: $99
	ld de, $9988                                     ; $7b8f: $11 $88 $99
	nop                                              ; $7b92: $00
	sub c                                            ; $7b93: $91
	ld de, $9999                                     ; $7b94: $11 $99 $99
	ld b, h                                          ; $7b97: $44
	ld [hl], a                                       ; $7b98: $77
	ei                                               ; $7b99: $fb
	sbc l                                            ; $7b9a: $9d
	ld d, l                                          ; $7b9b: $55
	sbc c                                            ; $7b9c: $99
	ld l, a                                          ; $7b9d: $6f
	ei                                               ; $7b9e: $fb
	sbc b                                            ; $7b9f: $98
	nop                                              ; $7ba0: $00
	ld de, $9955                                     ; $7ba1: $11 $55 $99
	sbc e                                            ; $7ba4: $9b
	cp e                                             ; $7ba5: $bb
	nop                                              ; $7ba6: $00
	sbc $aa                                          ; $7ba7: $de $aa
	inc d                                            ; $7ba9: $14
	ld bc, $7680                                     ; $7baa: $01 $80 $76
	rst SubAFromDE                                          ; $7bad: $df
	ld [hl], l                                       ; $7bae: $75
	rst SubAFromDE                                          ; $7baf: $df
	and e                                            ; $7bb0: $a3
	cp $cf                                           ; $7bb1: $fe $cf
	ld a, c                                          ; $7bb3: $79
	nop                                              ; $7bb4: $00
	rra                                              ; $7bb5: $1f
	rst $38                                          ; $7bb6: $ff
	nop                                              ; $7bb7: $00
	pop af                                           ; $7bb8: $f1
	ld c, $de                                        ; $7bb9: $0e $de
	ccf                                              ; $7bbb: $3f
	rst SubAFromBC                                          ; $7bbc: $e7
	ld h, a                                          ; $7bbd: $67
	db $dd                                           ; $7bbe: $dd
	rst $38                                          ; $7bbf: $ff
	ld d, e                                          ; $7bc0: $53
	ld e, $0d                                        ; $7bc1: $1e $0d
	ld c, $9e                                        ; $7bc3: $0e $9e
	nop                                              ; $7bc5: $00
	add b                                            ; $7bc6: $80
	add b                                            ; $7bc7: $80
	rst GetHLinHL                                          ; $7bc8: $cf
	add b                                            ; $7bc9: $80
	ld h, b                                          ; $7bca: $60
	add b                                            ; $7bcb: $80
	ret nz                                           ; $7bcc: $c0

	ld h, b                                          ; $7bcd: $60
	ldh [rSVBK], a                                   ; $7bce: $e0 $70
	ldh [$78], a                                     ; $7bd0: $e0 $78
	ldh a, [$7c]                                     ; $7bd2: $f0 $7c
	ld hl, sp+$6f                                    ; $7bd4: $f8 $6f
	cp $6f                                           ; $7bd6: $fe $6f
	rst $38                                          ; $7bd8: $ff
	rst GetHLinHL                                          ; $7bd9: $cf
	rst AddAOntoHL                                          ; $7bda: $ef
	adc $ef                                          ; $7bdb: $ce $ef
	sbc [hl]                                         ; $7bdd: $9e
	rst GetHLinHL                                          ; $7bde: $cf
	adc d                                            ; $7bdf: $8a
	rst SubAFromDE                                          ; $7be0: $df
	inc de                                           ; $7be1: $13
	sbc $1b                                          ; $7be2: $de $1b
	or [hl]                                          ; $7be4: $b6
	dec e                                            ; $7be5: $1d
	or [hl]                                          ; $7be6: $b6
	ld [hl], $6d                                     ; $7be7: $36 $6d
	dec sp                                           ; $7be9: $3b
	ld l, l                                          ; $7bea: $6d
	add [hl]                                         ; $7beb: $86
	ld l, l                                          ; $7bec: $6d
	db $db                                           ; $7bed: $db
	ld b, a                                          ; $7bee: $47
	rst $38                                          ; $7bef: $ff
	ld h, a                                          ; $7bf0: $67
	db $fd                                           ; $7bf1: $fd
	ld [hl], a                                       ; $7bf2: $77
	call c, $cdfa                                    ; $7bf3: $dc $fa $cd
	ld a, [hl]                                       ; $7bf6: $7e
	add $3f                                          ; $7bf7: $c6 $3f
	jp nz, Jump_064_42bd                             ; $7bf9: $c2 $bd $42

	cp l                                             ; $7bfc: $bd
	ld a, [hl]                                       ; $7bfd: $7e
	cp c                                             ; $7bfe: $b9
	ld h, [hl]                                       ; $7bff: $66
	rst $38                                          ; $7c00: $ff
	ld h, [hl]                                       ; $7c01: $66
	db $fc                                           ; $7c02: $fc
	ld b, b                                          ; $7c03: $40
	ld a, [hl]                                       ; $7c04: $7e
	cp [hl]                                          ; $7c05: $be
	ld a, l                                          ; $7c06: $7d
	sbc $3d                                          ; $7c07: $de $3d
	adc d                                            ; $7c09: $8a
	stop                                             ; $7c0a: $10 $00
	nop                                              ; $7c0c: $00
	rrca                                             ; $7c0d: $0f
	db $fc                                           ; $7c0e: $fc
	add e                                            ; $7c0f: $83
	cp $ff                                           ; $7c10: $fe $ff
	rst $38                                          ; $7c12: $ff
	nop                                              ; $7c13: $00
	rrca                                             ; $7c14: $0f
	rst $38                                          ; $7c15: $ff
	nop                                              ; $7c16: $00

jr_064_7c17:
	rst JumpTable                                          ; $7c17: $c7
	jr c, jr_064_7c17                                ; $7c18: $38 $fd

	ld a, [hl]                                       ; $7c1a: $7e
	rst JumpTable                                          ; $7c1b: $c7
	ld h, a                                          ; $7c1c: $67
	db $dd                                           ; $7c1d: $dd
	rra                                              ; $7c1e: $1f
	ld [hl], a                                       ; $7c1f: $77
	and d                                            ; $7c20: $a2
	sbc [hl]                                         ; $7c21: $9e
	ld e, $bc                                        ; $7c22: $1e $bc
	ld bc, $43ff                                     ; $7c24: $01 $ff $43
	inc bc                                           ; $7c27: $03
	inc bc                                           ; $7c28: $03
	adc a                                            ; $7c29: $8f
	ld bc, $0107                                     ; $7c2a: $01 $07 $01
	rlca                                             ; $7c2d: $07
	rlca                                             ; $7c2e: $07
	ld c, $07                                        ; $7c2f: $0e $07
	inc a                                            ; $7c31: $3c
	rra                                              ; $7c32: $1f
	db $fc                                           ; $7c33: $fc
	ld l, a                                          ; $7c34: $6f
	ld sp, hl                                        ; $7c35: $f9
	adc a                                            ; $7c36: $8f
	ld sp, hl                                        ; $7c37: $f9
	rra                                              ; $7c38: $1f
	pop af                                           ; $7c39: $f1
	ld [hl], e                                       ; $7c3a: $73
	cp $7f                                           ; $7c3b: $fe $7f
	ld hl, sp-$69                                    ; $7c3d: $f8 $97
	ld a, c                                          ; $7c3f: $79
	rra                                              ; $7c40: $1f
	ld a, l                                          ; $7c41: $7d
	rra                                              ; $7c42: $1f
	push af                                          ; $7c43: $f5
	rra                                              ; $7c44: $1f
	rst FarCall                                          ; $7c45: $f7
	rst $38                                          ; $7c46: $ff
	ld d, a                                          ; $7c47: $57
	ld h, b                                          ; $7c48: $60
	ld a, e                                          ; $7c49: $7b
	cp $96                                           ; $7c4a: $fe $96
	ld e, $f7                                        ; $7c4c: $1e $f7
	scf                                              ; $7c4e: $37
	call Call_064_416f                               ; $7c4f: $cd $6f $41
	rra                                              ; $7c52: $1f
	rra                                              ; $7c53: $1f
	ld e, $67                                        ; $7c54: $1e $67
	ld h, b                                          ; $7c56: $60
	ld e, a                                          ; $7c57: $5f

Call_064_7c58:
	and b                                            ; $7c58: $a0
	ld a, e                                          ; $7c59: $7b
	cp $9a                                           ; $7c5a: $fe $9a
	ld a, $ef                                        ; $7c5c: $3e $ef
	ld l, a                                          ; $7c5e: $6f
	sbc l                                            ; $7c5f: $9d
	ld e, a                                          ; $7c60: $5f
	ld [hl], a                                       ; $7c61: $77
	ldh [c], a                                       ; $7c62: $e2
	ld e, a                                          ; $7c63: $5f
	and b                                            ; $7c64: $a0
	ld c, e                                          ; $7c65: $4b
	ret nz                                           ; $7c66: $c0

	ld a, e                                          ; $7c67: $7b
	cp [hl]                                          ; $7c68: $be
	sbc e                                            ; $7c69: $9b
	db $fd                                           ; $7c6a: $fd
	ccf                                              ; $7c6b: $3f
	ld h, c                                          ; $7c6c: $61
	ld l, a                                          ; $7c6d: $6f
	dec hl                                           ; $7c6e: $2b
	ret nz                                           ; $7c6f: $c0

	ld a, e                                          ; $7c70: $7b
	cp [hl]                                          ; $7c71: $be
	sbc e                                            ; $7c72: $9b
	db $fd                                           ; $7c73: $fd
	ld a, a                                          ; $7c74: $7f
	ld b, e                                          ; $7c75: $43
	cpl                                              ; $7c76: $2f
	inc de                                           ; $7c77: $13
	ret nz                                           ; $7c78: $c0

	cp a                                             ; $7c79: $bf
	rst $38                                          ; $7c7a: $ff
	ld [hl], a                                       ; $7c7b: $77
	sbc [hl]                                         ; $7c7c: $9e
	ld [hl], e                                       ; $7c7d: $73
	inc hl                                           ; $7c7e: $23
	ret nz                                           ; $7c7f: $c0

	cp a                                             ; $7c80: $bf
	rst $38                                          ; $7c81: $ff
	ld l, a                                          ; $7c82: $6f
	sbc [hl]                                         ; $7c83: $9e
	ld h, a                                          ; $7c84: $67
	ld d, a                                          ; $7c85: $57
	ret nz                                           ; $7c86: $c0

	sbc d                                            ; $7c87: $9a
	jr jr_064_7c9a                                   ; $7c88: $18 $10

	jr jr_064_7c94                                   ; $7c8a: $18 $08

	ld [$00be], sp                                   ; $7c8c: $08 $be $00
	nop                                              ; $7c8f: $00
	ret nz                                           ; $7c90: $c0

	sub c                                            ; $7c91: $91
	add b                                            ; $7c92: $80
	di                                               ; $7c93: $f3

jr_064_7c94:
	pop hl                                           ; $7c94: $e1
	rst $38                                          ; $7c95: $ff
	sbc $cf                                          ; $7c96: $de $cf
	add b                                            ; $7c98: $80
	rst JumpTable                                          ; $7c99: $c7

jr_064_7c9a:
	add b                                            ; $7c9a: $80
	jp $c180                                         ; $7c9b: $c3 $80 $c1


	add b                                            ; $7c9e: $80
	ret nz                                           ; $7c9f: $c0

	ld [hl], e                                       ; $7ca0: $73
	cp $9e                                           ; $7ca1: $fe $9e
	ldh [rPCM34], a                                  ; $7ca3: $e0 $77
	ldh [$df], a                                     ; $7ca5: $e0 $df
	jr jr_064_7d1c                                   ; $7ca7: $18 $73

jr_064_7ca9:
	rst SubAFromDE                                          ; $7ca9: $df
	dec hl                                           ; $7caa: $2b
	ldh [$9b], a                                     ; $7cab: $e0 $9b
	jr jr_064_7ccb                                   ; $7cad: $18 $1c

	jr @+$0e                                         ; $7caf: $18 $0c

	ld [hl], e                                       ; $7cb1: $73
	cp [hl]                                          ; $7cb2: $be
	inc hl                                           ; $7cb3: $23
	ldh [$df], a                                     ; $7cb4: $e0 $df
	inc e                                            ; $7cb6: $1c
	rst SubAFromDE                                          ; $7cb7: $df
	inc c                                            ; $7cb8: $0c
	ld a, e                                          ; $7cb9: $7b
	sbc $2f                                          ; $7cba: $de $2f
	ldh [rAUD3ENA], a                                ; $7cbc: $e0 $1a
	ld bc, $7680                                     ; $7cbe: $01 $80 $76
	rst SubAFromDE                                          ; $7cc1: $df
	nop                                              ; $7cc2: $00
	rst $38                                          ; $7cc3: $ff
	or e                                             ; $7cc4: $b3
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	ld c, c                                          ; $7cc7: $49
	nop                                              ; $7cc8: $00
	rra                                              ; $7cc9: $1f
	rst $38                                          ; $7cca: $ff

jr_064_7ccb:
	inc c                                            ; $7ccb: $0c
	rst FarCall                                          ; $7ccc: $f7
	ld a, $e3                                        ; $7ccd: $3e $e3
	rst FarCall                                          ; $7ccf: $f7
	rst JumpTable                                          ; $7cd0: $c7
	ld h, a                                          ; $7cd1: $67
	ld c, l                                          ; $7cd2: $4d
	rra                                              ; $7cd3: $1f
	ld d, e                                          ; $7cd4: $53
	ld e, $0d                                        ; $7cd5: $1e $0d
	ld c, $9e                                        ; $7cd7: $0e $9e
	nop                                              ; $7cd9: $00
	add b                                            ; $7cda: $80
	add b                                            ; $7cdb: $80
	rst GetHLinHL                                          ; $7cdc: $cf
	add b                                            ; $7cdd: $80
	ld h, b                                          ; $7cde: $60
	add b                                            ; $7cdf: $80
	ret nz                                           ; $7ce0: $c0

	ld h, b                                          ; $7ce1: $60
	ldh [rSVBK], a                                   ; $7ce2: $e0 $70
	ldh [$78], a                                     ; $7ce4: $e0 $78
	ldh a, [$7c]                                     ; $7ce6: $f0 $7c
	ld hl, sp+$6f                                    ; $7ce8: $f8 $6f
	cp $6f                                           ; $7cea: $fe $6f
	rst $38                                          ; $7cec: $ff
	rst GetHLinHL                                          ; $7ced: $cf
	rst AddAOntoHL                                          ; $7cee: $ef
	adc $ef                                          ; $7cef: $ce $ef
	sbc [hl]                                         ; $7cf1: $9e
	rst GetHLinHL                                          ; $7cf2: $cf
	adc d                                            ; $7cf3: $8a
	rst SubAFromDE                                          ; $7cf4: $df
	inc de                                           ; $7cf5: $13
	sbc $1b                                          ; $7cf6: $de $1b
	or [hl]                                          ; $7cf8: $b6
	dec e                                            ; $7cf9: $1d
	or [hl]                                          ; $7cfa: $b6
	ld [hl], $6d                                     ; $7cfb: $36 $6d
	dec sp                                           ; $7cfd: $3b
	ld l, l                                          ; $7cfe: $6d
	add [hl]                                         ; $7cff: $86
	ld l, l                                          ; $7d00: $6d
	db $db                                           ; $7d01: $db
	ld b, a                                          ; $7d02: $47
	rst $38                                          ; $7d03: $ff
	ld h, a                                          ; $7d04: $67
	db $fc                                           ; $7d05: $fc
	ld [hl], a                                       ; $7d06: $77

Call_064_7d07:
	call c, $cffa                                    ; $7d07: $dc $fa $cf
	ld a, [hl]                                       ; $7d0a: $7e
	add $3f                                          ; $7d0b: $c6 $3f
	jp nz, Jump_064_42bd                             ; $7d0d: $c2 $bd $42

	cp l                                             ; $7d10: $bd
	ld a, [hl]                                       ; $7d11: $7e
	cp c                                             ; $7d12: $b9
	ld h, [hl]                                       ; $7d13: $66
	rst $38                                          ; $7d14: $ff
	ld h, [hl]                                       ; $7d15: $66
	db $e4                                           ; $7d16: $e4
	ld b, b                                          ; $7d17: $40
	ld b, d                                          ; $7d18: $42
	cp [hl]                                          ; $7d19: $be
	add hl, de                                       ; $7d1a: $19
	sbc h                                            ; $7d1b: $9c

jr_064_7d1c:
	jr c, jr_064_7ca9                                ; $7d1c: $38 $8b

	stop                                             ; $7d1e: $10 $00
	nop                                              ; $7d20: $00
	inc bc                                           ; $7d21: $03
	cp $b9                                           ; $7d22: $fe $b9
	cp $ff                                           ; $7d24: $fe $ff
	ld b, a                                          ; $7d26: $47
	nop                                              ; $7d27: $00
	rrca                                             ; $7d28: $0f
	ei                                               ; $7d29: $fb
	inc e                                            ; $7d2a: $1c
	rst FarCall                                          ; $7d2b: $f7
	ld a, $e7                                        ; $7d2c: $3e $e7
	ld [hl], a                                       ; $7d2e: $77
	rst JumpTable                                          ; $7d2f: $c7
	daa                                              ; $7d30: $27
	call $a273                                       ; $7d31: $cd $73 $a2
	sbc [hl]                                         ; $7d34: $9e
	ld e, $bc                                        ; $7d35: $1e $bc
	ld bc, $033f                                     ; $7d37: $01 $3f $03
	inc bc                                           ; $7d3a: $03
	inc bc                                           ; $7d3b: $03
	adc a                                            ; $7d3c: $8f
	ld bc, $0107                                     ; $7d3d: $01 $07 $01
	rlca                                             ; $7d40: $07
	rlca                                             ; $7d41: $07
	ld c, $07                                        ; $7d42: $0e $07
	inc a                                            ; $7d44: $3c
	rra                                              ; $7d45: $1f
	db $fc                                           ; $7d46: $fc
	ld l, a                                          ; $7d47: $6f
	ld sp, hl                                        ; $7d48: $f9
	adc a                                            ; $7d49: $8f
	ld sp, hl                                        ; $7d4a: $f9
	rra                                              ; $7d4b: $1f
	pop af                                           ; $7d4c: $f1
	ld [hl], e                                       ; $7d4d: $73
	cp $7f                                           ; $7d4e: $fe $7f
	ld hl, sp-$69                                    ; $7d50: $f8 $97
	ld a, c                                          ; $7d52: $79
	rra                                              ; $7d53: $1f
	ld a, l                                          ; $7d54: $7d
	rra                                              ; $7d55: $1f
	push af                                          ; $7d56: $f5
	rra                                              ; $7d57: $1f
	rst FarCall                                          ; $7d58: $f7
	rst $38                                          ; $7d59: $ff
	ld e, e                                          ; $7d5a: $5b
	ld h, b                                          ; $7d5b: $60
	ld a, a                                          ; $7d5c: $7f
	rst FarCall                                          ; $7d5d: $f7
	ld a, e                                          ; $7d5e: $7b
	cp h                                             ; $7d5f: $bc
	sbc l                                            ; $7d60: $9d
	rst JumpTable                                          ; $7d61: $c7
	rst SubAFromBC                                          ; $7d62: $e7
	ld a, e                                          ; $7d63: $7b
	cp [hl]                                          ; $7d64: $be
	sbc l                                            ; $7d65: $9d
	rra                                              ; $7d66: $1f
	rrca                                             ; $7d67: $0f
	ld h, e                                          ; $7d68: $63
	ld h, b                                          ; $7d69: $60
	ld h, a                                          ; $7d6a: $67
	and b                                            ; $7d6b: $a0
	ld a, a                                          ; $7d6c: $7f
	ldh [c], a                                       ; $7d6d: $e2
	sub h                                            ; $7d6e: $94
	db $e3                                           ; $7d6f: $e3
	inc e                                            ; $7d70: $1c
	rst $38                                          ; $7d71: $ff
	ld a, $e7                                        ; $7d72: $3e $e7
	ld h, a                                          ; $7d74: $67
	call $521f                                       ; $7d75: $cd $1f $52
	ld e, $0f                                        ; $7d78: $1e $0f
	ld e, e                                          ; $7d7a: $5b
	and b                                            ; $7d7b: $a0
	ld d, e                                          ; $7d7c: $53
	ret nz                                           ; $7d7d: $c0

	ld a, a                                          ; $7d7e: $7f
	cp $99                                           ; $7d7f: $fe $99
	inc c                                            ; $7d81: $0c
	rst $38                                          ; $7d82: $ff
	ld a, a                                          ; $7d83: $7f
	push de                                          ; $7d84: $d5
	rst FarCall                                          ; $7d85: $f7
	ld d, c                                          ; $7d86: $51
	inc sp                                           ; $7d87: $33
	ret nz                                           ; $7d88: $c0

	ld [hl], a                                       ; $7d89: $77
	and b                                            ; $7d8a: $a0
	ld a, e                                          ; $7d8b: $7b
	ldh [c], a                                       ; $7d8c: $e2
	sbc l                                            ; $7d8d: $9d
	scf                                              ; $7d8e: $37
	ld d, b                                          ; $7d8f: $50
	rla                                              ; $7d90: $17
	ret nz                                           ; $7d91: $c0

	cp a                                             ; $7d92: $bf
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	sbc d                                            ; $7d95: $9a
	ld a, c                                          ; $7d96: $79
	ld a, a                                          ; $7d97: $7f
	ld h, c                                          ; $7d98: $61
	ccf                                              ; $7d99: $3f
	ld a, $33                                        ; $7d9a: $3e $33
	ret nz                                           ; $7d9c: $c0

	ld l, a                                          ; $7d9d: $6f
	ldh [c], a                                       ; $7d9e: $e2
	sbc h                                            ; $7d9f: $9c
	ld b, c                                          ; $7da0: $41
	ccf                                              ; $7da1: $3f
	ld a, $5f                                        ; $7da2: $3e $5f
	ret nz                                           ; $7da4: $c0

	sbc d                                            ; $7da5: $9a
	ld l, $24                                        ; $7da6: $2e $24
	inc e                                            ; $7da8: $1c
	jr jr_064_7dab                                   ; $7da9: $18 $00

jr_064_7dab:
	cp [hl]                                          ; $7dab: $be
	inc c                                            ; $7dac: $0c
	nop                                              ; $7dad: $00
	ret nz                                           ; $7dae: $c0

	sub c                                            ; $7daf: $91
	add b                                            ; $7db0: $80
	di                                               ; $7db1: $f3
	pop hl                                           ; $7db2: $e1
	rst $38                                          ; $7db3: $ff
	sbc $cf                                          ; $7db4: $de $cf
	add b                                            ; $7db6: $80
	rst JumpTable                                          ; $7db7: $c7
	add b                                            ; $7db8: $80
	jp $c180                                         ; $7db9: $c3 $80 $c1


	add b                                            ; $7dbc: $80
	ret nz                                           ; $7dbd: $c0

	ld [hl], e                                       ; $7dbe: $73
	cp $9e                                           ; $7dbf: $fe $9e
	ldh [rPCM34], a                                  ; $7dc1: $e0 $77
	ldh [$9c], a                                     ; $7dc3: $e0 $9c
	inc e                                            ; $7dc5: $1c
	ld [$1708], sp                                   ; $7dc6: $08 $08 $17
	ldh [$9b], a                                     ; $7dc9: $e0 $9b
	ld a, $1c                                        ; $7dcb: $3e $1c
	inc e                                            ; $7dcd: $1c
	inc c                                            ; $7dce: $0c
	ld [hl], a                                       ; $7dcf: $77
	sbc $1b                                          ; $7dd0: $de $1b
	ldh [$7b], a                                     ; $7dd2: $e0 $7b
	rst SubAFromDE                                          ; $7dd4: $df
	daa                                              ; $7dd5: $27
	ldh [rAUD2LEN], a                                ; $7dd6: $e0 $16
	ld bc, $7680                                     ; $7dd8: $01 $80 $76
	rst SubAFromDE                                          ; $7ddb: $df
	nop                                              ; $7ddc: $00
	rst $38                                          ; $7ddd: $ff
	or e                                             ; $7dde: $b3
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	ld c, c                                          ; $7de1: $49
	nop                                              ; $7de2: $00
	rra                                              ; $7de3: $1f
	rst $38                                          ; $7de4: $ff
	nop                                              ; $7de5: $00
	db $ed                                           ; $7de6: $ed
	ld e, $b6                                        ; $7de7: $1e $b6
	ld [hl], a                                       ; $7de9: $77
	rst JumpTable                                          ; $7dea: $c7
	rst SubAFromBC                                          ; $7deb: $e7
	adc l                                            ; $7dec: $8d
	ld e, a                                          ; $7ded: $5f
	ld d, e                                          ; $7dee: $53
	ld e, $0d                                        ; $7def: $1e $0d
	ld c, $9e                                        ; $7df1: $0e $9e
	nop                                              ; $7df3: $00
	add b                                            ; $7df4: $80
	add b                                            ; $7df5: $80
	rst GetHLinHL                                          ; $7df6: $cf
	add b                                            ; $7df7: $80
	ld h, b                                          ; $7df8: $60
	add b                                            ; $7df9: $80
	ret nz                                           ; $7dfa: $c0

	ld h, b                                          ; $7dfb: $60
	ldh [rSVBK], a                                   ; $7dfc: $e0 $70
	ldh [$78], a                                     ; $7dfe: $e0 $78
	ldh a, [$7c]                                     ; $7e00: $f0 $7c
	ld hl, sp+$6f                                    ; $7e02: $f8 $6f
	cp $6f                                           ; $7e04: $fe $6f
	rst $38                                          ; $7e06: $ff
	rst GetHLinHL                                          ; $7e07: $cf
	rst AddAOntoHL                                          ; $7e08: $ef
	adc $ef                                          ; $7e09: $ce $ef
	sbc [hl]                                         ; $7e0b: $9e
	rst GetHLinHL                                          ; $7e0c: $cf
	adc d                                            ; $7e0d: $8a
	rst SubAFromDE                                          ; $7e0e: $df
	inc de                                           ; $7e0f: $13
	sbc $1b                                          ; $7e10: $de $1b
	or [hl]                                          ; $7e12: $b6
	dec e                                            ; $7e13: $1d
	or [hl]                                          ; $7e14: $b6
	ld [hl], $6d                                     ; $7e15: $36 $6d
	dec sp                                           ; $7e17: $3b
	ld l, l                                          ; $7e18: $6d
	add [hl]                                         ; $7e19: $86
	ld l, l                                          ; $7e1a: $6d
	db $db                                           ; $7e1b: $db
	ld b, a                                          ; $7e1c: $47
	rst $38                                          ; $7e1d: $ff
	ld h, a                                          ; $7e1e: $67
	db $fd                                           ; $7e1f: $fd
	ld [hl], a                                       ; $7e20: $77
	db $dd                                           ; $7e21: $dd
	ei                                               ; $7e22: $fb
	rst GetHLinHL                                          ; $7e23: $cf
	ld a, [hl]                                       ; $7e24: $7e
	add $3f                                          ; $7e25: $c6 $3f
	jp nz, Jump_064_42bd                             ; $7e27: $c2 $bd $42

	cp l                                             ; $7e2a: $bd
	ld a, [hl]                                       ; $7e2b: $7e
	cp c                                             ; $7e2c: $b9
	ld h, [hl]                                       ; $7e2d: $66
	rst $38                                          ; $7e2e: $ff
	ld h, [hl]                                       ; $7e2f: $66
	db $e4                                           ; $7e30: $e4
	ld b, b                                          ; $7e31: $40
	ld b, d                                          ; $7e32: $42
	cp [hl]                                          ; $7e33: $be
	add hl, de                                       ; $7e34: $19
	sbc h                                            ; $7e35: $9c
	jr c, @-$74                                      ; $7e36: $38 $8a

	stop                                             ; $7e38: $10 $00
	nop                                              ; $7e3a: $00
	inc bc                                           ; $7e3b: $03
	cp $bb                                           ; $7e3c: $fe $bb
	cp $ff                                           ; $7e3e: $fe $ff
	rst $38                                          ; $7e40: $ff
	nop                                              ; $7e41: $00
	rrca                                             ; $7e42: $0f
	rst $38                                          ; $7e43: $ff
	nop                                              ; $7e44: $00
	db $db                                           ; $7e45: $db
	inc a                                            ; $7e46: $3c
	or a                                             ; $7e47: $b7
	halt                                             ; $7e48: $76
	rst JumpTable                                          ; $7e49: $c7
	ld h, a                                          ; $7e4a: $67
	call Call_064_771f                               ; $7e4b: $cd $1f $77
	and d                                            ; $7e4e: $a2
	sbc [hl]                                         ; $7e4f: $9e
	ld e, $bc                                        ; $7e50: $1e $bc
	ld bc, $033f                                     ; $7e52: $01 $3f $03
	inc bc                                           ; $7e55: $03
	inc bc                                           ; $7e56: $03
	adc a                                            ; $7e57: $8f
	ld bc, $0107                                     ; $7e58: $01 $07 $01
	rlca                                             ; $7e5b: $07
	rlca                                             ; $7e5c: $07
	ld c, $07                                        ; $7e5d: $0e $07
	inc a                                            ; $7e5f: $3c
	rra                                              ; $7e60: $1f
	db $fc                                           ; $7e61: $fc
	ld l, a                                          ; $7e62: $6f
	ld sp, hl                                        ; $7e63: $f9
	adc a                                            ; $7e64: $8f
	ld sp, hl                                        ; $7e65: $f9
	rra                                              ; $7e66: $1f
	pop af                                           ; $7e67: $f1
	ld [hl], e                                       ; $7e68: $73
	cp $7f                                           ; $7e69: $fe $7f
	ld hl, sp-$69                                    ; $7e6b: $f8 $97
	ld a, c                                          ; $7e6d: $79
	rra                                              ; $7e6e: $1f
	ld a, l                                          ; $7e6f: $7d
	rra                                              ; $7e70: $1f
	push af                                          ; $7e71: $f5
	rra                                              ; $7e72: $1f
	rst FarCall                                          ; $7e73: $f7
	rst $38                                          ; $7e74: $ff
	ld d, a                                          ; $7e75: $57
	ld h, b                                          ; $7e76: $60
	ld a, e                                          ; $7e77: $7b
	cp $97                                           ; $7e78: $fe $97
	ld e, $e7                                        ; $7e7a: $1e $e7
	ld [hl], a                                       ; $7e7c: $77
	db $dd                                           ; $7e7d: $dd
	rst $38                                          ; $7e7e: $ff
	ld b, e                                          ; $7e7f: $43
	rra                                              ; $7e80: $1f
	rrca                                             ; $7e81: $0f
	ld h, e                                          ; $7e82: $63
	ld h, b                                          ; $7e83: $60
	ld e, a                                          ; $7e84: $5f
	and b                                            ; $7e85: $a0
	ld a, e                                          ; $7e86: $7b
	cp $9e                                           ; $7e87: $fe $9e
	inc a                                            ; $7e89: $3c
	ld a, e                                          ; $7e8a: $7b
	ldh [c], a                                       ; $7e8b: $e2
	sbc [hl]                                         ; $7e8c: $9e
	ld e, a                                          ; $7e8d: $5f
	ld [hl], a                                       ; $7e8e: $77
	ldh [c], a                                       ; $7e8f: $e2
	ld e, a                                          ; $7e90: $5f
	and b                                            ; $7e91: $a0
	ld c, e                                          ; $7e92: $4b
	ret nz                                           ; $7e93: $c0

	ld a, a                                          ; $7e94: $7f
	cp $9a                                           ; $7e95: $fe $9a
	ld a, $fd                                        ; $7e97: $3e $fd
	ld a, a                                          ; $7e99: $7f
	jp $2bd7                                         ; $7e9a: $c3 $d7 $2b


	ret nz                                           ; $7e9d: $c0

	ld [hl], e                                       ; $7e9e: $73
	ldh [c], a                                       ; $7e9f: $e2
	sbc l                                            ; $7ea0: $9d
	ld b, e                                          ; $7ea1: $43
	ld d, a                                          ; $7ea2: $57
	inc de                                           ; $7ea3: $13
	ret nz                                           ; $7ea4: $c0

	ld a, a                                          ; $7ea5: $7f
	cp $9a                                           ; $7ea6: $fe $9a
	ld sp, $c3cf                                     ; $7ea8: $31 $cf $c3
	ccf                                              ; $7eab: $3f
	ld a, $2b                                        ; $7eac: $3e $2b
	ret nz                                           ; $7eae: $c0

	ld a, e                                          ; $7eaf: $7b
	ldh [c], a                                       ; $7eb0: $e2
	ld a, a                                          ; $7eb1: $7f
	ld a, a                                          ; $7eb2: $7f
	ld a, a                                          ; $7eb3: $7f
	ldh [c], a                                       ; $7eb4: $e2
	ld e, a                                          ; $7eb5: $5f
	ret nz                                           ; $7eb6: $c0

	sbc h                                            ; $7eb7: $9c
	ld e, $1c                                        ; $7eb8: $1e $1c
	inc b                                            ; $7eba: $04
	cp l                                             ; $7ebb: $bd
	inc c                                            ; $7ebc: $0c
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	ret nz                                           ; $7ebf: $c0

	sub c                                            ; $7ec0: $91
	add b                                            ; $7ec1: $80
	di                                               ; $7ec2: $f3
	pop hl                                           ; $7ec3: $e1
	rst $38                                          ; $7ec4: $ff
	sbc $cf                                          ; $7ec5: $de $cf
	add b                                            ; $7ec7: $80
	rst JumpTable                                          ; $7ec8: $c7
	add b                                            ; $7ec9: $80
	jp $c180                                         ; $7eca: $c3 $80 $c1


	add b                                            ; $7ecd: $80
	ret nz                                           ; $7ece: $c0

	ld [hl], e                                       ; $7ecf: $73
	cp $98                                           ; $7ed0: $fe $98
	ldh [rP1], a                                     ; $7ed2: $e0 $00
	ld a, $1c                                        ; $7ed4: $3e $1c
	inc e                                            ; $7ed6: $1c
	ld [$be00], sp                                   ; $7ed7: $08 $00 $be

jr_064_7eda:
	inc c                                            ; $7eda: $0c
	nop                                              ; $7edb: $00
	ret nz                                           ; $7edc: $c0

	cpl                                              ; $7edd: $2f
	ldh [$7f], a                                     ; $7ede: $e0 $7f
	cp a                                             ; $7ee0: $bf
	rst SubAFromDE                                          ; $7ee1: $df
	inc c                                            ; $7ee2: $0c
	ld [hl], e                                       ; $7ee3: $73
	sbc $27                                          ; $7ee4: $de $27
	ldh [$de], a                                     ; $7ee6: $e0 $de
	ld e, $7b                                        ; $7ee8: $1e $7b
	pop bc                                           ; $7eea: $c1
	daa                                              ; $7eeb: $27
	ldh [$15], a                                     ; $7eec: $e0 $15
	ld bc, $7680                                     ; $7eee: $01 $80 $76
	rst SubAFromDE                                          ; $7ef1: $df
	nop                                              ; $7ef2: $00
	rst $38                                          ; $7ef3: $ff
	or e                                             ; $7ef4: $b3
	rst $38                                          ; $7ef5: $ff
	rst $38                                          ; $7ef6: $ff
	ld c, c                                          ; $7ef7: $49
	nop                                              ; $7ef8: $00
	rra                                              ; $7ef9: $1f
	rst $38                                          ; $7efa: $ff
	nop                                              ; $7efb: $00
	pop af                                           ; $7efc: $f1
	ld c, $de                                        ; $7efd: $0e $de

Jump_064_7eff:
	ccf                                              ; $7eff: $3f
	rst SubAFromBC                                          ; $7f00: $e7
	ld h, a                                          ; $7f01: $67
	db $dd                                           ; $7f02: $dd
	rst $38                                          ; $7f03: $ff
	ld d, e                                          ; $7f04: $53
	ld e, $0d                                        ; $7f05: $1e $0d
	ld c, $9e                                        ; $7f07: $0e $9e
	nop                                              ; $7f09: $00
	add b                                            ; $7f0a: $80
	add b                                            ; $7f0b: $80
	rst GetHLinHL                                          ; $7f0c: $cf
	add b                                            ; $7f0d: $80
	ld h, b                                          ; $7f0e: $60
	add b                                            ; $7f0f: $80
	ret nz                                           ; $7f10: $c0

	ld h, b                                          ; $7f11: $60
	ldh [rSVBK], a                                   ; $7f12: $e0 $70
	ldh [$78], a                                     ; $7f14: $e0 $78
	ldh a, [$7c]                                     ; $7f16: $f0 $7c
	ld hl, sp+$6f                                    ; $7f18: $f8 $6f
	cp $6f                                           ; $7f1a: $fe $6f
	rst $38                                          ; $7f1c: $ff
	rst GetHLinHL                                          ; $7f1d: $cf
	rst AddAOntoHL                                          ; $7f1e: $ef
	adc $ef                                          ; $7f1f: $ce $ef
	sbc [hl]                                         ; $7f21: $9e
	rst GetHLinHL                                          ; $7f22: $cf
	adc d                                            ; $7f23: $8a
	rst SubAFromDE                                          ; $7f24: $df
	inc de                                           ; $7f25: $13
	sbc $1b                                          ; $7f26: $de $1b
	or [hl]                                          ; $7f28: $b6
	dec e                                            ; $7f29: $1d
	or [hl]                                          ; $7f2a: $b6
	ld [hl], $6d                                     ; $7f2b: $36 $6d
	dec sp                                           ; $7f2d: $3b
	ld l, l                                          ; $7f2e: $6d
	add b                                            ; $7f2f: $80
	ld l, l                                          ; $7f30: $6d
	db $db                                           ; $7f31: $db
	ld b, a                                          ; $7f32: $47
	rst $38                                          ; $7f33: $ff
	ld h, a                                          ; $7f34: $67
	db $fd                                           ; $7f35: $fd
	ld [hl], a                                       ; $7f36: $77
	db $dd                                           ; $7f37: $dd
	ei                                               ; $7f38: $fb
	rst GetHLinHL                                          ; $7f39: $cf
	ld a, [hl]                                       ; $7f3a: $7e
	add $3f                                          ; $7f3b: $c6 $3f
	jp nz, Jump_064_42bd                             ; $7f3d: $c2 $bd $42

	cp l                                             ; $7f40: $bd
	ld a, [hl]                                       ; $7f41: $7e
	cp c                                             ; $7f42: $b9
	ld h, [hl]                                       ; $7f43: $66
	rst $38                                          ; $7f44: $ff
	ld h, [hl]                                       ; $7f45: $66
	db $e4                                           ; $7f46: $e4
	ld b, b                                          ; $7f47: $40
	ld b, d                                          ; $7f48: $42
	nop                                              ; $7f49: $00
	add hl, de                                       ; $7f4a: $19
	nop                                              ; $7f4b: $00
	sbc h                                            ; $7f4c: $9c
	nop                                              ; $7f4d: $00
	jr c, jr_064_7eda                                ; $7f4e: $38 $8a

	stop                                             ; $7f50: $10 $00
	nop                                              ; $7f52: $00
	inc bc                                           ; $7f53: $03
	cp $bb                                           ; $7f54: $fe $bb
	cp $ff                                           ; $7f56: $fe $ff
	rst $38                                          ; $7f58: $ff
	nop                                              ; $7f59: $00
	rrca                                             ; $7f5a: $0f
	rst $38                                          ; $7f5b: $ff
	nop                                              ; $7f5c: $00

jr_064_7f5d:
	rst JumpTable                                          ; $7f5d: $c7
	jr c, jr_064_7f5d                                ; $7f5e: $38 $fd

	ld a, [hl]                                       ; $7f60: $7e
	rst JumpTable                                          ; $7f61: $c7
	ld h, a                                          ; $7f62: $67
	db $dd                                           ; $7f63: $dd
	rra                                              ; $7f64: $1f
	ld [hl], a                                       ; $7f65: $77
	and d                                            ; $7f66: $a2
	sbc b                                            ; $7f67: $98
	ld e, $00                                        ; $7f68: $1e $00
	ld bc, $3f00                                     ; $7f6a: $01 $00 $3f
	nop                                              ; $7f6d: $00
	inc bc                                           ; $7f6e: $03
	ld [hl], a                                       ; $7f6f: $77
	cp $8f                                           ; $7f70: $fe $8f
	ld bc, $0107                                     ; $7f72: $01 $07 $01
	rlca                                             ; $7f75: $07
	rlca                                             ; $7f76: $07
	ld c, $07                                        ; $7f77: $0e $07
	inc a                                            ; $7f79: $3c
	rra                                              ; $7f7a: $1f
	db $fc                                           ; $7f7b: $fc
	ld l, a                                          ; $7f7c: $6f
	ld sp, hl                                        ; $7f7d: $f9
	adc a                                            ; $7f7e: $8f
	ld sp, hl                                        ; $7f7f: $f9
	rra                                              ; $7f80: $1f
	pop af                                           ; $7f81: $f1
	ld [hl], e                                       ; $7f82: $73
	cp $7f                                           ; $7f83: $fe $7f
	ld hl, sp-$69                                    ; $7f85: $f8 $97
	ld a, c                                          ; $7f87: $79
	rra                                              ; $7f88: $1f
	ld a, l                                          ; $7f89: $7d
	rra                                              ; $7f8a: $1f
	push af                                          ; $7f8b: $f5
	rra                                              ; $7f8c: $1f
	rst FarCall                                          ; $7f8d: $f7
	rst $38                                          ; $7f8e: $ff
	ld d, a                                          ; $7f8f: $57
	ld h, b                                          ; $7f90: $60
	ld l, a                                          ; $7f91: $6f
	ld e, [hl]                                       ; $7f92: $5e
	rst SubAFromDE                                          ; $7f93: $df
	rst FarCall                                          ; $7f94: $f7
	sbc h                                            ; $7f95: $9c
	ld d, e                                          ; $7f96: $53
	rra                                              ; $7f97: $1f
	rrca                                             ; $7f98: $0f
	ld h, e                                          ; $7f99: $63
	ld h, b                                          ; $7f9a: $60
	ld e, a                                          ; $7f9b: $5f
	and b                                            ; $7f9c: $a0
	ld [hl], a                                       ; $7f9d: $77
	sbc [hl]                                         ; $7f9e: $9e
	ld a, a                                          ; $7f9f: $7f
	add b                                            ; $7fa0: $80
	ld a, a                                          ; $7fa1: $7f
	ld b, b                                          ; $7fa2: $40
	sbc [hl]                                         ; $7fa3: $9e
	ld d, c                                          ; $7fa4: $51
	ld a, e                                          ; $7fa5: $7b
	ldh [c], a                                       ; $7fa6: $e2
	ld e, a                                          ; $7fa7: $5f
	and b                                            ; $7fa8: $a0
	ld c, a                                          ; $7fa9: $4f
	ret nz                                           ; $7faa: $c0

	ld a, e                                          ; $7fab: $7b
	cp $9a                                           ; $7fac: $fe $9a
	inc e                                            ; $7fae: $1c
	rst $38                                          ; $7faf: $ff
	rst $38                                          ; $7fb0: $ff
	ld b, c                                          ; $7fb1: $41
	rla                                              ; $7fb2: $17
	cpl                                              ; $7fb3: $2f
	ret nz                                           ; $7fb4: $c0

	ld [hl], e                                       ; $7fb5: $73
	ldh [c], a                                       ; $7fb6: $e2
	sbc l                                            ; $7fb7: $9d
	ld a, a                                          ; $7fb8: $7f
	ld d, c                                          ; $7fb9: $51
	ld a, e                                          ; $7fba: $7b
	ldh [c], a                                       ; $7fbb: $e2
	dec de                                           ; $7fbc: $1b
	ret nz                                           ; $7fbd: $c0

	ld a, a                                          ; $7fbe: $7f
	cp $9a                                           ; $7fbf: $fe $9a
	jr @+$81                                         ; $7fc1: $18 $7f

	ld h, e                                          ; $7fc3: $63
	rra                                              ; $7fc4: $1f
	ld e, $2b                                        ; $7fc5: $1e $2b
	ret nz                                           ; $7fc7: $c0

	ld l, e                                          ; $7fc8: $6b
	ldh [c], a                                       ; $7fc9: $e2
	ld e, a                                          ; $7fca: $5f
	ret nz                                           ; $7fcb: $c0

	sbc d                                            ; $7fcc: $9a
	ld e, $14                                        ; $7fcd: $1e $14
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	inc c                                            ; $7fd1: $0c
	db $fc                                           ; $7fd2: $fc
	sub b                                            ; $7fd3: $90
	ret nz                                           ; $7fd4: $c0

	add b                                            ; $7fd5: $80
	di                                               ; $7fd6: $f3
	pop hl                                           ; $7fd7: $e1
	rst $38                                          ; $7fd8: $ff
	sbc $cf                                          ; $7fd9: $de $cf
	add b                                            ; $7fdb: $80
	rst JumpTable                                          ; $7fdc: $c7
	add b                                            ; $7fdd: $80
	jp $c180                                         ; $7fde: $c3 $80 $c1


	add b                                            ; $7fe1: $80
	ret nz                                           ; $7fe2: $c0

	ld [hl], e                                       ; $7fe3: $73
	cp $98                                           ; $7fe4: $fe $98
	ldh [rP1], a                                     ; $7fe6: $e0 $00
	inc e                                            ; $7fe8: $1c
	inc d                                            ; $7fe9: $14
	ld e, $0c                                        ; $7fea: $1e $0c
	ld [$de73], sp                                   ; $7fec: $08 $73 $de
	dec hl                                           ; $7fef: $2b
	ldh [$9c], a                                     ; $7ff0: $e0 $9c
	jr @+$20                                         ; $7ff2: $18 $1e

	inc c                                            ; $7ff4: $0c
	ld a, e                                          ; $7ff5: $7b
	rst SubAFromDE                                          ; $7ff6: $df
	ld a, e                                          ; $7ff7: $7b
	sbc $23                                          ; $7ff8: $de $23
	ldh [$9d], a                                     ; $7ffa: $e0 $9d
	inc e                                            ; $7ffc: $1c
	ld e, $7b                                        ; $7ffd: $1e $7b

Jump_064_7fff:
	pop bc                                           ; $7fff: $c1
