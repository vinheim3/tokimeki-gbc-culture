; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $083", ROMX[$4000], BANK[$83]

	jp nc, $09c0                                     ; $4000: $d2 $c0 $09

	db $e3                                           ; $4003: $e3
	nop                                              ; $4004: $00
	rrca                                             ; $4005: $0f
	ret nz                                           ; $4006: $c0

	ld de, $00e3                                     ; $4007: $11 $e3 $00
	ld e, h                                          ; $400a: $5c
	pop hl                                           ; $400b: $e1
	ld [bc], a                                       ; $400c: $02
	ld bc, $1488                                     ; $400d: $01 $88 $14
	ret nz                                           ; $4010: $c0

	set 0, b                                         ; $4011: $cb $c0
	add hl, bc                                       ; $4013: $09

jr_083_4014:
	db $e3                                           ; $4014: $e3
	nop                                              ; $4015: $00
	ld c, $c1                                        ; $4016: $0e $c1
	ld [hl], d                                       ; $4018: $72
	ret nc                                           ; $4019: $d0

	ret nz                                           ; $401a: $c0

	add hl, bc                                       ; $401b: $09
	db $e3                                           ; $401c: $e3
	nop                                              ; $401d: $00
	rrca                                             ; $401e: $0f
	ret nz                                           ; $401f: $c0

	ld de, $00e3                                     ; $4020: $11 $e3 $00
	ld e, h                                          ; $4023: $5c
	db $18, $c0                                      ; $4024: $18 $c0
	set 0, b                                         ; $4026: $cb $c0
	add hl, bc                                       ; $4028: $09
	db $e3                                           ; $4029: $e3
	nop                                              ; $402a: $00
	ld c, $c1                                        ; $402b: $0e $c1
	ld [hl], d                                       ; $402d: $72
	pop de                                           ; $402e: $d1
	ret nz                                           ; $402f: $c0

	add hl, bc                                       ; $4030: $09
	db $e3                                           ; $4031: $e3
	nop                                              ; $4032: $00
	rrca                                             ; $4033: $0f
	ret nz                                           ; $4034: $c0

	ld de, $00e3                                     ; $4035: $11 $e3 $00
	ld e, h                                          ; $4038: $5c
	pop hl                                           ; $4039: $e1
	ld [bc], a                                       ; $403a: $02
	nop                                              ; $403b: $00
	ret z                                            ; $403c: $c8

	inc d                                            ; $403d: $14
	ret nz                                           ; $403e: $c0

	set 0, b                                         ; $403f: $cb $c0
	add hl, bc                                       ; $4041: $09
	db $e3                                           ; $4042: $e3
	nop                                              ; $4043: $00
	ld c, $c1                                        ; $4044: $0e $c1
	ld [hl], d                                       ; $4046: $72
	db $d3                                           ; $4047: $d3
	ret nz                                           ; $4048: $c0

	add hl, bc                                       ; $4049: $09
	db $e3                                           ; $404a: $e3
	nop                                              ; $404b: $00
	rrca                                             ; $404c: $0f
	ret nz                                           ; $404d: $c0

	ld de, $00e3                                     ; $404e: $11 $e3 $00
	ld e, h                                          ; $4051: $5c
	jr jr_083_4014                                   ; $4052: $18 $c0

	set 0, b                                         ; $4054: $cb $c0
	add hl, bc                                       ; $4056: $09
	db $e3                                           ; $4057: $e3
	nop                                              ; $4058: $00
	ld c, $c1                                        ; $4059: $0e $c1
	ld [hl], d                                       ; $405b: $72
	jp nc, $09c0                                     ; $405c: $d2 $c0 $09

	db $e3                                           ; $405f: $e3
	nop                                              ; $4060: $00
	rrca                                             ; $4061: $0f
	ret nz                                           ; $4062: $c0

	ld de, $00e3                                     ; $4063: $11 $e3 $00
	ld e, h                                          ; $4066: $5c
	pop hl                                           ; $4067: $e1
	ld [bc], a                                       ; $4068: $02
	ld bc, $0f88                                     ; $4069: $01 $88 $0f
	ret nz                                           ; $406c: $c0

	set 0, b                                         ; $406d: $cb $c0
	call nz, $c0d0                                   ; $406f: $c4 $d0 $c0
	add hl, bc                                       ; $4072: $09
	db $e3                                           ; $4073: $e3
	nop                                              ; $4074: $00
	rrca                                             ; $4075: $0f
	ret nz                                           ; $4076: $c0

	ld de, $00e3                                     ; $4077: $11 $e3 $00
	ld d, a                                          ; $407a: $57
	ld c, $c0                                        ; $407b: $0e $c0
	set 0, b                                         ; $407d: $cb $c0
	call nz, $c0d1                                   ; $407f: $c4 $d1 $c0
	add hl, bc                                       ; $4082: $09
	db $e3                                           ; $4083: $e3
	nop                                              ; $4084: $00
	rrca                                             ; $4085: $0f
	pop bc                                           ; $4086: $c1
	ld l, e                                          ; $4087: $6b
	db $dd                                           ; $4088: $dd
	ret nc                                           ; $4089: $d0

	inc c                                            ; $408a: $0c
	ldh [rIE], a                                     ; $408b: $e0 $ff
	rst AddAOntoHL                                          ; $408d: $ef
	ret nz                                           ; $408e: $c0

	ld de, $00e3                                     ; $408f: $11 $e3 $00
	ld d, a                                          ; $4092: $57
	pop hl                                           ; $4093: $e1
	ld [bc], a                                       ; $4094: $02
	nop                                              ; $4095: $00
	ret z                                            ; $4096: $c8

	ld [$ffe0], sp                                   ; $4097: $08 $e0 $ff
	ldh [c], a                                       ; $409a: $e2
	ret nz                                           ; $409b: $c0

	rrca                                             ; $409c: $0f
	db $e3                                           ; $409d: $e3
	nop                                              ; $409e: $00
	ld e, e                                          ; $409f: $5b
	rrca                                             ; $40a0: $0f
	ret nz                                           ; $40a1: $c0

	set 0, b                                         ; $40a2: $cb $c0
	call nz, $c0d3                                   ; $40a4: $c4 $d3 $c0
	add hl, bc                                       ; $40a7: $09
	db $e3                                           ; $40a8: $e3
	nop                                              ; $40a9: $00
	rrca                                             ; $40aa: $0f
	ret nz                                           ; $40ab: $c0

	ld de, $00e3                                     ; $40ac: $11 $e3 $00
	ld e, e                                          ; $40af: $5b
	inc de                                           ; $40b0: $13
	ret nz                                           ; $40b1: $c0

	set 0, b                                         ; $40b2: $cb $c0
	call nz, $c0d4                                   ; $40b4: $c4 $d4 $c0
	add hl, bc                                       ; $40b7: $09
	db $e3                                           ; $40b8: $e3
	nop                                              ; $40b9: $00
	rrca                                             ; $40ba: $0f
	pop bc                                           ; $40bb: $c1
	ld l, e                                          ; $40bc: $6b
	call nc, $c0de                                   ; $40bd: $d4 $de $c0
	ld de, $00e3                                     ; $40c0: $11 $e3 $00
	ld e, e                                          ; $40c3: $5b
	ld c, $c0                                        ; $40c4: $0e $c0
	set 0, b                                         ; $40c6: $cb $c0
	call nz, $c0d2                                   ; $40c8: $c4 $d2 $c0
	add hl, bc                                       ; $40cb: $09
	db $e3                                           ; $40cc: $e3
	nop                                              ; $40cd: $00
	rrca                                             ; $40ce: $0f
	pop bc                                           ; $40cf: $c1
	ld l, e                                          ; $40d0: $6b
	ret c                                            ; $40d1: $d8

	pop de                                           ; $40d2: $d1
	inc c                                            ; $40d3: $0c
	ldh [rIE], a                                     ; $40d4: $e0 $ff
	rst AddAOntoHL                                          ; $40d6: $ef
	ret nz                                           ; $40d7: $c0

	ld de, $00e3                                     ; $40d8: $11 $e3 $00
	ld d, a                                          ; $40db: $57
	pop hl                                           ; $40dc: $e1
	ld [bc], a                                       ; $40dd: $02
	ld bc, $0a10                                     ; $40de: $01 $10 $0a
	ldh [rIE], a                                     ; $40e1: $e0 $ff
	ldh [c], a                                       ; $40e3: $e2
	ret nz                                           ; $40e4: $c0

	ld de, $00e3                                     ; $40e5: $11 $e3 $00
	ld e, e                                          ; $40e8: $5b
	ret nz                                           ; $40e9: $c0

	jp z, $c01e                                      ; $40ea: $ca $1e $c0

	bit 4, b                                         ; $40ed: $cb $60
	ei                                               ; $40ef: $fb
	pop bc                                           ; $40f0: $c1
	ld c, l                                          ; $40f1: $4d
	ldh [$64], a                                     ; $40f2: $e0 $64
	inc bc                                           ; $40f4: $03
	pop bc                                           ; $40f5: $c1
	ld [hl], e                                       ; $40f6: $73
	ret nc                                           ; $40f7: $d0

	inc bc                                           ; $40f8: $03
	pop bc                                           ; $40f9: $c1
	ld [hl], e                                       ; $40fa: $73
	push de                                          ; $40fb: $d5
	ret nz                                           ; $40fc: $c0

	add hl, bc                                       ; $40fd: $09
	db $e3                                           ; $40fe: $e3
	nop                                              ; $40ff: $00
	rrca                                             ; $4100: $0f
	ret nz                                           ; $4101: $c0

	ld de, $00e3                                     ; $4102: $11 $e3 $00
	ld d, a                                          ; $4105: $57
	pop hl                                           ; $4106: $e1
	ld [bc], a                                       ; $4107: $02
	nop                                              ; $4108: $00
	ld hl, sp+$0f                                    ; $4109: $f8 $0f
	ret nz                                           ; $410b: $c0

	set 0, c                                         ; $410c: $cb $c1
	ld [hl], e                                       ; $410e: $73
	pop de                                           ; $410f: $d1
	ret nz                                           ; $4110: $c0

	add hl, bc                                       ; $4111: $09
	db $e3                                           ; $4112: $e3
	nop                                              ; $4113: $00
	rrca                                             ; $4114: $0f
	ret nz                                           ; $4115: $c0

	ld de, $00e3                                     ; $4116: $11 $e3 $00
	ld d, a                                          ; $4119: $57
	rrca                                             ; $411a: $0f
	ret nz                                           ; $411b: $c0

	set 0, c                                         ; $411c: $cb $c1
	ld [hl], e                                       ; $411e: $73
	jp nc, $09c0                                     ; $411f: $d2 $c0 $09

	db $e3                                           ; $4122: $e3
	nop                                              ; $4123: $00
	rrca                                             ; $4124: $0f
	ret nz                                           ; $4125: $c0

	ld de, $00e3                                     ; $4126: $11 $e3 $00
	ld e, e                                          ; $4129: $5b
	rrca                                             ; $412a: $0f
	ret nz                                           ; $412b: $c0

	set 0, c                                         ; $412c: $cb $c1
	ld [hl], e                                       ; $412e: $73
	call nc, $09c0                                   ; $412f: $d4 $c0 $09
	db $e3                                           ; $4132: $e3
	nop                                              ; $4133: $00
	rrca                                             ; $4134: $0f
	ret nz                                           ; $4135: $c0

	ld de, $00e3                                     ; $4136: $11 $e3 $00
	ld e, e                                          ; $4139: $5b
	rst $38                                          ; $413a: $ff
	ld b, $09                                        ; $413b: $06 $09
	dec hl                                           ; $413d: $2b
	ei                                               ; $413e: $fb
	add a                                            ; $413f: $87
	ld [bc], a                                       ; $4140: $02
	sub c                                            ; $4141: $91
	inc b                                            ; $4142: $04
	ld b, b                                          ; $4143: $40
	add a                                            ; $4144: $87
	ld [bc], a                                       ; $4145: $02
	sub c                                            ; $4146: $91
	ret nz                                           ; $4147: $c0

	set 0, c                                         ; $4148: $cb $c1
	ld e, e                                          ; $414a: $5b
	ret nz                                           ; $414b: $c0

	ld bc, $01a0                                     ; $414c: $01 $a0 $01
	nop                                              ; $414f: $00
	ld bc, $4ec1                                     ; $4150: $01 $c1 $4e
	ld h, b                                          ; $4153: $60
	cp $0a                                           ; $4154: $fe $0a
	db $fc                                           ; $4156: $fc
	ret nz                                           ; $4157: $c0

	ld h, l                                          ; $4158: $65
	ret nz                                           ; $4159: $c0

	ld [hl], h                                       ; $415a: $74
	db $fc                                           ; $415b: $fc
	ret nz                                           ; $415c: $c0

	ld h, [hl]                                       ; $415d: $66
	ret nz                                           ; $415e: $c0

	ld [hl], l                                       ; $415f: $75
	inc bc                                           ; $4160: $03
	db $e4                                           ; $4161: $e4
	nop                                              ; $4162: $00
	rlca                                             ; $4163: $07
	inc b                                            ; $4164: $04
	push hl                                          ; $4165: $e5
	ld bc, $b119                                     ; $4166: $01 $19 $b1
	jr z, jr_083_417c                                ; $4169: $28 $11

	pop bc                                           ; $416b: $c1
	cp l                                             ; $416c: $bd
	ret nc                                           ; $416d: $d0

	ret nz                                           ; $416e: $c0

	push af                                          ; $416f: $f5
	ret nz                                           ; $4170: $c0

	ld bc, $01a0                                     ; $4171: $01 $a0 $01
	nop                                              ; $4174: $00
	add hl, bc                                       ; $4175: $09
	ret nz                                           ; $4176: $c0

	ld bc, $01a0                                     ; $4177: $01 $a0 $01
	nop                                              ; $417a: $00
	inc de                                           ; $417b: $13

jr_083_417c:
	inc h                                            ; $417c: $24
	nop                                              ; $417d: $00
	ld hl, $0a09                                     ; $417e: $21 $09 $0a
	ret nc                                           ; $4181: $d0

	adc e                                            ; $4182: $8b
	nop                                              ; $4183: $00
	sbc $b0                                          ; $4184: $de $b0
	ld l, l                                          ; $4186: $6d
	push hl                                          ; $4187: $e5
	ld b, l                                          ; $4188: $45
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	inc hl                                           ; $418c: $23
	add hl, bc                                       ; $418d: $09
	ld [de], a                                       ; $418e: $12
	ret nz                                           ; $418f: $c0

	inc h                                            ; $4190: $24
	pop de                                           ; $4191: $d1
	ret nc                                           ; $4192: $d0

	ret nz                                           ; $4193: $c0

	inc hl                                           ; $4194: $23
	push de                                          ; $4195: $d5
	ret nc                                           ; $4196: $d0

	ret nz                                           ; $4197: $c0

	ld bc, $01a0                                     ; $4198: $01 $a0 $01
	nop                                              ; $419b: $00
	dec h                                            ; $419c: $25
	push hl                                          ; $419d: $e5
	ld bc, $b119                                     ; $419e: $01 $19 $b1
	rlca                                             ; $41a1: $07
	rlca                                             ; $41a2: $07
	add hl, bc                                       ; $41a3: $09
	dec d                                            ; $41a4: $15
	add d                                            ; $41a5: $82
	ret nz                                           ; $41a6: $c0

	add b                                            ; $41a7: $80
	ld bc, $03d3                                     ; $41a8: $01 $d3 $03
	db $e4                                           ; $41ab: $e4
	nop                                              ; $41ac: $00
	ld c, d                                          ; $41ad: $4a
	ld bc, $03d2                                     ; $41ae: $01 $d2 $03
	db $e4                                           ; $41b1: $e4
	nop                                              ; $41b2: $00
	ld h, $01                                        ; $41b3: $26 $01
	pop de                                           ; $41b5: $d1
	inc bc                                           ; $41b6: $03
	db $e4                                           ; $41b7: $e4
	nop                                              ; $41b8: $00
	ld [bc], a                                       ; $41b9: $02
	add hl, bc                                       ; $41ba: $09
	inc e                                            ; $41bb: $1c
	pop bc                                           ; $41bc: $c1
	ld e, c                                          ; $41bd: $59
	db $e3                                           ; $41be: $e3
	nop                                              ; $41bf: $00
	ld d, [hl]                                       ; $41c0: $56
	ret nz                                           ; $41c1: $c0

	ld bc, $01a0                                     ; $41c2: $01 $a0 $01
	nop                                              ; $41c5: $00
	ld bc, $cbc0                                     ; $41c6: $01 $c0 $cb
	ldh [rP1], a                                     ; $41c9: $e0 $00
	pop bc                                           ; $41cb: $c1
	ret nz                                           ; $41cc: $c0

	jp z, $01c0                                      ; $41cd: $ca $c0 $01

	and b                                            ; $41d0: $a0
	ld bc, $0700                                     ; $41d1: $01 $00 $07
	push hl                                          ; $41d4: $e5
	inc sp                                           ; $41d5: $33
	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	add hl, bc                                       ; $41d8: $09
	inc e                                            ; $41d9: $1c
	pop bc                                           ; $41da: $c1
	ld e, c                                          ; $41db: $59
	db $e3                                           ; $41dc: $e3
	nop                                              ; $41dd: $00
	ld d, [hl]                                       ; $41de: $56
	ret nz                                           ; $41df: $c0

	ld bc, $01a0                                     ; $41e0: $01 $a0 $01
	nop                                              ; $41e3: $00
	ld c, $c0                                        ; $41e4: $0e $c0
	set 4, b                                         ; $41e6: $cb $e0
	nop                                              ; $41e8: $00
	and e                                            ; $41e9: $a3
	ret nz                                           ; $41ea: $c0

	jp z, $01c0                                      ; $41eb: $ca $c0 $01

	and b                                            ; $41ee: $a0
	ld bc, $1600                                     ; $41ef: $01 $00 $16
	push hl                                          ; $41f2: $e5
	inc sp                                           ; $41f3: $33
	nop                                              ; $41f4: $00
	nop                                              ; $41f5: $00
	add hl, bc                                       ; $41f6: $09
	dec h                                            ; $41f7: $25
	pop bc                                           ; $41f8: $c1
	ld e, c                                          ; $41f9: $59
	db $e3                                           ; $41fa: $e3
	nop                                              ; $41fb: $00

jr_083_41fc:
	ld e, e                                          ; $41fc: $5b
	ret nz                                           ; $41fd: $c0

	ld bc, $01a0                                     ; $41fe: $01 $a0 $01
	nop                                              ; $4201: $00
	rra                                              ; $4202: $1f
	ld h, b                                          ; $4203: $60
	add b                                            ; $4204: $80
	ld [bc], a                                       ; $4205: $02
	sub b                                            ; $4206: $90
	inc b                                            ; $4207: $04
	pop hl                                           ; $4208: $e1
	ld [hl-], a                                      ; $4209: $32
	ld bc, $0422                                     ; $420a: $01 $22 $04
	pop hl                                           ; $420d: $e1
	ld [hl-], a                                      ; $420e: $32
	ld bc, $c012                                     ; $420f: $01 $12 $c0
	jp z, $01c0                                      ; $4212: $ca $c0 $01

	and b                                            ; $4215: $a0
	ld bc, $2700                                     ; $4216: $01 $00 $27
	push hl                                          ; $4219: $e5
	inc sp                                           ; $421a: $33
	nop                                              ; $421b: $00
	nop                                              ; $421c: $00
	add hl, bc                                       ; $421d: $09
	ld a, [de]                                       ; $421e: $1a
	pop bc                                           ; $421f: $c1
	ld e, c                                          ; $4220: $59
	db $e3                                           ; $4221: $e3
	nop                                              ; $4222: $00
	ld e, h                                          ; $4223: $5c
	add d                                            ; $4224: $82
	ret nz                                           ; $4225: $c0

	add b                                            ; $4226: $80
	ld bc, $03d3                                     ; $4227: $01 $d3 $03
	db $e4                                           ; $422a: $e4
	nop                                              ; $422b: $00
	ld c, b                                          ; $422c: $48
	ld bc, $03d2                                     ; $422d: $01 $d2 $03
	db $e4                                           ; $4230: $e4
	nop                                              ; $4231: $00
	ld a, [hl+]                                      ; $4232: $2a
	ld bc, $03d1                                     ; $4233: $01 $d1 $03
	db $e4                                           ; $4236: $e4
	nop                                              ; $4237: $00
	ld [bc], a                                       ; $4238: $02
	add hl, bc                                       ; $4239: $09
	jr nz, jr_083_41fc                               ; $423a: $20 $c0

	ld bc, $01a0                                     ; $423c: $01 $a0 $01
	nop                                              ; $423f: $00
	ld l, $c0                                        ; $4240: $2e $c0
	ld bc, $01a0                                     ; $4242: $01 $a0 $01
	nop                                              ; $4245: $00
	ld [hl], $c0                                     ; $4246: $36 $c0
	inc c                                            ; $4248: $0c
	ldh [$3c], a                                     ; $4249: $e0 $3c
	ret nz                                           ; $424b: $c0

	ld bc, $01a0                                     ; $424c: $01 $a0 $01
	nop                                              ; $424f: $00
	ld c, c                                          ; $4250: $49
	ret nz                                           ; $4251: $c0

	ld bc, $01a0                                     ; $4252: $01 $a0 $01
	nop                                              ; $4255: $00
	ld d, [hl]                                       ; $4256: $56
	push hl                                          ; $4257: $e5
	inc sp                                           ; $4258: $33
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	add hl, bc                                       ; $425b: $09
	ld d, $c0                                        ; $425c: $16 $c0
	ld bc, $01a0                                     ; $425e: $01 $a0 $01
	nop                                              ; $4261: $00
	ld e, h                                          ; $4262: $5c
	pop hl                                           ; $4263: $e1
	ld [hl-], a                                      ; $4264: $32
	nop                                              ; $4265: $00
	ld c, l                                          ; $4266: $4d
	ret nz                                           ; $4267: $c0

	jp z, $01c0                                      ; $4268: $ca $c0 $01

	and b                                            ; $426b: $a0
	ld bc, $6300                                     ; $426c: $01 $00 $63
	push hl                                          ; $426f: $e5
	inc sp                                           ; $4270: $33
	nop                                              ; $4271: $00
	nop                                              ; $4272: $00

jr_083_4273:
	add hl, bc                                       ; $4273: $09
	ld d, $c0                                        ; $4274: $16 $c0
	ld bc, $01a0                                     ; $4276: $01 $a0 $01
	nop                                              ; $4279: $00
	ld e, h                                          ; $427a: $5c
	pop hl                                           ; $427b: $e1
	ld [hl-], a                                      ; $427c: $32
	nop                                              ; $427d: $00
	xor a                                            ; $427e: $af
	ret nz                                           ; $427f: $c0

	jp z, $01c0                                      ; $4280: $ca $c0 $01

	and b                                            ; $4283: $a0
	ld bc, $6a00                                     ; $4284: $01 $00 $6a
	push hl                                          ; $4287: $e5
	inc sp                                           ; $4288: $33
	nop                                              ; $4289: $00
	nop                                              ; $428a: $00
	inc c                                            ; $428b: $0c
	ret nz                                           ; $428c: $c0

	inc c                                            ; $428d: $0c
	ldh [rAUD4LEN], a                                ; $428e: $e0 $20
	pop hl                                           ; $4290: $e1
	ld [bc], a                                       ; $4291: $02
	rlca                                             ; $4292: $07
	cp a                                             ; $4293: $bf
	ret nz                                           ; $4294: $c0

	inc c                                            ; $4295: $0c
	ldh [rAUD4LEN], a                                ; $4296: $e0 $20
	add hl, bc                                       ; $4298: $09
	dec d                                            ; $4299: $15
	add d                                            ; $429a: $82
	ret nz                                           ; $429b: $c0

	add b                                            ; $429c: $80
	ld bc, $03d3                                     ; $429d: $01 $d3 $03
	db $e4                                           ; $42a0: $e4
	nop                                              ; $42a1: $00
	sub a                                            ; $42a2: $97
	ld bc, $03d2                                     ; $42a3: $01 $d2 $03
	db $e4                                           ; $42a6: $e4
	nop                                              ; $42a7: $00
	ld [hl+], a                                      ; $42a8: $22
	ld bc, $03d1                                     ; $42a9: $01 $d1 $03
	db $e4                                           ; $42ac: $e4
	nop                                              ; $42ad: $00
	ld [bc], a                                       ; $42ae: $02
	add hl, bc                                       ; $42af: $09
	jr jr_083_4273                                   ; $42b0: $18 $c1

	ld e, c                                          ; $42b2: $59
	db $e3                                           ; $42b3: $e3
	nop                                              ; $42b4: $00
	ld e, c                                          ; $42b5: $59
	ret nz                                           ; $42b6: $c0

	ld bc, $01a0                                     ; $42b7: $01 $a0 $01
	nop                                              ; $42ba: $00
	halt                                             ; $42bb: $76
	ldh [rIE], a                                     ; $42bc: $e0 $ff
	adc $c0                                          ; $42be: $ce $c0
	ld bc, $01a0                                     ; $42c0: $01 $a0 $01
	nop                                              ; $42c3: $00
	add c                                            ; $42c4: $81
	push hl                                          ; $42c5: $e5
	inc sp                                           ; $42c6: $33
	nop                                              ; $42c7: $00
	nop                                              ; $42c8: $00
	jr z, jr_083_42ec                                ; $42c9: $28 $21

	pop bc                                           ; $42cb: $c1
	ld e, c                                          ; $42cc: $59
	db $e3                                           ; $42cd: $e3
	nop                                              ; $42ce: $00
	ld e, d                                          ; $42cf: $5a
	ret nz                                           ; $42d0: $c0

	ld bc, $01a0                                     ; $42d1: $01 $a0 $01
	nop                                              ; $42d4: $00
	adc d                                            ; $42d5: $8a
	ret nz                                           ; $42d6: $c0

	ld bc, $07a0                                     ; $42d7: $01 $a0 $07
	nop                                              ; $42da: $00
	adc [hl]                                         ; $42db: $8e
	pop hl                                           ; $42dc: $e1
	ld [bc], a                                       ; $42dd: $02
	ld [bc], a                                       ; $42de: $02
	call z, $01c0                                    ; $42df: $cc $c0 $01
	and b                                            ; $42e2: $a0
	ld bc, $8f00                                     ; $42e3: $01 $00 $8f
	ret nz                                           ; $42e6: $c0

	ld bc, $07a0                                     ; $42e7: $01 $a0 $07
	nop                                              ; $42ea: $00
	sub l                                            ; $42eb: $95

jr_083_42ec:
	ld c, e                                          ; $42ec: $4b
	nop                                              ; $42ed: $00
	sbc c                                            ; $42ee: $99
	add hl, bc                                       ; $42ef: $09
	dec h                                            ; $42f0: $25
	ret nz                                           ; $42f1: $c0

	ld bc, $07a0                                     ; $42f2: $01 $a0 $07
	nop                                              ; $42f5: $00
	sbc e                                            ; $42f6: $9b
	ret nz                                           ; $42f7: $c0

	ld bc, $01a0                                     ; $42f8: $01 $a0 $01
	nop                                              ; $42fb: $00
	and c                                            ; $42fc: $a1
	ret nz                                           ; $42fd: $c0

	ld bc, $07a0                                     ; $42fe: $01 $a0 $07
	nop                                              ; $4301: $00
	and h                                            ; $4302: $a4
	pop bc                                           ; $4303: $c1
	ld e, e                                          ; $4304: $5b
	ret nz                                           ; $4305: $c0

	ld bc, $01a0                                     ; $4306: $01 $a0 $01
	nop                                              ; $4309: $00
	and a                                            ; $430a: $a7
	ret nz                                           ; $430b: $c0

	dec hl                                           ; $430c: $2b
	pop de                                           ; $430d: $d1
	ret nz                                           ; $430e: $c0

	jp c, $d8d5                                      ; $430f: $da $d5 $d8

	push hl                                          ; $4312: $e5
	inc sp                                           ; $4313: $33
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	xor [hl]                                         ; $4317: $ae
	add hl, bc                                       ; $4318: $09
	ld e, $c0                                        ; $4319: $1e $c0
	ld bc, $07a0                                     ; $431b: $01 $a0 $07
	nop                                              ; $431e: $00
	or b                                             ; $431f: $b0
	ret nz                                           ; $4320: $c0

	ld bc, $01a0                                     ; $4321: $01 $a0 $01
	nop                                              ; $4324: $00
	or e                                             ; $4325: $b3
	ret nz                                           ; $4326: $c0

	ld bc, $07a0                                     ; $4327: $01 $a0 $07
	nop                                              ; $432a: $00
	cp d                                             ; $432b: $ba
	pop bc                                           ; $432c: $c1
	ld e, e                                          ; $432d: $5b
	ret nz                                           ; $432e: $c0

	ld bc, $01a0                                     ; $432f: $01 $a0 $01
	nop                                              ; $4332: $00
	cp l                                             ; $4333: $bd
	push hl                                          ; $4334: $e5
	inc sp                                           ; $4335: $33
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	add hl, bc                                       ; $4338: $09
	inc e                                            ; $4339: $1c
	pop bc                                           ; $433a: $c1
	ld e, c                                          ; $433b: $59
	db $e3                                           ; $433c: $e3
	nop                                              ; $433d: $00
	ld e, b                                          ; $433e: $58
	ret nz                                           ; $433f: $c0

	ld bc, $01a0                                     ; $4340: $01 $a0 $01
	nop                                              ; $4343: $00
	ret nz                                           ; $4344: $c0

	ret nz                                           ; $4345: $c0

	set 4, b                                         ; $4346: $cb $e0
	rst $38                                          ; $4348: $ff
	ld b, e                                          ; $4349: $43
	ret nz                                           ; $434a: $c0

	jp z, $01c0                                      ; $434b: $ca $c0 $01

	and b                                            ; $434e: $a0
	ld bc, $c800                                     ; $434f: $01 $00 $c8
	push hl                                          ; $4352: $e5
	inc sp                                           ; $4353: $33
	nop                                              ; $4354: $00
	nop                                              ; $4355: $00
	add hl, bc                                       ; $4356: $09
	dec de                                           ; $4357: $1b
	pop bc                                           ; $4358: $c1
	ld e, c                                          ; $4359: $59
	db $e3                                           ; $435a: $e3
	nop                                              ; $435b: $00
	ld e, e                                          ; $435c: $5b
	ret nz                                           ; $435d: $c0

	ld bc, $01a0                                     ; $435e: $01 $a0 $01
	nop                                              ; $4361: $00
	ret nc                                           ; $4362: $d0

	pop hl                                           ; $4363: $e1
	ld [hl-], a                                      ; $4364: $32
	ld bc, $c09c                                     ; $4365: $01 $9c $c0
	jp z, $01c0                                      ; $4368: $ca $c0 $01

	and b                                            ; $436b: $a0
	ld bc, wCurrTextLinePixelIdx                                     ; $436c: $01 $00 $d8
	push hl                                          ; $436f: $e5
	inc sp                                           ; $4370: $33
	nop                                              ; $4371: $00
	nop                                              ; $4372: $00
	rlca                                             ; $4373: $07
	rlca                                             ; $4374: $07
	add hl, bc                                       ; $4375: $09
	ld hl, $21c0                                     ; $4376: $21 $c0 $21
	jp nc, $e1d0                                     ; $4379: $d2 $d0 $e1

	ld [bc], a                                       ; $437c: $02
	nop                                              ; $437d: $00
	ret nz                                           ; $437e: $c0

	add d                                            ; $437f: $82
	ret nz                                           ; $4380: $c0

	add b                                            ; $4381: $80
	ld bc, $07d3                                     ; $4382: $01 $d3 $07
	ret nz                                           ; $4385: $c0

	ld [hl+], a                                      ; $4386: $22
	pop de                                           ; $4387: $d1
	ret nc                                           ; $4388: $d0

	db $e4                                           ; $4389: $e4
	ld bc, $01f8                                     ; $438a: $01 $f8 $01
	jp nc, $e403                                     ; $438d: $d2 $03 $e4

	nop                                              ; $4390: $00
	db $fd                                           ; $4391: $fd
	ld bc, $03d1                                     ; $4392: $01 $d1 $03
	db $e4                                           ; $4395: $e4
	nop                                              ; $4396: $00
	ld [bc], a                                       ; $4397: $02
	add hl, bc                                       ; $4398: $09
	ret nz                                           ; $4399: $c0

	ldh a, [c]                                       ; $439a: $f2
	nop                                              ; $439b: $00
	add b                                            ; $439c: $80
	nop                                              ; $439d: $00
	call z, $c083                                    ; $439e: $cc $83 $c0
	dec de                                           ; $43a1: $1b
	ret nc                                           ; $43a2: $d0

	ld [bc], a                                       ; $43a3: $02
	ret nc                                           ; $43a4: $d0

	pop de                                           ; $43a5: $d1
	ld [hl], $c0                                     ; $43a6: $36 $c0
	ld bc, $02a0                                     ; $43a8: $01 $a0 $02
	nop                                              ; $43ab: $00
	ld bc, $01c0                                     ; $43ac: $01 $c0 $01
	and b                                            ; $43af: $a0
	ld bc, $0200                                     ; $43b0: $01 $00 $02
	ret nz                                           ; $43b3: $c0

	ld bc, $02a0                                     ; $43b4: $01 $a0 $02
	nop                                              ; $43b7: $00
	ld b, $c0                                        ; $43b8: $06 $c0
	ld bc, $01a0                                     ; $43ba: $01 $a0 $01
	nop                                              ; $43bd: $00
	rrca                                             ; $43be: $0f
	ret nz                                           ; $43bf: $c0

	ld bc, $02a0                                     ; $43c0: $01 $a0 $02
	nop                                              ; $43c3: $00
	inc de                                           ; $43c4: $13
	ret nz                                           ; $43c5: $c0

	ld bc, $01a0                                     ; $43c6: $01 $a0 $01
	nop                                              ; $43c9: $00
	ld e, $c0                                        ; $43ca: $1e $c0
	ld bc, $02a0                                     ; $43cc: $01 $a0 $02
	nop                                              ; $43cf: $00
	inc h                                            ; $43d0: $24
	ret nz                                           ; $43d1: $c0

	ld bc, $01a0                                     ; $43d2: $01 $a0 $01
	nop                                              ; $43d5: $00
	dec hl                                           ; $43d6: $2b
	ret nz                                           ; $43d7: $c0

	ld bc, $02a0                                     ; $43d8: $01 $a0 $02
	nop                                              ; $43db: $00
	cpl                                              ; $43dc: $2f
	ld [bc], a                                       ; $43dd: $02
	jp nc, $36d3                                     ; $43de: $d2 $d3 $36

	ret nz                                           ; $43e1: $c0

	ld bc, $02a0                                     ; $43e2: $01 $a0 $02
	nop                                              ; $43e5: $00
	ld [hl], $c0                                     ; $43e6: $36 $c0
	ld bc, $01a0                                     ; $43e8: $01 $a0 $01
	nop                                              ; $43eb: $00
	ld [bc], a                                       ; $43ec: $02
	ret nz                                           ; $43ed: $c0

	ld bc, $02a0                                     ; $43ee: $01 $a0 $02
	nop                                              ; $43f1: $00
	ld b, $c0                                        ; $43f2: $06 $c0
	ld bc, $01a0                                     ; $43f4: $01 $a0 $01
	nop                                              ; $43f7: $00
	rrca                                             ; $43f8: $0f
	ret nz                                           ; $43f9: $c0

	ld bc, $02a0                                     ; $43fa: $01 $a0 $02
	nop                                              ; $43fd: $00
	scf                                              ; $43fe: $37
	ret nz                                           ; $43ff: $c0

	ld bc, $01a0                                     ; $4400: $01 $a0 $01
	nop                                              ; $4403: $00
	ld e, $c0                                        ; $4404: $1e $c0
	ld bc, $02a0                                     ; $4406: $01 $a0 $02
	nop                                              ; $4409: $00
	ld a, $c0                                        ; $440a: $3e $c0
	ld bc, $01a0                                     ; $440c: $01 $a0 $01
	nop                                              ; $440f: $00
	dec hl                                           ; $4410: $2b
	ret nz                                           ; $4411: $c0

	ld bc, $02a0                                     ; $4412: $01 $a0 $02
	nop                                              ; $4415: $00
	ld c, l                                          ; $4416: $4d
	ld bc, $42d4                                     ; $4417: $01 $d4 $42
	ret nz                                           ; $441a: $c0

	ld bc, $02a0                                     ; $441b: $01 $a0 $02
	nop                                              ; $441e: $00
	ld d, [hl]                                       ; $441f: $56
	ret nz                                           ; $4420: $c0

	ld bc, $01a0                                     ; $4421: $01 $a0 $01
	nop                                              ; $4424: $00
	ld e, d                                          ; $4425: $5a
	ret nz                                           ; $4426: $c0

	ld bc, $02a0                                     ; $4427: $01 $a0 $02
	nop                                              ; $442a: $00
	ld h, b                                          ; $442b: $60
	ret nz                                           ; $442c: $c0

	ld bc, $01a0                                     ; $442d: $01 $a0 $01
	nop                                              ; $4430: $00
	rrca                                             ; $4431: $0f
	ret nz                                           ; $4432: $c0

	ld bc, $02a0                                     ; $4433: $01 $a0 $02
	nop                                              ; $4436: $00
	ld h, a                                          ; $4437: $67
	ret nz                                           ; $4438: $c0

	ld bc, $01a0                                     ; $4439: $01 $a0 $01
	nop                                              ; $443c: $00
	ld l, l                                          ; $443d: $6d
	ret nz                                           ; $443e: $c0

	ld bc, $02a0                                     ; $443f: $01 $a0 $02
	nop                                              ; $4442: $00
	ld [hl], d                                       ; $4443: $72
	ret nz                                           ; $4444: $c0

	ld bc, $01a0                                     ; $4445: $01 $a0 $01
	nop                                              ; $4448: $00
	ld e, $c0                                        ; $4449: $1e $c0
	ld bc, $02a0                                     ; $444b: $01 $a0 $02
	nop                                              ; $444e: $00
	ld a, c                                          ; $444f: $79
	ret nz                                           ; $4450: $c0

	ld bc, $01a0                                     ; $4451: $01 $a0 $01
	nop                                              ; $4454: $00
	dec hl                                           ; $4455: $2b
	ret nz                                           ; $4456: $c0

	ld bc, $02a0                                     ; $4457: $01 $a0 $02
	nop                                              ; $445a: $00
	ld a, [hl]                                       ; $445b: $7e
	ld bc, $28d5                                     ; $445c: $01 $d5 $28
	ret nz                                           ; $445f: $c0

	ld bc, $02a0                                     ; $4460: $01 $a0 $02
	nop                                              ; $4463: $00
	add [hl]                                         ; $4464: $86
	ret nz                                           ; $4465: $c0

	ld bc, $01a0                                     ; $4466: $01 $a0 $01
	nop                                              ; $4469: $00
	adc c                                            ; $446a: $89
	ret nz                                           ; $446b: $c0

	ld bc, $02a0                                     ; $446c: $01 $a0 $02
	nop                                              ; $446f: $00
	adc a                                            ; $4470: $8f
	ret nz                                           ; $4471: $c0

	ld bc, $01a0                                     ; $4472: $01 $a0 $01
	nop                                              ; $4475: $00
	ld e, $c0                                        ; $4476: $1e $c0
	ld bc, $02a0                                     ; $4478: $01 $a0 $02
	nop                                              ; $447b: $00
	sub l                                            ; $447c: $95
	ret nz                                           ; $447d: $c0

	ld bc, $01a0                                     ; $447e: $01 $a0 $01
	nop                                              ; $4481: $00
	sbc l                                            ; $4482: $9d
	ld b, b                                          ; $4483: $40
	add b                                            ; $4484: $80
	nop                                              ; $4485: $00
	call z, Call_083_5bc1                            ; $4486: $cc $c1 $5b
	push hl                                          ; $4489: $e5
	inc sp                                           ; $448a: $33
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	add hl, bc                                       ; $448d: $09
	ret nz                                           ; $448e: $c0

	ldh a, [c]                                       ; $448f: $f2
	nop                                              ; $4490: $00
	add b                                            ; $4491: $80
	nop                                              ; $4492: $00
	call $c083                                       ; $4493: $cd $83 $c0
	dec de                                           ; $4496: $1b
	ret nc                                           ; $4497: $d0

	ld [bc], a                                       ; $4498: $02
	ret nc                                           ; $4499: $d0

	pop de                                           ; $449a: $d1
	ld [hl], $c0                                     ; $449b: $36 $c0
	ld bc, $02a0                                     ; $449d: $01 $a0 $02
	nop                                              ; $44a0: $00
	ld bc, $01c0                                     ; $44a1: $01 $c0 $01
	and b                                            ; $44a4: $a0
	ld bc, $0200                                     ; $44a5: $01 $00 $02
	ret nz                                           ; $44a8: $c0

	ld bc, $02a0                                     ; $44a9: $01 $a0 $02
	nop                                              ; $44ac: $00
	and b                                            ; $44ad: $a0
	ret nz                                           ; $44ae: $c0

	ld bc, $01a0                                     ; $44af: $01 $a0 $01
	nop                                              ; $44b2: $00
	rrca                                             ; $44b3: $0f
	ret nz                                           ; $44b4: $c0

	ld bc, $02a0                                     ; $44b5: $01 $a0 $02
	nop                                              ; $44b8: $00
	xor e                                            ; $44b9: $ab
	ret nz                                           ; $44ba: $c0

	ld bc, $01a0                                     ; $44bb: $01 $a0 $01
	nop                                              ; $44be: $00
	or l                                             ; $44bf: $b5
	ret nz                                           ; $44c0: $c0

	ld bc, $02a0                                     ; $44c1: $01 $a0 $02
	nop                                              ; $44c4: $00
	inc h                                            ; $44c5: $24
	ret nz                                           ; $44c6: $c0

	ld bc, $01a0                                     ; $44c7: $01 $a0 $01
	nop                                              ; $44ca: $00
	dec hl                                           ; $44cb: $2b
	ret nz                                           ; $44cc: $c0

	ld bc, $02a0                                     ; $44cd: $01 $a0 $02
	nop                                              ; $44d0: $00
	cpl                                              ; $44d1: $2f
	ld [bc], a                                       ; $44d2: $02

Jump_083_44d3:
	jp nc, $36d3                                     ; $44d3: $d2 $d3 $36

	ret nz                                           ; $44d6: $c0

	ld bc, $02a0                                     ; $44d7: $01 $a0 $02
	nop                                              ; $44da: $00
	ld [hl], $c0                                     ; $44db: $36 $c0
	ld bc, $01a0                                     ; $44dd: $01 $a0 $01
	nop                                              ; $44e0: $00
	ld [bc], a                                       ; $44e1: $02
	ret nz                                           ; $44e2: $c0

	ld bc, $02a0                                     ; $44e3: $01 $a0 $02
	nop                                              ; $44e6: $00
	and b                                            ; $44e7: $a0
	ret nz                                           ; $44e8: $c0

	ld bc, $01a0                                     ; $44e9: $01 $a0 $01
	nop                                              ; $44ec: $00
	rrca                                             ; $44ed: $0f
	ret nz                                           ; $44ee: $c0

	ld bc, $02a0                                     ; $44ef: $01 $a0 $02
	nop                                              ; $44f2: $00
	ret nz                                           ; $44f3: $c0

	ret nz                                           ; $44f4: $c0

	ld bc, $01a0                                     ; $44f5: $01 $a0 $01
	nop                                              ; $44f8: $00
	or l                                             ; $44f9: $b5
	ret nz                                           ; $44fa: $c0

	ld bc, $02a0                                     ; $44fb: $01 $a0 $02
	nop                                              ; $44fe: $00
	ld a, $c0                                        ; $44ff: $3e $c0
	ld bc, $01a0                                     ; $4501: $01 $a0 $01
	nop                                              ; $4504: $00
	dec hl                                           ; $4505: $2b
	ret nz                                           ; $4506: $c0

	ld bc, $02a0                                     ; $4507: $01 $a0 $02
	nop                                              ; $450a: $00
	ld c, l                                          ; $450b: $4d
	ld bc, $42d4                                     ; $450c: $01 $d4 $42
	ret nz                                           ; $450f: $c0

	ld bc, $02a0                                     ; $4510: $01 $a0 $02
	nop                                              ; $4513: $00
	ld d, [hl]                                       ; $4514: $56
	ret nz                                           ; $4515: $c0

	ld bc, $01a0                                     ; $4516: $01 $a0 $01
	nop                                              ; $4519: $00
	ld e, d                                          ; $451a: $5a
	ret nz                                           ; $451b: $c0

	ld bc, $02a0                                     ; $451c: $01 $a0 $02
	nop                                              ; $451f: $00
	add $c0                                          ; $4520: $c6 $c0
	ld bc, $01a0                                     ; $4522: $01 $a0 $01
	nop                                              ; $4525: $00
	rrca                                             ; $4526: $0f
	ret nz                                           ; $4527: $c0

	ld bc, $02a0                                     ; $4528: $01 $a0 $02
	nop                                              ; $452b: $00
	call $01c0                                       ; $452c: $cd $c0 $01
	and b                                            ; $452f: $a0
	ld bc, $6d00                                     ; $4530: $01 $00 $6d
	ret nz                                           ; $4533: $c0

	ld bc, $02a0                                     ; $4534: $01 $a0 $02
	nop                                              ; $4537: $00
	ld [hl], d                                       ; $4538: $72
	ret nz                                           ; $4539: $c0

	ld bc, $01a0                                     ; $453a: $01 $a0 $01
	nop                                              ; $453d: $00
	or l                                             ; $453e: $b5
	ret nz                                           ; $453f: $c0

	ld bc, $02a0                                     ; $4540: $01 $a0 $02
	nop                                              ; $4543: $00
	ld a, c                                          ; $4544: $79
	ret nz                                           ; $4545: $c0

	ld bc, $01a0                                     ; $4546: $01 $a0 $01
	nop                                              ; $4549: $00
	dec hl                                           ; $454a: $2b
	ret nz                                           ; $454b: $c0

	ld bc, $02a0                                     ; $454c: $01 $a0 $02
	nop                                              ; $454f: $00
	ld a, [hl]                                       ; $4550: $7e
	ld bc, $28d5                                     ; $4551: $01 $d5 $28
	ret nz                                           ; $4554: $c0

	ld bc, $02a0                                     ; $4555: $01 $a0 $02
	nop                                              ; $4558: $00
	add [hl]                                         ; $4559: $86
	ret nz                                           ; $455a: $c0

	ld bc, $01a0                                     ; $455b: $01 $a0 $01
	nop                                              ; $455e: $00
	adc c                                            ; $455f: $89
	ret nz                                           ; $4560: $c0

	ld bc, $02a0                                     ; $4561: $01 $a0 $02
	nop                                              ; $4564: $00
	adc a                                            ; $4565: $8f
	ret nz                                           ; $4566: $c0

	ld bc, $01a0                                     ; $4567: $01 $a0 $01
	nop                                              ; $456a: $00
	or l                                             ; $456b: $b5
	ret nz                                           ; $456c: $c0

	ld bc, $02a0                                     ; $456d: $01 $a0 $02
	nop                                              ; $4570: $00
	sub l                                            ; $4571: $95
	ret nz                                           ; $4572: $c0

	ld bc, $01a0                                     ; $4573: $01 $a0 $01
	nop                                              ; $4576: $00
	sbc l                                            ; $4577: $9d
	ld b, b                                          ; $4578: $40
	add b                                            ; $4579: $80
	nop                                              ; $457a: $00
	call Call_083_5bc1                               ; $457b: $cd $c1 $5b
	push hl                                          ; $457e: $e5
	inc sp                                           ; $457f: $33
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	add hl, bc                                       ; $4582: $09
	add e                                            ; $4583: $83
	add e                                            ; $4584: $83
	ret nz                                           ; $4585: $c0

	dec de                                           ; $4586: $1b
	ret nc                                           ; $4587: $d0

	ld [bc], a                                       ; $4588: $02
	ret nc                                           ; $4589: $d0

	pop de                                           ; $458a: $d1
	dec de                                           ; $458b: $1b
	ret nz                                           ; $458c: $c0

	ld bc, $02a0                                     ; $458d: $01 $a0 $02
	nop                                              ; $4590: $00
	jp nc, $01c0                                     ; $4591: $d2 $c0 $01

	and b                                            ; $4594: $a0
	ld bc, $d500                                     ; $4595: $01 $00 $d5
	ret nz                                           ; $4598: $c0

	ld bc, $02a0                                     ; $4599: $01 $a0 $02
	nop                                              ; $459c: $00
	sbc $c0                                          ; $459d: $de $c0
	ld bc, $01a0                                     ; $459f: $01 $a0 $01
	nop                                              ; $45a2: $00
	db $eb                                           ; $45a3: $eb
	ldh [$0b], a                                     ; $45a4: $e0 $0b
	rst SubAFromBC                                          ; $45a6: $e7
	ld [bc], a                                       ; $45a7: $02
	jp nc, $1bd3                                     ; $45a8: $d2 $d3 $1b

	ret nz                                           ; $45ab: $c0

	ld bc, $02a0                                     ; $45ac: $01 $a0 $02
	nop                                              ; $45af: $00
	ldh a, [$c0]                                     ; $45b0: $f0 $c0
	ld bc, $01a0                                     ; $45b2: $01 $a0 $01
	nop                                              ; $45b5: $00
	db $f4                                           ; $45b6: $f4
	ret nz                                           ; $45b7: $c0

	ld bc, $02a0                                     ; $45b8: $01 $a0 $02
	nop                                              ; $45bb: $00
	ei                                               ; $45bc: $fb
	ret nz                                           ; $45bd: $c0

	ld bc, $01a0                                     ; $45be: $01 $a0 $01
	ld bc, $e002                                     ; $45c1: $01 $02 $e0
	inc c                                            ; $45c4: $0c
	inc d                                            ; $45c5: $14
	ld bc, $1dd4                                     ; $45c6: $01 $d4 $1d
	ret nz                                           ; $45c9: $c0

	ld bc, $02a0                                     ; $45ca: $01 $a0 $02
	ld bc, $c00e                                     ; $45cd: $01 $0e $c0
	ld bc, $01a0                                     ; $45d0: $01 $a0 $01
	nop                                              ; $45d3: $00
	db $f4                                           ; $45d4: $f4
	ret nz                                           ; $45d5: $c0

	ld bc, $02a0                                     ; $45d6: $01 $a0 $02
	ld bc, $c015                                     ; $45d9: $01 $15 $c0
	ld bc, $01a0                                     ; $45dc: $01 $a0 $01
	nop                                              ; $45df: $00
	db $eb                                           ; $45e0: $eb
	ldh [$0c], a                                     ; $45e1: $e0 $0c
	dec bc                                           ; $45e3: $0b
	pop bc                                           ; $45e4: $c1
	ld e, e                                          ; $45e5: $5b
	ld bc, $1ad5                                     ; $45e6: $01 $d5 $1a
	ret nz                                           ; $45e9: $c0

	ld bc, $02a0                                     ; $45ea: $01 $a0 $02
	ld bc, $c023                                     ; $45ed: $01 $23 $c0
	ld bc, $01a0                                     ; $45f0: $01 $a0 $01
	ld bc, $c024                                     ; $45f3: $01 $24 $c0
	ld bc, $02a0                                     ; $45f6: $01 $a0 $02
	ld bc, $c12a                                     ; $45f9: $01 $2a $c1
	ld e, e                                          ; $45fc: $5b
	ret nz                                           ; $45fd: $c0

	ld bc, $01a0                                     ; $45fe: $01 $a0 $01
	ld bc, $e534                                     ; $4601: $01 $34 $e5
	inc sp                                           ; $4604: $33
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	add hl, bc                                       ; $4607: $09
	dec h                                            ; $4608: $25
	ret nz                                           ; $4609: $c0

	ld hl, $d0d2                                     ; $460a: $21 $d2 $d0
	add d                                            ; $460d: $82
	ret nz                                           ; $460e: $c0

	add b                                            ; $460f: $80
	ld bc, $07d3                                     ; $4610: $01 $d3 $07
	ret nz                                           ; $4613: $c0

	ld [hl+], a                                      ; $4614: $22
	pop de                                           ; $4615: $d1
	ret nc                                           ; $4616: $d0

	db $e4                                           ; $4617: $e4
	ld [bc], a                                       ; $4618: $02
	adc h                                            ; $4619: $8c
	ld bc, $07d2                                     ; $461a: $01 $d2 $07
	ret nz                                           ; $461d: $c0

	ld [hl+], a                                      ; $461e: $22
	jp nc, $e4d0                                     ; $461f: $d2 $d0 $e4

	ld bc, $01a8                                     ; $4622: $01 $a8 $01
	pop de                                           ; $4625: $d1
	rlca                                             ; $4626: $07
	ret nz                                           ; $4627: $c0

	ld [hl+], a                                      ; $4628: $22
	pop de                                           ; $4629: $d1
	ret nc                                           ; $462a: $d0

	db $e4                                           ; $462b: $e4
	nop                                              ; $462c: $00
	ld [bc], a                                       ; $462d: $02
	add hl, bc                                       ; $462e: $09
	pop bc                                           ; $462f: $c1
	rrca                                             ; $4630: $0f
	pop hl                                           ; $4631: $e1
	ld [bc], a                                       ; $4632: $02
	nop                                              ; $4633: $00
	ret nz                                           ; $4634: $c0

	add e                                            ; $4635: $83
	ret nz                                           ; $4636: $c0

	dec de                                           ; $4637: $1b
	ret nc                                           ; $4638: $d0

	ld [bc], a                                       ; $4639: $02
	ret nc                                           ; $463a: $d0

	pop de                                           ; $463b: $d1
	ld d, e                                          ; $463c: $53
	ret nz                                           ; $463d: $c0

	ld bc, $02a0                                     ; $463e: $01 $a0 $02
	nop                                              ; $4641: $00
	ld bc, $01c0                                     ; $4642: $01 $c0 $01
	and b                                            ; $4645: $a0
	ld bc, $3701                                     ; $4646: $01 $01 $37
	ret nz                                           ; $4649: $c0

	ld bc, $02a0                                     ; $464a: $01 $a0 $02
	ld bc, $c03f                                     ; $464d: $01 $3f $c0
	ld bc, $01a0                                     ; $4650: $01 $a0 $01
	ld bc, $c047                                     ; $4653: $01 $47 $c0
	ld bc, $02a0                                     ; $4656: $01 $a0 $02
	ld bc, $c04f                                     ; $4659: $01 $4f $c0
	ld bc, $01a0                                     ; $465c: $01 $a0 $01
	ld bc, $c054                                     ; $465f: $01 $54 $c0
	ld bc, $02a0                                     ; $4662: $01 $a0 $02
	ld bc, $c068                                     ; $4665: $01 $68 $c0
	ld bc, $01a0                                     ; $4668: $01 $a0 $01
	ld bc, $c06d                                     ; $466b: $01 $6d $c0
	ld bc, $02a0                                     ; $466e: $01 $a0 $02
	ld bc, $c071                                     ; $4671: $01 $71 $c0
	ld bc, $01a0                                     ; $4674: $01 $a0 $01
	ld bc, $e081                                     ; $4677: $01 $81 $e0
	nop                                              ; $467a: $00
	add $c0                                          ; $467b: $c6 $c0
	ld bc, $02a0                                     ; $467d: $01 $a0 $02
	ld bc, $c086                                     ; $4680: $01 $86 $c0
	ld bc, $01a0                                     ; $4683: $01 $a0 $01
	ld bc, $c08a                                     ; $4686: $01 $8a $c0
	ld bc, $02a0                                     ; $4689: $01 $a0 $02
	ld bc, $c18e                                     ; $468c: $01 $8e $c1
	ld e, e                                          ; $468f: $5b
	ld [bc], a                                       ; $4690: $02
	jp nc, Jump_083_47d3                             ; $4691: $d2 $d3 $47

	ret nz                                           ; $4694: $c0

	ld bc, $02a0                                     ; $4695: $01 $a0 $02
	nop                                              ; $4698: $00
	ld [hl], $c0                                     ; $4699: $36 $c0
	ld bc, $01a0                                     ; $469b: $01 $a0 $01
	ld bc, $c037                                     ; $469e: $01 $37 $c0
	ld bc, $02a0                                     ; $46a1: $01 $a0 $02
	ld bc, $c094                                     ; $46a4: $01 $94 $c0
	ld bc, $01a0                                     ; $46a7: $01 $a0 $01
	ld bc, $c054                                     ; $46aa: $01 $54 $c0
	ld bc, $02a0                                     ; $46ad: $01 $a0 $02
	ld bc, $c068                                     ; $46b0: $01 $68 $c0
	ld bc, $01a0                                     ; $46b3: $01 $a0 $01
	ld bc, $c06d                                     ; $46b6: $01 $6d $c0
	ld bc, $02a0                                     ; $46b9: $01 $a0 $02
	ld bc, $c099                                     ; $46bc: $01 $99 $c0
	ld bc, $01a0                                     ; $46bf: $01 $a0 $01
	ld bc, $e081                                     ; $46c2: $01 $81 $e0
	nop                                              ; $46c5: $00
	ld a, e                                          ; $46c6: $7b
	ret nz                                           ; $46c7: $c0

	ld bc, $02a0                                     ; $46c8: $01 $a0 $02
	ld bc, $c0a8                                     ; $46cb: $01 $a8 $c0
	ld bc, $01a0                                     ; $46ce: $01 $a0 $01
	ld bc, $c08a                                     ; $46d1: $01 $8a $c0
	ld bc, $02a0                                     ; $46d4: $01 $a0 $02
	ld bc, $c1ac                                     ; $46d7: $01 $ac $c1
	ld e, e                                          ; $46da: $5b
	ld bc, $47d4                                     ; $46db: $01 $d4 $47
	ret nz                                           ; $46de: $c0

	ld bc, $02a0                                     ; $46df: $01 $a0 $02
	ld bc, $c0b8                                     ; $46e2: $01 $b8 $c0
	ld bc, $01a0                                     ; $46e5: $01 $a0 $01
	ld bc, $c0bd                                     ; $46e8: $01 $bd $c0
	ld bc, $02a0                                     ; $46eb: $01 $a0 $02
	ld bc, $c094                                     ; $46ee: $01 $94 $c0
	ld bc, $01a0                                     ; $46f1: $01 $a0 $01
	ld bc, $c054                                     ; $46f4: $01 $54 $c0
	ld bc, $02a0                                     ; $46f7: $01 $a0 $02
	ld bc, $c0c0                                     ; $46fa: $01 $c0 $c0
	ld bc, $01a0                                     ; $46fd: $01 $a0 $01
	ld bc, $c06d                                     ; $4700: $01 $6d $c0
	ld bc, $02a0                                     ; $4703: $01 $a0 $02
	ld bc, $c0c2                                     ; $4706: $01 $c2 $c0
	ld bc, $01a0                                     ; $4709: $01 $a0 $01
	ld bc, $e081                                     ; $470c: $01 $81 $e0
	nop                                              ; $470f: $00
	ld sp, $01c0                                     ; $4710: $31 $c0 $01
	and b                                            ; $4713: $a0
	ld [bc], a                                       ; $4714: $02
	ld bc, $c0cd                                     ; $4715: $01 $cd $c0
	ld bc, $01a0                                     ; $4718: $01 $a0 $01
	nop                                              ; $471b: $00
	dec hl                                           ; $471c: $2b
	ret nz                                           ; $471d: $c0

	ld bc, $02a0                                     ; $471e: $01 $a0 $02
	nop                                              ; $4721: $00
	ld a, [hl]                                       ; $4722: $7e
	pop bc                                           ; $4723: $c1
	ld e, e                                          ; $4724: $5b
	ld bc, $14d5                                     ; $4725: $01 $d5 $14
	ret nz                                           ; $4728: $c0

	ld bc, $02a0                                     ; $4729: $01 $a0 $02
	nop                                              ; $472c: $00
	add [hl]                                         ; $472d: $86
	ret nz                                           ; $472e: $c0

	ld bc, $01a0                                     ; $472f: $01 $a0 $01
	ld bc, $c1d0                                     ; $4732: $01 $d0 $c1
	ld e, e                                          ; $4735: $5b
	ret nz                                           ; $4736: $c0

	ld bc, $01a0                                     ; $4737: $01 $a0 $01
	ld bc, $e5d6                                     ; $473a: $01 $d6 $e5
	inc sp                                           ; $473d: $33
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	adc c                                            ; $4740: $89
	pop hl                                           ; $4741: $e1
	ld [hl-], a                                      ; $4742: $32
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	pop hl                                           ; $4745: $e1
	ld [bc], a                                       ; $4746: $02
	nop                                              ; $4747: $00
	ret z                                            ; $4748: $c8

	pop bc                                           ; $4749: $c1
	ld d, [hl]                                       ; $474a: $56
	ld h, d                                          ; $474b: $62
	ld hl, sp-$79                                    ; $474c: $f8 $87
	ld [bc], a                                       ; $474e: $02
	sub c                                            ; $474f: $91
	ldh [rAUD3HIGH], a                               ; $4750: $e0 $1e
	ld d, $e1                                        ; $4752: $16 $e1
	ld [bc], a                                       ; $4754: $02
	inc bc                                           ; $4755: $03
	dec de                                           ; $4756: $1b
	ret nz                                           ; $4757: $c0

	ld bc, $02a0                                     ; $4758: $01 $a0 $02
	ld bc, $c023                                     ; $475b: $01 $23 $c0
	ld bc, $01a0                                     ; $475e: $01 $a0 $01
	ld bc, $c0da                                     ; $4761: $01 $da $c0
	ld bc, $02a0                                     ; $4764: $01 $a0 $02
	ld bc, $f8e6                                     ; $4767: $01 $e6 $f8
	add a                                            ; $476a: $87
	ld [bc], a                                       ; $476b: $02
	sub c                                            ; $476c: $91
	ldh [rDMA], a                                    ; $476d: $e0 $46
	ld d, $e1                                        ; $476f: $16 $e1
	ld [bc], a                                       ; $4771: $02
	inc bc                                           ; $4772: $03
	rla                                              ; $4773: $17
	ret nz                                           ; $4774: $c0

	ld bc, $02a0                                     ; $4775: $01 $a0 $02
	ld bc, $c0ec                                     ; $4778: $01 $ec $c0
	ld bc, $01a0                                     ; $477b: $01 $a0 $01
	ld bc, $c0ef                                     ; $477e: $01 $ef $c0
	ld bc, $02a0                                     ; $4781: $01 $a0 $02
	ld bc, $f8fb                                     ; $4784: $01 $fb $f8
	add a                                            ; $4787: $87
	ld [bc], a                                       ; $4788: $02
	sub c                                            ; $4789: $91
	ldh [$5a], a                                     ; $478a: $e0 $5a
	ld a, [de]                                       ; $478c: $1a
	pop hl                                           ; $478d: $e1
	ld [bc], a                                       ; $478e: $02
	inc bc                                           ; $478f: $03
	inc de                                           ; $4790: $13
	ret nz                                           ; $4791: $c0

	ld bc, $02a0                                     ; $4792: $01 $a0 $02
	ld [bc], a                                       ; $4795: $02
	inc bc                                           ; $4796: $03
	ret nz                                           ; $4797: $c0

	ld bc, $01a0                                     ; $4798: $01 $a0 $01
	ld [bc], a                                       ; $479b: $02
	ld [$01c0], sp                                   ; $479c: $08 $c0 $01
	and b                                            ; $479f: $a0
	ld [bc], a                                       ; $47a0: $02
	ld [bc], a                                       ; $47a1: $02
	inc d                                            ; $47a2: $14
	ret nz                                           ; $47a3: $c0

	ld [hl+], a                                      ; $47a4: $22
	pop de                                           ; $47a5: $d1
	ret nc                                           ; $47a6: $d0

	ld [hl+], a                                      ; $47a7: $22
	pop hl                                           ; $47a8: $e1
	ld [bc], a                                       ; $47a9: $02
	inc bc                                           ; $47aa: $03
	rla                                              ; $47ab: $17
	ret nz                                           ; $47ac: $c0

	ld bc, $02a0                                     ; $47ad: $01 $a0 $02
	ld [bc], a                                       ; $47b0: $02
	dec de                                           ; $47b1: $1b
	ret nz                                           ; $47b2: $c0

	ld bc, $01a0                                     ; $47b3: $01 $a0 $01
	ld [bc], a                                       ; $47b6: $02
	ld e, $c0                                        ; $47b7: $1e $c0
	ld bc, $02a0                                     ; $47b9: $01 $a0 $02
	ld [bc], a                                       ; $47bc: $02
	jr nz, @-$3e                                     ; $47bd: $20 $c0

	ld bc, $01a0                                     ; $47bf: $01 $a0 $01
	ld [bc], a                                       ; $47c2: $02
	ld a, [hl+]                                      ; $47c3: $2a
	ret nz                                           ; $47c4: $c0

	ld bc, $02a0                                     ; $47c5: $01 $a0 $02
	ld [bc], a                                       ; $47c8: $02
	scf                                              ; $47c9: $37
	add hl, bc                                       ; $47ca: $09
	ret nz                                           ; $47cb: $c0

	rst SubAFromHL                                          ; $47cc: $d7
	pop hl                                           ; $47cd: $e1
	ld [bc], a                                       ; $47ce: $02
	nop                                              ; $47cf: $00
	ret nz                                           ; $47d0: $c0

	add e                                            ; $47d1: $83
	ret nz                                           ; $47d2: $c0

Jump_083_47d3:
	dec de                                           ; $47d3: $1b
	ret nc                                           ; $47d4: $d0

	ld [bc], a                                       ; $47d5: $02
	ret nc                                           ; $47d6: $d0

	pop de                                           ; $47d7: $d1
	ld a, [hl-]                                      ; $47d8: $3a
	ret nz                                           ; $47d9: $c0

	ld bc, $02a0                                     ; $47da: $01 $a0 $02
	nop                                              ; $47dd: $00
	ld bc, $01c0                                     ; $47de: $01 $c0 $01
	and b                                            ; $47e1: $a0
	ld bc, $3b02                                     ; $47e2: $01 $02 $3b
	ret nz                                           ; $47e5: $c0

	ld bc, $02a0                                     ; $47e6: $01 $a0 $02
	ld [bc], a                                       ; $47e9: $02
	ld b, b                                          ; $47ea: $40
	pop hl                                           ; $47eb: $e1
	ld [hl-], a                                      ; $47ec: $32
	nop                                              ; $47ed: $00
	add hl, hl                                       ; $47ee: $29
	pop hl                                           ; $47ef: $e1
	ld [bc], a                                       ; $47f0: $02
	nop                                              ; $47f1: $00
	ret z                                            ; $47f2: $c8

	ret nz                                           ; $47f3: $c0

	ld bc, $02a0                                     ; $47f4: $01 $a0 $02
	ld [bc], a                                       ; $47f7: $02
	ld c, b                                          ; $47f8: $48
	ret nz                                           ; $47f9: $c0

	ld bc, $01a0                                     ; $47fa: $01 $a0 $01
	ld [bc], a                                       ; $47fd: $02
	ld d, c                                          ; $47fe: $51
	ret nz                                           ; $47ff: $c0

	ld bc, $02a0                                     ; $4800: $01 $a0 $02
	ld bc, $c086                                     ; $4803: $01 $86 $c0
	ld bc, $01a0                                     ; $4806: $01 $a0 $01
	nop                                              ; $4809: $00
	dec hl                                           ; $480a: $2b
	ret nz                                           ; $480b: $c0

	ld bc, $02a0                                     ; $480c: $01 $a0 $02
	nop                                              ; $480f: $00
	cpl                                              ; $4810: $2f
	pop bc                                           ; $4811: $c1
	ld e, e                                          ; $4812: $5b
	ld [bc], a                                       ; $4813: $02
	jp nc, $3ad3                                     ; $4814: $d2 $d3 $3a

	ret nz                                           ; $4817: $c0

	ld bc, $02a0                                     ; $4818: $01 $a0 $02
	nop                                              ; $481b: $00
	ld [hl], $c0                                     ; $481c: $36 $c0
	ld bc, $01a0                                     ; $481e: $01 $a0 $01
	ld [bc], a                                       ; $4821: $02
	dec sp                                           ; $4822: $3b
	ret nz                                           ; $4823: $c0

	ld bc, $02a0                                     ; $4824: $01 $a0 $02
	ld [bc], a                                       ; $4827: $02
	ld d, l                                          ; $4828: $55
	pop hl                                           ; $4829: $e1
	ld [hl-], a                                      ; $482a: $32
	nop                                              ; $482b: $00
	add hl, hl                                       ; $482c: $29
	pop hl                                           ; $482d: $e1
	ld [bc], a                                       ; $482e: $02
	nop                                              ; $482f: $00
	ret z                                            ; $4830: $c8

	ret nz                                           ; $4831: $c0

	ld bc, $02a0                                     ; $4832: $01 $a0 $02
	ld [bc], a                                       ; $4835: $02
	ld e, c                                          ; $4836: $59
	ret nz                                           ; $4837: $c0

	ld bc, $01a0                                     ; $4838: $01 $a0 $01
	ld [bc], a                                       ; $483b: $02
	ld h, b                                          ; $483c: $60
	ret nz                                           ; $483d: $c0

	ld bc, $02a0                                     ; $483e: $01 $a0 $02
	ld bc, $c0a8                                     ; $4841: $01 $a8 $c0
	ld bc, $01a0                                     ; $4844: $01 $a0 $01
	ld bc, $c08a                                     ; $4847: $01 $8a $c0
	ld bc, $02a0                                     ; $484a: $01 $a0 $02
	ld bc, $c1ac                                     ; $484d: $01 $ac $c1
	ld e, e                                          ; $4850: $5b
	ld bc, $2bd4                                     ; $4851: $01 $d4 $2b
	ret nz                                           ; $4854: $c0

	ld bc, $02a0                                     ; $4855: $01 $a0 $02
	ld [bc], a                                       ; $4858: $02
	ld h, l                                          ; $4859: $65
	ret nz                                           ; $485a: $c0

	ld bc, $01a0                                     ; $485b: $01 $a0 $01
	ld [bc], a                                       ; $485e: $02
	dec sp                                           ; $485f: $3b
	ret nz                                           ; $4860: $c0

	ld bc, $02a0                                     ; $4861: $01 $a0 $02
	ld [bc], a                                       ; $4864: $02
	ld l, h                                          ; $4865: $6c
	pop hl                                           ; $4866: $e1
	ld [hl-], a                                      ; $4867: $32
	nop                                              ; $4868: $00
	add hl, hl                                       ; $4869: $29
	pop hl                                           ; $486a: $e1
	ld [bc], a                                       ; $486b: $02
	nop                                              ; $486c: $00
	ret z                                            ; $486d: $c8

	ret nz                                           ; $486e: $c0

	ld bc, $02a0                                     ; $486f: $01 $a0 $02
	ld [bc], a                                       ; $4872: $02
	ld [hl], b                                       ; $4873: $70
	ret nz                                           ; $4874: $c0

	ld bc, $01a0                                     ; $4875: $01 $a0 $01
	ld [bc], a                                       ; $4878: $02
	ld d, c                                          ; $4879: $51
	ldh [$09], a                                     ; $487a: $e0 $09
	ld [hl], d                                       ; $487c: $72
	pop bc                                           ; $487d: $c1
	ld e, e                                          ; $487e: $5b
	ld bc, $1ed5                                     ; $487f: $01 $d5 $1e
	ret nz                                           ; $4882: $c0

	ld bc, $02a0                                     ; $4883: $01 $a0 $02
	nop                                              ; $4886: $00
	add [hl]                                         ; $4887: $86
	ret nz                                           ; $4888: $c0

	ld bc, $01a0                                     ; $4889: $01 $a0 $01
	ld [bc], a                                       ; $488c: $02
	dec sp                                           ; $488d: $3b
	ret nz                                           ; $488e: $c0

	ld bc, $02a0                                     ; $488f: $01 $a0 $02
	ld [bc], a                                       ; $4892: $02
	ld [hl], a                                       ; $4893: $77
	pop hl                                           ; $4894: $e1
	ld [hl-], a                                      ; $4895: $32
	nop                                              ; $4896: $00
	add hl, hl                                       ; $4897: $29
	ret nz                                           ; $4898: $c0

	jp z, $01c0                                      ; $4899: $ca $c0 $01

	and b                                            ; $489c: $a0
	ld bc, $7802                                     ; $489d: $01 $02 $78
	push hl                                          ; $48a0: $e5
	inc sp                                           ; $48a1: $33
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	add hl, bc                                       ; $48a4: $09
	ret nz                                           ; $48a5: $c0

	pop de                                           ; $48a6: $d1
	pop hl                                           ; $48a7: $e1
	ld [bc], a                                       ; $48a8: $02
	nop                                              ; $48a9: $00
	ret nz                                           ; $48aa: $c0

	add e                                            ; $48ab: $83
	ret nz                                           ; $48ac: $c0

	dec de                                           ; $48ad: $1b
	ret nc                                           ; $48ae: $d0

	ld [bc], a                                       ; $48af: $02
	ret nc                                           ; $48b0: $d0

	pop de                                           ; $48b1: $d1
	inc sp                                           ; $48b2: $33
	ret nz                                           ; $48b3: $c0

	ld bc, $02a0                                     ; $48b4: $01 $a0 $02
	nop                                              ; $48b7: $00
	ld bc, $01c0                                     ; $48b8: $01 $c0 $01
	and b                                            ; $48bb: $a0
	ld bc, $3b02                                     ; $48bc: $01 $02 $3b
	ret nz                                           ; $48bf: $c0

	ld bc, $02a0                                     ; $48c0: $01 $a0 $02
	ld [bc], a                                       ; $48c3: $02
	ld b, b                                          ; $48c4: $40
	ldh [rP1], a                                     ; $48c5: $e0 $00
	or d                                             ; $48c7: $b2
	ret nz                                           ; $48c8: $c0

	ld bc, $02a0                                     ; $48c9: $01 $a0 $02
	ld [bc], a                                       ; $48cc: $02
	add d                                            ; $48cd: $82
	ret nz                                           ; $48ce: $c0

	ld bc, $01a0                                     ; $48cf: $01 $a0 $01
	ld [bc], a                                       ; $48d2: $02
	adc d                                            ; $48d3: $8a
	ret nz                                           ; $48d4: $c0

	ld bc, $02a0                                     ; $48d5: $01 $a0 $02
	ld [bc], a                                       ; $48d8: $02
	sub e                                            ; $48d9: $93
	ret nz                                           ; $48da: $c0

	ld bc, $01a0                                     ; $48db: $01 $a0 $01
	nop                                              ; $48de: $00
	dec hl                                           ; $48df: $2b
	ret nz                                           ; $48e0: $c0

	ld bc, $02a0                                     ; $48e1: $01 $a0 $02
	nop                                              ; $48e4: $00
	cpl                                              ; $48e5: $2f
	ld [bc], a                                       ; $48e6: $02
	jp nc, $33d3                                     ; $48e7: $d2 $d3 $33

	ret nz                                           ; $48ea: $c0

	ld bc, $02a0                                     ; $48eb: $01 $a0 $02
	nop                                              ; $48ee: $00
	ld [hl], $c0                                     ; $48ef: $36 $c0
	ld bc, $01a0                                     ; $48f1: $01 $a0 $01
	ld [bc], a                                       ; $48f4: $02
	dec sp                                           ; $48f5: $3b
	ret nz                                           ; $48f6: $c0

	ld bc, $02a0                                     ; $48f7: $01 $a0 $02
	ld [bc], a                                       ; $48fa: $02
	ld d, l                                          ; $48fb: $55
	ldh [rP1], a                                     ; $48fc: $e0 $00
	ld a, e                                          ; $48fe: $7b
	ret nz                                           ; $48ff: $c0

	ld bc, $02a0                                     ; $4900: $01 $a0 $02
	ld [bc], a                                       ; $4903: $02
	add d                                            ; $4904: $82
	ret nz                                           ; $4905: $c0

	ld bc, $01a0                                     ; $4906: $01 $a0 $01
	ld [bc], a                                       ; $4909: $02
	adc d                                            ; $490a: $8a
	ret nz                                           ; $490b: $c0

	ld bc, $02a0                                     ; $490c: $01 $a0 $02
	ld [bc], a                                       ; $490f: $02
	sbc h                                            ; $4910: $9c
	ret nz                                           ; $4911: $c0

	ld bc, $01a0                                     ; $4912: $01 $a0 $01
	ld bc, $c08a                                     ; $4915: $01 $8a $c0
	ld bc, $02a0                                     ; $4918: $01 $a0 $02
	ld bc, $01ac                                     ; $491b: $01 $ac $01
	call nc, $c033                                   ; $491e: $d4 $33 $c0
	ld bc, $02a0                                     ; $4921: $01 $a0 $02
	ld [bc], a                                       ; $4924: $02
	ld h, l                                          ; $4925: $65
	ret nz                                           ; $4926: $c0

	ld bc, $01a0                                     ; $4927: $01 $a0 $01
	ld [bc], a                                       ; $492a: $02
	dec sp                                           ; $492b: $3b
	ret nz                                           ; $492c: $c0

	ld bc, $02a0                                     ; $492d: $01 $a0 $02
	ld [bc], a                                       ; $4930: $02
	ld l, h                                          ; $4931: $6c
	ldh [rP1], a                                     ; $4932: $e0 $00
	ld b, l                                          ; $4934: $45
	ret nz                                           ; $4935: $c0

	ld bc, $02a0                                     ; $4936: $01 $a0 $02
	ld [bc], a                                       ; $4939: $02
	add d                                            ; $493a: $82
	ret nz                                           ; $493b: $c0

	ld bc, $01a0                                     ; $493c: $01 $a0 $01
	ld [bc], a                                       ; $493f: $02
	adc d                                            ; $4940: $8a
	ret nz                                           ; $4941: $c0

	ld bc, $02a0                                     ; $4942: $01 $a0 $02
	ld [bc], a                                       ; $4945: $02
	and [hl]                                         ; $4946: $a6
	ret nz                                           ; $4947: $c0

	ld bc, $01a0                                     ; $4948: $01 $a0 $01
	nop                                              ; $494b: $00
	dec hl                                           ; $494c: $2b
	ret nz                                           ; $494d: $c0

	ld bc, $02a0                                     ; $494e: $01 $a0 $02
	nop                                              ; $4951: $00
	ld a, [hl]                                       ; $4952: $7e
	ld bc, $1ed5                                     ; $4953: $01 $d5 $1e
	ret nz                                           ; $4956: $c0

	ld bc, $02a0                                     ; $4957: $01 $a0 $02
	nop                                              ; $495a: $00
	add [hl]                                         ; $495b: $86
	ret nz                                           ; $495c: $c0

	ld bc, $01a0                                     ; $495d: $01 $a0 $01
	ld [bc], a                                       ; $4960: $02
	dec sp                                           ; $4961: $3b
	ret nz                                           ; $4962: $c0

	ld bc, $02a0                                     ; $4963: $01 $a0 $02
	ld [bc], a                                       ; $4966: $02
	ld [hl], a                                       ; $4967: $77
	pop hl                                           ; $4968: $e1
	ld [hl-], a                                      ; $4969: $32
	nop                                              ; $496a: $00
	add c                                            ; $496b: $81
	ret nz                                           ; $496c: $c0

	jp z, $01c0                                      ; $496d: $ca $c0 $01

	and b                                            ; $4970: $a0
	ld bc, $7802                                     ; $4971: $01 $02 $78
	push hl                                          ; $4974: $e5
	inc sp                                           ; $4975: $33
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	ld [$32e1], sp                                   ; $4978: $08 $e1 $32
	nop                                              ; $497b: $00
	add c                                            ; $497c: $81
	pop hl                                           ; $497d: $e1
	ld [bc], a                                       ; $497e: $02
	nop                                              ; $497f: $00
	ret z                                            ; $4980: $c8

	add hl, bc                                       ; $4981: $09
	dec h                                            ; $4982: $25
	ret nz                                           ; $4983: $c0

	ld hl, $d0d2                                     ; $4984: $21 $d2 $d0
	pop hl                                           ; $4987: $e1
	ld [bc], a                                       ; $4988: $02
	nop                                              ; $4989: $00
	ret nz                                           ; $498a: $c0

	add d                                            ; $498b: $82
	ret nz                                           ; $498c: $c0

	add b                                            ; $498d: $80
	ld bc, $07d3                                     ; $498e: $01 $d3 $07
	ret nz                                           ; $4991: $c0

	ld [hl+], a                                      ; $4992: $22
	jp nc, $e4d0                                     ; $4993: $d2 $d0 $e4

	ld [bc], a                                       ; $4996: $02
	ld h, $01                                        ; $4997: $26 $01
	jp nc, $e403                                     ; $4999: $d2 $03 $e4

	ld bc, $0126                                     ; $499c: $01 $26 $01
	pop de                                           ; $499f: $d1
	rlca                                             ; $49a0: $07
	ret nz                                           ; $49a1: $c0

	ld [hl+], a                                      ; $49a2: $22
	pop de                                           ; $49a3: $d1
	ret nc                                           ; $49a4: $d0

	db $e4                                           ; $49a5: $e4
	nop                                              ; $49a6: $00
	ld [bc], a                                       ; $49a7: $02
	add hl, bc                                       ; $49a8: $09
	pop bc                                           ; $49a9: $c1
	rla                                              ; $49aa: $17
	add e                                            ; $49ab: $83
	ret nz                                           ; $49ac: $c0

	dec de                                           ; $49ad: $1b
	ret nc                                           ; $49ae: $d0

	ld [bc], a                                       ; $49af: $02
	ret nc                                           ; $49b0: $d0

	pop de                                           ; $49b1: $d1
	ld c, [hl]                                       ; $49b2: $4e
	ret nz                                           ; $49b3: $c0

	ld bc, $02a0                                     ; $49b4: $01 $a0 $02
	nop                                              ; $49b7: $00
	ld bc, $01c0                                     ; $49b8: $01 $c0 $01
	and b                                            ; $49bb: $a0
	ld bc, $ac02                                     ; $49bc: $01 $02 $ac
	ret nz                                           ; $49bf: $c0

	ld bc, $02a0                                     ; $49c0: $01 $a0 $02
	ld [bc], a                                       ; $49c3: $02
	or e                                             ; $49c4: $b3
	pop hl                                           ; $49c5: $e1
	ld [bc], a                                       ; $49c6: $02
	rlca                                             ; $49c7: $07
	cp a                                             ; $49c8: $bf
	ret nz                                           ; $49c9: $c0

	ld bc, $01a0                                     ; $49ca: $01 $a0 $01
	ld [bc], a                                       ; $49cd: $02
	cp c                                             ; $49ce: $b9
	ld h, b                                          ; $49cf: $60
	ei                                               ; $49d0: $fb
	pop bc                                           ; $49d1: $c1
	ld c, l                                          ; $49d2: $4d
	ldh [$64], a                                     ; $49d3: $e0 $64
	inc c                                            ; $49d5: $0c
	ret nz                                           ; $49d6: $c0

	ld bc, $02a0                                     ; $49d7: $01 $a0 $02
	ld [bc], a                                       ; $49da: $02
	cp l                                             ; $49db: $bd
	ret nz                                           ; $49dc: $c0

	ld bc, $01a0                                     ; $49dd: $01 $a0 $01
	ld [bc], a                                       ; $49e0: $02
	jp nz, $c00c                                     ; $49e1: $c2 $0c $c0

	ld bc, $02a0                                     ; $49e4: $01 $a0 $02
	ld [bc], a                                       ; $49e7: $02
	ret                                              ; $49e8: $c9


	ret nz                                           ; $49e9: $c0

	ld bc, $01a0                                     ; $49ea: $01 $a0 $01
	ld [bc], a                                       ; $49ed: $02
	call $01c0                                       ; $49ee: $cd $c0 $01
	and b                                            ; $49f1: $a0
	ld [bc], a                                       ; $49f2: $02
	ld bc, $c086                                     ; $49f3: $01 $86 $c0
	ld bc, $01a0                                     ; $49f6: $01 $a0 $01
	nop                                              ; $49f9: $00
	dec hl                                           ; $49fa: $2b
	ret nz                                           ; $49fb: $c0

	ld bc, $02a0                                     ; $49fc: $01 $a0 $02
	nop                                              ; $49ff: $00
	cpl                                              ; $4a00: $2f
	ld [bc], a                                       ; $4a01: $02
	jp nc, Jump_083_4ed3                             ; $4a02: $d2 $d3 $4e

	ret nz                                           ; $4a05: $c0

	ld bc, $02a0                                     ; $4a06: $01 $a0 $02
	nop                                              ; $4a09: $00
	ld [hl], $c0                                     ; $4a0a: $36 $c0
	ld bc, $01a0                                     ; $4a0c: $01 $a0 $01
	ld [bc], a                                       ; $4a0f: $02
	xor h                                            ; $4a10: $ac
	ret nz                                           ; $4a11: $c0

	ld bc, $02a0                                     ; $4a12: $01 $a0 $02
	ld [bc], a                                       ; $4a15: $02
	call nc, $02e1                                   ; $4a16: $d4 $e1 $02
	rlca                                             ; $4a19: $07
	cp a                                             ; $4a1a: $bf
	ret nz                                           ; $4a1b: $c0

	ld bc, $01a0                                     ; $4a1c: $01 $a0 $01
	ld [bc], a                                       ; $4a1f: $02
	cp c                                             ; $4a20: $b9
	ld h, b                                          ; $4a21: $60
	ei                                               ; $4a22: $fb
	pop bc                                           ; $4a23: $c1
	ld c, l                                          ; $4a24: $4d
	ldh [$64], a                                     ; $4a25: $e0 $64
	inc c                                            ; $4a27: $0c
	ret nz                                           ; $4a28: $c0

	ld bc, $02a0                                     ; $4a29: $01 $a0 $02
	ld [bc], a                                       ; $4a2c: $02
	jp c, $01c0                                      ; $4a2d: $da $c0 $01

	and b                                            ; $4a30: $a0
	ld bc, $c202                                     ; $4a31: $01 $02 $c2
	inc c                                            ; $4a34: $0c
	ret nz                                           ; $4a35: $c0

	ld bc, $02a0                                     ; $4a36: $01 $a0 $02
	ld [bc], a                                       ; $4a39: $02
	pop hl                                           ; $4a3a: $e1
	ret nz                                           ; $4a3b: $c0

	ld bc, $01a0                                     ; $4a3c: $01 $a0 $01
	ld [bc], a                                       ; $4a3f: $02
	call $01c0                                       ; $4a40: $cd $c0 $01
	and b                                            ; $4a43: $a0
	ld [bc], a                                       ; $4a44: $02
	ld bc, $c0a8                                     ; $4a45: $01 $a8 $c0
	ld bc, $01a0                                     ; $4a48: $01 $a0 $01
	ld bc, $c08a                                     ; $4a4b: $01 $8a $c0
	ld bc, $02a0                                     ; $4a4e: $01 $a0 $02
	ld bc, $01ac                                     ; $4a51: $01 $ac $01
	call nc, $c03f                                   ; $4a54: $d4 $3f $c0
	ld bc, $02a0                                     ; $4a57: $01 $a0 $02
	ld bc, $c0b8                                     ; $4a5a: $01 $b8 $c0
	ld bc, $01a0                                     ; $4a5d: $01 $a0 $01
	ld [bc], a                                       ; $4a60: $02
	xor h                                            ; $4a61: $ac
	ret nz                                           ; $4a62: $c0

	ld bc, $02a0                                     ; $4a63: $01 $a0 $02
	ld [bc], a                                       ; $4a66: $02
	rst SubAFromBC                                          ; $4a67: $e7
	pop hl                                           ; $4a68: $e1
	ld [bc], a                                       ; $4a69: $02
	rlca                                             ; $4a6a: $07
	cp a                                             ; $4a6b: $bf
	ret nz                                           ; $4a6c: $c0

	ld bc, $01a0                                     ; $4a6d: $01 $a0 $01
	ld [bc], a                                       ; $4a70: $02
	cp c                                             ; $4a71: $b9
	ld h, b                                          ; $4a72: $60
	ei                                               ; $4a73: $fb
	pop bc                                           ; $4a74: $c1
	ld c, l                                          ; $4a75: $4d
	ldh [$64], a                                     ; $4a76: $e0 $64
	inc c                                            ; $4a78: $0c
	ret nz                                           ; $4a79: $c0

	ld bc, $02a0                                     ; $4a7a: $01 $a0 $02
	ld [bc], a                                       ; $4a7d: $02
	db $ed                                           ; $4a7e: $ed
	ret nz                                           ; $4a7f: $c0

	ld bc, $01a0                                     ; $4a80: $01 $a0 $01
	ld [bc], a                                       ; $4a83: $02
	jp nz, $c00c                                     ; $4a84: $c2 $0c $c0

	ld bc, $02a0                                     ; $4a87: $01 $a0 $02
	ld [bc], a                                       ; $4a8a: $02
	db $f4                                           ; $4a8b: $f4
	ret nz                                           ; $4a8c: $c0

	ld bc, $01a0                                     ; $4a8d: $01 $a0 $01
	ld [bc], a                                       ; $4a90: $02
	ei                                               ; $4a91: $fb
	ldh [rTAC], a                                    ; $4a92: $e0 $07
	ld e, d                                          ; $4a94: $5a
	ld bc, $24d5                                     ; $4a95: $01 $d5 $24
	ret nz                                           ; $4a98: $c0

	ld bc, $02a0                                     ; $4a99: $01 $a0 $02
	nop                                              ; $4a9c: $00
	add [hl]                                         ; $4a9d: $86
	ret nz                                           ; $4a9e: $c0

	ld bc, $01a0                                     ; $4a9f: $01 $a0 $01
	ld [bc], a                                       ; $4aa2: $02
	xor h                                            ; $4aa3: $ac
	ret nz                                           ; $4aa4: $c0

	ld bc, $02a0                                     ; $4aa5: $01 $a0 $02
	inc bc                                           ; $4aa8: $03
	nop                                              ; $4aa9: $00
	ret nz                                           ; $4aaa: $c0

	ld bc, $01a0                                     ; $4aab: $01 $a0 $01
	inc bc                                           ; $4aae: $03
	dec b                                            ; $4aaf: $05
	ret nz                                           ; $4ab0: $c0

	ld bc, $02a0                                     ; $4ab1: $01 $a0 $02
	inc bc                                           ; $4ab4: $03
	inc c                                            ; $4ab5: $0c
	ret nz                                           ; $4ab6: $c0

	ld bc, $01a0                                     ; $4ab7: $01 $a0 $01
	nop                                              ; $4aba: $00
	sbc l                                            ; $4abb: $9d
	pop bc                                           ; $4abc: $c1
	ld e, e                                          ; $4abd: $5b
	push hl                                          ; $4abe: $e5
	inc sp                                           ; $4abf: $33
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	add hl, bc                                       ; $4ac2: $09
	ret nz                                           ; $4ac3: $c0

	rst FarCall                                          ; $4ac4: $f7
	add e                                            ; $4ac5: $83
	ret nz                                           ; $4ac6: $c0

	dec de                                           ; $4ac7: $1b
	ret nc                                           ; $4ac8: $d0

	ld [bc], a                                       ; $4ac9: $02
	ret nc                                           ; $4aca: $d0

	pop de                                           ; $4acb: $d1
	jr c, @-$3e                                      ; $4acc: $38 $c0

	ld bc, $02a0                                     ; $4ace: $01 $a0 $02
	nop                                              ; $4ad1: $00
	ld bc, $01c0                                     ; $4ad2: $01 $c0 $01
	and b                                            ; $4ad5: $a0
	ld bc, $0f03                                     ; $4ad6: $01 $03 $0f
	ret nz                                           ; $4ad9: $c0

	ld bc, $02a0                                     ; $4ada: $01 $a0 $02
	inc bc                                           ; $4add: $03
	inc d                                            ; $4ade: $14
	ret nz                                           ; $4adf: $c0

	ld bc, $01a0                                     ; $4ae0: $01 $a0 $01
	inc bc                                           ; $4ae3: $03
	dec de                                           ; $4ae4: $1b
	ret nz                                           ; $4ae5: $c0

	ld bc, $02a0                                     ; $4ae6: $01 $a0 $02
	inc bc                                           ; $4ae9: $03
	inc hl                                           ; $4aea: $23
	ret nz                                           ; $4aeb: $c0

	ld bc, $01a0                                     ; $4aec: $01 $a0 $01
	inc bc                                           ; $4aef: $03
	inc l                                            ; $4af0: $2c
	ret nz                                           ; $4af1: $c0

	ld bc, $02a0                                     ; $4af2: $01 $a0 $02
	inc bc                                           ; $4af5: $03
	inc sp                                           ; $4af6: $33
	ret nz                                           ; $4af7: $c0

	ld bc, $01a0                                     ; $4af8: $01 $a0 $01
	nop                                              ; $4afb: $00
	dec hl                                           ; $4afc: $2b
	ret nz                                           ; $4afd: $c0

	ld bc, $02a0                                     ; $4afe: $01 $a0 $02
	nop                                              ; $4b01: $00
	cpl                                              ; $4b02: $2f
	pop bc                                           ; $4b03: $c1
	ld e, e                                          ; $4b04: $5b
	ld [bc], a                                       ; $4b05: $02
	jp nc, Jump_083_57d3                             ; $4b06: $d2 $d3 $57

	ret nz                                           ; $4b09: $c0

	ld bc, $02a0                                     ; $4b0a: $01 $a0 $02
	nop                                              ; $4b0d: $00
	ld [hl], $c0                                     ; $4b0e: $36 $c0
	ld bc, $01a0                                     ; $4b10: $01 $a0 $01
	inc bc                                           ; $4b13: $03
	rrca                                             ; $4b14: $0f
	ret nz                                           ; $4b15: $c0

	ld bc, $02a0                                     ; $4b16: $01 $a0 $02
	inc bc                                           ; $4b19: $03
	inc a                                            ; $4b1a: $3c
	ret nz                                           ; $4b1b: $c0

	ld bc, $01a0                                     ; $4b1c: $01 $a0 $01
	inc bc                                           ; $4b1f: $03
	ld c, c                                          ; $4b20: $49
	ret nz                                           ; $4b21: $c0

	ld bc, $02a0                                     ; $4b22: $01 $a0 $02
	inc bc                                           ; $4b25: $03
	ld d, b                                          ; $4b26: $50
	ret nz                                           ; $4b27: $c0

	ld bc, $01a0                                     ; $4b28: $01 $a0 $01
	inc bc                                           ; $4b2b: $03
	ld d, c                                          ; $4b2c: $51
	ret nz                                           ; $4b2d: $c0

	ld bc, $02a0                                     ; $4b2e: $01 $a0 $02
	inc bc                                           ; $4b31: $03
	ld e, e                                          ; $4b32: $5b
	or c                                             ; $4b33: $b1
	ld d, h                                          ; $4b34: $54
	inc c                                            ; $4b35: $0c
	ret nz                                           ; $4b36: $c0

	ld bc, $01a0                                     ; $4b37: $01 $a0 $01
	inc bc                                           ; $4b3a: $03
	ld h, [hl]                                       ; $4b3b: $66
	ret nz                                           ; $4b3c: $c0

	ld bc, $02a0                                     ; $4b3d: $01 $a0 $02
	inc bc                                           ; $4b40: $03
	ld l, a                                          ; $4b41: $6f
	xor d                                            ; $4b42: $aa
	inc c                                            ; $4b43: $0c
	ret nz                                           ; $4b44: $c0

	ld bc, $01a0                                     ; $4b45: $01 $a0 $01
	ld bc, $c08a                                     ; $4b48: $01 $8a $c0
	ld bc, $02a0                                     ; $4b4b: $01 $a0 $02
	ld bc, $ffac                                     ; $4b4e: $01 $ac $ff
	inc c                                            ; $4b51: $0c
	ret nz                                           ; $4b52: $c0

	ld bc, $01a0                                     ; $4b53: $01 $a0 $01
	ld bc, $c08a                                     ; $4b56: $01 $8a $c0
	ld bc, $02a0                                     ; $4b59: $01 $a0 $02
	inc bc                                           ; $4b5c: $03
	ld a, a                                          ; $4b5d: $7f
	pop bc                                           ; $4b5e: $c1
	ld e, e                                          ; $4b5f: $5b
	ld bc, $38d4                                     ; $4b60: $01 $d4 $38
	ret nz                                           ; $4b63: $c0

	ld bc, $02a0                                     ; $4b64: $01 $a0 $02
	ld bc, $c0b8                                     ; $4b67: $01 $b8 $c0
	ld bc, $01a0                                     ; $4b6a: $01 $a0 $01
	inc bc                                           ; $4b6d: $03
	rrca                                             ; $4b6e: $0f
	ret nz                                           ; $4b6f: $c0

	ld bc, $02a0                                     ; $4b70: $01 $a0 $02
	inc bc                                           ; $4b73: $03
	inc d                                            ; $4b74: $14
	ret nz                                           ; $4b75: $c0

	ld bc, $01a0                                     ; $4b76: $01 $a0 $01
	inc bc                                           ; $4b79: $03
	adc b                                            ; $4b7a: $88
	ret nz                                           ; $4b7b: $c0

	ld bc, $02a0                                     ; $4b7c: $01 $a0 $02
	inc bc                                           ; $4b7f: $03
	sub b                                            ; $4b80: $90
	ret nz                                           ; $4b81: $c0

	ld bc, $01a0                                     ; $4b82: $01 $a0 $01
	inc bc                                           ; $4b85: $03
	inc l                                            ; $4b86: $2c
	ret nz                                           ; $4b87: $c0

jr_083_4b88:
	ld bc, $02a0                                     ; $4b88: $01 $a0 $02
	inc bc                                           ; $4b8b: $03
	sbc d                                            ; $4b8c: $9a
	ret nz                                           ; $4b8d: $c0

	ld bc, $01a0                                     ; $4b8e: $01 $a0 $01
	nop                                              ; $4b91: $00
	dec hl                                           ; $4b92: $2b
	ret nz                                           ; $4b93: $c0

	ld bc, $02a0                                     ; $4b94: $01 $a0 $02
	nop                                              ; $4b97: $00
	ld a, [hl]                                       ; $4b98: $7e
	pop bc                                           ; $4b99: $c1
	ld e, e                                          ; $4b9a: $5b
	ld bc, $1ad5                                     ; $4b9b: $01 $d5 $1a
	ret nz                                           ; $4b9e: $c0

	ld bc, $02a0                                     ; $4b9f: $01 $a0 $02
	nop                                              ; $4ba2: $00
	add [hl]                                         ; $4ba3: $86
	ret nz                                           ; $4ba4: $c0

	ld bc, $01a0                                     ; $4ba5: $01 $a0 $01
	inc bc                                           ; $4ba8: $03
	and b                                            ; $4ba9: $a0
	ret nz                                           ; $4baa: $c0

	ld bc, $02a0                                     ; $4bab: $01 $a0 $02
	inc bc                                           ; $4bae: $03
	xor b                                            ; $4baf: $a8
	pop bc                                           ; $4bb0: $c1
	ld e, e                                          ; $4bb1: $5b
	ret nz                                           ; $4bb2: $c0

	ld bc, $01a0                                     ; $4bb3: $01 $a0 $01
	inc bc                                           ; $4bb6: $03
	xor e                                            ; $4bb7: $ab
	push hl                                          ; $4bb8: $e5
	inc sp                                           ; $4bb9: $33
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	add hl, bc                                       ; $4bbc: $09
	ret nz                                           ; $4bbd: $c0

	ret                                              ; $4bbe: $c9


	add e                                            ; $4bbf: $83
	ret nz                                           ; $4bc0: $c0

	dec de                                           ; $4bc1: $1b
	ret nc                                           ; $4bc2: $d0

	ld [bc], a                                       ; $4bc3: $02
	ret nc                                           ; $4bc4: $d0

	pop de                                           ; $4bc5: $d1
	jr c, jr_083_4b88                                ; $4bc6: $38 $c0

	ld bc, $02a0                                     ; $4bc8: $01 $a0 $02
	nop                                              ; $4bcb: $00
	ld bc, $01c0                                     ; $4bcc: $01 $c0 $01
	and b                                            ; $4bcf: $a0
	ld bc, $0200                                     ; $4bd0: $01 $00 $02
	ret nz                                           ; $4bd3: $c0

	ld bc, $02a0                                     ; $4bd4: $01 $a0 $02
	inc bc                                           ; $4bd7: $03
	or b                                             ; $4bd8: $b0
	ret nz                                           ; $4bd9: $c0

	ld bc, $01a0                                     ; $4bda: $01 $a0 $01
	inc bc                                           ; $4bdd: $03
	cp b                                             ; $4bde: $b8
	ret nz                                           ; $4bdf: $c0

	ld bc, $02a0                                     ; $4be0: $01 $a0 $02
	inc bc                                           ; $4be3: $03
	cp a                                             ; $4be4: $bf
	ret nz                                           ; $4be5: $c0

	ld bc, $01a0                                     ; $4be6: $01 $a0 $01
	inc bc                                           ; $4be9: $03
	call z, $01c0                                    ; $4bea: $cc $c0 $01
	and b                                            ; $4bed: $a0
	ld [bc], a                                       ; $4bee: $02
	ld bc, $c086                                     ; $4bef: $01 $86 $c0
	ld bc, $01a0                                     ; $4bf2: $01 $a0 $01
	nop                                              ; $4bf5: $00
	dec hl                                           ; $4bf6: $2b
	ret nz                                           ; $4bf7: $c0

	ld bc, $02a0                                     ; $4bf8: $01 $a0 $02
	nop                                              ; $4bfb: $00
	cpl                                              ; $4bfc: $2f
	pop bc                                           ; $4bfd: $c1
	ld e, e                                          ; $4bfe: $5b
	ld [bc], a                                       ; $4bff: $02
	jp nc, $38d3                                     ; $4c00: $d2 $d3 $38

	ret nz                                           ; $4c03: $c0

	ld bc, $02a0                                     ; $4c04: $01 $a0 $02
	nop                                              ; $4c07: $00
	ld [hl], $c0                                     ; $4c08: $36 $c0
	ld bc, $01a0                                     ; $4c0a: $01 $a0 $01
	nop                                              ; $4c0d: $00
	ld [bc], a                                       ; $4c0e: $02
	ret nz                                           ; $4c0f: $c0

	ld bc, $02a0                                     ; $4c10: $01 $a0 $02
	inc bc                                           ; $4c13: $03
	or b                                             ; $4c14: $b0
	ret nz                                           ; $4c15: $c0

	ld bc, $01a0                                     ; $4c16: $01 $a0 $01
	inc bc                                           ; $4c19: $03
	cp b                                             ; $4c1a: $b8
	ret nz                                           ; $4c1b: $c0

	ld bc, $02a0                                     ; $4c1c: $01 $a0 $02
	inc bc                                           ; $4c1f: $03
	adc $c0                                          ; $4c20: $ce $c0
	ld bc, $01a0                                     ; $4c22: $01 $a0 $01
	inc bc                                           ; $4c25: $03
	db $db                                           ; $4c26: $db
	ret nz                                           ; $4c27: $c0

	ld bc, $02a0                                     ; $4c28: $01 $a0 $02
	ld bc, $c0a8                                     ; $4c2b: $01 $a8 $c0
	ld bc, $01a0                                     ; $4c2e: $01 $a0 $01
	nop                                              ; $4c31: $00
	dec hl                                           ; $4c32: $2b
	ret nz                                           ; $4c33: $c0

	ld bc, $02a0                                     ; $4c34: $01 $a0 $02
	nop                                              ; $4c37: $00
	ld c, l                                          ; $4c38: $4d
	pop bc                                           ; $4c39: $c1
	ld e, e                                          ; $4c3a: $5b
	ld bc, $29d4                                     ; $4c3b: $01 $d4 $29
	ret nz                                           ; $4c3e: $c0

	ld bc, $02a0                                     ; $4c3f: $01 $a0 $02
	nop                                              ; $4c42: $00
	ld d, [hl]                                       ; $4c43: $56
	ret nz                                           ; $4c44: $c0

	ld bc, $01a0                                     ; $4c45: $01 $a0 $01
	nop                                              ; $4c48: $00
	ld e, d                                          ; $4c49: $5a
	ret nz                                           ; $4c4a: $c0

	ld bc, $02a0                                     ; $4c4b: $01 $a0 $02
	inc bc                                           ; $4c4e: $03
	or b                                             ; $4c4f: $b0
	ret nz                                           ; $4c50: $c0

	ld bc, $01a0                                     ; $4c51: $01 $a0 $01
	inc bc                                           ; $4c54: $03
	cp b                                             ; $4c55: $b8
	ret nz                                           ; $4c56: $c0

	ld bc, $02a0                                     ; $4c57: $01 $a0 $02
	inc bc                                           ; $4c5a: $03
	db $e3                                           ; $4c5b: $e3
	ret nz                                           ; $4c5c: $c0

	ld bc, $01a0                                     ; $4c5d: $01 $a0 $01
	inc bc                                           ; $4c60: $03
	db $ed                                           ; $4c61: $ed
	ldh [rTIMA], a                                   ; $4c62: $e0 $05
	adc d                                            ; $4c64: $8a
	pop bc                                           ; $4c65: $c1
	ld e, e                                          ; $4c66: $5b
	ld bc, $1ad5                                     ; $4c67: $01 $d5 $1a
	ret nz                                           ; $4c6a: $c0

	ld bc, $02a0                                     ; $4c6b: $01 $a0 $02
	nop                                              ; $4c6e: $00
	add [hl]                                         ; $4c6f: $86
	ret nz                                           ; $4c70: $c0

	ld bc, $01a0                                     ; $4c71: $01 $a0 $01
	nop                                              ; $4c74: $00
	adc c                                            ; $4c75: $89
	ret nz                                           ; $4c76: $c0

	ld bc, $02a0                                     ; $4c77: $01 $a0 $02
	inc bc                                           ; $4c7a: $03
	rst FarCall                                          ; $4c7b: $f7
	pop bc                                           ; $4c7c: $c1
	ld e, e                                          ; $4c7d: $5b
	ret nz                                           ; $4c7e: $c0

	ld bc, $01a0                                     ; $4c7f: $01 $a0 $01
	inc bc                                           ; $4c82: $03
	db $fd                                           ; $4c83: $fd
	push hl                                          ; $4c84: $e5
	inc sp                                           ; $4c85: $33
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	add hl, bc                                       ; $4c88: $09
	ld e, $c1                                        ; $4c89: $1e $c1
	ld e, c                                          ; $4c8b: $59
	db $e3                                           ; $4c8c: $e3
	nop                                              ; $4c8d: $00
	ld d, a                                          ; $4c8e: $57
	pop hl                                           ; $4c8f: $e1
	ld [bc], a                                       ; $4c90: $02
	nop                                              ; $4c91: $00
	ldh a, [hDisp0_LCDC]                                     ; $4c92: $f0 $82
	ret nz                                           ; $4c94: $c0

	add b                                            ; $4c95: $80
	ld bc, $03d3                                     ; $4c96: $01 $d3 $03
	db $e4                                           ; $4c99: $e4
	ld bc, $01c8                                     ; $4c9a: $01 $c8 $01
	jp nc, $e403                                     ; $4c9d: $d2 $03 $e4

	nop                                              ; $4ca0: $00
	db $db                                           ; $4ca1: $db
	ld bc, $03d1                                     ; $4ca2: $01 $d1 $03
	db $e4                                           ; $4ca5: $e4
	nop                                              ; $4ca6: $00
	ld [bc], a                                       ; $4ca7: $02
	add hl, bc                                       ; $4ca8: $09
	or d                                             ; $4ca9: $b2
	add e                                            ; $4caa: $83
	ret nz                                           ; $4cab: $c0

	dec de                                           ; $4cac: $1b
	ret nc                                           ; $4cad: $d0

	ld [bc], a                                       ; $4cae: $02
	jp nc, $18d3                                     ; $4caf: $d2 $d3 $18

	ldh [rP1], a                                     ; $4cb2: $e0 $00
	xor c                                            ; $4cb4: $a9
	ret nz                                           ; $4cb5: $c0

	ld bc, $01a0                                     ; $4cb6: $01 $a0 $01
	inc b                                            ; $4cb9: $04
	inc bc                                           ; $4cba: $03
	ret nz                                           ; $4cbb: $c0

	ld bc, $02a0                                     ; $4cbc: $01 $a0 $02
	inc b                                            ; $4cbf: $04
	inc c                                            ; $4cc0: $0c
	pop bc                                           ; $4cc1: $c1
	ld e, e                                          ; $4cc2: $5b
	pop hl                                           ; $4cc3: $e1
	ld [hl-], a                                      ; $4cc4: $32
	ld bc, $e05d                                     ; $4cc5: $01 $5d $e0
	ld bc, $025f                                     ; $4cc8: $01 $5f $02
	ret nc                                           ; $4ccb: $d0

	pop de                                           ; $4ccc: $d1
	inc h                                            ; $4ccd: $24
	ldh [rP1], a                                     ; $4cce: $e0 $00
	adc l                                            ; $4cd0: $8d
	ret nz                                           ; $4cd1: $c0

	ld bc, $01a0                                     ; $4cd2: $01 $a0 $01
	inc b                                            ; $4cd5: $04
	rra                                              ; $4cd6: $1f
	ret nz                                           ; $4cd7: $c0

	ld bc, $02a0                                     ; $4cd8: $01 $a0 $02
	inc b                                            ; $4cdb: $04
	ld [hl+], a                                      ; $4cdc: $22
	ret nz                                           ; $4cdd: $c0

	ld bc, $01a0                                     ; $4cde: $01 $a0 $01
	inc b                                            ; $4ce1: $04
	ld l, $c0                                        ; $4ce2: $2e $c0
	ld bc, $02a0                                     ; $4ce4: $01 $a0 $02
	inc b                                            ; $4ce7: $04
	ld [hl-], a                                      ; $4ce8: $32
	pop bc                                           ; $4ce9: $c1
	ld e, e                                          ; $4cea: $5b
	pop hl                                           ; $4ceb: $e1
	ld [hl-], a                                      ; $4cec: $32
	ld bc, $e05d                                     ; $4ced: $01 $5d $e0
	ld bc, $0137                                     ; $4cf0: $01 $37 $01
	call nc, $e018                                   ; $4cf3: $d4 $18 $e0
	nop                                              ; $4cf6: $00
	ld h, [hl]                                       ; $4cf7: $66
	ret nz                                           ; $4cf8: $c0

	ld bc, $01a0                                     ; $4cf9: $01 $a0 $01
	inc b                                            ; $4cfc: $04
	dec a                                            ; $4cfd: $3d
	ret nz                                           ; $4cfe: $c0

	ld bc, $02a0                                     ; $4cff: $01 $a0 $02
	inc b                                            ; $4d02: $04
	ld b, d                                          ; $4d03: $42
	pop bc                                           ; $4d04: $c1
	ld e, e                                          ; $4d05: $5b
	pop hl                                           ; $4d06: $e1
	ld [hl-], a                                      ; $4d07: $32
	ld bc, $e05d                                     ; $4d08: $01 $5d $e0
	ld bc, $011c                                     ; $4d0b: $01 $1c $01
	push de                                          ; $4d0e: $d5
	ld c, b                                          ; $4d0f: $48
	ret nz                                           ; $4d10: $c0

	ld bc, $02a0                                     ; $4d11: $01 $a0 $02
	inc b                                            ; $4d14: $04
	ld d, l                                          ; $4d15: $55
	ret nz                                           ; $4d16: $c0

	ld bc, $01a0                                     ; $4d17: $01 $a0 $01
	inc b                                            ; $4d1a: $04
	ld h, c                                          ; $4d1b: $61
	ret nz                                           ; $4d1c: $c0

	ld bc, $02a0                                     ; $4d1d: $01 $a0 $02
	inc b                                            ; $4d20: $04
	ld l, l                                          ; $4d21: $6d
	ldh [rSC], a                                     ; $4d22: $e0 $02
	inc a                                            ; $4d24: $3c
	pop hl                                           ; $4d25: $e1
	ld [hl-], a                                      ; $4d26: $32
	ld bc, $605d                                     ; $4d27: $01 $5d $60
	ei                                               ; $4d2a: $fb
	pop bc                                           ; $4d2b: $c1
	ld c, l                                          ; $4d2c: $4d
	ldh [$64], a                                     ; $4d2d: $e0 $64
	ld [de], a                                       ; $4d2f: $12
	ret nz                                           ; $4d30: $c0

	ld bc, $02a0                                     ; $4d31: $01 $a0 $02
	inc b                                            ; $4d34: $04
	ld [hl], h                                       ; $4d35: $74
	ret nz                                           ; $4d36: $c0

	ld bc, $01a0                                     ; $4d37: $01 $a0 $01
	inc b                                            ; $4d3a: $04
	ld a, c                                          ; $4d3b: $79
	ret nz                                           ; $4d3c: $c0

	ld bc, $02a0                                     ; $4d3d: $01 $a0 $02
	inc b                                            ; $4d40: $04
	add d                                            ; $4d41: $82
	ld [de], a                                       ; $4d42: $12
	ret nz                                           ; $4d43: $c0

	ld bc, $02a0                                     ; $4d44: $01 $a0 $02
	inc b                                            ; $4d47: $04
	adc l                                            ; $4d48: $8d
	ret nz                                           ; $4d49: $c0

	ld bc, $01a0                                     ; $4d4a: $01 $a0 $01
	inc b                                            ; $4d4d: $04
	sub l                                            ; $4d4e: $95
	ret nz                                           ; $4d4f: $c0

	ld bc, $02a0                                     ; $4d50: $01 $a0 $02
	inc b                                            ; $4d53: $04
	sbc h                                            ; $4d54: $9c
	ldh [rSC], a                                     ; $4d55: $e0 $02
	add hl, bc                                       ; $4d57: $09
	push hl                                          ; $4d58: $e5
	inc sp                                           ; $4d59: $33
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	ld e, $c0                                        ; $4d5c: $1e $c0
	ld bc, $02a0                                     ; $4d5e: $01 $a0 $02
	inc b                                            ; $4d61: $04
	and a                                            ; $4d62: $a7
	ret nz                                           ; $4d63: $c0

	ld bc, $01a0                                     ; $4d64: $01 $a0 $01
	inc b                                            ; $4d67: $04
	ld h, c                                          ; $4d68: $61
	ret nz                                           ; $4d69: $c0

	ld bc, $02a0                                     ; $4d6a: $01 $a0 $02
	inc b                                            ; $4d6d: $04
	or l                                             ; $4d6e: $b5
	ret nz                                           ; $4d6f: $c0

	ld bc, $01a0                                     ; $4d70: $01 $a0 $01
	inc b                                            ; $4d73: $04
	cp e                                             ; $4d74: $bb
	ret nz                                           ; $4d75: $c0

	ld bc, $02a0                                     ; $4d76: $01 $a0 $02
	inc b                                            ; $4d79: $04
	pop bc                                           ; $4d7a: $c1
	add hl, bc                                       ; $4d7b: $09
	xor d                                            ; $4d7c: $aa
	add d                                            ; $4d7d: $82
	ret nz                                           ; $4d7e: $c0

	dec de                                           ; $4d7f: $1b
	ret nc                                           ; $4d80: $d0

	inc b                                            ; $4d81: $04
	ret nc                                           ; $4d82: $d0

	pop de                                           ; $4d83: $d1
	jp nc, $27d3                                     ; $4d84: $d2 $d3 $27

	ret nz                                           ; $4d87: $c0

	ld bc, $02a0                                     ; $4d88: $01 $a0 $02
	inc b                                            ; $4d8b: $04
	ret                                              ; $4d8c: $c9


	ret nz                                           ; $4d8d: $c0

	ld bc, $01a0                                     ; $4d8e: $01 $a0 $01
	inc b                                            ; $4d91: $04
	rst GetHLinHL                                          ; $4d92: $cf
	ret nz                                           ; $4d93: $c0

	ld bc, $02a0                                     ; $4d94: $01 $a0 $02
	inc b                                            ; $4d97: $04
	rst SubAFromDE                                          ; $4d98: $df
	ret nz                                           ; $4d99: $c0

	ld bc, $01a0                                     ; $4d9a: $01 $a0 $01
	inc b                                            ; $4d9d: $04
	push hl                                          ; $4d9e: $e5
	ret nz                                           ; $4d9f: $c0

	ld bc, $02a0                                     ; $4da0: $01 $a0 $02
	inc b                                            ; $4da3: $04
	db $ed                                           ; $4da4: $ed
	pop bc                                           ; $4da5: $c1
	ld e, e                                          ; $4da6: $5b
	pop hl                                           ; $4da7: $e1
	ld [hl-], a                                      ; $4da8: $32
	ld bc, $e05d                                     ; $4da9: $01 $5d $e0
	nop                                              ; $4dac: $00
	ld a, e                                          ; $4dad: $7b
	ld bc, $27d4                                     ; $4dae: $01 $d4 $27
	ret nz                                           ; $4db1: $c0

	ld bc, $02a0                                     ; $4db2: $01 $a0 $02
	inc b                                            ; $4db5: $04
	ld hl, sp-$40                                    ; $4db6: $f8 $c0
	ld bc, $01a0                                     ; $4db8: $01 $a0 $01
	inc b                                            ; $4dbb: $04
	cp $c0                                           ; $4dbc: $fe $c0
	ld bc, $02a0                                     ; $4dbe: $01 $a0 $02
	dec b                                            ; $4dc1: $05
	ld [$01c0], sp                                   ; $4dc2: $08 $c0 $01
	and b                                            ; $4dc5: $a0
	ld bc, $1205                                     ; $4dc6: $01 $05 $12
	ret nz                                           ; $4dc9: $c0

	ld bc, $02a0                                     ; $4dca: $01 $a0 $02
	dec b                                            ; $4dcd: $05
	inc e                                            ; $4dce: $1c
	pop bc                                           ; $4dcf: $c1
	ld e, e                                          ; $4dd0: $5b
	pop hl                                           ; $4dd1: $e1
	ld [hl-], a                                      ; $4dd2: $32

Jump_083_4dd3:
	ld bc, $e05d                                     ; $4dd3: $01 $5d $e0
	nop                                              ; $4dd6: $00
	ld d, c                                          ; $4dd7: $51
	ld bc, $48d5                                     ; $4dd8: $01 $d5 $48
	ret nz                                           ; $4ddb: $c0

	ld bc, $02a0                                     ; $4ddc: $01 $a0 $02
	dec b                                            ; $4ddf: $05
	inc h                                            ; $4de0: $24
	ret nz                                           ; $4de1: $c0

	ld bc, $01a0                                     ; $4de2: $01 $a0 $01
	dec b                                            ; $4de5: $05
	ld a, [hl+]                                      ; $4de6: $2a
	ret nz                                           ; $4de7: $c0

	ld bc, $02a0                                     ; $4de8: $01 $a0 $02
	dec b                                            ; $4deb: $05
	ld sp, $01e0                                     ; $4dec: $31 $e0 $01
	ld [hl], c                                       ; $4def: $71

jr_083_4df0:
	pop hl                                           ; $4df0: $e1
	ld [hl-], a                                      ; $4df1: $32
	ld bc, $605d                                     ; $4df2: $01 $5d $60
	ei                                               ; $4df5: $fb
	pop bc                                           ; $4df6: $c1
	ld c, l                                          ; $4df7: $4d
	ldh [$64], a                                     ; $4df8: $e0 $64
	ld [de], a                                       ; $4dfa: $12
	ret nz                                           ; $4dfb: $c0

	ld bc, $02a0                                     ; $4dfc: $01 $a0 $02
	inc b                                            ; $4dff: $04
	ld [hl], h                                       ; $4e00: $74
	ret nz                                           ; $4e01: $c0

	ld bc, $01a0                                     ; $4e02: $01 $a0 $01
	inc b                                            ; $4e05: $04
	ld a, c                                          ; $4e06: $79
	ret nz                                           ; $4e07: $c0

	ld bc, $02a0                                     ; $4e08: $01 $a0 $02
	dec b                                            ; $4e0b: $05
	dec sp                                           ; $4e0c: $3b
	ld [de], a                                       ; $4e0d: $12
	ret nz                                           ; $4e0e: $c0

	ld bc, $02a0                                     ; $4e0f: $01 $a0 $02
	inc b                                            ; $4e12: $04
	adc l                                            ; $4e13: $8d
	ret nz                                           ; $4e14: $c0

	ld bc, $01a0                                     ; $4e15: $01 $a0 $01
	dec b                                            ; $4e18: $05
	ld b, [hl]                                       ; $4e19: $46
	ret nz                                           ; $4e1a: $c0

	ld bc, $02a0                                     ; $4e1b: $01 $a0 $02
	dec b                                            ; $4e1e: $05
	ld c, [hl]                                       ; $4e1f: $4e
	ldh [rSB], a                                     ; $4e20: $e0 $01
	ld a, $e5                                        ; $4e22: $3e $e5
	inc sp                                           ; $4e24: $33
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	ld a, [hl-]                                      ; $4e27: $3a
	ld h, b                                          ; $4e28: $60
	ei                                               ; $4e29: $fb
	pop bc                                           ; $4e2a: $c1
	ld c, l                                          ; $4e2b: $4d
	ldh [$64], a                                     ; $4e2c: $e0 $64
	jr jr_083_4df0                                   ; $4e2e: $18 $c0

	ld bc, $02a0                                     ; $4e30: $01 $a0 $02
	dec b                                            ; $4e33: $05
	ld d, d                                          ; $4e34: $52
	ret nz                                           ; $4e35: $c0

	ld bc, $01a0                                     ; $4e36: $01 $a0 $01
	dec b                                            ; $4e39: $05
	ld e, e                                          ; $4e3a: $5b
	ret nz                                           ; $4e3b: $c0

	ld bc, $02a0                                     ; $4e3c: $01 $a0 $02
	dec b                                            ; $4e3f: $05
	ld e, a                                          ; $4e40: $5f
	ret nz                                           ; $4e41: $c0

	ld bc, $01a0                                     ; $4e42: $01 $a0 $01
	dec b                                            ; $4e45: $05
	ld l, c                                          ; $4e46: $69
	jr @-$3e                                         ; $4e47: $18 $c0

	ld bc, $02a0                                     ; $4e49: $01 $a0 $02
	dec b                                            ; $4e4c: $05
	ld l, l                                          ; $4e4d: $6d
	ret nz                                           ; $4e4e: $c0

	ld bc, $01a0                                     ; $4e4f: $01 $a0 $01
	inc b                                            ; $4e52: $04
	sub l                                            ; $4e53: $95
	ret nz                                           ; $4e54: $c0

	ld bc, $02a0                                     ; $4e55: $01 $a0 $02
	dec b                                            ; $4e58: $05
	ld [hl], a                                       ; $4e59: $77
	ret nz                                           ; $4e5a: $c0

	ld bc, $01a0                                     ; $4e5b: $01 $a0 $01
	dec b                                            ; $4e5e: $05
	ld l, c                                          ; $4e5f: $69
	pop bc                                           ; $4e60: $c1
	ld e, e                                          ; $4e61: $5b
	add hl, bc                                       ; $4e62: $09
	or [hl]                                          ; $4e63: $b6
	add d                                            ; $4e64: $82
	ret nz                                           ; $4e65: $c0

	dec de                                           ; $4e66: $1b
	ret nc                                           ; $4e67: $d0

	inc b                                            ; $4e68: $04
	ret nc                                           ; $4e69: $d0

	pop de                                           ; $4e6a: $d1
	jp nc, $33d3                                     ; $4e6b: $d2 $d3 $33

	ret nz                                           ; $4e6e: $c0

	ld bc, $02a0                                     ; $4e6f: $01 $a0 $02
	dec b                                            ; $4e72: $05
	adc h                                            ; $4e73: $8c
	ret nz                                           ; $4e74: $c0

	ld bc, $01a0                                     ; $4e75: $01 $a0 $01
	dec b                                            ; $4e78: $05
	sub l                                            ; $4e79: $95
	ret nz                                           ; $4e7a: $c0

	ld bc, $02a0                                     ; $4e7b: $01 $a0 $02
	dec b                                            ; $4e7e: $05
	and a                                            ; $4e7f: $a7
	ret nz                                           ; $4e80: $c0

	ld bc, $01a0                                     ; $4e81: $01 $a0 $01
	dec b                                            ; $4e84: $05
	xor l                                            ; $4e85: $ad
	ret nz                                           ; $4e86: $c0

	ld bc, $02a0                                     ; $4e87: $01 $a0 $02
	dec b                                            ; $4e8a: $05
	cp a                                             ; $4e8b: $bf
	ret nz                                           ; $4e8c: $c0

	ld bc, $01a0                                     ; $4e8d: $01 $a0 $01
	dec b                                            ; $4e90: $05
	set 0, b                                         ; $4e91: $cb $c0
	ld bc, $02a0                                     ; $4e93: $01 $a0 $02
	dec b                                            ; $4e96: $05
	sub $c1                                          ; $4e97: $d6 $c1
	ld e, e                                          ; $4e99: $5b
	pop hl                                           ; $4e9a: $e1
	ld [hl-], a                                      ; $4e9b: $32
	ld bc, $e05d                                     ; $4e9c: $01 $5d $e0
	nop                                              ; $4e9f: $00
	ld a, e                                          ; $4ea0: $7b
	ld bc, $27d4                                     ; $4ea1: $01 $d4 $27
	ret nz                                           ; $4ea4: $c0

	ld bc, $02a0                                     ; $4ea5: $01 $a0 $02
	dec b                                            ; $4ea8: $05
	adc h                                            ; $4ea9: $8c
	ret nz                                           ; $4eaa: $c0

	ld bc, $01a0                                     ; $4eab: $01 $a0 $01
	dec b                                            ; $4eae: $05
	ld l, c                                          ; $4eaf: $69
	ret nz                                           ; $4eb0: $c0

	ld bc, $02a0                                     ; $4eb1: $01 $a0 $02
	dec b                                            ; $4eb4: $05
	ret c                                            ; $4eb5: $d8

	ret nz                                           ; $4eb6: $c0

	ld bc, $01a0                                     ; $4eb7: $01 $a0 $01
	dec b                                            ; $4eba: $05
	ldh [$c0], a                                     ; $4ebb: $e0 $c0
	ld bc, $02a0                                     ; $4ebd: $01 $a0 $02
	dec b                                            ; $4ec0: $05
	db $eb                                           ; $4ec1: $eb
	pop bc                                           ; $4ec2: $c1
	ld e, e                                          ; $4ec3: $5b
	pop hl                                           ; $4ec4: $e1
	ld [hl-], a                                      ; $4ec5: $32
	ld bc, $e05d                                     ; $4ec6: $01 $5d $e0
	nop                                              ; $4ec9: $00
	ld d, c                                          ; $4eca: $51
	ld bc, $48d5                                     ; $4ecb: $01 $d5 $48
	ret nz                                           ; $4ece: $c0

	ld bc, $02a0                                     ; $4ecf: $01 $a0 $02
	dec b                                            ; $4ed2: $05

Jump_083_4ed3:
	db $ed                                           ; $4ed3: $ed
	ret nz                                           ; $4ed4: $c0

	ld bc, $01a0                                     ; $4ed5: $01 $a0 $01
	dec b                                            ; $4ed8: $05
	or $c0                                           ; $4ed9: $f6 $c0
	ld bc, $02a0                                     ; $4edb: $01 $a0 $02
	dec b                                            ; $4ede: $05
	ld sp, $00e0                                     ; $4edf: $31 $e0 $00
	ld a, [hl]                                       ; $4ee2: $7e

jr_083_4ee3:
	pop hl                                           ; $4ee3: $e1
	ld [hl-], a                                      ; $4ee4: $32
	ld bc, $605d                                     ; $4ee5: $01 $5d $60
	ei                                               ; $4ee8: $fb
	pop bc                                           ; $4ee9: $c1
	ld c, l                                          ; $4eea: $4d
	ldh [$64], a                                     ; $4eeb: $e0 $64
	ld [de], a                                       ; $4eed: $12
	ret nz                                           ; $4eee: $c0

	ld bc, $02a0                                     ; $4eef: $01 $a0 $02
	inc b                                            ; $4ef2: $04
	ld [hl], h                                       ; $4ef3: $74
	ret nz                                           ; $4ef4: $c0

	ld bc, $01a0                                     ; $4ef5: $01 $a0 $01
	inc b                                            ; $4ef8: $04
	ld a, c                                          ; $4ef9: $79
	ret nz                                           ; $4efa: $c0

	ld bc, $02a0                                     ; $4efb: $01 $a0 $02
	ld b, $00                                        ; $4efe: $06 $00
	ld [de], a                                       ; $4f00: $12
	ret nz                                           ; $4f01: $c0

	ld bc, $02a0                                     ; $4f02: $01 $a0 $02
	inc b                                            ; $4f05: $04
	adc l                                            ; $4f06: $8d
	ret nz                                           ; $4f07: $c0

	ld bc, $01a0                                     ; $4f08: $01 $a0 $01
	ld b, $12                                        ; $4f0b: $06 $12
	ret nz                                           ; $4f0d: $c0

	ld bc, $02a0                                     ; $4f0e: $01 $a0 $02
	ld b, $1a                                        ; $4f11: $06 $1a
	ldh [rP1], a                                     ; $4f13: $e0 $00
	ld c, e                                          ; $4f15: $4b
	push hl                                          ; $4f16: $e5
	inc sp                                           ; $4f17: $33
	nop                                              ; $4f18: $00
	nop                                              ; $4f19: $00
	ld b, h                                          ; $4f1a: $44
	ld h, b                                          ; $4f1b: $60
	ei                                               ; $4f1c: $fb
	pop bc                                           ; $4f1d: $c1
	ld c, l                                          ; $4f1e: $4d
	ldh [$64], a                                     ; $4f1f: $e0 $64
	jr jr_083_4ee3                                   ; $4f21: $18 $c0

	ld bc, $02a0                                     ; $4f23: $01 $a0 $02
	dec b                                            ; $4f26: $05
	ld d, d                                          ; $4f27: $52
	ret nz                                           ; $4f28: $c0

	ld bc, $01a0                                     ; $4f29: $01 $a0 $01
	dec b                                            ; $4f2c: $05
	ld e, e                                          ; $4f2d: $5b
	ret nz                                           ; $4f2e: $c0

	ld bc, $02a0                                     ; $4f2f: $01 $a0 $02
	ld b, $26                                        ; $4f32: $06 $26
	ret nz                                           ; $4f34: $c0

	ld bc, $01a0                                     ; $4f35: $01 $a0 $01
	dec b                                            ; $4f38: $05
	ld l, c                                          ; $4f39: $69
	inc h                                            ; $4f3a: $24
	ret nz                                           ; $4f3b: $c0

	ld bc, $02a0                                     ; $4f3c: $01 $a0 $02
	ld b, $31                                        ; $4f3f: $06 $31
	ret nz                                           ; $4f41: $c0

	ld bc, $01a0                                     ; $4f42: $01 $a0 $01
	ld b, $3c                                        ; $4f45: $06 $3c
	ret nz                                           ; $4f47: $c0

	ld bc, $02a0                                     ; $4f48: $01 $a0 $02
	ld b, $4b                                        ; $4f4b: $06 $4b
	ret nz                                           ; $4f4d: $c0

	ld bc, $01a0                                     ; $4f4e: $01 $a0 $01
	ld b, $54                                        ; $4f51: $06 $54
	ret nz                                           ; $4f53: $c0

	ld bc, $02a0                                     ; $4f54: $01 $a0 $02
	ld b, $5a                                        ; $4f57: $06 $5a
	ret nz                                           ; $4f59: $c0

	ld bc, $01a0                                     ; $4f5a: $01 $a0 $01
	ld b, $67                                        ; $4f5d: $06 $67
	ld [$5bc1], sp                                   ; $4f5f: $08 $c1 $5b
	ret nz                                           ; $4f62: $c0

	ld bc, $01a0                                     ; $4f63: $01 $a0 $01
	ld bc, $0934                                     ; $4f66: $01 $34 $09
	ld hl, $21c0                                     ; $4f69: $21 $c0 $21
	jp nc, $82d0                                     ; $4f6c: $d2 $d0 $82

	ret nz                                           ; $4f6f: $c0

	add b                                            ; $4f70: $80
	ld bc, $07d3                                     ; $4f71: $01 $d3 $07
	ret nz                                           ; $4f74: $c0

	ld [hl+], a                                      ; $4f75: $22
	jp nc, $e4d0                                     ; $4f76: $d2 $d0 $e4

	ld bc, $016f                                     ; $4f79: $01 $6f $01
	jp nc, $e403                                     ; $4f7c: $d2 $03 $e4

	nop                                              ; $4f7f: $00
	rst AddAOntoHL                                          ; $4f80: $ef
	ld bc, $07d1                                     ; $4f81: $01 $d1 $07
	ret nz                                           ; $4f84: $c0

	ld [hl+], a                                      ; $4f85: $22
	pop de                                           ; $4f86: $d1
	ret nc                                           ; $4f87: $d0

	db $e4                                           ; $4f88: $e4
	nop                                              ; $4f89: $00
	ld [bc], a                                       ; $4f8a: $02
	add hl, bc                                       ; $4f8b: $09
	ret nz                                           ; $4f8c: $c0

	ldh [hDisp0_SCY], a                                     ; $4f8d: $e0 $83
	ret nz                                           ; $4f8f: $c0

	dec de                                           ; $4f90: $1b
	ret nc                                           ; $4f91: $d0

	ld [bc], a                                       ; $4f92: $02
	ret nc                                           ; $4f93: $d0

	pop de                                           ; $4f94: $d1
	ld h, a                                          ; $4f95: $67
	pop hl                                           ; $4f96: $e1
	ld [bc], a                                       ; $4f97: $02
	nop                                              ; $4f98: $00
	ret nz                                           ; $4f99: $c0

	ret nz                                           ; $4f9a: $c0

	ld bc, $02a0                                     ; $4f9b: $01 $a0 $02
	nop                                              ; $4f9e: $00
	jp nc, $01c0                                     ; $4f9f: $d2 $c0 $01

	and b                                            ; $4fa2: $a0
	ld bc, $7106                                     ; $4fa3: $01 $06 $71
	ret nz                                           ; $4fa6: $c0

	ld bc, $02a0                                     ; $4fa7: $01 $a0 $02
	ld b, $7c                                        ; $4faa: $06 $7c
	ret nz                                           ; $4fac: $c0

	ld bc, $01a0                                     ; $4fad: $01 $a0 $01
	ld b, $88                                        ; $4fb0: $06 $88
	or c                                             ; $4fb2: $b1
	ld d, h                                          ; $4fb3: $54
	ld e, $c0                                        ; $4fb4: $1e $c0
	ld bc, $02a0                                     ; $4fb6: $01 $a0 $02
	ld b, $92                                        ; $4fb9: $06 $92
	ret nz                                           ; $4fbb: $c0

	ld bc, $01a0                                     ; $4fbc: $01 $a0 $01
	ld b, $97                                        ; $4fbf: $06 $97
	ret nz                                           ; $4fc1: $c0

	ld bc, $02a0                                     ; $4fc2: $01 $a0 $02
	ld b, $9c                                        ; $4fc5: $06 $9c
	ret nz                                           ; $4fc7: $c0

	ld bc, $01a0                                     ; $4fc8: $01 $a0 $01
	ld b, $a9                                        ; $4fcb: $06 $a9
	ret nz                                           ; $4fcd: $c0

	ld bc, $02a0                                     ; $4fce: $01 $a0 $02
	ld b, $b0                                        ; $4fd1: $06 $b0
	xor d                                            ; $4fd3: $aa
	ld [de], a                                       ; $4fd4: $12
	ret nz                                           ; $4fd5: $c0

	ld bc, $02a0                                     ; $4fd6: $01 $a0 $02
	ld b, $b6                                        ; $4fd9: $06 $b6
	ret nz                                           ; $4fdb: $c0

	ld bc, $01a0                                     ; $4fdc: $01 $a0 $01
	ld b, $c0                                        ; $4fdf: $06 $c0
	ret nz                                           ; $4fe1: $c0

	ld bc, $02a0                                     ; $4fe2: $01 $a0 $02
	ld b, $c7                                        ; $4fe5: $06 $c7
	rst $38                                          ; $4fe7: $ff
	ld [de], a                                       ; $4fe8: $12
	ret nz                                           ; $4fe9: $c0

	ld bc, $02a0                                     ; $4fea: $01 $a0 $02
	ld b, $d2                                        ; $4fed: $06 $d2
	ret nz                                           ; $4fef: $c0

	ld bc, $01a0                                     ; $4ff0: $01 $a0 $01
	nop                                              ; $4ff3: $00
	dec hl                                           ; $4ff4: $2b
	ret nz                                           ; $4ff5: $c0

	ld bc, $02a0                                     ; $4ff6: $01 $a0 $02
	nop                                              ; $4ff9: $00
	cpl                                              ; $4ffa: $2f
	pop bc                                           ; $4ffb: $c1
	ld e, e                                          ; $4ffc: $5b
	ld [bc], a                                       ; $4ffd: $02
	jp nc, $30d3                                     ; $4ffe: $d2 $d3 $30

	pop hl                                           ; $5001: $e1
	ld [bc], a                                       ; $5002: $02
	nop                                              ; $5003: $00
	ret nz                                           ; $5004: $c0

	ret nz                                           ; $5005: $c0

	ld bc, $02a0                                     ; $5006: $01 $a0 $02
	ld b, $d7                                        ; $5009: $06 $d7
	ret nz                                           ; $500b: $c0

	ld bc, $01a0                                     ; $500c: $01 $a0 $01
	ld b, $de                                        ; $500f: $06 $de
	ret nz                                           ; $5011: $c0

	ld bc, $02a0                                     ; $5012: $01 $a0 $02
	ld b, $e5                                        ; $5015: $06 $e5
	ret nz                                           ; $5017: $c0

	ld bc, $01a0                                     ; $5018: $01 $a0 $01
	ld b, $88                                        ; $501b: $06 $88
	ret nz                                           ; $501d: $c0

	ld bc, $02a0                                     ; $501e: $01 $a0 $02
	ld b, $ed                                        ; $5021: $06 $ed
	ret nz                                           ; $5023: $c0

	ld bc, $01a0                                     ; $5024: $01 $a0 $01
	nop                                              ; $5027: $00
	dec hl                                           ; $5028: $2b
	ret nz                                           ; $5029: $c0

	ld bc, $02a0                                     ; $502a: $01 $a0 $02
	nop                                              ; $502d: $00
	ld c, l                                          ; $502e: $4d
	pop bc                                           ; $502f: $c1
	ld e, e                                          ; $5030: $5b
	ld bc, $30d4                                     ; $5031: $01 $d4 $30
	pop hl                                           ; $5034: $e1
	ld [bc], a                                       ; $5035: $02
	nop                                              ; $5036: $00
	ret nz                                           ; $5037: $c0

	ret nz                                           ; $5038: $c0

	ld bc, $02a0                                     ; $5039: $01 $a0 $02
	ld b, $d7                                        ; $503c: $06 $d7
	ret nz                                           ; $503e: $c0

	ld bc, $01a0                                     ; $503f: $01 $a0 $01
	ld b, $f2                                        ; $5042: $06 $f2
	ret nz                                           ; $5044: $c0

	ld bc, $02a0                                     ; $5045: $01 $a0 $02
	ld b, $f7                                        ; $5048: $06 $f7
	ret nz                                           ; $504a: $c0

	ld bc, $01a0                                     ; $504b: $01 $a0 $01
	ld b, $88                                        ; $504e: $06 $88
	ret nz                                           ; $5050: $c0

	ld bc, $02a0                                     ; $5051: $01 $a0 $02
	rlca                                             ; $5054: $07
	ld [bc], a                                       ; $5055: $02
	ret nz                                           ; $5056: $c0

	ld bc, $01a0                                     ; $5057: $01 $a0 $01
	nop                                              ; $505a: $00
	dec hl                                           ; $505b: $2b
	ret nz                                           ; $505c: $c0

	ld bc, $02a0                                     ; $505d: $01 $a0 $02
	nop                                              ; $5060: $00
	ld a, [hl]                                       ; $5061: $7e
	pop bc                                           ; $5062: $c1
	ld e, e                                          ; $5063: $5b
	ld bc, $03d5                                     ; $5064: $01 $d5 $03
	ldh [rP1], a                                     ; $5067: $e0 $00
	ld a, [$33e5]                                    ; $5069: $fa $e5 $33
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	add hl, bc                                       ; $506e: $09
	ld a, b                                          ; $506f: $78
	add e                                            ; $5070: $83
	ret nz                                           ; $5071: $c0

	dec de                                           ; $5072: $1b
	ret nc                                           ; $5073: $d0

	ld [bc], a                                       ; $5074: $02
	ret nc                                           ; $5075: $d0

	pop de                                           ; $5076: $d1
	rra                                              ; $5077: $1f
	pop hl                                           ; $5078: $e1
	ld [bc], a                                       ; $5079: $02
	nop                                              ; $507a: $00
	ret nz                                           ; $507b: $c0

	ret nz                                           ; $507c: $c0

	ld bc, $02a0                                     ; $507d: $01 $a0 $02
	nop                                              ; $5080: $00
	jp nc, $01c0                                     ; $5081: $d2 $c0 $01

	and b                                            ; $5084: $a0
	ld bc, $0607                                     ; $5085: $01 $07 $06
	ret nz                                           ; $5088: $c0

	ld bc, $02a0                                     ; $5089: $01 $a0 $02
	rlca                                             ; $508c: $07
	ld de, $01c0                                     ; $508d: $11 $c0 $01
	and b                                            ; $5090: $a0
	ld bc, $1707                                     ; $5091: $01 $07 $17
	ldh [rP1], a                                     ; $5094: $e0 $00
	rst FarCall                                          ; $5096: $f7
	ld [bc], a                                       ; $5097: $02
	jp nc, $1fd3                                     ; $5098: $d2 $d3 $1f

	pop hl                                           ; $509b: $e1
	ld [bc], a                                       ; $509c: $02
	nop                                              ; $509d: $00
	ret nz                                           ; $509e: $c0

	ret nz                                           ; $509f: $c0

	ld bc, $02a0                                     ; $50a0: $01 $a0 $02
	ld b, $d7                                        ; $50a3: $06 $d7
	ret nz                                           ; $50a5: $c0

	ld bc, $01a0                                     ; $50a6: $01 $a0 $01
	ld b, $de                                        ; $50a9: $06 $de
	ret nz                                           ; $50ab: $c0

	ld bc, $02a0                                     ; $50ac: $01 $a0 $02
	rlca                                             ; $50af: $07
	ld hl, $01c0                                     ; $50b0: $21 $c0 $01
	and b                                            ; $50b3: $a0
	ld bc, $1707                                     ; $50b4: $01 $07 $17
	ldh [rSB], a                                     ; $50b7: $e0 $01
	jr nz, @+$03                                     ; $50b9: $20 $01

	call nc, $e121                                   ; $50bb: $d4 $21 $e1
	ld [bc], a                                       ; $50be: $02
	nop                                              ; $50bf: $00
	ret nz                                           ; $50c0: $c0

	ret nz                                           ; $50c1: $c0

	ld bc, $02a0                                     ; $50c2: $01 $a0 $02
	rlca                                             ; $50c5: $07
	add hl, hl                                       ; $50c6: $29
	ret nz                                           ; $50c7: $c0

	ld bc, $01a0                                     ; $50c8: $01 $a0 $01
	ld b, $f2                                        ; $50cb: $06 $f2
	ret nz                                           ; $50cd: $c0

	ld bc, $02a0                                     ; $50ce: $01 $a0 $02
	rlca                                             ; $50d1: $07
	ld sp, $01c0                                     ; $50d2: $31 $c0 $01
	and b                                            ; $50d5: $a0
	ld bc, $3e07                                     ; $50d6: $01 $07 $3e
	ldh [rSB], a                                     ; $50d9: $e0 $01
	inc de                                           ; $50db: $13
	pop bc                                           ; $50dc: $c1
	ld e, e                                          ; $50dd: $5b
	ld bc, $03d5                                     ; $50de: $01 $d5 $03
	ldh [rP1], a                                     ; $50e1: $e0 $00
	add b                                            ; $50e3: $80
	push hl                                          ; $50e4: $e5
	inc sp                                           ; $50e5: $33
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	add hl, bc                                       ; $50e8: $09
	ld a, b                                          ; $50e9: $78
	add e                                            ; $50ea: $83
	ret nz                                           ; $50eb: $c0

	dec de                                           ; $50ec: $1b
	ret nc                                           ; $50ed: $d0

	ld [bc], a                                       ; $50ee: $02
	ret nc                                           ; $50ef: $d0

	pop de                                           ; $50f0: $d1
	rra                                              ; $50f1: $1f
	pop hl                                           ; $50f2: $e1
	ld [bc], a                                       ; $50f3: $02
	nop                                              ; $50f4: $00
	ret nz                                           ; $50f5: $c0

	ret nz                                           ; $50f6: $c0

	ld bc, $02a0                                     ; $50f7: $01 $a0 $02
	nop                                              ; $50fa: $00
	jp nc, $01c0                                     ; $50fb: $d2 $c0 $01

	and b                                            ; $50fe: $a0
	ld bc, $4207                                     ; $50ff: $01 $07 $42
	ret nz                                           ; $5102: $c0

	ld bc, $02a0                                     ; $5103: $01 $a0 $02
	rlca                                             ; $5106: $07
	ld c, l                                          ; $5107: $4d
	ret nz                                           ; $5108: $c0

	ld bc, $01a0                                     ; $5109: $01 $a0 $01
	rlca                                             ; $510c: $07
	rla                                              ; $510d: $17
	ldh [rP1], a                                     ; $510e: $e0 $00
	ld a, l                                          ; $5110: $7d
	ld [bc], a                                       ; $5111: $02
	jp nc, $1fd3                                     ; $5112: $d2 $d3 $1f

	pop hl                                           ; $5115: $e1
	ld [bc], a                                       ; $5116: $02
	nop                                              ; $5117: $00
	ret nz                                           ; $5118: $c0

	ret nz                                           ; $5119: $c0

	ld bc, $02a0                                     ; $511a: $01 $a0 $02
	rlca                                             ; $511d: $07
	add hl, hl                                       ; $511e: $29
	ret nz                                           ; $511f: $c0

	ld bc, $01a0                                     ; $5120: $01 $a0 $01
	ld b, $de                                        ; $5123: $06 $de
	ret nz                                           ; $5125: $c0

	ld bc, $02a0                                     ; $5126: $01 $a0 $02
	rlca                                             ; $5129: $07
	ld hl, $01c0                                     ; $512a: $21 $c0 $01
	and b                                            ; $512d: $a0
	ld bc, $1707                                     ; $512e: $01 $07 $17
	ldh [rP1], a                                     ; $5131: $e0 $00
	and [hl]                                         ; $5133: $a6
	ld bc, $21d4                                     ; $5134: $01 $d4 $21
	pop hl                                           ; $5137: $e1
	ld [bc], a                                       ; $5138: $02
	nop                                              ; $5139: $00
	ret nz                                           ; $513a: $c0

	ret nz                                           ; $513b: $c0

	ld bc, $02a0                                     ; $513c: $01 $a0 $02
	rlca                                             ; $513f: $07
	add hl, hl                                       ; $5140: $29
	ret nz                                           ; $5141: $c0

	ld bc, $01a0                                     ; $5142: $01 $a0 $01
	ld b, $f2                                        ; $5145: $06 $f2
	ret nz                                           ; $5147: $c0

	ld bc, $02a0                                     ; $5148: $01 $a0 $02
	rlca                                             ; $514b: $07
	ld e, d                                          ; $514c: $5a
	ret nz                                           ; $514d: $c0

	ld bc, $01a0                                     ; $514e: $01 $a0 $01
	rlca                                             ; $5151: $07
	ld a, $e0                                        ; $5152: $3e $e0
	nop                                              ; $5154: $00
	sbc c                                            ; $5155: $99
	pop bc                                           ; $5156: $c1
	ld e, e                                          ; $5157: $5b
	ld bc, $03d5                                     ; $5158: $01 $d5 $03
	ldh [rP1], a                                     ; $515b: $e0 $00
	ld b, $e5                                        ; $515d: $06 $e5
	inc sp                                           ; $515f: $33
	nop                                              ; $5160: $00
	nop                                              ; $5161: $00
	add hl, hl                                       ; $5162: $29
	or b                                             ; $5163: $b0
	ld a, a                                          ; $5164: $7f
	ld e, $e1                                        ; $5165: $1e $e1
	ld [bc], a                                       ; $5167: $02
	nop                                              ; $5168: $00
	ret nz                                           ; $5169: $c0

	ret nz                                           ; $516a: $c0

	ld bc, $02a0                                     ; $516b: $01 $a0 $02
	ld bc, $c023                                     ; $516e: $01 $23 $c0
	ld bc, $01a0                                     ; $5171: $01 $a0 $01
	ld bc, $c024                                     ; $5174: $01 $24 $c0
	ld bc, $02a0                                     ; $5177: $01 $a0 $02
	rlca                                             ; $517a: $07
	ld h, c                                          ; $517b: $61
	pop bc                                           ; $517c: $c1
	ld e, e                                          ; $517d: $5b
	ret nz                                           ; $517e: $c0

	ld bc, $01a0                                     ; $517f: $01 $a0 $01
	ld bc, $ff34                                     ; $5182: $01 $34 $ff
	ld b, $c0                                        ; $5185: $06 $c0
	ld bc, $01a0                                     ; $5187: $01 $a0 $01
	rlca                                             ; $518a: $07
	ld l, l                                          ; $518b: $6d
	ld c, e                                          ; $518c: $4b
	or c                                             ; $518d: $b1
	ld d, h                                          ; $518e: $54
	ld e, $c0                                        ; $518f: $1e $c0
	ld bc, $02a0                                     ; $5191: $01 $a0 $02
	rlca                                             ; $5194: $07
	ld a, d                                          ; $5195: $7a
	ret nz                                           ; $5196: $c0

	ld bc, $01a0                                     ; $5197: $01 $a0 $01
	ld b, $97                                        ; $519a: $06 $97
	ret nz                                           ; $519c: $c0

	ld bc, $02a0                                     ; $519d: $01 $a0 $02
	ld b, $9c                                        ; $51a0: $06 $9c
	ret nz                                           ; $51a2: $c0

	ld bc, $01a0                                     ; $51a3: $01 $a0 $01
	ld b, $a9                                        ; $51a6: $06 $a9
	ret nz                                           ; $51a8: $c0

	ld bc, $02a0                                     ; $51a9: $01 $a0 $02
	ld b, $b0                                        ; $51ac: $06 $b0
	xor d                                            ; $51ae: $aa
	ld [de], a                                       ; $51af: $12
	ret nz                                           ; $51b0: $c0

	ld bc, $02a0                                     ; $51b1: $01 $a0 $02
	rlca                                             ; $51b4: $07
	ld a, [hl]                                       ; $51b5: $7e
	ret nz                                           ; $51b6: $c0

	ld bc, $01a0                                     ; $51b7: $01 $a0 $01
	ld b, $c0                                        ; $51ba: $06 $c0
	ret nz                                           ; $51bc: $c0

	ld bc, $02a0                                     ; $51bd: $01 $a0 $02
	ld b, $c7                                        ; $51c0: $06 $c7
	rst $38                                          ; $51c2: $ff
	ld [de], a                                       ; $51c3: $12
	ret nz                                           ; $51c4: $c0

	ld bc, $02a0                                     ; $51c5: $01 $a0 $02
	ld bc, $c086                                     ; $51c8: $01 $86 $c0
	ld bc, $01a0                                     ; $51cb: $01 $a0 $01
	nop                                              ; $51ce: $00
	dec hl                                           ; $51cf: $2b
	ret nz                                           ; $51d0: $c0

	ld bc, $02a0                                     ; $51d1: $01 $a0 $02
	nop                                              ; $51d4: $00
	cpl                                              ; $51d5: $2f
	pop bc                                           ; $51d6: $c1
	ld e, e                                          ; $51d7: $5b
	inc d                                            ; $51d8: $14
	ret nz                                           ; $51d9: $c0

	ld bc, $02a0                                     ; $51da: $01 $a0 $02
	rlca                                             ; $51dd: $07
	add [hl]                                         ; $51de: $86
	ret nz                                           ; $51df: $c0

	ld bc, $01a0                                     ; $51e0: $01 $a0 $01
	nop                                              ; $51e3: $00
	dec hl                                           ; $51e4: $2b
	ret nz                                           ; $51e5: $c0

	ld bc, $02a0                                     ; $51e6: $01 $a0 $02
	nop                                              ; $51e9: $00
	ld c, l                                          ; $51ea: $4d
	pop bc                                           ; $51eb: $c1
	ld e, e                                          ; $51ec: $5b
	ld [de], a                                       ; $51ed: $12
	ret nz                                           ; $51ee: $c0

	ld bc, $02a0                                     ; $51ef: $01 $a0 $02
	ld bc, $c0cd                                     ; $51f2: $01 $cd $c0
	ld bc, $01a0                                     ; $51f5: $01 $a0 $01
	nop                                              ; $51f8: $00
	dec hl                                           ; $51f9: $2b
	ret nz                                           ; $51fa: $c0

	ld bc, $02a0                                     ; $51fb: $01 $a0 $02
	nop                                              ; $51fe: $00
	ld a, [hl]                                       ; $51ff: $7e
	rlca                                             ; $5200: $07
	rlca                                             ; $5201: $07
	add hl, bc                                       ; $5202: $09
	inc de                                           ; $5203: $13
	ei                                               ; $5204: $fb
	add b                                            ; $5205: $80
	nop                                              ; $5206: $00
	ld [hl], d                                       ; $5207: $72
	ld c, $fb                                        ; $5208: $0e $fb
	add b                                            ; $520a: $80
	ld [bc], a                                       ; $520b: $02
	adc c                                            ; $520c: $89
	ld b, $c0                                        ; $520d: $06 $c0
	ld bc, $01a0                                     ; $520f: $01 $a0 $01
	nop                                              ; $5212: $00
	ld bc, $00e4                                     ; $5213: $01 $e4 $00
	ld [bc], a                                       ; $5216: $02
	add hl, bc                                       ; $5217: $09
	ld sp, $59c1                                     ; $5218: $31 $c1 $59
	db $e3                                           ; $521b: $e3
	nop                                              ; $521c: $00
	ld e, e                                          ; $521d: $5b
	ret nz                                           ; $521e: $c0

	ld bc, $01a0                                     ; $521f: $01 $a0 $01
	nop                                              ; $5222: $00
	inc c                                            ; $5223: $0c
	pop hl                                           ; $5224: $e1
	ld [hl-], a                                      ; $5225: $32
	ld bc, $c08c                                     ; $5226: $01 $8c $c0
	jp z, $01c0                                      ; $5229: $ca $c0 $01

	and b                                            ; $522c: $a0
	ld bc, $1500                                     ; $522d: $01 $00 $15
	pop bc                                           ; $5230: $c1
	ld e, c                                          ; $5231: $59
	db $e3                                           ; $5232: $e3
	nop                                              ; $5233: $00
	ld d, a                                          ; $5234: $57
	add d                                            ; $5235: $82
	ret nz                                           ; $5236: $c0

	add b                                            ; $5237: $80
	ld bc, $03d3                                     ; $5238: $01 $d3 $03
	db $e4                                           ; $523b: $e4
	ld bc, $014e                      ; $523c: $01 $4e $01
	jp nc, $e403                                     ; $523f: $d2 $03 $e4

	nop                                              ; $5242: $00
	or h                                             ; $5243: $b4
	ld bc, $03d1                                     ; $5244: $01 $d1 $03
	db $e4                                           ; $5247: $e4
	nop                                              ; $5248: $00
	ld [bc], a                                       ; $5249: $02
	add hl, bc                                       ; $524a: $09
	xor d                                            ; $524b: $aa
	add e                                            ; $524c: $83
	ret nz                                           ; $524d: $c0

	dec de                                           ; $524e: $1b
	ret nc                                           ; $524f: $d0

	ld [bc], a                                       ; $5250: $02
	ret nc                                           ; $5251: $d0

	pop de                                           ; $5252: $d1
	jr c, @-$3e                                      ; $5253: $38 $c0

	ld hl, $d0d2                                     ; $5255: $21 $d2 $d0
	pop hl                                           ; $5258: $e1
	ld [bc], a                                       ; $5259: $02
	nop                                              ; $525a: $00
	ret nz                                           ; $525b: $c0

	ret nz                                           ; $525c: $c0

	ld bc, $01a0                                     ; $525d: $01 $a0 $01
	nop                                              ; $5260: $00
	rla                                              ; $5261: $17
	ret nz                                           ; $5262: $c0

	ld bc, $02a0                                     ; $5263: $01 $a0 $02
	nop                                              ; $5266: $00
	dec de                                           ; $5267: $1b
	ret nz                                           ; $5268: $c0

	ld bc, $01a0                                     ; $5269: $01 $a0 $01
	nop                                              ; $526c: $00
	inc hl                                           ; $526d: $23
	ret nz                                           ; $526e: $c0

	ld bc, $02a0                                     ; $526f: $01 $a0 $02
	nop                                              ; $5272: $00
	inc l                                            ; $5273: $2c
	ret nz                                           ; $5274: $c0

	ld bc, $01a0                                     ; $5275: $01 $a0 $01
	nop                                              ; $5278: $00
	inc [hl]                                         ; $5279: $34
	ret nz                                           ; $527a: $c0

	ld bc, $02a0                                     ; $527b: $01 $a0 $02
	nop                                              ; $527e: $00
	ld b, d                                          ; $527f: $42
	ret nz                                           ; $5280: $c0

	ld bc, $01a0                                     ; $5281: $01 $a0 $01
	nop                                              ; $5284: $00
	ld c, h                                          ; $5285: $4c
	ret nz                                           ; $5286: $c0

	ld bc, $02a0                                     ; $5287: $01 $a0 $02
	nop                                              ; $528a: $00
	ld d, e                                          ; $528b: $53
	ld [bc], a                                       ; $528c: $02
	jp nc, $2bd3                                     ; $528d: $d2 $d3 $2b

	ret nz                                           ; $5290: $c0

	ld hl, $d0d2                                     ; $5291: $21 $d2 $d0
	ldh [rSB], a                                     ; $5294: $e0 $01
	ld a, l                                          ; $5296: $7d
	ret nz                                           ; $5297: $c0

	ld bc, $01a0                                     ; $5298: $01 $a0 $01
	nop                                              ; $529b: $00
	inc hl                                           ; $529c: $23
	ret nz                                           ; $529d: $c0

	ld bc, $02a0                                     ; $529e: $01 $a0 $02
	nop                                              ; $52a1: $00
	ld e, [hl]                                       ; $52a2: $5e
	ret nz                                           ; $52a3: $c0

	ld bc, $01a0                                     ; $52a4: $01 $a0 $01
	nop                                              ; $52a7: $00
	ld h, a                                          ; $52a8: $67
	ret nz                                           ; $52a9: $c0

	ld bc, $02a0                                     ; $52aa: $01 $a0 $02
	nop                                              ; $52ad: $00
	ld a, b                                          ; $52ae: $78
	ret nz                                           ; $52af: $c0

	ld bc, $01a0                                     ; $52b0: $01 $a0 $01
	nop                                              ; $52b3: $00
	ld c, h                                          ; $52b4: $4c
	ret nz                                           ; $52b5: $c0

	ld bc, $02a0                                     ; $52b6: $01 $a0 $02
	nop                                              ; $52b9: $00
	ld a, [hl]                                       ; $52ba: $7e
	ld bc, $2bd4                                     ; $52bb: $01 $d4 $2b
	ret nz                                           ; $52be: $c0

	ld hl, $d0d2                                     ; $52bf: $21 $d2 $d0
	ldh [rSB], a                                     ; $52c2: $e0 $01
	ld c, a                                          ; $52c4: $4f
	ret nz                                           ; $52c5: $c0

	ld bc, $01a0                                     ; $52c6: $01 $a0 $01
	nop                                              ; $52c9: $00
	inc hl                                           ; $52ca: $23
	ret nz                                           ; $52cb: $c0

	ld bc, $02a0                                     ; $52cc: $01 $a0 $02
	nop                                              ; $52cf: $00
	adc b                                            ; $52d0: $88
	ret nz                                           ; $52d1: $c0

	ld bc, $01a0                                     ; $52d2: $01 $a0 $01
	nop                                              ; $52d5: $00
	ld h, a                                          ; $52d6: $67
	ret nz                                           ; $52d7: $c0

	ld bc, $02a0                                     ; $52d8: $01 $a0 $02
	nop                                              ; $52db: $00
	sub d                                            ; $52dc: $92
	ret nz                                           ; $52dd: $c0

	ld bc, $01a0                                     ; $52de: $01 $a0 $01
	nop                                              ; $52e1: $00
	ld c, h                                          ; $52e2: $4c
	ret nz                                           ; $52e3: $c0

	ld bc, $02a0                                     ; $52e4: $01 $a0 $02
	nop                                              ; $52e7: $00
	sub h                                            ; $52e8: $94
	ld bc, $06d5                                     ; $52e9: $01 $d5 $06
	ret nz                                           ; $52ec: $c0

	ld bc, $01a0                                     ; $52ed: $01 $a0 $01
	nop                                              ; $52f0: $00
	sbc e                                            ; $52f1: $9b
	push hl                                          ; $52f2: $e5
	inc sp                                           ; $52f3: $33
	nop                                              ; $52f4: $00
	nop                                              ; $52f5: $00
	add hl, bc                                       ; $52f6: $09
	sub d                                            ; $52f7: $92
	add e                                            ; $52f8: $83
	ret nz                                           ; $52f9: $c0

	dec de                                           ; $52fa: $1b
	ret nc                                           ; $52fb: $d0

	ld [bc], a                                       ; $52fc: $02
	ret nc                                           ; $52fd: $d0

	pop de                                           ; $52fe: $d1
	inc l                                            ; $52ff: $2c
	ret nz                                           ; $5300: $c0

	ld hl, $d0d2                                     ; $5301: $21 $d2 $d0
	pop hl                                           ; $5304: $e1
	ld [bc], a                                       ; $5305: $02
	nop                                              ; $5306: $00
	ret nz                                           ; $5307: $c0

	ret nz                                           ; $5308: $c0

	ld bc, $01a0                                     ; $5309: $01 $a0 $01
	nop                                              ; $530c: $00
	rla                                              ; $530d: $17
	ret nz                                           ; $530e: $c0

	ld bc, $02a0                                     ; $530f: $01 $a0 $02
	nop                                              ; $5312: $00
	dec de                                           ; $5313: $1b
	ret nz                                           ; $5314: $c0

	ld bc, $01a0                                     ; $5315: $01 $a0 $01
	nop                                              ; $5318: $00
	and d                                            ; $5319: $a2
	ret nz                                           ; $531a: $c0

	ld bc, $02a0                                     ; $531b: $01 $a0 $02
	nop                                              ; $531e: $00
	xor c                                            ; $531f: $a9
	ret nz                                           ; $5320: $c0

	ld bc, $01a0                                     ; $5321: $01 $a0 $01
	nop                                              ; $5324: $00
	ld c, h                                          ; $5325: $4c
	ret nz                                           ; $5326: $c0

	ld bc, $02a0                                     ; $5327: $01 $a0 $02
	nop                                              ; $532a: $00
	ld d, e                                          ; $532b: $53
	ld [bc], a                                       ; $532c: $02
	jp nc, $2bd3                                     ; $532d: $d2 $d3 $2b

	ret nz                                           ; $5330: $c0

	ld hl, $d0d2                                     ; $5331: $21 $d2 $d0
	ldh [rP1], a                                     ; $5334: $e0 $00
	db $dd                                           ; $5336: $dd
	ret nz                                           ; $5337: $c0

	ld bc, $01a0                                     ; $5338: $01 $a0 $01
	nop                                              ; $533b: $00
	or e                                             ; $533c: $b3
	ret nz                                           ; $533d: $c0

	ld bc, $02a0                                     ; $533e: $01 $a0 $02
	nop                                              ; $5341: $00
	cp d                                             ; $5342: $ba
	ret nz                                           ; $5343: $c0

	ld bc, $01a0                                     ; $5344: $01 $a0 $01
	nop                                              ; $5347: $00
	pop bc                                           ; $5348: $c1
	ret nz                                           ; $5349: $c0

	ld bc, $02a0                                     ; $534a: $01 $a0 $02
	nop                                              ; $534d: $00
	push bc                                          ; $534e: $c5
	ret nz                                           ; $534f: $c0

	ld bc, $01a0                                     ; $5350: $01 $a0 $01
	nop                                              ; $5353: $00
	ld c, h                                          ; $5354: $4c
	ret nz                                           ; $5355: $c0

	ld bc, $02a0                                     ; $5356: $01 $a0 $02
	nop                                              ; $5359: $00
	ld a, [hl]                                       ; $535a: $7e
	ld bc, $1fd4                                     ; $535b: $01 $d4 $1f
	ret nz                                           ; $535e: $c0

	ld hl, $d0d2                                     ; $535f: $21 $d2 $d0
	ldh [rP1], a                                     ; $5362: $e0 $00
	xor a                                            ; $5364: $af
	ret nz                                           ; $5365: $c0

	ld bc, $01a0                                     ; $5366: $01 $a0 $01
	nop                                              ; $5369: $00
	or e                                             ; $536a: $b3
	ret nz                                           ; $536b: $c0

	ld bc, $02a0                                     ; $536c: $01 $a0 $02
	nop                                              ; $536f: $00
	ret z                                            ; $5370: $c8

	ret nz                                           ; $5371: $c0

	ld bc, $01a0                                     ; $5372: $01 $a0 $01
	nop                                              ; $5375: $00
	ld c, h                                          ; $5376: $4c
	ret nz                                           ; $5377: $c0

	ld bc, $02a0                                     ; $5378: $01 $a0 $02
	nop                                              ; $537b: $00
	jp nc, $d501                                     ; $537c: $d2 $01 $d5

	ld b, $c0                                        ; $537f: $06 $c0
	ld bc, $01a0                                     ; $5381: $01 $a0 $01
	nop                                              ; $5384: $00
	sbc e                                            ; $5385: $9b
	push hl                                          ; $5386: $e5
	inc sp                                           ; $5387: $33
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	add hl, bc                                       ; $538a: $09
	add [hl]                                         ; $538b: $86
	add e                                            ; $538c: $83
	ret nz                                           ; $538d: $c0

	dec de                                           ; $538e: $1b
	ret nc                                           ; $538f: $d0

	ld [bc], a                                       ; $5390: $02
	ret nc                                           ; $5391: $d0

	pop de                                           ; $5392: $d1
	inc l                                            ; $5393: $2c
	ret nz                                           ; $5394: $c0

	ld hl, $d0d2                                     ; $5395: $21 $d2 $d0
	pop hl                                           ; $5398: $e1
	ld [bc], a                                       ; $5399: $02
	nop                                              ; $539a: $00
	ret nz                                           ; $539b: $c0

	ret nz                                           ; $539c: $c0

	ld bc, $01a0                                     ; $539d: $01 $a0 $01
	nop                                              ; $53a0: $00
	rla                                              ; $53a1: $17
	ret nz                                           ; $53a2: $c0

	ld bc, $02a0                                     ; $53a3: $01 $a0 $02
	nop                                              ; $53a6: $00
	dec de                                           ; $53a7: $1b
	ret nz                                           ; $53a8: $c0

	ld bc, $01a0                                     ; $53a9: $01 $a0 $01
	nop                                              ; $53ac: $00
	ret c                                            ; $53ad: $d8

	ret nz                                           ; $53ae: $c0

	ld bc, $02a0                                     ; $53af: $01 $a0 $02
	nop                                              ; $53b2: $00
	pop hl                                           ; $53b3: $e1
	ret nz                                           ; $53b4: $c0

	ld bc, $01a0                                     ; $53b5: $01 $a0 $01
	nop                                              ; $53b8: $00
	ld c, h                                          ; $53b9: $4c
	ret nz                                           ; $53ba: $c0

	ld bc, $02a0                                     ; $53bb: $01 $a0 $02
	nop                                              ; $53be: $00
	ld d, e                                          ; $53bf: $53
	ld [bc], a                                       ; $53c0: $02
	jp nc, $1fd3                                     ; $53c1: $d2 $d3 $1f

	ret nz                                           ; $53c4: $c0

	ld hl, $d0d2                                     ; $53c5: $21 $d2 $d0
	ldh [rP1], a                                     ; $53c8: $e0 $00
	ld c, c                                          ; $53ca: $49
	ret nz                                           ; $53cb: $c0

	ld bc, $01a0                                     ; $53cc: $01 $a0 $01
	nop                                              ; $53cf: $00
	ret c                                            ; $53d0: $d8

	ret nz                                           ; $53d1: $c0

	ld bc, $02a0                                     ; $53d2: $01 $a0 $02
	nop                                              ; $53d5: $00
	db $eb                                           ; $53d6: $eb
	ret nz                                           ; $53d7: $c0

	ld bc, $01a0                                     ; $53d8: $01 $a0 $01
	nop                                              ; $53db: $00
	ld c, h                                          ; $53dc: $4c
	ret nz                                           ; $53dd: $c0

	ld bc, $02a0                                     ; $53de: $01 $a0 $02
	nop                                              ; $53e1: $00
	ld a, [hl]                                       ; $53e2: $7e
	ld bc, $1fd4                                     ; $53e3: $01 $d4 $1f

jr_083_53e6:
	ret nz                                           ; $53e6: $c0

	ld hl, $d0d2                                     ; $53e7: $21 $d2 $d0
	ldh [rP1], a                                     ; $53ea: $e0 $00
	daa                                              ; $53ec: $27
	ret nz                                           ; $53ed: $c0

	ld bc, $01a0                                     ; $53ee: $01 $a0 $01
	nop                                              ; $53f1: $00
	ret c                                            ; $53f2: $d8

	ret nz                                           ; $53f3: $c0

	ld bc, $02a0                                     ; $53f4: $01 $a0 $02
	nop                                              ; $53f7: $00
	push af                                          ; $53f8: $f5
	ret nz                                           ; $53f9: $c0

	ld bc, $01a0                                     ; $53fa: $01 $a0 $01
	nop                                              ; $53fd: $00
	ld c, h                                          ; $53fe: $4c
	ret nz                                           ; $53ff: $c0

	ld bc, $02a0                                     ; $5400: $01 $a0 $02
	nop                                              ; $5403: $00
	sub h                                            ; $5404: $94
	ld bc, $06d5                                     ; $5405: $01 $d5 $06
	ret nz                                           ; $5408: $c0

	ld bc, $01a0                                     ; $5409: $01 $a0 $01
	nop                                              ; $540c: $00
	sbc e                                            ; $540d: $9b
	push hl                                          ; $540e: $e5
	inc sp                                           ; $540f: $33
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00
	db $10                                           ; $5412: $10
	pop hl                                           ; $5413: $e1
	ld [bc], a                                       ; $5414: $02
	nop                                              ; $5415: $00
	ret nz                                           ; $5416: $c0

	ret nz                                           ; $5417: $c0

	ld bc, $01a0                                     ; $5418: $01 $a0 $01
	nop                                              ; $541b: $00
	rla                                              ; $541c: $17
	ret nz                                           ; $541d: $c0

	ld bc, $02a0                                     ; $541e: $01 $a0 $02
	nop                                              ; $5421: $00
	cp $09                                           ; $5422: $fe $09
	jr nz, jr_083_53e6                               ; $5424: $20 $c0

	ld hl, $d0d2                                     ; $5426: $21 $d2 $d0
	add e                                            ; $5429: $83
	ret nz                                           ; $542a: $c0

	call c, $01d4                                    ; $542b: $dc $d4 $01
	ret nc                                           ; $542e: $d0

	inc bc                                           ; $542f: $03
	db $e4                                           ; $5430: $e4
	nop                                              ; $5431: $00
	inc d                                            ; $5432: $14
	ld bc, $03d1                                     ; $5433: $01 $d1 $03
	db $e4                                           ; $5436: $e4
	ld [bc], a                                       ; $5437: $02
	ld d, l                                          ; $5438: $55
	ld bc, $03d2                                     ; $5439: $01 $d2 $03
	db $e4                                           ; $543c: $e4
	dec b                                            ; $543d: $05
	inc d                                            ; $543e: $14
	ld bc, $03d3                                     ; $543f: $01 $d3 $03
	db $e4                                           ; $5442: $e4
	rlca                                             ; $5443: $07
	pop bc                                           ; $5444: $c1
	add hl, bc                                       ; $5445: $09
	add hl, de                                       ; $5446: $19
	add d                                            ; $5447: $82
	ret nz                                           ; $5448: $c0

	add b                                            ; $5449: $80
	ld bc, $07d3                                     ; $544a: $01 $d3 $07
	ret nz                                           ; $544d: $c0

	ld [hl+], a                                      ; $544e: $22
	pop de                                           ; $544f: $d1
	ret nc                                           ; $5450: $d0

	db $e4                                           ; $5451: $e4
	ld bc, $01c2                                     ; $5452: $01 $c2 $01
	jp nc, $e403                                     ; $5455: $d2 $03 $e4

	ld bc, $0101                                     ; $5458: $01 $01 $01
	pop de                                           ; $545b: $d1
	inc bc                                           ; $545c: $03
	db $e4                                           ; $545d: $e4
	nop                                              ; $545e: $00
	ld [bc], a                                       ; $545f: $02
	add hl, bc                                       ; $5460: $09
	ret nz                                           ; $5461: $c0

	db $dd                                           ; $5462: $dd
	ret nz                                           ; $5463: $c0

	ld de, $00e3                                     ; $5464: $11 $e3 $00
	ld d, [hl]                                       ; $5467: $56
	pop hl                                           ; $5468: $e1
	ld [bc], a                                       ; $5469: $02
	nop                                              ; $546a: $00
	ret z                                            ; $546b: $c8

	add d                                            ; $546c: $82
	ret nz                                           ; $546d: $c0

	dec de                                           ; $546e: $1b
	ret nc                                           ; $546f: $d0

	ld [bc], a                                       ; $5470: $02
	ret nc                                           ; $5471: $d0

	pop de                                           ; $5472: $d1
	ld [hl], $c0                                     ; $5473: $36 $c0
	ld bc, $02a0                                     ; $5475: $01 $a0 $02
	ld bc, $e003                                     ; $5478: $01 $03 $e0
	rlca                                             ; $547b: $07
	ld c, h                                          ; $547c: $4c
	ret nz                                           ; $547d: $c0

	ld bc, $02a0                                     ; $547e: $01 $a0 $02
	ld bc, $600a                                     ; $5481: $01 $0a $60
	ei                                               ; $5484: $fb
	ret nz                                           ; $5485: $c0

	add e                                            ; $5486: $83
	pop de                                           ; $5487: $d1
	ldh [$64], a                                     ; $5488: $e0 $64
	ld b, $c0                                        ; $548a: $06 $c0
	ld bc, $01a0                                     ; $548c: $01 $a0 $01
	ld bc, $0611                                     ; $548f: $01 $11 $06
	ret nz                                           ; $5492: $c0

	ld bc, $01a0                                     ; $5493: $01 $a0 $01
	ld bc, $e018                                     ; $5496: $01 $18 $e0
	nop                                              ; $5499: $00
	and a                                            ; $549a: $a7
	ret nz                                           ; $549b: $c0

	ld bc, $02a0                                     ; $549c: $01 $a0 $02
	ld bc, $c01d                                     ; $549f: $01 $1d $c0
	ld bc, $01a0                                     ; $54a2: $01 $a0 $01
	ld bc, $e024                                     ; $54a5: $01 $24 $e0
	inc b                                            ; $54a8: $04
	sub [hl]                                         ; $54a9: $96
	ld [bc], a                                       ; $54aa: $02
	jp nc, $39d3                                     ; $54ab: $d2 $d3 $39

	ret nz                                           ; $54ae: $c0

	ld bc, $02a0                                     ; $54af: $01 $a0 $02
	ld bc, $e003                                     ; $54b2: $01 $03 $e0
	rlca                                             ; $54b5: $07
	ld [de], a                                       ; $54b6: $12
	ret nz                                           ; $54b7: $c0

	ld bc, $02a0                                     ; $54b8: $01 $a0 $02
	ld bc, $6028                                     ; $54bb: $01 $28 $60
	ei                                               ; $54be: $fb
	ret nz                                           ; $54bf: $c0

	add e                                            ; $54c0: $83
	pop de                                           ; $54c1: $d1
	ldh [$64], a                                     ; $54c2: $e0 $64
	ld b, $c0                                        ; $54c4: $06 $c0
	ld bc, $01a0                                     ; $54c6: $01 $a0 $01
	ld bc, $062f                                     ; $54c9: $01 $2f $06
	ret nz                                           ; $54cc: $c0

	ld bc, $01a0                                     ; $54cd: $01 $a0 $01
	ld bc, $e018                                     ; $54d0: $01 $18 $e0
	nop                                              ; $54d3: $00
	ld l, l                                          ; $54d4: $6d
	ret nz                                           ; $54d5: $c0

	ld bc, $02a0                                     ; $54d6: $01 $a0 $02
	ld bc, $c036                                     ; $54d9: $01 $36 $c0
	ld bc, $01a0                                     ; $54dc: $01 $a0 $01
	ld bc, $c024                                     ; $54df: $01 $24 $c0
	ld bc, $02a0                                     ; $54e2: $01 $a0 $02
	ld bc, $0138                                     ; $54e5: $01 $38 $01
	call nc, $c052                                   ; $54e8: $d4 $52 $c0
	ld bc, $02a0                                     ; $54eb: $01 $a0 $02
	ld bc, $c03c                                     ; $54ee: $01 $3c $c0
	ld bc, $01a0                                     ; $54f1: $01 $a0 $01
	ld bc, $c042                                     ; $54f4: $01 $42 $c0
	ld bc, $02a0                                     ; $54f7: $01 $a0 $02
	ld bc, $e14b                                     ; $54fa: $01 $4b $e1
	ld [bc], a                                       ; $54fd: $02
	rlca                                             ; $54fe: $07
	sbc e                                            ; $54ff: $9b
	ret nz                                           ; $5500: $c0

	ld bc, $02a0                                     ; $5501: $01 $a0 $02
	ld bc, $6028                                     ; $5504: $01 $28 $60
	ei                                               ; $5507: $fb
	ret nz                                           ; $5508: $c0

	add e                                            ; $5509: $83
	pop de                                           ; $550a: $d1
	ldh [$64], a                                     ; $550b: $e0 $64
	jr @-$3e                                         ; $550d: $18 $c0

	ld bc, $01a0                                     ; $550f: $01 $a0 $01
	ld bc, $c02f                                     ; $5512: $01 $2f $c0
	ld bc, $02a0                                     ; $5515: $01 $a0 $02
	ld bc, $c051                                     ; $5518: $01 $51 $c0
	ld bc, $01a0                                     ; $551b: $01 $a0 $01
	ld bc, $c05d                                     ; $551e: $01 $5d $c0
	ld bc, $02a0                                     ; $5521: $01 $a0 $02
	ld bc, $0964                                     ; $5524: $01 $64 $09
	ldh [rTMA], a                                    ; $5527: $e0 $06
	or b                                             ; $5529: $b0
	ret nz                                           ; $552a: $c0

	ld bc, $02a0                                     ; $552b: $01 $a0 $02
	ld bc, $c06a                                     ; $552e: $01 $6a $c0
	ld bc, $01a0                                     ; $5531: $01 $a0 $01
	ld bc, $c075                                     ; $5534: $01 $75 $c0
	ld bc, $02a0                                     ; $5537: $01 $a0 $02
	ld bc, $e57c                                     ; $553a: $01 $7c $e5
	inc sp                                           ; $553d: $33
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	jr @-$3e                                         ; $5540: $18 $c0

	ld bc, $02a0                                     ; $5542: $01 $a0 $02
	ld bc, $c07e                                     ; $5545: $01 $7e $c0
	ld bc, $01a0                                     ; $5548: $01 $a0 $01
	ld bc, $c085                                     ; $554b: $01 $85 $c0
	ld bc, $02a0                                     ; $554e: $01 $a0 $02
	ld bc, $c089                                     ; $5551: $01 $89 $c0
	ld bc, $01a0                                     ; $5554: $01 $a0 $01
	ld bc, $099c                                     ; $5557: $01 $9c $09
	cp c                                             ; $555a: $b9
	ret nz                                           ; $555b: $c0

	ld de, $00e3                                     ; $555c: $11 $e3 $00
	ld d, [hl]                                       ; $555f: $56
	pop hl                                           ; $5560: $e1
	ld [bc], a                                       ; $5561: $02
	nop                                              ; $5562: $00
	ret z                                            ; $5563: $c8

	add d                                            ; $5564: $82
	ret nz                                           ; $5565: $c0

	dec de                                           ; $5566: $1b
	ret nc                                           ; $5567: $d0

	ld [bc], a                                       ; $5568: $02
	ret nc                                           ; $5569: $d0

	pop de                                           ; $556a: $d1
	ld l, $c0                                        ; $556b: $2e $c0
	ld bc, $02a0                                     ; $556d: $01 $a0 $02
	ld bc, $e0a0                                     ; $5570: $01 $a0 $e0
	ld b, $54                                        ; $5573: $06 $54
	ret nz                                           ; $5575: $c0

	ld bc, $02a0                                     ; $5576: $01 $a0 $02
	ld bc, $c0a8                                     ; $5579: $01 $a8 $c0
	ld bc, $01a0                                     ; $557c: $01 $a0 $01
	ld bc, $e1ac                                     ; $557f: $01 $ac $e1
	ld [bc], a                                       ; $5582: $02
	rlca                                             ; $5583: $07
	and h                                            ; $5584: $a4
	ret nz                                           ; $5585: $c0

	ld bc, $01a0                                     ; $5586: $01 $a0 $01
	ld bc, $c0b3                                     ; $5589: $01 $b3 $c0
	ld bc, $02a0                                     ; $558c: $01 $a0 $02
	ld bc, $c0b9                                     ; $558f: $01 $b9 $c0
	ld bc, $01a0                                     ; $5592: $01 $a0 $01
	ld bc, $e0c1                                     ; $5595: $01 $c1 $e0
	inc bc                                           ; $5598: $03
	and [hl]                                         ; $5599: $a6
	ld [bc], a                                       ; $559a: $02
	jp nc, $31d3                                     ; $559b: $d2 $d3 $31

	ret nz                                           ; $559e: $c0

	ld bc, $02a0                                     ; $559f: $01 $a0 $02
	ld bc, $e0a0                                     ; $55a2: $01 $a0 $e0
	ld b, $22                                        ; $55a5: $06 $22
	ret nz                                           ; $55a7: $c0

	ld bc, $02a0                                     ; $55a8: $01 $a0 $02
	ld bc, $c0c7                                     ; $55ab: $01 $c7 $c0
	ld bc, $01a0                                     ; $55ae: $01 $a0 $01
	ld bc, $e1cb                                     ; $55b1: $01 $cb $e1
	ld [bc], a                                       ; $55b4: $02
	rlca                                             ; $55b5: $07
	and h                                            ; $55b6: $a4
	ret nz                                           ; $55b7: $c0

	ld bc, $01a0                                     ; $55b8: $01 $a0 $01
	ld bc, $c0b3                                     ; $55bb: $01 $b3 $c0
	ld bc, $02a0                                     ; $55be: $01 $a0 $02
	ld bc, $c0d3                                     ; $55c1: $01 $d3 $c0
	ld bc, $01a0                                     ; $55c4: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $55c7: $01 $e2 $c0
	ld bc, $02a0                                     ; $55ca: $01 $a0 $02
	ld bc, $0138                                     ; $55cd: $01 $38 $01
	call nc, $c03e                                   ; $55d0: $d4 $3e $c0
	ld bc, $02a0                                     ; $55d3: $01 $a0 $02
	ld bc, wGenericTileDataFinalDest                                     ; $55d6: $01 $e6 $c0
	ld bc, $01a0                                     ; $55d9: $01 $a0 $01
	ld bc, $c042                                     ; $55dc: $01 $42 $c0
	ld bc, $02a0                                     ; $55df: $01 $a0 $02
	ld bc, $e1ea                                     ; $55e2: $01 $ea $e1
	ld [bc], a                                       ; $55e5: $02
	rlca                                             ; $55e6: $07
	sbc e                                            ; $55e7: $9b

jr_083_55e8:
	ret nz                                           ; $55e8: $c0

	ld bc, $02a0                                     ; $55e9: $01 $a0 $02
	ld bc, $c0f0                                     ; $55ec: $01 $f0 $c0
	ld bc, $01a0                                     ; $55ef: $01 $a0 $01
	ld bc, $e1ac                                     ; $55f2: $01 $ac $e1
	ld [bc], a                                       ; $55f5: $02
	rlca                                             ; $55f6: $07
	and h                                            ; $55f7: $a4
	ret nz                                           ; $55f8: $c0

	ld bc, $01a0                                     ; $55f9: $01 $a0 $01
	ld bc, $c0b3                                     ; $55fc: $01 $b3 $c0
	ld bc, $02a0                                     ; $55ff: $01 $a0 $02
	ld bc, $c0f3                                     ; $5602: $01 $f3 $c0
	ld bc, $01a0                                     ; $5605: $01 $a0 $01
	ld bc, $c0f6                                     ; $5608: $01 $f6 $c0
	ld bc, $02a0                                     ; $560b: $01 $a0 $02
	ld bc, $e57c                                     ; $560e: $01 $7c $e5

jr_083_5611:
	inc sp                                           ; $5611: $33
	nop                                              ; $5612: $00
	nop                                              ; $5613: $00
	add hl, bc                                       ; $5614: $09
	halt                                             ; $5615: $76
	ret nz                                           ; $5616: $c0

	ld de, $00e3                                     ; $5617: $11 $e3 $00
	ld e, e                                          ; $561a: $5b
	pop hl                                           ; $561b: $e1
	ld [bc], a                                       ; $561c: $02
	nop                                              ; $561d: $00
	ret z                                            ; $561e: $c8

	add d                                            ; $561f: $82
	ret nz                                           ; $5620: $c0

	dec de                                           ; $5621: $1b
	ret nc                                           ; $5622: $d0

	ld [bc], a                                       ; $5623: $02
	ret nc                                           ; $5624: $d0

	pop de                                           ; $5625: $d1
	jr nz, jr_083_55e8                               ; $5626: $20 $c0

	ld bc, $02a0                                     ; $5628: $01 $a0 $02
	ld bc, $e1fc                                     ; $562b: $01 $fc $e1
	ld [hl-], a                                      ; $562e: $32
	ld bc, $e112                                     ; $562f: $01 $12 $e1
	ld [bc], a                                       ; $5632: $02
	nop                                              ; $5633: $00
	ret z                                            ; $5634: $c8

	ret nz                                           ; $5635: $c0

	ld bc, $02a0                                     ; $5636: $01 $a0 $02
	ld [bc], a                                       ; $5639: $02
	inc b                                            ; $563a: $04
	ret nz                                           ; $563b: $c0

	ld bc, $01a0                                     ; $563c: $01 $a0 $01
	ld [bc], a                                       ; $563f: $02
	add hl, bc                                       ; $5640: $09
	ret nz                                           ; $5641: $c0

	ld bc, $02a0                                     ; $5642: $01 $a0 $02
	ld [bc], a                                       ; $5645: $02
	ld de, $d202                                     ; $5646: $11 $02 $d2
	db $d3                                           ; $5649: $d3
	jr nz, @-$3e                                     ; $564a: $20 $c0

	ld bc, $02a0                                     ; $564c: $01 $a0 $02
	ld [bc], a                                       ; $564f: $02
	dec d                                            ; $5650: $15
	pop hl                                           ; $5651: $e1
	ld [hl-], a                                      ; $5652: $32
	ld bc, $e112                                     ; $5653: $01 $12 $e1
	ld [bc], a                                       ; $5656: $02
	nop                                              ; $5657: $00
	ret z                                            ; $5658: $c8

	ret nz                                           ; $5659: $c0

	ld bc, $02a0                                     ; $565a: $01 $a0 $02
	ld [bc], a                                       ; $565d: $02
	ld a, [de]                                       ; $565e: $1a
	ret nz                                           ; $565f: $c0

	ld bc, $01a0                                     ; $5660: $01 $a0 $01
	ld [bc], a                                       ; $5663: $02
	ld h, $c0                                        ; $5664: $26 $c0
	ld bc, $02a0                                     ; $5666: $01 $a0 $02
	ld [bc], a                                       ; $5669: $02
	inc sp                                           ; $566a: $33
	ld bc, $1ad4                                     ; $566b: $01 $d4 $1a
	ret nz                                           ; $566e: $c0

	ld bc, $02a0                                     ; $566f: $01 $a0 $02
	ld [bc], a                                       ; $5672: $02
	dec d                                            ; $5673: $15
	pop hl                                           ; $5674: $e1
	ld [hl-], a                                      ; $5675: $32
	ld bc, $e112                                     ; $5676: $01 $12 $e1
	ld [bc], a                                       ; $5679: $02
	nop                                              ; $567a: $00
	ret z                                            ; $567b: $c8

	ret nz                                           ; $567c: $c0

	ld bc, $02a0                                     ; $567d: $01 $a0 $02
	ld [bc], a                                       ; $5680: $02
	ld [hl], $c0                                     ; $5681: $36 $c0
	ld bc, $01a0                                     ; $5683: $01 $a0 $01
	ld [bc], a                                       ; $5686: $02
	ccf                                              ; $5687: $3f
	push hl                                          ; $5688: $e5
	inc sp                                           ; $5689: $33
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	add hl, bc                                       ; $568c: $09
	jr nc, jr_083_5611                               ; $568d: $30 $82

	ret nz                                           ; $568f: $c0

	add b                                            ; $5690: $80
	ld bc, $0cd3                                     ; $5691: $01 $d3 $0c
	ret nz                                           ; $5694: $c0

	ld [hl+], a                                      ; $5695: $22
	pop de                                           ; $5696: $d1
	ret nc                                           ; $5697: $d0

	ret nz                                           ; $5698: $c0

	ld de, $00e3                                     ; $5699: $11 $e3 $00
	ld e, h                                          ; $569c: $5c
	db $e4                                           ; $569d: $e4
	ld bc, $01f1                                     ; $569e: $01 $f1 $01
	jp nc, $c00c                                     ; $56a1: $d2 $0c $c0

	ld [hl+], a                                      ; $56a4: $22
	jp nc, $c0d0                                     ; $56a5: $d2 $d0 $c0

	ld de, $00e3                                     ; $56a8: $11 $e3 $00
	ld e, h                                          ; $56ab: $5c
	db $e4                                           ; $56ac: $e4
	ld bc, $014e                      ; $56ad: $01 $4e $01
	pop de                                           ; $56b0: $d1
	inc c                                            ; $56b1: $0c
	ret nz                                           ; $56b2: $c0

	ld [hl+], a                                      ; $56b3: $22
	pop de                                           ; $56b4: $d1
	ret nc                                           ; $56b5: $d0

	ret nz                                           ; $56b6: $c0

	ld de, $00e3                                     ; $56b7: $11 $e3 $00
	ld b, d                                          ; $56ba: $42
	db $e4                                           ; $56bb: $e4
	nop                                              ; $56bc: $00
	ld [bc], a                                       ; $56bd: $02
	add hl, bc                                       ; $56be: $09
	adc h                                            ; $56bf: $8c
	pop hl                                           ; $56c0: $e1
	ld [bc], a                                       ; $56c1: $02
	nop                                              ; $56c2: $00
	ret z                                            ; $56c3: $c8

	add d                                            ; $56c4: $82
	ret nz                                           ; $56c5: $c0

	dec de                                           ; $56c6: $1b
	ret nc                                           ; $56c7: $d0

	ld [bc], a                                       ; $56c8: $02
	ret nc                                           ; $56c9: $d0

	pop de                                           ; $56ca: $d1
	daa                                              ; $56cb: $27
	ret nz                                           ; $56cc: $c0

	ld bc, $02a0                                     ; $56cd: $01 $a0 $02
	ld [bc], a                                       ; $56d0: $02
	ld b, d                                          ; $56d1: $42
	ret nz                                           ; $56d2: $c0

	ld bc, $01a0                                     ; $56d3: $01 $a0 $01
	ld [bc], a                                       ; $56d6: $02
	ld c, e                                          ; $56d7: $4b
	ret nz                                           ; $56d8: $c0

	ld bc, $02a0                                     ; $56d9: $01 $a0 $02
	ld [bc], a                                       ; $56dc: $02
	ld d, l                                          ; $56dd: $55
	ret nz                                           ; $56de: $c0

	ld bc, $02a0                                     ; $56df: $01 $a0 $02
	ld [bc], a                                       ; $56e2: $02
	ld l, d                                          ; $56e3: $6a
	ldh [rP1], a                                     ; $56e4: $e0 $00
	ld h, a                                          ; $56e6: $67
	ret nz                                           ; $56e7: $c0

	ld bc, $01a0                                     ; $56e8: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $56eb: $01 $e2 $c0
	ld bc, $02a0                                     ; $56ee: $01 $a0 $02
	ld [bc], a                                       ; $56f1: $02
	ld l, [hl]                                       ; $56f2: $6e
	ld [bc], a                                       ; $56f3: $02
	jp nc, $27d3                                     ; $56f4: $d2 $d3 $27

	ret nz                                           ; $56f7: $c0

	ld bc, $02a0                                     ; $56f8: $01 $a0 $02
	ld [bc], a                                       ; $56fb: $02
	ld [hl], c                                       ; $56fc: $71
	ret nz                                           ; $56fd: $c0

	ld bc, $01a0                                     ; $56fe: $01 $a0 $01
	ld [bc], a                                       ; $5701: $02
	ld c, e                                          ; $5702: $4b
	ret nz                                           ; $5703: $c0

	ld bc, $02a0                                     ; $5704: $01 $a0 $02
	ld [bc], a                                       ; $5707: $02
	ld a, b                                          ; $5708: $78
	ret nz                                           ; $5709: $c0

	ld bc, $02a0                                     ; $570a: $01 $a0 $02
	ld [bc], a                                       ; $570d: $02
	adc l                                            ; $570e: $8d
	ldh [rP1], a                                     ; $570f: $e0 $00
	inc a                                            ; $5711: $3c
	ret nz                                           ; $5712: $c0

	ld bc, $02a0                                     ; $5713: $01 $a0 $02
	ld [bc], a                                       ; $5716: $02
	sub b                                            ; $5717: $90
	ret nz                                           ; $5718: $c0

	ld bc, $01a0                                     ; $5719: $01 $a0 $01
	ld [bc], a                                       ; $571c: $02
	ccf                                              ; $571d: $3f
	ld bc, $27d4                                     ; $571e: $01 $d4 $27
	ret nz                                           ; $5721: $c0

	ld bc, $02a0                                     ; $5722: $01 $a0 $02
	ld [bc], a                                       ; $5725: $02
	sub l                                            ; $5726: $95
	ret nz                                           ; $5727: $c0

	ld bc, $01a0                                     ; $5728: $01 $a0 $01
	ld [bc], a                                       ; $572b: $02
	ld c, e                                          ; $572c: $4b
	ret nz                                           ; $572d: $c0

	ld bc, $02a0                                     ; $572e: $01 $a0 $02
	ld [bc], a                                       ; $5731: $02
	sbc a                                            ; $5732: $9f
	ret nz                                           ; $5733: $c0

	ld bc, $02a0                                     ; $5734: $01 $a0 $02
	ld [bc], a                                       ; $5737: $02
	or h                                             ; $5738: $b4
	ldh [rP1], a                                     ; $5739: $e0 $00
	ld [de], a                                       ; $573b: $12
	ret nz                                           ; $573c: $c0

	ld bc, $02a0                                     ; $573d: $01 $a0 $02
	ld [bc], a                                       ; $5740: $02
	sub b                                            ; $5741: $90
	ret nz                                           ; $5742: $c0

	ld bc, $01a0                                     ; $5743: $01 $a0 $01
	ld [bc], a                                       ; $5746: $02
	ccf                                              ; $5747: $3f
	push hl                                          ; $5748: $e5
	inc sp                                           ; $5749: $33
	nop                                              ; $574a: $00
	nop                                              ; $574b: $00
	xor [hl]                                         ; $574c: $ae
	ret nz                                           ; $574d: $c0

	ld bc, $01a0                                     ; $574e: $01 $a0 $01
	ld [bc], a                                       ; $5751: $02
	cp b                                             ; $5752: $b8
	pop hl                                           ; $5753: $e1
	ld [hl-], a                                      ; $5754: $32
	nop                                              ; $5755: $00
	nop                                              ; $5756: $00
	pop hl                                           ; $5757: $e1
	ld [bc], a                                       ; $5758: $02
	nop                                              ; $5759: $00
	ret z                                            ; $575a: $c8

	ld h, e                                          ; $575b: $63
	ld hl, sp-$79                                    ; $575c: $f8 $87
	ld [bc], a                                       ; $575e: $02
	sub c                                            ; $575f: $91
	ldh [rAUD3HIGH], a                               ; $5760: $e0 $1e
	ld a, [de]                                       ; $5762: $1a
	pop hl                                           ; $5763: $e1
	ld [bc], a                                       ; $5764: $02
	inc bc                                           ; $5765: $03
	dec de                                           ; $5766: $1b
	ret nz                                           ; $5767: $c0

	dec h                                            ; $5768: $25
	pop de                                           ; $5769: $d1
	ret nc                                           ; $576a: $d0

	ret nz                                           ; $576b: $c0

	ld bc, $02a0                                     ; $576c: $01 $a0 $02
	ld [bc], a                                       ; $576f: $02
	cp l                                             ; $5770: $bd
	ret nz                                           ; $5771: $c0

	ld bc, $01a0                                     ; $5772: $01 $a0 $01
	ld [bc], a                                       ; $5775: $02
	cp a                                             ; $5776: $bf
	ret nz                                           ; $5777: $c0

	ld bc, $02a0                                     ; $5778: $01 $a0 $02
	ld [bc], a                                       ; $577b: $02
	set 7, b                                         ; $577c: $cb $f8
	add a                                            ; $577e: $87
	ld [bc], a                                       ; $577f: $02
	sub c                                            ; $5780: $91
	ldh [rDMA], a                                    ; $5781: $e0 $46
	ld d, $e1                                        ; $5783: $16 $e1
	ld [bc], a                                       ; $5785: $02
	inc bc                                           ; $5786: $03
	rla                                              ; $5787: $17
	ret nz                                           ; $5788: $c0

	ld bc, $02a0                                     ; $5789: $01 $a0 $02
	ld [bc], a                                       ; $578c: $02
	ret c                                            ; $578d: $d8

	ret nz                                           ; $578e: $c0

	ld bc, $01a0                                     ; $578f: $01 $a0 $01
	ld [bc], a                                       ; $5792: $02
	db $dd                                           ; $5793: $dd
	ret nz                                           ; $5794: $c0

	ld bc, $02a0                                     ; $5795: $01 $a0 $02
	ld [bc], a                                       ; $5798: $02
	jp hl                                            ; $5799: $e9


	ld hl, sp-$79                                    ; $579a: $f8 $87
	ld [bc], a                                       ; $579c: $02
	sub c                                            ; $579d: $91
	ldh [$5a], a                                     ; $579e: $e0 $5a
	ld d, $e1                                        ; $57a0: $16 $e1
	ld [bc], a                                       ; $57a2: $02
	inc bc                                           ; $57a3: $03
	inc de                                           ; $57a4: $13
	ret nz                                           ; $57a5: $c0

	ld bc, $02a0                                     ; $57a6: $01 $a0 $02
	ld [bc], a                                       ; $57a9: $02
	ldh a, [c]                                       ; $57aa: $f2
	ret nz                                           ; $57ab: $c0

	ld bc, $01a0                                     ; $57ac: $01 $a0 $01
	ld [bc], a                                       ; $57af: $02
	db $f4                                           ; $57b0: $f4
	ret nz                                           ; $57b1: $c0

	ld bc, $02a0                                     ; $57b2: $01 $a0 $02
	ld [bc], a                                       ; $57b5: $02
	or $fc                                           ; $57b6: $f6 $fc
	add a                                            ; $57b8: $87
	ld [bc], a                                       ; $57b9: $02
	sub c                                            ; $57ba: $91
	ldh [$64], a                                     ; $57bb: $e0 $64
	ld h, $e1                                        ; $57bd: $26 $e1
	ld [bc], a                                       ; $57bf: $02
	inc bc                                           ; $57c0: $03
	rrca                                             ; $57c1: $0f
	ret nz                                           ; $57c2: $c0

	dec h                                            ; $57c3: $25
	pop de                                           ; $57c4: $d1
	ret nc                                           ; $57c5: $d0

	ret nz                                           ; $57c6: $c0

	ld bc, $02a0                                     ; $57c7: $01 $a0 $02
	inc bc                                           ; $57ca: $03
	nop                                              ; $57cb: $00
	ret nz                                           ; $57cc: $c0

	ld bc, $01a0                                     ; $57cd: $01 $a0 $01
	inc bc                                           ; $57d0: $03
	dec b                                            ; $57d1: $05
	ret nz                                           ; $57d2: $c0

Jump_083_57d3:
	ld bc, $02a0                                     ; $57d3: $01 $a0 $02
	inc bc                                           ; $57d6: $03
	rlca                                             ; $57d7: $07
	ret nz                                           ; $57d8: $c0

	ld bc, $01a0                                     ; $57d9: $01 $a0 $01
	inc bc                                           ; $57dc: $03
	inc de                                           ; $57dd: $13
	ret nz                                           ; $57de: $c0

	ld bc, $02a0                                     ; $57df: $01 $a0 $02
	inc bc                                           ; $57e2: $03
	inc e                                            ; $57e3: $1c
	ld d, $e1                                        ; $57e4: $16 $e1
	ld [bc], a                                       ; $57e6: $02
	inc bc                                           ; $57e7: $03
	inc de                                           ; $57e8: $13
	ret nz                                           ; $57e9: $c0

	ld bc, $02a0                                     ; $57ea: $01 $a0 $02
	inc bc                                           ; $57ed: $03
	inc hl                                           ; $57ee: $23
	ret nz                                           ; $57ef: $c0

	ld bc, $01a0                                     ; $57f0: $01 $a0 $01
	inc bc                                           ; $57f3: $03
	ld h, $c0                                        ; $57f4: $26 $c0
	ld bc, $02a0                                     ; $57f6: $01 $a0 $02
	inc bc                                           ; $57f9: $03
	add hl, hl                                       ; $57fa: $29
	add hl, bc                                       ; $57fb: $09
	add e                                            ; $57fc: $83
	pop hl                                           ; $57fd: $e1
	ld [bc], a                                       ; $57fe: $02
	nop                                              ; $57ff: $00
	ret z                                            ; $5800: $c8

	add d                                            ; $5801: $82
	ret nz                                           ; $5802: $c0

	dec de                                           ; $5803: $1b
	ret nc                                           ; $5804: $d0

	ld [bc], a                                       ; $5805: $02
	ret nc                                           ; $5806: $d0

	pop de                                           ; $5807: $d1
	inc h                                            ; $5808: $24
	ret nz                                           ; $5809: $c0

	ld bc, $02a0                                     ; $580a: $01 $a0 $02
	inc bc                                           ; $580d: $03
	ld [hl], $e0                                     ; $580e: $36 $e0
	nop                                              ; $5810: $00
	ld [hl], b                                       ; $5811: $70
	ret nz                                           ; $5812: $c0

	ld bc, $02a0                                     ; $5813: $01 $a0 $02
	inc bc                                           ; $5816: $03
	dec a                                            ; $5817: $3d
	ret nz                                           ; $5818: $c0

	ld bc, $01a0                                     ; $5819: $01 $a0 $01
	inc bc                                           ; $581c: $03
	ld b, e                                          ; $581d: $43
	ret nz                                           ; $581e: $c0

	ld bc, $02a0                                     ; $581f: $01 $a0 $02
	inc bc                                           ; $5822: $03
	ld c, b                                          ; $5823: $48
	ret nz                                           ; $5824: $c0

	ld bc, $01a0                                     ; $5825: $01 $a0 $01
	inc bc                                           ; $5828: $03
	ld c, [hl]                                       ; $5829: $4e
	ldh [rSB], a                                     ; $582a: $e0 $01
	inc de                                           ; $582c: $13
	ld [bc], a                                       ; $582d: $02
	jp nc, $27d3                                     ; $582e: $d2 $d3 $27

	ret nz                                           ; $5831: $c0

	ld bc, $02a0                                     ; $5832: $01 $a0 $02
	inc bc                                           ; $5835: $03
	ld e, c                                          ; $5836: $59
	ldh [rP1], a                                     ; $5837: $e0 $00
	ld c, b                                          ; $5839: $48
	ret nz                                           ; $583a: $c0

	ld bc, $02a0                                     ; $583b: $01 $a0 $02
	inc bc                                           ; $583e: $03
	ld h, c                                          ; $583f: $61
	ret nz                                           ; $5840: $c0

	ld bc, $01a0                                     ; $5841: $01 $a0 $01
	inc bc                                           ; $5844: $03
	ld b, e                                          ; $5845: $43
	ret nz                                           ; $5846: $c0

	ld bc, $02a0                                     ; $5847: $01 $a0 $02
	inc bc                                           ; $584a: $03
	ld h, [hl]                                       ; $584b: $66
	ret nz                                           ; $584c: $c0

	ld bc, $01a0                                     ; $584d: $01 $a0 $01
	inc bc                                           ; $5850: $03
	ld c, [hl]                                       ; $5851: $4e
	ret nz                                           ; $5852: $c0

	ld bc, $02a0                                     ; $5853: $01 $a0 $02
	ld [bc], a                                       ; $5856: $02
	inc sp                                           ; $5857: $33
	ld bc, $21d4                                     ; $5858: $01 $d4 $21
	ret nz                                           ; $585b: $c0

	ld bc, $02a0                                     ; $585c: $01 $a0 $02
	inc bc                                           ; $585f: $03
	ld e, c                                          ; $5860: $59
	ldh [rP1], a                                     ; $5861: $e0 $00
	ld e, $c0                                        ; $5863: $1e $c0
	ld bc, $02a0                                     ; $5865: $01 $a0 $02
	inc bc                                           ; $5868: $03
	ld l, c                                          ; $5869: $69
	ret nz                                           ; $586a: $c0

	ld bc, $01a0                                     ; $586b: $01 $a0 $01
	inc bc                                           ; $586e: $03
	ld b, e                                          ; $586f: $43
	ret nz                                           ; $5870: $c0

	ld bc, $02a0                                     ; $5871: $01 $a0 $02
	inc bc                                           ; $5874: $03
	ld l, h                                          ; $5875: $6c
	ret nz                                           ; $5876: $c0

	ld bc, $01a0                                     ; $5877: $01 $a0 $01
	ld [bc], a                                       ; $587a: $02
	ccf                                              ; $587b: $3f
	push hl                                          ; $587c: $e5
	inc sp                                           ; $587d: $33
	nop                                              ; $587e: $00
	nop                                              ; $587f: $00
	ld c, $c0                                        ; $5880: $0e $c0
	ld bc, $01a0                                     ; $5882: $01 $a0 $01
	inc bc                                           ; $5885: $03
	ld [hl], d                                       ; $5886: $72
	pop hl                                           ; $5887: $e1
	ld [hl-], a                                      ; $5888: $32
	nop                                              ; $5889: $00
	ld c, l                                          ; $588a: $4d
	pop hl                                           ; $588b: $e1
	ld [bc], a                                       ; $588c: $02
	nop                                              ; $588d: $00
	ret z                                            ; $588e: $c8

	add hl, bc                                       ; $588f: $09
	and h                                            ; $5890: $a4
	pop hl                                           ; $5891: $e1
	ld [bc], a                                       ; $5892: $02
	nop                                              ; $5893: $00
	ret z                                            ; $5894: $c8

	add d                                            ; $5895: $82
	ret nz                                           ; $5896: $c0

	dec de                                           ; $5897: $1b
	ret nc                                           ; $5898: $d0

	ld [bc], a                                       ; $5899: $02
	ret nc                                           ; $589a: $d0

	pop de                                           ; $589b: $d1
	inc sp                                           ; $589c: $33
	ret nz                                           ; $589d: $c0

	ld bc, $02a0                                     ; $589e: $01 $a0 $02
	inc bc                                           ; $58a1: $03
	ld [hl], $e0                                     ; $58a2: $36 $e0
	nop                                              ; $58a4: $00
	sub c                                            ; $58a5: $91
	ret nz                                           ; $58a6: $c0

	ld bc, $02a0                                     ; $58a7: $01 $a0 $02
	inc bc                                           ; $58aa: $03
	halt                                             ; $58ab: $76
	ret nz                                           ; $58ac: $c0

	ld bc, $01a0                                     ; $58ad: $01 $a0 $01
	inc bc                                           ; $58b0: $03
	ld a, c                                          ; $58b1: $79
	ret nz                                           ; $58b2: $c0

	ld bc, $02a0                                     ; $58b3: $01 $a0 $02
	inc bc                                           ; $58b6: $03
	add d                                            ; $58b7: $82
	ret nz                                           ; $58b8: $c0

	ld bc, $01a0                                     ; $58b9: $01 $a0 $01
	inc bc                                           ; $58bc: $03
	adc e                                            ; $58bd: $8b
	ret nz                                           ; $58be: $c0

	ld bc, $02a0                                     ; $58bf: $01 $a0 $02
	inc bc                                           ; $58c2: $03
	sub e                                            ; $58c3: $93
	ret nz                                           ; $58c4: $c0

	ld bc, $01a0                                     ; $58c5: $01 $a0 $01
	inc bc                                           ; $58c8: $03
	sbc e                                            ; $58c9: $9b
	ret nz                                           ; $58ca: $c0

	ld bc, $02a0                                     ; $58cb: $01 $a0 $02
	inc bc                                           ; $58ce: $03
	and b                                            ; $58cf: $a0
	ld [bc], a                                       ; $58d0: $02
	jp nc, $2dd3                                     ; $58d1: $d2 $d3 $2d

	ret nz                                           ; $58d4: $c0

	ld bc, $02a0                                     ; $58d5: $01 $a0 $02
	inc bc                                           ; $58d8: $03
	ld e, c                                          ; $58d9: $59
	ldh [rP1], a                                     ; $58da: $e0 $00
	ld e, d                                          ; $58dc: $5a
	ret nz                                           ; $58dd: $c0

	ld bc, $02a0                                     ; $58de: $01 $a0 $02
	inc bc                                           ; $58e1: $03
	and l                                            ; $58e2: $a5
	ret nz                                           ; $58e3: $c0

	ld bc, $01a0                                     ; $58e4: $01 $a0 $01
	inc bc                                           ; $58e7: $03
	xor c                                            ; $58e8: $a9
	ret nz                                           ; $58e9: $c0

	ld bc, $02a0                                     ; $58ea: $01 $a0 $02
	inc bc                                           ; $58ed: $03
	xor a                                            ; $58ee: $af
	ret nz                                           ; $58ef: $c0

	ld bc, $01a0                                     ; $58f0: $01 $a0 $01
	inc bc                                           ; $58f3: $03
	cp d                                             ; $58f4: $ba
	ret nz                                           ; $58f5: $c0

	ld bc, $02a0                                     ; $58f6: $01 $a0 $02
	inc bc                                           ; $58f9: $03
	jp $01c0                                         ; $58fa: $c3 $c0 $01


	and b                                            ; $58fd: $a0
	ld bc, $3f02                                     ; $58fe: $01 $02 $3f
	ld bc, $2dd4                                     ; $5901: $01 $d4 $2d
	ret nz                                           ; $5904: $c0

	ld bc, $02a0                                     ; $5905: $01 $a0 $02
	inc bc                                           ; $5908: $03
	ld e, c                                          ; $5909: $59
	ldh [rP1], a                                     ; $590a: $e0 $00
	ld a, [hl+]                                      ; $590c: $2a
	ret nz                                           ; $590d: $c0

	ld bc, $02a0                                     ; $590e: $01 $a0 $02
	inc bc                                           ; $5911: $03
	and l                                            ; $5912: $a5
	ret nz                                           ; $5913: $c0

	ld bc, $01a0                                     ; $5914: $01 $a0 $01
	inc bc                                           ; $5917: $03
	xor c                                            ; $5918: $a9
	ret nz                                           ; $5919: $c0

	ld bc, $02a0                                     ; $591a: $01 $a0 $02
	inc bc                                           ; $591d: $03
	call z, $01c0                                    ; $591e: $cc $c0 $01
	and b                                            ; $5921: $a0
	ld bc, $d703                                     ; $5922: $01 $03 $d7
	ret nz                                           ; $5925: $c0

	ld bc, $02a0                                     ; $5926: $01 $a0 $02
	inc bc                                           ; $5929: $03
	pop hl                                           ; $592a: $e1
	ret nz                                           ; $592b: $c0

	ld bc, $01a0                                     ; $592c: $01 $a0 $01
	ld [bc], a                                       ; $592f: $02
	ccf                                              ; $5930: $3f
	push hl                                          ; $5931: $e5
	inc sp                                           ; $5932: $33
	nop                                              ; $5933: $00
	nop                                              ; $5934: $00
	ld [$32e1], sp                                   ; $5935: $08 $e1 $32
	nop                                              ; $5938: $00
	xor a                                            ; $5939: $af
	pop hl                                           ; $593a: $e1
	ld [bc], a                                       ; $593b: $02
	nop                                              ; $593c: $00
	ret z                                            ; $593d: $c8

	ld [de], a                                       ; $593e: $12
	ret nz                                           ; $593f: $c0

	ld bc, $02a0                                     ; $5940: $01 $a0 $02
	inc bc                                           ; $5943: $03
	rst SubAFromBC                                          ; $5944: $e7
	ret nz                                           ; $5945: $c0

	ld bc, $01a0                                     ; $5946: $01 $a0 $01
	inc bc                                           ; $5949: $03
	ldh a, [$c0]                                     ; $594a: $f0 $c0
	ld bc, $02a0                                     ; $594c: $01 $a0 $02
	inc bc                                           ; $594f: $03
	ld hl, sp+$09                                    ; $5950: $f8 $09
	dec e                                            ; $5952: $1d
	add d                                            ; $5953: $82
	ret nz                                           ; $5954: $c0

	add b                                            ; $5955: $80
	ld bc, $07d3                                     ; $5956: $01 $d3 $07
	ret nz                                           ; $5959: $c0

	ld [hl+], a                                      ; $595a: $22
	jp nc, $e4d0                                     ; $595b: $d2 $d0 $e4

	ld bc, $0189                                     ; $595e: $01 $89 $01
	jp nc, $e403                                     ; $5961: $d2 $03 $e4

	nop                                              ; $5964: $00
	rst GetHLinHL                                          ; $5965: $cf
	ld bc, $07d1                                     ; $5966: $01 $d1 $07
	ret nz                                           ; $5969: $c0

	ld [hl+], a                                      ; $596a: $22
	pop de                                           ; $596b: $d1
	ret nc                                           ; $596c: $d0

	db $e4                                           ; $596d: $e4
	nop                                              ; $596e: $00
	ld [bc], a                                       ; $596f: $02
	add hl, bc                                       ; $5970: $09
	or d                                             ; $5971: $b2
	ret nz                                           ; $5972: $c0

	ld de, $00e3                                     ; $5973: $11 $e3 $00
	ld e, c                                          ; $5976: $59
	pop hl                                           ; $5977: $e1
	ld [bc], a                                       ; $5978: $02
	nop                                              ; $5979: $00
	ret z                                            ; $597a: $c8

	add d                                            ; $597b: $82
	ret nz                                           ; $597c: $c0

	dec de                                           ; $597d: $1b
	ret nc                                           ; $597e: $d0

	ld [bc], a                                       ; $597f: $02
	ret nc                                           ; $5980: $d0

	pop de                                           ; $5981: $d1
	ccf                                              ; $5982: $3f
	ret nz                                           ; $5983: $c0

	ld bc, $02a0                                     ; $5984: $01 $a0 $02
	inc bc                                           ; $5987: $03
	ld sp, hl                                        ; $5988: $f9
	ret nz                                           ; $5989: $c0

	ld bc, $01a0                                     ; $598a: $01 $a0 $01
	inc bc                                           ; $598d: $03
	db $fc                                           ; $598e: $fc
	ret nz                                           ; $598f: $c0

	ld bc, $02a0                                     ; $5990: $01 $a0 $02
	inc b                                            ; $5993: $04
	nop                                              ; $5994: $00
	ldh [rP1], a                                     ; $5995: $e0 $00
	adc [hl]                                         ; $5997: $8e
	ret nz                                           ; $5998: $c0

	ld bc, $02a0                                     ; $5999: $01 $a0 $02
	inc b                                            ; $599c: $04
	add hl, bc                                       ; $599d: $09
	ret nz                                           ; $599e: $c0

	ld bc, $01a0                                     ; $599f: $01 $a0 $01

jr_083_59a2:
	inc b                                            ; $59a2: $04
	ld [de], a                                       ; $59a3: $12
	ret nz                                           ; $59a4: $c0

	ld bc, $02a0                                     ; $59a5: $01 $a0 $02
	inc b                                            ; $59a8: $04
	dec de                                           ; $59a9: $1b
	ret nz                                           ; $59aa: $c0

	ld bc, $01a0                                     ; $59ab: $01 $a0 $01
	inc b                                            ; $59ae: $04
	inc h                                            ; $59af: $24
	ret nz                                           ; $59b0: $c0

	ld bc, $02a0                                     ; $59b1: $01 $a0 $02
	inc b                                            ; $59b4: $04
	ld a, [hl+]                                      ; $59b5: $2a
	ret nz                                           ; $59b6: $c0

	ld bc, $01a0                                     ; $59b7: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $59ba: $01 $e2 $c0
	ld bc, $02a0                                     ; $59bd: $01 $a0 $02
	ld [bc], a                                       ; $59c0: $02
	ld l, [hl]                                       ; $59c1: $6e
	ld [bc], a                                       ; $59c2: $02
	jp nc, $33d3                                     ; $59c3: $d2 $d3 $33

	ret nz                                           ; $59c6: $c0

	ld bc, $02a0                                     ; $59c7: $01 $a0 $02
	inc b                                            ; $59ca: $04
	inc l                                            ; $59cb: $2c
	ret nz                                           ; $59cc: $c0

	ld bc, $01a0                                     ; $59cd: $01 $a0 $01
	inc bc                                           ; $59d0: $03
	db $fc                                           ; $59d1: $fc
	ret nz                                           ; $59d2: $c0

	ld bc, $02a0                                     ; $59d3: $01 $a0 $02
	inc b                                            ; $59d6: $04
	jr nc, @-$1e                                     ; $59d7: $30 $e0

	nop                                              ; $59d9: $00
	ld c, e                                          ; $59da: $4b
	ret nz                                           ; $59db: $c0

	ld bc, $02a0                                     ; $59dc: $01 $a0 $02
	inc b                                            ; $59df: $04
	jr c, jr_083_59a2                                ; $59e0: $38 $c0

	ld bc, $01a0                                     ; $59e2: $01 $a0 $01
	inc b                                            ; $59e5: $04
	ld b, a                                          ; $59e6: $47
	ret nz                                           ; $59e7: $c0

	ld bc, $02a0                                     ; $59e8: $01 $a0 $02
	inc b                                            ; $59eb: $04
	ld c, a                                          ; $59ec: $4f
	ret nz                                           ; $59ed: $c0

	ld bc, $01a0                                     ; $59ee: $01 $a0 $01
	inc b                                            ; $59f1: $04
	ld d, a                                          ; $59f2: $57
	ret nz                                           ; $59f3: $c0

	ld bc, $02a0                                     ; $59f4: $01 $a0 $02
	ld bc, $0138                                     ; $59f7: $01 $38 $01
	call nc, $c024                                   ; $59fa: $d4 $24 $c0
	ld bc, $02a0                                     ; $59fd: $01 $a0 $02
	inc b                                            ; $5a00: $04
	inc l                                            ; $5a01: $2c
	ret nz                                           ; $5a02: $c0

	ld bc, $01a0                                     ; $5a03: $01 $a0 $01
	inc bc                                           ; $5a06: $03

jr_083_5a07:
	db $fc                                           ; $5a07: $fc
	ret nz                                           ; $5a08: $c0

	ld bc, $02a0                                     ; $5a09: $01 $a0 $02
	inc b                                            ; $5a0c: $04
	ld e, l                                          ; $5a0d: $5d
	ret nz                                           ; $5a0e: $c0

	ld bc, $01a0                                     ; $5a0f: $01 $a0 $01
	inc b                                            ; $5a12: $04
	ld l, c                                          ; $5a13: $69
	ret nz                                           ; $5a14: $c0

	ld bc, $02a0                                     ; $5a15: $01 $a0 $02
	inc b                                            ; $5a18: $04
	ld l, a                                          ; $5a19: $6f
	ret nz                                           ; $5a1a: $c0

	ld bc, $01a0                                     ; $5a1b: $01 $a0 $01
	inc b                                            ; $5a1e: $04
	halt                                             ; $5a1f: $76
	push hl                                          ; $5a20: $e5
	inc sp                                           ; $5a21: $33
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	ld c, $c1                                        ; $5a24: $0e $c1
	ld e, e                                          ; $5a26: $5b
	ret nz                                           ; $5a27: $c0

	inc c                                            ; $5a28: $0c
	ldh [$5a], a                                     ; $5a29: $e0 $5a
	pop bc                                           ; $5a2b: $c1
	ld e, h                                          ; $5a2c: $5c
	ret nz                                           ; $5a2d: $c0

	ld bc, $01a0                                     ; $5a2e: $01 $a0 $01
	inc b                                            ; $5a31: $04
	add [hl]                                         ; $5a32: $86
	add hl, bc                                       ; $5a33: $09
	or d                                             ; $5a34: $b2
	ret nz                                           ; $5a35: $c0

	ld de, $00e3                                     ; $5a36: $11 $e3 $00
	ld e, d                                          ; $5a39: $5a
	pop hl                                           ; $5a3a: $e1
	ld [bc], a                                       ; $5a3b: $02
	nop                                              ; $5a3c: $00
	ret z                                            ; $5a3d: $c8

	add d                                            ; $5a3e: $82
	ret nz                                           ; $5a3f: $c0

	dec de                                           ; $5a40: $1b
	ret nc                                           ; $5a41: $d0

	ld [bc], a                                       ; $5a42: $02
	ret nc                                           ; $5a43: $d0

	pop de                                           ; $5a44: $d1
	jr c, jr_083_5a07                                ; $5a45: $38 $c0

	ld bc, $02a0                                     ; $5a47: $01 $a0 $02
	inc b                                            ; $5a4a: $04
	adc b                                            ; $5a4b: $88
	ret nz                                           ; $5a4c: $c0

	ld bc, $01a0                                     ; $5a4d: $01 $a0 $01
	inc b                                            ; $5a50: $04
	adc d                                            ; $5a51: $8a
	ret nz                                           ; $5a52: $c0

	ld bc, $02a0                                     ; $5a53: $01 $a0 $02
	inc b                                            ; $5a56: $04
	adc [hl]                                         ; $5a57: $8e
	ret nz                                           ; $5a58: $c0

	ld bc, $01a0                                     ; $5a59: $01 $a0 $01
	inc b                                            ; $5a5c: $04
	sub h                                            ; $5a5d: $94
	ret nz                                           ; $5a5e: $c0

	ld bc, $02a0                                     ; $5a5f: $01 $a0 $02
	inc b                                            ; $5a62: $04
	sbc b                                            ; $5a63: $98
	ret nz                                           ; $5a64: $c0

	ld bc, $01a0                                     ; $5a65: $01 $a0 $01
	inc b                                            ; $5a68: $04
	sbc l                                            ; $5a69: $9d
	ret nz                                           ; $5a6a: $c0

	ld bc, $02a0                                     ; $5a6b: $01 $a0 $02
	inc b                                            ; $5a6e: $04
	xor e                                            ; $5a6f: $ab
	ret nz                                           ; $5a70: $c0

	ld bc, $01a0                                     ; $5a71: $01 $a0 $01
	inc b                                            ; $5a74: $04
	or h                                             ; $5a75: $b4
	pop bc                                           ; $5a76: $c1
	ld e, e                                          ; $5a77: $5b
	ret nz                                           ; $5a78: $c0

	ld bc, $01a0                                     ; $5a79: $01 $a0 $01
	inc b                                            ; $5a7c: $04
	cp l                                             ; $5a7d: $bd
	ld [bc], a                                       ; $5a7e: $02
	jp nc, $38d3                                     ; $5a7f: $d2 $d3 $38

	ret nz                                           ; $5a82: $c0

	ld bc, $02a0                                     ; $5a83: $01 $a0 $02
	inc b                                            ; $5a86: $04
	adc b                                            ; $5a87: $88
	ret nz                                           ; $5a88: $c0

	ld bc, $01a0                                     ; $5a89: $01 $a0 $01
	inc b                                            ; $5a8c: $04
	adc d                                            ; $5a8d: $8a
	ret nz                                           ; $5a8e: $c0

	ld bc, $02a0                                     ; $5a8f: $01 $a0 $02
	inc b                                            ; $5a92: $04
	rst JumpTable                                          ; $5a93: $c7
	ret nz                                           ; $5a94: $c0

	ld bc, $01a0                                     ; $5a95: $01 $a0 $01
	inc b                                            ; $5a98: $04
	call z, $01c0                                    ; $5a99: $cc $c0 $01
	and b                                            ; $5a9c: $a0
	ld [bc], a                                       ; $5a9d: $02
	inc b                                            ; $5a9e: $04
	push de                                          ; $5a9f: $d5
	ret nz                                           ; $5aa0: $c0

	ld bc, $01a0                                     ; $5aa1: $01 $a0 $01
	inc b                                            ; $5aa4: $04
	ret c                                            ; $5aa5: $d8

	ret nz                                           ; $5aa6: $c0

	ld bc, $02a0                                     ; $5aa7: $01 $a0 $02
	inc b                                            ; $5aaa: $04
	rst SubAFromDE                                          ; $5aab: $df
	ret nz                                           ; $5aac: $c0

	ld bc, $01a0                                     ; $5aad: $01 $a0 $01
	inc b                                            ; $5ab0: $04
	db $e3                                           ; $5ab1: $e3
	pop bc                                           ; $5ab2: $c1
	ld e, e                                          ; $5ab3: $5b
	ret nz                                           ; $5ab4: $c0

	ld bc, $01a0                                     ; $5ab5: $01 $a0 $01
	inc b                                            ; $5ab8: $04
	cp l                                             ; $5ab9: $bd
	ld bc, $26d4                                     ; $5aba: $01 $d4 $26
	ret nz                                           ; $5abd: $c0

	ld bc, $02a0                                     ; $5abe: $01 $a0 $02
	inc b                                            ; $5ac1: $04
	adc b                                            ; $5ac2: $88
	ret nz                                           ; $5ac3: $c0

	ld bc, $01a0                                     ; $5ac4: $01 $a0 $01
	inc b                                            ; $5ac7: $04
	adc d                                            ; $5ac8: $8a
	ret nz                                           ; $5ac9: $c0

	ld bc, $02a0                                     ; $5aca: $01 $a0 $02
	inc b                                            ; $5acd: $04
	ld [$01c0], a                                    ; $5ace: $ea $c0 $01
	and b                                            ; $5ad1: $a0
	ld bc, $9404                                     ; $5ad2: $01 $04 $94
	ret nz                                           ; $5ad5: $c0

	ld bc, $02a0                                     ; $5ad6: $01 $a0 $02
	inc b                                            ; $5ad9: $04
	rst AddAOntoHL                                          ; $5ada: $ef
	pop bc                                           ; $5adb: $c1
	ld e, e                                          ; $5adc: $5b
	ret nz                                           ; $5add: $c0

	ld bc, $01a0                                     ; $5ade: $01 $a0 $01
	inc b                                            ; $5ae1: $04
	rst FarCall                                          ; $5ae2: $f7
	push hl                                          ; $5ae3: $e5
	inc sp                                           ; $5ae4: $33
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	add hl, bc                                       ; $5ae7: $09
	ret nz                                           ; $5ae8: $c0

	db $dd                                           ; $5ae9: $dd
	ret nz                                           ; $5aea: $c0

	ld de, $00e3                                     ; $5aeb: $11 $e3 $00
	ld e, b                                          ; $5aee: $58
	pop hl                                           ; $5aef: $e1
	ld [bc], a                                       ; $5af0: $02
	nop                                              ; $5af1: $00
	ret z                                            ; $5af2: $c8

	add d                                            ; $5af3: $82
	ret nz                                           ; $5af4: $c0

	dec de                                           ; $5af5: $1b
	ret nc                                           ; $5af6: $d0

	ld [bc], a                                       ; $5af7: $02
	ret nc                                           ; $5af8: $d0

	pop de                                           ; $5af9: $d1
	ld [hl], $c0                                     ; $5afa: $36 $c0
	ld bc, $02a0                                     ; $5afc: $01 $a0 $02
	dec b                                            ; $5aff: $05
	ld bc, $00e0                                     ; $5b00: $01 $e0 $00
	push bc                                          ; $5b03: $c5
	ret nz                                           ; $5b04: $c0

	ld bc, $02a0                                     ; $5b05: $01 $a0 $02
	dec b                                            ; $5b08: $05
	ld b, $60                                        ; $5b09: $06 $60
	ei                                               ; $5b0b: $fb
	ret nz                                           ; $5b0c: $c0

	add e                                            ; $5b0d: $83
	db $d3                                           ; $5b0e: $d3
	ldh [$64], a                                     ; $5b0f: $e0 $64
	ld b, $c0                                        ; $5b11: $06 $c0
	ld bc, $01a0                                     ; $5b13: $01 $a0 $01
	dec b                                            ; $5b16: $05
	ld c, $06                                        ; $5b17: $0e $06
	ret nz                                           ; $5b19: $c0

	ld bc, $01a0                                     ; $5b1a: $01 $a0 $01
	ld bc, $e018                                     ; $5b1d: $01 $18 $e0
	nop                                              ; $5b20: $00
	set 0, b                                         ; $5b21: $cb $c0
	ld bc, $02a0                                     ; $5b23: $01 $a0 $02
	dec b                                            ; $5b26: $05
	dec d                                            ; $5b27: $15
	ret nz                                           ; $5b28: $c0

	ld bc, $01a0                                     ; $5b29: $01 $a0 $01
	ld bc, $e024                                     ; $5b2c: $01 $24 $e0
	cp $0f                                           ; $5b2f: $fe $0f
	ld [bc], a                                       ; $5b31: $02
	jp nc, $39d3                                     ; $5b32: $d2 $d3 $39

	ret nz                                           ; $5b35: $c0

	ld bc, $02a0                                     ; $5b36: $01 $a0 $02
	dec b                                            ; $5b39: $05
	dec h                                            ; $5b3a: $25
	ldh [rP1], a                                     ; $5b3b: $e0 $00
	adc e                                            ; $5b3d: $8b
	ret nz                                           ; $5b3e: $c0

	ld bc, $02a0                                     ; $5b3f: $01 $a0 $02
	dec b                                            ; $5b42: $05
	ld a, [hl+]                                      ; $5b43: $2a
	ld h, b                                          ; $5b44: $60
	ei                                               ; $5b45: $fb
	ret nz                                           ; $5b46: $c0

	add e                                            ; $5b47: $83
	db $d3                                           ; $5b48: $d3
	ldh [$64], a                                     ; $5b49: $e0 $64
	ld b, $c0                                        ; $5b4b: $06 $c0
	ld bc, $01a0                                     ; $5b4d: $01 $a0 $01
	dec b                                            ; $5b50: $05
	ld sp, $c006                                     ; $5b51: $31 $06 $c0
	ld bc, $01a0                                     ; $5b54: $01 $a0 $01
	ld bc, $e018                                     ; $5b57: $01 $18 $e0
	nop                                              ; $5b5a: $00
	sub c                                            ; $5b5b: $91
	ret nz                                           ; $5b5c: $c0

	ld bc, $02a0                                     ; $5b5d: $01 $a0 $02
	dec b                                            ; $5b60: $05
	add hl, sp                                       ; $5b61: $39
	ret nz                                           ; $5b62: $c0

	ld bc, $01a0                                     ; $5b63: $01 $a0 $01
	ld bc, $c024                                     ; $5b66: $01 $24 $c0
	ld bc, $02a0                                     ; $5b69: $01 $a0 $02
	ld bc, $0138                                     ; $5b6c: $01 $38 $01
	call nc, $c052                                   ; $5b6f: $d4 $52 $c0
	ld bc, $02a0                                     ; $5b72: $01 $a0 $02
	dec b                                            ; $5b75: $05
	dec a                                            ; $5b76: $3d
	ret nz                                           ; $5b77: $c0

	ld bc, $01a0                                     ; $5b78: $01 $a0 $01
	dec b                                            ; $5b7b: $05
	ld b, l                                          ; $5b7c: $45
	ret nz                                           ; $5b7d: $c0

	ld bc, $02a0                                     ; $5b7e: $01 $a0 $02
	dec b                                            ; $5b81: $05
	ld c, e                                          ; $5b82: $4b
	pop hl                                           ; $5b83: $e1
	ld [bc], a                                       ; $5b84: $02
	rlca                                             ; $5b85: $07
	sbc e                                            ; $5b86: $9b
	ret nz                                           ; $5b87: $c0

	ld bc, $02a0                                     ; $5b88: $01 $a0 $02
	dec b                                            ; $5b8b: $05
	ld a, [hl+]                                      ; $5b8c: $2a
	ld h, b                                          ; $5b8d: $60
	ei                                               ; $5b8e: $fb
	ret nz                                           ; $5b8f: $c0

	add e                                            ; $5b90: $83
	db $d3                                           ; $5b91: $d3
	ldh [$64], a                                     ; $5b92: $e0 $64
	jr @-$3e                                         ; $5b94: $18 $c0

	ld bc, $01a0                                     ; $5b96: $01 $a0 $01
	dec b                                            ; $5b99: $05
	ld sp, $01c0                                     ; $5b9a: $31 $c0 $01
	and b                                            ; $5b9d: $a0
	ld [bc], a                                       ; $5b9e: $02
	dec b                                            ; $5b9f: $05
	ld d, c                                          ; $5ba0: $51
	ret nz                                           ; $5ba1: $c0

	ld bc, $01a0                                     ; $5ba2: $01 $a0 $01
	dec b                                            ; $5ba5: $05
	ld e, l                                          ; $5ba6: $5d
	ret nz                                           ; $5ba7: $c0

	ld bc, $02a0                                     ; $5ba8: $01 $a0 $02
	ld bc, $0964                                     ; $5bab: $01 $64 $09
	ldh [rP1], a                                     ; $5bae: $e0 $00
	add hl, hl                                       ; $5bb0: $29
	ret nz                                           ; $5bb1: $c0

	ld bc, $02a0                                     ; $5bb2: $01 $a0 $02
	dec b                                            ; $5bb5: $05
	ld h, l                                          ; $5bb6: $65
	ret nz                                           ; $5bb7: $c0

	ld bc, $01a0                                     ; $5bb8: $01 $a0 $01
	ld bc, $c024                                     ; $5bbb: $01 $24 $c0
	ld bc, $02a0                                     ; $5bbe: $01 $a0 $02

Call_083_5bc1:
Jump_083_5bc1:
	ld bc, $e57c                                     ; $5bc1: $01 $7c $e5
	inc sp                                           ; $5bc4: $33
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	db $10                                           ; $5bc7: $10
	ret nz                                           ; $5bc8: $c0

	ld bc, $01a0                                     ; $5bc9: $01 $a0 $01
	dec b                                            ; $5bcc: $05
	ld b, l                                          ; $5bcd: $45
	ret nz                                           ; $5bce: $c0

	ld bc, $02a0                                     ; $5bcf: $01 $a0 $02
	dec b                                            ; $5bd2: $05
	ld l, e                                          ; $5bd3: $6b
	pop hl                                           ; $5bd4: $e1
	ld [bc], a                                       ; $5bd5: $02
	rlca                                             ; $5bd6: $07
	sbc e                                            ; $5bd7: $9b
	ld [de], a                                       ; $5bd8: $12
	ret nz                                           ; $5bd9: $c0

	ld bc, $01a0                                     ; $5bda: $01 $a0 $01
	ld bc, $c018                                     ; $5bdd: $01 $18 $c0
	ld bc, $02a0                                     ; $5be0: $01 $a0 $02
	dec b                                            ; $5be3: $05
	ld [hl], c                                       ; $5be4: $71
	ret nz                                           ; $5be5: $c0

	ld bc, $01a0                                     ; $5be6: $01 $a0 $01
	dec b                                            ; $5be9: $05
	ld a, c                                          ; $5bea: $79
	jr @-$3e                                         ; $5beb: $18 $c0

	ld bc, $02a0                                     ; $5bed: $01 $a0 $02
	dec b                                            ; $5bf0: $05
	ld a, l                                          ; $5bf1: $7d
	ret nz                                           ; $5bf2: $c0

	ld bc, $01a0                                     ; $5bf3: $01 $a0 $01
	dec b                                            ; $5bf6: $05
	add l                                            ; $5bf7: $85
	ret nz                                           ; $5bf8: $c0

	ld bc, $02a0                                     ; $5bf9: $01 $a0 $02
	dec b                                            ; $5bfc: $05
	adc c                                            ; $5bfd: $89
	ret nz                                           ; $5bfe: $c0

	ld bc, $01a0                                     ; $5bff: $01 $a0 $01
	ld bc, $099c                                     ; $5c02: $01 $9c $09
	ld h, $c0                                        ; $5c05: $26 $c0
	ld de, $00e3                                     ; $5c07: $11 $e3 $00
	ld e, e                                          ; $5c0a: $5b
	pop hl                                           ; $5c0b: $e1
	ld [bc], a                                       ; $5c0c: $02
	nop                                              ; $5c0d: $00
	ret z                                            ; $5c0e: $c8

	add d                                            ; $5c0f: $82
	ret nz                                           ; $5c10: $c0

	add b                                            ; $5c11: $80
	ld bc, $03d3                                     ; $5c12: $01 $d3 $03
	db $e4                                           ; $5c15: $e4
	ld bc, $018e                                     ; $5c16: $01 $8e $01
	jp nc, $c007                                     ; $5c19: $d2 $07 $c0

	ld [hl+], a                                      ; $5c1c: $22
	jp nc, $e4d0                                     ; $5c1d: $d2 $d0 $e4

	nop                                              ; $5c20: $00
	xor b                                            ; $5c21: $a8
	ld bc, $07d1                                     ; $5c22: $01 $d1 $07
	ret nz                                           ; $5c25: $c0

	ld [hl+], a                                      ; $5c26: $22
	pop de                                           ; $5c27: $d1
	ret nc                                           ; $5c28: $d0

	db $e4                                           ; $5c29: $e4
	nop                                              ; $5c2a: $00
	ld [bc], a                                       ; $5c2b: $02
	add hl, bc                                       ; $5c2c: $09
	sbc d                                            ; $5c2d: $9a
	add d                                            ; $5c2e: $82
	ret nz                                           ; $5c2f: $c0

	dec de                                           ; $5c30: $1b
	ret nc                                           ; $5c31: $d0

	ld [bc], a                                       ; $5c32: $02
	ret nc                                           ; $5c33: $d0

	pop de                                           ; $5c34: $d1
	inc sp                                           ; $5c35: $33
	ret nz                                           ; $5c36: $c0

	ld bc, $02a0                                     ; $5c37: $01 $a0 $02
	dec b                                            ; $5c3a: $05
	sbc l                                            ; $5c3b: $9d
	ldh [rSB], a                                     ; $5c3c: $e0 $01
	db $eb                                           ; $5c3e: $eb
	ret nz                                           ; $5c3f: $c0

	ld bc, $02a0                                     ; $5c40: $01 $a0 $02
	dec b                                            ; $5c43: $05
	and l                                            ; $5c44: $a5
	ret nz                                           ; $5c45: $c0

	ld bc, $01a0                                     ; $5c46: $01 $a0 $01
	dec b                                            ; $5c49: $05
	xor [hl]                                         ; $5c4a: $ae
	ret nz                                           ; $5c4b: $c0

	ld bc, $02a0                                     ; $5c4c: $01 $a0 $02
	dec b                                            ; $5c4f: $05
	cp c                                             ; $5c50: $b9
	ret nz                                           ; $5c51: $c0

	ld bc, $01a0                                     ; $5c52: $01 $a0 $01
	dec b                                            ; $5c55: $05
	ret nz                                           ; $5c56: $c0

	ret nz                                           ; $5c57: $c0

	ld bc, $02a0                                     ; $5c58: $01 $a0 $02
	dec b                                            ; $5c5b: $05
	add $c0                                          ; $5c5c: $c6 $c0
	ld bc, $01a0                                     ; $5c5e: $01 $a0 $01
	dec b                                            ; $5c61: $05
	call $01c0                                       ; $5c62: $cd $c0 $01
	and b                                            ; $5c65: $a0
	ld [bc], a                                       ; $5c66: $02
	ld [bc], a                                       ; $5c67: $02
	ld de, $d202                                     ; $5c68: $11 $02 $d2
	db $d3                                           ; $5c6b: $d3
	daa                                              ; $5c6c: $27
	ret nz                                           ; $5c6d: $c0

	ld bc, $02a0                                     ; $5c6e: $01 $a0 $02
	dec b                                            ; $5c71: $05
	call nc, $01e0                                   ; $5c72: $d4 $e0 $01
	or h                                             ; $5c75: $b4
	ret nz                                           ; $5c76: $c0

	ld bc, $02a0                                     ; $5c77: $01 $a0 $02
	dec b                                            ; $5c7a: $05
	reti                                             ; $5c7b: $d9


	ret nz                                           ; $5c7c: $c0

	ld bc, $01a0                                     ; $5c7d: $01 $a0 $01
	dec b                                            ; $5c80: $05
	xor [hl]                                         ; $5c81: $ae
	ret nz                                           ; $5c82: $c0

	ld bc, $02a0                                     ; $5c83: $01 $a0 $02
	dec b                                            ; $5c86: $05
	pop hl                                           ; $5c87: $e1
	ret nz                                           ; $5c88: $c0

	ld bc, $01a0                                     ; $5c89: $01 $a0 $01
	dec b                                            ; $5c8c: $05
	db $ed                                           ; $5c8d: $ed
	ret nz                                           ; $5c8e: $c0

	ld bc, $02a0                                     ; $5c8f: $01 $a0 $02
	ld bc, $0138                                     ; $5c92: $01 $38 $01
	call nc, $c02d                                   ; $5c95: $d4 $2d $c0
	ld bc, $02a0                                     ; $5c98: $01 $a0 $02
	dec b                                            ; $5c9b: $05
	call nc, $01e0                                   ; $5c9c: $d4 $e0 $01
	adc d                                            ; $5c9f: $8a
	ret nz                                           ; $5ca0: $c0

	ld bc, $02a0                                     ; $5ca1: $01 $a0 $02
	dec b                                            ; $5ca4: $05
	reti                                             ; $5ca5: $d9


	ret nz                                           ; $5ca6: $c0

	ld bc, $01a0                                     ; $5ca7: $01 $a0 $01
	dec b                                            ; $5caa: $05
	xor [hl]                                         ; $5cab: $ae
	ret nz                                           ; $5cac: $c0

	ld bc, $02a0                                     ; $5cad: $01 $a0 $02
	dec b                                            ; $5cb0: $05
	ld sp, hl                                        ; $5cb1: $f9
	ret nz                                           ; $5cb2: $c0

	ld bc, $01a0                                     ; $5cb3: $01 $a0 $01
	ld b, $04                                        ; $5cb6: $06 $04
	ret nz                                           ; $5cb8: $c0

	ld bc, $02a0                                     ; $5cb9: $01 $a0 $02
	ld b, $0b                                        ; $5cbc: $06 $0b
	ret nz                                           ; $5cbe: $c0

	ld bc, $01a0                                     ; $5cbf: $01 $a0 $01
	ld [bc], a                                       ; $5cc2: $02
	ccf                                              ; $5cc3: $3f
	push hl                                          ; $5cc4: $e5
	inc sp                                           ; $5cc5: $33
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	add hl, bc                                       ; $5cc8: $09
	ret nz                                           ; $5cc9: $c0

	reti                                             ; $5cca: $d9


	add d                                            ; $5ccb: $82
	ret nz                                           ; $5ccc: $c0

	dec de                                           ; $5ccd: $1b
	ret nc                                           ; $5cce: $d0

	ld [bc], a                                       ; $5ccf: $02
	ret nc                                           ; $5cd0: $d0

	pop de                                           ; $5cd1: $d1
	ld b, d                                          ; $5cd2: $42
	ret nz                                           ; $5cd3: $c0

	ld bc, $02a0                                     ; $5cd4: $01 $a0 $02
	dec b                                            ; $5cd7: $05
	sbc l                                            ; $5cd8: $9d
	ldh [rSB], a                                     ; $5cd9: $e0 $01
	ld c, [hl]                                       ; $5cdb: $4e
	ret nz                                           ; $5cdc: $c0

	ld bc, $02a0                                     ; $5cdd: $01 $a0 $02
	ld b, $13                                        ; $5ce0: $06 $13
	ld h, b                                          ; $5ce2: $60
	ld sp, hl                                        ; $5ce3: $f9
	ret nz                                           ; $5ce4: $c0

	add e                                            ; $5ce5: $83
	db $d3                                           ; $5ce6: $d3
	ldh [$32], a                                     ; $5ce7: $e0 $32
	ld b, $c0                                        ; $5ce9: $06 $c0
	ld bc, $01a0                                     ; $5ceb: $01 $a0 $01
	ld b, $17                                        ; $5cee: $06 $17
	ld b, $c0                                        ; $5cf0: $06 $c0
	ld bc, $01a0                                     ; $5cf2: $01 $a0 $01
	ld b, $1f                                        ; $5cf5: $06 $1f
	ret nz                                           ; $5cf7: $c0

	ld bc, $02a0                                     ; $5cf8: $01 $a0 $02
	ld b, $24                                        ; $5cfb: $06 $24
	ret nz                                           ; $5cfd: $c0

	ld bc, $01a0                                     ; $5cfe: $01 $a0 $01
	ld b, $37                                        ; $5d01: $06 $37
	ret nz                                           ; $5d03: $c0

	ld bc, $02a0                                     ; $5d04: $01 $a0 $02
	ld b, $41                                        ; $5d07: $06 $41
	ret nz                                           ; $5d09: $c0

jr_083_5d0a:
	ld bc, $01a0                                     ; $5d0a: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $5d0d: $01 $e2 $c0
	ld bc, $02a0                                     ; $5d10: $01 $a0 $02
	ld [bc], a                                       ; $5d13: $02
	ld de, $d202                                     ; $5d14: $11 $02 $d2
	db $d3                                           ; $5d17: $d3
	ld d, h                                          ; $5d18: $54
	ret nz                                           ; $5d19: $c0

	ld bc, $02a0                                     ; $5d1a: $01 $a0 $02
	dec b                                            ; $5d1d: $05
	call nc, $01e0                                   ; $5d1e: $d4 $e0 $01
	ld [$01c0], sp                                   ; $5d21: $08 $c0 $01
	and b                                            ; $5d24: $a0
	ld [bc], a                                       ; $5d25: $02
	ld b, $47                                        ; $5d26: $06 $47
	ld h, b                                          ; $5d28: $60
	ld sp, hl                                        ; $5d29: $f9
	ret nz                                           ; $5d2a: $c0

	add e                                            ; $5d2b: $83
	db $d3                                           ; $5d2c: $d3
	ldh [$32], a                                     ; $5d2d: $e0 $32
	jr @-$3e                                         ; $5d2f: $18 $c0

	ld bc, $01a0                                     ; $5d31: $01 $a0 $01
	ld b, $17                                        ; $5d34: $06 $17
	ret nz                                           ; $5d36: $c0

	ld bc, $02a0                                     ; $5d37: $01 $a0 $02
	ld b, $4c                                        ; $5d3a: $06 $4c
	ret nz                                           ; $5d3c: $c0

	ld bc, $01a0                                     ; $5d3d: $01 $a0 $01
	ld b, $37                                        ; $5d40: $06 $37
	ret nz                                           ; $5d42: $c0

	ld bc, $02a0                                     ; $5d43: $01 $a0 $02
	ld b, $5a                                        ; $5d46: $06 $5a
	jr jr_083_5d0a                                   ; $5d48: $18 $c0

	ld bc, $01a0                                     ; $5d4a: $01 $a0 $01
	ld b, $1f                                        ; $5d4d: $06 $1f
	ret nz                                           ; $5d4f: $c0

	ld bc, $02a0                                     ; $5d50: $01 $a0 $02
	ld b, $62                                        ; $5d53: $06 $62
	ret nz                                           ; $5d55: $c0

	ld bc, $01a0                                     ; $5d56: $01 $a0 $01
	ld b, $64                                        ; $5d59: $06 $64
	ret nz                                           ; $5d5b: $c0

	ld bc, $02a0                                     ; $5d5c: $01 $a0 $02
	ld b, $68                                        ; $5d5f: $06 $68
	ret nz                                           ; $5d61: $c0

	ld bc, $01a0                                     ; $5d62: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $5d65: $01 $e2 $c0
	ld bc, $02a0                                     ; $5d68: $01 $a0 $02
	ld bc, $0138                                     ; $5d6b: $01 $38 $01
	call nc, $c030                                   ; $5d6e: $d4 $30 $c0
	ld bc, $02a0                                     ; $5d71: $01 $a0 $02
	dec b                                            ; $5d74: $05
	call nc, $00e0                                   ; $5d75: $d4 $e0 $00
	or c                                             ; $5d78: $b1
	ret nz                                           ; $5d79: $c0

	ld bc, $02a0                                     ; $5d7a: $01 $a0 $02
	ld b, $6c                                        ; $5d7d: $06 $6c
	ld h, b                                          ; $5d7f: $60
	ld sp, hl                                        ; $5d80: $f9
	ret nz                                           ; $5d81: $c0

	add e                                            ; $5d82: $83
	db $d3                                           ; $5d83: $d3
	ldh [$32], a                                     ; $5d84: $e0 $32
	ld b, $c0                                        ; $5d86: $06 $c0
	ld bc, $01a0                                     ; $5d88: $01 $a0 $01
	ld b, $17                                        ; $5d8b: $06 $17
	ld b, $c0                                        ; $5d8d: $06 $c0
	ld bc, $01a0                                     ; $5d8f: $01 $a0 $01
	ld b, $1f                                        ; $5d92: $06 $1f
	ret nz                                           ; $5d94: $c0

	ld bc, $02a0                                     ; $5d95: $01 $a0 $02
	ld b, $72                                        ; $5d98: $06 $72
	ret nz                                           ; $5d9a: $c0

	ld bc, $01a0                                     ; $5d9b: $01 $a0 $01
	ld [bc], a                                       ; $5d9e: $02
	ccf                                              ; $5d9f: $3f
	push hl                                          ; $5da0: $e5
	inc sp                                           ; $5da1: $33
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	add hl, bc                                       ; $5da4: $09
	add d                                            ; $5da5: $82
	add d                                            ; $5da6: $82
	ret nz                                           ; $5da7: $c0

	dec de                                           ; $5da8: $1b
	ret nc                                           ; $5da9: $d0

	ld [bc], a                                       ; $5daa: $02
	ret nc                                           ; $5dab: $d0

	pop de                                           ; $5dac: $d1
	daa                                              ; $5dad: $27
	ret nz                                           ; $5dae: $c0

	ld bc, $02a0                                     ; $5daf: $01 $a0 $02
	dec b                                            ; $5db2: $05
	sbc l                                            ; $5db3: $9d
	ldh [rP1], a                                     ; $5db4: $e0 $00
	ld [hl], e                                       ; $5db6: $73
	ret nz                                           ; $5db7: $c0

	ld bc, $02a0                                     ; $5db8: $01 $a0 $02
	ld b, $75                                        ; $5dbb: $06 $75
	ret nz                                           ; $5dbd: $c0

	ld bc, $01a0                                     ; $5dbe: $01 $a0 $01
	ld b, $82                                        ; $5dc1: $06 $82
	ret nz                                           ; $5dc3: $c0

	ld bc, $02a0                                     ; $5dc4: $01 $a0 $02
	ld b, $8c                                        ; $5dc7: $06 $8c
	ret nz                                           ; $5dc9: $c0

	ld bc, $01a0                                     ; $5dca: $01 $a0 $01
	ld b, $97                                        ; $5dcd: $06 $97
	ret nz                                           ; $5dcf: $c0

	ld bc, $02a0                                     ; $5dd0: $01 $a0 $02
	ld [bc], a                                       ; $5dd3: $02
	ld de, $d202                                     ; $5dd4: $11 $02 $d2
	db $d3                                           ; $5dd7: $d3
	daa                                              ; $5dd8: $27
	ret nz                                           ; $5dd9: $c0

	ld bc, $02a0                                     ; $5dda: $01 $a0 $02
	dec b                                            ; $5ddd: $05
	call nc, $00e0                                   ; $5dde: $d4 $e0 $00
	ld c, b                                          ; $5de1: $48
	ret nz                                           ; $5de2: $c0

	ld bc, $02a0                                     ; $5de3: $01 $a0 $02
	ld b, $9e                                        ; $5de6: $06 $9e
	ret nz                                           ; $5de8: $c0

	ld bc, $01a0                                     ; $5de9: $01 $a0 $01
	ld b, $a6                                        ; $5dec: $06 $a6
	ret nz                                           ; $5dee: $c0

	ld bc, $02a0                                     ; $5def: $01 $a0 $02
	ld b, $af                                        ; $5df2: $06 $af
	ret nz                                           ; $5df4: $c0

	ld bc, $01a0                                     ; $5df5: $01 $a0 $01
	ld b, $97                                        ; $5df8: $06 $97
	ret nz                                           ; $5dfa: $c0

	ld bc, $02a0                                     ; $5dfb: $01 $a0 $02
	ld bc, $0138                                     ; $5dfe: $01 $38 $01
	call nc, $c021                                   ; $5e01: $d4 $21 $c0
	ld bc, $02a0                                     ; $5e04: $01 $a0 $02
	dec b                                            ; $5e07: $05
	call nc, $00e0                                   ; $5e08: $d4 $e0 $00
	ld e, $c0                                        ; $5e0b: $1e $c0
	ld bc, $02a0                                     ; $5e0d: $01 $a0 $02
	ld b, $ba                                        ; $5e10: $06 $ba
	ret nz                                           ; $5e12: $c0

	ld bc, $01a0                                     ; $5e13: $01 $a0 $01
	ld b, $c7                                        ; $5e16: $06 $c7
	ret nz                                           ; $5e18: $c0

	ld bc, $02a0                                     ; $5e19: $01 $a0 $02
	ld b, $d2                                        ; $5e1c: $06 $d2
	ret nz                                           ; $5e1e: $c0

	ld bc, $01a0                                     ; $5e1f: $01 $a0 $01
	ld [bc], a                                       ; $5e22: $02
	ccf                                              ; $5e23: $3f
	push hl                                          ; $5e24: $e5
	inc sp                                           ; $5e25: $33
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	ld [$32e1], sp                                   ; $5e28: $08 $e1 $32
	ld bc, $e19c                                     ; $5e2b: $01 $9c $e1
	ld [bc], a                                       ; $5e2e: $02
	nop                                              ; $5e2f: $00
	ret z                                            ; $5e30: $c8

	rlca                                             ; $5e31: $07
	rlca                                             ; $5e32: $07
	add hl, bc                                       ; $5e33: $09
	dec d                                            ; $5e34: $15
	add d                                            ; $5e35: $82
	ret nz                                           ; $5e36: $c0

	add b                                            ; $5e37: $80
	ld bc, $03d3                                     ; $5e38: $01 $d3 $03
	db $e4                                           ; $5e3b: $e4
	ld [bc], a                                       ; $5e3c: $02
	sbc d                                            ; $5e3d: $9a
	ld bc, $03d2                                     ; $5e3e: $01 $d2 $03
	db $e4                                           ; $5e41: $e4
	ld bc, $0132                                     ; $5e42: $01 $32 $01
	pop de                                           ; $5e45: $d1
	inc bc                                           ; $5e46: $03
	db $e4                                           ; $5e47: $e4
	nop                                              ; $5e48: $00
	ld [bc], a                                       ; $5e49: $02
	add hl, bc                                       ; $5e4a: $09
	or c                                             ; $5e4b: $b1
	pop bc                                           ; $5e4c: $c1
	ld e, c                                          ; $5e4d: $59
	db $e3                                           ; $5e4e: $e3
	nop                                              ; $5e4f: $00
	ld d, [hl]                                       ; $5e50: $56
	add e                                            ; $5e51: $83
	ret nz                                           ; $5e52: $c0

	dec de                                           ; $5e53: $1b
	pop de                                           ; $5e54: $d1
	ld [bc], a                                       ; $5e55: $02
	ret nc                                           ; $5e56: $d0

	pop de                                           ; $5e57: $d1
	add hl, bc                                       ; $5e58: $09
	ret nz                                           ; $5e59: $c0

	ld bc, $03a0                                     ; $5e5a: $01 $a0 $03
	nop                                              ; $5e5d: $00
	ld bc, $00e0                                     ; $5e5e: $01 $e0 $00
	sbc l                                            ; $5e61: $9d
	ld [bc], a                                       ; $5e62: $02
	jp nc, $31d3                                     ; $5e63: $d2 $d3 $31

	ret nz                                           ; $5e66: $c0

	ld bc, $03a0                                     ; $5e67: $01 $a0 $03
	nop                                              ; $5e6a: $00
	rlca                                             ; $5e6b: $07
	pop hl                                           ; $5e6c: $e1
	ld [bc], a                                       ; $5e6d: $02
	ld bc, $c008                                     ; $5e6e: $01 $08 $c0
	ld bc, $01a0                                     ; $5e71: $01 $a0 $01
	nop                                              ; $5e74: $00
	ld de, $01c0                                     ; $5e75: $11 $c0 $01
	and b                                            ; $5e78: $a0
	inc bc                                           ; $5e79: $03
	nop                                              ; $5e7a: $00
	rla                                              ; $5e7b: $17
	ret nz                                           ; $5e7c: $c0

	ld bc, $01a0                                     ; $5e7d: $01 $a0 $01
	nop                                              ; $5e80: $00
	ld h, $c0                                        ; $5e81: $26 $c0
	ld bc, $03a0                                     ; $5e83: $01 $a0 $03
	nop                                              ; $5e86: $00
	cpl                                              ; $5e87: $2f
	ret nz                                           ; $5e88: $c0

	ld bc, $01a0                                     ; $5e89: $01 $a0 $01
	nop                                              ; $5e8c: $00
	dec sp                                           ; $5e8d: $3b
	ret nz                                           ; $5e8e: $c0

	ld bc, $03a0                                     ; $5e8f: $01 $a0 $03
	nop                                              ; $5e92: $00
	ld b, b                                          ; $5e93: $40
	ldh [rP1], a                                     ; $5e94: $e0 $00
	and b                                            ; $5e96: $a0
	ld bc, $31d4                                     ; $5e97: $01 $d4 $31
	ret nz                                           ; $5e9a: $c0

	ld bc, $03a0                                     ; $5e9b: $01 $a0 $03
	nop                                              ; $5e9e: $00
	ld b, h                                          ; $5e9f: $44
	pop hl                                           ; $5ea0: $e1
	ld [bc], a                                       ; $5ea1: $02
	ld bc, $c008                                     ; $5ea2: $01 $08 $c0
	ld bc, $01a0                                     ; $5ea5: $01 $a0 $01
	nop                                              ; $5ea8: $00
	ld de, $01c0                                     ; $5ea9: $11 $c0 $01
	and b                                            ; $5eac: $a0
	inc bc                                           ; $5ead: $03
	nop                                              ; $5eae: $00
	rla                                              ; $5eaf: $17
	ret nz                                           ; $5eb0: $c0

	ld bc, $01a0                                     ; $5eb1: $01 $a0 $01
	nop                                              ; $5eb4: $00
	ld h, $c0                                        ; $5eb5: $26 $c0
	ld bc, $03a0                                     ; $5eb7: $01 $a0 $03
	nop                                              ; $5eba: $00
	ld d, b                                          ; $5ebb: $50
	ret nz                                           ; $5ebc: $c0

	ld bc, $01a0                                     ; $5ebd: $01 $a0 $01
	nop                                              ; $5ec0: $00
	ld d, a                                          ; $5ec1: $57
	ret nz                                           ; $5ec2: $c0

	ld bc, $03a0                                     ; $5ec3: $01 $a0 $03
	nop                                              ; $5ec6: $00
	ld e, d                                          ; $5ec7: $5a
	ldh [rP1], a                                     ; $5ec8: $e0 $00
	ld l, h                                          ; $5eca: $6c
	ld bc, $2bd5                                     ; $5ecb: $01 $d5 $2b
	ret nz                                           ; $5ece: $c0

	ld bc, $03a0                                     ; $5ecf: $01 $a0 $03
	nop                                              ; $5ed2: $00
	ld e, h                                          ; $5ed3: $5c
	pop hl                                           ; $5ed4: $e1
	ld [bc], a                                       ; $5ed5: $02
	ld bc, $c008                                     ; $5ed6: $01 $08 $c0
	ld bc, $01a0                                     ; $5ed9: $01 $a0 $01
	nop                                              ; $5edc: $00
	ld de, $01c0                                     ; $5edd: $11 $c0 $01
	and b                                            ; $5ee0: $a0
	inc bc                                           ; $5ee1: $03
	nop                                              ; $5ee2: $00
	ld h, d                                          ; $5ee3: $62
	ret nz                                           ; $5ee4: $c0

	ld bc, $01a0                                     ; $5ee5: $01 $a0 $01
	nop                                              ; $5ee8: $00
	ld l, [hl]                                       ; $5ee9: $6e
	ret nz                                           ; $5eea: $c0

	ld bc, $03a0                                     ; $5eeb: $01 $a0 $03
	nop                                              ; $5eee: $00
	halt                                             ; $5eef: $76
	ret nz                                           ; $5ef0: $c0

	ld bc, $01a0                                     ; $5ef1: $01 $a0 $01
	nop                                              ; $5ef4: $00
	add b                                            ; $5ef5: $80
	ldh [rSB], a                                     ; $5ef6: $e0 $01
	sbc [hl]                                         ; $5ef8: $9e
	push hl                                          ; $5ef9: $e5
	inc sp                                           ; $5efa: $33
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	scf                                              ; $5efd: $37
	pop hl                                           ; $5efe: $e1
	ld [bc], a                                       ; $5eff: $02
	ld bc, $c008                                     ; $5f00: $01 $08 $c0
	ld bc, $01a0                                     ; $5f03: $01 $a0 $01
	nop                                              ; $5f06: $00
	ld de, $01c0                                     ; $5f07: $11 $c0 $01
	and b                                            ; $5f0a: $a0
	inc bc                                           ; $5f0b: $03
	nop                                              ; $5f0c: $00
	add d                                            ; $5f0d: $82
	ret nz                                           ; $5f0e: $c0

	ld bc, $01a0                                     ; $5f0f: $01 $a0 $01
	nop                                              ; $5f12: $00
	sub c                                            ; $5f13: $91
	ret nz                                           ; $5f14: $c0

	ld bc, $03a0                                     ; $5f15: $01 $a0 $03
	nop                                              ; $5f18: $00
	and c                                            ; $5f19: $a1
	ret nz                                           ; $5f1a: $c0

	ld bc, $01a0                                     ; $5f1b: $01 $a0 $01
	nop                                              ; $5f1e: $00
	and h                                            ; $5f1f: $a4
	ret nz                                           ; $5f20: $c0

	ld bc, $03a0                                     ; $5f21: $01 $a0 $03
	nop                                              ; $5f24: $00
	or d                                             ; $5f25: $b2
	ret nz                                           ; $5f26: $c0

	ld bc, $01a0                                     ; $5f27: $01 $a0 $01
	nop                                              ; $5f2a: $00
	ld d, a                                          ; $5f2b: $57
	ret nz                                           ; $5f2c: $c0

	ld bc, $03a0                                     ; $5f2d: $01 $a0 $03
	nop                                              ; $5f30: $00
	cp [hl]                                          ; $5f31: $be
	ldh [rP1], a                                     ; $5f32: $e0 $00
	ld [bc], a                                       ; $5f34: $02
	ld a, $e1                                        ; $5f35: $3e $e1
	ld [bc], a                                       ; $5f37: $02
	rlca                                             ; $5f38: $07
	sbc e                                            ; $5f39: $9b
	ld h, b                                          ; $5f3a: $60
	ei                                               ; $5f3b: $fb
	pop bc                                           ; $5f3c: $c1
	ld c, l                                          ; $5f3d: $4d
	ldh [$64], a                                     ; $5f3e: $e0 $64
	jr @-$3e                                         ; $5f40: $18 $c0

	ld bc, $03a0                                     ; $5f42: $01 $a0 $03
	nop                                              ; $5f45: $00
	cp a                                             ; $5f46: $bf
	ret nz                                           ; $5f47: $c0

	ld bc, $01a0                                     ; $5f48: $01 $a0 $01
	nop                                              ; $5f4b: $00
	add $c0                                          ; $5f4c: $c6 $c0
	ld bc, $03a0                                     ; $5f4e: $01 $a0 $03
	nop                                              ; $5f51: $00
	sub $c0                                          ; $5f52: $d6 $c0
	ld bc, $01a0                                     ; $5f54: $01 $a0 $01
	nop                                              ; $5f57: $00
	ldh [rAUD2LOW], a                                ; $5f58: $e0 $18
	ret nz                                           ; $5f5a: $c0

	ld bc, $03a0                                     ; $5f5b: $01 $a0 $03
	nop                                              ; $5f5e: $00
	ldh a, [$c0]                                     ; $5f5f: $f0 $c0
	ld bc, $01a0                                     ; $5f61: $01 $a0 $01
	nop                                              ; $5f64: $00
	ld sp, hl                                        ; $5f65: $f9
	ret nz                                           ; $5f66: $c0

	ld bc, $03a0                                     ; $5f67: $01 $a0 $03
	ld bc, $c005                                     ; $5f6a: $01 $05 $c0
	ld bc, $01a0                                     ; $5f6d: $01 $a0 $01
	ld bc, $c115                                     ; $5f70: $01 $15 $c1
	ld e, e                                          ; $5f73: $5b
	add hl, bc                                       ; $5f74: $09
	ret nz                                           ; $5f75: $c0

	rst SubAFromDE                                          ; $5f76: $df
	pop bc                                           ; $5f77: $c1
	ld e, c                                          ; $5f78: $59
	db $e3                                           ; $5f79: $e3
	nop                                              ; $5f7a: $00
	ld d, [hl]                                       ; $5f7b: $56
	add e                                            ; $5f7c: $83
	ret nz                                           ; $5f7d: $c0

	dec de                                           ; $5f7e: $1b
	pop de                                           ; $5f7f: $d1
	ld [bc], a                                       ; $5f80: $02
	ret nc                                           ; $5f81: $d0

	pop de                                           ; $5f82: $d1
	ld sp, $01c0                                     ; $5f83: $31 $c0 $01
	and b                                            ; $5f86: $a0
	inc bc                                           ; $5f87: $03
	ld bc, $e11e                                     ; $5f88: $01 $1e $e1
	ld [bc], a                                       ; $5f8b: $02
	ld bc, $c008                                     ; $5f8c: $01 $08 $c0
	ld bc, $01a0                                     ; $5f8f: $01 $a0 $01
	ld bc, $c022                                     ; $5f92: $01 $22 $c0
	ld bc, $03a0                                     ; $5f95: $01 $a0 $03
	ld bc, $c02a                                     ; $5f98: $01 $2a $c0
	ld bc, $01a0                                     ; $5f9b: $01 $a0 $01
	ld bc, $c033                                     ; $5f9e: $01 $33 $c0
	ld bc, $03a0                                     ; $5fa1: $01 $a0 $03
	ld bc, $c043                                     ; $5fa4: $01 $43 $c0
	ld bc, $01a0                                     ; $5fa7: $01 $a0 $01
	ld bc, $c04c                                     ; $5faa: $01 $4c $c0
	ld bc, $03a0                                     ; $5fad: $01 $a0 $03
	ld bc, $e050                                     ; $5fb0: $01 $50 $e0
	nop                                              ; $5fb3: $00
	and e                                            ; $5fb4: $a3
	ld [bc], a                                       ; $5fb5: $02
	jp nc, $31d3                                     ; $5fb6: $d2 $d3 $31

	ret nz                                           ; $5fb9: $c0

	ld bc, $03a0                                     ; $5fba: $01 $a0 $03
	ld bc, $e153                                     ; $5fbd: $01 $53 $e1
	ld [bc], a                                       ; $5fc0: $02
	ld bc, $c008                                     ; $5fc1: $01 $08 $c0
	ld bc, $01a0                                     ; $5fc4: $01 $a0 $01
	ld bc, $c022                                     ; $5fc7: $01 $22 $c0
	ld bc, $03a0                                     ; $5fca: $01 $a0 $03
	ld bc, $c057                                     ; $5fcd: $01 $57 $c0
	ld bc, $01a0                                     ; $5fd0: $01 $a0 $01
	ld bc, $c060                                     ; $5fd3: $01 $60 $c0
	ld bc, $03a0                                     ; $5fd6: $01 $a0 $03
	ld bc, $c06b                                     ; $5fd9: $01 $6b $c0
	ld bc, $01a0                                     ; $5fdc: $01 $a0 $01
	nop                                              ; $5fdf: $00
	ld d, a                                          ; $5fe0: $57
	ret nz                                           ; $5fe1: $c0

	ld bc, $03a0                                     ; $5fe2: $01 $a0 $03
	nop                                              ; $5fe5: $00
	cp [hl]                                          ; $5fe6: $be
	ldh [rP1], a                                     ; $5fe7: $e0 $00
	ld l, [hl]                                       ; $5fe9: $6e
	ld bc, $31d4                                     ; $5fea: $01 $d4 $31
	ret nz                                           ; $5fed: $c0

	ld bc, $03a0                                     ; $5fee: $01 $a0 $03
	ld bc, $e172                                     ; $5ff1: $01 $72 $e1
	ld [bc], a                                       ; $5ff4: $02
	ld bc, $c008                                     ; $5ff5: $01 $08 $c0
	ld bc, $01a0                                     ; $5ff8: $01 $a0 $01
	ld bc, $c022                                     ; $5ffb: $01 $22 $c0
	ld bc, $03a0                                     ; $5ffe: $01 $a0 $03
	ld bc, $c075                                     ; $6001: $01 $75 $c0
	ld bc, $01a0                                     ; $6004: $01 $a0 $01
	ld bc, $c07a                                     ; $6007: $01 $7a $c0
	ld bc, $03a0                                     ; $600a: $01 $a0 $03
	ld bc, $c06b                                     ; $600d: $01 $6b $c0
	ld bc, $01a0                                     ; $6010: $01 $a0 $01
	ld bc, $c04c                                     ; $6013: $01 $4c $c0
	ld bc, $03a0                                     ; $6016: $01 $a0 $03
	nop                                              ; $6019: $00
	cp [hl]                                          ; $601a: $be
	ldh [rP1], a                                     ; $601b: $e0 $00
	ld a, [hl-]                                      ; $601d: $3a
	ld bc, $31d5                                     ; $601e: $01 $d5 $31
	ret nz                                           ; $6021: $c0

	ld bc, $03a0                                     ; $6022: $01 $a0 $03
	ld bc, $e183                                     ; $6025: $01 $83 $e1
	ld [bc], a                                       ; $6028: $02
	ld bc, $c008                                     ; $6029: $01 $08 $c0
	ld bc, $01a0                                     ; $602c: $01 $a0 $01
	ld bc, $c084                                     ; $602f: $01 $84 $c0
	ld bc, $03a0                                     ; $6032: $01 $a0 $03
	ld bc, $c088                                     ; $6035: $01 $88 $c0
	ld bc, $01a0                                     ; $6038: $01 $a0 $01
	ld bc, $c092                                     ; $603b: $01 $92 $c0
	ld bc, $03a0                                     ; $603e: $01 $a0 $03
	ld bc, $c09a                                     ; $6041: $01 $9a $c0
	ld bc, $01a0                                     ; $6044: $01 $a0 $01
	ld bc, $c0a1                                     ; $6047: $01 $a1 $c0
	ld bc, $03a0                                     ; $604a: $01 $a0 $03
	ld bc, $e0a8                                     ; $604d: $01 $a8 $e0
	nop                                              ; $6050: $00
	ld b, l                                          ; $6051: $45
	push hl                                          ; $6052: $e5
	inc sp                                           ; $6053: $33
	nop                                              ; $6054: $00
	nop                                              ; $6055: $00
	ld a, $e1                                        ; $6056: $3e $e1
	ld [bc], a                                       ; $6058: $02
	rlca                                             ; $6059: $07
	sbc e                                            ; $605a: $9b
	ld h, b                                          ; $605b: $60
	ei                                               ; $605c: $fb
	pop bc                                           ; $605d: $c1
	ld c, l                                          ; $605e: $4d
	ldh [$64], a                                     ; $605f: $e0 $64
	jr @-$3e                                         ; $6061: $18 $c0

	ld bc, $03a0                                     ; $6063: $01 $a0 $03
	nop                                              ; $6066: $00
	cp a                                             ; $6067: $bf
	ret nz                                           ; $6068: $c0

	ld bc, $01a0                                     ; $6069: $01 $a0 $01
	nop                                              ; $606c: $00
	add $c0                                          ; $606d: $c6 $c0
	ld bc, $03a0                                     ; $606f: $01 $a0 $03
	nop                                              ; $6072: $00
	sub $c0                                          ; $6073: $d6 $c0
	ld bc, $01a0                                     ; $6075: $01 $a0 $01
	nop                                              ; $6078: $00
	ldh [rAUD2LOW], a                                ; $6079: $e0 $18
	ret nz                                           ; $607b: $c0

	ld bc, $03a0                                     ; $607c: $01 $a0 $03
	ld bc, $c0b5                                     ; $607f: $01 $b5 $c0
	ld bc, $01a0                                     ; $6082: $01 $a0 $01
	nop                                              ; $6085: $00
	ld sp, hl                                        ; $6086: $f9
	ret nz                                           ; $6087: $c0

	ld bc, $03a0                                     ; $6088: $01 $a0 $03
	ld bc, $c005                                     ; $608b: $01 $05 $c0
	ld bc, $01a0                                     ; $608e: $01 $a0 $01
	ld bc, $c115                                     ; $6091: $01 $15 $c1
	ld e, e                                          ; $6094: $5b
	ld b, b                                          ; $6095: $40
	pop hl                                           ; $6096: $e1
	ld [bc], a                                       ; $6097: $02
	rlca                                             ; $6098: $07
	sbc e                                            ; $6099: $9b
	ld h, b                                          ; $609a: $60
	ei                                               ; $609b: $fb
	pop bc                                           ; $609c: $c1
	ld c, l                                          ; $609d: $4d
	ldh [$64], a                                     ; $609e: $e0 $64
	ld a, [de]                                       ; $60a0: $1a
	ret nz                                           ; $60a1: $c0

	ld bc, $03a0                                     ; $60a2: $01 $a0 $03
	ld bc, $c0be                                     ; $60a5: $01 $be $c0
	ld bc, $01a0                                     ; $60a8: $01 $a0 $01
	ld bc, $c0c2                                     ; $60ab: $01 $c2 $c0
	ld bc, $03a0                                     ; $60ae: $01 $a0 $03
	ld bc, $c1d1                                     ; $60b1: $01 $d1 $c1
	ld e, e                                          ; $60b4: $5b
	ret nz                                           ; $60b5: $c0

	ld bc, $01a0                                     ; $60b6: $01 $a0 $01
	ld bc, $1ad4                                     ; $60b9: $01 $d4 $1a
	ret nz                                           ; $60bc: $c0

	ld bc, $03a0                                     ; $60bd: $01 $a0 $03
	ld bc, $c0d6                                     ; $60c0: $01 $d6 $c0
	ld bc, $01a0                                     ; $60c3: $01 $a0 $01
	nop                                              ; $60c6: $00
	ld sp, hl                                        ; $60c7: $f9
	ret nz                                           ; $60c8: $c0

	ld bc, $03a0                                     ; $60c9: $01 $a0 $03
	ld bc, $c1de                                     ; $60cc: $01 $de $c1
	ld e, e                                          ; $60cf: $5b
	ret nz                                           ; $60d0: $c0

	ld bc, $01a0                                     ; $60d1: $01 $a0 $01
	ld bc, $09eb                                     ; $60d4: $01 $eb $09

jr_083_60d7:
	pop bc                                           ; $60d7: $c1
	ld b, c                                          ; $60d8: $41
	pop bc                                           ; $60d9: $c1
	ld e, c                                          ; $60da: $59
	db $e3                                           ; $60db: $e3
	nop                                              ; $60dc: $00
	ld d, a                                          ; $60dd: $57
	ret nz                                           ; $60de: $c0

	xor b                                            ; $60df: $a8
	pop de                                           ; $60e0: $d1
	ret nz                                           ; $60e1: $c0

	xor e                                            ; $60e2: $ab
	db $d3                                           ; $60e3: $d3
	ret nz                                           ; $60e4: $c0

	and l                                            ; $60e5: $a5
	ret nz                                           ; $60e6: $c0

	ld bc, $03a0                                     ; $60e7: $01 $a0 $03
	ld bc, $c0f6                                     ; $60ea: $01 $f6 $c0
	ld bc, $01a0                                     ; $60ed: $01 $a0 $01
	ld bc, $83f9                                     ; $60f0: $01 $f9 $83
	ret nz                                           ; $60f3: $c0

	dec de                                           ; $60f4: $1b
	pop de                                           ; $60f5: $d1
	ld [bc], a                                       ; $60f6: $02
	ret nc                                           ; $60f7: $d0

	pop de                                           ; $60f8: $d1
	ld b, h                                          ; $60f9: $44
	ret nz                                           ; $60fa: $c0

	ld bc, $03a0                                     ; $60fb: $01 $a0 $03
	ld [bc], a                                       ; $60fe: $02
	ld [bc], a                                       ; $60ff: $02
	ret nz                                           ; $6100: $c0

	ld bc, $01a0                                     ; $6101: $01 $a0 $01
	ld [bc], a                                       ; $6104: $02
	rrca                                             ; $6105: $0f
	pop hl                                           ; $6106: $e1
	ld [bc], a                                       ; $6107: $02
	inc bc                                           ; $6108: $03
	daa                                              ; $6109: $27
	ret nz                                           ; $610a: $c0

	ld bc, $03a0                                     ; $610b: $01 $a0 $03
	ld [bc], a                                       ; $610e: $02
	rra                                              ; $610f: $1f
	ret nz                                           ; $6110: $c0

	ld bc, $01a0                                     ; $6111: $01 $a0 $01
	ld [bc], a                                       ; $6114: $02
	jr nc, jr_083_60d7                               ; $6115: $30 $c0

	ld bc, $03a0                                     ; $6117: $01 $a0 $03
	ld [bc], a                                       ; $611a: $02
	ld b, b                                          ; $611b: $40
	pop hl                                           ; $611c: $e1
	ld [hl-], a                                      ; $611d: $32
	ld bc, $c045                                     ; $611e: $01 $45 $c0
	ld bc, $03a0                                     ; $6121: $01 $a0 $03
	ld [bc], a                                       ; $6124: $02
	ld c, h                                          ; $6125: $4c
	ret nz                                           ; $6126: $c0

	ld bc, $01a0                                     ; $6127: $01 $a0 $01
	ld [bc], a                                       ; $612a: $02
	ld d, d                                          ; $612b: $52
	ret nz                                           ; $612c: $c0

	ld bc, $03a0                                     ; $612d: $01 $a0 $03
	ld [bc], a                                       ; $6130: $02
	ld e, c                                          ; $6131: $59
	ret nz                                           ; $6132: $c0

	ld bc, $01a0                                     ; $6133: $01 $a0 $01
	ld [bc], a                                       ; $6136: $02
	ld l, b                                          ; $6137: $68
	ret nz                                           ; $6138: $c0

	ld bc, $03a0                                     ; $6139: $01 $a0 $03
	ld [bc], a                                       ; $613c: $02
	halt                                             ; $613d: $76
	ld [bc], a                                       ; $613e: $02
	jp nc, $50d3                                     ; $613f: $d2 $d3 $50

	ret nz                                           ; $6142: $c0

	ld bc, $03a0                                     ; $6143: $01 $a0 $03
	ld [bc], a                                       ; $6146: $02
	ld [bc], a                                       ; $6147: $02
	ret nz                                           ; $6148: $c0

	ld bc, $01a0                                     ; $6149: $01 $a0 $01
	ld [bc], a                                       ; $614c: $02
	ld a, d                                          ; $614d: $7a
	pop hl                                           ; $614e: $e1
	ld [bc], a                                       ; $614f: $02
	inc bc                                           ; $6150: $03
	daa                                              ; $6151: $27
	ret nz                                           ; $6152: $c0

	ld bc, $03a0                                     ; $6153: $01 $a0 $03
	ld [bc], a                                       ; $6156: $02
	adc d                                            ; $6157: $8a
	ret nz                                           ; $6158: $c0

	ld bc, $01a0                                     ; $6159: $01 $a0 $01
	ld [bc], a                                       ; $615c: $02
	sub b                                            ; $615d: $90
	ret nz                                           ; $615e: $c0

	ld bc, $03a0                                     ; $615f: $01 $a0 $03
	ld [bc], a                                       ; $6162: $02
	sbc l                                            ; $6163: $9d
	ret nz                                           ; $6164: $c0

	ld bc, $01a0                                     ; $6165: $01 $a0 $01
	ld [bc], a                                       ; $6168: $02
	and e                                            ; $6169: $a3
	ret nz                                           ; $616a: $c0

	ld bc, $03a0                                     ; $616b: $01 $a0 $03
	ld [bc], a                                       ; $616e: $02
	and l                                            ; $616f: $a5
	pop hl                                           ; $6170: $e1
	ld [hl-], a                                      ; $6171: $32

jr_083_6172:
	ld bc, $c045                                     ; $6172: $01 $45 $c0
	ld bc, $03a0                                     ; $6175: $01 $a0 $03
	ld [bc], a                                       ; $6178: $02
	ld c, h                                          ; $6179: $4c
	ret nz                                           ; $617a: $c0

	ld bc, $01a0                                     ; $617b: $01 $a0 $01
	ld [bc], a                                       ; $617e: $02
	ld d, d                                          ; $617f: $52
	ret nz                                           ; $6180: $c0

	ld bc, $03a0                                     ; $6181: $01 $a0 $03
	ld [bc], a                                       ; $6184: $02
	cp b                                             ; $6185: $b8
	ret nz                                           ; $6186: $c0

	ld bc, $01a0                                     ; $6187: $01 $a0 $01
	ld [bc], a                                       ; $618a: $02
	jp $01c0                                         ; $618b: $c3 $c0 $01


	and b                                            ; $618e: $a0
	inc bc                                           ; $618f: $03
	ld [bc], a                                       ; $6190: $02
	call $d401                                       ; $6191: $cd $01 $d4
	ld b, h                                          ; $6194: $44
	ret nz                                           ; $6195: $c0

	ld bc, $03a0                                     ; $6196: $01 $a0 $03
	ld [bc], a                                       ; $6199: $02
	ld [bc], a                                       ; $619a: $02
	ret nz                                           ; $619b: $c0

	ld bc, $01a0                                     ; $619c: $01 $a0 $01
	ld [bc], a                                       ; $619f: $02
	rst SubAFromHL                                          ; $61a0: $d7
	pop hl                                           ; $61a1: $e1
	ld [bc], a                                       ; $61a2: $02
	inc bc                                           ; $61a3: $03
	daa                                              ; $61a4: $27
	ret nz                                           ; $61a5: $c0

	ld bc, $03a0                                     ; $61a6: $01 $a0 $03
	ld [bc], a                                       ; $61a9: $02
	ldh [c], a                                       ; $61aa: $e2
	ret nz                                           ; $61ab: $c0

	ld bc, $01a0                                     ; $61ac: $01 $a0 $01
	ld [bc], a                                       ; $61af: $02
	jr nc, jr_083_6172                               ; $61b0: $30 $c0

	ld bc, $03a0                                     ; $61b2: $01 $a0 $03
	ld [bc], a                                       ; $61b5: $02
	db $e4                                           ; $61b6: $e4
	pop hl                                           ; $61b7: $e1
	ld [hl-], a                                      ; $61b8: $32
	ld bc, $c045                                     ; $61b9: $01 $45 $c0
	ld bc, $03a0                                     ; $61bc: $01 $a0 $03
	ld [bc], a                                       ; $61bf: $02
	ld c, h                                          ; $61c0: $4c
	ret nz                                           ; $61c1: $c0

	ld bc, $01a0                                     ; $61c2: $01 $a0 $01
	ld [bc], a                                       ; $61c5: $02
	ld d, d                                          ; $61c6: $52
	ret nz                                           ; $61c7: $c0

	ld bc, $03a0                                     ; $61c8: $01 $a0 $03
	ld [bc], a                                       ; $61cb: $02
	xor $c0                                          ; $61cc: $ee $c0
	ld bc, $01a0                                     ; $61ce: $01 $a0 $01
	ld [bc], a                                       ; $61d1: $02
	rst FarCall                                          ; $61d2: $f7
	ret nz                                           ; $61d3: $c0

	ld bc, $03a0                                     ; $61d4: $01 $a0 $03
	ld [bc], a                                       ; $61d7: $02
	cp $01                                           ; $61d8: $fe $01
	push de                                          ; $61da: $d5
	jr c, @-$1d                                      ; $61db: $38 $e1

	ld [bc], a                                       ; $61dd: $02
	inc bc                                           ; $61de: $03
	daa                                              ; $61df: $27
	ret nz                                           ; $61e0: $c0

	ld bc, $03a0                                     ; $61e1: $01 $a0 $03
	inc bc                                           ; $61e4: $03
	inc bc                                           ; $61e5: $03
	ret nz                                           ; $61e6: $c0

	ld bc, $01a0                                     ; $61e7: $01 $a0 $01
	inc bc                                           ; $61ea: $03
	inc de                                           ; $61eb: $13
	ret nz                                           ; $61ec: $c0

	ld bc, $03a0                                     ; $61ed: $01 $a0 $03
	inc bc                                           ; $61f0: $03
	dec d                                            ; $61f1: $15
	ret nz                                           ; $61f2: $c0

	ld bc, $01a0                                     ; $61f3: $01 $a0 $01
	inc bc                                           ; $61f6: $03
	inc de                                           ; $61f7: $13
	pop hl                                           ; $61f8: $e1
	ld [hl-], a                                      ; $61f9: $32
	ld bc, $c045                                     ; $61fa: $01 $45 $c0
	ld bc, $03a0                                     ; $61fd: $01 $a0 $03
	inc bc                                           ; $6200: $03
	inc e                                            ; $6201: $1c
	ret nz                                           ; $6202: $c0

	ld bc, $01a0                                     ; $6203: $01 $a0 $01
	inc bc                                           ; $6206: $03
	ld hl, $01c0                                     ; $6207: $21 $c0 $01
	and b                                            ; $620a: $a0
	inc bc                                           ; $620b: $03
	inc bc                                           ; $620c: $03
	inc h                                            ; $620d: $24
	ret nz                                           ; $620e: $c0

	ld bc, $01a0                                     ; $620f: $01 $a0 $01
	nop                                              ; $6212: $00
	add b                                            ; $6213: $80
	pop bc                                           ; $6214: $c1
	ld e, e                                          ; $6215: $5b
	push hl                                          ; $6216: $e5
	inc sp                                           ; $6217: $33
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	add hl, bc                                       ; $621a: $09
	ld hl, $c082                                     ; $621b: $21 $82 $c0
	add b                                            ; $621e: $80
	ld bc, $07d3                                     ; $621f: $01 $d3 $07
	ret nz                                           ; $6222: $c0

	ld hl, $d1d2                                     ; $6223: $21 $d2 $d1
	db $e4                                           ; $6226: $e4
	inc bc                                           ; $6227: $03
	cp a                                             ; $6228: $bf
	ld bc, $0bd2                                     ; $6229: $01 $d2 $0b
	ret nz                                           ; $622c: $c0

	ld hl, $d1d2                                     ; $622d: $21 $d2 $d1
	ret nz                                           ; $6230: $c0

	ld [hl+], a                                      ; $6231: $22
	pop de                                           ; $6232: $d1
	pop de                                           ; $6233: $d1
	db $e4                                           ; $6234: $e4
	ld [bc], a                                       ; $6235: $02
	inc d                                            ; $6236: $14
	ld bc, $03d1                                     ; $6237: $01 $d1 $03
	db $e4                                           ; $623a: $e4
	nop                                              ; $623b: $00
	ld [bc], a                                       ; $623c: $02
	add hl, bc                                       ; $623d: $09
	pop bc                                           ; $623e: $c1
	add c                                            ; $623f: $81
	pop hl                                           ; $6240: $e1
	ld [bc], a                                       ; $6241: $02
	ld bc, $8308                                     ; $6242: $01 $08 $83
	ret nz                                           ; $6245: $c0

	dec de                                           ; $6246: $1b
	pop de                                           ; $6247: $d1
	ld [bc], a                                       ; $6248: $02
	ret nc                                           ; $6249: $d0

	pop de                                           ; $624a: $d1
	ld l, c                                          ; $624b: $69
	ret nz                                           ; $624c: $c0

	ld bc, $03a0                                     ; $624d: $01 $a0 $03
	inc bc                                           ; $6250: $03
	dec [hl]                                         ; $6251: $35
	ret nz                                           ; $6252: $c0

	ld bc, $01a0                                     ; $6253: $01 $a0 $01
	inc bc                                           ; $6256: $03
	scf                                              ; $6257: $37
	ret nz                                           ; $6258: $c0

	ld bc, $03a0                                     ; $6259: $01 $a0 $03
	inc bc                                           ; $625c: $03
	ld b, e                                          ; $625d: $43
	ret nz                                           ; $625e: $c0

	ld bc, $01a0                                     ; $625f: $01 $a0 $01
	inc bc                                           ; $6262: $03
	ld c, l                                          ; $6263: $4d
	ret nz                                           ; $6264: $c0

	ld bc, $03a0                                     ; $6265: $01 $a0 $03
	inc bc                                           ; $6268: $03
	ld e, [hl]                                       ; $6269: $5e
	ret nz                                           ; $626a: $c0

	ld bc, $01a0                                     ; $626b: $01 $a0 $01
	inc bc                                           ; $626e: $03
	ld [hl], b                                       ; $626f: $70
	ldh [rSB], a                                     ; $6270: $e0 $01
	ld d, b                                          ; $6272: $50
	ld h, b                                          ; $6273: $60
	rst $38                                          ; $6274: $ff
	ld b, $80                                        ; $6275: $06 $80
	nop                                              ; $6277: $00
	ld [hl], h                                       ; $6278: $74
	add b                                            ; $6279: $80
	nop                                              ; $627a: $00
	ld [hl], l                                       ; $627b: $75
	inc d                                            ; $627c: $14
	ret nz                                           ; $627d: $c0

	ld bc, $03a0                                     ; $627e: $01 $a0 $03
	inc bc                                           ; $6281: $03
	ld a, c                                          ; $6282: $79
	ret nz                                           ; $6283: $c0

	ld bc, $01a0                                     ; $6284: $01 $a0 $01
	inc bc                                           ; $6287: $03
	ld a, [hl]                                       ; $6288: $7e
	ret nz                                           ; $6289: $c0

	ld bc, $03a0                                     ; $628a: $01 $a0 $03
	inc bc                                           ; $628d: $03
	adc e                                            ; $628e: $8b
	pop bc                                           ; $628f: $c1
	ld e, e                                          ; $6290: $5b
	inc hl                                           ; $6291: $23
	or b                                             ; $6292: $b0
	ld a, a                                          ; $6293: $7f
	dec de                                           ; $6294: $1b
	ret nz                                           ; $6295: $c0

	ld bc, $03a0                                     ; $6296: $01 $a0 $03
	inc bc                                           ; $6299: $03
	ld a, c                                          ; $629a: $79
	ldh [$0e], a                                     ; $629b: $e0 $0e
	and l                                            ; $629d: $a5
	ret nz                                           ; $629e: $c0

	ld bc, $01a0                                     ; $629f: $01 $a0 $01
	inc bc                                           ; $62a2: $03
	sbc [hl]                                         ; $62a3: $9e
	ret nz                                           ; $62a4: $c0

	ld bc, $03a0                                     ; $62a5: $01 $a0 $03
	inc bc                                           ; $62a8: $03
	xor b                                            ; $62a9: $a8
	nop                                              ; $62aa: $00
	add b                                            ; $62ab: $80
	nop                                              ; $62ac: $00
	ld [hl], l                                       ; $62ad: $75
	pop bc                                           ; $62ae: $c1
	ld e, e                                          ; $62af: $5b
	rst $38                                          ; $62b0: $ff
	inc bc                                           ; $62b1: $03
	ldh [rTIMA], a                                   ; $62b2: $e0 $05
	or c                                             ; $62b4: $b1
	ld [bc], a                                       ; $62b5: $02
	jp nc, Jump_083_72d3                             ; $62b6: $d2 $d3 $72

	ret nz                                           ; $62b9: $c0

	ld bc, $03a0                                     ; $62ba: $01 $a0 $03
	inc bc                                           ; $62bd: $03
	or h                                             ; $62be: $b4
	ret nz                                           ; $62bf: $c0

	ld bc, $01a0                                     ; $62c0: $01 $a0 $01
	inc bc                                           ; $62c3: $03
	scf                                              ; $62c4: $37
	ret nz                                           ; $62c5: $c0

	ld bc, $03a0                                     ; $62c6: $01 $a0 $03
	inc bc                                           ; $62c9: $03
	cp b                                             ; $62ca: $b8
	ret nz                                           ; $62cb: $c0

	ld bc, $01a0                                     ; $62cc: $01 $a0 $01
	inc bc                                           ; $62cf: $03
	ld c, l                                          ; $62d0: $4d
	ret nz                                           ; $62d1: $c0

	ld bc, $03a0                                     ; $62d2: $01 $a0 $03
	inc bc                                           ; $62d5: $03
	pop bc                                           ; $62d6: $c1
	ret nz                                           ; $62d7: $c0

	ld bc, $01a0                                     ; $62d8: $01 $a0 $01
	inc bc                                           ; $62db: $03
	ld [hl], b                                       ; $62dc: $70
	ldh [rP1], a                                     ; $62dd: $e0 $00
	db $e3                                           ; $62df: $e3
	ld h, b                                          ; $62e0: $60
	rst $38                                          ; $62e1: $ff
	ld b, $80                                        ; $62e2: $06 $80
	nop                                              ; $62e4: $00
	ld [hl], h                                       ; $62e5: $74
	add b                                            ; $62e6: $80
	nop                                              ; $62e7: $00
	ld [hl], l                                       ; $62e8: $75
	inc d                                            ; $62e9: $14
	ret nz                                           ; $62ea: $c0

	ld bc, $03a0                                     ; $62eb: $01 $a0 $03
	inc bc                                           ; $62ee: $03
	ret nc                                           ; $62ef: $d0

	ret nz                                           ; $62f0: $c0

	ld bc, $01a0                                     ; $62f1: $01 $a0 $01
	inc bc                                           ; $62f4: $03
	ld a, [hl]                                       ; $62f5: $7e
	ret nz                                           ; $62f6: $c0

	ld bc, $03a0                                     ; $62f7: $01 $a0 $03
	inc bc                                           ; $62fa: $03
	push de                                          ; $62fb: $d5
	pop bc                                           ; $62fc: $c1
	ld e, e                                          ; $62fd: $5b
	inc l                                            ; $62fe: $2c
	or b                                             ; $62ff: $b0
	ld a, a                                          ; $6300: $7f
	inc h                                            ; $6301: $24
	ret nz                                           ; $6302: $c0

	ld bc, $03a0                                     ; $6303: $01 $a0 $03
	inc bc                                           ; $6306: $03
	ret nc                                           ; $6307: $d0

	ret nz                                           ; $6308: $c0

	ld bc, $01a0                                     ; $6309: $01 $a0 $01
	inc bc                                           ; $630c: $03
	and $c0                                          ; $630d: $e6 $c0
	ld bc, $03a0                                     ; $630f: $01 $a0 $03
	inc bc                                           ; $6312: $03
	ld [$01c0], a                                    ; $6313: $ea $c0 $01
	and b                                            ; $6316: $a0
	ld bc, $9e03                                     ; $6317: $01 $03 $9e
	ret nz                                           ; $631a: $c0

	ld bc, $03a0                                     ; $631b: $01 $a0 $03
	inc bc                                           ; $631e: $03
	db $f4                                           ; $631f: $f4
	nop                                              ; $6320: $00
	add b                                            ; $6321: $80
	nop                                              ; $6322: $00
	ld [hl], l                                       ; $6323: $75
	pop bc                                           ; $6324: $c1
	ld e, e                                          ; $6325: $5b
	rst $38                                          ; $6326: $ff
	inc bc                                           ; $6327: $03
	ldh [$0e], a                                     ; $6328: $e0 $0e
	add c                                            ; $632a: $81
	ld bc, $72d4                                     ; $632b: $01 $d4 $72
	ret nz                                           ; $632e: $c0

	ld bc, $03a0                                     ; $632f: $01 $a0 $03
	inc bc                                           ; $6332: $03
	cp $c0                                           ; $6333: $fe $c0
	ld bc, $01a0                                     ; $6335: $01 $a0 $01
	inc bc                                           ; $6338: $03
	scf                                              ; $6339: $37
	ret nz                                           ; $633a: $c0

	ld bc, $03a0                                     ; $633b: $01 $a0 $03
	inc b                                            ; $633e: $04
	nop                                              ; $633f: $00
	ret nz                                           ; $6340: $c0

	ld bc, $01a0                                     ; $6341: $01 $a0 $01
	inc bc                                           ; $6344: $03
	ld c, l                                          ; $6345: $4d
	ret nz                                           ; $6346: $c0

	ld bc, $03a0                                     ; $6347: $01 $a0 $03
	inc b                                            ; $634a: $04
	rlca                                             ; $634b: $07
	ret nz                                           ; $634c: $c0

	ld bc, $01a0                                     ; $634d: $01 $a0 $01
	inc bc                                           ; $6350: $03
	ld [hl], b                                       ; $6351: $70
	ldh [rP1], a                                     ; $6352: $e0 $00
	ld l, [hl]                                       ; $6354: $6e
	ld h, b                                          ; $6355: $60
	rst $38                                          ; $6356: $ff
	ld b, $80                                        ; $6357: $06 $80
	nop                                              ; $6359: $00
	ld [hl], h                                       ; $635a: $74
	add b                                            ; $635b: $80
	nop                                              ; $635c: $00
	ld [hl], l                                       ; $635d: $75
	inc d                                            ; $635e: $14
	ret nz                                           ; $635f: $c0

	ld bc, $03a0                                     ; $6360: $01 $a0 $03
	inc bc                                           ; $6363: $03
	ret nc                                           ; $6364: $d0

	ret nz                                           ; $6365: $c0

	ld bc, $01a0                                     ; $6366: $01 $a0 $01
	inc bc                                           ; $6369: $03
	ld a, [hl]                                       ; $636a: $7e
	ret nz                                           ; $636b: $c0

	ld bc, $03a0                                     ; $636c: $01 $a0 $03
	inc b                                            ; $636f: $04
	ld [de], a                                       ; $6370: $12
	pop bc                                           ; $6371: $c1
	ld e, e                                          ; $6372: $5b
	inc l                                            ; $6373: $2c
	or b                                             ; $6374: $b0
	ld a, a                                          ; $6375: $7f
	inc h                                            ; $6376: $24
	ret nz                                           ; $6377: $c0

	ld bc, $03a0                                     ; $6378: $01 $a0 $03
	inc bc                                           ; $637b: $03
	ret nc                                           ; $637c: $d0

	ret nz                                           ; $637d: $c0

	ld bc, $01a0                                     ; $637e: $01 $a0 $01
	inc bc                                           ; $6381: $03
	and $c0                                          ; $6382: $e6 $c0
	ld bc, $03a0                                     ; $6384: $01 $a0 $03
	inc bc                                           ; $6387: $03
	ld [$01c0], a                                    ; $6388: $ea $c0 $01
	and b                                            ; $638b: $a0
	ld bc, $9e03                                     ; $638c: $01 $03 $9e
	ret nz                                           ; $638f: $c0

	ld bc, $03a0                                     ; $6390: $01 $a0 $03
	inc b                                            ; $6393: $04
	dec de                                           ; $6394: $1b
	nop                                              ; $6395: $00
	add b                                            ; $6396: $80
	nop                                              ; $6397: $00
	ld [hl], l                                       ; $6398: $75
	pop bc                                           ; $6399: $c1
	ld e, e                                          ; $639a: $5b
	rst $38                                          ; $639b: $ff
	inc bc                                           ; $639c: $03
	ldh [$0e], a                                     ; $639d: $e0 $0e
	inc c                                            ; $639f: $0c
	ld bc, $1ad5                                     ; $63a0: $01 $d5 $1a

jr_083_63a3:
	ret nz                                           ; $63a3: $c0

	ld bc, $03a0                                     ; $63a4: $01 $a0 $03
	inc b                                            ; $63a7: $04
	dec e                                            ; $63a8: $1d
	ret nz                                           ; $63a9: $c0

	ld bc, $01a0                                     ; $63aa: $01 $a0 $01
	inc b                                            ; $63ad: $04
	rra                                              ; $63ae: $1f
	ret nz                                           ; $63af: $c0

	ld bc, $03a0                                     ; $63b0: $01 $a0 $03
	inc b                                            ; $63b3: $04
	ld a, [hl+]                                      ; $63b4: $2a
	pop bc                                           ; $63b5: $c1
	ld e, e                                          ; $63b6: $5b
	ret nz                                           ; $63b7: $c0

	ld bc, $01a0                                     ; $63b8: $01 $a0 $01
	ld bc, $e5d4                                     ; $63bb: $01 $d4 $e5
	inc sp                                           ; $63be: $33
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	add a                                            ; $63c1: $87
	pop hl                                           ; $63c2: $e1
	ld [hl-], a                                      ; $63c3: $32
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	pop hl                                           ; $63c6: $e1
	ld [bc], a                                       ; $63c7: $02
	ld bc, $6210                                     ; $63c8: $01 $10 $62
	ld hl, sp-$79                                    ; $63cb: $f8 $87
	ld [bc], a                                       ; $63cd: $02
	sub c                                            ; $63ce: $91
	ldh [rAUD3HIGH], a                               ; $63cf: $e0 $1e
	ld d, $e1                                        ; $63d1: $16 $e1
	ld [bc], a                                       ; $63d3: $02
	inc bc                                           ; $63d4: $03
	dec de                                           ; $63d5: $1b
	ret nz                                           ; $63d6: $c0

	ld bc, $03a0                                     ; $63d7: $01 $a0 $03
	ld bc, $c083                                     ; $63da: $01 $83 $c0
	ld bc, $01a0                                     ; $63dd: $01 $a0 $01
	inc b                                            ; $63e0: $04
	jr nc, jr_083_63a3                               ; $63e1: $30 $c0

	ld bc, $03a0                                     ; $63e3: $01 $a0 $03
	inc b                                            ; $63e6: $04
	ld a, $f8                                        ; $63e7: $3e $f8
	add a                                            ; $63e9: $87
	ld [bc], a                                       ; $63ea: $02
	sub c                                            ; $63eb: $91
	ldh [rDMA], a                                    ; $63ec: $e0 $46
	ld d, $e1                                        ; $63ee: $16 $e1
	ld [bc], a                                       ; $63f0: $02
	inc bc                                           ; $63f1: $03
	rla                                              ; $63f2: $17
	ret nz                                           ; $63f3: $c0

	ld bc, $03a0                                     ; $63f4: $01 $a0 $03
	inc b                                            ; $63f7: $04
	ld b, h                                          ; $63f8: $44
	ret nz                                           ; $63f9: $c0

	ld bc, $01a0                                     ; $63fa: $01 $a0 $01
	inc b                                            ; $63fd: $04
	ld b, a                                          ; $63fe: $47
	ret nz                                           ; $63ff: $c0

	ld bc, $03a0                                     ; $6400: $01 $a0 $03
	inc b                                            ; $6403: $04
	ld d, d                                          ; $6404: $52
	ld hl, sp-$79                                    ; $6405: $f8 $87
	ld [bc], a                                       ; $6407: $02
	sub c                                            ; $6408: $91
	ldh [$5a], a                                     ; $6409: $e0 $5a
	ld a, [de]                                       ; $640b: $1a
	pop hl                                           ; $640c: $e1
	ld [bc], a                                       ; $640d: $02
	inc bc                                           ; $640e: $03
	inc de                                           ; $640f: $13
	ret nz                                           ; $6410: $c0

	ld bc, $03a0                                     ; $6411: $01 $a0 $03
	inc b                                            ; $6414: $04
	ld d, h                                          ; $6415: $54
	ret nz                                           ; $6416: $c0

	ld bc, $01a0                                     ; $6417: $01 $a0 $01
	inc b                                            ; $641a: $04
	ld e, c                                          ; $641b: $59
	ret nz                                           ; $641c: $c0

	ld bc, $03a0                                     ; $641d: $01 $a0 $03
	inc b                                            ; $6420: $04
	ld h, h                                          ; $6421: $64
	ret nz                                           ; $6422: $c0

	ld [hl+], a                                      ; $6423: $22
	pop de                                           ; $6424: $d1
	pop de                                           ; $6425: $d1
	ld [hl+], a                                      ; $6426: $22
	pop hl                                           ; $6427: $e1
	ld [bc], a                                       ; $6428: $02
	inc bc                                           ; $6429: $03
	rrca                                             ; $642a: $0f
	ret nz                                           ; $642b: $c0

	ld bc, $03a0                                     ; $642c: $01 $a0 $03
	inc b                                            ; $642f: $04
	ld l, c                                          ; $6430: $69
	ret nz                                           ; $6431: $c0

	ld bc, $01a0                                     ; $6432: $01 $a0 $01
	inc b                                            ; $6435: $04
	ld l, h                                          ; $6436: $6c
	ret nz                                           ; $6437: $c0

	ld bc, $03a0                                     ; $6438: $01 $a0 $03
	inc b                                            ; $643b: $04
	ld l, a                                          ; $643c: $6f
	ret nz                                           ; $643d: $c0

	ld bc, $01a0                                     ; $643e: $01 $a0 $01
	inc b                                            ; $6441: $04
	add b                                            ; $6442: $80
	ret nz                                           ; $6443: $c0

	ld bc, $03a0                                     ; $6444: $01 $a0 $03
	inc b                                            ; $6447: $04
	adc c                                            ; $6448: $89
	add hl, bc                                       ; $6449: $09
	pop bc                                           ; $644a: $c1
	sbc d                                            ; $644b: $9a
	add e                                            ; $644c: $83
	ret nz                                           ; $644d: $c0

	dec de                                           ; $644e: $1b
	pop de                                           ; $644f: $d1
	ld [bc], a                                       ; $6450: $02
	ret nc                                           ; $6451: $d0

	pop de                                           ; $6452: $d1
	ld a, c                                          ; $6453: $79
	ret nz                                           ; $6454: $c0

	ld bc, $03a0                                     ; $6455: $01 $a0 $03
	inc bc                                           ; $6458: $03
	dec [hl]                                         ; $6459: $35
	ei                                               ; $645a: $fb
	rst $38                                          ; $645b: $ff
	ld b, $80                                        ; $645c: $06 $80
	nop                                              ; $645e: $00
	ld [hl], h                                       ; $645f: $74
	add b                                            ; $6460: $80
	nop                                              ; $6461: $00
	ld [hl], l                                       ; $6462: $75
	inc c                                            ; $6463: $0c
	ldh [$08], a                                     ; $6464: $e0 $08
	ld e, d                                          ; $6466: $5a
	ldh [$08], a                                     ; $6467: $e0 $08
	ld e, [hl]                                       ; $6469: $5e
	ret nz                                           ; $646a: $c0

	ld bc, $03a0                                     ; $646b: $01 $a0 $03
	inc b                                            ; $646e: $04
	adc a                                            ; $646f: $8f
	ret nz                                           ; $6470: $c0

	ld bc, $01a0                                     ; $6471: $01 $a0 $01
	inc b                                            ; $6474: $04
	sub a                                            ; $6475: $97
	ret nz                                           ; $6476: $c0

	ld bc, $03a0                                     ; $6477: $01 $a0 $03
	inc b                                            ; $647a: $04
	sbc l                                            ; $647b: $9d
	pop hl                                           ; $647c: $e1
	ld [hl-], a                                      ; $647d: $32
	nop                                              ; $647e: $00
	add hl, hl                                       ; $647f: $29
	pop hl                                           ; $6480: $e1
	ld [bc], a                                       ; $6481: $02
	ld bc, $c010                                     ; $6482: $01 $10 $c0
	ld bc, $03a0                                     ; $6485: $01 $a0 $03
	inc b                                            ; $6488: $04
	and c                                            ; $6489: $a1
	ret nz                                           ; $648a: $c0

	ld bc, $01a0                                     ; $648b: $01 $a0 $01
	inc b                                            ; $648e: $04
	or c                                             ; $648f: $b1
	ld h, b                                          ; $6490: $60
	rst $38                                          ; $6491: $ff
	ld b, $80                                        ; $6492: $06 $80
	nop                                              ; $6494: $00
	ld [hl], h                                       ; $6495: $74
	add b                                            ; $6496: $80
	nop                                              ; $6497: $00
	ld [hl], l                                       ; $6498: $75
	inc d                                            ; $6499: $14
	ret nz                                           ; $649a: $c0

	ld bc, $03a0                                     ; $649b: $01 $a0 $03
	inc bc                                           ; $649e: $03
	ld a, c                                          ; $649f: $79
	ret nz                                           ; $64a0: $c0

	ld bc, $01a0                                     ; $64a1: $01 $a0 $01
	inc b                                            ; $64a4: $04
	cp d                                             ; $64a5: $ba
	ret nz                                           ; $64a6: $c0

	ld bc, $03a0                                     ; $64a7: $01 $a0 $03
	inc b                                            ; $64aa: $04
	jp Jump_083_5bc1                                 ; $64ab: $c3 $c1 $5b


	ld e, $b0                                        ; $64ae: $1e $b0
	ld a, a                                          ; $64b0: $7f
	ld d, $c0                                        ; $64b1: $16 $c0
	ld bc, $03a0                                     ; $64b3: $01 $a0 $03
	inc bc                                           ; $64b6: $03
	ld a, c                                          ; $64b7: $79
	ldh [$0c], a                                     ; $64b8: $e0 $0c
	adc b                                            ; $64ba: $88
	ret nz                                           ; $64bb: $c0

	ld bc, $01a0                                     ; $64bc: $01 $a0 $01
	inc bc                                           ; $64bf: $03
	sbc [hl]                                         ; $64c0: $9e
	ldh [$0c], a                                     ; $64c1: $e0 $0c
	xor h                                            ; $64c3: $ac
	nop                                              ; $64c4: $00
	add b                                            ; $64c5: $80
	nop                                              ; $64c6: $00
	ld [hl], l                                       ; $64c7: $75
	rst $38                                          ; $64c8: $ff
	inc bc                                           ; $64c9: $03
	ldh [$03], a                                     ; $64ca: $e0 $03
	sbc c                                            ; $64cc: $99
	ld [bc], a                                       ; $64cd: $02
	jp nc, $7ed3                                     ; $64ce: $d2 $d3 $7e

	ret nz                                           ; $64d1: $c0

	ld bc, $03a0                                     ; $64d2: $01 $a0 $03
	inc bc                                           ; $64d5: $03
	cp $fb                                           ; $64d6: $fe $fb
	rst $38                                          ; $64d8: $ff
	ld b, $80                                        ; $64d9: $06 $80
	nop                                              ; $64db: $00
	ld [hl], h                                       ; $64dc: $74
	add b                                            ; $64dd: $80
	nop                                              ; $64de: $00
	ld [hl], l                                       ; $64df: $75
	inc c                                            ; $64e0: $0c
	ldh [rTAC], a                                    ; $64e1: $e0 $07
	db $dd                                           ; $64e3: $dd
	ldh [rTAC], a                                    ; $64e4: $e0 $07
	pop hl                                           ; $64e6: $e1
	ret nz                                           ; $64e7: $c0

	ld bc, $03a0                                     ; $64e8: $01 $a0 $03
	inc b                                            ; $64eb: $04
	adc a                                            ; $64ec: $8f
	ret nz                                           ; $64ed: $c0

	ld bc, $01a0                                     ; $64ee: $01 $a0 $01
	inc b                                            ; $64f1: $04
	sub a                                            ; $64f2: $97
	ret nz                                           ; $64f3: $c0

	ld bc, $03a0                                     ; $64f4: $01 $a0 $03
	inc b                                            ; $64f7: $04
	sbc l                                            ; $64f8: $9d
	pop hl                                           ; $64f9: $e1
	ld [hl-], a                                      ; $64fa: $32
	nop                                              ; $64fb: $00
	add hl, hl                                       ; $64fc: $29
	pop hl                                           ; $64fd: $e1
	ld [bc], a                                       ; $64fe: $02
	ld bc, $c010                                     ; $64ff: $01 $10 $c0
	ld bc, $03a0                                     ; $6502: $01 $a0 $03
	inc b                                            ; $6505: $04
	and c                                            ; $6506: $a1
	ret nz                                           ; $6507: $c0

	ld bc, $01a0                                     ; $6508: $01 $a0 $01
	inc b                                            ; $650b: $04
	or c                                             ; $650c: $b1
	ld h, b                                          ; $650d: $60
	rst $38                                          ; $650e: $ff
	ld b, $80                                        ; $650f: $06 $80
	nop                                              ; $6511: $00
	ld [hl], h                                       ; $6512: $74
	add b                                            ; $6513: $80
	nop                                              ; $6514: $00
	ld [hl], l                                       ; $6515: $75
	inc d                                            ; $6516: $14
	ret nz                                           ; $6517: $c0

	ld bc, $03a0                                     ; $6518: $01 $a0 $03
	inc b                                            ; $651b: $04
	jp nc, $01c0                                     ; $651c: $d2 $c0 $01

	and b                                            ; $651f: $a0
	ld bc, $d704                                     ; $6520: $01 $04 $d7
	ret nz                                           ; $6523: $c0

	ld bc, $03a0                                     ; $6524: $01 $a0 $03
	inc b                                            ; $6527: $04
	ldh [$c1], a                                     ; $6528: $e0 $c1
	ld e, e                                          ; $652a: $5b
	inc hl                                           ; $652b: $23
	or b                                             ; $652c: $b0
	ld a, a                                          ; $652d: $7f
	dec de                                           ; $652e: $1b
	ret nz                                           ; $652f: $c0

	ld bc, $03a0                                     ; $6530: $01 $a0 $03
	inc b                                            ; $6533: $04
	jp nc, $0ce0                                     ; $6534: $d2 $e0 $0c

	dec bc                                           ; $6537: $0b
	ret nz                                           ; $6538: $c0

	ld bc, $01a0                                     ; $6539: $01 $a0 $01
	inc bc                                           ; $653c: $03
	sbc [hl]                                         ; $653d: $9e
	ret nz                                           ; $653e: $c0

	ld bc, $03a0                                     ; $653f: $01 $a0 $03
	inc b                                            ; $6542: $04
	jp hl                                            ; $6543: $e9


	nop                                              ; $6544: $00
	add b                                            ; $6545: $80
	nop                                              ; $6546: $00
	ld [hl], l                                       ; $6547: $75
	pop bc                                           ; $6548: $c1
	ld e, e                                          ; $6549: $5b
	rst $38                                          ; $654a: $ff
	inc bc                                           ; $654b: $03
	ldh [$0c], a                                     ; $654c: $e0 $0c
	ld e, l                                          ; $654e: $5d
	ld bc, $7ed4                                     ; $654f: $01 $d4 $7e
	ret nz                                           ; $6552: $c0

	ld bc, $03a0                                     ; $6553: $01 $a0 $03
	inc bc                                           ; $6556: $03
	cp $fb                                           ; $6557: $fe $fb
	rst $38                                          ; $6559: $ff
	ld b, $80                                        ; $655a: $06 $80
	nop                                              ; $655c: $00
	ld [hl], h                                       ; $655d: $74
	add b                                            ; $655e: $80
	nop                                              ; $655f: $00
	ld [hl], l                                       ; $6560: $75
	inc c                                            ; $6561: $0c
	ldh [rTAC], a                                    ; $6562: $e0 $07
	ld e, h                                          ; $6564: $5c
	ldh [rTAC], a                                    ; $6565: $e0 $07
	ld h, b                                          ; $6567: $60
	ret nz                                           ; $6568: $c0

	ld bc, $03a0                                     ; $6569: $01 $a0 $03
	inc b                                            ; $656c: $04
	adc a                                            ; $656d: $8f
	ret nz                                           ; $656e: $c0

	ld bc, $01a0                                     ; $656f: $01 $a0 $01
	inc b                                            ; $6572: $04
	sub a                                            ; $6573: $97
	ret nz                                           ; $6574: $c0

	ld bc, $03a0                                     ; $6575: $01 $a0 $03
	inc b                                            ; $6578: $04
	pop af                                           ; $6579: $f1
	pop hl                                           ; $657a: $e1
	ld [hl-], a                                      ; $657b: $32
	nop                                              ; $657c: $00
	add hl, hl                                       ; $657d: $29
	pop hl                                           ; $657e: $e1
	ld [bc], a                                       ; $657f: $02
	ld bc, $c010                                     ; $6580: $01 $10 $c0
	ld bc, $03a0                                     ; $6583: $01 $a0 $03
	inc b                                            ; $6586: $04
	and c                                            ; $6587: $a1
	ret nz                                           ; $6588: $c0

	ld bc, $01a0                                     ; $6589: $01 $a0 $01
	inc b                                            ; $658c: $04
	or c                                             ; $658d: $b1
	ld h, b                                          ; $658e: $60
	rst $38                                          ; $658f: $ff
	ld b, $80                                        ; $6590: $06 $80
	nop                                              ; $6592: $00
	ld [hl], h                                       ; $6593: $74
	add b                                            ; $6594: $80
	nop                                              ; $6595: $00
	ld [hl], l                                       ; $6596: $75
	inc d                                            ; $6597: $14
	ret nz                                           ; $6598: $c0

	ld bc, $03a0                                     ; $6599: $01 $a0 $03
	inc b                                            ; $659c: $04
	jp nc, $01c0                                     ; $659d: $d2 $c0 $01

	and b                                            ; $65a0: $a0
	ld bc, $d704                                     ; $65a1: $01 $04 $d7
	ret nz                                           ; $65a4: $c0

	ld bc, $03a0                                     ; $65a5: $01 $a0 $03
	inc b                                            ; $65a8: $04
	di                                               ; $65a9: $f3
	pop bc                                           ; $65aa: $c1
	ld e, e                                          ; $65ab: $5b
	inc hl                                           ; $65ac: $23
	or b                                             ; $65ad: $b0
	ld a, a                                          ; $65ae: $7f
	dec de                                           ; $65af: $1b
	ret nz                                           ; $65b0: $c0

	ld bc, $03a0                                     ; $65b1: $01 $a0 $03
	inc b                                            ; $65b4: $04
	jp nc, $0be0                                     ; $65b5: $d2 $e0 $0b

	adc d                                            ; $65b8: $8a
	ret nz                                           ; $65b9: $c0

	ld bc, $01a0                                     ; $65ba: $01 $a0 $01
	inc bc                                           ; $65bd: $03
	sbc [hl]                                         ; $65be: $9e
	ret nz                                           ; $65bf: $c0

	ld bc, $03a0                                     ; $65c0: $01 $a0 $03
	inc b                                            ; $65c3: $04
	dec de                                           ; $65c4: $1b
	nop                                              ; $65c5: $00
	add b                                            ; $65c6: $80
	nop                                              ; $65c7: $00
	ld [hl], l                                       ; $65c8: $75
	pop bc                                           ; $65c9: $c1
	ld e, e                                          ; $65ca: $5b
	rst $38                                          ; $65cb: $ff
	inc bc                                           ; $65cc: $03
	ldh [$0b], a                                     ; $65cd: $e0 $0b
	call c, $d501                                    ; $65cf: $dc $01 $d5
	rrca                                             ; $65d2: $0f
	ldh [rSC], a                                     ; $65d3: $e0 $02
	or a                                             ; $65d5: $b7
	pop hl                                           ; $65d6: $e1
	ld [hl-], a                                      ; $65d7: $32
	nop                                              ; $65d8: $00
	add hl, hl                                       ; $65d9: $29
	ret nz                                           ; $65da: $c0

	jp z, $01c0                                      ; $65db: $ca $c0 $01

	and b                                            ; $65de: $a0
	ld bc, $f804                                     ; $65df: $01 $04 $f8
	push hl                                          ; $65e2: $e5
	inc sp                                           ; $65e3: $33
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	add hl, bc                                       ; $65e6: $09
	jp nz, $837b                                     ; $65e7: $c2 $7b $83

	ret nz                                           ; $65ea: $c0

	dec de                                           ; $65eb: $1b
	pop de                                           ; $65ec: $d1
	ld [bc], a                                       ; $65ed: $02
	ret nc                                           ; $65ee: $d0

	pop de                                           ; $65ef: $d1
	ret nz                                           ; $65f0: $c0

	jp z, $01c0                                      ; $65f1: $ca $c0 $01

	and b                                            ; $65f4: $a0
	inc bc                                           ; $65f5: $03
	inc bc                                           ; $65f6: $03
	dec [hl]                                         ; $65f7: $35
	ei                                               ; $65f8: $fb
	rst $38                                          ; $65f9: $ff
	ld b, $80                                        ; $65fa: $06 $80
	nop                                              ; $65fc: $00
	ld [hl], h                                       ; $65fd: $74
	add b                                            ; $65fe: $80
	nop                                              ; $65ff: $00
	ld [hl], l                                       ; $6600: $75
	inc c                                            ; $6601: $0c
	ldh [rTMA], a                                    ; $6602: $e0 $06
	cp h                                             ; $6604: $bc
	ldh [rTMA], a                                    ; $6605: $e0 $06
	ret nz                                           ; $6607: $c0

	ret nz                                           ; $6608: $c0

	ld bc, $03a0                                     ; $6609: $01 $a0 $03
	inc b                                            ; $660c: $04
	adc a                                            ; $660d: $8f
	ret nz                                           ; $660e: $c0

	ld bc, $01a0                                     ; $660f: $01 $a0 $01
	inc b                                            ; $6612: $04

jr_083_6613:
	sub a                                            ; $6613: $97
	ret nz                                           ; $6614: $c0

	ld bc, $03a0                                     ; $6615: $01 $a0 $03
	inc b                                            ; $6618: $04
	sbc l                                            ; $6619: $9d
	pop hl                                           ; $661a: $e1
	ld [hl-], a                                      ; $661b: $32
	nop                                              ; $661c: $00
	add c                                            ; $661d: $81
	ret nz                                           ; $661e: $c0

	jp z, $01c0                                      ; $661f: $ca $c0 $01

	and b                                            ; $6622: $a0
	ld bc, $0105                                     ; $6623: $01 $05 $01
	ret nz                                           ; $6626: $c0

	ld bc, $03a0                                     ; $6627: $01 $a0 $03
	dec b                                            ; $662a: $05
	ld [$02e1], sp                                   ; $662b: $08 $e1 $02
	ld bc, $c008                                     ; $662e: $01 $08 $c0
	ld bc, $01a0                                     ; $6631: $01 $a0 $01
	dec b                                            ; $6634: $05
	dec bc                                           ; $6635: $0b
	ret nz                                           ; $6636: $c0

jr_083_6637:
	ld bc, $03a0                                     ; $6637: $01 $a0 $03
	dec b                                            ; $663a: $05
	ld de, $01c0                                     ; $663b: $11 $c0 $01
	and b                                            ; $663e: $a0
	ld bc, $1e05                                     ; $663f: $01 $05 $1e
	ret nz                                           ; $6642: $c0

	ld bc, $03a0                                     ; $6643: $01 $a0 $03
	dec b                                            ; $6646: $05
	inc l                                            ; $6647: $2c
	ld h, b                                          ; $6648: $60
	rst $38                                          ; $6649: $ff
	ld b, $80                                        ; $664a: $06 $80
	nop                                              ; $664c: $00
	ld [hl], h                                       ; $664d: $74
	add b                                            ; $664e: $80
	nop                                              ; $664f: $00
	ld [hl], l                                       ; $6650: $75
	jr nz, jr_083_6613                               ; $6651: $20 $c0

	ld bc, $01a0                                     ; $6653: $01 $a0 $01
	dec b                                            ; $6656: $05
	ld a, [hl-]                                      ; $6657: $3a
	ret nz                                           ; $6658: $c0

	ld bc, $03a0                                     ; $6659: $01 $a0 $03
	dec b                                            ; $665c: $05
	ld c, b                                          ; $665d: $48
	ret nz                                           ; $665e: $c0

	ld bc, $01a0                                     ; $665f: $01 $a0 $01
	dec b                                            ; $6662: $05
	ld e, b                                          ; $6663: $58
	ret nz                                           ; $6664: $c0

	ld bc, $03a0                                     ; $6665: $01 $a0 $03
	dec b                                            ; $6668: $05
	ld h, d                                          ; $6669: $62
	pop bc                                           ; $666a: $c1
	ld e, e                                          ; $666b: $5b
	ret nz                                           ; $666c: $c0

	ld bc, $01a0                                     ; $666d: $01 $a0 $01
	dec b                                            ; $6670: $05
	ld l, h                                          ; $6671: $6c
	ld c, c                                          ; $6672: $49
	or b                                             ; $6673: $b0
	ld a, a                                          ; $6674: $7f
	jr nc, jr_083_6637                               ; $6675: $30 $c0

	ld bc, $01a0                                     ; $6677: $01 $a0 $01
	dec b                                            ; $667a: $05
	ld [hl], l                                       ; $667b: $75
	ret nz                                           ; $667c: $c0

	ld bc, $03a0                                     ; $667d: $01 $a0 $03
	dec b                                            ; $6680: $05
	ld a, [hl]                                       ; $6681: $7e
	ret nz                                           ; $6682: $c0

	ld bc, $01a0                                     ; $6683: $01 $a0 $01
	dec b                                            ; $6686: $05
	adc e                                            ; $6687: $8b
	ret nz                                           ; $6688: $c0

	ld bc, $03a0                                     ; $6689: $01 $a0 $03
	dec b                                            ; $668c: $05
	ld c, b                                          ; $668d: $48
	ret nz                                           ; $668e: $c0

	ld bc, $01a0                                     ; $668f: $01 $a0 $01
	dec b                                            ; $6692: $05
	ld e, b                                          ; $6693: $58
	ret nz                                           ; $6694: $c0

	ld bc, $03a0                                     ; $6695: $01 $a0 $03
	dec b                                            ; $6698: $05
	ld h, d                                          ; $6699: $62
	pop bc                                           ; $669a: $c1
	ld e, e                                          ; $669b: $5b
	ret nz                                           ; $669c: $c0

	ld bc, $01a0                                     ; $669d: $01 $a0 $01
	dec b                                            ; $66a0: $05
	ld l, h                                          ; $66a1: $6c
	nop                                              ; $66a2: $00
	add b                                            ; $66a3: $80
	nop                                              ; $66a4: $00
	ld [hl], l                                       ; $66a5: $75
	rst $38                                          ; $66a6: $ff
	inc d                                            ; $66a7: $14
	ret nz                                           ; $66a8: $c0

	ld bc, $01a0                                     ; $66a9: $01 $a0 $01
	dec b                                            ; $66ac: $05
	sbc h                                            ; $66ad: $9c
	ret nz                                           ; $66ae: $c0

	ld bc, $03a0                                     ; $66af: $01 $a0 $03
	dec b                                            ; $66b2: $05
	ld h, d                                          ; $66b3: $62
	pop bc                                           ; $66b4: $c1
	ld e, e                                          ; $66b5: $5b
	ret nz                                           ; $66b6: $c0

	ld bc, $01a0                                     ; $66b7: $01 $a0 $01
	dec b                                            ; $66ba: $05
	ld l, h                                          ; $66bb: $6c
	ld [bc], a                                       ; $66bc: $02
	jp nc, $c0d3                                     ; $66bd: $d2 $d3 $c0

	pop de                                           ; $66c0: $d1
	ret nz                                           ; $66c1: $c0

	ld bc, $03a0                                     ; $66c2: $01 $a0 $03
	inc bc                                           ; $66c5: $03
	cp $fb                                           ; $66c6: $fe $fb
	rst $38                                          ; $66c8: $ff
	ld b, $80                                        ; $66c9: $06 $80
	nop                                              ; $66cb: $00
	ld [hl], h                                       ; $66cc: $74
	add b                                            ; $66cd: $80
	nop                                              ; $66ce: $00
	ld [hl], l                                       ; $66cf: $75
	dec d                                            ; $66d0: $15
	ldh [rTIMA], a                                   ; $66d1: $e0 $05
	db $ed                                           ; $66d3: $ed
	ret nz                                           ; $66d4: $c0

	ld bc, $03a0                                     ; $66d5: $01 $a0 $03
	dec b                                            ; $66d8: $05
	and [hl]                                         ; $66d9: $a6
	ret nz                                           ; $66da: $c0

	ld bc, $01a0                                     ; $66db: $01 $a0 $01
	dec b                                            ; $66de: $05
	xor l                                            ; $66df: $ad
	ret nz                                           ; $66e0: $c0

	ld bc, $03a0                                     ; $66e1: $01 $a0 $03
	inc b                                            ; $66e4: $04
	adc a                                            ; $66e5: $8f
	ret nz                                           ; $66e6: $c0

	ld bc, $01a0                                     ; $66e7: $01 $a0 $01
	inc b                                            ; $66ea: $04
	sub a                                            ; $66eb: $97
	ret nz                                           ; $66ec: $c0

	ld bc, $03a0                                     ; $66ed: $01 $a0 $03
	inc b                                            ; $66f0: $04
	sbc l                                            ; $66f1: $9d
	pop hl                                           ; $66f2: $e1
	ld [hl-], a                                      ; $66f3: $32
	nop                                              ; $66f4: $00
	add c                                            ; $66f5: $81
	ret nz                                           ; $66f6: $c0

	ld bc, $01a0                                     ; $66f7: $01 $a0 $01
	dec b                                            ; $66fa: $05
	ld bc, $01c0                                     ; $66fb: $01 $c0 $01
	and b                                            ; $66fe: $a0
	inc bc                                           ; $66ff: $03
	dec b                                            ; $6700: $05
	ld [$02e1], sp                                   ; $6701: $08 $e1 $02
	ld bc, $c008                                     ; $6704: $01 $08 $c0
	ld bc, $01a0                                     ; $6707: $01 $a0 $01
	dec b                                            ; $670a: $05
	dec bc                                           ; $670b: $0b
	ret nz                                           ; $670c: $c0

jr_083_670d:
	ld bc, $03a0                                     ; $670d: $01 $a0 $03
	dec b                                            ; $6710: $05
	ld de, $01c0                                     ; $6711: $11 $c0 $01
	and b                                            ; $6714: $a0
	ld bc, $1e05                                     ; $6715: $01 $05 $1e
	ret nz                                           ; $6718: $c0

	ld bc, $03a0                                     ; $6719: $01 $a0 $03
	dec b                                            ; $671c: $05
	inc l                                            ; $671d: $2c
	ld h, b                                          ; $671e: $60
	rst $38                                          ; $671f: $ff
	ld b, $80                                        ; $6720: $06 $80
	nop                                              ; $6722: $00
	ld [hl], h                                       ; $6723: $74
	add b                                            ; $6724: $80
	nop                                              ; $6725: $00
	ld [hl], l                                       ; $6726: $75
	jr nz, @-$3e                                     ; $6727: $20 $c0

	ld bc, $01a0                                     ; $6729: $01 $a0 $01
	dec b                                            ; $672c: $05
	ld a, [hl-]                                      ; $672d: $3a
	ret nz                                           ; $672e: $c0

	ld bc, $03a0                                     ; $672f: $01 $a0 $03
	dec b                                            ; $6732: $05
	ld c, b                                          ; $6733: $48
	ret nz                                           ; $6734: $c0

	ld bc, $01a0                                     ; $6735: $01 $a0 $01
	dec b                                            ; $6738: $05
	ld e, b                                          ; $6739: $58
	ret nz                                           ; $673a: $c0

	ld bc, $03a0                                     ; $673b: $01 $a0 $03
	dec b                                            ; $673e: $05
	or e                                             ; $673f: $b3
	pop bc                                           ; $6740: $c1
	ld e, e                                          ; $6741: $5b
	ret nz                                           ; $6742: $c0

	ld bc, $01a0                                     ; $6743: $01 $a0 $01
	dec b                                            ; $6746: $05
	or a                                             ; $6747: $b7
	ld c, c                                          ; $6748: $49
	or b                                             ; $6749: $b0
	ld a, a                                          ; $674a: $7f
	jr nc, jr_083_670d                               ; $674b: $30 $c0

	ld bc, $01a0                                     ; $674d: $01 $a0 $01
	dec b                                            ; $6750: $05
	ld [hl], l                                       ; $6751: $75
	ret nz                                           ; $6752: $c0

	ld bc, $03a0                                     ; $6753: $01 $a0 $03
	dec b                                            ; $6756: $05
	ld a, [hl]                                       ; $6757: $7e
	ret nz                                           ; $6758: $c0

	ld bc, $01a0                                     ; $6759: $01 $a0 $01
	dec b                                            ; $675c: $05
	adc e                                            ; $675d: $8b
	ret nz                                           ; $675e: $c0

	ld bc, $03a0                                     ; $675f: $01 $a0 $03
	dec b                                            ; $6762: $05
	ld c, b                                          ; $6763: $48
	ret nz                                           ; $6764: $c0

	ld bc, $01a0                                     ; $6765: $01 $a0 $01
	dec b                                            ; $6768: $05
	ld e, b                                          ; $6769: $58
	ret nz                                           ; $676a: $c0

	ld bc, $03a0                                     ; $676b: $01 $a0 $03
	dec b                                            ; $676e: $05
	or e                                             ; $676f: $b3
	pop bc                                           ; $6770: $c1
	ld e, e                                          ; $6771: $5b
	ret nz                                           ; $6772: $c0

	ld bc, $01a0                                     ; $6773: $01 $a0 $01
	dec b                                            ; $6776: $05
	or a                                             ; $6777: $b7
	nop                                              ; $6778: $00
	add b                                            ; $6779: $80
	nop                                              ; $677a: $00
	ld [hl], l                                       ; $677b: $75
	rst $38                                          ; $677c: $ff
	inc d                                            ; $677d: $14
	ret nz                                           ; $677e: $c0

	ld bc, $01a0                                     ; $677f: $01 $a0 $01
	dec b                                            ; $6782: $05
	sbc h                                            ; $6783: $9c
	ret nz                                           ; $6784: $c0

	ld bc, $03a0                                     ; $6785: $01 $a0 $03
	dec b                                            ; $6788: $05
	or e                                             ; $6789: $b3
	pop bc                                           ; $678a: $c1
	ld e, e                                          ; $678b: $5b
	ret nz                                           ; $678c: $c0

	ld bc, $01a0                                     ; $678d: $01 $a0 $01
	dec b                                            ; $6790: $05
	or a                                             ; $6791: $b7
	ld bc, $b9d4                                     ; $6792: $01 $d4 $b9
	ret nz                                           ; $6795: $c0

	ld bc, $03a0                                     ; $6796: $01 $a0 $03
	inc bc                                           ; $6799: $03
	cp $fb                                           ; $679a: $fe $fb
	rst $38                                          ; $679c: $ff
	ld b, $80                                        ; $679d: $06 $80
	nop                                              ; $679f: $00
	ld [hl], h                                       ; $67a0: $74
	add b                                            ; $67a1: $80
	nop                                              ; $67a2: $00
	ld [hl], l                                       ; $67a3: $75
	dec d                                            ; $67a4: $15
	ldh [rTIMA], a                                   ; $67a5: $e0 $05
	add hl, de                                       ; $67a7: $19
	ret nz                                           ; $67a8: $c0

	ld bc, $03a0                                     ; $67a9: $01 $a0 $03
	dec b                                            ; $67ac: $05
	cp l                                             ; $67ad: $bd
	ret nz                                           ; $67ae: $c0

	ld bc, $01a0                                     ; $67af: $01 $a0 $01
	dec b                                            ; $67b2: $05
	xor l                                            ; $67b3: $ad
	ret nz                                           ; $67b4: $c0

	ld bc, $03a0                                     ; $67b5: $01 $a0 $03
	dec b                                            ; $67b8: $05
	jp $01c0                                         ; $67b9: $c3 $c0 $01


	and b                                            ; $67bc: $a0
	ld bc, $9704                                     ; $67bd: $01 $04 $97
	ret nz                                           ; $67c0: $c0

	ld bc, $03a0                                     ; $67c1: $01 $a0 $03
	inc b                                            ; $67c4: $04
	sbc l                                            ; $67c5: $9d
	pop hl                                           ; $67c6: $e1
	ld [hl-], a                                      ; $67c7: $32
	nop                                              ; $67c8: $00
	add c                                            ; $67c9: $81
	ret nz                                           ; $67ca: $c0

	ld bc, $01a0                                     ; $67cb: $01 $a0 $01
	dec b                                            ; $67ce: $05
	ld bc, $01c0                                     ; $67cf: $01 $c0 $01
	and b                                            ; $67d2: $a0
	inc bc                                           ; $67d3: $03
	dec b                                            ; $67d4: $05
	ld [$02e1], sp                                   ; $67d5: $08 $e1 $02
	ld bc, $c008                                     ; $67d8: $01 $08 $c0
	ld bc, $01a0                                     ; $67db: $01 $a0 $01
	dec b                                            ; $67de: $05
	dec bc                                           ; $67df: $0b
	ret nz                                           ; $67e0: $c0

	ld bc, $03a0                                     ; $67e1: $01 $a0 $03
	dec b                                            ; $67e4: $05
	ld de, $01c0                                     ; $67e5: $11 $c0 $01
	and b                                            ; $67e8: $a0
	ld bc, $1e05                                     ; $67e9: $01 $05 $1e
	ret nz                                           ; $67ec: $c0

	ld bc, $03a0                                     ; $67ed: $01 $a0 $03
	dec b                                            ; $67f0: $05
	call $ff60                                       ; $67f1: $cd $60 $ff
	ld b, $80                                        ; $67f4: $06 $80
	nop                                              ; $67f6: $00
	ld [hl], h                                       ; $67f7: $74
	add b                                            ; $67f8: $80
	nop                                              ; $67f9: $00
	ld [hl], l                                       ; $67fa: $75
	inc d                                            ; $67fb: $14
	ret nz                                           ; $67fc: $c0

	ld bc, $01a0                                     ; $67fd: $01 $a0 $01
	dec b                                            ; $6800: $05
	ld a, [hl-]                                      ; $6801: $3a
	ret nz                                           ; $6802: $c0

	ld bc, $03a0                                     ; $6803: $01 $a0 $03
	dec b                                            ; $6806: $05
	sub $c1                                          ; $6807: $d6 $c1
	ld e, e                                          ; $6809: $5b
	ret nz                                           ; $680a: $c0

	ld bc, $01a0                                     ; $680b: $01 $a0 $01
	dec b                                            ; $680e: $05
	or a                                             ; $680f: $b7
	dec a                                            ; $6810: $3d
	or b                                             ; $6811: $b0
	ld a, a                                          ; $6812: $7f
	inc h                                            ; $6813: $24
	ret nz                                           ; $6814: $c0

	ld bc, $01a0                                     ; $6815: $01 $a0 $01
	dec b                                            ; $6818: $05
	ld [hl], l                                       ; $6819: $75
	ret nz                                           ; $681a: $c0

	ld bc, $03a0                                     ; $681b: $01 $a0 $03
	dec b                                            ; $681e: $05
	ld a, [hl]                                       ; $681f: $7e
	ret nz                                           ; $6820: $c0

	ld bc, $01a0                                     ; $6821: $01 $a0 $01
	dec b                                            ; $6824: $05
	adc e                                            ; $6825: $8b
	ret nz                                           ; $6826: $c0

	ld bc, $03a0                                     ; $6827: $01 $a0 $03
	dec b                                            ; $682a: $05
	sub $c1                                          ; $682b: $d6 $c1
	ld e, e                                          ; $682d: $5b
	ret nz                                           ; $682e: $c0

	ld bc, $01a0                                     ; $682f: $01 $a0 $01
	dec b                                            ; $6832: $05
	or a                                             ; $6833: $b7
	nop                                              ; $6834: $00
	add b                                            ; $6835: $80
	nop                                              ; $6836: $00
	ld [hl], l                                       ; $6837: $75
	rst $38                                          ; $6838: $ff
	inc d                                            ; $6839: $14
	ret nz                                           ; $683a: $c0

	ld bc, $01a0                                     ; $683b: $01 $a0 $01
	dec b                                            ; $683e: $05
	sbc h                                            ; $683f: $9c
	ret nz                                           ; $6840: $c0

	ld bc, $03a0                                     ; $6841: $01 $a0 $03
	dec b                                            ; $6844: $05
	sub $c1                                          ; $6845: $d6 $c1
	ld e, e                                          ; $6847: $5b
	ret nz                                           ; $6848: $c0

	ld bc, $01a0                                     ; $6849: $01 $a0 $01
	dec b                                            ; $684c: $05
	or a                                             ; $684d: $b7
	ld bc, $0fd5                                     ; $684e: $01 $d5 $0f
	ldh [rP1], a                                     ; $6851: $e0 $00
	add hl, sp                                       ; $6853: $39
	pop hl                                           ; $6854: $e1
	ld [hl-], a                                      ; $6855: $32
	nop                                              ; $6856: $00
	add c                                            ; $6857: $81
	ret nz                                           ; $6858: $c0

	jp z, $01c0                                      ; $6859: $ca $c0 $01

	and b                                            ; $685c: $a0
	ld bc, $f804                                     ; $685d: $01 $04 $f8
	push hl                                          ; $6860: $e5
	inc sp                                           ; $6861: $33
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	ld h, $c0                                        ; $6864: $26 $c0
	ld bc, $03a0                                     ; $6866: $01 $a0 $03
	inc b                                            ; $6869: $04
	dec e                                            ; $686a: $1d
	ret nz                                           ; $686b: $c0

	ld bc, $01a0                                     ; $686c: $01 $a0 $01
	dec b                                            ; $686f: $05
	sbc $c0                                          ; $6870: $de $c0
	ld bc, $03a0                                     ; $6872: $01 $a0 $03
	dec b                                            ; $6875: $05
	ldh [c], a                                       ; $6876: $e2
	ret nz                                           ; $6877: $c0

	ld bc, $01a0                                     ; $6878: $01 $a0 $01
	dec b                                            ; $687b: $05
	ld [$01c0], a                                    ; $687c: $ea $c0 $01
	and b                                            ; $687f: $a0
	inc bc                                           ; $6880: $03
	dec b                                            ; $6881: $05
	ld h, d                                          ; $6882: $62
	pop bc                                           ; $6883: $c1
	ld e, e                                          ; $6884: $5b
	ret nz                                           ; $6885: $c0

	ld bc, $01a0                                     ; $6886: $01 $a0 $01
	dec b                                            ; $6889: $05
	ldh a, [c]                                       ; $688a: $f2
	ld [de], a                                       ; $688b: $12
	ret nz                                           ; $688c: $c0

	ld bc, $03a0                                     ; $688d: $01 $a0 $03
	inc b                                            ; $6890: $04
	dec e                                            ; $6891: $1d
	ret nz                                           ; $6892: $c0

	ld bc, $01a0                                     ; $6893: $01 $a0 $01
	dec b                                            ; $6896: $05
	rst FarCall                                          ; $6897: $f7
	ret nz                                           ; $6898: $c0

	ld bc, $03a0                                     ; $6899: $01 $a0 $03
	dec b                                            ; $689c: $05
	cp $09                                           ; $689d: $fe $09
	ld hl, $21c0                                     ; $689f: $21 $c0 $21
	jp nc, $e1d1                                     ; $68a2: $d2 $d1 $e1

	ld [bc], a                                       ; $68a5: $02
	ld bc, $8208                                     ; $68a6: $01 $08 $82
	ret nz                                           ; $68a9: $c0

	add b                                            ; $68aa: $80
	ld bc, $07d3                                     ; $68ab: $01 $d3 $07
	ret nz                                           ; $68ae: $c0

	ld [hl+], a                                      ; $68af: $22
	pop de                                           ; $68b0: $d1
	pop de                                           ; $68b1: $d1
	db $e4                                           ; $68b2: $e4
	ld [bc], a                                       ; $68b3: $02
	ld b, c                                          ; $68b4: $41
	ld bc, $03d2                                     ; $68b5: $01 $d2 $03
	db $e4                                           ; $68b8: $e4
	ld bc, $01bb                                     ; $68b9: $01 $bb $01
	pop de                                           ; $68bc: $d1
	inc bc                                           ; $68bd: $03
	db $e4                                           ; $68be: $e4
	nop                                              ; $68bf: $00
	ld [bc], a                                       ; $68c0: $02
	add hl, bc                                       ; $68c1: $09
	pop bc                                           ; $68c2: $c1
	or b                                             ; $68c3: $b0
	add e                                            ; $68c4: $83
	ret nz                                           ; $68c5: $c0

	dec de                                           ; $68c6: $1b
	pop de                                           ; $68c7: $d1
	ld [bc], a                                       ; $68c8: $02
	ret nc                                           ; $68c9: $d0

	pop de                                           ; $68ca: $d1
	add h                                            ; $68cb: $84
	ret nz                                           ; $68cc: $c0

	ld bc, $03a0                                     ; $68cd: $01 $a0 $03
	inc bc                                           ; $68d0: $03
	dec [hl]                                         ; $68d1: $35
	ret nz                                           ; $68d2: $c0

	ld bc, $01a0                                     ; $68d3: $01 $a0 $01
	ld b, $03                                        ; $68d6: $06 $03
	ret nz                                           ; $68d8: $c0

	ld bc, $03a0                                     ; $68d9: $01 $a0 $03
	ld b, $08                                        ; $68dc: $06 $08
	ret nz                                           ; $68de: $c0

	ld bc, $01a0                                     ; $68df: $01 $a0 $01
	ld b, $13                                        ; $68e2: $06 $13
	pop hl                                           ; $68e4: $e1
	ld [bc], a                                       ; $68e5: $02
	rlca                                             ; $68e6: $07
	cp a                                             ; $68e7: $bf
	ret nz                                           ; $68e8: $c0

	ld bc, $01a0                                     ; $68e9: $01 $a0 $01
	ld b, $1f                                        ; $68ec: $06 $1f
	ld h, b                                          ; $68ee: $60
	ei                                               ; $68ef: $fb
	pop bc                                           ; $68f0: $c1
	ld c, l                                          ; $68f1: $4d
	ldh [$64], a                                     ; $68f2: $e0 $64
	inc c                                            ; $68f4: $0c
	ret nz                                           ; $68f5: $c0

	ld bc, $03a0                                     ; $68f6: $01 $a0 $03
	ld b, $23                                        ; $68f9: $06 $23
	ret nz                                           ; $68fb: $c0

	ld bc, $01a0                                     ; $68fc: $01 $a0 $01
	ld b, $2b                                        ; $68ff: $06 $2b
	inc c                                            ; $6901: $0c
	ret nz                                           ; $6902: $c0

	ld bc, $03a0                                     ; $6903: $01 $a0 $03
	ld b, $34                                        ; $6906: $06 $34
	ret nz                                           ; $6908: $c0

	ld bc, $01a0                                     ; $6909: $01 $a0 $01
	ld b, $3b                                        ; $690c: $06 $3b
	ld h, b                                          ; $690e: $60
	rst $38                                          ; $690f: $ff
	ld b, $80                                        ; $6910: $06 $80
	nop                                              ; $6912: $00
	ld [hl], h                                       ; $6913: $74
	add b                                            ; $6914: $80
	nop                                              ; $6915: $00
	ld [hl], l                                       ; $6916: $75
	inc d                                            ; $6917: $14
	ret nz                                           ; $6918: $c0

	ld bc, $03a0                                     ; $6919: $01 $a0 $03
	inc bc                                           ; $691c: $03
	ld a, c                                          ; $691d: $79
	ret nz                                           ; $691e: $c0

	ld bc, $01a0                                     ; $691f: $01 $a0 $01
	inc bc                                           ; $6922: $03
	ld a, [hl]                                       ; $6923: $7e
	ret nz                                           ; $6924: $c0

	ld bc, $03a0                                     ; $6925: $01 $a0 $03
	inc bc                                           ; $6928: $03
	adc e                                            ; $6929: $8b
	pop bc                                           ; $692a: $c1
	ld e, e                                          ; $692b: $5b
	inc hl                                           ; $692c: $23
	or b                                             ; $692d: $b0
	ld a, a                                          ; $692e: $7f
	dec de                                           ; $692f: $1b
	ret nz                                           ; $6930: $c0

	ld bc, $03a0                                     ; $6931: $01 $a0 $03
	inc bc                                           ; $6934: $03
	ld a, c                                          ; $6935: $79
	ldh [$08], a                                     ; $6936: $e0 $08
	ld a, [bc]                                       ; $6938: $0a
	ret nz                                           ; $6939: $c0

	ld bc, $01a0                                     ; $693a: $01 $a0 $01
	inc bc                                           ; $693d: $03
	sbc [hl]                                         ; $693e: $9e
	ret nz                                           ; $693f: $c0

	ld bc, $03a0                                     ; $6940: $01 $a0 $03
	inc bc                                           ; $6943: $03
	xor b                                            ; $6944: $a8
	nop                                              ; $6945: $00
	add b                                            ; $6946: $80
	nop                                              ; $6947: $00
	ld [hl], l                                       ; $6948: $75
	pop bc                                           ; $6949: $c1
	ld e, e                                          ; $694a: $5b
	rst $38                                          ; $694b: $ff
	inc bc                                           ; $694c: $03
	ldh [$08], a                                     ; $694d: $e0 $08
	dec [hl]                                         ; $694f: $35
	ld [bc], a                                       ; $6950: $02
	jp nc, $7ed3                                     ; $6951: $d2 $d3 $7e

	ret nz                                           ; $6954: $c0

	ld bc, $03a0                                     ; $6955: $01 $a0 $03
	inc bc                                           ; $6958: $03
	cp $c0                                           ; $6959: $fe $c0
	ld bc, $01a0                                     ; $695b: $01 $a0 $01
	ld b, $03                                        ; $695e: $06 $03
	ret nz                                           ; $6960: $c0

	ld bc, $03a0                                     ; $6961: $01 $a0 $03
	ld b, $43                                        ; $6964: $06 $43
	pop hl                                           ; $6966: $e1
	ld [bc], a                                       ; $6967: $02
	rlca                                             ; $6968: $07
	cp a                                             ; $6969: $bf
	ret nz                                           ; $696a: $c0

	ld bc, $01a0                                     ; $696b: $01 $a0 $01
	ld b, $1f                                        ; $696e: $06 $1f
	ld h, b                                          ; $6970: $60
	ei                                               ; $6971: $fb
	pop bc                                           ; $6972: $c1
	ld c, l                                          ; $6973: $4d
	ldh [$64], a                                     ; $6974: $e0 $64
	inc c                                            ; $6976: $0c
	ret nz                                           ; $6977: $c0

	ld bc, $03a0                                     ; $6978: $01 $a0 $03
	ld b, $23                                        ; $697b: $06 $23
	ret nz                                           ; $697d: $c0

	ld bc, $01a0                                     ; $697e: $01 $a0 $01
	ld b, $49                                        ; $6981: $06 $49
	inc c                                            ; $6983: $0c
	ret nz                                           ; $6984: $c0

	ld bc, $03a0                                     ; $6985: $01 $a0 $03
	ld b, $51                                        ; $6988: $06 $51
	ret nz                                           ; $698a: $c0

	ld bc, $01a0                                     ; $698b: $01 $a0 $01
	ld b, $3b                                        ; $698e: $06 $3b
	ld h, b                                          ; $6990: $60
	rst $38                                          ; $6991: $ff
	ld b, $80                                        ; $6992: $06 $80
	nop                                              ; $6994: $00
	ld [hl], h                                       ; $6995: $74
	add b                                            ; $6996: $80
	nop                                              ; $6997: $00
	ld [hl], l                                       ; $6998: $75
	inc d                                            ; $6999: $14
	ret nz                                           ; $699a: $c0

	ld bc, $03a0                                     ; $699b: $01 $a0 $03
	inc bc                                           ; $699e: $03
	ret nc                                           ; $699f: $d0

	ret nz                                           ; $69a0: $c0

	ld bc, $01a0                                     ; $69a1: $01 $a0 $01
	inc bc                                           ; $69a4: $03
	ld a, [hl]                                       ; $69a5: $7e
	ret nz                                           ; $69a6: $c0

	ld bc, $03a0                                     ; $69a7: $01 $a0 $03
	inc bc                                           ; $69aa: $03
	push de                                          ; $69ab: $d5
	pop bc                                           ; $69ac: $c1
	ld e, e                                          ; $69ad: $5b
	inc hl                                           ; $69ae: $23
	or b                                             ; $69af: $b0
	ld a, a                                          ; $69b0: $7f
	dec de                                           ; $69b1: $1b
	ret nz                                           ; $69b2: $c0

	ld bc, $03a0                                     ; $69b3: $01 $a0 $03
	inc bc                                           ; $69b6: $03
	ret nc                                           ; $69b7: $d0

	ldh [rTAC], a                                    ; $69b8: $e0 $07
	adc b                                            ; $69ba: $88
	ret nz                                           ; $69bb: $c0

	ld bc, $01a0                                     ; $69bc: $01 $a0 $01
	inc bc                                           ; $69bf: $03
	sbc [hl]                                         ; $69c0: $9e
	ret nz                                           ; $69c1: $c0

	ld bc, $03a0                                     ; $69c2: $01 $a0 $03
	inc bc                                           ; $69c5: $03
	db $f4                                           ; $69c6: $f4
	nop                                              ; $69c7: $00
	add b                                            ; $69c8: $80
	nop                                              ; $69c9: $00
	ld [hl], l                                       ; $69ca: $75
	pop bc                                           ; $69cb: $c1
	ld e, e                                          ; $69cc: $5b
	rst $38                                          ; $69cd: $ff
	inc bc                                           ; $69ce: $03
	ldh [rTAC], a                                    ; $69cf: $e0 $07
	jp c, $d401                                      ; $69d1: $da $01 $d4

	ld a, [hl]                                       ; $69d4: $7e
	ret nz                                           ; $69d5: $c0

	ld bc, $03a0                                     ; $69d6: $01 $a0 $03
	inc bc                                           ; $69d9: $03
	cp $c0                                           ; $69da: $fe $c0
	ld bc, $01a0                                     ; $69dc: $01 $a0 $01
	ld b, $03                                        ; $69df: $06 $03
	ret nz                                           ; $69e1: $c0

	ld bc, $03a0                                     ; $69e2: $01 $a0 $03
	ld b, $54                                        ; $69e5: $06 $54
	pop hl                                           ; $69e7: $e1
	ld [bc], a                                       ; $69e8: $02
	rlca                                             ; $69e9: $07
	cp a                                             ; $69ea: $bf
	ret nz                                           ; $69eb: $c0

	ld bc, $01a0                                     ; $69ec: $01 $a0 $01
	ld b, $1f                                        ; $69ef: $06 $1f
	ld h, b                                          ; $69f1: $60
	ei                                               ; $69f2: $fb
	pop bc                                           ; $69f3: $c1
	ld c, l                                          ; $69f4: $4d
	ldh [$64], a                                     ; $69f5: $e0 $64
	inc c                                            ; $69f7: $0c
	ret nz                                           ; $69f8: $c0

	ld bc, $03a0                                     ; $69f9: $01 $a0 $03
	ld b, $58                                        ; $69fc: $06 $58
	ret nz                                           ; $69fe: $c0

	ld bc, $01a0                                     ; $69ff: $01 $a0 $01
	ld b, $66                                        ; $6a02: $06 $66
	inc c                                            ; $6a04: $0c
	ret nz                                           ; $6a05: $c0

	ld bc, $03a0                                     ; $6a06: $01 $a0 $03
	ld b, $71                                        ; $6a09: $06 $71
	ret nz                                           ; $6a0b: $c0

	ld bc, $01a0                                     ; $6a0c: $01 $a0 $01
	ld b, $3b                                        ; $6a0f: $06 $3b
	ld h, b                                          ; $6a11: $60
	rst $38                                          ; $6a12: $ff
	ld b, $80                                        ; $6a13: $06 $80
	nop                                              ; $6a15: $00
	ld [hl], h                                       ; $6a16: $74
	add b                                            ; $6a17: $80
	nop                                              ; $6a18: $00
	ld [hl], l                                       ; $6a19: $75
	inc d                                            ; $6a1a: $14
	ret nz                                           ; $6a1b: $c0

	ld bc, $03a0                                     ; $6a1c: $01 $a0 $03
	inc bc                                           ; $6a1f: $03
	ret nc                                           ; $6a20: $d0

	ret nz                                           ; $6a21: $c0

	ld bc, $01a0                                     ; $6a22: $01 $a0 $01
	inc bc                                           ; $6a25: $03
	ld a, [hl]                                       ; $6a26: $7e
	ret nz                                           ; $6a27: $c0

	ld bc, $03a0                                     ; $6a28: $01 $a0 $03
	inc b                                            ; $6a2b: $04
	ld [de], a                                       ; $6a2c: $12
	pop bc                                           ; $6a2d: $c1
	ld e, e                                          ; $6a2e: $5b
	inc hl                                           ; $6a2f: $23
	or b                                             ; $6a30: $b0
	ld a, a                                          ; $6a31: $7f
	dec de                                           ; $6a32: $1b
	ret nz                                           ; $6a33: $c0

	ld bc, $03a0                                     ; $6a34: $01 $a0 $03
	inc bc                                           ; $6a37: $03
	ret nc                                           ; $6a38: $d0

	ldh [rTAC], a                                    ; $6a39: $e0 $07
	rlca                                             ; $6a3b: $07
	ret nz                                           ; $6a3c: $c0

	ld bc, $01a0                                     ; $6a3d: $01 $a0 $01
	inc bc                                           ; $6a40: $03
	sbc [hl]                                         ; $6a41: $9e
	ret nz                                           ; $6a42: $c0

	ld bc, $03a0                                     ; $6a43: $01 $a0 $03
	inc b                                            ; $6a46: $04
	dec de                                           ; $6a47: $1b
	nop                                              ; $6a48: $00
	add b                                            ; $6a49: $80
	nop                                              ; $6a4a: $00
	ld [hl], l                                       ; $6a4b: $75
	pop bc                                           ; $6a4c: $c1
	ld e, e                                          ; $6a4d: $5b
	rst $38                                          ; $6a4e: $ff
	inc bc                                           ; $6a4f: $03
	ldh [rTAC], a                                    ; $6a50: $e0 $07
	ld e, c                                          ; $6a52: $59
	ld bc, $1ad5                                     ; $6a53: $01 $d5 $1a
	ret nz                                           ; $6a56: $c0

	ld bc, $03a0                                     ; $6a57: $01 $a0 $03
	inc b                                            ; $6a5a: $04
	dec e                                            ; $6a5b: $1d
	ret nz                                           ; $6a5c: $c0

	ld bc, $01a0                                     ; $6a5d: $01 $a0 $01
	ld b, $7b                                        ; $6a60: $06 $7b
	ret nz                                           ; $6a62: $c0

	ld bc, $03a0                                     ; $6a63: $01 $a0 $03
	inc b                                            ; $6a66: $04
	ld a, [hl+]                                      ; $6a67: $2a
	pop bc                                           ; $6a68: $c1
	ld e, e                                          ; $6a69: $5b
	ret nz                                           ; $6a6a: $c0

	ld bc, $01a0                                     ; $6a6b: $01 $a0 $01
	ld b, $84                                        ; $6a6e: $06 $84
	push hl                                          ; $6a70: $e5
	inc sp                                           ; $6a71: $33
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	add hl, bc                                       ; $6a74: $09
	ld a, [hl]                                       ; $6a75: $7e
	add e                                            ; $6a76: $83
	ret nz                                           ; $6a77: $c0

	dec de                                           ; $6a78: $1b
	pop de                                           ; $6a79: $d1
	ld [bc], a                                       ; $6a7a: $02
	ret nc                                           ; $6a7b: $d0

	pop de                                           ; $6a7c: $d1
	ld e, $c0                                        ; $6a7d: $1e $c0
	ld bc, $03a0                                     ; $6a7f: $01 $a0 $03
	inc bc                                           ; $6a82: $03
	dec [hl]                                         ; $6a83: $35
	ret nz                                           ; $6a84: $c0

	ld bc, $01a0                                     ; $6a85: $01 $a0 $01
	ld b, $8e                                        ; $6a88: $06 $8e
	ret nz                                           ; $6a8a: $c0

	ld bc, $03a0                                     ; $6a8b: $01 $a0 $03
	ld b, $94                                        ; $6a8e: $06 $94
	ret nz                                           ; $6a90: $c0

	ld bc, $01a0                                     ; $6a91: $01 $a0 $01
	ld b, $9f                                        ; $6a94: $06 $9f
	ret nz                                           ; $6a96: $c0

	ld bc, $03a0                                     ; $6a97: $01 $a0 $03
	ld b, $aa                                        ; $6a9a: $06 $aa
	ld [bc], a                                       ; $6a9c: $02
	jp nc, $1ed3                                     ; $6a9d: $d2 $d3 $1e

	ret nz                                           ; $6aa0: $c0

	ld bc, $03a0                                     ; $6aa1: $01 $a0 $03
	inc bc                                           ; $6aa4: $03
	cp $c0                                           ; $6aa5: $fe $c0
	ld bc, $01a0                                     ; $6aa7: $01 $a0 $01
	ld b, $8e                                        ; $6aaa: $06 $8e
	ret nz                                           ; $6aac: $c0

	ld bc, $03a0                                     ; $6aad: $01 $a0 $03
	ld b, $b1                                        ; $6ab0: $06 $b1
	ret nz                                           ; $6ab2: $c0

	ld bc, $01a0                                     ; $6ab3: $01 $a0 $01
	ld b, $b6                                        ; $6ab6: $06 $b6
	ret nz                                           ; $6ab8: $c0

	ld bc, $03a0                                     ; $6ab9: $01 $a0 $03
	ld b, $bc                                        ; $6abc: $06 $bc
	ld bc, $12d4                                     ; $6abe: $01 $d4 $12
	ret nz                                           ; $6ac1: $c0

	ld bc, $03a0                                     ; $6ac2: $01 $a0 $03
	inc bc                                           ; $6ac5: $03
	cp $c0                                           ; $6ac6: $fe $c0
	ld bc, $01a0                                     ; $6ac8: $01 $a0 $01
	ld b, $8e                                        ; $6acb: $06 $8e
	ret nz                                           ; $6acd: $c0

	ld bc, $03a0                                     ; $6ace: $01 $a0 $03
	ld b, $c1                                        ; $6ad1: $06 $c1
	ld bc, $12d5                                     ; $6ad3: $01 $d5 $12
	ret nz                                           ; $6ad6: $c0

	ld bc, $03a0                                     ; $6ad7: $01 $a0 $03
	inc b                                            ; $6ada: $04
	dec e                                            ; $6adb: $1d
	ret nz                                           ; $6adc: $c0

	ld bc, $01a0                                     ; $6add: $01 $a0 $01
	ld b, $8e                                        ; $6ae0: $06 $8e
	ret nz                                           ; $6ae2: $c0

	ld bc, $03a0                                     ; $6ae3: $01 $a0 $03
	ld b, $c8                                        ; $6ae6: $06 $c8
	pop bc                                           ; $6ae8: $c1
	ld e, e                                          ; $6ae9: $5b
	ret nz                                           ; $6aea: $c0

	ld bc, $01a0                                     ; $6aeb: $01 $a0 $01
	ld b, $cb                                        ; $6aee: $06 $cb
	push hl                                          ; $6af0: $e5
	inc sp                                           ; $6af1: $33
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	add hl, bc                                       ; $6af4: $09
	pop bc                                           ; $6af5: $c1
	ret z                                            ; $6af6: $c8

	add e                                            ; $6af7: $83
	ret nz                                           ; $6af8: $c0

	dec de                                           ; $6af9: $1b
	pop de                                           ; $6afa: $d1
	ld [bc], a                                       ; $6afb: $02
	ret nc                                           ; $6afc: $d0

	pop de                                           ; $6afd: $d1
	adc h                                            ; $6afe: $8c

jr_083_6aff:
	ret nz                                           ; $6aff: $c0

	ld bc, $03a0                                     ; $6b00: $01 $a0 $03
	inc bc                                           ; $6b03: $03
	dec [hl]                                         ; $6b04: $35
	ld h, b                                          ; $6b05: $60
	rst $38                                          ; $6b06: $ff
	ld b, $80                                        ; $6b07: $06 $80
	nop                                              ; $6b09: $00
	ld [hl], h                                       ; $6b0a: $74
	add b                                            ; $6b0b: $80
	nop                                              ; $6b0c: $00
	ld [hl], l                                       ; $6b0d: $75
	ld b, $e0                                        ; $6b0e: $06 $e0
	ld bc, $e0af                                     ; $6b10: $01 $af $e0
	ld bc, $06b3                                     ; $6b13: $01 $b3 $06
	ret nz                                           ; $6b16: $c0

	ld bc, $01a0                                     ; $6b17: $01 $a0 $01
	ld b, $d2                                        ; $6b1a: $06 $d2
	ret nz                                           ; $6b1c: $c0

	ld bc, $03a0                                     ; $6b1d: $01 $a0 $03
	ld b, $d6                                        ; $6b20: $06 $d6
	ret nz                                           ; $6b22: $c0

	ld bc, $01a0                                     ; $6b23: $01 $a0 $01
	ld b, $df                                        ; $6b26: $06 $df
	ret nz                                           ; $6b28: $c0

	ld bc, $03a0                                     ; $6b29: $01 $a0 $03
	ld b, $e5                                        ; $6b2c: $06 $e5
	ret nz                                           ; $6b2e: $c0

	ld bc, $01a0                                     ; $6b2f: $01 $a0 $01
	ld b, $f0                                        ; $6b32: $06 $f0
	ld h, b                                          ; $6b34: $60
	rst $38                                          ; $6b35: $ff
	ld b, $80                                        ; $6b36: $06 $80
	nop                                              ; $6b38: $00
	ld [hl], h                                       ; $6b39: $74
	add b                                            ; $6b3a: $80
	nop                                              ; $6b3b: $00
	ld [hl], l                                       ; $6b3c: $75
	jr nz, jr_083_6aff                               ; $6b3d: $20 $c0

	ld bc, $03a0                                     ; $6b3f: $01 $a0 $03
	inc bc                                           ; $6b42: $03
	ld a, c                                          ; $6b43: $79
	ret nz                                           ; $6b44: $c0

	ld bc, $01a0                                     ; $6b45: $01 $a0 $01
	ld b, $fa                                        ; $6b48: $06 $fa
	ret nz                                           ; $6b4a: $c0

	ld bc, $03a0                                     ; $6b4b: $01 $a0 $03
	ld b, $fe                                        ; $6b4e: $06 $fe
	ret nz                                           ; $6b50: $c0

	ld bc, $01a0                                     ; $6b51: $01 $a0 $01
	rlca                                             ; $6b54: $07
	dec bc                                           ; $6b55: $0b
	ret nz                                           ; $6b56: $c0

	ld bc, $03a0                                     ; $6b57: $01 $a0 $03
	rlca                                             ; $6b5a: $07
	inc de                                           ; $6b5b: $13
	pop bc                                           ; $6b5c: $c1
	ld e, e                                          ; $6b5d: $5b
	inc l                                            ; $6b5e: $2c
	or b                                             ; $6b5f: $b0
	ld a, a                                          ; $6b60: $7f
	inc h                                            ; $6b61: $24
	ret nz                                           ; $6b62: $c0

	ld bc, $03a0                                     ; $6b63: $01 $a0 $03
	rlca                                             ; $6b66: $07
	inc e                                            ; $6b67: $1c
	ret nz                                           ; $6b68: $c0

	ld bc, $01a0                                     ; $6b69: $01 $a0 $01
	ld b, $fa                                        ; $6b6c: $06 $fa
	ret nz                                           ; $6b6e: $c0

	ld bc, $03a0                                     ; $6b6f: $01 $a0 $03
	rlca                                             ; $6b72: $07
	ld hl, $01c0                                     ; $6b73: $21 $c0 $01
	and b                                            ; $6b76: $a0
	ld bc, $3007                                     ; $6b77: $01 $07 $30
	ret nz                                           ; $6b7a: $c0

	ld bc, $03a0                                     ; $6b7b: $01 $a0 $03
	rlca                                             ; $6b7e: $07
	inc a                                            ; $6b7f: $3c
	nop                                              ; $6b80: $00
	add b                                            ; $6b81: $80
	nop                                              ; $6b82: $00
	ld [hl], l                                       ; $6b83: $75
	pop bc                                           ; $6b84: $c1
	ld e, e                                          ; $6b85: $5b
	rst $38                                          ; $6b86: $ff
	inc bc                                           ; $6b87: $03
	ldh [rTIMA], a                                   ; $6b88: $e0 $05
	ld a, [$d202]                                    ; $6b8a: $fa $02 $d2
	db $d3                                           ; $6b8d: $d3
	adc h                                            ; $6b8e: $8c

jr_083_6b8f:
	ret nz                                           ; $6b8f: $c0

	ld bc, $03a0                                     ; $6b90: $01 $a0 $03
	inc bc                                           ; $6b93: $03
	cp $60                                           ; $6b94: $fe $60
	rst $38                                          ; $6b96: $ff
	ld b, $80                                        ; $6b97: $06 $80
	nop                                              ; $6b99: $00
	ld [hl], h                                       ; $6b9a: $74
	add b                                            ; $6b9b: $80
	nop                                              ; $6b9c: $00
	ld [hl], l                                       ; $6b9d: $75
	ld b, $e0                                        ; $6b9e: $06 $e0
	ld bc, $e01f                                     ; $6ba0: $01 $1f $e0
	ld bc, $0623                                     ; $6ba3: $01 $23 $06
	ret nz                                           ; $6ba6: $c0

	ld bc, $01a0                                     ; $6ba7: $01 $a0 $01
	ld b, $d2                                        ; $6baa: $06 $d2
	ret nz                                           ; $6bac: $c0

	ld bc, $03a0                                     ; $6bad: $01 $a0 $03
	rlca                                             ; $6bb0: $07
	ld b, l                                          ; $6bb1: $45
	ret nz                                           ; $6bb2: $c0

	ld bc, $01a0                                     ; $6bb3: $01 $a0 $01
	rlca                                             ; $6bb6: $07
	ld d, d                                          ; $6bb7: $52
	ret nz                                           ; $6bb8: $c0

	ld bc, $03a0                                     ; $6bb9: $01 $a0 $03
	rlca                                             ; $6bbc: $07
	ld e, e                                          ; $6bbd: $5b
	ret nz                                           ; $6bbe: $c0

	ld bc, $01a0                                     ; $6bbf: $01 $a0 $01
	rlca                                             ; $6bc2: $07
	ld h, a                                          ; $6bc3: $67
	ld h, b                                          ; $6bc4: $60
	rst $38                                          ; $6bc5: $ff
	ld b, $80                                        ; $6bc6: $06 $80
	nop                                              ; $6bc8: $00
	ld [hl], h                                       ; $6bc9: $74
	add b                                            ; $6bca: $80
	nop                                              ; $6bcb: $00
	ld [hl], l                                       ; $6bcc: $75
	jr nz, jr_083_6b8f                               ; $6bcd: $20 $c0

	ld bc, $03a0                                     ; $6bcf: $01 $a0 $03
	inc b                                            ; $6bd2: $04
	jp nc, $01c0                                     ; $6bd3: $d2 $c0 $01

	and b                                            ; $6bd6: $a0
	ld bc, $fa06                                     ; $6bd7: $01 $06 $fa
	ret nz                                           ; $6bda: $c0

	ld bc, $03a0                                     ; $6bdb: $01 $a0 $03
	rlca                                             ; $6bde: $07
	ld [hl], c                                       ; $6bdf: $71
	ret nz                                           ; $6be0: $c0

	ld bc, $01a0                                     ; $6be1: $01 $a0 $01
	rlca                                             ; $6be4: $07
	dec bc                                           ; $6be5: $0b
	ret nz                                           ; $6be6: $c0

	ld bc, $03a0                                     ; $6be7: $01 $a0 $03
	rlca                                             ; $6bea: $07
	ld a, h                                          ; $6beb: $7c
	pop bc                                           ; $6bec: $c1
	ld e, e                                          ; $6bed: $5b
	inc l                                            ; $6bee: $2c
	or b                                             ; $6bef: $b0
	ld a, a                                          ; $6bf0: $7f
	inc h                                            ; $6bf1: $24
	ret nz                                           ; $6bf2: $c0

	ld bc, $03a0                                     ; $6bf3: $01 $a0 $03
	inc b                                            ; $6bf6: $04
	jp nc, $01c0                                     ; $6bf7: $d2 $c0 $01

	and b                                            ; $6bfa: $a0
	ld bc, $fa06                                     ; $6bfb: $01 $06 $fa
	ret nz                                           ; $6bfe: $c0

	ld bc, $03a0                                     ; $6bff: $01 $a0 $03
	rlca                                             ; $6c02: $07
	ld hl, $01c0                                     ; $6c03: $21 $c0 $01
	and b                                            ; $6c06: $a0
	ld bc, $3007                                     ; $6c07: $01 $07 $30
	ret nz                                           ; $6c0a: $c0

	ld bc, $03a0                                     ; $6c0b: $01 $a0 $03
	rlca                                             ; $6c0e: $07
	add l                                            ; $6c0f: $85
	nop                                              ; $6c10: $00
	add b                                            ; $6c11: $80

jr_083_6c12:
	nop                                              ; $6c12: $00
	ld [hl], l                                       ; $6c13: $75
	pop bc                                           ; $6c14: $c1
	ld e, e                                          ; $6c15: $5b
	rst $38                                          ; $6c16: $ff
	inc bc                                           ; $6c17: $03
	ldh [rTIMA], a                                   ; $6c18: $e0 $05
	sub c                                            ; $6c1a: $91
	ld bc, $80d4                                     ; $6c1b: $01 $d4 $80
	ret nz                                           ; $6c1e: $c0

	ld bc, $03a0                                     ; $6c1f: $01 $a0 $03
	inc bc                                           ; $6c22: $03
	cp $60                                           ; $6c23: $fe $60
	rst $38                                          ; $6c25: $ff
	ld b, $80                                        ; $6c26: $06 $80
	nop                                              ; $6c28: $00
	ld [hl], h                                       ; $6c29: $74
	add b                                            ; $6c2a: $80
	nop                                              ; $6c2b: $00
	ld [hl], l                                       ; $6c2c: $75
	ld b, $e0                                        ; $6c2d: $06 $e0
	nop                                              ; $6c2f: $00
	sub b                                            ; $6c30: $90
	ldh [rP1], a                                     ; $6c31: $e0 $00
	sub h                                            ; $6c33: $94
	ld b, $c0                                        ; $6c34: $06 $c0
	ld bc, $01a0                                     ; $6c36: $01 $a0 $01
	ld b, $d2                                        ; $6c39: $06 $d2
	ret nz                                           ; $6c3b: $c0

	ld bc, $03a0                                     ; $6c3c: $01 $a0 $03
	rlca                                             ; $6c3f: $07
	ld b, l                                          ; $6c40: $45
	ret nz                                           ; $6c41: $c0

	ld bc, $01a0                                     ; $6c42: $01 $a0 $01
	rlca                                             ; $6c45: $07
	adc a                                            ; $6c46: $8f
	ld h, b                                          ; $6c47: $60
	rst $38                                          ; $6c48: $ff
	ld b, $80                                        ; $6c49: $06 $80
	nop                                              ; $6c4b: $00
	ld [hl], h                                       ; $6c4c: $74
	add b                                            ; $6c4d: $80
	nop                                              ; $6c4e: $00
	ld [hl], l                                       ; $6c4f: $75
	jr nz, jr_083_6c12                               ; $6c50: $20 $c0

	ld bc, $03a0                                     ; $6c52: $01 $a0 $03
	inc b                                            ; $6c55: $04
	jp nc, $01c0                                     ; $6c56: $d2 $c0 $01

	and b                                            ; $6c59: $a0
	ld bc, $fa06                                     ; $6c5a: $01 $06 $fa
	ret nz                                           ; $6c5d: $c0

	ld bc, $03a0                                     ; $6c5e: $01 $a0 $03
	rlca                                             ; $6c61: $07
	sub e                                            ; $6c62: $93
	ret nz                                           ; $6c63: $c0

	ld bc, $01a0                                     ; $6c64: $01 $a0 $01
	rlca                                             ; $6c67: $07
	dec bc                                           ; $6c68: $0b
	ret nz                                           ; $6c69: $c0

	ld bc, $03a0                                     ; $6c6a: $01 $a0 $03
	rlca                                             ; $6c6d: $07
	sbc a                                            ; $6c6e: $9f
	pop bc                                           ; $6c6f: $c1
	ld e, e                                          ; $6c70: $5b
	inc l                                            ; $6c71: $2c
	or b                                             ; $6c72: $b0
	ld a, a                                          ; $6c73: $7f
	inc h                                            ; $6c74: $24
	ret nz                                           ; $6c75: $c0

	ld bc, $03a0                                     ; $6c76: $01 $a0 $03
	inc b                                            ; $6c79: $04
	jp nc, $01c0                                     ; $6c7a: $d2 $c0 $01

	and b                                            ; $6c7d: $a0
	ld bc, $fa06                                     ; $6c7e: $01 $06 $fa
	ret nz                                           ; $6c81: $c0

	ld bc, $03a0                                     ; $6c82: $01 $a0 $03
	rlca                                             ; $6c85: $07
	ld hl, $01c0                                     ; $6c86: $21 $c0 $01
	and b                                            ; $6c89: $a0
	ld bc, $3007                                     ; $6c8a: $01 $07 $30
	ret nz                                           ; $6c8d: $c0

	ld bc, $03a0                                     ; $6c8e: $01 $a0 $03
	rlca                                             ; $6c91: $07
	sbc a                                            ; $6c92: $9f
	nop                                              ; $6c93: $00
	add b                                            ; $6c94: $80
	nop                                              ; $6c95: $00
	ld [hl], l                                       ; $6c96: $75
	pop bc                                           ; $6c97: $c1
	ld e, e                                          ; $6c98: $5b
	rst $38                                          ; $6c99: $ff
	inc bc                                           ; $6c9a: $03
	ldh [rTIMA], a                                   ; $6c9b: $e0 $05
	ld c, $01                                        ; $6c9d: $0e $01
	push de                                          ; $6c9f: $d5
	ld a, [de]                                       ; $6ca0: $1a
	ret nz                                           ; $6ca1: $c0

	ld bc, $03a0                                     ; $6ca2: $01 $a0 $03
	inc b                                            ; $6ca5: $04
	dec e                                            ; $6ca6: $1d
	ret nz                                           ; $6ca7: $c0

	ld bc, $01a0                                     ; $6ca8: $01 $a0 $01
	rlca                                             ; $6cab: $07
	and e                                            ; $6cac: $a3
	ret nz                                           ; $6cad: $c0

	ld bc, $03a0                                     ; $6cae: $01 $a0 $03
	rlca                                             ; $6cb1: $07
	xor h                                            ; $6cb2: $ac
	pop bc                                           ; $6cb3: $c1
	ld e, e                                          ; $6cb4: $5b
	ret nz                                           ; $6cb5: $c0

	ld bc, $01a0                                     ; $6cb6: $01 $a0 $01
	rlca                                             ; $6cb9: $07
	or [hl]                                          ; $6cba: $b6
	push hl                                          ; $6cbb: $e5
	inc sp                                           ; $6cbc: $33
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	ld b, $c0                                        ; $6cbf: $06 $c0
	ld bc, $01a0                                     ; $6cc1: $01 $a0 $01
	rlca                                             ; $6cc4: $07
	cp [hl]                                          ; $6cc5: $be
	inc c                                            ; $6cc6: $0c
	ret nz                                           ; $6cc7: $c0

	ld bc, $03a0                                     ; $6cc8: $01 $a0 $03
	rlca                                             ; $6ccb: $07
	set 0, b                                         ; $6ccc: $cb $c0
	ld bc, $01a0                                     ; $6cce: $01 $a0 $01
	dec b                                            ; $6cd1: $05
	xor l                                            ; $6cd2: $ad
	add hl, bc                                       ; $6cd3: $09
	ld hl, $21c0                                     ; $6cd4: $21 $c0 $21
	jp nc, $82d1                                     ; $6cd7: $d2 $d1 $82

	ret nz                                           ; $6cda: $c0

	add b                                            ; $6cdb: $80
	ld bc, $03d3                                     ; $6cdc: $01 $d3 $03
	db $e4                                           ; $6cdf: $e4
	ld [bc], a                                       ; $6ce0: $02
	ldh [rSB], a                                     ; $6ce1: $e0 $01
	jp nc, $c007                                     ; $6ce3: $d2 $07 $c0

	ld [hl+], a                                      ; $6ce6: $22
	jp nc, $e4d1                                     ; $6ce7: $d2 $d1 $e4

	ld bc, $017d                                     ; $6cea: $01 $7d $01
	pop de                                           ; $6ced: $d1
	rlca                                             ; $6cee: $07
	ret nz                                           ; $6cef: $c0

	ld [hl+], a                                      ; $6cf0: $22
	pop de                                           ; $6cf1: $d1
	pop de                                           ; $6cf2: $d1
	db $e4                                           ; $6cf3: $e4
	nop                                              ; $6cf4: $00
	ld [bc], a                                       ; $6cf5: $02
	add hl, bc                                       ; $6cf6: $09
	pop bc                                           ; $6cf7: $c1
	ld l, [hl]                                       ; $6cf8: $6e
	add e                                            ; $6cf9: $83
	ret nz                                           ; $6cfa: $c0

	dec de                                           ; $6cfb: $1b
	pop de                                           ; $6cfc: $d1
	ld [bc], a                                       ; $6cfd: $02
	ret nc                                           ; $6cfe: $d0

	pop de                                           ; $6cff: $d1
	ld h, e                                          ; $6d00: $63
	pop hl                                           ; $6d01: $e1
	ld [bc], a                                       ; $6d02: $02
	ld bc, $c008                                     ; $6d03: $01 $08 $c0
	ld bc, $03a0                                     ; $6d06: $01 $a0 $03
	inc bc                                           ; $6d09: $03
	dec [hl]                                         ; $6d0a: $35
	ret nz                                           ; $6d0b: $c0

	ld bc, $01a0                                     ; $6d0c: $01 $a0 $01
	rlca                                             ; $6d0f: $07
	jp nc, $01c0                                     ; $6d10: $d2 $c0 $01

	and b                                            ; $6d13: $a0
	inc bc                                           ; $6d14: $03
	rlca                                             ; $6d15: $07
	reti                                             ; $6d16: $d9


	ret nz                                           ; $6d17: $c0

	ld bc, $01a0                                     ; $6d18: $01 $a0 $01
	rlca                                             ; $6d1b: $07
	and $c0                                          ; $6d1c: $e6 $c0
	ld bc, $03a0                                     ; $6d1e: $01 $a0 $03
	rlca                                             ; $6d21: $07
	pop af                                           ; $6d22: $f1
	ret nz                                           ; $6d23: $c0

	ld bc, $01a0                                     ; $6d24: $01 $a0 $01
	rlca                                             ; $6d27: $07
	rst FarCall                                          ; $6d28: $f7
	ld h, b                                          ; $6d29: $60
	rst $38                                          ; $6d2a: $ff
	ld b, $80                                        ; $6d2b: $06 $80
	nop                                              ; $6d2d: $00
	ld [hl], h                                       ; $6d2e: $74
	add b                                            ; $6d2f: $80
	nop                                              ; $6d30: $00
	ld [hl], l                                       ; $6d31: $75
	ld [de], a                                       ; $6d32: $12
	ret nz                                           ; $6d33: $c0

	ld bc, $03a0                                     ; $6d34: $01 $a0 $03
	inc bc                                           ; $6d37: $03
	ld a, c                                          ; $6d38: $79
	ldh [rDIV], a                                    ; $6d39: $e0 $04
	rlca                                             ; $6d3b: $07
	ret nz                                           ; $6d3c: $c0

	ld bc, $01a0                                     ; $6d3d: $01 $a0 $01
	ld [$e002], sp                                   ; $6d40: $08 $02 $e0
	inc b                                            ; $6d43: $04
	dec hl                                           ; $6d44: $2b
	ld e, $b0                                        ; $6d45: $1e $b0
	ld a, a                                          ; $6d47: $7f
	ld d, $c0                                        ; $6d48: $16 $c0
	ld bc, $03a0                                     ; $6d4a: $01 $a0 $03
	inc bc                                           ; $6d4d: $03
	ld a, c                                          ; $6d4e: $79
	ldh [$03], a                                     ; $6d4f: $e0 $03
	pop af                                           ; $6d51: $f1
	ret nz                                           ; $6d52: $c0

	ld bc, $01a0                                     ; $6d53: $01 $a0 $01
	inc bc                                           ; $6d56: $03
	sbc [hl]                                         ; $6d57: $9e
	ldh [rDIV], a                                    ; $6d58: $e0 $04
	dec d                                            ; $6d5a: $15

jr_083_6d5b:
	nop                                              ; $6d5b: $00
	add b                                            ; $6d5c: $80
	nop                                              ; $6d5d: $00
	ld [hl], l                                       ; $6d5e: $75
	rst $38                                          ; $6d5f: $ff
	inc bc                                           ; $6d60: $03
	ldh [rDIV], a                                    ; $6d61: $e0 $04
	ld hl, $d202                                     ; $6d63: $21 $02 $d2
	db $d3                                           ; $6d66: $d3
	ld a, a                                          ; $6d67: $7f
	pop hl                                           ; $6d68: $e1
	ld [bc], a                                       ; $6d69: $02
	ld bc, $c008                                     ; $6d6a: $01 $08 $c0
	ld bc, $03a0                                     ; $6d6d: $01 $a0 $03
	inc bc                                           ; $6d70: $03
	cp $c0                                           ; $6d71: $fe $c0
	ld bc, $01a0                                     ; $6d73: $01 $a0 $01
	rlca                                             ; $6d76: $07
	jp nc, $01c0                                     ; $6d77: $d2 $c0 $01

	and b                                            ; $6d7a: $a0
	inc bc                                           ; $6d7b: $03
	ld [$c00c], sp                                   ; $6d7c: $08 $0c $c0
	ld bc, $01a0                                     ; $6d7f: $01 $a0 $01
	ld [$c016], sp                                   ; $6d82: $08 $16 $c0
	ld bc, $03a0                                     ; $6d85: $01 $a0 $03
	ld [$c029], sp                                   ; $6d88: $08 $29 $c0
	ld bc, $01a0                                     ; $6d8b: $01 $a0 $01
	ld [$6033], sp                                   ; $6d8e: $08 $33 $60
	rst $38                                          ; $6d91: $ff
	ld b, $80                                        ; $6d92: $06 $80
	nop                                              ; $6d94: $00
	ld [hl], h                                       ; $6d95: $74
	add b                                            ; $6d96: $80
	nop                                              ; $6d97: $00
	ld [hl], l                                       ; $6d98: $75
	jr nz, jr_083_6d5b                               ; $6d99: $20 $c0

	ld bc, $03a0                                     ; $6d9b: $01 $a0 $03
	inc bc                                           ; $6d9e: $03
	ret nc                                           ; $6d9f: $d0

	ret nz                                           ; $6da0: $c0

	ld bc, $01a0                                     ; $6da1: $01 $a0 $01
	inc bc                                           ; $6da4: $03
	and $c0                                          ; $6da5: $e6 $c0
	ld bc, $03a0                                     ; $6da7: $01 $a0 $03
	ld [$c03f], sp                                   ; $6daa: $08 $3f $c0
	ld bc, $01a0                                     ; $6dad: $01 $a0 $01
	ld [$c002], sp                                   ; $6db0: $08 $02 $c0
	ld bc, $03a0                                     ; $6db3: $01 $a0 $03
	inc b                                            ; $6db6: $04
	jp hl                                            ; $6db7: $e9


	pop bc                                           ; $6db8: $c1
	ld e, e                                          ; $6db9: $5b
	inc l                                            ; $6dba: $2c
	or b                                             ; $6dbb: $b0
	ld a, a                                          ; $6dbc: $7f
	inc h                                            ; $6dbd: $24
	ret nz                                           ; $6dbe: $c0

	ld bc, $03a0                                     ; $6dbf: $01 $a0 $03
	inc bc                                           ; $6dc2: $03
	ret nc                                           ; $6dc3: $d0

	ret nz                                           ; $6dc4: $c0

	ld bc, $01a0                                     ; $6dc5: $01 $a0 $01
	inc bc                                           ; $6dc8: $03
	and $c0                                          ; $6dc9: $e6 $c0
	ld bc, $03a0                                     ; $6dcb: $01 $a0 $03
	ld [$c03f], sp                                   ; $6dce: $08 $3f $c0

jr_083_6dd1:
	ld bc, $01a0                                     ; $6dd1: $01 $a0 $01
	inc bc                                           ; $6dd4: $03
	sbc [hl]                                         ; $6dd5: $9e
	ret nz                                           ; $6dd6: $c0

	ld bc, $03a0                                     ; $6dd7: $01 $a0 $03
	inc b                                            ; $6dda: $04
	jp hl                                            ; $6ddb: $e9


	nop                                              ; $6ddc: $00
	add b                                            ; $6ddd: $80
	nop                                              ; $6dde: $00
	ld [hl], l                                       ; $6ddf: $75
	pop bc                                           ; $6de0: $c1
	ld e, e                                          ; $6de1: $5b
	rst $38                                          ; $6de2: $ff
	inc bc                                           ; $6de3: $03
	ldh [$03], a                                     ; $6de4: $e0 $03
	push bc                                          ; $6de6: $c5
	ld bc, $73d4                                     ; $6de7: $01 $d4 $73
	pop hl                                           ; $6dea: $e1
	ld [bc], a                                       ; $6deb: $02
	ld bc, $c008                                     ; $6dec: $01 $08 $c0
	ld bc, $03a0                                     ; $6def: $01 $a0 $03
	inc bc                                           ; $6df2: $03
	cp $c0                                           ; $6df3: $fe $c0
	ld bc, $01a0                                     ; $6df5: $01 $a0 $01
	ld [$c048], sp                                   ; $6df8: $08 $48 $c0
	ld bc, $03a0                                     ; $6dfb: $01 $a0 $03
	ld [$c00c], sp                                   ; $6dfe: $08 $0c $c0
	ld bc, $01a0                                     ; $6e01: $01 $a0 $01
	ld [$604f], sp                                   ; $6e04: $08 $4f $60
	rst $38                                          ; $6e07: $ff
	ld b, $80                                        ; $6e08: $06 $80
	nop                                              ; $6e0a: $00
	ld [hl], h                                       ; $6e0b: $74
	add b                                            ; $6e0c: $80
	nop                                              ; $6e0d: $00
	ld [hl], l                                       ; $6e0e: $75
	jr nz, jr_083_6dd1                               ; $6e0f: $20 $c0

	ld bc, $03a0                                     ; $6e11: $01 $a0 $03
	inc bc                                           ; $6e14: $03
	ret nc                                           ; $6e15: $d0

	ret nz                                           ; $6e16: $c0

	ld bc, $01a0                                     ; $6e17: $01 $a0 $01
	inc bc                                           ; $6e1a: $03
	and $c0                                          ; $6e1b: $e6 $c0
	ld bc, $03a0                                     ; $6e1d: $01 $a0 $03
	ld [$c061], sp                                   ; $6e20: $08 $61 $c0
	ld bc, $01a0                                     ; $6e23: $01 $a0 $01
	ld [$c002], sp                                   ; $6e26: $08 $02 $c0
	ld bc, $03a0                                     ; $6e29: $01 $a0 $03
	ld [$c16a], sp                                   ; $6e2c: $08 $6a $c1
	ld e, e                                          ; $6e2f: $5b
	inc l                                            ; $6e30: $2c
	or b                                             ; $6e31: $b0
	ld a, a                                          ; $6e32: $7f
	inc h                                            ; $6e33: $24
	ret nz                                           ; $6e34: $c0

	ld bc, $03a0                                     ; $6e35: $01 $a0 $03
	inc bc                                           ; $6e38: $03
	ret nc                                           ; $6e39: $d0

	ret nz                                           ; $6e3a: $c0

	ld bc, $01a0                                     ; $6e3b: $01 $a0 $01
	inc bc                                           ; $6e3e: $03
	and $c0                                          ; $6e3f: $e6 $c0
	ld bc, $03a0                                     ; $6e41: $01 $a0 $03
	ld [$c061], sp                                   ; $6e44: $08 $61 $c0
	ld bc, $01a0                                     ; $6e47: $01 $a0 $01
	inc bc                                           ; $6e4a: $03
	sbc [hl]                                         ; $6e4b: $9e
	ret nz                                           ; $6e4c: $c0

	ld bc, $03a0                                     ; $6e4d: $01 $a0 $03
	ld [$006a], sp                                   ; $6e50: $08 $6a $00
	add b                                            ; $6e53: $80
	nop                                              ; $6e54: $00
	ld [hl], l                                       ; $6e55: $75
	pop bc                                           ; $6e56: $c1
	ld e, e                                          ; $6e57: $5b
	rst $38                                          ; $6e58: $ff
	inc bc                                           ; $6e59: $03
	ldh [$03], a                                     ; $6e5a: $e0 $03
	ld c, a                                          ; $6e5c: $4f
	ld bc, $03d5                                     ; $6e5d: $01 $d5 $03
	ldh [rSC], a                                     ; $6e60: $e0 $02
	cp h                                             ; $6e62: $bc
	push hl                                          ; $6e63: $e5
	inc sp                                           ; $6e64: $33
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	add hl, bc                                       ; $6e67: $09
	pop bc                                           ; $6e68: $c1
	ld d, [hl]                                       ; $6e69: $56
	add e                                            ; $6e6a: $83
	ret nz                                           ; $6e6b: $c0

	dec de                                           ; $6e6c: $1b
	pop de                                           ; $6e6d: $d1
	ld [bc], a                                       ; $6e6e: $02
	ret nc                                           ; $6e6f: $d0

	pop de                                           ; $6e70: $d1
	ld d, a                                          ; $6e71: $57
	pop hl                                           ; $6e72: $e1
	ld [bc], a                                       ; $6e73: $02
	ld bc, $c008                                     ; $6e74: $01 $08 $c0
	ld bc, $03a0                                     ; $6e77: $01 $a0 $03
	inc bc                                           ; $6e7a: $03
	dec [hl]                                         ; $6e7b: $35
	ret nz                                           ; $6e7c: $c0

	ld bc, $01a0                                     ; $6e7d: $01 $a0 $01
	ld [$c070], sp                                   ; $6e80: $08 $70 $c0
	ld bc, $03a0                                     ; $6e83: $01 $a0 $03
	ld [$c077], sp                                   ; $6e86: $08 $77 $c0
	ld bc, $01a0                                     ; $6e89: $01 $a0 $01
	ld [$6081], sp                                   ; $6e8c: $08 $81 $60
	rst $38                                          ; $6e8f: $ff
	ld b, $80                                        ; $6e90: $06 $80
	nop                                              ; $6e92: $00
	ld [hl], h                                       ; $6e93: $74
	add b                                            ; $6e94: $80
	nop                                              ; $6e95: $00
	ld [hl], l                                       ; $6e96: $75
	ld [de], a                                       ; $6e97: $12
	ret nz                                           ; $6e98: $c0

	ld bc, $03a0                                     ; $6e99: $01 $a0 $03
	inc bc                                           ; $6e9c: $03
	ld a, c                                          ; $6e9d: $79
	ldh [rSC], a                                     ; $6e9e: $e0 $02
	and d                                            ; $6ea0: $a2
	ret nz                                           ; $6ea1: $c0

	ld bc, $01a0                                     ; $6ea2: $01 $a0 $01
	ld [$e002], sp                                   ; $6ea5: $08 $02 $e0
	ld [bc], a                                       ; $6ea8: $02
	add $1e                                          ; $6ea9: $c6 $1e
	or b                                             ; $6eab: $b0
	ld a, a                                          ; $6eac: $7f
	ld d, $c0                                        ; $6ead: $16 $c0
	ld bc, $03a0                                     ; $6eaf: $01 $a0 $03
	inc bc                                           ; $6eb2: $03
	ld a, c                                          ; $6eb3: $79

jr_083_6eb4:
	ldh [rSC], a                                     ; $6eb4: $e0 $02
	adc h                                            ; $6eb6: $8c
	ret nz                                           ; $6eb7: $c0

	ld bc, $01a0                                     ; $6eb8: $01 $a0 $01
	inc bc                                           ; $6ebb: $03
	sbc [hl]                                         ; $6ebc: $9e
	ldh [rSC], a                                     ; $6ebd: $e0 $02
	or b                                             ; $6ebf: $b0
	nop                                              ; $6ec0: $00
	add b                                            ; $6ec1: $80
	nop                                              ; $6ec2: $00
	ld [hl], l                                       ; $6ec3: $75
	rst $38                                          ; $6ec4: $ff
	inc bc                                           ; $6ec5: $03
	ldh [rSC], a                                     ; $6ec6: $e0 $02
	cp h                                             ; $6ec8: $bc
	ld [bc], a                                       ; $6ec9: $02
	jp nc, Jump_083_73d3                             ; $6eca: $d2 $d3 $73

	pop hl                                           ; $6ecd: $e1
	ld [bc], a                                       ; $6ece: $02
	ld bc, $c008                                     ; $6ecf: $01 $08 $c0
	ld bc, $03a0                                     ; $6ed2: $01 $a0 $03
	inc bc                                           ; $6ed5: $03
	cp $c0                                           ; $6ed6: $fe $c0
	ld bc, $01a0                                     ; $6ed8: $01 $a0 $01
	ld [$c070], sp                                   ; $6edb: $08 $70 $c0
	ld bc, $03a0                                     ; $6ede: $01 $a0 $03
	ld [$c08b], sp                                   ; $6ee1: $08 $8b $c0
	ld bc, $01a0                                     ; $6ee4: $01 $a0 $01
	ld [$6096], sp                                   ; $6ee7: $08 $96 $60
	rst $38                                          ; $6eea: $ff
	ld b, $80                                        ; $6eeb: $06 $80
	nop                                              ; $6eed: $00
	ld [hl], h                                       ; $6eee: $74
	add b                                            ; $6eef: $80
	nop                                              ; $6ef0: $00
	ld [hl], l                                       ; $6ef1: $75
	jr nz, jr_083_6eb4                               ; $6ef2: $20 $c0

	ld bc, $03a0                                     ; $6ef4: $01 $a0 $03
	inc bc                                           ; $6ef7: $03
	ret nc                                           ; $6ef8: $d0

	ret nz                                           ; $6ef9: $c0

	ld bc, $01a0                                     ; $6efa: $01 $a0 $01
	inc bc                                           ; $6efd: $03
	and $c0                                          ; $6efe: $e6 $c0
	ld bc, $03a0                                     ; $6f00: $01 $a0 $03
	ld [$c03f], sp                                   ; $6f03: $08 $3f $c0
	ld bc, $01a0                                     ; $6f06: $01 $a0 $01
	ld [$c002], sp                                   ; $6f09: $08 $02 $c0
	ld bc, $03a0                                     ; $6f0c: $01 $a0 $03
	inc b                                            ; $6f0f: $04
	jp hl                                            ; $6f10: $e9


	pop bc                                           ; $6f11: $c1
	ld e, e                                          ; $6f12: $5b
	inc l                                            ; $6f13: $2c
	or b                                             ; $6f14: $b0
	ld a, a                                          ; $6f15: $7f
	inc h                                            ; $6f16: $24
	ret nz                                           ; $6f17: $c0

	ld bc, $03a0                                     ; $6f18: $01 $a0 $03
	inc bc                                           ; $6f1b: $03
	ret nc                                           ; $6f1c: $d0

	ret nz                                           ; $6f1d: $c0

	ld bc, $01a0                                     ; $6f1e: $01 $a0 $01
	inc bc                                           ; $6f21: $03
	and $c0                                          ; $6f22: $e6 $c0
	ld bc, $03a0                                     ; $6f24: $01 $a0 $03
	ld [$c03f], sp                                   ; $6f27: $08 $3f $c0

jr_083_6f2a:
	ld bc, $01a0                                     ; $6f2a: $01 $a0 $01
	inc bc                                           ; $6f2d: $03
	sbc [hl]                                         ; $6f2e: $9e
	ret nz                                           ; $6f2f: $c0

	ld bc, $03a0                                     ; $6f30: $01 $a0 $03
	inc b                                            ; $6f33: $04
	jp hl                                            ; $6f34: $e9


	nop                                              ; $6f35: $00
	add b                                            ; $6f36: $80
	nop                                              ; $6f37: $00
	ld [hl], l                                       ; $6f38: $75
	pop bc                                           ; $6f39: $c1
	ld e, e                                          ; $6f3a: $5b
	rst $38                                          ; $6f3b: $ff
	inc bc                                           ; $6f3c: $03
	ldh [rSC], a                                     ; $6f3d: $e0 $02
	ld l, h                                          ; $6f3f: $6c
	ld bc, $73d4                                     ; $6f40: $01 $d4 $73
	pop hl                                           ; $6f43: $e1
	ld [bc], a                                       ; $6f44: $02
	ld bc, $c008                                     ; $6f45: $01 $08 $c0
	ld bc, $03a0                                     ; $6f48: $01 $a0 $03
	inc bc                                           ; $6f4b: $03
	cp $c0                                           ; $6f4c: $fe $c0
	ld bc, $01a0                                     ; $6f4e: $01 $a0 $01
	ld [$c070], sp                                   ; $6f51: $08 $70 $c0
	ld bc, $03a0                                     ; $6f54: $01 $a0 $03
	ld [$c09f], sp                                   ; $6f57: $08 $9f $c0
	ld bc, $01a0                                     ; $6f5a: $01 $a0 $01
	ld [$60ab], sp                                   ; $6f5d: $08 $ab $60
	rst $38                                          ; $6f60: $ff
	ld b, $80                                        ; $6f61: $06 $80
	nop                                              ; $6f63: $00
	ld [hl], h                                       ; $6f64: $74
	add b                                            ; $6f65: $80
	nop                                              ; $6f66: $00
	ld [hl], l                                       ; $6f67: $75
	jr nz, jr_083_6f2a                               ; $6f68: $20 $c0

	ld bc, $03a0                                     ; $6f6a: $01 $a0 $03
	inc bc                                           ; $6f6d: $03
	ret nc                                           ; $6f6e: $d0

	ret nz                                           ; $6f6f: $c0

	ld bc, $01a0                                     ; $6f70: $01 $a0 $01
	inc bc                                           ; $6f73: $03
	and $c0                                          ; $6f74: $e6 $c0
	ld bc, $03a0                                     ; $6f76: $01 $a0 $03
	ld [$c061], sp                                   ; $6f79: $08 $61 $c0
	ld bc, $01a0                                     ; $6f7c: $01 $a0 $01
	ld [$c002], sp                                   ; $6f7f: $08 $02 $c0
	ld bc, $03a0                                     ; $6f82: $01 $a0 $03
	ld [$c16a], sp                                   ; $6f85: $08 $6a $c1
	ld e, e                                          ; $6f88: $5b
	inc l                                            ; $6f89: $2c
	or b                                             ; $6f8a: $b0
	ld a, a                                          ; $6f8b: $7f
	inc h                                            ; $6f8c: $24
	ret nz                                           ; $6f8d: $c0

	ld bc, $03a0                                     ; $6f8e: $01 $a0 $03
	inc bc                                           ; $6f91: $03
	ret nc                                           ; $6f92: $d0

	ret nz                                           ; $6f93: $c0

	ld bc, $01a0                                     ; $6f94: $01 $a0 $01
	inc bc                                           ; $6f97: $03
	and $c0                                          ; $6f98: $e6 $c0
	ld bc, $03a0                                     ; $6f9a: $01 $a0 $03
	ld [$c061], sp                                   ; $6f9d: $08 $61 $c0
	ld bc, $01a0                                     ; $6fa0: $01 $a0 $01
	inc bc                                           ; $6fa3: $03
	sbc [hl]                                         ; $6fa4: $9e
	ret nz                                           ; $6fa5: $c0

	ld bc, $03a0                                     ; $6fa6: $01 $a0 $03
	ld [$006a], sp                                   ; $6fa9: $08 $6a $00
	add b                                            ; $6fac: $80
	nop                                              ; $6fad: $00
	ld [hl], l                                       ; $6fae: $75
	pop bc                                           ; $6faf: $c1
	ld e, e                                          ; $6fb0: $5b
	rst $38                                          ; $6fb1: $ff
	inc bc                                           ; $6fb2: $03
	ldh [rSB], a                                     ; $6fb3: $e0 $01
	or $01                                           ; $6fb5: $f6 $01
	push de                                          ; $6fb7: $d5
	inc bc                                           ; $6fb8: $03
	ldh [rSB], a                                     ; $6fb9: $e0 $01
	ld h, e                                          ; $6fbb: $63
	push hl                                          ; $6fbc: $e5
	inc sp                                           ; $6fbd: $33
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	add hl, bc                                       ; $6fc0: $09
	pop bc                                           ; $6fc1: $c1
	ld e, d                                          ; $6fc2: $5a
	add e                                            ; $6fc3: $83
	ret nz                                           ; $6fc4: $c0

	dec de                                           ; $6fc5: $1b
	pop de                                           ; $6fc6: $d1
	ld [bc], a                                       ; $6fc7: $02
	ret nc                                           ; $6fc8: $d0

	pop de                                           ; $6fc9: $d1
	ld h, a                                          ; $6fca: $67
	pop hl                                           ; $6fcb: $e1
	ld [bc], a                                       ; $6fcc: $02
	ld bc, $c008                                     ; $6fcd: $01 $08 $c0
	ld bc, $03a0                                     ; $6fd0: $01 $a0 $03
	inc bc                                           ; $6fd3: $03
	dec [hl]                                         ; $6fd4: $35
	ret nz                                           ; $6fd5: $c0

	ld bc, $01a0                                     ; $6fd6: $01 $a0 $01
	ld [$c048], sp                                   ; $6fd9: $08 $48 $c0
	ld bc, $03a0                                     ; $6fdc: $01 $a0 $03
	ld [$c0b0], sp                                   ; $6fdf: $08 $b0 $c0
	ld bc, $01a0                                     ; $6fe2: $01 $a0 $01
	ld [$60bb], sp                                   ; $6fe5: $08 $bb $60
	rst $38                                          ; $6fe8: $ff
	ld b, $80                                        ; $6fe9: $06 $80
	nop                                              ; $6feb: $00
	ld [hl], h                                       ; $6fec: $74
	add b                                            ; $6fed: $80
	nop                                              ; $6fee: $00
	ld [hl], l                                       ; $6fef: $75
	ld de, $01c0                                     ; $6ff0: $11 $c0 $01
	and b                                            ; $6ff3: $a0
	inc bc                                           ; $6ff4: $03
	inc bc                                           ; $6ff5: $03
	ld a, c                                          ; $6ff6: $79
	ldh [rSB], a                                     ; $6ff7: $e0 $01
	ld d, [hl]                                       ; $6ff9: $56
	ret nz                                           ; $6ffa: $c0

	ld bc, $03a0                                     ; $6ffb: $01 $a0 $03
	ld [$c1c1], sp                                   ; $6ffe: $08 $c1 $c1
	ld e, e                                          ; $7001: $5b
	cpl                                              ; $7002: $2f
	or b                                             ; $7003: $b0
	ld a, a                                          ; $7004: $7f
	daa                                              ; $7005: $27
	ret nz                                           ; $7006: $c0

	ld bc, $03a0                                     ; $7007: $01 $a0 $03
	inc bc                                           ; $700a: $03
	ld a, c                                          ; $700b: $79
	ret nz                                           ; $700c: $c0

	ld bc, $01a0                                     ; $700d: $01 $a0 $01
	inc bc                                           ; $7010: $03
	and $e0                                          ; $7011: $e6 $e0
	ld bc, $c04e                                     ; $7013: $01 $4e $c0
	ld bc, $03a0                                     ; $7016: $01 $a0 $03
	ld [$c0d0], sp                                   ; $7019: $08 $d0 $c0
	ld bc, $01a0                                     ; $701c: $01 $a0 $01
	ld [$c0d5], sp                                   ; $701f: $08 $d5 $c0
	ld bc, $03a0                                     ; $7022: $01 $a0 $03
	ld [$00c1], sp                                   ; $7025: $08 $c1 $00
	add b                                            ; $7028: $80
	nop                                              ; $7029: $00
	ld [hl], l                                       ; $702a: $75
	pop bc                                           ; $702b: $c1
	ld e, e                                          ; $702c: $5b
	rst $38                                          ; $702d: $ff
	inc bc                                           ; $702e: $03
	ldh [rSB], a                                     ; $702f: $e0 $01
	ld d, e                                          ; $7031: $53
	ld [bc], a                                       ; $7032: $02
	jp nc, Jump_083_73d3                             ; $7033: $d2 $d3 $73

	pop hl                                           ; $7036: $e1
	ld [bc], a                                       ; $7037: $02
	ld bc, $c008                                     ; $7038: $01 $08 $c0
	ld bc, $03a0                                     ; $703b: $01 $a0 $03
	inc bc                                           ; $703e: $03
	cp $c0                                           ; $703f: $fe $c0
	ld bc, $01a0                                     ; $7041: $01 $a0 $01
	ld [$c048], sp                                   ; $7044: $08 $48 $c0
	ld bc, $03a0                                     ; $7047: $01 $a0 $03
	ld [wGenericTileDataDest], sp                                   ; $704a: $08 $e2 $c0
	ld bc, $01a0                                     ; $704d: $01 $a0 $01
	ld [$c0ee], sp                                   ; $7050: $08 $ee $c0
	ld bc, $03a0                                     ; $7053: $01 $a0 $03
	ld [$c0f9], sp                                   ; $7056: $08 $f9 $c0
	ld bc, $01a0                                     ; $7059: $01 $a0 $01
	ld [$6033], sp                                   ; $705c: $08 $33 $60
	rst $38                                          ; $705f: $ff
	ld b, $80                                        ; $7060: $06 $80
	nop                                              ; $7062: $00
	ld [hl], h                                       ; $7063: $74
	add b                                            ; $7064: $80
	nop                                              ; $7065: $00
	ld [hl], l                                       ; $7066: $75
	ld de, $01c0                                     ; $7067: $11 $c0 $01
	and b                                            ; $706a: $a0
	inc bc                                           ; $706b: $03
	inc bc                                           ; $706c: $03
	ret nc                                           ; $706d: $d0

	ldh [rP1], a                                     ; $706e: $e0 $00
	rst SubAFromDE                                          ; $7070: $df
	ret nz                                           ; $7071: $c0

	ld bc, $03a0                                     ; $7072: $01 $a0 $03
	add hl, bc                                       ; $7075: $09
	ld bc, $5bc1                                     ; $7076: $01 $c1 $5b
	cpl                                              ; $7079: $2f
	or b                                             ; $707a: $b0
	ld a, a                                          ; $707b: $7f
	daa                                              ; $707c: $27
	ret nz                                           ; $707d: $c0

	ld bc, $03a0                                     ; $707e: $01 $a0 $03
	inc bc                                           ; $7081: $03
	ret nc                                           ; $7082: $d0

	ret nz                                           ; $7083: $c0

	ld bc, $01a0                                     ; $7084: $01 $a0 $01
	inc bc                                           ; $7087: $03
	and $e0                                          ; $7088: $e6 $e0
	nop                                              ; $708a: $00
	rst SubAFromHL                                          ; $708b: $d7
	ret nz                                           ; $708c: $c0

	ld bc, $03a0                                     ; $708d: $01 $a0 $03
	ld [$c0d0], sp                                   ; $7090: $08 $d0 $c0
	ld bc, $01a0                                     ; $7093: $01 $a0 $01
	ld [$c0d5], sp                                   ; $7096: $08 $d5 $c0
	ld bc, $03a0                                     ; $7099: $01 $a0 $03
	add hl, bc                                       ; $709c: $09
	ld bc, $8000                                     ; $709d: $01 $00 $80
	nop                                              ; $70a0: $00
	ld [hl], l                                       ; $70a1: $75
	pop bc                                           ; $70a2: $c1
	ld e, e                                          ; $70a3: $5b
	rst $38                                          ; $70a4: $ff
	inc bc                                           ; $70a5: $03
	ldh [rSB], a                                     ; $70a6: $e0 $01
	inc bc                                           ; $70a8: $03
	ld bc, $67d4                                     ; $70a9: $01 $d4 $67
	pop hl                                           ; $70ac: $e1
	ld [bc], a                                       ; $70ad: $02
	ld bc, $c008                                     ; $70ae: $01 $08 $c0
	ld bc, $03a0                                     ; $70b1: $01 $a0 $03
	inc bc                                           ; $70b4: $03
	cp $c0                                           ; $70b5: $fe $c0
	ld bc, $01a0                                     ; $70b7: $01 $a0 $01
	ld [$c048], sp                                   ; $70ba: $08 $48 $c0

jr_083_70bd:
	ld bc, $03a0                                     ; $70bd: $01 $a0 $03
	add hl, bc                                       ; $70c0: $09
	dec c                                            ; $70c1: $0d
	ret nz                                           ; $70c2: $c0

	ld bc, $01a0                                     ; $70c3: $01 $a0 $01
	add hl, bc                                       ; $70c6: $09
	add hl, de                                       ; $70c7: $19
	ld h, b                                          ; $70c8: $60
	rst $38                                          ; $70c9: $ff
	ld b, $80                                        ; $70ca: $06 $80
	nop                                              ; $70cc: $00
	ld [hl], h                                       ; $70cd: $74
	add b                                            ; $70ce: $80
	nop                                              ; $70cf: $00
	ld [hl], l                                       ; $70d0: $75
	ld de, $01c0                                     ; $70d1: $11 $c0 $01
	and b                                            ; $70d4: $a0
	inc bc                                           ; $70d5: $03
	inc bc                                           ; $70d6: $03
	ret nc                                           ; $70d7: $d0

	ldh [rP1], a                                     ; $70d8: $e0 $00
	ld [hl], l                                       ; $70da: $75
	ret nz                                           ; $70db: $c0

	ld bc, $03a0                                     ; $70dc: $01 $a0 $03
	add hl, bc                                       ; $70df: $09
	inc h                                            ; $70e0: $24
	pop bc                                           ; $70e1: $c1
	ld e, e                                          ; $70e2: $5b
	cpl                                              ; $70e3: $2f
	or b                                             ; $70e4: $b0
	ld a, a                                          ; $70e5: $7f
	daa                                              ; $70e6: $27
	ret nz                                           ; $70e7: $c0

	ld bc, $03a0                                     ; $70e8: $01 $a0 $03
	inc bc                                           ; $70eb: $03
	ret nc                                           ; $70ec: $d0

	ret nz                                           ; $70ed: $c0

	ld bc, $01a0                                     ; $70ee: $01 $a0 $01
	inc bc                                           ; $70f1: $03
	and $e0                                          ; $70f2: $e6 $e0
	nop                                              ; $70f4: $00
	ld l, l                                          ; $70f5: $6d
	ret nz                                           ; $70f6: $c0

	ld bc, $03a0                                     ; $70f7: $01 $a0 $03
	add hl, bc                                       ; $70fa: $09
	jr z, jr_083_70bd                                ; $70fb: $28 $c0

	ld bc, $01a0                                     ; $70fd: $01 $a0 $01
	ld [$c0d5], sp                                   ; $7100: $08 $d5 $c0

jr_083_7103:
	ld bc, $03a0                                     ; $7103: $01 $a0 $03
	add hl, bc                                       ; $7106: $09
	inc h                                            ; $7107: $24
	nop                                              ; $7108: $00
	add b                                            ; $7109: $80
	nop                                              ; $710a: $00
	ld [hl], l                                       ; $710b: $75
	pop bc                                           ; $710c: $c1
	ld e, e                                          ; $710d: $5b
	rst $38                                          ; $710e: $ff
	inc bc                                           ; $710f: $03
	ldh [rP1], a                                     ; $7110: $e0 $00
	sbc c                                            ; $7112: $99
	ld bc, $03d5                                     ; $7113: $01 $d5 $03
	ldh [rP1], a                                     ; $7116: $e0 $00
	ld b, $e5                                        ; $7118: $06 $e5
	inc sp                                           ; $711a: $33
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	inc hl                                           ; $711d: $23
	or b                                             ; $711e: $b0
	ld a, a                                          ; $711f: $7f
	jr jr_083_7103                                   ; $7120: $18 $e1

	ld [bc], a                                       ; $7122: $02
	ld bc, $c008                                     ; $7123: $01 $08 $c0
	ld bc, $03a0                                     ; $7126: $01 $a0 $03
	add hl, bc                                       ; $7129: $09
	dec l                                            ; $712a: $2d
	ret nz                                           ; $712b: $c0

	ld bc, $01a0                                     ; $712c: $01 $a0 $01
	add hl, bc                                       ; $712f: $09
	jr nc, @-$3d                                     ; $7130: $30 $c1

	ld e, e                                          ; $7132: $5b
	ret nz                                           ; $7133: $c0

	ld bc, $01a0                                     ; $7134: $01 $a0 $01
	add hl, bc                                       ; $7137: $09
	dec [hl]                                         ; $7138: $35
	rst $38                                          ; $7139: $ff
	ld b, $c0                                        ; $713a: $06 $c0
	ld bc, $01a0                                     ; $713c: $01 $a0 $01
	add hl, bc                                       ; $713f: $09
	ld b, d                                          ; $7140: $42
	inc c                                            ; $7141: $0c
	ret nz                                           ; $7142: $c0

	ld bc, $01a0                                     ; $7143: $01 $a0 $01
	inc bc                                           ; $7146: $03
	and $c0                                          ; $7147: $e6 $c0
	ld bc, $03a0                                     ; $7149: $01 $a0 $03
	add hl, bc                                       ; $714c: $09
	ld c, l                                          ; $714d: $4d
	ld [de], a                                       ; $714e: $12
	ret nz                                           ; $714f: $c0

	ld bc, $01a0                                     ; $7150: $01 $a0 $01
	add hl, bc                                       ; $7153: $09
	ld d, a                                          ; $7154: $57
	ret nz                                           ; $7155: $c0

	ld bc, $03a0                                     ; $7156: $01 $a0 $03
	add hl, bc                                       ; $7159: $09
	ld h, l                                          ; $715a: $65
	ret nz                                           ; $715b: $c0

	ld bc, $01a0                                     ; $715c: $01 $a0 $01
	add hl, bc                                       ; $715f: $09
	ld [hl], d                                       ; $7160: $72
	inc c                                            ; $7161: $0c
	ret nz                                           ; $7162: $c0

	ld bc, $03a0                                     ; $7163: $01 $a0 $03
	add hl, bc                                       ; $7166: $09
	ld [hl], a                                       ; $7167: $77
	ret nz                                           ; $7168: $c0

	ld bc, $01a0                                     ; $7169: $01 $a0 $01
	inc bc                                           ; $716c: $03
	sbc [hl]                                         ; $716d: $9e
	inc d                                            ; $716e: $14
	ret nz                                           ; $716f: $c0

	ld bc, $03a0                                     ; $7170: $01 $a0 $03
	add hl, bc                                       ; $7173: $09
	add a                                            ; $7174: $87
	ret nz                                           ; $7175: $c0

	ld bc, $01a0                                     ; $7176: $01 $a0 $01
	add hl, bc                                       ; $7179: $09
	adc e                                            ; $717a: $8b
	ret nz                                           ; $717b: $c0

	ld bc, $03a0                                     ; $717c: $01 $a0 $03
	inc b                                            ; $717f: $04
	jp Jump_083_5bc1                                 ; $7180: $c3 $c1 $5b


	ld h, $c0                                        ; $7183: $26 $c0
	ld bc, $03a0                                     ; $7185: $01 $a0 $03
	inc b                                            ; $7188: $04
	dec e                                            ; $7189: $1d
	ret nz                                           ; $718a: $c0

	ld bc, $01a0                                     ; $718b: $01 $a0 $01
	dec b                                            ; $718e: $05
	sbc $c0                                          ; $718f: $de $c0
	ld bc, $03a0                                     ; $7191: $01 $a0 $03
	dec b                                            ; $7194: $05
	ldh [c], a                                       ; $7195: $e2
	ret nz                                           ; $7196: $c0

	ld bc, $01a0                                     ; $7197: $01 $a0 $01
	dec b                                            ; $719a: $05
	ld [$01c0], a                                    ; $719b: $ea $c0 $01
	and b                                            ; $719e: $a0
	inc bc                                           ; $719f: $03
	dec b                                            ; $71a0: $05
	ld h, d                                          ; $71a1: $62
	pop bc                                           ; $71a2: $c1
	ld e, e                                          ; $71a3: $5b
	ret nz                                           ; $71a4: $c0

	ld bc, $01a0                                     ; $71a5: $01 $a0 $01
	dec b                                            ; $71a8: $05
	ld l, h                                          ; $71a9: $6c
	ld h, $c0                                        ; $71aa: $26 $c0
	ld bc, $03a0                                     ; $71ac: $01 $a0 $03
	inc b                                            ; $71af: $04
	dec e                                            ; $71b0: $1d
	ret nz                                           ; $71b1: $c0

	ld bc, $01a0                                     ; $71b2: $01 $a0 $01
	dec b                                            ; $71b5: $05
	sbc $c0                                          ; $71b6: $de $c0
	ld bc, $03a0                                     ; $71b8: $01 $a0 $03
	dec b                                            ; $71bb: $05
	ldh [c], a                                       ; $71bc: $e2
	ret nz                                           ; $71bd: $c0

	ld bc, $01a0                                     ; $71be: $01 $a0 $01
	dec b                                            ; $71c1: $05
	ld [$01c0], a                                    ; $71c2: $ea $c0 $01
	and b                                            ; $71c5: $a0
	inc bc                                           ; $71c6: $03
	dec b                                            ; $71c7: $05
	or e                                             ; $71c8: $b3
	pop bc                                           ; $71c9: $c1
	ld e, e                                          ; $71ca: $5b
	ret nz                                           ; $71cb: $c0

	ld bc, $01a0                                     ; $71cc: $01 $a0 $01
	dec b                                            ; $71cf: $05
	ldh a, [c]                                       ; $71d0: $f2
	rlca                                             ; $71d1: $07
	rlca                                             ; $71d2: $07
	add hl, bc                                       ; $71d3: $09
	ld c, $fb                                        ; $71d4: $0e $fb
	add b                                            ; $71d6: $80
	ld [bc], a                                       ; $71d7: $02
	adc d                                            ; $71d8: $8a
	ld b, $c0                                        ; $71d9: $06 $c0
	ld bc, $01a0                                     ; $71db: $01 $a0 $01
	nop                                              ; $71de: $00
	ld bc, $00e4                                     ; $71df: $01 $e4 $00
	ld [bc], a                                       ; $71e2: $02
	add hl, bc                                       ; $71e3: $09
	dec d                                            ; $71e4: $15
	add d                                            ; $71e5: $82
	ret nz                                           ; $71e6: $c0

	add b                                            ; $71e7: $80
	ld bc, $03d3                                     ; $71e8: $01 $d3 $03
	db $e4                                           ; $71eb: $e4
	ld [bc], a                                       ; $71ec: $02
	ld a, [de]                                       ; $71ed: $1a
	ld bc, $03d2                                     ; $71ee: $01 $d2 $03
	db $e4                                           ; $71f1: $e4
	ld bc, $010e                                     ; $71f2: $01 $0e $01
	pop de                                           ; $71f5: $d1
	inc bc                                           ; $71f6: $03
	db $e4                                           ; $71f7: $e4
	nop                                              ; $71f8: $00
	ld [bc], a                                       ; $71f9: $02
	add hl, bc                                       ; $71fa: $09
	pop bc                                           ; $71fb: $c1
	inc bc                                           ; $71fc: $03
	pop bc                                           ; $71fd: $c1
	ld e, c                                          ; $71fe: $59
	db $e3                                           ; $71ff: $e3
	nop                                              ; $7200: $00
	ld d, [hl]                                       ; $7201: $56
	add e                                            ; $7202: $83
	ret nz                                           ; $7203: $c0

	dec de                                           ; $7204: $1b
	pop de                                           ; $7205: $d1
	ld [bc], a                                       ; $7206: $02

jr_083_7207:
	ret nc                                           ; $7207: $d0

	pop de                                           ; $7208: $d1
	ld d, b                                          ; $7209: $50
	ret nz                                           ; $720a: $c0

	ld hl, $d1d2                                     ; $720b: $21 $d2 $d1
	pop hl                                           ; $720e: $e1
	ld [bc], a                                       ; $720f: $02
	ld bc, $c008                                     ; $7210: $01 $08 $c0
	ld bc, $03a0                                     ; $7213: $01 $a0 $03
	nop                                              ; $7216: $00
	ld c, $c0                                        ; $7217: $0e $c0
	ld bc, $01a0                                     ; $7219: $01 $a0 $01
	nop                                              ; $721c: $00
	add hl, de                                       ; $721d: $19
	ret nz                                           ; $721e: $c0

	ld bc, $03a0                                     ; $721f: $01 $a0 $03
	nop                                              ; $7222: $00
	ld e, $c0                                        ; $7223: $1e $c0
	ld bc, $01a0                                     ; $7225: $01 $a0 $01
	nop                                              ; $7228: $00
	ld h, $e1                                        ; $7229: $26 $e1
	ld [bc], a                                       ; $722b: $02
	rlca                                             ; $722c: $07
	sbc e                                            ; $722d: $9b
	ret nz                                           ; $722e: $c0

	ld bc, $03a0                                     ; $722f: $01 $a0 $03
	nop                                              ; $7232: $00
	add hl, hl                                       ; $7233: $29
	ret nz                                           ; $7234: $c0

	ld bc, $01a0                                     ; $7235: $01 $a0 $01
	nop                                              ; $7238: $00
	inc l                                            ; $7239: $2c
	ret nz                                           ; $723a: $c0

	ld bc, $03a0                                     ; $723b: $01 $a0 $03
	nop                                              ; $723e: $00
	cpl                                              ; $723f: $2f
	ret nz                                           ; $7240: $c0

	ld bc, $01a0                                     ; $7241: $01 $a0 $01
	nop                                              ; $7244: $00
	jr c, jr_083_7207                                ; $7245: $38 $c0

	ld bc, $03a0                                     ; $7247: $01 $a0 $03
	nop                                              ; $724a: $00
	inc a                                            ; $724b: $3c
	ret nz                                           ; $724c: $c0

	ld bc, $01a0                                     ; $724d: $01 $a0 $01
	nop                                              ; $7250: $00
	ld b, d                                          ; $7251: $42
	ret nz                                           ; $7252: $c0

	ld bc, $03a0                                     ; $7253: $01 $a0 $03
	nop                                              ; $7256: $00
	ld b, [hl]                                       ; $7257: $46
	pop bc                                           ; $7258: $c1
	ld e, e                                          ; $7259: $5b
	ld [bc], a                                       ; $725a: $02

jr_083_725b:
	jp nc, Jump_083_44d3                             ; $725b: $d2 $d3 $44

	ret nz                                           ; $725e: $c0

	ld hl, $d1d2                                     ; $725f: $21 $d2 $d1
	pop hl                                           ; $7262: $e1
	ld [bc], a                                       ; $7263: $02
	ld bc, $c008                                     ; $7264: $01 $08 $c0
	ld bc, $03a0                                     ; $7267: $01 $a0 $03
	nop                                              ; $726a: $00
	ld c, d                                          ; $726b: $4a
	ret nz                                           ; $726c: $c0

	ld bc, $01a0                                     ; $726d: $01 $a0 $01
	nop                                              ; $7270: $00
	add hl, de                                       ; $7271: $19
	ret nz                                           ; $7272: $c0

	ld bc, $03a0                                     ; $7273: $01 $a0 $03
	nop                                              ; $7276: $00
	ld d, c                                          ; $7277: $51
	ret nz                                           ; $7278: $c0

	ld bc, $01a0                                     ; $7279: $01 $a0 $01
	nop                                              ; $727c: $00
	ld h, $e1                                        ; $727d: $26 $e1
	ld [bc], a                                       ; $727f: $02
	rlca                                             ; $7280: $07
	sbc e                                            ; $7281: $9b
	ret nz                                           ; $7282: $c0

	ld bc, $03a0                                     ; $7283: $01 $a0 $03
	nop                                              ; $7286: $00
	add hl, hl                                       ; $7287: $29
	ret nz                                           ; $7288: $c0

	ld bc, $01a0                                     ; $7289: $01 $a0 $01
	nop                                              ; $728c: $00
	ld e, h                                          ; $728d: $5c
	ret nz                                           ; $728e: $c0

	ld bc, $03a0                                     ; $728f: $01 $a0 $03
	nop                                              ; $7292: $00
	ld h, a                                          ; $7293: $67
	ret nz                                           ; $7294: $c0

	ld bc, $01a0                                     ; $7295: $01 $a0 $01
	nop                                              ; $7298: $00
	jr c, jr_083_725b                                ; $7299: $38 $c0

	ld bc, $03a0                                     ; $729b: $01 $a0 $03
	nop                                              ; $729e: $00
	ld [hl], c                                       ; $729f: $71
	pop bc                                           ; $72a0: $c1
	ld e, e                                          ; $72a1: $5b

jr_083_72a2:
	ld bc, $44d4                                     ; $72a2: $01 $d4 $44
	ret nz                                           ; $72a5: $c0

	ld hl, $d1d2                                     ; $72a6: $21 $d2 $d1
	pop hl                                           ; $72a9: $e1
	ld [bc], a                                       ; $72aa: $02
	ld bc, $c008                                     ; $72ab: $01 $08 $c0
	ld bc, $03a0                                     ; $72ae: $01 $a0 $03
	nop                                              ; $72b1: $00
	ld a, d                                          ; $72b2: $7a
	ret nz                                           ; $72b3: $c0

	ld bc, $01a0                                     ; $72b4: $01 $a0 $01
	nop                                              ; $72b7: $00
	add hl, de                                       ; $72b8: $19
	ret nz                                           ; $72b9: $c0

	ld bc, $03a0                                     ; $72ba: $01 $a0 $03
	nop                                              ; $72bd: $00
	ld d, c                                          ; $72be: $51
	ret nz                                           ; $72bf: $c0

	ld bc, $01a0                                     ; $72c0: $01 $a0 $01
	nop                                              ; $72c3: $00
	ld h, $e1                                        ; $72c4: $26 $e1
	ld [bc], a                                       ; $72c6: $02
	rlca                                             ; $72c7: $07
	sbc e                                            ; $72c8: $9b
	ret nz                                           ; $72c9: $c0

	ld bc, $03a0                                     ; $72ca: $01 $a0 $03
	nop                                              ; $72cd: $00
	ld a, l                                          ; $72ce: $7d
	ret nz                                           ; $72cf: $c0

	ld bc, $01a0                                     ; $72d0: $01 $a0 $01

Jump_083_72d3:
	nop                                              ; $72d3: $00
	inc l                                            ; $72d4: $2c
	ret nz                                           ; $72d5: $c0

	ld bc, $03a0                                     ; $72d6: $01 $a0 $03
	nop                                              ; $72d9: $00
	add c                                            ; $72da: $81
	ret nz                                           ; $72db: $c0

	ld bc, $01a0                                     ; $72dc: $01 $a0 $01
	nop                                              ; $72df: $00
	jr c, jr_083_72a2                                ; $72e0: $38 $c0

	ld bc, $03a0                                     ; $72e2: $01 $a0 $03
	nop                                              ; $72e5: $00
	add [hl]                                         ; $72e6: $86
	pop bc                                           ; $72e7: $c1
	ld e, e                                          ; $72e8: $5b
	ld bc, $10d5                                     ; $72e9: $01 $d5 $10
	ret nz                                           ; $72ec: $c0

	ld bc, $01a0                                     ; $72ed: $01 $a0 $01
	nop                                              ; $72f0: $00
	adc d                                            ; $72f1: $8a
	pop hl                                           ; $72f2: $e1
	ld [bc], a                                       ; $72f3: $02
	rlca                                             ; $72f4: $07
	sbc e                                            ; $72f5: $9b
	ret nz                                           ; $72f6: $c0

	ld bc, $01a0                                     ; $72f7: $01 $a0 $01
	nop                                              ; $72fa: $00
	sub h                                            ; $72fb: $94
	push hl                                          ; $72fc: $e5
	inc sp                                           ; $72fd: $33
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	add hl, bc                                       ; $7300: $09
	pop bc                                           ; $7301: $c1
	inc bc                                           ; $7302: $03
	pop bc                                           ; $7303: $c1
	ld e, c                                          ; $7304: $59
	db $e3                                           ; $7305: $e3
	nop                                              ; $7306: $00
	ld d, [hl]                                       ; $7307: $56
	add e                                            ; $7308: $83
	ret nz                                           ; $7309: $c0

	dec de                                           ; $730a: $1b
	pop de                                           ; $730b: $d1
	ld [bc], a                                       ; $730c: $02

jr_083_730d:
	ret nc                                           ; $730d: $d0

	pop de                                           ; $730e: $d1
	ld d, b                                          ; $730f: $50
	ret nz                                           ; $7310: $c0

	ld hl, $d1d2                                     ; $7311: $21 $d2 $d1
	pop hl                                           ; $7314: $e1
	ld [bc], a                                       ; $7315: $02
	ld bc, $c008                                     ; $7316: $01 $08 $c0
	ld bc, $03a0                                     ; $7319: $01 $a0 $03
	nop                                              ; $731c: $00
	sbc e                                            ; $731d: $9b
	ret nz                                           ; $731e: $c0

	ld bc, $01a0                                     ; $731f: $01 $a0 $01
	nop                                              ; $7322: $00
	and [hl]                                         ; $7323: $a6
	ret nz                                           ; $7324: $c0

	ld bc, $03a0                                     ; $7325: $01 $a0 $03
	nop                                              ; $7328: $00
	ld e, $c0                                        ; $7329: $1e $c0
	ld bc, $01a0                                     ; $732b: $01 $a0 $01
	nop                                              ; $732e: $00
	ld h, $e1                                        ; $732f: $26 $e1
	ld [bc], a                                       ; $7331: $02
	rlca                                             ; $7332: $07
	sbc e                                            ; $7333: $9b
	ret nz                                           ; $7334: $c0

	ld bc, $03a0                                     ; $7335: $01 $a0 $03
	nop                                              ; $7338: $00
	add hl, hl                                       ; $7339: $29
	ret nz                                           ; $733a: $c0

	ld bc, $01a0                                     ; $733b: $01 $a0 $01
	nop                                              ; $733e: $00
	inc l                                            ; $733f: $2c
	ret nz                                           ; $7340: $c0

	ld bc, $03a0                                     ; $7341: $01 $a0 $03
	nop                                              ; $7344: $00
	xor e                                            ; $7345: $ab
	ret nz                                           ; $7346: $c0

	ld bc, $01a0                                     ; $7347: $01 $a0 $01
	nop                                              ; $734a: $00
	jr c, jr_083_730d                                ; $734b: $38 $c0

	ld bc, $03a0                                     ; $734d: $01 $a0 $03
	nop                                              ; $7350: $00
	inc a                                            ; $7351: $3c
	ret nz                                           ; $7352: $c0

	ld bc, $01a0                                     ; $7353: $01 $a0 $01
	nop                                              ; $7356: $00
	ld b, d                                          ; $7357: $42
	ret nz                                           ; $7358: $c0

	ld bc, $03a0                                     ; $7359: $01 $a0 $03
	nop                                              ; $735c: $00
	ld b, [hl]                                       ; $735d: $46
	pop bc                                           ; $735e: $c1
	ld e, e                                          ; $735f: $5b
	ld [bc], a                                       ; $7360: $02
	jp nc, Jump_083_44d3                             ; $7361: $d2 $d3 $44

	ret nz                                           ; $7364: $c0

	ld hl, $d1d2                                     ; $7365: $21 $d2 $d1
	pop hl                                           ; $7368: $e1
	ld [bc], a                                       ; $7369: $02
	ld bc, $c008                                     ; $736a: $01 $08 $c0
	ld bc, $03a0                                     ; $736d: $01 $a0 $03
	nop                                              ; $7370: $00
	ld c, d                                          ; $7371: $4a
	ret nz                                           ; $7372: $c0

	ld bc, $01a0                                     ; $7373: $01 $a0 $01
	nop                                              ; $7376: $00
	and [hl]                                         ; $7377: $a6
	ret nz                                           ; $7378: $c0

	ld bc, $03a0                                     ; $7379: $01 $a0 $03
	nop                                              ; $737c: $00
	ld d, c                                          ; $737d: $51
	ret nz                                           ; $737e: $c0

	ld bc, $01a0                                     ; $737f: $01 $a0 $01
	nop                                              ; $7382: $00
	ld h, $e1                                        ; $7383: $26 $e1
	ld [bc], a                                       ; $7385: $02
	rlca                                             ; $7386: $07
	sbc e                                            ; $7387: $9b
	ret nz                                           ; $7388: $c0

	ld bc, $03a0                                     ; $7389: $01 $a0 $03
	nop                                              ; $738c: $00
	add hl, hl                                       ; $738d: $29
	ret nz                                           ; $738e: $c0

	ld bc, $01a0                                     ; $738f: $01 $a0 $01
	nop                                              ; $7392: $00
	or h                                             ; $7393: $b4
	ret nz                                           ; $7394: $c0

	ld bc, $03a0                                     ; $7395: $01 $a0 $03
	nop                                              ; $7398: $00
	pop bc                                           ; $7399: $c1
	ret nz                                           ; $739a: $c0

	ld bc, $01a0                                     ; $739b: $01 $a0 $01
	nop                                              ; $739e: $00
	adc $c0                                          ; $739f: $ce $c0
	ld bc, $03a0                                     ; $73a1: $01 $a0 $03
	nop                                              ; $73a4: $00
	ld [hl], c                                       ; $73a5: $71
	pop bc                                           ; $73a6: $c1
	ld e, e                                          ; $73a7: $5b

jr_083_73a8:
	ld bc, $44d4                                     ; $73a8: $01 $d4 $44
	ret nz                                           ; $73ab: $c0

	ld hl, $d1d2                                     ; $73ac: $21 $d2 $d1
	pop hl                                           ; $73af: $e1
	ld [bc], a                                       ; $73b0: $02
	ld bc, $c008                                     ; $73b1: $01 $08 $c0
	ld bc, $03a0                                     ; $73b4: $01 $a0 $03
	nop                                              ; $73b7: $00
	ld a, d                                          ; $73b8: $7a
	ret nz                                           ; $73b9: $c0

	ld bc, $01a0                                     ; $73ba: $01 $a0 $01
	nop                                              ; $73bd: $00
	and [hl]                                         ; $73be: $a6
	ret nz                                           ; $73bf: $c0

	ld bc, $03a0                                     ; $73c0: $01 $a0 $03
	nop                                              ; $73c3: $00
	ld d, c                                          ; $73c4: $51
	ret nz                                           ; $73c5: $c0

	ld bc, $01a0                                     ; $73c6: $01 $a0 $01
	nop                                              ; $73c9: $00
	ld h, $e1                                        ; $73ca: $26 $e1
	ld [bc], a                                       ; $73cc: $02
	rlca                                             ; $73cd: $07
	sbc e                                            ; $73ce: $9b
	ret nz                                           ; $73cf: $c0

	ld bc, $03a0                                     ; $73d0: $01 $a0 $03

Jump_083_73d3:
	nop                                              ; $73d3: $00
	ld a, l                                          ; $73d4: $7d
	ret nz                                           ; $73d5: $c0

	ld bc, $01a0                                     ; $73d6: $01 $a0 $01
	nop                                              ; $73d9: $00
	inc l                                            ; $73da: $2c
	ret nz                                           ; $73db: $c0

	ld bc, $03a0                                     ; $73dc: $01 $a0 $03
	nop                                              ; $73df: $00
	add c                                            ; $73e0: $81
	ret nz                                           ; $73e1: $c0

	ld bc, $01a0                                     ; $73e2: $01 $a0 $01
	nop                                              ; $73e5: $00
	jr c, jr_083_73a8                                ; $73e6: $38 $c0

	ld bc, $03a0                                     ; $73e8: $01 $a0 $03
	nop                                              ; $73eb: $00
	add [hl]                                         ; $73ec: $86
	pop bc                                           ; $73ed: $c1
	ld e, e                                          ; $73ee: $5b
	ld bc, $10d5                                     ; $73ef: $01 $d5 $10
	ret nz                                           ; $73f2: $c0

	ld bc, $01a0                                     ; $73f3: $01 $a0 $01
	nop                                              ; $73f6: $00
	db $db                                           ; $73f7: $db
	pop hl                                           ; $73f8: $e1
	ld [bc], a                                       ; $73f9: $02
	rlca                                             ; $73fa: $07
	sbc e                                            ; $73fb: $9b
	ret nz                                           ; $73fc: $c0

	ld bc, $01a0                                     ; $73fd: $01 $a0 $01
	nop                                              ; $7400: $00
	rst SubAFromBC                                          ; $7401: $e7
	push hl                                          ; $7402: $e5
	inc sp                                           ; $7403: $33
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	add hl, bc                                       ; $7406: $09
	ret nz                                           ; $7407: $c0

	ret c                                            ; $7408: $d8

	pop bc                                           ; $7409: $c1
	ld e, c                                          ; $740a: $59
	db $e3                                           ; $740b: $e3
	nop                                              ; $740c: $00
	ld e, e                                          ; $740d: $5b
	ret nz                                           ; $740e: $c0

	ld bc, $01a0                                     ; $740f: $01 $a0 $01
	nop                                              ; $7412: $00
	rst AddAOntoHL                                          ; $7413: $ef
	pop hl                                           ; $7414: $e1
	ld [hl-], a                                      ; $7415: $32
	ld bc, $c052                                     ; $7416: $01 $52 $c0
	ld bc, $01a0                                     ; $7419: $01 $a0 $01
	nop                                              ; $741c: $00
	ld a, [$59c1]                                    ; $741d: $fa $c1 $59
	db $e3                                           ; $7420: $e3
	nop                                              ; $7421: $00
	ld d, a                                          ; $7422: $57
	add e                                            ; $7423: $83
	ret nz                                           ; $7424: $c0

	dec de                                           ; $7425: $1b
	pop de                                           ; $7426: $d1
	ld [bc], a                                       ; $7427: $02
	ret nc                                           ; $7428: $d0

	pop de                                           ; $7429: $d1
	ld a, [hl-]                                      ; $742a: $3a
	ret nz                                           ; $742b: $c0

	ld hl, $d1d2                                     ; $742c: $21 $d2 $d1
	pop hl                                           ; $742f: $e1
	ld [bc], a                                       ; $7430: $02
	ld bc, $c008                                     ; $7431: $01 $08 $c0
	ld bc, $01a0                                     ; $7434: $01 $a0 $01
	nop                                              ; $7437: $00
	db $fc                                           ; $7438: $fc
	ret nz                                           ; $7439: $c0

	ld bc, $03a0                                     ; $743a: $01 $a0 $03
	ld bc, $c000                                     ; $743d: $01 $00 $c0
	ld bc, $01a0                                     ; $7440: $01 $a0 $01
	ld bc, $c00f                                     ; $7443: $01 $0f $c0
	ld bc, $03a0                                     ; $7446: $01 $a0 $03
	ld bc, $c018                                     ; $7449: $01 $18 $c0
	ld bc, $01a0                                     ; $744c: $01 $a0 $01
	ld bc, $c026                                     ; $744f: $01 $26 $c0
	ld bc, $03a0                                     ; $7452: $01 $a0 $03
	ld bc, $c031                                     ; $7455: $01 $31 $c0
	ld bc, $01a0                                     ; $7458: $01 $a0 $01
	ld bc, $c03d                                     ; $745b: $01 $3d $c0
	ld bc, $03a0                                     ; $745e: $01 $a0 $03
	nop                                              ; $7461: $00
	ld b, [hl]                                       ; $7462: $46
	pop bc                                           ; $7463: $c1
	ld e, e                                          ; $7464: $5b
	ld [bc], a                                       ; $7465: $02
	jp nc, $3ad3                                     ; $7466: $d2 $d3 $3a

	ret nz                                           ; $7469: $c0

	ld hl, $d1d2                                     ; $746a: $21 $d2 $d1
	pop hl                                           ; $746d: $e1
	ld [bc], a                                       ; $746e: $02
	ld bc, $c008                                     ; $746f: $01 $08 $c0
	ld bc, $01a0                                     ; $7472: $01 $a0 $01
	nop                                              ; $7475: $00
	db $fc                                           ; $7476: $fc
	ret nz                                           ; $7477: $c0

	ld bc, $03a0                                     ; $7478: $01 $a0 $03
	ld bc, $c044                                     ; $747b: $01 $44 $c0
	ld bc, $01a0                                     ; $747e: $01 $a0 $01
	ld bc, $c00f                                     ; $7481: $01 $0f $c0
	ld bc, $03a0                                     ; $7484: $01 $a0 $03
	ld bc, $c04f                                     ; $7487: $01 $4f $c0
	ld bc, $01a0                                     ; $748a: $01 $a0 $01
	ld bc, $c064                                     ; $748d: $01 $64 $c0
	ld bc, $03a0                                     ; $7490: $01 $a0 $03
	ld bc, $c06a                                     ; $7493: $01 $6a $c0
	ld bc, $01a0                                     ; $7496: $01 $a0 $01
	ld bc, $c03d                                     ; $7499: $01 $3d $c0
	ld bc, $03a0                                     ; $749c: $01 $a0 $03
	nop                                              ; $749f: $00
	ld [hl], c                                       ; $74a0: $71
	pop bc                                           ; $74a1: $c1
	ld e, e                                          ; $74a2: $5b
	ld bc, $2ed4                                     ; $74a3: $01 $d4 $2e
	ret nz                                           ; $74a6: $c0

	ld hl, $d1d2                                     ; $74a7: $21 $d2 $d1
	pop hl                                           ; $74aa: $e1
	ld [bc], a                                       ; $74ab: $02
	ld bc, $c008                                     ; $74ac: $01 $08 $c0
	ld bc, $01a0                                     ; $74af: $01 $a0 $01
	nop                                              ; $74b2: $00
	db $fc                                           ; $74b3: $fc
	ret nz                                           ; $74b4: $c0

	ld bc, $03a0                                     ; $74b5: $01 $a0 $03
	ld bc, $c044                                     ; $74b8: $01 $44 $c0
	ld bc, $01a0                                     ; $74bb: $01 $a0 $01
	ld bc, $c00f                                     ; $74be: $01 $0f $c0
	ld bc, $03a0                                     ; $74c1: $01 $a0 $03
	ld bc, $c077                                     ; $74c4: $01 $77 $c0
	ld bc, $01a0                                     ; $74c7: $01 $a0 $01
	ld bc, $c03d                                     ; $74ca: $01 $3d $c0
	ld bc, $03a0                                     ; $74cd: $01 $a0 $03
	nop                                              ; $74d0: $00
	add [hl]                                         ; $74d1: $86
	pop bc                                           ; $74d2: $c1
	ld e, e                                          ; $74d3: $5b
	ld bc, $06d5                                     ; $74d4: $01 $d5 $06
	ret nz                                           ; $74d7: $c0

	ld bc, $01a0                                     ; $74d8: $01 $a0 $01
	ld bc, $e582                                     ; $74db: $01 $82 $e5
	inc sp                                           ; $74de: $33
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	rlca                                             ; $74e1: $07
	rlca                                             ; $74e2: $07
	add hl, bc                                       ; $74e3: $09
	add hl, de                                       ; $74e4: $19
	ret nz                                           ; $74e5: $c0

	ld hl, $d2d2                                     ; $74e6: $21 $d2 $d2
	add d                                            ; $74e9: $82
	ret nz                                           ; $74ea: $c0

	add b                                            ; $74eb: $80
	ld bc, $03d3                                     ; $74ec: $01 $d3 $03
	db $e4                                           ; $74ef: $e4
	ld bc, $01be                                     ; $74f0: $01 $be $01
	jp nc, $e403                                     ; $74f3: $d2 $03 $e4

	nop                                              ; $74f6: $00
	cp c                                             ; $74f7: $b9
	ld bc, $03d1                                     ; $74f8: $01 $d1 $03
	db $e4                                           ; $74fb: $e4
	nop                                              ; $74fc: $00
	ld [bc], a                                       ; $74fd: $02
	add hl, bc                                       ; $74fe: $09
	xor a                                            ; $74ff: $af
	pop hl                                           ; $7500: $e1
	ld [bc], a                                       ; $7501: $02
	ld bc, $8350                                     ; $7502: $01 $50 $83
	ret nz                                           ; $7505: $c0

	dec de                                           ; $7506: $1b
	jp nc, $d002                                     ; $7507: $d2 $02 $d0

	pop de                                           ; $750a: $d1
	inc hl                                           ; $750b: $23
	ret nz                                           ; $750c: $c0

	ld bc, $04a0                                     ; $750d: $01 $a0 $04
	nop                                              ; $7510: $00
	ld bc, $01e0                                     ; $7511: $01 $e0 $01
	ld b, c                                          ; $7514: $41
	ret nz                                           ; $7515: $c0

	ld bc, $04a0                                     ; $7516: $01 $a0 $04
	nop                                              ; $7519: $00
	ld [$01c0], sp                                   ; $751a: $08 $c0 $01
	and b                                            ; $751d: $a0
	ld bc, $1900                                     ; $751e: $01 $00 $19
	ret nz                                           ; $7521: $c0

	ld bc, $04a0                                     ; $7522: $01 $a0 $04
	nop                                              ; $7525: $00
	inc hl                                           ; $7526: $23
	pop bc                                           ; $7527: $c1
	ld e, e                                          ; $7528: $5b
	ret nz                                           ; $7529: $c0

	ld bc, $01a0                                     ; $752a: $01 $a0 $01
	nop                                              ; $752d: $00
	cpl                                              ; $752e: $2f
	ld [bc], a                                       ; $752f: $02
	jp nc, $2dd3                                     ; $7530: $d2 $d3 $2d

	ret nz                                           ; $7533: $c0

	ld bc, $04a0                                     ; $7534: $01 $a0 $04
	nop                                              ; $7537: $00
	scf                                              ; $7538: $37
	ret nz                                           ; $7539: $c0

	ld bc, $01a0                                     ; $753a: $01 $a0 $01
	nop                                              ; $753d: $00
	ccf                                              ; $753e: $3f
	ret nz                                           ; $753f: $c0

	ld bc, $04a0                                     ; $7540: $01 $a0 $04
	nop                                              ; $7543: $00
	ld c, c                                          ; $7544: $49
	ret nz                                           ; $7545: $c0

	ld bc, $01a0                                     ; $7546: $01 $a0 $01
	nop                                              ; $7549: $00
	ld d, l                                          ; $754a: $55
	ret nz                                           ; $754b: $c0

	ld bc, $04a0                                     ; $754c: $01 $a0 $04
	nop                                              ; $754f: $00
	ld h, d                                          ; $7550: $62
	ret nz                                           ; $7551: $c0

	ld bc, $01a0                                     ; $7552: $01 $a0 $01
	nop                                              ; $7555: $00
	halt                                             ; $7556: $76
	ldh [rSB], a                                     ; $7557: $e0 $01
	ld b, c                                          ; $7559: $41
	ret nz                                           ; $755a: $c0

	ld bc, $01a0                                     ; $755b: $01 $a0 $01
	nop                                              ; $755e: $00
	add e                                            ; $755f: $83
	ld bc, _EnterNamesAndDates                                     ; $7560: $01 $d4 $2a
	ldh [rSB], a                                     ; $7563: $e0 $01
	rrca                                             ; $7565: $0f
	ret nz                                           ; $7566: $c0

	ld bc, $01a0                                     ; $7567: $01 $a0 $01
	nop                                              ; $756a: $00
	adc l                                            ; $756b: $8d
	ret nz                                           ; $756c: $c0

	ld bc, $04a0                                     ; $756d: $01 $a0 $04
	nop                                              ; $7570: $00
	sbc c                                            ; $7571: $99
	ret nz                                           ; $7572: $c0

	ld bc, $01a0                                     ; $7573: $01 $a0 $01
	nop                                              ; $7576: $00
	ld d, l                                          ; $7577: $55
	ret nz                                           ; $7578: $c0

	ld bc, $04a0                                     ; $7579: $01 $a0 $04
	nop                                              ; $757c: $00
	ld h, d                                          ; $757d: $62
	ret nz                                           ; $757e: $c0

	ld bc, $01a0                                     ; $757f: $01 $a0 $01
	nop                                              ; $7582: $00
	halt                                             ; $7583: $76
	ldh [rSB], a                                     ; $7584: $e0 $01
	inc d                                            ; $7586: $14
	ret nz                                           ; $7587: $c0

	ld bc, $01a0                                     ; $7588: $01 $a0 $01
	nop                                              ; $758b: $00
	xor c                                            ; $758c: $a9
	ld bc, $17d5                                     ; $758d: $01 $d5 $17
	ldh [rP1], a                                     ; $7590: $e0 $00
	push af                                          ; $7592: $f5
	ret nz                                           ; $7593: $c0

	ld bc, $01a0                                     ; $7594: $01 $a0 $01
	nop                                              ; $7597: $00
	xor l                                            ; $7598: $ad
	ret nz                                           ; $7599: $c0

	ld bc, $04a0                                     ; $759a: $01 $a0 $04
	nop                                              ; $759d: $00
	cp e                                             ; $759e: $bb
	pop bc                                           ; $759f: $c1
	ld e, e                                          ; $75a0: $5b
	ret nz                                           ; $75a1: $c0

	ld bc, $01a0                                     ; $75a2: $01 $a0 $01
	nop                                              ; $75a5: $00
	add e                                            ; $75a6: $83
	nop                                              ; $75a7: $00
	add b                                            ; $75a8: $80
	nop                                              ; $75a9: $00
	ret nc                                           ; $75aa: $d0

	push hl                                          ; $75ab: $e5
	inc sp                                           ; $75ac: $33
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	add hl, bc                                       ; $75af: $09
	and e                                            ; $75b0: $a3
	pop hl                                           ; $75b1: $e1
	ld [bc], a                                       ; $75b2: $02
	ld bc, $8350                                     ; $75b3: $01 $50 $83
	ret nz                                           ; $75b6: $c0

	dec de                                           ; $75b7: $1b
	jp nc, $d002                                     ; $75b8: $d2 $02 $d0

	pop de                                           ; $75bb: $d1
	inc hl                                           ; $75bc: $23
	ret nz                                           ; $75bd: $c0

	ld bc, $04a0                                     ; $75be: $01 $a0 $04
	nop                                              ; $75c1: $00
	add $e0                                          ; $75c2: $c6 $e0
	nop                                              ; $75c4: $00
	sub b                                            ; $75c5: $90
	ret nz                                           ; $75c6: $c0

	ld bc, $04a0                                     ; $75c7: $01 $a0 $04
	nop                                              ; $75ca: $00
	rst GetHLinHL                                          ; $75cb: $cf
	ret nz                                           ; $75cc: $c0

	ld bc, $01a0                                     ; $75cd: $01 $a0 $01
	nop                                              ; $75d0: $00
	add hl, de                                       ; $75d1: $19
	ret nz                                           ; $75d2: $c0

	ld bc, $04a0                                     ; $75d3: $01 $a0 $04
	nop                                              ; $75d6: $00
	inc hl                                           ; $75d7: $23
	pop bc                                           ; $75d8: $c1
	ld e, e                                          ; $75d9: $5b
	ret nz                                           ; $75da: $c0

	ld bc, $01a0                                     ; $75db: $01 $a0 $01
	nop                                              ; $75de: $00
	db $e3                                           ; $75df: $e3
	ld [bc], a                                       ; $75e0: $02
	jp nc, $2dd3                                     ; $75e1: $d2 $d3 $2d

	ret nz                                           ; $75e4: $c0

	ld bc, $04a0                                     ; $75e5: $01 $a0 $04
	nop                                              ; $75e8: $00
	db $ed                                           ; $75e9: $ed
	ret nz                                           ; $75ea: $c0

	ld bc, $01a0                                     ; $75eb: $01 $a0 $01
	nop                                              ; $75ee: $00
	db $f4                                           ; $75ef: $f4
	ret nz                                           ; $75f0: $c0

	ld bc, $04a0                                     ; $75f1: $01 $a0 $04
	nop                                              ; $75f4: $00
	rst $38                                          ; $75f5: $ff
	ret nz                                           ; $75f6: $c0

	ld bc, $01a0                                     ; $75f7: $01 $a0 $01
	ld bc, $c006                                     ; $75fa: $01 $06 $c0
	ld bc, $04a0                                     ; $75fd: $01 $a0 $04
	ld bc, $c00f                                     ; $7600: $01 $0f $c0
	ld bc, $01a0                                     ; $7603: $01 $a0 $01
	ld bc, $e01d                                     ; $7606: $01 $1d $e0
	nop                                              ; $7609: $00
	sub b                                            ; $760a: $90
	ret nz                                           ; $760b: $c0

	ld bc, $01a0                                     ; $760c: $01 $a0 $01
	nop                                              ; $760f: $00
	add e                                            ; $7610: $83
	ld bc, $1ed4                                     ; $7611: $01 $d4 $1e
	ldh [rP1], a                                     ; $7614: $e0 $00
	ld e, [hl]                                       ; $7616: $5e
	ret nz                                           ; $7617: $c0

	ld bc, $01a0                                     ; $7618: $01 $a0 $01
	ld bc, $c029                                     ; $761b: $01 $29 $c0
	ld bc, $04a0                                     ; $761e: $01 $a0 $04
	ld bc, $c036                                     ; $7621: $01 $36 $c0
	ld bc, $01a0                                     ; $7624: $01 $a0 $01
	ld bc, $e01d                                     ; $7627: $01 $1d $e0
	nop                                              ; $762a: $00
	ld l, a                                          ; $762b: $6f
	ret nz                                           ; $762c: $c0

	ld bc, $01a0                                     ; $762d: $01 $a0 $01
	ld bc, $0148                             ; $7630: $01 $48 $01
	push de                                          ; $7633: $d5
	rla                                              ; $7634: $17
	ldh [rP1], a                                     ; $7635: $e0 $00
	ld d, b                                          ; $7637: $50
	ret nz                                           ; $7638: $c0

	ld bc, $01a0                                     ; $7639: $01 $a0 $01
	ld bc, $c04c                                     ; $763c: $01 $4c $c0
	ld bc, $04a0                                     ; $763f: $01 $a0 $04
	nop                                              ; $7642: $00
	cp e                                             ; $7643: $bb
	pop bc                                           ; $7644: $c1
	ld e, e                                          ; $7645: $5b
	ret nz                                           ; $7646: $c0

	ld bc, $01a0                                     ; $7647: $01 $a0 $01
	nop                                              ; $764a: $00
	add e                                            ; $764b: $83
	nop                                              ; $764c: $00
	add b                                            ; $764d: $80
	nop                                              ; $764e: $00
	pop de                                           ; $764f: $d1
	push hl                                          ; $7650: $e5
	inc sp                                           ; $7651: $33
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	ld e, $c0                                        ; $7654: $1e $c0
	ld bc, $01a0                                     ; $7656: $01 $a0 $01
	ld bc, $c05b                                     ; $7659: $01 $5b $c0
	ld bc, $04a0                                     ; $765c: $01 $a0 $04
	ld bc, $c064                                     ; $765f: $01 $64 $c0
	ld bc, $01a0                                     ; $7662: $01 $a0 $01
	ld bc, $c072                                     ; $7665: $01 $72 $c0
	ld bc, $04a0                                     ; $7668: $01 $a0 $04
	ld bc, $c082                                     ; $766b: $01 $82 $c0
	ld bc, $01a0                                     ; $766e: $01 $a0 $01
	ld bc, $128a                                     ; $7671: $01 $8a $12
	ret nz                                           ; $7674: $c0

	ld bc, $04a0                                     ; $7675: $01 $a0 $04
	ld bc, $c092                                     ; $7678: $01 $92 $c0
	ld bc, $01a0                                     ; $767b: $01 $a0 $01
	ld bc, $c09a                                     ; $767e: $01 $9a $c0
	ld bc, $04a0                                     ; $7681: $01 $a0 $04
	ld bc, $12a7                                     ; $7684: $01 $a7 $12
	ret nz                                           ; $7687: $c0

	ld bc, $04a0                                     ; $7688: $01 $a0 $04
	ld bc, $c0b4                                     ; $768b: $01 $b4 $c0
	ld bc, $01a0                                     ; $768e: $01 $a0 $01
	ld bc, $c0b7                                     ; $7691: $01 $b7 $c0
	ld bc, $04a0                                     ; $7694: $01 $a0 $04
	ld bc, $14c0                                     ; $7697: $01 $c0 $14
	ret nz                                           ; $769a: $c0

	ld bc, $04a0                                     ; $769b: $01 $a0 $04
	ld bc, $c0ca                                     ; $769e: $01 $ca $c0
	ld bc, $01a0                                     ; $76a1: $01 $a0 $01
	ld bc, $c0d4                                     ; $76a4: $01 $d4 $c0
	ld bc, $04a0                                     ; $76a7: $01 $a0 $04
	ld bc, $c1db                                     ; $76aa: $01 $db $c1
	ld e, e                                          ; $76ad: $5b
	add hl, bc                                       ; $76ae: $09
	ret nz                                           ; $76af: $c0

	db $d3                                           ; $76b0: $d3
	add e                                            ; $76b1: $83
	ret nz                                           ; $76b2: $c0

	dec de                                           ; $76b3: $1b
	jp nc, $d002                                     ; $76b4: $d2 $02 $d0

	pop de                                           ; $76b7: $d1
	ld a, [hl+]                                      ; $76b8: $2a
	pop hl                                           ; $76b9: $e1
	ld [bc], a                                       ; $76ba: $02
	ld bc, $c050                                     ; $76bb: $01 $50 $c0
	ld bc, $04a0                                     ; $76be: $01 $a0 $04
	ld bc, $c0e8                                     ; $76c1: $01 $e8 $c0

jr_083_76c4:
	ld bc, $01a0                                     ; $76c4: $01 $a0 $01
	ld bc, $c0e9                                     ; $76c7: $01 $e9 $c0
	ld bc, $04a0                                     ; $76ca: $01 $a0 $04
	ld bc, $c0ef                                     ; $76cd: $01 $ef $c0
	ld bc, $01a0                                     ; $76d0: $01 $a0 $01
	ld [bc], a                                       ; $76d3: $02
	ld bc, $01c0                                     ; $76d4: $01 $c0 $01
	and b                                            ; $76d7: $a0
	inc b                                            ; $76d8: $04
	ld [bc], a                                       ; $76d9: $02
	ld [$5bc1], sp                                   ; $76da: $08 $c1 $5b
	ret nz                                           ; $76dd: $c0

	ld bc, $01a0                                     ; $76de: $01 $a0 $01
	ld [bc], a                                       ; $76e1: $02
	inc de                                           ; $76e2: $13
	ld [bc], a                                       ; $76e3: $02
	jp nc, $42d3                                     ; $76e4: $d2 $d3 $42

	pop hl                                           ; $76e7: $e1
	ld [bc], a                                       ; $76e8: $02
	ld bc, $c050                                     ; $76e9: $01 $50 $c0
	ld bc, $04a0                                     ; $76ec: $01 $a0 $04
	ld bc, $c0e8                                     ; $76ef: $01 $e8 $c0
	ld bc, $01a0                                     ; $76f2: $01 $a0 $01
	ld bc, $c0e9                                     ; $76f5: $01 $e9 $c0
	ld bc, $04a0                                     ; $76f8: $01 $a0 $04
	ld [bc], a                                       ; $76fb: $02
	ld a, [de]                                       ; $76fc: $1a
	ret nz                                           ; $76fd: $c0

	ld bc, $01a0                                     ; $76fe: $01 $a0 $01
	ld [bc], a                                       ; $7701: $02
	jr z, jr_083_76c4                                ; $7702: $28 $c0

	ld bc, $04a0                                     ; $7704: $01 $a0 $04
	ld [bc], a                                       ; $7707: $02
	dec l                                            ; $7708: $2d
	ret nz                                           ; $7709: $c0

	ld bc, $01a0                                     ; $770a: $01 $a0 $01
	ld [bc], a                                       ; $770d: $02
	dec a                                            ; $770e: $3d
	ret nz                                           ; $770f: $c0

	ld bc, $04a0                                     ; $7710: $01 $a0 $04
	ld [bc], a                                       ; $7713: $02
	ld b, l                                          ; $7714: $45
	ret nz                                           ; $7715: $c0

	ld bc, $01a0                                     ; $7716: $01 $a0 $01
	ld [bc], a                                       ; $7719: $02
	ld e, d                                          ; $771a: $5a
	ret nz                                           ; $771b: $c0

	ld bc, $04a0                                     ; $771c: $01 $a0 $04
	ld [bc], a                                       ; $771f: $02
	ld e, l                                          ; $7720: $5d
	pop bc                                           ; $7721: $c1
	ld e, e                                          ; $7722: $5b
	ret nz                                           ; $7723: $c0

	ld bc, $01a0                                     ; $7724: $01 $a0 $01
	ld [bc], a                                       ; $7727: $02
	ld h, l                                          ; $7728: $65
	ld bc, $4ed4                                     ; $7729: $01 $d4 $4e
	pop hl                                           ; $772c: $e1
	ld [bc], a                                       ; $772d: $02
	ld bc, $c050                                     ; $772e: $01 $50 $c0
	ld bc, $04a0                                     ; $7731: $01 $a0 $04
	ld bc, $c0e8                                     ; $7734: $01 $e8 $c0
	ld bc, $01a0                                     ; $7737: $01 $a0 $01
	ld [bc], a                                       ; $773a: $02
	ld l, e                                          ; $773b: $6b
	ret nz                                           ; $773c: $c0

	ld bc, $04a0                                     ; $773d: $01 $a0 $04
	ld [bc], a                                       ; $7740: $02
	ld [hl], d                                       ; $7741: $72
	ret nz                                           ; $7742: $c0

	ld bc, $01a0                                     ; $7743: $01 $a0 $01
	ld [bc], a                                       ; $7746: $02
	ld a, c                                          ; $7747: $79
	ret nz                                           ; $7748: $c0

	ld bc, $04a0                                     ; $7749: $01 $a0 $04
	ld [bc], a                                       ; $774c: $02
	ld a, [hl]                                       ; $774d: $7e
	ld h, b                                          ; $774e: $60
	rst $38                                          ; $774f: $ff
	ld b, $80                                        ; $7750: $06 $80
	nop                                              ; $7752: $00
	halt                                             ; $7753: $76
	add b                                            ; $7754: $80
	nop                                              ; $7755: $00
	ld [hl], a                                       ; $7756: $77
	ld b, $c0                                        ; $7757: $06 $c0
	ld bc, $01a0                                     ; $7759: $01 $a0 $01
	ld [bc], a                                       ; $775c: $02
	sub c                                            ; $775d: $91
	ld [de], a                                       ; $775e: $12
	ret nz                                           ; $775f: $c0

	ld bc, $01a0                                     ; $7760: $01 $a0 $01
	ld [bc], a                                       ; $7763: $02
	sub h                                            ; $7764: $94
	ret nz                                           ; $7765: $c0

	ld bc, $04a0                                     ; $7766: $01 $a0 $04
	ld [bc], a                                       ; $7769: $02
	sbc h                                            ; $776a: $9c
	ret nz                                           ; $776b: $c0

	ld bc, $01a0                                     ; $776c: $01 $a0 $01
	ld [bc], a                                       ; $776f: $02
	and l                                            ; $7770: $a5
	ret nz                                           ; $7771: $c0

	ld bc, $04a0                                     ; $7772: $01 $a0 $04
	ld [bc], a                                       ; $7775: $02
	xor h                                            ; $7776: $ac
	ldh [rTIMA], a                                   ; $7777: $e0 $05
	ld sp, hl                                        ; $7779: $f9
	ld bc, $03d5                                     ; $777a: $01 $d5 $03
	ldh [$08], a                                     ; $777d: $e0 $08
	ld e, b                                          ; $777f: $58
	push hl                                          ; $7780: $e5
	inc sp                                           ; $7781: $33
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	add hl, bc                                       ; $7784: $09
	dec d                                            ; $7785: $15
	add d                                            ; $7786: $82
	ret nz                                           ; $7787: $c0

	add b                                            ; $7788: $80
	ld bc, $03d3                                     ; $7789: $01 $d3 $03
	db $e4                                           ; $778c: $e4
	ld [bc], a                                       ; $778d: $02
	dec h                                            ; $778e: $25
	ld bc, $03d2                                     ; $778f: $01 $d2 $03
	db $e4                                           ; $7792: $e4
	ld bc, $0117                                     ; $7793: $01 $17 $01
	pop de                                           ; $7796: $d1
	inc bc                                           ; $7797: $03
	db $e4                                           ; $7798: $e4
	nop                                              ; $7799: $00
	ld [bc], a                                       ; $779a: $02
	add hl, bc                                       ; $779b: $09
	sub c                                            ; $779c: $91
	pop bc                                           ; $779d: $c1
	ld e, c                                          ; $779e: $59
	db $e3                                           ; $779f: $e3
	nop                                              ; $77a0: $00
	ld b, d                                          ; $77a1: $42
	pop hl                                           ; $77a2: $e1
	ld [bc], a                                       ; $77a3: $02
	ld bc, $c080                                     ; $77a4: $01 $80 $c0
	ld bc, $01a0                                     ; $77a7: $01 $a0 $01
	ld [bc], a                                       ; $77aa: $02
	cp h                                             ; $77ab: $bc
	add d                                            ; $77ac: $82
	ret nz                                           ; $77ad: $c0

	dec de                                           ; $77ae: $1b
	jp nc, $d004                                     ; $77af: $d2 $04 $d0

	pop de                                           ; $77b2: $d1
	jp nc, $21d3                                     ; $77b3: $d2 $d3 $21

	ret nz                                           ; $77b6: $c0

	ld bc, $04a0                                     ; $77b7: $01 $a0 $04
	ld [bc], a                                       ; $77ba: $02
	push bc                                          ; $77bb: $c5
	ret nz                                           ; $77bc: $c0

	ld bc, $01a0                                     ; $77bd: $01 $a0 $01
	ld [bc], a                                       ; $77c0: $02
	ret nc                                           ; $77c1: $d0

	ret nz                                           ; $77c2: $c0

	ld bc, $04a0                                     ; $77c3: $01 $a0 $04
	ld [bc], a                                       ; $77c6: $02
	db $e4                                           ; $77c7: $e4
	ret nz                                           ; $77c8: $c0

	ld bc, $01a0                                     ; $77c9: $01 $a0 $01
	ld [bc], a                                       ; $77cc: $02
	ld hl, sp-$40                                    ; $77cd: $f8 $c0
	ld bc, $04a0                                     ; $77cf: $01 $a0 $04
	ld [bc], a                                       ; $77d2: $02
	ld a, [$00e0]                                    ; $77d3: $fa $e0 $00
	ld e, c                                          ; $77d6: $59
	ld bc, $27d4                                     ; $77d7: $01 $d4 $27
	ret nz                                           ; $77da: $c0

	ld bc, $04a0                                     ; $77db: $01 $a0 $04
	inc bc                                           ; $77de: $03
	ld [bc], a                                       ; $77df: $02
	ret nz                                           ; $77e0: $c0

	ld bc, $01a0                                     ; $77e1: $01 $a0 $01
	inc bc                                           ; $77e4: $03
	rlca                                             ; $77e5: $07
	ret nz                                           ; $77e6: $c0

	ld bc, $04a0                                     ; $77e7: $01 $a0 $04
	inc bc                                           ; $77ea: $03
	ld hl, $01c0                                     ; $77eb: $21 $c0 $01
	and b                                            ; $77ee: $a0
	ld bc, $2b03                                     ; $77ef: $01 $03 $2b
	ret nz                                           ; $77f2: $c0

	ld bc, $04a0                                     ; $77f3: $01 $a0 $04
	inc bc                                           ; $77f6: $03
	add hl, sp                                       ; $77f7: $39
	ret nz                                           ; $77f8: $c0

	ld bc, $01a0                                     ; $77f9: $01 $a0 $01
	inc bc                                           ; $77fc: $03
	ld c, d                                          ; $77fd: $4a
	ldh [rP1], a                                     ; $77fe: $e0 $00
	cpl                                              ; $7800: $2f
	ld bc, $26d5                                     ; $7801: $01 $d5 $26
	ret nz                                           ; $7804: $c0

	ld bc, $04a0                                     ; $7805: $01 $a0 $04
	inc bc                                           ; $7808: $03
	ld c, [hl]                                       ; $7809: $4e
	ret nz                                           ; $780a: $c0

	ld bc, $01a0                                     ; $780b: $01 $a0 $01
	inc bc                                           ; $780e: $03
	ld c, a                                          ; $780f: $4f
	ret nz                                           ; $7810: $c0

	ld bc, $04a0                                     ; $7811: $01 $a0 $04
	inc bc                                           ; $7814: $03
	ld d, e                                          ; $7815: $53
	ret nz                                           ; $7816: $c0

	ld bc, $01a0                                     ; $7817: $01 $a0 $01
	inc bc                                           ; $781a: $03
	ld d, [hl]                                       ; $781b: $56
	ret nz                                           ; $781c: $c0

	ld bc, $04a0                                     ; $781d: $01 $a0 $04
	inc bc                                           ; $7820: $03
	ld h, [hl]                                       ; $7821: $66
	pop bc                                           ; $7822: $c1
	ld e, e                                          ; $7823: $5b
	ret nz                                           ; $7824: $c0

	ld bc, $01a0                                     ; $7825: $01 $a0 $01
	inc bc                                           ; $7828: $03
	ld l, c                                          ; $7829: $69
	push hl                                          ; $782a: $e5
	inc sp                                           ; $782b: $33
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	ld a, e                                          ; $782e: $7b
	pop hl                                           ; $782f: $e1
	ld [hl-], a                                      ; $7830: $32
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	pop hl                                           ; $7833: $e1
	ld [bc], a                                       ; $7834: $02
	ld bc, $6288                                     ; $7835: $01 $88 $62
	ld hl, sp-$79                                    ; $7838: $f8 $87
	ld [bc], a                                       ; $783a: $02
	sub c                                            ; $783b: $91
	ldh [rAUD3HIGH], a                               ; $783c: $e0 $1e
	ld a, [de]                                       ; $783e: $1a
	pop hl                                           ; $783f: $e1
	ld [bc], a                                       ; $7840: $02
	inc bc                                           ; $7841: $03
	rra                                              ; $7842: $1f
	ret nz                                           ; $7843: $c0

	dec h                                            ; $7844: $25
	pop de                                           ; $7845: $d1
	ret nc                                           ; $7846: $d0

	ret nz                                           ; $7847: $c0

	ld bc, $04a0                                     ; $7848: $01 $a0 $04
	inc bc                                           ; $784b: $03
	ld c, [hl]                                       ; $784c: $4e
	ret nz                                           ; $784d: $c0

	ld bc, $01a0                                     ; $784e: $01 $a0 $01
	inc bc                                           ; $7851: $03
	ld [hl], d                                       ; $7852: $72
	ret nz                                           ; $7853: $c0

	ld bc, $04a0                                     ; $7854: $01 $a0 $04
	inc bc                                           ; $7857: $03
	add d                                            ; $7858: $82
	ld hl, sp-$79                                    ; $7859: $f8 $87
	ld [bc], a                                       ; $785b: $02
	sub c                                            ; $785c: $91
	ldh [$3c], a                                     ; $785d: $e0 $3c
	ld d, $e1                                        ; $785f: $16 $e1
	ld [bc], a                                       ; $7861: $02
	inc bc                                           ; $7862: $03
	dec de                                           ; $7863: $1b
	ret nz                                           ; $7864: $c0

	ld bc, $04a0                                     ; $7865: $01 $a0 $04
	ld bc, $c0b4                                     ; $7868: $01 $b4 $c0
	ld bc, $01a0                                     ; $786b: $01 $a0 $01
	inc bc                                           ; $786e: $03
	adc [hl]                                         ; $786f: $8e
	ret nz                                           ; $7870: $c0

	ld bc, $04a0                                     ; $7871: $01 $a0 $04
	inc bc                                           ; $7874: $03
	sub d                                            ; $7875: $92
	ld hl, sp-$79                                    ; $7876: $f8 $87
	ld [bc], a                                       ; $7878: $02
	sub c                                            ; $7879: $91
	ldh [$5a], a                                     ; $787a: $e0 $5a
	ld d, $e1                                        ; $787c: $16 $e1
	ld [bc], a                                       ; $787e: $02
	inc bc                                           ; $787f: $03
	rla                                              ; $7880: $17
	ret nz                                           ; $7881: $c0

	ld bc, $04a0                                     ; $7882: $01 $a0 $04
	inc bc                                           ; $7885: $03
	sbc [hl]                                         ; $7886: $9e
	ret nz                                           ; $7887: $c0

	ld bc, $01a0                                     ; $7888: $01 $a0 $01
	inc bc                                           ; $788b: $03
	and h                                            ; $788c: $a4
	ret nz                                           ; $788d: $c0

	ld bc, $04a0                                     ; $788e: $01 $a0 $04
	inc bc                                           ; $7891: $03
	and [hl]                                         ; $7892: $a6
	ld d, $e1                                        ; $7893: $16 $e1
	ld [bc], a                                       ; $7895: $02
	inc bc                                           ; $7896: $03
	inc de                                           ; $7897: $13
	ret nz                                           ; $7898: $c0

	ld bc, $04a0                                     ; $7899: $01 $a0 $04
	inc bc                                           ; $789c: $03
	or a                                             ; $789d: $b7
	ret nz                                           ; $789e: $c0

	ld bc, $01a0                                     ; $789f: $01 $a0 $01
	inc bc                                           ; $78a2: $03
	rst JumpTable                                          ; $78a3: $c7
	ret nz                                           ; $78a4: $c0

	ld bc, $04a0                                     ; $78a5: $01 $a0 $04
	inc bc                                           ; $78a8: $03
	jp nc, $c009                                     ; $78a9: $d2 $09 $c0

	rst SubAFromDE                                          ; $78ac: $df
	pop bc                                           ; $78ad: $c1
	ld e, c                                          ; $78ae: $59
	db $e3                                           ; $78af: $e3
	nop                                              ; $78b0: $00
	ld e, h                                          ; $78b1: $5c
	pop hl                                           ; $78b2: $e1
	ld [bc], a                                       ; $78b3: $02
	ld bc, $8380                                     ; $78b4: $01 $80 $83
	ret nz                                           ; $78b7: $c0

	dec de                                           ; $78b8: $1b
	jp nc, $d002                                     ; $78b9: $d2 $02 $d0

	pop de                                           ; $78bc: $d1
	ld l, $e0                                        ; $78bd: $2e $e0
	nop                                              ; $78bf: $00

jr_083_78c0:
	call $01c0                                       ; $78c0: $cd $c0 $01
	and b                                            ; $78c3: $a0
	ld bc, $dd03                                     ; $78c4: $01 $03 $dd
	ret nz                                           ; $78c7: $c0

	ld bc, $04a0                                     ; $78c8: $01 $a0 $04
	inc bc                                           ; $78cb: $03
	jp hl                                            ; $78cc: $e9


	ret nz                                           ; $78cd: $c0

	ld bc, $01a0                                     ; $78ce: $01 $a0 $01
	inc bc                                           ; $78d1: $03
	ldh a, [c]                                       ; $78d2: $f2
	ret nz                                           ; $78d3: $c0

	ld bc, $04a0                                     ; $78d4: $01 $a0 $04
	inc b                                            ; $78d7: $04
	ld bc, $01c0                                     ; $78d8: $01 $c0 $01
	and b                                            ; $78db: $a0
	ld bc, $0a04                                     ; $78dc: $01 $04 $0a
	ret nz                                           ; $78df: $c0

	ld bc, $04a0                                     ; $78e0: $01 $a0 $04
	inc b                                            ; $78e3: $04
	inc de                                           ; $78e4: $13
	pop hl                                           ; $78e5: $e1
	ld [hl-], a                                      ; $78e6: $32
	nop                                              ; $78e7: $00
	ld l, l                                          ; $78e8: $6d
	ldh [rP1], a                                     ; $78e9: $e0 $00
	or l                                             ; $78eb: $b5
	ld [bc], a                                       ; $78ec: $02
	jp nc, $3ad3                                     ; $78ed: $d2 $d3 $3a

	ldh [rP1], a                                     ; $78f0: $e0 $00
	sbc e                                            ; $78f2: $9b
	ret nz                                           ; $78f3: $c0

	ld bc, $01a0                                     ; $78f4: $01 $a0 $01
	inc b                                            ; $78f7: $04
	dec e                                            ; $78f8: $1d
	ret nz                                           ; $78f9: $c0

	ld bc, $04a0                                     ; $78fa: $01 $a0 $04
	inc b                                            ; $78fd: $04
	jr z, jr_083_78c0                                ; $78fe: $28 $c0

	ld bc, $01a0                                     ; $7900: $01 $a0 $01
	inc b                                            ; $7903: $04
	jr c, @-$3e                                      ; $7904: $38 $c0

	ld bc, $04a0                                     ; $7906: $01 $a0 $04
	inc b                                            ; $7909: $04
	inc a                                            ; $790a: $3c
	ret nz                                           ; $790b: $c0

	ld bc, $01a0                                     ; $790c: $01 $a0 $01
	inc b                                            ; $790f: $04
	ld d, b                                          ; $7910: $50
	ret nz                                           ; $7911: $c0

	ld bc, $04a0                                     ; $7912: $01 $a0 $04
	inc b                                            ; $7915: $04
	ld bc, $01c0                                     ; $7916: $01 $c0 $01
	and b                                            ; $7919: $a0
	ld bc, $5e04                                     ; $791a: $01 $04 $5e
	ret nz                                           ; $791d: $c0

	ld bc, $04a0                                     ; $791e: $01 $a0 $04
	inc b                                            ; $7921: $04
	inc de                                           ; $7922: $13
	pop hl                                           ; $7923: $e1
	ld [hl-], a                                      ; $7924: $32
	nop                                              ; $7925: $00
	ld l, l                                          ; $7926: $6d
	ldh [rP1], a                                     ; $7927: $e0 $00
	ld [hl], a                                       ; $7929: $77
	ld bc, $22d4                                     ; $792a: $01 $d4 $22
	ldh [rP1], a                                     ; $792d: $e0 $00
	ld e, [hl]                                       ; $792f: $5e
	ret nz                                           ; $7930: $c0

	ld bc, $01a0                                     ; $7931: $01 $a0 $01
	inc b                                            ; $7934: $04
	dec e                                            ; $7935: $1d
	ret nz                                           ; $7936: $c0

	ld bc, $04a0                                     ; $7937: $01 $a0 $04
	inc b                                            ; $793a: $04
	ld l, b                                          ; $793b: $68
	ret nz                                           ; $793c: $c0

	ld bc, $01a0                                     ; $793d: $01 $a0 $01
	inc b                                            ; $7940: $04
	ld e, [hl]                                       ; $7941: $5e
	ret nz                                           ; $7942: $c0

	ld bc, $04a0                                     ; $7943: $01 $a0 $04
	inc b                                            ; $7946: $04
	inc de                                           ; $7947: $13
	pop hl                                           ; $7948: $e1
	ld [hl-], a                                      ; $7949: $32
	nop                                              ; $794a: $00
	ld l, l                                          ; $794b: $6d
	ldh [rP1], a                                     ; $794c: $e0 $00
	ld d, d                                          ; $794e: $52
	ld bc, $34d5                                     ; $794f: $01 $d5 $34
	ret nz                                           ; $7952: $c0

	ld bc, $04a0                                     ; $7953: $01 $a0 $04
	inc b                                            ; $7956: $04
	ld a, b                                          ; $7957: $78
	ret nz                                           ; $7958: $c0

	ld bc, $01a0                                     ; $7959: $01 $a0 $01
	inc b                                            ; $795c: $04
	add e                                            ; $795d: $83
	ret nz                                           ; $795e: $c0

	ld bc, $04a0                                     ; $795f: $01 $a0 $04
	inc b                                            ; $7962: $04
	adc [hl]                                         ; $7963: $8e
	ret nz                                           ; $7964: $c0

	ld bc, $01a0                                     ; $7965: $01 $a0 $01
	ld [bc], a                                       ; $7968: $02
	ld hl, sp-$40                                    ; $7969: $f8 $c0
	ld bc, $04a0                                     ; $796b: $01 $a0 $04
	inc b                                            ; $796e: $04
	sbc b                                            ; $796f: $98
	pop hl                                           ; $7970: $e1
	ld [hl-], a                                      ; $7971: $32
	nop                                              ; $7972: $00
	ld l, l                                          ; $7973: $6d
	ret nz                                           ; $7974: $c0

	ld bc, $04a0                                     ; $7975: $01 $a0 $04
	inc b                                            ; $7978: $04
	and e                                            ; $7979: $a3
	ret nz                                           ; $797a: $c0

	ld bc, $01a0                                     ; $797b: $01 $a0 $01
	inc b                                            ; $797e: $04
	xor b                                            ; $797f: $a8
	ret nz                                           ; $7980: $c0

	ld bc, $04a0                                     ; $7981: $01 $a0 $04
	inc b                                            ; $7984: $04
	xor d                                            ; $7985: $aa
	pop bc                                           ; $7986: $c1
	ld e, e                                          ; $7987: $5b
	push hl                                          ; $7988: $e5
	inc sp                                           ; $7989: $33
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	ld [de], a                                       ; $798c: $12
	ret nz                                           ; $798d: $c0

	ld bc, $04a0                                     ; $798e: $01 $a0 $04
	inc b                                            ; $7991: $04
	or [hl]                                          ; $7992: $b6
	ret nz                                           ; $7993: $c0

	ld bc, $01a0                                     ; $7994: $01 $a0 $01
	inc b                                            ; $7997: $04
	jp $01c0                                         ; $7998: $c3 $c0 $01


	and b                                            ; $799b: $a0
	inc b                                            ; $799c: $04
	inc b                                            ; $799d: $04
	ret                                              ; $799e: $c9


	ld [de], a                                       ; $799f: $12
	ret nz                                           ; $79a0: $c0

	ld bc, $04a0                                     ; $79a1: $01 $a0 $04
	inc b                                            ; $79a4: $04
	reti                                             ; $79a5: $d9


	ret nz                                           ; $79a6: $c0

	ld bc, $01a0                                     ; $79a7: $01 $a0 $01
	inc b                                            ; $79aa: $04
	xor b                                            ; $79ab: $a8
	ret nz                                           ; $79ac: $c0

	ld bc, $04a0                                     ; $79ad: $01 $a0 $04
	inc b                                            ; $79b0: $04
	ldh [c], a                                       ; $79b1: $e2
	add hl, bc                                       ; $79b2: $09
	ret nz                                           ; $79b3: $c0

	sub $c1                                          ; $79b4: $d6 $c1
	ld e, c                                          ; $79b6: $59
	db $e3                                           ; $79b7: $e3
	nop                                              ; $79b8: $00
	ld e, h                                          ; $79b9: $5c
	pop hl                                           ; $79ba: $e1
	ld [bc], a                                       ; $79bb: $02
	ld bc, $8380                                     ; $79bc: $01 $80 $83
	ret nz                                           ; $79bf: $c0

	dec de                                           ; $79c0: $1b
	jp nc, $d002                                     ; $79c1: $d2 $02 $d0

	pop de                                           ; $79c4: $d1
	ld a, [hl-]                                      ; $79c5: $3a
	ret nz                                           ; $79c6: $c0

	ld bc, $04a0                                     ; $79c7: $01 $a0 $04
	inc b                                            ; $79ca: $04
	ld [$01c0], a                                    ; $79cb: $ea $c0 $01
	and b                                            ; $79ce: $a0
	ld bc, $f904                                     ; $79cf: $01 $04 $f9
	ret nz                                           ; $79d2: $c0

	ld bc, $04a0                                     ; $79d3: $01 $a0 $04
	dec b                                            ; $79d6: $05
	inc bc                                           ; $79d7: $03
	ret nz                                           ; $79d8: $c0

	ld bc, $01a0                                     ; $79d9: $01 $a0 $01
	dec b                                            ; $79dc: $05
	inc c                                            ; $79dd: $0c
	pop hl                                           ; $79de: $e1
	ld [hl-], a                                      ; $79df: $32
	nop                                              ; $79e0: $00
	call nz, $01c0                                   ; $79e1: $c4 $c0 $01
	and b                                            ; $79e4: $a0
	inc b                                            ; $79e5: $04
	dec b                                            ; $79e6: $05
	inc d                                            ; $79e7: $14
	ret nz                                           ; $79e8: $c0

	ld bc, $01a0                                     ; $79e9: $01 $a0 $01
	dec b                                            ; $79ec: $05
	daa                                              ; $79ed: $27
	ret nz                                           ; $79ee: $c0

	ld bc, $04a0                                     ; $79ef: $01 $a0 $04
	dec b                                            ; $79f2: $05
	scf                                              ; $79f3: $37
	ret nz                                           ; $79f4: $c0

	ld bc, $01a0                                     ; $79f5: $01 $a0 $01
	dec b                                            ; $79f8: $05
	ld a, [hl-]                                      ; $79f9: $3a
	ret nz                                           ; $79fa: $c0

	ld bc, $04a0                                     ; $79fb: $01 $a0 $04
	dec b                                            ; $79fe: $05
	ccf                                              ; $79ff: $3f
	ld [bc], a                                       ; $7a00: $02
	jp nc, $31d3                                     ; $7a01: $d2 $d3 $31

	ret nz                                           ; $7a04: $c0

	ld bc, $04a0                                     ; $7a05: $01 $a0 $04
	dec b                                            ; $7a08: $05
	ld b, [hl]                                       ; $7a09: $46
	ret nz                                           ; $7a0a: $c0

	ld bc, $01a0                                     ; $7a0b: $01 $a0 $01
	inc b                                            ; $7a0e: $04
	ld sp, hl                                        ; $7a0f: $f9
	ret nz                                           ; $7a10: $c0

	ld bc, $04a0                                     ; $7a11: $01 $a0 $04
	dec b                                            ; $7a14: $05
	ld d, c                                          ; $7a15: $51
	ret nz                                           ; $7a16: $c0

	ld bc, $01a0                                     ; $7a17: $01 $a0 $01
	dec b                                            ; $7a1a: $05
	ld e, d                                          ; $7a1b: $5a
	ret nz                                           ; $7a1c: $c0

	ld bc, $04a0                                     ; $7a1d: $01 $a0 $04
	dec b                                            ; $7a20: $05
	ld h, [hl]                                       ; $7a21: $66
	ret nz                                           ; $7a22: $c0

	ld bc, $01a0                                     ; $7a23: $01 $a0 $01
	dec b                                            ; $7a26: $05
	ld [hl], c                                       ; $7a27: $71
	ret nz                                           ; $7a28: $c0

	ld bc, $04a0                                     ; $7a29: $01 $a0 $04
	dec b                                            ; $7a2c: $05
	ld [hl], a                                       ; $7a2d: $77
	pop hl                                           ; $7a2e: $e1
	ld [hl-], a                                      ; $7a2f: $32
	nop                                              ; $7a30: $00
	call nz, $00e0                                   ; $7a31: $c4 $e0 $00
	ld e, b                                          ; $7a34: $58
	ld bc, $25d4                                     ; $7a35: $01 $d4 $25
	ret nz                                           ; $7a38: $c0

	ld bc, $04a0                                     ; $7a39: $01 $a0 $04
	dec b                                            ; $7a3c: $05
	ld b, [hl]                                       ; $7a3d: $46
	ret nz                                           ; $7a3e: $c0

	ld bc, $01a0                                     ; $7a3f: $01 $a0 $01
	inc b                                            ; $7a42: $04
	ld sp, hl                                        ; $7a43: $f9
	ret nz                                           ; $7a44: $c0

	ld bc, $04a0                                     ; $7a45: $01 $a0 $04
	dec b                                            ; $7a48: $05
	ld d, c                                          ; $7a49: $51
	ret nz                                           ; $7a4a: $c0

	ld bc, $01a0                                     ; $7a4b: $01 $a0 $01
	dec b                                            ; $7a4e: $05
	ld e, d                                          ; $7a4f: $5a
	ret nz                                           ; $7a50: $c0

	ld bc, $04a0                                     ; $7a51: $01 $a0 $04
	dec b                                            ; $7a54: $05
	ld a, l                                          ; $7a55: $7d
	pop hl                                           ; $7a56: $e1
	ld [hl-], a                                      ; $7a57: $32
	nop                                              ; $7a58: $00
	call nz, $00e0                                   ; $7a59: $c4 $e0 $00
	jr nc, jr_083_7a5f                               ; $7a5c: $30 $01

	push de                                          ; $7a5e: $d5

jr_083_7a5f:
	dec h                                            ; $7a5f: $25
	ret nz                                           ; $7a60: $c0

	ld bc, $04a0                                     ; $7a61: $01 $a0 $04
	dec b                                            ; $7a64: $05
	ld b, [hl]                                       ; $7a65: $46
	ret nz                                           ; $7a66: $c0

	ld bc, $01a0                                     ; $7a67: $01 $a0 $01
	inc b                                            ; $7a6a: $04
	ld sp, hl                                        ; $7a6b: $f9
	ret nz                                           ; $7a6c: $c0

	ld bc, $04a0                                     ; $7a6d: $01 $a0 $04
	dec b                                            ; $7a70: $05
	add h                                            ; $7a71: $84
	ret nz                                           ; $7a72: $c0

	ld bc, $01a0                                     ; $7a73: $01 $a0 $01
	dec b                                            ; $7a76: $05
	sub [hl]                                         ; $7a77: $96
	ret nz                                           ; $7a78: $c0

	ld bc, $04a0                                     ; $7a79: $01 $a0 $04
	dec b                                            ; $7a7c: $05
	sbc l                                            ; $7a7d: $9d
	pop hl                                           ; $7a7e: $e1
	ld [hl-], a                                      ; $7a7f: $32
	nop                                              ; $7a80: $00
	call nz, $00e0                                   ; $7a81: $c4 $e0 $00
	ld [$5bc1], sp                                   ; $7a84: $08 $c1 $5b
	push hl                                          ; $7a87: $e5
	inc sp                                           ; $7a88: $33
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	ld [de], a                                       ; $7a8b: $12
	ret nz                                           ; $7a8c: $c0

	ld bc, $04a0                                     ; $7a8d: $01 $a0 $04
	dec b                                            ; $7a90: $05
	and a                                            ; $7a91: $a7
	ret nz                                           ; $7a92: $c0

	ld bc, $01a0                                     ; $7a93: $01 $a0 $01
	dec b                                            ; $7a96: $05
	or a                                             ; $7a97: $b7
	ret nz                                           ; $7a98: $c0

	ld bc, $04a0                                     ; $7a99: $01 $a0 $04
	dec b                                            ; $7a9c: $05
	jp z, $2509                                      ; $7a9d: $ca $09 $25

	ret nz                                           ; $7aa0: $c0

	ld hl, $d2d2                                     ; $7aa1: $21 $d2 $d2
	pop hl                                           ; $7aa4: $e1
	ld [bc], a                                       ; $7aa5: $02
	ld bc, $8250                                     ; $7aa6: $01 $50 $82
	ret nz                                           ; $7aa9: $c0

	add b                                            ; $7aaa: $80
	ld bc, $07d3                                     ; $7aab: $01 $d3 $07
	ret nz                                           ; $7aae: $c0

	ld [hl+], a                                      ; $7aaf: $22
	jp nc, $e4d2                                     ; $7ab0: $d2 $d2 $e4

	ld bc, $01c3                                     ; $7ab3: $01 $c3 $01
	jp nc, $e403                                     ; $7ab6: $d2 $03 $e4

	ld bc, $013f                    ; $7ab9: $01 $3f $01
	pop de                                           ; $7abc: $d1
	rlca                                             ; $7abd: $07
	ret nz                                           ; $7abe: $c0

	ld [hl+], a                                      ; $7abf: $22
	pop de                                           ; $7ac0: $d1
	jp nc, $00e4                                     ; $7ac1: $d2 $e4 $00

	ld [bc], a                                       ; $7ac4: $02
	add hl, bc                                       ; $7ac5: $09
	pop bc                                           ; $7ac6: $c1
	ld [$c083], sp                                   ; $7ac7: $08 $83 $c0
	dec de                                           ; $7aca: $1b
	jp nc, $d002                                     ; $7acb: $d2 $02 $d0

	pop de                                           ; $7ace: $d1
	ld d, b                                          ; $7acf: $50
	ldh [rP1], a                                     ; $7ad0: $e0 $00
	rst $38                                          ; $7ad2: $ff
	ret nz                                           ; $7ad3: $c0

	ld bc, $04a0                                     ; $7ad4: $01 $a0 $04
	dec b                                            ; $7ad7: $05
	call z, $01c0                                    ; $7ad8: $cc $c0 $01
	and b                                            ; $7adb: $a0
	ld bc, $d805                                     ; $7adc: $01 $05 $d8
	ret nz                                           ; $7adf: $c0

	ld bc, $04a0                                     ; $7ae0: $01 $a0 $04
	dec b                                            ; $7ae3: $05
	db $db                                           ; $7ae4: $db
	pop hl                                           ; $7ae5: $e1
	ld [bc], a                                       ; $7ae6: $02
	rlca                                             ; $7ae7: $07
	cp a                                             ; $7ae8: $bf
	ret nz                                           ; $7ae9: $c0

	ld bc, $01a0                                     ; $7aea: $01 $a0 $01
	dec b                                            ; $7aed: $05
	ldh [c], a                                       ; $7aee: $e2
	ld h, b                                          ; $7aef: $60
	ei                                               ; $7af0: $fb
	pop bc                                           ; $7af1: $c1
	ld c, l                                          ; $7af2: $4d
	ldh [$64], a                                     ; $7af3: $e0 $64
	ld h, $c0                                        ; $7af5: $26 $c0
	ld bc, $04a0                                     ; $7af7: $01 $a0 $04
	dec b                                            ; $7afa: $05
	and $c0                                          ; $7afb: $e6 $c0
	ld bc, $01a0                                     ; $7afd: $01 $a0 $01
	dec b                                            ; $7b00: $05
	di                                               ; $7b01: $f3
	ret nz                                           ; $7b02: $c0

	ld bc, $04a0                                     ; $7b03: $01 $a0 $04
	dec b                                            ; $7b06: $05
	ld a, [$01c0]                                    ; $7b07: $fa $c0 $01
	and b                                            ; $7b0a: $a0
	ld bc, $0506                                     ; $7b0b: $01 $06 $05
	ret nz                                           ; $7b0e: $c0

	ld bc, $04a0                                     ; $7b0f: $01 $a0 $04
	ld b, $0d                                        ; $7b12: $06 $0d
	pop bc                                           ; $7b14: $c1
	ld e, e                                          ; $7b15: $5b
	ret nz                                           ; $7b16: $c0

	ld bc, $01a0                                     ; $7b17: $01 $a0 $01
	ld b, $1d                                        ; $7b1a: $06 $1d
	inc bc                                           ; $7b1c: $03
	ldh [rP1], a                                     ; $7b1d: $e0 $00
	cp a                                             ; $7b1f: $bf
	ld [bc], a                                       ; $7b20: $02
	jp nc, $38d3                                     ; $7b21: $d2 $d3 $38

	ldh [rP1], a                                     ; $7b24: $e0 $00
	xor e                                            ; $7b26: $ab
	ret nz                                           ; $7b27: $c0

	ld bc, $04a0                                     ; $7b28: $01 $a0 $04
	ld b, $24                                        ; $7b2b: $06 $24
	pop hl                                           ; $7b2d: $e1
	ld [bc], a                                       ; $7b2e: $02
	rlca                                             ; $7b2f: $07
	cp a                                             ; $7b30: $bf
	ret nz                                           ; $7b31: $c0

	ld bc, $01a0                                     ; $7b32: $01 $a0 $01
	dec b                                            ; $7b35: $05
	ldh [c], a                                       ; $7b36: $e2
	ld h, b                                          ; $7b37: $60
	ei                                               ; $7b38: $fb
	pop bc                                           ; $7b39: $c1
	ld c, l                                          ; $7b3a: $4d
	ldh [$64], a                                     ; $7b3b: $e0 $64
	ld a, [de]                                       ; $7b3d: $1a
	ret nz                                           ; $7b3e: $c0

	ld bc, $04a0                                     ; $7b3f: $01 $a0 $04
	ld b, $33                                        ; $7b42: $06 $33
	ret nz                                           ; $7b44: $c0

	ld bc, $01a0                                     ; $7b45: $01 $a0 $01
	ld b, $40                                        ; $7b48: $06 $40
	ret nz                                           ; $7b4a: $c0

	ld bc, $04a0                                     ; $7b4b: $01 $a0 $04
	ld b, $49                                        ; $7b4e: $06 $49
	pop bc                                           ; $7b50: $c1
	ld e, e                                          ; $7b51: $5b
	ret nz                                           ; $7b52: $c0

	ld bc, $01a0                                     ; $7b53: $01 $a0 $01
	ld b, $53                                        ; $7b56: $06 $53
	inc bc                                           ; $7b58: $03
	ldh [rP1], a                                     ; $7b59: $e0 $00
	add e                                            ; $7b5b: $83
	ld bc, $44d4                                     ; $7b5c: $01 $d4 $44
	ldh [rP1], a                                     ; $7b5f: $e0 $00
	ld [hl], b                                       ; $7b61: $70
	ret nz                                           ; $7b62: $c0

	ld bc, $04a0                                     ; $7b63: $01 $a0 $04
	ld b, $64                                        ; $7b66: $06 $64
	pop hl                                           ; $7b68: $e1
	ld [bc], a                                       ; $7b69: $02
	rlca                                             ; $7b6a: $07
	cp a                                             ; $7b6b: $bf
	ret nz                                           ; $7b6c: $c0

	ld bc, $01a0                                     ; $7b6d: $01 $a0 $01
	dec b                                            ; $7b70: $05
	ldh [c], a                                       ; $7b71: $e2
	ld h, b                                          ; $7b72: $60
	ei                                               ; $7b73: $fb
	pop bc                                           ; $7b74: $c1
	ld c, l                                          ; $7b75: $4d
	ldh [$64], a                                     ; $7b76: $e0 $64
	ld h, $c0                                        ; $7b78: $26 $c0
	ld bc, $04a0                                     ; $7b7a: $01 $a0 $04
	ld b, $74                                        ; $7b7d: $06 $74
	ret nz                                           ; $7b7f: $c0

	ld bc, $01a0                                     ; $7b80: $01 $a0 $01
	ld b, $82                                        ; $7b83: $06 $82
	ret nz                                           ; $7b85: $c0

	ld bc, $04a0                                     ; $7b86: $01 $a0 $04
	ld b, $8b                                        ; $7b89: $06 $8b
	ret nz                                           ; $7b8b: $c0

	ld bc, $01a0                                     ; $7b8c: $01 $a0 $01
	ld b, $98                                        ; $7b8f: $06 $98
	ret nz                                           ; $7b91: $c0

	ld bc, $04a0                                     ; $7b92: $01 $a0 $04
	ld b, $9b                                        ; $7b95: $06 $9b
	pop bc                                           ; $7b97: $c1
	ld e, e                                          ; $7b98: $5b
	ret nz                                           ; $7b99: $c0

	ld bc, $01a0                                     ; $7b9a: $01 $a0 $01
	ld b, $a5                                        ; $7b9d: $06 $a5
	inc bc                                           ; $7b9f: $03
	ldh [rP1], a                                     ; $7ba0: $e0 $00
	inc a                                            ; $7ba2: $3c
	ld bc, $26d5                                     ; $7ba3: $01 $d5 $26
	ret nz                                           ; $7ba6: $c0

	ld bc, $04a0                                     ; $7ba7: $01 $a0 $04
	ld b, $aa                                        ; $7baa: $06 $aa
	ret nz                                           ; $7bac: $c0

	ld bc, $01a0                                     ; $7bad: $01 $a0 $01
	ld b, $ad                                        ; $7bb0: $06 $ad
	ret nz                                           ; $7bb2: $c0

	ld bc, $04a0                                     ; $7bb3: $01 $a0 $04
	ld b, $b2                                        ; $7bb6: $06 $b2
	ret nz                                           ; $7bb8: $c0

	ld bc, $01a0                                     ; $7bb9: $01 $a0 $01
	ld b, $bc                                        ; $7bbc: $06 $bc
	ret nz                                           ; $7bbe: $c0

	ld bc, $04a0                                     ; $7bbf: $01 $a0 $04
	ld b, $c4                                        ; $7bc2: $06 $c4
	pop bc                                           ; $7bc4: $c1
	ld e, e                                          ; $7bc5: $5b
	ret nz                                           ; $7bc6: $c0

	ld bc, $01a0                                     ; $7bc7: $01 $a0 $01
	ld b, $cb                                        ; $7bca: $06 $cb
	push hl                                          ; $7bcc: $e5
	inc sp                                           ; $7bcd: $33
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	inc c                                            ; $7bd0: $0c
	ret nz                                           ; $7bd1: $c0

	ld bc, $04a0                                     ; $7bd2: $01 $a0 $04
	ld b, $d6                                        ; $7bd5: $06 $d6
	ret nz                                           ; $7bd7: $c0

	ld bc, $01a0                                     ; $7bd8: $01 $a0 $01
	ld b, $ad                                        ; $7bdb: $06 $ad
	ld a, [de]                                       ; $7bdd: $1a
	ret nz                                           ; $7bde: $c0

jr_083_7bdf:
	ld bc, $04a0                                     ; $7bdf: $01 $a0 $04
	ld b, $d9                                        ; $7be2: $06 $d9
	ret nz                                           ; $7be4: $c0

	ld bc, $01a0                                     ; $7be5: $01 $a0 $01
	ld b, $e6                                        ; $7be8: $06 $e6
	ret nz                                           ; $7bea: $c0

	ld bc, $04a0                                     ; $7beb: $01 $a0 $04
	ld b, $ee                                        ; $7bee: $06 $ee
	pop bc                                           ; $7bf0: $c1
	ld e, e                                          ; $7bf1: $5b
	ret nz                                           ; $7bf2: $c0

	ld bc, $01a0                                     ; $7bf3: $01 $a0 $01
	ld b, $f5                                        ; $7bf6: $06 $f5
	add hl, bc                                       ; $7bf8: $09
	ld h, e                                          ; $7bf9: $63
	add e                                            ; $7bfa: $83
	ret nz                                           ; $7bfb: $c0

	dec de                                           ; $7bfc: $1b
	jp nc, $d002                                     ; $7bfd: $d2 $02 $d0

	pop de                                           ; $7c00: $d1
	add hl, bc                                       ; $7c01: $09
	ldh [rP1], a                                     ; $7c02: $e0 $00
	ld e, d                                          ; $7c04: $5a
	ret nz                                           ; $7c05: $c0

	ld bc, $04a0                                     ; $7c06: $01 $a0 $04
	ld b, $fc                                        ; $7c09: $06 $fc
	ld [bc], a                                       ; $7c0b: $02
	jp nc, $15d3                                     ; $7c0c: $d2 $d3 $15

	ldh [rP1], a                                     ; $7c0f: $e0 $00
	ld c, l                                          ; $7c11: $4d
	ret nz                                           ; $7c12: $c0

	ld bc, $04a0                                     ; $7c13: $01 $a0 $04
	rlca                                             ; $7c16: $07
	ld a, [bc]                                       ; $7c17: $0a
	ret nz                                           ; $7c18: $c0

	ld bc, $01a0                                     ; $7c19: $01 $a0 $01
	rlca                                             ; $7c1c: $07
	jr jr_083_7bdf                                   ; $7c1d: $18 $c0

jr_083_7c1f:
	ld bc, $04a0                                     ; $7c1f: $01 $a0 $04
	ld b, $fc                                        ; $7c22: $06 $fc
	ld bc, $15d4                                     ; $7c24: $01 $d4 $15
	ldh [rP1], a                                     ; $7c27: $e0 $00
	dec [hl]                                         ; $7c29: $35
	ret nz                                           ; $7c2a: $c0

	ld bc, $04a0                                     ; $7c2b: $01 $a0 $04
	rlca                                             ; $7c2e: $07
	ld [hl+], a                                      ; $7c2f: $22
	ret nz                                           ; $7c30: $c0

	ld bc, $01a0                                     ; $7c31: $01 $a0 $01
	rlca                                             ; $7c34: $07
	inc sp                                           ; $7c35: $33
	ret nz                                           ; $7c36: $c0

	ld bc, $04a0                                     ; $7c37: $01 $a0 $04
	ld b, $fc                                        ; $7c3a: $06 $fc
	ld bc, $12d5                                     ; $7c3c: $01 $d5 $12
	ret nz                                           ; $7c3f: $c0

	ld bc, $04a0                                     ; $7c40: $01 $a0 $04
	inc bc                                           ; $7c43: $03
	ld c, [hl]                                       ; $7c44: $4e
	ret nz                                           ; $7c45: $c0

	ld bc, $01a0                                     ; $7c46: $01 $a0 $01
	rlca                                             ; $7c49: $07
	ld a, [hl-]                                      ; $7c4a: $3a
	ret nz                                           ; $7c4b: $c0

	ld bc, $04a0                                     ; $7c4c: $01 $a0 $04
	rlca                                             ; $7c4f: $07
	ld b, b                                          ; $7c50: $40
	pop bc                                           ; $7c51: $c1
	ld e, e                                          ; $7c52: $5b
	ret nz                                           ; $7c53: $c0

	ld bc, $01a0                                     ; $7c54: $01 $a0 $01
	rlca                                             ; $7c57: $07
	ld b, d                                          ; $7c58: $42
	push hl                                          ; $7c59: $e5
	inc sp                                           ; $7c5a: $33
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	jr jr_083_7c1f                                   ; $7c5d: $18 $c0

	ld bc, $04a0                                     ; $7c5f: $01 $a0 $04
	ld b, $d6                                        ; $7c62: $06 $d6
	ret nz                                           ; $7c64: $c0

	ld bc, $01a0                                     ; $7c65: $01 $a0 $01
	rlca                                             ; $7c68: $07
	ld a, [hl-]                                      ; $7c69: $3a
	ret nz                                           ; $7c6a: $c0

	ld bc, $04a0                                     ; $7c6b: $01 $a0 $04
	rlca                                             ; $7c6e: $07
	ld b, a                                          ; $7c6f: $47
	ret nz                                           ; $7c70: $c0

	ld bc, $01a0                                     ; $7c71: $01 $a0 $01
	rlca                                             ; $7c74: $07
	ld d, e                                          ; $7c75: $53
	add hl, bc                                       ; $7c76: $09
	ret nz                                           ; $7c77: $c0

	db $eb                                           ; $7c78: $eb
	add e                                            ; $7c79: $83
	ret nz                                           ; $7c7a: $c0

	dec de                                           ; $7c7b: $1b
	jp nc, $d002                                     ; $7c7c: $d2 $02 $d0

	pop de                                           ; $7c7f: $d1
	add hl, hl                                       ; $7c80: $29
	ldh [rP1], a                                     ; $7c81: $e0 $00
	ldh [c], a                                       ; $7c83: $e2
	ret nz                                           ; $7c84: $c0

	ld bc, $04a0                                     ; $7c85: $01 $a0 $04
	rlca                                             ; $7c88: $07
	ld e, e                                          ; $7c89: $5b
	ret nz                                           ; $7c8a: $c0

	ld bc, $01a0                                     ; $7c8b: $01 $a0 $01
	rlca                                             ; $7c8e: $07
	ld h, h                                          ; $7c8f: $64
	ret nz                                           ; $7c90: $c0

	ld bc, $04a0                                     ; $7c91: $01 $a0 $04
	rlca                                             ; $7c94: $07
	ld l, c                                          ; $7c95: $69
	ret nz                                           ; $7c96: $c0

	ld bc, $01a0                                     ; $7c97: $01 $a0 $01
	rlca                                             ; $7c9a: $07
	ld [hl], e                                       ; $7c9b: $73
	ret nz                                           ; $7c9c: $c0

	ld bc, $04a0                                     ; $7c9d: $01 $a0 $04
	rlca                                             ; $7ca0: $07
	ld [hl], a                                       ; $7ca1: $77
	pop bc                                           ; $7ca2: $c1
	ld e, e                                          ; $7ca3: $5b
	ret nz                                           ; $7ca4: $c0

	ld bc, $01a0                                     ; $7ca5: $01 $a0 $01
	rlca                                             ; $7ca8: $07
	adc c                                            ; $7ca9: $89
	ld [bc], a                                       ; $7caa: $02
	jp nc, Jump_083_4dd3                             ; $7cab: $d2 $d3 $4d

	ldh [rP1], a                                     ; $7cae: $e0 $00
	or l                                             ; $7cb0: $b5
	ret nz                                           ; $7cb1: $c0

	ld bc, $04a0                                     ; $7cb2: $01 $a0 $04
	rlca                                             ; $7cb5: $07
	sub d                                            ; $7cb6: $92
	ret nz                                           ; $7cb7: $c0

	ld bc, $01a0                                     ; $7cb8: $01 $a0 $01
	rlca                                             ; $7cbb: $07
	sbc [hl]                                         ; $7cbc: $9e
	ret nz                                           ; $7cbd: $c0

	ld bc, $04a0                                     ; $7cbe: $01 $a0 $04
	rlca                                             ; $7cc1: $07
	and l                                            ; $7cc2: $a5
	ret nz                                           ; $7cc3: $c0

	ld bc, $01a0                                     ; $7cc4: $01 $a0 $01
	rlca                                             ; $7cc7: $07
	xor e                                            ; $7cc8: $ab
	ret nz                                           ; $7cc9: $c0

	ld bc, $04a0                                     ; $7cca: $01 $a0 $04
	rlca                                             ; $7ccd: $07
	or c                                             ; $7cce: $b1
	ret nz                                           ; $7ccf: $c0

	ld bc, $01a0                                     ; $7cd0: $01 $a0 $01
	rlca                                             ; $7cd3: $07
	or h                                             ; $7cd4: $b4
	ret nz                                           ; $7cd5: $c0

	ld bc, $04a0                                     ; $7cd6: $01 $a0 $04
	rlca                                             ; $7cd9: $07
	ret                                              ; $7cda: $c9


	ret nz                                           ; $7cdb: $c0

	ld bc, $01a0                                     ; $7cdc: $01 $a0 $01
	rlca                                             ; $7cdf: $07
	push de                                          ; $7ce0: $d5
	ret nz                                           ; $7ce1: $c0

	ld bc, $04a0                                     ; $7ce2: $01 $a0 $04
	rlca                                             ; $7ce5: $07
	ret c                                            ; $7ce6: $d8

	ret nz                                           ; $7ce7: $c0

	ld bc, $01a0                                     ; $7ce8: $01 $a0 $01
	rlca                                             ; $7ceb: $07
	db $ed                                           ; $7cec: $ed
	ret nz                                           ; $7ced: $c0

	ld bc, $04a0                                     ; $7cee: $01 $a0 $04
	rlca                                             ; $7cf1: $07
	or $c1                                           ; $7cf2: $f6 $c1
	ld e, e                                          ; $7cf4: $5b
	ret nz                                           ; $7cf5: $c0

	ld bc, $01a0                                     ; $7cf6: $01 $a0 $01
	ld [$0104], sp                              ; $7cf9: $08 $04 $01
	call nc, $e045                                   ; $7cfc: $d4 $45 $e0
	nop                                              ; $7cff: $00
	ld h, l                                          ; $7d00: $65
	ret nz                                           ; $7d01: $c0

	ld bc, $04a0                                     ; $7d02: $01 $a0 $04
	ld [$c009], sp                                   ; $7d05: $08 $09 $c0
	ld bc, $01a0                                     ; $7d08: $01 $a0 $01
	ld [$c011], sp                                   ; $7d0b: $08 $11 $c0
	ld bc, $04a0                                     ; $7d0e: $01 $a0 $04
	ld [$601d], sp                                   ; $7d11: $08 $1d $60
	rst $38                                          ; $7d14: $ff
	ld b, $80                                        ; $7d15: $06 $80
	nop                                              ; $7d17: $00
	halt                                             ; $7d18: $76
	add b                                            ; $7d19: $80
	nop                                              ; $7d1a: $00
	ld [hl], a                                       ; $7d1b: $77
	ld b, $c0                                        ; $7d1c: $06 $c0
	ld bc, $01a0                                     ; $7d1e: $01 $a0 $01
	ld [bc], a                                       ; $7d21: $02
	sub c                                            ; $7d22: $91
	ld d, $c0                                        ; $7d23: $16 $c0
	ld bc, $01a0                                     ; $7d25: $01 $a0 $01
	ld [bc], a                                       ; $7d28: $02
	sub h                                            ; $7d29: $94
	ret nz                                           ; $7d2a: $c0

	ld bc, $04a0                                     ; $7d2b: $01 $a0 $04
	ld [bc], a                                       ; $7d2e: $02
	sbc h                                            ; $7d2f: $9c
	ret nz                                           ; $7d30: $c0

	ld bc, $01a0                                     ; $7d31: $01 $a0 $01
	ld [bc], a                                       ; $7d34: $02
	and l                                            ; $7d35: $a5
	nop                                              ; $7d36: $00
	add b                                            ; $7d37: $80
	nop                                              ; $7d38: $00
	ld [hl], a                                       ; $7d39: $77
	ret nz                                           ; $7d3a: $c0

	ld bc, $04a0                                     ; $7d3b: $01 $a0 $04
	ld [$e031], sp                                   ; $7d3e: $08 $31 $e0
	nop                                              ; $7d41: $00
	jr nc, jr_083_7d45                               ; $7d42: $30 $01

	push de                                          ; $7d44: $d5

jr_083_7d45:
	ld a, [de]                                       ; $7d45: $1a
	ret nz                                           ; $7d46: $c0

	ld bc, $04a0                                     ; $7d47: $01 $a0 $04
	ld [$c043], sp                                   ; $7d4a: $08 $43 $c0
	ld bc, $01a0                                     ; $7d4d: $01 $a0 $01
	ld [$c045], sp                                   ; $7d50: $08 $45 $c0
	ld bc, $04a0                                     ; $7d53: $01 $a0 $04
	ld [$c152], sp                                   ; $7d56: $08 $52 $c1
	ld e, e                                          ; $7d59: $5b
	ret nz                                           ; $7d5a: $c0

	ld bc, $01a0                                     ; $7d5b: $01 $a0 $01
	ld [$e55a], sp                                   ; $7d5e: $08 $5a $e5
	inc sp                                           ; $7d61: $33
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	inc c                                            ; $7d64: $0c
	ret nz                                           ; $7d65: $c0

	ld bc, $04a0                                     ; $7d66: $01 $a0 $04
	ld [$c061], sp                                   ; $7d69: $08 $61 $c0
	ld bc, $01a0                                     ; $7d6c: $01 $a0 $01
	ld [$1445], sp                                   ; $7d6f: $08 $45 $14
	ret nz                                           ; $7d72: $c0

	ld bc, $01a0                                     ; $7d73: $01 $a0 $01
	ld [$c064], sp                                   ; $7d76: $08 $64 $c0
	ld bc, $04a0                                     ; $7d79: $01 $a0 $04
	ld [$c16a], sp                                   ; $7d7c: $08 $6a $c1
	ld e, e                                          ; $7d7f: $5b
	ret nz                                           ; $7d80: $c0

	ld bc, $01a0                                     ; $7d81: $01 $a0 $01
	ld [$0971], sp                                   ; $7d84: $08 $71 $09
	ld hl, $c082                                     ; $7d87: $21 $82 $c0
	add b                                            ; $7d8a: $80
	ld bc, $03d3                                     ; $7d8b: $01 $d3 $03
	db $e4                                           ; $7d8e: $e4
	ld bc, $015a                                     ; $7d8f: $01 $5a $01
	jp nc, $c00b                                     ; $7d92: $d2 $0b $c0

	ld hl, $d2d2                                     ; $7d95: $21 $d2 $d2
	ret nz                                           ; $7d98: $c0

	ld [hl+], a                                      ; $7d99: $22
	pop de                                           ; $7d9a: $d1
	jp nc, $00e4                                     ; $7d9b: $d2 $e4 $00

	sbc h                                            ; $7d9e: $9c
	ld bc, $07d1                                     ; $7d9f: $01 $d1 $07
	ret nz                                           ; $7da2: $c0

	ld hl, $d2d2                                     ; $7da3: $21 $d2 $d2
	db $e4                                           ; $7da6: $e4
	nop                                              ; $7da7: $00
	ld [bc], a                                       ; $7da8: $02
	add hl, bc                                       ; $7da9: $09
	ld a, c                                          ; $7daa: $79
	add e                                            ; $7dab: $83
	ret nz                                           ; $7dac: $c0

	dec de                                           ; $7dad: $1b
	jp nc, $d002                                     ; $7dae: $d2 $02 $d0

	pop de                                           ; $7db1: $d1
	jr @-$1e                                         ; $7db2: $18 $e0

	ld [bc], a                                       ; $7db4: $02
	ld [bc], a                                       ; $7db5: $02
	ret nz                                           ; $7db6: $c0

	ld bc, $04a0                                     ; $7db7: $01 $a0 $04
	ld [$c081], sp                                   ; $7dba: $08 $81 $c0
	ld bc, $01a0                                     ; $7dbd: $01 $a0 $01
	ld [$c086], sp                                   ; $7dc0: $08 $86 $c0
	ld bc, $04a0                                     ; $7dc3: $01 $a0 $04
	ld [$e094], sp                                   ; $7dc6: $08 $94 $e0
	nop                                              ; $7dc9: $00
	ld e, e                                          ; $7dca: $5b
	ld [bc], a                                       ; $7dcb: $02
	jp nc, $24d3                                     ; $7dcc: $d2 $d3 $24

	ldh [rSB], a                                     ; $7dcf: $e0 $01
	and $c0                                          ; $7dd1: $e6 $c0
	ld bc, $04a0                                     ; $7dd3: $01 $a0 $04
	ld [$c09e], sp                                   ; $7dd6: $08 $9e $c0
	ld bc, $01a0                                     ; $7dd9: $01 $a0 $01
	ld [$c0a1], sp                                   ; $7ddc: $08 $a1 $c0
	ld bc, $04a0                                     ; $7ddf: $01 $a0 $04
	ld [$c0ac], sp                                   ; $7de2: $08 $ac $c0
	ld bc, $01a0                                     ; $7de5: $01 $a0 $01
	ld [$c0b2], sp                                   ; $7de8: $08 $b2 $c0
	ld bc, $04a0                                     ; $7deb: $01 $a0 $04
	ld [$e0b5], sp                                   ; $7dee: $08 $b5 $e0
	nop                                              ; $7df1: $00
	inc sp                                           ; $7df2: $33
	ld bc, $24d4                                     ; $7df3: $01 $d4 $24
	ldh [rSB], a                                     ; $7df6: $e0 $01
	cp a                                             ; $7df8: $bf
	ret nz                                           ; $7df9: $c0

	ld bc, $04a0                                     ; $7dfa: $01 $a0 $04
	ld [$c0c0], sp                                   ; $7dfd: $08 $c0 $c0
	ld bc, $01a0                                     ; $7e00: $01 $a0 $01
	ld [$c0c3], sp                                   ; $7e03: $08 $c3 $c0
	ld bc, $04a0                                     ; $7e06: $01 $a0 $04
	ld [$c0cb], sp                                   ; $7e09: $08 $cb $c0
	ld bc, $01a0                                     ; $7e0c: $01 $a0 $01
	ld [$c0b2], sp                                   ; $7e0f: $08 $b2 $c0
	ld bc, $04a0                                     ; $7e12: $01 $a0 $04
	ld [$e0d2], sp                                   ; $7e15: $08 $d2 $e0
	nop                                              ; $7e18: $00
	inc c                                            ; $7e19: $0c
	ld bc, $03d5                                     ; $7e1a: $01 $d5 $03
	ldh [rSB], a                                     ; $7e1d: $e0 $01
	xor c                                            ; $7e1f: $a9
	push hl                                          ; $7e20: $e5
	inc sp                                           ; $7e21: $33
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	inc d                                            ; $7e24: $14
	ret nz                                           ; $7e25: $c0

	ld bc, $01a0                                     ; $7e26: $01 $a0 $01
	ld [$c0d8], sp                                   ; $7e29: $08 $d8 $c0
	ld bc, $04a0                                     ; $7e2c: $01 $a0 $04
	ld [$c1db], sp                                   ; $7e2f: $08 $db $c1
	ld e, e                                          ; $7e32: $5b
	ret nz                                           ; $7e33: $c0

	ld bc, $01a0                                     ; $7e34: $01 $a0 $01
	ld [$09e3], sp                                   ; $7e37: $08 $e3 $09
	xor [hl]                                         ; $7e3a: $ae
	add e                                            ; $7e3b: $83
	ret nz                                           ; $7e3c: $c0

	dec de                                           ; $7e3d: $1b
	jp nc, $d002                                     ; $7e3e: $d2 $02 $d0

	pop de                                           ; $7e41: $d1
	ld [hl-], a                                      ; $7e42: $32
	ldh [rSB], a                                     ; $7e43: $e0 $01
	ld [hl], d                                       ; $7e45: $72
	ret nz                                           ; $7e46: $c0

	ld bc, $04a0                                     ; $7e47: $01 $a0 $04
	ld [$e0e9], sp                                   ; $7e4a: $08 $e9 $e0
	ld bc, $c04a                                     ; $7e4d: $01 $4a $c0
	ld bc, $04a0                                     ; $7e50: $01 $a0 $04
	ld [$c0ef], sp                                   ; $7e53: $08 $ef $c0
	ld bc, $01a0                                     ; $7e56: $01 $a0 $01
	ld [$c0fc], sp                                   ; $7e59: $08 $fc $c0
	ld bc, $04a0                                     ; $7e5c: $01 $a0 $04
	add hl, bc                                       ; $7e5f: $09
	ld bc, $01c0                                     ; $7e60: $01 $c0 $01
	and b                                            ; $7e63: $a0
	ld bc, $0b09                                     ; $7e64: $01 $09 $0b
	ret nz                                           ; $7e67: $c0

	ld bc, $04a0                                     ; $7e68: $01 $a0 $04
	add hl, bc                                       ; $7e6b: $09
	ld e, $c1                                        ; $7e6c: $1e $c1
	ld e, e                                          ; $7e6e: $5b
	ret nz                                           ; $7e6f: $c0

	ld bc, $01a0                                     ; $7e70: $01 $a0 $01
	add hl, bc                                       ; $7e73: $09
	inc h                                            ; $7e74: $24
	ld [bc], a                                       ; $7e75: $02
	jp nc, $2ed3                                     ; $7e76: $d2 $d3 $2e

	ldh [rSB], a                                     ; $7e79: $e0 $01
	inc a                                            ; $7e7b: $3c
	ret nz                                           ; $7e7c: $c0

	ld bc, $04a0                                     ; $7e7d: $01 $a0 $04
	add hl, bc                                       ; $7e80: $09
	ld sp, $01e0                                     ; $7e81: $31 $e0 $01
	inc d                                            ; $7e84: $14
	pop hl                                           ; $7e85: $e1
	ld [bc], a                                       ; $7e86: $02
	inc bc                                           ; $7e87: $03
	rra                                              ; $7e88: $1f
	ret nz                                           ; $7e89: $c0

	ld bc, $04a0                                     ; $7e8a: $01 $a0 $04
	add hl, bc                                       ; $7e8d: $09
	inc [hl]                                         ; $7e8e: $34
	ret nz                                           ; $7e8f: $c0

	ld bc, $01a0                                     ; $7e90: $01 $a0 $01
	add hl, bc                                       ; $7e93: $09
	ld b, b                                          ; $7e94: $40
	pop hl                                           ; $7e95: $e1
	ld [bc], a                                       ; $7e96: $02
	inc bc                                           ; $7e97: $03
	inc de                                           ; $7e98: $13
	ret nz                                           ; $7e99: $c0

	ld bc, $04a0                                     ; $7e9a: $01 $a0 $04
	add hl, bc                                       ; $7e9d: $09
	ld e, $c1                                        ; $7e9e: $1e $c1
	ld e, e                                          ; $7ea0: $5b
	ret nz                                           ; $7ea1: $c0

	ld bc, $01a0                                     ; $7ea2: $01 $a0 $01
	add hl, bc                                       ; $7ea5: $09
	ld d, b                                          ; $7ea6: $50
	ld bc, $35d4                                     ; $7ea7: $01 $d4 $35
	ldh [rSB], a                                     ; $7eaa: $e0 $01
	dec bc                                           ; $7eac: $0b
	ret nz                                           ; $7ead: $c0

	ld bc, $04a0                                     ; $7eae: $01 $a0 $04
	add hl, bc                                       ; $7eb1: $09
	ld e, [hl]                                       ; $7eb2: $5e
	ret nz                                           ; $7eb3: $c0

	ld bc, $01a0                                     ; $7eb4: $01 $a0 $01
	add hl, bc                                       ; $7eb7: $09
	ld l, c                                          ; $7eb8: $69
	ret nz                                           ; $7eb9: $c0

	ld bc, $04a0                                     ; $7eba: $01 $a0 $04
	add hl, bc                                       ; $7ebd: $09
	ld l, h                                          ; $7ebe: $6c
	ret nz                                           ; $7ebf: $c0

	ld bc, $01a0                                     ; $7ec0: $01 $a0 $01
	inc bc                                           ; $7ec3: $03
	ld c, d                                          ; $7ec4: $4a
	ret nz                                           ; $7ec5: $c0

	ld bc, $04a0                                     ; $7ec6: $01 $a0 $04
	add hl, bc                                       ; $7ec9: $09
	ld [hl], d                                       ; $7eca: $72
	ret nz                                           ; $7ecb: $c0

	ld bc, $01a0                                     ; $7ecc: $01 $a0 $01
	add hl, bc                                       ; $7ecf: $09
	add c                                            ; $7ed0: $81
	ret nz                                           ; $7ed1: $c0

	ld bc, $04a0                                     ; $7ed2: $01 $a0 $04
	add hl, bc                                       ; $7ed5: $09
	adc h                                            ; $7ed6: $8c
	pop bc                                           ; $7ed7: $c1
	ld e, e                                          ; $7ed8: $5b
	ret nz                                           ; $7ed9: $c0

	ld bc, $01a0                                     ; $7eda: $01 $a0 $01
	add hl, bc                                       ; $7edd: $09
	sub [hl]                                         ; $7ede: $96
	ld bc, $03d5                                     ; $7edf: $01 $d5 $03
	ldh [rP1], a                                     ; $7ee2: $e0 $00
	db $e4                                           ; $7ee4: $e4
	push hl                                          ; $7ee5: $e5
	inc sp                                           ; $7ee6: $33
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	add hl, bc                                       ; $7ee9: $09
	xor h                                            ; $7eea: $ac
	add e                                            ; $7eeb: $83
	ret nz                                           ; $7eec: $c0

	dec de                                           ; $7eed: $1b
	jp nc, $d002                                     ; $7eee: $d2 $02 $d0

	pop de                                           ; $7ef1: $d1
	dec [hl]                                         ; $7ef2: $35
	ldh [rP1], a                                     ; $7ef3: $e0 $00
	jp nz, $01c0                                     ; $7ef5: $c2 $c0 $01

	and b                                            ; $7ef8: $a0
	inc b                                            ; $7ef9: $04
	add hl, bc                                       ; $7efa: $09
	and c                                            ; $7efb: $a1
	ret nz                                           ; $7efc: $c0

	ld bc, $01a0                                     ; $7efd: $01 $a0 $01
	add hl, bc                                       ; $7f00: $09
	and e                                            ; $7f01: $a3
	ret nz                                           ; $7f02: $c0

	ld bc, $04a0                                     ; $7f03: $01 $a0 $04
	add hl, bc                                       ; $7f06: $09
	xor c                                            ; $7f07: $a9
	ret nz                                           ; $7f08: $c0

	ld bc, $01a0                                     ; $7f09: $01 $a0 $01
	add hl, bc                                       ; $7f0c: $09
	cp b                                             ; $7f0d: $b8
	ret nz                                           ; $7f0e: $c0

	ld bc, $04a0                                     ; $7f0f: $01 $a0 $04
	add hl, bc                                       ; $7f12: $09
	add $c0                                          ; $7f13: $c6 $c0
	ld bc, $01a0                                     ; $7f15: $01 $a0 $01
	add hl, bc                                       ; $7f18: $09
	rst SubAFromHL                                          ; $7f19: $d7
	ret nz                                           ; $7f1a: $c0

	ld bc, $04a0                                     ; $7f1b: $01 $a0 $04
	add hl, bc                                       ; $7f1e: $09
	sbc $c1                                          ; $7f1f: $de $c1
	ld e, e                                          ; $7f21: $5b
	ret nz                                           ; $7f22: $c0

	ld bc, $01a0                                     ; $7f23: $01 $a0 $01
	add hl, bc                                       ; $7f26: $09
	add sp, $02                                      ; $7f27: $e8 $02
	jp nc, $35d3                                     ; $7f29: $d2 $d3 $35

	ldh [rP1], a                                     ; $7f2c: $e0 $00
	adc c                                            ; $7f2e: $89
	ret nz                                           ; $7f2f: $c0

	ld bc, $04a0                                     ; $7f30: $01 $a0 $04
	add hl, bc                                       ; $7f33: $09
	and c                                            ; $7f34: $a1
	ret nz                                           ; $7f35: $c0

	ld bc, $01a0                                     ; $7f36: $01 $a0 $01
	add hl, bc                                       ; $7f39: $09
	and e                                            ; $7f3a: $a3
	ret nz                                           ; $7f3b: $c0

	ld bc, $04a0                                     ; $7f3c: $01 $a0 $04
	add hl, bc                                       ; $7f3f: $09
	pop af                                           ; $7f40: $f1
	ret nz                                           ; $7f41: $c0

	ld bc, $01a0                                     ; $7f42: $01 $a0 $01
	add hl, bc                                       ; $7f45: $09
	db $fc                                           ; $7f46: $fc
	ret nz                                           ; $7f47: $c0

	ld bc, $04a0                                     ; $7f48: $01 $a0 $04
	ld a, [bc]                                       ; $7f4b: $0a
	inc b                                            ; $7f4c: $04
	ret nz                                           ; $7f4d: $c0

	ld bc, $01a0                                     ; $7f4e: $01 $a0 $01
	ld a, [bc]                                       ; $7f51: $0a
	db $10                                           ; $7f52: $10
	ret nz                                           ; $7f53: $c0

	ld bc, $04a0                                     ; $7f54: $01 $a0 $04
	ld a, [bc]                                       ; $7f57: $0a
	inc d                                            ; $7f58: $14
	pop bc                                           ; $7f59: $c1
	ld e, e                                          ; $7f5a: $5b
	ret nz                                           ; $7f5b: $c0

	ld bc, $01a0                                     ; $7f5c: $01 $a0 $01
	ld a, [bc]                                       ; $7f5f: $0a
	jr nz, @+$03                                     ; $7f60: $20 $01

	call nc, $e029                                   ; $7f62: $d4 $29 $e0
	nop                                              ; $7f65: $00
	ld d, c                                          ; $7f66: $51
	ret nz                                           ; $7f67: $c0

	ld bc, $04a0                                     ; $7f68: $01 $a0 $04
	ld a, [bc]                                       ; $7f6b: $0a
	dec hl                                           ; $7f6c: $2b
	ret nz                                           ; $7f6d: $c0

	ld bc, $01a0                                     ; $7f6e: $01 $a0 $01
	add hl, bc                                       ; $7f71: $09
	and e                                            ; $7f72: $a3
	ret nz                                           ; $7f73: $c0

	ld bc, $04a0                                     ; $7f74: $01 $a0 $04
	ld a, [bc]                                       ; $7f77: $0a
	ld l, $c0                                        ; $7f78: $2e $c0
	ld bc, $01a0                                     ; $7f7a: $01 $a0 $01
	ld a, [bc]                                       ; $7f7d: $0a
	ld b, b                                          ; $7f7e: $40
	ret nz                                           ; $7f7f: $c0

	ld bc, $04a0                                     ; $7f80: $01 $a0 $04
	ld a, [bc]                                       ; $7f83: $0a
	ld d, b                                          ; $7f84: $50
	pop bc                                           ; $7f85: $c1
	ld e, e                                          ; $7f86: $5b
	ret nz                                           ; $7f87: $c0

	ld bc, $01a0                                     ; $7f88: $01 $a0 $01
	ld a, [bc]                                       ; $7f8b: $0a
	ld e, a                                          ; $7f8c: $5f
	ld bc, $03d5                                     ; $7f8d: $01 $d5 $03
	ldh [rP1], a                                     ; $7f90: $e0 $00
	ld [hl], $e5                                     ; $7f92: $36 $e5
	inc sp                                           ; $7f94: $33
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	ld e, $c0                                        ; $7f97: $1e $c0
	ld bc, $01a0                                     ; $7f99: $01 $a0 $01
	ld a, [bc]                                       ; $7f9c: $0a
	ld l, b                                          ; $7f9d: $68
	ret nz                                           ; $7f9e: $c0

	ld bc, $04a0                                     ; $7f9f: $01 $a0 $04
	ld a, [bc]                                       ; $7fa2: $0a
	ld [hl], h                                       ; $7fa3: $74
	ret nz                                           ; $7fa4: $c0

	ld bc, $01a0                                     ; $7fa5: $01 $a0 $01
	ld a, [bc]                                       ; $7fa8: $0a
	add a                                            ; $7fa9: $87
	ret nz                                           ; $7faa: $c0

	ld bc, $04a0                                     ; $7fab: $01 $a0 $04
	ld a, [bc]                                       ; $7fae: $0a
	adc e                                            ; $7faf: $8b
	ret nz                                           ; $7fb0: $c0

	ld bc, $01a0                                     ; $7fb1: $01 $a0 $01
	ld a, [bc]                                       ; $7fb4: $0a
	sub h                                            ; $7fb5: $94
	db $10                                           ; $7fb6: $10
	pop hl                                           ; $7fb7: $e1
	ld [bc], a                                       ; $7fb8: $02
	ld bc, $c050                                     ; $7fb9: $01 $50 $c0
	ld bc, $04a0                                     ; $7fbc: $01 $a0 $04
	ld a, [bc]                                       ; $7fbf: $0a
	sbc [hl]                                         ; $7fc0: $9e
	ret nz                                           ; $7fc1: $c0

	ld bc, $01a0                                     ; $7fc2: $01 $a0 $01
	ld a, [bc]                                       ; $7fc5: $0a
	and d                                            ; $7fc6: $a2
	ld c, $b0                                        ; $7fc7: $0e $b0
	ld a, a                                          ; $7fc9: $7f
	inc bc                                           ; $7fca: $03
	ldh [rP1], a                                     ; $7fcb: $e0 $00
	ld a, [bc]                                       ; $7fcd: $0a
	rst $38                                          ; $7fce: $ff
	ld b, $c0                                        ; $7fcf: $06 $c0
	ld bc, $01a0                                     ; $7fd1: $01 $a0 $01
	ld a, [bc]                                       ; $7fd4: $0a
	xor c                                            ; $7fd5: $a9
	inc h                                            ; $7fd6: $24
	ret nz                                           ; $7fd7: $c0

	ld bc, $01a0                                     ; $7fd8: $01 $a0 $01
	ld a, [bc]                                       ; $7fdb: $0a
	or h                                             ; $7fdc: $b4
	pop hl                                           ; $7fdd: $e1
	ld [bc], a                                       ; $7fde: $02
	ld bc, $c050                                     ; $7fdf: $01 $50 $c0
	ld bc, $04a0                                     ; $7fe2: $01 $a0 $04
	ld a, [bc]                                       ; $7fe5: $0a
	pop bc                                           ; $7fe6: $c1
	ret nz                                           ; $7fe7: $c0

	ld bc, $01a0                                     ; $7fe8: $01 $a0 $01
	ld a, [bc]                                       ; $7feb: $0a
	rst JumpTable                                          ; $7fec: $c7
	ret nz                                           ; $7fed: $c0

	ld bc, $04a0                                     ; $7fee: $01 $a0 $04
	ld a, [bc]                                       ; $7ff1: $0a
	call z, Call_083_5bc1                            ; $7ff2: $cc $c1 $5b
	ret nz                                           ; $7ff5: $c0

	ld bc, $01a0                                     ; $7ff6: $01 $a0 $01
	ld a, [bc]                                       ; $7ff9: $0a
	call nc, $0707                                   ; $7ffa: $d4 $07 $07
	add hl, bc                                       ; $7ffd: $09
	jr nz, @-$03                                     ; $7ffe: $20 $fb
