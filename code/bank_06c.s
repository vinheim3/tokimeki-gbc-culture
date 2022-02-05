; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

	dec b                                            ; $4000: $05
	ld b, $6f                                        ; $4001: $06 $6f
	cp $9d                                           ; $4003: $fe $9d
	rlca                                             ; $4005: $07
	ld b, $7b                                        ; $4006: $06 $7b
	di                                               ; $4008: $f3
	add b                                            ; $4009: $80
	inc bc                                           ; $400a: $03
	ld b, d                                          ; $400b: $42
	ld b, e                                          ; $400c: $43
	ld h, d                                          ; $400d: $62
	ld b, e                                          ; $400e: $43
	ld l, l                                          ; $400f: $6d
	ld a, [hl]                                       ; $4010: $7e
	inc sp                                           ; $4011: $33
	inc a                                            ; $4012: $3c
	inc c                                            ; $4013: $0c
	rrca                                             ; $4014: $0f
	rlca                                             ; $4015: $07
	rlca                                             ; $4016: $07
	ld bc, $0301                                     ; $4017: $01 $01 $03
	inc bc                                           ; $401a: $03
	ld b, $07                                        ; $401b: $06 $07
	dec c                                            ; $401d: $0d
	ld c, $1b                                        ; $401e: $0e $1b
	inc e                                            ; $4020: $1c
	ld a, $31                                        ; $4021: $3e $31
	ld l, h                                          ; $4023: $6c
	ld [hl], e                                       ; $4024: $73
	ld e, l                                          ; $4025: $5d
	ld h, d                                          ; $4026: $62
	ld a, e                                          ; $4027: $7b
	ld b, h                                          ; $4028: $44
	add e                                            ; $4029: $83
	ldh a, [c]                                       ; $402a: $f2
	call $dbac                                       ; $402b: $cd $ac $db
	or l                                             ; $402e: $b5
	jp c, $f699                                      ; $402f: $da $99 $f6

	xor e                                            ; $4032: $ab
	db $f4                                           ; $4033: $f4
	xor a                                            ; $4034: $af
	db $f4                                           ; $4035: $f4
	or a                                             ; $4036: $b7
	db $ec                                           ; $4037: $ec
	push af                                          ; $4038: $f5
	xor $75                                          ; $4039: $ee $75
	ld l, [hl]                                       ; $403b: $6e
	dec l                                            ; $403c: $2d
	ld [hl], $2a                                     ; $403d: $36 $2a
	scf                                              ; $403f: $37
	ld a, [hl-]                                      ; $4040: $3a
	scf                                              ; $4041: $37
	ld de, $181f                                     ; $4042: $11 $1f $18
	rra                                              ; $4045: $1f
	ld [hl], a                                       ; $4046: $77
	adc $f7                                          ; $4047: $ce $f7
	ld [hl], a                                       ; $4049: $77
	and d                                            ; $404a: $a2
	ld a, a                                          ; $404b: $7f
	xor h                                            ; $404c: $ac
	add b                                            ; $404d: $80
	dec bc                                           ; $404e: $0b
	inc c                                            ; $404f: $0c
	ld c, $09                                        ; $4050: $0e $09
	dec d                                            ; $4052: $15
	dec de                                           ; $4053: $1b
	dec bc                                           ; $4054: $0b
	ld d, $27                                        ; $4055: $16 $27
	inc a                                            ; $4057: $3c
	ld c, a                                          ; $4058: $4f
	ld a, c                                          ; $4059: $79
	rst $38                                          ; $405a: $ff
	ei                                               ; $405b: $fb
	ld e, $17                                        ; $405c: $1e $17
	dec a                                            ; $405e: $3d
	ld [hl], $2d                                     ; $405f: $36 $2d
	ld [hl], $3b                                     ; $4061: $36 $3b
	inc l                                            ; $4063: $2c
	ld a, e                                          ; $4064: $7b
	ld c, h                                          ; $4065: $4c
	or d                                             ; $4066: $b2
	call c, $9856                                    ; $4067: $dc $56 $98
	sub h                                            ; $406a: $94
	jr @-$49                                         ; $406b: $18 $b5

	sbc e                                            ; $406d: $9b
	jr jr_06c_40ad                                   ; $406e: $18 $3d

	db $10                                           ; $4070: $10
	ld a, l                                          ; $4071: $7d
	ld a, e                                          ; $4072: $7b

jr_06c_4073:
	cp $97                                           ; $4073: $fe $97
	ei                                               ; $4075: $fb
	jr nc, jr_06c_4073                               ; $4076: $30 $fb

	jr nc, jr_06c_40e5                               ; $4078: $30 $6b

	or b                                             ; $407a: $b0
	ld l, [hl]                                       ; $407b: $6e
	or c                                             ; $407c: $b1
	ld [hl], a                                       ; $407d: $77
	cp $80                                           ; $407e: $fe $80
	db $ec                                           ; $4080: $ec
	inc sp                                           ; $4081: $33
	xor b                                            ; $4082: $a8
	ld [hl], a                                       ; $4083: $77
	jp hl                                            ; $4084: $e9


	halt                                             ; $4085: $76
	ld b, c                                          ; $4086: $41
	cp $c3                                           ; $4087: $fe $c3
	db $fc                                           ; $4089: $fc
	adc [hl]                                         ; $408a: $8e
	ld sp, hl                                        ; $408b: $f9
	jp nc, Jump_06c_58b9                             ; $408c: $d2 $b9 $58

	or e                                             ; $408f: $b3
	and l                                            ; $4090: $a5
	ld [hl], d                                       ; $4091: $72
	or b                                             ; $4092: $b0
	ld h, [hl]                                       ; $4093: $66
	ld [hl-], a                                      ; $4094: $32
	db $e4                                           ; $4095: $e4
	ld c, [hl]                                       ; $4096: $4e
	ldh [$cd], a                                     ; $4097: $e0 $cd
	ld h, b                                          ; $4099: $60
	push hl                                          ; $409a: $e5
	ld b, b                                          ; $409b: $40
	and c                                            ; $409c: $a1
	ret nz                                           ; $409d: $c0

Jump_06c_409e:
	xor l                                            ; $409e: $ad
	sub e                                            ; $409f: $93
	ret nz                                           ; $40a0: $c0

	xor c                                            ; $40a1: $a9
	call nz, $e49b                                   ; $40a2: $c4 $9b $e4
	sub l                                            ; $40a5: $95
	xor $84                                          ; $40a6: $ee $84
	rst $38                                          ; $40a8: $ff
	ld b, h                                          ; $40a9: $44
	rst $38                                          ; $40aa: $ff
	ld b, d                                          ; $40ab: $42
	ld a, e                                          ; $40ac: $7b

jr_06c_40ad:
	cp $87                                           ; $40ad: $fe $87
	ld b, e                                          ; $40af: $43
	rst $38                                          ; $40b0: $ff
	inc hl                                           ; $40b1: $23
	rst $38                                          ; $40b2: $ff
	inc hl                                           ; $40b3: $23
	cp $37                                           ; $40b4: $fe $37
	cp $17                                           ; $40b6: $fe $17
	db $fc                                           ; $40b8: $fc
	sub a                                            ; $40b9: $97
	db $fc                                           ; $40ba: $fc
	rst GetHLinHL                                          ; $40bb: $cf
	db $fc                                           ; $40bc: $fc
	rst $38                                          ; $40bd: $ff
	db $fc                                           ; $40be: $fc
	ccf                                              ; $40bf: $3f
	inc a                                            ; $40c0: $3c
	rrca                                             ; $40c1: $0f
	inc c                                            ; $40c2: $0c
	rlca                                             ; $40c3: $07
	inc b                                            ; $40c4: $04
	rlca                                             ; $40c5: $07
	inc b                                            ; $40c6: $04
	ldh a, [c]                                       ; $40c7: $f2
	add b                                            ; $40c8: $80
	ld [$0800], sp                                   ; $40c9: $08 $00 $08
	inc c                                            ; $40cc: $0c
	inc b                                            ; $40cd: $04
	inc c                                            ; $40ce: $0c
	inc b                                            ; $40cf: $04
	dec bc                                           ; $40d0: $0b
	rrca                                             ; $40d1: $0f
	rrca                                             ; $40d2: $0f
	dec bc                                           ; $40d3: $0b
	sbc l                                            ; $40d4: $9d

jr_06c_40d5:
	rst $38                                          ; $40d5: $ff

jr_06c_40d6:
	ld l, [hl]                                       ; $40d6: $6e
	ld [hl], l                                       ; $40d7: $75
	rla                                              ; $40d8: $17
	dec de                                           ; $40d9: $1b
	ld sp, hl                                        ; $40da: $f9
	rst $38                                          ; $40db: $ff
	or [hl]                                          ; $40dc: $b6
	adc $fb                                          ; $40dd: $ce $fb
	rlca                                             ; $40df: $07
	sbc $3f                                          ; $40e0: $de $3f
	ld h, h                                          ; $40e2: $64
	rst $38                                          ; $40e3: $ff
	cp e                                             ; $40e4: $bb

jr_06c_40e5:
	call z, $38f7                                    ; $40e5: $cc $f7 $38
	add b                                            ; $40e8: $80
	ld a, [$f561]                                    ; $40e9: $fa $61 $f5
	jp nz, $84ea                                     ; $40ec: $c2 $ea $84

	jp nz, $940c                                     ; $40ef: $c2 $0c $94

	ld [$08b4], sp                                   ; $40f2: $08 $b4 $08
	add hl, hl                                       ; $40f5: $29
	db $10                                           ; $40f6: $10
	ld l, e                                          ; $40f7: $6b
	db $10                                           ; $40f8: $10
	ld c, d                                          ; $40f9: $4a
	jr nc, @+$4d                                     ; $40fa: $30 $4b

	jr nc, jr_06c_40d5                               ; $40fc: $30 $d7

	jr nz, jr_06c_40d6                               ; $40fe: $20 $d6

	ld hl, $21d6                                     ; $4100: $21 $d6 $21
	adc l                                            ; $4103: $8d
	ld [hl], e                                       ; $4104: $73
	adc d                                            ; $4105: $8a
	ld [hl], a                                       ; $4106: $77
	adc l                                            ; $4107: $8d
	adc d                                            ; $4108: $8a
	halt                                             ; $4109: $76
	rrca                                             ; $410a: $0f
	db $fc                                           ; $410b: $fc
	add hl, bc                                       ; $410c: $09
	db $fc                                           ; $410d: $fc
	dec d                                            ; $410e: $15
	ld hl, sp+$5b                                    ; $410f: $f8 $5b
	or b                                             ; $4111: $b0
	ld e, d                                          ; $4112: $5a
	or c                                             ; $4113: $b1
	ld l, d                                          ; $4114: $6a
	or c                                             ; $4115: $b1
	push af                                          ; $4116: $f5
	inc hl                                           ; $4117: $23
	or l                                             ; $4118: $b5
	ld h, e                                          ; $4119: $63
	or l                                             ; $411a: $b5
	ld h, e                                          ; $411b: $63
	dec [hl]                                         ; $411c: $35
	db $e3                                           ; $411d: $e3
	ld [hl], a                                       ; $411e: $77
	cp $7f                                           ; $411f: $fe $7f
	ld hl, sp-$6c                                    ; $4121: $f8 $94
	cp a                                             ; $4123: $bf
	ld h, c                                          ; $4124: $61
	xor a                                            ; $4125: $af
	ld [hl], c                                       ; $4126: $71
	cpl                                              ; $4127: $2f
	pop af                                           ; $4128: $f1
	dec de                                           ; $4129: $1b
	push af                                          ; $412a: $f5
	dec de                                           ; $412b: $1b
	push af                                          ; $412c: $f5
	inc [hl]                                         ; $412d: $34
	ld a, d                                          ; $412e: $7a
	add sp, -$80                                     ; $412f: $e8 $80
	xor l                                            ; $4131: $ad
	jp c, $dbac                                      ; $4132: $da $ac $db

	ld a, c                                          ; $4135: $79
	rst GetHLinHL                                          ; $4136: $cf
	ld d, l                                          ; $4137: $55
	rst AddAOntoHL                                          ; $4138: $ef
	call nc, $3e6f                                   ; $4139: $d4 $6f $3e
	rst AddAOntoHL                                          ; $413c: $ef
	ld a, $fb                                        ; $413d: $3e $fb
	ld a, [hl]                                       ; $413f: $7e
	di                                               ; $4140: $f3
	rst SubAFromDE                                          ; $4141: $df
	pop hl                                           ; $4142: $e1
	rst $38                                          ; $4143: $ff
	add c                                            ; $4144: $81

jr_06c_4145:
	pop hl                                           ; $4145: $e1
	ld bc, $00c1                                     ; $4146: $01 $c1 $00
	pop bc                                           ; $4149: $c1
	nop                                              ; $414a: $00
	and e                                            ; $414b: $a3
	ld hl, $39af                                     ; $414c: $21 $af $39
	ld [hl], $9b                                     ; $414f: $36 $9b
	rra                                              ; $4151: $1f
	ld [$0f0f], sp                                   ; $4152: $08 $0f $0f
	ld a, d                                          ; $4155: $7a
	sbc $9c                                          ; $4156: $de $9c
	ld bc, $8100                                     ; $4158: $01 $00 $81
	db $f4                                           ; $415b: $f4
	rst SubAFromDE                                          ; $415c: $df
	ld bc, $9c7e                                     ; $415d: $01 $7e $9c
	ld a, [hl]                                       ; $4160: $7e
	ret c                                            ; $4161: $d8

	add b                                            ; $4162: $80
	ccf                                              ; $4163: $3f
	jr nc, jr_06c_4145                               ; $4164: $30 $df

	ldh [$3f], a                                     ; $4166: $e0 $3f
	ldh [$cf], a                                     ; $4168: $e0 $cf
	ldh a, [$36]                                     ; $416a: $f0 $36
	ld sp, hl                                        ; $416c: $f9
	db $fc                                           ; $416d: $fc
	db $e3                                           ; $416e: $e3
	di                                               ; $416f: $f3
	rst GetHLinHL                                          ; $4170: $cf
	inc e                                            ; $4171: $1c
	rra                                              ; $4172: $1f
	ld h, b                                          ; $4173: $60
	ld a, a                                          ; $4174: $7f
	add c                                            ; $4175: $81
	rst $38                                          ; $4176: $ff
	inc a                                            ; $4177: $3c
	jp $1ee3                                         ; $4178: $c3 $e3 $1e


	sbc [hl]                                         ; $417b: $9e
	ld a, [hl]                                       ; $417c: $7e
	jr c, jr_06c_4145                                ; $417d: $38 $c6

	sbc $04                                          ; $417f: $de $04
	scf                                              ; $4181: $37
	add e                                            ; $4182: $83
	inc c                                            ; $4183: $0c
	ld a, a                                          ; $4184: $7f
	inc b                                            ; $4185: $04
	ld a, a                                          ; $4186: $7f
	inc b                                            ; $4187: $04
	xor $05                                          ; $4188: $ee $05
	ld d, $0d                                        ; $418a: $16 $0d
	ld a, [hl-]                                      ; $418c: $3a
	dec c                                            ; $418d: $0d
	ld l, b                                          ; $418e: $68
	rra                                              ; $418f: $1f
	adc e                                            ; $4190: $8b
	ld a, a                                          ; $4191: $7f
	inc c                                            ; $4192: $0c
	rst $38                                          ; $4193: $ff
	jr @+$01                                         ; $4194: $18 $ff

	ld d, c                                          ; $4196: $51
	rst $38                                          ; $4197: $ff
	add c                                            ; $4198: $81
	rst $38                                          ; $4199: $ff
	inc bc                                           ; $419a: $03
	rst $38                                          ; $419b: $ff
	ld b, $ff                                        ; $419c: $06 $ff
	dec c                                            ; $419e: $0d
	ld a, e                                          ; $419f: $7b
	ld [bc], a                                       ; $41a0: $02
	add b                                            ; $41a1: $80
	ld h, $fc                                        ; $41a2: $26 $fc
	ld h, [hl]                                       ; $41a4: $66
	db $fc                                           ; $41a5: $fc
	ld d, [hl]                                       ; $41a6: $56
	db $fc                                           ; $41a7: $fc
	or $9c                                           ; $41a8: $f6 $9c
	cp $8c                                           ; $41aa: $fe $8c
	cp $8c                                           ; $41ac: $fe $8c
	cp a                                             ; $41ae: $bf
	add $7a                                          ; $41af: $c6 $7a
	call nz, $fc6e                                   ; $41b1: $c4 $6e $fc
	di                                               ; $41b4: $f3
	sbc $fd                                          ; $41b5: $de $fd
	sbc e                                            ; $41b7: $9b
	xor e                                            ; $41b8: $ab
	cp c                                             ; $41b9: $b9
	xor e                                            ; $41ba: $ab
	cp c                                             ; $41bb: $b9
	push de                                          ; $41bc: $d5
	cp e                                             ; $41bd: $bb
	xor a                                            ; $41be: $af
	jp $9a57                                         ; $41bf: $c3 $57 $9a


	xor $3b                                          ; $41c2: $ee $3b
	db $fc                                           ; $41c4: $fc
	adc a                                            ; $41c5: $8f
	ld hl, sp+$77                                    ; $41c6: $f8 $77
	cp $80                                           ; $41c8: $fe $80
	ld e, a                                          ; $41ca: $5f
	ld sp, hl                                        ; $41cb: $f9
	ld a, a                                          ; $41cc: $7f
	db $fd                                           ; $41cd: $fd
	ld e, $ff                                        ; $41ce: $1e $ff
	adc h                                            ; $41d0: $8c
	rst $38                                          ; $41d1: $ff
	pop bc                                           ; $41d2: $c1
	rst $38                                          ; $41d3: $ff
	ld a, a                                          ; $41d4: $7f
	rst $38                                          ; $41d5: $ff
	ld a, a                                          ; $41d6: $7f
	jp $c17f                                         ; $41d7: $c3 $7f $c1


	add hl, sp                                       ; $41da: $39
	ldh [rAUD4LEN], a                                ; $41db: $e0 $20
	ldh [$a0], a                                     ; $41dd: $e0 $a0
	ldh [$b8], a                                     ; $41df: $e0 $b8
	ldh [$3c], a                                     ; $41e1: $e0 $3c
	ldh [rPCM34], a                                  ; $41e3: $e0 $77
	ret z                                            ; $41e5: $c8

	ld a, e                                          ; $41e6: $7b
	call nz, $9afa                                   ; $41e7: $c4 $fa $9a
	add l                                            ; $41ea: $85
	ld hl, sp+$07                                    ; $41eb: $f8 $07
	rst $38                                          ; $41ed: $ff
	ld [bc], a                                       ; $41ee: $02
	ld [hl], a                                       ; $41ef: $77
	cp $f7                                           ; $41f0: $fe $f7
	rst SubAFromDE                                          ; $41f2: $df
	ld [hl], b                                       ; $41f3: $70
	sub d                                            ; $41f4: $92
	xor h                                            ; $41f5: $ac
	call c, $07fb                                    ; $41f6: $dc $fb $07
	cp $01                                           ; $41f9: $fe $01
	cp $01                                           ; $41fb: $fe $01
	db $fc                                           ; $41fd: $fc
	inc bc                                           ; $41fe: $03
	ret nz                                           ; $41ff: $c0

	ccf                                              ; $4200: $3f
	db $10                                           ; $4201: $10
	ld a, e                                          ; $4202: $7b
	adc b                                            ; $4203: $88
	sbc [hl]                                         ; $4204: $9e
	ld a, h                                          ; $4205: $7c
	sbc $ff                                          ; $4206: $de $ff
	add b                                            ; $4208: $80
	ld h, c                                          ; $4209: $61
	rst $38                                          ; $420a: $ff
	add b                                            ; $420b: $80
	rst GetHLinHL                                          ; $420c: $cf
	nop                                              ; $420d: $00
	sbc b                                            ; $420e: $98
	nop                                              ; $420f: $00
	rlca                                             ; $4210: $07
	nop                                              ; $4211: $00
	ld l, a                                          ; $4212: $6f
	ld bc, $065f                                     ; $4213: $01 $5f $06
	rst SubAFromDE                                          ; $4216: $df
	ld [$08fc], sp                                   ; $4217: $08 $fc $08
	ld sp, hl                                        ; $421a: $f9
	ld de, $11fb                                     ; $421b: $11 $fb $11
	rst FarCall                                          ; $421e: $f7
	ld hl, $23f7                                     ; $421f: $21 $f7 $23
	rst AddAOntoHL                                          ; $4222: $ef
	ld h, e                                          ; $4223: $63
	rst AddAOntoHL                                          ; $4224: $ef
	rst JumpTable                                          ; $4225: $c7
	db $fd                                           ; $4226: $fd
	rst GetHLinHL                                          ; $4227: $cf
	sbc [hl]                                         ; $4228: $9e
	db $fc                                           ; $4229: $fc
	ldh [$bf], a                                     ; $422a: $e0 $bf
	rst SubAFromDE                                          ; $422c: $df
	add b                                            ; $422d: $80
	sbc d                                            ; $422e: $9a
	ld b, b                                          ; $422f: $40
	ret nz                                           ; $4230: $c0

	ld b, b                                          ; $4231: $40
	ret nz                                           ; $4232: $c0

	and b                                            ; $4233: $a0
	ld a, e                                          ; $4234: $7b
	ld h, d                                          ; $4235: $62
	adc [hl]                                         ; $4236: $8e
	ld d, b                                          ; $4237: $50
	ld [hl], b                                       ; $4238: $70
	ld d, b                                          ; $4239: $50
	ld [hl], b                                       ; $423a: $70
	jr z, jr_06c_4275                                ; $423b: $28 $38

	jr z, jr_06c_4277                                ; $423d: $28 $38

	inc d                                            ; $423f: $14
	inc e                                            ; $4240: $1c
	inc d                                            ; $4241: $14
	inc e                                            ; $4242: $1c
	ld a, [bc]                                       ; $4243: $0a
	ld c, $09                                        ; $4244: $0e $09
	rrca                                             ; $4246: $0f
	dec b                                            ; $4247: $05
	ld a, d                                          ; $4248: $7a
	rra                                              ; $4249: $1f

jr_06c_424a:
	pop af                                           ; $424a: $f1
	rst SubAFromDE                                          ; $424b: $df
	ret nz                                           ; $424c: $c0

	ld a, a                                          ; $424d: $7f
	jr c, @-$76                                      ; $424e: $38 $88

	jr jr_06c_424a                                   ; $4250: $18 $f8

	ld c, $f6                                        ; $4252: $0e $f6
	dec b                                            ; $4254: $05
	ei                                               ; $4255: $fb
	inc bc                                           ; $4256: $03
	db $fc                                           ; $4257: $fc
	ld bc, $00fe                                     ; $4258: $01 $fe $00
	rst $38                                          ; $425b: $ff
	rst $38                                          ; $425c: $ff
	add b                                            ; $425d: $80
	ld a, a                                          ; $425e: $7f
	ret nz                                           ; $425f: $c0

	ccf                                              ; $4260: $3f
	ldh a, [rIF]                                     ; $4261: $f0 $0f
	jr c, @+$09                                      ; $4263: $38 $07

	cp $c3                                           ; $4265: $fe $c3
	ld a, e                                          ; $4267: $7b
	ld d, $8d                                        ; $4268: $16 $8d
	call nz, $8fff                                   ; $426a: $c4 $ff $8f
	rst SubAFromDE                                          ; $426d: $df
	add hl, de                                       ; $426e: $19
	or c                                             ; $426f: $b1
	jr nc, jr_06c_42d2                               ; $4270: $30 $60

	jr nc, jr_06c_42d4                               ; $4272: $30 $60

	ld [hl], b                                       ; $4274: $70

jr_06c_4275:
	ld b, b                                          ; $4275: $40
	ld [hl], b                                       ; $4276: $70

jr_06c_4277:
	ret nz                                           ; $4277: $c0

	ld h, b                                          ; $4278: $60
	ret nz                                           ; $4279: $c0

	ldh [$c0], a                                     ; $427a: $e0 $c0
	ldh [$c1], a                                     ; $427c: $e0 $c1
	sub h                                            ; $427e: $94

Call_06c_427f:
	ld a, [hl]                                       ; $427f: $7e
	inc h                                            ; $4280: $24
	ld e, [hl]                                       ; $4281: $5e
	jr nc, @+$3e                                     ; $4282: $30 $3c

	db $10                                           ; $4284: $10
	inc a                                            ; $4285: $3c
	nop                                              ; $4286: $00
	ld a, h                                          ; $4287: $7c
	nop                                              ; $4288: $00
	ld hl, sp-$12                                    ; $4289: $f8 $ee
	sbc l                                            ; $428b: $9d
	ldh [$80], a                                     ; $428c: $e0 $80
	rst SubAFromBC                                          ; $428e: $e7
	rst SubAFromDE                                          ; $428f: $df
	ret nz                                           ; $4290: $c0

	sub e                                            ; $4291: $93
	or b                                             ; $4292: $b0
	ld [hl], b                                       ; $4293: $70
	db $ec                                           ; $4294: $ec
	inc e                                            ; $4295: $1c
	rst JumpTable                                          ; $4296: $c7
	inc bc                                           ; $4297: $03
	pop hl                                           ; $4298: $e1
	nop                                              ; $4299: $00
	ldh a, [rP1]                                     ; $429a: $f0 $00
	db $fc                                           ; $429c: $fc
	nop                                              ; $429d: $00
	ld a, e                                          ; $429e: $7b
	ld d, l                                          ; $429f: $55
	ld a, a                                          ; $42a0: $7f
	cp $7f                                           ; $42a1: $fe $7f
	ld d, h                                          ; $42a3: $54
	ld a, [hl]                                       ; $42a4: $7e
	ld b, $90                                        ; $42a5: $06 $90
	ldh a, [$9f]                                     ; $42a7: $f0 $9f
	ld hl, sp-$31                                    ; $42a9: $f8 $cf
	db $fc                                           ; $42ab: $fc
	ld l, a                                          ; $42ac: $6f
	ld a, [hl]                                       ; $42ad: $7e
	ld l, l                                          ; $42ae: $6d
	ccf                                              ; $42af: $3f
	ld l, h                                          ; $42b0: $6c
	ccf                                              ; $42b1: $3f
	ld l, [hl]                                       ; $42b2: $6e
	dec sp                                           ; $42b3: $3b
	ccf                                              ; $42b4: $3f
	ld sp, $c1e0                                     ; $42b5: $31 $e0 $c1
	sbc b                                            ; $42b8: $98
	ld a, [hl]                                       ; $42b9: $7e
	rrca                                             ; $42ba: $0f
	ld a, a                                          ; $42bb: $7f
	inc bc                                           ; $42bc: $03
	ld a, [hl]                                       ; $42bd: $7e
	ld bc, $4e63                                     ; $42be: $01 $63 $4e
	xor [hl]                                         ; $42c1: $ae
	sub l                                            ; $42c2: $95
	nop                                              ; $42c3: $00
	ld h, b                                          ; $42c4: $60
	nop                                              ; $42c5: $00
	jr nc, jr_06c_42c8                               ; $42c6: $30 $00

jr_06c_42c8:
	jr nc, jr_06c_42d2                               ; $42c8: $30 $08

	db $10                                           ; $42ca: $10
	inc c                                            ; $42cb: $0c
	ld a, [de]                                       ; $42cc: $1a
	ld a, b                                          ; $42cd: $78
	ldh [rPCM34], a                                  ; $42ce: $e0 $77
	ld a, b                                          ; $42d0: $78
	sub e                                            ; $42d1: $93

jr_06c_42d2:
	add sp, $18                                      ; $42d2: $e8 $18

jr_06c_42d4:
	cp $06                                           ; $42d4: $fe $06
	db $fd                                           ; $42d6: $fd
	inc bc                                           ; $42d7: $03
	ccf                                              ; $42d8: $3f
	ret nz                                           ; $42d9: $c0

	rra                                              ; $42da: $1f
	ldh [rTAC], a                                    ; $42db: $e0 $07
	ld hl, sp+$76                                    ; $42dd: $f8 $76
	jp z, Jump_06c_7373                              ; $42df: $ca $73 $73

	adc [hl]                                         ; $42e2: $8e
	rst $38                                          ; $42e3: $ff
	ret nz                                           ; $42e4: $c0

	rst $38                                          ; $42e5: $ff
	ldh [rIE], a                                     ; $42e6: $e0 $ff
	scf                                              ; $42e8: $37
	ld hl, sp-$41                                    ; $42e9: $f8 $bf
	rst $38                                          ; $42eb: $ff
	rst GetHLinHL                                          ; $42ec: $cf
	ld hl, sp-$61                                    ; $42ed: $f8 $9f
	ldh a, [$9f]                                     ; $42ef: $f0 $9f
	ldh a, [$bf]                                     ; $42f1: $f0 $bf
	ldh [$7b], a                                     ; $42f3: $e0 $7b
	rst AddAOntoHL                                          ; $42f5: $ef
	ld a, a                                          ; $42f6: $7f
	cp $7f                                           ; $42f7: $fe $7f
	ld e, h                                          ; $42f9: $5c
	halt                                             ; $42fa: $76
	xor [hl]                                         ; $42fb: $ae
	sbc l                                            ; $42fc: $9d
	ldh [$bf], a                                     ; $42fd: $e0 $bf
	ld a, e                                          ; $42ff: $7b
	cp $9d                                           ; $4300: $fe $9d
	rst $38                                          ; $4302: $ff
	ld b, b                                          ; $4303: $40
	ld a, e                                          ; $4304: $7b
	cp $6f                                           ; $4305: $fe $6f
	db $d3                                           ; $4307: $d3
	ld a, a                                          ; $4308: $7f
	res 2, d                                         ; $4309: $cb $92
	ld [bc], a                                       ; $430b: $02
	cp $02                                           ; $430c: $fe $02
	db $fc                                           ; $430e: $fc
	inc b                                            ; $430f: $04
	ld hl, sp+$08                                    ; $4310: $f8 $08
	ld hl, sp+$08                                    ; $4312: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $4314: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $4316: $f0 $10
	ld a, c                                          ; $4318: $79
	or e                                             ; $4319: $b3
	ld a, [hl]                                       ; $431a: $7e
	and e                                            ; $431b: $a3
	ld a, d                                          ; $431c: $7a
	ld c, c                                          ; $431d: $49
	ld a, a                                          ; $431e: $7f
	db $fd                                           ; $431f: $fd
	rst SubAFromDE                                          ; $4320: $df
	ret nz                                           ; $4321: $c0

	rst SubAFromDE                                          ; $4322: $df
	add b                                            ; $4323: $80
	rst SubAFromDE                                          ; $4324: $df
	ret nz                                           ; $4325: $c0

	ld a, a                                          ; $4326: $7f
	ldh a, [c]                                       ; $4327: $f2
	sbc b                                            ; $4328: $98
	ld hl, sp+$18                                    ; $4329: $f8 $18
	cp $0e                                           ; $432b: $fe $0e
	rst $38                                          ; $432d: $ff
	inc bc                                           ; $432e: $03
	cp $7b                                           ; $432f: $fe $7b
	cp $9d                                           ; $4331: $fe $9d
	db $fc                                           ; $4333: $fc
	rlca                                             ; $4334: $07
	ld [hl], a                                       ; $4335: $77
	cp $9d                                           ; $4336: $fe $9d
	ld hl, sp+$0f                                    ; $4338: $f8 $0f
	ld [hl], a                                       ; $433a: $77
	cp $9d                                           ; $433b: $fe $9d
	ldh a, [$1f]                                     ; $433d: $f0 $1f
	ld d, [hl]                                       ; $433f: $56
	jr @-$77                                         ; $4340: $18 $87

	ld h, b                                          ; $4342: $60
	ldh [$98], a                                     ; $4343: $e0 $98
	ld a, b                                          ; $4345: $78
	db $e4                                           ; $4346: $e4
	inc e                                            ; $4347: $1c
	ldh a, [c]                                       ; $4348: $f2
	ld c, $f9                                        ; $4349: $0e $f9
	rlca                                             ; $434b: $07
	ld a, c                                          ; $434c: $79
	add a                                            ; $434d: $87
	add hl, de                                       ; $434e: $19
	rst SubAFromBC                                          ; $434f: $e7
	add hl, bc                                       ; $4350: $09
	rst FarCall                                          ; $4351: $f7
	add hl, bc                                       ; $4352: $09
	rst FarCall                                          ; $4353: $f7
	ld bc, $3eff                                     ; $4354: $01 $ff $3e
	jp nz, $827e                                     ; $4357: $c2 $7e $82

	ld [hl], a                                       ; $435a: $77
	and [hl]                                         ; $435b: $a6
	ld l, a                                          ; $435c: $6f
	cp $77                                           ; $435d: $fe $77
	and b                                            ; $435f: $a0
	ld l, a                                          ; $4360: $6f
	sbc [hl]                                         ; $4361: $9e
	ld [hl], e                                       ; $4362: $73
	sbc h                                            ; $4363: $9c
	sbc [hl]                                         ; $4364: $9e
	jr nz, @+$79                                     ; $4365: $20 $77

	sbc h                                            ; $4367: $9c
	db $dd                                           ; $4368: $dd
	add b                                            ; $4369: $80
	ldh [$db], a                                     ; $436a: $e0 $db
	rst SubAFromDE                                          ; $436c: $df
	add b                                            ; $436d: $80
	rst SubAFromDE                                          ; $436e: $df
	ldh [hDisp1_LCDC], a                                     ; $436f: $e0 $8f
	ldh a, [$30]                                     ; $4371: $f0 $30
	db $ec                                           ; $4373: $ec
	inc e                                            ; $4374: $1c
	or $0e                                           ; $4375: $f6 $0e
	ld a, [$fb06]                                    ; $4377: $fa $06 $fb
	rlca                                             ; $437a: $07
	ld sp, hl                                        ; $437b: $f9
	rlca                                             ; $437c: $07
	pop af                                           ; $437d: $f1
	rrca                                             ; $437e: $0f
	pop hl                                           ; $437f: $e1
	rra                                              ; $4380: $1f
	ld [hl+], a                                      ; $4381: $22
	nop                                              ; $4382: $00
	db $dd                                           ; $4383: $dd
	adc b                                            ; $4384: $88
	rst $38                                          ; $4385: $ff
	sbc [hl]                                         ; $4386: $9e
	sbc c                                            ; $4387: $99
	ld a, e                                          ; $4388: $7b
	db $fc                                           ; $4389: $fc
	sbc e                                            ; $438a: $9b
	nop                                              ; $438b: $00
	ld de, $00dd                                     ; $438c: $11 $dd $00
	sbc $11                                          ; $438f: $de $11
	sbc d                                            ; $4391: $9a
	db $dd                                           ; $4392: $dd
	ld de, $9999                                     ; $4393: $11 $99 $99
	ld [hl], a                                       ; $4396: $77
	ld [hl], a                                       ; $4397: $77
	ei                                               ; $4398: $fb
	ld [hl], e                                       ; $4399: $73
	or $77                                           ; $439a: $f6 $77
	ei                                               ; $439c: $fb
	sbc d                                            ; $439d: $9a
	rst $38                                          ; $439e: $ff
	db $dd                                           ; $439f: $dd
	sbc c                                            ; $43a0: $99
	sbc c                                            ; $43a1: $99
	call z, $015a                                    ; $43a2: $cc $5a $01
	add [hl]                                         ; $43a5: $86
	adc a                                            ; $43a6: $8f
	ld hl, sp-$62                                    ; $43a7: $f8 $9e
	ldh a, [$b8]                                     ; $43a9: $f0 $b8

jr_06c_43ab:
	ldh [rSVBK], a                                   ; $43ab: $e0 $70
	ret nz                                           ; $43ad: $c0

	pop hl                                           ; $43ae: $e1
	add e                                            ; $43af: $83
	and $1f                                          ; $43b0: $e6 $1f
	or c                                             ; $43b2: $b1
	jr nc, jr_06c_43b6                               ; $43b3: $30 $01

	rlca                                             ; $43b5: $07

jr_06c_43b6:
	cpl                                              ; $43b6: $2f
	rra                                              ; $43b7: $1f
	ld d, [hl]                                       ; $43b8: $56
	dec sp                                           ; $43b9: $3b
	nop                                              ; $43ba: $00

jr_06c_43bb:
	ld bc, $0107                                     ; $43bb: $01 $07 $01
	inc bc                                           ; $43be: $03
	cp d                                             ; $43bf: $ba
	ld bc, $0000                                     ; $43c0: $01 $00 $00
	nop                                              ; $43c3: $00
	nop                                              ; $43c4: $00
	add b                                            ; $43c5: $80
	ret nz                                           ; $43c6: $c0

	sub c                                            ; $43c7: $91
	add b                                            ; $43c8: $80
	ld [hl], b                                       ; $43c9: $70
	ldh [$d4], a                                     ; $43ca: $e0 $d4
	jr c, jr_06c_43bb                                ; $43cc: $38 $ed

	ld e, $f7                                        ; $43ce: $1e $f7
	rrca                                             ; $43d0: $0f
	ei                                               ; $43d1: $fb
	rlca                                             ; $43d2: $07
	adc l                                            ; $43d3: $8d
	inc bc                                           ; $43d4: $03
	rlca                                             ; $43d5: $07
	cp [hl]                                          ; $43d6: $be
	inc bc                                           ; $43d7: $03
	add c                                            ; $43d8: $81
	add c                                            ; $43d9: $81
	call c, $8680                                    ; $43da: $dc $80 $86
	ldh [$c0], a                                     ; $43dd: $e0 $c0
	ldh [rLCDC], a                                   ; $43df: $e0 $40
	jr nc, @+$22                                     ; $43e1: $30 $20

	ld h, b                                          ; $43e3: $60
	ldh a, [$b8]                                     ; $43e4: $f0 $b8
	ret nz                                           ; $43e6: $c0

	ld hl, sp+$00                                    ; $43e7: $f8 $00
	jr nc, jr_06c_43ab                               ; $43e9: $30 $c0

	ret nz                                           ; $43eb: $c0

	ldh [rSB], a                                     ; $43ec: $e0 $01
	and b                                            ; $43ee: $a0
	pop hl                                           ; $43ef: $e1

jr_06c_43f0:
	ret nz                                           ; $43f0: $c0

	ld b, c                                          ; $43f1: $41
	ret nz                                           ; $43f2: $c0

	pop hl                                           ; $43f3: $e1
	add b                                            ; $43f4: $80
	pop bc                                           ; $43f5: $c1
	cp l                                             ; $43f6: $bd
	add b                                            ; $43f7: $80
	nop                                              ; $43f8: $00
	ld bc, $803f                                     ; $43f9: $01 $3f $80
	ld sp, $207f                                     ; $43fc: $31 $7f $20
	cpl                                              ; $43ff: $2f
	ld [hl], b                                       ; $4400: $70
	ld d, a                                          ; $4401: $57
	jr c, jr_06c_43f0                                ; $4402: $38 $ec

	rra                                              ; $4404: $1f
	ei                                               ; $4405: $fb
	rlca                                             ; $4406: $07
	or $39                                           ; $4407: $f6 $39
	db $fd                                           ; $4409: $fd
	ld a, a                                          ; $440a: $7f
	rst SubAFromDE                                          ; $440b: $df
	dec [hl]                                         ; $440c: $35
	ret                                              ; $440d: $c9


	rra                                              ; $440e: $1f
	sub a                                            ; $440f: $97
	dec de                                           ; $4410: $1b
	rst $38                                          ; $4411: $ff
	inc bc                                           ; $4412: $03
	rst $38                                          ; $4413: $ff
	ld [bc], a                                       ; $4414: $02
	ld a, a                                          ; $4415: $7f
	add d                                            ; $4416: $82
	ld a, e                                          ; $4417: $7b
	call nz, $84ff                                   ; $4418: $c4 $ff $84
	ld e, e                                          ; $441b: $5b
	add b                                            ; $441c: $80
	sub e                                            ; $441d: $93
	rrca                                             ; $441e: $0f
	sub c                                            ; $441f: $91
	inc a                                            ; $4420: $3c
	ld [bc], a                                       ; $4421: $02
	ld bc, $0f37                                     ; $4422: $01 $37 $0f
	ld e, b                                          ; $4425: $58
	dec a                                            ; $4426: $3d
	ld bc, $0601                                     ; $4427: $01 $01 $06
	ld h, e                                          ; $442a: $63
	add b                                            ; $442b: $80
	ld d, a                                          ; $442c: $57
	and b                                            ; $442d: $a0
	sbc c                                            ; $442e: $99
	ldh a, [rP1]                                     ; $442f: $f0 $00
	ret nz                                           ; $4431: $c0

	ldh [$a1], a                                     ; $4432: $e0 $a1
	ldh [rPCM34], a                                  ; $4434: $e0 $77
	and b                                            ; $4436: $a0
	sbc [hl]                                         ; $4437: $9e
	ld h, c                                          ; $4438: $61
	ld b, e                                          ; $4439: $43
	and b                                            ; $443a: $a0
	sbc [hl]                                         ; $443b: $9e
	jp hl                                            ; $443c: $e9


	ld a, e                                          ; $443d: $7b
	ld h, h                                          ; $443e: $64
	sbc c                                            ; $443f: $99
	db $fc                                           ; $4440: $fc
	inc bc                                           ; $4441: $03
	or a                                             ; $4442: $b7
	ld a, c                                          ; $4443: $79
	db $dd                                           ; $4444: $dd
	ccf                                              ; $4445: $3f
	cpl                                              ; $4446: $2f
	and b                                            ; $4447: $a0
	sbc l                                            ; $4448: $9d
	ldh [hLCDCIntHandlerIdx], a                                     ; $4449: $e0 $81
	ld a, e                                          ; $444b: $7b
	and b                                            ; $444c: $a0
	sbc [hl]                                         ; $444d: $9e
	ld a, $77                                        ; $444e: $3e $77
	xor h                                            ; $4450: $ac
	sbc e                                            ; $4451: $9b
	ld d, [hl]                                       ; $4452: $56
	ccf                                              ; $4453: $3f
	add hl, bc                                       ; $4454: $09
	rlca                                             ; $4455: $07
	ld b, a                                          ; $4456: $47
	and b                                            ; $4457: $a0
	sbc e                                            ; $4458: $9b
	jr nz, jr_06c_44cb                               ; $4459: $20 $70

	ret c                                            ; $445b: $d8

	ldh [rPCM34], a                                  ; $445c: $e0 $77
	and b                                            ; $445e: $a0
	sbc b                                            ; $445f: $98
	ldh [rP1], a                                     ; $4460: $e0 $00
	ld hl, $61c0                                     ; $4462: $21 $c0 $61
	ldh [hLCDCIntHandlerIdx], a                                     ; $4465: $e0 $81
	ld c, e                                          ; $4467: $4b
	and b                                            ; $4468: $a0
	sbc d                                            ; $4469: $9a
	rra                                              ; $446a: $1f
	ld h, b                                          ; $446b: $60
	cpl                                              ; $446c: $2f
	ld [hl], b                                       ; $446d: $70
	ld sp, hl                                        ; $446e: $f9
	ld [hl], e                                       ; $446f: $73
	and b                                            ; $4470: $a0
	sub a                                            ; $4471: $97
	rst $38                                          ; $4472: $ff
	ld bc, $7fcd                                     ; $4473: $01 $cd $7f
	cp c                                             ; $4476: $b9
	ld a, a                                          ; $4477: $7f
	add a                                            ; $4478: $87
	dec sp                                           ; $4479: $3b
	dec sp                                           ; $447a: $3b
	and b                                            ; $447b: $a0
	sbc e                                            ; $447c: $9b
	add b                                            ; $447d: $80

jr_06c_447e:
	db $e3                                           ; $447e: $e3
	rlca                                             ; $447f: $07
	adc l                                            ; $4480: $8d
	ld l, a                                          ; $4481: $6f
	and b                                            ; $4482: $a0
	sbc h                                            ; $4483: $9c

Call_06c_4484:
	add hl, sp                                       ; $4484: $39
	inc bc                                           ; $4485: $03
	rrca                                             ; $4486: $0f
	scf                                              ; $4487: $37
	and b                                            ; $4488: $a0
	sbc l                                            ; $4489: $9d
	ld a, b                                          ; $448a: $78
	add b                                            ; $448b: $80
	ld [hl], a                                       ; $448c: $77
	and b                                            ; $448d: $a0
	sbc h                                            ; $448e: $9c
	pop hl                                           ; $448f: $e1
	nop                                              ; $4490: $00
	ld b, c                                          ; $4491: $41
	inc sp                                           ; $4492: $33
	and b                                            ; $4493: $a0
	sub l                                            ; $4494: $95
	rst SubAFromHL                                          ; $4495: $d7
	jr c, jr_06c_447e                                ; $4496: $38 $e6

	rra                                              ; $4498: $1f
	ld sp, hl                                        ; $4499: $f9
	rlca                                             ; $449a: $07
	rst $38                                          ; $449b: $ff
	ld bc, $61df                                     ; $449c: $01 $df $61
	ld c, a                                          ; $449f: $4f
	and b                                            ; $44a0: $a0
	ld a, a                                          ; $44a1: $7f
	sbc $9a                                          ; $44a2: $de $9a
	ld [bc], a                                       ; $44a4: $02
	ld b, $00                                        ; $44a5: $06 $00
	ld bc, $bd01                                     ; $44a7: $01 $01 $bd
	inc bc                                           ; $44aa: $03
	inc bc                                           ; $44ab: $03
	inc bc                                           ; $44ac: $03
	ld h, e                                          ; $44ad: $63
	add b                                            ; $44ae: $80
	add b                                            ; $44af: $80
	rst AddAOntoHL                                          ; $44b0: $ef
	pop af                                           ; $44b1: $f1
	cp $ff                                           ; $44b2: $fe $ff
	ld [hl], a                                       ; $44b4: $77
	rst $38                                          ; $44b5: $ff
	cp c                                             ; $44b6: $b9
	ld a, a                                          ; $44b7: $7f
	cp $3f                                           ; $44b8: $fe $3f
	ei                                               ; $44ba: $fb

Call_06c_44bb:
	daa                                              ; $44bb: $27
	ei                                               ; $44bc: $fb
	ld h, $fc                                        ; $44bd: $26 $fc
	ld h, $ff                                        ; $44bf: $26 $ff
	inc b                                            ; $44c1: $04
	rst $38                                          ; $44c2: $ff
	adc b                                            ; $44c3: $88
	rst $38                                          ; $44c4: $ff
	ld [$1cf7], sp                                   ; $44c5: $08 $f7 $1c
	db $d3                                           ; $44c8: $d3
	ld a, $a3                                        ; $44c9: $3e $a3

jr_06c_44cb:
	ld a, [hl]                                       ; $44cb: $7e
	pop af                                           ; $44cc: $f1
	ld a, [hl]                                       ; $44cd: $7e
	add a                                            ; $44ce: $87
	cp c                                             ; $44cf: $b9
	rst GetHLinHL                                          ; $44d0: $cf
	ld a, l                                          ; $44d1: $7d
	add a                                            ; $44d2: $87
	db $fd                                           ; $44d3: $fd
	rlca                                             ; $44d4: $07
	rst $38                                          ; $44d5: $ff
	inc bc                                           ; $44d6: $03
	cp a                                             ; $44d7: $bf
	jp $f16f                                         ; $44d8: $c3 $6f $f1


	sbc a                                            ; $44db: $9f
	ld sp, hl                                        ; $44dc: $f9
	rst SubAFromBC                                          ; $44dd: $e7
	ld a, h                                          ; $44de: $7c
	ei                                               ; $44df: $fb
	ld e, $01                                        ; $44e0: $1e $01
	nop                                              ; $44e2: $00
	inc b                                            ; $44e3: $04
	ld b, $00                                        ; $44e4: $06 $00
	inc bc                                           ; $44e6: $03
	rra                                              ; $44e7: $1f
	ret nz                                           ; $44e8: $c0

	ld [hl], a                                       ; $44e9: $77
	ldh [$9b], a                                     ; $44ea: $e0 $9b
	ld [bc], a                                       ; $44ec: $02
	rlca                                             ; $44ed: $07
	ld bc, $6f02                                     ; $44ee: $01 $02 $6f
	sbc $2f                                          ; $44f1: $de $2f
	ldh [$df], a                                     ; $44f3: $e0 $df
	rlca                                             ; $44f5: $07
	sbc l                                            ; $44f6: $9d
	inc bc                                           ; $44f7: $03
	ld b, $77                                        ; $44f8: $06 $77
	jr nc, jr_06c_4533                               ; $44fa: $30 $37

	ldh [rBCPS], a                                   ; $44fc: $e0 $68
	ld bc, $8f92                                     ; $44fe: $01 $92 $8f
	ld hl, sp-$62                                    ; $4501: $f8 $9e
	ldh a, [$b8]                                     ; $4503: $f0 $b8
	ldh [$78], a                                     ; $4505: $e0 $78
	jp $9fe3                                         ; $4507: $c3 $e3 $9f


	rst SubAFromDE                                          ; $450a: $df
	inc a                                            ; $450b: $3c
	add c                                            ; $450c: $81
	cp [hl]                                          ; $450d: $be
	ld bc, $6f00                                     ; $450e: $01 $00 $6f
	sbc d                                            ; $4511: $9a
	jr jr_06c_4527                                   ; $4512: $18 $13

	rrca                                             ; $4514: $0f
	inc b                                            ; $4515: $04
	inc bc                                           ; $4516: $03
	push af                                          ; $4517: $f5
	adc [hl]                                         ; $4518: $8e
	add b                                            ; $4519: $80
	nop                                              ; $451a: $00
	ret nz                                           ; $451b: $c0

	add b                                            ; $451c: $80
	ld [hl], b                                       ; $451d: $70
	ldh [$d4], a                                     ; $451e: $e0 $d4
	jr c, @-$11                                      ; $4520: $38 $ed

	ld e, $f7                                        ; $4522: $1e $f7

jr_06c_4524:
	rrca                                             ; $4524: $0f
	ei                                               ; $4525: $fb
	rlca                                             ; $4526: $07

jr_06c_4527:
	adc l                                            ; $4527: $8d
	inc bc                                           ; $4528: $03
	rlca                                             ; $4529: $07
	cp [hl]                                          ; $452a: $be
	inc bc                                           ; $452b: $03
	add c                                            ; $452c: $81
	add c                                            ; $452d: $81

jr_06c_452e:
	call c, $9280                                    ; $452e: $dc $80 $92
	ldh [$c0], a                                     ; $4531: $e0 $c0

jr_06c_4533:
	ldh [rLCDC], a                                   ; $4533: $e0 $40
	jr nc, jr_06c_4557                               ; $4535: $30 $20

	db $10                                           ; $4537: $10
	add b                                            ; $4538: $80
	ret nz                                           ; $4539: $c0

	ldh a, [$f0]                                     ; $453a: $f0 $f0
	jr c, jr_06c_452e                                ; $453c: $38 $f0

	cp [hl]                                          ; $453e: $be
	ldh [$e1], a                                     ; $453f: $e0 $e1
	ld b, c                                          ; $4541: $41
	sbc e                                            ; $4542: $9b
	ldh [hLCDCIntHandlerIdx], a                                     ; $4543: $e0 $81
	ret nz                                           ; $4545: $c0

	ld bc, $01bc                                     ; $4546: $01 $bc $01
	nop                                              ; $4549: $00
	nop                                              ; $454a: $00
	ld bc, $803f                                     ; $454b: $01 $3f $80
	ld sp, $207f                                     ; $454e: $31 $7f $20
	ld a, a                                          ; $4551: $7f
	nop                                              ; $4552: $00
	ld l, l                                          ; $4553: $6d
	ld e, $b2                                        ; $4554: $1e $b2
	ld a, a                                          ; $4556: $7f

jr_06c_4557:
	sbc a                                            ; $4557: $9f
	ld h, b                                          ; $4558: $60
	cp $01                                           ; $4559: $fe $01
	rst $38                                          ; $455b: $ff
	ld bc, $65db                                     ; $455c: $01 $db $65
	cp c                                             ; $455f: $b9
	ld a, a                                          ; $4560: $7f
	add a                                            ; $4561: $87
	dec sp                                           ; $4562: $3b
	rst $38                                          ; $4563: $ff
	inc bc                                           ; $4564: $03
	rst $38                                          ; $4565: $ff
	ld [bc], a                                       ; $4566: $02
	ld a, a                                          ; $4567: $7f
	add d                                            ; $4568: $82
	ld a, e                                          ; $4569: $7b
	call nz, $84ff                                   ; $456a: $c4 $ff $84
	ld l, e                                          ; $456d: $6b
	add b                                            ; $456e: $80
	sbc d                                            ; $456f: $9a
	rst JumpTable                                          ; $4570: $c7
	rst SubAFromBC                                          ; $4571: $e7
	sbc a                                            ; $4572: $9f
	rst SubAFromDE                                          ; $4573: $df
	jr c, jr_06c_45e5                                ; $4574: $38 $6f

	add b                                            ; $4576: $80
	sbc h                                            ; $4577: $9c
	ld e, d                                          ; $4578: $5a
	ccf                                              ; $4579: $3f
	rla                                              ; $457a: $17
	ld e, e                                          ; $457b: $5b
	add b                                            ; $457c: $80
	ld l, e                                          ; $457d: $6b
	and b                                            ; $457e: $a0
	rst SubAFromDE                                          ; $457f: $df
	ret nz                                           ; $4580: $c0

	rst SubAFromDE                                          ; $4581: $df
	ldh a, [$9e]                                     ; $4582: $f0 $9e
	jr @+$71                                         ; $4584: $18 $6f

	and b                                            ; $4586: $a0
	sbc e                                            ; $4587: $9b
	pop bc                                           ; $4588: $c1
	ldh [rSB], a                                     ; $4589: $e0 $01
	add b                                            ; $458b: $80
	ld b, a                                          ; $458c: $47
	and b                                            ; $458d: $a0
	sbc h                                            ; $458e: $9c
	ld l, [hl]                                       ; $458f: $6e
	rra                                              ; $4590: $1f
	or b                                             ; $4591: $b0
	ld l, e                                          ; $4592: $6b
	and b                                            ; $4593: $a0
	sbc e                                            ; $4594: $9b
	push hl                                          ; $4595: $e5
	ld a, a                                          ; $4596: $7f
	cp l                                             ; $4597: $bd
	ld a, e                                          ; $4598: $7b
	ccf                                              ; $4599: $3f
	and b                                            ; $459a: $a0
	adc l                                            ; $459b: $8d
	ld a, e                                          ; $459c: $7b
	rst JumpTable                                          ; $459d: $c7
	ld hl, sp-$61                                    ; $459e: $f8 $9f
	rst GetHLinHL                                          ; $45a0: $cf
	jr nc, jr_06c_4524                               ; $45a1: $30 $81

	nop                                              ; $45a3: $00
	ld [bc], a                                       ; $45a4: $02
	ld bc, $0f37                                     ; $45a5: $01 $37 $0f
	ld e, e                                          ; $45a8: $5b
	dec a                                            ; $45a9: $3d
	rra                                              ; $45aa: $1f
	rrca                                             ; $45ab: $0f
	rlca                                             ; $45ac: $07
	ld b, $4b                                        ; $45ad: $06 $4b
	and b                                            ; $45af: $a0
	rst SubAFromDE                                          ; $45b0: $df
	ldh [$9d], a                                     ; $45b1: $e0 $9d
	ldh a, [$e0]                                     ; $45b3: $f0 $e0
	ld a, e                                          ; $45b5: $7b
	and b                                            ; $45b6: $a0
	sbc e                                            ; $45b7: $9b
	ld b, b                                          ; $45b8: $40
	ldh [hLCDCIntHandlerIdx], a                                     ; $45b9: $e0 $81

jr_06c_45bb:
	ldh [rPCM34], a                                  ; $45bb: $e0 $77
	and h                                            ; $45bd: $a4
	ld c, a                                          ; $45be: $4f
	and b                                            ; $45bf: $a0
	sbc c                                            ; $45c0: $99
	ld a, b                                          ; $45c1: $78
	rlca                                             ; $45c2: $07
	ld e, [hl]                                       ; $45c3: $5e
	ccf                                              ; $45c4: $3f
	and a                                            ; $45c5: $a7
	ld a, b                                          ; $45c6: $78
	ld [hl], a                                       ; $45c7: $77
	and b                                            ; $45c8: $a0
	sub a                                            ; $45c9: $97
	or e                                             ; $45ca: $b3
	ld a, l                                          ; $45cb: $7d
	db $dd                                           ; $45cc: $dd
	ld a, a                                          ; $45cd: $7f
	or l                                             ; $45ce: $b5
	ld a, e                                          ; $45cf: $7b
	cp a                                             ; $45d0: $bf
	inc sp                                           ; $45d1: $33
	ld c, e                                          ; $45d2: $4b
	and b                                            ; $45d3: $a0
	sbc d                                            ; $45d4: $9a
	pop hl                                           ; $45d5: $e1
	ld [hl], e                                       ; $45d6: $73
	rst GetHLinHL                                          ; $45d7: $cf
	db $fd                                           ; $45d8: $fd
	sbc [hl]                                         ; $45d9: $9e
	ld a, e                                          ; $45da: $7b
	and b                                            ; $45db: $a0
	rst SubAFromDE                                          ; $45dc: $df
	inc bc                                           ; $45dd: $03
	sbc c                                            ; $45de: $99
	rrca                                             ; $45df: $0f
	dec l                                            ; $45e0: $2d
	dec e                                            ; $45e1: $1d
	ld e, a                                          ; $45e2: $5f
	ccf                                              ; $45e3: $3f
	add hl, de                                       ; $45e4: $19

jr_06c_45e5:
	ld b, a                                          ; $45e5: $47
	and b                                            ; $45e6: $a0
	sub d                                            ; $45e7: $92
	and b                                            ; $45e8: $a0
	ret nc                                           ; $45e9: $d0

	ldh [$b0], a                                     ; $45ea: $e0 $b0
	ld a, b                                          ; $45ec: $78

Call_06c_45ed:
	ld hl, sp+$00                                    ; $45ed: $f8 $00
	ld [hl], b                                       ; $45ef: $70
	add b                                            ; $45f0: $80
	ret nz                                           ; $45f1: $c0

	ldh [rSTAT], a                                   ; $45f2: $e0 $41
	jr nz, jr_06c_4635                               ; $45f4: $20 $3f

	and b                                            ; $45f6: $a0
	sub b                                            ; $45f7: $90
	ld b, b                                          ; $45f8: $40
	ccf                                              ; $45f9: $3f
	ld a, $7f                                        ; $45fa: $3e $7f
	rst $38                                          ; $45fc: $ff
	ld b, b                                          ; $45fd: $40
	rst JumpTable                                          ; $45fe: $c7
	jr c, jr_06c_45bb                                ; $45ff: $38 $ba

	ld a, l                                          ; $4601: $7d
	push af                                          ; $4602: $f5
	ld e, a                                          ; $4603: $5f
	ei                                               ; $4604: $fb
	ld [hl], l                                       ; $4605: $75
	push de                                          ; $4606: $d5
	ld d, e                                          ; $4607: $53
	and b                                            ; $4608: $a0
	ld a, a                                          ; $4609: $7f
	sbc $9a                                          ; $460a: $de $9a
	inc c                                            ; $460c: $0c
	dec b                                            ; $460d: $05
	nop                                              ; $460e: $00
	inc bc                                           ; $460f: $03
	ld bc, $03bd                                     ; $4610: $01 $bd $03
	inc bc                                           ; $4613: $03
	inc bc                                           ; $4614: $03
	ld h, e                                          ; $4615: $63
	add b                                            ; $4616: $80
	add b                                            ; $4617: $80
	rst AddAOntoHL                                          ; $4618: $ef
	pop af                                           ; $4619: $f1
	cp $ff                                           ; $461a: $fe $ff
	ld [hl], a                                       ; $461c: $77
	rst $38                                          ; $461d: $ff
	cp c                                             ; $461e: $b9
	ld a, a                                          ; $461f: $7f
	cp $3f                                           ; $4620: $fe $3f
	ei                                               ; $4622: $fb
	daa                                              ; $4623: $27
	ei                                               ; $4624: $fb
	ld h, $fc                                        ; $4625: $26 $fc
	ld h, $ff                                        ; $4627: $26 $ff
	inc b                                            ; $4629: $04
	rst $38                                          ; $462a: $ff
	adc b                                            ; $462b: $88
	rst $38                                          ; $462c: $ff
	ld [$1cf7], sp                                   ; $462d: $08 $f7 $1c
	db $d3                                           ; $4630: $d3
	ld a, $a3                                        ; $4631: $3e $a3
	ld a, [hl]                                       ; $4633: $7e
	pop af                                           ; $4634: $f1

jr_06c_4635:
	ld a, [hl]                                       ; $4635: $7e
	add a                                            ; $4636: $87
	cp c                                             ; $4637: $b9
	rst GetHLinHL                                          ; $4638: $cf
	ld a, l                                          ; $4639: $7d
	add a                                            ; $463a: $87
	db $fd                                           ; $463b: $fd
	rlca                                             ; $463c: $07
	rst $38                                          ; $463d: $ff
	inc bc                                           ; $463e: $03
	cp a                                             ; $463f: $bf
	jp $f16f                                         ; $4640: $c3 $6f $f1


	sbc a                                            ; $4643: $9f
	ld sp, hl                                        ; $4644: $f9
	rst SubAFromBC                                          ; $4645: $e7
	ld a, h                                          ; $4646: $7c
	ei                                               ; $4647: $fb
	ld e, $01                                        ; $4648: $1e $01
	nop                                              ; $464a: $00
	inc d                                            ; $464b: $14
	dec c                                            ; $464c: $0d
	inc bc                                           ; $464d: $03
	rlca                                             ; $464e: $07
	rra                                              ; $464f: $1f
	ret nz                                           ; $4650: $c0

	ld a, a                                          ; $4651: $7f
	and $99                                          ; $4652: $e6 $99
	inc e                                            ; $4654: $1c
	dec c                                            ; $4655: $0d
	dec bc                                           ; $4656: $0b
	rlca                                             ; $4657: $07
	ld bc, $6f02                                     ; $4658: $01 $02 $6f
	sbc $2f                                          ; $465b: $de $2f
	ldh [$9b], a                                     ; $465d: $e0 $9b
	rlca                                             ; $465f: $07
	rrca                                             ; $4660: $0f
	inc bc                                           ; $4661: $03
	ld b, $27                                        ; $4662: $06 $27
	ldh [rOBP1], a                                   ; $4664: $e0 $49
	ld bc, $8f87                                     ; $4666: $01 $87 $8f
	ld hl, sp-$62                                    ; $4669: $f8 $9e
	ldh a, [$b8]                                     ; $466b: $f0 $b8
	ldh [rSVBK], a                                   ; $466d: $e0 $70
	rst GetHLinHL                                          ; $466f: $cf
	rst SubAFromDE                                          ; $4670: $df
	cp a                                             ; $4671: $bf
	jp $8130                                         ; $4672: $c3 $30 $81


	nop                                              ; $4675: $00
	inc bc                                           ; $4676: $03
	rlca                                             ; $4677: $07

jr_06c_4678:
	dec l                                            ; $4678: $2d
	dec e                                            ; $4679: $1d
	ld e, a                                          ; $467a: $5f
	ccf                                              ; $467b: $3f
	add hl, de                                       ; $467c: $19
	rrca                                             ; $467d: $0f
	rlca                                             ; $467e: $07
	ld b, $f5                                        ; $467f: $06 $f5
	adc b                                            ; $4681: $88
	add b                                            ; $4682: $80
	nop                                              ; $4683: $00
	ret nz                                           ; $4684: $c0

	add b                                            ; $4685: $80
	ld [hl], b                                       ; $4686: $70
	ldh [$d4], a                                     ; $4687: $e0 $d4
	jr c, jr_06c_4678                                ; $4689: $38 $ed

	ld e, $f7                                        ; $468b: $1e $f7
	rrca                                             ; $468d: $0f
	ei                                               ; $468e: $fb
	rlca                                             ; $468f: $07
	adc l                                            ; $4690: $8d
	inc bc                                           ; $4691: $03
	rlca                                             ; $4692: $07
	nop                                              ; $4693: $00
	inc bc                                           ; $4694: $03
	nop                                              ; $4695: $00
	add c                                            ; $4696: $81
	nop                                              ; $4697: $00
	add c                                            ; $4698: $81
	call c, $8b80                                    ; $4699: $dc $80 $8b
	ldh [$c0], a                                     ; $469c: $e0 $c0
	ldh [rLCDC], a                                   ; $469e: $e0 $40
	jr nc, jr_06c_46c2                               ; $46a0: $30 $20

	db $10                                           ; $46a2: $10
	ret nz                                           ; $46a3: $c0

	ld hl, sp-$10                                    ; $46a4: $f8 $f0
	ldh [rAUD2LOW], a                                ; $46a6: $e0 $18
	jr nc, @-$3e                                     ; $46a8: $30 $c0

	ret nz                                           ; $46aa: $c0

	ldh [rSTAT], a                                   ; $46ab: $e0 $41
	jr nz, jr_06c_46b0                               ; $46ad: $20 $01

	nop                                              ; $46af: $00

jr_06c_46b0:
	ld l, a                                          ; $46b0: $6f
	cp $fd                                           ; $46b1: $fe $fd
	ld a, a                                          ; $46b3: $7f
	ld a, [$3f80]                                    ; $46b4: $fa $80 $3f
	ld sp, $207f                                     ; $46b7: $31 $7f $20
	ld a, b                                          ; $46ba: $78
	rlca                                             ; $46bb: $07
	ld e, [hl]                                       ; $46bc: $5e
	ccf                                              ; $46bd: $3f
	xor a                                            ; $46be: $af
	ld [hl], b                                       ; $46bf: $70
	rst $38                                          ; $46c0: $ff
	ld b, b                                          ; $46c1: $40

jr_06c_46c2:
	or $39                                           ; $46c2: $f6 $39
	db $fd                                           ; $46c4: $fd
	ld e, a                                          ; $46c5: $5f
	ei                                               ; $46c6: $fb
	ld [hl], l                                       ; $46c7: $75
	push de                                          ; $46c8: $d5
	ld a, e                                          ; $46c9: $7b
	cp a                                             ; $46ca: $bf
	inc sp                                           ; $46cb: $33
	rst $38                                          ; $46cc: $ff
	inc bc                                           ; $46cd: $03
	rst $38                                          ; $46ce: $ff
	ld [bc], a                                       ; $46cf: $02
	ld a, a                                          ; $46d0: $7f
	add d                                            ; $46d1: $82
	ld a, e                                          ; $46d2: $7b
	call nz, $9eff                                   ; $46d3: $c4 $ff $9e
	add h                                            ; $46d6: $84
	ld l, a                                          ; $46d7: $6f
	add b                                            ; $46d8: $80
	sub b                                            ; $46d9: $90
	ld a, b                                          ; $46da: $78
	jp $9fe3                                         ; $46db: $c3 $e3 $9f


	db $db                                           ; $46de: $db
	inc a                                            ; $46df: $3c
	add c                                            ; $46e0: $81
	nop                                              ; $46e1: $00
	ld [bc], a                                       ; $46e2: $02
	ld bc, $0f37                                     ; $46e3: $01 $37 $0f
	ld e, e                                          ; $46e6: $5b
	dec a                                            ; $46e7: $3d
	rra                                              ; $46e8: $1f
	ld e, e                                          ; $46e9: $5b
	add b                                            ; $46ea: $80
	ld d, a                                          ; $46eb: $57
	and b                                            ; $46ec: $a0
	sbc c                                            ; $46ed: $99
	ldh a, [rP1]                                     ; $46ee: $f0 $00
	ld b, b                                          ; $46f0: $40
	ldh [hLCDCIntHandlerIdx], a                                     ; $46f1: $e0 $81
	ldh [$3f], a                                     ; $46f3: $e0 $3f
	and b                                            ; $46f5: $a0
	sub b                                            ; $46f6: $90
	ld a, a                                          ; $46f7: $7f
	nop                                              ; $46f8: $00
	ld e, b                                          ; $46f9: $58
	ccf                                              ; $46fa: $3f
	and [hl]                                         ; $46fb: $a6
	ld a, a                                          ; $46fc: $7f
	sbc a                                            ; $46fd: $9f
	ld h, b                                          ; $46fe: $60
	cp $01                                           ; $46ff: $fe $01
	or e                                             ; $4701: $b3
	ld a, l                                          ; $4702: $7d
	db $dd                                           ; $4703: $dd
	ld a, a                                          ; $4704: $7f
	or l                                             ; $4705: $b5
	dec hl                                           ; $4706: $2b
	and b                                            ; $4707: $a0
	sbc [hl]                                         ; $4708: $9e
	rst SubAFromDE                                          ; $4709: $df
	ld a, e                                          ; $470a: $7b
	and b                                            ; $470b: $a0
	ld [hl], a                                       ; $470c: $77
	jp z, Jump_06c_5a99                              ; $470d: $ca $99 $5a

	ccf                                              ; $4710: $3f
	rla                                              ; $4711: $17
	rrca                                             ; $4712: $0f
	inc b                                            ; $4713: $04
	inc bc                                           ; $4714: $03
	ld c, e                                          ; $4715: $4b
	and b                                            ; $4716: $a0
	sub b                                            ; $4717: $90
	add b                                            ; $4718: $80
	sbc b                                            ; $4719: $98
	ldh [$f0], a                                     ; $471a: $e0 $f0
	ld a, b                                          ; $471c: $78
	ldh a, [rP1]                                     ; $471d: $f0 $00
	ldh [rP1], a                                     ; $471f: $e0 $00
	pop hl                                           ; $4721: $e1
	nop                                              ; $4722: $00
	pop bc                                           ; $4723: $c1
	ldh [rSB], a                                     ; $4724: $e0 $01
	add b                                            ; $4726: $80
	ld b, a                                          ; $4727: $47
	and b                                            ; $4728: $a0
	sbc h                                            ; $4729: $9c
	ld l, h                                          ; $472a: $6c
	rra                                              ; $472b: $1f
	or d                                             ; $472c: $b2
	ld [hl], e                                       ; $472d: $73
	and b                                            ; $472e: $a0
	sub a                                            ; $472f: $97
	rst $38                                          ; $4730: $ff
	ld bc, $7fe5                                     ; $4731: $01 $e5 $7f
	cp l                                             ; $4734: $bd
	ld a, e                                          ; $4735: $7b
	add a                                            ; $4736: $87
	dec sp                                           ; $4737: $3b
	ld b, e                                          ; $4738: $43
	and b                                            ; $4739: $a0
	sbc d                                            ; $473a: $9a
	pop bc                                           ; $473b: $c1
	pop hl                                           ; $473c: $e1
	sbc a                                            ; $473d: $9f
	rst SubAFromDE                                          ; $473e: $df
	ld a, $6f                                        ; $473f: $3e $6f
	and b                                            ; $4741: $a0
	sbc h                                            ; $4742: $9c
	ld l, a                                          ; $4743: $6f
	jr jr_06c_4759                                   ; $4744: $18 $13

	inc de                                           ; $4746: $13
	and b                                            ; $4747: $a0
	sbc e                                            ; $4748: $9b
	ld b, c                                          ; $4749: $41
	ldh [hLCDCIntHandlerIdx], a                                     ; $474a: $e0 $81
	ret nz                                           ; $474c: $c0

	ld b, a                                          ; $474d: $47
	and b                                            ; $474e: $a0
	sbc h                                            ; $474f: $9c
	ld h, c                                          ; $4750: $61
	ld e, $b6                                        ; $4751: $1e $b6
	ld l, e                                          ; $4753: $6b
	and b                                            ; $4754: $a0
	sbc e                                            ; $4755: $9b
	db $db                                           ; $4756: $db
	ld h, l                                          ; $4757: $65
	cp c                                             ; $4758: $b9

jr_06c_4759:
	ld a, a                                          ; $4759: $7f
	ld d, a                                          ; $475a: $57
	and b                                            ; $475b: $a0
	ld a, a                                          ; $475c: $7f
	sbc $9a                                          ; $475d: $de $9a
	inc b                                            ; $475f: $04
	dec b                                            ; $4760: $05
	nop                                              ; $4761: $00
	inc bc                                           ; $4762: $03
	ld bc, $8e7a                                     ; $4763: $01 $7a $8e
	ld [hl], a                                       ; $4766: $77
	cp $80                                           ; $4767: $fe $80
	ld h, e                                          ; $4769: $63
	add b                                            ; $476a: $80
	rst AddAOntoHL                                          ; $476b: $ef
	pop af                                           ; $476c: $f1
	cp $ff                                           ; $476d: $fe $ff
	ld [hl], a                                       ; $476f: $77
	rst $38                                          ; $4770: $ff
	cp c                                             ; $4771: $b9
	ld a, a                                          ; $4772: $7f
	cp $3f                                           ; $4773: $fe $3f
	ei                                               ; $4775: $fb
	daa                                              ; $4776: $27
	ei                                               ; $4777: $fb
	ld h, $fc                                        ; $4778: $26 $fc
	ld h, $ff                                        ; $477a: $26 $ff
	inc b                                            ; $477c: $04
	rst $38                                          ; $477d: $ff
	adc b                                            ; $477e: $88
	rst $38                                          ; $477f: $ff
	ld [$1cf7], sp                                   ; $4780: $08 $f7 $1c
	db $d3                                           ; $4783: $d3
	ld a, $a3                                        ; $4784: $3e $a3
	ld a, [hl]                                       ; $4786: $7e
	pop af                                           ; $4787: $f1
	adc h                                            ; $4788: $8c
	ld a, [hl]                                       ; $4789: $7e
	cp c                                             ; $478a: $b9
	rst GetHLinHL                                          ; $478b: $cf
	ld a, l                                          ; $478c: $7d
	add a                                            ; $478d: $87
	db $fd                                           ; $478e: $fd
	rlca                                             ; $478f: $07
	rst $38                                          ; $4790: $ff
	inc bc                                           ; $4791: $03
	cp a                                             ; $4792: $bf
	jp $f16f                                         ; $4793: $c3 $6f $f1


	sbc a                                            ; $4796: $9f
	ld sp, hl                                        ; $4797: $f9
	rst SubAFromBC                                          ; $4798: $e7
	ld a, h                                          ; $4799: $7c
	ei                                               ; $479a: $fb
	ld e, $77                                        ; $479b: $1e $77
	ret nz                                           ; $479d: $c0

	sbc [hl]                                         ; $479e: $9e
	rlca                                             ; $479f: $07
	dec de                                           ; $47a0: $1b
	ret nz                                           ; $47a1: $c0

	ld [hl], e                                       ; $47a2: $73
	ldh [$7f], a                                     ; $47a3: $e0 $7f
	rst SubAFromDE                                          ; $47a5: $df
	ld a, e                                          ; $47a6: $7b
	halt                                             ; $47a7: $76
	rla                                              ; $47a8: $17
	ldh [$67], a                                     ; $47a9: $e0 $67
	cp [hl]                                          ; $47ab: $be
	ccf                                              ; $47ac: $3f
	ldh [rHDMA5], a                                  ; $47ad: $e0 $55
	ld bc, $8f87                                     ; $47af: $01 $87 $8f
	ld hl, sp-$62                                    ; $47b2: $f8 $9e
	ldh a, [$b8]                                     ; $47b4: $f0 $b8
	ldh [$78], a                                     ; $47b6: $e0 $78
	rst JumpTable                                          ; $47b8: $c7
	rst SubAFromDE                                          ; $47b9: $df
	cp a                                             ; $47ba: $bf
	jp $8138                                         ; $47bb: $c3 $38 $81


	nop                                              ; $47be: $00
	inc bc                                           ; $47bf: $03
	rlca                                             ; $47c0: $07

jr_06c_47c1:
	dec l                                            ; $47c1: $2d
	dec e                                            ; $47c2: $1d
	ld e, a                                          ; $47c3: $5f
	ccf                                              ; $47c4: $3f
	add hl, de                                       ; $47c5: $19
	rrca                                             ; $47c6: $0f
	rlca                                             ; $47c7: $07
	ld b, $f5                                        ; $47c8: $06 $f5
	adc [hl]                                         ; $47ca: $8e
	add b                                            ; $47cb: $80
	nop                                              ; $47cc: $00
	ret nz                                           ; $47cd: $c0

	add b                                            ; $47ce: $80
	ld [hl], b                                       ; $47cf: $70
	ldh [$d4], a                                     ; $47d0: $e0 $d4
	jr c, jr_06c_47c1                                ; $47d2: $38 $ed

	ld e, $f7                                        ; $47d4: $1e $f7
	rrca                                             ; $47d6: $0f
	ei                                               ; $47d7: $fb
	rlca                                             ; $47d8: $07
	adc l                                            ; $47d9: $8d
	inc bc                                           ; $47da: $03
	rlca                                             ; $47db: $07
	cp [hl]                                          ; $47dc: $be
	inc bc                                           ; $47dd: $03
	add c                                            ; $47de: $81
	add c                                            ; $47df: $81
	call c, $8c80                                    ; $47e0: $dc $80 $8c
	ldh [$c0], a                                     ; $47e3: $e0 $c0
	ldh [rLCDC], a                                   ; $47e5: $e0 $40
	jr nc, jr_06c_4809                               ; $47e7: $30 $20

	db $10                                           ; $47e9: $10
	add b                                            ; $47ea: $80
	adc b                                            ; $47eb: $88
	ldh a, [$f0]                                     ; $47ec: $f0 $f0
	ld a, b                                          ; $47ee: $78
	ldh a, [rP1]                                     ; $47ef: $f0 $00
	ret nz                                           ; $47f1: $c0

	ldh [$c1], a                                     ; $47f2: $e0 $c1
	and b                                            ; $47f4: $a0
	ld bc, $01ba                                     ; $47f5: $01 $ba $01
	ld bc, $0001                                     ; $47f8: $01 $01 $00
	nop                                              ; $47fb: $00
	ld bc, $803f                                     ; $47fc: $01 $3f $80
	ld sp, $207f                                     ; $47ff: $31 $7f $20
	ld a, b                                          ; $4802: $78
	rlca                                             ; $4803: $07
	ld b, [hl]                                       ; $4804: $46
	ccf                                              ; $4805: $3f
	cp a                                             ; $4806: $bf
	ld a, b                                          ; $4807: $78
	rst $38                                          ; $4808: $ff

jr_06c_4809:
	ld b, b                                          ; $4809: $40
	or $39                                           ; $480a: $f6 $39
	db $fd                                           ; $480c: $fd
	ld e, a                                          ; $480d: $5f
	di                                               ; $480e: $f3
	ld a, l                                          ; $480f: $7d
	push de                                          ; $4810: $d5
	ld a, e                                          ; $4811: $7b
	cp a                                             ; $4812: $bf
	inc sp                                           ; $4813: $33
	rst $38                                          ; $4814: $ff
	inc bc                                           ; $4815: $03
	rst $38                                          ; $4816: $ff
	ld [bc], a                                       ; $4817: $02
	ld a, a                                          ; $4818: $7f
	add d                                            ; $4819: $82
	ld a, e                                          ; $481a: $7b
	call nz, $84ff                                   ; $481b: $c4 $ff $84
	ld c, a                                          ; $481e: $4f
	add b                                            ; $481f: $80
	sbc b                                            ; $4820: $98
	ld [bc], a                                       ; $4821: $02
	ld bc, $0f37                                     ; $4822: $01 $37 $0f
	ld e, e                                          ; $4825: $5b
	dec a                                            ; $4826: $3d
	rra                                              ; $4827: $1f
	ld e, e                                          ; $4828: $5b
	add b                                            ; $4829: $80
	ld l, e                                          ; $482a: $6b
	and b                                            ; $482b: $a0
	sub h                                            ; $482c: $94
	nop                                              ; $482d: $00
	adc b                                            ; $482e: $88
	ldh a, [rSVBK]                                   ; $482f: $f0 $70
	ld hl, sp-$10                                    ; $4831: $f8 $f0
	nop                                              ; $4833: $00
	ld b, b                                          ; $4834: $40
	ldh [hLCDCIntHandlerIdx], a                                     ; $4835: $e0 $81
	ldh [$37], a                                     ; $4837: $e0 $37
	and b                                            ; $4839: $a0
	sub d                                            ; $483a: $92
	ld h, [hl]                                       ; $483b: $66
	rra                                              ; $483c: $1f
	rst SubAFromDE                                          ; $483d: $df
	jr c, @+$01                                      ; $483e: $38 $ff

	ld h, b                                          ; $4840: $60
	cp [hl]                                          ; $4841: $be
	ld b, c                                          ; $4842: $41
	di                                               ; $4843: $f3
	dec a                                            ; $4844: $3d
	db $dd                                           ; $4845: $dd
	ld a, a                                          ; $4846: $7f
	or l                                             ; $4847: $b5
	inc sp                                           ; $4848: $33
	and b                                            ; $4849: $a0
	sbc h                                            ; $484a: $9c
	rst SubAFromBC                                          ; $484b: $e7
	sbc a                                            ; $484c: $9f
	db $db                                           ; $484d: $db
	ld a, e                                          ; $484e: $7b
	and b                                            ; $484f: $a0
	ld [hl], a                                       ; $4850: $77
	jp z, Jump_06c_5a99                              ; $4851: $ca $99 $5a

	ccf                                              ; $4854: $3f
	rla                                              ; $4855: $17
	rrca                                             ; $4856: $0f
	inc b                                            ; $4857: $04
	inc bc                                           ; $4858: $03
	cpl                                              ; $4859: $2f
	and b                                            ; $485a: $a0
	sbc [hl]                                         ; $485b: $9e
	ldh [$bf], a                                     ; $485c: $e0 $bf
	pop hl                                           ; $485e: $e1
	pop bc                                           ; $485f: $c1
	ld a, a                                          ; $4860: $7f
	sbc [hl]                                         ; $4861: $9e
	sbc [hl]                                         ; $4862: $9e
	add b                                            ; $4863: $80
	ld c, a                                          ; $4864: $4f
	and b                                            ; $4865: $a0
	adc l                                            ; $4866: $8d
	ld a, a                                          ; $4867: $7f
	nop                                              ; $4868: $00
	ld [hl], e                                       ; $4869: $73
	rrca                                             ; $486a: $0f
	call c, $ef3f                                    ; $486b: $dc $3f $ef
	ld [hl], b                                       ; $486e: $70
	cp [hl]                                          ; $486f: $be
	ld b, c                                          ; $4870: $41
	rst $38                                          ; $4871: $ff
	ld bc, $7fe5                                     ; $4872: $01 $e5 $7f
	cp l                                             ; $4875: $bd
	ld a, e                                          ; $4876: $7b
	add a                                            ; $4877: $87
	dec sp                                           ; $4878: $3b
	rla                                              ; $4879: $17
	and b                                            ; $487a: $a0
	sbc l                                            ; $487b: $9d
	ld d, h                                          ; $487c: $54
	jr c, jr_06c_48b6                                ; $487d: $38 $37

	and b                                            ; $487f: $a0
	sbc c                                            ; $4880: $99
	sbc b                                            ; $4881: $98
	ldh [$78], a                                     ; $4882: $e0 $78
	ldh a, [$e0]                                     ; $4884: $f0 $e0
	jr @+$79                                         ; $4886: $18 $77

	and b                                            ; $4888: $a0
	sbc e                                            ; $4889: $9b
	ld b, c                                          ; $488a: $41
	ldh [hLCDCIntHandlerIdx], a                                     ; $488b: $e0 $81
	ret nz                                           ; $488d: $c0

	ld b, a                                          ; $488e: $47
	and b                                            ; $488f: $a0
	sub c                                            ; $4890: $91
	ld a, e                                          ; $4891: $7b
	rlca                                             ; $4892: $07
	db $ec                                           ; $4893: $ec
	rra                                              ; $4894: $1f
	rst FarCall                                          ; $4895: $f7
	ld a, b                                          ; $4896: $78
	sbc [hl]                                         ; $4897: $9e
	ld h, c                                          ; $4898: $61
	rst $38                                          ; $4899: $ff
	ld bc, $67d9                                     ; $489a: $01 $d9 $67
	cp l                                             ; $489d: $bd
	ld a, a                                          ; $489e: $7f
	ld d, a                                          ; $489f: $57
	and b                                            ; $48a0: $a0
	ld a, a                                          ; $48a1: $7f
	sbc $9c                                          ; $48a2: $de $9c
	inc b                                            ; $48a4: $04
	dec b                                            ; $48a5: $05
	ld bc, $03bc                                     ; $48a6: $01 $bc $03
	inc bc                                           ; $48a9: $03
	inc bc                                           ; $48aa: $03
	inc bc                                           ; $48ab: $03
	ld h, e                                          ; $48ac: $63
	add b                                            ; $48ad: $80
	add b                                            ; $48ae: $80
	rst AddAOntoHL                                          ; $48af: $ef
	pop af                                           ; $48b0: $f1
	cp $ff                                           ; $48b1: $fe $ff
	ld [hl], a                                       ; $48b3: $77
	rst $38                                          ; $48b4: $ff
	cp c                                             ; $48b5: $b9

jr_06c_48b6:
	ld a, a                                          ; $48b6: $7f
	cp $3f                                           ; $48b7: $fe $3f
	ei                                               ; $48b9: $fb
	daa                                              ; $48ba: $27
	ei                                               ; $48bb: $fb
	ld h, $fc                                        ; $48bc: $26 $fc
	ld h, $ff                                        ; $48be: $26 $ff
	inc b                                            ; $48c0: $04
	rst $38                                          ; $48c1: $ff
	adc b                                            ; $48c2: $88
	rst $38                                          ; $48c3: $ff
	ld [$1cf7], sp                                   ; $48c4: $08 $f7 $1c
	db $d3                                           ; $48c7: $d3
	ld a, $a3                                        ; $48c8: $3e $a3
	ld a, [hl]                                       ; $48ca: $7e
	pop af                                           ; $48cb: $f1
	ld a, [hl]                                       ; $48cc: $7e
	adc l                                            ; $48cd: $8d
	cp c                                             ; $48ce: $b9
	rst GetHLinHL                                          ; $48cf: $cf
	ld a, l                                          ; $48d0: $7d
	add a                                            ; $48d1: $87
	db $fd                                           ; $48d2: $fd
	rlca                                             ; $48d3: $07
	rst $38                                          ; $48d4: $ff
	inc bc                                           ; $48d5: $03
	cp a                                             ; $48d6: $bf
	jp $f16f                                         ; $48d7: $c3 $6f $f1


	sbc a                                            ; $48da: $9f
	ld sp, hl                                        ; $48db: $f9
	rst SubAFromBC                                          ; $48dc: $e7
	ld a, h                                          ; $48dd: $7c
	ei                                               ; $48de: $fb
	ld e, $77                                        ; $48df: $1e $77
	ret nz                                           ; $48e1: $c0

	sbc l                                            ; $48e2: $9d
	dec b                                            ; $48e3: $05
	inc bc                                           ; $48e4: $03
	ld h, a                                          ; $48e5: $67
	cp [hl]                                          ; $48e6: $be
	ccf                                              ; $48e7: $3f
	ret nz                                           ; $48e8: $c0

	ld a, a                                          ; $48e9: $7f
	and $df                                          ; $48ea: $e6 $df
	dec b                                            ; $48ec: $05
	ld a, [hl]                                       ; $48ed: $7e
	sub c                                            ; $48ee: $91
	sbc l                                            ; $48ef: $9d
	dec b                                            ; $48f0: $05
	ld [bc], a                                       ; $48f1: $02
	ld l, a                                          ; $48f2: $6f
	sbc $37                                          ; $48f3: $de $37
	and b                                            ; $48f5: $a0
	sbc [hl]                                         ; $48f6: $9e
	ld a, a                                          ; $48f7: $7f
	dec bc                                           ; $48f8: $0b
	and b                                            ; $48f9: $a0
	ld [hl], a                                       ; $48fa: $77
	ret nz                                           ; $48fb: $c0

	sbc l                                            ; $48fc: $9d
	dec bc                                           ; $48fd: $0b
	ld b, $03                                        ; $48fe: $06 $03
	ret nz                                           ; $4900: $c0

	dec hl                                           ; $4901: $2b
	ret nz                                           ; $4902: $c0

	ld e, c                                          ; $4903: $59
	ld bc, $8f94                                     ; $4904: $01 $94 $8f
	ld hl, sp-$62                                    ; $4907: $f8 $9e
	ldh a, [$a0]                                     ; $4909: $f0 $a0
	db $fc                                           ; $490b: $fc
	ld a, h                                          ; $490c: $7c
	sbc $ff                                          ; $490d: $de $ff
	add e                                            ; $490f: $83
	db $e3                                           ; $4910: $e3
	cp a                                             ; $4911: $bf
	add c                                            ; $4912: $81
	rlca                                             ; $4913: $07
	sub [hl]                                         ; $4914: $96
	inc bc                                           ; $4915: $03

jr_06c_4916:
	dec l                                            ; $4916: $2d
	dec e                                            ; $4917: $1d
	ld e, a                                          ; $4918: $5f
	ccf                                              ; $4919: $3f
	add hl, de                                       ; $491a: $19
	rrca                                             ; $491b: $0f
	rlca                                             ; $491c: $07

jr_06c_491d:
	ld b, $f5                                        ; $491d: $06 $f5
	adc [hl]                                         ; $491f: $8e
	add b                                            ; $4920: $80
	nop                                              ; $4921: $00
	ret nz                                           ; $4922: $c0

	add b                                            ; $4923: $80
	ld [hl], b                                       ; $4924: $70
	ldh [$d4], a                                     ; $4925: $e0 $d4
	jr c, jr_06c_4916                                ; $4927: $38 $ed

	ld e, $f7                                        ; $4929: $1e $f7
	rrca                                             ; $492b: $0f
	ei                                               ; $492c: $fb
	rlca                                             ; $492d: $07
	adc l                                            ; $492e: $8d
	inc bc                                           ; $492f: $03
	rlca                                             ; $4930: $07
	cp [hl]                                          ; $4931: $be
	inc bc                                           ; $4932: $03
	add c                                            ; $4933: $81
	add c                                            ; $4934: $81
	call c, $9880                                    ; $4935: $dc $80 $98
	ldh [$c0], a                                     ; $4938: $e0 $c0
	ldh [rLCDC], a                                   ; $493a: $e0 $40
	jr nc, jr_06c_495e                               ; $493c: $30 $20

jr_06c_493e:
	db $10                                           ; $493e: $10
	ld a, e                                          ; $493f: $7b
	db $db                                           ; $4940: $db
	ld a, a                                          ; $4941: $7f
	rst FarCall                                          ; $4942: $f7
	sbc b                                            ; $4943: $98
	jr nc, jr_06c_493e                               ; $4944: $30 $f8

	ret nz                                           ; $4946: $c0

	ldh [rSTAT], a                                   ; $4947: $e0 $41
	and b                                            ; $4949: $a0
	ld bc, $01ba                                     ; $494a: $01 $ba $01
	ld bc, $0001                                     ; $494d: $01 $01 $00
	nop                                              ; $4950: $00
	ld bc, $803f                                     ; $4951: $01 $3f $80
	ld sp, $207f                                     ; $4954: $31 $7f $20
	ld a, c                                          ; $4957: $79
	rlca                                             ; $4958: $07
	halt                                             ; $4959: $76
	rrca                                             ; $495a: $0f
	rst SubAFromDE                                          ; $495b: $df
	jr c, jr_06c_491d                                ; $495c: $38 $bf

jr_06c_495e:
	ld h, b                                          ; $495e: $60
	adc $f1                                          ; $495f: $ce $f1
	rst $38                                          ; $4961: $ff
	ld a, a                                          ; $4962: $7f
	rst SubAFromDE                                          ; $4963: $df
	ld [hl], l                                       ; $4964: $75
	db $fd                                           ; $4965: $fd
	ld a, e                                          ; $4966: $7b
	cp a                                             ; $4967: $bf
	inc sp                                           ; $4968: $33
	rst $38                                          ; $4969: $ff
	inc bc                                           ; $496a: $03
	rst $38                                          ; $496b: $ff
	ld [bc], a                                       ; $496c: $02
	ld a, a                                          ; $496d: $7f
	add d                                            ; $496e: $82
	ld a, e                                          ; $496f: $7b
	call nz, $84ff                                   ; $4970: $c4 $ff $84
	ld e, e                                          ; $4973: $5b
	add b                                            ; $4974: $80
	sbc l                                            ; $4975: $9d
	ld bc, $bf81                                     ; $4976: $01 $81 $bf
	ld bc, $9b37                                     ; $4979: $01 $37 $9b
	rrca                                             ; $497c: $0f
	ld e, e                                          ; $497d: $5b
	dec a                                            ; $497e: $3d
	rra                                              ; $497f: $1f
	ld e, e                                          ; $4980: $5b
	add b                                            ; $4981: $80
	ld h, e                                          ; $4982: $63
	and b                                            ; $4983: $a0
	ld a, e                                          ; $4984: $7b
	ld a, h                                          ; $4985: $7c
	ld [hl], a                                       ; $4986: $77

jr_06c_4987:
	sbc [hl]                                         ; $4987: $9e
	sbc e                                            ; $4988: $9b

jr_06c_4989:
	add c                                            ; $4989: $81
	ldh [rSB], a                                     ; $498a: $e0 $01
	add b                                            ; $498c: $80
	ld b, a                                          ; $498d: $47
	and b                                            ; $498e: $a0
	adc [hl]                                         ; $498f: $8e
	ld a, l                                          ; $4990: $7d
	inc bc                                           ; $4991: $03
	halt                                             ; $4992: $76
	rrca                                             ; $4993: $0f
	db $eb                                           ; $4994: $eb
	inc e                                            ; $4995: $1c
	rst SubAFromDE                                          ; $4996: $df
	jr nc, jr_06c_4987                               ; $4997: $30 $ee

	pop af                                           ; $4999: $f1
	ld h, a                                          ; $499a: $67
	ld sp, hl                                        ; $499b: $f9
	db $dd                                           ; $499c: $dd
	ld a, a                                          ; $499d: $7f
	cp l                                             ; $499e: $bd
	ld a, e                                          ; $499f: $7b
	sbc a                                            ; $49a0: $9f
	ld c, e                                          ; $49a1: $4b
	and b                                            ; $49a2: $a0
	sbc c                                            ; $49a3: $99
	cp h                                             ; $49a4: $bc
	ldh [$60], a                                     ; $49a5: $e0 $60
	sbc $fe                                          ; $49a7: $de $fe
	sbc a                                            ; $49a9: $9f
	ld l, a                                          ; $49aa: $6f
	and b                                            ; $49ab: $a0
	sbc b                                            ; $49ac: $98
	ld [bc], a                                       ; $49ad: $02
	ld bc, $3f5b                                     ; $49ae: $01 $5b $3f
	dec d                                            ; $49b1: $15
	rrca                                             ; $49b2: $0f
	ld bc, $a02b                                     ; $49b3: $01 $2b $a0
	sbc c                                            ; $49b6: $99
	or b                                             ; $49b7: $b0
	ld a, b                                          ; $49b8: $78

jr_06c_49b9:
	ld bc, $81e0                                     ; $49b9: $01 $e0 $81
	ret nz                                           ; $49bc: $c0

	ld l, a                                          ; $49bd: $6f
	sbc [hl]                                         ; $49be: $9e
	ld e, a                                          ; $49bf: $5f
	and b                                            ; $49c0: $a0
	sub c                                            ; $49c1: $91
	ld a, [hl]                                       ; $49c2: $7e
	ld bc, $0779                                     ; $49c3: $01 $79 $07
	rst SubAFromBC                                          ; $49c6: $e7
	ld e, $df                                        ; $49c7: $1e $df
	jr c, jr_06c_4989                                ; $49c9: $38 $be

	pop hl                                           ; $49cb: $e1
	ld e, l                                          ; $49cc: $5d
	db $e3                                           ; $49cd: $e3
	rst SubAFromBC                                          ; $49ce: $e7
	ld a, l                                          ; $49cf: $7d
	scf                                              ; $49d0: $37
	and b                                            ; $49d1: $a0
	sbc c                                            ; $49d2: $99
	ld [hl], b                                       ; $49d3: $70
	call z, $9ffc                                    ; $49d4: $cc $fc $9f
	db $e3                                           ; $49d7: $e3
	inc bc                                           ; $49d8: $03
	ld [hl], a                                       ; $49d9: $77
	and b                                            ; $49da: $a0
	rst $38                                          ; $49db: $ff
	sbc h                                            ; $49dc: $9c
	ld d, h                                          ; $49dd: $54
	jr c, @+$19                                      ; $49de: $38 $17

	inc sp                                           ; $49e0: $33
	and b                                            ; $49e1: $a0
	sub l                                            ; $49e2: $95
	ld b, b                                          ; $49e3: $40
	add b                                            ; $49e4: $80
	and b                                            ; $49e5: $a0
	ret nz                                           ; $49e6: $c0

	ldh [$78], a                                     ; $49e7: $e0 $78
	sub c                                            ; $49e9: $91
	ld [hl], b                                       ; $49ea: $70
	ld b, c                                          ; $49eb: $41
	ret nz                                           ; $49ec: $c0

	ld a, e                                          ; $49ed: $7b
	sbc [hl]                                         ; $49ee: $9e
	ld d, e                                          ; $49ef: $53
	and b                                            ; $49f0: $a0
	adc l                                            ; $49f1: $8d
	ld a, a                                          ; $49f2: $7f
	nop                                              ; $49f3: $00
	ld a, c                                          ; $49f4: $79
	rlca                                             ; $49f5: $07
	or $0f                                           ; $49f6: $f6 $0f
	rst GetHLinHL                                          ; $49f8: $cf
	jr c, jr_06c_49b9                                ; $49f9: $38 $be

	ld [hl], c                                       ; $49fb: $71
	ld a, l                                          ; $49fc: $7d
	jp Jump_06c_6fd7                                 ; $49fd: $c3 $d7 $6f


	cp l                                             ; $4a00: $bd
	ld a, a                                          ; $4a01: $7f
	sub a                                            ; $4a02: $97
	dec sp                                           ; $4a03: $3b
	ld e, a                                          ; $4a04: $5f
	and b                                            ; $4a05: $a0
	ld [hl], a                                       ; $4a06: $77
	ld c, [hl]                                       ; $4a07: $4e
	sbc h                                            ; $4a08: $9c
	ld bc, $0304                                     ; $4a09: $01 $04 $03
	cp l                                             ; $4a0c: $bd
	inc bc                                           ; $4a0d: $03
	inc bc                                           ; $4a0e: $03
	inc bc                                           ; $4a0f: $03
	ld h, e                                          ; $4a10: $63
	add b                                            ; $4a11: $80
	add b                                            ; $4a12: $80
	rst AddAOntoHL                                          ; $4a13: $ef
	pop af                                           ; $4a14: $f1
	cp $ff                                           ; $4a15: $fe $ff
	ld [hl], a                                       ; $4a17: $77
	rst $38                                          ; $4a18: $ff
	cp c                                             ; $4a19: $b9
	ld a, a                                          ; $4a1a: $7f
	cp $3f                                           ; $4a1b: $fe $3f
	ei                                               ; $4a1d: $fb
	daa                                              ; $4a1e: $27
	ei                                               ; $4a1f: $fb
	ld h, $fc                                        ; $4a20: $26 $fc
	ld h, $ff                                        ; $4a22: $26 $ff
	inc b                                            ; $4a24: $04
	rst $38                                          ; $4a25: $ff
	adc b                                            ; $4a26: $88
	rst $38                                          ; $4a27: $ff
	ld [$1cf7], sp                                   ; $4a28: $08 $f7 $1c
	db $d3                                           ; $4a2b: $d3
	ld a, $a3                                        ; $4a2c: $3e $a3
	ld a, [hl]                                       ; $4a2e: $7e
	pop af                                           ; $4a2f: $f1
	ld a, [hl]                                       ; $4a30: $7e
	adc l                                            ; $4a31: $8d
	cp c                                             ; $4a32: $b9
	rst GetHLinHL                                          ; $4a33: $cf
	ld a, l                                          ; $4a34: $7d
	add a                                            ; $4a35: $87
	db $fd                                           ; $4a36: $fd
	rlca                                             ; $4a37: $07
	rst $38                                          ; $4a38: $ff
	inc bc                                           ; $4a39: $03
	cp a                                             ; $4a3a: $bf
	jp $f16f                                         ; $4a3b: $c3 $6f $f1


	sbc a                                            ; $4a3e: $9f
	ld sp, hl                                        ; $4a3f: $f9
	rst SubAFromBC                                          ; $4a40: $e7
	ld a, h                                          ; $4a41: $7c
	ei                                               ; $4a42: $fb
	ld e, $77                                        ; $4a43: $1e $77
	ret nz                                           ; $4a45: $c0

	ld a, [hl]                                       ; $4a46: $7e
	ld c, a                                          ; $4a47: $4f
	ld a, a                                          ; $4a48: $7f
	ld a, [$c027]                                    ; $4a49: $fa $27 $c0
	ld [hl], a                                       ; $4a4c: $77
	ldh [$de], a                                     ; $4a4d: $e0 $de
	rlca                                             ; $4a4f: $07
	ld a, a                                          ; $4a50: $7f
	ei                                               ; $4a51: $fb
	inc de                                           ; $4a52: $13
	ldh [$9c], a                                     ; $4a53: $e0 $9c
	ld [bc], a                                       ; $4a55: $02
	rlca                                             ; $4a56: $07
	dec b                                            ; $4a57: $05
	ld [hl], e                                       ; $4a58: $73
	sbc $3f                                          ; $4a59: $de $3f
	ldh [$bc], a                                     ; $4a5b: $e0 $bc
	ld [bc], a                                       ; $4a5d: $02
	db $ed                                           ; $4a5e: $ed
	jp $9b01                                         ; $4a5f: $c3 $01 $9b


	ld [bc], a                                       ; $4a62: $02
	inc bc                                           ; $4a63: $03
	inc bc                                           ; $4a64: $03
	ld [bc], a                                       ; $4a65: $02
	ld [hl], a                                       ; $4a66: $77
	cp $95                                           ; $4a67: $fe $95
	ld b, $05                                        ; $4a69: $06 $05
	rlca                                             ; $4a6b: $07
	dec b                                            ; $4a6c: $05
	dec b                                            ; $4a6d: $05
	rlca                                             ; $4a6e: $07
	add hl, bc                                       ; $4a6f: $09
	rrca                                             ; $4a70: $0f
	ld a, [bc]                                       ; $4a71: $0a
	ld c, $77                                        ; $4a72: $0e $77
	cp $95                                           ; $4a74: $fe $95
	inc b                                            ; $4a76: $04
	inc c                                            ; $4a77: $0c
	inc b                                            ; $4a78: $04
	inc b                                            ; $4a79: $04
	ld b, $06                                        ; $4a7a: $06 $06
	ld [bc], a                                       ; $4a7c: $02
	ld [bc], a                                       ; $4a7d: $02
	ld bc, $e001                                     ; $4a7e: $01 $01 $e0
	rst SubAFromHL                                          ; $4a81: $d7
	rst SubAFromDE                                          ; $4a82: $df
	ld bc, $ba77                                     ; $4a83: $01 $77 $ba
	add b                                            ; $4a86: $80
	dec c                                            ; $4a87: $0d
	ld a, [bc]                                       ; $4a88: $0a
	dec de                                           ; $4a89: $1b
	inc d                                            ; $4a8a: $14
	ld h, $39                                        ; $4a8b: $26 $39
	dec l                                            ; $4a8d: $2d
	ld [hl-], a                                      ; $4a8e: $32
	ld e, e                                          ; $4a8f: $5b
	ld h, h                                          ; $4a90: $64
	ld d, a                                          ; $4a91: $57
	ld l, b                                          ; $4a92: $68
	xor [hl]                                         ; $4a93: $ae
	pop de                                           ; $4a94: $d1
	db $ec                                           ; $4a95: $ec
	sub e                                            ; $4a96: $93
	ret c                                            ; $4a97: $d8

	and a                                            ; $4a98: $a7
	ld e, e                                          ; $4a99: $5b
	and [hl]                                         ; $4a9a: $a6
	dec [hl]                                         ; $4a9b: $35
	adc $3b                                          ; $4a9c: $ce $3b
	call z, $8d7a                                    ; $4a9e: $cc $7a $8d
	ld l, a                                          ; $4aa1: $6f
	sbc c                                            ; $4aa2: $99
	ld [hl], l                                       ; $4aa3: $75
	sbc e                                            ; $4aa4: $9b
	sbc $80                                          ; $4aa5: $de $80
	inc sp                                           ; $4aa7: $33
	rst AddAOntoHL                                          ; $4aa8: $ef
	ld [hl-], a                                      ; $4aa9: $32
	ei                                               ; $4aaa: $fb
	ld h, $bd                                        ; $4aab: $26 $bd
	ld h, [hl]                                       ; $4aad: $66
	or a                                             ; $4aae: $b7
	ld l, h                                          ; $4aaf: $6c
	rst SubAFromHL                                          ; $4ab0: $d7
	ld l, h                                          ; $4ab1: $6c
	ei                                               ; $4ab2: $fb
	ld c, h                                          ; $4ab3: $4c
	ld a, [$fa4d]                                    ; $4ab4: $fa $4d $fa
	ld c, l                                          ; $4ab7: $4d
	ld [$ea5d], a                                    ; $4ab8: $ea $5d $ea
	ld e, l                                          ; $4abb: $5d
	ld c, e                                          ; $4abc: $4b
	db $fd                                           ; $4abd: $fd
	ld c, l                                          ; $4abe: $4d
	ei                                               ; $4abf: $fb
	rst GetHLinHL                                          ; $4ac0: $cf
	ei                                               ; $4ac1: $fb
	ld c, b                                          ; $4ac2: $48
	ld a, a                                          ; $4ac3: $7f
	ld c, b                                          ; $4ac4: $48
	ld a, a                                          ; $4ac5: $7f
	sbc d                                            ; $4ac6: $9a
	jr z, jr_06c_4b08                                ; $4ac7: $28 $3f

	jr z, jr_06c_4b0a                                ; $4ac9: $28 $3f

	inc h                                            ; $4acb: $24
	ld a, e                                          ; $4acc: $7b
	cp $98                                           ; $4acd: $fe $98
	ld d, $1f                                        ; $4acf: $16 $1f
	rla                                              ; $4ad1: $17
	rra                                              ; $4ad2: $1f
	dec d                                            ; $4ad3: $15
	dec e                                            ; $4ad4: $1d
	ld [bc], a                                       ; $4ad5: $02
	ld a, e                                          ; $4ad6: $7b
	halt                                             ; $4ad7: $76
	ld a, a                                          ; $4ad8: $7f
	ld l, h                                          ; $4ad9: $6c
	ld a, a                                          ; $4ada: $7f
	ld h, e                                          ; $4adb: $63
	ld [hl], a                                       ; $4adc: $77
	and [hl]                                         ; $4add: $a6
	adc l                                            ; $4ade: $8d
	rlca                                             ; $4adf: $07
	ld b, $0f                                        ; $4ae0: $06 $0f
	ld a, [bc]                                       ; $4ae2: $0a
	rra                                              ; $4ae3: $1f
	inc d                                            ; $4ae4: $14
	dec e                                            ; $4ae5: $1d
	ld d, $3d                                        ; $4ae6: $16 $3d
	ld h, $39                                        ; $4ae8: $26 $39
	ld l, $39                                        ; $4aea: $2e $39
	ld l, $7b                                        ; $4aec: $2e $7b
	ld c, h                                          ; $4aee: $4c
	ld [hl], e                                       ; $4aef: $73
	ld e, h                                          ; $4af0: $5c
	ld d, a                                          ; $4af1: $57
	cp $97                                           ; $4af2: $fe $97
	ld sp, $303e                                     ; $4af4: $31 $3e $30
	ccf                                              ; $4af7: $3f
	ld a, $3f                                        ; $4af8: $3e $3f
	cpl                                              ; $4afa: $2f
	inc sp                                           ; $4afb: $33
	cpl                                              ; $4afc: $2f
	inc b                                            ; $4afd: $04
	rst $38                                          ; $4afe: $ff
	rst SubAFromDE                                          ; $4aff: $df
	ccf                                              ; $4b00: $3f
	add b                                            ; $4b01: $80
	pop bc                                           ; $4b02: $c1
	rst $38                                          ; $4b03: $ff
	ld h, e                                          ; $4b04: $63
	sbc h                                            ; $4b05: $9c
	sbc [hl]                                         ; $4b06: $9e
	ld h, c                                          ; $4b07: $61

jr_06c_4b08:
	ld b, c                                          ; $4b08: $41
	adc [hl]                                         ; $4b09: $8e

jr_06c_4b0a:
	adc [hl]                                         ; $4b0a: $8e
	ld sp, $c325                                     ; $4b0b: $31 $25 $c3
	db $d3                                           ; $4b0e: $d3
	ld c, $a4                                        ; $4b0f: $0e $a4
	ld e, $06                                        ; $4b11: $1e $06
	ld a, h                                          ; $4b13: $7c
	inc b                                            ; $4b14: $04
	db $e4                                           ; $4b15: $e4
	inc d                                            ; $4b16: $14
	call z, $9c28                                    ; $4b17: $cc $28 $9c
	ld c, l                                          ; $4b1a: $4d
	jr c, @-$75                                      ; $4b1b: $38 $89

	ld a, b                                          ; $4b1d: $78
	add hl, bc                                       ; $4b1e: $09
	ld hl, sp+$2a                                    ; $4b1f: $f8 $2a
	sbc c                                            ; $4b21: $99
	reti                                             ; $4b22: $d9


	ld a, [$7891]                                    ; $4b23: $fa $91 $78
	sub e                                            ; $4b26: $93
	push hl                                          ; $4b27: $e5
	ld b, e                                          ; $4b28: $43
	ret nz                                           ; $4b29: $c0

	ldh [$d1], a                                     ; $4b2a: $e0 $d1
	sbc [hl]                                         ; $4b2c: $9e
	ld a, a                                          ; $4b2d: $7f
	ld a, e                                          ; $4b2e: $7b
	cp $9e                                           ; $4b2f: $fe $9e
	rst $38                                          ; $4b31: $ff
	ld b, e                                          ; $4b32: $43
	cp $7f                                           ; $4b33: $fe $7f
	db $ec                                           ; $4b35: $ec
	sbc d                                            ; $4b36: $9a
	rrca                                             ; $4b37: $0f
	nop                                              ; $4b38: $00

jr_06c_4b39:
	pop bc                                           ; $4b39: $c1
	nop                                              ; $4b3a: $00
	db $fc                                           ; $4b3b: $fc
	ld a, e                                          ; $4b3c: $7b
	or $f3                                           ; $4b3d: $f6 $f3
	rst SubAFromDE                                          ; $4b3f: $df
	add b                                            ; $4b40: $80
	rst SubAFromDE                                          ; $4b41: $df
	add c                                            ; $4b42: $81
	add b                                            ; $4b43: $80
	add [hl]                                         ; $4b44: $86
	add a                                            ; $4b45: $87
	ld c, [hl]                                       ; $4b46: $4e
	ret                                              ; $4b47: $c9


	sbc l                                            ; $4b48: $9d
	ldh a, [c]                                       ; $4b49: $f2
	xor d                                            ; $4b4a: $aa
	push af                                          ; $4b4b: $f5
	pop hl                                           ; $4b4c: $e1
	rst $38                                          ; $4b4d: $ff
	inc sp                                           ; $4b4e: $33
	cp $7a                                           ; $4b4f: $fe $7a
	rst $38                                          ; $4b51: $ff
	adc h                                            ; $4b52: $8c
	ld a, a                                          ; $4b53: $7f
	ld h, d                                          ; $4b54: $62
	sbc a                                            ; $4b55: $9f
	dec sp                                           ; $4b56: $3b
	rlca                                             ; $4b57: $07
	ld e, l                                          ; $4b58: $5d
	inc hl                                           ; $4b59: $23
	jr jr_06c_4ba3                                   ; $4b5a: $18 $47

	sub [hl]                                         ; $4b5c: $96
	ld c, c                                          ; $4b5d: $49

jr_06c_4b5e:
	ld d, l                                          ; $4b5e: $55
	adc b                                            ; $4b5f: $88
	ld d, c                                          ; $4b60: $51
	adc b                                            ; $4b61: $88
	add hl, bc                                       ; $4b62: $09
	sbc c                                            ; $4b63: $99
	sub b                                            ; $4b64: $90
	ld [$0a91], sp                                   ; $4b65: $08 $91 $0a
	sub c                                            ; $4b68: $91
	ld a, [hl+]                                      ; $4b69: $2a
	ld a, e                                          ; $4b6a: $7b
	cp $99                                           ; $4b6b: $fe $99
	ld l, $91                                        ; $4b6d: $2e $91
	halt                                             ; $4b6f: $76
	sbc c                                            ; $4b70: $99
	ld [hl], h                                       ; $4b71: $74
	sbc e                                            ; $4b72: $9b
	ldh [$c1], a                                     ; $4b73: $e0 $c1
	sub c                                            ; $4b75: $91
	jp z, $ed7f                                      ; $4b76: $ca $7f $ed

	ccf                                              ; $4b79: $3f
	push af                                          ; $4b7a: $f5
	rra                                              ; $4b7b: $1f
	ld a, [$fe0f]                                    ; $4b7c: $fa $0f $fe
	rlca                                             ; $4b7f: $07
	db $fd                                           ; $4b80: $fd
	dec b                                            ; $4b81: $05
	db $fc                                           ; $4b82: $fc
	inc b                                            ; $4b83: $04
	ld [hl], a                                       ; $4b84: $77
	cp $9d                                           ; $4b85: $fe $9d
	cp $02                                           ; $4b87: $fe $02
	ld l, a                                          ; $4b89: $6f
	cp $9a                                           ; $4b8a: $fe $9a
	rst $38                                          ; $4b8c: $ff
	ld bc, $013f                    ; $4b8d: $01 $3f $01
	adc a                                            ; $4b90: $8f
	ldh a, [$df]                                     ; $4b91: $f0 $df
	rst $38                                          ; $4b93: $ff
	add b                                            ; $4b94: $80

jr_06c_4b95:
	jr c, jr_06c_4b5e                                ; $4b95: $38 $c7

	rst SubAFromBC                                          ; $4b97: $e7
	jr jr_06c_4b39                                   ; $4b98: $18 $9f

	ld h, b                                          ; $4b9a: $60
	ldh a, [hDisp1_LCDC]                                     ; $4b9b: $f0 $8f
	rst AddAOntoHL                                          ; $4b9d: $ef
	db $10                                           ; $4b9e: $10
	sbc a                                            ; $4b9f: $9f
	ld h, b                                          ; $4ba0: $60
	ld a, a                                          ; $4ba1: $7f
	ret nz                                           ; $4ba2: $c0

jr_06c_4ba3:
	ld sp, hl                                        ; $4ba3: $f9
	add a                                            ; $4ba4: $87
	or $89                                           ; $4ba5: $f6 $89
	jp hl                                            ; $4ba7: $e9


	sub b                                            ; $4ba8: $90
	or b                                             ; $4ba9: $b0
	ret nz                                           ; $4baa: $c0

	or [hl]                                          ; $4bab: $b6
	ret nz                                           ; $4bac: $c0

	ld a, $c1                                        ; $4bad: $3e $c1
	rla                                              ; $4baf: $17
	add sp, -$56                                     ; $4bb0: $e8 $aa
	push de                                          ; $4bb2: $d5
	and l                                            ; $4bb3: $a5
	sub b                                            ; $4bb4: $90
	jp nc, $cb92                                     ; $4bb5: $d2 $92 $cb

	ld e, [hl]                                       ; $4bb8: $5e
	bit 7, c                                         ; $4bb9: $cb $79
	rst GetHLinHL                                          ; $4bbb: $cf
	ld e, c                                          ; $4bbc: $59
	rst AddAOntoHL                                          ; $4bbd: $ef
	ld e, c                                          ; $4bbe: $59
	rst AddAOntoHL                                          ; $4bbf: $ef
	ld c, h                                          ; $4bc0: $4c
	rst $38                                          ; $4bc1: $ff
	call $e0fe                                       ; $4bc2: $cd $fe $e0
	cp h                                             ; $4bc5: $bc
	db $db                                           ; $4bc6: $db
	add b                                            ; $4bc7: $80
	sub b                                            ; $4bc8: $90
	add e                                            ; $4bc9: $83
	ld b, c                                          ; $4bca: $41
	rst GetHLinHL                                          ; $4bcb: $cf
	ld bc, $03d3                                     ; $4bcc: $01 $d3 $03
	ld h, $07                                        ; $4bcf: $26 $07
	inc b                                            ; $4bd1: $04
	rlca                                             ; $4bd2: $07
	inc c                                            ; $4bd3: $0c
	rrca                                             ; $4bd4: $0f
	ld [$101f], sp                                   ; $4bd5: $08 $1f $10
	ld a, e                                          ; $4bd8: $7b
	cp $9c                                           ; $4bd9: $fe $9c
	jr nc, jr_06c_4b95                               ; $4bdb: $30 $b8

	and b                                            ; $4bdd: $a0
	pop af                                           ; $4bde: $f1
	rst SubAFromDE                                          ; $4bdf: $df
	ret nz                                           ; $4be0: $c0

	add b                                            ; $4be1: $80
	inc a                                            ; $4be2: $3c
	db $fc                                           ; $4be3: $fc
	ei                                               ; $4be4: $fb
	rlca                                             ; $4be5: $07
	and $19                                          ; $4be6: $e6 $19
	ldh a, [c]                                       ; $4be8: $f2
	rrca                                             ; $4be9: $0f
	dec e                                            ; $4bea: $1d
	db $e3                                           ; $4beb: $e3
	db $e3                                           ; $4bec: $e3
	inc e                                            ; $4bed: $1c
	ld hl, sp+$07                                    ; $4bee: $f8 $07
	dec l                                            ; $4bf0: $2d
	sub e                                            ; $4bf1: $93
	sub [hl]                                         ; $4bf2: $96
	ret                                              ; $4bf3: $c9


	ld c, e                                          ; $4bf4: $4b
	db $e4                                           ; $4bf5: $e4
	and h                                            ; $4bf6: $a4
	ld [hl], e                                       ; $4bf7: $73
	sub a                                            ; $4bf8: $97
	ld a, c                                          ; $4bf9: $79
	ld e, d                                          ; $4bfa: $5a
	dec a                                            ; $4bfb: $3d
	dec hl                                           ; $4bfc: $2b
	sbc h                                            ; $4bfd: $9c
	or l                                             ; $4bfe: $b5
	ld c, [hl]                                       ; $4bff: $4e
	ld e, d                                          ; $4c00: $5a
	sub b                                            ; $4c01: $90
	and a                                            ; $4c02: $a7
	ld a, l                                          ; $4c03: $7d
	sub e                                            ; $4c04: $93
	ld [$a45d], a                                    ; $4c05: $ea $5d $a4
	ld a, a                                          ; $4c08: $7f
	ld [hl-], a                                      ; $4c09: $32
	rst $38                                          ; $4c0a: $ff
	ld [hl-], a                                      ; $4c0b: $32

jr_06c_4c0c:
	rst $38                                          ; $4c0c: $ff
	cp e                                             ; $4c0d: $bb
	rst AddAOntoHL                                          ; $4c0e: $ef
	cp e                                             ; $4c0f: $bb
	xor $e0                                          ; $4c10: $ee $e0
	pop bc                                           ; $4c12: $c1
	sub l                                            ; $4c13: $95
	scf                                              ; $4c14: $37
	ld a, $2f                                        ; $4c15: $3e $2f
	jr c, jr_06c_4c98                                ; $4c17: $38 $7f

	ld [hl], c                                       ; $4c19: $71
	ld a, a                                          ; $4c1a: $7f
	ld b, b                                          ; $4c1b: $40
	rst $38                                          ; $4c1c: $ff
	add b                                            ; $4c1d: $80
	ld a, e                                          ; $4c1e: $7b
	cp $42                                           ; $4c1f: $fe $42
	jr jr_06c_4c0c                                   ; $4c21: $18 $e9

	rst SubAFromDE                                          ; $4c23: $df
	jp nz, $7c80                                     ; $4c24: $c2 $80 $7c

	db $fc                                           ; $4c27: $fc
	jr @-$06                                         ; $4c28: $18 $f8

	call nz, $b2fc                                   ; $4c2a: $c4 $fc $b2
	ld a, [hl]                                       ; $4c2d: $7e
	ld c, c                                          ; $4c2e: $49
	cp a                                             ; $4c2f: $bf
	and h                                            ; $4c30: $a4
	rst SubAFromDE                                          ; $4c31: $df
	ld b, e                                          ; $4c32: $43
	rst $38                                          ; $4c33: $ff
	and c                                            ; $4c34: $a1
	ld a, a                                          ; $4c35: $7f
	ld d, b                                          ; $4c36: $50
	cp a                                             ; $4c37: $bf
	xor b                                            ; $4c38: $a8
	rst SubAFromDE                                          ; $4c39: $df
	ld d, h                                          ; $4c3a: $54
	rst AddAOntoHL                                          ; $4c3b: $ef
	xor d                                            ; $4c3c: $aa
	ld [hl], a                                       ; $4c3d: $77
	ld [$5537], a                                    ; $4c3e: $ea $37 $55
	cp e                                             ; $4c41: $bb
	or l                                             ; $4c42: $b5
	db $db                                           ; $4c43: $db
	ld e, b                                          ; $4c44: $58
	sub a                                            ; $4c45: $97
	rst AddAOntoHL                                          ; $4c46: $ef
	inc h                                            ; $4c47: $24
	rst $38                                          ; $4c48: $ff
	ld [hl+], a                                      ; $4c49: $22
	rst $38                                          ; $4c4a: $ff
	ld de, $88ff                                     ; $4c4b: $11 $ff $88
	rra                                              ; $4c4e: $1f
	cp l                                             ; $4c4f: $bd
	ldh [$da], a                                     ; $4c50: $e0 $da
	sbc b                                            ; $4c52: $98
	cp a                                             ; $4c53: $bf
	ldh [rIE], a                                     ; $4c54: $e0 $ff
	ret nz                                           ; $4c56: $c0

	rst $38                                          ; $4c57: $ff
	nop                                              ; $4c58: $00
	cp $7b                                           ; $4c59: $fe $7b
	cp $7d                                           ; $4c5b: $fe $7d
	sub d                                            ; $4c5d: $92
	ld a, a                                          ; $4c5e: $7f
	cp $9e                                           ; $4c5f: $fe $9e

jr_06c_4c61:
	ld sp, hl                                        ; $4c61: $f9
	ld a, e                                          ; $4c62: $7b

jr_06c_4c63:
	cp $9c                                           ; $4c63: $fe $9c
	pop af                                           ; $4c65: $f1
	nop                                              ; $4c66: $00
	di                                               ; $4c67: $f3
	ld a, e                                          ; $4c68: $7b
	cp $98                                           ; $4c69: $fe $98
	rst SubAFromBC                                          ; $4c6b: $e7
	nop                                              ; $4c6c: $00
	rst SubAFromBC                                          ; $4c6d: $e7
	ld bc, $0187                                     ; $4c6e: $01 $87 $01
	rrca                                             ; $4c71: $0f
	ld a, b                                          ; $4c72: $78
	or $df                                           ; $4c73: $f6 $df
	add b                                            ; $4c75: $80
	rst SubAFromDE                                          ; $4c76: $df
	ret nz                                           ; $4c77: $c0

	ld h, [hl]                                       ; $4c78: $66
	sbc l                                            ; $4c79: $9d
	sub [hl]                                         ; $4c7a: $96
	ld b, b                                          ; $4c7b: $40
	ret nz                                           ; $4c7c: $c0

	ld b, b                                          ; $4c7d: $40
	ret nz                                           ; $4c7e: $c0

	jr nz, jr_06c_4c61                               ; $4c7f: $20 $e0

	jr nz, jr_06c_4c63                               ; $4c81: $20 $e0

	and b                                            ; $4c83: $a0

Call_06c_4c84:
	sbc $e0                                          ; $4c84: $de $e0
	adc b                                            ; $4c86: $88
	ld d, b                                          ; $4c87: $50
	ldh a, [$50]                                     ; $4c88: $f0 $50
	ldh a, [$a8]                                     ; $4c8a: $f0 $a8
	ld hl, sp+$54                                    ; $4c8c: $f8 $54
	db $fc                                           ; $4c8e: $fc
	sub d                                            ; $4c8f: $92
	cp $4a                                           ; $4c90: $fe $4a
	cp $49                                           ; $4c92: $fe $49
	rst $38                                          ; $4c94: $ff
	dec h                                            ; $4c95: $25
	rst $38                                          ; $4c96: $ff
	inc h                                            ; $4c97: $24

jr_06c_4c98:
	rst $38                                          ; $4c98: $ff
	sub h                                            ; $4c99: $94
	rst $38                                          ; $4c9a: $ff
	or d                                             ; $4c9b: $b2
	rst SubAFromDE                                          ; $4c9c: $df
	ld a, d                                          ; $4c9d: $7a
	ld a, d                                          ; $4c9e: $7a
	ld h, $90                                        ; $4c9f: $26 $90
	or l                                             ; $4ca1: $b5
	ld l, a                                          ; $4ca2: $6f
	cp l                                             ; $4ca3: $bd
	ld h, a                                          ; $4ca4: $67
	xor l                                            ; $4ca5: $ad
	ld [hl], a                                       ; $4ca6: $77
	xor l                                            ; $4ca7: $ad
	ld [hl], a                                       ; $4ca8: $77
	and a                                            ; $4ca9: $a7
	ld a, e                                          ; $4caa: $7b
	or a                                             ; $4cab: $b7
	ld a, e                                          ; $4cac: $7b
	ld [hl-], a                                      ; $4cad: $32
	cp $29                                           ; $4cae: $fe $29
	ld a, e                                          ; $4cb0: $7b
	db $e4                                           ; $4cb1: $e4
	sub [hl]                                         ; $4cb2: $96
	ld d, l                                          ; $4cb3: $55
	rst SubAFromDE                                          ; $4cb4: $df
	ld d, d                                          ; $4cb5: $52
	sbc $92                                          ; $4cb6: $de $92
	sbc [hl]                                         ; $4cb8: $9e
	adc d                                            ; $4cb9: $8a
	adc [hl]                                         ; $4cba: $8e
	ld a, [bc]                                       ; $4cbb: $0a
	ld a, b                                          ; $4cbc: $78
	ld h, b                                          ; $4cbd: $60
	ld a, a                                          ; $4cbe: $7f
	cp $80                                           ; $4cbf: $fe $80
	db $f4                                           ; $4cc1: $f4
	db $fc                                           ; $4cc2: $fc
	db $f4                                           ; $4cc3: $f4
	inc e                                            ; $4cc4: $1c
	xor $1e                                          ; $4cc5: $ee $1e
	rst AddAOntoHL                                          ; $4cc7: $ef
	add hl, de                                       ; $4cc8: $19
	rst SubAFromDE                                          ; $4cc9: $df
	ld sp, $22ff                                     ; $4cca: $31 $ff $22
	cp $44                                           ; $4ccd: $fe $44
	cp l                                             ; $4ccf: $bd
	add hl, bc                                       ; $4cd0: $09
	ld a, e                                          ; $4cd1: $7b
	ld [de], a                                       ; $4cd2: $12
	halt                                             ; $4cd3: $76
	inc d                                            ; $4cd4: $14

jr_06c_4cd5:
	or $20                                           ; $4cd5: $f6 $20
	rst $38                                          ; $4cd7: $ff
	jr z, jr_06c_4cd5                                ; $4cd8: $28 $fb

	ld d, b                                          ; $4cda: $50
	ld sp, hl                                        ; $4cdb: $f9
	ld d, b                                          ; $4cdc: $50
	ldh a, [$60]                                     ; $4cdd: $f0 $60
	ldh [$97], a                                     ; $4cdf: $e0 $97
	ld b, b                                          ; $4ce1: $40
	ldh [$c0], a                                     ; $4ce2: $e0 $c0
	ldh a, [$80]                                     ; $4ce4: $f0 $80
	ret nc                                           ; $4ce6: $d0

	add b                                            ; $4ce7: $80
	ret z                                            ; $4ce8: $c8

	ld a, e                                          ; $4ce9: $7b
	cp $46                                           ; $4cea: $fe $46
	dec de                                           ; $4cec: $1b
	ld [hl], a                                       ; $4ced: $77
	add b                                            ; $4cee: $80
	ld [hl], a                                       ; $4cef: $77
	ld a, [hl]                                       ; $4cf0: $7e
	ld a, a                                          ; $4cf1: $7f
	add b                                            ; $4cf2: $80
	ld a, a                                          ; $4cf3: $7f
	cp $d9                                           ; $4cf4: $fe $d9
	ld h, b                                          ; $4cf6: $60
	db $dd                                           ; $4cf7: $dd
	ld b, b                                          ; $4cf8: $40
	dec l                                            ; $4cf9: $2d
	db $eb                                           ; $4cfa: $eb
	ld a, a                                          ; $4cfb: $7f
	or l                                             ; $4cfc: $b5
	add a                                            ; $4cfd: $87
	ld d, b                                          ; $4cfe: $50
	or b                                             ; $4cff: $b0
	ld [hl], b                                       ; $4d00: $70
	sub b                                            ; $4d01: $90
	cp b                                             ; $4d02: $b8
	ld c, b                                          ; $4d03: $48
	cp b                                             ; $4d04: $b8
	ld c, b                                          ; $4d05: $48
	call nc, $dc2c                                   ; $4d06: $d4 $2c $dc
	inc h                                            ; $4d09: $24
	ld a, [$fe06]                                    ; $4d0a: $fa $06 $fe
	ld [bc], a                                       ; $4d0d: $02
	ld a, [hl]                                       ; $4d0e: $7e
	add d                                            ; $4d0f: $82
	ld a, [hl]                                       ; $4d10: $7e
	add d                                            ; $4d11: $82
	ld a, l                                          ; $4d12: $7d
	add e                                            ; $4d13: $83
	rst $38                                          ; $4d14: $ff
	ld bc, $fe5f                                     ; $4d15: $01 $5f $fe
	dec de                                           ; $4d18: $1b
	nop                                              ; $4d19: $00
	db $db                                           ; $4d1a: $db
	sbc c                                            ; $4d1b: $99
	sbc b                                            ; $4d1c: $98
	call z, $99ee                                    ; $4d1d: $cc $ee $99
	ld de, $9999                                     ; $4d20: $11 $99 $99
	ld [hl+], a                                      ; $4d23: $22
	ld [hl], a                                       ; $4d24: $77
	ei                                               ; $4d25: $fb
	sbc [hl]                                         ; $4d26: $9e
	inc sp                                           ; $4d27: $33
	ld c, a                                          ; $4d28: $4f
	or $7f                                           ; $4d29: $f6 $7f
	ei                                               ; $4d2b: $fb
	sbc c                                            ; $4d2c: $99
	sub c                                            ; $4d2d: $91
	cp e                                             ; $4d2e: $bb
	ld [hl+], a                                      ; $4d2f: $22
	sbc c                                            ; $4d30: $99
	xor $ee                                          ; $4d31: $ee $ee
	db $e4                                           ; $4d33: $e4
	ld bc, $e194                                     ; $4d34: $01 $94 $e1
	scf                                              ; $4d37: $37
	xor c                                            ; $4d38: $a9
	ld [hl], a                                       ; $4d39: $77
	and c                                            ; $4d3a: $a1
	ld a, a                                          ; $4d3b: $7f
	ld [hl+], a                                      ; $4d3c: $22
	rst $38                                          ; $4d3d: $ff
	ld [hl+], a                                      ; $4d3e: $22
	rst $38                                          ; $4d3f: $ff
	ld b, h                                          ; $4d40: $44
	ld [hl], e                                       ; $4d41: $73
	cp $8e                                           ; $4d42: $fe $8e
	ld c, b                                          ; $4d44: $48
	rst $38                                          ; $4d45: $ff
	adc c                                            ; $4d46: $89
	rst $38                                          ; $4d47: $ff
	sub e                                            ; $4d48: $93
	rst $38                                          ; $4d49: $ff
	daa                                              ; $4d4a: $27
	rst $38                                          ; $4d4b: $ff
	dec a                                            ; $4d4c: $3d
	rst $38                                          ; $4d4d: $ff
	rst SubAFromBC                                          ; $4d4e: $e7
	db $fd                                           ; $4d4f: $fd
	and [hl]                                         ; $4d50: $a6
	db $fd                                           ; $4d51: $fd
	sbc c                                            ; $4d52: $99
	or $54                                           ; $4d53: $f6 $54
	ld [hl], e                                       ; $4d55: $73
	cp $80                                           ; $4d56: $fe $80
	ld [hl-], a                                      ; $4d58: $32
	ei                                               ; $4d59: $fb
	ld [hl-], a                                      ; $4d5a: $32
	ei                                               ; $4d5b: $fb
	ld [de], a                                       ; $4d5c: $12
	ei                                               ; $4d5d: $fb
	sub c                                            ; $4d5e: $91
	db $fd                                           ; $4d5f: $fd
	ld c, c                                          ; $4d60: $49
	db $fd                                           ; $4d61: $fd
	xor b                                            ; $4d62: $a8
	cp $fc                                           ; $4d63: $fe $fc
	cp $fc                                           ; $4d65: $fe $fc
	rst JumpTable                                          ; $4d67: $c7
	and $83                                          ; $4d68: $e6 $83
	rst GetHLinHL                                          ; $4d6a: $cf
	pop bc                                           ; $4d6b: $c1
	rst SubAFromDE                                          ; $4d6c: $df
	ld b, c                                          ; $4d6d: $41
	ccf                                              ; $4d6e: $3f
	jr nz, jr_06c_4db0                               ; $4d6f: $20 $3f

	nop                                              ; $4d71: $00
	ld d, b                                          ; $4d72: $50
	cp a                                             ; $4d73: $bf
	sub b                                            ; $4d74: $90
	ld a, a                                          ; $4d75: $7f
	sub c                                            ; $4d76: $91
	add b                                            ; $4d77: $80
	ld a, a                                          ; $4d78: $7f
	ld sp, $31ff                                     ; $4d79: $31 $ff $31
	rst $38                                          ; $4d7c: $ff
	ld [hl], e                                       ; $4d7d: $73
	rst SubAFromDE                                          ; $4d7e: $df
	ld [hl], e                                       ; $4d7f: $73
	sbc $57                                          ; $4d80: $de $57
	db $fc                                           ; $4d82: $fc
	rst SubAFromDE                                          ; $4d83: $df
	ld sp, hl                                        ; $4d84: $f9
	cp a                                             ; $4d85: $bf
	rst FarCall                                          ; $4d86: $f7
	ld a, [hl]                                       ; $4d87: $7e
	adc [hl]                                         ; $4d88: $8e
	db $fd                                           ; $4d89: $fd
	dec c                                            ; $4d8a: $0d
	db $fd                                           ; $4d8b: $fd
	dec e                                            ; $4d8c: $1d
	ld a, a                                          ; $4d8d: $7f
	cp e                                             ; $4d8e: $bb
	ei                                               ; $4d8f: $fb
	adc d                                            ; $4d90: $8a
	pop bc                                           ; $4d91: $c1
	add c                                            ; $4d92: $81
	ret nz                                           ; $4d93: $c0

	add b                                            ; $4d94: $80
	ld b, b                                          ; $4d95: $40
	ret nz                                           ; $4d96: $c0

	add b                                            ; $4d97: $80
	ret nz                                           ; $4d98: $c0

	ld h, b                                          ; $4d99: $60
	ld [hl], b                                       ; $4d9a: $70
	ld h, b                                          ; $4d9b: $60
	jr nc, jr_06c_4e16                               ; $4d9c: $30 $78

	ld a, b                                          ; $4d9e: $78
	inc a                                            ; $4d9f: $3c
	cp a                                             ; $4da0: $bf
	ld a, $1d                                        ; $4da1: $3e $1d
	cp a                                             ; $4da3: $bf
	sbc l                                            ; $4da4: $9d
	sbc $b7                                          ; $4da5: $de $b7
	sbc $cf                                          ; $4da7: $de $cf
	ld a, [hl]                                       ; $4da9: $7e
	bit 7, [hl]                                      ; $4daa: $cb $7e
	ld l, e                                          ; $4dac: $6b
	cp h                                             ; $4dad: $bc
	daa                                              ; $4dae: $27
	db $fc                                           ; $4daf: $fc

jr_06c_4db0:
	and a                                            ; $4db0: $a7
	db $fc                                           ; $4db1: $fc
	db $d3                                           ; $4db2: $d3
	cp $eb                                           ; $4db3: $fe $eb
	cp [hl]                                          ; $4db5: $be
	db $eb                                           ; $4db6: $eb
	sub [hl]                                         ; $4db7: $96
	cp [hl]                                          ; $4db8: $be
	cpl                                              ; $4db9: $2f
	ld a, [$f27f]                                    ; $4dba: $fa $7f $f2
	rst $38                                          ; $4dbd: $ff
	or d                                             ; $4dbe: $b2
	rst $38                                          ; $4dbf: $ff
	ld [hl-], a                                      ; $4dc0: $32
	ld a, e                                          ; $4dc1: $7b
	ld a, e                                          ; $4dc2: $7b
	adc [hl]                                         ; $4dc3: $8e
	jr nz, @+$01                                     ; $4dc4: $20 $ff

	ret nz                                           ; $4dc6: $c0

	rst $38                                          ; $4dc7: $ff
	ldh [$fc], a                                     ; $4dc8: $e0 $fc
	ld [hl], b                                       ; $4dca: $70
	ld hl, sp-$40                                    ; $4dcb: $f8 $c0
	or b                                             ; $4dcd: $b0
	ldh [$b1], a                                     ; $4dce: $e0 $b1
	ldh [$b3], a                                     ; $4dd0: $e0 $b3
	ld h, b                                          ; $4dd2: $60
	ret nz                                           ; $4dd3: $c0

	ret nz                                           ; $4dd4: $c0

	di                                               ; $4dd5: $f3
	sub h                                            ; $4dd6: $94
	ldh a, [$c0]                                     ; $4dd7: $f0 $c0
	rst $38                                          ; $4dd9: $ff
	inc a                                            ; $4dda: $3c
	rst $38                                          ; $4ddb: $ff
	inc bc                                           ; $4ddc: $03
	pop hl                                           ; $4ddd: $e1
	nop                                              ; $4dde: $00
	ret nz                                           ; $4ddf: $c0

	nop                                              ; $4de0: $00
	add b                                            ; $4de1: $80
	ld a, [$af80]                                    ; $4de2: $fa $80 $af
	or $f6                                           ; $4de5: $f6 $f6
	ld a, a                                          ; $4de7: $7f
	rst $38                                          ; $4de8: $ff
	ld l, a                                          ; $4de9: $6f
	rst $38                                          ; $4dea: $ff
	ld h, d                                          ; $4deb: $62
	rst $38                                          ; $4dec: $ff
	ld h, a                                          ; $4ded: $67
	rst $38                                          ; $4dee: $ff
	ld c, [hl]                                       ; $4def: $4e
	db $fd                                           ; $4df0: $fd
	dec c                                            ; $4df1: $0d
	rst $38                                          ; $4df2: $ff
	rlca                                             ; $4df3: $07
	rst $38                                          ; $4df4: $ff
	rlca                                             ; $4df5: $07
	inc sp                                           ; $4df6: $33
	ld [bc], a                                       ; $4df7: $02
	ld bc, $3f03                                     ; $4df8: $01 $03 $3f
	nop                                              ; $4dfb: $00
	cp $00                                           ; $4dfc: $fe $00
	xor $10                                          ; $4dfe: $ee $10
	adc d                                            ; $4e00: $8a
	inc c                                            ; $4e01: $0c
	inc c                                            ; $4e02: $0c
	add b                                            ; $4e03: $80
	ld [$7fc4], sp                                   ; $4e04: $08 $c4 $7f
	ld b, e                                          ; $4e07: $43

jr_06c_4e08:
	rst $38                                          ; $4e08: $ff
	ldh [c], a                                       ; $4e09: $e2
	rst $38                                          ; $4e0a: $ff
	pop af                                           ; $4e0b: $f1
	rra                                              ; $4e0c: $1f
	db $fd                                           ; $4e0d: $fd
	rst GetHLinHL                                          ; $4e0e: $cf
	ei                                               ; $4e0f: $fb
	rst FarCall                                          ; $4e10: $f7
	ld a, [$5ce7]                                    ; $4e11: $fa $e7 $5c
	rst JumpTable                                          ; $4e14: $c7
	ld b, l                                          ; $4e15: $45

jr_06c_4e16:
	add $e5                                          ; $4e16: $c6 $e5
	ld b, [hl]                                       ; $4e18: $46
	rst JumpTable                                          ; $4e19: $c7
	add [hl]                                         ; $4e1a: $86
	add a                                            ; $4e1b: $87
	ld b, $06                                        ; $4e1c: $06 $06
	rlca                                             ; $4e1e: $07
	ld b, $07                                        ; $4e1f: $06 $07
	dec b                                            ; $4e21: $05
	rlca                                             ; $4e22: $07
	sbc l                                            ; $4e23: $9d
	add hl, bc                                       ; $4e24: $09
	rrca                                             ; $4e25: $0f
	ld b, e                                          ; $4e26: $43
	ld b, b                                          ; $4e27: $40
	sbc d                                            ; $4e28: $9a
	ld hl, sp-$41                                    ; $4e29: $f8 $bf
	ldh a, [$7f]                                     ; $4e2b: $f0 $7f
	add c                                            ; $4e2d: $81
	ld a, e                                          ; $4e2e: $7b
	cp b                                             ; $4e2f: $b8
	sbc b                                            ; $4e30: $98
	rrca                                             ; $4e31: $0f
	ld a, [hl]                                       ; $4e32: $7e
	cp [hl]                                          ; $4e33: $be
	ld a, [$c18b]                                    ; $4e34: $fa $8b $c1
	add c                                            ; $4e37: $81
	ld b, e                                          ; $4e38: $43
	ld h, b                                          ; $4e39: $60
	sbc b                                            ; $4e3a: $98
	nop                                              ; $4e3b: $00
	rst $38                                          ; $4e3c: $ff
	nop                                              ; $4e3d: $00
	db $fc                                           ; $4e3e: $fc
	ldh a, [$f8]                                     ; $4e3f: $f0 $f8
	ldh a, [rPCM34]                                  ; $4e41: $f0 $77
	ld h, b                                          ; $4e43: $60
	sbc e                                            ; $4e44: $9b
	di                                               ; $4e45: $f3
	jr nz, jr_06c_4e08                               ; $4e46: $20 $c0

	ret nz                                           ; $4e48: $c0

	ld h, e                                          ; $4e49: $63
	add b                                            ; $4e4a: $80
	sub h                                            ; $4e4b: $94
	ld h, b                                          ; $4e4c: $60
	rst $38                                          ; $4e4d: $ff
	ld b, b                                          ; $4e4e: $40
	rst $38                                          ; $4e4f: $ff
	inc bc                                           ; $4e50: $03
	db $fd                                           ; $4e51: $fd
	dec b                                            ; $4e52: $05
	rst $38                                          ; $4e53: $ff
	rlca                                             ; $4e54: $07
	ld [hl-], a                                      ; $4e55: $32
	inc bc                                           ; $4e56: $03
	inc sp                                           ; $4e57: $33
	add b                                            ; $4e58: $80
	sbc b                                            ; $4e59: $98
	rrca                                             ; $4e5a: $0f
	ei                                               ; $4e5b: $fb
	rlca                                             ; $4e5c: $07
	ld a, [$fcf7]                                    ; $4e5d: $fa $f7 $fc
	rst SubAFromHL                                          ; $4e60: $d7
	inc bc                                           ; $4e61: $03
	add b                                            ; $4e62: $80
	ld [hl], a                                       ; $4e63: $77
	add b                                            ; $4e64: $80
	sbc [hl]                                         ; $4e65: $9e
	add b                                            ; $4e66: $80
	ld a, e                                          ; $4e67: $7b
	add b                                            ; $4e68: $80
	sbc b                                            ; $4e69: $98
	nop                                              ; $4e6a: $00
	ld a, a                                          ; $4e6b: $7f
	add e                                            ; $4e6c: $83
	rst $38                                          ; $4e6d: $ff
	adc a                                            ; $4e6e: $8f
	rst GetHLinHL                                          ; $4e6f: $cf
	add e                                            ; $4e70: $83
	inc sp                                           ; $4e71: $33
	add b                                            ; $4e72: $80
	sub a                                            ; $4e73: $97
	ret nz                                           ; $4e74: $c0

	ld hl, sp+$30                                    ; $4e75: $f8 $30
	ldh a, [rSVBK]                                   ; $4e77: $f0 $70
	pop hl                                           ; $4e79: $e1
	ldh [$63], a                                     ; $4e7a: $e0 $63
	sbc $c0                                          ; $4e7c: $de $c0
	ld d, e                                          ; $4e7e: $53
	add b                                            ; $4e7f: $80
	sbc [hl]                                         ; $4e80: $9e
	ld bc, $e27b                                     ; $4e81: $01 $7b $e2
	sbc c                                            ; $4e84: $99
	ld bc, $0737                                     ; $4e85: $01 $37 $07
	rlca                                             ; $4e88: $07
	inc bc                                           ; $4e89: $03
	rra                                              ; $4e8a: $1f
	ld l, e                                          ; $4e8b: $6b
	add b                                            ; $4e8c: $80
	sbc [hl]                                         ; $4e8d: $9e
	inc b                                            ; $4e8e: $04
	ld c, a                                          ; $4e8f: $4f
	add b                                            ; $4e90: $80
	sub [hl]                                         ; $4e91: $96
	rst JumpTable                                          ; $4e92: $c7
	db $fc                                           ; $4e93: $fc
	scf                                              ; $4e94: $37
	push hl                                          ; $4e95: $e5
	and $65                                          ; $4e96: $e6 $65
	and $e7                                          ; $4e98: $e6 $e7
	add $03                                          ; $4e9a: $c6 $03
	add b                                            ; $4e9c: $80
	ld a, a                                          ; $4e9d: $7f
	cp b                                             ; $4e9e: $b8
	sbc [hl]                                         ; $4e9f: $9e
	rlca                                             ; $4ea0: $07
	ld a, e                                          ; $4ea1: $7b
	ld a, [$807f]                                    ; $4ea2: $fa $7f $80
	sbc [hl]                                         ; $4ea5: $9e
	add a                                            ; $4ea6: $87
	inc sp                                           ; $4ea7: $33
	add b                                            ; $4ea8: $80
	sub [hl]                                         ; $4ea9: $96
	nop                                              ; $4eaa: $00
	ld hl, sp-$30                                    ; $4eab: $f8 $d0
	ldh a, [$30]                                     ; $4ead: $f0 $30
	pop af                                           ; $4eaf: $f1
	ldh a, [$e3]                                     ; $4eb0: $f0 $e3
	ldh [rWX], a                                     ; $4eb2: $e0 $4b
	add b                                            ; $4eb4: $80
	ld a, e                                          ; $4eb5: $7b
	add d                                            ; $4eb6: $82
	ld a, a                                          ; $4eb7: $7f
	db $fc                                           ; $4eb8: $fc
	dec de                                           ; $4eb9: $1b
	add b                                            ; $4eba: $80
	sbc c                                            ; $4ebb: $99
	rlca                                             ; $4ebc: $07
	db $fc                                           ; $4ebd: $fc
	rst FarCall                                          ; $4ebe: $f7
	push hl                                          ; $4ebf: $e5
	ld h, $e5                                        ; $4ec0: $26 $e5
	ld d, e                                          ; $4ec2: $53
	add b                                            ; $4ec3: $80
	rst $38                                          ; $4ec4: $ff
	rst SubAFromDE                                          ; $4ec5: $df
	inc b                                            ; $4ec6: $04
	sbc d                                            ; $4ec7: $9a
	jr c, jr_06c_4efa                                ; $4ec8: $38 $30

	nop                                              ; $4eca: $00
	nop                                              ; $4ecb: $00
	ld [$9efc], sp                                   ; $4ecc: $08 $fc $9e
	ld bc, $be77                                     ; $4ecf: $01 $77 $be
	add b                                            ; $4ed2: $80
	rst $38                                          ; $4ed3: $ff
	cp $3f                                           ; $4ed4: $fe $3f
	ld a, [hl]                                       ; $4ed6: $7e
	rrca                                             ; $4ed7: $0f
	inc h                                            ; $4ed8: $24
	rlca                                             ; $4ed9: $07
	ld [$090f], sp                                   ; $4eda: $08 $0f $09
	rrca                                             ; $4edd: $0f
	inc de                                           ; $4ede: $13
	rra                                              ; $4edf: $1f
	add hl, bc                                       ; $4ee0: $09
	rrca                                             ; $4ee1: $0f
	ld de, $111f                                     ; $4ee2: $11 $1f $11
	rra                                              ; $4ee5: $1f
	add hl, hl                                       ; $4ee6: $29
	ccf                                              ; $4ee7: $3f
	add hl, hl                                       ; $4ee8: $29
	ccf                                              ; $4ee9: $3f
	ld c, d                                          ; $4eea: $4a
	ld a, a                                          ; $4eeb: $7f
	jp nc, $92ff                                     ; $4eec: $d2 $ff $92

	rst $38                                          ; $4eef: $ff
	inc de                                           ; $4ef0: $13
	rst $38                                          ; $4ef1: $ff
	sbc [hl]                                         ; $4ef2: $9e
	dec d                                            ; $4ef3: $15
	ld a, c                                          ; $4ef4: $79
	ld h, d                                          ; $4ef5: $62
	adc l                                            ; $4ef6: $8d
	ld h, a                                          ; $4ef7: $67
	db $fc                                           ; $4ef8: $fc
	ld l, a                                          ; $4ef9: $6f

jr_06c_4efa:
	ld hl, sp-$11                                    ; $4efa: $f8 $ef
	ld hl, sp-$21                                    ; $4efc: $f8 $df
	ldh a, [$df]                                     ; $4efe: $f0 $df
	ld [hl], b                                       ; $4f00: $70
	nop                                              ; $4f01: $00
	nop                                              ; $4f02: $00
	inc e                                            ; $4f03: $1c
	inc b                                            ; $4f04: $04
	ld h, h                                          ; $4f05: $64
	jr nz, jr_06c_4f40                               ; $4f06: $20 $38

	jr jr_06c_4f79                                   ; $4f08: $18 $6f

	cp [hl]                                          ; $4f0a: $be
	ccf                                              ; $4f0b: $3f
	ret nz                                           ; $4f0c: $c0

	ld [hl], e                                       ; $4f0d: $73
	ldh [$df], a                                     ; $4f0e: $e0 $df
	ld h, h                                          ; $4f10: $64
	ld l, e                                          ; $4f11: $6b
	sbc $03                                          ; $4f12: $de $03
	ldh [rSCX], a                                    ; $4f14: $e0 $43
	ldh [$eb], a                                     ; $4f16: $e0 $eb
	ld bc, $e194                                     ; $4f18: $01 $94 $e1
	scf                                              ; $4f1b: $37
	xor c                                            ; $4f1c: $a9
	ld [hl], a                                       ; $4f1d: $77
	and c                                            ; $4f1e: $a1
	ld a, a                                          ; $4f1f: $7f
	ld [hl+], a                                      ; $4f20: $22
	rst $38                                          ; $4f21: $ff
	ld [hl+], a                                      ; $4f22: $22
	rst $38                                          ; $4f23: $ff
	ld b, h                                          ; $4f24: $44
	ld [hl], e                                       ; $4f25: $73
	cp $8e                                           ; $4f26: $fe $8e
	ld c, b                                          ; $4f28: $48
	rst $38                                          ; $4f29: $ff
	adc c                                            ; $4f2a: $89
	rst $38                                          ; $4f2b: $ff
	sub e                                            ; $4f2c: $93
	rst $38                                          ; $4f2d: $ff
	daa                                              ; $4f2e: $27
	rst $38                                          ; $4f2f: $ff
	dec a                                            ; $4f30: $3d
	rst $38                                          ; $4f31: $ff
	rst SubAFromBC                                          ; $4f32: $e7
	db $fd                                           ; $4f33: $fd
	and [hl]                                         ; $4f34: $a6
	db $fd                                           ; $4f35: $fd
	sbc c                                            ; $4f36: $99
	or $54                                           ; $4f37: $f6 $54
	ld [hl], e                                       ; $4f39: $73
	cp $80                                           ; $4f3a: $fe $80
	ld [hl-], a                                      ; $4f3c: $32
	ei                                               ; $4f3d: $fb
	ld [hl-], a                                      ; $4f3e: $32
	ei                                               ; $4f3f: $fb

jr_06c_4f40:
	ld [de], a                                       ; $4f40: $12
	ei                                               ; $4f41: $fb
	sub c                                            ; $4f42: $91
	db $fd                                           ; $4f43: $fd
	ld c, c                                          ; $4f44: $49
	db $fd                                           ; $4f45: $fd
	xor b                                            ; $4f46: $a8
	cp $fc                                           ; $4f47: $fe $fc
	cp $fc                                           ; $4f49: $fe $fc
	rst JumpTable                                          ; $4f4b: $c7
	and $83                                          ; $4f4c: $e6 $83
	rst GetHLinHL                                          ; $4f4e: $cf
	pop bc                                           ; $4f4f: $c1
	rst SubAFromDE                                          ; $4f50: $df
	ld b, c                                          ; $4f51: $41
	ccf                                              ; $4f52: $3f
	jr nz, jr_06c_4f94                               ; $4f53: $20 $3f

	nop                                              ; $4f55: $00
	ld d, b                                          ; $4f56: $50
	cp a                                             ; $4f57: $bf
	sub b                                            ; $4f58: $90
	ld a, a                                          ; $4f59: $7f
	sub c                                            ; $4f5a: $91
	add b                                            ; $4f5b: $80
	ld a, a                                          ; $4f5c: $7f
	ld sp, $31ff                                     ; $4f5d: $31 $ff $31
	rst $38                                          ; $4f60: $ff
	ld [hl], e                                       ; $4f61: $73
	rst SubAFromDE                                          ; $4f62: $df
	ld d, e                                          ; $4f63: $53
	cp $77                                           ; $4f64: $fe $77
	db $fc                                           ; $4f66: $fc
	rst $38                                          ; $4f67: $ff
	db $db                                           ; $4f68: $db
	cp a                                             ; $4f69: $bf
	sub $7c                                          ; $4f6a: $d6 $7c
	adc h                                            ; $4f6c: $8c
	db $fd                                           ; $4f6d: $fd
	dec c                                            ; $4f6e: $0d
	rst $38                                          ; $4f6f: $ff
	rra                                              ; $4f70: $1f
	ld a, a                                          ; $4f71: $7f
	cp e                                             ; $4f72: $bb
	ei                                               ; $4f73: $fb
	adc d                                            ; $4f74: $8a
	pop bc                                           ; $4f75: $c1
	add c                                            ; $4f76: $81
	ret nz                                           ; $4f77: $c0

	add b                                            ; $4f78: $80

jr_06c_4f79:
	ld b, b                                          ; $4f79: $40
	ret nz                                           ; $4f7a: $c0

	add b                                            ; $4f7b: $80
	ret nz                                           ; $4f7c: $c0

	ld h, b                                          ; $4f7d: $60
	ld [hl], b                                       ; $4f7e: $70
	ld h, b                                          ; $4f7f: $60
	jr nc, jr_06c_4ffa                               ; $4f80: $30 $78

	ld a, b                                          ; $4f82: $78
	inc a                                            ; $4f83: $3c
	cp a                                             ; $4f84: $bf
	ld a, $1d                                        ; $4f85: $3e $1d
	cp a                                             ; $4f87: $bf
	sbc l                                            ; $4f88: $9d
	sbc $b7                                          ; $4f89: $de $b7
	sbc $cf                                          ; $4f8b: $de $cf
	ld a, [hl]                                       ; $4f8d: $7e
	bit 7, [hl]                                      ; $4f8e: $cb $7e
	ld l, e                                          ; $4f90: $6b
	cp h                                             ; $4f91: $bc
	daa                                              ; $4f92: $27
	db $fc                                           ; $4f93: $fc

jr_06c_4f94:
	and a                                            ; $4f94: $a7
	db $fc                                           ; $4f95: $fc
	db $d3                                           ; $4f96: $d3
	cp $eb                                           ; $4f97: $fe $eb
	cp [hl]                                          ; $4f99: $be
	db $eb                                           ; $4f9a: $eb
	sub [hl]                                         ; $4f9b: $96
	cp [hl]                                          ; $4f9c: $be
	rst AddAOntoHL                                          ; $4f9d: $ef
	ld a, [hl-]                                      ; $4f9e: $3a
	rst $38                                          ; $4f9f: $ff
	ld [hl-], a                                      ; $4fa0: $32
	ld a, a                                          ; $4fa1: $7f
	or d                                             ; $4fa2: $b2
	rst $38                                          ; $4fa3: $ff
	or d                                             ; $4fa4: $b2
	ld a, e                                          ; $4fa5: $7b
	ld a, e                                          ; $4fa6: $7b
	sub h                                            ; $4fa7: $94
	jr nz, @+$01                                     ; $4fa8: $20 $ff

	ret nz                                           ; $4faa: $c0

	rst $38                                          ; $4fab: $ff
	ldh [$fc], a                                     ; $4fac: $e0 $fc
	ld [hl], b                                       ; $4fae: $70
	ld hl, sp-$40                                    ; $4faf: $f8 $c0
	or b                                             ; $4fb1: $b0
	ldh [$7b], a                                     ; $4fb2: $e0 $7b
	cp $9c                                           ; $4fb4: $fe $9c
	ld h, b                                          ; $4fb6: $60
	ret nz                                           ; $4fb7: $c0

	ret nz                                           ; $4fb8: $c0

	di                                               ; $4fb9: $f3
	sub h                                            ; $4fba: $94
	ldh a, [$c0]                                     ; $4fbb: $f0 $c0
	rst $38                                          ; $4fbd: $ff
	inc a                                            ; $4fbe: $3c
	rst $38                                          ; $4fbf: $ff
	inc bc                                           ; $4fc0: $03
	pop hl                                           ; $4fc1: $e1
	nop                                              ; $4fc2: $00
	ret nz                                           ; $4fc3: $c0

	nop                                              ; $4fc4: $00
	add b                                            ; $4fc5: $80
	ld a, [$b693]                                    ; $4fc6: $fa $93 $b6
	rst AddAOntoHL                                          ; $4fc9: $ef
	rst AddAOntoHL                                          ; $4fca: $ef
	ld a, a                                          ; $4fcb: $7f
	rst $38                                          ; $4fcc: $ff
	halt                                             ; $4fcd: $76
	rst $38                                          ; $4fce: $ff
	ld h, d                                          ; $4fcf: $62
	rst $38                                          ; $4fd0: $ff
	ld h, a                                          ; $4fd1: $67
	db $fd                                           ; $4fd2: $fd
	ld c, h                                          ; $4fd3: $4c
	ld a, e                                          ; $4fd4: $7b
	adc d                                            ; $4fd5: $8a
	add b                                            ; $4fd6: $80
	rlca                                             ; $4fd7: $07
	rst $38                                          ; $4fd8: $ff
	rlca                                             ; $4fd9: $07
	inc sp                                           ; $4fda: $33
	ld [bc], a                                       ; $4fdb: $02
	ld bc, $0003                                     ; $4fdc: $01 $03 $00
	nop                                              ; $4fdf: $00
	inc e                                            ; $4fe0: $1c
	nop                                              ; $4fe1: $00
	ld c, $10                                        ; $4fe2: $0e $10
	ld a, [bc]                                       ; $4fe4: $0a
	inc c                                            ; $4fe5: $0c
	inc c                                            ; $4fe6: $0c
	ld [$ff44], sp                                   ; $4fe7: $08 $44 $ff
	jp $e2ff                                         ; $4fea: $c3 $ff $e2


	ccf                                              ; $4fed: $3f
	pop af                                           ; $4fee: $f1
	rra                                              ; $4fef: $1f
	db $fd                                           ; $4ff0: $fd
	rst GetHLinHL                                          ; $4ff1: $cf
	ei                                               ; $4ff2: $fb
	rst FarCall                                          ; $4ff3: $f7
	ld a, [$8de7]                                    ; $4ff4: $fa $e7 $8d
	ld e, h                                          ; $4ff7: $5c
	rst JumpTable                                          ; $4ff8: $c7
	ld b, l                                          ; $4ff9: $45

jr_06c_4ffa:
	add $e5                                          ; $4ffa: $c6 $e5
	ld b, [hl]                                       ; $4ffc: $46
	rst JumpTable                                          ; $4ffd: $c7
	add [hl]                                         ; $4ffe: $86
	rlca                                             ; $4fff: $07
	ld b, $06                                        ; $5000: $06 $06
	rlca                                             ; $5002: $07
	ld b, $07                                        ; $5003: $06 $07
	dec b                                            ; $5005: $05
	rlca                                             ; $5006: $07
	add hl, bc                                       ; $5007: $09
	rrca                                             ; $5008: $0f
	ld b, e                                          ; $5009: $43
	ld b, b                                          ; $500a: $40
	sbc d                                            ; $500b: $9a
	ret c                                            ; $500c: $d8

	cp a                                             ; $500d: $bf
	ret nc                                           ; $500e: $d0

	ld a, a                                          ; $500f: $7f
	add c                                            ; $5010: $81
	ld a, e                                          ; $5011: $7b
	cp b                                             ; $5012: $b8
	sbc b                                            ; $5013: $98
	rrca                                             ; $5014: $0f
	ld a, [hl]                                       ; $5015: $7e
	cp [hl]                                          ; $5016: $be
	ld a, [$c18b]                                    ; $5017: $fa $8b $c1
	add c                                            ; $501a: $81
	ld b, e                                          ; $501b: $43
	ld h, b                                          ; $501c: $60
	sbc b                                            ; $501d: $98
	nop                                              ; $501e: $00
	rst $38                                          ; $501f: $ff
	nop                                              ; $5020: $00
	db $fc                                           ; $5021: $fc
	ldh a, [$f8]                                     ; $5022: $f0 $f8
	ldh a, [rPCM34]                                  ; $5024: $f0 $77
	ld h, b                                          ; $5026: $60
	sbc e                                            ; $5027: $9b
	ldh a, [rAUD4LEN]                                ; $5028: $f0 $20
	ret nz                                           ; $502a: $c0

	ret nz                                           ; $502b: $c0

	ld h, e                                          ; $502c: $63
	add b                                            ; $502d: $80
	sub h                                            ; $502e: $94
	ld h, b                                          ; $502f: $60
	rst $38                                          ; $5030: $ff
	ld b, b                                          ; $5031: $40
	rst $38                                          ; $5032: $ff
	inc bc                                           ; $5033: $03
	db $fd                                           ; $5034: $fd
	dec b                                            ; $5035: $05
	rst $38                                          ; $5036: $ff
	rlca                                             ; $5037: $07
	ld [hl-], a                                      ; $5038: $32
	inc bc                                           ; $5039: $03
	ld e, a                                          ; $503a: $5f
	add b                                            ; $503b: $80
	sbc [hl]                                         ; $503c: $9e
	inc b                                            ; $503d: $04
	ld e, a                                          ; $503e: $5f
	add b                                            ; $503f: $80
	sbc b                                            ; $5040: $98
	rrca                                             ; $5041: $0f
	ei                                               ; $5042: $fb
	rlca                                             ; $5043: $07
	ld a, [$fcf7]                                    ; $5044: $fa $f7 $fc
	rst SubAFromHL                                          ; $5047: $d7
	inc bc                                           ; $5048: $03
	add b                                            ; $5049: $80
	ld [hl], a                                       ; $504a: $77
	add b                                            ; $504b: $80
	sbc [hl]                                         ; $504c: $9e
	add b                                            ; $504d: $80
	ld a, e                                          ; $504e: $7b
	add b                                            ; $504f: $80
	sbc b                                            ; $5050: $98
	nop                                              ; $5051: $00
	ld a, a                                          ; $5052: $7f
	add e                                            ; $5053: $83
	rst $38                                          ; $5054: $ff
	adc a                                            ; $5055: $8f
	rst GetHLinHL                                          ; $5056: $cf
	add e                                            ; $5057: $83
	inc sp                                           ; $5058: $33
	add b                                            ; $5059: $80
	sbc b                                            ; $505a: $98
	ret nz                                           ; $505b: $c0

	ld hl, sp+$30                                    ; $505c: $f8 $30
	ldh a, [rSVBK]                                   ; $505e: $f0 $70
	ldh [$e0], a                                     ; $5060: $e0 $e0
	ld a, d                                          ; $5062: $7a
	pop hl                                           ; $5063: $e1
	ld c, a                                          ; $5064: $4f
	add b                                            ; $5065: $80
	sbc [hl]                                         ; $5066: $9e
	ld bc, $e27b                                     ; $5067: $01 $7b $e2
	sbc e                                            ; $506a: $9b
	ld bc, $0737                                     ; $506b: $01 $37 $07
	rlca                                             ; $506e: $07
	daa                                              ; $506f: $27
	add b                                            ; $5070: $80
	sub [hl]                                         ; $5071: $96
	rst JumpTable                                          ; $5072: $c7
	db $fc                                           ; $5073: $fc
	scf                                              ; $5074: $37
	push hl                                          ; $5075: $e5
	and $65                                          ; $5076: $e6 $65
	and $e7                                          ; $5078: $e6 $e7
	add $03                                          ; $507a: $c6 $03
	add b                                            ; $507c: $80
	ld a, a                                          ; $507d: $7f
	cp b                                             ; $507e: $b8
	sbc [hl]                                         ; $507f: $9e
	rlca                                             ; $5080: $07
	ld a, e                                          ; $5081: $7b
	ld a, [$807f]                                    ; $5082: $fa $7f $80
	sbc [hl]                                         ; $5085: $9e
	add a                                            ; $5086: $87
	inc sp                                           ; $5087: $33
	add b                                            ; $5088: $80
	sub [hl]                                         ; $5089: $96
	nop                                              ; $508a: $00
	ld hl, sp-$30                                    ; $508b: $f8 $d0
	ldh a, [$30]                                     ; $508d: $f0 $30
	ldh a, [$f0]                                     ; $508f: $f0 $f0
	ldh [$e0], a                                     ; $5091: $e0 $e0
	ld c, e                                          ; $5093: $4b
	add b                                            ; $5094: $80
	ld a, e                                          ; $5095: $7b
	add d                                            ; $5096: $82
	ld a, a                                          ; $5097: $7f
	db $fc                                           ; $5098: $fc
	dec de                                           ; $5099: $1b
	add b                                            ; $509a: $80
	sbc c                                            ; $509b: $99
	rlca                                             ; $509c: $07
	db $fc                                           ; $509d: $fc
	rst FarCall                                          ; $509e: $f7
	push hl                                          ; $509f: $e5
	ld h, $e5                                        ; $50a0: $26 $e5
	ld d, e                                          ; $50a2: $53
	add b                                            ; $50a3: $80
	sub b                                            ; $50a4: $90
	ld [$3400], sp                                   ; $50a5: $08 $00 $34
	inc b                                            ; $50a8: $04
	call nz, Call_06c_4c84                           ; $50a9: $c4 $84 $4c
	ld b, h                                          ; $50ac: $44
	jr c, jr_06c_50e7                                ; $50ad: $38 $38

	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	ld [$0100], sp                                   ; $50b1: $08 $00 $01
	ld [hl], a                                       ; $50b4: $77
	cp [hl]                                          ; $50b5: $be
	add b                                            ; $50b6: $80
	rst $38                                          ; $50b7: $ff
	cp $3f                                           ; $50b8: $fe $3f
	ld a, [hl]                                       ; $50ba: $7e
	rrca                                             ; $50bb: $0f
	inc h                                            ; $50bc: $24
	rlca                                             ; $50bd: $07
	ld [$090f], sp                                   ; $50be: $08 $0f $09
	rrca                                             ; $50c1: $0f
	inc de                                           ; $50c2: $13
	rra                                              ; $50c3: $1f
	add hl, bc                                       ; $50c4: $09
	rrca                                             ; $50c5: $0f
	ld de, $111f                                     ; $50c6: $11 $1f $11
	rra                                              ; $50c9: $1f
	add hl, hl                                       ; $50ca: $29
	ccf                                              ; $50cb: $3f
	add hl, hl                                       ; $50cc: $29
	ccf                                              ; $50cd: $3f
	ld c, d                                          ; $50ce: $4a
	ld a, a                                          ; $50cf: $7f
	jp nc, $92ff                                     ; $50d0: $d2 $ff $92

	rst $38                                          ; $50d3: $ff
	inc de                                           ; $50d4: $13
	rst $38                                          ; $50d5: $ff
	sbc [hl]                                         ; $50d6: $9e
	dec d                                            ; $50d7: $15
	ld a, c                                          ; $50d8: $79
	ld h, d                                          ; $50d9: $62
	sub l                                            ; $50da: $95
	ld h, a                                          ; $50db: $67
	db $fc                                           ; $50dc: $fc
	ld l, a                                          ; $50dd: $6f
	ld hl, sp-$11                                    ; $50de: $f8 $ef
	ld hl, sp-$21                                    ; $50e0: $f8 $df
	ldh a, [$df]                                     ; $50e2: $f0 $df
	ld [hl], b                                       ; $50e4: $70
	ld a, e                                          ; $50e5: $7b
	sub [hl]                                         ; $50e6: $96

jr_06c_50e7:
	sbc [hl]                                         ; $50e7: $9e
	inc b                                            ; $50e8: $04
	sbc $64                                          ; $50e9: $de $64
	sbc h                                            ; $50eb: $9c
	jr nz, @+$3a                                     ; $50ec: $20 $38

	jr jr_06c_511f                                   ; $50ee: $18 $2f

	ret nz                                           ; $50f0: $c0

	ld [hl], e                                       ; $50f1: $73
	ldh [rOCPD], a                                   ; $50f2: $e0 $6b
	ldh [c], a                                       ; $50f4: $e2
	rst $38                                          ; $50f5: $ff
	scf                                              ; $50f6: $37
	ldh [$df], a                                     ; $50f7: $e0 $df
	inc c                                            ; $50f9: $0c
	sbc [hl]                                         ; $50fa: $9e
	ld a, b                                          ; $50fb: $78
	ld a, e                                          ; $50fc: $7b
	cp d                                             ; $50fd: $ba
	ld [hl], a                                       ; $50fe: $77
	ldh [c], a                                       ; $50ff: $e2
	scf                                              ; $5100: $37
	ldh [$bf], a                                     ; $5101: $e0 $bf
	ld bc, $e194                                     ; $5103: $01 $94 $e1
	scf                                              ; $5106: $37
	xor c                                            ; $5107: $a9
	ld [hl], a                                       ; $5108: $77
	and c                                            ; $5109: $a1
	ld a, a                                          ; $510a: $7f
	ld [hl+], a                                      ; $510b: $22
	rst $38                                          ; $510c: $ff
	ld [hl+], a                                      ; $510d: $22
	rst $38                                          ; $510e: $ff
	ld b, h                                          ; $510f: $44
	ld [hl], e                                       ; $5110: $73
	cp $8e                                           ; $5111: $fe $8e
	ld c, b                                          ; $5113: $48
	rst $38                                          ; $5114: $ff
	adc c                                            ; $5115: $89
	rst $38                                          ; $5116: $ff
	sub e                                            ; $5117: $93
	rst $38                                          ; $5118: $ff
	daa                                              ; $5119: $27
	rst $38                                          ; $511a: $ff
	dec a                                            ; $511b: $3d
	rst $38                                          ; $511c: $ff
	rst SubAFromBC                                          ; $511d: $e7
	db $fd                                           ; $511e: $fd

jr_06c_511f:
	and [hl]                                         ; $511f: $a6
	db $fd                                           ; $5120: $fd
	sbc c                                            ; $5121: $99
	or $54                                           ; $5122: $f6 $54
	ld [hl], e                                       ; $5124: $73
	cp $80                                           ; $5125: $fe $80
	ld [hl-], a                                      ; $5127: $32
	ei                                               ; $5128: $fb
	ld [hl-], a                                      ; $5129: $32
	ei                                               ; $512a: $fb
	ld [de], a                                       ; $512b: $12
	ei                                               ; $512c: $fb
	sub c                                            ; $512d: $91
	db $fd                                           ; $512e: $fd
	ld c, c                                          ; $512f: $49
	db $fd                                           ; $5130: $fd
	xor b                                            ; $5131: $a8
	cp $fc                                           ; $5132: $fe $fc
	cp $fc                                           ; $5134: $fe $fc
	rst JumpTable                                          ; $5136: $c7
	and $83                                          ; $5137: $e6 $83
	rst GetHLinHL                                          ; $5139: $cf
	pop bc                                           ; $513a: $c1
	rst SubAFromDE                                          ; $513b: $df
	ld b, c                                          ; $513c: $41
	ccf                                              ; $513d: $3f
	jr nz, jr_06c_517f                               ; $513e: $20 $3f

	nop                                              ; $5140: $00
	ld d, b                                          ; $5141: $50
	cp a                                             ; $5142: $bf
	sub b                                            ; $5143: $90
	ld a, a                                          ; $5144: $7f
	sub c                                            ; $5145: $91
	add b                                            ; $5146: $80
	ld a, a                                          ; $5147: $7f
	ld sp, $31ff                                     ; $5148: $31 $ff $31
	rst $38                                          ; $514b: $ff
	ld [hl], d                                       ; $514c: $72
	rst SubAFromDE                                          ; $514d: $df
	ld d, e                                          ; $514e: $53
	rst $38                                          ; $514f: $ff
	ld [hl], a                                       ; $5150: $77
	db $fc                                           ; $5151: $fc
	rst SubAFromDE                                          ; $5152: $df
	ld sp, hl                                        ; $5153: $f9
	cp a                                             ; $5154: $bf
	rst SubAFromHL                                          ; $5155: $d7
	ld a, [hl]                                       ; $5156: $7e
	adc [hl]                                         ; $5157: $8e
	db $fd                                           ; $5158: $fd
	dec c                                            ; $5159: $0d
	db $fd                                           ; $515a: $fd
	dec e                                            ; $515b: $1d
	ld a, a                                          ; $515c: $7f
	cp e                                             ; $515d: $bb
	ei                                               ; $515e: $fb
	adc d                                            ; $515f: $8a
	pop bc                                           ; $5160: $c1
	add c                                            ; $5161: $81
	ret nz                                           ; $5162: $c0

	add b                                            ; $5163: $80
	ld b, b                                          ; $5164: $40
	ret nz                                           ; $5165: $c0

	add b                                            ; $5166: $80
	ret nz                                           ; $5167: $c0

	ld h, b                                          ; $5168: $60
	ld [hl], b                                       ; $5169: $70
	ld h, b                                          ; $516a: $60
	jr nc, jr_06c_51e5                               ; $516b: $30 $78

	ld a, b                                          ; $516d: $78
	inc a                                            ; $516e: $3c
	cp a                                             ; $516f: $bf
	ld a, $1d                                        ; $5170: $3e $1d
	cp a                                             ; $5172: $bf
	sbc l                                            ; $5173: $9d
	sbc $b7                                          ; $5174: $de $b7
	sbc $cf                                          ; $5176: $de $cf
	ld a, [hl]                                       ; $5178: $7e
	bit 7, [hl]                                      ; $5179: $cb $7e
	ld l, e                                          ; $517b: $6b
	cp h                                             ; $517c: $bc
	daa                                              ; $517d: $27
	db $fc                                           ; $517e: $fc

jr_06c_517f:
	and a                                            ; $517f: $a7
	db $fc                                           ; $5180: $fc
	db $d3                                           ; $5181: $d3
	cp $eb                                           ; $5182: $fe $eb
	cp [hl]                                          ; $5184: $be
	db $eb                                           ; $5185: $eb
	sbc d                                            ; $5186: $9a
	cp [hl]                                          ; $5187: $be
	rst AddAOntoHL                                          ; $5188: $ef
	ld a, [hl-]                                      ; $5189: $3a
	rst $38                                          ; $518a: $ff
	ld [hl-], a                                      ; $518b: $32
	ld [hl], e                                       ; $518c: $73
	cp $92                                           ; $518d: $fe $92
	and d                                            ; $518f: $a2
	rst $38                                          ; $5190: $ff
	jr nz, @+$01                                     ; $5191: $20 $ff

	ret nz                                           ; $5193: $c0

	rst $38                                          ; $5194: $ff
	ldh [$fc], a                                     ; $5195: $e0 $fc
	ld [hl], b                                       ; $5197: $70
	ld hl, sp-$40                                    ; $5198: $f8 $c0
	or b                                             ; $519a: $b0
	ldh [$7b], a                                     ; $519b: $e0 $7b
	cp $9c                                           ; $519d: $fe $9c
	ld h, b                                          ; $519f: $60
	ret nz                                           ; $51a0: $c0

	ret nz                                           ; $51a1: $c0

	di                                               ; $51a2: $f3
	sub h                                            ; $51a3: $94
	ldh a, [$c0]                                     ; $51a4: $f0 $c0
	rst $38                                          ; $51a6: $ff
	inc a                                            ; $51a7: $3c
	rst $38                                          ; $51a8: $ff
	inc bc                                           ; $51a9: $03
	pop hl                                           ; $51aa: $e1
	nop                                              ; $51ab: $00
	ret nz                                           ; $51ac: $c0

	nop                                              ; $51ad: $00
	add b                                            ; $51ae: $80
	ld a, [$bf80]                                    ; $51af: $fa $80 $bf
	and $f6                                          ; $51b2: $e6 $f6
	ld l, a                                          ; $51b4: $6f
	rst AddAOntoHL                                          ; $51b5: $ef
	ld a, a                                          ; $51b6: $7f
	rst $38                                          ; $51b7: $ff
	ld [hl], d                                       ; $51b8: $72
	rst $38                                          ; $51b9: $ff
	ld h, a                                          ; $51ba: $67
	rst $38                                          ; $51bb: $ff
	ld c, [hl]                                       ; $51bc: $4e
	db $fd                                           ; $51bd: $fd
	dec c                                            ; $51be: $0d
	rst $38                                          ; $51bf: $ff
	rlca                                             ; $51c0: $07
	rst $38                                          ; $51c1: $ff
	rlca                                             ; $51c2: $07
	inc sp                                           ; $51c3: $33
	ld [bc], a                                       ; $51c4: $02
	ld bc, $0003                                     ; $51c5: $01 $03 $00
	nop                                              ; $51c8: $00
	inc e                                            ; $51c9: $1c
	nop                                              ; $51ca: $00
	ld c, $10                                        ; $51cb: $0e $10
	ld a, [bc]                                       ; $51cd: $0a
	inc c                                            ; $51ce: $0c
	inc b                                            ; $51cf: $04
	add b                                            ; $51d0: $80
	ld [$7fc4], sp                                   ; $51d1: $08 $c4 $7f
	ld b, e                                          ; $51d4: $43
	rst $38                                          ; $51d5: $ff
	ldh [c], a                                       ; $51d6: $e2
	rst $38                                          ; $51d7: $ff
	pop af                                           ; $51d8: $f1
	rra                                              ; $51d9: $1f
	db $fd                                           ; $51da: $fd
	rst GetHLinHL                                          ; $51db: $cf
	ei                                               ; $51dc: $fb
	rst FarCall                                          ; $51dd: $f7
	ld a, [$5ce7]                                    ; $51de: $fa $e7 $5c
	rst JumpTable                                          ; $51e1: $c7
	ld b, l                                          ; $51e2: $45
	add $e5                                          ; $51e3: $c6 $e5

jr_06c_51e5:
	ld b, [hl]                                       ; $51e5: $46
	rst JumpTable                                          ; $51e6: $c7
	add [hl]                                         ; $51e7: $86
	rlca                                             ; $51e8: $07
	ld b, $06                                        ; $51e9: $06 $06
	rlca                                             ; $51eb: $07
	ld b, $07                                        ; $51ec: $06 $07
	dec b                                            ; $51ee: $05
	rlca                                             ; $51ef: $07
	sbc l                                            ; $51f0: $9d
	add hl, bc                                       ; $51f1: $09
	rrca                                             ; $51f2: $0f
	ld b, e                                          ; $51f3: $43
	ld b, b                                          ; $51f4: $40
	sbc d                                            ; $51f5: $9a
	ld hl, sp-$41                                    ; $51f6: $f8 $bf
	ret nc                                           ; $51f8: $d0

	ld a, a                                          ; $51f9: $7f
	add b                                            ; $51fa: $80
	ld a, e                                          ; $51fb: $7b
	cp b                                             ; $51fc: $b8
	sbc b                                            ; $51fd: $98
	nop                                              ; $51fe: $00
	ld a, a                                          ; $51ff: $7f
	add e                                            ; $5200: $83
	rst $38                                          ; $5201: $ff
	adc a                                            ; $5202: $8f
	rst GetHLinHL                                          ; $5203: $cf
	add e                                            ; $5204: $83
	ld b, e                                          ; $5205: $43
	ld h, b                                          ; $5206: $60
	sub h                                            ; $5207: $94
	nop                                              ; $5208: $00
	rst $38                                          ; $5209: $ff
	nop                                              ; $520a: $00
	db $fc                                           ; $520b: $fc
	ret nz                                           ; $520c: $c0

	ld hl, sp+$30                                    ; $520d: $f8 $30
	ldh a, [rSVBK]                                   ; $520f: $f0 $70
	ldh [$e0], a                                     ; $5211: $e0 $e0
	ld a, e                                          ; $5213: $7b
	ld h, c                                          ; $5214: $61
	sbc [hl]                                         ; $5215: $9e
	ret nz                                           ; $5216: $c0

	ld h, e                                          ; $5217: $63
	add b                                            ; $5218: $80
	sbc d                                            ; $5219: $9a
	ld h, b                                          ; $521a: $60
	rst $38                                          ; $521b: $ff
	ld b, b                                          ; $521c: $40
	rst $38                                          ; $521d: $ff
	ld bc, $e27b                                     ; $521e: $01 $7b $e2
	sbc e                                            ; $5221: $9b
	ld bc, $0737                                     ; $5222: $01 $37 $07
	rlca                                             ; $5225: $07
	scf                                              ; $5226: $37
	add b                                            ; $5227: $80
	sub d                                            ; $5228: $92
	rrca                                             ; $5229: $0f
	ei                                               ; $522a: $fb
	rlca                                             ; $522b: $07
	ld a, [$fcc7]                                    ; $522c: $fa $c7 $fc
	scf                                              ; $522f: $37
	push hl                                          ; $5230: $e5
	and $65                                          ; $5231: $e6 $65
	and $e7                                          ; $5233: $e6 $e7
	add $03                                          ; $5235: $c6 $03
	add b                                            ; $5237: $80
	inc bc                                           ; $5238: $03
	add b                                            ; $5239: $80
	inc bc                                           ; $523a: $03
	add b                                            ; $523b: $80
	inc bc                                           ; $523c: $03
	add b                                            ; $523d: $80
	inc de                                           ; $523e: $13
	add b                                            ; $523f: $80
	ld a, a                                          ; $5240: $7f
	cp b                                             ; $5241: $b8
	sbc [hl]                                         ; $5242: $9e
	rlca                                             ; $5243: $07
	ld a, e                                          ; $5244: $7b
	ld a, [$807f]                                    ; $5245: $fa $7f $80
	sbc [hl]                                         ; $5248: $9e
	add a                                            ; $5249: $87
	inc sp                                           ; $524a: $33
	add b                                            ; $524b: $80
	sub [hl]                                         ; $524c: $96
	nop                                              ; $524d: $00
	ld hl, sp-$30                                    ; $524e: $f8 $d0
	ldh a, [$30]                                     ; $5250: $f0 $30
	ldh a, [$f0]                                     ; $5252: $f0 $f0
	ldh [$e0], a                                     ; $5254: $e0 $e0
	ld c, e                                          ; $5256: $4b
	add b                                            ; $5257: $80
	ld a, e                                          ; $5258: $7b
	add d                                            ; $5259: $82
	ld a, a                                          ; $525a: $7f
	db $fc                                           ; $525b: $fc
	dec de                                           ; $525c: $1b
	add b                                            ; $525d: $80
	sbc c                                            ; $525e: $99
	rlca                                             ; $525f: $07
	db $fc                                           ; $5260: $fc
	rst FarCall                                          ; $5261: $f7
	push hl                                          ; $5262: $e5
	ld h, $e5                                        ; $5263: $26 $e5
	ld d, e                                          ; $5265: $53
	add b                                            ; $5266: $80
	ld a, e                                          ; $5267: $7b
	sub $97                                          ; $5268: $d6 $97
	inc b                                            ; $526a: $04
	ld h, h                                          ; $526b: $64
	ld b, h                                          ; $526c: $44
	jr c, jr_06c_5287                                ; $526d: $38 $18

	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	inc c                                            ; $5271: $0c
	cp $9e                                           ; $5272: $fe $9e
	ld bc, $be77                                     ; $5274: $01 $77 $be
	add b                                            ; $5277: $80
	rst $38                                          ; $5278: $ff
	cp $3f                                           ; $5279: $fe $3f
	ld a, [hl]                                       ; $527b: $7e
	rrca                                             ; $527c: $0f
	inc h                                            ; $527d: $24
	rlca                                             ; $527e: $07
	ld [$090f], sp                                   ; $527f: $08 $0f $09
	rrca                                             ; $5282: $0f
	inc de                                           ; $5283: $13
	rra                                              ; $5284: $1f
	add hl, bc                                       ; $5285: $09
	rrca                                             ; $5286: $0f

jr_06c_5287:
	ld de, $111f                                     ; $5287: $11 $1f $11
	rra                                              ; $528a: $1f
	add hl, hl                                       ; $528b: $29
	ccf                                              ; $528c: $3f
	add hl, hl                                       ; $528d: $29
	ccf                                              ; $528e: $3f
	ld c, d                                          ; $528f: $4a
	ld a, a                                          ; $5290: $7f
	jp nc, $92ff                                     ; $5291: $d2 $ff $92

	rst $38                                          ; $5294: $ff
	inc de                                           ; $5295: $13
	rst $38                                          ; $5296: $ff
	sbc [hl]                                         ; $5297: $9e
	dec d                                            ; $5298: $15
	ld a, c                                          ; $5299: $79
	ld h, d                                          ; $529a: $62
	sub l                                            ; $529b: $95
	ld h, a                                          ; $529c: $67
	db $fc                                           ; $529d: $fc
	ld l, a                                          ; $529e: $6f
	ld hl, sp-$11                                    ; $529f: $f8 $ef
	ld hl, sp-$21                                    ; $52a1: $f8 $df
	ldh a, [$df]                                     ; $52a3: $f0 $df
	ld [hl], b                                       ; $52a5: $70
	ld l, a                                          ; $52a6: $6f
	ret nz                                           ; $52a7: $c0

	ld a, e                                          ; $52a8: $7b
	cp [hl]                                          ; $52a9: $be
	sbc e                                            ; $52aa: $9b
	jr c, jr_06c_52ad                                ; $52ab: $38 $00

jr_06c_52ad:
	nop                                              ; $52ad: $00
	ld [$c03b], sp                                   ; $52ae: $08 $3b $c0
	ld l, e                                          ; $52b1: $6b
	and b                                            ; $52b2: $a0
	ld [hl], e                                       ; $52b3: $73
	ldh [c], a                                       ; $52b4: $e2
	scf                                              ; $52b5: $37
	and b                                            ; $52b6: $a0
	ld a, e                                          ; $52b7: $7b
	adc b                                            ; $52b8: $88
	sbc h                                            ; $52b9: $9c
	inc c                                            ; $52ba: $0c
	jr c, jr_06c_52ed                                ; $52bb: $38 $30

	ld l, a                                          ; $52bd: $6f
	ldh [c], a                                       ; $52be: $e2
	scf                                              ; $52bf: $37
	ldh [$fd], a                                     ; $52c0: $e0 $fd
	ld bc, $e194                                     ; $52c2: $01 $94 $e1
	scf                                              ; $52c5: $37
	xor c                                            ; $52c6: $a9
	ld [hl], a                                       ; $52c7: $77
	and c                                            ; $52c8: $a1
	ld a, a                                          ; $52c9: $7f
	ld [hl+], a                                      ; $52ca: $22
	rst $38                                          ; $52cb: $ff
	ld [hl+], a                                      ; $52cc: $22
	rst $38                                          ; $52cd: $ff
	ld b, h                                          ; $52ce: $44
	ld [hl], e                                       ; $52cf: $73
	cp $8e                                           ; $52d0: $fe $8e
	ld c, b                                          ; $52d2: $48
	rst $38                                          ; $52d3: $ff
	adc c                                            ; $52d4: $89
	rst $38                                          ; $52d5: $ff
	sub e                                            ; $52d6: $93
	rst $38                                          ; $52d7: $ff
	daa                                              ; $52d8: $27
	rst $38                                          ; $52d9: $ff
	dec a                                            ; $52da: $3d
	rst $38                                          ; $52db: $ff
	rst SubAFromBC                                          ; $52dc: $e7
	db $fd                                           ; $52dd: $fd
	and [hl]                                         ; $52de: $a6
	db $fd                                           ; $52df: $fd
	sbc c                                            ; $52e0: $99
	or $54                                           ; $52e1: $f6 $54
	ld [hl], e                                       ; $52e3: $73
	cp $80                                           ; $52e4: $fe $80
	ld [hl-], a                                      ; $52e6: $32
	ei                                               ; $52e7: $fb
	ld [hl-], a                                      ; $52e8: $32
	ei                                               ; $52e9: $fb
	ld [de], a                                       ; $52ea: $12
	ei                                               ; $52eb: $fb
	sub c                                            ; $52ec: $91

jr_06c_52ed:
	db $fd                                           ; $52ed: $fd
	ld c, c                                          ; $52ee: $49
	db $fd                                           ; $52ef: $fd
	xor b                                            ; $52f0: $a8
	cp $fc                                           ; $52f1: $fe $fc
	cp $fc                                           ; $52f3: $fe $fc
	rst JumpTable                                          ; $52f5: $c7
	and $83                                          ; $52f6: $e6 $83
	rst GetHLinHL                                          ; $52f8: $cf
	pop bc                                           ; $52f9: $c1
	rst SubAFromDE                                          ; $52fa: $df
	ld b, c                                          ; $52fb: $41
	ccf                                              ; $52fc: $3f
	jr nz, jr_06c_533e                               ; $52fd: $20 $3f

	nop                                              ; $52ff: $00
	ld d, b                                          ; $5300: $50
	cp a                                             ; $5301: $bf
	sub b                                            ; $5302: $90
	ld a, a                                          ; $5303: $7f
	sub c                                            ; $5304: $91
	add b                                            ; $5305: $80
	ld a, a                                          ; $5306: $7f
	ld sp, $31ff                                     ; $5307: $31 $ff $31
	rst $38                                          ; $530a: $ff
	ld [hl], e                                       ; $530b: $73
	sbc $53                                          ; $530c: $de $53
	rst $38                                          ; $530e: $ff
	ld [hl], a                                       ; $530f: $77
	db $fc                                           ; $5310: $fc
	rst SubAFromDE                                          ; $5311: $df
	ld hl, sp-$41                                    ; $5312: $f8 $bf
	rst SubAFromHL                                          ; $5314: $d7
	ld a, [hl]                                       ; $5315: $7e
	adc [hl]                                         ; $5316: $8e
	db $fd                                           ; $5317: $fd
	dec c                                            ; $5318: $0d
	db $fd                                           ; $5319: $fd
	dec e                                            ; $531a: $1d
	ld a, a                                          ; $531b: $7f
	cp e                                             ; $531c: $bb
	ei                                               ; $531d: $fb
	adc d                                            ; $531e: $8a
	pop bc                                           ; $531f: $c1
	add c                                            ; $5320: $81
	ret nz                                           ; $5321: $c0

	add b                                            ; $5322: $80
	ld b, b                                          ; $5323: $40
	ret nz                                           ; $5324: $c0

	add b                                            ; $5325: $80
	ret nz                                           ; $5326: $c0

	ld h, b                                          ; $5327: $60
	ld [hl], b                                       ; $5328: $70
	ld h, b                                          ; $5329: $60
	jr nc, @+$7a                                     ; $532a: $30 $78

	ld a, b                                          ; $532c: $78
	inc a                                            ; $532d: $3c
	cp a                                             ; $532e: $bf
	ld a, $1d                                        ; $532f: $3e $1d
	cp a                                             ; $5331: $bf
	sbc l                                            ; $5332: $9d
	sbc $b7                                          ; $5333: $de $b7
	sbc $cf                                          ; $5335: $de $cf
	ld a, [hl]                                       ; $5337: $7e
	bit 7, [hl]                                      ; $5338: $cb $7e
	ld l, e                                          ; $533a: $6b
	cp h                                             ; $533b: $bc
	daa                                              ; $533c: $27
	db $fc                                           ; $533d: $fc

jr_06c_533e:
	and a                                            ; $533e: $a7
	db $fc                                           ; $533f: $fc
	db $d3                                           ; $5340: $d3
	cp $eb                                           ; $5341: $fe $eb
	cp [hl]                                          ; $5343: $be
	db $eb                                           ; $5344: $eb
	sbc d                                            ; $5345: $9a
	cp [hl]                                          ; $5346: $be
	rst AddAOntoHL                                          ; $5347: $ef
	ld a, [hl-]                                      ; $5348: $3a
	rst $38                                          ; $5349: $ff
	ld [hl-], a                                      ; $534a: $32
	ld [hl], a                                       ; $534b: $77
	cp $91                                           ; $534c: $fe $91
	ccf                                              ; $534e: $3f
	ldh [c], a                                       ; $534f: $e2
	rst AddAOntoHL                                          ; $5350: $ef
	ldh a, [rIE]                                     ; $5351: $f0 $ff
	jr @+$01                                         ; $5353: $18 $ff

	ldh [$fc], a                                     ; $5355: $e0 $fc
	ld [hl], b                                       ; $5357: $70
	ld hl, sp-$40                                    ; $5358: $f8 $c0
	or b                                             ; $535a: $b0
	ldh [$7b], a                                     ; $535b: $e0 $7b
	cp $9c                                           ; $535d: $fe $9c
	ld h, b                                          ; $535f: $60
	ret nz                                           ; $5360: $c0

	ret nz                                           ; $5361: $c0

	di                                               ; $5362: $f3
	sub h                                            ; $5363: $94
	ldh a, [$c0]                                     ; $5364: $f0 $c0
	rst $38                                          ; $5366: $ff
	inc a                                            ; $5367: $3c
	rst $38                                          ; $5368: $ff
	inc bc                                           ; $5369: $03
	pop hl                                           ; $536a: $e1
	nop                                              ; $536b: $00
	ret nz                                           ; $536c: $c0

	nop                                              ; $536d: $00
	add b                                            ; $536e: $80
	ld a, [$bf80]                                    ; $536f: $fa $80 $bf
	and $fe                                          ; $5372: $e6 $fe
	ld h, a                                          ; $5374: $67
	rst $38                                          ; $5375: $ff
	ld h, a                                          ; $5376: $67
	rst FarCall                                          ; $5377: $f7
	ld l, h                                          ; $5378: $6c
	rst AddAOntoHL                                          ; $5379: $ef
	ld a, e                                          ; $537a: $7b
	rst $38                                          ; $537b: $ff
	ld d, [hl]                                       ; $537c: $56
	db $fd                                           ; $537d: $fd
	dec c                                            ; $537e: $0d
	rst $38                                          ; $537f: $ff
	rlca                                             ; $5380: $07
	rst $38                                          ; $5381: $ff
	rlca                                             ; $5382: $07
	inc sp                                           ; $5383: $33
	ld [bc], a                                       ; $5384: $02
	ld bc, $0003                                     ; $5385: $01 $03 $00
	nop                                              ; $5388: $00
	inc e                                            ; $5389: $1c
	nop                                              ; $538a: $00
	ld c, $10                                        ; $538b: $0e $10
	ld a, [bc]                                       ; $538d: $0a
	inc c                                            ; $538e: $0c
	inc b                                            ; $538f: $04
	add b                                            ; $5390: $80
	ld [$7fc4], sp                                   ; $5391: $08 $c4 $7f
	jp $e2ff                                         ; $5394: $c3 $ff $e2


	ccf                                              ; $5397: $3f
	pop af                                           ; $5398: $f1
	rra                                              ; $5399: $1f
	db $fd                                           ; $539a: $fd
	rst GetHLinHL                                          ; $539b: $cf
	ei                                               ; $539c: $fb
	rst FarCall                                          ; $539d: $f7
	ld a, [$5ce7]                                    ; $539e: $fa $e7 $5c
	rst JumpTable                                          ; $53a1: $c7
	ld b, l                                          ; $53a2: $45
	add $e5                                          ; $53a3: $c6 $e5
	ld b, [hl]                                       ; $53a5: $46
	rst JumpTable                                          ; $53a6: $c7
	add [hl]                                         ; $53a7: $86
	rlca                                             ; $53a8: $07
	ld b, $06                                        ; $53a9: $06 $06
	rlca                                             ; $53ab: $07
	ld b, $07                                        ; $53ac: $06 $07
	dec b                                            ; $53ae: $05
	rlca                                             ; $53af: $07
	sbc l                                            ; $53b0: $9d
	add hl, bc                                       ; $53b1: $09
	rrca                                             ; $53b2: $0f
	ld b, a                                          ; $53b3: $47
	ld b, b                                          ; $53b4: $40
	sbc c                                            ; $53b5: $99
	rst $38                                          ; $53b6: $ff
	ret c                                            ; $53b7: $d8

	rst $38                                          ; $53b8: $ff
	sub b                                            ; $53b9: $90
	ld a, a                                          ; $53ba: $7f
	add c                                            ; $53bb: $81
	ld a, e                                          ; $53bc: $7b
	cp b                                             ; $53bd: $b8
	sbc d                                            ; $53be: $9a
	rrca                                             ; $53bf: $0f
	ld a, [hl]                                       ; $53c0: $7e
	cp [hl]                                          ; $53c1: $be
	ld a, [$038b]                                    ; $53c2: $fa $8b $03
	ld b, b                                          ; $53c5: $40
	scf                                              ; $53c6: $37
	ld b, b                                          ; $53c7: $40
	sbc d                                            ; $53c8: $9a
	nop                                              ; $53c9: $00
	db $fc                                           ; $53ca: $fc
	ldh a, [$f8]                                     ; $53cb: $f0 $f8
	ldh a, [rPCM34]                                  ; $53cd: $f0 $77
	ld b, b                                          ; $53cf: $40
	sbc l                                            ; $53d0: $9d
	ldh a, [rAUD4LEN]                                ; $53d1: $f0 $20
	rlca                                             ; $53d3: $07
	ld b, b                                          ; $53d4: $40
	ld a, a                                          ; $53d5: $7f
	ld a, [$4063]                                    ; $53d6: $fa $63 $40
	sub h                                            ; $53d9: $94
	ld a, b                                          ; $53da: $78
	rst $38                                          ; $53db: $ff
	ld d, c                                          ; $53dc: $51
	rst $38                                          ; $53dd: $ff
	inc bc                                           ; $53de: $03
	db $fd                                           ; $53df: $fd
	dec b                                            ; $53e0: $05
	rst AddAOntoHL                                          ; $53e1: $ef
	rla                                              ; $53e2: $17
	ld [hl-], a                                      ; $53e3: $32
	inc bc                                           ; $53e4: $03
	scf                                              ; $53e5: $37
	ld b, b                                          ; $53e6: $40
	sub a                                            ; $53e7: $97
	ld sp, hl                                        ; $53e8: $f9
	rrca                                             ; $53e9: $0f
	rst $38                                          ; $53ea: $ff
	rst JumpTable                                          ; $53eb: $c7
	ld a, [$fcf7]                                    ; $53ec: $fa $f7 $fc
	rst SubAFromHL                                          ; $53ef: $d7
	inc bc                                           ; $53f0: $03
	ld b, b                                          ; $53f1: $40
	ld [hl], a                                       ; $53f2: $77
	ld b, b                                          ; $53f3: $40
	sbc [hl]                                         ; $53f4: $9e
	add b                                            ; $53f5: $80
	ld a, e                                          ; $53f6: $7b
	ld b, b                                          ; $53f7: $40
	sbc b                                            ; $53f8: $98
	nop                                              ; $53f9: $00
	ld a, a                                          ; $53fa: $7f
	add e                                            ; $53fb: $83
	rst $38                                          ; $53fc: $ff
	adc a                                            ; $53fd: $8f
	rst GetHLinHL                                          ; $53fe: $cf
	add e                                            ; $53ff: $83
	inc bc                                           ; $5400: $03
	ld b, b                                          ; $5401: $40
	scf                                              ; $5402: $37
	ld b, b                                          ; $5403: $40
	sbc b                                            ; $5404: $98
	ret nz                                           ; $5405: $c0

	ld hl, sp+$30                                    ; $5406: $f8 $30
	ldh a, [rSVBK]                                   ; $5408: $f0 $70
	ldh [$e0], a                                     ; $540a: $e0 $e0
	ld a, d                                          ; $540c: $7a
	add c                                            ; $540d: $81
	inc bc                                           ; $540e: $03
	ld b, b                                          ; $540f: $40
	ld e, e                                          ; $5410: $5b
	ld b, b                                          ; $5411: $40
	sub l                                            ; $5412: $95
	ld d, b                                          ; $5413: $50
	rst $38                                          ; $5414: $ff
	ld bc, $00ff                                     ; $5415: $01 $ff $00
	rst $38                                          ; $5418: $ff
	ld bc, $0f3f                                     ; $5419: $01 $3f $0f
	rrca                                             ; $541c: $0f
	cpl                                              ; $541d: $2f
	ld b, b                                          ; $541e: $40
	sub h                                            ; $541f: $94
	rlca                                             ; $5420: $07
	ld a, [$fcc7]                                    ; $5421: $fa $c7 $fc
	scf                                              ; $5424: $37
	push af                                          ; $5425: $f5
	and $65                                          ; $5426: $e6 $65
	and $e7                                          ; $5428: $e6 $e7
	add $0f                                          ; $542a: $c6 $0f
	ld b, b                                          ; $542c: $40
	sub e                                            ; $542d: $93
	rst $38                                          ; $542e: $ff
	db $10                                           ; $542f: $10
	rst $38                                          ; $5430: $ff
	jr nz, @+$01                                     ; $5431: $20 $ff

	rlca                                             ; $5433: $07
	ld a, a                                          ; $5434: $7f
	add b                                            ; $5435: $80
	cp a                                             ; $5436: $bf
	adc a                                            ; $5437: $8f
	adc a                                            ; $5438: $8f
	add a                                            ; $5439: $87
	inc bc                                           ; $543a: $03
	ld b, b                                          ; $543b: $40
	scf                                              ; $543c: $37
	ld b, b                                          ; $543d: $40
	sbc d                                            ; $543e: $9a
	nop                                              ; $543f: $00
	ld hl, sp-$30                                    ; $5440: $f8 $d0
	ldh a, [$30]                                     ; $5442: $f0 $30
	sbc $f0                                          ; $5444: $de $f0
	sbc [hl]                                         ; $5446: $9e
	ldh [$03], a                                     ; $5447: $e0 $03
	ld b, b                                          ; $5449: $40
	ld c, a                                          ; $544a: $4f
	ld b, b                                          ; $544b: $40
	ld a, a                                          ; $544c: $7f
	ld b, d                                          ; $544d: $42
	sbc h                                            ; $544e: $9c
	inc bc                                           ; $544f: $03
	rst $38                                          ; $5450: $ff
	nop                                              ; $5451: $00
	ld a, e                                          ; $5452: $7b
	ld b, b                                          ; $5453: $40
	sbc [hl]                                         ; $5454: $9e
	rlca                                             ; $5455: $07
	cpl                                              ; $5456: $2f
	ld b, b                                          ; $5457: $40
	sub a                                            ; $5458: $97
	db $fc                                           ; $5459: $fc
	rlca                                             ; $545a: $07
	cp $e5                                           ; $545b: $fe $e5
	push hl                                          ; $545d: $e5
	ld b, [hl]                                       ; $545e: $46
	push bc                                          ; $545f: $c5
	add $56                                          ; $5460: $c6 $56
	add b                                            ; $5462: $80
	ld a, e                                          ; $5463: $7b
	sub $99                                          ; $5464: $d6 $99
	inc e                                            ; $5466: $1c
	jr nz, jr_06c_5489                               ; $5467: $20 $20

	ld b, b                                          ; $5469: $40
	ld b, b                                          ; $546a: $40
	ld [$9efc], sp                                   ; $546b: $08 $fc $9e
	ld bc, $007b                                     ; $546e: $01 $7b $00
	rst SubAFromDE                                          ; $5471: $df
	rst $38                                          ; $5472: $ff
	add b                                            ; $5473: $80
	cp $3f                                           ; $5474: $fe $3f
	ld a, [hl]                                       ; $5476: $7e
	rrca                                             ; $5477: $0f
	inc h                                            ; $5478: $24
	rlca                                             ; $5479: $07
	ld [$090f], sp                                   ; $547a: $08 $0f $09
	rrca                                             ; $547d: $0f
	inc de                                           ; $547e: $13
	rra                                              ; $547f: $1f
	add hl, bc                                       ; $5480: $09
	rrca                                             ; $5481: $0f
	ld de, $111f                                     ; $5482: $11 $1f $11
	rra                                              ; $5485: $1f
	add hl, hl                                       ; $5486: $29
	ccf                                              ; $5487: $3f
	add hl, hl                                       ; $5488: $29

jr_06c_5489:
	ccf                                              ; $5489: $3f
	ld c, d                                          ; $548a: $4a
	ld a, a                                          ; $548b: $7f
	jp nc, $92ff                                     ; $548c: $d2 $ff $92

	rst $38                                          ; $548f: $ff
	inc de                                           ; $5490: $13
	rst $38                                          ; $5491: $ff
	dec d                                            ; $5492: $15
	ld a, b                                          ; $5493: $78
	and d                                            ; $5494: $a2
	sub l                                            ; $5495: $95
	ld h, a                                          ; $5496: $67
	db $fc                                           ; $5497: $fc
	ld l, a                                          ; $5498: $6f
	ld hl, sp-$11                                    ; $5499: $f8 $ef
	ld hl, sp-$21                                    ; $549b: $f8 $df
	ldh a, [$df]                                     ; $549d: $f0 $df
	ld [hl], b                                       ; $549f: $70
	ld [hl], a                                       ; $54a0: $77
	ret nz                                           ; $54a1: $c0

	sub [hl]                                         ; $54a2: $96
	inc a                                            ; $54a3: $3c
	inc l                                            ; $54a4: $2c
	inc a                                            ; $54a5: $3c
	inc h                                            ; $54a6: $24
	jr c, @+$1a                                      ; $54a7: $38 $18

	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	ld [$c03b], sp                                   ; $54ab: $08 $3b $c0
	ld l, a                                          ; $54ae: $6f
	ldh [hDisp1_WX], a                                     ; $54af: $e0 $96
	ld a, h                                          ; $54b1: $7c
	ld b, h                                          ; $54b2: $44
	ld a, h                                          ; $54b3: $7c
	ld b, h                                          ; $54b4: $44
	jr c, @+$3a                                      ; $54b5: $38 $38

	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	add hl, bc                                       ; $54b9: $09
	inc bc                                           ; $54ba: $03
	ldh [rBGP], a                                    ; $54bb: $e0 $47
	ldh [$c8], a                                     ; $54bd: $e0 $c8
	ld bc, $e194                                     ; $54bf: $01 $94 $e1
	scf                                              ; $54c2: $37
	xor c                                            ; $54c3: $a9
	ld [hl], a                                       ; $54c4: $77
	and c                                            ; $54c5: $a1
	ld a, a                                          ; $54c6: $7f
	ld [hl+], a                                      ; $54c7: $22
	rst $38                                          ; $54c8: $ff
	ld [hl+], a                                      ; $54c9: $22
	rst $38                                          ; $54ca: $ff
	ld b, h                                          ; $54cb: $44
	ld [hl], e                                       ; $54cc: $73
	cp $8e                                           ; $54cd: $fe $8e
	ld c, b                                          ; $54cf: $48
	rst $38                                          ; $54d0: $ff
	adc c                                            ; $54d1: $89
	rst $38                                          ; $54d2: $ff
	sub e                                            ; $54d3: $93
	rst $38                                          ; $54d4: $ff
	daa                                              ; $54d5: $27
	rst $38                                          ; $54d6: $ff
	dec a                                            ; $54d7: $3d
	rst $38                                          ; $54d8: $ff
	rst SubAFromBC                                          ; $54d9: $e7
	db $fd                                           ; $54da: $fd
	and [hl]                                         ; $54db: $a6
	db $fd                                           ; $54dc: $fd
	sbc c                                            ; $54dd: $99
	or $54                                           ; $54de: $f6 $54
	ld [hl], e                                       ; $54e0: $73
	cp $80                                           ; $54e1: $fe $80
	ld [hl-], a                                      ; $54e3: $32
	ei                                               ; $54e4: $fb
	ld [hl-], a                                      ; $54e5: $32
	ei                                               ; $54e6: $fb
	ld [de], a                                       ; $54e7: $12
	ei                                               ; $54e8: $fb
	sub c                                            ; $54e9: $91
	db $fd                                           ; $54ea: $fd
	ld c, c                                          ; $54eb: $49
	db $fd                                           ; $54ec: $fd
	xor b                                            ; $54ed: $a8
	cp $fc                                           ; $54ee: $fe $fc
	cp $fc                                           ; $54f0: $fe $fc
	rst JumpTable                                          ; $54f2: $c7
	and $83                                          ; $54f3: $e6 $83
	rst GetHLinHL                                          ; $54f5: $cf
	pop bc                                           ; $54f6: $c1
	rst SubAFromDE                                          ; $54f7: $df
	ld b, c                                          ; $54f8: $41
	ccf                                              ; $54f9: $3f
	jr nz, jr_06c_553b                               ; $54fa: $20 $3f

	nop                                              ; $54fc: $00
	ld d, b                                          ; $54fd: $50
	cp a                                             ; $54fe: $bf
	sub b                                            ; $54ff: $90
	ld a, a                                          ; $5500: $7f
	sub c                                            ; $5501: $91
	add b                                            ; $5502: $80
	ld a, a                                          ; $5503: $7f
	ld sp, $31ff                                     ; $5504: $31 $ff $31
	rst $38                                          ; $5507: $ff
	ld [hl], e                                       ; $5508: $73
	sbc $53                                          ; $5509: $de $53
	rst $38                                          ; $550b: $ff
	ld [hl], a                                       ; $550c: $77
	db $fc                                           ; $550d: $fc
	rst SubAFromDE                                          ; $550e: $df
	ld hl, sp-$41                                    ; $550f: $f8 $bf
	rst SubAFromHL                                          ; $5511: $d7
	ld a, [hl]                                       ; $5512: $7e
	adc [hl]                                         ; $5513: $8e
	db $fd                                           ; $5514: $fd
	dec c                                            ; $5515: $0d
	db $fd                                           ; $5516: $fd
	dec e                                            ; $5517: $1d
	ld a, a                                          ; $5518: $7f
	cp e                                             ; $5519: $bb
	ei                                               ; $551a: $fb
	adc d                                            ; $551b: $8a
	pop bc                                           ; $551c: $c1
	add c                                            ; $551d: $81
	ret nz                                           ; $551e: $c0

	add b                                            ; $551f: $80
	ld b, b                                          ; $5520: $40
	ret nz                                           ; $5521: $c0

	add b                                            ; $5522: $80
	ret nz                                           ; $5523: $c0

	ld h, b                                          ; $5524: $60
	ld [hl], b                                       ; $5525: $70
	ld h, b                                          ; $5526: $60
	jr nc, @+$7a                                     ; $5527: $30 $78

	ld a, b                                          ; $5529: $78
	inc a                                            ; $552a: $3c
	cp a                                             ; $552b: $bf
	ld a, $1d                                        ; $552c: $3e $1d
	cp a                                             ; $552e: $bf
	sbc l                                            ; $552f: $9d
	sbc $b7                                          ; $5530: $de $b7
	sbc $cf                                          ; $5532: $de $cf
	ld a, [hl]                                       ; $5534: $7e
	bit 7, [hl]                                      ; $5535: $cb $7e
	ld l, e                                          ; $5537: $6b
	cp h                                             ; $5538: $bc
	daa                                              ; $5539: $27
	db $fc                                           ; $553a: $fc

jr_06c_553b:
	and a                                            ; $553b: $a7
	db $fc                                           ; $553c: $fc
	db $d3                                           ; $553d: $d3
	cp $eb                                           ; $553e: $fe $eb
	cp [hl]                                          ; $5540: $be
	db $eb                                           ; $5541: $eb
	sbc d                                            ; $5542: $9a
	cp [hl]                                          ; $5543: $be
	rst AddAOntoHL                                          ; $5544: $ef
	ld a, [hl-]                                      ; $5545: $3a
	rst $38                                          ; $5546: $ff
	ld [hl-], a                                      ; $5547: $32
	ld [hl], a                                       ; $5548: $77
	cp $8b                                           ; $5549: $fe $8b
	ccf                                              ; $554b: $3f
	ldh [c], a                                       ; $554c: $e2
	rst SubAFromBC                                          ; $554d: $e7
	ld hl, sp-$05                                    ; $554e: $f8 $fb
	inc e                                            ; $5550: $1c
	rst $38                                          ; $5551: $ff
	db $ec                                           ; $5552: $ec
	db $fc                                           ; $5553: $fc
	ld [hl], b                                       ; $5554: $70
	ld hl, sp-$40                                    ; $5555: $f8 $c0
	or b                                             ; $5557: $b0
	ldh [$b0], a                                     ; $5558: $e0 $b0
	ldh [$b8], a                                     ; $555a: $e0 $b8
	ld h, b                                          ; $555c: $60
	ret nz                                           ; $555d: $c0

	ret nz                                           ; $555e: $c0

	di                                               ; $555f: $f3
	sbc b                                            ; $5560: $98
	ldh a, [$c0]                                     ; $5561: $f0 $c0
	rst $38                                          ; $5563: $ff
	inc a                                            ; $5564: $3c
	rst $38                                          ; $5565: $ff
	inc bc                                           ; $5566: $03
	pop hl                                           ; $5567: $e1
	cp e                                             ; $5568: $bb
	ret nz                                           ; $5569: $c0

	add b                                            ; $556a: $80
	nop                                              ; $556b: $00
	nop                                              ; $556c: $00
	nop                                              ; $556d: $00
	cp a                                             ; $556e: $bf
	adc c                                            ; $556f: $89
	and $fe                                          ; $5570: $e6 $fe
	ld h, a                                          ; $5572: $67
	rst $38                                          ; $5573: $ff
	ld h, a                                          ; $5574: $67
	db $fd                                           ; $5575: $fd
	ld h, [hl]                                       ; $5576: $66
	rst FarCall                                          ; $5577: $f7
	ld l, a                                          ; $5578: $6f
	rst FarCall                                          ; $5579: $f7
	ld c, [hl]                                       ; $557a: $4e
	db $ed                                           ; $557b: $ed
	dec e                                            ; $557c: $1d
	rst $38                                          ; $557d: $ff
	rla                                              ; $557e: $17
	rst $38                                          ; $557f: $ff
	rlca                                             ; $5580: $07
	inc sp                                           ; $5581: $33
	ld [bc], a                                       ; $5582: $02
	ld bc, $0003                                     ; $5583: $01 $03 $00
	cp a                                             ; $5586: $bf
	inc e                                            ; $5587: $1c
	ld c, $80                                        ; $5588: $0e $80
	db $10                                           ; $558a: $10
	ld a, [bc]                                       ; $558b: $0a
	inc c                                            ; $558c: $0c
	inc b                                            ; $558d: $04
	ld [$7fc4], sp                                   ; $558e: $08 $c4 $7f
	jp $e2ff                                         ; $5591: $c3 $ff $e2


	ccf                                              ; $5594: $3f
	pop af                                           ; $5595: $f1
	rra                                              ; $5596: $1f
	db $fd                                           ; $5597: $fd
	rst GetHLinHL                                          ; $5598: $cf
	ei                                               ; $5599: $fb
	rst FarCall                                          ; $559a: $f7
	ld a, [$5ce7]                                    ; $559b: $fa $e7 $5c
	rst JumpTable                                          ; $559e: $c7
	ld b, l                                          ; $559f: $45
	add $e5                                          ; $55a0: $c6 $e5
	ld b, [hl]                                       ; $55a2: $46
	rst JumpTable                                          ; $55a3: $c7
	add [hl]                                         ; $55a4: $86
	rlca                                             ; $55a5: $07
	ld b, $06                                        ; $55a6: $06 $06
	rlca                                             ; $55a8: $07
	ld a, a                                          ; $55a9: $7f
	cp $9b                                           ; $55aa: $fe $9b
	dec b                                            ; $55ac: $05
	rlca                                             ; $55ad: $07
	add hl, bc                                       ; $55ae: $09
	rrca                                             ; $55af: $0f
	ld b, a                                          ; $55b0: $47
	ld b, b                                          ; $55b1: $40
	adc a                                            ; $55b2: $8f
	rst $38                                          ; $55b3: $ff
	ret c                                            ; $55b4: $d8

	cp a                                             ; $55b5: $bf
	ret nc                                           ; $55b6: $d0

	ld a, a                                          ; $55b7: $7f
	add b                                            ; $55b8: $80
	rst $38                                          ; $55b9: $ff
	rlca                                             ; $55ba: $07
	rst $38                                          ; $55bb: $ff
	nop                                              ; $55bc: $00
	ld a, a                                          ; $55bd: $7f
	add e                                            ; $55be: $83
	rst $38                                          ; $55bf: $ff
	adc a                                            ; $55c0: $8f
	rst GetHLinHL                                          ; $55c1: $cf
	add e                                            ; $55c2: $83
	inc bc                                           ; $55c3: $03
	ld b, b                                          ; $55c4: $40
	ccf                                              ; $55c5: $3f
	ld b, b                                          ; $55c6: $40
	sub l                                            ; $55c7: $95
	inc c                                            ; $55c8: $0c
	db $fc                                           ; $55c9: $fc
	ret nz                                           ; $55ca: $c0

	ld hl, sp+$30                                    ; $55cb: $f8 $30
	ldh a, [rSVBK]                                   ; $55cd: $f0 $70
	ldh [$e0], a                                     ; $55cf: $e0 $e0
	ld [hl], b                                       ; $55d1: $70
	sbc $c0                                          ; $55d2: $de $c0
	rrca                                             ; $55d4: $0f
	ld b, b                                          ; $55d5: $40
	ld a, a                                          ; $55d6: $7f
	ld a, [$4063]                                    ; $55d7: $fa $63 $40
	sub e                                            ; $55da: $93
	ld l, [hl]                                       ; $55db: $6e
	rst FarCall                                          ; $55dc: $f7
	ld c, h                                          ; $55dd: $4c
	rst AddAOntoHL                                          ; $55de: $ef
	add hl, de                                       ; $55df: $19
	rst $38                                          ; $55e0: $ff
	db $10                                           ; $55e1: $10
	rst $38                                          ; $55e2: $ff
	ld bc, $0737                                     ; $55e3: $01 $37 $07
	rlca                                             ; $55e6: $07
	scf                                              ; $55e7: $37
	ld b, b                                          ; $55e8: $40
	sub d                                            ; $55e9: $92
	rrca                                             ; $55ea: $0f
	ei                                               ; $55eb: $fb
	rlca                                             ; $55ec: $07
	ld a, [$fcc7]                                    ; $55ed: $fa $c7 $fc
	scf                                              ; $55f0: $37
	push hl                                          ; $55f1: $e5
	and $65                                          ; $55f2: $e6 $65
	and $e7                                          ; $55f4: $e6 $e7
	add $03                                          ; $55f6: $c6 $03
	ld b, b                                          ; $55f8: $40
	inc bc                                           ; $55f9: $03
	ld b, b                                          ; $55fa: $40
	inc bc                                           ; $55fb: $03
	ld b, b                                          ; $55fc: $40
	inc bc                                           ; $55fd: $03
	ld b, b                                          ; $55fe: $40
	inc bc                                           ; $55ff: $03
	ld b, b                                          ; $5600: $40
	inc bc                                           ; $5601: $03
	ld b, b                                          ; $5602: $40
	dec de                                           ; $5603: $1b
	ld b, b                                          ; $5604: $40
	sbc h                                            ; $5605: $9c
	nop                                              ; $5606: $00
	rst $38                                          ; $5607: $ff
	rlca                                             ; $5608: $07
	ld a, e                                          ; $5609: $7b
	ld a, [$407f]                                    ; $560a: $fa $7f $40
	sbc [hl]                                         ; $560d: $9e
	add a                                            ; $560e: $87
	inc bc                                           ; $560f: $03
	ld b, b                                          ; $5610: $40
	scf                                              ; $5611: $37
	ld b, b                                          ; $5612: $40
	sub [hl]                                         ; $5613: $96
	nop                                              ; $5614: $00
	ld hl, sp-$30                                    ; $5615: $f8 $d0
	ldh a, [$30]                                     ; $5617: $f0 $30
	ldh a, [$f0]                                     ; $5619: $f0 $f0
	ld hl, sp-$20                                    ; $561b: $f8 $e0
	inc bc                                           ; $561d: $03
	ld b, b                                          ; $561e: $40
	ld c, a                                          ; $561f: $4f
	ld b, b                                          ; $5620: $40
	sbc d                                            ; $5621: $9a
	jr @+$01                                         ; $5622: $18 $ff

	ld de, $00ff                                     ; $5624: $11 $ff $00
	dec de                                           ; $5627: $1b
	ld b, b                                          ; $5628: $40
	sbc c                                            ; $5629: $99
	rlca                                             ; $562a: $07
	db $fc                                           ; $562b: $fc
	rst FarCall                                          ; $562c: $f7
	push hl                                          ; $562d: $e5
	ld h, $e5                                        ; $562e: $26 $e5
	ld d, e                                          ; $5630: $53
	ld b, b                                          ; $5631: $40
	ld a, e                                          ; $5632: $7b
	sub $99                                          ; $5633: $d6 $99
	inc e                                            ; $5635: $1c
	inc l                                            ; $5636: $2c
	inc l                                            ; $5637: $2c
	jr nc, jr_06c_566a                               ; $5638: $30 $30

	inc b                                            ; $563a: $04
	cp l                                             ; $563b: $bd
	ld [$0100], sp                                   ; $563c: $08 $00 $01
	rst $38                                          ; $563f: $ff
	add b                                            ; $5640: $80
	ld bc, rIE                                     ; $5641: $01 $ff $ff
	cp $3f                                           ; $5644: $fe $3f
	ld a, [hl]                                       ; $5646: $7e
	rrca                                             ; $5647: $0f
	inc h                                            ; $5648: $24
	rlca                                             ; $5649: $07
	ld [$090f], sp                                   ; $564a: $08 $0f $09
	rrca                                             ; $564d: $0f
	inc de                                           ; $564e: $13
	rra                                              ; $564f: $1f
	add hl, bc                                       ; $5650: $09
	rrca                                             ; $5651: $0f
	ld de, $111f                                     ; $5652: $11 $1f $11
	rra                                              ; $5655: $1f
	add hl, hl                                       ; $5656: $29
	ccf                                              ; $5657: $3f
	add hl, hl                                       ; $5658: $29
	ccf                                              ; $5659: $3f
	ld c, d                                          ; $565a: $4a
	ld a, a                                          ; $565b: $7f
	jp nc, $92ff                                     ; $565c: $d2 $ff $92

	rst $38                                          ; $565f: $ff
	sbc h                                            ; $5660: $9c
	inc de                                           ; $5661: $13
	rst $38                                          ; $5662: $ff
	dec d                                            ; $5663: $15
	ld a, b                                          ; $5664: $78
	and d                                            ; $5665: $a2
	sub l                                            ; $5666: $95
	ld h, a                                          ; $5667: $67
	db $fc                                           ; $5668: $fc
	ld l, a                                          ; $5669: $6f

jr_06c_566a:
	ld hl, sp-$11                                    ; $566a: $f8 $ef
	ld hl, sp-$21                                    ; $566c: $f8 $df
	ldh a, [$df]                                     ; $566e: $f0 $df
	ld [hl], b                                       ; $5670: $70
	ld [hl], a                                       ; $5671: $77
	ret nz                                           ; $5672: $c0

	db $dd                                           ; $5673: $dd
	inc h                                            ; $5674: $24
	rst SubAFromDE                                          ; $5675: $df
	jr @+$01                                         ; $5676: $18 $ff

	sbc [hl]                                         ; $5678: $9e
	inc c                                            ; $5679: $0c
	dec sp                                           ; $567a: $3b
	ret nz                                           ; $567b: $c0

	ld h, a                                          ; $567c: $67
	ldh [$6f], a                                     ; $567d: $e0 $6f
	sbc $9e                                          ; $567f: $de $9e
	dec c                                            ; $5681: $0d
	inc bc                                           ; $5682: $03
	ldh [rBGP], a                                    ; $5683: $e0 $47
	ldh [$de], a                                     ; $5685: $e0 $de
	ld bc, $e194                                     ; $5687: $01 $94 $e1
	scf                                              ; $568a: $37
	xor c                                            ; $568b: $a9
	ld [hl], a                                       ; $568c: $77
	and c                                            ; $568d: $a1
	ld a, a                                          ; $568e: $7f
	ld [hl+], a                                      ; $568f: $22
	rst $38                                          ; $5690: $ff
	ld [hl+], a                                      ; $5691: $22
	rst $38                                          ; $5692: $ff
	ld b, h                                          ; $5693: $44
	ld [hl], e                                       ; $5694: $73
	cp $8e                                           ; $5695: $fe $8e
	ld c, b                                          ; $5697: $48
	rst $38                                          ; $5698: $ff
	adc c                                            ; $5699: $89
	rst $38                                          ; $569a: $ff
	sub e                                            ; $569b: $93
	rst $38                                          ; $569c: $ff
	daa                                              ; $569d: $27
	rst $38                                          ; $569e: $ff
	dec a                                            ; $569f: $3d
	rst $38                                          ; $56a0: $ff
	rst SubAFromBC                                          ; $56a1: $e7
	db $fd                                           ; $56a2: $fd
	and [hl]                                         ; $56a3: $a6
	db $fd                                           ; $56a4: $fd
	sbc c                                            ; $56a5: $99
	or $54                                           ; $56a6: $f6 $54
	ld [hl], e                                       ; $56a8: $73
	cp $80                                           ; $56a9: $fe $80
	ld [hl-], a                                      ; $56ab: $32
	ei                                               ; $56ac: $fb
	ld [hl-], a                                      ; $56ad: $32
	ei                                               ; $56ae: $fb
	ld [de], a                                       ; $56af: $12
	ei                                               ; $56b0: $fb
	sub c                                            ; $56b1: $91
	db $fd                                           ; $56b2: $fd
	ld c, c                                          ; $56b3: $49
	db $fd                                           ; $56b4: $fd
	xor b                                            ; $56b5: $a8
	cp $fc                                           ; $56b6: $fe $fc
	cp $fc                                           ; $56b8: $fe $fc
	rst JumpTable                                          ; $56ba: $c7
	and $83                                          ; $56bb: $e6 $83
	rst GetHLinHL                                          ; $56bd: $cf
	pop bc                                           ; $56be: $c1
	rst SubAFromDE                                          ; $56bf: $df
	ld b, c                                          ; $56c0: $41
	ccf                                              ; $56c1: $3f
	jr nz, jr_06c_5703                               ; $56c2: $20 $3f

	nop                                              ; $56c4: $00
	ld d, b                                          ; $56c5: $50
	cp a                                             ; $56c6: $bf
	sub b                                            ; $56c7: $90
	ld a, a                                          ; $56c8: $7f
	sub c                                            ; $56c9: $91
	add b                                            ; $56ca: $80
	ld a, a                                          ; $56cb: $7f
	ld sp, $31ff                                     ; $56cc: $31 $ff $31
	rst $38                                          ; $56cf: $ff
	ld [hl], e                                       ; $56d0: $73
	rst SubAFromDE                                          ; $56d1: $df
	ld [hl], e                                       ; $56d2: $73
	sbc $57                                          ; $56d3: $de $57
	db $fc                                           ; $56d5: $fc
	rst SubAFromDE                                          ; $56d6: $df
	ld sp, hl                                        ; $56d7: $f9
	cp a                                             ; $56d8: $bf
	rst FarCall                                          ; $56d9: $f7
	ld a, [hl]                                       ; $56da: $7e
	adc [hl]                                         ; $56db: $8e
	db $fd                                           ; $56dc: $fd
	dec c                                            ; $56dd: $0d
	db $fd                                           ; $56de: $fd
	dec e                                            ; $56df: $1d
	ld a, a                                          ; $56e0: $7f
	cp e                                             ; $56e1: $bb
	ei                                               ; $56e2: $fb
	adc d                                            ; $56e3: $8a
	pop bc                                           ; $56e4: $c1
	add c                                            ; $56e5: $81
	ret nz                                           ; $56e6: $c0

	add b                                            ; $56e7: $80
	ld b, b                                          ; $56e8: $40
	ret nz                                           ; $56e9: $c0

	add b                                            ; $56ea: $80
	ret nz                                           ; $56eb: $c0

	ld h, b                                          ; $56ec: $60
	ld [hl], b                                       ; $56ed: $70
	ld h, b                                          ; $56ee: $60
	jr nc, jr_06c_5769                               ; $56ef: $30 $78

	ld a, b                                          ; $56f1: $78
	inc a                                            ; $56f2: $3c
	cp a                                             ; $56f3: $bf
	ld a, $1d                                        ; $56f4: $3e $1d
	cp a                                             ; $56f6: $bf
	sbc l                                            ; $56f7: $9d
	sbc $b7                                          ; $56f8: $de $b7
	sbc $cf                                          ; $56fa: $de $cf
	ld a, [hl]                                       ; $56fc: $7e
	bit 7, [hl]                                      ; $56fd: $cb $7e
	ld l, e                                          ; $56ff: $6b
	cp h                                             ; $5700: $bc
	daa                                              ; $5701: $27
	db $fc                                           ; $5702: $fc

jr_06c_5703:
	and a                                            ; $5703: $a7
	db $fc                                           ; $5704: $fc
	db $d3                                           ; $5705: $d3
	cp $eb                                           ; $5706: $fe $eb
	cp [hl]                                          ; $5708: $be
	db $eb                                           ; $5709: $eb
	sub [hl]                                         ; $570a: $96
	cp [hl]                                          ; $570b: $be
	cpl                                              ; $570c: $2f
	ld a, [$f27f]                                    ; $570d: $fa $7f $f2
	rst $38                                          ; $5710: $ff
	or d                                             ; $5711: $b2
	rst $38                                          ; $5712: $ff
	ld [hl-], a                                      ; $5713: $32
	ld a, e                                          ; $5714: $7b
	ld a, e                                          ; $5715: $7b
	sub h                                            ; $5716: $94
	jr nz, @+$01                                     ; $5717: $20 $ff

	ret nz                                           ; $5719: $c0

	rst $38                                          ; $571a: $ff
	ldh [$fc], a                                     ; $571b: $e0 $fc
	ld [hl], b                                       ; $571d: $70
	ld hl, sp-$40                                    ; $571e: $f8 $c0
	or b                                             ; $5720: $b0
	ldh [$7b], a                                     ; $5721: $e0 $7b
	cp $9c                                           ; $5723: $fe $9c
	ld h, b                                          ; $5725: $60
	ret nz                                           ; $5726: $c0

	ret nz                                           ; $5727: $c0

	di                                               ; $5728: $f3
	sbc b                                            ; $5729: $98
	ldh a, [$c0]                                     ; $572a: $f0 $c0
	rst $38                                          ; $572c: $ff
	inc a                                            ; $572d: $3c
	rst $38                                          ; $572e: $ff
	inc bc                                           ; $572f: $03
	pop hl                                           ; $5730: $e1
	cp e                                             ; $5731: $bb
	ret nz                                           ; $5732: $c0

	add b                                            ; $5733: $80
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	xor a                                            ; $5737: $af
	rst SubAFromDE                                          ; $5738: $df
	or $8b                                           ; $5739: $f6 $8b
	ld a, a                                          ; $573b: $7f
	rst $38                                          ; $573c: $ff
	ld l, a                                          ; $573d: $6f
	rst $38                                          ; $573e: $ff
	ld h, d                                          ; $573f: $62
	rst $38                                          ; $5740: $ff
	ld h, a                                          ; $5741: $67
	rst $38                                          ; $5742: $ff
	ld c, [hl]                                       ; $5743: $4e
	db $fd                                           ; $5744: $fd
	dec c                                            ; $5745: $0d
	rst $38                                          ; $5746: $ff
	rlca                                             ; $5747: $07
	rst $38                                          ; $5748: $ff
	rlca                                             ; $5749: $07
	inc sp                                           ; $574a: $33
	ld [bc], a                                       ; $574b: $02
	ld bc, $0003                                     ; $574c: $01 $03 $00
	cp a                                             ; $574f: $bf
	inc e                                            ; $5750: $1c
	ld c, $80                                        ; $5751: $0e $80
	db $10                                           ; $5753: $10
	ld a, [bc]                                       ; $5754: $0a
	inc c                                            ; $5755: $0c
	inc b                                            ; $5756: $04
	ld [$7fc4], sp                                   ; $5757: $08 $c4 $7f
	ld b, e                                          ; $575a: $43
	rst $38                                          ; $575b: $ff
	ldh [c], a                                       ; $575c: $e2
	rst $38                                          ; $575d: $ff
	pop af                                           ; $575e: $f1
	rra                                              ; $575f: $1f
	db $fd                                           ; $5760: $fd
	rst GetHLinHL                                          ; $5761: $cf
	ei                                               ; $5762: $fb
	rst FarCall                                          ; $5763: $f7
	ld a, [$5ce7]                                    ; $5764: $fa $e7 $5c
	rst JumpTable                                          ; $5767: $c7
	ld b, l                                          ; $5768: $45

jr_06c_5769:
	add $e5                                          ; $5769: $c6 $e5
	ld b, [hl]                                       ; $576b: $46
	rst JumpTable                                          ; $576c: $c7
	add [hl]                                         ; $576d: $86
	rlca                                             ; $576e: $07
	ld b, $06                                        ; $576f: $06 $06
	rlca                                             ; $5771: $07
	ld a, a                                          ; $5772: $7f
	cp $9b                                           ; $5773: $fe $9b
	dec b                                            ; $5775: $05
	rlca                                             ; $5776: $07
	add hl, bc                                       ; $5777: $09
	rrca                                             ; $5778: $0f
	ld b, e                                          ; $5779: $43
	ld b, b                                          ; $577a: $40
	sbc d                                            ; $577b: $9a
	ld hl, sp-$41                                    ; $577c: $f8 $bf
	ldh a, [$7f]                                     ; $577e: $f0 $7f
	add c                                            ; $5780: $81
	ld a, e                                          ; $5781: $7b
	cp b                                             ; $5782: $b8
	sbc b                                            ; $5783: $98
	rrca                                             ; $5784: $0f
	ld a, [hl]                                       ; $5785: $7e
	cp [hl]                                          ; $5786: $be
	ld a, [$c18b]                                    ; $5787: $fa $8b $c1
	add c                                            ; $578a: $81
	ld b, e                                          ; $578b: $43
	ld h, b                                          ; $578c: $60
	cp a                                             ; $578d: $bf
	rst $38                                          ; $578e: $ff
	db $fc                                           ; $578f: $fc
	sbc h                                            ; $5790: $9c
	ldh a, [$f8]                                     ; $5791: $f0 $f8
	ldh a, [rPCM34]                                  ; $5793: $f0 $77
	ld h, b                                          ; $5795: $60
	sbc e                                            ; $5796: $9b
	ldh a, [rAUD4LEN]                                ; $5797: $f0 $20
	ret nz                                           ; $5799: $c0

	ret nz                                           ; $579a: $c0

	ld h, e                                          ; $579b: $63
	add b                                            ; $579c: $80
	sub h                                            ; $579d: $94
	ld h, b                                          ; $579e: $60
	rst $38                                          ; $579f: $ff
	ld b, b                                          ; $57a0: $40
	rst $38                                          ; $57a1: $ff
	inc bc                                           ; $57a2: $03
	db $fd                                           ; $57a3: $fd
	dec b                                            ; $57a4: $05
	rst $38                                          ; $57a5: $ff
	rlca                                             ; $57a6: $07
	ld [hl-], a                                      ; $57a7: $32
	inc bc                                           ; $57a8: $03
	inc sp                                           ; $57a9: $33
	add b                                            ; $57aa: $80
	sbc b                                            ; $57ab: $98
	rrca                                             ; $57ac: $0f
	ei                                               ; $57ad: $fb
	rlca                                             ; $57ae: $07
	ld a, [$fcf7]                                    ; $57af: $fa $f7 $fc
	rst SubAFromHL                                          ; $57b2: $d7
	inc bc                                           ; $57b3: $03
	add b                                            ; $57b4: $80
	ld [hl], a                                       ; $57b5: $77
	add b                                            ; $57b6: $80
	sbc [hl]                                         ; $57b7: $9e
	add b                                            ; $57b8: $80
	ld a, e                                          ; $57b9: $7b
	add b                                            ; $57ba: $80
	sbc b                                            ; $57bb: $98
	nop                                              ; $57bc: $00
	ld a, a                                          ; $57bd: $7f
	add e                                            ; $57be: $83
	rst $38                                          ; $57bf: $ff
	adc a                                            ; $57c0: $8f
	rst GetHLinHL                                          ; $57c1: $cf
	add e                                            ; $57c2: $83
	inc sp                                           ; $57c3: $33
	add b                                            ; $57c4: $80
	sbc b                                            ; $57c5: $98
	ret nz                                           ; $57c6: $c0

	ld hl, sp+$30                                    ; $57c7: $f8 $30
	ldh a, [rSVBK]                                   ; $57c9: $f0 $70
	ldh [$e0], a                                     ; $57cb: $e0 $e0
	ld a, d                                          ; $57cd: $7a
	pop hl                                           ; $57ce: $e1
	ld c, a                                          ; $57cf: $4f
	add b                                            ; $57d0: $80
	sbc [hl]                                         ; $57d1: $9e
	ld bc, $e27b                                     ; $57d2: $01 $7b $e2
	sbc e                                            ; $57d5: $9b
	ld bc, $0737                                     ; $57d6: $01 $37 $07
	rlca                                             ; $57d9: $07
	daa                                              ; $57da: $27
	add b                                            ; $57db: $80
	sub [hl]                                         ; $57dc: $96
	rst JumpTable                                          ; $57dd: $c7
	db $fc                                           ; $57de: $fc
	scf                                              ; $57df: $37
	push hl                                          ; $57e0: $e5
	and $65                                          ; $57e1: $e6 $65
	and $e7                                          ; $57e3: $e6 $e7
	add $03                                          ; $57e5: $c6 $03
	add b                                            ; $57e7: $80
	ld a, a                                          ; $57e8: $7f
	cp b                                             ; $57e9: $b8
	sbc [hl]                                         ; $57ea: $9e
	rlca                                             ; $57eb: $07
	ld a, e                                          ; $57ec: $7b
	ld a, [$807f]                                    ; $57ed: $fa $7f $80
	sbc [hl]                                         ; $57f0: $9e
	add a                                            ; $57f1: $87
	inc sp                                           ; $57f2: $33
	add b                                            ; $57f3: $80
	sub [hl]                                         ; $57f4: $96
	nop                                              ; $57f5: $00
	ld hl, sp-$30                                    ; $57f6: $f8 $d0
	ldh a, [$30]                                     ; $57f8: $f0 $30
	ldh a, [$f0]                                     ; $57fa: $f0 $f0
	ldh [$e0], a                                     ; $57fc: $e0 $e0
	ld c, e                                          ; $57fe: $4b
	add b                                            ; $57ff: $80
	ld a, e                                          ; $5800: $7b
	add d                                            ; $5801: $82
	ld a, a                                          ; $5802: $7f
	db $fc                                           ; $5803: $fc
	dec de                                           ; $5804: $1b
	add b                                            ; $5805: $80
	sbc c                                            ; $5806: $99
	rlca                                             ; $5807: $07
	db $fc                                           ; $5808: $fc
	rst FarCall                                          ; $5809: $f7
	push hl                                          ; $580a: $e5
	ld h, $e5                                        ; $580b: $26 $e5
	ld d, e                                          ; $580d: $53
	add b                                            ; $580e: $80
	rst $38                                          ; $580f: $ff
	sub [hl]                                         ; $5810: $96
	inc a                                            ; $5811: $3c
	inc b                                            ; $5812: $04
	call nz, Call_06c_4484                           ; $5813: $c4 $84 $44
	ld b, h                                          ; $5816: $44
	jr c, jr_06c_5851                                ; $5817: $38 $38

	nop                                              ; $5819: $00
	cp [hl]                                          ; $581a: $be
	ld [$ff01], sp                                   ; $581b: $08 $01 $ff
	ld a, a                                          ; $581e: $7f
	cp [hl]                                          ; $581f: $be
	add b                                            ; $5820: $80
	rst $38                                          ; $5821: $ff
	cp $3f                                           ; $5822: $fe $3f
	ld a, [hl]                                       ; $5824: $7e
	rrca                                             ; $5825: $0f
	inc h                                            ; $5826: $24
	rlca                                             ; $5827: $07
	ld [$090f], sp                                   ; $5828: $08 $0f $09
	rrca                                             ; $582b: $0f
	inc de                                           ; $582c: $13
	rra                                              ; $582d: $1f
	add hl, bc                                       ; $582e: $09
	rrca                                             ; $582f: $0f
	ld de, $111f                                     ; $5830: $11 $1f $11
	rra                                              ; $5833: $1f
	add hl, hl                                       ; $5834: $29
	ccf                                              ; $5835: $3f
	add hl, hl                                       ; $5836: $29
	ccf                                              ; $5837: $3f
	ld c, d                                          ; $5838: $4a
	ld a, a                                          ; $5839: $7f
	jp nc, $92ff                                     ; $583a: $d2 $ff $92

	rst $38                                          ; $583d: $ff
	inc de                                           ; $583e: $13
	rst $38                                          ; $583f: $ff
	sbc [hl]                                         ; $5840: $9e
	dec d                                            ; $5841: $15
	ld a, c                                          ; $5842: $79
	ld h, d                                          ; $5843: $62
	sub l                                            ; $5844: $95
	ld h, a                                          ; $5845: $67
	db $fc                                           ; $5846: $fc
	ld l, a                                          ; $5847: $6f
	ld hl, sp-$11                                    ; $5848: $f8 $ef
	ld hl, sp-$21                                    ; $584a: $f8 $df
	ldh a, [$df]                                     ; $584c: $f0 $df
	ld [hl], b                                       ; $584e: $70
	rlca                                             ; $584f: $07
	ret nz                                           ; $5850: $c0

jr_06c_5851:
	ld a, e                                          ; $5851: $7b
	ldh [$9c], a                                     ; $5852: $e0 $9c
	inc c                                            ; $5854: $0c
	call nz, Call_06c_6fc4                           ; $5855: $c4 $c4 $6f
	ldh [c], a                                       ; $5858: $e2
	rst $38                                          ; $5859: $ff
	scf                                              ; $585a: $37
	ldh [$df], a                                     ; $585b: $e0 $df
	inc c                                            ; $585d: $0c
	ld a, [hl]                                       ; $585e: $7e
	ld [hl-], a                                      ; $585f: $32
	ld l, a                                          ; $5860: $6f
	ldh [c], a                                       ; $5861: $e2
	scf                                              ; $5862: $37
	ldh [$bc], a                                     ; $5863: $e0 $bc
	ld [bc], a                                       ; $5865: $02
	ei                                               ; $5866: $fb
	rst SubAFromHL                                          ; $5867: $d7
	ld bc, $039d                                     ; $5868: $01 $9d $03
	ld [bc], a                                       ; $586b: $02
	ld l, a                                          ; $586c: $6f
	cp $97                                           ; $586d: $fe $97
	rlca                                             ; $586f: $07
	ld b, $07                                        ; $5870: $06 $07
	inc b                                            ; $5872: $04
	rrca                                             ; $5873: $0f
	ld [$101f], sp                                   ; $5874: $08 $1f $10
	jp hl                                            ; $5877: $e9


	rst SubAFromDE                                          ; $5878: $df
	ld bc, $db7f                                     ; $5879: $01 $7f $db
	ld a, a                                          ; $587c: $7f
	db $dd                                           ; $587d: $dd
	rst SubAFromDE                                          ; $587e: $df
	ld bc, $e83f                                     ; $587f: $01 $3f $e8
	ld [hl], a                                       ; $5882: $77
	and $7f                                          ; $5883: $e6 $7f
	cp $89                                           ; $5885: $fe $89
	inc b                                            ; $5887: $04
	rlca                                             ; $5888: $07
	inc b                                            ; $5889: $04
	rlca                                             ; $588a: $07
	add hl, bc                                       ; $588b: $09
	rrca                                             ; $588c: $0f
	dec bc                                           ; $588d: $0b
	rrca                                             ; $588e: $0f
	inc de                                           ; $588f: $13
	rra                                              ; $5890: $1f
	dec d                                            ; $5891: $15
	dec e                                            ; $5892: $1d
	dec d                                            ; $5893: $15
	dec e                                            ; $5894: $1d
	inc d                                            ; $5895: $14
	inc e                                            ; $5896: $1c
	inc d                                            ; $5897: $14
	inc e                                            ; $5898: $1c
	inc c                                            ; $5899: $0c
	inc c                                            ; $589a: $0c
	inc b                                            ; $589b: $04
	inc b                                            ; $589c: $04
	ld l, a                                          ; $589d: $6f
	sbc $7b                                          ; $589e: $de $7b
	and d                                            ; $58a0: $a2
	ld [hl], a                                       ; $58a1: $77
	and h                                            ; $58a2: $a4
	adc l                                            ; $58a3: $8d
	ld de, $213f                                     ; $58a4: $11 $3f $21
	ld a, a                                          ; $58a7: $7f
	ld b, d                                          ; $58a8: $42

jr_06c_58a9:
	rst $38                                          ; $58a9: $ff
	add h                                            ; $58aa: $84

jr_06c_58ab:
	cp $88                                           ; $58ab: $fe $88
	cp $88                                           ; $58ad: $fe $88
	db $f4                                           ; $58af: $f4
	jr jr_06c_58ab                                   ; $58b0: $18 $f9

	db $10                                           ; $58b2: $10
	ld sp, hl                                        ; $58b3: $f9
	jr nz, jr_06c_58a9                               ; $58b4: $20 $f3

	ld a, e                                          ; $58b6: $7b
	cp $8f                                           ; $58b7: $fe $8f

Jump_06c_58b9:
	rst SubAFromBC                                          ; $58b9: $e7
	ld b, b                                          ; $58ba: $40
	rst SubAFromBC                                          ; $58bb: $e7
	ld b, b                                          ; $58bc: $40
	rst JumpTable                                          ; $58bd: $c7
	add b                                            ; $58be: $80
	db $e3                                           ; $58bf: $e3
	add b                                            ; $58c0: $80
	pop de                                           ; $58c1: $d1
	ldh [$e0], a                                     ; $58c2: $e0 $e0
	jr c, @-$0c                                      ; $58c4: $38 $f2

	inc e                                            ; $58c6: $1c
	ei                                               ; $58c7: $fb
	inc c                                            ; $58c8: $0c
	push hl                                          ; $58c9: $e5
	rst SubAFromDE                                          ; $58ca: $df
	ld bc, $7e7f                                     ; $58cb: $01 $7f $7e
	add b                                            ; $58ce: $80
	jr jr_06c_58f0                                   ; $58cf: $18 $1f

	ldh [rIE], a                                     ; $58d1: $e0 $ff
	add hl, de                                       ; $58d3: $19
	rra                                              ; $58d4: $1f
	ld [de], a                                       ; $58d5: $12
	rra                                              ; $58d6: $1f
	inc h                                            ; $58d7: $24
	ccf                                              ; $58d8: $3f
	add hl, hl                                       ; $58d9: $29
	ld a, $4b                                        ; $58da: $3e $4b
	ld a, h                                          ; $58dc: $7c
	ld d, d                                          ; $58dd: $52
	ld a, l                                          ; $58de: $7d
	ld d, h                                          ; $58df: $54
	ld a, a                                          ; $58e0: $7f
	ld l, b                                          ; $58e1: $68
	ld a, a                                          ; $58e2: $7f
	ld d, b                                          ; $58e3: $50
	ld a, a                                          ; $58e4: $7f
	pop hl                                           ; $58e5: $e1
	rst $38                                          ; $58e6: $ff
	add [hl]                                         ; $58e7: $86
	rst $38                                          ; $58e8: $ff
	jr @+$01                                         ; $58e9: $18 $ff

	jr nz, @+$01                                     ; $58eb: $20 $ff

	pop bc                                           ; $58ed: $c1
	sbc [hl]                                         ; $58ee: $9e
	rst $38                                          ; $58ef: $ff

jr_06c_58f0:
	ldh [$c1], a                                     ; $58f0: $e0 $c1
	sub c                                            ; $58f2: $91
	ccf                                              ; $58f3: $3f
	rlca                                             ; $58f4: $07
	ld a, [hl]                                       ; $58f5: $7e
	rlca                                             ; $58f6: $07
	cp $03                                           ; $58f7: $fe $03
	cp $03                                           ; $58f9: $fe $03
	db $fd                                           ; $58fb: $fd
	ld [bc], a                                       ; $58fc: $02
	rst $38                                          ; $58fd: $ff
	ld bc, $01ff                                     ; $58fe: $01 $ff $01
	ld [hl], a                                       ; $5901: $77
	or $91                                           ; $5902: $f6 $91
	cp $02                                           ; $5904: $fe $02
	cp $04                                           ; $5906: $fe $04
	db $fd                                           ; $5908: $fd
	ld b, $f7                                        ; $5909: $06 $f7
	inc c                                            ; $590b: $0c
	rst FarCall                                          ; $590c: $f7
	inc c                                            ; $590d: $0c
	scf                                              ; $590e: $37
	inc c                                            ; $590f: $0c
	inc l                                            ; $5910: $2c
	dec de                                           ; $5911: $1b
	cpl                                              ; $5912: $2f
	ld l, h                                          ; $5913: $6c
	add b                                            ; $5914: $80
	inc hl                                           ; $5915: $23
	inc a                                            ; $5916: $3c
	ld c, l                                          ; $5917: $4d
	ld [hl], d                                       ; $5918: $72
	rst SubAFromHL                                          ; $5919: $d7
	add sp, $0f                                      ; $591a: $e8 $0f
	ldh a, [rAUD2LEN]                                ; $591c: $f0 $16
	jp hl                                            ; $591e: $e9


	ld c, h                                          ; $591f: $4c
	di                                               ; $5920: $f3
	sbc b                                            ; $5921: $98
	and $31                                          ; $5922: $e6 $31
	call z, $9962                                    ; $5924: $cc $62 $99
	call nz, $9b33                                   ; $5927: $c4 $33 $9b
	ld h, [hl]                                       ; $592a: $66
	inc [hl]                                         ; $592b: $34
	adc $4a                                          ; $592c: $ce $4a
	cp l                                             ; $592e: $bd
	or l                                             ; $592f: $b5
	ld a, e                                          ; $5930: $7b
	ld c, d                                          ; $5931: $4a
	rst FarCall                                          ; $5932: $f7
	add l                                            ; $5933: $85
	sub h                                            ; $5934: $94
	cp $0b                                           ; $5935: $fe $0b
	db $fc                                           ; $5937: $fc
	ld d, $f9                                        ; $5938: $16 $f9
	inc hl                                           ; $593a: $23
	rst $38                                          ; $593b: $ff
	rst JumpTable                                          ; $593c: $c7
	cp $1f                                           ; $593d: $fe $1f
	ld hl, sp-$20                                    ; $593f: $f8 $e0
	pop bc                                           ; $5941: $c1
	rst SubAFromDE                                          ; $5942: $df
	ldh a, [$df]                                     ; $5943: $f0 $df
	pop hl                                           ; $5945: $e1
	add e                                            ; $5946: $83
	ld h, b                                          ; $5947: $60
	ldh [$b0], a                                     ; $5948: $e0 $b0
	or b                                             ; $594a: $b0
	sub b                                            ; $594b: $90
	sub b                                            ; $594c: $90
	adc b                                            ; $594d: $88
	adc b                                            ; $594e: $88
	ret nz                                           ; $594f: $c0

	ld b, b                                          ; $5950: $40
	cp b                                             ; $5951: $b8
	ld a, b                                          ; $5952: $78
	rst $38                                          ; $5953: $ff
	rlca                                             ; $5954: $07
	inc c                                            ; $5955: $0c
	inc bc                                           ; $5956: $03
	inc bc                                           ; $5957: $03
	ld bc, $03f6                                     ; $5958: $01 $f6 $03
	db $e4                                           ; $595b: $e4
	rra                                              ; $595c: $1f
	adc e                                            ; $595d: $8b
	ld a, h                                          ; $595e: $7c
	scf                                              ; $595f: $37
	ld hl, sp-$21                                    ; $5960: $f8 $df
	ldh [rWX], a                                     ; $5962: $e0 $4b
	ld [hl-], a                                      ; $5964: $32
	add b                                            ; $5965: $80
	ccf                                              ; $5966: $3f
	ret nz                                           ; $5967: $c0

	rst $38                                          ; $5968: $ff
	nop                                              ; $5969: $00
	rst $38                                          ; $596a: $ff
	rst $38                                          ; $596b: $ff
	nop                                              ; $596c: $00
	inc bc                                           ; $596d: $03
	db $fc                                           ; $596e: $fc
	db $fc                                           ; $596f: $fc
	inc bc                                           ; $5970: $03
	rst $38                                          ; $5971: $ff
	nop                                              ; $5972: $00
	add a                                            ; $5973: $87
	ld a, b                                          ; $5974: $78
	ld a, c                                          ; $5975: $79
	add [hl]                                         ; $5976: $86
	dec c                                            ; $5977: $0d
	inc bc                                           ; $5978: $03
	ccf                                              ; $5979: $3f
	ld [bc], a                                       ; $597a: $02
	ld hl, $40c6                                     ; $597b: $21 $c6 $40
	adc h                                            ; $597e: $8c
	nop                                              ; $597f: $00
	jr c, jr_06c_5984                                ; $5980: $38 $02

	ld [hl], c                                       ; $5982: $71
	ld d, l                                          ; $5983: $55

jr_06c_5984:
	db $e3                                           ; $5984: $e3
	adc l                                            ; $5985: $8d
	xor e                                            ; $5986: $ab
	add $56                                          ; $5987: $c6 $56
	adc l                                            ; $5989: $8d
	xor e                                            ; $598a: $ab
	dec e                                            ; $598b: $1d
	push de                                          ; $598c: $d5
	dec sp                                           ; $598d: $3b
	or d                                             ; $598e: $b2
	ld a, a                                          ; $598f: $7f
	ldh a, [c]                                       ; $5990: $f2
	rst SubAFromDE                                          ; $5991: $df
	halt                                             ; $5992: $76
	sbc l                                            ; $5993: $9d
	or $1d                                           ; $5994: $f6 $1d
	rst FarCall                                          ; $5996: $f7
	dec e                                            ; $5997: $1d
	ldh [$c1], a                                     ; $5998: $e0 $c1
	rst SubAFromDE                                          ; $599a: $df
	add b                                            ; $599b: $80
	ld l, d                                          ; $599c: $6a
	jp hl                                            ; $599d: $e9


	sub b                                            ; $599e: $90
	inc bc                                           ; $599f: $03
	dec b                                            ; $59a0: $05
	ld b, $0b                                        ; $59a1: $06 $0b
	inc c                                            ; $59a3: $0c
	rla                                              ; $59a4: $17
	jr c, jr_06c_5a16                                ; $59a5: $38 $6f

	ldh a, [$9f]                                     ; $59a7: $f0 $9f
	ldh [$3f], a                                     ; $59a9: $e0 $3f
	ret nz                                           ; $59ab: $c0

	ld a, a                                          ; $59ac: $7f
	add b                                            ; $59ad: $80
	ld a, e                                          ; $59ae: $7b
	ld a, c                                          ; $59af: $79
	ld [hl], e                                       ; $59b0: $73
	cp $f5                                           ; $59b1: $fe $f5
	rst SubAFromDE                                          ; $59b3: $df
	ld [$04df], sp                                   ; $59b4: $08 $df $04
	add b                                            ; $59b7: $80
	ldh [c], a                                       ; $59b8: $e2
	and $1d                                          ; $59b9: $e6 $1d
	rst $38                                          ; $59bb: $ff
	add hl, bc                                       ; $59bc: $09
	rst $38                                          ; $59bd: $ff
	ldh [c], a                                       ; $59be: $e2
	rra                                              ; $59bf: $1f
	push af                                          ; $59c0: $f5
	ld c, $a4                                        ; $59c1: $0e $a4
	rst SubAFromDE                                          ; $59c3: $df
	xor e                                            ; $59c4: $ab
	ld a, h                                          ; $59c5: $7c
	ret nc                                           ; $59c6: $d0

	ccf                                              ; $59c7: $3f
	rla                                              ; $59c8: $17
	rst $38                                          ; $59c9: $ff
	sbc c                                            ; $59ca: $99
	cp $f0                                           ; $59cb: $fe $f0
	ld a, a                                          ; $59cd: $7f
	xor [hl]                                         ; $59ce: $ae
	ld [hl], c                                       ; $59cf: $71
	daa                                              ; $59d0: $27
	ld hl, sp-$67                                    ; $59d1: $f8 $99
	ldh [$30], a                                     ; $59d3: $e0 $30
	call z, $924c                                    ; $59d5: $cc $4c $92
	and d                                            ; $59d8: $a2
	ld h, h                                          ; $59d9: $64
	and d                                            ; $59da: $a2
	or l                                             ; $59db: $b5
	ld h, d                                          ; $59dc: $62
	pop de                                           ; $59dd: $d1
	ld l, d                                          ; $59de: $6a
	ld d, b                                          ; $59df: $50
	db $eb                                           ; $59e0: $eb
	ld c, [hl]                                       ; $59e1: $4e
	ei                                               ; $59e2: $fb
	ld [$77bf], a                                    ; $59e3: $ea $bf $77
	cp $e0                                           ; $59e6: $fe $e0
	pop bc                                           ; $59e8: $c1
	sub l                                            ; $59e9: $95
	ld e, $13                                        ; $59ea: $1e $13
	ld a, $27                                        ; $59ec: $3e $27
	ld a, l                                          ; $59ee: $7d
	ld b, a                                          ; $59ef: $47
	rst $38                                          ; $59f0: $ff
	adc [hl]                                         ; $59f1: $8e
	rst $38                                          ; $59f2: $ff
	inc c                                            ; $59f3: $0c
	ld a, c                                          ; $59f4: $79
	rst GetHLinHL                                          ; $59f5: $cf
	sbc h                                            ; $59f6: $9c
	jr nc, @+$01                                     ; $59f7: $30 $ff

	ld b, b                                          ; $59f9: $40
	ld h, a                                          ; $59fa: $67
	ld l, b                                          ; $59fb: $68
	scf                                              ; $59fc: $37
	ld h, b                                          ; $59fd: $60
	ld h, [hl]                                       ; $59fe: $66
	adc [hl]                                         ; $59ff: $8e
	sbc e                                            ; $5a00: $9b
	rrca                                             ; $5a01: $0f
	rst $38                                          ; $5a02: $ff
	ldh a, [rIF]                                     ; $5a03: $f0 $0f
	halt                                             ; $5a05: $76
	cp d                                             ; $5a06: $ba
	add b                                            ; $5a07: $80
	ldh [$1f], a                                     ; $5a08: $e0 $1f
	rra                                              ; $5a0a: $1f
	ldh [$e3], a                                     ; $5a0b: $e0 $e3
	inc e                                            ; $5a0d: $1c
	db $fc                                           ; $5a0e: $fc
	inc bc                                           ; $5a0f: $03
	rst SubAFromBC                                          ; $5a10: $e7
	jr jr_06c_5a8c                                   ; $5a11: $18 $79

	add [hl]                                         ; $5a13: $86
	ld h, [hl]                                       ; $5a14: $66
	add c                                            ; $5a15: $81

jr_06c_5a16:
	xor e                                            ; $5a16: $ab
	ld d, b                                          ; $5a17: $50
	sub l                                            ; $5a18: $95
	ld c, b                                          ; $5a19: $48
	add b                                            ; $5a1a: $80
	ld c, h                                          ; $5a1b: $4c
	ld a, [hl+]                                      ; $5a1c: $2a
	ld b, h                                          ; $5a1d: $44
	ld [hl-], a                                      ; $5a1e: $32
	ld b, h                                          ; $5a1f: $44
	sub c                                            ; $5a20: $91
	ld h, [hl]                                       ; $5a21: $66
	cp c                                             ; $5a22: $b9
	ld h, [hl]                                       ; $5a23: $66
	xor [hl]                                         ; $5a24: $ae
	ld [hl], e                                       ; $5a25: $73
	sbc l                                            ; $5a26: $9d
	sbc l                                            ; $5a27: $9d
	ld [hl], e                                       ; $5a28: $73
	ld de, $367b                                     ; $5a29: $11 $7b $36
	ldh [$c1], a                                     ; $5a2c: $e0 $c1

jr_06c_5a2e:
	sbc e                                            ; $5a2e: $9b
	pop af                                           ; $5a2f: $f1
	rst $38                                          ; $5a30: $ff
	ret nz                                           ; $5a31: $c0

	rst $38                                          ; $5a32: $ff
	halt                                             ; $5a33: $76
	db $d3                                           ; $5a34: $d3
	adc a                                            ; $5a35: $8f
	add b                                            ; $5a36: $80
	ld a, a                                          ; $5a37: $7f
	ret nz                                           ; $5a38: $c0

	ccf                                              ; $5a39: $3f
	ldh [$1f], a                                     ; $5a3a: $e0 $1f
	ldh [$1f], a                                     ; $5a3c: $e0 $1f
	ldh a, [rIF]                                     ; $5a3e: $f0 $0f
	ld hl, sp+$07                                    ; $5a40: $f8 $07
	ld hl, sp+$07                                    ; $5a42: $f8 $07
	cp $01                                           ; $5a44: $fe $01
	rra                                              ; $5a46: $1f
	ld h, b                                          ; $5a47: $60

jr_06c_5a48:
	db $fd                                           ; $5a48: $fd
	rst SubAFromDE                                          ; $5a49: $df
	ret nz                                           ; $5a4a: $c0

	add b                                            ; $5a4b: $80
	jr nz, jr_06c_5a2e                               ; $5a4c: $20 $e0

	jr jr_06c_5a48                                   ; $5a4e: $18 $f8

	add h                                            ; $5a50: $84
	ld a, h                                          ; $5a51: $7c
	ld h, d                                          ; $5a52: $62
	sbc [hl]                                         ; $5a53: $9e
	pop de                                           ; $5a54: $d1
	cpl                                              ; $5a55: $2f
	ld l, c                                          ; $5a56: $69
	sub a                                            ; $5a57: $97
	ld d, b                                          ; $5a58: $50
	rst AddAOntoHL                                          ; $5a59: $ef
	xor b                                            ; $5a5a: $a8
	ld [hl], a                                       ; $5a5b: $77
	call nc, $f03b                                   ; $5a5c: $d4 $3b $f0
	sbc a                                            ; $5a5f: $9f
	add sp, $5f                                      ; $5a60: $e8 $5f
	ld hl, sp+$4f                                    ; $5a62: $f8 $4f
	push de                                          ; $5a64: $d5
	ld l, a                                          ; $5a65: $6f
	cp l                                             ; $5a66: $bd
	ld h, a                                          ; $5a67: $67
	xor h                                            ; $5a68: $ac
	ld [hl], a                                       ; $5a69: $77
	xor h                                            ; $5a6a: $ac
	sbc d                                            ; $5a6b: $9a
	ld [hl], a                                       ; $5a6c: $77
	xor d                                            ; $5a6d: $aa
	ld [hl], a                                       ; $5a6e: $77
	ld [hl+], a                                      ; $5a6f: $22
	rst $38                                          ; $5a70: $ff
	ld [hl], a                                       ; $5a71: $77
	cp $9e                                           ; $5a72: $fe $9e
	sub d                                            ; $5a74: $92
	ld [hl], e                                       ; $5a75: $73
	cp $8a                                           ; $5a76: $fe $8a
	adc d                                            ; $5a78: $8a
	rst $38                                          ; $5a79: $ff
	ld c, c                                          ; $5a7a: $49
	rst $38                                          ; $5a7b: $ff
	ld b, l                                          ; $5a7c: $45
	rst $38                                          ; $5a7d: $ff
	inc hl                                           ; $5a7e: $23
	rst $38                                          ; $5a7f: $ff
	ld de, $8cff                                     ; $5a80: $11 $ff $8c
	rst $38                                          ; $5a83: $ff
	jp Jump_06c_7eff                                 ; $5a84: $c3 $ff $7e


	rst $38                                          ; $5a87: $ff
	ld [$29ff], a                                    ; $5a88: $ea $ff $29
	rst $38                                          ; $5a8b: $ff

jr_06c_5a8c:
	dec h                                            ; $5a8c: $25
	ld a, e                                          ; $5a8d: $7b
	cp $80                                           ; $5a8e: $fe $80
	inc h                                            ; $5a90: $24
	rst $38                                          ; $5a91: $ff
	and h                                            ; $5a92: $a4
	ld a, a                                          ; $5a93: $7f

jr_06c_5a94:
	and h                                            ; $5a94: $a4
	ld a, a                                          ; $5a95: $7f
	ld d, [hl]                                       ; $5a96: $56
	db $ed                                           ; $5a97: $ed
	ld e, d                                          ; $5a98: $5a

Jump_06c_5a99:
	db $ed                                           ; $5a99: $ed
	ld l, d                                          ; $5a9a: $6a
	db $dd                                           ; $5a9b: $dd
	xor h                                            ; $5a9c: $ac
	db $db                                           ; $5a9d: $db

jr_06c_5a9e:
	cp l                                             ; $5a9e: $bd
	db $db                                           ; $5a9f: $db
	ld e, l                                          ; $5aa0: $5d
	cp e                                             ; $5aa1: $bb
	ld l, c                                          ; $5aa2: $69
	xor a                                            ; $5aa3: $af
	ld a, [hl+]                                      ; $5aa4: $2a
	rst AddAOntoHL                                          ; $5aa5: $ef
	ld d, d                                          ; $5aa6: $52
	rst SubAFromDE                                          ; $5aa7: $df
	ld d, [hl]                                       ; $5aa8: $56
	rst SubAFromDE                                          ; $5aa9: $df
	xor [hl]                                         ; $5aaa: $ae
	cp a                                             ; $5aab: $bf
	dec [hl]                                         ; $5aac: $35
	scf                                              ; $5aad: $37
	ld h, [hl]                                       ; $5aae: $66
	sub a                                            ; $5aaf: $97
	ld h, [hl]                                       ; $5ab0: $66
	inc b                                            ; $5ab1: $04
	inc b                                            ; $5ab2: $04
	ld [$8008], sp                                   ; $5ab3: $08 $08 $80
	add b                                            ; $5ab6: $80
	ld b, b                                          ; $5ab7: $40
	ld a, e                                          ; $5ab8: $7b
	sub d                                            ; $5ab9: $92
	sbc b                                            ; $5aba: $98
	db $10                                           ; $5abb: $10
	ldh a, [$08]                                     ; $5abc: $f0 $08
	ld hl, sp+$04                                    ; $5abe: $f8 $04
	db $fc                                           ; $5ac0: $fc
	ld [bc], a                                       ; $5ac1: $02
	ld a, e                                          ; $5ac2: $7b
	ld h, a                                          ; $5ac3: $67
	sub c                                            ; $5ac4: $91
	ld b, $f9                                        ; $5ac5: $06 $f9
	rrca                                             ; $5ac7: $0f
	ldh a, [rAUD3HIGH]                               ; $5ac8: $f0 $1e
	pop hl                                           ; $5aca: $e1
	jr c, jr_06c_5a94                                ; $5acb: $38 $c7

	jr nc, jr_06c_5a9e                               ; $5acd: $30 $cf

	ld h, e                                          ; $5acf: $63
	sbc a                                            ; $5ad0: $9f
	call c, Call_06c_6d3f                            ; $5ad1: $dc $3f $6d
	db $fc                                           ; $5ad4: $fc
	ld a, a                                          ; $5ad5: $7f
	sbc $6f                                          ; $5ad6: $de $6f
	cp $7f                                           ; $5ad8: $fe $7f

jr_06c_5ada:
	ret c                                            ; $5ada: $d8

	ld [hl], a                                       ; $5adb: $77
	cp $9e                                           ; $5adc: $fe $9e
	and b                                            ; $5ade: $a0
	ld [hl], e                                       ; $5adf: $73
	cp $9c                                           ; $5ae0: $fe $9c
	sub b                                            ; $5ae2: $90
	ldh a, [$50]                                     ; $5ae3: $f0 $50
	ld b, e                                          ; $5ae5: $43
	cp $96                                           ; $5ae6: $fe $96
	jr nc, jr_06c_5ada                               ; $5ae8: $30 $f0

	xor b                                            ; $5aea: $a8
	ld hl, sp-$58                                    ; $5aeb: $f8 $a8
	ld hl, sp+$28                                    ; $5aed: $f8 $28
	ld hl, sp+$58                                    ; $5aef: $f8 $58
	ld a, e                                          ; $5af1: $7b
	cp $7f                                           ; $5af2: $fe $7f
	ld a, [$fe7f]                                    ; $5af4: $fa $7f $fe
	ld a, a                                          ; $5af7: $7f
	db $f4                                           ; $5af8: $f4
	sbc h                                            ; $5af9: $9c
	and h                                            ; $5afa: $a4
	db $fc                                           ; $5afb: $fc
	sub h                                            ; $5afc: $94
	ld a, e                                          ; $5afd: $7b
	cp $9d                                           ; $5afe: $fe $9d
	jp nc, $77be                                     ; $5b00: $d2 $be $77

	cp $95                                           ; $5b03: $fe $95
	ld d, d                                          ; $5b05: $52
	cp [hl]                                          ; $5b06: $be
	adc d                                            ; $5b07: $8a
	ld l, [hl]                                       ; $5b08: $6e
	xor d                                            ; $5b09: $aa
	ld l, [hl]                                       ; $5b0a: $6e
	ld a, [hl+]                                      ; $5b0b: $2a
	xor $4a                                          ; $5b0c: $ee $4a
	adc $dd                                          ; $5b0e: $ce $dd
	adc h                                            ; $5b10: $8c
	db $dd                                           ; $5b11: $dd
	ld [$10df], sp                                   ; $5b12: $08 $df $10
	dec [hl]                                         ; $5b15: $35
	adc [hl]                                         ; $5b16: $8e
	ld a, a                                          ; $5b17: $7f
	sub a                                            ; $5b18: $97
	ld l, a                                          ; $5b19: $6f
	ld [hl], b                                       ; $5b1a: $70
	rst SubAFromDE                                          ; $5b1b: $df
	ld hl, sp-$63                                    ; $5b1c: $f8 $9d
	inc c                                            ; $5b1e: $0c
	db $fc                                           ; $5b1f: $fc
	inc e                                            ; $5b20: $1c
	nop                                              ; $5b21: $00
	sbc d                                            ; $5b22: $9a
	xor d                                            ; $5b23: $aa
	sbc c                                            ; $5b24: $99
	sbc c                                            ; $5b25: $99
	cp e                                             ; $5b26: $bb
	ld [hl+], a                                      ; $5b27: $22
	db $dd                                           ; $5b28: $dd
	sbc c                                            ; $5b29: $99
	ld a, a                                          ; $5b2a: $7f
	ei                                               ; $5b2b: $fb
	sbc [hl]                                         ; $5b2c: $9e
	ld de, $fb57                                     ; $5b2d: $11 $57 $fb
	sbc [hl]                                         ; $5b30: $9e
	inc sp                                           ; $5b31: $33
	ld l, a                                          ; $5b32: $6f
	or $7b                                           ; $5b33: $f6 $7b
	ld a, [$ff9e]                                    ; $5b35: $fa $9e $ff
	sbc $99                                          ; $5b38: $de $99
	sbc [hl]                                         ; $5b3a: $9e
	xor d                                            ; $5b3b: $aa
	call nc, $8001                                   ; $5b3c: $d4 $01 $80
	ld c, $ff                                        ; $5b3f: $0e $ff
	ldh a, [rIE]                                     ; $5b41: $f0 $ff
	cpl                                              ; $5b43: $2f
	ccf                                              ; $5b44: $3f
	dec h                                            ; $5b45: $25
	ccf                                              ; $5b46: $3f
	ld e, e                                          ; $5b47: $5b
	ld l, a                                          ; $5b48: $6f
	ld [hl], a                                       ; $5b49: $77
	ld e, e                                          ; $5b4a: $5b
	cp [hl]                                          ; $5b4b: $be
	db $d3                                           ; $5b4c: $d3
	xor $b3                                          ; $5b4d: $ee $b3
	ld l, h                                          ; $5b4f: $6c
	or a                                             ; $5b50: $b7
	ld e, l                                          ; $5b51: $5d
	and $55                                          ; $5b52: $e6 $55
	xor $fa                                          ; $5b54: $ee $fa
	call $ddaa                                       ; $5b56: $cd $aa $dd
	xor b                                            ; $5b59: $a8
	rst SubAFromDE                                          ; $5b5a: $df
	ld c, b                                          ; $5b5b: $48
	cp a                                             ; $5b5c: $bf
	ld c, d                                          ; $5b5d: $4a
	sbc h                                            ; $5b5e: $9c
	cp a                                             ; $5b5f: $bf
	ld [de], a                                       ; $5b60: $12
	rst $38                                          ; $5b61: $ff
	ld [hl], a                                       ; $5b62: $77
	cp $9e                                           ; $5b63: $fe $9e
	sub d                                            ; $5b65: $92
	ld [hl], e                                       ; $5b66: $73
	cp $9c                                           ; $5b67: $fe $9c
	jp nc, $d4ff                                     ; $5b69: $d2 $ff $d4

	ld a, e                                          ; $5b6c: $7b
	cp $80                                           ; $5b6d: $fe $80
	db $f4                                           ; $5b6f: $f4
	cp a                                             ; $5b70: $bf
	db $f4                                           ; $5b71: $f4
	ccf                                              ; $5b72: $3f
	db $f4                                           ; $5b73: $f4
	ld e, a                                          ; $5b74: $5f
	or $9f                                           ; $5b75: $f6 $9f
	jp c, $9b1f                                      ; $5b77: $da $1f $9b

	rrca                                             ; $5b7a: $0f
	dec a                                            ; $5b7b: $3d
	rrca                                             ; $5b7c: $0f
	jr nc, @-$0f                                     ; $5b7d: $30 $ef

	ld c, a                                          ; $5b7f: $4f
	rst $38                                          ; $5b80: $ff
	cp a                                             ; $5b81: $bf
	ldh a, [rIE]                                     ; $5b82: $f0 $ff
	ld c, $ff                                        ; $5b84: $0e $ff
	ld a, a                                          ; $5b86: $7f
	rst $38                                          ; $5b87: $ff
	add hl, sp                                       ; $5b88: $39
	ld l, $ae                                        ; $5b89: $2e $ae
	adc e                                            ; $5b8b: $8b
	adc a                                            ; $5b8c: $8f
	add e                                            ; $5b8d: $83
	sbc c                                            ; $5b8e: $99
	add a                                            ; $5b8f: $87
	add l                                            ; $5b90: $85
	add l                                            ; $5b91: $85
	adc [hl]                                         ; $5b92: $8e
	add a                                            ; $5b93: $87
	add c                                            ; $5b94: $81
	call c, $8680                                    ; $5b95: $dc $80 $86
	ld b, b                                          ; $5b98: $40
	ret nz                                           ; $5b99: $c0

	ld b, b                                          ; $5b9a: $40
	ret nz                                           ; $5b9b: $c0

	ld a, a                                          ; $5b9c: $7f
	ldh [$7f], a                                     ; $5b9d: $e0 $7f
	ldh [$5f], a                                     ; $5b9f: $e0 $5f
	ldh a, [$5f]                                     ; $5ba1: $f0 $5f
	ld hl, sp+$4f                                    ; $5ba3: $f8 $4f
	db $fc                                           ; $5ba5: $fc
	ld b, a                                          ; $5ba6: $47
	cp $8b                                           ; $5ba7: $fe $8b
	rst $38                                          ; $5ba9: $ff
	adc c                                            ; $5baa: $89
	rst $38                                          ; $5bab: $ff
	adc b                                            ; $5bac: $88
	rst $38                                          ; $5bad: $ff
	sub c                                            ; $5bae: $91
	rst $38                                          ; $5baf: $ff
	sub e                                            ; $5bb0: $93
	ld a, e                                          ; $5bb1: $7b
	or h                                             ; $5bb2: $b4
	adc b                                            ; $5bb3: $88
	sub a                                            ; $5bb4: $97
	rst $38                                          ; $5bb5: $ff
	ld d, [hl]                                       ; $5bb6: $56
	rst $38                                          ; $5bb7: $ff
	ld e, l                                          ; $5bb8: $5d
	cp $5f                                           ; $5bb9: $fe $5f
	ld hl, sp-$01                                    ; $5bbb: $f8 $ff
	reti                                             ; $5bbd: $d9


	rst $38                                          ; $5bbe: $ff
	add hl, de                                       ; $5bbf: $19
	rst $38                                          ; $5bc0: $ff
	add hl, de                                       ; $5bc1: $19
	rst AddAOntoHL                                          ; $5bc2: $ef
	add hl, de                                       ; $5bc3: $19
	rst $38                                          ; $5bc4: $ff
	add hl, bc                                       ; $5bc5: $09
	or $89                                           ; $5bc6: $f6 $89
	cp a                                             ; $5bc8: $bf
	ret nz                                           ; $5bc9: $c0

	push bc                                          ; $5bca: $c5
	sbc $80                                          ; $5bcb: $de $80
	rst $38                                          ; $5bcd: $ff
	add b                                            ; $5bce: $80
	ld a, $00                                        ; $5bcf: $3e $00
	rst $38                                          ; $5bd1: $ff
	nop                                              ; $5bd2: $00
	rst AddAOntoHL                                          ; $5bd3: $ef
	db $10                                           ; $5bd4: $10
	ccf                                              ; $5bd5: $3f
	jr nz, jr_06c_5c00                               ; $5bd6: $20 $28

	jr nc, jr_06c_5bda                               ; $5bd8: $30 $00

jr_06c_5bda:
	nop                                              ; $5bda: $00
	ld [hl], l                                       ; $5bdb: $75
	sbc a                                            ; $5bdc: $9f
	scf                                              ; $5bdd: $37
	sbc $df                                          ; $5bde: $de $df
	halt                                             ; $5be0: $76
	rst FarCall                                          ; $5be1: $f7
	ld a, $fe                                        ; $5be2: $3e $fe
	rra                                              ; $5be4: $1f
	rst AddAOntoHL                                          ; $5be5: $ef
	inc de                                           ; $5be6: $13
	db $fd                                           ; $5be7: $fd
	ld e, $ff                                        ; $5be8: $1e $ff
	ccf                                              ; $5bea: $3f
	db $dd                                           ; $5beb: $dd
	add hl, de                                       ; $5bec: $19
	inc e                                            ; $5bed: $1c
	sub c                                            ; $5bee: $91
	inc e                                            ; $5bef: $1c
	rla                                              ; $5bf0: $17
	rra                                              ; $5bf1: $1f
	rla                                              ; $5bf2: $17
	rra                                              ; $5bf3: $1f
	call $f609                                       ; $5bf4: $cd $09 $f6
	ld c, $f3                                        ; $5bf7: $0e $f3
	nop                                              ; $5bf9: $00
	ld bc, $0800                                     ; $5bfa: $01 $00 $08
	ld a, e                                          ; $5bfd: $7b
	xor [hl]                                         ; $5bfe: $ae
	sbc [hl]                                         ; $5bff: $9e

jr_06c_5c00:
	add h                                            ; $5c00: $84
	ld a, e                                          ; $5c01: $7b
	cp $80                                           ; $5c02: $fe $80
	call nz, Call_06c_427f                           ; $5c04: $c4 $7f $42
	rst $38                                          ; $5c07: $ff
	ldh [c], a                                       ; $5c08: $e2
	rst $38                                          ; $5c09: $ff
	pop af                                           ; $5c0a: $f1
	ccf                                              ; $5c0b: $3f
	jp hl                                            ; $5c0c: $e9


	sbc a                                            ; $5c0d: $9f
	db $fc                                           ; $5c0e: $fc
	rst GetHLinHL                                          ; $5c0f: $cf
	or $7f                                           ; $5c10: $f6 $7f
	ld d, l                                          ; $5c12: $55
	ld l, a                                          ; $5c13: $6f
	ld [hl], h                                       ; $5c14: $74
	rrca                                             ; $5c15: $0f
	ld a, [$ee0f]                                    ; $5c16: $fa $0f $ee
	dec de                                           ; $5c19: $1b
	xor $1b                                          ; $5c1a: $ee $1b
	sbc $33                                          ; $5c1c: $de $33
	sbc $37                                          ; $5c1e: $de $37
	cp e                                             ; $5c20: $bb
	ld a, [hl]                                       ; $5c21: $7e
	db $db                                           ; $5c22: $db
	add [hl]                                         ; $5c23: $86
	cp $95                                           ; $5c24: $fe $95
	cp $16                                           ; $5c26: $fe $16
	db $fd                                           ; $5c28: $fd
	ld h, $fd                                        ; $5c29: $26 $fd
	daa                                              ; $5c2b: $27
	db $fd                                           ; $5c2c: $fd
	ld c, a                                          ; $5c2d: $4f
	ld sp, hl                                        ; $5c2e: $f9
	ld c, l                                          ; $5c2f: $4d
	ei                                               ; $5c30: $fb
	ld e, d                                          ; $5c31: $5a
	rst FarCall                                          ; $5c32: $f7
	sbc d                                            ; $5c33: $9a
	rst FarCall                                          ; $5c34: $f7
	sub d                                            ; $5c35: $92
	rst $38                                          ; $5c36: $ff
	dec h                                            ; $5c37: $25
	rst $38                                          ; $5c38: $ff
	daa                                              ; $5c39: $27
	rst $38                                          ; $5c3a: $ff
	ld c, e                                          ; $5c3b: $4b
	rst $38                                          ; $5c3c: $ff
	ld l, e                                          ; $5c3d: $6b
	ld b, b                                          ; $5c3e: $40
	ld [hl], a                                       ; $5c3f: $77
	adc [hl]                                         ; $5c40: $8e
	sub [hl]                                         ; $5c41: $96
	ld e, $7f                                        ; $5c42: $1e $7f
	cp e                                             ; $5c44: $bb
	db $ed                                           ; $5c45: $ed
	db $ed                                           ; $5c46: $ed
	adc e                                            ; $5c47: $8b
	adc a                                            ; $5c48: $8f
	adc l                                            ; $5c49: $8d
	adc c                                            ; $5c4a: $89
	ld d, a                                          ; $5c4b: $57
	ld b, b                                          ; $5c4c: $40
	ld e, e                                          ; $5c4d: $5b
	ld h, b                                          ; $5c4e: $60
	sbc c                                            ; $5c4f: $99
	add hl, bc                                       ; $5c50: $09
	rst $38                                          ; $5c51: $ff
	nop                                              ; $5c52: $00
	add l                                            ; $5c53: $85
	ret nz                                           ; $5c54: $c0

	ret nz                                           ; $5c55: $c0

	dec de                                           ; $5c56: $1b
	ld h, b                                          ; $5c57: $60
	adc a                                            ; $5c58: $8f
	db $ed                                           ; $5c59: $ed
	ld [de], a                                       ; $5c5a: $12
	rst $38                                          ; $5c5b: $ff
	nop                                              ; $5c5c: $00
	rst SubAFromDE                                          ; $5c5d: $df
	ld a, $3f                                        ; $5c5e: $3e $3f
	dec sp                                           ; $5c60: $3b
	dec e                                            ; $5c61: $1d
	dec e                                            ; $5c62: $1d
	rla                                              ; $5c63: $17
	rra                                              ; $5c64: $1f
	call z, $f709                                    ; $5c65: $cc $09 $f7
	rrca                                             ; $5c68: $0f
	inc sp                                           ; $5c69: $33
	ld h, b                                          ; $5c6a: $60
	sub [hl]                                         ; $5c6b: $96
	rra                                              ; $5c6c: $1f
	db $fc                                           ; $5c6d: $fc
	rrca                                             ; $5c6e: $0f
	or $cf                                           ; $5c6f: $f6 $cf
	push af                                          ; $5c71: $f5
	rst AddAOntoHL                                          ; $5c72: $ef
	db $f4                                           ; $5c73: $f4
	adc a                                            ; $5c74: $8f
	ld l, a                                          ; $5c75: $6f
	ld h, b                                          ; $5c76: $60
	ld e, a                                          ; $5c77: $5f
	add b                                            ; $5c78: $80
	ld a, a                                          ; $5c79: $7f
	cp $95                                           ; $5c7a: $fe $95
	ld a, a                                          ; $5c7c: $7f
	cp h                                             ; $5c7d: $bc
	rst $38                                          ; $5c7e: $ff
	rst $38                                          ; $5c7f: $ff
	adc a                                            ; $5c80: $8f
	adc e                                            ; $5c81: $8b
	adc c                                            ; $5c82: $89
	adc e                                            ; $5c83: $8b
	sbc a                                            ; $5c84: $9f
	adc [hl]                                         ; $5c85: $8e
	daa                                              ; $5c86: $27
	add b                                            ; $5c87: $80
	sbc l                                            ; $5c88: $9d
	push bc                                          ; $5c89: $c5
	nop                                              ; $5c8a: $00
	ld d, $e0                                        ; $5c8b: $16 $e0
	ld [hl], a                                       ; $5c8d: $77
	add b                                            ; $5c8e: $80
	ld a, e                                          ; $5c8f: $7b
	cp d                                             ; $5c90: $ba
	sub a                                            ; $5c91: $97
	ld a, h                                          ; $5c92: $7c
	ld a, a                                          ; $5c93: $7f
	ccf                                              ; $5c94: $3f
	ccf                                              ; $5c95: $3f
	rla                                              ; $5c96: $17
	push af                                          ; $5c97: $f5
	rla                                              ; $5c98: $17
	ei                                               ; $5c99: $fb
	rra                                              ; $5c9a: $1f
	add b                                            ; $5c9b: $80
	sbc b                                            ; $5c9c: $98
	rrca                                             ; $5c9d: $0f
	push af                                          ; $5c9e: $f5
	adc a                                            ; $5c9f: $8f
	db $f4                                           ; $5ca0: $f4
	rst GetHLinHL                                          ; $5ca1: $cf
	ld a, [$438f]                                    ; $5ca2: $fa $8f $43
	add b                                            ; $5ca5: $80
	sub a                                            ; $5ca6: $97
	sub b                                            ; $5ca7: $90
	rst $38                                          ; $5ca8: $ff
	rst AddAOntoHL                                          ; $5ca9: $ef
	cp a                                             ; $5caa: $bf
	or b                                             ; $5cab: $b0
	sbc a                                            ; $5cac: $9f
	sbc a                                            ; $5cad: $9f
	adc a                                            ; $5cae: $8f
	rla                                              ; $5caf: $17
	add b                                            ; $5cb0: $80
	cp $0f                                           ; $5cb1: $fe $0f
	add b                                            ; $5cb3: $80
	sub [hl]                                         ; $5cb4: $96
	ccf                                              ; $5cb5: $3f
	jr jr_06c_5cf7                                   ; $5cb6: $18 $3f

	ld h, $7f                                        ; $5cb8: $26 $7f
	ld [hl], b                                       ; $5cba: $70
	rst $38                                          ; $5cbb: $ff
	ccf                                              ; $5cbc: $3f
	rst $38                                          ; $5cbd: $ff
	rla                                              ; $5cbe: $17
	add b                                            ; $5cbf: $80
	sbc [hl]                                         ; $5cc0: $9e
	rrca                                             ; $5cc1: $0f
	ld a, e                                          ; $5cc2: $7b
	add b                                            ; $5cc3: $80
	ld [hl], e                                       ; $5cc4: $73
	nop                                              ; $5cc5: $00
	sbc c                                            ; $5cc6: $99
	ld b, b                                          ; $5cc7: $40
	nop                                              ; $5cc8: $00
	ld e, $3c                                        ; $5cc9: $1e $3c
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	ld a, e                                          ; $5ccd: $7b
	or a                                             ; $5cce: $b7
	db $fc                                           ; $5ccf: $fc
	rst SubAFromDE                                          ; $5cd0: $df
	add b                                            ; $5cd1: $80
	sbc l                                            ; $5cd2: $9d
	rst JumpTable                                          ; $5cd3: $c7
	pop bc                                           ; $5cd4: $c1
	sbc $ff                                          ; $5cd5: $de $ff
	rst SubAFromDE                                          ; $5cd7: $df
	ldh a, [$9d]                                     ; $5cd8: $f0 $9d
	add b                                            ; $5cda: $80
	ret nz                                           ; $5cdb: $c0

	jp c, Jump_06c_6f80                              ; $5cdc: $da $80 $6f

	ld h, [hl]                                       ; $5cdf: $66
	ld a, e                                          ; $5ce0: $7b
	cp $82                                           ; $5ce1: $fe $82
	ld bc, $03ff                                     ; $5ce3: $01 $ff $03
	cp $0f                                           ; $5ce6: $fe $0f
	cp [hl]                                          ; $5ce8: $be
	ld a, a                                          ; $5ce9: $7f
	cp $ff                                           ; $5cea: $fe $ff
	cp $ff                                           ; $5cec: $fe $ff
	ld e, $ff                                        ; $5cee: $1e $ff
	ldh [c], a                                       ; $5cf0: $e2
	rra                                              ; $5cf1: $1f
	cp $03                                           ; $5cf2: $fe $03
	rst $38                                          ; $5cf4: $ff
	inc bc                                           ; $5cf5: $03
	rst $38                                          ; $5cf6: $ff

jr_06c_5cf7:
	rlca                                             ; $5cf7: $07
	ld a, [$400f]                                    ; $5cf8: $fa $0f $40
	nop                                              ; $5cfb: $00
	ld b, $3c                                        ; $5cfc: $06 $3c
	inc a                                            ; $5cfe: $3c
	jr jr_06c_5d68                                   ; $5cff: $18 $67

	cp [hl]                                          ; $5d01: $be
	ccf                                              ; $5d02: $3f
	ret nz                                           ; $5d03: $c0

	inc bc                                           ; $5d04: $03
	ldh [$7b], a                                     ; $5d05: $e0 $7b
	ldh [$9c], a                                     ; $5d07: $e0 $9c
	inc b                                            ; $5d09: $04
	inc a                                            ; $5d0a: $3c
	jr c, jr_06c_5d78                                ; $5d0b: $38 $6b

	sbc $3f                                          ; $5d0d: $de $3f
	ldh [$f3], a                                     ; $5d0f: $e0 $f3
	ld bc, $0e80                                     ; $5d11: $01 $80 $0e
	rst $38                                          ; $5d14: $ff
	ldh a, [rIE]                                     ; $5d15: $f0 $ff
	cpl                                              ; $5d17: $2f
	ccf                                              ; $5d18: $3f
	dec h                                            ; $5d19: $25
	ccf                                              ; $5d1a: $3f
	ld e, e                                          ; $5d1b: $5b
	ld l, a                                          ; $5d1c: $6f
	ld [hl], a                                       ; $5d1d: $77
	ld e, e                                          ; $5d1e: $5b
	cp [hl]                                          ; $5d1f: $be
	db $d3                                           ; $5d20: $d3
	xor $b3                                          ; $5d21: $ee $b3
	ld l, h                                          ; $5d23: $6c
	or a                                             ; $5d24: $b7
	ld e, l                                          ; $5d25: $5d
	and $55                                          ; $5d26: $e6 $55
	xor $fa                                          ; $5d28: $ee $fa
	call $ddaa                                       ; $5d2a: $cd $aa $dd
	xor b                                            ; $5d2d: $a8
	rst SubAFromDE                                          ; $5d2e: $df
	ld c, b                                          ; $5d2f: $48
	cp a                                             ; $5d30: $bf
	ld c, d                                          ; $5d31: $4a
	sbc h                                            ; $5d32: $9c
	cp a                                             ; $5d33: $bf
	ld [de], a                                       ; $5d34: $12
	rst $38                                          ; $5d35: $ff
	ld [hl], a                                       ; $5d36: $77
	cp $9e                                           ; $5d37: $fe $9e
	sub d                                            ; $5d39: $92
	ld [hl], e                                       ; $5d3a: $73
	cp $9c                                           ; $5d3b: $fe $9c
	jp nc, $d4ff                                     ; $5d3d: $d2 $ff $d4

	ld a, e                                          ; $5d40: $7b
	cp $80                                           ; $5d41: $fe $80
	db $f4                                           ; $5d43: $f4
	cp a                                             ; $5d44: $bf
	db $f4                                           ; $5d45: $f4
	ccf                                              ; $5d46: $3f
	db $f4                                           ; $5d47: $f4
	ld e, a                                          ; $5d48: $5f
	or $9f                                           ; $5d49: $f6 $9f
	jp c, $9b1f                                      ; $5d4b: $da $1f $9b

	rrca                                             ; $5d4e: $0f
	dec a                                            ; $5d4f: $3d
	rrca                                             ; $5d50: $0f
	cpl                                              ; $5d51: $2f
	rst $38                                          ; $5d52: $ff
	ld e, a                                          ; $5d53: $5f
	ldh a, [$bf]                                     ; $5d54: $f0 $bf
	xor $ff                                          ; $5d56: $ee $ff
	ld a, a                                          ; $5d58: $7f
	rst $38                                          ; $5d59: $ff
	add hl, sp                                       ; $5d5a: $39
	xor [hl]                                         ; $5d5b: $ae
	ld l, $0b                                        ; $5d5c: $2e $0b
	adc a                                            ; $5d5e: $8f
	adc e                                            ; $5d5f: $8b
	adc a                                            ; $5d60: $8f
	add [hl]                                         ; $5d61: $86
	sbc $85                                          ; $5d62: $de $85
	sbc l                                            ; $5d64: $9d
	adc [hl]                                         ; $5d65: $8e
	add a                                            ; $5d66: $87
	db $db                                           ; $5d67: $db

jr_06c_5d68:
	add b                                            ; $5d68: $80
	add [hl]                                         ; $5d69: $86
	ld b, b                                          ; $5d6a: $40
	ret nz                                           ; $5d6b: $c0

	ld b, b                                          ; $5d6c: $40
	ret nz                                           ; $5d6d: $c0

	ld a, a                                          ; $5d6e: $7f
	ldh [$7f], a                                     ; $5d6f: $e0 $7f
	ldh [$5f], a                                     ; $5d71: $e0 $5f
	ldh a, [$5f]                                     ; $5d73: $f0 $5f
	ld hl, sp+$4f                                    ; $5d75: $f8 $4f
	db $fc                                           ; $5d77: $fc

jr_06c_5d78:
	ld b, a                                          ; $5d78: $47
	cp $8b                                           ; $5d79: $fe $8b
	rst $38                                          ; $5d7b: $ff
	adc c                                            ; $5d7c: $89
	rst $38                                          ; $5d7d: $ff
	adc b                                            ; $5d7e: $88
	rst $38                                          ; $5d7f: $ff
	sub c                                            ; $5d80: $91
	rst $38                                          ; $5d81: $ff
	sub e                                            ; $5d82: $93
	ld a, e                                          ; $5d83: $7b
	or h                                             ; $5d84: $b4
	adc b                                            ; $5d85: $88
	sub a                                            ; $5d86: $97
	rst $38                                          ; $5d87: $ff
	ld d, [hl]                                       ; $5d88: $56
	rst $38                                          ; $5d89: $ff
	ld e, l                                          ; $5d8a: $5d
	cp $5f                                           ; $5d8b: $fe $5f
	ld hl, sp+$7f                                    ; $5d8d: $f8 $7f
	sbc c                                            ; $5d8f: $99
	cp a                                             ; $5d90: $bf
	reti                                             ; $5d91: $d9


	rst $38                                          ; $5d92: $ff
	ld e, c                                          ; $5d93: $59
	rst AddAOntoHL                                          ; $5d94: $ef
	add hl, de                                       ; $5d95: $19
	rst $38                                          ; $5d96: $ff
	adc c                                            ; $5d97: $89
	or $89                                           ; $5d98: $f6 $89
	cp a                                             ; $5d9a: $bf
	ret nz                                           ; $5d9b: $c0

	push bc                                          ; $5d9c: $c5
	sbc $80                                          ; $5d9d: $de $80
	ei                                               ; $5d9f: $fb
	add b                                            ; $5da0: $80
	ld [$3c10], sp                                   ; $5da1: $08 $10 $3c
	jr nz, jr_06c_5dce                               ; $5da4: $20 $28

	jr nc, jr_06c_5da8                               ; $5da6: $30 $00

jr_06c_5da8:
	nop                                              ; $5da8: $00
	ld [hl], l                                       ; $5da9: $75
	sbc a                                            ; $5daa: $9f
	ld [hl], a                                       ; $5dab: $77
	sbc [hl]                                         ; $5dac: $9e
	rst SubAFromHL                                          ; $5dad: $d7
	ld a, $be                                        ; $5dae: $3e $be
	ld a, a                                          ; $5db0: $7f
	rst $38                                          ; $5db1: $ff
	rla                                              ; $5db2: $17
	rst $38                                          ; $5db3: $ff
	ld e, $ff                                        ; $5db4: $1e $ff
	ccf                                              ; $5db6: $3f
	rst SubAFromDE                                          ; $5db7: $df
	add hl, de                                       ; $5db8: $19
	call c, $171c                                    ; $5db9: $dc $1c $17
	rra                                              ; $5dbc: $1f
	ld d, $1f                                        ; $5dbd: $16 $1f
	add hl, de                                       ; $5dbf: $19
	sbc c                                            ; $5dc0: $99
	rla                                              ; $5dc1: $17
	dec c                                            ; $5dc2: $0d
	add hl, bc                                       ; $5dc3: $09
	ld d, $0e                                        ; $5dc4: $16 $0e
	ld bc, $01bf                                     ; $5dc6: $01 $bf $01
	ld [$ae7b], sp                                   ; $5dc9: $08 $7b $ae
	sbc [hl]                                         ; $5dcc: $9e
	add h                                            ; $5dcd: $84

jr_06c_5dce:
	ld a, e                                          ; $5dce: $7b
	cp $80                                           ; $5dcf: $fe $80
	ld b, h                                          ; $5dd1: $44
	rst $38                                          ; $5dd2: $ff
	jp nz, $e2ff                                     ; $5dd3: $c2 $ff $e2

	ld a, a                                          ; $5dd6: $7f
	pop de                                           ; $5dd7: $d1
	cp a                                             ; $5dd8: $bf
	jp hl                                            ; $5dd9: $e9


	rst SubAFromDE                                          ; $5dda: $df
	db $fc                                           ; $5ddb: $fc
	ld a, a                                          ; $5ddc: $7f
	ld d, [hl]                                       ; $5ddd: $56
	ld l, a                                          ; $5dde: $6f
	ld [hl], l                                       ; $5ddf: $75
	rrca                                             ; $5de0: $0f
	db $f4                                           ; $5de1: $f4
	rrca                                             ; $5de2: $0f
	ld a, [$ee0f]                                    ; $5de3: $fa $0f $ee
	dec de                                           ; $5de6: $1b
	xor $1b                                          ; $5de7: $ee $1b
	sbc $33                                          ; $5de9: $de $33
	sbc $37                                          ; $5deb: $de $37
	cp e                                             ; $5ded: $bb
	ld a, [hl]                                       ; $5dee: $7e
	db $db                                           ; $5def: $db
	add b                                            ; $5df0: $80
	cp $95                                           ; $5df1: $fe $95
	cp $16                                           ; $5df3: $fe $16
	db $fd                                           ; $5df5: $fd
	ld h, $fd                                        ; $5df6: $26 $fd
	daa                                              ; $5df8: $27
	db $fd                                           ; $5df9: $fd
	ld c, a                                          ; $5dfa: $4f
	ld sp, hl                                        ; $5dfb: $f9
	ld c, l                                          ; $5dfc: $4d
	ei                                               ; $5dfd: $fb
	ld e, d                                          ; $5dfe: $5a
	rst FarCall                                          ; $5dff: $f7
	sbc d                                            ; $5e00: $9a
	rst FarCall                                          ; $5e01: $f7
	sub d                                            ; $5e02: $92
	rst $38                                          ; $5e03: $ff
	dec h                                            ; $5e04: $25
	rst $38                                          ; $5e05: $ff
	daa                                              ; $5e06: $27
	rst $38                                          ; $5e07: $ff
	ld c, e                                          ; $5e08: $4b
	rst $38                                          ; $5e09: $ff
	ld a, $ff                                        ; $5e0a: $3e $ff
	ld a, a                                          ; $5e0c: $7f
	pop hl                                           ; $5e0d: $e1
	cp a                                             ; $5e0e: $bf
	ret nz                                           ; $5e0f: $c0

	sbc l                                            ; $5e10: $9d
	rst $38                                          ; $5e11: $ff
	ld c, $77                                        ; $5e12: $0e $77
	ld a, $99                                        ; $5e14: $3e $99
	ld l, $ae                                        ; $5e16: $2e $ae
	adc e                                            ; $5e18: $8b
	adc a                                            ; $5e19: $8f
	add e                                            ; $5e1a: $83
	add a                                            ; $5e1b: $87
	ld c, e                                          ; $5e1c: $4b
	ld b, b                                          ; $5e1d: $40
	ld h, a                                          ; $5e1e: $67
	ld h, b                                          ; $5e1f: $60
	sbc [hl]                                         ; $5e20: $9e
	add hl, bc                                       ; $5e21: $09
	rra                                              ; $5e22: $1f
	ld h, b                                          ; $5e23: $60
	sbc l                                            ; $5e24: $9d
	rst $38                                          ; $5e25: $ff
	ld d, $77                                        ; $5e26: $16 $77
	ld e, [hl]                                       ; $5e28: $5e
	sbc h                                            ; $5e29: $9c
	db $ed                                           ; $5e2a: $ed
	inc de                                           ; $5e2b: $13
	db $fd                                           ; $5e2c: $fd
	ld a, e                                          ; $5e2d: $7b
	ld e, [hl]                                       ; $5e2e: $5e
	sbc h                                            ; $5e2f: $9c
	db $dd                                           ; $5e30: $dd
	add hl, de                                       ; $5e31: $19
	inc e                                            ; $5e32: $1c
	ld a, e                                          ; $5e33: $7b
	ld e, [hl]                                       ; $5e34: $5e
	ld a, a                                          ; $5e35: $7f
	cp $2b                                           ; $5e36: $fe $2b
	ld h, b                                          ; $5e38: $60
	sub l                                            ; $5e39: $95
	ccf                                              ; $5e3a: $3f
	jp hl                                            ; $5e3b: $e9


	sbc a                                            ; $5e3c: $9f
	db $fc                                           ; $5e3d: $fc
	rst GetHLinHL                                          ; $5e3e: $cf

jr_06c_5e3f:
	or $7f                                           ; $5e3f: $f6 $7f
	ld d, l                                          ; $5e41: $55
	ld l, a                                          ; $5e42: $6f
	ld [hl], h                                       ; $5e43: $74
	ld l, e                                          ; $5e44: $6b
	ld h, b                                          ; $5e45: $60
	ld l, e                                          ; $5e46: $6b
	add b                                            ; $5e47: $80
	cp a                                             ; $5e48: $bf
	rst $38                                          ; $5e49: $ff
	rst AddAOntoHL                                          ; $5e4a: $ef
	sub h                                            ; $5e4b: $94
	ld e, $7f                                        ; $5e4c: $1e $7f
	cp e                                             ; $5e4e: $bb
	db $ed                                           ; $5e4f: $ed
	db $ed                                           ; $5e50: $ed
	adc e                                            ; $5e51: $8b
	adc a                                            ; $5e52: $8f
	sbc l                                            ; $5e53: $9d
	sbc c                                            ; $5e54: $99
	adc e                                            ; $5e55: $8b
	add [hl]                                         ; $5e56: $86
	inc sp                                           ; $5e57: $33
	add b                                            ; $5e58: $80
	sbc c                                            ; $5e59: $99
	add hl, bc                                       ; $5e5a: $09
	rst $38                                          ; $5e5b: $ff
	nop                                              ; $5e5c: $00
	add l                                            ; $5e5d: $85
	ret nz                                           ; $5e5e: $c0

	ret nz                                           ; $5e5f: $c0

	dec de                                           ; $5e60: $1b
	add b                                            ; $5e61: $80
	adc [hl]                                         ; $5e62: $8e
	db $ed                                           ; $5e63: $ed
	ld [de], a                                       ; $5e64: $12
	rst $38                                          ; $5e65: $ff
	nop                                              ; $5e66: $00
	rst SubAFromDE                                          ; $5e67: $df
	ld a, $3f                                        ; $5e68: $3e $3f
	dec sp                                           ; $5e6a: $3b
	dec e                                            ; $5e6b: $1d
	dec e                                            ; $5e6c: $1d
	rla                                              ; $5e6d: $17
	rra                                              ; $5e6e: $1f
	inc a                                            ; $5e6f: $3c
	ld de, $0f1f                                     ; $5e70: $11 $1f $0f
	inc bc                                           ; $5e73: $03
	scf                                              ; $5e74: $37
	add b                                            ; $5e75: $80
	sub [hl]                                         ; $5e76: $96
	rra                                              ; $5e77: $1f
	db $fc                                           ; $5e78: $fc
	rrca                                             ; $5e79: $0f
	or $cf                                           ; $5e7a: $f6 $cf
	push af                                          ; $5e7c: $f5
	rst AddAOntoHL                                          ; $5e7d: $ef
	db $f4                                           ; $5e7e: $f4
	adc a                                            ; $5e7f: $8f
	ld b, a                                          ; $5e80: $47
	add b                                            ; $5e81: $80
	ld a, a                                          ; $5e82: $7f
	cp $95                                           ; $5e83: $fe $95
	ld a, a                                          ; $5e85: $7f
	sub b                                            ; $5e86: $90
	rst $38                                          ; $5e87: $ff
	rst AddAOntoHL                                          ; $5e88: $ef
	cp a                                             ; $5e89: $bf
	or b                                             ; $5e8a: $b0
	sbc a                                            ; $5e8b: $9f
	sbc a                                            ; $5e8c: $9f
	adc [hl]                                         ; $5e8d: $8e
	adc [hl]                                         ; $5e8e: $8e
	daa                                              ; $5e8f: $27
	add b                                            ; $5e90: $80
	sbc [hl]                                         ; $5e91: $9e
	push bc                                          ; $5e92: $c5
	cp a                                             ; $5e93: $bf
	add b                                            ; $5e94: $80
	add b                                            ; $5e95: $80
	ld [hl], e                                       ; $5e96: $73
	ld a, [hl]                                       ; $5e97: $7e
	daa                                              ; $5e98: $27
	add b                                            ; $5e99: $80
	ld a, a                                          ; $5e9a: $7f
	cp $96                                           ; $5e9b: $fe $96
	ccf                                              ; $5e9d: $3f
	jr jr_06c_5edf                                   ; $5e9e: $18 $3f

	ld h, $7f                                        ; $5ea0: $26 $7f
	ld [hl], b                                       ; $5ea2: $70
	ccf                                              ; $5ea3: $3f
	ccf                                              ; $5ea4: $3f
	rrca                                             ; $5ea5: $0f
	rra                                              ; $5ea6: $1f
	add b                                            ; $5ea7: $80
	sbc d                                            ; $5ea8: $9a
	rrca                                             ; $5ea9: $0f
	push af                                          ; $5eaa: $f5
	rrca                                             ; $5eab: $0f
	db $f4                                           ; $5eac: $f4
	rst GetHLinHL                                          ; $5ead: $cf
	ld l, a                                          ; $5eae: $6f
	add b                                            ; $5eaf: $80
	sub h                                            ; $5eb0: $94
	ld b, b                                          ; $5eb1: $40
	ld a, h                                          ; $5eb2: $7c
	ld b, c                                          ; $5eb3: $41
	ld b, d                                          ; $5eb4: $42
	ld h, c                                          ; $5eb5: $61
	ld a, $22                                        ; $5eb6: $3e $22
	ld e, $1c                                        ; $5eb8: $1e $1c
	inc e                                            ; $5eba: $1c
	nop                                              ; $5ebb: $00
	cp a                                             ; $5ebc: $bf
	jr jr_06c_5e3f                                   ; $5ebd: $18 $80

	sbc h                                            ; $5ebf: $9c
	add b                                            ; $5ec0: $80
	rst JumpTable                                          ; $5ec1: $c7
	pop bc                                           ; $5ec2: $c1
	sbc $ff                                          ; $5ec3: $de $ff
	rst SubAFromDE                                          ; $5ec5: $df
	ldh a, [$9d]                                     ; $5ec6: $f0 $9d
	add b                                            ; $5ec8: $80
	ret nz                                           ; $5ec9: $c0

	jp c, Jump_06c_6f80                              ; $5eca: $da $80 $6f

	ld h, [hl]                                       ; $5ecd: $66
	ld a, e                                          ; $5ece: $7b
	cp $95                                           ; $5ecf: $fe $95
	ld bc, $03ff                                     ; $5ed1: $01 $ff $03
	cp $0f                                           ; $5ed4: $fe $0f
	cp [hl]                                          ; $5ed6: $be
	ld a, a                                          ; $5ed7: $7f
	cp $ff                                           ; $5ed8: $fe $ff
	cp $79                                           ; $5eda: $fe $79
	rst FarCall                                          ; $5edc: $f7
	sub l                                            ; $5edd: $95
	ldh [c], a                                       ; $5ede: $e2

jr_06c_5edf:
	rra                                              ; $5edf: $1f
	cp $03                                           ; $5ee0: $fe $03
	rst $38                                          ; $5ee2: $ff
	inc bc                                           ; $5ee3: $03
	rst $38                                          ; $5ee4: $ff
	rlca                                             ; $5ee5: $07
	ld a, [$070f]                                    ; $5ee6: $fa $0f $07
	ret nz                                           ; $5ee9: $c0

	sub [hl]                                         ; $5eea: $96
	ld b, b                                          ; $5eeb: $40
	ld a, b                                          ; $5eec: $78
	ld b, d                                          ; $5eed: $42
	ld b, h                                          ; $5eee: $44
	inc h                                            ; $5eef: $24
	inc a                                            ; $5ef0: $3c
	jr jr_06c_5f0b                                   ; $5ef1: $18 $18

	nop                                              ; $5ef3: $00
	cp [hl]                                          ; $5ef4: $be
	stop                                             ; $5ef5: $10 $00
	add b                                            ; $5ef7: $80
	ccf                                              ; $5ef8: $3f
	ldh [$9c], a                                     ; $5ef9: $e0 $9c
	ld b, b                                          ; $5efb: $40
	ld [de], a                                       ; $5efc: $12
	inc l                                            ; $5efd: $2c
	db $fd                                           ; $5efe: $fd
	ld [hl], a                                       ; $5eff: $77
	ldh [c], a                                       ; $5f00: $e2
	scf                                              ; $5f01: $37
	ldh [$e0], a                                     ; $5f02: $e0 $e0
	ld bc, $0e80                                     ; $5f04: $01 $80 $0e
	rst $38                                          ; $5f07: $ff
	ldh a, [rIE]                                     ; $5f08: $f0 $ff
	cpl                                              ; $5f0a: $2f

jr_06c_5f0b:
	ccf                                              ; $5f0b: $3f
	dec h                                            ; $5f0c: $25
	ccf                                              ; $5f0d: $3f
	ld e, e                                          ; $5f0e: $5b
	ld l, a                                          ; $5f0f: $6f
	ld [hl], a                                       ; $5f10: $77
	ld e, e                                          ; $5f11: $5b
	cp [hl]                                          ; $5f12: $be
	db $d3                                           ; $5f13: $d3
	xor $b3                                          ; $5f14: $ee $b3
	ld l, h                                          ; $5f16: $6c
	or a                                             ; $5f17: $b7
	ld e, l                                          ; $5f18: $5d
	and $55                                          ; $5f19: $e6 $55
	xor $fa                                          ; $5f1b: $ee $fa
	call $ddaa                                       ; $5f1d: $cd $aa $dd
	xor b                                            ; $5f20: $a8
	rst SubAFromDE                                          ; $5f21: $df
	ld c, b                                          ; $5f22: $48
	cp a                                             ; $5f23: $bf
	ld c, d                                          ; $5f24: $4a
	sbc h                                            ; $5f25: $9c
	cp a                                             ; $5f26: $bf
	ld [de], a                                       ; $5f27: $12
	rst $38                                          ; $5f28: $ff
	ld [hl], a                                       ; $5f29: $77
	cp $9e                                           ; $5f2a: $fe $9e
	sub d                                            ; $5f2c: $92
	ld [hl], e                                       ; $5f2d: $73
	cp $9c                                           ; $5f2e: $fe $9c
	jp nc, $d4ff                                     ; $5f30: $d2 $ff $d4

	ld a, e                                          ; $5f33: $7b
	cp $80                                           ; $5f34: $fe $80
	db $f4                                           ; $5f36: $f4
	cp a                                             ; $5f37: $bf
	db $f4                                           ; $5f38: $f4
	ccf                                              ; $5f39: $3f
	db $f4                                           ; $5f3a: $f4
	ld e, a                                          ; $5f3b: $5f
	or $9f                                           ; $5f3c: $f6 $9f
	jp c, $9b1f                                      ; $5f3e: $da $1f $9b

	rrca                                             ; $5f41: $0f
	dec a                                            ; $5f42: $3d
	rrca                                             ; $5f43: $0f
	ld hl, $5ffe                                     ; $5f44: $21 $fe $5f
	rst $38                                          ; $5f47: $ff
	cp a                                             ; $5f48: $bf
	ldh [rIE], a                                     ; $5f49: $e0 $ff
	ld c, $ff                                        ; $5f4b: $0e $ff
	ld a, a                                          ; $5f4d: $7f
	rst $38                                          ; $5f4e: $ff
	add hl, sp                                       ; $5f4f: $39
	ld l, $ae                                        ; $5f50: $2e $ae
	adc e                                            ; $5f52: $8b
	adc a                                            ; $5f53: $8f
	add e                                            ; $5f54: $83
	sbc d                                            ; $5f55: $9a
	add a                                            ; $5f56: $87
	add l                                            ; $5f57: $85
	add l                                            ; $5f58: $85
	adc [hl]                                         ; $5f59: $8e
	add a                                            ; $5f5a: $87
	db $db                                           ; $5f5b: $db
	add b                                            ; $5f5c: $80
	add [hl]                                         ; $5f5d: $86
	ld b, b                                          ; $5f5e: $40
	ret nz                                           ; $5f5f: $c0

	ld b, b                                          ; $5f60: $40
	ret nz                                           ; $5f61: $c0

	ld a, a                                          ; $5f62: $7f
	ldh [$7f], a                                     ; $5f63: $e0 $7f
	ldh [$5f], a                                     ; $5f65: $e0 $5f
	ldh a, [$5f]                                     ; $5f67: $f0 $5f
	ld hl, sp+$4f                                    ; $5f69: $f8 $4f
	db $fc                                           ; $5f6b: $fc
	ld b, a                                          ; $5f6c: $47
	cp $8b                                           ; $5f6d: $fe $8b
	rst $38                                          ; $5f6f: $ff
	adc c                                            ; $5f70: $89
	rst $38                                          ; $5f71: $ff
	adc b                                            ; $5f72: $88
	rst $38                                          ; $5f73: $ff
	sub c                                            ; $5f74: $91
	rst $38                                          ; $5f75: $ff
	sub e                                            ; $5f76: $93
	ld a, e                                          ; $5f77: $7b
	or h                                             ; $5f78: $b4
	adc b                                            ; $5f79: $88
	sub a                                            ; $5f7a: $97
	rst $38                                          ; $5f7b: $ff
	ld d, [hl]                                       ; $5f7c: $56
	rst $38                                          ; $5f7d: $ff
	ld e, l                                          ; $5f7e: $5d
	cp $5f                                           ; $5f7f: $fe $5f
	ld hl, sp-$01                                    ; $5f81: $f8 $ff
	add hl, de                                       ; $5f83: $19
	ld a, a                                          ; $5f84: $7f
	sbc c                                            ; $5f85: $99
	cp a                                             ; $5f86: $bf
	reti                                             ; $5f87: $d9


	rst AddAOntoHL                                          ; $5f88: $ef
	ld e, c                                          ; $5f89: $59
	rst $38                                          ; $5f8a: $ff
	add hl, bc                                       ; $5f8b: $09
	or $89                                           ; $5f8c: $f6 $89
	cp a                                             ; $5f8e: $bf
	ret nz                                           ; $5f8f: $c0

	push bc                                          ; $5f90: $c5
	sbc $80                                          ; $5f91: $de $80
	ei                                               ; $5f93: $fb
	add b                                            ; $5f94: $80
	ld [$3c10], sp                                   ; $5f95: $08 $10 $3c
	jr nz, jr_06c_5fc2                               ; $5f98: $20 $28

	jr nc, jr_06c_5f9c                               ; $5f9a: $30 $00

jr_06c_5f9c:
	nop                                              ; $5f9c: $00
	ld [hl], l                                       ; $5f9d: $75
	sbc a                                            ; $5f9e: $9f
	ld [hl], a                                       ; $5f9f: $77
	sbc [hl]                                         ; $5fa0: $9e
	rst $38                                          ; $5fa1: $ff
	ld d, $d7                                        ; $5fa2: $16 $d7
	ld a, $be                                        ; $5fa4: $3e $be
	ld a, a                                          ; $5fa6: $7f
	db $ed                                           ; $5fa7: $ed
	inc de                                           ; $5fa8: $13
	db $fd                                           ; $5fa9: $fd
	ld e, $ff                                        ; $5faa: $1e $ff
	ccf                                              ; $5fac: $3f
	db $dd                                           ; $5fad: $dd
	add hl, de                                       ; $5fae: $19
	inc e                                            ; $5faf: $1c
	inc e                                            ; $5fb0: $1c
	rla                                              ; $5fb1: $17
	rra                                              ; $5fb2: $1f
	rla                                              ; $5fb3: $17
	sub l                                            ; $5fb4: $95
	rra                                              ; $5fb5: $1f
	dec c                                            ; $5fb6: $0d
	add hl, bc                                       ; $5fb7: $09
	ld d, $0e                                        ; $5fb8: $16 $0e
	ld bc, $0100                                     ; $5fba: $01 $00 $01
	nop                                              ; $5fbd: $00
	ld [$ae7b], sp                                   ; $5fbe: $08 $7b $ae
	sbc [hl]                                         ; $5fc1: $9e

jr_06c_5fc2:
	add h                                            ; $5fc2: $84
	ld a, e                                          ; $5fc3: $7b
	cp $80                                           ; $5fc4: $fe $80
	ld b, h                                          ; $5fc6: $44
	rst $38                                          ; $5fc7: $ff
	ld b, d                                          ; $5fc8: $42
	rst $38                                          ; $5fc9: $ff
	ldh [c], a                                       ; $5fca: $e2
	rst $38                                          ; $5fcb: $ff
	pop de                                           ; $5fcc: $d1
	ccf                                              ; $5fcd: $3f
	jp hl                                            ; $5fce: $e9


	sbc a                                            ; $5fcf: $9f
	db $fc                                           ; $5fd0: $fc
	rst GetHLinHL                                          ; $5fd1: $cf
	or $7f                                           ; $5fd2: $f6 $7f
	ld d, l                                          ; $5fd4: $55
	ld l, a                                          ; $5fd5: $6f
	ld [hl], h                                       ; $5fd6: $74
	rrca                                             ; $5fd7: $0f
	ld a, [$ee0f]                                    ; $5fd8: $fa $0f $ee
	dec de                                           ; $5fdb: $1b
	xor $1b                                          ; $5fdc: $ee $1b
	sbc $33                                          ; $5fde: $de $33
	sbc $37                                          ; $5fe0: $de $37
	cp e                                             ; $5fe2: $bb
	ld a, [hl]                                       ; $5fe3: $7e
	db $db                                           ; $5fe4: $db
	add [hl]                                         ; $5fe5: $86
	cp $95                                           ; $5fe6: $fe $95
	cp $16                                           ; $5fe8: $fe $16
	db $fd                                           ; $5fea: $fd
	ld h, $fd                                        ; $5feb: $26 $fd
	daa                                              ; $5fed: $27
	db $fd                                           ; $5fee: $fd
	ld c, a                                          ; $5fef: $4f
	ld sp, hl                                        ; $5ff0: $f9
	ld c, l                                          ; $5ff1: $4d
	ei                                               ; $5ff2: $fb
	ld e, d                                          ; $5ff3: $5a
	rst FarCall                                          ; $5ff4: $f7
	sbc d                                            ; $5ff5: $9a
	rst FarCall                                          ; $5ff6: $f7
	sub d                                            ; $5ff7: $92
	rst $38                                          ; $5ff8: $ff
	dec h                                            ; $5ff9: $25
	rst $38                                          ; $5ffa: $ff
	daa                                              ; $5ffb: $27
	rst $38                                          ; $5ffc: $ff
	ld c, e                                          ; $5ffd: $4b
	rst $38                                          ; $5ffe: $ff
	ld l, e                                          ; $5fff: $6b
	ld b, b                                          ; $6000: $40
	sub b                                            ; $6001: $90
	nop                                              ; $6002: $00
	rst $38                                          ; $6003: $ff
	nop                                              ; $6004: $00
	rst AddAOntoHL                                          ; $6005: $ef
	ld e, $7f                                        ; $6006: $1e $7f
	cp e                                             ; $6008: $bb
	db $ed                                           ; $6009: $ed
	db $ed                                           ; $600a: $ed
	adc e                                            ; $600b: $8b
	adc a                                            ; $600c: $8f
	adc l                                            ; $600d: $8d
	adc c                                            ; $600e: $89
	adc a                                            ; $600f: $8f
	add [hl]                                         ; $6010: $86
	ld e, a                                          ; $6011: $5f
	ld b, b                                          ; $6012: $40
	ld e, e                                          ; $6013: $5b
	ld h, b                                          ; $6014: $60
	sbc c                                            ; $6015: $99
	add hl, bc                                       ; $6016: $09
	rst $38                                          ; $6017: $ff
	nop                                              ; $6018: $00
	add l                                            ; $6019: $85
	ret nz                                           ; $601a: $c0

	ret nz                                           ; $601b: $c0

	dec de                                           ; $601c: $1b
	ld h, b                                          ; $601d: $60
	adc [hl]                                         ; $601e: $8e
	db $ed                                           ; $601f: $ed
	ld [de], a                                       ; $6020: $12
	rst $38                                          ; $6021: $ff
	nop                                              ; $6022: $00
	rst SubAFromDE                                          ; $6023: $df
	ld a, $3f                                        ; $6024: $3e $3f
	dec sp                                           ; $6026: $3b
	dec e                                            ; $6027: $1d
	dec e                                            ; $6028: $1d
	rla                                              ; $6029: $17
	rra                                              ; $602a: $1f
	inc [hl]                                         ; $602b: $34
	add hl, de                                       ; $602c: $19
	rra                                              ; $602d: $1f
	rrca                                             ; $602e: $0f
	inc bc                                           ; $602f: $03
	scf                                              ; $6030: $37
	ld h, b                                          ; $6031: $60
	sub [hl]                                         ; $6032: $96
	rra                                              ; $6033: $1f
	db $fc                                           ; $6034: $fc
	rrca                                             ; $6035: $0f
	or $cf                                           ; $6036: $f6 $cf
	push af                                          ; $6038: $f5
	rst AddAOntoHL                                          ; $6039: $ef
	db $f4                                           ; $603a: $f4
	adc a                                            ; $603b: $8f
	ld l, a                                          ; $603c: $6f
	ld h, b                                          ; $603d: $60
	ld e, a                                          ; $603e: $5f
	add b                                            ; $603f: $80
	ld a, a                                          ; $6040: $7f
	cp $96                                           ; $6041: $fe $96
	ld a, a                                          ; $6043: $7f
	cp h                                             ; $6044: $bc
	rst $38                                          ; $6045: $ff
	rst $38                                          ; $6046: $ff
	adc a                                            ; $6047: $8f
	adc e                                            ; $6048: $8b
	sbc c                                            ; $6049: $99
	sbc e                                            ; $604a: $9b
	adc e                                            ; $604b: $8b
	inc hl                                           ; $604c: $23
	add b                                            ; $604d: $80
	sbc l                                            ; $604e: $9d
	push bc                                          ; $604f: $c5
	nop                                              ; $6050: $00
	ld d, $e0                                        ; $6051: $16 $e0
	ld [hl], a                                       ; $6053: $77
	add b                                            ; $6054: $80
	ld a, e                                          ; $6055: $7b
	cp d                                             ; $6056: $ba
	sub a                                            ; $6057: $97
	ld a, h                                          ; $6058: $7c
	ld a, a                                          ; $6059: $7f
	ccf                                              ; $605a: $3f
	ccf                                              ; $605b: $3f
	rla                                              ; $605c: $17
	dec [hl]                                         ; $605d: $35
	rla                                              ; $605e: $17
	dec de                                           ; $605f: $1b
	rra                                              ; $6060: $1f
	add b                                            ; $6061: $80
	sbc b                                            ; $6062: $98
	rrca                                             ; $6063: $0f
	push af                                          ; $6064: $f5
	adc a                                            ; $6065: $8f
	db $f4                                           ; $6066: $f4
	rst GetHLinHL                                          ; $6067: $cf
	ld a, [$438f]                                    ; $6068: $fa $8f $43
	add b                                            ; $606b: $80
	sub [hl]                                         ; $606c: $96
	sub b                                            ; $606d: $90
	rst $38                                          ; $606e: $ff
	rst AddAOntoHL                                          ; $606f: $ef
	cp a                                             ; $6070: $bf
	or b                                             ; $6071: $b0
	sbc a                                            ; $6072: $9f
	sbc a                                            ; $6073: $9f
	adc a                                            ; $6074: $8f
	adc [hl]                                         ; $6075: $8e
	dec de                                           ; $6076: $1b
	add b                                            ; $6077: $80
	ld a, [$801f]                                    ; $6078: $fa $1f $80
	sub [hl]                                         ; $607b: $96
	ccf                                              ; $607c: $3f
	jr @+$41                                         ; $607d: $18 $3f

	ld h, $7f                                        ; $607f: $26 $7f
	ld [hl], b                                       ; $6081: $70
	ccf                                              ; $6082: $3f
	ccf                                              ; $6083: $3f
	rrca                                             ; $6084: $0f
	rla                                              ; $6085: $17
	add b                                            ; $6086: $80
	sbc [hl]                                         ; $6087: $9e
	rrca                                             ; $6088: $0f
	ld a, e                                          ; $6089: $7b
	add b                                            ; $608a: $80
	ld [hl], e                                       ; $608b: $73
	nop                                              ; $608c: $00
	sub d                                            ; $608d: $92
	ld a, b                                          ; $608e: $78
	ld [hl], b                                       ; $608f: $70
	ld c, h                                          ; $6090: $4c
	ld b, [hl]                                       ; $6091: $46
	ld b, d                                          ; $6092: $42
	inc a                                            ; $6093: $3c
	ld b, h                                          ; $6094: $44
	inc a                                            ; $6095: $3c
	jr @+$3a                                         ; $6096: $18 $38

	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	jr nc, jr_06c_6117                               ; $609a: $30 $7b

	ld [hl+], a                                      ; $609c: $22
	sbc l                                            ; $609d: $9d
	rst JumpTable                                          ; $609e: $c7
	pop bc                                           ; $609f: $c1
	sbc $ff                                          ; $60a0: $de $ff
	rst SubAFromDE                                          ; $60a2: $df
	ldh a, [$9d]                                     ; $60a3: $f0 $9d
	add b                                            ; $60a5: $80
	ret nz                                           ; $60a6: $c0

	jp c, Jump_06c_6f80                              ; $60a7: $da $80 $6f

	ld h, [hl]                                       ; $60aa: $66
	ld a, e                                          ; $60ab: $7b
	cp $88                                           ; $60ac: $fe $88
	ld bc, $03ff                                     ; $60ae: $01 $ff $03
	cp $0f                                           ; $60b1: $fe $0f
	cp [hl]                                          ; $60b3: $be
	ld a, a                                          ; $60b4: $7f
	cp $ff                                           ; $60b5: $fe $ff
	cp $ff                                           ; $60b7: $fe $ff
	ld e, $ff                                        ; $60b9: $1e $ff
	ldh [c], a                                       ; $60bb: $e2
	rra                                              ; $60bc: $1f
	cp $03                                           ; $60bd: $fe $03
	rst $38                                          ; $60bf: $ff
	inc bc                                           ; $60c0: $03
	rst $38                                          ; $60c1: $ff
	rlca                                             ; $60c2: $07
	ld a, [$770f]                                    ; $60c3: $fa $0f $77
	ret nz                                           ; $60c6: $c0

	sbc h                                            ; $60c7: $9c
	ld b, [hl]                                       ; $60c8: $46
	inc a                                            ; $60c9: $3c
	jr c, jr_06c_6147                                ; $60ca: $38 $7b

	jp nz, $109e                                     ; $60cc: $c2 $9e $10

	cp $3f                                           ; $60cf: $fe $3f
	ret nz                                           ; $60d1: $c0

	ld a, a                                          ; $60d2: $7f
	ldh [$9b], a                                     ; $60d3: $e0 $9b
	inc c                                            ; $60d5: $0c
	ld b, [hl]                                       ; $60d6: $46
	ld a, [de]                                       ; $60d7: $1a
	inc a                                            ; $60d8: $3c
	ld l, a                                          ; $60d9: $6f
	ldh [c], a                                       ; $60da: $e2
	cpl                                              ; $60db: $2f
	ldh [$9c], a                                     ; $60dc: $e0 $9c
	inc b                                            ; $60de: $04
	ld c, [hl]                                       ; $60df: $4e
	ld a, [hl-]                                      ; $60e0: $3a
	dec de                                           ; $60e1: $1b
	ldh [$de], a                                     ; $60e2: $e0 $de
	ld bc, $0e80                                     ; $60e4: $01 $80 $0e
	rst $38                                          ; $60e7: $ff
	ldh a, [rIE]                                     ; $60e8: $f0 $ff
	cpl                                              ; $60ea: $2f
	ccf                                              ; $60eb: $3f
	dec h                                            ; $60ec: $25
	ccf                                              ; $60ed: $3f
	ld e, e                                          ; $60ee: $5b
	ld l, a                                          ; $60ef: $6f
	ld [hl], a                                       ; $60f0: $77
	ld e, e                                          ; $60f1: $5b
	cp [hl]                                          ; $60f2: $be
	db $d3                                           ; $60f3: $d3
	xor $b3                                          ; $60f4: $ee $b3
	ld l, h                                          ; $60f6: $6c
	or a                                             ; $60f7: $b7
	ld e, l                                          ; $60f8: $5d
	and $55                                          ; $60f9: $e6 $55
	xor $fa                                          ; $60fb: $ee $fa
	call $ddaa                                       ; $60fd: $cd $aa $dd
	xor b                                            ; $6100: $a8
	rst SubAFromDE                                          ; $6101: $df
	ld c, b                                          ; $6102: $48
	cp a                                             ; $6103: $bf
	ld c, d                                          ; $6104: $4a
	sbc h                                            ; $6105: $9c
	cp a                                             ; $6106: $bf
	ld [de], a                                       ; $6107: $12
	rst $38                                          ; $6108: $ff
	ld [hl], a                                       ; $6109: $77
	cp $9e                                           ; $610a: $fe $9e
	sub d                                            ; $610c: $92
	ld [hl], e                                       ; $610d: $73
	cp $9c                                           ; $610e: $fe $9c
	jp nc, $d4ff                                     ; $6110: $d2 $ff $d4

	ld a, e                                          ; $6113: $7b
	cp $80                                           ; $6114: $fe $80
	db $f4                                           ; $6116: $f4

jr_06c_6117:
	cp a                                             ; $6117: $bf
	db $f4                                           ; $6118: $f4
	ccf                                              ; $6119: $3f
	db $f4                                           ; $611a: $f4
	ld e, a                                          ; $611b: $5f
	or $9f                                           ; $611c: $f6 $9f
	jp c, $9b1f                                      ; $611e: $da $1f $9b

	rrca                                             ; $6121: $0f
	dec a                                            ; $6122: $3d
	rrca                                             ; $6123: $0f
	ld hl, $7efe                                     ; $6124: $21 $fe $7e
	rst $38                                          ; $6127: $ff
	cp a                                             ; $6128: $bf
	pop bc                                           ; $6129: $c1
	rst $38                                          ; $612a: $ff
	ld c, $ff                                        ; $612b: $0e $ff
	ld a, a                                          ; $612d: $7f
	rst $38                                          ; $612e: $ff
	add hl, sp                                       ; $612f: $39
	ld l, $ae                                        ; $6130: $2e $ae
	adc e                                            ; $6132: $8b
	adc a                                            ; $6133: $8f
	add e                                            ; $6134: $83
	sbc d                                            ; $6135: $9a
	add a                                            ; $6136: $87
	add l                                            ; $6137: $85
	add l                                            ; $6138: $85
	adc [hl]                                         ; $6139: $8e
	add a                                            ; $613a: $87
	db $db                                           ; $613b: $db
	add b                                            ; $613c: $80
	add [hl]                                         ; $613d: $86
	ld b, b                                          ; $613e: $40
	ret nz                                           ; $613f: $c0

	ld b, b                                          ; $6140: $40
	ret nz                                           ; $6141: $c0

	ld a, a                                          ; $6142: $7f
	ldh [$7f], a                                     ; $6143: $e0 $7f
	ldh [$5f], a                                     ; $6145: $e0 $5f

jr_06c_6147:
	ldh a, [$5f]                                     ; $6147: $f0 $5f
	ld hl, sp+$4f                                    ; $6149: $f8 $4f
	db $fc                                           ; $614b: $fc
	ld b, a                                          ; $614c: $47
	cp $8b                                           ; $614d: $fe $8b
	rst $38                                          ; $614f: $ff
	adc c                                            ; $6150: $89
	rst $38                                          ; $6151: $ff
	adc b                                            ; $6152: $88
	rst $38                                          ; $6153: $ff
	sub c                                            ; $6154: $91
	rst $38                                          ; $6155: $ff
	sub e                                            ; $6156: $93
	ld a, e                                          ; $6157: $7b
	or h                                             ; $6158: $b4
	adc b                                            ; $6159: $88
	sub a                                            ; $615a: $97
	rst $38                                          ; $615b: $ff
	ld d, [hl]                                       ; $615c: $56
	rst $38                                          ; $615d: $ff
	ld e, l                                          ; $615e: $5d
	cp $5f                                           ; $615f: $fe $5f
	ld hl, sp-$01                                    ; $6161: $f8 $ff
	add hl, de                                       ; $6163: $19
	ld a, a                                          ; $6164: $7f
	sbc c                                            ; $6165: $99
	cp a                                             ; $6166: $bf
	reti                                             ; $6167: $d9


	rst AddAOntoHL                                          ; $6168: $ef
	ld e, c                                          ; $6169: $59
	rst $38                                          ; $616a: $ff
	add hl, bc                                       ; $616b: $09
	or $89                                           ; $616c: $f6 $89
	cp a                                             ; $616e: $bf
	ret nz                                           ; $616f: $c0

	push bc                                          ; $6170: $c5
	sbc $80                                          ; $6171: $de $80
	ei                                               ; $6173: $fb
	add b                                            ; $6174: $80
	ld [$3c10], sp                                   ; $6175: $08 $10 $3c
	jr nz, jr_06c_61a2                               ; $6178: $20 $28

	jr nc, jr_06c_617c                               ; $617a: $30 $00

jr_06c_617c:
	nop                                              ; $617c: $00
	ld [hl], l                                       ; $617d: $75
	sbc a                                            ; $617e: $9f
	ld [hl], a                                       ; $617f: $77
	sbc [hl]                                         ; $6180: $9e
	rst $38                                          ; $6181: $ff
	ld d, $f6                                        ; $6182: $16 $f6
	rra                                              ; $6184: $1f
	sbc a                                            ; $6185: $9f
	ld a, a                                          ; $6186: $7f
	db $ed                                           ; $6187: $ed
	ld a, d                                          ; $6188: $7a
	db $ed                                           ; $6189: $ed
	ld [de], a                                       ; $618a: $12
	rst SubAFromDE                                          ; $618b: $df
	ld a, $ff                                        ; $618c: $3e $ff
	dec sp                                           ; $618e: $3b
	add hl, de                                       ; $618f: $19
	add hl, de                                       ; $6190: $19
	rra                                              ; $6191: $1f
	rra                                              ; $6192: $1f
	ld d, $95                                        ; $6193: $16 $95
	rra                                              ; $6195: $1f
	dec c                                            ; $6196: $0d
	add hl, bc                                       ; $6197: $09
	ld d, $0e                                        ; $6198: $16 $0e
	ld bc, $0100                                     ; $619a: $01 $00 $01
	nop                                              ; $619d: $00
	ld [$ae7b], sp                                   ; $619e: $08 $7b $ae
	sbc [hl]                                         ; $61a1: $9e

jr_06c_61a2:
	add h                                            ; $61a2: $84
	ld a, e                                          ; $61a3: $7b
	cp $80                                           ; $61a4: $fe $80
	call nz, $c2ff                                   ; $61a6: $c4 $ff $c2
	ld a, a                                          ; $61a9: $7f
	ldh [c], a                                       ; $61aa: $e2
	ld a, a                                          ; $61ab: $7f
	pop af                                           ; $61ac: $f1
	ccf                                              ; $61ad: $3f
	jp hl                                            ; $61ae: $e9


	rra                                              ; $61af: $1f
	db $fc                                           ; $61b0: $fc
	rst GetHLinHL                                          ; $61b1: $cf
	or $ff                                           ; $61b2: $f6 $ff
	push de                                          ; $61b4: $d5
	rst AddAOntoHL                                          ; $61b5: $ef
	ld [hl], h                                       ; $61b6: $74
	rrca                                             ; $61b7: $0f
	ld a, [$ee0f]                                    ; $61b8: $fa $0f $ee
	dec de                                           ; $61bb: $1b
	xor $1b                                          ; $61bc: $ee $1b
	sbc $33                                          ; $61be: $de $33
	sbc $37                                          ; $61c0: $de $37
	cp e                                             ; $61c2: $bb
	ld a, [hl]                                       ; $61c3: $7e
	db $db                                           ; $61c4: $db
	add [hl]                                         ; $61c5: $86
	cp $95                                           ; $61c6: $fe $95
	cp $16                                           ; $61c8: $fe $16
	db $fd                                           ; $61ca: $fd
	ld h, $fd                                        ; $61cb: $26 $fd
	daa                                              ; $61cd: $27
	db $fd                                           ; $61ce: $fd
	ld c, a                                          ; $61cf: $4f
	ld sp, hl                                        ; $61d0: $f9
	ld c, l                                          ; $61d1: $4d
	ei                                               ; $61d2: $fb
	ld e, d                                          ; $61d3: $5a
	rst FarCall                                          ; $61d4: $f7
	sbc d                                            ; $61d5: $9a
	rst FarCall                                          ; $61d6: $f7
	sub d                                            ; $61d7: $92
	rst $38                                          ; $61d8: $ff
	dec h                                            ; $61d9: $25
	rst $38                                          ; $61da: $ff
	daa                                              ; $61db: $27
	rst $38                                          ; $61dc: $ff
	ld c, e                                          ; $61dd: $4b
	rst $38                                          ; $61de: $ff
	ld l, e                                          ; $61df: $6b
	ld b, b                                          ; $61e0: $40
	sbc [hl]                                         ; $61e1: $9e
	nop                                              ; $61e2: $00
	ld a, e                                          ; $61e3: $7b
	cp $94                                           ; $61e4: $fe $94
	ld a, $7f                                        ; $61e6: $3e $7f
	ei                                               ; $61e8: $fb
	xor l                                            ; $61e9: $ad
	xor l                                            ; $61ea: $ad
	adc e                                            ; $61eb: $8b
	adc a                                            ; $61ec: $8f
	adc l                                            ; $61ed: $8d
	adc c                                            ; $61ee: $89
	adc a                                            ; $61ef: $8f
	add [hl]                                         ; $61f0: $86
	ld e, a                                          ; $61f1: $5f
	ld b, b                                          ; $61f2: $40
	ld e, e                                          ; $61f3: $5b
	ld h, b                                          ; $61f4: $60
	sbc c                                            ; $61f5: $99
	add hl, bc                                       ; $61f6: $09
	rst $38                                          ; $61f7: $ff
	nop                                              ; $61f8: $00
	add l                                            ; $61f9: $85
	ret nz                                           ; $61fa: $c0

	ret nz                                           ; $61fb: $c0

	inc de                                           ; $61fc: $13
	ld h, b                                          ; $61fd: $60
	ld a, a                                          ; $61fe: $7f
	sbc $7f                                          ; $61ff: $de $7f
	ld e, [hl]                                       ; $6201: $5e
	sub h                                            ; $6202: $94
	ccf                                              ; $6203: $3f
	dec sp                                           ; $6204: $3b
	dec e                                            ; $6205: $1d
	dec e                                            ; $6206: $1d
	rla                                              ; $6207: $17
	rra                                              ; $6208: $1f
	inc [hl]                                         ; $6209: $34
	add hl, de                                       ; $620a: $19
	rra                                              ; $620b: $1f
	rrca                                             ; $620c: $0f
	inc bc                                           ; $620d: $03
	cpl                                              ; $620e: $2f
	ld h, b                                          ; $620f: $60
	sbc b                                            ; $6210: $98
	rrca                                             ; $6211: $0f
	or $cf                                           ; $6212: $f6 $cf
	push af                                          ; $6214: $f5
	rst AddAOntoHL                                          ; $6215: $ef
	db $f4                                           ; $6216: $f4
	adc a                                            ; $6217: $8f
	ld l, a                                          ; $6218: $6f
	ld h, b                                          ; $6219: $60
	ld e, e                                          ; $621a: $5b
	add b                                            ; $621b: $80
	sub l                                            ; $621c: $95
	nop                                              ; $621d: $00
	ld a, a                                          ; $621e: $7f
	cp h                                             ; $621f: $bc
	rst $38                                          ; $6220: $ff
	rst $38                                          ; $6221: $ff
	adc a                                            ; $6222: $8f
	adc e                                            ; $6223: $8b
	adc c                                            ; $6224: $89
	sbc e                                            ; $6225: $9b
	adc e                                            ; $6226: $8b
	inc hl                                           ; $6227: $23
	add b                                            ; $6228: $80
	sbc l                                            ; $6229: $9d
	push bc                                          ; $622a: $c5
	nop                                              ; $622b: $00
	ld l, e                                          ; $622c: $6b
	add c                                            ; $622d: $81
	inc hl                                           ; $622e: $23
	add b                                            ; $622f: $80
	ld a, a                                          ; $6230: $7f
	cp $9d                                           ; $6231: $fe $9d
	ccf                                              ; $6233: $3f
	inc e                                            ; $6234: $1c
	sbc $3f                                          ; $6235: $de $3f
	sbc e                                            ; $6237: $9b
	rla                                              ; $6238: $17
	dec [hl]                                         ; $6239: $35
	rla                                              ; $623a: $17
	dec de                                           ; $623b: $1b
	rra                                              ; $623c: $1f
	add b                                            ; $623d: $80
	sbc b                                            ; $623e: $98
	rrca                                             ; $623f: $0f
	push af                                          ; $6240: $f5
	adc a                                            ; $6241: $8f
	db $f4                                           ; $6242: $f4
	rst GetHLinHL                                          ; $6243: $cf
	ld a, [$438f]                                    ; $6244: $fa $8f $43
	add b                                            ; $6247: $80
	sub [hl]                                         ; $6248: $96
	sub b                                            ; $6249: $90
	rst $38                                          ; $624a: $ff
	rst AddAOntoHL                                          ; $624b: $ef
	cp a                                             ; $624c: $bf
	or b                                             ; $624d: $b0
	sbc a                                            ; $624e: $9f
	sbc a                                            ; $624f: $9f
	adc a                                            ; $6250: $8f
	adc [hl]                                         ; $6251: $8e
	dec de                                           ; $6252: $1b
	add b                                            ; $6253: $80
	ld a, e                                          ; $6254: $7b
	ld a, a                                          ; $6255: $7f
	ld [hl], a                                       ; $6256: $77
	ld a, h                                          ; $6257: $7c
	dec de                                           ; $6258: $1b
	add b                                            ; $6259: $80
	sub a                                            ; $625a: $97
	jr jr_06c_629c                                   ; $625b: $18 $3f

	ld h, $7f                                        ; $625d: $26 $7f
	ld [hl], b                                       ; $625f: $70
	ccf                                              ; $6260: $3f
	rra                                              ; $6261: $1f
	ccf                                              ; $6262: $3f
	rla                                              ; $6263: $17
	add b                                            ; $6264: $80
	sbc [hl]                                         ; $6265: $9e
	rrca                                             ; $6266: $0f
	ld a, e                                          ; $6267: $7b
	add b                                            ; $6268: $80
	ld [hl], e                                       ; $6269: $73
	nop                                              ; $626a: $00
	sbc c                                            ; $626b: $99
	ld a, b                                          ; $626c: $78
	ld [hl], b                                       ; $626d: $70
	inc c                                            ; $626e: $0c
	ld [rRAMG], sp                                   ; $626f: $08 $00 $00
	ld a, e                                          ; $6272: $7b
	or a                                             ; $6273: $b7
	db $fc                                           ; $6274: $fc
	rst SubAFromDE                                          ; $6275: $df
	add b                                            ; $6276: $80
	sbc l                                            ; $6277: $9d
	rst JumpTable                                          ; $6278: $c7
	pop bc                                           ; $6279: $c1
	sbc $ff                                          ; $627a: $de $ff
	rst SubAFromDE                                          ; $627c: $df
	ldh a, [$9d]                                     ; $627d: $f0 $9d
	add b                                            ; $627f: $80
	ret nz                                           ; $6280: $c0

	jp c, Jump_06c_6f80                              ; $6281: $da $80 $6f

	ld h, [hl]                                       ; $6284: $66
	ld a, e                                          ; $6285: $7b
	cp $80                                           ; $6286: $fe $80
	ld bc, $03ff                                     ; $6288: $01 $ff $03
	cp $0f                                           ; $628b: $fe $0f
	cp [hl]                                          ; $628d: $be
	ld a, a                                          ; $628e: $7f
	cp $ff                                           ; $628f: $fe $ff
	cp $ff                                           ; $6291: $fe $ff
	ld e, $ff                                        ; $6293: $1e $ff
	ldh [c], a                                       ; $6295: $e2
	rra                                              ; $6296: $1f
	cp $03                                           ; $6297: $fe $03
	rst $38                                          ; $6299: $ff
	inc bc                                           ; $629a: $03
	rst $38                                          ; $629b: $ff

jr_06c_629c:
	rlca                                             ; $629c: $07
	ld a, [$780f]                                    ; $629d: $fa $0f $78
	ld [hl], b                                       ; $62a0: $70
	ld c, b                                          ; $62a1: $48
	ld c, h                                          ; $62a2: $4c
	ld h, h                                          ; $62a3: $64
	inc a                                            ; $62a4: $3c
	jr c, jr_06c_62bf                                ; $62a5: $38 $18

	ld l, a                                          ; $62a7: $6f
	cp h                                             ; $62a8: $bc
	ccf                                              ; $62a9: $3f
	ret nz                                           ; $62aa: $c0

	ld [hl], a                                       ; $62ab: $77
	ldh [$9a], a                                     ; $62ac: $e0 $9a
	ld b, h                                          ; $62ae: $44
	ld a, h                                          ; $62af: $7c
	ld h, h                                          ; $62b0: $64
	inc a                                            ; $62b1: $3c
	jr @+$75                                         ; $62b2: $18 $73

	sbc $27                                          ; $62b4: $de $27
	ldh [$7f], a                                     ; $62b6: $e0 $7f
	cp $9e                                           ; $62b8: $fe $9e
	inc h                                            ; $62ba: $24
	ld [hl], e                                       ; $62bb: $73
	cp h                                             ; $62bc: $bc
	sbc [hl]                                         ; $62bd: $9e
	sbc b                                            ; $62be: $98

jr_06c_62bf:
	ld b, e                                          ; $62bf: $43
	ldh [$d7], a                                     ; $62c0: $e0 $d7
	ld bc, $0e80                                     ; $62c2: $01 $80 $0e
	rst $38                                          ; $62c5: $ff
	ldh a, [rIE]                                     ; $62c6: $f0 $ff
	cpl                                              ; $62c8: $2f
	ccf                                              ; $62c9: $3f
	dec h                                            ; $62ca: $25
	ccf                                              ; $62cb: $3f
	ld e, e                                          ; $62cc: $5b
	ld l, a                                          ; $62cd: $6f
	ld [hl], a                                       ; $62ce: $77
	ld e, e                                          ; $62cf: $5b
	cp [hl]                                          ; $62d0: $be
	db $d3                                           ; $62d1: $d3
	xor $b3                                          ; $62d2: $ee $b3
	ld l, h                                          ; $62d4: $6c
	or a                                             ; $62d5: $b7
	ld e, l                                          ; $62d6: $5d
	and $55                                          ; $62d7: $e6 $55
	xor $fa                                          ; $62d9: $ee $fa
	call $ddaa                                       ; $62db: $cd $aa $dd
	xor b                                            ; $62de: $a8
	rst SubAFromDE                                          ; $62df: $df
	ld c, b                                          ; $62e0: $48
	cp a                                             ; $62e1: $bf
	ld c, d                                          ; $62e2: $4a
	sbc h                                            ; $62e3: $9c
	cp a                                             ; $62e4: $bf
	ld [de], a                                       ; $62e5: $12
	rst $38                                          ; $62e6: $ff
	ld [hl], a                                       ; $62e7: $77
	cp $9e                                           ; $62e8: $fe $9e
	sub d                                            ; $62ea: $92
	ld [hl], e                                       ; $62eb: $73
	cp $9c                                           ; $62ec: $fe $9c
	jp nc, $d4ff                                     ; $62ee: $d2 $ff $d4

	ld a, e                                          ; $62f1: $7b
	cp $83                                           ; $62f2: $fe $83
	db $f4                                           ; $62f4: $f4
	cp a                                             ; $62f5: $bf
	db $f4                                           ; $62f6: $f4
	ccf                                              ; $62f7: $3f
	db $f4                                           ; $62f8: $f4
	ld e, a                                          ; $62f9: $5f
	or $9f                                           ; $62fa: $f6 $9f
	jp c, $9b1f                                      ; $62fc: $da $1f $9b

	rrca                                             ; $62ff: $0f
	dec a                                            ; $6300: $3d
	rrca                                             ; $6301: $0f
	dec a                                            ; $6302: $3d
	cp $7e                                           ; $6303: $fe $7e
	db $e3                                           ; $6305: $e3
	cp a                                             ; $6306: $bf
	pop bc                                           ; $6307: $c1
	rst $38                                          ; $6308: $ff
	nop                                              ; $6309: $00
	rst $38                                          ; $630a: $ff
	ld a, [hl]                                       ; $630b: $7e
	rst $38                                          ; $630c: $ff
	dec sp                                           ; $630d: $3b
	add hl, hl                                       ; $630e: $29
	xor c                                            ; $630f: $a9
	sbc $8f                                          ; $6310: $de $8f
	sbc d                                            ; $6312: $9a
	adc e                                            ; $6313: $8b
	adc c                                            ; $6314: $89
	sbc e                                            ; $6315: $9b
	adc [hl]                                         ; $6316: $8e
	add a                                            ; $6317: $87
	db $db                                           ; $6318: $db
	add b                                            ; $6319: $80
	add [hl]                                         ; $631a: $86
	ld b, b                                          ; $631b: $40
	ret nz                                           ; $631c: $c0

	ld b, b                                          ; $631d: $40
	ret nz                                           ; $631e: $c0

	ld a, a                                          ; $631f: $7f
	ldh [$7f], a                                     ; $6320: $e0 $7f
	ldh [$5f], a                                     ; $6322: $e0 $5f
	ldh a, [$5f]                                     ; $6324: $f0 $5f
	ld hl, sp+$4f                                    ; $6326: $f8 $4f
	db $fc                                           ; $6328: $fc
	ld b, a                                          ; $6329: $47
	cp $8b                                           ; $632a: $fe $8b
	rst $38                                          ; $632c: $ff
	adc c                                            ; $632d: $89
	rst $38                                          ; $632e: $ff
	adc b                                            ; $632f: $88
	rst $38                                          ; $6330: $ff
	sub c                                            ; $6331: $91
	rst $38                                          ; $6332: $ff
	sub e                                            ; $6333: $93
	ld a, e                                          ; $6334: $7b
	or h                                             ; $6335: $b4
	adc b                                            ; $6336: $88
	sub a                                            ; $6337: $97
	rst $38                                          ; $6338: $ff
	ld d, [hl]                                       ; $6339: $56
	rst $38                                          ; $633a: $ff
	ld e, l                                          ; $633b: $5d
	cp $5f                                           ; $633c: $fe $5f
	ld hl, sp-$01                                    ; $633e: $f8 $ff
	add hl, de                                       ; $6340: $19
	rst $38                                          ; $6341: $ff
	add hl, de                                       ; $6342: $19
	ld a, a                                          ; $6343: $7f
	sbc c                                            ; $6344: $99
	xor a                                            ; $6345: $af
	reti                                             ; $6346: $d9


	rst $38                                          ; $6347: $ff
	ld c, c                                          ; $6348: $49
	or $09                                           ; $6349: $f6 $09
	cp a                                             ; $634b: $bf
	ret nz                                           ; $634c: $c0

	push bc                                          ; $634d: $c5
	sbc $80                                          ; $634e: $de $80
	ei                                               ; $6350: $fb
	add b                                            ; $6351: $80
	ld [$3c10], sp                                   ; $6352: $08 $10 $3c
	jr nz, jr_06c_637f                               ; $6355: $20 $28

	jr nc, jr_06c_6359                               ; $6357: $30 $00

jr_06c_6359:
	nop                                              ; $6359: $00
	ld [hl], l                                       ; $635a: $75
	sbc a                                            ; $635b: $9f
	ld [hl], a                                       ; $635c: $77
	sbc [hl]                                         ; $635d: $9e
	cp $17                                           ; $635e: $fe $17
	rst $38                                          ; $6360: $ff
	rla                                              ; $6361: $17
	rst FarCall                                          ; $6362: $f7
	ld e, $8d                                        ; $6363: $1e $8d
	ld a, [hl]                                       ; $6365: $7e
	db $fd                                           ; $6366: $fd
	ld [hl], d                                       ; $6367: $72
	rst $38                                          ; $6368: $ff
	ld e, $ff                                        ; $6369: $1e $ff
	ccf                                              ; $636b: $3f
	add hl, de                                       ; $636c: $19
	add hl, de                                       ; $636d: $19
	rra                                              ; $636e: $1f
	rra                                              ; $636f: $1f
	rla                                              ; $6370: $17
	sub l                                            ; $6371: $95
	rra                                              ; $6372: $1f
	dec c                                            ; $6373: $0d
	add hl, bc                                       ; $6374: $09
	ld [hl], $0e                                     ; $6375: $36 $0e
	inc bc                                           ; $6377: $03
	nop                                              ; $6378: $00
	ld bc, $0800                                     ; $6379: $01 $00 $08
	ld a, e                                          ; $637c: $7b
	xor [hl]                                         ; $637d: $ae
	sbc [hl]                                         ; $637e: $9e

jr_06c_637f:
	add h                                            ; $637f: $84
	ld a, e                                          ; $6380: $7b
	cp $80                                           ; $6381: $fe $80
	call nz, $c2ff                                   ; $6383: $c4 $ff $c2
	ld a, a                                          ; $6386: $7f
	ldh [c], a                                       ; $6387: $e2
	ld a, a                                          ; $6388: $7f
	pop af                                           ; $6389: $f1
	ccf                                              ; $638a: $3f
	jp hl                                            ; $638b: $e9


	sbc a                                            ; $638c: $9f
	db $fc                                           ; $638d: $fc
	rst GetHLinHL                                          ; $638e: $cf
	or $ff                                           ; $638f: $f6 $ff
	ld d, l                                          ; $6391: $55
	ld l, a                                          ; $6392: $6f
	ld [hl], h                                       ; $6393: $74
	rrca                                             ; $6394: $0f
	ld a, [$ee0f]                                    ; $6395: $fa $0f $ee
	dec de                                           ; $6398: $1b
	xor $1b                                          ; $6399: $ee $1b
	sbc $33                                          ; $639b: $de $33
	sbc $37                                          ; $639d: $de $37
	cp e                                             ; $639f: $bb
	ld a, [hl]                                       ; $63a0: $7e
	db $db                                           ; $63a1: $db
	add [hl]                                         ; $63a2: $86
	cp $95                                           ; $63a3: $fe $95
	cp $16                                           ; $63a5: $fe $16
	db $fd                                           ; $63a7: $fd
	ld h, $fd                                        ; $63a8: $26 $fd
	daa                                              ; $63aa: $27
	db $fd                                           ; $63ab: $fd
	ld c, a                                          ; $63ac: $4f
	ld sp, hl                                        ; $63ad: $f9
	ld c, l                                          ; $63ae: $4d
	ei                                               ; $63af: $fb
	ld e, d                                          ; $63b0: $5a
	rst FarCall                                          ; $63b1: $f7
	sbc d                                            ; $63b2: $9a
	rst FarCall                                          ; $63b3: $f7
	sub d                                            ; $63b4: $92
	rst $38                                          ; $63b5: $ff
	dec h                                            ; $63b6: $25
	rst $38                                          ; $63b7: $ff
	daa                                              ; $63b8: $27
	rst $38                                          ; $63b9: $ff
	ld c, e                                          ; $63ba: $4b
	rst $38                                          ; $63bb: $ff
	ld h, e                                          ; $63bc: $63
	ld b, b                                          ; $63bd: $40
	ld a, e                                          ; $63be: $7b
	ld a, $95                                        ; $63bf: $3e $95
	ld a, a                                          ; $63c1: $7f
	cp e                                             ; $63c2: $bb
	adc c                                            ; $63c3: $89
	adc c                                            ; $63c4: $89
	adc a                                            ; $63c5: $8f
	adc a                                            ; $63c6: $8f
	adc c                                            ; $63c7: $89
	sbc e                                            ; $63c8: $9b
	adc d                                            ; $63c9: $8a
	add [hl]                                         ; $63ca: $86
	ld e, a                                          ; $63cb: $5f
	ld b, b                                          ; $63cc: $40
	ld d, a                                          ; $63cd: $57
	ld h, b                                          ; $63ce: $60
	sbc d                                            ; $63cf: $9a
	rst $38                                          ; $63d0: $ff
	add b                                            ; $63d1: $80
	add l                                            ; $63d2: $85
	ret nz                                           ; $63d3: $c0

	ret nz                                           ; $63d4: $c0

	rrca                                             ; $63d5: $0f
	ld h, b                                          ; $63d6: $60
	sbc b                                            ; $63d7: $98
	nop                                              ; $63d8: $00
	rst SubAFromDE                                          ; $63d9: $df
	ld a, $3f                                        ; $63da: $3e $3f
	dec sp                                           ; $63dc: $3b
	dec e                                            ; $63dd: $1d
	dec e                                            ; $63de: $1d
	dec de                                           ; $63df: $1b
	ld h, b                                          ; $63e0: $60
	sbc b                                            ; $63e1: $98
	rra                                              ; $63e2: $1f
	db $fc                                           ; $63e3: $fc
	rrca                                             ; $63e4: $0f
	or $cf                                           ; $63e5: $f6 $cf
	push af                                          ; $63e7: $f5
	rst AddAOntoHL                                          ; $63e8: $ef
	ld h, a                                          ; $63e9: $67
	ld h, b                                          ; $63ea: $60
	ld e, e                                          ; $63eb: $5b
	add b                                            ; $63ec: $80
	sbc d                                            ; $63ed: $9a
	nop                                              ; $63ee: $00
	ld a, a                                          ; $63ef: $7f
	db $fc                                           ; $63f0: $fc
	sbc a                                            ; $63f1: $9f
	sbc a                                            ; $63f2: $9f
	halt                                             ; $63f3: $76
	ret nz                                           ; $63f4: $c0

	inc hl                                           ; $63f5: $23
	add b                                            ; $63f6: $80
	sbc h                                            ; $63f7: $9c
	nop                                              ; $63f8: $00
	rst JumpTable                                          ; $63f9: $c7
	nop                                              ; $63fa: $00
	ld [hl], $e0                                     ; $63fb: $36 $e0
	sub l                                            ; $63fd: $95
	rst $38                                          ; $63fe: $ff

Call_06c_63ff:
	ld d, $fe                                        ; $63ff: $16 $fe
	rla                                              ; $6401: $17
	rst FarCall                                          ; $6402: $f7
	rra                                              ; $6403: $1f
	sbc e                                            ; $6404: $9b
	ld a, [hl]                                       ; $6405: $7e
	ld a, l                                          ; $6406: $7d
	ldh [c], a                                       ; $6407: $e2
	ld [hl], e                                       ; $6408: $73
	cp d                                             ; $6409: $ba
	sub [hl]                                         ; $640a: $96
	ld a, h                                          ; $640b: $7c
	ld a, a                                          ; $640c: $7f
	ccf                                              ; $640d: $3f
	ccf                                              ; $640e: $3f
	rla                                              ; $640f: $17
	ld sp, $7b17                                     ; $6410: $31 $17 $7b
	rrca                                             ; $6413: $0f
	inc hl                                           ; $6414: $23
	add b                                            ; $6415: $80
	sbc b                                            ; $6416: $98
	adc a                                            ; $6417: $8f
	push af                                          ; $6418: $f5
	rst GetHLinHL                                          ; $6419: $cf
	db $f4                                           ; $641a: $f4
	adc a                                            ; $641b: $8f
	ld a, [$438f]                                    ; $641c: $fa $8f $43
	add b                                            ; $641f: $80
	sub [hl]                                         ; $6420: $96
	sub b                                            ; $6421: $90
	rst $38                                          ; $6422: $ff
	rst AddAOntoHL                                          ; $6423: $ef
	cp a                                             ; $6424: $bf
	or b                                             ; $6425: $b0
	sbc a                                            ; $6426: $9f
	sbc a                                            ; $6427: $9f
	adc [hl]                                         ; $6428: $8e
	adc [hl]                                         ; $6429: $8e
	rra                                              ; $642a: $1f
	add b                                            ; $642b: $80
	sbc [hl]                                         ; $642c: $9e
	add c                                            ; $642d: $81
	ld a, [$801f]                                    ; $642e: $fa $1f $80
	sub [hl]                                         ; $6431: $96
	ccf                                              ; $6432: $3f
	jr @+$41                                         ; $6433: $18 $3f

	ld h, $7f                                        ; $6435: $26 $7f
	ld [hl], b                                       ; $6437: $70
	ccf                                              ; $6438: $3f
	rra                                              ; $6439: $1f
	ccf                                              ; $643a: $3f
	rra                                              ; $643b: $1f
	add b                                            ; $643c: $80
	sbc d                                            ; $643d: $9a
	rrca                                             ; $643e: $0f
	push af                                          ; $643f: $f5
	rrca                                             ; $6440: $0f
	db $f4                                           ; $6441: $f4
	rst GetHLinHL                                          ; $6442: $cf
	ld l, a                                          ; $6443: $6f
	nop                                              ; $6444: $00
	sub a                                            ; $6445: $97
	ld a, b                                          ; $6446: $78
	ld e, b                                          ; $6447: $58
	inc b                                            ; $6448: $04
	ld b, h                                          ; $6449: $44
	inc a                                            ; $644a: $3c
	inc a                                            ; $644b: $3c
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	ld a, e                                          ; $644e: $7b
	or l                                             ; $644f: $b5
	cp $df                                           ; $6450: $fe $df
	add b                                            ; $6452: $80
	sbc l                                            ; $6453: $9d
	rst JumpTable                                          ; $6454: $c7
	pop bc                                           ; $6455: $c1
	sbc $ff                                          ; $6456: $de $ff
	rst SubAFromDE                                          ; $6458: $df
	ldh a, [$9d]                                     ; $6459: $f0 $9d
	add b                                            ; $645b: $80
	ret nz                                           ; $645c: $c0

	jp c, Jump_06c_6f80                              ; $645d: $da $80 $6f

	ld h, [hl]                                       ; $6460: $66
	ld a, e                                          ; $6461: $7b
	cp $95                                           ; $6462: $fe $95
	ld bc, $03ff                                     ; $6464: $01 $ff $03
	cp $0f                                           ; $6467: $fe $0f
	cp [hl]                                          ; $6469: $be
	ld a, a                                          ; $646a: $7f
	cp $ff                                           ; $646b: $fe $ff
	cp $79                                           ; $646d: $fe $79
	ei                                               ; $646f: $fb
	adc l                                            ; $6470: $8d
	ldh [c], a                                       ; $6471: $e2
	rra                                              ; $6472: $1f
	cp $03                                           ; $6473: $fe $03
	rst $38                                          ; $6475: $ff
	inc bc                                           ; $6476: $03
	rst $38                                          ; $6477: $ff
	rlca                                             ; $6478: $07
	ld a, [$780f]                                    ; $6479: $fa $0f $78
	ld e, b                                          ; $647c: $58
	ld b, h                                          ; $647d: $44
	ld b, h                                          ; $647e: $44
	ld h, h                                          ; $647f: $64
	inc h                                            ; $6480: $24
	jr c, @+$1a                                      ; $6481: $38 $18

	ld l, a                                          ; $6483: $6f
	cp [hl]                                          ; $6484: $be
	ccf                                              ; $6485: $3f
	ret nz                                           ; $6486: $c0

	ld [hl], a                                       ; $6487: $77
	ldh [$9d], a                                     ; $6488: $e0 $9d
	ld a, h                                          ; $648a: $7c
	ld [hl], h                                       ; $648b: $74
	ld h, a                                          ; $648c: $67
	sbc $1f                                          ; $648d: $de $1f
	ldh [$df], a                                     ; $648f: $e0 $df
	inc h                                            ; $6491: $24
	ld [hl], a                                       ; $6492: $77
	sbc $9e                                          ; $6493: $de $9e
	or b                                             ; $6495: $b0
	ld b, e                                          ; $6496: $43
	ldh [$dd], a                                     ; $6497: $e0 $dd
	ld bc, $0e80                                     ; $6499: $01 $80 $0e
	rst $38                                          ; $649c: $ff
	ldh a, [rIE]                                     ; $649d: $f0 $ff
	cpl                                              ; $649f: $2f
	ccf                                              ; $64a0: $3f
	dec h                                            ; $64a1: $25
	ccf                                              ; $64a2: $3f
	ld e, e                                          ; $64a3: $5b
	ld l, a                                          ; $64a4: $6f
	ld [hl], a                                       ; $64a5: $77
	ld e, e                                          ; $64a6: $5b
	cp [hl]                                          ; $64a7: $be
	db $d3                                           ; $64a8: $d3
	xor $b3                                          ; $64a9: $ee $b3
	ld l, h                                          ; $64ab: $6c
	or a                                             ; $64ac: $b7
	ld e, l                                          ; $64ad: $5d
	and $55                                          ; $64ae: $e6 $55
	xor $fa                                          ; $64b0: $ee $fa
	call $ddaa                                       ; $64b2: $cd $aa $dd
	xor b                                            ; $64b5: $a8
	rst SubAFromDE                                          ; $64b6: $df
	ld c, b                                          ; $64b7: $48
	cp a                                             ; $64b8: $bf
	ld c, d                                          ; $64b9: $4a
	sbc h                                            ; $64ba: $9c
	cp a                                             ; $64bb: $bf
	ld [de], a                                       ; $64bc: $12
	rst $38                                          ; $64bd: $ff
	ld [hl], a                                       ; $64be: $77
	cp $9e                                           ; $64bf: $fe $9e
	sub d                                            ; $64c1: $92
	ld [hl], e                                       ; $64c2: $73
	cp $9c                                           ; $64c3: $fe $9c
	jp nc, $d4ff                                     ; $64c5: $d2 $ff $d4

	ld a, e                                          ; $64c8: $7b
	cp $80                                           ; $64c9: $fe $80
	db $f4                                           ; $64cb: $f4
	cp a                                             ; $64cc: $bf
	db $f4                                           ; $64cd: $f4
	ccf                                              ; $64ce: $3f
	db $f4                                           ; $64cf: $f4
	ld e, a                                          ; $64d0: $5f
	or $9f                                           ; $64d1: $f6 $9f
	jp c, $9b1f                                      ; $64d3: $da $1f $9b

	rrca                                             ; $64d6: $0f
	dec a                                            ; $64d7: $3d
	rrca                                             ; $64d8: $0f
	jr nc, @-$0f                                     ; $64d9: $30 $ef

	ld c, a                                          ; $64db: $4f
	rst $38                                          ; $64dc: $ff
	cp a                                             ; $64dd: $bf
	ldh a, [rIE]                                     ; $64de: $f0 $ff
	ld c, $ff                                        ; $64e0: $0e $ff
	ld a, a                                          ; $64e2: $7f
	rst $38                                          ; $64e3: $ff
	add hl, sp                                       ; $64e4: $39
	ld l, $ae                                        ; $64e5: $2e $ae
	adc e                                            ; $64e7: $8b
	adc a                                            ; $64e8: $8f
	add e                                            ; $64e9: $83
	sbc d                                            ; $64ea: $9a
	add a                                            ; $64eb: $87
	add l                                            ; $64ec: $85
	add l                                            ; $64ed: $85
	adc [hl]                                         ; $64ee: $8e
	add a                                            ; $64ef: $87
	db $db                                           ; $64f0: $db
	add b                                            ; $64f1: $80
	add [hl]                                         ; $64f2: $86
	ld b, b                                          ; $64f3: $40
	ret nz                                           ; $64f4: $c0

	ld b, b                                          ; $64f5: $40
	ret nz                                           ; $64f6: $c0

	ld a, a                                          ; $64f7: $7f
	ldh [$7f], a                                     ; $64f8: $e0 $7f
	ldh [$5f], a                                     ; $64fa: $e0 $5f
	ldh a, [$5f]                                     ; $64fc: $f0 $5f
	ld hl, sp+$4f                                    ; $64fe: $f8 $4f
	db $fc                                           ; $6500: $fc
	ld b, a                                          ; $6501: $47
	cp $8b                                           ; $6502: $fe $8b
	rst $38                                          ; $6504: $ff
	adc c                                            ; $6505: $89
	rst $38                                          ; $6506: $ff
	adc b                                            ; $6507: $88
	rst $38                                          ; $6508: $ff
	sub c                                            ; $6509: $91
	rst $38                                          ; $650a: $ff
	sub e                                            ; $650b: $93
	ld a, e                                          ; $650c: $7b
	or h                                             ; $650d: $b4
	adc b                                            ; $650e: $88
	sub a                                            ; $650f: $97
	rst $38                                          ; $6510: $ff
	ld d, [hl]                                       ; $6511: $56
	rst $38                                          ; $6512: $ff
	ld e, l                                          ; $6513: $5d
	cp $5f                                           ; $6514: $fe $5f
	ld hl, sp-$01                                    ; $6516: $f8 $ff
	reti                                             ; $6518: $d9


	rst $38                                          ; $6519: $ff
	add hl, de                                       ; $651a: $19
	rst $38                                          ; $651b: $ff
	add hl, de                                       ; $651c: $19
	rst AddAOntoHL                                          ; $651d: $ef
	add hl, de                                       ; $651e: $19
	rst $38                                          ; $651f: $ff
	add hl, bc                                       ; $6520: $09
	or $89                                           ; $6521: $f6 $89
	cp a                                             ; $6523: $bf
	ret nz                                           ; $6524: $c0

	push bc                                          ; $6525: $c5
	sbc $80                                          ; $6526: $de $80
	ei                                               ; $6528: $fb
	add b                                            ; $6529: $80
	ld [$3c10], sp                                   ; $652a: $08 $10 $3c
	jr nz, jr_06c_6557                               ; $652d: $20 $28

	jr nc, jr_06c_6531                               ; $652f: $30 $00

jr_06c_6531:
	nop                                              ; $6531: $00
	ld [hl], l                                       ; $6532: $75
	sbc a                                            ; $6533: $9f
	scf                                              ; $6534: $37
	sbc $df                                          ; $6535: $de $df
	halt                                             ; $6537: $76
	rst FarCall                                          ; $6538: $f7
	ld a, $fe                                        ; $6539: $3e $fe
	rra                                              ; $653b: $1f
	rst AddAOntoHL                                          ; $653c: $ef
	inc de                                           ; $653d: $13
	db $fd                                           ; $653e: $fd
	ld e, $ff                                        ; $653f: $1e $ff
	ccf                                              ; $6541: $3f
	db $dd                                           ; $6542: $dd
	add hl, de                                       ; $6543: $19
	inc e                                            ; $6544: $1c
	inc e                                            ; $6545: $1c
	rla                                              ; $6546: $17
	rra                                              ; $6547: $1f
	rla                                              ; $6548: $17
	sub l                                            ; $6549: $95
	rra                                              ; $654a: $1f
	dec c                                            ; $654b: $0d
	add hl, bc                                       ; $654c: $09
	ld d, $0e                                        ; $654d: $16 $0e
	ld bc, $0100                                     ; $654f: $01 $00 $01
	nop                                              ; $6552: $00
	ld [$ae7b], sp                                   ; $6553: $08 $7b $ae
	sbc [hl]                                         ; $6556: $9e

jr_06c_6557:
	add h                                            ; $6557: $84
	ld a, e                                          ; $6558: $7b
	cp $80                                           ; $6559: $fe $80
	call nz, Call_06c_427f                           ; $655b: $c4 $7f $42
	rst $38                                          ; $655e: $ff
	ldh [c], a                                       ; $655f: $e2
	rst $38                                          ; $6560: $ff
	pop af                                           ; $6561: $f1
	ccf                                              ; $6562: $3f
	jp hl                                            ; $6563: $e9


	sbc a                                            ; $6564: $9f
	db $fc                                           ; $6565: $fc
	rst GetHLinHL                                          ; $6566: $cf
	or $7f                                           ; $6567: $f6 $7f
	ld d, l                                          ; $6569: $55
	ld l, a                                          ; $656a: $6f
	ld [hl], h                                       ; $656b: $74
	rrca                                             ; $656c: $0f
	ld a, [$ee0f]                                    ; $656d: $fa $0f $ee
	dec de                                           ; $6570: $1b
	xor $1b                                          ; $6571: $ee $1b
	sbc $33                                          ; $6573: $de $33
	sbc $37                                          ; $6575: $de $37
	cp e                                             ; $6577: $bb
	ld a, [hl]                                       ; $6578: $7e
	db $db                                           ; $6579: $db
	add [hl]                                         ; $657a: $86
	cp $95                                           ; $657b: $fe $95
	cp $16                                           ; $657d: $fe $16
	db $fd                                           ; $657f: $fd
	ld h, $fd                                        ; $6580: $26 $fd
	daa                                              ; $6582: $27
	db $fd                                           ; $6583: $fd
	ld c, a                                          ; $6584: $4f
	ld sp, hl                                        ; $6585: $f9
	ld c, l                                          ; $6586: $4d
	ei                                               ; $6587: $fb
	ld e, d                                          ; $6588: $5a
	rst FarCall                                          ; $6589: $f7
	sbc d                                            ; $658a: $9a
	rst FarCall                                          ; $658b: $f7
	sub d                                            ; $658c: $92
	rst $38                                          ; $658d: $ff
	dec h                                            ; $658e: $25
	rst $38                                          ; $658f: $ff
	daa                                              ; $6590: $27
	rst $38                                          ; $6591: $ff
	ld c, e                                          ; $6592: $4b
	rst $38                                          ; $6593: $ff
	ld l, e                                          ; $6594: $6b
	ld b, b                                          ; $6595: $40
	sub b                                            ; $6596: $90
	nop                                              ; $6597: $00
	rst $38                                          ; $6598: $ff
	nop                                              ; $6599: $00
	rst AddAOntoHL                                          ; $659a: $ef
	ld e, $7f                                        ; $659b: $1e $7f
	cp e                                             ; $659d: $bb
	db $ed                                           ; $659e: $ed
	db $ed                                           ; $659f: $ed
	adc e                                            ; $65a0: $8b
	adc a                                            ; $65a1: $8f
	adc l                                            ; $65a2: $8d
	adc c                                            ; $65a3: $89
	adc a                                            ; $65a4: $8f
	add [hl]                                         ; $65a5: $86
	ld e, a                                          ; $65a6: $5f
	ld b, b                                          ; $65a7: $40
	ld e, e                                          ; $65a8: $5b
	ld h, b                                          ; $65a9: $60
	sbc c                                            ; $65aa: $99
	add hl, bc                                       ; $65ab: $09
	rst $38                                          ; $65ac: $ff
	nop                                              ; $65ad: $00
	add l                                            ; $65ae: $85
	ret nz                                           ; $65af: $c0

	ret nz                                           ; $65b0: $c0

	dec de                                           ; $65b1: $1b
	ld h, b                                          ; $65b2: $60
	adc [hl]                                         ; $65b3: $8e
	db $ed                                           ; $65b4: $ed
	ld [de], a                                       ; $65b5: $12
	rst $38                                          ; $65b6: $ff
	nop                                              ; $65b7: $00
	rst SubAFromDE                                          ; $65b8: $df
	ld a, $3f                                        ; $65b9: $3e $3f
	dec sp                                           ; $65bb: $3b
	dec e                                            ; $65bc: $1d
	dec e                                            ; $65bd: $1d
	rla                                              ; $65be: $17
	rra                                              ; $65bf: $1f
	inc [hl]                                         ; $65c0: $34
	add hl, de                                       ; $65c1: $19
	rra                                              ; $65c2: $1f
	rrca                                             ; $65c3: $0f
	inc bc                                           ; $65c4: $03
	scf                                              ; $65c5: $37
	ld h, b                                          ; $65c6: $60
	sub [hl]                                         ; $65c7: $96
	rra                                              ; $65c8: $1f
	db $fc                                           ; $65c9: $fc
	rrca                                             ; $65ca: $0f
	or $cf                                           ; $65cb: $f6 $cf
	push af                                          ; $65cd: $f5
	rst AddAOntoHL                                          ; $65ce: $ef
	db $f4                                           ; $65cf: $f4
	adc a                                            ; $65d0: $8f
	ld l, a                                          ; $65d1: $6f
	ld h, b                                          ; $65d2: $60
	ld e, a                                          ; $65d3: $5f
	add b                                            ; $65d4: $80
	ld a, a                                          ; $65d5: $7f
	cp $97                                           ; $65d6: $fe $97
	ld a, a                                          ; $65d8: $7f
	cp h                                             ; $65d9: $bc
	rst $38                                          ; $65da: $ff
	rst $38                                          ; $65db: $ff
	adc a                                            ; $65dc: $8f
	adc e                                            ; $65dd: $8b
	sbc c                                            ; $65de: $99
	sbc e                                            ; $65df: $9b
	rra                                              ; $65e0: $1f
	add b                                            ; $65e1: $80
	sbc l                                            ; $65e2: $9d
	push bc                                          ; $65e3: $c5
	nop                                              ; $65e4: $00
	ld d, $e0                                        ; $65e5: $16 $e0
	ld [hl], a                                       ; $65e7: $77
	add b                                            ; $65e8: $80
	ld a, e                                          ; $65e9: $7b
	cp d                                             ; $65ea: $ba
	sub a                                            ; $65eb: $97
	ld a, h                                          ; $65ec: $7c
	ld a, a                                          ; $65ed: $7f
	ccf                                              ; $65ee: $3f
	ccf                                              ; $65ef: $3f
	rla                                              ; $65f0: $17
	dec [hl]                                         ; $65f1: $35
	rla                                              ; $65f2: $17
	dec de                                           ; $65f3: $1b
	rra                                              ; $65f4: $1f
	add b                                            ; $65f5: $80
	sbc b                                            ; $65f6: $98
	rrca                                             ; $65f7: $0f
	push af                                          ; $65f8: $f5
	adc a                                            ; $65f9: $8f
	db $f4                                           ; $65fa: $f4
	rst GetHLinHL                                          ; $65fb: $cf
	ld a, [$438f]                                    ; $65fc: $fa $8f $43
	add b                                            ; $65ff: $80
	sub [hl]                                         ; $6600: $96
	sub b                                            ; $6601: $90
	rst $38                                          ; $6602: $ff
	rst AddAOntoHL                                          ; $6603: $ef
	cp a                                             ; $6604: $bf
	or b                                             ; $6605: $b0
	sbc a                                            ; $6606: $9f
	sbc a                                            ; $6607: $9f
	adc a                                            ; $6608: $8f
	adc [hl]                                         ; $6609: $8e
	dec de                                           ; $660a: $1b
	add b                                            ; $660b: $80
	ld a, [$801f]                                    ; $660c: $fa $1f $80
	sub [hl]                                         ; $660f: $96
	ccf                                              ; $6610: $3f
	jr @+$41                                         ; $6611: $18 $3f

	ld h, $7f                                        ; $6613: $26 $7f
	ld [hl], b                                       ; $6615: $70
	ccf                                              ; $6616: $3f
	ccf                                              ; $6617: $3f
	rrca                                             ; $6618: $0f
	rla                                              ; $6619: $17
	add b                                            ; $661a: $80
	sbc [hl]                                         ; $661b: $9e
	rrca                                             ; $661c: $0f
	ld a, e                                          ; $661d: $7b
	add b                                            ; $661e: $80
	ld [hl], e                                       ; $661f: $73
	nop                                              ; $6620: $00
	sub d                                            ; $6621: $92
	ld a, b                                          ; $6622: $78
	ld [hl], b                                       ; $6623: $70
	ld b, h                                          ; $6624: $44
	ld b, [hl]                                       ; $6625: $46
	ld b, d                                          ; $6626: $42
	inc a                                            ; $6627: $3c
	ld b, h                                          ; $6628: $44
	inc a                                            ; $6629: $3c
	jr @+$3a                                         ; $662a: $18 $38

	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	jr nc, jr_06c_66ab                               ; $662e: $30 $7b

	ld [hl+], a                                      ; $6630: $22
	sbc l                                            ; $6631: $9d
	rst JumpTable                                          ; $6632: $c7
	pop bc                                           ; $6633: $c1
	sbc $ff                                          ; $6634: $de $ff
	rst SubAFromDE                                          ; $6636: $df
	ldh a, [$9d]                                     ; $6637: $f0 $9d
	add b                                            ; $6639: $80
	ret nz                                           ; $663a: $c0

	jp c, Jump_06c_6f80                              ; $663b: $da $80 $6f

	ld h, [hl]                                       ; $663e: $66
	ld a, e                                          ; $663f: $7b
	cp $88                                           ; $6640: $fe $88
	ld bc, $03ff                                     ; $6642: $01 $ff $03
	cp $0f                                           ; $6645: $fe $0f
	cp [hl]                                          ; $6647: $be
	ld a, a                                          ; $6648: $7f
	cp $ff                                           ; $6649: $fe $ff
	cp $ff                                           ; $664b: $fe $ff
	ld e, $ff                                        ; $664d: $1e $ff
	ldh [c], a                                       ; $664f: $e2
	rra                                              ; $6650: $1f
	cp $03                                           ; $6651: $fe $03
	rst $38                                          ; $6653: $ff
	inc bc                                           ; $6654: $03
	rst $38                                          ; $6655: $ff
	rlca                                             ; $6656: $07
	ld a, [$770f]                                    ; $6657: $fa $0f $77
	ret nz                                           ; $665a: $c0

	sbc h                                            ; $665b: $9c
	ld b, [hl]                                       ; $665c: $46
	inc a                                            ; $665d: $3c
	jr c, jr_06c_66db                                ; $665e: $38 $7b

	jp nz, $109e                                     ; $6660: $c2 $9e $10

	cp $3f                                           ; $6663: $fe $3f
	ret nz                                           ; $6665: $c0

	ld a, a                                          ; $6666: $7f
	ldh [$9b], a                                     ; $6667: $e0 $9b
	inc b                                            ; $6669: $04
	ld c, [hl]                                       ; $666a: $4e
	ld a, [de]                                       ; $666b: $1a
	inc a                                            ; $666c: $3c
	ld l, a                                          ; $666d: $6f
	ldh [c], a                                       ; $666e: $e2
	daa                                              ; $666f: $27
	ldh [$9e], a                                     ; $6670: $e0 $9e
	ld a, [hl-]                                      ; $6672: $3a
	dec de                                           ; $6673: $1b
	ldh [$cf], a                                     ; $6674: $e0 $cf
	ld [bc], a                                       ; $6676: $02
	rst $38                                          ; $6677: $ff
	rst SubAFromDE                                          ; $6678: $df
	ld bc, $0285                                     ; $6679: $01 $85 $02
	inc bc                                           ; $667c: $03
	inc bc                                           ; $667d: $03
	ld [bc], a                                       ; $667e: $02
	inc b                                            ; $667f: $04
	rlca                                             ; $6680: $07
	dec b                                            ; $6681: $05
	ld b, $0b                                        ; $6682: $06 $0b
	inc c                                            ; $6684: $0c
	dec bc                                           ; $6685: $0b
	inc c                                            ; $6686: $0c
	ld [$100f], sp                                   ; $6687: $08 $0f $10
	rra                                              ; $668a: $1f
	ld [de], a                                       ; $668b: $12
	rra                                              ; $668c: $1f
	dec d                                            ; $668d: $15
	ld e, $15                                        ; $668e: $1e $15
	ld e, $1f                                        ; $6690: $1e $1f
	inc e                                            ; $6692: $1c
	rrca                                             ; $6693: $0f
	inc c                                            ; $6694: $0c
	ld l, a                                          ; $6695: $6f
	cp $77                                           ; $6696: $fe $77
	add sp, $5f                                      ; $6698: $e8 $5f
	cp $80                                           ; $669a: $fe $80
	inc de                                           ; $669c: $13
	inc e                                            ; $669d: $1c
	inc de                                           ; $669e: $13
	inc e                                            ; $669f: $1c
	dec d                                            ; $66a0: $15
	ld a, [de]                                       ; $66a1: $1a
	ld [de], a                                       ; $66a2: $12
	dec e                                            ; $66a3: $1d
	dec d                                            ; $66a4: $15
	ld a, [de]                                       ; $66a5: $1a
	jr nz, jr_06c_66e7                               ; $66a6: $20 $3f

	ld hl, $233f                                     ; $66a8: $21 $3f $23

jr_06c_66ab:
	ccf                                              ; $66ab: $3f
	inc hl                                           ; $66ac: $23
	ld a, $27                                        ; $66ad: $3e $27
	ld a, $27                                        ; $66af: $3e $27
	inc a                                            ; $66b1: $3c
	ld c, e                                          ; $66b2: $4b

jr_06c_66b3:
	ld a, h                                          ; $66b3: $7c
	ld c, a                                          ; $66b4: $4f
	ld a, b                                          ; $66b5: $78
	ld d, a                                          ; $66b6: $57
	ld a, b                                          ; $66b7: $78
	ld e, a                                          ; $66b8: $5f
	ld [hl], b                                       ; $66b9: $70
	ld a, a                                          ; $66ba: $7f
	sub [hl]                                         ; $66bb: $96
	ld [hl], b                                       ; $66bc: $70
	ld l, a                                          ; $66bd: $6f
	ld [hl], b                                       ; $66be: $70
	ld e, a                                          ; $66bf: $5f
	ld h, b                                          ; $66c0: $60
	ld a, a                                          ; $66c1: $7f
	ld b, b                                          ; $66c2: $40
	cp a                                             ; $66c3: $bf
	ret nz                                           ; $66c4: $c0

	ld c, a                                          ; $66c5: $4f
	cp $93                                           ; $66c6: $fe $93
	sbc a                                            ; $66c8: $9f
	ldh [$5d], a                                     ; $66c9: $e0 $5d
	ld h, d                                          ; $66cb: $62
	ld e, e                                          ; $66cc: $5b
	ld h, h                                          ; $66cd: $64
	ld d, e                                          ; $66ce: $53
	ld l, h                                          ; $66cf: $6c
	ld d, e                                          ; $66d0: $53
	ld l, h                                          ; $66d1: $6c
	daa                                              ; $66d2: $27
	jr c, jr_06c_6744                                ; $66d3: $38 $6f

	cp $99                                           ; $66d5: $fe $99
	inc de                                           ; $66d7: $13
	dec e                                            ; $66d8: $1d
	inc de                                           ; $66d9: $13
	dec e                                            ; $66da: $1d

jr_06c_66db:
	dec bc                                           ; $66db: $0b
	rrca                                             ; $66dc: $0f
	push hl                                          ; $66dd: $e5
	rst SubAFromDE                                          ; $66de: $df
	rra                                              ; $66df: $1f
	sbc e                                            ; $66e0: $9b

jr_06c_66e1:
	ld a, a                                          ; $66e1: $7f
	ld h, b                                          ; $66e2: $60
	add b                                            ; $66e3: $80
	add b                                            ; $66e4: $80
	or $99                                           ; $66e5: $f6 $99

jr_06c_66e7:
	jr nz, jr_06c_66e9                               ; $66e7: $20 $00

jr_06c_66e9:
	ld b, b                                          ; $66e9: $40
	nop                                              ; $66ea: $00
	ret nz                                           ; $66eb: $c0

Call_06c_66ec:
	nop                                              ; $66ec: $00
	ld d, a                                          ; $66ed: $57
	xor $f3                                          ; $66ee: $ee $f3
	db $dd                                           ; $66f0: $dd
	db $10                                           ; $66f1: $10
	sbc c                                            ; $66f2: $99
	jr nc, jr_06c_6715                               ; $66f3: $30 $20

	ld h, b                                          ; $66f5: $60
	jr nz, @+$62                                     ; $66f6: $20 $60

	ld b, b                                          ; $66f8: $40
	sbc $c0                                          ; $66f9: $de $c0
	db $dd                                           ; $66fb: $dd
	add b                                            ; $66fc: $80
	rst $38                                          ; $66fd: $ff
	add b                                            ; $66fe: $80
	cp $01                                           ; $66ff: $fe $01
	db $fd                                           ; $6701: $fd
	inc bc                                           ; $6702: $03
	db $fd                                           ; $6703: $fd
	inc bc                                           ; $6704: $03
	ld a, [$fd07]                                    ; $6705: $fa $07 $fd
	ld b, $fb                                        ; $6708: $06 $fb
	inc c                                            ; $670a: $0c
	ei                                               ; $670b: $fb
	inc c                                            ; $670c: $0c
	rst FarCall                                          ; $670d: $f7
	jr @-$17                                         ; $670e: $18 $e7

	jr jr_06c_66e1                                   ; $6710: $18 $cf

	jr nc, jr_06c_66b3                               ; $6712: $30 $9f

	ld h, b                                          ; $6714: $60

jr_06c_6715:
	cp $01                                           ; $6715: $fe $01
	push af                                          ; $6717: $f5
	ld a, [bc]                                       ; $6718: $0a
	db $eb                                           ; $6719: $eb
	inc d                                            ; $671a: $14
	db $d3                                           ; $671b: $d3
	inc l                                            ; $671c: $2c
	add a                                            ; $671d: $87
	sbc d                                            ; $671e: $9a
	ld a, b                                          ; $671f: $78
	nop                                              ; $6720: $00
	jr nc, jr_06c_6723                               ; $6721: $30 $00

jr_06c_6723:
	ld h, b                                          ; $6723: $60
	ld l, a                                          ; $6724: $6f
	xor h                                            ; $6725: $ac
	sbc $01                                          ; $6726: $de $01
	adc h                                            ; $6728: $8c
	add hl, bc                                       ; $6729: $09
	inc de                                           ; $672a: $13
	ld a, [de]                                       ; $672b: $1a
	inc de                                           ; $672c: $13
	ld [hl], $27                                     ; $672d: $36 $27
	halt                                             ; $672f: $76
	ld h, a                                          ; $6730: $67
	db $fc                                           ; $6731: $fc
	ld l, a                                          ; $6732: $6f
	db $ed                                           ; $6733: $ed
	rst GetHLinHL                                          ; $6734: $cf
	ld sp, hl                                        ; $6735: $f9
	rst SubAFromDE                                          ; $6736: $df
	jp nc, $f3bf                                     ; $6737: $d2 $bf $f3

	rst $38                                          ; $673a: $ff
	db $e4                                           ; $673b: $e4
	jp hl                                            ; $673c: $e9


	rst SubAFromDE                                          ; $673d: $df
	inc bc                                           ; $673e: $03
	ld a, [hl]                                       ; $673f: $7e
	add sp, $7e                                      ; $6740: $e8 $7e
	rst FarCall                                          ; $6742: $f7
	adc e                                            ; $6743: $8b

jr_06c_6744:
	ei                                               ; $6744: $fb
	db $e4                                           ; $6745: $e4
	ccf                                              ; $6746: $3f
	pop hl                                           ; $6747: $e1
	rra                                              ; $6748: $1f
	ld a, [$fc0f]                                    ; $6749: $fa $0f $fc
	rrca                                             ; $674c: $0f
	ld a, b                                          ; $674d: $78
	rlca                                             ; $674e: $07
	dec a                                            ; $674f: $3d
	rlca                                             ; $6750: $07
	ld a, $07                                        ; $6751: $3e $07
	inc e                                            ; $6753: $1c
	rlca                                             ; $6754: $07
	dec e                                            ; $6755: $1d
	rlca                                             ; $6756: $07
	ld e, $7b                                        ; $6757: $1e $7b
	ld a, [$fe6f]                                    ; $6759: $fa $6f $fe
	ld a, a                                          ; $675c: $7f
	db $f4                                           ; $675d: $f4
	sbc h                                            ; $675e: $9c
	dec c                                            ; $675f: $0d
	rlca                                             ; $6760: $07
	ld c, $e0                                        ; $6761: $0e $e0
	pop bc                                           ; $6763: $c1
	sbc b                                            ; $6764: $98
	jp hl                                            ; $6765: $e9


	rst $38                                          ; $6766: $ff
	jp hl                                            ; $6767: $e9


	rst $38                                          ; $6768: $ff
	push hl                                          ; $6769: $e5
	cp a                                             ; $676a: $bf
	db $f4                                           ; $676b: $f4
	ld [hl], a                                       ; $676c: $77
	cp $8a                                           ; $676d: $fe $8a
	ld e, a                                          ; $676f: $5f
	db $fc                                           ; $6770: $fc
	ld c, a                                          ; $6771: $4f
	cp $47                                           ; $6772: $fe $47
	cp $83                                           ; $6774: $fe $83
	rst $38                                          ; $6776: $ff
	sub e                                            ; $6777: $93
	rst $38                                          ; $6778: $ff
	adc c                                            ; $6779: $89
	rst $38                                          ; $677a: $ff
	inc b                                            ; $677b: $04
	rst $38                                          ; $677c: $ff
	db $fd                                           ; $677d: $fd
	rst $38                                          ; $677e: $ff
	rlca                                             ; $677f: $07
	rst $38                                          ; $6780: $ff
	db $fc                                           ; $6781: $fc
	rst $38                                          ; $6782: $ff
	inc c                                            ; $6783: $0c
	rst AddAOntoHL                                          ; $6784: $ef
	sbc [hl]                                         ; $6785: $9e
	ld bc, $dffe                                     ; $6786: $01 $fe $df
	ld hl, sp+$7f                                    ; $6789: $f8 $7f
	ldh [c], a                                       ; $678b: $e2
	add b                                            ; $678c: $80
	rlca                                             ; $678d: $07
	ld sp, hl                                        ; $678e: $f9
	pop af                                           ; $678f: $f1
	ld c, $8c                                        ; $6790: $0e $8c
	ld [hl], e                                       ; $6792: $73
	ld e, $e1                                        ; $6793: $1e $e1
	ld h, c                                          ; $6795: $61

jr_06c_6796:
	sbc a                                            ; $6796: $9f
	adc $31                                          ; $6797: $ce $31
	sbc a                                            ; $6799: $9f
	ld h, b                                          ; $679a: $60
	ld [hl], c                                       ; $679b: $71
	sbc [hl]                                         ; $679c: $9e
	and $79                                          ; $679d: $e6 $79
	rst GetHLinHL                                          ; $679f: $cf
	or b                                             ; $67a0: $b0
	cp c                                             ; $67a1: $b9
	ld b, a                                          ; $67a2: $47
	ld [hl], e                                       ; $67a3: $73
	adc h                                            ; $67a4: $8c
	rst SubAFromBC                                          ; $67a5: $e7
	jr c, jr_06c_6796                                ; $67a6: $38 $ee

	ld d, c                                          ; $67a8: $51
	jp c, $b2b4                                      ; $67a9: $da $b4 $b2

	sbc b                                            ; $67ac: $98
	jp c, $a276                                      ; $67ad: $da $76 $a2

	db $f4                                           ; $67b0: $f4
	ld h, $f4                                        ; $67b1: $26 $f4
	ld h, [hl]                                       ; $67b3: $66
	ldh [$c1], a                                     ; $67b4: $e0 $c1
	add l                                            ; $67b6: $85
	rst $38                                          ; $67b7: $ff
	sbc a                                            ; $67b8: $9f
	db $fc                                           ; $67b9: $fc
	ldh [rIE], a                                     ; $67ba: $e0 $ff
	ld a, a                                          ; $67bc: $7f
	rst $38                                          ; $67bd: $ff
	sbc b                                            ; $67be: $98
	rst AddAOntoHL                                          ; $67bf: $ef
	rst JumpTable                                          ; $67c0: $c7
	rst $38                                          ; $67c1: $ff
	or $bd                                           ; $67c2: $f6 $bd
	db $fc                                           ; $67c4: $fc
	add a                                            ; $67c5: $87
	db $f4                                           ; $67c6: $f4
	add e                                            ; $67c7: $83
	db $e3                                           ; $67c8: $e3
	add b                                            ; $67c9: $80
	or b                                             ; $67ca: $b0
	add b                                            ; $67cb: $80
	sbc b                                            ; $67cc: $98
	ret nz                                           ; $67cd: $c0

	call z, $e0e0                                    ; $67ce: $cc $e0 $e0
	sbc $80                                          ; $67d1: $de $80
	sbc [hl]                                         ; $67d3: $9e
	add e                                            ; $67d4: $83
	ld d, d                                          ; $67d5: $52
	ld b, d                                          ; $67d6: $42
	ld a, [$80df]                                    ; $67d7: $fa $df $80
	add b                                            ; $67da: $80
	ret nz                                           ; $67db: $c0

	ld b, b                                          ; $67dc: $40
	ld h, a                                          ; $67dd: $67
	daa                                              ; $67de: $27
	ld a, a                                          ; $67df: $7f
	ld e, b                                          ; $67e0: $58
	ld hl, sp-$59                                    ; $67e1: $f8 $a7
	rst SubAFromBC                                          ; $67e3: $e7
	ld e, b                                          ; $67e4: $58
	call c, $f8a3                                    ; $67e5: $dc $a3 $f8
	rla                                              ; $67e8: $17
	pop hl                                           ; $67e9: $e1
	ld a, $d7                                        ; $67ea: $3e $d7
	add sp, -$14                                     ; $67ec: $e8 $ec
	ld d, e                                          ; $67ee: $53
	ret c                                            ; $67ef: $d8

	and a                                            ; $67f0: $a7
	cp $81                                           ; $67f1: $fe $81
	rst JumpTable                                          ; $67f3: $c7
	cp b                                             ; $67f4: $b8
	add c                                            ; $67f5: $81
	cp $f0                                           ; $67f6: $fe $f0
	adc e                                            ; $67f8: $8b
	ld a, c                                          ; $67f9: $79
	sub d                                            ; $67fa: $92
	add h                                            ; $67fb: $84
	ld l, c                                          ; $67fc: $69
	sub h                                            ; $67fd: $94
	ld h, h                                          ; $67fe: $64
	sbc d                                            ; $67ff: $9a
	ld b, h                                          ; $6800: $44
	or d                                             ; $6801: $b2
	jp nz, $d399                                     ; $6802: $c2 $99 $d3

	sbc b                                            ; $6805: $98
	db $d3                                           ; $6806: $d3
	cp [hl]                                          ; $6807: $be
	ldh [$c1], a                                     ; $6808: $e0 $c1
	ld a, [hl]                                       ; $680a: $7e
	jp $3f99                                         ; $680b: $c3 $99 $3f


	dec c                                            ; $680e: $0d
	rst $38                                          ; $680f: $ff
	ld sp, hl                                        ; $6810: $f9
	rst $38                                          ; $6811: $ff
	inc de                                           ; $6812: $13
	sbc $ff                                          ; $6813: $de $ff
	adc h                                            ; $6815: $8c
	ld c, a                                          ; $6816: $4f
	db $db                                           ; $6817: $db
	ld c, a                                          ; $6818: $4f
	di                                               ; $6819: $f3
	rst $38                                          ; $681a: $ff
	add e                                            ; $681b: $83
	rst $38                                          ; $681c: $ff
	ld bc, $010f                                     ; $681d: $01 $0f $01
	rra                                              ; $6820: $1f
	ld bc, $013f                    ; $6821: $01 $3f $01
	ld [hl], e                                       ; $6824: $73
	nop                                              ; $6825: $00
	db $e3                                           ; $6826: $e3
	nop                                              ; $6827: $00
	add c                                            ; $6828: $81
	ld [hl], d                                       ; $6829: $72
	db $d3                                           ; $682a: $d3
	xor $df                                          ; $682b: $ee $df
	ret nz                                           ; $682d: $c0

	add b                                            ; $682e: $80
	ld hl, sp+$38                                    ; $682f: $f8 $38
	ld c, $f6                                        ; $6831: $0e $f6
	di                                               ; $6833: $f3
	dec c                                            ; $6834: $0d
	rrca                                             ; $6835: $0f
	ldh a, [$61]                                     ; $6836: $f0 $61
	sbc [hl]                                         ; $6838: $9e
	sbc b                                            ; $6839: $98
	ld h, a                                          ; $683a: $67
	adc $31                                          ; $683b: $ce $31
	inc hl                                           ; $683d: $23
	call c, $ee11                                    ; $683e: $dc $11 $ee
	inc e                                            ; $6841: $1c
	rst SubAFromBC                                          ; $6842: $e7
	adc [hl]                                         ; $6843: $8e
	ld [hl], e                                       ; $6844: $73
	and $1b                                          ; $6845: $e6 $1b
	ld [hl], e                                       ; $6847: $73
	xor l                                            ; $6848: $ad
	dec sp                                           ; $6849: $3b
	push de                                          ; $684a: $d5
	dec sp                                           ; $684b: $3b
	push de                                          ; $684c: $d5
	sbc a                                            ; $684d: $9f
	sub [hl]                                         ; $684e: $96
	add sp, -$21                                     ; $684f: $e8 $df
	add sp, $6f                                      ; $6851: $e8 $6f
	call nc, $f46f                                   ; $6853: $d4 $6f $f4
	or a                                             ; $6856: $b7
	ld l, h                                          ; $6857: $6c
	ldh [$c1], a                                     ; $6858: $e0 $c1
	adc e                                            ; $685a: $8b
	rst GetHLinHL                                          ; $685b: $cf
	ld hl, sp-$61                                    ; $685c: $f8 $9f
	ldh a, [c]                                       ; $685e: $f2
	ccf                                              ; $685f: $3f
	ldh [c], a                                       ; $6860: $e2
	ld a, a                                          ; $6861: $7f
	and $ff                                          ; $6862: $e6 $ff
	rst GetHLinHL                                          ; $6864: $cf
	rst $38                                          ; $6865: $ff
	sbc c                                            ; $6866: $99
	rst $38                                          ; $6867: $ff
	ld sp, $20ff                                     ; $6868: $31 $ff $20
	rst $38                                          ; $686b: $ff
	ld h, b                                          ; $686c: $60
	rst $38                                          ; $686d: $ff
	ld b, b                                          ; $686e: $40
	ld [hl], e                                       ; $686f: $73
	cp $7f                                           ; $6870: $fe $7f
	ld hl, sp-$66                                    ; $6872: $f8 $9a
	xor a                                            ; $6874: $af
	rst $38                                          ; $6875: $ff
	ret nc                                           ; $6876: $d0

	rst $38                                          ; $6877: $ff
	db $d3                                           ; $6878: $d3
	db $e3                                           ; $6879: $e3
	rst SubAFromDE                                          ; $687a: $df
	ret nz                                           ; $687b: $c0

	add b                                            ; $687c: $80
	ldh [rAUD4LEN], a                                ; $687d: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $687f: $f0 $10
	ld a, b                                          ; $6881: $78
	adc b                                            ; $6882: $88
	inc a                                            ; $6883: $3c
	call nz, $c43c                                   ; $6884: $c4 $3c $c4
	sbc $22                                          ; $6887: $de $22
	ld a, a                                          ; $6889: $7f
	add e                                            ; $688a: $83
	ld a, a                                          ; $688b: $7f
	and e                                            ; $688c: $a3
	ccf                                              ; $688d: $3f
	pop de                                           ; $688e: $d1
	cp a                                             ; $688f: $bf
	ld d, c                                          ; $6890: $51
	sbc a                                            ; $6891: $9f
	jp hl                                            ; $6892: $e9


	rst SubAFromDE                                          ; $6893: $df
	xor c                                            ; $6894: $a9
	rst SubAFromDE                                          ; $6895: $df
	and l                                            ; $6896: $a5
	rst GetHLinHL                                          ; $6897: $cf
	or h                                             ; $6898: $b4
	rst AddAOntoHL                                          ; $6899: $ef
	ld d, h                                          ; $689a: $54
	rst AddAOntoHL                                          ; $689b: $ef
	sbc [hl]                                         ; $689c: $9e
	ld d, h                                          ; $689d: $54
	ldh [$c1], a                                     ; $689e: $e0 $c1

jr_06c_68a0:
	sbc l                                            ; $68a0: $9d
	add c                                            ; $68a1: $81
	rst $38                                          ; $68a2: $ff
	ld [hl], a                                       ; $68a3: $77
	cp $8b                                           ; $68a4: $fe $8b
	pop bc                                           ; $68a6: $c1
	ld a, a                                          ; $68a7: $7f
	pop bc                                           ; $68a8: $c1
	ld a, a                                          ; $68a9: $7f
	pop hl                                           ; $68aa: $e1
	ccf                                              ; $68ab: $3f
	pop af                                           ; $68ac: $f1
	ccf                                              ; $68ad: $3f
	ld sp, hl                                        ; $68ae: $f9
	cp a                                             ; $68af: $bf
	ld sp, hl                                        ; $68b0: $f9
	xor a                                            ; $68b1: $af
	db $fd                                           ; $68b2: $fd
	ld l, a                                          ; $68b3: $6f
	rst $38                                          ; $68b4: $ff
	ld b, a                                          ; $68b5: $47
	rst $38                                          ; $68b6: $ff
	dec de                                           ; $68b7: $1b
	rst $38                                          ; $68b8: $ff
	ld h, a                                          ; $68b9: $67
	ld a, e                                          ; $68ba: $7b
	ld d, b                                          ; $68bb: $50
	ld a, a                                          ; $68bc: $7f
	ld e, h                                          ; $68bd: $5c
	ld e, d                                          ; $68be: $5a
	jr nz, jr_06c_68a0                               ; $68bf: $20 $df

	ld a, a                                          ; $68c1: $7f
	adc h                                            ; $68c2: $8c
	rst $38                                          ; $68c3: $ff
	ret nz                                           ; $68c4: $c0

	di                                               ; $68c5: $f3
	inc c                                            ; $68c6: $0c
	rst SubAFromBC                                          ; $68c7: $e7
	jr jr_06c_68d6                                   ; $68c8: $18 $0c

	di                                               ; $68ca: $f3
	or c                                             ; $68cb: $b1
	cp $df                                           ; $68cc: $fe $df
	ld hl, sp-$41                                    ; $68ce: $f8 $bf
	ldh a, [rIE]                                     ; $68d0: $f0 $ff
	ldh [rIE], a                                     ; $68d2: $e0 $ff
	ret nz                                           ; $68d4: $c0

	rst $38                                          ; $68d5: $ff

jr_06c_68d6:
	sbc $80                                          ; $68d6: $de $80
	ld a, [hl]                                       ; $68d8: $7e
	ld [de], a                                       ; $68d9: $12
	ld e, a                                          ; $68da: $5f
	cp $7f                                           ; $68db: $fe $7f
	ld d, d                                          ; $68dd: $52
	ld [hl], a                                       ; $68de: $77
	cp $7f                                           ; $68df: $fe $7f
	ld c, [hl]                                       ; $68e1: $4e
	add d                                            ; $68e2: $82
	ldh a, [hDisp1_SCY]                                     ; $68e3: $f0 $90
	ld hl, sp-$68                                    ; $68e5: $f8 $98
	ld hl, sp-$38                                    ; $68e7: $f8 $c8
	ld hl, sp+$68                                    ; $68e9: $f8 $68
	ld hl, sp+$68                                    ; $68eb: $f8 $68
	cp a                                             ; $68ed: $bf
	ld sp, hl                                        ; $68ee: $f9
	rst SubAFromDE                                          ; $68ef: $df
	cp c                                             ; $68f0: $b9
	rst SubAFromDE                                          ; $68f1: $df
	cp e                                             ; $68f2: $bb
	cp $9a                                           ; $68f3: $fe $9a
	ld a, [$f69e]                                    ; $68f5: $fa $9e $f6
	sbc [hl]                                         ; $68f8: $9e
	db $f4                                           ; $68f9: $f4
	sbc h                                            ; $68fa: $9c
	call nc, $88bc                                   ; $68fb: $d4 $bc $88
	ld hl, sp-$58                                    ; $68fe: $f8 $a8
	ld a, e                                          ; $6900: $7b
	rst SubAFromBC                                          ; $6901: $e7

jr_06c_6902:
	sbc d                                            ; $6902: $9a
	ld c, b                                          ; $6903: $48
	ld hl, sp+$50                                    ; $6904: $f8 $50
	ldh a, [hDisp1_SCY]                                     ; $6906: $f0 $90
	ld a, e                                          ; $6908: $7b
	cp $9e                                           ; $6909: $fe $9e
	and b                                            ; $690b: $a0
	ld a, e                                          ; $690c: $7b
	pop de                                           ; $690d: $d1
	ld l, a                                          ; $690e: $6f
	push bc                                          ; $690f: $c5
	reti                                             ; $6910: $d9


	add b                                            ; $6911: $80
	ld d, l                                          ; $6912: $55
	cp b                                             ; $6913: $b8
	ld c, a                                          ; $6914: $4f
	ldh a, [$df]                                     ; $6915: $f0 $df
	ldh [$7f], a                                     ; $6917: $e0 $7f
	xor b                                            ; $6919: $a8
	sub c                                            ; $691a: $91
	ret z                                            ; $691b: $c8

	jr c, jr_06c_6902                                ; $691c: $38 $e4

	inc e                                            ; $691e: $1c
	ldh a, [c]                                       ; $691f: $f2
	ld c, $da                                        ; $6920: $0e $da
	ld h, $c9                                        ; $6922: $26 $c9
	scf                                              ; $6924: $37
	pop hl                                           ; $6925: $e1
	rra                                              ; $6926: $1f
	pop af                                           ; $6927: $f1
	rrca                                             ; $6928: $0f
	ld l, a                                          ; $6929: $6f
	cp $7f                                           ; $692a: $fe $7f
	ldh a, [$9b]                                     ; $692c: $f0 $9b
	ldh a, [c]                                       ; $692e: $f2
	ld e, $f4                                        ; $692f: $1e $f4
	inc e                                            ; $6931: $1c
	ld [hl], a                                       ; $6932: $77
	cp $9d                                           ; $6933: $fe $9d
	add sp, $38                                      ; $6935: $e8 $38
	ld [hl], a                                       ; $6937: $77
	cp $99                                           ; $6938: $fe $99
	ldh a, [$30]                                     ; $693a: $f0 $30
	ldh a, [$30]                                     ; $693c: $f0 $30
	and b                                            ; $693e: $a0
	ld h, b                                          ; $693f: $60
	ld [hl], a                                       ; $6940: $77
	xor e                                            ; $6941: $ab
	db $dd                                           ; $6942: $dd
	add b                                            ; $6943: $80
	jr nz, jr_06c_6946                               ; $6944: $20 $00

jr_06c_6946:
	call c, $dfff                                    ; $6946: $dc $ff $df
	ld b, h                                          ; $6949: $44
	sub e                                            ; $694a: $93
	ld [hl], a                                       ; $694b: $77
	ld b, h                                          ; $694c: $44
	xor d                                            ; $694d: $aa
	inc sp                                           ; $694e: $33
	sbc c                                            ; $694f: $99
	sbc c                                            ; $6950: $99
	ld d, l                                          ; $6951: $55
	xor d                                            ; $6952: $aa
	ld [hl+], a                                      ; $6953: $22
	sbc c                                            ; $6954: $99
	sbc c                                            ; $6955: $99
	nop                                              ; $6956: $00
	ld h, e                                          ; $6957: $63
	ei                                               ; $6958: $fb
	ld a, a                                          ; $6959: $7f
	pop af                                           ; $695a: $f1
	sbc c                                            ; $695b: $99
	xor d                                            ; $695c: $aa
	sbc c                                            ; $695d: $99
	sbc c                                            ; $695e: $99
	ld b, h                                          ; $695f: $44
	rst $38                                          ; $6960: $ff
	ld [hl+], a                                      ; $6961: $22
	db $dd                                           ; $6962: $dd
	rst $38                                          ; $6963: $ff
	xor $01                                          ; $6964: $ee $01
	sbc e                                            ; $6966: $9b
	rrca                                             ; $6967: $0f
	inc c                                            ; $6968: $0c
	rrca                                             ; $6969: $0f
	ld [$fe7b], sp                                   ; $696a: $08 $7b $fe
	add c                                            ; $696d: $81
	add hl, bc                                       ; $696e: $09
	rrca                                             ; $696f: $0f
	add hl, bc                                       ; $6970: $09
	rra                                              ; $6971: $1f
	inc de                                           ; $6972: $13
	rra                                              ; $6973: $1f
	ld d, $1f                                        ; $6974: $16 $1f
	dec e                                            ; $6976: $1d
	jr jr_06c_69b0                                   ; $6977: $18 $37

	daa                                              ; $6979: $27
	dec sp                                           ; $697a: $3b
	ld l, $37                                        ; $697b: $2e $37
	ld a, $3a                                        ; $697d: $3e $3a
	dec hl                                           ; $697f: $2b
	dec sp                                           ; $6980: $3b
	ld h, e                                          ; $6981: $63
	ld a, e                                          ; $6982: $7b
	ld d, c                                          ; $6983: $51
	ld e, c                                          ; $6984: $59
	sub c                                            ; $6985: $91
	sbc h                                            ; $6986: $9c
	sub b                                            ; $6987: $90
	sbc b                                            ; $6988: $98
	db $10                                           ; $6989: $10
	jr jr_06c_699c                                   ; $698a: $18 $10

	sbc $18                                          ; $698c: $de $18
	adc l                                            ; $698e: $8d
	inc a                                            ; $698f: $3c
	jr z, jr_06c_69ce                                ; $6990: $28 $3c

	inc l                                            ; $6992: $2c
	ld a, $2e                                        ; $6993: $3e $2e
	ld a, a                                          ; $6995: $7f
	ld l, e                                          ; $6996: $6b
	ld a, a                                          ; $6997: $7f
	ld l, e                                          ; $6998: $6b
	cp a                                             ; $6999: $bf
	xor c                                            ; $699a: $a9
	cp a                                             ; $699b: $bf

jr_06c_699c:
	and c                                            ; $699c: $a1
	dec a                                            ; $699d: $3d
	dec hl                                           ; $699e: $2b
	ld l, l                                          ; $699f: $6d
	ld e, e                                          ; $69a0: $5b
	ld a, e                                          ; $69a1: $7b
	cp $80                                           ; $69a2: $fe $80
	ld a, e                                          ; $69a4: $7b
	db $ed                                           ; $69a5: $ed
	ei                                               ; $69a6: $fb
	or $6d                                           ; $69a7: $f6 $6d
	cp [hl]                                          ; $69a9: $be
	push hl                                          ; $69aa: $e5
	cp a                                             ; $69ab: $bf
	db $e4                                           ; $69ac: $e4
	dec sp                                           ; $69ad: $3b
	xor $7b                                          ; $69ae: $ee $7b

jr_06c_69b0:
	sub [hl]                                         ; $69b0: $96
	ld sp, hl                                        ; $69b1: $f9
	scf                                              ; $69b2: $37
	reti                                             ; $69b3: $d9


	rst FarCall                                          ; $69b4: $f7
	add hl, de                                       ; $69b5: $19
	rst $38                                          ; $69b6: $ff
	ld [$e0ff], sp                                   ; $69b7: $08 $ff $e0
	rst SubAFromDE                                          ; $69ba: $df
	ld [hl], b                                       ; $69bb: $70
	rst $38                                          ; $69bc: $ff
	ld [hl], b                                       ; $69bd: $70
	ld l, [hl]                                       ; $69be: $6e
	ldh [$ec], a                                     ; $69bf: $e0 $ec
	ldh [$a0], a                                     ; $69c1: $e0 $a0
	add b                                            ; $69c3: $80
	ld b, b                                          ; $69c4: $40
	add e                                            ; $69c5: $83
	ret nz                                           ; $69c6: $c0

	rst GetHLinHL                                          ; $69c7: $cf
	ei                                               ; $69c8: $fb
	sub [hl]                                         ; $69c9: $96
	rst $38                                          ; $69ca: $ff
	sbc c                                            ; $69cb: $99
	rst $38                                          ; $69cc: $ff
	sbc c                                            ; $69cd: $99

jr_06c_69ce:
	rst FarCall                                          ; $69ce: $f7
	sbc h                                            ; $69cf: $9c
	ei                                               ; $69d0: $fb
	ld d, [hl]                                       ; $69d1: $56
	rst $38                                          ; $69d2: $ff
	ld l, c                                          ; $69d3: $69
	rst SubAFromHL                                          ; $69d4: $d7
	ld a, [hl]                                       ; $69d5: $7e
	pop bc                                           ; $69d6: $c1
	ld a, a                                          ; $69d7: $7f
	ret nz                                           ; $69d8: $c0

	rst $38                                          ; $69d9: $ff
	add e                                            ; $69da: $83
	db $fd                                           ; $69db: $fd
	adc [hl]                                         ; $69dc: $8e
	rst FarCall                                          ; $69dd: $f7
	ld [bc], a                                       ; $69de: $02
	ld a, $03                                        ; $69df: $3e $03
	dec bc                                           ; $69e1: $0b
	inc bc                                           ; $69e2: $03
	add b                                            ; $69e3: $80
	jp $f101                                         ; $69e4: $c3 $01 $f1


	ld bc, $f7ff                                     ; $69e7: $01 $ff $f7
	ld a, [hl+]                                      ; $69ea: $2a
	rst FarCall                                          ; $69eb: $f7
	ld a, [de]                                       ; $69ec: $1a
	ei                                               ; $69ed: $fb
	dec d                                            ; $69ee: $15
	ei                                               ; $69ef: $fb
	adc l                                            ; $69f0: $8d
	rst $38                                          ; $69f1: $ff
	ld c, b                                          ; $69f2: $48
	rst $38                                          ; $69f3: $ff
	ld b, h                                          ; $69f4: $44
	rst $38                                          ; $69f5: $ff
	and d                                            ; $69f6: $a2
	rst $38                                          ; $69f7: $ff
	pop de                                           ; $69f8: $d1
	rrca                                             ; $69f9: $0f
	ld sp, hl                                        ; $69fa: $f9
	rst SubAFromBC                                          ; $69fb: $e7
	call c, $ff73                                    ; $69fc: $dc $73 $ff
	ld a, l                                          ; $69ff: $7d
	ld a, a                                          ; $6a00: $7f
	jp hl                                            ; $6a01: $e9


	rst AddAOntoHL                                          ; $6a02: $ef
	add e                                            ; $6a03: $83
	db $e3                                           ; $6a04: $e3
	xor l                                            ; $6a05: $ad
	ld b, e                                          ; $6a06: $43
	sbc [hl]                                         ; $6a07: $9e
	jp $07fe                                         ; $6a08: $c3 $fe $07


	ld a, [de]                                       ; $6a0b: $1a
	rlca                                             ; $6a0c: $07
	inc c                                            ; $6a0d: $0c
	ld c, $05                                        ; $6a0e: $0e $05
	ld c, $1d                                        ; $6a10: $0e $1d
	inc e                                            ; $6a12: $1c
	rrca                                             ; $6a13: $0f
	inc a                                            ; $6a14: $3c
	ld d, $7c                                        ; $6a15: $16 $7c
	dec h                                            ; $6a17: $25
	db $fc                                           ; $6a18: $fc
	ld l, c                                          ; $6a19: $69
	ld sp, hl                                        ; $6a1a: $f9
	call z, $96f9                                    ; $6a1b: $cc $f9 $96
	ei                                               ; $6a1e: $fb
	sub l                                            ; $6a1f: $95
	ld a, e                                          ; $6a20: $7b
	sub a                                            ; $6a21: $97
	sbc [hl]                                         ; $6a22: $9e

jr_06c_6a23:
	inc hl                                           ; $6a23: $23
	ld a, e                                          ; $6a24: $7b

jr_06c_6a25:
	cp $98                                           ; $6a25: $fe $98
	ld b, l                                          ; $6a27: $45
	rst $38                                          ; $6a28: $ff
	ret                                              ; $6a29: $c9


	rst $38                                          ; $6a2a: $ff
	ld h, d                                          ; $6a2b: $62
	rst $38                                          ; $6a2c: $ff
	ld [hl+], a                                      ; $6a2d: $22
	ld a, e                                          ; $6a2e: $7b
	cp $9e                                           ; $6a2f: $fe $9e
	ld [de], a                                       ; $6a31: $12
	ld a, e                                          ; $6a32: $7b
	cp $9e                                           ; $6a33: $fe $9e
	adc c                                            ; $6a35: $89
	ld a, e                                          ; $6a36: $7b
	ldh a, [$7f]                                     ; $6a37: $f0 $7f
	db $ec                                           ; $6a39: $ec
	sub [hl]                                         ; $6a3a: $96
	ld e, $ff                                        ; $6a3b: $1e $ff
	pop af                                           ; $6a3d: $f1
	rst $38                                          ; $6a3e: $ff
	dec h                                            ; $6a3f: $25
	rst $38                                          ; $6a40: $ff
	inc h                                            ; $6a41: $24
	rst $38                                          ; $6a42: $ff
	sub d                                            ; $6a43: $92
	ld a, e                                          ; $6a44: $7b
	cp $9c                                           ; $6a45: $fe $9c
	ld c, d                                          ; $6a47: $4a
	rst $38                                          ; $6a48: $ff
	ld c, c                                          ; $6a49: $49
	ld a, e                                          ; $6a4a: $7b
	cp $7f                                           ; $6a4b: $fe $7f
	xor b                                            ; $6a4d: $a8
	ld a, a                                          ; $6a4e: $7f
	ldh a, [c]                                       ; $6a4f: $f2
	ld l, a                                          ; $6a50: $6f
	cp $7f                                           ; $6a51: $fe $7f
	ret c                                            ; $6a53: $d8

	sub a                                            ; $6a54: $97
	ld h, d                                          ; $6a55: $62
	rst SubAFromDE                                          ; $6a56: $df
	halt                                             ; $6a57: $76
	sbc a                                            ; $6a58: $9f
	or $9b                                           ; $6a59: $f6 $9b
	rst $38                                          ; $6a5b: $ff
	dec de                                           ; $6a5c: $1b
	ld a, e                                          ; $6a5d: $7b
	cp $77                                           ; $6a5e: $fe $77
	call $009d                                       ; $6a60: $cd $9d $00
	rst $38                                          ; $6a63: $ff
	ccf                                              ; $6a64: $3f
	nop                                              ; $6a65: $00
	sub h                                            ; $6a66: $94
	jr nz, @+$41                                     ; $6a67: $20 $3f

	inc hl                                           ; $6a69: $23
	dec a                                            ; $6a6a: $3d
	ld h, $3f                                        ; $6a6b: $26 $3f
	ld a, $3a                                        ; $6a6d: $3e $3a
	ld l, e                                          ; $6a6f: $6b
	ld a, e                                          ; $6a70: $7b
	ld d, e                                          ; $6a71: $53
	ld a, e                                          ; $6a72: $7b
	nop                                              ; $6a73: $00
	ccf                                              ; $6a74: $3f
	jr nz, @+$81                                     ; $6a75: $20 $7f

	call z, $1e7b                                    ; $6a77: $cc $7b $1e
	sbc b                                            ; $6a7a: $98
	cp $70                                           ; $6a7b: $fe $70
	ld l, h                                          ; $6a7d: $6c
	ldh [$e0], a                                     ; $6a7e: $e0 $e0
	ld h, b                                          ; $6a80: $60
	and e                                            ; $6a81: $a3
	scf                                              ; $6a82: $37
	jr nz, jr_06c_6a23                               ; $6a83: $20 $9e

	add b                                            ; $6a85: $80
	ld a, e                                          ; $6a86: $7b
	ld e, $97                                        ; $6a87: $1e $97
	ld [bc], a                                       ; $6a89: $02
	ccf                                              ; $6a8a: $3f
	ld b, $0e                                        ; $6a8b: $06 $0e
	inc bc                                           ; $6a8d: $03
	rst JumpTable                                          ; $6a8e: $c7
	inc bc                                           ; $6a8f: $03
	di                                               ; $6a90: $f3
	scf                                              ; $6a91: $37
	jr nz, jr_06c_6a25                               ; $6a92: $20 $91

	rlca                                             ; $6a94: $07
	db $fc                                           ; $6a95: $fc
	db $e3                                           ; $6a96: $e3
	rst SubAFromDE                                          ; $6a97: $df
	ld a, c                                          ; $6a98: $79
	rst FarCall                                          ; $6a99: $f7
	ld a, l                                          ; $6a9a: $7d
	ld a, a                                          ; $6a9b: $7f
	db $eb                                           ; $6a9c: $eb
	db $ed                                           ; $6a9d: $ed
	ld h, e                                          ; $6a9e: $63
	xor [hl]                                         ; $6a9f: $ae
	jp $37fe                                         ; $6aa0: $c3 $fe $37


	add b                                            ; $6aa3: $80
	ld [hl], e                                       ; $6aa4: $73
	ld a, [hl]                                       ; $6aa5: $7e
	sbc d                                            ; $6aa6: $9a
	ld a, $7f                                        ; $6aa7: $3e $7f
	ld a, e                                          ; $6aa9: $7b
	ld e, e                                          ; $6aaa: $5b
	ld e, e                                          ; $6aab: $5b
	cpl                                              ; $6aac: $2f
	add b                                            ; $6aad: $80
	ld a, e                                          ; $6aae: $7b
	ld a, [hl]                                       ; $6aaf: $7e
	sbc e                                            ; $6ab0: $9b
	sbc $70                                          ; $6ab1: $de $70
	db $fc                                           ; $6ab3: $fc
	ldh a, [rAUD4GO]                                 ; $6ab4: $f0 $23
	add b                                            ; $6ab6: $80
	ld a, a                                          ; $6ab7: $7f
	cp $9d                                           ; $6ab8: $fe $9d
	inc bc                                           ; $6aba: $03
	dec a                                            ; $6abb: $3d
	rla                                              ; $6abc: $17
	add b                                            ; $6abd: $80
	sub [hl]                                         ; $6abe: $96
	inc bc                                           ; $6abf: $03
	rst $38                                          ; $6ac0: $ff
	pop af                                           ; $6ac1: $f1
	rst AddAOntoHL                                          ; $6ac2: $ef
	ld a, c                                          ; $6ac3: $79
	rst FarCall                                          ; $6ac4: $f7
	rst $38                                          ; $6ac5: $ff
	cp l                                             ; $6ac6: $bd
	ld l, e                                          ; $6ac7: $6b
	inc hl                                           ; $6ac8: $23
	add b                                            ; $6ac9: $80
	ld a, e                                          ; $6aca: $7b
	ld a, [hl]                                       ; $6acb: $7e
	sbc b                                            ; $6acc: $98
	ccf                                              ; $6acd: $3f
	ld a, h                                          ; $6ace: $7c
	ld a, a                                          ; $6acf: $7f
	ld d, a                                          ; $6ad0: $57
	ld e, a                                          ; $6ad1: $5f
	sub c                                            ; $6ad2: $91
	sbc a                                            ; $6ad3: $9f
	cpl                                              ; $6ad4: $2f
	add b                                            ; $6ad5: $80
	sub a                                            ; $6ad6: $97
	nop                                              ; $6ad7: $00
	cp $b0                                           ; $6ad8: $fe $b0
	db $fc                                           ; $6ada: $fc
	ld [hl], b                                       ; $6adb: $70
	ldh [$e0], a                                     ; $6adc: $e0 $e0
	db $e3                                           ; $6ade: $e3
	daa                                              ; $6adf: $27
	add b                                            ; $6ae0: $80
	sbc d                                            ; $6ae1: $9a
	nop                                              ; $6ae2: $00
	ccf                                              ; $6ae3: $3f
	dec b                                            ; $6ae4: $05
	rrca                                             ; $6ae5: $0f
	ld [bc], a                                       ; $6ae6: $02
	dec de                                           ; $6ae7: $1b
	add b                                            ; $6ae8: $80
	ld a, a                                          ; $6ae9: $7f
	add sp, -$6b                                     ; $6aea: $e8 $95
	pop hl                                           ; $6aec: $e1
	rst $38                                          ; $6aed: $ff
	rra                                              ; $6aee: $1f
	db $fd                                           ; $6aef: $fd
	ei                                               ; $6af0: $fb
	cp $c3                                           ; $6af1: $fe $c3
	cp $00                                           ; $6af3: $fe $00
	ld e, $fb                                        ; $6af5: $1e $fb
	sbc h                                            ; $6af7: $9c
	ld [bc], a                                       ; $6af8: $02
	inc bc                                           ; $6af9: $03
	ld bc, $83fd                                     ; $6afa: $01 $fd $83
	add b                                            ; $6afd: $80
	ret nz                                           ; $6afe: $c0

	ldh [$f0], a                                     ; $6aff: $e0 $f0
	jr c, jr_06c_6b0f                                ; $6b01: $38 $0c

	cp $03                                           ; $6b03: $fe $03
	adc $01                                          ; $6b05: $ce $01
	pop bc                                           ; $6b07: $c1
	add b                                            ; $6b08: $80
	ld h, b                                          ; $6b09: $60
	add b                                            ; $6b0a: $80
	ldh a, [$e0]                                     ; $6b0b: $f0 $e0
	ldh a, [rLCDC]                                   ; $6b0d: $f0 $40

jr_06c_6b0f:
	ld a, h                                          ; $6b0f: $7c
	ld h, b                                          ; $6b10: $60
	ld [hl], b                                       ; $6b11: $70
	ld b, b                                          ; $6b12: $40
	jr nz, jr_06c_6b15                               ; $6b13: $20 $00

jr_06c_6b15:
	nop                                              ; $6b15: $00
	jr nz, jr_06c_6b78                               ; $6b16: $20 $60

	ret nz                                           ; $6b18: $c0

	ld [hl], e                                       ; $6b19: $73
	ldh [hDisp1_LCDC], a                                     ; $6b1a: $e0 $8f
	ld bc, $0703                                     ; $6b1c: $01 $03 $07
	inc bc                                           ; $6b1f: $03
	rra                                              ; $6b20: $1f
	cpl                                              ; $6b21: $2f
	ld a, c                                          ; $6b22: $79
	cp a                                             ; $6b23: $bf
	pop hl                                           ; $6b24: $e1
	rst $38                                          ; $6b25: $ff
	ld bc, $071f                                     ; $6b26: $01 $1f $07
	rrca                                             ; $6b29: $0f
	rra                                              ; $6b2a: $1f
	rra                                              ; $6b2b: $1f
	inc bc                                           ; $6b2c: $03
	ret nz                                           ; $6b2d: $c0

	inc bc                                           ; $6b2e: $03
	ret nz                                           ; $6b2f: $c0

	ld h, a                                          ; $6b30: $67
	ret nz                                           ; $6b31: $c0

	sbc l                                            ; $6b32: $9d
	ld [bc], a                                       ; $6b33: $02
	nop                                              ; $6b34: $00
	ld a, e                                          ; $6b35: $7b
	cp [hl]                                          ; $6b36: $be
	dec de                                           ; $6b37: $1b
	ret nz                                           ; $6b38: $c0

	ld a, a                                          ; $6b39: $7f
	ei                                               ; $6b3a: $fb
	ld [hl], a                                       ; $6b3b: $77
	cp [hl]                                          ; $6b3c: $be
	sbc l                                            ; $6b3d: $9d
	ld bc, $1b83                                     ; $6b3e: $01 $83 $1b
	ret nz                                           ; $6b41: $c0

	sbc l                                            ; $6b42: $9d
	ld [bc], a                                       ; $6b43: $02
	ld bc, $c013                                     ; $6b44: $01 $13 $c0
	sbc e                                            ; $6b47: $9b
	ld b, b                                          ; $6b48: $40
	and b                                            ; $6b49: $a0
	ret nz                                           ; $6b4a: $c0

	nop                                              ; $6b4b: $00
	ld a, e                                          ; $6b4c: $7b
	add b                                            ; $6b4d: $80
	sbc [hl]                                         ; $6b4e: $9e
	add e                                            ; $6b4f: $83

jr_06c_6b50:
	ld d, a                                          ; $6b50: $57
	ret nz                                           ; $6b51: $c0

	ld [$9b02], sp                                   ; $6b52: $08 $02 $9b
	rrca                                             ; $6b55: $0f
	inc c                                            ; $6b56: $0c
	rrca                                             ; $6b57: $0f
	ld [$fe7b], sp                                   ; $6b58: $08 $7b $fe
	add c                                            ; $6b5b: $81
	add hl, bc                                       ; $6b5c: $09
	rrca                                             ; $6b5d: $0f
	add hl, bc                                       ; $6b5e: $09
	rra                                              ; $6b5f: $1f
	inc de                                           ; $6b60: $13
	ld e, $17                                        ; $6b61: $1e $17
	inc e                                            ; $6b63: $1c
	rra                                              ; $6b64: $1f
	dec de                                           ; $6b65: $1b
	dec [hl]                                         ; $6b66: $35
	ld l, $37                                        ; $6b67: $2e $37
	ld a, $3a                                        ; $6b69: $3e $3a
	dec hl                                           ; $6b6b: $2b
	dec sp                                           ; $6b6c: $3b
	inc hl                                           ; $6b6d: $23
	inc sp                                           ; $6b6e: $33
	ld [hl], e                                       ; $6b6f: $73
	ld [hl], d                                       ; $6b70: $72
	ld d, c                                          ; $6b71: $51
	ld d, c                                          ; $6b72: $51
	sub c                                            ; $6b73: $91
	sbc b                                            ; $6b74: $98
	sub b                                            ; $6b75: $90
	sbc b                                            ; $6b76: $98
	db $10                                           ; $6b77: $10

jr_06c_6b78:
	jr jr_06c_6b8a                                   ; $6b78: $18 $10

	sbc $18                                          ; $6b7a: $de $18
	adc l                                            ; $6b7c: $8d
	inc a                                            ; $6b7d: $3c
	jr z, jr_06c_6bbc                                ; $6b7e: $28 $3c

	inc l                                            ; $6b80: $2c
	ld a, $2e                                        ; $6b81: $3e $2e
	ld a, a                                          ; $6b83: $7f
	ld l, e                                          ; $6b84: $6b
	ld a, a                                          ; $6b85: $7f
	ld l, e                                          ; $6b86: $6b
	cp a                                             ; $6b87: $bf
	xor c                                            ; $6b88: $a9
	cp a                                             ; $6b89: $bf

jr_06c_6b8a:
	and c                                            ; $6b8a: $a1
	dec a                                            ; $6b8b: $3d
	dec hl                                           ; $6b8c: $2b
	ld l, l                                          ; $6b8d: $6d
	ld e, e                                          ; $6b8e: $5b
	ld a, e                                          ; $6b8f: $7b
	cp $80                                           ; $6b90: $fe $80
	ld a, e                                          ; $6b92: $7b
	db $ed                                           ; $6b93: $ed
	ei                                               ; $6b94: $fb
	or $6d                                           ; $6b95: $f6 $6d
	cp [hl]                                          ; $6b97: $be
	push hl                                          ; $6b98: $e5
	cp a                                             ; $6b99: $bf
	db $e4                                           ; $6b9a: $e4
	dec sp                                           ; $6b9b: $3b
	xor $fb                                          ; $6b9c: $ee $fb
	ld d, $fd                                        ; $6b9e: $16 $fd
	di                                               ; $6ba0: $f3
	add hl, de                                       ; $6ba1: $19
	rst FarCall                                          ; $6ba2: $f7
	add hl, de                                       ; $6ba3: $19
	rst $38                                          ; $6ba4: $ff
	add sp, -$21                                     ; $6ba5: $e8 $df
	ld [hl], b                                       ; $6ba7: $70
	rst $38                                          ; $6ba8: $ff
	ld [hl], b                                       ; $6ba9: $70
	ld l, a                                          ; $6baa: $6f
	ldh [$ee], a                                     ; $6bab: $e0 $ee
	ldh [$ac], a                                     ; $6bad: $e0 $ac
	ld h, b                                          ; $6baf: $60
	jr nz, jr_06c_6b50                               ; $6bb0: $20 $9e

	ld b, b                                          ; $6bb2: $40
	sbc $c0                                          ; $6bb3: $de $c0
	add a                                            ; $6bb5: $87
	ei                                               ; $6bb6: $fb
	sub [hl]                                         ; $6bb7: $96
	rst $38                                          ; $6bb8: $ff
	sbc c                                            ; $6bb9: $99
	rst $38                                          ; $6bba: $ff
	sbc c                                            ; $6bbb: $99

jr_06c_6bbc:
	rst FarCall                                          ; $6bbc: $f7
	sbc h                                            ; $6bbd: $9c
	rst $38                                          ; $6bbe: $ff
	ld d, d                                          ; $6bbf: $52
	rst $38                                          ; $6bc0: $ff
	ld l, a                                          ; $6bc1: $6f
	pop de                                           ; $6bc2: $d1
	ld a, [hl]                                       ; $6bc3: $7e
	ret nz                                           ; $6bc4: $c0

	ld a, a                                          ; $6bc5: $7f
	jp $8efd                                         ; $6bc6: $c3 $fd $8e


	rst FarCall                                          ; $6bc9: $f7
	add d                                            ; $6bca: $82
	cp $03                                           ; $6bcb: $fe $03
	dec sp                                           ; $6bcd: $3b
	sbc $03                                          ; $6bce: $de $03
	sbc [hl]                                         ; $6bd0: $9e
	ld [bc], a                                       ; $6bd1: $02
	sbc $01                                          ; $6bd2: $de $01
	add b                                            ; $6bd4: $80
	ld h, e                                          ; $6bd5: $63
	rst FarCall                                          ; $6bd6: $f7
	ld a, [hl+]                                      ; $6bd7: $2a
	rst FarCall                                          ; $6bd8: $f7
	ld a, [de]                                       ; $6bd9: $1a
	ei                                               ; $6bda: $fb
	dec d                                            ; $6bdb: $15
	ei                                               ; $6bdc: $fb
	adc l                                            ; $6bdd: $8d
	rst $38                                          ; $6bde: $ff
	ld c, b                                          ; $6bdf: $48
	rst $38                                          ; $6be0: $ff
	ld b, h                                          ; $6be1: $44
	rst $38                                          ; $6be2: $ff
	and d                                            ; $6be3: $a2
	ld a, a                                          ; $6be4: $7f
	pop de                                           ; $6be5: $d1
	rst AddAOntoHL                                          ; $6be6: $ef
	ld sp, hl                                        ; $6be7: $f9
	ld [hl], a                                       ; $6be8: $77
	db $fc                                           ; $6be9: $fc
	ld a, a                                          ; $6bea: $7f
	ld a, a                                          ; $6beb: $7f
	jp hl                                            ; $6bec: $e9


	rst AddAOntoHL                                          ; $6bed: $ef
	pop hl                                           ; $6bee: $e1
	xor a                                            ; $6bef: $af
	ld h, e                                          ; $6bf0: $63
	dec l                                            ; $6bf1: $2d
	ld b, e                                          ; $6bf2: $43
	sbc $87                                          ; $6bf3: $de $87
	jp $07be                                         ; $6bf5: $c3 $be $07


	ld a, [de]                                       ; $6bf8: $1a
	rlca                                             ; $6bf9: $07
	inc c                                            ; $6bfa: $0c
	ld c, $05                                        ; $6bfb: $0e $05
	ld c, $1d                                        ; $6bfd: $0e $1d
	inc e                                            ; $6bff: $1c
	rrca                                             ; $6c00: $0f
	inc a                                            ; $6c01: $3c
	ld d, $7c                                        ; $6c02: $16 $7c
	dec h                                            ; $6c04: $25

jr_06c_6c05:
	db $fc                                           ; $6c05: $fc
	ld l, c                                          ; $6c06: $69
	ld sp, hl                                        ; $6c07: $f9
	call z, $96f9                                    ; $6c08: $cc $f9 $96
	ei                                               ; $6c0b: $fb
	sub l                                            ; $6c0c: $95
	ld a, e                                          ; $6c0d: $7b
	sub a                                            ; $6c0e: $97
	sbc [hl]                                         ; $6c0f: $9e
	inc hl                                           ; $6c10: $23
	ld a, e                                          ; $6c11: $7b
	cp $98                                           ; $6c12: $fe $98
	ld b, l                                          ; $6c14: $45
	rst $38                                          ; $6c15: $ff
	ret                                              ; $6c16: $c9


	rst $38                                          ; $6c17: $ff

jr_06c_6c18:
	ld h, d                                          ; $6c18: $62
	rst $38                                          ; $6c19: $ff
	ld [hl+], a                                      ; $6c1a: $22
	ld a, e                                          ; $6c1b: $7b
	cp $9e                                           ; $6c1c: $fe $9e
	ld [de], a                                       ; $6c1e: $12
	ld a, e                                          ; $6c1f: $7b
	cp $9e                                           ; $6c20: $fe $9e
	adc c                                            ; $6c22: $89
	ld a, e                                          ; $6c23: $7b
	ldh a, [$7f]                                     ; $6c24: $f0 $7f
	db $ec                                           ; $6c26: $ec
	sub [hl]                                         ; $6c27: $96
	ld e, $ff                                        ; $6c28: $1e $ff
	pop af                                           ; $6c2a: $f1
	rst $38                                          ; $6c2b: $ff
	dec h                                            ; $6c2c: $25
	rst $38                                          ; $6c2d: $ff
	inc h                                            ; $6c2e: $24
	rst $38                                          ; $6c2f: $ff
	sub d                                            ; $6c30: $92
	ld a, e                                          ; $6c31: $7b
	cp $9c                                           ; $6c32: $fe $9c
	ld c, d                                          ; $6c34: $4a
	rst $38                                          ; $6c35: $ff
	ld c, c                                          ; $6c36: $49
	ld a, e                                          ; $6c37: $7b
	cp $7f                                           ; $6c38: $fe $7f
	xor b                                            ; $6c3a: $a8
	ld a, a                                          ; $6c3b: $7f
	ldh a, [c]                                       ; $6c3c: $f2
	ld l, a                                          ; $6c3d: $6f
	cp $7f                                           ; $6c3e: $fe $7f
	ret c                                            ; $6c40: $d8

	sub a                                            ; $6c41: $97
	ld h, d                                          ; $6c42: $62
	rst SubAFromDE                                          ; $6c43: $df
	halt                                             ; $6c44: $76
	sbc a                                            ; $6c45: $9f
	or $9b                                           ; $6c46: $f6 $9b
	rst $38                                          ; $6c48: $ff
	dec de                                           ; $6c49: $1b
	ld a, e                                          ; $6c4a: $7b
	cp $77                                           ; $6c4b: $fe $77
	call $009d                                       ; $6c4d: $cd $9d $00
	rst $38                                          ; $6c50: $ff
	ld b, a                                          ; $6c51: $47
	nop                                              ; $6c52: $00
	adc a                                            ; $6c53: $8f
	jr jr_06c_6c8d                                   ; $6c54: $18 $37

	jr nz, jr_06c_6c97                               ; $6c56: $20 $3f

	inc hl                                           ; $6c58: $23
	dec a                                            ; $6c59: $3d
	ld h, $3f                                        ; $6c5a: $26 $3f
	ld a, $3a                                        ; $6c5c: $3e $3a
	ld l, e                                          ; $6c5e: $6b
	ld a, e                                          ; $6c5f: $7b
	ld d, e                                          ; $6c60: $53
	ld e, c                                          ; $6c61: $59
	sub c                                            ; $6c62: $91
	sbc h                                            ; $6c63: $9c
	ld b, a                                          ; $6c64: $47
	jr nz, jr_06c_6c05                               ; $6c65: $20 $9e

	ld [$cc7b], sp                                   ; $6c67: $08 $7b $cc
	sub l                                            ; $6c6a: $95
	ldh [$df], a                                     ; $6c6b: $e0 $df
	ld [hl], b                                       ; $6c6d: $70
	cp $70                                           ; $6c6e: $fe $70
	ld l, h                                          ; $6c70: $6c
	ldh [$e0], a                                     ; $6c71: $e0 $e0
	ld h, b                                          ; $6c73: $60
	and b                                            ; $6c74: $a0
	ccf                                              ; $6c75: $3f
	jr nz, @-$6d                                     ; $6c76: $20 $91

	ret nz                                           ; $6c78: $c0

	rst $38                                          ; $6c79: $ff
	add b                                            ; $6c7a: $80
	rst $38                                          ; $6c7b: $ff
	add e                                            ; $6c7c: $83
	db $fd                                           ; $6c7d: $fd
	ld [bc], a                                       ; $6c7e: $02
	ccf                                              ; $6c7f: $3f
	ld b, $0e                                        ; $6c80: $06 $0e
	inc bc                                           ; $6c82: $03
	rlca                                             ; $6c83: $07
	inc bc                                           ; $6c84: $03
	inc bc                                           ; $6c85: $03
	ccf                                              ; $6c86: $3f
	jr nz, jr_06c_6c18                               ; $6c87: $20 $8f

	rrca                                             ; $6c89: $0f
	ld sp, hl                                        ; $6c8a: $f9
	rlca                                             ; $6c8b: $07
	db $fc                                           ; $6c8c: $fc

jr_06c_6c8d:
	db $e3                                           ; $6c8d: $e3
	rst SubAFromDE                                          ; $6c8e: $df
	ld a, c                                          ; $6c8f: $79
	rst FarCall                                          ; $6c90: $f7
	ld a, l                                          ; $6c91: $7d
	ld a, a                                          ; $6c92: $7f
	db $eb                                           ; $6c93: $eb
	db $ed                                           ; $6c94: $ed
	ld h, e                                          ; $6c95: $63
	xor [hl]                                         ; $6c96: $ae

jr_06c_6c97:
	jp $37fe                                         ; $6c97: $c3 $fe $37


	add b                                            ; $6c9a: $80
	ld [hl], e                                       ; $6c9b: $73
	ld a, [hl]                                       ; $6c9c: $7e
	sbc d                                            ; $6c9d: $9a
	ld a, $7f                                        ; $6c9e: $3e $7f
	ld a, e                                          ; $6ca0: $7b
	ld e, e                                          ; $6ca1: $5b
	ld e, e                                          ; $6ca2: $5b
	cpl                                              ; $6ca3: $2f
	add b                                            ; $6ca4: $80
	ld a, e                                          ; $6ca5: $7b
	ld a, [hl]                                       ; $6ca6: $7e
	sbc e                                            ; $6ca7: $9b
	sbc $70                                          ; $6ca8: $de $70
	db $fc                                           ; $6caa: $fc
	ldh a, [rAUD4GO]                                 ; $6cab: $f0 $23
	add b                                            ; $6cad: $80
	ld a, a                                          ; $6cae: $7f
	cp $9d                                           ; $6caf: $fe $9d
	inc bc                                           ; $6cb1: $03
	dec a                                            ; $6cb2: $3d
	rla                                              ; $6cb3: $17
	add b                                            ; $6cb4: $80
	sub [hl]                                         ; $6cb5: $96
	inc bc                                           ; $6cb6: $03
	rst $38                                          ; $6cb7: $ff
	pop af                                           ; $6cb8: $f1
	rst AddAOntoHL                                          ; $6cb9: $ef
	ld a, c                                          ; $6cba: $79
	rst FarCall                                          ; $6cbb: $f7
	rst $38                                          ; $6cbc: $ff
	cp l                                             ; $6cbd: $bd
	ld l, e                                          ; $6cbe: $6b
	inc hl                                           ; $6cbf: $23
	add b                                            ; $6cc0: $80
	ld a, e                                          ; $6cc1: $7b
	ld a, [hl]                                       ; $6cc2: $7e
	sbc b                                            ; $6cc3: $98
	ccf                                              ; $6cc4: $3f
	ld a, h                                          ; $6cc5: $7c
	ld a, a                                          ; $6cc6: $7f
	ld d, a                                          ; $6cc7: $57
	ld e, a                                          ; $6cc8: $5f
	sub c                                            ; $6cc9: $91
	sbc a                                            ; $6cca: $9f
	cpl                                              ; $6ccb: $2f
	add b                                            ; $6ccc: $80
	sbc d                                            ; $6ccd: $9a
	nop                                              ; $6cce: $00
	cp $b0                                           ; $6ccf: $fe $b0
	db $fc                                           ; $6cd1: $fc
	ld [hl], b                                       ; $6cd2: $70
	sbc $e0                                          ; $6cd3: $de $e0
	daa                                              ; $6cd5: $27
	add b                                            ; $6cd6: $80
	sbc d                                            ; $6cd7: $9a
	nop                                              ; $6cd8: $00
	ccf                                              ; $6cd9: $3f
	dec b                                            ; $6cda: $05
	rrca                                             ; $6cdb: $0f
	ld [bc], a                                       ; $6cdc: $02
	ld [hl], a                                       ; $6cdd: $77
	add b                                            ; $6cde: $80
	sbc [hl]                                         ; $6cdf: $9e
	ld h, a                                          ; $6ce0: $67
	cpl                                              ; $6ce1: $2f
	add b                                            ; $6ce2: $80
	sub l                                            ; $6ce3: $95
	ld bc, $e1ff                                     ; $6ce4: $01 $ff $e1
	rst $38                                          ; $6ce7: $ff
	rra                                              ; $6ce8: $1f
	db $fd                                           ; $6ce9: $fd
	ei                                               ; $6cea: $fb
	cp $c3                                           ; $6ceb: $fe $c3
	cp $f9                                           ; $6ced: $fe $f9
	add b                                            ; $6cef: $80
	rlca                                             ; $6cf0: $07
	inc b                                            ; $6cf1: $04
	inc b                                            ; $6cf2: $04
	ld b, $06                                        ; $6cf3: $06 $06
	dec b                                            ; $6cf5: $05
	inc bc                                           ; $6cf6: $03
	add d                                            ; $6cf7: $82
	pop bc                                           ; $6cf8: $c1
	pop hl                                           ; $6cf9: $e1
	ldh a, [$38]                                     ; $6cfa: $f0 $38
	inc c                                            ; $6cfc: $0c
	cp $03                                           ; $6cfd: $fe $03
	adc $01                                          ; $6cff: $ce $01
	pop bc                                           ; $6d01: $c1
	add b                                            ; $6d02: $80
	ld h, b                                          ; $6d03: $60
	add b                                            ; $6d04: $80
	ldh a, [$e0]                                     ; $6d05: $f0 $e0
	ldh a, [rLCDC]                                   ; $6d07: $f0 $40
	ld [hl], b                                       ; $6d09: $70
	ld h, b                                          ; $6d0a: $60
	ld [hl], b                                       ; $6d0b: $70
	ld b, b                                          ; $6d0c: $40
	jr nz, jr_06c_6d0f                               ; $6d0d: $20 $00

jr_06c_6d0f:
	add [hl]                                         ; $6d0f: $86
	nop                                              ; $6d10: $00
	ldh a, [rAUD1SWEEP]                              ; $6d11: $f0 $10
	db $10                                           ; $6d13: $10
	jr nc, jr_06c_6d46                               ; $6d14: $30 $30

	ret nc                                           ; $6d16: $d0

	ldh [rAUD4LEN], a                                ; $6d17: $e0 $20
	pop bc                                           ; $6d19: $c1
	jp $0307                                         ; $6d1a: $c3 $07 $03


	rra                                              ; $6d1d: $1f
	cpl                                              ; $6d1e: $2f
	ld a, c                                          ; $6d1f: $79
	cp a                                             ; $6d20: $bf
	pop hl                                           ; $6d21: $e1
	rst $38                                          ; $6d22: $ff
	ld bc, $071f                                     ; $6d23: $01 $1f $07
	rrca                                             ; $6d26: $0f
	rra                                              ; $6d27: $1f
	rra                                              ; $6d28: $1f
	ld d, a                                          ; $6d29: $57
	ret nz                                           ; $6d2a: $c0

	ld a, c                                          ; $6d2b: $79
	xor [hl]                                         ; $6d2c: $ae
	sbc h                                            ; $6d2d: $9c
	add c                                            ; $6d2e: $81
	ret nz                                           ; $6d2f: $c0

	ldh [$1f], a                                     ; $6d30: $e0 $1f
	ret nz                                           ; $6d32: $c0

	ld a, a                                          ; $6d33: $7f
	jp nz, $c0df                                     ; $6d34: $c2 $df $c0

	sbc e                                            ; $6d37: $9b
	ld bc, $0703                                     ; $6d38: $01 $03 $07
	add e                                            ; $6d3b: $83
	cpl                                              ; $6d3c: $2f
	ret nz                                           ; $6d3d: $c0

	ld [hl], l                                       ; $6d3e: $75

Call_06c_6d3f:
	ld [hl], b                                       ; $6d3f: $70
	sbc l                                            ; $6d40: $9d
	nop                                              ; $6d41: $00
	add b                                            ; $6d42: $80
	rra                                              ; $6d43: $1f
	ret nz                                           ; $6d44: $c0

	ld [hl], a                                       ; $6d45: $77

jr_06c_6d46:
	jp nz, $9dff                                     ; $6d46: $c2 $ff $9d

	ld bc, $2783                                     ; $6d49: $01 $83 $27
	add b                                            ; $6d4c: $80
	ld a, a                                          ; $6d4d: $7f
	and [hl]                                         ; $6d4e: $a6
	cp $1b                                           ; $6d4f: $fe $1b
	ret nz                                           ; $6d51: $c0

	ld a, a                                          ; $6d52: $7f
	and $77                                          ; $6d53: $e6 $77
	ldh [$7b], a                                     ; $6d55: $e0 $7b
	add b                                            ; $6d57: $80
	ld d, e                                          ; $6d58: $53
	ret nz                                           ; $6d59: $c0

	ld [$9b01], a                                    ; $6d5a: $ea $01 $9b
	rrca                                             ; $6d5d: $0f
	inc c                                            ; $6d5e: $0c
	rrca                                             ; $6d5f: $0f
	ld [$fe7b], sp                                   ; $6d60: $08 $7b $fe
	add c                                            ; $6d63: $81
	add hl, bc                                       ; $6d64: $09
	rrca                                             ; $6d65: $0f
	add hl, bc                                       ; $6d66: $09
	rra                                              ; $6d67: $1f
	ld [de], a                                       ; $6d68: $12
	rra                                              ; $6d69: $1f
	rla                                              ; $6d6a: $17
	inc e                                            ; $6d6b: $1c
	rra                                              ; $6d6c: $1f
	jr jr_06c_6da6                                   ; $6d6d: $18 $37

	daa                                              ; $6d6f: $27
	dec sp                                           ; $6d70: $3b
	ld l, $37                                        ; $6d71: $2e $37
	ld a, $3a                                        ; $6d73: $3e $3a
	dec hl                                           ; $6d75: $2b
	dec sp                                           ; $6d76: $3b
	ld h, e                                          ; $6d77: $63
	ld a, e                                          ; $6d78: $7b
	ld d, c                                          ; $6d79: $51
	ld e, c                                          ; $6d7a: $59
	sub c                                            ; $6d7b: $91
	sbc h                                            ; $6d7c: $9c
	sub b                                            ; $6d7d: $90
	sbc b                                            ; $6d7e: $98
	db $10                                           ; $6d7f: $10
	jr jr_06c_6d92                                   ; $6d80: $18 $10

	sbc $18                                          ; $6d82: $de $18
	adc l                                            ; $6d84: $8d
	inc a                                            ; $6d85: $3c
	jr z, jr_06c_6dc4                                ; $6d86: $28 $3c

	inc l                                            ; $6d88: $2c
	ld a, $2e                                        ; $6d89: $3e $2e
	ld a, a                                          ; $6d8b: $7f
	ld l, e                                          ; $6d8c: $6b
	ld a, a                                          ; $6d8d: $7f
	ld l, e                                          ; $6d8e: $6b
	cp a                                             ; $6d8f: $bf
	xor c                                            ; $6d90: $a9
	cp a                                             ; $6d91: $bf

jr_06c_6d92:
	and c                                            ; $6d92: $a1
	dec a                                            ; $6d93: $3d
	dec hl                                           ; $6d94: $2b
	ld l, l                                          ; $6d95: $6d
	ld e, e                                          ; $6d96: $5b
	ld a, e                                          ; $6d97: $7b
	cp $80                                           ; $6d98: $fe $80
	ld a, e                                          ; $6d9a: $7b
	db $ed                                           ; $6d9b: $ed
	ei                                               ; $6d9c: $fb
	or $6d                                           ; $6d9d: $f6 $6d
	cp [hl]                                          ; $6d9f: $be
	push hl                                          ; $6da0: $e5
	cp a                                             ; $6da1: $bf
	db $e4                                           ; $6da2: $e4
	dec sp                                           ; $6da3: $3b
	xor $1b                                          ; $6da4: $ee $1b

jr_06c_6da6:
	or $d9                                           ; $6da6: $f6 $d9
	scf                                              ; $6da8: $37
	ld sp, hl                                        ; $6da9: $f9
	rst FarCall                                          ; $6daa: $f7
	add hl, de                                       ; $6dab: $19
	rst $38                                          ; $6dac: $ff
	ld [$e0ff], sp                                   ; $6dad: $08 $ff $e0
	rst SubAFromDE                                          ; $6db0: $df
	ld [hl], b                                       ; $6db1: $70
	rst $38                                          ; $6db2: $ff
	ldh a, [$ee]                                     ; $6db3: $f0 $ee
	ldh [$ec], a                                     ; $6db5: $e0 $ec
	ldh [$a0], a                                     ; $6db7: $e0 $a0
	add b                                            ; $6db9: $80
	ld b, b                                          ; $6dba: $40
	add b                                            ; $6dbb: $80
	ret nz                                           ; $6dbc: $c0

	ret nz                                           ; $6dbd: $c0

	ei                                               ; $6dbe: $fb
	sub [hl]                                         ; $6dbf: $96
	rst $38                                          ; $6dc0: $ff
	sbc c                                            ; $6dc1: $99
	rst $38                                          ; $6dc2: $ff
	sbc c                                            ; $6dc3: $99

jr_06c_6dc4:
	rst FarCall                                          ; $6dc4: $f7
	sbc h                                            ; $6dc5: $9c
	di                                               ; $6dc6: $f3
	ld e, [hl]                                       ; $6dc7: $5e
	ei                                               ; $6dc8: $fb
	ld l, l                                          ; $6dc9: $6d
	rst SubAFromDE                                          ; $6dca: $df
	ld a, e                                          ; $6dcb: $7b
	call z, $c07f                                    ; $6dcc: $cc $7f $c0
	rst $38                                          ; $6dcf: $ff
	add e                                            ; $6dd0: $83
	db $fd                                           ; $6dd1: $fd
	adc [hl]                                         ; $6dd2: $8e
	rst FarCall                                          ; $6dd3: $f7
	ld [bc], a                                       ; $6dd4: $02
	ld a, $03                                        ; $6dd5: $3e $03
	dec bc                                           ; $6dd7: $0b
	inc bc                                           ; $6dd8: $03
	sbc [hl]                                         ; $6dd9: $9e
	inc bc                                           ; $6dda: $03
	sbc $01                                          ; $6ddb: $de $01
	add b                                            ; $6ddd: $80
	ld h, e                                          ; $6dde: $63
	rst FarCall                                          ; $6ddf: $f7
	ld a, [hl+]                                      ; $6de0: $2a
	rst FarCall                                          ; $6de1: $f7
	ld a, [de]                                       ; $6de2: $1a
	ei                                               ; $6de3: $fb
	dec d                                            ; $6de4: $15
	ei                                               ; $6de5: $fb
	adc l                                            ; $6de6: $8d
	rst $38                                          ; $6de7: $ff
	ld c, b                                          ; $6de8: $48
	rst $38                                          ; $6de9: $ff
	ld b, h                                          ; $6dea: $44
	rst $38                                          ; $6deb: $ff
	and d                                            ; $6dec: $a2
	ld a, a                                          ; $6ded: $7f
	pop de                                           ; $6dee: $d1
	rrca                                             ; $6def: $0f
	ld sp, hl                                        ; $6df0: $f9
	rst SubAFromBC                                          ; $6df1: $e7
	call c, $ff73                                    ; $6df2: $dc $73 $ff
	ld a, l                                          ; $6df5: $7d
	ld a, a                                          ; $6df6: $7f
	jp hl                                            ; $6df7: $e9


	rst AddAOntoHL                                          ; $6df8: $ef
	db $e3                                           ; $6df9: $e3
	xor l                                            ; $6dfa: $ad
	ld b, e                                          ; $6dfb: $43
	sbc [hl]                                         ; $6dfc: $9e
	add a                                            ; $6dfd: $87
	jp $07fe                                         ; $6dfe: $c3 $fe $07


	ld a, [de]                                       ; $6e01: $1a
	rlca                                             ; $6e02: $07
	inc c                                            ; $6e03: $0c
	ld c, $05                                        ; $6e04: $0e $05
	ld c, $1d                                        ; $6e06: $0e $1d
	inc e                                            ; $6e08: $1c
	rrca                                             ; $6e09: $0f
	inc a                                            ; $6e0a: $3c
	ld d, $7c                                        ; $6e0b: $16 $7c
	dec h                                            ; $6e0d: $25
	db $fc                                           ; $6e0e: $fc
	ld l, c                                          ; $6e0f: $69
	ld sp, hl                                        ; $6e10: $f9
	call z, $96f9                                    ; $6e11: $cc $f9 $96
	ei                                               ; $6e14: $fb
	sub l                                            ; $6e15: $95
	ld a, e                                          ; $6e16: $7b
	sub a                                            ; $6e17: $97
	sbc [hl]                                         ; $6e18: $9e

jr_06c_6e19:
	inc hl                                           ; $6e19: $23
	ld a, e                                          ; $6e1a: $7b

jr_06c_6e1b:
	cp $98                                           ; $6e1b: $fe $98
	ld b, l                                          ; $6e1d: $45
	rst $38                                          ; $6e1e: $ff
	ret                                              ; $6e1f: $c9


	rst $38                                          ; $6e20: $ff
	ld h, d                                          ; $6e21: $62
	rst $38                                          ; $6e22: $ff
	ld [hl+], a                                      ; $6e23: $22
	ld a, e                                          ; $6e24: $7b
	cp $9e                                           ; $6e25: $fe $9e
	ld [de], a                                       ; $6e27: $12
	ld a, e                                          ; $6e28: $7b
	cp $9e                                           ; $6e29: $fe $9e
	adc c                                            ; $6e2b: $89
	ld a, e                                          ; $6e2c: $7b
	ldh a, [$7f]                                     ; $6e2d: $f0 $7f
	db $ec                                           ; $6e2f: $ec
	sub [hl]                                         ; $6e30: $96
	ld e, $ff                                        ; $6e31: $1e $ff
	pop af                                           ; $6e33: $f1
	rst $38                                          ; $6e34: $ff
	dec h                                            ; $6e35: $25
	rst $38                                          ; $6e36: $ff
	inc h                                            ; $6e37: $24
	rst $38                                          ; $6e38: $ff
	sub d                                            ; $6e39: $92
	ld a, e                                          ; $6e3a: $7b
	cp $9c                                           ; $6e3b: $fe $9c
	ld c, d                                          ; $6e3d: $4a
	rst $38                                          ; $6e3e: $ff
	ld c, c                                          ; $6e3f: $49
	ld a, e                                          ; $6e40: $7b
	cp $7f                                           ; $6e41: $fe $7f
	xor b                                            ; $6e43: $a8
	ld a, a                                          ; $6e44: $7f
	ldh a, [c]                                       ; $6e45: $f2
	ld l, a                                          ; $6e46: $6f
	cp $7f                                           ; $6e47: $fe $7f
	ret c                                            ; $6e49: $d8

	sub a                                            ; $6e4a: $97
	ld h, d                                          ; $6e4b: $62
	rst SubAFromDE                                          ; $6e4c: $df
	halt                                             ; $6e4d: $76
	sbc a                                            ; $6e4e: $9f
	or $9b                                           ; $6e4f: $f6 $9b
	rst $38                                          ; $6e51: $ff
	dec de                                           ; $6e52: $1b
	ld a, e                                          ; $6e53: $7b
	cp $77                                           ; $6e54: $fe $77
	call $009d                                       ; $6e56: $cd $9d $00
	rst $38                                          ; $6e59: $ff
	ccf                                              ; $6e5a: $3f
	nop                                              ; $6e5b: $00
	sub h                                            ; $6e5c: $94
	jr nz, @+$41                                     ; $6e5d: $20 $3f

	inc hl                                           ; $6e5f: $23
	dec a                                            ; $6e60: $3d
	ld h, $3f                                        ; $6e61: $26 $3f
	ld a, $3a                                        ; $6e63: $3e $3a
	ld l, e                                          ; $6e65: $6b
	ld a, e                                          ; $6e66: $7b
	ld d, e                                          ; $6e67: $53
	ld a, e                                          ; $6e68: $7b
	nop                                              ; $6e69: $00
	ccf                                              ; $6e6a: $3f
	jr nz, jr_06c_6eec                               ; $6e6b: $20 $7f

	call z, $1e7b                                    ; $6e6d: $cc $7b $1e
	sbc b                                            ; $6e70: $98
	cp $70                                           ; $6e71: $fe $70
	ld l, h                                          ; $6e73: $6c
	ldh [$e0], a                                     ; $6e74: $e0 $e0
	ld h, b                                          ; $6e76: $60
	and b                                            ; $6e77: $a0
	scf                                              ; $6e78: $37
	jr nz, jr_06c_6e19                               ; $6e79: $20 $9e

	add b                                            ; $6e7b: $80
	ld a, e                                          ; $6e7c: $7b
	ld e, $99                                        ; $6e7d: $1e $99
	ld [bc], a                                       ; $6e7f: $02
	ccf                                              ; $6e80: $3f
	ld b, $0e                                        ; $6e81: $06 $0e
	inc bc                                           ; $6e83: $03
	rlca                                             ; $6e84: $07
	ld a, e                                          ; $6e85: $7b
	ld e, $3b                                        ; $6e86: $1e $3b
	jr nz, jr_06c_6e1b                               ; $6e88: $20 $91

	rlca                                             ; $6e8a: $07
	db $fc                                           ; $6e8b: $fc
	db $e3                                           ; $6e8c: $e3
	rst SubAFromDE                                          ; $6e8d: $df
	ld a, c                                          ; $6e8e: $79
	rst FarCall                                          ; $6e8f: $f7
	ld a, l                                          ; $6e90: $7d
	ld a, a                                          ; $6e91: $7f
	db $eb                                           ; $6e92: $eb
	db $ed                                           ; $6e93: $ed
	ld h, e                                          ; $6e94: $63
	xor [hl]                                         ; $6e95: $ae
	jp $37fe                                         ; $6e96: $c3 $fe $37


	add b                                            ; $6e99: $80
	ld [hl], e                                       ; $6e9a: $73
	ld a, [hl]                                       ; $6e9b: $7e
	sbc d                                            ; $6e9c: $9a
	ld a, $7f                                        ; $6e9d: $3e $7f
	ld a, e                                          ; $6e9f: $7b
	ld e, e                                          ; $6ea0: $5b
	ld e, e                                          ; $6ea1: $5b
	cpl                                              ; $6ea2: $2f
	add b                                            ; $6ea3: $80
	ld a, e                                          ; $6ea4: $7b
	ld a, [hl]                                       ; $6ea5: $7e
	sbc e                                            ; $6ea6: $9b
	sbc $70                                          ; $6ea7: $de $70
	db $fc                                           ; $6ea9: $fc
	ldh a, [rAUD4GO]                                 ; $6eaa: $f0 $23
	add b                                            ; $6eac: $80
	ld a, a                                          ; $6ead: $7f
	cp $9d                                           ; $6eae: $fe $9d
	inc bc                                           ; $6eb0: $03
	dec a                                            ; $6eb1: $3d
	rla                                              ; $6eb2: $17
	add b                                            ; $6eb3: $80
	sub [hl]                                         ; $6eb4: $96
	inc bc                                           ; $6eb5: $03
	rst $38                                          ; $6eb6: $ff
	pop af                                           ; $6eb7: $f1
	rst AddAOntoHL                                          ; $6eb8: $ef
	ld a, c                                          ; $6eb9: $79
	rst FarCall                                          ; $6eba: $f7
	rst $38                                          ; $6ebb: $ff
	cp l                                             ; $6ebc: $bd
	ld l, e                                          ; $6ebd: $6b
	inc hl                                           ; $6ebe: $23
	add b                                            ; $6ebf: $80
	ld a, e                                          ; $6ec0: $7b
	ld a, [hl]                                       ; $6ec1: $7e
	sbc b                                            ; $6ec2: $98
	ccf                                              ; $6ec3: $3f
	ld a, h                                          ; $6ec4: $7c
	ld a, a                                          ; $6ec5: $7f
	ld d, a                                          ; $6ec6: $57
	ld e, a                                          ; $6ec7: $5f
	sub c                                            ; $6ec8: $91
	sbc a                                            ; $6ec9: $9f
	cpl                                              ; $6eca: $2f
	add b                                            ; $6ecb: $80
	sbc d                                            ; $6ecc: $9a
	nop                                              ; $6ecd: $00
	cp $b0                                           ; $6ece: $fe $b0
	db $fc                                           ; $6ed0: $fc
	ld [hl], b                                       ; $6ed1: $70
	sbc $e0                                          ; $6ed2: $de $e0
	daa                                              ; $6ed4: $27

jr_06c_6ed5:
	add b                                            ; $6ed5: $80
	sbc d                                            ; $6ed6: $9a
	nop                                              ; $6ed7: $00
	ccf                                              ; $6ed8: $3f
	dec b                                            ; $6ed9: $05
	rrca                                             ; $6eda: $0f
	ld [bc], a                                       ; $6edb: $02
	ld [hl], a                                       ; $6edc: $77
	add b                                            ; $6edd: $80
	sbc [hl]                                         ; $6ede: $9e
	ld h, a                                          ; $6edf: $67
	cpl                                              ; $6ee0: $2f
	add b                                            ; $6ee1: $80
	sub l                                            ; $6ee2: $95
	ld bc, $e1ff                                     ; $6ee3: $01 $ff $e1
	rst $38                                          ; $6ee6: $ff
	rra                                              ; $6ee7: $1f
	db $fd                                           ; $6ee8: $fd
	ei                                               ; $6ee9: $fb
	cp $c3                                           ; $6eea: $fe $c3

jr_06c_6eec:
	cp $f9                                           ; $6eec: $fe $f9
	add b                                            ; $6eee: $80
	inc b                                            ; $6eef: $04
	rlca                                             ; $6ef0: $07
	inc bc                                           ; $6ef1: $03
	ld [bc], a                                       ; $6ef2: $02
	ld bc, $0001                                     ; $6ef3: $01 $01 $00
	add b                                            ; $6ef6: $80
	ret nz                                           ; $6ef7: $c0

	ldh [$f0], a                                     ; $6ef8: $e0 $f0
	jr c, jr_06c_6f08                                ; $6efa: $38 $0c

	cp $03                                           ; $6efc: $fe $03
	adc $01                                          ; $6efe: $ce $01
	pop bc                                           ; $6f00: $c1
	add b                                            ; $6f01: $80
	ld h, b                                          ; $6f02: $60
	add b                                            ; $6f03: $80
	ldh a, [$e0]                                     ; $6f04: $f0 $e0
	ldh a, [rLCDC]                                   ; $6f06: $f0 $40

jr_06c_6f08:
	ld [hl], b                                       ; $6f08: $70
	ld h, b                                          ; $6f09: $60
	ld [hl], b                                       ; $6f0a: $70
	ld b, b                                          ; $6f0b: $40
	jr nz, jr_06c_6f0e                               ; $6f0c: $20 $00

jr_06c_6f0e:
	add [hl]                                         ; $6f0e: $86
	nop                                              ; $6f0f: $00
	db $10                                           ; $6f10: $10
	ldh a, [$e0]                                     ; $6f11: $f0 $e0
	jr nz, jr_06c_6ed5                               ; $6f13: $20 $c0

	ret nz                                           ; $6f15: $c0

	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	ld bc, $0783                                     ; $6f18: $01 $83 $07
	inc bc                                           ; $6f1b: $03
	rra                                              ; $6f1c: $1f
	cpl                                              ; $6f1d: $2f
	ld a, c                                          ; $6f1e: $79
	cp a                                             ; $6f1f: $bf
	pop hl                                           ; $6f20: $e1
	rst $38                                          ; $6f21: $ff
	ld bc, $071f                                     ; $6f22: $01 $1f $07
	rrca                                             ; $6f25: $0f
	rra                                              ; $6f26: $1f
	rra                                              ; $6f27: $1f
	inc bc                                           ; $6f28: $03
	ret nz                                           ; $6f29: $c0

	inc bc                                           ; $6f2a: $03
	ret nz                                           ; $6f2b: $c0

	ei                                               ; $6f2c: $fb
	sbc e                                            ; $6f2d: $9b
	rlca                                             ; $6f2e: $07
	inc b                                            ; $6f2f: $04
	ld bc, $fe03                                     ; $6f30: $01 $03 $fe
	inc hl                                           ; $6f33: $23
	ret nz                                           ; $6f34: $c0

	sbc e                                            ; $6f35: $9b
	ldh a, [rAUD1SWEEP]                              ; $6f36: $f0 $10
	ret nz                                           ; $6f38: $c0

	ldh [rPCM34], a                                  ; $6f39: $e0 $77
	ldh [$7f], a                                     ; $6f3b: $e0 $7f
	jp c, $c003                                      ; $6f3d: $da $03 $c0

	inc bc                                           ; $6f40: $03
	ret nz                                           ; $6f41: $c0

	ld d, a                                          ; $6f42: $57
	ret nz                                           ; $6f43: $c0

	dec c                                            ; $6f44: $0d
	ld [bc], a                                       ; $6f45: $02
	sbc e                                            ; $6f46: $9b
	rrca                                             ; $6f47: $0f
	inc c                                            ; $6f48: $0c
	rrca                                             ; $6f49: $0f
	ld [$fe7b], sp                                   ; $6f4a: $08 $7b $fe
	add c                                            ; $6f4d: $81
	add hl, bc                                       ; $6f4e: $09
	rrca                                             ; $6f4f: $0f
	add hl, bc                                       ; $6f50: $09
	rra                                              ; $6f51: $1f
	ld [de], a                                       ; $6f52: $12
	rra                                              ; $6f53: $1f
	rla                                              ; $6f54: $17
	inc e                                            ; $6f55: $1c
	rra                                              ; $6f56: $1f
	jr jr_06c_6f90                                   ; $6f57: $18 $37

	daa                                              ; $6f59: $27
	dec sp                                           ; $6f5a: $3b
	ld l, $37                                        ; $6f5b: $2e $37
	ld a, $3a                                        ; $6f5d: $3e $3a
	dec hl                                           ; $6f5f: $2b
	dec sp                                           ; $6f60: $3b
	ld h, e                                          ; $6f61: $63
	ld a, e                                          ; $6f62: $7b
	ld d, c                                          ; $6f63: $51
	ld e, c                                          ; $6f64: $59
	sub c                                            ; $6f65: $91
	sbc h                                            ; $6f66: $9c
	sub b                                            ; $6f67: $90
	sbc b                                            ; $6f68: $98
	db $10                                           ; $6f69: $10
	jr jr_06c_6f7c                                   ; $6f6a: $18 $10

	sbc $18                                          ; $6f6c: $de $18
	adc l                                            ; $6f6e: $8d
	inc a                                            ; $6f6f: $3c
	jr z, jr_06c_6fae                                ; $6f70: $28 $3c

	inc l                                            ; $6f72: $2c
	ld a, $2e                                        ; $6f73: $3e $2e
	ld a, a                                          ; $6f75: $7f
	ld l, e                                          ; $6f76: $6b
	ld a, a                                          ; $6f77: $7f
	ld l, e                                          ; $6f78: $6b
	cp a                                             ; $6f79: $bf
	xor c                                            ; $6f7a: $a9
	cp a                                             ; $6f7b: $bf

jr_06c_6f7c:
	and c                                            ; $6f7c: $a1
	dec a                                            ; $6f7d: $3d
	dec hl                                           ; $6f7e: $2b
	ld l, l                                          ; $6f7f: $6d

Jump_06c_6f80:
	ld e, e                                          ; $6f80: $5b
	ld a, e                                          ; $6f81: $7b
	cp $80                                           ; $6f82: $fe $80
	ld a, e                                          ; $6f84: $7b
	db $ed                                           ; $6f85: $ed
	ei                                               ; $6f86: $fb
	or $6d                                           ; $6f87: $f6 $6d
	cp [hl]                                          ; $6f89: $be
	push hl                                          ; $6f8a: $e5
	cp a                                             ; $6f8b: $bf
	db $e4                                           ; $6f8c: $e4
	dec sp                                           ; $6f8d: $3b
	xor $1b                                          ; $6f8e: $ee $1b

jr_06c_6f90:
	or $99                                           ; $6f90: $f6 $99
	ld [hl], a                                       ; $6f92: $77
	ld sp, hl                                        ; $6f93: $f9
	sub a                                            ; $6f94: $97
	ld a, c                                          ; $6f95: $79
	rst AddAOntoHL                                          ; $6f96: $ef
	inc e                                            ; $6f97: $1c
	rst $38                                          ; $6f98: $ff
	ldh [$df], a                                     ; $6f99: $e0 $df
	ld [hl], b                                       ; $6f9b: $70
	rst $38                                          ; $6f9c: $ff
	ld [hl], b                                       ; $6f9d: $70
	ld l, [hl]                                       ; $6f9e: $6e
	ldh [$ec], a                                     ; $6f9f: $e0 $ec
	ldh [$a0], a                                     ; $6fa1: $e0 $a0
	add b                                            ; $6fa3: $80
	ld b, b                                          ; $6fa4: $40
	add b                                            ; $6fa5: $80
	ret nz                                           ; $6fa6: $c0

	ldh a, [$fb]                                     ; $6fa7: $f0 $fb
	sub [hl]                                         ; $6fa9: $96
	rst $38                                          ; $6faa: $ff
	sbc c                                            ; $6fab: $99
	rst $38                                          ; $6fac: $ff
	sbc c                                            ; $6fad: $99

jr_06c_6fae:
	rst FarCall                                          ; $6fae: $f7
	sbc h                                            ; $6faf: $9c
	di                                               ; $6fb0: $f3
	ld e, [hl]                                       ; $6fb1: $5e
	pop af                                           ; $6fb2: $f1
	ld l, a                                          ; $6fb3: $6f
	db $d3                                           ; $6fb4: $d3
	ld a, h                                          ; $6fb5: $7c
	rst GetHLinHL                                          ; $6fb6: $cf
	ld [hl], e                                       ; $6fb7: $73
	call z, $83ff                                    ; $6fb8: $cc $ff $83
	db $fd                                           ; $6fbb: $fd
	adc [hl]                                         ; $6fbc: $8e
	rst FarCall                                          ; $6fbd: $f7
	ld [bc], a                                       ; $6fbe: $02
	ld a, $03                                        ; $6fbf: $3e $03
	dec bc                                           ; $6fc1: $0b
	inc bc                                           ; $6fc2: $03
	sbc [hl]                                         ; $6fc3: $9e

Call_06c_6fc4:
	inc bc                                           ; $6fc4: $03
	sbc $01                                          ; $6fc5: $de $01
	add b                                            ; $6fc7: $80
	ld h, e                                          ; $6fc8: $63
	rst FarCall                                          ; $6fc9: $f7
	ld a, [hl+]                                      ; $6fca: $2a
	rst FarCall                                          ; $6fcb: $f7
	ld a, [de]                                       ; $6fcc: $1a
	ei                                               ; $6fcd: $fb
	dec d                                            ; $6fce: $15
	ei                                               ; $6fcf: $fb
	adc l                                            ; $6fd0: $8d
	rst $38                                          ; $6fd1: $ff
	ld c, b                                          ; $6fd2: $48
	rst $38                                          ; $6fd3: $ff
	ld b, h                                          ; $6fd4: $44
	rst $38                                          ; $6fd5: $ff
	and d                                            ; $6fd6: $a2

Jump_06c_6fd7:
	rst $38                                          ; $6fd7: $ff
	pop de                                           ; $6fd8: $d1
	rrca                                             ; $6fd9: $0f
	ld sp, hl                                        ; $6fda: $f9
	rst SubAFromBC                                          ; $6fdb: $e7
	call c, $ff73                                    ; $6fdc: $dc $73 $ff
	ld a, l                                          ; $6fdf: $7d
	ld a, a                                          ; $6fe0: $7f
	jp hl                                            ; $6fe1: $e9


	rst AddAOntoHL                                          ; $6fe2: $ef
	db $e3                                           ; $6fe3: $e3
	xor l                                            ; $6fe4: $ad
	ld b, e                                          ; $6fe5: $43
	sbc [hl]                                         ; $6fe6: $9e
	add e                                            ; $6fe7: $83
	jp $07fe                                         ; $6fe8: $c3 $fe $07


	ld a, [de]                                       ; $6feb: $1a
	rlca                                             ; $6fec: $07
	inc c                                            ; $6fed: $0c
	ld c, $05                                        ; $6fee: $0e $05
	ld c, $1d                                        ; $6ff0: $0e $1d
	inc e                                            ; $6ff2: $1c
	rrca                                             ; $6ff3: $0f
	inc a                                            ; $6ff4: $3c
	ld d, $7c                                        ; $6ff5: $16 $7c
	dec h                                            ; $6ff7: $25
	db $fc                                           ; $6ff8: $fc
	ld l, c                                          ; $6ff9: $69
	ld sp, hl                                        ; $6ffa: $f9
	call z, $96f9                                    ; $6ffb: $cc $f9 $96
	ei                                               ; $6ffe: $fb
	sub l                                            ; $6fff: $95
	rst FarCall                                          ; $7000: $f7
	add hl, de                                       ; $7001: $19
	rst $38                                          ; $7002: $ff

jr_06c_7003:
	inc hl                                           ; $7003: $23
	ld a, e                                          ; $7004: $7b

jr_06c_7005:
	cp $98                                           ; $7005: $fe $98
	ld b, l                                          ; $7007: $45
	rst $38                                          ; $7008: $ff
	ret                                              ; $7009: $c9


	rst $38                                          ; $700a: $ff
	ld h, d                                          ; $700b: $62
	rst $38                                          ; $700c: $ff
	ld [hl+], a                                      ; $700d: $22
	ld a, e                                          ; $700e: $7b
	cp $9e                                           ; $700f: $fe $9e
	ld [de], a                                       ; $7011: $12
	ld a, e                                          ; $7012: $7b
	cp $9e                                           ; $7013: $fe $9e
	adc c                                            ; $7015: $89
	ld a, e                                          ; $7016: $7b
	ldh a, [$7f]                                     ; $7017: $f0 $7f
	db $ec                                           ; $7019: $ec
	sub [hl]                                         ; $701a: $96
	ld e, $ff                                        ; $701b: $1e $ff
	pop af                                           ; $701d: $f1
	rst $38                                          ; $701e: $ff
	dec h                                            ; $701f: $25
	rst $38                                          ; $7020: $ff
	inc h                                            ; $7021: $24
	rst $38                                          ; $7022: $ff
	sub d                                            ; $7023: $92
	ld a, e                                          ; $7024: $7b
	cp $9c                                           ; $7025: $fe $9c
	ld c, d                                          ; $7027: $4a
	rst $38                                          ; $7028: $ff
	ld c, c                                          ; $7029: $49
	ld a, e                                          ; $702a: $7b
	cp $7f                                           ; $702b: $fe $7f
	xor b                                            ; $702d: $a8
	ld a, a                                          ; $702e: $7f
	ldh a, [c]                                       ; $702f: $f2
	ld l, a                                          ; $7030: $6f
	cp $7f                                           ; $7031: $fe $7f
	ret c                                            ; $7033: $d8

	sub a                                            ; $7034: $97
	ld h, d                                          ; $7035: $62
	rst SubAFromDE                                          ; $7036: $df
	halt                                             ; $7037: $76
	sbc a                                            ; $7038: $9f
	or $9b                                           ; $7039: $f6 $9b
	rst $38                                          ; $703b: $ff
	dec de                                           ; $703c: $1b
	ld a, e                                          ; $703d: $7b
	cp $77                                           ; $703e: $fe $77
	call $009d                                       ; $7040: $cd $9d $00
	rst $38                                          ; $7043: $ff
	ccf                                              ; $7044: $3f
	nop                                              ; $7045: $00
	sub h                                            ; $7046: $94
	jr nz, @+$41                                     ; $7047: $20 $3f

	inc hl                                           ; $7049: $23
	dec a                                            ; $704a: $3d
	daa                                              ; $704b: $27
	ccf                                              ; $704c: $3f
	ld a, $3a                                        ; $704d: $3e $3a
	ld l, e                                          ; $704f: $6b
	ld a, e                                          ; $7050: $7b
	ld d, e                                          ; $7051: $53
	ld a, e                                          ; $7052: $7b
	nop                                              ; $7053: $00
	ccf                                              ; $7054: $3f
	jr nz, @+$81                                     ; $7055: $20 $7f

	call z, $1e7b                                    ; $7057: $cc $7b $1e
	sbc b                                            ; $705a: $98
	cp $70                                           ; $705b: $fe $70
	ld l, h                                          ; $705d: $6c
	ldh [$e0], a                                     ; $705e: $e0 $e0
	ld h, b                                          ; $7060: $60
	and b                                            ; $7061: $a0
	scf                                              ; $7062: $37
	jr nz, jr_06c_7003                               ; $7063: $20 $9e

	add b                                            ; $7065: $80
	ld a, e                                          ; $7066: $7b
	ld e, $99                                        ; $7067: $1e $99
	ld [bc], a                                       ; $7069: $02
	ccf                                              ; $706a: $3f
	ld b, $0e                                        ; $706b: $06 $0e
	inc bc                                           ; $706d: $03
	rlca                                             ; $706e: $07
	ld a, e                                          ; $706f: $7b
	ld e, $3b                                        ; $7070: $1e $3b
	jr nz, jr_06c_7005                               ; $7072: $20 $91

	rlca                                             ; $7074: $07
	db $fc                                           ; $7075: $fc
	db $e3                                           ; $7076: $e3
	rst SubAFromDE                                          ; $7077: $df
	ld a, c                                          ; $7078: $79
	rst FarCall                                          ; $7079: $f7
	ld a, l                                          ; $707a: $7d
	ld a, a                                          ; $707b: $7f
	db $eb                                           ; $707c: $eb
	db $ed                                           ; $707d: $ed
	ld h, e                                          ; $707e: $63
	xor [hl]                                         ; $707f: $ae
	jp $37fe                                         ; $7080: $c3 $fe $37


	add b                                            ; $7083: $80
	ld [hl], a                                       ; $7084: $77
	ld a, [hl]                                       ; $7085: $7e
	sbc c                                            ; $7086: $99
	ld h, $3e                                        ; $7087: $26 $3e
	ld a, a                                          ; $7089: $7f
	ld a, e                                          ; $708a: $7b
	ld e, e                                          ; $708b: $5b
	ld e, e                                          ; $708c: $5b
	cpl                                              ; $708d: $2f
	add b                                            ; $708e: $80
	ld a, e                                          ; $708f: $7b
	ld a, [hl]                                       ; $7090: $7e
	sbc e                                            ; $7091: $9b
	sbc $70                                          ; $7092: $de $70
	db $fc                                           ; $7094: $fc
	ldh a, [rAUD4GO]                                 ; $7095: $f0 $23
	add b                                            ; $7097: $80
	ld a, a                                          ; $7098: $7f
	cp $9d                                           ; $7099: $fe $9d
	inc bc                                           ; $709b: $03
	dec a                                            ; $709c: $3d
	rla                                              ; $709d: $17
	add b                                            ; $709e: $80
	sub [hl]                                         ; $709f: $96
	inc bc                                           ; $70a0: $03
	rst $38                                          ; $70a1: $ff
	pop af                                           ; $70a2: $f1
	rst AddAOntoHL                                          ; $70a3: $ef
	ld a, c                                          ; $70a4: $79
	rst FarCall                                          ; $70a5: $f7
	rst $38                                          ; $70a6: $ff
	cp l                                             ; $70a7: $bd
	ld l, e                                          ; $70a8: $6b
	inc hl                                           ; $70a9: $23
	add b                                            ; $70aa: $80
	ld a, e                                          ; $70ab: $7b
	ld a, [hl]                                       ; $70ac: $7e
	sbc b                                            ; $70ad: $98
	ccf                                              ; $70ae: $3f
	ld a, h                                          ; $70af: $7c
	ld a, a                                          ; $70b0: $7f
	ld d, a                                          ; $70b1: $57
	ld e, a                                          ; $70b2: $5f
	sub c                                            ; $70b3: $91
	sbc a                                            ; $70b4: $9f
	cpl                                              ; $70b5: $2f
	add b                                            ; $70b6: $80
	sbc d                                            ; $70b7: $9a
	nop                                              ; $70b8: $00
	cp $b0                                           ; $70b9: $fe $b0
	db $fc                                           ; $70bb: $fc
	ld [hl], b                                       ; $70bc: $70
	sbc $e0                                          ; $70bd: $de $e0
	daa                                              ; $70bf: $27
	add b                                            ; $70c0: $80
	sbc d                                            ; $70c1: $9a
	nop                                              ; $70c2: $00
	ccf                                              ; $70c3: $3f
	dec b                                            ; $70c4: $05
	rrca                                             ; $70c5: $0f
	ld [bc], a                                       ; $70c6: $02
	ld [hl], a                                       ; $70c7: $77
	add b                                            ; $70c8: $80
	sbc [hl]                                         ; $70c9: $9e
	ld h, a                                          ; $70ca: $67
	cpl                                              ; $70cb: $2f
	add b                                            ; $70cc: $80
	sub l                                            ; $70cd: $95
	ld bc, $e1ff                                     ; $70ce: $01 $ff $e1
	rst $38                                          ; $70d1: $ff
	rra                                              ; $70d2: $1f
	db $fd                                           ; $70d3: $fd
	ei                                               ; $70d4: $fb
	cp $c3                                           ; $70d5: $fe $c3
	cp $f9                                           ; $70d7: $fe $f9
	rst SubAFromDE                                          ; $70d9: $df
	inc bc                                           ; $70da: $03
	cp $82                                           ; $70db: $fe $82
	ld bc, $8000                                     ; $70dd: $01 $00 $80
	ret nz                                           ; $70e0: $c0

	ldh [$f0], a                                     ; $70e1: $e0 $f0
	jr c, jr_06c_70f1                                ; $70e3: $38 $0c

	cp $03                                           ; $70e5: $fe $03
	adc $01                                          ; $70e7: $ce $01
	pop bc                                           ; $70e9: $c1
	add b                                            ; $70ea: $80
	ld h, b                                          ; $70eb: $60
	add b                                            ; $70ec: $80
	ldh a, [$e0]                                     ; $70ed: $f0 $e0
	ldh a, [rLCDC]                                   ; $70ef: $f0 $40

jr_06c_70f1:
	ld [hl], b                                       ; $70f1: $70
	ld h, b                                          ; $70f2: $60
	ld [hl], b                                       ; $70f3: $70
	ld b, b                                          ; $70f4: $40
	jr nz, jr_06c_70f7                               ; $70f5: $20 $00

jr_06c_70f7:
	nop                                              ; $70f7: $00
	ld h, b                                          ; $70f8: $60
	ldh [$fe], a                                     ; $70f9: $e0 $fe
	sbc [hl]                                         ; $70fb: $9e
	ret nz                                           ; $70fc: $c0

	ld a, e                                          ; $70fd: $7b
	db $dd                                           ; $70fe: $dd

jr_06c_70ff:
	ld a, e                                          ; $70ff: $7b
	add hl, hl                                       ; $7100: $29
	sub e                                            ; $7101: $93
	rra                                              ; $7102: $1f
	cpl                                              ; $7103: $2f
	ld a, c                                          ; $7104: $79
	cp a                                             ; $7105: $bf
	pop hl                                           ; $7106: $e1
	rst $38                                          ; $7107: $ff
	ld bc, $071f                                     ; $7108: $01 $1f $07
	rrca                                             ; $710b: $0f
	rra                                              ; $710c: $1f
	rra                                              ; $710d: $1f
	ld sp, hl                                        ; $710e: $f9
	rst SubAFromDE                                          ; $710f: $df
	ld bc, $02df                                     ; $7110: $01 $df $02
	rst SubAFromDE                                          ; $7113: $df
	ld bc, $c07b                                     ; $7114: $01 $7b $c0
	sbc [hl]                                         ; $7117: $9e
	pop hl                                           ; $7118: $e1
	cpl                                              ; $7119: $2f
	ret nz                                           ; $711a: $c0

	rst SubAFromDE                                          ; $711b: $df
	ret nz                                           ; $711c: $c0

	rst SubAFromDE                                          ; $711d: $df
	jr nz, jr_06c_70ff                               ; $711e: $20 $df

	ret nz                                           ; $7120: $c0

	ld a, e                                          ; $7121: $7b
	ret c                                            ; $7122: $d8

	sbc [hl]                                         ; $7123: $9e
	add e                                            ; $7124: $83
	rra                                              ; $7125: $1f
	ret nz                                           ; $7126: $c0

	ld a, e                                          ; $7127: $7b
	cp [hl]                                          ; $7128: $be
	sbc [hl]                                         ; $7129: $9e
	add c                                            ; $712a: $81
	ld a, e                                          ; $712b: $7b
	add b                                            ; $712c: $80
	sbc [hl]                                         ; $712d: $9e
	add hl, sp                                       ; $712e: $39
	daa                                              ; $712f: $27
	ret nz                                           ; $7130: $c0

	sbc e                                            ; $7131: $9b
	jr nz, jr_06c_7194                               ; $7132: $20 $60

	ret nz                                           ; $7134: $c0

	ret nz                                           ; $7135: $c0

	ld a, e                                          ; $7136: $7b
	add b                                            ; $7137: $80
	sbc [hl]                                         ; $7138: $9e
	add e                                            ; $7139: $83
	rra                                              ; $713a: $1f
	ret nz                                           ; $713b: $c0

	sbc h                                            ; $713c: $9c
	ld [bc], a                                       ; $713d: $02
	add d                                            ; $713e: $82
	pop bc                                           ; $713f: $c1
	ld [hl], a                                       ; $7140: $77
	add b                                            ; $7141: $80
	ld a, [hl]                                       ; $7142: $7e
	add b                                            ; $7143: $80
	cpl                                              ; $7144: $2f
	ret nz                                           ; $7145: $c0

	ld a, e                                          ; $7146: $7b
	cp [hl]                                          ; $7147: $be
	sbc l                                            ; $7148: $9d
	pop bc                                           ; $7149: $c1
	jp $807b                                         ; $714a: $c3 $7b $80


	sbc [hl]                                         ; $714d: $9e
	xor a                                            ; $714e: $af
	ld e, a                                          ; $714f: $5f
	ret nz                                           ; $7150: $c0

	rla                                              ; $7151: $17
	ld [bc], a                                       ; $7152: $02
	sbc e                                            ; $7153: $9b
	rrca                                             ; $7154: $0f
	inc c                                            ; $7155: $0c
	rrca                                             ; $7156: $0f
	ld [$fe7b], sp                                   ; $7157: $08 $7b $fe
	add c                                            ; $715a: $81
	add hl, bc                                       ; $715b: $09
	rrca                                             ; $715c: $0f
	add hl, bc                                       ; $715d: $09
	rra                                              ; $715e: $1f
	ld [de], a                                       ; $715f: $12
	rra                                              ; $7160: $1f
	rla                                              ; $7161: $17
	inc e                                            ; $7162: $1c
	rra                                              ; $7163: $1f
	jr jr_06c_719d                                   ; $7164: $18 $37

	daa                                              ; $7166: $27
	dec sp                                           ; $7167: $3b
	cpl                                              ; $7168: $2f
	scf                                              ; $7169: $37
	ld a, $3a                                        ; $716a: $3e $3a
	dec hl                                           ; $716c: $2b
	dec sp                                           ; $716d: $3b
	ld h, e                                          ; $716e: $63
	ld a, e                                          ; $716f: $7b
	ld d, c                                          ; $7170: $51
	ld e, c                                          ; $7171: $59
	sub c                                            ; $7172: $91
	sbc h                                            ; $7173: $9c
	sub b                                            ; $7174: $90
	sbc b                                            ; $7175: $98
	db $10                                           ; $7176: $10
	jr jr_06c_7189                                   ; $7177: $18 $10

	sbc $18                                          ; $7179: $de $18
	adc l                                            ; $717b: $8d
	inc a                                            ; $717c: $3c
	jr z, jr_06c_71bb                                ; $717d: $28 $3c

	inc l                                            ; $717f: $2c
	ld a, $2e                                        ; $7180: $3e $2e
	ld a, a                                          ; $7182: $7f
	ld l, e                                          ; $7183: $6b
	ld a, a                                          ; $7184: $7f
	ld l, e                                          ; $7185: $6b
	cp a                                             ; $7186: $bf
	xor c                                            ; $7187: $a9
	cp a                                             ; $7188: $bf

jr_06c_7189:
	and c                                            ; $7189: $a1
	dec a                                            ; $718a: $3d
	dec hl                                           ; $718b: $2b
	ld l, l                                          ; $718c: $6d
	ld e, e                                          ; $718d: $5b
	ld a, e                                          ; $718e: $7b
	cp $80                                           ; $718f: $fe $80
	ld a, e                                          ; $7191: $7b
	db $ed                                           ; $7192: $ed
	ei                                               ; $7193: $fb

jr_06c_7194:
	or $6d                                           ; $7194: $f6 $6d
	cp [hl]                                          ; $7196: $be
	push hl                                          ; $7197: $e5
	cp a                                             ; $7198: $bf
	db $e4                                           ; $7199: $e4
	dec sp                                           ; $719a: $3b
	xor $1b                                          ; $719b: $ee $1b

jr_06c_719d:
	or $99                                           ; $719d: $f6 $99
	ld [hl], a                                       ; $719f: $77
	reti                                             ; $71a0: $d9


	scf                                              ; $71a1: $37
	jp hl                                            ; $71a2: $e9


	rst SubAFromDE                                          ; $71a3: $df
	inc a                                            ; $71a4: $3c
	rst SubAFromBC                                          ; $71a5: $e7
	sbc h                                            ; $71a6: $9c
	ei                                               ; $71a7: $fb
	ldh [rIE], a                                     ; $71a8: $e0 $ff
	ld [hl], b                                       ; $71aa: $70
	ld a, [hl]                                       ; $71ab: $7e
	ldh [$ec], a                                     ; $71ac: $e0 $ec
	ldh [$a0], a                                     ; $71ae: $e0 $a0
	add b                                            ; $71b0: $80
	ld b, b                                          ; $71b1: $40
	add b                                            ; $71b2: $80
	ret nz                                           ; $71b3: $c0

	ldh a, [$fb]                                     ; $71b4: $f0 $fb
	sub [hl]                                         ; $71b6: $96
	rst $38                                          ; $71b7: $ff
	sbc c                                            ; $71b8: $99
	rst $38                                          ; $71b9: $ff
	sbc c                                            ; $71ba: $99

jr_06c_71bb:
	rst FarCall                                          ; $71bb: $f7
	sbc h                                            ; $71bc: $9c
	di                                               ; $71bd: $f3
	ld e, [hl]                                       ; $71be: $5e
	pop af                                           ; $71bf: $f1
	ld l, a                                          ; $71c0: $6f
	pop de                                           ; $71c1: $d1
	ld a, [hl]                                       ; $71c2: $7e
	rst JumpTable                                          ; $71c3: $c7
	ld a, c                                          ; $71c4: $79
	adc $f7                                          ; $71c5: $ce $f7
	sbc c                                            ; $71c7: $99
	rst $38                                          ; $71c8: $ff
	add e                                            ; $71c9: $83
	rst $38                                          ; $71ca: $ff
	ld b, $3e                                        ; $71cb: $06 $3e
	inc bc                                           ; $71cd: $03
	dec bc                                           ; $71ce: $0b
	inc bc                                           ; $71cf: $03
	sbc [hl]                                         ; $71d0: $9e
	inc bc                                           ; $71d1: $03
	sbc $01                                          ; $71d2: $de $01
	add b                                            ; $71d4: $80
	ld h, e                                          ; $71d5: $63
	rst FarCall                                          ; $71d6: $f7
	ld a, [hl+]                                      ; $71d7: $2a
	rst FarCall                                          ; $71d8: $f7
	ld a, [de]                                       ; $71d9: $1a
	ei                                               ; $71da: $fb
	dec d                                            ; $71db: $15
	ei                                               ; $71dc: $fb
	adc l                                            ; $71dd: $8d
	rst $38                                          ; $71de: $ff
	ld c, b                                          ; $71df: $48
	rst $38                                          ; $71e0: $ff
	ld b, h                                          ; $71e1: $44
	rst $38                                          ; $71e2: $ff
	and d                                            ; $71e3: $a2
	rst $38                                          ; $71e4: $ff
	pop de                                           ; $71e5: $d1
	rrca                                             ; $71e6: $0f
	ld sp, hl                                        ; $71e7: $f9
	rst SubAFromBC                                          ; $71e8: $e7
	call c, $eff3                                    ; $71e9: $dc $f3 $ef
	ld a, l                                          ; $71ec: $7d
	ld a, a                                          ; $71ed: $7f
	jp hl                                            ; $71ee: $e9


	rst AddAOntoHL                                          ; $71ef: $ef
	db $e3                                           ; $71f0: $e3
	xor l                                            ; $71f1: $ad
	ld b, e                                          ; $71f2: $43
	sbc [hl]                                         ; $71f3: $9e
	add e                                            ; $71f4: $83
	jp $07fe                                         ; $71f5: $c3 $fe $07


	ld a, [de]                                       ; $71f8: $1a
	rlca                                             ; $71f9: $07
	inc c                                            ; $71fa: $0c
	ld c, $05                                        ; $71fb: $0e $05
	ld c, $1d                                        ; $71fd: $0e $1d
	inc e                                            ; $71ff: $1c

jr_06c_7200:
	rrca                                             ; $7200: $0f
	inc a                                            ; $7201: $3c

jr_06c_7202:
	ld d, $7c                                        ; $7202: $16 $7c
	dec h                                            ; $7204: $25
	db $fc                                           ; $7205: $fc
	ld l, c                                          ; $7206: $69

jr_06c_7207:
	ld sp, hl                                        ; $7207: $f9
	call z, $96f9                                    ; $7208: $cc $f9 $96
	ei                                               ; $720b: $fb
	sub l                                            ; $720c: $95
	rst FarCall                                          ; $720d: $f7
	add hl, de                                       ; $720e: $19
	rst $38                                          ; $720f: $ff
	inc hl                                           ; $7210: $23
	ld a, e                                          ; $7211: $7b
	cp $98                                           ; $7212: $fe $98
	ld b, l                                          ; $7214: $45
	rst $38                                          ; $7215: $ff
	ret                                              ; $7216: $c9


	rst $38                                          ; $7217: $ff
	ld h, d                                          ; $7218: $62
	rst $38                                          ; $7219: $ff

jr_06c_721a:
	ld [hl+], a                                      ; $721a: $22
	ld a, e                                          ; $721b: $7b
	cp $9e                                           ; $721c: $fe $9e
	ld [de], a                                       ; $721e: $12
	ld a, e                                          ; $721f: $7b
	cp $9e                                           ; $7220: $fe $9e
	adc c                                            ; $7222: $89
	ld a, e                                          ; $7223: $7b
	ldh a, [$7f]                                     ; $7224: $f0 $7f
	db $ec                                           ; $7226: $ec
	sub [hl]                                         ; $7227: $96
	ld e, $ff                                        ; $7228: $1e $ff
	pop af                                           ; $722a: $f1
	rst $38                                          ; $722b: $ff
	dec h                                            ; $722c: $25
	rst $38                                          ; $722d: $ff
	inc h                                            ; $722e: $24
	rst $38                                          ; $722f: $ff
	sub d                                            ; $7230: $92
	ld a, e                                          ; $7231: $7b
	cp $9c                                           ; $7232: $fe $9c
	ld c, d                                          ; $7234: $4a
	rst $38                                          ; $7235: $ff
	ld c, c                                          ; $7236: $49
	ld a, e                                          ; $7237: $7b
	cp $7f                                           ; $7238: $fe $7f
	xor b                                            ; $723a: $a8
	ld a, a                                          ; $723b: $7f
	ldh a, [c]                                       ; $723c: $f2
	ld l, a                                          ; $723d: $6f
	cp $7f                                           ; $723e: $fe $7f
	ret c                                            ; $7240: $d8

	sub a                                            ; $7241: $97
	ld h, d                                          ; $7242: $62
	rst SubAFromDE                                          ; $7243: $df
	halt                                             ; $7244: $76
	sbc a                                            ; $7245: $9f
	or $9b                                           ; $7246: $f6 $9b
	rst $38                                          ; $7248: $ff
	dec de                                           ; $7249: $1b
	ld a, e                                          ; $724a: $7b
	cp $77                                           ; $724b: $fe $77
	call $009d                                       ; $724d: $cd $9d $00
	rst $38                                          ; $7250: $ff
	ccf                                              ; $7251: $3f
	nop                                              ; $7252: $00
	sub h                                            ; $7253: $94
	jr nc, jr_06c_7285                               ; $7254: $30 $2f

	inc hl                                           ; $7256: $23
	dec a                                            ; $7257: $3d
	daa                                              ; $7258: $27
	ccf                                              ; $7259: $3f
	ld a, $3a                                        ; $725a: $3e $3a
	ld l, e                                          ; $725c: $6b
	ld a, e                                          ; $725d: $7b
	ld d, e                                          ; $725e: $53
	ld a, e                                          ; $725f: $7b
	nop                                              ; $7260: $00
	ccf                                              ; $7261: $3f
	jr nz, jr_06c_7202                               ; $7262: $20 $9e

	inc e                                            ; $7264: $1c
	ld [hl], a                                       ; $7265: $77
	jr nz, jr_06c_7200                               ; $7266: $20 $98

	cp $78                                           ; $7268: $fe $78
	ld a, h                                          ; $726a: $7c
	ldh [$e0], a                                     ; $726b: $e0 $e0
	ld h, b                                          ; $726d: $60
	and b                                            ; $726e: $a0
	scf                                              ; $726f: $37
	jr nz, jr_06c_7207                               ; $7270: $20 $95

	sbc b                                            ; $7272: $98
	rst $38                                          ; $7273: $ff
	add c                                            ; $7274: $81
	rst $38                                          ; $7275: $ff
	ld [bc], a                                       ; $7276: $02
	rst $38                                          ; $7277: $ff
	ld b, $1e                                        ; $7278: $06 $1e
	inc bc                                           ; $727a: $03
	rlca                                             ; $727b: $07
	ld a, e                                          ; $727c: $7b
	ld e, $3b                                        ; $727d: $1e $3b
	jr nz, jr_06c_721a                               ; $727f: $20 $99

	rlca                                             ; $7281: $07
	db $fc                                           ; $7282: $fc
	di                                               ; $7283: $f3
	rst AddAOntoHL                                          ; $7284: $ef

jr_06c_7285:
	ld a, e                                          ; $7285: $7b
	push af                                          ; $7286: $f5
	ld [hl], a                                       ; $7287: $77
	ld e, $9b                                        ; $7288: $1e $9b
	ld h, e                                          ; $728a: $63
	xor [hl]                                         ; $728b: $ae
	jp $37fe                                         ; $728c: $c3 $fe $37


	add b                                            ; $728f: $80
	ld [hl], a                                       ; $7290: $77
	ld a, [hl]                                       ; $7291: $7e
	sbc c                                            ; $7292: $99
	ld h, $3e                                        ; $7293: $26 $3e
	ld a, a                                          ; $7295: $7f
	ld a, e                                          ; $7296: $7b
	ld e, e                                          ; $7297: $5b
	ld e, e                                          ; $7298: $5b
	cpl                                              ; $7299: $2f
	add b                                            ; $729a: $80
	ld a, a                                          ; $729b: $7f
	ld c, d                                          ; $729c: $4a
	sbc c                                            ; $729d: $99
	ldh [$de], a                                     ; $729e: $e0 $de
	ld [hl], b                                       ; $72a0: $70
	db $fc                                           ; $72a1: $fc
	ldh a, [$e8]                                     ; $72a2: $f0 $e8
	daa                                              ; $72a4: $27
	add b                                            ; $72a5: $80
	sbc e                                            ; $72a6: $9b
	add b                                            ; $72a7: $80
	rst $38                                          ; $72a8: $ff
	inc bc                                           ; $72a9: $03
	db $fd                                           ; $72aa: $fd
	ld l, e                                          ; $72ab: $6b
	add b                                            ; $72ac: $80
	sbc [hl]                                         ; $72ad: $9e
	ld h, a                                          ; $72ae: $67
	scf                                              ; $72af: $37
	add b                                            ; $72b0: $80
	sub [hl]                                         ; $72b1: $96
	inc bc                                           ; $72b2: $03
	rst $38                                          ; $72b3: $ff
	di                                               ; $72b4: $f3
	db $ed                                           ; $72b5: $ed
	ld a, c                                          ; $72b6: $79
	rst FarCall                                          ; $72b7: $f7
	db $fd                                           ; $72b8: $fd
	cp a                                             ; $72b9: $bf
	ld l, e                                          ; $72ba: $6b
	dec hl                                           ; $72bb: $2b
	add b                                            ; $72bc: $80
	sub e                                            ; $72bd: $93
	jr nz, @+$41                                     ; $72be: $20 $3f

	jr nz, @+$41                                     ; $72c0: $20 $3f

	inc hl                                           ; $72c2: $23
	ccf                                              ; $72c3: $3f
	ld a, h                                          ; $72c4: $7c
	ld a, a                                          ; $72c5: $7f
	ld d, a                                          ; $72c6: $57
	ld e, a                                          ; $72c7: $5f
	sub c                                            ; $72c8: $91
	sbc a                                            ; $72c9: $9f
	cpl                                              ; $72ca: $2f
	add b                                            ; $72cb: $80
	sbc d                                            ; $72cc: $9a
	nop                                              ; $72cd: $00
	cp $b0                                           ; $72ce: $fe $b0
	db $fc                                           ; $72d0: $fc
	ld [hl], b                                       ; $72d1: $70
	sbc $e0                                          ; $72d2: $de $e0
	daa                                              ; $72d4: $27
	add b                                            ; $72d5: $80
	sbc d                                            ; $72d6: $9a
	nop                                              ; $72d7: $00
	ccf                                              ; $72d8: $3f
	dec b                                            ; $72d9: $05
	rrca                                             ; $72da: $0f
	ld [bc], a                                       ; $72db: $02
	dec de                                           ; $72dc: $1b
	add b                                            ; $72dd: $80
	sub l                                            ; $72de: $95
	ld bc, $e1ff                                     ; $72df: $01 $ff $e1
	rst $38                                          ; $72e2: $ff
	rra                                              ; $72e3: $1f
	db $fd                                           ; $72e4: $fd
	ei                                               ; $72e5: $fb
	cp $c3                                           ; $72e6: $fe $c3
	cp $f9                                           ; $72e8: $fe $f9
	rst SubAFromDE                                          ; $72ea: $df
	inc bc                                           ; $72eb: $03
	cp $82                                           ; $72ec: $fe $82
	ld bc, $8000                                     ; $72ee: $01 $00 $80
	ret nz                                           ; $72f1: $c0

	ldh [$f0], a                                     ; $72f2: $e0 $f0
	jr c, jr_06c_7302                                ; $72f4: $38 $0c

	cp $03                                           ; $72f6: $fe $03
	adc $01                                          ; $72f8: $ce $01
	pop bc                                           ; $72fa: $c1
	add b                                            ; $72fb: $80
	ld h, b                                          ; $72fc: $60
	add b                                            ; $72fd: $80
	ldh a, [$e0]                                     ; $72fe: $f0 $e0
	ldh a, [rLCDC]                                   ; $7300: $f0 $40

jr_06c_7302:
	ld [hl], b                                       ; $7302: $70
	ld h, b                                          ; $7303: $60
	ld [hl], b                                       ; $7304: $70
	ld b, b                                          ; $7305: $40
	jr nz, jr_06c_7308                               ; $7306: $20 $00

jr_06c_7308:
	nop                                              ; $7308: $00
	ld h, b                                          ; $7309: $60
	ldh [$fe], a                                     ; $730a: $e0 $fe
	sbc [hl]                                         ; $730c: $9e
	ret nz                                           ; $730d: $c0

	ld a, e                                          ; $730e: $7b
	db $dd                                           ; $730f: $dd
	ld a, e                                          ; $7310: $7b
	add hl, hl                                       ; $7311: $29

jr_06c_7312:
	sub e                                            ; $7312: $93
	rra                                              ; $7313: $1f
	cpl                                              ; $7314: $2f
	ld a, c                                          ; $7315: $79
	cp a                                             ; $7316: $bf
	pop hl                                           ; $7317: $e1
	rst $38                                          ; $7318: $ff
	ld bc, $071f                                     ; $7319: $01 $1f $07
	rrca                                             ; $731c: $0f
	rra                                              ; $731d: $1f
	rra                                              ; $731e: $1f
	ld sp, hl                                        ; $731f: $f9
	ld a, a                                          ; $7320: $7f
	add sp, -$21                                     ; $7321: $e8 $df
	ld [bc], a                                       ; $7323: $02
	rst SubAFromDE                                          ; $7324: $df
	ld bc, $c07b                                     ; $7325: $01 $7b $c0
	sbc [hl]                                         ; $7328: $9e
	pop hl                                           ; $7329: $e1
	cpl                                              ; $732a: $2f
	ret nz                                           ; $732b: $c0

	ld a, a                                          ; $732c: $7f
	or $9b                                           ; $732d: $f6 $9b
	db $10                                           ; $732f: $10
	jr nc, jr_06c_7312                               ; $7330: $30 $e0

	ldh a, [$7b]                                     ; $7332: $f0 $7b
	ret c                                            ; $7334: $d8

	sbc [hl]                                         ; $7335: $9e
	jp $c01f                                         ; $7336: $c3 $1f $c0


	sbc e                                            ; $7339: $9b
	ld [bc], a                                       ; $733a: $02
	inc bc                                           ; $733b: $03
	ld bc, $7b81                                     ; $733c: $01 $81 $7b
	add b                                            ; $733f: $80
	sbc [hl]                                         ; $7340: $9e
	add hl, sp                                       ; $7341: $39
	daa                                              ; $7342: $27
	ret nz                                           ; $7343: $c0

	sbc [hl]                                         ; $7344: $9e
	db $10                                           ; $7345: $10
	ld a, e                                          ; $7346: $7b
	ldh a, [$7b]                                     ; $7347: $f0 $7b
	add b                                            ; $7349: $80
	sbc [hl]                                         ; $734a: $9e
	jp $c033                                         ; $734b: $c3 $33 $c0


	sbc [hl]                                         ; $734e: $9e
	ld bc, $02dc                                     ; $734f: $01 $dc $02
	sbc l                                            ; $7352: $9d
	add d                                            ; $7353: $82
	pop bc                                           ; $7354: $c1
	ld [hl], a                                       ; $7355: $77
	add b                                            ; $7356: $80
	ld a, [hl]                                       ; $7357: $7e
	add b                                            ; $7358: $80
	ld b, e                                          ; $7359: $43
	ret nz                                           ; $735a: $c0

	rst SubAFromDE                                          ; $735b: $df
	ret nz                                           ; $735c: $c0

	call c, $9d20                                    ; $735d: $dc $20 $9d
	ld h, b                                          ; $7360: $60
	pop bc                                           ; $7361: $c1
	ld [hl], a                                       ; $7362: $77
	add b                                            ; $7363: $80
	sbc [hl]                                         ; $7364: $9e
	xor a                                            ; $7365: $af
	ld e, a                                          ; $7366: $5f
	ret nz                                           ; $7367: $c0

	cp $82                                           ; $7368: $fe $82
	pop af                                           ; $736a: $f1
	sbc d                                            ; $736b: $9a
	ld bc, $0702                                     ; $736c: $01 $02 $07
	jr jr_06c_7381                                   ; $736f: $18 $10

	ld a, e                                          ; $7371: $7b
	ld sp, hl                                        ; $7372: $f9

Jump_06c_7373:
	sbc d                                            ; $7373: $9a
	ld bc, $0703                                     ; $7374: $01 $03 $07
	inc e                                            ; $7377: $1c
	ld h, b                                          ; $7378: $60
	ld [hl], a                                       ; $7379: $77
	ld hl, sp-$21                                    ; $737a: $f8 $df
	ld [bc], a                                       ; $737c: $02
	add b                                            ; $737d: $80
	inc b                                            ; $737e: $04
	dec b                                            ; $737f: $05
	add hl, bc                                       ; $7380: $09

jr_06c_7381:
	ld a, [bc]                                       ; $7381: $0a
	inc d                                            ; $7382: $14
	ld bc, $0303                                     ; $7383: $01 $03 $03
	rlca                                             ; $7386: $07
	rlca                                             ; $7387: $07
	rrca                                             ; $7388: $0f
	dec c                                            ; $7389: $0d
	dec de                                           ; $738a: $1b
	inc d                                            ; $738b: $14
	dec hl                                           ; $738c: $2b
	dec [hl]                                         ; $738d: $35
	ld [hl], $6a                                     ; $738e: $36 $6a
	ld l, h                                          ; $7390: $6c
	call z, $1bd9                                    ; $7391: $cc $d9 $1b
	ld [hl], $2e                                     ; $7394: $36 $2e
	dec l                                            ; $7396: $2d
	ld e, l                                          ; $7397: $5d
	ld e, e                                          ; $7398: $5b
	cp e                                             ; $7399: $bb
	cp a                                             ; $739a: $bf
	xor c                                            ; $739b: $a9
	xor c                                            ; $739c: $a9
	db $dd                                           ; $739d: $dd
	and l                                            ; $739e: $a5
	sbc e                                            ; $739f: $9b
	ld b, d                                          ; $73a0: $42
	ld d, d                                          ; $73a1: $52
	rst AddAOntoHL                                          ; $73a2: $ef

jr_06c_73a3:
	rst AddAOntoHL                                          ; $73a3: $ef
	db $dd                                           ; $73a4: $dd
	rst SubAFromBC                                          ; $73a5: $e7

jr_06c_73a6:
	sbc c                                            ; $73a6: $99
	ld h, e                                          ; $73a7: $63
	ld [hl], e                                       ; $73a8: $73
	ld sp, $0810                                     ; $73a9: $31 $10 $08
	inc b                                            ; $73ac: $04
	ld a, e                                          ; $73ad: $7b
	call nz, $0f9e                                   ; $73ae: $c4 $9e $0f
	ld [hl], e                                       ; $73b1: $73
	ld hl, sp+$7f                                    ; $73b2: $f8 $7f
	push bc                                          ; $73b4: $c5
	sbc c                                            ; $73b5: $99
	ld a, [bc]                                       ; $73b6: $0a
	add hl, bc                                       ; $73b7: $09
	ld [$1612], sp                                   ; $73b8: $08 $12 $16
	daa                                              ; $73bb: $27
	sbc $2f                                          ; $73bc: $de $2f
	rst SubAFromDE                                          ; $73be: $df
	rrca                                             ; $73bf: $0f
	sbc h                                            ; $73c0: $9c
	dec e                                            ; $73c1: $1d
	add hl, de                                       ; $73c2: $19
	jr c, jr_06c_73a3                                ; $73c3: $38 $de

	jr nc, jr_06c_73a6                               ; $73c5: $30 $df

	ld e, a                                          ; $73c7: $5f
	rst SubAFromDE                                          ; $73c8: $df
	ld e, [hl]                                       ; $73c9: $5e
	sub e                                            ; $73ca: $93
	ld e, h                                          ; $73cb: $5c
	ld a, h                                          ; $73cc: $7c
	ld a, c                                          ; $73cd: $79
	ld [hl], c                                       ; $73ce: $71
	ld h, b                                          ; $73cf: $60
	ld h, b                                          ; $73d0: $60
	ld h, c                                          ; $73d1: $61
	ld h, c                                          ; $73d2: $61
	ld h, e                                          ; $73d3: $63
	ld b, e                                          ; $73d4: $43
	ld b, a                                          ; $73d5: $47
	ld c, a                                          ; $73d6: $4f
	db $eb                                           ; $73d7: $eb
	sbc l                                            ; $73d8: $9d
	inc bc                                           ; $73d9: $03
	dec b                                            ; $73da: $05
	ld l, e                                          ; $73db: $6b
	ld hl, sp-$80                                    ; $73dc: $f8 $80
	ld b, $7b                                        ; $73de: $06 $7b
	ld c, $0d                                        ; $73e0: $0e $0d
	ld de, $4422                                     ; $73e2: $11 $22 $44
	ld e, l                                          ; $73e5: $5d
	cp e                                             ; $73e6: $bb
	ld a, h                                          ; $73e7: $7c
	dec e                                            ; $73e8: $1d
	ld a, [bc]                                       ; $73e9: $0a
	ld e, $3d                                        ; $73ea: $1e $3d
	ld a, e                                          ; $73ec: $7b
	ld [hl], d                                       ; $73ed: $72
	db $e4                                           ; $73ee: $e4
	ld [hl], e                                       ; $73ef: $73
	sub $66                                          ; $73f0: $d6 $66
	ld l, h                                          ; $73f2: $6c
	ld l, l                                          ; $73f3: $6d
	sbc b                                            ; $73f4: $98
	sub h                                            ; $73f5: $94
	xor c                                            ; $73f6: $a9
	db $ec                                           ; $73f7: $ec
	jp hl                                            ; $73f8: $e9


	ld e, c                                          ; $73f9: $59
	ld d, e                                          ; $73fa: $53
	ld d, d                                          ; $73fb: $52
	rst SubAFromBC                                          ; $73fc: $e7
	sub l                                            ; $73fd: $95
	rst AddAOntoHL                                          ; $73fe: $ef
	rst SubAFromDE                                          ; $73ff: $df
	sub c                                            ; $7400: $91
	and d                                            ; $7401: $a2
	call nz, $3888                                   ; $7402: $c4 $88 $38
	pop de                                           ; $7405: $d1
	or [hl]                                          ; $7406: $b6
	cp b                                             ; $7407: $b8
	db $db                                           ; $7408: $db
	rst $38                                          ; $7409: $ff
	rst SubAFromDE                                          ; $740a: $df
	ld a, a                                          ; $740b: $7f
	add b                                            ; $740c: $80
	and c                                            ; $740d: $a1
	ld a, [hl]                                       ; $740e: $7e
	ld d, b                                          ; $740f: $50
	ld h, d                                          ; $7410: $62
	pop hl                                           ; $7411: $e1
	and c                                            ; $7412: $a1
	and c                                            ; $7413: $a1
	rst SubAFromHL                                          ; $7414: $d7
	ld a, a                                          ; $7415: $7f
	rst $38                                          ; $7416: $ff
	rst AddAOntoHL                                          ; $7417: $ef
	call $cccc                                       ; $7418: $cd $cc $cc
	call Call_06c_45ed                               ; $741b: $cd $ed $45
	ld b, l                                          ; $741e: $45
	dec h                                            ; $741f: $25
	inc hl                                           ; $7420: $23
	inc de                                           ; $7421: $13
	ld de, $8589                                     ; $7422: $11 $89 $85
	ld a, a                                          ; $7425: $7f
	ld a, a                                          ; $7426: $7f
	ccf                                              ; $7427: $3f
	ccf                                              ; $7428: $3f
	rra                                              ; $7429: $1f
	rra                                              ; $742a: $1f
	adc a                                            ; $742b: $8f
	sbc e                                            ; $742c: $9b
	add a                                            ; $742d: $87
	rst GetHLinHL                                          ; $742e: $cf
	rst SubAFromDE                                          ; $742f: $df
	ld a, a                                          ; $7430: $7f
	call c, $80ff                                    ; $7431: $dc $ff $80
	rst GetHLinHL                                          ; $7434: $cf
	reti                                             ; $7435: $d9


	ld h, c                                          ; $7436: $61
	ret nz                                           ; $7437: $c0

	ld b, b                                          ; $7438: $40
	jr nc, @+$0e                                     ; $7439: $30 $0c

	ld b, $93                                        ; $743b: $06 $93
	set 4, a                                         ; $743d: $cb $e7
	ld h, a                                          ; $743f: $67
	daa                                              ; $7440: $27
	rlca                                             ; $7441: $07
	add a                                            ; $7442: $87
	adc a                                            ; $7443: $8f
	ld l, l                                          ; $7444: $6d
	or l                                             ; $7445: $b5
	jp c, $fcda                                      ; $7446: $da $da $fc

	cp $79                                           ; $7449: $fe $79
	ld [hl], b                                       ; $744b: $70
	cp e                                             ; $744c: $bb
	or a                                             ; $744d: $b7

jr_06c_744e:
	ld l, a                                          ; $744e: $6f
	ld a, l                                          ; $744f: $7d
	ld sp, hl                                        ; $7450: $f9
	di                                               ; $7451: $f3
	db $e3                                           ; $7452: $e3
	sub [hl]                                         ; $7453: $96
	rst JumpTable                                          ; $7454: $c7
	ld h, b                                          ; $7455: $60
	ld h, b                                          ; $7456: $60
	ret nz                                           ; $7457: $c0

	jp nz, $8c86                                     ; $7458: $c2 $86 $8c

	inc e                                            ; $745b: $1c
	jr c, jr_06c_744e                                ; $745c: $38 $f0

	add b                                            ; $745e: $80
	rlca                                             ; $745f: $07
	dec de                                           ; $7460: $1b
	cpl                                              ; $7461: $2f
	ld e, h                                          ; $7462: $5c
	or e                                             ; $7463: $b3
	ld l, a                                          ; $7464: $6f
	call c, $0700                                    ; $7465: $dc $00 $07
	inc e                                            ; $7468: $1c
	jr nc, jr_06c_74ce                               ; $7469: $30 $63

	call z, $2390                                    ; $746b: $cc $90 $23
	ld sp, $a4ca                                     ; $746e: $31 $ca $a4
	ld b, c                                          ; $7471: $41
	inc hl                                           ; $7472: $23
	push de                                          ; $7473: $d5
	adc d                                            ; $7474: $8a
	sub l                                            ; $7475: $95
	adc $34                                          ; $7476: $ce $34
	ld c, b                                          ; $7478: $48
	sbc b                                            ; $7479: $98
	sub b                                            ; $747a: $90
	ld [hl+], a                                      ; $747b: $22
	ld h, h                                          ; $747c: $64
	ld c, b                                          ; $747d: $48
	adc a                                            ; $747e: $8f
	ld h, d                                          ; $747f: $62
	ld [$98c5], sp                                   ; $7480: $08 $c5 $98
	ld e, h                                          ; $7483: $5c
	or a                                             ; $7484: $b7
	db $eb                                           ; $7485: $eb
	ld l, [hl]                                       ; $7486: $6e
	sbc c                                            ; $7487: $99
	or e                                             ; $7488: $b3
	ld [hl-], a                                      ; $7489: $32
	ld h, [hl]                                       ; $748a: $66
	and $cc                                          ; $748b: $e6 $cc
	sbc h                                            ; $748d: $9c
	sbc c                                            ; $748e: $99
	ldh [$c1], a                                     ; $748f: $e0 $c1
	sbc d                                            ; $7491: $9a
	jp hl                                            ; $7492: $e9


	push hl                                          ; $7493: $e5
	db $f4                                           ; $7494: $f4
	db $fc                                           ; $7495: $fc
	cp $77                                           ; $7496: $fe $77
	ld h, $7f                                        ; $7498: $26 $7f
	ld b, d                                          ; $749a: $42
	sbc d                                            ; $749b: $9a
	rrca                                             ; $749c: $0f
	inc bc                                           ; $749d: $03
	ld bc, $4181                                     ; $749e: $01 $81 $41
	reti                                             ; $74a1: $d9


	rst $38                                          ; $74a2: $ff
	sbc b                                            ; $74a3: $98
	ld sp, $030d                                     ; $74a4: $31 $0d $03
	add hl, bc                                       ; $74a7: $09

jr_06c_74a8:
	add hl, bc                                       ; $74a8: $09
	ld [$7a10], sp                                   ; $74a9: $08 $10 $7a
	ld d, l                                          ; $74ac: $55
	cp $9d                                           ; $74ad: $fe $9d
	ld [bc], a                                       ; $74af: $02
	ld bc, $7bfb                                     ; $74b0: $01 $fb $7b
	ld hl, sp-$80                                    ; $74b3: $f8 $80
	db $fc                                           ; $74b5: $fc
	ld a, e                                          ; $74b6: $7b
	call nz, $fa1c                                   ; $74b7: $c4 $1c $fa
	pop hl                                           ; $74ba: $e1
	inc c                                            ; $74bb: $0c
	ld h, d                                          ; $74bc: $62
	db $fc                                           ; $74bd: $fc
	add a                                            ; $74be: $87
	dec sp                                           ; $74bf: $3b
	rst $38                                          ; $74c0: $ff
	rlca                                             ; $74c1: $07
	rra                                              ; $74c2: $1f
	rst $38                                          ; $74c3: $ff
	sbc a                                            ; $74c4: $9f
	add hl, de                                       ; $74c5: $19
	jr nc, jr_06c_74a8                               ; $74c6: $30 $e0

	adc h                                            ; $74c8: $8c
	ld c, [hl]                                       ; $74c9: $4e
	adc [hl]                                         ; $74ca: $8e
	ld e, [hl]                                       ; $74cb: $5e
	inc e                                            ; $74cc: $1c
	rlca                                             ; $74cd: $07

jr_06c_74ce:
	rrca                                             ; $74ce: $0f
	rra                                              ; $74cf: $1f
	inc sp                                           ; $74d0: $33
	ld hl, $8141                                     ; $74d1: $21 $41 $81
	adc [hl]                                         ; $74d4: $8e
	add e                                            ; $74d5: $83
	xor h                                            ; $74d6: $ac
	dec h                                            ; $74d7: $25
	ld d, h                                          ; $74d8: $54
	ld e, h                                          ; $74d9: $5c
	sbc c                                            ; $74da: $99
	dec sp                                           ; $74db: $3b
	dec sp                                           ; $74dc: $3b
	ld d, e                                          ; $74dd: $53
	inc de                                           ; $74de: $13
	ld [de], a                                       ; $74df: $12
	ld [hl-], a                                      ; $74e0: $32
	ld [hl-], a                                      ; $74e1: $32
	halt                                             ; $74e2: $76
	or $f6                                           ; $74e3: $f6 $f6
	cp $e0                                           ; $74e5: $fe $e0
	pop bc                                           ; $74e7: $c1
	rst SubAFromDE                                          ; $74e8: $df
	add b                                            ; $74e9: $80
	sbc c                                            ; $74ea: $99
	ret nz                                           ; $74eb: $c0

	ldh [$f0], a                                     ; $74ec: $e0 $f0
	ld a, b                                          ; $74ee: $78
	cp b                                             ; $74ef: $b8
	ld a, b                                          ; $74f0: $78
	ld [hl], e                                       ; $74f1: $73
	or $7f                                           ; $74f2: $f6 $7f
	push af                                          ; $74f4: $f5
	sbc l                                            ; $74f5: $9d
	ld [hl], b                                       ; $74f6: $70
	jr @+$75                                         ; $74f7: $18 $73

	db $eb                                           ; $74f9: $eb
	sbc l                                            ; $74fa: $9d
	adc b                                            ; $74fb: $88
	call $f86f                                       ; $74fc: $cd $6f $f8
	ld a, a                                          ; $74ff: $7f
	db $ed                                           ; $7500: $ed
	ld l, e                                          ; $7501: $6b
	jp c, Jump_06c_409e                              ; $7502: $da $9e $40

	ld l, e                                          ; $7505: $6b
	ld hl, sp-$80                                    ; $7506: $f8 $80
	ret nz                                           ; $7508: $c0

	and b                                            ; $7509: $a0
	cp a                                             ; $750a: $bf
	cp a                                             ; $750b: $bf
	ld e, h                                          ; $750c: $5c
	or e                                             ; $750d: $b3
	adc h                                            ; $750e: $8c
	or e                                             ; $750f: $b3
	call z, $ffe0                                    ; $7510: $cc $e0 $ff
	ld hl, sp-$1d                                    ; $7513: $f8 $e3
	call z, $ccf3                                    ; $7515: $cc $f3 $cc
	di                                               ; $7518: $f3
	or e                                             ; $7519: $b3
	db $d3                                           ; $751a: $d3
	inc hl                                           ; $751b: $23
	ld h, c                                          ; $751c: $61
	ld d, b                                          ; $751d: $50
	jr nc, jr_06c_759a                               ; $751e: $30 $7a

	ld a, b                                          ; $7520: $78
	call z, $cca0                                    ; $7521: $cc $a0 $cc
	sbc [hl]                                         ; $7524: $9e
	and e                                            ; $7525: $a3
	jp $81df                                         ; $7526: $c3 $df $81


	adc a                                            ; $7529: $8f

jr_06c_752a:
	ld a, b                                          ; $752a: $78
	ld a, c                                          ; $752b: $79
	ld b, h                                          ; $752c: $44
	inc bc                                           ; $752d: $03
	ld [de], a                                       ; $752e: $12
	ld [hl], d                                       ; $752f: $72
	ld [hl], c                                       ; $7530: $71
	ld d, c                                          ; $7531: $51
	add l                                            ; $7532: $85
	add h                                            ; $7533: $84
	sub [hl]                                         ; $7534: $96
	sub $d7                                          ; $7535: $d6 $d7
	rst SubAFromHL                                          ; $7537: $d7
	rst SubAFromDE                                          ; $7538: $df
	rst $38                                          ; $7539: $ff
	ldh [$c1], a                                     ; $753a: $e0 $c1
	sbc b                                            ; $753c: $98
	rst GetHLinHL                                          ; $753d: $cf
	rst $38                                          ; $753e: $ff
	rst $38                                          ; $753f: $ff
	ret nz                                           ; $7540: $c0

	adc a                                            ; $7541: $8f
	rra                                              ; $7542: $1f
	ld a, a                                          ; $7543: $7f
	ld h, a                                          ; $7544: $67
	cp b                                             ; $7545: $b8
	sub a                                            ; $7546: $97
	ld bc, rIE                                     ; $7547: $01 $ff $ff
	rst AddAOntoHL                                          ; $754a: $ef
	rst SubAFromDE                                          ; $754b: $df
	cp a                                             ; $754c: $bf
	ld a, $70                                        ; $754d: $3e $70
	ld [hl], e                                       ; $754f: $73
	ld [hl], b                                       ; $7550: $70
	sbc e                                            ; $7551: $9b
	ld bc, $3f0f                                     ; $7552: $01 $0f $3f
	ld a, a                                          ; $7555: $7f
	ldh a, [$80]                                     ; $7556: $f0 $80
	ret nz                                           ; $7558: $c0

	ld hl, sp+$3f                                    ; $7559: $f8 $3f
	adc $79                                          ; $755b: $ce $79
	adc [hl]                                         ; $755d: $8e
	di                                               ; $755e: $f3
	nop                                              ; $755f: $00
	ret nz                                           ; $7560: $c0

	jr c, jr_06c_752a                                ; $7561: $38 $c7

	ld sp, $7186                                     ; $7563: $31 $86 $71
	inc c                                            ; $7566: $0c
	inc a                                            ; $7567: $3c
	add $93                                          ; $7568: $c6 $93
	push bc                                          ; $756a: $c5
	ld l, $43                                        ; $756b: $2e $43
	add l                                            ; $756d: $85
	dec l                                            ; $756e: $2d
	jp $0c39                                         ; $756f: $c3 $39 $0c


	ld c, $47                                        ; $7572: $0e $47
	daa                                              ; $7574: $27
	inc sp                                           ; $7575: $33
	sub e                                            ; $7576: $93
	adc a                                            ; $7577: $8f
	ld b, l                                          ; $7578: $45
	ld e, $32                                        ; $7579: $1e $32
	rla                                              ; $757b: $17
	cp l                                             ; $757c: $bd
	dec bc                                           ; $757d: $0b
	ld e, $95                                        ; $757e: $1e $95
	sbc e                                            ; $7580: $9b
	ret                                              ; $7581: $c9


	call Call_06c_66ec                               ; $7582: $cd $ec $66
	or $f3                                           ; $7585: $f6 $f3

jr_06c_7587:
	ei                                               ; $7587: $fb
	ldh [$c1], a                                     ; $7588: $e0 $c1
	rst SubAFromDE                                          ; $758a: $df
	ld c, h                                          ; $758b: $4c
	sbc b                                            ; $758c: $98
	sbc c                                            ; $758d: $99
	xor c                                            ; $758e: $a9
	jp nc, $8494                                     ; $758f: $d2 $94 $84

	jr z, jr_06c_7613                                ; $7592: $28 $7f

	ld a, c                                          ; $7594: $79
	ld c, a                                          ; $7595: $4f
	sbc c                                            ; $7596: $99
	sbc $9c                                          ; $7597: $de $9c
	sbc h                                            ; $7599: $9c

jr_06c_759a:
	jr c, jr_06c_75bd                                ; $759a: $38 $21

	inc hl                                           ; $759c: $23
	ld a, d                                          ; $759d: $7a
	ld c, d                                          ; $759e: $4a
	sbc $ff                                          ; $759f: $de $ff
	sbc d                                            ; $75a1: $9a
	ld hl, $0422                                     ; $75a2: $21 $22 $04
	jr jr_06c_7587                                   ; $75a5: $18 $e0

	ld h, $8c                                        ; $75a7: $26 $8c
	sbc l                                            ; $75a9: $9d
	ret nz                                           ; $75aa: $c0

	ld h, b                                          ; $75ab: $60
	ld [hl], d                                       ; $75ac: $72
	ld [$aa7e], sp                                   ; $75ad: $08 $7e $aa
	sub c                                            ; $75b0: $91
	and b                                            ; $75b1: $a0
	ldh a, [rOBP0]                                   ; $75b2: $f0 $48
	inc h                                            ; $75b4: $24
	ld [de], a                                       ; $75b5: $12
	adc d                                            ; $75b6: $8a
	add l                                            ; $75b7: $85
	inc de                                           ; $75b8: $13
	adc c                                            ; $75b9: $89
	ld b, l                                          ; $75ba: $45
	ld hl, sp-$04                                    ; $75bb: $f8 $fc

jr_06c_75bd:
	cp $7e                                           ; $75bd: $fe $7e
	ld [hl], l                                       ; $75bf: $75
	ld h, $97                                        ; $75c0: $26 $97
	ld h, h                                          ; $75c2: $64

jr_06c_75c3:
	and d                                            ; $75c3: $a2
	sub d                                            ; $75c4: $92
	ld d, c                                          ; $75c5: $51
	ld c, c                                          ; $75c6: $49
	jr z, @+$26                                      ; $75c7: $28 $24

jr_06c_75c9:
	ld [de], a                                       ; $75c9: $12
	reti                                             ; $75ca: $d9


	rst $38                                          ; $75cb: $ff
	ldh [$c1], a                                     ; $75cc: $e0 $c1
	sub e                                            ; $75ce: $93
	adc a                                            ; $75cf: $8f
	sub b                                            ; $75d0: $90
	jr nz, jr_06c_75f3                               ; $75d1: $20 $20

	ret nz                                           ; $75d3: $c0

	pop bc                                           ; $75d4: $c1
	adc c                                            ; $75d5: $89
	add d                                            ; $75d6: $82
	adc a                                            ; $75d7: $8f
	sbc a                                            ; $75d8: $9f
	ccf                                              ; $75d9: $3f
	ccf                                              ; $75da: $3f
	ld a, e                                          ; $75db: $7b
	ld e, h                                          ; $75dc: $5c
	adc a                                            ; $75dd: $8f
	cp $13                                           ; $75de: $fe $13
	dec h                                            ; $75e0: $25
	dec h                                            ; $75e1: $25
	dec hl                                           ; $75e2: $2b
	ld c, e                                          ; $75e3: $4b
	ld [hl], e                                       ; $75e4: $73
	ld [hl], a                                       ; $75e5: $77
	daa                                              ; $75e6: $27
	cp $fc                                           ; $75e7: $fe $fc
	db $fc                                           ; $75e9: $fc
	ld hl, sp-$08                                    ; $75ea: $f8 $f8
	ldh a, [$f0]                                     ; $75ec: $f0 $f0
	ld h, a                                          ; $75ee: $67
	ld e, l                                          ; $75ef: $5d
	sbc [hl]                                         ; $75f0: $9e
	add b                                            ; $75f1: $80
	ld h, c                                          ; $75f2: $61

jr_06c_75f3:
	pop af                                           ; $75f3: $f1
	ld a, a                                          ; $75f4: $7f
	ld l, e                                          ; $75f5: $6b
	rst SubAFromDE                                          ; $75f6: $df
	ld b, b                                          ; $75f7: $40
	rst SubAFromDE                                          ; $75f8: $df
	and b                                            ; $75f9: $a0
	sbc [hl]                                         ; $75fa: $9e
	ld h, b                                          ; $75fb: $60
	ld [hl], l                                       ; $75fc: $75
	ldh a, [c]                                       ; $75fd: $f2
	ld a, l                                          ; $75fe: $7d
	pop af                                           ; $75ff: $f1
	rst SubAFromDE                                          ; $7600: $df
	ldh [$7e], a                                     ; $7601: $e0 $7e
	inc h                                            ; $7603: $24
	sbc c                                            ; $7604: $99
	jr nc, jr_06c_762f                               ; $7605: $30 $28

	sbc b                                            ; $7607: $98
	sbc b                                            ; $7608: $98
	ret c                                            ; $7609: $d8

	call z, $f0de                                    ; $760a: $cc $de $f0
	db $dd                                           ; $760d: $dd
	ld hl, sp-$66                                    ; $760e: $f8 $9a
	db $fc                                           ; $7610: $fc
	ld c, h                                          ; $7611: $4c
	ld b, d                                          ; $7612: $42

jr_06c_7613:
	ld c, d                                          ; $7613: $4a
	ld c, d                                          ; $7614: $4a
	sbc $25                                          ; $7615: $de $25
	sbc l                                            ; $7617: $9d
	daa                                              ; $7618: $27
	db $fc                                           ; $7619: $fc
	sbc $fe                                          ; $761a: $de $fe
	db $dd                                           ; $761c: $dd
	rst $38                                          ; $761d: $ff
	sbc h                                            ; $761e: $9c
	dec [hl]                                         ; $761f: $35
	ld d, l                                          ; $7620: $55
	sub l                                            ; $7621: $95
	sbc $14                                          ; $7622: $de $14
	rst SubAFromDE                                          ; $7624: $df
	jr z, jr_06c_75c3                                ; $7625: $28 $9c

	db $fd                                           ; $7627: $fd
	db $dd                                           ; $7628: $dd
	sbc l                                            ; $7629: $9d
	sbc $1c                                          ; $762a: $de $1c
	rst SubAFromDE                                          ; $762c: $df
	jr c, jr_06c_75c9                                ; $762d: $38 $9a

jr_06c_762f:
	ld [$4050], sp                                   ; $762f: $08 $50 $40
	and b                                            ; $7632: $a0
	ld b, b                                          ; $7633: $40
	ld a, e                                          ; $7634: $7b
	or d                                             ; $7635: $b2
	sbc d                                            ; $7636: $9a
	jr c, jr_06c_76a9                                ; $7637: $38 $70

	ld h, b                                          ; $7639: $60
	ldh [$c0], a                                     ; $763a: $e0 $c0
	ld [hl], a                                       ; $763c: $77
	xor d                                            ; $763d: $aa
	sbc h                                            ; $763e: $9c
	ret nz                                           ; $763f: $c0

	jr nc, jr_06c_76ba                               ; $7640: $30 $78

	ld a, e                                          ; $7642: $7b
	call nc, $387f                                   ; $7643: $d4 $7f $38
	sbc c                                            ; $7646: $99
	ret nz                                           ; $7647: $c0

	ldh a, [$f8]                                     ; $7648: $f0 $f8
	call nz, $0282                                   ; $764a: $c4 $82 $02
	ld a, d                                          ; $764d: $7a
	ld b, b                                          ; $764e: $40
	db $db                                           ; $764f: $db
	rst $38                                          ; $7650: $ff
	rst SubAFromDE                                          ; $7651: $df
	ld bc, $306e                                     ; $7652: $01 $6e $30
	ldh a, [hDisp1_SCY]                                     ; $7655: $f0 $90
	ld [hl], b                                       ; $7657: $70
	adc b                                            ; $7658: $88
	add h                                            ; $7659: $84
	sbc h                                            ; $765a: $9c
	cp $f3                                           ; $765b: $fe $f3
	rst JumpTable                                          ; $765d: $c7
	nop                                              ; $765e: $00
	ld [hl], b                                       ; $765f: $70
	ld hl, sp-$04                                    ; $7660: $f8 $fc
	db $fc                                           ; $7662: $fc
	ldh [c], a                                       ; $7663: $e2
	call $26b9                                       ; $7664: $cd $b9 $26
	nop                                              ; $7667: $00
	rst SubAFromDE                                          ; $7668: $df
	sbc c                                            ; $7669: $99
	sub e                                            ; $766a: $93
	xor $aa                                          ; $766b: $ee $aa
	sbc c                                            ; $766d: $99
	sbc c                                            ; $766e: $99
	ld de, $22ee                                     ; $766f: $11 $ee $22
	sbc c                                            ; $7672: $99
	ld de, $9999                                     ; $7673: $11 $99 $99
	ld h, [hl]                                       ; $7676: $66
	ld [hl], a                                       ; $7677: $77
	ei                                               ; $7678: $fb
	ld a, a                                          ; $7679: $7f
	db $fd                                           ; $767a: $fd
	ld a, e                                          ; $767b: $7b
	ei                                               ; $767c: $fb
	sbc [hl]                                         ; $767d: $9e
	ld [hl], a                                       ; $767e: $77
	ld [hl], a                                       ; $767f: $77
	ei                                               ; $7680: $fb
	sbc [hl]                                         ; $7681: $9e
	inc sp                                           ; $7682: $33
	db $dd                                           ; $7683: $dd
	sbc c                                            ; $7684: $99
	ld a, a                                          ; $7685: $7f
	or $df                                           ; $7686: $f6 $df
	sbc c                                            ; $7688: $99
	sbc l                                            ; $7689: $9d
	rst $38                                          ; $768a: $ff
	xor d                                            ; $768b: $aa
	db $ed                                           ; $768c: $ed
	ld bc, $d480                                     ; $768d: $01 $80 $d4
	dec sp                                           ; $7690: $3b
	sub b                                            ; $7691: $90
	ld a, a                                          ; $7692: $7f
	ld hl, $43ff                                     ; $7693: $21 $ff $43
	cp $86                                           ; $7696: $fe $86
	db $fd                                           ; $7698: $fd
	add hl, bc                                       ; $7699: $09
	rst $38                                          ; $769a: $ff
	scf                                              ; $769b: $37
	cp $5f                                           ; $769c: $fe $5f
	add sp, -$02                                     ; $769e: $e8 $fe
	pop bc                                           ; $76a0: $c1
	rst $38                                          ; $76a1: $ff
	jp $efdd                                         ; $76a2: $c3 $dd $ef


	cp l                                             ; $76a5: $bd
	push hl                                          ; $76a6: $e5
	or b                                             ; $76a7: $b0
	pop hl                                           ; $76a8: $e1

jr_06c_76a9:
	ldh [$b0], a                                     ; $76a9: $e0 $b0
	ldh a, [$b0]                                     ; $76ab: $f0 $b0
	ld e, b                                          ; $76ad: $58
	add b                                            ; $76ae: $80
	or b                                             ; $76af: $b0
	ld [hl], b                                       ; $76b0: $70
	sbc b                                            ; $76b1: $98
	ld l, b                                          ; $76b2: $68
	sbc b                                            ; $76b3: $98
	ld [hl], h                                       ; $76b4: $74
	adc h                                            ; $76b5: $8c
	ld l, h                                          ; $76b6: $6c
	sub [hl]                                         ; $76b7: $96
	ld c, $d6                                        ; $76b8: $0e $d6

jr_06c_76ba:
	rlca                                             ; $76ba: $07
	rst SubAFromHL                                          ; $76bb: $d7
	dec d                                            ; $76bc: $15
	rst JumpTable                                          ; $76bd: $c7
	rlca                                             ; $76be: $07
	rst JumpTable                                          ; $76bf: $c7
	ld d, $c7                                        ; $76c0: $16 $c7
	dec l                                            ; $76c2: $2d
	rst SubAFromHL                                          ; $76c3: $d7
	sbc l                                            ; $76c4: $9d
	rst FarCall                                          ; $76c5: $f7
	sub a                                            ; $76c6: $97
	rst $38                                          ; $76c7: $ff
	sub a                                            ; $76c8: $97
	rst $38                                          ; $76c9: $ff
	sub e                                            ; $76ca: $93
	rst $38                                          ; $76cb: $ff
	set 7, a                                         ; $76cc: $cb $ff
	add b                                            ; $76ce: $80
	ret                                              ; $76cf: $c9


	rst $38                                          ; $76d0: $ff
	ld [hl], d                                       ; $76d1: $72
	rst SubAFromDE                                          ; $76d2: $df
	jp c, $9a8f                                      ; $76d3: $da $8f $9a

	rrca                                             ; $76d6: $0f
	ld a, [bc]                                       ; $76d7: $0a
	ccf                                              ; $76d8: $3f
	ld a, $f7                                        ; $76d9: $3e $f7
	rst $38                                          ; $76db: $ff
	rst JumpTable                                          ; $76dc: $c7
	rst $38                                          ; $76dd: $ff
	dec b                                            ; $76de: $05

jr_06c_76df:
	rst $38                                          ; $76df: $ff
	inc b                                            ; $76e0: $04
	rst AddAOntoHL                                          ; $76e1: $ef
	ldh a, [rIE]                                     ; $76e2: $f0 $ff
	cp b                                             ; $76e4: $b8
	scf                                              ; $76e5: $37
	jr c, jr_06c_76df                                ; $76e6: $38 $f7

	ldh a, [$d0]                                     ; $76e8: $f0 $d0
	ldh a, [$e0]                                     ; $76ea: $f0 $e0
	and b                                            ; $76ec: $a0
	ld h, a                                          ; $76ed: $67
	add l                                            ; $76ee: $85
	ldh [rIF], a                                     ; $76ef: $e0 $0f
	nop                                              ; $76f1: $00
	ld e, c                                          ; $76f2: $59
	rst $38                                          ; $76f3: $ff
	ld e, c                                          ; $76f4: $59
	rst $38                                          ; $76f5: $ff
	call nc, $deff                                   ; $76f6: $d4 $ff $de
	rst FarCall                                          ; $76f9: $f7
	rst AddAOntoHL                                          ; $76fa: $ef
	cp e                                             ; $76fb: $bb
	xor $b9                                          ; $76fc: $ee $b9
	rst FarCall                                          ; $76fe: $f7
	sbc h                                            ; $76ff: $9c
	rst $38                                          ; $7700: $ff
	call z, $c57e                                    ; $7701: $cc $7e $c5
	cp e                                             ; $7704: $bb
	ld b, a                                          ; $7705: $47
	rst $38                                          ; $7706: $ff
	ld bc, $de1d                                     ; $7707: $01 $1d $de
	ld bc, $f09e                                     ; $770a: $01 $9e $f0
	cp a                                             ; $770d: $bf
	rst $38                                          ; $770e: $ff
	rst $38                                          ; $770f: $ff
	add b                                            ; $7710: $80
	ld b, b                                          ; $7711: $40
	ret z                                            ; $7712: $c8

	ld a, a                                          ; $7713: $7f
	add sp, $3f                                      ; $7714: $e8 $3f
	db $e4                                           ; $7716: $e4
	cp a                                             ; $7717: $bf
	or d                                             ; $7718: $b2
	rst SubAFromDE                                          ; $7719: $df
	ld c, c                                          ; $771a: $49
	rst $38                                          ; $771b: $ff
	db $f4                                           ; $771c: $f4
	rst $38                                          ; $771d: $ff
	cp $cf                                           ; $771e: $fe $cf
	db $fd                                           ; $7720: $fd
	ld b, e                                          ; $7721: $43
	or $f9                                           ; $7722: $f6 $f9
	ei                                               ; $7724: $fb
	inc a                                            ; $7725: $3c
	ccf                                              ; $7726: $3f
	ld a, $f6                                        ; $7727: $3e $f6
	push af                                          ; $7729: $f5
	rst SubAFromHL                                          ; $772a: $d7
	pop af                                           ; $772b: $f1
	rst GetHLinHL                                          ; $772c: $cf
	and c                                            ; $772d: $a1
	rst $38                                          ; $772e: $ff
	pop hl                                           ; $772f: $e1
	add b                                            ; $7730: $80
	dec c                                            ; $7731: $0d
	inc bc                                           ; $7732: $03
	ld b, $03                                        ; $7733: $06 $03
	inc bc                                           ; $7735: $03
	ld b, $0d                                        ; $7736: $06 $0d
	ld b, $06                                        ; $7738: $06 $06
	inc c                                            ; $773a: $0c
	ld c, $1c                                        ; $773b: $0e $1c
	ld d, $3c                                        ; $773d: $16 $3c
	or h                                             ; $773f: $b4
	ld a, h                                          ; $7740: $7c
	jp hl                                            ; $7741: $e9


	db $fc                                           ; $7742: $fc
	call z, $cdf9                                    ; $7743: $cc $f9 $cd
	ld sp, hl                                        ; $7746: $f9
	rst FarCall                                          ; $7747: $f7
	ld sp, hl                                        ; $7748: $f9

jr_06c_7749:
	or $fb                                           ; $7749: $f6 $fb
	di                                               ; $774b: $f3
	ld a, $e3                                        ; $774c: $3e $e3
	ld a, $e4                                        ; $774e: $3e $e4
	adc e                                            ; $7750: $8b
	ccf                                              ; $7751: $3f
	ld h, h                                          ; $7752: $64
	ld a, a                                          ; $7753: $7f
	adc d                                            ; $7754: $8a
	rst $38                                          ; $7755: $ff
	ld c, c                                          ; $7756: $49
	rst $38                                          ; $7757: $ff
	ld b, l                                          ; $7758: $45
	rst $38                                          ; $7759: $ff
	inc hl                                           ; $775a: $23
	rst $38                                          ; $775b: $ff
	add hl, de                                       ; $775c: $19
	rst $38                                          ; $775d: $ff
	call z, Call_06c_63ff                            ; $775e: $cc $ff $63
	rst $38                                          ; $7761: $ff
	ld e, b                                          ; $7762: $58
	rst $38                                          ; $7763: $ff
	rst GetHLinHL                                          ; $7764: $cf
	ld a, e                                          ; $7765: $7b
	ld l, d                                          ; $7766: $6a
	sbc d                                            ; $7767: $9a
	xor e                                            ; $7768: $ab
	rst SubAFromDE                                          ; $7769: $df
	xor l                                            ; $776a: $ad
	db $db                                           ; $776b: $db
	dec l                                            ; $776c: $2d
	ld a, e                                          ; $776d: $7b
	cp $9d                                           ; $776e: $fe $9d
	xor l                                            ; $7770: $ad
	ld e, e                                          ; $7771: $5b
	ld [hl], a                                       ; $7772: $77
	cp $9d                                           ; $7773: $fe $9d
	jp hl                                            ; $7775: $e9


	ld e, a                                          ; $7776: $5f
	ld [hl], a                                       ; $7777: $77
	cp $87                                           ; $7778: $fe $87
	xor c                                            ; $777a: $a9
	rst SubAFromDE                                          ; $777b: $df
	di                                               ; $777c: $f3
	sbc a                                            ; $777d: $9f
	ldh a, [c]                                       ; $777e: $f2
	sbc [hl]                                         ; $777f: $9e
	ldh a, [c]                                       ; $7780: $f2
	sbc [hl]                                         ; $7781: $9e
	sub $be                                          ; $7782: $d6 $be
	db $e4                                           ; $7784: $e4
	inc a                                            ; $7785: $3c
	add sp, $38                                      ; $7786: $e8 $38
	or b                                             ; $7788: $b0
	ld [hl], b                                       ; $7789: $70
	ldh [$60], a                                     ; $778a: $e0 $60
	ld b, b                                          ; $778c: $40
	ret nz                                           ; $778d: $c0

	ld b, b                                          ; $778e: $40
	ret nz                                           ; $778f: $c0

	ldh a, [$f0]                                     ; $7790: $f0 $f0
	ld b, a                                          ; $7792: $47
	nop                                              ; $7793: $00
	sbc b                                            ; $7794: $98
	rst $38                                          ; $7795: $ff
	ret nz                                           ; $7796: $c0

	cp $c1                                           ; $7797: $fe $c1
	rst SubAFromDE                                          ; $7799: $df
	db $e3                                           ; $779a: $e3
	cp l                                             ; $779b: $bd
	ld a, d                                          ; $779c: $7a
	cp $9d                                           ; $779d: $fe $9d
	ldh [$b1], a                                     ; $779f: $e0 $b1
	ld [hl], a                                       ; $77a1: $77
	nop                                              ; $77a2: $00
	ld b, a                                          ; $77a3: $47
	jr nz, jr_06c_7825                               ; $77a4: $20 $7f

	ld c, h                                          ; $77a6: $4c
	ld l, a                                          ; $77a7: $6f
	ld e, $df                                        ; $77a8: $1e $df
	ldh a, [$9d]                                     ; $77aa: $f0 $9d
	ret nc                                           ; $77ac: $d0

	or b                                             ; $77ad: $b0
	scf                                              ; $77ae: $37
	jr nz, jr_06c_7749                               ; $77af: $20 $98

	ld a, a                                          ; $77b1: $7f
	call nz, $45ba                                   ; $77b2: $c4 $ba $45
	rst $38                                          ; $77b5: $ff
	inc bc                                           ; $77b6: $03
	rra                                              ; $77b7: $1f
	sbc $01                                          ; $77b8: $de $01
	sbc l                                            ; $77ba: $9d
	pop af                                           ; $77bb: $f1
	ld bc, $2037                                     ; $77bc: $01 $37 $20
	sub e                                            ; $77bf: $93
	cp $01                                           ; $77c0: $fe $01
	rst FarCall                                          ; $77c2: $f7
	ld hl, sp-$05                                    ; $77c3: $f8 $fb
	inc a                                            ; $77c5: $3c
	ld a, $3f                                        ; $77c6: $3e $3f
	rst FarCall                                          ; $77c8: $f7
	push af                                          ; $77c9: $f5
	rst SubAFromHL                                          ; $77ca: $d7
	or c                                             ; $77cb: $b1
	ld [hl], a                                       ; $77cc: $77
	jr nz, @+$41                                     ; $77cd: $20 $3f

	add b                                            ; $77cf: $80
	ld a, a                                          ; $77d0: $7f
	cp $9c                                           ; $77d1: $fe $9c

jr_06c_77d3:
	sbc $e1                                          ; $77d3: $de $e1
	cp a                                             ; $77d5: $bf
	ld a, e                                          ; $77d6: $7b
	ld a, [hl]                                       ; $77d7: $7e
	sbc l                                            ; $77d8: $9d
	db $ed                                           ; $77d9: $ed
	or l                                             ; $77da: $b5
	cpl                                              ; $77db: $2f
	add b                                            ; $77dc: $80
	ld [hl], a                                       ; $77dd: $77
	ld a, [hl]                                       ; $77de: $7e
	sbc e                                            ; $77df: $9b
	ld a, a                                          ; $77e0: $7f
	jr c, jr_06c_77d3                                ; $77e1: $38 $f0

	ld hl, sp+$27                                    ; $77e3: $f8 $27
	add b                                            ; $77e5: $80
	sbc b                                            ; $77e6: $98
	cp e                                             ; $77e7: $bb
	ld b, h                                          ; $77e8: $44
	cp $01                                           ; $77e9: $fe $01
	rra                                              ; $77eb: $1f
	inc bc                                           ; $77ec: $03
	inc bc                                           ; $77ed: $03
	inc hl                                           ; $77ee: $23
	add b                                            ; $77ef: $80
	ld a, a                                          ; $77f0: $7f
	ld [$7e7f], a                                    ; $77f1: $ea $7f $7e
	sbc c                                            ; $77f4: $99
	ld a, d                                          ; $77f5: $7a
	dec a                                            ; $77f6: $3d
	rst SubAFromDE                                          ; $77f7: $df
	rst $38                                          ; $77f8: $ff
	ld d, a                                          ; $77f9: $57
	dec [hl]                                         ; $77fa: $35
	daa                                              ; $77fb: $27
	add b                                            ; $77fc: $80
	sub [hl]                                         ; $77fd: $96
	rst SubAFromDE                                          ; $77fe: $df
	ldh [$bf], a                                     ; $77ff: $e0 $bf
	pop hl                                           ; $7801: $e1
	cp a                                             ; $7802: $bf
	xor $ef                                          ; $7803: $ee $ef
	or e                                             ; $7805: $b3
	pop af                                           ; $7806: $f1
	dec hl                                           ; $7807: $2b
	add b                                            ; $7808: $80
	ld a, e                                          ; $7809: $7b
	cp $9d                                           ; $780a: $fe $9d
	ret c                                            ; $780c: $d8

	ldh a, [$7a]                                     ; $780d: $f0 $7a
	cp $9e                                           ; $780f: $fe $9e
	rst SubAFromBC                                          ; $7811: $e7
	dec hl                                           ; $7812: $2b
	add b                                            ; $7813: $80
	ld a, a                                          ; $7814: $7f
	ldh [$9d], a                                     ; $7815: $e0 $9d
	rra                                              ; $7817: $1f
	ld [bc], a                                       ; $7818: $02
	rla                                              ; $7819: $17
	add b                                            ; $781a: $80
	ld a, a                                          ; $781b: $7f
	cp $99                                           ; $781c: $fe $99
	cp $f1                                           ; $781e: $fe $f1
	rst $38                                          ; $7820: $ff
	rrca                                             ; $7821: $0f
	rst $38                                          ; $7822: $ff
	db $fd                                           ; $7823: $fd
	ld [hl], a                                       ; $7824: $77

jr_06c_7825:
	add b                                            ; $7825: $80
	ei                                               ; $7826: $fb
	rst SubAFromDE                                          ; $7827: $df
	ld bc, $90fd                                     ; $7828: $01 $fd $90
	ret nz                                           ; $782b: $c0

	add b                                            ; $782c: $80
	ldh a, [$e0]                                     ; $782d: $f0 $e0
	sbc h                                            ; $782f: $9c
	ld hl, sp-$01                                    ; $7830: $f8 $ff
	add [hl]                                         ; $7832: $86
	db $e3                                           ; $7833: $e3
	add c                                            ; $7834: $81
	ld h, b                                          ; $7835: $60
	add b                                            ; $7836: $80
	ld h, b                                          ; $7837: $60
	add b                                            ; $7838: $80
	and b                                            ; $7839: $a0
	cp [hl]                                          ; $783a: $be
	or b                                             ; $783b: $b0
	db $10                                           ; $783c: $10
	ld [hl], b                                       ; $783d: $70
	sbc b                                            ; $783e: $98
	ld b, b                                          ; $783f: $40
	jr nz, @+$42                                     ; $7840: $20 $40

	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	or b                                             ; $7844: $b0
	db $10                                           ; $7845: $10
	cp a                                             ; $7846: $bf
	ldh [rP1], a                                     ; $7847: $e0 $00
	ld a, a                                          ; $7849: $7f
	rst FarCall                                          ; $784a: $f7
	ld a, a                                          ; $784b: $7f
	reti                                             ; $784c: $d9


	sub h                                            ; $784d: $94
	ld bc, $1703                                     ; $784e: $01 $03 $17
	rrca                                             ; $7851: $0f
	ld e, a                                          ; $7852: $5f
	cp a                                             ; $7853: $bf
	rst $38                                          ; $7854: $ff
	rst $38                                          ; $7855: $ff
	rlca                                             ; $7856: $07
	inc bc                                           ; $7857: $03
	rrca                                             ; $7858: $0f
	cp [hl]                                          ; $7859: $be
	rra                                              ; $785a: $1f
	ld a, $70                                        ; $785b: $3e $70
	dec bc                                           ; $785d: $0b
	ldh [$63], a                                     ; $785e: $e0 $63
	and b                                            ; $7860: $a0
	ld a, e                                          ; $7861: $7b
	sbc [hl]                                         ; $7862: $9e
	inc de                                           ; $7863: $13
	and b                                            ; $7864: $a0
	ld [hl], e                                       ; $7865: $73
	cp [hl]                                          ; $7866: $be
	sbc [hl]                                         ; $7867: $9e
	ld b, c                                          ; $7868: $41
	dec de                                           ; $7869: $1b
	ret nz                                           ; $786a: $c0

	ld a, a                                          ; $786b: $7f
	db $fd                                           ; $786c: $fd
	rrca                                             ; $786d: $0f
	ret nz                                           ; $786e: $c0

	sbc b                                            ; $786f: $98
	ld d, b                                          ; $7870: $50
	and b                                            ; $7871: $a0
	nop                                              ; $7872: $00
	ldh [rSB], a                                     ; $7873: $e0 $01
	nop                                              ; $7875: $00
	ld b, c                                          ; $7876: $41
	ld c, e                                          ; $7877: $4b
	ret nz                                           ; $7878: $c0

	ld [de], a                                       ; $7879: $12
	ld [bc], a                                       ; $787a: $02
	add b                                            ; $787b: $80
	call nc, $903b                                   ; $787c: $d4 $3b $90
	ld a, a                                          ; $787f: $7f
	ld hl, $42ff                                     ; $7880: $21 $ff $42
	rst $38                                          ; $7883: $ff
	add h                                            ; $7884: $84
	rst $38                                          ; $7885: $ff
	dec bc                                           ; $7886: $0b
	rst $38                                          ; $7887: $ff
	scf                                              ; $7888: $37
	db $fc                                           ; $7889: $fc
	ld e, [hl]                                       ; $788a: $5e
	jp hl                                            ; $788b: $e9


	rst $38                                          ; $788c: $ff
	jp $cffd                                         ; $788d: $c3 $fd $cf


	db $dd                                           ; $7890: $dd
	push hl                                          ; $7891: $e5
	cp c                                             ; $7892: $b9
	pop hl                                           ; $7893: $e1
	or c                                             ; $7894: $b1
	pop hl                                           ; $7895: $e1
	ldh [$b0], a                                     ; $7896: $e0 $b0
	ldh a, [$b0]                                     ; $7898: $f0 $b0
	ld e, b                                          ; $789a: $58
	add b                                            ; $789b: $80
	or b                                             ; $789c: $b0
	ld [hl], b                                       ; $789d: $70
	sbc b                                            ; $789e: $98
	ld l, b                                          ; $789f: $68
	sbc b                                            ; $78a0: $98
	ld [hl], h                                       ; $78a1: $74
	adc h                                            ; $78a2: $8c
	ld l, h                                          ; $78a3: $6c
	sub [hl]                                         ; $78a4: $96
	ld c, $d6                                        ; $78a5: $0e $d6
	rlca                                             ; $78a7: $07
	rst SubAFromHL                                          ; $78a8: $d7
	dec d                                            ; $78a9: $15
	rst JumpTable                                          ; $78aa: $c7
	rlca                                             ; $78ab: $07
	rst JumpTable                                          ; $78ac: $c7
	ld d, $c7                                        ; $78ad: $16 $c7
	dec l                                            ; $78af: $2d
	rst SubAFromHL                                          ; $78b0: $d7
	sbc l                                            ; $78b1: $9d
	rst FarCall                                          ; $78b2: $f7
	sub a                                            ; $78b3: $97
	rst $38                                          ; $78b4: $ff
	sub a                                            ; $78b5: $97
	rst $38                                          ; $78b6: $ff
	sub e                                            ; $78b7: $93
	rst $38                                          ; $78b8: $ff
	set 7, a                                         ; $78b9: $cb $ff
	add b                                            ; $78bb: $80
	ret                                              ; $78bc: $c9


	rst $38                                          ; $78bd: $ff
	ld [hl], d                                       ; $78be: $72
	rst SubAFromDE                                          ; $78bf: $df
	jp c, $9a8f                                      ; $78c0: $da $8f $9a

	rrca                                             ; $78c3: $0f
	ld a, [bc]                                       ; $78c4: $0a
	rst $38                                          ; $78c5: $ff
	or $ff                                           ; $78c6: $f6 $ff
	rst $38                                          ; $78c8: $ff
	rrca                                             ; $78c9: $0f

jr_06c_78ca:
	rst $38                                          ; $78ca: $ff
	dec b                                            ; $78cb: $05
	rst AddAOntoHL                                          ; $78cc: $ef
	db $f4                                           ; $78cd: $f4
	rst $38                                          ; $78ce: $ff
	cp b                                             ; $78cf: $b8
	scf                                              ; $78d0: $37
	jr c, jr_06c_78ca                                ; $78d1: $38 $f7

	ldh a, [$d7]                                     ; $78d3: $f0 $d7
	ldh a, [$30]                                     ; $78d5: $f0 $30
	or b                                             ; $78d7: $b0
	ldh [$a0], a                                     ; $78d8: $e0 $a0
	ld h, b                                          ; $78da: $60
	add b                                            ; $78db: $80
	ldh [rP1], a                                     ; $78dc: $e0 $00
	nop                                              ; $78de: $00
	ld e, c                                          ; $78df: $59
	rst $38                                          ; $78e0: $ff
	ld e, c                                          ; $78e1: $59
	rst $38                                          ; $78e2: $ff
	call c, $d6f7                                    ; $78e3: $dc $f7 $d6
	ei                                               ; $78e6: $fb
	rst AddAOntoHL                                          ; $78e7: $ef
	cp e                                             ; $78e8: $bb
	db $eb                                           ; $78e9: $eb
	cp h                                             ; $78ea: $bc
	rst $38                                          ; $78eb: $ff
	sbc h                                            ; $78ec: $9c
	cp $cd                                           ; $78ed: $fe $cd
	ld a, a                                          ; $78ef: $7f
	rst JumpTable                                          ; $78f0: $c7
	cp e                                             ; $78f1: $bb
	ld b, l                                          ; $78f2: $45
	db $fd                                           ; $78f3: $fd
	ld bc, $011d                                     ; $78f4: $01 $1d $01
	dec c                                            ; $78f7: $0d
	ld bc, $0000                                     ; $78f8: $01 $00 $00
	add b                                            ; $78fb: $80
	ld b, c                                          ; $78fc: $41
	nop                                              ; $78fd: $00
	ld h, b                                          ; $78fe: $60
	ld b, b                                          ; $78ff: $40
	ret z                                            ; $7900: $c8

	ld a, a                                          ; $7901: $7f
	add sp, $3f                                      ; $7902: $e8 $3f
	db $e4                                           ; $7904: $e4
	cp a                                             ; $7905: $bf
	sub d                                            ; $7906: $92
	rst $38                                          ; $7907: $ff
	ld a, c                                          ; $7908: $79
	rst $38                                          ; $7909: $ff
	db $fc                                           ; $790a: $fc
	rst GetHLinHL                                          ; $790b: $cf
	cp $c7                                           ; $790c: $fe $c7
	push af                                          ; $790e: $f5
	ei                                               ; $790f: $fb
	ld a, [$3f3d]                                    ; $7910: $fa $3d $3f
	ld a, $f7                                        ; $7913: $3e $f7
	db $f4                                           ; $7915: $f4
	sub $f1                                          ; $7916: $d6 $f1
	rla                                              ; $7918: $17
	or c                                             ; $7919: $b1
	rst AddAOntoHL                                          ; $791a: $ef
	add b                                            ; $791b: $80
	and c                                            ; $791c: $a1
	rst SubAFromDE                                          ; $791d: $df
	pop hl                                           ; $791e: $e1
	dec c                                            ; $791f: $0d
	inc bc                                           ; $7920: $03
	ld b, $03                                        ; $7921: $06 $03
	inc bc                                           ; $7923: $03
	ld b, $0d                                        ; $7924: $06 $0d
	ld b, $06                                        ; $7926: $06 $06
	inc c                                            ; $7928: $0c
	ld c, $1c                                        ; $7929: $0e $1c
	ld d, $3c                                        ; $792b: $16 $3c
	or h                                             ; $792d: $b4

jr_06c_792e:
	ld a, h                                          ; $792e: $7c
	jp hl                                            ; $792f: $e9


	db $fc                                           ; $7930: $fc
	call z, $cdf9                                    ; $7931: $cc $f9 $cd
	ld sp, hl                                        ; $7934: $f9
	rst FarCall                                          ; $7935: $f7
	ld sp, hl                                        ; $7936: $f9
	or $fb                                           ; $7937: $f6 $fb

jr_06c_7939:
	di                                               ; $7939: $f3
	ld a, $88                                        ; $793a: $3e $88
	db $e3                                           ; $793c: $e3
	ld a, $e4                                        ; $793d: $3e $e4
	ccf                                              ; $793f: $3f
	ld h, h                                          ; $7940: $64
	ld a, a                                          ; $7941: $7f
	adc d                                            ; $7942: $8a
	rst $38                                          ; $7943: $ff
	ld c, c                                          ; $7944: $49
	rst $38                                          ; $7945: $ff
	ld b, l                                          ; $7946: $45
	rst $38                                          ; $7947: $ff
	inc hl                                           ; $7948: $23
	rst $38                                          ; $7949: $ff
	add hl, de                                       ; $794a: $19
	rst $38                                          ; $794b: $ff
	call z, Call_06c_63ff                            ; $794c: $cc $ff $63
	rst $38                                          ; $794f: $ff
	ld e, b                                          ; $7950: $58
	rst $38                                          ; $7951: $ff
	rst GetHLinHL                                          ; $7952: $cf
	ld a, e                                          ; $7953: $7b
	ld l, d                                          ; $7954: $6a
	sbc d                                            ; $7955: $9a
	xor e                                            ; $7956: $ab
	rst SubAFromDE                                          ; $7957: $df
	xor l                                            ; $7958: $ad
	db $db                                           ; $7959: $db
	dec l                                            ; $795a: $2d
	ld a, e                                          ; $795b: $7b
	cp $9d                                           ; $795c: $fe $9d
	xor l                                            ; $795e: $ad
	ld e, e                                          ; $795f: $5b
	ld [hl], a                                       ; $7960: $77
	cp $9d                                           ; $7961: $fe $9d
	jp hl                                            ; $7963: $e9


	ld e, a                                          ; $7964: $5f
	ld [hl], a                                       ; $7965: $77
	cp $87                                           ; $7966: $fe $87
	xor c                                            ; $7968: $a9
	rst SubAFromDE                                          ; $7969: $df
	di                                               ; $796a: $f3
	sbc a                                            ; $796b: $9f
	ldh a, [c]                                       ; $796c: $f2
	sbc [hl]                                         ; $796d: $9e
	ldh a, [c]                                       ; $796e: $f2
	sbc [hl]                                         ; $796f: $9e
	sub $be                                          ; $7970: $d6 $be
	db $e4                                           ; $7972: $e4
	inc a                                            ; $7973: $3c
	add sp, $38                                      ; $7974: $e8 $38
	or b                                             ; $7976: $b0
	ld [hl], b                                       ; $7977: $70
	ldh [$60], a                                     ; $7978: $e0 $60
	ld b, b                                          ; $797a: $40
	ret nz                                           ; $797b: $c0

	ld b, b                                          ; $797c: $40
	ret nz                                           ; $797d: $c0

	ldh a, [$f0]                                     ; $797e: $f0 $f0
	ld c, a                                          ; $7980: $4f
	nop                                              ; $7981: $00
	sub h                                            ; $7982: $94
	ld e, a                                          ; $7983: $5f
	add sp, -$02                                     ; $7984: $e8 $fe
	pop bc                                           ; $7986: $c1
	rst $38                                          ; $7987: $ff
	jp $efdd                                         ; $7988: $c3 $dd $ef


	cp l                                             ; $798b: $bd
	push hl                                          ; $798c: $e5
	or b                                             ; $798d: $b0
	ld l, e                                          ; $798e: $6b
	nop                                              ; $798f: $00
	ld c, a                                          ; $7990: $4f
	jr nz, jr_06c_792e                               ; $7991: $20 $9b

	rst $38                                          ; $7993: $ff
	inc b                                            ; $7994: $04
	rst AddAOntoHL                                          ; $7995: $ef
	ldh a, [$6f]                                     ; $7996: $f0 $6f
	ld e, $9d                                        ; $7998: $1e $9d
	ret nc                                           ; $799a: $d0

	ldh a, [$37]                                     ; $799b: $f0 $37
	jr nz, jr_06c_7a1e                               ; $799d: $20 $7f

	ld a, e                                          ; $799f: $7b
	sbc d                                            ; $79a0: $9a
	ld a, [hl]                                       ; $79a1: $7e
	push bc                                          ; $79a2: $c5
	cp e                                             ; $79a3: $bb
	ld b, a                                          ; $79a4: $47
	rst $38                                          ; $79a5: $ff
	inc hl                                           ; $79a6: $23
	jr nz, jr_06c_7939                               ; $79a7: $20 $90

	db $fd                                           ; $79a9: $fd
	ld b, e                                          ; $79aa: $43
	or $f9                                           ; $79ab: $f6 $f9
	ei                                               ; $79ad: $fb
	inc a                                            ; $79ae: $3c
	ccf                                              ; $79af: $3f
	ld a, $f6                                        ; $79b0: $3e $f6
	push af                                          ; $79b2: $f5
	rst SubAFromHL                                          ; $79b3: $d7
	pop af                                           ; $79b4: $f1
	rst GetHLinHL                                          ; $79b5: $cf
	and c                                            ; $79b6: $a1
	rst $38                                          ; $79b7: $ff
	ld a, e                                          ; $79b8: $7b
	jr nz, jr_06c_7a02                               ; $79b9: $20 $47

	add b                                            ; $79bb: $80
	sub e                                            ; $79bc: $93
	rst $38                                          ; $79bd: $ff
	ret nz                                           ; $79be: $c0

	rst $38                                          ; $79bf: $ff
	ret nz                                           ; $79c0: $c0

	sbc $e1                                          ; $79c1: $de $e1
	cp a                                             ; $79c3: $bf
	db $e3                                           ; $79c4: $e3

jr_06c_79c5:
	cp l                                             ; $79c5: $bd
	rst AddAOntoHL                                          ; $79c6: $ef
	db $ed                                           ; $79c7: $ed
	or l                                             ; $79c8: $b5
	scf                                              ; $79c9: $37
	add b                                            ; $79ca: $80
	sub e                                            ; $79cb: $93
	rst $38                                          ; $79cc: $ff
	nop                                              ; $79cd: $00
	rst $38                                          ; $79ce: $ff
	nop                                              ; $79cf: $00
	rst AddAOntoHL                                          ; $79d0: $ef
	ldh a, [$7f]                                     ; $79d1: $f0 $7f
	jr c, jr_06c_79c5                                ; $79d3: $38 $f0

	ld hl, sp-$30                                    ; $79d5: $f8 $d0
	or b                                             ; $79d7: $b0
	scf                                              ; $79d8: $37
	add b                                            ; $79d9: $80
	sub [hl]                                         ; $79da: $96
	ld a, a                                          ; $79db: $7f
	call nz, Call_06c_44bb                           ; $79dc: $c4 $bb $44
	cp $01                                           ; $79df: $fe $01
	rra                                              ; $79e1: $1f
	inc bc                                           ; $79e2: $03
	dec bc                                           ; $79e3: $0b
	sbc $01                                          ; $79e4: $de $01
	scf                                              ; $79e6: $37
	add b                                            ; $79e7: $80
	ld a, a                                          ; $79e8: $7f
	db $e4                                           ; $79e9: $e4
	ld a, a                                          ; $79ea: $7f
	ret nz                                           ; $79eb: $c0

	sub a                                            ; $79ec: $97
	rst FarCall                                          ; $79ed: $f7
	ld hl, sp+$7a                                    ; $79ee: $f8 $7a
	dec a                                            ; $79f0: $3d
	rst SubAFromDE                                          ; $79f1: $df
	rst $38                                          ; $79f2: $ff
	ld d, a                                          ; $79f3: $57
	dec [hl]                                         ; $79f4: $35
	daa                                              ; $79f5: $27
	add b                                            ; $79f6: $80
	sub [hl]                                         ; $79f7: $96
	rst SubAFromDE                                          ; $79f8: $df
	ldh [$bf], a                                     ; $79f9: $e0 $bf
	pop hl                                           ; $79fb: $e1
	cp a                                             ; $79fc: $bf
	xor $ef                                          ; $79fd: $ee $ef
	or e                                             ; $79ff: $b3
	pop af                                           ; $7a00: $f1
	dec hl                                           ; $7a01: $2b

jr_06c_7a02:
	add b                                            ; $7a02: $80
	ld a, e                                          ; $7a03: $7b
	cp $99                                           ; $7a04: $fe $99
	ret c                                            ; $7a06: $d8

	ldh a, [$38]                                     ; $7a07: $f0 $38
	ldh a, [$f0]                                     ; $7a09: $f0 $f0
	ldh [$2b], a                                     ; $7a0b: $e0 $2b
	add b                                            ; $7a0d: $80
	ld a, a                                          ; $7a0e: $7f
	ldh [$9d], a                                     ; $7a0f: $e0 $9d
	rra                                              ; $7a11: $1f
	ld [bc], a                                       ; $7a12: $02
	rla                                              ; $7a13: $17
	add b                                            ; $7a14: $80
	ld a, a                                          ; $7a15: $7f
	cp $9d                                           ; $7a16: $fe $9d
	cp $f1                                           ; $7a18: $fe $f1
	ld a, e                                          ; $7a1a: $7b
	or d                                             ; $7a1b: $b2
	sbc [hl]                                         ; $7a1c: $9e
	db $fd                                           ; $7a1d: $fd

jr_06c_7a1e:
	ld [hl], a                                       ; $7a1e: $77
	add b                                            ; $7a1f: $80
	ei                                               ; $7a20: $fb
	add b                                            ; $7a21: $80
	ld [bc], a                                       ; $7a22: $02
	inc bc                                           ; $7a23: $03
	inc bc                                           ; $7a24: $03
	ld [bc], a                                       ; $7a25: $02
	ld [bc], a                                       ; $7a26: $02
	inc bc                                           ; $7a27: $03
	pop bc                                           ; $7a28: $c1
	add c                                            ; $7a29: $81
	ldh a, [$e0]                                     ; $7a2a: $f0 $e0
	sbc h                                            ; $7a2c: $9c
	ld hl, sp-$01                                    ; $7a2d: $f8 $ff
	add [hl]                                         ; $7a2f: $86
	db $e3                                           ; $7a30: $e3
	add c                                            ; $7a31: $81
	ld h, b                                          ; $7a32: $60
	add b                                            ; $7a33: $80
	ld h, b                                          ; $7a34: $60
	add b                                            ; $7a35: $80
	and b                                            ; $7a36: $a0
	nop                                              ; $7a37: $00
	or b                                             ; $7a38: $b0
	nop                                              ; $7a39: $00
	stop                                             ; $7a3a: $10 $00
	ld [hl], b                                       ; $7a3c: $70
	ld b, b                                          ; $7a3d: $40
	jr nz, @+$42                                     ; $7a3e: $20 $40

	nop                                              ; $7a40: $00
	add l                                            ; $7a41: $85
	nop                                              ; $7a42: $00
	ld [$18f8], sp                                   ; $7a43: $08 $f8 $18
	ld [$18e8], sp                                   ; $7a46: $08 $e8 $18
	db $10                                           ; $7a49: $10
	ldh a, [$e1]                                     ; $7a4a: $f0 $e1
	ldh [rSB], a                                     ; $7a4c: $e0 $01
	inc bc                                           ; $7a4e: $03
	ld d, a                                          ; $7a4f: $57
	rrca                                             ; $7a50: $0f
	ld e, a                                          ; $7a51: $5f
	cp a                                             ; $7a52: $bf
	rst $38                                          ; $7a53: $ff
	rst $38                                          ; $7a54: $ff
	rlca                                             ; $7a55: $07
	inc bc                                           ; $7a56: $03
	rrca                                             ; $7a57: $0f
	nop                                              ; $7a58: $00
	rra                                              ; $7a59: $1f
	nop                                              ; $7a5a: $00
	ld a, $fa                                        ; $7a5b: $3e $fa
	ld [hl], a                                       ; $7a5d: $77
	ret nz                                           ; $7a5e: $c0

	rst SubAFromDE                                          ; $7a5f: $df
	ld bc, $c09d                                     ; $7a60: $01 $9d $c0
	add b                                            ; $7a63: $80
	rla                                              ; $7a64: $17
	ret nz                                           ; $7a65: $c0

	ld a, a                                          ; $7a66: $7f
	jp nz, $e0df                                     ; $7a67: $c2 $df $e0

	ld a, [hl]                                       ; $7a6a: $7e
	ld l, e                                          ; $7a6b: $6b
	sbc h                                            ; $7a6c: $9c
	ld b, c                                          ; $7a6d: $41
	inc bc                                           ; $7a6e: $03
	rla                                              ; $7a6f: $17
	inc sp                                           ; $7a70: $33
	ret nz                                           ; $7a71: $c0

	rst SubAFromDE                                          ; $7a72: $df
	ld bc, $17ff                                     ; $7a73: $01 $ff $17
	ret nz                                           ; $7a76: $c0

	ld [hl], a                                       ; $7a77: $77
	jp nz, $2e76                                     ; $7a78: $c2 $76 $2e

	ld a, a                                          ; $7a7b: $7f
	add b                                            ; $7a7c: $80
	dec hl                                           ; $7a7d: $2b
	ret nz                                           ; $7a7e: $c0

	cp $17                                           ; $7a7f: $fe $17
	ret nz                                           ; $7a81: $c0

	ld a, a                                          ; $7a82: $7f
	and $ff                                          ; $7a83: $e6 $ff
	ld a, a                                          ; $7a85: $7f
	rst FarCall                                          ; $7a86: $f7
	ld a, a                                          ; $7a87: $7f
	jp c, $c047                                      ; $7a88: $da $47 $c0

	ld sp, hl                                        ; $7a8b: $f9
	ld bc, $d480                                     ; $7a8c: $01 $80 $d4
	dec sp                                           ; $7a8f: $3b
	sub b                                            ; $7a90: $90
	ld a, a                                          ; $7a91: $7f
	ld hl, $43ff                                     ; $7a92: $21 $ff $43
	cp $86                                           ; $7a95: $fe $86
	db $fd                                           ; $7a97: $fd
	add hl, bc                                       ; $7a98: $09
	rst $38                                          ; $7a99: $ff
	scf                                              ; $7a9a: $37
	cp $5f                                           ; $7a9b: $fe $5f
	add sp, -$02                                     ; $7a9d: $e8 $fe
	pop bc                                           ; $7a9f: $c1
	rst $38                                          ; $7aa0: $ff
	jp $efdd                                         ; $7aa1: $c3 $dd $ef


	cp l                                             ; $7aa4: $bd
	push hl                                          ; $7aa5: $e5
	or b                                             ; $7aa6: $b0
	pop hl                                           ; $7aa7: $e1
	ldh [$b0], a                                     ; $7aa8: $e0 $b0
	ldh a, [$b0]                                     ; $7aaa: $f0 $b0
	ld e, b                                          ; $7aac: $58
	add b                                            ; $7aad: $80
	or b                                             ; $7aae: $b0
	ld [hl], b                                       ; $7aaf: $70
	sbc b                                            ; $7ab0: $98
	ld l, b                                          ; $7ab1: $68
	sbc b                                            ; $7ab2: $98
	ld [hl], h                                       ; $7ab3: $74
	adc h                                            ; $7ab4: $8c
	ld l, h                                          ; $7ab5: $6c
	sub [hl]                                         ; $7ab6: $96
	ld c, $d6                                        ; $7ab7: $0e $d6
	rlca                                             ; $7ab9: $07
	rst SubAFromHL                                          ; $7aba: $d7
	dec d                                            ; $7abb: $15
	rst JumpTable                                          ; $7abc: $c7
	rlca                                             ; $7abd: $07
	rst JumpTable                                          ; $7abe: $c7
	ld d, $c7                                        ; $7abf: $16 $c7
	dec l                                            ; $7ac1: $2d
	rst SubAFromHL                                          ; $7ac2: $d7
	sbc l                                            ; $7ac3: $9d
	rst FarCall                                          ; $7ac4: $f7
	sub a                                            ; $7ac5: $97
	rst $38                                          ; $7ac6: $ff
	sub a                                            ; $7ac7: $97
	rst $38                                          ; $7ac8: $ff
	sub e                                            ; $7ac9: $93
	rst $38                                          ; $7aca: $ff
	set 7, a                                         ; $7acb: $cb $ff
	add b                                            ; $7acd: $80
	ret                                              ; $7ace: $c9


	rst $38                                          ; $7acf: $ff
	ld [hl], d                                       ; $7ad0: $72
	rst SubAFromDE                                          ; $7ad1: $df
	jp c, $9a8f                                      ; $7ad2: $da $8f $9a

	rrca                                             ; $7ad5: $0f
	ld a, [de]                                       ; $7ad6: $1a
	rrca                                             ; $7ad7: $0f
	ld c, $f7                                        ; $7ad8: $0e $f7
	rst FarCall                                          ; $7ada: $f7
	rst $38                                          ; $7adb: $ff
	rst $38                                          ; $7adc: $ff
	dec c                                            ; $7add: $0d

jr_06c_7ade:
	rst $38                                          ; $7ade: $ff
	inc b                                            ; $7adf: $04
	rst AddAOntoHL                                          ; $7ae0: $ef
	ldh a, [rIE]                                     ; $7ae1: $f0 $ff
	cp b                                             ; $7ae3: $b8
	scf                                              ; $7ae4: $37
	jr c, jr_06c_7ade                                ; $7ae5: $38 $f7

	ldh a, [$d0]                                     ; $7ae7: $f0 $d0
	ldh a, [$e0]                                     ; $7ae9: $f0 $e0
	and b                                            ; $7aeb: $a0
	ld h, b                                          ; $7aec: $60
	add c                                            ; $7aed: $81
	ldh [rP1], a                                     ; $7aee: $e0 $00
	nop                                              ; $7af0: $00
	ld e, c                                          ; $7af1: $59
	rst $38                                          ; $7af2: $ff
	ld e, c                                          ; $7af3: $59
	rst $38                                          ; $7af4: $ff
	call c, $def7                                    ; $7af5: $dc $f7 $de
	di                                               ; $7af8: $f3
	jp hl                                            ; $7af9: $e9


	cp a                                             ; $7afa: $bf
	rst SubAFromBC                                          ; $7afb: $e7
	cp a                                             ; $7afc: $bf
	rst FarCall                                          ; $7afd: $f7
	sbc h                                            ; $7afe: $9c
	ei                                               ; $7aff: $fb
	call z, $c57e                                    ; $7b00: $cc $7e $c5
	cp e                                             ; $7b03: $bb
	ld b, a                                          ; $7b04: $47
	rst $38                                          ; $7b05: $ff
	ld bc, $011d                                     ; $7b06: $01 $1d $01
	dec c                                            ; $7b09: $0d
	ld bc, $bf00                                     ; $7b0a: $01 $00 $bf
	ld b, c                                          ; $7b0d: $41
	ld h, b                                          ; $7b0e: $60
	add b                                            ; $7b0f: $80
	ld b, b                                          ; $7b10: $40
	ret z                                            ; $7b11: $c8

	ld a, a                                          ; $7b12: $7f
	add sp, $3f                                      ; $7b13: $e8 $3f
	db $e4                                           ; $7b15: $e4
	cp a                                             ; $7b16: $bf
	ldh a, [c]                                       ; $7b17: $f2
	sbc a                                            ; $7b18: $9f
	ld c, c                                          ; $7b19: $49
	rst $38                                          ; $7b1a: $ff
	db $f4                                           ; $7b1b: $f4
	rst $38                                          ; $7b1c: $ff
	cp $cf                                           ; $7b1d: $fe $cf
	db $fd                                           ; $7b1f: $fd
	ld b, e                                          ; $7b20: $43
	or $f9                                           ; $7b21: $f6 $f9
	ei                                               ; $7b23: $fb
	inc a                                            ; $7b24: $3c
	ccf                                              ; $7b25: $3f
	ld a, $f6                                        ; $7b26: $3e $f6
	push af                                          ; $7b28: $f5
	rst SubAFromHL                                          ; $7b29: $d7
	pop af                                           ; $7b2a: $f1
	rst GetHLinHL                                          ; $7b2b: $cf
	and c                                            ; $7b2c: $a1
	rst $38                                          ; $7b2d: $ff
	pop hl                                           ; $7b2e: $e1
	add b                                            ; $7b2f: $80
	dec c                                            ; $7b30: $0d
	inc bc                                           ; $7b31: $03
	ld b, $03                                        ; $7b32: $06 $03
	inc bc                                           ; $7b34: $03
	ld b, $0d                                        ; $7b35: $06 $0d
	ld b, $06                                        ; $7b37: $06 $06
	inc c                                            ; $7b39: $0c
	ld c, $1c                                        ; $7b3a: $0e $1c
	ld d, $3c                                        ; $7b3c: $16 $3c
	or h                                             ; $7b3e: $b4
	ld a, h                                          ; $7b3f: $7c
	jp hl                                            ; $7b40: $e9


	db $fc                                           ; $7b41: $fc

jr_06c_7b42:
	call z, $cdf9                                    ; $7b42: $cc $f9 $cd
	ld sp, hl                                        ; $7b45: $f9
	rst FarCall                                          ; $7b46: $f7

jr_06c_7b47:
	ld sp, hl                                        ; $7b47: $f9
	or $fb                                           ; $7b48: $f6 $fb
	di                                               ; $7b4a: $f3
	ld a, $e3                                        ; $7b4b: $3e $e3
	ld a, $e4                                        ; $7b4d: $3e $e4
	adc e                                            ; $7b4f: $8b
	ccf                                              ; $7b50: $3f
	ld h, h                                          ; $7b51: $64

jr_06c_7b52:
	ld a, a                                          ; $7b52: $7f
	adc d                                            ; $7b53: $8a
	rst $38                                          ; $7b54: $ff
	ld c, c                                          ; $7b55: $49
	rst $38                                          ; $7b56: $ff
	ld b, l                                          ; $7b57: $45
	rst $38                                          ; $7b58: $ff
	inc hl                                           ; $7b59: $23
	rst $38                                          ; $7b5a: $ff
	add hl, de                                       ; $7b5b: $19
	rst $38                                          ; $7b5c: $ff
	call z, Call_06c_63ff                            ; $7b5d: $cc $ff $63
	rst $38                                          ; $7b60: $ff
	ld e, b                                          ; $7b61: $58
	rst $38                                          ; $7b62: $ff
	rst GetHLinHL                                          ; $7b63: $cf
	ld a, e                                          ; $7b64: $7b
	ld l, d                                          ; $7b65: $6a
	sbc d                                            ; $7b66: $9a
	xor e                                            ; $7b67: $ab
	rst SubAFromDE                                          ; $7b68: $df
	xor l                                            ; $7b69: $ad
	db $db                                           ; $7b6a: $db
	dec l                                            ; $7b6b: $2d
	ld a, e                                          ; $7b6c: $7b
	cp $9d                                           ; $7b6d: $fe $9d
	xor l                                            ; $7b6f: $ad
	ld e, e                                          ; $7b70: $5b
	ld [hl], a                                       ; $7b71: $77
	cp $9d                                           ; $7b72: $fe $9d
	jp hl                                            ; $7b74: $e9


	ld e, a                                          ; $7b75: $5f
	ld [hl], a                                       ; $7b76: $77
	cp $87                                           ; $7b77: $fe $87
	xor c                                            ; $7b79: $a9
	rst SubAFromDE                                          ; $7b7a: $df
	di                                               ; $7b7b: $f3
	sbc a                                            ; $7b7c: $9f
	ldh a, [c]                                       ; $7b7d: $f2
	sbc [hl]                                         ; $7b7e: $9e
	ldh a, [c]                                       ; $7b7f: $f2
	sbc [hl]                                         ; $7b80: $9e
	sub $be                                          ; $7b81: $d6 $be
	db $e4                                           ; $7b83: $e4
	inc a                                            ; $7b84: $3c
	add sp, $38                                      ; $7b85: $e8 $38
	or b                                             ; $7b87: $b0
	ld [hl], b                                       ; $7b88: $70
	ldh [$60], a                                     ; $7b89: $e0 $60
	ld b, b                                          ; $7b8b: $40
	ret nz                                           ; $7b8c: $c0

	ld b, b                                          ; $7b8d: $40
	ret nz                                           ; $7b8e: $c0

	ldh a, [$f0]                                     ; $7b8f: $f0 $f0
	ld b, a                                          ; $7b91: $47
	nop                                              ; $7b92: $00
	sbc b                                            ; $7b93: $98
	rst $38                                          ; $7b94: $ff
	ret nz                                           ; $7b95: $c0

	cp $c1                                           ; $7b96: $fe $c1
	rst SubAFromDE                                          ; $7b98: $df
	db $e3                                           ; $7b99: $e3
	cp l                                             ; $7b9a: $bd
	ld a, d                                          ; $7b9b: $7a
	cp $9d                                           ; $7b9c: $fe $9d
	ldh [$b1], a                                     ; $7b9e: $e0 $b1
	ld [hl], a                                       ; $7ba0: $77
	nop                                              ; $7ba1: $00
	ld b, a                                          ; $7ba2: $47
	jr nz, jr_06c_7b42                               ; $7ba3: $20 $9d

	rst $38                                          ; $7ba5: $ff
	nop                                              ; $7ba6: $00
	ld l, a                                          ; $7ba7: $6f
	ld e, $df                                        ; $7ba8: $1e $df
	ldh a, [$9d]                                     ; $7baa: $f0 $9d
	ret nc                                           ; $7bac: $d0

	or b                                             ; $7bad: $b0
	scf                                              ; $7bae: $37
	jr nz, jr_06c_7b47                               ; $7baf: $20 $96

	ld a, a                                          ; $7bb1: $7f
	call nz, $45ba                                   ; $7bb2: $c4 $ba $45
	rst $38                                          ; $7bb5: $ff
	ld bc, $031f                                     ; $7bb6: $01 $1f $03
	rrca                                             ; $7bb9: $0f
	sbc $01                                          ; $7bba: $de $01
	scf                                              ; $7bbc: $37
	jr nz, jr_06c_7b52                               ; $7bbd: $20 $93

	cp $01                                           ; $7bbf: $fe $01
	rst FarCall                                          ; $7bc1: $f7
	ld hl, sp-$05                                    ; $7bc2: $f8 $fb
	inc a                                            ; $7bc4: $3c
	ld a, $3f                                        ; $7bc5: $3e $3f
	rst FarCall                                          ; $7bc7: $f7
	push af                                          ; $7bc8: $f5
	rst SubAFromHL                                          ; $7bc9: $d7
	or c                                             ; $7bca: $b1
	ld [hl], a                                       ; $7bcb: $77
	jr nz, @+$41                                     ; $7bcc: $20 $3f

	add b                                            ; $7bce: $80
	ld a, a                                          ; $7bcf: $7f
	cp $9c                                           ; $7bd0: $fe $9c

jr_06c_7bd2:
	sbc $e1                                          ; $7bd2: $de $e1
	cp a                                             ; $7bd4: $bf
	ld a, e                                          ; $7bd5: $7b
	ld a, [hl]                                       ; $7bd6: $7e
	sbc l                                            ; $7bd7: $9d
	db $ed                                           ; $7bd8: $ed
	or l                                             ; $7bd9: $b5
	cpl                                              ; $7bda: $2f
	add b                                            ; $7bdb: $80
	ld [hl], a                                       ; $7bdc: $77
	ld a, [hl]                                       ; $7bdd: $7e
	sbc e                                            ; $7bde: $9b
	ld a, a                                          ; $7bdf: $7f
	jr c, jr_06c_7bd2                                ; $7be0: $38 $f0

	ld hl, sp+$27                                    ; $7be2: $f8 $27
	add b                                            ; $7be4: $80
	sbc h                                            ; $7be5: $9c
	cp e                                             ; $7be6: $bb
	ld b, h                                          ; $7be7: $44
	cp $6b                                           ; $7be8: $fe $6b
	add b                                            ; $7bea: $80
	sbc [hl]                                         ; $7beb: $9e
	ld b, e                                          ; $7bec: $43
	inc sp                                           ; $7bed: $33
	add b                                            ; $7bee: $80
	ld a, a                                          ; $7bef: $7f
	ret nz                                           ; $7bf0: $c0

	ld a, a                                          ; $7bf1: $7f
	ld a, [hl]                                       ; $7bf2: $7e
	sbc c                                            ; $7bf3: $99
	ld a, d                                          ; $7bf4: $7a
	dec a                                            ; $7bf5: $3d
	rst SubAFromDE                                          ; $7bf6: $df
	rst $38                                          ; $7bf7: $ff
	rst SubAFromHL                                          ; $7bf8: $d7
	or l                                             ; $7bf9: $b5
	daa                                              ; $7bfa: $27
	add b                                            ; $7bfb: $80
	sub [hl]                                         ; $7bfc: $96
	rst SubAFromDE                                          ; $7bfd: $df
	ldh [$bf], a                                     ; $7bfe: $e0 $bf
	pop hl                                           ; $7c00: $e1
	cp a                                             ; $7c01: $bf
	xor $ef                                          ; $7c02: $ee $ef
	or e                                             ; $7c04: $b3
	pop af                                           ; $7c05: $f1
	dec hl                                           ; $7c06: $2b
	add b                                            ; $7c07: $80
	ld a, e                                          ; $7c08: $7b
	cp $9d                                           ; $7c09: $fe $9d
	ret c                                            ; $7c0b: $d8

	ldh a, [$7a]                                     ; $7c0c: $f0 $7a
	cp $df                                           ; $7c0e: $fe $df
	ldh [$2f], a                                     ; $7c10: $e0 $2f
	add b                                            ; $7c12: $80
	ld a, a                                          ; $7c13: $7f
	ldh [$9d], a                                     ; $7c14: $e0 $9d
	rra                                              ; $7c16: $1f
	ld [bc], a                                       ; $7c17: $02
	rla                                              ; $7c18: $17
	add b                                            ; $7c19: $80
	ld a, a                                          ; $7c1a: $7f
	cp $99                                           ; $7c1b: $fe $99
	cp $f1                                           ; $7c1d: $fe $f1
	rst $38                                          ; $7c1f: $ff
	rrca                                             ; $7c20: $0f
	rst $38                                          ; $7c21: $ff
	db $fd                                           ; $7c22: $fd
	ld [hl], a                                       ; $7c23: $77
	add b                                            ; $7c24: $80
	ei                                               ; $7c25: $fb
	adc d                                            ; $7c26: $8a
	inc bc                                           ; $7c27: $03
	ld [bc], a                                       ; $7c28: $02
	nop                                              ; $7c29: $00
	ld [bc], a                                       ; $7c2a: $02
	ld bc, $c001                                     ; $7c2b: $01 $01 $c0
	add b                                            ; $7c2e: $80
	ldh a, [$e0]                                     ; $7c2f: $f0 $e0
	sbc h                                            ; $7c31: $9c
	ld hl, sp-$01                                    ; $7c32: $f8 $ff
	add [hl]                                         ; $7c34: $86
	db $e3                                           ; $7c35: $e3
	add c                                            ; $7c36: $81
	ld h, b                                          ; $7c37: $60
	add b                                            ; $7c38: $80
	ld h, b                                          ; $7c39: $60
	add b                                            ; $7c3a: $80
	and b                                            ; $7c3b: $a0
	cp [hl]                                          ; $7c3c: $be
	or b                                             ; $7c3d: $b0
	db $10                                           ; $7c3e: $10
	ld [hl], b                                       ; $7c3f: $70
	sub l                                            ; $7c40: $95
	ld b, b                                          ; $7c41: $40
	jr nz, @+$42                                     ; $7c42: $20 $40

	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	ld hl, sp+$08                                    ; $7c46: $f8 $08
	nop                                              ; $7c48: $00
	ld [$7b10], sp                                   ; $7c49: $08 $10 $7b
	sub b                                            ; $7c4c: $90
	ld a, l                                          ; $7c4d: $7d
	res 2, h                                         ; $7c4e: $cb $94
	ld b, c                                          ; $7c50: $41
	inc bc                                           ; $7c51: $03
	rla                                              ; $7c52: $17
	rrca                                             ; $7c53: $0f
	ld e, a                                          ; $7c54: $5f
	cp a                                             ; $7c55: $bf
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rlca                                             ; $7c58: $07
	inc bc                                           ; $7c59: $03
	rrca                                             ; $7c5a: $0f
	cp e                                             ; $7c5b: $bb
	rra                                              ; $7c5c: $1f
	ld a, $00                                        ; $7c5d: $3e $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	inc bc                                           ; $7c61: $03
	ld a, e                                          ; $7c62: $7b
	jp nz, $17ff                                     ; $7c63: $c2 $ff $17

	ret nz                                           ; $7c66: $c0

	ld [hl], a                                       ; $7c67: $77
	jp nz, $8e75                                     ; $7c68: $c2 $75 $8e

	sbc [hl]                                         ; $7c6b: $9e
	ld bc, $c033                                     ; $7c6c: $01 $33 $c0
	sbc l                                            ; $7c6f: $9d
	ld [bc], a                                       ; $7c70: $02
	inc bc                                           ; $7c71: $03
	ld a, e                                          ; $7c72: $7b
	pop bc                                           ; $7c73: $c1
	dec de                                           ; $7c74: $1b
	ret nz                                           ; $7c75: $c0

	sbc h                                            ; $7c76: $9c
	ld [$f0f8], sp                                   ; $7c77: $08 $f8 $f0
	ld a, e                                          ; $7c7a: $7b
	jp nz, $f77f                                     ; $7c7b: $c2 $7f $f7

	ld a, a                                          ; $7c7e: $7f
	jp c, $c047                                      ; $7c7f: $da $47 $c0

	rlca                                             ; $7c82: $07
	ldh [$f7], a                                     ; $7c83: $e0 $f7
	ld bc, $d480                                     ; $7c85: $01 $80 $d4
	dec sp                                           ; $7c88: $3b
	sub b                                            ; $7c89: $90
	ld a, a                                          ; $7c8a: $7f
	ld hl, $43ff                                     ; $7c8b: $21 $ff $43
	cp $84                                           ; $7c8e: $fe $84
	rst $38                                          ; $7c90: $ff
	rrca                                             ; $7c91: $0f
	rst $38                                          ; $7c92: $ff
	ccf                                              ; $7c93: $3f
	ldh a, [$5f]                                     ; $7c94: $f0 $5f
	ldh [$fe], a                                     ; $7c96: $e0 $fe
	pop bc                                           ; $7c98: $c1
	rst $38                                          ; $7c99: $ff
	jp $efdd                                         ; $7c9a: $c3 $dd $ef


	cp l                                             ; $7c9d: $bd
	push hl                                          ; $7c9e: $e5
	or b                                             ; $7c9f: $b0
	pop hl                                           ; $7ca0: $e1
	ldh [$b0], a                                     ; $7ca1: $e0 $b0
	ldh a, [$b0]                                     ; $7ca3: $f0 $b0
	ld e, b                                          ; $7ca5: $58
	add b                                            ; $7ca6: $80
	or b                                             ; $7ca7: $b0
	ld [hl], b                                       ; $7ca8: $70
	sbc b                                            ; $7ca9: $98
	ld l, b                                          ; $7caa: $68
	sbc b                                            ; $7cab: $98
	ld [hl], h                                       ; $7cac: $74
	adc h                                            ; $7cad: $8c
	ld l, h                                          ; $7cae: $6c
	sub [hl]                                         ; $7caf: $96
	ld c, $d6                                        ; $7cb0: $0e $d6
	rlca                                             ; $7cb2: $07
	rst SubAFromHL                                          ; $7cb3: $d7
	dec d                                            ; $7cb4: $15
	rst JumpTable                                          ; $7cb5: $c7
	rlca                                             ; $7cb6: $07
	rst JumpTable                                          ; $7cb7: $c7
	ld d, $c7                                        ; $7cb8: $16 $c7
	dec l                                            ; $7cba: $2d
	rst SubAFromHL                                          ; $7cbb: $d7
	sbc l                                            ; $7cbc: $9d
	rst FarCall                                          ; $7cbd: $f7
	sub a                                            ; $7cbe: $97
	rst $38                                          ; $7cbf: $ff
	sub a                                            ; $7cc0: $97
	rst $38                                          ; $7cc1: $ff
	sub e                                            ; $7cc2: $93
	rst $38                                          ; $7cc3: $ff
	set 7, a                                         ; $7cc4: $cb $ff
	add b                                            ; $7cc6: $80
	ret                                              ; $7cc7: $c9


	rst $38                                          ; $7cc8: $ff
	ld [hl], d                                       ; $7cc9: $72
	rst SubAFromDE                                          ; $7cca: $df
	jp c, $9a8f                                      ; $7ccb: $da $8f $9a

	rrca                                             ; $7cce: $0f
	ld a, [de]                                       ; $7ccf: $1a
	rrca                                             ; $7cd0: $0f
	ld c, $87                                        ; $7cd1: $0e $87
	add a                                            ; $7cd3: $87
	rst FarCall                                          ; $7cd4: $f7
	di                                               ; $7cd5: $f3
	ld a, c                                          ; $7cd6: $79

jr_06c_7cd7:
	ei                                               ; $7cd7: $fb
	inc c                                            ; $7cd8: $0c
	rst AddAOntoHL                                          ; $7cd9: $ef
	ldh a, [rIE]                                     ; $7cda: $f0 $ff
	cp b                                             ; $7cdc: $b8
	scf                                              ; $7cdd: $37
	jr c, jr_06c_7cd7                                ; $7cde: $38 $f7

	ldh a, [$d0]                                     ; $7ce0: $f0 $d0
	ldh a, [$e0]                                     ; $7ce2: $f0 $e0
	and b                                            ; $7ce4: $a0
	ld a, b                                          ; $7ce5: $78
	add c                                            ; $7ce6: $81
	ldh [rP1], a                                     ; $7ce7: $e0 $00
	nop                                              ; $7ce9: $00
	ld e, c                                          ; $7cea: $59
	rst $38                                          ; $7ceb: $ff
	ld e, c                                          ; $7cec: $59
	rst $38                                          ; $7ced: $ff
	call c, $def7                                    ; $7cee: $dc $f7 $de
	di                                               ; $7cf1: $f3
	rst AddAOntoHL                                          ; $7cf2: $ef
	cp c                                             ; $7cf3: $b9
	and $bd                                          ; $7cf4: $e6 $bd
	push af                                          ; $7cf6: $f5
	sbc a                                            ; $7cf7: $9f
	ei                                               ; $7cf8: $fb
	rst GetHLinHL                                          ; $7cf9: $cf
	ld a, [hl]                                       ; $7cfa: $7e
	push bc                                          ; $7cfb: $c5
	cp e                                             ; $7cfc: $bb
	ld b, a                                          ; $7cfd: $47
	rst $38                                          ; $7cfe: $ff
	ld bc, $011f                                     ; $7cff: $01 $1f $01
	rrca                                             ; $7d02: $0f
	ld bc, $bf01                                     ; $7d03: $01 $01 $bf
	ld b, e                                          ; $7d06: $43
	ld h, b                                          ; $7d07: $60
	add b                                            ; $7d08: $80
	ld b, b                                          ; $7d09: $40
	ret z                                            ; $7d0a: $c8

	ld a, a                                          ; $7d0b: $7f
	add sp, $3f                                      ; $7d0c: $e8 $3f
	db $e4                                           ; $7d0e: $e4
	cp a                                             ; $7d0f: $bf
	ldh a, [c]                                       ; $7d10: $f2
	sbc a                                            ; $7d11: $9f
	ld a, c                                          ; $7d12: $79
	rst GetHLinHL                                          ; $7d13: $cf
	call nz, $feff                                   ; $7d14: $c4 $ff $fe
	rst $38                                          ; $7d17: $ff
	db $fd                                           ; $7d18: $fd
	ld b, e                                          ; $7d19: $43
	or $f9                                           ; $7d1a: $f6 $f9
	ei                                               ; $7d1c: $fb
	inc a                                            ; $7d1d: $3c
	ccf                                              ; $7d1e: $3f
	ld a, $f6                                        ; $7d1f: $3e $f6
	push af                                          ; $7d21: $f5
	rst SubAFromHL                                          ; $7d22: $d7
	pop af                                           ; $7d23: $f1
	rst GetHLinHL                                          ; $7d24: $cf
	and c                                            ; $7d25: $a1
	rst $38                                          ; $7d26: $ff
	pop hl                                           ; $7d27: $e1
	add b                                            ; $7d28: $80
	dec c                                            ; $7d29: $0d
	inc bc                                           ; $7d2a: $03
	ld b, $03                                        ; $7d2b: $06 $03
	inc bc                                           ; $7d2d: $03
	ld b, $0d                                        ; $7d2e: $06 $0d
	ld b, $06                                        ; $7d30: $06 $06
	inc c                                            ; $7d32: $0c
	ld c, $1c                                        ; $7d33: $0e $1c
	ld d, $3c                                        ; $7d35: $16 $3c
	or h                                             ; $7d37: $b4
	ld a, h                                          ; $7d38: $7c
	jp hl                                            ; $7d39: $e9


	db $fc                                           ; $7d3a: $fc

jr_06c_7d3b:
	call z, $cdf9                                    ; $7d3b: $cc $f9 $cd
	ld sp, hl                                        ; $7d3e: $f9
	rst FarCall                                          ; $7d3f: $f7
	ld sp, hl                                        ; $7d40: $f9
	or $fb                                           ; $7d41: $f6 $fb
	di                                               ; $7d43: $f3
	ld a, $e3                                        ; $7d44: $3e $e3
	ld a, $e4                                        ; $7d46: $3e $e4
	adc e                                            ; $7d48: $8b
	ccf                                              ; $7d49: $3f
	ld h, h                                          ; $7d4a: $64
	ld a, a                                          ; $7d4b: $7f
	adc d                                            ; $7d4c: $8a
	rst $38                                          ; $7d4d: $ff
	ld c, c                                          ; $7d4e: $49

jr_06c_7d4f:
	rst $38                                          ; $7d4f: $ff
	ld b, l                                          ; $7d50: $45
	rst $38                                          ; $7d51: $ff
	inc hl                                           ; $7d52: $23

jr_06c_7d53:
	rst $38                                          ; $7d53: $ff
	add hl, de                                       ; $7d54: $19
	rst $38                                          ; $7d55: $ff
	call z, Call_06c_63ff                            ; $7d56: $cc $ff $63
	rst $38                                          ; $7d59: $ff
	ld e, b                                          ; $7d5a: $58
	rst $38                                          ; $7d5b: $ff
	rst GetHLinHL                                          ; $7d5c: $cf
	ld a, e                                          ; $7d5d: $7b
	ld l, d                                          ; $7d5e: $6a
	sbc d                                            ; $7d5f: $9a
	xor e                                            ; $7d60: $ab
	rst SubAFromDE                                          ; $7d61: $df
	xor l                                            ; $7d62: $ad
	db $db                                           ; $7d63: $db
	dec l                                            ; $7d64: $2d
	ld a, e                                          ; $7d65: $7b
	cp $9d                                           ; $7d66: $fe $9d
	xor l                                            ; $7d68: $ad
	ld e, e                                          ; $7d69: $5b
	ld [hl], a                                       ; $7d6a: $77
	cp $9d                                           ; $7d6b: $fe $9d
	jp hl                                            ; $7d6d: $e9


	ld e, a                                          ; $7d6e: $5f
	ld [hl], a                                       ; $7d6f: $77
	cp $87                                           ; $7d70: $fe $87
	xor c                                            ; $7d72: $a9
	rst SubAFromDE                                          ; $7d73: $df
	di                                               ; $7d74: $f3
	sbc a                                            ; $7d75: $9f
	ldh a, [c]                                       ; $7d76: $f2
	sbc [hl]                                         ; $7d77: $9e
	ldh a, [c]                                       ; $7d78: $f2
	sbc [hl]                                         ; $7d79: $9e
	sub $be                                          ; $7d7a: $d6 $be
	db $e4                                           ; $7d7c: $e4
	inc a                                            ; $7d7d: $3c
	add sp, $38                                      ; $7d7e: $e8 $38
	or b                                             ; $7d80: $b0
	ld [hl], b                                       ; $7d81: $70
	ldh [$60], a                                     ; $7d82: $e0 $60
	ld b, b                                          ; $7d84: $40
	ret nz                                           ; $7d85: $c0

	ld b, b                                          ; $7d86: $40
	ret nz                                           ; $7d87: $c0

	ldh a, [$f0]                                     ; $7d88: $f0 $f0
	ld b, a                                          ; $7d8a: $47
	nop                                              ; $7d8b: $00
	sbc b                                            ; $7d8c: $98
	rst $38                                          ; $7d8d: $ff
	ret nz                                           ; $7d8e: $c0

	cp $c1                                           ; $7d8f: $fe $c1
	rst SubAFromDE                                          ; $7d91: $df
	db $e3                                           ; $7d92: $e3
	cp l                                             ; $7d93: $bd
	ld a, d                                          ; $7d94: $7a
	cp $9d                                           ; $7d95: $fe $9d
	ldh [$b1], a                                     ; $7d97: $e0 $b1
	ld [hl], a                                       ; $7d99: $77
	nop                                              ; $7d9a: $00
	ld b, a                                          ; $7d9b: $47
	jr nz, jr_06c_7d3b                               ; $7d9c: $20 $9d

	rst $38                                          ; $7d9e: $ff
	nop                                              ; $7d9f: $00
	ld l, a                                          ; $7da0: $6f
	ld e, $df                                        ; $7da1: $1e $df
	ldh a, [$9d]                                     ; $7da3: $f0 $9d
	ret nc                                           ; $7da5: $d0

	or b                                             ; $7da6: $b0
	scf                                              ; $7da7: $37
	jr nz, @-$63                                     ; $7da8: $20 $9b

	ld a, a                                          ; $7daa: $7f
	call nz, $45ba                                   ; $7dab: $c4 $ba $45
	ld a, e                                          ; $7dae: $7b
	jr nz, jr_06c_7d4f                               ; $7daf: $20 $9e

	inc bc                                           ; $7db1: $03
	ld a, e                                          ; $7db2: $7b
	jr nz, jr_06c_7d53                               ; $7db3: $20 $9e

	ld bc, $2037                                     ; $7db5: $01 $37 $20
	sub e                                            ; $7db8: $93
	cp $01                                           ; $7db9: $fe $01
	rst FarCall                                          ; $7dbb: $f7
	ld hl, sp-$05                                    ; $7dbc: $f8 $fb
	inc a                                            ; $7dbe: $3c
	ld a, $3f                                        ; $7dbf: $3e $3f
	rst FarCall                                          ; $7dc1: $f7
	push af                                          ; $7dc2: $f5
	rst SubAFromHL                                          ; $7dc3: $d7
	or c                                             ; $7dc4: $b1
	ld [hl], a                                       ; $7dc5: $77
	jr nz, @+$41                                     ; $7dc6: $20 $3f

	add b                                            ; $7dc8: $80
	ld a, a                                          ; $7dc9: $7f
	cp $9c                                           ; $7dca: $fe $9c

jr_06c_7dcc:
	sbc $e1                                          ; $7dcc: $de $e1
	cp a                                             ; $7dce: $bf
	ld a, e                                          ; $7dcf: $7b
	ld a, [hl]                                       ; $7dd0: $7e
	sbc l                                            ; $7dd1: $9d
	db $ed                                           ; $7dd2: $ed
	or l                                             ; $7dd3: $b5
	cpl                                              ; $7dd4: $2f
	add b                                            ; $7dd5: $80
	ld [hl], a                                       ; $7dd6: $77
	ld a, [hl]                                       ; $7dd7: $7e
	sbc e                                            ; $7dd8: $9b
	ld a, a                                          ; $7dd9: $7f
	jr c, jr_06c_7dcc                                ; $7dda: $38 $f0

	ld hl, sp+$27                                    ; $7ddc: $f8 $27
	add b                                            ; $7dde: $80
	sbc h                                            ; $7ddf: $9c
	cp e                                             ; $7de0: $bb
	ld b, h                                          ; $7de1: $44
	cp $13                                           ; $7de2: $fe $13
	add b                                            ; $7de4: $80
	ld a, a                                          ; $7de5: $7f
	ret nz                                           ; $7de6: $c0

	ld a, a                                          ; $7de7: $7f
	ld a, [hl]                                       ; $7de8: $7e
	sbc c                                            ; $7de9: $99
	ld a, d                                          ; $7dea: $7a
	dec a                                            ; $7deb: $3d
	rst SubAFromDE                                          ; $7dec: $df
	rst $38                                          ; $7ded: $ff
	rst SubAFromHL                                          ; $7dee: $d7
	or l                                             ; $7def: $b5
	daa                                              ; $7df0: $27
	add b                                            ; $7df1: $80
	sub [hl]                                         ; $7df2: $96
	rst SubAFromDE                                          ; $7df3: $df
	ldh [$bf], a                                     ; $7df4: $e0 $bf
	pop hl                                           ; $7df6: $e1
	cp a                                             ; $7df7: $bf
	xor $ef                                          ; $7df8: $ee $ef
	or e                                             ; $7dfa: $b3
	pop af                                           ; $7dfb: $f1
	dec hl                                           ; $7dfc: $2b
	add b                                            ; $7dfd: $80
	ld a, e                                          ; $7dfe: $7b
	cp $9d                                           ; $7dff: $fe $9d
	ld hl, sp-$10                                    ; $7e01: $f8 $f0
	ld a, d                                          ; $7e03: $7a
	cp $9e                                           ; $7e04: $fe $9e
	ld hl, sp+$2b                                    ; $7e06: $f8 $2b
	add b                                            ; $7e08: $80
	ld a, a                                          ; $7e09: $7f
	ldh [rIF], a                                     ; $7e0a: $e0 $0f
	add b                                            ; $7e0c: $80
	ld a, a                                          ; $7e0d: $7f
	cp $9d                                           ; $7e0e: $fe $9d
	cp $f1                                           ; $7e10: $fe $f1
	ld a, e                                          ; $7e12: $7b
	sub c                                            ; $7e13: $91
	sbc [hl]                                         ; $7e14: $9e
	db $fd                                           ; $7e15: $fd
	ld [hl], a                                       ; $7e16: $77
	add b                                            ; $7e17: $80
	ei                                               ; $7e18: $fb
	ld a, l                                          ; $7e19: $7d
	db $f4                                           ; $7e1a: $f4
	adc h                                            ; $7e1b: $8c
	inc bc                                           ; $7e1c: $03
	ld [bc], a                                       ; $7e1d: $02
	ld bc, $c001                                     ; $7e1e: $01 $01 $c0
	add b                                            ; $7e21: $80
	ldh a, [$e0]                                     ; $7e22: $f0 $e0
	sbc h                                            ; $7e24: $9c
	ld hl, sp-$01                                    ; $7e25: $f8 $ff
	add [hl]                                         ; $7e27: $86
	db $e3                                           ; $7e28: $e3
	add c                                            ; $7e29: $81
	ld h, b                                          ; $7e2a: $60
	add b                                            ; $7e2b: $80
	ld h, b                                          ; $7e2c: $60
	add b                                            ; $7e2d: $80
	and b                                            ; $7e2e: $a0
	cp [hl]                                          ; $7e2f: $be
	or b                                             ; $7e30: $b0
	db $10                                           ; $7e31: $10
	ld [hl], b                                       ; $7e32: $70
	sbc e                                            ; $7e33: $9b
	ld b, b                                          ; $7e34: $40
	jr nz, jr_06c_7e77                               ; $7e35: $20 $40

	nop                                              ; $7e37: $00
	cp a                                             ; $7e38: $bf
	ldh a, [rAUD2LOW]                                ; $7e39: $f0 $18
	sbc e                                            ; $7e3b: $9b
	ld [$f0f0], sp                                   ; $7e3c: $08 $f0 $f0
	nop                                              ; $7e3f: $00
	cp a                                             ; $7e40: $bf
	ld b, c                                          ; $7e41: $41
	ld bc, $0395                                     ; $7e42: $01 $95 $03
	rla                                              ; $7e45: $17
	rrca                                             ; $7e46: $0f
	ld e, a                                          ; $7e47: $5f
	cp a                                             ; $7e48: $bf
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rlca                                             ; $7e4b: $07
	inc bc                                           ; $7e4c: $03
	rrca                                             ; $7e4d: $0f
	cp d                                             ; $7e4e: $ba
	rra                                              ; $7e4f: $1f
	ld a, $00                                        ; $7e50: $3e $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	ld bc, $0b02                                     ; $7e54: $01 $02 $0b
	ret nz                                           ; $7e57: $c0

	rst SubAFromDE                                          ; $7e58: $df
	ld [$1898], sp                                   ; $7e59: $08 $98 $18
	ldh a, [$f0]                                     ; $7e5c: $f0 $f0
	ldh [rSB], a                                     ; $7e5e: $e0 $01
	nop                                              ; $7e60: $00
	ld b, c                                          ; $7e61: $41
	inc bc                                           ; $7e62: $03
	ret nz                                           ; $7e63: $c0

	inc bc                                           ; $7e64: $03
	ret nz                                           ; $7e65: $c0

	dec hl                                           ; $7e66: $2b
	ret nz                                           ; $7e67: $c0

	sbc e                                            ; $7e68: $9b
	ld [bc], a                                       ; $7e69: $02
	inc bc                                           ; $7e6a: $03
	pop bc                                           ; $7e6b: $c1
	add c                                            ; $7e6c: $81
	rla                                              ; $7e6d: $17
	ret nz                                           ; $7e6e: $c0

	sub [hl]                                         ; $7e6f: $96
	ld [$10f8], sp                                   ; $7e70: $08 $f8 $10
	ldh a, [$e1]                                     ; $7e73: $f0 $e1
	ldh [rSB], a                                     ; $7e75: $e0 $01

jr_06c_7e77:
	inc bc                                           ; $7e77: $03
	ld d, a                                          ; $7e78: $57
	ld d, e                                          ; $7e79: $53
	ret nz                                           ; $7e7a: $c0

	db $fc                                           ; $7e7b: $fc
	ld bc, $d480                                     ; $7e7c: $01 $80 $d4
	dec sp                                           ; $7e7f: $3b
	sub b                                            ; $7e80: $90
	ld a, a                                          ; $7e81: $7f
	ld hl, $43ff                                     ; $7e82: $21 $ff $43
	cp $86                                           ; $7e85: $fe $86
	rst $38                                          ; $7e87: $ff
	rrca                                             ; $7e88: $0f
	ld sp, hl                                        ; $7e89: $f9
	ccf                                              ; $7e8a: $3f
	ldh a, [$5f]                                     ; $7e8b: $f0 $5f
	ldh [rIE], a                                     ; $7e8d: $e0 $ff
	pop bc                                           ; $7e8f: $c1
	rst $38                                          ; $7e90: $ff
	jp $efdd                                         ; $7e91: $c3 $dd $ef


	cp l                                             ; $7e94: $bd
	push hl                                          ; $7e95: $e5
	or b                                             ; $7e96: $b0
	pop hl                                           ; $7e97: $e1
	ldh [$b0], a                                     ; $7e98: $e0 $b0
	pop af                                           ; $7e9a: $f1
	or b                                             ; $7e9b: $b0
	ld e, b                                          ; $7e9c: $58
	add b                                            ; $7e9d: $80
	or b                                             ; $7e9e: $b0
	ld [hl], b                                       ; $7e9f: $70
	sbc b                                            ; $7ea0: $98
	ld l, b                                          ; $7ea1: $68
	sbc b                                            ; $7ea2: $98
	ld [hl], h                                       ; $7ea3: $74
	adc h                                            ; $7ea4: $8c
	ld l, h                                          ; $7ea5: $6c
	sub [hl]                                         ; $7ea6: $96
	ld c, $d6                                        ; $7ea7: $0e $d6
	rlca                                             ; $7ea9: $07
	rst SubAFromHL                                          ; $7eaa: $d7
	dec d                                            ; $7eab: $15
	rst JumpTable                                          ; $7eac: $c7
	rlca                                             ; $7ead: $07
	rst JumpTable                                          ; $7eae: $c7
	ld d, $c7                                        ; $7eaf: $16 $c7
	dec l                                            ; $7eb1: $2d
	rst SubAFromHL                                          ; $7eb2: $d7
	sbc l                                            ; $7eb3: $9d
	rst FarCall                                          ; $7eb4: $f7
	sub a                                            ; $7eb5: $97
	rst $38                                          ; $7eb6: $ff
	sub a                                            ; $7eb7: $97
	rst $38                                          ; $7eb8: $ff
	sub e                                            ; $7eb9: $93
	rst $38                                          ; $7eba: $ff
	set 7, a                                         ; $7ebb: $cb $ff
	add b                                            ; $7ebd: $80
	ret                                              ; $7ebe: $c9


	rst $38                                          ; $7ebf: $ff
	ld [hl], d                                       ; $7ec0: $72
	rst SubAFromDE                                          ; $7ec1: $df
	jp c, $9a8f                                      ; $7ec2: $da $8f $9a

	rrca                                             ; $7ec5: $0f
	ld a, [de]                                       ; $7ec6: $1a
	rrca                                             ; $7ec7: $0f
	ld c, $87                                        ; $7ec8: $0e $87
	rlca                                             ; $7eca: $07
	rst JumpTable                                          ; $7ecb: $c7
	jp $f3f1                                         ; $7ecc: $c3 $f1 $f3


	inc a                                            ; $7ecf: $3c
	rst $38                                          ; $7ed0: $ff
	call z, $f0ff                                    ; $7ed1: $cc $ff $f0
	ccf                                              ; $7ed4: $3f
	jr c, @-$07                                      ; $7ed5: $38 $f7

	ldh a, [$d0]                                     ; $7ed7: $f0 $d0
	ldh a, [$e0]                                     ; $7ed9: $f0 $e0
	and b                                            ; $7edb: $a0
	ld a, b                                          ; $7edc: $78
	add c                                            ; $7edd: $81
	ldh [rP1], a                                     ; $7ede: $e0 $00
	nop                                              ; $7ee0: $00
	ld e, c                                          ; $7ee1: $59
	rst $38                                          ; $7ee2: $ff
	ld e, c                                          ; $7ee3: $59
	rst $38                                          ; $7ee4: $ff
	call c, $def7                                    ; $7ee5: $dc $f7 $de
	di                                               ; $7ee8: $f3
	rst AddAOntoHL                                          ; $7ee9: $ef
	cp c                                             ; $7eea: $b9
	and $bd                                          ; $7eeb: $e6 $bd
	push af                                          ; $7eed: $f5
	sbc a                                            ; $7eee: $9f
	ei                                               ; $7eef: $fb
	rst GetHLinHL                                          ; $7ef0: $cf
	ld a, [hl]                                       ; $7ef1: $7e
	push bc                                          ; $7ef2: $c5
	cp e                                             ; $7ef3: $bb
	ld b, l                                          ; $7ef4: $45
	rst $38                                          ; $7ef5: $ff
	inc bc                                           ; $7ef6: $03
	dec e                                            ; $7ef7: $1d
	ld bc, $010d                                     ; $7ef8: $01 $0d $01
	nop                                              ; $7efb: $00
	cp a                                             ; $7efc: $bf
	ld b, c                                          ; $7efd: $41
	ld h, b                                          ; $7efe: $60

Jump_06c_7eff:
	add b                                            ; $7eff: $80
	ld b, b                                          ; $7f00: $40
	ret z                                            ; $7f01: $c8

	ld a, a                                          ; $7f02: $7f
	add sp, $3f                                      ; $7f03: $e8 $3f
	db $e4                                           ; $7f05: $e4
	cp a                                             ; $7f06: $bf
	sub d                                            ; $7f07: $92
	rst $38                                          ; $7f08: $ff
	ld l, c                                          ; $7f09: $69
	rst $38                                          ; $7f0a: $ff
	call nc, $feef                                   ; $7f0b: $d4 $ef $fe
	rst JumpTable                                          ; $7f0e: $c7
	db $fd                                           ; $7f0f: $fd
	ld b, e                                          ; $7f10: $43
	or $79                                           ; $7f11: $f6 $79
	ei                                               ; $7f13: $fb
	db $fc                                           ; $7f14: $fc
	ccf                                              ; $7f15: $3f
	ld a, $f6                                        ; $7f16: $3e $f6
	push af                                          ; $7f18: $f5
	rst SubAFromHL                                          ; $7f19: $d7
	pop af                                           ; $7f1a: $f1
	rst GetHLinHL                                          ; $7f1b: $cf
	and c                                            ; $7f1c: $a1
	rst $38                                          ; $7f1d: $ff
	pop hl                                           ; $7f1e: $e1
	add b                                            ; $7f1f: $80
	dec c                                            ; $7f20: $0d
	inc bc                                           ; $7f21: $03
	ld b, $03                                        ; $7f22: $06 $03
	inc bc                                           ; $7f24: $03
	ld b, $0d                                        ; $7f25: $06 $0d
	ld b, $06                                        ; $7f27: $06 $06

jr_06c_7f29:
	inc c                                            ; $7f29: $0c
	ld c, $1c                                        ; $7f2a: $0e $1c
	ld d, $3c                                        ; $7f2c: $16 $3c
	or h                                             ; $7f2e: $b4
	ld a, h                                          ; $7f2f: $7c
	jp hl                                            ; $7f30: $e9


	db $fc                                           ; $7f31: $fc
	call z, $cdf9                                    ; $7f32: $cc $f9 $cd
	ld sp, hl                                        ; $7f35: $f9
	rst FarCall                                          ; $7f36: $f7
	ld sp, hl                                        ; $7f37: $f9
	or $fb                                           ; $7f38: $f6 $fb
	di                                               ; $7f3a: $f3

jr_06c_7f3b:
	ld a, $e3                                        ; $7f3b: $3e $e3
	ld a, $e4                                        ; $7f3d: $3e $e4
	sub e                                            ; $7f3f: $93
	ccf                                              ; $7f40: $3f
	ld h, h                                          ; $7f41: $64

jr_06c_7f42:
	ld a, a                                          ; $7f42: $7f
	adc d                                            ; $7f43: $8a
	rst $38                                          ; $7f44: $ff
	ld c, c                                          ; $7f45: $49
	rst $38                                          ; $7f46: $ff
	ld b, l                                          ; $7f47: $45
	rst $38                                          ; $7f48: $ff
	inc hl                                           ; $7f49: $23
	rst $38                                          ; $7f4a: $ff
	add hl, de                                       ; $7f4b: $19
	ld a, e                                          ; $7f4c: $7b
	add a                                            ; $7f4d: $87
	sbc d                                            ; $7f4e: $9a
	ld h, e                                          ; $7f4f: $63
	rst $38                                          ; $7f50: $ff
	ld e, b                                          ; $7f51: $58
	rst $38                                          ; $7f52: $ff
	rst GetHLinHL                                          ; $7f53: $cf
	ld a, e                                          ; $7f54: $7b
	ld l, d                                          ; $7f55: $6a
	sbc d                                            ; $7f56: $9a
	xor e                                            ; $7f57: $ab
	rst SubAFromDE                                          ; $7f58: $df
	xor l                                            ; $7f59: $ad
	db $db                                           ; $7f5a: $db
	dec l                                            ; $7f5b: $2d
	ld a, e                                          ; $7f5c: $7b
	cp $9d                                           ; $7f5d: $fe $9d
	xor l                                            ; $7f5f: $ad
	ld e, e                                          ; $7f60: $5b
	ld [hl], a                                       ; $7f61: $77
	cp $9d                                           ; $7f62: $fe $9d
	jp hl                                            ; $7f64: $e9


	ld e, a                                          ; $7f65: $5f
	ld [hl], a                                       ; $7f66: $77
	cp $87                                           ; $7f67: $fe $87
	xor c                                            ; $7f69: $a9
	rst SubAFromDE                                          ; $7f6a: $df
	di                                               ; $7f6b: $f3
	sbc a                                            ; $7f6c: $9f
	ldh a, [c]                                       ; $7f6d: $f2
	sbc [hl]                                         ; $7f6e: $9e
	ldh a, [c]                                       ; $7f6f: $f2
	sbc [hl]                                         ; $7f70: $9e
	sub $be                                          ; $7f71: $d6 $be
	db $e4                                           ; $7f73: $e4
	inc a                                            ; $7f74: $3c
	add sp, $38                                      ; $7f75: $e8 $38
	or b                                             ; $7f77: $b0
	ld [hl], b                                       ; $7f78: $70
	ldh [$60], a                                     ; $7f79: $e0 $60
	ld b, b                                          ; $7f7b: $40
	ret nz                                           ; $7f7c: $c0

	ld b, b                                          ; $7f7d: $40
	ret nz                                           ; $7f7e: $c0

	ldh a, [$f0]                                     ; $7f7f: $f0 $f0
	ld b, e                                          ; $7f81: $43
	nop                                              ; $7f82: $00
	sbc c                                            ; $7f83: $99
	ret nz                                           ; $7f84: $c0

	cp $c1                                           ; $7f85: $fe $c1
	rst SubAFromDE                                          ; $7f87: $df
	db $e3                                           ; $7f88: $e3
	cp l                                             ; $7f89: $bd
	ld a, d                                          ; $7f8a: $7a
	cp $9c                                           ; $7f8b: $fe $9c
	ldh [$b1], a                                     ; $7f8d: $e0 $b1
	di                                               ; $7f8f: $f3
	ld a, e                                          ; $7f90: $7b
	nop                                              ; $7f91: $00
	ld b, e                                          ; $7f92: $43
	jr nz, jr_06c_7f29                               ; $7f93: $20 $94

	inc c                                            ; $7f95: $0c
	rst $38                                          ; $7f96: $ff
	ldh [rIE], a                                     ; $7f97: $e0 $ff
	cp b                                             ; $7f99: $b8
	ccf                                              ; $7f9a: $3f
	inc a                                            ; $7f9b: $3c
	ldh a, [$f0]                                     ; $7f9c: $f0 $f0
	ret nc                                           ; $7f9e: $d0

	or b                                             ; $7f9f: $b0
	cpl                                              ; $7fa0: $2f
	jr nz, jr_06c_7f3b                               ; $7fa1: $20 $98

	cp d                                             ; $7fa3: $ba
	ld b, l                                          ; $7fa4: $45
	rst $38                                          ; $7fa5: $ff
	ld bc, $031f                                     ; $7fa6: $01 $1f $03
	rrca                                             ; $7fa9: $0f
	sbc $01                                          ; $7faa: $de $01
	scf                                              ; $7fac: $37
	jr nz, jr_06c_7f42                               ; $7fad: $20 $93

	cp $41                                           ; $7faf: $fe $41
	rst FarCall                                          ; $7fb1: $f7
	ld hl, sp-$05                                    ; $7fb2: $f8 $fb
	inc a                                            ; $7fb4: $3c
	ld a, $3f                                        ; $7fb5: $3e $3f
	rst FarCall                                          ; $7fb7: $f7
	push af                                          ; $7fb8: $f5
	rst SubAFromHL                                          ; $7fb9: $d7
	or c                                             ; $7fba: $b1
	ld [hl], a                                       ; $7fbb: $77
	jr nz, jr_06c_7ffd                               ; $7fbc: $20 $3f

	add b                                            ; $7fbe: $80
	ld a, a                                          ; $7fbf: $7f
	cp $9c                                           ; $7fc0: $fe $9c
	sbc $e1                                          ; $7fc2: $de $e1
	cp a                                             ; $7fc4: $bf
	ld a, e                                          ; $7fc5: $7b
	ld a, [hl]                                       ; $7fc6: $7e
	sbc l                                            ; $7fc7: $9d
	db $ed                                           ; $7fc8: $ed
	or l                                             ; $7fc9: $b5
	dec hl                                           ; $7fca: $2b
	add b                                            ; $7fcb: $80
	sbc b                                            ; $7fcc: $98
	nop                                              ; $7fcd: $00
	rst AddAOntoHL                                          ; $7fce: $ef
	ldh a, [$7f]                                     ; $7fcf: $f0 $7f
	jr c, @-$0e                                      ; $7fd1: $38 $f0

	ld hl, sp+$27                                    ; $7fd3: $f8 $27
	add b                                            ; $7fd5: $80
	sbc h                                            ; $7fd6: $9c
	cp e                                             ; $7fd7: $bb
	ld b, h                                          ; $7fd8: $44
	cp $6b                                           ; $7fd9: $fe $6b
	add b                                            ; $7fdb: $80
	sbc [hl]                                         ; $7fdc: $9e
	ld b, e                                          ; $7fdd: $43
	inc sp                                           ; $7fde: $33
	add b                                            ; $7fdf: $80
	ld a, a                                          ; $7fe0: $7f
	ret nz                                           ; $7fe1: $c0

	ld a, a                                          ; $7fe2: $7f
	ld a, [hl]                                       ; $7fe3: $7e
	sbc c                                            ; $7fe4: $99
	ld a, d                                          ; $7fe5: $7a
	dec a                                            ; $7fe6: $3d
	rst SubAFromDE                                          ; $7fe7: $df
	rst $38                                          ; $7fe8: $ff
	rst SubAFromHL                                          ; $7fe9: $d7
	or l                                             ; $7fea: $b5
	daa                                              ; $7feb: $27
	add b                                            ; $7fec: $80
	sub a                                            ; $7fed: $97
	rst SubAFromDE                                          ; $7fee: $df
	ldh [$bf], a                                     ; $7fef: $e0 $bf
	pop hl                                           ; $7ff1: $e1
	cp a                                             ; $7ff2: $bf
	xor $ef                                          ; $7ff3: $ee $ef
	or e                                             ; $7ff5: $b3
	halt                                             ; $7ff6: $76
	nop                                              ; $7ff7: $00
	scf                                              ; $7ff8: $37
	add b                                            ; $7ff9: $80
	ld a, e                                          ; $7ffa: $7b
	cp $99                                           ; $7ffb: $fe $99

jr_06c_7ffd:
	ret c                                            ; $7ffd: $d8

	ldh a, [$38]                                     ; $7ffe: $f0 $38
