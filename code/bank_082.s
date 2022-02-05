; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $082", ROMX[$4000], BANK[$82]

	pop hl                                           ; $4000: $e1
	ld [bc], a                                       ; $4001: $02
	inc b                                            ; $4002: $04
	ld d, [hl]                                       ; $4003: $56
	db $e4                                           ; $4004: $e4
	nop                                              ; $4005: $00
	rla                                              ; $4006: $17

Jump_082_4007:
	ld b, $8f                                        ; $4007: $06 $8f
	add hl, bc                                       ; $4009: $09
	ld de, $02e1                                     ; $400a: $11 $e1 $02
	inc bc                                           ; $400d: $03
	rla                                              ; $400e: $17
	ret nz                                           ; $400f: $c0

	ld bc, $06a0                                     ; $4010: $01 $a0 $06
	ld b, $be                                        ; $4013: $06 $be
	pop hl                                           ; $4015: $e1
	ld [bc], a                                       ; $4016: $02
	inc b                                            ; $4017: $04
	ld c, l                                          ; $4018: $4d
	db $e4                                           ; $4019: $e4
	nop                                              ; $401a: $00
	ld [bc], a                                       ; $401b: $02
	add hl, bc                                       ; $401c: $09
	ld [$02e1], sp                                   ; $401d: $08 $e1 $02
	add hl, bc                                       ; $4020: $09
	ld [hl], $e5                                     ; $4021: $36 $e5
	dec hl                                           ; $4023: $2b
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	add hl, bc                                       ; $4026: $09
	inc d                                            ; $4027: $14
	ret nc                                           ; $4028: $d0

	add e                                            ; $4029: $83
	ld bc, $d0de                                     ; $402a: $01 $de $d0
	ret nz                                           ; $402d: $c0

	ld bc, $06a0                                     ; $402e: $01 $a0 $06
	ld b, $c2                                        ; $4031: $06 $c2
	ret nz                                           ; $4033: $c0

	ld bc, $01a0                                     ; $4034: $01 $a0 $01
	ld b, $cb                                        ; $4037: $06 $cb
	db $e4                                           ; $4039: $e4
	nop                                              ; $403a: $00
	ld [bc], a                                       ; $403b: $02
	add hl, bc                                       ; $403c: $09
	ld e, $c0                                        ; $403d: $1e $c0
	set 0, b                                         ; $403f: $cb $c0
	ld de, $00e3                                     ; $4041: $11 $e3 $00
	or d                                             ; $4044: $b2
	ldh [rSB], a                                     ; $4045: $e0 $01
	adc l                                            ; $4047: $8d
	ret nz                                           ; $4048: $c0

	jp z, $80a0                                      ; $4049: $ca $a0 $80

	and b                                            ; $404c: $a0
	ld a, [de]                                       ; $404d: $1a
	nop                                              ; $404e: $00
	inc bc                                           ; $404f: $03
	db $e4                                           ; $4050: $e4
	nop                                              ; $4051: $00
	dec bc                                           ; $4052: $0b
	rst $38                                          ; $4053: $ff
	rlca                                             ; $4054: $07
	ld b, b                                          ; $4055: $40
	add b                                            ; $4056: $80
	and b                                            ; $4057: $a0
	ld a, [de]                                       ; $4058: $1a
	db $e4                                           ; $4059: $e4
	nop                                              ; $405a: $00
	ld b, e                                          ; $405b: $43
	ld [$063f], sp                                   ; $405c: $08 $3f $06
	ret nc                                           ; $405f: $d0

	add hl, bc                                       ; $4060: $09
	ld de, $02e1                                     ; $4061: $11 $e1 $02
	inc bc                                           ; $4064: $03
	rrca                                             ; $4065: $0f
	ret nz                                           ; $4066: $c0

	ld bc, $06a0                                     ; $4067: $01 $a0 $06
	ld b, $d2                                        ; $406a: $06 $d2
	pop hl                                           ; $406c: $e1
	ld [bc], a                                       ; $406d: $02
	inc b                                            ; $406e: $04
	dec sp                                           ; $406f: $3b
	db $e4                                           ; $4070: $e4
	nop                                              ; $4071: $00
	ld [hl], h                                       ; $4072: $74
	ld b, $db                                        ; $4073: $06 $db
	add hl, bc                                       ; $4075: $09
	ld de, $02e1                                     ; $4076: $11 $e1 $02
	inc bc                                           ; $4079: $03
	rra                                              ; $407a: $1f
	ret nz                                           ; $407b: $c0

	ld bc, $06a0                                     ; $407c: $01 $a0 $06
	ld b, $dd                                        ; $407f: $06 $dd
	pop hl                                           ; $4081: $e1
	ld [bc], a                                       ; $4082: $02
	inc b                                            ; $4083: $04
	ld e, a                                          ; $4084: $5f
	db $e4                                           ; $4085: $e4
	nop                                              ; $4086: $00
	ld e, a                                          ; $4087: $5f
	ld b, $e6                                        ; $4088: $06 $e6
	add hl, bc                                       ; $408a: $09
	ld de, $02e1                                     ; $408b: $11 $e1 $02
	inc bc                                           ; $408e: $03
	rla                                              ; $408f: $17
	ret nz                                           ; $4090: $c0

	ld bc, $06a0                                     ; $4091: $01 $a0 $06
	ld b, $e8                                        ; $4094: $06 $e8
	pop hl                                           ; $4096: $e1
	ld [bc], a                                       ; $4097: $02
	inc b                                            ; $4098: $04
	ld c, l                                          ; $4099: $4d
	db $e4                                           ; $409a: $e4
	nop                                              ; $409b: $00
	ld c, d                                          ; $409c: $4a
	jr z, jr_082_40a5                                ; $409d: $28 $06

	ret nz                                           ; $409f: $c0

	ld bc, $06a0                                     ; $40a0: $01 $a0 $06
	ld b, $f2                                        ; $40a3: $06 $f2

jr_082_40a5:
	ccf                                              ; $40a5: $3f
	ld b, $fa                                        ; $40a6: $06 $fa
	add hl, bc                                       ; $40a8: $09
	ld de, $02e1                                     ; $40a9: $11 $e1 $02
	inc bc                                           ; $40ac: $03
	inc de                                           ; $40ad: $13
	ret nz                                           ; $40ae: $c0

	ld bc, $06a0                                     ; $40af: $01 $a0 $06
	ld b, $fe                                        ; $40b2: $06 $fe
	pop hl                                           ; $40b4: $e1
	ld [bc], a                                       ; $40b5: $02
	inc b                                            ; $40b6: $04
	ld b, h                                          ; $40b7: $44
	db $e4                                           ; $40b8: $e4
	nop                                              ; $40b9: $00
	inc l                                            ; $40ba: $2c
	rlca                                             ; $40bb: $07
	ld [$1109], sp                                   ; $40bc: $08 $09 $11
	pop hl                                           ; $40bf: $e1
	ld [bc], a                                       ; $40c0: $02
	inc bc                                           ; $40c1: $03
	rra                                              ; $40c2: $1f
	ret nz                                           ; $40c3: $c0

	ld bc, $06a0                                     ; $40c4: $01 $a0 $06
	rlca                                             ; $40c7: $07
	dec bc                                           ; $40c8: $0b
	pop hl                                           ; $40c9: $e1
	ld [bc], a                                       ; $40ca: $02
	inc b                                            ; $40cb: $04
	ld e, a                                          ; $40cc: $5f
	db $e4                                           ; $40cd: $e4
	nop                                              ; $40ce: $00
	rla                                              ; $40cf: $17
	rlca                                             ; $40d0: $07
	ld a, [de]                                       ; $40d1: $1a
	add hl, bc                                       ; $40d2: $09
	ld de, $02e1                                     ; $40d3: $11 $e1 $02
	inc bc                                           ; $40d6: $03
	rla                                              ; $40d7: $17
	ret nz                                           ; $40d8: $c0

	ld bc, $06a0                                     ; $40d9: $01 $a0 $06
	rlca                                             ; $40dc: $07
	ld e, $e1                                        ; $40dd: $1e $e1
	ld [bc], a                                       ; $40df: $02
	inc b                                            ; $40e0: $04
	ld c, l                                          ; $40e1: $4d
	db $e4                                           ; $40e2: $e4
	nop                                              ; $40e3: $00
	ld [bc], a                                       ; $40e4: $02
	add hl, bc                                       ; $40e5: $09
	dec d                                            ; $40e6: $15
	ret nz                                           ; $40e7: $c0

	set 0, b                                         ; $40e8: $cb $c0
	ld de, $00e3                                     ; $40ea: $11 $e3 $00
	or c                                             ; $40ed: $b1
	pop hl                                           ; $40ee: $e1
	ld [bc], a                                       ; $40ef: $02
	ld [bc], a                                       ; $40f0: $02
	ld h, b                                          ; $40f1: $60
	ret nz                                           ; $40f2: $c0

	ld d, [hl]                                       ; $40f3: $56
	jp c, $10e0                                      ; $40f4: $da $e0 $10

	ret nc                                           ; $40f7: $d0

	push hl                                          ; $40f8: $e5
	dec hl                                           ; $40f9: $2b
	nop                                              ; $40fa: $00
	nop                                              ; $40fb: $00
	add hl, bc                                       ; $40fc: $09
	ld c, $d0                                        ; $40fd: $0e $d0
	add e                                            ; $40ff: $83
	ld bc, $d0de                                     ; $4100: $01 $de $d0
	ret nz                                           ; $4103: $c0

	ld bc, $06a0                                     ; $4104: $01 $a0 $06
	rlca                                             ; $4107: $07
	inc hl                                           ; $4108: $23
	db $e4                                           ; $4109: $e4
	nop                                              ; $410a: $00
	ld [bc], a                                       ; $410b: $02
	add hl, bc                                       ; $410c: $09
	ld e, $c0                                        ; $410d: $1e $c0
	set 0, b                                         ; $410f: $cb $c0
	ld de, $00e3                                     ; $4111: $11 $e3 $00
	xor a                                            ; $4114: $af
	ldh [rP1], a                                     ; $4115: $e0 $00
	cp l                                             ; $4117: $bd
	ret nz                                           ; $4118: $c0

	jp z, $80a0                                      ; $4119: $ca $a0 $80

	and b                                            ; $411c: $a0
	dec de                                           ; $411d: $1b
	nop                                              ; $411e: $00
	inc bc                                           ; $411f: $03
	db $e4                                           ; $4120: $e4
	nop                                              ; $4121: $00
	dec bc                                           ; $4122: $0b
	rst $38                                          ; $4123: $ff
	rlca                                             ; $4124: $07
	ld b, b                                          ; $4125: $40
	add b                                            ; $4126: $80
	and b                                            ; $4127: $a0
	dec de                                           ; $4128: $1b
	db $e4                                           ; $4129: $e4
	nop                                              ; $412a: $00
	ld c, d                                          ; $412b: $4a
	jr z, jr_082_4134                                ; $412c: $28 $06

	ret nz                                           ; $412e: $c0

	ld bc, $06a0                                     ; $412f: $01 $a0 $06
	rlca                                             ; $4132: $07
	ld a, [hl+]                                      ; $4133: $2a

jr_082_4134:
	ccf                                              ; $4134: $3f
	rlca                                             ; $4135: $07
	ld l, $09                                        ; $4136: $2e $09
	ld de, $02e1                                     ; $4138: $11 $e1 $02
	inc bc                                           ; $413b: $03
	inc de                                           ; $413c: $13
	ret nz                                           ; $413d: $c0

	ld bc, $06a0                                     ; $413e: $01 $a0 $06
	rlca                                             ; $4141: $07
	inc sp                                           ; $4142: $33
	pop hl                                           ; $4143: $e1
	ld [bc], a                                       ; $4144: $02
	inc b                                            ; $4145: $04
	ld b, h                                          ; $4146: $44
	db $e4                                           ; $4147: $e4
	nop                                              ; $4148: $00
	ld [hl], h                                       ; $4149: $74
	rlca                                             ; $414a: $07
	add hl, sp                                       ; $414b: $39
	add hl, bc                                       ; $414c: $09
	ld de, $02e1                                     ; $414d: $11 $e1 $02
	inc bc                                           ; $4150: $03
	rra                                              ; $4151: $1f
	ret nz                                           ; $4152: $c0

	ld bc, $06a0                                     ; $4153: $01 $a0 $06
	rlca                                             ; $4156: $07
	ld b, c                                          ; $4157: $41
	pop hl                                           ; $4158: $e1
	ld [bc], a                                       ; $4159: $02
	inc b                                            ; $415a: $04
	ld e, a                                          ; $415b: $5f
	db $e4                                           ; $415c: $e4
	nop                                              ; $415d: $00
	ld e, a                                          ; $415e: $5f
	rlca                                             ; $415f: $07
	ld b, a                                          ; $4160: $47
	add hl, bc                                       ; $4161: $09
	ld de, $02e1                                     ; $4162: $11 $e1 $02
	inc bc                                           ; $4165: $03
	rla                                              ; $4166: $17
	ret nz                                           ; $4167: $c0

	ld bc, $06a0                                     ; $4168: $01 $a0 $06
	rlca                                             ; $416b: $07
	ld c, [hl]                                       ; $416c: $4e
	pop hl                                           ; $416d: $e1
	ld [bc], a                                       ; $416e: $02
	inc b                                            ; $416f: $04
	ld c, l                                          ; $4170: $4d
	db $e4                                           ; $4171: $e4
	nop                                              ; $4172: $00
	ld c, d                                          ; $4173: $4a
	jr z, jr_082_417c                                ; $4174: $28 $06

	ret nz                                           ; $4176: $c0

	ld bc, $06a0                                     ; $4177: $01 $a0 $06
	rlca                                             ; $417a: $07
	ld e, b                                          ; $417b: $58

jr_082_417c:
	ccf                                              ; $417c: $3f
	rlca                                             ; $417d: $07
	ld h, d                                          ; $417e: $62
	add hl, bc                                       ; $417f: $09
	ld de, $02e1                                     ; $4180: $11 $e1 $02
	inc bc                                           ; $4183: $03
	rrca                                             ; $4184: $0f
	ret nz                                           ; $4185: $c0

	ld bc, $06a0                                     ; $4186: $01 $a0 $06
	rlca                                             ; $4189: $07
	ld l, b                                          ; $418a: $68
	pop hl                                           ; $418b: $e1
	ld [bc], a                                       ; $418c: $02
	inc b                                            ; $418d: $04
	dec sp                                           ; $418e: $3b
	db $e4                                           ; $418f: $e4
	nop                                              ; $4190: $00
	inc l                                            ; $4191: $2c
	rlca                                             ; $4192: $07
	ld [hl], d                                       ; $4193: $72
	add hl, bc                                       ; $4194: $09
	ld de, $02e1                                     ; $4195: $11 $e1 $02
	inc bc                                           ; $4198: $03
	rra                                              ; $4199: $1f
	ret nz                                           ; $419a: $c0

	ld bc, $06a0                                     ; $419b: $01 $a0 $06
	rlca                                             ; $419e: $07
	ld a, c                                          ; $419f: $79
	pop hl                                           ; $41a0: $e1
	ld [bc], a                                       ; $41a1: $02
	inc b                                            ; $41a2: $04
	ld e, a                                          ; $41a3: $5f
	db $e4                                           ; $41a4: $e4
	nop                                              ; $41a5: $00
	rla                                              ; $41a6: $17
	rlca                                             ; $41a7: $07
	add e                                            ; $41a8: $83
	add hl, bc                                       ; $41a9: $09
	ld de, $02e1                                     ; $41aa: $11 $e1 $02
	inc bc                                           ; $41ad: $03
	rla                                              ; $41ae: $17
	ret nz                                           ; $41af: $c0

	ld bc, $06a0                                     ; $41b0: $01 $a0 $06
	rlca                                             ; $41b3: $07
	adc b                                            ; $41b4: $88
	pop hl                                           ; $41b5: $e1
	ld [bc], a                                       ; $41b6: $02
	inc b                                            ; $41b7: $04
	ld c, l                                          ; $41b8: $4d
	db $e4                                           ; $41b9: $e4
	nop                                              ; $41ba: $00
	ld [bc], a                                       ; $41bb: $02
	add hl, bc                                       ; $41bc: $09
	dec d                                            ; $41bd: $15
	ret nz                                           ; $41be: $c0

	set 0, b                                         ; $41bf: $cb $c0
	ld de, $00e3                                     ; $41c1: $11 $e3 $00
	xor [hl]                                         ; $41c4: $ae
	pop hl                                           ; $41c5: $e1
	ld [bc], a                                       ; $41c6: $02
	ld [bc], a                                       ; $41c7: $02
	ld h, b                                          ; $41c8: $60
	ret nz                                           ; $41c9: $c0

	ld d, [hl]                                       ; $41ca: $56
	jp c, $11e0                                      ; $41cb: $da $e0 $11

	ret nc                                           ; $41ce: $d0

	push hl                                          ; $41cf: $e5
	dec hl                                           ; $41d0: $2b
	nop                                              ; $41d1: $00
	nop                                              ; $41d2: $00
	rlca                                             ; $41d3: $07
	ret nz                                           ; $41d4: $c0

	and a                                            ; $41d5: $a7
	jp c, $d7d3                                      ; $41d6: $da $d3 $d7

	ret nz                                           ; $41d9: $c0

	xor h                                            ; $41da: $ac
	add hl, bc                                       ; $41db: $09
	dec d                                            ; $41dc: $15
	ret nz                                           ; $41dd: $c0

	ld bc, $06a0                                     ; $41de: $01 $a0 $06
	rlca                                             ; $41e1: $07
	sub e                                            ; $41e2: $93
	add c                                            ; $41e3: $81
	ret nz                                           ; $41e4: $c0

	add b                                            ; $41e5: $80
	ld bc, $03d3                                     ; $41e6: $01 $d3 $03
	db $e4                                           ; $41e9: $e4
	nop                                              ; $41ea: $00
	ld e, d                                          ; $41eb: $5a
	ld bc, $03d2                                     ; $41ec: $01 $d2 $03
	db $e4                                           ; $41ef: $e4
	nop                                              ; $41f0: $00
	ld [bc], a                                       ; $41f1: $02
	add hl, bc                                       ; $41f2: $09
	ld d, b                                          ; $41f3: $50
	ret nz                                           ; $41f4: $c0

	ld bc, $01a0                                     ; $41f5: $01 $a0 $01
	rlca                                             ; $41f8: $07
	sbc c                                            ; $41f9: $99
	ret nz                                           ; $41fa: $c0

	ld bc, $06a0                                     ; $41fb: $01 $a0 $06
	rlca                                             ; $41fe: $07
	and c                                            ; $41ff: $a1
	ret nz                                           ; $4200: $c0

	ld bc, $01a0                                     ; $4201: $01 $a0 $01
	rlca                                             ; $4204: $07
	xor [hl]                                         ; $4205: $ae
	ret nz                                           ; $4206: $c0

	ld bc, $06a0                                     ; $4207: $01 $a0 $06
	rlca                                             ; $420a: $07
	or l                                             ; $420b: $b5
	pop hl                                           ; $420c: $e1
	ld [bc], a                                       ; $420d: $02
	ld [$e18d], sp                                   ; $420e: $08 $8d $e1
	ld [bc], a                                       ; $4211: $02
	ld [bc], a                                       ; $4212: $02
	ld h, b                                          ; $4213: $60
	ld h, b                                          ; $4214: $60
	add a                                            ; $4215: $87
	ld bc, $13e2                                     ; $4216: $01 $e2 $13
	ret nz                                           ; $4219: $c0

	ld bc, $01a0                                     ; $421a: $01 $a0 $01
	rlca                                             ; $421d: $07
	cp c                                             ; $421e: $b9
	pop hl                                           ; $421f: $e1
	ld [bc], a                                       ; $4220: $02
	inc bc                                           ; $4221: $03
	rrca                                             ; $4222: $0f
	ret nz                                           ; $4223: $c0

	ld bc, $06a0                                     ; $4224: $01 $a0 $06
	rlca                                             ; $4227: $07
	cp l                                             ; $4228: $bd
	ret nz                                           ; $4229: $c0

	ld d, c                                          ; $422a: $51
	pop de                                           ; $422b: $d1
	db $10                                           ; $422c: $10
	ret nz                                           ; $422d: $c0

	ld bc, $01a0                                     ; $422e: $01 $a0 $01
	rlca                                             ; $4231: $07
	call nz, $02e1                                   ; $4232: $c4 $e1 $02
	inc bc                                           ; $4235: $03
	inc de                                           ; $4236: $13
	ret nz                                           ; $4237: $c0

	ld bc, $06a0                                     ; $4238: $01 $a0 $06
	rlca                                             ; $423b: $07
	rst GetHLinHL                                          ; $423c: $cf
	ld b, b                                          ; $423d: $40
	add a                                            ; $423e: $87
	ld bc, $e4e2                                     ; $423f: $01 $e2 $e4
	nop                                              ; $4242: $00
	ld h, [hl]                                       ; $4243: $66
	add hl, bc                                       ; $4244: $09
	ld a, [de]                                       ; $4245: $1a
	ret nz                                           ; $4246: $c0

	ld bc, $01a0                                     ; $4247: $01 $a0 $01
	rlca                                             ; $424a: $07
	reti                                             ; $424b: $d9


	ret nz                                           ; $424c: $c0

	ld bc, $06a0                                     ; $424d: $01 $a0 $06
	rlca                                             ; $4250: $07
	ldh [$e1], a                                     ; $4251: $e0 $e1
	ld [bc], a                                       ; $4253: $02
	ld [$e1a4], sp                                   ; $4254: $08 $a4 $e1
	ld [bc], a                                       ; $4257: $02
	ld [bc], a                                       ; $4258: $02
	ld h, b                                          ; $4259: $60
	ret nz                                           ; $425a: $c0

	ld d, c                                          ; $425b: $51
	pop de                                           ; $425c: $d1
	db $e4                                           ; $425d: $e4
	nop                                              ; $425e: $00
	ld [bc], a                                       ; $425f: $02
	jr z, jr_082_4268                                ; $4260: $28 $06

	ret nz                                           ; $4262: $c0

	ld bc, $06a0                                     ; $4263: $01 $a0 $06
	rlca                                             ; $4266: $07
	jp hl                                            ; $4267: $e9


jr_082_4268:
	ccf                                              ; $4268: $3f
	rlca                                             ; $4269: $07
	di                                               ; $426a: $f3
	add hl, bc                                       ; $426b: $09
	ld de, $02e1                                     ; $426c: $11 $e1 $02
	inc bc                                           ; $426f: $03
	rrca                                             ; $4270: $0f
	ret nz                                           ; $4271: $c0

	ld bc, $06a0                                     ; $4272: $01 $a0 $06
	rlca                                             ; $4275: $07
	push af                                          ; $4276: $f5
	pop hl                                           ; $4277: $e1
	ld [bc], a                                       ; $4278: $02
	inc b                                            ; $4279: $04
	dec sp                                           ; $427a: $3b

jr_082_427b:
	db $e4                                           ; $427b: $e4
	nop                                              ; $427c: $00
	inc l                                            ; $427d: $2c
	ld [$0905], sp                                   ; $427e: $08 $05 $09
	ld de, $02e1                                     ; $4281: $11 $e1 $02
	inc bc                                           ; $4284: $03
	dec de                                           ; $4285: $1b
	ret nz                                           ; $4286: $c0

	ld bc, $06a0                                     ; $4287: $01 $a0 $06
	ld [$e107], sp                                   ; $428a: $08 $07 $e1
	ld [bc], a                                       ; $428d: $02
	inc b                                            ; $428e: $04
	ld d, [hl]                                       ; $428f: $56
	db $e4                                           ; $4290: $e4
	nop                                              ; $4291: $00
	rla                                              ; $4292: $17
	ld [$0914], sp                                   ; $4293: $08 $14 $09
	ld de, $02e1                                     ; $4296: $11 $e1 $02
	inc bc                                           ; $4299: $03
	inc de                                           ; $429a: $13
	ret nz                                           ; $429b: $c0

	ld bc, $06a0                                     ; $429c: $01 $a0 $06
	ld [$e119], sp                                   ; $429f: $08 $19 $e1
	ld [bc], a                                       ; $42a2: $02
	inc b                                            ; $42a3: $04
	ld b, h                                          ; $42a4: $44
	db $e4                                           ; $42a5: $e4
	nop                                              ; $42a6: $00
	ld [bc], a                                       ; $42a7: $02
	add hl, bc                                       ; $42a8: $09
	jr z, jr_082_427b                                ; $42a9: $28 $d0

	add d                                            ; $42ab: $82
	ld bc, $d1d8                                     ; $42ac: $01 $d8 $d1
	add c                                            ; $42af: $81
	ret nz                                           ; $42b0: $c0

	ld h, h                                          ; $42b1: $64
	ld [bc], a                                       ; $42b2: $02
	ldh [$63], a                                     ; $42b3: $e0 $63
	dec bc                                           ; $42b5: $0b
	ret nc                                           ; $42b6: $d0

	add e                                            ; $42b7: $83
	ld bc, $d1de                                     ; $42b8: $01 $de $d1
	ret nz                                           ; $42bb: $c0

	ld d, [hl]                                       ; $42bc: $56
	jp c, $12e0                                      ; $42bd: $da $e0 $12

	pop de                                           ; $42c0: $d1
	nop                                              ; $42c1: $00
	dec bc                                           ; $42c2: $0b
	ret nc                                           ; $42c3: $d0

	add e                                            ; $42c4: $83
	ld bc, $d0de                                     ; $42c5: $01 $de $d0
	ret nz                                           ; $42c8: $c0

	ld d, [hl]                                       ; $42c9: $56
	jp c, $12e0                                      ; $42ca: $da $e0 $12

	ret nc                                           ; $42cd: $d0

	push hl                                          ; $42ce: $e5
	dec hl                                           ; $42cf: $2b
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	add hl, bc                                       ; $42d2: $09
	inc d                                            ; $42d3: $14
	ret nc                                           ; $42d4: $d0

	add e                                            ; $42d5: $83
	ld bc, $d0de                                     ; $42d6: $01 $de $d0
	ret nz                                           ; $42d9: $c0

	ld bc, $06a0                                     ; $42da: $01 $a0 $06
	ld [$c024], sp                                   ; $42dd: $08 $24 $c0
	ld bc, $01a0                                     ; $42e0: $01 $a0 $01
	ld b, $cb                                        ; $42e3: $06 $cb
	db $e4                                           ; $42e5: $e4
	nop                                              ; $42e6: $00
	ld [bc], a                                       ; $42e7: $02
	add hl, bc                                       ; $42e8: $09
	rla                                              ; $42e9: $17
	pop bc                                           ; $42ea: $c1
	ld e, c                                          ; $42eb: $59
	db $e3                                           ; $42ec: $e3
	nop                                              ; $42ed: $00
	xor c                                            ; $42ee: $a9
	and b                                            ; $42ef: $a0
	add b                                            ; $42f0: $80
	and b                                            ; $42f1: $a0
	inc e                                            ; $42f2: $1c
	nop                                              ; $42f3: $00
	inc bc                                           ; $42f4: $03
	db $e4                                           ; $42f5: $e4
	nop                                              ; $42f6: $00
	dec bc                                           ; $42f7: $0b
	rst $38                                          ; $42f8: $ff
	rlca                                             ; $42f9: $07
	ld b, b                                          ; $42fa: $40
	add b                                            ; $42fb: $80
	and b                                            ; $42fc: $a0
	inc e                                            ; $42fd: $1c
	db $e4                                           ; $42fe: $e4
	nop                                              ; $42ff: $00

Jump_082_4300:
	ld c, d                                          ; $4300: $4a
	jr z, @+$08                                      ; $4301: $28 $06

	ret nz                                           ; $4303: $c0

	ld bc, $06a0                                     ; $4304: $01 $a0 $06
	ld [$3f2d], sp                                   ; $4307: $08 $2d $3f
	ld [$0937], sp                                   ; $430a: $08 $37 $09
	ld de, $02e1                                     ; $430d: $11 $e1 $02
	inc bc                                           ; $4310: $03
	inc de                                           ; $4311: $13
	ret nz                                           ; $4312: $c0

	ld bc, $06a0                                     ; $4313: $01 $a0 $06
	ld [$e140], sp                                   ; $4316: $08 $40 $e1
	ld [bc], a                                       ; $4319: $02
	inc b                                            ; $431a: $04
	ld b, h                                          ; $431b: $44
	db $e4                                           ; $431c: $e4
	nop                                              ; $431d: $00
	ld [hl], h                                       ; $431e: $74
	ld [$0950], sp                                   ; $431f: $08 $50 $09
	ld de, $02e1                                     ; $4322: $11 $e1 $02
	inc bc                                           ; $4325: $03
	dec de                                           ; $4326: $1b
	ret nz                                           ; $4327: $c0

	ld bc, $06a0                                     ; $4328: $01 $a0 $06
	ld [$e157], sp                                   ; $432b: $08 $57 $e1
	ld [bc], a                                       ; $432e: $02
	inc b                                            ; $432f: $04
	ld d, [hl]                                       ; $4330: $56
	db $e4                                           ; $4331: $e4
	nop                                              ; $4332: $00
	ld e, a                                          ; $4333: $5f
	ld [$0960], sp                                   ; $4334: $08 $60 $09
	ld de, $02e1                                     ; $4337: $11 $e1 $02
	inc bc                                           ; $433a: $03
	rla                                              ; $433b: $17
	ret nz                                           ; $433c: $c0

	ld bc, $06a0                                     ; $433d: $01 $a0 $06
	ld [$e165], sp                                   ; $4340: $08 $65 $e1
	ld [bc], a                                       ; $4343: $02
	inc b                                            ; $4344: $04
	ld c, l                                          ; $4345: $4d
	db $e4                                           ; $4346: $e4
	nop                                              ; $4347: $00
	ld c, d                                          ; $4348: $4a
	jr z, @+$08                                      ; $4349: $28 $06

	ret nz                                           ; $434b: $c0

	ld bc, $06a0                                     ; $434c: $01 $a0 $06
	ld [$3f6e], sp                                   ; $434f: $08 $6e $3f
	ld [$097c], sp                                   ; $4352: $08 $7c $09
	ld de, $02e1                                     ; $4355: $11 $e1 $02
	inc bc                                           ; $4358: $03
	rrca                                             ; $4359: $0f
	ret nz                                           ; $435a: $c0

	ld bc, $06a0                                     ; $435b: $01 $a0 $06
	ld [$e17e], sp                                   ; $435e: $08 $7e $e1
	ld [bc], a                                       ; $4361: $02
	inc b                                            ; $4362: $04
	dec sp                                           ; $4363: $3b
	db $e4                                           ; $4364: $e4
	nop                                              ; $4365: $00
	inc l                                            ; $4366: $2c
	ld [$0983], sp                                   ; $4367: $08 $83 $09
	ld de, $02e1                                     ; $436a: $11 $e1 $02
	inc bc                                           ; $436d: $03
	rra                                              ; $436e: $1f
	ret nz                                           ; $436f: $c0

	ld bc, $06a0                                     ; $4370: $01 $a0 $06
	ld [$e189], sp                                   ; $4373: $08 $89 $e1
	ld [bc], a                                       ; $4376: $02
	inc b                                            ; $4377: $04
	ld e, a                                          ; $4378: $5f
	db $e4                                           ; $4379: $e4
	nop                                              ; $437a: $00
	rla                                              ; $437b: $17
	ld [$098e], sp                                   ; $437c: $08 $8e $09
	ld de, $02e1                                     ; $437f: $11 $e1 $02
	inc bc                                           ; $4382: $03
	rla                                              ; $4383: $17
	ret nz                                           ; $4384: $c0

	ld bc, $06a0                                     ; $4385: $01 $a0 $06
	ld [$e195], sp                                   ; $4388: $08 $95 $e1
	ld [bc], a                                       ; $438b: $02
	inc b                                            ; $438c: $04
	ld c, l                                          ; $438d: $4d
	db $e4                                           ; $438e: $e4
	nop                                              ; $438f: $00
	ld [bc], a                                       ; $4390: $02
	add hl, bc                                       ; $4391: $09
	rrca                                             ; $4392: $0f
	pop bc                                           ; $4393: $c1
	ld e, c                                          ; $4394: $59
	db $e3                                           ; $4395: $e3
	nop                                              ; $4396: $00
	xor b                                            ; $4397: $a8
	ret nz                                           ; $4398: $c0

	ld d, [hl]                                       ; $4399: $56
	jp c, $13e0                                      ; $439a: $da $e0 $13

	ret nc                                           ; $439d: $d0

	push hl                                          ; $439e: $e5
	dec hl                                           ; $439f: $2b
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	add hl, bc                                       ; $43a2: $09
	scf                                              ; $43a3: $37
	ret nc                                           ; $43a4: $d0

	add e                                            ; $43a5: $83
	ld bc, $d0de                                     ; $43a6: $01 $de $d0
	add c                                            ; $43a9: $81
	ret nz                                           ; $43aa: $c0

	inc e                                            ; $43ab: $1c
	jp c, wCurrMenuOption                                      ; $43ac: $da $01 $d2

	ld a, [de]                                       ; $43af: $1a
	and b                                            ; $43b0: $a0
	add b                                            ; $43b1: $80
	and b                                            ; $43b2: $a0
	dec e                                            ; $43b3: $1d
	nop                                              ; $43b4: $00
	inc bc                                           ; $43b5: $03
	db $e4                                           ; $43b6: $e4
	nop                                              ; $43b7: $00
	ldh [rIE], a                                     ; $43b8: $e0 $ff
	rrca                                             ; $43ba: $0f
	ret nz                                           ; $43bb: $c0

	ld bc, $06a0                                     ; $43bc: $01 $a0 $06
	ld [$c09a], sp                                   ; $43bf: $08 $9a $c0
	ld bc, $01a0                                     ; $43c2: $01 $a0 $01
	ld [$e4a6], sp                                   ; $43c5: $08 $a6 $e4
	nop                                              ; $43c8: $00
	inc de                                           ; $43c9: $13
	nop                                              ; $43ca: $00
	rrca                                             ; $43cb: $0f
	ret nz                                           ; $43cc: $c0

	ld bc, $06a0                                     ; $43cd: $01 $a0 $06
	ld [$c0aa], sp                                   ; $43d0: $08 $aa $c0
	ld bc, $01a0                                     ; $43d3: $01 $a0 $01
	ld [$e4a6], sp                                   ; $43d6: $08 $a6 $e4
	nop                                              ; $43d9: $00
	ld [bc], a                                       ; $43da: $02
	add hl, bc                                       ; $43db: $09
	rla                                              ; $43dc: $17
	pop bc                                           ; $43dd: $c1
	ld e, c                                          ; $43de: $59
	db $e3                                           ; $43df: $e3
	nop                                              ; $43e0: $00
	and a                                            ; $43e1: $a7
	and b                                            ; $43e2: $a0
	add b                                            ; $43e3: $80
	and b                                            ; $43e4: $a0
	ld e, $00                                        ; $43e5: $1e $00
	inc bc                                           ; $43e7: $03
	db $e4                                           ; $43e8: $e4
	nop                                              ; $43e9: $00
	dec bc                                           ; $43ea: $0b
	rst $38                                          ; $43eb: $ff
	rlca                                             ; $43ec: $07
	ld b, b                                          ; $43ed: $40
	add b                                            ; $43ee: $80
	and b                                            ; $43ef: $a0
	ld e, $e4                                        ; $43f0: $1e $e4
	nop                                              ; $43f2: $00
	ld e, l                                          ; $43f3: $5d
	jr z, @+$08                                      ; $43f4: $28 $06

	ret nz                                           ; $43f6: $c0

	ld bc, $06a0                                     ; $43f7: $01 $a0 $06
	ld [$52b4], sp                                   ; $43fa: $08 $b4 $52
	ld [$09be], sp                                   ; $43fd: $08 $be $09
	inc h                                            ; $4400: $24
	pop hl                                           ; $4401: $e1
	ld [bc], a                                       ; $4402: $02
	inc bc                                           ; $4403: $03
	inc de                                           ; $4404: $13
	ret nz                                           ; $4405: $c0

	ld bc, $06a0                                     ; $4406: $01 $a0 $06
	ld [$60c0], sp                                   ; $4409: $08 $c0 $60
	ld hl, sp-$40                                    ; $440c: $f8 $c0
	add e                                            ; $440e: $83
	call nc, Call_082_64e0                           ; $440f: $d4 $e0 $64
	ld a, [bc]                                       ; $4412: $0a
	ret nz                                           ; $4413: $c0

	ld bc, $01a0                                     ; $4414: $01 $a0 $01
	ld [$e1ca], sp                                   ; $4417: $08 $ca $e1
	ld [bc], a                                       ; $441a: $02
	inc b                                            ; $441b: $04
	ld d, [hl]                                       ; $441c: $56
	inc b                                            ; $441d: $04
	pop hl                                           ; $441e: $e1
	ld [bc], a                                       ; $441f: $02
	inc b                                            ; $4420: $04
	dec sp                                           ; $4421: $3b
	db $e4                                           ; $4422: $e4
	ld bc, $0851                                     ; $4423: $01 $51 $08
	db $d3                                           ; $4426: $d3
	add hl, bc                                       ; $4427: $09
	ld de, $02e1                                     ; $4428: $11 $e1 $02
	inc bc                                           ; $442b: $03
	dec de                                           ; $442c: $1b
	ret nz                                           ; $442d: $c0

	ld bc, $06a0                                     ; $442e: $01 $a0 $06
	ld [$e1dc], sp                                   ; $4431: $08 $dc $e1
	ld [bc], a                                       ; $4434: $02
	inc b                                            ; $4435: $04
	ld d, [hl]                                       ; $4436: $56
	db $e4                                           ; $4437: $e4
	ld bc, $083c                                     ; $4438: $01 $3c $08
	rst SubAFromBC                                          ; $443b: $e7
	add hl, bc                                       ; $443c: $09
	ld de, $02e1                                     ; $443d: $11 $e1 $02
	inc bc                                           ; $4440: $03
	rla                                              ; $4441: $17
	ret nz                                           ; $4442: $c0

	ld bc, $06a0                                     ; $4443: $01 $a0 $06
	ld [$e1ed], sp                                   ; $4446: $08 $ed $e1
	ld [bc], a                                       ; $4449: $02
	inc b                                            ; $444a: $04
	ld c, l                                          ; $444b: $4d
	db $e4                                           ; $444c: $e4
	ld bc, $2827                                     ; $444d: $01 $27 $28
	ld b, $c0                                        ; $4450: $06 $c0
	ld bc, $06a0                                     ; $4452: $01 $a0 $06
	ld [$3ff0], sp                                   ; $4455: $08 $f0 $3f
	ld [$09f8], sp                                   ; $4458: $08 $f8 $09
	ld de, $02e1                                     ; $445b: $11 $e1 $02
	inc bc                                           ; $445e: $03
	rrca                                             ; $445f: $0f
	ret nz                                           ; $4460: $c0

	ld bc, $06a0                                     ; $4461: $01 $a0 $06
	ld [$e1fa], sp                                   ; $4464: $08 $fa $e1

jr_082_4467:
	ld [bc], a                                       ; $4467: $02
	inc b                                            ; $4468: $04
	dec sp                                           ; $4469: $3b
	db $e4                                           ; $446a: $e4
	ld bc, $0909                                     ; $446b: $01 $09 $09
	ld [bc], a                                       ; $446e: $02
	add hl, bc                                       ; $446f: $09
	ld de, $02e1                                     ; $4470: $11 $e1 $02
	inc bc                                           ; $4473: $03
	rra                                              ; $4474: $1f
	ret nz                                           ; $4475: $c0

	ld bc, $06a0                                     ; $4476: $01 $a0 $06
	add hl, bc                                       ; $4479: $09
	inc b                                            ; $447a: $04
	pop hl                                           ; $447b: $e1
	ld [bc], a                                       ; $447c: $02
	inc b                                            ; $447d: $04
	ld e, a                                          ; $447e: $5f
	db $e4                                           ; $447f: $e4
	nop                                              ; $4480: $00
	db $f4                                           ; $4481: $f4
	add hl, bc                                       ; $4482: $09
	ld a, [bc]                                       ; $4483: $0a
	add hl, bc                                       ; $4484: $09
	ld de, $02e1                                     ; $4485: $11 $e1 $02
	inc bc                                           ; $4488: $03
	dec de                                           ; $4489: $1b
	ret nz                                           ; $448a: $c0

	ld bc, $06a0                                     ; $448b: $01 $a0 $06
	add hl, bc                                       ; $448e: $09
	inc c                                            ; $448f: $0c
	pop hl                                           ; $4490: $e1
	ld [bc], a                                       ; $4491: $02
	inc b                                            ; $4492: $04
	ld d, [hl]                                       ; $4493: $56
	db $e4                                           ; $4494: $e4
	nop                                              ; $4495: $00
	rst SubAFromDE                                          ; $4496: $df
	add hl, bc                                       ; $4497: $09
	ret nz                                           ; $4498: $c0

	jp c, $01c0                                      ; $4499: $da $c0 $01

	and b                                            ; $449c: $a0
	ld bc, $1509                                     ; $449d: $01 $09 $15
	ret nz                                           ; $44a0: $c0

	ld bc, $06a0                                     ; $44a1: $01 $a0 $06
	add hl, bc                                       ; $44a4: $09
	jr nz, jr_082_4467                               ; $44a5: $20 $c0

	ld bc, $01a0                                     ; $44a7: $01 $a0 $01
	add hl, bc                                       ; $44aa: $09
	ld a, [hl+]                                      ; $44ab: $2a
	ret nz                                           ; $44ac: $c0

	ld bc, $06a0                                     ; $44ad: $01 $a0 $06
	add hl, bc                                       ; $44b0: $09
	ld [hl], $c0                                     ; $44b1: $36 $c0
	ld bc, $01a0                                     ; $44b3: $01 $a0 $01
	add hl, bc                                       ; $44b6: $09
	ld b, e                                          ; $44b7: $43
	ret nz                                           ; $44b8: $c0

	set 0, c                                         ; $44b9: $cb $c1
	ld e, e                                          ; $44bb: $5b
	ret nz                                           ; $44bc: $c0

	inc c                                            ; $44bd: $0c
	ldh [$78], a                                     ; $44be: $e0 $78
	pop bc                                           ; $44c0: $c1
	add a                                            ; $44c1: $87
	ret nz                                           ; $44c2: $c0

	dec bc                                           ; $44c3: $0b
	db $e3                                           ; $44c4: $e3
	nop                                              ; $44c5: $00
	ld a, [hl-]                                      ; $44c6: $3a
	ret nz                                           ; $44c7: $c0

	inc c                                            ; $44c8: $0c
	ldh [$78], a                                     ; $44c9: $e0 $78
	ret nz                                           ; $44cb: $c0

	add hl, bc                                       ; $44cc: $09
	db $e3                                           ; $44cd: $e3
	nop                                              ; $44ce: $00
	ld a, [hl-]                                      ; $44cf: $3a
	ret nz                                           ; $44d0: $c0

	ld bc, $01a0                                     ; $44d1: $01 $a0 $01
	add hl, bc                                       ; $44d4: $09
	ld b, a                                          ; $44d5: $47
	ret nz                                           ; $44d6: $c0

	rrca                                             ; $44d7: $0f
	db $e3                                           ; $44d8: $e3
	ld bc, $c009                                     ; $44d9: $01 $09 $c0
	ld bc, $06a0                                     ; $44dc: $01 $a0 $06
	add hl, bc                                       ; $44df: $09
	ld c, [hl]                                       ; $44e0: $4e
	ret nz                                           ; $44e1: $c0

	ld bc, $01a0                                     ; $44e2: $01 $a0 $01
	add hl, bc                                       ; $44e5: $09
	ld d, l                                          ; $44e6: $55
	ret nz                                           ; $44e7: $c0

	ld bc, $06a0                                     ; $44e8: $01 $a0 $06
	add hl, bc                                       ; $44eb: $09
	ld e, [hl]                                       ; $44ec: $5e
	ret nz                                           ; $44ed: $c0

	ld bc, $01a0                                     ; $44ee: $01 $a0 $01
	add hl, bc                                       ; $44f1: $09
	ld l, c                                          ; $44f2: $69
	ret nz                                           ; $44f3: $c0

	ld bc, $06a0                                     ; $44f4: $01 $a0 $06
	add hl, bc                                       ; $44f7: $09
	ld a, b                                          ; $44f8: $78
	ret nz                                           ; $44f9: $c0

	ld bc, $01a0                                     ; $44fa: $01 $a0 $01
	add hl, bc                                       ; $44fd: $09
	add [hl]                                         ; $44fe: $86
	ret nz                                           ; $44ff: $c0

	ld bc, $06a0                                     ; $4500: $01 $a0 $06
	add hl, bc                                       ; $4503: $09
	sub h                                            ; $4504: $94
	ret nz                                           ; $4505: $c0

	ld bc, $01a0                                     ; $4506: $01 $a0 $01
	add hl, bc                                       ; $4509: $09
	and b                                            ; $450a: $a0
	ret nz                                           ; $450b: $c0

	ld bc, $06a0                                     ; $450c: $01 $a0 $06
	add hl, bc                                       ; $450f: $09
	xor e                                            ; $4510: $ab
	ret nz                                           ; $4511: $c0

	nop                                              ; $4512: $00
	add hl, bc                                       ; $4513: $09
	or b                                             ; $4514: $b0
	pop bc                                           ; $4515: $c1
	adc d                                            ; $4516: $8a
	pop de                                           ; $4517: $d1
	ret nz                                           ; $4518: $c0

	ld bc, $06a0                                     ; $4519: $01 $a0 $06
	add hl, bc                                       ; $451c: $09
	or l                                             ; $451d: $b5
	ret nz                                           ; $451e: $c0

	set 0, b                                         ; $451f: $cb $c0
	ld de, $00e3                                     ; $4521: $11 $e3 $00
	and a                                            ; $4524: $a7
	ret nz                                           ; $4525: $c0

	and a                                            ; $4526: $a7
	jp c, $d2d3                                      ; $4527: $da $d3 $d2

	pop bc                                           ; $452a: $c1
	ld e, h                                          ; $452b: $5c
	pop hl                                           ; $452c: $e1
	ld [bc], a                                       ; $452d: $02
	inc bc                                           ; $452e: $03
	dec de                                           ; $452f: $1b
	ret nz                                           ; $4530: $c0

	jp z, $01c0                                      ; $4531: $ca $c0 $01

	and b                                            ; $4534: $a0
	ld bc, $bd09                                     ; $4535: $01 $09 $bd
	ret nz                                           ; $4538: $c0

	ld bc, $06a0                                     ; $4539: $01 $a0 $06
	add hl, bc                                       ; $453c: $09
	ret nc                                           ; $453d: $d0

	ret nz                                           ; $453e: $c0

	ld bc, $01a0                                     ; $453f: $01 $a0 $01
	add hl, bc                                       ; $4542: $09
	ret c                                            ; $4543: $d8

	pop hl                                           ; $4544: $e1
	ld [bc], a                                       ; $4545: $02
	inc bc                                           ; $4546: $03
	rrca                                             ; $4547: $0f
	ret nz                                           ; $4548: $c0

	ld bc, $06a0                                     ; $4549: $01 $a0 $06
	add hl, bc                                       ; $454c: $09
	rst SubAFromBC                                          ; $454d: $e7
	ret nz                                           ; $454e: $c0

	ld bc, $01a0                                     ; $454f: $01 $a0 $01
	add hl, bc                                       ; $4552: $09
	db $f4                                           ; $4553: $f4
	ret nz                                           ; $4554: $c0

	ld bc, $06a0                                     ; $4555: $01 $a0 $06
	add hl, bc                                       ; $4558: $09
	rst $38                                          ; $4559: $ff
	ret nc                                           ; $455a: $d0

	add d                                            ; $455b: $82
	ld bc, $d1d8                                     ; $455c: $01 $d8 $d1
	pop hl                                           ; $455f: $e1
	ld [bc], a                                       ; $4560: $02
	inc b                                            ; $4561: $04
	rst JumpTable                                          ; $4562: $c7
	ret nz                                           ; $4563: $c0

	ld d, c                                          ; $4564: $51
	jp nc, Jump_082_50c0                             ; $4565: $d2 $c0 $50

	pop de                                           ; $4568: $d1
	ret nz                                           ; $4569: $c0

	ld d, l                                          ; $456a: $55
	ldh [rAUD1HIGH], a                               ; $456b: $e0 $14
	pop bc                                           ; $456d: $c1
	ld l, e                                          ; $456e: $6b
	rst SubAFromHL                                          ; $456f: $d7
	jp c, $00e4                                      ; $4570: $da $e4 $00

	ld [bc], a                                       ; $4573: $02
	add hl, bc                                       ; $4574: $09
	rrca                                             ; $4575: $0f
	pop bc                                           ; $4576: $c1
	ld e, c                                          ; $4577: $59
	db $e3                                           ; $4578: $e3
	nop                                              ; $4579: $00
	and [hl]                                         ; $457a: $a6
	ret nz                                           ; $457b: $c0

	ld d, [hl]                                       ; $457c: $56
	jp c, $14e0                                      ; $457d: $da $e0 $14

	ret nc                                           ; $4580: $d0

	push hl                                          ; $4581: $e5
	dec hl                                           ; $4582: $2b
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	adc b                                            ; $4585: $88
	ld b, $09                                        ; $4586: $06 $09
	pop bc                                           ; $4588: $c1
	db $d3                                           ; $4589: $d3

jr_082_458a:
	ret nz                                           ; $458a: $c0

	ld c, h                                          ; $458b: $4c
	jp c, $8fd0                                      ; $458c: $da $d0 $8f

	nop                                              ; $458f: $00
	cp b                                             ; $4590: $b8
	add h                                            ; $4591: $84
	ld [bc], a                                       ; $4592: $02
	ld l, $61                                        ; $4593: $2e $61
	cp $07                                           ; $4595: $fe $07
	add b                                            ; $4597: $80
	nop                                              ; $4598: $00
	set 7, h                                         ; $4599: $cb $fc
	ret nz                                           ; $459b: $c0

	ld h, a                                          ; $459c: $67
	ret nc                                           ; $459d: $d0

	inc [hl]                                         ; $459e: $34
	ret nz                                           ; $459f: $c0

	ld bc, $06a0                                     ; $45a0: $01 $a0 $06
	nop                                              ; $45a3: $00
	ld bc, $01c0                                     ; $45a4: $01 $c0 $01
	and b                                            ; $45a7: $a0
	ld bc, $0900                                     ; $45a8: $01 $00 $09
	add c                                            ; $45ab: $81
	ret nz                                           ; $45ac: $c0

	dec de                                           ; $45ad: $1b
	ret nc                                           ; $45ae: $d0

	ld [bc], a                                       ; $45af: $02

jr_082_45b0:
	ret nc                                           ; $45b0: $d0

	pop de                                           ; $45b1: $d1
	ld a, [bc]                                       ; $45b2: $0a
	pop hl                                           ; $45b3: $e1
	ld [bc], a                                       ; $45b4: $02
	inc bc                                           ; $45b5: $03
	rrca                                             ; $45b6: $0f
	ret nz                                           ; $45b7: $c0

	ld bc, $06a0                                     ; $45b8: $01 $a0 $06
	nop                                              ; $45bb: $00
	ld [de], a                                       ; $45bc: $12
	nop                                              ; $45bd: $00
	ld a, [bc]                                       ; $45be: $0a
	pop hl                                           ; $45bf: $e1
	ld [bc], a                                       ; $45c0: $02
	inc bc                                           ; $45c1: $03
	inc de                                           ; $45c2: $13
	ret nz                                           ; $45c3: $c0

	ld bc, $06a0                                     ; $45c4: $01 $a0 $06
	nop                                              ; $45c7: $00
	jr jr_082_458a                                   ; $45c8: $18 $c0

	ld bc, $01a0                                     ; $45ca: $01 $a0 $01
	nop                                              ; $45cd: $00
	rra                                              ; $45ce: $1f
	ld b, b                                          ; $45cf: $40
	add b                                            ; $45d0: $80
	nop                                              ; $45d1: $00
	set 7, h                                         ; $45d2: $cb $fc
	pop bc                                           ; $45d4: $c1
	ld b, c                                          ; $45d5: $41
	jp c, $0284                                      ; $45d6: $da $84 $02

	ld l, $83                                        ; $45d9: $2e $83
	ld bc, $d1de                                     ; $45db: $01 $de $d1
	inc e                                            ; $45de: $1c
	pop hl                                           ; $45df: $e1
	ld [bc], a                                       ; $45e0: $02
	inc bc                                           ; $45e1: $03
	dec de                                           ; $45e2: $1b
	ret nz                                           ; $45e3: $c0

	ld bc, $06a0                                     ; $45e4: $01 $a0 $06
	nop                                              ; $45e7: $00
	dec h                                            ; $45e8: $25
	ret nz                                           ; $45e9: $c0

	ld bc, $01a0                                     ; $45ea: $01 $a0 $01
	nop                                              ; $45ed: $00
	jr nc, jr_082_45b0                               ; $45ee: $30 $c0

	dec h                                            ; $45f0: $25
	pop de                                           ; $45f1: $d1
	jp c, $24c0                                      ; $45f2: $da $c0 $24

	jp nc, $c0da                                     ; $45f5: $d2 $da $c0

	inc hl                                           ; $45f8: $23
	jp c, $c0da                                      ; $45f9: $da $da $c0

	db $e4                                           ; $45fc: $e4
	add e                                            ; $45fd: $83
	ret nz                                           ; $45fe: $c0

	dec de                                           ; $45ff: $1b
	jp c, $d002                                      ; $4600: $da $02 $d0

	pop de                                           ; $4603: $d1
	ld b, h                                          ; $4604: $44
	add d                                            ; $4605: $82
	add d                                            ; $4606: $82
	ld bc, $02d8                                     ; $4607: $01 $d8 $02
	pop de                                           ; $460a: $d1
	jp nc, $e115                                     ; $460b: $d2 $15 $e1

	ld [bc], a                                       ; $460e: $02
	inc bc                                           ; $460f: $03
	inc de                                           ; $4610: $13
	pop bc                                           ; $4611: $c1
	or d                                             ; $4612: $b2
	db $e3                                           ; $4613: $e3
	nop                                              ; $4614: $00
	ld l, a                                          ; $4615: $6f
	ret nz                                           ; $4616: $c0

	ld bc, $06a0                                     ; $4617: $01 $a0 $06
	nop                                              ; $461a: $00
	ld [hl], $c0                                     ; $461b: $36 $c0
	ld bc, $01a0                                     ; $461d: $01 $a0 $01
	nop                                              ; $4620: $00
	ccf                                              ; $4621: $3f
	ld bc, $10d3                                     ; $4622: $01 $d3 $10
	pop hl                                           ; $4625: $e1
	ld [bc], a                                       ; $4626: $02
	inc bc                                           ; $4627: $03
	rla                                              ; $4628: $17
	ret nz                                           ; $4629: $c0

	ld bc, $06a0                                     ; $462a: $01 $a0 $06
	nop                                              ; $462d: $00
	ld b, l                                          ; $462e: $45
	ret nz                                           ; $462f: $c0

	ld bc, $01a0                                     ; $4630: $01 $a0 $01
	nop                                              ; $4633: $00
	ccf                                              ; $4634: $3f
	ld [bc], a                                       ; $4635: $02
	call nc, $10d5                                   ; $4636: $d4 $d5 $10
	pop hl                                           ; $4639: $e1
	ld [bc], a                                       ; $463a: $02
	inc bc                                           ; $463b: $03
	dec de                                           ; $463c: $1b
	ret nz                                           ; $463d: $c0

	ld bc, $06a0                                     ; $463e: $01 $a0 $06
	nop                                              ; $4641: $00
	ld c, a                                          ; $4642: $4f
	ret nz                                           ; $4643: $c0

	ld bc, $01a0                                     ; $4644: $01 $a0 $01
	nop                                              ; $4647: $00
	ccf                                              ; $4648: $3f
	ld [bc], a                                       ; $4649: $02
	jp nc, $3fd3                                     ; $464a: $d2 $d3 $3f

	add d                                            ; $464d: $82
	add d                                            ; $464e: $82
	ld bc, $02d8                                     ; $464f: $01 $d8 $02
	pop de                                           ; $4652: $d1
	jp nc, $e110                                     ; $4653: $d2 $10 $e1

	ld [bc], a                                       ; $4656: $02
	inc bc                                           ; $4657: $03
	inc de                                           ; $4658: $13
	ret nz                                           ; $4659: $c0

	ld bc, $06a0                                     ; $465a: $01 $a0 $06
	nop                                              ; $465d: $00
	ld e, e                                          ; $465e: $5b
	ret nz                                           ; $465f: $c0

	ld bc, $01a0                                     ; $4660: $01 $a0 $01
	nop                                              ; $4663: $00
	ccf                                              ; $4664: $3f
	ld bc, $10d3                                     ; $4665: $01 $d3 $10
	pop hl                                           ; $4668: $e1
	ld [bc], a                                       ; $4669: $02
	inc bc                                           ; $466a: $03
	rla                                              ; $466b: $17
	ret nz                                           ; $466c: $c0

	ld bc, $06a0                                     ; $466d: $01 $a0 $06
	nop                                              ; $4670: $00
	ld h, d                                          ; $4671: $62
	ret nz                                           ; $4672: $c0

	ld bc, $01a0                                     ; $4673: $01 $a0 $01
	nop                                              ; $4676: $00
	ccf                                              ; $4677: $3f
	ld [bc], a                                       ; $4678: $02
	call nc, $10d5                                   ; $4679: $d4 $d5 $10
	pop hl                                           ; $467c: $e1
	ld [bc], a                                       ; $467d: $02
	inc bc                                           ; $467e: $03
	dec de                                           ; $467f: $1b
	ret nz                                           ; $4680: $c0

	ld bc, $06a0                                     ; $4681: $01 $a0 $06
	nop                                              ; $4684: $00
	ld l, d                                          ; $4685: $6a
	ret nz                                           ; $4686: $c0

	ld bc, $01a0                                     ; $4687: $01 $a0 $01
	nop                                              ; $468a: $00
	ld l, a                                          ; $468b: $6f
	ld bc, $3fd4                                     ; $468c: $01 $d4 $3f
	add d                                            ; $468f: $82
	add d                                            ; $4690: $82
	ld bc, $02d8                                     ; $4691: $01 $d8 $02
	pop de                                           ; $4694: $d1
	jp nc, $e110                                     ; $4695: $d2 $10 $e1

	ld [bc], a                                       ; $4698: $02
	inc bc                                           ; $4699: $03
	inc de                                           ; $469a: $13
	ret nz                                           ; $469b: $c0

	ld bc, $06a0                                     ; $469c: $01 $a0 $06
	nop                                              ; $469f: $00
	ld [hl], d                                       ; $46a0: $72
	ret nz                                           ; $46a1: $c0

	ld bc, $01a0                                     ; $46a2: $01 $a0 $01
	nop                                              ; $46a5: $00
	ccf                                              ; $46a6: $3f
	ld bc, $10d3                                     ; $46a7: $01 $d3 $10
	pop hl                                           ; $46aa: $e1
	ld [bc], a                                       ; $46ab: $02
	inc bc                                           ; $46ac: $03
	rla                                              ; $46ad: $17
	ret nz                                           ; $46ae: $c0

	ld bc, $06a0                                     ; $46af: $01 $a0 $06
	nop                                              ; $46b2: $00
	ld a, c                                          ; $46b3: $79
	ret nz                                           ; $46b4: $c0

	ld bc, $01a0                                     ; $46b5: $01 $a0 $01
	nop                                              ; $46b8: $00
	ld a, e                                          ; $46b9: $7b
	ld [bc], a                                       ; $46ba: $02
	call nc, $10d5                                   ; $46bb: $d4 $d5 $10
	pop hl                                           ; $46be: $e1
	ld [bc], a                                       ; $46bf: $02
	inc bc                                           ; $46c0: $03
	dec de                                           ; $46c1: $1b
	ret nz                                           ; $46c2: $c0

	ld bc, $06a0                                     ; $46c3: $01 $a0 $06
	nop                                              ; $46c6: $00
	ld a, a                                          ; $46c7: $7f
	ret nz                                           ; $46c8: $c0

	ld bc, $01a0                                     ; $46c9: $01 $a0 $01
	nop                                              ; $46cc: $00
	ld l, a                                          ; $46cd: $6f
	ld bc, $10d5                                     ; $46ce: $01 $d5 $10
	pop hl                                           ; $46d1: $e1
	ld [bc], a                                       ; $46d2: $02
	inc bc                                           ; $46d3: $03
	dec de                                           ; $46d4: $1b
	ret nz                                           ; $46d5: $c0

	ld bc, $06a0                                     ; $46d6: $01 $a0 $06
	nop                                              ; $46d9: $00
	add d                                            ; $46da: $82
	ret nz                                           ; $46db: $c0

	ld bc, $01a0                                     ; $46dc: $01 $a0 $01
	nop                                              ; $46df: $00
	add a                                            ; $46e0: $87

Jump_082_46e1:
	ei                                               ; $46e1: $fb
	db $fd                                           ; $46e2: $fd
	add h                                            ; $46e3: $84
	ld [bc], a                                       ; $46e4: $02
	ld l, $d0                                        ; $46e5: $2e $d0
	add hl, bc                                       ; $46e7: $09
	pop bc                                           ; $46e8: $c1
	ccf                                              ; $46e9: $3f
	jp c, $0284                                      ; $46ea: $da $84 $02

	ld l, $83                                        ; $46ed: $2e $83
	ld bc, $e1de                                     ; $46ef: $01 $de $e1
	ld [bc], a                                       ; $46f2: $02
	inc bc                                           ; $46f3: $03
	daa                                              ; $46f4: $27
	ei                                               ; $46f5: $fb
	cp $0a                                           ; $46f6: $fe $0a
	db $fc                                           ; $46f8: $fc
	ret nz                                           ; $46f9: $c0

	ld h, l                                          ; $46fa: $65
	ret nz                                           ; $46fb: $c0

	ld [hl], c                                       ; $46fc: $71
	db $fc                                           ; $46fd: $fc
	ret nz                                           ; $46fe: $c0

	ld h, [hl]                                       ; $46ff: $66
	ret nz                                           ; $4700: $c0

	ld [hl], d                                       ; $4701: $72
	cpl                                              ; $4702: $2f
	ei                                               ; $4703: $fb
	ld hl, sp-$40                                    ; $4704: $f8 $c0
	rla                                              ; $4706: $17
	jp c, $3ce0                                      ; $4707: $da $e0 $3c

	daa                                              ; $470a: $27
	add b                                            ; $470b: $80
	ret nz                                           ; $470c: $c0

	dec de                                           ; $470d: $1b
	jp c, $d002                                      ; $470e: $da $02 $d0

	pop de                                           ; $4711: $d1
	rra                                              ; $4712: $1f
	ret nz                                           ; $4713: $c0

	ld bc, $06a0                                     ; $4714: $01 $a0 $06
	nop                                              ; $4717: $00
	adc e                                            ; $4718: $8b
	ret nz                                           ; $4719: $c0

	ld bc, $01a0                                     ; $471a: $01 $a0 $01
	nop                                              ; $471d: $00
	adc [hl]                                         ; $471e: $8e
	ret nc                                           ; $471f: $d0

	add e                                            ; $4720: $83
	ld [bc], a                                       ; $4721: $02
	ld l, l                                          ; $4722: $6d
	jp c, Jump_082_46e1                              ; $4723: $da $e1 $46

	ld bc, $c0e1                                     ; $4726: $01 $e1 $c0
	ld bc, $01a0                                     ; $4729: $01 $a0 $01
	nop                                              ; $472c: $00
	sub c                                            ; $472d: $91
	nop                                              ; $472e: $00
	add b                                            ; $472f: $80
	nop                                              ; $4730: $00
	dec [hl]                                         ; $4731: $35
	ld h, b                                          ; $4732: $60
	cp $09                                           ; $4733: $fe $09
	db $fc                                           ; $4735: $fc
	ret nz                                           ; $4736: $c0

	ld h, l                                          ; $4737: $65
	push de                                          ; $4738: $d5
	db $fc                                           ; $4739: $fc
	ret nz                                           ; $473a: $c0

	ld h, [hl]                                       ; $473b: $66
	ldh [rAUD1SWEEP], a                              ; $473c: $e0 $10
	ld a, [de]                                       ; $473e: $1a
	ret nz                                           ; $473f: $c0

	ld bc, $01a0                                     ; $4740: $01 $a0 $01
	nop                                              ; $4743: $00
	and l                                            ; $4744: $a5
	ret nz                                           ; $4745: $c0

	ld bc, $01a0                                     ; $4746: $01 $a0 $01
	nop                                              ; $4749: $00
	xor e                                            ; $474a: $ab
	ret nc                                           ; $474b: $d0

	adc e                                            ; $474c: $8b
	ld bc, $b00f                                     ; $474d: $01 $0f $b0
	add c                                            ; $4750: $81
	nop                                              ; $4751: $00
	add b                                            ; $4752: $80
	ld bc, $e50e                                     ; $4753: $01 $0e $e5
	ld b, [hl]                                       ; $4756: $46
	ld c, $6b                                        ; $4757: $0e $6b
	inc bc                                           ; $4759: $03
	db $e4                                           ; $475a: $e4
	nop                                              ; $475b: $00
	ld [bc], a                                       ; $475c: $02
	add hl, bc                                       ; $475d: $09
	sub d                                            ; $475e: $92
	add d                                            ; $475f: $82
	ret nz                                           ; $4760: $c0

	dec de                                           ; $4761: $1b
	jp c, $d002                                      ; $4762: $da $02 $d0

	pop de                                           ; $4765: $d1
	inc c                                            ; $4766: $0c
	ret nz                                           ; $4767: $c0

	ld bc, $06a0                                     ; $4768: $01 $a0 $06
	nop                                              ; $476b: $00
	or d                                             ; $476c: $b2
	ret nz                                           ; $476d: $c0

	ld bc, $01a0                                     ; $476e: $01 $a0 $01
	nop                                              ; $4771: $00
	cp b                                             ; $4772: $b8
	inc bc                                           ; $4773: $03
	jp nc, $d4d3                                     ; $4774: $d2 $d3 $d4

	inc c                                            ; $4777: $0c
	ret nz                                           ; $4778: $c0

	ld bc, $06a0                                     ; $4779: $01 $a0 $06
	nop                                              ; $477c: $00
	cp e                                             ; $477d: $bb
	ret nz                                           ; $477e: $c0

	ld bc, $01a0                                     ; $477f: $01 $a0 $01
	nop                                              ; $4782: $00
	cp b                                             ; $4783: $b8
	ld bc, $0cd5                                     ; $4784: $01 $d5 $0c
	ret nz                                           ; $4787: $c0

	ld bc, $06a0                                     ; $4788: $01 $a0 $06
	nop                                              ; $478b: $00
	cp a                                             ; $478c: $bf
	pop bc                                           ; $478d: $c1
	ld e, e                                          ; $478e: $5b
	ret nz                                           ; $478f: $c0

	inc c                                            ; $4790: $0c
	ldh [rAUD3HIGH], a                               ; $4791: $e0 $1e
	ld h, c                                          ; $4793: $61
	cp $09                                           ; $4794: $fe $09
	db $fd                                           ; $4796: $fd
	ret nz                                           ; $4797: $c0

	ld h, h                                          ; $4798: $64
	ldh [$63], a                                     ; $4799: $e0 $63
	db $fc                                           ; $479b: $fc
	ret nz                                           ; $479c: $c0

	ld h, l                                          ; $479d: $65
	push de                                          ; $479e: $d5
	dec de                                           ; $479f: $1b
	add d                                            ; $47a0: $82
	ret nz                                           ; $47a1: $c0

	ld h, [hl]                                       ; $47a2: $66
	ld bc, $05d3                                     ; $47a3: $01 $d3 $05
	ret nc                                           ; $47a6: $d0

	add e                                            ; $47a7: $83
	ld bc, $da72                                     ; $47a8: $01 $72 $da
	ld bc, $05d4                                     ; $47ab: $01 $d4 $05
	ret nc                                           ; $47ae: $d0

	add e                                            ; $47af: $83
	ld bc, $da76                                     ; $47b0: $01 $76 $da
	ld bc, $05d5                                     ; $47b3: $01 $d5 $05
	ret nc                                           ; $47b6: $d0

	add e                                            ; $47b7: $83
	ld bc, $da7a                                     ; $47b8: $01 $7a $da
	cp $09                                           ; $47bb: $fe $09
	db $fc                                           ; $47bd: $fc
	ret nz                                           ; $47be: $c0

	ld h, h                                          ; $47bf: $64
	ldh [$63], a                                     ; $47c0: $e0 $63
	db $fc                                           ; $47c2: $fc
	ret nz                                           ; $47c3: $c0

	ld h, l                                          ; $47c4: $65
	push de                                          ; $47c5: $d5
	inc hl                                           ; $47c6: $23
	add e                                            ; $47c7: $83
	ret nz                                           ; $47c8: $c0

jr_082_47c9:
	ld h, [hl]                                       ; $47c9: $66
	ld bc, $05d2                                     ; $47ca: $01 $d2 $05
	ret nc                                           ; $47cd: $d0

	add e                                            ; $47ce: $83
	ld bc, $da72                                     ; $47cf: $01 $72 $da
	ld bc, $05d3                                     ; $47d2: $01 $d3 $05
	ret nc                                           ; $47d5: $d0

	add e                                            ; $47d6: $83
	ld bc, $da76                                     ; $47d7: $01 $76 $da
	ld bc, $05d4                                     ; $47da: $01 $d4 $05
	ret nc                                           ; $47dd: $d0

	add e                                            ; $47de: $83
	ld bc, $da7a                                     ; $47df: $01 $7a $da
	ld bc, $05d5                                     ; $47e2: $01 $d5 $05
	ret nc                                           ; $47e5: $d0

	add e                                            ; $47e6: $83
	ld bc, $da7e                                     ; $47e7: $01 $7e $da
	nop                                              ; $47ea: $00
	ret nz                                           ; $47eb: $c0

	set 4, l                                         ; $47ec: $cb $e5
	nop                                              ; $47ee: $00
	jr nz, jr_082_47c9                               ; $47ef: $20 $d8

jr_082_47f1:
	and a                                            ; $47f1: $a7
	ld b, $09                                        ; $47f2: $06 $09
	pop bc                                           ; $47f4: $c1
	ld c, e                                          ; $47f5: $4b
	nop                                              ; $47f6: $00
	add b                                            ; $47f7: $80
	ld [bc], a                                       ; $47f8: $02
	add b                                            ; $47f9: $80
	db $fd                                           ; $47fa: $fd
	pop bc                                           ; $47fb: $c1
	ld b, h                                          ; $47fc: $44
	adc e                                            ; $47fd: $8b
	ld [bc], a                                       ; $47fe: $02
	inc [hl]                                         ; $47ff: $34
	ld [bc], a                                       ; $4800: $02
	or b                                             ; $4801: $b0
	ld e, c                                          ; $4802: $59
	dec bc                                           ; $4803: $0b
	pop hl                                           ; $4804: $e1
	ld [bc], a                                       ; $4805: $02
	ld [bc], a                                       ; $4806: $02
	add d                                            ; $4807: $82
	ldh [rSB], a                                     ; $4808: $e0 $01
	jr c, jr_082_47f1                                ; $480a: $38 $e5

	dec l                                            ; $480c: $2d
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00
	ld [bc], a                                       ; $480f: $02
	or b                                             ; $4810: $b0
	ld [de], a                                       ; $4811: $12
	dec bc                                           ; $4812: $0b
	pop hl                                           ; $4813: $e1
	ld [bc], a                                       ; $4814: $02
	ld [bc], a                                       ; $4815: $02
	add d                                            ; $4816: $82
	ldh [rSB], a                                     ; $4817: $e0 $01
	add hl, hl                                       ; $4819: $29
	push hl                                          ; $481a: $e5
	dec l                                            ; $481b: $2d
	ld bc, $020b                                     ; $481c: $01 $0b $02
	or b                                             ; $481f: $b0
	ld e, d                                          ; $4820: $5a
	dec bc                                           ; $4821: $0b
	pop hl                                           ; $4822: $e1
	ld [bc], a                                       ; $4823: $02
	ld [bc], a                                       ; $4824: $02
	add d                                            ; $4825: $82
	ldh [rSB], a                                     ; $4826: $e0 $01
	ld a, [de]                                       ; $4828: $1a
	push hl                                          ; $4829: $e5
	dec l                                            ; $482a: $2d
	inc bc                                           ; $482b: $03
	dec d                                            ; $482c: $15
	ld [bc], a                                       ; $482d: $02
	or b                                             ; $482e: $b0
	inc d                                            ; $482f: $14
	dec bc                                           ; $4830: $0b
	pop hl                                           ; $4831: $e1
	ld [bc], a                                       ; $4832: $02
	ld [bc], a                                       ; $4833: $02
	add d                                            ; $4834: $82
	ldh [rSB], a                                     ; $4835: $e0 $01
	dec bc                                           ; $4837: $0b
	push hl                                          ; $4838: $e5
	dec l                                            ; $4839: $2d
	dec b                                            ; $483a: $05
	or b                                             ; $483b: $b0
	ld [bc], a                                       ; $483c: $02
	or b                                             ; $483d: $b0
	ld e, e                                          ; $483e: $5b
	dec bc                                           ; $483f: $0b
	pop hl                                           ; $4840: $e1
	ld [bc], a                                       ; $4841: $02
	ld [bc], a                                       ; $4842: $02
	add d                                            ; $4843: $82
	ldh [rP1], a                                     ; $4844: $e0 $00
	db $fc                                           ; $4846: $fc
	push hl                                          ; $4847: $e5
	dec l                                            ; $4848: $2d
	ld b, $f8                                        ; $4849: $06 $f8
	ld [bc], a                                       ; $484b: $02
	or b                                             ; $484c: $b0
	ld d, $0b                                        ; $484d: $16 $0b
	pop hl                                           ; $484f: $e1
	ld [bc], a                                       ; $4850: $02
	ld [bc], a                                       ; $4851: $02
	add d                                            ; $4852: $82
	ldh [rP1], a                                     ; $4853: $e0 $00
	db $ed                                           ; $4855: $ed
	push hl                                          ; $4856: $e5
	dec l                                            ; $4857: $2d
	ld [$0231], sp                                   ; $4858: $08 $31 $02
	or b                                             ; $485b: $b0
	jr @+$0d                                         ; $485c: $18 $0b

	pop hl                                           ; $485e: $e1
	ld [bc], a                                       ; $485f: $02
	ld [bc], a                                       ; $4860: $02
	add d                                            ; $4861: $82
	ldh [rP1], a                                     ; $4862: $e0 $00
	sbc $e5                                          ; $4864: $de $e5
	dec l                                            ; $4866: $2d
	ld [$02fb], sp                                   ; $4867: $08 $fb $02
	or b                                             ; $486a: $b0
	inc de                                           ; $486b: $13
	dec bc                                           ; $486c: $0b
	pop hl                                           ; $486d: $e1
	ld [bc], a                                       ; $486e: $02
	ld [bc], a                                       ; $486f: $02
	add d                                            ; $4870: $82
	ldh [rP1], a                                     ; $4871: $e0 $00
	rst GetHLinHL                                          ; $4873: $cf
	push hl                                          ; $4874: $e5
	dec l                                            ; $4875: $2d
	add hl, bc                                       ; $4876: $09
	ld hl, sp+$02                                    ; $4877: $f8 $02
	or b                                             ; $4879: $b0
	ld e, h                                          ; $487a: $5c
	dec bc                                           ; $487b: $0b
	pop hl                                           ; $487c: $e1
	ld [bc], a                                       ; $487d: $02
	ld [bc], a                                       ; $487e: $02
	add d                                            ; $487f: $82
	ldh [rP1], a                                     ; $4880: $e0 $00
	ret nz                                           ; $4882: $c0

	push hl                                          ; $4883: $e5
	dec l                                            ; $4884: $2d
	inc c                                            ; $4885: $0c
	dec [hl]                                         ; $4886: $35
	ld [bc], a                                       ; $4887: $02
	or b                                             ; $4888: $b0
	ld e, l                                          ; $4889: $5d
	dec bc                                           ; $488a: $0b
	pop hl                                           ; $488b: $e1
	ld [bc], a                                       ; $488c: $02
	ld [bc], a                                       ; $488d: $02
	add d                                            ; $488e: $82
	ldh [rP1], a                                     ; $488f: $e0 $00
	or c                                             ; $4891: $b1
	push hl                                          ; $4892: $e5
	dec l                                            ; $4893: $2d
	dec c                                            ; $4894: $0d
	add hl, bc                                       ; $4895: $09
	ld [bc], a                                       ; $4896: $02
	or b                                             ; $4897: $b0
	ld e, [hl]                                       ; $4898: $5e
	dec bc                                           ; $4899: $0b
	pop hl                                           ; $489a: $e1
	ld [bc], a                                       ; $489b: $02
	ld [bc], a                                       ; $489c: $02
	add d                                            ; $489d: $82
	ldh [rP1], a                                     ; $489e: $e0 $00
	and d                                            ; $48a0: $a2
	push hl                                          ; $48a1: $e5
	ld l, $00                                        ; $48a2: $2e $00
	nop                                              ; $48a4: $00
	ld [bc], a                                       ; $48a5: $02
	or b                                             ; $48a6: $b0
	ld e, a                                          ; $48a7: $5f
	dec bc                                           ; $48a8: $0b
	pop hl                                           ; $48a9: $e1
	ld [bc], a                                       ; $48aa: $02
	ld [bc], a                                       ; $48ab: $02
	add d                                            ; $48ac: $82
	ldh [rP1], a                                     ; $48ad: $e0 $00
	sub e                                            ; $48af: $93
	push hl                                          ; $48b0: $e5
	ld l, $00                                        ; $48b1: $2e $00
	jp z, $b002                                      ; $48b3: $ca $02 $b0

	ld h, b                                          ; $48b6: $60
	dec bc                                           ; $48b7: $0b
	pop hl                                           ; $48b8: $e1
	ld [bc], a                                       ; $48b9: $02
	ld [bc], a                                       ; $48ba: $02
	add d                                            ; $48bb: $82
	ldh [rP1], a                                     ; $48bc: $e0 $00
	add h                                            ; $48be: $84
	push hl                                          ; $48bf: $e5
	ld l, $01                                        ; $48c0: $2e $01
	sbc d                                            ; $48c2: $9a
	ld [bc], a                                       ; $48c3: $02
	or b                                             ; $48c4: $b0
	dec d                                            ; $48c5: $15
	dec bc                                           ; $48c6: $0b
	pop hl                                           ; $48c7: $e1
	ld [bc], a                                       ; $48c8: $02
	ld [bc], a                                       ; $48c9: $02
	add d                                            ; $48ca: $82
	ldh [rP1], a                                     ; $48cb: $e0 $00
	ld [hl], l                                       ; $48cd: $75
	push hl                                          ; $48ce: $e5
	ld l, $07                                        ; $48cf: $2e $07
	cp e                                             ; $48d1: $bb
	ld [bc], a                                       ; $48d2: $02
	or b                                             ; $48d3: $b0
	ld h, c                                          ; $48d4: $61
	dec bc                                           ; $48d5: $0b
	pop hl                                           ; $48d6: $e1
	ld [bc], a                                       ; $48d7: $02
	ld [bc], a                                       ; $48d8: $02
	add d                                            ; $48d9: $82
	ldh [rP1], a                                     ; $48da: $e0 $00
	ld h, [hl]                                       ; $48dc: $66
	push hl                                          ; $48dd: $e5
	ld l, $09                                        ; $48de: $2e $09
	inc d                                            ; $48e0: $14
	ld [bc], a                                       ; $48e1: $02
	or b                                             ; $48e2: $b0
	ld h, d                                          ; $48e3: $62
	dec bc                                           ; $48e4: $0b
	pop hl                                           ; $48e5: $e1
	ld [bc], a                                       ; $48e6: $02
	ld [bc], a                                       ; $48e7: $02
	add d                                            ; $48e8: $82
	ldh [rP1], a                                     ; $48e9: $e0 $00
	ld d, a                                          ; $48eb: $57
	push hl                                          ; $48ec: $e5
	ld l, $0a                                        ; $48ed: $2e $0a
	add b                                            ; $48ef: $80
	ld [bc], a                                       ; $48f0: $02
	or b                                             ; $48f1: $b0
	ld h, e                                          ; $48f2: $63
	dec bc                                           ; $48f3: $0b
	pop hl                                           ; $48f4: $e1
	ld [bc], a                                       ; $48f5: $02
	ld [bc], a                                       ; $48f6: $02
	add d                                            ; $48f7: $82
	ldh [rP1], a                                     ; $48f8: $e0 $00
	ld c, b                                          ; $48fa: $48
	push hl                                          ; $48fb: $e5
	ld l, $0c                                        ; $48fc: $2e $0c
	dec hl                                           ; $48fe: $2b
	ld [bc], a                                       ; $48ff: $02
	or b                                             ; $4900: $b0
	ld h, h                                          ; $4901: $64
	dec bc                                           ; $4902: $0b
	pop hl                                           ; $4903: $e1
	ld [bc], a                                       ; $4904: $02
	ld [bc], a                                       ; $4905: $02
	add d                                            ; $4906: $82
	ldh [rP1], a                                     ; $4907: $e0 $00
	add hl, sp                                       ; $4909: $39
	push hl                                          ; $490a: $e5
	ld l, $0d                                        ; $490b: $2e $0d
	dec e                                            ; $490d: $1d
	ld [bc], a                                       ; $490e: $02
	or b                                             ; $490f: $b0
	ld h, l                                          ; $4910: $65

jr_082_4911:
	ld c, $c0                                        ; $4911: $0e $c0
	and a                                            ; $4913: $a7
	db $dd                                           ; $4914: $dd
	db $d3                                           ; $4915: $d3
	pop de                                           ; $4916: $d1
	ret nz                                           ; $4917: $c0

	xor h                                            ; $4918: $ac
	ldh [rP1], a                                     ; $4919: $e0 $00
	daa                                              ; $491b: $27
	push hl                                          ; $491c: $e5
	ld l, $0e                                        ; $491d: $2e $0e
	ld b, [hl]                                       ; $491f: $46
	ld [bc], a                                       ; $4920: $02
	or b                                             ; $4921: $b0
	ld h, [hl]                                       ; $4922: $66
	dec bc                                           ; $4923: $0b
	pop hl                                           ; $4924: $e1
	ld [bc], a                                       ; $4925: $02
	ld [bc], a                                       ; $4926: $02
	add d                                            ; $4927: $82
	ldh [rP1], a                                     ; $4928: $e0 $00
	jr jr_082_4911                                   ; $492a: $18 $e5

	ld l, $0f                                        ; $492c: $2e $0f
	or [hl]                                          ; $492e: $b6
	ld [bc], a                                       ; $492f: $02

jr_082_4930:
	or b                                             ; $4930: $b0
	ld h, a                                          ; $4931: $67
	ld c, $c0                                        ; $4932: $0e $c0
	and a                                            ; $4934: $a7
	db $dd                                           ; $4935: $dd
	db $d3                                           ; $4936: $d3
	jp nc, $acc0                                     ; $4937: $d2 $c0 $ac

	ldh [rP1], a                                     ; $493a: $e0 $00
	ld b, $e5                                        ; $493c: $06 $e5
	ld l, $10                                        ; $493e: $2e $10
	add [hl]                                         ; $4940: $86

jr_082_4941:
	jp nz, Jump_082_610c                             ; $4941: $c2 $0c $61

	ld hl, sp-$40                                    ; $4944: $f8 $c0
	add e                                            ; $4946: $83
	sub $e0                                          ; $4947: $d6 $e0
	ld e, $3d                                        ; $4949: $1e $3d
	ret nz                                           ; $494b: $c0

	and l                                            ; $494c: $a5
	ret nz                                           ; $494d: $c0

	inc c                                            ; $494e: $0c
	ldh [$50], a                                     ; $494f: $e0 $50
	pop hl                                           ; $4951: $e1
	ld [bc], a                                       ; $4952: $02
	inc bc                                           ; $4953: $03
	rra                                              ; $4954: $1f
	ret nz                                           ; $4955: $c0

	ld bc, $0aa0                                     ; $4956: $01 $a0 $0a
	nop                                              ; $4959: $00
	ld bc, $5bc1                                     ; $495a: $01 $c1 $5b
	ret nz                                           ; $495d: $c0

	ld bc, $01a0                                     ; $495e: $01 $a0 $01
	nop                                              ; $4961: $00
	ld [bc], a                                       ; $4962: $02
	ret nz                                           ; $4963: $c0

	ld bc, $01a0                                     ; $4964: $01 $a0 $01
	nop                                              ; $4967: $00
	inc c                                            ; $4968: $0c
	ret nz                                           ; $4969: $c0

	ld bc, $01a0                                     ; $496a: $01 $a0 $01
	nop                                              ; $496d: $00
	jr jr_082_4930                                   ; $496e: $18 $c0

	dec h                                            ; $4970: $25
	pop de                                           ; $4971: $d1
	db $dd                                           ; $4972: $dd
	ret nz                                           ; $4973: $c0

	inc h                                            ; $4974: $24
	pop de                                           ; $4975: $d1
	db $dd                                           ; $4976: $dd
	ret nz                                           ; $4977: $c0

	inc hl                                           ; $4978: $23
	push de                                          ; $4979: $d5
	db $dd                                           ; $497a: $dd
	pop bc                                           ; $497b: $c1
	ld c, h                                          ; $497c: $4c
	db $db                                           ; $497d: $db
	pop bc                                           ; $497e: $c1
	dec sp                                           ; $497f: $3b
	ld b, b                                          ; $4980: $40
	add b                                            ; $4981: $80
	nop                                              ; $4982: $00

jr_082_4983:
	set 4, l                                         ; $4983: $cb $e5
	nop                                              ; $4985: $00
	jr nz, @-$26                                     ; $4986: $20 $d8

	db $fc                                           ; $4988: $fc
	ret nz                                           ; $4989: $c0

	dec de                                           ; $498a: $1b
	db $dd                                           ; $498b: $dd
	push de                                          ; $498c: $d5

jr_082_498d:
	dec e                                            ; $498d: $1d

jr_082_498e:
	ret nz                                           ; $498e: $c0

	inc c                                            ; $498f: $0c
	ldh [$78], a                                     ; $4990: $e0 $78
	pop hl                                           ; $4992: $e1
	ld [bc], a                                       ; $4993: $02
	rlca                                             ; $4994: $07
	cp a                                             ; $4995: $bf
	ret nz                                           ; $4996: $c0

	ld bc, $01a0                                     ; $4997: $01 $a0 $01
	nop                                              ; $499a: $00
	ld e, $c0                                        ; $499b: $1e $c0
	ld bc, $01a0                                     ; $499d: $01 $a0 $01
	nop                                              ; $49a0: $00
	ld h, $c1                                        ; $49a1: $26 $c1
	ld c, h                                          ; $49a3: $4c
	db $db                                           ; $49a4: $db
	pop bc                                           ; $49a5: $c1
	dec sp                                           ; $49a6: $3b
	push hl                                          ; $49a7: $e5
	nop                                              ; $49a8: $00
	jr nz, jr_082_4983                               ; $49a9: $20 $d8

	or c                                             ; $49ab: $b1
	ret nz                                           ; $49ac: $c0

	ld h, $e0                                        ; $49ad: $26 $e0
	jr z, jr_082_498e                                ; $49af: $28 $dd

	ld h, c                                          ; $49b1: $61
	add b                                            ; $49b2: $80
	nop                                              ; $49b3: $00
	db $db                                           ; $49b4: $db
	ld b, e                                          ; $49b5: $43
	ret nz                                           ; $49b6: $c0

	and l                                            ; $49b7: $a5
	ret nz                                           ; $49b8: $c0

	ld bc, $01a0                                     ; $49b9: $01 $a0 $01
	nop                                              ; $49bc: $00
	jr nc, jr_082_4941                               ; $49bd: $30 $82

	ret nz                                           ; $49bf: $c0

	dec de                                           ; $49c0: $1b
	db $dd                                           ; $49c1: $dd
	ld [bc], a                                       ; $49c2: $02
	ret nc                                           ; $49c3: $d0

	pop de                                           ; $49c4: $d1
	inc c                                            ; $49c5: $0c
	ret nz                                           ; $49c6: $c0

	ld bc, $0aa0                                     ; $49c7: $01 $a0 $0a
	nop                                              ; $49ca: $00
	jr c, jr_082_498d                                ; $49cb: $38 $c0

	ld bc, $01a0                                     ; $49cd: $01 $a0 $01
	nop                                              ; $49d0: $00
	ld b, c                                          ; $49d1: $41
	ld [bc], a                                       ; $49d2: $02
	jp nc, $0cd3                                     ; $49d3: $d2 $d3 $0c

	ret nz                                           ; $49d6: $c0

	ld bc, $0aa0                                     ; $49d7: $01 $a0 $0a
	nop                                              ; $49da: $00
	ld c, c                                          ; $49db: $49
	ret nz                                           ; $49dc: $c0

	ld bc, $01a0                                     ; $49dd: $01 $a0 $01
	nop                                              ; $49e0: $00
	ld b, c                                          ; $49e1: $41
	ld bc, $0cd4                                     ; $49e2: $01 $d4 $0c
	ret nz                                           ; $49e5: $c0

	ld bc, $0aa0                                     ; $49e6: $01 $a0 $0a
	nop                                              ; $49e9: $00
	ld d, h                                          ; $49ea: $54
	ret nz                                           ; $49eb: $c0

	ld bc, $01a0                                     ; $49ec: $01 $a0 $01
	nop                                              ; $49ef: $00
	ld e, e                                          ; $49f0: $5b
	ret nz                                           ; $49f1: $c0

	inc hl                                           ; $49f2: $23
	ret c                                            ; $49f3: $d8

	db $dd                                           ; $49f4: $dd
	ld b, b                                          ; $49f5: $40
	add b                                            ; $49f6: $80
	nop                                              ; $49f7: $00
	db $db                                           ; $49f8: $db
	add b                                            ; $49f9: $80
	ld [bc], a                                       ; $49fa: $02
	dec l                                            ; $49fb: $2d
	inc bc                                           ; $49fc: $03
	ldh [rSB], a                                     ; $49fd: $e0 $01
	ld d, c                                          ; $49ff: $51
	ld d, e                                          ; $4a00: $53
	or b                                             ; $4a01: $b0
	call nc, $c045                                   ; $4a02: $d4 $45 $c0
	and l                                            ; $4a05: $a5
	ret nz                                           ; $4a06: $c0

	ld bc, $01a0                                     ; $4a07: $01 $a0 $01
	nop                                              ; $4a0a: $00
	ld h, l                                          ; $4a0b: $65
	add d                                            ; $4a0c: $82
	ret nz                                           ; $4a0d: $c0

	dec de                                           ; $4a0e: $1b
	db $dd                                           ; $4a0f: $dd
	ld [bc], a                                       ; $4a10: $02
	ret nc                                           ; $4a11: $d0

	pop de                                           ; $4a12: $d1
	ld de, $b2c1                                     ; $4a13: $11 $c1 $b2
	db $e3                                           ; $4a16: $e3
	nop                                              ; $4a17: $00
	sub a                                            ; $4a18: $97
	ret nz                                           ; $4a19: $c0

	ld bc, $0aa0                                     ; $4a1a: $01 $a0 $0a
	nop                                              ; $4a1d: $00
	ld l, b                                          ; $4a1e: $68
	ret nz                                           ; $4a1f: $c0

	ld bc, $01a0                                     ; $4a20: $01 $a0 $01
	nop                                              ; $4a23: $00
	ld l, a                                          ; $4a24: $6f
	ld [bc], a                                       ; $4a25: $02
	jp nc, $11d3                                     ; $4a26: $d2 $d3 $11

	pop bc                                           ; $4a29: $c1
	or d                                             ; $4a2a: $b2
	db $e3                                           ; $4a2b: $e3
	nop                                              ; $4a2c: $00
	sbc b                                            ; $4a2d: $98
	ret nz                                           ; $4a2e: $c0

	ld bc, $0aa0                                     ; $4a2f: $01 $a0 $0a
	nop                                              ; $4a32: $00
	ld [hl], d                                       ; $4a33: $72
	ret nz                                           ; $4a34: $c0

	ld bc, $01a0                                     ; $4a35: $01 $a0 $01
	nop                                              ; $4a38: $00
	ld [hl], a                                       ; $4a39: $77
	ld bc, $0cd4                                     ; $4a3a: $01 $d4 $0c
	ret nz                                           ; $4a3d: $c0

	ld bc, $0aa0                                     ; $4a3e: $01 $a0 $0a
	nop                                              ; $4a41: $00
	ld a, d                                          ; $4a42: $7a
	ret nz                                           ; $4a43: $c0

	ld bc, $01a0                                     ; $4a44: $01 $a0 $01
	nop                                              ; $4a47: $00
	ld [hl], a                                       ; $4a48: $77
	rst $38                                          ; $4a49: $ff
	add hl, bc                                       ; $4a4a: $09
	ret nz                                           ; $4a4b: $c0

	ld bc, $01a0                                     ; $4a4c: $01 $a0 $01
	nop                                              ; $4a4f: $00
	ld a, a                                          ; $4a50: $7f
	ldh [rP1], a                                     ; $4a51: $e0 $00
	db $fd                                           ; $4a53: $fd
	pop hl                                           ; $4a54: $e1
	jr nc, jr_082_4a57                               ; $4a55: $30 $00

jr_082_4a57:
	nop                                              ; $4a57: $00
	pop bc                                           ; $4a58: $c1
	ld c, h                                          ; $4a59: $4c
	db $dd                                           ; $4a5a: $dd
	ret nz                                           ; $4a5b: $c0

	ld c, a                                          ; $4a5c: $4f
	ei                                               ; $4a5d: $fb
	cp $09                                           ; $4a5e: $fe $09
	db $fc                                           ; $4a60: $fc
	ret nz                                           ; $4a61: $c0

	ld h, l                                          ; $4a62: $65
	db $d3                                           ; $4a63: $d3
	db $fc                                           ; $4a64: $fc
	ret nz                                           ; $4a65: $c0

	ld h, [hl]                                       ; $4a66: $66
	ldh [$15], a                                     ; $4a67: $e0 $15
	ld [de], a                                       ; $4a69: $12
	ret nz                                           ; $4a6a: $c0

	ld bc, $0aa0                                     ; $4a6b: $01 $a0 $0a
	nop                                              ; $4a6e: $00
	add a                                            ; $4a6f: $87
	ret nz                                           ; $4a70: $c0

	ld bc, $01a0                                     ; $4a71: $01 $a0 $01
	nop                                              ; $4a74: $00
	adc l                                            ; $4a75: $8d
	ret nz                                           ; $4a76: $c0

	ld bc, $0aa0                                     ; $4a77: $01 $a0 $0a
	nop                                              ; $4a7a: $00
	sub h                                            ; $4a7b: $94
	ei                                               ; $4a7c: $fb
	cp $15                                           ; $4a7d: $fe $15
	db $fc                                           ; $4a7f: $fc
	ret nz                                           ; $4a80: $c0

	ld h, l                                          ; $4a81: $65
	rst SubAFromHL                                          ; $4a82: $d7
	rst $38                                          ; $4a83: $ff
	rrca                                             ; $4a84: $0f
	db $fc                                           ; $4a85: $fc
	ret nz                                           ; $4a86: $c0

	ld h, [hl]                                       ; $4a87: $66
	ldh [rAUD2HIGH], a                               ; $4a88: $e0 $19
	db $fc                                           ; $4a8a: $fc
	ret nz                                           ; $4a8b: $c0

	ld h, [hl]                                       ; $4a8c: $66
	ldh [rAUD3ENA], a                                ; $4a8d: $e0 $1a
	db $fc                                           ; $4a8f: $fc
	ret nz                                           ; $4a90: $c0

	ld h, [hl]                                       ; $4a91: $66
	ldh [rAUD3LEN], a                                ; $4a92: $e0 $1b
	inc c                                            ; $4a94: $0c
	ret nz                                           ; $4a95: $c0

	ld bc, $0aa0                                     ; $4a96: $01 $a0 $0a
	nop                                              ; $4a99: $00
	sbc h                                            ; $4a9a: $9c
	ret nz                                           ; $4a9b: $c0

	ld bc, $01a0                                     ; $4a9c: $01 $a0 $01
	nop                                              ; $4a9f: $00
	and c                                            ; $4aa0: $a1
	ei                                               ; $4aa1: $fb
	cp $09                                           ; $4aa2: $fe $09
	db $fc                                           ; $4aa4: $fc
	ret nz                                           ; $4aa5: $c0

	ld h, l                                          ; $4aa6: $65
	reti                                             ; $4aa7: $d9


	db $fc                                           ; $4aa8: $fc
	ret nz                                           ; $4aa9: $c0

	ld h, [hl]                                       ; $4aaa: $66
	ldh [rAUD2ENV], a                                ; $4aab: $e0 $17
	inc c                                            ; $4aad: $0c
	ret nz                                           ; $4aae: $c0

	ld bc, $0aa0                                     ; $4aaf: $01 $a0 $0a
	nop                                              ; $4ab2: $00
	and l                                            ; $4ab3: $a5
	ret nz                                           ; $4ab4: $c0

	ld bc, $01a0                                     ; $4ab5: $01 $a0 $01
	nop                                              ; $4ab8: $00
	xor e                                            ; $4ab9: $ab
	ei                                               ; $4aba: $fb
	cp $10                                           ; $4abb: $fe $10
	add b                                            ; $4abd: $80
	nop                                              ; $4abe: $00
	reti                                             ; $4abf: $d9


	db $fc                                           ; $4ac0: $fc
	ret nz                                           ; $4ac1: $c0

	ld h, h                                          ; $4ac2: $64
	ldh [$61], a                                     ; $4ac3: $e0 $61
	db $fc                                           ; $4ac5: $fc
	ret nz                                           ; $4ac6: $c0

	ld h, l                                          ; $4ac7: $65
	jp c, $c0fc                                      ; $4ac8: $da $fc $c0

	ld h, [hl]                                       ; $4acb: $66
	push de                                          ; $4acc: $d5
	dec hl                                           ; $4acd: $2b
	add d                                            ; $4ace: $82
	ret nz                                           ; $4acf: $c0

	dec de                                           ; $4ad0: $1b
	db $dd                                           ; $4ad1: $dd
	ld [bc], a                                       ; $4ad2: $02
	ret nc                                           ; $4ad3: $d0

	pop de                                           ; $4ad4: $d1
	ld b, $c0                                        ; $4ad5: $06 $c0
	ld bc, $0aa0                                     ; $4ad7: $01 $a0 $0a
	nop                                              ; $4ada: $00
	or b                                             ; $4adb: $b0
	ld [bc], a                                       ; $4adc: $02
	jp nc, $06d3                                     ; $4add: $d2 $d3 $06

	ret nz                                           ; $4ae0: $c0

	ld bc, $0aa0                                     ; $4ae1: $01 $a0 $0a
	nop                                              ; $4ae4: $00
	cp c                                             ; $4ae5: $b9
	ld bc, $06d4                                     ; $4ae6: $01 $d4 $06
	ret nz                                           ; $4ae9: $c0

	ld bc, $0aa0                                     ; $4aea: $01 $a0 $0a
	nop                                              ; $4aed: $00
	ret nz                                           ; $4aee: $c0

	ret nz                                           ; $4aef: $c0

	ld bc, $01a0                                     ; $4af0: $01 $a0 $01
	nop                                              ; $4af3: $00
	rst JumpTable                                          ; $4af4: $c7
	ld b, b                                          ; $4af5: $40
	add b                                            ; $4af6: $80
	nop                                              ; $4af7: $00
	reti                                             ; $4af8: $d9


	ei                                               ; $4af9: $fb
	cp $10                                           ; $4afa: $fe $10
	add b                                            ; $4afc: $80
	nop                                              ; $4afd: $00
	jp c, $c0fc                                      ; $4afe: $da $fc $c0

	ld h, h                                          ; $4b01: $64
	ldh [$62], a                                     ; $4b02: $e0 $62
	db $fc                                           ; $4b04: $fc
	ret nz                                           ; $4b05: $c0

	ld h, l                                          ; $4b06: $65
	jp c, $c0fc                                      ; $4b07: $da $fc $c0

	ld h, [hl]                                       ; $4b0a: $66
	call nc, $8123                                   ; $4b0b: $d4 $23 $81
	ret nz                                           ; $4b0e: $c0

	dec de                                           ; $4b0f: $1b
	db $dd                                           ; $4b10: $dd
	ld [bc], a                                       ; $4b11: $02
	ret nc                                           ; $4b12: $d0

	pop de                                           ; $4b13: $d1
	ld b, $c0                                        ; $4b14: $06 $c0
	ld bc, $0aa0                                     ; $4b16: $01 $a0 $0a
	nop                                              ; $4b19: $00
	call $d203                                       ; $4b1a: $cd $03 $d2
	db $d3                                           ; $4b1d: $d3
	call nc, $c006                                   ; $4b1e: $d4 $06 $c0
	ld bc, $0aa0                                     ; $4b21: $01 $a0 $0a
	nop                                              ; $4b24: $00
	call nc, $01c0                                   ; $4b25: $d4 $c0 $01
	and b                                            ; $4b28: $a0
	ld bc, $c700                                     ; $4b29: $01 $00 $c7
	ld b, b                                          ; $4b2c: $40
	add b                                            ; $4b2d: $80
	nop                                              ; $4b2e: $00
	jp c, $fefb                                      ; $4b2f: $da $fb $fe

	add hl, bc                                       ; $4b32: $09
	db $fc                                           ; $4b33: $fc
	ret nz                                           ; $4b34: $c0

	ld h, l                                          ; $4b35: $65
	call c, $c0fc                                    ; $4b36: $dc $fc $c0
	ld h, [hl]                                       ; $4b39: $66
	ldh [rAUD2ENV], a                                ; $4b3a: $e0 $17
	inc c                                            ; $4b3c: $0c
	ret nz                                           ; $4b3d: $c0

	ld bc, $0aa0                                     ; $4b3e: $01 $a0 $0a
	nop                                              ; $4b41: $00
	jp c, $01c0                                      ; $4b42: $da $c0 $01

	and b                                            ; $4b45: $a0
	ld bc, $df00                                     ; $4b46: $01 $00 $df
	ldh [rSB], a                                     ; $4b49: $e0 $01
	ld e, a                                          ; $4b4b: $5f
	ldh [rP1], a                                     ; $4b4c: $e0 $00
	inc [hl]                                         ; $4b4e: $34
	ld sp, $0cc0                                     ; $4b4f: $31 $c0 $0c
	ldh [$3c], a                                     ; $4b52: $e0 $3c
	pop hl                                           ; $4b54: $e1
	ld [bc], a                                       ; $4b55: $02
	rlca                                             ; $4b56: $07
	cp a                                             ; $4b57: $bf
	ret nz                                           ; $4b58: $c0

	and l                                            ; $4b59: $a5
	add d                                            ; $4b5a: $82
	ret nz                                           ; $4b5b: $c0

	dec de                                           ; $4b5c: $1b
	db $dd                                           ; $4b5d: $dd
	ld [bc], a                                       ; $4b5e: $02
	ret nc                                           ; $4b5f: $d0

	pop de                                           ; $4b60: $d1
	ld b, $c0                                        ; $4b61: $06 $c0
	ld bc, $0aa0                                     ; $4b63: $01 $a0 $0a
	nop                                              ; $4b66: $00
	rst SubAFromBC                                          ; $4b67: $e7
	ld [bc], a                                       ; $4b68: $02
	jp nc, $06d3                                     ; $4b69: $d2 $d3 $06

	ret nz                                           ; $4b6c: $c0

	ld bc, $0aa0                                     ; $4b6d: $01 $a0 $0a
	nop                                              ; $4b70: $00
	ldh a, [c]                                       ; $4b71: $f2
	ld bc, $06d4                                     ; $4b72: $01 $d4 $06
	ret nz                                           ; $4b75: $c0

	ld bc, $0aa0                                     ; $4b76: $01 $a0 $0a
	nop                                              ; $4b79: $00
	ei                                               ; $4b7a: $fb
	ret nz                                           ; $4b7b: $c0

	ld bc, $01a0                                     ; $4b7c: $01 $a0 $01
	ld bc, $2201                                     ; $4b7f: $01 $01 $22
	ei                                               ; $4b82: $fb
	rst $38                                          ; $4b83: $ff
	ld d, $fe                                        ; $4b84: $16 $fe
	add hl, bc                                       ; $4b86: $09
	db $fc                                           ; $4b87: $fc
	ret nz                                           ; $4b88: $c0

	ld h, h                                          ; $4b89: $64
	ldh [$62], a                                     ; $4b8a: $e0 $62
	ei                                               ; $4b8c: $fb
	ret nz                                           ; $4b8d: $c0

	ld h, l                                          ; $4b8e: $65
	push de                                          ; $4b8f: $d5
	cp $09                                           ; $4b90: $fe $09
	db $fc                                           ; $4b92: $fc
	ret nz                                           ; $4b93: $c0

	ld h, h                                          ; $4b94: $64
	ldh [$63], a                                     ; $4b95: $e0 $63
	ld a, [$65c0]                                    ; $4b97: $fa $c0 $65
	sub $08                                          ; $4b9a: $d6 $08
	or b                                             ; $4b9c: $b0
	add hl, de                                       ; $4b9d: $19
	inc bc                                           ; $4b9e: $03
	ldh [rP1], a                                     ; $4b9f: $e0 $00
	inc b                                            ; $4ba1: $04
	rst $38                                          ; $4ba2: $ff
	nop                                              ; $4ba3: $00
	pop bc                                           ; $4ba4: $c1
	inc bc                                           ; $4ba5: $03
	pop bc                                           ; $4ba6: $c1
	ld e, e                                          ; $4ba7: $5b
	pop bc                                           ; $4ba8: $c1
	ld [hl], a                                       ; $4ba9: $77
	pop bc                                           ; $4baa: $c1
	dec sp                                           ; $4bab: $3b
	pop hl                                           ; $4bac: $e1
	ld [bc], a                                       ; $4bad: $02
	ld [bc], a                                       ; $4bae: $02
	or d                                             ; $4baf: $b2
	ret nz                                           ; $4bb0: $c0

	add hl, bc                                       ; $4bb1: $09
	db $e3                                           ; $4bb2: $e3
	nop                                              ; $4bb3: $00
	ld d, a                                          ; $4bb4: $57
	ret nz                                           ; $4bb5: $c0

	ld bc, $0ba0                                     ; $4bb6: $01 $a0 $0b
	ld bc, $a107                                     ; $4bb9: $01 $07 $a1
	add c                                            ; $4bbc: $81
	and b                                            ; $4bbd: $a0
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	inc c                                            ; $4bc0: $0c
	ret nz                                           ; $4bc1: $c0

	ld bc, $01a0                                     ; $4bc2: $01 $a0 $01
	ld bc, $c008                                     ; $4bc5: $01 $08 $c0
	ld bc, $0ba0                                     ; $4bc8: $01 $a0 $0b
	ld bc, $0110                                     ; $4bcb: $01 $10 $01
	inc c                                            ; $4bce: $0c
	ret nz                                           ; $4bcf: $c0

	ld bc, $01a0                                     ; $4bd0: $01 $a0 $01
	ld bc, $c019                                     ; $4bd3: $01 $19 $c0
	ld bc, $0ba0                                     ; $4bd6: $01 $a0 $0b
	ld bc, $ff21                                     ; $4bd9: $01 $21 $ff
	inc c                                            ; $4bdc: $0c
	ret nz                                           ; $4bdd: $c0

	ld bc, $01a0                                     ; $4bde: $01 $a0 $01
	ld bc, $c02a                                     ; $4be1: $01 $2a $c0
	ld bc, $0ba0                                     ; $4be4: $01 $a0 $0b
	ld bc, $c034                                     ; $4be7: $01 $34 $c0
	ld bc, $0aa0                                     ; $4bea: $01 $a0 $0a
	ld bc, $c03c                                     ; $4bed: $01 $3c $c0
	ld bc, $0ba0                                     ; $4bf0: $01 $a0 $0b
	ld bc, $d040                                     ; $4bf3: $01 $40 $d0
	add d                                            ; $4bf6: $82
	and b                                            ; $4bf7: $a0
	ld [bc], a                                       ; $4bf8: $02
	or $81                                           ; $4bf9: $f6 $81
	and b                                            ; $4bfb: $a0
	nop                                              ; $4bfc: $00
	pop de                                           ; $4bfd: $d1
	and b                                            ; $4bfe: $a0
	add d                                            ; $4bff: $82
	and b                                            ; $4c00: $a0
	ld [bc], a                                       ; $4c01: $02
	nop                                              ; $4c02: $00
	ld b, $c0                                        ; $4c03: $06 $c0
	ld bc, $01a0                                     ; $4c05: $01 $a0 $01
	ld bc, $ff52                                     ; $4c08: $01 $52 $ff
	ld b, $c0                                        ; $4c0b: $06 $c0
	ld bc, $01a0                                     ; $4c0d: $01 $a0 $01
	ld bc, $c05d                                     ; $4c10: $01 $5d $c0
	ld bc, $0ba0                                     ; $4c13: $01 $a0 $0b
	ld bc, $c067                                     ; $4c16: $01 $67 $c0
	ld bc, $0aa0                                     ; $4c19: $01 $a0 $0a
	ld bc, $c16b                                     ; $4c1c: $01 $6b $c1
	ld e, e                                          ; $4c1f: $5b
	ret nz                                           ; $4c20: $c0

	ld bc, $0ba0                                     ; $4c21: $01 $a0 $0b
	ld bc, $d072                                     ; $4c24: $01 $72 $d0
	add d                                            ; $4c27: $82
	and b                                            ; $4c28: $a0
	ld [bc], a                                       ; $4c29: $02
	or $81                                           ; $4c2a: $f6 $81
	and b                                            ; $4c2c: $a0
	nop                                              ; $4c2d: $00
	pop de                                           ; $4c2e: $d1
	cp $38                                           ; $4c2f: $fe $38
	add d                                            ; $4c31: $82
	and b                                            ; $4c32: $a0
	ld [bc], a                                       ; $4c33: $02
	nop                                              ; $4c34: $00
	ld b, $c0                                        ; $4c35: $06 $c0
	ld bc, $0aa0                                     ; $4c37: $01 $a0 $0a
	ld bc, $017c                                     ; $4c3a: $01 $7c $01
	ld b, $c0                                        ; $4c3d: $06 $c0
	ld bc, $0aa0                                     ; $4c3f: $01 $a0 $0a
	ld bc, $028d                                     ; $4c42: $01 $8d $02
	ld b, $c0                                        ; $4c45: $06 $c0
	ld bc, $0aa0                                     ; $4c47: $01 $a0 $0a
	ld bc, $03a1                                     ; $4c4a: $01 $a1 $03
	ld b, $c0                                        ; $4c4d: $06 $c0
	ld bc, $0aa0                                     ; $4c4f: $01 $a0 $0a
	ld bc, $ffaf                                     ; $4c52: $01 $af $ff
	inc de                                           ; $4c55: $13
	ei                                               ; $4c56: $fb
	cp $09                                           ; $4c57: $fe $09
	db $fc                                           ; $4c59: $fc
	ret nz                                           ; $4c5a: $c0

	ld h, h                                          ; $4c5b: $64
	ldh [$63], a                                     ; $4c5c: $e0 $63
	ei                                               ; $4c5e: $fb
	ret nz                                           ; $4c5f: $c0

	ld h, l                                          ; $4c60: $65
	push de                                          ; $4c61: $d5
	ld b, $c0                                        ; $4c62: $06 $c0
	ld bc, $0aa0                                     ; $4c64: $01 $a0 $0a
	ld bc, $c0c1                                     ; $4c67: $01 $c1 $c0
	ld bc, $0ba0                                     ; $4c6a: $01 $a0 $0b
	ld bc, $c0d2                                     ; $4c6d: $01 $d2 $c0
	ld bc, $0aa0                                     ; $4c70: $01 $a0 $0a
	ld bc, $c1e4                                     ; $4c73: $01 $e4 $c1
	dec sp                                           ; $4c76: $3b
	pop bc                                           ; $4c77: $c1
	ld a, b                                          ; $4c78: $78
	ret nz                                           ; $4c79: $c0

	inc c                                            ; $4c7a: $0c
	ldh [rAUD3HIGH], a                               ; $4c7b: $e0 $1e
	pop hl                                           ; $4c7d: $e1
	ld [bc], a                                       ; $4c7e: $02
	ld [bc], a                                       ; $4c7f: $02
	adc b                                            ; $4c80: $88
	ret nz                                           ; $4c81: $c0

	ld bc, $0aa0                                     ; $4c82: $01 $a0 $0a
	ld bc, $c0ea                                     ; $4c85: $01 $ea $c0
	ld bc, $01a0                                     ; $4c88: $01 $a0 $01
	ld bc, $c0ed                                     ; $4c8b: $01 $ed $c0
	ld bc, $0aa0                                     ; $4c8e: $01 $a0 $0a
	ld bc, $c0f0                                     ; $4c91: $01 $f0 $c0
	ld bc, $01a0                                     ; $4c94: $01 $a0 $01
	ld bc, $c0f3                                     ; $4c97: $01 $f3 $c0
	ld bc, $0aa0                                     ; $4c9a: $01 $a0 $0a
	ld bc, $c0fd                                     ; $4c9d: $01 $fd $c0
	ld bc, $01a0                                     ; $4ca0: $01 $a0 $01
	ld [bc], a                                       ; $4ca3: $02
	ld [$6bc1], sp                                   ; $4ca4: $08 $c1 $6b
	push de                                          ; $4ca7: $d5
	db $dd                                           ; $4ca8: $dd
	ld a, [de]                                       ; $4ca9: $1a
	ei                                               ; $4caa: $fb
	cp $13                                           ; $4cab: $fe $13
	pop af                                           ; $4cad: $f1
	add b                                            ; $4cae: $80
	and b                                            ; $4caf: $a0
	dec b                                            ; $4cb0: $05
	db $fc                                           ; $4cb1: $fc
	ret nz                                           ; $4cb2: $c0

	ld h, h                                          ; $4cb3: $64
	ldh [$62], a                                     ; $4cb4: $e0 $62
	db $fc                                           ; $4cb6: $fc
	ret nz                                           ; $4cb7: $c0

	ld l, d                                          ; $4cb8: $6a
	jp nc, $8bfc                                     ; $4cb9: $d2 $fc $8b

	ld [bc], a                                       ; $4cbc: $02
	inc [hl]                                         ; $4cbd: $34
	or b                                             ; $4cbe: $b0
	ld e, d                                          ; $4cbf: $5a

Jump_082_4cc0:
	inc bc                                           ; $4cc0: $03
	db $e4                                           ; $4cc1: $e4
	nop                                              ; $4cc2: $00
	ld [bc], a                                       ; $4cc3: $02
	jr c, @+$3f                                      ; $4cc4: $38 $3d

	nop                                              ; $4cc6: $00
	add b                                            ; $4cc7: $80
	and b                                            ; $4cc8: $a0
	dec b                                            ; $4cc9: $05
	ret nz                                           ; $4cca: $c0

	inc c                                            ; $4ccb: $0c
	ldh [rAUD3HIGH], a                               ; $4ccc: $e0 $1e
	ret nz                                           ; $4cce: $c0

	ld bc, $0aa0                                     ; $4ccf: $01 $a0 $0a
	ld [bc], a                                       ; $4cd2: $02
	inc c                                            ; $4cd3: $0c
	ret nz                                           ; $4cd4: $c0

	add hl, bc                                       ; $4cd5: $09
	db $e3                                           ; $4cd6: $e3
	nop                                              ; $4cd7: $00
	ld h, e                                          ; $4cd8: $63
	ret nz                                           ; $4cd9: $c0

	ld bc, $01a0                                     ; $4cda: $01 $a0 $01
	ld [bc], a                                       ; $4cdd: $02
	dec c                                            ; $4cde: $0d
	ret nz                                           ; $4cdf: $c0

	inc c                                            ; $4ce0: $0c
	ldh [rAUD3HIGH], a                               ; $4ce1: $e0 $1e
	ret nz                                           ; $4ce3: $c0

	add hl, bc                                       ; $4ce4: $09
	db $e3                                           ; $4ce5: $e3
	nop                                              ; $4ce6: $00
	ld h, l                                          ; $4ce7: $65
	ret nz                                           ; $4ce8: $c0

	ld bc, $0aa0                                     ; $4ce9: $01 $a0 $0a
	ld [bc], a                                       ; $4cec: $02
	db $10                                           ; $4ced: $10
	ret nz                                           ; $4cee: $c0

	ld bc, $01a0                                     ; $4cef: $01 $a0 $01
	ld [bc], a                                       ; $4cf2: $02
	rla                                              ; $4cf3: $17
	ret nz                                           ; $4cf4: $c0

	set 0, c                                         ; $4cf5: $cb $c1
	ld e, e                                          ; $4cf7: $5b
	ret nz                                           ; $4cf8: $c0

	rrca                                             ; $4cf9: $0f
	db $e3                                           ; $4cfa: $e3
	ld bc, $c013                                     ; $4cfb: $01 $13 $c0
	ld bc, $0aa0                                     ; $4cfe: $01 $a0 $0a
	ld [bc], a                                       ; $4d01: $02
	ld e, $6a                                        ; $4d02: $1e $6a
	ld [bc], a                                       ; $4d04: $02
	ld [hl+], a                                      ; $4d05: $22
	add hl, bc                                       ; $4d06: $09
	inc hl                                           ; $4d07: $23
	ret nz                                           ; $4d08: $c0

	ld [hl+], a                                      ; $4d09: $22
	jp nc, $c0dd                                     ; $4d0a: $d2 $dd $c0

	add hl, bc                                       ; $4d0d: $09
	db $e3                                           ; $4d0e: $e3
	nop                                              ; $4d0f: $00
	dec l                                            ; $4d10: $2d
	ret nz                                           ; $4d11: $c0

	set 0, b                                         ; $4d12: $cb $c0
	ld bc, $01a0                                     ; $4d14: $01 $a0 $01
	ld [bc], a                                       ; $4d17: $02
	dec h                                            ; $4d18: $25
	ret nz                                           ; $4d19: $c0

	ld bc, $22a0                                     ; $4d1a: $01 $a0 $22
	ld [bc], a                                       ; $4d1d: $02
	ld l, $c0                                        ; $4d1e: $2e $c0
	ld bc, $23a0                                     ; $4d20: $01 $a0 $23
	ld [bc], a                                       ; $4d23: $02
	inc a                                            ; $4d24: $3c
	ret nz                                           ; $4d25: $c0

	ld bc, $24a0                                     ; $4d26: $01 $a0 $24
	ld [bc], a                                       ; $4d29: $02
	ld c, e                                          ; $4d2a: $4b
	ld [bc], a                                       ; $4d2b: $02
	ld d, d                                          ; $4d2c: $52
	add hl, bc                                       ; $4d2d: $09
	ccf                                              ; $4d2e: $3f
	ret nz                                           ; $4d2f: $c0

	dec h                                            ; $4d30: $25
	pop de                                           ; $4d31: $d1
	db $dd                                           ; $4d32: $dd
	pop hl                                           ; $4d33: $e1
	ld [bc], a                                       ; $4d34: $02
	inc bc                                           ; $4d35: $03
	rra                                              ; $4d36: $1f
	ret nz                                           ; $4d37: $c0

	ld bc, $0aa0                                     ; $4d38: $01 $a0 $0a
	ld [bc], a                                       ; $4d3b: $02
	ld e, b                                          ; $4d3c: $58
	ret nz                                           ; $4d3d: $c0

	ld bc, $01a0                                     ; $4d3e: $01 $a0 $01
	ld [bc], a                                       ; $4d41: $02
	ld l, c                                          ; $4d42: $69
	ret nz                                           ; $4d43: $c0

	set 0, b                                         ; $4d44: $cb $c0
	add hl, bc                                       ; $4d46: $09
	db $e3                                           ; $4d47: $e3
	nop                                              ; $4d48: $00
	ld h, l                                          ; $4d49: $65
	ret nz                                           ; $4d4a: $c0

	ld bc, $0aa0                                     ; $4d4b: $01 $a0 $0a
	ld [bc], a                                       ; $4d4e: $02
	ld l, h                                          ; $4d4f: $6c
	ret nz                                           ; $4d50: $c0

	ld bc, $22a0                                     ; $4d51: $01 $a0 $22
	ld [bc], a                                       ; $4d54: $02
	ld a, e                                          ; $4d55: $7b
	ret nz                                           ; $4d56: $c0

	ld bc, $0aa0                                     ; $4d57: $01 $a0 $0a
	ld [bc], a                                       ; $4d5a: $02
	adc b                                            ; $4d5b: $88
	ret nz                                           ; $4d5c: $c0

	ld bc, $01a0                                     ; $4d5d: $01 $a0 $01
	ld [bc], a                                       ; $4d60: $02
	adc [hl]                                         ; $4d61: $8e
	ret nz                                           ; $4d62: $c0

	ld bc, $23a0                                     ; $4d63: $01 $a0 $23
	ld [bc], a                                       ; $4d66: $02
	sbc b                                            ; $4d67: $98
	ret nz                                           ; $4d68: $c0

	ld bc, $24a0                                     ; $4d69: $01 $a0 $24
	ld [bc], a                                       ; $4d6c: $02
	sbc [hl]                                         ; $4d6d: $9e
	ld [$6bc1], sp                                   ; $4d6e: $08 $c1 $6b
	rst SubAFromHL                                          ; $4d71: $d7
	db $dd                                           ; $4d72: $dd
	push hl                                          ; $4d73: $e5
	jr nc, jr_082_4d77                               ; $4d74: $30 $01

	dec e                                            ; $4d76: $1d

jr_082_4d77:
	and a                                            ; $4d77: $a7
	ld b, $09                                        ; $4d78: $06 $09
	add hl, bc                                       ; $4d7a: $09
	ret nz                                           ; $4d7b: $c0

	ld bc, $0aa0                                     ; $4d7c: $01 $a0 $0a
	nop                                              ; $4d7f: $00
	ld bc, $00e4                                     ; $4d80: $01 $e4 $00
	ld [bc], a                                       ; $4d83: $02
	jr z, jr_082_4d8c                                ; $4d84: $28 $06

	ret nz                                           ; $4d86: $c0

	ld bc, $01a0                                     ; $4d87: $01 $a0 $01
	nop                                              ; $4d8a: $00
	add hl, bc                                       ; $4d8b: $09

jr_082_4d8c:
	ld e, [hl]                                       ; $4d8c: $5e
	nop                                              ; $4d8d: $00
	rrca                                             ; $4d8e: $0f
	add hl, bc                                       ; $4d8f: $09
	ld d, b                                          ; $4d90: $50
	add e                                            ; $4d91: $83
	ret nz                                           ; $4d92: $c0

	ld h, l                                          ; $4d93: $65
	ld bc, $0edb                                     ; $4d94: $01 $db $0e
	ld h, b                                          ; $4d97: $60
	ei                                               ; $4d98: $fb
	ret nz                                           ; $4d99: $c0

	ld h, [hl]                                       ; $4d9a: $66
	ldh [rAUD2ENV], a                                ; $4d9b: $e0 $17
	inc bc                                           ; $4d9d: $03
	ldh [rP1], a                                     ; $4d9e: $e0 $00
	ld c, h                                          ; $4da0: $4c
	inc bc                                           ; $4da1: $03
	ldh [rP1], a                                     ; $4da2: $e0 $00
	ld e, l                                          ; $4da4: $5d
	ld bc, $03dc                                     ; $4da5: $01 $dc $03
	ldh [rP1], a                                     ; $4da8: $e0 $00
	ld b, d                                          ; $4daa: $42
	ld bc, $0ed1                                     ; $4dab: $01 $d1 $0e
	ld h, b                                          ; $4dae: $60
	ld hl, sp-$40                                    ; $4daf: $f8 $c0
	ld h, [hl]                                       ; $4db1: $66
	ldh [rAUD2LEN], a                                ; $4db2: $e0 $16
	inc bc                                           ; $4db4: $03
	ldh [rP1], a                                     ; $4db5: $e0 $00
	dec [hl]                                         ; $4db7: $35
	inc bc                                           ; $4db8: $03
	ldh [rP1], a                                     ; $4db9: $e0 $00
	ld b, [hl]                                       ; $4dbb: $46
	nop                                              ; $4dbc: $00
	jr nz, @+$62                                     ; $4dbd: $20 $60

	add b                                            ; $4dbf: $80
	ld [bc], a                                       ; $4dc0: $02
	ld e, c                                          ; $4dc1: $59
	inc bc                                           ; $4dc2: $03
	ldh [rP1], a                                     ; $4dc3: $e0 $00
	ld [hl], l                                       ; $4dc5: $75
	rla                                              ; $4dc6: $17
	ld h, b                                          ; $4dc7: $60
	cp $0c                                           ; $4dc8: $fe $0c
	ei                                               ; $4dca: $fb
	ret nz                                           ; $4dcb: $c0

	dec d                                            ; $4dcc: $15
	db $dd                                           ; $4dcd: $dd
	ldh [$50], a                                     ; $4dce: $e0 $50
	ei                                               ; $4dd0: $fb
	ret nz                                           ; $4dd1: $c0

	ld d, $dd                                        ; $4dd2: $16 $dd
	ldh [$5a], a                                     ; $4dd4: $e0 $5a
	inc bc                                           ; $4dd6: $03
	ldh [rP1], a                                     ; $4dd7: $e0 $00
	ld [hl], e                                       ; $4dd9: $73
	inc bc                                           ; $4dda: $03
	ldh [rP1], a                                     ; $4ddb: $e0 $00
	inc h                                            ; $4ddd: $24
	db $e4                                           ; $4dde: $e4
	nop                                              ; $4ddf: $00
	sub l                                            ; $4de0: $95
	nop                                              ; $4de1: $00
	ld de, $0609                                     ; $4de2: $11 $09 $06
	ldh [rP1], a                                     ; $4de5: $e0 $00
	ld l, h                                          ; $4de7: $6c
	db $e4                                           ; $4de8: $e4
	nop                                              ; $4de9: $00
	adc e                                            ; $4dea: $8b
	inc d                                            ; $4deb: $14
	ld h, b                                          ; $4dec: $60
	add b                                            ; $4ded: $80
	ld [bc], a                                       ; $4dee: $02
	ld e, c                                          ; $4def: $59
	dec bc                                           ; $4df0: $0b
	or b                                             ; $4df1: $b0
	ld a, a                                          ; $4df2: $7f
	inc bc                                           ; $4df3: $03
	ldh [rP1], a                                     ; $4df4: $e0 $00
	dec h                                            ; $4df6: $25
	rst $38                                          ; $4df7: $ff
	inc bc                                           ; $4df8: $03
	ldh [rP1], a                                     ; $4df9: $e0 $00
	ccf                                              ; $4dfb: $3f
	inc bc                                           ; $4dfc: $03
	ldh [rP1], a                                     ; $4dfd: $e0 $00
	inc e                                            ; $4dff: $1c
	add hl, de                                       ; $4e00: $19
	or c                                             ; $4e01: $b1
	ld d, h                                          ; $4e02: $54
	ld b, $c0                                        ; $4e03: $06 $c0
	ld bc, $01a0                                     ; $4e05: $01 $a0 $01
	nop                                              ; $4e08: $00
	inc de                                           ; $4e09: $13
	xor d                                            ; $4e0a: $aa
	ld b, $c0                                        ; $4e0b: $06 $c0
	ld bc, $01a0                                     ; $4e0d: $01 $a0 $01
	nop                                              ; $4e10: $00
	inc e                                            ; $4e11: $1c
	rst $38                                          ; $4e12: $ff
	ld b, $c0                                        ; $4e13: $06 $c0
	ld bc, $01a0                                     ; $4e15: $01 $a0 $01
	nop                                              ; $4e18: $00
	dec h                                            ; $4e19: $25
	ld e, $82                                        ; $4e1a: $1e $82
	ret nz                                           ; $4e1c: $c0

	add b                                            ; $4e1d: $80
	ld bc, $06d3                                     ; $4e1e: $01 $d3 $06
	ret nz                                           ; $4e21: $c0

	ld bc, $01a0                                     ; $4e22: $01 $a0 $01
	nop                                              ; $4e25: $00
	ld l, $01                                        ; $4e26: $2e $01
	jp nc, $c006                                     ; $4e28: $d2 $06 $c0

	ld bc, $01a0                                     ; $4e2b: $01 $a0 $01
	nop                                              ; $4e2e: $00
	ld b, b                                          ; $4e2f: $40
	ld bc, $06d1                                     ; $4e30: $01 $d1 $06
	ret nz                                           ; $4e33: $c0

	ld bc, $01a0                                     ; $4e34: $01 $a0 $01
	nop                                              ; $4e37: $00
	ld c, [hl]                                       ; $4e38: $4e
	ld de, $7fb0                                     ; $4e39: $11 $b0 $7f
	ld b, $c0                                        ; $4e3c: $06 $c0
	ld bc, $01a0                                     ; $4e3e: $01 $a0 $01
	nop                                              ; $4e41: $00
	ld h, b                                          ; $4e42: $60
	rst $38                                          ; $4e43: $ff
	ld b, $c0                                        ; $4e44: $06 $c0
	ld bc, $01a0                                     ; $4e46: $01 $a0 $01
	nop                                              ; $4e49: $00
	ld [hl], c                                       ; $4e4a: $71
	ld b, $c0                                        ; $4e4b: $06 $c0
	ld bc, $01a0                                     ; $4e4d: $01 $a0 $01
	nop                                              ; $4e50: $00
	add d                                            ; $4e51: $82
	ld hl, $3fb2                                     ; $4e52: $21 $b2 $3f
	ld b, $c0                                        ; $4e55: $06 $c0
	ld bc, $01a0                                     ; $4e57: $01 $a0 $01
	nop                                              ; $4e5a: $00
	sub c                                            ; $4e5b: $91
	ld a, a                                          ; $4e5c: $7f
	ld b, $c0                                        ; $4e5d: $06 $c0
	ld bc, $01a0                                     ; $4e5f: $01 $a0 $01
	nop                                              ; $4e62: $00
	sbc b                                            ; $4e63: $98
	cp a                                             ; $4e64: $bf
	ld b, $c0                                        ; $4e65: $06 $c0
	ld bc, $01a0                                     ; $4e67: $01 $a0 $01
	nop                                              ; $4e6a: $00
	sbc a                                            ; $4e6b: $9f
	rst $38                                          ; $4e6c: $ff
	ld b, $c0                                        ; $4e6d: $06 $c0
	ld bc, $01a0                                     ; $4e6f: $01 $a0 $01
	nop                                              ; $4e72: $00
	xor e                                            ; $4e73: $ab
	add hl, bc                                       ; $4e74: $09
	ld c, $d0                                        ; $4e75: $0e $d0
	add d                                            ; $4e77: $82
	ld bc, $d3db                                     ; $4e78: $01 $db $d3
	ret nz                                           ; $4e7b: $c0

	ld d, [hl]                                       ; $4e7c: $56
	db $dd                                           ; $4e7d: $dd
	ret nc                                           ; $4e7e: $d0

	ret nc                                           ; $4e7f: $d0

	push hl                                          ; $4e80: $e5
	cpl                                              ; $4e81: $2f
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	add hl, bc                                       ; $4e84: $09
	ld a, e                                          ; $4e85: $7b
	add c                                            ; $4e86: $81
	ret nz                                           ; $4e87: $c0

	ld h, l                                          ; $4e88: $65
	ld [bc], a                                       ; $4e89: $02
	db $d3                                           ; $4e8a: $d3
	call nc, $c01a                                   ; $4e8b: $d4 $1a $c0
	ld bc, $0aa0                                     ; $4e8e: $01 $a0 $0a
	nop                                              ; $4e91: $00
	or e                                             ; $4e92: $b3
	ret nz                                           ; $4e93: $c0

	ld bc, $01a0                                     ; $4e94: $01 $a0 $01
	nop                                              ; $4e97: $00
	cp e                                             ; $4e98: $bb
	ret nz                                           ; $4e99: $c0

	ld bc, $0aa0                                     ; $4e9a: $01 $a0 $0a
	nop                                              ; $4e9d: $00
	ret nz                                           ; $4e9e: $c0

	ret nc                                           ; $4e9f: $d0

	add e                                            ; $4ea0: $83
	ld bc, $d1de                                     ; $4ea1: $01 $de $d1
	db $e4                                           ; $4ea4: $e4
	ld bc, $007f                                     ; $4ea5: $01 $7f $00
	ld e, b                                          ; $4ea8: $58
	ret nc                                           ; $4ea9: $d0

	add e                                            ; $4eaa: $83
	ld bc, $d0de                                     ; $4eab: $01 $de $d0
	ret nz                                           ; $4eae: $c0

	ld bc, $0aa0                                     ; $4eaf: $01 $a0 $0a
	nop                                              ; $4eb2: $00
	call nz, $fefb                                   ; $4eb3: $c4 $fb $fe
	ld [$80f1], sp                                   ; $4eb6: $08 $f1 $80
	and b                                            ; $4eb9: $a0
	nop                                              ; $4eba: $00
	db $fc                                           ; $4ebb: $fc
	ret nz                                           ; $4ebc: $c0

	ld l, d                                          ; $4ebd: $6a
	pop de                                           ; $4ebe: $d1
	rla                                              ; $4ebf: $17
	add b                                            ; $4ec0: $80
	ret nz                                           ; $4ec1: $c0

	dec de                                           ; $4ec2: $1b
	db $dd                                           ; $4ec3: $dd
	ld [bc], a                                       ; $4ec4: $02
	ret nc                                           ; $4ec5: $d0

	pop de                                           ; $4ec6: $d1
	rrca                                             ; $4ec7: $0f
	ret nz                                           ; $4ec8: $c0

	ld bc, $01a0                                     ; $4ec9: $01 $a0 $01
	nop                                              ; $4ecc: $00
	pop de                                           ; $4ecd: $d1
	ret nz                                           ; $4ece: $c0

	ld bc, $0aa0                                     ; $4ecf: $01 $a0 $0a
	nop                                              ; $4ed2: $00
	sub $e4                                          ; $4ed3: $d6 $e4
	nop                                              ; $4ed5: $00
	inc l                                            ; $4ed6: $2c
	and b                                            ; $4ed7: $a0
	add b                                            ; $4ed8: $80
	and b                                            ; $4ed9: $a0
	ld bc, $0f00                                     ; $4eda: $01 $00 $0f
	ret nz                                           ; $4edd: $c0

	ld bc, $01a0                                     ; $4ede: $01 $a0 $01
	nop                                              ; $4ee1: $00
	rst SubAFromHL                                          ; $4ee2: $d7
	ret nz                                           ; $4ee3: $c0

	ld bc, $0aa0                                     ; $4ee4: $01 $a0 $0a
	nop                                              ; $4ee7: $00
	call c, $00e4                                    ; $4ee8: $dc $e4 $00
	and d                                            ; $4eeb: $a2
	rst $38                                          ; $4eec: $ff
	inc de                                           ; $4eed: $13
	ret nz                                           ; $4eee: $c0

	ld bc, $01a0                                     ; $4eef: $01 $a0 $01
	nop                                              ; $4ef2: $00
	pop de                                           ; $4ef3: $d1
	ret nz                                           ; $4ef4: $c0

	ld bc, $0aa0                                     ; $4ef5: $01 $a0 $0a
	nop                                              ; $4ef8: $00
	call c, $8040                                    ; $4ef9: $dc $40 $80
	and b                                            ; $4efc: $a0
	ld bc, $00e4                                     ; $4efd: $01 $e4 $00
	reti                                             ; $4f00: $d9


	add hl, bc                                       ; $4f01: $09
	adc c                                            ; $4f02: $89
	nop                                              ; $4f03: $00
	add b                                            ; $4f04: $80
	and b                                            ; $4f05: $a0
	nop                                              ; $4f06: $00
	pop hl                                           ; $4f07: $e1
	ld [bc], a                                       ; $4f08: $02
	dec b                                            ; $4f09: $05
	rla                                              ; $4f0a: $17
	ret nz                                           ; $4f0b: $c0

	ld bc, $0aa0                                     ; $4f0c: $01 $a0 $0a
	nop                                              ; $4f0f: $00
	rst SubAFromDE                                          ; $4f10: $df
	ret nz                                           ; $4f11: $c0

	ld bc, $01a0                                     ; $4f12: $01 $a0 $01
	nop                                              ; $4f15: $00
	db $e4                                           ; $4f16: $e4
	ret nz                                           ; $4f17: $c0

	ld bc, $0aa0                                     ; $4f18: $01 $a0 $0a
	nop                                              ; $4f1b: $00
	sub $c0                                          ; $4f1c: $d6 $c0
	set 0, c                                         ; $4f1e: $cb $c1
	ld e, e                                          ; $4f20: $5b
	ret nz                                           ; $4f21: $c0

	inc c                                            ; $4f22: $0c
	ldh [$5a], a                                     ; $4f23: $e0 $5a
	ret nz                                           ; $4f25: $c0

	ld bc, $01a0                                     ; $4f26: $01 $a0 $01
	nop                                              ; $4f29: $00
	rst AddAOntoHL                                          ; $4f2a: $ef
	ret nz                                           ; $4f2b: $c0

	rrca                                             ; $4f2c: $0f
	db $e3                                           ; $4f2d: $e3
	ld bc, $c00f                                     ; $4f2e: $01 $0f $c0
	dec bc                                           ; $4f31: $0b
	db $e3                                           ; $4f32: $e3
	nop                                              ; $4f33: $00
	dec b                                            ; $4f34: $05
	ret nz                                           ; $4f35: $c0

	ld bc, $01a0                                     ; $4f36: $01 $a0 $01
	nop                                              ; $4f39: $00
	ld sp, hl                                        ; $4f3a: $f9
	ret nz                                           ; $4f3b: $c0

	inc c                                            ; $4f3c: $0c
	ldh [$78], a                                     ; $4f3d: $e0 $78
	ret nz                                           ; $4f3f: $c0

	ld bc, $01a0                                     ; $4f40: $01 $a0 $01
	nop                                              ; $4f43: $00
	ei                                               ; $4f44: $fb
	ret nz                                           ; $4f45: $c0

	dec bc                                           ; $4f46: $0b
	db $e3                                           ; $4f47: $e3
	nop                                              ; $4f48: $00
	dec b                                            ; $4f49: $05
	ret nz                                           ; $4f4a: $c0

	set 0, b                                         ; $4f4b: $cb $c0
	ld de, $00e3                                     ; $4f4d: $11 $e3 $00
	add e                                            ; $4f50: $83
	pop bc                                           ; $4f51: $c1
	ld e, h                                          ; $4f52: $5c
	ret nz                                           ; $4f53: $c0

	jp z, $0bc0                                      ; $4f54: $ca $c0 $0b

	db $e3                                           ; $4f57: $e3
	nop                                              ; $4f58: $00
	dec b                                            ; $4f59: $05
	ret nz                                           ; $4f5a: $c0

	ld bc, $01a0                                     ; $4f5b: $01 $a0 $01
	ld bc, $c00a                                     ; $4f5e: $01 $0a $c0
	ld bc, $0aa0                                     ; $4f61: $01 $a0 $0a
	ld bc, $c014                                     ; $4f64: $01 $14 $c0
	ld bc, $01a0                                     ; $4f67: $01 $a0 $01
	ld bc, $e118                                     ; $4f6a: $01 $18 $e1
	ld [bc], a                                       ; $4f6d: $02
	inc bc                                           ; $4f6e: $03
	rrca                                             ; $4f6f: $0f
	ret nz                                           ; $4f70: $c0

	ld bc, $0aa0                                     ; $4f71: $01 $a0 $0a
	ld bc, $c01d                                     ; $4f74: $01 $1d $c0
	ld bc, $01a0                                     ; $4f77: $01 $a0 $01
	ld bc, $d028                                     ; $4f7a: $01 $28 $d0
	add d                                            ; $4f7d: $82
	ld bc, $d2db                                     ; $4f7e: $01 $db $d2
	pop hl                                           ; $4f81: $e1
	ld [bc], a                                       ; $4f82: $02
	inc b                                            ; $4f83: $04
	pop de                                           ; $4f84: $d1
	pop bc                                           ; $4f85: $c1
	ld l, e                                          ; $4f86: $6b
	sub $dd                                          ; $4f87: $d6 $dd
	db $e4                                           ; $4f89: $e4
	nop                                              ; $4f8a: $00
	rst SubAFromBC                                          ; $4f8b: $e7
	jr z, @+$0c                                      ; $4f8c: $28 $0a

	pop hl                                           ; $4f8e: $e1
	ld [bc], a                                       ; $4f8f: $02
	dec b                                            ; $4f90: $05
	dec b                                            ; $4f91: $05
	ret nz                                           ; $4f92: $c0

	ld bc, $0aa0                                     ; $4f93: $01 $a0 $0a
	ld bc, $3f30                                     ; $4f96: $01 $30 $3f
	ld bc, $0936                                     ; $4f99: $01 $36 $09
	ld de, $02e1                                     ; $4f9c: $11 $e1 $02
	inc bc                                           ; $4f9f: $03
	dec de                                           ; $4fa0: $1b
	ret nz                                           ; $4fa1: $c0

	ld bc, $0aa0                                     ; $4fa2: $01 $a0 $0a
	ld bc, $e138                                     ; $4fa5: $01 $38 $e1
	ld [bc], a                                       ; $4fa8: $02
	inc b                                            ; $4fa9: $04
	add e                                            ; $4faa: $83
	db $e4                                           ; $4fab: $e4
	nop                                              ; $4fac: $00
	push bc                                          ; $4fad: $c5
	ld bc, $0949                                     ; $4fae: $01 $49 $09
	ld de, $02e1                                     ; $4fb1: $11 $e1 $02
	inc bc                                           ; $4fb4: $03
	rla                                              ; $4fb5: $17
	ret nz                                           ; $4fb6: $c0

	ld bc, $0aa0                                     ; $4fb7: $01 $a0 $0a
	ld bc, $e14b                                     ; $4fba: $01 $4b $e1
	ld [bc], a                                       ; $4fbd: $02
	inc b                                            ; $4fbe: $04
	ld a, d                                          ; $4fbf: $7a
	db $e4                                           ; $4fc0: $e4
	nop                                              ; $4fc1: $00
	or b                                             ; $4fc2: $b0
	ld bc, $0957                                     ; $4fc3: $01 $57 $09
	ld de, $02e1                                     ; $4fc6: $11 $e1 $02
	inc bc                                           ; $4fc9: $03
	inc de                                           ; $4fca: $13
	ret nz                                           ; $4fcb: $c0

	ld bc, $0aa0                                     ; $4fcc: $01 $a0 $0a
	ld bc, $e159                                     ; $4fcf: $01 $59 $e1
	ld [bc], a                                       ; $4fd2: $02
	inc b                                            ; $4fd3: $04
	ld [hl], c                                       ; $4fd4: $71
	db $e4                                           ; $4fd5: $e4
	nop                                              ; $4fd6: $00
	sbc e                                            ; $4fd7: $9b
	jr z, @+$0c                                      ; $4fd8: $28 $0a

	pop hl                                           ; $4fda: $e1
	ld [bc], a                                       ; $4fdb: $02
	dec b                                            ; $4fdc: $05
	rla                                              ; $4fdd: $17
	ret nz                                           ; $4fde: $c0

	ld bc, $0aa0                                     ; $4fdf: $01 $a0 $0a
	ld bc, $3f5c                                     ; $4fe2: $01 $5c $3f
	ld bc, $0969                                     ; $4fe5: $01 $69 $09
	ld de, $02e1                                     ; $4fe8: $11 $e1 $02
	inc bc                                           ; $4feb: $03
	inc de                                           ; $4fec: $13
	ret nz                                           ; $4fed: $c0

	ld bc, $0aa0                                     ; $4fee: $01 $a0 $0a
	ld bc, $e170                                     ; $4ff1: $01 $70 $e1
	ld [bc], a                                       ; $4ff4: $02
	inc b                                            ; $4ff5: $04
	ld [hl], c                                       ; $4ff6: $71
	db $e4                                           ; $4ff7: $e4
	nop                                              ; $4ff8: $00
	ld a, c                                          ; $4ff9: $79
	ld bc, $0976                                     ; $4ffa: $01 $76 $09
	ld de, $02e1                                     ; $4ffd: $11 $e1 $02
	inc bc                                           ; $5000: $03
	rra                                              ; $5001: $1f
	ret nz                                           ; $5002: $c0

	ld bc, $0aa0                                     ; $5003: $01 $a0 $0a
	ld bc, $e17c                                     ; $5006: $01 $7c $e1
	ld [bc], a                                       ; $5009: $02
	inc b                                            ; $500a: $04
	adc h                                            ; $500b: $8c
	db $e4                                           ; $500c: $e4
	nop                                              ; $500d: $00
	ld h, h                                          ; $500e: $64
	ld bc, $0980                                     ; $500f: $01 $80 $09
	ld de, $02e1                                     ; $5012: $11 $e1 $02
	inc bc                                           ; $5015: $03
	inc de                                           ; $5016: $13
	ret nz                                           ; $5017: $c0

	ld bc, $0aa0                                     ; $5018: $01 $a0 $0a
	ld bc, $e184                                     ; $501b: $01 $84 $e1
	ld [bc], a                                       ; $501e: $02
	inc b                                            ; $501f: $04
	ld [hl], c                                       ; $5020: $71
	db $e4                                           ; $5021: $e4
	nop                                              ; $5022: $00
	ld c, a                                          ; $5023: $4f
	jr z, @+$0d                                      ; $5024: $28 $0b

	pop bc                                           ; $5026: $c1
	ld e, c                                          ; $5027: $59
	db $e3                                           ; $5028: $e3
	nop                                              ; $5029: $00
	add h                                            ; $502a: $84
	ret nz                                           ; $502b: $c0

	ld bc, $0aa0                                     ; $502c: $01 $a0 $0a
	ld bc, $3f8d                                     ; $502f: $01 $8d $3f
	ld bc, $0999                                     ; $5032: $01 $99 $09
	ld de, $02e1                                     ; $5035: $11 $e1 $02
	inc bc                                           ; $5038: $03
	inc de                                           ; $5039: $13
	ret nz                                           ; $503a: $c0

	ld bc, $0aa0                                     ; $503b: $01 $a0 $0a
	ld bc, $e1a1                                     ; $503e: $01 $a1 $e1
	ld [bc], a                                       ; $5041: $02
	inc b                                            ; $5042: $04
	ld [hl], c                                       ; $5043: $71
	db $e4                                           ; $5044: $e4
	nop                                              ; $5045: $00
	inc l                                            ; $5046: $2c
	ld bc, $09a8                                     ; $5047: $01 $a8 $09
	ld de, $02e1                                     ; $504a: $11 $e1 $02
	inc bc                                           ; $504d: $03
	dec de                                           ; $504e: $1b
	ret nz                                           ; $504f: $c0

	ld bc, $0aa0                                     ; $5050: $01 $a0 $0a
	ld bc, $e1aa                                     ; $5053: $01 $aa $e1
	ld [bc], a                                       ; $5056: $02
	inc b                                            ; $5057: $04
	add e                                            ; $5058: $83
	db $e4                                           ; $5059: $e4
	nop                                              ; $505a: $00
	rla                                              ; $505b: $17
	ld bc, $09b0                                     ; $505c: $01 $b0 $09
	ld de, $02e1                                     ; $505f: $11 $e1 $02
	inc bc                                           ; $5062: $03
	rla                                              ; $5063: $17
	ret nz                                           ; $5064: $c0

	ld bc, $0aa0                                     ; $5065: $01 $a0 $0a
	ld bc, $e1b7                                     ; $5068: $01 $b7 $e1
	ld [bc], a                                       ; $506b: $02
	inc b                                            ; $506c: $04
	ld a, d                                          ; $506d: $7a
	db $e4                                           ; $506e: $e4
	nop                                              ; $506f: $00
	ld [bc], a                                       ; $5070: $02
	add hl, bc                                       ; $5071: $09
	dec de                                           ; $5072: $1b
	pop hl                                           ; $5073: $e1
	ld [bc], a                                       ; $5074: $02
	dec b                                            ; $5075: $05
	add hl, hl                                       ; $5076: $29
	add c                                            ; $5077: $81
	ret nz                                           ; $5078: $c0

	ld h, l                                          ; $5079: $65
	ld [bc], a                                       ; $507a: $02
	db $d3                                           ; $507b: $d3
	call nc, $c005                                   ; $507c: $d4 $05 $c0
	ld d, [hl]                                       ; $507f: $56
	db $dd                                           ; $5080: $dd
	pop de                                           ; $5081: $d1
	pop de                                           ; $5082: $d1
	nop                                              ; $5083: $00
	dec b                                            ; $5084: $05
	ret nz                                           ; $5085: $c0

	ld d, [hl]                                       ; $5086: $56
	db $dd                                           ; $5087: $dd
	pop de                                           ; $5088: $d1
	ret nc                                           ; $5089: $d0

	push hl                                          ; $508a: $e5
	cpl                                              ; $508b: $2f
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	jr z, @+$08                                      ; $508e: $28 $06

	ret nz                                           ; $5090: $c0

	ld bc, $0aa0                                     ; $5091: $01 $a0 $0a
	ld bc, $48bb                                     ; $5094: $01 $bb $48
	ld bc, $09c1                                     ; $5097: $01 $c1 $09
	inc d                                            ; $509a: $14
	ret nz                                           ; $509b: $c0

	ld bc, $0aa0                                     ; $509c: $01 $a0 $0a
	nop                                              ; $509f: $00
	call c, $8bd0                                    ; $50a0: $dc $d0 $8b
	and b                                            ; $50a3: $a0
	ld [bc], a                                       ; $50a4: $02
	or b                                             ; $50a5: $b0
	add d                                            ; $50a6: $82
	ret nc                                           ; $50a7: $d0

	add e                                            ; $50a8: $83
	ld bc, $d0de                                     ; $50a9: $01 $de $d0
	db $e4                                           ; $50ac: $e4
	nop                                              ; $50ad: $00
	ld [hl-], a                                      ; $50ae: $32
	ld bc, $09c3                                     ; $50af: $01 $c3 $09
	inc d                                            ; $50b2: $14
	ret nz                                           ; $50b3: $c0

	ld bc, $0aa0                                     ; $50b4: $01 $a0 $0a
	nop                                              ; $50b7: $00
	call c, $8bd0                                    ; $50b8: $dc $d0 $8b
	and b                                            ; $50bb: $a0
	ld [bc], a                                       ; $50bc: $02
	or b                                             ; $50bd: $b0
	add e                                            ; $50be: $83
	ret nc                                           ; $50bf: $d0

Jump_082_50c0:
	add e                                            ; $50c0: $83
	ld bc, $d1de                                     ; $50c1: $01 $de $d1
	db $e4                                           ; $50c4: $e4
	nop                                              ; $50c5: $00
	ret z                                            ; $50c6: $c8

	ld bc, $09c5                                     ; $50c7: $01 $c5 $09
	inc d                                            ; $50ca: $14
	ret nz                                           ; $50cb: $c0

	ld bc, $0aa0                                     ; $50cc: $01 $a0 $0a
	nop                                              ; $50cf: $00
	call c, $8bd0                                    ; $50d0: $dc $d0 $8b
	and b                                            ; $50d3: $a0
	ld [bc], a                                       ; $50d4: $02
	or b                                             ; $50d5: $b0
	add h                                            ; $50d6: $84
	ret nc                                           ; $50d7: $d0

	add e                                            ; $50d8: $83
	ld bc, $d2de                                     ; $50d9: $01 $de $d2
	db $e4                                           ; $50dc: $e4
	ld bc, $095e                                     ; $50dd: $01 $5e $09
	inc e                                            ; $50e0: $1c
	pop bc                                           ; $50e1: $c1
	ld e, c                                          ; $50e2: $59
	db $e3                                           ; $50e3: $e3
	nop                                              ; $50e4: $00
	and b                                            ; $50e5: $a0
	ret nz                                           ; $50e6: $c0

	add hl, bc                                       ; $50e7: $09
	db $e3                                           ; $50e8: $e3
	nop                                              ; $50e9: $00
	inc e                                            ; $50ea: $1c
	and b                                            ; $50eb: $a0
	add b                                            ; $50ec: $80
	and b                                            ; $50ed: $a0
	ld c, $00                                        ; $50ee: $0e $00
	inc bc                                           ; $50f0: $03
	db $e4                                           ; $50f1: $e4
	nop                                              ; $50f2: $00
	dec bc                                           ; $50f3: $0b
	rst $38                                          ; $50f4: $ff
	rlca                                             ; $50f5: $07
	ld b, b                                          ; $50f6: $40
	add b                                            ; $50f7: $80
	and b                                            ; $50f8: $a0
	ld c, $e4                                        ; $50f9: $0e $e4
	nop                                              ; $50fb: $00
	ld c, d                                          ; $50fc: $4a
	jr z, @+$08                                      ; $50fd: $28 $06

	ret nz                                           ; $50ff: $c0

	ld bc, $0aa0                                     ; $5100: $01 $a0 $0a
	ld bc, $3fc7                                     ; $5103: $01 $c7 $3f
	ld bc, $09d7                                     ; $5106: $01 $d7 $09
	ld de, $02e1                                     ; $5109: $11 $e1 $02
	inc bc                                           ; $510c: $03
	rrca                                             ; $510d: $0f
	ret nz                                           ; $510e: $c0

	ld bc, $0aa0                                     ; $510f: $01 $a0 $0a
	ld bc, $e1dc                                     ; $5112: $01 $dc $e1
	ld [bc], a                                       ; $5115: $02
	inc b                                            ; $5116: $04
	ld l, b                                          ; $5117: $68
	db $e4                                           ; $5118: $e4
	ld bc, $01dc                                     ; $5119: $01 $dc $01
	and $09                                          ; $511c: $e6 $09
	ld de, $02e1                                     ; $511e: $11 $e1 $02
	inc bc                                           ; $5121: $03
	dec de                                           ; $5122: $1b
	ret nz                                           ; $5123: $c0

	ld bc, $0aa0                                     ; $5124: $01 $a0 $0a
	ld bc, $e1ea                                     ; $5127: $01 $ea $e1
	ld [bc], a                                       ; $512a: $02
	inc b                                            ; $512b: $04
	adc h                                            ; $512c: $8c
	db $e4                                           ; $512d: $e4
	ld bc, $01c7                                     ; $512e: $01 $c7 $01
	pop af                                           ; $5131: $f1
	add hl, bc                                       ; $5132: $09
	ld de, $02e1                                     ; $5133: $11 $e1 $02
	inc bc                                           ; $5136: $03
	inc de                                           ; $5137: $13
	ret nz                                           ; $5138: $c0

	ld bc, $0aa0                                     ; $5139: $01 $a0 $0a
	ld bc, $e1f9                                     ; $513c: $01 $f9 $e1
	ld [bc], a                                       ; $513f: $02
	inc b                                            ; $5140: $04
	ld [hl], c                                       ; $5141: $71
	db $e4                                           ; $5142: $e4
	ld bc, $28b2                                     ; $5143: $01 $b2 $28
	ld b, $c0                                        ; $5146: $06 $c0
	ld bc, $0aa0                                     ; $5148: $01 $a0 $0a
	ld [bc], a                                       ; $514b: $02
	inc b                                            ; $514c: $04
	ccf                                              ; $514d: $3f
	ld [bc], a                                       ; $514e: $02
	dec c                                            ; $514f: $0d
	add hl, bc                                       ; $5150: $09
	ld de, $02e1                                     ; $5151: $11 $e1 $02
	inc bc                                           ; $5154: $03
	rla                                              ; $5155: $17
	ret nz                                           ; $5156: $c0

	ld bc, $0aa0                                     ; $5157: $01 $a0 $0a
	ld [bc], a                                       ; $515a: $02
	rla                                              ; $515b: $17
	pop hl                                           ; $515c: $e1
	ld [bc], a                                       ; $515d: $02
	inc b                                            ; $515e: $04
	ld a, d                                          ; $515f: $7a
	db $e4                                           ; $5160: $e4
	ld bc, $0294                                     ; $5161: $01 $94 $02
	inc hl                                           ; $5164: $23
	add hl, bc                                       ; $5165: $09
	ld de, $02e1                                     ; $5166: $11 $e1 $02
	inc bc                                           ; $5169: $03
	rla                                              ; $516a: $17
	ret nz                                           ; $516b: $c0

	ld bc, $0aa0                                     ; $516c: $01 $a0 $0a
	ld [bc], a                                       ; $516f: $02
	daa                                              ; $5170: $27
	pop hl                                           ; $5171: $e1
	ld [bc], a                                       ; $5172: $02
	inc b                                            ; $5173: $04
	ld a, d                                          ; $5174: $7a
	db $e4                                           ; $5175: $e4
	ld bc, $027f                                     ; $5176: $01 $7f $02
	inc [hl]                                         ; $5179: $34
	add hl, bc                                       ; $517a: $09
	ld de, $02e1                                     ; $517b: $11 $e1 $02
	inc bc                                           ; $517e: $03
	inc de                                           ; $517f: $13
	ret nz                                           ; $5180: $c0

	ld bc, $0aa0                                     ; $5181: $01 $a0 $0a
	ld [bc], a                                       ; $5184: $02
	dec sp                                           ; $5185: $3b
	pop hl                                           ; $5186: $e1
	ld [bc], a                                       ; $5187: $02
	inc b                                            ; $5188: $04
	ld [hl], c                                       ; $5189: $71
	db $e4                                           ; $518a: $e4
	ld bc, $096a                                     ; $518b: $01 $6a $09
	inc e                                            ; $518e: $1c
	pop bc                                           ; $518f: $c1
	ld e, c                                          ; $5190: $59
	db $e3                                           ; $5191: $e3
	nop                                              ; $5192: $00
	and d                                            ; $5193: $a2
	ret nz                                           ; $5194: $c0

	add hl, bc                                       ; $5195: $09
	db $e3                                           ; $5196: $e3
	nop                                              ; $5197: $00
	add hl, hl                                       ; $5198: $29
	and b                                            ; $5199: $a0
	add b                                            ; $519a: $80
	and b                                            ; $519b: $a0
	rrca                                             ; $519c: $0f
	nop                                              ; $519d: $00
	inc bc                                           ; $519e: $03
	db $e4                                           ; $519f: $e4
	nop                                              ; $51a0: $00
	dec bc                                           ; $51a1: $0b
	rst $38                                          ; $51a2: $ff
	rlca                                             ; $51a3: $07
	ld b, b                                          ; $51a4: $40
	add b                                            ; $51a5: $80
	and b                                            ; $51a6: $a0
	rrca                                             ; $51a7: $0f
	db $e4                                           ; $51a8: $e4
	nop                                              ; $51a9: $00
	ld c, d                                          ; $51aa: $4a
	jr z, jr_082_51b3                                ; $51ab: $28 $06

	ret nz                                           ; $51ad: $c0

	ld bc, $0aa0                                     ; $51ae: $01 $a0 $0a
	ld [bc], a                                       ; $51b1: $02
	ld b, e                                          ; $51b2: $43

jr_082_51b3:
	ccf                                              ; $51b3: $3f
	ld [bc], a                                       ; $51b4: $02
	ld c, c                                          ; $51b5: $49
	add hl, bc                                       ; $51b6: $09
	ld de, $02e1                                     ; $51b7: $11 $e1 $02
	inc bc                                           ; $51ba: $03
	rrca                                             ; $51bb: $0f
	ret nz                                           ; $51bc: $c0

	ld bc, $0aa0                                     ; $51bd: $01 $a0 $0a
	ld [bc], a                                       ; $51c0: $02
	ld d, b                                          ; $51c1: $50
	pop hl                                           ; $51c2: $e1
	ld [bc], a                                       ; $51c3: $02
	inc b                                            ; $51c4: $04
	ld l, b                                          ; $51c5: $68
	db $e4                                           ; $51c6: $e4
	ld bc, $022e                                     ; $51c7: $01 $2e $02
	ld d, l                                          ; $51ca: $55
	add hl, bc                                       ; $51cb: $09
	ld de, $02e1                                     ; $51cc: $11 $e1 $02
	inc bc                                           ; $51cf: $03
	dec de                                           ; $51d0: $1b
	ret nz                                           ; $51d1: $c0

	ld bc, $0aa0                                     ; $51d2: $01 $a0 $0a
	ld [bc], a                                       ; $51d5: $02
	ld e, b                                          ; $51d6: $58
	pop hl                                           ; $51d7: $e1
	ld [bc], a                                       ; $51d8: $02
	inc b                                            ; $51d9: $04
	add e                                            ; $51da: $83
	db $e4                                           ; $51db: $e4
	ld bc, $0219                                     ; $51dc: $01 $19 $02
	ld e, d                                          ; $51df: $5a
	add hl, bc                                       ; $51e0: $09
	ld de, $02e1                                     ; $51e1: $11 $e1 $02
	inc bc                                           ; $51e4: $03
	rla                                              ; $51e5: $17
	ret nz                                           ; $51e6: $c0

	ld bc, $0aa0                                     ; $51e7: $01 $a0 $0a
	ld [bc], a                                       ; $51ea: $02
	ld e, a                                          ; $51eb: $5f
	pop hl                                           ; $51ec: $e1
	ld [bc], a                                       ; $51ed: $02
	inc b                                            ; $51ee: $04
	ld a, d                                          ; $51ef: $7a
	db $e4                                           ; $51f0: $e4
	ld bc, $2804                                     ; $51f1: $01 $04 $28
	ld b, $c0                                        ; $51f4: $06 $c0
	ld bc, $0aa0                                     ; $51f6: $01 $a0 $0a
	ld [bc], a                                       ; $51f9: $02
	ld h, e                                          ; $51fa: $63
	ccf                                              ; $51fb: $3f
	ld [bc], a                                       ; $51fc: $02
	ld l, e                                          ; $51fd: $6b
	add hl, bc                                       ; $51fe: $09
	ld de, $02e1                                     ; $51ff: $11 $e1 $02
	inc bc                                           ; $5202: $03
	dec de                                           ; $5203: $1b
	ret nz                                           ; $5204: $c0

	ld bc, $0aa0                                     ; $5205: $01 $a0 $0a
	ld [bc], a                                       ; $5208: $02
	ld [hl], c                                       ; $5209: $71
	pop hl                                           ; $520a: $e1
	ld [bc], a                                       ; $520b: $02
	inc b                                            ; $520c: $04
	add e                                            ; $520d: $83
	db $e4                                           ; $520e: $e4
	nop                                              ; $520f: $00
	and $02                                          ; $5210: $e6 $02
	ld a, a                                          ; $5212: $7f
	add hl, bc                                       ; $5213: $09
	ld de, $02e1                                     ; $5214: $11 $e1 $02
	inc bc                                           ; $5217: $03
	inc de                                           ; $5218: $13
	ret nz                                           ; $5219: $c0

	ld bc, $0aa0                                     ; $521a: $01 $a0 $0a
	ld [bc], a                                       ; $521d: $02
	add h                                            ; $521e: $84
	pop hl                                           ; $521f: $e1
	ld [bc], a                                       ; $5220: $02
	inc b                                            ; $5221: $04
	ld [hl], c                                       ; $5222: $71
	db $e4                                           ; $5223: $e4
	nop                                              ; $5224: $00
	pop de                                           ; $5225: $d1
	ld [bc], a                                       ; $5226: $02
	sub h                                            ; $5227: $94
	add hl, bc                                       ; $5228: $09
	ld de, $02e1                                     ; $5229: $11 $e1 $02
	inc bc                                           ; $522c: $03
	rla                                              ; $522d: $17
	ret nz                                           ; $522e: $c0

	ld bc, $0aa0                                     ; $522f: $01 $a0 $0a
	ld [bc], a                                       ; $5232: $02
	sub a                                            ; $5233: $97
	pop hl                                           ; $5234: $e1
	ld [bc], a                                       ; $5235: $02
	inc b                                            ; $5236: $04
	ld a, d                                          ; $5237: $7a
	db $e4                                           ; $5238: $e4
	nop                                              ; $5239: $00
	cp h                                             ; $523a: $bc
	add hl, bc                                       ; $523b: $09
	inc e                                            ; $523c: $1c
	pop bc                                           ; $523d: $c1
	ld e, c                                          ; $523e: $59
	db $e3                                           ; $523f: $e3
	nop                                              ; $5240: $00
	and e                                            ; $5241: $a3
	ret nz                                           ; $5242: $c0

	add hl, bc                                       ; $5243: $09
	db $e3                                           ; $5244: $e3
	nop                                              ; $5245: $00
	ld l, $a0                                        ; $5246: $2e $a0
	add b                                            ; $5248: $80
	and b                                            ; $5249: $a0
	stop                                             ; $524a: $10 $00
	inc bc                                           ; $524c: $03
	db $e4                                           ; $524d: $e4
	nop                                              ; $524e: $00
	dec bc                                           ; $524f: $0b
	rst $38                                          ; $5250: $ff
	rlca                                             ; $5251: $07
	ld b, b                                          ; $5252: $40
	add b                                            ; $5253: $80
	and b                                            ; $5254: $a0
	db $10                                           ; $5255: $10
	db $e4                                           ; $5256: $e4
	nop                                              ; $5257: $00
	ld c, d                                          ; $5258: $4a
	jr z, jr_082_5261                                ; $5259: $28 $06

	ret nz                                           ; $525b: $c0

	ld bc, $0aa0                                     ; $525c: $01 $a0 $0a
	ld [bc], a                                       ; $525f: $02
	sbc c                                            ; $5260: $99

jr_082_5261:
	ccf                                              ; $5261: $3f
	ld [bc], a                                       ; $5262: $02
	and e                                            ; $5263: $a3
	add hl, bc                                       ; $5264: $09
	ld de, $02e1                                     ; $5265: $11 $e1 $02
	inc bc                                           ; $5268: $03
	inc de                                           ; $5269: $13
	ret nz                                           ; $526a: $c0

	ld bc, $0aa0                                     ; $526b: $01 $a0 $0a
	ld [bc], a                                       ; $526e: $02
	xor c                                            ; $526f: $a9
	pop hl                                           ; $5270: $e1
	ld [bc], a                                       ; $5271: $02
	inc b                                            ; $5272: $04
	ld [hl], c                                       ; $5273: $71
	db $e4                                           ; $5274: $e4
	nop                                              ; $5275: $00
	add b                                            ; $5276: $80
	ld [bc], a                                       ; $5277: $02
	xor [hl]                                         ; $5278: $ae
	add hl, bc                                       ; $5279: $09
	ld de, $02e1                                     ; $527a: $11 $e1 $02
	inc bc                                           ; $527d: $03
	rra                                              ; $527e: $1f
	ret nz                                           ; $527f: $c0

	ld bc, $0aa0                                     ; $5280: $01 $a0 $0a
	ld [bc], a                                       ; $5283: $02
	or d                                             ; $5284: $b2
	pop hl                                           ; $5285: $e1
	ld [bc], a                                       ; $5286: $02
	inc b                                            ; $5287: $04
	adc h                                            ; $5288: $8c
	db $e4                                           ; $5289: $e4
	nop                                              ; $528a: $00
	ld l, e                                          ; $528b: $6b
	ld [bc], a                                       ; $528c: $02
	cp h                                             ; $528d: $bc
	add hl, bc                                       ; $528e: $09
	ld de, $02e1                                     ; $528f: $11 $e1 $02
	inc bc                                           ; $5292: $03
	rla                                              ; $5293: $17
	ret nz                                           ; $5294: $c0

	ld bc, $0aa0                                     ; $5295: $01 $a0 $0a
	ld [bc], a                                       ; $5298: $02
	cp a                                             ; $5299: $bf
	pop hl                                           ; $529a: $e1
	ld [bc], a                                       ; $529b: $02
	inc b                                            ; $529c: $04
	ld a, d                                          ; $529d: $7a
	db $e4                                           ; $529e: $e4
	nop                                              ; $529f: $00
	ld d, [hl]                                       ; $52a0: $56
	jr z, @+$0e                                      ; $52a1: $28 $0c

	ret nz                                           ; $52a3: $c0

	ld bc, $0aa0                                     ; $52a4: $01 $a0 $0a
	ld [bc], a                                       ; $52a7: $02
	pop bc                                           ; $52a8: $c1
	ret nz                                           ; $52a9: $c0

	ld bc, $01a0                                     ; $52aa: $01 $a0 $01
	ld [bc], a                                       ; $52ad: $02
	call z, $0245                                    ; $52ae: $cc $45 $02
	rst SubAFromHL                                          ; $52b1: $d7
	add hl, bc                                       ; $52b2: $09
	rla                                              ; $52b3: $17
	pop hl                                           ; $52b4: $e1
	ld [bc], a                                       ; $52b5: $02
	inc bc                                           ; $52b6: $03
	dec de                                           ; $52b7: $1b
	ret nz                                           ; $52b8: $c0

	ld bc, $01a0                                     ; $52b9: $01 $a0 $01
	ld [bc], a                                       ; $52bc: $02
	sbc $c0                                          ; $52bd: $de $c0
	ld bc, $0aa0                                     ; $52bf: $01 $a0 $0a
	ld [bc], a                                       ; $52c2: $02
	add sp, -$1f                                     ; $52c3: $e8 $e1
	ld [bc], a                                       ; $52c5: $02
	inc b                                            ; $52c6: $04
	add e                                            ; $52c7: $83
	db $e4                                           ; $52c8: $e4
	nop                                              ; $52c9: $00
	inc l                                            ; $52ca: $2c
	ld [bc], a                                       ; $52cb: $02
	or $09                                           ; $52cc: $f6 $09
	ld de, $02e1                                     ; $52ce: $11 $e1 $02
	inc bc                                           ; $52d1: $03
	inc de                                           ; $52d2: $13
	ret nz                                           ; $52d3: $c0

	ld bc, $0aa0                                     ; $52d4: $01 $a0 $0a
	ld [bc], a                                       ; $52d7: $02
	db $fd                                           ; $52d8: $fd
	pop hl                                           ; $52d9: $e1
	ld [bc], a                                       ; $52da: $02
	inc b                                            ; $52db: $04
	ld [hl], c                                       ; $52dc: $71
	db $e4                                           ; $52dd: $e4
	nop                                              ; $52de: $00
	rla                                              ; $52df: $17
	inc bc                                           ; $52e0: $03
	dec bc                                           ; $52e1: $0b
	add hl, bc                                       ; $52e2: $09
	ld de, $02e1                                     ; $52e3: $11 $e1 $02

jr_082_52e6:
	inc bc                                           ; $52e6: $03
	dec de                                           ; $52e7: $1b
	ret nz                                           ; $52e8: $c0

	ld bc, $0aa0                                     ; $52e9: $01 $a0 $0a
	inc bc                                           ; $52ec: $03
	inc de                                           ; $52ed: $13
	pop hl                                           ; $52ee: $e1
	ld [bc], a                                       ; $52ef: $02
	inc b                                            ; $52f0: $04
	add e                                            ; $52f1: $83
	db $e4                                           ; $52f2: $e4
	nop                                              ; $52f3: $00
	ld [bc], a                                       ; $52f4: $02
	add hl, bc                                       ; $52f5: $09
	dec c                                            ; $52f6: $0d
	pop bc                                           ; $52f7: $c1
	ld e, c                                          ; $52f8: $59
	db $e3                                           ; $52f9: $e3
	nop                                              ; $52fa: $00
	sbc a                                            ; $52fb: $9f
	ret nz                                           ; $52fc: $c0

	add hl, bc                                       ; $52fd: $09
	db $e3                                           ; $52fe: $e3
	nop                                              ; $52ff: $00
	jr c, jr_082_52e6                                ; $5300: $38 $e4

	nop                                              ; $5302: $00
	ld [bc], a                                       ; $5303: $02
	add hl, bc                                       ; $5304: $09
	inc hl                                           ; $5305: $23
	add d                                            ; $5306: $82
	adc e                                            ; $5307: $8b
	and b                                            ; $5308: $a0
	ld [bc], a                                       ; $5309: $02
	ld [bc], a                                       ; $530a: $02
	or b                                             ; $530b: $b0
	add d                                            ; $530c: $82
	dec b                                            ; $530d: $05
	ret nz                                           ; $530e: $c0

	ld d, [hl]                                       ; $530f: $56
	db $dd                                           ; $5310: $dd
	jp nc, $02d0                                     ; $5311: $d2 $d0 $02

	or b                                             ; $5314: $b0
	add e                                            ; $5315: $83
	dec b                                            ; $5316: $05
	ret nz                                           ; $5317: $c0

	ld d, [hl]                                       ; $5318: $56
	db $dd                                           ; $5319: $dd
	jp nc, $02d1                                     ; $531a: $d2 $d1 $02

	or b                                             ; $531d: $b0
	add h                                            ; $531e: $84
	dec b                                            ; $531f: $05
	ret nz                                           ; $5320: $c0

	ld d, [hl]                                       ; $5321: $56
	db $dd                                           ; $5322: $dd
	jp nc, $e5d2                                     ; $5323: $d2 $d2 $e5

	cpl                                              ; $5326: $2f
	nop                                              ; $5327: $00
	nop                                              ; $5328: $00
	add hl, bc                                       ; $5329: $09
	inc d                                            ; $532a: $14
	ret nc                                           ; $532b: $d0

	add e                                            ; $532c: $83
	ld bc, $d0de                                     ; $532d: $01 $de $d0
	ret nz                                           ; $5330: $c0

	ld bc, $0aa0                                     ; $5331: $01 $a0 $0a
	inc bc                                           ; $5334: $03
	dec e                                            ; $5335: $1d
	ret nz                                           ; $5336: $c0

	ld bc, $01a0                                     ; $5337: $01 $a0 $01
	inc bc                                           ; $533a: $03
	ld hl, $00e4                                     ; $533b: $21 $e4 $00
	ld [bc], a                                       ; $533e: $02
	add hl, bc                                       ; $533f: $09
	inc [hl]                                         ; $5340: $34
	pop bc                                           ; $5341: $c1
	ld e, c                                          ; $5342: $59
	db $e3                                           ; $5343: $e3
	nop                                              ; $5344: $00
	xor l                                            ; $5345: $ad
	ld h, b                                          ; $5346: $60
	add b                                            ; $5347: $80
	ld [bc], a                                       ; $5348: $02
	ld b, c                                          ; $5349: $41
	rla                                              ; $534a: $17
	and c                                            ; $534b: $a1
	add c                                            ; $534c: $81
	and b                                            ; $534d: $a0
	ld de, $0300                                     ; $534e: $11 $00 $03
	db $e4                                           ; $5351: $e4
	nop                                              ; $5352: $00
	or a                                             ; $5353: $b7
	ld bc, $e403                                     ; $5354: $01 $03 $e4
	nop                                              ; $5357: $00
	ld e, $ff                                        ; $5358: $1e $ff
	rlca                                             ; $535a: $07
	ld b, b                                          ; $535b: $40
	add c                                            ; $535c: $81
	and b                                            ; $535d: $a0
	ld de, $00e4                                     ; $535e: $11 $e4 $00
	ld e, l                                          ; $5361: $5d
	ld [de], a                                       ; $5362: $12
	and b                                            ; $5363: $a0
	add b                                            ; $5364: $80
	and b                                            ; $5365: $a0
	inc de                                           ; $5366: $13
	nop                                              ; $5367: $00
	inc bc                                           ; $5368: $03
	db $e4                                           ; $5369: $e4
	nop                                              ; $536a: $00
	dec bc                                           ; $536b: $0b
	rst $38                                          ; $536c: $ff
	rlca                                             ; $536d: $07
	ld b, b                                          ; $536e: $40
	add b                                            ; $536f: $80
	and b                                            ; $5370: $a0
	inc de                                           ; $5371: $13
	db $e4                                           ; $5372: $e4
	nop                                              ; $5373: $00
	ld c, d                                          ; $5374: $4a
	jr z, jr_082_537d                                ; $5375: $28 $06

	ret nz                                           ; $5377: $c0

	ld bc, $0aa0                                     ; $5378: $01 $a0 $0a
	inc bc                                           ; $537b: $03
	daa                                              ; $537c: $27

jr_082_537d:
	ccf                                              ; $537d: $3f
	inc bc                                           ; $537e: $03
	cpl                                              ; $537f: $2f
	add hl, bc                                       ; $5380: $09
	ld de, $02e1                                     ; $5381: $11 $e1 $02
	inc bc                                           ; $5384: $03
	inc de                                           ; $5385: $13
	ret nz                                           ; $5386: $c0

	ld bc, $0aa0                                     ; $5387: $01 $a0 $0a
	inc bc                                           ; $538a: $03
	ld sp, $02e1                                     ; $538b: $31 $e1 $02
	inc b                                            ; $538e: $04
	ld [hl], c                                       ; $538f: $71
	db $e4                                           ; $5390: $e4
	nop                                              ; $5391: $00
	ret nc                                           ; $5392: $d0

	inc bc                                           ; $5393: $03
	jr c, jr_082_539f                                ; $5394: $38 $09

	ld de, $02e1                                     ; $5396: $11 $e1 $02
	inc bc                                           ; $5399: $03
	dec de                                           ; $539a: $1b
	ret nz                                           ; $539b: $c0

	ld bc, $0aa0                                     ; $539c: $01 $a0 $0a

jr_082_539f:
	inc bc                                           ; $539f: $03
	ld a, [hl-]                                      ; $53a0: $3a
	pop hl                                           ; $53a1: $e1
	ld [bc], a                                       ; $53a2: $02
	inc b                                            ; $53a3: $04
	add e                                            ; $53a4: $83
	db $e4                                           ; $53a5: $e4
	nop                                              ; $53a6: $00
	cp e                                             ; $53a7: $bb
	inc bc                                           ; $53a8: $03
	ld b, d                                          ; $53a9: $42
	add hl, bc                                       ; $53aa: $09
	ld de, $02e1                                     ; $53ab: $11 $e1 $02
	inc bc                                           ; $53ae: $03
	dec de                                           ; $53af: $1b
	ret nz                                           ; $53b0: $c0

	ld bc, $0aa0                                     ; $53b1: $01 $a0 $0a
	inc bc                                           ; $53b4: $03
	ld b, a                                          ; $53b5: $47
	pop hl                                           ; $53b6: $e1
	ld [bc], a                                       ; $53b7: $02
	inc b                                            ; $53b8: $04
	add e                                            ; $53b9: $83
	db $e4                                           ; $53ba: $e4
	nop                                              ; $53bb: $00
	and [hl]                                         ; $53bc: $a6
	jr z, jr_082_53c5                                ; $53bd: $28 $06

	ret nz                                           ; $53bf: $c0

	ld bc, $0aa0                                     ; $53c0: $01 $a0 $0a
	inc bc                                           ; $53c3: $03
	ld c, c                                          ; $53c4: $49

jr_082_53c5:
	ld b, e                                          ; $53c5: $43
	inc bc                                           ; $53c6: $03
	ld c, [hl]                                       ; $53c7: $4e
	add hl, bc                                       ; $53c8: $09
	ld de, $02e1                                     ; $53c9: $11 $e1 $02
	inc bc                                           ; $53cc: $03
	inc de                                           ; $53cd: $13
	ret nz                                           ; $53ce: $c0

	ld bc, $0aa0                                     ; $53cf: $01 $a0 $0a
	inc bc                                           ; $53d2: $03
	ld d, d                                          ; $53d3: $52
	pop hl                                           ; $53d4: $e1
	ld [bc], a                                       ; $53d5: $02
	inc b                                            ; $53d6: $04
	ld [hl], c                                       ; $53d7: $71
	db $e4                                           ; $53d8: $e4
	nop                                              ; $53d9: $00
	adc b                                            ; $53da: $88
	inc bc                                           ; $53db: $03
	ld e, e                                          ; $53dc: $5b
	add hl, bc                                       ; $53dd: $09
	ld de, $02e1                                     ; $53de: $11 $e1 $02
	inc bc                                           ; $53e1: $03
	inc de                                           ; $53e2: $13
	ret nz                                           ; $53e3: $c0

	ld bc, $0aa0                                     ; $53e4: $01 $a0 $0a
	inc bc                                           ; $53e7: $03
	ld h, h                                          ; $53e8: $64
	pop hl                                           ; $53e9: $e1
	ld [bc], a                                       ; $53ea: $02
	inc b                                            ; $53eb: $04
	ld [hl], c                                       ; $53ec: $71
	db $e4                                           ; $53ed: $e4
	nop                                              ; $53ee: $00
	ld [hl], e                                       ; $53ef: $73
	inc bc                                           ; $53f0: $03
	ld l, a                                          ; $53f1: $6f
	add hl, bc                                       ; $53f2: $09
	dec d                                            ; $53f3: $15
	pop hl                                           ; $53f4: $e1
	ld [bc], a                                       ; $53f5: $02
	inc bc                                           ; $53f6: $03
	dec de                                           ; $53f7: $1b
	ret nz                                           ; $53f8: $c0

	ld bc, $0aa0                                     ; $53f9: $01 $a0 $0a
	inc bc                                           ; $53fc: $03
	ld [hl], l                                       ; $53fd: $75
	nop                                              ; $53fe: $00
	add b                                            ; $53ff: $80
	ld [bc], a                                       ; $5400: $02
	add c                                            ; $5401: $81
	pop hl                                           ; $5402: $e1
	ld [bc], a                                       ; $5403: $02
	inc b                                            ; $5404: $04
	add e                                            ; $5405: $83
	db $e4                                           ; $5406: $e4
	nop                                              ; $5407: $00
	ld e, d                                          ; $5408: $5a
	jr z, jr_082_5411                                ; $5409: $28 $06

	ret nz                                           ; $540b: $c0

	ld bc, $0aa0                                     ; $540c: $01 $a0 $0a
	inc bc                                           ; $540f: $03
	ld a, l                                          ; $5410: $7d

jr_082_5411:
	ld c, a                                          ; $5411: $4f
	inc bc                                           ; $5412: $03
	add e                                            ; $5413: $83
	add hl, bc                                       ; $5414: $09
	ld de, $02e1                                     ; $5415: $11 $e1 $02
	inc bc                                           ; $5418: $03
	inc de                                           ; $5419: $13
	ret nz                                           ; $541a: $c0

	ld bc, $0aa0                                     ; $541b: $01 $a0 $0a
	inc bc                                           ; $541e: $03
	adc e                                            ; $541f: $8b
	pop hl                                           ; $5420: $e1
	ld [bc], a                                       ; $5421: $02
	inc b                                            ; $5422: $04
	ld [hl], c                                       ; $5423: $71
	db $e4                                           ; $5424: $e4
	nop                                              ; $5425: $00
	inc a                                            ; $5426: $3c
	inc bc                                           ; $5427: $03
	sub c                                            ; $5428: $91
	add hl, bc                                       ; $5429: $09
	ld hl, $02e1                                     ; $542a: $21 $e1 $02
	inc bc                                           ; $542d: $03
	rra                                              ; $542e: $1f
	ld h, b                                          ; $542f: $60
	add b                                            ; $5430: $80
	ld [bc], a                                       ; $5431: $02
	add c                                            ; $5432: $81
	ld a, [bc]                                       ; $5433: $0a
	ret nz                                           ; $5434: $c0

	ld bc, $0aa0                                     ; $5435: $01 $a0 $0a
	inc bc                                           ; $5438: $03
	sub e                                            ; $5439: $93
	ld b, b                                          ; $543a: $40
	add b                                            ; $543b: $80
	ld [bc], a                                       ; $543c: $02
	add c                                            ; $543d: $81
	ld b, $c0                                        ; $543e: $06 $c0
	ld bc, $0aa0                                     ; $5440: $01 $a0 $0a
	inc bc                                           ; $5443: $03
	sbc [hl]                                         ; $5444: $9e
	pop hl                                           ; $5445: $e1
	ld [bc], a                                       ; $5446: $02
	inc b                                            ; $5447: $04
	adc h                                            ; $5448: $8c
	db $e4                                           ; $5449: $e4
	nop                                              ; $544a: $00
	rla                                              ; $544b: $17
	inc bc                                           ; $544c: $03
	xor b                                            ; $544d: $a8
	add hl, bc                                       ; $544e: $09
	ld de, $02e1                                     ; $544f: $11 $e1 $02
	inc bc                                           ; $5452: $03
	rla                                              ; $5453: $17
	ret nz                                           ; $5454: $c0

	ld bc, $0aa0                                     ; $5455: $01 $a0 $0a
	inc bc                                           ; $5458: $03
	xor d                                            ; $5459: $aa
	pop hl                                           ; $545a: $e1
	ld [bc], a                                       ; $545b: $02
	inc b                                            ; $545c: $04
	ld a, d                                          ; $545d: $7a
	db $e4                                           ; $545e: $e4
	nop                                              ; $545f: $00
	ld [bc], a                                       ; $5460: $02
	add hl, bc                                       ; $5461: $09
	ld c, $c1                                        ; $5462: $0e $c1
	ld e, c                                          ; $5464: $59
	db $e3                                           ; $5465: $e3
	nop                                              ; $5466: $00
	xor h                                            ; $5467: $ac
	ret nz                                           ; $5468: $c0

	ld d, [hl]                                       ; $5469: $56
	db $dd                                           ; $546a: $dd
	db $d3                                           ; $546b: $d3
	ret nc                                           ; $546c: $d0

	push hl                                          ; $546d: $e5
	cpl                                              ; $546e: $2f
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	add hl, bc                                       ; $5471: $09
	inc d                                            ; $5472: $14
	ret nc                                           ; $5473: $d0

	add e                                            ; $5474: $83
	ld bc, $d0de                                     ; $5475: $01 $de $d0
	ret nz                                           ; $5478: $c0

	ld bc, $0aa0                                     ; $5479: $01 $a0 $0a
	inc bc                                           ; $547c: $03
	or d                                             ; $547d: $b2
	ret nz                                           ; $547e: $c0

	ld bc, $01a0                                     ; $547f: $01 $a0 $01
	inc bc                                           ; $5482: $03
	or a                                             ; $5483: $b7
	db $e4                                           ; $5484: $e4
	nop                                              ; $5485: $00
	ld [bc], a                                       ; $5486: $02
	add hl, bc                                       ; $5487: $09
	inc [hl]                                         ; $5488: $34
	pop bc                                           ; $5489: $c1
	ld e, c                                          ; $548a: $59
	db $e3                                           ; $548b: $e3
	nop                                              ; $548c: $00
	xor e                                            ; $548d: $ab
	ld h, b                                          ; $548e: $60
	add b                                            ; $548f: $80
	ld [bc], a                                       ; $5490: $02
	ld d, c                                          ; $5491: $51
	rla                                              ; $5492: $17
	and c                                            ; $5493: $a1
	add c                                            ; $5494: $81
	and b                                            ; $5495: $a0
	inc d                                            ; $5496: $14
	nop                                              ; $5497: $00
	inc bc                                           ; $5498: $03
	db $e4                                           ; $5499: $e4
	nop                                              ; $549a: $00
	cp b                                             ; $549b: $b8
	ld bc, $e403                                     ; $549c: $01 $03 $e4
	nop                                              ; $549f: $00
	ld e, $ff                                        ; $54a0: $1e $ff
	rlca                                             ; $54a2: $07
	ld b, b                                          ; $54a3: $40
	add c                                            ; $54a4: $81
	and b                                            ; $54a5: $a0
	inc d                                            ; $54a6: $14
	db $e4                                           ; $54a7: $e4
	nop                                              ; $54a8: $00
	ld e, l                                          ; $54a9: $5d
	ld [de], a                                       ; $54aa: $12
	and b                                            ; $54ab: $a0
	add b                                            ; $54ac: $80
	and b                                            ; $54ad: $a0
	ld d, $00                                        ; $54ae: $16 $00
	inc bc                                           ; $54b0: $03
	db $e4                                           ; $54b1: $e4
	nop                                              ; $54b2: $00
	dec bc                                           ; $54b3: $0b
	rst $38                                          ; $54b4: $ff
	rlca                                             ; $54b5: $07
	ld b, b                                          ; $54b6: $40
	add b                                            ; $54b7: $80
	and b                                            ; $54b8: $a0
	ld d, $e4                                        ; $54b9: $16 $e4
	nop                                              ; $54bb: $00
	ld c, d                                          ; $54bc: $4a
	jr z, jr_082_54c5                                ; $54bd: $28 $06

	ret nz                                           ; $54bf: $c0

	ld bc, $0aa0                                     ; $54c0: $01 $a0 $0a
	inc bc                                           ; $54c3: $03
	cp [hl]                                          ; $54c4: $be

jr_082_54c5:
	ccf                                              ; $54c5: $3f
	inc bc                                           ; $54c6: $03
	rrc c                                            ; $54c7: $cb $09
	ld de, $02e1                                     ; $54c9: $11 $e1 $02
	inc bc                                           ; $54cc: $03
	rrca                                             ; $54cd: $0f
	ret nz                                           ; $54ce: $c0

	ld bc, $0aa0                                     ; $54cf: $01 $a0 $0a
	inc bc                                           ; $54d2: $03
	rst GetHLinHL                                          ; $54d3: $cf
	pop hl                                           ; $54d4: $e1
	ld [bc], a                                       ; $54d5: $02
	inc b                                            ; $54d6: $04
	ld l, b                                          ; $54d7: $68
	db $e4                                           ; $54d8: $e4
	nop                                              ; $54d9: $00
	pop bc                                           ; $54da: $c1
	inc bc                                           ; $54db: $03
	sub $09                                          ; $54dc: $d6 $09
	ld de, $02e1                                     ; $54de: $11 $e1 $02
	inc bc                                           ; $54e1: $03
	rra                                              ; $54e2: $1f
	ret nz                                           ; $54e3: $c0

	ld bc, $0aa0                                     ; $54e4: $01 $a0 $0a
	inc bc                                           ; $54e7: $03
	jp c, $02e1                                      ; $54e8: $da $e1 $02

	inc b                                            ; $54eb: $04
	adc h                                            ; $54ec: $8c
	db $e4                                           ; $54ed: $e4
	nop                                              ; $54ee: $00
	xor h                                            ; $54ef: $ac
	inc bc                                           ; $54f0: $03
	db $dd                                           ; $54f1: $dd
	add hl, bc                                       ; $54f2: $09
	ld de, $02e1                                     ; $54f3: $11 $e1 $02
	inc bc                                           ; $54f6: $03
	inc de                                           ; $54f7: $13
	ret nz                                           ; $54f8: $c0

	ld bc, $0aa0                                     ; $54f9: $01 $a0 $0a
	inc bc                                           ; $54fc: $03
	ldh [c], a                                       ; $54fd: $e2
	pop hl                                           ; $54fe: $e1
	ld [bc], a                                       ; $54ff: $02
	inc b                                            ; $5500: $04
	ld [hl], c                                       ; $5501: $71
	db $e4                                           ; $5502: $e4
	nop                                              ; $5503: $00
	sub a                                            ; $5504: $97
	jr z, @+$08                                      ; $5505: $28 $06

	ret nz                                           ; $5507: $c0

	ld bc, $0aa0                                     ; $5508: $01 $a0 $0a
	inc bc                                           ; $550b: $03
	add sp, $44                                      ; $550c: $e8 $44
	inc bc                                           ; $550e: $03
	rst AddAOntoHL                                          ; $550f: $ef
	add hl, bc                                       ; $5510: $09
	ld de, $02e1                                     ; $5511: $11 $e1 $02
	inc bc                                           ; $5514: $03
	inc de                                           ; $5515: $13
	ret nz                                           ; $5516: $c0

	ld bc, $0aa0                                     ; $5517: $01 $a0 $0a
	inc bc                                           ; $551a: $03
	di                                               ; $551b: $f3
	pop hl                                           ; $551c: $e1
	ld [bc], a                                       ; $551d: $02
	inc b                                            ; $551e: $04
	ld l, b                                          ; $551f: $68
	db $e4                                           ; $5520: $e4
	nop                                              ; $5521: $00
	ld a, c                                          ; $5522: $79
	inc bc                                           ; $5523: $03
	ei                                               ; $5524: $fb
	add hl, bc                                       ; $5525: $09
	ld de, $02e1                                     ; $5526: $11 $e1 $02
	inc bc                                           ; $5529: $03
	rla                                              ; $552a: $17
	ret nz                                           ; $552b: $c0

	ld bc, $0aa0                                     ; $552c: $01 $a0 $0a
	inc bc                                           ; $552f: $03
	cp $e1                                           ; $5530: $fe $e1
	ld [bc], a                                       ; $5532: $02
	inc b                                            ; $5533: $04
	ld a, d                                          ; $5534: $7a
	db $e4                                           ; $5535: $e4
	nop                                              ; $5536: $00
	ld h, h                                          ; $5537: $64
	inc b                                            ; $5538: $04
	ld [$1609], sp                                   ; $5539: $08 $09 $16
	pop hl                                           ; $553c: $e1
	ld [bc], a                                       ; $553d: $02
	inc bc                                           ; $553e: $03
	rrca                                             ; $553f: $0f
	pop bc                                           ; $5540: $c1
	or d                                             ; $5541: $b2
	db $e3                                           ; $5542: $e3
	nop                                              ; $5543: $00
	add l                                            ; $5544: $85
	ret nz                                           ; $5545: $c0

	ld bc, $0aa0                                     ; $5546: $01 $a0 $0a
	inc b                                            ; $5549: $04
	dec bc                                           ; $554a: $0b
	pop hl                                           ; $554b: $e1
	ld [bc], a                                       ; $554c: $02
	inc b                                            ; $554d: $04
	ld [hl], c                                       ; $554e: $71
	db $e4                                           ; $554f: $e4
	nop                                              ; $5550: $00
	ld c, d                                          ; $5551: $4a
	jr z, jr_082_555a                                ; $5552: $28 $06

	ret nz                                           ; $5554: $c0

	ld bc, $0aa0                                     ; $5555: $01 $a0 $0a
	inc b                                            ; $5558: $04
	rla                                              ; $5559: $17

jr_082_555a:
	ccf                                              ; $555a: $3f
	inc b                                            ; $555b: $04
	ld hl, $1109                                     ; $555c: $21 $09 $11
	pop hl                                           ; $555f: $e1
	ld [bc], a                                       ; $5560: $02
	inc bc                                           ; $5561: $03
	rla                                              ; $5562: $17
	ret nz                                           ; $5563: $c0

	ld bc, $0aa0                                     ; $5564: $01 $a0 $0a
	inc b                                            ; $5567: $04
	inc hl                                           ; $5568: $23
	pop hl                                           ; $5569: $e1
	ld [bc], a                                       ; $556a: $02
	inc b                                            ; $556b: $04
	add e                                            ; $556c: $83
	db $e4                                           ; $556d: $e4
	nop                                              ; $556e: $00
	inc l                                            ; $556f: $2c
	inc b                                            ; $5570: $04
	daa                                              ; $5571: $27
	add hl, bc                                       ; $5572: $09
	ld de, $02e1                                     ; $5573: $11 $e1 $02
	inc bc                                           ; $5576: $03
	inc de                                           ; $5577: $13
	ret nz                                           ; $5578: $c0

	ld bc, $0aa0                                     ; $5579: $01 $a0 $0a
	inc b                                            ; $557c: $04

jr_082_557d:
	ld l, $e1                                        ; $557d: $2e $e1
	ld [bc], a                                       ; $557f: $02
	inc b                                            ; $5580: $04
	ld [hl], c                                       ; $5581: $71
	db $e4                                           ; $5582: $e4
	nop                                              ; $5583: $00
	rla                                              ; $5584: $17
	inc b                                            ; $5585: $04
	inc [hl]                                         ; $5586: $34
	add hl, bc                                       ; $5587: $09
	ld de, $02e1                                     ; $5588: $11 $e1 $02
	inc bc                                           ; $558b: $03
	rra                                              ; $558c: $1f
	ret nz                                           ; $558d: $c0

	ld bc, $0aa0                                     ; $558e: $01 $a0 $0a
	inc b                                            ; $5591: $04
	add hl, sp                                       ; $5592: $39
	pop hl                                           ; $5593: $e1
	ld [bc], a                                       ; $5594: $02
	inc b                                            ; $5595: $04
	adc h                                            ; $5596: $8c
	db $e4                                           ; $5597: $e4
	nop                                              ; $5598: $00
	ld [bc], a                                       ; $5599: $02
	add hl, bc                                       ; $559a: $09
	ld c, $c1                                        ; $559b: $0e $c1
	ld e, c                                          ; $559d: $59
	db $e3                                           ; $559e: $e3
	nop                                              ; $559f: $00
	xor d                                            ; $55a0: $aa
	ret nz                                           ; $55a1: $c0

	ld d, [hl]                                       ; $55a2: $56
	db $dd                                           ; $55a3: $dd
	call nc, $e5d0                                   ; $55a4: $d4 $d0 $e5
	cpl                                              ; $55a7: $2f
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	add hl, bc                                       ; $55aa: $09
	jr z, jr_082_557d                                ; $55ab: $28 $d0

	add e                                            ; $55ad: $83
	ld bc, $d0de                                     ; $55ae: $01 $de $d0
	ret nz                                           ; $55b1: $c0

	ld bc, $01a0                                     ; $55b2: $01 $a0 $01
	inc b                                            ; $55b5: $04
	ld c, c                                          ; $55b6: $49
	ret nz                                           ; $55b7: $c0

	ld bc, $0aa0                                     ; $55b8: $01 $a0 $0a
	nop                                              ; $55bb: $00
	sub $c1                                          ; $55bc: $d6 $c1
	ld e, c                                          ; $55be: $59
	db $e3                                           ; $55bf: $e3
	nop                                              ; $55c0: $00
	or h                                             ; $55c1: $b4
	and b                                            ; $55c2: $a0
	add b                                            ; $55c3: $80
	and b                                            ; $55c4: $a0
	rla                                              ; $55c5: $17
	nop                                              ; $55c6: $00
	inc bc                                           ; $55c7: $03
	db $e4                                           ; $55c8: $e4
	nop                                              ; $55c9: $00
	dec bc                                           ; $55ca: $0b
	rst $38                                          ; $55cb: $ff
	rlca                                             ; $55cc: $07
	ld b, b                                          ; $55cd: $40
	add b                                            ; $55ce: $80
	and b                                            ; $55cf: $a0
	rla                                              ; $55d0: $17
	db $e4                                           ; $55d1: $e4
	nop                                              ; $55d2: $00
	ld c, d                                          ; $55d3: $4a
	jr z, jr_082_55dc                                ; $55d4: $28 $06

	ret nz                                           ; $55d6: $c0

	ld bc, $0aa0                                     ; $55d7: $01 $a0 $0a
	inc b                                            ; $55da: $04
	ld c, [hl]                                       ; $55db: $4e

jr_082_55dc:
	ccf                                              ; $55dc: $3f
	inc b                                            ; $55dd: $04
	ld d, e                                          ; $55de: $53
	add hl, bc                                       ; $55df: $09
	ld de, $02e1                                     ; $55e0: $11 $e1 $02
	inc bc                                           ; $55e3: $03
	inc de                                           ; $55e4: $13
	ret nz                                           ; $55e5: $c0

	ld bc, $0aa0                                     ; $55e6: $01 $a0 $0a
	inc b                                            ; $55e9: $04
	ld d, a                                          ; $55ea: $57
	pop hl                                           ; $55eb: $e1
	ld [bc], a                                       ; $55ec: $02
	inc b                                            ; $55ed: $04
	ld [hl], c                                       ; $55ee: $71
	db $e4                                           ; $55ef: $e4
	nop                                              ; $55f0: $00
	ld [hl], h                                       ; $55f1: $74
	inc b                                            ; $55f2: $04
	ld h, b                                          ; $55f3: $60
	add hl, bc                                       ; $55f4: $09
	ld de, $02e1                                     ; $55f5: $11 $e1 $02
	inc bc                                           ; $55f8: $03
	dec de                                           ; $55f9: $1b
	ret nz                                           ; $55fa: $c0

	ld bc, $0aa0                                     ; $55fb: $01 $a0 $0a
	inc b                                            ; $55fe: $04
	ld h, e                                          ; $55ff: $63
	pop hl                                           ; $5600: $e1
	ld [bc], a                                       ; $5601: $02
	inc b                                            ; $5602: $04
	add e                                            ; $5603: $83
	db $e4                                           ; $5604: $e4
	nop                                              ; $5605: $00
	ld e, a                                          ; $5606: $5f
	inc b                                            ; $5607: $04
	ld h, l                                          ; $5608: $65
	add hl, bc                                       ; $5609: $09
	ld de, $02e1                                     ; $560a: $11 $e1 $02
	inc bc                                           ; $560d: $03
	rla                                              ; $560e: $17
	ret nz                                           ; $560f: $c0

	ld bc, $0aa0                                     ; $5610: $01 $a0 $0a
	inc b                                            ; $5613: $04
	ld l, d                                          ; $5614: $6a
	pop hl                                           ; $5615: $e1
	ld [bc], a                                       ; $5616: $02
	inc b                                            ; $5617: $04
	ld a, d                                          ; $5618: $7a
	db $e4                                           ; $5619: $e4
	nop                                              ; $561a: $00
	ld c, d                                          ; $561b: $4a
	jr z, jr_082_5624                                ; $561c: $28 $06

	ret nz                                           ; $561e: $c0

	ld bc, $0aa0                                     ; $561f: $01 $a0 $0a
	inc b                                            ; $5622: $04
	ld l, a                                          ; $5623: $6f

jr_082_5624:
	ccf                                              ; $5624: $3f
	inc b                                            ; $5625: $04
	ld [hl], l                                       ; $5626: $75
	add hl, bc                                       ; $5627: $09
	ld de, $02e1                                     ; $5628: $11 $e1 $02
	inc bc                                           ; $562b: $03
	rla                                              ; $562c: $17
	ret nz                                           ; $562d: $c0

	ld bc, $0aa0                                     ; $562e: $01 $a0 $0a
	inc b                                            ; $5631: $04
	ld a, h                                          ; $5632: $7c
	pop hl                                           ; $5633: $e1
	ld [bc], a                                       ; $5634: $02
	inc b                                            ; $5635: $04
	add e                                            ; $5636: $83
	db $e4                                           ; $5637: $e4
	nop                                              ; $5638: $00
	inc l                                            ; $5639: $2c
	inc b                                            ; $563a: $04
	ld a, [hl]                                       ; $563b: $7e
	add hl, bc                                       ; $563c: $09
	ld de, $02e1                                     ; $563d: $11 $e1 $02
	inc bc                                           ; $5640: $03
	rla                                              ; $5641: $17
	ret nz                                           ; $5642: $c0

	ld bc, $0aa0                                     ; $5643: $01 $a0 $0a
	inc b                                            ; $5646: $04
	add l                                            ; $5647: $85
	pop hl                                           ; $5648: $e1
	ld [bc], a                                       ; $5649: $02
	inc b                                            ; $564a: $04
	ld a, d                                          ; $564b: $7a
	db $e4                                           ; $564c: $e4
	nop                                              ; $564d: $00
	rla                                              ; $564e: $17
	inc b                                            ; $564f: $04
	adc [hl]                                         ; $5650: $8e
	add hl, bc                                       ; $5651: $09
	ld de, $02e1                                     ; $5652: $11 $e1 $02
	inc bc                                           ; $5655: $03
	inc de                                           ; $5656: $13
	ret nz                                           ; $5657: $c0

	ld bc, $0aa0                                     ; $5658: $01 $a0 $0a
	inc b                                            ; $565b: $04
	sub a                                            ; $565c: $97
	pop hl                                           ; $565d: $e1
	ld [bc], a                                       ; $565e: $02
	inc b                                            ; $565f: $04
	ld [hl], c                                       ; $5660: $71
	db $e4                                           ; $5661: $e4
	nop                                              ; $5662: $00
	ld [bc], a                                       ; $5663: $02
	add hl, bc                                       ; $5664: $09
	ld c, $c1                                        ; $5665: $0e $c1
	ld e, c                                          ; $5667: $59
	db $e3                                           ; $5668: $e3
	nop                                              ; $5669: $00
	or e                                             ; $566a: $b3
	ret nz                                           ; $566b: $c0

	ld d, [hl]                                       ; $566c: $56
	db $dd                                           ; $566d: $dd
	push de                                          ; $566e: $d5
	ret nc                                           ; $566f: $d0

	push hl                                          ; $5670: $e5
	cpl                                              ; $5671: $2f
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	add hl, bc                                       ; $5674: $09
	inc d                                            ; $5675: $14
	ret nc                                           ; $5676: $d0

	add e                                            ; $5677: $83
	ld bc, $d0de                                     ; $5678: $01 $de $d0
	ret nz                                           ; $567b: $c0

	ld bc, $0aa0                                     ; $567c: $01 $a0 $0a
	inc bc                                           ; $567f: $03
	dec e                                            ; $5680: $1d
	ret nz                                           ; $5681: $c0

	ld bc, $01a0                                     ; $5682: $01 $a0 $01
	inc bc                                           ; $5685: $03
	ld hl, $00e4                                     ; $5686: $21 $e4 $00
	ld [bc], a                                       ; $5689: $02
	add hl, bc                                       ; $568a: $09
	daa                                              ; $568b: $27
	pop bc                                           ; $568c: $c1
	ld e, c                                          ; $568d: $59
	db $e3                                           ; $568e: $e3
	nop                                              ; $568f: $00
	or [hl]                                          ; $5690: $b6
	ret nz                                           ; $5691: $c0

	ld bc, $0aa0                                     ; $5692: $01 $a0 $0a

jr_082_5695:
	inc b                                            ; $5695: $04
	sbc [hl]                                         ; $5696: $9e
	ret nz                                           ; $5697: $c0

	ld bc, $01a0                                     ; $5698: $01 $a0 $01
	inc b                                            ; $569b: $04
	xor e                                            ; $569c: $ab
	pop hl                                           ; $569d: $e1
	ld [bc], a                                       ; $569e: $02
	rlca                                             ; $569f: $07
	or [hl]                                          ; $56a0: $b6
	and b                                            ; $56a1: $a0
	add b                                            ; $56a2: $80
	and b                                            ; $56a3: $a0
	jr jr_082_56a6                                   ; $56a4: $18 $00

jr_082_56a6:
	inc bc                                           ; $56a6: $03
	db $e4                                           ; $56a7: $e4
	nop                                              ; $56a8: $00
	dec bc                                           ; $56a9: $0b
	rst $38                                          ; $56aa: $ff
	rlca                                             ; $56ab: $07
	ld b, b                                          ; $56ac: $40
	add b                                            ; $56ad: $80
	and b                                            ; $56ae: $a0
	jr jr_082_5695                                   ; $56af: $18 $e4

	nop                                              ; $56b1: $00
	ld c, d                                          ; $56b2: $4a
	jr z, jr_082_56bb                                ; $56b3: $28 $06

	ret nz                                           ; $56b5: $c0

	ld bc, $0aa0                                     ; $56b6: $01 $a0 $0a
	inc b                                            ; $56b9: $04
	or l                                             ; $56ba: $b5

jr_082_56bb:
	ccf                                              ; $56bb: $3f
	inc b                                            ; $56bc: $04
	cp [hl]                                          ; $56bd: $be
	add hl, bc                                       ; $56be: $09
	ld de, $02e1                                     ; $56bf: $11 $e1 $02
	inc bc                                           ; $56c2: $03
	rrca                                             ; $56c3: $0f
	ret nz                                           ; $56c4: $c0

	ld bc, $0aa0                                     ; $56c5: $01 $a0 $0a
	inc b                                            ; $56c8: $04
	jp $02e1                                         ; $56c9: $c3 $e1 $02


	inc b                                            ; $56cc: $04
	ld l, b                                          ; $56cd: $68
	db $e4                                           ; $56ce: $e4
	nop                                              ; $56cf: $00
	sub d                                            ; $56d0: $92
	inc b                                            ; $56d1: $04
	adc $09                                          ; $56d2: $ce $09
	ld de, $02e1                                     ; $56d4: $11 $e1 $02
	inc bc                                           ; $56d7: $03
	dec de                                           ; $56d8: $1b
	ret nz                                           ; $56d9: $c0

	ld bc, $0aa0                                     ; $56da: $01 $a0 $0a
	inc b                                            ; $56dd: $04
	pop de                                           ; $56de: $d1
	pop hl                                           ; $56df: $e1
	ld [bc], a                                       ; $56e0: $02
	inc b                                            ; $56e1: $04
	adc h                                            ; $56e2: $8c
	db $e4                                           ; $56e3: $e4
	nop                                              ; $56e4: $00
	ld a, l                                          ; $56e5: $7d
	inc b                                            ; $56e6: $04
	call nc, $1109                                   ; $56e7: $d4 $09 $11
	pop hl                                           ; $56ea: $e1
	ld [bc], a                                       ; $56eb: $02
	inc bc                                           ; $56ec: $03
	inc de                                           ; $56ed: $13
	ret nz                                           ; $56ee: $c0

	ld bc, $0aa0                                     ; $56ef: $01 $a0 $0a
	inc b                                            ; $56f2: $04
	db $db                                           ; $56f3: $db
	pop hl                                           ; $56f4: $e1
	ld [bc], a                                       ; $56f5: $02
	inc b                                            ; $56f6: $04
	ld [hl], c                                       ; $56f7: $71
	db $e4                                           ; $56f8: $e4
	nop                                              ; $56f9: $00
	ld l, b                                          ; $56fa: $68
	jr z, jr_082_5703                                ; $56fb: $28 $06

	ret nz                                           ; $56fd: $c0

	ld bc, $0aa0                                     ; $56fe: $01 $a0 $0a
	inc b                                            ; $5701: $04
	db $e4                                           ; $5702: $e4

jr_082_5703:
	ld e, l                                          ; $5703: $5d
	ret nz                                           ; $5704: $c0

	ei                                               ; $5705: $fb
	ret nz                                           ; $5706: $c0

	add e                                            ; $5707: $83
	jp nc, Jump_082_78e0                             ; $5708: $d2 $e0 $78

	dec d                                            ; $570b: $15
	inc b                                            ; $570c: $04
	xor $09                                          ; $570d: $ee $09
	ld de, $02e1                                     ; $570f: $11 $e1 $02
	inc bc                                           ; $5712: $03
	inc de                                           ; $5713: $13
	ret nz                                           ; $5714: $c0

	ld bc, $0aa0                                     ; $5715: $01 $a0 $0a
	inc b                                            ; $5718: $04
	ldh a, [$e1]                                     ; $5719: $f0 $e1
	ld [bc], a                                       ; $571b: $02
	inc b                                            ; $571c: $04
	ld [hl], c                                       ; $571d: $71
	db $e4                                           ; $571e: $e4
	nop                                              ; $571f: $00
	ld b, d                                          ; $5720: $42
	dec d                                            ; $5721: $15
	inc b                                            ; $5722: $04
	or $09                                           ; $5723: $f6 $09
	ld de, $02e1                                     ; $5725: $11 $e1 $02
	inc bc                                           ; $5728: $03
	dec de                                           ; $5729: $1b
	ret nz                                           ; $572a: $c0

	ld bc, $0aa0                                     ; $572b: $01 $a0 $0a
	inc b                                            ; $572e: $04
	db $fd                                           ; $572f: $fd
	pop hl                                           ; $5730: $e1
	ld [bc], a                                       ; $5731: $02
	inc b                                            ; $5732: $04
	add e                                            ; $5733: $83
	db $e4                                           ; $5734: $e4
	nop                                              ; $5735: $00
	inc l                                            ; $5736: $2c
	dec b                                            ; $5737: $05
	dec b                                            ; $5738: $05
	add hl, bc                                       ; $5739: $09
	ld de, $02e1                                     ; $573a: $11 $e1 $02
	inc bc                                           ; $573d: $03
	inc de                                           ; $573e: $13
	ret nz                                           ; $573f: $c0

	ld bc, $0aa0                                     ; $5740: $01 $a0 $0a
	dec b                                            ; $5743: $05
	dec c                                            ; $5744: $0d
	pop hl                                           ; $5745: $e1
	ld [bc], a                                       ; $5746: $02
	inc b                                            ; $5747: $04
	ld [hl], c                                       ; $5748: $71
	db $e4                                           ; $5749: $e4
	nop                                              ; $574a: $00
	rla                                              ; $574b: $17
	dec b                                            ; $574c: $05
	add hl, de                                       ; $574d: $19
	add hl, bc                                       ; $574e: $09
	ld de, $02e1                                     ; $574f: $11 $e1 $02
	inc bc                                           ; $5752: $03
	dec de                                           ; $5753: $1b
	ret nz                                           ; $5754: $c0

	ld bc, $0aa0                                     ; $5755: $01 $a0 $0a
	dec b                                            ; $5758: $05
	dec de                                           ; $5759: $1b
	pop hl                                           ; $575a: $e1
	ld [bc], a                                       ; $575b: $02
	inc b                                            ; $575c: $04
	add e                                            ; $575d: $83
	db $e4                                           ; $575e: $e4
	nop                                              ; $575f: $00
	ld [bc], a                                       ; $5760: $02
	add hl, bc                                       ; $5761: $09
	ld c, $c1                                        ; $5762: $0e $c1
	ld e, c                                          ; $5764: $59
	db $e3                                           ; $5765: $e3
	nop                                              ; $5766: $00
	or l                                             ; $5767: $b5
	ret nz                                           ; $5768: $c0

	ld d, [hl]                                       ; $5769: $56
	db $dd                                           ; $576a: $dd
	sub $d0                                          ; $576b: $d6 $d0
	push hl                                          ; $576d: $e5
	cpl                                              ; $576e: $2f
	nop                                              ; $576f: $00
	nop                                              ; $5770: $00
	add hl, bc                                       ; $5771: $09
	ld d, d                                          ; $5772: $52
	ret nz                                           ; $5773: $c0

	ld bc, $01a0                                     ; $5774: $01 $a0 $01
	dec b                                            ; $5777: $05
	ld [hl+], a                                      ; $5778: $22
	ret nz                                           ; $5779: $c0

	ld bc, $0aa0                                     ; $577a: $01 $a0 $0a
	dec b                                            ; $577d: $05
	daa                                              ; $577e: $27
	add e                                            ; $577f: $83
	adc e                                            ; $5780: $8b
	ld [bc], a                                       ; $5781: $02
	ld b, d                                          ; $5782: $42
	ld [bc], a                                       ; $5783: $02
	or b                                             ; $5784: $b0
	ld [hl], e                                       ; $5785: $73
	ld [$83d0], sp                                   ; $5786: $08 $d0 $83
	ld bc, $d1de                                     ; $5789: $01 $de $d1
	db $e4                                           ; $578c: $e4
	nop                                              ; $578d: $00
	ret z                                            ; $578e: $c8

	ld [bc], a                                       ; $578f: $02
	or b                                             ; $5790: $b0
	ld l, a                                          ; $5791: $6f
	ld [$83d0], sp                                   ; $5792: $08 $d0 $83
	ld bc, $d2de                                     ; $5795: $01 $de $d2
	db $e4                                           ; $5798: $e4
	ld bc, $0222                                     ; $5799: $01 $22 $02
	or b                                             ; $579c: $b0
	ld l, h                                          ; $579d: $6c
	ld [$83d0], sp                                   ; $579e: $08 $d0 $83
	ld bc, $d3de                                     ; $57a1: $01 $de $d3
	db $e4                                           ; $57a4: $e4
	ld bc, $0070                                     ; $57a5: $01 $70 $00
	inc e                                            ; $57a8: $1c
	ret nc                                           ; $57a9: $d0

	add e                                            ; $57aa: $83
	ld bc, $d0de                                     ; $57ab: $01 $de $d0
	pop bc                                           ; $57ae: $c1
	ld e, c                                          ; $57af: $59
	db $e3                                           ; $57b0: $e3
	nop                                              ; $57b1: $00
	sbc e                                            ; $57b2: $9b
	and b                                            ; $57b3: $a0
	add b                                            ; $57b4: $80
	and b                                            ; $57b5: $a0
	add hl, de                                       ; $57b6: $19
	nop                                              ; $57b7: $00
	inc bc                                           ; $57b8: $03
	db $e4                                           ; $57b9: $e4
	nop                                              ; $57ba: $00
	dec bc                                           ; $57bb: $0b
	rst $38                                          ; $57bc: $ff
	rlca                                             ; $57bd: $07
	ld b, b                                          ; $57be: $40
	add b                                            ; $57bf: $80
	and b                                            ; $57c0: $a0
	add hl, de                                       ; $57c1: $19
	db $e4                                           ; $57c2: $e4
	nop                                              ; $57c3: $00
	ld c, d                                          ; $57c4: $4a
	jr z, jr_082_57cd                                ; $57c5: $28 $06

	ret nz                                           ; $57c7: $c0

	ld bc, $0aa0                                     ; $57c8: $01 $a0 $0a
	dec b                                            ; $57cb: $05
	ld a, [hl+]                                      ; $57cc: $2a

jr_082_57cd:
	ccf                                              ; $57cd: $3f
	dec b                                            ; $57ce: $05
	inc sp                                           ; $57cf: $33
	add hl, bc                                       ; $57d0: $09
	ld de, $02e1                                     ; $57d1: $11 $e1 $02
	inc bc                                           ; $57d4: $03
	inc de                                           ; $57d5: $13
	ret nz                                           ; $57d6: $c0

	ld bc, $0aa0                                     ; $57d7: $01 $a0 $0a
	dec b                                            ; $57da: $05
	dec sp                                           ; $57db: $3b
	pop hl                                           ; $57dc: $e1
	ld [bc], a                                       ; $57dd: $02
	inc b                                            ; $57de: $04
	ld [hl], c                                       ; $57df: $71
	db $e4                                           ; $57e0: $e4
	ld bc, $059c                                     ; $57e1: $01 $9c $05
	ld b, l                                          ; $57e4: $45
	add hl, bc                                       ; $57e5: $09
	ld de, $02e1                                     ; $57e6: $11 $e1 $02
	inc bc                                           ; $57e9: $03
	dec de                                           ; $57ea: $1b
	ret nz                                           ; $57eb: $c0

	ld bc, $0aa0                                     ; $57ec: $01 $a0 $0a
	dec b                                            ; $57ef: $05
	ld c, d                                          ; $57f0: $4a
	pop hl                                           ; $57f1: $e1
	ld [bc], a                                       ; $57f2: $02
	inc b                                            ; $57f3: $04
	add e                                            ; $57f4: $83
	db $e4                                           ; $57f5: $e4
	ld bc, $0587                                     ; $57f6: $01 $87 $05
	ld c, [hl]                                       ; $57f9: $4e
	add hl, bc                                       ; $57fa: $09
	ld de, $02e1                                     ; $57fb: $11 $e1 $02
	inc bc                                           ; $57fe: $03
	rra                                              ; $57ff: $1f
	ret nz                                           ; $5800: $c0

	ld bc, $0aa0                                     ; $5801: $01 $a0 $0a
	dec b                                            ; $5804: $05
	ld d, b                                          ; $5805: $50
	pop hl                                           ; $5806: $e1
	ld [bc], a                                       ; $5807: $02
	inc b                                            ; $5808: $04
	adc h                                            ; $5809: $8c
	db $e4                                           ; $580a: $e4
	ld bc, $2872                                     ; $580b: $01 $72 $28
	ld b, $c0                                        ; $580e: $06 $c0
	ld bc, $0aa0                                     ; $5810: $01 $a0 $0a
	dec b                                            ; $5813: $05
	ld d, l                                          ; $5814: $55
	ccf                                              ; $5815: $3f
	dec b                                            ; $5816: $05
	ld h, c                                          ; $5817: $61
	add hl, bc                                       ; $5818: $09
	ld de, $02e1                                     ; $5819: $11 $e1 $02
	inc bc                                           ; $581c: $03
	inc de                                           ; $581d: $13
	ret nz                                           ; $581e: $c0

	ld bc, $0aa0                                     ; $581f: $01 $a0 $0a
	dec b                                            ; $5822: $05
	ld l, c                                          ; $5823: $69
	pop hl                                           ; $5824: $e1
	ld [bc], a                                       ; $5825: $02
	inc b                                            ; $5826: $04
	ld a, d                                          ; $5827: $7a
	db $e4                                           ; $5828: $e4
	ld bc, $0554                                     ; $5829: $01 $54 $05
	ld [hl], e                                       ; $582c: $73
	add hl, bc                                       ; $582d: $09
	ld de, $02e1                                     ; $582e: $11 $e1 $02
	inc bc                                           ; $5831: $03
	rla                                              ; $5832: $17
	ret nz                                           ; $5833: $c0

	ld bc, $0aa0                                     ; $5834: $01 $a0 $0a
	dec b                                            ; $5837: $05
	ld a, c                                          ; $5838: $79
	pop hl                                           ; $5839: $e1
	ld [bc], a                                       ; $583a: $02
	inc b                                            ; $583b: $04
	ld a, d                                          ; $583c: $7a
	db $e4                                           ; $583d: $e4
	ld bc, $053f                                     ; $583e: $01 $3f $05
	ld a, a                                          ; $5841: $7f
	add hl, bc                                       ; $5842: $09
	ld de, $02e1                                     ; $5843: $11 $e1 $02
	inc bc                                           ; $5846: $03
	dec de                                           ; $5847: $1b
	ret nz                                           ; $5848: $c0

	ld bc, $0aa0                                     ; $5849: $01 $a0 $0a
	dec b                                            ; $584c: $05
	add e                                            ; $584d: $83
	pop hl                                           ; $584e: $e1
	ld [bc], a                                       ; $584f: $02
	inc b                                            ; $5850: $04
	adc h                                            ; $5851: $8c
	db $e4                                           ; $5852: $e4
	ld bc, $2e2a                                     ; $5853: $01 $2a $2e
	dec b                                            ; $5856: $05
	pop bc                                           ; $5857: $c1
	ld e, c                                          ; $5858: $59
	db $e3                                           ; $5859: $e3
	nop                                              ; $585a: $00
	sbc h                                            ; $585b: $9c
	ld e, [hl]                                       ; $585c: $5e
	add b                                            ; $585d: $80
	and b                                            ; $585e: $a0
	ld a, [de]                                       ; $585f: $1a
	nop                                              ; $5860: $00
	jr z, jr_082_5869                                ; $5861: $28 $06

	ret nz                                           ; $5863: $c0

	ld bc, $0aa0                                     ; $5864: $01 $a0 $0a
	dec b                                            ; $5867: $05
	adc l                                            ; $5868: $8d

jr_082_5869:
	ld c, e                                          ; $5869: $4b
	dec b                                            ; $586a: $05
	sbc c                                            ; $586b: $99
	add hl, bc                                       ; $586c: $09
	dec e                                            ; $586d: $1d
	pop hl                                           ; $586e: $e1
	ld [bc], a                                       ; $586f: $02
	inc bc                                           ; $5870: $03
	rrca                                             ; $5871: $0f
	ret nz                                           ; $5872: $c0

	ld bc, $0aa0                                     ; $5873: $01 $a0 $0a
	dec b                                            ; $5876: $05
	sbc a                                            ; $5877: $9f
	ret nz                                           ; $5878: $c0

	ld bc, $01a0                                     ; $5879: $01 $a0 $01
	dec b                                            ; $587c: $05
	xor b                                            ; $587d: $a8
	ret nz                                           ; $587e: $c0

	ld bc, $0aa0                                     ; $587f: $01 $a0 $0a
	dec b                                            ; $5882: $05
	xor e                                            ; $5883: $ab
	pop hl                                           ; $5884: $e1
	ld [bc], a                                       ; $5885: $02
	inc b                                            ; $5886: $04
	ld [hl], c                                       ; $5887: $71
	db $e4                                           ; $5888: $e4
	nop                                              ; $5889: $00
	db $f4                                           ; $588a: $f4
	dec b                                            ; $588b: $05
	or l                                             ; $588c: $b5
	add hl, bc                                       ; $588d: $09
	ld de, $02e1                                     ; $588e: $11 $e1 $02
	inc bc                                           ; $5891: $03
	rrca                                             ; $5892: $0f
	ret nz                                           ; $5893: $c0

	ld bc, $0aa0                                     ; $5894: $01 $a0 $0a
	dec b                                            ; $5897: $05
	cp e                                             ; $5898: $bb
	pop hl                                           ; $5899: $e1
	ld [bc], a                                       ; $589a: $02
	inc b                                            ; $589b: $04
	ld a, d                                          ; $589c: $7a
	db $e4                                           ; $589d: $e4
	nop                                              ; $589e: $00
	rst SubAFromDE                                          ; $589f: $df
	dec b                                            ; $58a0: $05
	jp $1109                                         ; $58a1: $c3 $09 $11


	pop hl                                           ; $58a4: $e1
	ld [bc], a                                       ; $58a5: $02
	inc bc                                           ; $58a6: $03
	dec de                                           ; $58a7: $1b
	ret nz                                           ; $58a8: $c0

	ld bc, $0aa0                                     ; $58a9: $01 $a0 $0a
	dec b                                            ; $58ac: $05
	jp z, $02e1                                      ; $58ad: $ca $e1 $02

	inc b                                            ; $58b0: $04
	add e                                            ; $58b1: $83
	db $e4                                           ; $58b2: $e4
	nop                                              ; $58b3: $00
	jp z, $09ff                                      ; $58b4: $ca $ff $09

	inc bc                                           ; $58b7: $03
	ldh [rP1], a                                     ; $58b8: $e0 $00
	or [hl]                                          ; $58ba: $b6
	ld l, $05                                        ; $58bb: $2e $05
	pop bc                                           ; $58bd: $c1
	ld e, c                                          ; $58be: $59
	db $e3                                           ; $58bf: $e3
	nop                                              ; $58c0: $00
	sbc l                                            ; $58c1: $9d
	ld d, d                                          ; $58c2: $52
	add b                                            ; $58c3: $80
	and b                                            ; $58c4: $a0
	dec de                                           ; $58c5: $1b
	nop                                              ; $58c6: $00
	jr z, jr_082_58cf                                ; $58c7: $28 $06

	ret nz                                           ; $58c9: $c0

	ld bc, $0aa0                                     ; $58ca: $01 $a0 $0a
	dec b                                            ; $58cd: $05
	pop de                                           ; $58ce: $d1

jr_082_58cf:
	ccf                                              ; $58cf: $3f
	dec b                                            ; $58d0: $05
	ret c                                            ; $58d1: $d8

	add hl, bc                                       ; $58d2: $09
	ld de, $02e1                                     ; $58d3: $11 $e1 $02
	inc bc                                           ; $58d6: $03
	rrca                                             ; $58d7: $0f
	ret nz                                           ; $58d8: $c0

	ld bc, $0aa0                                     ; $58d9: $01 $a0 $0a
	dec b                                            ; $58dc: $05
	db $dd                                           ; $58dd: $dd
	pop hl                                           ; $58de: $e1
	ld [bc], a                                       ; $58df: $02
	inc b                                            ; $58e0: $04
	ld a, d                                          ; $58e1: $7a
	db $e4                                           ; $58e2: $e4
	nop                                              ; $58e3: $00
	sbc d                                            ; $58e4: $9a
	dec b                                            ; $58e5: $05
	pop hl                                           ; $58e6: $e1
	add hl, bc                                       ; $58e7: $09
	ld de, $02e1                                     ; $58e8: $11 $e1 $02
	inc bc                                           ; $58eb: $03
	dec de                                           ; $58ec: $1b
	ret nz                                           ; $58ed: $c0

	ld bc, $0aa0                                     ; $58ee: $01 $a0 $0a
	dec b                                            ; $58f1: $05
	add sp, -$1f                                     ; $58f2: $e8 $e1
	ld [bc], a                                       ; $58f4: $02
	inc b                                            ; $58f5: $04
	add e                                            ; $58f6: $83
	db $e4                                           ; $58f7: $e4
	nop                                              ; $58f8: $00
	add l                                            ; $58f9: $85
	dec b                                            ; $58fa: $05
	xor $09                                          ; $58fb: $ee $09
	ld de, $02e1                                     ; $58fd: $11 $e1 $02
	inc bc                                           ; $5900: $03
	dec de                                           ; $5901: $1b
	ret nz                                           ; $5902: $c0

	ld bc, $0aa0                                     ; $5903: $01 $a0 $0a
	dec b                                            ; $5906: $05
	db $f4                                           ; $5907: $f4
	pop hl                                           ; $5908: $e1
	ld [bc], a                                       ; $5909: $02
	inc b                                            ; $590a: $04
	ld a, d                                          ; $590b: $7a
	db $e4                                           ; $590c: $e4
	nop                                              ; $590d: $00
	ld [hl], b                                       ; $590e: $70
	rst $38                                          ; $590f: $ff
	add hl, bc                                       ; $5910: $09
	inc bc                                           ; $5911: $03
	ldh [rP1], a                                     ; $5912: $e0 $00
	ld e, h                                          ; $5914: $5c
	ld l, $05                                        ; $5915: $2e $05
	pop bc                                           ; $5917: $c1
	ld e, c                                          ; $5918: $59
	db $e3                                           ; $5919: $e3
	nop                                              ; $591a: $00
	sbc [hl]                                         ; $591b: $9e
	ld d, d                                          ; $591c: $52
	add b                                            ; $591d: $80
	and b                                            ; $591e: $a0
	inc e                                            ; $591f: $1c
	nop                                              ; $5920: $00
	jr z, jr_082_5929                                ; $5921: $28 $06

	ret nz                                           ; $5923: $c0

	ld bc, $0aa0                                     ; $5924: $01 $a0 $0a
	dec b                                            ; $5927: $05
	ei                                               ; $5928: $fb

jr_082_5929:
	ccf                                              ; $5929: $3f
	ld b, $02                                        ; $592a: $06 $02
	add hl, bc                                       ; $592c: $09
	ld de, $02e1                                     ; $592d: $11 $e1 $02
	inc bc                                           ; $5930: $03
	inc de                                           ; $5931: $13
	ret nz                                           ; $5932: $c0

	ld bc, $0aa0                                     ; $5933: $01 $a0 $0a
	ld b, $08                                        ; $5936: $06 $08
	pop hl                                           ; $5938: $e1
	ld [bc], a                                       ; $5939: $02
	inc b                                            ; $593a: $04
	ld a, d                                          ; $593b: $7a
	db $e4                                           ; $593c: $e4
	nop                                              ; $593d: $00
	ld b, b                                          ; $593e: $40
	ld b, $10                                        ; $593f: $06 $10
	add hl, bc                                       ; $5941: $09
	ld de, $02e1                                     ; $5942: $11 $e1 $02
	inc bc                                           ; $5945: $03
	rla                                              ; $5946: $17
	ret nz                                           ; $5947: $c0

	ld bc, $0aa0                                     ; $5948: $01 $a0 $0a
	ld b, $13                                        ; $594b: $06 $13
	pop hl                                           ; $594d: $e1
	ld [bc], a                                       ; $594e: $02
	inc b                                            ; $594f: $04
	ld [hl], c                                       ; $5950: $71
	db $e4                                           ; $5951: $e4
	nop                                              ; $5952: $00
	dec hl                                           ; $5953: $2b
	ld b, $1d                                        ; $5954: $06 $1d
	add hl, bc                                       ; $5956: $09
	ld de, $02e1                                     ; $5957: $11 $e1 $02
	inc bc                                           ; $595a: $03
	rla                                              ; $595b: $17
	ret nz                                           ; $595c: $c0

	ld bc, $0aa0                                     ; $595d: $01 $a0 $0a
	ld b, $24                                        ; $5960: $06 $24
	pop hl                                           ; $5962: $e1
	ld [bc], a                                       ; $5963: $02
	inc b                                            ; $5964: $04
	ld a, d                                          ; $5965: $7a
	db $e4                                           ; $5966: $e4
	nop                                              ; $5967: $00
	ld d, $ff                                        ; $5968: $16 $ff
	add hl, bc                                       ; $596a: $09
	inc bc                                           ; $596b: $03
	ldh [rP1], a                                     ; $596c: $e0 $00
	ld [bc], a                                       ; $596e: $02
	dec c                                            ; $596f: $0d
	ret nz                                           ; $5970: $c0

	ld bc, $0aa0                                     ; $5971: $01 $a0 $0a
	ld b, $29                                        ; $5974: $06 $29
	pop hl                                           ; $5976: $e1
	ld [bc], a                                       ; $5977: $02
	inc b                                            ; $5978: $04
	adc h                                            ; $5979: $8c
	db $e4                                           ; $597a: $e4
	nop                                              ; $597b: $00
	ld [bc], a                                       ; $597c: $02
	add hl, bc                                       ; $597d: $09
	cpl                                              ; $597e: $2f
	pop bc                                           ; $597f: $c1
	ld e, c                                          ; $5980: $59
	db $e3                                           ; $5981: $e3
	nop                                              ; $5982: $00
	sbc d                                            ; $5983: $9a
	add e                                            ; $5984: $83
	adc e                                            ; $5985: $8b
	ld [bc], a                                       ; $5986: $02
	ld b, d                                          ; $5987: $42
	ld [bc], a                                       ; $5988: $02
	or b                                             ; $5989: $b0
	ld [hl], e                                       ; $598a: $73
	dec b                                            ; $598b: $05
	ret nz                                           ; $598c: $c0

	ld d, [hl]                                       ; $598d: $56
	db $dd                                           ; $598e: $dd
	rst SubAFromHL                                          ; $598f: $d7
	pop de                                           ; $5990: $d1
	ld [bc], a                                       ; $5991: $02
	or b                                             ; $5992: $b0
	ld l, a                                          ; $5993: $6f
	dec b                                            ; $5994: $05
	ret nz                                           ; $5995: $c0

	ld d, [hl]                                       ; $5996: $56
	db $dd                                           ; $5997: $dd
	rst SubAFromHL                                          ; $5998: $d7
	jp nc, $b002                                     ; $5999: $d2 $02 $b0

	ld l, h                                          ; $599c: $6c
	dec b                                            ; $599d: $05
	ret nz                                           ; $599e: $c0

	ld d, [hl]                                       ; $599f: $56
	db $dd                                           ; $59a0: $dd
	rst SubAFromHL                                          ; $59a1: $d7
	db $d3                                           ; $59a2: $d3
	nop                                              ; $59a3: $00
	dec b                                            ; $59a4: $05
	ret nz                                           ; $59a5: $c0

	ld d, [hl]                                       ; $59a6: $56
	db $dd                                           ; $59a7: $dd
	rst SubAFromHL                                          ; $59a8: $d7
	ret nc                                           ; $59a9: $d0

	push hl                                          ; $59aa: $e5
	cpl                                              ; $59ab: $2f
	nop                                              ; $59ac: $00
	nop                                              ; $59ad: $00
	add hl, bc                                       ; $59ae: $09
	inc l                                            ; $59af: $2c
	ret nc                                           ; $59b0: $d0

	add e                                            ; $59b1: $83
	ld bc, $d0de                                     ; $59b2: $01 $de $d0
	pop bc                                           ; $59b5: $c1
	jp z, $ddd0                                      ; $59b6: $ca $d0 $dd

	ret nz                                           ; $59b9: $c0

	ld bc, $01a0                                     ; $59ba: $01 $a0 $01
	inc b                                            ; $59bd: $04
	ld c, c                                          ; $59be: $49
	ret nz                                           ; $59bf: $c0

	ld bc, $0aa0                                     ; $59c0: $01 $a0 $0a
	nop                                              ; $59c3: $00
	sub $c1                                          ; $59c4: $d6 $c1
	ld e, c                                          ; $59c6: $59
	db $e3                                           ; $59c7: $e3
	nop                                              ; $59c8: $00
	and l                                            ; $59c9: $a5
	and b                                            ; $59ca: $a0
	add b                                            ; $59cb: $80
	and b                                            ; $59cc: $a0
	dec e                                            ; $59cd: $1d
	nop                                              ; $59ce: $00
	inc bc                                           ; $59cf: $03
	db $e4                                           ; $59d0: $e4
	nop                                              ; $59d1: $00
	dec bc                                           ; $59d2: $0b
	rst $38                                          ; $59d3: $ff
	rlca                                             ; $59d4: $07
	ld b, b                                          ; $59d5: $40
	add b                                            ; $59d6: $80
	and b                                            ; $59d7: $a0
	dec e                                            ; $59d8: $1d
	db $e4                                           ; $59d9: $e4
	nop                                              ; $59da: $00
	ld d, b                                          ; $59db: $50
	jr z, jr_082_59e4                                ; $59dc: $28 $06

	ret nz                                           ; $59de: $c0

	ld bc, $0aa0                                     ; $59df: $01 $a0 $0a
	ld b, $31                                        ; $59e2: $06 $31

jr_082_59e4:
	ld b, l                                          ; $59e4: $45
	ld b, $37                                        ; $59e5: $06 $37
	add hl, bc                                       ; $59e7: $09
	ld de, $02e1                                     ; $59e8: $11 $e1 $02
	inc bc                                           ; $59eb: $03
	rla                                              ; $59ec: $17
	ret nz                                           ; $59ed: $c0

	ld bc, $0aa0                                     ; $59ee: $01 $a0 $0a
	ld b, $39                                        ; $59f1: $06 $39
	pop hl                                           ; $59f3: $e1
	ld [bc], a                                       ; $59f4: $02
	inc b                                            ; $59f5: $04
	ld [hl], c                                       ; $59f6: $71
	db $e4                                           ; $59f7: $e4
	nop                                              ; $59f8: $00
	ld a, d                                          ; $59f9: $7a
	ld b, $44                                        ; $59fa: $06 $44
	add hl, bc                                       ; $59fc: $09
	rla                                              ; $59fd: $17
	pop hl                                           ; $59fe: $e1
	ld [bc], a                                       ; $59ff: $02
	inc bc                                           ; $5a00: $03
	rra                                              ; $5a01: $1f
	ret nz                                           ; $5a02: $c0

	ld bc, $0aa0                                     ; $5a03: $01 $a0 $0a
	ld b, $46                                        ; $5a06: $06 $46
	ret nz                                           ; $5a08: $c0

	ld bc, $01a0                                     ; $5a09: $01 $a0 $01
	ld b, $51                                        ; $5a0c: $06 $51
	pop hl                                           ; $5a0e: $e1
	ld [bc], a                                       ; $5a0f: $02
	inc b                                            ; $5a10: $04
	adc h                                            ; $5a11: $8c
	db $e4                                           ; $5a12: $e4
	nop                                              ; $5a13: $00
	ld e, a                                          ; $5a14: $5f
	ld b, $55                                        ; $5a15: $06 $55
	add hl, bc                                       ; $5a17: $09
	ld de, $02e1                                     ; $5a18: $11 $e1 $02
	inc bc                                           ; $5a1b: $03
	rla                                              ; $5a1c: $17
	ret nz                                           ; $5a1d: $c0

	ld bc, $0aa0                                     ; $5a1e: $01 $a0 $0a
	ld b, $57                                        ; $5a21: $06 $57
	pop hl                                           ; $5a23: $e1
	ld [bc], a                                       ; $5a24: $02
	inc b                                            ; $5a25: $04
	ld a, d                                          ; $5a26: $7a
	db $e4                                           ; $5a27: $e4
	nop                                              ; $5a28: $00
	ld c, d                                          ; $5a29: $4a
	jr z, jr_082_5a32                                ; $5a2a: $28 $06

	ret nz                                           ; $5a2c: $c0

	ld bc, $0aa0                                     ; $5a2d: $01 $a0 $0a
	ld b, $5c                                        ; $5a30: $06 $5c

jr_082_5a32:
	ccf                                              ; $5a32: $3f
	ld b, $61                                        ; $5a33: $06 $61
	add hl, bc                                       ; $5a35: $09
	ld de, $02e1                                     ; $5a36: $11 $e1 $02
	inc bc                                           ; $5a39: $03
	dec de                                           ; $5a3a: $1b
	ret nz                                           ; $5a3b: $c0

	ld bc, $0aa0                                     ; $5a3c: $01 $a0 $0a
	ld b, $66                                        ; $5a3f: $06 $66
	pop hl                                           ; $5a41: $e1
	ld [bc], a                                       ; $5a42: $02
	inc b                                            ; $5a43: $04
	ld a, d                                          ; $5a44: $7a
	db $e4                                           ; $5a45: $e4
	nop                                              ; $5a46: $00
	inc l                                            ; $5a47: $2c
	ld b, $6f                                        ; $5a48: $06 $6f
	add hl, bc                                       ; $5a4a: $09
	ld de, $02e1                                     ; $5a4b: $11 $e1 $02
	inc bc                                           ; $5a4e: $03
	inc de                                           ; $5a4f: $13
	ret nz                                           ; $5a50: $c0

	ld bc, $0aa0                                     ; $5a51: $01 $a0 $0a
	ld b, $78                                        ; $5a54: $06 $78
	pop hl                                           ; $5a56: $e1
	ld [bc], a                                       ; $5a57: $02
	inc b                                            ; $5a58: $04
	ld [hl], c                                       ; $5a59: $71
	db $e4                                           ; $5a5a: $e4
	nop                                              ; $5a5b: $00
	rla                                              ; $5a5c: $17
	ld b, $86                                        ; $5a5d: $06 $86
	add hl, bc                                       ; $5a5f: $09
	ld de, $02e1                                     ; $5a60: $11 $e1 $02
	inc bc                                           ; $5a63: $03
	inc de                                           ; $5a64: $13
	ret nz                                           ; $5a65: $c0

	ld bc, $0aa0                                     ; $5a66: $01 $a0 $0a
	ld b, $8b                                        ; $5a69: $06 $8b
	pop hl                                           ; $5a6b: $e1
	ld [bc], a                                       ; $5a6c: $02
	inc b                                            ; $5a6d: $04
	ld [hl], c                                       ; $5a6e: $71
	db $e4                                           ; $5a6f: $e4
	nop                                              ; $5a70: $00
	ld [bc], a                                       ; $5a71: $02
	add hl, bc                                       ; $5a72: $09
	ld c, $c1                                        ; $5a73: $0e $c1
	ld e, c                                          ; $5a75: $59
	db $e3                                           ; $5a76: $e3
	nop                                              ; $5a77: $00
	and h                                            ; $5a78: $a4
	ret nz                                           ; $5a79: $c0

	ld d, [hl]                                       ; $5a7a: $56
	ret nc                                           ; $5a7b: $d0

	ret c                                            ; $5a7c: $d8

	ret nc                                           ; $5a7d: $d0

	push hl                                          ; $5a7e: $e5
	cpl                                              ; $5a7f: $2f
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00
	inc l                                            ; $5a82: $2c
	inc c                                            ; $5a83: $0c
	ret nz                                           ; $5a84: $c0

	ld bc, $0aa0                                     ; $5a85: $01 $a0 $0a
	ld b, $96                                        ; $5a88: $06 $96
	ret nz                                           ; $5a8a: $c0

	ld bc, $01a0                                     ; $5a8b: $01 $a0 $01
	ld b, $9a                                        ; $5a8e: $06 $9a
	add hl, de                                       ; $5a90: $19
	add b                                            ; $5a91: $80
	ld [bc], a                                       ; $5a92: $02
	ld d, [hl]                                       ; $5a93: $56
	ld [$060e], sp                                   ; $5a94: $08 $0e $06
	sbc [hl]                                         ; $5a97: $9e
	add hl, bc                                       ; $5a98: $09
	inc bc                                           ; $5a99: $03
	db $e4                                           ; $5a9a: $e4
	nop                                              ; $5a9b: $00
	rrca                                             ; $5a9c: $0f
	ld b, $a0                                        ; $5a9d: $06 $a0
	add hl, bc                                       ; $5a9f: $09
	inc bc                                           ; $5aa0: $03
	db $e4                                           ; $5aa1: $e4
	nop                                              ; $5aa2: $00
	inc l                                            ; $5aa3: $2c
	pop de                                           ; $5aa4: $d1
	add hl, bc                                       ; $5aa5: $09
	inc bc                                           ; $5aa6: $03
	db $e4                                           ; $5aa7: $e4
	nop                                              ; $5aa8: $00
	ld [bc], a                                       ; $5aa9: $02
	add hl, bc                                       ; $5aaa: $09
	ld [hl+], a                                      ; $5aab: $22
	ret nc                                           ; $5aac: $d0

	add e                                            ; $5aad: $83
	ld bc, $d1de                                     ; $5aae: $01 $de $d1
	pop bc                                           ; $5ab1: $c1
	ld e, c                                          ; $5ab2: $59
	db $e3                                           ; $5ab3: $e3
	nop                                              ; $5ab4: $00
	sbc b                                            ; $5ab5: $98
	ret nc                                           ; $5ab6: $d0

	adc e                                            ; $5ab7: $8b
	and b                                            ; $5ab8: $a0
	ld e, $b0                                        ; $5ab9: $1e $b0
	ld a, b                                          ; $5abb: $78
	and b                                            ; $5abc: $a0
	add b                                            ; $5abd: $80
	and b                                            ; $5abe: $a0
	ld a, [hl+]                                      ; $5abf: $2a
	nop                                              ; $5ac0: $00
	inc bc                                           ; $5ac1: $03
	db $e4                                           ; $5ac2: $e4
	nop                                              ; $5ac3: $00
	cpl                                              ; $5ac4: $2f
	rst $38                                          ; $5ac5: $ff
	rlca                                             ; $5ac6: $07
	ld b, b                                          ; $5ac7: $40
	add b                                            ; $5ac8: $80
	and b                                            ; $5ac9: $a0
	ld a, [hl+]                                      ; $5aca: $2a
	db $e4                                           ; $5acb: $e4
	nop                                              ; $5acc: $00
	ld l, [hl]                                       ; $5acd: $6e
	add hl, bc                                       ; $5ace: $09
	ld [hl+], a                                      ; $5acf: $22
	ret nc                                           ; $5ad0: $d0

	add e                                            ; $5ad1: $83
	ld bc, $d2de                                     ; $5ad2: $01 $de $d2
	pop bc                                           ; $5ad5: $c1
	ld e, c                                          ; $5ad6: $59
	db $e3                                           ; $5ad7: $e3
	nop                                              ; $5ad8: $00
	sbc c                                            ; $5ad9: $99
	ret nc                                           ; $5ada: $d0

	adc e                                            ; $5adb: $8b
	and b                                            ; $5adc: $a0
	ld e, $b0                                        ; $5add: $1e $b0
	ld a, c                                          ; $5adf: $79
	and b                                            ; $5ae0: $a0
	add b                                            ; $5ae1: $80
	and b                                            ; $5ae2: $a0
	dec hl                                           ; $5ae3: $2b
	nop                                              ; $5ae4: $00
	inc bc                                           ; $5ae5: $03
	db $e4                                           ; $5ae6: $e4
	nop                                              ; $5ae7: $00
	xor e                                            ; $5ae8: $ab
	rst $38                                          ; $5ae9: $ff
	rlca                                             ; $5aea: $07
	ld b, b                                          ; $5aeb: $40
	add b                                            ; $5aec: $80
	and b                                            ; $5aed: $a0
	dec hl                                           ; $5aee: $2b
	db $e4                                           ; $5aef: $e4
	nop                                              ; $5af0: $00
	ld [$0628], a                                    ; $5af1: $ea $28 $06
	ret nz                                           ; $5af4: $c0

	ld bc, $0aa0                                     ; $5af5: $01 $a0 $0a
	ld b, $a2                                        ; $5af8: $06 $a2
	ccf                                              ; $5afa: $3f
	ld b, $aa                                        ; $5afb: $06 $aa
	add hl, bc                                       ; $5afd: $09
	ld de, $02e1                                     ; $5afe: $11 $e1 $02
	inc bc                                           ; $5b01: $03
	dec de                                           ; $5b02: $1b
	ret nz                                           ; $5b03: $c0

	ld bc, $0aa0                                     ; $5b04: $01 $a0 $0a
	ld b, $af                                        ; $5b07: $06 $af
	pop hl                                           ; $5b09: $e1
	ld [bc], a                                       ; $5b0a: $02
	inc b                                            ; $5b0b: $04
	add e                                            ; $5b0c: $83
	db $e4                                           ; $5b0d: $e4
	ld bc, $0620                                     ; $5b0e: $01 $20 $06
	or a                                             ; $5b11: $b7
	add hl, bc                                       ; $5b12: $09
	ld de, $02e1                                     ; $5b13: $11 $e1 $02
	inc bc                                           ; $5b16: $03
	inc de                                           ; $5b17: $13
	ret nz                                           ; $5b18: $c0

	ld bc, $0aa0                                     ; $5b19: $01 $a0 $0a
	ld b, $bb                                        ; $5b1c: $06 $bb
	pop hl                                           ; $5b1e: $e1
	ld [bc], a                                       ; $5b1f: $02
	inc b                                            ; $5b20: $04
	ld [hl], c                                       ; $5b21: $71
	db $e4                                           ; $5b22: $e4
	ld bc, $060b                                     ; $5b23: $01 $0b $06
	cp [hl]                                          ; $5b26: $be
	add hl, bc                                       ; $5b27: $09
	ld de, $02e1                                     ; $5b28: $11 $e1 $02
	inc bc                                           ; $5b2b: $03
	dec de                                           ; $5b2c: $1b
	ret nz                                           ; $5b2d: $c0

	ld bc, $0aa0                                     ; $5b2e: $01 $a0 $0a
	ld b, $c2                                        ; $5b31: $06 $c2
	pop hl                                           ; $5b33: $e1
	ld [bc], a                                       ; $5b34: $02
	inc b                                            ; $5b35: $04
	ld a, d                                          ; $5b36: $7a
	db $e4                                           ; $5b37: $e4
	nop                                              ; $5b38: $00
	or $28                                           ; $5b39: $f6 $28
	ld b, $c0                                        ; $5b3b: $06 $c0
	ld bc, $0aa0                                     ; $5b3d: $01 $a0 $0a
	ld b, $ce                                        ; $5b40: $06 $ce
	ld c, a                                          ; $5b42: $4f
	ld b, $d9                                        ; $5b43: $06 $d9
	add hl, bc                                       ; $5b45: $09
	ld de, $02e1                                     ; $5b46: $11 $e1 $02
	inc bc                                           ; $5b49: $03
	rla                                              ; $5b4a: $17
	ret nz                                           ; $5b4b: $c0

	ld bc, $0aa0                                     ; $5b4c: $01 $a0 $0a
	ld b, $dc                                        ; $5b4f: $06 $dc
	pop hl                                           ; $5b51: $e1
	ld [bc], a                                       ; $5b52: $02
	inc b                                            ; $5b53: $04
	ld a, d                                          ; $5b54: $7a
	db $e4                                           ; $5b55: $e4
	nop                                              ; $5b56: $00
	ret c                                            ; $5b57: $d8

	ld b, $e4                                        ; $5b58: $06 $e4
	add hl, bc                                       ; $5b5a: $09
	ld de, $02e1                                     ; $5b5b: $11 $e1 $02
	inc bc                                           ; $5b5e: $03
	dec de                                           ; $5b5f: $1b
	ret nz                                           ; $5b60: $c0

	ld bc, $0aa0                                     ; $5b61: $01 $a0 $0a
	ld b, $e8                                        ; $5b64: $06 $e8
	pop hl                                           ; $5b66: $e1
	ld [bc], a                                       ; $5b67: $02
	inc b                                            ; $5b68: $04
	add e                                            ; $5b69: $83
	db $e4                                           ; $5b6a: $e4
	nop                                              ; $5b6b: $00
	jp $f006                                         ; $5b6c: $c3 $06 $f0


	add hl, bc                                       ; $5b6f: $09
	ld hl, $02e1                                     ; $5b70: $21 $e1 $02
	inc bc                                           ; $5b73: $03
	dec de                                           ; $5b74: $1b
	ret nz                                           ; $5b75: $c0

	ld bc, $0aa0                                     ; $5b76: $01 $a0 $0a
	ld b, $f6                                        ; $5b79: $06 $f6
	ret nz                                           ; $5b7b: $c0

	ld bc, $01a0                                     ; $5b7c: $01 $a0 $01
	ld b, $fe                                        ; $5b7f: $06 $fe
	pop hl                                           ; $5b81: $e1
	ld [bc], a                                       ; $5b82: $02
	inc bc                                           ; $5b83: $03
	inc de                                           ; $5b84: $13
	ret nz                                           ; $5b85: $c0

	ld bc, $0aa0                                     ; $5b86: $01 $a0 $0a
	rlca                                             ; $5b89: $07
	inc b                                            ; $5b8a: $04
	pop hl                                           ; $5b8b: $e1
	ld [bc], a                                       ; $5b8c: $02
	inc b                                            ; $5b8d: $04
	ld [hl], c                                       ; $5b8e: $71
	db $e4                                           ; $5b8f: $e4
	nop                                              ; $5b90: $00
	sbc [hl]                                         ; $5b91: $9e
	jr z, @+$08                                      ; $5b92: $28 $06

	ret nz                                           ; $5b94: $c0

	ld bc, $0aa0                                     ; $5b95: $01 $a0 $0a
	rlca                                             ; $5b98: $07
	ld c, $3f                                        ; $5b99: $0e $3f
	rlca                                             ; $5b9b: $07
	dec d                                            ; $5b9c: $15
	add hl, bc                                       ; $5b9d: $09
	ld de, $02e1                                     ; $5b9e: $11 $e1 $02
	inc bc                                           ; $5ba1: $03
	dec de                                           ; $5ba2: $1b
	ret nz                                           ; $5ba3: $c0

	ld bc, $0aa0                                     ; $5ba4: $01 $a0 $0a
	rlca                                             ; $5ba7: $07
	ld a, [de]                                       ; $5ba8: $1a
	pop hl                                           ; $5ba9: $e1
	ld [bc], a                                       ; $5baa: $02
	inc b                                            ; $5bab: $04
	add e                                            ; $5bac: $83
	db $e4                                           ; $5bad: $e4
	nop                                              ; $5bae: $00
	add b                                            ; $5baf: $80
	rlca                                             ; $5bb0: $07
	ld hl, $1109                                     ; $5bb1: $21 $09 $11
	pop hl                                           ; $5bb4: $e1
	ld [bc], a                                       ; $5bb5: $02
	inc bc                                           ; $5bb6: $03
	inc de                                           ; $5bb7: $13
	ret nz                                           ; $5bb8: $c0

	ld bc, $0aa0                                     ; $5bb9: $01 $a0 $0a
	rlca                                             ; $5bbc: $07
	dec h                                            ; $5bbd: $25
	pop hl                                           ; $5bbe: $e1
	ld [bc], a                                       ; $5bbf: $02
	inc b                                            ; $5bc0: $04
	ld [hl], c                                       ; $5bc1: $71
	db $e4                                           ; $5bc2: $e4
	nop                                              ; $5bc3: $00
	ld l, e                                          ; $5bc4: $6b
	rlca                                             ; $5bc5: $07
	ld a, [hl+]                                      ; $5bc6: $2a
	add hl, bc                                       ; $5bc7: $09
	ld de, $02e1                                     ; $5bc8: $11 $e1 $02
	inc bc                                           ; $5bcb: $03
	rrca                                             ; $5bcc: $0f
	ret nz                                           ; $5bcd: $c0

	ld bc, $0aa0                                     ; $5bce: $01 $a0 $0a
	rlca                                             ; $5bd1: $07
	ld sp, $02e1                                     ; $5bd2: $31 $e1 $02
	inc b                                            ; $5bd5: $04
	ld l, b                                          ; $5bd6: $68
	db $e4                                           ; $5bd7: $e4
	nop                                              ; $5bd8: $00
	ld d, [hl]                                       ; $5bd9: $56
	jr z, jr_082_5bee                                ; $5bda: $28 $12

	ret nz                                           ; $5bdc: $c0

	ld bc, $0aa0                                     ; $5bdd: $01 $a0 $0a
	rlca                                             ; $5be0: $07
	ld a, [hl-]                                      ; $5be1: $3a
	ret nz                                           ; $5be2: $c0

	ld bc, $01a0                                     ; $5be3: $01 $a0 $01
	rlca                                             ; $5be6: $07
	ld b, a                                          ; $5be7: $47
	ret nz                                           ; $5be8: $c0

	ld bc, $0aa0                                     ; $5be9: $01 $a0 $0a
	rlca                                             ; $5bec: $07
	ld c, a                                          ; $5bed: $4f

jr_082_5bee:
	ccf                                              ; $5bee: $3f
	rlca                                             ; $5bef: $07
	ld e, d                                          ; $5bf0: $5a
	add hl, bc                                       ; $5bf1: $09
	ld de, $02e1                                     ; $5bf2: $11 $e1 $02
	inc bc                                           ; $5bf5: $03
	inc de                                           ; $5bf6: $13
	ret nz                                           ; $5bf7: $c0

	ld bc, $0aa0                                     ; $5bf8: $01 $a0 $0a
	rlca                                             ; $5bfb: $07
	ld h, b                                          ; $5bfc: $60
	pop hl                                           ; $5bfd: $e1
	ld [bc], a                                       ; $5bfe: $02
	inc b                                            ; $5bff: $04
	ld [hl], c                                       ; $5c00: $71
	db $e4                                           ; $5c01: $e4
	nop                                              ; $5c02: $00
	inc l                                            ; $5c03: $2c
	rlca                                             ; $5c04: $07
	ld l, l                                          ; $5c05: $6d
	add hl, bc                                       ; $5c06: $09
	ld de, $02e1                                     ; $5c07: $11 $e1 $02
	inc bc                                           ; $5c0a: $03
	dec de                                           ; $5c0b: $1b
	ret nz                                           ; $5c0c: $c0

	ld bc, $0aa0                                     ; $5c0d: $01 $a0 $0a
	rlca                                             ; $5c10: $07
	ld [hl], l                                       ; $5c11: $75
	pop hl                                           ; $5c12: $e1
	ld [bc], a                                       ; $5c13: $02
	inc b                                            ; $5c14: $04
	add e                                            ; $5c15: $83
	db $e4                                           ; $5c16: $e4
	nop                                              ; $5c17: $00
	rla                                              ; $5c18: $17
	rlca                                             ; $5c19: $07
	ld a, a                                          ; $5c1a: $7f
	add hl, bc                                       ; $5c1b: $09
	ld de, $02e1                                     ; $5c1c: $11 $e1 $02
	inc bc                                           ; $5c1f: $03
	dec de                                           ; $5c20: $1b
	ret nz                                           ; $5c21: $c0

	ld bc, $0aa0                                     ; $5c22: $01 $a0 $0a
	rlca                                             ; $5c25: $07
	add l                                            ; $5c26: $85
	pop hl                                           ; $5c27: $e1
	ld [bc], a                                       ; $5c28: $02

jr_082_5c29:
	inc b                                            ; $5c29: $04
	add e                                            ; $5c2a: $83
	db $e4                                           ; $5c2b: $e4
	nop                                              ; $5c2c: $00
	ld [bc], a                                       ; $5c2d: $02
	add hl, bc                                       ; $5c2e: $09
	ld [$59c1], sp                                   ; $5c2f: $08 $c1 $59
	db $e3                                           ; $5c32: $e3
	nop                                              ; $5c33: $00
	sub a                                            ; $5c34: $97
	db $e4                                           ; $5c35: $e4
	nop                                              ; $5c36: $00
	ld [bc], a                                       ; $5c37: $02
	add hl, bc                                       ; $5c38: $09
	ld a, [de]                                       ; $5c39: $1a
	add c                                            ; $5c3a: $81
	adc e                                            ; $5c3b: $8b
	and b                                            ; $5c3c: $a0
	ld e, $02                                        ; $5c3d: $1e $02
	or b                                             ; $5c3f: $b0
	ld a, b                                          ; $5c40: $78
	dec b                                            ; $5c41: $05
	ret nz                                           ; $5c42: $c0

	ld d, [hl]                                       ; $5c43: $56
	db $dd                                           ; $5c44: $dd
	reti                                             ; $5c45: $d9


	pop de                                           ; $5c46: $d1
	ld [bc], a                                       ; $5c47: $02
	or b                                             ; $5c48: $b0
	ld a, c                                          ; $5c49: $79
	dec b                                            ; $5c4a: $05
	ret nz                                           ; $5c4b: $c0

	ld d, [hl]                                       ; $5c4c: $56
	db $dd                                           ; $5c4d: $dd
	reti                                             ; $5c4e: $d9


	jp nc, $2fe5                                     ; $5c4f: $d2 $e5 $2f

	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	xor l                                            ; $5c54: $ad
	ld b, $09                                        ; $5c55: $06 $09
	jr z, jr_082_5c29                                ; $5c57: $28 $d0

	add e                                            ; $5c59: $83
	ld bc, $d0de                                     ; $5c5a: $01 $de $d0
	ret nz                                           ; $5c5d: $c0

	ld bc, $0aa0                                     ; $5c5e: $01 $a0 $0a
	nop                                              ; $5c61: $00
	ld bc, $01c0                                     ; $5c62: $01 $c0 $01
	and b                                            ; $5c65: $a0
	ld bc, $0600                                     ; $5c66: $01 $00 $06
	pop bc                                           ; $5c69: $c1
	ld e, c                                          ; $5c6a: $59
	db $e3                                           ; $5c6b: $e3
	nop                                              ; $5c6c: $00
	cp l                                             ; $5c6d: $bd
	and b                                            ; $5c6e: $a0
	add b                                            ; $5c6f: $80
	and b                                            ; $5c70: $a0
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	inc bc                                           ; $5c73: $03
	db $e4                                           ; $5c74: $e4
	nop                                              ; $5c75: $00
	dec bc                                           ; $5c76: $0b
	rst $38                                          ; $5c77: $ff
	rlca                                             ; $5c78: $07
	ld b, b                                          ; $5c79: $40
	add b                                            ; $5c7a: $80
	and b                                            ; $5c7b: $a0
	nop                                              ; $5c7c: $00
	db $e4                                           ; $5c7d: $e4
	nop                                              ; $5c7e: $00
	ld c, d                                          ; $5c7f: $4a
	jr z, jr_082_5c88                                ; $5c80: $28 $06

	ret nz                                           ; $5c82: $c0

	ld bc, $0aa0                                     ; $5c83: $01 $a0 $0a
	nop                                              ; $5c86: $00
	ld a, [bc]                                       ; $5c87: $0a

jr_082_5c88:
	ccf                                              ; $5c88: $3f
	nop                                              ; $5c89: $00
	db $10                                           ; $5c8a: $10
	add hl, bc                                       ; $5c8b: $09
	ld de, $02e1                                     ; $5c8c: $11 $e1 $02
	inc bc                                           ; $5c8f: $03
	inc de                                           ; $5c90: $13
	ret nz                                           ; $5c91: $c0

	ld bc, $0aa0                                     ; $5c92: $01 $a0 $0a
	nop                                              ; $5c95: $00
	dec d                                            ; $5c96: $15
	pop hl                                           ; $5c97: $e1
	ld [bc], a                                       ; $5c98: $02
	inc b                                            ; $5c99: $04
	ld [hl], c                                       ; $5c9a: $71
	db $e4                                           ; $5c9b: $e4
	nop                                              ; $5c9c: $00
	ld [hl], h                                       ; $5c9d: $74
	nop                                              ; $5c9e: $00
	add hl, de                                       ; $5c9f: $19
	add hl, bc                                       ; $5ca0: $09
	ld de, $02e1                                     ; $5ca1: $11 $e1 $02
	inc bc                                           ; $5ca4: $03
	rra                                              ; $5ca5: $1f
	ret nz                                           ; $5ca6: $c0

	ld bc, $0aa0                                     ; $5ca7: $01 $a0 $0a
	nop                                              ; $5caa: $00
	ld e, $e1                                        ; $5cab: $1e $e1
	ld [bc], a                                       ; $5cad: $02
	inc b                                            ; $5cae: $04
	adc h                                            ; $5caf: $8c
	db $e4                                           ; $5cb0: $e4
	nop                                              ; $5cb1: $00
	ld e, a                                          ; $5cb2: $5f
	nop                                              ; $5cb3: $00
	dec h                                            ; $5cb4: $25
	add hl, bc                                       ; $5cb5: $09
	ld de, $02e1                                     ; $5cb6: $11 $e1 $02
	inc bc                                           ; $5cb9: $03
	rla                                              ; $5cba: $17
	ret nz                                           ; $5cbb: $c0

	ld bc, $0aa0                                     ; $5cbc: $01 $a0 $0a
	nop                                              ; $5cbf: $00
	dec hl                                           ; $5cc0: $2b
	pop hl                                           ; $5cc1: $e1
	ld [bc], a                                       ; $5cc2: $02
	inc b                                            ; $5cc3: $04
	ld a, d                                          ; $5cc4: $7a
	db $e4                                           ; $5cc5: $e4
	nop                                              ; $5cc6: $00
	ld c, d                                          ; $5cc7: $4a
	jr z, jr_082_5cd0                                ; $5cc8: $28 $06

	ret nz                                           ; $5cca: $c0

	ld bc, $0aa0                                     ; $5ccb: $01 $a0 $0a
	nop                                              ; $5cce: $00
	dec sp                                           ; $5ccf: $3b

jr_082_5cd0:
	ccf                                              ; $5cd0: $3f
	nop                                              ; $5cd1: $00
	ld b, e                                          ; $5cd2: $43
	add hl, bc                                       ; $5cd3: $09
	ld de, $02e1                                     ; $5cd4: $11 $e1 $02
	inc bc                                           ; $5cd7: $03
	inc de                                           ; $5cd8: $13
	ret nz                                           ; $5cd9: $c0

	ld bc, $0aa0                                     ; $5cda: $01 $a0 $0a
	nop                                              ; $5cdd: $00
	ld c, e                                          ; $5cde: $4b
	pop hl                                           ; $5cdf: $e1
	ld [bc], a                                       ; $5ce0: $02
	inc b                                            ; $5ce1: $04
	ld [hl], c                                       ; $5ce2: $71
	db $e4                                           ; $5ce3: $e4
	nop                                              ; $5ce4: $00
	inc l                                            ; $5ce5: $2c
	nop                                              ; $5ce6: $00
	ld d, b                                          ; $5ce7: $50
	add hl, bc                                       ; $5ce8: $09
	ld de, $02e1                                     ; $5ce9: $11 $e1 $02
	inc bc                                           ; $5cec: $03
	rra                                              ; $5ced: $1f
	ret nz                                           ; $5cee: $c0

	ld bc, $0aa0                                     ; $5cef: $01 $a0 $0a
	nop                                              ; $5cf2: $00

jr_082_5cf3:
	ld d, [hl]                                       ; $5cf3: $56
	pop hl                                           ; $5cf4: $e1
	ld [bc], a                                       ; $5cf5: $02
	inc b                                            ; $5cf6: $04
	adc h                                            ; $5cf7: $8c
	db $e4                                           ; $5cf8: $e4
	nop                                              ; $5cf9: $00
	rla                                              ; $5cfa: $17
	nop                                              ; $5cfb: $00
	ld h, b                                          ; $5cfc: $60
	add hl, bc                                       ; $5cfd: $09
	ld de, $02e1                                     ; $5cfe: $11 $e1 $02
	inc bc                                           ; $5d01: $03
	rla                                              ; $5d02: $17
	ret nz                                           ; $5d03: $c0

	ld bc, $0aa0                                     ; $5d04: $01 $a0 $0a
	nop                                              ; $5d07: $00
	ld l, b                                          ; $5d08: $68
	pop hl                                           ; $5d09: $e1
	ld [bc], a                                       ; $5d0a: $02
	inc b                                            ; $5d0b: $04
	ld a, d                                          ; $5d0c: $7a
	db $e4                                           ; $5d0d: $e4
	nop                                              ; $5d0e: $00
	ld [bc], a                                       ; $5d0f: $02
	add hl, bc                                       ; $5d10: $09
	ld c, $c1                                        ; $5d11: $0e $c1
	ld e, c                                          ; $5d13: $59
	db $e3                                           ; $5d14: $e3
	nop                                              ; $5d15: $00
	cp h                                             ; $5d16: $bc
	ret nz                                           ; $5d17: $c0

	ld d, [hl]                                       ; $5d18: $56
	db $dd                                           ; $5d19: $dd
	jp c, $e5d0                                      ; $5d1a: $da $d0 $e5

	cpl                                              ; $5d1d: $2f
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	add hl, bc                                       ; $5d20: $09
	jr z, jr_082_5cf3                                ; $5d21: $28 $d0

	add e                                            ; $5d23: $83
	ld bc, $d0de                                     ; $5d24: $01 $de $d0
	ret nz                                           ; $5d27: $c0

	ld bc, $0aa0                                     ; $5d28: $01 $a0 $0a
	nop                                              ; $5d2b: $00
	ld [hl], c                                       ; $5d2c: $71
	ret nz                                           ; $5d2d: $c0

	ld bc, $01a0                                     ; $5d2e: $01 $a0 $01
	nop                                              ; $5d31: $00
	ld a, b                                          ; $5d32: $78
	pop bc                                           ; $5d33: $c1
	ld e, c                                          ; $5d34: $59
	db $e3                                           ; $5d35: $e3
	nop                                              ; $5d36: $00
	cp e                                             ; $5d37: $bb
	and b                                            ; $5d38: $a0
	add b                                            ; $5d39: $80
	and b                                            ; $5d3a: $a0
	ld bc, $0300                                     ; $5d3b: $01 $00 $03
	db $e4                                           ; $5d3e: $e4
	nop                                              ; $5d3f: $00
	dec bc                                           ; $5d40: $0b
	rst $38                                          ; $5d41: $ff
	rlca                                             ; $5d42: $07
	ld b, b                                          ; $5d43: $40
	add b                                            ; $5d44: $80
	and b                                            ; $5d45: $a0
	ld bc, $00e4                                     ; $5d46: $01 $e4 $00
	ld c, d                                          ; $5d49: $4a
	jr z, jr_082_5d52                                ; $5d4a: $28 $06

	ret nz                                           ; $5d4c: $c0

	ld bc, $0aa0                                     ; $5d4d: $01 $a0 $0a
	nop                                              ; $5d50: $00
	ld a, l                                          ; $5d51: $7d

jr_082_5d52:
	ccf                                              ; $5d52: $3f
	nop                                              ; $5d53: $00
	add [hl]                                         ; $5d54: $86
	add hl, bc                                       ; $5d55: $09
	ld de, $02e1                                     ; $5d56: $11 $e1 $02
	inc bc                                           ; $5d59: $03
	inc de                                           ; $5d5a: $13
	ret nz                                           ; $5d5b: $c0

	ld bc, $0aa0                                     ; $5d5c: $01 $a0 $0a
	nop                                              ; $5d5f: $00
	adc h                                            ; $5d60: $8c
	pop hl                                           ; $5d61: $e1
	ld [bc], a                                       ; $5d62: $02
	inc b                                            ; $5d63: $04
	ld [hl], c                                       ; $5d64: $71
	db $e4                                           ; $5d65: $e4
	nop                                              ; $5d66: $00
	ld a, d                                          ; $5d67: $7a
	nop                                              ; $5d68: $00
	sub e                                            ; $5d69: $93
	add hl, bc                                       ; $5d6a: $09
	ld de, $02e1                                     ; $5d6b: $11 $e1 $02
	inc bc                                           ; $5d6e: $03
	dec de                                           ; $5d6f: $1b
	ret nz                                           ; $5d70: $c0

	ld bc, $0aa0                                     ; $5d71: $01 $a0 $0a
	nop                                              ; $5d74: $00
	sbc c                                            ; $5d75: $99
	pop hl                                           ; $5d76: $e1
	ld [bc], a                                       ; $5d77: $02
	inc b                                            ; $5d78: $04
	add e                                            ; $5d79: $83
	db $e4                                           ; $5d7a: $e4
	nop                                              ; $5d7b: $00
	ld h, l                                          ; $5d7c: $65
	nop                                              ; $5d7d: $00
	and c                                            ; $5d7e: $a1
	add hl, bc                                       ; $5d7f: $09
	ld de, $02e1                                     ; $5d80: $11 $e1 $02
	inc bc                                           ; $5d83: $03
	rla                                              ; $5d84: $17
	ret nz                                           ; $5d85: $c0

	ld bc, $0aa0                                     ; $5d86: $01 $a0 $0a
	nop                                              ; $5d89: $00
	and l                                            ; $5d8a: $a5
	pop hl                                           ; $5d8b: $e1
	ld [bc], a                                       ; $5d8c: $02
	inc b                                            ; $5d8d: $04
	ld a, d                                          ; $5d8e: $7a
	db $e4                                           ; $5d8f: $e4
	nop                                              ; $5d90: $00
	ld d, b                                          ; $5d91: $50
	jr z, jr_082_5d9a                                ; $5d92: $28 $06

	ret nz                                           ; $5d94: $c0

	ld bc, $0aa0                                     ; $5d95: $01 $a0 $0a
	nop                                              ; $5d98: $00
	xor c                                            ; $5d99: $a9

jr_082_5d9a:
	ld b, l                                          ; $5d9a: $45
	nop                                              ; $5d9b: $00
	xor a                                            ; $5d9c: $af
	add hl, bc                                       ; $5d9d: $09
	ld de, $02e1                                     ; $5d9e: $11 $e1 $02
	inc bc                                           ; $5da1: $03
	inc de                                           ; $5da2: $13
	ret nz                                           ; $5da3: $c0

	ld bc, $0aa0                                     ; $5da4: $01 $a0 $0a
	nop                                              ; $5da7: $00
	or a                                             ; $5da8: $b7
	pop hl                                           ; $5da9: $e1
	ld [bc], a                                       ; $5daa: $02
	inc b                                            ; $5dab: $04
	ld [hl], c                                       ; $5dac: $71
	db $e4                                           ; $5dad: $e4
	nop                                              ; $5dae: $00
	ld [hl-], a                                      ; $5daf: $32
	nop                                              ; $5db0: $00
	cp [hl]                                          ; $5db1: $be
	add hl, bc                                       ; $5db2: $09
	rla                                              ; $5db3: $17
	pop hl                                           ; $5db4: $e1
	ld [bc], a                                       ; $5db5: $02
	inc bc                                           ; $5db6: $03
	rla                                              ; $5db7: $17
	ret nz                                           ; $5db8: $c0

	ld bc, $0aa0                                     ; $5db9: $01 $a0 $0a
	nop                                              ; $5dbc: $00
	jp $01c0                                         ; $5dbd: $c3 $c0 $01


	and b                                            ; $5dc0: $a0
	ld bc, $cc00                                     ; $5dc1: $01 $00 $cc
	pop hl                                           ; $5dc4: $e1
	ld [bc], a                                       ; $5dc5: $02
	inc b                                            ; $5dc6: $04
	adc h                                            ; $5dc7: $8c
	db $e4                                           ; $5dc8: $e4
	nop                                              ; $5dc9: $00
	rla                                              ; $5dca: $17
	nop                                              ; $5dcb: $00
	call nc, $1109                                   ; $5dcc: $d4 $09 $11
	pop hl                                           ; $5dcf: $e1
	ld [bc], a                                       ; $5dd0: $02
	inc bc                                           ; $5dd1: $03
	dec de                                           ; $5dd2: $1b
	ret nz                                           ; $5dd3: $c0

	ld bc, $0aa0                                     ; $5dd4: $01 $a0 $0a
	nop                                              ; $5dd7: $00
	rst SubAFromHL                                          ; $5dd8: $d7
	pop hl                                           ; $5dd9: $e1
	ld [bc], a                                       ; $5dda: $02
	inc b                                            ; $5ddb: $04
	add e                                            ; $5ddc: $83
	db $e4                                           ; $5ddd: $e4
	nop                                              ; $5dde: $00
	ld [bc], a                                       ; $5ddf: $02
	add hl, bc                                       ; $5de0: $09
	ld c, $c1                                        ; $5de1: $0e $c1
	ld e, c                                          ; $5de3: $59
	db $e3                                           ; $5de4: $e3
	nop                                              ; $5de5: $00
	cp d                                             ; $5de6: $ba
	ret nz                                           ; $5de7: $c0

	ld d, [hl]                                       ; $5de8: $56
	db $dd                                           ; $5de9: $dd
	db $db                                           ; $5dea: $db
	ret nc                                           ; $5deb: $d0

	push hl                                          ; $5dec: $e5
	cpl                                              ; $5ded: $2f
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	add hl, bc                                       ; $5df0: $09
	rrca                                             ; $5df1: $0f
	ret nz                                           ; $5df2: $c0

	ld bc, $0aa0                                     ; $5df3: $01 $a0 $0a
	nop                                              ; $5df6: $00
	ld [hl], c                                       ; $5df7: $71
	ret nz                                           ; $5df8: $c0

	ld bc, $01a0                                     ; $5df9: $01 $a0 $01
	nop                                              ; $5dfc: $00
	ld b, $e4                                        ; $5dfd: $06 $e4
	nop                                              ; $5dff: $00
	ld [bc], a                                       ; $5e00: $02
	inc l                                            ; $5e01: $2c
	dec b                                            ; $5e02: $05
	pop bc                                           ; $5e03: $c1
	ld e, c                                          ; $5e04: $59
	db $e3                                           ; $5e05: $e3
	nop                                              ; $5e06: $00
	adc d                                            ; $5e07: $8a
	ld h, e                                          ; $5e08: $63
	cp $08                                           ; $5e09: $fe $08
	db $fc                                           ; $5e0b: $fc
	ret nz                                           ; $5e0c: $c0

	ld h, a                                          ; $5e0d: $67
	ret nc                                           ; $5e0e: $d0

	db $fc                                           ; $5e0f: $fc
	ret nz                                           ; $5e10: $c0

	ld l, c                                          ; $5e11: $69
	pop de                                           ; $5e12: $d1
	jr z, @+$08                                      ; $5e13: $28 $06

	ret nz                                           ; $5e15: $c0

	ld bc, $01a0                                     ; $5e16: $01 $a0 $01
	nop                                              ; $5e19: $00
	sbc $4c                                          ; $5e1a: $de $4c
	nop                                              ; $5e1c: $00
	db $e3                                           ; $5e1d: $e3
	inc l                                            ; $5e1e: $2c
	ld b, $c0                                        ; $5e1f: $06 $c0
	ld bc, $01a0                                     ; $5e21: $01 $a0 $01
	nop                                              ; $5e24: $00
	and $3c                                          ; $5e25: $e6 $3c
	cp $0e                                           ; $5e27: $fe $0e
	pop af                                           ; $5e29: $f1
	add b                                            ; $5e2a: $80
	ld [bc], a                                       ; $5e2b: $02
	add d                                            ; $5e2c: $82
	ei                                               ; $5e2d: $fb
	ret nz                                           ; $5e2e: $c0

	dec d                                            ; $5e2f: $15
	db $dd                                           ; $5e30: $dd
	ldh [$32], a                                     ; $5e31: $e0 $32
	db $fc                                           ; $5e33: $fc
	ret nz                                           ; $5e34: $c0

	ld l, d                                          ; $5e35: $6a
	ret nc                                           ; $5e36: $d0

	add hl, bc                                       ; $5e37: $09
	inc bc                                           ; $5e38: $03
	db $e4                                           ; $5e39: $e4
	inc b                                            ; $5e3a: $04
	ld [hl], a                                       ; $5e3b: $77
	pop de                                           ; $5e3c: $d1
	jr nz, jr_082_5e61                               ; $5e3d: $20 $22

	pop hl                                           ; $5e3f: $e1
	ld [bc], a                                       ; $5e40: $02
	inc bc                                           ; $5e41: $03
	dec de                                           ; $5e42: $1b
	ret nz                                           ; $5e43: $c0

	ld bc, $0aa0                                     ; $5e44: $01 $a0 $0a
	nop                                              ; $5e47: $00
	db $ed                                           ; $5e48: $ed
	ret nz                                           ; $5e49: $c0

	ld bc, $01a0                                     ; $5e4a: $01 $a0 $01
	nop                                              ; $5e4d: $00
	ldh a, [c]                                       ; $5e4e: $f2
	ret nz                                           ; $5e4f: $c0

	ld bc, $0aa0                                     ; $5e50: $01 $a0 $0a
	nop                                              ; $5e53: $00
	db $f4                                           ; $5e54: $f4
	ret nz                                           ; $5e55: $c0

	ld bc, $01a0                                     ; $5e56: $01 $a0 $01
	nop                                              ; $5e59: $00
	ld sp, hl                                        ; $5e5a: $f9
	ret nz                                           ; $5e5b: $c0

	ld bc, $0aa0                                     ; $5e5c: $01 $a0 $0a
	nop                                              ; $5e5f: $00
	rst $38                                          ; $5e60: $ff

jr_082_5e61:
	nop                                              ; $5e61: $00
	dec bc                                           ; $5e62: $0b
	ld bc, $0002                                     ; $5e63: $01 $02 $00
	nop                                              ; $5e66: $00
	ld b, $d1                                        ; $5e67: $06 $d1
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	ld [bc], a                                       ; $5e6b: $02
	jr z, @+$08                                      ; $5e6c: $28 $06

	ret nz                                           ; $5e6e: $c0

	ld bc, $0aa0                                     ; $5e6f: $01 $a0 $0a
	ld bc, $7004                                     ; $5e72: $01 $04 $70
	ei                                               ; $5e75: $fb
	add b                                            ; $5e76: $80
	ld [bc], a                                       ; $5e77: $02
	ld d, e                                          ; $5e78: $53
	ld [de], a                                       ; $5e79: $12
	ld bc, $0909                                     ; $5e7a: $01 $09 $09
	ld c, $d0                                        ; $5e7d: $0e $d0
	add e                                            ; $5e7f: $83
	ld bc, $d4de                                     ; $5e80: $01 $de $d4
	ret nc                                           ; $5e83: $d0

	adc e                                            ; $5e84: $8b
	and b                                            ; $5e85: $a0
	ld [bc], a                                       ; $5e86: $02
	or b                                             ; $5e87: $b0
	ld a, e                                          ; $5e88: $7b
	db $e4                                           ; $5e89: $e4
	ld [bc], a                                       ; $5e8a: $02
	xor a                                            ; $5e8b: $af
	ei                                               ; $5e8c: $fb
	pop af                                           ; $5e8d: $f1
	add b                                            ; $5e8e: $80
	ld [bc], a                                       ; $5e8f: $02
	ld d, e                                          ; $5e90: $53
	ld [de], a                                       ; $5e91: $12
	ld bc, $090b                                     ; $5e92: $01 $0b $09
	ld c, $d0                                        ; $5e95: $0e $d0
	add e                                            ; $5e97: $83
	ld bc, $d1de                                     ; $5e98: $01 $de $d1
	ret nc                                           ; $5e9b: $d0

	adc e                                            ; $5e9c: $8b
	and b                                            ; $5e9d: $a0
	ld [bc], a                                       ; $5e9e: $02
	or b                                             ; $5e9f: $b0
	ld a, h                                          ; $5ea0: $7c
	db $e4                                           ; $5ea1: $e4
	nop                                              ; $5ea2: $00
	ld b, e                                          ; $5ea3: $43
	ei                                               ; $5ea4: $fb
	add b                                            ; $5ea5: $80
	ld [bc], a                                       ; $5ea6: $02
	ld e, d                                          ; $5ea7: $5a
	ld [de], a                                       ; $5ea8: $12
	ld bc, $090d                                     ; $5ea9: $01 $0d $09
	ld c, $d0                                        ; $5eac: $0e $d0
	add e                                            ; $5eae: $83
	ld bc, $d5de                                     ; $5eaf: $01 $de $d5
	ret nc                                           ; $5eb2: $d0

	adc e                                            ; $5eb3: $8b
	and b                                            ; $5eb4: $a0
	ld [bc], a                                       ; $5eb5: $02
	or b                                             ; $5eb6: $b0
	ld a, l                                          ; $5eb7: $7d
	db $e4                                           ; $5eb8: $e4
	inc bc                                           ; $5eb9: $03
	ld b, l                                          ; $5eba: $45
	ei                                               ; $5ebb: $fb
	pop af                                           ; $5ebc: $f1
	add b                                            ; $5ebd: $80
	ld [bc], a                                       ; $5ebe: $02
	ld e, d                                          ; $5ebf: $5a
	ld [de], a                                       ; $5ec0: $12
	ld bc, $090f                                     ; $5ec1: $01 $0f $09
	ld c, $d0                                        ; $5ec4: $0e $d0
	add e                                            ; $5ec6: $83
	ld bc, $d2de                                     ; $5ec7: $01 $de $d2
	ret nc                                           ; $5eca: $d0

	adc e                                            ; $5ecb: $8b
	and b                                            ; $5ecc: $a0
	ld [bc], a                                       ; $5ecd: $02
	or b                                             ; $5ece: $b0
	ld a, [hl]                                       ; $5ecf: $7e
	db $e4                                           ; $5ed0: $e4
	nop                                              ; $5ed1: $00
	reti                                             ; $5ed2: $d9


	ld bc, $0911                                     ; $5ed3: $01 $11 $09
	ld c, $d0                                        ; $5ed6: $0e $d0
	add e                                            ; $5ed8: $83
	ld bc, $d3de                                     ; $5ed9: $01 $de $d3
	ret nc                                           ; $5edc: $d0

	adc e                                            ; $5edd: $8b
	and b                                            ; $5ede: $a0
	ld [bc], a                                       ; $5edf: $02
	or b                                             ; $5ee0: $b0
	ld a, a                                          ; $5ee1: $7f
	db $e4                                           ; $5ee2: $e4
	ld bc, $0993                                     ; $5ee3: $01 $93 $09
	daa                                              ; $5ee6: $27
	pop bc                                           ; $5ee7: $c1
	ld e, c                                          ; $5ee8: $59
	db $e3                                           ; $5ee9: $e3
	nop                                              ; $5eea: $00
	adc h                                            ; $5eeb: $8c
	ret nz                                           ; $5eec: $c0

	ld bc, $0aa0                                     ; $5eed: $01 $a0 $0a
	ld bc, $c013                                     ; $5ef0: $01 $13 $c0
	ld bc, $01a0                                     ; $5ef3: $01 $a0 $01
	ld bc, $e117                                     ; $5ef6: $01 $17 $e1
	ld [bc], a                                       ; $5ef9: $02
	rlca                                             ; $5efa: $07
	call nz, $80a0                                   ; $5efb: $c4 $a0 $80
	and b                                            ; $5efe: $a0
	ld c, $00                                        ; $5eff: $0e $00
	inc bc                                           ; $5f01: $03
	db $e4                                           ; $5f02: $e4
	nop                                              ; $5f03: $00
	dec bc                                           ; $5f04: $0b
	rst $38                                          ; $5f05: $ff
	rlca                                             ; $5f06: $07
	ld b, b                                          ; $5f07: $40
	add b                                            ; $5f08: $80
	and b                                            ; $5f09: $a0
	ld c, $e4                                        ; $5f0a: $0e $e4
	nop                                              ; $5f0c: $00
	ld d, [hl]                                       ; $5f0d: $56
	jr z, @+$08                                      ; $5f0e: $28 $06

	ret nz                                           ; $5f10: $c0

	ld bc, $0aa0                                     ; $5f11: $01 $a0 $0a
	ld bc, $4b1b                                     ; $5f14: $01 $1b $4b
	ld bc, $0921                                     ; $5f17: $01 $21 $09
	ld de, $02e1                                     ; $5f1a: $11 $e1 $02
	inc bc                                           ; $5f1d: $03
	inc de                                           ; $5f1e: $13
	ret nz                                           ; $5f1f: $c0

	ld bc, $0aa0                                     ; $5f20: $01 $a0 $0a
	ld bc, $e124                                     ; $5f23: $01 $24 $e1
	ld [bc], a                                       ; $5f26: $02
	inc b                                            ; $5f27: $04
	ld [hl], c                                       ; $5f28: $71
	db $e4                                           ; $5f29: $e4
	inc b                                            ; $5f2a: $04
	ld c, a                                          ; $5f2b: $4f
	ld bc, $092c                                     ; $5f2c: $01 $2c $09
	ld de, $02e1                                     ; $5f2f: $11 $e1 $02
	inc bc                                           ; $5f32: $03
	dec de                                           ; $5f33: $1b
	ret nz                                           ; $5f34: $c0

	ld bc, $0aa0                                     ; $5f35: $01 $a0 $0a
	ld bc, $e132                                     ; $5f38: $01 $32 $e1
	ld [bc], a                                       ; $5f3b: $02
	inc b                                            ; $5f3c: $04
	add e                                            ; $5f3d: $83
	db $e4                                           ; $5f3e: $e4
	inc b                                            ; $5f3f: $04
	ld a, [hl-]                                      ; $5f40: $3a
	ld bc, $0939                                     ; $5f41: $01 $39 $09
	dec e                                            ; $5f44: $1d
	pop hl                                           ; $5f45: $e1
	ld [bc], a                                       ; $5f46: $02
	inc bc                                           ; $5f47: $03
	rla                                              ; $5f48: $17
	ret nz                                           ; $5f49: $c0

	ld bc, $0aa0                                     ; $5f4a: $01 $a0 $0a
	ld bc, $c03d                                     ; $5f4d: $01 $3d $c0
	ld bc, $01a0                                     ; $5f50: $01 $a0 $01
	ld bc, $c043                                     ; $5f53: $01 $43 $c0
	ld bc, $0aa0                                     ; $5f56: $01 $a0 $0a
	ld bc, $e147                                     ; $5f59: $01 $47 $e1
	ld [bc], a                                       ; $5f5c: $02
	inc b                                            ; $5f5d: $04
	ld a, d                                          ; $5f5e: $7a
	db $e4                                           ; $5f5f: $e4
	inc b                                            ; $5f60: $04
	add hl, de                                       ; $5f61: $19
	jr z, @+$08                                      ; $5f62: $28 $06

	ret nz                                           ; $5f64: $c0

	ld bc, $0aa0                                     ; $5f65: $01 $a0 $0a
	ld bc, $3f50                                     ; $5f68: $01 $50 $3f
	ld bc, $0958                                     ; $5f6b: $01 $58 $09
	ld de, $02e1                                     ; $5f6e: $11 $e1 $02
	inc bc                                           ; $5f71: $03
	inc de                                           ; $5f72: $13
	ret nz                                           ; $5f73: $c0

	ld bc, $0aa0                                     ; $5f74: $01 $a0 $0a
	ld bc, $e15e                                     ; $5f77: $01 $5e $e1
	ld [bc], a                                       ; $5f7a: $02
	inc b                                            ; $5f7b: $04
	ld [hl], c                                       ; $5f7c: $71
	db $e4                                           ; $5f7d: $e4
	inc bc                                           ; $5f7e: $03
	ei                                               ; $5f7f: $fb
	ld bc, $096b                                     ; $5f80: $01 $6b $09
	ld de, $02e1                                     ; $5f83: $11 $e1 $02
	inc bc                                           ; $5f86: $03
	dec de                                           ; $5f87: $1b
	ret nz                                           ; $5f88: $c0

	ld bc, $0aa0                                     ; $5f89: $01 $a0 $0a
	ld bc, $e16e                                     ; $5f8c: $01 $6e $e1
	ld [bc], a                                       ; $5f8f: $02
	inc b                                            ; $5f90: $04
	add e                                            ; $5f91: $83
	db $e4                                           ; $5f92: $e4
	inc bc                                           ; $5f93: $03
	and $01                                          ; $5f94: $e6 $01
	ld [hl], d                                       ; $5f96: $72
	add hl, bc                                       ; $5f97: $09
	ld de, $02e1                                     ; $5f98: $11 $e1 $02
	inc bc                                           ; $5f9b: $03
	dec de                                           ; $5f9c: $1b
	ret nz                                           ; $5f9d: $c0

	ld bc, $0aa0                                     ; $5f9e: $01 $a0 $0a
	ld bc, $e176                                     ; $5fa1: $01 $76 $e1
	ld [bc], a                                       ; $5fa4: $02
	inc b                                            ; $5fa5: $04
	add e                                            ; $5fa6: $83
	db $e4                                           ; $5fa7: $e4
	inc bc                                           ; $5fa8: $03
	pop de                                           ; $5fa9: $d1
	add hl, bc                                       ; $5faa: $09
	dec l                                            ; $5fab: $2d
	pop bc                                           ; $5fac: $c1
	ld e, c                                          ; $5fad: $59
	db $e3                                           ; $5fae: $e3
	nop                                              ; $5faf: $00
	adc l                                            ; $5fb0: $8d
	ret nz                                           ; $5fb1: $c0

	ld bc, $0aa0                                     ; $5fb2: $01 $a0 $0a
	ld bc, $c079                                     ; $5fb5: $01 $79 $c0
	ld bc, $01a0                                     ; $5fb8: $01 $a0 $01
	ld bc, $c07c                                     ; $5fbb: $01 $7c $c0
	ld bc, $0aa0                                     ; $5fbe: $01 $a0 $0a
	ld bc, $e17f                                     ; $5fc1: $01 $7f $e1
	ld [bc], a                                       ; $5fc4: $02
	rlca                                             ; $5fc5: $07
	db $e3                                           ; $5fc6: $e3
	and b                                            ; $5fc7: $a0
	add b                                            ; $5fc8: $80
	and b                                            ; $5fc9: $a0
	rrca                                             ; $5fca: $0f
	nop                                              ; $5fcb: $00
	inc bc                                           ; $5fcc: $03
	db $e4                                           ; $5fcd: $e4
	nop                                              ; $5fce: $00
	dec bc                                           ; $5fcf: $0b
	rst $38                                          ; $5fd0: $ff
	rlca                                             ; $5fd1: $07
	ld b, b                                          ; $5fd2: $40
	add b                                            ; $5fd3: $80
	and b                                            ; $5fd4: $a0
	rrca                                             ; $5fd5: $0f
	db $e4                                           ; $5fd6: $e4
	nop                                              ; $5fd7: $00
	ld c, d                                          ; $5fd8: $4a
	jr z, @+$08                                      ; $5fd9: $28 $06

	ret nz                                           ; $5fdb: $c0

	ld bc, $0aa0                                     ; $5fdc: $01 $a0 $0a
	ld bc, $3f85                                     ; $5fdf: $01 $85 $3f
	ld bc, $0988                                     ; $5fe2: $01 $88 $09
	ld de, $02e1                                     ; $5fe5: $11 $e1 $02
	inc bc                                           ; $5fe8: $03
	inc de                                           ; $5fe9: $13
	ret nz                                           ; $5fea: $c0

	ld bc, $0aa0                                     ; $5feb: $01 $a0 $0a
	ld bc, $e18c                                     ; $5fee: $01 $8c $e1
	ld [bc], a                                       ; $5ff1: $02
	inc b                                            ; $5ff2: $04
	ld a, d                                          ; $5ff3: $7a
	db $e4                                           ; $5ff4: $e4
	inc bc                                           ; $5ff5: $03
	add h                                            ; $5ff6: $84
	ld bc, $0992                                     ; $5ff7: $01 $92 $09
	ld de, $02e1                                     ; $5ffa: $11 $e1 $02
	inc bc                                           ; $5ffd: $03
	dec de                                           ; $5ffe: $1b
	ret nz                                           ; $5fff: $c0

	ld bc, $0aa0                                     ; $6000: $01 $a0 $0a
	ld bc, $e199                                     ; $6003: $01 $99 $e1
	ld [bc], a                                       ; $6006: $02
	inc b                                            ; $6007: $04
	add e                                            ; $6008: $83
	db $e4                                           ; $6009: $e4
	inc bc                                           ; $600a: $03
	ld l, a                                          ; $600b: $6f
	ld bc, $09a1                                     ; $600c: $01 $a1 $09
	ld de, $02e1                                     ; $600f: $11 $e1 $02
	inc bc                                           ; $6012: $03
	rrca                                             ; $6013: $0f
	ret nz                                           ; $6014: $c0

	ld bc, $0aa0                                     ; $6015: $01 $a0 $0a
	ld bc, $e1a8                                     ; $6018: $01 $a8 $e1
	ld [bc], a                                       ; $601b: $02
	inc b                                            ; $601c: $04
	ld l, b                                          ; $601d: $68
	db $e4                                           ; $601e: $e4
	inc bc                                           ; $601f: $03
	ld e, d                                          ; $6020: $5a
	add hl, bc                                       ; $6021: $09
	ld d, e                                          ; $6022: $53
	ret nz                                           ; $6023: $c0

	ld bc, $01a0                                     ; $6024: $01 $a0 $01
	ld bc, $e1aa                                     ; $6027: $01 $aa $e1
	ld [bc], a                                       ; $602a: $02
	inc bc                                           ; $602b: $03
	dec de                                           ; $602c: $1b
	ret nz                                           ; $602d: $c0

	ld bc, $0aa0                                     ; $602e: $01 $a0 $0a
	ld bc, $c0b8                                     ; $6031: $01 $b8 $c0
	ld bc, $01a0                                     ; $6034: $01 $a0 $01
	nop                                              ; $6037: $00
	ldh a, [c]                                       ; $6038: $f2
	ret nz                                           ; $6039: $c0

	ld bc, $1fa0                                     ; $603a: $01 $a0 $1f
	ld bc, $c0bb                                     ; $603d: $01 $bb $c0
	ld bc, $01a0                                     ; $6040: $01 $a0 $01
	ld bc, $e1c9                                     ; $6043: $01 $c9 $e1
	ld [bc], a                                       ; $6046: $02
	inc bc                                           ; $6047: $03
	rra                                              ; $6048: $1f
	ret nz                                           ; $6049: $c0

	ld bc, $0aa0                                     ; $604a: $01 $a0 $0a
	ld bc, $c0d4                                     ; $604d: $01 $d4 $c0
	ld bc, $01a0                                     ; $6050: $01 $a0 $01
	ld bc, $e1e1                                     ; $6053: $01 $e1 $e1
	ld [bc], a                                       ; $6056: $02
	inc bc                                           ; $6057: $03
	rrca                                             ; $6058: $0f
	ret nz                                           ; $6059: $c0

	ld bc, $0aa0                                     ; $605a: $01 $a0 $0a
	ld bc, wGenericTileDataFinalDest                                     ; $605d: $01 $e6 $c0
	ld bc, $01a0                                     ; $6060: $01 $a0 $01
	ld bc, $e1f0                                     ; $6063: $01 $f0 $e1
	ld [bc], a                                       ; $6066: $02
	inc bc                                           ; $6067: $03
	inc de                                           ; $6068: $13
	ret nz                                           ; $6069: $c0

	ld bc, $0aa0                                     ; $606a: $01 $a0 $0a
	ld bc, $e1fa                                     ; $606d: $01 $fa $e1
	ld [bc], a                                       ; $6070: $02
	inc b                                            ; $6071: $04
	db $db                                           ; $6072: $db
	db $e4                                           ; $6073: $e4
	inc bc                                           ; $6074: $03
	dec b                                            ; $6075: $05
	add hl, bc                                       ; $6076: $09
	ld hl, $59c1                                     ; $6077: $21 $c1 $59
	db $e3                                           ; $607a: $e3
	nop                                              ; $607b: $00
	adc [hl]                                         ; $607c: $8e
	ret nz                                           ; $607d: $c0

	ld bc, $0aa0                                     ; $607e: $01 $a0 $0a
	ld [bc], a                                       ; $6081: $02
	nop                                              ; $6082: $00
	pop hl                                           ; $6083: $e1
	ld [bc], a                                       ; $6084: $02
	rlca                                             ; $6085: $07
	rst FarCall                                          ; $6086: $f7
	and b                                            ; $6087: $a0
	add b                                            ; $6088: $80
	and b                                            ; $6089: $a0
	stop                                             ; $608a: $10 $00
	inc bc                                           ; $608c: $03
	db $e4                                           ; $608d: $e4
	nop                                              ; $608e: $00
	dec bc                                           ; $608f: $0b
	rst $38                                          ; $6090: $ff
	rlca                                             ; $6091: $07
	ld b, b                                          ; $6092: $40
	add b                                            ; $6093: $80
	and b                                            ; $6094: $a0
	db $10                                           ; $6095: $10
	db $e4                                           ; $6096: $e4
	nop                                              ; $6097: $00
	ld c, d                                          ; $6098: $4a
	jr z, @+$08                                      ; $6099: $28 $06

	ret nz                                           ; $609b: $c0

	ld bc, $0aa0                                     ; $609c: $01 $a0 $0a
	ld [bc], a                                       ; $609f: $02
	ld bc, $023f                                     ; $60a0: $01 $3f $02
	rlca                                             ; $60a3: $07
	add hl, bc                                       ; $60a4: $09
	ld de, $02e1                                     ; $60a5: $11 $e1 $02
	inc bc                                           ; $60a8: $03
	rrca                                             ; $60a9: $0f
	ret nz                                           ; $60aa: $c0

	ld bc, $0aa0                                     ; $60ab: $01 $a0 $0a
	ld [bc], a                                       ; $60ae: $02
	ld c, $e1                                        ; $60af: $0e $e1
	ld [bc], a                                       ; $60b1: $02
	inc b                                            ; $60b2: $04
	ld l, b                                          ; $60b3: $68
	db $e4                                           ; $60b4: $e4
	ld [bc], a                                       ; $60b5: $02
	call nz, $1402                                   ; $60b6: $c4 $02 $14
	add hl, bc                                       ; $60b9: $09
	ld de, $02e1                                     ; $60ba: $11 $e1 $02
	inc bc                                           ; $60bd: $03
	dec de                                           ; $60be: $1b
	ret nz                                           ; $60bf: $c0

	ld bc, $0aa0                                     ; $60c0: $01 $a0 $0a
	ld [bc], a                                       ; $60c3: $02
	ld d, $e1                                        ; $60c4: $16 $e1
	ld [bc], a                                       ; $60c6: $02
	inc b                                            ; $60c7: $04
	add e                                            ; $60c8: $83
	db $e4                                           ; $60c9: $e4
	ld [bc], a                                       ; $60ca: $02
	xor a                                            ; $60cb: $af
	ld [bc], a                                       ; $60cc: $02
	ld a, [de]                                       ; $60cd: $1a
	add hl, bc                                       ; $60ce: $09
	ld de, $02e1                                     ; $60cf: $11 $e1 $02
	inc bc                                           ; $60d2: $03
	inc de                                           ; $60d3: $13
	ret nz                                           ; $60d4: $c0

	ld bc, $0aa0                                     ; $60d5: $01 $a0 $0a
	ld [bc], a                                       ; $60d8: $02
	ld [hl+], a                                      ; $60d9: $22
	pop hl                                           ; $60da: $e1
	ld [bc], a                                       ; $60db: $02
	inc b                                            ; $60dc: $04
	ld [hl], c                                       ; $60dd: $71
	db $e4                                           ; $60de: $e4
	ld [bc], a                                       ; $60df: $02
	sbc d                                            ; $60e0: $9a
	jr z, jr_082_60e9                                ; $60e1: $28 $06

	ret nz                                           ; $60e3: $c0

	ld bc, $0aa0                                     ; $60e4: $01 $a0 $0a
	ld [bc], a                                       ; $60e7: $02
	dec hl                                           ; $60e8: $2b

jr_082_60e9:
	ld c, a                                          ; $60e9: $4f
	ld [bc], a                                       ; $60ea: $02
	inc sp                                           ; $60eb: $33
	add hl, bc                                       ; $60ec: $09
	ld hl, $02e1                                     ; $60ed: $21 $e1 $02
	inc bc                                           ; $60f0: $03
	dec de                                           ; $60f1: $1b
	ret nz                                           ; $60f2: $c0

	ld bc, $0aa0                                     ; $60f3: $01 $a0 $0a
	ld [bc], a                                       ; $60f6: $02
	dec sp                                           ; $60f7: $3b
	ret nz                                           ; $60f8: $c0

	ld bc, $01a0                                     ; $60f9: $01 $a0 $01
	ld [bc], a                                       ; $60fc: $02
	ld a, $e1                                        ; $60fd: $3e $e1
	ld [bc], a                                       ; $60ff: $02
	inc bc                                           ; $6100: $03
	rrca                                             ; $6101: $0f
	ret nz                                           ; $6102: $c0

	ld bc, $0aa0                                     ; $6103: $01 $a0 $0a
	ld [bc], a                                       ; $6106: $02
	ld c, h                                          ; $6107: $4c
	pop hl                                           ; $6108: $e1
	ld [bc], a                                       ; $6109: $02
	inc b                                            ; $610a: $04
	ld l, b                                          ; $610b: $68

Jump_082_610c:
	db $e4                                           ; $610c: $e4
	ld [bc], a                                       ; $610d: $02
	ld l, h                                          ; $610e: $6c
	ld [bc], a                                       ; $610f: $02
	ld e, b                                          ; $6110: $58
	add hl, bc                                       ; $6111: $09
	ld de, $02e1                                     ; $6112: $11 $e1 $02
	inc bc                                           ; $6115: $03
	dec de                                           ; $6116: $1b
	ret nz                                           ; $6117: $c0

	ld bc, $0aa0                                     ; $6118: $01 $a0 $0a
	ld [bc], a                                       ; $611b: $02
	ld h, b                                          ; $611c: $60
	pop hl                                           ; $611d: $e1
	ld [bc], a                                       ; $611e: $02
	inc b                                            ; $611f: $04
	add e                                            ; $6120: $83
	db $e4                                           ; $6121: $e4
	ld [bc], a                                       ; $6122: $02
	ld d, a                                          ; $6123: $57
	ld [bc], a                                       ; $6124: $02
	ld h, a                                          ; $6125: $67
	add hl, bc                                       ; $6126: $09
	ld de, $02e1                                     ; $6127: $11 $e1 $02
	inc bc                                           ; $612a: $03
	dec de                                           ; $612b: $1b
	ret nz                                           ; $612c: $c0

	ld bc, $0aa0                                     ; $612d: $01 $a0 $0a
	ld [bc], a                                       ; $6130: $02
	ld l, [hl]                                       ; $6131: $6e
	pop hl                                           ; $6132: $e1
	ld [bc], a                                       ; $6133: $02
	inc b                                            ; $6134: $04
	add e                                            ; $6135: $83
	db $e4                                           ; $6136: $e4
	ld [bc], a                                       ; $6137: $02
	ld b, d                                          ; $6138: $42
	add hl, bc                                       ; $6139: $09
	ld hl, $59c1                                     ; $613a: $21 $c1 $59
	db $e3                                           ; $613d: $e3
	nop                                              ; $613e: $00
	adc a                                            ; $613f: $8f
	ret nz                                           ; $6140: $c0

	ld bc, $0aa0                                     ; $6141: $01 $a0 $0a
	ld [bc], a                                       ; $6144: $02
	nop                                              ; $6145: $00
	pop hl                                           ; $6146: $e1
	ld [bc], a                                       ; $6147: $02
	ld [$a016], sp                                   ; $6148: $08 $16 $a0
	add b                                            ; $614b: $80
	and b                                            ; $614c: $a0
	ld de, $0300                                     ; $614d: $11 $00 $03
	db $e4                                           ; $6150: $e4
	nop                                              ; $6151: $00
	dec bc                                           ; $6152: $0b
	rst $38                                          ; $6153: $ff
	rlca                                             ; $6154: $07
	ld b, b                                          ; $6155: $40
	add b                                            ; $6156: $80
	and b                                            ; $6157: $a0
	ld de, $00e4                                     ; $6158: $11 $e4 $00
	ld e, h                                          ; $615b: $5c
	jr z, jr_082_6164                                ; $615c: $28 $06

	ret nz                                           ; $615e: $c0

	ld bc, $0aa0                                     ; $615f: $01 $a0 $0a
	ld [bc], a                                       ; $6162: $02
	ld [hl], l                                       ; $6163: $75

jr_082_6164:
	ld d, c                                          ; $6164: $51
	ld [bc], a                                       ; $6165: $02
	ld [hl], a                                       ; $6166: $77
	add hl, bc                                       ; $6167: $09
	ld de, $02e1                                     ; $6168: $11 $e1 $02
	inc bc                                           ; $616b: $03
	inc de                                           ; $616c: $13
	ret nz                                           ; $616d: $c0

	ld bc, $0aa0                                     ; $616e: $01 $a0 $0a
	ld [bc], a                                       ; $6171: $02
	ld a, e                                          ; $6172: $7b
	pop hl                                           ; $6173: $e1
	ld [bc], a                                       ; $6174: $02
	inc b                                            ; $6175: $04
	ld [hl], c                                       ; $6176: $71
	db $e4                                           ; $6177: $e4
	ld [bc], a                                       ; $6178: $02
	ld bc, $9201                                     ; $6179: $01 $01 $92
	add hl, bc                                       ; $617c: $09
	ld de, $02e1                                     ; $617d: $11 $e1 $02
	inc bc                                           ; $6180: $03
	dec de                                           ; $6181: $1b
	ret nz                                           ; $6182: $c0

	ld bc, $0aa0                                     ; $6183: $01 $a0 $0a
	ld [bc], a                                       ; $6186: $02
	add b                                            ; $6187: $80
	pop hl                                           ; $6188: $e1
	ld [bc], a                                       ; $6189: $02
	inc b                                            ; $618a: $04
	add e                                            ; $618b: $83
	db $e4                                           ; $618c: $e4
	ld bc, $02ec                                     ; $618d: $01 $ec $02
	add a                                            ; $6190: $87
	add hl, bc                                       ; $6191: $09
	inc hl                                           ; $6192: $23
	pop hl                                           ; $6193: $e1
	ld [bc], a                                       ; $6194: $02
	inc bc                                           ; $6195: $03
	inc de                                           ; $6196: $13
	ret nz                                           ; $6197: $c0

	ld bc, $0aa0                                     ; $6198: $01 $a0 $0a
	ld [bc], a                                       ; $619b: $02
	adc e                                            ; $619c: $8b
	ret nz                                           ; $619d: $c0

	ld bc, $01a0                                     ; $619e: $01 $a0 $01
	ld [bc], a                                       ; $61a1: $02
	sub e                                            ; $61a2: $93
	ret nz                                           ; $61a3: $c0

	ld bc, $0aa0                                     ; $61a4: $01 $a0 $0a
	ld [bc], a                                       ; $61a7: $02
	sub [hl]                                         ; $61a8: $96
	ret nz                                           ; $61a9: $c0

	ld bc, $01a0                                     ; $61aa: $01 $a0 $01
	ld [bc], a                                       ; $61ad: $02
	sbc [hl]                                         ; $61ae: $9e
	pop hl                                           ; $61af: $e1
	ld [bc], a                                       ; $61b0: $02
	inc b                                            ; $61b1: $04
	ld [hl], c                                       ; $61b2: $71
	db $e4                                           ; $61b3: $e4
	ld bc, $28c5                                     ; $61b4: $01 $c5 $28
	ld b, $c0                                        ; $61b7: $06 $c0
	ld bc, $0aa0                                     ; $61b9: $01 $a0 $0a
	ld [bc], a                                       ; $61bc: $02
	and c                                            ; $61bd: $a1
	ccf                                              ; $61be: $3f
	ld [bc], a                                       ; $61bf: $02
	xor b                                            ; $61c0: $a8
	add hl, bc                                       ; $61c1: $09
	ld de, $02e1                                     ; $61c2: $11 $e1 $02
	inc bc                                           ; $61c5: $03
	dec de                                           ; $61c6: $1b
	ret nz                                           ; $61c7: $c0

	ld bc, $0aa0                                     ; $61c8: $01 $a0 $0a
	ld [bc], a                                       ; $61cb: $02
	xor l                                            ; $61cc: $ad
	pop hl                                           ; $61cd: $e1
	ld [bc], a                                       ; $61ce: $02
	inc b                                            ; $61cf: $04
	add e                                            ; $61d0: $83
	db $e4                                           ; $61d1: $e4
	ld bc, $02a7                                     ; $61d2: $01 $a7 $02
	cp c                                             ; $61d5: $b9
	add hl, bc                                       ; $61d6: $09
	ld de, $02e1                                     ; $61d7: $11 $e1 $02
	inc bc                                           ; $61da: $03
	inc de                                           ; $61db: $13
	ret nz                                           ; $61dc: $c0

	ld bc, $0aa0                                     ; $61dd: $01 $a0 $0a
	ld [bc], a                                       ; $61e0: $02
	cp h                                             ; $61e1: $bc
	pop hl                                           ; $61e2: $e1
	ld [bc], a                                       ; $61e3: $02
	inc b                                            ; $61e4: $04
	ld [hl], c                                       ; $61e5: $71
	db $e4                                           ; $61e6: $e4
	ld bc, $0292                                     ; $61e7: $01 $92 $02
	jp nz, $1109                                     ; $61ea: $c2 $09 $11

	pop hl                                           ; $61ed: $e1
	ld [bc], a                                       ; $61ee: $02
	inc bc                                           ; $61ef: $03
	inc de                                           ; $61f0: $13
	ret nz                                           ; $61f1: $c0

	ld bc, $0aa0                                     ; $61f2: $01 $a0 $0a
	ld [bc], a                                       ; $61f5: $02
	add $e1                                          ; $61f6: $c6 $e1
	ld [bc], a                                       ; $61f8: $02
	inc b                                            ; $61f9: $04
	ld a, d                                          ; $61fa: $7a
	db $e4                                           ; $61fb: $e4
	ld bc, $097d                                     ; $61fc: $01 $7d $09
	ld hl, $59c1                                     ; $61ff: $21 $c1 $59
	db $e3                                           ; $6202: $e3
	nop                                              ; $6203: $00
	sub b                                            ; $6204: $90
	ret nz                                           ; $6205: $c0

	ld bc, $0aa0                                     ; $6206: $01 $a0 $0a
	ld [bc], a                                       ; $6209: $02
	sub $e1                                          ; $620a: $d6 $e1
	ld [bc], a                                       ; $620c: $02
	ld [$a02a], sp                                   ; $620d: $08 $2a $a0
	add b                                            ; $6210: $80
	and b                                            ; $6211: $a0
	ld [de], a                                       ; $6212: $12
	nop                                              ; $6213: $00
	inc bc                                           ; $6214: $03
	db $e4                                           ; $6215: $e4
	nop                                              ; $6216: $00
	dec bc                                           ; $6217: $0b
	rst $38                                          ; $6218: $ff
	rlca                                             ; $6219: $07
	ld b, b                                          ; $621a: $40
	add b                                            ; $621b: $80
	and b                                            ; $621c: $a0
	ld [de], a                                       ; $621d: $12
	db $e4                                           ; $621e: $e4
	nop                                              ; $621f: $00
	ld c, d                                          ; $6220: $4a
	jr z, jr_082_6229                                ; $6221: $28 $06

	ret nz                                           ; $6223: $c0

	ld bc, $0aa0                                     ; $6224: $01 $a0 $0a
	ld [bc], a                                       ; $6227: $02
	reti                                             ; $6228: $d9


jr_082_6229:
	ccf                                              ; $6229: $3f
	ld [bc], a                                       ; $622a: $02
	pop hl                                           ; $622b: $e1
	add hl, bc                                       ; $622c: $09
	ld de, $02e1                                     ; $622d: $11 $e1 $02
	inc bc                                           ; $6230: $03
	inc de                                           ; $6231: $13
	ret nz                                           ; $6232: $c0

	ld bc, $0aa0                                     ; $6233: $01 $a0 $0a
	ld [bc], a                                       ; $6236: $02
	ld [$02e1], a                                    ; $6237: $ea $e1 $02
	inc b                                            ; $623a: $04
	ld [hl], c                                       ; $623b: $71
	db $e4                                           ; $623c: $e4
	ld bc, $023c                                     ; $623d: $01 $3c $02
	xor $09                                          ; $6240: $ee $09
	ld de, $02e1                                     ; $6242: $11 $e1 $02
	inc bc                                           ; $6245: $03
	rla                                              ; $6246: $17
	ret nz                                           ; $6247: $c0

	ld bc, $0aa0                                     ; $6248: $01 $a0 $0a
	ld [bc], a                                       ; $624b: $02
	ldh a, [$e1]                                     ; $624c: $f0 $e1
	ld [bc], a                                       ; $624e: $02
	inc b                                            ; $624f: $04
	ld a, d                                          ; $6250: $7a
	db $e4                                           ; $6251: $e4
	ld bc, $0227                                     ; $6252: $01 $27 $02
	ld a, [$1109]                                    ; $6255: $fa $09 $11
	pop hl                                           ; $6258: $e1
	ld [bc], a                                       ; $6259: $02
	inc bc                                           ; $625a: $03
	rla                                              ; $625b: $17
	ret nz                                           ; $625c: $c0

	ld bc, $0aa0                                     ; $625d: $01 $a0 $0a
	ld [bc], a                                       ; $6260: $02
	db $fc                                           ; $6261: $fc
	pop hl                                           ; $6262: $e1
	ld [bc], a                                       ; $6263: $02
	inc b                                            ; $6264: $04
	ld a, d                                          ; $6265: $7a
	db $e4                                           ; $6266: $e4
	ld bc, $2812                                     ; $6267: $01 $12 $28
	ld b, $c0                                        ; $626a: $06 $c0
	ld bc, $0aa0                                     ; $626c: $01 $a0 $0a
	ld [bc], a                                       ; $626f: $02
	rst $38                                          ; $6270: $ff
	ccf                                              ; $6271: $3f
	inc bc                                           ; $6272: $03
	dec b                                            ; $6273: $05
	add hl, bc                                       ; $6274: $09
	ld de, $02e1                                     ; $6275: $11 $e1 $02
	inc bc                                           ; $6278: $03
	rla                                              ; $6279: $17
	ret nz                                           ; $627a: $c0

	ld bc, $0aa0                                     ; $627b: $01 $a0 $0a
	inc bc                                           ; $627e: $03
	dec c                                            ; $627f: $0d
	pop hl                                           ; $6280: $e1
	ld [bc], a                                       ; $6281: $02
	inc b                                            ; $6282: $04
	ld [hl], c                                       ; $6283: $71
	db $e4                                           ; $6284: $e4
	nop                                              ; $6285: $00
	db $f4                                           ; $6286: $f4
	inc bc                                           ; $6287: $03
	ld d, $09                                        ; $6288: $16 $09
	ld de, $02e1                                     ; $628a: $11 $e1 $02
	inc bc                                           ; $628d: $03
	dec de                                           ; $628e: $1b
	ret nz                                           ; $628f: $c0

	ld bc, $0aa0                                     ; $6290: $01 $a0 $0a
	inc bc                                           ; $6293: $03
	dec e                                            ; $6294: $1d
	pop hl                                           ; $6295: $e1
	ld [bc], a                                       ; $6296: $02
	inc b                                            ; $6297: $04
	add e                                            ; $6298: $83
	db $e4                                           ; $6299: $e4
	nop                                              ; $629a: $00
	rst SubAFromDE                                          ; $629b: $df
	inc bc                                           ; $629c: $03
	dec h                                            ; $629d: $25
	add hl, bc                                       ; $629e: $09
	ld de, $02e1                                     ; $629f: $11 $e1 $02
	inc bc                                           ; $62a2: $03
	rla                                              ; $62a3: $17
	ret nz                                           ; $62a4: $c0

	ld bc, $0aa0                                     ; $62a5: $01 $a0 $0a
	inc bc                                           ; $62a8: $03
	daa                                              ; $62a9: $27
	pop hl                                           ; $62aa: $e1
	ld [bc], a                                       ; $62ab: $02
	inc b                                            ; $62ac: $04
	ld a, d                                          ; $62ad: $7a
	db $e4                                           ; $62ae: $e4
	nop                                              ; $62af: $00
	jp z, $c009                                      ; $62b0: $ca $09 $c0

	push bc                                          ; $62b3: $c5
	ret nz                                           ; $62b4: $c0

	ld bc, $0aa0                                     ; $62b5: $01 $a0 $0a
	inc bc                                           ; $62b8: $03
	dec l                                            ; $62b9: $2d
	ret nz                                           ; $62ba: $c0

	ld bc, $01a0                                     ; $62bb: $01 $a0 $01
	inc bc                                           ; $62be: $03
	ld l, $c1                                        ; $62bf: $2e $c1
	dec sp                                           ; $62c1: $3b
	pop hl                                           ; $62c2: $e1
	ld [bc], a                                       ; $62c3: $02
	inc bc                                           ; $62c4: $03
	rla                                              ; $62c5: $17
	ret nz                                           ; $62c6: $c0

	ld bc, $0aa0                                     ; $62c7: $01 $a0 $0a
	inc bc                                           ; $62ca: $03
	inc sp                                           ; $62cb: $33
	ret nz                                           ; $62cc: $c0

	ld bc, $01a0                                     ; $62cd: $01 $a0 $01
	nop                                              ; $62d0: $00
	ldh a, [c]                                       ; $62d1: $f2
	pop hl                                           ; $62d2: $e1
	ld [bc], a                                       ; $62d3: $02
	inc bc                                           ; $62d4: $03
	dec de                                           ; $62d5: $1b
	pop bc                                           ; $62d6: $c1
	or d                                             ; $62d7: $b2
	db $e3                                           ; $62d8: $e3
	nop                                              ; $62d9: $00
	adc e                                            ; $62da: $8b
	ret nz                                           ; $62db: $c0

	ld bc, $0aa0                                     ; $62dc: $01 $a0 $0a
	inc bc                                           ; $62df: $03
	ld [hl], $c0                                     ; $62e0: $36 $c0
	ld bc, $01a0                                     ; $62e2: $01 $a0 $01

jr_082_62e5:
	inc bc                                           ; $62e5: $03
	add hl, sp                                       ; $62e6: $39
	pop bc                                           ; $62e7: $c1
	or d                                             ; $62e8: $b2
	db $e3                                           ; $62e9: $e3
	nop                                              ; $62ea: $00
	adc h                                            ; $62eb: $8c
	ret nz                                           ; $62ec: $c0

	ld bc, $0aa0                                     ; $62ed: $01 $a0 $0a
	inc bc                                           ; $62f0: $03
	dec sp                                           ; $62f1: $3b
	ret nz                                           ; $62f2: $c0

	ld bc, $01a0                                     ; $62f3: $01 $a0 $01
	inc bc                                           ; $62f6: $03
	ld c, d                                          ; $62f7: $4a
	ret nz                                           ; $62f8: $c0

	ld bc, $0aa0                                     ; $62f9: $01 $a0 $0a
	inc bc                                           ; $62fc: $03
	ld d, b                                          ; $62fd: $50
	ret nz                                           ; $62fe: $c0

	ld bc, $1fa0                                     ; $62ff: $01 $a0 $1f
	inc bc                                           ; $6302: $03
	ld d, [hl]                                       ; $6303: $56
	ret nz                                           ; $6304: $c0

	set 0, c                                         ; $6305: $cb $c1
	ld e, e                                          ; $6307: $5b

jr_082_6308:
	ret nz                                           ; $6308: $c0

	add hl, bc                                       ; $6309: $09
	db $e3                                           ; $630a: $e3
	nop                                              ; $630b: $00
	dec l                                            ; $630c: $2d
	ret nz                                           ; $630d: $c0

	rrca                                             ; $630e: $0f
	db $e3                                           ; $630f: $e3
	ld bc, $c014                                     ; $6310: $01 $14 $c0
	inc c                                            ; $6313: $0c
	ldh [$5a], a                                     ; $6314: $e0 $5a
	ret nz                                           ; $6316: $c0

	ld bc, $25a0                                     ; $6317: $01 $a0 $25
	inc bc                                           ; $631a: $03
	ld e, l                                          ; $631b: $5d
	ret nz                                           ; $631c: $c0

	ld bc, $0aa0                                     ; $631d: $01 $a0 $0a
	inc bc                                           ; $6320: $03
	ld l, d                                          ; $6321: $6a
	ret nz                                           ; $6322: $c0

	ld bc, $25a0                                     ; $6323: $01 $a0 $25
	inc bc                                           ; $6326: $03
	ld l, l                                          ; $6327: $6d
	ret nz                                           ; $6328: $c0

	ld bc, $01a0                                     ; $6329: $01 $a0 $01
	inc bc                                           ; $632c: $03
	add d                                            ; $632d: $82
	ret nz                                           ; $632e: $c0

	inc d                                            ; $632f: $14
	db $e3                                           ; $6330: $e3
	nop                                              ; $6331: $00
	adc d                                            ; $6332: $8a
	pop hl                                           ; $6333: $e1
	ld [bc], a                                       ; $6334: $02
	ld [bc], a                                       ; $6335: $02
	adc b                                            ; $6336: $88
	ret nz                                           ; $6337: $c0

	ld bc, $0aa0                                     ; $6338: $01 $a0 $0a
	inc bc                                           ; $633b: $03
	adc d                                            ; $633c: $8a
	pop bc                                           ; $633d: $c1
	ld e, e                                          ; $633e: $5b
	ret nz                                           ; $633f: $c0

	ld bc, $01a0                                     ; $6340: $01 $a0 $01
	inc bc                                           ; $6343: $03
	sub l                                            ; $6344: $95
	pop hl                                           ; $6345: $e1
	ld [bc], a                                       ; $6346: $02
	inc b                                            ; $6347: $04
	db $db                                           ; $6348: $db
	ret nz                                           ; $6349: $c0

	ld d, l                                          ; $634a: $55
	ldh [$32], a                                     ; $634b: $e0 $32
	ret nz                                           ; $634d: $c0

	ld d, [hl]                                       ; $634e: $56
	db $dd                                           ; $634f: $dd
	call c, $fbd7                                    ; $6350: $dc $d7 $fb
	db $fd                                           ; $6353: $fd
	adc e                                            ; $6354: $8b
	nop                                              ; $6355: $00
	jr z, jr_082_6308                                ; $6356: $28 $b0

	dec bc                                           ; $6358: $0b
	inc b                                            ; $6359: $04
	nop                                              ; $635a: $00
	add b                                            ; $635b: $80
	ld bc, $0089                                     ; $635c: $01 $89 $00
	add b                                            ; $635f: $80
	ld [bc], a                                       ; $6360: $02
	add d                                            ; $6361: $82
	jr nz, jr_082_62e5                               ; $6362: $20 $81

	ld bc, $c091                                     ; $6364: $01 $91 $c0
	ld c, h                                          ; $6367: $4c
	db $dd                                           ; $6368: $dd
	pop hl                                           ; $6369: $e1
	cpl                                              ; $636a: $2f
	ld bc, $c1d5                                     ; $636b: $01 $d5 $c1
	dec sp                                           ; $636e: $3b
	ret nz                                           ; $636f: $c0

	set 0, c                                         ; $6370: $cb $c1
	ld l, e                                          ; $6372: $6b
	pop de                                           ; $6373: $d1
	db $dd                                           ; $6374: $dd
	push hl                                          ; $6375: $e5
	nop                                              ; $6376: $00
	jr nz, @-$26                                     ; $6377: $20 $d8

	inc c                                            ; $6379: $0c
	ld d, c                                          ; $637a: $51
	db $fc                                           ; $637b: $fc
	ret nz                                           ; $637c: $c0

	ld h, l                                          ; $637d: $65
	ret c                                            ; $637e: $d8

	jr z, jr_082_638d                                ; $637f: $28 $0c

	ret nz                                           ; $6381: $c0

	ld bc, $0aa0                                     ; $6382: $01 $a0 $0a
	inc bc                                           ; $6385: $03
	and a                                            ; $6386: $a7
	ret nz                                           ; $6387: $c0

	ld bc, $01a0                                     ; $6388: $01 $a0 $01
	inc bc                                           ; $638b: $03
	xor e                                            ; $638c: $ab

jr_082_638d:
	jr c, jr_082_6392                                ; $638d: $38 $03

	or c                                             ; $638f: $b1
	add hl, bc                                       ; $6390: $09
	dec l                                            ; $6391: $2d

jr_082_6392:
	pop bc                                           ; $6392: $c1
	ld e, c                                          ; $6393: $59
	db $e3                                           ; $6394: $e3
	nop                                              ; $6395: $00
	sub c                                            ; $6396: $91
	ret nz                                           ; $6397: $c0

	add hl, bc                                       ; $6398: $09
	db $e3                                           ; $6399: $e3
	nop                                              ; $639a: $00
	inc [hl]                                         ; $639b: $34
	and b                                            ; $639c: $a0
	add b                                            ; $639d: $80
	and b                                            ; $639e: $a0
	inc de                                           ; $639f: $13
	nop                                              ; $63a0: $00
	ld b, $c0                                        ; $63a1: $06 $c0
	ld bc, $0aa0                                     ; $63a3: $01 $a0 $0a
	inc bc                                           ; $63a6: $03
	or e                                             ; $63a7: $b3
	rst $38                                          ; $63a8: $ff
	inc c                                            ; $63a9: $0c
	ret nz                                           ; $63aa: $c0

	ld bc, $0aa0                                     ; $63ab: $01 $a0 $0a
	inc bc                                           ; $63ae: $03
	cp d                                             ; $63af: $ba
	ret nz                                           ; $63b0: $c0

	ld bc, $01a0                                     ; $63b1: $01 $a0 $01
	inc bc                                           ; $63b4: $03
	cp a                                             ; $63b5: $bf
	ret nz                                           ; $63b6: $c0

	ld d, [hl]                                       ; $63b7: $56
	db $dd                                           ; $63b8: $dd
	call c, $e5d6                                    ; $63b9: $dc $d6 $e5
	cpl                                              ; $63bc: $2f
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	inc bc                                           ; $63bf: $03
	ret z                                            ; $63c0: $c8

	add hl, bc                                       ; $63c1: $09
	inc bc                                           ; $63c2: $03
	ldh [rP1], a                                     ; $63c3: $e0 $00
	ld [$09d1], sp                                   ; $63c5: $08 $d1 $09
	inc bc                                           ; $63c8: $03
	ldh [rP1], a                                     ; $63c9: $e0 $00
	ld [bc], a                                       ; $63cb: $02
	ld b, h                                          ; $63cc: $44
	pop bc                                           ; $63cd: $c1
	ld e, c                                          ; $63ce: $59
	db $e3                                           ; $63cf: $e3
	nop                                              ; $63d0: $00
	adc c                                            ; $63d1: $89
	db $fd                                           ; $63d2: $fd
	add hl, sp                                       ; $63d3: $39
	adc e                                            ; $63d4: $8b
	and b                                            ; $63d5: $a0
	ld [bc], a                                       ; $63d6: $02
	ld [bc], a                                       ; $63d7: $02
	or b                                             ; $63d8: $b0
	ld a, h                                          ; $63d9: $7c
	dec b                                            ; $63da: $05
	ret nz                                           ; $63db: $c0

	ld d, [hl]                                       ; $63dc: $56
	db $dd                                           ; $63dd: $dd
	call c, $02d1                                    ; $63de: $dc $d1 $02
	or b                                             ; $63e1: $b0
	ld a, [hl]                                       ; $63e2: $7e
	dec b                                            ; $63e3: $05
	ret nz                                           ; $63e4: $c0

	ld d, [hl]                                       ; $63e5: $56
	db $dd                                           ; $63e6: $dd
	call c, $02d2                                    ; $63e7: $dc $d2 $02
	or b                                             ; $63ea: $b0
	ld a, a                                          ; $63eb: $7f
	dec b                                            ; $63ec: $05
	ret nz                                           ; $63ed: $c0

	ld d, [hl]                                       ; $63ee: $56
	db $dd                                           ; $63ef: $dd
	call c, $02d3                                    ; $63f0: $dc $d3 $02
	or b                                             ; $63f3: $b0
	ld a, e                                          ; $63f4: $7b
	dec b                                            ; $63f5: $05
	ret nz                                           ; $63f6: $c0

	ld d, [hl]                                       ; $63f7: $56
	db $dd                                           ; $63f8: $dd
	call c, $02d4                                    ; $63f9: $dc $d4 $02
	or b                                             ; $63fc: $b0
	ld a, l                                          ; $63fd: $7d
	dec b                                            ; $63fe: $05
	ret nz                                           ; $63ff: $c0

	ld d, [hl]                                       ; $6400: $56
	db $dd                                           ; $6401: $dd
	call c, $02d5                                    ; $6402: $dc $d5 $02
	or b                                             ; $6405: $b0
	ld a, d                                          ; $6406: $7a
	dec b                                            ; $6407: $05
	ret nz                                           ; $6408: $c0

	ld d, [hl]                                       ; $6409: $56
	db $dd                                           ; $640a: $dd
	call c, $e5d7                                    ; $640b: $dc $d7 $e5
	cpl                                              ; $640e: $2f
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	add hl, bc                                       ; $6411: $09
	dec l                                            ; $6412: $2d
	ret nz                                           ; $6413: $c0

	ld bc, $0aa0                                     ; $6414: $01 $a0 $0a
	inc bc                                           ; $6417: $03
	jp z, $01c0                                      ; $6418: $ca $c0 $01

	and b                                            ; $641b: $a0
	ld bc, $ce03                                     ; $641c: $01 $03 $ce
	add c                                            ; $641f: $81
	ret nz                                           ; $6420: $c0

	ld h, l                                          ; $6421: $65
	ld b, $d4                                        ; $6422: $06 $d4
	push de                                          ; $6424: $d5
	rst SubAFromHL                                          ; $6425: $d7
	ret c                                            ; $6426: $d8

	reti                                             ; $6427: $d9


	jp c, $d008                                      ; $6428: $da $08 $d0

	add e                                            ; $642b: $83
	ld bc, $d0de                                     ; $642c: $01 $de $d0
	db $e4                                           ; $642f: $e4
	nop                                              ; $6430: $00
	db $10                                           ; $6431: $10
	inc b                                            ; $6432: $04
	pop de                                           ; $6433: $d1
	db $d3                                           ; $6434: $d3
	sub $db                                          ; $6435: $d6 $db
	ld [$83d0], sp                                   ; $6437: $08 $d0 $83
	ld bc, $d1de                                     ; $643a: $01 $de $d1
	db $e4                                           ; $643d: $e4
	nop                                              ; $643e: $00
	or b                                             ; $643f: $b0
	add hl, bc                                       ; $6440: $09
	inc e                                            ; $6441: $1c
	pop bc                                           ; $6442: $c1
	ld e, c                                          ; $6443: $59
	db $e3                                           ; $6444: $e3
	nop                                              ; $6445: $00
	cp b                                             ; $6446: $b8
	ret nz                                           ; $6447: $c0

	add hl, bc                                       ; $6448: $09
	db $e3                                           ; $6449: $e3
	nop                                              ; $644a: $00
	dec de                                           ; $644b: $1b
	and b                                            ; $644c: $a0
	add b                                            ; $644d: $80
	and b                                            ; $644e: $a0
	inc d                                            ; $644f: $14
	nop                                              ; $6450: $00
	inc bc                                           ; $6451: $03
	db $e4                                           ; $6452: $e4
	nop                                              ; $6453: $00
	dec bc                                           ; $6454: $0b
	rst $38                                          ; $6455: $ff
	rlca                                             ; $6456: $07
	ld b, b                                          ; $6457: $40
	add b                                            ; $6458: $80
	and b                                            ; $6459: $a0
	inc d                                            ; $645a: $14
	db $e4                                           ; $645b: $e4
	nop                                              ; $645c: $00
	ld c, d                                          ; $645d: $4a
	jr z, @+$08                                      ; $645e: $28 $06

	ret nz                                           ; $6460: $c0

	ld bc, $0aa0                                     ; $6461: $01 $a0 $0a
	inc bc                                           ; $6464: $03
	call nc, $033f                                   ; $6465: $d4 $3f $03
	ldh [$09], a                                     ; $6468: $e0 $09
	ld de, $02e1                                     ; $646a: $11 $e1 $02
	inc bc                                           ; $646d: $03
	inc de                                           ; $646e: $13
	ret nz                                           ; $646f: $c0

	ld bc, $0aa0                                     ; $6470: $01 $a0 $0a
	inc bc                                           ; $6473: $03
	ldh [c], a                                       ; $6474: $e2
	pop hl                                           ; $6475: $e1
	ld [bc], a                                       ; $6476: $02
	inc b                                            ; $6477: $04
	ld [hl], c                                       ; $6478: $71
	db $e4                                           ; $6479: $e4
	nop                                              ; $647a: $00
	call nc, $ea03                                   ; $647b: $d4 $03 $ea
	add hl, bc                                       ; $647e: $09
	ld de, $02e1                                     ; $647f: $11 $e1 $02
	inc bc                                           ; $6482: $03
	dec de                                           ; $6483: $1b
	ret nz                                           ; $6484: $c0

	ld bc, $0aa0                                     ; $6485: $01 $a0 $0a
	inc bc                                           ; $6488: $03
	pop af                                           ; $6489: $f1
	pop hl                                           ; $648a: $e1
	ld [bc], a                                       ; $648b: $02
	inc b                                            ; $648c: $04
	adc h                                            ; $648d: $8c
	db $e4                                           ; $648e: $e4
	nop                                              ; $648f: $00
	cp a                                             ; $6490: $bf
	inc bc                                           ; $6491: $03
	di                                               ; $6492: $f3
	add hl, bc                                       ; $6493: $09
	ld de, $02e1                                     ; $6494: $11 $e1 $02
	inc bc                                           ; $6497: $03
	dec de                                           ; $6498: $1b
	ret nz                                           ; $6499: $c0

	ld bc, $0aa0                                     ; $649a: $01 $a0 $0a
	inc bc                                           ; $649d: $03
	ld a, [$02e1]                                    ; $649e: $fa $e1 $02
	inc b                                            ; $64a1: $04
	add e                                            ; $64a2: $83
	db $e4                                           ; $64a3: $e4
	nop                                              ; $64a4: $00
	xor d                                            ; $64a5: $aa
	jr z, @+$08                                      ; $64a6: $28 $06

	ret nz                                           ; $64a8: $c0

	ld bc, $0aa0                                     ; $64a9: $01 $a0 $0a
	inc b                                            ; $64ac: $04
	ld b, $3f                                        ; $64ad: $06 $3f
	inc b                                            ; $64af: $04
	dec d                                            ; $64b0: $15
	add hl, bc                                       ; $64b1: $09
	ld de, $02e1                                     ; $64b2: $11 $e1 $02
	inc bc                                           ; $64b5: $03
	inc de                                           ; $64b6: $13
	ret nz                                           ; $64b7: $c0

	ld bc, $0aa0                                     ; $64b8: $01 $a0 $0a
	inc b                                            ; $64bb: $04
	rla                                              ; $64bc: $17
	pop hl                                           ; $64bd: $e1
	ld [bc], a                                       ; $64be: $02
	inc b                                            ; $64bf: $04
	ld [hl], c                                       ; $64c0: $71
	db $e4                                           ; $64c1: $e4
	nop                                              ; $64c2: $00
	adc h                                            ; $64c3: $8c
	inc b                                            ; $64c4: $04
	ld a, [de]                                       ; $64c5: $1a
	add hl, bc                                       ; $64c6: $09
	ld de, $02e1                                     ; $64c7: $11 $e1 $02
	inc bc                                           ; $64ca: $03
	dec de                                           ; $64cb: $1b
	ret nz                                           ; $64cc: $c0

	ld bc, $0aa0                                     ; $64cd: $01 $a0 $0a
	inc b                                            ; $64d0: $04
	inc e                                            ; $64d1: $1c
	pop hl                                           ; $64d2: $e1
	ld [bc], a                                       ; $64d3: $02
	inc b                                            ; $64d4: $04
	ld a, d                                          ; $64d5: $7a
	db $e4                                           ; $64d6: $e4
	nop                                              ; $64d7: $00
	ld [hl], a                                       ; $64d8: $77
	inc b                                            ; $64d9: $04
	inc h                                            ; $64da: $24
	add hl, bc                                       ; $64db: $09
	ld de, $02e1                                     ; $64dc: $11 $e1 $02
	inc bc                                           ; $64df: $03

Call_082_64e0:
	rla                                              ; $64e0: $17
	ret nz                                           ; $64e1: $c0

	ld bc, $0aa0                                     ; $64e2: $01 $a0 $0a
	inc b                                            ; $64e5: $04
	jr z, @-$1d                                      ; $64e6: $28 $e1

	ld [bc], a                                       ; $64e8: $02
	inc b                                            ; $64e9: $04
	ld a, d                                          ; $64ea: $7a
	db $e4                                           ; $64eb: $e4
	nop                                              ; $64ec: $00
	ld h, d                                          ; $64ed: $62
	jr z, @+$14                                      ; $64ee: $28 $12

	pop bc                                           ; $64f0: $c1
	inc a                                            ; $64f1: $3c
	pop bc                                           ; $64f2: $c1
	ld e, c                                          ; $64f3: $59
	db $e3                                           ; $64f4: $e3
	nop                                              ; $64f5: $00
	cp c                                             ; $64f6: $b9
	ret nz                                           ; $64f7: $c0

	add hl, bc                                       ; $64f8: $09
	db $e3                                           ; $64f9: $e3
	nop                                              ; $64fa: $00
	scf                                              ; $64fb: $37
	ret nz                                           ; $64fc: $c0

	ld bc, $0aa0                                     ; $64fd: $01 $a0 $0a
	inc b                                            ; $6500: $04
	ld sp, $044b                                     ; $6501: $31 $4b $04
	scf                                              ; $6504: $37
	add hl, bc                                       ; $6505: $09
	dec e                                            ; $6506: $1d
	pop hl                                           ; $6507: $e1
	ld [bc], a                                       ; $6508: $02
	inc bc                                           ; $6509: $03
	inc de                                           ; $650a: $13
	ret nz                                           ; $650b: $c0

	ld bc, $0aa0                                     ; $650c: $01 $a0 $0a
	inc b                                            ; $650f: $04
	inc a                                            ; $6510: $3c
	ret nz                                           ; $6511: $c0

	ld bc, $0aa0                                     ; $6512: $01 $a0 $0a
	inc b                                            ; $6515: $04
	ld c, b                                          ; $6516: $48
	ret nz                                           ; $6517: $c0

	ld bc, $0aa0                                     ; $6518: $01 $a0 $0a
	inc b                                            ; $651b: $04
	ld c, d                                          ; $651c: $4a
	pop hl                                           ; $651d: $e1
	ld [bc], a                                       ; $651e: $02
	inc b                                            ; $651f: $04
	ld [hl], c                                       ; $6520: $71
	db $e4                                           ; $6521: $e4
	nop                                              ; $6522: $00
	inc l                                            ; $6523: $2c
	inc b                                            ; $6524: $04
	ld d, c                                          ; $6525: $51
	add hl, bc                                       ; $6526: $09
	ld de, $02e1                                     ; $6527: $11 $e1 $02
	inc bc                                           ; $652a: $03
	rla                                              ; $652b: $17
	ret nz                                           ; $652c: $c0

	ld bc, $0aa0                                     ; $652d: $01 $a0 $0a
	inc b                                            ; $6530: $04
	ld d, [hl]                                       ; $6531: $56
	pop hl                                           ; $6532: $e1
	ld [bc], a                                       ; $6533: $02
	inc b                                            ; $6534: $04
	ld a, d                                          ; $6535: $7a
	db $e4                                           ; $6536: $e4
	nop                                              ; $6537: $00
	rla                                              ; $6538: $17
	inc b                                            ; $6539: $04
	ld e, l                                          ; $653a: $5d
	add hl, bc                                       ; $653b: $09
	ld de, $02e1                                     ; $653c: $11 $e1 $02
	inc bc                                           ; $653f: $03
	rra                                              ; $6540: $1f
	ret nz                                           ; $6541: $c0

	ld bc, $0aa0                                     ; $6542: $01 $a0 $0a
	inc b                                            ; $6545: $04
	ld h, d                                          ; $6546: $62
	pop hl                                           ; $6547: $e1
	ld [bc], a                                       ; $6548: $02
	inc b                                            ; $6549: $04
	adc h                                            ; $654a: $8c
	db $e4                                           ; $654b: $e4
	nop                                              ; $654c: $00
	ld [bc], a                                       ; $654d: $02
	add hl, bc                                       ; $654e: $09
	ld a, [de]                                       ; $654f: $1a
	pop hl                                           ; $6550: $e1
	ld [bc], a                                       ; $6551: $02
	ld [$605c], sp                                   ; $6552: $08 $5c $60
	db $fc                                           ; $6555: $fc
	add e                                            ; $6556: $83
	ld bc, $d0de                                     ; $6557: $01 $de $d0
	dec b                                            ; $655a: $05
	ret nz                                           ; $655b: $c0

	ld d, [hl]                                       ; $655c: $56
	db $dd                                           ; $655d: $dd
	db $dd                                           ; $655e: $dd
	ret nc                                           ; $655f: $d0

	dec b                                            ; $6560: $05
	ret nz                                           ; $6561: $c0

	ld d, [hl]                                       ; $6562: $56
	db $dd                                           ; $6563: $dd
	db $dd                                           ; $6564: $dd
	pop de                                           ; $6565: $d1
	push hl                                          ; $6566: $e5
	cpl                                              ; $6567: $2f
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	add hl, bc                                       ; $656a: $09
	rrca                                             ; $656b: $0f
	ret nz                                           ; $656c: $c0

	ld bc, $0aa0                                     ; $656d: $01 $a0 $0a
	inc b                                            ; $6570: $04
	ld h, a                                          ; $6571: $67
	ret nz                                           ; $6572: $c0

	ld bc, $01a0                                     ; $6573: $01 $a0 $01
	nop                                              ; $6576: $00
	ld b, $e4                                        ; $6577: $06 $e4
	nop                                              ; $6579: $00
	ld [bc], a                                       ; $657a: $02
	add hl, bc                                       ; $657b: $09
	adc c                                            ; $657c: $89
	pop bc                                           ; $657d: $c1
	ld e, c                                          ; $657e: $59
	db $e3                                           ; $657f: $e3
	nop                                              ; $6580: $00
	sub h                                            ; $6581: $94
	ret nz                                           ; $6582: $c0

	ld bc, $0aa0                                     ; $6583: $01 $a0 $0a
	inc b                                            ; $6586: $04
	ld l, [hl]                                       ; $6587: $6e
	db $fd                                           ; $6588: $fd
	ld a, h                                          ; $6589: $7c
	adc e                                            ; $658a: $8b
	ld bc, $02ea                                     ; $658b: $01 $ea $02
	or b                                             ; $658e: $b0
	inc l                                            ; $658f: $2c
	rlca                                             ; $6590: $07
	pop hl                                           ; $6591: $e1
	ld [bc], a                                       ; $6592: $02
	dec b                                            ; $6593: $05
	ld c, a                                          ; $6594: $4f
	db $e4                                           ; $6595: $e4
	nop                                              ; $6596: $00
	db $f4                                           ; $6597: $f4
	ld [bc], a                                       ; $6598: $02
	or b                                             ; $6599: $b0
	dec l                                            ; $659a: $2d
	rlca                                             ; $659b: $07
	pop hl                                           ; $659c: $e1
	ld [bc], a                                       ; $659d: $02
	dec b                                            ; $659e: $05
	ld h, [hl]                                       ; $659f: $66
	db $e4                                           ; $65a0: $e4
	nop                                              ; $65a1: $00
	jp hl                                            ; $65a2: $e9


	ld [bc], a                                       ; $65a3: $02
	or b                                             ; $65a4: $b0
	ld l, $07                                        ; $65a5: $2e $07
	pop hl                                           ; $65a7: $e1
	ld [bc], a                                       ; $65a8: $02
	dec b                                            ; $65a9: $05
	ld a, l                                          ; $65aa: $7d
	db $e4                                           ; $65ab: $e4
	nop                                              ; $65ac: $00
	ld e, d                                          ; $65ad: $5a
	ld [bc], a                                       ; $65ae: $02
	or b                                             ; $65af: $b0
	cpl                                              ; $65b0: $2f
	rlca                                             ; $65b1: $07
	pop hl                                           ; $65b2: $e1
	ld [bc], a                                       ; $65b3: $02
	dec b                                            ; $65b4: $05
	sub h                                            ; $65b5: $94
	db $e4                                           ; $65b6: $e4
	nop                                              ; $65b7: $00
	db $d3                                           ; $65b8: $d3
	ld [bc], a                                       ; $65b9: $02
	or b                                             ; $65ba: $b0
	jr nc, jr_082_65c4                               ; $65bb: $30 $07

	pop hl                                           ; $65bd: $e1
	ld [bc], a                                       ; $65be: $02
	dec b                                            ; $65bf: $05
	xor e                                            ; $65c0: $ab
	db $e4                                           ; $65c1: $e4
	nop                                              ; $65c2: $00
	add [hl]                                         ; $65c3: $86

jr_082_65c4:
	ld [bc], a                                       ; $65c4: $02
	or b                                             ; $65c5: $b0
	ld sp, $e107                                     ; $65c6: $31 $07 $e1
	ld [bc], a                                       ; $65c9: $02
	dec b                                            ; $65ca: $05
	jp nz, $00e4                                     ; $65cb: $c2 $e4 $00

	add hl, sp                                       ; $65ce: $39
	ld [bc], a                                       ; $65cf: $02
	or b                                             ; $65d0: $b0
	ld [hl-], a                                      ; $65d1: $32
	rlca                                             ; $65d2: $07
	pop hl                                           ; $65d3: $e1
	ld [bc], a                                       ; $65d4: $02
	dec b                                            ; $65d5: $05
	reti                                             ; $65d6: $d9


	db $e4                                           ; $65d7: $e4
	nop                                              ; $65d8: $00
	or d                                             ; $65d9: $b2
	ld [bc], a                                       ; $65da: $02
	or b                                             ; $65db: $b0
	inc sp                                           ; $65dc: $33
	rlca                                             ; $65dd: $07
	pop hl                                           ; $65de: $e1
	ld [bc], a                                       ; $65df: $02
	dec b                                            ; $65e0: $05
	ldh a, [$e4]                                     ; $65e1: $f0 $e4
	nop                                              ; $65e3: $00
	and a                                            ; $65e4: $a7
	ld [bc], a                                       ; $65e5: $02
	or b                                             ; $65e6: $b0
	inc [hl]                                         ; $65e7: $34
	rlca                                             ; $65e8: $07
	pop hl                                           ; $65e9: $e1
	ld [bc], a                                       ; $65ea: $02
	ld b, $07                                        ; $65eb: $06 $07
	db $e4                                           ; $65ed: $e4
	nop                                              ; $65ee: $00
	sbc h                                            ; $65ef: $9c
	ld [bc], a                                       ; $65f0: $02
	or b                                             ; $65f1: $b0
	dec [hl]                                         ; $65f2: $35
	rlca                                             ; $65f3: $07
	pop hl                                           ; $65f4: $e1
	ld [bc], a                                       ; $65f5: $02
	ld b, $1e                                        ; $65f6: $06 $1e
	db $e4                                           ; $65f8: $e4
	nop                                              ; $65f9: $00
	ld c, a                                          ; $65fa: $4f
	ld [bc], a                                       ; $65fb: $02
	or b                                             ; $65fc: $b0
	ld [hl], $07                                     ; $65fd: $36 $07
	pop hl                                           ; $65ff: $e1
	ld [bc], a                                       ; $6600: $02
	ld b, $35                                        ; $6601: $06 $35
	db $e4                                           ; $6603: $e4
	nop                                              ; $6604: $00
	ld [bc], a                                       ; $6605: $02
	jr z, jr_082_6608                                ; $6606: $28 $00

jr_082_6608:
	ccf                                              ; $6608: $3f
	inc b                                            ; $6609: $04
	ld [hl], e                                       ; $660a: $73
	add hl, bc                                       ; $660b: $09
	ld de, $02e1                                     ; $660c: $11 $e1 $02
	inc bc                                           ; $660f: $03
	inc de                                           ; $6610: $13
	ret nz                                           ; $6611: $c0

	ld bc, $0aa0                                     ; $6612: $01 $a0 $0a
	inc b                                            ; $6615: $04
	ld [hl], l                                       ; $6616: $75
	pop hl                                           ; $6617: $e1
	ld [bc], a                                       ; $6618: $02
	inc b                                            ; $6619: $04
	ld l, b                                          ; $661a: $68
	db $e4                                           ; $661b: $e4
	nop                                              ; $661c: $00
	or b                                             ; $661d: $b0
	inc b                                            ; $661e: $04
	ld a, c                                          ; $661f: $79
	add hl, bc                                       ; $6620: $09
	ld de, $02e1                                     ; $6621: $11 $e1 $02
	inc bc                                           ; $6624: $03
	rla                                              ; $6625: $17
	ret nz                                           ; $6626: $c0

	ld bc, $0aa0                                     ; $6627: $01 $a0 $0a
	inc b                                            ; $662a: $04
	ld a, e                                          ; $662b: $7b
	pop hl                                           ; $662c: $e1
	ld [bc], a                                       ; $662d: $02
	inc b                                            ; $662e: $04
	ld a, d                                          ; $662f: $7a
	db $e4                                           ; $6630: $e4
	nop                                              ; $6631: $00
	sbc e                                            ; $6632: $9b
	inc b                                            ; $6633: $04
	add c                                            ; $6634: $81
	add hl, bc                                       ; $6635: $09
	ld de, $02e1                                     ; $6636: $11 $e1 $02
	inc bc                                           ; $6639: $03
	inc de                                           ; $663a: $13
	ret nz                                           ; $663b: $c0

	ld bc, $0aa0                                     ; $663c: $01 $a0 $0a
	inc b                                            ; $663f: $04
	add e                                            ; $6640: $83
	pop hl                                           ; $6641: $e1
	ld [bc], a                                       ; $6642: $02
	inc b                                            ; $6643: $04
	ld [hl], c                                       ; $6644: $71
	db $e4                                           ; $6645: $e4
	nop                                              ; $6646: $00
	add [hl]                                         ; $6647: $86
	jr z, jr_082_664a                                ; $6648: $28 $00

jr_082_664a:
	ccf                                              ; $664a: $3f
	inc b                                            ; $664b: $04
	ld [hl], e                                       ; $664c: $73
	add hl, bc                                       ; $664d: $09
	ld de, $02e1                                     ; $664e: $11 $e1 $02
	inc bc                                           ; $6651: $03
	dec de                                           ; $6652: $1b
	ret nz                                           ; $6653: $c0

	ld bc, $0aa0                                     ; $6654: $01 $a0 $0a
	inc b                                            ; $6657: $04
	adc h                                            ; $6658: $8c
	pop hl                                           ; $6659: $e1
	ld [bc], a                                       ; $665a: $02
	inc b                                            ; $665b: $04
	add e                                            ; $665c: $83
	db $e4                                           ; $665d: $e4
	nop                                              ; $665e: $00
	ld l, [hl]                                       ; $665f: $6e
	inc b                                            ; $6660: $04
	ld a, c                                          ; $6661: $79
	add hl, bc                                       ; $6662: $09
	ld de, $02e1                                     ; $6663: $11 $e1 $02
	inc bc                                           ; $6666: $03
	rla                                              ; $6667: $17
	ret nz                                           ; $6668: $c0

	ld bc, $0aa0                                     ; $6669: $01 $a0 $0a
	inc b                                            ; $666c: $04
	sbc b                                            ; $666d: $98
	pop hl                                           ; $666e: $e1
	ld [bc], a                                       ; $666f: $02
	inc b                                            ; $6670: $04
	ld a, d                                          ; $6671: $7a
	db $e4                                           ; $6672: $e4
	nop                                              ; $6673: $00
	ld e, c                                          ; $6674: $59
	inc b                                            ; $6675: $04
	add c                                            ; $6676: $81
	add hl, bc                                       ; $6677: $09
	ld de, $02e1                                     ; $6678: $11 $e1 $02
	inc bc                                           ; $667b: $03
	dec de                                           ; $667c: $1b
	ret nz                                           ; $667d: $c0

	ld bc, $0aa0                                     ; $667e: $01 $a0 $0a
	inc b                                            ; $6681: $04
	and b                                            ; $6682: $a0
	pop hl                                           ; $6683: $e1
	ld [bc], a                                       ; $6684: $02
	inc b                                            ; $6685: $04
	add e                                            ; $6686: $83
	db $e4                                           ; $6687: $e4
	nop                                              ; $6688: $00
	ld b, h                                          ; $6689: $44
	jr z, jr_082_668c                                ; $668a: $28 $00

jr_082_668c:
	ccf                                              ; $668c: $3f
	inc b                                            ; $668d: $04
	ld [hl], e                                       ; $668e: $73
	add hl, bc                                       ; $668f: $09
	ld de, $02e1                                     ; $6690: $11 $e1 $02
	inc bc                                           ; $6693: $03
	rla                                              ; $6694: $17
	ret nz                                           ; $6695: $c0

	ld bc, $0aa0                                     ; $6696: $01 $a0 $0a
	inc b                                            ; $6699: $04
	xor d                                            ; $669a: $aa
	pop hl                                           ; $669b: $e1
	ld [bc], a                                       ; $669c: $02
	inc b                                            ; $669d: $04
	ld a, d                                          ; $669e: $7a
	db $e4                                           ; $669f: $e4
	nop                                              ; $66a0: $00
	inc l                                            ; $66a1: $2c
	inc b                                            ; $66a2: $04
	ld a, c                                          ; $66a3: $79
	add hl, bc                                       ; $66a4: $09
	ld de, $02e1                                     ; $66a5: $11 $e1 $02
	inc bc                                           ; $66a8: $03
	rla                                              ; $66a9: $17
	ret nz                                           ; $66aa: $c0

	ld bc, $0aa0                                     ; $66ab: $01 $a0 $0a
	inc b                                            ; $66ae: $04
	or l                                             ; $66af: $b5
	pop hl                                           ; $66b0: $e1
	ld [bc], a                                       ; $66b1: $02
	inc b                                            ; $66b2: $04
	ld a, d                                          ; $66b3: $7a
	db $e4                                           ; $66b4: $e4
	nop                                              ; $66b5: $00
	rla                                              ; $66b6: $17
	inc b                                            ; $66b7: $04
	add c                                            ; $66b8: $81
	add hl, bc                                       ; $66b9: $09
	ld de, $02e1                                     ; $66ba: $11 $e1 $02
	inc bc                                           ; $66bd: $03
	inc de                                           ; $66be: $13
	ret nz                                           ; $66bf: $c0

	ld bc, $0aa0                                     ; $66c0: $01 $a0 $0a
	inc b                                            ; $66c3: $04
	cp a                                             ; $66c4: $bf
	pop hl                                           ; $66c5: $e1
	ld [bc], a                                       ; $66c6: $02
	inc b                                            ; $66c7: $04
	ld [hl], c                                       ; $66c8: $71
	db $e4                                           ; $66c9: $e4
	nop                                              ; $66ca: $00
	ld [bc], a                                       ; $66cb: $02
	add hl, bc                                       ; $66cc: $09
	ld [$02e1], sp                                   ; $66cd: $08 $e1 $02
	ld [$e5b7], sp                                   ; $66d0: $08 $b7 $e5
	cpl                                              ; $66d3: $2f
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	add hl, bc                                       ; $66d6: $09
	rrca                                             ; $66d7: $0f
	ret nz                                           ; $66d8: $c0

	ld bc, $0aa0                                     ; $66d9: $01 $a0 $0a
	inc b                                            ; $66dc: $04
	call $01c0                                       ; $66dd: $cd $c0 $01
	and b                                            ; $66e0: $a0
	ld bc, $d704                                     ; $66e1: $01 $04 $d7
	db $e4                                           ; $66e4: $e4
	nop                                              ; $66e5: $00
	ld [bc], a                                       ; $66e6: $02
	add hl, bc                                       ; $66e7: $09
	ret nz                                           ; $66e8: $c0

	jp z, $59c1                                      ; $66e9: $ca $c1 $59

	db $e3                                           ; $66ec: $e3
	nop                                              ; $66ed: $00
	sub [hl]                                         ; $66ee: $96
	ret nz                                           ; $66ef: $c0

	ld bc, $0aa0                                     ; $66f0: $01 $a0 $0a
	inc b                                            ; $66f3: $04
	rst SubAFromDE                                          ; $66f4: $df
	ret nz                                           ; $66f5: $c0

	ld bc, $01a0                                     ; $66f6: $01 $a0 $01
	inc b                                            ; $66f9: $04
	db $e4                                           ; $66fa: $e4
	db $fd                                           ; $66fb: $fd
	or a                                             ; $66fc: $b7
	adc e                                            ; $66fd: $8b
	ld bc, $02f6                                     ; $66fe: $01 $f6 $02
	or b                                             ; $6701: $b0
	scf                                              ; $6702: $37
	dec bc                                           ; $6703: $0b
	pop hl                                           ; $6704: $e1
	ld [bc], a                                       ; $6705: $02
	ld b, $6e                                        ; $6706: $06 $6e
	pop hl                                           ; $6708: $e1
	ld [bc], a                                       ; $6709: $02
	ld [bc], a                                       ; $670a: $02
	sub b                                            ; $670b: $90
	db $e4                                           ; $670c: $e4
	ld bc, $0229                                     ; $670d: $01 $29 $02
	or b                                             ; $6710: $b0
	jr c, jr_082_671e                                ; $6711: $38 $0b

	pop hl                                           ; $6713: $e1
	ld [bc], a                                       ; $6714: $02
	ld b, $bf                                        ; $6715: $06 $bf
	pop hl                                           ; $6717: $e1
	ld [bc], a                                       ; $6718: $02
	ld [bc], a                                       ; $6719: $02
	sub b                                            ; $671a: $90
	db $e4                                           ; $671b: $e4
	nop                                              ; $671c: $00
	sbc b                                            ; $671d: $98

jr_082_671e:
	ld [bc], a                                       ; $671e: $02
	or b                                             ; $671f: $b0
	add hl, sp                                       ; $6720: $39
	dec bc                                           ; $6721: $0b
	pop hl                                           ; $6722: $e1
	ld [bc], a                                       ; $6723: $02
	ld b, $d6                                        ; $6724: $06 $d6
	pop hl                                           ; $6726: $e1
	ld [bc], a                                       ; $6727: $02
	ld [bc], a                                       ; $6728: $02
	sub b                                            ; $6729: $90
	db $e4                                           ; $672a: $e4
	nop                                              ; $672b: $00
	jp z, $b002                                      ; $672c: $ca $02 $b0

	ld a, [hl-]                                      ; $672f: $3a
	dec bc                                           ; $6730: $0b
	pop hl                                           ; $6731: $e1
	ld [bc], a                                       ; $6732: $02
	ld b, $ed                                        ; $6733: $06 $ed
	pop hl                                           ; $6735: $e1
	ld [bc], a                                       ; $6736: $02
	ld [bc], a                                       ; $6737: $02
	sub b                                            ; $6738: $90
	db $e4                                           ; $6739: $e4
	nop                                              ; $673a: $00
	cp e                                             ; $673b: $bb
	ld [bc], a                                       ; $673c: $02
	or b                                             ; $673d: $b0
	dec sp                                           ; $673e: $3b
	dec bc                                           ; $673f: $0b
	pop hl                                           ; $6740: $e1
	ld [bc], a                                       ; $6741: $02
	rlca                                             ; $6742: $07
	inc b                                            ; $6743: $04
	pop hl                                           ; $6744: $e1
	ld [bc], a                                       ; $6745: $02
	ld [bc], a                                       ; $6746: $02
	sub b                                            ; $6747: $90
	db $e4                                           ; $6748: $e4
	nop                                              ; $6749: $00
	db $ed                                           ; $674a: $ed
	ld [bc], a                                       ; $674b: $02
	or b                                             ; $674c: $b0
	inc a                                            ; $674d: $3c
	dec bc                                           ; $674e: $0b
	pop hl                                           ; $674f: $e1
	ld [bc], a                                       ; $6750: $02
	rlca                                             ; $6751: $07
	dec de                                           ; $6752: $1b
	pop hl                                           ; $6753: $e1
	ld [bc], a                                       ; $6754: $02
	ld [bc], a                                       ; $6755: $02
	sub b                                            ; $6756: $90
	db $e4                                           ; $6757: $e4
	nop                                              ; $6758: $00
	sbc l                                            ; $6759: $9d
	ld [bc], a                                       ; $675a: $02
	or b                                             ; $675b: $b0
	dec a                                            ; $675c: $3d
	dec bc                                           ; $675d: $0b
	pop hl                                           ; $675e: $e1
	ld [bc], a                                       ; $675f: $02
	ld b, $89                                        ; $6760: $06 $89
	pop hl                                           ; $6762: $e1
	ld [bc], a                                       ; $6763: $02
	ld [bc], a                                       ; $6764: $02
	sub b                                            ; $6765: $90
	db $e4                                           ; $6766: $e4
	nop                                              ; $6767: $00
	rst GetHLinHL                                          ; $6768: $cf
	ld [bc], a                                       ; $6769: $02
	or b                                             ; $676a: $b0
	ld a, $0b                                        ; $676b: $3e $0b
	pop hl                                           ; $676d: $e1
	ld [bc], a                                       ; $676e: $02
	rlca                                             ; $676f: $07
	ld [hl-], a                                      ; $6770: $32
	pop hl                                           ; $6771: $e1
	ld [bc], a                                       ; $6772: $02
	ld [bc], a                                       ; $6773: $02
	sub b                                            ; $6774: $90
	db $e4                                           ; $6775: $e4
	nop                                              ; $6776: $00
	ld a, a                                          ; $6777: $7f
	ld [bc], a                                       ; $6778: $02
	or b                                             ; $6779: $b0
	ccf                                              ; $677a: $3f
	dec bc                                           ; $677b: $0b
	pop hl                                           ; $677c: $e1
	ld [bc], a                                       ; $677d: $02
	rlca                                             ; $677e: $07
	ld c, c                                          ; $677f: $49
	pop hl                                           ; $6780: $e1
	ld [bc], a                                       ; $6781: $02
	ld [bc], a                                       ; $6782: $02
	sub b                                            ; $6783: $90
	db $e4                                           ; $6784: $e4
	nop                                              ; $6785: $00
	cpl                                              ; $6786: $2f
	ld [bc], a                                       ; $6787: $02
	or b                                             ; $6788: $b0
	ld b, b                                          ; $6789: $40
	dec bc                                           ; $678a: $0b
	pop hl                                           ; $678b: $e1
	ld [bc], a                                       ; $678c: $02
	ld b, $a4                                        ; $678d: $06 $a4
	pop hl                                           ; $678f: $e1
	ld [bc], a                                       ; $6790: $02
	ld [bc], a                                       ; $6791: $02
	sub b                                            ; $6792: $90
	db $e4                                           ; $6793: $e4
	nop                                              ; $6794: $00
	and d                                            ; $6795: $a2
	ld [bc], a                                       ; $6796: $02
	or b                                             ; $6797: $b0
	ld b, c                                          ; $6798: $41
	dec bc                                           ; $6799: $0b
	pop hl                                           ; $679a: $e1
	ld [bc], a                                       ; $679b: $02
	rlca                                             ; $679c: $07
	ld h, b                                          ; $679d: $60
	pop hl                                           ; $679e: $e1
	ld [bc], a                                       ; $679f: $02
	ld [bc], a                                       ; $67a0: $02
	sub b                                            ; $67a1: $90
	db $e4                                           ; $67a2: $e4
	nop                                              ; $67a3: $00
	ld d, d                                          ; $67a4: $52
	ld [bc], a                                       ; $67a5: $02
	or b                                             ; $67a6: $b0
	ld b, d                                          ; $67a7: $42
	dec bc                                           ; $67a8: $0b
	pop hl                                           ; $67a9: $e1
	ld [bc], a                                       ; $67aa: $02
	rlca                                             ; $67ab: $07
	ld [hl], a                                       ; $67ac: $77
	pop hl                                           ; $67ad: $e1
	ld [bc], a                                       ; $67ae: $02
	ld [bc], a                                       ; $67af: $02
	sub b                                            ; $67b0: $90
	db $e4                                           ; $67b1: $e4
	nop                                              ; $67b2: $00
	ld b, e                                          ; $67b3: $43
	ld [$043f], sp                                   ; $67b4: $08 $3f $04
	db $eb                                           ; $67b7: $eb
	add hl, bc                                       ; $67b8: $09
	ld de, $02e1                                     ; $67b9: $11 $e1 $02
	inc bc                                           ; $67bc: $03
	inc de                                           ; $67bd: $13
	ret nz                                           ; $67be: $c0

	ld bc, $0aa0                                     ; $67bf: $01 $a0 $0a
	inc b                                            ; $67c2: $04
	db $ed                                           ; $67c3: $ed
	pop hl                                           ; $67c4: $e1
	ld [bc], a                                       ; $67c5: $02
	inc b                                            ; $67c6: $04
	ld l, b                                          ; $67c7: $68
	db $e4                                           ; $67c8: $e4
	nop                                              ; $67c9: $00
	xor [hl]                                         ; $67ca: $ae
	inc b                                            ; $67cb: $04
	ldh a, [c]                                       ; $67cc: $f2
	add hl, bc                                       ; $67cd: $09
	ld de, $02e1                                     ; $67ce: $11 $e1 $02
	inc bc                                           ; $67d1: $03
	rla                                              ; $67d2: $17
	ret nz                                           ; $67d3: $c0

	ld bc, $0aa0                                     ; $67d4: $01 $a0 $0a
	inc b                                            ; $67d7: $04
	db $f4                                           ; $67d8: $f4
	pop hl                                           ; $67d9: $e1
	ld [bc], a                                       ; $67da: $02
	inc b                                            ; $67db: $04
	ld a, d                                          ; $67dc: $7a
	db $e4                                           ; $67dd: $e4
	nop                                              ; $67de: $00
	sbc c                                            ; $67df: $99
	inc b                                            ; $67e0: $04
	ld a, [$1109]                                    ; $67e1: $fa $09 $11
	pop hl                                           ; $67e4: $e1
	ld [bc], a                                       ; $67e5: $02
	inc bc                                           ; $67e6: $03
	inc de                                           ; $67e7: $13
	ret nz                                           ; $67e8: $c0

	ld bc, $0aa0                                     ; $67e9: $01 $a0 $0a
	inc b                                            ; $67ec: $04
	db $fc                                           ; $67ed: $fc
	pop hl                                           ; $67ee: $e1
	ld [bc], a                                       ; $67ef: $02
	inc b                                            ; $67f0: $04
	ld [hl], c                                       ; $67f1: $71
	db $e4                                           ; $67f2: $e4
	nop                                              ; $67f3: $00
	add h                                            ; $67f4: $84
	ld [$043f], sp                                   ; $67f5: $08 $3f $04
	db $eb                                           ; $67f8: $eb
	add hl, bc                                       ; $67f9: $09
	ld de, $02e1                                     ; $67fa: $11 $e1 $02
	inc bc                                           ; $67fd: $03
	dec de                                           ; $67fe: $1b
	ret nz                                           ; $67ff: $c0

	ld bc, $0aa0                                     ; $6800: $01 $a0 $0a
	dec b                                            ; $6803: $05
	ld [bc], a                                       ; $6804: $02
	pop hl                                           ; $6805: $e1
	ld [bc], a                                       ; $6806: $02
	inc b                                            ; $6807: $04
	add e                                            ; $6808: $83
	db $e4                                           ; $6809: $e4
	nop                                              ; $680a: $00
	ld l, l                                          ; $680b: $6d
	inc b                                            ; $680c: $04
	ldh a, [c]                                       ; $680d: $f2
	add hl, bc                                       ; $680e: $09
	ld de, $02e1                                     ; $680f: $11 $e1 $02
	inc bc                                           ; $6812: $03
	rla                                              ; $6813: $17
	ret nz                                           ; $6814: $c0

	ld bc, $0aa0                                     ; $6815: $01 $a0 $0a
	dec b                                            ; $6818: $05
	dec c                                            ; $6819: $0d
	pop hl                                           ; $681a: $e1
	ld [bc], a                                       ; $681b: $02
	inc b                                            ; $681c: $04
	ld a, d                                          ; $681d: $7a
	db $e4                                           ; $681e: $e4
	nop                                              ; $681f: $00
	ld e, b                                          ; $6820: $58
	inc b                                            ; $6821: $04
	ld a, [$1109]                                    ; $6822: $fa $09 $11
	pop hl                                           ; $6825: $e1
	ld [bc], a                                       ; $6826: $02
	inc bc                                           ; $6827: $03
	dec de                                           ; $6828: $1b
	ret nz                                           ; $6829: $c0

	ld bc, $0aa0                                     ; $682a: $01 $a0 $0a
	dec b                                            ; $682d: $05
	inc d                                            ; $682e: $14
	pop hl                                           ; $682f: $e1
	ld [bc], a                                       ; $6830: $02
	inc b                                            ; $6831: $04
	add e                                            ; $6832: $83
	db $e4                                           ; $6833: $e4
	nop                                              ; $6834: $00
	ld b, e                                          ; $6835: $43
	ld [$043f], sp                                   ; $6836: $08 $3f $04
	db $eb                                           ; $6839: $eb
	add hl, bc                                       ; $683a: $09
	ld de, $02e1                                     ; $683b: $11 $e1 $02
	inc bc                                           ; $683e: $03
	dec de                                           ; $683f: $1b
	ret nz                                           ; $6840: $c0

	ld bc, $0aa0                                     ; $6841: $01 $a0 $0a
	dec b                                            ; $6844: $05
	ld a, [de]                                       ; $6845: $1a
	pop hl                                           ; $6846: $e1
	ld [bc], a                                       ; $6847: $02
	inc b                                            ; $6848: $04
	add e                                            ; $6849: $83
	db $e4                                           ; $684a: $e4
	nop                                              ; $684b: $00
	inc l                                            ; $684c: $2c
	inc b                                            ; $684d: $04
	ldh a, [c]                                       ; $684e: $f2
	add hl, bc                                       ; $684f: $09
	ld de, $02e1                                     ; $6850: $11 $e1 $02
	inc bc                                           ; $6853: $03
	dec de                                           ; $6854: $1b
	ret nz                                           ; $6855: $c0

	ld bc, $0aa0                                     ; $6856: $01 $a0 $0a
	dec b                                            ; $6859: $05

jr_082_685a:
	jr nz, @-$1d                                     ; $685a: $20 $e1

	ld [bc], a                                       ; $685c: $02
	inc b                                            ; $685d: $04
	add e                                            ; $685e: $83
	db $e4                                           ; $685f: $e4
	nop                                              ; $6860: $00
	rla                                              ; $6861: $17
	inc b                                            ; $6862: $04
	ld a, [$1109]                                    ; $6863: $fa $09 $11
	pop hl                                           ; $6866: $e1
	ld [bc], a                                       ; $6867: $02
	inc bc                                           ; $6868: $03
	rla                                              ; $6869: $17
	ret nz                                           ; $686a: $c0

	ld bc, $0aa0                                     ; $686b: $01 $a0 $0a
	dec b                                            ; $686e: $05
	dec c                                            ; $686f: $0d
	pop hl                                           ; $6870: $e1
	ld [bc], a                                       ; $6871: $02
	inc b                                            ; $6872: $04
	ld a, d                                          ; $6873: $7a
	db $e4                                           ; $6874: $e4
	nop                                              ; $6875: $00
	ld [bc], a                                       ; $6876: $02
	add hl, bc                                       ; $6877: $09
	ld [$02e1], sp                                   ; $6878: $08 $e1 $02
	add hl, bc                                       ; $687b: $09
	ld [hl], $e5                                     ; $687c: $36 $e5
	cpl                                              ; $687e: $2f
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	add hl, bc                                       ; $6881: $09
	inc d                                            ; $6882: $14
	ret nc                                           ; $6883: $d0

	add e                                            ; $6884: $83
	ld bc, $d0de                                     ; $6885: $01 $de $d0
	ret nz                                           ; $6888: $c0

	ld bc, $0aa0                                     ; $6889: $01 $a0 $0a
	dec b                                            ; $688c: $05
	daa                                              ; $688d: $27
	ret nz                                           ; $688e: $c0

	ld bc, $01a0                                     ; $688f: $01 $a0 $01
	nop                                              ; $6892: $00
	ld b, $e4                                        ; $6893: $06 $e4
	nop                                              ; $6895: $00
	ld [bc], a                                       ; $6896: $02
	add hl, bc                                       ; $6897: $09
	jr nz, jr_082_685a                               ; $6898: $20 $c0

	set 0, b                                         ; $689a: $cb $c0
	ld de, $00e3                                     ; $689c: $11 $e3 $00
	or d                                             ; $689f: $b2
	ldh [rSB], a                                     ; $68a0: $e0 $01
	di                                               ; $68a2: $f3
	pop bc                                           ; $68a3: $c1
	ld e, h                                          ; $68a4: $5c
	ret nz                                           ; $68a5: $c0

	jp z, $80a0                                      ; $68a6: $ca $a0 $80

	and b                                            ; $68a9: $a0
	dec d                                            ; $68aa: $15
	nop                                              ; $68ab: $00
	inc bc                                           ; $68ac: $03
	db $e4                                           ; $68ad: $e4
	nop                                              ; $68ae: $00
	dec bc                                           ; $68af: $0b
	rst $38                                          ; $68b0: $ff
	rlca                                             ; $68b1: $07
	ld b, b                                          ; $68b2: $40
	add b                                            ; $68b3: $80
	and b                                            ; $68b4: $a0
	dec d                                            ; $68b5: $15
	db $e4                                           ; $68b6: $e4
	nop                                              ; $68b7: $00
	ld c, d                                          ; $68b8: $4a
	jr z, jr_082_68c1                                ; $68b9: $28 $06

	ret nz                                           ; $68bb: $c0

	ld bc, $0aa0                                     ; $68bc: $01 $a0 $0a
	dec b                                            ; $68bf: $05
	inc l                                            ; $68c0: $2c

jr_082_68c1:
	ccf                                              ; $68c1: $3f
	dec b                                            ; $68c2: $05
	ld [hl-], a                                      ; $68c3: $32
	add hl, bc                                       ; $68c4: $09
	ld de, $02e1                                     ; $68c5: $11 $e1 $02
	inc bc                                           ; $68c8: $03
	rrca                                             ; $68c9: $0f
	ret nz                                           ; $68ca: $c0

	ld bc, $0aa0                                     ; $68cb: $01 $a0 $0a
	dec b                                            ; $68ce: $05
	inc [hl]                                         ; $68cf: $34
	pop hl                                           ; $68d0: $e1
	ld [bc], a                                       ; $68d1: $02
	inc b                                            ; $68d2: $04
	ld l, b                                          ; $68d3: $68
	db $e4                                           ; $68d4: $e4
	nop                                              ; $68d5: $00
	add a                                            ; $68d6: $87
	dec b                                            ; $68d7: $05
	dec a                                            ; $68d8: $3d
	add hl, bc                                       ; $68d9: $09
	ld de, $02e1                                     ; $68da: $11 $e1 $02
	inc bc                                           ; $68dd: $03
	dec de                                           ; $68de: $1b
	ret nz                                           ; $68df: $c0

	ld bc, $0aa0                                     ; $68e0: $01 $a0 $0a
	dec b                                            ; $68e3: $05
	ccf                                              ; $68e4: $3f
	pop hl                                           ; $68e5: $e1
	ld [bc], a                                       ; $68e6: $02
	inc b                                            ; $68e7: $04
	add e                                            ; $68e8: $83
	db $e4                                           ; $68e9: $e4
	nop                                              ; $68ea: $00
	ld [hl], d                                       ; $68eb: $72
	dec b                                            ; $68ec: $05
	ld b, e                                          ; $68ed: $43
	add hl, bc                                       ; $68ee: $09
	ld de, $02e1                                     ; $68ef: $11 $e1 $02
	inc bc                                           ; $68f2: $03
	rla                                              ; $68f3: $17
	ret nz                                           ; $68f4: $c0

	ld bc, $0aa0                                     ; $68f5: $01 $a0 $0a
	dec b                                            ; $68f8: $05
	ld b, l                                          ; $68f9: $45
	pop hl                                           ; $68fa: $e1
	ld [bc], a                                       ; $68fb: $02
	inc b                                            ; $68fc: $04
	ld a, d                                          ; $68fd: $7a
	db $e4                                           ; $68fe: $e4
	nop                                              ; $68ff: $00
	ld e, l                                          ; $6900: $5d
	jr z, jr_082_6909                                ; $6901: $28 $06

	ret nz                                           ; $6903: $c0

	ld bc, $0aa0                                     ; $6904: $01 $a0 $0a
	dec b                                            ; $6907: $05
	ld c, h                                          ; $6908: $4c

jr_082_6909:
	ld d, d                                          ; $6909: $52
	dec b                                            ; $690a: $05
	ld d, e                                          ; $690b: $53
	add hl, bc                                       ; $690c: $09
	inc h                                            ; $690d: $24
	pop hl                                           ; $690e: $e1
	ld [bc], a                                       ; $690f: $02
	inc bc                                           ; $6910: $03
	inc de                                           ; $6911: $13
	ret nz                                           ; $6912: $c0

	ld bc, $0aa0                                     ; $6913: $01 $a0 $0a
	dec b                                            ; $6916: $05
	ld d, [hl]                                       ; $6917: $56
	ld h, b                                          ; $6918: $60
	ld hl, sp-$40                                    ; $6919: $f8 $c0
	add e                                            ; $691b: $83
	call nc, $28e0                                   ; $691c: $d4 $e0 $28
	ld a, [bc]                                       ; $691f: $0a
	ret nz                                           ; $6920: $c0

	ld bc, $01a0                                     ; $6921: $01 $a0 $01
	dec b                                            ; $6924: $05
	ld h, e                                          ; $6925: $63
	pop hl                                           ; $6926: $e1
	ld [bc], a                                       ; $6927: $02
	inc b                                            ; $6928: $04
	add e                                            ; $6929: $83
	inc b                                            ; $692a: $04
	pop hl                                           ; $692b: $e1
	ld [bc], a                                       ; $692c: $02
	inc b                                            ; $692d: $04
	ld [hl], c                                       ; $692e: $71
	db $e4                                           ; $692f: $e4
	nop                                              ; $6930: $00
	inc l                                            ; $6931: $2c
	dec b                                            ; $6932: $05
	ld l, h                                          ; $6933: $6c
	add hl, bc                                       ; $6934: $09
	ld de, $02e1                                     ; $6935: $11 $e1 $02
	inc bc                                           ; $6938: $03
	rla                                              ; $6939: $17
	ret nz                                           ; $693a: $c0

	ld bc, $0aa0                                     ; $693b: $01 $a0 $0a
	dec b                                            ; $693e: $05
	ld [hl], d                                       ; $693f: $72
	pop hl                                           ; $6940: $e1
	ld [bc], a                                       ; $6941: $02
	inc b                                            ; $6942: $04
	ld a, d                                          ; $6943: $7a
	db $e4                                           ; $6944: $e4
	nop                                              ; $6945: $00
	rla                                              ; $6946: $17
	dec b                                            ; $6947: $05
	ld a, c                                          ; $6948: $79
	add hl, bc                                       ; $6949: $09
	ld de, $02e1                                     ; $694a: $11 $e1 $02
	inc bc                                           ; $694d: $03
	dec de                                           ; $694e: $1b
	ret nz                                           ; $694f: $c0

	ld bc, $0aa0                                     ; $6950: $01 $a0 $0a
	dec b                                            ; $6953: $05
	add b                                            ; $6954: $80
	pop hl                                           ; $6955: $e1
	ld [bc], a                                       ; $6956: $02
	inc b                                            ; $6957: $04
	adc h                                            ; $6958: $8c
	db $e4                                           ; $6959: $e4
	nop                                              ; $695a: $00
	ld [bc], a                                       ; $695b: $02
	add hl, bc                                       ; $695c: $09
	dec d                                            ; $695d: $15
	ret nz                                           ; $695e: $c0

	set 0, b                                         ; $695f: $cb $c0
	ld de, $00e3                                     ; $6961: $11 $e3 $00
	or c                                             ; $6964: $b1
	pop hl                                           ; $6965: $e1
	ld [bc], a                                       ; $6966: $02
	ld [bc], a                                       ; $6967: $02
	sub b                                            ; $6968: $90
	ret nz                                           ; $6969: $c0

	ld d, [hl]                                       ; $696a: $56
	db $dd                                           ; $696b: $dd
	ldh [rAUD1SWEEP], a                              ; $696c: $e0 $10
	ret nc                                           ; $696e: $d0

	push hl                                          ; $696f: $e5
	cpl                                              ; $6970: $2f
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	add hl, bc                                       ; $6973: $09
	ld c, $d0                                        ; $6974: $0e $d0
	add e                                            ; $6976: $83
	ld bc, $d0de                                     ; $6977: $01 $de $d0
	ret nz                                           ; $697a: $c0

	ld bc, $0aa0                                     ; $697b: $01 $a0 $0a
	dec b                                            ; $697e: $05
	adc c                                            ; $697f: $89
	db $e4                                           ; $6980: $e4
	nop                                              ; $6981: $00
	ld [bc], a                                       ; $6982: $02
	add hl, bc                                       ; $6983: $09
	inc h                                            ; $6984: $24
	pop bc                                           ; $6985: $c1
	ld e, e                                          ; $6986: $5b
	ret nz                                           ; $6987: $c0

	set 0, b                                         ; $6988: $cb $c0
	ld de, $00e3                                     ; $698a: $11 $e3 $00
	xor a                                            ; $698d: $af
	ldh [rSB], a                                     ; $698e: $e0 $01
	dec b                                            ; $6990: $05
	and b                                            ; $6991: $a0
	add b                                            ; $6992: $80
	and b                                            ; $6993: $a0
	ld d, $00                                        ; $6994: $16 $00
	rlca                                             ; $6996: $07
	pop bc                                           ; $6997: $c1
	ld e, h                                          ; $6998: $5c
	ret nz                                           ; $6999: $c0

	jp z, $00e4                                      ; $699a: $ca $e4 $00

	dec c                                            ; $699d: $0d
	rst $38                                          ; $699e: $ff
	add hl, bc                                       ; $699f: $09
	ld b, b                                          ; $69a0: $40
	add b                                            ; $69a1: $80
	and b                                            ; $69a2: $a0
	ld d, $c0                                        ; $69a3: $16 $c0
	jp z, $00e4                                      ; $69a5: $ca $e4 $00

	ld c, d                                          ; $69a8: $4a
	jr z, jr_082_69b1                                ; $69a9: $28 $06

	ret nz                                           ; $69ab: $c0

	ld bc, $0aa0                                     ; $69ac: $01 $a0 $0a
	dec b                                            ; $69af: $05
	sub b                                            ; $69b0: $90

jr_082_69b1:
	ccf                                              ; $69b1: $3f
	dec b                                            ; $69b2: $05
	sub a                                            ; $69b3: $97
	add hl, bc                                       ; $69b4: $09
	ld de, $02e1                                     ; $69b5: $11 $e1 $02
	inc bc                                           ; $69b8: $03
	inc de                                           ; $69b9: $13
	ret nz                                           ; $69ba: $c0

	ld bc, $0aa0                                     ; $69bb: $01 $a0 $0a
	dec b                                            ; $69be: $05
	sbc a                                            ; $69bf: $9f
	pop hl                                           ; $69c0: $e1
	ld [bc], a                                       ; $69c1: $02
	inc b                                            ; $69c2: $04
	ld [hl], c                                       ; $69c3: $71
	db $e4                                           ; $69c4: $e4
	nop                                              ; $69c5: $00
	cp b                                             ; $69c6: $b8
	dec b                                            ; $69c7: $05
	xor b                                            ; $69c8: $a8
	add hl, bc                                       ; $69c9: $09
	ld de, $02e1                                     ; $69ca: $11 $e1 $02
	inc bc                                           ; $69cd: $03
	rra                                              ; $69ce: $1f
	ret nz                                           ; $69cf: $c0

	ld bc, $0aa0                                     ; $69d0: $01 $a0 $0a
	dec b                                            ; $69d3: $05
	xor l                                            ; $69d4: $ad
	pop hl                                           ; $69d5: $e1
	ld [bc], a                                       ; $69d6: $02
	inc b                                            ; $69d7: $04
	adc h                                            ; $69d8: $8c
	db $e4                                           ; $69d9: $e4
	nop                                              ; $69da: $00
	and e                                            ; $69db: $a3
	dec b                                            ; $69dc: $05
	or a                                             ; $69dd: $b7
	add hl, bc                                       ; $69de: $09
	ld de, $02e1                                     ; $69df: $11 $e1 $02
	inc bc                                           ; $69e2: $03
	rla                                              ; $69e3: $17
	ret nz                                           ; $69e4: $c0

	ld bc, $0aa0                                     ; $69e5: $01 $a0 $0a
	dec b                                            ; $69e8: $05
	cp e                                             ; $69e9: $bb
	pop hl                                           ; $69ea: $e1
	ld [bc], a                                       ; $69eb: $02
	inc b                                            ; $69ec: $04
	ld a, d                                          ; $69ed: $7a
	db $e4                                           ; $69ee: $e4
	nop                                              ; $69ef: $00
	adc [hl]                                         ; $69f0: $8e
	jr z, jr_082_69f9                                ; $69f1: $28 $06

	ret nz                                           ; $69f3: $c0

	ld bc, $01a0                                     ; $69f4: $01 $a0 $01
	dec b                                            ; $69f7: $05
	cp [hl]                                          ; $69f8: $be

jr_082_69f9:
	add e                                            ; $69f9: $83
	dec b                                            ; $69fa: $05
	push bc                                          ; $69fb: $c5
	add hl, bc                                       ; $69fc: $09
	ld c, d                                          ; $69fd: $4a
	ret nz                                           ; $69fe: $c0

	dec bc                                           ; $69ff: $0b
	db $e3                                           ; $6a00: $e3
	nop                                              ; $6a01: $00
	add hl, bc                                       ; $6a02: $09
	pop bc                                           ; $6a03: $c1
	ld d, l                                          ; $6a04: $55
	jp nc, $54c1                                     ; $6a05: $d2 $c1 $54

	ret nz                                           ; $6a08: $c0

	nop                                              ; $6a09: $00
	dec b                                            ; $6a0a: $05
	rst JumpTable                                          ; $6a0b: $c7
	ret nz                                           ; $6a0c: $c0

	ld bc, $01a0                                     ; $6a0d: $01 $a0 $01
	dec b                                            ; $6a10: $05
	call z, $0cc0                                    ; $6a11: $cc $c0 $0c
	ldh [$3c], a                                     ; $6a14: $e0 $3c
	pop hl                                           ; $6a16: $e1
	ld [bc], a                                       ; $6a17: $02
	inc bc                                           ; $6a18: $03
	rrca                                             ; $6a19: $0f
	pop bc                                           ; $6a1a: $c1
	ld e, h                                          ; $6a1b: $5c
	ret nz                                           ; $6a1c: $c0

	jp z, $b2c1                                      ; $6a1d: $ca $c1 $b2

	db $e3                                           ; $6a20: $e3
	nop                                              ; $6a21: $00
	add h                                            ; $6a22: $84
	ret nz                                           ; $6a23: $c0

	ld bc, $0aa0                                     ; $6a24: $01 $a0 $0a
	dec b                                            ; $6a27: $05
	rst GetHLinHL                                          ; $6a28: $cf
	ret nz                                           ; $6a29: $c0

	ld bc, $01a0                                     ; $6a2a: $01 $a0 $01
	dec b                                            ; $6a2d: $05
	reti                                             ; $6a2e: $d9


	pop hl                                           ; $6a2f: $e1
	ld [bc], a                                       ; $6a30: $02
	inc bc                                           ; $6a31: $03
	daa                                              ; $6a32: $27
	ret nz                                           ; $6a33: $c0

	ld bc, $0aa0                                     ; $6a34: $01 $a0 $0a
	dec b                                            ; $6a37: $05
	and $c0                                          ; $6a38: $e6 $c0
	jp c, $d0da                                      ; $6a3a: $da $da $d0

	ret nz                                           ; $6a3d: $c0

	reti                                             ; $6a3e: $d9


	push de                                          ; $6a3f: $d5
	rst SubAFromHL                                          ; $6a40: $d7
	pop hl                                           ; $6a41: $e1
	ld [bc], a                                       ; $6a42: $02
	inc b                                            ; $6a43: $04
	ld a, d                                          ; $6a44: $7a
	db $e4                                           ; $6a45: $e4
	nop                                              ; $6a46: $00
	scf                                              ; $6a47: $37
	dec b                                            ; $6a48: $05
	ld [$1609], a                                    ; $6a49: $ea $09 $16
	ret nz                                           ; $6a4c: $c0

	xor e                                            ; $6a4d: $ab
	call nc, $a5c0                                   ; $6a4e: $d4 $c0 $a5
	pop hl                                           ; $6a51: $e1
	ld [bc], a                                       ; $6a52: $02
	inc bc                                           ; $6a53: $03
	rra                                              ; $6a54: $1f
	ret nz                                           ; $6a55: $c0

	ld bc, $0aa0                                     ; $6a56: $01 $a0 $0a
	dec b                                            ; $6a59: $05
	db $ec                                           ; $6a5a: $ec
	pop hl                                           ; $6a5b: $e1
	ld [bc], a                                       ; $6a5c: $02
	inc b                                            ; $6a5d: $04
	adc h                                            ; $6a5e: $8c
	db $e4                                           ; $6a5f: $e4
	nop                                              ; $6a60: $00
	dec e                                            ; $6a61: $1d
	dec b                                            ; $6a62: $05
	db $f4                                           ; $6a63: $f4
	add hl, bc                                       ; $6a64: $09
	rla                                              ; $6a65: $17
	ret nz                                           ; $6a66: $c0

	inc c                                            ; $6a67: $0c
	ldh [$50], a                                     ; $6a68: $e0 $50
	pop hl                                           ; $6a6a: $e1
	ld [bc], a                                       ; $6a6b: $02
	inc bc                                           ; $6a6c: $03
	rla                                              ; $6a6d: $17
	ret nz                                           ; $6a6e: $c0

	and l                                            ; $6a6f: $a5
	ret nz                                           ; $6a70: $c0

	ld bc, $0aa0                                     ; $6a71: $01 $a0 $0a
	dec b                                            ; $6a74: $05
	or $e1                                           ; $6a75: $f6 $e1
	ld [bc], a                                       ; $6a77: $02
	inc b                                            ; $6a78: $04
	ld a, d                                          ; $6a79: $7a
	db $e4                                           ; $6a7a: $e4
	nop                                              ; $6a7b: $00
	ld [bc], a                                       ; $6a7c: $02
	add hl, bc                                       ; $6a7d: $09
	dec d                                            ; $6a7e: $15
	ret nz                                           ; $6a7f: $c0

	set 0, b                                         ; $6a80: $cb $c0
	ld de, $00e3                                     ; $6a82: $11 $e3 $00
	xor [hl]                                         ; $6a85: $ae
	pop hl                                           ; $6a86: $e1
	ld [bc], a                                       ; $6a87: $02
	ld [bc], a                                       ; $6a88: $02
	sub b                                            ; $6a89: $90
	ret nz                                           ; $6a8a: $c0

	ld d, [hl]                                       ; $6a8b: $56
	db $dd                                           ; $6a8c: $dd
	ldh [rAUD1LEN], a                                ; $6a8d: $e0 $11
	ret nc                                           ; $6a8f: $d0

	push hl                                          ; $6a90: $e5
	cpl                                              ; $6a91: $2f
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00

jr_082_6a94:
	rlca                                             ; $6a94: $07
	ret nz                                           ; $6a95: $c0

	and a                                            ; $6a96: $a7
	db $dd                                           ; $6a97: $dd
	db $d3                                           ; $6a98: $d3
	rst SubAFromHL                                          ; $6a99: $d7
	ret nz                                           ; $6a9a: $c0

	xor h                                            ; $6a9b: $ac
	jr z, jr_082_6aa7                                ; $6a9c: $28 $09

	ret nz                                           ; $6a9e: $c0

	ld bc, $0aa0                                     ; $6a9f: $01 $a0 $0a
	dec b                                            ; $6aa2: $05
	rst $38                                          ; $6aa3: $ff
	pop bc                                           ; $6aa4: $c1
	cp l                                             ; $6aa5: $bd
	ret nc                                           ; $6aa6: $d0

jr_082_6aa7:
	add hl, hl                                       ; $6aa7: $29
	ld b, $03                                        ; $6aa8: $06 $03
	add hl, bc                                       ; $6aaa: $09
	ld e, $c0                                        ; $6aab: $1e $c0
	ld bc, $01a0                                     ; $6aad: $01 $a0 $01
	ld b, $05                                        ; $6ab0: $06 $05
	pop hl                                           ; $6ab2: $e1
	ld [bc], a                                       ; $6ab3: $02
	inc bc                                           ; $6ab4: $03
	rrca                                             ; $6ab5: $0f
	ret nz                                           ; $6ab6: $c0

	ld bc, $0aa0                                     ; $6ab7: $01 $a0 $0a
	ld b, $0e                                        ; $6aba: $06 $0e
	ret nz                                           ; $6abc: $c0

	ld d, c                                          ; $6abd: $51
	pop de                                           ; $6abe: $d1
	ret nz                                           ; $6abf: $c0

	inc c                                            ; $6ac0: $0c
	ldh [$3c], a                                     ; $6ac1: $e0 $3c
	pop hl                                           ; $6ac3: $e1
	ld [bc], a                                       ; $6ac4: $02
	inc bc                                           ; $6ac5: $03
	daa                                              ; $6ac6: $27
	ldh [rP1], a                                     ; $6ac7: $e0 $00
	add hl, bc                                       ; $6ac9: $09
	ld b, $1c                                        ; $6aca: $06 $1c
	add hl, bc                                       ; $6acc: $09
	inc bc                                           ; $6acd: $03
	ldh [rP1], a                                     ; $6ace: $e0 $00
	ld [bc], a                                       ; $6ad0: $02
	jr jr_082_6a94                                   ; $6ad1: $18 $c1

	cp l                                             ; $6ad3: $bd
	pop de                                           ; $6ad4: $d1
	add d                                            ; $6ad5: $82
	ret nz                                           ; $6ad6: $c0

	add b                                            ; $6ad7: $80
	ld bc, $03d3                                     ; $6ad8: $01 $d3 $03
	db $e4                                           ; $6adb: $e4
	nop                                              ; $6adc: $00
	adc d                                            ; $6add: $8a
	ld bc, $03d2                                     ; $6ade: $01 $d2 $03
	db $e4                                           ; $6ae1: $e4
	nop                                              ; $6ae2: $00
	add hl, sp                                       ; $6ae3: $39
	ld bc, $03d1                                     ; $6ae4: $01 $d1 $03
	db $e4                                           ; $6ae7: $e4
	nop                                              ; $6ae8: $00
	ld [bc], a                                       ; $6ae9: $02
	add hl, bc                                       ; $6aea: $09
	cpl                                              ; $6aeb: $2f
	ret nz                                           ; $6aec: $c0

	ld bc, $01a0                                     ; $6aed: $01 $a0 $01
	ld b, $1e                                        ; $6af0: $06 $1e
	ret nz                                           ; $6af2: $c0

	ld bc, $0aa0                                     ; $6af3: $01 $a0 $0a
	ld b, $23                                        ; $6af6: $06 $23
	pop hl                                           ; $6af8: $e1
	ld [bc], a                                       ; $6af9: $02
	ld [$c069], sp                                   ; $6afa: $08 $69 $c0
	and a                                            ; $6afd: $a7
	db $dd                                           ; $6afe: $dd
	db $d3                                           ; $6aff: $d3
	pop de                                           ; $6b00: $d1
	ret nz                                           ; $6b01: $c0

	xor h                                            ; $6b02: $ac
	ret nz                                           ; $6b03: $c0

	and l                                            ; $6b04: $a5
	ret nz                                           ; $6b05: $c0

	ld bc, $01a0                                     ; $6b06: $01 $a0 $01
	ld b, $28                                        ; $6b09: $06 $28
	pop hl                                           ; $6b0b: $e1
	ld [bc], a                                       ; $6b0c: $02
	inc bc                                           ; $6b0d: $03
	inc de                                           ; $6b0e: $13
	ret nz                                           ; $6b0f: $c0

	ld bc, $0aa0                                     ; $6b10: $01 $a0 $0a
	ld b, $2e                                        ; $6b13: $06 $2e
	ret nz                                           ; $6b15: $c0

	ld d, c                                          ; $6b16: $51
	pop de                                           ; $6b17: $d1
	db $e4                                           ; $6b18: $e4
	nop                                              ; $6b19: $00
	or b                                             ; $6b1a: $b0
	add hl, bc                                       ; $6b1b: $09
	ld c, c                                          ; $6b1c: $49
	ret nz                                           ; $6b1d: $c0

	ld bc, $01a0                                     ; $6b1e: $01 $a0 $01
	ld b, $3b                                        ; $6b21: $06 $3b
	ret nz                                           ; $6b23: $c0

	ld bc, $0aa0                                     ; $6b24: $01 $a0 $0a
	ld b, $43                                        ; $6b27: $06 $43
	ret nz                                           ; $6b29: $c0

	ld bc, $01a0                                     ; $6b2a: $01 $a0 $01
	ld b, $46                                        ; $6b2d: $06 $46
	pop hl                                           ; $6b2f: $e1
	ld [bc], a                                       ; $6b30: $02
	ld [$e08d], sp                                   ; $6b31: $08 $8d $e0
	nop                                              ; $6b34: $00
	call z, $8760                                    ; $6b35: $cc $60 $87
	ld bc, $13e2                                     ; $6b38: $01 $e2 $13
	ret nz                                           ; $6b3b: $c0

	ld bc, $01a0                                     ; $6b3c: $01 $a0 $01
	ld b, $4d                                        ; $6b3f: $06 $4d
	pop hl                                           ; $6b41: $e1
	ld [bc], a                                       ; $6b42: $02
	inc bc                                           ; $6b43: $03
	rrca                                             ; $6b44: $0f
	ret nz                                           ; $6b45: $c0

	ld bc, $0aa0                                     ; $6b46: $01 $a0 $0a
	ld b, $51                                        ; $6b49: $06 $51
	ret nz                                           ; $6b4b: $c0

	ld d, c                                          ; $6b4c: $51
	pop de                                           ; $6b4d: $d1
	db $10                                           ; $6b4e: $10
	ret nz                                           ; $6b4f: $c0

	ld bc, $01a0                                     ; $6b50: $01 $a0 $01
	ld b, $54                                        ; $6b53: $06 $54
	pop hl                                           ; $6b55: $e1
	ld [bc], a                                       ; $6b56: $02
	inc bc                                           ; $6b57: $03
	inc de                                           ; $6b58: $13
	ret nz                                           ; $6b59: $c0

	ld bc, $0aa0                                     ; $6b5a: $01 $a0 $0a
	ld b, $5e                                        ; $6b5d: $06 $5e
	ld b, b                                          ; $6b5f: $40
	add a                                            ; $6b60: $87
	ld bc, $e4e2                                     ; $6b61: $01 $e2 $e4
	nop                                              ; $6b64: $00
	ld h, l                                          ; $6b65: $65
	add hl, bc                                       ; $6b66: $09
	add hl, de                                       ; $6b67: $19
	ret nz                                           ; $6b68: $c0

	ld bc, $01a0                                     ; $6b69: $01 $a0 $01
	ld b, $68                                        ; $6b6c: $06 $68
	ret nz                                           ; $6b6e: $c0

	ld bc, $0aa0                                     ; $6b6f: $01 $a0 $0a
	ld b, $6e                                        ; $6b72: $06 $6e
	pop hl                                           ; $6b74: $e1
	ld [bc], a                                       ; $6b75: $02
	ld [$e0a4], sp                                   ; $6b76: $08 $a4 $e0
	nop                                              ; $6b79: $00
	add a                                            ; $6b7a: $87
	ret nz                                           ; $6b7b: $c0

	ld d, c                                          ; $6b7c: $51
	pop de                                           ; $6b7d: $d1
	db $e4                                           ; $6b7e: $e4
	nop                                              ; $6b7f: $00
	ld [bc], a                                       ; $6b80: $02
	jr z, jr_082_6b89                                ; $6b81: $28 $06

	ret nz                                           ; $6b83: $c0

	ld bc, $0aa0                                     ; $6b84: $01 $a0 $0a
	ld b, $72                                        ; $6b87: $06 $72

jr_082_6b89:
	ccf                                              ; $6b89: $3f
	ld b, $76                                        ; $6b8a: $06 $76
	add hl, bc                                       ; $6b8c: $09
	ld de, $02e1                                     ; $6b8d: $11 $e1 $02
	inc bc                                           ; $6b90: $03
	rla                                              ; $6b91: $17
	ret nz                                           ; $6b92: $c0

	ld bc, $0aa0                                     ; $6b93: $01 $a0 $0a
	ld b, $78                                        ; $6b96: $06 $78
	pop hl                                           ; $6b98: $e1
	ld [bc], a                                       ; $6b99: $02
	inc b                                            ; $6b9a: $04
	ld a, d                                          ; $6b9b: $7a
	db $e4                                           ; $6b9c: $e4
	nop                                              ; $6b9d: $00
	inc l                                            ; $6b9e: $2c
	ld b, $81                                        ; $6b9f: $06 $81
	add hl, bc                                       ; $6ba1: $09
	ld de, $02e1                                     ; $6ba2: $11 $e1 $02
	inc bc                                           ; $6ba5: $03
	rla                                              ; $6ba6: $17
	ret nz                                           ; $6ba7: $c0

	ld bc, $0aa0                                     ; $6ba8: $01 $a0 $0a
	ld b, $83                                        ; $6bab: $06 $83
	pop hl                                           ; $6bad: $e1
	ld [bc], a                                       ; $6bae: $02
	inc b                                            ; $6baf: $04
	ld a, d                                          ; $6bb0: $7a
	db $e4                                           ; $6bb1: $e4
	nop                                              ; $6bb2: $00
	rla                                              ; $6bb3: $17
	ld b, $8a                                        ; $6bb4: $06 $8a
	add hl, bc                                       ; $6bb6: $09
	ld de, $02e1                                     ; $6bb7: $11 $e1 $02
	inc bc                                           ; $6bba: $03
	inc de                                           ; $6bbb: $13
	ret nz                                           ; $6bbc: $c0

	ld bc, $0aa0                                     ; $6bbd: $01 $a0 $0a
	ld b, $8f                                        ; $6bc0: $06 $8f
	pop hl                                           ; $6bc2: $e1
	ld [bc], a                                       ; $6bc3: $02
	inc b                                            ; $6bc4: $04
	ld [hl], c                                       ; $6bc5: $71
	db $e4                                           ; $6bc6: $e4
	nop                                              ; $6bc7: $00
	ld [bc], a                                       ; $6bc8: $02
	add hl, bc                                       ; $6bc9: $09
	dec [hl]                                         ; $6bca: $35
	add c                                            ; $6bcb: $81
	ret nz                                           ; $6bcc: $c0

	ld h, h                                          ; $6bcd: $64
	ld [bc], a                                       ; $6bce: $02
	ldh [$63], a                                     ; $6bcf: $e0 $63
	inc d                                            ; $6bd1: $14
	ret nc                                           ; $6bd2: $d0

	add d                                            ; $6bd3: $82
	ld bc, $d1db                                     ; $6bd4: $01 $db $d1
	pop hl                                           ; $6bd7: $e1
	ld [bc], a                                       ; $6bd8: $02
	inc b                                            ; $6bd9: $04
	rst JumpTable                                          ; $6bda: $c7
	ret nc                                           ; $6bdb: $d0

	add e                                            ; $6bdc: $83
	ld bc, $d1de                                     ; $6bdd: $01 $de $d1
	ret nz                                           ; $6be0: $c0

	ld d, [hl]                                       ; $6be1: $56
	db $dd                                           ; $6be2: $dd
	ldh [rAUD1ENV], a                                ; $6be3: $e0 $12
	pop de                                           ; $6be5: $d1
	nop                                              ; $6be6: $00
	inc d                                            ; $6be7: $14
	ret nc                                           ; $6be8: $d0

	add d                                            ; $6be9: $82
	ld bc, $d2db                                     ; $6bea: $01 $db $d2
	pop hl                                           ; $6bed: $e1
	ld [bc], a                                       ; $6bee: $02
	inc b                                            ; $6bef: $04
	pop de                                           ; $6bf0: $d1
	ret nc                                           ; $6bf1: $d0

	add e                                            ; $6bf2: $83
	ld bc, $d0de                                     ; $6bf3: $01 $de $d0
	ret nz                                           ; $6bf6: $c0

	ld d, [hl]                                       ; $6bf7: $56
	db $dd                                           ; $6bf8: $dd
	ldh [rAUD1ENV], a                                ; $6bf9: $e0 $12
	ret nc                                           ; $6bfb: $d0

	push hl                                          ; $6bfc: $e5
	cpl                                              ; $6bfd: $2f
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	dec bc                                           ; $6c00: $0b
	ret nz                                           ; $6c01: $c0

	and a                                            ; $6c02: $a7
	db $dd                                           ; $6c03: $dd
	db $d3                                           ; $6c04: $d3
	pop de                                           ; $6c05: $d1
	ret nz                                           ; $6c06: $c0

	xor h                                            ; $6c07: $ac
	pop bc                                           ; $6c08: $c1
	ld e, h                                          ; $6c09: $5c
	ret nz                                           ; $6c0a: $c0

	jp z, $1409                                      ; $6c0b: $ca $09 $14

	ret nc                                           ; $6c0e: $d0

	add e                                            ; $6c0f: $83
	ld bc, $d0de                                     ; $6c10: $01 $de $d0
	ret nz                                           ; $6c13: $c0

	ld bc, $0aa0                                     ; $6c14: $01 $a0 $0a
	ld b, $98                                        ; $6c17: $06 $98
	ret nz                                           ; $6c19: $c0

	ld bc, $01a0                                     ; $6c1a: $01 $a0 $01
	nop                                              ; $6c1d: $00
	ld b, $e4                                        ; $6c1e: $06 $e4
	nop                                              ; $6c20: $00
	ld [bc], a                                       ; $6c21: $02
	add hl, bc                                       ; $6c22: $09
	rla                                              ; $6c23: $17
	pop bc                                           ; $6c24: $c1
	ld e, c                                          ; $6c25: $59
	db $e3                                           ; $6c26: $e3
	nop                                              ; $6c27: $00
	xor c                                            ; $6c28: $a9
	and b                                            ; $6c29: $a0
	add b                                            ; $6c2a: $80
	and b                                            ; $6c2b: $a0
	rla                                              ; $6c2c: $17
	nop                                              ; $6c2d: $00
	inc bc                                           ; $6c2e: $03
	db $e4                                           ; $6c2f: $e4
	nop                                              ; $6c30: $00
	dec bc                                           ; $6c31: $0b
	rst $38                                          ; $6c32: $ff
	rlca                                             ; $6c33: $07
	ld b, b                                          ; $6c34: $40
	add b                                            ; $6c35: $80
	and b                                            ; $6c36: $a0
	rla                                              ; $6c37: $17
	db $e4                                           ; $6c38: $e4
	nop                                              ; $6c39: $00
	ld c, d                                          ; $6c3a: $4a
	jr z, jr_082_6c43                                ; $6c3b: $28 $06

	ret nz                                           ; $6c3d: $c0

	ld bc, $0aa0                                     ; $6c3e: $01 $a0 $0a
	ld b, $9d                                        ; $6c41: $06 $9d

jr_082_6c43:
	ccf                                              ; $6c43: $3f
	inc bc                                           ; $6c44: $03
	ldh [$09], a                                     ; $6c45: $e0 $09
	ld de, $02e1                                     ; $6c47: $11 $e1 $02
	inc bc                                           ; $6c4a: $03
	inc de                                           ; $6c4b: $13
	ret nz                                           ; $6c4c: $c0

	ld bc, $0aa0                                     ; $6c4d: $01 $a0 $0a
	ld b, $a4                                        ; $6c50: $06 $a4
	pop hl                                           ; $6c52: $e1
	ld [bc], a                                       ; $6c53: $02
	inc b                                            ; $6c54: $04
	ld [hl], c                                       ; $6c55: $71
	db $e4                                           ; $6c56: $e4
	nop                                              ; $6c57: $00
	ld [hl], h                                       ; $6c58: $74
	ld b, $ab                                        ; $6c59: $06 $ab
	add hl, bc                                       ; $6c5b: $09
	ld de, $02e1                                     ; $6c5c: $11 $e1 $02
	inc bc                                           ; $6c5f: $03
	dec de                                           ; $6c60: $1b
	ret nz                                           ; $6c61: $c0

	ld bc, $0aa0                                     ; $6c62: $01 $a0 $0a
	ld b, $b3                                        ; $6c65: $06 $b3
	pop hl                                           ; $6c67: $e1
	ld [bc], a                                       ; $6c68: $02
	inc b                                            ; $6c69: $04
	add e                                            ; $6c6a: $83
	db $e4                                           ; $6c6b: $e4
	nop                                              ; $6c6c: $00
	ld e, a                                          ; $6c6d: $5f
	ld b, $be                                        ; $6c6e: $06 $be
	add hl, bc                                       ; $6c70: $09
	ld de, $02e1                                     ; $6c71: $11 $e1 $02
	inc bc                                           ; $6c74: $03
	rla                                              ; $6c75: $17
	ret nz                                           ; $6c76: $c0

	ld bc, $0aa0                                     ; $6c77: $01 $a0 $0a
	ld b, $c4                                        ; $6c7a: $06 $c4
	pop hl                                           ; $6c7c: $e1
	ld [bc], a                                       ; $6c7d: $02
	inc b                                            ; $6c7e: $04
	ld a, d                                          ; $6c7f: $7a
	db $e4                                           ; $6c80: $e4
	nop                                              ; $6c81: $00
	ld c, d                                          ; $6c82: $4a
	jr z, jr_082_6c8b                                ; $6c83: $28 $06

	ret nz                                           ; $6c85: $c0

	ld bc, $0aa0                                     ; $6c86: $01 $a0 $0a
	ld b, $cd                                        ; $6c89: $06 $cd

jr_082_6c8b:
	ccf                                              ; $6c8b: $3f
	ld b, $d4                                        ; $6c8c: $06 $d4
	add hl, bc                                       ; $6c8e: $09
	ld de, $02e1                                     ; $6c8f: $11 $e1 $02
	inc bc                                           ; $6c92: $03
	rrca                                             ; $6c93: $0f
	ret nz                                           ; $6c94: $c0

	ld bc, $0aa0                                     ; $6c95: $01 $a0 $0a
	ld b, $d6                                        ; $6c98: $06 $d6
	pop hl                                           ; $6c9a: $e1
	ld [bc], a                                       ; $6c9b: $02
	inc b                                            ; $6c9c: $04
	ld l, b                                          ; $6c9d: $68
	db $e4                                           ; $6c9e: $e4
	nop                                              ; $6c9f: $00
	inc l                                            ; $6ca0: $2c
	ld b, $de                                        ; $6ca1: $06 $de
	add hl, bc                                       ; $6ca3: $09
	ld de, $02e1                                     ; $6ca4: $11 $e1 $02
	inc bc                                           ; $6ca7: $03
	dec de                                           ; $6ca8: $1b
	ret nz                                           ; $6ca9: $c0

	ld bc, $0aa0                                     ; $6caa: $01 $a0 $0a
	ld b, $e6                                        ; $6cad: $06 $e6
	pop hl                                           ; $6caf: $e1
	ld [bc], a                                       ; $6cb0: $02
	inc b                                            ; $6cb1: $04
	add e                                            ; $6cb2: $83
	db $e4                                           ; $6cb3: $e4
	nop                                              ; $6cb4: $00
	rla                                              ; $6cb5: $17
	ld b, $ec                                        ; $6cb6: $06 $ec
	add hl, bc                                       ; $6cb8: $09
	ld de, $02e1                                     ; $6cb9: $11 $e1 $02
	inc bc                                           ; $6cbc: $03
	rla                                              ; $6cbd: $17
	ret nz                                           ; $6cbe: $c0

	ld bc, $0aa0                                     ; $6cbf: $01 $a0 $0a
	ld b, $f2                                        ; $6cc2: $06 $f2
	pop hl                                           ; $6cc4: $e1
	ld [bc], a                                       ; $6cc5: $02
	inc b                                            ; $6cc6: $04
	ld a, d                                          ; $6cc7: $7a
	db $e4                                           ; $6cc8: $e4
	nop                                              ; $6cc9: $00
	ld [bc], a                                       ; $6cca: $02
	add hl, bc                                       ; $6ccb: $09
	rrca                                             ; $6ccc: $0f
	pop bc                                           ; $6ccd: $c1
	ld e, c                                          ; $6cce: $59
	db $e3                                           ; $6ccf: $e3
	nop                                              ; $6cd0: $00
	xor b                                            ; $6cd1: $a8
	ret nz                                           ; $6cd2: $c0

	ld d, [hl]                                       ; $6cd3: $56
	db $dd                                           ; $6cd4: $dd
	ldh [rAUD1LOW], a                                ; $6cd5: $e0 $13
	ret nc                                           ; $6cd7: $d0

	push hl                                          ; $6cd8: $e5
	cpl                                              ; $6cd9: $2f
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	add hl, bc                                       ; $6cdc: $09
	inc d                                            ; $6cdd: $14
	ret nc                                           ; $6cde: $d0

	add e                                            ; $6cdf: $83
	ld bc, $d0de                                     ; $6ce0: $01 $de $d0
	ret nz                                           ; $6ce3: $c0

	ld bc, $0aa0                                     ; $6ce4: $01 $a0 $0a
	ld b, $f7                                        ; $6ce7: $06 $f7
	ret nz                                           ; $6ce9: $c0

	ld bc, $01a0                                     ; $6cea: $01 $a0 $01

jr_082_6ced:
	nop                                              ; $6ced: $00
	ld b, $e4                                        ; $6cee: $06 $e4
	nop                                              ; $6cf0: $00
	ld [bc], a                                       ; $6cf1: $02
	add hl, bc                                       ; $6cf2: $09
	rla                                              ; $6cf3: $17
	pop bc                                           ; $6cf4: $c1
	ld e, c                                          ; $6cf5: $59
	db $e3                                           ; $6cf6: $e3
	nop                                              ; $6cf7: $00
	and a                                            ; $6cf8: $a7
	and b                                            ; $6cf9: $a0
	add b                                            ; $6cfa: $80
	and b                                            ; $6cfb: $a0
	jr jr_082_6cfe                                   ; $6cfc: $18 $00

jr_082_6cfe:
	inc bc                                           ; $6cfe: $03
	db $e4                                           ; $6cff: $e4
	nop                                              ; $6d00: $00
	dec bc                                           ; $6d01: $0b
	rst $38                                          ; $6d02: $ff
	rlca                                             ; $6d03: $07
	ld b, b                                          ; $6d04: $40
	add b                                            ; $6d05: $80
	and b                                            ; $6d06: $a0
	jr jr_082_6ced                                   ; $6d07: $18 $e4

	nop                                              ; $6d09: $00
	ld e, l                                          ; $6d0a: $5d
	jr z, jr_082_6d13                                ; $6d0b: $28 $06

	ret nz                                           ; $6d0d: $c0

	ld bc, $0aa0                                     ; $6d0e: $01 $a0 $0a
	ld b, $fe                                        ; $6d11: $06 $fe

jr_082_6d13:
	ld d, d                                          ; $6d13: $52
	rlca                                             ; $6d14: $07
	inc b                                            ; $6d15: $04
	add hl, bc                                       ; $6d16: $09
	inc h                                            ; $6d17: $24
	pop hl                                           ; $6d18: $e1
	ld [bc], a                                       ; $6d19: $02
	inc bc                                           ; $6d1a: $03
	inc de                                           ; $6d1b: $13
	ret nz                                           ; $6d1c: $c0

	ld bc, $0aa0                                     ; $6d1d: $01 $a0 $0a
	rlca                                             ; $6d20: $07
	ld b, $60                                        ; $6d21: $06 $60
	ld hl, sp-$40                                    ; $6d23: $f8 $c0
	add e                                            ; $6d25: $83
	call nc, Call_082_64e0                           ; $6d26: $d4 $e0 $64
	ld a, [bc]                                       ; $6d29: $0a
	ret nz                                           ; $6d2a: $c0

	ld bc, $01a0                                     ; $6d2b: $01 $a0 $01
	rlca                                             ; $6d2e: $07
	ld de, $02e1                                     ; $6d2f: $11 $e1 $02
	inc b                                            ; $6d32: $04
	add e                                            ; $6d33: $83
	inc b                                            ; $6d34: $04
	pop hl                                           ; $6d35: $e1
	ld [bc], a                                       ; $6d36: $02
	inc b                                            ; $6d37: $04
	ld l, b                                          ; $6d38: $68
	db $e4                                           ; $6d39: $e4
	nop                                              ; $6d3a: $00
	add c                                            ; $6d3b: $81
	rlca                                             ; $6d3c: $07
	add hl, de                                       ; $6d3d: $19
	add hl, bc                                       ; $6d3e: $09
	ld de, $02e1                                     ; $6d3f: $11 $e1 $02
	inc bc                                           ; $6d42: $03
	dec de                                           ; $6d43: $1b
	ret nz                                           ; $6d44: $c0

	ld bc, $0aa0                                     ; $6d45: $01 $a0 $0a
	rlca                                             ; $6d48: $07
	inc hl                                           ; $6d49: $23
	pop hl                                           ; $6d4a: $e1
	ld [bc], a                                       ; $6d4b: $02
	inc b                                            ; $6d4c: $04
	add e                                            ; $6d4d: $83
	db $e4                                           ; $6d4e: $e4
	nop                                              ; $6d4f: $00
	ld l, h                                          ; $6d50: $6c
	rlca                                             ; $6d51: $07
	ld l, $09                                        ; $6d52: $2e $09
	ld de, $02e1                                     ; $6d54: $11 $e1 $02
	inc bc                                           ; $6d57: $03
	inc de                                           ; $6d58: $13
	ret nz                                           ; $6d59: $c0

	ld bc, $0aa0                                     ; $6d5a: $01 $a0 $0a
	rlca                                             ; $6d5d: $07
	inc [hl]                                         ; $6d5e: $34
	pop hl                                           ; $6d5f: $e1
	ld [bc], a                                       ; $6d60: $02
	inc b                                            ; $6d61: $04
	ld a, d                                          ; $6d62: $7a
	db $e4                                           ; $6d63: $e4
	nop                                              ; $6d64: $00
	ld d, a                                          ; $6d65: $57
	jr z, jr_082_6d6e                                ; $6d66: $28 $06

	ret nz                                           ; $6d68: $c0

	ld bc, $0aa0                                     ; $6d69: $01 $a0 $0a
	rlca                                             ; $6d6c: $07
	inc a                                            ; $6d6d: $3c

jr_082_6d6e:
	ld c, h                                          ; $6d6e: $4c
	rlca                                             ; $6d6f: $07
	ccf                                              ; $6d70: $3f
	add hl, bc                                       ; $6d71: $09
	ld e, $e1                                        ; $6d72: $1e $e1
	ld [bc], a                                       ; $6d74: $02
	inc bc                                           ; $6d75: $03
	inc de                                           ; $6d76: $13
	ld h, b                                          ; $6d77: $60
	db $fc                                           ; $6d78: $fc
	ret nz                                           ; $6d79: $c0

	add b                                            ; $6d7a: $80
	ret nc                                           ; $6d7b: $d0

	ld b, $c0                                        ; $6d7c: $06 $c0
	ld bc, $0aa0                                     ; $6d7e: $01 $a0 $0a
	rlca                                             ; $6d81: $07
	ld b, d                                          ; $6d82: $42
	ld b, $c0                                        ; $6d83: $06 $c0
	ld bc, $0aa0                                     ; $6d85: $01 $a0 $0a
	rlca                                             ; $6d88: $07
	ld d, b                                          ; $6d89: $50
	pop hl                                           ; $6d8a: $e1
	ld [bc], a                                       ; $6d8b: $02
	inc b                                            ; $6d8c: $04
	ld [hl], c                                       ; $6d8d: $71
	db $e4                                           ; $6d8e: $e4
	nop                                              ; $6d8f: $00
	inc l                                            ; $6d90: $2c
	rlca                                             ; $6d91: $07
	ld d, [hl]                                       ; $6d92: $56
	add hl, bc                                       ; $6d93: $09
	ld de, $02e1                                     ; $6d94: $11 $e1 $02
	inc bc                                           ; $6d97: $03
	rrca                                             ; $6d98: $0f
	ret nz                                           ; $6d99: $c0

	ld bc, $0aa0                                     ; $6d9a: $01 $a0 $0a
	rlca                                             ; $6d9d: $07
	ld e, d                                          ; $6d9e: $5a
	pop hl                                           ; $6d9f: $e1
	ld [bc], a                                       ; $6da0: $02
	inc b                                            ; $6da1: $04
	ld a, d                                          ; $6da2: $7a
	db $e4                                           ; $6da3: $e4
	nop                                              ; $6da4: $00
	rla                                              ; $6da5: $17
	rlca                                             ; $6da6: $07
	ld h, e                                          ; $6da7: $63
	add hl, bc                                       ; $6da8: $09
	ld de, $02e1                                     ; $6da9: $11 $e1 $02
	inc bc                                           ; $6dac: $03
	dec de                                           ; $6dad: $1b
	ret nz                                           ; $6dae: $c0

	ld bc, $0aa0                                     ; $6daf: $01 $a0 $0a
	rlca                                             ; $6db2: $07
	ld h, a                                          ; $6db3: $67
	pop hl                                           ; $6db4: $e1
	ld [bc], a                                       ; $6db5: $02
	inc b                                            ; $6db6: $04
	add e                                            ; $6db7: $83
	db $e4                                           ; $6db8: $e4
	nop                                              ; $6db9: $00
	ld [bc], a                                       ; $6dba: $02
	add hl, bc                                       ; $6dbb: $09
	rrca                                             ; $6dbc: $0f
	pop bc                                           ; $6dbd: $c1
	ld e, c                                          ; $6dbe: $59
	db $e3                                           ; $6dbf: $e3
	nop                                              ; $6dc0: $00
	and [hl]                                         ; $6dc1: $a6
	ret nz                                           ; $6dc2: $c0

	ld d, [hl]                                       ; $6dc3: $56
	db $dd                                           ; $6dc4: $dd
	ldh [rAUD1HIGH], a                               ; $6dc5: $e0 $14
	ret nc                                           ; $6dc7: $d0

	push hl                                          ; $6dc8: $e5
	cpl                                              ; $6dc9: $2f
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	reti                                             ; $6dcc: $d9


	ld b, $09                                        ; $6dcd: $06 $09
	pop bc                                           ; $6dcf: $c1
	jp nc, Jump_082_4cc0                             ; $6dd0: $d2 $c0 $4c

	db $dd                                           ; $6dd3: $dd
	ret nc                                           ; $6dd4: $d0

	adc a                                            ; $6dd5: $8f
	nop                                              ; $6dd6: $00
	cp b                                             ; $6dd7: $b8
	add h                                            ; $6dd8: $84
	ld [bc], a                                       ; $6dd9: $02
	ld l, $61                                        ; $6dda: $2e $61
	cp $07                                           ; $6ddc: $fe $07
	add b                                            ; $6dde: $80
	nop                                              ; $6ddf: $00
	set 7, h                                         ; $6de0: $cb $fc
	ret nz                                           ; $6de2: $c0

	ld h, a                                          ; $6de3: $67
	ret nc                                           ; $6de4: $d0

	inc [hl]                                         ; $6de5: $34
	ret nz                                           ; $6de6: $c0

	ld bc, $0aa0                                     ; $6de7: $01 $a0 $0a
	nop                                              ; $6dea: $00
	ld bc, $01c0                                     ; $6deb: $01 $c0 $01
	and b                                            ; $6dee: $a0
	ld bc, $0b00                                     ; $6def: $01 $00 $0b
	add c                                            ; $6df2: $81
	ret nz                                           ; $6df3: $c0

	dec de                                           ; $6df4: $1b
	db $dd                                           ; $6df5: $dd
	ld [bc], a                                       ; $6df6: $02
	ret nc                                           ; $6df7: $d0

	pop de                                           ; $6df8: $d1
	ld a, [bc]                                       ; $6df9: $0a
	pop hl                                           ; $6dfa: $e1
	ld [bc], a                                       ; $6dfb: $02
	inc bc                                           ; $6dfc: $03
	rrca                                             ; $6dfd: $0f
	ret nz                                           ; $6dfe: $c0

	ld bc, $0aa0                                     ; $6dff: $01 $a0 $0a
	nop                                              ; $6e02: $00
	inc d                                            ; $6e03: $14
	nop                                              ; $6e04: $00
	ld a, [bc]                                       ; $6e05: $0a
	pop hl                                           ; $6e06: $e1
	ld [bc], a                                       ; $6e07: $02
	inc bc                                           ; $6e08: $03
	inc de                                           ; $6e09: $13
	ret nz                                           ; $6e0a: $c0

	ld bc, $0aa0                                     ; $6e0b: $01 $a0 $0a
	nop                                              ; $6e0e: $00
	jr @-$3e                                         ; $6e0f: $18 $c0

	ld bc, $01a0                                     ; $6e11: $01 $a0 $01
	nop                                              ; $6e14: $00
	inc e                                            ; $6e15: $1c
	ld b, b                                          ; $6e16: $40
	add b                                            ; $6e17: $80
	nop                                              ; $6e18: $00
	set 7, h                                         ; $6e19: $cb $fc
	pop bc                                           ; $6e1b: $c1
	ld b, c                                          ; $6e1c: $41
	db $dd                                           ; $6e1d: $dd
	add h                                            ; $6e1e: $84
	ld [bc], a                                       ; $6e1f: $02
	ld l, $83                                        ; $6e20: $2e $83
	ld bc, $d1de                                     ; $6e22: $01 $de $d1
	inc e                                            ; $6e25: $1c
	pop hl                                           ; $6e26: $e1
	ld [bc], a                                       ; $6e27: $02
	inc bc                                           ; $6e28: $03
	dec de                                           ; $6e29: $1b
	ret nz                                           ; $6e2a: $c0

	ld bc, $0aa0                                     ; $6e2b: $01 $a0 $0a
	nop                                              ; $6e2e: $00
	ld [hl+], a                                      ; $6e2f: $22
	ret nz                                           ; $6e30: $c0

	ld bc, $01a0                                     ; $6e31: $01 $a0 $01
	nop                                              ; $6e34: $00
	inc l                                            ; $6e35: $2c
	ret nz                                           ; $6e36: $c0

	dec h                                            ; $6e37: $25
	pop de                                           ; $6e38: $d1
	db $dd                                           ; $6e39: $dd
	ret nz                                           ; $6e3a: $c0

	inc h                                            ; $6e3b: $24
	jp nc, $c0dd                                     ; $6e3c: $d2 $dd $c0

	inc hl                                           ; $6e3f: $23
	jp c, $c0dd                                      ; $6e40: $da $dd $c0

	db $dd                                           ; $6e43: $dd
	add e                                            ; $6e44: $83
	ret nz                                           ; $6e45: $c0

	dec de                                           ; $6e46: $1b
	db $dd                                           ; $6e47: $dd
	ld [bc], a                                       ; $6e48: $02
	ret nc                                           ; $6e49: $d0

	pop de                                           ; $6e4a: $d1
	dec a                                            ; $6e4b: $3d
	add d                                            ; $6e4c: $82
	add d                                            ; $6e4d: $82
	ld bc, $02db                                     ; $6e4e: $01 $db $02
	pop de                                           ; $6e51: $d1
	jp nc, $e10f                                     ; $6e52: $d2 $0f $e1

	ld [bc], a                                       ; $6e55: $02
	inc bc                                           ; $6e56: $03
	inc de                                           ; $6e57: $13
	pop bc                                           ; $6e58: $c1
	or d                                             ; $6e59: $b2
	db $e3                                           ; $6e5a: $e3
	nop                                              ; $6e5b: $00
	add [hl]                                         ; $6e5c: $86
	ret nz                                           ; $6e5d: $c0

	ld bc, $0aa0                                     ; $6e5e: $01 $a0 $0a
	nop                                              ; $6e61: $00
	ld [hl-], a                                      ; $6e62: $32
	ld bc, $0fd3                                     ; $6e63: $01 $d3 $0f
	pop hl                                           ; $6e66: $e1
	ld [bc], a                                       ; $6e67: $02
	inc bc                                           ; $6e68: $03
	rla                                              ; $6e69: $17
	pop bc                                           ; $6e6a: $c1
	or d                                             ; $6e6b: $b2
	db $e3                                           ; $6e6c: $e3
	nop                                              ; $6e6d: $00
	add a                                            ; $6e6e: $87
	ret nz                                           ; $6e6f: $c0

	ld bc, $0aa0                                     ; $6e70: $01 $a0 $0a
	nop                                              ; $6e73: $00
	dec sp                                           ; $6e74: $3b
	ld [bc], a                                       ; $6e75: $02
	call nc, $0ad5                                   ; $6e76: $d4 $d5 $0a
	pop hl                                           ; $6e79: $e1
	ld [bc], a                                       ; $6e7a: $02
	inc bc                                           ; $6e7b: $03
	dec de                                           ; $6e7c: $1b
	ret nz                                           ; $6e7d: $c0

	ld bc, $0aa0                                     ; $6e7e: $01 $a0 $0a
	nop                                              ; $6e81: $00
	ld b, b                                          ; $6e82: $40
	ret nz                                           ; $6e83: $c0

	ld bc, $01a0                                     ; $6e84: $01 $a0 $01
	nop                                              ; $6e87: $00
	ld c, b                                          ; $6e88: $48
	ld [bc], a                                       ; $6e89: $02
	jp nc, $3fd3                                     ; $6e8a: $d2 $d3 $3f

	add d                                            ; $6e8d: $82
	add d                                            ; $6e8e: $82
	ld bc, $02db                                     ; $6e8f: $01 $db $02
	pop de                                           ; $6e92: $d1
	jp nc, $e110                                     ; $6e93: $d2 $10 $e1

	ld [bc], a                                       ; $6e96: $02
	inc bc                                           ; $6e97: $03
	inc de                                           ; $6e98: $13
	ret nz                                           ; $6e99: $c0

	ld bc, $0aa0                                     ; $6e9a: $01 $a0 $0a
	nop                                              ; $6e9d: $00
	ld c, h                                          ; $6e9e: $4c
	ret nz                                           ; $6e9f: $c0

	ld bc, $01a0                                     ; $6ea0: $01 $a0 $01
	nop                                              ; $6ea3: $00
	ld d, h                                          ; $6ea4: $54
	ld bc, $10d3                                     ; $6ea5: $01 $d3 $10
	pop hl                                           ; $6ea8: $e1
	ld [bc], a                                       ; $6ea9: $02
	inc bc                                           ; $6eaa: $03
	rla                                              ; $6eab: $17
	ret nz                                           ; $6eac: $c0

	ld bc, $0aa0                                     ; $6ead: $01 $a0 $0a
	nop                                              ; $6eb0: $00
	ld d, [hl]                                       ; $6eb1: $56
	ret nz                                           ; $6eb2: $c0

	ld bc, $01a0                                     ; $6eb3: $01 $a0 $01
	nop                                              ; $6eb6: $00
	ld d, h                                          ; $6eb7: $54
	ld [bc], a                                       ; $6eb8: $02
	call nc, $10d5                                   ; $6eb9: $d4 $d5 $10
	pop hl                                           ; $6ebc: $e1
	ld [bc], a                                       ; $6ebd: $02
	inc bc                                           ; $6ebe: $03
	dec de                                           ; $6ebf: $1b
	ret nz                                           ; $6ec0: $c0

	ld bc, $0aa0                                     ; $6ec1: $01 $a0 $0a
	nop                                              ; $6ec4: $00
	ld e, [hl]                                       ; $6ec5: $5e
	ret nz                                           ; $6ec6: $c0

	ld bc, $01a0                                     ; $6ec7: $01 $a0 $01
	nop                                              ; $6eca: $00
	ld h, h                                          ; $6ecb: $64
	ld bc, $3fd4                                     ; $6ecc: $01 $d4 $3f
	add d                                            ; $6ecf: $82
	add d                                            ; $6ed0: $82
	ld bc, $02db                                     ; $6ed1: $01 $db $02
	pop de                                           ; $6ed4: $d1
	jp nc, $e110                                     ; $6ed5: $d2 $10 $e1

	ld [bc], a                                       ; $6ed8: $02
	inc bc                                           ; $6ed9: $03
	inc de                                           ; $6eda: $13
	ret nz                                           ; $6edb: $c0

	ld bc, $0aa0                                     ; $6edc: $01 $a0 $0a
	nop                                              ; $6edf: $00
	ld h, [hl]                                       ; $6ee0: $66
	ret nz                                           ; $6ee1: $c0

	ld bc, $01a0                                     ; $6ee2: $01 $a0 $01
	nop                                              ; $6ee5: $00
	ld d, h                                          ; $6ee6: $54
	ld bc, $10d3                                     ; $6ee7: $01 $d3 $10
	pop hl                                           ; $6eea: $e1
	ld [bc], a                                       ; $6eeb: $02
	inc bc                                           ; $6eec: $03
	rla                                              ; $6eed: $17
	ret nz                                           ; $6eee: $c0

	ld bc, $0aa0                                     ; $6eef: $01 $a0 $0a
	nop                                              ; $6ef2: $00
	ld l, a                                          ; $6ef3: $6f
	ret nz                                           ; $6ef4: $c0

	ld bc, $01a0                                     ; $6ef5: $01 $a0 $01
	nop                                              ; $6ef8: $00
	ld [hl], h                                       ; $6ef9: $74
	ld [bc], a                                       ; $6efa: $02
	call nc, $10d5                                   ; $6efb: $d4 $d5 $10
	pop hl                                           ; $6efe: $e1
	ld [bc], a                                       ; $6eff: $02
	inc bc                                           ; $6f00: $03
	dec de                                           ; $6f01: $1b
	ret nz                                           ; $6f02: $c0

	ld bc, $0aa0                                     ; $6f03: $01 $a0 $0a
	nop                                              ; $6f06: $00
	ld a, b                                          ; $6f07: $78
	ret nz                                           ; $6f08: $c0

	ld bc, $01a0                                     ; $6f09: $01 $a0 $01
	nop                                              ; $6f0c: $00
	ld h, h                                          ; $6f0d: $64
	ld bc, $10d5                                     ; $6f0e: $01 $d5 $10
	pop hl                                           ; $6f11: $e1
	ld [bc], a                                       ; $6f12: $02
	inc bc                                           ; $6f13: $03
	dec de                                           ; $6f14: $1b
	ret nz                                           ; $6f15: $c0

	ld bc, $0aa0                                     ; $6f16: $01 $a0 $0a
	nop                                              ; $6f19: $00
	ld a, e                                          ; $6f1a: $7b
	ret nz                                           ; $6f1b: $c0

	ld bc, $01a0                                     ; $6f1c: $01 $a0 $01
	nop                                              ; $6f1f: $00
	add d                                            ; $6f20: $82
	pop hl                                           ; $6f21: $e1
	ld [bc], a                                       ; $6f22: $02
	inc bc                                           ; $6f23: $03
	daa                                              ; $6f24: $27
	ei                                               ; $6f25: $fb
	cp $0a                                           ; $6f26: $fe $0a
	db $fc                                           ; $6f28: $fc
	ret nz                                           ; $6f29: $c0

	ld h, l                                          ; $6f2a: $65
	ret nz                                           ; $6f2b: $c0

	ld [hl], c                                       ; $6f2c: $71
	db $fc                                           ; $6f2d: $fc
	ret nz                                           ; $6f2e: $c0

	ld h, [hl]                                       ; $6f2f: $66
	ret nz                                           ; $6f30: $c0

	ld [hl], d                                       ; $6f31: $72
	cpl                                              ; $6f32: $2f
	ei                                               ; $6f33: $fb
	ld hl, sp-$40                                    ; $6f34: $f8 $c0
	rla                                              ; $6f36: $17
	db $dd                                           ; $6f37: $dd
	ldh [$3c], a                                     ; $6f38: $e0 $3c
	daa                                              ; $6f3a: $27
	add b                                            ; $6f3b: $80
	ret nz                                           ; $6f3c: $c0

	dec de                                           ; $6f3d: $1b
	db $dd                                           ; $6f3e: $dd
	ld [bc], a                                       ; $6f3f: $02
	ret nc                                           ; $6f40: $d0

	pop de                                           ; $6f41: $d1
	rra                                              ; $6f42: $1f
	ret nz                                           ; $6f43: $c0

	ld bc, $0aa0                                     ; $6f44: $01 $a0 $0a
	nop                                              ; $6f47: $00
	add a                                            ; $6f48: $87
	ret nz                                           ; $6f49: $c0

	ld bc, $01a0                                     ; $6f4a: $01 $a0 $01
	nop                                              ; $6f4d: $00
	adc e                                            ; $6f4e: $8b
	ret nc                                           ; $6f4f: $d0

	add e                                            ; $6f50: $83
	ld [bc], a                                       ; $6f51: $02
	ld l, l                                          ; $6f52: $6d
	db $dd                                           ; $6f53: $dd
	pop hl                                           ; $6f54: $e1
	ld b, [hl]                                       ; $6f55: $46
	ld bc, $c0e1                                     ; $6f56: $01 $e1 $c0
	ld bc, $01a0                                     ; $6f59: $01 $a0 $01
	nop                                              ; $6f5c: $00
	adc l                                            ; $6f5d: $8d
	nop                                              ; $6f5e: $00
	add b                                            ; $6f5f: $80
	nop                                              ; $6f60: $00
	dec [hl]                                         ; $6f61: $35
	add d                                            ; $6f62: $82
	ret nz                                           ; $6f63: $c0

	dec de                                           ; $6f64: $1b
	db $dd                                           ; $6f65: $dd
	ld [bc], a                                       ; $6f66: $02
	ret nc                                           ; $6f67: $d0

	pop de                                           ; $6f68: $d1
	ld b, $c0                                        ; $6f69: $06 $c0
	ld bc, $0aa0                                     ; $6f6b: $01 $a0 $0a
	nop                                              ; $6f6e: $00
	and d                                            ; $6f6f: $a2
	inc bc                                           ; $6f70: $03
	jp nc, $d4d3                                     ; $6f71: $d2 $d3 $d4

	ld b, $c0                                        ; $6f74: $06 $c0
	ld bc, $0aa0                                     ; $6f76: $01 $a0 $0a
	nop                                              ; $6f79: $00
	and [hl]                                         ; $6f7a: $a6

jr_082_6f7b:
	ld bc, $0cd5                                     ; $6f7b: $01 $d5 $0c
	ret nz                                           ; $6f7e: $c0

	ld bc, $0aa0                                     ; $6f7f: $01 $a0 $0a
	nop                                              ; $6f82: $00
	xor h                                            ; $6f83: $ac
	pop bc                                           ; $6f84: $c1
	ld e, e                                          ; $6f85: $5b
	ret nz                                           ; $6f86: $c0

	inc c                                            ; $6f87: $0c
	ldh [rAUD3HIGH], a                               ; $6f88: $e0 $1e
	ei                                               ; $6f8a: $fb
	db $fd                                           ; $6f8b: $fd
	add h                                            ; $6f8c: $84
	ld [bc], a                                       ; $6f8d: $02
	ld l, $d0                                        ; $6f8e: $2e $d0
	add hl, bc                                       ; $6f90: $09
	pop bc                                           ; $6f91: $c1
	ccf                                              ; $6f92: $3f
	db $dd                                           ; $6f93: $dd
	add h                                            ; $6f94: $84
	ld [bc], a                                       ; $6f95: $02
	ld l, $83                                        ; $6f96: $2e $83
	ld bc, $e0de                                     ; $6f98: $01 $de $e0
	nop                                              ; $6f9b: $00
	ld [$cbc0], sp                                   ; $6f9c: $08 $c0 $cb
	push hl                                          ; $6f9f: $e5
	nop                                              ; $6fa0: $00
	jr nz, jr_082_6f7b                               ; $6fa1: $20 $d8

	ld e, b                                          ; $6fa3: $58
	ld h, c                                          ; $6fa4: $61
	cp $09                                           ; $6fa5: $fe $09
	db $fd                                           ; $6fa7: $fd
	ret nz                                           ; $6fa8: $c0

	ld h, h                                          ; $6fa9: $64
	ldh [$63], a                                     ; $6faa: $e0 $63
	db $fc                                           ; $6fac: $fc
	ret nz                                           ; $6fad: $c0

	ld h, l                                          ; $6fae: $65
	push de                                          ; $6faf: $d5
	dec de                                           ; $6fb0: $1b
	add d                                            ; $6fb1: $82
	ret nz                                           ; $6fb2: $c0

	ld h, [hl]                                       ; $6fb3: $66
	ld bc, $05d3                                     ; $6fb4: $01 $d3 $05
	ret nc                                           ; $6fb7: $d0

	add e                                            ; $6fb8: $83
	ld bc, $dd72                                     ; $6fb9: $01 $72 $dd
	ld bc, $05d4                                     ; $6fbc: $01 $d4 $05
	ret nc                                           ; $6fbf: $d0

	add e                                            ; $6fc0: $83
	ld bc, $dd76                                     ; $6fc1: $01 $76 $dd
	ld bc, $05d5                                     ; $6fc4: $01 $d5 $05
	ret nc                                           ; $6fc7: $d0

	add e                                            ; $6fc8: $83
	ld bc, $dd7a                                     ; $6fc9: $01 $7a $dd
	cp $09                                           ; $6fcc: $fe $09
	db $fc                                           ; $6fce: $fc
	ret nz                                           ; $6fcf: $c0

	ld h, h                                          ; $6fd0: $64
	ldh [$63], a                                     ; $6fd1: $e0 $63
	db $fc                                           ; $6fd3: $fc
	ret nz                                           ; $6fd4: $c0

	ld h, l                                          ; $6fd5: $65
	push de                                          ; $6fd6: $d5
	inc hl                                           ; $6fd7: $23
	add e                                            ; $6fd8: $83
	ret nz                                           ; $6fd9: $c0

	ld h, [hl]                                       ; $6fda: $66
	ld bc, $05d2                                     ; $6fdb: $01 $d2 $05
	ret nc                                           ; $6fde: $d0

	add e                                            ; $6fdf: $83
	ld bc, $dd72                                     ; $6fe0: $01 $72 $dd
	ld bc, $05d3                                     ; $6fe3: $01 $d3 $05
	ret nc                                           ; $6fe6: $d0

	add e                                            ; $6fe7: $83
	ld bc, $dd76                                     ; $6fe8: $01 $76 $dd
	ld bc, $05d4                                     ; $6feb: $01 $d4 $05
	ret nc                                           ; $6fee: $d0

	add e                                            ; $6fef: $83
	ld bc, $dd7a                                     ; $6ff0: $01 $7a $dd
	ld bc, $05d5                                     ; $6ff3: $01 $d5 $05
	ret nc                                           ; $6ff6: $d0

	add e                                            ; $6ff7: $83
	ld bc, $dd7e                                     ; $6ff8: $01 $7e $dd
	nop                                              ; $6ffb: $00
	ldh a, [c]                                       ; $6ffc: $f2
	ld b, $54                                        ; $6ffd: $06 $54
	ei                                               ; $6fff: $fb
	cp $08                                           ; $7000: $fe $08
	pop af                                           ; $7002: $f1
	add b                                            ; $7003: $80
	ld [bc], a                                       ; $7004: $02
	inc sp                                           ; $7005: $33
	ei                                               ; $7006: $fb
	ret nz                                           ; $7007: $c0

	add b                                            ; $7008: $80
	jp nc, $fb48                                     ; $7009: $d2 $48 $fb

	cp $10                                           ; $700c: $fe $10
	pop af                                           ; $700e: $f1
	add b                                            ; $700f: $80
	ld [bc], a                                       ; $7010: $02
	add e                                            ; $7011: $83
	add b                                            ; $7012: $80
	and b                                            ; $7013: $a0
	nop                                              ; $7014: $00
	db $fc                                           ; $7015: $fc
	ret nz                                           ; $7016: $c0

	ld h, h                                          ; $7017: $64
	ldh [$63], a                                     ; $7018: $e0 $63
	db $fc                                           ; $701a: $fc
	ret nz                                           ; $701b: $c0

	ld h, l                                          ; $701c: $65
	reti                                             ; $701d: $d9


	add hl, bc                                       ; $701e: $09
	nop                                              ; $701f: $00
	add b                                            ; $7020: $80
	ld [bc], a                                       ; $7021: $02
	add e                                            ; $7022: $83
	ret nc                                           ; $7023: $d0

	add e                                            ; $7024: $83
	ld [bc], a                                       ; $7025: $02
	add h                                            ; $7026: $84
	reti                                             ; $7027: $d9


	ld h, c                                          ; $7028: $61
	cp $10                                           ; $7029: $fe $10
	pop af                                           ; $702b: $f1
	add b                                            ; $702c: $80
	ld [bc], a                                       ; $702d: $02
	adc b                                            ; $702e: $88
	add b                                            ; $702f: $80
	ld [bc], a                                       ; $7030: $02
	add e                                            ; $7031: $83
	db $fc                                           ; $7032: $fc
	ret nz                                           ; $7033: $c0

	ld h, h                                          ; $7034: $64
	ldh [$63], a                                     ; $7035: $e0 $63
	db $fc                                           ; $7037: $fc
	ret nz                                           ; $7038: $c0

	ld h, l                                          ; $7039: $65
	reti                                             ; $703a: $d9


	inc bc                                           ; $703b: $03
	db $e4                                           ; $703c: $e4
	nop                                              ; $703d: $00
	ld d, a                                          ; $703e: $57
	cp $09                                           ; $703f: $fe $09
	pop af                                           ; $7041: $f1
	add b                                            ; $7042: $80
	ld [bc], a                                       ; $7043: $02
	adc b                                            ; $7044: $88
	ei                                               ; $7045: $fb
	add c                                            ; $7046: $81
	nop                                              ; $7047: $00
	ret z                                            ; $7048: $c8

	jp nc, Jump_082_4007                             ; $7049: $d2 $07 $40

	add c                                            ; $704c: $81
	nop                                              ; $704d: $00
	ret z                                            ; $704e: $c8

	db $e4                                           ; $704f: $e4
	nop                                              ; $7050: $00
	inc bc                                           ; $7051: $03
	nop                                              ; $7052: $00
	add hl, bc                                       ; $7053: $09
	ccf                                              ; $7054: $3f
	pop bc                                           ; $7055: $c1
	ld e, e                                          ; $7056: $5b
	ldh [rP1], a                                     ; $7057: $e0 $00
	adc c                                            ; $7059: $89

jr_082_705a:
	ei                                               ; $705a: $fb
	pop af                                           ; $705b: $f1
	add b                                            ; $705c: $80
	ld [bc], a                                       ; $705d: $02
	add e                                            ; $705e: $83
	dec b                                            ; $705f: $05
	ret nc                                           ; $7060: $d0

	add e                                            ; $7061: $83
	ld [bc], a                                       ; $7062: $02
	add h                                            ; $7063: $84
	rst SubAFromDE                                          ; $7064: $df
	pop bc                                           ; $7065: $c1
	cp b                                             ; $7066: $b8
	ret nc                                           ; $7067: $d0

	add b                                            ; $7068: $80
	and b                                            ; $7069: $a0
	ld bc, $1dc1                                     ; $706a: $01 $c1 $1d
	add e                                            ; $706d: $83
	nop                                              ; $706e: $00
	ld [hl], $83                                     ; $706f: $36 $83
	ld [bc], a                                       ; $7071: $02
	add h                                            ; $7072: $84
	ei                                               ; $7073: $fb
	db $fc                                           ; $7074: $fc
	add b                                            ; $7075: $80
	and b                                            ; $7076: $a0
	ld bc, $0ad0                                     ; $7077: $01 $d0 $0a
	ret nz                                           ; $707a: $c0

	ld h, $da                                        ; $707b: $26 $da
	add e                                            ; $707d: $83
	nop                                              ; $707e: $00
	ld [hl], $00                                     ; $707f: $36 $00
	add b                                            ; $7081: $80
	and b                                            ; $7082: $a0
	nop                                              ; $7083: $00
	ret nc                                           ; $7084: $d0

	add h                                            ; $7085: $84
	nop                                              ; $7086: $00
	or e                                             ; $7087: $b3
	ldh [rAUD3HIGH], a                               ; $7088: $e0 $1e
	ret nc                                           ; $708a: $d0

	adc a                                            ; $708b: $8f
	nop                                              ; $708c: $00
	cp b                                             ; $708d: $b8
	ldh [rAUD2HIGH], a                               ; $708e: $e0 $19
	push hl                                          ; $7090: $e5
	nop                                              ; $7091: $00
	jr nz, @-$26                                     ; $7092: $20 $d8

	add hl, bc                                       ; $7094: $09
	ld c, e                                          ; $7095: $4b
	pop bc                                           ; $7096: $c1
	ld e, e                                          ; $7097: $5b
	ret nc                                           ; $7098: $d0

	add d                                            ; $7099: $82
	ld bc, $d4a3                                     ; $709a: $01 $a3 $d4
	ldh [rP1], a                                     ; $709d: $e0 $00
	ld b, e                                          ; $709f: $43
	pop bc                                           ; $70a0: $c1
	cp b                                             ; $70a1: $b8
	ret nc                                           ; $70a2: $d0

	add b                                            ; $70a3: $80
	and b                                            ; $70a4: $a0
	ld [bc], a                                       ; $70a5: $02
	pop bc                                           ; $70a6: $c1
	ld e, $83                                        ; $70a7: $1e $83
	nop                                              ; $70a9: $00
	ld [hl], $83                                     ; $70aa: $36 $83
	ld [bc], a                                       ; $70ac: $02
	add h                                            ; $70ad: $84
	ei                                               ; $70ae: $fb
	db $fc                                           ; $70af: $fc
	add b                                            ; $70b0: $80
	and b                                            ; $70b1: $a0
	ld [bc], a                                       ; $70b2: $02
	ret nc                                           ; $70b3: $d0

	dec e                                            ; $70b4: $1d
	ret nz                                           ; $70b5: $c0

	ld [hl+], a                                      ; $70b6: $22
	push de                                          ; $70b7: $d5
	add e                                            ; $70b8: $83

jr_082_70b9:
	nop                                              ; $70b9: $00
	ld [hl], $c0                                     ; $70ba: $36 $c0
	ld l, $d3                                        ; $70bc: $2e $d3
	add e                                            ; $70be: $83
	nop                                              ; $70bf: $00
	ld [hl], $d0                                     ; $70c0: $36 $d0
	add d                                            ; $70c2: $82
	ld bc, $c1a3                                     ; $70c3: $01 $a3 $c1
	ld h, e                                          ; $70c6: $63
	nop                                              ; $70c7: $00
	add b                                            ; $70c8: $80
	ld bc, $d08b                                     ; $70c9: $01 $8b $d0
	adc a                                            ; $70cc: $8f
	ld bc, $8393                                     ; $70cd: $01 $93 $83
	nop                                              ; $70d0: $00
	ld [hl], $c0                                     ; $70d1: $36 $c0
	ld h, $e0                                        ; $70d3: $26 $e0
	jr z, jr_082_705a                                ; $70d5: $28 $83

	nop                                              ; $70d7: $00
	ld [hl], $00                                     ; $70d8: $36 $00
	add b                                            ; $70da: $80
	ld [bc], a                                       ; $70db: $02
	adc b                                            ; $70dc: $88
	push hl                                          ; $70dd: $e5
	nop                                              ; $70de: $00
	jr nz, jr_082_70b9                               ; $70df: $20 $d8

	add hl, sp                                       ; $70e1: $39
	ret nz                                           ; $70e2: $c0

	dec bc                                           ; $70e3: $0b
	db $e3                                           ; $70e4: $e3
	nop                                              ; $70e5: $00
	db $10                                           ; $70e6: $10
	pop bc                                           ; $70e7: $c1
	ld d, l                                          ; $70e8: $55
	pop de                                           ; $70e9: $d1
	ret nz                                           ; $70ea: $c0

	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	ld bc, $09c0                                     ; $70ed: $01 $c0 $09
	db $e3                                           ; $70f0: $e3
	nop                                              ; $70f1: $00
	ld h, e                                          ; $70f2: $63
	or c                                             ; $70f3: $b1
	ld d, h                                          ; $70f4: $54
	ld b, $c0                                        ; $70f5: $06 $c0
	ld bc, $22a0                                     ; $70f7: $01 $a0 $22
	nop                                              ; $70fa: $00
	dec b                                            ; $70fb: $05
	xor d                                            ; $70fc: $aa
	ld b, $c0                                        ; $70fd: $06 $c0
	ld bc, $23a0                                     ; $70ff: $01 $a0 $23
	nop                                              ; $7102: $00
	rla                                              ; $7103: $17
	rst $38                                          ; $7104: $ff
	ld b, $c0                                        ; $7105: $06 $c0
	ld bc, $24a0                                     ; $7107: $01 $a0 $24
	nop                                              ; $710a: $00
	jr nc, @-$03                                     ; $710b: $30 $fb

	cp $07                                           ; $710d: $fe $07
	add b                                            ; $710f: $80
	nop                                              ; $7110: $00
	set 7, h                                         ; $7111: $cb $fc
	ret nz                                           ; $7113: $c0

	ld h, a                                          ; $7114: $67
	ret nc                                           ; $7115: $d0

	inc b                                            ; $7116: $04
	ld b, b                                          ; $7117: $40
	add b                                            ; $7118: $80
	nop                                              ; $7119: $00
	rrc c                                            ; $711a: $cb $09
	dec l                                            ; $711c: $2d
	pop bc                                           ; $711d: $c1
	cp b                                             ; $711e: $b8
	ret nc                                           ; $711f: $d0

	add b                                            ; $7120: $80
	and b                                            ; $7121: $a0

jr_082_7122:
	inc bc                                           ; $7122: $03
	pop bc                                           ; $7123: $c1
	rra                                              ; $7124: $1f
	add e                                            ; $7125: $83
	nop                                              ; $7126: $00
	ld [hl], $60                                     ; $7127: $36 $60
	db $fc                                           ; $7129: $fc
	add b                                            ; $712a: $80
	and b                                            ; $712b: $a0
	inc bc                                           ; $712c: $03
	ret nc                                           ; $712d: $d0

	ld b, $c0                                        ; $712e: $06 $c0
	ld h, $da                                        ; $7130: $26 $da
	add e                                            ; $7132: $83
	nop                                              ; $7133: $00
	ld [hl], $04                                     ; $7134: $36 $04
	jr nz, jr_082_70b9                               ; $7136: $20 $81

	ld bc, $d091                                     ; $7138: $01 $91 $d0
	add h                                            ; $713b: $84
	nop                                              ; $713c: $00
	or e                                             ; $713d: $b3
	ldh [rAUD3HIGH], a                               ; $713e: $e0 $1e
	ret nc                                           ; $7140: $d0

	adc a                                            ; $7141: $8f
	nop                                              ; $7142: $00
	cp b                                             ; $7143: $b8
	ldh [rAUD2HIGH], a                               ; $7144: $e0 $19
	push hl                                          ; $7146: $e5
	nop                                              ; $7147: $00
	jr nz, jr_082_7122                               ; $7148: $20 $d8

	ldh a, [c]                                       ; $714a: $f2
	ld b, $09                                        ; $714b: $06 $09
	ld a, $d0                                        ; $714d: $3e $d0
	adc e                                            ; $714f: $8b
	nop                                              ; $7150: $00
	inc c                                            ; $7151: $0c
	or b                                             ; $7152: $b0
	ld bc, $3cc1                                     ; $7153: $01 $c1 $3c
	pop bc                                           ; $7156: $c1
	ld e, c                                          ; $7157: $59
	db $e3                                           ; $7158: $e3
	nop                                              ; $7159: $00
	ld d, l                                          ; $715a: $55
	ret nz                                           ; $715b: $c0

	ld bc, $01a0                                     ; $715c: $01 $a0 $01
	nop                                              ; $715f: $00
	ld bc, $8041                                     ; $7160: $01 $41 $80
	ld [bc], a                                       ; $7163: $02
	adc c                                            ; $7164: $89
	add b                                            ; $7165: $80
	and b                                            ; $7166: $a0
	nop                                              ; $7167: $00
	ld b, d                                          ; $7168: $42
	add b                                            ; $7169: $80
	ld [bc], a                                       ; $716a: $02
	adc d                                            ; $716b: $8a
	add b                                            ; $716c: $80
	ld [bc], a                                       ; $716d: $02
	adc e                                            ; $716e: $8b
	add b                                            ; $716f: $80
	ld [bc], a                                       ; $7170: $02
	adc h                                            ; $7171: $8c
	ld b, d                                          ; $7172: $42
	add b                                            ; $7173: $80
	and b                                            ; $7174: $a0
	ld bc, $a080                                     ; $7175: $01 $80 $a0
	ld [bc], a                                       ; $7178: $02
	add b                                            ; $7179: $80
	and b                                            ; $717a: $a0
	inc bc                                           ; $717b: $03
	ld b, e                                          ; $717c: $43
	add b                                            ; $717d: $80
	and b                                            ; $717e: $a0
	inc b                                            ; $717f: $04
	add b                                            ; $7180: $80
	and b                                            ; $7181: $a0
	dec b                                            ; $7182: $05
	add b                                            ; $7183: $80
	and b                                            ; $7184: $a0
	ld b, $80                                        ; $7185: $06 $80
	and b                                            ; $7187: $a0
	rlca                                             ; $7188: $07
	db $e4                                           ; $7189: $e4
	nop                                              ; $718a: $00
	ld [bc], a                                       ; $718b: $02
	add hl, bc                                       ; $718c: $09
	ret nz                                           ; $718d: $c0

	ret z                                            ; $718e: $c8

	db $fd                                           ; $718f: $fd
	ret nz                                           ; $7190: $c0

	push bc                                          ; $7191: $c5
	adc e                                            ; $7192: $8b
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	ld [bc], a                                       ; $7195: $02
	or b                                             ; $7196: $b0
	rrca                                             ; $7197: $0f
	ld l, $c0                                        ; $7198: $2e $c0
	ld c, d                                          ; $719a: $4a
	ret nc                                           ; $719b: $d0

	add d                                            ; $719c: $82
	ret nz                                           ; $719d: $c0

	add b                                            ; $719e: $80
	ld bc, $06d3                                     ; $719f: $01 $d3 $06
	ret nz                                           ; $71a2: $c0

	ld bc, $01a0                                     ; $71a3: $01 $a0 $01
	nop                                              ; $71a6: $00
	dec b                                            ; $71a7: $05
	ld bc, $06d2                                     ; $71a8: $01 $d2 $06
	ret nz                                           ; $71ab: $c0

	ld bc, $01a0                                     ; $71ac: $01 $a0 $01
	nop                                              ; $71af: $00
	inc de                                           ; $71b0: $13
	ld bc, $06d1                                     ; $71b1: $01 $d1 $06
	ret nz                                           ; $71b4: $c0

	ld bc, $01a0                                     ; $71b5: $01 $a0 $01
	nop                                              ; $71b8: $00
	dec e                                            ; $71b9: $1d
	ld h, b                                          ; $71ba: $60
	add b                                            ; $71bb: $80
	nop                                              ; $71bc: $00
	ld l, l                                          ; $71bd: $6d
	inc b                                            ; $71be: $04
	push hl                                          ; $71bf: $e5
	scf                                              ; $71c0: $37
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	inc bc                                           ; $71c3: $03
	db $e4                                           ; $71c4: $e4
	nop                                              ; $71c5: $00
	sub d                                            ; $71c6: $92
	ld [bc], a                                       ; $71c7: $02
	or b                                             ; $71c8: $b0
	ld c, $2e                                        ; $71c9: $0e $2e
	ret nz                                           ; $71cb: $c0

	ld c, d                                          ; $71cc: $4a
	pop de                                           ; $71cd: $d1
	add d                                            ; $71ce: $82
	ret nz                                           ; $71cf: $c0

	add b                                            ; $71d0: $80
	ld bc, $06d3                                     ; $71d1: $01 $d3 $06
	ret nz                                           ; $71d4: $c0

	ld bc, $01a0                                     ; $71d5: $01 $a0 $01
	nop                                              ; $71d8: $00
	ld h, $01                                        ; $71d9: $26 $01
	jp nc, $c006                                     ; $71db: $d2 $06 $c0

	ld bc, $01a0                                     ; $71de: $01 $a0 $01
	nop                                              ; $71e1: $00
	ld [hl-], a                                      ; $71e2: $32
	ld bc, $06d1                                     ; $71e3: $01 $d1 $06
	ret nz                                           ; $71e6: $c0

	ld bc, $01a0                                     ; $71e7: $01 $a0 $01
	nop                                              ; $71ea: $00
	ld b, b                                          ; $71eb: $40
	ld h, b                                          ; $71ec: $60
	add b                                            ; $71ed: $80
	nop                                              ; $71ee: $00
	ld l, a                                          ; $71ef: $6f
	inc b                                            ; $71f0: $04
	push hl                                          ; $71f1: $e5
	add hl, sp                                       ; $71f2: $39
	ld [bc], a                                       ; $71f3: $02
	and c                                            ; $71f4: $a1
	inc bc                                           ; $71f5: $03
	db $e4                                           ; $71f6: $e4
	nop                                              ; $71f7: $00
	pop hl                                           ; $71f8: $e1
	ld [bc], a                                       ; $71f9: $02
	or b                                             ; $71fa: $b0
	db $10                                           ; $71fb: $10
	ld l, $c0                                        ; $71fc: $2e $c0
	ld c, d                                          ; $71fe: $4a
	jp nc, $c082                                     ; $71ff: $d2 $82 $c0

	add b                                            ; $7202: $80
	ld bc, $06d3                                     ; $7203: $01 $d3 $06
	ret nz                                           ; $7206: $c0

	ld bc, $01a0                                     ; $7207: $01 $a0 $01
	nop                                              ; $720a: $00
	ld c, h                                          ; $720b: $4c
	ld bc, $06d2                                     ; $720c: $01 $d2 $06
	ret nz                                           ; $720f: $c0

	ld bc, $01a0                                     ; $7210: $01 $a0 $01
	nop                                              ; $7213: $00
	ld d, [hl]                                       ; $7214: $56
	ld bc, $06d1                                     ; $7215: $01 $d1 $06
	ret nz                                           ; $7218: $c0

	ld bc, $01a0                                     ; $7219: $01 $a0 $01
	nop                                              ; $721c: $00
	ld h, b                                          ; $721d: $60
	ld h, b                                          ; $721e: $60
	add b                                            ; $721f: $80
	nop                                              ; $7220: $00
	ld [hl], b                                       ; $7221: $70
	inc b                                            ; $7222: $04
	push hl                                          ; $7223: $e5
	dec sp                                           ; $7224: $3b
	inc c                                            ; $7225: $0c
	ld a, [de]                                       ; $7226: $1a
	inc bc                                           ; $7227: $03
	db $e4                                           ; $7228: $e4
	nop                                              ; $7229: $00
	cp $02                                           ; $722a: $fe $02
	or b                                             ; $722c: $b0
	ld de, $c023                                     ; $722d: $11 $23 $c0
	ld c, d                                          ; $7230: $4a
	db $d3                                           ; $7231: $d3
	ld h, b                                          ; $7232: $60
	db $fc                                           ; $7233: $fc
	ret nz                                           ; $7234: $c0

	add b                                            ; $7235: $80
	jp nc, $c006                                     ; $7236: $d2 $06 $c0

	ld bc, $01a0                                     ; $7239: $01 $a0 $01
	nop                                              ; $723c: $00
	ld l, d                                          ; $723d: $6a
	ld b, $c0                                        ; $723e: $06 $c0
	ld bc, $01a0                                     ; $7240: $01 $a0 $01
	nop                                              ; $7243: $00
	ld [hl], e                                       ; $7244: $73
	ld h, b                                          ; $7245: $60
	add b                                            ; $7246: $80
	nop                                              ; $7247: $00
	ld [hl], d                                       ; $7248: $72
	inc b                                            ; $7249: $04
	push hl                                          ; $724a: $e5
	dec [hl]                                         ; $724b: $35
	add hl, bc                                       ; $724c: $09
	inc de                                           ; $724d: $13
	inc bc                                           ; $724e: $03
	db $e4                                           ; $724f: $e4
	ld bc, $003c                                     ; $7250: $01 $3c $00
	inc bc                                           ; $7253: $03
	db $e4                                           ; $7254: $e4
	ld bc, $099a                                     ; $7255: $01 $9a $09
	ld a, a                                          ; $7258: $7f
	add d                                            ; $7259: $82
	ret nz                                           ; $725a: $c0

	add b                                            ; $725b: $80
	ld bc, $21d3                                     ; $725c: $01 $d3 $21
	pop bc                                           ; $725f: $c1
	ld e, c                                          ; $7260: $59
	db $e3                                           ; $7261: $e3
	nop                                              ; $7262: $00
	ld d, a                                          ; $7263: $57
	ret nz                                           ; $7264: $c0

	ld bc, $01a0                                     ; $7265: $01 $a0 $01
	nop                                              ; $7268: $00
	ld a, l                                          ; $7269: $7d
	pop hl                                           ; $726a: $e1
	ld [bc], a                                       ; $726b: $02
	rlca                                             ; $726c: $07
	cp a                                             ; $726d: $bf
	ret nz                                           ; $726e: $c0

	ld bc, $01a0                                     ; $726f: $01 $a0 $01
	nop                                              ; $7272: $00
	add a                                            ; $7273: $87
	pop hl                                           ; $7274: $e1
	ld [hl-], a                                      ; $7275: $32
	nop                                              ; $7276: $00
	db $dd                                           ; $7277: $dd
	pop bc                                           ; $7278: $c1
	ld d, [hl]                                       ; $7279: $56
	ret nz                                           ; $727a: $c0

	ld bc, $01a0                                     ; $727b: $01 $a0 $01
	nop                                              ; $727e: $00
	adc h                                            ; $727f: $8c
	ld bc, $0bd2                                     ; $7280: $01 $d2 $0b
	pop bc                                           ; $7283: $c1
	ld e, c                                          ; $7284: $59
	db $e3                                           ; $7285: $e3
	nop                                              ; $7286: $00
	ld d, [hl]                                       ; $7287: $56
	ret nz                                           ; $7288: $c0

	ld bc, $01a0                                     ; $7289: $01 $a0 $01
	nop                                              ; $728c: $00
	adc [hl]                                         ; $728d: $8e
	ld bc, $0bd1                                     ; $728e: $01 $d1 $0b
	pop bc                                           ; $7291: $c1
	ld e, c                                          ; $7292: $59
	db $e3                                           ; $7293: $e3
	nop                                              ; $7294: $00
	ld d, [hl]                                       ; $7295: $56
	ret nz                                           ; $7296: $c0

	ld bc, $01a0                                     ; $7297: $01 $a0 $01
	nop                                              ; $729a: $00
	sub h                                            ; $729b: $94
	db $fd                                           ; $729c: $fd
	ld a, [hl-]                                      ; $729d: $3a
	ret nz                                           ; $729e: $c0

	ld e, d                                          ; $729f: $5a
	ld bc, $04d0                                     ; $72a0: $01 $d0 $04
	push hl                                          ; $72a3: $e5
	dec [hl]                                         ; $72a4: $35
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	ld bc, $04d1                                     ; $72a7: $01 $d1 $04
	push hl                                          ; $72aa: $e5
	dec [hl]                                         ; $72ab: $35
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	ld bc, $04d2                                     ; $72ae: $01 $d2 $04
	push hl                                          ; $72b1: $e5
	add hl, sp                                       ; $72b2: $39
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	ld bc, $04d3                                     ; $72b5: $01 $d3 $04
	push hl                                          ; $72b8: $e5
	dec sp                                           ; $72b9: $3b
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	ld bc, $04d7                                     ; $72bc: $01 $d7 $04
	push hl                                          ; $72bf: $e5
	dec a                                            ; $72c0: $3d
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	ld bc, $04d8                                     ; $72c3: $01 $d8 $04
	push hl                                          ; $72c6: $e5
	ccf                                              ; $72c7: $3f
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	ld bc, $04da                                     ; $72ca: $01 $da $04
	push hl                                          ; $72cd: $e5
	ld b, c                                          ; $72ce: $41
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	ld bc, $04dd                                     ; $72d1: $01 $dd $04
	push hl                                          ; $72d4: $e5
	ld b, e                                          ; $72d5: $43
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	add hl, bc                                       ; $72d8: $09
	ld c, l                                          ; $72d9: $4d
	ld h, b                                          ; $72da: $60
	db $fc                                           ; $72db: $fc
	ret nz                                           ; $72dc: $c0

	add b                                            ; $72dd: $80
	pop de                                           ; $72de: $d1
	dec b                                            ; $72df: $05
	pop bc                                           ; $72e0: $c1
	ld e, c                                          ; $72e1: $59
	db $e3                                           ; $72e2: $e3
	nop                                              ; $72e3: $00
	ld b, d                                          ; $72e4: $42
	dec b                                            ; $72e5: $05
	pop bc                                           ; $72e6: $c1
	ld e, c                                          ; $72e7: $59
	db $e3                                           ; $72e8: $e3
	nop                                              ; $72e9: $00
	ld e, h                                          ; $72ea: $5c
	db $fd                                           ; $72eb: $fd
	ld a, [hl-]                                      ; $72ec: $3a
	ret nz                                           ; $72ed: $c0

	ld e, d                                          ; $72ee: $5a
	ld bc, $04d0                                     ; $72ef: $01 $d0 $04
	push hl                                          ; $72f2: $e5
	dec [hl]                                         ; $72f3: $35
	ld [bc], a                                       ; $72f4: $02
	sub d                                            ; $72f5: $92
	ld bc, $04d1                                     ; $72f6: $01 $d1 $04
	push hl                                          ; $72f9: $e5
	scf                                              ; $72fa: $37
	inc bc                                           ; $72fb: $03
	rst SubAFromBC                                          ; $72fc: $e7
	ld bc, $04d2                                     ; $72fd: $01 $d2 $04
	push hl                                          ; $7300: $e5
	dec [hl]                                         ; $7301: $35
	ld [bc], a                                       ; $7302: $02
	sub d                                            ; $7303: $92
	ld bc, $04d3                                     ; $7304: $01 $d3 $04
	push hl                                          ; $7307: $e5
	dec sp                                           ; $7308: $3b
	dec b                                            ; $7309: $05
	ld hl, $d701                                     ; $730a: $21 $01 $d7
	inc b                                            ; $730d: $04
	push hl                                          ; $730e: $e5
	dec a                                            ; $730f: $3d
	ld [bc], a                                       ; $7310: $02
	ld d, h                                          ; $7311: $54
	ld bc, $04d8                                     ; $7312: $01 $d8 $04
	push hl                                          ; $7315: $e5
	ccf                                              ; $7316: $3f
	inc bc                                           ; $7317: $03
	ld bc, $da01                                     ; $7318: $01 $01 $da
	inc b                                            ; $731b: $04
	push hl                                          ; $731c: $e5
	ld b, c                                          ; $731d: $41
	ld [bc], a                                       ; $731e: $02
	dec hl                                           ; $731f: $2b
	ld bc, $04dd                                     ; $7320: $01 $dd $04
	push hl                                          ; $7323: $e5
	ld b, e                                          ; $7324: $43
	ld bc, $09f1                                     ; $7325: $01 $f1 $09
	ld h, e                                          ; $7328: $63
	add d                                            ; $7329: $82
	ret nz                                           ; $732a: $c0

	add b                                            ; $732b: $80
	ld bc, $05d1                                     ; $732c: $01 $d1 $05
	pop bc                                           ; $732f: $c1
	ld e, c                                          ; $7330: $59
	db $e3                                           ; $7331: $e3
	nop                                              ; $7332: $00
	ld e, c                                          ; $7333: $59
	ld bc, $0bd2                                     ; $7334: $01 $d2 $0b
	pop bc                                           ; $7337: $c1
	ld e, c                                          ; $7338: $59
	db $e3                                           ; $7339: $e3
	nop                                              ; $733a: $00
	ld e, d                                          ; $733b: $5a
	ret nz                                           ; $733c: $c0

	ld bc, $01a0                                     ; $733d: $01 $a0 $01
	nop                                              ; $7340: $00
	sbc b                                            ; $7341: $98
	ld bc, $0bd3                                     ; $7342: $01 $d3 $0b
	pop bc                                           ; $7345: $c1
	ld e, c                                          ; $7346: $59
	db $e3                                           ; $7347: $e3
	nop                                              ; $7348: $00
	ld e, b                                          ; $7349: $58
	ret nz                                           ; $734a: $c0

	ld bc, $01a0                                     ; $734b: $01 $a0 $01
	nop                                              ; $734e: $00
	adc [hl]                                         ; $734f: $8e
	db $fd                                           ; $7350: $fd
	ld a, [hl-]                                      ; $7351: $3a
	ret nz                                           ; $7352: $c0

	ld e, d                                          ; $7353: $5a
	ld bc, $04d0                                     ; $7354: $01 $d0 $04
	push hl                                          ; $7357: $e5
	dec [hl]                                         ; $7358: $35
	ld b, $0c                                        ; $7359: $06 $0c
	ld bc, $04d1                                     ; $735b: $01 $d1 $04
	push hl                                          ; $735e: $e5
	scf                                              ; $735f: $37
	ld a, [bc]                                       ; $7360: $0a
	ld l, e                                          ; $7361: $6b
	ld bc, $04d2                                     ; $7362: $01 $d2 $04
	push hl                                          ; $7365: $e5
	add hl, sp                                       ; $7366: $39
	dec b                                            ; $7367: $05
	cp e                                             ; $7368: $bb
	ld bc, $04d3                                     ; $7369: $01 $d3 $04
	push hl                                          ; $736c: $e5
	dec [hl]                                         ; $736d: $35
	ld b, $0c                                        ; $736e: $06 $0c
	ld bc, $04d7                                     ; $7370: $01 $d7 $04
	push hl                                          ; $7373: $e5
	dec a                                            ; $7374: $3d
	dec b                                            ; $7375: $05
	ld l, a                                          ; $7376: $6f
	ld bc, $04d8                                     ; $7377: $01 $d8 $04
	push hl                                          ; $737a: $e5
	ccf                                              ; $737b: $3f
	dec b                                            ; $737c: $05
	cp $01                                           ; $737d: $fe $01
	jp c, $e504                                      ; $737f: $da $04 $e5

	ld b, c                                          ; $7382: $41
	inc b                                            ; $7383: $04
	ld a, d                                          ; $7384: $7a
	ld bc, $04dd                                     ; $7385: $01 $dd $04
	push hl                                          ; $7388: $e5
	ld b, e                                          ; $7389: $43
	inc b                                            ; $738a: $04
	xor c                                            ; $738b: $a9
	add hl, bc                                       ; $738c: $09
	ld h, c                                          ; $738d: $61
	pop bc                                           ; $738e: $c1
	ld e, c                                          ; $738f: $59
	db $e3                                           ; $7390: $e3
	nop                                              ; $7391: $00
	ld d, a                                          ; $7392: $57
	and b                                            ; $7393: $a0
	add b                                            ; $7394: $80
	and b                                            ; $7395: $a0
	ld [$0600], sp                                   ; $7396: $08 $00 $06
	ret nz                                           ; $7399: $c0

	ld bc, $01a0                                     ; $739a: $01 $a0 $01
	nop                                              ; $739d: $00
	and d                                            ; $739e: $a2
	rst $38                                          ; $739f: $ff
	ld b, $c0                                        ; $73a0: $06 $c0
	ld bc, $01a0                                     ; $73a2: $01 $a0 $01
	nop                                              ; $73a5: $00
	xor l                                            ; $73a6: $ad
	pop hl                                           ; $73a7: $e1
	ld [hl-], a                                      ; $73a8: $32
	ld bc, $c17c                                     ; $73a9: $01 $7c $c1
	ld d, [hl]                                       ; $73ac: $56
	ret nz                                           ; $73ad: $c0

	ld bc, $01a0                                     ; $73ae: $01 $a0 $01
	nop                                              ; $73b1: $00
	or d                                             ; $73b2: $b2
	db $fd                                           ; $73b3: $fd
	ld a, [hl-]                                      ; $73b4: $3a
	ret nz                                           ; $73b5: $c0

	ld e, d                                          ; $73b6: $5a
	ld bc, $04d0                                     ; $73b7: $01 $d0 $04
	push hl                                          ; $73ba: $e5
	dec [hl]                                         ; $73bb: $35
	dec bc                                           ; $73bc: $0b
	di                                               ; $73bd: $f3
	ld bc, $04d1                                     ; $73be: $01 $d1 $04
	push hl                                          ; $73c1: $e5
	scf                                              ; $73c2: $37
	ld c, $a0                                        ; $73c3: $0e $a0
	ld bc, $04d2                                     ; $73c5: $01 $d2 $04
	push hl                                          ; $73c8: $e5
	add hl, sp                                       ; $73c9: $39
	ld [$01a3], sp                                   ; $73ca: $08 $a3 $01
	db $d3                                           ; $73cd: $d3
	inc b                                            ; $73ce: $04
	push hl                                          ; $73cf: $e5
	dec sp                                           ; $73d0: $3b
	db $10                                           ; $73d1: $10
	and d                                            ; $73d2: $a2
	ld bc, $04d7                                     ; $73d3: $01 $d7 $04
	push hl                                          ; $73d6: $e5
	dec a                                            ; $73d7: $3d
	ld [$0172], sp                                   ; $73d8: $08 $72 $01
	ret c                                            ; $73db: $d8

	inc b                                            ; $73dc: $04
	push hl                                          ; $73dd: $e5
	ccf                                              ; $73de: $3f
	add hl, bc                                       ; $73df: $09
	inc c                                            ; $73e0: $0c
	ld bc, $04da                                     ; $73e1: $01 $da $04
	push hl                                          ; $73e4: $e5
	ld b, c                                          ; $73e5: $41
	rlca                                             ; $73e6: $07
	db $db                                           ; $73e7: $db
	ld bc, $04dd                                     ; $73e8: $01 $dd $04
	push hl                                          ; $73eb: $e5
	ld b, e                                          ; $73ec: $43
	ld b, $9a                                        ; $73ed: $06 $9a
	add hl, bc                                       ; $73ef: $09
	add hl, sp                                       ; $73f0: $39
	db $fd                                           ; $73f1: $fd
	scf                                              ; $73f2: $37
	ret nz                                           ; $73f3: $c0

	ld b, d                                          ; $73f4: $42
	ld bc, $03d0                                     ; $73f5: $01 $d0 $03
	db $e4                                           ; $73f8: $e4
	nop                                              ; $73f9: $00
	ld sp, $d101                                     ; $73fa: $31 $01 $d1
	inc bc                                           ; $73fd: $03
	db $e4                                           ; $73fe: $e4
	nop                                              ; $73ff: $00
	call c, wCurrMenuOption                                    ; $7400: $dc $01 $d2
	inc bc                                           ; $7403: $03
	db $e4                                           ; $7404: $e4
	ld bc, $0138                                     ; $7405: $01 $38 $01
	db $d3                                           ; $7408: $d3
	inc bc                                           ; $7409: $03
	db $e4                                           ; $740a: $e4
	ld bc, $0184                                     ; $740b: $01 $84 $01
	rst SubAFromHL                                          ; $740e: $d7
	inc bc                                           ; $740f: $03
	db $e4                                           ; $7410: $e4
	ld bc, $01d4                                     ; $7411: $01 $d4 $01
	ret c                                            ; $7414: $d8

	inc bc                                           ; $7415: $03
	db $e4                                           ; $7416: $e4
	ld [bc], a                                       ; $7417: $02
	ld l, $01                                        ; $7418: $2e $01
	jp c, $e403                                      ; $741a: $da $03 $e4

	ld [bc], a                                       ; $741d: $02
	add d                                            ; $741e: $82
	ld bc, $03dd                                     ; $741f: $01 $dd $03
	db $e4                                           ; $7422: $e4
	ld [bc], a                                       ; $7423: $02
	call c, $0300                                    ; $7424: $dc $00 $03
	db $e4                                           ; $7427: $e4
	inc bc                                           ; $7428: $03
	ld b, e                                          ; $7429: $43
	inc l                                            ; $742a: $2c
	db $10                                           ; $742b: $10
	ret nz                                           ; $742c: $c0

	ld bc, $02a0                                     ; $742d: $01 $a0 $02
	nop                                              ; $7430: $00
	or h                                             ; $7431: $b4
	pop hl                                           ; $7432: $e1
	ld [bc], a                                       ; $7433: $02
	nop                                              ; $7434: $00
	ret nz                                           ; $7435: $c0

	ret nz                                           ; $7436: $c0

	ld bc, $01a0                                     ; $7437: $01 $a0 $01
	nop                                              ; $743a: $00
	or a                                             ; $743b: $b7
	ld e, e                                          ; $743c: $5b
	add b                                            ; $743d: $80
	ld [bc], a                                       ; $743e: $02
	adc l                                            ; $743f: $8d
	jr nz, jr_082_7448                               ; $7440: $20 $06

	ret nz                                           ; $7442: $c0

	ld bc, $02a0                                     ; $7443: $01 $a0 $02
	nop                                              ; $7446: $00
	cp h                                             ; $7447: $bc

jr_082_7448:
	nop                                              ; $7448: $00
	ld d, b                                          ; $7449: $50
	add b                                            ; $744a: $80
	ld [bc], a                                       ; $744b: $02
	adc [hl]                                         ; $744c: $8e
	jr nz, @+$08                                     ; $744d: $20 $06

	ret nz                                           ; $744f: $c0

	ld bc, $02a0                                     ; $7450: $01 $a0 $02
	nop                                              ; $7453: $00
	jp nz, Jump_082_4300                             ; $7454: $c2 $00 $43

	add b                                            ; $7457: $80
	ld [bc], a                                       ; $7458: $02
	adc a                                            ; $7459: $8f
	jr nz, jr_082_7462                               ; $745a: $20 $06

	ret nz                                           ; $745c: $c0

	ld bc, $02a0                                     ; $745d: $01 $a0 $02
	nop                                              ; $7460: $00
	ret z                                            ; $7461: $c8

jr_082_7462:
	nop                                              ; $7462: $00
	ld [hl], $80                                     ; $7463: $36 $80
	nop                                              ; $7465: $00
	ld [hl], d                                       ; $7466: $72
	jr nz, @+$08                                     ; $7467: $20 $06

	ret nz                                           ; $7469: $c0

	ld bc, $02a0                                     ; $746a: $01 $a0 $02
	nop                                              ; $746d: $00
	call $2900                                       ; $746e: $cd $00 $29
	pop de                                           ; $7471: $d1
	jr z, @+$08                                      ; $7472: $28 $06

	ret nz                                           ; $7474: $c0

	ld bc, $02a0                                     ; $7475: $01 $a0 $02
	nop                                              ; $7478: $00
	jp nc, $001d                                     ; $7479: $d2 $1d $00

	ret c                                            ; $747c: $d8

	add hl, bc                                       ; $747d: $09
	ld [de], a                                       ; $747e: $12
	pop hl                                           ; $747f: $e1
	ld [bc], a                                       ; $7480: $02
	inc bc                                           ; $7481: $03
	inc de                                           ; $7482: $13
	ret nz                                           ; $7483: $c0

	ld bc, $02a0                                     ; $7484: $01 $a0 $02
	nop                                              ; $7487: $00
	jp c, $02e1                                      ; $7488: $da $e1 $02

	inc bc                                           ; $748b: $03
	daa                                              ; $748c: $27
	push hl                                          ; $748d: $e5
	ld [hl], $02                                     ; $748e: $36 $02
	ld hl, $e600                                     ; $7490: $21 $00 $e6
	add hl, bc                                       ; $7493: $09
	inc bc                                           ; $7494: $03
	ldh [rP1], a                                     ; $7495: $e0 $00
	inc hl                                           ; $7497: $23
	ld [$001f], sp                                   ; $7498: $08 $1f $00
	add sp, $09                                      ; $749b: $e8 $09
	inc d                                            ; $749d: $14
	pop hl                                           ; $749e: $e1
	ld [bc], a                                       ; $749f: $02
	inc bc                                           ; $74a0: $03
	inc de                                           ; $74a1: $13
	ret nz                                           ; $74a2: $c0

	ld bc, $02a0                                     ; $74a3: $01 $a0 $02
	nop                                              ; $74a6: $00
	db $ed                                           ; $74a7: $ed
	pop bc                                           ; $74a8: $c1
	ld e, e                                          ; $74a9: $5b
	nop                                              ; $74aa: $00
	add b                                            ; $74ab: $80
	ld [bc], a                                       ; $74ac: $02
	adc c                                            ; $74ad: $89
	push hl                                          ; $74ae: $e5
	ld [hl], $00                                     ; $74af: $36 $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	ld sp, hl                                        ; $74b3: $f9
	add hl, bc                                       ; $74b4: $09
	inc bc                                           ; $74b5: $03
	ldh [rP1], a                                     ; $74b6: $e0 $00
	ld [bc], a                                       ; $74b8: $02
	ld hl, $02e1                                     ; $74b9: $21 $e1 $02
	inc bc                                           ; $74bc: $03
	dec de                                           ; $74bd: $1b
	ret nz                                           ; $74be: $c0

	ld bc, $02a0                                     ; $74bf: $01 $a0 $02
	nop                                              ; $74c2: $00
	ei                                               ; $74c3: $fb
	pop bc                                           ; $74c4: $c1
	ld e, e                                          ; $74c5: $5b
	ret nz                                           ; $74c6: $c0

	ld bc, $01a0                                     ; $74c7: $01 $a0 $01
	ld bc, $0000                                     ; $74ca: $01 $00 $00
	add b                                            ; $74cd: $80
	and b                                            ; $74ce: $a0
	nop                                              ; $74cf: $00
	ret nz                                           ; $74d0: $c0

	inc h                                            ; $74d1: $24
	jp c, $c0d0                                      ; $74d2: $da $d0 $c0

	inc hl                                           ; $74d5: $23
	jp c, $e4d0                                      ; $74d6: $da $d0 $e4

	ld [bc], a                                       ; $74d9: $02
	sub d                                            ; $74da: $92
	jr z, @+$24                                      ; $74db: $28 $22

	ret nz                                           ; $74dd: $c0

	ld bc, $03a0                                     ; $74de: $01 $a0 $03
	ld bc, $e104                                     ; $74e1: $01 $04 $e1
	ld [bc], a                                       ; $74e4: $02
	ld bc, $c008                                     ; $74e5: $01 $08 $c0
	ld bc, $01a0                                     ; $74e8: $01 $a0 $01
	ld bc, $c008                                     ; $74eb: $01 $08 $c0
	ld bc, $03a0                                     ; $74ee: $01 $a0 $03
	ld bc, $c00e                                     ; $74f1: $01 $0e $c0
	ld bc, $01a0                                     ; $74f4: $01 $a0 $01
	ld bc, $c014                                     ; $74f7: $01 $14 $c0
	ld bc, $03a0                                     ; $74fa: $01 $a0 $03
	ld bc, $3d19                                     ; $74fd: $01 $19 $3d
	nop                                              ; $7500: $00
	add sp, $09                                      ; $7501: $e8 $09
	inc d                                            ; $7503: $14
	pop hl                                           ; $7504: $e1
	ld [bc], a                                       ; $7505: $02
	inc bc                                           ; $7506: $03
	inc de                                           ; $7507: $13
	ret nz                                           ; $7508: $c0

	ld bc, $03a0                                     ; $7509: $01 $a0 $03
	ld bc, $c126                                     ; $750c: $01 $26 $c1
	ld e, e                                          ; $750f: $5b
	nop                                              ; $7510: $00
	add b                                            ; $7511: $80
	ld [bc], a                                       ; $7512: $02
	adc d                                            ; $7513: $8a
	push hl                                          ; $7514: $e5
	jr c, jr_082_7517                                ; $7515: $38 $00

jr_082_7517:
	nop                                              ; $7517: $00
	ld bc, $092b                                     ; $7518: $01 $2b $09
	ld hl, $02e1                                     ; $751b: $21 $e1 $02
	inc bc                                           ; $751e: $03
	dec de                                           ; $751f: $1b
	ret nz                                           ; $7520: $c0

	ld bc, $03a0                                     ; $7521: $01 $a0 $03
	ld bc, $c12e                                     ; $7524: $01 $2e $c1
	ld e, e                                          ; $7527: $5b
	ret nz                                           ; $7528: $c0

	ld bc, $01a0                                     ; $7529: $01 $a0 $01
	ld bc, $0000                                     ; $752c: $01 $00 $00
	add b                                            ; $752f: $80
	and b                                            ; $7530: $a0
	ld bc, $24c0                                     ; $7531: $01 $c0 $24
	jp c, $c0d1                                      ; $7534: $da $d1 $c0

	inc hl                                           ; $7537: $23
	jp c, $e4d1                                      ; $7538: $da $d1 $e4

	ld [bc], a                                       ; $753b: $02
	jr nc, jr_082_7566                               ; $753c: $30 $28

	ld d, $c0                                        ; $753e: $16 $c0
	ld bc, $04a0                                     ; $7540: $01 $a0 $04
	ld bc, $e137                                     ; $7543: $01 $37 $e1
	ld [bc], a                                       ; $7546: $02
	ld bc, $c050                                     ; $7547: $01 $50 $c0
	ld bc, $01a0                                     ; $754a: $01 $a0 $01
	ld bc, $c03c                                     ; $754d: $01 $3c $c0
	ld bc, $04a0                                     ; $7550: $01 $a0 $04
	ld bc, $3944                                     ; $7553: $01 $44 $39
	nop                                              ; $7556: $00
	add sp, $09                                      ; $7557: $e8 $09
	db $10                                           ; $7559: $10
	ret nz                                           ; $755a: $c0

	ld bc, $04a0                                     ; $755b: $01 $a0 $04
	ld bc, $c14f                                     ; $755e: $01 $4f $c1
	ld e, e                                          ; $7561: $5b
	nop                                              ; $7562: $00
	add b                                            ; $7563: $80
	ld [bc], a                                       ; $7564: $02
	adc e                                            ; $7565: $8b

jr_082_7566:
	push hl                                          ; $7566: $e5
	ld a, [hl-]                                      ; $7567: $3a
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	ld bc, $0959                                     ; $756a: $01 $59 $09
	ld hl, $02e1                                     ; $756d: $21 $e1 $02
	inc bc                                           ; $7570: $03
	rra                                              ; $7571: $1f
	ret nz                                           ; $7572: $c0

	ld bc, $04a0                                     ; $7573: $01 $a0 $04
	ld bc, $c15d                                     ; $7576: $01 $5d $c1
	ld e, e                                          ; $7579: $5b
	ret nz                                           ; $757a: $c0

	ld bc, $01a0                                     ; $757b: $01 $a0 $01
	ld bc, $0064                                     ; $757e: $01 $64 $00
	add b                                            ; $7581: $80
	and b                                            ; $7582: $a0
	ld [bc], a                                       ; $7583: $02
	ret nz                                           ; $7584: $c0

	inc h                                            ; $7585: $24
	jp c, $c0d2                                      ; $7586: $da $d2 $c0

	inc hl                                           ; $7589: $23
	jp c, $e4d2                                      ; $758a: $da $d2 $e4

	ld bc, $28de                                     ; $758d: $01 $de $28
	ld d, $c0                                        ; $7590: $16 $c0
	ld bc, $05a0                                     ; $7592: $01 $a0 $05
	ld bc, $e167                                     ; $7595: $01 $67 $e1
	ld [bc], a                                       ; $7598: $02
	ld bc, $c098                                     ; $7599: $01 $98 $c0
	ld bc, $01a0                                     ; $759c: $01 $a0 $01
	ld bc, $c06c                                     ; $759f: $01 $6c $c0
	ld bc, $05a0                                     ; $75a2: $01 $a0 $05
	ld bc, $3d73                                     ; $75a5: $01 $73 $3d
	nop                                              ; $75a8: $00
	add sp, $09                                      ; $75a9: $e8 $09
	inc d                                            ; $75ab: $14
	pop hl                                           ; $75ac: $e1
	ld [bc], a                                       ; $75ad: $02
	inc bc                                           ; $75ae: $03
	inc de                                           ; $75af: $13
	ret nz                                           ; $75b0: $c0

	ld bc, $05a0                                     ; $75b1: $01 $a0 $05
	ld bc, $c17a                                     ; $75b4: $01 $7a $c1
	ld e, e                                          ; $75b7: $5b
	nop                                              ; $75b8: $00
	add b                                            ; $75b9: $80
	ld [bc], a                                       ; $75ba: $02
	adc h                                            ; $75bb: $8c
	push hl                                          ; $75bc: $e5
	inc a                                            ; $75bd: $3c
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	ld bc, $0981                                     ; $75c0: $01 $81 $09
	ld hl, $02e1                                     ; $75c3: $21 $e1 $02
	inc bc                                           ; $75c6: $03
	dec de                                           ; $75c7: $1b
	ret nz                                           ; $75c8: $c0

	ld bc, $05a0                                     ; $75c9: $01 $a0 $05
	ld bc, $c184                                     ; $75cc: $01 $84 $c1
	ld e, e                                          ; $75cf: $5b
	ret nz                                           ; $75d0: $c0

	ld bc, $01a0                                     ; $75d1: $01 $a0 $01
	ld bc, $0000                                     ; $75d4: $01 $00 $00
	add b                                            ; $75d7: $80
	and b                                            ; $75d8: $a0
	inc bc                                           ; $75d9: $03
	ret nz                                           ; $75da: $c0

	inc h                                            ; $75db: $24
	jp c, $c0d3                                      ; $75dc: $da $d3 $c0

	inc hl                                           ; $75df: $23
	jp c, $e4d3                                      ; $75e0: $da $d3 $e4

	ld bc, $2888                                     ; $75e3: $01 $88 $28
	ld [hl+], a                                      ; $75e6: $22
	ret nz                                           ; $75e7: $c0

	ld bc, $08a0                                     ; $75e8: $01 $a0 $08
	ld bc, $e189                                     ; $75eb: $01 $89 $e1
	ld [bc], a                                       ; $75ee: $02
	ld bc, $c0e0                                     ; $75ef: $01 $e0 $c0
	ld bc, $01a0                                     ; $75f2: $01 $a0 $01
	ld bc, $c08d                                     ; $75f5: $01 $8d $c0
	ld bc, $08a0                                     ; $75f8: $01 $a0 $08
	ld bc, $c093                                     ; $75fb: $01 $93 $c0
	ld bc, $01a0                                     ; $75fe: $01 $a0 $01
	ld bc, $c097                                     ; $7601: $01 $97 $c0
	ld bc, $08a0                                     ; $7604: $01 $a0 $08
	ld bc, $3b9b                                     ; $7607: $01 $9b $3b
	ld bc, $09a6                                     ; $760a: $01 $a6 $09
	ld [de], a                                       ; $760d: $12
	pop hl                                           ; $760e: $e1
	ld [bc], a                                       ; $760f: $02
	inc bc                                           ; $7610: $03
	inc de                                           ; $7611: $13
	ret nz                                           ; $7612: $c0

	ld bc, $08a0                                     ; $7613: $01 $a0 $08
	ld bc, $e1ac                                     ; $7616: $01 $ac $e1
	ld [bc], a                                       ; $7619: $02
	inc bc                                           ; $761a: $03
	dec de                                           ; $761b: $1b
	push hl                                          ; $761c: $e5
	ld a, $00                                        ; $761d: $3e $00
	nop                                              ; $761f: $00
	ld bc, $09bf                                     ; $7620: $01 $bf $09
	ld hl, $02e1                                     ; $7623: $21 $e1 $02
	inc bc                                           ; $7626: $03
	rra                                              ; $7627: $1f
	ret nz                                           ; $7628: $c0

	ld bc, $08a0                                     ; $7629: $01 $a0 $08
	ld bc, $c1c3                                     ; $762c: $01 $c3 $c1
	ld e, e                                          ; $762f: $5b
	ret nz                                           ; $7630: $c0

	ld bc, $01a0                                     ; $7631: $01 $a0 $01
	ld bc, $00d3                                     ; $7634: $01 $d3 $00
	add b                                            ; $7637: $80
	and b                                            ; $7638: $a0
	inc b                                            ; $7639: $04
	ret nz                                           ; $763a: $c0

	inc h                                            ; $763b: $24
	jp c, $c0d7                                      ; $763c: $da $d7 $c0

	inc hl                                           ; $763f: $23
	jp c, $e4d7                                      ; $7640: $da $d7 $e4

	ld bc, $2828                                     ; $7643: $01 $28 $28
	ld d, $c0                                        ; $7646: $16 $c0
	ld bc, $09a0                                     ; $7648: $01 $a0 $09
	ld bc, $e1db                                     ; $764b: $01 $db $e1
	ld [bc], a                                       ; $764e: $02
	ld [bc], a                                       ; $764f: $02
	db $10                                           ; $7650: $10
	ret nz                                           ; $7651: $c0

	ld bc, $01a0                                     ; $7652: $01 $a0 $01
	ld bc, $c0de                                     ; $7655: $01 $de $c0
	ld bc, $09a0                                     ; $7658: $01 $a0 $09
	ld bc, $41e6                                     ; $765b: $01 $e6 $41
	ld bc, $09f1                                     ; $765e: $01 $f1 $09
	jr @-$1d                                         ; $7661: $18 $e1

	ld [bc], a                                       ; $7663: $02
	inc bc                                           ; $7664: $03
	inc de                                           ; $7665: $13
	ret nz                                           ; $7666: $c0

	ld bc, $09a0                                     ; $7667: $01 $a0 $09
	ld bc, $e1f5                                     ; $766a: $01 $f5 $e1
	ld [bc], a                                       ; $766d: $02
	inc bc                                           ; $766e: $03
	daa                                              ; $766f: $27
	ret nz                                           ; $7670: $c0

	ld bc, $01a0                                     ; $7671: $01 $a0 $01
	ld [bc], a                                       ; $7674: $02
	ld [bc], a                                       ; $7675: $02
	push hl                                          ; $7676: $e5
	ld b, b                                          ; $7677: $40
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	ld [bc], a                                       ; $767a: $02
	ld c, $09                                        ; $767b: $0e $09
	ld hl, $02e1                                     ; $767d: $21 $e1 $02
	inc bc                                           ; $7680: $03
	rra                                              ; $7681: $1f
	ret nz                                           ; $7682: $c0

	ld bc, $09a0                                     ; $7683: $01 $a0 $09
	ld [bc], a                                       ; $7686: $02
	ld [de], a                                       ; $7687: $12
	pop bc                                           ; $7688: $c1
	ld e, e                                          ; $7689: $5b
	ret nz                                           ; $768a: $c0

	ld bc, $01a0                                     ; $768b: $01 $a0 $01
	ld bc, $0000                                     ; $768e: $01 $00 $00
	add b                                            ; $7691: $80
	and b                                            ; $7692: $a0
	dec b                                            ; $7693: $05
	ret nz                                           ; $7694: $c0

	inc h                                            ; $7695: $24
	jp c, $c0d8                                      ; $7696: $da $d8 $c0

	inc hl                                           ; $7699: $23
	jp c, $e4d8                                      ; $769a: $da $d8 $e4

	nop                                              ; $769d: $00
	adc $28                                          ; $769e: $ce $28
	ld [hl+], a                                      ; $76a0: $22
	ret nz                                           ; $76a1: $c0

	ld bc, $06a0                                     ; $76a2: $01 $a0 $06
	ld [bc], a                                       ; $76a5: $02
	rra                                              ; $76a6: $1f
	pop hl                                           ; $76a7: $e1
	ld [bc], a                                       ; $76a8: $02
	ld [bc], a                                       ; $76a9: $02
	ld b, b                                          ; $76aa: $40
	ret nz                                           ; $76ab: $c0

	ld bc, $01a0                                     ; $76ac: $01 $a0 $01
	ld [bc], a                                       ; $76af: $02
	ld h, $c0                                        ; $76b0: $26 $c0
	ld bc, $06a0                                     ; $76b2: $01 $a0 $06
	ld [bc], a                                       ; $76b5: $02
	ld l, $c0                                        ; $76b6: $2e $c0
	ld bc, $01a0                                     ; $76b8: $01 $a0 $01
	ld [bc], a                                       ; $76bb: $02
	ld [hl], $c0                                     ; $76bc: $36 $c0
	ld bc, $06a0                                     ; $76be: $01 $a0 $06
	ld [bc], a                                       ; $76c1: $02
	dec sp                                           ; $76c2: $3b
	dec sp                                           ; $76c3: $3b
	ld [bc], a                                       ; $76c4: $02
	ld b, [hl]                                       ; $76c5: $46
	add hl, bc                                       ; $76c6: $09
	ld [de], a                                       ; $76c7: $12
	pop hl                                           ; $76c8: $e1
	ld [bc], a                                       ; $76c9: $02
	inc bc                                           ; $76ca: $03
	inc de                                           ; $76cb: $13
	ret nz                                           ; $76cc: $c0

	ld bc, $06a0                                     ; $76cd: $01 $a0 $06
	ld [bc], a                                       ; $76d0: $02
	ld c, h                                          ; $76d1: $4c
	pop hl                                           ; $76d2: $e1
	ld [bc], a                                       ; $76d3: $02
	inc bc                                           ; $76d4: $03
	daa                                              ; $76d5: $27
	push hl                                          ; $76d6: $e5
	ld b, d                                          ; $76d7: $42
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	ld [bc], a                                       ; $76da: $02
	ld d, h                                          ; $76db: $54
	add hl, bc                                       ; $76dc: $09
	ld hl, $02e1                                     ; $76dd: $21 $e1 $02
	inc bc                                           ; $76e0: $03
	dec de                                           ; $76e1: $1b
	ret nz                                           ; $76e2: $c0

	ld bc, $06a0                                     ; $76e3: $01 $a0 $06
	ld [bc], a                                       ; $76e6: $02
	ld d, [hl]                                       ; $76e7: $56
	pop bc                                           ; $76e8: $c1
	ld e, e                                          ; $76e9: $5b
	ret nz                                           ; $76ea: $c0

	ld bc, $01a0                                     ; $76eb: $01 $a0 $01
	ld [bc], a                                       ; $76ee: $02
	ld e, [hl]                                       ; $76ef: $5e
	nop                                              ; $76f0: $00
	add b                                            ; $76f1: $80
	and b                                            ; $76f2: $a0
	ld b, $c0                                        ; $76f3: $06 $c0
	inc h                                            ; $76f5: $24
	jp c, $c0da                                      ; $76f6: $da $da $c0

	inc hl                                           ; $76f9: $23
	jp c, $e4da                                      ; $76fa: $da $da $e4

	nop                                              ; $76fd: $00
	ld l, [hl]                                       ; $76fe: $6e
	jr z, jr_082_7723                                ; $76ff: $28 $22

	ret nz                                           ; $7701: $c0

	ld bc, $0aa0                                     ; $7702: $01 $a0 $0a
	ld [bc], a                                       ; $7705: $02
	ld h, [hl]                                       ; $7706: $66
	pop hl                                           ; $7707: $e1
	ld [bc], a                                       ; $7708: $02
	ld [bc], a                                       ; $7709: $02
	ld [hl], b                                       ; $770a: $70
	ret nz                                           ; $770b: $c0

	ld bc, $01a0                                     ; $770c: $01 $a0 $01
	ld [bc], a                                       ; $770f: $02
	ld l, c                                          ; $7710: $69
	ret nz                                           ; $7711: $c0

	ld bc, $0aa0                                     ; $7712: $01 $a0 $0a
	ld [bc], a                                       ; $7715: $02
	ld l, a                                          ; $7716: $6f
	ret nz                                           ; $7717: $c0

	ld bc, $01a0                                     ; $7718: $01 $a0 $01
	ld bc, $c014                                     ; $771b: $01 $14 $c0
	ld bc, $0aa0                                     ; $771e: $01 $a0 $0a
	ld [bc], a                                       ; $7721: $02
	ld [hl], e                                       ; $7722: $73

jr_082_7723:
	ld b, a                                          ; $7723: $47
	nop                                              ; $7724: $00
	ret c                                            ; $7725: $d8

	add hl, bc                                       ; $7726: $09
	ld e, $e1                                        ; $7727: $1e $e1
	ld [bc], a                                       ; $7729: $02
	inc bc                                           ; $772a: $03
	inc de                                           ; $772b: $13
	ret nz                                           ; $772c: $c0

	ld bc, $0aa0                                     ; $772d: $01 $a0 $0a
	ld [bc], a                                       ; $7730: $02
	ld a, b                                          ; $7731: $78
	ret nz                                           ; $7732: $c0

	ld bc, $01a0                                     ; $7733: $01 $a0 $01
	ld [bc], a                                       ; $7736: $02
	add c                                            ; $7737: $81
	ret nz                                           ; $7738: $c0

	ld bc, $0aa0                                     ; $7739: $01 $a0 $0a
	ld [bc], a                                       ; $773c: $02
	add e                                            ; $773d: $83
	pop hl                                           ; $773e: $e1
	ld [bc], a                                       ; $773f: $02
	inc bc                                           ; $7740: $03
	daa                                              ; $7741: $27
	push hl                                          ; $7742: $e5
	ld b, h                                          ; $7743: $44
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	ld [bc], a                                       ; $7746: $02
	adc l                                            ; $7747: $8d
	add hl, bc                                       ; $7748: $09
	ld hl, $02e1                                     ; $7749: $21 $e1 $02
	inc bc                                           ; $774c: $03
	dec de                                           ; $774d: $1b
	ret nz                                           ; $774e: $c0

	ld bc, $0aa0                                     ; $774f: $01 $a0 $0a
	ld [bc], a                                       ; $7752: $02
	sub d                                            ; $7753: $92
	pop bc                                           ; $7754: $c1
	ld e, e                                          ; $7755: $5b
	ret nz                                           ; $7756: $c0

	ld bc, $01a0                                     ; $7757: $01 $a0 $01
	ld [bc], a                                       ; $775a: $02
	sub [hl]                                         ; $775b: $96
	nop                                              ; $775c: $00
	add b                                            ; $775d: $80
	and b                                            ; $775e: $a0
	rlca                                             ; $775f: $07
	ret nz                                           ; $7760: $c0

	inc h                                            ; $7761: $24
	jp c, $c0dd                                      ; $7762: $da $dd $c0

	inc hl                                           ; $7765: $23
	jp c, $e4dd                                      ; $7766: $da $dd $e4

	nop                                              ; $7769: $00
	ld [bc], a                                       ; $776a: $02
	ld [$020e], sp                                   ; $776b: $08 $0e $02
	sbc a                                            ; $776e: $9f
	add hl, bc                                       ; $776f: $09
	inc bc                                           ; $7770: $03
	db $e4                                           ; $7771: $e4
	nop                                              ; $7772: $00
	add hl, bc                                       ; $7773: $09
	ld [bc], a                                       ; $7774: $02
	and h                                            ; $7775: $a4
	add hl, bc                                       ; $7776: $09
	inc bc                                           ; $7777: $03
	db $e4                                           ; $7778: $e4
	ld b, $fe                                        ; $7779: $06 $fe
	add hl, bc                                       ; $777b: $09
	xor c                                            ; $777c: $a9
	db $fd                                           ; $777d: $fd
	and h                                            ; $777e: $a4
	ret nz                                           ; $777f: $c0

	call c, $01d7                                    ; $7780: $dc $d7 $01
	ret nc                                           ; $7783: $d0

	rrca                                             ; $7784: $0f
	ld h, b                                          ; $7785: $60
	add b                                            ; $7786: $80
	and b                                            ; $7787: $a0
	nop                                              ; $7788: $00
	ld b, $c0                                        ; $7789: $06 $c0
	ld bc, $01a0                                     ; $778b: $01 $a0 $01
	ld [bc], a                                       ; $778e: $02
	xor b                                            ; $778f: $a8
	inc bc                                           ; $7790: $03
	db $e4                                           ; $7791: $e4
	nop                                              ; $7792: $00
	sub h                                            ; $7793: $94
	ld bc, $0fd1                                     ; $7794: $01 $d1 $0f
	ld h, b                                          ; $7797: $60
	add b                                            ; $7798: $80
	and b                                            ; $7799: $a0
	ld bc, $c006                                     ; $779a: $01 $06 $c0
	ld bc, $01a0                                     ; $779d: $01 $a0 $01
	ld [bc], a                                       ; $77a0: $02
	or b                                             ; $77a1: $b0
	inc bc                                           ; $77a2: $03
	db $e4                                           ; $77a3: $e4
	ld [bc], a                                       ; $77a4: $02
	cpl                                              ; $77a5: $2f
	ld bc, $0fd2                                     ; $77a6: $01 $d2 $0f
	ld h, b                                          ; $77a9: $60
	add b                                            ; $77aa: $80
	and b                                            ; $77ab: $a0
	ld [bc], a                                       ; $77ac: $02
	ld b, $c0                                        ; $77ad: $06 $c0
	ld bc, $01a0                                     ; $77af: $01 $a0 $01
	ld [bc], a                                       ; $77b2: $02
	cp c                                             ; $77b3: $b9
	inc bc                                           ; $77b4: $03
	db $e4                                           ; $77b5: $e4
	ld [bc], a                                       ; $77b6: $02
	cp l                                             ; $77b7: $bd
	ld bc, $0fd3                                     ; $77b8: $01 $d3 $0f
	ld h, b                                          ; $77bb: $60
	add b                                            ; $77bc: $80
	and b                                            ; $77bd: $a0
	inc bc                                           ; $77be: $03
	ld b, $c0                                        ; $77bf: $06 $c0
	ld bc, $01a0                                     ; $77c1: $01 $a0 $01
	ld [bc], a                                       ; $77c4: $02
	pop bc                                           ; $77c5: $c1
	inc bc                                           ; $77c6: $03
	db $e4                                           ; $77c7: $e4
	inc bc                                           ; $77c8: $03
	ld e, h                                          ; $77c9: $5c
	ld bc, $0fd7                                     ; $77ca: $01 $d7 $0f
	ld h, b                                          ; $77cd: $60
	add b                                            ; $77ce: $80
	and b                                            ; $77cf: $a0
	inc b                                            ; $77d0: $04
	ld b, $c0                                        ; $77d1: $06 $c0
	ld bc, $01a0                                     ; $77d3: $01 $a0 $01
	ld [bc], a                                       ; $77d6: $02
	jp z, $e403                                      ; $77d7: $ca $03 $e4

	inc bc                                           ; $77da: $03
	ld [$d801], a                                    ; $77db: $ea $01 $d8
	rrca                                             ; $77de: $0f
	ld h, b                                          ; $77df: $60
	add b                                            ; $77e0: $80
	and b                                            ; $77e1: $a0
	dec b                                            ; $77e2: $05
	ld b, $c0                                        ; $77e3: $06 $c0
	ld bc, $01a0                                     ; $77e5: $01 $a0 $01
	ld [bc], a                                       ; $77e8: $02
	jp nc, $e403                                     ; $77e9: $d2 $03 $e4

	inc b                                            ; $77ec: $04
	adc d                                            ; $77ed: $8a
	ld bc, $0fda                                     ; $77ee: $01 $da $0f
	ld h, b                                          ; $77f1: $60

jr_082_77f2:
	add b                                            ; $77f2: $80
	and b                                            ; $77f3: $a0
	ld b, $06                                        ; $77f4: $06 $06
	ret nz                                           ; $77f6: $c0

	ld bc, $01a0                                     ; $77f7: $01 $a0 $01
	ld [bc], a                                       ; $77fa: $02
	db $db                                           ; $77fb: $db
	inc bc                                           ; $77fc: $03
	db $e4                                           ; $77fd: $e4
	dec b                                            ; $77fe: $05
	inc sp                                           ; $77ff: $33
	ld bc, $0fdd                                     ; $7800: $01 $dd $0f
	ld h, b                                          ; $7803: $60
	add b                                            ; $7804: $80
	and b                                            ; $7805: $a0
	rlca                                             ; $7806: $07
	ld b, $c0                                        ; $7807: $06 $c0
	ld bc, $01a0                                     ; $7809: $01 $a0 $01
	ld [bc], a                                       ; $780c: $02
	db $e3                                           ; $780d: $e3
	inc bc                                           ; $780e: $03
	db $e4                                           ; $780f: $e4
	dec b                                            ; $7810: $05
	call $df01                                       ; $7811: $cd $01 $df
	ld c, $c0                                        ; $7814: $0e $c0
	rrca                                             ; $7816: $0f
	db $e3                                           ; $7817: $e3
	nop                                              ; $7818: $00
	ld d, l                                          ; $7819: $55
	ret nz                                           ; $781a: $c0

	ld bc, $01a0                                     ; $781b: $01 $a0 $01
	ld [bc], a                                       ; $781e: $02
	db $ec                                           ; $781f: $ec
	db $e4                                           ; $7820: $e4
	ld b, $56                                        ; $7821: $06 $56
	db $e4                                           ; $7823: $e4
	rst $38                                          ; $7824: $ff
	ld d, a                                          ; $7825: $57
	add hl, bc                                       ; $7826: $09
	pop bc                                           ; $7827: $c1
	ld h, c                                          ; $7828: $61
	ret nz                                           ; $7829: $c0

	rrca                                             ; $782a: $0f
	db $e3                                           ; $782b: $e3
	nop                                              ; $782c: $00
	ld d, l                                          ; $782d: $55
	ret nz                                           ; $782e: $c0

	ld bc, $01a0                                     ; $782f: $01 $a0 $01
	ld [bc], a                                       ; $7832: $02
	pop af                                           ; $7833: $f1
	ret nz                                           ; $7834: $c0

	ld bc, $01a0                                     ; $7835: $01 $a0 $01
	ld [bc], a                                       ; $7838: $02
	ei                                               ; $7839: $fb
	pop hl                                           ; $783a: $e1
	ld [bc], a                                       ; $783b: $02
	nop                                              ; $783c: $00
	ret nz                                           ; $783d: $c0

	add e                                            ; $783e: $83
	ret nz                                           ; $783f: $c0

	dec de                                           ; $7840: $1b
	ret nc                                           ; $7841: $d0

	ld [bc], a                                       ; $7842: $02
	ret nc                                           ; $7843: $d0

	pop de                                           ; $7844: $d1
	ld c, c                                          ; $7845: $49
	ldh [rSB], a                                     ; $7846: $e0 $01
	ld b, e                                          ; $7848: $43
	ld h, e                                          ; $7849: $63
	add b                                            ; $784a: $80
	ld [bc], a                                       ; $784b: $02
	adc l                                            ; $784c: $8d
	add hl, bc                                       ; $784d: $09
	ret nz                                           ; $784e: $c0

	ld bc, $02a0                                     ; $784f: $01 $a0 $02
	ld [bc], a                                       ; $7852: $02
	db $fd                                           ; $7853: $fd
	ldh [rSB], a                                     ; $7854: $e0 $01
	ld b, d                                          ; $7856: $42
	add b                                            ; $7857: $80
	ld [bc], a                                       ; $7858: $02
	adc a                                            ; $7859: $8f
	add hl, bc                                       ; $785a: $09
	ret nz                                           ; $785b: $c0

	ld bc, $02a0                                     ; $785c: $01 $a0 $02
	inc bc                                           ; $785f: $03
	inc b                                            ; $7860: $04
	ldh [rSB], a                                     ; $7861: $e0 $01
	dec [hl]                                         ; $7863: $35
	add b                                            ; $7864: $80
	nop                                              ; $7865: $00
	ld [hl], d                                       ; $7866: $72
	add hl, bc                                       ; $7867: $09
	ret nz                                           ; $7868: $c0

	ld bc, $02a0                                     ; $7869: $01 $a0 $02
	inc bc                                           ; $786c: $03
	ld a, [bc]                                       ; $786d: $0a
	ldh [rSB], a                                     ; $786e: $e0 $01
	jr z, jr_082_77f2                                ; $7870: $28 $80

	ld [bc], a                                       ; $7872: $02
	adc [hl]                                         ; $7873: $8e
	add hl, bc                                       ; $7874: $09
	ret nz                                           ; $7875: $c0

	ld bc, $02a0                                     ; $7876: $01 $a0 $02
	inc bc                                           ; $7879: $03
	inc de                                           ; $787a: $13
	ldh [rSB], a                                     ; $787b: $e0 $01
	dec de                                           ; $787d: $1b
	db $10                                           ; $787e: $10
	ret nz                                           ; $787f: $c0

	ld bc, $02a0                                     ; $7880: $01 $a0 $02
	inc bc                                           ; $7883: $03
	ld a, [de]                                       ; $7884: $1a
	ret nz                                           ; $7885: $c0

	ld bc, $01a0                                     ; $7886: $01 $a0 $01
	inc bc                                           ; $7889: $03
	ld hl, $36e5                                     ; $788a: $21 $e5 $36
	ld [bc], a                                       ; $788d: $02
	ld hl, $d202                                     ; $788e: $21 $02 $d2
	db $d3                                           ; $7891: $d3
	ld b, e                                          ; $7892: $43
	ldh [rP1], a                                     ; $7893: $e0 $00
	or $63                                           ; $7895: $f6 $63
	add b                                            ; $7897: $80
	ld [bc], a                                       ; $7898: $02
	adc l                                            ; $7899: $8d
	add hl, bc                                       ; $789a: $09
	ret nz                                           ; $789b: $c0

	ld bc, $02a0                                     ; $789c: $01 $a0 $02
	inc bc                                           ; $789f: $03
	inc hl                                           ; $78a0: $23
	ldh [rP1], a                                     ; $78a1: $e0 $00
	push af                                          ; $78a3: $f5
	add b                                            ; $78a4: $80
	ld [bc], a                                       ; $78a5: $02
	adc a                                            ; $78a6: $8f
	add hl, bc                                       ; $78a7: $09
	ret nz                                           ; $78a8: $c0

jr_082_78a9:
	ld bc, $02a0                                     ; $78a9: $01 $a0 $02
	inc bc                                           ; $78ac: $03
	daa                                              ; $78ad: $27
	ldh [rP1], a                                     ; $78ae: $e0 $00
	add sp, -$80                                     ; $78b0: $e8 $80
	nop                                              ; $78b2: $00
	ld [hl], d                                       ; $78b3: $72
	add hl, bc                                       ; $78b4: $09
	ret nz                                           ; $78b5: $c0

	ld bc, $02a0                                     ; $78b6: $01 $a0 $02
	inc bc                                           ; $78b9: $03
	ld a, [hl+]                                      ; $78ba: $2a
	ldh [rP1], a                                     ; $78bb: $e0 $00
	db $db                                           ; $78bd: $db
	add b                                            ; $78be: $80
	ld [bc], a                                       ; $78bf: $02
	adc [hl]                                         ; $78c0: $8e
	add hl, bc                                       ; $78c1: $09
	ret nz                                           ; $78c2: $c0

	ld bc, $02a0                                     ; $78c3: $01 $a0 $02
	inc bc                                           ; $78c6: $03
	jr nc, jr_082_78a9                               ; $78c7: $30 $e0

	nop                                              ; $78c9: $00
	adc $0a                                          ; $78ca: $ce $0a
	ret nz                                           ; $78cc: $c0

	ld bc, $02a0                                     ; $78cd: $01 $a0 $02
	inc bc                                           ; $78d0: $03
	inc [hl]                                         ; $78d1: $34
	push hl                                          ; $78d2: $e5
	ld [hl], $02                                     ; $78d3: $36 $02
	ld hl, $d401                                     ; $78d5: $21 $01 $d4
	ld c, a                                          ; $78d8: $4f
	ldh [rP1], a                                     ; $78d9: $e0 $00
	or b                                             ; $78db: $b0
	ld h, e                                          ; $78dc: $63
	add b                                            ; $78dd: $80
	ld [bc], a                                       ; $78de: $02
	adc l                                            ; $78df: $8d

Jump_082_78e0:
	add hl, bc                                       ; $78e0: $09
	ret nz                                           ; $78e1: $c0

	ld bc, $02a0                                     ; $78e2: $01 $a0 $02
	inc bc                                           ; $78e5: $03
	dec sp                                           ; $78e6: $3b
	ldh [rP1], a                                     ; $78e7: $e0 $00
	xor a                                            ; $78e9: $af
	add b                                            ; $78ea: $80
	ld [bc], a                                       ; $78eb: $02
	adc a                                            ; $78ec: $8f
	add hl, bc                                       ; $78ed: $09
	ret nz                                           ; $78ee: $c0

	ld bc, $02a0                                     ; $78ef: $01 $a0 $02
	inc bc                                           ; $78f2: $03
	ld a, $e0                                        ; $78f3: $3e $e0
	nop                                              ; $78f5: $00
	and d                                            ; $78f6: $a2
	add b                                            ; $78f7: $80
	nop                                              ; $78f8: $00
	ld [hl], d                                       ; $78f9: $72
	add hl, bc                                       ; $78fa: $09
	ret nz                                           ; $78fb: $c0

	ld bc, $02a0                                     ; $78fc: $01 $a0 $02
	inc bc                                           ; $78ff: $03
	ld b, c                                          ; $7900: $41
	ldh [rP1], a                                     ; $7901: $e0 $00
	sub l                                            ; $7903: $95
	add b                                            ; $7904: $80
	ld [bc], a                                       ; $7905: $02
	adc [hl]                                         ; $7906: $8e
	add hl, bc                                       ; $7907: $09
	ret nz                                           ; $7908: $c0

	ld bc, $02a0                                     ; $7909: $01 $a0 $02
	inc bc                                           ; $790c: $03
	ld b, a                                          ; $790d: $47
	ldh [rP1], a                                     ; $790e: $e0 $00
	adc b                                            ; $7910: $88
	ld d, $c0                                        ; $7911: $16 $c0
	ld bc, $02a0                                     ; $7913: $01 $a0 $02
	inc bc                                           ; $7916: $03
	ld c, d                                          ; $7917: $4a
	ret nz                                           ; $7918: $c0

	ld bc, $02a0                                     ; $7919: $01 $a0 $02
	inc bc                                           ; $791c: $03
	ld d, d                                          ; $791d: $52
	ret nz                                           ; $791e: $c0

	ld bc, $01a0                                     ; $791f: $01 $a0 $01
	inc bc                                           ; $7922: $03
	ld hl, $36e5                                     ; $7923: $21 $e5 $36
	ld [bc], a                                       ; $7926: $02
	ld hl, $d501                                     ; $7927: $21 $01 $d5
	ld e, a                                          ; $792a: $5f
	ret nz                                           ; $792b: $c0

	ld bc, $02a0                                     ; $792c: $01 $a0 $02
	inc bc                                           ; $792f: $03
	ld d, e                                          ; $7930: $53
	ret nz                                           ; $7931: $c0

	ld bc, $01a0                                     ; $7932: $01 $a0 $01
	inc bc                                           ; $7935: $03
	ld d, l                                          ; $7936: $55
	ld h, e                                          ; $7937: $63
	add b                                            ; $7938: $80
	ld [bc], a                                       ; $7939: $02
	adc l                                            ; $793a: $8d
	add hl, bc                                       ; $793b: $09
	ret nz                                           ; $793c: $c0

	ld bc, $02a0                                     ; $793d: $01 $a0 $02
	inc bc                                           ; $7940: $03
	ld e, e                                          ; $7941: $5b
	ldh [rP1], a                                     ; $7942: $e0 $00
	add a                                            ; $7944: $87
	add b                                            ; $7945: $80
	ld [bc], a                                       ; $7946: $02
	adc a                                            ; $7947: $8f
	add hl, bc                                       ; $7948: $09
	ret nz                                           ; $7949: $c0

	ld bc, $02a0                                     ; $794a: $01 $a0 $02
	inc bc                                           ; $794d: $03
	ld l, c                                          ; $794e: $69
	ldh [rP1], a                                     ; $794f: $e0 $00
	ld a, d                                          ; $7951: $7a
	add b                                            ; $7952: $80
	nop                                              ; $7953: $00
	ld [hl], d                                       ; $7954: $72
	add hl, bc                                       ; $7955: $09
	ret nz                                           ; $7956: $c0

	ld bc, $02a0                                     ; $7957: $01 $a0 $02
	inc bc                                           ; $795a: $03
	halt                                             ; $795b: $76
	ldh [rP1], a                                     ; $795c: $e0 $00
	ld l, l                                          ; $795e: $6d
	add b                                            ; $795f: $80
	ld [bc], a                                       ; $7960: $02
	adc [hl]                                         ; $7961: $8e
	add hl, bc                                       ; $7962: $09
	ret nz                                           ; $7963: $c0

	ld bc, $02a0                                     ; $7964: $01 $a0 $02
	inc bc                                           ; $7967: $03
	add d                                            ; $7968: $82
	ldh [rP1], a                                     ; $7969: $e0 $00
	ld h, b                                          ; $796b: $60
	ld a, [de]                                       ; $796c: $1a
	ret nz                                           ; $796d: $c0

	ld bc, $02a0                                     ; $796e: $01 $a0 $02
	inc bc                                           ; $7971: $03
	sub b                                            ; $7972: $90
	ret nz                                           ; $7973: $c0

	ld bc, $01a0                                     ; $7974: $01 $a0 $01
	inc bc                                           ; $7977: $03
	sub c                                            ; $7978: $91
	ret nz                                           ; $7979: $c0

	ld bc, $02a0                                     ; $797a: $01 $a0 $02
	inc bc                                           ; $797d: $03
	sub b                                            ; $797e: $90
	pop bc                                           ; $797f: $c1
	ld e, e                                          ; $7980: $5b
	ret nz                                           ; $7981: $c0

	ld bc, $01a0                                     ; $7982: $01 $a0 $01
	inc bc                                           ; $7985: $03
	sub a                                            ; $7986: $97
	db $e4                                           ; $7987: $e4
	dec b                                            ; $7988: $05
	ld a, [hl-]                                      ; $7989: $3a
	inc c                                            ; $798a: $0c
	ret nz                                           ; $798b: $c0

	ld bc, $02a0                                     ; $798c: $01 $a0 $02
	nop                                              ; $798f: $00
	or h                                             ; $7990: $b4
	ret nz                                           ; $7991: $c0

	ld bc, $01a0                                     ; $7992: $01 $a0 $01
	inc bc                                           ; $7995: $03
	ld d, l                                          ; $7996: $55
	ld [hl-], a                                      ; $7997: $32
	ret nz                                           ; $7998: $c0

	ld bc, $01a0                                     ; $7999: $01 $a0 $01
	inc bc                                           ; $799c: $03
	sbc l                                            ; $799d: $9d
	add d                                            ; $799e: $82
	ret nz                                           ; $799f: $c0

	dec de                                           ; $79a0: $1b
	ret nc                                           ; $79a1: $d0

	ld [bc], a                                       ; $79a2: $02
	ret nc                                           ; $79a3: $d0

	pop de                                           ; $79a4: $d1
	ld b, $c0                                        ; $79a5: $06 $c0
	ld bc, $02a0                                     ; $79a7: $01 $a0 $02
	inc bc                                           ; $79aa: $03
	and e                                            ; $79ab: $a3
	ld [bc], a                                       ; $79ac: $02
	jp nc, $06d3                                     ; $79ad: $d2 $d3 $06

	ret nz                                           ; $79b0: $c0

	ld bc, $02a0                                     ; $79b1: $01 $a0 $02
	inc bc                                           ; $79b4: $03
	xor e                                            ; $79b5: $ab
	ld bc, $06d4                                     ; $79b6: $01 $d4 $06
	ret nz                                           ; $79b9: $c0

	ld bc, $02a0                                     ; $79ba: $01 $a0 $02
	inc bc                                           ; $79bd: $03
	or d                                             ; $79be: $b2
	pop bc                                           ; $79bf: $c1
	ld e, e                                          ; $79c0: $5b
	ret nz                                           ; $79c1: $c0

	ld bc, $01a0                                     ; $79c2: $01 $a0 $01
	inc bc                                           ; $79c5: $03
	or l                                             ; $79c6: $b5
	db $e4                                           ; $79c7: $e4
	inc b                                            ; $79c8: $04
	ld a, [wPtrToDataCopyStruct]                                    ; $79c9: $fa $08 $c1
	ld e, e                                          ; $79cc: $5b
	ret nz                                           ; $79cd: $c0

	ld bc, $01a0                                     ; $79ce: $01 $a0 $01
	inc bc                                           ; $79d1: $03
	or a                                             ; $79d2: $b7

jr_082_79d3:
	add hl, bc                                       ; $79d3: $09
	add h                                            ; $79d4: $84
	ret nz                                           ; $79d5: $c0

	rrca                                             ; $79d6: $0f
	db $e3                                           ; $79d7: $e3
	nop                                              ; $79d8: $00
	ld d, l                                          ; $79d9: $55
	ret nz                                           ; $79da: $c0

	ld bc, $01a0                                     ; $79db: $01 $a0 $01
	inc bc                                           ; $79de: $03
	cp e                                             ; $79df: $bb
	ret nz                                           ; $79e0: $c0

	ld bc, $01a0                                     ; $79e1: $01 $a0 $01
	inc bc                                           ; $79e4: $03
	push bc                                          ; $79e5: $c5
	pop hl                                           ; $79e6: $e1
	ld [bc], a                                       ; $79e7: $02
	ld bc, $8308                                     ; $79e8: $01 $08 $83
	ret nz                                           ; $79eb: $c0

	dec de                                           ; $79ec: $1b
	pop de                                           ; $79ed: $d1
	ld [bc], a                                       ; $79ee: $02
	ret nc                                           ; $79ef: $d0

	pop de                                           ; $79f0: $d1
	jr jr_082_79d3                                   ; $79f1: $18 $e0

	nop                                              ; $79f3: $00
	ld h, [hl]                                       ; $79f4: $66
	ret nz                                           ; $79f5: $c0

	ld bc, $03a0                                     ; $79f6: $01 $a0 $03
	inc bc                                           ; $79f9: $03
	rst JumpTable                                          ; $79fa: $c7
	ret nz                                           ; $79fb: $c0

	ld bc, $01a0                                     ; $79fc: $01 $a0 $01
	inc bc                                           ; $79ff: $03
	jp nc, $01c0                                     ; $7a00: $d2 $c0 $01

	and b                                            ; $7a03: $a0
	inc bc                                           ; $7a04: $03
	inc bc                                           ; $7a05: $03
	call c, $00e4                                    ; $7a06: $dc $e4 $00
	ld e, [hl]                                       ; $7a09: $5e
	ld [bc], a                                       ; $7a0a: $02
	jp nc, $18d3                                     ; $7a0b: $d2 $d3 $18

	ldh [rP1], a                                     ; $7a0e: $e0 $00
	ld c, d                                          ; $7a10: $4a
	ret nz                                           ; $7a11: $c0

	ld bc, $03a0                                     ; $7a12: $01 $a0 $03
	inc bc                                           ; $7a15: $03
	db $ec                                           ; $7a16: $ec
	ret nz                                           ; $7a17: $c0

	ld bc, $01a0                                     ; $7a18: $01 $a0 $01
	inc bc                                           ; $7a1b: $03
	sbc l                                            ; $7a1c: $9d
	ret nz                                           ; $7a1d: $c0

	ld bc, $03a0                                     ; $7a1e: $01 $a0 $03
	inc bc                                           ; $7a21: $03
	db $f4                                           ; $7a22: $f4
	db $e4                                           ; $7a23: $e4
	nop                                              ; $7a24: $00
	ld b, d                                          ; $7a25: $42
	ld bc, $18d4                                     ; $7a26: $01 $d4 $18
	ldh [rP1], a                                     ; $7a29: $e0 $00
	cpl                                              ; $7a2b: $2f
	ret nz                                           ; $7a2c: $c0

	ld bc, $03a0                                     ; $7a2d: $01 $a0 $03
	inc bc                                           ; $7a30: $03
	db $fd                                           ; $7a31: $fd
	ret nz                                           ; $7a32: $c0

	ld bc, $01a0                                     ; $7a33: $01 $a0 $01
	inc bc                                           ; $7a36: $03
	sbc l                                            ; $7a37: $9d
	ret nz                                           ; $7a38: $c0

	ld bc, $03a0                                     ; $7a39: $01 $a0 $03
	inc b                                            ; $7a3c: $04
	ld [bc], a                                       ; $7a3d: $02
	db $e4                                           ; $7a3e: $e4
	nop                                              ; $7a3f: $00
	daa                                              ; $7a40: $27
	ld bc, $15d5                                     ; $7a41: $01 $d5 $15
	ret nz                                           ; $7a44: $c0

	ld bc, $03a0                                     ; $7a45: $01 $a0 $03
	inc b                                            ; $7a48: $04
	inc b                                            ; $7a49: $04
	ret nz                                           ; $7a4a: $c0

	ld bc, $01a0                                     ; $7a4b: $01 $a0 $01
	inc b                                            ; $7a4e: $04
	ld [$01c0], sp                                   ; $7a4f: $08 $c0 $01
	and b                                            ; $7a52: $a0
	inc bc                                           ; $7a53: $03
	inc b                                            ; $7a54: $04
	ld a, [bc]                                       ; $7a55: $0a
	db $e4                                           ; $7a56: $e4
	nop                                              ; $7a57: $00
	rrca                                             ; $7a58: $0f
	inc c                                            ; $7a59: $0c
	ret nz                                           ; $7a5a: $c0

	ld bc, $03a0                                     ; $7a5b: $01 $a0 $03
	nop                                              ; $7a5e: $00
	or h                                             ; $7a5f: $b4
	ret nz                                           ; $7a60: $c0

	ld bc, $01a0                                     ; $7a61: $01 $a0 $01
	inc b                                            ; $7a64: $04
	ld [$0b09], sp                                   ; $7a65: $08 $09 $0b
	pop bc                                           ; $7a68: $c1
	ld e, e                                          ; $7a69: $5b
	ret nz                                           ; $7a6a: $c0

	ld bc, $01a0                                     ; $7a6b: $01 $a0 $01
	inc bc                                           ; $7a6e: $03
	or l                                             ; $7a6f: $b5
	db $e4                                           ; $7a70: $e4
	inc b                                            ; $7a71: $04
	ld d, c                                          ; $7a72: $51
	add hl, bc                                       ; $7a73: $09
	sub a                                            ; $7a74: $97
	ret nz                                           ; $7a75: $c0

	rrca                                             ; $7a76: $0f
	db $e3                                           ; $7a77: $e3
	nop                                              ; $7a78: $00
	ld d, l                                          ; $7a79: $55
	ret nz                                           ; $7a7a: $c0

	ld bc, $01a0                                     ; $7a7b: $01 $a0 $01
	inc b                                            ; $7a7e: $04
	rrca                                             ; $7a7f: $0f
	ret nz                                           ; $7a80: $c0

	ld bc, $01a0                                     ; $7a81: $01 $a0 $01
	inc b                                            ; $7a84: $04
	inc d                                            ; $7a85: $14
	pop hl                                           ; $7a86: $e1
	ld [bc], a                                       ; $7a87: $02
	ld bc, $8350                                     ; $7a88: $01 $50 $83
	ret nz                                           ; $7a8b: $c0

	dec de                                           ; $7a8c: $1b
	jp nc, $d002                                     ; $7a8d: $d2 $02 $d0

	pop de                                           ; $7a90: $d1
	dec d                                            ; $7a91: $15
	ret nz                                           ; $7a92: $c0

	ld bc, $04a0                                     ; $7a93: $01 $a0 $04
	inc b                                            ; $7a96: $04
	ld d, $c0                                        ; $7a97: $16 $c0
	ld bc, $01a0                                     ; $7a99: $01 $a0 $01
	inc b                                            ; $7a9c: $04
	ld [$01c0], sp                                   ; $7a9d: $08 $c0 $01
	and b                                            ; $7aa0: $a0
	inc b                                            ; $7aa1: $04
	inc b                                            ; $7aa2: $04
	dec de                                           ; $7aa3: $1b
	ldh [rP1], a                                     ; $7aa4: $e0 $00
	ld h, a                                          ; $7aa6: $67
	ld [bc], a                                       ; $7aa7: $02
	jp nc, $15d3                                     ; $7aa8: $d2 $d3 $15

	ret nz                                           ; $7aab: $c0

	ld bc, $04a0                                     ; $7aac: $01 $a0 $04
	inc b                                            ; $7aaf: $04
	add hl, hl                                       ; $7ab0: $29
	ret nz                                           ; $7ab1: $c0

	ld bc, $01a0                                     ; $7ab2: $01 $a0 $01
	inc b                                            ; $7ab5: $04
	ld [$01c0], sp                                   ; $7ab6: $08 $c0 $01
	and b                                            ; $7ab9: $a0
	inc b                                            ; $7aba: $04
	inc b                                            ; $7abb: $04
	inc l                                            ; $7abc: $2c
	ldh [rP1], a                                     ; $7abd: $e0 $00
	ld c, [hl]                                       ; $7abf: $4e
	ld bc, $29d4                                     ; $7ac0: $01 $d4 $29
	ret nz                                           ; $7ac3: $c0

	ld bc, $04a0                                     ; $7ac4: $01 $a0 $04
	inc b                                            ; $7ac7: $04
	add hl, sp                                       ; $7ac8: $39
	ret nz                                           ; $7ac9: $c0

	ld bc, $01a0                                     ; $7aca: $01 $a0 $01
	inc b                                            ; $7acd: $04
	ld [$01c0], sp                                   ; $7ace: $08 $c0 $01
	and b                                            ; $7ad1: $a0
	inc b                                            ; $7ad2: $04
	inc b                                            ; $7ad3: $04
	dec de                                           ; $7ad4: $1b
	ret nz                                           ; $7ad5: $c0

	ld bc, $01a0                                     ; $7ad6: $01 $a0 $01
	inc bc                                           ; $7ad9: $03
	sbc l                                            ; $7ada: $9d
	ret nz                                           ; $7adb: $c0

	ld bc, $04a0                                     ; $7adc: $01 $a0 $04
	inc b                                            ; $7adf: $04
	ld b, b                                          ; $7ae0: $40
	pop bc                                           ; $7ae1: $c1
	ld e, e                                          ; $7ae2: $5b
	ret nz                                           ; $7ae3: $c0

	ld bc, $01a0                                     ; $7ae4: $01 $a0 $01
	inc bc                                           ; $7ae7: $03
	or l                                             ; $7ae8: $b5
	db $e4                                           ; $7ae9: $e4
	inc bc                                           ; $7aea: $03
	ret c                                            ; $7aeb: $d8

	ld bc, $1dd5                                     ; $7aec: $01 $d5 $1d
	ret nz                                           ; $7aef: $c0

	ld bc, $04a0                                     ; $7af0: $01 $a0 $04
	inc b                                            ; $7af3: $04
	ld c, d                                          ; $7af4: $4a
	ret nz                                           ; $7af5: $c0

	ld bc, $01a0                                     ; $7af6: $01 $a0 $01
	inc b                                            ; $7af9: $04
	ld c, h                                          ; $7afa: $4c
	ret nz                                           ; $7afb: $c0

	ld bc, $04a0                                     ; $7afc: $01 $a0 $04
	inc b                                            ; $7aff: $04
	ld d, c                                          ; $7b00: $51
	pop bc                                           ; $7b01: $c1
	ld e, e                                          ; $7b02: $5b
	ret nz                                           ; $7b03: $c0

	ld bc, $01a0                                     ; $7b04: $01 $a0 $01
	inc b                                            ; $7b07: $04
	ld e, l                                          ; $7b08: $5d
	db $e4                                           ; $7b09: $e4
	inc bc                                           ; $7b0a: $03
	cp b                                             ; $7b0b: $b8
	rla                                              ; $7b0c: $17
	ret nz                                           ; $7b0d: $c0

	ld bc, $01a0                                     ; $7b0e: $01 $a0 $01
	inc bc                                           ; $7b11: $03
	sbc l                                            ; $7b12: $9d
	ret nz                                           ; $7b13: $c0

	ld bc, $04a0                                     ; $7b14: $01 $a0 $04
	inc b                                            ; $7b17: $04
	ld h, c                                          ; $7b18: $61
	pop bc                                           ; $7b19: $c1
	ld e, e                                          ; $7b1a: $5b
	ret nz                                           ; $7b1b: $c0

	ld bc, $01a0                                     ; $7b1c: $01 $a0 $01
	inc bc                                           ; $7b1f: $03
	or l                                             ; $7b20: $b5
	db $e4                                           ; $7b21: $e4
	inc bc                                           ; $7b22: $03
	and b                                            ; $7b23: $a0
	add hl, bc                                       ; $7b24: $09
	sbc [hl]                                         ; $7b25: $9e
	ret nz                                           ; $7b26: $c0

	rrca                                             ; $7b27: $0f
	db $e3                                           ; $7b28: $e3
	nop                                              ; $7b29: $00
	ld d, l                                          ; $7b2a: $55
	ret nz                                           ; $7b2b: $c0

	ld bc, $01a0                                     ; $7b2c: $01 $a0 $01
	inc b                                            ; $7b2f: $04
	ld l, l                                          ; $7b30: $6d
	ret nz                                           ; $7b31: $c0

	ld bc, $01a0                                     ; $7b32: $01 $a0 $01
	inc b                                            ; $7b35: $04
	ld [hl], d                                       ; $7b36: $72
	pop hl                                           ; $7b37: $e1
	ld [bc], a                                       ; $7b38: $02
	ld bc, $8398                                     ; $7b39: $01 $98 $83
	ret nz                                           ; $7b3c: $c0

	dec de                                           ; $7b3d: $1b
	db $d3                                           ; $7b3e: $d3
	ld [bc], a                                       ; $7b3f: $02
	ret nc                                           ; $7b40: $d0

	pop de                                           ; $7b41: $d1
	ld e, $c0                                        ; $7b42: $1e $c0
	ld bc, $05a0                                     ; $7b44: $01 $a0 $05
	inc b                                            ; $7b47: $04
	ld [hl], h                                       ; $7b48: $74
	ret nz                                           ; $7b49: $c0

	ld bc, $01a0                                     ; $7b4a: $01 $a0 $01
	inc b                                            ; $7b4d: $04
	ld [$01c0], sp                                   ; $7b4e: $08 $c0 $01
	and b                                            ; $7b51: $a0
	dec b                                            ; $7b52: $05
	inc b                                            ; $7b53: $04
	ld a, d                                          ; $7b54: $7a
	ret nz                                           ; $7b55: $c0

	ld bc, $01a0                                     ; $7b56: $01 $a0 $01
	inc bc                                           ; $7b59: $03
	sbc l                                            ; $7b5a: $9d
	ret nz                                           ; $7b5b: $c0

	ld bc, $05a0                                     ; $7b5c: $01 $a0 $05
	inc b                                            ; $7b5f: $04
	add l                                            ; $7b60: $85
	ld [bc], a                                       ; $7b61: $02
	jp nc, $1ed3                                     ; $7b62: $d2 $d3 $1e

	ret nz                                           ; $7b65: $c0

	ld bc, $05a0                                     ; $7b66: $01 $a0 $05
	inc b                                            ; $7b69: $04
	adc [hl]                                         ; $7b6a: $8e
	ret nz                                           ; $7b6b: $c0

	ld bc, $01a0                                     ; $7b6c: $01 $a0 $01
	inc b                                            ; $7b6f: $04
	ld [$01c0], sp                                   ; $7b70: $08 $c0 $01
	and b                                            ; $7b73: $a0
	dec b                                            ; $7b74: $05
	inc b                                            ; $7b75: $04
	sub e                                            ; $7b76: $93
	ret nz                                           ; $7b77: $c0

	ld bc, $01a0                                     ; $7b78: $01 $a0 $01
	inc bc                                           ; $7b7b: $03
	sbc l                                            ; $7b7c: $9d
	ret nz                                           ; $7b7d: $c0

	ld bc, $05a0                                     ; $7b7e: $01 $a0 $05
	inc b                                            ; $7b81: $04
	sbc d                                            ; $7b82: $9a
	ld bc, $1ed4                                     ; $7b83: $01 $d4 $1e
	ret nz                                           ; $7b86: $c0

	ld bc, $05a0                                     ; $7b87: $01 $a0 $05
	inc b                                            ; $7b8a: $04
	and e                                            ; $7b8b: $a3
	ret nz                                           ; $7b8c: $c0

	ld bc, $01a0                                     ; $7b8d: $01 $a0 $01
	inc b                                            ; $7b90: $04
	ld [$01c0], sp                                   ; $7b91: $08 $c0 $01
	and b                                            ; $7b94: $a0
	dec b                                            ; $7b95: $05
	inc b                                            ; $7b96: $04
	and [hl]                                         ; $7b97: $a6
	ret nz                                           ; $7b98: $c0

	ld bc, $01a0                                     ; $7b99: $01 $a0 $01
	inc bc                                           ; $7b9c: $03
	sbc l                                            ; $7b9d: $9d
	ret nz                                           ; $7b9e: $c0

	ld bc, $05a0                                     ; $7b9f: $01 $a0 $05
	inc b                                            ; $7ba2: $04
	xor [hl]                                         ; $7ba3: $ae
	ld bc, $12d5                                     ; $7ba4: $01 $d5 $12
	ret nz                                           ; $7ba7: $c0

	ld bc, $05a0                                     ; $7ba8: $01 $a0 $05
	inc b                                            ; $7bab: $04
	xor a                                            ; $7bac: $af
	ret nz                                           ; $7bad: $c0

	ld bc, $01a0                                     ; $7bae: $01 $a0 $01
	inc b                                            ; $7bb1: $04
	ld [$01c0], sp                                   ; $7bb2: $08 $c0 $01
	and b                                            ; $7bb5: $a0
	dec b                                            ; $7bb6: $05
	inc b                                            ; $7bb7: $04
	or d                                             ; $7bb8: $b2
	pop bc                                           ; $7bb9: $c1
	ld e, e                                          ; $7bba: $5b
	ret nz                                           ; $7bbb: $c0

	ld bc, $01a0                                     ; $7bbc: $01 $a0 $01
	inc bc                                           ; $7bbf: $03
	or l                                             ; $7bc0: $b5
	db $e4                                           ; $7bc1: $e4
	inc bc                                           ; $7bc2: $03
	nop                                              ; $7bc3: $00
	add hl, bc                                       ; $7bc4: $09
	or b                                             ; $7bc5: $b0
	ret nz                                           ; $7bc6: $c0

	rrca                                             ; $7bc7: $0f
	db $e3                                           ; $7bc8: $e3
	nop                                              ; $7bc9: $00
	ld d, l                                          ; $7bca: $55
	ret nz                                           ; $7bcb: $c0

	ld bc, $01a0                                     ; $7bcc: $01 $a0 $01
	inc b                                            ; $7bcf: $04
	cp e                                             ; $7bd0: $bb
	ret nz                                           ; $7bd1: $c0

	ld bc, $01a0                                     ; $7bd2: $01 $a0 $01
	inc b                                            ; $7bd5: $04
	push bc                                          ; $7bd6: $c5
	pop hl                                           ; $7bd7: $e1
	ld [bc], a                                       ; $7bd8: $02
	ld bc, $83e0                                     ; $7bd9: $01 $e0 $83
	ret nz                                           ; $7bdc: $c0

	dec de                                           ; $7bdd: $1b
	rst SubAFromHL                                          ; $7bde: $d7
	ld [bc], a                                       ; $7bdf: $02
	ret nc                                           ; $7be0: $d0

	pop de                                           ; $7be1: $d1
	inc e                                            ; $7be2: $1c
	ret nz                                           ; $7be3: $c0

	ld bc, $08a0                                     ; $7be4: $01 $a0 $08
	inc b                                            ; $7be7: $04
	rst JumpTable                                          ; $7be8: $c7
	ret nz                                           ; $7be9: $c0

	ld bc, $01a0                                     ; $7bea: $01 $a0 $01
	inc b                                            ; $7bed: $04
	ld [$01c0], sp                                   ; $7bee: $08 $c0 $01
	and b                                            ; $7bf1: $a0
	ld [$cc04], sp                                   ; $7bf2: $08 $04 $cc
	ret nz                                           ; $7bf5: $c0

	ld bc, $01a0                                     ; $7bf6: $01 $a0 $01
	inc b                                            ; $7bf9: $04
	sub $e5                                          ; $7bfa: $d6 $e5
	ld a, $00                                        ; $7bfc: $3e $00
	nop                                              ; $7bfe: $00
	ld [bc], a                                       ; $7bff: $02
	jp nc, $1cd3                                     ; $7c00: $d2 $d3 $1c

	ret nz                                           ; $7c03: $c0

	ld bc, $08a0                                     ; $7c04: $01 $a0 $08
	inc b                                            ; $7c07: $04
	db $db                                           ; $7c08: $db
	ret nz                                           ; $7c09: $c0

	ld bc, $01a0                                     ; $7c0a: $01 $a0 $01
	inc b                                            ; $7c0d: $04
	ld [$01c0], sp                                   ; $7c0e: $08 $c0 $01
	and b                                            ; $7c11: $a0
	ld [$e004], sp                                   ; $7c12: $08 $04 $e0
	ret nz                                           ; $7c15: $c0

	ld bc, $01a0                                     ; $7c16: $01 $a0 $01
	inc b                                            ; $7c19: $04
	db $ec                                           ; $7c1a: $ec
	push hl                                          ; $7c1b: $e5
	ld a, $00                                        ; $7c1c: $3e $00
	nop                                              ; $7c1e: $00
	ld bc, $2ed4                                     ; $7c1f: $01 $d4 $2e
	ret nz                                           ; $7c22: $c0

	ld bc, $08a0                                     ; $7c23: $01 $a0 $08
	inc b                                            ; $7c26: $04
	or $c0                                           ; $7c27: $f6 $c0
	ld bc, $01a0                                     ; $7c29: $01 $a0 $01
	inc b                                            ; $7c2c: $04
	ld [$01c0], sp                                   ; $7c2d: $08 $c0 $01
	and b                                            ; $7c30: $a0
	ld [$fc04], sp                                   ; $7c31: $08 $04 $fc
	ret nz                                           ; $7c34: $c0

	ld bc, $01a0                                     ; $7c35: $01 $a0 $01
	dec b                                            ; $7c38: $05
	rlca                                             ; $7c39: $07
	ret nz                                           ; $7c3a: $c0

	ld bc, $08a0                                     ; $7c3b: $01 $a0 $08
	dec b                                            ; $7c3e: $05
	ld c, $c0                                        ; $7c3f: $0e $c0
	ld bc, $01a0                                     ; $7c41: $01 $a0 $01
	dec b                                            ; $7c44: $05
	dec de                                           ; $7c45: $1b
	ret nz                                           ; $7c46: $c0

	ld bc, $08a0                                     ; $7c47: $01 $a0 $08
	dec b                                            ; $7c4a: $05
	inc h                                            ; $7c4b: $24
	push hl                                          ; $7c4c: $e5
	ld a, $00                                        ; $7c4d: $3e $00
	nop                                              ; $7c4f: $00
	ld bc, $23d5                                     ; $7c50: $01 $d5 $23
	ret nz                                           ; $7c53: $c0

	ld bc, $08a0                                     ; $7c54: $01 $a0 $08
	dec b                                            ; $7c57: $05
	inc sp                                           ; $7c58: $33
	ret nz                                           ; $7c59: $c0

	ld bc, $01a0                                     ; $7c5a: $01 $a0 $01
	inc b                                            ; $7c5d: $04
	ld [$01c0], sp                                   ; $7c5e: $08 $c0 $01
	and b                                            ; $7c61: $a0
	ld [$3705], sp                                   ; $7c62: $08 $05 $37
	pop bc                                           ; $7c65: $c1
	ld e, e                                          ; $7c66: $5b
	ret nz                                           ; $7c67: $c0

	ld bc, $01a0                                     ; $7c68: $01 $a0 $01
	dec b                                            ; $7c6b: $05
	ld b, a                                          ; $7c6c: $47
	ret nz                                           ; $7c6d: $c0

	ld bc, $01a0                                     ; $7c6e: $01 $a0 $01
	dec b                                            ; $7c71: $05
	ld d, b                                          ; $7c72: $50
	db $e4                                           ; $7c73: $e4
	ld [bc], a                                       ; $7c74: $02
	ld c, [hl]                                       ; $7c75: $4e
	add hl, bc                                       ; $7c76: $09
	xor b                                            ; $7c77: $a8
	ret nz                                           ; $7c78: $c0

	rrca                                             ; $7c79: $0f
	db $e3                                           ; $7c7a: $e3
	nop                                              ; $7c7b: $00
	ld d, l                                          ; $7c7c: $55
	ret nz                                           ; $7c7d: $c0

	ld bc, $01a0                                     ; $7c7e: $01 $a0 $01
	dec b                                            ; $7c81: $05
	ld d, h                                          ; $7c82: $54
	ret nz                                           ; $7c83: $c0

	ld bc, $01a0                                     ; $7c84: $01 $a0 $01
	dec b                                            ; $7c87: $05
	ld e, c                                          ; $7c88: $59
	pop hl                                           ; $7c89: $e1
	ld [bc], a                                       ; $7c8a: $02
	ld [bc], a                                       ; $7c8b: $02
	db $10                                           ; $7c8c: $10
	add e                                            ; $7c8d: $83
	ret nz                                           ; $7c8e: $c0

	dec de                                           ; $7c8f: $1b
	ret c                                            ; $7c90: $d8

	ld [bc], a                                       ; $7c91: $02
	ret nc                                           ; $7c92: $d0

	pop de                                           ; $7c93: $d1
	jr z, @-$3e                                      ; $7c94: $28 $c0

	ld bc, $09a0                                     ; $7c96: $01 $a0 $09
	dec b                                            ; $7c99: $05
	ld e, e                                          ; $7c9a: $5b
	ret nz                                           ; $7c9b: $c0

	ld bc, $01a0                                     ; $7c9c: $01 $a0 $01
	inc b                                            ; $7c9f: $04
	ld [$01c0], sp                                   ; $7ca0: $08 $c0 $01
	and b                                            ; $7ca3: $a0
	add hl, bc                                       ; $7ca4: $09
	dec b                                            ; $7ca5: $05
	ld e, a                                          ; $7ca6: $5f
	ret nz                                           ; $7ca7: $c0

	ld bc, $01a0                                     ; $7ca8: $01 $a0 $01
	inc b                                            ; $7cab: $04
	sub $c0                                          ; $7cac: $d6 $c0
	ld bc, $09a0                                     ; $7cae: $01 $a0 $09
	dec b                                            ; $7cb1: $05
	ld h, a                                          ; $7cb2: $67
	ret nz                                           ; $7cb3: $c0

	ld bc, $01a0                                     ; $7cb4: $01 $a0 $01
	dec b                                            ; $7cb7: $05
	ld [hl], c                                       ; $7cb8: $71
	push hl                                          ; $7cb9: $e5
	ld b, b                                          ; $7cba: $40
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	ld [bc], a                                       ; $7cbd: $02
	jp nc, $1bd3                                     ; $7cbe: $d2 $d3 $1b

	ret nz                                           ; $7cc1: $c0

	ld bc, $09a0                                     ; $7cc2: $01 $a0 $09
	dec b                                            ; $7cc5: $05
	ld a, b                                          ; $7cc6: $78
	ret nz                                           ; $7cc7: $c0

	ld bc, $01a0                                     ; $7cc8: $01 $a0 $01
	inc b                                            ; $7ccb: $04
	ld [$01c0], sp                                   ; $7ccc: $08 $c0 $01
	and b                                            ; $7ccf: $a0
	add hl, bc                                       ; $7cd0: $09
	dec b                                            ; $7cd1: $05
	ld a, l                                          ; $7cd2: $7d
	ret nz                                           ; $7cd3: $c0

	ld bc, $01a0                                     ; $7cd4: $01 $a0 $01
	inc b                                            ; $7cd7: $04
	sub $e0                                          ; $7cd8: $d6 $e0
	nop                                              ; $7cda: $00
	ld b, [hl]                                       ; $7cdb: $46
	ld bc, $1bd4                                     ; $7cdc: $01 $d4 $1b
	ret nz                                           ; $7cdf: $c0

	ld bc, $09a0                                     ; $7ce0: $01 $a0 $09
	dec b                                            ; $7ce3: $05
	add l                                            ; $7ce4: $85
	ret nz                                           ; $7ce5: $c0

	ld bc, $01a0                                     ; $7ce6: $01 $a0 $01
	inc b                                            ; $7ce9: $04
	ld [$01c0], sp                                   ; $7cea: $08 $c0 $01
	and b                                            ; $7ced: $a0
	add hl, bc                                       ; $7cee: $09
	dec b                                            ; $7cef: $05
	adc b                                            ; $7cf0: $88
	ret nz                                           ; $7cf1: $c0

	ld bc, $01a0                                     ; $7cf2: $01 $a0 $01
	dec b                                            ; $7cf5: $05
	adc [hl]                                         ; $7cf6: $8e
	ldh [rP1], a                                     ; $7cf7: $e0 $00
	jr z, jr_082_7cfc                                ; $7cf9: $28 $01

	push de                                          ; $7cfb: $d5

jr_082_7cfc:
	inc hl                                           ; $7cfc: $23
	ret nz                                           ; $7cfd: $c0

	ld bc, $09a0                                     ; $7cfe: $01 $a0 $09
	dec b                                            ; $7d01: $05
	sub e                                            ; $7d02: $93
	ret nz                                           ; $7d03: $c0

	ld bc, $01a0                                     ; $7d04: $01 $a0 $01
	inc b                                            ; $7d07: $04
	ld [$01c0], sp                                   ; $7d08: $08 $c0 $01
	and b                                            ; $7d0b: $a0
	add hl, bc                                       ; $7d0c: $09
	dec b                                            ; $7d0d: $05
	sub l                                            ; $7d0e: $95
	pop bc                                           ; $7d0f: $c1
	ld e, e                                          ; $7d10: $5b
	ret nz                                           ; $7d11: $c0

	ld bc, $01a0                                     ; $7d12: $01 $a0 $01
	dec b                                            ; $7d15: $05
	sbc [hl]                                         ; $7d16: $9e
	ret nz                                           ; $7d17: $c0

	ld bc, $01a0                                     ; $7d18: $01 $a0 $01
	dec b                                            ; $7d1b: $05
	ld d, b                                          ; $7d1c: $50
	db $e4                                           ; $7d1d: $e4
	ld bc, $10a4                                     ; $7d1e: $01 $a4 $10
	ret nz                                           ; $7d21: $c0

	ld bc, $09a0                                     ; $7d22: $01 $a0 $09
	dec b                                            ; $7d25: $05
	and e                                            ; $7d26: $a3
	ret nz                                           ; $7d27: $c0

	ld bc, $01a0                                     ; $7d28: $01 $a0 $01
	dec b                                            ; $7d2b: $05
	xor b                                            ; $7d2c: $a8
	push hl                                          ; $7d2d: $e5
	ld b, b                                          ; $7d2e: $40
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	add hl, bc                                       ; $7d31: $09
	xor d                                            ; $7d32: $aa
	ret nz                                           ; $7d33: $c0

	rrca                                             ; $7d34: $0f
	db $e3                                           ; $7d35: $e3
	nop                                              ; $7d36: $00
	ld d, l                                          ; $7d37: $55
	ret nz                                           ; $7d38: $c0

	ld bc, $01a0                                     ; $7d39: $01 $a0 $01
	dec b                                            ; $7d3c: $05
	or b                                             ; $7d3d: $b0
	ret nz                                           ; $7d3e: $c0

	ld bc, $01a0                                     ; $7d3f: $01 $a0 $01
	dec b                                            ; $7d42: $05
	or l                                             ; $7d43: $b5
	pop hl                                           ; $7d44: $e1
	ld [bc], a                                       ; $7d45: $02
	ld [bc], a                                       ; $7d46: $02
	ld b, b                                          ; $7d47: $40
	add e                                            ; $7d48: $83
	ret nz                                           ; $7d49: $c0

	dec de                                           ; $7d4a: $1b
	jp c, $d002                                      ; $7d4b: $da $02 $d0

	pop de                                           ; $7d4e: $d1
	inc e                                            ; $7d4f: $1c
	ret nz                                           ; $7d50: $c0

	ld bc, $06a0                                     ; $7d51: $01 $a0 $06
	dec b                                            ; $7d54: $05
	cp b                                             ; $7d55: $b8
	ret nz                                           ; $7d56: $c0

	ld bc, $01a0                                     ; $7d57: $01 $a0 $01
	inc b                                            ; $7d5a: $04
	ld [$01c0], sp                                   ; $7d5b: $08 $c0 $01
	and b                                            ; $7d5e: $a0
	ld b, $05                                        ; $7d5f: $06 $05
	cp a                                             ; $7d61: $bf
	ret nz                                           ; $7d62: $c0

	ld bc, $01a0                                     ; $7d63: $01 $a0 $01
	dec b                                            ; $7d66: $05
	rst JumpTable                                          ; $7d67: $c7
	push hl                                          ; $7d68: $e5
	ld b, d                                          ; $7d69: $42
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	ld [bc], a                                       ; $7d6c: $02
	jp nc, $1cd3                                     ; $7d6d: $d2 $d3 $1c

	ret nz                                           ; $7d70: $c0

	ld bc, $06a0                                     ; $7d71: $01 $a0 $06
	dec b                                            ; $7d74: $05
	adc $c0                                          ; $7d75: $ce $c0
	ld bc, $01a0                                     ; $7d77: $01 $a0 $01
	inc b                                            ; $7d7a: $04
	ld [$01c0], sp                                   ; $7d7b: $08 $c0 $01
	and b                                            ; $7d7e: $a0
	ld b, $05                                        ; $7d7f: $06 $05
	call nc, $01c0                                   ; $7d81: $d4 $c0 $01
	and b                                            ; $7d84: $a0
	ld bc, $df05                                     ; $7d85: $01 $05 $df
	push hl                                          ; $7d88: $e5
	ld b, d                                          ; $7d89: $42
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	ld bc, $28d4                                     ; $7d8c: $01 $d4 $28
	ret nz                                           ; $7d8f: $c0

	ld bc, $06a0                                     ; $7d90: $01 $a0 $06
	dec b                                            ; $7d93: $05
	push hl                                          ; $7d94: $e5
	ret nz                                           ; $7d95: $c0

	ld bc, $01a0                                     ; $7d96: $01 $a0 $01
	inc b                                            ; $7d99: $04
	ld [$01c0], sp                                   ; $7d9a: $08 $c0 $01
	and b                                            ; $7d9d: $a0
	ld b, $05                                        ; $7d9e: $06 $05
	db $ec                                           ; $7da0: $ec
	ret nz                                           ; $7da1: $c0

	ld bc, $01a0                                     ; $7da2: $01 $a0 $01
	dec b                                            ; $7da5: $05
	ldh a, [$c0]                                     ; $7da6: $f0 $c0
	ld bc, $06a0                                     ; $7da8: $01 $a0 $06
	dec b                                            ; $7dab: $05
	or $c0                                           ; $7dac: $f6 $c0
	ld bc, $01a0                                     ; $7dae: $01 $a0 $01
	dec b                                            ; $7db1: $05
	rst $38                                          ; $7db2: $ff
	push hl                                          ; $7db3: $e5
	ld b, d                                          ; $7db4: $42
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	ld bc, $23d5                                     ; $7db7: $01 $d5 $23
	ret nz                                           ; $7dba: $c0

	ld bc, $06a0                                     ; $7dbb: $01 $a0 $06
	ld b, $0a                                        ; $7dbe: $06 $0a
	ret nz                                           ; $7dc0: $c0

	ld bc, $01a0                                     ; $7dc1: $01 $a0 $01
	inc b                                            ; $7dc4: $04
	ld [$01c0], sp                                   ; $7dc5: $08 $c0 $01
	and b                                            ; $7dc8: $a0
	ld b, $06                                        ; $7dc9: $06 $06
	dec bc                                           ; $7dcb: $0b
	pop bc                                           ; $7dcc: $c1
	ld e, e                                          ; $7dcd: $5b
	ret nz                                           ; $7dce: $c0

	ld bc, $01a0                                     ; $7dcf: $01 $a0 $01
	ld b, $13                                        ; $7dd2: $06 $13
	ret nz                                           ; $7dd4: $c0

	ld bc, $01a0                                     ; $7dd5: $01 $a0 $01
	dec b                                            ; $7dd8: $05
	ld d, b                                          ; $7dd9: $50
	db $e4                                           ; $7dda: $e4
	nop                                              ; $7ddb: $00
	rst SubAFromBC                                          ; $7ddc: $e7
	add hl, bc                                       ; $7ddd: $09
	sbc b                                            ; $7dde: $98
	ret nz                                           ; $7ddf: $c0

	rrca                                             ; $7de0: $0f
	db $e3                                           ; $7de1: $e3
	nop                                              ; $7de2: $00
	ld d, l                                          ; $7de3: $55
	ret nz                                           ; $7de4: $c0

	ld bc, $01a0                                     ; $7de5: $01 $a0 $01
	ld b, $1b                                        ; $7de8: $06 $1b
	ret nz                                           ; $7dea: $c0

	ld bc, $01a0                                     ; $7deb: $01 $a0 $01
	ld b, $21                                        ; $7dee: $06 $21
	pop hl                                           ; $7df0: $e1
	ld [bc], a                                       ; $7df1: $02
	ld [bc], a                                       ; $7df2: $02
	ld [hl], b                                       ; $7df3: $70
	add e                                            ; $7df4: $83
	ret nz                                           ; $7df5: $c0

	dec de                                           ; $7df6: $1b
	db $dd                                           ; $7df7: $dd
	ld [bc], a                                       ; $7df8: $02
	ret nc                                           ; $7df9: $d0

	pop de                                           ; $7dfa: $d1
	inc e                                            ; $7dfb: $1c
	ret nz                                           ; $7dfc: $c0

	ld bc, $0aa0                                     ; $7dfd: $01 $a0 $0a
	ld b, $23                                        ; $7e00: $06 $23
	ret nz                                           ; $7e02: $c0

	ld bc, $01a0                                     ; $7e03: $01 $a0 $01
	inc b                                            ; $7e06: $04
	ld [$01c0], sp                                   ; $7e07: $08 $c0 $01
	and b                                            ; $7e0a: $a0
	ld a, [bc]                                       ; $7e0b: $0a
	ld b, $28                                        ; $7e0c: $06 $28
	ret nz                                           ; $7e0e: $c0

	ld bc, $01a0                                     ; $7e0f: $01 $a0 $01
	inc bc                                           ; $7e12: $03
	ld hl, $44e5                                     ; $7e13: $21 $e5 $44
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	ld [bc], a                                       ; $7e18: $02
	jp nc, $1cd3                                     ; $7e19: $d2 $d3 $1c

	ret nz                                           ; $7e1c: $c0

	ld bc, $0aa0                                     ; $7e1d: $01 $a0 $0a
	ld b, $30                                        ; $7e20: $06 $30
	ret nz                                           ; $7e22: $c0

	ld bc, $01a0                                     ; $7e23: $01 $a0 $01
	inc b                                            ; $7e26: $04
	ld [$01c0], sp                                   ; $7e27: $08 $c0 $01
	and b                                            ; $7e2a: $a0
	ld a, [bc]                                       ; $7e2b: $0a
	ld b, $33                                        ; $7e2c: $06 $33
	ret nz                                           ; $7e2e: $c0

	ld bc, $01a0                                     ; $7e2f: $01 $a0 $01
	inc bc                                           ; $7e32: $03
	ld hl, $44e5                                     ; $7e33: $21 $e5 $44
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	ld bc, $16d4                                     ; $7e38: $01 $d4 $16
	ret nz                                           ; $7e3b: $c0

	ld bc, $0aa0                                     ; $7e3c: $01 $a0 $0a
	ld b, $39                                        ; $7e3f: $06 $39
	ret nz                                           ; $7e41: $c0

	ld bc, $01a0                                     ; $7e42: $01 $a0 $01
	inc b                                            ; $7e45: $04
	ld [$01c0], sp                                   ; $7e46: $08 $c0 $01
	and b                                            ; $7e49: $a0
	ld a, [bc]                                       ; $7e4a: $0a
	ld b, $3d                                        ; $7e4b: $06 $3d
	push hl                                          ; $7e4d: $e5
	ld b, h                                          ; $7e4e: $44
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	ld bc, $23d5                                     ; $7e51: $01 $d5 $23
	ret nz                                           ; $7e54: $c0

	ld bc, $0aa0                                     ; $7e55: $01 $a0 $0a
	ld b, $44                                        ; $7e58: $06 $44
	ret nz                                           ; $7e5a: $c0

	ld bc, $01a0                                     ; $7e5b: $01 $a0 $01
	inc b                                            ; $7e5e: $04
	ld [$01c0], sp                                   ; $7e5f: $08 $c0 $01
	and b                                            ; $7e62: $a0
	ld a, [bc]                                       ; $7e63: $0a
	ld b, $48                                        ; $7e64: $06 $48
	pop bc                                           ; $7e66: $c1
	ld e, e                                          ; $7e67: $5b
	ret nz                                           ; $7e68: $c0

	ld bc, $01a0                                     ; $7e69: $01 $a0 $01
	ld b, $4f                                        ; $7e6c: $06 $4f
	ret nz                                           ; $7e6e: $c0

	ld bc, $01a0                                     ; $7e6f: $01 $a0 $01
	dec b                                            ; $7e72: $05
	ld d, b                                          ; $7e73: $50
	db $e4                                           ; $7e74: $e4
	nop                                              ; $7e75: $00
	ld c, l                                          ; $7e76: $4d
	add hl, bc                                       ; $7e77: $09
	ld c, c                                          ; $7e78: $49
	ret nz                                           ; $7e79: $c0

	ld bc, $07a0                                     ; $7e7a: $01 $a0 $07
	ld b, $57                                        ; $7e7d: $06 $57
	pop hl                                           ; $7e7f: $e1
	ld [bc], a                                       ; $7e80: $02
	ld [bc], a                                       ; $7e81: $02
	call z, $01c0                                    ; $7e82: $cc $c0 $01
	and b                                            ; $7e85: $a0
	ld bc, $5c06                                     ; $7e86: $01 $06 $5c
	add d                                            ; $7e89: $82
	ret nz                                           ; $7e8a: $c0

	add b                                            ; $7e8b: $80
	ld bc, $0ed3                                     ; $7e8c: $01 $d3 $0e
	ret nz                                           ; $7e8f: $c0

	ld bc, $07a0                                     ; $7e90: $01 $a0 $07
	ld b, $62                                        ; $7e93: $06 $62
	pop bc                                           ; $7e95: $c1
	ld e, e                                          ; $7e96: $5b
	ret nz                                           ; $7e97: $c0

	ld bc, $01a0                                     ; $7e98: $01 $a0 $01
	ld b, $6a                                        ; $7e9b: $06 $6a
	ld bc, $0ed2                                     ; $7e9d: $01 $d2 $0e
	ret nz                                           ; $7ea0: $c0

	ld bc, $07a0                                     ; $7ea1: $01 $a0 $07
	ld b, $75                                        ; $7ea4: $06 $75
	pop bc                                           ; $7ea6: $c1
	ld e, e                                          ; $7ea7: $5b
	ret nz                                           ; $7ea8: $c0

	ld bc, $01a0                                     ; $7ea9: $01 $a0 $01
	ld b, $7c                                        ; $7eac: $06 $7c
	ld bc, $0ed1                                     ; $7eae: $01 $d1 $0e
	ret nz                                           ; $7eb1: $c0

	ld bc, $07a0                                     ; $7eb2: $01 $a0 $07
	ld b, $62                                        ; $7eb5: $06 $62
	pop bc                                           ; $7eb7: $c1
	ld e, e                                          ; $7eb8: $5b
	ret nz                                           ; $7eb9: $c0

	ld bc, $01a0                                     ; $7eba: $01 $a0 $01
	ld b, $6a                                        ; $7ebd: $06 $6a
	db $e4                                           ; $7ebf: $e4
	nop                                              ; $7ec0: $00
	ld [bc], a                                       ; $7ec1: $02
	add hl, bc                                       ; $7ec2: $09
	ret nz                                           ; $7ec3: $c0

	rst JumpTable                                          ; $7ec4: $c7
	ret nz                                           ; $7ec5: $c0

	ld bc, $01a0                                     ; $7ec6: $01 $a0 $01
	ld b, $81                                        ; $7ec9: $06 $81
	db $fd                                           ; $7ecb: $fd
	cp a                                             ; $7ecc: $bf
	ret nz                                           ; $7ecd: $c0

	call c, $01d4                                    ; $7ece: $dc $d4 $01
	ret nc                                           ; $7ed1: $d0

	jr c, @-$3e                                      ; $7ed2: $38 $c0

	ld bc, $01a0                                     ; $7ed4: $01 $a0 $01
	ld b, $87                                        ; $7ed7: $06 $87
	ld h, b                                          ; $7ed9: $60
	add b                                            ; $7eda: $80
	nop                                              ; $7edb: $00
	ld l, l                                          ; $7edc: $6d
	ld c, $60                                        ; $7edd: $0e $60
	add b                                            ; $7edf: $80
	and b                                            ; $7ee0: $a0
	ld bc, $e504                                     ; $7ee1: $01 $04 $e5
	inc [hl]                                         ; $7ee4: $34
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	inc b                                            ; $7ee7: $04
	push hl                                          ; $7ee8: $e5
	jr c, jr_082_7eeb                                ; $7ee9: $38 $00

jr_082_7eeb:
	nop                                              ; $7eeb: $00
	ld e, $fb                                        ; $7eec: $1e $fb
	db $fc                                           ; $7eee: $fc
	ret nz                                           ; $7eef: $c0

	add b                                            ; $7ef0: $80
	db $d3                                           ; $7ef1: $d3
	inc b                                            ; $7ef2: $04
	nop                                              ; $7ef3: $00
	add b                                            ; $7ef4: $80
	ld [bc], a                                       ; $7ef5: $02
	sub b                                            ; $7ef6: $90
	ld h, b                                          ; $7ef7: $60
	cp $07                                           ; $7ef8: $fe $07
	add b                                            ; $7efa: $80
	ld [bc], a                                       ; $7efb: $02
	adc l                                            ; $7efc: $8d
	pop af                                           ; $7efd: $f1
	add b                                            ; $7efe: $80
	and b                                            ; $7eff: $a0
	nop                                              ; $7f00: $00
	inc b                                            ; $7f01: $04
	push hl                                          ; $7f02: $e5
	ld [hl], $00                                     ; $7f03: $36 $00
	nop                                              ; $7f05: $00
	inc b                                            ; $7f06: $04
	push hl                                          ; $7f07: $e5
	inc [hl]                                         ; $7f08: $34
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	ld bc, $2ed1                                     ; $7f0b: $01 $d1 $2e
	ret nz                                           ; $7f0e: $c0

	ld bc, $01a0                                     ; $7f0f: $01 $a0 $01
	ld b, $8e                                        ; $7f12: $06 $8e
	ld h, b                                          ; $7f14: $60
	add b                                            ; $7f15: $80
	nop                                              ; $7f16: $00
	ld l, a                                          ; $7f17: $6f
	ld c, $60                                        ; $7f18: $0e $60
	add b                                            ; $7f1a: $80
	and b                                            ; $7f1b: $a0
	ld [bc], a                                       ; $7f1c: $02
	inc b                                            ; $7f1d: $04
	push hl                                          ; $7f1e: $e5
	inc [hl]                                         ; $7f1f: $34
	nop                                              ; $7f20: $00
	ld a, d                                          ; $7f21: $7a
	inc b                                            ; $7f22: $04
	push hl                                          ; $7f23: $e5
	ld a, [hl-]                                      ; $7f24: $3a
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	inc d                                            ; $7f27: $14
	ld h, b                                          ; $7f28: $60
	cp $07                                           ; $7f29: $fe $07
	add b                                            ; $7f2b: $80
	ld [bc], a                                       ; $7f2c: $02
	adc [hl]                                         ; $7f2d: $8e
	pop af                                           ; $7f2e: $f1
	add b                                            ; $7f2f: $80
	and b                                            ; $7f30: $a0
	nop                                              ; $7f31: $00
	inc b                                            ; $7f32: $04
	push hl                                          ; $7f33: $e5
	ld [hl], $00                                     ; $7f34: $36 $00
	nop                                              ; $7f36: $00
	inc b                                            ; $7f37: $04
	push hl                                          ; $7f38: $e5
	inc [hl]                                         ; $7f39: $34
	nop                                              ; $7f3a: $00
	ld a, d                                          ; $7f3b: $7a
	ld bc, $2ed2                                     ; $7f3c: $01 $d2 $2e
	ret nz                                           ; $7f3f: $c0

	ld bc, $01a0                                     ; $7f40: $01 $a0 $01
	ld b, $94                                        ; $7f43: $06 $94
	ld h, b                                          ; $7f45: $60
	add b                                            ; $7f46: $80
	nop                                              ; $7f47: $00
	ld [hl], b                                       ; $7f48: $70
	ld c, $60                                        ; $7f49: $0e $60
	add b                                            ; $7f4b: $80
	and b                                            ; $7f4c: $a0
	inc bc                                           ; $7f4d: $03
	inc b                                            ; $7f4e: $04
	push hl                                          ; $7f4f: $e5
	inc [hl]                                         ; $7f50: $34
	nop                                              ; $7f51: $00
	push af                                          ; $7f52: $f5
	inc b                                            ; $7f53: $04
	push hl                                          ; $7f54: $e5
	inc a                                            ; $7f55: $3c
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	inc d                                            ; $7f58: $14
	ld h, b                                          ; $7f59: $60
	cp $07                                           ; $7f5a: $fe $07
	add b                                            ; $7f5c: $80
	ld [bc], a                                       ; $7f5d: $02
	adc a                                            ; $7f5e: $8f
	pop af                                           ; $7f5f: $f1

jr_082_7f60:
	add b                                            ; $7f60: $80
	and b                                            ; $7f61: $a0
	nop                                              ; $7f62: $00
	inc b                                            ; $7f63: $04
	push hl                                          ; $7f64: $e5
	ld [hl], $00                                     ; $7f65: $36 $00
	nop                                              ; $7f67: $00
	inc b                                            ; $7f68: $04
	push hl                                          ; $7f69: $e5
	inc [hl]                                         ; $7f6a: $34
	nop                                              ; $7f6b: $00
	push af                                          ; $7f6c: $f5
	ld bc, $1ad3                                     ; $7f6d: $01 $d3 $1a
	ret nz                                           ; $7f70: $c0

	ld bc, $01a0                                     ; $7f71: $01 $a0 $01
	ld b, $9b                                        ; $7f74: $06 $9b
	ld h, b                                          ; $7f76: $60
	cp $07                                           ; $7f77: $fe $07
	add b                                            ; $7f79: $80
	nop                                              ; $7f7a: $00
	ld [hl], d                                       ; $7f7b: $72
	pop af                                           ; $7f7c: $f1
	add b                                            ; $7f7d: $80
	and b                                            ; $7f7e: $a0
	nop                                              ; $7f7f: $00
	inc b                                            ; $7f80: $04
	push hl                                          ; $7f81: $e5
	ld [hl], $00                                     ; $7f82: $36 $00
	nop                                              ; $7f84: $00
	inc b                                            ; $7f85: $04
	push hl                                          ; $7f86: $e5
	inc [hl]                                         ; $7f87: $34
	ld bc, $00b3                                     ; $7f88: $01 $b3 $00
	nop                                              ; $7f8b: $00
	or $06                                           ; $7f8c: $f6 $06
	jr z, jr_082_7f60                                ; $7f8e: $28 $d0

	add a                                            ; $7f90: $87
	and b                                            ; $7f91: $a0
	nop                                              ; $7f92: $00
	pop bc                                           ; $7f93: $c1
	adc $c0                                          ; $7f94: $ce $c0
	set 0, c                                         ; $7f96: $cb $c1
	add a                                            ; $7f98: $87
	ret nc                                           ; $7f99: $d0

	add a                                            ; $7f9a: $87
	ld [bc], a                                       ; $7f9b: $02
	sub c                                            ; $7f9c: $91
	pop bc                                           ; $7f9d: $c1
	ld h, [hl]                                       ; $7f9e: $66
	ret nz                                           ; $7f9f: $c0

	add hl, bc                                       ; $7fa0: $09
	db $e3                                           ; $7fa1: $e3
	nop                                              ; $7fa2: $00
	rrca                                             ; $7fa3: $0f
	ret nz                                           ; $7fa4: $c0

	ld de, $00e3                                     ; $7fa5: $11 $e3 $00
	ld b, d                                          ; $7fa8: $42
	ei                                               ; $7fa9: $fb
	pop af                                           ; $7faa: $f1
	add a                                            ; $7fab: $87
	and b                                            ; $7fac: $a0
	nop                                              ; $7fad: $00
	ld [$00c0], sp                                   ; $7fae: $08 $c0 $00
	nop                                              ; $7fb1: $00
	ld bc, $00c0                                     ; $7fb2: $01 $c0 $00
	nop                                              ; $7fb5: $00
	dec d                                            ; $7fb6: $15
	rrca                                             ; $7fb7: $0f
	pop bc                                           ; $7fb8: $c1
	and c                                            ; $7fb9: $a1
	ret nz                                           ; $7fba: $c0

	rst JumpTable                                          ; $7fbb: $c7
	ret nc                                           ; $7fbc: $d0

	ret nz                                           ; $7fbd: $c0

	add hl, bc                                       ; $7fbe: $09
	db $e3                                           ; $7fbf: $e3
	nop                                              ; $7fc0: $00
	rrca                                             ; $7fc1: $0f
	ret nz                                           ; $7fc2: $c0

	ld de, $00e3                                     ; $7fc3: $11 $e3 $00
	ld e, h                                          ; $7fc6: $5c
	inc de                                           ; $7fc7: $13
	pop bc                                           ; $7fc8: $c1
	and c                                            ; $7fc9: $a1
	ret nz                                           ; $7fca: $c0

	rst JumpTable                                          ; $7fcb: $c7
	pop de                                           ; $7fcc: $d1
	ret nz                                           ; $7fcd: $c0

	add hl, bc                                       ; $7fce: $09
	db $e3                                           ; $7fcf: $e3
	nop                                              ; $7fd0: $00
	rrca                                             ; $7fd1: $0f
	ret nz                                           ; $7fd2: $c0

	ld de, $00e3                                     ; $7fd3: $11 $e3 $00
	ld e, h                                          ; $7fd6: $5c
	pop hl                                           ; $7fd7: $e1
	ld [bc], a                                       ; $7fd8: $02
	nop                                              ; $7fd9: $00
	ret z                                            ; $7fda: $c8

	rrca                                             ; $7fdb: $0f
	pop bc                                           ; $7fdc: $c1
	and c                                            ; $7fdd: $a1
	ret nz                                           ; $7fde: $c0

	rst JumpTable                                          ; $7fdf: $c7
	db $d3                                           ; $7fe0: $d3
	ret nz                                           ; $7fe1: $c0

	add hl, bc                                       ; $7fe2: $09
	db $e3                                           ; $7fe3: $e3
	nop                                              ; $7fe4: $00
	rrca                                             ; $7fe5: $0f
	ret nz                                           ; $7fe6: $c0

	ld de, $00e3                                     ; $7fe7: $11 $e3 $00
	ld e, h                                          ; $7fea: $5c
	rrca                                             ; $7feb: $0f
	pop bc                                           ; $7fec: $c1
	and c                                            ; $7fed: $a1
	ret nz                                           ; $7fee: $c0

	rst JumpTable                                          ; $7fef: $c7
	call nc, $09c0                                   ; $7ff0: $d4 $c0 $09
	db $e3                                           ; $7ff3: $e3
	nop                                              ; $7ff4: $00
	rrca                                             ; $7ff5: $0f
	ret nz                                           ; $7ff6: $c0

	ld de, $00e3                                     ; $7ff7: $11 $e3 $00
	ld e, h                                          ; $7ffa: $5c
	inc de                                           ; $7ffb: $13
	pop bc                                           ; $7ffc: $c1
	and c                                            ; $7ffd: $a1
	ret nz                                           ; $7ffe: $c0

	rst JumpTable                                          ; $7fff: $c7
