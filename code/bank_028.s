; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

	sbc c                                            ; $4000: $99
	ld b, $97                                        ; $4001: $06 $97
	adc b                                            ; $4003: $88
	ld [hl], a                                       ; $4004: $77
	ld d, l                                          ; $4005: $55
	xor d                                            ; $4006: $aa
	ld [hl+], a                                      ; $4007: $22
	db $dd                                           ; $4008: $dd
	ld d, l                                          ; $4009: $55
	xor d                                            ; $400a: $aa
	daa                                              ; $400b: $27
	ld hl, sp-$73                                    ; $400c: $f8 $8d
	pop bc                                           ; $400e: $c1
	ld a, a                                          ; $400f: $7f
	ld b, d                                          ; $4010: $42
	rst $38                                          ; $4011: $ff
	ld b, d                                          ; $4012: $42
	rst $38                                          ; $4013: $ff
	ld b, [hl]                                       ; $4014: $46
	rst $38                                          ; $4015: $ff
	and [hl]                                         ; $4016: $a6
	ld a, a                                          ; $4017: $7f
	ld l, h                                          ; $4018: $6c
	cp a                                             ; $4019: $bf
	inc l                                            ; $401a: $2c
	rst $38                                          ; $401b: $ff
	ld e, h                                          ; $401c: $5c
	cp a                                             ; $401d: $bf
	ld a, a                                          ; $401e: $7f
	add b                                            ; $401f: $80
	ld h, a                                          ; $4020: $67
	cp $9d                                           ; $4021: $fe $9d
	rst $38                                          ; $4023: $ff
	nop                                              ; $4024: $00
	ld [hl], a                                       ; $4025: $77
	cp $80                                           ; $4026: $fe $80
	push hl                                          ; $4028: $e5
	rra                                              ; $4029: $1f
	ldh a, [c]                                       ; $402a: $f2
	rrca                                             ; $402b: $0f
	di                                               ; $402c: $f3
	rrca                                             ; $402d: $0f
	ld sp, hl                                        ; $402e: $f9
	rlca                                             ; $402f: $07
	db $fc                                           ; $4030: $fc
	inc bc                                           ; $4031: $03
	db $fc                                           ; $4032: $fc
	inc bc                                           ; $4033: $03
	cp $01                                           ; $4034: $fe $01
	rst $38                                          ; $4036: $ff
	nop                                              ; $4037: $00
	and e                                            ; $4038: $a3
	ret nz                                           ; $4039: $c0

	ldh a, [$c0]                                     ; $403a: $f0 $c0
	db $fc                                           ; $403c: $fc
	ret nz                                           ; $403d: $c0

	rst SubAFromDE                                          ; $403e: $df
	ldh [$fc], a                                     ; $403f: $e0 $fc
	rst $38                                          ; $4041: $ff
	ld l, a                                          ; $4042: $6f
	rst $38                                          ; $4043: $ff
	jr c, @+$01                                      ; $4044: $38 $ff

	sub b                                            ; $4046: $90
	sbc h                                            ; $4047: $9c
	ld a, a                                          ; $4048: $7f
	inc bc                                           ; $4049: $03
	rst $38                                          ; $404a: $ff
	ld [hl], a                                       ; $404b: $77
	jp c, $d577                                      ; $404c: $da $77 $d5

	ld [hl], a                                       ; $404f: $77
	rst FarCall                                          ; $4050: $f7
	adc d                                            ; $4051: $8a
	ld a, h                                          ; $4052: $7c
	rst $38                                          ; $4053: $ff
	rra                                              ; $4054: $1f
	dec e                                            ; $4055: $1d
	cp a                                             ; $4056: $bf
	xor c                                            ; $4057: $a9
	rst $38                                          ; $4058: $ff
	jp hl                                            ; $4059: $e9


	ld a, a                                          ; $405a: $7f
	ret                                              ; $405b: $c9


	ld a, a                                          ; $405c: $7f
	ret                                              ; $405d: $c9


	rst $38                                          ; $405e: $ff
	pop de                                           ; $405f: $d1
	ld a, a                                          ; $4060: $7f
	db $d3                                           ; $4061: $d3
	ld a, l                                          ; $4062: $7d
	rst SubAFromDE                                          ; $4063: $df
	rst $38                                          ; $4064: $ff
	nop                                              ; $4065: $00
	cp $73                                           ; $4066: $fe $73
	cp $9e                                           ; $4068: $fe $9e
	db $fc                                           ; $406a: $fc
	ld a, e                                          ; $406b: $7b
	cp $95                                           ; $406c: $fe $95
	ld hl, sp+$00                                    ; $406e: $f8 $00
	ldh a, [rP1]                                     ; $4070: $f0 $00
	rra                                              ; $4072: $1f
	ld [de], a                                       ; $4073: $12
	rra                                              ; $4074: $1f
	ld de, $101f                                     ; $4075: $11 $1f $10
	ld [hl], a                                       ; $4078: $77
	cp $9e                                           ; $4079: $fe $9e
	ld e, $7b                                        ; $407b: $1e $7b
	cp $96                                           ; $407d: $fe $96
	ld a, $10                                        ; $407f: $3e $10
	res 1, a                                         ; $4081: $cb $8f
	adc l                                            ; $4083: $8d
	rrca                                             ; $4084: $0f
	sbc h                                            ; $4085: $9c
	rrca                                             ; $4086: $0f
	inc d                                            ; $4087: $14
	ld a, e                                          ; $4088: $7b
	jp hl                                            ; $4089: $e9


	ld [hl], a                                       ; $408a: $77
	cp $df                                           ; $408b: $fe $df
	rra                                              ; $408d: $1f
	sub [hl]                                         ; $408e: $96
	ld a, [bc]                                       ; $408f: $0a
	rrca                                             ; $4090: $0f
	adc d                                            ; $4091: $8a
	adc a                                            ; $4092: $8f
	ldh a, [c]                                       ; $4093: $f2
	rst $38                                          ; $4094: $ff
	jp nz, $c17f                                     ; $4095: $c2 $7f $c1

	ld l, e                                          ; $4098: $6b
	cp $8f                                           ; $4099: $fe $8f
	add sp, $1f                                      ; $409b: $e8 $1f
	db $ed                                           ; $409d: $ed
	ld a, [de]                                       ; $409e: $1a
	ld [$ed1d], a                                    ; $409f: $ea $1d $ed
	ld a, [de]                                       ; $40a2: $1a
	ret z                                            ; $40a3: $c8

	ccf                                              ; $40a4: $3f
	call $da3a                                       ; $40a5: $cd $3a $da
	dec a                                            ; $40a8: $3d
	sbc l                                            ; $40a9: $9d
	ld a, d                                          ; $40aa: $7a
	rlca                                             ; $40ab: $07
	jr nc, @+$05                                     ; $40ac: $30 $03

	ld hl, sp+$4b                                    ; $40ae: $f8 $4b
	ld hl, sp-$6a                                    ; $40b0: $f8 $96
	sbc b                                            ; $40b2: $98
	ld a, a                                          ; $40b3: $7f
	ld e, b                                          ; $40b4: $58
	xor a                                            ; $40b5: $af
	jr z, @-$1f                                      ; $40b6: $28 $df

	ld e, b                                          ; $40b8: $58
	xor a                                            ; $40b9: $af
	adc b                                            ; $40ba: $88
	ld l, e                                          ; $40bb: $6b
	ld hl, sp+$6f                                    ; $40bc: $f8 $6f
	ld a, [bc]                                       ; $40be: $0a
	ld [hl], a                                       ; $40bf: $77
	cp $76                                           ; $40c0: $fe $76
	db $fc                                           ; $40c2: $fc
	sbc l                                            ; $40c3: $9d
	rra                                              ; $40c4: $1f
	ldh [rPCM34], a                                  ; $40c5: $e0 $77
	or $98                                           ; $40c7: $f6 $98
	rlca                                             ; $40c9: $07
	ld hl, sp-$7f                                    ; $40ca: $f8 $81
	ld a, [hl]                                       ; $40cc: $7e
	ret nz                                           ; $40cd: $c0

	ccf                                              ; $40ce: $3f
	db $e4                                           ; $40cf: $e4
	ld a, d                                          ; $40d0: $7a
	or $7e                                           ; $40d1: $f6 $7e
	ld hl, sp+$7b                                    ; $40d3: $f8 $7b
	ld a, b                                          ; $40d5: $78
	sub a                                            ; $40d6: $97

jr_028_40d7:
	ccf                                              ; $40d7: $3f
	push hl                                          ; $40d8: $e5
	rra                                              ; $40d9: $1f
	push hl                                          ; $40da: $e5
	rra                                              ; $40db: $1f
	dec b                                            ; $40dc: $05
	rst $38                                          ; $40dd: $ff
	inc c                                            ; $40de: $0c
	ld a, e                                          ; $40df: $7b

Call_028_40e0:
	cp $9b                                           ; $40e0: $fe $9b
	adc b                                            ; $40e2: $88
	rst $38                                          ; $40e3: $ff
	add e                                            ; $40e4: $83
	add e                                            ; $40e5: $83
	db $fd                                           ; $40e6: $fd
	rst SubAFromDE                                          ; $40e7: $df
	rrca                                             ; $40e8: $0f
	ld a, a                                          ; $40e9: $7f
	cpl                                              ; $40ea: $2f
	add b                                            ; $40eb: $80
	and b                                            ; $40ec: $a0
	cp a                                             ; $40ed: $bf
	ret nz                                           ; $40ee: $c0

	rst $38                                          ; $40ef: $ff
	ret nz                                           ; $40f0: $c0

	rst $38                                          ; $40f1: $ff
	ld sp, hl                                        ; $40f2: $f9
	or $fb                                           ; $40f3: $f6 $fb
	ldh [rSTAT], a                                   ; $40f5: $e0 $41

jr_028_40f7:
	ld [hl], b                                       ; $40f7: $70
	ret c                                            ; $40f8: $d8

	ldh [$3c], a                                     ; $40f9: $e0 $3c
	ldh [rAUD3HIGH], a                               ; $40fb: $e0 $1e
	ldh a, [rIF]                                     ; $40fd: $f0 $0f
	ld hl, sp-$01                                    ; $40ff: $f8 $ff
	inc b                                            ; $4101: $04
	ret nz                                           ; $4102: $c0

	add b                                            ; $4103: $80
	ret nz                                           ; $4104: $c0

	ld b, b                                          ; $4105: $40
	ldh [rAUD4LEN], a                                ; $4106: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $4108: $f0 $10
	ld a, b                                          ; $410a: $78
	add d                                            ; $410b: $82
	ld [$043f], sp                                   ; $410c: $08 $3f $04
	inc de                                           ; $410f: $13
	rrca                                             ; $4110: $0f
	sub c                                            ; $4111: $91
	rrca                                             ; $4112: $0f
	ld a, $10                                        ; $4113: $3e $10
	inc a                                            ; $4115: $3c
	jr nc, jr_028_4194                               ; $4116: $30 $7c

	jr nz, jr_028_4196                               ; $4118: $20 $7c

jr_028_411a:
	jr nz, jr_028_411a                               ; $411a: $20 $fe

	ld h, b                                          ; $411c: $60
	cp $c0                                           ; $411d: $fe $c0
	rst $38                                          ; $411f: $ff
	ldh [rIE], a                                     ; $4120: $e0 $ff
	pop af                                           ; $4122: $f1
	rra                                              ; $4123: $1f
	ld de, $181e                                     ; $4124: $11 $1e $18
	ld e, $08                                        ; $4127: $1e $08
	ld [hl], a                                       ; $4129: $77
	cp $7f                                           ; $412a: $fe $7f
	and $7f                                          ; $412c: $e6 $7f
	ld [$a67e], a                                    ; $412e: $ea $7e $a6
	add b                                            ; $4131: $80
	jp nz, $c2ff                                     ; $4132: $c2 $ff $c2

	rst $38                                          ; $4135: $ff
	ld a, [hl]                                       ; $4136: $7e
	ld a, a                                          ; $4137: $7f

jr_028_4138:
	ld l, e                                          ; $4138: $6b
	scf                                              ; $4139: $37
	ld a, [hl]                                       ; $413a: $7e
	ld de, $107f                                     ; $413b: $11 $7f $10
	rst FarCall                                          ; $413e: $f7
	jr jr_028_4138                                   ; $413f: $18 $f7

	jr jr_028_40d7                                   ; $4141: $18 $94

	ld a, a                                          ; $4143: $7f
	dec l                                            ; $4144: $2d
	or $3e                                           ; $4145: $f6 $3e
	push hl                                          ; $4147: $e5
	ld e, e                                          ; $4148: $5b
	and $de                                          ; $4149: $e6 $de
	db $e3                                           ; $414b: $e3
	cp c                                             ; $414c: $b9
	ld a, a                                          ; $414d: $7f
	rst SubAFromDE                                          ; $414e: $df
	ccf                                              ; $414f: $3f
	rst $38                                          ; $4150: $ff
	sbc [hl]                                         ; $4151: $9e
	ld de, $404f                                     ; $4152: $11 $4f $40
	sbc [hl]                                         ; $4155: $9e
	push de                                          ; $4156: $d5
	inc bc                                           ; $4157: $03
	jr nz, jr_028_40f7                               ; $4158: $20 $9d

	xor d                                            ; $415a: $aa
	ld d, l                                          ; $415b: $55
	rrca                                             ; $415c: $0f
	db $fc                                           ; $415d: $fc
	sub l                                            ; $415e: $95
	xor b                                            ; $415f: $a8
	ld e, a                                          ; $4160: $5f
	ld e, b                                          ; $4161: $58
	xor a                                            ; $4162: $af
	xor b                                            ; $4163: $a8
	ld e, a                                          ; $4164: $5f
	ld d, h                                          ; $4165: $54
	xor a                                            ; $4166: $af
	xor h                                            ; $4167: $ac
	ld d, a                                          ; $4168: $57
	ld l, a                                          ; $4169: $6f
	db $fc                                           ; $416a: $fc
	sbc e                                            ; $416b: $9b
	rrca                                             ; $416c: $0f
	ldh a, [rTAC]                                    ; $416d: $f0 $07
	ld hl, sp+$7a                                    ; $416f: $f8 $7a
	dec d                                            ; $4171: $15
	sub [hl]                                         ; $4172: $96
	db $fc                                           ; $4173: $fc
	rlca                                             ; $4174: $07
	ld hl, sp+$0f                                    ; $4175: $f8 $0f
	ldh a, [rAUD3LEVEL]                              ; $4177: $f0 $1c
	db $e3                                           ; $4179: $e3
	add hl, sp                                       ; $417a: $39
	rst JumpTable                                          ; $417b: $c7
	ld l, [hl]                                       ; $417c: $6e
	ld a, [bc]                                       ; $417d: $0a
	ld a, a                                          ; $417e: $7f
	cp $7f                                           ; $417f: $fe $7f
	inc sp                                           ; $4181: $33
	adc l                                            ; $4182: $8d
	rrca                                             ; $4183: $0f
	rst $38                                          ; $4184: $ff
	ld [hl], e                                       ; $4185: $73
	db $fc                                           ; $4186: $fc
	rst AddAOntoHL                                          ; $4187: $ef
	ldh a, [$e8]                                     ; $4188: $f0 $e8
	rst $38                                          ; $418a: $ff
	ld a, [hl]                                       ; $418b: $7e
	rst $38                                          ; $418c: $ff
	ccf                                              ; $418d: $3f
	rst $38                                          ; $418e: $ff
	sbc c                                            ; $418f: $99
	ld a, a                                          ; $4190: $7f
	pop hl                                           ; $4191: $e1
	rst $38                                          ; $4192: $ff

jr_028_4193:
	inc bc                                           ; $4193: $03

jr_028_4194:
	rst $38                                          ; $4194: $ff
	ld a, c                                          ; $4195: $79

jr_028_4196:
	and $96                                          ; $4196: $e6 $96
	ld c, $c7                                        ; $4198: $0e $c7
	ld hl, sp-$61                                    ; $419a: $f8 $9f

jr_028_419c:
	ldh [$bf], a                                     ; $419c: $e0 $bf
	ret nz                                           ; $419e: $c0

	ccf                                              ; $419f: $3f
	ret nz                                           ; $41a0: $c0

	ld h, l                                          ; $41a1: $65
	ret nc                                           ; $41a2: $d0

	sub a                                            ; $41a3: $97
	rst $38                                          ; $41a4: $ff
	ld [bc], a                                       ; $41a5: $02
	rst $38                                          ; $41a6: $ff
	ld bc, $01ff                                     ; $41a7: $01 $ff $01
	cp $01                                           ; $41aa: $fe $01
	ld [hl], l                                       ; $41ac: $75
	ret nc                                           ; $41ad: $d0

	ld [hl], a                                       ; $41ae: $77
	cp $8c                                           ; $41af: $fe $8c
	or b                                             ; $41b1: $b0
	ld c, a                                          ; $41b2: $4f
	jr jr_028_419c                                   ; $41b3: $18 $e7

	inc e                                            ; $41b5: $1c
	db $e3                                           ; $41b6: $e3

jr_028_41b7:
	adc [hl]                                         ; $41b7: $8e
	pop af                                           ; $41b8: $f1
	ld b, a                                          ; $41b9: $47
	ld sp, hl                                        ; $41ba: $f9
	ld b, e                                          ; $41bb: $43
	rst $38                                          ; $41bc: $ff
	daa                                              ; $41bd: $27
	rst $38                                          ; $41be: $ff
	ld l, $ff                                        ; $41bf: $2e $ff
	sbc a                                            ; $41c1: $9f
	rst $38                                          ; $41c2: $ff
	call z, $da7a                                    ; $41c3: $cc $7a $da
	ld a, a                                          ; $41c6: $7f
	rlca                                             ; $41c7: $07
	add b                                            ; $41c8: $80
	rst $38                                          ; $41c9: $ff
	ldh a, [$df]                                     ; $41ca: $f0 $df
	ld hl, sp-$74                                    ; $41cc: $f8 $8c
	rst $38                                          ; $41ce: $ff
	add [hl]                                         ; $41cf: $86
	rst $38                                          ; $41d0: $ff
	jr c, jr_028_4193                                ; $41d1: $38 $c0

jr_028_41d3:
	ld de, $03e0                                     ; $41d3: $11 $e0 $03
	ldh [rPCM34], a                                  ; $41d6: $e0 $77
	add b                                            ; $41d8: $80
	rst FarCall                                          ; $41d9: $f7
	ld [$7887], sp                                   ; $41da: $08 $87 $78
	inc bc                                           ; $41dd: $03
	rst $38                                          ; $41de: $ff
	inc e                                            ; $41df: $1c
	rst $38                                          ; $41e0: $ff
	rst FarCall                                          ; $41e1: $f7
	jr jr_028_41d3                                   ; $41e2: $18 $ef

	jr c, @-$0f                                      ; $41e4: $38 $ef

	jr c, jr_028_41b7                                ; $41e6: $38 $cf

	add b                                            ; $41e8: $80
	ld a, b                                          ; $41e9: $78
	rst JumpTable                                          ; $41ea: $c7
	ld a, b                                          ; $41eb: $78

jr_028_41ec:
	sub a                                            ; $41ec: $97
	ld hl, sp+$27                                    ; $41ed: $f8 $27
	ld hl, sp+$4f                                    ; $41ef: $f8 $4f
	ldh a, [$ef]                                     ; $41f1: $f0 $ef
	jr jr_028_41ec                                   ; $41f3: $18 $f7

	ld c, $f7                                        ; $41f5: $0e $f7
	rrca                                             ; $41f7: $0f
	ei                                               ; $41f8: $fb
	rlca                                             ; $41f9: $07
	ei                                               ; $41fa: $fb
	rlca                                             ; $41fb: $07
	db $fd                                           ; $41fc: $fd
	inc bc                                           ; $41fd: $03
	db $fd                                           ; $41fe: $fd
	inc bc                                           ; $41ff: $03
	rst $38                                          ; $4200: $ff
	ld bc, $d5aa                                     ; $4201: $01 $aa $d5
	push de                                          ; $4204: $d5
	ld l, d                                          ; $4205: $6a
	ld [$9535], a                                    ; $4206: $ea $35 $95
	push af                                          ; $4209: $f5
	xor d                                            ; $420a: $aa
	ld [$35b5], a                                    ; $420b: $ea $b5 $35
	ld [$f52a], a                                    ; $420e: $ea $2a $f5
	ld d, l                                          ; $4211: $55
	ld [$2007], a                                    ; $4212: $ea $07 $20
	rlca                                             ; $4215: $07
	db $fc                                           ; $4216: $fc
	ld l, a                                          ; $4217: $6f
	ld [$5681], sp                                   ; $4218: $08 $81 $56
	xor a                                            ; $421b: $af
	xor a                                            ; $421c: $af
	ld d, a                                          ; $421d: $57
	ld d, a                                          ; $421e: $57
	xor e                                            ; $421f: $ab
	xor d                                            ; $4220: $aa
	ld d, a                                          ; $4221: $57
	ld d, [hl]                                       ; $4222: $56
	xor e                                            ; $4223: $ab
	add hl, sp                                       ; $4224: $39
	rst JumpTable                                          ; $4225: $c7
	dec e                                            ; $4226: $1d
	db $e3                                           ; $4227: $e3
	dec c                                            ; $4228: $0d
	di                                               ; $4229: $f3
	dec c                                            ; $422a: $0d
	di                                               ; $422b: $f3
	rrca                                             ; $422c: $0f
	pop af                                           ; $422d: $f1
	add a                                            ; $422e: $87
	ld sp, hl                                        ; $422f: $f9
	add $f9                                          ; $4230: $c6 $f9
	ld h, a                                          ; $4232: $67
	ld hl, sp-$21                                    ; $4233: $f8 $df
	ldh [rIE], a                                     ; $4235: $e0 $ff
	ret nz                                           ; $4237: $c0

	ld a, d                                          ; $4238: $7a
	daa                                              ; $4239: $27
	ld h, b                                          ; $423a: $60
	xor $95                                          ; $423b: $ee $95
	push hl                                          ; $423d: $e5
	ld e, $e7                                        ; $423e: $1e $e7
	inc e                                            ; $4240: $1c
	db $eb                                           ; $4241: $eb
	inc e                                            ; $4242: $1c
	rst GetHLinHL                                          ; $4243: $cf
	jr nc, @-$5f                                     ; $4244: $30 $9f

	ld h, b                                          ; $4246: $60
	ld [hl], a                                       ; $4247: $77
	ldh a, [c]                                       ; $4248: $f2
	ld a, a                                          ; $4249: $7f
	jr nz, jr_028_42b1                               ; $424a: $20 $65

	jp nc, $0e7f                                     ; $424c: $d2 $7f $0e

	sub c                                            ; $424f: $91
	ld hl, sp+$07                                    ; $4250: $f8 $07
	ldh [$1f], a                                     ; $4252: $e0 $1f
	nop                                              ; $4254: $00
	rst $38                                          ; $4255: $ff
	ld hl, sp+$07                                    ; $4256: $f8 $07
	ldh a, [rIF]                                     ; $4258: $f0 $0f
	ldh [$1f], a                                     ; $425a: $e0 $1f
	add b                                            ; $425c: $80
	ld a, a                                          ; $425d: $7f
	ld l, a                                          ; $425e: $6f
	jp hl                                            ; $425f: $e9


	ld a, [hl]                                       ; $4260: $7e
	sub $80                                          ; $4261: $d6 $80
	inc [hl]                                         ; $4263: $34
	rst FarCall                                          ; $4264: $f7
	inc h                                            ; $4265: $24
	xor $44                                          ; $4266: $ee $44
	push de                                          ; $4268: $d5
	ld b, h                                          ; $4269: $44
	xor $48                                          ; $426a: $ee $48
	db $dd                                           ; $426c: $dd
	ld c, b                                          ; $426d: $48
	ld [$d888], a                                    ; $426e: $ea $88 $d8
	add b                                            ; $4271: $80
	xor b                                            ; $4272: $a8
	add e                                            ; $4273: $83
	rst SubAFromDE                                          ; $4274: $df
	add e                                            ; $4275: $83
	rst AddAOntoHL                                          ; $4276: $ef
	add d                                            ; $4277: $82
	rst SubAFromHL                                          ; $4278: $d7
	add d                                            ; $4279: $82
	xor e                                            ; $427a: $ab
	add d                                            ; $427b: $82
	db $d3                                           ; $427c: $d3
	add d                                            ; $427d: $82
	and e                                            ; $427e: $a3
	add c                                            ; $427f: $81
	pop bc                                           ; $4280: $c1
	add c                                            ; $4281: $81
	sub a                                            ; $4282: $97
	pop bc                                           ; $4283: $c1
	pop hl                                           ; $4284: $e1
	rst $38                                          ; $4285: $ff
	add b                                            ; $4286: $80
	rst $38                                          ; $4287: $ff
	ld h, b                                          ; $4288: $60
	rst $38                                          ; $4289: $ff
	rra                                              ; $428a: $1f
	ld h, c                                          ; $428b: $61
	adc c                                            ; $428c: $89
	ld a, l                                          ; $428d: $7d
	adc [hl]                                         ; $428e: $8e
	ld a, a                                          ; $428f: $7f
	cp $7e                                           ; $4290: $fe $7e
	add h                                            ; $4292: $84
	ld [hl], l                                       ; $4293: $75
	adc c                                            ; $4294: $89
	ld a, [hl]                                       ; $4295: $7e
	xor h                                            ; $4296: $ac
	ld a, a                                          ; $4297: $7f
	cp $79                                           ; $4298: $fe $79
	add b                                            ; $429a: $80
	ld a, d                                          ; $429b: $7a
	or h                                             ; $429c: $b4
	ld a, a                                          ; $429d: $7f
	cp $9b                                           ; $429e: $fe $9b
	ld a, [hl]                                       ; $42a0: $7e
	add c                                            ; $42a1: $81
	rrca                                             ; $42a2: $0f
	ldh a, [$6f]                                     ; $42a3: $f0 $6f
	rst SubAFromDE                                          ; $42a5: $df
	sbc d                                            ; $42a6: $9a
	ld l, d                                          ; $42a7: $6a
	push de                                          ; $42a8: $d5
	ld d, l                                          ; $42a9: $55
	ld [$766a], a                                    ; $42aa: $ea $6a $76
	db $fc                                           ; $42ad: $fc
	sbc l                                            ; $42ae: $9d
	ld [hl], l                                       ; $42af: $75
	or l                                             ; $42b0: $b5

jr_028_42b1:
	halt                                             ; $42b1: $76
	ld hl, sp-$62                                    ; $42b2: $f8 $9e
	ld a, [hl+]                                      ; $42b4: $2a
	inc bc                                           ; $42b5: $03
	inc e                                            ; $42b6: $1c
	sbc b                                            ; $42b7: $98
	ld d, l                                          ; $42b8: $55
	db $dd                                           ; $42b9: $dd
	ld [hl+], a                                      ; $42ba: $22
	xor d                                            ; $42bb: $aa
	ld d, l                                          ; $42bc: $55
	ld [hl], a                                       ; $42bd: $77
	adc b                                            ; $42be: $88
	inc hl                                           ; $42bf: $23
	ld hl, sp-$68                                    ; $42c0: $f8 $98
	ld d, a                                          ; $42c2: $57
	sbc $23                                          ; $42c3: $de $23
	xor d                                            ; $42c5: $aa
	ld d, a                                          ; $42c6: $57
	halt                                             ; $42c7: $76
	adc e                                            ; $42c8: $8b
	ld l, a                                          ; $42c9: $6f
	ld hl, sp-$66                                    ; $42ca: $f8 $9a
	ld [hl], a                                       ; $42cc: $77
	adc c                                            ; $42cd: $89
	daa                                              ; $42ce: $27
	ld hl, sp+$13                                    ; $42cf: $f8 $13
	ld h, [hl]                                       ; $42d1: $66
	ld b, l                                          ; $42d2: $45
	ld a, e                                          ; $42d3: $7b
	cp $7f                                           ; $42d4: $fe $7f
	add l                                            ; $42d6: $85
	ld e, h                                          ; $42d7: $5c
	ldh a, [$67]                                     ; $42d8: $f0 $67
	ld a, [de]                                       ; $42da: $1a
	ld l, a                                          ; $42db: $6f

jr_028_42dc:
	ld e, $7f                                        ; $42dc: $1e $7f
	ld h, e                                          ; $42de: $63
	ld h, a                                          ; $42df: $67
	inc e                                            ; $42e0: $1c
	ld d, a                                          ; $42e1: $57
	cp $8b                                           ; $42e2: $fe $8b
	ld b, b                                          ; $42e4: $40
	rst $38                                          ; $42e5: $ff
	rst JumpTable                                          ; $42e6: $c7
	rst $38                                          ; $42e7: $ff
	ld [bc], a                                       ; $42e8: $02
	cp $04                                           ; $42e9: $fe $04
	db $fc                                           ; $42eb: $fc
	ld [$10f8], sp                                   ; $42ec: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $42ef: $f0 $20
	ldh [$60], a                                     ; $42f1: $e0 $60
	ldh [$e0], a                                     ; $42f3: $e0 $e0
	ldh a, [rP1]                                     ; $42f5: $f0 $00
	ld [$fe7b], sp                                   ; $42f7: $08 $7b $fe
	or $97                                           ; $42fa: $f6 $97
	ld b, b                                          ; $42fc: $40
	ld h, b                                          ; $42fd: $60
	ld b, b                                          ; $42fe: $40
	ld d, b                                          ; $42ff: $50
	ld b, b                                          ; $4300: $40
	ld l, b                                          ; $4301: $68
	ld b, b                                          ; $4302: $40
	ld d, h                                          ; $4303: $54
	ld [hl], e                                       ; $4304: $73
	db $fc                                           ; $4305: $fc
	adc d                                            ; $4306: $8a
	ld l, d                                          ; $4307: $6a
	ld b, b                                          ; $4308: $40
	ld d, h                                          ; $4309: $54
	add b                                            ; $430a: $80
	rst $38                                          ; $430b: $ff
	ld b, b                                          ; $430c: $40
	ld a, a                                          ; $430d: $7f
	jr nc, jr_028_434f                               ; $430e: $30 $3f

	ld [$041f], sp                                   ; $4310: $08 $1f $04
	rrca                                             ; $4313: $0f
	inc b                                            ; $4314: $04
	rlca                                             ; $4315: $07
	inc b                                            ; $4316: $04
	rlca                                             ; $4317: $07
	ld b, $07                                        ; $4318: $06 $07
	rrca                                             ; $431a: $0f
	ldh a, [rPCM34]                                  ; $431b: $f0 $77
	adc d                                            ; $431d: $8a
	ld l, a                                          ; $431e: $6f
	or d                                             ; $431f: $b2
	ld [hl], a                                       ; $4320: $77
	dec b                                            ; $4321: $05
	ld d, a                                          ; $4322: $57
	and c                                            ; $4323: $a1
	ld a, a                                          ; $4324: $7f
	ld l, a                                          ; $4325: $6f
	adc [hl]                                         ; $4326: $8e
	pop af                                           ; $4327: $f1
	rrca                                             ; $4328: $0f
	ld [$fd35], a                                    ; $4329: $ea $35 $fd
	ld [hl+], a                                      ; $432c: $22
	ld [$f735], a                                    ; $432d: $ea $35 $f7
	jr z, jr_028_42dc                                ; $4330: $28 $aa

	ld [hl], l                                       ; $4332: $75
	db $dd                                           ; $4333: $dd
	ld h, d                                          ; $4334: $62
	ld l, d                                          ; $4335: $6a
	push de                                          ; $4336: $d5
	rst FarCall                                          ; $4337: $f7
	rra                                              ; $4338: $1f
	jr z, @+$05                                      ; $4339: $28 $03

	ld hl, sp+$6f                                    ; $433b: $f8 $6f
	ld hl, sp-$65                                    ; $433d: $f8 $9b
	xor e                                            ; $433f: $ab
	ld d, l                                          ; $4340: $55
	db $dd                                           ; $4341: $dd
	inc hl                                           ; $4342: $23
	ld d, a                                          ; $4343: $57
	ldh a, [rPCM34]                                  ; $4344: $f0 $77
	sub a                                            ; $4346: $97
	ld a, e                                          ; $4347: $7b
	ld l, h                                          ; $4348: $6c
	sub d                                            ; $4349: $92
	rst $38                                          ; $434a: $ff
	and b                                            ; $434b: $a0
	ld a, a                                          ; $434c: $7f
	ret nc                                           ; $434d: $d0

	ccf                                              ; $434e: $3f

jr_028_434f:
	xor b                                            ; $434f: $a8
	ld e, a                                          ; $4350: $5f
	ld [hl], h                                       ; $4351: $74
	adc a                                            ; $4352: $8f
	inc a                                            ; $4353: $3c
	jp $f708                                         ; $4354: $c3 $08 $f7


	ld c, a                                          ; $4357: $4f
	inc e                                            ; $4358: $1c
	ld a, l                                          ; $4359: $7d
	ld hl, $1d7d                                     ; $435a: $21 $7d $1d
	sub h                                            ; $435d: $94
	ld b, $ff                                        ; $435e: $06 $ff
	inc c                                            ; $4360: $0c
	rst $38                                          ; $4361: $ff
	jr @+$01                                         ; $4362: $18 $ff

	jr nc, @+$01                                     ; $4364: $30 $ff

	ld [hl], a                                       ; $4366: $77
	rst $38                                          ; $4367: $ff
	add c                                            ; $4368: $81
	ld a, b                                          ; $4369: $78
	ld hl, sp+$67                                    ; $436a: $f8 $67
	ldh a, [c]                                       ; $436c: $f2
	ld a, [hl]                                       ; $436d: $7e
	ld d, e                                          ; $436e: $53
	ld a, a                                          ; $436f: $7f
	ldh a, [c]                                       ; $4370: $f2
	sbc [hl]                                         ; $4371: $9e
	ldh a, [$de]                                     ; $4372: $f0 $de
	ld hl, sp-$64                                    ; $4374: $f8 $9c
	ret z                                            ; $4376: $c8

	ld hl, sp-$39                                    ; $4377: $f8 $c7
	ld a, e                                          ; $4379: $7b
	cp h                                             ; $437a: $bc
	ld l, a                                          ; $437b: $6f
	cp $98                                           ; $437c: $fe $98
	nop                                              ; $437e: $00
	ld bc, $0f07                                     ; $437f: $01 $07 $0f
	ld a, l                                          ; $4382: $7d
	rst $38                                          ; $4383: $ff
	adc l                                            ; $4384: $8d
	ld a, e                                          ; $4385: $7b
	sbc $6f                                          ; $4386: $de $6f
	cp $9a                                           ; $4388: $fe $9a
	ldh a, [$fa]                                     ; $438a: $f0 $fa
	cp $ff                                           ; $438c: $fe $ff
	add e                                            ; $438e: $83
	ld [hl], e                                       ; $438f: $73
	and $7d                                          ; $4390: $e6 $7d
	xor e                                            ; $4392: $ab
	ld a, a                                          ; $4393: $7f
	sbc d                                            ; $4394: $9a
	ld a, b                                          ; $4395: $78
	pop de                                           ; $4396: $d1
	sbc c                                            ; $4397: $99
	inc bc                                           ; $4398: $03
	ld [bc], a                                       ; $4399: $02
	rlca                                             ; $439a: $07
	rst JumpTable                                          ; $439b: $c7
	rst AddAOntoHL                                          ; $439c: $ef
	ld a, a                                          ; $439d: $7f
	ld h, e                                          ; $439e: $63
	and d                                            ; $439f: $a2
	ld [hl], h                                       ; $43a0: $74
	add [hl]                                         ; $43a1: $86
	ld a, a                                          ; $43a2: $7f
	cp $9c                                           ; $43a3: $fe $9c
	add e                                            ; $43a5: $83
	db $fc                                           ; $43a6: $fc
	ldh a, [$79]                                     ; $43a7: $f0 $79
	db $ec                                           ; $43a9: $ec
	adc a                                            ; $43aa: $8f
	ld c, $fd                                        ; $43ab: $0e $fd
	rlca                                             ; $43ad: $07
	db $fc                                           ; $43ae: $fc
	and $1f                                          ; $43af: $e6 $1f
	call $9a3a                                       ; $43b1: $cd $3a $9a
	ld [hl], l                                       ; $43b4: $75
	scf                                              ; $43b5: $37
	add sp, $6a                                      ; $43b6: $e8 $6a
	push de                                          ; $43b8: $d5
	db $dd                                           ; $43b9: $dd
	and d                                            ; $43ba: $a2
	inc bc                                           ; $43bb: $03
	jr nc, @+$3d                                     ; $43bc: $30 $3b

	ld hl, sp+$7f                                    ; $43be: $f8 $7f
	ld a, [$fc03]                                    ; $43c0: $fa $03 $fc
	ld d, e                                          ; $43c3: $53
	db $fc                                           ; $43c4: $fc
	sbc d                                            ; $43c5: $9a
	rst SubAFromDE                                          ; $43c6: $df
	inc hl                                           ; $43c7: $23
	halt                                             ; $43c8: $76
	adc e                                            ; $43c9: $8b
	sbc $73                                          ; $43ca: $de $73
	db $fc                                           ; $43cc: $fc
	sbc b                                            ; $43cd: $98
	ld [hl], a                                       ; $43ce: $77
	adc a                                            ; $43cf: $8f
	call c, Call_028_7427                            ; $43d0: $dc $27 $74
	adc a                                            ; $43d3: $8f
	nop                                              ; $43d4: $00
	ld a, e                                          ; $43d5: $7b
	ld e, b                                          ; $43d6: $58
	sbc h                                            ; $43d7: $9c
	ld sp, $0fff                                     ; $43d8: $31 $ff $0f
	ld a, e                                          ; $43db: $7b
	ld h, [hl]                                       ; $43dc: $66
	rst SubAFromDE                                          ; $43dd: $df
	rst $38                                          ; $43de: $ff
	ld [hl], a                                       ; $43df: $77
	ld h, b                                          ; $43e0: $60
	sbc d                                            ; $43e1: $9a
	ld a, [hl]                                       ; $43e2: $7e
	rst $38                                          ; $43e3: $ff
	and $ff                                          ; $43e4: $e6 $ff
	add d                                            ; $43e6: $82
	ld [hl], d                                       ; $43e7: $72
	cp $df                                           ; $43e8: $fe $df
	rst $38                                          ; $43ea: $ff
	sbc h                                            ; $43eb: $9c
	inc b                                            ; $43ec: $04
	rst $38                                          ; $43ed: $ff
	ld [$f27a], sp                                   ; $43ee: $08 $7a $f2
	ld [hl], a                                       ; $43f1: $77
	cp $7f                                           ; $43f2: $fe $7f
	ldh a, [$7f]                                     ; $43f4: $f0 $7f
	cp $9c                                           ; $43f6: $fe $9c
	jp nz, $38ff                                     ; $43f8: $c2 $ff $38

	ld a, e                                          ; $43fb: $7b
	ld [$209d], a                                    ; $43fc: $ea $9d $20
	rst SubAFromDE                                          ; $43ff: $df
	ld [hl], a                                       ; $4400: $77
	cp $9b                                           ; $4401: $fe $9b
	ld h, b                                          ; $4403: $60
	sbc a                                            ; $4404: $9f
	ld h, b                                          ; $4405: $60
	sbc a                                            ; $4406: $9f
	ld a, c                                          ; $4407: $79
	scf                                              ; $4408: $37
	ld a, e                                          ; $4409: $7b
	cp $9d                                           ; $440a: $fe $9d
	dec b                                            ; $440c: $05
	cp $67                                           ; $440d: $fe $67
	cp $76                                           ; $440f: $fe $76
	ld [hl-], a                                      ; $4411: $32
	sbc [hl]                                         ; $4412: $9e
	rrca                                             ; $4413: $0f
	ld [hl], d                                       ; $4414: $72
	ld h, $74                                        ; $4415: $26 $74
	or e                                             ; $4417: $b3
	ld a, l                                          ; $4418: $7d
	ret nz                                           ; $4419: $c0

	sbc h                                            ; $441a: $9c
	pop bc                                           ; $441b: $c1
	ccf                                              ; $441c: $3f
	cp $7b                                           ; $441d: $fe $7b
	ldh [$7e], a                                     ; $441f: $e0 $7e
	inc l                                            ; $4421: $2c
	ld a, a                                          ; $4422: $7f
	jp hl                                            ; $4423: $e9


	ld a, a                                          ; $4424: $7f
	db $ed                                           ; $4425: $ed
	ld [hl], b                                       ; $4426: $70
	and d                                            ; $4427: $a2
	sbc [hl]                                         ; $4428: $9e
	add b                                            ; $4429: $80
	ld [hl], l                                       ; $442a: $75
	ld c, $7f                                        ; $442b: $0e $7f
	ret c                                            ; $442d: $d8

	ld a, a                                          ; $442e: $7f
	inc c                                            ; $442f: $0c
	ld a, a                                          ; $4430: $7f
	db $fc                                           ; $4431: $fc
	sbc c                                            ; $4432: $99
	add a                                            ; $4433: $87
	ld a, h                                          ; $4434: $7c
	push bc                                          ; $4435: $c5
	ld a, $ff                                        ; $4436: $3e $ff
	inc e                                            ; $4438: $1c
	ld [hl], h                                       ; $4439: $74
	sub h                                            ; $443a: $94
	inc bc                                           ; $443b: $03
	ld c, h                                          ; $443c: $4c
	dec bc                                           ; $443d: $0b
	db $fc                                           ; $443e: $fc
	sub l                                            ; $443f: $95
	db $fd                                           ; $4440: $fd
	ld [bc], a                                       ; $4441: $02
	cp a                                             ; $4442: $bf
	ld b, b                                          ; $4443: $40
	ei                                               ; $4444: $fb
	inc b                                            ; $4445: $04
	rst AddAOntoHL                                          ; $4446: $ef
	db $10                                           ; $4447: $10
	rst $38                                          ; $4448: $ff
	nop                                              ; $4449: $00
	ld [hl], a                                       ; $444a: $77
	ld hl, sp+$7f                                    ; $444b: $f8 $7f
	ld a, [$ec7f]                                    ; $444d: $fa $7f $ec
	ld a, a                                          ; $4450: $7f
	db $fc                                           ; $4451: $fc
	sub a                                            ; $4452: $97
	or a                                             ; $4453: $b7
	ld c, b                                          ; $4454: $48
	cp $01                                           ; $4455: $fe $01
	ld a, a                                          ; $4457: $7f
	add b                                            ; $4458: $80
	rst FarCall                                          ; $4459: $f7
	ld [$8d6e], sp                                   ; $445a: $08 $6e $8d
	ld [hl], a                                       ; $445d: $77
	xor $7b                                          ; $445e: $ee $7b
	ld [$209e], sp                                   ; $4460: $08 $9e $20
	ld [hl], a                                       ; $4463: $77
	ldh [c], a                                       ; $4464: $e2
	ld a, a                                          ; $4465: $7f
	cp $7f                                           ; $4466: $fe $7f
	inc c                                            ; $4468: $0c
	ld a, [hl]                                       ; $4469: $7e

jr_028_446a:
	ld a, a                                          ; $446a: $7f
	sub e                                            ; $446b: $93
	ret c                                            ; $446c: $d8

	cpl                                              ; $446d: $2f
	ld hl, sp+$0f                                    ; $446e: $f8 $0f
	ld hl, sp+$0f                                    ; $4470: $f8 $0f
	ld a, b                                          ; $4472: $78
	adc a                                            ; $4473: $8f
	add sp, $1f                                      ; $4474: $e8 $1f
	ld hl, sp+$0f                                    ; $4476: $f8 $0f
	dec a                                            ; $4478: $3d
	inc e                                            ; $4479: $1c
	ld c, c                                          ; $447a: $49

Call_028_447b:
	ldh a, [c]                                       ; $447b: $f2
	ld [hl], e                                       ; $447c: $73
	jr z, jr_028_44f3                                ; $447d: $28 $74

	call nc, Call_028_4876                           ; $447f: $d4 $76 $48
	ld a, a                                          ; $4482: $7f
	cp $70                                           ; $4483: $fe $70
	ccf                                              ; $4485: $3f
	ld e, e                                          ; $4486: $5b
	cp $9e                                           ; $4487: $fe $9e
	pop af                                           ; $4489: $f1
	ld [hl], e                                       ; $448a: $73
	ldh [$5f], a                                     ; $448b: $e0 $5f
	cp $6f                                           ; $448d: $fe $6f
	ld [$be7c], a                                    ; $448f: $ea $7c $be
	ld h, a                                          ; $4492: $67
	cp $7f                                           ; $4493: $fe $7f
	ld c, $6f                                        ; $4495: $0e $6f
	rst SubAFromHL                                          ; $4497: $d7
	ld [hl], a                                       ; $4498: $77
	di                                               ; $4499: $f3
	sub l                                            ; $449a: $95
	rlca                                             ; $449b: $07
	rst $38                                          ; $449c: $ff
	ccf                                              ; $449d: $3f
	rst $38                                          ; $449e: $ff
	db $e3                                           ; $449f: $e3
	ld e, $e3                                        ; $44a0: $1e $e3
	ld e, $c3                                        ; $44a2: $1e $c3
	ld a, $6f                                        ; $44a4: $3e $6f
	cp $9b                                           ; $44a6: $fe $9b
	rst JumpTable                                          ; $44a8: $c7
	db $fc                                           ; $44a9: $fc
	rst $38                                          ; $44aa: $ff
	db $fc                                           ; $44ab: $fc
	inc bc                                           ; $44ac: $03
	ld b, b                                          ; $44ad: $40
	ld c, e                                          ; $44ae: $4b
	ld b, b                                          ; $44af: $40
	ccf                                              ; $44b0: $3f
	ldh a, [$03]                                     ; $44b1: $f0 $03
	cp $4f                                           ; $44b3: $fe $4f
	cp $7e                                           ; $44b5: $fe $7e
	dec d                                            ; $44b7: $15
	ld a, d                                          ; $44b8: $7a
	cpl                                              ; $44b9: $2f
	ld a, a                                          ; $44ba: $7f
	cpl                                              ; $44bb: $2f
	ld a, e                                          ; $44bc: $7b
	dec l                                            ; $44bd: $2d
	ld a, [hl]                                       ; $44be: $7e
	ld [hl], a                                       ; $44bf: $77
	ld a, a                                          ; $44c0: $7f
	ld sp, $0f9d                                     ; $44c1: $31 $9d $0f
	rlca                                             ; $44c4: $07
	sbc $ff                                          ; $44c5: $de $ff
	ld a, [hl]                                       ; $44c7: $7e
	jr z, @+$79                                      ; $44c8: $28 $77

	cp $7d                                           ; $44ca: $fe $7d
	jr nz, jr_028_446a                               ; $44cc: $20 $9c

	ld [hl], b                                       ; $44ce: $70
	rst $38                                          ; $44cf: $ff
	ld h, b                                          ; $44d0: $60
	sbc $ff                                          ; $44d1: $de $ff
	ld a, l                                          ; $44d3: $7d
	ldh a, [c]                                       ; $44d4: $f2
	ld a, a                                          ; $44d5: $7f
	or $9e                                           ; $44d6: $f6 $9e
	jr nz, jr_028_4555                               ; $44d8: $20 $7b

	or $9c                                           ; $44da: $f6 $9c
	ld h, d                                          ; $44dc: $62
	db $fd                                           ; $44dd: $fd
	ld b, d                                          ; $44de: $42
	ld a, e                                          ; $44df: $7b
	cp $9a                                           ; $44e0: $fe $9a
	rst JumpTable                                          ; $44e2: $c7
	ld hl, sp-$05                                    ; $44e3: $f8 $fb
	db $fc                                           ; $44e5: $fc
	rst AddAOntoHL                                          ; $44e6: $ef
	ld a, c                                          ; $44e7: $79
	ld b, $7d                                        ; $44e8: $06 $7d
	jp c, $fe7f                                      ; $44ea: $da $7f $fe

	ld a, [hl]                                       ; $44ed: $7e
	dec a                                            ; $44ee: $3d
	ld a, l                                          ; $44ef: $7d
	ld c, b                                          ; $44f0: $48
	ld a, a                                          ; $44f1: $7f
	dec [hl]                                         ; $44f2: $35

jr_028_44f3:
	ld a, [hl]                                       ; $44f3: $7e
	dec sp                                           ; $44f4: $3b
	ld a, a                                          ; $44f5: $7f
	ld hl, sp-$21                                    ; $44f6: $f8 $df
	rst $38                                          ; $44f8: $ff
	ld a, a                                          ; $44f9: $7f
	ldh [rPCM34], a                                  ; $44fa: $e0 $77
	cp $9e                                           ; $44fc: $fe $9e
	ld h, c                                          ; $44fe: $61
	ld a, e                                          ; $44ff: $7b
	ld c, $77                                        ; $4500: $0e $77
	cp [hl]                                          ; $4502: $be
	ld a, [hl]                                       ; $4503: $7e
	jp hl                                            ; $4504: $e9


	ld a, [hl]                                       ; $4505: $7e
	ld hl, sp-$6a                                    ; $4506: $f8 $96
	ld [hl], e                                       ; $4508: $73
	db $fc                                           ; $4509: $fc
	ld h, a                                          ; $450a: $67
	ld hl, sp+$6f                                    ; $450b: $f8 $6f
	ldh a, [$f7]                                     ; $450d: $f0 $f7
	rrca                                             ; $450f: $0f
	cp $79                                           ; $4510: $fe $79
	sub $8f                                          ; $4512: $d6 $8f
	add e                                            ; $4514: $83
	cp $bf                                           ; $4515: $fe $bf
	jp nz, $c3be                                     ; $4517: $c2 $be $c3

	cp [hl]                                          ; $451a: $be
	jp $c3bd                                         ; $451b: $c3 $bd $c3


	pop af                                           ; $451e: $f1
	rst $38                                          ; $451f: $ff
	ld de, $13ff                                     ; $4520: $11 $ff $13
	db $fc                                           ; $4523: $fc
	ld a, c                                          ; $4524: $79
	or a                                             ; $4525: $b7
	ld [hl], e                                       ; $4526: $73
	cp $8d                                           ; $4527: $fe $8d
	ei                                               ; $4529: $fb
	inc c                                            ; $452a: $0c
	ld a, a                                          ; $452b: $7f
	ret nz                                           ; $452c: $c0

	ld a, a                                          ; $452d: $7f
	ret nz                                           ; $452e: $c0

	cp a                                             ; $452f: $bf
	ldh [rIE], a                                     ; $4530: $e0 $ff
	and b                                            ; $4532: $a0
	rst SubAFromDE                                          ; $4533: $df
	or b                                             ; $4534: $b0
	cp a                                             ; $4535: $bf
	ret nc                                           ; $4536: $d0

	ld a, a                                          ; $4537: $7f
	ret nc                                           ; $4538: $d0

	rst AddAOntoHL                                          ; $4539: $ef
	ld e, b                                          ; $453a: $58
	inc bc                                           ; $453b: $03
	ld d, b                                          ; $453c: $50
	inc bc                                           ; $453d: $03
	cp $03                                           ; $453e: $fe $03
	cp $53                                           ; $4540: $fe $53
	cp $7f                                           ; $4542: $fe $7f
	ld c, $9d                                        ; $4544: $0e $9d
	ldh a, [$1f]                                     ; $4546: $f0 $1f
	ld [hl], a                                       ; $4548: $77
	cp $9c                                           ; $4549: $fe $9c
	ldh [$3f], a                                     ; $454b: $e0 $3f
	pop hl                                           ; $454d: $e1
	ld [hl], e                                       ; $454e: $73
	cp $7f                                           ; $454f: $fe $7f
	inc a                                            ; $4551: $3c
	ld a, h                                          ; $4552: $7c
	ld e, d                                          ; $4553: $5a
	ld [hl], a                                       ; $4554: $77

jr_028_4555:
	ld h, $7c                                        ; $4555: $26 $7c
	ld h, $7f                                        ; $4557: $26 $7f
	cp $75                                           ; $4559: $fe $75
	ld d, $9d                                        ; $455b: $16 $9d
	add $f9                                          ; $455d: $c6 $f9
	ld [hl], a                                       ; $455f: $77
	cp $9c                                           ; $4560: $fe $9c
	adc h                                            ; $4562: $8c
	di                                               ; $4563: $f3
	adc l                                            ; $4564: $8d
	ld a, e                                          ; $4565: $7b
	cp $99                                           ; $4566: $fe $99
	dec e                                            ; $4568: $1d
	db $e3                                           ; $4569: $e3
	dec e                                            ; $456a: $1d
	db $e3                                           ; $456b: $e3
	add a                                            ; $456c: $87
	ld hl, sp+$77                                    ; $456d: $f8 $77
	cp $9e                                           ; $456f: $fe $9e
	adc a                                            ; $4571: $8f
	ld l, d                                          ; $4572: $6a
	ld sp, $c97f                                     ; $4573: $31 $7f $c9
	ld a, a                                          ; $4576: $7f
	ld c, $97                                        ; $4577: $0e $97
	ld h, e                                          ; $4579: $63
	db $fc                                           ; $457a: $fc
	ld h, e                                          ; $457b: $63
	db $fc                                           ; $457c: $fc
	ld b, e                                          ; $457d: $43
	db $fc                                           ; $457e: $fc
	ld b, a                                          ; $457f: $47
	ld hl, sp+$6f                                    ; $4580: $f8 $6f
	cp $98                                           ; $4582: $fe $98
	cpl                                              ; $4584: $2f
	ldh a, [$2f]                                     ; $4585: $f0 $2f
	ldh a, [$3f]                                     ; $4587: $f0 $3f
	ldh [$7f], a                                     ; $4589: $e0 $7f
	ld h, e                                          ; $458b: $63
	cp $7f                                           ; $458c: $fe $7f
	ld c, $77                                        ; $458e: $0e $77
	cp $99                                           ; $4590: $fe $99
	db $fd                                           ; $4592: $fd
	jp $c37d                                         ; $4593: $c3 $7d $c3


	ld a, a                                          ; $4596: $7f
	pop bc                                           ; $4597: $c1
	ld [hl], a                                       ; $4598: $77
	cp $7f                                           ; $4599: $fe $7f
	ld c, $9e                                        ; $459b: $0e $9e
	rst FarCall                                          ; $459d: $f7
	ld a, e                                          ; $459e: $7b
	cp $7c                                           ; $459f: $fe $7c
	or l                                             ; $45a1: $b5
	sbc h                                            ; $45a2: $9c
	db $fd                                           ; $45a3: $fd
	ld b, $fb                                        ; $45a4: $06 $fb
	ld a, e                                          ; $45a6: $7b
	cp $8d                                           ; $45a7: $fe $8d
	ld a, a                                          ; $45a9: $7f
	add d                                            ; $45aa: $82
	rst $38                                          ; $45ab: $ff
	ld c, b                                          ; $45ac: $48
	rst SubAFromDE                                          ; $45ad: $df
	ld l, b                                          ; $45ae: $68
	cp a                                             ; $45af: $bf
	ld l, b                                          ; $45b0: $68
	rst FarCall                                          ; $45b1: $f7
	inc l                                            ; $45b2: $2c
	rst $38                                          ; $45b3: $ff
	inc h                                            ; $45b4: $24
	rst $38                                          ; $45b5: $ff
	inc h                                            ; $45b6: $24
	rst AddAOntoHL                                          ; $45b7: $ef
	inc [hl]                                         ; $45b8: $34
	rst SubAFromDE                                          ; $45b9: $df
	inc [hl]                                         ; $45ba: $34
	inc bc                                           ; $45bb: $03
	ld c, [hl]                                       ; $45bc: $4e
	inc bc                                           ; $45bd: $03
	cp $03                                           ; $45be: $fe $03
	cp $53                                           ; $45c0: $fe $53
	cp $7f                                           ; $45c2: $fe $7f
	ld l, l                                          ; $45c4: $6d
	ld a, a                                          ; $45c5: $7f
	ld h, a                                          ; $45c6: $67
	sbc [hl]                                         ; $45c7: $9e
	jp nz, $fe7b                                     ; $45c8: $c2 $7b $fe

	sbc l                                            ; $45cb: $9d
	add h                                            ; $45cc: $84
	rst $38                                          ; $45cd: $ff
	ld [hl], a                                       ; $45ce: $77
	cp $9e                                           ; $45cf: $fe $9e
	adc b                                            ; $45d1: $88
	ld a, e                                          ; $45d2: $7b
	ld c, $9e                                        ; $45d3: $0e $9e
	inc bc                                           ; $45d5: $03
	ld a, e                                          ; $45d6: $7b
	cp $7c                                           ; $45d7: $fe $7c
	ld [hl+], a                                      ; $45d9: $22
	ld a, a                                          ; $45da: $7f
	cp $7c                                           ; $45db: $fe $7c
	inc h                                            ; $45dd: $24
	ld a, l                                          ; $45de: $7d
	xor a                                            ; $45df: $af
	ld a, a                                          ; $45e0: $7f
	cp $7f                                           ; $45e1: $fe $7f
	ld c, $9a                                        ; $45e3: $0e $9a
	dec a                                            ; $45e5: $3d
	jp $c739                                         ; $45e6: $c3 $39 $c7


	ld a, [hl-]                                      ; $45e9: $3a
	ld l, e                                          ; $45ea: $6b
	cp $9d                                           ; $45eb: $fe $9d
	ld [hl], d                                       ; $45ed: $72
	adc a                                            ; $45ee: $8f
	ld [hl], l                                       ; $45ef: $75
	ld b, h                                          ; $45f0: $44
	sbc c                                            ; $45f1: $99
	ld e, $e1                                        ; $45f2: $1e $e1
	ld e, $e1                                        ; $45f4: $1e $e1
	ld a, $c1                                        ; $45f6: $3e $c1
	ld l, a                                          ; $45f8: $6f
	cp $6f                                           ; $45f9: $fe $6f
	ld a, [bc]                                       ; $45fb: $0a
	sbc h                                            ; $45fc: $9c
	rst GetHLinHL                                          ; $45fd: $cf
	ldh a, [hDisp1_LCDC]                                     ; $45fe: $f0 $8f
	ld [hl], e                                       ; $4600: $73
	cp $9e                                           ; $4601: $fe $9e
	sbc a                                            ; $4603: $9f
	ld [hl], a                                       ; $4604: $77
	inc c                                            ; $4605: $0c
	ld a, d                                          ; $4606: $7a
	ld l, $71                                        ; $4607: $2e $71
	pop hl                                           ; $4609: $e1
	ld [hl], e                                       ; $460a: $73
	cp $77                                           ; $460b: $fe $77
	inc c                                            ; $460d: $0c
	sbc [hl]                                         ; $460e: $9e
	ld a, [hl]                                       ; $460f: $7e
	ld [hl], e                                       ; $4610: $73
	cp $9d                                           ; $4611: $fe $9d
	cp $41                                           ; $4613: $fe $41
	ld [hl], a                                       ; $4615: $77
	cp $7f                                           ; $4616: $fe $7f
	ld c, $9b                                        ; $4618: $0e $9b
	ld a, [hl]                                       ; $461a: $7e
	add e                                            ; $461b: $83
	db $fd                                           ; $461c: $fd
	add e                                            ; $461d: $83
	ld [hl], d                                       ; $461e: $72
	and c                                            ; $461f: $a1
	ld [hl], e                                       ; $4620: $73
	cp $8f                                           ; $4621: $fe $8f
	ei                                               ; $4623: $fb
	ld d, $ff                                        ; $4624: $16 $ff
	ld [de], a                                       ; $4626: $12
	rst FarCall                                          ; $4627: $f7
	ld a, [de]                                       ; $4628: $1a
	rst AddAOntoHL                                          ; $4629: $ef
	ld a, [de]                                       ; $462a: $1a
	db $fd                                           ; $462b: $fd
	dec bc                                           ; $462c: $0b
	rst $38                                          ; $462d: $ff
	add hl, bc                                       ; $462e: $09
	rst $38                                          ; $462f: $ff
	add hl, bc                                       ; $4630: $09
	ld a, a                                          ; $4631: $7f
	adc c                                            ; $4632: $89
	inc bc                                           ; $4633: $03
	ld c, [hl]                                       ; $4634: $4e
	inc bc                                           ; $4635: $03
	cp $04                                           ; $4636: $fe $04
	ccf                                              ; $4638: $3f
	ld l, a                                          ; $4639: $6f
	cp $75                                           ; $463a: $fe $75
	ld c, $77                                        ; $463c: $0e $77
	cp $6d                                           ; $463e: $fe $6d
	ld [hl], a                                       ; $4640: $77
	ld a, h                                          ; $4641: $7c
	sub c                                            ; $4642: $91
	ld l, a                                          ; $4643: $6f
	cp $7d                                           ; $4644: $fe $7d
	jr jr_028_46c7                                   ; $4646: $18 $7f

	ld c, $7e                                        ; $4648: $0e $7e
	ld h, e                                          ; $464a: $63
	ld a, a                                          ; $464b: $7f
	cp $7f                                           ; $464c: $fe $7f
	xor $9e                                          ; $464e: $ee $9e
	jr jr_028_46bd                                   ; $4650: $18 $6b

	cp $9c                                           ; $4652: $fe $9c
	halt                                             ; $4654: $76
	adc a                                            ; $4655: $8f
	ld [hl], h                                       ; $4656: $74
	ld [hl], e                                       ; $4657: $73
	cp $9d                                           ; $4658: $fe $9d
	db $f4                                           ; $465a: $f4
	rrca                                             ; $465b: $0f
	ld l, a                                          ; $465c: $6f
	cp $77                                           ; $465d: $fe $77
	inc c                                            ; $465f: $0c
	sbc l                                            ; $4660: $9d
	ld a, [hl]                                       ; $4661: $7e
	add c                                            ; $4662: $81
	ld l, a                                          ; $4663: $6f
	cp $99                                           ; $4664: $fe $99
	ld a, l                                          ; $4666: $7d
	add e                                            ; $4667: $83
	db $fd                                           ; $4668: $fd
	inc bc                                           ; $4669: $03
	sbc a                                            ; $466a: $9f
	ldh [$5f], a                                     ; $466b: $e0 $5f
	cp $76                                           ; $466d: $fe $76
	db $e4                                           ; $466f: $e4
	ld e, a                                          ; $4670: $5f
	ld b, $6b                                        ; $4671: $06 $6b
	cp $7d                                           ; $4673: $fe $7d
	or c                                             ; $4675: $b1
	ld d, e                                          ; $4676: $53
	cp $9d                                           ; $4677: $fe $9d
	cp $81                                           ; $4679: $fe $81
	ld a, c                                          ; $467b: $79
	and e                                            ; $467c: $a3
	ld d, a                                          ; $467d: $57
	cp $90                                           ; $467e: $fe $90
	adc c                                            ; $4680: $89
	ei                                               ; $4681: $fb
	adc l                                            ; $4682: $8d
	or $8d                                           ; $4683: $f6 $8d
	rst $38                                          ; $4685: $ff
	add h                                            ; $4686: $84
	cp a                                             ; $4687: $bf
	call nz, $c67d                                   ; $4688: $c4 $7d $c6
	ei                                               ; $468b: $fb
	ld b, [hl]                                       ; $468c: $46
	rst $38                                          ; $468d: $ff
	ld b, d                                          ; $468e: $42
	ld [hl], e                                       ; $468f: $73
	ld e, h                                          ; $4690: $5c
	ld h, a                                          ; $4691: $67
	db $e4                                           ; $4692: $e4
	halt                                             ; $4693: $76
	or [hl]                                          ; $4694: $b6
	inc bc                                           ; $4695: $03
	ld l, $4f                                        ; $4696: $2e $4f
	cp $1d                                           ; $4698: $fe $1d
	nop                                              ; $469a: $00
	sbc $33                                          ; $469b: $de $33
	sbc h                                            ; $469d: $9c
	dec [hl]                                         ; $469e: $35
	ld b, h                                          ; $469f: $44
	ld b, l                                          ; $46a0: $45
	call c, $9d33                                    ; $46a1: $dc $33 $9d
	ld d, e                                          ; $46a4: $53
	inc [hl]                                         ; $46a5: $34
	jp nc, $9e33                                     ; $46a6: $d2 $33 $9e

	ld d, l                                          ; $46a9: $55
	db $db                                           ; $46aa: $db
	inc sp                                           ; $46ab: $33
	sbc h                                            ; $46ac: $9c
	dec [hl]                                         ; $46ad: $35
	ld d, l                                          ; $46ae: $55
	ld d, e                                          ; $46af: $53
	ld d, e                                          ; $46b0: $53
	ld hl, sp+$03                                    ; $46b1: $f8 $03
	rst $38                                          ; $46b3: $ff
	push de                                          ; $46b4: $d5
	inc sp                                           ; $46b5: $33
	xor d                                            ; $46b6: $aa
	nop                                              ; $46b7: $00
	sbc e                                            ; $46b8: $9b
	adc b                                            ; $46b9: $88
	ld [hl], a                                       ; $46ba: $77
	ld [hl+], a                                      ; $46bb: $22
	db $dd                                           ; $46bc: $dd

jr_028_46bd:
	rla                                              ; $46bd: $17
	db $fc                                           ; $46be: $fc
	adc l                                            ; $46bf: $8d
	sub c                                            ; $46c0: $91
	ld a, [hl]                                       ; $46c1: $7e
	ld sp, $93de                                     ; $46c2: $31 $de $93
	ld a, h                                          ; $46c5: $7c
	inc sp                                           ; $46c6: $33

jr_028_46c7:
	call c, Call_028_7ca3                            ; $46c7: $dc $a3 $7c
	ld [hl+], a                                      ; $46ca: $22
	db $fd                                           ; $46cb: $fd
	ret nz                                           ; $46cc: $c0

	ld a, a                                          ; $46cd: $7f
	ld b, c                                          ; $46ce: $41
	rst $38                                          ; $46cf: $ff
	cp a                                             ; $46d0: $bf
	ld b, b                                          ; $46d1: $40
	ld [hl], a                                       ; $46d2: $77
	cp $9d                                           ; $46d3: $fe $9d
	ccf                                              ; $46d5: $3f
	ret nz                                           ; $46d6: $c0

	ld h, a                                          ; $46d7: $67
	cp $83                                           ; $46d8: $fe $83
	push bc                                          ; $46da: $c5

jr_028_46db:
	ld a, $c7                                        ; $46db: $3e $c7
	ld a, $86                                        ; $46dd: $3e $86
	ld a, a                                          ; $46df: $7f
	add e                                            ; $46e0: $83
	ld a, a                                          ; $46e1: $7f
	pop bc                                           ; $46e2: $c1
	ccf                                              ; $46e3: $3f
	pop hl                                           ; $46e4: $e1
	rra                                              ; $46e5: $1f
	pop hl                                           ; $46e6: $e1
	rra                                              ; $46e7: $1f
	add sp, $1f                                      ; $46e8: $e8 $1f
	sbc h                                            ; $46ea: $9c
	inc bc                                           ; $46eb: $03
	sbc h                                            ; $46ec: $9c
	inc bc                                           ; $46ed: $03
	adc $01                                          ; $46ee: $ce $01
	adc $01                                          ; $46f0: $ce $01
	ld c, [hl]                                       ; $46f2: $4e
	add c                                            ; $46f3: $81
	rst SubAFromBC                                          ; $46f4: $e7
	add b                                            ; $46f5: $80
	ld [hl], a                                       ; $46f6: $77
	cp $9d                                           ; $46f7: $fe $9d
	jr nz, jr_028_46db                               ; $46f9: $20 $e0

	ld [hl], a                                       ; $46fb: $77
	cp $8e                                           ; $46fc: $fe $8e
	db $10                                           ; $46fe: $10
	ldh a, [rAUD1SWEEP]                              ; $46ff: $f0 $10
	ld hl, sp+$08                                    ; $4701: $f8 $08
	ld hl, sp+$08                                    ; $4703: $f8 $08
	db $fc                                           ; $4705: $fc
	inc b                                            ; $4706: $04
	db $fc                                           ; $4707: $fc
	rlca                                             ; $4708: $07
	rrca                                             ; $4709: $0f
	rrca                                             ; $470a: $0f
	rra                                              ; $470b: $1f
	ld de, $013f                    ; $470c: $11 $3f $01
	db $dd                                           ; $470f: $dd
	inc bc                                           ; $4710: $03
	sbc $07                                          ; $4711: $de $07
	sub l                                            ; $4713: $95
	rrca                                             ; $4714: $0f
	dec c                                            ; $4715: $0d
	rst $38                                          ; $4716: $ff
	ld l, $ff                                        ; $4717: $2e $ff
	ld [hl+], a                                      ; $4719: $22
	rst $38                                          ; $471a: $ff
	pop bc                                           ; $471b: $c1
	rst $38                                          ; $471c: $ff
	nop                                              ; $471d: $00
	ld h, a                                          ; $471e: $67
	cp $83                                           ; $471f: $fe $83
	ei                                               ; $4721: $fb
	ld [de], a                                       ; $4722: $12
	pop af                                           ; $4723: $f1
	ld hl, $c0e0                                     ; $4724: $21 $e0 $c0
	adc $00                                          ; $4727: $ce $00
	sbc a                                            ; $4729: $9f
	ld b, $9f                                        ; $472a: $06 $9f
	rra                                              ; $472c: $1f
	sbc a                                            ; $472d: $9f
	ld a, [de]                                       ; $472e: $1a
	rra                                              ; $472f: $1f
	ld [de], a                                       ; $4730: $12
	dec hl                                           ; $4731: $2b
	ccf                                              ; $4732: $3f
	cp e                                             ; $4733: $bb
	ccf                                              ; $4734: $3f
	rst SubAFromDE                                          ; $4735: $df
	sbc [hl]                                         ; $4736: $9e
	ld c, a                                          ; $4737: $4f
	ld c, h                                          ; $4738: $4c
	ld c, a                                          ; $4739: $4f
	ld b, a                                          ; $473a: $47
	rst GetHLinHL                                          ; $473b: $cf
	ld b, h                                          ; $473c: $44

Jump_028_473d:
	ld a, e                                          ; $473d: $7b
	cp $95                                           ; $473e: $fe $95
	ld c, [hl]                                       ; $4740: $4e
	ld a, $ff                                        ; $4741: $3e $ff
	add $c7                                          ; $4743: $c6 $c7
	inc b                                            ; $4745: $04
	rlca                                             ; $4746: $07
	inc b                                            ; $4747: $04
	rlca                                             ; $4748: $07
	add h                                            ; $4749: $84
	ld a, e                                          ; $474a: $7b
	db $fc                                           ; $474b: $fc
	ld a, a                                          ; $474c: $7f
	cp $96                                           ; $474d: $fe $96
	ld [bc], a                                       ; $474f: $02
	rlca                                             ; $4750: $07
	ret c                                            ; $4751: $d8

	scf                                              ; $4752: $37

jr_028_4753:
	jp nc, $e83d                                     ; $4753: $d2 $3d $e8

	scf                                              ; $4756: $37
	ldh [c], a                                       ; $4757: $e2
	ld [hl], e                                       ; $4758: $73
	db $fc                                           ; $4759: $fc
	ld [hl], a                                       ; $475a: $77
	db $f4                                           ; $475b: $f4
	rlca                                             ; $475c: $07
	jr nc, jr_028_47a6                               ; $475d: $30 $47

	db $fc                                           ; $475f: $fc
	ld a, [bc]                                       ; $4760: $0a
	nop                                              ; $4761: $00
	sbc $33                                          ; $4762: $de $33
	sbc d                                            ; $4764: $9a
	ld d, l                                          ; $4765: $55
	ld b, h                                          ; $4766: $44
	ld b, l                                          ; $4767: $45
	inc sp                                           ; $4768: $33
	inc sp                                           ; $4769: $33
	db $db                                           ; $476a: $db
	nop                                              ; $476b: $00
	cp a                                             ; $476c: $bf
	rst $38                                          ; $476d: $ff
	rst $38                                          ; $476e: $ff
	sub l                                            ; $476f: $95
	inc b                                            ; $4770: $04

jr_028_4771:
	ei                                               ; $4771: $fb
	jr nz, jr_028_4753                               ; $4772: $20 $df

	adc b                                            ; $4774: $88
	ld [hl], a                                       ; $4775: $77
	nop                                              ; $4776: $00
	rst $38                                          ; $4777: $ff
	ld [hl+], a                                      ; $4778: $22
	db $dd                                           ; $4779: $dd
	cp [hl]                                          ; $477a: $be
	rst $38                                          ; $477b: $ff
	rst $38                                          ; $477c: $ff
	rst $38                                          ; $477d: $ff
	sub a                                            ; $477e: $97
	ld [$80f7], sp                                   ; $477f: $08 $f7 $80
	ld a, a                                          ; $4782: $7f
	ld bc, $48fe                                     ; $4783: $01 $fe $48
	or a                                             ; $4786: $b7
	ld [hl], a                                       ; $4787: $77
	xor $9c                                          ; $4788: $ee $9c
	ld a, [bc]                                       ; $478a: $0a
	rst $38                                          ; $478b: $ff
	inc c                                            ; $478c: $0c
	ld a, e                                          ; $478d: $7b
	cp $8b                                           ; $478e: $fe $8b
	jr z, jr_028_4771                                ; $4790: $28 $df

	adc b                                            ; $4792: $88
	ld a, a                                          ; $4793: $7f
	ld [$29ff], sp                                   ; $4794: $08 $ff $29
	sbc $09                                          ; $4797: $de $09
	cp $7e                                           ; $4799: $fe $7e
	pop hl                                           ; $479b: $e1
	rra                                              ; $479c: $1f
	ldh a, [$7f]                                     ; $479d: $f0 $7f
	adc h                                            ; $479f: $8c
	ld a, a                                          ; $47a0: $7f
	add d                                            ; $47a1: $82
	rst $38                                          ; $47a2: $ff
	ld bc, $d573                                     ; $47a3: $01 $73 $d5

jr_028_47a6:
	add b                                            ; $47a6: $80
	nop                                              ; $47a7: $00
	ld d, e                                          ; $47a8: $53
	ldh [$79], a                                     ; $47a9: $e0 $79
	ldh [$29], a                                     ; $47ab: $e0 $29
	ldh a, [$9c]                                     ; $47ad: $f0 $9c
	ld [hl], b                                       ; $47af: $70
	sub [hl]                                         ; $47b0: $96
	ld hl, sp+$5e                                    ; $47b1: $f8 $5e
	ld hl, sp-$55                                    ; $47b3: $f8 $ab
	ld a, h                                          ; $47b5: $7c
	rst SubAFromDE                                          ; $47b6: $df
	inc a                                            ; $47b7: $3c
	add a                                            ; $47b8: $87
	ld a, a                                          ; $47b9: $7f
	pop bc                                           ; $47ba: $c1
	ccf                                              ; $47bb: $3f
	ldh [$1f], a                                     ; $47bc: $e0 $1f
	ldh [$1f], a                                     ; $47be: $e0 $1f
	ld [hl], b                                       ; $47c0: $70
	rrca                                             ; $47c1: $0f
	ld [hl], b                                       ; $47c2: $70
	rrca                                             ; $47c3: $0f
	jr c, jr_028_47cd                                ; $47c4: $38 $07

	add b                                            ; $47c6: $80
	inc a                                            ; $47c7: $3c
	inc bc                                           ; $47c8: $03
	rst $38                                          ; $47c9: $ff
	rla                                              ; $47ca: $17
	ei                                               ; $47cb: $fb
	adc a                                            ; $47cc: $8f

jr_028_47cd:
	db $fd                                           ; $47cd: $fd

jr_028_47ce:
	rst JumpTable                                          ; $47ce: $c7
	ld a, $e3                                        ; $47cf: $3e $e3
	rra                                              ; $47d1: $1f
	pop af                                           ; $47d2: $f1
	rrca                                             ; $47d3: $0f
	ld hl, sp+$07                                    ; $47d4: $f8 $07
	cp $1f                                           ; $47d6: $fe $1f
	rst $38                                          ; $47d8: $ff
	rst $38                                          ; $47d9: $ff
	and $ff                                          ; $47da: $e6 $ff
	jp nz, $e4ff                                     ; $47dc: $c2 $ff $e4

	cp a                                             ; $47df: $bf
	db $f4                                           ; $47e0: $f4
	ld e, a                                          ; $47e1: $5f
	ld hl, sp-$31                                    ; $47e2: $f8 $cf
	ld hl, sp+$6f                                    ; $47e4: $f8 $6f
	add b                                            ; $47e6: $80
	db $fc                                           ; $47e7: $fc
	rst $38                                          ; $47e8: $ff
	cp $ff                                           ; $47e9: $fe $ff
	ld h, b                                          ; $47eb: $60
	rst $38                                          ; $47ec: $ff
	dec h                                            ; $47ed: $25
	rst $38                                          ; $47ee: $ff
	ld b, a                                          ; $47ef: $47
	rst $38                                          ; $47f0: $ff
	ld b, [hl]                                       ; $47f1: $46
	rst $38                                          ; $47f2: $ff
	ld b, h                                          ; $47f3: $44
	rst $38                                          ; $47f4: $ff
	adc b                                            ; $47f5: $88
	rst $38                                          ; $47f6: $ff
	sub b                                            ; $47f7: $90
	rst $38                                          ; $47f8: $ff
	ld [hl], c                                       ; $47f9: $71
	cp $f3                                           ; $47fa: $fe $f3
	sbc a                                            ; $47fc: $9f
	sbc c                                            ; $47fd: $99
	rst $38                                          ; $47fe: $ff
	rrca                                             ; $47ff: $0f
	ldh [rP1], a                                     ; $4800: $e0 $00
	rst $38                                          ; $4802: $ff
	ld a, $f9                                        ; $4803: $3e $f9
	ld [hl], c                                       ; $4805: $71
	adc c                                            ; $4806: $89
	db $fc                                           ; $4807: $fc
	ret nz                                           ; $4808: $c0

	cp $8c                                           ; $4809: $fe $8c
	add hl, hl                                       ; $480b: $29
	rst $38                                          ; $480c: $ff
	add hl, hl                                       ; $480d: $29
	rst $38                                          ; $480e: $ff
	jp hl                                            ; $480f: $e9


	rst $38                                          ; $4810: $ff
	ld l, c                                          ; $4811: $69
	ld a, a                                          ; $4812: $7f
	jp hl                                            ; $4813: $e9


	ccf                                              ; $4814: $3f
	jp hl                                            ; $4815: $e9


	ccf                                              ; $4816: $3f
	ei                                               ; $4817: $fb
	sbc a                                            ; $4818: $9f
	ld a, e                                          ; $4819: $7b
	ld e, a                                          ; $481a: $5f
	rst GetHLinHL                                          ; $481b: $cf
	ld [bc], a                                       ; $481c: $02
	ld e, a                                          ; $481d: $5f
	cp $8b                                           ; $481e: $fe $8b
	adc $03                                          ; $4820: $ce $03

jr_028_4822:
	jp z, $c007                                      ; $4822: $ca $07 $c0

	ld a, a                                          ; $4825: $7f
	and h                                            ; $4826: $a4
	ld a, e                                          ; $4827: $7b
	and b                                            ; $4828: $a0
	ld a, a                                          ; $4829: $7f
	ldh [$3f], a                                     ; $482a: $e0 $3f
	ldh a, [$2f]                                     ; $482c: $f0 $2f
	call nc, $d03b                                   ; $482e: $d4 $3b $d0
	ccf                                              ; $4831: $3f
	jp nc, Jump_028_473d                             ; $4832: $d2 $3d $47

	ld b, b                                          ; $4835: $40
	ccf                                              ; $4836: $3f
	jr nz, jr_028_47ce                               ; $4837: $20 $95

	db $10                                           ; $4839: $10
	rst AddAOntoHL                                          ; $483a: $ef
	add h                                            ; $483b: $84
	ld a, e                                          ; $483c: $7b
	nop                                              ; $483d: $00
	rst $38                                          ; $483e: $ff
	ld [bc], a                                       ; $483f: $02
	db $fd                                           ; $4840: $fd
	jr nz, jr_028_4822                               ; $4841: $20 $df

	ld [hl], a                                       ; $4843: $77
	xor $0a                                          ; $4844: $ee $0a
	nop                                              ; $4846: $00
	sbc $33                                          ; $4847: $de $33
	sbc d                                            ; $4849: $9a
	ld d, h                                          ; $484a: $54
	ld b, h                                          ; $484b: $44
	ld b, e                                          ; $484c: $43
	inc sp                                           ; $484d: $33
	inc sp                                           ; $484e: $33
	and c                                            ; $484f: $a1
	add b                                            ; $4850: $80
	ld sp, hl                                        ; $4851: $f9
	reti                                             ; $4852: $d9


	rst $38                                          ; $4853: $ff
	dec sp                                           ; $4854: $3b
	ldh a, [$9a]                                     ; $4855: $f0 $9a
	ld bc, $0402                                     ; $4857: $01 $02 $04
	inc b                                            ; $485a: $04
	add hl, bc                                       ; $485b: $09
	reti                                             ; $485c: $d9


	rst $38                                          ; $485d: $ff
	add b                                            ; $485e: $80
	ld bc, $6c1e                                     ; $485f: $01 $1e $6c
	di                                               ; $4862: $f3
	dec e                                            ; $4863: $1d
	ld b, $f1                                        ; $4864: $06 $f1
	db $fc                                           ; $4866: $fc
	rst $38                                          ; $4867: $ff
	cp $f0                                           ; $4868: $fe $f0
	db $fc                                           ; $486a: $fc
	cp $ff                                           ; $486b: $fe $ff
	rrca                                             ; $486d: $0f
	add e                                            ; $486e: $83
	add c                                            ; $486f: $81
	ld hl, sp+$38                                    ; $4870: $f8 $38
	inc e                                            ; $4872: $1c
	adc [hl]                                         ; $4873: $8e
	adc $67                                          ; $4874: $ce $67

Call_028_4876:
	or e                                             ; $4876: $b3
	rst $38                                          ; $4877: $ff
	rlca                                             ; $4878: $07
	rlca                                             ; $4879: $07
	inc bc                                           ; $487a: $03
	ld bc, $8001                                     ; $487b: $01 $01 $80
	sbc [hl]                                         ; $487e: $9e
	ret nz                                           ; $487f: $c0

	sbc $ff                                          ; $4880: $de $ff
	rst SubAFromDE                                          ; $4882: $df
	ld a, a                                          ; $4883: $7f
	adc h                                            ; $4884: $8c
	ccf                                              ; $4885: $3f
	rra                                              ; $4886: $1f
	rrca                                             ; $4887: $0f
	ld [hl+], a                                      ; $4888: $22
	and d                                            ; $4889: $a2
	sub c                                            ; $488a: $91
	pop de                                           ; $488b: $d1
	ret z                                            ; $488c: $c8

	add sp, -$0c                                     ; $488d: $e8 $f4
	ld a, [$4480]                                    ; $488f: $fa $80 $44
	jp nz, $e1a2                                     ; $4892: $c2 $a2 $e1

	ret nc                                           ; $4895: $d0

	ld l, b                                          ; $4896: $68
	or h                                             ; $4897: $b4
	ld [hl], a                                       ; $4898: $77
	jp hl                                            ; $4899: $e9


	rst SubAFromDE                                          ; $489a: $df
	cp a                                             ; $489b: $bf
	sub l                                            ; $489c: $95
	rst SubAFromDE                                          ; $489d: $df
	ld l, a                                          ; $489e: $6f
	add c                                            ; $489f: $81
	pop bc                                           ; $48a0: $c1
	ld b, c                                          ; $48a1: $41
	ld h, c                                          ; $48a2: $61
	ld hl, $a1a1                                     ; $48a3: $21 $a1 $a1
	cp c                                             ; $48a6: $b9
	reti                                             ; $48a7: $d9


	rst $38                                          ; $48a8: $ff
	sub a                                            ; $48a9: $97
	pop bc                                           ; $48aa: $c1
	pop hl                                           ; $48ab: $e1
	pop hl                                           ; $48ac: $e1
	di                                               ; $48ad: $f3
	di                                               ; $48ae: $f3
	rst $38                                          ; $48af: $ff
	di                                               ; $48b0: $f3
	rst $38                                          ; $48b1: $ff
	sbc $01                                          ; $48b2: $de $01
	rst $38                                          ; $48b4: $ff
	sbc h                                            ; $48b5: $9c
	inc c                                            ; $48b6: $0c
	ld [de], a                                       ; $48b7: $12
	and c                                            ; $48b8: $a1
	sbc $24                                          ; $48b9: $de $24
	sbc $a4                                          ; $48bb: $de $a4
	sbc l                                            ; $48bd: $9d
	cp h                                             ; $48be: $bc
	cp $da                                           ; $48bf: $fe $da
	rst $38                                          ; $48c1: $ff
	sub d                                            ; $48c2: $92
	rst SubAFromBC                                          ; $48c3: $e7
	sbc a                                            ; $48c4: $9f
	sub l                                            ; $48c5: $95
	push de                                          ; $48c6: $d5
	rst SubAFromHL                                          ; $48c7: $d7
	ld d, e                                          ; $48c8: $53
	ld [hl], e                                       ; $48c9: $73
	ld [hl], e                                       ; $48ca: $73
	ld l, c                                          ; $48cb: $69
	ld l, e                                          ; $48cc: $6b
	ld l, e                                          ; $48cd: $6b
	dec hl                                           ; $48ce: $2b
	add hl, hl                                       ; $48cf: $29
	sbc $ad                                          ; $48d0: $de $ad
	sbc c                                            ; $48d2: $99
	cp a                                             ; $48d3: $bf
	ret nz                                           ; $48d4: $c0

	inc a                                            ; $48d5: $3c
	jp z, $cecf                                      ; $48d6: $ca $cf $ce

	sbc $cf                                          ; $48d9: $de $cf
	rst SubAFromDE                                          ; $48db: $df
	rst $38                                          ; $48dc: $ff
	ld a, a                                          ; $48dd: $7f
	sub b                                            ; $48de: $90
	sbc [hl]                                         ; $48df: $9e
	inc bc                                           ; $48e0: $03
	sbc $02                                          ; $48e1: $de $02
	db $fd                                           ; $48e3: $fd
	sbc h                                            ; $48e4: $9c
	add b                                            ; $48e5: $80
	ld b, b                                          ; $48e6: $40
	ret nz                                           ; $48e7: $c0

	ld [hl], a                                       ; $48e8: $77
	adc b                                            ; $48e9: $88
	ld [hl], e                                       ; $48ea: $73
	add l                                            ; $48eb: $85
	inc bc                                           ; $48ec: $03
	jr nc, jr_028_493a                               ; $48ed: $30 $4b

	ldh a, [$0b]                                     ; $48ef: $f0 $0b
	nop                                              ; $48f1: $00
	rst SubAFromDE                                          ; $48f2: $df
	inc sp                                           ; $48f3: $33
	sbc c                                            ; $48f4: $99
	dec [hl]                                         ; $48f5: $35
	ld h, [hl]                                       ; $48f6: $66
	ld b, h                                          ; $48f7: $44
	ld h, e                                          ; $48f8: $63
	inc sp                                           ; $48f9: $33
	inc sp                                           ; $48fa: $33
	ld l, a                                          ; $48fb: $6f
	add b                                            ; $48fc: $80
	ld sp, hl                                        ; $48fd: $f9
	reti                                             ; $48fe: $d9


	rst $38                                          ; $48ff: $ff
	inc bc                                           ; $4900: $03
	ldh a, [rWX]                                     ; $4901: $f0 $4b
	ldh a, [$df]                                     ; $4903: $f0 $df
	rra                                              ; $4905: $1f
	rst SubAFromDE                                          ; $4906: $df
	rrca                                             ; $4907: $0f
	rst SubAFromDE                                          ; $4908: $df
	rlca                                             ; $4909: $07
	add b                                            ; $490a: $80
	rrca                                             ; $490b: $0f
	ld [hl], e                                       ; $490c: $73
	di                                               ; $490d: $f3
	pop af                                           ; $490e: $f1
	ld sp, hl                                        ; $490f: $f9
	ld sp, hl                                        ; $4910: $f9
	db $fc                                           ; $4911: $fc
	db $fc                                           ; $4912: $fc
	cp $fe                                           ; $4913: $fe $fe
	jp hl                                            ; $4915: $e9


	ld d, h                                          ; $4916: $54
	ld [hl], h                                       ; $4917: $74
	ld [hl], d                                       ; $4918: $72
	xor d                                            ; $4919: $aa
	cp c                                             ; $491a: $b9
	sub l                                            ; $491b: $95
	ld e, h                                          ; $491c: $5c
	ccf                                              ; $491d: $3f
	cp a                                             ; $491e: $bf
	sbc a                                            ; $491f: $9f
	sbc a                                            ; $4920: $9f
	rst SubAFromDE                                          ; $4921: $df
	rst GetHLinHL                                          ; $4922: $cf
	rst AddAOntoHL                                          ; $4923: $ef
	rst SubAFromBC                                          ; $4924: $e7
	db $10                                           ; $4925: $10
	adc b                                            ; $4926: $88
	ld c, b                                          ; $4927: $48
	inc b                                            ; $4928: $04
	ld [hl+], a                                      ; $4929: $22
	sbc h                                            ; $492a: $9c
	inc de                                           ; $492b: $13
	ld bc, $d989                                     ; $492c: $01 $89 $d9
	rst $38                                          ; $492f: $ff
	sbc [hl]                                         ; $4930: $9e
	cpl                                              ; $4931: $2f
	ld [hl], e                                       ; $4932: $73
	ret nc                                           ; $4933: $d0

	sbc e                                            ; $4934: $9b
	inc bc                                           ; $4935: $03
	add e                                            ; $4936: $83
	rst $38                                          ; $4937: $ff
	cp $de                                           ; $4938: $fe $de

jr_028_493a:
	db $fc                                           ; $493a: $fc
	sbc $fe                                          ; $493b: $de $fe
	sbc $ff                                          ; $493d: $de $ff
	sbc b                                            ; $493f: $98
	ld sp, hl                                        ; $4940: $f9
	pop af                                           ; $4941: $f1
	pop hl                                           ; $4942: $e1
	pop bc                                           ; $4943: $c1
	pop bc                                           ; $4944: $c1
	add a                                            ; $4945: $87
	inc bc                                           ; $4946: $03
	db $db                                           ; $4947: $db
	ld bc, $679b                                     ; $4948: $01 $9b $67
	ld l, $2f                                        ; $494b: $2e $2f
	cpl                                              ; $494d: $2f
	db $dd                                           ; $494e: $dd
	dec l                                            ; $494f: $2d
	sbc e                                            ; $4950: $9b
	db $fd                                           ; $4951: $fd
	push af                                          ; $4952: $f5
	db $f4                                           ; $4953: $f4
	db $f4                                           ; $4954: $f4
	db $dd                                           ; $4955: $dd
	or $df                                           ; $4956: $f6 $df
	ld hl, sp+$6f                                    ; $4958: $f8 $6f
	ret c                                            ; $495a: $d8

	sub a                                            ; $495b: $97
	cpl                                              ; $495c: $2f
	xor a                                            ; $495d: $af
	and a                                            ; $495e: $a7
	sub a                                            ; $495f: $97
	sub a                                            ; $4960: $97
	ld d, e                                          ; $4961: $53
	ld c, e                                          ; $4962: $4b
	ld c, e                                          ; $4963: $4b
	inc bc                                           ; $4964: $03
	ld h, b                                          ; $4965: $60
	inc bc                                           ; $4966: $03
	ldh a, [rVBK]                                    ; $4967: $f0 $4f
	ldh a, [$0b]                                     ; $4969: $f0 $0b
	nop                                              ; $496b: $00
	rst SubAFromDE                                          ; $496c: $df
	inc sp                                           ; $496d: $33
	sbc c                                            ; $496e: $99
	ld d, [hl]                                       ; $496f: $56
	ld h, h                                          ; $4970: $64
	ld b, [hl]                                       ; $4971: $46
	ld d, l                                          ; $4972: $55
	inc sp                                           ; $4973: $33
	inc sp                                           ; $4974: $33
	ld [hl], c                                       ; $4975: $71
	add b                                            ; $4976: $80
	ld sp, hl                                        ; $4977: $f9
	reti                                             ; $4978: $d9


	rst $38                                          ; $4979: $ff
	inc bc                                           ; $497a: $03
	ldh a, [rWX]                                     ; $497b: $f0 $4b
	ldh a, [$df]                                     ; $497d: $f0 $df
	cp [hl]                                          ; $497f: $be
	rst SubAFromDE                                          ; $4980: $df
	ld a, [hl]                                       ; $4981: $7e
	sbc e                                            ; $4982: $9b
	ld e, [hl]                                       ; $4983: $5e
	ld a, $3e                                        ; $4984: $3e $3e
	rra                                              ; $4986: $1f
	db $dd                                           ; $4987: $dd
	set 3, [hl]                                      ; $4988: $cb $de
	rst SubAFromBC                                          ; $498a: $e7
	sub [hl]                                         ; $498b: $96
	di                                               ; $498c: $f3
	ldh a, [$f8]                                     ; $498d: $f0 $f8
	db $f4                                           ; $498f: $f4
	sub $a9                                          ; $4990: $d6 $a9
	or h                                             ; $4992: $b4
	ldh a, [c]                                       ; $4993: $f2
	jp hl                                            ; $4994: $e9


	db $db                                           ; $4995: $db
	ld a, a                                          ; $4996: $7f
	rst SubAFromDE                                          ; $4997: $df
	ccf                                              ; $4998: $3f
	sub a                                            ; $4999: $97
	ld b, c                                          ; $499a: $41
	jr nz, jr_028_49ad                               ; $499b: $20 $10

	ld [$8304], sp                                   ; $499d: $08 $04 $83
	ld b, b                                          ; $49a0: $40
	jr nz, @-$25                                     ; $49a1: $20 $d9

	rst $38                                          ; $49a3: $ff
	rst SubAFromDE                                          ; $49a4: $df
	ld hl, sp-$6c                                    ; $49a5: $f8 $94
	ld a, h                                          ; $49a7: $7c
	ld a, $3f                                        ; $49a8: $3e $3f
	rra                                              ; $49aa: $1f
	sbc a                                            ; $49ab: $9f
	ld c, a                                          ; $49ac: $4f

jr_028_49ad:
	nop                                              ; $49ad: $00
	add b                                            ; $49ae: $80
	ret nz                                           ; $49af: $c0

	ldh a, [$fc]                                     ; $49b0: $f0 $fc
	sbc $ff                                          ; $49b2: $de $ff
	sbc [hl]                                         ; $49b4: $9e
	ld bc, $9dfd                                     ; $49b5: $01 $fd $9d
	ret nz                                           ; $49b8: $c0

	ld hl, sp+$6f                                    ; $49b9: $f8 $6f
	xor b                                            ; $49bb: $a8
	sub d                                            ; $49bc: $92
	add b                                            ; $49bd: $80
	ldh a, [$fc]                                     ; $49be: $f0 $fc
	ret nz                                           ; $49c0: $c0

	ld bc, $0703                                     ; $49c1: $01 $03 $07
	ld c, $3e                                        ; $49c4: $0e $3e
	ld a, l                                          ; $49c6: $7d
	db $ed                                           ; $49c7: $ed
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	ld a, e                                          ; $49ca: $7b
	rst FarCall                                          ; $49cb: $f7
	sbc d                                            ; $49cc: $9a
	rra                                              ; $49cd: $1f
	ccf                                              ; $49ce: $3f
	rst $38                                          ; $49cf: $ff
	ret nz                                           ; $49d0: $c0

	ret nz                                           ; $49d1: $c0

	sbc $e0                                          ; $49d2: $de $e0
	rst SubAFromDE                                          ; $49d4: $df
	ldh a, [$9c]                                     ; $49d5: $f0 $9c
	ld hl, sp+$7f                                    ; $49d7: $f8 $7f
	rst $38                                          ; $49d9: $ff
	sbc $bf                                          ; $49da: $de $bf
	rst SubAFromDE                                          ; $49dc: $df
	ld e, a                                          ; $49dd: $5f
	ld a, a                                          ; $49de: $7f
	ret z                                            ; $49df: $c8

	inc bc                                           ; $49e0: $03
	ld h, b                                          ; $49e1: $60
	inc bc                                           ; $49e2: $03
	ldh a, [rHDMA3]                                  ; $49e3: $f0 $53
	ldh a, [$0b]                                     ; $49e5: $f0 $0b
	nop                                              ; $49e7: $00
	rst SubAFromDE                                          ; $49e8: $df
	inc sp                                           ; $49e9: $33
	sbc c                                            ; $49ea: $99
	ld d, [hl]                                       ; $49eb: $56
	ld h, h                                          ; $49ec: $64
	ld b, h                                          ; $49ed: $44
	ld d, l                                          ; $49ee: $55
	inc sp                                           ; $49ef: $33
	inc sp                                           ; $49f0: $33
	ld h, l                                          ; $49f1: $65
	add b                                            ; $49f2: $80

Call_028_49f3:
	ld sp, hl                                        ; $49f3: $f9
	reti                                             ; $49f4: $d9


	rst $38                                          ; $49f5: $ff
	rlca                                             ; $49f6: $07
	ldh a, [$db]                                     ; $49f7: $f0 $db
	ld bc, $f05f                                     ; $49f9: $01 $5f $f0
	call c, $9c14                                    ; $49fc: $dc $14 $9c
	ld [de], a                                       ; $49ff: $12
	adc d                                            ; $4a00: $8a
	adc d                                            ; $4a01: $8a
	reti                                             ; $4a02: $d9


	rst $38                                          ; $4a03: $ff
	sub a                                            ; $4a04: $97
	sub [hl]                                         ; $4a05: $96
	adc d                                            ; $4a06: $8a
	jp z, $c3c6                                      ; $4a07: $ca $c6 $c3

	pop hl                                           ; $4a0a: $e1
	ld h, c                                          ; $4a0b: $61
	ld [hl], b                                       ; $4a0c: $70
	rst SubAFromHL                                          ; $4a0d: $d7
	rst $38                                          ; $4a0e: $ff
	adc l                                            ; $4a0f: $8d
	ld a, [hl]                                       ; $4a10: $7e
	ld a, a                                          ; $4a11: $7f
	ccf                                              ; $4a12: $3f
	rra                                              ; $4a13: $1f
	adc a                                            ; $4a14: $8f
	add a                                            ; $4a15: $87
	add b                                            ; $4a16: $80
	ret nz                                           ; $4a17: $c0

	ret nz                                           ; $4a18: $c0

	ldh [$e0], a                                     ; $4a19: $e0 $e0
	ldh a, [$f8]                                     ; $4a1b: $f0 $f8
	cp $3f                                           ; $4a1d: $fe $3f
	ret nz                                           ; $4a1f: $c0

	ccf                                              ; $4a20: $3f
	add b                                            ; $4a21: $80
	ld [hl], a                                       ; $4a22: $77
	or $f9                                           ; $4a23: $f6 $f9
	sbc h                                            ; $4a25: $9c
	xor e                                            ; $4a26: $ab
	rlca                                             ; $4a27: $07
	ld hl, sp-$46                                    ; $4a28: $f8 $ba
	nop                                              ; $4a2a: $00
	ld bc, $0000                                     ; $4a2b: $01 $00 $00
	nop                                              ; $4a2e: $00
	ld bc, $93ea                                     ; $4a2f: $01 $ea $93
	ldh [$f2], a                                     ; $4a32: $e0 $f2
	ld d, b                                          ; $4a34: $50
	nop                                              ; $4a35: $00
	nop                                              ; $4a36: $00
	ld [hl], b                                       ; $4a37: $70
	and b                                            ; $4a38: $a0
	nop                                              ; $4a39: $00
	db $10                                           ; $4a3a: $10
	add hl, de                                       ; $4a3b: $19
	jr nz, jr_028_4a3e                               ; $4a3c: $20 $00

jr_028_4a3e:
	cp [hl]                                          ; $4a3e: $be
	and b                                            ; $4a3f: $a0
	ld [$dfe0], sp                                   ; $4a40: $08 $e0 $df
	ld [$1094], sp                                   ; $4a43: $08 $94 $10
	jr nc, jr_028_4a68                               ; $4a46: $30 $20

	ld c, $0d                                        ; $4a48: $0e $0d
	inc bc                                           ; $4a4a: $03
	rrca                                             ; $4a4b: $0f
	rrca                                             ; $4a4c: $0f
	rra                                              ; $4a4d: $1f
	rra                                              ; $4a4e: $1f
	ccf                                              ; $4a4f: $3f
	inc bc                                           ; $4a50: $03
	ld d, b                                          ; $4a51: $50
	inc bc                                           ; $4a52: $03
	ldh a, [rVBK]                                    ; $4a53: $f0 $4f
	ldh a, [$0a]                                     ; $4a55: $f0 $0a
	nop                                              ; $4a57: $00
	rst SubAFromDE                                          ; $4a58: $df
	inc sp                                           ; $4a59: $33
	sbc h                                            ; $4a5a: $9c
	ld h, [hl]                                       ; $4a5b: $66
	ld b, h                                          ; $4a5c: $44
	ld b, h                                          ; $4a5d: $44
	sbc $33                                          ; $4a5e: $de $33
	ld [hl], l                                       ; $4a60: $75
	add b                                            ; $4a61: $80
	ld sp, hl                                        ; $4a62: $f9
	reti                                             ; $4a63: $d9


	rst $38                                          ; $4a64: $ff
	rlca                                             ; $4a65: $07
	ldh a, [$d9]                                     ; $4a66: $f0 $d9

jr_028_4a68:
	ld [bc], a                                       ; $4a68: $02
	reti                                             ; $4a69: $d9


	rst $38                                          ; $4a6a: $ff
	db $db                                           ; $4a6b: $db
	inc h                                            ; $4a6c: $24
	sbc l                                            ; $4a6d: $9d
	inc [hl]                                         ; $4a6e: $34
	inc d                                            ; $4a6f: $14
	call nc, $94ff                                   ; $4a70: $d4 $ff $94
	cp a                                             ; $4a73: $bf
	sbc a                                            ; $4a74: $9f
	sbc a                                            ; $4a75: $9f
	add e                                            ; $4a76: $83
	add e                                            ; $4a77: $83
	sub e                                            ; $4a78: $93
	rst GetHLinHL                                          ; $4a79: $cf
	rst JumpTable                                          ; $4a7a: $c7
	ldh [$f0], a                                     ; $4a7b: $e0 $f0
	rst $38                                          ; $4a7d: $ff
	db $dd                                           ; $4a7e: $dd
	dec a                                            ; $4a7f: $3d
	rst SubAFromDE                                          ; $4a80: $df
	cp l                                             ; $4a81: $bd
	rst SubAFromDE                                          ; $4a82: $df
	cp [hl]                                          ; $4a83: $be
	sbc l                                            ; $4a84: $9d
	db $e4                                           ; $4a85: $e4
	pop hl                                           ; $4a86: $e1
	call c, $80e0                                    ; $4a87: $dc $e0 $80
	ret nz                                           ; $4a8a: $c0

	ld [hl], e                                       ; $4a8b: $73
	call z, $969c                                    ; $4a8c: $cc $9c $96
	sub a                                            ; $4a8f: $97
	jp nc, $ffe0                                     ; $4a90: $d2 $e0 $ff

	rst $38                                          ; $4a93: $ff
	rst AddAOntoHL                                          ; $4a94: $ef
	call c, Call_028_5f1e                            ; $4a95: $dc $1e $5f
	rla                                              ; $4a98: $17
	rrca                                             ; $4a99: $0f
	nop                                              ; $4a9a: $00
	halt                                             ; $4a9b: $76
	cp d                                             ; $4a9c: $ba
	ld e, e                                          ; $4a9d: $5b
	ld [bc], a                                       ; $4a9e: $02
	ld [bc], a                                       ; $4a9f: $02

Call_028_4aa0:
	add d                                            ; $4aa0: $82
	add d                                            ; $4aa1: $82
	ld d, l                                          ; $4aa2: $55
	ld h, e                                          ; $4aa3: $63
	and e                                            ; $4aa4: $a3
	pop bc                                           ; $4aa5: $c1
	ld b, b                                          ; $4aa6: $40
	ld b, b                                          ; $4aa7: $40
	add b                                            ; $4aa8: $80
	add b                                            ; $4aa9: $80
	add b                                            ; $4aaa: $80
	nop                                              ; $4aab: $00
	sub [hl]                                         ; $4aac: $96
	push af                                          ; $4aad: $f5
	ei                                               ; $4aae: $fb
	scf                                              ; $4aaf: $37
	sub l                                            ; $4ab0: $95
	ld d, h                                          ; $4ab1: $54
	or h                                             ; $4ab2: $b4
	ld d, a                                          ; $4ab3: $57
	rst $38                                          ; $4ab4: $ff
	rst $38                                          ; $4ab5: $ff
	rra                                              ; $4ab6: $1f
	inc bc                                           ; $4ab7: $03
	inc bc                                           ; $4ab8: $03
	ld [bc], a                                       ; $4ab9: $02
	ld bc, $3a00                                     ; $4aba: $01 $00 $3a
	sbc [hl]                                         ; $4abd: $9e
	rrca                                             ; $4abe: $0f
	inc b                                            ; $4abf: $04
	db $ec                                           ; $4ac0: $ec
	xor h                                            ; $4ac1: $ac
	ld e, h                                          ; $4ac2: $5c
	db $ec                                           ; $4ac3: $ec
	di                                               ; $4ac4: $f3
	rst SubAFromDE                                          ; $4ac5: $df
	cpl                                              ; $4ac6: $2f
	xor [hl]                                         ; $4ac7: $ae
	and $9c                                          ; $4ac8: $e6 $9c
	and $c6                                          ; $4aca: $e6 $c6
	ld c, $7b                                        ; $4acc: $0e $7b
	db $dd                                           ; $4ace: $dd
	inc bc                                           ; $4acf: $03
	ld d, b                                          ; $4ad0: $50
	inc bc                                           ; $4ad1: $03
	ldh a, [$5b]                                     ; $4ad2: $f0 $5b
	ldh a, [$0b]                                     ; $4ad4: $f0 $0b
	nop                                              ; $4ad6: $00
	sub a                                            ; $4ad7: $97
	inc sp                                           ; $4ad8: $33
	dec [hl]                                         ; $4ad9: $35
	ld h, h                                          ; $4ada: $64
	ld b, h                                          ; $4adb: $44
	ld b, h                                          ; $4adc: $44
	ld b, l                                          ; $4add: $45
	inc sp                                           ; $4ade: $33
	inc sp                                           ; $4adf: $33
	sbc e                                            ; $4ae0: $9b
	add b                                            ; $4ae1: $80
	rst SubAFromDE                                          ; $4ae2: $df
	ld [bc], a                                       ; $4ae3: $02
	ei                                               ; $4ae4: $fb
	reti                                             ; $4ae5: $d9


	rst $38                                          ; $4ae6: $ff
	ld sp, hl                                        ; $4ae7: $f9
	reti                                             ; $4ae8: $d9


	rst $38                                          ; $4ae9: $ff
	sbc [hl]                                         ; $4aea: $9e
	jr nz, jr_028_4b38                               ; $4aeb: $20 $4b

	ldh a, [$d9]                                     ; $4aed: $f0 $d9
	ld [bc], a                                       ; $4aef: $02
	reti                                             ; $4af0: $d9


	rst $38                                          ; $4af1: $ff
	rst SubAFromDE                                          ; $4af2: $df
	inc hl                                           ; $4af3: $23
	sbc h                                            ; $4af4: $9c
	inc h                                            ; $4af5: $24
	add hl, sp                                       ; $4af6: $39
	cpl                                              ; $4af7: $2f
	sbc $24                                          ; $4af8: $de $24
	reti                                             ; $4afa: $d9


	rst $38                                          ; $4afb: $ff
	sbc b                                            ; $4afc: $98
	add b                                            ; $4afd: $80
	inc bc                                           ; $4afe: $03
	ld c, $f8                                        ; $4aff: $0e $f8
	rst $38                                          ; $4b01: $ff
	rst $38                                          ; $4b02: $ff
	ei                                               ; $4b03: $fb
	call c, $94ff                                    ; $4b04: $dc $ff $94
	add a                                            ; $4b07: $87
	and h                                            ; $4b08: $a4
	cp [hl]                                          ; $4b09: $be
	adc a                                            ; $4b0a: $8f
	ldh [c], a                                       ; $4b0b: $e2
	add h                                            ; $4b0c: $84
	dec c                                            ; $4b0d: $0d
	dec de                                           ; $4b0e: $1b
	ld [hl], $fd                                     ; $4b0f: $36 $fd
	add l                                            ; $4b11: $85
	ld l, a                                          ; $4b12: $6f
	rst AddAOntoHL                                          ; $4b13: $ef
	rst SubAFromDE                                          ; $4b14: $df
	rst $38                                          ; $4b15: $ff
	sbc d                                            ; $4b16: $9a
	cp $7d                                           ; $4b17: $fe $7d
	set 6, a                                         ; $4b19: $cb $f7
	ld [$ffdd], sp                                   ; $4b1b: $08 $dd $ff
	sbc h                                            ; $4b1e: $9c
	rst JumpTable                                          ; $4b1f: $c7
	cp a                                             ; $4b20: $bf
	inc a                                            ; $4b21: $3c
	ld a, e                                          ; $4b22: $7b
	sub e                                            ; $4b23: $93
	add b                                            ; $4b24: $80
	rrca                                             ; $4b25: $0f
	ccf                                              ; $4b26: $3f
	cpl                                              ; $4b27: $2f
	rst $38                                          ; $4b28: $ff
	rst $38                                          ; $4b29: $ff
	ld b, [hl]                                       ; $4b2a: $46
	ld a, [$86ff]                                    ; $4b2b: $fa $ff $86
	add $f9                                          ; $4b2e: $c6 $f9
	pop af                                           ; $4b30: $f1
	ld hl, $fffb                                     ; $4b31: $21 $fb $ff
	rlca                                             ; $4b34: $07
	jp $3ce3                                         ; $4b35: $c3 $e3 $3c


jr_028_4b38:
	dec a                                            ; $4b38: $3d
	ld a, c                                          ; $4b39: $79
	ld a, [$fffb]                                    ; $4b3a: $fa $fb $ff
	rst FarCall                                          ; $4b3d: $f7
	rst FarCall                                          ; $4b3e: $f7
	rst SubAFromBC                                          ; $4b3f: $e7
	rst SubAFromBC                                          ; $4b40: $e7
	rst GetHLinHL                                          ; $4b41: $cf
	adc a                                            ; $4b42: $8f
	adc a                                            ; $4b43: $8f
	add b                                            ; $4b44: $80
	inc c                                            ; $4b45: $0c
	dec c                                            ; $4b46: $0d
	rst $38                                          ; $4b47: $ff
	xor $ae                                          ; $4b48: $ee $ae
	sub $5e                                          ; $4b4a: $d6 $5e
	ld a, [$e3fe]                                    ; $4b4c: $fa $fe $e3
	ldh a, [c]                                       ; $4b4f: $f2
	cp e                                             ; $4b50: $bb
	ei                                               ; $4b51: $fb
	ld a, e                                          ; $4b52: $7b
	ei                                               ; $4b53: $fb
	rst $38                                          ; $4b54: $ff
	ld b, a                                          ; $4b55: $47
	jp $eee3                                         ; $4b56: $c3 $e3 $ee


	xor $ce                                          ; $4b59: $ee $ce
	call z, $88cc                                    ; $4b5b: $cc $cc $88
	nop                                              ; $4b5e: $00
	add b                                            ; $4b5f: $80
	dec sp                                           ; $4b60: $3b
	ld a, e                                          ; $4b61: $7b
	ld a, e                                          ; $4b62: $7b
	ld a, a                                          ; $4b63: $7f
	scf                                              ; $4b64: $37
	ld d, b                                          ; $4b65: $50
	ld b, a                                          ; $4b66: $47
	ldh a, [$98]                                     ; $4b67: $f0 $98
	ld b, $0e                                        ; $4b69: $06 $0e
	dec c                                            ; $4b6b: $0d
	add hl, bc                                       ; $4b6c: $09
	inc bc                                           ; $4b6d: $03
	rlca                                             ; $4b6e: $07
	ld b, $63                                        ; $4b6f: $06 $63
	ldh a, [$9b]                                     ; $4b71: $f0 $9b
	ret nz                                           ; $4b73: $c0

	ldh [$f0], a                                     ; $4b74: $e0 $f0
	jr nc, jr_028_4bef                               ; $4b76: $30 $77

	inc l                                            ; $4b78: $2c
	reti                                             ; $4b79: $d9


	rst $38                                          ; $4b7a: $ff
	dec bc                                           ; $4b7b: $0b
	nop                                              ; $4b7c: $00
	sub a                                            ; $4b7d: $97
	inc sp                                           ; $4b7e: $33
	dec [hl]                                         ; $4b7f: $35
	ld h, h                                          ; $4b80: $64
	ld b, h                                          ; $4b81: $44
	ld b, h                                          ; $4b82: $44
	ld b, l                                          ; $4b83: $45
	inc sp                                           ; $4b84: $33
	inc sp                                           ; $4b85: $33
	ldh [$80], a                                     ; $4b86: $e0 $80
	sub d                                            ; $4b88: $92
	ld a, a                                          ; $4b89: $7f
	ld l, a                                          ; $4b8a: $6f
	xor $dd                                          ; $4b8b: $ee $dd
	cp e                                             ; $4b8d: $bb
	dec sp                                           ; $4b8e: $3b
	inc de                                           ; $4b8f: $13
	inc bc                                           ; $4b90: $03
	db $fc                                           ; $4b91: $fc
	sub b                                            ; $4b92: $90
	ld de, $7f33                                     ; $4b93: $11 $33 $7f
	sbc $ff                                          ; $4b96: $de $ff
	ld a, a                                          ; $4b98: $7f
	db $fc                                           ; $4b99: $fc
	sub h                                            ; $4b9a: $94
	db $fd                                           ; $4b9b: $fd
	ei                                               ; $4b9c: $fb
	or a                                             ; $4b9d: $b7
	add a                                            ; $4b9e: $87
	ld b, $00                                        ; $4b9f: $06 $00
	ld sp, hl                                        ; $4ba1: $f9
	pop hl                                           ; $4ba2: $e1
	jp $efc7                                         ; $4ba3: $c3 $c7 $ef


	sbc $ff                                          ; $4ba6: $de $ff
	sub d                                            ; $4ba8: $92
	db $fc                                           ; $4ba9: $fc
	ld a, h                                          ; $4baa: $7c
	ld hl, sp-$10                                    ; $4bab: $f8 $f0
	db $fc                                           ; $4bad: $fc
	inc a                                            ; $4bae: $3c
	ld [hl], $30                                     ; $4baf: $36 $30
	add a                                            ; $4bb1: $87
	adc a                                            ; $4bb2: $8f
	daa                                              ; $4bb3: $27
	ccf                                              ; $4bb4: $3f
	sbc a                                            ; $4bb5: $9f
	sbc $ff                                          ; $4bb6: $de $ff
	sbc d                                            ; $4bb8: $9a
	rst JumpTable                                          ; $4bb9: $c7
	rst GetHLinHL                                          ; $4bba: $cf
	adc a                                            ; $4bbb: $8f
	dec c                                            ; $4bbc: $0d
	add hl, bc                                       ; $4bbd: $09
	sbc $01                                          ; $4bbe: $de $01
	sbc d                                            ; $4bc0: $9a
	jr c, jr_028_4bf4                                ; $4bc1: $38 $31

	ld [hl], e                                       ; $4bc3: $73
	di                                               ; $4bc4: $f3
	rst FarCall                                          ; $4bc5: $f7
	sbc $ff                                          ; $4bc6: $de $ff
	ld a, a                                          ; $4bc8: $7f
	ret                                              ; $4bc9: $c9


	rst SubAFromDE                                          ; $4bca: $df
	ld de, $219e                                     ; $4bcb: $11 $9e $21
	sbc $22                                          ; $4bce: $de $22
	reti                                             ; $4bd0: $d9


	rst $38                                          ; $4bd1: $ff
	sub a                                            ; $4bd2: $97
	adc l                                            ; $4bd3: $8d
	add hl, bc                                       ; $4bd4: $09
	ld a, [bc]                                       ; $4bd5: $0a
	inc c                                            ; $4bd6: $0c
	jr @+$13                                         ; $4bd7: $18 $11

	ld h, e                                          ; $4bd9: $63
	ld b, h                                          ; $4bda: $44
	call c, $84ff                                    ; $4bdb: $dc $ff $84
	cp $fc                                           ; $4bde: $fe $fc
	ei                                               ; $4be0: $fb
	dec bc                                           ; $4be1: $0b
	ld e, $3c                                        ; $4be2: $1e $3c
	ld a, b                                          ; $4be4: $78
	ldh [$c6], a                                     ; $4be5: $e0 $c6
	dec c                                            ; $4be7: $0d
	inc sp                                           ; $4be8: $33
	ldh a, [$e1]                                     ; $4be9: $f0 $e1
	jp $1f87                                         ; $4beb: $c3 $87 $1f


	ccf                                              ; $4bee: $3f

jr_028_4bef:
	rst $38                                          ; $4bef: $ff
	rst $38                                          ; $4bf0: $ff
	ld de, $6121                                     ; $4bf1: $11 $21 $61

jr_028_4bf4:
	jp $8ec5                                         ; $4bf4: $c3 $c5 $8e


	ld e, $3c                                        ; $4bf7: $1e $3c
	call c, $95ff                                    ; $4bf9: $dc $ff $95
	ei                                               ; $4bfc: $fb
	di                                               ; $4bfd: $f3
	rst SubAFromBC                                          ; $4bfe: $e7
	adc h                                            ; $4bff: $8c
	adc h                                            ; $4c00: $8c
	jr jr_028_4c1c                                   ; $4c01: $18 $19

	ld sp, $7333                                     ; $4c03: $31 $33 $73
	ld [hl], a                                       ; $4c06: $77
	or l                                             ; $4c07: $b5
	ld a, e                                          ; $4c08: $7b
	ret nc                                           ; $4c09: $d0

	sub l                                            ; $4c0a: $95
	sbc $9c                                          ; $4c0b: $de $9c
	ld b, h                                          ; $4c0d: $44
	call nz, $ccc4                                   ; $4c0e: $c4 $c4 $cc
	call z, $9c8c                                    ; $4c11: $cc $8c $9c
	sbc h                                            ; $4c14: $9c
	db $db                                           ; $4c15: $db
	rst $38                                          ; $4c16: $ff
	rst SubAFromDE                                          ; $4c17: $df
	rst FarCall                                          ; $4c18: $f7
	db $dd                                           ; $4c19: $dd
	inc h                                            ; $4c1a: $24
	rst SubAFromDE                                          ; $4c1b: $df

jr_028_4c1c:
	ld h, h                                          ; $4c1c: $64
	sbc l                                            ; $4c1d: $9d
	and $ee                                          ; $4c1e: $e6 $ee
	db $db                                           ; $4c20: $db
	rst $38                                          ; $4c21: $ff
	sbc l                                            ; $4c22: $9d
	cp a                                             ; $4c23: $bf
	cp e                                             ; $4c24: $bb
	ld [hl], a                                       ; $4c25: $77
	ld e, h                                          ; $4c26: $5c
	sbc $ef                                          ; $4c27: $de $ef
	sbc [hl]                                         ; $4c29: $9e
	xor $dd                                          ; $4c2a: $ee $dd
	ld sp, $39de                                     ; $4c2c: $31 $de $39
	sbc e                                            ; $4c2f: $9b
	dec sp                                           ; $4c30: $3b
	ld [hl], e                                       ; $4c31: $73
	ld h, c                                          ; $4c32: $61
	ld b, b                                          ; $4c33: $40
	db $fc                                           ; $4c34: $fc
	rst SubAFromHL                                          ; $4c35: $d7
	rst $38                                          ; $4c36: $ff
	adc a                                            ; $4c37: $8f
	xor $85                                          ; $4c38: $ee $85
	adc a                                            ; $4c3a: $8f
	sbc a                                            ; $4c3b: $9f
	rrca                                             ; $4c3c: $0f
	ld b, $e3                                        ; $4c3d: $06 $e3
	rst SubAFromBC                                          ; $4c3f: $e7
	ld [hl], a                                       ; $4c40: $77
	ld a, a                                          ; $4c41: $7f
	ld [hl], b                                       ; $4c42: $70
	ld h, b                                          ; $4c43: $60
	ldh a, [$f9]                                     ; $4c44: $f0 $f9
	rst $38                                          ; $4c46: $ff
	dec h                                            ; $4c47: $25
	ld a, e                                          ; $4c48: $7b
	inc a                                            ; $4c49: $3c
	add h                                            ; $4c4a: $84
	xor a                                            ; $4c4b: $af
	rlca                                             ; $4c4c: $07
	dec b                                            ; $4c4d: $05
	sbc $ff                                          ; $4c4e: $de $ff
	rst SubAFromBC                                          ; $4c50: $e7
	add e                                            ; $4c51: $83
	rlca                                             ; $4c52: $07
	ld e, [hl]                                       ; $4c53: $5e
	cp $fe                                           ; $4c54: $fe $fe
	rst AddAOntoHL                                          ; $4c56: $ef
	rst $38                                          ; $4c57: $ff
	ld sp, hl                                        ; $4c58: $f9
	ld e, $bf                                        ; $4c59: $1e $bf
	ld sp, hl                                        ; $4c5b: $f9
	ld hl, sp-$20                                    ; $4c5c: $f8 $e0
	inc de                                           ; $4c5e: $13
	sbc a                                            ; $4c5f: $9f
	rst AddAOntoHL                                          ; $4c60: $ef
	rst SubAFromBC                                          ; $4c61: $e7
	ld c, l                                          ; $4c62: $4d
	ld h, [hl]                                       ; $4c63: $66
	daa                                              ; $4c64: $27
	ld a, a                                          ; $4c65: $7f
	dec bc                                           ; $4c66: $0b
	nop                                              ; $4c67: $00
	rst SubAFromDE                                          ; $4c68: $df
	ld [hl+], a                                      ; $4c69: $22
	sbc c                                            ; $4c6a: $99
	ld h, [hl]                                       ; $4c6b: $66
	ld h, h                                          ; $4c6c: $64
	ld b, h                                          ; $4c6d: $44
	ld b, l                                          ; $4c6e: $45
	ld d, d                                          ; $4c6f: $52
	ld [hl+], a                                      ; $4c70: $22
	ldh a, [$80]                                     ; $4c71: $f0 $80
	sbc l                                            ; $4c73: $9d
	rst $38                                          ; $4c74: $ff
	cp $db                                           ; $4c75: $fe $db
	rst $38                                          ; $4c77: $ff
	sub l                                            ; $4c78: $95
	inc de                                           ; $4c79: $13
	inc sp                                           ; $4c7a: $33
	and e                                            ; $4c7b: $a3
	dec d                                            ; $4c7c: $15
	inc l                                            ; $4c7d: $2c
	jr z, jr_028_4c89                                ; $4c7e: $28 $09

	cp a                                             ; $4c80: $bf
	rst $38                                          ; $4c81: $ff
	ccf                                              ; $4c82: $3f
	db $dd                                           ; $4c83: $dd
	rst $38                                          ; $4c84: $ff
	ld a, a                                          ; $4c85: $7f
	ld sp, hl                                        ; $4c86: $f9
	rst SubAFromDE                                          ; $4c87: $df
	db $fc                                           ; $4c88: $fc

jr_028_4c89:
	sub [hl]                                         ; $4c89: $96
	or b                                             ; $4c8a: $b0
	ld bc, $77a3                                     ; $4c8b: $01 $a3 $77
	db $fd                                           ; $4c8e: $fd
	ld hl, sp-$02                                    ; $4c8f: $f8 $fe
	rst $38                                          ; $4c91: $ff
	pop af                                           ; $4c92: $f1
	sbc $ff                                          ; $4c93: $de $ff
	sub h                                            ; $4c95: $94
	ei                                               ; $4c96: $fb
	pop af                                           ; $4c97: $f1
	ld h, e                                          ; $4c98: $63
	nop                                              ; $4c99: $00
	adc [hl]                                         ; $4c9a: $8e
	ld [hl], c                                       ; $4c9b: $71
	jr z, jr_028_4cde                                ; $4c9c: $28 $40

	cp $ce                                           ; $4c9e: $fe $ce
	ld a, a                                          ; $4ca0: $7f
	db $db                                           ; $4ca1: $db
	rst $38                                          ; $4ca2: $ff
	adc [hl]                                         ; $4ca3: $8e
	rst JumpTable                                          ; $4ca4: $c7
	rst FarCall                                          ; $4ca5: $f7
	rst FarCall                                          ; $4ca6: $f7
	ld h, $c7                                        ; $4ca7: $26 $c7
	ld h, e                                          ; $4ca9: $63
	ld [hl+], a                                      ; $4caa: $22
	dec de                                           ; $4cab: $1b
	ld a, [hl-]                                      ; $4cac: $3a
	ldh [c], a                                       ; $4cad: $e2
	call nz, $ccc4                                   ; $4cae: $c4 $c4 $cc
	ret z                                            ; $4cb1: $c8

	adc b                                            ; $4cb2: $88

Call_028_4cb3:
	adc b                                            ; $4cb3: $88
	sub b                                            ; $4cb4: $90
	reti                                             ; $4cb5: $d9


	rst $38                                          ; $4cb6: $ff
	add b                                            ; $4cb7: $80
	rst SubAFromHL                                          ; $4cb8: $d7
	sbc l                                            ; $4cb9: $9d
	xor c                                            ; $4cba: $a9
	ld a, [hl-]                                      ; $4cbb: $3a
	ld d, e                                          ; $4cbc: $53
	ld d, l                                          ; $4cbd: $55
	add l                                            ; $4cbe: $85
	add h                                            ; $4cbf: $84
	jr c, jr_028_4d35                                ; $4cc0: $38 $73

	ld [hl], a                                       ; $4cc2: $77
	rst SubAFromBC                                          ; $4cc3: $e7
	xor $ee                                          ; $4cc4: $ee $ee
	cp $ff                                           ; $4cc6: $fe $ff
	ld a, b                                          ; $4cc8: $78
	ld l, b                                          ; $4cc9: $68
	pop af                                           ; $4cca: $f1
	pop de                                           ; $4ccb: $d1
	pop hl                                           ; $4ccc: $e1
	ld b, d                                          ; $4ccd: $42
	ld b, d                                          ; $4cce: $42
	add l                                            ; $4ccf: $85
	adc a                                            ; $4cd0: $8f
	sbc a                                            ; $4cd1: $9f
	ld e, $3e                                        ; $4cd2: $1e $3e
	ld a, $fc                                        ; $4cd4: $3e $fc
	db $fc                                           ; $4cd6: $fc
	add l                                            ; $4cd7: $85
	ld hl, sp-$66                                    ; $4cd8: $f8 $9a
	sbc d                                            ; $4cda: $9a
	sub d                                            ; $4cdb: $92
	dec [hl]                                         ; $4cdc: $35
	dec h                                            ; $4cdd: $25

jr_028_4cde:
	ld l, c                                          ; $4cde: $69
	ret                                              ; $4cdf: $c9


	sub b                                            ; $4ce0: $90
	ld b, $06                                        ; $4ce1: $06 $06
	ld c, $0e                                        ; $4ce3: $0e $0e
	ld e, $1e                                        ; $4ce5: $1e $1e
	ld a, $7f                                        ; $4ce7: $3e $7f
	jp nz, $aaa0                                     ; $4ce9: $c2 $a0 $aa

	ld [$696a], a                                    ; $4cec: $ea $6a $69
	or l                                             ; $4cef: $b5
	and l                                            ; $4cf0: $a5
	inc h                                            ; $4cf1: $24
	sbc $46                                          ; $4cf2: $de $46
	rst SubAFromDE                                          ; $4cf4: $df
	add $95                                          ; $4cf5: $c6 $95
	adc $de                                          ; $4cf7: $ce $de
	adc b                                            ; $4cf9: $88
	inc l                                            ; $4cfa: $2c
	dec l                                            ; $4cfb: $2d
	dec c                                            ; $4cfc: $0d
	adc h                                            ; $4cfd: $8c
	sbc h                                            ; $4cfe: $9c
	ld d, h                                          ; $4cff: $54
	ld d, h                                          ; $4d00: $54
	sbc $46                                          ; $4d01: $de $46
	adc l                                            ; $4d03: $8d
	ld h, [hl]                                       ; $4d04: $66
	ld h, a                                          ; $4d05: $67
	ld h, a                                          ; $4d06: $67
	rst AddAOntoHL                                          ; $4d07: $ef
	rst AddAOntoHL                                          ; $4d08: $ef
	sbc e                                            ; $4d09: $9b
	dec de                                           ; $4d0a: $1b
	ld hl, $d6c4                                     ; $4d0b: $21 $c4 $d6
	xor h                                            ; $4d0e: $ac
	xor h                                            ; $4d0f: $ac
	xor l                                            ; $4d10: $ad
	ld d, c                                          ; $4d11: $51
	ld c, c                                          ; $4d12: $49
	ld c, h                                          ; $4d13: $4c
	ld l, h                                          ; $4d14: $6c
	ld l, h                                          ; $4d15: $6c
	sbc $76                                          ; $4d16: $de $76
	adc [hl]                                         ; $4d18: $8e
	ld d, h                                          ; $4d19: $54
	adc $aa                                          ; $4d1a: $ce $aa
	rst JumpTable                                          ; $4d1c: $c7
	rst SubAFromHL                                          ; $4d1d: $d7
	ld h, a                                          ; $4d1e: $67
	ld h, a                                          ; $4d1f: $67
	ld [hl], a                                       ; $4d20: $77
	adc a                                            ; $4d21: $8f
	add a                                            ; $4d22: $87
	rst JumpTable                                          ; $4d23: $c7
	ld h, e                                          ; $4d24: $63
	ld h, e                                          ; $4d25: $63
	ld [hl], e                                       ; $4d26: $73
	ld sp, $7f31                                     ; $4d27: $31 $31 $7f
	db $dd                                           ; $4d2a: $dd
	ccf                                              ; $4d2b: $3f
	rst SubAFromDE                                          ; $4d2c: $df
	cp a                                             ; $4d2d: $bf
	ld l, e                                          ; $4d2e: $6b
	add hl, sp                                       ; $4d2f: $39
	rst SubAFromDE                                          ; $4d30: $df
	cp $df                                           ; $4d31: $fe $df
	rst $38                                          ; $4d33: $ff
	add c                                            ; $4d34: $81

jr_028_4d35:
	db $fc                                           ; $4d35: $fc
	rst SubAFromDE                                          ; $4d36: $df
	ld a, a                                          ; $4d37: $7f
	ld l, $fe                                        ; $4d38: $2e $fe
	db $fc                                           ; $4d3a: $fc
	inc a                                            ; $4d3b: $3c
	ld a, [hl]                                       ; $4d3c: $7e
	rst $38                                          ; $4d3d: $ff
	cp b                                             ; $4d3e: $b8
	sub b                                            ; $4d3f: $90
	db $d3                                           ; $4d40: $d3
	rla                                              ; $4d41: $17
	ccf                                              ; $4d42: $3f
	rst $38                                          ; $4d43: $ff
	cp $7f                                           ; $4d44: $fe $7f
	ld a, e                                          ; $4d46: $7b
	ei                                               ; $4d47: $fb
	rst $38                                          ; $4d48: $ff
	ld a, e                                          ; $4d49: $7b
	ld a, [hl]                                       ; $4d4a: $7e
	db $ed                                           ; $4d4b: $ed
	pop af                                           ; $4d4c: $f1
	db $db                                           ; $4d4d: $db
	adc [hl]                                         ; $4d4e: $8e
	inc e                                            ; $4d4f: $1c
	inc c                                            ; $4d50: $0c
	add [hl]                                         ; $4d51: $86
	adc a                                            ; $4d52: $8f
	call c, $94ff                                    ; $4d53: $dc $ff $94
	rst SubAFromDE                                          ; $4d56: $df
	rst $38                                          ; $4d57: $ff
	ld a, [hl]                                       ; $4d58: $7e
	ld [$ff9b], sp                                   ; $4d59: $08 $9b $ff
	scf                                              ; $4d5c: $37
	ld sp, $e870                                     ; $4d5d: $31 $70 $e8
	di                                               ; $4d60: $f3
	dec bc                                           ; $4d61: $0b
	nop                                              ; $4d62: $00
	rst SubAFromDE                                          ; $4d63: $df
	ld [hl+], a                                      ; $4d64: $22
	sbc [hl]                                         ; $4d65: $9e
	halt                                             ; $4d66: $76
	sbc $66                                          ; $4d67: $de $66
	sbc l                                            ; $4d69: $9d
	ld [hl], d                                       ; $4d6a: $72
	ld [hl+], a                                      ; $4d6b: $22
	or $80                                           ; $4d6c: $f6 $80
	rst SubAFromDE                                          ; $4d6e: $df
	rst $38                                          ; $4d6f: $ff
	sbc [hl]                                         ; $4d70: $9e
	rst FarCall                                          ; $4d71: $f7
	call c, $93ff                                    ; $4d72: $dc $ff $93
	or a                                             ; $4d75: $b7
	rst $38                                          ; $4d76: $ff
	rst $38                                          ; $4d77: $ff
	pop af                                           ; $4d78: $f1
	pop af                                           ; $4d79: $f1
	rrca                                             ; $4d7a: $0f
	rlca                                             ; $4d7b: $07
	and [hl]                                         ; $4d7c: $a6
	rst FarCall                                          ; $4d7d: $f7
	rst AddAOntoHL                                          ; $4d7e: $ef
	cp a                                             ; $4d7f: $bf
	sbc e                                            ; $4d80: $9b
	ld a, e                                          ; $4d81: $7b
	db $f4                                           ; $4d82: $f4
	jp c, $99ff                                      ; $4d83: $da $ff $99

	dec e                                            ; $4d86: $1d
	ld sp, $f9ff                                     ; $4d87: $31 $ff $f9
	ccf                                              ; $4d8a: $3f
	rst SubAFromDE                                          ; $4d8b: $df
	sbc $ff                                          ; $4d8c: $de $ff
	add b                                            ; $4d8e: $80
	ei                                               ; $4d8f: $fb
	rst $38                                          ; $4d90: $ff
	rst $38                                          ; $4d91: $ff
	ld hl, sp-$0f                                    ; $4d92: $f8 $f1
	rla                                              ; $4d94: $17
	dec de                                           ; $4d95: $1b
	ld [hl], e                                       ; $4d96: $73
	adc a                                            ; $4d97: $8f
	rst SubAFromBC                                          ; $4d98: $e7
	rst AddAOntoHL                                          ; $4d99: $ef
	cp $fe                                           ; $4d9a: $fe $fe
	db $fc                                           ; $4d9c: $fc
	ld sp, hl                                        ; $4d9d: $f9
	pop af                                           ; $4d9e: $f1
	or a                                             ; $4d9f: $b7
	ld hl, sp-$01                                    ; $4da0: $f8 $ff
	rst $38                                          ; $4da2: $ff
	rst GetHLinHL                                          ; $4da3: $cf
	add a                                            ; $4da4: $87
	ld c, a                                          ; $4da5: $4f
	rst $38                                          ; $4da6: $ff
	rst $38                                          ; $4da7: $ff
	cp $fc                                           ; $4da8: $fe $fc
	db $fd                                           ; $4daa: $fd
	ld sp, hl                                        ; $4dab: $f9
	di                                               ; $4dac: $f3
	di                                               ; $4dad: $f3
	rst SubAFromDE                                          ; $4dae: $df
	and $7b                                          ; $4daf: $e6 $7b
	or $80                                           ; $4db1: $f6 $80
	cp $fd                                           ; $4db3: $fe $fd
	db $fd                                           ; $4db5: $fd
	ei                                               ; $4db6: $fb
	ei                                               ; $4db7: $fb
	ret z                                            ; $4db8: $c8

	pop de                                           ; $4db9: $d1
	add a                                            ; $4dba: $87
	xor [hl]                                         ; $4dbb: $ae
	dec e                                            ; $4dbc: $1d
	ld d, [hl]                                       ; $4dbd: $56
	ld l, c                                          ; $4dbe: $69
	rst GetHLinHL                                          ; $4dbf: $cf
	jr nc, jr_028_4e22                               ; $4dc0: $30 $60

	ldh [$c1], a                                     ; $4dc2: $e0 $c1
	jp nz, $9c8c                                     ; $4dc4: $c2 $8c $9c

	jr c, jr_028_4e2c                                ; $4dc7: $38 $63

	jp nc, $9028                                     ; $4dc9: $d2 $28 $90

	jr z, @+$5a                                      ; $4dcc: $28 $58

	sbc b                                            ; $4dce: $98
	jr nc, jr_028_4ded                               ; $4dcf: $30 $1c

	ld hl, $c78f                                     ; $4dd1: $21 $8f $c7
	rrca                                             ; $4dd4: $0f
	rla                                              ; $4dd5: $17
	daa                                              ; $4dd6: $27
	ld h, a                                          ; $4dd7: $67
	rst GetHLinHL                                          ; $4dd8: $cf
	ldh [rIF], a                                     ; $4dd9: $e0 $0f
	ld b, b                                          ; $4ddb: $40
	ld b, d                                          ; $4ddc: $42
	ld b, [hl]                                       ; $4ddd: $46
	ld b, [hl]                                       ; $4dde: $46
	ld c, l                                          ; $4ddf: $4d
	adc $1f                                          ; $4de0: $ce $1f
	ldh a, [$dd]                                     ; $4de2: $f0 $dd
	add c                                            ; $4de4: $81
	sub b                                            ; $4de5: $90
	add d                                            ; $4de6: $82
	ld [bc], a                                       ; $4de7: $02
	inc sp                                           ; $4de8: $33
	ld e, c                                          ; $4de9: $59
	sbc l                                            ; $4dea: $9d
	nop                                              ; $4deb: $00
	inc b                                            ; $4dec: $04

jr_028_4ded:
	ld c, c                                          ; $4ded: $49
	ld c, b                                          ; $4dee: $48
	ld b, b                                          ; $4def: $40
	call z, $22a6                                    ; $4df0: $cc $a6 $22
	dec hl                                           ; $4df3: $2b
	add hl, hl                                       ; $4df4: $29
	sbc $24                                          ; $4df5: $de $24
	add b                                            ; $4df7: $80

jr_028_4df8:
	ld b, e                                          ; $4df8: $43
	or h                                             ; $4df9: $b4
	ld d, e                                          ; $4dfa: $53
	add hl, hl                                       ; $4dfb: $29
	add b                                            ; $4dfc: $80
	inc d                                            ; $4dfd: $14
	ld b, b                                          ; $4dfe: $40
	ld a, [bc]                                       ; $4dff: $0a
	cp h                                             ; $4e00: $bc
	ld c, e                                          ; $4e01: $4b
	inc h                                            ; $4e02: $24
	ld [de], a                                       ; $4e03: $12
	add hl, de                                       ; $4e04: $19
	adc c                                            ; $4e05: $89
	adc h                                            ; $4e06: $8c
	call nz, $edb4                                   ; $4e07: $c4 $b4 $ed
	dec hl                                           ; $4e0a: $2b
	ld c, d                                          ; $4e0b: $4a
	inc [hl]                                         ; $4e0c: $34
	sbc d                                            ; $4e0d: $9a
	dec c                                            ; $4e0e: $0d
	ld b, [hl]                                       ; $4e0f: $46
	ld a, b                                          ; $4e10: $78
	ld e, $c7                                        ; $4e11: $1e $c7
	ld sp, $0c18                                     ; $4e13: $31 $18 $0c
	add [hl]                                         ; $4e16: $86
	adc [hl]                                         ; $4e17: $8e
	sub e                                            ; $4e18: $93
	ld c, a                                          ; $4e19: $4f
	scf                                              ; $4e1a: $37
	ld c, e                                          ; $4e1b: $4b
	db $ed                                           ; $4e1c: $ed
	or [hl]                                          ; $4e1d: $b6
	ld e, a                                          ; $4e1e: $5f
	cpl                                              ; $4e1f: $2f
	sbc e                                            ; $4e20: $9b
	ccf                                              ; $4e21: $3f

jr_028_4e22:
	rrca                                             ; $4e22: $0f
	add a                                            ; $4e23: $87
	jp $3061                                         ; $4e24: $c3 $61 $30


	jr jr_028_4e35                                   ; $4e27: $18 $0c

	db $db                                           ; $4e29: $db
	rst $38                                          ; $4e2a: $ff
	rst SubAFromDE                                          ; $4e2b: $df

jr_028_4e2c:
	ld a, a                                          ; $4e2c: $7f
	sub a                                            ; $4e2d: $97
	rst $38                                          ; $4e2e: $ff
	rst SubAFromDE                                          ; $4e2f: $df
	sub a                                            ; $4e30: $97
	adc a                                            ; $4e31: $8f
	rst $38                                          ; $4e32: $ff
	rst $38                                          ; $4e33: $ff
	db $fc                                           ; $4e34: $fc

jr_028_4e35:
	cp $7b                                           ; $4e35: $fe $7b
	ld sp, $fd90                                     ; $4e37: $31 $90 $fd
	rst AddAOntoHL                                          ; $4e3a: $ef
	db $fd                                           ; $4e3b: $fd
	rst $38                                          ; $4e3c: $ff
	rst $38                                          ; $4e3d: $ff
	jr jr_028_4df8                                   ; $4e3e: $18 $b8

	cp h                                             ; $4e40: $bc
	ld e, $1f                                        ; $4e41: $1e $1f
	ccf                                              ; $4e43: $3f
	jr c, @+$32                                      ; $4e44: $38 $30

	rst SubAFromDE                                          ; $4e46: $df
	sbc a                                            ; $4e47: $9f
	jp c, $93ff                                      ; $4e48: $da $ff $93

	ld a, a                                          ; $4e4b: $7f
	inc a                                            ; $4e4c: $3c
	ld b, h                                          ; $4e4d: $44
	adc l                                            ; $4e4e: $8d
	sub b                                            ; $4e4f: $90
	ld h, b                                          ; $4e50: $60
	ld h, l                                          ; $4e51: $65
	ld e, $e7                                        ; $4e52: $1e $e7
	db $fc                                           ; $4e54: $fc
	rst $38                                          ; $4e55: $ff
	rst AddAOntoHL                                          ; $4e56: $ef
	ld a, e                                          ; $4e57: $7b
	db $db                                           ; $4e58: $db
	ld a, a                                          ; $4e59: $7f
	ld hl, sp-$67                                    ; $4e5a: $f8 $99
	adc h                                            ; $4e5c: $8c
	add e                                            ; $4e5d: $83
	sbc a                                            ; $4e5e: $9f
	add hl, de                                       ; $4e5f: $19
	rst SubAFromDE                                          ; $4e60: $df
	jr c, jr_028_4e6c                                ; $4e61: $38 $09

	nop                                              ; $4e63: $00
	rst SubAFromDE                                          ; $4e64: $df
	ld [hl+], a                                      ; $4e65: $22
	db $dd                                           ; $4e66: $dd
	ld h, [hl]                                       ; $4e67: $66
	sbc l                                            ; $4e68: $9d
	ld [hl], d                                       ; $4e69: $72
	ld [hl+], a                                      ; $4e6a: $22
	pop hl                                           ; $4e6b: $e1

jr_028_4e6c:
	add b                                            ; $4e6c: $80
	reti                                             ; $4e6d: $d9


	rst $38                                          ; $4e6e: $ff
	adc c                                            ; $4e6f: $89
	ld c, c                                          ; $4e70: $49
	ld hl, sp-$08                                    ; $4e71: $f8 $f8
	or b                                             ; $4e73: $b0
	ld [$3bdb], sp                                   ; $4e74: $08 $db $3b
	inc hl                                           ; $4e77: $23
	rst $38                                          ; $4e78: $ff
	ei                                               ; $4e79: $fb
	di                                               ; $4e7a: $f3
	rst $38                                          ; $4e7b: $ff
	rst $38                                          ; $4e7c: $ff
	ccf                                              ; $4e7d: $3f
	sbc a                                            ; $4e7e: $9f
	rst $38                                          ; $4e7f: $ff
	db $fd                                           ; $4e80: $fd
	ld a, $7c                                        ; $4e81: $3e $7c
	ld hl, sp-$33                                    ; $4e83: $f8 $cd
	rst GetHLinHL                                          ; $4e85: $cf
	jp c, $98ff                                      ; $4e86: $da $ff $98

	cp a                                             ; $4e89: $bf
	push hl                                          ; $4e8a: $e5
	rst $38                                          ; $4e8b: $ff
	rra                                              ; $4e8c: $1f
	ccf                                              ; $4e8d: $3f
	rra                                              ; $4e8e: $1f
	ccf                                              ; $4e8f: $3f
	jp c, $92ff                                      ; $4e90: $da $ff $92

	rst SubAFromDE                                          ; $4e93: $df
	ld e, a                                          ; $4e94: $5f
	rst $38                                          ; $4e95: $ff
	rst $38                                          ; $4e96: $ff
	rst AddAOntoHL                                          ; $4e97: $ef
	jp $c084                                         ; $4e98: $c3 $84 $c0


	rst FarCall                                          ; $4e9b: $f7
	db $fc                                           ; $4e9c: $fc
	db $fc                                           ; $4e9d: $fc
	sub e                                            ; $4e9e: $93
	sub c                                            ; $4e9f: $91
	reti                                             ; $4ea0: $d9


	rst $38                                          ; $4ea1: $ff
	adc a                                            ; $4ea2: $8f
	rra                                              ; $4ea3: $1f
	ld h, e                                          ; $4ea4: $63
	ld h, e                                          ; $4ea5: $63
	rst FarCall                                          ; $4ea6: $f7
	rst FarCall                                          ; $4ea7: $f7
	rlca                                             ; $4ea8: $07
	inc sp                                           ; $4ea9: $33
	add hl, sp                                       ; $4eaa: $39
	rst $38                                          ; $4eab: $ff
	cp $f8                                           ; $4eac: $fe $f8
	ldh [c], a                                       ; $4eae: $e2
	rst GetHLinHL                                          ; $4eaf: $cf
	sbc [hl]                                         ; $4eb0: $9e
	add hl, sp                                       ; $4eb1: $39
	ld h, d                                          ; $4eb2: $62
	sbc $ff                                          ; $4eb3: $de $ff
	add b                                            ; $4eb5: $80
	db $fc                                           ; $4eb6: $fc
	ldh a, [$e1]                                     ; $4eb7: $f0 $e1
	add $9c                                          ; $4eb9: $c6 $9c
	ret nz                                           ; $4ebb: $c0

	rrca                                             ; $4ebc: $0f
	jp $c000                                         ; $4ebd: $c3 $00 $c0


	ld sp, $0c80                                     ; $4ec0: $31 $80 $0c
	rst $38                                          ; $4ec3: $ff
	ldh a, [rP1]                                     ; $4ec4: $f0 $00
	nop                                              ; $4ec6: $00
	ccf                                              ; $4ec7: $3f
	ret nz                                           ; $4ec8: $c0

	nop                                              ; $4ec9: $00
	inc bc                                           ; $4eca: $03
	add hl, sp                                       ; $4ecb: $39
	adc c                                            ; $4ecc: $89
	ldh a, [$38]                                     ; $4ecd: $f0 $38
	ld a, h                                          ; $4ecf: $7c
	add [hl]                                         ; $4ed0: $86
	add hl, de                                       ; $4ed1: $19
	inc c                                            ; $4ed2: $0c
	cp $7e                                           ; $4ed3: $fe $7e
	add b                                            ; $4ed5: $80
	rrca                                             ; $4ed6: $0f
	rlca                                             ; $4ed7: $07
	add e                                            ; $4ed8: $83
	ld a, c                                          ; $4ed9: $79
	ld b, $f3                                        ; $4eda: $06 $f3
	ld e, e                                          ; $4edc: $5b
	ld d, a                                          ; $4edd: $57
	or a                                             ; $4ede: $b7
	cp b                                             ; $4edf: $b8
	jr nc, jr_028_4f02                               ; $4ee0: $30 $20

	nop                                              ; $4ee2: $00
	inc b                                            ; $4ee3: $04
	rst SubAFromBC                                          ; $4ee4: $e7
	rst AddAOntoHL                                          ; $4ee5: $ef
	rst GetHLinHL                                          ; $4ee6: $cf
	rst GetHLinHL                                          ; $4ee7: $cf
	rst SubAFromDE                                          ; $4ee8: $df
	rst SubAFromDE                                          ; $4ee9: $df
	rst $38                                          ; $4eea: $ff
	ei                                               ; $4eeb: $fb
	ld hl, sp-$3f                                    ; $4eec: $f8 $c1
	ld c, $31                                        ; $4eee: $0e $31
	ret nz                                           ; $4ef0: $c0

	inc a                                            ; $4ef1: $3c
	nop                                              ; $4ef2: $00
	ld a, $ff                                        ; $4ef3: $3e $ff
	adc l                                            ; $4ef5: $8d
	cp $f0                                           ; $4ef6: $fe $f0
	ret nz                                           ; $4ef8: $c0

	ccf                                              ; $4ef9: $3f
	ret nz                                           ; $4efa: $c0

	rst $38                                          ; $4efb: $ff
	pop bc                                           ; $4efc: $c1
	rrca                                             ; $4efd: $0f
	ld sp, hl                                        ; $4efe: $f9
	inc bc                                           ; $4eff: $03
	ccf                                              ; $4f00: $3f
	rrca                                             ; $4f01: $0f

jr_028_4f02:
	inc hl                                           ; $4f02: $23
	add h                                            ; $4f03: $84
	ld de, $07ff                                     ; $4f04: $11 $ff $07
	nop                                              ; $4f07: $00
	ld a, e                                          ; $4f08: $7b
	sbc e                                            ; $4f09: $9b
	sbc l                                            ; $4f0a: $9d
	inc bc                                           ; $4f0b: $03
	ldh [$da], a                                     ; $4f0c: $e0 $da
	rst $38                                          ; $4f0e: $ff
	ld a, e                                          ; $4f0f: $7b
	ld [hl], h                                       ; $4f10: $74
	ld l, a                                          ; $4f11: $6f
	ld [hl], c                                       ; $4f12: $71
	sbc c                                            ; $4f13: $99
	call z, $fefe                                    ; $4f14: $cc $fe $fe
	rst FarCall                                          ; $4f17: $f7
	rst SubAFromHL                                          ; $4f18: $d7
	cp a                                             ; $4f19: $bf
	ld a, e                                          ; $4f1a: $7b
	sub e                                            ; $4f1b: $93
	sbc [hl]                                         ; $4f1c: $9e
	cp $7b                                           ; $4f1d: $fe $7b
	ld l, e                                          ; $4f1f: $6b
	sub h                                            ; $4f20: $94
	rst JumpTable                                          ; $4f21: $c7
	rlca                                             ; $4f22: $07
	rrca                                             ; $4f23: $0f
	adc $3f                                          ; $4f24: $ce $3f
	ldh [$e1], a                                     ; $4f26: $e0 $e1
	or $fe                                           ; $4f28: $f6 $fe
	cp $ff                                           ; $4f2a: $fe $ff
	ld a, e                                          ; $4f2c: $7b
	ld hl, sp-$6e                                    ; $4f2d: $f8 $92
	pop af                                           ; $4f2f: $f1
	cp $c2                                           ; $4f30: $fe $c2
	add c                                            ; $4f32: $81
	ld bc, $0f70                                     ; $4f33: $01 $70 $0f
	nop                                              ; $4f36: $00
	ldh [rAUD3LEVEL], a                              ; $4f37: $e0 $1c
	jp c, $f63f                                      ; $4f39: $da $3f $f6

	ld l, a                                          ; $4f3c: $6f
	ld hl, sp-$6c                                    ; $4f3d: $f8 $94
	rst $38                                          ; $4f3f: $ff
	or $73                                           ; $4f40: $f6 $73
	rra                                              ; $4f42: $1f
	rlca                                             ; $4f43: $07
	add hl, de                                       ; $4f44: $19
	pop bc                                           ; $4f45: $c1
	rlca                                             ; $4f46: $07
	dec de                                           ; $4f47: $1b
	jr z, jr_028_4fc7                                ; $4f48: $28 $7d

	ld l, e                                          ; $4f4a: $6b
	ld hl, sp+$0b                                    ; $4f4b: $f8 $0b
	nop                                              ; $4f4d: $00
	rst SubAFromDE                                          ; $4f4e: $df
	ld [hl+], a                                      ; $4f4f: $22
	sbc c                                            ; $4f50: $99
	ld h, $66                                        ; $4f51: $26 $66
	ld h, [hl]                                       ; $4f53: $66
	ld h, a                                          ; $4f54: $67
	ld [hl+], a                                      ; $4f55: $22
	ld [hl+], a                                      ; $4f56: $22
	push hl                                          ; $4f57: $e5
	add b                                            ; $4f58: $80
	add b                                            ; $4f59: $80
	adc $dc                                          ; $4f5a: $ce $dc
	call c, $ff7e                                    ; $4f5c: $dc $7e $ff
	rst FarCall                                          ; $4f5f: $f7
	di                                               ; $4f60: $f3
	rst $38                                          ; $4f61: $ff
	ccf                                              ; $4f62: $3f
	ccf                                              ; $4f63: $3f
	inc sp                                           ; $4f64: $33
	add c                                            ; $4f65: $81
	ld h, c                                          ; $4f66: $61
	ld a, b                                          ; $4f67: $78
	cp $30                                           ; $4f68: $fe $30
	rrca                                             ; $4f6a: $0f
	ccf                                              ; $4f6b: $3f
	ld a, a                                          ; $4f6c: $7f
	db $e3                                           ; $4f6d: $e3
	rst SubAFromBC                                          ; $4f6e: $e7
	rst GetHLinHL                                          ; $4f6f: $cf
	rst AddAOntoHL                                          ; $4f70: $ef
	rst $38                                          ; $4f71: $ff
	rst $38                                          ; $4f72: $ff
	sbc $9e                                          ; $4f73: $de $9e
	ccf                                              ; $4f75: $3f
	ccf                                              ; $4f76: $3f
	ld a, h                                          ; $4f77: $7c
	ld a, b                                          ; $4f78: $78
	sbc [hl]                                         ; $4f79: $9e
	ld a, b                                          ; $4f7a: $78
	sbc $ff                                          ; $4f7b: $de $ff
	ld a, a                                          ; $4f7d: $7f
	db $e3                                           ; $4f7e: $e3
	sbc c                                            ; $4f7f: $99
	ei                                               ; $4f80: $fb
	db $eb                                           ; $4f81: $eb
	rst $38                                          ; $4f82: $ff
	pop af                                           ; $4f83: $f1
	inc sp                                           ; $4f84: $33
	ld [hl], a                                       ; $4f85: $77
	sbc $ff                                          ; $4f86: $de $ff
	sbc l                                            ; $4f88: $9d
	ld e, $0f                                        ; $4f89: $1e $0f
	db $dd                                           ; $4f8b: $dd
	rst $38                                          ; $4f8c: $ff
	sbc [hl]                                         ; $4f8d: $9e
	sbc a                                            ; $4f8e: $9f
	call c, Call_028_7fff                            ; $4f8f: $dc $ff $7f
	reti                                             ; $4f92: $d9


	sbc e                                            ; $4f93: $9b
	db $fc                                           ; $4f94: $fc
	inc l                                            ; $4f95: $2c
	ld b, $22                                        ; $4f96: $06 $22
	ld a, e                                          ; $4f98: $7b
	pop hl                                           ; $4f99: $e1
	sbc l                                            ; $4f9a: $9d
	ld hl, sp-$04                                    ; $4f9b: $f8 $fc
	sbc $ff                                          ; $4f9d: $de $ff
	sub d                                            ; $4f9f: $92
	rst SubAFromBC                                          ; $4fa0: $e7
	adc a                                            ; $4fa1: $8f
	adc a                                            ; $4fa2: $8f
	sbc a                                            ; $4fa3: $9f
	ld b, e                                          ; $4fa4: $43
	ld [hl+], a                                      ; $4fa5: $22
	cp $0e                                           ; $4fa6: $fe $0e
	db $fc                                           ; $4fa8: $fc
	cp $ff                                           ; $4fa9: $fe $ff
	ccf                                              ; $4fab: $3f
	ld a, a                                          ; $4fac: $7f
	db $dd                                           ; $4fad: $dd
	rst $38                                          ; $4fae: $ff
	sub l                                            ; $4faf: $95
	rst JumpTable                                          ; $4fb0: $c7
	pop bc                                           ; $4fb1: $c1
	ldh a, [$fd]                                     ; $4fb2: $f0 $fd
	rlca                                             ; $4fb4: $07
	rrca                                             ; $4fb5: $0f
	ld a, a                                          ; $4fb6: $7f
	ld a, b                                          ; $4fb7: $78
	ei                                               ; $4fb8: $fb
	rst SubAFromDE                                          ; $4fb9: $df
	ld l, a                                          ; $4fba: $6f
	pop de                                           ; $4fbb: $d1
	rst SubAFromDE                                          ; $4fbc: $df
	rst $38                                          ; $4fbd: $ff
	sbc e                                            ; $4fbe: $9b
	ld h, e                                          ; $4fbf: $63
	rst JumpTable                                          ; $4fc0: $c7
	rst GetHLinHL                                          ; $4fc1: $cf
	cp $d5                                           ; $4fc2: $fe $d5
	rst $38                                          ; $4fc4: $ff
	sub d                                            ; $4fc5: $92
	rst AddAOntoHL                                          ; $4fc6: $ef

jr_028_4fc7:
	rst SubAFromBC                                          ; $4fc7: $e7
	di                                               ; $4fc8: $f3
	ldh a, [c]                                       ; $4fc9: $f2
	ld a, [rIE]                                    ; $4fca: $fa $ff $ff
	ei                                               ; $4fcd: $fb
	rst SubAFromBC                                          ; $4fce: $e7
	sbc $f9                                          ; $4fcf: $de $f9
	or [hl]                                          ; $4fd1: $b6
	db $ed                                           ; $4fd2: $ed
	ld a, e                                          ; $4fd3: $7b
	cp [hl]                                          ; $4fd4: $be
	sbc d                                            ; $4fd5: $9a
	sbc a                                            ; $4fd6: $9f
	ccf                                              ; $4fd7: $3f
	ld a, $79                                        ; $4fd8: $3e $79
	ld [hl], e                                       ; $4fda: $73
	db $dd                                           ; $4fdb: $dd
	rst $38                                          ; $4fdc: $ff
	sbc l                                            ; $4fdd: $9d
	ld bc, $d63f                                     ; $4fde: $01 $3f $d6
	rst $38                                          ; $4fe1: $ff
	ld a, a                                          ; $4fe2: $7f
	add l                                            ; $4fe3: $85
	rst SubAFromDE                                          ; $4fe4: $df
	rst $38                                          ; $4fe5: $ff
	adc a                                            ; $4fe6: $8f
	rst SubAFromDE                                          ; $4fe7: $df
	rst $38                                          ; $4fe8: $ff
	rst $38                                          ; $4fe9: $ff
	rrca                                             ; $4fea: $0f
	rst $38                                          ; $4feb: $ff
	ld b, e                                          ; $4fec: $43
	ld c, e                                          ; $4fed: $4b
	rst $38                                          ; $4fee: $ff
	rst $38                                          ; $4fef: $ff
	ldh [c], a                                       ; $4ff0: $e2
	ldh a, [$fe]                                     ; $4ff1: $f0 $fe
	rst $38                                          ; $4ff3: $ff
	db $fd                                           ; $4ff4: $fd
	cp $9d                                           ; $4ff5: $fe $9d
	ld a, e                                          ; $4ff7: $7b
	ldh [hDisp1_LCDC], a                                     ; $4ff8: $e0 $8f
	ld hl, sp-$1d                                    ; $4ffa: $f8 $e3
	push bc                                          ; $4ffc: $c5
	adc $ff                                          ; $4ffd: $ce $ff
	rst JumpTable                                          ; $4fff: $c7
	inc bc                                           ; $5000: $03
	add hl, sp                                       ; $5001: $39
	rst $38                                          ; $5002: $ff
	cp $e3                                           ; $5003: $fe $e3
	ld [hl], c                                       ; $5005: $71
	cp $ef                                           ; $5006: $fe $ef
	pop af                                           ; $5008: $f1
	sbc $6b                                          ; $5009: $de $6b
	ld hl, sp-$6e                                    ; $500b: $f8 $92
	cp $8e                                           ; $500d: $fe $8e
	rst AddAOntoHL                                          ; $500f: $ef
	ld a, [hl-]                                      ; $5010: $3a
	cp $0d                                           ; $5011: $fe $0d
	adc a                                            ; $5013: $8f
	sbc b                                            ; $5014: $98
	ld l, a                                          ; $5015: $6f
	rst $38                                          ; $5016: $ff
	rst $38                                          ; $5017: $ff
	ccf                                              ; $5018: $3f
	rst $38                                          ; $5019: $ff
	ld [hl], a                                       ; $501a: $77
	ld hl, sp-$72                                    ; $501b: $f8 $8e
	sbc a                                            ; $501d: $9f
	cp a                                             ; $501e: $bf
	cp $7f                                           ; $501f: $fe $7f
	rst $38                                          ; $5021: $ff
	di                                               ; $5022: $f3
	ld a, a                                          ; $5023: $7f
	cp e                                             ; $5024: $bb
	ld hl, sp-$08                                    ; $5025: $f8 $f8
	ld sp, hl                                        ; $5027: $f9
	db $fd                                           ; $5028: $fd
	rst $38                                          ; $5029: $ff
	rst $38                                          ; $502a: $ff
	ld a, a                                          ; $502b: $7f
	cp e                                             ; $502c: $bb
	pop hl                                           ; $502d: $e1
	ld [hl], a                                       ; $502e: $77
	rst SubAFromBC                                          ; $502f: $e7
	rst SubAFromDE                                          ; $5030: $df
	rst $38                                          ; $5031: $ff
	sub [hl]                                         ; $5032: $96
	dec sp                                           ; $5033: $3b
	ld a, a                                          ; $5034: $7f
	ei                                               ; $5035: $fb
	pop af                                           ; $5036: $f1
	ldh a, [$f3]                                     ; $5037: $f0 $f3
	rst SubAFromHL                                          ; $5039: $d7
	inc e                                            ; $503a: $1c
	db $fc                                           ; $503b: $fc
	add hl, bc                                       ; $503c: $09
	nop                                              ; $503d: $00
	sbc $22                                          ; $503e: $de $22
	sbc l                                            ; $5040: $9d
	dec h                                            ; $5041: $25
	ld h, a                                          ; $5042: $67
	sbc $22                                          ; $5043: $de $22
	dec [hl]                                         ; $5045: $35
	nop                                              ; $5046: $00
	sbc d                                            ; $5047: $9a
	xor e                                            ; $5048: $ab
	nop                                              ; $5049: $00
	rlca                                             ; $504a: $07
	nop                                              ; $504b: $00
	ld hl, sp-$06                                    ; $504c: $f8 $fa
	rst SubAFromDE                                          ; $504e: $df
	ld bc, $97ff                                     ; $504f: $01 $ff $97
	ld [$e000], a                                    ; $5052: $ea $00 $e0
	db $10                                           ; $5055: $10
	ldh a, [c]                                       ; $5056: $f2
	add hl, de                                       ; $5057: $19

jr_028_5058:
	ld d, b                                          ; $5058: $50
	jr nz, jr_028_5058                               ; $5059: $20 $fd

	sbc e                                            ; $505b: $9b
	ld [hl], b                                       ; $505c: $70
	and b                                            ; $505d: $a0
	and b                                            ; $505e: $a0
	nop                                              ; $505f: $00
	ld a, e                                          ; $5060: $7b
	db $ed                                           ; $5061: $ed
	ld a, [$c098]                                    ; $5062: $fa $98 $c0
	add b                                            ; $5065: $80
	ld hl, sp-$10                                    ; $5066: $f8 $f0
	rst $38                                          ; $5068: $ff
	db $fc                                           ; $5069: $fc
	ret nz                                           ; $506a: $c0

	ld a, e                                          ; $506b: $7b
	xor $93                                          ; $506c: $ee $93
	inc bc                                           ; $506e: $03
	ld bc, $0307                                     ; $506f: $01 $07 $03
	ld c, $07                                        ; $5072: $0e $07
	ld a, $1f                                        ; $5074: $3e $1f
	ld a, l                                          ; $5076: $7d
	ccf                                              ; $5077: $3f

jr_028_5078:
	db $ed                                           ; $5078: $ed
	rst $38                                          ; $5079: $ff
	inc b                                            ; $507a: $04
	nop                                              ; $507b: $00
	rst SubAFromDE                                          ; $507c: $df
	ld b, h                                          ; $507d: $44
	jr c, jr_028_5080                                ; $507e: $38 $00

jr_028_5080:
	sbc d                                            ; $5080: $9a
	xor e                                            ; $5081: $ab
	nop                                              ; $5082: $00
	rlca                                             ; $5083: $07
	nop                                              ; $5084: $00
	ld hl, sp-$06                                    ; $5085: $f8 $fa
	sub e                                            ; $5087: $93
	inc bc                                           ; $5088: $03
	ld bc, $0000                                     ; $5089: $01 $00 $00
	ld [$e000], a                                    ; $508c: $ea $00 $e0
	db $10                                           ; $508f: $10
	ldh a, [c]                                       ; $5090: $f2
	add hl, de                                       ; $5091: $19

jr_028_5092:
	ld d, b                                          ; $5092: $50
	jr nz, jr_028_5092                               ; $5093: $20 $fd

	sbc c                                            ; $5095: $99
	jr nc, jr_028_5078                               ; $5096: $30 $e0

	jr nz, @-$3e                                     ; $5098: $20 $c0

	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	ld a, e                                          ; $509c: $7b
	db $eb                                           ; $509d: $eb
	db $fc                                           ; $509e: $fc
	sub [hl]                                         ; $509f: $96
	ret nz                                           ; $50a0: $c0

	add b                                            ; $50a1: $80
	ld hl, sp-$10                                    ; $50a2: $f8 $f0
	rst $38                                          ; $50a4: $ff
	db $fc                                           ; $50a5: $fc
	add b                                            ; $50a6: $80
	nop                                              ; $50a7: $00
	pop bc                                           ; $50a8: $c1
	ld a, e                                          ; $50a9: $7b
	ret c                                            ; $50aa: $d8

	sub l                                            ; $50ab: $95
	rlca                                             ; $50ac: $07
	inc bc                                           ; $50ad: $03
	ld c, $07                                        ; $50ae: $0e $07
	ld a, $1f                                        ; $50b0: $3e $1f
	ld a, l                                          ; $50b2: $7d
	ccf                                              ; $50b3: $3f
	db $ed                                           ; $50b4: $ed
	rst $38                                          ; $50b5: $ff
	inc b                                            ; $50b6: $04
	nop                                              ; $50b7: $00
	rst SubAFromDE                                          ; $50b8: $df
	ld b, h                                          ; $50b9: $44
	scf                                              ; $50ba: $37
	nop                                              ; $50bb: $00
	sbc d                                            ; $50bc: $9a
	xor e                                            ; $50bd: $ab
	nop                                              ; $50be: $00
	rlca                                             ; $50bf: $07
	nop                                              ; $50c0: $00
	ld hl, sp-$06                                    ; $50c1: $f8 $fa
	sub e                                            ; $50c3: $93
	ld bc, $0303                                     ; $50c4: $01 $03 $03
	ld bc, $00ea                                     ; $50c7: $01 $ea $00
	ldh [rAUD1SWEEP], a                              ; $50ca: $e0 $10
	ldh a, [c]                                       ; $50cc: $f2
	add hl, de                                       ; $50cd: $19

jr_028_50ce:
	ld d, b                                          ; $50ce: $50
	jr nz, jr_028_50ce                               ; $50cf: $20 $fd

	sbc d                                            ; $50d1: $9a
	ld [hl], b                                       ; $50d2: $70
	ldh [$e0], a                                     ; $50d3: $e0 $e0
	ret nz                                           ; $50d5: $c0

	ld bc, $e877                                     ; $50d6: $01 $77 $e8
	db $fc                                           ; $50d9: $fc
	adc c                                            ; $50da: $89
	ret nz                                           ; $50db: $c0

	add b                                            ; $50dc: $80
	ld hl, sp-$10                                    ; $50dd: $f8 $f0
	rst $38                                          ; $50df: $ff
	db $fc                                           ; $50e0: $fc
	ld b, b                                          ; $50e1: $40
	add b                                            ; $50e2: $80
	add c                                            ; $50e3: $81
	nop                                              ; $50e4: $00
	jp $0701                                         ; $50e5: $c3 $01 $07


	inc bc                                           ; $50e8: $03
	ld c, $07                                        ; $50e9: $0e $07
	ld a, $1f                                        ; $50eb: $3e $1f
	ld a, l                                          ; $50ed: $7d
	ccf                                              ; $50ee: $3f
	db $ed                                           ; $50ef: $ed
	rst $38                                          ; $50f0: $ff
	inc b                                            ; $50f1: $04
	nop                                              ; $50f2: $00
	rst SubAFromDE                                          ; $50f3: $df
	ld b, h                                          ; $50f4: $44
	add hl, sp                                       ; $50f5: $39
	nop                                              ; $50f6: $00
	sbc d                                            ; $50f7: $9a
	xor e                                            ; $50f8: $ab
	nop                                              ; $50f9: $00
	rlca                                             ; $50fa: $07
	nop                                              ; $50fb: $00
	ld hl, sp-$06                                    ; $50fc: $f8 $fa
	sub e                                            ; $50fe: $93
	ld bc, $0103                                     ; $50ff: $01 $03 $01
	inc bc                                           ; $5102: $03
	ld [$e000], a                                    ; $5103: $ea $00 $e0
	db $10                                           ; $5106: $10
	ldh a, [c]                                       ; $5107: $f2
	add hl, de                                       ; $5108: $19

jr_028_5109:
	ld d, b                                          ; $5109: $50
	jr nz, jr_028_5109                               ; $510a: $20 $fd

	sbc b                                            ; $510c: $98
	ldh a, [$e0]                                     ; $510d: $f0 $e0
	ldh [$c0], a                                     ; $510f: $e0 $c0
	ld [bc], a                                       ; $5111: $02
	ld bc, $7701                                     ; $5112: $01 $01 $77
	and $fe                                          ; $5115: $e6 $fe
	adc c                                            ; $5117: $89
	ret nz                                           ; $5118: $c0

	add b                                            ; $5119: $80
	ld hl, sp-$10                                    ; $511a: $f8 $f0
	rst $38                                          ; $511c: $ff
	db $fc                                           ; $511d: $fc
	ret nz                                           ; $511e: $c0

	ret nz                                           ; $511f: $c0

	ld bc, $8380                                     ; $5120: $01 $80 $83
	ld bc, $03c7                                     ; $5123: $01 $c7 $03
	ld c, $07                                        ; $5126: $0e $07
	ld a, $1f                                        ; $5128: $3e $1f
	ld a, l                                          ; $512a: $7d
	ccf                                              ; $512b: $3f
	db $ed                                           ; $512c: $ed
	rst $38                                          ; $512d: $ff
	inc b                                            ; $512e: $04
	nop                                              ; $512f: $00
	rst SubAFromDE                                          ; $5130: $df
	ld b, h                                          ; $5131: $44
	scf                                              ; $5132: $37
	nop                                              ; $5133: $00
	sbc d                                            ; $5134: $9a
	xor e                                            ; $5135: $ab
	nop                                              ; $5136: $00
	rlca                                             ; $5137: $07
	nop                                              ; $5138: $00
	ld hl, sp-$06                                    ; $5139: $f8 $fa
	sub e                                            ; $513b: $93
	ld b, $03                                        ; $513c: $06 $03
	ld bc, $ea00                                     ; $513e: $01 $00 $ea
	nop                                              ; $5141: $00
	ldh [rAUD1SWEEP], a                              ; $5142: $e0 $10
	ldh a, [c]                                       ; $5144: $f2
	add hl, de                                       ; $5145: $19

jr_028_5146:
	ld d, b                                          ; $5146: $50
	jr nz, jr_028_5146                               ; $5147: $20 $fd

	sbc b                                            ; $5149: $98
	sub b                                            ; $514a: $90
	ld [hl], b                                       ; $514b: $70
	ld h, b                                          ; $514c: $60
	ret nz                                           ; $514d: $c0

	nop                                              ; $514e: $00
	nop                                              ; $514f: $00
	ld bc, $89fa                                     ; $5150: $01 $fa $89
	ret nz                                           ; $5153: $c0

	add b                                            ; $5154: $80
	ld hl, sp-$10                                    ; $5155: $f8 $f0
	rst $38                                          ; $5157: $ff
	db $fc                                           ; $5158: $fc
	add b                                            ; $5159: $80
	nop                                              ; $515a: $00
	pop bc                                           ; $515b: $c1
	nop                                              ; $515c: $00
	inc bc                                           ; $515d: $03
	ld bc, $0307                                     ; $515e: $01 $07 $03
	ld c, $07                                        ; $5161: $0e $07
	ld a, $1f                                        ; $5163: $3e $1f
	ld a, l                                          ; $5165: $7d
	ccf                                              ; $5166: $3f
	db $ed                                           ; $5167: $ed
	rst $38                                          ; $5168: $ff
	inc b                                            ; $5169: $04
	nop                                              ; $516a: $00
	rst SubAFromDE                                          ; $516b: $df
	ld b, h                                          ; $516c: $44
	scf                                              ; $516d: $37
	nop                                              ; $516e: $00
	sbc d                                            ; $516f: $9a
	xor e                                            ; $5170: $ab
	nop                                              ; $5171: $00
	rlca                                             ; $5172: $07
	nop                                              ; $5173: $00
	ld hl, sp-$06                                    ; $5174: $f8 $fa
	sub e                                            ; $5176: $93

jr_028_5177:
	rlca                                             ; $5177: $07
	inc bc                                           ; $5178: $03
	ld bc, $ea00                                     ; $5179: $01 $00 $ea
	nop                                              ; $517c: $00
	ldh [rAUD1SWEEP], a                              ; $517d: $e0 $10
	ldh a, [c]                                       ; $517f: $f2
	add hl, de                                       ; $5180: $19

jr_028_5181:
	ld d, b                                          ; $5181: $50
	jr nz, jr_028_5181                               ; $5182: $20 $fd

	sbc b                                            ; $5184: $98
	jr nc, jr_028_5177                               ; $5185: $30 $f0

	ldh [$c0], a                                     ; $5187: $e0 $c0
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	ld bc, $89fa                                     ; $518b: $01 $fa $89
	ret nz                                           ; $518e: $c0

	add b                                            ; $518f: $80
	ld hl, sp-$10                                    ; $5190: $f8 $f0
	rst $38                                          ; $5192: $ff
	db $fc                                           ; $5193: $fc
	add b                                            ; $5194: $80
	nop                                              ; $5195: $00
	pop bc                                           ; $5196: $c1
	nop                                              ; $5197: $00
	inc bc                                           ; $5198: $03
	ld bc, $0307                                     ; $5199: $01 $07 $03
	ld c, $07                                        ; $519c: $0e $07
	ld a, $1f                                        ; $519e: $3e $1f
	ld a, l                                          ; $51a0: $7d
	ccf                                              ; $51a1: $3f
	db $ed                                           ; $51a2: $ed
	rst $38                                          ; $51a3: $ff
	inc b                                            ; $51a4: $04
	nop                                              ; $51a5: $00
	rst SubAFromDE                                          ; $51a6: $df
	ld b, h                                          ; $51a7: $44
	jr c, jr_028_51aa                                ; $51a8: $38 $00

jr_028_51aa:
	sbc d                                            ; $51aa: $9a
	xor e                                            ; $51ab: $ab
	nop                                              ; $51ac: $00
	rlca                                             ; $51ad: $07
	nop                                              ; $51ae: $00
	ld hl, sp-$06                                    ; $51af: $f8 $fa
	sub e                                            ; $51b1: $93
	rlca                                             ; $51b2: $07
	inc bc                                           ; $51b3: $03
	inc bc                                           ; $51b4: $03
	ld bc, $00ea                                     ; $51b5: $01 $ea $00
	ldh [rAUD1SWEEP], a                              ; $51b8: $e0 $10
	ldh a, [c]                                       ; $51ba: $f2
	add hl, de                                       ; $51bb: $19

jr_028_51bc:
	ld d, b                                          ; $51bc: $50
	jr nz, jr_028_51bc                               ; $51bd: $20 $fd

	rst SubAFromDE                                          ; $51bf: $df
	ldh a, [$9c]                                     ; $51c0: $f0 $9c
	ldh [$c0], a                                     ; $51c2: $e0 $c0
	ld bc, $77fe                                     ; $51c4: $01 $fe $77
	db $fc                                           ; $51c7: $fc
	rst $38                                          ; $51c8: $ff
	adc c                                            ; $51c9: $89
	ret nz                                           ; $51ca: $c0

	add b                                            ; $51cb: $80
	ld hl, sp-$10                                    ; $51cc: $f8 $f0
	rst $38                                          ; $51ce: $ff
	db $fc                                           ; $51cf: $fc
	ret nz                                           ; $51d0: $c0

	ret nz                                           ; $51d1: $c0

	ld b, c                                          ; $51d2: $41
	add b                                            ; $51d3: $80
	jp $0701                                         ; $51d4: $c3 $01 $07


	inc bc                                           ; $51d7: $03
	ld c, $07                                        ; $51d8: $0e $07
	ld a, $1f                                        ; $51da: $3e $1f
	ld a, l                                          ; $51dc: $7d
	ccf                                              ; $51dd: $3f
	db $ed                                           ; $51de: $ed
	rst $38                                          ; $51df: $ff
	inc b                                            ; $51e0: $04
	nop                                              ; $51e1: $00
	rst SubAFromDE                                          ; $51e2: $df
	ld b, h                                          ; $51e3: $44
	scf                                              ; $51e4: $37
	nop                                              ; $51e5: $00
	sbc d                                            ; $51e6: $9a
	xor e                                            ; $51e7: $ab
	nop                                              ; $51e8: $00
	rlca                                             ; $51e9: $07
	nop                                              ; $51ea: $00
	ld hl, sp-$06                                    ; $51eb: $f8 $fa
	sub e                                            ; $51ed: $93
	rlca                                             ; $51ee: $07
	inc bc                                           ; $51ef: $03
	ld bc, $ea03                                     ; $51f0: $01 $03 $ea
	nop                                              ; $51f3: $00
	ldh [rAUD1SWEEP], a                              ; $51f4: $e0 $10
	ldh a, [c]                                       ; $51f6: $f2
	add hl, de                                       ; $51f7: $19

jr_028_51f8:
	ld d, b                                          ; $51f8: $50
	jr nz, jr_028_51f8                               ; $51f9: $20 $fd

	sbc $f0                                          ; $51fb: $de $f0
	sbc [hl]                                         ; $51fd: $9e
	ldh [$de], a                                     ; $51fe: $e0 $de
	ld bc, $77fe                                     ; $5200: $01 $fe $77
	db $fc                                           ; $5203: $fc
	adc c                                            ; $5204: $89
	ret nz                                           ; $5205: $c0

	add b                                            ; $5206: $80
	ld hl, sp-$10                                    ; $5207: $f8 $f0
	rst $38                                          ; $5209: $ff
	db $fc                                           ; $520a: $fc
	ldh [$c0], a                                     ; $520b: $e0 $c0
	pop bc                                           ; $520d: $c1
	add b                                            ; $520e: $80
	inc bc                                           ; $520f: $03
	ld bc, $03c7                                     ; $5210: $01 $c7 $03
	ld c, $07                                        ; $5213: $0e $07
	ld a, $1f                                        ; $5215: $3e $1f
	ld a, l                                          ; $5217: $7d
	ccf                                              ; $5218: $3f
	db $ed                                           ; $5219: $ed
	rst $38                                          ; $521a: $ff
	inc b                                            ; $521b: $04
	nop                                              ; $521c: $00
	rst SubAFromDE                                          ; $521d: $df
	ld b, h                                          ; $521e: $44
	inc b                                            ; $521f: $04
	ld b, $97                                        ; $5220: $06 $97
	adc b                                            ; $5222: $88
	ld [hl], a                                       ; $5223: $77
	ld d, l                                          ; $5224: $55
	xor d                                            ; $5225: $aa
	ld [hl+], a                                      ; $5226: $22
	db $dd                                           ; $5227: $dd
	ld d, l                                          ; $5228: $55
	xor d                                            ; $5229: $aa
	daa                                              ; $522a: $27
	ld hl, sp-$77                                    ; $522b: $f8 $89
	sub b                                            ; $522d: $90
	ld a, a                                          ; $522e: $7f
	ld d, b                                          ; $522f: $50
	cp a                                             ; $5230: $bf
	jr z, @-$1f                                      ; $5231: $28 $df

	ld e, b                                          ; $5233: $58
	xor a                                            ; $5234: $af
	adc b                                            ; $5235: $88
	ld a, a                                          ; $5236: $7f
	ld e, b                                          ; $5237: $58
	xor a                                            ; $5238: $af
	inc h                                            ; $5239: $24
	rst SubAFromDE                                          ; $523a: $df
	ld d, h                                          ; $523b: $54
	xor a                                            ; $523c: $af
	rra                                              ; $523d: $1f
	ldh [rIF], a                                     ; $523e: $e0 $0f
	ldh a, [rTAC]                                    ; $5240: $f0 $07
	ld hl, sp+$6f                                    ; $5242: $f8 $6f
	cp $7f                                           ; $5244: $fe $7f
	or $8c                                           ; $5246: $f6 $8c
	ld e, $e1                                        ; $5248: $1e $e1
	rst JumpTable                                          ; $524a: $c7
	db $fc                                           ; $524b: $fc
	xor h                                            ; $524c: $ac
	ld a, a                                          ; $524d: $7f
	rst SubAFromDE                                          ; $524e: $df
	ccf                                              ; $524f: $3f
	rst $38                                          ; $5250: $ff
	inc c                                            ; $5251: $0c
	rst $38                                          ; $5252: $ff
	ld b, $f9                                        ; $5253: $06 $f9
	rlca                                             ; $5255: $07
	rst JumpTable                                          ; $5256: $c7
	jr c, jr_028_5298                                ; $5257: $38 $3f

	ret nz                                           ; $5259: $c0

	ld [bc], a                                       ; $525a: $02
	sbc $ff                                          ; $525b: $de $ff
	add a                                            ; $525d: $87
	db $fc                                           ; $525e: $fc
	add a                                            ; $525f: $87
	ret z                                            ; $5260: $c8

	rrca                                             ; $5261: $0f
	db $10                                           ; $5262: $10
	rra                                              ; $5263: $1f
	jr nz, jr_028_52a5                               ; $5264: $20 $3f

	and b                                            ; $5266: $a0
	cp a                                             ; $5267: $bf
	ret nz                                           ; $5268: $c0

	rst $38                                          ; $5269: $ff
	ld c, $f0                                        ; $526a: $0e $f0
	pop af                                           ; $526c: $f1
	cp $0e                                           ; $526d: $fe $0e
	rst $38                                          ; $526f: $ff
	ld [hl], c                                       ; $5270: $71
	adc a                                            ; $5271: $8f
	inc a                                            ; $5272: $3c
	jp $e01f                                         ; $5273: $c3 $1f $e0


	ld [hl], a                                       ; $5276: $77
	call nz, $0386                                   ; $5277: $c4 $86 $03
	rra                                              ; $527a: $1f
	add e                                            ; $527b: $83
	inc bc                                           ; $527c: $03
	rlca                                             ; $527d: $07
	rst JumpTable                                          ; $527e: $c7
	add a                                            ; $527f: $87
	rst $38                                          ; $5280: $ff
	ld [hl], a                                       ; $5281: $77
	rst $38                                          ; $5282: $ff
	rrca                                             ; $5283: $0f
	rst $38                                          ; $5284: $ff
	rlca                                             ; $5285: $07
	db $fd                                           ; $5286: $fd
	rlca                                             ; $5287: $07

jr_028_5288:
	db $fd                                           ; $5288: $fd
	rst $38                                          ; $5289: $ff
	nop                                              ; $528a: $00
	rst $38                                          ; $528b: $ff
	add b                                            ; $528c: $80
	rst $38                                          ; $528d: $ff
	pop bc                                           ; $528e: $c1
	rst $38                                          ; $528f: $ff
	rst SubAFromBC                                          ; $5290: $e7
	ld a, h                                          ; $5291: $7c
	ld a, e                                          ; $5292: $7b
	rst FarCall                                          ; $5293: $f7
	add b                                            ; $5294: $80
	add c                                            ; $5295: $81
	ld a, [hl]                                       ; $5296: $7e
	rst $38                                          ; $5297: $ff

jr_028_5298:
	add b                                            ; $5298: $80
	ld h, a                                          ; $5299: $67
	inc a                                            ; $529a: $3c
	ld a, e                                          ; $529b: $7b
	ld h, [hl]                                       ; $529c: $66
	ei                                               ; $529d: $fb
	jp $8371                                         ; $529e: $c3 $71 $83


	rst SubAFromBC                                          ; $52a1: $e7
	ld bc, $03cd                                     ; $52a2: $01 $cd $03

jr_028_52a5:
	dec e                                            ; $52a5: $1d
	inc bc                                           ; $52a6: $03
	ld a, [hl-]                                      ; $52a7: $3a
	rlca                                             ; $52a8: $07
	cp [hl]                                          ; $52a9: $be
	pop bc                                           ; $52aa: $c1
	sbc a                                            ; $52ab: $9f
	ldh [$fb], a                                     ; $52ac: $e0 $fb
	db $fc                                           ; $52ae: $fc
	rst SubAFromBC                                          ; $52af: $e7
	add h                                            ; $52b0: $84
	rst $38                                          ; $52b1: $ff
	db $e4                                           ; $52b2: $e4
	ccf                                              ; $52b3: $3f
	add b                                            ; $52b4: $80
	db $f4                                           ; $52b5: $f4
	rst AddAOntoHL                                          ; $52b6: $ef
	inc e                                            ; $52b7: $1c
	db $fc                                           ; $52b8: $fc
	rlca                                             ; $52b9: $07
	ld c, a                                          ; $52ba: $4f
	ldh a, [$5f]                                     ; $52bb: $f0 $5f
	ldh [$ae], a                                     ; $52bd: $e0 $ae
	ld [hl], c                                       ; $52bf: $71
	ldh [$3f], a                                     ; $52c0: $e0 $3f
	ldh [$3f], a                                     ; $52c2: $e0 $3f
	ret nc                                           ; $52c4: $d0

	ccf                                              ; $52c5: $3f
	sub c                                            ; $52c6: $91
	ld a, [hl]                                       ; $52c7: $7e
	inc de                                           ; $52c8: $13
	db $fc                                           ; $52c9: $fc
	cp b                                             ; $52ca: $b8
	ld c, a                                          ; $52cb: $4f
	dec a                                            ; $52cc: $3d
	jp z, $cd3a                                      ; $52cd: $ca $3a $cd

	ld a, l                                          ; $52d0: $7d
	adc d                                            ; $52d1: $8a
	ld a, b                                          ; $52d2: $78
	adc a                                            ; $52d3: $8f
	sbc c                                            ; $52d4: $99
	push af                                          ; $52d5: $f5
	ld c, $f6                                        ; $52d6: $0e $f6
	dec c                                            ; $52d8: $0d
	push af                                          ; $52d9: $f5
	ld c, $07                                        ; $52da: $0e $07
	jr nc, @+$05                                     ; $52dc: $30 $03

	ld hl, sp+$4b                                    ; $52de: $f8 $4b
	ld hl, sp-$75                                    ; $52e0: $f8 $8b
	adc h                                            ; $52e2: $8c
	ld [hl], a                                       ; $52e3: $77
	ld d, [hl]                                       ; $52e4: $56
	xor e                                            ; $52e5: $ab
	ld [hl+], a                                      ; $52e6: $22
	rst SubAFromDE                                          ; $52e7: $df
	ld d, [hl]                                       ; $52e8: $56
	xor e                                            ; $52e9: $ab
	adc e                                            ; $52ea: $8b
	halt                                             ; $52eb: $76
	ld d, a                                          ; $52ec: $57
	xor d                                            ; $52ed: $aa
	dec h                                            ; $52ee: $25
	sbc $57                                          ; $52ef: $de $57
	xor h                                            ; $52f1: $ac
	add hl, sp                                       ; $52f2: $39
	add $7f                                          ; $52f3: $c6 $7f
	add b                                            ; $52f5: $80
	ld a, e                                          ; $52f6: $7b
	ld d, l                                          ; $52f7: $55
	add l                                            ; $52f8: $85
	nop                                              ; $52f9: $00
	db $fc                                           ; $52fa: $fc
	inc bc                                           ; $52fb: $03
	ld hl, sp+$07                                    ; $52fc: $f8 $07
	ldh [$1f], a                                     ; $52fe: $e0 $1f
	rst GetHLinHL                                          ; $5300: $cf
	jr nc, @+$01                                     ; $5301: $30 $ff

	nop                                              ; $5303: $00
	rst SubAFromBC                                          ; $5304: $e7
	jr jr_028_5288                                   ; $5305: $18 $81

	ld a, [hl]                                       ; $5307: $7e
	nop                                              ; $5308: $00
	rst $38                                          ; $5309: $ff
	rlca                                             ; $530a: $07
	ld sp, hl                                        ; $530b: $f9
	dec e                                            ; $530c: $1d
	db $e3                                           ; $530d: $e3
	rst $38                                          ; $530e: $ff
	inc bc                                           ; $530f: $03
	ldh a, [c]                                       ; $5310: $f2
	rrca                                             ; $5311: $0f
	ret nz                                           ; $5312: $c0

	ld a, e                                          ; $5313: $7b
	ld sp, $fe77                                     ; $5314: $31 $77 $fe
	ld a, e                                          ; $5317: $7b
	db $dd                                           ; $5318: $dd
	ld [hl], e                                       ; $5319: $73
	cp $76                                           ; $531a: $fe $76
	call c, $3e99                                    ; $531c: $dc $99 $3e
	pop bc                                           ; $531f: $c1
	ld a, $c1                                        ; $5320: $3e $c1
	ld a, h                                          ; $5322: $7c
	add e                                            ; $5323: $83
	ld [hl], a                                       ; $5324: $77
	cp $7f                                           ; $5325: $fe $7f
	jp z, $0c77                                      ; $5327: $ca $77 $0c

	ld a, a                                          ; $532a: $7f
	cp $9d                                           ; $532b: $fe $9d
	rrca                                             ; $532d: $0f
	ld sp, hl                                        ; $532e: $f9
	ld a, e                                          ; $532f: $7b
	cp $8f                                           ; $5330: $fe $8f
	ei                                               ; $5332: $fb
	rrca                                             ; $5333: $0f
	ld a, [$f21f]                                    ; $5334: $fa $1f $f2
	rst $38                                          ; $5337: $ff
	add b                                            ; $5338: $80
	add b                                            ; $5339: $80
	rst $38                                          ; $533a: $ff
	ret nz                                           ; $533b: $c0

	ld a, a                                          ; $533c: $7f
	ldh [$7f], a                                     ; $533d: $e0 $7f
	rst $38                                          ; $533f: $ff
	ld a, a                                          ; $5340: $7f
	ret nz                                           ; $5341: $c0

	ld a, e                                          ; $5342: $7b
	and a                                            ; $5343: $a7
	ld a, a                                          ; $5344: $7f
	cp $89                                           ; $5345: $fe $89
	ld [hl], h                                       ; $5347: $74
	adc a                                            ; $5348: $8f
	ld l, b                                          ; $5349: $68
	sbc a                                            ; $534a: $9f
	db $10                                           ; $534b: $10
	rst $38                                          ; $534c: $ff
	jr nc, @-$2f                                     ; $534d: $30 $cf

	db $fc                                           ; $534f: $fc
	inc bc                                           ; $5350: $03
	rst $38                                          ; $5351: $ff
	nop                                              ; $5352: $00
	ccf                                              ; $5353: $3f
	ret nz                                           ; $5354: $c0

	rrca                                             ; $5355: $0f
	ldh a, [$fe]                                     ; $5356: $f0 $fe
	inc bc                                           ; $5358: $03
	cp $03                                           ; $5359: $fe $03
	rst $38                                          ; $535b: $ff
	ld bc, $fe73                                     ; $535c: $01 $73 $fe
	ld [hl], e                                       ; $535f: $73
	xor a                                            ; $5360: $af
	sub h                                            ; $5361: $94
	rla                                              ; $5362: $17
	ld hl, sp+$2f                                    ; $5363: $f8 $2f
	ldh a, [$3f]                                     ; $5365: $f0 $3f
	ldh [$5f], a                                     ; $5367: $e0 $5f
	ldh [$7f], a                                     ; $5369: $e0 $7f
	ret nz                                           ; $536b: $c0

	cp a                                             ; $536c: $bf
	ld a, e                                          ; $536d: $7b
	cp $8d                                           ; $536e: $fe $8d
	cp h                                             ; $5370: $bc
	jp $0ff4                                         ; $5371: $c3 $f4 $0f


	db $fd                                           ; $5374: $fd
	ld b, $fa                                        ; $5375: $06 $fa
	rlca                                             ; $5377: $07
	ei                                               ; $5378: $fb
	ld b, $fd                                        ; $5379: $06 $fd
	inc bc                                           ; $537b: $03
	ldh [$1f], a                                     ; $537c: $e0 $1f
	ld bc, $03fe                                     ; $537e: $01 $fe $03
	db $fc                                           ; $5381: $fc
	ld e, a                                          ; $5382: $5f
	ld b, b                                          ; $5383: $40
	sbc c                                            ; $5384: $99
	push de                                          ; $5385: $d5
	xor d                                            ; $5386: $aa
	and d                                            ; $5387: $a2
	db $dd                                           ; $5388: $dd
	ld d, l                                          ; $5389: $55
	ld [$2007], a                                    ; $538a: $ea $07 $20
	sbc l                                            ; $538d: $9d

jr_028_538e:
	xor d                                            ; $538e: $aa
	ld d, l                                          ; $538f: $55
	rrca                                             ; $5390: $0f
	db $fc                                           ; $5391: $fc
	sub [hl]                                         ; $5392: $96
	xor a                                            ; $5393: $af
	ld d, h                                          ; $5394: $54
	ld d, l                                          ; $5395: $55
	xor [hl]                                         ; $5396: $ae
	xor h                                            ; $5397: $ac
	ld d, a                                          ; $5398: $57
	ld d, [hl]                                       ; $5399: $56
	xor e                                            ; $539a: $ab
	xor e                                            ; $539b: $ab
	ld l, e                                          ; $539c: $6b
	ldh a, [rPCM34]                                  ; $539d: $f0 $77
	ld a, h                                          ; $539f: $7c
	adc [hl]                                         ; $53a0: $8e
	ld a, [hl]                                       ; $53a1: $7e
	add c                                            ; $53a2: $81
	inc c                                            ; $53a3: $0c
	di                                               ; $53a4: $f3
	jr jr_028_538e                                   ; $53a5: $18 $e7

	sbc a                                            ; $53a7: $9f
	ldh [hDisp0_SCY], a                                     ; $53a8: $e0 $83
	db $fc                                           ; $53aa: $fc
	ld b, b                                          ; $53ab: $40
	rst $38                                          ; $53ac: $ff
	jp nz, $063f                                     ; $53ad: $c2 $3f $06

	rst $38                                          ; $53b0: $ff
	inc b                                            ; $53b1: $04
	ld a, e                                          ; $53b2: $7b
	cp $7d                                           ; $53b3: $fe $7d
	rst $38                                          ; $53b5: $ff
	sub a                                            ; $53b6: $97
	ret c                                            ; $53b7: $d8

	ccf                                              ; $53b8: $3f
	xor b                                            ; $53b9: $a8
	ld a, a                                          ; $53ba: $7f
	ld c, b                                          ; $53bb: $48
	rst $38                                          ; $53bc: $ff
	ld bc, $77fe                                     ; $53bd: $01 $fe $77
	ld a, d                                          ; $53c0: $7a
	ld [hl], l                                       ; $53c1: $75
	db $e4                                           ; $53c2: $e4
	ld a, a                                          ; $53c3: $7f
	cp $7e                                           ; $53c4: $fe $7e
	db $10                                           ; $53c6: $10
	ld a, a                                          ; $53c7: $7f
	ld a, $7b                                        ; $53c8: $3e $7b
	pop af                                           ; $53ca: $f1
	ld [hl], e                                       ; $53cb: $73
	cp $66                                           ; $53cc: $fe $66
	rst AddAOntoHL                                          ; $53ce: $ef
	sbc l                                            ; $53cf: $9d
	dec de                                           ; $53d0: $1b
	ldh a, [c]                                       ; $53d1: $f2
	ld l, a                                          ; $53d2: $6f
	cp $97                                           ; $53d3: $fe $97
	dec sp                                           ; $53d5: $3b
	ldh [c], a                                       ; $53d6: $e2
	dec sp                                           ; $53d7: $3b
	ldh [c], a                                       ; $53d8: $e2
	inc sp                                           ; $53d9: $33
	ldh [c], a                                       ; $53da: $e2
	ld [hl], $e2                                     ; $53db: $36 $e2
	ld [hl], a                                       ; $53dd: $77
	ld [bc], a                                       ; $53de: $02
	ld [hl], a                                       ; $53df: $77
	cp $72                                           ; $53e0: $fe $72
	ld l, $98                                        ; $53e2: $2e $98
	rra                                              ; $53e4: $1f
	ret c                                            ; $53e5: $d8

	rra                                              ; $53e6: $1f
	rlca                                             ; $53e7: $07
	ld hl, sp+$03                                    ; $53e8: $f8 $03
	db $fc                                           ; $53ea: $fc
	ld l, e                                          ; $53eb: $6b
	call $fe73                                       ; $53ec: $cd $73 $fe
	ld h, d                                          ; $53ef: $62
	or a                                             ; $53f0: $b7
	ld l, e                                          ; $53f1: $6b
	cp $98                                           ; $53f2: $fe $98
	ret nc                                           ; $53f4: $d0

	ld l, a                                          ; $53f5: $6f
	ldh [$3f], a                                     ; $53f6: $e0 $3f
	ldh a, [$1f]                                     ; $53f8: $f0 $1f
	ld hl, sp+$7b                                    ; $53fa: $f8 $7b
	ld a, [bc]                                       ; $53fc: $0a
	ld a, a                                          ; $53fd: $7f
	sbc e                                            ; $53fe: $9b
	halt                                             ; $53ff: $76
	db $e4                                           ; $5400: $e4
	ld [hl], a                                       ; $5401: $77
	sub [hl]                                         ; $5402: $96
	ld a, a                                          ; $5403: $7f
	sbc d                                            ; $5404: $9a
	ld a, [hl]                                       ; $5405: $7e
	jp nc, $827d                                     ; $5406: $d2 $7d $82

	sub d                                            ; $5409: $92
	db $e3                                           ; $540a: $e3
	ld e, $3e                                        ; $540b: $1e $3e
	rst $38                                          ; $540d: $ff
	rlca                                             ; $540e: $07
	rst $38                                          ; $540f: $ff
	ld [$d555], a                                    ; $5410: $ea $55 $d5
	ld l, d                                          ; $5413: $6a
	ld l, d                                          ; $5414: $6a
	push de                                          ; $5415: $d5
	push de                                          ; $5416: $d5
	ld l, e                                          ; $5417: $6b
	ld b, b                                          ; $5418: $40
	ld h, a                                          ; $5419: $67
	ld hl, sp+$03                                    ; $541a: $f8 $03
	db $fc                                           ; $541c: $fc
	inc bc                                           ; $541d: $03
	db $fc                                           ; $541e: $fc
	ld h, a                                          ; $541f: $67
	db $fc                                           ; $5420: $fc
	ld a, a                                          ; $5421: $7f
	ld d, [hl]                                       ; $5422: $56
	adc h                                            ; $5423: $8c
	ld b, l                                          ; $5424: $45
	rst $38                                          ; $5425: $ff
	jp z, $957f                                      ; $5426: $ca $7f $95

	rst $38                                          ; $5429: $ff
	sbc d                                            ; $542a: $9a
	rst $38                                          ; $542b: $ff
	adc l                                            ; $542c: $8d
	rst $38                                          ; $542d: $ff
	add $7f                                          ; $542e: $c6 $7f
	ld h, b                                          ; $5430: $60
	cp a                                             ; $5431: $bf
	xor b                                            ; $5432: $a8
	rst $38                                          ; $5433: $ff
	ld c, b                                          ; $5434: $48
	rst $38                                          ; $5435: $ff
	adc b                                            ; $5436: $88
	ld a, e                                          ; $5437: $7b
	nop                                              ; $5438: $00
	ld a, l                                          ; $5439: $7d
	ld e, a                                          ; $543a: $5f
	halt                                             ; $543b: $76
	ld a, [$fe7f]                                    ; $543c: $fa $7f $fe
	ld a, [hl]                                       ; $543f: $7e
	dec sp                                           ; $5440: $3b
	ld d, a                                          ; $5441: $57
	cp $7f                                           ; $5442: $fe $7f
	ld h, [hl]                                       ; $5444: $66
	ld b, a                                          ; $5445: $47
	ld b, b                                          ; $5446: $40
	add e                                            ; $5447: $83
	inc [hl]                                         ; $5448: $34
	db $e4                                           ; $5449: $e4
	inc a                                            ; $544a: $3c
	db $e4                                           ; $544b: $e4
	inc a                                            ; $544c: $3c
	db $ec                                           ; $544d: $ec
	inc a                                            ; $544e: $3c
	db $fc                                           ; $544f: $fc
	ld [hl], $fc                                     ; $5450: $36 $fc
	ld h, $fc                                        ; $5452: $26 $fc
	inc hl                                           ; $5454: $23
	cp $23                                           ; $5455: $fe $23
	cp $dc                                           ; $5457: $fe $dc
	rrca                                             ; $5459: $0f
	call c, $de0f                                    ; $545a: $dc $0f $de
	dec bc                                           ; $545d: $0b
	sbc $0b                                          ; $545e: $de $0b
	ld e, a                                          ; $5460: $5f
	add hl, bc                                       ; $5461: $09
	rra                                              ; $5462: $1f
	dec b                                            ; $5463: $05
	ld a, e                                          ; $5464: $7b
	cp $9e                                           ; $5465: $fe $9e
	inc b                                            ; $5467: $04
	ld e, a                                          ; $5468: $5f
	ld b, $77                                        ; $5469: $06 $77
	pop de                                           ; $546b: $d1
	ld a, [hl]                                       ; $546c: $7e
	ldh [c], a                                       ; $546d: $e2
	ld b, a                                          ; $546e: $47
	ret nz                                           ; $546f: $c0

	ld e, l                                          ; $5470: $5d
	or $77                                           ; $5471: $f6 $77
	cp $7f                                           ; $5473: $fe $7f
	reti                                             ; $5475: $d9


	ld a, e                                          ; $5476: $7b
	rst AddAOntoHL                                          ; $5477: $ef
	sub d                                            ; $5478: $92
	cp $87                                           ; $5479: $fe $87
	ld hl, sp-$71                                    ; $547b: $f8 $8f
	ldh a, [rBGP]                                    ; $547d: $f0 $47
	ld hl, sp+$27                                    ; $547f: $f8 $27
	ld hl, sp+$53                                    ; $5481: $f8 $53
	cp h                                             ; $5483: $bc
	dec hl                                           ; $5484: $2b
	call c, $006f                                    ; $5485: $dc $6f $00
	ld a, [hl]                                       ; $5488: $7e
	ld [$fc6f], sp                                   ; $5489: $08 $6f $fc
	inc bc                                           ; $548c: $03
	nop                                              ; $548d: $00
	ld a, e                                          ; $548e: $7b
	db $fc                                           ; $548f: $fc
	sbc c                                            ; $5490: $99
	db $dd                                           ; $5491: $dd
	ld [hl+], a                                      ; $5492: $22
	xor d                                            ; $5493: $aa
	ld d, l                                          ; $5494: $55
	ld [hl], a                                       ; $5495: $77
	adc b                                            ; $5496: $88
	inc bc                                           ; $5497: $03
	ld hl, sp+$6b                                    ; $5498: $f8 $6b
	ld hl, sp-$71                                    ; $549a: $f8 $8f
	or b                                             ; $549c: $b0
	ld e, a                                          ; $549d: $5f

Jump_028_549e:
	ret nc                                           ; $549e: $d0

	ccf                                              ; $549f: $3f
	xor b                                            ; $54a0: $a8
	ld e, a                                          ; $54a1: $5f
	ld a, b                                          ; $54a2: $78
	adc a                                            ; $54a3: $8f
	xor h                                            ; $54a4: $ac
	ld d, a                                          ; $54a5: $57
	call c, $ae27                                    ; $54a6: $dc $27 $ae
	ld d, a                                          ; $54a9: $57
	ld [hl], a                                       ; $54aa: $77
	adc e                                            ; $54ab: $8b
	ld b, a                                          ; $54ac: $47
	ld h, c                                          ; $54ad: $61
	ld a, a                                          ; $54ae: $7f
	ld c, $6f                                        ; $54af: $0e $6f
	cp $9b                                           ; $54b1: $fe $9b
	scf                                              ; $54b3: $37
	ret z                                            ; $54b4: $c8

	inc hl                                           ; $54b5: $23
	call c, $3676                                    ; $54b6: $dc $76 $36
	ld [hl], a                                       ; $54b9: $77
	ld e, h                                          ; $54ba: $5c
	ld [hl], a                                       ; $54bb: $77

jr_028_54bc:
	cp $7e                                           ; $54bc: $fe $7e
	ld e, [hl]                                       ; $54be: $5e
	halt                                             ; $54bf: $76
	ld e, h                                          ; $54c0: $5c
	sbc b                                            ; $54c1: $98
	pop af                                           ; $54c2: $f1
	rrca                                             ; $54c3: $0f
	ld b, c                                          ; $54c4: $41
	rst $38                                          ; $54c5: $ff
	ld b, c                                          ; $54c6: $41
	rst $38                                          ; $54c7: $ff
	ld b, b                                          ; $54c8: $40
	ld e, b                                          ; $54c9: $58
	call c, $9f8f                                    ; $54ca: $dc $8f $9f
	inc b                                            ; $54cd: $04
	sbc l                                            ; $54ce: $9d
	inc b                                            ; $54cf: $04
	db $dd                                           ; $54d0: $dd
	add h                                            ; $54d1: $84
	ld e, h                                          ; $54d2: $5c
	call nz, $c47c                                   ; $54d3: $c4 $7c $c4
	inc a                                            ; $54d6: $3c
	db $e4                                           ; $54d7: $e4
	inc e                                            ; $54d8: $1c
	db $f4                                           ; $54d9: $f4
	inc e                                            ; $54da: $1c
	db $f4                                           ; $54db: $f4
	ld l, l                                          ; $54dc: $6d
	ldh a, [$75]                                     ; $54dd: $f0 $75
	ldh a, [c]                                       ; $54df: $f2
	sbc c                                            ; $54e0: $99
	ld [hl], b                                       ; $54e1: $70
	rra                                              ; $54e2: $1f
	jr c, jr_028_54f4                                ; $54e3: $38 $0f

	inc c                                            ; $54e5: $0c
	rlca                                             ; $54e6: $07
	halt                                             ; $54e7: $76
	cp h                                             ; $54e8: $bc
	ld a, a                                          ; $54e9: $7f
	cp $7d                                           ; $54ea: $fe $7d
	or [hl]                                          ; $54ec: $b6
	ld a, [hl]                                       ; $54ed: $7e
	ld a, [de]                                       ; $54ee: $1a
	ld l, l                                          ; $54ef: $6d
	and $59                                          ; $54f0: $e6 $59
	push hl                                          ; $54f2: $e5
	ld [hl], e                                       ; $54f3: $73

jr_028_54f4:
	xor d                                            ; $54f4: $aa
	adc b                                            ; $54f5: $88
	dec [hl]                                         ; $54f6: $35
	adc $1d                                          ; $54f7: $ce $1d
	and $0e                                          ; $54f9: $e6 $0e
	di                                               ; $54fb: $f3
	ld c, $f3                                        ; $54fc: $0e $f3
	dec e                                            ; $54fe: $1d
	db $e3                                           ; $54ff: $e3
	dec e                                            ; $5500: $1d
	db $e3                                           ; $5501: $e3
	ld a, [hl-]                                      ; $5502: $3a
	rst JumpTable                                          ; $5503: $c7
	scf                                              ; $5504: $37
	call z, $d5aa                                    ; $5505: $cc $aa $d5
	db $dd                                           ; $5508: $dd
	and d                                            ; $5509: $a2
	xor d                                            ; $550a: $aa
	push de                                          ; $550b: $d5
	rst FarCall                                          ; $550c: $f7
	inc bc                                           ; $550d: $03
	jr c, @+$05                                      ; $550e: $38 $03

	ld hl, sp+$27                                    ; $5510: $f8 $27
	ld hl, sp-$68                                    ; $5512: $f8 $98
	ld d, a                                          ; $5514: $57
	sbc $23                                          ; $5515: $de $23
	xor d                                            ; $5517: $aa
	ld d, a                                          ; $5518: $57
	halt                                             ; $5519: $76
	adc e                                            ; $551a: $8b
	ld [hl], a                                       ; $551b: $77
	nop                                              ; $551c: $00
	ld a, a                                          ; $551d: $7f
	db $fc                                           ; $551e: $fc
	ld a, [hl]                                       ; $551f: $7e
	ld hl, sp+$77                                    ; $5520: $f8 $77
	jr c, jr_028_55a3                                ; $5522: $38 $7f

	jr nc, jr_028_54bc                               ; $5524: $30 $96

	ld h, b                                          ; $5526: $60
	rst $38                                          ; $5527: $ff
	jr nc, @+$01                                     ; $5528: $30 $ff

	jr z, @+$01                                      ; $552a: $28 $ff

	ld b, h                                          ; $552c: $44
	rst $38                                          ; $552d: $ff
	ld b, e                                          ; $552e: $43
	ld a, d                                          ; $552f: $7a
	ld [hl], d                                       ; $5530: $72
	ld l, a                                          ; $5531: $6f
	inc h                                            ; $5532: $24
	ld a, a                                          ; $5533: $7f
	db $ec                                           ; $5534: $ec
	ld [hl], a                                       ; $5535: $77
	cp $98                                           ; $5536: $fe $98
	jr nz, @+$01                                     ; $5538: $20 $ff

	pop bc                                           ; $553a: $c1
	ccf                                              ; $553b: $3f
	add d                                            ; $553c: $82
	ld a, a                                          ; $553d: $7f
	ld [bc], a                                       ; $553e: $02
	ld a, c                                          ; $553f: $79
	add sp, -$69                                     ; $5540: $e8 $97
	ld [$10ff], sp                                   ; $5542: $08 $ff $10
	rst $38                                          ; $5545: $ff
	ld [hl+], a                                      ; $5546: $22
	db $fd                                           ; $5547: $fd
	ld b, a                                          ; $5548: $47
	ld sp, hl                                        ; $5549: $f9
	ld c, [hl]                                       ; $554a: $4e
	jp nc, $f899                                     ; $554b: $d2 $99 $f8

	rst $38                                          ; $554e: $ff
	inc c                                            ; $554f: $0c
	db $fc                                           ; $5550: $fc
	rrca                                             ; $5551: $0f
	rst $38                                          ; $5552: $ff
	ld [hl], l                                       ; $5553: $75
	push de                                          ; $5554: $d5
	halt                                             ; $5555: $76
	bit 7, h                                         ; $5556: $cb $7c
	ld a, $9c                                        ; $5558: $3e $9c
	ld hl, sp+$07                                    ; $555a: $f8 $07
	cp $79                                           ; $555c: $fe $79
	inc a                                            ; $555e: $3c
	ld h, [hl]                                       ; $555f: $66
	rra                                              ; $5560: $1f
	ld a, a                                          ; $5561: $7f
	or $9e                                           ; $5562: $f6 $9e
	ld a, b                                          ; $5564: $78
	ld a, e                                          ; $5565: $7b
	or b                                             ; $5566: $b0
	ld [hl], l                                       ; $5567: $75
	ld a, [$a07f]                                    ; $5568: $fa $7f $a0
	sbc d                                            ; $556b: $9a
	jr c, @+$01                                      ; $556c: $38 $ff

	ld a, [hl]                                       ; $556e: $7e
	rst $38                                          ; $556f: $ff
	push bc                                          ; $5570: $c5
	ld a, e                                          ; $5571: $7b
	cp b                                             ; $5572: $b8
	halt                                             ; $5573: $76
	cp b                                             ; $5574: $b8
	sbc d                                            ; $5575: $9a
	ld a, h                                          ; $5576: $7c
	add e                                            ; $5577: $83
	inc a                                            ; $5578: $3c
	jp Jump_028_7b1c                                 ; $5579: $c3 $1c $7b


	db $10                                           ; $557c: $10
	sub e                                            ; $557d: $93
	adc d                                            ; $557e: $8a
	rst FarCall                                          ; $557f: $f7
	ld b, a                                          ; $5580: $47
	db $fc                                           ; $5581: $fc
	ld l, d                                          ; $5582: $6a
	sbc l                                            ; $5583: $9d
	ld e, l                                          ; $5584: $5d
	or d                                             ; $5585: $b2
	xor d                                            ; $5586: $aa
	ld [hl], l                                       ; $5587: $75
	ld [hl], a                                       ; $5588: $77
	ret z                                            ; $5589: $c8

	ld a, e                                          ; $558a: $7b
	ld [$4003], sp                                   ; $558b: $08 $03 $40
	scf                                              ; $558e: $37
	ld hl, sp+$7f                                    ; $558f: $f8 $7f
	ld a, [$fc03]                                    ; $5591: $fa $03 $fc
	ld d, e                                          ; $5594: $53
	db $fc                                           ; $5595: $fc
	adc a                                            ; $5596: $8f
	ret c                                            ; $5597: $d8

	cpl                                              ; $5598: $2f
	ld a, b                                          ; $5599: $78
	adc a                                            ; $559a: $8f
	ret nc                                           ; $559b: $d0

	ccf                                              ; $559c: $3f
	ld [hl], b                                       ; $559d: $70
	sbc a                                            ; $559e: $9f
	rst SubAFromDE                                          ; $559f: $df
	cpl                                              ; $55a0: $2f
	ld [hl], a                                       ; $55a1: $77
	adc e                                            ; $55a2: $8b

jr_028_55a3:
	db $dd                                           ; $55a3: $dd
	inc hl                                           ; $55a4: $23
	ld [hl], a                                       ; $55a5: $77
	adc c                                            ; $55a6: $89
	ld d, [hl]                                       ; $55a7: $56
	inc [hl]                                         ; $55a8: $34
	ld a, a                                          ; $55a9: $7f
	cp $98                                           ; $55aa: $fe $98
	ldh [rIE], a                                     ; $55ac: $e0 $ff
	and b                                            ; $55ae: $a0
	rst $38                                          ; $55af: $ff
	ld h, e                                          ; $55b0: $63
	rst $38                                          ; $55b1: $ff
	inc e                                            ; $55b2: $1c
	ld a, e                                          ; $55b3: $7b
	or $7f                                           ; $55b4: $f6 $7f
	ld e, c                                          ; $55b6: $59
	ld a, [hl]                                       ; $55b7: $7e
	ld c, [hl]                                       ; $55b8: $4e
	ld a, a                                          ; $55b9: $7f
	cp $7e                                           ; $55ba: $fe $7e
	ld c, b                                          ; $55bc: $48
	ld a, a                                          ; $55bd: $7f
	ld e, $99                                        ; $55be: $1e $99
	ld c, $f1                                        ; $55c0: $0e $f1
	ld e, $e1                                        ; $55c2: $1e $e1
	ld a, [hl]                                       ; $55c4: $7e
	add c                                            ; $55c5: $81
	ld h, [hl]                                       ; $55c6: $66
	ld d, b                                          ; $55c7: $50
	ld a, a                                          ; $55c8: $7f
	inc l                                            ; $55c9: $2c
	ld c, [hl]                                       ; $55ca: $4e
	cp $9b                                           ; $55cb: $fe $9b
	di                                               ; $55cd: $f3
	rrca                                             ; $55ce: $0f
	rrca                                             ; $55cf: $0f
	ldh a, [$57]                                     ; $55d0: $f0 $57
	rst AddAOntoHL                                          ; $55d2: $ef
	ld a, a                                          ; $55d3: $7f
	or [hl]                                          ; $55d4: $b6
	ld a, [hl]                                       ; $55d5: $7e
	ld a, [$fe7f]                                    ; $55d6: $fa $7f $fe
	ld a, e                                          ; $55d9: $7b
	push bc                                          ; $55da: $c5
	ld [hl], e                                       ; $55db: $73
	cp $7d                                           ; $55dc: $fe $7d
	ret nc                                           ; $55de: $d0

	ld a, [hl]                                       ; $55df: $7e
	call nz, $fe7f                                   ; $55e0: $c4 $7f $fe
	sbc e                                            ; $55e3: $9b
	inc bc                                           ; $55e4: $03
	cp $1d                                           ; $55e5: $fe $1d
	ldh [c], a                                       ; $55e7: $e2
	ld [hl], a                                       ; $55e8: $77
	cp $8b                                           ; $55e9: $fe $8b
	ld e, $e3                                        ; $55eb: $1e $e3
	rst $38                                          ; $55ed: $ff
	rst $38                                          ; $55ee: $ff
	ld a, l                                          ; $55ef: $7d
	cp d                                             ; $55f0: $ba
	ld [hl], a                                       ; $55f1: $77
	sbc b                                            ; $55f2: $98
	db $fd                                           ; $55f3: $fd
	ld [de], a                                       ; $55f4: $12

jr_028_55f5:
	rst FarCall                                          ; $55f5: $f7
	jr jr_028_55f5                                   ; $55f6: $18 $fd

	ld [de], a                                       ; $55f8: $12
	rst SubAFromHL                                          ; $55f9: $d7
	jr c, jr_028_5639                                ; $55fa: $38 $3d

	ldh a, [c]                                       ; $55fc: $f2
	rst FarCall                                          ; $55fd: $f7
	add sp, $03                                      ; $55fe: $e8 $03
	ld c, h                                          ; $5600: $4c
	dec bc                                           ; $5601: $0b
	db $fc                                           ; $5602: $fc
	sub l                                            ; $5603: $95
	db $fd                                           ; $5604: $fd
	ld [bc], a                                       ; $5605: $02
	cp a                                             ; $5606: $bf
	ld b, b                                          ; $5607: $40
	ei                                               ; $5608: $fb
	inc b                                            ; $5609: $04
	rst AddAOntoHL                                          ; $560a: $ef
	db $10                                           ; $560b: $10
	rst $38                                          ; $560c: $ff
	nop                                              ; $560d: $00
	ld [hl], a                                       ; $560e: $77
	ld hl, sp+$7f                                    ; $560f: $f8 $7f
	ld a, [$ec7f]                                    ; $5611: $fa $7f $ec
	ld a, a                                          ; $5614: $7f
	db $fc                                           ; $5615: $fc
	sub a                                            ; $5616: $97
	or a                                             ; $5617: $b7
	ld c, b                                          ; $5618: $48
	cp $01                                           ; $5619: $fe $01
	ld a, a                                          ; $561b: $7f
	add b                                            ; $561c: $80
	rst FarCall                                          ; $561d: $f7
	ld [$6e6f], sp                                   ; $561e: $08 $6f $6e
	ld [hl], a                                       ; $5621: $77
	xor $7f                                          ; $5622: $ee $7f
	ret c                                            ; $5624: $d8

	sbc l                                            ; $5625: $9d
	rst SubAFromDE                                          ; $5626: $df
	jr nz, jr_028_56a0                               ; $5627: $20 $77

	ldh [c], a                                       ; $5629: $e2
	ld l, a                                          ; $562a: $6f
	ldh a, [c]                                       ; $562b: $f2
	ld a, a                                          ; $562c: $7f
	db $f4                                           ; $562d: $f4
	sub h                                            ; $562e: $94
	db $fd                                           ; $562f: $fd
	inc bc                                           ; $5630: $03
	rst $38                                          ; $5631: $ff
	ld bc, $857b                                     ; $5632: $01 $7b $85
	rst AddAOntoHL                                          ; $5635: $ef
	ld de, $03fe                                     ; $5636: $11 $fe $03

jr_028_5639:
	ld hl, sp-$22                                    ; $5639: $f8 $de
	rst $38                                          ; $563b: $ff
	sub [hl]                                         ; $563c: $96
	or a                                             ; $563d: $b7
	rst $38                                          ; $563e: $ff
	jp c, $b6ff                                      ; $563f: $da $ff $b6

	rst $38                                          ; $5642: $ff
	ld l, d                                          ; $5643: $6a
	rst $38                                          ; $5644: $ff
	inc h                                            ; $5645: $24
	ld a, e                                          ; $5646: $7b
	cp $7f                                           ; $5647: $fe $7f
	ld b, e                                          ; $5649: $43
	ld a, a                                          ; $564a: $7f
	ld [de], a                                       ; $564b: $12
	sbc h                                            ; $564c: $9c
	rst SubAFromDE                                          ; $564d: $df
	db $e3                                           ; $564e: $e3
	ld a, h                                          ; $564f: $7c
	ld a, d                                          ; $5650: $7a
	ld [de], a                                       ; $5651: $12
	ld a, [hl]                                       ; $5652: $7e
	inc b                                            ; $5653: $04
	ld [hl], a                                       ; $5654: $77
	cp $7e                                           ; $5655: $fe $7e
	ld a, [hl+]                                      ; $5657: $2a
	sbc [hl]                                         ; $5658: $9e
	ld a, a                                          ; $5659: $7f
	ld h, d                                          ; $565a: $62
	ldh [c], a                                       ; $565b: $e2
	ld a, a                                          ; $565c: $7f
	cp $7f                                           ; $565d: $fe $7f
	ld l, $76                                        ; $565f: $2e $76
	call c, $189c                                    ; $5661: $dc $9c $18
	rst $38                                          ; $5664: $ff
	ld b, $62                                        ; $5665: $06 $62
	inc e                                            ; $5667: $1c
	ld [hl], h                                       ; $5668: $74
	ldh [$9c], a                                     ; $5669: $e0 $9c
	ld [hl], e                                       ; $566b: $73
	adc a                                            ; $566c: $8f
	inc e                                            ; $566d: $1c
	ld a, e                                          ; $566e: $7b
	ld [$f277], a                                    ; $566f: $ea $77 $f2
	sbc e                                            ; $5672: $9b
	inc c                                            ; $5673: $0c
	di                                               ; $5674: $f3
	sbc [hl]                                         ; $5675: $9e
	ld a, a                                          ; $5676: $7f
	ld l, a                                          ; $5677: $6f
	or $6f                                           ; $5678: $f6 $6f
	cp $8b                                           ; $567a: $fe $8b
	ld [bc], a                                       ; $567c: $02
	db $fd                                           ; $567d: $fd
	nop                                              ; $567e: $00
	rst $38                                          ; $567f: $ff
	ld b, $f9                                        ; $5680: $06 $f9
	ld [hl+], a                                      ; $5682: $22
	db $dd                                           ; $5683: $dd
	ld [hl], d                                       ; $5684: $72
	adc l                                            ; $5685: $8d
	ld [hl], e                                       ; $5686: $73
	adc h                                            ; $5687: $8c
	ld [hl], c                                       ; $5688: $71
	adc [hl]                                         ; $5689: $8e
	ld a, c                                          ; $568a: $79
	add [hl]                                         ; $568b: $86
	ld a, c                                          ; $568c: $79
	add [hl]                                         ; $568d: $86
	ld a, l                                          ; $568e: $7d
	ldh [c], a                                       ; $568f: $e2
	ld a, b                                          ; $5690: $78
	push hl                                          ; $5691: $e5
	sub h                                            ; $5692: $94
	ldh [rAUD3LOW], a                                ; $5693: $e0 $1d
	ldh a, [c]                                       ; $5695: $f2
	ccf                                              ; $5696: $3f
	ret nc                                           ; $5697: $d0

	dec sp                                           ; $5698: $3b
	call nc, $f80f                                   ; $5699: $d4 $0f $f8
	adc a                                            ; $569c: $8f
	ld a, b                                          ; $569d: $78
	inc bc                                           ; $569e: $03
	ld b, b                                          ; $569f: $40

jr_028_56a0:
	cpl                                              ; $56a0: $2f
	ld b, b                                          ; $56a1: $40
	ld a, [hl]                                       ; $56a2: $7e
	xor e                                            ; $56a3: $ab
	sbc h                                            ; $56a4: $9c
	nop                                              ; $56a5: $00
	ld a, e                                          ; $56a6: $7b
	add h                                            ; $56a7: $84
	ld [hl], a                                       ; $56a8: $77
	jp z, $fe03                                      ; $56a9: $ca $03 $fe

	ld c, e                                          ; $56ac: $4b
	cp $7f                                           ; $56ad: $fe $7f
	ld c, $77                                        ; $56af: $0e $77
	cp $9d                                           ; $56b1: $fe $9d
	db $fc                                           ; $56b3: $fc
	rlca                                             ; $56b4: $07
	ld l, a                                          ; $56b5: $6f
	cp $9c                                           ; $56b6: $fe $9c
	ld hl, sp+$0f                                    ; $56b8: $f8 $0f
	inc h                                            ; $56ba: $24
	ld a, c                                          ; $56bb: $79
	ld a, [bc]                                       ; $56bc: $0a
	ld a, a                                          ; $56bd: $7f
	cp $9e                                           ; $56be: $fe $9e
	ld c, b                                          ; $56c0: $48
	ld [hl], e                                       ; $56c1: $73
	cp $92                                           ; $56c2: $fe $92
	adc c                                            ; $56c4: $89
	cp $89                                           ; $56c5: $fe $89
	cp $60                                           ; $56c7: $fe $60
	cp a                                             ; $56c9: $bf
	ldh [$3f], a                                     ; $56ca: $e0 $3f
	pop hl                                           ; $56cc: $e1
	ld a, $e1                                        ; $56cd: $3e $e1
	ld a, $c1                                        ; $56cf: $3e $c1
	ld l, e                                          ; $56d1: $6b
	cp $66                                           ; $56d2: $fe $66
	ld [hl], $67                                     ; $56d4: $36 $67
	cp $99                                           ; $56d6: $fe $99
	ld b, b                                          ; $56d8: $40
	cp a                                             ; $56d9: $bf
	ld [hl], b                                       ; $56da: $70
	adc a                                            ; $56db: $8f
	ld [hl], c                                       ; $56dc: $71
	adc [hl]                                         ; $56dd: $8e
	ld e, a                                          ; $56de: $5f
	cp $7d                                           ; $56df: $fe $7d
	ld [hl], $75                                     ; $56e1: $36 $75
	ld l, $67                                        ; $56e3: $2e $67
	cp $7f                                           ; $56e5: $fe $7f
	ld c, b                                          ; $56e7: $48
	ld a, a                                          ; $56e8: $7f
	ld [de], a                                       ; $56e9: $12
	ld a, a                                          ; $56ea: $7f
	xor e                                            ; $56eb: $ab
	ld l, a                                          ; $56ec: $6f
	cp $6f                                           ; $56ed: $fe $6f
	db $ed                                           ; $56ef: $ed
	ld a, a                                          ; $56f0: $7f
	ld c, $7f                                        ; $56f1: $0e $7f
	sbc $6f                                          ; $56f3: $de $6f
	cp $7e                                           ; $56f5: $fe $7e
	xor b                                            ; $56f7: $a8
	ld a, a                                          ; $56f8: $7f
	cp $8d                                           ; $56f9: $fe $8d
	sbc [hl]                                         ; $56fb: $9e
	ld h, c                                          ; $56fc: $61
	sbc a                                            ; $56fd: $9f
	ld l, b                                          ; $56fe: $68
	sub a                                            ; $56ff: $97
	ld l, h                                          ; $5700: $6c
	rst GetHLinHL                                          ; $5701: $cf
	inc [hl]                                         ; $5702: $34
	swap [hl]                                        ; $5703: $cb $36
	ld c, e                                          ; $5705: $4b
	or [hl]                                          ; $5706: $b6
	ld l, a                                          ; $5707: $6f
	sub d                                            ; $5708: $92
	ld h, l                                          ; $5709: $65
	sbc e                                            ; $570a: $9b
	ld h, l                                          ; $570b: $65
	sbc e                                            ; $570c: $9b
	inc bc                                           ; $570d: $03
	ld c, [hl]                                       ; $570e: $4e
	inc bc                                           ; $570f: $03
	cp $03                                           ; $5710: $fe $03
	cp $53                                           ; $5712: $fe $53
	cp $7f                                           ; $5714: $fe $7f
	ld c, $6f                                        ; $5716: $0e $6f
	cp $9b                                           ; $5718: $fe $9b
	ld sp, hl                                        ; $571a: $f9
	rrca                                             ; $571b: $0f

jr_028_571c:
	pop af                                           ; $571c: $f1
	rra                                              ; $571d: $1f
	ld [hl], a                                       ; $571e: $77
	cp $7f                                           ; $571f: $fe $7f
	ld c, $9e                                        ; $5721: $0e $9e
	sub c                                            ; $5723: $91
	ld [hl], e                                       ; $5724: $73
	cp $7d                                           ; $5725: $fe $7d
	push af                                          ; $5727: $f5
	ld a, a                                          ; $5728: $7f
	cp $9e                                           ; $5729: $fe $9e
	ld hl, $fe7b                                     ; $572b: $21 $7b $fe
	ld [hl], a                                       ; $572e: $77
	inc c                                            ; $572f: $0c
	ld l, e                                          ; $5730: $6b
	ld c, a                                          ; $5731: $4f
	sbc d                                            ; $5732: $9a
	inc a                                            ; $5733: $3c
	add e                                            ; $5734: $83
	ld a, h                                          ; $5735: $7c
	add e                                            ; $5736: $83
	ld a, h                                          ; $5737: $7c
	ld l, a                                          ; $5738: $6f
	ld a, [bc]                                       ; $5739: $0a
	ld [hl], l                                       ; $573a: $75
	inc l                                            ; $573b: $2c
	ld l, a                                          ; $573c: $6f
	cp $57                                           ; $573d: $fe $57
	inc b                                            ; $573f: $04
	ld [hl], a                                       ; $5740: $77
	cp $6c                                           ; $5741: $fe $6c
	add sp, $5f                                      ; $5743: $e8 $5f
	cp $6f                                           ; $5745: $fe $6f
	ld a, [bc]                                       ; $5747: $0a
	ld e, a                                          ; $5748: $5f
	rst AddAOntoHL                                          ; $5749: $ef
	ld a, e                                          ; $574a: $7b
	ld c, $96                                        ; $574b: $0e $96
	ld h, b                                          ; $574d: $60
	adc a                                            ; $574e: $8f
	ld [hl], b                                       ; $574f: $70
	rst GetHLinHL                                          ; $5750: $cf
	jr nc, @-$2f                                     ; $5751: $30 $cf

	jr nc, jr_028_571c                               ; $5753: $30 $c7

	jr c, jr_028_57ce                                ; $5755: $38 $77

	cp $8f                                           ; $5757: $fe $8f
	daa                                              ; $5759: $27
	reti                                             ; $575a: $d9


	ld h, $d9                                        ; $575b: $26 $d9
	ld [hl-], a                                      ; $575d: $32
	call $cc33                                       ; $575e: $cd $33 $cc
	inc sp                                           ; $5761: $33
	call z, Call_028_4cb3                            ; $5762: $cc $b3 $4c
	sbc e                                            ; $5765: $9b
	ld h, h                                          ; $5766: $64
	sbc c                                            ; $5767: $99
	ld h, [hl]                                       ; $5768: $66
	ld a, e                                          ; $5769: $7b
	ld l, h                                          ; $576a: $6c
	ld l, h                                          ; $576b: $6c
	ld a, a                                          ; $576c: $7f
	sbc b                                            ; $576d: $98
	add b                                            ; $576e: $80
	ld a, a                                          ; $576f: $7f
	ret nz                                           ; $5770: $c0

	ld a, a                                          ; $5771: $7f
	ret nz                                           ; $5772: $c0

	rst $38                                          ; $5773: $ff
	ld b, b                                          ; $5774: $40
	inc bc                                           ; $5775: $03
	ld a, $03                                        ; $5776: $3e $03
	cp $0f                                           ; $5778: $fe $0f
	cp $6f                                           ; $577a: $fe $6f
	ld a, [bc]                                       ; $577c: $0a
	ld a, l                                          ; $577d: $7d
	ld a, e                                          ; $577e: $7b
	ld [hl], a                                       ; $577f: $77
	cp $9b                                           ; $5780: $fe $9b
	and $3f                                          ; $5782: $e6 $3f
	ld [$773f], a                                    ; $5784: $ea $3f $77
	inc c                                            ; $5787: $0c
	ld [hl], a                                       ; $5788: $77
	cp $9d                                           ; $5789: $fe $9d
	inc hl                                           ; $578b: $23
	db $fc                                           ; $578c: $fc
	ld [hl], a                                       ; $578d: $77
	cp $9d                                           ; $578e: $fe $9d
	ld b, e                                          ; $5790: $43
	db $fc                                           ; $5791: $fc
	ld [hl], a                                       ; $5792: $77
	inc c                                            ; $5793: $0c

jr_028_5794:
	ld d, a                                          ; $5794: $57
	cp $5f                                           ; $5795: $fe $5f
	ld b, $77                                        ; $5797: $06 $77
	cp $7c                                           ; $5799: $fe $7c
	ldh a, [c]                                       ; $579b: $f2
	ld l, a                                          ; $579c: $6f
	ld a, [bc]                                       ; $579d: $0a
	sbc e                                            ; $579e: $9b
	ld h, c                                          ; $579f: $61
	sbc [hl]                                         ; $57a0: $9e
	ld h, c                                          ; $57a1: $61
	sbc [hl]                                         ; $57a2: $9e
	ld a, d                                          ; $57a3: $7a
	ld sp, $fe7b                                     ; $57a4: $31 $7b $fe
	ld b, a                                          ; $57a7: $47
	nop                                              ; $57a8: $00
	ld b, a                                          ; $57a9: $47

Jump_028_57aa:
	adc a                                            ; $57aa: $8f
	ld [hl], a                                       ; $57ab: $77
	inc c                                            ; $57ac: $0c
	sbc e                                            ; $57ad: $9b
	rst SubAFromBC                                          ; $57ae: $e7
	jr jr_028_5794                                   ; $57af: $18 $e3

	inc e                                            ; $57b1: $1c
	ld [hl], a                                       ; $57b2: $77
	cp $99                                           ; $57b3: $fe $99
	ld h, e                                          ; $57b5: $63
	sbc h                                            ; $57b6: $9c
	ld h, e                                          ; $57b7: $63
	sbc h                                            ; $57b8: $9c
	sbc c                                            ; $57b9: $99
	ld h, [hl]                                       ; $57ba: $66
	ld [hl], a                                       ; $57bb: $77
	cp $9d                                           ; $57bc: $fe $9d
	ret z                                            ; $57be: $c8

	scf                                              ; $57bf: $37
	ld a, d                                          ; $57c0: $7a
	rst $38                                          ; $57c1: $ff
	ld [hl], e                                       ; $57c2: $73
	cp $7b                                           ; $57c3: $fe $7b
	ld c, $7d                                        ; $57c5: $0e $7d
	xor l                                            ; $57c7: $ad
	ld a, l                                          ; $57c8: $7d
	adc e                                            ; $57c9: $8b
	sbc [hl]                                         ; $57ca: $9e
	ld h, b                                          ; $57cb: $60
	ld l, b                                          ; $57cc: $68
	sub c                                            ; $57cd: $91

jr_028_57ce:
	ld a, a                                          ; $57ce: $7f
	cp $03                                           ; $57cf: $fe $03
	ld a, $03                                        ; $57d1: $3e $03
	cp $13                                           ; $57d3: $fe $13
	cp $9e                                           ; $57d5: $fe $9e
	or $7b                                           ; $57d7: $f6 $7b
	inc c                                            ; $57d9: $0c
	ld a, a                                          ; $57da: $7f
	db $fc                                           ; $57db: $fc
	sbc b                                            ; $57dc: $98
	db $ec                                           ; $57dd: $ec
	ld a, a                                          ; $57de: $7f
	call nc, $ec7f                                   ; $57df: $d4 $7f $ec
	ld a, a                                          ; $57e2: $7f
	call c, $fc7b                                    ; $57e3: $dc $7b $fc
	ld a, a                                          ; $57e6: $7f
	ld c, $4f                                        ; $57e7: $0e $4f
	cp $7f                                           ; $57e9: $fe $7f
	ld c, $9d                                        ; $57eb: $0e $9d
	add a                                            ; $57ed: $87

jr_028_57ee:
	ld a, b                                          ; $57ee: $78
	ld d, a                                          ; $57ef: $57
	cp $7f                                           ; $57f0: $fe $7f

jr_028_57f2:
	ld c, $4f                                        ; $57f2: $0e $4f
	cp $6f                                           ; $57f4: $fe $6f
	ld a, [bc]                                       ; $57f6: $0a
	ld e, a                                          ; $57f7: $5f
	cp $55                                           ; $57f8: $fe $55
	ld [bc], a                                       ; $57fa: $02
	ld [hl], a                                       ; $57fb: $77
	cp $47                                           ; $57fc: $fe $47
	adc a                                            ; $57fe: $8f
	ld a, [hl]                                       ; $57ff: $7e
	ret c                                            ; $5800: $d8

	halt                                             ; $5801: $76
	ret nc                                           ; $5802: $d0

	sbc l                                            ; $5803: $9d
	ld sp, $67ce                                     ; $5804: $31 $ce $67
	cp $9b                                           ; $5807: $fe $9b
	db $ec                                           ; $5809: $ec
	inc de                                           ; $580a: $13
	and $19                                          ; $580b: $e6 $19
	ld d, a                                          ; $580d: $57
	cp $99                                           ; $580e: $fe $99
	rst SubAFromDE                                          ; $5810: $df
	jr nc, jr_028_57f2                               ; $5811: $30 $df

	jr nc, jr_028_5894                               ; $5813: $30 $7f

	sub b                                            ; $5815: $90
	ld [hl], a                                       ; $5816: $77
	cp $99                                           ; $5817: $fe $99
	ld l, a                                          ; $5819: $6f
	sbc b                                            ; $581a: $98
	ld l, a                                          ; $581b: $6f
	sbc b                                            ; $581c: $98
	ld a, a                                          ; $581d: $7f
	adc b                                            ; $581e: $88
	inc bc                                           ; $581f: $03
	ld a, $4b                                        ; $5820: $3e $4b
	cp $15                                           ; $5822: $fe $15
	nop                                              ; $5824: $00
	rst SubAFromDE                                          ; $5825: $df
	inc sp                                           ; $5826: $33
	sbc h                                            ; $5827: $9c
	inc [hl]                                         ; $5828: $34
	inc sp                                           ; $5829: $33
	ld b, e                                          ; $582a: $43
	db $db                                           ; $582b: $db
	inc sp                                           ; $582c: $33
	sbc [hl]                                         ; $582d: $9e
	inc [hl]                                         ; $582e: $34
	dec hl                                           ; $582f: $2b
	ld hl, sp-$63                                    ; $5830: $f8 $9d
	inc sp                                           ; $5832: $33
	ld b, h                                          ; $5833: $44
	pop bc                                           ; $5834: $c1
	inc sp                                           ; $5835: $33
	add $33                                          ; $5836: $c6 $33
	or c                                             ; $5838: $b1
	add b                                            ; $5839: $80
	sbc l                                            ; $583a: $9d
	adc b                                            ; $583b: $88
	ld [hl+], a                                      ; $583c: $22
	ld l, a                                          ; $583d: $6f
	cp $9d                                           ; $583e: $fe $9d
	ld [hl], a                                       ; $5840: $77
	db $dd                                           ; $5841: $dd
	ld l, a                                          ; $5842: $6f
	cp $47                                           ; $5843: $fe $47
	ldh a, [hDisp1_BGP]                                     ; $5845: $f0 $92
	jp wPastTitleScreen                                         ; $5847: $c3 $41 $c1


	ld b, b                                          ; $584a: $40
	ret nz                                           ; $584b: $c0

	jr nz, jr_028_57ee                               ; $584c: $20 $a0

	jr nz, jr_028_58cc                               ; $584e: $20 $7c

	cp $7e                                           ; $5850: $fe $7e
	rst $38                                          ; $5852: $ff
	ld a, a                                          ; $5853: $7f
	ld a, e                                          ; $5854: $7b
	cp $96                                           ; $5855: $fe $96
	sub $e3                                          ; $5857: $d6 $e3
	db $e3                                           ; $5859: $e3
	ldh a, [$78]                                     ; $585a: $f0 $78
	ld a, h                                          ; $585c: $7c
	ld a, $1f                                        ; $585d: $3e $1f
	ld a, l                                          ; $585f: $7d
	ld a, e                                          ; $5860: $7b
	db $fc                                           ; $5861: $fc
	add b                                            ; $5862: $80
	adc a                                            ; $5863: $8f
	add a                                            ; $5864: $87
	jp Jump_028_79e1                                 ; $5865: $c3 $e1 $79


	add hl, hl                                       ; $5868: $29
	inc a                                            ; $5869: $3c
	sbc h                                            ; $586a: $9c
	sub h                                            ; $586b: $94
	inc c                                            ; $586c: $0c
	ld [$e00b], sp                                   ; $586d: $08 $0b $e0
	ldh a, [$f0]                                     ; $5870: $f0 $f0
	ld [hl], b                                       ; $5872: $70
	ld a, b                                          ; $5873: $78
	ld hl, sp-$04                                    ; $5874: $f8 $fc
	db $fc                                           ; $5876: $fc
	add b                                            ; $5877: $80
	add b                                            ; $5878: $80
	ret nz                                           ; $5879: $c0

	pop hl                                           ; $587a: $e1
	ldh a, [c]                                       ; $587b: $f2
	ld c, $0e                                        ; $587c: $0e $0e
	ldh a, [c]                                       ; $587e: $f2
	ld a, a                                          ; $587f: $7f
	ld a, a                                          ; $5880: $7f
	ccf                                              ; $5881: $3f
	sbc c                                            ; $5882: $99
	rra                                              ; $5883: $1f
	rrca                                             ; $5884: $0f
	inc bc                                           ; $5885: $03
	inc bc                                           ; $5886: $03
	rrca                                             ; $5887: $0f
	rst $38                                          ; $5888: $ff
	ld a, e                                          ; $5889: $7b
	call z, $039b                                    ; $588a: $cc $9b $03
	nop                                              ; $588d: $00
	ld hl, sp+$1f                                    ; $588e: $f8 $1f
	ld a, e                                          ; $5890: $7b
	add sp, -$66                                     ; $5891: $e8 $9a
	db $fc                                           ; $5893: $fc

jr_028_5894:
	rst $38                                          ; $5894: $ff
	rst $38                                          ; $5895: $ff
	rlca                                             ; $5896: $07
	ldh [$dd], a                                     ; $5897: $e0 $dd
	rrca                                             ; $5899: $0f
	sbc e                                            ; $589a: $9b
	adc a                                            ; $589b: $8f
	ld a, a                                          ; $589c: $7f
	rra                                              ; $589d: $1f
	rlca                                             ; $589e: $07
	db $dd                                           ; $589f: $dd
	inc b                                            ; $58a0: $04
	sbc e                                            ; $58a1: $9b
	add h                                            ; $58a2: $84
	xor $fe                                          ; $58a3: $ee $fe
	ld a, [hl]                                       ; $58a5: $7e
	db $db                                           ; $58a6: $db
	ldh [$9d], a                                     ; $58a7: $e0 $9d
	ldh a, [$f8]                                     ; $58a9: $f0 $f8
	ld sp, hl                                        ; $58ab: $f9
	sub [hl]                                         ; $58ac: $96
	ccf                                              ; $58ad: $3f
	ld a, a                                          ; $58ae: $7f
	ld a, a                                          ; $58af: $7f
	ld a, h                                          ; $58b0: $7c
	ld b, b                                          ; $58b1: $40
	ld b, e                                          ; $58b2: $43
	ld a, a                                          ; $58b3: $7f
	ld a, a                                          ; $58b4: $7f
	jr nz, @-$23                                     ; $58b5: $20 $db

	ld b, b                                          ; $58b7: $40
	sbc [hl]                                         ; $58b8: $9e
	ccf                                              ; $58b9: $3f
	sbc $e7                                          ; $58ba: $de $e7
	rst SubAFromDE                                          ; $58bc: $df
	rlca                                             ; $58bd: $07
	sbc $ff                                          ; $58be: $de $ff
	jp c, $8001                                      ; $58c0: $da $01 $80

	rst $38                                          ; $58c3: $ff
	add a                                            ; $58c4: $87
	rrca                                             ; $58c5: $0f
	rra                                              ; $58c6: $1f
	inc e                                            ; $58c7: $1c
	nop                                              ; $58c8: $00
	add e                                            ; $58c9: $83
	add a                                            ; $58ca: $87
	ld c, a                                          ; $58cb: $4f

jr_028_58cc:
	ld hl, sp-$10                                    ; $58cc: $f8 $f0
	ldh [$e3], a                                     ; $58ce: $e0 $e3
	rst $38                                          ; $58d0: $ff
	db $fc                                           ; $58d1: $fc
	ld hl, sp-$10                                    ; $58d2: $f8 $f0
	db $fc                                           ; $58d4: $fc
	cp $84                                           ; $58d5: $fe $84
	ld [hl], $f4                                     ; $58d7: $36 $f4
	ld a, [$bab8]                                    ; $58d9: $fa $b8 $ba
	rlca                                             ; $58dc: $07
	dec b                                            ; $58dd: $05
	ld a, a                                          ; $58de: $7f
	call $0d0f                                       ; $58df: $cd $0f $0d
	sbc l                                            ; $58e2: $9d
	ld c, a                                          ; $58e3: $4f
	ld c, l                                          ; $58e4: $4d
	rlca                                             ; $58e5: $07
	jr nc, jr_028_592f                               ; $58e6: $30 $47

	ldh a, [$09]                                     ; $58e8: $f0 $09
	nop                                              ; $58ea: $00
	sbc $33                                          ; $58eb: $de $33
	sbc l                                            ; $58ed: $9d
	ld b, a                                          ; $58ee: $47
	ld d, e                                          ; $58ef: $53
	sbc $33                                          ; $58f0: $de $33
	sbc $00                                          ; $58f2: $de $00
	sub l                                            ; $58f4: $95
	nop                                              ; $58f5: $00
	rst $38                                          ; $58f6: $ff
	inc b                                            ; $58f7: $04

Call_028_58f8:
	ei                                               ; $58f8: $fb
	ld b, b                                          ; $58f9: $40
	cp a                                             ; $58fa: $bf
	nop                                              ; $58fb: $00
	rst $38                                          ; $58fc: $ff
	db $10                                           ; $58fd: $10
	rst AddAOntoHL                                          ; $58fe: $ef
	ld [hl], a                                       ; $58ff: $77
	ld hl, sp-$63                                    ; $5900: $f8 $9d
	ld [bc], a                                       ; $5902: $02
	db $fd                                           ; $5903: $fd
	cp a                                             ; $5904: $bf
	rst $38                                          ; $5905: $ff
	rst $38                                          ; $5906: $ff
	add b                                            ; $5907: $80
	ld [$80f7], sp                                   ; $5908: $08 $f7 $80
	ld a, a                                          ; $590b: $7f
	ld bc, $48fe                                     ; $590c: $01 $fe $48
	or a                                             ; $590f: $b7
	nop                                              ; $5910: $00
	rst $38                                          ; $5911: $ff
	ld [hl+], a                                      ; $5912: $22
	db $dd                                           ; $5913: $dd
	inc d                                            ; $5914: $14
	ei                                               ; $5915: $fb
	rra                                              ; $5916: $1f
	ldh a, [rAUD3LEN]                                ; $5917: $f0 $1b
	rst FarCall                                          ; $5919: $f7
	ld l, $f7                                        ; $591a: $2e $f7
	xor e                                            ; $591c: $ab
	ld [hl], a                                       ; $591d: $77
	ld l, $f3                                        ; $591e: $2e $f3
	daa                                              ; $5920: $27
	ld sp, hl                                        ; $5921: $f9
	inc hl                                           ; $5922: $23
	db $fc                                           ; $5923: $fc
	dec d                                            ; $5924: $15
	cp $0b                                           ; $5925: $fe $0b
	add b                                            ; $5927: $80
	cp $c6                                           ; $5928: $fe $c6
	ccf                                              ; $592a: $3f
	db $e3                                           ; $592b: $e3
	sbc a                                            ; $592c: $9f

jr_028_592d:
	ld [hl], c                                       ; $592d: $71
	rst GetHLinHL                                          ; $592e: $cf

jr_028_592f:
	cp b                                             ; $592f: $b8
	rst SubAFromBC                                          ; $5930: $e7
	ld e, h                                          ; $5931: $5c
	di                                               ; $5932: $f3
	xor h                                            ; $5933: $ac
	ei                                               ; $5934: $fb
	sbc [hl]                                         ; $5935: $9e
	ld bc, $01ce                                     ; $5936: $01 $ce $01
	rst GetHLinHL                                          ; $5939: $cf
	nop                                              ; $593a: $00
	ld h, a                                          ; $593b: $67
	add b                                            ; $593c: $80
	rst SubAFromBC                                          ; $593d: $e7
	add b                                            ; $593e: $80
	or e                                             ; $593f: $b3
	ret nz                                           ; $5940: $c0

	db $d3                                           ; $5941: $d3
	ldh [$59], a                                     ; $5942: $e0 $59
	ldh [$7f], a                                     ; $5944: $e0 $7f
	ret nz                                           ; $5946: $c0

	adc h                                            ; $5947: $8c
	ccf                                              ; $5948: $3f
	ldh [$1f], a                                     ; $5949: $e0 $1f
	ldh a, [rIF]                                     ; $594b: $f0 $0f
	ld hl, sp+$0f                                    ; $594d: $f8 $0f
	db $fc                                           ; $594f: $fc
	rlca                                             ; $5950: $07
	db $fc                                           ; $5951: $fc
	inc bc                                           ; $5952: $03
	cp $01                                           ; $5953: $fe $01
	rst $38                                          ; $5955: $ff
	ld a, b                                          ; $5956: $78
	add b                                            ; $5957: $80
	ld a, h                                          ; $5958: $7c
	add b                                            ; $5959: $80
	db $fc                                           ; $595a: $fc
	cp e                                             ; $595b: $bb
	cp $fe                                           ; $595c: $fe $fe
	cp $ff                                           ; $595e: $fe $ff
	rst $38                                          ; $5960: $ff
	rst $38                                          ; $5961: $ff
	sub a                                            ; $5962: $97
	ld e, h                                          ; $5963: $5c
	ld a, a                                          ; $5964: $7f
	ld a, [hl]                                       ; $5965: $7e
	ld h, e                                          ; $5966: $63
	ld a, $33                                        ; $5967: $3e $33
	ld e, $13                                        ; $5969: $1e $13
	ld a, e                                          ; $596b: $7b
	cp $9a                                           ; $596c: $fe $9a
	rra                                              ; $596e: $1f
	inc c                                            ; $596f: $0c
	rrca                                             ; $5970: $0f
	inc c                                            ; $5971: $0c
	jr nc, jr_028_592d                               ; $5972: $30 $b9

	add e                                            ; $5974: $83
	add $e0                                          ; $5975: $c6 $e0
	ldh a, [$f0]                                     ; $5977: $f0 $f0
	ldh a, [$f0]                                     ; $5979: $f0 $f0
	rrca                                             ; $597b: $0f
	sbc d                                            ; $597c: $9a
	ld [$080f], sp                                   ; $597d: $08 $0f $08
	rra                                              ; $5980: $1f
	db $10                                           ; $5981: $10
	ld [hl], a                                       ; $5982: $77
	cp $9d                                           ; $5983: $fe $9d
	ccf                                              ; $5985: $3f
	jr nz, jr_028_59ff                               ; $5986: $20 $77

	cp $7f                                           ; $5988: $fe $7f
	call nz, $fe7f                                   ; $598a: $c4 $7f $fe
	sbc [hl]                                         ; $598d: $9e
	ld sp, hl                                        ; $598e: $f9
	cp h                                             ; $598f: $bc
	ld sp, hl                                        ; $5990: $f9
	di                                               ; $5991: $f3
	di                                               ; $5992: $f3
	di                                               ; $5993: $f3
	ldh a, [c]                                       ; $5994: $f2
	add d                                            ; $5995: $82
	ld bc, $3cdb                                     ; $5996: $01 $db $3c
	rst FarCall                                          ; $5999: $f7
	jr c, @-$57                                      ; $599a: $38 $a7

	ld a, b                                          ; $599c: $78
	rst SubAFromBC                                          ; $599d: $e7

jr_028_599e:
	ld a, b                                          ; $599e: $78
	ld b, [hl]                                       ; $599f: $46
	ld sp, hl                                        ; $59a0: $f9
	push bc                                          ; $59a1: $c5
	ld a, [$fe81]                                    ; $59a2: $fa $81 $fe
	add e                                            ; $59a5: $83
	db $fc                                           ; $59a6: $fc
	add sp, $1f                                      ; $59a7: $e8 $1f
	add sp, $1f                                      ; $59a9: $e8 $1f
	ld [hl], h                                       ; $59ab: $74
	adc a                                            ; $59ac: $8f

jr_028_59ad:
	ld [hl], h                                       ; $59ad: $74
	adc a                                            ; $59ae: $8f
	db $f4                                           ; $59af: $f4
	rrca                                             ; $59b0: $0f
	ld a, [$7707]                                    ; $59b1: $fa $07 $77
	cp $47                                           ; $59b4: $fe $47
	ld b, b                                          ; $59b6: $40
	cp a                                             ; $59b7: $bf
	rst $38                                          ; $59b8: $ff
	rst $38                                          ; $59b9: $ff
	ld a, a                                          ; $59ba: $7f
	ld h, $9b                                        ; $59bb: $26 $9b
	jr nz, jr_028_599e                               ; $59bd: $20 $df

	adc b                                            ; $59bf: $88
	ld [hl], a                                       ; $59c0: $77
	ld h, a                                          ; $59c1: $67
	ldh a, [c]                                       ; $59c2: $f2
	ld a, a                                          ; $59c3: $7f
	ld d, $97                                        ; $59c4: $16 $97
	add h                                            ; $59c6: $84
	ld a, e                                          ; $59c7: $7b
	nop                                              ; $59c8: $00
	rst $38                                          ; $59c9: $ff
	ld [bc], a                                       ; $59ca: $02
	db $fd                                           ; $59cb: $fd
	jr nz, jr_028_59ad                               ; $59cc: $20 $df

	ld [hl], a                                       ; $59ce: $77
	xor $0a                                          ; $59cf: $ee $0a
	nop                                              ; $59d1: $00
	rst SubAFromDE                                          ; $59d2: $df
	inc sp                                           ; $59d3: $33
	sbc h                                            ; $59d4: $9c
	inc [hl]                                         ; $59d5: $34
	ld d, a                                          ; $59d6: $57
	ld d, e                                          ; $59d7: $53
	sbc $33                                          ; $59d8: $de $33
	or b                                             ; $59da: $b0
	add b                                            ; $59db: $80
	ld sp, hl                                        ; $59dc: $f9
	reti                                             ; $59dd: $d9


	rst $38                                          ; $59de: $ff
	ld b, a                                          ; $59df: $47
	ldh a, [hDisp1_WY]                                     ; $59e0: $f0 $95
	inc bc                                           ; $59e2: $03
	dec b                                            ; $59e3: $05
	rlca                                             ; $59e4: $07
	inc b                                            ; $59e5: $04
	ld [$080f], sp                                   ; $59e6: $08 $0f $08
	db $10                                           ; $59e9: $10
	rst $38                                          ; $59ea: $ff
	cp $db                                           ; $59eb: $fe $db
	rst $38                                          ; $59ed: $ff
	add b                                            ; $59ee: $80
	ld b, a                                          ; $59ef: $47
	di                                               ; $59f0: $f3
	cp c                                             ; $59f1: $b9
	ld e, h                                          ; $59f2: $5c
	ld l, $16                                        ; $59f3: $2e $16
	rst GetHLinHL                                          ; $59f5: $cf
	dec hl                                           ; $59f6: $2b
	add b                                            ; $59f7: $80
	nop                                              ; $59f8: $00
	ret nz                                           ; $59f9: $c0

	ldh [$f0], a                                     ; $59fa: $e0 $f0
	ld hl, sp-$08                                    ; $59fc: $f8 $f8
	db $fc                                           ; $59fe: $fc

jr_028_59ff:
	add b                                            ; $59ff: $80
	ret nz                                           ; $5a00: $c0

	pop af                                           ; $5a01: $f1
	ld sp, hl                                        ; $5a02: $f9
	ld a, c                                          ; $5a03: $79
	ld a, l                                          ; $5a04: $7d
	inc a                                            ; $5a05: $3c
	ld e, $7f                                        ; $5a06: $1e $7f
	ccf                                              ; $5a08: $3f
	rrca                                             ; $5a09: $0f
	rlca                                             ; $5a0a: $07
	rlca                                             ; $5a0b: $07
	inc bc                                           ; $5a0c: $03
	inc bc                                           ; $5a0d: $03
	add b                                            ; $5a0e: $80
	ld bc, $edbe                                     ; $5a0f: $01 $be $ed
	ld e, b                                          ; $5a12: $58
	inc sp                                           ; $5a13: $33
	ld b, $75                                        ; $5a14: $06 $75
	cp [hl]                                          ; $5a16: $be
	cp e                                             ; $5a17: $bb
	call z, $b198                                    ; $5a18: $cc $98 $b1
	pop hl                                           ; $5a1b: $e1
	db $e3                                           ; $5a1c: $e3
	add $c0                                          ; $5a1d: $c6 $c0
	call nz, Call_028_66b7                           ; $5a1f: $c4 $b7 $66
	ret z                                            ; $5a22: $c8

	ld e, l                                          ; $5a23: $5d
	sbc b                                            ; $5a24: $98
	jr z, @+$52                                      ; $5a25: $28 $50

	or c                                             ; $5a27: $b1
	ld h, e                                          ; $5a28: $63
	call nz, $888c                                   ; $5a29: $c4 $8c $88
	ld de, $8131                                     ; $5a2c: $11 $31 $81
	ld hl, $c040                                     ; $5a2f: $21 $40 $c0
	ldh [$65], a                                     ; $5a32: $e0 $65
	ld a, [hl+]                                      ; $5a34: $2a
	xor a                                            ; $5a35: $af
	db $fc                                           ; $5a36: $fc
	or b                                             ; $5a37: $b0
	add sp, -$80                                     ; $5a38: $e8 $80
	ld b, b                                          ; $5a3a: $40
	inc hl                                           ; $5a3b: $23
	and a                                            ; $5a3c: $a7
	cp [hl]                                          ; $5a3d: $be
	or c                                             ; $5a3e: $b1
	db $ec                                           ; $5a3f: $ec
	sbc $1f                                          ; $5a40: $de $1f
	rst $38                                          ; $5a42: $ff
	adc c                                            ; $5a43: $89
	ld [hl+], a                                      ; $5a44: $22
	ld de, $4488                                     ; $5a45: $11 $88 $44
	ld [hl+], a                                      ; $5a48: $22
	rrca                                             ; $5a49: $0f

jr_028_5a4a:
	ld a, c                                          ; $5a4a: $79
	call z, $7744                                    ; $5a4b: $cc $44 $77
	rst FarCall                                          ; $5a4e: $f7
	sbc $ff                                          ; $5a4f: $de $ff
	ld a, a                                          ; $5a51: $7f

jr_028_5a52:
	or l                                             ; $5a52: $b5
	sub h                                            ; $5a53: $94
	rra                                              ; $5a54: $1f
	rrca                                             ; $5a55: $0f
	rrca                                             ; $5a56: $0f
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	add b                                            ; $5a59: $80
	ld b, b                                          ; $5a5a: $40
	jr nz, jr_028_5a6d                               ; $5a5b: $20 $10

	ld [$db08], sp                                   ; $5a5d: $08 $08 $db
	rst $38                                          ; $5a60: $ff
	rst SubAFromDE                                          ; $5a61: $df
	cp $f9                                           ; $5a62: $fe $f9
	add b                                            ; $5a64: $80
	pop af                                           ; $5a65: $f1
	rst SubAFromBC                                          ; $5a66: $e7
	rst GetHLinHL                                          ; $5a67: $cf
	sbc [hl]                                         ; $5a68: $9e
	inc a                                            ; $5a69: $3c
	add hl, sp                                       ; $5a6a: $39
	ld l, d                                          ; $5a6b: $6a
	ld [hl], l                                       ; $5a6c: $75

jr_028_5a6d:
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	ld bc, $0703                                     ; $5a6f: $01 $03 $07
	ld c, $1d                                        ; $5a72: $0e $1d
	ld e, $40                                        ; $5a74: $1e $40
	ldh [$f0], a                                     ; $5a76: $e0 $f0
	jr nc, jr_028_5a4a                               ; $5a78: $30 $d0

	ret nc                                           ; $5a7a: $d0

	db $10                                           ; $5a7b: $10
	add sp, -$01                                     ; $5a7c: $e8 $ff
	ccf                                              ; $5a7e: $3f
	rst SubAFromDE                                          ; $5a7f: $df
	rst $38                                          ; $5a80: $ff
	ccf                                              ; $5a81: $3f
	ccf                                              ; $5a82: $3f
	rst $38                                          ; $5a83: $ff
	sbc [hl]                                         ; $5a84: $9e
	rra                                              ; $5a85: $1f
	rlca                                             ; $5a86: $07
	jr nc, jr_028_5ad0                               ; $5a87: $30 $47

	ldh a, [$0a]                                     ; $5a89: $f0 $0a
	nop                                              ; $5a8b: $00
	rst SubAFromDE                                          ; $5a8c: $df
	inc sp                                           ; $5a8d: $33
	sbc h                                            ; $5a8e: $9c
	dec [hl]                                         ; $5a8f: $35
	ld d, l                                          ; $5a90: $55
	ld d, e                                          ; $5a91: $53
	sbc $33                                          ; $5a92: $de $33
	add l                                            ; $5a94: $85
	add b                                            ; $5a95: $80
	ld sp, hl                                        ; $5a96: $f9
	reti                                             ; $5a97: $d9


	rst $38                                          ; $5a98: $ff
	inc bc                                           ; $5a99: $03
	ldh a, [$fe]                                     ; $5a9a: $f0 $fe
	sbc e                                            ; $5a9c: $9b
	ld bc, $3806                                     ; $5a9d: $01 $06 $38
	ret nz                                           ; $5aa0: $c0

	reti                                             ; $5aa1: $d9


	rst $38                                          ; $5aa2: $ff
	rst SubAFromDE                                          ; $5aa3: $df
	ld bc, $0f9c                                     ; $5aa4: $01 $9c $0f
	ld a, $e0                                        ; $5aa7: $3e $e0
	ld e, e                                          ; $5aa9: $5b
	ldh [$97], a                                     ; $5aaa: $e0 $97
	rrca                                             ; $5aac: $0f
	ldh a, [$80]                                     ; $5aad: $f0 $80
	rlca                                             ; $5aaf: $07
	rrca                                             ; $5ab0: $0f
	rra                                              ; $5ab1: $1f
	ccf                                              ; $5ab2: $3f
	ld a, a                                          ; $5ab3: $7f
	db $dd                                           ; $5ab4: $dd
	rst $38                                          ; $5ab5: $ff
	adc e                                            ; $5ab6: $8b
	ld sp, hl                                        ; $5ab7: $f9
	ldh a, [$e1]                                     ; $5ab8: $f0 $e1
	add $dc                                          ; $5aba: $c6 $dc
	or $dd                                           ; $5abc: $f6 $dd
	rst GetHLinHL                                          ; $5abe: $cf
	rst SubAFromBC                                          ; $5abf: $e7
	ld sp, hl                                        ; $5ac0: $f9
	cp [hl]                                          ; $5ac1: $be
	ld e, e                                          ; $5ac2: $5b
	ldh [$f8], a                                     ; $5ac3: $e0 $f8
	cp $ff                                           ; $5ac5: $fe $ff
	rst SubAFromDE                                          ; $5ac7: $df
	rst SubAFromBC                                          ; $5ac8: $e7
	ld a, l                                          ; $5ac9: $7d
	ld [hl-], a                                      ; $5aca: $32
	ld [hl], a                                       ; $5acb: $77
	pop bc                                           ; $5acc: $c1
	sbc e                                            ; $5acd: $9b
	rst JumpTable                                          ; $5ace: $c7
	db $fd                                           ; $5acf: $fd

jr_028_5ad0:
	jr jr_028_5a52                                   ; $5ad0: $18 $80

	cp $84                                           ; $5ad2: $fe $84
	add b                                            ; $5ad4: $80
	db $e3                                           ; $5ad5: $e3
	cp $e0                                           ; $5ad6: $fe $e0
	nop                                              ; $5ad8: $00
	rrca                                             ; $5ad9: $0f
	dec de                                           ; $5ada: $1b
	ld [hl], e                                       ; $5adb: $73
	rst SubAFromDE                                          ; $5adc: $df
	ld b, a                                          ; $5add: $47
	rlca                                             ; $5ade: $07
	rlca                                             ; $5adf: $07
	rrca                                             ; $5ae0: $0f
	rlca                                             ; $5ae1: $07
	rrca                                             ; $5ae2: $0f
	ccf                                              ; $5ae3: $3f
	db $e3                                           ; $5ae4: $e3
	add e                                            ; $5ae5: $83
	inc bc                                           ; $5ae6: $03
	inc bc                                           ; $5ae7: $03
	rlca                                             ; $5ae8: $07
	ld [hl], b                                       ; $5ae9: $70
	call z, $f3e3                                    ; $5aea: $cc $e3 $f3
	ld sp, hl                                        ; $5aed: $f9
	db $fd                                           ; $5aee: $fd
	sbc $ff                                          ; $5aef: $de $ff
	sub d                                            ; $5af1: $92
	ccf                                              ; $5af2: $3f
	sbc a                                            ; $5af3: $9f
	adc h                                            ; $5af4: $8c
	add [hl]                                         ; $5af5: $86
	add d                                            ; $5af6: $82
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	jr c, jr_028_5b07                                ; $5af9: $38 $0c

	ret nz                                           ; $5afb: $c0

	cp h                                             ; $5afc: $bc
	di                                               ; $5afd: $f3
	cp $dc                                           ; $5afe: $fe $dc
	rst $38                                          ; $5b00: $ff
	sbc h                                            ; $5b01: $9c
	ld a, a                                          ; $5b02: $7f
	rrca                                             ; $5b03: $0f
	ld bc, $9bfb                                     ; $5b04: $01 $fb $9b

jr_028_5b07:
	add b                                            ; $5b07: $80
	ld [hl], b                                       ; $5b08: $70
	call z, $dbfb                                    ; $5b09: $cc $fb $db
	rst $38                                          ; $5b0c: $ff
	sbc h                                            ; $5b0d: $9c
	ccf                                              ; $5b0e: $3f
	rlca                                             ; $5b0f: $07
	add b                                            ; $5b10: $80
	ld [hl], a                                       ; $5b11: $77
	or [hl]                                          ; $5b12: $b6
	ld a, e                                          ; $5b13: $7b
	db $ed                                           ; $5b14: $ed
	inc bc                                           ; $5b15: $03
	ld b, b                                          ; $5b16: $40
	dec hl                                           ; $5b17: $2b
	ldh a, [$0a]                                     ; $5b18: $f0 $0a
	nop                                              ; $5b1a: $00
	rst SubAFromDE                                          ; $5b1b: $df
	inc sp                                           ; $5b1c: $33
	sbc h                                            ; $5b1d: $9c
	inc [hl]                                         ; $5b1e: $34
	ld d, l                                          ; $5b1f: $55
	ld d, e                                          ; $5b20: $53
	sbc $33                                          ; $5b21: $de $33
	ld a, [hl]                                       ; $5b23: $7e
	add b                                            ; $5b24: $80
	ld sp, hl                                        ; $5b25: $f9
	reti                                             ; $5b26: $d9


	rst $38                                          ; $5b27: $ff
	inc bc                                           ; $5b28: $03
	ldh a, [rWX]                                     ; $5b29: $f0 $4b
	ldh a, [$9e]                                     ; $5b2b: $f0 $9e
	inc bc                                           ; $5b2d: $03
	call c, $df07                                    ; $5b2e: $dc $07 $df
	inc bc                                           ; $5b31: $03
	sbc [hl]                                         ; $5b32: $9e
	cp $dc                                           ; $5b33: $fe $dc
	db $fd                                           ; $5b35: $fd
	sbc $ff                                          ; $5b36: $de $ff
	sub d                                            ; $5b38: $92
	rst AddAOntoHL                                          ; $5b39: $ef
	rst GetHLinHL                                          ; $5b3a: $cf
	rst JumpTable                                          ; $5b3b: $c7
	rst SubAFromBC                                          ; $5b3c: $e7
	ld h, e                                          ; $5b3d: $63
	ld hl, $b010                                     ; $5b3e: $21 $10 $b0
	ld a, b                                          ; $5b41: $78
	ld a, b                                          ; $5b42: $78
	ld a, h                                          ; $5b43: $7c
	cp h                                             ; $5b44: $bc
	cp $7b                                           ; $5b45: $fe $7b
	ret nc                                           ; $5b47: $d0

	sbc b                                            ; $5b48: $98
	add b                                            ; $5b49: $80
	ret nz                                           ; $5b4a: $c0

	ldh [$e0], a                                     ; $5b4b: $e0 $e0
	ldh a, [$f0]                                     ; $5b4d: $f0 $f0
	cp b                                             ; $5b4f: $b8
	ld a, [$c090]                                    ; $5b50: $fa $90 $c0
	db $f4                                           ; $5b53: $f4
	ld a, b                                          ; $5b54: $78
	nop                                              ; $5b55: $00
	ld a, h                                          ; $5b56: $7c
	jr c, jr_028_5b59                                ; $5b57: $38 $00

jr_028_5b59:
	jr z, jr_028_5b5b                                ; $5b59: $28 $00

jr_028_5b5b:
	jr c, jr_028_5b6d                                ; $5b5b: $38 $10

	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	jr c, jr_028_5b61                                ; $5b5f: $38 $00

jr_028_5b61:
	ld a, e                                          ; $5b61: $7b
	ei                                               ; $5b62: $fb
	db $fd                                           ; $5b63: $fd
	sbc h                                            ; $5b64: $9c
	ld bc, $0703                                     ; $5b65: $01 $03 $07
	ld h, a                                          ; $5b68: $67
	rst FarCall                                          ; $5b69: $f7
	sub d                                            ; $5b6a: $92
	rla                                              ; $5b6b: $17
	inc sp                                           ; $5b6c: $33

jr_028_5b6d:
	inc hl                                           ; $5b6d: $23
	ld h, c                                          ; $5b6e: $61
	pop bc                                           ; $5b6f: $c1
	add b                                            ; $5b70: $80
	nop                                              ; $5b71: $00
	add b                                            ; $5b72: $80
	ld e, $1e                                        ; $5b73: $1e $1e
	ld a, $3f                                        ; $5b75: $3e $3f
	ld a, a                                          ; $5b77: $7f
	sbc $ff                                          ; $5b78: $de $ff
	sbc l                                            ; $5b7a: $9d
	add e                                            ; $5b7b: $83
	add c                                            ; $5b7c: $81
	sbc $c0                                          ; $5b7d: $de $c0
	rst SubAFromDE                                          ; $5b7f: $df
	ldh [$9c], a                                     ; $5b80: $e0 $9c
	ld [hl], b                                       ; $5b82: $70
	cp $ff                                           ; $5b83: $fe $ff
	sbc $7f                                          ; $5b85: $de $7f
	rst SubAFromDE                                          ; $5b87: $df
	cp a                                             ; $5b88: $bf
	sub c                                            ; $5b89: $91
	rst SubAFromDE                                          ; $5b8a: $df
	ld hl, sp-$08                                    ; $5b8b: $f8 $f8
	db $fc                                           ; $5b8d: $fc
	ld a, h                                          ; $5b8e: $7c
	ld e, $0f                                        ; $5b8f: $1e $0f
	inc bc                                           ; $5b91: $03
	ld bc, $4f4f                                     ; $5b92: $01 $4f $4f
	and a                                            ; $5b95: $a7
	rst FarCall                                          ; $5b96: $f7
	ei                                               ; $5b97: $fb
	ld a, e                                          ; $5b98: $7b
	sub b                                            ; $5b99: $90
	ld a, [$809e]                                    ; $5b9a: $fa $9e $80
	inc bc                                           ; $5b9d: $03
	ld d, b                                          ; $5b9e: $50
	dec hl                                           ; $5b9f: $2b
	ldh a, [$0b]                                     ; $5ba0: $f0 $0b
	nop                                              ; $5ba2: $00
	rst SubAFromDE                                          ; $5ba3: $df
	inc sp                                           ; $5ba4: $33
	sbc c                                            ; $5ba5: $99
	ld [hl], h                                       ; $5ba6: $74
	ld d, l                                          ; $5ba7: $55
	ld d, a                                          ; $5ba8: $57
	ld [hl], a                                       ; $5ba9: $77
	inc sp                                           ; $5baa: $33
	inc sp                                           ; $5bab: $33
	adc [hl]                                         ; $5bac: $8e
	add b                                            ; $5bad: $80
	ld sp, hl                                        ; $5bae: $f9
	reti                                             ; $5baf: $d9


	rst $38                                          ; $5bb0: $ff
	inc bc                                           ; $5bb1: $03
	ldh a, [rWX]                                     ; $5bb2: $f0 $4b
	ldh a, [$df]                                     ; $5bb4: $f0 $df
	rrca                                             ; $5bb6: $0f
	sub l                                            ; $5bb7: $95
	rlca                                             ; $5bb8: $07
	inc bc                                           ; $5bb9: $03
	ld bc, $0100                                     ; $5bba: $01 $00 $01
	inc bc                                           ; $5bbd: $03
	ld a, [$fdf9]                                    ; $5bbe: $fa $f9 $fd
	cp $de                                           ; $5bc1: $fe $de
	rst $38                                          ; $5bc3: $ff
	add b                                            ; $5bc4: $80
	cp $bb                                           ; $5bc5: $fe $bb
	cp a                                             ; $5bc7: $bf
	ld a, d                                          ; $5bc8: $7a
	ld e, e                                          ; $5bc9: $5b
	ld e, l                                          ; $5bca: $5d
	cp $6f                                           ; $5bcb: $fe $6f
	cp [hl]                                          ; $5bcd: $be
	rst $38                                          ; $5bce: $ff
	set 0, e                                         ; $5bcf: $cb $c3
	ldh [c], a                                       ; $5bd1: $e2
	pop hl                                           ; $5bd2: $e1
	ldh [$f0], a                                     ; $5bd3: $e0 $f0
	ldh a, [$c8]                                     ; $5bd5: $f0 $c8
	ld hl, sp-$18                                    ; $5bd7: $f8 $e8
	ld c, b                                          ; $5bd9: $48
	sub c                                            ; $5bda: $91
	rst SubAFromBC                                          ; $5bdb: $e7
	rra                                              ; $5bdc: $1f
	ld bc, $f8cc                                     ; $5bdd: $01 $cc $f8
	ld hl, sp+$38                                    ; $5be0: $f8 $38
	ld [hl], b                                       ; $5be2: $70
	ldh [$fc], a                                     ; $5be3: $e0 $fc
	sbc d                                            ; $5be5: $9a
	ld a, h                                          ; $5be6: $7c
	rst JumpTable                                          ; $5be7: $c7
	ld bc, $d8e8                                     ; $5be8: $01 $e8 $d8
	db $fd                                           ; $5beb: $fd
	add b                                            ; $5bec: $80

jr_028_5bed:
	jr c, jr_028_5bed                                ; $5bed: $38 $fe

	db $10                                           ; $5bef: $10
	jr nc, jr_028_5c6e                               ; $5bf0: $30 $7c

	cpl                                              ; $5bf2: $2f
	ld l, $34                                        ; $5bf3: $2e $34
	add hl, de                                       ; $5bf5: $19
	sbc a                                            ; $5bf6: $9f
	ldh [rP1], a                                     ; $5bf7: $e0 $00
	inc a                                            ; $5bf9: $3c
	ccf                                              ; $5bfa: $3f
	ccf                                              ; $5bfb: $3f
	inc hl                                           ; $5bfc: $23
	rla                                              ; $5bfd: $17
	ld c, $00                                        ; $5bfe: $0e $00
	nop                                              ; $5c00: $00
	or e                                             ; $5c01: $b3
	and c                                            ; $5c02: $a1
	add e                                            ; $5c03: $83
	add [hl]                                         ; $5c04: $86
	rrca                                             ; $5c05: $0f
	inc c                                            ; $5c06: $0c
	rla                                              ; $5c07: $17
	ld e, $f9                                        ; $5c08: $1e $f9
	and e                                            ; $5c0a: $a3
	add e                                            ; $5c0b: $83
	add a                                            ; $5c0c: $87
	add e                                            ; $5c0d: $83
	inc b                                            ; $5c0e: $04
	rlca                                             ; $5c0f: $07
	rrca                                             ; $5c10: $0f
	rrca                                             ; $5c11: $0f
	rst AddAOntoHL                                          ; $5c12: $ef
	rst AddAOntoHL                                          ; $5c13: $ef
	rst SubAFromDE                                          ; $5c14: $df
	cp a                                             ; $5c15: $bf
	ld l, a                                          ; $5c16: $6f
	rst JumpTable                                          ; $5c17: $c7
	add a                                            ; $5c18: $87
	add e                                            ; $5c19: $83
	ld a, [hl+]                                      ; $5c1a: $2a
	xor d                                            ; $5c1b: $aa
	ld c, c                                          ; $5c1c: $49
	sbc c                                            ; $5c1d: $99
	add hl, sp                                       ; $5c1e: $39
	db $fd                                           ; $5c1f: $fd
	db $fc                                           ; $5c20: $fc
	cp $ff                                           ; $5c21: $fe $ff
	di                                               ; $5c23: $f3
	pop af                                           ; $5c24: $f1
	db $dd                                           ; $5c25: $dd
	ldh a, [$9c]                                     ; $5c26: $f0 $9c
	ld hl, sp+$5d                                    ; $5c28: $f8 $5d
	ld e, a                                          ; $5c2a: $5f
	sbc $3f                                          ; $5c2b: $de $3f
	sub a                                            ; $5c2d: $97
	rra                                              ; $5c2e: $1f
	sbc a                                            ; $5c2f: $9f
	adc a                                            ; $5c30: $8f
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	add b                                            ; $5c33: $80
	ret nz                                           ; $5c34: $c0

	jr nc, @+$05                                     ; $5c35: $30 $03

	ld d, b                                          ; $5c37: $50
	rra                                              ; $5c38: $1f
	ldh a, [$0b]                                     ; $5c39: $f0 $0b
	nop                                              ; $5c3b: $00
	rst SubAFromDE                                          ; $5c3c: $df
	inc sp                                           ; $5c3d: $33
	sbc c                                            ; $5c3e: $99
	ld [hl], l                                       ; $5c3f: $75
	ld d, l                                          ; $5c40: $55
	ld d, l                                          ; $5c41: $55
	ld [hl], a                                       ; $5c42: $77
	inc sp                                           ; $5c43: $33
	inc sp                                           ; $5c44: $33
	sub b                                            ; $5c45: $90
	add b                                            ; $5c46: $80
	ld sp, hl                                        ; $5c47: $f9
	reti                                             ; $5c48: $d9


	rst $38                                          ; $5c49: $ff
	rlca                                             ; $5c4a: $07
	ldh a, [$9a]                                     ; $5c4b: $f0 $9a
	ld bc, $0303                                     ; $5c4d: $01 $03 $03
	ld b, $04                                        ; $5c50: $06 $04
	ld [hl], a                                       ; $5c52: $77
	ldh a, [$9e]                                     ; $5c53: $f0 $9e
	cp $d9                                           ; $5c55: $fe $d9
	rst $38                                          ; $5c57: $ff
	sbc l                                            ; $5c58: $9d
	ccf                                              ; $5c59: $3f
	rra                                              ; $5c5a: $1f
	db $dd                                           ; $5c5b: $dd
	rrca                                             ; $5c5c: $0f
	add b                                            ; $5c5d: $80
	add hl, hl                                       ; $5c5e: $29
	push hl                                          ; $5c5f: $e5
	push hl                                          ; $5c60: $e5
	rst FarCall                                          ; $5c61: $f7
	db $fd                                           ; $5c62: $fd
	ld sp, hl                                        ; $5c63: $f9
	ei                                               ; $5c64: $fb
	ld a, [$b95f]                                    ; $5c65: $fa $5f $b9
	rst SubAFromHL                                          ; $5c68: $d7
	db $ed                                           ; $5c69: $ed
	ld e, [hl]                                       ; $5c6a: $5e
	ld a, e                                          ; $5c6b: $7b
	ld [hl], a                                       ; $5c6c: $77
	rst AddAOntoHL                                          ; $5c6d: $ef

jr_028_5c6e:
	ldh a, [rPCM34]                                  ; $5c6e: $f0 $77
	ccf                                              ; $5c70: $3f
	ld e, $b1                                        ; $5c71: $1e $b1
	and a                                            ; $5c73: $a7
	adc a                                            ; $5c74: $8f
	sbc a                                            ; $5c75: $9f
	db $f4                                           ; $5c76: $f4
	xor $23                                          ; $5c77: $ee $23
	rst $38                                          ; $5c79: $ff
	rst AddAOntoHL                                          ; $5c7a: $ef
	ei                                               ; $5c7b: $fb
	dec e                                            ; $5c7c: $1d
	sub d                                            ; $5c7d: $92
	adc [hl]                                         ; $5c7e: $8e
	inc e                                            ; $5c7f: $1c
	cp $df                                           ; $5c80: $fe $df
	nop                                              ; $5c82: $00
	ldh a, [$fc]                                     ; $5c83: $f0 $fc
	ld e, $8c                                        ; $5c85: $1e $8c
	ld b, $05                                        ; $5c87: $06 $05
	ld a, [bc]                                       ; $5c89: $0a
	inc e                                            ; $5c8a: $1c
	sbc $01                                          ; $5c8b: $de $01
	sbc e                                            ; $5c8d: $9b
	nop                                              ; $5c8e: $00
	ld bc, $0603                                     ; $5c8f: $01 $03 $06
	db $fc                                           ; $5c92: $fc
	add b                                            ; $5c93: $80
	cp [hl]                                          ; $5c94: $be
	ld a, a                                          ; $5c95: $7f
	add [hl]                                         ; $5c96: $86
	ccf                                              ; $5c97: $3f
	sbc $bf                                          ; $5c98: $de $bf
	ld [hl], c                                       ; $5c9a: $71
	ld hl, sp-$64                                    ; $5c9b: $f8 $9c
	ccf                                              ; $5c9d: $3f
	ld a, c                                          ; $5c9e: $79
	ret nz                                           ; $5c9f: $c0

	ccf                                              ; $5ca0: $3f
	ld a, a                                          ; $5ca1: $7f
	pop af                                           ; $5ca2: $f1
	ld a, b                                          ; $5ca3: $78
	rra                                              ; $5ca4: $1f
	db $db                                           ; $5ca5: $db
	pop hl                                           ; $5ca6: $e1
	or c                                             ; $5ca7: $b1
	di                                               ; $5ca8: $f3
	and c                                            ; $5ca9: $a1
	pop de                                           ; $5caa: $d1
	ldh a, [c]                                       ; $5cab: $f2
	add hl, de                                       ; $5cac: $19
	ld de, $61c1                                     ; $5cad: $11 $c1 $61
	ld [de], a                                       ; $5cb0: $12
	ret nz                                           ; $5cb1: $c0

	ldh [$9e], a                                     ; $5cb2: $e0 $9e
	pop hl                                           ; $5cb4: $e1
	db $db                                           ; $5cb5: $db
	rst $38                                          ; $5cb6: $ff
	sub e                                            ; $5cb7: $93
	rst SubAFromDE                                          ; $5cb8: $df
	rst AddAOntoHL                                          ; $5cb9: $ef
	ld b, e                                          ; $5cba: $43
	ld b, a                                          ; $5cbb: $47
	ld b, [hl]                                       ; $5cbc: $46
	adc $fe                                          ; $5cbd: $ce $fe
	sbc $8e                                          ; $5cbf: $de $8e
	jp z, $fefe                                      ; $5cc1: $ca $fe $fe

	sbc $fc                                          ; $5cc4: $de $fc
	sbc $fe                                          ; $5cc6: $de $fe
	rst SubAFromDE                                          ; $5cc8: $df
	inc hl                                           ; $5cc9: $23
	rst SubAFromDE                                          ; $5cca: $df
	daa                                              ; $5ccb: $27
	sbc e                                            ; $5ccc: $9b
	ld b, a                                          ; $5ccd: $47
	ld c, e                                          ; $5cce: $4b
	ld c, e                                          ; $5ccf: $4b
	ld e, e                                          ; $5cd0: $5b
	inc bc                                           ; $5cd1: $03
	ld b, b                                          ; $5cd2: $40
	dec bc                                           ; $5cd3: $0b
	ldh a, [$0b]                                     ; $5cd4: $f0 $0b
	nop                                              ; $5cd6: $00
	sub a                                            ; $5cd7: $97
	inc sp                                           ; $5cd8: $33
	scf                                              ; $5cd9: $37
	ld [hl], l                                       ; $5cda: $75
	ld d, l                                          ; $5cdb: $55
	ld d, l                                          ; $5cdc: $55
	ld [hl], a                                       ; $5cdd: $77
	inc sp                                           ; $5cde: $33
	inc sp                                           ; $5cdf: $33
	and h                                            ; $5ce0: $a4
	add b                                            ; $5ce1: $80
	rst SubAFromDE                                          ; $5ce2: $df
	ld [bc], a                                       ; $5ce3: $02
	ei                                               ; $5ce4: $fb
	reti                                             ; $5ce5: $d9


	rst $38                                          ; $5ce6: $ff
	ld sp, hl                                        ; $5ce7: $f9
	reti                                             ; $5ce8: $d9


	rst $38                                          ; $5ce9: $ff
	sbc [hl]                                         ; $5cea: $9e
	jr nz, @+$4d                                     ; $5ceb: $20 $4b

	ldh a, [$9e]                                     ; $5ced: $f0 $9e
	rra                                              ; $5cef: $1f
	db $dd                                           ; $5cf0: $dd
	ld bc, $f05b                                     ; $5cf1: $01 $5b $f0
	add b                                            ; $5cf4: $80
	db $eb                                           ; $5cf5: $eb
	ld c, e                                          ; $5cf6: $4b
	ld c, a                                          ; $5cf7: $4f
	ld c, h                                          ; $5cf8: $4c
	ld e, e                                          ; $5cf9: $5b
	or $ec                                           ; $5cfa: $f6 $ec
	sbc b                                            ; $5cfc: $98
	rst $38                                          ; $5cfd: $ff
	cp $fc                                           ; $5cfe: $fe $fc
	ei                                               ; $5d00: $fb
	rst FarCall                                          ; $5d01: $f7
	rst AddAOntoHL                                          ; $5d02: $ef
	rst SubAFromDE                                          ; $5d03: $df
	rst $38                                          ; $5d04: $ff
	db $e3                                           ; $5d05: $e3
	sbc a                                            ; $5d06: $9f
	ld a, e                                          ; $5d07: $7b
	rst FarCall                                          ; $5d08: $f7
	ld l, d                                          ; $5d09: $6a
	ld a, [hl]                                       ; $5d0a: $7e
	rst SubAFromHL                                          ; $5d0b: $d7
	rst SubAFromDE                                          ; $5d0c: $df
	rra                                              ; $5d0d: $1f
	ld a, [hl]                                       ; $5d0e: $7e
	and $ce                                          ; $5d0f: $e6 $ce
	rst SubAFromDE                                          ; $5d11: $df
	db $db                                           ; $5d12: $db
	ld sp, hl                                        ; $5d13: $f9
	adc e                                            ; $5d14: $8b
	pop af                                           ; $5d15: $f1
	ld sp, hl                                        ; $5d16: $f9
	rst FarCall                                          ; $5d17: $f7
	or d                                             ; $5d18: $b2
	ld [hl], d                                       ; $5d19: $72
	or [hl]                                          ; $5d1a: $b6
	db $ec                                           ; $5d1b: $ec
	ld l, h                                          ; $5d1c: $6c
	db $f4                                           ; $5d1d: $f4
	sub e                                            ; $5d1e: $93
	ld [hl-], a                                      ; $5d1f: $32
	ld h, [hl]                                       ; $5d20: $66
	and $e4                                          ; $5d21: $e6 $e4
	or h                                             ; $5d23: $b4
	or h                                             ; $5d24: $b4
	inc e                                            ; $5d25: $1c
	ld c, e                                          ; $5d26: $4b
	dec c                                            ; $5d27: $0d
	ld b, $dc                                        ; $5d28: $06 $dc
	ld [bc], a                                       ; $5d2a: $02
	sbc l                                            ; $5d2b: $9d
	or a                                             ; $5d2c: $b7
	inc bc                                           ; $5d2d: $03
	db $db                                           ; $5d2e: $db
	ld bc, $6b9c                                     ; $5d2f: $01 $9c $6b
	or l                                             ; $5d32: $b5
	or d                                             ; $5d33: $b2
	sbc $ba                                          ; $5d34: $de $ba
	add b                                            ; $5d36: $80
	set 2, e                                         ; $5d37: $cb $d3
	cp h                                             ; $5d39: $bc
	sbc $df                                          ; $5d3a: $de $df
	rst SubAFromHL                                          ; $5d3c: $d7
	rst SubAFromHL                                          ; $5d3d: $d7
	rst SubAFromBC                                          ; $5d3e: $e7
	rst SubAFromBC                                          ; $5d3f: $e7
	adc $da                                          ; $5d40: $ce $da
	db $fc                                           ; $5d42: $fc
	xor $ff                                          ; $5d43: $ee $ff
	rst FarCall                                          ; $5d45: $f7
	or [hl]                                          ; $5d46: $b6
	sub l                                            ; $5d47: $95
	rla                                              ; $5d48: $17
	rst AddAOntoHL                                          ; $5d49: $ef
	ld h, a                                          ; $5d4a: $67
	ld [hl], a                                       ; $5d4b: $77
	ld d, e                                          ; $5d4c: $53
	sbc e                                            ; $5d4d: $9b
	sbc e                                            ; $5d4e: $9b
	rra                                              ; $5d4f: $1f
	dec e                                            ; $5d50: $1d
	add $56                                          ; $5d51: $c6 $56
	sbc h                                            ; $5d53: $9c
	sbc h                                            ; $5d54: $9c
	dec l                                            ; $5d55: $2d
	sbc d                                            ; $5d56: $9a
	cp c                                             ; $5d57: $b9
	ld e, c                                          ; $5d58: $59
	db $d3                                           ; $5d59: $d3
	ld a, c                                          ; $5d5a: $79
	ld sp, hl                                        ; $5d5b: $f9
	sbc $f3                                          ; $5d5c: $de $f3
	rst SubAFromDE                                          ; $5d5e: $df
	rst SubAFromBC                                          ; $5d5f: $e7
	sbc h                                            ; $5d60: $9c
	ld l, a                                          ; $5d61: $6f
	rst $38                                          ; $5d62: $ff
	rst $38                                          ; $5d63: $ff
	db $db                                           ; $5d64: $db
	cp $df                                           ; $5d65: $fe $df
	and c                                            ; $5d67: $a1
	db $dd                                           ; $5d68: $dd
	and e                                            ; $5d69: $a3
	rst SubAFromDE                                          ; $5d6a: $df
	inc hl                                           ; $5d6b: $23
	sbc l                                            ; $5d6c: $9d
	inc c                                            ; $5d6d: $0c
	inc b                                            ; $5d6e: $04
	rrca                                             ; $5d6f: $0f
	ld b, b                                          ; $5d70: $40
	sbc b                                            ; $5d71: $98
	ld b, $0e                                        ; $5d72: $06 $0e
	dec c                                            ; $5d74: $0d
	add hl, bc                                       ; $5d75: $09
	inc bc                                           ; $5d76: $03
	rlca                                             ; $5d77: $07
	ld b, $63                                        ; $5d78: $06 $63
	ldh a, [$9b]                                     ; $5d7a: $f0 $9b
	ret nz                                           ; $5d7c: $c0

	ldh [$f0], a                                     ; $5d7d: $e0 $f0
	jr nc, jr_028_5df8                               ; $5d7f: $30 $77

	inc l                                            ; $5d81: $2c
	reti                                             ; $5d82: $d9


	rst $38                                          ; $5d83: $ff
	ld a, [bc]                                       ; $5d84: $0a
	nop                                              ; $5d85: $00
	rst SubAFromDE                                          ; $5d86: $df
	inc sp                                           ; $5d87: $33
	sbc $55                                          ; $5d88: $de $55
	sbc h                                            ; $5d8a: $9c
	ld d, a                                          ; $5d8b: $57
	inc sp                                           ; $5d8c: $33
	inc sp                                           ; $5d8d: $33
	db $fd                                           ; $5d8e: $fd
	add b                                            ; $5d8f: $80
	sub d                                            ; $5d90: $92
	ld a, a                                          ; $5d91: $7f
	ld l, a                                          ; $5d92: $6f
	xor $dd                                          ; $5d93: $ee $dd
	cp e                                             ; $5d95: $bb
	dec sp                                           ; $5d96: $3b
	inc de                                           ; $5d97: $13
	inc bc                                           ; $5d98: $03
	db $fc                                           ; $5d99: $fc
	sub b                                            ; $5d9a: $90
	ld de, $7f33                                     ; $5d9b: $11 $33 $7f
	sbc $ff                                          ; $5d9e: $de $ff
	ld a, a                                          ; $5da0: $7f
	db $fc                                           ; $5da1: $fc
	sub h                                            ; $5da2: $94
	db $fd                                           ; $5da3: $fd
	ei                                               ; $5da4: $fb
	or a                                             ; $5da5: $b7
	add a                                            ; $5da6: $87
	ld b, $00                                        ; $5da7: $06 $00
	ld sp, hl                                        ; $5da9: $f9
	pop hl                                           ; $5daa: $e1
	jp $efc7                                         ; $5dab: $c3 $c7 $ef


	sbc $ff                                          ; $5dae: $de $ff
	sub d                                            ; $5db0: $92
	db $fc                                           ; $5db1: $fc
	ld a, h                                          ; $5db2: $7c
	ld hl, sp-$10                                    ; $5db3: $f8 $f0
	db $fc                                           ; $5db5: $fc
	inc a                                            ; $5db6: $3c
	ld [hl], $30                                     ; $5db7: $36 $30
	add a                                            ; $5db9: $87
	adc a                                            ; $5dba: $8f
	daa                                              ; $5dbb: $27
	ccf                                              ; $5dbc: $3f
	sbc a                                            ; $5dbd: $9f
	sbc $ff                                          ; $5dbe: $de $ff
	sub a                                            ; $5dc0: $97
	rst JumpTable                                          ; $5dc1: $c7
	rst GetHLinHL                                          ; $5dc2: $cf
	adc a                                            ; $5dc3: $8f
	dec c                                            ; $5dc4: $0d
	add hl, bc                                       ; $5dc5: $09
	ld bc, $0f07                                     ; $5dc6: $01 $07 $0f
	db $db                                           ; $5dc9: $db
	rst $38                                          ; $5dca: $ff
	add b                                            ; $5dcb: $80
	cp $f8                                           ; $5dcc: $fe $f8
	or d                                             ; $5dce: $b2
	ld [hl], $4b                                     ; $5dcf: $36 $4b
	ld e, h                                          ; $5dd1: $5c
	ld l, c                                          ; $5dd2: $69
	cp b                                             ; $5dd3: $b8
	rst AddAOntoHL                                          ; $5dd4: $ef
	ld a, [$e9ed]                                    ; $5dd5: $fa $ed $e9
	rst $38                                          ; $5dd8: $ff
	cp $f0                                           ; $5dd9: $fe $f0

jr_028_5ddb:
	rst JumpTable                                          ; $5ddb: $c7
	rra                                              ; $5ddc: $1f
	rst $38                                          ; $5ddd: $ff
	or a                                             ; $5dde: $b7
	ret nc                                           ; $5ddf: $d0

	ld b, b                                          ; $5de0: $40
	jr nz, jr_028_5de3                               ; $5de1: $20 $00

jr_028_5de3:
	rra                                              ; $5de3: $1f
	or $b8                                           ; $5de4: $f6 $b8
	ld hl, sp-$20                                    ; $5de6: $f8 $e0
	add b                                            ; $5de8: $80
	rra                                              ; $5de9: $1f
	rst $38                                          ; $5dea: $ff
	add c                                            ; $5deb: $81
	rst $38                                          ; $5dec: $ff
	ld sp, hl                                        ; $5ded: $f9
	rst JumpTable                                          ; $5dee: $c7
	add sp, $7c                                      ; $5def: $e8 $7c
	rra                                              ; $5df1: $1f
	rst $38                                          ; $5df2: $ff
	nop                                              ; $5df3: $00
	rst $38                                          ; $5df4: $ff
	rrca                                             ; $5df5: $0f
	ld a, a                                          ; $5df6: $7f
	rst $38                                          ; $5df7: $ff

jr_028_5df8:
	rra                                              ; $5df8: $1f
	inc bc                                           ; $5df9: $03
	nop                                              ; $5dfa: $00
	rst $38                                          ; $5dfb: $ff
	cp $fc                                           ; $5dfc: $fe $fc
	ld sp, hl                                        ; $5dfe: $f9
	and [hl]                                         ; $5dff: $a6
	xor d                                            ; $5e00: $aa
	inc l                                            ; $5e01: $2c
	and a                                            ; $5e02: $a7
	ld h, h                                          ; $5e03: $64
	cpl                                              ; $5e04: $2f
	db $ed                                           ; $5e05: $ed
	sub [hl]                                         ; $5e06: $96
	ld [hl], e                                       ; $5e07: $73
	ld [hl], a                                       ; $5e08: $77
	rst FarCall                                          ; $5e09: $f7
	ld [hl], a                                       ; $5e0a: $77
	ret nz                                           ; $5e0b: $c0

	add b                                            ; $5e0c: $80
	rst $38                                          ; $5e0d: $ff
	ld c, a                                          ; $5e0e: $4f
	inc a                                            ; $5e0f: $3c
	rst JumpTable                                          ; $5e10: $c7
	ld bc, $f93f                                     ; $5e11: $01 $3f $f9
	rst GetHLinHL                                          ; $5e14: $cf
	rst FarCall                                          ; $5e15: $f7
	cp h                                             ; $5e16: $bc
	ldh a, [$f8]                                     ; $5e17: $f0 $f8
	cp $ff                                           ; $5e19: $fe $ff
	rst $38                                          ; $5e1b: $ff
	rst FarCall                                          ; $5e1c: $f7
	ld a, c                                          ; $5e1d: $79
	call $1c7c                                       ; $5e1e: $cd $7c $1c
	rst JumpTable                                          ; $5e21: $c7
	db $fd                                           ; $5e22: $fd
	dec c                                            ; $5e23: $0d
	ld h, l                                          ; $5e24: $65
	or [hl]                                          ; $5e25: $b6
	ldh a, [c]                                       ; $5e26: $f2
	inc sp                                           ; $5e27: $33
	rrca                                             ; $5e28: $0f
	inc bc                                           ; $5e29: $03
	rst $38                                          ; $5e2a: $ff
	di                                               ; $5e2b: $f3
	sub l                                            ; $5e2c: $95
	ei                                               ; $5e2d: $fb
	db $db                                           ; $5e2e: $db
	sub e                                            ; $5e2f: $93
	ldh a, [c]                                       ; $5e30: $f2
	ret nc                                           ; $5e31: $d0

	pop hl                                           ; $5e32: $e1
	ld h, c                                          ; $5e33: $61
	db $eb                                           ; $5e34: $eb
	db $eb                                           ; $5e35: $eb
	rst GetHLinHL                                          ; $5e36: $cf
	sbc $29                                          ; $5e37: $de $29
	rst SubAFromDE                                          ; $5e39: $df
	cp b                                             ; $5e3a: $b8
	rst SubAFromDE                                          ; $5e3b: $df
	jr c, jr_028_5ddb                                ; $5e3c: $38 $9d

	ld a, b                                          ; $5e3e: $78
	ld d, l                                          ; $5e3f: $55
	sbc $a5                                          ; $5e40: $de $a5
	sbc $ad                                          ; $5e42: $de $ad
	sbc l                                            ; $5e44: $9d
	db $ed                                           ; $5e45: $ed
	db $e3                                           ; $5e46: $e3
	db $db                                           ; $5e47: $db
	di                                               ; $5e48: $f3
	adc a                                            ; $5e49: $8f
	or e                                             ; $5e4a: $b3
	ld a, a                                          ; $5e4b: $7f
	rst $38                                          ; $5e4c: $ff
	db $dd                                           ; $5e4d: $dd
	db $dd                                           ; $5e4e: $dd
	cp c                                             ; $5e4f: $b9
	call nc, $8ccc                                   ; $5e50: $d4 $cc $8c
	rst AddAOntoHL                                          ; $5e53: $ef
	scf                                              ; $5e54: $37
	ld h, $22                                        ; $5e55: $26 $22
	ld b, [hl]                                       ; $5e57: $46
	cpl                                              ; $5e58: $2f
	ccf                                              ; $5e59: $3f
	ld a, e                                          ; $5e5a: $7b
	dec a                                            ; $5e5b: $3d
	adc a                                            ; $5e5c: $8f
	xor $85                                          ; $5e5d: $ee $85
	adc a                                            ; $5e5f: $8f
	sbc a                                            ; $5e60: $9f
	rrca                                             ; $5e61: $0f
	ld b, $63                                        ; $5e62: $06 $63
	rst SubAFromBC                                          ; $5e64: $e7
	ld [hl], a                                       ; $5e65: $77
	ld a, a                                          ; $5e66: $7f
	ld [hl], b                                       ; $5e67: $70
	ld h, b                                          ; $5e68: $60
	ldh a, [$f9]                                     ; $5e69: $f0 $f9
	rst $38                                          ; $5e6b: $ff
	dec h                                            ; $5e6c: $25
	ld a, e                                          ; $5e6d: $7b
	inc a                                            ; $5e6e: $3c
	add h                                            ; $5e6f: $84
	xor a                                            ; $5e70: $af
	rlca                                             ; $5e71: $07
	dec b                                            ; $5e72: $05
	sbc $ff                                          ; $5e73: $de $ff
	rst SubAFromBC                                          ; $5e75: $e7
	add e                                            ; $5e76: $83
	rlca                                             ; $5e77: $07
	ld e, [hl]                                       ; $5e78: $5e
	cp $fe                                           ; $5e79: $fe $fe
	rst AddAOntoHL                                          ; $5e7b: $ef
	rst $38                                          ; $5e7c: $ff
	ld sp, hl                                        ; $5e7d: $f9
	ld e, $bf                                        ; $5e7e: $1e $bf
	ld sp, hl                                        ; $5e80: $f9
	ld hl, sp-$20                                    ; $5e81: $f8 $e0
	inc de                                           ; $5e83: $13
	sbc a                                            ; $5e84: $9f
	rst AddAOntoHL                                          ; $5e85: $ef
	rst SubAFromBC                                          ; $5e86: $e7
	ld c, l                                          ; $5e87: $4d
	ld h, [hl]                                       ; $5e88: $66
	daa                                              ; $5e89: $27
	ld a, a                                          ; $5e8a: $7f
	add hl, bc                                       ; $5e8b: $09
	nop                                              ; $5e8c: $00
	sbc l                                            ; $5e8d: $9d
	ld [hl+], a                                      ; $5e8e: $22
	daa                                              ; $5e8f: $27
	db $dd                                           ; $5e90: $dd
	ld d, l                                          ; $5e91: $55
	rst SubAFromDE                                          ; $5e92: $df
	ld [hl+], a                                      ; $5e93: $22
	ei                                               ; $5e94: $fb
	add b                                            ; $5e95: $80
	sbc l                                            ; $5e96: $9d
	rst $38                                          ; $5e97: $ff
	cp $db                                           ; $5e98: $fe $db
	rst $38                                          ; $5e9a: $ff
	sub l                                            ; $5e9b: $95
	inc de                                           ; $5e9c: $13
	inc sp                                           ; $5e9d: $33
	and e                                            ; $5e9e: $a3
	dec d                                            ; $5e9f: $15
	inc l                                            ; $5ea0: $2c
	jr z, jr_028_5eac                                ; $5ea1: $28 $09

	cp a                                             ; $5ea3: $bf
	rst $38                                          ; $5ea4: $ff
	ccf                                              ; $5ea5: $3f
	db $dd                                           ; $5ea6: $dd
	rst $38                                          ; $5ea7: $ff
	ld a, a                                          ; $5ea8: $7f
	ld sp, hl                                        ; $5ea9: $f9
	rst SubAFromDE                                          ; $5eaa: $df
	db $fc                                           ; $5eab: $fc

jr_028_5eac:
	sub [hl]                                         ; $5eac: $96
	or b                                             ; $5ead: $b0
	ld bc, $77a3                                     ; $5eae: $01 $a3 $77
	db $fd                                           ; $5eb1: $fd
	ld hl, sp-$02                                    ; $5eb2: $f8 $fe
	rst $38                                          ; $5eb4: $ff
	pop af                                           ; $5eb5: $f1
	sbc $ff                                          ; $5eb6: $de $ff
	sub h                                            ; $5eb8: $94
	ei                                               ; $5eb9: $fb
	pop af                                           ; $5eba: $f1
	ld h, e                                          ; $5ebb: $63
	nop                                              ; $5ebc: $00
	adc [hl]                                         ; $5ebd: $8e
	ld [hl], c                                       ; $5ebe: $71
	jr z, jr_028_5f01                                ; $5ebf: $28 $40

	cp $ce                                           ; $5ec1: $fe $ce
	ld a, a                                          ; $5ec3: $7f
	db $db                                           ; $5ec4: $db
	rst $38                                          ; $5ec5: $ff
	adc c                                            ; $5ec6: $89
	rst JumpTable                                          ; $5ec7: $c7
	db $f4                                           ; $5ec8: $f4
	db $f4                                           ; $5ec9: $f4
	ld h, $c7                                        ; $5eca: $26 $c7
	ld h, e                                          ; $5ecc: $63
	daa                                              ; $5ecd: $27
	rra                                              ; $5ece: $1f
	ccf                                              ; $5ecf: $3f
	ldh a, [$e1]                                     ; $5ed0: $f0 $e1
	push hl                                          ; $5ed2: $e5
	call $dbc3                                       ; $5ed3: $cd $c3 $db
	sbc e                                            ; $5ed6: $9b
	xor a                                            ; $5ed7: $af
	rst $38                                          ; $5ed8: $ff
	cp $fa                                           ; $5ed9: $fe $fa
	ld a, [$defc]                                    ; $5edb: $fa $fc $de
	db $f4                                           ; $5ede: $f4
	sub d                                            ; $5edf: $92
	ldh a, [c]                                       ; $5ee0: $f2
	call nc, $a9e5                                   ; $5ee1: $d4 $e5 $a9
	ret                                              ; $5ee4: $c9


	ld d, b                                          ; $5ee5: $50
	sub b                                            ; $5ee6: $90
	sbc a                                            ; $5ee7: $9f
	rra                                              ; $5ee8: $1f
	ccf                                              ; $5ee9: $3f
	ld a, $7e                                        ; $5eea: $3e $7e
	ld a, [hl]                                       ; $5eec: $7e
	sbc $ff                                          ; $5eed: $de $ff
	add b                                            ; $5eef: $80
	db $e3                                           ; $5ef0: $e3
	db $fd                                           ; $5ef1: $fd
	sbc $5e                                          ; $5ef2: $de $5e
	ld h, d                                          ; $5ef4: $62
	ld a, [hl]                                       ; $5ef5: $7e
	ld a, h                                          ; $5ef6: $7c
	inc l                                            ; $5ef7: $2c
	ld e, $16                                        ; $5ef8: $1e $16
	dec [hl]                                         ; $5efa: $35
	or l                                             ; $5efb: $b5
	cp l                                             ; $5efc: $bd
	xor c                                            ; $5efd: $a9
	xor e                                            ; $5efe: $ab
	ei                                               ; $5eff: $fb
	ld [hl], c                                       ; $5f00: $71

jr_028_5f01:
	ld h, e                                          ; $5f01: $63
	ld h, e                                          ; $5f02: $63
	or $fe                                           ; $5f03: $f6 $fe
	adc $c6                                          ; $5f05: $ce $c6
	or d                                             ; $5f07: $b2
	adc b                                            ; $5f08: $88
	sbc b                                            ; $5f09: $98
	ld hl, sp+$59                                    ; $5f0a: $f8 $59
	ld c, c                                          ; $5f0c: $49
	ld h, l                                          ; $5f0d: $65
	ld h, e                                          ; $5f0e: $63
	sub [hl]                                         ; $5f0f: $96
	ld h, e                                          ; $5f10: $63
	ld [hl], $26                                     ; $5f11: $36 $26
	ld l, $28                                        ; $5f13: $2e $28
	cp c                                             ; $5f15: $b9
	add hl, sp                                       ; $5f16: $39
	dec d                                            ; $5f17: $15
	ld d, a                                          ; $5f18: $57
	sbc $1b                                          ; $5f19: $de $1b
	sub c                                            ; $5f1b: $91
	rra                                              ; $5f1c: $1f
	rrca                                             ; $5f1d: $0f

Call_028_5f1e:
	adc a                                            ; $5f1e: $8f
	xor a                                            ; $5f1f: $af
	xor a                                            ; $5f20: $af
	inc h                                            ; $5f21: $24
	ld de, $1011                                     ; $5f22: $11 $11 $10
	ld e, d                                          ; $5f25: $5a
	ld e, b                                          ; $5f26: $58
	jr jr_028_5f62                                   ; $5f27: $18 $39

	sbc c                                            ; $5f29: $99
	sbc $8c                                          ; $5f2a: $de $8c
	add b                                            ; $5f2c: $80
	add h                                            ; $5f2d: $84
	add [hl]                                         ; $5f2e: $86
	add $c6                                          ; $5f2f: $c6 $c6
	xor h                                            ; $5f31: $ac
	ld c, $87                                        ; $5f32: $0e $87
	sub l                                            ; $5f34: $95
	or d                                             ; $5f35: $b2
	or [hl]                                          ; $5f36: $b6
	sub l                                            ; $5f37: $95
	sub l                                            ; $5f38: $95
	rra                                              ; $5f39: $1f
	sbc a                                            ; $5f3a: $9f
	rra                                              ; $5f3b: $1f
	rrca                                             ; $5f3c: $0f
	rrca                                             ; $5f3d: $0f
	dec bc                                           ; $5f3e: $0b
	dec hl                                           ; $5f3f: $2b
	dec hl                                           ; $5f40: $2b
	inc hl                                           ; $5f41: $23
	rrca                                             ; $5f42: $0f
	ld d, a                                          ; $5f43: $57
	rlca                                             ; $5f44: $07
	xor e                                            ; $5f45: $ab
	add c                                            ; $5f46: $81
	ld b, l                                          ; $5f47: $45
	ld d, l                                          ; $5f48: $55
	sub a                                            ; $5f49: $97
	sub e                                            ; $5f4a: $93
	adc e                                            ; $5f4b: $8b
	sbc d                                            ; $5f4c: $9a
	set 0, a                                         ; $5f4d: $cb $c7
	rst SubAFromBC                                          ; $5f4f: $e7
	db $e3                                           ; $5f50: $e3
	db $e3                                           ; $5f51: $e3
	call c, $dfff                                    ; $5f52: $dc $ff $df
	rst FarCall                                          ; $5f55: $f7
	add b                                            ; $5f56: $80
	ld [hl], a                                       ; $5f57: $77
	ld l, [hl]                                       ; $5f58: $6e
	ld c, a                                          ; $5f59: $4f
	rra                                              ; $5f5a: $1f
	ld a, a                                          ; $5f5b: $7f
	rst SubAFromBC                                          ; $5f5c: $e7
	rst GetHLinHL                                          ; $5f5d: $cf
	adc $ee                                          ; $5f5e: $ce $ee
	rst $38                                          ; $5f60: $ff
	rst $38                                          ; $5f61: $ff

jr_028_5f62:
	db $fc                                           ; $5f62: $fc
	rst SubAFromDE                                          ; $5f63: $df
	ld a, a                                          ; $5f64: $7f
	ld l, $fe                                        ; $5f65: $2e $fe
	db $fc                                           ; $5f67: $fc
	inc a                                            ; $5f68: $3c
	ld a, [hl]                                       ; $5f69: $7e
	rst $38                                          ; $5f6a: $ff
	cp b                                             ; $5f6b: $b8
	sub b                                            ; $5f6c: $90
	db $d3                                           ; $5f6d: $d3
	rla                                              ; $5f6e: $17
	ccf                                              ; $5f6f: $3f
	rst $38                                          ; $5f70: $ff
	cp $7f                                           ; $5f71: $fe $7f
	ld a, e                                          ; $5f73: $7b
	ei                                               ; $5f74: $fb
	rst $38                                          ; $5f75: $ff
	sub l                                            ; $5f76: $95
	ld a, e                                          ; $5f77: $7b
	ld a, [hl]                                       ; $5f78: $7e
	db $ed                                           ; $5f79: $ed
	pop af                                           ; $5f7a: $f1
	db $db                                           ; $5f7b: $db
	adc [hl]                                         ; $5f7c: $8e
	inc e                                            ; $5f7d: $1c
	inc c                                            ; $5f7e: $0c
	add [hl]                                         ; $5f7f: $86
	adc a                                            ; $5f80: $8f
	call c, $94ff                                    ; $5f81: $dc $ff $94
	rst SubAFromDE                                          ; $5f84: $df
	rst $38                                          ; $5f85: $ff
	ld a, [hl]                                       ; $5f86: $7e
	ld [$ff9b], sp                                   ; $5f87: $08 $9b $ff
	scf                                              ; $5f8a: $37
	ld sp, $e870                                     ; $5f8b: $31 $70 $e8
	di                                               ; $5f8e: $f3
	ld [$df00], sp                                   ; $5f8f: $08 $00 $df
	ld [hl+], a                                      ; $5f92: $22
	db $dd                                           ; $5f93: $dd

Jump_028_5f94:
	ld d, l                                          ; $5f94: $55
	rst SubAFromDE                                          ; $5f95: $df
	ld [hl+], a                                      ; $5f96: $22
	or $80                                           ; $5f97: $f6 $80
	rst SubAFromDE                                          ; $5f99: $df
	rst $38                                          ; $5f9a: $ff
	sbc [hl]                                         ; $5f9b: $9e
	rst FarCall                                          ; $5f9c: $f7
	call c, $93ff                                    ; $5f9d: $dc $ff $93
	or a                                             ; $5fa0: $b7
	rst $38                                          ; $5fa1: $ff
	rst $38                                          ; $5fa2: $ff
	pop af                                           ; $5fa3: $f1
	pop af                                           ; $5fa4: $f1
	rrca                                             ; $5fa5: $0f
	rlca                                             ; $5fa6: $07
	and [hl]                                         ; $5fa7: $a6
	rst FarCall                                          ; $5fa8: $f7
	rst AddAOntoHL                                          ; $5fa9: $ef
	cp a                                             ; $5faa: $bf
	sbc e                                            ; $5fab: $9b
	ld a, e                                          ; $5fac: $7b
	db $f4                                           ; $5fad: $f4
	jp c, $99ff                                      ; $5fae: $da $ff $99

	dec e                                            ; $5fb1: $1d
	ld sp, $f9ff                                     ; $5fb2: $31 $ff $f9
	ccf                                              ; $5fb5: $3f
	rst SubAFromDE                                          ; $5fb6: $df
	sbc $ff                                          ; $5fb7: $de $ff
	add [hl]                                         ; $5fb9: $86
	ei                                               ; $5fba: $fb
	rst $38                                          ; $5fbb: $ff
	rst $38                                          ; $5fbc: $ff
	ld hl, sp-$0f                                    ; $5fbd: $f8 $f1
	rla                                              ; $5fbf: $17
	dec de                                           ; $5fc0: $1b
	ld [hl], e                                       ; $5fc1: $73
	adc a                                            ; $5fc2: $8f
	rst SubAFromBC                                          ; $5fc3: $e7
	rst AddAOntoHL                                          ; $5fc4: $ef
	cp $ff                                           ; $5fc5: $fe $ff
	db $fd                                           ; $5fc7: $fd
	ei                                               ; $5fc8: $fb
	pop af                                           ; $5fc9: $f1
	or a                                             ; $5fca: $b7
	ld hl, sp-$01                                    ; $5fcb: $f8 $ff
	rst $38                                          ; $5fcd: $ff
	adc $87                                          ; $5fce: $ce $87
	ld c, l                                          ; $5fd0: $4d
	rst $38                                          ; $5fd1: $ff
	cp $dd                                           ; $5fd2: $fe $dd
	rst $38                                          ; $5fd4: $ff
	sbc e                                            ; $5fd5: $9b
	cp $fc                                           ; $5fd6: $fe $fc
	ld hl, sp-$10                                    ; $5fd8: $f8 $f0
	sbc $ff                                          ; $5fda: $de $ff
	add b                                            ; $5fdc: $80
	rst JumpTable                                          ; $5fdd: $c7
	rst GetHLinHL                                          ; $5fde: $cf
	sbc a                                            ; $5fdf: $9f
	rst $38                                          ; $5fe0: $ff
	rst $38                                          ; $5fe1: $ff
	ld sp, hl                                        ; $5fe2: $f9
	and $8b                                          ; $5fe3: $e6 $8b
	ld d, $2d                                        ; $5fe5: $16 $2d
	ld e, d                                          ; $5fe7: $5a
	or l                                             ; $5fe8: $b5
	ld l, d                                          ; $5fe9: $6a
	rst $38                                          ; $5fea: $ff
	rst $38                                          ; $5feb: $ff
	db $fc                                           ; $5fec: $fc
	ld sp, hl                                        ; $5fed: $f9
	di                                               ; $5fee: $f3
	rst SubAFromBC                                          ; $5fef: $e7
	rst GetHLinHL                                          ; $5ff0: $cf
	sbc a                                            ; $5ff1: $9f
	dec e                                            ; $5ff2: $1d
	ld l, $5a                                        ; $5ff3: $2e $5a
	cp l                                             ; $5ff5: $bd
	ld d, l                                          ; $5ff6: $55
	call nc, $ef7b                                   ; $5ff7: $d4 $7b $ef
	rst $38                                          ; $5ffa: $ff
	ei                                               ; $5ffb: $fb
	add b                                            ; $5ffc: $80
	rst FarCall                                          ; $5ffd: $f7
	rst SubAFromBC                                          ; $5ffe: $e7
	rst AddAOntoHL                                          ; $5fff: $ef
	xor a                                            ; $6000: $af
	adc [hl]                                         ; $6001: $8e
	ld a, [de]                                       ; $6002: $1a
	dec h                                            ; $6003: $25
	push bc                                          ; $6004: $c5
	ld d, [hl]                                       ; $6005: $56
	jp nc, $b092                                     ; $6006: $d2 $92 $b0

	ld sp, $da71                                     ; $6009: $31 $71 $da
	cp d                                             ; $600c: $ba
	xor c                                            ; $600d: $a9
	add hl, hl                                       ; $600e: $29
	ld l, c                                          ; $600f: $69
	ld c, c                                          ; $6010: $49
	ret z                                            ; $6011: $c8

	adc b                                            ; $6012: $88
	ld d, b                                          ; $6013: $50
	call nz, $b9da                                   ; $6014: $c4 $da $b9
	ld a, c                                          ; $6017: $79
	ld l, l                                          ; $6018: $6d
	ld c, h                                          ; $6019: $4c
	jr c, @+$01                                      ; $601a: $38 $ff

	add b                                            ; $601c: $80
	ld a, e                                          ; $601d: $7b
	ld l, l                                          ; $601e: $6d
	ld l, [hl]                                       ; $601f: $6e
	ld h, $36                                        ; $6020: $26 $36
	scf                                              ; $6022: $37

jr_028_6023:
	rla                                              ; $6023: $17
	sbc a                                            ; $6024: $9f
	ld b, [hl]                                       ; $6025: $46
	dec h                                            ; $6026: $25
	ld [de], a                                       ; $6027: $12
	sbc c                                            ; $6028: $99
	ld b, h                                          ; $6029: $44
	ld c, b                                          ; $602a: $48
	and d                                            ; $602b: $a2
	ld a, a                                          ; $602c: $7f
	cp a                                             ; $602d: $bf
	db $db                                           ; $602e: $db
	db $ed                                           ; $602f: $ed
	ld h, [hl]                                       ; $6030: $66
	inc sp                                           ; $6031: $33
	inc sp                                           ; $6032: $33
	add hl, de                                       ; $6033: $19
	dec e                                            ; $6034: $1d
	ld h, a                                          ; $6035: $67
	add hl, sp                                       ; $6036: $39
	adc [hl]                                         ; $6037: $8e
	ld b, a                                          ; $6038: $47
	and e                                            ; $6039: $a3
	ld d, c                                          ; $603a: $51
	sbc b                                            ; $603b: $98
	add a                                            ; $603c: $87
	db $e3                                           ; $603d: $e3
	sbc b                                            ; $603e: $98
	add $f1                                          ; $603f: $c6 $f1
	ld hl, sp+$7c                                    ; $6041: $f8 $7c
	cp [hl]                                          ; $6043: $be
	ccf                                              ; $6044: $3f
	add e                                            ; $6045: $83
	ld b, e                                          ; $6046: $43
	and c                                            ; $6047: $a1
	pop de                                           ; $6048: $d1
	xor c                                            ; $6049: $a9
	reti                                             ; $604a: $d9


	and l                                            ; $604b: $a5
	push de                                          ; $604c: $d5
	rst $38                                          ; $604d: $ff
	rst $38                                          ; $604e: $ff
	ld a, a                                          ; $604f: $7f
	ccf                                              ; $6050: $3f
	rra                                              ; $6051: $1f
	rrca                                             ; $6052: $0f
	ld c, a                                          ; $6053: $4f
	daa                                              ; $6054: $27
	jp c, $dfff                                      ; $6055: $da $ff $df

	ld a, a                                          ; $6058: $7f
	sbc b                                            ; $6059: $98
	sbc e                                            ; $605a: $9b
	inc de                                           ; $605b: $13
	ld bc, $1b11                                     ; $605c: $01 $11 $1b
	sbc h                                            ; $605f: $9c
	sbc [hl]                                         ; $6060: $9e
	ld a, e                                          ; $6061: $7b
	ld sp, $fd91                                     ; $6062: $31 $91 $fd
	rst AddAOntoHL                                          ; $6065: $ef
	db $fd                                           ; $6066: $fd
	rst $38                                          ; $6067: $ff
	rst $38                                          ; $6068: $ff
	jr jr_028_6023                                   ; $6069: $18 $b8

	cp h                                             ; $606b: $bc
	ld e, $1f                                        ; $606c: $1e $1f
	ccf                                              ; $606e: $3f
	jr c, @+$32                                      ; $606f: $38 $30

	rst SubAFromDE                                          ; $6071: $df
	ld a, e                                          ; $6072: $7b
	ld l, h                                          ; $6073: $6c
	ld l, a                                          ; $6074: $6f
	sbc $94                                          ; $6075: $de $94
	inc a                                            ; $6077: $3c
	ld b, h                                          ; $6078: $44
	adc l                                            ; $6079: $8d
	sub b                                            ; $607a: $90
	ld h, b                                          ; $607b: $60
	ld h, l                                          ; $607c: $65
	ld e, $e7                                        ; $607d: $1e $e7
	db $fc                                           ; $607f: $fc
	rst $38                                          ; $6080: $ff
	rst AddAOntoHL                                          ; $6081: $ef
	ld a, e                                          ; $6082: $7b
	db $db                                           ; $6083: $db
	ld a, a                                          ; $6084: $7f
	ld hl, sp-$67                                    ; $6085: $f8 $99
	adc h                                            ; $6087: $8c
	add e                                            ; $6088: $83
	sbc a                                            ; $6089: $9f
	add hl, de                                       ; $608a: $19
	rst SubAFromDE                                          ; $608b: $df
	jr c, jr_028_6098                                ; $608c: $38 $0a

	nop                                              ; $608e: $00
	rst SubAFromDE                                          ; $608f: $df
	ld [hl+], a                                      ; $6090: $22
	sbc [hl]                                         ; $6091: $9e
	ld h, l                                          ; $6092: $65
	sbc $55                                          ; $6093: $de $55
	rst SubAFromDE                                          ; $6095: $df
	ld [hl+], a                                      ; $6096: $22
	reti                                             ; $6097: $d9


jr_028_6098:
	add b                                            ; $6098: $80
	reti                                             ; $6099: $d9


	rst $38                                          ; $609a: $ff
	adc c                                            ; $609b: $89
	ld c, c                                          ; $609c: $49
	ld hl, sp-$08                                    ; $609d: $f8 $f8
	or b                                             ; $609f: $b0
	ld [$3bdb], sp                                   ; $60a0: $08 $db $3b
	inc hl                                           ; $60a3: $23
	rst $38                                          ; $60a4: $ff
	ei                                               ; $60a5: $fb
	di                                               ; $60a6: $f3
	rst $38                                          ; $60a7: $ff
	rst $38                                          ; $60a8: $ff
	ccf                                              ; $60a9: $3f
	sbc a                                            ; $60aa: $9f
	rst $38                                          ; $60ab: $ff
	db $fd                                           ; $60ac: $fd
	ld a, $7c                                        ; $60ad: $3e $7c
	ld hl, sp-$33                                    ; $60af: $f8 $cd
	rst GetHLinHL                                          ; $60b1: $cf
	jp c, $98ff                                      ; $60b2: $da $ff $98

	cp a                                             ; $60b5: $bf
	push hl                                          ; $60b6: $e5
	rst $38                                          ; $60b7: $ff
	rra                                              ; $60b8: $1f
	ccf                                              ; $60b9: $3f
	rra                                              ; $60ba: $1f
	ccf                                              ; $60bb: $3f
	jp c, $92ff                                      ; $60bc: $da $ff $92

	rst SubAFromDE                                          ; $60bf: $df
	ld e, a                                          ; $60c0: $5f
	rst $38                                          ; $60c1: $ff
	rst $38                                          ; $60c2: $ff
	rst AddAOntoHL                                          ; $60c3: $ef
	jp $c084                                         ; $60c4: $c3 $84 $c0


	rst FarCall                                          ; $60c7: $f7
	db $fc                                           ; $60c8: $fc
	db $fc                                           ; $60c9: $fc
	sub e                                            ; $60ca: $93
	sub c                                            ; $60cb: $91
	db $dd                                           ; $60cc: $dd
	rst $38                                          ; $60cd: $ff
	sbc [hl]                                         ; $60ce: $9e
	db $fc                                           ; $60cf: $fc
	sbc $ff                                          ; $60d0: $de $ff
	adc a                                            ; $60d2: $8f
	rra                                              ; $60d3: $1f
	ld h, e                                          ; $60d4: $63
	ld h, c                                          ; $60d5: $61
	pop af                                           ; $60d6: $f1
	di                                               ; $60d7: $f3
	daa                                              ; $60d8: $27
	inc hl                                           ; $60d9: $23
	ld [hl], c                                       ; $60da: $71
	ret nc                                           ; $60db: $d0

	add sp, -$30                                     ; $60dc: $e8 $d0
	ldh [$d0], a                                     ; $60de: $e0 $d0
	xor b                                            ; $60e0: $a8
	pop de                                           ; $60e1: $d1
	rst AddAOntoHL                                          ; $60e2: $ef
	db $dd                                           ; $60e3: $dd
	ret nz                                           ; $60e4: $c0

	sbc $80                                          ; $60e5: $de $80
	sub [hl]                                         ; $60e7: $96
	add a                                            ; $60e8: $87
	xor $d7                                          ; $60e9: $ee $d7
	ld l, a                                          ; $60eb: $6f
	nop                                              ; $60ec: $00
	rra                                              ; $60ed: $1f
	inc a                                            ; $60ee: $3c
	pop hl                                           ; $60ef: $e1
	add $fd                                          ; $60f0: $c6 $fd
	sub e                                            ; $60f2: $93
	inc bc                                           ; $60f3: $03
	rra                                              ; $60f4: $1f
	rst $38                                          ; $60f5: $ff
	rst $38                                          ; $60f6: $ff
	db $eb                                           ; $60f7: $eb
	pop bc                                           ; $60f8: $c1
	ret                                              ; $60f9: $c9


	db $eb                                           ; $60fa: $eb
	rst $38                                          ; $60fb: $ff
	ld [hl], e                                       ; $60fc: $73
	ldh [c], a                                       ; $60fd: $e2
	ret nz                                           ; $60fe: $c0

	db $dd                                           ; $60ff: $dd
	add c                                            ; $6100: $81
	db $dd                                           ; $6101: $dd
	rst $38                                          ; $6102: $ff
	sub a                                            ; $6103: $97
	ccf                                              ; $6104: $3f
	push de                                          ; $6105: $d5
	ld a, [bc]                                       ; $6106: $0a
	ld bc, $7cf0                                     ; $6107: $01 $f0 $7c
	and a                                            ; $610a: $a7
	sub b                                            ; $610b: $90
	db $fd                                           ; $610c: $fd
	sbc e                                            ; $610d: $9b
	add b                                            ; $610e: $80
	ld hl, sp-$01                                    ; $610f: $f8 $ff
	rst $38                                          ; $6111: $ff
	ld a, e                                          ; $6112: $7b
	set 7, a                                         ; $6113: $cb $ff
	sbc h                                            ; $6115: $9c
	inc d                                            ; $6116: $14
	xor d                                            ; $6117: $aa
	or $fa                                           ; $6118: $f6 $fa
	add [hl]                                         ; $611a: $86
	ldh [$f6], a                                     ; $611b: $e0 $f6
	sbc l                                            ; $611d: $9d
	and $99                                          ; $611e: $e6 $99
	cp b                                             ; $6120: $b8
	add h                                            ; $6121: $84
	ldh a, [c]                                       ; $6122: $f2
	xor [hl]                                         ; $6123: $ae
	adc a                                            ; $6124: $8f
	db $e3                                           ; $6125: $e3
	ld sp, hl                                        ; $6126: $f9
	cp $c7                                           ; $6127: $fe $c7
	ei                                               ; $6129: $fb
	db $fd                                           ; $612a: $fd
	rst SubAFromDE                                          ; $612b: $df
	rra                                              ; $612c: $1f
	adc a                                            ; $612d: $8f
	ld b, a                                          ; $612e: $47
	daa                                              ; $612f: $27
	inc de                                           ; $6130: $13
	dec bc                                           ; $6131: $0b
	dec b                                            ; $6132: $05
	dec b                                            ; $6133: $05
	sbc $fe                                          ; $6134: $de $fe
	call c, $8aff                                    ; $6136: $dc $ff $8a
	call z, $fefe                                    ; $6139: $cc $fe $fe
	rst FarCall                                          ; $613c: $f7
	rst SubAFromHL                                          ; $613d: $d7
	cp a                                             ; $613e: $bf

Jump_028_613f:
	rst $38                                          ; $613f: $ff
	rst $38                                          ; $6140: $ff
	ld a, h                                          ; $6141: $7c
	ld a, [hl]                                       ; $6142: $7e
	ccf                                              ; $6143: $3f
	ccf                                              ; $6144: $3f
	xor a                                            ; $6145: $af
	rst JumpTable                                          ; $6146: $c7
	rlca                                             ; $6147: $07
	rrca                                             ; $6148: $0f
	adc $3f                                          ; $6149: $ce $3f
	ldh [$e1], a                                     ; $614b: $e0 $e1
	or $7b                                           ; $614d: $f6 $7b
	db $e4                                           ; $614f: $e4
	ld a, e                                          ; $6150: $7b
	ld hl, sp-$6e                                    ; $6151: $f8 $92
	pop af                                           ; $6153: $f1
	cp $c2                                           ; $6154: $fe $c2
	add c                                            ; $6156: $81
	ld bc, $0f70                                     ; $6157: $01 $70 $0f
	nop                                              ; $615a: $00
	ldh [rAUD3LEVEL], a                              ; $615b: $e0 $1c
	jp c, $f63f                                      ; $615d: $da $3f $f6

	ld l, a                                          ; $6160: $6f
	ld hl, sp-$6c                                    ; $6161: $f8 $94
	rst $38                                          ; $6163: $ff
	or $73                                           ; $6164: $f6 $73
	rra                                              ; $6166: $1f
	rlca                                             ; $6167: $07
	add hl, de                                       ; $6168: $19
	pop bc                                           ; $6169: $c1
	rlca                                             ; $616a: $07
	dec de                                           ; $616b: $1b
	jr z, jr_028_61eb                                ; $616c: $28 $7d

	ld l, e                                          ; $616e: $6b
	ld hl, sp+$0b                                    ; $616f: $f8 $0b
	nop                                              ; $6171: $00
	rst SubAFromDE                                          ; $6172: $df
	ld [hl+], a                                      ; $6173: $22
	sbc c                                            ; $6174: $99
	ld h, $66                                        ; $6175: $26 $66
	ld h, [hl]                                       ; $6177: $66
	ld d, [hl]                                       ; $6178: $56
	ld [hl+], a                                      ; $6179: $22
	ld [hl+], a                                      ; $617a: $22
	rst SubAFromBC                                          ; $617b: $e7
	add b                                            ; $617c: $80
	add b                                            ; $617d: $80
	adc $dc                                          ; $617e: $ce $dc
	call c, $ff7e                                    ; $6180: $dc $7e $ff
	rst FarCall                                          ; $6183: $f7
	di                                               ; $6184: $f3
	rst $38                                          ; $6185: $ff
	ccf                                              ; $6186: $3f
	ccf                                              ; $6187: $3f
	inc sp                                           ; $6188: $33
	add c                                            ; $6189: $81
	ld h, c                                          ; $618a: $61
	ld a, b                                          ; $618b: $78
	cp $30                                           ; $618c: $fe $30
	rrca                                             ; $618e: $0f
	ccf                                              ; $618f: $3f
	ld a, a                                          ; $6190: $7f
	db $e3                                           ; $6191: $e3
	rst SubAFromBC                                          ; $6192: $e7
	rst GetHLinHL                                          ; $6193: $cf
	rst AddAOntoHL                                          ; $6194: $ef
	rst $38                                          ; $6195: $ff
	rst $38                                          ; $6196: $ff
	sbc $9e                                          ; $6197: $de $9e
	ccf                                              ; $6199: $3f
	ccf                                              ; $619a: $3f
	ld a, h                                          ; $619b: $7c
	ld a, b                                          ; $619c: $78
	sbc [hl]                                         ; $619d: $9e

Call_028_619e:
	ld a, b                                          ; $619e: $78
	sbc $ff                                          ; $619f: $de $ff
	ld a, a                                          ; $61a1: $7f
	db $e3                                           ; $61a2: $e3
	sbc c                                            ; $61a3: $99
	ei                                               ; $61a4: $fb
	db $eb                                           ; $61a5: $eb
	rst $38                                          ; $61a6: $ff
	pop af                                           ; $61a7: $f1
	inc sp                                           ; $61a8: $33
	ld [hl], a                                       ; $61a9: $77
	sbc $ff                                          ; $61aa: $de $ff
	sbc l                                            ; $61ac: $9d
	ld e, $0f                                        ; $61ad: $1e $0f
	db $dd                                           ; $61af: $dd
	rst $38                                          ; $61b0: $ff
	sbc [hl]                                         ; $61b1: $9e
	sbc a                                            ; $61b2: $9f
	call c, Call_028_7fff                            ; $61b3: $dc $ff $7f
	reti                                             ; $61b6: $d9


	sbc e                                            ; $61b7: $9b
	db $fc                                           ; $61b8: $fc
	inc l                                            ; $61b9: $2c
	ld b, $22                                        ; $61ba: $06 $22
	ld a, e                                          ; $61bc: $7b
	pop hl                                           ; $61bd: $e1
	sbc l                                            ; $61be: $9d
	ld hl, sp-$04                                    ; $61bf: $f8 $fc
	sbc $ff                                          ; $61c1: $de $ff
	sbc b                                            ; $61c3: $98
	rst SubAFromBC                                          ; $61c4: $e7
	adc a                                            ; $61c5: $8f
	adc a                                            ; $61c6: $8f
	sbc a                                            ; $61c7: $9f
	ld b, e                                          ; $61c8: $43
	ld [hl+], a                                      ; $61c9: $22
	rst $38                                          ; $61ca: $ff
	ld [hl], e                                       ; $61cb: $73
	ldh [$99], a                                     ; $61cc: $e0 $99
	ret nz                                           ; $61ce: $c0

	and b                                            ; $61cf: $a0
	ret nc                                           ; $61d0: $d0

	xor b                                            ; $61d1: $a8
	rst JumpTable                                          ; $61d2: $c7
	rst SubAFromBC                                          ; $61d3: $e7
	ld a, e                                          ; $61d4: $7b
	ld hl, sp-$22                                    ; $61d5: $f8 $de
	add b                                            ; $61d7: $80
	rst SubAFromDE                                          ; $61d8: $df
	db $fc                                           ; $61d9: $fc
	rst SubAFromDE                                          ; $61da: $df
	cp $8c                                           ; $61db: $fe $8c
	rra                                              ; $61dd: $1f
	rlca                                             ; $61de: $07
	ld bc, $1f78                                     ; $61df: $01 $78 $1f
	ccf                                              ; $61e2: $3f
	rst $38                                          ; $61e3: $ff
	rst $38                                          ; $61e4: $ff
	rrca                                             ; $61e5: $0f
	rlca                                             ; $61e6: $07
	ld bc, $cc00                                     ; $61e7: $01 $00 $cc
	ld c, c                                          ; $61ea: $49

jr_028_61eb:
	ld l, c                                          ; $61eb: $69
	jr nz, jr_028_6220                               ; $61ec: $20 $32

	ld [hl-], a                                      ; $61ee: $32
	sub e                                            ; $61ef: $93
	ret c                                            ; $61f0: $d8

	rst $38                                          ; $61f1: $ff
	sub a                                            ; $61f2: $97
	adc h                                            ; $61f3: $8c
	db $10                                           ; $61f4: $10
	jr nz, jr_028_623e                               ; $61f5: $20 $47

	sbc b                                            ; $61f7: $98
	ldh [$c0], a                                     ; $61f8: $e0 $c0
	add a                                            ; $61fa: $87
	db $dd                                           ; $61fb: $dd
	rst $38                                          ; $61fc: $ff
	sbc h                                            ; $61fd: $9c
	ld hl, sp-$20                                    ; $61fe: $f8 $e0
	add b                                            ; $6200: $80
	cp $99                                           ; $6201: $fe $99
	cp $03                                           ; $6203: $fe $03
	ld bc, $0000                                     ; $6205: $01 $00 $00
	add b                                            ; $6208: $80
	sbc $ff                                          ; $6209: $de $ff
	ld a, e                                          ; $620b: $7b
	ld sp, hl                                        ; $620c: $f9
	rst $38                                          ; $620d: $ff
	sub a                                            ; $620e: $97
	ccf                                              ; $620f: $3f
	rrca                                             ; $6210: $0f
	rlca                                             ; $6211: $07
	nop                                              ; $6212: $00
	ldh a, [hDisp1_LCDC]                                     ; $6213: $f0 $8f
	add b                                            ; $6215: $80
	ld hl, sp-$29                                    ; $6216: $f8 $d7
	rst $38                                          ; $6218: $ff
	sbc d                                            ; $6219: $9a
	rst SubAFromDE                                          ; $621a: $df
	ccf                                              ; $621b: $3f
	ld a, a                                          ; $621c: $7f
	rst $38                                          ; $621d: $ff
	rst $38                                          ; $621e: $ff
	ld a, e                                          ; $621f: $7b

jr_028_6220:
	or d                                             ; $6220: $b2
	sbc d                                            ; $6221: $9a
	rst $38                                          ; $6222: $ff
	cp $fc                                           ; $6223: $fe $fc
	ld hl, sp-$07                                    ; $6225: $f8 $f9
	ld a, e                                          ; $6227: $7b
	ld a, [$e399]                                    ; $6228: $fa $99 $e3
	pop af                                           ; $622b: $f1
	cp $ef                                           ; $622c: $fe $ef
	pop af                                           ; $622e: $f1
	sbc $7b                                          ; $622f: $de $7b
	ld hl, sp-$6e                                    ; $6231: $f8 $92
	ld [hl], c                                       ; $6233: $71
	ld a, $6f                                        ; $6234: $3e $6f
	pop af                                           ; $6236: $f1
	cp $8e                                           ; $6237: $fe $8e
	rst AddAOntoHL                                          ; $6239: $ef
	ld a, [hl-]                                      ; $623a: $3a
	cp $0d                                           ; $623b: $fe $0d
	adc a                                            ; $623d: $8f

jr_028_623e:
	sbc b                                            ; $623e: $98
	ld l, a                                          ; $623f: $6f
	ld [hl], a                                       ; $6240: $77
	db $dd                                           ; $6241: $dd
	ld [hl], a                                       ; $6242: $77
	ld hl, sp-$72                                    ; $6243: $f8 $8e
	sbc a                                            ; $6245: $9f

jr_028_6246:
	cp a                                             ; $6246: $bf
	cp $7f                                           ; $6247: $fe $7f
	rst $38                                          ; $6249: $ff
	di                                               ; $624a: $f3
	ld a, a                                          ; $624b: $7f
	cp e                                             ; $624c: $bb
	ld hl, sp-$08                                    ; $624d: $f8 $f8
	ld sp, hl                                        ; $624f: $f9
	db $fd                                           ; $6250: $fd
	rst $38                                          ; $6251: $ff
	rst $38                                          ; $6252: $ff
	ld a, a                                          ; $6253: $7f
	cp e                                             ; $6254: $bb
	pop hl                                           ; $6255: $e1
	ld l, a                                          ; $6256: $6f
	call nz, $3b96                                   ; $6257: $c4 $96 $3b
	ld a, a                                          ; $625a: $7f
	ei                                               ; $625b: $fb
	pop af                                           ; $625c: $f1
	ldh a, [$f3]                                     ; $625d: $f0 $f3
	rst SubAFromHL                                          ; $625f: $d7
	inc e                                            ; $6260: $1c
	db $fc                                           ; $6261: $fc
	ld a, [bc]                                       ; $6262: $0a
	nop                                              ; $6263: $00
	rst SubAFromDE                                          ; $6264: $df
	ld [hl+], a                                      ; $6265: $22
	sbc [hl]                                         ; $6266: $9e
	ld h, $de                                        ; $6267: $26 $de
	ld h, [hl]                                       ; $6269: $66
	rst SubAFromDE                                          ; $626a: $df
	ld [hl+], a                                      ; $626b: $22
	inc a                                            ; $626c: $3c
	add b                                            ; $626d: $80
	db $db                                           ; $626e: $db
	ld bc, $ff9d                                     ; $626f: $01 $9d $ff
	ld a, a                                          ; $6272: $7f
	ei                                               ; $6273: $fb
	add b                                            ; $6274: $80
	rst $38                                          ; $6275: $ff
	cp $b2                                           ; $6276: $fe $b2
	ldh a, [c]                                       ; $6278: $f2
	ldh a, [c]                                       ; $6279: $f2
	reti                                             ; $627a: $d9


	reti                                             ; $627b: $d9


	adc h                                            ; $627c: $8c
	db $e4                                           ; $627d: $e4
	ld b, $ff                                        ; $627e: $06 $ff
	rst SubAFromDE                                          ; $6280: $df
	rst SubAFromDE                                          ; $6281: $df
	adc a                                            ; $6282: $8f
	adc a                                            ; $6283: $8f
	rlca                                             ; $6284: $07
	rst SubAFromBC                                          ; $6285: $e7
	inc bc                                           ; $6286: $03
	ld a, $77                                        ; $6287: $3e $77
	rst SubAFromDE                                          ; $6289: $df

jr_028_628a:
	rst $38                                          ; $628a: $ff
	or a                                             ; $628b: $b7
	ld h, a                                          ; $628c: $67
	dec h                                            ; $628d: $25

jr_028_628e:
	ld [bc], a                                       ; $628e: $02
	ret nz                                           ; $628f: $c0

	adc a                                            ; $6290: $8f
	ccf                                              ; $6291: $3f
	ld a, d                                          ; $6292: $7a
	ld h, a                                          ; $6293: $67
	adc h                                            ; $6294: $8c
	rlca                                             ; $6295: $07
	dec b                                            ; $6296: $05
	inc bc                                           ; $6297: $03
	inc bc                                           ; $6298: $03
	pop af                                           ; $6299: $f1
	cp $38                                           ; $629a: $fe $38
	inc a                                            ; $629c: $3c
	xor b                                            ; $629d: $a8
	jr nz, jr_028_6301                               ; $629e: $20 $61

	ld bc, $fce0                                     ; $62a0: $01 $e0 $fc
	ld a, b                                          ; $62a3: $78
	jr z, jr_028_6246                                ; $62a4: $28 $a0

	ldh [$c0], a                                     ; $62a6: $e0 $c0
	inc b                                            ; $62a8: $04
	nop                                              ; $62a9: $00
	rst SubAFromDE                                          ; $62aa: $df
	ld d, a                                          ; $62ab: $57
	inc a                                            ; $62ac: $3c
	add b                                            ; $62ad: $80
	db $db                                           ; $62ae: $db
	ld bc, $ff9d                                     ; $62af: $01 $9d $ff
	ld a, a                                          ; $62b2: $7f
	ei                                               ; $62b3: $fb
	add b                                            ; $62b4: $80
	rst $38                                          ; $62b5: $ff
	cp $b2                                           ; $62b6: $fe $b2
	ldh a, [c]                                       ; $62b8: $f2
	ldh a, [c]                                       ; $62b9: $f2
	reti                                             ; $62ba: $d9


	reti                                             ; $62bb: $d9


	adc h                                            ; $62bc: $8c
	db $e4                                           ; $62bd: $e4
	ld b, $ff                                        ; $62be: $06 $ff
	rst SubAFromDE                                          ; $62c0: $df
	rst SubAFromDE                                          ; $62c1: $df
	adc a                                            ; $62c2: $8f
	adc a                                            ; $62c3: $8f
	rlca                                             ; $62c4: $07
	rst SubAFromBC                                          ; $62c5: $e7
	inc bc                                           ; $62c6: $03
	ld a, $7c                                        ; $62c7: $3e $7c
	rst AddAOntoHL                                          ; $62c9: $ef
	cp a                                             ; $62ca: $bf
	rst FarCall                                          ; $62cb: $f7
	daa                                              ; $62cc: $27
	dec h                                            ; $62cd: $25
	ld [bc], a                                       ; $62ce: $02
	ret nz                                           ; $62cf: $c0

	add b                                            ; $62d0: $80
	rra                                              ; $62d1: $1f
	ld a, [hl]                                       ; $62d2: $7e
	ld [hl], a                                       ; $62d3: $77
	adc h                                            ; $62d4: $8c
	ld h, a                                          ; $62d5: $67
	dec b                                            ; $62d6: $05
	inc bc                                           ; $62d7: $03
	inc bc                                           ; $62d8: $03
	ld bc, $3ef0                                     ; $62d9: $01 $f0 $3e
	jr c, jr_028_628a                                ; $62dc: $38 $ac

	jr nz, @+$43                                     ; $62de: $20 $41

	ld bc, $e000                                     ; $62e0: $01 $00 $e0
	ld a, h                                          ; $62e3: $7c
	jr z, jr_028_628e                                ; $62e4: $28 $a8

	ldh [$e0], a                                     ; $62e6: $e0 $e0
	inc b                                            ; $62e8: $04
	nop                                              ; $62e9: $00
	rst SubAFromDE                                          ; $62ea: $df
	ld d, a                                          ; $62eb: $57
	ld a, [hl-]                                      ; $62ec: $3a
	nop                                              ; $62ed: $00
	sbc l                                            ; $62ee: $9d
	ld bc, $5f00                                     ; $62ef: $01 $00 $5f
	cp $df                                           ; $62f2: $fe $df
	rst $38                                          ; $62f4: $ff
	add b                                            ; $62f5: $80
	ld a, a                                          ; $62f6: $7f
	cp $b2                                           ; $62f7: $fe $b2
	rst $38                                          ; $62f9: $ff
	ldh a, [c]                                       ; $62fa: $f2
	rst SubAFromDE                                          ; $62fb: $df
	ldh a, [c]                                       ; $62fc: $f2
	rst SubAFromDE                                          ; $62fd: $df
	reti                                             ; $62fe: $d9


	adc a                                            ; $62ff: $8f
	reti                                             ; $6300: $d9


jr_028_6301:
	adc a                                            ; $6301: $8f
	adc h                                            ; $6302: $8c
	rlca                                             ; $6303: $07
	db $e4                                           ; $6304: $e4
	rst SubAFromBC                                          ; $6305: $e7
	ld b, $03                                        ; $6306: $06 $03
	ld a, $c0                                        ; $6308: $3e $c0
	ld a, h                                          ; $630a: $7c
	add b                                            ; $630b: $80
	rst $38                                          ; $630c: $ff
	nop                                              ; $630d: $00
	cp $00                                           ; $630e: $fe $00
	ld a, b                                          ; $6310: $78
	ccf                                              ; $6311: $3f
	ccf                                              ; $6312: $3f
	ld a, a                                          ; $6313: $7f
	ld d, $99                                        ; $6314: $16 $99
	ld [hl], $13                                     ; $6316: $36 $13
	inc bc                                           ; $6318: $03
	inc bc                                           ; $6319: $03
	ld bc, $fc01                                     ; $631a: $01 $01 $fc
	sub a                                            ; $631d: $97
	db $fc                                           ; $631e: $fc
	inc a                                            ; $631f: $3c
	cp $f8                                           ; $6320: $fe $f8
	ld hl, sp+$60                                    ; $6322: $f8 $60
	pop bc                                           ; $6324: $c1
	add b                                            ; $6325: $80
	inc b                                            ; $6326: $04
	nop                                              ; $6327: $00
	rst SubAFromDE                                          ; $6328: $df
	ld d, a                                          ; $6329: $57
	jr c, jr_028_632c                                ; $632a: $38 $00

jr_028_632c:
	sbc l                                            ; $632c: $9d
	ld bc, $5f00                                     ; $632d: $01 $00 $5f
	cp $df                                           ; $6330: $fe $df
	rst $38                                          ; $6332: $ff
	add b                                            ; $6333: $80
	ld a, a                                          ; $6334: $7f
	cp $b2                                           ; $6335: $fe $b2
	rst $38                                          ; $6337: $ff
	ldh a, [c]                                       ; $6338: $f2
	rst SubAFromDE                                          ; $6339: $df
	ldh a, [c]                                       ; $633a: $f2
	rst SubAFromDE                                          ; $633b: $df
	reti                                             ; $633c: $d9


	adc a                                            ; $633d: $8f
	reti                                             ; $633e: $d9


	adc a                                            ; $633f: $8f
	adc h                                            ; $6340: $8c
	rlca                                             ; $6341: $07
	db $e4                                           ; $6342: $e4

jr_028_6343:
	rst SubAFromBC                                          ; $6343: $e7
	ld b, $03                                        ; $6344: $06 $03
	ld a, $c0                                        ; $6346: $3e $c0
	ld a, [hl]                                       ; $6348: $7e
	add b                                            ; $6349: $80
	db $fc                                           ; $634a: $fc
	nop                                              ; $634b: $00
	rst $38                                          ; $634c: $ff
	nop                                              ; $634d: $00
	ld a, b                                          ; $634e: $78
	nop                                              ; $634f: $00
	ld [hl], $78                                     ; $6350: $36 $78
	rra                                              ; $6352: $1f
	sbc c                                            ; $6353: $99
	ccf                                              ; $6354: $3f
	rrca                                             ; $6355: $0f
	rra                                              ; $6356: $1f
	inc bc                                           ; $6357: $03
	ld bc, $fa01                                     ; $6358: $01 $01 $fa
	sbc c                                            ; $635b: $99
	ld a, [hl]                                       ; $635c: $7e
	inc a                                            ; $635d: $3c
	ld hl, sp-$20                                    ; $635e: $f8 $e0
	pop hl                                           ; $6360: $e1
	ret nz                                           ; $6361: $c0

	inc b                                            ; $6362: $04
	nop                                              ; $6363: $00
	rst SubAFromDE                                          ; $6364: $df
	ld d, a                                          ; $6365: $57
	ld b, b                                          ; $6366: $40
	add b                                            ; $6367: $80
	db $dd                                           ; $6368: $dd
	ld bc, $179b                                     ; $6369: $01 $9b $17
	ccf                                              ; $636c: $3f
	rst FarCall                                          ; $636d: $f7
	ld e, [hl]                                       ; $636e: $5e
	db $fd                                           ; $636f: $fd
	add b                                            ; $6370: $80
	rrca                                             ; $6371: $0f
	ld a, a                                          ; $6372: $7f
	ld hl, sp-$20                                    ; $6373: $f8 $e0
	or d                                             ; $6375: $b2
	ldh a, [c]                                       ; $6376: $f2
	ldh a, [c]                                       ; $6377: $f2
	reti                                             ; $6378: $d9


	reti                                             ; $6379: $d9


	db $ec                                           ; $637a: $ec
	inc b                                            ; $637b: $04
	ld b, $ff                                        ; $637c: $06 $ff
	rst SubAFromDE                                          ; $637e: $df
	rst SubAFromDE                                          ; $637f: $df
	adc a                                            ; $6380: $8f
	adc a                                            ; $6381: $8f
	rst SubAFromBC                                          ; $6382: $e7
	rlca                                             ; $6383: $07
	inc bc                                           ; $6384: $03
	add hl, sp                                       ; $6385: $39
	ld h, a                                          ; $6386: $67
	sbc $f3                                          ; $6387: $de $f3
	or a                                             ; $6389: $b7
	ld h, a                                          ; $638a: $67

jr_028_638b:
	dec h                                            ; $638b: $25
	ld [bc], a                                       ; $638c: $02
	rst JumpTable                                          ; $638d: $c7
	sbc a                                            ; $638e: $9f

jr_028_638f:
	ld a, $8a                                        ; $638f: $3e $8a
	ld a, a                                          ; $6391: $7f
	ld h, a                                          ; $6392: $67
	rlca                                             ; $6393: $07
	dec b                                            ; $6394: $05
	inc bc                                           ; $6395: $03
	db $e3                                           ; $6396: $e3
	rst $38                                          ; $6397: $ff
	ld e, b                                          ; $6398: $58
	inc l                                            ; $6399: $2c
	xor b                                            ; $639a: $a8
	ldh [rAUD4LEN], a                                ; $639b: $e0 $20
	ld b, c                                          ; $639d: $41
	pop bc                                           ; $639e: $c1
	db $fc                                           ; $639f: $fc
	ld a, b                                          ; $63a0: $78
	jr z, jr_028_6343                                ; $63a1: $28 $a0

	ldh [$e0], a                                     ; $63a3: $e0 $e0
	ret nz                                           ; $63a5: $c0

	inc b                                            ; $63a6: $04
	nop                                              ; $63a7: $00
	rst SubAFromDE                                          ; $63a8: $df
	ld d, a                                          ; $63a9: $57
	ld b, b                                          ; $63aa: $40
	add b                                            ; $63ab: $80
	db $dd                                           ; $63ac: $dd
	ld bc, $179b                                     ; $63ad: $01 $9b $17
	ccf                                              ; $63b0: $3f
	rst FarCall                                          ; $63b1: $f7
	ld e, [hl]                                       ; $63b2: $5e
	db $fd                                           ; $63b3: $fd
	add b                                            ; $63b4: $80
	rrca                                             ; $63b5: $0f
	ld a, a                                          ; $63b6: $7f
	ld hl, sp-$20                                    ; $63b7: $f8 $e0
	or d                                             ; $63b9: $b2
	ldh a, [c]                                       ; $63ba: $f2
	ldh a, [c]                                       ; $63bb: $f2
	reti                                             ; $63bc: $d9


	reti                                             ; $63bd: $d9


	db $ec                                           ; $63be: $ec
	inc b                                            ; $63bf: $04
	ld b, $ff                                        ; $63c0: $06 $ff
	rst SubAFromDE                                          ; $63c2: $df
	rst SubAFromDE                                          ; $63c3: $df
	adc a                                            ; $63c4: $8f
	adc a                                            ; $63c5: $8f
	rst SubAFromBC                                          ; $63c6: $e7
	rlca                                             ; $63c7: $07
	inc bc                                           ; $63c8: $03
	inc a                                            ; $63c9: $3c
	ld a, e                                          ; $63ca: $7b
	rst AddAOntoHL                                          ; $63cb: $ef
	rst SubAFromDE                                          ; $63cc: $df
	rst FarCall                                          ; $63cd: $f7
	ld h, a                                          ; $63ce: $67
	dec h                                            ; $63cf: $25
	ld [bc], a                                       ; $63d0: $02
	ret nz                                           ; $63d1: $c0

	add a                                            ; $63d2: $87
	rra                                              ; $63d3: $1f
	adc d                                            ; $63d4: $8a
	ccf                                              ; $63d5: $3f
	ld h, a                                          ; $63d6: $67
	daa                                              ; $63d7: $27
	dec b                                            ; $63d8: $05
	inc bc                                           ; $63d9: $03
	inc bc                                           ; $63da: $03
	db $e3                                           ; $63db: $e3
	db $fc                                           ; $63dc: $fc
	jr c, jr_028_638b                                ; $63dd: $38 $ac

	add sp, $20                                      ; $63df: $e8 $20
	ld b, c                                          ; $63e1: $41
	ld bc, $fcc0                                     ; $63e2: $01 $c0 $fc
	jr c, jr_028_638f                                ; $63e5: $38 $a8

	ldh [$e0], a                                     ; $63e7: $e0 $e0
	ret nz                                           ; $63e9: $c0

	inc b                                            ; $63ea: $04
	nop                                              ; $63eb: $00
	rst SubAFromDE                                          ; $63ec: $df
	ld d, a                                          ; $63ed: $57
	dec a                                            ; $63ee: $3d
	nop                                              ; $63ef: $00
	sbc l                                            ; $63f0: $9d
	ld bc, $6f00                                     ; $63f1: $01 $00 $6f
	cp $80                                           ; $63f4: $fe $80
	rla                                              ; $63f6: $17
	rrca                                             ; $63f7: $0f
	ccf                                              ; $63f8: $3f
	ld a, a                                          ; $63f9: $7f
	rst FarCall                                          ; $63fa: $f7
	ld hl, sp+$5e                                    ; $63fb: $f8 $5e
	ldh [$b2], a                                     ; $63fd: $e0 $b2
	rst $38                                          ; $63ff: $ff
	ldh a, [c]                                       ; $6400: $f2
	rst SubAFromDE                                          ; $6401: $df
	ldh a, [c]                                       ; $6402: $f2
	rst SubAFromDE                                          ; $6403: $df
	reti                                             ; $6404: $d9


	adc a                                            ; $6405: $8f
	reti                                             ; $6406: $d9


	adc a                                            ; $6407: $8f
	db $ec                                           ; $6408: $ec
	rst SubAFromBC                                          ; $6409: $e7
	inc b                                            ; $640a: $04
	rlca                                             ; $640b: $07
	ld b, $03                                        ; $640c: $06 $03
	inc a                                            ; $640e: $3c
	ret nz                                           ; $640f: $c0

	ld a, h                                          ; $6410: $7c
	add b                                            ; $6411: $80
	rst $38                                          ; $6412: $ff
	nop                                              ; $6413: $00
	ld hl, sp-$68                                    ; $6414: $f8 $98
	nop                                              ; $6416: $00
	ld a, a                                          ; $6417: $7f
	rra                                              ; $6418: $1f
	ccf                                              ; $6419: $3f
	ld a, a                                          ; $641a: $7f
	ld d, $3e                                        ; $641b: $16 $3e
	sbc $03                                          ; $641d: $de $03
	rst SubAFromDE                                          ; $641f: $df
	ld bc, $97fc                                     ; $6420: $01 $fc $97
	cp $fc                                           ; $6423: $fe $fc
	db $fc                                           ; $6425: $fc
	ld hl, sp+$70                                    ; $6426: $f8 $70
	ldh [$e1], a                                     ; $6428: $e0 $e1
	ret nz                                           ; $642a: $c0

	inc b                                            ; $642b: $04
	nop                                              ; $642c: $00
	rst SubAFromDE                                          ; $642d: $df
	ld d, a                                          ; $642e: $57
	inc a                                            ; $642f: $3c
	nop                                              ; $6430: $00
	sbc l                                            ; $6431: $9d
	ld bc, $6f00                                     ; $6432: $01 $00 $6f
	cp $80                                           ; $6435: $fe $80
	rla                                              ; $6437: $17
	rrca                                             ; $6438: $0f
	ccf                                              ; $6439: $3f
	ld a, a                                          ; $643a: $7f
	rst FarCall                                          ; $643b: $f7
	ld hl, sp+$5e                                    ; $643c: $f8 $5e
	ldh [$b2], a                                     ; $643e: $e0 $b2
	rst $38                                          ; $6440: $ff
	ldh a, [c]                                       ; $6441: $f2
	rst SubAFromDE                                          ; $6442: $df
	ldh a, [c]                                       ; $6443: $f2
	rst SubAFromDE                                          ; $6444: $df
	reti                                             ; $6445: $d9


	adc a                                            ; $6446: $8f
	reti                                             ; $6447: $d9


	adc a                                            ; $6448: $8f
	db $ec                                           ; $6449: $ec
	rst SubAFromBC                                          ; $644a: $e7
	inc b                                            ; $644b: $04
	rlca                                             ; $644c: $07
	ld b, $03                                        ; $644d: $06 $03
	ld a, $c0                                        ; $644f: $3e $c0
	ld a, [hl]                                       ; $6451: $7e
	add b                                            ; $6452: $80
	db $fc                                           ; $6453: $fc
	nop                                              ; $6454: $00
	rst $38                                          ; $6455: $ff
	sub e                                            ; $6456: $93
	nop                                              ; $6457: $00
	ld a, b                                          ; $6458: $78
	nop                                              ; $6459: $00
	dec sp                                           ; $645a: $3b
	ld a, h                                          ; $645b: $7c
	rra                                              ; $645c: $1f
	ccf                                              ; $645d: $3f
	rrca                                             ; $645e: $0f
	rra                                              ; $645f: $1f
	inc bc                                           ; $6460: $03
	ld bc, $fa01                                     ; $6461: $01 $01 $fa
	sbc c                                            ; $6464: $99
	cp $7c                                           ; $6465: $fe $7c
	ld hl, sp-$20                                    ; $6467: $f8 $e0
	pop hl                                           ; $6469: $e1
	ret nz                                           ; $646a: $c0

	inc b                                            ; $646b: $04
	nop                                              ; $646c: $00
	rst SubAFromDE                                          ; $646d: $df
	ld d, a                                          ; $646e: $57
	sub l                                            ; $646f: $95
	add l                                            ; $6470: $85
	reti                                             ; $6471: $d9


	rst $38                                          ; $6472: $ff
	ld sp, hl                                        ; $6473: $f9
	inc bc                                           ; $6474: $03
	ldh a, [$db]                                     ; $6475: $f0 $db
	rst $38                                          ; $6477: $ff
	sbc [hl]                                         ; $6478: $9e
	cp $f9                                           ; $6479: $fe $f9
	sbc $c0                                          ; $647b: $de $c0
	rst SubAFromDE                                          ; $647d: $df
	add b                                            ; $647e: $80
	rst FarCall                                          ; $647f: $f7
	sbc e                                            ; $6480: $9b
	ld [$1f7f], sp                                   ; $6481: $08 $7f $1f
	inc bc                                           ; $6484: $03
	db $f4                                           ; $6485: $f4
	db $dd                                           ; $6486: $dd
	rst $38                                          ; $6487: $ff
	sbc l                                            ; $6488: $9d
	rra                                              ; $6489: $1f
	rlca                                             ; $648a: $07
	ld c, a                                          ; $648b: $4f
	ldh a, [rPCM34]                                  ; $648c: $f0 $77
	db $ed                                           ; $648e: $ed
	inc bc                                           ; $648f: $03
	sub b                                            ; $6490: $90
	inc bc                                           ; $6491: $03
	ldh a, [$03]                                     ; $6492: $f0 $03
	ldh a, [$03]                                     ; $6494: $f0 $03
	ldh a, [$03]                                     ; $6496: $f0 $03
	ldh a, [$03]                                     ; $6498: $f0 $03
	ldh a, [$03]                                     ; $649a: $f0 $03
	ldh a, [rSCX]                                    ; $649c: $f0 $43
	ldh a, [$df]                                     ; $649e: $f0 $df
	cp $df                                           ; $64a0: $fe $df
	db $fc                                           ; $64a2: $fc
	rst SubAFromDE                                          ; $64a3: $df
	ld hl, sp-$63                                    ; $64a4: $f8 $9d
	ldh a, [$f1]                                     ; $64a6: $f0 $f1
	ld sp, hl                                        ; $64a8: $f9
	add b                                            ; $64a9: $80
	inc c                                            ; $64aa: $0c
	dec c                                            ; $64ab: $0d
	ld c, $45                                        ; $64ac: $0e $45
	ld a, [bc]                                       ; $64ae: $0a
	add l                                            ; $64af: $85
	rra                                              ; $64b0: $1f
	scf                                              ; $64b1: $37
	ld [de], a                                       ; $64b2: $12
	jr nc, jr_028_64e5                               ; $64b3: $30 $30

	ld a, [hl-]                                      ; $64b5: $3a
	ld [hl], a                                       ; $64b6: $77
	ld a, e                                          ; $64b7: $7b
	ldh [$cc], a                                     ; $64b8: $e0 $cc
	ld d, b                                          ; $64ba: $50
	dec de                                           ; $64bb: $1b
	ld [hl+], a                                      ; $64bc: $22
	xor $c9                                          ; $64bd: $ee $c9
	ld a, l                                          ; $64bf: $7d
	sub l                                            ; $64c0: $95
	ld [hl], l                                       ; $64c1: $75
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	ld b, b                                          ; $64c4: $40
	nop                                              ; $64c5: $00
	and b                                            ; $64c6: $a0
	add b                                            ; $64c7: $80
	ld [$8f8c], a                                    ; $64c8: $ea $8c $8f
	and b                                            ; $64cb: $a0
	ld hl, sp+$54                                    ; $64cc: $f8 $54
	inc bc                                           ; $64ce: $03
	adc d                                            ; $64cf: $8a
	ld d, h                                          ; $64d0: $54
	inc b                                            ; $64d1: $04
	add hl, bc                                       ; $64d2: $09
	nop                                              ; $64d3: $00
	inc b                                            ; $64d4: $04
	dec hl                                           ; $64d5: $2b
	ld e, h                                          ; $64d6: $5c
	ld [hl], l                                       ; $64d7: $75
	xor e                                            ; $64d8: $ab
	ld a, [hl-]                                      ; $64d9: $3a
	sub $0f                                          ; $64da: $d6 $0f
	ld bc, $96f9                                     ; $64dc: $01 $f9 $96
	add b                                            ; $64df: $80
	ret nz                                           ; $64e0: $c0

	ret nz                                           ; $64e1: $c0

	db $f4                                           ; $64e2: $f4
	ld e, h                                          ; $64e3: $5c
	ld l, [hl]                                       ; $64e4: $6e

jr_028_64e5:
	rst $38                                          ; $64e5: $ff
	rst $38                                          ; $64e6: $ff
	ld a, a                                          ; $64e7: $7f
	ld [hl], a                                       ; $64e8: $77
	db $ed                                           ; $64e9: $ed
	sbc [hl]                                         ; $64ea: $9e
	ldh a, [$fa]                                     ; $64eb: $f0 $fa
	sbc [hl]                                         ; $64ed: $9e
	db $fc                                           ; $64ee: $fc
	call c, Call_028_73ff                            ; $64ef: $dc $ff $73
	db $ed                                           ; $64f2: $ed
	inc bc                                           ; $64f3: $03
	ld [hl], b                                       ; $64f4: $70
	inc bc                                           ; $64f5: $03
	ldh a, [$03]                                     ; $64f6: $f0 $03
	ldh a, [$03]                                     ; $64f8: $f0 $03
	ldh a, [$03]                                     ; $64fa: $f0 $03
	ldh a, [$03]                                     ; $64fc: $f0 $03
	ldh a, [rBGP]                                    ; $64fe: $f0 $47
	ldh a, [$df]                                     ; $6500: $f0 $df
	ldh [$99], a                                     ; $6502: $e0 $99
	ldh [c], a                                       ; $6504: $e2
	pop bc                                           ; $6505: $c1
	add $85                                          ; $6506: $c6 $85
	adc d                                            ; $6508: $8a
	add h                                            ; $6509: $84
	sbc $01                                          ; $650a: $de $01
	rst SubAFromDE                                          ; $650c: $df
	inc bc                                           ; $650d: $03
	rst SubAFromDE                                          ; $650e: $df
	rlca                                             ; $650f: $07
	add b                                            ; $6510: $80
	rrca                                             ; $6511: $0f
	ccf                                              ; $6512: $3f
	ld a, [hl+]                                      ; $6513: $2a
	or l                                             ; $6514: $b5
	ld d, [hl]                                       ; $6515: $56
	jp z, $0018                                     ; $6516: $ca $18 $00

	nop                                              ; $6519: $00
	or $d7                                           ; $651a: $f6 $d7
	ld c, d                                          ; $651c: $4a
	xor c                                            ; $651d: $a9
	dec [hl]                                         ; $651e: $35
	rst SubAFromBC                                          ; $651f: $e7
	rst $38                                          ; $6520: $ff
	rst $38                                          ; $6521: $ff
	xor $dd                                          ; $6522: $ee $dd
	ld a, [de]                                       ; $6524: $1a
	ld l, l                                          ; $6525: $6d
	ret z                                            ; $6526: $c8

	ld [bc], a                                       ; $6527: $02
	jr nz, jr_028_659b                               ; $6528: $20 $71

	dec sp                                           ; $652a: $3b
	ld h, $ef                                        ; $652b: $26 $ef
	sub d                                            ; $652d: $92
	scf                                              ; $652e: $37
	db $fd                                           ; $652f: $fd
	add b                                            ; $6530: $80
	rst SubAFromDE                                          ; $6531: $df
	adc [hl]                                         ; $6532: $8e
	and h                                            ; $6533: $a4
	ldh a, [rBCPS]                                   ; $6534: $f0 $68
	ld e, d                                          ; $6536: $5a
	cp b                                             ; $6537: $b8
	ld [de], a                                       ; $6538: $12
	pop bc                                           ; $6539: $c1
	di                                               ; $653a: $f3
	jp $bf19                                         ; $653b: $c3 $19 $bf


	and l                                            ; $653e: $a5
	ld b, a                                          ; $653f: $47
	db $ed                                           ; $6540: $ed
	ccf                                              ; $6541: $3f
	ld c, $93                                        ; $6542: $0e $93
	ld l, [hl]                                       ; $6544: $6e
	ld e, b                                          ; $6545: $58
	ld [hl-], a                                      ; $6546: $32
	ld l, c                                          ; $6547: $69
	rst JumpTable                                          ; $6548: $c7
	adc $9c                                          ; $6549: $ce $9c
	ld b, a                                          ; $654b: $47
	inc e                                            ; $654c: $1c
	or b                                             ; $654d: $b0
	pop hl                                           ; $654e: $e1
	rst JumpTable                                          ; $654f: $c7
	add b                                            ; $6550: $80
	sbc [hl]                                         ; $6551: $9e
	inc a                                            ; $6552: $3c
	ld a, b                                          ; $6553: $78
	ld b, c                                          ; $6554: $41
	inc c                                            ; $6555: $0c
	ld b, e                                          ; $6556: $43
	ld d, b                                          ; $6557: $50
	ld b, e                                          ; $6558: $43
	inc c                                            ; $6559: $0c
	ld [hl-], a                                      ; $655a: $32
	ld bc, $0380                                     ; $655b: $01 $80 $03
	inc a                                            ; $655e: $3c
	ldh [$80], a                                     ; $655f: $e0 $80
	inc bc                                           ; $6561: $03
	inc c                                            ; $6562: $0c
	nop                                              ; $6563: $00
	add b                                            ; $6564: $80
	ld h, b                                          ; $6565: $60
	db $fc                                           ; $6566: $fc
	ld a, [hl]                                       ; $6567: $7e
	add b                                            ; $6568: $80
	ld a, h                                          ; $6569: $7c
	ccf                                              ; $656a: $3f
	ldh [rP1], a                                     ; $656b: $e0 $00
	add b                                            ; $656d: $80
	nop                                              ; $656e: $00
	ld bc, $7f9b                                     ; $656f: $01 $9b $7f
	add e                                            ; $6572: $83
	nop                                              ; $6573: $00
	rra                                              ; $6574: $1f
	ld e, d                                          ; $6575: $5a
	or l                                             ; $6576: $b5
	sbc l                                            ; $6577: $9d
	add b                                            ; $6578: $80
	ldh a, [rSCY]                                    ; $6579: $f0 $42
	and d                                            ; $657b: $a2
	ld a, a                                          ; $657c: $7f
	db $ed                                           ; $657d: $ed
	db $db                                           ; $657e: $db
	rst $38                                          ; $657f: $ff
	ld a, a                                          ; $6580: $7f
	db $ed                                           ; $6581: $ed
	inc bc                                           ; $6582: $03
	ld b, b                                          ; $6583: $40
	inc bc                                           ; $6584: $03
	ldh a, [$03]                                     ; $6585: $f0 $03
	ldh a, [$03]                                     ; $6587: $f0 $03
	ldh a, [$2f]                                     ; $6589: $f0 $2f
	ldh a, [$6d]                                     ; $658b: $f0 $6d
	adc [hl]                                         ; $658d: $8e
	ld sp, hl                                        ; $658e: $f9
	sbc e                                            ; $658f: $9b
	stop                                             ; $6590: $10 $00
	nop                                              ; $6592: $00
	jr nz, @+$7b                                     ; $6593: $20 $79

	and l                                            ; $6595: $a5
	sbc l                                            ; $6596: $9d
	add c                                            ; $6597: $81
	rrca                                             ; $6598: $0f
	sbc $1f                                          ; $6599: $de $1f

jr_028_659b:
	rst SubAFromDE                                          ; $659b: $df
	ccf                                              ; $659c: $3f
	rst SubAFromDE                                          ; $659d: $df
	ld a, a                                          ; $659e: $7f
	cp $9a                                           ; $659f: $fe $9a
	jr nc, jr_028_661a                               ; $65a1: $30 $77

	rst SubAFromDE                                          ; $65a3: $df
	xor e                                            ; $65a4: $ab
	ld d, l                                          ; $65a5: $55
	sbc $ff                                          ; $65a6: $de $ff
	sbc l                                            ; $65a8: $9d
	rst GetHLinHL                                          ; $65a9: $cf
	ld hl, sp-$22                                    ; $65aa: $f8 $de
	rst $38                                          ; $65ac: $ff
	sbc [hl]                                         ; $65ad: $9e
	ret nz                                           ; $65ae: $c0

	db $fd                                           ; $65af: $fd
	sbc e                                            ; $65b0: $9b
	ld b, b                                          ; $65b1: $40
	ret nz                                           ; $65b2: $c0

	ld b, b                                          ; $65b3: $40
	ccf                                              ; $65b4: $3f
	db $dd                                           ; $65b5: $dd
	rst $38                                          ; $65b6: $ff
	add b                                            ; $65b7: $80
	cp a                                             ; $65b8: $bf
	rst $38                                          ; $65b9: $ff
	rst $38                                          ; $65ba: $ff
	add a                                            ; $65bb: $87
	rlca                                             ; $65bc: $07
	rrca                                             ; $65bd: $0f
	inc c                                            ; $65be: $0c
	ld e, $2b                                        ; $65bf: $1e $2b
	rla                                              ; $65c1: $17
	ld l, e                                          ; $65c2: $6b
	ld a, h                                          ; $65c3: $7c
	db $fd                                           ; $65c4: $fd
	ei                                               ; $65c5: $fb
	rst $38                                          ; $65c6: $ff
	pop af                                           ; $65c7: $f1
	pop bc                                           ; $65c8: $c1
	pop bc                                           ; $65c9: $c1
	add d                                            ; $65ca: $82
	ld a, b                                          ; $65cb: $78
	di                                               ; $65cc: $f3
	and $a9                                          ; $65cd: $e6 $a9
	sub $e9                                          ; $65cf: $d6 $e9
	rst SubAFromHL                                          ; $65d1: $d7
	sbc [hl]                                         ; $65d2: $9e
	ldh a, [$e0]                                     ; $65d3: $f0 $e0
	pop bc                                           ; $65d5: $c1
	add $80                                          ; $65d6: $c6 $80
	adc h                                            ; $65d8: $8c
	inc e                                            ; $65d9: $1c
	jr c, jr_028_664d                                ; $65da: $38 $71

	rst JumpTable                                          ; $65dc: $c7
	sbc h                                            ; $65dd: $9c
	ld sp, $c864                                     ; $65de: $31 $64 $c8
	sub c                                            ; $65e1: $91
	ld [bc], a                                       ; $65e2: $02
	inc h                                            ; $65e3: $24
	nop                                              ; $65e4: $00
	inc bc                                           ; $65e5: $03
	ld c, $18                                        ; $65e6: $0e $18
	jr nc, jr_028_664a                               ; $65e8: $30 $60

	pop hl                                           ; $65ea: $e1
	jp $7c9f                                         ; $65eb: $c3 $9f $7c


	ld [bc], a                                       ; $65ee: $02
	ld l, b                                          ; $65ef: $68
	add c                                            ; $65f0: $81
	inc bc                                           ; $65f1: $03
	ld [de], a                                       ; $65f2: $12
	ld [hl], $60                                     ; $65f3: $36 $60
	add e                                            ; $65f5: $83
	inc c                                            ; $65f6: $0c
	add b                                            ; $65f7: $80
	db $10                                           ; $65f8: $10
	ld h, b                                          ; $65f9: $60
	ret nz                                           ; $65fa: $c0

	add c                                            ; $65fb: $81
	ld bc, $ec24                                     ; $65fc: $01 $24 $ec
	ld c, c                                          ; $65ff: $49
	sub d                                            ; $6600: $92
	xor d                                            ; $6601: $aa
	ld c, b                                          ; $6602: $48
	ld d, h                                          ; $6603: $54
	sub c                                            ; $6604: $91
	db $db                                           ; $6605: $db
	inc de                                           ; $6606: $13
	ld [hl], $64                                     ; $6607: $36 $64
	ld b, h                                          ; $6609: $44
	add h                                            ; $660a: $84
	adc b                                            ; $660b: $88
	ld [rRAMG], sp                                   ; $660c: $08 $00 $00
	ld b, a                                          ; $660f: $47
	ld h, b                                          ; $6610: $60
	ld d, e                                          ; $6611: $53
	ld l, c                                          ; $6612: $69
	ld h, h                                          ; $6613: $64
	ld [hl-], a                                      ; $6614: $32
	db $fc                                           ; $6615: $fc
	rst $38                                          ; $6616: $ff
	sub c                                            ; $6617: $91
	cp b                                             ; $6618: $b8
	sbc a                                            ; $6619: $9f

jr_028_661a:
	adc h                                            ; $661a: $8c
	add [hl]                                         ; $661b: $86
	add e                                            ; $661c: $83
	add c                                            ; $661d: $81
	ld bc, $1000                                     ; $661e: $01 $00 $10
	ld [bc], a                                       ; $6621: $02
	nop                                              ; $6622: $00
	ld [$65c4], sp                                   ; $6623: $08 $c4 $65
	ld a, d                                          ; $6626: $7a
	ld h, $7f                                        ; $6627: $26 $7f
	db $ed                                           ; $6629: $ed
	sbc h                                            ; $662a: $9c
	rlca                                             ; $662b: $07
	inc bc                                           ; $662c: $03
	add e                                            ; $662d: $83
	ld a, d                                          ; $662e: $7a
	or l                                             ; $662f: $b5
	sbc [hl]                                         ; $6630: $9e
	inc bc                                           ; $6631: $03
	ld a, $8f                                        ; $6632: $3e $8f
	ld h, e                                          ; $6634: $63
	db $ed                                           ; $6635: $ed
	ld h, a                                          ; $6636: $67
	jr nz, jr_028_66b0                               ; $6637: $20 $77

	ld c, b                                          ; $6639: $48
	inc bc                                           ; $663a: $03
	nop                                              ; $663b: $00
	inc bc                                           ; $663c: $03
	ldh a, [$03]                                     ; $663d: $f0 $03
	ldh a, [rIE]                                     ; $663f: $f0 $ff
	sub l                                            ; $6641: $95
	ld hl, sp-$0f                                    ; $6642: $f8 $f1
	ldh a, [$e0]                                     ; $6644: $f0 $e0
	db $e3                                           ; $6646: $e3
	jp $81c6                                         ; $6647: $c3 $c6 $81


jr_028_664a:
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	ld l, l                                          ; $664c: $6d

jr_028_664d:
	adc [hl]                                         ; $664d: $8e
	sub a                                            ; $664e: $97
	ld bc, $0202                                     ; $664f: $01 $02 $02
	xor h                                            ; $6652: $ac
	ld d, h                                          ; $6653: $54
	xor b                                            ; $6654: $a8
	db $fc                                           ; $6655: $fc
	ld d, a                                          ; $6656: $57
	reti                                             ; $6657: $d9


	rst $38                                          ; $6658: $ff
	sub a                                            ; $6659: $97
	xor d                                            ; $665a: $aa
	ld [hl], l                                       ; $665b: $75
	rrca                                             ; $665c: $0f
	ld [bc], a                                       ; $665d: $02
	ld [bc], a                                       ; $665e: $02
	inc b                                            ; $665f: $04
	inc b                                            ; $6660: $04
	adc b                                            ; $6661: $88
	reti                                             ; $6662: $d9


	rst $38                                          ; $6663: $ff
	rst SubAFromDE                                          ; $6664: $df
	add b                                            ; $6665: $80
	ld a, a                                          ; $6666: $7f
	rst SubAFromHL                                          ; $6667: $d7
	sbc e                                            ; $6668: $9b
	nop                                              ; $6669: $00
	ld [bc], a                                       ; $666a: $02
	nop                                              ; $666b: $00
	inc b                                            ; $666c: $04
	sbc $ff                                          ; $666d: $de $ff
	ld [hl], d                                       ; $666f: $72
	add a                                            ; $6670: $87
	add b                                            ; $6671: $80
	ld d, a                                          ; $6672: $57
	and l                                            ; $6673: $a5
	rlca                                             ; $6674: $07
	ld b, $06                                        ; $6675: $06 $06
	dec bc                                           ; $6677: $0b
	dec c                                            ; $6678: $0d
	ld c, $82                                        ; $6679: $0e $82
	ld b, $04                                        ; $667b: $06 $04
	dec b                                            ; $667d: $05
	dec b                                            ; $667e: $05
	dec c                                            ; $667f: $0d
	dec bc                                           ; $6680: $0b
	dec bc                                           ; $6681: $0b
	xor [hl]                                         ; $6682: $ae
	ld a, h                                          ; $6683: $7c
	ld e, c                                          ; $6684: $59
	ld sp, hl                                        ; $6685: $f9
	ldh a, [c]                                       ; $6686: $f2
	or e                                             ; $6687: $b3
	and l                                            ; $6688: $a5
	and a                                            ; $6689: $a7
	ld [hl], c                                       ; $668a: $71
	db $e3                                           ; $668b: $e3
	rst SubAFromBC                                          ; $668c: $e7
	rst JumpTable                                          ; $668d: $c7
	rst GetHLinHL                                          ; $668e: $cf
	adc $de                                          ; $668f: $ce $de
	add b                                            ; $6691: $80
	call c, $5849                                    ; $6692: $dc $49 $58
	or [hl]                                          ; $6695: $b6
	xor e                                            ; $6696: $ab
	jp z, $9dce                                      ; $6697: $ca $ce $9d

	sbc c                                            ; $669a: $99

jr_028_669b:
	add [hl]                                         ; $669b: $86
	add [hl]                                         ; $669c: $86
	inc c                                            ; $669d: $0c
	inc e                                            ; $669e: $1c
	dec a                                            ; $669f: $3d
	add hl, sp                                       ; $66a0: $39
	ld a, e                                          ; $66a1: $7b
	ld a, a                                          ; $66a2: $7f
	ld h, h                                          ; $66a3: $64
	call $5d89                                       ; $66a4: $cd $89 $5d
	or l                                             ; $66a7: $b5
	or l                                             ; $66a8: $b5
	xor l                                            ; $66a9: $ad
	xor l                                            ; $66aa: $ad
	inc bc                                           ; $66ab: $03
	ld [hl+], a                                      ; $66ac: $22
	ld h, [hl]                                       ; $66ad: $66
	and $ce                                          ; $66ae: $e6 $ce

jr_028_66b0:
	adc $df                                          ; $66b0: $ce $df
	sbc $95                                          ; $66b2: $de $95
	adc c                                            ; $66b4: $89
	jr z, jr_028_66e9                                ; $66b5: $28 $32

Call_028_66b7:
	ld [bc], a                                       ; $66b7: $02
	ld [hl-], a                                      ; $66b8: $32
	ld d, l                                          ; $66b9: $55
	dec [hl]                                         ; $66ba: $35
	xor c                                            ; $66bb: $a9
	db $10                                           ; $66bc: $10
	ld de, $01de                                     ; $66bd: $11 $de $01
	add e                                            ; $66c0: $83
	inc hl                                           ; $66c1: $23
	ld h, e                                          ; $66c2: $63
	ld [hl], a                                       ; $66c3: $77
	jr nz, jr_028_66cf                               ; $66c4: $20 $09

	ld [$3414], sp                                   ; $66c6: $08 $14 $34
	ld [hl+], a                                      ; $66c9: $22
	ld c, b                                          ; $66ca: $48

jr_028_66cb:
	ret                                              ; $66cb: $c9


	sub c                                            ; $66cc: $91
	sub b                                            ; $66cd: $90
	sub b                                            ; $66ce: $90

jr_028_66cf:
	sbc b                                            ; $66cf: $98
	sbc b                                            ; $66d0: $98
	sbc h                                            ; $66d1: $9c
	cp [hl]                                          ; $66d2: $be
	cp [hl]                                          ; $66d3: $be
	ld h, c                                          ; $66d4: $61
	and c                                            ; $66d5: $a1
	and c                                            ; $66d6: $a1
	ld sp, $51d1                                     ; $66d7: $31 $d1 $51
	ld de, $8329                                     ; $66da: $11 $29 $83
	sbc $c3                                          ; $66dd: $de $c3
	sbc $63                                          ; $66df: $de $63
	rst SubAFromDE                                          ; $66e1: $df
	ld [hl], e                                       ; $66e2: $73
	sub h                                            ; $66e3: $94
	jr c, jr_028_669b                                ; $66e4: $38 $b5

	sub b                                            ; $66e6: $90
	sbc d                                            ; $66e7: $9a
	adc b                                            ; $66e8: $88

jr_028_66e9:
	xor b                                            ; $66e9: $a8
	call nz, $c68c                                   ; $66ea: $c4 $8c $c6
	ld b, d                                          ; $66ed: $42
	ld b, e                                          ; $66ee: $43
	sbc $41                                          ; $66ef: $de $41
	adc [hl]                                         ; $66f1: $8e
	ld hl, $9c20                                     ; $66f2: $21 $20 $9c
	ld c, d                                          ; $66f5: $4a
	ld hl, $90a4                                     ; $66f6: $21 $a4 $90
	ld [de], a                                       ; $66f9: $12
	ld [de], a                                       ; $66fa: $12
	ret nz                                           ; $66fb: $c0

	ld h, b                                          ; $66fc: $60
	ld sp, $1818                                     ; $66fd: $31 $18 $18
	inc c                                            ; $6700: $0c
	adc h                                            ; $6701: $8c
	adc h                                            ; $6702: $8c
	ld a, d                                          ; $6703: $7a
	or l                                             ; $6704: $b5
	sbc d                                            ; $6705: $9a
	jr nz, jr_028_6740                               ; $6706: $20 $38

	sbc a                                            ; $6708: $9f
	dec e                                            ; $6709: $1d
	ld e, $74                                        ; $670a: $1e $74
	or l                                             ; $670c: $b5
	sbc [hl]                                         ; $670d: $9e
	ld hl, sp-$22                                    ; $670e: $f8 $de
	ld a, a                                          ; $6710: $7f
	ld l, [hl]                                       ; $6711: $6e
	and d                                            ; $6712: $a2
	sbc l                                            ; $6713: $9d
	and b                                            ; $6714: $a0
	ret c                                            ; $6715: $d8

	ld l, b                                          ; $6716: $68
	and d                                            ; $6717: $a2
	ld [hl], l                                       ; $6718: $75
	db $fd                                           ; $6719: $fd
	ld a, e                                          ; $671a: $7b
	db $ed                                           ; $671b: $ed
	sbc [hl]                                         ; $671c: $9e
	rra                                              ; $671d: $1f
	ld h, d                                          ; $671e: $62
	adc a                                            ; $671f: $8f
	ld [bc], a                                       ; $6720: $02
	ret nc                                           ; $6721: $d0

	dec sp                                           ; $6722: $3b
	ldh a, [$de]                                     ; $6723: $f0 $de
	cp $9e                                           ; $6725: $fe $9e
	db $fc                                           ; $6727: $fc
	ld h, d                                          ; $6728: $62
	inc a                                            ; $6729: $3c
	ld a, [hl]                                       ; $672a: $7e
	ldh a, [$fc]                                     ; $672b: $f0 $fc
	sbc [hl]                                         ; $672d: $9e
	inc bc                                           ; $672e: $03
	ld l, b                                          ; $672f: $68
	call z, $aa97                                    ; $6730: $cc $97 $aa
	ld d, l                                          ; $6733: $55
	jr z, jr_028_66cb                                ; $6734: $28 $95

	ld a, [hl+]                                      ; $6736: $2a
	dec d                                            ; $6737: $15
	ld a, [de]                                       ; $6738: $1a
	rrca                                             ; $6739: $0f
	sbc $ff                                          ; $673a: $de $ff
	sub e                                            ; $673c: $93
	ld l, d                                          ; $673d: $6a
	ld d, l                                          ; $673e: $55
	ld a, [hl+]                                      ; $673f: $2a

jr_028_6740:
	dec b                                            ; $6740: $05
	nop                                              ; $6741: $00
	cp $55                                           ; $6742: $fe $55
	ld [bc], a                                       ; $6744: $02
	nop                                              ; $6745: $00
	xor b                                            ; $6746: $a8
	ld d, l                                          ; $6747: $55
	xor d                                            ; $6748: $aa
	call c, $80ff                                    ; $6749: $dc $ff $80
	ld d, a                                          ; $674c: $57
	xor d                                            ; $674d: $aa
	ld d, l                                          ; $674e: $55
	nop                                              ; $674f: $00
	xor [hl]                                         ; $6750: $ae
	ld d, e                                          ; $6751: $53
	xor c                                            ; $6752: $a9
	nop                                              ; $6753: $00
	adc d                                            ; $6754: $8a
	ld d, b                                          ; $6755: $50
	xor d                                            ; $6756: $aa
	db $fd                                           ; $6757: $fd
	ld hl, sp-$04                                    ; $6758: $f8 $fc
	cp $ff                                           ; $675a: $fe $ff
	ld [hl], l                                       ; $675c: $75
	xor a                                            ; $675d: $af
	ld d, l                                          ; $675e: $55
	ld [bc], a                                       ; $675f: $02
	rrca                                             ; $6760: $0f
	ld a, [bc]                                       ; $6761: $0a
	adc d                                            ; $6762: $8a
	ld b, h                                          ; $6763: $44
	and [hl]                                         ; $6764: $a6
	ld d, h                                          ; $6765: $54
	cp h                                             ; $6766: $bc
	ld e, h                                          ; $6767: $5c
	ld a, [bc]                                       ; $6768: $0a
	ld c, $0e                                        ; $6769: $0e $0e
	ld a, [hl]                                       ; $676b: $7e
	cp [hl]                                          ; $676c: $be
	add b                                            ; $676d: $80
	add h                                            ; $676e: $84
	ld b, h                                          ; $676f: $44
	and b                                            ; $6770: $a0
	and a                                            ; $6771: $a7
	adc a                                            ; $6772: $8f
	adc [hl]                                         ; $6773: $8e
	adc [hl]                                         ; $6774: $8e
	sbc [hl]                                         ; $6775: $9e
	sub h                                            ; $6776: $94
	push de                                          ; $6777: $d5
	ld d, l                                          ; $6778: $55
	call c, $fdfc                                    ; $6779: $dc $fc $fd
	db $fd                                           ; $677c: $fd
	push af                                          ; $677d: $f5
	rst FarCall                                          ; $677e: $f7
	ld [hl], a                                       ; $677f: $77
	ld [hl], a                                       ; $6780: $77
	dec sp                                           ; $6781: $3b
	dec sp                                           ; $6782: $3b
	ld a, h                                          ; $6783: $7c
	ld a, e                                          ; $6784: $7b
	ret                                              ; $6785: $c9


	add b                                            ; $6786: $80
	ld a, $4f                                        ; $6787: $3e $4f
	xor $ee                                          ; $6789: $ee $ee
	rst GetHLinHL                                          ; $678b: $cf
	rst GetHLinHL                                          ; $678c: $cf
	adc c                                            ; $678d: $89
	cp [hl]                                          ; $678e: $be
	rst $38                                          ; $678f: $ff
	pop bc                                           ; $6790: $c1
	add b                                            ; $6791: $80
	sbc h                                            ; $6792: $9c
	sbc [hl]                                         ; $6793: $9e
	cp [hl]                                          ; $6794: $be
	cp $de                                           ; $6795: $fe $de
	ld a, a                                          ; $6797: $7f
	rrca                                             ; $6798: $0f
	jp $f3f7                                         ; $6799: $c3 $f7 $f3


	db $e3                                           ; $679c: $e3
	db $e3                                           ; $679d: $e3
	ld [hl], e                                       ; $679e: $73
	pop bc                                           ; $679f: $c1
	pop af                                           ; $67a0: $f1
	dec a                                            ; $67a1: $3d
	ld hl, $de21                                     ; $67a2: $21 $21 $de
	ld sp, $39df                                     ; $67a5: $31 $df $39
	sbc [hl]                                         ; $67a8: $9e
	dec a                                            ; $67a9: $3d
	call c, $dfff                                    ; $67aa: $dc $ff $df
	rst AddAOntoHL                                          ; $67ad: $ef
	sub [hl]                                         ; $67ae: $96
	rst SubAFromBC                                          ; $67af: $e7
	adc b                                            ; $67b0: $88
	adc b                                            ; $67b1: $88
	adc h                                            ; $67b2: $8c
	call z, $cece                                    ; $67b3: $cc $ce $ce
	rst AddAOntoHL                                          ; $67b6: $ef
	rst AddAOntoHL                                          ; $67b7: $ef
	ld [hl], a                                       ; $67b8: $77
	ld a, [de]                                       ; $67b9: $1a
	sub e                                            ; $67ba: $93
	ld a, a                                          ; $67bb: $7f
	ld a, e                                          ; $67bc: $7b
	add hl, sp                                       ; $67bd: $39
	add hl, sp                                       ; $67be: $39
	ld l, c                                          ; $67bf: $69
	ld l, b                                          ; $67c0: $68
	sbc b                                            ; $67c1: $98
	sub h                                            ; $67c2: $94
	ld [hl], h                                       ; $67c3: $74
	ld l, h                                          ; $67c4: $6c
	jr z, jr_028_67ff                                ; $67c5: $28 $38

	sbc $33                                          ; $67c7: $de $33
	sub b                                            ; $67c9: $90
	dec sp                                           ; $67ca: $3b
	sbc e                                            ; $67cb: $9b
	sbc e                                            ; $67cc: $9b
	rst SubAFromDE                                          ; $67cd: $df
	rst GetHLinHL                                          ; $67ce: $cf
	ld b, b                                          ; $67cf: $40
	call nc, $e2e4                                   ; $67d0: $d4 $e4 $e2
	ldh [c], a                                       ; $67d3: $e2
	ld [$b3ab], a                                    ; $67d4: $ea $ab $b3
	and b                                            ; $67d7: $a0
	and b                                            ; $67d8: $a0
	db $dd                                           ; $67d9: $dd
	sub b                                            ; $67da: $90
	sbc e                                            ; $67db: $9b
	ret nc                                           ; $67dc: $d0

	ret z                                            ; $67dd: $c8

	ld b, b                                          ; $67de: $40
	ld c, c                                          ; $67df: $49
	sbc $09                                          ; $67e0: $de $09
	sbc d                                            ; $67e2: $9a
	add hl, hl                                       ; $67e3: $29
	ld hl, $8e23                                     ; $67e4: $21 $23 $8e
	add [hl]                                         ; $67e7: $86
	db $dd                                           ; $67e8: $dd
	add $df                                          ; $67e9: $c6 $df
	adc $96                                          ; $67eb: $ce $96
	dec e                                            ; $67ed: $1d
	ld e, a                                          ; $67ee: $5f
	ld e, a                                          ; $67ef: $5f
	ld e, e                                          ; $67f0: $5b
	ld e, [hl]                                       ; $67f1: $5e
	ld e, e                                          ; $67f2: $5b
	ld [hl], l                                       ; $67f3: $75
	ei                                               ; $67f4: $fb
	ld a, a                                          ; $67f5: $7f
	jp c, $973f                                      ; $67f6: $da $3f $97

	cp [hl]                                          ; $67f9: $be
	ld a, a                                          ; $67fa: $7f
	db $eb                                           ; $67fb: $eb
	jp z, $9cde                                      ; $67fc: $ca $de $9c

jr_028_67ff:
	xor l                                            ; $67ff: $ad
	dec de                                           ; $6800: $1b
	ld h, d                                          ; $6801: $62
	ld hl, sp+$7e                                    ; $6802: $f8 $7e
	sub a                                            ; $6804: $97
	sbc [hl]                                         ; $6805: $9e
	ld b, b                                          ; $6806: $40
	ld a, e                                          ; $6807: $7b
	inc c                                            ; $6808: $0c
	sbc c                                            ; $6809: $99
	inc b                                            ; $680a: $04
	nop                                              ; $680b: $00
	ret nz                                           ; $680c: $c0

	ldh [$e0], a                                     ; $680d: $e0 $e0
	ret nz                                           ; $680f: $c0

	ld a, e                                          ; $6810: $7b
	rst FarCall                                          ; $6811: $f7
	ld e, d                                          ; $6812: $5a
	or l                                             ; $6813: $b5
	ld h, d                                          ; $6814: $62
	ldh [$57], a                                     ; $6815: $e0 $57
	db $ed                                           ; $6817: $ed
	ld b, [hl]                                       ; $6818: $46
	ret nz                                           ; $6819: $c0

	ld a, b                                          ; $681a: $78
	ld d, l                                          ; $681b: $55
	rst SubAFromDE                                          ; $681c: $df
	ldh a, [$7b]                                     ; $681d: $f0 $7b
	push bc                                          ; $681f: $c5
	jp hl                                            ; $6820: $e9


	sbc l                                            ; $6821: $9d
	ld a, [bc]                                       ; $6822: $0a
	dec b                                            ; $6823: $05
	db $fc                                           ; $6824: $fc
	ld a, [hl]                                       ; $6825: $7e
	set 7, d                                         ; $6826: $cb $fa
	ld a, [hl]                                       ; $6828: $7e
	call $a67a                                       ; $6829: $cd $7a $a6
	sbc h                                            ; $682c: $9c
	adc d                                            ; $682d: $8a
	dec h                                            ; $682e: $25
	ld a, [bc]                                       ; $682f: $0a
	ld sp, hl                                        ; $6830: $f9
	sub a                                            ; $6831: $97
	xor e                                            ; $6832: $ab
	ld d, h                                          ; $6833: $54
	cp d                                             ; $6834: $ba
	ld a, l                                          ; $6835: $7d
	jp c, $022d                                      ; $6836: $da $2d $02

	xor c                                            ; $6839: $a9
	ld sp, hl                                        ; $683a: $f9
	sub a                                            ; $683b: $97
	cp $38                                           ; $683c: $fe $38
	nop                                              ; $683e: $00
	db $e4                                           ; $683f: $e4
	ld a, [$a854]                                    ; $6840: $fa $54 $a8
	ld d, h                                          ; $6843: $54
	ld sp, hl                                        ; $6844: $f9
	sub e                                            ; $6845: $93
	ld d, l                                          ; $6846: $55
	ld h, l                                          ; $6847: $65
	inc hl                                           ; $6848: $23
	inc hl                                           ; $6849: $23
	ld bc, $8101                                     ; $684a: $01 $01 $81
	ld hl, $2777                                     ; $684d: $21 $77 $27
	ld [hl+], a                                      ; $6850: $22
	ld [hl+], a                                      ; $6851: $22
	ld [hl], a                                       ; $6852: $77
	cp e                                             ; $6853: $bb
	sub d                                            ; $6854: $92
	rra                                              ; $6855: $1f
	db $dd                                           ; $6856: $dd
	ld e, c                                          ; $6857: $59
	ld c, d                                          ; $6858: $4a
	ld b, d                                          ; $6859: $42
	ld b, c                                          ; $685a: $41
	ld b, c                                          ; $685b: $41
	ld b, b                                          ; $685c: $40
	add a                                            ; $685d: $87
	ld a, a                                          ; $685e: $7f
	ld c, l                                          ; $685f: $4d
	ld b, d                                          ; $6860: $42
	ld b, d                                          ; $6861: $42
	sbc $43                                          ; $6862: $de $43
	add b                                            ; $6864: $80
	di                                               ; $6865: $f3
	ld sp, hl                                        ; $6866: $f9
	add hl, sp                                       ; $6867: $39
	add hl, de                                       ; $6868: $19
	ld a, c                                          ; $6869: $79
	ld hl, sp-$05                                    ; $686a: $f8 $fb
	sbc e                                            ; $686c: $9b
	call z, $36e6                                    ; $686d: $cc $e6 $36
	ld [hl], $f6                                     ; $6870: $36 $f6
	rst FarCall                                          ; $6872: $f7
	rst FarCall                                          ; $6873: $f7
	and h                                            ; $6874: $a4
	cp h                                             ; $6875: $bc
	cp [hl]                                          ; $6876: $be
	rst $38                                          ; $6877: $ff
	db $fc                                           ; $6878: $fc
	ldh a, [rPCM12]                                  ; $6879: $f0 $76
	inc b                                            ; $687b: $04
	db $ed                                           ; $687c: $ed
	rst SubAFromBC                                          ; $687d: $e7
	db $e3                                           ; $687e: $e3
	ld h, c                                          ; $687f: $61
	ld h, e                                          ; $6880: $63
	cpl                                              ; $6881: $2f
	xor h                                            ; $6882: $ac
	db $fc                                           ; $6883: $fc
	sub d                                            ; $6884: $92
	ld hl, sp-$29                                    ; $6885: $f8 $d7
	push af                                          ; $6887: $f5
	ld a, [$43df]                                    ; $6888: $fa $df $43
	jr nz, jr_028_6909                               ; $688b: $20 $7c

	ld a, e                                          ; $688d: $7b
	db $fd                                           ; $688e: $fd
	cp [hl]                                          ; $688f: $be
	adc a                                            ; $6890: $8f
	rst SubAFromBC                                          ; $6891: $e7
	ld a, e                                          ; $6892: $7b
	scf                                              ; $6893: $37
	add b                                            ; $6894: $80
	db $fc                                           ; $6895: $fc
	inc a                                            ; $6896: $3c
	sub h                                            ; $6897: $94
	sbc h                                            ; $6898: $9c
	ld e, [hl]                                       ; $6899: $5e
	adc $eb                                          ; $689a: $ce $eb
	inc sp                                           ; $689c: $33
	add hl, bc                                       ; $689d: $09
	rst GetHLinHL                                          ; $689e: $cf
	rst AddAOntoHL                                          ; $689f: $ef
	rst SubAFromBC                                          ; $68a0: $e7
	rst SubAFromBC                                          ; $68a1: $e7
	rst FarCall                                          ; $68a2: $f7
	rst FarCall                                          ; $68a3: $f7
	rst $38                                          ; $68a4: $ff
	rst $38                                          ; $68a5: $ff
	ld [hl], a                                       ; $68a6: $77
	halt                                             ; $68a7: $76
	ld d, [hl]                                       ; $68a8: $56
	ld e, d                                          ; $68a9: $5a
	ld a, [hl-]                                      ; $68aa: $3a
	ld l, $2e                                        ; $68ab: $2e $2e
	sub [hl]                                         ; $68ad: $96
	ret z                                            ; $68ae: $c8

	ret                                              ; $68af: $c9


	jp hl                                            ; $68b0: $e9


	push hl                                          ; $68b1: $e5
	push hl                                          ; $68b2: $e5
	push af                                          ; $68b3: $f5
	sub e                                            ; $68b4: $93
	push af                                          ; $68b5: $f5
	db $fd                                           ; $68b6: $fd
	inc hl                                           ; $68b7: $23
	inc sp                                           ; $68b8: $33
	inc de                                           ; $68b9: $13
	ld d, e                                          ; $68ba: $53
	ld d, e                                          ; $68bb: $53
	ld d, l                                          ; $68bc: $55
	ld d, l                                          ; $68bd: $55
	ld d, a                                          ; $68be: $57
	adc $ce                                          ; $68bf: $ce $ce
	call c, $86ee                                    ; $68c1: $dc $ee $86
	db $ec                                           ; $68c4: $ec
	push af                                          ; $68c5: $f5
	ldh [c], a                                       ; $68c6: $e2
	ld [$c0ec], a                                    ; $68c7: $ea $ec $c0
	ret nc                                           ; $68ca: $d0

	call nc, $3fd4                                   ; $68cb: $d4 $d4 $3f
	ccf                                              ; $68ce: $3f
	scf                                              ; $68cf: $37
	ld [hl], a                                       ; $68d0: $77
	ld a, a                                          ; $68d1: $7f
	ld l, a                                          ; $68d2: $6f
	ld l, e                                          ; $68d3: $6b
	db $eb                                           ; $68d4: $eb
	ld l, $5e                                        ; $68d5: $2e $5e
	inc a                                            ; $68d7: $3c
	ld e, h                                          ; $68d8: $5c
	cp b                                             ; $68d9: $b8
	ld a, d                                          ; $68da: $7a
	pop af                                           ; $68db: $f1
	di                                               ; $68dc: $f3
	ld l, h                                          ; $68dd: $6c
	jp nc, $047f                                     ; $68de: $d2 $7f $04

	add b                                            ; $68e1: $80
	nop                                              ; $68e2: $00
	add hl, de                                       ; $68e3: $19
	ld [bc], a                                       ; $68e4: $02
	call nc, $22c8                                   ; $68e5: $d4 $c8 $22
	ld e, b                                          ; $68e8: $58
	dec c                                            ; $68e9: $0d
	inc c                                            ; $68ea: $0c
	inc b                                            ; $68eb: $04
	ld bc, $1703                                     ; $68ec: $01 $03 $17
	ld e, l                                          ; $68ef: $5d
	daa                                              ; $68f0: $27
	di                                               ; $68f1: $f3
	ld [$d526], sp                                   ; $68f2: $08 $26 $d5
	xor h                                            ; $68f5: $ac
	ld d, $04                                        ; $68f6: $16 $04
	inc b                                            ; $68f8: $04
	ld h, b                                          ; $68f9: $60
	nop                                              ; $68fa: $00
	jr jr_028_68ff                                   ; $68fb: $18 $02

	ld b, e                                          ; $68fd: $43
	pop hl                                           ; $68fe: $e1

jr_028_68ff:
	ei                                               ; $68ff: $fb
	ei                                               ; $6900: $fb
	sbc [hl]                                         ; $6901: $9e
	sbc a                                            ; $6902: $9f
	rst FarCall                                          ; $6903: $f7
	sbc c                                            ; $6904: $99
	add c                                            ; $6905: $81
	pop bc                                           ; $6906: $c1
	pop hl                                           ; $6907: $e1
	db $e3                                           ; $6908: $e3

jr_028_6909:
	jp $dbc7                                         ; $6909: $c3 $c7 $db


	rst $38                                          ; $690c: $ff
	rst SubAFromDE                                          ; $690d: $df
	cp $f9                                           ; $690e: $fe $f9
	rst SubAFromDE                                          ; $6910: $df
	ret nz                                           ; $6911: $c0

	ld h, l                                          ; $6912: $65
	adc [hl]                                         ; $6913: $8e
	rst FarCall                                          ; $6914: $f7
	sbc e                                            ; $6915: $9b
	dec d                                            ; $6916: $15
	ld a, [bc]                                       ; $6917: $0a
	dec d                                            ; $6918: $15
	xor d                                            ; $6919: $aa
	ld hl, sp-$67                                    ; $691a: $f8 $99
	ld [bc], a                                       ; $691c: $02
	add hl, bc                                       ; $691d: $09
	inc b                                            ; $691e: $04
	ld b, c                                          ; $691f: $41
	xor d                                            ; $6920: $aa
	ld [hl], l                                       ; $6921: $75
	ld h, d                                          ; $6922: $62
	sub b                                            ; $6923: $90
	ld a, c                                          ; $6924: $79
	ld [hl], e                                       ; $6925: $73
	sbc d                                            ; $6926: $9a
	dec hl                                           ; $6927: $2b
	ld e, a                                          ; $6928: $5f
	xor [hl]                                         ; $6929: $ae
	ld d, l                                          ; $692a: $55
	ld [$97f9], a                                    ; $692b: $ea $f9 $97
	ld d, b                                          ; $692e: $50
	and b                                            ; $692f: $a0
	call nc, Call_028_4aa0                           ; $6930: $d4 $a0 $4a
	and b                                            ; $6933: $a0
	ld d, l                                          ; $6934: $55
	and b                                            ; $6935: $a0
	ld h, d                                          ; $6936: $62
	sub b                                            ; $6937: $90
	sbc c                                            ; $6938: $99
	dec h                                            ; $6939: $25
	sub b                                            ; $693a: $90
	ld bc, $854a                                     ; $693b: $01 $4a $85
	ld c, b                                          ; $693e: $48
	ld hl, sp-$7b                                    ; $693f: $f8 $85
	db $10                                           ; $6941: $10
	ld b, c                                          ; $6942: $41
	ld b, $4b                                        ; $6943: $06 $4b
	halt                                             ; $6945: $76
	and l                                            ; $6946: $a5
	sub e                                            ; $6947: $93
	sbc c                                            ; $6948: $99
	nop                                              ; $6949: $00
	ld bc, $0c07                                     ; $694a: $01 $07 $0c
	ld e, c                                          ; $694d: $59
	db $e3                                           ; $694e: $e3
	di                                               ; $694f: $f3
	pop af                                           ; $6950: $f1
	ld b, d                                          ; $6951: $42
	add c                                            ; $6952: $81
	ldh [$9c], a                                     ; $6953: $e0 $9c
	add e                                            ; $6955: $83
	add b                                            ; $6956: $80
	add b                                            ; $6957: $80
	ret nz                                           ; $6958: $c0

	ld b, e                                          ; $6959: $43
	add c                                            ; $695a: $81
	db $db                                           ; $695b: $db
	add b                                            ; $695c: $80
	sub [hl]                                         ; $695d: $96
	cpl                                              ; $695e: $2f
	ret z                                            ; $695f: $c8

	ld [$e210], sp                                   ; $6960: $08 $10 $e2
	rlca                                             ; $6963: $07
	rrca                                             ; $6964: $0f
	dec de                                           ; $6965: $1b
	add b                                            ; $6966: $80
	ld [hl], d                                       ; $6967: $72
	ld a, $94                                        ; $6968: $3e $94
	ld [$ef0c], sp                                   ; $696a: $08 $0c $ef
	cpl                                              ; $696d: $2f
	rrca                                             ; $696e: $0f
	rlca                                             ; $696f: $07

jr_028_6970:
	jr nz, jr_028_6992                               ; $6970: $20 $20

	and b                                            ; $6972: $a0
	sub b                                            ; $6973: $90
	jr jr_028_6970                                   ; $6974: $18 $fa

	sub e                                            ; $6976: $93
	ccf                                              ; $6977: $3f
	or a                                             ; $6978: $b7
	inc hl                                           ; $6979: $23
	ld b, c                                          ; $697a: $41
	rrca                                             ; $697b: $0f
	rra                                              ; $697c: $1f
	ld e, c                                          ; $697d: $59
	ld b, d                                          ; $697e: $42
	sbc $33                                          ; $697f: $de $33
	ld hl, $7963                                     ; $6981: $21 $63 $79
	ld a, a                                          ; $6984: $7f
	add [hl]                                         ; $6985: $86
	ld a, [hl-]                                      ; $6986: $3a
	call nz, $f0e7                                   ; $6987: $c4 $e7 $f0
	ldh a, [$f7]                                     ; $698a: $f0 $f7
	db $ec                                           ; $698c: $ec
	ld l, h                                          ; $698d: $6c
	ld e, l                                          ; $698e: $5d
	ccf                                              ; $698f: $3f
	rra                                              ; $6990: $1f
	adc a                                            ; $6991: $8f

jr_028_6992:
	rst GetHLinHL                                          ; $6992: $cf
	rst $38                                          ; $6993: $ff

jr_028_6994:
	ld e, a                                          ; $6994: $5f
	rla                                              ; $6995: $17
	daa                                              ; $6996: $27
	call nc, $f868                                   ; $6997: $d4 $68 $f8
	jr c, jr_028_6994                                ; $699a: $38 $f8

	ld hl, sp-$28                                    ; $699c: $f8 $d8
	pop af                                           ; $699e: $f1
	db $db                                           ; $699f: $db
	rst $38                                          ; $69a0: $ff
	add b                                            ; $69a1: $80
	cp a                                             ; $69a2: $bf
	rra                                              ; $69a3: $1f
	ld d, a                                          ; $69a4: $57
	ld [hl], a                                       ; $69a5: $77
	ld a, d                                          ; $69a6: $7a
	cp a                                             ; $69a7: $bf
	cp a                                             ; $69a8: $bf
	xor l                                            ; $69a9: $ad
	rst FarCall                                          ; $69aa: $f7
	ld a, d                                          ; $69ab: $7a
	db $ec                                           ; $69ac: $ec
	call z, $c9cd                                    ; $69ad: $cc $cd $c9
	ret                                              ; $69b0: $c9


	db $db                                           ; $69b1: $db
	sbc e                                            ; $69b2: $9b
	sub a                                            ; $69b3: $97
	add h                                            ; $69b4: $84
	adc c                                            ; $69b5: $89
	xor c                                            ; $69b6: $a9
	xor b                                            ; $69b7: $a8
	ld c, c                                          ; $69b8: $49
	ld e, c                                          ; $69b9: $59
	sub d                                            ; $69ba: $92
	or d                                             ; $69bb: $b2
	ei                                               ; $69bc: $fb
	rst FarCall                                          ; $69bd: $f7
	rst SubAFromHL                                          ; $69be: $d7
	rst SubAFromHL                                          ; $69bf: $d7

jr_028_69c0:
	or [hl]                                          ; $69c0: $b6
	add b                                            ; $69c1: $80
	and [hl]                                         ; $69c2: $a6
	ld l, l                                          ; $69c3: $6d
	ld c, l                                          ; $69c4: $4d
	and c                                            ; $69c5: $a1
	ld h, b                                          ; $69c6: $60
	halt                                             ; $69c7: $76
	call nz, $8550                                   ; $69c8: $c4 $50 $85
	sub d                                            ; $69cb: $92
	jr nz, jr_028_69c0                               ; $69cc: $20 $f2

	db $e3                                           ; $69ce: $e3
	pop bc                                           ; $69cf: $c1
	ld a, e                                          ; $69d0: $7b
	rst AddAOntoHL                                          ; $69d1: $ef
	sbc b                                            ; $69d2: $98
	adc h                                            ; $69d3: $8c
	rra                                              ; $69d4: $1f
	ld e, b                                          ; $69d5: $58
	inc [hl]                                         ; $69d6: $34
	ld b, b                                          ; $69d7: $40
	ld l, d                                          ; $69d8: $6a
	add $a0                                          ; $69d9: $c6 $a0
	adc l                                            ; $69db: $8d
	ld b, $b7                                        ; $69dc: $06 $b7
	rst $38                                          ; $69de: $ff
	cp a                                             ; $69df: $bf
	sbc a                                            ; $69e0: $9f
	ld a, c                                          ; $69e1: $79
	ld e, $93                                        ; $69e2: $1e $93
	rst $38                                          ; $69e4: $ff
	ld d, b                                          ; $69e5: $50
	ld b, b                                          ; $69e6: $40
	inc h                                            ; $69e7: $24
	add hl, bc                                       ; $69e8: $09
	dec b                                            ; $69e9: $05
	ld e, b                                          ; $69ea: $58
	ld l, d                                          ; $69eb: $6a
	ld e, b                                          ; $69ec: $58
	adc a                                            ; $69ed: $8f
	sbc a                                            ; $69ee: $9f
	rst SubAFromDE                                          ; $69ef: $df
	ld [hl], h                                       ; $69f0: $74
	ld l, c                                          ; $69f1: $69
	ld a, h                                          ; $69f2: $7c
	ld l, b                                          ; $69f3: $68
	sub b                                            ; $69f4: $90
	add c                                            ; $69f5: $81
	ld bc, $0313                                     ; $69f6: $01 $13 $03
	inc bc                                           ; $69f9: $03
	rlca                                             ; $69fa: $07
	rlca                                             ; $69fb: $07
	add a                                            ; $69fc: $87
	ld c, $0e                                        ; $69fd: $0e $0e
	inc c                                            ; $69ff: $0c
	inc e                                            ; $6a00: $1c
	inc e                                            ; $6a01: $1c
	jr c, jr_028_6a3c                                ; $6a02: $38 $38

	ld [hl-], a                                      ; $6a04: $32
	nop                                              ; $6a05: $00
	push de                                          ; $6a06: $d5
	ld [hl+], a                                      ; $6a07: $22
	sbc l                                            ; $6a08: $9d
	ld h, [hl]                                       ; $6a09: $66
	ld [hl-], a                                      ; $6a0a: $32
	ld h, e                                          ; $6a0b: $63
	or $9d                                           ; $6a0c: $f6 $9d
	ld h, b                                          ; $6a0e: $60
	nop                                              ; $6a0f: $00
	db $db                                           ; $6a10: $db
	ld [hl+], a                                      ; $6a11: $22
	sbc [hl]                                         ; $6a12: $9e
	ld h, $7b                                        ; $6a13: $26 $7b
	or $9d                                           ; $6a15: $f6 $9d
	nop                                              ; $6a17: $00
	ld [bc], a                                       ; $6a18: $02
	ld l, a                                          ; $6a19: $6f
	or $fd                                           ; $6a1a: $f6 $fd
	ld [hl], a                                       ; $6a1c: $77
	push af                                          ; $6a1d: $f5
	ld a, e                                          ; $6a1e: $7b
	or $df                                           ; $6a1f: $f6 $df
	ld de, $9aff                                     ; $6a21: $11 $ff $9a
	ld h, b                                          ; $6a24: $60
	ld [hl+], a                                      ; $6a25: $22
	ld [hl+], a                                      ; $6a26: $22
	inc sp                                           ; $6a27: $33
	inc sp                                           ; $6a28: $33
	ld [hl], a                                       ; $6a29: $77
	or $9c                                           ; $6a2a: $f6 $9c
	ld b, $63                                        ; $6a2c: $06 $63
	ld [hl-], a                                      ; $6a2e: $32
	ld l, a                                          ; $6a2f: $6f
	or $9b                                           ; $6a30: $f6 $9b
	ld de, $3306                                     ; $6a32: $11 $06 $33
	ld [hl-], a                                      ; $6a35: $32
	ld a, h                                          ; $6a36: $7c
	rlca                                             ; $6a37: $07
	sbc h                                            ; $6a38: $9c
	cp $00                                           ; $6a39: $fe $00
	db $fc                                           ; $6a3b: $fc

jr_028_6a3c:
	ld a, e                                          ; $6a3c: $7b
	cp $9e                                           ; $6a3d: $fe $9e
	ld hl, sp+$7b                                    ; $6a3f: $f8 $7b
	cp $9e                                           ; $6a41: $fe $9e
	ldh a, [$7b]                                     ; $6a43: $f0 $7b
	cp $9e                                           ; $6a45: $fe $9e
	pop af                                           ; $6a47: $f1
	db $fc                                           ; $6a48: $fc
	add b                                            ; $6a49: $80
	ld d, h                                          ; $6a4a: $54
	nop                                              ; $6a4b: $00
	ld a, [hl+]                                      ; $6a4c: $2a
	nop                                              ; $6a4d: $00
	ld [hl], a                                       ; $6a4e: $77
	nop                                              ; $6a4f: $00
	db $f4                                           ; $6a50: $f4
	ld a, [bc]                                       ; $6a51: $0a
	xor c                                            ; $6a52: $a9
	ld d, [hl]                                       ; $6a53: $56
	ld d, d                                          ; $6a54: $52
	xor l                                            ; $6a55: $ad
	ld e, a                                          ; $6a56: $5f
	nop                                              ; $6a57: $00
	dec hl                                           ; $6a58: $2b
	nop                                              ; $6a59: $00
	dec b                                            ; $6a5a: $05
	nop                                              ; $6a5b: $00
	ld [bc], a                                       ; $6a5c: $02
	nop                                              ; $6a5d: $00
	ld d, l                                          ; $6a5e: $55
	nop                                              ; $6a5f: $00
	xor d                                            ; $6a60: $aa
	nop                                              ; $6a61: $00
	ld d, l                                          ; $6a62: $55
	and b                                            ; $6a63: $a0
	adc [hl]                                         ; $6a64: $8e
	ld [hl], b                                       ; $6a65: $70
	ld d, a                                          ; $6a66: $57
	nop                                              ; $6a67: $00
	rst AddAOntoHL                                          ; $6a68: $ef
	sub l                                            ; $6a69: $95
	nop                                              ; $6a6a: $00
	db $fd                                           ; $6a6b: $fd
	nop                                              ; $6a6c: $00
	ld a, [$5700]                                    ; $6a6d: $fa $00 $57
	nop                                              ; $6a70: $00
	ld a, [bc]                                       ; $6a71: $0a
	nop                                              ; $6a72: $00
	ld d, b                                          ; $6a73: $50
	ld a, e                                          ; $6a74: $7b
	db $ec                                           ; $6a75: $ec
	sbc d                                            ; $6a76: $9a
	rst $38                                          ; $6a77: $ff
	nop                                              ; $6a78: $00
	cp a                                             ; $6a79: $bf
	nop                                              ; $6a7a: $00
	push de                                          ; $6a7b: $d5
	ld a, e                                          ; $6a7c: $7b
	ld hl, sp+$7f                                    ; $6a7d: $f8 $7f
	db $f4                                           ; $6a7f: $f4
	db $fd                                           ; $6a80: $fd
	sbc [hl]                                         ; $6a81: $9e
	and b                                            ; $6a82: $a0
	or $df                                           ; $6a83: $f6 $df
	ld bc, $079b                                     ; $6a85: $01 $9b $07
	ld b, $0f                                        ; $6a88: $06 $0f
	ld [$dffd], sp                                   ; $6a8a: $08 $fd $df
	inc bc                                           ; $6a8d: $03
	sbc c                                            ; $6a8e: $99
	ccf                                              ; $6a8f: $3f
	dec a                                            ; $6a90: $3d
	rst $38                                          ; $6a91: $ff
	pop de                                           ; $6a92: $d1
	rst $38                                          ; $6a93: $ff

Call_028_6a94:
	ld de, $fe77                                     ; $6a94: $11 $77 $fe
	add b                                            ; $6a97: $80
	adc b                                            ; $6a98: $88
	ld hl, sp-$7c                                    ; $6a99: $f8 $84
	db $fc                                           ; $6a9b: $fc
	ld b, $fc                                        ; $6a9c: $06 $fc
	ld [bc], a                                       ; $6a9e: $02
	cp $03                                           ; $6a9f: $fe $03
	cp $01                                           ; $6aa1: $fe $01
	rst $38                                          ; $6aa3: $ff
	ld bc, $00ff                                     ; $6aa4: $01 $ff $00
	rst $38                                          ; $6aa7: $ff
	db $fc                                           ; $6aa8: $fc
	ld hl, sp-$31                                    ; $6aa9: $f8 $cf
	ld b, a                                          ; $6aab: $47
	ld h, b                                          ; $6aac: $60
	ld b, b                                          ; $6aad: $40
	ld a, h                                          ; $6aae: $7c
	jr c, @+$29                                      ; $6aaf: $38 $27

	ld h, $33                                        ; $6ab1: $26 $33
	ld de, $109b                                     ; $6ab3: $11 $9b $10
	sbc a                                            ; $6ab6: $9f
	adc c                                            ; $6ab7: $89
	adc b                                            ; $6ab8: $88
	rlca                                             ; $6ab9: $07
	nop                                              ; $6aba: $00
	sub b                                            ; $6abb: $90
	sub b                                            ; $6abc: $90
	db $db                                           ; $6abd: $db
	ld c, [hl]                                       ; $6abe: $4e
	xor $20                                          ; $6abf: $ee $20
	ldh a, [rAUD4LEN]                                ; $6ac1: $f0 $20
	ldh a, [rAUD1SWEEP]                              ; $6ac3: $f0 $10
	ld hl, sp-$70                                    ; $6ac5: $f8 $90
	rst $38                                          ; $6ac7: $ff
	sbc a                                            ; $6ac8: $9f
	inc c                                            ; $6ac9: $0c
	nop                                              ; $6aca: $00
	rlca                                             ; $6acb: $07
	nop                                              ; $6acc: $00
	ld bc, $92fa                                     ; $6acd: $01 $fa $92
	ld a, a                                          ; $6ad0: $7f
	ccf                                              ; $6ad1: $3f
	ldh [$c0], a                                     ; $6ad2: $e0 $c0
	inc h                                            ; $6ad4: $24
	inc e                                            ; $6ad5: $1c
	ld bc, $8300                                     ; $6ad6: $01 $00 $83
	ld h, b                                          ; $6ad9: $60
	jr nz, jr_028_6afb                               ; $6ada: $20 $1f

	rra                                              ; $6adc: $1f
	ld a, e                                          ; $6add: $7b
	add [hl]                                         ; $6ade: $86
	add b                                            ; $6adf: $80
	rst $38                                          ; $6ae0: $ff
	ret nz                                           ; $6ae1: $c0

	ld a, a                                          ; $6ae2: $7f
	ld sp, $2fd9                                     ; $6ae3: $31 $d9 $2f
	cp e                                             ; $6ae6: $bb
	ld c, [hl]                                       ; $6ae7: $4e
	halt                                             ; $6ae8: $76
	sbc l                                            ; $6ae9: $9d
	ld sp, hl                                        ; $6aea: $f9
	ld a, $f3                                        ; $6aeb: $3e $f3
	inc c                                            ; $6aed: $0c
	rst $38                                          ; $6aee: $ff
	ld b, c                                          ; $6aef: $41
	cp $e3                                           ; $6af0: $fe $e3
	sbc h                                            ; $6af2: $9c
	rst $38                                          ; $6af3: $ff
	pop af                                           ; $6af4: $f1
	rra                                              ; $6af5: $1f
	ld d, c                                          ; $6af6: $51
	cp a                                             ; $6af7: $bf
	pop af                                           ; $6af8: $f1
	ccf                                              ; $6af9: $3f
	ldh a, [c]                                       ; $6afa: $f2

jr_028_6afb:
	ld a, a                                          ; $6afb: $7f
	and d                                            ; $6afc: $a2
	rst $38                                          ; $6afd: $ff
	ld [hl+], a                                      ; $6afe: $22
	add b                                            ; $6aff: $80
	rst $38                                          ; $6b00: $ff
	ld b, d                                          ; $6b01: $42
	rst $38                                          ; $6b02: $ff
	ld b, h                                          ; $6b03: $44
	rst $38                                          ; $6b04: $ff
	ld e, h                                          ; $6b05: $5c
	or a                                             ; $6b06: $b7
	db $fc                                           ; $6b07: $fc
	daa                                              ; $6b08: $27
	ld hl, sp+$2f                                    ; $6b09: $f8 $2f
	cp b                                             ; $6b0b: $b8
	ld l, a                                          ; $6b0c: $6f
	ldh a, [$5f]                                     ; $6b0d: $f0 $5f
	ldh [$7f], a                                     ; $6b0f: $e0 $7f
	pop bc                                           ; $6b11: $c1
	rst $38                                          ; $6b12: $ff
	ldh [c], a                                       ; $6b13: $e2
	rst $38                                          ; $6b14: $ff
	ld sp, $21ce                                     ; $6b15: $31 $ce $21
	sbc $24                                          ; $6b18: $de $24
	sbc $44                                          ; $6b1a: $de $44
	cp h                                             ; $6b1c: $bc
	jr z, @-$02                                      ; $6b1d: $28 $fc

	add b                                            ; $6b1f: $80
	call z, Call_028_58f8                            ; $6b20: $cc $f8 $58
	ld hl, sp-$48                                    ; $6b23: $f8 $b8
	ld hl, sp-$70                                    ; $6b25: $f8 $90
	ld l, a                                          ; $6b27: $6f
	ld bc, $82fe                                     ; $6b28: $01 $fe $82
	dec a                                            ; $6b2b: $3d
	db $10                                           ; $6b2c: $10
	ld l, a                                          ; $6b2d: $6f
	dec h                                            ; $6b2e: $25
	rra                                              ; $6b2f: $1f
	dec de                                           ; $6b30: $1b
	cpl                                              ; $6b31: $2f
	dec d                                            ; $6b32: $15
	rrca                                             ; $6b33: $0f
	ld [hl+], a                                      ; $6b34: $22
	rra                                              ; $6b35: $1f
	adc d                                            ; $6b36: $8a
	rst $38                                          ; $6b37: $ff
	ld h, a                                          ; $6b38: $67
	rst SubAFromDE                                          ; $6b39: $df
	adc a                                            ; $6b3a: $8f
	rst $38                                          ; $6b3b: $ff
	rst SubAFromDE                                          ; $6b3c: $df
	rst AddAOntoHL                                          ; $6b3d: $ef
	or e                                             ; $6b3e: $b3
	add d                                            ; $6b3f: $82
	rst $38                                          ; $6b40: $ff
	ld l, l                                          ; $6b41: $6d
	rst $38                                          ; $6b42: $ff
	ld h, a                                          ; $6b43: $67
	rst GetHLinHL                                          ; $6b44: $cf
	jp z, $f83f                                      ; $6b45: $ca $3f $f8

	db $fc                                           ; $6b48: $fc
	ld a, h                                          ; $6b49: $7c
	ld hl, sp-$10                                    ; $6b4a: $f8 $f0
	ld hl, sp+$68                                    ; $6b4c: $f8 $68
	ldh a, [$e0]                                     ; $6b4e: $f0 $e0
	ldh a, [$30]                                     ; $6b50: $f0 $30
	pop hl                                           ; $6b52: $e1
	ld b, b                                          ; $6b53: $40
	pop hl                                           ; $6b54: $e1
	add b                                            ; $6b55: $80
	db $e3                                           ; $6b56: $e3
	rrca                                             ; $6b57: $0f
	ld [hl], b                                       ; $6b58: $70
	rrca                                             ; $6b59: $0f
	ld [hl], b                                       ; $6b5a: $70
	rra                                              ; $6b5b: $1f
	ldh [rPCM34], a                                  ; $6b5c: $e0 $77
	cp $80                                           ; $6b5e: $fe $80
	ccf                                              ; $6b60: $3f
	ret nz                                           ; $6b61: $c0

	ccf                                              ; $6b62: $3f
	ret nz                                           ; $6b63: $c0

	ld a, a                                          ; $6b64: $7f
	add b                                            ; $6b65: $80
	ldh [rSB], a                                     ; $6b66: $e0 $01
	ldh [rSB], a                                     ; $6b68: $e0 $01
	ret nz                                           ; $6b6a: $c0

	inc bc                                           ; $6b6b: $03
	ret nz                                           ; $6b6c: $c0

	inc bc                                           ; $6b6d: $03
	add h                                            ; $6b6e: $84
	inc bc                                           ; $6b6f: $03
	add b                                            ; $6b70: $80
	rlca                                             ; $6b71: $07
	nop                                              ; $6b72: $00
	rrca                                             ; $6b73: $0f
	nop                                              ; $6b74: $00
	rrca                                             ; $6b75: $0f
	dec h                                            ; $6b76: $25
	jp c, $fd02                                      ; $6b77: $da $02 $fd

	dec d                                            ; $6b7a: $15
	ld [$d42b], a                                    ; $6b7b: $ea $2b $d4
	ld d, l                                          ; $6b7e: $55
	adc a                                            ; $6b7f: $8f
	and b                                            ; $6b80: $a0
	ld a, [hl+]                                      ; $6b81: $2a
	ret nz                                           ; $6b82: $c0

	ld e, l                                          ; $6b83: $5d
	and b                                            ; $6b84: $a0
	dec hl                                           ; $6b85: $2b
	call nc, $fc03                                   ; $6b86: $d4 $03 $fc
	and l                                            ; $6b89: $a5
	ld e, d                                          ; $6b8a: $5a
	ret z                                            ; $6b8b: $c8

	scf                                              ; $6b8c: $37
	push af                                          ; $6b8d: $f5
	ld a, [bc]                                       ; $6b8e: $0a
	rst $38                                          ; $6b8f: $ff
	halt                                             ; $6b90: $76
	ret nz                                           ; $6b91: $c0

	ld a, e                                          ; $6b92: $7b
	db $fc                                           ; $6b93: $fc
	ld a, [hl]                                       ; $6b94: $7e
	call nc, Call_028_6a94                           ; $6b95: $d4 $94 $6a
	add b                                            ; $6b98: $80
	rra                                              ; $6b99: $1f
	ret nz                                           ; $6b9a: $c0

jr_028_6b9b:
	ld d, l                                          ; $6b9b: $55
	xor d                                            ; $6b9c: $aa
	xor d                                            ; $6b9d: $aa
	ld d, l                                          ; $6b9e: $55
	push af                                          ; $6b9f: $f5
	ld a, [bc]                                       ; $6ba0: $0a
	ld d, l                                          ; $6ba1: $55
	ld a, d                                          ; $6ba2: $7a
	cp h                                             ; $6ba3: $bc
	ld a, [hl]                                       ; $6ba4: $7e
	sub h                                            ; $6ba5: $94
	ld a, [hl]                                       ; $6ba6: $7e
	or h                                             ; $6ba7: $b4
	add l                                            ; $6ba8: $85
	and h                                            ; $6ba9: $a4
	ld e, b                                          ; $6baa: $58
	ld b, d                                          ; $6bab: $42
	cp h                                             ; $6bac: $bc
	dec d                                            ; $6bad: $15
	ld [$f40b], a                                    ; $6bae: $ea $0b $f4
	rst SubAFromHL                                          ; $6bb1: $d7
	jr z, @+$01                                      ; $6bb2: $28 $ff

	rlca                                             ; $6bb4: $07
	rra                                              ; $6bb5: $1f
	db $10                                           ; $6bb6: $10
	cpl                                              ; $6bb7: $2f
	jr nc, jr_028_6bf9                               ; $6bb8: $30 $3f

	jr nz, jr_028_6c1b                               ; $6bba: $20 $5f

	ld h, b                                          ; $6bbc: $60
	ld a, a                                          ; $6bbd: $7f
	ld b, b                                          ; $6bbe: $40
	and a                                            ; $6bbf: $a7
	ret c                                            ; $6bc0: $d8

	adc a                                            ; $6bc1: $8f
	ldh a, [$7b]                                     ; $6bc2: $f0 $7b
	inc e                                            ; $6bc4: $1c
	sub b                                            ; $6bc5: $90
	add hl, bc                                       ; $6bc6: $09
	rst $38                                          ; $6bc7: $ff
	dec bc                                           ; $6bc8: $0b
	cp $0f                                           ; $6bc9: $fe $0f
	ld a, [$fa0b]                                    ; $6bcb: $fa $0b $fa
	inc de                                           ; $6bce: $13
	ldh a, [c]                                       ; $6bcf: $f2
	inc hl                                           ; $6bd0: $23
	ldh [c], a                                       ; $6bd1: $e2
	ld b, e                                          ; $6bd2: $43
	add $83                                          ; $6bd3: $c6 $83
	ld [hl], a                                       ; $6bd5: $77
	add hl, bc                                       ; $6bd6: $09
	ld d, a                                          ; $6bd7: $57
	cp $96                                           ; $6bd8: $fe $96
	rst GetHLinHL                                          ; $6bda: $cf
	adc h                                            ; $6bdb: $8c
	ld c, a                                          ; $6bdc: $4f
	rst GetHLinHL                                          ; $6bdd: $cf

jr_028_6bde:
	ld c, [hl]                                       ; $6bde: $4e
	db $ec                                           ; $6bdf: $ec
	ld a, b                                          ; $6be0: $78
	ldh a, [$4e]                                     ; $6be1: $f0 $4e
	ld a, e                                          ; $6be3: $7b
	ld [de], a                                       ; $6be4: $12
	ld a, a                                          ; $6be5: $7f
	cp $9e                                           ; $6be6: $fe $9e
	add h                                            ; $6be8: $84
	ld a, d                                          ; $6be9: $7a
	or b                                             ; $6bea: $b0
	sbc l                                            ; $6beb: $9d
	ret nz                                           ; $6bec: $c0

	add b                                            ; $6bed: $80
	db $fd                                           ; $6bee: $fd
	rst SubAFromDE                                          ; $6bef: $df
	rst $38                                          ; $6bf0: $ff
	ld l, e                                          ; $6bf1: $6b
	sbc $fc                                          ; $6bf2: $de $fc
	sbc h                                            ; $6bf4: $9c
	rst $38                                          ; $6bf5: $ff
	ld a, a                                          ; $6bf6: $7f
	add b                                            ; $6bf7: $80
	ld l, e                                          ; $6bf8: $6b

jr_028_6bf9:
	ldh a, [$80]                                     ; $6bf9: $f0 $80
	rra                                              ; $6bfb: $1f
	dec bc                                           ; $6bfc: $0b
	ld c, $07                                        ; $6bfd: $0e $07
	rlca                                             ; $6bff: $07
	ld [bc], a                                       ; $6c00: $02
	rst $38                                          ; $6c01: $ff
	cp $04                                           ; $6c02: $fe $04
	rst $38                                          ; $6c04: $ff
	inc b                                            ; $6c05: $04
	rst $38                                          ; $6c06: $ff
	add hl, bc                                       ; $6c07: $09
	cp $0b                                           ; $6c08: $fe $0b
	db $fc                                           ; $6c0a: $fc
	ld h, [hl]                                       ; $6c0b: $66
	sbc c                                            ; $6c0c: $99
	call z, $9d33                                    ; $6c0d: $cc $33 $9d
	ld h, d                                          ; $6c10: $62
	dec sp                                           ; $6c11: $3b
	call nz, $8c73                                   ; $6c12: $c4 $73 $8c
	rst SubAFromBC                                          ; $6c15: $e7
	jr jr_028_6bde                                   ; $6c16: $18 $c6

	add hl, sp                                       ; $6c18: $39
	jr z, jr_028_6b9b                                ; $6c19: $28 $80

jr_028_6c1b:
	rst FarCall                                          ; $6c1b: $f7
	ld b, l                                          ; $6c1c: $45
	cp a                                             ; $6c1d: $bf
	ret                                              ; $6c1e: $c9


	ccf                                              ; $6c1f: $3f
	srl a                                            ; $6c20: $cb $3f
	sub a                                            ; $6c22: $97
	ld a, a                                          ; $6c23: $7f
	sbc a                                            ; $6c24: $9f
	ld a, a                                          ; $6c25: $7f
	ld a, [hl-]                                      ; $6c26: $3a
	rst $38                                          ; $6c27: $ff
	ccf                                              ; $6c28: $3f
	db $e3                                           ; $6c29: $e3
	ld a, [hl]                                       ; $6c2a: $7e
	ret nz                                           ; $6c2b: $c0

	push bc                                          ; $6c2c: $c5
	rst $38                                          ; $6c2d: $ff
	set 7, a                                         ; $6c2e: $cb $ff
	add l                                            ; $6c30: $85
	rst $38                                          ; $6c31: $ff
	adc e                                            ; $6c32: $8b
	rst $38                                          ; $6c33: $ff
	rla                                              ; $6c34: $17
	rst $38                                          ; $6c35: $ff
	xor e                                            ; $6c36: $ab
	rst $38                                          ; $6c37: $ff
	ld e, a                                          ; $6c38: $5f
	rst $38                                          ; $6c39: $ff
	add b                                            ; $6c3a: $80
	ccf                                              ; $6c3b: $3f
	ld a, a                                          ; $6c3c: $7f
	rst FarCall                                          ; $6c3d: $f7
	ld hl, sp-$02                                    ; $6c3e: $f8 $fe
	pop af                                           ; $6c40: $f1
	db $ed                                           ; $6c41: $ed
	ldh a, [c]                                       ; $6c42: $f2
	ld hl, sp-$19                                    ; $6c43: $f8 $e7
	ldh a, [c]                                       ; $6c45: $f2
	pop hl                                           ; $6c46: $e1
	pop hl                                           ; $6c47: $e1
	ret nz                                           ; $6c48: $c0

	and $c1                                          ; $6c49: $e6 $c1
	or b                                             ; $6c4b: $b0
	rst GetHLinHL                                          ; $6c4c: $cf
	push bc                                          ; $6c4d: $c5
	ccf                                              ; $6c4e: $3f
	rst $38                                          ; $6c4f: $ff
	rrca                                             ; $6c50: $0f
	ld h, [hl]                                       ; $6c51: $66
	sbc a                                            ; $6c52: $9f
	dec b                                            ; $6c53: $05
	rst $38                                          ; $6c54: $ff
	xor [hl]                                         ; $6c55: $ae
	ld e, a                                          ; $6c56: $5f
	rra                                              ; $6c57: $1f
	rst $38                                          ; $6c58: $ff
	ld l, e                                          ; $6c59: $6b
	add b                                            ; $6c5a: $80
	rst $38                                          ; $6c5b: $ff
	dec [hl]                                         ; $6c5c: $35
	rst $38                                          ; $6c5d: $ff
	ld a, a                                          ; $6c5e: $7f
	cp e                                             ; $6c5f: $bb
	ld a, [$cefd]                                    ; $6c60: $fa $fd $ce
	rst $38                                          ; $6c63: $ff
	ld a, c                                          ; $6c64: $79
	rst $38                                          ; $6c65: $ff
	cp a                                             ; $6c66: $bf
	rst $38                                          ; $6c67: $ff
	ld c, h                                          ; $6c68: $4c
	cp a                                             ; $6c69: $bf
	add hl, hl                                       ; $6c6a: $29
	sub $ec                                          ; $6c6b: $d6 $ec
	ldh a, [c]                                       ; $6c6d: $f2
	ld h, b                                          ; $6c6e: $60
	jp $c700                                         ; $6c6f: $c3 $00 $c7


	ret nz                                           ; $6c72: $c0

	add a                                            ; $6c73: $87
	ld bc, $818e                                     ; $6c74: $01 $8e $81
	ld c, $01                                        ; $6c77: $0e $01
	ld c, $9b                                        ; $6c79: $0e $9b
	inc bc                                           ; $6c7b: $03
	inc e                                            ; $6c7c: $1c
	inc bc                                           ; $6c7d: $03
	inc e                                            ; $6c7e: $1c
	ld h, e                                          ; $6c7f: $63
	ld [hl], a                                       ; $6c80: $77
	ld l, e                                          ; $6c81: $6b
	cp $8f                                           ; $6c82: $fe $8f
	ld [$0207], sp                                   ; $6c84: $08 $07 $02

jr_028_6c87:
	ld bc, $8040                                     ; $6c87: $01 $40 $80
	db $10                                           ; $6c8a: $10
	ldh [rSC], a                                     ; $6c8b: $e0 $02
	db $fc                                           ; $6c8d: $fc
	nop                                              ; $6c8e: $00
	rst $38                                          ; $6c8f: $ff
	add b                                            ; $6c90: $80
	ld a, a                                          ; $6c91: $7f
	ldh a, [rIF]                                     ; $6c92: $f0 $0f
	ld [hl], a                                       ; $6c94: $77
	db $eb                                           ; $6c95: $eb
	sub a                                            ; $6c96: $97
	ld b, b                                          ; $6c97: $40
	ccf                                              ; $6c98: $3f
	nop                                              ; $6c99: $00
	rrca                                             ; $6c9a: $0f
	ld [bc], a                                       ; $6c9b: $02
	ld bc, $00c0                                     ; $6c9c: $01 $c0 $00
	ld [hl], a                                       ; $6c9f: $77
	ld [$f491], a                                    ; $6ca0: $ea $91 $f4
	nop                                              ; $6ca3: $00
	inc [hl]                                         ; $6ca4: $34
	ret z                                            ; $6ca5: $c8

	ld c, $f0                                        ; $6ca6: $0e $f0
	ld d, h                                          ; $6ca8: $54
	xor b                                            ; $6ca9: $a8
	ld a, [hl+]                                      ; $6caa: $2a
	call nc, $2a55                                   ; $6cab: $d4 $55 $2a
	ld a, [bc]                                       ; $6cae: $0a
	inc b                                            ; $6caf: $04
	ld h, l                                          ; $6cb0: $65
	or $df                                           ; $6cb1: $f6 $df
	ld bc, $0e9b                                     ; $6cb3: $01 $9b $0e
	rrca                                             ; $6cb6: $0f
	rla                                              ; $6cb7: $17
	jr jr_028_6d30                                   ; $6cb8: $18 $76

	sub $8f                                          ; $6cba: $d6 $8f
	dec de                                           ; $6cbc: $1b
	inc e                                            ; $6cbd: $1c
	cpl                                              ; $6cbe: $2f
	jr nc, jr_028_6d30                               ; $6cbf: $30 $6f

	ld [hl], b                                       ; $6cc1: $70
	rst SubAFromDE                                          ; $6cc2: $df
	ldh [rIF], a                                     ; $6cc3: $e0 $0f
	pop af                                           ; $6cc5: $f1
	add e                                            ; $6cc6: $83
	ld a, [hl]                                       ; $6cc7: $7e
	rst FarCall                                          ; $6cc8: $f7
	inc c                                            ; $6cc9: $0c
	rst $38                                          ; $6cca: $ff
	ld [$ab79], sp                                   ; $6ccb: $08 $79 $ab
	ld a, l                                          ; $6cce: $7d
	and e                                            ; $6ccf: $a3
	adc l                                            ; $6cd0: $8d
	inc b                                            ; $6cd1: $04
	db $fc                                           ; $6cd2: $fc
	ld hl, sp-$08                                    ; $6cd3: $f8 $f8
	jr nc, jr_028_6c87                               ; $6cd5: $30 $b0

	ld h, b                                          ; $6cd7: $60
	ldh [rLCDC], a                                   ; $6cd8: $e0 $40
	ret nz                                           ; $6cda: $c0

	ld b, b                                          ; $6cdb: $40
	ld b, $03                                        ; $6cdc: $06 $03
	inc c                                            ; $6cde: $0c
	rlca                                             ; $6cdf: $07
	inc c                                            ; $6ce0: $0c
	rlca                                             ; $6ce1: $07
	inc e                                            ; $6ce2: $1c
	ld a, e                                          ; $6ce3: $7b
	cp $9e                                           ; $6ce4: $fe $9e
	inc a                                            ; $6ce6: $3c
	ld a, e                                          ; $6ce7: $7b
	cp $9d                                           ; $6ce8: $fe $9d
	ld a, h                                          ; $6cea: $7c
	rlca                                             ; $6ceb: $07
	ld l, a                                          ; $6cec: $6f
	adc c                                            ; $6ced: $89
	ld [hl], l                                       ; $6cee: $75
	add h                                            ; $6cef: $84
	ld [hl], a                                       ; $6cf0: $77
	cp $7e                                           ; $6cf1: $fe $7e
	rst FarCall                                          ; $6cf3: $f7
	sbc d                                            ; $6cf4: $9a
	db $e4                                           ; $6cf5: $e4
	sbc a                                            ; $6cf6: $9f
	sbc h                                            ; $6cf7: $9c
	rst SubAFromBC                                          ; $6cf8: $e7
	add h                                            ; $6cf9: $84
	ld a, e                                          ; $6cfa: $7b
	ret                                              ; $6cfb: $c9


	ld l, a                                          ; $6cfc: $6f
	cp $98                                           ; $6cfd: $fe $98
	db $10                                           ; $6cff: $10
	rst $38                                          ; $6d00: $ff
	nop                                              ; $6d01: $00
	ret nz                                           ; $6d02: $c0

	ld e, a                                          ; $6d03: $5f
	add b                                            ; $6d04: $80
	ccf                                              ; $6d05: $3f
	ld a, e                                          ; $6d06: $7b
	cp $7d                                           ; $6d07: $fe $7d
	ld a, [hl+]                                      ; $6d09: $2a
	sbc [hl]                                         ; $6d0a: $9e
	ld a, a                                          ; $6d0b: $7f
	ld [hl], d                                       ; $6d0c: $72
	rst JumpTable                                          ; $6d0d: $c7
	ld a, a                                          ; $6d0e: $7f
	sub l                                            ; $6d0f: $95
	sub l                                            ; $6d10: $95
	db $fc                                           ; $6d11: $fc
	ld bc, $01fa                                     ; $6d12: $01 $fa $01
	ld hl, sp+$03                                    ; $6d15: $f8 $03
	ld hl, sp+$03                                    ; $6d17: $f8 $03
	db $f4                                           ; $6d19: $f4
	inc bc                                           ; $6d1a: $03
	ld a, c                                          ; $6d1b: $79
	ld [hl], l                                       ; $6d1c: $75
	ld [hl], e                                       ; $6d1d: $73
	call c, $397d                                    ; $6d1e: $dc $7d $39
	add h                                            ; $6d21: $84
	ld [de], a                                       ; $6d22: $12
	rst $38                                          ; $6d23: $ff
	inc h                                            ; $6d24: $24
	rst $38                                          ; $6d25: $ff
	jr z, @+$01                                      ; $6d26: $28 $ff

	jr nc, @+$01                                     ; $6d28: $30 $ff

	ld h, e                                          ; $6d2a: $63
	rst $38                                          ; $6d2b: $ff
	ld b, b                                          ; $6d2c: $40
	rst $38                                          ; $6d2d: $ff
	add c                                            ; $6d2e: $81
	rst $38                                          ; $6d2f: $ff

jr_028_6d30:
	inc bc                                           ; $6d30: $03
	cp $07                                           ; $6d31: $fe $07
	rst $38                                          ; $6d33: $ff
	rra                                              ; $6d34: $1f
	ld hl, sp+$3f                                    ; $6d35: $f8 $3f
	ldh [rIE], a                                     ; $6d37: $e0 $ff
	ret nz                                           ; $6d39: $c0

	rst $38                                          ; $6d3a: $ff
	nop                                              ; $6d3b: $00
	add b                                            ; $6d3c: $80
	ld [hl], h                                       ; $6d3d: $74
	db $e3                                           ; $6d3e: $e3
	adc h                                            ; $6d3f: $8c
	push af                                          ; $6d40: $f5
	nop                                              ; $6d41: $00
	ld [$d5c0], a                                    ; $6d42: $ea $c0 $d5
	ldh a, [$3a]                                     ; $6d45: $f0 $3a
	db $fc                                           ; $6d47: $fc
	dec c                                            ; $6d48: $0d
	cp $02                                           ; $6d49: $fe $02
	ld bc, $800f                                     ; $6d4b: $01 $0f $80
	ld bc, $0040                                     ; $6d4e: $01 $40 $00
	add b                                            ; $6d51: $80
	nop                                              ; $6d52: $00
	ld l, a                                          ; $6d53: $6f
	db $fc                                           ; $6d54: $fc
	ld a, h                                          ; $6d55: $7c
	ldh [$9a], a                                     ; $6d56: $e0 $9a
	cp e                                             ; $6d58: $bb
	ret nz                                           ; $6d59: $c0

	dec [hl]                                         ; $6d5a: $35
	ret nz                                           ; $6d5b: $c0

	ld a, [hl-]                                      ; $6d5c: $3a
	ld a, b                                          ; $6d5d: $78
	xor [hl]                                         ; $6d5e: $ae
	ld sp, hl                                        ; $6d5f: $f9
	sbc h                                            ; $6d60: $9c
	sub a                                            ; $6d61: $97
	ld [$7b09], sp                                   ; $6d62: $08 $09 $7b
	and $7c                                          ; $6d65: $e6 $7c
	jp nz, $a89c                                     ; $6d67: $c2 $9c $a8

	nop                                              ; $6d6a: $00
	inc d                                            ; $6d6b: $14
	db $fc                                           ; $6d6c: $fc
	sub l                                            ; $6d6d: $95
	halt                                             ; $6d6e: $76
	ld hl, sp+$54                                    ; $6d6f: $f8 $54
	cp b                                             ; $6d71: $b8
	ld h, h                                          ; $6d72: $64
	jr jr_028_6d8d                                   ; $6d73: $18 $18

	jr nz, jr_028_6d87                               ; $6d75: $20 $10

	nop                                              ; $6d77: $00
	ld [hl], b                                       ; $6d78: $70
	push bc                                          ; $6d79: $c5
	ld a, h                                          ; $6d7a: $7c
	cp h                                             ; $6d7b: $bc
	sbc h                                            ; $6d7c: $9c
	jr c, jr_028_6d86                                ; $6d7d: $38 $07

	jr c, jr_028_6df6                                ; $6d7f: $38 $75

	adc h                                            ; $6d81: $8c
	sbc [hl]                                         ; $6d82: $9e
	adc a                                            ; $6d83: $8f
	ld [hl], c                                       ; $6d84: $71
	adc d                                            ; $6d85: $8a

jr_028_6d86:
	ld a, l                                          ; $6d86: $7d

jr_028_6d87:
	adc [hl]                                         ; $6d87: $8e
	ld c, d                                          ; $6d88: $4a
	ld bc, $009e                                     ; $6d89: $01 $9e $00
	ld a, b                                          ; $6d8c: $78

jr_028_6d8d:
	cp c                                             ; $6d8d: $b9
	ld d, e                                          ; $6d8e: $53
	ldh a, [$78]                                     ; $6d8f: $f0 $78
	db $eb                                           ; $6d91: $eb
	ld a, l                                          ; $6d92: $7d
	ld c, h                                          ; $6d93: $4c
	sbc [hl]                                         ; $6d94: $9e
	rlca                                             ; $6d95: $07
	ld e, a                                          ; $6d96: $5f
	ld [$a47f], a                                    ; $6d97: $ea $7f $a4
	ld l, [hl]                                       ; $6d9a: $6e
	and h                                            ; $6d9b: $a4
	ld a, a                                          ; $6d9c: $7f
	ld [$a47e], a                                    ; $6d9d: $ea $7e $a4
	ld [hl], a                                       ; $6da0: $77
	ld [$c87c], a                                    ; $6da1: $ea $7c $c8
	ld a, a                                          ; $6da4: $7f
	add hl, sp                                       ; $6da5: $39
	rst $38                                          ; $6da6: $ff
	ld [hl], a                                       ; $6da7: $77
	ld [$009e], a                                    ; $6da8: $ea $9e $00
	ld [hl], e                                       ; $6dab: $73
	ld [$ef9d], a                                    ; $6dac: $ea $9d $ef
	db $10                                           ; $6daf: $10
	ld a, e                                          ; $6db0: $7b
	cpl                                              ; $6db1: $2f
	sbc h                                            ; $6db2: $9c

jr_028_6db3:
	db $10                                           ; $6db3: $10
	ccf                                              ; $6db4: $3f
	db $10                                           ; $6db5: $10
	ld [hl], h                                       ; $6db6: $74
	sbc d                                            ; $6db7: $9a
	ld [hl], a                                       ; $6db8: $77
	ld [$ce7e], a                                    ; $6db9: $ea $7e $ce
	ld a, l                                          ; $6dbc: $7d
	add hl, de                                       ; $6dbd: $19
	sbc e                                            ; $6dbe: $9b
	rst SubAFromBC                                          ; $6dbf: $e7
	jr nz, @+$01                                     ; $6dc0: $20 $ff

	jr nz, @+$7d                                     ; $6dc2: $20 $7b

jr_028_6dc4:
	ld [$0896], a                                    ; $6dc4: $ea $96 $08
	ld a, a                                          ; $6dc7: $7f
	dec b                                            ; $6dc8: $05
	rrca                                             ; $6dc9: $0f
	inc bc                                           ; $6dca: $03
	db $fc                                           ; $6dcb: $fc
	rlca                                             ; $6dcc: $07
	ld hl, sp+$0f                                    ; $6dcd: $f8 $0f
	ld [hl], a                                       ; $6dcf: $77
	cp $9a                                           ; $6dd0: $fe $9a

jr_028_6dd2:
	db $fc                                           ; $6dd2: $fc
	rra                                              ; $6dd3: $1f
	db $fc                                           ; $6dd4: $fc
	ld a, a                                          ; $6dd5: $7f
	cp $de                                           ; $6dd6: $fe $de
	rst $38                                          ; $6dd8: $ff
	ld a, [hl]                                       ; $6dd9: $7e
	adc $7f                                          ; $6dda: $ce $7f
	cp $93                                           ; $6ddc: $fe $93
	rrca                                             ; $6dde: $0f
	rst $38                                          ; $6ddf: $ff
	jr jr_028_6dd2                                   ; $6de0: $18 $f0

	jr nc, jr_028_6dc4                               ; $6de2: $30 $e0

	ld a, a                                          ; $6de4: $7f
	ret nz                                           ; $6de5: $c0

	rst $38                                          ; $6de6: $ff
	add a                                            ; $6de7: $87
	ld hl, sp-$71                                    ; $6de8: $f8 $8f
	ld [hl], a                                       ; $6dea: $77
	pop bc                                           ; $6deb: $c1
	ld a, l                                          ; $6dec: $7d
	ld e, c                                          ; $6ded: $59
	sbc e                                            ; $6dee: $9b
	jr jr_028_6e00                                   ; $6def: $18 $0f

	inc a                                            ; $6df1: $3c

jr_028_6df2:
	rlca                                             ; $6df2: $07
	ld a, b                                          ; $6df3: $78
	dec l                                            ; $6df4: $2d
	sbc h                                            ; $6df5: $9c

jr_028_6df6:
	jp $e13f                                         ; $6df6: $c3 $3f $e1


	ld b, l                                          ; $6df9: $45
	ld h, b                                          ; $6dfa: $60
	ld h, a                                          ; $6dfb: $67
	cp $6e                                           ; $6dfc: $fe $6e
	sub b                                            ; $6dfe: $90
	add e                                            ; $6dff: $83

jr_028_6e00:
	inc bc                                           ; $6e00: $03
	rst $38                                          ; $6e01: $ff
	ld a, l                                          ; $6e02: $7d
	cp $f5                                           ; $6e03: $fe $f5
	ld a, [$e2dd]                                    ; $6e05: $fa $dd $e2
	cp h                                             ; $6e08: $bc
	jp $c3bc                                         ; $6e09: $c3 $bc $c3


	ld a, b                                          ; $6e0c: $78
	add a                                            ; $6e0d: $87
	db $e4                                           ; $6e0e: $e4
	rra                                              ; $6e0f: $1f
	add hl, de                                       ; $6e10: $19
	cp $ff                                           ; $6e11: $fe $ff
	nop                                              ; $6e13: $00
	ldh a, [rIF]                                     ; $6e14: $f0 $0f
	add e                                            ; $6e16: $83
	ld a, h                                          ; $6e17: $7c
	rrca                                             ; $6e18: $0f
	ldh a, [$3f]                                     ; $6e19: $f0 $3f
	ret nz                                           ; $6e1b: $c0

	ld l, l                                          ; $6e1c: $6d
	ld e, e                                          ; $6e1d: $5b
	add b                                            ; $6e1e: $80
	db $fd                                           ; $6e1f: $fd
	inc bc                                           ; $6e20: $03
	db $fd                                           ; $6e21: $fd
	inc bc                                           ; $6e22: $03
	db $fc                                           ; $6e23: $fc
	inc bc                                           ; $6e24: $03
	ld hl, sp+$07                                    ; $6e25: $f8 $07
	ld hl, sp+$07                                    ; $6e27: $f8 $07
	jr c, jr_028_6df2                                ; $6e29: $38 $c7

	call c, $f33f                                    ; $6e2b: $dc $3f $f3
	rrca                                             ; $6e2e: $0f
	ld d, b                                          ; $6e2f: $50
	nop                                              ; $6e30: $00
	jr z, jr_028_6db3                                ; $6e31: $28 $80

	or b                                             ; $6e33: $b0
	ret nz                                           ; $6e34: $c0

	db $f4                                           ; $6e35: $f4
	ld hl, sp-$52                                    ; $6e36: $f8 $ae
	sbc a                                            ; $6e38: $9f
	push de                                          ; $6e39: $d5
	add e                                            ; $6e3a: $83
	xor b                                            ; $6e3b: $a8
	add b                                            ; $6e3c: $80
	call nc, $2471                                   ; $6e3d: $d4 $71 $24
	db $fd                                           ; $6e40: $fd
	ld a, a                                          ; $6e41: $7f
	rst FarCall                                          ; $6e42: $f7
	sbc c                                            ; $6e43: $99
	ret nc                                           ; $6e44: $d0

	ldh [$ba], a                                     ; $6e45: $e0 $ba
	ld a, h                                          ; $6e47: $7c
	rla                                              ; $6e48: $17
	rrca                                             ; $6e49: $0f
	di                                               ; $6e4a: $f3
	ld a, l                                          ; $6e4b: $7d
	or [hl]                                          ; $6e4c: $b6
	ld a, e                                          ; $6e4d: $7b
	add hl, sp                                       ; $6e4e: $39
	ld a, a                                          ; $6e4f: $7f
	rra                                              ; $6e50: $1f
	halt                                             ; $6e51: $76
	ld d, [hl]                                       ; $6e52: $56
	sbc e                                            ; $6e53: $9b
	rlca                                             ; $6e54: $07
	ld [$0107], sp                                   ; $6e55: $08 $07 $01
	ld a, c                                          ; $6e58: $79
	adc h                                            ; $6e59: $8c
	ld [hl], h                                       ; $6e5a: $74
	ld e, h                                          ; $6e5b: $5c
	ld b, l                                          ; $6e5c: $45
	adc h                                            ; $6e5d: $8c
	inc bc                                           ; $6e5e: $03
	cp $1b                                           ; $6e5f: $fe $1b
	cp $56                                           ; $6e61: $fe $56
	and h                                            ; $6e63: $a4
	ld [hl], d                                       ; $6e64: $72
	sub b                                            ; $6e65: $90
	ld [hl], d                                       ; $6e66: $72
	cp d                                             ; $6e67: $ba
	ld e, a                                          ; $6e68: $5f
	ld [$01df], a                                    ; $6e69: $ea $df $01
	ld e, [hl]                                       ; $6e6c: $5e
	and h                                            ; $6e6d: $a4
	ld [hl], e                                       ; $6e6e: $73
	ld [$ca7c], a                                    ; $6e6f: $ea $7c $ca
	sbc e                                            ; $6e72: $9b
	ccf                                              ; $6e73: $3f
	dec bc                                           ; $6e74: $0b
	rlca                                             ; $6e75: $07
	inc bc                                           ; $6e76: $03
	ld h, d                                          ; $6e77: $62
	ld a, b                                          ; $6e78: $78
	rst SubAFromDE                                          ; $6e79: $df
	rst $38                                          ; $6e7a: $ff
	sub [hl]                                         ; $6e7b: $96
	pop af                                           ; $6e7c: $f1
	ldh [$e0], a                                     ; $6e7d: $e0 $e0
	ret nz                                           ; $6e7f: $c0

	ld a, [hl]                                       ; $6e80: $7e
	db $fc                                           ; $6e81: $fc
	ccf                                              ; $6e82: $3f
	inc bc                                           ; $6e83: $03
	rrca                                             ; $6e84: $0f
	ld [hl], d                                       ; $6e85: $72
	adc [hl]                                         ; $6e86: $8e
	ld a, c                                          ; $6e87: $79
	jp z, $f081                                      ; $6e88: $ca $81 $f0

	ld a, a                                          ; $6e8b: $7f
	jr c, jr_028_6e9d                                ; $6e8c: $38 $0f

	inc b                                            ; $6e8e: $04
	jp $f982                                         ; $6e8f: $c3 $82 $f9


	ld h, b                                          ; $6e92: $60
	rst $38                                          ; $6e93: $ff
	jr jr_028_6ed5                                   ; $6e94: $18 $3f

	nop                                              ; $6e96: $00
	add b                                            ; $6e97: $80
	rst $38                                          ; $6e98: $ff
	add b                                            ; $6e99: $80
	rst $38                                          ; $6e9a: $ff
	ret nz                                           ; $6e9b: $c0

	ld a, a                                          ; $6e9c: $7f

jr_028_6e9d:
	ret nz                                           ; $6e9d: $c0

	ld a, a                                          ; $6e9e: $7f
	ldh [$3f], a                                     ; $6e9f: $e0 $3f
	ldh [$3f], a                                     ; $6ea1: $e0 $3f
	rst $38                                          ; $6ea3: $ff
	ccf                                              ; $6ea4: $3f
	ld [$033f], a                                    ; $6ea5: $ea $3f $03
	ld a, d                                          ; $6ea8: $7a
	call z, $fe7f                                    ; $6ea9: $cc $7f $fe
	ld a, l                                          ; $6eac: $7d
	and b                                            ; $6ead: $a0
	ld a, a                                          ; $6eae: $7f
	or l                                             ; $6eaf: $b5
	ld a, [hl]                                       ; $6eb0: $7e
	ld a, l                                          ; $6eb1: $7d
	sub [hl]                                         ; $6eb2: $96
	rst $38                                          ; $6eb3: $ff
	ld hl, sp+$7f                                    ; $6eb4: $f8 $7f
	ldh a, [$6f]                                     ; $6eb6: $f0 $6f
	ldh a, [$df]                                     ; $6eb8: $f0 $df
	ldh [$bf], a                                     ; $6eba: $e0 $bf
	ld a, e                                          ; $6ebc: $7b
	inc l                                            ; $6ebd: $2c
	daa                                              ; $6ebe: $27
	ld h, b                                          ; $6ebf: $60
	sbc l                                            ; $6ec0: $9d
	db $f4                                           ; $6ec1: $f4
	rrca                                             ; $6ec2: $0f
	ld h, a                                          ; $6ec3: $67
	cp $7e                                           ; $6ec4: $fe $7e
	and d                                            ; $6ec6: $a2
	ld a, a                                          ; $6ec7: $7f
	cp $99                                           ; $6ec8: $fe $99
	call nz, $a03f                                   ; $6eca: $c4 $3f $a0
	ret nz                                           ; $6ecd: $c0

	add h                                            ; $6ece: $84
	ld hl, sp+$77                                    ; $6ecf: $f8 $77
	xor h                                            ; $6ed1: $ac
	ld h, a                                          ; $6ed2: $67
	cp $7d                                           ; $6ed3: $fe $7d

jr_028_6ed5:
	ld l, a                                          ; $6ed5: $6f
	sbc d                                            ; $6ed6: $9a
	dec d                                            ; $6ed7: $15
	nop                                              ; $6ed8: $00
	xor d                                            ; $6ed9: $aa
	nop                                              ; $6eda: $00
	dec d                                            ; $6edb: $15
	ld [hl], e                                       ; $6edc: $73
	ld [hl], h                                       ; $6edd: $74
	ld [hl], a                                       ; $6ede: $77
	cp $98                                           ; $6edf: $fe $98
	add sp, -$10                                     ; $6ee1: $e8 $f0
	ld e, h                                          ; $6ee3: $5c
	ld a, $a8                                        ; $6ee4: $3e $a8
	ld b, $54                                        ; $6ee6: $06 $54
	ld a, c                                          ; $6ee8: $79
	add b                                            ; $6ee9: $80
	sbc c                                            ; $6eea: $99
	ld d, h                                          ; $6eeb: $54
	add b                                            ; $6eec: $80
	ld [$00f0], sp                                   ; $6eed: $08 $f0 $00
	ld hl, sp+$74                                    ; $6ef0: $f8 $74
	ld e, h                                          ; $6ef2: $5c
	ld [hl], l                                       ; $6ef3: $75
	adc h                                            ; $6ef4: $8c
	sbc l                                            ; $6ef5: $9d
	ld c, a                                          ; $6ef6: $4f
	jr nc, jr_028_6f6e                               ; $6ef7: $30 $75

	adc d                                            ; $6ef9: $8a
	ld a, l                                          ; $6efa: $7d
	adc [hl]                                         ; $6efb: $8e
	ld [bc], a                                       ; $6efc: $02
	xor $03                                          ; $6efd: $ee $03
	cp $03                                           ; $6eff: $fe $03
	cp $13                                           ; $6f01: $fe $13
	cp $4d                                           ; $6f03: $fe $4d
	ld [hl-], a                                      ; $6f05: $32
	ld a, a                                          ; $6f06: $7f
	cp $7e                                           ; $6f07: $fe $7e
	cp d                                             ; $6f09: $ba
	sbc l                                            ; $6f0a: $9d
	ld b, $f8                                        ; $6f0b: $06 $f8
	ld e, l                                          ; $6f0d: $5d
	ld [hl-], a                                      ; $6f0e: $32
	ld a, a                                          ; $6f0f: $7f
	cp $7e                                           ; $6f10: $fe $7e
	rla                                              ; $6f12: $17
	ld l, l                                          ; $6f13: $6d
	ld [hl-], a                                      ; $6f14: $32
	ld h, a                                          ; $6f15: $67
	ld [$ce7e], a                                    ; $6f16: $ea $7e $ce
	sbc d                                            ; $6f19: $9a
	db $f4                                           ; $6f1a: $f4
	ccf                                              ; $6f1b: $3f
	dec [hl]                                         ; $6f1c: $35
	ccf                                              ; $6f1d: $3f
	dec b                                            ; $6f1e: $05
	ld a, e                                          ; $6f1f: $7b
	jp hl                                            ; $6f20: $e9


	ld l, a                                          ; $6f21: $6f
	ld [$ff9e], a                                    ; $6f22: $ea $9e $ff
	ld [hl], h                                       ; $6f25: $74
	ld l, d                                          ; $6f26: $6a
	ld a, d                                          ; $6f27: $7a
	jp nc, $d27f                                     ; $6f28: $d2 $7f $d2

	ld a, [hl]                                       ; $6f2b: $7e
	sub l                                            ; $6f2c: $95
	ld a, e                                          ; $6f2d: $7b
	db $d3                                           ; $6f2e: $d3
	ld a, e                                          ; $6f2f: $7b
	call z, $a27d                                    ; $6f30: $cc $7d $a2
	sbc c                                            ; $6f33: $99
	pop af                                           ; $6f34: $f1

jr_028_6f35:
	ld c, $c3                                        ; $6f35: $0e $c3
	inc a                                            ; $6f37: $3c
	rrca                                             ; $6f38: $0f
	ldh a, [$6c]                                     ; $6f39: $f0 $6c
	or d                                             ; $6f3b: $b2
	ld e, [hl]                                       ; $6f3c: $5e
	or [hl]                                          ; $6f3d: $b6
	ld a, a                                          ; $6f3e: $7f
	sbc $7f                                          ; $6f3f: $de $7f
	and $7f                                          ; $6f41: $e6 $7f
	cp $93                                           ; $6f43: $fe $93
	push bc                                          ; $6f45: $c5
	ccf                                              ; $6f46: $3f
	add l                                            ; $6f47: $85
	ld a, a                                          ; $6f48: $7f
	sub l                                            ; $6f49: $95
	ld l, a                                          ; $6f4a: $6f
	ld d, $ee                                        ; $6f4b: $16 $ee
	ld d, $ee                                        ; $6f4d: $16 $ee
	inc a                                            ; $6f4f: $3c
	call z, $fe77                                    ; $6f50: $cc $77 $fe
	ld a, a                                          ; $6f53: $7f
	xor h                                            ; $6f54: $ac
	ld a, [hl]                                       ; $6f55: $7e
	rst FarCall                                          ; $6f56: $f7
	sbc l                                            ; $6f57: $9d
	ld b, $01                                        ; $6f58: $06 $01
	or $73                                           ; $6f5a: $f6 $73
	db $d3                                           ; $6f5c: $d3
	ld a, a                                          ; $6f5d: $7f
	ld [$189c], a                                    ; $6f5e: $ea $9c $18
	rlca                                             ; $6f61: $07
	dec bc                                           ; $6f62: $0b
	ld a, b                                          ; $6f63: $78
	ld a, [hl-]                                      ; $6f64: $3a
	adc l                                            ; $6f65: $8d
	ld a, [bc]                                       ; $6f66: $0a
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	ldh a, [rP1]                                     ; $6f69: $f0 $00
	pop af                                           ; $6f6b: $f1
	db $10                                           ; $6f6c: $10
	pop hl                                           ; $6f6d: $e1

jr_028_6f6e:
	nop                                              ; $6f6e: $00
	db $e3                                           ; $6f6f: $e3
	jr nz, jr_028_6f35                               ; $6f70: $20 $c3

	nop                                              ; $6f72: $00
	jp $07c0                                         ; $6f73: $c3 $c0 $07


	add b                                            ; $6f76: $80
	rlca                                             ; $6f77: $07
	ld [hl], a                                       ; $6f78: $77
	xor d                                            ; $6f79: $aa
	ld l, l                                          ; $6f7a: $6d
	adc h                                            ; $6f7b: $8c
	ld bc, $038a                                     ; $6f7c: $01 $8a $03
	cp $03                                           ; $6f7f: $fe $03
	cp $03                                           ; $6f81: $fe $03
	cp $03                                           ; $6f83: $fe $03
	cp $43                                           ; $6f85: $fe $43
	cp $56                                           ; $6f87: $fe $56
	and h                                            ; $6f89: $a4
	ld [hl], a                                       ; $6f8a: $77
	cp $56                                           ; $6f8b: $fe $56
	and h                                            ; $6f8d: $a4
	ld [hl], a                                       ; $6f8e: $77
	ld [$1f9e], a                                    ; $6f8f: $ea $9e $1f
	halt                                             ; $6f92: $76
	cp e                                             ; $6f93: $bb
	ld a, e                                          ; $6f94: $7b
	ld [$009c], a                                    ; $6f95: $ea $9c $00
	ldh [rDIV], a                                    ; $6f98: $e0 $04
	ld [hl], e                                       ; $6f9a: $73
	ld [$5674], a                                    ; $6f9b: $ea $74 $56
	ld a, a                                          ; $6f9e: $7f
	and $7e                                          ; $6f9f: $e6 $7e
	call c, $7776                                    ; $6fa1: $dc $76 $77
	ld [hl], a                                       ; $6fa4: $77
	call nc, $788f                                   ; $6fa5: $d4 $8f $78
	adc b                                            ; $6fa8: $88
	ld a, b                                          ; $6fa9: $78
	adc b                                            ; $6faa: $88
	ld a, l                                          ; $6fab: $7d
	adc [hl]                                         ; $6fac: $8e
	rst $38                                          ; $6fad: $ff
	rrca                                             ; $6fae: $0f
	db $ed                                           ; $6faf: $ed
	rra                                              ; $6fb0: $1f
	ld a, [$351f]                                    ; $6fb1: $fa $1f $35
	rra                                              ; $6fb4: $1f
	ld b, $03                                        ; $6fb5: $06 $03
	db $fd                                           ; $6fb7: $fd
	ld a, a                                          ; $6fb8: $7f
	ret nc                                           ; $6fb9: $d0

	sbc b                                            ; $6fba: $98
	xor d                                            ; $6fbb: $aa
	ret nz                                           ; $6fbc: $c0

	ld [hl], l                                       ; $6fbd: $75
	ld hl, sp-$52                                    ; $6fbe: $f8 $ae
	rst $38                                          ; $6fc0: $ff
	ld b, c                                          ; $6fc1: $41
	ld a, d                                          ; $6fc2: $7a
	ld [hl], a                                       ; $6fc3: $77
	ld a, [hl]                                       ; $6fc4: $7e
	call z, $ed7f                                    ; $6fc5: $cc $7f $ed
	sbc [hl]                                         ; $6fc8: $9e
	ld d, c                                          ; $6fc9: $51
	ld a, c                                          ; $6fca: $79
	ld a, [hl]                                       ; $6fcb: $7e
	sub [hl]                                         ; $6fcc: $96
	ld d, [hl]                                       ; $6fcd: $56
	nop                                              ; $6fce: $00
	xor h                                            ; $6fcf: $ac
	nop                                              ; $6fd0: $00
	call nc, $38e0                                   ; $6fd1: $d4 $e0 $38
	ld hl, sp-$7f                                    ; $6fd4: $f8 $81
	ld a, b                                          ; $6fd6: $78
	ld e, h                                          ; $6fd7: $5c
	ld h, l                                          ; $6fd8: $65
	adc h                                            ; $6fd9: $8c
	sbc e                                            ; $6fda: $9b
	ld b, a                                          ; $6fdb: $47
	jr c, @+$11                                      ; $6fdc: $38 $0f

	ld [hl], b                                       ; $6fde: $70
	inc bc                                           ; $6fdf: $03
	ld e, [hl]                                       ; $6fe0: $5e
	inc bc                                           ; $6fe1: $03
	cp $03                                           ; $6fe2: $fe $03
	cp $03                                           ; $6fe4: $fe $03
	cp $03                                           ; $6fe6: $fe $03
	cp $03                                           ; $6fe8: $fe $03
	cp $1f                                           ; $6fea: $fe $1f
	cp $56                                           ; $6fec: $fe $56
	and h                                            ; $6fee: $a4

Call_028_6fef:
	ld [hl], a                                       ; $6fef: $77
	cp $6e                                           ; $6ff0: $fe $6e
	cp d                                             ; $6ff2: $ba
	ld e, a                                          ; $6ff3: $5f
	ld [$a476], a                                    ; $6ff4: $ea $76 $a4
	ld a, [hl]                                       ; $6ff7: $7e
	cp d                                             ; $6ff8: $ba
	ld e, a                                          ; $6ff9: $5f
	ld [$f87f], a                                    ; $6ffa: $ea $7f $f8
	sbc h                                            ; $6ffd: $9c
	jr nz, @+$21                                     ; $6ffe: $20 $1f

	inc b                                            ; $7000: $04
	ld a, d                                          ; $7001: $7a
	cp d                                             ; $7002: $ba
	ld h, a                                          ; $7003: $67
	ld [$5e7c], a                                    ; $7004: $ea $7c $5e
	ld a, b                                          ; $7007: $78
	ld e, d                                          ; $7008: $5a
	sub h                                            ; $7009: $94
	ldh a, [hDisp1_SCY]                                     ; $700a: $f0 $90
	ld h, c                                          ; $700c: $61
	nop                                              ; $700d: $00
	ld bc, $0102                                     ; $700e: $01 $02 $01
	nop                                              ; $7011: $00
	inc bc                                           ; $7012: $03
	add h                                            ; $7013: $84
	inc bc                                           ; $7014: $03
	ld [hl], h                                       ; $7015: $74
	ld e, h                                          ; $7016: $5c
	ld l, l                                          ; $7017: $6d
	adc h                                            ; $7018: $8c
	ld l, l                                          ; $7019: $6d
	adc d                                            ; $701a: $8a
	inc bc                                           ; $701b: $03
	ld a, [hl]                                       ; $701c: $7e
	dec hl                                           ; $701d: $2b
	cp $97                                           ; $701e: $fe $97
	pop af                                           ; $7020: $f1
	nop                                              ; $7021: $00
	ldh [$0e], a                                     ; $7022: $e0 $0e
	ret nz                                           ; $7024: $c0

	ld de, $17c0                                     ; $7025: $11 $c0 $17
	ld h, a                                          ; $7028: $67
	ldh a, [$97]                                     ; $7029: $f0 $97
	db $ec                                           ; $702b: $ec
	nop                                              ; $702c: $00
	ld b, b                                          ; $702d: $40
	adc e                                            ; $702e: $8b
	ld bc, $206a                                     ; $702f: $01 $6a $20
	ld c, h                                          ; $7032: $4c
	ld h, a                                          ; $7033: $67
	ldh a, [$97]                                     ; $7034: $f0 $97
	rst SubAFromBC                                          ; $7036: $e7
	nop                                              ; $7037: $00
	ld bc, $095a                                     ; $7038: $01 $5a $09
	ld d, d                                          ; $703b: $52
	nop                                              ; $703c: $00
	ld h, d                                          ; $703d: $62
	ld h, a                                          ; $703e: $67
	ldh a, [$97]                                     ; $703f: $f0 $97
	cp l                                             ; $7041: $bd
	nop                                              ; $7042: $00
	jr jr_028_7066                                   ; $7043: $18 $21

	jr @+$27                                         ; $7045: $18 $25

	inc e                                            ; $7047: $1c
	and c                                            ; $7048: $a1
	ld h, a                                          ; $7049: $67
	ldh a, [$97]                                     ; $704a: $f0 $97
	sbc h                                            ; $704c: $9c
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	ld l, e                                          ; $704f: $6b
	ld hl, $004a                                     ; $7050: $21 $4a $00
	adc h                                            ; $7053: $8c
	ld c, a                                          ; $7054: $4f
	ret nc                                           ; $7055: $d0

	sbc [hl]                                         ; $7056: $9e
	ld bc, $d063                                     ; $7057: $01 $63 $d0
	sbc e                                            ; $705a: $9b
	ld l, h                                          ; $705b: $6c
	nop                                              ; $705c: $00
	jr nz, jr_028_70aa                               ; $705d: $20 $4b

	ld a, e                                          ; $705f: $7b
	xor $9e                                          ; $7060: $ee $9e
	ld [de], a                                       ; $7062: $12
	ld h, a                                          ; $7063: $67
	ldh a, [$9b]                                     ; $7064: $f0 $9b

jr_028_7066:
	db $db                                           ; $7066: $db
	nop                                              ; $7067: $00
	ld bc, $7b4a                                     ; $7068: $01 $4a $7b
	cp $9e                                           ; $706b: $fe $9e
	ld d, d                                          ; $706d: $52
	ld h, a                                          ; $706e: $67
	ldh a, [$97]                                     ; $706f: $f0 $97
	sub a                                            ; $7071: $97
	nop                                              ; $7072: $00
	add b                                            ; $7073: $80
	ld [de], a                                       ; $7074: $12
	nop                                              ; $7075: $00
	ld d, b                                          ; $7076: $50
	nop                                              ; $7077: $00
	ld d, l                                          ; $7078: $55
	ld h, a                                          ; $7079: $67

jr_028_707a:
	ldh a, [$97]                                     ; $707a: $f0 $97
	ld e, $40                                        ; $707c: $1e $40
	ld c, $50                                        ; $707e: $0e $50
	inc c                                            ; $7080: $0c
	ld d, c                                          ; $7081: $51
	inc c                                            ; $7082: $0c
	ld d, c                                          ; $7083: $51
	ld h, a                                          ; $7084: $67
	ldh a, [$9d]                                     ; $7085: $f0 $9d
	ld e, l                                          ; $7087: $5d
	nop                                              ; $7088: $00
	ld [hl], a                                       ; $7089: $77
	ldh a, [c]                                       ; $708a: $f2
	ld e, a                                          ; $708b: $5f
	ldh a, [$97]                                     ; $708c: $f0 $97
	db $e3                                           ; $708e: $e3
	nop                                              ; $708f: $00

jr_028_7090:
	ldh [$0d], a                                     ; $7090: $e0 $0d
	db $e4                                           ; $7092: $e4
	add hl, bc                                       ; $7093: $09
	ldh [$03], a                                     ; $7094: $e0 $03
	ld h, a                                          ; $7096: $67
	ldh a, [$98]                                     ; $7097: $f0 $98
	ld h, [hl]                                       ; $7099: $66
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	ld e, d                                          ; $709c: $5a
	ld [$0056], sp                                   ; $709d: $08 $56 $00
	ld h, e                                          ; $70a0: $63
	or b                                             ; $70a1: $b0
	sub l                                            ; $70a2: $95
	ret nc                                           ; $70a3: $d0

	ld bc, $9b40                                     ; $70a4: $01 $40 $9b
	ld c, c                                          ; $70a7: $49
	sub d                                            ; $70a8: $92
	add hl, bc                                       ; $70a9: $09

jr_028_70aa:
	ld [de], a                                       ; $70aa: $12
	add b                                            ; $70ab: $80
	ld a, a                                          ; $70ac: $7f
	ld l, [hl]                                       ; $70ad: $6e
	and h                                            ; $70ae: $a4
	ld a, a                                          ; $70af: $7f
	ld h, b                                          ; $70b0: $60
	sbc c                                            ; $70b1: $99
	inc b                                            ; $70b2: $04

jr_028_70b3:
	ld l, c                                          ; $70b3: $69
	inc h                                            ; $70b4: $24
	ld e, c                                          ; $70b5: $59
	inc e                                            ; $70b6: $1c
	add b                                            ; $70b7: $80
	ld a, e                                          ; $70b8: $7b
	ld h, a                                          ; $70b9: $67
	sub d                                            ; $70ba: $92
	rst $38                                          ; $70bb: $ff
	ld bc, $c1fe                                     ; $70bc: $01 $fe $c1
	ld a, $63                                        ; $70bf: $3e $63
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	xor [hl]                                         ; $70c3: $ae
	add [hl]                                         ; $70c4: $86
	jr z, jr_028_70c7                                ; $70c5: $28 $00

jr_028_70c7:
	ld h, e                                          ; $70c7: $63
	ld h, a                                          ; $70c8: $67
	ret nc                                           ; $70c9: $d0

	sub a                                            ; $70ca: $97
	ld sp, $0000                                     ; $70cb: $31 $00 $00
	rst SubAFromHL                                          ; $70ce: $d7
	ld b, e                                          ; $70cf: $43
	or h                                             ; $70d0: $b4
	db $10                                           ; $70d1: $10
	ld hl, $f067                                     ; $70d2: $21 $67 $f0
	ld a, a                                          ; $70d5: $7f
	add $7f                                          ; $70d6: $c6 $7f
	ld [bc], a                                       ; $70d8: $02
	ld a, e                                          ; $70d9: $7b
	jr nc, jr_028_707a                               ; $70da: $30 $9e

	ld a, [de]                                       ; $70dc: $1a
	ld h, b                                          ; $70dd: $60
	add sp, -$68                                     ; $70de: $e8 $98
	ld b, h                                          ; $70e0: $44
	nop                                              ; $70e1: $00
	ld e, l                                          ; $70e2: $5d
	inc c                                            ; $70e3: $0c
	ld d, c                                          ; $70e4: $51
	nop                                              ; $70e5: $00
	ld b, l                                          ; $70e6: $45
	ld h, a                                          ; $70e7: $67
	ldh a, [hDisp1_LCDC]                                     ; $70e8: $f0 $8f
	ld a, a                                          ; $70ea: $7f
	nop                                              ; $70eb: $00
	ccf                                              ; $70ec: $3f
	add b                                            ; $70ed: $80
	sbc a                                            ; $70ee: $9f
	jr nz, jr_028_7090                               ; $70ef: $20 $9f

	jr nz, jr_028_70b3                               ; $70f1: $20 $c0

	ld de, $0ee0                                     ; $70f3: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $70f6: $e0 $11
	ldh a, [rIF]                                     ; $70f8: $f0 $0f
	ld h, a                                          ; $70fa: $67
	add sp, -$69                                     ; $70fb: $e8 $97
	inc h                                            ; $70fd: $24
	ld c, e                                          ; $70fe: $4b
	ld hl, $60ca                                     ; $70ff: $21 $ca $60
	adc h                                            ; $7102: $8c
	db $e4                                           ; $7103: $e4
	dec de                                           ; $7104: $1b
	ld h, a                                          ; $7105: $67
	ldh a, [$97]                                     ; $7106: $f0 $97
	jr nz, @+$5c                                     ; $7108: $20 $5a

	ld [$0052], sp                                   ; $710a: $08 $52 $00
	rst SubAFromBC                                          ; $710d: $e7
	ld h, e                                          ; $710e: $63
	sbc h                                            ; $710f: $9c
	ld h, a                                          ; $7110: $67
	ldh a, [$7e]                                     ; $7111: $f0 $7e
	adc $97                                          ; $7113: $ce $97
	inc c                                            ; $7115: $0c
	ld de, $b500                                     ; $7116: $11 $00 $b5
	sub b                                            ; $7119: $90
	ld h, a                                          ; $711a: $67
	di                                               ; $711b: $f3
	inc c                                            ; $711c: $0c
	ld l, a                                          ; $711d: $6f
	ldh a, [$9e]                                     ; $711e: $f0 $9e
	add h                                            ; $7120: $84
	halt                                             ; $7121: $76
	jp z, $9c9c                                      ; $7122: $ca $9c $9c

	adc h                                            ; $7125: $8c
	ld [hl], e                                       ; $7126: $73
	ld h, a                                          ; $7127: $67
	ldh [$9e], a                                     ; $7128: $e0 $9e
	ld hl, $ca76                                     ; $712a: $21 $76 $ca
	sbc [hl]                                         ; $712d: $9e
	and $5f                                          ; $712e: $e6 $5f
	ret nc                                           ; $7130: $d0

	ld [hl], a                                       ; $7131: $77
	ld a, d                                          ; $7132: $7a
	ld a, [hl]                                       ; $7133: $7e
	ld a, d                                          ; $7134: $7a
	sbc l                                            ; $7135: $9d
	inc h                                            ; $7136: $24
	db $db                                           ; $7137: $db
	ld h, e                                          ; $7138: $63
	ld a, b                                          ; $7139: $78
	ld a, a                                          ; $713a: $7f
	or d                                             ; $713b: $b2
	ld a, a                                          ; $713c: $7f
	xor [hl]                                         ; $713d: $ae
	sbc h                                            ; $713e: $9c
	jp nc, $b748                                     ; $713f: $d2 $48 $b7

	ld h, e                                          ; $7142: $63
	ldh [$98], a                                     ; $7143: $e0 $98
	ld d, $03                                        ; $7145: $16 $03
	call nc, $9443                                   ; $7147: $d4 $43 $94
	ld b, e                                          ; $714a: $43
	cp h                                             ; $714b: $bc
	ld h, a                                          ; $714c: $67
	ldh a, [$97]                                     ; $714d: $f0 $97
	inc c                                            ; $714f: $0c
	ld d, b                                          ; $7150: $50
	ld [$0953], sp                                   ; $7151: $08 $53 $09
	ld d, d                                          ; $7154: $52
	add hl, bc                                       ; $7155: $09
	or $63                                           ; $7156: $f6 $63
	ldh a, [$7a]                                     ; $7158: $f0 $7a
	call z, Call_028_447b                            ; $715a: $cc $7b $44
	rst SubAFromDE                                          ; $715d: $df
	rst $38                                          ; $715e: $ff
	ld l, e                                          ; $715f: $6b
	ldh a, [rPCM12]                                  ; $7160: $f0 $76
	jp z, $249d                                      ; $7162: $ca $9d $24

	ld c, c                                          ; $7165: $49
	ld e, e                                          ; $7166: $5b
	or b                                             ; $7167: $b0
	ld [hl], a                                       ; $7168: $77
	ld h, b                                          ; $7169: $60
	sbc h                                            ; $716a: $9c
	ld h, [hl]                                       ; $716b: $66
	ld [hl+], a                                      ; $716c: $22
	db $dd                                           ; $716d: $dd
	ld h, e                                          ; $716e: $63
	ld [$d29c], sp                                   ; $716f: $08 $9c $d2
	ld c, c                                          ; $7172: $49
	sub d                                            ; $7173: $92
	ld a, e                                          ; $7174: $7b
	cp $9e                                           ; $7175: $fe $9e
	or [hl]                                          ; $7177: $b6
	ld h, a                                          ; $7178: $67
	ldh a, [$99]                                     ; $7179: $f0 $99
	add h                                            ; $717b: $84
	ld l, c                                          ; $717c: $69
	inc h                                            ; $717d: $24
	ld c, c                                          ; $717e: $49
	inc b                                            ; $717f: $04
	sbc c                                            ; $7180: $99
	ld e, a                                          ; $7181: $5f
	ld h, b                                          ; $7182: $60
	sbc [hl]                                         ; $7183: $9e
	ld bc, $ca7a                                     ; $7184: $01 $7a $ca
	sbc e                                            ; $7187: $9b
	add b                                            ; $7188: $80
	inc hl                                           ; $7189: $23
	add c                                            ; $718a: $81
	ld a, [hl]                                       ; $718b: $7e
	ld h, e                                          ; $718c: $63
	ret nz                                           ; $718d: $c0

	ld a, [hl]                                       ; $718e: $7e
	jp z, $949a                                      ; $718f: $ca $9a $94

	nop                                              ; $7192: $00
	ld sp, $ef10                                     ; $7193: $31 $10 $ef
	ld h, e                                          ; $7196: $63
	ldh a, [$79]                                     ; $7197: $f0 $79
	call z, $249d                                    ; $7199: $cc $9d $24
	ld c, b                                          ; $719c: $48
	ld e, e                                          ; $719d: $5b
	and b                                            ; $719e: $a0
	ld a, [hl]                                       ; $719f: $7e
	jp z, $d19a                                      ; $71a0: $ca $9a $d1

	ld b, b                                          ; $71a3: $40
	add h                                            ; $71a4: $84
	ld b, b                                          ; $71a5: $40
	cp a                                             ; $71a6: $bf
	ld h, a                                          ; $71a7: $67
	ldh a, [rPCM12]                                  ; $71a8: $f0 $76
	call z, $079b                                    ; $71aa: $cc $9b $07
	ld l, b                                          ; $71ad: $68
	daa                                              ; $71ae: $27
	ret c                                            ; $71af: $d8

	ld h, a                                          ; $71b0: $67
	ldh a, [rLYC]                                    ; $71b1: $f0 $45
	nop                                              ; $71b3: $00
	sbc e                                            ; $71b4: $9b
	inc hl                                           ; $71b5: $23
	inc sp                                           ; $71b6: $33
	inc [hl]                                         ; $71b7: $34
	ld b, b                                          ; $71b8: $40
	sbc $11                                          ; $71b9: $de $11
	sbc h                                            ; $71bb: $9c
	ld h, [hl]                                       ; $71bc: $66
	inc sp                                           ; $71bd: $33
	ld [hl+], a                                      ; $71be: $22
	ld a, e                                          ; $71bf: $7b
	or $90                                           ; $71c0: $f6 $90
	ld d, b                                          ; $71c2: $50
	ld de, $0010                                     ; $71c3: $11 $10 $00
	ld h, e                                          ; $71c6: $63
	inc sp                                           ; $71c7: $33
	ld [hl+], a                                      ; $71c8: $22
	ld [hl+], a                                      ; $71c9: $22
	inc [hl]                                         ; $71ca: $34
	ld b, h                                          ; $71cb: $44
	stop                                             ; $71cc: $10 $00
	nop                                              ; $71ce: $00
	ld d, l                                          ; $71cf: $55
	inc bc                                           ; $71d0: $03
	ld a, e                                          ; $71d1: $7b
	or $97                                           ; $71d2: $f6 $97
	ld [hl+], a                                      ; $71d4: $22
	ld b, h                                          ; $71d5: $44
	ld de, $0410                                     ; $71d6: $11 $10 $04
	ld b, h                                          ; $71d9: $44
	inc sp                                           ; $71da: $33
	ld [bc], a                                       ; $71db: $02
	db $dd                                           ; $71dc: $dd
	ld [hl+], a                                      ; $71dd: $22
	sbc c                                            ; $71de: $99
	ld hl, $5411                                     ; $71df: $21 $11 $54
	ld b, h                                          ; $71e2: $44
	inc sp                                           ; $71e3: $33
	ld [hl-], a                                      ; $71e4: $32
	db $db                                           ; $71e5: $db
	ld [hl+], a                                      ; $71e6: $22
	rst SubAFromDE                                          ; $71e7: $df
	ld b, h                                          ; $71e8: $44
	sbc [hl]                                         ; $71e9: $9e
	inc bc                                           ; $71ea: $03
	ld l, e                                          ; $71eb: $6b
	or $7f                                           ; $71ec: $f6 $7f
	push af                                          ; $71ee: $f5
	sbc [hl]                                         ; $71ef: $9e
	nop                                              ; $71f0: $00
	ret c                                            ; $71f1: $d8

	ld [hl+], a                                      ; $71f2: $22
	sbc [hl]                                         ; $71f3: $9e
	jr nz, @-$33                                     ; $71f4: $20 $cb

	ld [hl+], a                                      ; $71f6: $22
	and e                                            ; $71f7: $a3
	add l                                            ; $71f8: $85
	reti                                             ; $71f9: $d9


	rst $38                                          ; $71fa: $ff
	ld sp, hl                                        ; $71fb: $f9
	inc bc                                           ; $71fc: $03
	ldh a, [$db]                                     ; $71fd: $f0 $db
	rst $38                                          ; $71ff: $ff
	sbc [hl]                                         ; $7200: $9e
	cp $f9                                           ; $7201: $fe $f9
	sbc $c0                                          ; $7203: $de $c0
	sbc d                                            ; $7205: $9a
	add h                                            ; $7206: $84
	adc l                                            ; $7207: $8d
	ld a, [bc]                                       ; $7208: $0a
	dec d                                            ; $7209: $15
	ld a, [bc]                                       ; $720a: $0a
	ld sp, hl                                        ; $720b: $f9
	sbc h                                            ; $720c: $9c
	ld a, a                                          ; $720d: $7f
	rra                                              ; $720e: $1f
	inc bc                                           ; $720f: $03
	cp $9d                                           ; $7210: $fe $9d
	ld d, b                                          ; $7212: $50
	add b                                            ; $7213: $80
	ld d, a                                          ; $7214: $57
	ret nc                                           ; $7215: $d0

	ld [hl], e                                       ; $7216: $73
	db $ed                                           ; $7217: $ed
	ld c, a                                          ; $7218: $4f
	ret nz                                           ; $7219: $c0

	sbc [hl]                                         ; $721a: $9e
	rra                                              ; $721b: $1f
	inc bc                                           ; $721c: $03
	sub b                                            ; $721d: $90
	inc bc                                           ; $721e: $03
	ldh a, [$03]                                     ; $721f: $f0 $03
	ldh a, [$03]                                     ; $7221: $f0 $03
	ldh a, [$03]                                     ; $7223: $f0 $03
	ldh a, [$03]                                     ; $7225: $f0 $03
	ldh a, [$03]                                     ; $7227: $f0 $03
	ldh a, [rSCX]                                    ; $7229: $f0 $43
	ldh a, [$df]                                     ; $722b: $f0 $df
	cp $df                                           ; $722d: $fe $df
	db $fc                                           ; $722f: $fc
	rst SubAFromDE                                          ; $7230: $df
	ld hl, sp-$21                                    ; $7231: $f8 $df
	ldh a, [$fa]                                     ; $7233: $f0 $fa
	sbc b                                            ; $7235: $98
	ld bc, $1e15                                     ; $7236: $01 $15 $1e
	ld [hl], l                                       ; $7239: $75
	ld a, [hl]                                       ; $723a: $7e
	rst $38                                          ; $723b: $ff
	ld a, a                                          ; $723c: $7f
	ld a, e                                          ; $723d: $7b
	ldh [$9c], a                                     ; $723e: $e0 $9c
	jr nz, jr_028_7280                               ; $7240: $20 $3e

	ld a, a                                          ; $7242: $7f
	ld a, e                                          ; $7243: $7b
	ld sp, hl                                        ; $7244: $f9
	sbc b                                            ; $7245: $98
	rst $38                                          ; $7246: $ff
	ld d, l                                          ; $7247: $55
	xor d                                            ; $7248: $aa
	push af                                          ; $7249: $f5
	sbc [hl]                                         ; $724a: $9e
	db $d3                                           ; $724b: $d3
	ld a, [$d073]                                    ; $724c: $fa $73 $d0
	sbc l                                            ; $724f: $9d
	ldh [$fc], a                                     ; $7250: $e0 $fc
	sbc $ff                                          ; $7252: $de $ff
	sbc b                                            ; $7254: $98
	ld b, b                                          ; $7255: $40
	nop                                              ; $7256: $00
	ld d, l                                          ; $7257: $55
	xor d                                            ; $7258: $aa
	pop de                                           ; $7259: $d1
	sbc [hl]                                         ; $725a: $9e
	db $fd                                           ; $725b: $fd
	ld [hl], a                                       ; $725c: $77
	ldh a, [hDisp1_BGP]                                     ; $725d: $f0 $92
	ld bc, $e707                                     ; $725f: $01 $07 $e7
	rst $38                                          ; $7262: $ff
	rst $38                                          ; $7263: $ff
	rrca                                             ; $7264: $0f
	ld bc, $a8c0                                     ; $7265: $01 $c0 $a8
	ld d, a                                          ; $7268: $57
	xor d                                            ; $7269: $aa
	ld d, l                                          ; $726a: $55
	ld a, [$9efe]                                    ; $726b: $fa $fe $9e
	ldh a, [rPCM34]                                  ; $726e: $f0 $77
	ldh [$df], a                                     ; $7270: $e0 $df
	rst $38                                          ; $7272: $ff
	sbc c                                            ; $7273: $99
	ld a, a                                          ; $7274: $7f
	rrca                                             ; $7275: $0f
	ld bc, $6840                                     ; $7276: $01 $40 $68
	cp d                                             ; $7279: $ba
	db $fc                                           ; $727a: $fc
	sbc [hl]                                         ; $727b: $9e
	add b                                            ; $727c: $80
	ld e, a                                          ; $727d: $5f
	db $ed                                           ; $727e: $ed
	inc bc                                           ; $727f: $03

jr_028_7280:
	ld [hl], b                                       ; $7280: $70
	inc bc                                           ; $7281: $03
	ldh a, [$03]                                     ; $7282: $f0 $03
	ldh a, [$03]                                     ; $7284: $f0 $03
	ldh a, [$03]                                     ; $7286: $f0 $03
	ldh a, [$03]                                     ; $7288: $f0 $03
	ldh a, [$3f]                                     ; $728a: $f0 $3f
	ldh a, [hDisp1_LCDC]                                     ; $728c: $f0 $8f
	pop hl                                           ; $728e: $e1
	db $e3                                           ; $728f: $e3
	db $e3                                           ; $7290: $e3
	rst JumpTable                                          ; $7291: $c7
	jp nz, $8687                                     ; $7292: $c2 $87 $86

	dec c                                            ; $7295: $0d
	ld bc, $0301                                     ; $7296: $01 $01 $03
	inc bc                                           ; $7299: $03
	rlca                                             ; $729a: $07
	rlca                                             ; $729b: $07
	rrca                                             ; $729c: $0f
	rrca                                             ; $729d: $0f
	sbc $ff                                          ; $729e: $de $ff
	ld a, [hl]                                       ; $72a0: $7e
	pop af                                           ; $72a1: $f1
	sbc h                                            ; $72a2: $9c
	nop                                              ; $72a3: $00
	inc l                                            ; $72a4: $2c
	ld e, l                                          ; $72a5: $5d
	push de                                          ; $72a6: $d5
	rst $38                                          ; $72a7: $ff
	sbc e                                            ; $72a8: $9b
	rst FarCall                                          ; $72a9: $f7
	ld [hl+], a                                      ; $72aa: $22
	nop                                              ; $72ab: $00
	ret nz                                           ; $72ac: $c0

	db $d3                                           ; $72ad: $d3
	rst $38                                          ; $72ae: $ff
	sbc l                                            ; $72af: $9d
	ld d, a                                          ; $72b0: $57
	ld a, [bc]                                       ; $72b1: $0a
	reti                                             ; $72b2: $d9


	rst $38                                          ; $72b3: $ff
	sbc l                                            ; $72b4: $9d
	db $fd                                           ; $72b5: $fd
	cp $77                                           ; $72b6: $fe $77
	cp $9d                                           ; $72b8: $fe $9d
	db $f4                                           ; $72ba: $f4
	ld sp, hl                                        ; $72bb: $f9
	ld h, l                                          ; $72bc: $65
	jr c, @-$6f                                      ; $72bd: $38 $8f

	dec e                                            ; $72bf: $1d
	ldh a, [c]                                       ; $72c0: $f2
	ld d, h                                          ; $72c1: $54
	xor b                                            ; $72c2: $a8
	ld d, b                                          ; $72c3: $50
	add b                                            ; $72c4: $80
	ld d, $a8                                        ; $72c5: $16 $a8
	cp $8d                                           ; $72c7: $fe $8d
	xor d                                            ; $72c9: $aa
	call nc, Call_028_7ca8                           ; $72ca: $d4 $a8 $7c
	add sp, $54                                      ; $72cd: $e8 $54
	cp $9a                                           ; $72cf: $fe $9a
	ld [$0814], sp                                   ; $72d1: $08 $14 $08
	ld b, b                                          ; $72d4: $40
	and b                                            ; $72d5: $a0
	ld sp, hl                                        ; $72d6: $f9
	sbc [hl]                                         ; $72d7: $9e
	ccf                                              ; $72d8: $3f
	halt                                             ; $72d9: $76
	or l                                             ; $72da: $b5
	sbc h                                            ; $72db: $9c
	inc b                                            ; $72dc: $04
	ld [$fc09], sp                                   ; $72dd: $08 $09 $fc
	ld a, a                                          ; $72e0: $7f
	ld hl, sp-$62                                    ; $72e1: $f8 $9e
	ld [$a26a], sp                                   ; $72e3: $08 $6a $a2
	sbc [hl]                                         ; $72e6: $9e
	ldh [$fa], a                                     ; $72e7: $e0 $fa
	sbc [hl]                                         ; $72e9: $9e
	ldh [$db], a                                     ; $72ea: $e0 $db
	rst $38                                          ; $72ec: $ff
	ld a, a                                          ; $72ed: $7f
	db $ed                                           ; $72ee: $ed
	inc bc                                           ; $72ef: $03
	ld b, b                                          ; $72f0: $40
	inc bc                                           ; $72f1: $03
	ldh a, [$03]                                     ; $72f2: $f0 $03
	ldh a, [$03]                                     ; $72f4: $f0 $03
	ldh a, [$2f]                                     ; $72f6: $f0 $2f
	ldh a, [$6d]                                     ; $72f8: $f0 $6d
	adc [hl]                                         ; $72fa: $8e
	ld sp, hl                                        ; $72fb: $f9
	sbc d                                            ; $72fc: $9a
	ld [$3006], sp                                   ; $72fd: $08 $06 $30
	nop                                              ; $7300: $00
	ld h, b                                          ; $7301: $60
	ld a, b                                          ; $7302: $78
	ld c, c                                          ; $7303: $49
	sub c                                            ; $7304: $91
	rra                                              ; $7305: $1f
	add hl, de                                       ; $7306: $19
	nop                                              ; $7307: $00
	jr nz, jr_028_730a                               ; $7308: $20 $00

jr_028_730a:
	ld b, b                                          ; $730a: $40
	ld b, b                                          ; $730b: $40
	nop                                              ; $730c: $00
	add hl, sp                                       ; $730d: $39
	ld a, c                                          ; $730e: $79
	inc bc                                           ; $730f: $03
	ldh [$5a], a                                     ; $7310: $e0 $5a
	add h                                            ; $7312: $84
	ld [hl], e                                       ; $7313: $73
	ret z                                            ; $7314: $c8

	adc [hl]                                         ; $7315: $8e
	ld a, a                                          ; $7316: $7f
	rst SubAFromBC                                          ; $7317: $e7
	ld b, d                                          ; $7318: $42
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	add $8f                                          ; $731b: $c6 $8f
	cpl                                              ; $731d: $2f
	ld l, [hl]                                       ; $731e: $6e
	and b                                            ; $731f: $a0
	inc l                                            ; $7320: $2c
	jr z, jr_028_735d                                ; $7321: $28 $3a

	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst SubAFromDE                                          ; $7325: $df
	sbc a                                            ; $7326: $9f
	sbc $1f                                          ; $7327: $de $1f
	ld a, a                                          ; $7329: $7f
	ld d, $98                                        ; $732a: $16 $98
	jr nc, jr_028_73a7                               ; $732c: $30 $79

	ld [hl], c                                       ; $732e: $71
	ld h, e                                          ; $732f: $63
	inc bc                                           ; $7330: $03
	ld b, $85                                        ; $7331: $06 $85
	jp c, $8bff                                      ; $7333: $da $ff $8b

	adc $ed                                          ; $7336: $ce $ed
	jp c, $aad5                                      ; $7338: $da $d5 $aa

	ret nc                                           ; $733b: $d0

	jr nz, @-$3e                                     ; $733c: $20 $c0

	and b                                            ; $733e: $a0
	ldh a, [$e0]                                     ; $733f: $f0 $e0
	ldh [$c0], a                                     ; $7341: $e0 $c0
	add b                                            ; $7343: $80
	add b                                            ; $7344: $80
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	call nc, Call_028_40e0                           ; $7347: $d4 $e0 $40
	ld a, e                                          ; $734a: $7b
	ld a, [$657d]                                    ; $734b: $fa $7d $65
	sbc [hl]                                         ; $734e: $9e
	jr z, jr_028_73be                                ; $734f: $28 $6d

	ld sp, $0690                                     ; $7351: $31 $90 $06
	ld b, b                                          ; $7354: $40
	add b                                            ; $7355: $80
	inc bc                                           ; $7356: $03
	dec c                                            ; $7357: $0d
	add hl, sp                                       ; $7358: $39
	db $e4                                           ; $7359: $e4
	jp z, $0014                                      ; $735a: $ca $14 $00

jr_028_735d:
	nop                                              ; $735d: $00
	inc bc                                           ; $735e: $03
	ld c, $30                                        ; $735f: $0e $30
	jp $cf7a                                         ; $7361: $c3 $7a $cf


	add a                                            ; $7364: $87
	ld a, a                                          ; $7365: $7f
	cp b                                             ; $7366: $b8
	push bc                                          ; $7367: $c5
	inc h                                            ; $7368: $24
	sub e                                            ; $7369: $93
	ld h, h                                          ; $736a: $64
	jp z, $7f08                                      ; $736b: $ca $08 $7f

	rst JumpTable                                          ; $736e: $c7
	jr c, @-$3b                                      ; $736f: $38 $c3

	inc c                                            ; $7371: $0c
	dec de                                           ; $7372: $1b
	scf                                              ; $7373: $37
	inc a                                            ; $7374: $3c
	rst SubAFromDE                                          ; $7375: $df
	ccf                                              ; $7376: $3f
	rrca                                             ; $7377: $0f
	or l                                             ; $7378: $b5
	ld d, d                                          ; $7379: $52
	ld c, h                                          ; $737a: $4c
	sbc d                                            ; $737b: $9a
	inc c                                            ; $737c: $0c
	ld a, d                                          ; $737d: $7a
	add $9b                                          ; $737e: $c6 $9b
	ld a, b                                          ; $7380: $78
	pop hl                                           ; $7381: $e1
	add e                                            ; $7382: $83
	inc b                                            ; $7383: $04
	ld a, d                                          ; $7384: $7a
	or l                                             ; $7385: $b5
	sbc d                                            ; $7386: $9a
	inc e                                            ; $7387: $1c
	cp c                                             ; $7388: $b9
	db $fc                                           ; $7389: $fc
	sub [hl]                                         ; $738a: $96
	ld h, $75                                        ; $738b: $26 $75
	ld de, $7f9b                                     ; $738d: $11 $9b $7f
	jp $0101                                         ; $7390: $c3 $01 $01


	halt                                             ; $7393: $76
	and d                                            ; $7394: $a2
	sbc e                                            ; $7395: $9b
	add b                                            ; $7396: $80
	ldh [$3c], a                                     ; $7397: $e0 $3c
	ld e, a                                          ; $7399: $5f
	ld l, c                                          ; $739a: $69
	ld sp, $bf9e                                     ; $739b: $31 $9e $bf
	ld c, c                                          ; $739e: $49
	ld sp, $2067                                     ; $739f: $31 $67 $20
	sbc [hl]                                         ; $73a2: $9e
	ld a, a                                          ; $73a3: $7f
	inc bc                                           ; $73a4: $03
	nop                                              ; $73a5: $00
	inc bc                                           ; $73a6: $03

jr_028_73a7:
	ldh a, [$03]                                     ; $73a7: $f0 $03
	ldh a, [$fc]                                     ; $73a9: $f0 $fc
	sbc b                                            ; $73ab: $98
	ldh a, [$f1]                                     ; $73ac: $f0 $f1
	pop af                                           ; $73ae: $f1
	db $e3                                           ; $73af: $e3
	ldh [c], a                                       ; $73b0: $e2
	add $c4                                          ; $73b1: $c6 $c4
	ld a, d                                          ; $73b3: $7a
	sbc $fb                                          ; $73b4: $de $fb
	ld a, a                                          ; $73b6: $7f
	inc de                                           ; $73b7: $13
	sbc b                                            ; $73b8: $98
	inc bc                                           ; $73b9: $03
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	inc c                                            ; $73bc: $0c
	inc c                                            ; $73bd: $0c

jr_028_73be:
	inc e                                            ; $73be: $1c
	ld bc, $f97b                                     ; $73bf: $01 $7b $f9
	or $7e                                           ; $73c2: $f6 $7e
	or h                                             ; $73c4: $b4
	ei                                               ; $73c5: $fb
	sbc l                                            ; $73c6: $9d
	ld b, b                                          ; $73c7: $40
	ld de, $fb77                                     ; $73c8: $11 $77 $fb
	ld a, [hl]                                       ; $73cb: $7e
	xor c                                            ; $73cc: $a9
	ld [hl], e                                       ; $73cd: $73
	db $f4                                           ; $73ce: $f4
	halt                                             ; $73cf: $76
	ldh [hDisp1_WX], a                                     ; $73d0: $e0 $96
	adc e                                            ; $73d2: $8b
	ld c, $1c                                        ; $73d3: $0e $1c
	jr jr_028_7407                                   ; $73d5: $18 $30

	jr nc, jr_028_7439                               ; $73d7: $30 $60

	ld h, b                                          ; $73d9: $60
	inc b                                            ; $73da: $04
	ld h, a                                          ; $73db: $67
	rst SubAFromDE                                          ; $73dc: $df
	sbc [hl]                                         ; $73dd: $9e
	add b                                            ; $73de: $80
	ld [hl], a                                       ; $73df: $77
	inc [hl]                                         ; $73e0: $34
	ld a, [hl]                                       ; $73e1: $7e
	ret c                                            ; $73e2: $d8

	ld a, e                                          ; $73e3: $7b
	db $fc                                           ; $73e4: $fc
	ld [hl], b                                       ; $73e5: $70
	dec l                                            ; $73e6: $2d
	add b                                            ; $73e7: $80
	dec c                                            ; $73e8: $0d
	ccf                                              ; $73e9: $3f
	call z, $793e                                    ; $73ea: $cc $3e $79
	rst AddAOntoHL                                          ; $73ed: $ef
	ld hl, sp+$43                                    ; $73ee: $f8 $43
	ld [$f03f], sp                                   ; $73f0: $08 $3f $f0
	ccf                                              ; $73f3: $3f
	ld b, a                                          ; $73f4: $47

jr_028_73f5:
	sbc [hl]                                         ; $73f5: $9e
	ldh a, [$80]                                     ; $73f6: $f0 $80
	ld sp, hl                                        ; $73f8: $f9
	add a                                            ; $73f9: $87
	ld e, $0f                                        ; $73fa: $1e $0f
	db $e3                                           ; $73fc: $e3
	jr c, jr_028_73f5                                ; $73fd: $38 $f6

Call_028_73ff:
	add c                                            ; $73ff: $81
	ld hl, sp+$07                                    ; $7400: $f8 $07
	ld bc, $fcf0                                     ; $7402: $01 $f0 $fc
	rra                                              ; $7405: $1f
	rrca                                             ; $7406: $0f

jr_028_7407:
	add d                                            ; $7407: $82
	ld a, a                                          ; $7408: $7f
	sub a                                            ; $7409: $97
	ld a, [bc]                                       ; $740a: $0a
	sub e                                            ; $740b: $93
	ld b, d                                          ; $740c: $42
	sub $ee                                          ; $740d: $d6 $ee
	halt                                             ; $740f: $76
	cp d                                             ; $7410: $ba
	ld l, e                                          ; $7411: $6b
	di                                               ; $7412: $f3
	ldh [c], a                                       ; $7413: $e2
	ldh [c], a                                       ; $7414: $e2
	ld h, d                                          ; $7415: $62
	ld [hl-], a                                      ; $7416: $32
	sbc d                                            ; $7417: $9a
	adc $74                                          ; $7418: $ce $74
	xor b                                            ; $741a: $a8
	ld d, b                                          ; $741b: $50
	or b                                             ; $741c: $b0
	ld e, b                                          ; $741d: $58
	ld e, c                                          ; $741e: $59
	rst SubAFromDE                                          ; $741f: $df
	xor a                                            ; $7420: $af
	adc b                                            ; $7421: $88
	ret nc                                           ; $7422: $d0

	ldh [$60], a                                     ; $7423: $e0 $60
	sbc $30                                          ; $7425: $de $30

Call_028_7427:
	add h                                            ; $7427: $84
	ld [hl], b                                       ; $7428: $70
	ld c, [hl]                                       ; $7429: $4e
	sbc l                                            ; $742a: $9d
	dec sp                                           ; $742b: $3b
	ld a, d                                          ; $742c: $7a
	or $ed                                           ; $742d: $f6 $ed
	call z, $01da                                    ; $742f: $cc $da $01
	ld [bc], a                                       ; $7432: $02
	inc b                                            ; $7433: $04
	dec b                                            ; $7434: $05
	add hl, bc                                       ; $7435: $09
	ld [de], a                                       ; $7436: $12
	ld [hl-], a                                      ; $7437: $32
	ld h, h                                          ; $7438: $64

jr_028_7439:
	ld e, c                                          ; $7439: $59
	ld a, h                                          ; $743a: $7c
	ld [hl], $b6                                     ; $743b: $36 $b6
	scf                                              ; $743d: $37
	ld l, a                                          ; $743e: $6f
	ld c, e                                          ; $743f: $4b
	adc $bf                                          ; $7440: $ce $bf
	sbc a                                            ; $7442: $9f
	halt                                             ; $7443: $76
	ld b, c                                          ; $7444: $41
	adc h                                            ; $7445: $8c
	ccf                                              ; $7446: $3f
	dec sp                                           ; $7447: $3b
	ldh [$f0], a                                     ; $7448: $e0 $f0
	ld e, h                                          ; $744a: $5c
	xor [hl]                                         ; $744b: $ae
	ld d, e                                          ; $744c: $53
	ld a, b                                          ; $744d: $78
	cp h                                             ; $744e: $bc
	cp $00                                           ; $744f: $fe $00
	add b                                            ; $7451: $80
	ret nz                                           ; $7452: $c0

	ld h, b                                          ; $7453: $60
	or b                                             ; $7454: $b0
	adc b                                            ; $7455: $88
	call nz, $0fc2                                   ; $7456: $c4 $c2 $0f
	ld a, e                                          ; $7459: $7b
	ld c, b                                          ; $745a: $48
	sbc l                                            ; $745b: $9d
	add b                                            ; $745c: $80
	ldh [c], a                                       ; $745d: $e2
	ld l, d                                          ; $745e: $6a
	or b                                             ; $745f: $b0
	sbc l                                            ; $7460: $9d
	inc bc                                           ; $7461: $03
	ld bc, $107b                                     ; $7462: $01 $7b $10
	ld a, [hl]                                       ; $7465: $7e
	and d                                            ; $7466: $a2
	sbc e                                            ; $7467: $9b
	inc bc                                           ; $7468: $03
	add b                                            ; $7469: $80
	ld [hl], b                                       ; $746a: $70
	or [hl]                                          ; $746b: $b6
	ld l, e                                          ; $746c: $6b
	ld [hl+], a                                      ; $746d: $22
	sbc [hl]                                         ; $746e: $9e
	call z, $a26e                                    ; $746f: $cc $6e $a2
	sbc [hl]                                         ; $7472: $9e
	rra                                              ; $7473: $1f
	ld h, e                                          ; $7474: $63
	ld [hl+], a                                      ; $7475: $22
	ld [bc], a                                       ; $7476: $02
	ret nc                                           ; $7477: $d0

	dec sp                                           ; $7478: $3b
	ldh a, [$75]                                     ; $7479: $f0 $75
	adc [hl]                                         ; $747b: $8e
	ld sp, hl                                        ; $747c: $f9
	sub d                                            ; $747d: $92
	adc b                                            ; $747e: $88
	add b                                            ; $747f: $80
	inc d                                            ; $7480: $14
	ld [$1e14], sp                                   ; $7481: $08 $14 $1e
	inc e                                            ; $7484: $1c
	ld d, [hl]                                       ; $7485: $56
	nop                                              ; $7486: $00
	ld [$1008], sp                                   ; $7487: $08 $08 $10
	nop                                              ; $748a: $00
	sbc $20                                          ; $748b: $de $20
	sub a                                            ; $748d: $97
	ld [$3000], sp                                   ; $748e: $08 $00 $30
	ld bc, $6682                                     ; $7491: $01 $82 $66
	dec hl                                           ; $7494: $2b
	sub [hl]                                         ; $7495: $96
	halt                                             ; $7496: $76
	call z, Call_028_619e                            ; $7497: $cc $9e $61
	ld a, e                                          ; $749a: $7b
	sbc d                                            ; $749b: $9a
	sub l                                            ; $749c: $95
	ld b, e                                          ; $749d: $43
	pop bc                                           ; $749e: $c1
	ld b, $03                                        ; $749f: $06 $03
	nop                                              ; $74a1: $00
	ld b, $14                                        ; $74a2: $06 $14
	inc de                                           ; $74a4: $13
	pop bc                                           ; $74a5: $c1
	inc bc                                           ; $74a6: $03
	halt                                             ; $74a7: $76
	xor b                                            ; $74a8: $a8
	adc e                                            ; $74a9: $8b
	ld c, $0c                                        ; $74aa: $0e $0c
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	and b                                            ; $74ae: $a0
	nop                                              ; $74af: $00
	ld [hl], c                                       ; $74b0: $71
	ld hl, $aad3                                     ; $74b1: $21 $d3 $aa
	add b                                            ; $74b4: $80
	add b                                            ; $74b5: $80
	ld bc, $0231                                     ; $74b6: $01 $31 $02
	ld [bc], a                                       ; $74b9: $02
	inc b                                            ; $74ba: $04
	call nz, $4040                                   ; $74bb: $c4 $40 $40
	ld [hl], c                                       ; $74be: $71
	sbc c                                            ; $74bf: $99
	sbc [hl]                                         ; $74c0: $9e
	dec b                                            ; $74c1: $05
	ld [hl], a                                       ; $74c2: $77
	ei                                               ; $74c3: $fb
	db $fd                                           ; $74c4: $fd
	sbc h                                            ; $74c5: $9c
	add hl, bc                                       ; $74c6: $09
	ccf                                              ; $74c7: $3f
	ld bc, $02de                                     ; $74c8: $01 $de $02
	sbc d                                            ; $74cb: $9a
	inc bc                                           ; $74cc: $03
	dec b                                            ; $74cd: $05
	ld c, $3f                                        ; $74ce: $0e $3f
	ld bc, $03de                                     ; $74d0: $01 $de $03
	add b                                            ; $74d3: $80
	ld [bc], a                                       ; $74d4: $02
	ld b, $08                                        ; $74d5: $06 $08
	rst $38                                          ; $74d7: $ff
	ld c, h                                          ; $74d8: $4c
	rst SubAFromDE                                          ; $74d9: $df
	or e                                             ; $74da: $b3
	and a                                            ; $74db: $a7
	rst AddAOntoHL                                          ; $74dc: $ef
	ld a, d                                          ; $74dd: $7a
	rlca                                             ; $74de: $07
	rst $38                                          ; $74df: $ff
	or e                                             ; $74e0: $b3
	ccf                                              ; $74e1: $3f
	ld h, c                                          ; $74e2: $61
	ld h, e                                          ; $74e3: $63
	ld b, [hl]                                       ; $74e4: $46
	rst GetHLinHL                                          ; $74e5: $cf
	nop                                              ; $74e6: $00
	rst $38                                          ; $74e7: $ff
	and $d5                                          ; $74e8: $e6 $d5
	adc l                                            ; $74ea: $8d
	or [hl]                                          ; $74eb: $b6
	ld a, [hl-]                                      ; $74ec: $3a
	and a                                            ; $74ed: $a7
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	jp nz, $3b8c                                     ; $74f0: $c2 $8c $3b

	add b                                            ; $74f3: $80
	ld e, [hl]                                       ; $74f4: $5e
	cp [hl]                                          ; $74f5: $be
	ld a, [hl-]                                      ; $74f6: $3a
	ld e, a                                          ; $74f7: $5f
	db $e3                                           ; $74f8: $e3
	ld e, d                                          ; $74f9: $5a
	ld a, $c7                                        ; $74fa: $3e $c7
	ld e, [hl]                                       ; $74fc: $5e
	cp b                                             ; $74fd: $b8
	ldh a, [$e6]                                     ; $74fe: $f0 $e6
	cp $3f                                           ; $7500: $fe $3f
	rst $38                                          ; $7502: $ff
	rst $38                                          ; $7503: $ff
	add hl, sp                                       ; $7504: $39
	ld h, b                                          ; $7505: $60
	ld b, b                                          ; $7506: $40
	cp h                                             ; $7507: $bc
	ld e, l                                          ; $7508: $5d
	or $90                                           ; $7509: $f6 $90
	ld a, $eb                                        ; $750b: $3e $eb
	rst SubAFromHL                                          ; $750d: $d7
	ld b, l                                          ; $750e: $45
	ld h, e                                          ; $750f: $63
	xor $f8                                          ; $7510: $ee $f8
	ldh [$7d], a                                     ; $7512: $e0 $7d
	dec e                                            ; $7514: $1d
	add b                                            ; $7515: $80
	ld c, l                                          ; $7516: $4d
	ld c, [hl]                                       ; $7517: $4e
	or h                                             ; $7518: $b4
	ld h, c                                          ; $7519: $61
	ld e, a                                          ; $751a: $5f
	dec hl                                           ; $751b: $2b
	sub h                                            ; $751c: $94
	di                                               ; $751d: $f3
	call z, $c8eb                                    ; $751e: $cc $eb $c8
	ld hl, sp+$30                                    ; $7521: $f8 $30
	inc e                                            ; $7523: $1c
	rrca                                             ; $7524: $0f
	rst $38                                          ; $7525: $ff
	ccf                                              ; $7526: $3f
	sbc a                                            ; $7527: $9f
	sub $9f                                          ; $7528: $d6 $9f
	sub l                                            ; $752a: $95
	ld a, [hl+]                                      ; $752b: $2a
	ld c, e                                          ; $752c: $4b
	sub l                                            ; $752d: $95
	and $49                                          ; $752e: $e6 $49
	dec sp                                           ; $7530: $3b
	ld [hl], d                                       ; $7531: $72
	ld h, [hl]                                       ; $7532: $66
	push bc                                          ; $7533: $c5
	adc l                                            ; $7534: $8d
	sbc e                                            ; $7535: $9b
	dec bc                                           ; $7536: $0b
	sbc e                                            ; $7537: $9b
	or $ff                                           ; $7538: $f6 $ff
	sbc $bf                                          ; $753a: $de $bf
	sub d                                            ; $753c: $92
	ccf                                              ; $753d: $3f
	cpl                                              ; $753e: $2f
	cpl                                              ; $753f: $2f
	ld b, a                                          ; $7540: $47
	ldh [c], a                                       ; $7541: $e2
	pop hl                                           ; $7542: $e1
	pop af                                           ; $7543: $f1
	pop af                                           ; $7544: $f1
	ld hl, sp-$04                                    ; $7545: $f8 $fc
	rst $38                                          ; $7547: $ff
	rst $38                                          ; $7548: $ff
	ld de, $6e75                                     ; $7549: $11 $75 $6e
	sbc h                                            ; $754c: $9c
	or $d2                                           ; $754d: $f6 $d2
	sub d                                            ; $754f: $92
	halt                                             ; $7550: $76
	ld b, e                                          ; $7551: $43
	sub [hl]                                         ; $7552: $96
	ccf                                              ; $7553: $3f
	ld a, a                                          ; $7554: $7f
	rst $38                                          ; $7555: $ff
	rst $38                                          ; $7556: $ff
	sbc e                                            ; $7557: $9b
	rst SubAFromDE                                          ; $7558: $df
	call Call_028_6fef                               ; $7559: $cd $ef $6f
	sbc $57                                          ; $755c: $de $57
	sbc d                                            ; $755e: $9a
	rst SubAFromBC                                          ; $755f: $e7
	db $e3                                           ; $7560: $e3
	di                                               ; $7561: $f3
	pop af                                           ; $7562: $f1
	pop af                                           ; $7563: $f1
	sbc $f9                                          ; $7564: $de $f9
	sub l                                            ; $7566: $95
	ret nz                                           ; $7567: $c0

	ret nc                                           ; $7568: $d0

	ld a, [$ff57]                                    ; $7569: $fa $57 $ff
	ld d, l                                          ; $756c: $55
	xor d                                            ; $756d: $aa
	nop                                              ; $756e: $00
	add b                                            ; $756f: $80
	ldh [$7b], a                                     ; $7570: $e0 $7b
	db $d3                                           ; $7572: $d3
	ld l, [hl]                                       ; $7573: $6e
	or l                                             ; $7574: $b5
	sbc h                                            ; $7575: $9c
	ld b, b                                          ; $7576: $40
	add sp, -$03                                     ; $7577: $e8 $fd
	ld [hl], d                                       ; $7579: $72
	ldh [$7d], a                                     ; $757a: $e0 $7d
	ld sp, $fe9e                                     ; $757c: $31 $9e $fe
	db $db                                           ; $757f: $db
	rst $38                                          ; $7580: $ff
	ld a, e                                          ; $7581: $7b
	db $ed                                           ; $7582: $ed
	sbc [hl]                                         ; $7583: $9e
	ldh [rOCPS], a                                   ; $7584: $e0 $6a
	sub b                                            ; $7586: $90
	sbc [hl]                                         ; $7587: $9e
	ldh a, [rDMA]                                    ; $7588: $f0 $46
	ret nz                                           ; $758a: $c0

	sbc $f8                                          ; $758b: $de $f8
	rst SubAFromDE                                          ; $758d: $df
	ldh a, [$9c]                                     ; $758e: $f0 $9c
	pop hl                                           ; $7590: $e1
	ldh [$c1], a                                     ; $7591: $e0 $c1
	ld [hl], b                                       ; $7593: $70
	or d                                             ; $7594: $b2
	ld a, e                                          ; $7595: $7b
	dec e                                            ; $7596: $1d
	sbc e                                            ; $7597: $9b
	ld b, e                                          ; $7598: $43
	ret nc                                           ; $7599: $d0

	xor d                                            ; $759a: $aa
	ld d, l                                          ; $759b: $55
	ld [hl], a                                       ; $759c: $77
	cp $9e                                           ; $759d: $fe $9e
	ld a, h                                          ; $759f: $7c
	ld a, e                                          ; $75a0: $7b
	sub h                                            ; $75a1: $94
	db $dd                                           ; $75a2: $dd
	rst $38                                          ; $75a3: $ff
	sbc h                                            ; $75a4: $9c
	db $eb                                           ; $75a5: $eb
	ld d, d                                          ; $75a6: $52
	xor b                                            ; $75a7: $a8
	ld [hl], e                                       ; $75a8: $73
	ldh a, [$9d]                                     ; $75a9: $f0 $9d
	inc b                                            ; $75ab: $04
	xor l                                            ; $75ac: $ad
	db $db                                           ; $75ad: $db
	rst $38                                          ; $75ae: $ff
	sub [hl]                                         ; $75af: $96
	ld a, [bc]                                       ; $75b0: $0a
	add l                                            ; $75b1: $85
	ld c, d                                          ; $75b2: $4a
	dec e                                            ; $75b3: $1d
	add c                                            ; $75b4: $81
	ld d, h                                          ; $75b5: $54
	xor d                                            ; $75b6: $aa
	ld d, l                                          ; $75b7: $55
	ld bc, $8e7b                                     ; $75b8: $01 $7b $8e
	ld [hl], a                                       ; $75bb: $77
	and c                                            ; $75bc: $a1
	sub e                                            ; $75bd: $93
	ld e, $26                                        ; $75be: $1e $26
	and $61                                          ; $75c0: $e6 $61
	ret nz                                           ; $75c2: $c0

	dec b                                            ; $75c3: $05
	and d                                            ; $75c4: $a2
	ld d, l                                          ; $75c5: $55
	call nz, $18c8                                   ; $75c6: $c4 $c8 $18
	ld e, $7b                                        ; $75c9: $1e $7b
	ld c, $92                                        ; $75cb: $0e $92
	rst $38                                          ; $75cd: $ff
	ld c, $35                                        ; $75ce: $0e $35
	ld l, d                                          ; $75d0: $6a
	add a                                            ; $75d1: $87
	ld bc, $8054                                     ; $75d2: $01 $54 $80
	ld d, l                                          ; $75d5: $55
	nop                                              ; $75d6: $00
	ld [$7814], sp                                   ; $75d7: $08 $14 $78
	ld [hl], a                                       ; $75da: $77
	ldh [$97], a                                     ; $75db: $e0 $97
	and l                                            ; $75dd: $a5
	ld d, l                                          ; $75de: $55
	xor l                                            ; $75df: $ad
	ld d, d                                          ; $75e0: $52
	and d                                            ; $75e1: $a2
	ld d, d                                          ; $75e2: $52
	and e                                            ; $75e3: $a3
	ld b, a                                          ; $75e4: $47
	sbc $06                                          ; $75e5: $de $06
	add b                                            ; $75e7: $80
	rrca                                             ; $75e8: $0f
	rra                                              ; $75e9: $1f
	xor a                                            ; $75ea: $af
	ld e, a                                          ; $75eb: $5f
	cp a                                             ; $75ec: $bf
	ld [hl], a                                       ; $75ed: $77
	db $ec                                           ; $75ee: $ec
	rst $38                                          ; $75ef: $ff
	call z, $f0d8                                    ; $75f0: $cc $d8 $f0
	pop af                                           ; $75f3: $f1
	cp e                                             ; $75f4: $bb
	rst SubAFromDE                                          ; $75f5: $df
	cp a                                             ; $75f6: $bf
	cp a                                             ; $75f7: $bf
	ldh a, [$e0]                                     ; $75f8: $f0 $e0
	ret nz                                           ; $75fa: $c0

	ld b, b                                          ; $75fb: $40
	ld h, a                                          ; $75fc: $67
	ld [$db32], a                                    ; $75fd: $ea $32 $db
	ei                                               ; $7600: $fb
	ld a, e                                          ; $7601: $7b
	ld a, a                                          ; $7602: $7f
	db $fc                                           ; $7603: $fc
	cp [hl]                                          ; $7604: $be
	jp $98e3                                         ; $7605: $c3 $e3 $98


	pop af                                           ; $7608: $f1
	add hl, sp                                       ; $7609: $39
	add hl, bc                                       ; $760a: $09
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	ret nz                                           ; $760d: $c0

	ldh [$dc], a                                     ; $760e: $e0 $dc
	ret nz                                           ; $7610: $c0

	ld a, a                                          ; $7611: $7f
	ld [hl], a                                       ; $7612: $77
	ld l, d                                          ; $7613: $6a
	add b                                            ; $7614: $80
	ld a, a                                          ; $7615: $7f
	or l                                             ; $7616: $b5
	add b                                            ; $7617: $80
	ld l, d                                          ; $7618: $6a
	ld l, e                                          ; $7619: $6b
	ld e, [hl]                                       ; $761a: $5e
	cp [hl]                                          ; $761b: $be
	db $f4                                           ; $761c: $f4
	push hl                                          ; $761d: $e5
	adc e                                            ; $761e: $8b
	ld c, [hl]                                       ; $761f: $4e
	ld e, [hl]                                       ; $7620: $5e
	ld e, [hl]                                       ; $7621: $5e
	ld [hl], e                                       ; $7622: $73
	db $e3                                           ; $7623: $e3
	rst JumpTable                                          ; $7624: $c7
	add a                                            ; $7625: $87
	ld c, $d4                                        ; $7626: $0e $d4
	ld l, c                                          ; $7628: $69
	ld d, a                                          ; $7629: $57
	ld [$dfd8], a                                    ; $762a: $ea $d8 $df
	jp c, Jump_028_79ee                              ; $762d: $da $ee $79

	ld [hl], b                                       ; $7630: $70
	ld a, b                                          ; $7631: $78
	ld e, l                                          ; $7632: $5d
	rst GetHLinHL                                          ; $7633: $cf
	rst GetHLinHL                                          ; $7634: $cf
	ld c, a                                          ; $7635: $4f
	ld e, e                                          ; $7636: $5b
	add d                                            ; $7637: $82
	and l                                            ; $7638: $a5
	ld l, d                                          ; $7639: $6a
	inc b                                            ; $763a: $04
	dec l                                            ; $763b: $2d
	db $db                                           ; $763c: $db
	dec sp                                           ; $763d: $3b
	ld d, $2c                                        ; $763e: $16 $2c
	cp $fd                                           ; $7640: $fe $fd
	ei                                               ; $7642: $fb
	ldh a, [c]                                       ; $7643: $f2
	db $e4                                           ; $7644: $e4
	call z, $f3f9                                    ; $7645: $cc $f9 $f3
	ld d, a                                          ; $7648: $57
	push de                                          ; $7649: $d5
	or l                                             ; $764a: $b5
	dec [hl]                                         ; $764b: $35
	add hl, bc                                       ; $764c: $09
	ld c, d                                          ; $764d: $4a
	ld a, [hl+]                                      ; $764e: $2a
	xor d                                            ; $764f: $aa
	rst AddAOntoHL                                          ; $7650: $ef
	ld l, a                                          ; $7651: $6f
	ld c, a                                          ; $7652: $4f
	rst GetHLinHL                                          ; $7653: $cf
	rst SubAFromDE                                          ; $7654: $df
	ld a, c                                          ; $7655: $79
	ld l, h                                          ; $7656: $6c
	sub h                                            ; $7657: $94
	or l                                             ; $7658: $b5
	rst AddAOntoHL                                          ; $7659: $ef
	bit 2, e                                         ; $765a: $cb $53
	ld b, e                                          ; $765c: $43
	ld d, e                                          ; $765d: $53
	ld b, c                                          ; $765e: $41
	and a                                            ; $765f: $a7
	db $db                                           ; $7660: $db
	pop de                                           ; $7661: $d1
	pop de                                           ; $7662: $d1
	sbc $c1                                          ; $7663: $de $c1
	rst SubAFromDE                                          ; $7665: $df
	db $d3                                           ; $7666: $d3
	add b                                            ; $7667: $80
	ld l, l                                          ; $7668: $6d
	ld a, l                                          ; $7669: $7d
	ld a, c                                          ; $766a: $79
	ld a, e                                          ; $766b: $7b
	cp e                                             ; $766c: $bb
	xor h                                            ; $766d: $ac
	ld l, b                                          ; $766e: $68
	ld d, b                                          ; $766f: $50
	db $db                                           ; $7670: $db
	set 1, a                                         ; $7671: $cb $cf
	adc $ce                                          ; $7673: $ce $ce
	call c, $b098                                    ; $7675: $dc $98 $b0
	xor d                                            ; $7678: $aa
	push de                                          ; $7679: $d5
	xor e                                            ; $767a: $ab
	db $d3                                           ; $767b: $d3
	ld h, a                                          ; $767c: $67
	or a                                             ; $767d: $b7
	ld h, e                                          ; $767e: $63
	nop                                              ; $767f: $00
	push de                                          ; $7680: $d5
	xor e                                            ; $7681: $ab
	ld d, a                                          ; $7682: $57
	cpl                                              ; $7683: $2f
	rra                                              ; $7684: $1f
	rrca                                             ; $7685: $0f
	rra                                              ; $7686: $1f
	sub [hl]                                         ; $7687: $96
	rra                                              ; $7688: $1f
	ld d, a                                          ; $7689: $57
	adc d                                            ; $768a: $8a
	pop bc                                           ; $768b: $c1
	adc $cf                                          ; $768c: $ce $cf
	sbc a                                            ; $768e: $9f
	cp [hl]                                          ; $768f: $be
	dec a                                            ; $7690: $3d
	jp c, $8eff                                      ; $7691: $da $ff $8e

	cp $f0                                           ; $7694: $fe $f0
	ldh a, [$60]                                     ; $7696: $f0 $60
	add b                                            ; $7698: $80
	jr nz, jr_028_769b                               ; $7699: $20 $00

jr_028_769b:
	ret nz                                           ; $769b: $c0

	ret nz                                           ; $769c: $c0

	ld hl, sp-$10                                    ; $769d: $f8 $f0
	pop af                                           ; $769f: $f1
	pop hl                                           ; $76a0: $e1
	pop bc                                           ; $76a1: $c1
	jp $0703                                         ; $76a2: $c3 $03 $07


	ld l, e                                          ; $76a5: $6b
	jp hl                                            ; $76a6: $e9


	ld a, l                                          ; $76a7: $7d
	jr nz, @-$04                                     ; $76a8: $20 $fa

	sub e                                            ; $76aa: $93
	add $c5                                          ; $76ab: $c6 $c5
	adc d                                            ; $76ad: $8a
	add l                                            ; $76ae: $85
	ld a, [bc]                                       ; $76af: $0a
	dec b                                            ; $76b0: $05
	ld a, [bc]                                       ; $76b1: $0a
	jr nz, jr_028_76b7                               ; $76b2: $20 $03

	rlca                                             ; $76b4: $07
	rlca                                             ; $76b5: $07
	rrca                                             ; $76b6: $0f

jr_028_76b7:
	ld a, e                                          ; $76b7: $7b
	pop bc                                           ; $76b8: $c1
	sbc [hl]                                         ; $76b9: $9e
	rra                                              ; $76ba: $1f
	ld l, [hl]                                       ; $76bb: $6e
	jp nz, $aa9d                                     ; $76bc: $c2 $9d $aa

	dec b                                            ; $76bf: $05
	reti                                             ; $76c0: $d9


	rst $38                                          ; $76c1: $ff
	ld l, e                                          ; $76c2: $6b
	ldh a, [$9e]                                     ; $76c3: $f0 $9e
	ld d, l                                          ; $76c5: $55
	inc hl                                           ; $76c6: $23
	ldh a, [$9e]                                     ; $76c7: $f0 $9e
	ld d, c                                          ; $76c9: $51
	inc sp                                           ; $76ca: $33
	ldh [$7e], a                                     ; $76cb: $e0 $7e
	inc l                                            ; $76cd: $2c
	jp c, $80ff                                      ; $76ce: $da $ff $80

	xor c                                            ; $76d1: $a9
	ld d, c                                          ; $76d2: $51
	or c                                             ; $76d3: $b1
	ld d, e                                          ; $76d4: $53
	cp e                                             ; $76d5: $bb

jr_028_76d6:
	ld d, l                                          ; $76d6: $55
	xor [hl]                                         ; $76d7: $ae
	ei                                               ; $76d8: $fb
	reti                                             ; $76d9: $d9


	or e                                             ; $76da: $b3
	rst SubAFromHL                                          ; $76db: $d7
	pop af                                           ; $76dc: $f1
	pop af                                           ; $76dd: $f1
	ei                                               ; $76de: $fb
	ei                                               ; $76df: $fb
	cp $df                                           ; $76e0: $fe $df
	ld a, h                                          ; $76e2: $7c
	xor b                                            ; $76e3: $a8
	adc c                                            ; $76e4: $89
	rla                                              ; $76e5: $17
	dec de                                           ; $76e6: $1b
	ld a, [de]                                       ; $76e7: $1a
	inc b                                            ; $76e8: $04
	ccf                                              ; $76e9: $3f
	db $fc                                           ; $76ea: $fc
	jr z, jr_028_76f6                                ; $76eb: $28 $09

	rra                                              ; $76ed: $1f

jr_028_76ee:
	rla                                              ; $76ee: $17
	ld d, $99                                        ; $76ef: $16 $99
	ld a, [bc]                                       ; $76f1: $0a
	sbc $6c                                          ; $76f2: $de $6c
	jr z, jr_028_76d6                                ; $76f4: $28 $e0

jr_028_76f6:
	ldh a, [$79]                                     ; $76f6: $f0 $79
	ld c, e                                          ; $76f8: $4b
	sbc b                                            ; $76f9: $98
	ldh [rSVBK], a                                   ; $76fa: $e0 $70
	jr nc, jr_028_76ee                               ; $76fc: $30 $f0

	ldh [$e0], a                                     ; $76fe: $e0 $e0
	ret nz                                           ; $7700: $c0

	ld a, d                                          ; $7701: $7a
	jp z, $0199                                      ; $7702: $ca $99 $01

	ld b, $0f                                        ; $7705: $06 $0f
	rrca                                             ; $7707: $0f
	dec c                                            ; $7708: $0d
	dec bc                                           ; $7709: $0b
	halt                                             ; $770a: $76
	call nz, $8f78                                   ; $770b: $c4 $78 $8f
	add b                                            ; $770e: $80
	rlca                                             ; $770f: $07
	rra                                              ; $7710: $1f
	ld a, a                                          ; $7711: $7f
	and a                                            ; $7712: $a7
	dec de                                           ; $7713: $1b
	dec e                                            ; $7714: $1d
	cp $df                                           ; $7715: $fe $df
	rst $38                                          ; $7717: $ff
	inc c                                            ; $7718: $0c
	jr jr_028_7797                                   ; $7719: $18 $7c

	cp $e7                                           ; $771b: $fe $e7
	inc bc                                           ; $771d: $03
	pop hl                                           ; $771e: $e1
	ldh a, [$dd]                                     ; $771f: $f0 $dd
	rst SubAFromDE                                          ; $7721: $df
	cp l                                             ; $7722: $bd
	rst $38                                          ; $7723: $ff
	ld a, [$f7ff]                                    ; $7724: $fa $ff $f7
	db $eb                                           ; $7727: $eb
	ld a, e                                          ; $7728: $7b
	ld a, c                                          ; $7729: $79
	db $eb                                           ; $772a: $eb
	res 2, a                                         ; $772b: $cb $97
	sub a                                            ; $772d: $97
	add h                                            ; $772e: $84
	sbc l                                            ; $772f: $9d
	cp l                                             ; $7730: $bd
	jp c, $0bb5                                      ; $7731: $da $b5 $0b

	rla                                              ; $7734: $17
	ld l, [hl]                                       ; $7735: $6e
	call c, $4130                                    ; $7736: $dc $30 $41
	rst SubAFromBC                                          ; $7739: $e7
	adc $fc                                          ; $773a: $ce $fc
	ld hl, sp-$0f                                    ; $773c: $f8 $f1
	db $e3                                           ; $773e: $e3
	rst GetHLinHL                                          ; $773f: $cf
	cp a                                             ; $7740: $bf
	ld d, d                                          ; $7741: $52
	call nc, $2d94                                   ; $7742: $d4 $94 $2d
	add hl, hl                                       ; $7745: $29
	ld e, c                                          ; $7746: $59
	sub d                                            ; $7747: $92
	dec [hl]                                         ; $7748: $35
	ccf                                              ; $7749: $3f
	ld [hl], l                                       ; $774a: $75
	sub e                                            ; $774b: $93
	ld a, e                                          ; $774c: $7b
	rla                                              ; $774d: $17
	add l                                            ; $774e: $85
	ldh [c], a                                       ; $774f: $e2
	jp nc, $25cd                                     ; $7750: $d2 $cd $25

	sub [hl]                                         ; $7753: $96
	xor e                                            ; $7754: $ab
	ld l, l                                          ; $7755: $6d
	ld d, d                                          ; $7756: $52
	sub a                                            ; $7757: $97
	and a                                            ; $7758: $a7
	and [hl]                                         ; $7759: $a6
	adc $4d                                          ; $775a: $ce $4d
	ld e, l                                          ; $775c: $5d
	sbc e                                            ; $775d: $9b
	cp [hl]                                          ; $775e: $be
	ret nc                                           ; $775f: $d0

	and b                                            ; $7760: $a0
	ret z                                            ; $7761: $c8

	ld d, b                                          ; $7762: $50
	sub b                                            ; $7763: $90
	jr nz, jr_028_7787                               ; $7764: $20 $21

	ld b, c                                          ; $7766: $41
	jr nc, jr_028_77c9                               ; $7767: $30 $60

	ld a, b                                          ; $7769: $78
	rst SubAFromHL                                          ; $776a: $d7
	cp $83                                           ; $776b: $fe $83
	jr z, @+$27                                      ; $776d: $28 $25

	ld h, d                                          ; $776f: $62
	inc [hl]                                         ; $7770: $34
	dec c                                            ; $7771: $0d
	add c                                            ; $7772: $81

jr_028_7773:
	and e                                            ; $7773: $a3
	ld bc, $1e1f                                     ; $7774: $01 $1f $1e
	inc e                                            ; $7777: $1c
	ld [rRAMG], sp                                   ; $7778: $08 $00 $00
	ld b, b                                          ; $777b: $40
	ldh a, [c]                                       ; $777c: $f2
	add hl, bc                                       ; $777d: $09
	and $f4                                          ; $777e: $e6 $f4
	ld l, b                                          ; $7780: $68
	jr jr_028_7773                                   ; $7781: $18 $f0

	jr nc, jr_028_7785                               ; $7783: $30 $00

jr_028_7785:
	cp $78                                           ; $7785: $fe $78

jr_028_7787:
	ld a, b                                          ; $7787: $78
	ldh a, [$75]                                     ; $7788: $f0 $75
	adc e                                            ; $778a: $8b
	sbc l                                            ; $778b: $9d
	add b                                            ; $778c: $80
	add c                                            ; $778d: $81
	ld [hl], h                                       ; $778e: $74
	ret z                                            ; $778f: $c8

	sbc $07                                          ; $7790: $de $07
	rst SubAFromDE                                          ; $7792: $df
	ld c, $9a                                        ; $7793: $0e $9a
	inc c                                            ; $7795: $0c
	inc e                                            ; $7796: $1c

jr_028_7797:
	inc e                                            ; $7797: $1c
	jr c, @+$3a                                      ; $7798: $38 $38

	jr c, jr_028_779c                                ; $779a: $38 $00

jr_028_779c:
	push de                                          ; $779c: $d5
	ld d, l                                          ; $779d: $55
	sbc h                                            ; $779e: $9c
	nop                                              ; $779f: $00
	ld bc, $6715                                     ; $77a0: $01 $15 $67
	or $9d                                           ; $77a3: $f6 $9d
	nop                                              ; $77a5: $00
	inc b                                            ; $77a6: $04
	db $db                                           ; $77a7: $db
	ld d, l                                          ; $77a8: $55
	sbc [hl]                                         ; $77a9: $9e
	ld d, b                                          ; $77aa: $50
	ld a, e                                          ; $77ab: $7b
	or $9d                                           ; $77ac: $f6 $9d
	ld b, h                                          ; $77ae: $44
	ld b, l                                          ; $77af: $45
	ld l, a                                          ; $77b0: $6f
	or $9e                                           ; $77b1: $f6 $9e
	dec b                                            ; $77b3: $05
	sbc $44                                          ; $77b4: $de $44
	sbc [hl]                                         ; $77b6: $9e
	ld [hl], l                                       ; $77b7: $75
	ld l, a                                          ; $77b8: $6f
	db $e3                                           ; $77b9: $e3
	sbc $44                                          ; $77ba: $de $44
	sbc l                                            ; $77bc: $9d
	ld [hl], a                                       ; $77bd: $77
	ld b, b                                          ; $77be: $40
	ld [hl], a                                       ; $77bf: $77
	or $97                                           ; $77c0: $f6 $97
	ld bc, $5555                                     ; $77c2: $01 $55 $55
	ld b, h                                          ; $77c5: $44
	ld b, h                                          ; $77c6: $44
	ld b, b                                          ; $77c7: $40
	dec b                                            ; $77c8: $05

jr_028_77c9:
	ld d, c                                          ; $77c9: $51
	ld a, e                                          ; $77ca: $7b
	or $7f                                           ; $77cb: $f6 $7f
	jp c, Jump_028_549e                              ; $77cd: $da $9e $54

	ld a, e                                          ; $77d0: $7b
	or $ef                                           ; $77d1: $f6 $ef
	rlca                                             ; $77d3: $07
	sbc l                                            ; $77d4: $9d
	db $fc                                           ; $77d5: $fc
	nop                                              ; $77d6: $00
	ld [hl], a                                       ; $77d7: $77
	cp $9e                                           ; $77d8: $fe $9e
	ld hl, sp+$7b                                    ; $77da: $f8 $7b
	cp $9e                                           ; $77dc: $fe $9e
	ldh a, [$7b]                                     ; $77de: $f0 $7b
	cp $80                                           ; $77e0: $fe $80
	pop hl                                           ; $77e2: $e1
	nop                                              ; $77e3: $00
	ld a, [bc]                                       ; $77e4: $0a
	ccf                                              ; $77e5: $3f
	nop                                              ; $77e6: $00
	ccf                                              ; $77e7: $3f
	ld [$247f], sp                                   ; $77e8: $08 $7f $24
	ld e, d                                          ; $77eb: $5a
	sbc d                                            ; $77ec: $9a
	ld h, l                                          ; $77ed: $65
	dec c                                            ; $77ee: $0d
	ldh a, [c]                                       ; $77ef: $f2
	sub $28                                          ; $77f0: $d6 $28
	rst $38                                          ; $77f2: $ff
	nop                                              ; $77f3: $00
	and b                                            ; $77f4: $a0
	rst $38                                          ; $77f5: $ff
	ld bc, $aafe                                     ; $77f6: $01 $fe $aa
	ld d, l                                          ; $77f9: $55
	ld d, l                                          ; $77fa: $55
	xor d                                            ; $77fb: $aa
	cp d                                             ; $77fc: $ba
	ld b, b                                          ; $77fd: $40
	push af                                          ; $77fe: $f5
	nop                                              ; $77ff: $00
	ld a, [$0098]                                    ; $7800: $fa $98 $00
	rst FarCall                                          ; $7803: $f7
	nop                                              ; $7804: $00
	ld a, [hl+]                                      ; $7805: $2a
	rst $38                                          ; $7806: $ff
	ld bc, $73ff                                     ; $7807: $01 $ff $73
	ldh a, [hDisp0_WY]                                     ; $780a: $f0 $88
	dec b                                            ; $780c: $05
	ld d, a                                          ; $780d: $57
	ld [$00bc], sp                                   ; $780e: $08 $bc $00
	rst $38                                          ; $7811: $ff
	nop                                              ; $7812: $00
	xor d                                            ; $7813: $aa
	rst $38                                          ; $7814: $ff
	ld d, l                                          ; $7815: $55
	rst $38                                          ; $7816: $ff
	ld a, [hl+]                                      ; $7817: $2a
	rst $38                                          ; $7818: $ff
	dec b                                            ; $7819: $05
	rst $38                                          ; $781a: $ff
	jp nz, Jump_028_613f                             ; $781b: $c2 $3f $61

jr_028_781e:
	rra                                              ; $781e: $1f
	or h                                             ; $781f: $b4
	rrca                                             ; $7820: $0f
	rst $38                                          ; $7821: $ff
	rrca                                             ; $7822: $0f
	ld [hl], a                                       ; $7823: $77
	ldh a, [$7f]                                     ; $7824: $f0 $7f
	db $fc                                           ; $7826: $fc
	sbc [hl]                                         ; $7827: $9e
	ld d, a                                          ; $7828: $57
	ld a, e                                          ; $7829: $7b
	db $fc                                           ; $782a: $fc
	rst SubAFromDE                                          ; $782b: $df
	rst $38                                          ; $782c: $ff
	sbc b                                            ; $782d: $98
	xor [hl]                                         ; $782e: $ae
	cp $78                                           ; $782f: $fe $78
	ld hl, sp-$56                                    ; $7831: $f8 $aa
	rst $38                                          ; $7833: $ff
	ld e, a                                          ; $7834: $5f
	ld [hl], e                                       ; $7835: $73
	db $f4                                           ; $7836: $f4
	add e                                            ; $7837: $83
	cp $ff                                           ; $7838: $fe $ff
	ld [hl], e                                       ; $783a: $73
	and e                                            ; $783b: $a3
	inc hl                                           ; $783c: $23
	ld h, c                                          ; $783d: $61
	pop bc                                           ; $783e: $c1
	ld h, c                                          ; $783f: $61
	xor [hl]                                         ; $7840: $ae
	cp $fc                                           ; $7841: $fe $fc
	cp $ae                                           ; $7843: $fe $ae
	db $fc                                           ; $7845: $fc
	cp $fc                                           ; $7846: $fe $fc
	xor [hl]                                         ; $7848: $ae
	db $fc                                           ; $7849: $fc
	db $fc                                           ; $784a: $fc
	cp $ec                                           ; $784b: $fe $ec
	ld a, [hl]                                       ; $784d: $7e
	ccf                                              ; $784e: $3f
	ld a, [hl]                                       ; $784f: $7e
	ld a, [hl+]                                      ; $7850: $2a
	dec c                                            ; $7851: $0d
	rra                                              ; $7852: $1f
	rlca                                             ; $7853: $07
	or $80                                           ; $7854: $f6 $80
	ld [bc], a                                       ; $7856: $02
	add b                                            ; $7857: $80
	add b                                            ; $7858: $80
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	stop                                             ; $785b: $10 $00
	ld c, h                                          ; $785d: $4c
	jr nz, jr_028_781e                               ; $785e: $20 $be

	ld b, b                                          ; $7860: $40
	sbc $e0                                          ; $7861: $de $e0
	sbc $60                                          ; $7863: $de $60
	inc a                                            ; $7865: $3c
	nop                                              ; $7866: $00
	ld c, $05                                        ; $7867: $0e $05
	add hl, bc                                       ; $7869: $09
	ld bc, $0202                                     ; $786a: $01 $02 $02
	inc bc                                           ; $786d: $03
	inc bc                                           ; $786e: $03
	dec b                                            ; $786f: $05
	rlca                                             ; $7870: $07
	ld b, $05                                        ; $7871: $06 $05
	rlca                                             ; $7873: $07
	inc b                                            ; $7874: $04
	sub a                                            ; $7875: $97
	dec de                                           ; $7876: $1b
	ld b, $ff                                        ; $7877: $06 $ff
	ld hl, sp+$1b                                    ; $7879: $f8 $1b
	inc e                                            ; $787b: $1c
	rrca                                             ; $787c: $0f
	inc c                                            ; $787d: $0c
	ld a, e                                          ; $787e: $7b
	or c                                             ; $787f: $b1
	add b                                            ; $7880: $80
	rst $38                                          ; $7881: $ff
	db $ed                                           ; $7882: $ed
	sbc $cf                                          ; $7883: $de $cf
	sbc [hl]                                         ; $7885: $9e
	xor a                                            ; $7886: $af
	jr c, @+$01                                      ; $7887: $38 $ff

	add hl, sp                                       ; $7889: $39
	db $ed                                           ; $788a: $ed
	ld a, e                                          ; $788b: $7b
	sub [hl]                                         ; $788c: $96
	ld a, e                                          ; $788d: $7b
	ld a, [$6517]                                    ; $788e: $fa $17 $65
	cp a                                             ; $7891: $bf
	xor [hl]                                         ; $7892: $ae
	ld a, a                                          ; $7893: $7f
	rst SubAFromDE                                          ; $7894: $df
	ld a, a                                          ; $7895: $7f
	sub [hl]                                         ; $7896: $96
	ld sp, hl                                        ; $7897: $f9
	ld [hl+], a                                      ; $7898: $22
	rst $38                                          ; $7899: $ff
	ld h, h                                          ; $789a: $64
	rst $38                                          ; $789b: $ff
	ld e, c                                          ; $789c: $59
	rst $38                                          ; $789d: $ff
	db $e3                                           ; $789e: $e3
	rst $38                                          ; $789f: $ff
	add b                                            ; $78a0: $80
	add [hl]                                         ; $78a1: $86
	rst $38                                          ; $78a2: $ff
	jr @+$01                                         ; $78a3: $18 $ff

	di                                               ; $78a5: $f3
	rst $38                                          ; $78a6: $ff
	adc h                                            ; $78a7: $8c
	rst $38                                          ; $78a8: $ff
	ld h, [hl]                                       ; $78a9: $66
	db $fd                                           ; $78aa: $fd
	ret                                              ; $78ab: $c9


	cp $99                                           ; $78ac: $fe $99
	cp $33                                           ; $78ae: $fe $33
	db $fc                                           ; $78b0: $fc
	ld h, [hl]                                       ; $78b1: $66
	ld sp, hl                                        ; $78b2: $f9
	call Call_028_49f3                               ; $78b3: $cd $f3 $49
	rst FarCall                                          ; $78b6: $f7
	sbc e                                            ; $78b7: $9b
	rst SubAFromBC                                          ; $78b8: $e7
	db $e4                                           ; $78b9: $e4
	inc a                                            ; $78ba: $3c
	and h                                            ; $78bb: $a4
	ld a, h                                          ; $78bc: $7c
	ld c, c                                          ; $78bd: $49
	ld hl, sp+$51                                    ; $78be: $f8 $51
	add b                                            ; $78c0: $80
	ldh a, [hDisp1_OBP0]                                     ; $78c1: $f0 $93
	ldh a, [$a2]                                     ; $78c3: $f0 $a2
	ldh [rAUDENA], a                                 ; $78c5: $e0 $26
	ldh [rAUDVOL], a                                 ; $78c7: $e0 $24
	ldh [rSCY], a                                    ; $78c9: $e0 $42
	ld bc, $0083                                     ; $78cb: $01 $83 $00
	add b                                            ; $78ce: $80
	nop                                              ; $78cf: $00
	daa                                              ; $78d0: $27
	nop                                              ; $78d1: $00
	ld c, b                                          ; $78d2: $48
	rlca                                             ; $78d3: $07
	ld e, b                                          ; $78d4: $58
	rlca                                             ; $78d5: $07
	sub b                                            ; $78d6: $90
	rrca                                             ; $78d7: $0f
	add l                                            ; $78d8: $85
	inc bc                                           ; $78d9: $03
	rla                                              ; $78da: $17
	db $e3                                           ; $78db: $e3
	rla                                              ; $78dc: $17
	db $e3                                           ; $78dd: $e3
	ld l, c                                          ; $78de: $69
	rlca                                             ; $78df: $07
	sub d                                            ; $78e0: $92
	ld c, $01                                        ; $78e1: $0e $01
	ld c, b                                          ; $78e3: $48
	add b                                            ; $78e4: $80
	inc c                                            ; $78e5: $0c
	sub b                                            ; $78e6: $90
	rla                                              ; $78e7: $17
	cp h                                             ; $78e8: $bc
	jr z, jr_028_7929                                ; $78e9: $28 $3e

	ld b, b                                          ; $78eb: $40
	add b                                            ; $78ec: $80
	ld b, b                                          ; $78ed: $40
	ld a, e                                          ; $78ee: $7b
	ld l, l                                          ; $78ef: $6d
	ld a, e                                          ; $78f0: $7b
	ld l, e                                          ; $78f1: $6b
	rst $38                                          ; $78f2: $ff
	sbc [hl]                                         ; $78f3: $9e
	ld bc, $fe7b                                     ; $78f4: $01 $7b $fe
	sbc b                                            ; $78f7: $98
	inc bc                                           ; $78f8: $03
	rrca                                             ; $78f9: $0f
	ld [hl], b                                       ; $78fa: $70
	rrca                                             ; $78fb: $0f
	ld [hl], b                                       ; $78fc: $70
	rra                                              ; $78fd: $1f
	ldh [rPCM34], a                                  ; $78fe: $e0 $77
	cp $80                                           ; $7900: $fe $80
	ccf                                              ; $7902: $3f
	ret nz                                           ; $7903: $c0

	ccf                                              ; $7904: $3f
	ret nz                                           ; $7905: $c0

	ld a, a                                          ; $7906: $7f
	add b                                            ; $7907: $80
	ldh [rSB], a                                     ; $7908: $e0 $01
	ldh [c], a                                       ; $790a: $e2
	ld bc, $03c0                                     ; $790b: $01 $c0 $03
	call nz, $8203                                   ; $790e: $c4 $03 $82
	inc b                                            ; $7911: $04
	adc c                                            ; $7912: $89
	ld b, $02                                        ; $7913: $06 $02
	dec c                                            ; $7915: $0d
	ld bc, $5d0e                                     ; $7916: $01 $0e $5d
	and e                                            ; $7919: $a3
	xor [hl]                                         ; $791a: $ae
	ld d, c                                          ; $791b: $51
	ld d, a                                          ; $791c: $57
	xor b                                            ; $791d: $a8
	ld a, a                                          ; $791e: $7f
	nop                                              ; $791f: $00
	xor a                                            ; $7920: $af
	add b                                            ; $7921: $80
	nop                                              ; $7922: $00
	ld e, a                                          ; $7923: $5f
	nop                                              ; $7924: $00
	cp a                                             ; $7925: $bf
	ld b, b                                          ; $7926: $40
	ld d, [hl]                                       ; $7927: $56
	xor c                                            ; $7928: $a9

jr_028_7929:
	ccf                                              ; $7929: $3f
	ret nz                                           ; $792a: $c0

	ld d, l                                          ; $792b: $55
	xor d                                            ; $792c: $aa
	ld [$5015], a                                    ; $792d: $ea $15 $50
	xor a                                            ; $7930: $af
	add sp, $17                                      ; $7931: $e8 $17
	ldh a, [rIF]                                     ; $7933: $f0 $0f
	db $fc                                           ; $7935: $fc
	inc bc                                           ; $7936: $03
	cp b                                             ; $7937: $b8
	ld b, a                                          ; $7938: $47
	adc d                                            ; $7939: $8a
	ld [hl], l                                       ; $793a: $75
	ld d, l                                          ; $793b: $55
	ld a, [$fdaa]                                    ; $793c: $fa $aa $fd
	ld d, h                                          ; $793f: $54
	rst $38                                          ; $7940: $ff
	ld a, [hl]                                       ; $7941: $7e
	and l                                            ; $7942: $a5
	add b                                            ; $7943: $80
	ld b, b                                          ; $7944: $40
	cp a                                             ; $7945: $bf
	xor d                                            ; $7946: $aa
	ld d, l                                          ; $7947: $55
	ld d, h                                          ; $7948: $54
	xor e                                            ; $7949: $ab
	xor d                                            ; $794a: $aa
	ld e, a                                          ; $794b: $5f
	ld b, l                                          ; $794c: $45
	cp a                                             ; $794d: $bf
	xor d                                            ; $794e: $aa
	ld e, a                                          ; $794f: $5f
	dec b                                            ; $7950: $05
	rst $38                                          ; $7951: $ff
	dec bc                                           ; $7952: $0b
	rst $38                                          ; $7953: $ff
	rlca                                             ; $7954: $07
	db $fd                                           ; $7955: $fd
	dec c                                            ; $7956: $0d
	ld sp, hl                                        ; $7957: $f9
	ld e, l                                          ; $7958: $5d
	ld sp, hl                                        ; $7959: $f9
	ld sp, hl                                        ; $795a: $f9
	add sp, -$07                                     ; $795b: $e8 $f9
	ret z                                            ; $795d: $c8

	db $fd                                           ; $795e: $fd
	set 7, b                                         ; $795f: $cb $f8
	adc a                                            ; $7961: $8f
	cp $80                                           ; $7962: $fe $80
	add hl, bc                                       ; $7964: $09
	cp $09                                           ; $7965: $fe $09
	xor $19                                          ; $7967: $ee $19
	call z, $f13b                                    ; $7969: $cc $3b $f1
	ld h, b                                          ; $796c: $60
	ret c                                            ; $796d: $d8

	ld [hl], b                                       ; $796e: $70
	or l                                             ; $796f: $b5
	ret c                                            ; $7970: $d8

	xor $99                                          ; $7971: $ee $99
	db $ed                                           ; $7973: $ed
	sbc d                                            ; $7974: $9a
	add sp, -$64                                     ; $7975: $e8 $9c
	ret nz                                           ; $7977: $c0

	cp b                                             ; $7978: $b8
	add b                                            ; $7979: $80
	ldh a, [$fc]                                     ; $797a: $f0 $fc
	cp b                                             ; $797c: $b8
	ldh a, [$a0]                                     ; $797d: $f0 $a0
	call c, $03e0                                    ; $797f: $dc $e0 $03
	db $fc                                           ; $7982: $fc
	ld a, a                                          ; $7983: $7f
	halt                                             ; $7984: $76
	ei                                               ; $7985: $fb
	add [hl]                                         ; $7986: $86
	pop hl                                           ; $7987: $e1
	ld bc, $0318                                     ; $7988: $01 $18 $03
	inc l                                            ; $798b: $2c
	inc bc                                           ; $798c: $03
	sub $01                                          ; $798d: $d6 $01
	rst $38                                          ; $798f: $ff
	ld bc, $807b                                     ; $7990: $01 $7b $80
	rra                                              ; $7993: $1f
	ld h, b                                          ; $7994: $60
	rrca                                             ; $7995: $0f
	jr nc, @-$7e                                     ; $7996: $30 $80

	nop                                              ; $7998: $00
	ld hl, sp-$20                                    ; $7999: $f8 $e0
	ret nz                                           ; $799b: $c0

	ld h, b                                          ; $799c: $60
	ld h, b                                          ; $799d: $60
	ret nz                                           ; $799e: $c0

	ret nz                                           ; $799f: $c0

	halt                                             ; $79a0: $76
	or a                                             ; $79a1: $b7
	cp $9c                                           ; $79a2: $fe $9c
	inc b                                            ; $79a4: $04
	inc bc                                           ; $79a5: $03
	ld bc, $4573                                     ; $79a6: $01 $73 $45
	ld a, [hl]                                       ; $79a9: $7e
	sbc e                                            ; $79aa: $9b
	add b                                            ; $79ab: $80
	rrca                                             ; $79ac: $0f
	nop                                              ; $79ad: $00
	rra                                              ; $79ae: $1f
	nop                                              ; $79af: $00
	ld a, a                                          ; $79b0: $7f
	nop                                              ; $79b1: $00
	ld e, [hl]                                       ; $79b2: $5e
	pop hl                                           ; $79b3: $e1
	cp a                                             ; $79b4: $bf
	ld b, c                                          ; $79b5: $41
	ld a, a                                          ; $79b6: $7f
	ld bc, $03fd                                     ; $79b7: $01 $fd $03
	cp $03                                           ; $79ba: $fe $03
	db $fc                                           ; $79bc: $fc
	rlca                                             ; $79bd: $07
	ld sp, hl                                        ; $79be: $f9
	rrca                                             ; $79bf: $0f
	db $db                                           ; $79c0: $db
	ccf                                              ; $79c1: $3f
	cp l                                             ; $79c2: $bd
	cp $21                                           ; $79c3: $fe $21
	cp $22                                           ; $79c5: $fe $22
	db $fd                                           ; $79c7: $fd
	ld [hl], l                                       ; $79c8: $75
	ei                                               ; $79c9: $fb
	adc d                                            ; $79ca: $8a
	sub a                                            ; $79cb: $97
	rst FarCall                                          ; $79cc: $f7
	db $f4                                           ; $79cd: $f4
	adc a                                            ; $79ce: $8f
	ld sp, hl                                        ; $79cf: $f9
	rst $38                                          ; $79d0: $ff
	sbc d                                            ; $79d1: $9a
	rst $38                                          ; $79d2: $ff
	pop af                                           ; $79d3: $f1
	ld a, d                                          ; $79d4: $7a
	add $80                                          ; $79d5: $c6 $80
	sbc [hl]                                         ; $79d7: $9e
	rst $38                                          ; $79d8: $ff
	push hl                                          ; $79d9: $e5
	cp $4b                                           ; $79da: $fe $4b
	db $fc                                           ; $79dc: $fc
	sbc d                                            ; $79dd: $9a

jr_028_79de:
	db $fd                                           ; $79de: $fd
	dec [hl]                                         ; $79df: $35
	ei                                               ; $79e0: $fb

Jump_028_79e1:
	ld h, d                                          ; $79e1: $62
	rst $38                                          ; $79e2: $ff
	dec [hl]                                         ; $79e3: $35
	rst GetHLinHL                                          ; $79e4: $cf
	ld l, l                                          ; $79e5: $6d
	sbc a                                            ; $79e6: $9f
	reti                                             ; $79e7: $d9


	ccf                                              ; $79e8: $3f
	cp e                                             ; $79e9: $bb
	ld a, a                                          ; $79ea: $7f
	ld l, e                                          ; $79eb: $6b
	rst $38                                          ; $79ec: $ff
	ei                                               ; $79ed: $fb

Jump_028_79ee:
	rst AddAOntoHL                                          ; $79ee: $ef
	ld e, e                                          ; $79ef: $5b
	rst AddAOntoHL                                          ; $79f0: $ef
	set 7, a                                         ; $79f1: $cb $ff
	db $fd                                           ; $79f3: $fd
	ld b, b                                          ; $79f4: $40
	db $fd                                           ; $79f5: $fd
	add b                                            ; $79f6: $80
	ld b, b                                          ; $79f7: $40
	ei                                               ; $79f8: $fb
	ld b, b                                          ; $79f9: $40
	ld a, [$f640]                                    ; $79fa: $fa $40 $f6
	ld b, b                                          ; $79fd: $40
	push af                                          ; $79fe: $f5
	and b                                            ; $79ff: $a0
	db $fd                                           ; $7a00: $fd
	ldh [rIE], a                                     ; $7a01: $e0 $ff
	ldh a, [$b1]                                     ; $7a03: $f0 $b1
	nop                                              ; $7a05: $00
	ld b, h                                          ; $7a06: $44
	jr c, jr_028_7a67                                ; $7a07: $38 $5e

	inc a                                            ; $7a09: $3c
	dec a                                            ; $7a0a: $3d
	db $fc                                           ; $7a0b: $fc
	ld a, b                                          ; $7a0c: $78
	db $fd                                           ; $7a0d: $fd
	ld e, $f9                                        ; $7a0e: $1e $f9
	dec [hl]                                         ; $7a10: $35
	ei                                               ; $7a11: $fb
	adc c                                            ; $7a12: $89
	ld [hl], a                                       ; $7a13: $77
	ld d, d                                          ; $7a14: $52
	inc a                                            ; $7a15: $3c
	sub c                                            ; $7a16: $91
	inc h                                            ; $7a17: $24
	jr jr_028_79de                                   ; $7a18: $18 $c4

	nop                                              ; $7a1a: $00
	ld d, b                                          ; $7a1b: $50
	ldh [rBCPS], a                                   ; $7a1c: $e0 $68
	ldh a, [$e8]                                     ; $7a1e: $f0 $e8
	ldh a, [$f0]                                     ; $7a20: $f0 $f0
	ldh [$d0], a                                     ; $7a22: $e0 $d0
	ldh [$7b], a                                     ; $7a24: $e0 $7b
	ld e, b                                          ; $7a26: $58
	ld a, a                                          ; $7a27: $7f
	add l                                            ; $7a28: $85
	sbc h                                            ; $7a29: $9c
	rlca                                             ; $7a2a: $07
	ld bc, $770e                                     ; $7a2b: $01 $0e $77
	cp $98                                           ; $7a2e: $fe $98
	inc bc                                           ; $7a30: $03
	inc e                                            ; $7a31: $1c
	inc bc                                           ; $7a32: $03
	inc e                                            ; $7a33: $1c
	ld a, a                                          ; $7a34: $7f
	add b                                            ; $7a35: $80
	rst $38                                          ; $7a36: $ff
	ld a, c                                          ; $7a37: $79
	jp z, $fe5f                                      ; $7a38: $ca $5f $fe

	ld a, a                                          ; $7a3b: $7f
	ld h, b                                          ; $7a3c: $60
	ld a, e                                          ; $7a3d: $7b
	ld h, e                                          ; $7a3e: $63
	rst $38                                          ; $7a3f: $ff
	ld a, a                                          ; $7a40: $7f
	ret c                                            ; $7a41: $d8

	ld a, a                                          ; $7a42: $7f
	ld l, $91                                        ; $7a43: $2e $91
	rst $38                                          ; $7a45: $ff
	add b                                            ; $7a46: $80
	ld a, a                                          ; $7a47: $7f
	ldh a, [rIF]                                     ; $7a48: $f0 $0f
	xor b                                            ; $7a4a: $a8
	ld b, d                                          ; $7a4b: $42
	inc d                                            ; $7a4c: $14
	pop hl                                           ; $7a4d: $e1
	nop                                              ; $7a4e: $00
	ld a, [hl-]                                      ; $7a4f: $3a
	ld a, [bc]                                       ; $7a50: $0a
	dec b                                            ; $7a51: $05
	ld bc, $8c7a                                     ; $7a52: $01 $7a $8c
	sbc [hl]                                         ; $7a55: $9e
	db $10                                           ; $7a56: $10
	ld a, e                                          ; $7a57: $7b
	ld [$c67e], a                                    ; $7a58: $ea $7e $c6
	sub h                                            ; $7a5b: $94
	or l                                             ; $7a5c: $b5
	ld c, b                                          ; $7a5d: $48
	ld e, d                                          ; $7a5e: $5a
	and b                                            ; $7a5f: $a0
	dec l                                            ; $7a60: $2d
	ld d, d                                          ; $7a61: $52
	ld e, d                                          ; $7a62: $5a
	and l                                            ; $7a63: $a5
	ld l, l                                          ; $7a64: $6d
	ld [de], a                                       ; $7a65: $12
	ld [bc], a                                       ; $7a66: $02

jr_028_7a67:
	ld a, e                                          ; $7a67: $7b
	ld [$707d], a                                    ; $7a68: $ea $7d $70
	ld a, l                                          ; $7a6b: $7d
	and b                                            ; $7a6c: $a0
	ld a, [hl]                                       ; $7a6d: $7e
	call nz, $1480                                   ; $7a6e: $c4 $80 $14
	ld a, a                                          ; $7a71: $7f
	xor d                                            ; $7a72: $aa
	ld e, a                                          ; $7a73: $5f
	ld d, l                                          ; $7a74: $55
	xor d                                            ; $7a75: $aa
	ccf                                              ; $7a76: $3f
	ret nz                                           ; $7a77: $c0

	dec c                                            ; $7a78: $0d
	ldh a, [$e9]                                     ; $7a79: $f0 $e9
	ld sp, hl                                        ; $7a7b: $f9
	add hl, hl                                       ; $7a7c: $29
	ld sp, hl                                        ; $7a7d: $f9

jr_028_7a7e:
	jp hl                                            ; $7a7e: $e9


	add hl, sp                                       ; $7a7f: $39
	ld sp, hl                                        ; $7a80: $f9
	add hl, hl                                       ; $7a81: $29
	ld a, c                                          ; $7a82: $79
	xor c                                            ; $7a83: $a9
	reti                                             ; $7a84: $d9


	ld l, c                                          ; $7a85: $69

jr_028_7a86:
	ld e, c                                          ; $7a86: $59
	ld l, b                                          ; $7a87: $68
	ld a, c                                          ; $7a88: $79
	ld c, b                                          ; $7a89: $48
	add hl, bc                                       ; $7a8a: $09
	rst $38                                          ; $7a8b: $ff
	add hl, bc                                       ; $7a8c: $09
	ld sp, hl                                        ; $7a8d: $f9
	dec bc                                           ; $7a8e: $0b
	ld a, e                                          ; $7a8f: $7b
	cp $80                                           ; $7a90: $fe $80
	rrca                                             ; $7a92: $0f
	ld sp, hl                                        ; $7a93: $f9
	rra                                              ; $7a94: $1f
	rst $38                                          ; $7a95: $ff
	and b                                            ; $7a96: $a0
	ldh [$c3], a                                     ; $7a97: $e0 $c3
	ret nz                                           ; $7a99: $c0

	ld a, [$fde0]                                    ; $7a9a: $fa $e0 $fd
	jr nc, jr_028_7a7e                               ; $7a9d: $30 $df

	ld l, a                                          ; $7a9f: $6f
	pop hl                                           ; $7aa0: $e1
	ld b, b                                          ; $7aa1: $40
	db $dd                                           ; $7aa2: $dd
	ld h, d                                          ; $7aa3: $62
	ld [$fe41], a                                    ; $7aa4: $ea $41 $fe
	rst $38                                          ; $7aa7: $ff
	add c                                            ; $7aa8: $81
	ld h, e                                          ; $7aa9: $63
	ld [$5400], sp                                   ; $7aaa: $08 $00 $54
	nop                                              ; $7aad: $00
	ldh a, [$0a]                                     ; $7aae: $f0 $0a
	ld [$d580], a                                    ; $7ab0: $ea $80 $d5
	db $f4                                           ; $7ab3: $f4
	dec sp                                           ; $7ab4: $3b
	jr c, jr_028_7a86                                ; $7ab5: $38 $cf

	call z, $a637                                    ; $7ab7: $cc $37 $a6
	db $db                                           ; $7aba: $db
	rrca                                             ; $7abb: $0f
	jr nc, @+$09                                     ; $7abc: $30 $07

	ld e, c                                          ; $7abe: $59
	rlca                                             ; $7abf: $07
	cp c                                             ; $7ac0: $b9
	ld b, $5b                                        ; $7ac1: $06 $5b
	inc b                                            ; $7ac3: $04
	cp $08                                           ; $7ac4: $fe $08
	db $fc                                           ; $7ac6: $fc
	db $10                                           ; $7ac7: $10
	ld hl, sp+$11                                    ; $7ac8: $f8 $11
	pop af                                           ; $7aca: $f1
	ld bc, $8700                                     ; $7acb: $01 $00 $87
	nop                                              ; $7ace: $00
	rst $38                                          ; $7acf: $ff
	rst $38                                          ; $7ad0: $ff
	sub l                                            ; $7ad1: $95
	dec a                                            ; $7ad2: $3d
	db $e3                                           ; $7ad3: $e3
	ld h, a                                          ; $7ad4: $67
	pop bc                                           ; $7ad5: $c1
	add $83                                          ; $7ad6: $c6 $83
	add [hl]                                         ; $7ad8: $86
	add d                                            ; $7ad9: $82
	adc [hl]                                         ; $7ada: $8e
	ld [bc], a                                       ; $7adb: $02
	ld a, e                                          ; $7adc: $7b
	ld e, h                                          ; $7add: $5c
	ld a, [hl]                                       ; $7ade: $7e
	dec d                                            ; $7adf: $15
	ld [hl], a                                       ; $7ae0: $77
	ld d, a                                          ; $7ae1: $57
	add a                                            ; $7ae2: $87
	ccf                                              ; $7ae3: $3f
	inc bc                                           ; $7ae4: $03

jr_028_7ae5:
	ccf                                              ; $7ae5: $3f
	rra                                              ; $7ae6: $1f
	ld a, a                                          ; $7ae7: $7f
	ld h, e                                          ; $7ae8: $63
	rst $38                                          ; $7ae9: $ff
	ld [hl], e                                       ; $7aea: $73
	rst $38                                          ; $7aeb: $ff
	or $ff                                           ; $7aec: $f6 $ff
	ld h, [hl]                                       ; $7aee: $66
	rst $38                                          ; $7aef: $ff
	ld l, l                                          ; $7af0: $6d
	rst $38                                          ; $7af1: $ff
	db $dd                                           ; $7af2: $dd
	rst $38                                          ; $7af3: $ff
	cp a                                             ; $7af4: $bf
	rst $38                                          ; $7af5: $ff
	rst SubAFromDE                                          ; $7af6: $df
	ldh [rSTAT], a                                   ; $7af7: $e0 $41
	add b                                            ; $7af9: $80
	ld [hl-], a                                      ; $7afa: $32
	ld a, c                                          ; $7afb: $79
	sub b                                            ; $7afc: $90
	adc h                                            ; $7afd: $8c
	ret                                              ; $7afe: $c9


	rst $38                                          ; $7aff: $ff
	sub e                                            ; $7b00: $93
	rst $38                                          ; $7b01: $ff
	and e                                            ; $7b02: $a3
	rst $38                                          ; $7b03: $ff
	and $ff                                          ; $7b04: $e6 $ff
	or $3f                                           ; $7b06: $f6 $3f
	sbc [hl]                                         ; $7b08: $9e
	rrca                                             ; $7b09: $0f
	call nz, $cdff                                   ; $7b0a: $c4 $ff $cd
	rst $38                                          ; $7b0d: $ff
	sbc c                                            ; $7b0e: $99
	rst $38                                          ; $7b0f: $ff
	dec sp                                           ; $7b10: $3b
	ld a, e                                          ; $7b11: $7b
	cp $7f                                           ; $7b12: $fe $7f
	sub $9e                                          ; $7b14: $d6 $9e
	rst FarCall                                          ; $7b16: $f7
	ld a, e                                          ; $7b17: $7b
	cp $9e                                           ; $7b18: $fe $9e

jr_028_7b1a:
	rst GetHLinHL                                          ; $7b1a: $cf
	ld a, e                                          ; $7b1b: $7b

Jump_028_7b1c:
	cp $9e                                           ; $7b1c: $fe $9e
	rst AddAOntoHL                                          ; $7b1e: $ef
	ld a, e                                          ; $7b1f: $7b
	cp $dd                                           ; $7b20: $fe $dd
	rst $38                                          ; $7b22: $ff
	ld a, c                                          ; $7b23: $79
	ld c, e                                          ; $7b24: $4b
	sub a                                            ; $7b25: $97
	rst $38                                          ; $7b26: $ff
	db $ec                                           ; $7b27: $ec
	ldh a, [$e6]                                     ; $7b28: $f0 $e6
	ld hl, sp-$60                                    ; $7b2a: $f8 $a0
	rst $38                                          ; $7b2c: $ff
	push af                                          ; $7b2d: $f5
	ld a, b                                          ; $7b2e: $78
	db $ec                                           ; $7b2f: $ec
	add b                                            ; $7b30: $80
	db $fc                                           ; $7b31: $fc
	rst $38                                          ; $7b32: $ff
	xor c                                            ; $7b33: $a9
	cp $fc                                           ; $7b34: $fe $fc
	rst $38                                          ; $7b36: $ff
	ld l, d                                          ; $7b37: $6a
	rla                                              ; $7b38: $17
	dec [hl]                                         ; $7b39: $35
	rrca                                             ; $7b3a: $0f
	ld a, [de]                                       ; $7b3b: $1a
	rst AddAOntoHL                                          ; $7b3c: $ef
	ld d, l                                          ; $7b3d: $55
	rst $38                                          ; $7b3e: $ff
	xor e                                            ; $7b3f: $ab
	rst $38                                          ; $7b40: $ff
	jr z, jr_028_7b1a                                ; $7b41: $28 $d7

	ld [hl], l                                       ; $7b43: $75
	adc e                                            ; $7b44: $8b
	xor b                                            ; $7b45: $a8
	ld b, a                                          ; $7b46: $47
	ldh [$c0], a                                     ; $7b47: $e0 $c0
	add b                                            ; $7b49: $80
	ldh [$d0], a                                     ; $7b4a: $e0 $d0
	add b                                            ; $7b4c: $80
	ld h, b                                          ; $7b4d: $60
	add b                                            ; $7b4e: $80
	jr nc, jr_028_7ae5                               ; $7b4f: $30 $94

	ret nz                                           ; $7b51: $c0

	sub b                                            ; $7b52: $90
	ldh [rLCDC], a                                   ; $7b53: $e0 $40
	ldh a, [$a0]                                     ; $7b55: $f0 $a0
	pop af                                           ; $7b57: $f1
	rlca                                             ; $7b58: $07
	jr c, @+$09                                      ; $7b59: $38 $07

	jr c, jr_028_7bd2                                ; $7b5b: $38 $75

	adc h                                            ; $7b5d: $8c
	ld l, l                                          ; $7b5e: $6d
	adc d                                            ; $7b5f: $8a
	ld a, a                                          ; $7b60: $7f
	ld c, $4e                                        ; $7b61: $0e $4e
	jp nz, $fe7f                                     ; $7b63: $c2 $7f $fe

	sbc l                                            ; $7b66: $9d
	cp $01                                           ; $7b67: $fe $01
	ld c, a                                          ; $7b69: $4f
	ldh a, [$7f]                                     ; $7b6a: $f0 $7f
	db $fd                                           ; $7b6c: $fd
	ld a, l                                          ; $7b6d: $7d
	ld l, c                                          ; $7b6e: $69
	sbc l                                            ; $7b6f: $9d
	ld hl, sp+$07                                    ; $7b70: $f8 $07
	ld e, a                                          ; $7b72: $5f
	ld [$ba6e], a                                    ; $7b73: $ea $6e $ba
	ld [hl], a                                       ; $7b76: $77
	ld [$a47e], a                                    ; $7b77: $ea $7e $a4
	ld [hl], a                                       ; $7b7a: $77
	ld [$429c], a                                    ; $7b7b: $ea $9c $42
	jr c, jr_028_7b8d                                ; $7b7e: $38 $0d

	cp $5f                                           ; $7b80: $fe $5f
	ld [$c995], a                                    ; $7b82: $ea $95 $c9
	ld c, b                                          ; $7b85: $48
	ld b, l                                          ; $7b86: $45
	ld b, h                                          ; $7b87: $44
	ld b, l                                          ; $7b88: $45
	ld b, h                                          ; $7b89: $44
	dec b                                            ; $7b8a: $05
	inc b                                            ; $7b8b: $04
	dec b                                            ; $7b8c: $05

jr_028_7b8d:
	inc b                                            ; $7b8d: $04
	ld l, [hl]                                       ; $7b8e: $6e
	adc [hl]                                         ; $7b8f: $8e
	sub d                                            ; $7b90: $92
	rst SubAFromDE                                          ; $7b91: $df
	ret nz                                           ; $7b92: $c0

	call c, $81e0                                    ; $7b93: $dc $e0 $81
	add b                                            ; $7b96: $80
	adc a                                            ; $7b97: $8f
	add b                                            ; $7b98: $80
	cp a                                             ; $7b99: $bf
	add b                                            ; $7b9a: $80
	cp h                                             ; $7b9b: $bc
	ret nz                                           ; $7b9c: $c0

	jr nz, jr_028_7c19                               ; $7b9d: $20 $7a

	ld h, l                                          ; $7b9f: $65
	add h                                            ; $7ba0: $84
	inc c                                            ; $7ba1: $0c
	inc bc                                           ; $7ba2: $03
	ld a, l                                          ; $7ba3: $7d
	ld [bc], a                                       ; $7ba4: $02
	ei                                               ; $7ba5: $fb
	nop                                              ; $7ba6: $00
	ldh [c], a                                       ; $7ba7: $e2
	ld bc, $0304                                     ; $7ba8: $01 $04 $03
	jr jr_028_7bb4                                   ; $7bab: $18 $07

	ld a, a                                          ; $7bad: $7f
	nop                                              ; $7bae: $00
	and $01                                          ; $7baf: $e6 $01
	ld l, e                                          ; $7bb1: $6b
	push af                                          ; $7bb2: $f5

jr_028_7bb3:
	sbc e                                            ; $7bb3: $9b

jr_028_7bb4:
	dec d                                            ; $7bb4: $15
	adc l                                            ; $7bb5: $8d
	dec bc                                           ; $7bb6: $0b
	ld a, [hl]                                       ; $7bb7: $7e
	add a                                            ; $7bb8: $87
	ld h, a                                          ; $7bb9: $67
	add d                                            ; $7bba: $82
	add e                                            ; $7bbb: $83
	ld a, c                                          ; $7bbc: $79
	cp d                                             ; $7bbd: $ba
	add b                                            ; $7bbe: $80
	ld a, l                                          ; $7bbf: $7d
	add e                                            ; $7bc0: $83
	ld sp, $f3f1                                     ; $7bc1: $31 $f1 $f3
	pop de                                           ; $7bc4: $d1
	rst FarCall                                          ; $7bc5: $f7
	sub c                                            ; $7bc6: $91
	cp $16                                           ; $7bc7: $fe $16
	cp h                                             ; $7bc9: $bc
	jr @-$46                                         ; $7bca: $18 $b8

	db $10                                           ; $7bcc: $10
	pop af                                           ; $7bcd: $f1
	jr nz, jr_028_7bb3                               ; $7bce: $20 $e3

	pop bc                                           ; $7bd0: $c1
	sbc a                                            ; $7bd1: $9f

jr_028_7bd2:
	rlca                                             ; $7bd2: $07
	cp l                                             ; $7bd3: $bd
	ld b, $3c                                        ; $7bd4: $06 $3c
	rrca                                             ; $7bd6: $0f
	inc sp                                           ; $7bd7: $33
	rra                                              ; $7bd8: $1f
	ld l, h                                          ; $7bd9: $6c
	inc sp                                           ; $7bda: $33
	reti                                             ; $7bdb: $d9


	ld h, a                                          ; $7bdc: $67
	cp d                                             ; $7bdd: $ba
	add b                                            ; $7bde: $80
	rst JumpTable                                          ; $7bdf: $c7
	ld [hl], d                                       ; $7be0: $72
	adc a                                            ; $7be1: $8f
	add a                                            ; $7be2: $87
	cp $8f                                           ; $7be3: $fe $8f
	ld a, a                                          ; $7be5: $7f
	scf                                              ; $7be6: $37
	ld hl, sp-$32                                    ; $7be7: $f8 $ce
	pop af                                           ; $7be9: $f1
	cp l                                             ; $7bea: $bd
	jp nz, $9c6b                                     ; $7beb: $c2 $6b $9c

	ld e, a                                          ; $7bee: $5f
	or b                                             ; $7bef: $b0
	ld l, a                                          ; $7bf0: $6f
	ldh a, [hDisp0_SCY]                                     ; $7bf1: $f0 $83
	nop                                              ; $7bf3: $00
	db $fc                                           ; $7bf4: $fc
	ldh a, [$8c]                                     ; $7bf5: $f0 $8c
	ld a, b                                          ; $7bf7: $78
	ld h, [hl]                                       ; $7bf8: $66
	sbc h                                            ; $7bf9: $9c
	add $3c                                          ; $7bfa: $c6 $3c
	add $3c                                          ; $7bfc: $c6 $3c
	ld a, a                                          ; $7bfe: $7f
	ld hl, sp+$7f                                    ; $7bff: $f8 $7f
	cp $9d                                           ; $7c01: $fe $9d
	rrca                                             ; $7c03: $0f
	rlca                                             ; $7c04: $07
	ld [hl], a                                       ; $7c05: $77
	cp $9e                                           ; $7c06: $fe $9e
	dec c                                            ; $7c08: $0d
	ld a, e                                          ; $7c09: $7b
	cp $98                                           ; $7c0a: $fe $98
	ld a, [bc]                                       ; $7c0c: $0a
	dec c                                            ; $7c0d: $0d
	ld a, [bc]                                       ; $7c0e: $0a
	dec c                                            ; $7c0f: $0d
	ld e, $09                                        ; $7c10: $1e $09
	cp [hl]                                          ; $7c12: $be
	sbc $ff                                          ; $7c13: $de $ff
	ld a, [hl]                                       ; $7c15: $7e
	db $e4                                           ; $7c16: $e4
	ld h, a                                          ; $7c17: $67
	db $fc                                           ; $7c18: $fc

jr_028_7c19:
	sbc [hl]                                         ; $7c19: $9e
	push de                                          ; $7c1a: $d5
	ld e, e                                          ; $7c1b: $5b
	ld hl, sp+$7e                                    ; $7c1c: $f8 $7e
	call c, $8a9a                                    ; $7c1e: $dc $9a $8a
	rst $38                                          ; $7c21: $ff
	ld d, l                                          ; $7c22: $55
	xor a                                            ; $7c23: $af
	xor d                                            ; $7c24: $aa
	ld [hl], d                                       ; $7c25: $72
	call nz, $f47f                                   ; $7c26: $c4 $7f $f4
	ld h, a                                          ; $7c29: $67
	db $fc                                           ; $7c2a: $fc
	sbc c                                            ; $7c2b: $99
	sub l                                            ; $7c2c: $95
	jp $f74a                                         ; $7c2d: $c3 $4a $f7


	and l                                            ; $7c30: $a5
	ei                                               ; $7c31: $fb
	ld l, a                                          ; $7c32: $6f
	db $fc                                           ; $7c33: $fc
	adc [hl]                                         ; $7c34: $8e
	sub c                                            ; $7c35: $91
	rst AddAOntoHL                                          ; $7c36: $ef
	inc b                                            ; $7c37: $04
	rst $38                                          ; $7c38: $ff
	ld b, b                                          ; $7c39: $40
	pop hl                                           ; $7c3a: $e1
	and b                                            ; $7c3b: $a0
	db $e3                                           ; $7c3c: $e3
	ld h, b                                          ; $7c3d: $60
	jp $87c0                                         ; $7c3e: $c3 $c0 $87


	ret nz                                           ; $7c41: $c0

	ld b, a                                          ; $7c42: $47
	add b                                            ; $7c43: $80
	add a                                            ; $7c44: $87
	add c                                            ; $7c45: $81
	ld a, c                                          ; $7c46: $79
	adc h                                            ; $7c47: $8c
	ld [hl], h                                       ; $7c48: $74
	ld e, h                                          ; $7c49: $5c
	ld b, l                                          ; $7c4a: $45
	adc h                                            ; $7c4b: $8c
	inc bc                                           ; $7c4c: $03
	cp $1b                                           ; $7c4d: $fe $1b
	cp $56                                           ; $7c4f: $fe $56
	and h                                            ; $7c51: $a4
	ld [hl], d                                       ; $7c52: $72
	sub b                                            ; $7c53: $90
	ld [hl], d                                       ; $7c54: $72
	cp d                                             ; $7c55: $ba
	ld e, a                                          ; $7c56: $5f
	ld [$a456], a                                    ; $7c57: $ea $56 $a4
	ld [hl], a                                       ; $7c5a: $77
	ld [$0099], a                                    ; $7c5b: $ea $99 $00
	rst JumpTable                                          ; $7c5e: $c7
	nop                                              ; $7c5f: $00
	rra                                              ; $7c60: $1f
	ld bc, $5f06                                     ; $7c61: $01 $06 $5f
	ld [$4194], a                                    ; $7c64: $ea $94 $41
	add e                                            ; $7c67: $83
	adc a                                            ; $7c68: $8f
	inc bc                                           ; $7c69: $03
	or a                                             ; $7c6a: $b7
	rrca                                             ; $7c6b: $0f
	add hl, bc                                       ; $7c6c: $09
	ld sp, hl                                        ; $7c6d: $f9
	ld de, $0331                                     ; $7c6e: $11 $31 $03
	ld a, b                                          ; $7c71: $78
	ld h, [hl]                                       ; $7c72: $66
	ld a, a                                          ; $7c73: $7f
	ld [$8580], a                                    ; $7c74: $ea $80 $85
	inc bc                                           ; $7c77: $03
	adc [hl]                                         ; $7c78: $8e
	inc bc                                           ; $7c79: $03
	sbc l                                            ; $7c7a: $9d
	ld b, $7d                                        ; $7c7b: $06 $7d
	sbc [hl]                                         ; $7c7d: $9e
	ld a, e                                          ; $7c7e: $7b
	xor h                                            ; $7c7f: $ac
	ei                                               ; $7c80: $fb
	inc l                                            ; $7c81: $2c
	cp $57                                           ; $7c82: $fe $57
	ccf                                              ; $7c84: $3f
	ld de, $1fe4                                     ; $7c85: $11 $e4 $1f
	jp hl                                            ; $7c88: $e9


	rra                                              ; $7c89: $1f
	rst GetHLinHL                                          ; $7c8a: $cf
	ld a, $da                                        ; $7c8b: $3e $da
	inc a                                            ; $7c8d: $3c

jr_028_7c8e:
	sub l                                            ; $7c8e: $95
	ld a, b                                          ; $7c8f: $78
	cp a                                             ; $7c90: $bf
	ld [hl], b                                       ; $7c91: $70
	ld a, a                                          ; $7c92: $7f
	ret z                                            ; $7c93: $c8

	db $fc                                           ; $7c94: $fc
	add b                                            ; $7c95: $80
	add sp, -$51                                     ; $7c96: $e8 $af
	ldh a, [$a1]                                     ; $7c98: $f0 $a1
	ld a, $33                                        ; $7c9a: $3e $33
	inc e                                            ; $7c9c: $1c
	ld h, a                                          ; $7c9d: $67
	jr jr_028_7c8e                                   ; $7c9e: $18 $ee

	ld de, $139d                                     ; $7ca0: $11 $9d $13

Call_028_7ca3:
	rla                                              ; $7ca3: $17
	ld e, $18                                        ; $7ca4: $1e $18
	jr jr_028_7cb4                                   ; $7ca6: $18 $0c

Call_028_7ca8:
	ld hl, sp+$10                                    ; $7ca8: $f8 $10
	ld hl, sp+$18                                    ; $7caa: $f8 $18
	ldh a, [rAUD2LOW]                                ; $7cac: $f0 $18
	ldh a, [$08]                                     ; $7cae: $f0 $08
	ldh a, [$d8]                                     ; $7cb0: $f0 $d8
	ldh a, [$3c]                                     ; $7cb2: $f0 $3c

jr_028_7cb4:
	ld hl, sp-$80                                    ; $7cb4: $f8 $80
	rra                                              ; $7cb6: $1f
	rst AddAOntoHL                                          ; $7cb7: $ef
	ld d, a                                          ; $7cb8: $57
	jr jr_028_7d12                                   ; $7cb9: $18 $57

	jr jr_028_7d34                                   ; $7cbb: $18 $77

	jr jr_028_7d3e                                   ; $7cbd: $18 $7f

	ld [$08ff], sp                                   ; $7cbf: $08 $ff $08
	ld a, [$ff0d]                                    ; $7cc2: $fa $0d $ff
	rra                                              ; $7cc5: $1f
	ldh [c], a                                       ; $7cc6: $e2
	db $fd                                           ; $7cc7: $fd
	ret nz                                           ; $7cc8: $c0

	rst $38                                          ; $7cc9: $ff
	push af                                          ; $7cca: $f5
	ld c, d                                          ; $7ccb: $4a
	ei                                               ; $7ccc: $fb
	ld b, h                                          ; $7ccd: $44
	rst SubAFromDE                                          ; $7cce: $df
	ld b, b                                          ; $7ccf: $40
	db $ed                                           ; $7cd0: $ed
	ld b, b                                          ; $7cd1: $40
	sub a                                            ; $7cd2: $97
	ret nz                                           ; $7cd3: $c0

	xor a                                            ; $7cd4: $af
	adc h                                            ; $7cd5: $8c
	ret nz                                           ; $7cd6: $c0

	xor l                                            ; $7cd7: $ad
	jp nc, Jump_028_57aa                             ; $7cd8: $d2 $aa $57

	ld [hl], l                                       ; $7cdb: $75
	adc e                                            ; $7cdc: $8b
	add sp, $17                                      ; $7cdd: $e8 $17
	db $f4                                           ; $7cdf: $f4
	dec bc                                           ; $7ce0: $0b
	cp $01                                           ; $7ce1: $fe $01
	rst FarCall                                          ; $7ce3: $f7
	nop                                              ; $7ce4: $00
	xor d                                            ; $7ce5: $aa
	ld b, c                                          ; $7ce6: $41
	ld d, a                                          ; $7ce7: $57
	and c                                            ; $7ce8: $a1
	ld d, [hl]                                       ; $7ce9: $56
	call nz, $fc7b                                   ; $7cea: $c4 $7b $fc
	adc [hl]                                         ; $7ced: $8e

jr_028_7cee:
	cp $a9                                           ; $7cee: $fe $a9
	cp $52                                           ; $7cf0: $fe $52
	db $fc                                           ; $7cf2: $fc
	xor h                                            ; $7cf3: $ac
	ld a, [$fe54]                                    ; $7cf4: $fa $54 $fe
	xor b                                            ; $7cf7: $a8
	db $fc                                           ; $7cf8: $fc
	ld b, b                                          ; $7cf9: $40
	cp h                                             ; $7cfa: $bc
	xor b                                            ; $7cfb: $a8
	nop                                              ; $7cfc: $00
	ld e, b                                          ; $7cfd: $58
	nop                                              ; $7cfe: $00
	ld [hl], h                                       ; $7cff: $74
	ld e, h                                          ; $7d00: $5c
	ld [hl], c                                       ; $7d01: $71
	adc h                                            ; $7d02: $8c
	sbc [hl]                                         ; $7d03: $9e
	jr nc, jr_028_7d73                               ; $7d04: $30 $6d

	adc h                                            ; $7d06: $8c
	ld [bc], a                                       ; $7d07: $02
	xor $03                                          ; $7d08: $ee $03
	cp $03                                           ; $7d0a: $fe $03
	cp $13                                           ; $7d0c: $fe $13
	cp $4d                                           ; $7d0e: $fe $4d
	ld [hl-], a                                      ; $7d10: $32
	ld a, d                                          ; $7d11: $7a

jr_028_7d12:
	and b                                            ; $7d12: $a0
	sbc h                                            ; $7d13: $9c
	ldh [rDIV], a                                    ; $7d14: $e0 $04
	ld hl, sp+$5d                                    ; $7d16: $f8 $5d
	ld [hl-], a                                      ; $7d18: $32
	halt                                             ; $7d19: $76
	sub b                                            ; $7d1a: $90
	ld l, [hl]                                       ; $7d1b: $6e
	and h                                            ; $7d1c: $a4
	ld h, a                                          ; $7d1d: $67
	ld [$28df], a                                    ; $7d1e: $ea $df $28
	rst SubAFromDE                                          ; $7d21: $df
	ld d, b                                          ; $7d22: $50
	sbc e                                            ; $7d23: $9b
	ld de, $0310                                     ; $7d24: $11 $10 $03
	inc bc                                           ; $7d27: $03
	ld h, a                                          ; $7d28: $67
	ld [$6099], a                                    ; $7d29: $ea $99 $60
	jr nz, jr_028_7cee                               ; $7d2c: $20 $c0

	ld b, b                                          ; $7d2e: $40
	add b                                            ; $7d2f: $80
	add b                                            ; $7d30: $80
	db $fd                                           ; $7d31: $fd
	ld a, [hl]                                       ; $7d32: $7e
	sub d                                            ; $7d33: $92

jr_028_7d34:
	rst SubAFromDE                                          ; $7d34: $df
	rra                                              ; $7d35: $1f
	rst $38                                          ; $7d36: $ff
	add b                                            ; $7d37: $80
	ld e, $e0                                        ; $7d38: $1e $e0
	dec a                                            ; $7d3a: $3d
	ret nz                                           ; $7d3b: $c0

	ld a, e                                          ; $7d3c: $7b
	add b                                            ; $7d3d: $80

jr_028_7d3e:
	db $fd                                           ; $7d3e: $fd
	nop                                              ; $7d3f: $00
	ei                                               ; $7d40: $fb
	nop                                              ; $7d41: $00
	push af                                          ; $7d42: $f5
	ldh a, [$ce]                                     ; $7d43: $f0 $ce
	inc c                                            ; $7d45: $0c
	ld h, a                                          ; $7d46: $67
	rlca                                             ; $7d47: $07
	ld a, [hl]                                       ; $7d48: $7e
	add c                                            ; $7d49: $81
	ld a, [hl]                                       ; $7d4a: $7e
	add c                                            ; $7d4b: $81
	ld a, $c1                                        ; $7d4c: $3e $c1
	ld a, $c1                                        ; $7d4e: $3e $c1
	dec sp                                           ; $7d50: $3b
	push bc                                          ; $7d51: $c5
	rla                                              ; $7d52: $17
	rst AddAOntoHL                                          ; $7d53: $ef
	sbc c                                            ; $7d54: $99
	ld a, c                                          ; $7d55: $79
	pop af                                           ; $7d56: $f1
	add b                                            ; $7d57: $80
	ret nz                                           ; $7d58: $c0

	cp a                                             ; $7d59: $bf
	ret nz                                           ; $7d5a: $c0

	sub l                                            ; $7d5b: $95
	ld [$d5aa], a                                    ; $7d5c: $ea $aa $d5
	sub l                                            ; $7d5f: $95
	ld [$f00a], a                                    ; $7d60: $ea $0a $f0
	dec d                                            ; $7d63: $15
	ldh [$0a], a                                     ; $7d64: $e0 $0a
	db $f4                                           ; $7d66: $f4
	add c                                            ; $7d67: $81
	cp $a9                                           ; $7d68: $fe $a9
	ld d, e                                          ; $7d6a: $53
	ld d, [hl]                                       ; $7d6b: $56
	xor b                                            ; $7d6c: $a8
	xor l                                            ; $7d6d: $ad
	ld d, b                                          ; $7d6e: $50
	ld e, [hl]                                       ; $7d6f: $5e
	and b                                            ; $7d70: $a0
	cp a                                             ; $7d71: $bf
	ld b, b                                          ; $7d72: $40

jr_028_7d73:
	rra                                              ; $7d73: $1f
	ld h, b                                          ; $7d74: $60
	sub [hl]                                         ; $7d75: $96
	ld l, b                                          ; $7d76: $68
	sub [hl]                                         ; $7d77: $96
	dec h                                            ; $7d78: $25
	ret nc                                           ; $7d79: $d0

	dec hl                                           ; $7d7a: $2b
	db $f4                                           ; $7d7b: $f4
	sub l                                            ; $7d7c: $95
	ld a, [hl+]                                      ; $7d7d: $2a
	rla                                              ; $7d7e: $17
	nop                                              ; $7d7f: $00
	xor a                                            ; $7d80: $af
	ld [hl], e                                       ; $7d81: $73
	ld [hl], h                                       ; $7d82: $74
	ld a, a                                          ; $7d83: $7f
	ld a, [$4594]                                    ; $7d84: $fa $94 $45
	nop                                              ; $7d87: $00
	or b                                             ; $7d88: $b0
	nop                                              ; $7d89: $00
	ldh a, [rSB]                                     ; $7d8a: $f0 $01
	ldh [rSB], a                                     ; $7d8c: $e0 $01
	ldh [$03], a                                     ; $7d8e: $e0 $03
	ret nz                                           ; $7d90: $c0

	ld [hl], a                                       ; $7d91: $77
	cp $9c                                           ; $7d92: $fe $9c
	rlca                                             ; $7d94: $07
	add b                                            ; $7d95: $80
	rlca                                             ; $7d96: $07
	ld [hl], h                                       ; $7d97: $74
	ld e, h                                          ; $7d98: $5c
	ld l, l                                          ; $7d99: $6d
	adc h                                            ; $7d9a: $8c
	ld bc, $038a                                     ; $7d9b: $01 $8a $03
	cp $03                                           ; $7d9e: $fe $03
	cp $03                                           ; $7da0: $fe $03
	cp $03                                           ; $7da2: $fe $03
	cp $43                                           ; $7da4: $fe $43
	cp $56                                           ; $7da6: $fe $56
	and h                                            ; $7da8: $a4
	ld [hl], a                                       ; $7da9: $77
	cp $7a                                           ; $7daa: $fe $7a
	push bc                                          ; $7dac: $c5
	ld d, d                                          ; $7dad: $52
	adc [hl]                                         ; $7dae: $8e
	ei                                               ; $7daf: $fb
	ld e, a                                          ; $7db0: $5f
	ld [$2197], a                                    ; $7db1: $ea $97 $21
	nop                                              ; $7db4: $00
	ld d, e                                          ; $7db5: $53
	inc bc                                           ; $7db6: $03
	ld l, $0e                                        ; $7db7: $2e $0e
	ld [hl], b                                       ; $7db9: $70
	jr nc, jr_028_7e22                               ; $7dba: $30 $66

	ld a, b                                          ; $7dbc: $78
	ld a, l                                          ; $7dbd: $7d
	add b                                            ; $7dbe: $80
	ld a, a                                          ; $7dbf: $7f
	cp $92                                           ; $7dc0: $fe $92
	ld b, h                                          ; $7dc2: $44
	ld a, e                                          ; $7dc3: $7b
	ld l, d                                          ; $7dc4: $6a
	ld d, l                                          ; $7dc5: $55
	push af                                          ; $7dc6: $f5
	adc d                                            ; $7dc7: $8a
	cp $81                                           ; $7dc8: $fe $81
	ccf                                              ; $7dca: $3f
	nop                                              ; $7dcb: $00
	rlca                                             ; $7dcc: $07
	nop                                              ; $7dcd: $00
	ld l, d                                          ; $7dce: $6a
	ld a, d                                          ; $7dcf: $7a
	ld a, [$fc7f]                                    ; $7dd0: $fa $7f $fc
	ld a, [hl]                                       ; $7dd3: $7e
	jp nz, Jump_028_5f94                             ; $7dd4: $c2 $94 $5f

	and b                                            ; $7dd7: $a0
	xor e                                            ; $7dd8: $ab
	ld d, h                                          ; $7dd9: $54
	pop bc                                           ; $7dda: $c1
	ld a, $e7                                        ; $7ddb: $3e $e7
	jr @+$2c                                         ; $7ddd: $18 $2a

	nop                                              ; $7ddf: $00
	db $fd                                           ; $7de0: $fd
	ld a, e                                          ; $7de1: $7b
	xor d                                            ; $7de2: $aa
	sbc [hl]                                         ; $7de3: $9e
	cp $73                                           ; $7de4: $fe $73
	cp $7c                                           ; $7de6: $fe $7c
	pop af                                           ; $7de8: $f1
	ld a, a                                          ; $7de9: $7f
	cp $74                                           ; $7dea: $fe $74
	ld e, h                                          ; $7dec: $5c
	ld h, l                                          ; $7ded: $65
	adc h                                            ; $7dee: $8c
	ld a, c                                          ; $7def: $79
	adc d                                            ; $7df0: $8a
	sbc [hl]                                         ; $7df1: $9e
	ld [hl], b                                       ; $7df2: $70
	inc bc                                           ; $7df3: $03
	ld e, [hl]                                       ; $7df4: $5e
	inc bc                                           ; $7df5: $03
	cp $03                                           ; $7df6: $fe $03
	cp $03                                           ; $7df8: $fe $03
	cp $03                                           ; $7dfa: $fe $03
	cp $03                                           ; $7dfc: $fe $03
	cp $1f                                           ; $7dfe: $fe $1f
	cp $56                                           ; $7e00: $fe $56
	and h                                            ; $7e02: $a4
	ld [hl], a                                       ; $7e03: $77
	cp $4d                                           ; $7e04: $fe $4d
	ld [hl-], a                                      ; $7e06: $32
	ld a, a                                          ; $7e07: $7f
	cp $7d                                           ; $7e08: $fe $7d
	ld e, d                                          ; $7e0a: $5a
	ld d, l                                          ; $7e0b: $55
	ld [hl-], a                                      ; $7e0c: $32
	ld [hl], a                                       ; $7e0d: $77
	ld [$ba76], a                                    ; $7e0e: $ea $76 $ba
	ld e, l                                          ; $7e11: $5d
	inc e                                            ; $7e12: $1c
	ld a, a                                          ; $7e13: $7f
	db $fd                                           ; $7e14: $fd
	ld a, a                                          ; $7e15: $7f
	cp $9e                                           ; $7e16: $fe $9e
	ldh a, [$79]                                     ; $7e18: $f0 $79
	adc h                                            ; $7e1a: $8c
	sbc l                                            ; $7e1b: $9d
	jr nz, jr_028_7e1f                               ; $7e1c: $20 $01

	ld a, e                                          ; $7e1e: $7b

jr_028_7e1f:
	push de                                          ; $7e1f: $d5
	sbc h                                            ; $7e20: $9c
	inc bc                                           ; $7e21: $03

jr_028_7e22:
	add b                                            ; $7e22: $80
	inc bc                                           ; $7e23: $03
	ld [hl], h                                       ; $7e24: $74
	ld e, h                                          ; $7e25: $5c
	ld l, l                                          ; $7e26: $6d
	adc h                                            ; $7e27: $8c
	ld l, l                                          ; $7e28: $6d
	adc d                                            ; $7e29: $8a
	inc bc                                           ; $7e2a: $03
	ld a, [hl]                                       ; $7e2b: $7e
	dec hl                                           ; $7e2c: $2b
	cp $97                                           ; $7e2d: $fe $97
	pop af                                           ; $7e2f: $f1
	nop                                              ; $7e30: $00
	ldh [$0e], a                                     ; $7e31: $e0 $0e
	ret nz                                           ; $7e33: $c0

	ld de, $17c0                                     ; $7e34: $11 $c0 $17
	ld h, a                                          ; $7e37: $67
	ldh a, [$97]                                     ; $7e38: $f0 $97
	db $ec                                           ; $7e3a: $ec
	nop                                              ; $7e3b: $00
	ld b, b                                          ; $7e3c: $40
	adc e                                            ; $7e3d: $8b
	ld bc, $206a                                     ; $7e3e: $01 $6a $20
	ld c, h                                          ; $7e41: $4c
	ld h, a                                          ; $7e42: $67
	ldh a, [$97]                                     ; $7e43: $f0 $97
	rst SubAFromBC                                          ; $7e45: $e7
	nop                                              ; $7e46: $00
	ld bc, $095a                                     ; $7e47: $01 $5a $09
	ld d, d                                          ; $7e4a: $52
	nop                                              ; $7e4b: $00
	ld h, d                                          ; $7e4c: $62
	ld h, a                                          ; $7e4d: $67
	ldh a, [$97]                                     ; $7e4e: $f0 $97
	cp l                                             ; $7e50: $bd
	nop                                              ; $7e51: $00
	jr jr_028_7e75                                   ; $7e52: $18 $21

	jr @+$27                                         ; $7e54: $18 $25

	inc e                                            ; $7e56: $1c
	and c                                            ; $7e57: $a1
	ld h, a                                          ; $7e58: $67
	ldh a, [$97]                                     ; $7e59: $f0 $97
	sbc h                                            ; $7e5b: $9c
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	ld l, e                                          ; $7e5e: $6b
	ld hl, $004a                                     ; $7e5f: $21 $4a $00
	adc h                                            ; $7e62: $8c
	ld c, a                                          ; $7e63: $4f
	ret nc                                           ; $7e64: $d0

	sbc [hl]                                         ; $7e65: $9e
	ld bc, $d063                                     ; $7e66: $01 $63 $d0
	sbc e                                            ; $7e69: $9b
	ld l, h                                          ; $7e6a: $6c
	nop                                              ; $7e6b: $00
	jr nz, jr_028_7eb9                               ; $7e6c: $20 $4b

	ld a, e                                          ; $7e6e: $7b
	xor $9e                                          ; $7e6f: $ee $9e
	ld [de], a                                       ; $7e71: $12
	ld h, a                                          ; $7e72: $67
	ldh a, [$9b]                                     ; $7e73: $f0 $9b

jr_028_7e75:
	db $db                                           ; $7e75: $db
	nop                                              ; $7e76: $00
	ld bc, $7b4a                                     ; $7e77: $01 $4a $7b
	cp $9e                                           ; $7e7a: $fe $9e
	ld d, d                                          ; $7e7c: $52
	ld h, a                                          ; $7e7d: $67
	ldh a, [$97]                                     ; $7e7e: $f0 $97
	sub a                                            ; $7e80: $97
	nop                                              ; $7e81: $00
	add b                                            ; $7e82: $80
	ld [de], a                                       ; $7e83: $12
	nop                                              ; $7e84: $00
	ld d, b                                          ; $7e85: $50
	nop                                              ; $7e86: $00
	ld d, l                                          ; $7e87: $55
	ld h, a                                          ; $7e88: $67

jr_028_7e89:
	ldh a, [$97]                                     ; $7e89: $f0 $97
	ld e, $40                                        ; $7e8b: $1e $40
	ld c, $50                                        ; $7e8d: $0e $50
	inc c                                            ; $7e8f: $0c
	ld d, c                                          ; $7e90: $51
	inc c                                            ; $7e91: $0c
	ld d, c                                          ; $7e92: $51
	ld h, a                                          ; $7e93: $67
	ldh a, [$9d]                                     ; $7e94: $f0 $9d
	ld e, l                                          ; $7e96: $5d
	nop                                              ; $7e97: $00
	ld [hl], a                                       ; $7e98: $77
	ldh a, [c]                                       ; $7e99: $f2
	ld e, a                                          ; $7e9a: $5f
	ldh a, [$97]                                     ; $7e9b: $f0 $97
	db $e3                                           ; $7e9d: $e3
	nop                                              ; $7e9e: $00

jr_028_7e9f:
	ldh [$0d], a                                     ; $7e9f: $e0 $0d
	db $e4                                           ; $7ea1: $e4
	add hl, bc                                       ; $7ea2: $09
	ldh [$03], a                                     ; $7ea3: $e0 $03
	ld h, a                                          ; $7ea5: $67
	ldh a, [$98]                                     ; $7ea6: $f0 $98
	ld h, [hl]                                       ; $7ea8: $66
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	ld e, d                                          ; $7eab: $5a
	ld [$0056], sp                                   ; $7eac: $08 $56 $00
	ld h, e                                          ; $7eaf: $63
	or b                                             ; $7eb0: $b0
	sub l                                            ; $7eb1: $95
	ret nc                                           ; $7eb2: $d0

	ld bc, $9b40                                     ; $7eb3: $01 $40 $9b
	ld c, c                                          ; $7eb6: $49
	sub d                                            ; $7eb7: $92
	add hl, bc                                       ; $7eb8: $09

jr_028_7eb9:
	ld [de], a                                       ; $7eb9: $12
	add b                                            ; $7eba: $80
	ld a, a                                          ; $7ebb: $7f
	ld l, [hl]                                       ; $7ebc: $6e
	cp d                                             ; $7ebd: $ba
	ld a, a                                          ; $7ebe: $7f
	ld h, b                                          ; $7ebf: $60
	sbc c                                            ; $7ec0: $99
	inc b                                            ; $7ec1: $04

jr_028_7ec2:
	ld l, c                                          ; $7ec2: $69
	inc h                                            ; $7ec3: $24
	ld e, c                                          ; $7ec4: $59
	inc e                                            ; $7ec5: $1c
	add b                                            ; $7ec6: $80
	ld a, e                                          ; $7ec7: $7b
	ld h, a                                          ; $7ec8: $67
	sub d                                            ; $7ec9: $92
	rst $38                                          ; $7eca: $ff
	ld bc, $c1fe                                     ; $7ecb: $01 $fe $c1
	ld a, $63                                        ; $7ece: $3e $63
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	xor [hl]                                         ; $7ed2: $ae
	add [hl]                                         ; $7ed3: $86
	jr z, jr_028_7ed6                                ; $7ed4: $28 $00

jr_028_7ed6:
	ld h, e                                          ; $7ed6: $63
	ld h, a                                          ; $7ed7: $67
	ret nc                                           ; $7ed8: $d0

	sub a                                            ; $7ed9: $97
	ld sp, $0000                                     ; $7eda: $31 $00 $00
	rst SubAFromHL                                          ; $7edd: $d7
	ld b, e                                          ; $7ede: $43
	or h                                             ; $7edf: $b4
	db $10                                           ; $7ee0: $10
	ld hl, $f067                                     ; $7ee1: $21 $67 $f0
	ld a, a                                          ; $7ee4: $7f
	add $7f                                          ; $7ee5: $c6 $7f
	ld [bc], a                                       ; $7ee7: $02
	ld a, e                                          ; $7ee8: $7b
	jr nc, jr_028_7e89                               ; $7ee9: $30 $9e

	ld a, [de]                                       ; $7eeb: $1a
	ld h, b                                          ; $7eec: $60
	add sp, -$68                                     ; $7eed: $e8 $98
	ld b, h                                          ; $7eef: $44
	nop                                              ; $7ef0: $00
	ld e, l                                          ; $7ef1: $5d
	inc c                                            ; $7ef2: $0c
	ld d, c                                          ; $7ef3: $51
	nop                                              ; $7ef4: $00
	ld b, l                                          ; $7ef5: $45
	ld h, a                                          ; $7ef6: $67
	ldh a, [hDisp1_LCDC]                                     ; $7ef7: $f0 $8f
	ld a, a                                          ; $7ef9: $7f
	nop                                              ; $7efa: $00
	ccf                                              ; $7efb: $3f
	add b                                            ; $7efc: $80
	sbc a                                            ; $7efd: $9f
	jr nz, jr_028_7e9f                               ; $7efe: $20 $9f

	jr nz, jr_028_7ec2                               ; $7f00: $20 $c0

	ld de, $0ee0                                     ; $7f02: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $7f05: $e0 $11
	ldh a, [rIF]                                     ; $7f07: $f0 $0f
	ld h, a                                          ; $7f09: $67
	add sp, -$69                                     ; $7f0a: $e8 $97
	inc h                                            ; $7f0c: $24
	ld c, e                                          ; $7f0d: $4b
	ld hl, $60ca                                     ; $7f0e: $21 $ca $60
	adc h                                            ; $7f11: $8c
	db $e4                                           ; $7f12: $e4
	dec de                                           ; $7f13: $1b
	ld h, a                                          ; $7f14: $67
	ldh a, [$97]                                     ; $7f15: $f0 $97
	jr nz, @+$5c                                     ; $7f17: $20 $5a

	ld [$0052], sp                                   ; $7f19: $08 $52 $00
	rst SubAFromBC                                          ; $7f1c: $e7
	ld h, e                                          ; $7f1d: $63
	sbc h                                            ; $7f1e: $9c
	ld h, a                                          ; $7f1f: $67
	ldh a, [$7e]                                     ; $7f20: $f0 $7e
	adc $97                                          ; $7f22: $ce $97
	inc c                                            ; $7f24: $0c
	ld de, $b500                                     ; $7f25: $11 $00 $b5
	sub b                                            ; $7f28: $90
	ld h, a                                          ; $7f29: $67
	di                                               ; $7f2a: $f3
	inc c                                            ; $7f2b: $0c
	ld l, a                                          ; $7f2c: $6f
	ldh a, [$9e]                                     ; $7f2d: $f0 $9e
	add h                                            ; $7f2f: $84
	halt                                             ; $7f30: $76
	jp z, $9c9c                                      ; $7f31: $ca $9c $9c

	adc h                                            ; $7f34: $8c
	ld [hl], e                                       ; $7f35: $73
	ld h, a                                          ; $7f36: $67
	ldh [$9e], a                                     ; $7f37: $e0 $9e
	ld hl, $ca76                                     ; $7f39: $21 $76 $ca
	sbc [hl]                                         ; $7f3c: $9e
	and $5f                                          ; $7f3d: $e6 $5f
	ret nc                                           ; $7f3f: $d0

	ld [hl], a                                       ; $7f40: $77
	ld a, d                                          ; $7f41: $7a
	ld a, [hl]                                       ; $7f42: $7e
	ld a, d                                          ; $7f43: $7a
	sbc l                                            ; $7f44: $9d
	inc h                                            ; $7f45: $24
	db $db                                           ; $7f46: $db
	ld h, e                                          ; $7f47: $63
	ld a, b                                          ; $7f48: $78
	ld a, a                                          ; $7f49: $7f
	or d                                             ; $7f4a: $b2
	ld a, a                                          ; $7f4b: $7f
	xor [hl]                                         ; $7f4c: $ae
	sbc h                                            ; $7f4d: $9c
	jp nc, $b748                                     ; $7f4e: $d2 $48 $b7

	ld h, e                                          ; $7f51: $63
	ldh [$98], a                                     ; $7f52: $e0 $98
	ld d, $03                                        ; $7f54: $16 $03
	call nc, $9443                                   ; $7f56: $d4 $43 $94
	ld b, e                                          ; $7f59: $43
	cp h                                             ; $7f5a: $bc
	ld h, a                                          ; $7f5b: $67
	ldh a, [$97]                                     ; $7f5c: $f0 $97
	inc c                                            ; $7f5e: $0c
	ld d, b                                          ; $7f5f: $50
	ld [$0953], sp                                   ; $7f60: $08 $53 $09
	ld d, d                                          ; $7f63: $52
	add hl, bc                                       ; $7f64: $09
	or $63                                           ; $7f65: $f6 $63
	ldh a, [$7a]                                     ; $7f67: $f0 $7a
	call z, Call_028_447b                            ; $7f69: $cc $7b $44
	rst SubAFromDE                                          ; $7f6c: $df
	rst $38                                          ; $7f6d: $ff
	ld l, e                                          ; $7f6e: $6b
	ldh a, [rPCM12]                                  ; $7f6f: $f0 $76
	jp z, $249d                                      ; $7f71: $ca $9d $24

	ld c, c                                          ; $7f74: $49
	ld e, e                                          ; $7f75: $5b
	or b                                             ; $7f76: $b0
	ld [hl], a                                       ; $7f77: $77
	ld h, b                                          ; $7f78: $60
	sbc h                                            ; $7f79: $9c
	ld h, [hl]                                       ; $7f7a: $66
	ld [hl+], a                                      ; $7f7b: $22
	db $dd                                           ; $7f7c: $dd
	ld h, e                                          ; $7f7d: $63
	ld [$d29c], sp                                   ; $7f7e: $08 $9c $d2
	ld c, c                                          ; $7f81: $49
	sub d                                            ; $7f82: $92
	ld a, e                                          ; $7f83: $7b
	cp $9e                                           ; $7f84: $fe $9e
	or [hl]                                          ; $7f86: $b6
	ld h, a                                          ; $7f87: $67
	ldh a, [$99]                                     ; $7f88: $f0 $99
	add h                                            ; $7f8a: $84
	ld l, c                                          ; $7f8b: $69
	inc h                                            ; $7f8c: $24
	ld c, c                                          ; $7f8d: $49
	inc b                                            ; $7f8e: $04
	sbc c                                            ; $7f8f: $99
	ld e, a                                          ; $7f90: $5f
	ld h, b                                          ; $7f91: $60
	sbc [hl]                                         ; $7f92: $9e
	ld bc, $ca7a                                     ; $7f93: $01 $7a $ca
	sbc e                                            ; $7f96: $9b
	add b                                            ; $7f97: $80
	inc hl                                           ; $7f98: $23
	add c                                            ; $7f99: $81
	ld a, [hl]                                       ; $7f9a: $7e
	ld h, e                                          ; $7f9b: $63
	ret nz                                           ; $7f9c: $c0

	ld a, [hl]                                       ; $7f9d: $7e
	jp z, $949a                                      ; $7f9e: $ca $9a $94

	nop                                              ; $7fa1: $00
	ld sp, $ef10                                     ; $7fa2: $31 $10 $ef
	ld h, e                                          ; $7fa5: $63
	ldh a, [$79]                                     ; $7fa6: $f0 $79
	call z, $249d                                    ; $7fa8: $cc $9d $24
	ld c, b                                          ; $7fab: $48
	ld e, e                                          ; $7fac: $5b
	and b                                            ; $7fad: $a0
	ld a, [hl]                                       ; $7fae: $7e
	jp z, $d19a                                      ; $7faf: $ca $9a $d1

	ld b, b                                          ; $7fb2: $40
	add h                                            ; $7fb3: $84
	ld b, b                                          ; $7fb4: $40
	cp a                                             ; $7fb5: $bf
	ld h, a                                          ; $7fb6: $67
	ldh a, [rPCM12]                                  ; $7fb7: $f0 $76
	call z, $079b                                    ; $7fb9: $cc $9b $07
	ld l, b                                          ; $7fbc: $68
	daa                                              ; $7fbd: $27
	ret c                                            ; $7fbe: $d8

	ld h, a                                          ; $7fbf: $67
	ldh a, [$3d]                                     ; $7fc0: $f0 $3d
	nop                                              ; $7fc2: $00
	add e                                            ; $7fc3: $83
	ld d, b                                          ; $7fc4: $50
	ld de, $0100                                     ; $7fc5: $11 $00 $01
	ld b, l                                          ; $7fc8: $45
	ld b, l                                          ; $7fc9: $45
	ld d, h                                          ; $7fca: $54
	ld b, h                                          ; $7fcb: $44
	nop                                              ; $7fcc: $00
	dec b                                            ; $7fcd: $05
	ld d, c                                          ; $7fce: $51
	ld de, $6706                                     ; $7fcf: $11 $06 $67
	ld [hl], l                                       ; $7fd2: $75
	ld d, l                                          ; $7fd3: $55
	ld d, h                                          ; $7fd4: $54
	ld b, c                                          ; $7fd5: $41
	nop                                              ; $7fd6: $00
	ld d, l                                          ; $7fd7: $55
	ld d, l                                          ; $7fd8: $55
	ld bc, $2263                                     ; $7fd9: $01 $63 $22
	ld [hl], l                                       ; $7fdc: $75
	dec [hl]                                         ; $7fdd: $35
	ld d, h                                          ; $7fde: $54
	ld b, b                                          ; $7fdf: $40
	ld a, e                                          ; $7fe0: $7b
	or $97                                           ; $7fe1: $f6 $97
	ld d, l                                          ; $7fe3: $55
	ld d, d                                          ; $7fe4: $52
	ld [hl+], a                                      ; $7fe5: $22
	ld d, [hl]                                       ; $7fe6: $56
	ld h, [hl]                                       ; $7fe7: $66
	ld h, b                                          ; $7fe8: $60
	nop                                              ; $7fe9: $00
	dec b                                            ; $7fea: $05
	db $dd                                           ; $7feb: $dd
	ld d, l                                          ; $7fec: $55
	sbc l                                            ; $7fed: $9d
	ld d, d                                          ; $7fee: $52
	ld h, [hl]                                       ; $7fef: $66
	ld h, a                                          ; $7ff0: $67
	or $df                                           ; $7ff1: $f6 $df
	ld d, l                                          ; $7ff3: $55
	sbc h                                            ; $7ff4: $9c
	ld [hl], $60                                     ; $7ff5: $36 $60
	ld de, $55d9                                     ; $7ff7: $11 $d9 $55
	ld [hl], e                                       ; $7ffa: $73
	reti                                             ; $7ffb: $d9


	call nz, $ff55                                   ; $7ffc: $c4 $55 $ff

Call_028_7fff:
	rst $38                                          ; $7fff: $ff
