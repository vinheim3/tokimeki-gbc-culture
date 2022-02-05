; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $081", ROMX[$4000], BANK[$81]

	inc b                                            ; $4000: $04
	db $20, $e4                                      ; $4001: $20 $e4
	nop                                              ; $4003: $00
	ld hl, sp+$28                                    ; $4004: $f8 $28
	ld b, $c0                                        ; $4006: $06 $c0
	ld bc, $09a0                                     ; $4008: $01 $a0 $09
	ld bc, $3fa0                                     ; $400b: $01 $a0 $3f
	ld bc, $09a9                                     ; $400e: $01 $a9 $09
	ld de, $02e1                                     ; $4011: $11 $e1 $02
	inc bc                                           ; $4014: $03
	rla                                              ; $4015: $17
	ret nz                                           ; $4016: $c0

	ld bc, $09a0                                     ; $4017: $01 $a0 $09
	ld bc, $e1b2                                     ; $401a: $01 $b2 $e1
	ld [bc], a                                       ; $401d: $02
	inc b                                            ; $401e: $04
	jr nz, @-$1a                                     ; $401f: $20 $e4

	nop                                              ; $4021: $00
	jp c, $b601                                      ; $4022: $da $01 $b6

	add hl, bc                                       ; $4025: $09
	ld de, $02e1                                     ; $4026: $11 $e1 $02
	inc bc                                           ; $4029: $03
	dec de                                           ; $402a: $1b
	ret nz                                           ; $402b: $c0

	ld bc, $09a0                                     ; $402c: $01 $a0 $09

jr_081_402f:
	ld bc, $e1be                                     ; $402f: $01 $be $e1
	ld [bc], a                                       ; $4032: $02
	inc b                                            ; $4033: $04
	add hl, hl                                       ; $4034: $29
	db $e4                                           ; $4035: $e4
	nop                                              ; $4036: $00
	push bc                                          ; $4037: $c5
	ld bc, $09c3                                     ; $4038: $01 $c3 $09
	ld de, $02e1                                     ; $403b: $11 $e1 $02
	inc bc                                           ; $403e: $03
	rla                                              ; $403f: $17
	ret nz                                           ; $4040: $c0

	ld bc, $09a0                                     ; $4041: $01 $a0 $09
	ld bc, $e1cc                                     ; $4044: $01 $cc $e1
	ld [bc], a                                       ; $4047: $02
	inc b                                            ; $4048: $04
	jr nz, jr_081_402f                               ; $4049: $20 $e4

	nop                                              ; $404b: $00
	or b                                             ; $404c: $b0
	add hl, bc                                       ; $404d: $09
	inc e                                            ; $404e: $1c
	pop bc                                           ; $404f: $c1
	ld e, c                                          ; $4050: $59
	db $e3                                           ; $4051: $e3
	nop                                              ; $4052: $00
	and d                                            ; $4053: $a2
	ret nz                                           ; $4054: $c0

	add hl, bc                                       ; $4055: $09
	db $e3                                           ; $4056: $e3
	nop                                              ; $4057: $00
	add hl, hl                                       ; $4058: $29
	and b                                            ; $4059: $a0
	add b                                            ; $405a: $80
	and b                                            ; $405b: $a0
	ld c, $00                                        ; $405c: $0e $00
	inc bc                                           ; $405e: $03
	db $e4                                           ; $405f: $e4
	nop                                              ; $4060: $00
	dec bc                                           ; $4061: $0b
	rst $38                                          ; $4062: $ff
	rlca                                             ; $4063: $07
	ld b, b                                          ; $4064: $40
	add b                                            ; $4065: $80
	and b                                            ; $4066: $a0
	ld c, $e4                                        ; $4067: $0e $e4
	nop                                              ; $4069: $00
	ld c, d                                          ; $406a: $4a
	jr z, @+$08                                      ; $406b: $28 $06

	ret nz                                           ; $406d: $c0

	ld bc, $09a0                                     ; $406e: $01 $a0 $09
	ld bc, $3fce                                     ; $4071: $01 $ce $3f
	ld bc, $09d2                                     ; $4074: $01 $d2 $09
	ld de, $02e1                                     ; $4077: $11 $e1 $02
	inc bc                                           ; $407a: $03
	rrca                                             ; $407b: $0f
	ret nz                                           ; $407c: $c0

	ld bc, $09a0                                     ; $407d: $01 $a0 $09
	ld bc, $e1d9                                     ; $4080: $01 $d9 $e1
	ld [bc], a                                       ; $4083: $02
	inc b                                            ; $4084: $04
	ld c, $e4                                        ; $4085: $0e $e4
	nop                                              ; $4087: $00
	ld [hl], h                                       ; $4088: $74
	ld bc, $09e0                                     ; $4089: $01 $e0 $09
	ld de, $02e1                                     ; $408c: $11 $e1 $02
	inc bc                                           ; $408f: $03
	rra                                              ; $4090: $1f
	ret nz                                           ; $4091: $c0

	ld bc, $09a0                                     ; $4092: $01 $a0 $09
	ld bc, $e1e4                                     ; $4095: $01 $e4 $e1
	ld [bc], a                                       ; $4098: $02
	inc b                                            ; $4099: $04
	ld [hl-], a                                      ; $409a: $32
	db $e4                                           ; $409b: $e4
	nop                                              ; $409c: $00
	ld e, a                                          ; $409d: $5f
	ld bc, $09e9                                     ; $409e: $01 $e9 $09
	ld de, $02e1                                     ; $40a1: $11 $e1 $02
	inc bc                                           ; $40a4: $03
	dec de                                           ; $40a5: $1b
	ret nz                                           ; $40a6: $c0

	ld bc, $09a0                                     ; $40a7: $01 $a0 $09
	ld bc, $e1f1                                     ; $40aa: $01 $f1 $e1
	ld [bc], a                                       ; $40ad: $02
	inc b                                            ; $40ae: $04
	add hl, hl                                       ; $40af: $29
	db $e4                                           ; $40b0: $e4
	nop                                              ; $40b1: $00
	ld c, d                                          ; $40b2: $4a
	jr z, @+$08                                      ; $40b3: $28 $06

	ret nz                                           ; $40b5: $c0

	ld bc, $09a0                                     ; $40b6: $01 $a0 $09
	ld bc, $3ffb                                     ; $40b9: $01 $fb $3f
	ld [bc], a                                       ; $40bc: $02
	inc bc                                           ; $40bd: $03
	add hl, bc                                       ; $40be: $09
	ld de, $02e1                                     ; $40bf: $11 $e1 $02
	inc bc                                           ; $40c2: $03
	inc de                                           ; $40c3: $13
	ret nz                                           ; $40c4: $c0

	ld bc, $09a0                                     ; $40c5: $01 $a0 $09
	ld [bc], a                                       ; $40c8: $02
	dec b                                            ; $40c9: $05
	pop hl                                           ; $40ca: $e1
	ld [bc], a                                       ; $40cb: $02
	inc b                                            ; $40cc: $04
	rla                                              ; $40cd: $17
	db $e4                                           ; $40ce: $e4
	nop                                              ; $40cf: $00
	inc l                                            ; $40d0: $2c
	ld [bc], a                                       ; $40d1: $02
	dec c                                            ; $40d2: $0d
	add hl, bc                                       ; $40d3: $09
	ld de, $02e1                                     ; $40d4: $11 $e1 $02
	inc bc                                           ; $40d7: $03
	rra                                              ; $40d8: $1f
	ret nz                                           ; $40d9: $c0

	ld bc, $09a0                                     ; $40da: $01 $a0 $09
	ld [bc], a                                       ; $40dd: $02
	rrca                                             ; $40de: $0f
	pop hl                                           ; $40df: $e1
	ld [bc], a                                       ; $40e0: $02
	inc b                                            ; $40e1: $04
	ld [hl-], a                                      ; $40e2: $32
	db $e4                                           ; $40e3: $e4
	nop                                              ; $40e4: $00
	rla                                              ; $40e5: $17
	ld [bc], a                                       ; $40e6: $02
	inc d                                            ; $40e7: $14
	add hl, bc                                       ; $40e8: $09
	ld de, $02e1                                     ; $40e9: $11 $e1 $02

jr_081_40ec:
	inc bc                                           ; $40ec: $03
	dec de                                           ; $40ed: $1b
	ret nz                                           ; $40ee: $c0

	ld bc, $09a0                                     ; $40ef: $01 $a0 $09
	ld [bc], a                                       ; $40f2: $02
	ld d, $e1                                        ; $40f3: $16 $e1
	ld [bc], a                                       ; $40f5: $02
	inc b                                            ; $40f6: $04
	add hl, hl                                       ; $40f7: $29
	db $e4                                           ; $40f8: $e4
	nop                                              ; $40f9: $00
	ld [bc], a                                       ; $40fa: $02
	add hl, bc                                       ; $40fb: $09
	dec c                                            ; $40fc: $0d
	pop bc                                           ; $40fd: $c1
	ld e, c                                          ; $40fe: $59
	db $e3                                           ; $40ff: $e3
	nop                                              ; $4100: $00
	sbc a                                            ; $4101: $9f
	ret nz                                           ; $4102: $c0

	add hl, bc                                       ; $4103: $09
	db $e3                                           ; $4104: $e3
	nop                                              ; $4105: $00
	jr c, jr_081_40ec                                ; $4106: $38 $e4

	nop                                              ; $4108: $00
	ld [bc], a                                       ; $4109: $02
	add hl, bc                                       ; $410a: $09
	inc hl                                           ; $410b: $23
	add d                                            ; $410c: $82
	adc e                                            ; $410d: $8b
	and b                                            ; $410e: $a0
	ld bc, $b002                                     ; $410f: $01 $02 $b0
	add d                                            ; $4112: $82
	dec b                                            ; $4113: $05
	ret nz                                           ; $4114: $c0

	ld d, [hl]                                       ; $4115: $56
	ret c                                            ; $4116: $d8

	jp nc, $02d0                                     ; $4117: $d2 $d0 $02

	or b                                             ; $411a: $b0
	add e                                            ; $411b: $83
	dec b                                            ; $411c: $05
	ret nz                                           ; $411d: $c0

	ld d, [hl]                                       ; $411e: $56
	ret c                                            ; $411f: $d8

	jp nc, $02d1                                     ; $4120: $d2 $d1 $02

	or b                                             ; $4123: $b0
	add h                                            ; $4124: $84
	dec b                                            ; $4125: $05
	ret nz                                           ; $4126: $c0

jr_081_4127:
	ld d, [hl]                                       ; $4127: $56
	ret c                                            ; $4128: $d8

	jp nc, $e5d2                                     ; $4129: $d2 $d2 $e5

	daa                                              ; $412c: $27
	nop                                              ; $412d: $00
	nop                                              ; $412e: $00
	add hl, bc                                       ; $412f: $09
	inc d                                            ; $4130: $14
	ret nc                                           ; $4131: $d0

	add e                                            ; $4132: $83
	ld bc, $d0de                                     ; $4133: $01 $de $d0
	ret nz                                           ; $4136: $c0

	ld bc, $09a0                                     ; $4137: $01 $a0 $09
	ld [bc], a                                       ; $413a: $02
	dec e                                            ; $413b: $1d
	ret nz                                           ; $413c: $c0

	ld bc, $01a0                                     ; $413d: $01 $a0 $01
	ld [bc], a                                       ; $4140: $02
	jr nz, jr_081_4127                               ; $4141: $20 $e4

	nop                                              ; $4143: $00
	ld [bc], a                                       ; $4144: $02
	add hl, bc                                       ; $4145: $09
	inc [hl]                                         ; $4146: $34
	pop bc                                           ; $4147: $c1
	ld e, c                                          ; $4148: $59
	db $e3                                           ; $4149: $e3
	nop                                              ; $414a: $00
	xor l                                            ; $414b: $ad
	ld h, b                                          ; $414c: $60
	add b                                            ; $414d: $80
	ld [bc], a                                       ; $414e: $02
	ld b, c                                          ; $414f: $41
	rla                                              ; $4150: $17
	and c                                            ; $4151: $a1
	add c                                            ; $4152: $81
	and b                                            ; $4153: $a0
	rrca                                             ; $4154: $0f
	nop                                              ; $4155: $00
	inc bc                                           ; $4156: $03
	db $e4                                           ; $4157: $e4
	nop                                              ; $4158: $00
	or e                                             ; $4159: $b3
	ld bc, $e403                                     ; $415a: $01 $03 $e4
	nop                                              ; $415d: $00
	ld e, $ff                                        ; $415e: $1e $ff
	rlca                                             ; $4160: $07
	ld b, b                                          ; $4161: $40
	add c                                            ; $4162: $81
	and b                                            ; $4163: $a0
	rrca                                             ; $4164: $0f
	db $e4                                           ; $4165: $e4
	nop                                              ; $4166: $00
	ld e, l                                          ; $4167: $5d
	ld [de], a                                       ; $4168: $12
	and b                                            ; $4169: $a0
	add b                                            ; $416a: $80
	and b                                            ; $416b: $a0
	ld de, $0300                                     ; $416c: $11 $00 $03
	db $e4                                           ; $416f: $e4
	nop                                              ; $4170: $00
	dec bc                                           ; $4171: $0b
	rst $38                                          ; $4172: $ff
	rlca                                             ; $4173: $07

jr_081_4174:
	ld b, b                                          ; $4174: $40
	add b                                            ; $4175: $80
	and b                                            ; $4176: $a0
	ld de, $00e4                                     ; $4177: $11 $e4 $00
	ld c, d                                          ; $417a: $4a
	jr z, @+$08                                      ; $417b: $28 $06

	ret nz                                           ; $417d: $c0

	ld bc, $09a0                                     ; $417e: $01 $a0 $09
	ld [bc], a                                       ; $4181: $02
	ld h, $3f                                        ; $4182: $26 $3f
	ld [bc], a                                       ; $4184: $02
	ld l, $09                                        ; $4185: $2e $09
	ld de, $02e1                                     ; $4187: $11 $e1 $02
	inc bc                                           ; $418a: $03
	rrca                                             ; $418b: $0f
	ret nz                                           ; $418c: $c0

	ld bc, $09a0                                     ; $418d: $01 $a0 $09
	ld [bc], a                                       ; $4190: $02
	jr nc, jr_081_4174                               ; $4191: $30 $e1

	ld [bc], a                                       ; $4193: $02
	inc b                                            ; $4194: $04
	ld c, $e4                                        ; $4195: $0e $e4
	nop                                              ; $4197: $00
	cp h                                             ; $4198: $bc
	ld [bc], a                                       ; $4199: $02
	inc [hl]                                         ; $419a: $34
	add hl, bc                                       ; $419b: $09
	ld de, $02e1                                     ; $419c: $11 $e1 $02
	inc bc                                           ; $419f: $03
	dec de                                           ; $41a0: $1b
	ret nz                                           ; $41a1: $c0

	ld bc, $09a0                                     ; $41a2: $01 $a0 $09
	ld [bc], a                                       ; $41a5: $02
	ld [hl], $e1                                     ; $41a6: $36 $e1
	ld [bc], a                                       ; $41a8: $02
	inc b                                            ; $41a9: $04
	add hl, hl                                       ; $41aa: $29
	db $e4                                           ; $41ab: $e4
	nop                                              ; $41ac: $00
	and a                                            ; $41ad: $a7
	ld [bc], a                                       ; $41ae: $02
	ld a, [hl-]                                      ; $41af: $3a
	add hl, bc                                       ; $41b0: $09
	ld de, $02e1                                     ; $41b1: $11 $e1 $02
	inc bc                                           ; $41b4: $03
	inc de                                           ; $41b5: $13
	ret nz                                           ; $41b6: $c0

	ld bc, $09a0                                     ; $41b7: $01 $a0 $09
	ld bc, $e1d9                                     ; $41ba: $01 $d9 $e1
	ld [bc], a                                       ; $41bd: $02
	inc b                                            ; $41be: $04
	rla                                              ; $41bf: $17
	db $e4                                           ; $41c0: $e4
	nop                                              ; $41c1: $00
	sub d                                            ; $41c2: $92
	jr z, jr_081_41cb                                ; $41c3: $28 $06

	ret nz                                           ; $41c5: $c0

	ld bc, $09a0                                     ; $41c6: $01 $a0 $09
	ld [bc], a                                       ; $41c9: $02
	inc a                                            ; $41ca: $3c

jr_081_41cb:
	ccf                                              ; $41cb: $3f
	ld [bc], a                                       ; $41cc: $02
	ld b, a                                          ; $41cd: $47
	add hl, bc                                       ; $41ce: $09
	ld de, $02e1                                     ; $41cf: $11 $e1 $02
	inc bc                                           ; $41d2: $03
	dec de                                           ; $41d3: $1b
	ret nz                                           ; $41d4: $c0

	ld bc, $09a0                                     ; $41d5: $01 $a0 $09
	ld [bc], a                                       ; $41d8: $02
	ld c, [hl]                                       ; $41d9: $4e
	pop hl                                           ; $41da: $e1
	ld [bc], a                                       ; $41db: $02
	inc b                                            ; $41dc: $04
	add hl, hl                                       ; $41dd: $29
	db $e4                                           ; $41de: $e4
	nop                                              ; $41df: $00
	ld [hl], h                                       ; $41e0: $74
	ld [bc], a                                       ; $41e1: $02
	ld c, a                                          ; $41e2: $4f
	add hl, bc                                       ; $41e3: $09
	ld de, $02e1                                     ; $41e4: $11 $e1 $02
	inc bc                                           ; $41e7: $03
	rra                                              ; $41e8: $1f
	ret nz                                           ; $41e9: $c0

	ld bc, $09a0                                     ; $41ea: $01 $a0 $09
	ld [bc], a                                       ; $41ed: $02
	ld d, l                                          ; $41ee: $55
	pop hl                                           ; $41ef: $e1
	ld [bc], a                                       ; $41f0: $02
	inc b                                            ; $41f1: $04
	ld [hl-], a                                      ; $41f2: $32
	db $e4                                           ; $41f3: $e4
	nop                                              ; $41f4: $00
	ld e, a                                          ; $41f5: $5f
	ld [bc], a                                       ; $41f6: $02
	ld e, h                                          ; $41f7: $5c
	add hl, bc                                       ; $41f8: $09
	ld de, $02e1                                     ; $41f9: $11 $e1 $02
	inc bc                                           ; $41fc: $03
	dec de                                           ; $41fd: $1b
	ret nz                                           ; $41fe: $c0

	ld bc, $09a0                                     ; $41ff: $01 $a0 $09
	ld [bc], a                                       ; $4202: $02
	ld h, c                                          ; $4203: $61
	pop hl                                           ; $4204: $e1
	ld [bc], a                                       ; $4205: $02
	inc b                                            ; $4206: $04
	add hl, hl                                       ; $4207: $29
	db $e4                                           ; $4208: $e4
	nop                                              ; $4209: $00
	ld c, d                                          ; $420a: $4a
	jr z, jr_081_4213                                ; $420b: $28 $06

	ret nz                                           ; $420d: $c0

	ld bc, $09a0                                     ; $420e: $01 $a0 $09
	ld [bc], a                                       ; $4211: $02
	ld h, a                                          ; $4212: $67

jr_081_4213:
	ccf                                              ; $4213: $3f
	ld [bc], a                                       ; $4214: $02
	ld [hl], e                                       ; $4215: $73
	add hl, bc                                       ; $4216: $09
	ld de, $02e1                                     ; $4217: $11 $e1 $02
	inc bc                                           ; $421a: $03
	inc de                                           ; $421b: $13
	ret nz                                           ; $421c: $c0

	ld bc, $09a0                                     ; $421d: $01 $a0 $09
	ld [bc], a                                       ; $4220: $02
	ld a, e                                          ; $4221: $7b
	pop hl                                           ; $4222: $e1
	ld [bc], a                                       ; $4223: $02
	inc b                                            ; $4224: $04
	rla                                              ; $4225: $17
	db $e4                                           ; $4226: $e4
	nop                                              ; $4227: $00
	inc l                                            ; $4228: $2c
	ld [bc], a                                       ; $4229: $02
	ld a, [hl]                                       ; $422a: $7e
	add hl, bc                                       ; $422b: $09
	ld de, $02e1                                     ; $422c: $11 $e1 $02
	inc bc                                           ; $422f: $03
	rra                                              ; $4230: $1f
	ret nz                                           ; $4231: $c0

	ld bc, $09a0                                     ; $4232: $01 $a0 $09
	ld [bc], a                                       ; $4235: $02
	add b                                            ; $4236: $80
	pop hl                                           ; $4237: $e1
	ld [bc], a                                       ; $4238: $02
	inc b                                            ; $4239: $04
	ld [hl-], a                                      ; $423a: $32
	db $e4                                           ; $423b: $e4
	nop                                              ; $423c: $00
	rla                                              ; $423d: $17
	ld [bc], a                                       ; $423e: $02
	adc c                                            ; $423f: $89
	add hl, bc                                       ; $4240: $09
	ld de, $02e1                                     ; $4241: $11 $e1 $02
	inc bc                                           ; $4244: $03
	dec de                                           ; $4245: $1b
	ret nz                                           ; $4246: $c0

	ld bc, $09a0                                     ; $4247: $01 $a0 $09
	ld [bc], a                                       ; $424a: $02
	adc e                                            ; $424b: $8b
	pop hl                                           ; $424c: $e1
	ld [bc], a                                       ; $424d: $02
	inc b                                            ; $424e: $04
	add hl, hl                                       ; $424f: $29
	db $e4                                           ; $4250: $e4
	nop                                              ; $4251: $00
	ld [bc], a                                       ; $4252: $02
	add hl, bc                                       ; $4253: $09
	ld c, $c1                                        ; $4254: $0e $c1
	ld e, c                                          ; $4256: $59
	db $e3                                           ; $4257: $e3
	nop                                              ; $4258: $00
	xor h                                            ; $4259: $ac
	ret nz                                           ; $425a: $c0

jr_081_425b:
	ld d, [hl]                                       ; $425b: $56
	ret c                                            ; $425c: $d8

	db $d3                                           ; $425d: $d3
	ret nc                                           ; $425e: $d0

	push hl                                          ; $425f: $e5
	daa                                              ; $4260: $27
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	add hl, bc                                       ; $4263: $09
	inc d                                            ; $4264: $14
	ret nc                                           ; $4265: $d0

	add e                                            ; $4266: $83
	ld bc, $d0de                                     ; $4267: $01 $de $d0
	ret nz                                           ; $426a: $c0

	ld bc, $09a0                                     ; $426b: $01 $a0 $09
	ld [bc], a                                       ; $426e: $02
	dec e                                            ; $426f: $1d
	ret nz                                           ; $4270: $c0

	ld bc, $01a0                                     ; $4271: $01 $a0 $01
	ld [bc], a                                       ; $4274: $02
	jr nz, jr_081_425b                               ; $4275: $20 $e4

	nop                                              ; $4277: $00
	ld [bc], a                                       ; $4278: $02
	add hl, bc                                       ; $4279: $09
	inc [hl]                                         ; $427a: $34
	pop bc                                           ; $427b: $c1
	ld e, c                                          ; $427c: $59
	db $e3                                           ; $427d: $e3
	nop                                              ; $427e: $00
	xor e                                            ; $427f: $ab
	ld h, b                                          ; $4280: $60
	add b                                            ; $4281: $80
	ld [bc], a                                       ; $4282: $02
	ld d, c                                          ; $4283: $51
	rla                                              ; $4284: $17
	and c                                            ; $4285: $a1
	add c                                            ; $4286: $81
	and b                                            ; $4287: $a0
	ld [de], a                                       ; $4288: $12
	nop                                              ; $4289: $00
	inc bc                                           ; $428a: $03
	db $e4                                           ; $428b: $e4
	nop                                              ; $428c: $00
	or e                                             ; $428d: $b3
	ld bc, $e403                                     ; $428e: $01 $03 $e4
	nop                                              ; $4291: $00
	ld e, $ff                                        ; $4292: $1e $ff
	rlca                                             ; $4294: $07
	ld b, b                                          ; $4295: $40
	add c                                            ; $4296: $81
	and b                                            ; $4297: $a0
	ld [de], a                                       ; $4298: $12
	db $e4                                           ; $4299: $e4
	nop                                              ; $429a: $00
	ld e, l                                          ; $429b: $5d
	ld [de], a                                       ; $429c: $12
	and b                                            ; $429d: $a0
	add b                                            ; $429e: $80
	and b                                            ; $429f: $a0
	inc d                                            ; $42a0: $14
	nop                                              ; $42a1: $00
	inc bc                                           ; $42a2: $03
	db $e4                                           ; $42a3: $e4
	nop                                              ; $42a4: $00
	dec bc                                           ; $42a5: $0b
	rst $38                                          ; $42a6: $ff
	rlca                                             ; $42a7: $07
	ld b, b                                          ; $42a8: $40
	add b                                            ; $42a9: $80
	and b                                            ; $42aa: $a0
	inc d                                            ; $42ab: $14
	db $e4                                           ; $42ac: $e4
	nop                                              ; $42ad: $00
	ld c, d                                          ; $42ae: $4a
	jr z, jr_081_42b7                                ; $42af: $28 $06

	ret nz                                           ; $42b1: $c0

	ld bc, $09a0                                     ; $42b2: $01 $a0 $09
	ld [bc], a                                       ; $42b5: $02
	sub h                                            ; $42b6: $94

jr_081_42b7:
	ccf                                              ; $42b7: $3f
	ld [bc], a                                       ; $42b8: $02
	sbc l                                            ; $42b9: $9d
	add hl, bc                                       ; $42ba: $09
	ld de, $02e1                                     ; $42bb: $11 $e1 $02
	inc bc                                           ; $42be: $03
	rrca                                             ; $42bf: $0f
	ret nz                                           ; $42c0: $c0

	ld bc, $09a0                                     ; $42c1: $01 $a0 $09
	ld [bc], a                                       ; $42c4: $02
	and d                                            ; $42c5: $a2
	pop hl                                           ; $42c6: $e1
	ld [bc], a                                       ; $42c7: $02
	inc b                                            ; $42c8: $04
	ld c, $e4                                        ; $42c9: $0e $e4
	nop                                              ; $42cb: $00
	cp h                                             ; $42cc: $bc
	ld [bc], a                                       ; $42cd: $02
	xor b                                            ; $42ce: $a8
	add hl, bc                                       ; $42cf: $09
	ld de, $02e1                                     ; $42d0: $11 $e1 $02
	inc bc                                           ; $42d3: $03
	rra                                              ; $42d4: $1f
	ret nz                                           ; $42d5: $c0

	ld bc, $09a0                                     ; $42d6: $01 $a0 $09
	ld [bc], a                                       ; $42d9: $02
	xor h                                            ; $42da: $ac
	pop hl                                           ; $42db: $e1
	ld [bc], a                                       ; $42dc: $02
	inc b                                            ; $42dd: $04
	ld [hl-], a                                      ; $42de: $32
	db $e4                                           ; $42df: $e4
	nop                                              ; $42e0: $00
	and a                                            ; $42e1: $a7
	ld [bc], a                                       ; $42e2: $02
	or [hl]                                          ; $42e3: $b6
	add hl, bc                                       ; $42e4: $09
	ld de, $02e1                                     ; $42e5: $11 $e1 $02
	inc bc                                           ; $42e8: $03
	dec de                                           ; $42e9: $1b
	ret nz                                           ; $42ea: $c0

	ld bc, $09a0                                     ; $42eb: $01 $a0 $09
	ld [bc], a                                       ; $42ee: $02
	cp h                                             ; $42ef: $bc
	pop hl                                           ; $42f0: $e1
	ld [bc], a                                       ; $42f1: $02
	inc b                                            ; $42f2: $04
	add hl, hl                                       ; $42f3: $29
	db $e4                                           ; $42f4: $e4
	nop                                              ; $42f5: $00
	sub d                                            ; $42f6: $92
	jr z, @+$08                                      ; $42f7: $28 $06

	ret nz                                           ; $42f9: $c0

	ld bc, $09a0                                     ; $42fa: $01 $a0 $09
	ld [bc], a                                       ; $42fd: $02
	jp nz, $023f                                     ; $42fe: $c2 $3f $02

	adc $09                                          ; $4301: $ce $09
	ld de, $02e1                                     ; $4303: $11 $e1 $02
	inc bc                                           ; $4306: $03
	inc de                                           ; $4307: $13
	ret nz                                           ; $4308: $c0

	ld bc, $09a0                                     ; $4309: $01 $a0 $09
	ld [bc], a                                       ; $430c: $02
	push de                                          ; $430d: $d5
	pop hl                                           ; $430e: $e1
	ld [bc], a                                       ; $430f: $02
	inc b                                            ; $4310: $04
	rla                                              ; $4311: $17
	db $e4                                           ; $4312: $e4
	nop                                              ; $4313: $00
	ld [hl], h                                       ; $4314: $74
	ld [bc], a                                       ; $4315: $02
	jp c, $1109                                      ; $4316: $da $09 $11

	pop hl                                           ; $4319: $e1
	ld [bc], a                                       ; $431a: $02
	inc bc                                           ; $431b: $03
	rra                                              ; $431c: $1f
	ret nz                                           ; $431d: $c0

	ld bc, $09a0                                     ; $431e: $01 $a0 $09
	ld [bc], a                                       ; $4321: $02
	rst SubAFromDE                                          ; $4322: $df
	pop hl                                           ; $4323: $e1
	ld [bc], a                                       ; $4324: $02
	inc b                                            ; $4325: $04
	ld [hl-], a                                      ; $4326: $32
	db $e4                                           ; $4327: $e4
	nop                                              ; $4328: $00
	ld e, a                                          ; $4329: $5f
	ld [bc], a                                       ; $432a: $02
	db $e3                                           ; $432b: $e3
	add hl, bc                                       ; $432c: $09
	ld de, $02e1                                     ; $432d: $11 $e1 $02
	inc bc                                           ; $4330: $03
	dec de                                           ; $4331: $1b
	ret nz                                           ; $4332: $c0

	ld bc, $09a0                                     ; $4333: $01 $a0 $09
	ld [bc], a                                       ; $4336: $02
	add sp, -$1f                                     ; $4337: $e8 $e1
	ld [bc], a                                       ; $4339: $02
	inc b                                            ; $433a: $04
	add hl, hl                                       ; $433b: $29
	db $e4                                           ; $433c: $e4
	nop                                              ; $433d: $00
	ld c, d                                          ; $433e: $4a
	jr z, @+$08                                      ; $433f: $28 $06

	ret nz                                           ; $4341: $c0

	ld bc, $09a0                                     ; $4342: $01 $a0 $09
	ld [bc], a                                       ; $4345: $02
	xor $3f                                          ; $4346: $ee $3f
	ld [bc], a                                       ; $4348: $02
	or $09                                           ; $4349: $f6 $09
	ld de, $02e1                                     ; $434b: $11 $e1 $02
	inc bc                                           ; $434e: $03
	rrca                                             ; $434f: $0f
	ret nz                                           ; $4350: $c0

	ld bc, $09a0                                     ; $4351: $01 $a0 $09
	ld [bc], a                                       ; $4354: $02
	and d                                            ; $4355: $a2
	pop hl                                           ; $4356: $e1
	ld [bc], a                                       ; $4357: $02
	inc b                                            ; $4358: $04
	ld c, $e4                                        ; $4359: $0e $e4
	nop                                              ; $435b: $00
	inc l                                            ; $435c: $2c
	ld [bc], a                                       ; $435d: $02
	ld hl, sp+$09                                    ; $435e: $f8 $09
	ld de, $02e1                                     ; $4360: $11 $e1 $02
	inc bc                                           ; $4363: $03
	rra                                              ; $4364: $1f
	ret nz                                           ; $4365: $c0

	ld bc, $09a0                                     ; $4366: $01 $a0 $09
	ld [bc], a                                       ; $4369: $02

jr_081_436a:
	ld a, [$02e1]                                    ; $436a: $fa $e1 $02
	inc b                                            ; $436d: $04
	ld [hl-], a                                      ; $436e: $32
	db $e4                                           ; $436f: $e4
	nop                                              ; $4370: $00
	rla                                              ; $4371: $17
	inc bc                                           ; $4372: $03
	ld bc, $1109                                     ; $4373: $01 $09 $11
	pop hl                                           ; $4376: $e1
	ld [bc], a                                       ; $4377: $02
	inc bc                                           ; $4378: $03
	dec de                                           ; $4379: $1b
	ret nz                                           ; $437a: $c0

	ld bc, $09a0                                     ; $437b: $01 $a0 $09
	inc bc                                           ; $437e: $03
	inc bc                                           ; $437f: $03
	pop hl                                           ; $4380: $e1
	ld [bc], a                                       ; $4381: $02
	inc b                                            ; $4382: $04
	add hl, hl                                       ; $4383: $29
	db $e4                                           ; $4384: $e4
	nop                                              ; $4385: $00
	ld [bc], a                                       ; $4386: $02
	add hl, bc                                       ; $4387: $09
	ld c, $c1                                        ; $4388: $0e $c1
	ld e, c                                          ; $438a: $59
	db $e3                                           ; $438b: $e3
	nop                                              ; $438c: $00
	xor d                                            ; $438d: $aa
	ret nz                                           ; $438e: $c0

	ld d, [hl]                                       ; $438f: $56
	ret c                                            ; $4390: $d8

	call nc, $e5d0                                   ; $4391: $d4 $d0 $e5
	daa                                              ; $4394: $27
	nop                                              ; $4395: $00
	nop                                              ; $4396: $00
	add hl, bc                                       ; $4397: $09
	jr z, jr_081_436a                                ; $4398: $28 $d0

	add e                                            ; $439a: $83
	ld bc, $d0de                                     ; $439b: $01 $de $d0
	ret nz                                           ; $439e: $c0

	ld bc, $01a0                                     ; $439f: $01 $a0 $01
	inc bc                                           ; $43a2: $03
	inc c                                            ; $43a3: $0c
	ret nz                                           ; $43a4: $c0

	ld bc, $09a0                                     ; $43a5: $01 $a0 $09
	inc bc                                           ; $43a8: $03
	ld de, $59c1                                     ; $43a9: $11 $c1 $59
	db $e3                                           ; $43ac: $e3
	nop                                              ; $43ad: $00
	or h                                             ; $43ae: $b4
	and b                                            ; $43af: $a0
	add b                                            ; $43b0: $80
	and b                                            ; $43b1: $a0
	dec d                                            ; $43b2: $15
	nop                                              ; $43b3: $00
	inc bc                                           ; $43b4: $03
	db $e4                                           ; $43b5: $e4
	nop                                              ; $43b6: $00
	dec bc                                           ; $43b7: $0b
	rst $38                                          ; $43b8: $ff
	rlca                                             ; $43b9: $07
	ld b, b                                          ; $43ba: $40
	add b                                            ; $43bb: $80
	and b                                            ; $43bc: $a0
	dec d                                            ; $43bd: $15
	db $e4                                           ; $43be: $e4
	nop                                              ; $43bf: $00
	ld c, d                                          ; $43c0: $4a

jr_081_43c1:
	jr z, jr_081_43c9                                ; $43c1: $28 $06

	ret nz                                           ; $43c3: $c0

	ld bc, $09a0                                     ; $43c4: $01 $a0 $09
	inc bc                                           ; $43c7: $03
	inc d                                            ; $43c8: $14

jr_081_43c9:
	ccf                                              ; $43c9: $3f
	inc bc                                           ; $43ca: $03
	ld e, $09                                        ; $43cb: $1e $09
	ld de, $02e1                                     ; $43cd: $11 $e1 $02
	inc bc                                           ; $43d0: $03
	rla                                              ; $43d1: $17
	ret nz                                           ; $43d2: $c0

	ld bc, $09a0                                     ; $43d3: $01 $a0 $09
	inc bc                                           ; $43d6: $03
	inc hl                                           ; $43d7: $23
	pop hl                                           ; $43d8: $e1
	ld [bc], a                                       ; $43d9: $02
	inc b                                            ; $43da: $04
	jr nz, jr_081_43c1                               ; $43db: $20 $e4

	nop                                              ; $43dd: $00
	ld [hl], h                                       ; $43de: $74
	inc bc                                           ; $43df: $03
	inc l                                            ; $43e0: $2c
	add hl, bc                                       ; $43e1: $09
	ld de, $02e1                                     ; $43e2: $11 $e1 $02
	inc bc                                           ; $43e5: $03
	rra                                              ; $43e6: $1f
	ret nz                                           ; $43e7: $c0

	ld bc, $09a0                                     ; $43e8: $01 $a0 $09
	inc bc                                           ; $43eb: $03
	inc sp                                           ; $43ec: $33
	pop hl                                           ; $43ed: $e1
	ld [bc], a                                       ; $43ee: $02
	inc b                                            ; $43ef: $04
	ld [hl-], a                                      ; $43f0: $32
	db $e4                                           ; $43f1: $e4
	nop                                              ; $43f2: $00
	ld e, a                                          ; $43f3: $5f
	inc bc                                           ; $43f4: $03
	ld [hl], $09                                     ; $43f5: $36 $09
	ld de, $02e1                                     ; $43f7: $11 $e1 $02
	inc bc                                           ; $43fa: $03
	dec de                                           ; $43fb: $1b
	ret nz                                           ; $43fc: $c0

	ld bc, $09a0                                     ; $43fd: $01 $a0 $09
	inc bc                                           ; $4400: $03
	dec a                                            ; $4401: $3d
	pop hl                                           ; $4402: $e1
	ld [bc], a                                       ; $4403: $02
	inc b                                            ; $4404: $04
	add hl, hl                                       ; $4405: $29
	db $e4                                           ; $4406: $e4
	nop                                              ; $4407: $00
	ld c, d                                          ; $4408: $4a
	jr z, jr_081_4411                                ; $4409: $28 $06

	ret nz                                           ; $440b: $c0

	ld bc, $09a0                                     ; $440c: $01 $a0 $09
	inc bc                                           ; $440f: $03
	ld b, d                                          ; $4410: $42

jr_081_4411:
	ccf                                              ; $4411: $3f
	ld [bc], a                                       ; $4412: $02
	ld a, [hl-]                                      ; $4413: $3a
	add hl, bc                                       ; $4414: $09
	ld de, $02e1                                     ; $4415: $11 $e1 $02
	inc bc                                           ; $4418: $03
	inc de                                           ; $4419: $13
	ret nz                                           ; $441a: $c0

	ld bc, $09a0                                     ; $441b: $01 $a0 $09
	inc bc                                           ; $441e: $03
	ld b, [hl]                                       ; $441f: $46
	pop hl                                           ; $4420: $e1
	ld [bc], a                                       ; $4421: $02
	inc b                                            ; $4422: $04
	rla                                              ; $4423: $17
	db $e4                                           ; $4424: $e4
	nop                                              ; $4425: $00
	inc l                                            ; $4426: $2c
	ld bc, $09e0                                     ; $4427: $01 $e0 $09
	ld de, $02e1                                     ; $442a: $11 $e1 $02
	inc bc                                           ; $442d: $03
	dec de                                           ; $442e: $1b
	ret nz                                           ; $442f: $c0

	ld bc, $09a0                                     ; $4430: $01 $a0 $09

jr_081_4433:
	inc bc                                           ; $4433: $03
	ld c, l                                          ; $4434: $4d
	pop hl                                           ; $4435: $e1
	ld [bc], a                                       ; $4436: $02
	inc b                                            ; $4437: $04
	add hl, hl                                       ; $4438: $29
	db $e4                                           ; $4439: $e4
	nop                                              ; $443a: $00
	rla                                              ; $443b: $17
	inc bc                                           ; $443c: $03
	ld d, e                                          ; $443d: $53
	add hl, bc                                       ; $443e: $09
	ld de, $02e1                                     ; $443f: $11 $e1 $02
	inc bc                                           ; $4442: $03
	rla                                              ; $4443: $17
	ret nz                                           ; $4444: $c0

	ld bc, $09a0                                     ; $4445: $01 $a0 $09
	inc bc                                           ; $4448: $03
	ld d, l                                          ; $4449: $55
	pop hl                                           ; $444a: $e1
	ld [bc], a                                       ; $444b: $02
	inc b                                            ; $444c: $04
	jr nz, jr_081_4433                               ; $444d: $20 $e4

	nop                                              ; $444f: $00
	ld [bc], a                                       ; $4450: $02
	add hl, bc                                       ; $4451: $09
	ld c, $c1                                        ; $4452: $0e $c1
	ld e, c                                          ; $4454: $59
	db $e3                                           ; $4455: $e3
	nop                                              ; $4456: $00
	or e                                             ; $4457: $b3
	ret nz                                           ; $4458: $c0

jr_081_4459:
	ld d, [hl]                                       ; $4459: $56
	ret c                                            ; $445a: $d8

	push de                                          ; $445b: $d5
	ret nc                                           ; $445c: $d0

	push hl                                          ; $445d: $e5
	daa                                              ; $445e: $27
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	add hl, bc                                       ; $4461: $09
	inc d                                            ; $4462: $14
	ret nc                                           ; $4463: $d0

	add e                                            ; $4464: $83
	ld bc, $d0de                                     ; $4465: $01 $de $d0
	ret nz                                           ; $4468: $c0

	ld bc, $09a0                                     ; $4469: $01 $a0 $09
	ld [bc], a                                       ; $446c: $02
	dec e                                            ; $446d: $1d
	ret nz                                           ; $446e: $c0

	ld bc, $01a0                                     ; $446f: $01 $a0 $01
	ld [bc], a                                       ; $4472: $02
	jr nz, jr_081_4459                               ; $4473: $20 $e4

	nop                                              ; $4475: $00
	ld [bc], a                                       ; $4476: $02
	add hl, bc                                       ; $4477: $09
	ld hl, $59c1                                     ; $4478: $21 $c1 $59
	db $e3                                           ; $447b: $e3
	nop                                              ; $447c: $00
	or [hl]                                          ; $447d: $b6
	ret nz                                           ; $447e: $c0

	ld bc, $09a0                                     ; $447f: $01 $a0 $09
	inc bc                                           ; $4482: $03
	ld h, c                                          ; $4483: $61
	pop hl                                           ; $4484: $e1
	ld [bc], a                                       ; $4485: $02
	rlca                                             ; $4486: $07
	or [hl]                                          ; $4487: $b6
	and b                                            ; $4488: $a0
	add b                                            ; $4489: $80
	and b                                            ; $448a: $a0
	ld d, $00                                        ; $448b: $16 $00
	inc bc                                           ; $448d: $03
	db $e4                                           ; $448e: $e4
	nop                                              ; $448f: $00
	dec bc                                           ; $4490: $0b
	rst $38                                          ; $4491: $ff
	rlca                                             ; $4492: $07
	ld b, b                                          ; $4493: $40
	add b                                            ; $4494: $80
	and b                                            ; $4495: $a0
	ld d, $e4                                        ; $4496: $16 $e4
	nop                                              ; $4498: $00
	ld c, d                                          ; $4499: $4a
	jr z, jr_081_44a2                                ; $449a: $28 $06

	ret nz                                           ; $449c: $c0

	ld bc, $09a0                                     ; $449d: $01 $a0 $09
	inc bc                                           ; $44a0: $03
	ld h, [hl]                                       ; $44a1: $66

jr_081_44a2:
	ccf                                              ; $44a2: $3f
	inc bc                                           ; $44a3: $03
	ld l, l                                          ; $44a4: $6d
	add hl, bc                                       ; $44a5: $09
	ld de, $02e1                                     ; $44a6: $11 $e1 $02
	inc bc                                           ; $44a9: $03
	inc de                                           ; $44aa: $13
	ret nz                                           ; $44ab: $c0

	ld bc, $09a0                                     ; $44ac: $01 $a0 $09
	inc bc                                           ; $44af: $03
	ld [hl], e                                       ; $44b0: $73
	pop hl                                           ; $44b1: $e1
	ld [bc], a                                       ; $44b2: $02
	inc b                                            ; $44b3: $04
	rla                                              ; $44b4: $17
	db $e4                                           ; $44b5: $e4
	nop                                              ; $44b6: $00
	sub d                                            ; $44b7: $92
	inc bc                                           ; $44b8: $03
	ld a, e                                          ; $44b9: $7b
	add hl, bc                                       ; $44ba: $09
	ld de, $02e1                                     ; $44bb: $11 $e1 $02
	inc bc                                           ; $44be: $03
	rra                                              ; $44bf: $1f
	ret nz                                           ; $44c0: $c0

	ld bc, $09a0                                     ; $44c1: $01 $a0 $09
	inc bc                                           ; $44c4: $03
	ld a, l                                          ; $44c5: $7d
	pop hl                                           ; $44c6: $e1
	ld [bc], a                                       ; $44c7: $02
	inc b                                            ; $44c8: $04
	ld [hl-], a                                      ; $44c9: $32
	db $e4                                           ; $44ca: $e4
	nop                                              ; $44cb: $00
	ld a, l                                          ; $44cc: $7d
	inc bc                                           ; $44cd: $03
	add a                                            ; $44ce: $87
	add hl, bc                                       ; $44cf: $09
	ld de, $02e1                                     ; $44d0: $11 $e1 $02

Jump_081_44d3:
	inc bc                                           ; $44d3: $03
	dec de                                           ; $44d4: $1b
	ret nz                                           ; $44d5: $c0

	ld bc, $09a0                                     ; $44d6: $01 $a0 $09
	inc bc                                           ; $44d9: $03
	adc c                                            ; $44da: $89
	pop hl                                           ; $44db: $e1
	ld [bc], a                                       ; $44dc: $02
	inc b                                            ; $44dd: $04
	add hl, hl                                       ; $44de: $29
	db $e4                                           ; $44df: $e4
	nop                                              ; $44e0: $00
	ld l, b                                          ; $44e1: $68
	jr z, jr_081_44ea                                ; $44e2: $28 $06

	ret nz                                           ; $44e4: $c0

	ld bc, $09a0                                     ; $44e5: $01 $a0 $09
	inc bc                                           ; $44e8: $03
	adc l                                            ; $44e9: $8d

jr_081_44ea:
	ld e, l                                          ; $44ea: $5d
	ret nz                                           ; $44eb: $c0

	ei                                               ; $44ec: $fb
	ret nz                                           ; $44ed: $c0

	add e                                            ; $44ee: $83
	jp nc, Jump_081_78e0                             ; $44ef: $d2 $e0 $78

	dec d                                            ; $44f2: $15
	inc bc                                           ; $44f3: $03
	sub e                                            ; $44f4: $93
	add hl, bc                                       ; $44f5: $09
	ld de, $02e1                                     ; $44f6: $11 $e1 $02
	inc bc                                           ; $44f9: $03
	rla                                              ; $44fa: $17
	ret nz                                           ; $44fb: $c0

	ld bc, $09a0                                     ; $44fc: $01 $a0 $09
	inc bc                                           ; $44ff: $03
	sub l                                            ; $4500: $95
	pop hl                                           ; $4501: $e1
	ld [bc], a                                       ; $4502: $02
	inc b                                            ; $4503: $04

Jump_081_4504:
	jr nz, jr_081_44ea                               ; $4504: $20 $e4

	nop                                              ; $4506: $00
	ld b, d                                          ; $4507: $42
	dec d                                            ; $4508: $15
	inc bc                                           ; $4509: $03
	sbc e                                            ; $450a: $9b
	add hl, bc                                       ; $450b: $09
	ld de, $02e1                                     ; $450c: $11 $e1 $02
	inc bc                                           ; $450f: $03
	rra                                              ; $4510: $1f
	ret nz                                           ; $4511: $c0

	ld bc, $09a0                                     ; $4512: $01 $a0 $09
	inc bc                                           ; $4515: $03
	sbc l                                            ; $4516: $9d
	pop hl                                           ; $4517: $e1
	ld [bc], a                                       ; $4518: $02
	inc b                                            ; $4519: $04
	ld [hl-], a                                      ; $451a: $32
	db $e4                                           ; $451b: $e4
	nop                                              ; $451c: $00
	inc l                                            ; $451d: $2c
	inc bc                                           ; $451e: $03
	xor b                                            ; $451f: $a8
	add hl, bc                                       ; $4520: $09
	ld de, $02e1                                     ; $4521: $11 $e1 $02
	inc bc                                           ; $4524: $03
	rra                                              ; $4525: $1f
	ret nz                                           ; $4526: $c0

	ld bc, $09a0                                     ; $4527: $01 $a0 $09
	inc bc                                           ; $452a: $03
	xor d                                            ; $452b: $aa
	pop hl                                           ; $452c: $e1
	ld [bc], a                                       ; $452d: $02
	inc b                                            ; $452e: $04
	ld [hl-], a                                      ; $452f: $32
	db $e4                                           ; $4530: $e4
	nop                                              ; $4531: $00
	rla                                              ; $4532: $17
	inc bc                                           ; $4533: $03
	or h                                             ; $4534: $b4
	add hl, bc                                       ; $4535: $09
	ld de, $02e1                                     ; $4536: $11 $e1 $02
	inc bc                                           ; $4539: $03
	dec de                                           ; $453a: $1b
	ret nz                                           ; $453b: $c0

	ld bc, $09a0                                     ; $453c: $01 $a0 $09
	inc bc                                           ; $453f: $03
	or [hl]                                          ; $4540: $b6
	pop hl                                           ; $4541: $e1
	ld [bc], a                                       ; $4542: $02
	inc b                                            ; $4543: $04
	add hl, hl                                       ; $4544: $29
	db $e4                                           ; $4545: $e4
	nop                                              ; $4546: $00
	ld [bc], a                                       ; $4547: $02
	add hl, bc                                       ; $4548: $09
	ld c, $c1                                        ; $4549: $0e $c1
	ld e, c                                          ; $454b: $59
	db $e3                                           ; $454c: $e3
	nop                                              ; $454d: $00
	or l                                             ; $454e: $b5
	ret nz                                           ; $454f: $c0

	ld d, [hl]                                       ; $4550: $56
	ret c                                            ; $4551: $d8

	sub $d0                                          ; $4552: $d6 $d0
	push hl                                          ; $4554: $e5
	daa                                              ; $4555: $27
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	add hl, bc                                       ; $4558: $09
	ld d, d                                          ; $4559: $52
	ret nz                                           ; $455a: $c0

	ld bc, $09a0                                     ; $455b: $01 $a0 $09
	inc bc                                           ; $455e: $03
	cp d                                             ; $455f: $ba
	ret nz                                           ; $4560: $c0

	ld bc, $01a0                                     ; $4561: $01 $a0 $01
	inc bc                                           ; $4564: $03
	cp l                                             ; $4565: $bd
	add e                                            ; $4566: $83
	adc e                                            ; $4567: $8b
	ld [bc], a                                       ; $4568: $02
	ld b, d                                          ; $4569: $42
	ld [bc], a                                       ; $456a: $02
	or b                                             ; $456b: $b0
	ld [hl], e                                       ; $456c: $73
	ld [$83d0], sp                                   ; $456d: $08 $d0 $83
	ld bc, $d1de                                     ; $4570: $01 $de $d1
	db $e4                                           ; $4573: $e4
	nop                                              ; $4574: $00
	ret z                                            ; $4575: $c8

	ld [bc], a                                       ; $4576: $02
	or b                                             ; $4577: $b0
	ld l, a                                          ; $4578: $6f
	ld [$83d0], sp                                   ; $4579: $08 $d0 $83
	ld bc, $d2de                                     ; $457c: $01 $de $d2
	db $e4                                           ; $457f: $e4
	ld bc, $0216                                     ; $4580: $01 $16 $02
	or b                                             ; $4583: $b0
	ld l, h                                          ; $4584: $6c
	ld [$83d0], sp                                   ; $4585: $08 $d0 $83
	ld bc, $d3de                                     ; $4588: $01 $de $d3
	db $e4                                           ; $458b: $e4
	ld bc, $0064                                     ; $458c: $01 $64 $00
	inc e                                            ; $458f: $1c
	ret nc                                           ; $4590: $d0

	add e                                            ; $4591: $83
	ld bc, $d0de                                     ; $4592: $01 $de $d0
	pop bc                                           ; $4595: $c1
	ld e, c                                          ; $4596: $59
	db $e3                                           ; $4597: $e3
	nop                                              ; $4598: $00
	sbc e                                            ; $4599: $9b
	and b                                            ; $459a: $a0
	add b                                            ; $459b: $80
	and b                                            ; $459c: $a0
	rla                                              ; $459d: $17
	nop                                              ; $459e: $00
	inc bc                                           ; $459f: $03
	db $e4                                           ; $45a0: $e4
	nop                                              ; $45a1: $00
	dec bc                                           ; $45a2: $0b
	rst $38                                          ; $45a3: $ff
	rlca                                             ; $45a4: $07
	ld b, b                                          ; $45a5: $40
	add b                                            ; $45a6: $80
	and b                                            ; $45a7: $a0
	rla                                              ; $45a8: $17
	db $e4                                           ; $45a9: $e4
	nop                                              ; $45aa: $00
	ld c, d                                          ; $45ab: $4a

jr_081_45ac:
	jr z, @+$08                                      ; $45ac: $28 $06

	ret nz                                           ; $45ae: $c0

	ld bc, $09a0                                     ; $45af: $01 $a0 $09
	inc bc                                           ; $45b2: $03
	jp $033f                                         ; $45b3: $c3 $3f $03


	rst JumpTable                                          ; $45b6: $c7
	add hl, bc                                       ; $45b7: $09
	ld de, $02e1                                     ; $45b8: $11 $e1 $02
	inc bc                                           ; $45bb: $03
	rla                                              ; $45bc: $17
	ret nz                                           ; $45bd: $c0

	ld bc, $09a0                                     ; $45be: $01 $a0 $09
	inc bc                                           ; $45c1: $03
	ret                                              ; $45c2: $c9


	pop hl                                           ; $45c3: $e1
	ld [bc], a                                       ; $45c4: $02
	inc b                                            ; $45c5: $04
	jr nz, jr_081_45ac                               ; $45c6: $20 $e4

	ld bc, $0390                                     ; $45c8: $01 $90 $03
	rrc c                                            ; $45cb: $cb $09
	ld de, $02e1                                     ; $45cd: $11 $e1 $02
	inc bc                                           ; $45d0: $03
	rra                                              ; $45d1: $1f
	ret nz                                           ; $45d2: $c0

	ld bc, $09a0                                     ; $45d3: $01 $a0 $09
	inc bc                                           ; $45d6: $03
	adc $e1                                          ; $45d7: $ce $e1
	ld [bc], a                                       ; $45d9: $02
	inc b                                            ; $45da: $04
	ld [hl-], a                                      ; $45db: $32
	db $e4                                           ; $45dc: $e4
	ld bc, $037b                                     ; $45dd: $01 $7b $03
	rst GetHLinHL                                          ; $45e0: $cf
	add hl, bc                                       ; $45e1: $09
	ld de, $02e1                                     ; $45e2: $11 $e1 $02
	inc bc                                           ; $45e5: $03
	dec de                                           ; $45e6: $1b
	ret nz                                           ; $45e7: $c0

	ld bc, $09a0                                     ; $45e8: $01 $a0 $09
	inc bc                                           ; $45eb: $03
	rst SubAFromHL                                          ; $45ec: $d7
	pop hl                                           ; $45ed: $e1
	ld [bc], a                                       ; $45ee: $02
	inc b                                            ; $45ef: $04
	add hl, hl                                       ; $45f0: $29
	db $e4                                           ; $45f1: $e4
	ld bc, $2866                                     ; $45f2: $01 $66 $28
	ld b, $c0                                        ; $45f5: $06 $c0
	ld bc, $09a0                                     ; $45f7: $01 $a0 $09
	inc bc                                           ; $45fa: $03
	pop hl                                           ; $45fb: $e1
	ccf                                              ; $45fc: $3f
	inc bc                                           ; $45fd: $03
	add sp, $09                                      ; $45fe: $e8 $09
	ld de, $02e1                                     ; $4600: $11 $e1 $02
	inc bc                                           ; $4603: $03
	rla                                              ; $4604: $17
	ret nz                                           ; $4605: $c0

	ld bc, $09a0                                     ; $4606: $01 $a0 $09
	inc bc                                           ; $4609: $03
	ld [$02e1], a                                    ; $460a: $ea $e1 $02
	inc b                                            ; $460d: $04
	jr nz, @-$1a                                     ; $460e: $20 $e4

	ld bc, $0348                                     ; $4610: $01 $48 $03
	rst AddAOntoHL                                          ; $4613: $ef
	add hl, bc                                       ; $4614: $09
	ld de, $02e1                                     ; $4615: $11 $e1 $02
	inc bc                                           ; $4618: $03
	dec de                                           ; $4619: $1b
	ret nz                                           ; $461a: $c0

	ld bc, $09a0                                     ; $461b: $01 $a0 $09

jr_081_461e:
	inc bc                                           ; $461e: $03
	pop af                                           ; $461f: $f1
	pop hl                                           ; $4620: $e1
	ld [bc], a                                       ; $4621: $02
	inc b                                            ; $4622: $04
	add hl, hl                                       ; $4623: $29
	db $e4                                           ; $4624: $e4
	ld bc, $0333                                     ; $4625: $01 $33 $03
	rst FarCall                                          ; $4628: $f7
	add hl, bc                                       ; $4629: $09
	ld de, $02e1                                     ; $462a: $11 $e1 $02
	inc bc                                           ; $462d: $03
	rla                                              ; $462e: $17
	ret nz                                           ; $462f: $c0

	ld bc, $09a0                                     ; $4630: $01 $a0 $09
	inc bc                                           ; $4633: $03
	ld sp, hl                                        ; $4634: $f9
	pop hl                                           ; $4635: $e1
	ld [bc], a                                       ; $4636: $02
	inc b                                            ; $4637: $04
	jr nz, jr_081_461e                               ; $4638: $20 $e4

	ld bc, $2e1e                                     ; $463a: $01 $1e $2e
	dec b                                            ; $463d: $05
	pop bc                                           ; $463e: $c1
	ld e, c                                          ; $463f: $59
	db $e3                                           ; $4640: $e3
	nop                                              ; $4641: $00
	sbc h                                            ; $4642: $9c
	ld d, d                                          ; $4643: $52
	add b                                            ; $4644: $80
	and b                                            ; $4645: $a0
	jr jr_081_4648                                   ; $4646: $18 $00

jr_081_4648:
	jr z, jr_081_4650                                ; $4648: $28 $06

	ret nz                                           ; $464a: $c0

	ld bc, $09a0                                     ; $464b: $01 $a0 $09
	inc bc                                           ; $464e: $03
	rst $38                                          ; $464f: $ff

jr_081_4650:
	ccf                                              ; $4650: $3f
	inc b                                            ; $4651: $04
	ld [$1109], sp                                   ; $4652: $08 $09 $11
	pop hl                                           ; $4655: $e1
	ld [bc], a                                       ; $4656: $02
	inc bc                                           ; $4657: $03
	rrca                                             ; $4658: $0f
	ret nz                                           ; $4659: $c0

	ld bc, $09a0                                     ; $465a: $01 $a0 $09
	inc b                                            ; $465d: $04
	db $10                                           ; $465e: $10
	pop hl                                           ; $465f: $e1
	ld [bc], a                                       ; $4660: $02
	inc b                                            ; $4661: $04
	ld c, $e4                                        ; $4662: $0e $e4
	nop                                              ; $4664: $00
	db $f4                                           ; $4665: $f4
	inc b                                            ; $4666: $04
	rla                                              ; $4667: $17
	add hl, bc                                       ; $4668: $09
	ld de, $02e1                                     ; $4669: $11 $e1 $02
	inc bc                                           ; $466c: $03
	dec de                                           ; $466d: $1b
	ret nz                                           ; $466e: $c0

	ld bc, $09a0                                     ; $466f: $01 $a0 $09

jr_081_4672:
	inc b                                            ; $4672: $04
	dec e                                            ; $4673: $1d
	pop hl                                           ; $4674: $e1
	ld [bc], a                                       ; $4675: $02
	inc b                                            ; $4676: $04
	add hl, hl                                       ; $4677: $29
	db $e4                                           ; $4678: $e4
	nop                                              ; $4679: $00
	rst SubAFromDE                                          ; $467a: $df
	inc b                                            ; $467b: $04
	inc hl                                           ; $467c: $23
	add hl, bc                                       ; $467d: $09
	ld de, $02e1                                     ; $467e: $11 $e1 $02
	inc bc                                           ; $4681: $03
	rla                                              ; $4682: $17
	ret nz                                           ; $4683: $c0

	ld bc, $09a0                                     ; $4684: $01 $a0 $09
	inc b                                            ; $4687: $04
	daa                                              ; $4688: $27
	pop hl                                           ; $4689: $e1
	ld [bc], a                                       ; $468a: $02
	inc b                                            ; $468b: $04
	jr nz, jr_081_4672                               ; $468c: $20 $e4

	nop                                              ; $468e: $00
	jp z, $09ff                                      ; $468f: $ca $ff $09

	inc bc                                           ; $4692: $03
	ldh [rP1], a                                     ; $4693: $e0 $00
	or [hl]                                          ; $4695: $b6
	ld l, $05                                        ; $4696: $2e $05
	pop bc                                           ; $4698: $c1
	ld e, c                                          ; $4699: $59
	db $e3                                           ; $469a: $e3
	nop                                              ; $469b: $00
	sbc l                                            ; $469c: $9d
	ld d, d                                          ; $469d: $52
	add b                                            ; $469e: $80
	and b                                            ; $469f: $a0
	add hl, de                                       ; $46a0: $19
	nop                                              ; $46a1: $00

jr_081_46a2:
	jr z, @+$08                                      ; $46a2: $28 $06

	ret nz                                           ; $46a4: $c0

	ld bc, $09a0                                     ; $46a5: $01 $a0 $09
	inc b                                            ; $46a8: $04
	ld l, $3f                                        ; $46a9: $2e $3f
	inc b                                            ; $46ab: $04
	dec [hl]                                         ; $46ac: $35
	add hl, bc                                       ; $46ad: $09
	ld de, $02e1                                     ; $46ae: $11 $e1 $02
	inc bc                                           ; $46b1: $03
	rla                                              ; $46b2: $17
	ret nz                                           ; $46b3: $c0

	ld bc, $09a0                                     ; $46b4: $01 $a0 $09
	inc b                                            ; $46b7: $04
	add hl, sp                                       ; $46b8: $39
	pop hl                                           ; $46b9: $e1
	ld [bc], a                                       ; $46ba: $02
	inc b                                            ; $46bb: $04
	jr nz, jr_081_46a2                               ; $46bc: $20 $e4

	nop                                              ; $46be: $00
	sbc d                                            ; $46bf: $9a
	inc b                                            ; $46c0: $04
	ld b, b                                          ; $46c1: $40
	add hl, bc                                       ; $46c2: $09
	ld de, $02e1                                     ; $46c3: $11 $e1 $02
	inc bc                                           ; $46c6: $03
	rra                                              ; $46c7: $1f
	ret nz                                           ; $46c8: $c0

	ld bc, $09a0                                     ; $46c9: $01 $a0 $09
	inc b                                            ; $46cc: $04
	ld b, [hl]                                       ; $46cd: $46
	pop hl                                           ; $46ce: $e1
	ld [bc], a                                       ; $46cf: $02
	inc b                                            ; $46d0: $04
	ld [hl-], a                                      ; $46d1: $32
	db $e4                                           ; $46d2: $e4
	nop                                              ; $46d3: $00
	add l                                            ; $46d4: $85
	inc b                                            ; $46d5: $04
	ld c, l                                          ; $46d6: $4d
	add hl, bc                                       ; $46d7: $09
	ld de, $02e1                                     ; $46d8: $11 $e1 $02
	inc bc                                           ; $46db: $03
	dec de                                           ; $46dc: $1b
	ret nz                                           ; $46dd: $c0

	ld bc, $09a0                                     ; $46de: $01 $a0 $09
	inc b                                            ; $46e1: $04
	ld d, d                                          ; $46e2: $52
	pop hl                                           ; $46e3: $e1
	ld [bc], a                                       ; $46e4: $02
	inc b                                            ; $46e5: $04
	add hl, hl                                       ; $46e6: $29
	db $e4                                           ; $46e7: $e4
	nop                                              ; $46e8: $00
	ld [hl], b                                       ; $46e9: $70
	rst $38                                          ; $46ea: $ff
	add hl, bc                                       ; $46eb: $09
	inc bc                                           ; $46ec: $03
	ldh [rP1], a                                     ; $46ed: $e0 $00
	ld e, h                                          ; $46ef: $5c
	ld l, $05                                        ; $46f0: $2e $05
	pop bc                                           ; $46f2: $c1
	ld e, c                                          ; $46f3: $59
	db $e3                                           ; $46f4: $e3
	nop                                              ; $46f5: $00
	sbc [hl]                                         ; $46f6: $9e
	ld d, d                                          ; $46f7: $52
	add b                                            ; $46f8: $80
	and b                                            ; $46f9: $a0
	ld a, [de]                                       ; $46fa: $1a
	nop                                              ; $46fb: $00
	jr z, jr_081_4704                                ; $46fc: $28 $06

	ret nz                                           ; $46fe: $c0

	ld bc, $09a0                                     ; $46ff: $01 $a0 $09
	inc b                                            ; $4702: $04
	ld e, c                                          ; $4703: $59

jr_081_4704:
	ccf                                              ; $4704: $3f
	inc b                                            ; $4705: $04
	ld h, b                                          ; $4706: $60
	add hl, bc                                       ; $4707: $09
	ld de, $02e1                                     ; $4708: $11 $e1 $02
	inc bc                                           ; $470b: $03
	inc de                                           ; $470c: $13
	ret nz                                           ; $470d: $c0

	ld bc, $09a0                                     ; $470e: $01 $a0 $09
	inc b                                            ; $4711: $04
	ld h, l                                          ; $4712: $65
	pop hl                                           ; $4713: $e1
	ld [bc], a                                       ; $4714: $02
	inc b                                            ; $4715: $04
	ld c, $e4                                        ; $4716: $0e $e4
	nop                                              ; $4718: $00
	ld b, b                                          ; $4719: $40
	inc b                                            ; $471a: $04
	ld l, h                                          ; $471b: $6c
	add hl, bc                                       ; $471c: $09
	ld de, $02e1                                     ; $471d: $11 $e1 $02
	inc bc                                           ; $4720: $03
	rra                                              ; $4721: $1f
	ret nz                                           ; $4722: $c0

	ld bc, $09a0                                     ; $4723: $01 $a0 $09

jr_081_4726:
	inc b                                            ; $4726: $04
	ld [hl], e                                       ; $4727: $73
	pop hl                                           ; $4728: $e1
	ld [bc], a                                       ; $4729: $02
	inc b                                            ; $472a: $04
	ld [hl-], a                                      ; $472b: $32
	db $e4                                           ; $472c: $e4
	nop                                              ; $472d: $00
	dec hl                                           ; $472e: $2b
	inc b                                            ; $472f: $04
	ld a, e                                          ; $4730: $7b
	add hl, bc                                       ; $4731: $09
	ld de, $02e1                                     ; $4732: $11 $e1 $02
	inc bc                                           ; $4735: $03
	rla                                              ; $4736: $17
	ret nz                                           ; $4737: $c0

	ld bc, $09a0                                     ; $4738: $01 $a0 $09
	inc b                                            ; $473b: $04
	add d                                            ; $473c: $82
	pop hl                                           ; $473d: $e1
	ld [bc], a                                       ; $473e: $02
	inc b                                            ; $473f: $04
	jr nz, jr_081_4726                               ; $4740: $20 $e4

	nop                                              ; $4742: $00
	ld d, $ff                                        ; $4743: $16 $ff
	add hl, bc                                       ; $4745: $09
	inc bc                                           ; $4746: $03
	ldh [rP1], a                                     ; $4747: $e0 $00
	ld [bc], a                                       ; $4749: $02
	dec c                                            ; $474a: $0d
	ret nz                                           ; $474b: $c0

	ld bc, $09a0                                     ; $474c: $01 $a0 $09
	inc b                                            ; $474f: $04
	add a                                            ; $4750: $87
	pop hl                                           ; $4751: $e1
	ld [bc], a                                       ; $4752: $02
	inc b                                            ; $4753: $04
	ld [hl-], a                                      ; $4754: $32
	db $e4                                           ; $4755: $e4
	nop                                              ; $4756: $00
	ld [bc], a                                       ; $4757: $02
	add hl, bc                                       ; $4758: $09
	cpl                                              ; $4759: $2f
	pop bc                                           ; $475a: $c1
	ld e, c                                          ; $475b: $59
	db $e3                                           ; $475c: $e3
	nop                                              ; $475d: $00
	sbc d                                            ; $475e: $9a
	add e                                            ; $475f: $83
	adc e                                            ; $4760: $8b
	ld [bc], a                                       ; $4761: $02
	ld b, d                                          ; $4762: $42
	ld [bc], a                                       ; $4763: $02
	or b                                             ; $4764: $b0
	ld [hl], e                                       ; $4765: $73
	dec b                                            ; $4766: $05
	ret nz                                           ; $4767: $c0

	ld d, [hl]                                       ; $4768: $56
	ret c                                            ; $4769: $d8

	rst SubAFromHL                                          ; $476a: $d7
	pop de                                           ; $476b: $d1
	ld [bc], a                                       ; $476c: $02
	or b                                             ; $476d: $b0
	ld l, a                                          ; $476e: $6f
	dec b                                            ; $476f: $05
	ret nz                                           ; $4770: $c0

	ld d, [hl]                                       ; $4771: $56
	ret c                                            ; $4772: $d8

	rst SubAFromHL                                          ; $4773: $d7
	jp nc, $b002                                     ; $4774: $d2 $02 $b0

	ld l, h                                          ; $4777: $6c
	dec b                                            ; $4778: $05
	ret nz                                           ; $4779: $c0

	ld d, [hl]                                       ; $477a: $56
	ret c                                            ; $477b: $d8

	rst SubAFromHL                                          ; $477c: $d7
	db $d3                                           ; $477d: $d3
	nop                                              ; $477e: $00
	dec b                                            ; $477f: $05
	ret nz                                           ; $4780: $c0

	ld d, [hl]                                       ; $4781: $56
	ret c                                            ; $4782: $d8

	rst SubAFromHL                                          ; $4783: $d7
	ret nc                                           ; $4784: $d0

	push hl                                          ; $4785: $e5
	daa                                              ; $4786: $27
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	add hl, bc                                       ; $4789: $09
	ld d, l                                          ; $478a: $55
	ret nc                                           ; $478b: $d0

	add e                                            ; $478c: $83
	ld bc, $d0de                                     ; $478d: $01 $de $d0
	ret nz                                           ; $4790: $c0

	ld bc, $09a0                                     ; $4791: $01 $a0 $09
	inc bc                                           ; $4794: $03
	cp d                                             ; $4795: $ba
	ret nz                                           ; $4796: $c0

	ld bc, $01a0                                     ; $4797: $01 $a0 $01
	inc bc                                           ; $479a: $03
	cp l                                             ; $479b: $bd
	ld h, b                                          ; $479c: $60
	cp $1d                                           ; $479d: $fe $1d
	add b                                            ; $479f: $80
	ld bc, $fbad                                     ; $47a0: $01 $ad $fb
	ret nz                                           ; $47a3: $c0

	dec d                                            ; $47a4: $15
	ret c                                            ; $47a5: $d8

	ldh [$32], a                                     ; $47a6: $e0 $32
	cp $12                                           ; $47a8: $fe $12
	db $fc                                           ; $47aa: $fc
	ret nz                                           ; $47ab: $c0

	ld h, l                                          ; $47ac: $65
	call c, $0cff                                    ; $47ad: $dc $ff $0c
	db $fc                                           ; $47b0: $fc
	ret nz                                           ; $47b1: $c0

	ld h, [hl]                                       ; $47b2: $66
	sbc $fc                                          ; $47b3: $de $fc
	ret nz                                           ; $47b5: $c0

	ld h, [hl]                                       ; $47b6: $66
	db $dd                                           ; $47b7: $dd
	db $fc                                           ; $47b8: $fc
	ret nz                                           ; $47b9: $c0

	ld h, [hl]                                       ; $47ba: $66
	call c, $e407                                    ; $47bb: $dc $07 $e4
	nop                                              ; $47be: $00
	sub d                                            ; $47bf: $92
	pop bc                                           ; $47c0: $c1
	jp z, $d8d1                                      ; $47c1: $ca $d1 $d8

	inc b                                            ; $47c4: $04
	pop bc                                           ; $47c5: $c1
	jp z, $d8d0                                      ; $47c6: $ca $d0 $d8

	pop bc                                           ; $47c9: $c1
	ld e, c                                          ; $47ca: $59
	db $e3                                           ; $47cb: $e3
	nop                                              ; $47cc: $00
	and l                                            ; $47cd: $a5
	pop hl                                           ; $47ce: $e1
	ld [bc], a                                       ; $47cf: $02
	inc bc                                           ; $47d0: $03
	rra                                              ; $47d1: $1f
	and b                                            ; $47d2: $a0
	add b                                            ; $47d3: $80
	and b                                            ; $47d4: $a0
	dec de                                           ; $47d5: $1b
	nop                                              ; $47d6: $00
	inc bc                                           ; $47d7: $03
	db $e4                                           ; $47d8: $e4
	nop                                              ; $47d9: $00
	rlca                                             ; $47da: $07
	rst $38                                          ; $47db: $ff
	inc bc                                           ; $47dc: $03
	db $e4                                           ; $47dd: $e4
	nop                                              ; $47de: $00
	ld b, [hl]                                       ; $47df: $46
	jr z, jr_081_47e8                                ; $47e0: $28 $06

	ret nz                                           ; $47e2: $c0

	ld bc, $09a0                                     ; $47e3: $01 $a0 $09
	inc b                                            ; $47e6: $04
	adc l                                            ; $47e7: $8d

jr_081_47e8:
	dec sp                                           ; $47e8: $3b
	inc b                                            ; $47e9: $04
	sub e                                            ; $47ea: $93
	add hl, bc                                       ; $47eb: $09
	ld de, $02e1                                     ; $47ec: $11 $e1 $02
	inc bc                                           ; $47ef: $03
	inc de                                           ; $47f0: $13
	ret nz                                           ; $47f1: $c0

	ld bc, $09a0                                     ; $47f2: $01 $a0 $09
	inc b                                            ; $47f5: $04
	sbc d                                            ; $47f6: $9a
	pop hl                                           ; $47f7: $e1
	ld [bc], a                                       ; $47f8: $02
	inc b                                            ; $47f9: $04
	rla                                              ; $47fa: $17
	db $e4                                           ; $47fb: $e4
	nop                                              ; $47fc: $00
	ld b, h                                          ; $47fd: $44
	inc b                                            ; $47fe: $04
	and b                                            ; $47ff: $a0
	add hl, bc                                       ; $4800: $09
	dec c                                            ; $4801: $0d
	ret nz                                           ; $4802: $c0

	ld bc, $09a0                                     ; $4803: $01 $a0 $09

jr_081_4806:
	inc b                                            ; $4806: $04
	and h                                            ; $4807: $a4
	pop hl                                           ; $4808: $e1
	ld [bc], a                                       ; $4809: $02
	inc b                                            ; $480a: $04
	ld [hl-], a                                      ; $480b: $32
	db $e4                                           ; $480c: $e4
	nop                                              ; $480d: $00
	inc sp                                           ; $480e: $33
	inc b                                            ; $480f: $04
	xor h                                            ; $4810: $ac
	add hl, bc                                       ; $4811: $09
	ld de, $02e1                                     ; $4812: $11 $e1 $02
	inc bc                                           ; $4815: $03
	rla                                              ; $4816: $17
	ret nz                                           ; $4817: $c0

	ld bc, $09a0                                     ; $4818: $01 $a0 $09
	inc b                                            ; $481b: $04
	or c                                             ; $481c: $b1
	pop hl                                           ; $481d: $e1
	ld [bc], a                                       ; $481e: $02
	inc b                                            ; $481f: $04
	jr nz, jr_081_4806                               ; $4820: $20 $e4

	nop                                              ; $4822: $00
	ld e, $09                                        ; $4823: $1e $09
	ld a, [de]                                       ; $4825: $1a
	ret nz                                           ; $4826: $c0

	ld bc, $09a0                                     ; $4827: $01 $a0 $09
	inc b                                            ; $482a: $04
	or [hl]                                          ; $482b: $b6
	ret nc                                           ; $482c: $d0

	add d                                            ; $482d: $82
	ld bc, $d4d5                                     ; $482e: $01 $d5 $d4
	ret nz                                           ; $4831: $c0

	ld d, h                                          ; $4832: $54
	pop de                                           ; $4833: $d1
	ret nz                                           ; $4834: $c0

	ld d, e                                          ; $4835: $53
	pop de                                           ; $4836: $d1
	ret nz                                           ; $4837: $c0

	ld d, [hl]                                       ; $4838: $56
	ret c                                            ; $4839: $d8

	ret c                                            ; $483a: $d8

	ret nc                                           ; $483b: $d0

	push hl                                          ; $483c: $e5
	daa                                              ; $483d: $27
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	add hl, bc                                       ; $4840: $09
	ld c, $c1                                        ; $4841: $0e $c1
	ld e, c                                          ; $4843: $59
	db $e3                                           ; $4844: $e3
	nop                                              ; $4845: $00
	and h                                            ; $4846: $a4
	ret nz                                           ; $4847: $c0

	ld d, [hl]                                       ; $4848: $56
	ret c                                            ; $4849: $d8

	ret c                                            ; $484a: $d8

	ret nc                                           ; $484b: $d0

	push hl                                          ; $484c: $e5
	daa                                              ; $484d: $27
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	add hl, bc                                       ; $4850: $09
	sub b                                            ; $4851: $90
	pop hl                                           ; $4852: $e1
	ld [bc], a                                       ; $4853: $02
	inc bc                                           ; $4854: $03
	dec de                                           ; $4855: $1b
	ret nz                                           ; $4856: $c0

	ld bc, $09a0                                     ; $4857: $01 $a0 $09
	inc b                                            ; $485a: $04
	cp a                                             ; $485b: $bf
	ret nz                                           ; $485c: $c0

	ld bc, $01a0                                     ; $485d: $01 $a0 $01
	inc b                                            ; $4860: $04
	rst JumpTable                                          ; $4861: $c7
	ret nz                                           ; $4862: $c0

	set 0, c                                         ; $4863: $cb $c1
	ld e, e                                          ; $4865: $5b
	ret nz                                           ; $4866: $c0

	add hl, bc                                       ; $4867: $09
	db $e3                                           ; $4868: $e3
	nop                                              ; $4869: $00
	ld bc, $0fc0                                     ; $486a: $01 $c0 $0f
	db $e3                                           ; $486d: $e3
	ld bc, $c003                                     ; $486e: $01 $03 $c0
	ld bc, $09a0                                     ; $4871: $01 $a0 $09
	inc b                                            ; $4874: $04
	call $01c0                                       ; $4875: $cd $c0 $01
	and b                                            ; $4878: $a0
	ld bc, $d504                                     ; $4879: $01 $04 $d5
	ret nz                                           ; $487c: $c0

	ld bc, $09a0                                     ; $487d: $01 $a0 $09
	inc b                                            ; $4880: $04
	rst SubAFromHL                                          ; $4881: $d7
	ret nz                                           ; $4882: $c0

	ld bc, $01a0                                     ; $4883: $01 $a0 $01
	inc b                                            ; $4886: $04
	ldh [c], a                                       ; $4887: $e2
	ret nz                                           ; $4888: $c0

	ld bc, $09a0                                     ; $4889: $01 $a0 $09
	inc b                                            ; $488c: $04
	db $e4                                           ; $488d: $e4
	ret nz                                           ; $488e: $c0

	ld bc, $01a0                                     ; $488f: $01 $a0 $01
	inc b                                            ; $4892: $04
	pop af                                           ; $4893: $f1
	ret nz                                           ; $4894: $c0

	ld bc, $09a0                                     ; $4895: $01 $a0 $09
	inc b                                            ; $4898: $04
	db $fc                                           ; $4899: $fc
	ret nz                                           ; $489a: $c0

	ld bc, $01a0                                     ; $489b: $01 $a0 $01
	dec b                                            ; $489e: $05
	add hl, bc                                       ; $489f: $09
	ret nz                                           ; $48a0: $c0

	ld bc, $09a0                                     ; $48a1: $01 $a0 $09
	dec b                                            ; $48a4: $05
	inc d                                            ; $48a5: $14
	ret nz                                           ; $48a6: $c0

	set 4, c                                         ; $48a7: $cb $e1
	ld [bc], a                                       ; $48a9: $02
	rlca                                             ; $48aa: $07
	cp a                                             ; $48ab: $bf
	ret nz                                           ; $48ac: $c0

	ld de, $00e3                                     ; $48ad: $11 $e3 $00
	and l                                            ; $48b0: $a5
	pop hl                                           ; $48b1: $e1
	ld [bc], a                                       ; $48b2: $02
	ld [bc], a                                       ; $48b3: $02
	jr nc, @-$3e                                     ; $48b4: $30 $c0

	ld bc, $09a0                                     ; $48b6: $01 $a0 $09
	dec b                                            ; $48b9: $05
	ld hl, $01c0                                     ; $48ba: $21 $c0 $01
	and b                                            ; $48bd: $a0
	ld bc, $2f05                                     ; $48be: $01 $05 $2f
	ret nz                                           ; $48c1: $c0

	ld bc, $09a0                                     ; $48c2: $01 $a0 $09
	dec b                                            ; $48c5: $05
	scf                                              ; $48c6: $37
	ret nz                                           ; $48c7: $c0

	ld bc, $01a0                                     ; $48c8: $01 $a0 $01
	dec b                                            ; $48cb: $05
	ld b, d                                          ; $48cc: $42
	ret nc                                           ; $48cd: $d0

	add d                                            ; $48ce: $82
	ld bc, $d3d5                                     ; $48cf: $01 $d5 $d3
	pop hl                                           ; $48d2: $e1
	ld [bc], a                                       ; $48d3: $02
	inc b                                            ; $48d4: $04
	db $db                                           ; $48d5: $db
	pop bc                                           ; $48d6: $c1
	ld l, e                                          ; $48d7: $6b
	call nc, $c0d8                                   ; $48d8: $d4 $d8 $c0
	add hl, bc                                       ; $48db: $09
	db $e3                                           ; $48dc: $e3
	nop                                              ; $48dd: $00
	ld a, $e4                                        ; $48de: $3e $e4
	rst $38                                          ; $48e0: $ff
	ld h, b                                          ; $48e1: $60
	inc l                                            ; $48e2: $2c
	inc c                                            ; $48e3: $0c
	ret nz                                           ; $48e4: $c0

	ld bc, $09a0                                     ; $48e5: $01 $a0 $09
	ld [bc], a                                       ; $48e8: $02
	dec e                                            ; $48e9: $1d
	ret nz                                           ; $48ea: $c0

	ld bc, $01a0                                     ; $48eb: $01 $a0 $01
	dec b                                            ; $48ee: $05
	ld c, [hl]                                       ; $48ef: $4e
	add hl, de                                       ; $48f0: $19
	add b                                            ; $48f1: $80
	ld [bc], a                                       ; $48f2: $02
	ld d, [hl]                                       ; $48f3: $56
	ld [$050e], sp                                   ; $48f4: $08 $0e $05
	ld d, c                                          ; $48f7: $51
	add hl, bc                                       ; $48f8: $09
	inc bc                                           ; $48f9: $03
	db $e4                                           ; $48fa: $e4
	nop                                              ; $48fb: $00
	rrca                                             ; $48fc: $0f
	dec b                                            ; $48fd: $05
	ld d, e                                          ; $48fe: $53
	add hl, bc                                       ; $48ff: $09
	inc bc                                           ; $4900: $03
	db $e4                                           ; $4901: $e4
	nop                                              ; $4902: $00
	inc a                                            ; $4903: $3c
	pop de                                           ; $4904: $d1
	add hl, bc                                       ; $4905: $09
	inc bc                                           ; $4906: $03
	db $e4                                           ; $4907: $e4
	nop                                              ; $4908: $00
	ld [bc], a                                       ; $4909: $02
	add hl, bc                                       ; $490a: $09
	ld [hl-], a                                      ; $490b: $32
	ret nc                                           ; $490c: $d0

	add e                                            ; $490d: $83
	ld bc, $d1de                                     ; $490e: $01 $de $d1
	pop bc                                           ; $4911: $c1
	ld e, c                                          ; $4912: $59
	db $e3                                           ; $4913: $e3
	nop                                              ; $4914: $00
	sbc b                                            ; $4915: $98
	ret nc                                           ; $4916: $d0

	adc e                                            ; $4917: $8b
	and b                                            ; $4918: $a0
	inc e                                            ; $4919: $1c
	or b                                             ; $491a: $b0
	ld a, b                                          ; $491b: $78
	ld h, b                                          ; $491c: $60
	cp $08                                           ; $491d: $fe $08
	pop af                                           ; $491f: $f1

jr_081_4920:
	add b                                            ; $4920: $80
	and b                                            ; $4921: $a0
	jr z, jr_081_4920                                ; $4922: $28 $fc

	ret nz                                           ; $4924: $c0

	ld l, d                                          ; $4925: $6a
	ret nc                                           ; $4926: $d0

	inc bc                                           ; $4927: $03
	db $e4                                           ; $4928: $e4
	ld bc, $1259                                     ; $4929: $01 $59 $12
	and b                                            ; $492c: $a0
	add b                                            ; $492d: $80
	and b                                            ; $492e: $a0
	add hl, hl                                       ; $492f: $29
	nop                                              ; $4930: $00
	inc bc                                           ; $4931: $03
	db $e4                                           ; $4932: $e4
	nop                                              ; $4933: $00
	cpl                                              ; $4934: $2f
	rst $38                                          ; $4935: $ff
	rlca                                             ; $4936: $07
	ld b, b                                          ; $4937: $40
	add b                                            ; $4938: $80
	and b                                            ; $4939: $a0
	add hl, hl                                       ; $493a: $29
	db $e4                                           ; $493b: $e4
	nop                                              ; $493c: $00
	ld l, [hl]                                       ; $493d: $6e
	add hl, bc                                       ; $493e: $09
	ld [hl+], a                                      ; $493f: $22
	ret nc                                           ; $4940: $d0

	add e                                            ; $4941: $83
	ld bc, $d2de                                     ; $4942: $01 $de $d2
	pop bc                                           ; $4945: $c1
	ld e, c                                          ; $4946: $59
	db $e3                                           ; $4947: $e3
	nop                                              ; $4948: $00
	sbc c                                            ; $4949: $99
	ret nc                                           ; $494a: $d0

	adc e                                            ; $494b: $8b
	and b                                            ; $494c: $a0
	inc e                                            ; $494d: $1c
	or b                                             ; $494e: $b0
	ld a, c                                          ; $494f: $79
	and b                                            ; $4950: $a0
	add b                                            ; $4951: $80
	and b                                            ; $4952: $a0
	ld a, [hl+]                                      ; $4953: $2a
	nop                                              ; $4954: $00
	inc bc                                           ; $4955: $03
	db $e4                                           ; $4956: $e4
	nop                                              ; $4957: $00
	sbc e                                            ; $4958: $9b
	rst $38                                          ; $4959: $ff
	rlca                                             ; $495a: $07
	ld b, b                                          ; $495b: $40
	add b                                            ; $495c: $80
	and b                                            ; $495d: $a0
	ld a, [hl+]                                      ; $495e: $2a
	db $e4                                           ; $495f: $e4
	nop                                              ; $4960: $00
	jp c, $0628                                      ; $4961: $da $28 $06

	ret nz                                           ; $4964: $c0

	ld bc, $09a0                                     ; $4965: $01 $a0 $09
	dec b                                            ; $4968: $05
	ld d, l                                          ; $4969: $55
	ccf                                              ; $496a: $3f
	dec b                                            ; $496b: $05
	ld e, l                                          ; $496c: $5d
	add hl, bc                                       ; $496d: $09
	ld de, $02e1                                     ; $496e: $11 $e1 $02
	inc bc                                           ; $4971: $03
	inc de                                           ; $4972: $13
	ret nz                                           ; $4973: $c0

	ld bc, $09a0                                     ; $4974: $01 $a0 $09
	dec b                                            ; $4977: $05
	ld h, c                                          ; $4978: $61
	pop hl                                           ; $4979: $e1
	ld [bc], a                                       ; $497a: $02
	inc b                                            ; $497b: $04
	rla                                              ; $497c: $17
	db $e4                                           ; $497d: $e4
	ld bc, $0594                                     ; $497e: $01 $94 $05
	ld l, b                                          ; $4981: $68
	add hl, bc                                       ; $4982: $09
	ld de, $02e1                                     ; $4983: $11 $e1 $02
	inc bc                                           ; $4986: $03
	rra                                              ; $4987: $1f
	ret nz                                           ; $4988: $c0

	ld bc, $09a0                                     ; $4989: $01 $a0 $09
	dec b                                            ; $498c: $05
	ld [hl], b                                       ; $498d: $70
	pop hl                                           ; $498e: $e1
	ld [bc], a                                       ; $498f: $02
	inc b                                            ; $4990: $04
	ld [hl-], a                                      ; $4991: $32
	db $e4                                           ; $4992: $e4
	ld bc, $057f                                     ; $4993: $01 $7f $05
	ld [hl], a                                       ; $4996: $77
	add hl, bc                                       ; $4997: $09
	ld de, $02e1                                     ; $4998: $11 $e1 $02
	inc bc                                           ; $499b: $03
	dec de                                           ; $499c: $1b
	ret nz                                           ; $499d: $c0

	ld bc, $09a0                                     ; $499e: $01 $a0 $09
	dec b                                            ; $49a1: $05
	ld a, l                                          ; $49a2: $7d
	pop hl                                           ; $49a3: $e1
	ld [bc], a                                       ; $49a4: $02
	inc b                                            ; $49a5: $04
	add hl, hl                                       ; $49a6: $29
	db $e4                                           ; $49a7: $e4
	ld bc, $286a                                     ; $49a8: $01 $6a $28
	ld b, $c0                                        ; $49ab: $06 $c0
	ld bc, $09a0                                     ; $49ad: $01 $a0 $09
	dec b                                            ; $49b0: $05
	add b                                            ; $49b1: $80
	ccf                                              ; $49b2: $3f
	dec b                                            ; $49b3: $05
	add [hl]                                         ; $49b4: $86
	add hl, bc                                       ; $49b5: $09
	ld de, $02e1                                     ; $49b6: $11 $e1 $02
	inc bc                                           ; $49b9: $03
	inc de                                           ; $49ba: $13
	ret nz                                           ; $49bb: $c0

	ld bc, $09a0                                     ; $49bc: $01 $a0 $09
	dec b                                            ; $49bf: $05
	adc d                                            ; $49c0: $8a
	pop hl                                           ; $49c1: $e1
	ld [bc], a                                       ; $49c2: $02
	inc b                                            ; $49c3: $04
	rla                                              ; $49c4: $17
	db $e4                                           ; $49c5: $e4
	ld bc, $054c                                     ; $49c6: $01 $4c $05
	adc a                                            ; $49c9: $8f
	add hl, bc                                       ; $49ca: $09
	ld de, $02e1                                     ; $49cb: $11 $e1 $02
	inc bc                                           ; $49ce: $03
	dec de                                           ; $49cf: $1b
	ret nz                                           ; $49d0: $c0

	ld bc, $09a0                                     ; $49d1: $01 $a0 $09

jr_081_49d4:
	dec b                                            ; $49d4: $05
	sub e                                            ; $49d5: $93
	pop hl                                           ; $49d6: $e1
	ld [bc], a                                       ; $49d7: $02
	inc b                                            ; $49d8: $04
	add hl, hl                                       ; $49d9: $29
	db $e4                                           ; $49da: $e4
	ld bc, $0537                                     ; $49db: $01 $37 $05
	sbc e                                            ; $49de: $9b
	add hl, bc                                       ; $49df: $09
	ld de, $02e1                                     ; $49e0: $11 $e1 $02
	inc bc                                           ; $49e3: $03
	rla                                              ; $49e4: $17
	ret nz                                           ; $49e5: $c0

	ld bc, $09a0                                     ; $49e6: $01 $a0 $09
	dec b                                            ; $49e9: $05
	sbc [hl]                                         ; $49ea: $9e
	pop hl                                           ; $49eb: $e1
	ld [bc], a                                       ; $49ec: $02
	inc b                                            ; $49ed: $04
	jr nz, jr_081_49d4                               ; $49ee: $20 $e4

	ld bc, $2822                                     ; $49f0: $01 $22 $28
	ld b, $c0                                        ; $49f3: $06 $c0
	ld bc, $09a0                                     ; $49f5: $01 $a0 $09
	dec b                                            ; $49f8: $05
	xor c                                            ; $49f9: $a9
	ccf                                              ; $49fa: $3f
	dec b                                            ; $49fb: $05
	or h                                             ; $49fc: $b4
	add hl, bc                                       ; $49fd: $09
	ld de, $02e1                                     ; $49fe: $11 $e1 $02
	inc bc                                           ; $4a01: $03
	rla                                              ; $4a02: $17
	ret nz                                           ; $4a03: $c0

	ld bc, $09a0                                     ; $4a04: $01 $a0 $09
	dec b                                            ; $4a07: $05
	cp e                                             ; $4a08: $bb
	pop hl                                           ; $4a09: $e1
	ld [bc], a                                       ; $4a0a: $02
	inc b                                            ; $4a0b: $04
	jr nz, @-$1a                                     ; $4a0c: $20 $e4

	ld bc, $0504                                     ; $4a0e: $01 $04 $05
	rst JumpTable                                          ; $4a11: $c7
	add hl, bc                                       ; $4a12: $09
	ld de, $02e1                                     ; $4a13: $11 $e1 $02
	inc bc                                           ; $4a16: $03
	rra                                              ; $4a17: $1f
	ret nz                                           ; $4a18: $c0

	ld bc, $09a0                                     ; $4a19: $01 $a0 $09

jr_081_4a1c:
	dec b                                            ; $4a1c: $05
	set 4, c                                         ; $4a1d: $cb $e1
	ld [bc], a                                       ; $4a1f: $02
	inc b                                            ; $4a20: $04
	ld [hl-], a                                      ; $4a21: $32
	db $e4                                           ; $4a22: $e4
	nop                                              ; $4a23: $00
	rst AddAOntoHL                                          ; $4a24: $ef
	dec b                                            ; $4a25: $05
	db $d3                                           ; $4a26: $d3
	add hl, bc                                       ; $4a27: $09
	ld de, $02e1                                     ; $4a28: $11 $e1 $02
	inc bc                                           ; $4a2b: $03
	rla                                              ; $4a2c: $17
	ret nz                                           ; $4a2d: $c0

	ld bc, $09a0                                     ; $4a2e: $01 $a0 $09
	dec b                                            ; $4a31: $05
	db $dd                                           ; $4a32: $dd
	pop hl                                           ; $4a33: $e1
	ld [bc], a                                       ; $4a34: $02
	inc b                                            ; $4a35: $04
	jr nz, jr_081_4a1c                               ; $4a36: $20 $e4

	nop                                              ; $4a38: $00
	jp c, $0628                                      ; $4a39: $da $28 $06

	ret nz                                           ; $4a3c: $c0

	ld bc, $09a0                                     ; $4a3d: $01 $a0 $09
	dec b                                            ; $4a40: $05
	and $3f                                          ; $4a41: $e6 $3f
	dec b                                            ; $4a43: $05
	ldh a, [c]                                       ; $4a44: $f2
	add hl, bc                                       ; $4a45: $09
	ld de, $02e1                                     ; $4a46: $11 $e1 $02
	inc bc                                           ; $4a49: $03
	inc de                                           ; $4a4a: $13
	ret nz                                           ; $4a4b: $c0

	ld bc, $09a0                                     ; $4a4c: $01 $a0 $09
	dec b                                            ; $4a4f: $05
	ei                                               ; $4a50: $fb
	pop hl                                           ; $4a51: $e1
	ld [bc], a                                       ; $4a52: $02
	inc b                                            ; $4a53: $04
	rla                                              ; $4a54: $17
	db $e4                                           ; $4a55: $e4
	nop                                              ; $4a56: $00
	cp h                                             ; $4a57: $bc
	ld b, $02                                        ; $4a58: $06 $02
	add hl, bc                                       ; $4a5a: $09
	ld de, $02e1                                     ; $4a5b: $11 $e1 $02
	inc bc                                           ; $4a5e: $03
	dec de                                           ; $4a5f: $1b
	ret nz                                           ; $4a60: $c0

	ld bc, $09a0                                     ; $4a61: $01 $a0 $09

jr_081_4a64:
	ld b, $07                                        ; $4a64: $06 $07
	pop hl                                           ; $4a66: $e1
	ld [bc], a                                       ; $4a67: $02
	inc b                                            ; $4a68: $04
	add hl, hl                                       ; $4a69: $29
	db $e4                                           ; $4a6a: $e4
	nop                                              ; $4a6b: $00
	and a                                            ; $4a6c: $a7
	ld b, $0f                                        ; $4a6d: $06 $0f
	add hl, bc                                       ; $4a6f: $09
	ld de, $02e1                                     ; $4a70: $11 $e1 $02
	inc bc                                           ; $4a73: $03
	rla                                              ; $4a74: $17
	ret nz                                           ; $4a75: $c0

	ld bc, $09a0                                     ; $4a76: $01 $a0 $09
	ld b, $13                                        ; $4a79: $06 $13
	pop hl                                           ; $4a7b: $e1
	ld [bc], a                                       ; $4a7c: $02
	inc b                                            ; $4a7d: $04
	jr nz, jr_081_4a64                               ; $4a7e: $20 $e4

	nop                                              ; $4a80: $00
	sub d                                            ; $4a81: $92
	add hl, bc                                       ; $4a82: $09
	adc [hl]                                         ; $4a83: $8e
	ret nz                                           ; $4a84: $c0

	ld bc, $09a0                                     ; $4a85: $01 $a0 $09
	ld b, $1b                                        ; $4a88: $06 $1b
	ret nz                                           ; $4a8a: $c0

	ld bc, $01a0                                     ; $4a8b: $01 $a0 $01
	ld b, $24                                        ; $4a8e: $06 $24
	pop hl                                           ; $4a90: $e1
	ld [bc], a                                       ; $4a91: $02
	inc bc                                           ; $4a92: $03
	inc de                                           ; $4a93: $13
	ret nz                                           ; $4a94: $c0

	ld bc, $09a0                                     ; $4a95: $01 $a0 $09
	ld b, $31                                        ; $4a98: $06 $31
	ret nz                                           ; $4a9a: $c0

	ld bc, $01a0                                     ; $4a9b: $01 $a0 $01
	ld b, $36                                        ; $4a9e: $06 $36
	ret nz                                           ; $4aa0: $c0

	or e                                             ; $4aa1: $b3
	pop hl                                           ; $4aa2: $e1
	ld [bc], a                                       ; $4aa3: $02
	rlca                                             ; $4aa4: $07
	cp a                                             ; $4aa5: $bf
	ret nz                                           ; $4aa6: $c0

	ld bc, $01a0                                     ; $4aa7: $01 $a0 $01
	ld b, $3b                                        ; $4aaa: $06 $3b
	ret nz                                           ; $4aac: $c0

	set 0, b                                         ; $4aad: $cb $c0
	rrca                                             ; $4aaf: $0f
	db $e3                                           ; $4ab0: $e3
	ld bc, $c002                                     ; $4ab1: $01 $02 $c0
	ld bc, $09a0                                     ; $4ab4: $01 $a0 $09
	ld b, $3f                                        ; $4ab7: $06 $3f
	ret nz                                           ; $4ab9: $c0

	ld bc, $01a0                                     ; $4aba: $01 $a0 $01
	ld b, $46                                        ; $4abd: $06 $46
	ret nz                                           ; $4abf: $c0

	ld bc, $09a0                                     ; $4ac0: $01 $a0 $09
	ld b, $50                                        ; $4ac3: $06 $50
	ret nz                                           ; $4ac5: $c0

	ld bc, $01a0                                     ; $4ac6: $01 $a0 $01
	ld b, $56                                        ; $4ac9: $06 $56
	ret nz                                           ; $4acb: $c0

	ld bc, $09a0                                     ; $4acc: $01 $a0 $09
	ld b, $64                                        ; $4acf: $06 $64
	ret nz                                           ; $4ad1: $c0

	ld bc, $01a0                                     ; $4ad2: $01 $a0 $01
	ld b, $71                                        ; $4ad5: $06 $71
	ret nz                                           ; $4ad7: $c0

	ld bc, $09a0                                     ; $4ad8: $01 $a0 $09
	ld b, $74                                        ; $4adb: $06 $74
	ret nz                                           ; $4add: $c0

	ld bc, $01a0                                     ; $4ade: $01 $a0 $01
	ld b, $7c                                        ; $4ae1: $06 $7c
	ret nz                                           ; $4ae3: $c0

	set 2, b                                         ; $4ae4: $cb $d0
	add d                                            ; $4ae6: $82
	ld bc, $d2d5                                     ; $4ae7: $01 $d5 $d2
	pop hl                                           ; $4aea: $e1
	ld [bc], a                                       ; $4aeb: $02
	inc b                                            ; $4aec: $04
	pop de                                           ; $4aed: $d1
	nop                                              ; $4aee: $00
	add b                                            ; $4aef: $80
	and b                                            ; $4af0: $a0
	jr z, @-$3e                                      ; $4af1: $28 $c0

	ld d, b                                          ; $4af3: $50
	db $d3                                           ; $4af4: $d3
	ret nz                                           ; $4af5: $c0

	ld d, l                                          ; $4af6: $55
	jp c, $0fc0                                      ; $4af7: $da $c0 $0f

	db $e3                                           ; $4afa: $e3
	nop                                              ; $4afb: $00
	sub a                                            ; $4afc: $97
	pop hl                                           ; $4afd: $e1
	ld [bc], a                                       ; $4afe: $02
	ld [bc], a                                       ; $4aff: $02
	jr z, @-$3e                                      ; $4b00: $28 $c0

	inc c                                            ; $4b02: $0c
	ldh [rAUD3HIGH], a                               ; $4b03: $e0 $1e
	ret nz                                           ; $4b05: $c0

	ld bc, $09a0                                     ; $4b06: $01 $a0 $09
	ld b, $7f                                        ; $4b09: $06 $7f
	pop bc                                           ; $4b0b: $c1
	ld l, e                                          ; $4b0c: $6b

jr_081_4b0d:
	pop de                                           ; $4b0d: $d1
	ret c                                            ; $4b0e: $d8

	db $e4                                           ; $4b0f: $e4
	nop                                              ; $4b10: $00
	inc c                                            ; $4b11: $0c
	add hl, bc                                       ; $4b12: $09
	ld [$59c1], sp                                   ; $4b13: $08 $c1 $59
	db $e3                                           ; $4b16: $e3
	nop                                              ; $4b17: $00
	sub a                                            ; $4b18: $97
	db $e4                                           ; $4b19: $e4
	nop                                              ; $4b1a: $00
	ld [bc], a                                       ; $4b1b: $02
	add hl, bc                                       ; $4b1c: $09
	ld a, [de]                                       ; $4b1d: $1a
	add c                                            ; $4b1e: $81
	adc e                                            ; $4b1f: $8b
	and b                                            ; $4b20: $a0
	inc e                                            ; $4b21: $1c
	ld [bc], a                                       ; $4b22: $02
	or b                                             ; $4b23: $b0
	ld a, b                                          ; $4b24: $78
	dec b                                            ; $4b25: $05
	ret nz                                           ; $4b26: $c0

	ld d, [hl]                                       ; $4b27: $56
	ret c                                            ; $4b28: $d8

	reti                                             ; $4b29: $d9


	pop de                                           ; $4b2a: $d1
	ld [bc], a                                       ; $4b2b: $02
	or b                                             ; $4b2c: $b0
	ld a, c                                          ; $4b2d: $79
	dec b                                            ; $4b2e: $05
	ret nz                                           ; $4b2f: $c0

	ld d, [hl]                                       ; $4b30: $56
	ret c                                            ; $4b31: $d8

	reti                                             ; $4b32: $d9


	jp nc, $27e5                                     ; $4b33: $d2 $e5 $27

	nop                                              ; $4b36: $00
	nop                                              ; $4b37: $00
	inc c                                            ; $4b38: $0c
	ld b, $09                                        ; $4b39: $06 $09
	jr z, jr_081_4b0d                                ; $4b3b: $28 $d0

	add e                                            ; $4b3d: $83
	ld bc, $d0de                                     ; $4b3e: $01 $de $d0
	ret nz                                           ; $4b41: $c0

	ld bc, $09a0                                     ; $4b42: $01 $a0 $09
	nop                                              ; $4b45: $00
	ld bc, $01c0                                     ; $4b46: $01 $c0 $01
	and b                                            ; $4b49: $a0
	ld bc, $0400                                     ; $4b4a: $01 $00 $04
	pop bc                                           ; $4b4d: $c1
	ld e, c                                          ; $4b4e: $59
	db $e3                                           ; $4b4f: $e3
	nop                                              ; $4b50: $00
	cp l                                             ; $4b51: $bd
	and b                                            ; $4b52: $a0
	add b                                            ; $4b53: $80
	and b                                            ; $4b54: $a0
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00
	inc bc                                           ; $4b57: $03
	db $e4                                           ; $4b58: $e4
	nop                                              ; $4b59: $00
	dec bc                                           ; $4b5a: $0b
	rst $38                                          ; $4b5b: $ff
	rlca                                             ; $4b5c: $07
	ld b, b                                          ; $4b5d: $40
	add b                                            ; $4b5e: $80
	and b                                            ; $4b5f: $a0
	nop                                              ; $4b60: $00
	db $e4                                           ; $4b61: $e4
	nop                                              ; $4b62: $00
	ld c, d                                          ; $4b63: $4a
	jr z, @+$08                                      ; $4b64: $28 $06

	ret nz                                           ; $4b66: $c0

	ld bc, $09a0                                     ; $4b67: $01 $a0 $09
	nop                                              ; $4b6a: $00
	ld [$003f], sp                                   ; $4b6b: $08 $3f $00
	db $10                                           ; $4b6e: $10
	add hl, bc                                       ; $4b6f: $09
	ld de, $02e1                                     ; $4b70: $11 $e1 $02
	inc bc                                           ; $4b73: $03
	inc de                                           ; $4b74: $13
	ret nz                                           ; $4b75: $c0

	ld bc, $09a0                                     ; $4b76: $01 $a0 $09
	nop                                              ; $4b79: $00
	ld d, $e1                                        ; $4b7a: $16 $e1
	ld [bc], a                                       ; $4b7c: $02
	inc b                                            ; $4b7d: $04
	rla                                              ; $4b7e: $17
	db $e4                                           ; $4b7f: $e4
	nop                                              ; $4b80: $00
	ld [hl], h                                       ; $4b81: $74
	nop                                              ; $4b82: $00
	ld e, $09                                        ; $4b83: $1e $09
	ld de, $02e1                                     ; $4b85: $11 $e1 $02
	inc bc                                           ; $4b88: $03
	dec de                                           ; $4b89: $1b
	ret nz                                           ; $4b8a: $c0

	ld bc, $09a0                                     ; $4b8b: $01 $a0 $09

jr_081_4b8e:
	nop                                              ; $4b8e: $00
	ld h, $e1                                        ; $4b8f: $26 $e1
	ld [bc], a                                       ; $4b91: $02
	inc b                                            ; $4b92: $04
	add hl, hl                                       ; $4b93: $29
	db $e4                                           ; $4b94: $e4
	nop                                              ; $4b95: $00
	ld e, a                                          ; $4b96: $5f
	nop                                              ; $4b97: $00
	ld l, $09                                        ; $4b98: $2e $09
	ld de, $02e1                                     ; $4b9a: $11 $e1 $02
	inc bc                                           ; $4b9d: $03
	rla                                              ; $4b9e: $17
	ret nz                                           ; $4b9f: $c0

	ld bc, $09a0                                     ; $4ba0: $01 $a0 $09
	nop                                              ; $4ba3: $00
	inc sp                                           ; $4ba4: $33
	pop hl                                           ; $4ba5: $e1
	ld [bc], a                                       ; $4ba6: $02
	inc b                                            ; $4ba7: $04
	jr nz, jr_081_4b8e                               ; $4ba8: $20 $e4

	nop                                              ; $4baa: $00
	ld c, d                                          ; $4bab: $4a
	jr z, jr_081_4bb4                                ; $4bac: $28 $06

	ret nz                                           ; $4bae: $c0

	ld bc, $09a0                                     ; $4baf: $01 $a0 $09
	nop                                              ; $4bb2: $00
	inc a                                            ; $4bb3: $3c

jr_081_4bb4:
	ccf                                              ; $4bb4: $3f
	nop                                              ; $4bb5: $00
	ld b, e                                          ; $4bb6: $43
	add hl, bc                                       ; $4bb7: $09
	ld de, $02e1                                     ; $4bb8: $11 $e1 $02
	inc bc                                           ; $4bbb: $03
	inc de                                           ; $4bbc: $13
	ret nz                                           ; $4bbd: $c0

	ld bc, $09a0                                     ; $4bbe: $01 $a0 $09
	nop                                              ; $4bc1: $00
	ld c, b                                          ; $4bc2: $48
	pop hl                                           ; $4bc3: $e1
	ld [bc], a                                       ; $4bc4: $02
	inc b                                            ; $4bc5: $04
	rla                                              ; $4bc6: $17
	db $e4                                           ; $4bc7: $e4
	nop                                              ; $4bc8: $00
	inc l                                            ; $4bc9: $2c
	nop                                              ; $4bca: $00
	ld c, [hl]                                       ; $4bcb: $4e
	add hl, bc                                       ; $4bcc: $09
	ld de, $02e1                                     ; $4bcd: $11 $e1 $02
	inc bc                                           ; $4bd0: $03
	dec de                                           ; $4bd1: $1b
	ret nz                                           ; $4bd2: $c0

	ld bc, $09a0                                     ; $4bd3: $01 $a0 $09

jr_081_4bd6:
	nop                                              ; $4bd6: $00

jr_081_4bd7:
	ld d, e                                          ; $4bd7: $53
	pop hl                                           ; $4bd8: $e1
	ld [bc], a                                       ; $4bd9: $02
	inc b                                            ; $4bda: $04
	add hl, hl                                       ; $4bdb: $29
	db $e4                                           ; $4bdc: $e4
	nop                                              ; $4bdd: $00
	rla                                              ; $4bde: $17
	nop                                              ; $4bdf: $00
	ld e, b                                          ; $4be0: $58
	add hl, bc                                       ; $4be1: $09
	ld de, $02e1                                     ; $4be2: $11 $e1 $02
	inc bc                                           ; $4be5: $03
	rla                                              ; $4be6: $17
	ret nz                                           ; $4be7: $c0

	ld bc, $09a0                                     ; $4be8: $01 $a0 $09
	nop                                              ; $4beb: $00
	ld e, h                                          ; $4bec: $5c
	pop hl                                           ; $4bed: $e1
	ld [bc], a                                       ; $4bee: $02
	inc b                                            ; $4bef: $04
	jr nz, jr_081_4bd6                               ; $4bf0: $20 $e4

	nop                                              ; $4bf2: $00
	ld [bc], a                                       ; $4bf3: $02
	add hl, bc                                       ; $4bf4: $09
	ld c, $c1                                        ; $4bf5: $0e $c1
	ld e, c                                          ; $4bf7: $59
	db $e3                                           ; $4bf8: $e3
	nop                                              ; $4bf9: $00
	cp h                                             ; $4bfa: $bc
	ret nz                                           ; $4bfb: $c0

	ld d, [hl]                                       ; $4bfc: $56
	ret c                                            ; $4bfd: $d8

	jp c, $e5d0                                      ; $4bfe: $da $d0 $e5

	daa                                              ; $4c01: $27
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	add hl, bc                                       ; $4c04: $09
	jr z, jr_081_4bd7                                ; $4c05: $28 $d0

	add e                                            ; $4c07: $83
	ld bc, $d0de                                     ; $4c08: $01 $de $d0
	ret nz                                           ; $4c0b: $c0

	ld bc, $09a0                                     ; $4c0c: $01 $a0 $09
	nop                                              ; $4c0f: $00
	ld bc, $01c0                                     ; $4c10: $01 $c0 $01
	and b                                            ; $4c13: $a0
	ld bc, $0400                                     ; $4c14: $01 $00 $04
	pop bc                                           ; $4c17: $c1
	ld e, c                                          ; $4c18: $59
	db $e3                                           ; $4c19: $e3
	nop                                              ; $4c1a: $00
	cp e                                             ; $4c1b: $bb
	and b                                            ; $4c1c: $a0
	add b                                            ; $4c1d: $80
	and b                                            ; $4c1e: $a0
	ld bc, $0300                                     ; $4c1f: $01 $00 $03
	db $e4                                           ; $4c22: $e4
	nop                                              ; $4c23: $00
	dec bc                                           ; $4c24: $0b
	rst $38                                          ; $4c25: $ff
	rlca                                             ; $4c26: $07
	ld b, b                                          ; $4c27: $40
	add b                                            ; $4c28: $80
	and b                                            ; $4c29: $a0
	ld bc, $00e4                                     ; $4c2a: $01 $e4 $00
	ld c, d                                          ; $4c2d: $4a
	jr z, jr_081_4c36                                ; $4c2e: $28 $06

	ret nz                                           ; $4c30: $c0

	ld bc, $09a0                                     ; $4c31: $01 $a0 $09
	nop                                              ; $4c34: $00
	ld h, b                                          ; $4c35: $60

jr_081_4c36:
	ccf                                              ; $4c36: $3f
	nop                                              ; $4c37: $00
	ld h, h                                          ; $4c38: $64
	add hl, bc                                       ; $4c39: $09
	ld de, $02e1                                     ; $4c3a: $11 $e1 $02
	inc bc                                           ; $4c3d: $03
	inc de                                           ; $4c3e: $13
	ret nz                                           ; $4c3f: $c0

	ld bc, $09a0                                     ; $4c40: $01 $a0 $09
	nop                                              ; $4c43: $00
	ld h, [hl]                                       ; $4c44: $66
	pop hl                                           ; $4c45: $e1
	ld [bc], a                                       ; $4c46: $02
	inc b                                            ; $4c47: $04
	rla                                              ; $4c48: $17
	db $e4                                           ; $4c49: $e4
	nop                                              ; $4c4a: $00
	ld [hl], h                                       ; $4c4b: $74
	nop                                              ; $4c4c: $00
	ld l, h                                          ; $4c4d: $6c
	add hl, bc                                       ; $4c4e: $09
	ld de, $02e1                                     ; $4c4f: $11 $e1 $02
	inc bc                                           ; $4c52: $03
	dec de                                           ; $4c53: $1b
	ret nz                                           ; $4c54: $c0

	ld bc, $09a0                                     ; $4c55: $01 $a0 $09
	nop                                              ; $4c58: $00
	ld [hl], h                                       ; $4c59: $74
	pop hl                                           ; $4c5a: $e1
	ld [bc], a                                       ; $4c5b: $02
	inc b                                            ; $4c5c: $04
	add hl, hl                                       ; $4c5d: $29
	db $e4                                           ; $4c5e: $e4
	nop                                              ; $4c5f: $00
	ld e, a                                          ; $4c60: $5f
	nop                                              ; $4c61: $00
	ld a, c                                          ; $4c62: $79
	add hl, bc                                       ; $4c63: $09
	ld de, $02e1                                     ; $4c64: $11 $e1 $02
	inc bc                                           ; $4c67: $03
	dec de                                           ; $4c68: $1b
	ret nz                                           ; $4c69: $c0

	ld bc, $09a0                                     ; $4c6a: $01 $a0 $09
	nop                                              ; $4c6d: $00
	ld a, e                                          ; $4c6e: $7b
	pop hl                                           ; $4c6f: $e1
	ld [bc], a                                       ; $4c70: $02
	inc b                                            ; $4c71: $04
	add hl, hl                                       ; $4c72: $29
	db $e4                                           ; $4c73: $e4
	nop                                              ; $4c74: $00
	ld c, d                                          ; $4c75: $4a
	jr z, jr_081_4c7e                                ; $4c76: $28 $06

	ret nz                                           ; $4c78: $c0

	ld bc, $09a0                                     ; $4c79: $01 $a0 $09
	nop                                              ; $4c7c: $00
	add b                                            ; $4c7d: $80

jr_081_4c7e:
	ccf                                              ; $4c7e: $3f
	nop                                              ; $4c7f: $00
	add [hl]                                         ; $4c80: $86
	add hl, bc                                       ; $4c81: $09
	ld de, $02e1                                     ; $4c82: $11 $e1 $02
	inc bc                                           ; $4c85: $03
	inc de                                           ; $4c86: $13
	ret nz                                           ; $4c87: $c0

	ld bc, $09a0                                     ; $4c88: $01 $a0 $09
	nop                                              ; $4c8b: $00
	adc a                                            ; $4c8c: $8f
	pop hl                                           ; $4c8d: $e1
	ld [bc], a                                       ; $4c8e: $02
	inc b                                            ; $4c8f: $04
	rla                                              ; $4c90: $17
	db $e4                                           ; $4c91: $e4
	nop                                              ; $4c92: $00
	inc l                                            ; $4c93: $2c
	nop                                              ; $4c94: $00
	sub h                                            ; $4c95: $94
	add hl, bc                                       ; $4c96: $09
	ld de, $02e1                                     ; $4c97: $11 $e1 $02
	inc bc                                           ; $4c9a: $03
	rra                                              ; $4c9b: $1f
	ret nz                                           ; $4c9c: $c0

	ld bc, $09a0                                     ; $4c9d: $01 $a0 $09
	nop                                              ; $4ca0: $00
	sbc l                                            ; $4ca1: $9d
	pop hl                                           ; $4ca2: $e1
	ld [bc], a                                       ; $4ca3: $02
	inc b                                            ; $4ca4: $04
	ld [hl-], a                                      ; $4ca5: $32
	db $e4                                           ; $4ca6: $e4
	nop                                              ; $4ca7: $00
	rla                                              ; $4ca8: $17
	nop                                              ; $4ca9: $00
	and d                                            ; $4caa: $a2
	add hl, bc                                       ; $4cab: $09
	ld de, $02e1                                     ; $4cac: $11 $e1 $02
	inc bc                                           ; $4caf: $03
	dec de                                           ; $4cb0: $1b
	ret nz                                           ; $4cb1: $c0

	ld bc, $09a0                                     ; $4cb2: $01 $a0 $09
	nop                                              ; $4cb5: $00
	and a                                            ; $4cb6: $a7
	pop hl                                           ; $4cb7: $e1
	ld [bc], a                                       ; $4cb8: $02
	inc b                                            ; $4cb9: $04
	add hl, hl                                       ; $4cba: $29
	db $e4                                           ; $4cbb: $e4
	nop                                              ; $4cbc: $00
	ld [bc], a                                       ; $4cbd: $02
	add hl, bc                                       ; $4cbe: $09
	ld c, $c1                                        ; $4cbf: $0e $c1

Jump_081_4cc1:
	ld e, c                                          ; $4cc1: $59
	db $e3                                           ; $4cc2: $e3
	nop                                              ; $4cc3: $00
	cp d                                             ; $4cc4: $ba
	ret nz                                           ; $4cc5: $c0

	ld d, [hl]                                       ; $4cc6: $56
	ret c                                            ; $4cc7: $d8

	db $db                                           ; $4cc8: $db
	ret nc                                           ; $4cc9: $d0

	push hl                                          ; $4cca: $e5
	daa                                              ; $4ccb: $27
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	add hl, bc                                       ; $4cce: $09
	rrca                                             ; $4ccf: $0f
	ret nz                                           ; $4cd0: $c0

	ld bc, $09a0                                     ; $4cd1: $01 $a0 $09
	nop                                              ; $4cd4: $00
	xor a                                            ; $4cd5: $af
	ret nz                                           ; $4cd6: $c0

	ld bc, $01a0                                     ; $4cd7: $01 $a0 $01
	nop                                              ; $4cda: $00
	inc b                                            ; $4cdb: $04
	db $e4                                           ; $4cdc: $e4
	nop                                              ; $4cdd: $00
	ld [bc], a                                       ; $4cde: $02
	inc l                                            ; $4cdf: $2c
	dec b                                            ; $4ce0: $05
	pop bc                                           ; $4ce1: $c1
	ld e, c                                          ; $4ce2: $59
	db $e3                                           ; $4ce3: $e3
	nop                                              ; $4ce4: $00
	adc d                                            ; $4ce5: $8a
	ld b, [hl]                                       ; $4ce6: $46
	cp $08                                           ; $4ce7: $fe $08
	db $fc                                           ; $4ce9: $fc
	ret nz                                           ; $4cea: $c0

	ld h, a                                          ; $4ceb: $67
	ret nc                                           ; $4cec: $d0

	db $fc                                           ; $4ced: $fc
	ret nz                                           ; $4cee: $c0

	ld l, c                                          ; $4cef: $69
	pop de                                           ; $4cf0: $d1
	jr z, jr_081_4cf9                                ; $4cf1: $28 $06

	ret nz                                           ; $4cf3: $c0

	ld bc, $01a0                                     ; $4cf4: $01 $a0 $01
	nop                                              ; $4cf7: $00
	or e                                             ; $4cf8: $b3

jr_081_4cf9:
	cpl                                              ; $4cf9: $2f
	nop                                              ; $4cfa: $00
	cp b                                             ; $4cfb: $b8
	add hl, bc                                       ; $4cfc: $09
	ld h, $c0                                        ; $4cfd: $26 $c0
	ld bc, $01a0                                     ; $4cff: $01 $a0 $01
	nop                                              ; $4d02: $00
	cp e                                             ; $4d03: $bb
	ret nz                                           ; $4d04: $c0

	ld bc, $09a0                                     ; $4d05: $01 $a0 $09
	nop                                              ; $4d08: $00
	jp nz, $01c0                                     ; $4d09: $c2 $c0 $01

	and b                                            ; $4d0c: $a0
	ld bc, $ca00                                     ; $4d0d: $01 $00 $ca
	ret nz                                           ; $4d10: $c0

	ld bc, $09a0                                     ; $4d11: $01 $a0 $09
	nop                                              ; $4d14: $00
	ret nc                                           ; $4d15: $d0

	ret nc                                           ; $4d16: $d0

	adc e                                            ; $4d17: $8b
	and b                                            ; $4d18: $a0
	ld [bc], a                                       ; $4d19: $02
	or b                                             ; $4d1a: $b0
	ld a, d                                          ; $4d1b: $7a
	ret nc                                           ; $4d1c: $d0

	add e                                            ; $4d1d: $83
	ld bc, $d7de                                     ; $4d1e: $01 $de $d7
	db $e4                                           ; $4d21: $e4
	inc b                                            ; $4d22: $04
	inc de                                           ; $4d23: $13
	nop                                              ; $4d24: $00
	call nc, $0000                                  ; $4d25: $d4 $00 $00
	ld b, $d1                                        ; $4d28: $06 $d1
	nop                                              ; $4d2a: $00
	nop                                              ; $4d2b: $00
	ld [bc], a                                       ; $4d2c: $02
	jr z, @+$08                                      ; $4d2d: $28 $06

	ret nz                                           ; $4d2f: $c0

	ld bc, $09a0                                     ; $4d30: $01 $a0 $09
	nop                                              ; $4d33: $00
	sub $70                                          ; $4d34: $d6 $70
	ei                                               ; $4d36: $fb
	add b                                            ; $4d37: $80
	ld [bc], a                                       ; $4d38: $02
	ld d, e                                          ; $4d39: $53
	ld [de], a                                       ; $4d3a: $12
	nop                                              ; $4d3b: $00
	call c, $0e09                                    ; $4d3c: $dc $09 $0e
	ret nc                                           ; $4d3f: $d0

	adc e                                            ; $4d40: $8b
	and b                                            ; $4d41: $a0
	ld [bc], a                                       ; $4d42: $02
	or b                                             ; $4d43: $b0
	ld a, e                                          ; $4d44: $7b
	ret nc                                           ; $4d45: $d0

	add e                                            ; $4d46: $83
	ld bc, $d4de                                     ; $4d47: $01 $de $d4
	db $e4                                           ; $4d4a: $e4
	ld [bc], a                                       ; $4d4b: $02
	ld [hl], b                                       ; $4d4c: $70
	ei                                               ; $4d4d: $fb
	pop af                                           ; $4d4e: $f1
	add b                                            ; $4d4f: $80
	ld [bc], a                                       ; $4d50: $02
	ld d, e                                          ; $4d51: $53
	ld [de], a                                       ; $4d52: $12
	nop                                              ; $4d53: $00
	sbc $09                                          ; $4d54: $de $09
	ld c, $d0                                        ; $4d56: $0e $d0
	adc e                                            ; $4d58: $8b
	and b                                            ; $4d59: $a0
	ld [bc], a                                       ; $4d5a: $02
	or b                                             ; $4d5b: $b0
	ld a, h                                          ; $4d5c: $7c
	ret nc                                           ; $4d5d: $d0

	add e                                            ; $4d5e: $83
	ld bc, $d1de                                     ; $4d5f: $01 $de $d1
	db $e4                                           ; $4d62: $e4
	nop                                              ; $4d63: $00
	ld b, e                                          ; $4d64: $43
	ei                                               ; $4d65: $fb
	add b                                            ; $4d66: $80
	ld [bc], a                                       ; $4d67: $02
	ld e, d                                          ; $4d68: $5a
	ld [de], a                                       ; $4d69: $12
	nop                                              ; $4d6a: $00
	ldh [$09], a                                     ; $4d6b: $e0 $09
	ld c, $d0                                        ; $4d6d: $0e $d0
	adc e                                            ; $4d6f: $8b
	and b                                            ; $4d70: $a0
	ld [bc], a                                       ; $4d71: $02
	or b                                             ; $4d72: $b0
	ld a, l                                          ; $4d73: $7d
	ret nc                                           ; $4d74: $d0

	add e                                            ; $4d75: $83
	ld bc, $d5de                                     ; $4d76: $01 $de $d5
	db $e4                                           ; $4d79: $e4
	inc bc                                           ; $4d7a: $03
	ld [$f1fb], sp                                   ; $4d7b: $08 $fb $f1
	add b                                            ; $4d7e: $80
	ld [bc], a                                       ; $4d7f: $02
	ld e, d                                          ; $4d80: $5a
	ld [de], a                                       ; $4d81: $12
	nop                                              ; $4d82: $00
	ldh [c], a                                       ; $4d83: $e2
	add hl, bc                                       ; $4d84: $09
	ld c, $d0                                        ; $4d85: $0e $d0
	adc e                                            ; $4d87: $8b
	and b                                            ; $4d88: $a0
	ld [bc], a                                       ; $4d89: $02
	or b                                             ; $4d8a: $b0
	ld a, [hl]                                       ; $4d8b: $7e
	ret nc                                           ; $4d8c: $d0

	add e                                            ; $4d8d: $83
	ld bc, $d2de                                     ; $4d8e: $01 $de $d2
	db $e4                                           ; $4d91: $e4
	nop                                              ; $4d92: $00
	rst JumpTable                                          ; $4d93: $c7
	nop                                              ; $4d94: $00
	db $e4                                           ; $4d95: $e4
	add hl, bc                                       ; $4d96: $09
	ld c, $d0                                        ; $4d97: $0e $d0
	adc e                                            ; $4d99: $8b
	and b                                            ; $4d9a: $a0
	ld [bc], a                                       ; $4d9b: $02
	or b                                             ; $4d9c: $b0
	ld a, a                                          ; $4d9d: $7f
	ret nc                                           ; $4d9e: $d0

	add e                                            ; $4d9f: $83
	ld bc, $d3de                                     ; $4da0: $01 $de $d3
	db $e4                                           ; $4da3: $e4
	ld bc, $0968                                     ; $4da4: $01 $68 $09
	ld hl, $59c1                                     ; $4da7: $21 $c1 $59
	db $e3                                           ; $4daa: $e3
	nop                                              ; $4dab: $00
	adc h                                            ; $4dac: $8c
	ret nz                                           ; $4dad: $c0

	ld bc, $09a0                                     ; $4dae: $01 $a0 $09
	nop                                              ; $4db1: $00
	and $e1                                          ; $4db2: $e6 $e1
	ld [bc], a                                       ; $4db4: $02
	rlca                                             ; $4db5: $07
	call nz, $80a0                                   ; $4db6: $c4 $a0 $80
	and b                                            ; $4db9: $a0
	ld c, $00                                        ; $4dba: $0e $00
	inc bc                                           ; $4dbc: $03
	db $e4                                           ; $4dbd: $e4
	nop                                              ; $4dbe: $00
	dec bc                                           ; $4dbf: $0b
	rst $38                                          ; $4dc0: $ff
	rlca                                             ; $4dc1: $07
	ld b, b                                          ; $4dc2: $40
	add b                                            ; $4dc3: $80
	and b                                            ; $4dc4: $a0
	ld c, $e4                                        ; $4dc5: $0e $e4
	nop                                              ; $4dc7: $00
	ld c, d                                          ; $4dc8: $4a
	jr z, jr_081_4dd1                                ; $4dc9: $28 $06

	ret nz                                           ; $4dcb: $c0

	ld bc, $09a0                                     ; $4dcc: $01 $a0 $09
	nop                                              ; $4dcf: $00
	jp hl                                            ; $4dd0: $e9


jr_081_4dd1:
	ccf                                              ; $4dd1: $3f
	nop                                              ; $4dd2: $00
	ld [$1109], a                                    ; $4dd3: $ea $09 $11
	pop hl                                           ; $4dd6: $e1
	ld [bc], a                                       ; $4dd7: $02
	inc bc                                           ; $4dd8: $03
	inc de                                           ; $4dd9: $13
	ret nz                                           ; $4dda: $c0

	ld bc, $09a0                                     ; $4ddb: $01 $a0 $09
	nop                                              ; $4dde: $00
	rst AddAOntoHL                                          ; $4ddf: $ef
	pop hl                                           ; $4de0: $e1
	ld [bc], a                                       ; $4de1: $02
	inc b                                            ; $4de2: $04
	ld c, $e4                                        ; $4de3: $0e $e4
	inc bc                                           ; $4de5: $03
	ld hl, sp+$00                                    ; $4de6: $f8 $00
	db $fc                                           ; $4de8: $fc
	add hl, bc                                       ; $4de9: $09
	ld de, $02e1                                     ; $4dea: $11 $e1 $02
	inc bc                                           ; $4ded: $03
	dec de                                           ; $4dee: $1b
	ret nz                                           ; $4def: $c0

	ld bc, $09a0                                     ; $4df0: $01 $a0 $09

jr_081_4df3:
	ld bc, $e101                                     ; $4df3: $01 $01 $e1
	ld [bc], a                                       ; $4df6: $02
	inc b                                            ; $4df7: $04
	add hl, hl                                       ; $4df8: $29
	db $e4                                           ; $4df9: $e4
	inc bc                                           ; $4dfa: $03
	db $e3                                           ; $4dfb: $e3
	ld bc, $090a                                     ; $4dfc: $01 $0a $09
	ld de, $02e1                                     ; $4dff: $11 $e1 $02
	inc bc                                           ; $4e02: $03
	rla                                              ; $4e03: $17
	ret nz                                           ; $4e04: $c0

	ld bc, $09a0                                     ; $4e05: $01 $a0 $09
	ld bc, $e10e                                     ; $4e08: $01 $0e $e1
	ld [bc], a                                       ; $4e0b: $02
	inc b                                            ; $4e0c: $04
	jr nz, jr_081_4df3                               ; $4e0d: $20 $e4

	inc bc                                           ; $4e0f: $03
	adc $28                                          ; $4e10: $ce $28
	ld b, $c0                                        ; $4e12: $06 $c0
	ld bc, $09a0                                     ; $4e14: $01 $a0 $09
	ld bc, $3f12                                     ; $4e17: $01 $12 $3f
	ld bc, $091e                                     ; $4e1a: $01 $1e $09
	ld de, $02e1                                     ; $4e1d: $11 $e1 $02
	inc bc                                           ; $4e20: $03
	inc de                                           ; $4e21: $13
	ret nz                                           ; $4e22: $c0

	ld bc, $09a0                                     ; $4e23: $01 $a0 $09
	ld bc, $e122                                     ; $4e26: $01 $22 $e1
	ld [bc], a                                       ; $4e29: $02
	inc b                                            ; $4e2a: $04
	rla                                              ; $4e2b: $17
	db $e4                                           ; $4e2c: $e4
	inc bc                                           ; $4e2d: $03
	or b                                             ; $4e2e: $b0
	ld bc, $0927                                     ; $4e2f: $01 $27 $09
	ld de, $02e1                                     ; $4e32: $11 $e1 $02
	inc bc                                           ; $4e35: $03
	dec de                                           ; $4e36: $1b
	ret nz                                           ; $4e37: $c0

	ld bc, $09a0                                     ; $4e38: $01 $a0 $09

jr_081_4e3b:
	ld bc, $e12d                                     ; $4e3b: $01 $2d $e1
	ld [bc], a                                       ; $4e3e: $02
	inc b                                            ; $4e3f: $04
	add hl, hl                                       ; $4e40: $29
	db $e4                                           ; $4e41: $e4
	inc bc                                           ; $4e42: $03
	sbc e                                            ; $4e43: $9b
	ld bc, $0930                                     ; $4e44: $01 $30 $09
	ld de, $02e1                                     ; $4e47: $11 $e1 $02
	inc bc                                           ; $4e4a: $03
	rla                                              ; $4e4b: $17
	ret nz                                           ; $4e4c: $c0

	ld bc, $09a0                                     ; $4e4d: $01 $a0 $09
	ld bc, $e136                                     ; $4e50: $01 $36 $e1
	ld [bc], a                                       ; $4e53: $02
	inc b                                            ; $4e54: $04
	jr nz, jr_081_4e3b                               ; $4e55: $20 $e4

	inc bc                                           ; $4e57: $03
	add [hl]                                         ; $4e58: $86
	add hl, bc                                       ; $4e59: $09
	ld hl, $59c1                                     ; $4e5a: $21 $c1 $59
	db $e3                                           ; $4e5d: $e3
	nop                                              ; $4e5e: $00
	adc l                                            ; $4e5f: $8d
	ret nz                                           ; $4e60: $c0

	ld bc, $09a0                                     ; $4e61: $01 $a0 $09
	ld bc, $e13b                                     ; $4e64: $01 $3b $e1
	ld [bc], a                                       ; $4e67: $02
	rlca                                             ; $4e68: $07
	db $e3                                           ; $4e69: $e3
	and b                                            ; $4e6a: $a0
	add b                                            ; $4e6b: $80
	and b                                            ; $4e6c: $a0
	rrca                                             ; $4e6d: $0f
	nop                                              ; $4e6e: $00
	inc bc                                           ; $4e6f: $03
	db $e4                                           ; $4e70: $e4
	nop                                              ; $4e71: $00
	dec bc                                           ; $4e72: $0b
	rst $38                                          ; $4e73: $ff
	rlca                                             ; $4e74: $07
	ld b, b                                          ; $4e75: $40
	add b                                            ; $4e76: $80
	and b                                            ; $4e77: $a0
	rrca                                             ; $4e78: $0f
	db $e4                                           ; $4e79: $e4
	nop                                              ; $4e7a: $00
	ld c, d                                          ; $4e7b: $4a
	jr z, jr_081_4e84                                ; $4e7c: $28 $06

	ret nz                                           ; $4e7e: $c0

	ld bc, $09a0                                     ; $4e7f: $01 $a0 $09
	nop                                              ; $4e82: $00
	jp hl                                            ; $4e83: $e9


jr_081_4e84:
	ccf                                              ; $4e84: $3f
	ld bc, $093f                                     ; $4e85: $01 $3f $09
	ld de, $02e1                                     ; $4e88: $11 $e1 $02
	inc bc                                           ; $4e8b: $03
	inc de                                           ; $4e8c: $13
	ret nz                                           ; $4e8d: $c0

	ld bc, $09a0                                     ; $4e8e: $01 $a0 $09
	ld bc, $e142                                     ; $4e91: $01 $42 $e1
	ld [bc], a                                       ; $4e94: $02
	inc b                                            ; $4e95: $04
	rla                                              ; $4e96: $17
	db $e4                                           ; $4e97: $e4
	inc bc                                           ; $4e98: $03
	ld b, l                                          ; $4e99: $45
	ld bc, $094b                                     ; $4e9a: $01 $4b $09
	ld de, $02e1                                     ; $4e9d: $11 $e1 $02
	inc bc                                           ; $4ea0: $03
	dec de                                           ; $4ea1: $1b
	ret nz                                           ; $4ea2: $c0

	ld bc, $09a0                                     ; $4ea3: $01 $a0 $09

jr_081_4ea6:
	ld bc, $e152                                     ; $4ea6: $01 $52 $e1
	ld [bc], a                                       ; $4ea9: $02
	inc b                                            ; $4eaa: $04
	add hl, hl                                       ; $4eab: $29
	db $e4                                           ; $4eac: $e4
	inc bc                                           ; $4ead: $03
	jr nc, jr_081_4eb1                               ; $4eae: $30 $01

	ld d, [hl]                                       ; $4eb0: $56

jr_081_4eb1:
	add hl, bc                                       ; $4eb1: $09
	ld de, $02e1                                     ; $4eb2: $11 $e1 $02
	inc bc                                           ; $4eb5: $03
	rla                                              ; $4eb6: $17
	ret nz                                           ; $4eb7: $c0

	ld bc, $09a0                                     ; $4eb8: $01 $a0 $09
	ld bc, $e15c                                     ; $4ebb: $01 $5c $e1
	ld [bc], a                                       ; $4ebe: $02
	inc b                                            ; $4ebf: $04
	jr nz, jr_081_4ea6                               ; $4ec0: $20 $e4

	inc bc                                           ; $4ec2: $03
	dec de                                           ; $4ec3: $1b
	jr z, @+$08                                      ; $4ec4: $28 $06

	ret nz                                           ; $4ec6: $c0

	ld bc, $09a0                                     ; $4ec7: $01 $a0 $09
	ld bc, $3f5e                                     ; $4eca: $01 $5e $3f
	ld bc, $0966                                     ; $4ecd: $01 $66 $09
	ld de, $02e1                                     ; $4ed0: $11 $e1 $02
	inc bc                                           ; $4ed3: $03
	inc de                                           ; $4ed4: $13
	ret nz                                           ; $4ed5: $c0

	ld bc, $09a0                                     ; $4ed6: $01 $a0 $09
	ld bc, $e16a                                     ; $4ed9: $01 $6a $e1
	ld [bc], a                                       ; $4edc: $02
	inc b                                            ; $4edd: $04
	rla                                              ; $4ede: $17
	db $e4                                           ; $4edf: $e4
	ld [bc], a                                       ; $4ee0: $02
	db $fd                                           ; $4ee1: $fd
	ld bc, $0970                                     ; $4ee2: $01 $70 $09
	ld de, $02e1                                     ; $4ee5: $11 $e1 $02
	inc bc                                           ; $4ee8: $03
	rra                                              ; $4ee9: $1f
	ret nz                                           ; $4eea: $c0

	ld bc, $09a0                                     ; $4eeb: $01 $a0 $09

jr_081_4eee:
	ld bc, $e178                                     ; $4eee: $01 $78 $e1
	ld [bc], a                                       ; $4ef1: $02
	inc b                                            ; $4ef2: $04
	ld [hl-], a                                      ; $4ef3: $32
	db $e4                                           ; $4ef4: $e4
	ld [bc], a                                       ; $4ef5: $02
	add sp, $01                                      ; $4ef6: $e8 $01
	ld a, a                                          ; $4ef8: $7f
	add hl, bc                                       ; $4ef9: $09
	ld de, $02e1                                     ; $4efa: $11 $e1 $02
	inc bc                                           ; $4efd: $03
	rla                                              ; $4efe: $17
	ret nz                                           ; $4eff: $c0

	ld bc, $09a0                                     ; $4f00: $01 $a0 $09
	ld bc, $e181                                     ; $4f03: $01 $81 $e1
	ld [bc], a                                       ; $4f06: $02
	inc b                                            ; $4f07: $04
	jr nz, jr_081_4eee                               ; $4f08: $20 $e4

	ld [bc], a                                       ; $4f0a: $02
	db $d3                                           ; $4f0b: $d3
	add hl, bc                                       ; $4f0c: $09
	add hl, de                                       ; $4f0d: $19
	pop bc                                           ; $4f0e: $c1
	ld e, c                                          ; $4f0f: $59
	db $e3                                           ; $4f10: $e3
	nop                                              ; $4f11: $00
	adc [hl]                                         ; $4f12: $8e
	ret nz                                           ; $4f13: $c0

	ld bc, $09a0                                     ; $4f14: $01 $a0 $09
	ld bc, $a084                                     ; $4f17: $01 $84 $a0
	add b                                            ; $4f1a: $80
	and b                                            ; $4f1b: $a0
	stop                                             ; $4f1c: $10 $00
	inc bc                                           ; $4f1e: $03
	db $e4                                           ; $4f1f: $e4
	nop                                              ; $4f20: $00
	rlca                                             ; $4f21: $07
	rst $38                                          ; $4f22: $ff
	inc bc                                           ; $4f23: $03
	db $e4                                           ; $4f24: $e4
	nop                                              ; $4f25: $00
	ld c, [hl]                                       ; $4f26: $4e
	jr z, @+$0c                                      ; $4f27: $28 $0a

	pop hl                                           ; $4f29: $e1
	ld [bc], a                                       ; $4f2a: $02

jr_081_4f2b:
	rlca                                             ; $4f2b: $07
	rst FarCall                                          ; $4f2c: $f7
	ret nz                                           ; $4f2d: $c0

	ld bc, $09a0                                     ; $4f2e: $01 $a0 $09
	ld bc, $3f8a                                     ; $4f31: $01 $8a $3f
	ld bc, $098b                                     ; $4f34: $01 $8b $09
	ld de, $02e1                                     ; $4f37: $11 $e1 $02
	inc bc                                           ; $4f3a: $03
	rla                                              ; $4f3b: $17
	ret nz                                           ; $4f3c: $c0

	ld bc, $09a0                                     ; $4f3d: $01 $a0 $09
	ld bc, $e191                                     ; $4f40: $01 $91 $e1
	ld [bc], a                                       ; $4f43: $02
	inc b                                            ; $4f44: $04
	jr nz, jr_081_4f2b                               ; $4f45: $20 $e4

	ld [bc], a                                       ; $4f47: $02
	sub [hl]                                         ; $4f48: $96
	ld bc, $0995                                     ; $4f49: $01 $95 $09
	ld de, $02e1                                     ; $4f4c: $11 $e1 $02
	inc bc                                           ; $4f4f: $03
	rra                                              ; $4f50: $1f
	ret nz                                           ; $4f51: $c0

	ld bc, $09a0                                     ; $4f52: $01 $a0 $09
	ld bc, $e197                                     ; $4f55: $01 $97 $e1
	ld [bc], a                                       ; $4f58: $02
	inc b                                            ; $4f59: $04
	ld [hl-], a                                      ; $4f5a: $32
	db $e4                                           ; $4f5b: $e4
	ld [bc], a                                       ; $4f5c: $02
	add c                                            ; $4f5d: $81
	ld bc, $09a0                                     ; $4f5e: $01 $a0 $09
	ld de, $02e1                                     ; $4f61: $11 $e1 $02
	inc bc                                           ; $4f64: $03
	dec de                                           ; $4f65: $1b
	ret nz                                           ; $4f66: $c0

	ld bc, $09a0                                     ; $4f67: $01 $a0 $09
	ld bc, $e1a6                                     ; $4f6a: $01 $a6 $e1
	ld [bc], a                                       ; $4f6d: $02
	inc b                                            ; $4f6e: $04
	add hl, hl                                       ; $4f6f: $29
	db $e4                                           ; $4f70: $e4
	ld [bc], a                                       ; $4f71: $02
	ld l, h                                          ; $4f72: $6c

jr_081_4f73:
	jr z, @+$08                                      ; $4f73: $28 $06

	ret nz                                           ; $4f75: $c0

	ld bc, $09a0                                     ; $4f76: $01 $a0 $09
	ld bc, $3fab                                     ; $4f79: $01 $ab $3f
	ld bc, $09af                                     ; $4f7c: $01 $af $09
	ld de, $02e1                                     ; $4f7f: $11 $e1 $02
	inc bc                                           ; $4f82: $03
	rla                                              ; $4f83: $17
	ret nz                                           ; $4f84: $c0

	ld bc, $09a0                                     ; $4f85: $01 $a0 $09
	ld bc, $e1b2                                     ; $4f88: $01 $b2 $e1
	ld [bc], a                                       ; $4f8b: $02
	inc b                                            ; $4f8c: $04
	jr nz, jr_081_4f73                               ; $4f8d: $20 $e4

	ld [bc], a                                       ; $4f8f: $02
	ld c, [hl]                                       ; $4f90: $4e
	ld bc, $09b8                                     ; $4f91: $01 $b8 $09
	ld de, $02e1                                     ; $4f94: $11 $e1 $02
	inc bc                                           ; $4f97: $03
	dec de                                           ; $4f98: $1b
	ret nz                                           ; $4f99: $c0

	ld bc, $09a0                                     ; $4f9a: $01 $a0 $09
	ld bc, $e1be                                     ; $4f9d: $01 $be $e1
	ld [bc], a                                       ; $4fa0: $02
	inc b                                            ; $4fa1: $04
	add hl, hl                                       ; $4fa2: $29
	db $e4                                           ; $4fa3: $e4
	ld [bc], a                                       ; $4fa4: $02
	add hl, sp                                       ; $4fa5: $39
	ld bc, $09c2                                     ; $4fa6: $01 $c2 $09
	ld de, $02e1                                     ; $4fa9: $11 $e1 $02
	inc bc                                           ; $4fac: $03
	dec de                                           ; $4fad: $1b
	ret nz                                           ; $4fae: $c0

	ld bc, $09a0                                     ; $4faf: $01 $a0 $09
	ld bc, $e1c7                                     ; $4fb2: $01 $c7 $e1
	ld [bc], a                                       ; $4fb5: $02
	inc b                                            ; $4fb6: $04
	add hl, hl                                       ; $4fb7: $29
	db $e4                                           ; $4fb8: $e4
	ld [bc], a                                       ; $4fb9: $02
	inc h                                            ; $4fba: $24
	add hl, bc                                       ; $4fbb: $09
	dec [hl]                                         ; $4fbc: $35
	pop bc                                           ; $4fbd: $c1
	ld e, c                                          ; $4fbe: $59
	db $e3                                           ; $4fbf: $e3

Jump_081_4fc0:
	nop                                              ; $4fc0: $00
	adc a                                            ; $4fc1: $8f
	and b                                            ; $4fc2: $a0
	add b                                            ; $4fc3: $80
	and b                                            ; $4fc4: $a0
	ld de, $0c00                                     ; $4fc5: $11 $00 $0c
	ret nz                                           ; $4fc8: $c0

	ld bc, $09a0                                     ; $4fc9: $01 $a0 $09
	ld bc, $c0cf                                     ; $4fcc: $01 $cf $c0
	ld bc, $01a0                                     ; $4fcf: $01 $a0 $01
	ld bc, $ffd6                                     ; $4fd2: $01 $d6 $ff
	ld b, $c0                                        ; $4fd5: $06 $c0
	ld bc, $09a0                                     ; $4fd7: $01 $a0 $09
	ld bc, $e1db                                     ; $4fda: $01 $db $e1
	ld [bc], a                                       ; $4fdd: $02
	ld [$a016], sp                                   ; $4fde: $08 $16 $a0
	add b                                            ; $4fe1: $80
	and b                                            ; $4fe2: $a0
	ld [de], a                                       ; $4fe3: $12
	nop                                              ; $4fe4: $00
	inc bc                                           ; $4fe5: $03
	db $e4                                           ; $4fe6: $e4
	nop                                              ; $4fe7: $00
	dec bc                                           ; $4fe8: $0b
	rst $38                                          ; $4fe9: $ff
	rlca                                             ; $4fea: $07
	ld b, b                                          ; $4feb: $40
	add b                                            ; $4fec: $80
	and b                                            ; $4fed: $a0
	ld [de], a                                       ; $4fee: $12
	db $e4                                           ; $4fef: $e4
	nop                                              ; $4ff0: $00
	ld c, d                                          ; $4ff1: $4a
	jr z, @+$08                                      ; $4ff2: $28 $06

	ret nz                                           ; $4ff4: $c0

	ld bc, $09a0                                     ; $4ff5: $01 $a0 $09
	ld bc, $3fdf                                     ; $4ff8: $01 $df $3f
	ld bc, $09e5                                     ; $4ffb: $01 $e5 $09
	ld de, $02e1                                     ; $4ffe: $11 $e1 $02
	inc bc                                           ; $5001: $03
	rrca                                             ; $5002: $0f
	ret nz                                           ; $5003: $c0

	ld bc, $09a0                                     ; $5004: $01 $a0 $09
	ld bc, $e1e8                                     ; $5007: $01 $e8 $e1
	ld [bc], a                                       ; $500a: $02
	inc b                                            ; $500b: $04
	ld c, $e4                                        ; $500c: $0e $e4
	ld bc, $01cf                                     ; $500e: $01 $cf $01
	rst AddAOntoHL                                          ; $5011: $ef
	add hl, bc                                       ; $5012: $09
	ld de, $02e1                                     ; $5013: $11 $e1 $02
	inc bc                                           ; $5016: $03
	rra                                              ; $5017: $1f
	ret nz                                           ; $5018: $c0

	ld bc, $09a0                                     ; $5019: $01 $a0 $09
	ld bc, $e1f6                                     ; $501c: $01 $f6 $e1
	ld [bc], a                                       ; $501f: $02
	inc b                                            ; $5020: $04
	ld [hl-], a                                      ; $5021: $32
	db $e4                                           ; $5022: $e4
	ld bc, $01ba                                     ; $5023: $01 $ba $01
	rst $38                                          ; $5026: $ff
	add hl, bc                                       ; $5027: $09
	ld de, $02e1                                     ; $5028: $11 $e1 $02
	inc bc                                           ; $502b: $03
	dec de                                           ; $502c: $1b
	ret nz                                           ; $502d: $c0

	ld bc, $09a0                                     ; $502e: $01 $a0 $09
	ld [bc], a                                       ; $5031: $02
	inc bc                                           ; $5032: $03
	pop hl                                           ; $5033: $e1
	ld [bc], a                                       ; $5034: $02
	inc b                                            ; $5035: $04
	add hl, hl                                       ; $5036: $29
	db $e4                                           ; $5037: $e4
	ld bc, $28a5                                     ; $5038: $01 $a5 $28
	ld b, $c0                                        ; $503b: $06 $c0
	ld bc, $09a0                                     ; $503d: $01 $a0 $09
	ld [bc], a                                       ; $5040: $02
	ld [$023f], sp                                   ; $5041: $08 $3f $02
	ld c, $09                                        ; $5044: $0e $09
	ld de, $02e1                                     ; $5046: $11 $e1 $02
	inc bc                                           ; $5049: $03
	inc de                                           ; $504a: $13
	ret nz                                           ; $504b: $c0

	ld bc, $09a0                                     ; $504c: $01 $a0 $09
	ld [bc], a                                       ; $504f: $02
	inc d                                            ; $5050: $14
	pop hl                                           ; $5051: $e1
	ld [bc], a                                       ; $5052: $02
	inc b                                            ; $5053: $04
	rla                                              ; $5054: $17
	db $e4                                           ; $5055: $e4
	ld bc, $0287                                     ; $5056: $01 $87 $02
	rla                                              ; $5059: $17
	add hl, bc                                       ; $505a: $09
	ld de, $02e1                                     ; $505b: $11 $e1 $02
	inc bc                                           ; $505e: $03
	rra                                              ; $505f: $1f
	ret nz                                           ; $5060: $c0

	ld bc, $09a0                                     ; $5061: $01 $a0 $09

jr_081_5064:
	ld [bc], a                                       ; $5064: $02
	dec e                                            ; $5065: $1d
	pop hl                                           ; $5066: $e1
	ld [bc], a                                       ; $5067: $02
	inc b                                            ; $5068: $04
	ld [hl-], a                                      ; $5069: $32
	db $e4                                           ; $506a: $e4
	ld bc, $0272                                     ; $506b: $01 $72 $02
	inc hl                                           ; $506e: $23
	add hl, bc                                       ; $506f: $09
	ld de, $02e1                                     ; $5070: $11 $e1 $02
	inc bc                                           ; $5073: $03
	rla                                              ; $5074: $17
	ret nz                                           ; $5075: $c0

	ld bc, $09a0                                     ; $5076: $01 $a0 $09
	ld [bc], a                                       ; $5079: $02
	daa                                              ; $507a: $27
	pop hl                                           ; $507b: $e1
	ld [bc], a                                       ; $507c: $02
	inc b                                            ; $507d: $04
	jr nz, jr_081_5064                               ; $507e: $20 $e4

	ld bc, $095d                                     ; $5080: $01 $5d $09
	ld hl, $59c1                                     ; $5083: $21 $c1 $59
	db $e3                                           ; $5086: $e3
	nop                                              ; $5087: $00
	sub b                                            ; $5088: $90
	ret nz                                           ; $5089: $c0

	ld bc, $09a0                                     ; $508a: $01 $a0 $09
	ld bc, $e1db                                     ; $508d: $01 $db $e1
	ld [bc], a                                       ; $5090: $02
	ld [$a02a], sp                                   ; $5091: $08 $2a $a0
	add b                                            ; $5094: $80
	and b                                            ; $5095: $a0
	inc de                                           ; $5096: $13
	nop                                              ; $5097: $00
	inc bc                                           ; $5098: $03
	db $e4                                           ; $5099: $e4
	nop                                              ; $509a: $00
	dec bc                                           ; $509b: $0b
	rst $38                                          ; $509c: $ff
	rlca                                             ; $509d: $07
	ld b, b                                          ; $509e: $40
	add b                                            ; $509f: $80
	and b                                            ; $50a0: $a0
	inc de                                           ; $50a1: $13
	db $e4                                           ; $50a2: $e4
	nop                                              ; $50a3: $00
	ld c, d                                          ; $50a4: $4a
	jr z, jr_081_50ad                                ; $50a5: $28 $06

	ret nz                                           ; $50a7: $c0

	ld bc, $09a0                                     ; $50a8: $01 $a0 $09
	ld [bc], a                                       ; $50ab: $02
	inc l                                            ; $50ac: $2c

jr_081_50ad:
	ccf                                              ; $50ad: $3f
	ld bc, $097f                                     ; $50ae: $01 $7f $09
	ld de, $02e1                                     ; $50b1: $11 $e1 $02
	inc bc                                           ; $50b4: $03
	rrca                                             ; $50b5: $0f
	ret nz                                           ; $50b6: $c0

	ld bc, $09a0                                     ; $50b7: $01 $a0 $09
	ld [bc], a                                       ; $50ba: $02
	ld sp, $02e1                                     ; $50bb: $31 $e1 $02
	inc b                                            ; $50be: $04
	ld c, $e4                                        ; $50bf: $0e $e4
	ld bc, $021c                                     ; $50c1: $01 $1c $02
	scf                                              ; $50c4: $37
	add hl, bc                                       ; $50c5: $09
	ld de, $02e1                                     ; $50c6: $11 $e1 $02
	inc bc                                           ; $50c9: $03
	dec de                                           ; $50ca: $1b
	ret nz                                           ; $50cb: $c0

	ld bc, $09a0                                     ; $50cc: $01 $a0 $09

jr_081_50cf:
	ld [bc], a                                       ; $50cf: $02
	dec a                                            ; $50d0: $3d
	pop hl                                           ; $50d1: $e1
	ld [bc], a                                       ; $50d2: $02
	inc b                                            ; $50d3: $04
	add hl, hl                                       ; $50d4: $29
	db $e4                                           ; $50d5: $e4
	ld bc, $0207                                     ; $50d6: $01 $07 $02
	ld b, l                                          ; $50d9: $45
	add hl, bc                                       ; $50da: $09
	ld de, $02e1                                     ; $50db: $11 $e1 $02
	inc bc                                           ; $50de: $03
	rla                                              ; $50df: $17

Jump_081_50e0:
	ret nz                                           ; $50e0: $c0

	ld bc, $09a0                                     ; $50e1: $01 $a0 $09
	ld [bc], a                                       ; $50e4: $02
	ld c, a                                          ; $50e5: $4f
	pop hl                                           ; $50e6: $e1
	ld [bc], a                                       ; $50e7: $02
	inc b                                            ; $50e8: $04
	jr nz, jr_081_50cf                               ; $50e9: $20 $e4

	nop                                              ; $50eb: $00
	ldh a, [c]                                       ; $50ec: $f2
	jr z, jr_081_50f5                                ; $50ed: $28 $06

	ret nz                                           ; $50ef: $c0

	ld bc, $09a0                                     ; $50f0: $01 $a0 $09
	ld [bc], a                                       ; $50f3: $02
	ld d, [hl]                                       ; $50f4: $56

jr_081_50f5:
	ccf                                              ; $50f5: $3f
	ld [bc], a                                       ; $50f6: $02
	ld e, e                                          ; $50f7: $5b
	add hl, bc                                       ; $50f8: $09
	ld de, $02e1                                     ; $50f9: $11 $e1 $02
	inc bc                                           ; $50fc: $03
	rrca                                             ; $50fd: $0f
	ret nz                                           ; $50fe: $c0

	ld bc, $09a0                                     ; $50ff: $01 $a0 $09
	ld [bc], a                                       ; $5102: $02
	ld e, a                                          ; $5103: $5f
	pop hl                                           ; $5104: $e1
	ld [bc], a                                       ; $5105: $02
	inc b                                            ; $5106: $04
	ld c, $e4                                        ; $5107: $0e $e4
	nop                                              ; $5109: $00
	call nc, Call_081_6402                           ; $510a: $d4 $02 $64
	add hl, bc                                       ; $510d: $09
	ld de, $02e1                                     ; $510e: $11 $e1 $02
	inc bc                                           ; $5111: $03
	rra                                              ; $5112: $1f
	ret nz                                           ; $5113: $c0

	ld bc, $09a0                                     ; $5114: $01 $a0 $09

jr_081_5117:
	ld [bc], a                                       ; $5117: $02
	ld l, c                                          ; $5118: $69
	pop hl                                           ; $5119: $e1
	ld [bc], a                                       ; $511a: $02
	inc b                                            ; $511b: $04
	ld [hl-], a                                      ; $511c: $32
	db $e4                                           ; $511d: $e4
	nop                                              ; $511e: $00
	cp a                                             ; $511f: $bf
	ld [bc], a                                       ; $5120: $02
	ld [hl], d                                       ; $5121: $72
	add hl, bc                                       ; $5122: $09
	ld de, $02e1                                     ; $5123: $11 $e1 $02
	inc bc                                           ; $5126: $03
	rla                                              ; $5127: $17
	ret nz                                           ; $5128: $c0

	ld bc, $09a0                                     ; $5129: $01 $a0 $09
	ld [bc], a                                       ; $512c: $02
	ld [hl], a                                       ; $512d: $77
	pop hl                                           ; $512e: $e1
	ld [bc], a                                       ; $512f: $02
	inc b                                            ; $5130: $04
	jr nz, jr_081_5117                               ; $5131: $20 $e4

	nop                                              ; $5133: $00
	xor d                                            ; $5134: $aa
	add hl, bc                                       ; $5135: $09
	ld d, $e1                                        ; $5136: $16 $e1
	ld [bc], a                                       ; $5138: $02
	ld [$a03e], sp                                   ; $5139: $08 $3e $a0
	add b                                            ; $513c: $80
	and b                                            ; $513d: $a0
	inc d                                            ; $513e: $14
	nop                                              ; $513f: $00
	inc bc                                           ; $5140: $03
	db $e4                                           ; $5141: $e4
	nop                                              ; $5142: $00
	dec bc                                           ; $5143: $0b
	rst $38                                          ; $5144: $ff
	rlca                                             ; $5145: $07
	ld b, b                                          ; $5146: $40
	add b                                            ; $5147: $80
	and b                                            ; $5148: $a0
	inc d                                            ; $5149: $14
	db $e4                                           ; $514a: $e4
	nop                                              ; $514b: $00
	ld c, d                                          ; $514c: $4a
	jr z, jr_081_5155                                ; $514d: $28 $06

	ret nz                                           ; $514f: $c0

	ld bc, $09a0                                     ; $5150: $01 $a0 $09
	ld [bc], a                                       ; $5153: $02
	ld a, [hl]                                       ; $5154: $7e

jr_081_5155:
	ccf                                              ; $5155: $3f
	ld [bc], a                                       ; $5156: $02
	add l                                            ; $5157: $85
	add hl, bc                                       ; $5158: $09
	ld de, $02e1                                     ; $5159: $11 $e1 $02
	inc bc                                           ; $515c: $03
	dec de                                           ; $515d: $1b
	ret nz                                           ; $515e: $c0

	ld bc, $09a0                                     ; $515f: $01 $a0 $09
	ld [bc], a                                       ; $5162: $02
	adc b                                            ; $5163: $88
	pop hl                                           ; $5164: $e1
	ld [bc], a                                       ; $5165: $02
	inc b                                            ; $5166: $04
	add hl, hl                                       ; $5167: $29
	db $e4                                           ; $5168: $e4
	nop                                              ; $5169: $00
	ld [hl], h                                       ; $516a: $74
	ld [bc], a                                       ; $516b: $02
	sub b                                            ; $516c: $90
	add hl, bc                                       ; $516d: $09
	ld de, $02e1                                     ; $516e: $11 $e1 $02
	inc bc                                           ; $5171: $03
	dec de                                           ; $5172: $1b
	ret nz                                           ; $5173: $c0

	ld bc, $09a0                                     ; $5174: $01 $a0 $09
	ld [bc], a                                       ; $5177: $02
	sbc c                                            ; $5178: $99
	pop hl                                           ; $5179: $e1
	ld [bc], a                                       ; $517a: $02
	inc b                                            ; $517b: $04
	add hl, hl                                       ; $517c: $29
	db $e4                                           ; $517d: $e4
	nop                                              ; $517e: $00
	ld e, a                                          ; $517f: $5f
	ld [bc], a                                       ; $5180: $02
	and b                                            ; $5181: $a0
	add hl, bc                                       ; $5182: $09
	ld de, $02e1                                     ; $5183: $11 $e1 $02
	inc bc                                           ; $5186: $03
	dec de                                           ; $5187: $1b
	ret nz                                           ; $5188: $c0

	ld bc, $09a0                                     ; $5189: $01 $a0 $09
	ld [bc], a                                       ; $518c: $02
	and a                                            ; $518d: $a7
	pop hl                                           ; $518e: $e1
	ld [bc], a                                       ; $518f: $02
	inc b                                            ; $5190: $04
	add hl, hl                                       ; $5191: $29
	db $e4                                           ; $5192: $e4
	nop                                              ; $5193: $00
	ld c, d                                          ; $5194: $4a

jr_081_5195:
	jr z, jr_081_519d                                ; $5195: $28 $06

	ret nz                                           ; $5197: $c0

	ld bc, $09a0                                     ; $5198: $01 $a0 $09
	ld [bc], a                                       ; $519b: $02
	xor h                                            ; $519c: $ac

jr_081_519d:
	ccf                                              ; $519d: $3f
	ld [bc], a                                       ; $519e: $02
	or h                                             ; $519f: $b4
	add hl, bc                                       ; $51a0: $09
	ld de, $02e1                                     ; $51a1: $11 $e1 $02
	inc bc                                           ; $51a4: $03
	rla                                              ; $51a5: $17
	ret nz                                           ; $51a6: $c0

	ld bc, $09a0                                     ; $51a7: $01 $a0 $09
	ld [bc], a                                       ; $51aa: $02
	or [hl]                                          ; $51ab: $b6
	pop hl                                           ; $51ac: $e1
	ld [bc], a                                       ; $51ad: $02
	inc b                                            ; $51ae: $04
	jr nz, jr_081_5195                               ; $51af: $20 $e4

	nop                                              ; $51b1: $00
	inc l                                            ; $51b2: $2c
	ld [bc], a                                       ; $51b3: $02
	cp c                                             ; $51b4: $b9
	add hl, bc                                       ; $51b5: $09
	ld de, $02e1                                     ; $51b6: $11 $e1 $02
	inc bc                                           ; $51b9: $03
	dec de                                           ; $51ba: $1b
	ret nz                                           ; $51bb: $c0

	ld bc, $09a0                                     ; $51bc: $01 $a0 $09
	ld [bc], a                                       ; $51bf: $02
	cp h                                             ; $51c0: $bc
	pop hl                                           ; $51c1: $e1
	ld [bc], a                                       ; $51c2: $02
	inc b                                            ; $51c3: $04
	add hl, hl                                       ; $51c4: $29
	db $e4                                           ; $51c5: $e4
	nop                                              ; $51c6: $00
	rla                                              ; $51c7: $17
	ld [bc], a                                       ; $51c8: $02
	ret nz                                           ; $51c9: $c0

	add hl, bc                                       ; $51ca: $09
	ld de, $02e1                                     ; $51cb: $11 $e1 $02
	inc bc                                           ; $51ce: $03
	dec de                                           ; $51cf: $1b
	ret nz                                           ; $51d0: $c0

	ld bc, $09a0                                     ; $51d1: $01 $a0 $09
	ld [bc], a                                       ; $51d4: $02
	jp nz, $02e1                                     ; $51d5: $c2 $e1 $02

	inc b                                            ; $51d8: $04
	add hl, hl                                       ; $51d9: $29
	db $e4                                           ; $51da: $e4
	nop                                              ; $51db: $00
	ld [bc], a                                       ; $51dc: $02
	add hl, bc                                       ; $51dd: $09
	inc h                                            ; $51de: $24
	ld h, b                                          ; $51df: $60
	db $fc                                           ; $51e0: $fc
	ret nz                                           ; $51e1: $c0

	ld h, l                                          ; $51e2: $65
	ret c                                            ; $51e3: $d8

	ld a, [de]                                       ; $51e4: $1a
	add c                                            ; $51e5: $81
	ret nz                                           ; $51e6: $c0

	inc e                                            ; $51e7: $1c
	ret c                                            ; $51e8: $d8

	ld bc, $0ed2                                     ; $51e9: $01 $d2 $0e
	and b                                            ; $51ec: $a0
	add b                                            ; $51ed: $80
	and b                                            ; $51ee: $a0
	dec d                                            ; $51ef: $15
	nop                                              ; $51f0: $00
	inc bc                                           ; $51f1: $03
	db $e4                                           ; $51f2: $e4
	nop                                              ; $51f3: $00
	ld d, a                                          ; $51f4: $57
	rst $38                                          ; $51f5: $ff
	inc bc                                           ; $51f6: $03
	db $e4                                           ; $51f7: $e4
	nop                                              ; $51f8: $00
	dec bc                                           ; $51f9: $0b
	nop                                              ; $51fa: $00
	inc bc                                           ; $51fb: $03
	db $e4                                           ; $51fc: $e4
	nop                                              ; $51fd: $00
	ld b, $03                                        ; $51fe: $06 $03
	db $e4                                           ; $5200: $e4
	nop                                              ; $5201: $00
	ret c                                            ; $5202: $d8

	jr z, @+$0e                                      ; $5203: $28 $0c

	ret nz                                           ; $5205: $c0

	ld bc, $09a0                                     ; $5206: $01 $a0 $09
	ld [bc], a                                       ; $5209: $02
	rst JumpTable                                          ; $520a: $c7
	ret nz                                           ; $520b: $c0

	ld bc, $01a0                                     ; $520c: $01 $a0 $01
	ld [bc], a                                       ; $520f: $02
	adc $38                                          ; $5210: $ce $38
	ld [bc], a                                       ; $5212: $02
	call nc, $2d09                                   ; $5213: $d4 $09 $2d
	pop bc                                           ; $5216: $c1
	ld e, c                                          ; $5217: $59
	db $e3                                           ; $5218: $e3
	nop                                              ; $5219: $00
	sub c                                            ; $521a: $91
	ret nz                                           ; $521b: $c0

	add hl, bc                                       ; $521c: $09
	db $e3                                           ; $521d: $e3
	nop                                              ; $521e: $00
	inc [hl]                                         ; $521f: $34
	and b                                            ; $5220: $a0
	add b                                            ; $5221: $80
	and b                                            ; $5222: $a0
	ld d, $00                                        ; $5223: $16 $00
	ld b, $c0                                        ; $5225: $06 $c0
	ld bc, $09a0                                     ; $5227: $01 $a0 $09
	ld [bc], a                                       ; $522a: $02
	sub $ff                                          ; $522b: $d6 $ff
	inc c                                            ; $522d: $0c
	ret nz                                           ; $522e: $c0

	ld bc, $09a0                                     ; $522f: $01 $a0 $09
	ld [bc], a                                       ; $5232: $02
	db $db                                           ; $5233: $db
	ret nz                                           ; $5234: $c0

	ld bc, $01a0                                     ; $5235: $01 $a0 $01
	ld [bc], a                                       ; $5238: $02
	ldh [$c0], a                                     ; $5239: $e0 $c0
	ld d, [hl]                                       ; $523b: $56
	ret c                                            ; $523c: $d8

	call c, $e5d6                                    ; $523d: $dc $d6 $e5
	daa                                              ; $5240: $27
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	ld [bc], a                                       ; $5243: $02
	jp hl                                            ; $5244: $e9


	add hl, bc                                       ; $5245: $09
	inc bc                                           ; $5246: $03
	db $e4                                           ; $5247: $e4
	nop                                              ; $5248: $00
	sub c                                            ; $5249: $91
	add hl, bc                                       ; $524a: $09
	adc l                                            ; $524b: $8d
	ret nz                                           ; $524c: $c0

	ld bc, $09a0                                     ; $524d: $01 $a0 $09
	ld [bc], a                                       ; $5250: $02
	db $eb                                           ; $5251: $eb
	ret nz                                           ; $5252: $c0

	ld bc, $01a0                                     ; $5253: $01 $a0 $01
	ld [bc], a                                       ; $5256: $02
	db $f4                                           ; $5257: $f4
	ret nz                                           ; $5258: $c0

	set 0, c                                         ; $5259: $cb $c1
	ld e, e                                          ; $525b: $5b
	ret nz                                           ; $525c: $c0

	add hl, bc                                       ; $525d: $09
	db $e3                                           ; $525e: $e3
	nop                                              ; $525f: $00
	inc [hl]                                         ; $5260: $34
	ret nz                                           ; $5261: $c0

	rrca                                             ; $5262: $0f
	db $e3                                           ; $5263: $e3
	ld bc, $c000                                     ; $5264: $01 $00 $c0
	ld bc, $09a0                                     ; $5267: $01 $a0 $09
	ld [bc], a                                       ; $526a: $02
	ld a, [$01c0]                                    ; $526b: $fa $c0 $01
	and b                                            ; $526e: $a0
	ld bc, $ff02                                     ; $526f: $01 $02 $ff
	ret nz                                           ; $5272: $c0

	ld bc, $09a0                                     ; $5273: $01 $a0 $09
	inc bc                                           ; $5276: $03
	ld [bc], a                                       ; $5277: $02
	ret nz                                           ; $5278: $c0

	ld bc, $01a0                                     ; $5279: $01 $a0 $01
	inc bc                                           ; $527c: $03
	ld c, $c0                                        ; $527d: $0e $c0
	ld bc, $09a0                                     ; $527f: $01 $a0 $09
	inc bc                                           ; $5282: $03
	ld de, $01c0                                     ; $5283: $11 $c0 $01
	and b                                            ; $5286: $a0
	ld bc, $1f03                                     ; $5287: $01 $03 $1f
	ret nz                                           ; $528a: $c0

	ld bc, $09a0                                     ; $528b: $01 $a0 $09
	inc bc                                           ; $528e: $03
	inc hl                                           ; $528f: $23
	ret nz                                           ; $5290: $c0

	ld bc, $01a0                                     ; $5291: $01 $a0 $01
	inc bc                                           ; $5294: $03
	dec l                                            ; $5295: $2d
	ret nz                                           ; $5296: $c0

	ld bc, $09a0                                     ; $5297: $01 $a0 $09
	inc bc                                           ; $529a: $03
	ld a, [hl-]                                      ; $529b: $3a
	ret nz                                           ; $529c: $c0

	ld bc, $01a0                                     ; $529d: $01 $a0 $01
	inc bc                                           ; $52a0: $03
	ld c, b                                          ; $52a1: $48
	ret nz                                           ; $52a2: $c0

	set 0, c                                         ; $52a3: $cb $c1
	ld e, h                                          ; $52a5: $5c
	ret nz                                           ; $52a6: $c0

	inc c                                            ; $52a7: $0c
	ldh [$50], a                                     ; $52a8: $e0 $50
	ret nz                                           ; $52aa: $c0

	ld de, $00e3                                     ; $52ab: $11 $e3 $00
	sub c                                            ; $52ae: $91
	pop hl                                           ; $52af: $e1
	ld [bc], a                                       ; $52b0: $02
	ld [bc], a                                       ; $52b1: $02
	jr nc, @-$3e                                     ; $52b2: $30 $c0

	ld bc, $09a0                                     ; $52b4: $01 $a0 $09
	inc bc                                           ; $52b7: $03
	ld d, d                                          ; $52b8: $52
	ret nc                                           ; $52b9: $d0

	add d                                            ; $52ba: $82
	ld bc, $d1d5                                     ; $52bb: $01 $d5 $d1
	pop hl                                           ; $52be: $e1
	ld [bc], a                                       ; $52bf: $02
	inc b                                            ; $52c0: $04
	rst JumpTable                                          ; $52c1: $c7
	ret nz                                           ; $52c2: $c0

	ld d, c                                          ; $52c3: $51
	db $d3                                           ; $52c4: $d3
	ret nz                                           ; $52c5: $c0

	ld d, b                                          ; $52c6: $50
	jp nc, $55c0                                     ; $52c7: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $52ca: $e0 $14
	ret nz                                           ; $52cc: $c0

	ld d, [hl]                                       ; $52cd: $56
	ret c                                            ; $52ce: $d8

	call c, $c1d6                                    ; $52cf: $dc $d6 $c1
	ld l, e                                          ; $52d2: $6b
	sub $d8                                          ; $52d3: $d6 $d8
	push hl                                          ; $52d5: $e5
	daa                                              ; $52d6: $27
	nop                                              ; $52d7: $00
	nop                                              ; $52d8: $00
	add hl, bc                                       ; $52d9: $09
	ld b, h                                          ; $52da: $44
	pop bc                                           ; $52db: $c1
	ld e, c                                          ; $52dc: $59
	db $e3                                           ; $52dd: $e3
	nop                                              ; $52de: $00
	adc c                                            ; $52df: $89
	db $fd                                           ; $52e0: $fd
	add hl, sp                                       ; $52e1: $39
	adc e                                            ; $52e2: $8b
	and b                                            ; $52e3: $a0
	ld [bc], a                                       ; $52e4: $02
	ld [bc], a                                       ; $52e5: $02
	or b                                             ; $52e6: $b0
	ld a, h                                          ; $52e7: $7c
	dec b                                            ; $52e8: $05
	ret nz                                           ; $52e9: $c0

	ld d, [hl]                                       ; $52ea: $56
	ret c                                            ; $52eb: $d8

	call c, $02d1                                    ; $52ec: $dc $d1 $02
	or b                                             ; $52ef: $b0
	ld a, [hl]                                       ; $52f0: $7e
	dec b                                            ; $52f1: $05
	ret nz                                           ; $52f2: $c0

	ld d, [hl]                                       ; $52f3: $56
	ret c                                            ; $52f4: $d8

	call c, $02d2                                    ; $52f5: $dc $d2 $02
	or b                                             ; $52f8: $b0
	ld a, a                                          ; $52f9: $7f
	dec b                                            ; $52fa: $05
	ret nz                                           ; $52fb: $c0

	ld d, [hl]                                       ; $52fc: $56
	ret c                                            ; $52fd: $d8

	call c, $02d3                                    ; $52fe: $dc $d3 $02
	or b                                             ; $5301: $b0
	ld a, e                                          ; $5302: $7b
	dec b                                            ; $5303: $05
	ret nz                                           ; $5304: $c0

	ld d, [hl]                                       ; $5305: $56
	ret c                                            ; $5306: $d8

	call c, $02d4                                    ; $5307: $dc $d4 $02
	or b                                             ; $530a: $b0
	ld a, l                                          ; $530b: $7d
	dec b                                            ; $530c: $05
	ret nz                                           ; $530d: $c0

	ld d, [hl]                                       ; $530e: $56
	ret c                                            ; $530f: $d8

	call c, $02d5                                    ; $5310: $dc $d5 $02
	or b                                             ; $5313: $b0
	ld a, d                                          ; $5314: $7a
	dec b                                            ; $5315: $05
	ret nz                                           ; $5316: $c0

	ld d, [hl]                                       ; $5317: $56
	ret c                                            ; $5318: $d8

	call c, $e5d7                                    ; $5319: $dc $d7 $e5
	daa                                              ; $531c: $27
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	add hl, bc                                       ; $531f: $09
	dec l                                            ; $5320: $2d
	ret nz                                           ; $5321: $c0

	ld bc, $09a0                                     ; $5322: $01 $a0 $09
	inc bc                                           ; $5325: $03
	ld e, [hl]                                       ; $5326: $5e
	ret nz                                           ; $5327: $c0

	ld bc, $01a0                                     ; $5328: $01 $a0 $01
	inc bc                                           ; $532b: $03
	ld h, [hl]                                       ; $532c: $66
	add c                                            ; $532d: $81
	ret nz                                           ; $532e: $c0

	ld h, l                                          ; $532f: $65
	ld b, $d4                                        ; $5330: $06 $d4
	push de                                          ; $5332: $d5
	rst SubAFromHL                                          ; $5333: $d7
	ret c                                            ; $5334: $d8

	reti                                             ; $5335: $d9


	jp c, $d008                                      ; $5336: $da $08 $d0

	add e                                            ; $5339: $83
	ld bc, $d0de                                     ; $533a: $01 $de $d0
	db $e4                                           ; $533d: $e4
	nop                                              ; $533e: $00
	db $10                                           ; $533f: $10
	inc b                                            ; $5340: $04
	pop de                                           ; $5341: $d1
	db $d3                                           ; $5342: $d3
	sub $db                                          ; $5343: $d6 $db
	ld [$83d0], sp                                   ; $5345: $08 $d0 $83
	ld bc, $d1de                                     ; $5348: $01 $de $d1
	db $e4                                           ; $534b: $e4
	nop                                              ; $534c: $00
	or d                                             ; $534d: $b2
	add hl, bc                                       ; $534e: $09
	ld e, $c1                                        ; $534f: $1e $c1
	inc a                                            ; $5351: $3c
	pop bc                                           ; $5352: $c1
	ld e, c                                          ; $5353: $59
	db $e3                                           ; $5354: $e3
	nop                                              ; $5355: $00
	cp b                                             ; $5356: $b8
	ret nz                                           ; $5357: $c0

	add hl, bc                                       ; $5358: $09
	db $e3                                           ; $5359: $e3
	nop                                              ; $535a: $00
	dec de                                           ; $535b: $1b
	and b                                            ; $535c: $a0
	add b                                            ; $535d: $80
	and b                                            ; $535e: $a0
	rla                                              ; $535f: $17
	nop                                              ; $5360: $00
	inc bc                                           ; $5361: $03
	db $e4                                           ; $5362: $e4
	nop                                              ; $5363: $00
	dec bc                                           ; $5364: $0b
	rst $38                                          ; $5365: $ff
	rlca                                             ; $5366: $07
	ld b, b                                          ; $5367: $40
	add b                                            ; $5368: $80
	and b                                            ; $5369: $a0
	rla                                              ; $536a: $17
	db $e4                                           ; $536b: $e4
	nop                                              ; $536c: $00
	ld c, d                                          ; $536d: $4a

jr_081_536e:
	jr z, jr_081_5376                                ; $536e: $28 $06

	ret nz                                           ; $5370: $c0

	ld bc, $09a0                                     ; $5371: $01 $a0 $09
	inc bc                                           ; $5374: $03
	ld l, e                                          ; $5375: $6b

jr_081_5376:
	ccf                                              ; $5376: $3f
	inc bc                                           ; $5377: $03
	ld [hl], d                                       ; $5378: $72
	add hl, bc                                       ; $5379: $09
	ld de, $02e1                                     ; $537a: $11 $e1 $02
	inc bc                                           ; $537d: $03
	rla                                              ; $537e: $17
	ret nz                                           ; $537f: $c0

	ld bc, $09a0                                     ; $5380: $01 $a0 $09
	inc bc                                           ; $5383: $03
	ld a, b                                          ; $5384: $78
	pop hl                                           ; $5385: $e1
	ld [bc], a                                       ; $5386: $02
	inc b                                            ; $5387: $04
	jr nz, jr_081_536e                               ; $5388: $20 $e4

	ld bc, $0324                                     ; $538a: $01 $24 $03
	ld a, a                                          ; $538d: $7f
	add hl, bc                                       ; $538e: $09
	ld de, $02e1                                     ; $538f: $11 $e1 $02
	inc bc                                           ; $5392: $03
	rra                                              ; $5393: $1f
	ret nz                                           ; $5394: $c0

	ld bc, $09a0                                     ; $5395: $01 $a0 $09
	inc bc                                           ; $5398: $03
	add d                                            ; $5399: $82
	pop hl                                           ; $539a: $e1
	ld [bc], a                                       ; $539b: $02
	inc b                                            ; $539c: $04
	ld [hl-], a                                      ; $539d: $32
	db $e4                                           ; $539e: $e4
	ld bc, $030f                                     ; $539f: $01 $0f $03
	adc b                                            ; $53a2: $88
	add hl, bc                                       ; $53a3: $09
	ld de, $02e1                                     ; $53a4: $11 $e1 $02
	inc bc                                           ; $53a7: $03
	dec de                                           ; $53a8: $1b
	ret nz                                           ; $53a9: $c0

	ld bc, $09a0                                     ; $53aa: $01 $a0 $09
	inc bc                                           ; $53ad: $03
	adc h                                            ; $53ae: $8c
	pop hl                                           ; $53af: $e1
	ld [bc], a                                       ; $53b0: $02
	inc b                                            ; $53b1: $04
	add hl, hl                                       ; $53b2: $29
	db $e4                                           ; $53b3: $e4
	nop                                              ; $53b4: $00
	ld a, [$0628]                                    ; $53b5: $fa $28 $06
	ret nz                                           ; $53b8: $c0

	ld bc, $09a0                                     ; $53b9: $01 $a0 $09
	inc bc                                           ; $53bc: $03
	sub c                                            ; $53bd: $91
	ccf                                              ; $53be: $3f
	inc bc                                           ; $53bf: $03
	sub [hl]                                         ; $53c0: $96
	add hl, bc                                       ; $53c1: $09
	ld de, $02e1                                     ; $53c2: $11 $e1 $02
	inc bc                                           ; $53c5: $03
	rla                                              ; $53c6: $17
	ret nz                                           ; $53c7: $c0

	ld bc, $09a0                                     ; $53c8: $01 $a0 $09
	inc bc                                           ; $53cb: $03
	sbc e                                            ; $53cc: $9b
	pop hl                                           ; $53cd: $e1
	ld [bc], a                                       ; $53ce: $02
	inc b                                            ; $53cf: $04
	jr nz, @-$1a                                     ; $53d0: $20 $e4

	nop                                              ; $53d2: $00
	call c, $9d03                                    ; $53d3: $dc $03 $9d
	add hl, bc                                       ; $53d6: $09
	ld de, $02e1                                     ; $53d7: $11 $e1 $02
	inc bc                                           ; $53da: $03
	rra                                              ; $53db: $1f
	ret nz                                           ; $53dc: $c0

	ld bc, $09a0                                     ; $53dd: $01 $a0 $09
	inc bc                                           ; $53e0: $03
	sbc a                                            ; $53e1: $9f
	pop hl                                           ; $53e2: $e1
	ld [bc], a                                       ; $53e3: $02
	inc b                                            ; $53e4: $04
	ld [hl-], a                                      ; $53e5: $32
	db $e4                                           ; $53e6: $e4
	nop                                              ; $53e7: $00
	rst JumpTable                                          ; $53e8: $c7
	inc bc                                           ; $53e9: $03
	and a                                            ; $53ea: $a7
	add hl, bc                                       ; $53eb: $09
	ld de, $02e1                                     ; $53ec: $11 $e1 $02
	inc bc                                           ; $53ef: $03
	dec de                                           ; $53f0: $1b
	ret nz                                           ; $53f1: $c0

	ld bc, $09a0                                     ; $53f2: $01 $a0 $09
	inc bc                                           ; $53f5: $03
	xor h                                            ; $53f6: $ac
	pop hl                                           ; $53f7: $e1
	ld [bc], a                                       ; $53f8: $02
	inc b                                            ; $53f9: $04
	add hl, hl                                       ; $53fa: $29
	db $e4                                           ; $53fb: $e4
	nop                                              ; $53fc: $00
	or d                                             ; $53fd: $b2
	add hl, bc                                       ; $53fe: $09
	ld e, $c1                                        ; $53ff: $1e $c1
	inc a                                            ; $5401: $3c
	pop bc                                           ; $5402: $c1
	ld e, c                                          ; $5403: $59
	db $e3                                           ; $5404: $e3
	nop                                              ; $5405: $00
	cp c                                             ; $5406: $b9
	ret nz                                           ; $5407: $c0

	add hl, bc                                       ; $5408: $09
	db $e3                                           ; $5409: $e3
	nop                                              ; $540a: $00
	scf                                              ; $540b: $37
	and b                                            ; $540c: $a0
	add b                                            ; $540d: $80
	and b                                            ; $540e: $a0
	jr jr_081_5411                                   ; $540f: $18 $00

jr_081_5411:
	inc bc                                           ; $5411: $03
	db $e4                                           ; $5412: $e4
	nop                                              ; $5413: $00
	dec bc                                           ; $5414: $0b
	rst $38                                          ; $5415: $ff
	rlca                                             ; $5416: $07
	ld b, b                                          ; $5417: $40
	add b                                            ; $5418: $80
	and b                                            ; $5419: $a0
	jr @-$1a                                         ; $541a: $18 $e4

	nop                                              ; $541c: $00
	ld c, d                                          ; $541d: $4a

jr_081_541e:
	jr z, jr_081_5426                                ; $541e: $28 $06

	ret nz                                           ; $5420: $c0

	ld bc, $09a0                                     ; $5421: $01 $a0 $09
	inc bc                                           ; $5424: $03
	or l                                             ; $5425: $b5

jr_081_5426:
	ccf                                              ; $5426: $3f
	inc bc                                           ; $5427: $03
	ld [hl], d                                       ; $5428: $72
	add hl, bc                                       ; $5429: $09
	ld de, $02e1                                     ; $542a: $11 $e1 $02
	inc bc                                           ; $542d: $03
	rla                                              ; $542e: $17
	ret nz                                           ; $542f: $c0

	ld bc, $09a0                                     ; $5430: $01 $a0 $09
	inc bc                                           ; $5433: $03
	ld a, b                                          ; $5434: $78
	pop hl                                           ; $5435: $e1
	ld [bc], a                                       ; $5436: $02
	inc b                                            ; $5437: $04
	jr nz, jr_081_541e                               ; $5438: $20 $e4

	nop                                              ; $543a: $00
	ld [hl], h                                       ; $543b: $74
	inc bc                                           ; $543c: $03
	ld a, a                                          ; $543d: $7f
	add hl, bc                                       ; $543e: $09
	ld de, $02e1                                     ; $543f: $11 $e1 $02
	inc bc                                           ; $5442: $03
	rra                                              ; $5443: $1f
	ret nz                                           ; $5444: $c0

	ld bc, $09a0                                     ; $5445: $01 $a0 $09
	inc bc                                           ; $5448: $03
	add d                                            ; $5449: $82
	pop hl                                           ; $544a: $e1
	ld [bc], a                                       ; $544b: $02
	inc b                                            ; $544c: $04
	ld [hl-], a                                      ; $544d: $32
	db $e4                                           ; $544e: $e4
	nop                                              ; $544f: $00
	ld e, a                                          ; $5450: $5f
	inc bc                                           ; $5451: $03
	adc b                                            ; $5452: $88
	add hl, bc                                       ; $5453: $09
	ld de, $02e1                                     ; $5454: $11 $e1 $02
	inc bc                                           ; $5457: $03
	dec de                                           ; $5458: $1b
	ret nz                                           ; $5459: $c0

	ld bc, $09a0                                     ; $545a: $01 $a0 $09
	inc bc                                           ; $545d: $03
	adc h                                            ; $545e: $8c
	pop hl                                           ; $545f: $e1
	ld [bc], a                                       ; $5460: $02
	inc b                                            ; $5461: $04
	add hl, hl                                       ; $5462: $29
	db $e4                                           ; $5463: $e4
	nop                                              ; $5464: $00
	ld c, d                                          ; $5465: $4a

jr_081_5466:
	jr z, jr_081_546e                                ; $5466: $28 $06

	ret nz                                           ; $5468: $c0

	ld bc, $09a0                                     ; $5469: $01 $a0 $09
	inc bc                                           ; $546c: $03
	cp c                                             ; $546d: $b9

jr_081_546e:
	ccf                                              ; $546e: $3f
	inc bc                                           ; $546f: $03
	ret nz                                           ; $5470: $c0

	add hl, bc                                       ; $5471: $09
	ld de, $02e1                                     ; $5472: $11 $e1 $02
	inc bc                                           ; $5475: $03
	rla                                              ; $5476: $17
	ret nz                                           ; $5477: $c0

	ld bc, $09a0                                     ; $5478: $01 $a0 $09
	inc bc                                           ; $547b: $03
	jp nz, $02e1                                     ; $547c: $c2 $e1 $02

	inc b                                            ; $547f: $04
	jr nz, jr_081_5466                               ; $5480: $20 $e4

	nop                                              ; $5482: $00
	inc l                                            ; $5483: $2c
	inc bc                                           ; $5484: $03
	ret z                                            ; $5485: $c8

	add hl, bc                                       ; $5486: $09
	ld de, $02e1                                     ; $5487: $11 $e1 $02
	inc bc                                           ; $548a: $03
	dec de                                           ; $548b: $1b
	ret nz                                           ; $548c: $c0

	ld bc, $09a0                                     ; $548d: $01 $a0 $09
	inc bc                                           ; $5490: $03
	jp z, $02e1                                      ; $5491: $ca $e1 $02

	inc b                                            ; $5494: $04
	add hl, hl                                       ; $5495: $29
	db $e4                                           ; $5496: $e4
	nop                                              ; $5497: $00
	rla                                              ; $5498: $17
	inc bc                                           ; $5499: $03
	ret nc                                           ; $549a: $d0

	add hl, bc                                       ; $549b: $09
	ld de, $02e1                                     ; $549c: $11 $e1 $02
	inc bc                                           ; $549f: $03
	dec de                                           ; $54a0: $1b
	ret nz                                           ; $54a1: $c0

	ld bc, $09a0                                     ; $54a2: $01 $a0 $09
	inc bc                                           ; $54a5: $03
	jp nc, $02e1                                     ; $54a6: $d2 $e1 $02

	inc b                                            ; $54a9: $04
	add hl, hl                                       ; $54aa: $29
	db $e4                                           ; $54ab: $e4
	nop                                              ; $54ac: $00
	ld [bc], a                                       ; $54ad: $02
	add hl, bc                                       ; $54ae: $09
	ld a, [de]                                       ; $54af: $1a
	pop hl                                           ; $54b0: $e1
	ld [bc], a                                       ; $54b1: $02
	ld [$605c], sp                                   ; $54b2: $08 $5c $60
	db $fc                                           ; $54b5: $fc
	add e                                            ; $54b6: $83
	ld bc, $d0de                                     ; $54b7: $01 $de $d0
	dec b                                            ; $54ba: $05
	ret nz                                           ; $54bb: $c0

	ld d, [hl]                                       ; $54bc: $56
	ret c                                            ; $54bd: $d8

	db $dd                                           ; $54be: $dd
	ret nc                                           ; $54bf: $d0

	dec b                                            ; $54c0: $05
	ret nz                                           ; $54c1: $c0

	ld d, [hl]                                       ; $54c2: $56
	ret c                                            ; $54c3: $d8

	db $dd                                           ; $54c4: $dd
	pop de                                           ; $54c5: $d1
	push hl                                          ; $54c6: $e5
	daa                                              ; $54c7: $27
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	add hl, bc                                       ; $54ca: $09
	rrca                                             ; $54cb: $0f
	ret nz                                           ; $54cc: $c0

	ld bc, $09a0                                     ; $54cd: $01 $a0 $09
	inc bc                                           ; $54d0: $03
	push de                                          ; $54d1: $d5
	ret nz                                           ; $54d2: $c0

	ld bc, $01a0                                     ; $54d3: $01 $a0 $01
	inc bc                                           ; $54d6: $03
	reti                                             ; $54d7: $d9


	db $e4                                           ; $54d8: $e4
	nop                                              ; $54d9: $00
	ld [bc], a                                       ; $54da: $02
	add hl, bc                                       ; $54db: $09
	adc c                                            ; $54dc: $89
	pop bc                                           ; $54dd: $c1
	ld e, c                                          ; $54de: $59
	db $e3                                           ; $54df: $e3
	nop                                              ; $54e0: $00
	sub h                                            ; $54e1: $94
	ret nz                                           ; $54e2: $c0

	ld bc, $09a0                                     ; $54e3: $01 $a0 $09
	inc bc                                           ; $54e6: $03
	pop hl                                           ; $54e7: $e1
	db $fd                                           ; $54e8: $fd
	ld a, h                                          ; $54e9: $7c
	adc e                                            ; $54ea: $8b
	ld bc, $02ea                                     ; $54eb: $01 $ea $02
	or b                                             ; $54ee: $b0
	inc l                                            ; $54ef: $2c
	rlca                                             ; $54f0: $07
	pop hl                                           ; $54f1: $e1
	ld [bc], a                                       ; $54f2: $02
	dec b                                            ; $54f3: $05
	ld c, a                                          ; $54f4: $4f
	db $e4                                           ; $54f5: $e4
	nop                                              ; $54f6: $00
	ld [hl], b                                       ; $54f7: $70
	ld [bc], a                                       ; $54f8: $02
	or b                                             ; $54f9: $b0
	dec l                                            ; $54fa: $2d
	rlca                                             ; $54fb: $07
	pop hl                                           ; $54fc: $e1
	ld [bc], a                                       ; $54fd: $02
	dec b                                            ; $54fe: $05
	ld h, [hl]                                       ; $54ff: $66
	db $e4                                           ; $5500: $e4
	nop                                              ; $5501: $00
	and [hl]                                         ; $5502: $a6
	ld [bc], a                                       ; $5503: $02
	or b                                             ; $5504: $b0
	ld l, $07                                        ; $5505: $2e $07
	pop hl                                           ; $5507: $e1
	ld [bc], a                                       ; $5508: $02
	dec b                                            ; $5509: $05
	ld a, l                                          ; $550a: $7d
	db $e4                                           ; $550b: $e4
	nop                                              ; $550c: $00
	ld e, d                                          ; $550d: $5a
	ld [bc], a                                       ; $550e: $02
	or b                                             ; $550f: $b0
	cpl                                              ; $5510: $2f
	rlca                                             ; $5511: $07
	pop hl                                           ; $5512: $e1
	ld [bc], a                                       ; $5513: $02
	dec b                                            ; $5514: $05
	sub h                                            ; $5515: $94
	db $e4                                           ; $5516: $e4
	nop                                              ; $5517: $00
	sub b                                            ; $5518: $90
	ld [bc], a                                       ; $5519: $02
	or b                                             ; $551a: $b0
	jr nc, jr_081_5524                               ; $551b: $30 $07

	pop hl                                           ; $551d: $e1
	ld [bc], a                                       ; $551e: $02
	dec b                                            ; $551f: $05
	xor e                                            ; $5520: $ab
	db $e4                                           ; $5521: $e4
	nop                                              ; $5522: $00
	ld b, h                                          ; $5523: $44

jr_081_5524:
	ld [bc], a                                       ; $5524: $02
	or b                                             ; $5525: $b0
	ld sp, $e107                                     ; $5526: $31 $07 $e1
	ld [bc], a                                       ; $5529: $02
	dec b                                            ; $552a: $05
	jp nz, $00e4                                     ; $552b: $c2 $e4 $00

	add hl, sp                                       ; $552e: $39
	ld [bc], a                                       ; $552f: $02
	or b                                             ; $5530: $b0
	ld [hl-], a                                      ; $5531: $32
	rlca                                             ; $5532: $07
	pop hl                                           ; $5533: $e1
	ld [bc], a                                       ; $5534: $02
	dec b                                            ; $5535: $05
	reti                                             ; $5536: $d9


	db $e4                                           ; $5537: $e4
	nop                                              ; $5538: $00
	ld l, a                                          ; $5539: $6f
	ld [bc], a                                       ; $553a: $02
	or b                                             ; $553b: $b0
	inc sp                                           ; $553c: $33
	rlca                                             ; $553d: $07
	pop hl                                           ; $553e: $e1
	ld [bc], a                                       ; $553f: $02
	dec b                                            ; $5540: $05
	ldh a, [$e4]                                     ; $5541: $f0 $e4
	nop                                              ; $5543: $00
	ld h, h                                          ; $5544: $64
	ld [bc], a                                       ; $5545: $02
	or b                                             ; $5546: $b0
	inc [hl]                                         ; $5547: $34
	rlca                                             ; $5548: $07
	pop hl                                           ; $5549: $e1
	ld [bc], a                                       ; $554a: $02
	ld b, $07                                        ; $554b: $06 $07
	db $e4                                           ; $554d: $e4
	nop                                              ; $554e: $00
	ld e, c                                          ; $554f: $59
	ld [bc], a                                       ; $5550: $02
	or b                                             ; $5551: $b0
	dec [hl]                                         ; $5552: $35
	rlca                                             ; $5553: $07
	pop hl                                           ; $5554: $e1
	ld [bc], a                                       ; $5555: $02
	ld b, $1e                                        ; $5556: $06 $1e
	db $e4                                           ; $5558: $e4
	nop                                              ; $5559: $00
	ld c, [hl]                                       ; $555a: $4e
	ld [bc], a                                       ; $555b: $02
	or b                                             ; $555c: $b0
	ld [hl], $07                                     ; $555d: $36 $07
	pop hl                                           ; $555f: $e1
	ld [bc], a                                       ; $5560: $02
	ld b, $35                                        ; $5561: $06 $35
	db $e4                                           ; $5563: $e4
	nop                                              ; $5564: $00
	ld b, e                                          ; $5565: $43
	ld [$033f], sp                                   ; $5566: $08 $3f $03
	ld [$1109], a                                    ; $5569: $ea $09 $11
	pop hl                                           ; $556c: $e1
	ld [bc], a                                       ; $556d: $02
	inc bc                                           ; $556e: $03
	inc de                                           ; $556f: $13
	ret nz                                           ; $5570: $c0

	ld bc, $09a0                                     ; $5571: $01 $a0 $09

jr_081_5574:
	inc bc                                           ; $5574: $03
	db $ec                                           ; $5575: $ec
	pop hl                                           ; $5576: $e1
	ld [bc], a                                       ; $5577: $02
	inc b                                            ; $5578: $04
	ld c, $e4                                        ; $5579: $0e $e4
	nop                                              ; $557b: $00
	ld l, l                                          ; $557c: $6d
	inc bc                                           ; $557d: $03
	ldh a, [$09]                                     ; $557e: $f0 $09
	ld de, $02e1                                     ; $5580: $11 $e1 $02
	inc bc                                           ; $5583: $03
	dec de                                           ; $5584: $1b
	ret nz                                           ; $5585: $c0

	ld bc, $09a0                                     ; $5586: $01 $a0 $09
	inc bc                                           ; $5589: $03
	ldh a, [c]                                       ; $558a: $f2
	pop hl                                           ; $558b: $e1
	ld [bc], a                                       ; $558c: $02
	inc b                                            ; $558d: $04
	jr nz, jr_081_5574                               ; $558e: $20 $e4

	nop                                              ; $5590: $00
	ld e, b                                          ; $5591: $58
	inc bc                                           ; $5592: $03
	ld sp, hl                                        ; $5593: $f9
	add hl, bc                                       ; $5594: $09
	ld de, $02e1                                     ; $5595: $11 $e1 $02
	inc bc                                           ; $5598: $03
	rla                                              ; $5599: $17
	ret nz                                           ; $559a: $c0

	ld bc, $09a0                                     ; $559b: $01 $a0 $09
	inc bc                                           ; $559e: $03
	ei                                               ; $559f: $fb
	pop hl                                           ; $55a0: $e1
	ld [bc], a                                       ; $55a1: $02
	inc b                                            ; $55a2: $04
	rla                                              ; $55a3: $17
	db $e4                                           ; $55a4: $e4
	nop                                              ; $55a5: $00
	ld b, e                                          ; $55a6: $43
	ld [$033f], sp                                   ; $55a7: $08 $3f $03
	ld [$1109], a                                    ; $55aa: $ea $09 $11
	pop hl                                           ; $55ad: $e1
	ld [bc], a                                       ; $55ae: $02
	inc bc                                           ; $55af: $03
	rra                                              ; $55b0: $1f
	ret nz                                           ; $55b1: $c0

	ld bc, $09a0                                     ; $55b2: $01 $a0 $09

jr_081_55b5:
	inc b                                            ; $55b5: $04
	ld bc, $02e1                                     ; $55b6: $01 $e1 $02
	inc b                                            ; $55b9: $04
	ld [hl-], a                                      ; $55ba: $32
	db $e4                                           ; $55bb: $e4
	nop                                              ; $55bc: $00
	inc l                                            ; $55bd: $2c
	inc bc                                           ; $55be: $03
	ldh a, [$09]                                     ; $55bf: $f0 $09
	ld de, $02e1                                     ; $55c1: $11 $e1 $02
	inc bc                                           ; $55c4: $03
	rla                                              ; $55c5: $17
	ret nz                                           ; $55c6: $c0

	ld bc, $09a0                                     ; $55c7: $01 $a0 $09
	inc b                                            ; $55ca: $04
	ld c, $e1                                        ; $55cb: $0e $e1
	ld [bc], a                                       ; $55cd: $02
	inc b                                            ; $55ce: $04
	jr nz, jr_081_55b5                               ; $55cf: $20 $e4

	nop                                              ; $55d1: $00
	rla                                              ; $55d2: $17
	inc bc                                           ; $55d3: $03
	ld sp, hl                                        ; $55d4: $f9
	add hl, bc                                       ; $55d5: $09
	ld de, $02e1                                     ; $55d6: $11 $e1 $02
	inc bc                                           ; $55d9: $03
	dec de                                           ; $55da: $1b
	ret nz                                           ; $55db: $c0

	ld bc, $09a0                                     ; $55dc: $01 $a0 $09
	inc b                                            ; $55df: $04
	dec de                                           ; $55e0: $1b
	pop hl                                           ; $55e1: $e1
	ld [bc], a                                       ; $55e2: $02
	inc b                                            ; $55e3: $04
	add hl, hl                                       ; $55e4: $29
	db $e4                                           ; $55e5: $e4
	nop                                              ; $55e6: $00
	ld [bc], a                                       ; $55e7: $02
	add hl, bc                                       ; $55e8: $09
	ld [$02e1], sp                                   ; $55e9: $08 $e1 $02
	ld [$e5b7], sp                                   ; $55ec: $08 $b7 $e5
	daa                                              ; $55ef: $27
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	add hl, bc                                       ; $55f2: $09
	rrca                                             ; $55f3: $0f
	ret nz                                           ; $55f4: $c0

	ld bc, $09a0                                     ; $55f5: $01 $a0 $09
	inc bc                                           ; $55f8: $03
	push de                                          ; $55f9: $d5
	ret nz                                           ; $55fa: $c0

	ld bc, $01a0                                     ; $55fb: $01 $a0 $01
	inc bc                                           ; $55fe: $03
	reti                                             ; $55ff: $d9


	db $e4                                           ; $5600: $e4
	nop                                              ; $5601: $00
	ld [bc], a                                       ; $5602: $02
	add hl, bc                                       ; $5603: $09
	ret nz                                           ; $5604: $c0

	sub $c1                                          ; $5605: $d6 $c1
	ld e, c                                          ; $5607: $59
	db $e3                                           ; $5608: $e3
	nop                                              ; $5609: $00
	sub [hl]                                         ; $560a: $96
	ret nz                                           ; $560b: $c0

	ld bc, $09a0                                     ; $560c: $01 $a0 $09
	inc b                                            ; $560f: $04
	ld hl, $01c0                                     ; $5610: $21 $c0 $01
	and b                                            ; $5613: $a0
	ld bc, $2904                                     ; $5614: $01 $04 $29
	db $fd                                           ; $5617: $fd
	ret nz                                           ; $5618: $c0

	jp nz, $018b                                     ; $5619: $c2 $8b $01

	or $02                                           ; $561c: $f6 $02
	or b                                             ; $561e: $b0
	scf                                              ; $561f: $37
	dec bc                                           ; $5620: $0b
	pop hl                                           ; $5621: $e1
	ld [bc], a                                       ; $5622: $02
	ld b, $6e                                        ; $5623: $06 $6e
	pop hl                                           ; $5625: $e1
	ld [bc], a                                       ; $5626: $02
	ld [bc], a                                       ; $5627: $02
	jr nc, @-$1a                                     ; $5628: $30 $e4

	nop                                              ; $562a: $00
	di                                               ; $562b: $f3

jr_081_562c:
	ld [bc], a                                       ; $562c: $02
	or b                                             ; $562d: $b0
	jr c, jr_081_563b                                ; $562e: $38 $0b

	pop hl                                           ; $5630: $e1
	ld [bc], a                                       ; $5631: $02
	ld b, $bf                                        ; $5632: $06 $bf
	pop hl                                           ; $5634: $e1
	ld [bc], a                                       ; $5635: $02
	ld [bc], a                                       ; $5636: $02
	jr nc, @-$1a                                     ; $5637: $30 $e4

	nop                                              ; $5639: $00
	db $e4                                           ; $563a: $e4

jr_081_563b:
	ld [bc], a                                       ; $563b: $02
	or b                                             ; $563c: $b0
	add hl, sp                                       ; $563d: $39
	dec bc                                           ; $563e: $0b
	pop hl                                           ; $563f: $e1
	ld [bc], a                                       ; $5640: $02
	ld b, $d6                                        ; $5641: $06 $d6
	pop hl                                           ; $5643: $e1
	ld [bc], a                                       ; $5644: $02
	ld [bc], a                                       ; $5645: $02
	jr nc, jr_081_562c                               ; $5646: $30 $e4

	ld bc, $0216                                     ; $5648: $01 $16 $02
	or b                                             ; $564b: $b0
	ld a, [hl-]                                      ; $564c: $3a
	dec bc                                           ; $564d: $0b
	pop hl                                           ; $564e: $e1
	ld [bc], a                                       ; $564f: $02
	ld b, $ed                                        ; $5650: $06 $ed
	pop hl                                           ; $5652: $e1
	ld [bc], a                                       ; $5653: $02
	ld [bc], a                                       ; $5654: $02
	jr nc, jr_081_563b                               ; $5655: $30 $e4

	nop                                              ; $5657: $00
	add l                                            ; $5658: $85

jr_081_5659:
	ld [bc], a                                       ; $5659: $02
	or b                                             ; $565a: $b0
	dec sp                                           ; $565b: $3b
	dec bc                                           ; $565c: $0b
	pop hl                                           ; $565d: $e1
	ld [bc], a                                       ; $565e: $02
	rlca                                             ; $565f: $07
	inc b                                            ; $5660: $04
	pop hl                                           ; $5661: $e1
	ld [bc], a                                       ; $5662: $02
	ld [bc], a                                       ; $5663: $02
	jr nc, @-$1a                                     ; $5664: $30 $e4

	nop                                              ; $5666: $00
	or a                                             ; $5667: $b7

jr_081_5668:
	ld [bc], a                                       ; $5668: $02
	or b                                             ; $5669: $b0
	inc a                                            ; $566a: $3c
	dec bc                                           ; $566b: $0b
	pop hl                                           ; $566c: $e1
	ld [bc], a                                       ; $566d: $02
	rlca                                             ; $566e: $07
	dec de                                           ; $566f: $1b
	pop hl                                           ; $5670: $e1
	ld [bc], a                                       ; $5671: $02
	ld [bc], a                                       ; $5672: $02
	jr nc, jr_081_5659                               ; $5673: $30 $e4

	nop                                              ; $5675: $00
	jp hl                                            ; $5676: $e9


jr_081_5677:
	ld [bc], a                                       ; $5677: $02
	or b                                             ; $5678: $b0
	dec a                                            ; $5679: $3d
	dec bc                                           ; $567a: $0b
	pop hl                                           ; $567b: $e1
	ld [bc], a                                       ; $567c: $02
	ld b, $89                                        ; $567d: $06 $89
	pop hl                                           ; $567f: $e1
	ld [bc], a                                       ; $5680: $02
	ld [bc], a                                       ; $5681: $02
	jr nc, jr_081_5668                               ; $5682: $30 $e4

	nop                                              ; $5684: $00
	sbc c                                            ; $5685: $99

jr_081_5686:
	ld [bc], a                                       ; $5686: $02
	or b                                             ; $5687: $b0
	ld a, $0b                                        ; $5688: $3e $0b
	pop hl                                           ; $568a: $e1
	ld [bc], a                                       ; $568b: $02
	rlca                                             ; $568c: $07
	ld [hl-], a                                      ; $568d: $32
	pop hl                                           ; $568e: $e1
	ld [bc], a                                       ; $568f: $02
	ld [bc], a                                       ; $5690: $02
	jr nc, jr_081_5677                               ; $5691: $30 $e4

	nop                                              ; $5693: $00
	ld c, c                                          ; $5694: $49

jr_081_5695:
	ld [bc], a                                       ; $5695: $02
	or b                                             ; $5696: $b0
	ccf                                              ; $5697: $3f
	dec bc                                           ; $5698: $0b
	pop hl                                           ; $5699: $e1
	ld [bc], a                                       ; $569a: $02
	rlca                                             ; $569b: $07
	ld c, c                                          ; $569c: $49
	pop hl                                           ; $569d: $e1
	ld [bc], a                                       ; $569e: $02
	ld [bc], a                                       ; $569f: $02
	jr nc, jr_081_5686                               ; $56a0: $30 $e4

	nop                                              ; $56a2: $00
	ld a, e                                          ; $56a3: $7b
	ld [bc], a                                       ; $56a4: $02
	or b                                             ; $56a5: $b0
	ld b, b                                          ; $56a6: $40
	dec bc                                           ; $56a7: $0b
	pop hl                                           ; $56a8: $e1
	ld [bc], a                                       ; $56a9: $02
	ld b, $a4                                        ; $56aa: $06 $a4
	pop hl                                           ; $56ac: $e1
	ld [bc], a                                       ; $56ad: $02
	ld [bc], a                                       ; $56ae: $02

jr_081_56af:
	jr nc, jr_081_5695                               ; $56af: $30 $e4

	nop                                              ; $56b1: $00
	ld l, h                                          ; $56b2: $6c
	ld [bc], a                                       ; $56b3: $02
	or b                                             ; $56b4: $b0
	ld b, c                                          ; $56b5: $41
	ld d, $a0                                        ; $56b6: $16 $a0
	add b                                            ; $56b8: $80
	and b                                            ; $56b9: $a0
	add hl, de                                       ; $56ba: $19
	nop                                              ; $56bb: $00
	inc bc                                           ; $56bc: $03
	db $e4                                           ; $56bd: $e4

jr_081_56be:
	nop                                              ; $56be: $00
	pop hl                                           ; $56bf: $e1
	rst $38                                          ; $56c0: $ff
	dec bc                                           ; $56c1: $0b
	pop hl                                           ; $56c2: $e1
	ld [bc], a                                       ; $56c3: $02
	rlca                                             ; $56c4: $07
	ld h, b                                          ; $56c5: $60
	pop hl                                           ; $56c6: $e1
	ld [bc], a                                       ; $56c7: $02
	ld [bc], a                                       ; $56c8: $02
	jr nc, jr_081_56af                               ; $56c9: $30 $e4

	nop                                              ; $56cb: $00
	ld de, $b002                                     ; $56cc: $11 $02 $b0
	ld b, d                                          ; $56cf: $42
	dec bc                                           ; $56d0: $0b
	pop hl                                           ; $56d1: $e1
	ld [bc], a                                       ; $56d2: $02
	rlca                                             ; $56d3: $07
	ld [hl], a                                       ; $56d4: $77
	pop hl                                           ; $56d5: $e1
	ld [bc], a                                       ; $56d6: $02
	ld [bc], a                                       ; $56d7: $02
	jr nc, jr_081_56be                               ; $56d8: $30 $e4

	nop                                              ; $56da: $00
	ld [bc], a                                       ; $56db: $02
	ld [$043f], sp                                   ; $56dc: $08 $3f $04
	jr nc, jr_081_56ea                               ; $56df: $30 $09

	ld de, $02e1                                     ; $56e1: $11 $e1 $02
	inc bc                                           ; $56e4: $03
	inc de                                           ; $56e5: $13
	ret nz                                           ; $56e6: $c0

	ld bc, $09a0                                     ; $56e7: $01 $a0 $09

jr_081_56ea:
	inc b                                            ; $56ea: $04
	ld [hl-], a                                      ; $56eb: $32
	pop hl                                           ; $56ec: $e1
	ld [bc], a                                       ; $56ed: $02
	inc b                                            ; $56ee: $04
	ld c, $e4                                        ; $56ef: $0e $e4
	ld bc, $0430                                     ; $56f1: $01 $30 $04
	dec a                                            ; $56f4: $3d
	add hl, bc                                       ; $56f5: $09
	ld de, $02e1                                     ; $56f6: $11 $e1 $02
	inc bc                                           ; $56f9: $03
	dec de                                           ; $56fa: $1b
	ret nz                                           ; $56fb: $c0

	ld bc, $09a0                                     ; $56fc: $01 $a0 $09

jr_081_56ff:
	inc b                                            ; $56ff: $04
	ccf                                              ; $5700: $3f
	pop hl                                           ; $5701: $e1
	ld [bc], a                                       ; $5702: $02
	inc b                                            ; $5703: $04
	jr nz, jr_081_56ea                               ; $5704: $20 $e4

	ld bc, $041b                                     ; $5706: $01 $1b $04
	ld b, l                                          ; $5709: $45
	add hl, bc                                       ; $570a: $09
	ld de, $02e1                                     ; $570b: $11 $e1 $02
	inc bc                                           ; $570e: $03
	rla                                              ; $570f: $17
	ret nz                                           ; $5710: $c0

	ld bc, $09a0                                     ; $5711: $01 $a0 $09
	inc b                                            ; $5714: $04
	ld b, a                                          ; $5715: $47
	pop hl                                           ; $5716: $e1
	ld [bc], a                                       ; $5717: $02
	inc b                                            ; $5718: $04
	jr nz, jr_081_56ff                               ; $5719: $20 $e4

	ld bc, $0806                                     ; $571b: $01 $06 $08
	ccf                                              ; $571e: $3f
	inc b                                            ; $571f: $04
	jr nc, jr_081_572b                               ; $5720: $30 $09

	ld de, $02e1                                     ; $5722: $11 $e1 $02
	inc bc                                           ; $5725: $03
	rra                                              ; $5726: $1f
	ret nz                                           ; $5727: $c0

	ld bc, $09a0                                     ; $5728: $01 $a0 $09

jr_081_572b:
	inc b                                            ; $572b: $04
	ld c, l                                          ; $572c: $4d
	pop hl                                           ; $572d: $e1
	ld [bc], a                                       ; $572e: $02
	inc b                                            ; $572f: $04
	ld [hl-], a                                      ; $5730: $32
	db $e4                                           ; $5731: $e4
	nop                                              ; $5732: $00
	rst AddAOntoHL                                          ; $5733: $ef
	inc b                                            ; $5734: $04
	dec a                                            ; $5735: $3d
	add hl, bc                                       ; $5736: $09
	ld de, $02e1                                     ; $5737: $11 $e1 $02
	inc bc                                           ; $573a: $03
	rla                                              ; $573b: $17
	ret nz                                           ; $573c: $c0

	ld bc, $09a0                                     ; $573d: $01 $a0 $09
	inc b                                            ; $5740: $04
	ld e, e                                          ; $5741: $5b
	pop hl                                           ; $5742: $e1
	ld [bc], a                                       ; $5743: $02
	inc b                                            ; $5744: $04
	jr nz, jr_081_572b                               ; $5745: $20 $e4

	nop                                              ; $5747: $00
	jp c, Jump_081_4504                              ; $5748: $da $04 $45

	add hl, bc                                       ; $574b: $09
	ld de, $02e1                                     ; $574c: $11 $e1 $02
	inc bc                                           ; $574f: $03
	dec de                                           ; $5750: $1b
	ret nz                                           ; $5751: $c0

	ld bc, $09a0                                     ; $5752: $01 $a0 $09
	inc b                                            ; $5755: $04
	ld h, e                                          ; $5756: $63
	pop hl                                           ; $5757: $e1
	ld [bc], a                                       ; $5758: $02
	inc b                                            ; $5759: $04
	add hl, hl                                       ; $575a: $29
	db $e4                                           ; $575b: $e4
	nop                                              ; $575c: $00
	push bc                                          ; $575d: $c5
	ld [$043f], sp                                   ; $575e: $08 $3f $04
	jr nc, jr_081_576c                               ; $5761: $30 $09

	ld de, $02e1                                     ; $5763: $11 $e1 $02
	inc bc                                           ; $5766: $03
	dec de                                           ; $5767: $1b
	ret nz                                           ; $5768: $c0

	ld bc, $09a0                                     ; $5769: $01 $a0 $09

jr_081_576c:
	inc b                                            ; $576c: $04
	ld l, l                                          ; $576d: $6d
	pop hl                                           ; $576e: $e1
	ld [bc], a                                       ; $576f: $02
	inc b                                            ; $5770: $04
	add hl, hl                                       ; $5771: $29
	db $e4                                           ; $5772: $e4
	nop                                              ; $5773: $00
	xor [hl]                                         ; $5774: $ae
	inc b                                            ; $5775: $04
	dec a                                            ; $5776: $3d
	add hl, bc                                       ; $5777: $09
	ld de, $02e1                                     ; $5778: $11 $e1 $02
	inc bc                                           ; $577b: $03
	rla                                              ; $577c: $17
	ret nz                                           ; $577d: $c0

	ld bc, $09a0                                     ; $577e: $01 $a0 $09

jr_081_5781:
	inc b                                            ; $5781: $04
	ld [hl], c                                       ; $5782: $71
	pop hl                                           ; $5783: $e1
	ld [bc], a                                       ; $5784: $02
	inc b                                            ; $5785: $04
	jr nz, jr_081_576c                               ; $5786: $20 $e4

	nop                                              ; $5788: $00
	sbc c                                            ; $5789: $99
	inc b                                            ; $578a: $04
	ld b, l                                          ; $578b: $45
	add hl, bc                                       ; $578c: $09
	ld de, $02e1                                     ; $578d: $11 $e1 $02
	inc bc                                           ; $5790: $03
	rla                                              ; $5791: $17
	ret nz                                           ; $5792: $c0

	ld bc, $09a0                                     ; $5793: $01 $a0 $09
	inc b                                            ; $5796: $04
	ld a, d                                          ; $5797: $7a
	pop hl                                           ; $5798: $e1
	ld [bc], a                                       ; $5799: $02
	inc b                                            ; $579a: $04
	jr nz, jr_081_5781                               ; $579b: $20 $e4

	nop                                              ; $579d: $00
	add h                                            ; $579e: $84
	add hl, bc                                       ; $579f: $09
	add b                                            ; $57a0: $80
	pop bc                                           ; $57a1: $c1
	ld e, e                                          ; $57a2: $5b
	ret nz                                           ; $57a3: $c0

	inc c                                            ; $57a4: $0c
	ldh [rAUD3HIGH], a                               ; $57a5: $e0 $1e
	pop bc                                           ; $57a7: $c1
	dec sp                                           ; $57a8: $3b
	ret nz                                           ; $57a9: $c0

	set 0, b                                         ; $57aa: $cb $c0
	add hl, bc                                       ; $57ac: $09
	db $e3                                           ; $57ad: $e3
	nop                                              ; $57ae: $00
	rra                                              ; $57af: $1f
	ret nz                                           ; $57b0: $c0

	rrca                                             ; $57b1: $0f
	db $e3                                           ; $57b2: $e3
	ld bc, $c001                                     ; $57b3: $01 $01 $c0
	ld bc, $09a0                                     ; $57b6: $01 $a0 $09
	inc b                                            ; $57b9: $04
	add b                                            ; $57ba: $80
	ret nz                                           ; $57bb: $c0

	ld bc, $01a0                                     ; $57bc: $01 $a0 $01
	inc b                                            ; $57bf: $04
	add d                                            ; $57c0: $82
	ret nz                                           ; $57c1: $c0

	ld bc, $09a0                                     ; $57c2: $01 $a0 $09
	inc b                                            ; $57c5: $04
	adc d                                            ; $57c6: $8a
	ret nz                                           ; $57c7: $c0

	ld bc, $01a0                                     ; $57c8: $01 $a0 $01
	inc b                                            ; $57cb: $04
	sub e                                            ; $57cc: $93
	ret nz                                           ; $57cd: $c0

	ld bc, $09a0                                     ; $57ce: $01 $a0 $09
	inc b                                            ; $57d1: $04
	sbc c                                            ; $57d2: $99
	ret nz                                           ; $57d3: $c0

	ld bc, $01a0                                     ; $57d4: $01 $a0 $01
	inc b                                            ; $57d7: $04
	sbc h                                            ; $57d8: $9c
	pop hl                                           ; $57d9: $e1
	ld [bc], a                                       ; $57da: $02
	rlca                                             ; $57db: $07

jr_081_57dc:
	cp a                                             ; $57dc: $bf
	ret nz                                           ; $57dd: $c0

	ld bc, $09a0                                     ; $57de: $01 $a0 $09
	inc b                                            ; $57e1: $04
	and l                                            ; $57e2: $a5
	ret nz                                           ; $57e3: $c0

	ld bc, $01a0                                     ; $57e4: $01 $a0 $01
	inc b                                            ; $57e7: $04
	xor h                                            ; $57e8: $ac
	ret nz                                           ; $57e9: $c0

	ld bc, $09a0                                     ; $57ea: $01 $a0 $09
	inc b                                            ; $57ed: $04
	or h                                             ; $57ee: $b4
	ret nz                                           ; $57ef: $c0

	ld bc, $01a0                                     ; $57f0: $01 $a0 $01
	inc b                                            ; $57f3: $04
	cp l                                             ; $57f4: $bd
	ret nc                                           ; $57f5: $d0

	add d                                            ; $57f6: $82
	ld bc, $d1d5                                     ; $57f7: $01 $d5 $d1
	pop hl                                           ; $57fa: $e1
	ld [bc], a                                       ; $57fb: $02
	inc b                                            ; $57fc: $04
	rst JumpTable                                          ; $57fd: $c7
	ret nz                                           ; $57fe: $c0

	ld d, c                                          ; $57ff: $51
	pop de                                           ; $5800: $d1
	ret nz                                           ; $5801: $c0

	ld d, b                                          ; $5802: $50
	pop de                                           ; $5803: $d1
	ret nz                                           ; $5804: $c0

	ld d, l                                          ; $5805: $55
	ldh [rAUD1HIGH], a                               ; $5806: $e0 $14
	ret nz                                           ; $5808: $c0

	set 0, c                                         ; $5809: $cb $c1
	dec sp                                           ; $580b: $3b
	ret nz                                           ; $580c: $c0

	add hl, bc                                       ; $580d: $09
	db $e3                                           ; $580e: $e3
	nop                                              ; $580f: $00
	ld hl, $11c0                                     ; $5810: $21 $c0 $11
	db $e3                                           ; $5813: $e3
	nop                                              ; $5814: $00
	sub l                                            ; $5815: $95
	pop hl                                           ; $5816: $e1
	ld [bc], a                                       ; $5817: $02
	ld [bc], a                                       ; $5818: $02
	jr nc, jr_081_57dc                               ; $5819: $30 $c1

	ld l, e                                          ; $581b: $6b
	db $d3                                           ; $581c: $d3
	ret c                                            ; $581d: $d8

	db $e4                                           ; $581e: $e4
	nop                                              ; $581f: $00
	ld [bc], a                                       ; $5820: $02
	add hl, bc                                       ; $5821: $09
	ld [$02e1], sp                                   ; $5822: $08 $e1 $02
	add hl, bc                                       ; $5825: $09
	ld [hl], $e5                                     ; $5826: $36 $e5
	daa                                              ; $5828: $27
	nop                                              ; $5829: $00
	nop                                              ; $582a: $00
	add hl, bc                                       ; $582b: $09
	inc d                                            ; $582c: $14
	ret nc                                           ; $582d: $d0

	add e                                            ; $582e: $83
	ld bc, $d0de                                     ; $582f: $01 $de $d0
	ret nz                                           ; $5832: $c0

	ld bc, $09a0                                     ; $5833: $01 $a0 $09
	nop                                              ; $5836: $00
	ld bc, $01c0                                     ; $5837: $01 $c0 $01
	and b                                            ; $583a: $a0
	ld bc, $0400                                     ; $583b: $01 $00 $04
	db $e4                                           ; $583e: $e4
	nop                                              ; $583f: $00
	ld [bc], a                                       ; $5840: $02
	add hl, bc                                       ; $5841: $09
	ld b, d                                          ; $5842: $42
	ret nz                                           ; $5843: $c0

	set 0, b                                         ; $5844: $cb $c0
	ld de, $00e3                                     ; $5846: $11 $e3 $00
	or d                                             ; $5849: $b2
	ldh [rSC], a                                     ; $584a: $e0 $02
	ld bc, $cac0                                     ; $584c: $01 $c0 $ca
	add d                                            ; $584f: $82
	ret nz                                           ; $5850: $c0

	add b                                            ; $5851: $80
	ld bc, $0ed1                                     ; $5852: $01 $d1 $0e
	and b                                            ; $5855: $a0
	add b                                            ; $5856: $80
	and b                                            ; $5857: $a0
	ld a, [de]                                       ; $5858: $1a
	nop                                              ; $5859: $00
	inc bc                                           ; $585a: $03
	db $e4                                           ; $585b: $e4
	nop                                              ; $585c: $00
	add hl, hl                                       ; $585d: $29
	rst $38                                          ; $585e: $ff
	inc bc                                           ; $585f: $03
	db $e4                                           ; $5860: $e4
	nop                                              ; $5861: $00
	ld l, h                                          ; $5862: $6c
	ld bc, $0ed2                                     ; $5863: $01 $d2 $0e
	and b                                            ; $5866: $a0
	add b                                            ; $5867: $80
	and b                                            ; $5868: $a0
	dec de                                           ; $5869: $1b
	nop                                              ; $586a: $00
	inc bc                                           ; $586b: $03
	db $e4                                           ; $586c: $e4
	nop                                              ; $586d: $00
	jr @+$01                                         ; $586e: $18 $ff

	inc bc                                           ; $5870: $03
	db $e4                                           ; $5871: $e4
	nop                                              ; $5872: $00
	ld e, e                                          ; $5873: $5b
	ld bc, $0ed3                                     ; $5874: $01 $d3 $0e
	and b                                            ; $5877: $a0
	add b                                            ; $5878: $80
	and b                                            ; $5879: $a0
	inc e                                            ; $587a: $1c
	nop                                              ; $587b: $00
	inc bc                                           ; $587c: $03
	db $e4                                           ; $587d: $e4
	nop                                              ; $587e: $00
	rlca                                             ; $587f: $07
	rst $38                                          ; $5880: $ff
	inc bc                                           ; $5881: $03
	db $e4                                           ; $5882: $e4
	nop                                              ; $5883: $00
	ld c, d                                          ; $5884: $4a
	jr z, jr_081_588d                                ; $5885: $28 $06

	ret nz                                           ; $5887: $c0

	ld bc, $09a0                                     ; $5888: $01 $a0 $09
	inc b                                            ; $588b: $04
	ret nz                                           ; $588c: $c0

jr_081_588d:
	ccf                                              ; $588d: $3f
	inc b                                            ; $588e: $04
	add $09                                          ; $588f: $c6 $09
	ld de, $02e1                                     ; $5891: $11 $e1 $02
	inc bc                                           ; $5894: $03
	rrca                                             ; $5895: $0f
	ret nz                                           ; $5896: $c0

	ld bc, $09a0                                     ; $5897: $01 $a0 $09
	inc b                                            ; $589a: $04
	call $02e1                                       ; $589b: $cd $e1 $02
	inc b                                            ; $589e: $04
	ld c, $e4                                        ; $589f: $0e $e4
	nop                                              ; $58a1: $00
	add a                                            ; $58a2: $87
	inc b                                            ; $58a3: $04
	sub $09                                          ; $58a4: $d6 $09
	ld de, $02e1                                     ; $58a6: $11 $e1 $02
	inc bc                                           ; $58a9: $03
	dec de                                           ; $58aa: $1b
	ret nz                                           ; $58ab: $c0

	ld bc, $09a0                                     ; $58ac: $01 $a0 $09
	inc b                                            ; $58af: $04
	ret c                                            ; $58b0: $d8

	pop hl                                           ; $58b1: $e1
	ld [bc], a                                       ; $58b2: $02
	inc b                                            ; $58b3: $04
	add hl, hl                                       ; $58b4: $29
	db $e4                                           ; $58b5: $e4
	nop                                              ; $58b6: $00
	ld [hl], d                                       ; $58b7: $72
	inc b                                            ; $58b8: $04
	pop hl                                           ; $58b9: $e1
	add hl, bc                                       ; $58ba: $09
	ld de, $02e1                                     ; $58bb: $11 $e1 $02
	inc bc                                           ; $58be: $03
	dec de                                           ; $58bf: $1b
	ret nz                                           ; $58c0: $c0

	ld bc, $09a0                                     ; $58c1: $01 $a0 $09
	inc b                                            ; $58c4: $04
	db $e3                                           ; $58c5: $e3
	pop hl                                           ; $58c6: $e1
	ld [bc], a                                       ; $58c7: $02
	inc b                                            ; $58c8: $04
	add hl, hl                                       ; $58c9: $29
	db $e4                                           ; $58ca: $e4
	nop                                              ; $58cb: $00
	ld e, l                                          ; $58cc: $5d
	jr z, jr_081_58d5                                ; $58cd: $28 $06

	ret nz                                           ; $58cf: $c0

	ld bc, $09a0                                     ; $58d0: $01 $a0 $09
	inc b                                            ; $58d3: $04
	rst SubAFromBC                                          ; $58d4: $e7

jr_081_58d5:
	ld d, d                                          ; $58d5: $52
	inc b                                            ; $58d6: $04
	xor $09                                          ; $58d7: $ee $09
	inc h                                            ; $58d9: $24
	pop hl                                           ; $58da: $e1
	ld [bc], a                                       ; $58db: $02
	inc bc                                           ; $58dc: $03
	rrca                                             ; $58dd: $0f
	ret nz                                           ; $58de: $c0

	ld bc, $09a0                                     ; $58df: $01 $a0 $09
	inc b                                            ; $58e2: $04
	ldh a, [$60]                                     ; $58e3: $f0 $60
	ld hl, sp-$40                                    ; $58e5: $f8 $c0
	add e                                            ; $58e7: $83
	call nc, $28e0                                   ; $58e8: $d4 $e0 $28
	ld a, [bc]                                       ; $58eb: $0a
	ret nz                                           ; $58ec: $c0

	ld bc, $01a0                                     ; $58ed: $01 $a0 $01
	inc b                                            ; $58f0: $04
	or $e1                                           ; $58f1: $f6 $e1
	ld [bc], a                                       ; $58f3: $02
	inc b                                            ; $58f4: $04
	add hl, hl                                       ; $58f5: $29

jr_081_58f6:
	inc b                                            ; $58f6: $04
	pop hl                                           ; $58f7: $e1
	ld [bc], a                                       ; $58f8: $02
	inc b                                            ; $58f9: $04
	ld c, $e4                                        ; $58fa: $0e $e4
	nop                                              ; $58fc: $00
	inc l                                            ; $58fd: $2c
	inc b                                            ; $58fe: $04
	rst $38                                          ; $58ff: $ff
	add hl, bc                                       ; $5900: $09
	ld de, $02e1                                     ; $5901: $11 $e1 $02
	inc bc                                           ; $5904: $03
	rra                                              ; $5905: $1f
	ret nz                                           ; $5906: $c0

	ld bc, $09a0                                     ; $5907: $01 $a0 $09
	dec b                                            ; $590a: $05
	inc bc                                           ; $590b: $03
	pop hl                                           ; $590c: $e1
	ld [bc], a                                       ; $590d: $02
	inc b                                            ; $590e: $04
	ld [hl-], a                                      ; $590f: $32
	db $e4                                           ; $5910: $e4
	nop                                              ; $5911: $00
	rla                                              ; $5912: $17
	dec b                                            ; $5913: $05
	ld a, [bc]                                       ; $5914: $0a
	add hl, bc                                       ; $5915: $09
	ld de, $02e1                                     ; $5916: $11 $e1 $02
	inc bc                                           ; $5919: $03
	dec de                                           ; $591a: $1b
	ret nz                                           ; $591b: $c0

	ld bc, $09a0                                     ; $591c: $01 $a0 $09
	dec b                                            ; $591f: $05
	db $10                                           ; $5920: $10
	pop hl                                           ; $5921: $e1
	ld [bc], a                                       ; $5922: $02
	inc b                                            ; $5923: $04
	add hl, hl                                       ; $5924: $29
	db $e4                                           ; $5925: $e4
	nop                                              ; $5926: $00
	ld [bc], a                                       ; $5927: $02
	add hl, bc                                       ; $5928: $09
	dec d                                            ; $5929: $15
	ret nz                                           ; $592a: $c0

	set 0, b                                         ; $592b: $cb $c0
	ld de, $00e3                                     ; $592d: $11 $e3 $00
	or c                                             ; $5930: $b1
	pop hl                                           ; $5931: $e1
	ld [bc], a                                       ; $5932: $02
	ld [bc], a                                       ; $5933: $02
	jr nc, jr_081_58f6                               ; $5934: $30 $c0

	ld d, [hl]                                       ; $5936: $56
	ret c                                            ; $5937: $d8

	ldh [rAUD1SWEEP], a                              ; $5938: $e0 $10
	ret nc                                           ; $593a: $d0

	push hl                                          ; $593b: $e5
	daa                                              ; $593c: $27
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	add hl, bc                                       ; $593f: $09
	ld c, $d0                                        ; $5940: $0e $d0
	add e                                            ; $5942: $83
	ld bc, $d0de                                     ; $5943: $01 $de $d0
	ret nz                                           ; $5946: $c0

	ld bc, $09a0                                     ; $5947: $01 $a0 $09
	dec b                                            ; $594a: $05
	dec d                                            ; $594b: $15
	db $e4                                           ; $594c: $e4
	nop                                              ; $594d: $00
	ld [bc], a                                       ; $594e: $02
	add hl, bc                                       ; $594f: $09
	ccf                                              ; $5950: $3f
	pop bc                                           ; $5951: $c1
	ld e, e                                          ; $5952: $5b
	ret nz                                           ; $5953: $c0

	set 0, b                                         ; $5954: $cb $c0
	ld de, $00e3                                     ; $5956: $11 $e3 $00
	xor a                                            ; $5959: $af
	add d                                            ; $595a: $82
	ret nz                                           ; $595b: $c0

	add b                                            ; $595c: $80
	ld bc, $0ed1                                     ; $595d: $01 $d1 $0e
	and b                                            ; $5960: $a0
	add b                                            ; $5961: $80
	and b                                            ; $5962: $a0
	dec e                                            ; $5963: $1d
	nop                                              ; $5964: $00
	inc bc                                           ; $5965: $03
	db $e4                                           ; $5966: $e4
	nop                                              ; $5967: $00
	add hl, hl                                       ; $5968: $29
	rst $38                                          ; $5969: $ff
	inc bc                                           ; $596a: $03
	db $e4                                           ; $596b: $e4
	nop                                              ; $596c: $00
	ld a, b                                          ; $596d: $78
	ld bc, $0ed2                                     ; $596e: $01 $d2 $0e
	and b                                            ; $5971: $a0
	add b                                            ; $5972: $80
	and b                                            ; $5973: $a0
	ld e, $00                                        ; $5974: $1e $00
	inc bc                                           ; $5976: $03
	db $e4                                           ; $5977: $e4
	nop                                              ; $5978: $00
	jr @+$01                                         ; $5979: $18 $ff

	inc bc                                           ; $597b: $03
	db $e4                                           ; $597c: $e4
	nop                                              ; $597d: $00
	ld h, a                                          ; $597e: $67
	ld bc, $0ed3                                     ; $597f: $01 $d3 $0e
	and b                                            ; $5982: $a0
	add b                                            ; $5983: $80
	and b                                            ; $5984: $a0
	rra                                              ; $5985: $1f
	nop                                              ; $5986: $00
	inc bc                                           ; $5987: $03
	db $e4                                           ; $5988: $e4
	nop                                              ; $5989: $00
	rlca                                             ; $598a: $07
	rst $38                                          ; $598b: $ff
	inc bc                                           ; $598c: $03
	db $e4                                           ; $598d: $e4
	nop                                              ; $598e: $00
	ld d, [hl]                                       ; $598f: $56
	jr z, jr_081_599f                                ; $5990: $28 $0d

	ldh [rP1], a                                     ; $5992: $e0 $00
	cp c                                             ; $5994: $b9
	pop bc                                           ; $5995: $c1
	ld e, h                                          ; $5996: $5c
	ret nz                                           ; $5997: $c0

	jp z, $01c0                                      ; $5998: $ca $c0 $01

	and b                                            ; $599b: $a0
	add hl, bc                                       ; $599c: $09
	dec b                                            ; $599d: $05
	ld a, [de]                                       ; $599e: $1a

jr_081_599f:
	ld b, h                                          ; $599f: $44
	inc b                                            ; $59a0: $04
	add $09                                          ; $59a1: $c6 $09
	ld d, $e1                                        ; $59a3: $16 $e1
	ld [bc], a                                       ; $59a5: $02
	inc bc                                           ; $59a6: $03
	rrca                                             ; $59a7: $0f
	pop bc                                           ; $59a8: $c1
	or d                                             ; $59a9: $b2
	db $e3                                           ; $59aa: $e3
	nop                                              ; $59ab: $00
	ld l, h                                          ; $59ac: $6c
	ret nz                                           ; $59ad: $c0

	ld bc, $09a0                                     ; $59ae: $01 $a0 $09
	inc b                                            ; $59b1: $04
	call $02e1                                       ; $59b2: $cd $e1 $02
	inc b                                            ; $59b5: $04
	ld c, $e4                                        ; $59b6: $0e $e4
	nop                                              ; $59b8: $00
	ld a, l                                          ; $59b9: $7d
	inc b                                            ; $59ba: $04
	sub $09                                          ; $59bb: $d6 $09
	ld de, $02e1                                     ; $59bd: $11 $e1 $02
	inc bc                                           ; $59c0: $03
	rra                                              ; $59c1: $1f
	ret nz                                           ; $59c2: $c0

	ld bc, $09a0                                     ; $59c3: $01 $a0 $09
	inc b                                            ; $59c6: $04
	ret c                                            ; $59c7: $d8

	pop hl                                           ; $59c8: $e1
	ld [bc], a                                       ; $59c9: $02
	inc b                                            ; $59ca: $04
	ld [hl-], a                                      ; $59cb: $32
	db $e4                                           ; $59cc: $e4
	nop                                              ; $59cd: $00
	ld l, b                                          ; $59ce: $68
	inc b                                            ; $59cf: $04
	pop hl                                           ; $59d0: $e1
	add hl, bc                                       ; $59d1: $09
	ld de, $02e1                                     ; $59d2: $11 $e1 $02
	inc bc                                           ; $59d5: $03
	dec de                                           ; $59d6: $1b
	ret nz                                           ; $59d7: $c0

	ld bc, $09a0                                     ; $59d8: $01 $a0 $09
	inc b                                            ; $59db: $04
	db $e3                                           ; $59dc: $e3
	pop hl                                           ; $59dd: $e1
	ld [bc], a                                       ; $59de: $02
	inc b                                            ; $59df: $04
	add hl, hl                                       ; $59e0: $29
	db $e4                                           ; $59e1: $e4
	nop                                              ; $59e2: $00
	ld d, e                                          ; $59e3: $53
	jr z, jr_081_59ee                                ; $59e4: $28 $08

	ret nz                                           ; $59e6: $c0

	jp z, $01c0                                      ; $59e7: $ca $c0 $01

	and b                                            ; $59ea: $a0
	ld bc, $2205                                     ; $59eb: $01 $05 $22

jr_081_59ee:
	ld b, [hl]                                       ; $59ee: $46
	dec b                                            ; $59ef: $05
	dec l                                            ; $59f0: $2d
	add hl, bc                                       ; $59f1: $09
	ld [de], a                                       ; $59f2: $12
	ldh [rP1], a                                     ; $59f3: $e0 $00
	ld e, b                                          ; $59f5: $58
	pop bc                                           ; $59f6: $c1
	ld e, h                                          ; $59f7: $5c
	ret nz                                           ; $59f8: $c0

	ld bc, $09a0                                     ; $59f9: $01 $a0 $09
	dec b                                            ; $59fc: $05
	cpl                                              ; $59fd: $2f
	pop hl                                           ; $59fe: $e1
	ld [bc], a                                       ; $59ff: $02
	inc b                                            ; $5a00: $04
	rla                                              ; $5a01: $17
	db $e4                                           ; $5a02: $e4

jr_081_5a03:
	nop                                              ; $5a03: $00
	ld [hl-], a                                      ; $5a04: $32
	dec b                                            ; $5a05: $05
	dec sp                                           ; $5a06: $3b
	add hl, bc                                       ; $5a07: $09
	dec d                                            ; $5a08: $15
	ldh [rP1], a                                     ; $5a09: $e0 $00
	ld b, d                                          ; $5a0b: $42
	ret nz                                           ; $5a0c: $c0

	xor e                                            ; $5a0d: $ab
	call nc, $a5c0                                   ; $5a0e: $d4 $c0 $a5
	ret nz                                           ; $5a11: $c0

	ld bc, $09a0                                     ; $5a12: $01 $a0 $09
	dec b                                            ; $5a15: $05
	dec a                                            ; $5a16: $3d

jr_081_5a17:
	pop hl                                           ; $5a17: $e1
	ld [bc], a                                       ; $5a18: $02
	inc b                                            ; $5a19: $04
	ld [hl-], a                                      ; $5a1a: $32
	db $e4                                           ; $5a1b: $e4
	nop                                              ; $5a1c: $00
	add hl, de                                       ; $5a1d: $19
	dec b                                            ; $5a1e: $05
	ld c, c                                          ; $5a1f: $49
	add hl, bc                                       ; $5a20: $09
	inc de                                           ; $5a21: $13
	ret nz                                           ; $5a22: $c0

	ld bc, $09a0                                     ; $5a23: $01 $a0 $09
	dec b                                            ; $5a26: $05
	ld c, e                                          ; $5a27: $4b
	ret nz                                           ; $5a28: $c0

	ld bc, $01a0                                     ; $5a29: $01 $a0 $01
	dec b                                            ; $5a2c: $05
	ld c, h                                          ; $5a2d: $4c
	pop hl                                           ; $5a2e: $e1
	ld [bc], a                                       ; $5a2f: $02
	inc b                                            ; $5a30: $04
	jr nz, jr_081_5a17                               ; $5a31: $20 $e4

	nop                                              ; $5a33: $00
	ld [bc], a                                       ; $5a34: $02
	add hl, bc                                       ; $5a35: $09
	dec d                                            ; $5a36: $15
	ret nz                                           ; $5a37: $c0

	set 0, b                                         ; $5a38: $cb $c0
	ld de, $00e3                                     ; $5a3a: $11 $e3 $00
	xor [hl]                                         ; $5a3d: $ae
	pop hl                                           ; $5a3e: $e1
	ld [bc], a                                       ; $5a3f: $02
	ld [bc], a                                       ; $5a40: $02
	jr nc, jr_081_5a03                               ; $5a41: $30 $c0

	ld d, [hl]                                       ; $5a43: $56
	ret c                                            ; $5a44: $d8

	ldh [rAUD1LEN], a                                ; $5a45: $e0 $11
	ret nc                                           ; $5a47: $d0

	push hl                                          ; $5a48: $e5
	daa                                              ; $5a49: $27
	nop                                              ; $5a4a: $00
	nop                                              ; $5a4b: $00
	dec e                                            ; $5a4c: $1d
	add d                                            ; $5a4d: $82
	ret nz                                           ; $5a4e: $c0

	add b                                            ; $5a4f: $80
	ld bc, $05d3                                     ; $5a50: $01 $d3 $05
	ret nz                                           ; $5a53: $c0

	and a                                            ; $5a54: $a7
	ret c                                            ; $5a55: $d8

	db $d3                                           ; $5a56: $d3
	reti                                             ; $5a57: $d9


	ld bc, $05d2                                     ; $5a58: $01 $d2 $05
	ret nz                                           ; $5a5b: $c0

	and a                                            ; $5a5c: $a7
	ret c                                            ; $5a5d: $d8

jr_081_5a5e:
	db $d3                                           ; $5a5e: $d3
	ret c                                            ; $5a5f: $d8

	ld bc, $05d1                                     ; $5a60: $01 $d1 $05
	ret nz                                           ; $5a63: $c0

	and a                                            ; $5a64: $a7
	ret c                                            ; $5a65: $d8

	db $d3                                           ; $5a66: $d3
	rst SubAFromHL                                          ; $5a67: $d7
	ret nz                                           ; $5a68: $c0

	xor h                                            ; $5a69: $ac
	add hl, bc                                       ; $5a6a: $09
	dec de                                           ; $5a6b: $1b
	ret nz                                           ; $5a6c: $c0

	ld bc, $09a0                                     ; $5a6d: $01 $a0 $09
	dec b                                            ; $5a70: $05
	ld e, c                                          ; $5a71: $59
	add d                                            ; $5a72: $82
	ret nz                                           ; $5a73: $c0

	add b                                            ; $5a74: $80
	ld bc, $03d3                                     ; $5a75: $01 $d3 $03
	db $e4                                           ; $5a78: $e4
	nop                                              ; $5a79: $00
	add [hl]                                         ; $5a7a: $86
	ld bc, $03d2                                     ; $5a7b: $01 $d2 $03
	db $e4                                           ; $5a7e: $e4
	nop                                              ; $5a7f: $00
	inc [hl]                                         ; $5a80: $34
	ld bc, $03d1                                     ; $5a81: $01 $d1 $03
	db $e4                                           ; $5a84: $e4
	nop                                              ; $5a85: $00
	ld [bc], a                                       ; $5a86: $02
	add hl, bc                                       ; $5a87: $09
	ld a, [hl+]                                      ; $5a88: $2a
	ret nz                                           ; $5a89: $c0

	ld bc, $01a0                                     ; $5a8a: $01 $a0 $01
	dec b                                            ; $5a8d: $05
	ld e, a                                          ; $5a8e: $5f
	ret nz                                           ; $5a8f: $c0

	ld bc, $09a0                                     ; $5a90: $01 $a0 $09
	dec b                                            ; $5a93: $05
	ld h, h                                          ; $5a94: $64
	pop hl                                           ; $5a95: $e1
	ld [bc], a                                       ; $5a96: $02
	ld [$e169], sp                                   ; $5a97: $08 $69 $e1
	ld [bc], a                                       ; $5a9a: $02
	ld [bc], a                                       ; $5a9b: $02
	jr z, jr_081_5a5e                                ; $5a9c: $28 $c0

	ld bc, $01a0                                     ; $5a9e: $01 $a0 $01
	dec b                                            ; $5aa1: $05
	ld h, [hl]                                       ; $5aa2: $66
	pop hl                                           ; $5aa3: $e1
	ld [bc], a                                       ; $5aa4: $02
	inc bc                                           ; $5aa5: $03
	inc de                                           ; $5aa6: $13
	ret nz                                           ; $5aa7: $c0

	ld bc, $09a0                                     ; $5aa8: $01 $a0 $09
	dec b                                            ; $5aab: $05
	ld l, h                                          ; $5aac: $6c
	ret nz                                           ; $5aad: $c0

	ld d, c                                          ; $5aae: $51
	pop de                                           ; $5aaf: $d1
	db $e4                                           ; $5ab0: $e4
	nop                                              ; $5ab1: $00
	or d                                             ; $5ab2: $b2
	add hl, bc                                       ; $5ab3: $09
	ld c, d                                          ; $5ab4: $4a
	ret nz                                           ; $5ab5: $c0

	ld bc, $01a0                                     ; $5ab6: $01 $a0 $01
	dec b                                            ; $5ab9: $05
	ld a, b                                          ; $5aba: $78
	ret nz                                           ; $5abb: $c0

	ld bc, $09a0                                     ; $5abc: $01 $a0 $09
	dec b                                            ; $5abf: $05
	ld a, a                                          ; $5ac0: $7f
	ret nz                                           ; $5ac1: $c0

	ld bc, $01a0                                     ; $5ac2: $01 $a0 $01
	dec b                                            ; $5ac5: $05
	adc b                                            ; $5ac6: $88
	pop hl                                           ; $5ac7: $e1
	ld [bc], a                                       ; $5ac8: $02
	ld [$e18d], sp                                   ; $5ac9: $08 $8d $e1
	ld [bc], a                                       ; $5acc: $02
	ld [bc], a                                       ; $5acd: $02
	jr nc, jr_081_5b30                               ; $5ace: $30 $60

	add a                                            ; $5ad0: $87
	ld bc, $13e2                                     ; $5ad1: $01 $e2 $13
	ret nz                                           ; $5ad4: $c0

	ld bc, $01a0                                     ; $5ad5: $01 $a0 $01
	dec b                                            ; $5ad8: $05
	adc a                                            ; $5ad9: $8f
	pop hl                                           ; $5ada: $e1

jr_081_5adb:
	ld [bc], a                                       ; $5adb: $02
	inc bc                                           ; $5adc: $03
	rrca                                             ; $5add: $0f
	ret nz                                           ; $5ade: $c0

	ld bc, $09a0                                     ; $5adf: $01 $a0 $09
	dec b                                            ; $5ae2: $05
	sub e                                            ; $5ae3: $93
	ret nz                                           ; $5ae4: $c0

	ld d, c                                          ; $5ae5: $51
	pop de                                           ; $5ae6: $d1
	db $10                                           ; $5ae7: $10
	ret nz                                           ; $5ae8: $c0

	ld bc, $01a0                                     ; $5ae9: $01 $a0 $01
	dec b                                            ; $5aec: $05
	sbc e                                            ; $5aed: $9b
	pop hl                                           ; $5aee: $e1
	ld [bc], a                                       ; $5aef: $02
	inc bc                                           ; $5af0: $03
	inc de                                           ; $5af1: $13
	ret nz                                           ; $5af2: $c0

	ld bc, $09a0                                     ; $5af3: $01 $a0 $09
	dec b                                            ; $5af6: $05
	and l                                            ; $5af7: $a5
	ld b, b                                          ; $5af8: $40
	add a                                            ; $5af9: $87
	ld bc, $e4e2                                     ; $5afa: $01 $e2 $e4
	nop                                              ; $5afd: $00
	ld h, [hl]                                       ; $5afe: $66
	add hl, bc                                       ; $5aff: $09
	rrca                                             ; $5b00: $0f
	ret nz                                           ; $5b01: $c0

	ld bc, $01a0                                     ; $5b02: $01 $a0 $01
	dec b                                            ; $5b05: $05
	or c                                             ; $5b06: $b1
	ret nz                                           ; $5b07: $c0

	ld bc, $09a0                                     ; $5b08: $01 $a0 $09
	dec b                                            ; $5b0b: $05
	cp b                                             ; $5b0c: $b8
	db $e4                                           ; $5b0d: $e4
	nop                                              ; $5b0e: $00
	ld [bc], a                                       ; $5b0f: $02
	jr z, jr_081_5b23                                ; $5b10: $28 $11

	pop hl                                           ; $5b12: $e1
	ld [bc], a                                       ; $5b13: $02
	ld [$e1a4], sp                                   ; $5b14: $08 $a4 $e1
	ld [bc], a                                       ; $5b17: $02
	ld [bc], a                                       ; $5b18: $02
	jr nc, jr_081_5adb                               ; $5b19: $30 $c0

	ld bc, $09a0                                     ; $5b1b: $01 $a0 $09
	dec b                                            ; $5b1e: $05
	cp h                                             ; $5b1f: $bc
	ret nz                                           ; $5b20: $c0

	ld d, c                                          ; $5b21: $51
	pop de                                           ; $5b22: $d1

jr_081_5b23:
	ccf                                              ; $5b23: $3f
	dec b                                            ; $5b24: $05
	cp a                                             ; $5b25: $bf
	add hl, bc                                       ; $5b26: $09
	ld de, $02e1                                     ; $5b27: $11 $e1 $02
	inc bc                                           ; $5b2a: $03
	rrca                                             ; $5b2b: $0f
	ret nz                                           ; $5b2c: $c0

	ld bc, $09a0                                     ; $5b2d: $01 $a0 $09

jr_081_5b30:
	dec b                                            ; $5b30: $05
	pop bc                                           ; $5b31: $c1
	pop hl                                           ; $5b32: $e1
	ld [bc], a                                       ; $5b33: $02
	inc b                                            ; $5b34: $04
	ld c, $e4                                        ; $5b35: $0e $e4
	nop                                              ; $5b37: $00
	inc l                                            ; $5b38: $2c
	dec b                                            ; $5b39: $05
	rst GetHLinHL                                          ; $5b3a: $cf
	add hl, bc                                       ; $5b3b: $09
	ld de, $02e1                                     ; $5b3c: $11 $e1 $02
	inc bc                                           ; $5b3f: $03
	dec de                                           ; $5b40: $1b
	ret nz                                           ; $5b41: $c0

	ld bc, $09a0                                     ; $5b42: $01 $a0 $09
	dec b                                            ; $5b45: $05
	pop de                                           ; $5b46: $d1
	pop hl                                           ; $5b47: $e1
	ld [bc], a                                       ; $5b48: $02
	inc b                                            ; $5b49: $04
	add hl, hl                                       ; $5b4a: $29
	db $e4                                           ; $5b4b: $e4
	nop                                              ; $5b4c: $00
	rla                                              ; $5b4d: $17
	dec b                                            ; $5b4e: $05
	ret c                                            ; $5b4f: $d8

	add hl, bc                                       ; $5b50: $09
	ld de, $02e1                                     ; $5b51: $11 $e1 $02
	inc bc                                           ; $5b54: $03
	inc de                                           ; $5b55: $13
	ret nz                                           ; $5b56: $c0

	ld bc, $09a0                                     ; $5b57: $01 $a0 $09
	dec b                                            ; $5b5a: $05
	jp c, $02e1                                      ; $5b5b: $da $e1 $02

	inc b                                            ; $5b5e: $04
	rla                                              ; $5b5f: $17
	db $e4                                           ; $5b60: $e4
	nop                                              ; $5b61: $00
	ld [bc], a                                       ; $5b62: $02
	add hl, bc                                       ; $5b63: $09
	inc l                                            ; $5b64: $2c
	ret nc                                           ; $5b65: $d0

	add d                                            ; $5b66: $82
	ld bc, $d1d5                                     ; $5b67: $01 $d5 $d1
	pop hl                                           ; $5b6a: $e1
	ld [bc], a                                       ; $5b6b: $02
	inc b                                            ; $5b6c: $04
	rst JumpTable                                          ; $5b6d: $c7
	add c                                            ; $5b6e: $81
	ret nz                                           ; $5b6f: $c0

	ld h, h                                          ; $5b70: $64
	ld [bc], a                                       ; $5b71: $02
	ldh [$63], a                                     ; $5b72: $e0 $63
	dec bc                                           ; $5b74: $0b
	ret nc                                           ; $5b75: $d0

	add e                                            ; $5b76: $83
	ld bc, $d1de                                     ; $5b77: $01 $de $d1
	ret nz                                           ; $5b7a: $c0

	ld d, [hl]                                       ; $5b7b: $56
	ret c                                            ; $5b7c: $d8

	ldh [rAUD1ENV], a                                ; $5b7d: $e0 $12
	pop de                                           ; $5b7f: $d1
	nop                                              ; $5b80: $00
	dec bc                                           ; $5b81: $0b
	ret nc                                           ; $5b82: $d0

	add e                                            ; $5b83: $83
	ld bc, $d0de                                     ; $5b84: $01 $de $d0
	ret nz                                           ; $5b87: $c0

	ld d, [hl]                                       ; $5b88: $56
	ret c                                            ; $5b89: $d8

	ldh [rAUD1ENV], a                                ; $5b8a: $e0 $12
	ret nc                                           ; $5b8c: $d0

	push hl                                          ; $5b8d: $e5
	daa                                              ; $5b8e: $27
	nop                                              ; $5b8f: $00
	nop                                              ; $5b90: $00
	add hl, bc                                       ; $5b91: $09
	inc d                                            ; $5b92: $14
	ret nc                                           ; $5b93: $d0

	add e                                            ; $5b94: $83
	ld bc, $d0de                                     ; $5b95: $01 $de $d0
	ret nz                                           ; $5b98: $c0

	ld bc, $09a0                                     ; $5b99: $01 $a0 $09
	dec b                                            ; $5b9c: $05
	ldh [$c0], a                                     ; $5b9d: $e0 $c0
	ld bc, $01a0                                     ; $5b9f: $01 $a0 $01
	dec b                                            ; $5ba2: $05
	push hl                                          ; $5ba3: $e5
	db $e4                                           ; $5ba4: $e4
	nop                                              ; $5ba5: $00
	ld [bc], a                                       ; $5ba6: $02
	add hl, bc                                       ; $5ba7: $09
	inc l                                            ; $5ba8: $2c
	pop bc                                           ; $5ba9: $c1
	ld e, c                                          ; $5baa: $59
	db $e3                                           ; $5bab: $e3
	nop                                              ; $5bac: $00
	xor c                                            ; $5bad: $a9
	and d                                            ; $5bae: $a2
	add c                                            ; $5baf: $81
	and b                                            ; $5bb0: $a0
	ld hl, $0300                                     ; $5bb1: $21 $00 $03
	db $e4                                           ; $5bb4: $e4
	nop                                              ; $5bb5: $00
	jr nz, jr_081_5bb9                               ; $5bb6: $20 $01

	inc bc                                           ; $5bb8: $03

jr_081_5bb9:
	db $e4                                           ; $5bb9: $e4
	nop                                              ; $5bba: $00
	cp h                                             ; $5bbb: $bc
	ld [bc], a                                       ; $5bbc: $02
	inc bc                                           ; $5bbd: $03
	db $e4                                           ; $5bbe: $e4
	nop                                              ; $5bbf: $00
	ld e, [hl]                                       ; $5bc0: $5e

Call_081_5bc1:
	rst $38                                          ; $5bc1: $ff
	ld [de], a                                       ; $5bc2: $12
	and b                                            ; $5bc3: $a0
	add b                                            ; $5bc4: $80
	and b                                            ; $5bc5: $a0
	jr nz, jr_081_5bc8                               ; $5bc6: $20 $00

jr_081_5bc8:
	inc bc                                           ; $5bc8: $03
	db $e4                                           ; $5bc9: $e4
	nop                                              ; $5bca: $00
	dec bc                                           ; $5bcb: $0b
	rst $38                                          ; $5bcc: $ff
	rlca                                             ; $5bcd: $07
	ld b, b                                          ; $5bce: $40
	add b                                            ; $5bcf: $80
	and b                                            ; $5bd0: $a0
	jr nz, @-$1a                                     ; $5bd1: $20 $e4

	nop                                              ; $5bd3: $00
	ld c, d                                          ; $5bd4: $4a
	jr z, @+$08                                      ; $5bd5: $28 $06

	ret nz                                           ; $5bd7: $c0

	ld bc, $09a0                                     ; $5bd8: $01 $a0 $09
	dec b                                            ; $5bdb: $05
	ld [$043f], a                                    ; $5bdc: $ea $3f $04
	xor $09                                          ; $5bdf: $ee $09
	ld de, $02e1                                     ; $5be1: $11 $e1 $02
	inc bc                                           ; $5be4: $03
	rrca                                             ; $5be5: $0f
	ret nz                                           ; $5be6: $c0

	ld bc, $09a0                                     ; $5be7: $01 $a0 $09
	dec b                                            ; $5bea: $05
	pop af                                           ; $5beb: $f1
	pop hl                                           ; $5bec: $e1
	ld [bc], a                                       ; $5bed: $02
	inc b                                            ; $5bee: $04
	ld c, $e4                                        ; $5bef: $0e $e4
	nop                                              ; $5bf1: $00
	ld [hl], h                                       ; $5bf2: $74
	dec b                                            ; $5bf3: $05
	rst FarCall                                          ; $5bf4: $f7
	add hl, bc                                       ; $5bf5: $09
	ld de, $02e1                                     ; $5bf6: $11 $e1 $02
	inc bc                                           ; $5bf9: $03
	dec de                                           ; $5bfa: $1b
	ret nz                                           ; $5bfb: $c0

	ld bc, $09a0                                     ; $5bfc: $01 $a0 $09
	dec b                                            ; $5bff: $05
	db $fd                                           ; $5c00: $fd
	pop hl                                           ; $5c01: $e1
	ld [bc], a                                       ; $5c02: $02
	inc b                                            ; $5c03: $04
	add hl, hl                                       ; $5c04: $29
	db $e4                                           ; $5c05: $e4
	nop                                              ; $5c06: $00
	ld e, a                                          ; $5c07: $5f
	ld b, $04                                        ; $5c08: $06 $04
	add hl, bc                                       ; $5c0a: $09
	ld de, $02e1                                     ; $5c0b: $11 $e1 $02
	inc bc                                           ; $5c0e: $03
	inc de                                           ; $5c0f: $13
	ret nz                                           ; $5c10: $c0

	ld bc, $09a0                                     ; $5c11: $01 $a0 $09
	ld b, $0c                                        ; $5c14: $06 $0c
	pop hl                                           ; $5c16: $e1
	ld [bc], a                                       ; $5c17: $02
	inc b                                            ; $5c18: $04
	rla                                              ; $5c19: $17
	db $e4                                           ; $5c1a: $e4
	nop                                              ; $5c1b: $00
	ld c, d                                          ; $5c1c: $4a

jr_081_5c1d:
	jr z, jr_081_5c25                                ; $5c1d: $28 $06

	ret nz                                           ; $5c1f: $c0

	ld bc, $09a0                                     ; $5c20: $01 $a0 $09
	ld b, $10                                        ; $5c23: $06 $10

jr_081_5c25:
	ccf                                              ; $5c25: $3f
	ld b, $13                                        ; $5c26: $06 $13
	add hl, bc                                       ; $5c28: $09
	ld de, $02e1                                     ; $5c29: $11 $e1 $02
	inc bc                                           ; $5c2c: $03
	rla                                              ; $5c2d: $17
	ret nz                                           ; $5c2e: $c0

	ld bc, $09a0                                     ; $5c2f: $01 $a0 $09
	ld b, $19                                        ; $5c32: $06 $19
	pop hl                                           ; $5c34: $e1
	ld [bc], a                                       ; $5c35: $02
	inc b                                            ; $5c36: $04
	jr nz, jr_081_5c1d                               ; $5c37: $20 $e4

	nop                                              ; $5c39: $00
	inc l                                            ; $5c3a: $2c
	ld b, $27                                        ; $5c3b: $06 $27
	add hl, bc                                       ; $5c3d: $09
	ld de, $02e1                                     ; $5c3e: $11 $e1 $02
	inc bc                                           ; $5c41: $03
	rra                                              ; $5c42: $1f
	ret nz                                           ; $5c43: $c0

	ld bc, $09a0                                     ; $5c44: $01 $a0 $09

jr_081_5c47:
	ld b, $2e                                        ; $5c47: $06 $2e
	pop hl                                           ; $5c49: $e1
	ld [bc], a                                       ; $5c4a: $02
	inc b                                            ; $5c4b: $04
	ld [hl-], a                                      ; $5c4c: $32
	db $e4                                           ; $5c4d: $e4
	nop                                              ; $5c4e: $00
	rla                                              ; $5c4f: $17
	ld b, $3b                                        ; $5c50: $06 $3b
	add hl, bc                                       ; $5c52: $09
	ld de, $02e1                                     ; $5c53: $11 $e1 $02
	inc bc                                           ; $5c56: $03
	rla                                              ; $5c57: $17
	ret nz                                           ; $5c58: $c0

	ld bc, $09a0                                     ; $5c59: $01 $a0 $09
	ld b, $3f                                        ; $5c5c: $06 $3f
	pop hl                                           ; $5c5e: $e1
	ld [bc], a                                       ; $5c5f: $02
	inc b                                            ; $5c60: $04
	jr nz, jr_081_5c47                               ; $5c61: $20 $e4

	nop                                              ; $5c63: $00
	ld [bc], a                                       ; $5c64: $02
	add hl, bc                                       ; $5c65: $09
	rrca                                             ; $5c66: $0f
	pop bc                                           ; $5c67: $c1
	ld e, c                                          ; $5c68: $59
	db $e3                                           ; $5c69: $e3
	nop                                              ; $5c6a: $00
	xor b                                            ; $5c6b: $a8
	ret nz                                           ; $5c6c: $c0

	ld d, [hl]                                       ; $5c6d: $56
	ret c                                            ; $5c6e: $d8

	ldh [rAUD1LOW], a                                ; $5c6f: $e0 $13
	ret nc                                           ; $5c71: $d0

	push hl                                          ; $5c72: $e5
	daa                                              ; $5c73: $27
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	add hl, bc                                       ; $5c76: $09
	sub d                                            ; $5c77: $92
	ret nz                                           ; $5c78: $c0

	ld bc, $01a0                                     ; $5c79: $01 $a0 $01
	ld b, $45                                        ; $5c7c: $06 $45
	ret nz                                           ; $5c7e: $c0

	ld bc, $09a0                                     ; $5c7f: $01 $a0 $09
	ld b, $51                                        ; $5c82: $06 $51
	pop bc                                           ; $5c84: $c1
	ld e, e                                          ; $5c85: $5b
	pop bc                                           ; $5c86: $c1
	ld e, c                                          ; $5c87: $59
	db $e3                                           ; $5c88: $e3
	ld bc, $c004                                     ; $5c89: $01 $04 $c0
	ld bc, $01a0                                     ; $5c8c: $01 $a0 $01
	ld b, $53                                        ; $5c8f: $06 $53
	ret nz                                           ; $5c91: $c0

	ld bc, $09a0                                     ; $5c92: $01 $a0 $09
	ld b, $59                                        ; $5c95: $06 $59
	ret nz                                           ; $5c97: $c0

	ld bc, $01a0                                     ; $5c98: $01 $a0 $01
	ld b, $5c                                        ; $5c9b: $06 $5c
	ret nz                                           ; $5c9d: $c0

	ld bc, $09a0                                     ; $5c9e: $01 $a0 $09
	ld b, $64                                        ; $5ca1: $06 $64
	ret nz                                           ; $5ca3: $c0

	set 0, b                                         ; $5ca4: $cb $c0
	ld de, $00e3                                     ; $5ca6: $11 $e3 $00
	xor c                                            ; $5ca9: $a9
	ret nz                                           ; $5caa: $c0

	xor c                                            ; $5cab: $a9
	ret c                                            ; $5cac: $d8

	ret nz                                           ; $5cad: $c0

	xor e                                            ; $5cae: $ab
	call nc, Call_081_5cc1                           ; $5caf: $d4 $c1 $5c
	ret nz                                           ; $5cb2: $c0

	jp z, $01c0                                      ; $5cb3: $ca $c0 $01

	and b                                            ; $5cb6: $a0
	add hl, bc                                       ; $5cb7: $09
	ld b, $67                                        ; $5cb8: $06 $67
	ret nz                                           ; $5cba: $c0

	ld bc, $01a0                                     ; $5cbb: $01 $a0 $01
	ld b, $73                                        ; $5cbe: $06 $73
	ret nz                                           ; $5cc0: $c0

Call_081_5cc1:
	ld bc, $09a0                                     ; $5cc1: $01 $a0 $09
	ld b, $77                                        ; $5cc4: $06 $77
	ret nz                                           ; $5cc6: $c0

	ld bc, $01a0                                     ; $5cc7: $01 $a0 $01
	ld b, $83                                        ; $5cca: $06 $83
	pop hl                                           ; $5ccc: $e1
	ld [bc], a                                       ; $5ccd: $02
	inc bc                                           ; $5cce: $03
	inc de                                           ; $5ccf: $13
	ret nz                                           ; $5cd0: $c0

	ld bc, $09a0                                     ; $5cd1: $01 $a0 $09
	ld b, $90                                        ; $5cd4: $06 $90
	pop bc                                           ; $5cd6: $c1
	ld e, e                                          ; $5cd7: $5b
	ret nz                                           ; $5cd8: $c0

	ld bc, $01a0                                     ; $5cd9: $01 $a0 $01
	ld b, $98                                        ; $5cdc: $06 $98
	ret nc                                           ; $5cde: $d0

	add d                                            ; $5cdf: $82
	ld bc, $d2d5                                     ; $5ce0: $01 $d5 $d2
	pop hl                                           ; $5ce3: $e1
	ld [bc], a                                       ; $5ce4: $02
	inc b                                            ; $5ce5: $04
	pop de                                           ; $5ce6: $d1
	ret nz                                           ; $5ce7: $c0

	ld d, c                                          ; $5ce8: $51
	pop de                                           ; $5ce9: $d1
	ret nz                                           ; $5cea: $c0

	ld d, b                                          ; $5ceb: $50
	pop de                                           ; $5cec: $d1
	ret nz                                           ; $5ced: $c0

	ld d, l                                          ; $5cee: $55
	ldh [rAUD1HIGH], a                               ; $5cef: $e0 $14
	ret nz                                           ; $5cf1: $c0

	set 0, b                                         ; $5cf2: $cb $c0
	ld de, $00e3                                     ; $5cf4: $11 $e3 $00
	xor b                                            ; $5cf7: $a8
	pop hl                                           ; $5cf8: $e1
	ld [bc], a                                       ; $5cf9: $02
	ld [bc], a                                       ; $5cfa: $02
	jr nc, @-$3e                                     ; $5cfb: $30 $c0

	ld d, [hl]                                       ; $5cfd: $56
	ret c                                            ; $5cfe: $d8

	ldh [rAUD1LOW], a                                ; $5cff: $e0 $13
	ret nc                                           ; $5d01: $d0

	pop bc                                           ; $5d02: $c1
	ld l, e                                          ; $5d03: $6b
	jp nc, $e5d8                                     ; $5d04: $d2 $d8 $e5

	daa                                              ; $5d07: $27
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	add hl, bc                                       ; $5d0a: $09
	ld c, $d0                                        ; $5d0b: $0e $d0
	add e                                            ; $5d0d: $83
	ld bc, $d0de                                     ; $5d0e: $01 $de $d0
	ret nz                                           ; $5d11: $c0

	ld bc, $09a0                                     ; $5d12: $01 $a0 $09
	ld b, $a0                                        ; $5d15: $06 $a0
	db $e4                                           ; $5d17: $e4
	nop                                              ; $5d18: $00
	ld [bc], a                                       ; $5d19: $02
	add hl, bc                                       ; $5d1a: $09
	rla                                              ; $5d1b: $17
	pop bc                                           ; $5d1c: $c1
	ld e, c                                          ; $5d1d: $59
	db $e3                                           ; $5d1e: $e3
	nop                                              ; $5d1f: $00
	and a                                            ; $5d20: $a7
	and b                                            ; $5d21: $a0

jr_081_5d22:
	add b                                            ; $5d22: $80
	and b                                            ; $5d23: $a0
	inc hl                                           ; $5d24: $23
	nop                                              ; $5d25: $00
	inc bc                                           ; $5d26: $03
	db $e4                                           ; $5d27: $e4
	nop                                              ; $5d28: $00
	dec bc                                           ; $5d29: $0b
	rst $38                                          ; $5d2a: $ff
	rlca                                             ; $5d2b: $07
	ld b, b                                          ; $5d2c: $40
	add b                                            ; $5d2d: $80
	and b                                            ; $5d2e: $a0
	inc hl                                           ; $5d2f: $23
	db $e4                                           ; $5d30: $e4
	nop                                              ; $5d31: $00
	ld h, c                                          ; $5d32: $61
	jr z, jr_081_5d3b                                ; $5d33: $28 $06

	ret nz                                           ; $5d35: $c0

	ld bc, $09a0                                     ; $5d36: $01 $a0 $09
	ld b, $a8                                        ; $5d39: $06 $a8

jr_081_5d3b:
	ld d, [hl]                                       ; $5d3b: $56
	ld b, $ae                                        ; $5d3c: $06 $ae
	add hl, bc                                       ; $5d3e: $09
	jr z, jr_081_5d22                                ; $5d3f: $28 $e1

	ld [bc], a                                       ; $5d41: $02
	inc bc                                           ; $5d42: $03
	inc de                                           ; $5d43: $13
	ret nz                                           ; $5d44: $c0

	ld bc, $09a0                                     ; $5d45: $01 $a0 $09
	ld b, $b0                                        ; $5d48: $06 $b0
	ld h, b                                          ; $5d4a: $60
	ld hl, sp-$40                                    ; $5d4b: $f8 $c0
	add e                                            ; $5d4d: $83
	call nc, Call_081_64e0                           ; $5d4e: $d4 $e0 $64
	ld c, $e1                                        ; $5d51: $0e $e1
	ld [bc], a                                       ; $5d53: $02
	inc bc                                           ; $5d54: $03
	dec de                                           ; $5d55: $1b
	ret nz                                           ; $5d56: $c0

	ld bc, $01a0                                     ; $5d57: $01 $a0 $01
	ld b, $b6                                        ; $5d5a: $06 $b6
	pop hl                                           ; $5d5c: $e1
	ld [bc], a                                       ; $5d5d: $02
	inc b                                            ; $5d5e: $04
	add hl, hl                                       ; $5d5f: $29
	inc b                                            ; $5d60: $04
	pop hl                                           ; $5d61: $e1
	ld [bc], a                                       ; $5d62: $02
	inc b                                            ; $5d63: $04
	ld c, $e4                                        ; $5d64: $0e $e4
	nop                                              ; $5d66: $00
	ld [hl], h                                       ; $5d67: $74
	ld b, $bf                                        ; $5d68: $06 $bf
	add hl, bc                                       ; $5d6a: $09
	ld de, $02e1                                     ; $5d6b: $11 $e1 $02
	inc bc                                           ; $5d6e: $03
	dec de                                           ; $5d6f: $1b
	ret nz                                           ; $5d70: $c0

	ld bc, $09a0                                     ; $5d71: $01 $a0 $09

jr_081_5d74:
	ld b, $c8                                        ; $5d74: $06 $c8
	pop hl                                           ; $5d76: $e1
	ld [bc], a                                       ; $5d77: $02
	inc b                                            ; $5d78: $04
	add hl, hl                                       ; $5d79: $29
	db $e4                                           ; $5d7a: $e4
	nop                                              ; $5d7b: $00
	ld e, a                                          ; $5d7c: $5f
	ld b, $d1                                        ; $5d7d: $06 $d1
	add hl, bc                                       ; $5d7f: $09
	ld de, $02e1                                     ; $5d80: $11 $e1 $02
	inc bc                                           ; $5d83: $03
	rla                                              ; $5d84: $17
	ret nz                                           ; $5d85: $c0

	ld bc, $09a0                                     ; $5d86: $01 $a0 $09
	ld b, $d7                                        ; $5d89: $06 $d7
	pop hl                                           ; $5d8b: $e1
	ld [bc], a                                       ; $5d8c: $02
	inc b                                            ; $5d8d: $04
	jr nz, jr_081_5d74                               ; $5d8e: $20 $e4

	nop                                              ; $5d90: $00
	ld c, d                                          ; $5d91: $4a
	jr z, jr_081_5d9a                                ; $5d92: $28 $06

	ret nz                                           ; $5d94: $c0

	ld bc, $09a0                                     ; $5d95: $01 $a0 $09
	ld b, $dd                                        ; $5d98: $06 $dd

jr_081_5d9a:
	ccf                                              ; $5d9a: $3f
	ld b, $e2                                        ; $5d9b: $06 $e2
	add hl, bc                                       ; $5d9d: $09
	ld de, $02e1                                     ; $5d9e: $11 $e1 $02
	inc bc                                           ; $5da1: $03
	rrca                                             ; $5da2: $0f
	ret nz                                           ; $5da3: $c0

	ld bc, $09a0                                     ; $5da4: $01 $a0 $09
	ld b, $ea                                        ; $5da7: $06 $ea
	pop hl                                           ; $5da9: $e1
	ld [bc], a                                       ; $5daa: $02
	inc b                                            ; $5dab: $04
	ld c, $e4                                        ; $5dac: $0e $e4
	nop                                              ; $5dae: $00
	inc l                                            ; $5daf: $2c
	ld b, $f0                                        ; $5db0: $06 $f0
	add hl, bc                                       ; $5db2: $09
	ld de, $02e1                                     ; $5db3: $11 $e1 $02
	inc bc                                           ; $5db6: $03
	dec de                                           ; $5db7: $1b
	ret nz                                           ; $5db8: $c0

	ld bc, $09a0                                     ; $5db9: $01 $a0 $09
	ld b, $f6                                        ; $5dbc: $06 $f6
	pop hl                                           ; $5dbe: $e1
	ld [bc], a                                       ; $5dbf: $02
	inc b                                            ; $5dc0: $04
	add hl, hl                                       ; $5dc1: $29
	db $e4                                           ; $5dc2: $e4
	nop                                              ; $5dc3: $00
	rla                                              ; $5dc4: $17
	rlca                                             ; $5dc5: $07
	nop                                              ; $5dc6: $00
	add hl, bc                                       ; $5dc7: $09
	ld de, $02e1                                     ; $5dc8: $11 $e1 $02
	inc bc                                           ; $5dcb: $03
	dec de                                           ; $5dcc: $1b
	ret nz                                           ; $5dcd: $c0

	ld bc, $09a0                                     ; $5dce: $01 $a0 $09
	rlca                                             ; $5dd1: $07
	dec b                                            ; $5dd2: $05
	pop hl                                           ; $5dd3: $e1
	ld [bc], a                                       ; $5dd4: $02
	inc b                                            ; $5dd5: $04
	add hl, hl                                       ; $5dd6: $29
	db $e4                                           ; $5dd7: $e4
	nop                                              ; $5dd8: $00
	ld [bc], a                                       ; $5dd9: $02
	add hl, bc                                       ; $5dda: $09
	rrca                                             ; $5ddb: $0f
	pop bc                                           ; $5ddc: $c1
	ld e, c                                          ; $5ddd: $59
	db $e3                                           ; $5dde: $e3
	nop                                              ; $5ddf: $00
	and [hl]                                         ; $5de0: $a6
	ret nz                                           ; $5de1: $c0

	ld d, [hl]                                       ; $5de2: $56
	ret c                                            ; $5de3: $d8

	ldh [rAUD1HIGH], a                               ; $5de4: $e0 $14
	ret nc                                           ; $5de6: $d0

	push hl                                          ; $5de7: $e5
	daa                                              ; $5de8: $27
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	scf                                              ; $5deb: $37
	ld b, $09                                        ; $5dec: $06 $09
	pop bc                                           ; $5dee: $c1
	pop hl                                           ; $5def: $e1

jr_081_5df0:
	ret nz                                           ; $5df0: $c0

	ld c, h                                          ; $5df1: $4c
	ret c                                            ; $5df2: $d8

	ret nc                                           ; $5df3: $d0

	adc a                                            ; $5df4: $8f
	nop                                              ; $5df5: $00
	cp b                                             ; $5df6: $b8
	add h                                            ; $5df7: $84
	ld [bc], a                                       ; $5df8: $02
	ld l, $61                                        ; $5df9: $2e $61
	cp $07                                           ; $5dfb: $fe $07
	add b                                            ; $5dfd: $80
	nop                                              ; $5dfe: $00
	set 7, h                                         ; $5dff: $cb $fc
	ret nz                                           ; $5e01: $c0

	ld h, a                                          ; $5e02: $67
	ret nc                                           ; $5e03: $d0

	inc [hl]                                         ; $5e04: $34
	ret nz                                           ; $5e05: $c0

	ld bc, $09a0                                     ; $5e06: $01 $a0 $09
	nop                                              ; $5e09: $00
	ld bc, $01c0                                     ; $5e0a: $01 $c0 $01
	and b                                            ; $5e0d: $a0
	ld bc, $0b00                                     ; $5e0e: $01 $00 $0b
	add c                                            ; $5e11: $81
	ret nz                                           ; $5e12: $c0

	dec de                                           ; $5e13: $1b
	ret c                                            ; $5e14: $d8

	ld [bc], a                                       ; $5e15: $02
	ret nc                                           ; $5e16: $d0

	pop de                                           ; $5e17: $d1
	ld a, [bc]                                       ; $5e18: $0a
	pop hl                                           ; $5e19: $e1
	ld [bc], a                                       ; $5e1a: $02
	inc bc                                           ; $5e1b: $03
	rrca                                             ; $5e1c: $0f
	ret nz                                           ; $5e1d: $c0

	ld bc, $09a0                                     ; $5e1e: $01 $a0 $09
	nop                                              ; $5e21: $00
	inc d                                            ; $5e22: $14
	nop                                              ; $5e23: $00
	ld a, [bc]                                       ; $5e24: $0a
	pop hl                                           ; $5e25: $e1
	ld [bc], a                                       ; $5e26: $02

jr_081_5e27:
	inc bc                                           ; $5e27: $03
	inc de                                           ; $5e28: $13
	ret nz                                           ; $5e29: $c0

	ld bc, $09a0                                     ; $5e2a: $01 $a0 $09
	nop                                              ; $5e2d: $00
	jr nz, jr_081_5df0                               ; $5e2e: $20 $c0

	ld bc, $01a0                                     ; $5e30: $01 $a0 $01
	nop                                              ; $5e33: $00
	jr z, @+$42                                      ; $5e34: $28 $40

	add b                                            ; $5e36: $80
	nop                                              ; $5e37: $00
	set 7, h                                         ; $5e38: $cb $fc
	pop bc                                           ; $5e3a: $c1
	ld b, c                                          ; $5e3b: $41
	ret c                                            ; $5e3c: $d8

	add h                                            ; $5e3d: $84
	ld [bc], a                                       ; $5e3e: $02
	ld l, $83                                        ; $5e3f: $2e $83
	ld bc, $d1de                                     ; $5e41: $01 $de $d1
	jr nz, jr_081_5e27                               ; $5e44: $20 $e1

	ld [bc], a                                       ; $5e46: $02
	inc bc                                           ; $5e47: $03
	rra                                              ; $5e48: $1f
	ret nz                                           ; $5e49: $c0

	ld bc, $09a0                                     ; $5e4a: $01 $a0 $09
	nop                                              ; $5e4d: $00
	ld l, $c0                                        ; $5e4e: $2e $c0
	ld bc, $01a0                                     ; $5e50: $01 $a0 $01
	nop                                              ; $5e53: $00
	ld a, [hl-]                                      ; $5e54: $3a
	ret nz                                           ; $5e55: $c0

	dec h                                            ; $5e56: $25
	pop de                                           ; $5e57: $d1
	ret c                                            ; $5e58: $d8

	ret nz                                           ; $5e59: $c0

	inc h                                            ; $5e5a: $24
	jp nc, $c0d8                                     ; $5e5b: $d2 $d8 $c0

	inc hl                                           ; $5e5e: $23
	jp c, $e1d8                                      ; $5e5f: $da $d8 $e1

	ld [bc], a                                       ; $5e62: $02
	inc bc                                           ; $5e63: $03
	daa                                              ; $5e64: $27
	ret nz                                           ; $5e65: $c0

	xor $83                                          ; $5e66: $ee $83
	ret nz                                           ; $5e68: $c0

	dec de                                           ; $5e69: $1b
	ret c                                            ; $5e6a: $d8

	ld [bc], a                                       ; $5e6b: $02
	ret nc                                           ; $5e6c: $d0

	pop de                                           ; $5e6d: $d1
	ld b, h                                          ; $5e6e: $44
	add d                                            ; $5e6f: $82
	add d                                            ; $5e70: $82
	ld bc, $02d5                                     ; $5e71: $01 $d5 $02
	pop de                                           ; $5e74: $d1
	jp nc, $e115                                     ; $5e75: $d2 $15 $e1

	ld [bc], a                                       ; $5e78: $02
	inc bc                                           ; $5e79: $03
	inc de                                           ; $5e7a: $13
	pop bc                                           ; $5e7b: $c1
	or d                                             ; $5e7c: $b2
	db $e3                                           ; $5e7d: $e3
	nop                                              ; $5e7e: $00
	ld h, e                                          ; $5e7f: $63
	ret nz                                           ; $5e80: $c0

	ld bc, $09a0                                     ; $5e81: $01 $a0 $09
	nop                                              ; $5e84: $00
	ld b, c                                          ; $5e85: $41
	ret nz                                           ; $5e86: $c0

	ld bc, $01a0                                     ; $5e87: $01 $a0 $01
	nop                                              ; $5e8a: $00
	ld c, e                                          ; $5e8b: $4b
	ld bc, $10d3                                     ; $5e8c: $01 $d3 $10
	pop hl                                           ; $5e8f: $e1
	ld [bc], a                                       ; $5e90: $02
	inc bc                                           ; $5e91: $03
	rla                                              ; $5e92: $17
	ret nz                                           ; $5e93: $c0

	ld bc, $09a0                                     ; $5e94: $01 $a0 $09
	nop                                              ; $5e97: $00
	ld d, e                                          ; $5e98: $53
	ret nz                                           ; $5e99: $c0

	ld bc, $01a0                                     ; $5e9a: $01 $a0 $01
	nop                                              ; $5e9d: $00
	ld c, e                                          ; $5e9e: $4b
	ld [bc], a                                       ; $5e9f: $02
	call nc, $10d5                                   ; $5ea0: $d4 $d5 $10
	pop hl                                           ; $5ea3: $e1
	ld [bc], a                                       ; $5ea4: $02
	inc bc                                           ; $5ea5: $03
	dec de                                           ; $5ea6: $1b
	ret nz                                           ; $5ea7: $c0

	ld bc, $09a0                                     ; $5ea8: $01 $a0 $09
	nop                                              ; $5eab: $00
	ld e, h                                          ; $5eac: $5c
	ret nz                                           ; $5ead: $c0

	ld bc, $01a0                                     ; $5eae: $01 $a0 $01
	nop                                              ; $5eb1: $00
	ld c, e                                          ; $5eb2: $4b
	ld [bc], a                                       ; $5eb3: $02
	jp nc, Jump_081_44d3                             ; $5eb4: $d2 $d3 $44

	add d                                            ; $5eb7: $82
	add d                                            ; $5eb8: $82
	ld bc, $02d5                                     ; $5eb9: $01 $d5 $02
	pop de                                           ; $5ebc: $d1
	jp nc, $e115                                     ; $5ebd: $d2 $15 $e1

	ld [bc], a                                       ; $5ec0: $02
	inc bc                                           ; $5ec1: $03
	inc de                                           ; $5ec2: $13
	pop bc                                           ; $5ec3: $c1
	or d                                             ; $5ec4: $b2
	db $e3                                           ; $5ec5: $e3
	nop                                              ; $5ec6: $00
	ld h, h                                          ; $5ec7: $64
	ret nz                                           ; $5ec8: $c0

	ld bc, $09a0                                     ; $5ec9: $01 $a0 $09
	nop                                              ; $5ecc: $00
	ld h, a                                          ; $5ecd: $67
	ret nz                                           ; $5ece: $c0

	ld bc, $01a0                                     ; $5ecf: $01 $a0 $01
	nop                                              ; $5ed2: $00
	ld [hl], c                                       ; $5ed3: $71
	ld bc, $10d3                                     ; $5ed4: $01 $d3 $10
	pop hl                                           ; $5ed7: $e1
	ld [bc], a                                       ; $5ed8: $02
	inc bc                                           ; $5ed9: $03
	rla                                              ; $5eda: $17
	ret nz                                           ; $5edb: $c0

	ld bc, $09a0                                     ; $5edc: $01 $a0 $09
	nop                                              ; $5edf: $00
	ld [hl], a                                       ; $5ee0: $77
	ret nz                                           ; $5ee1: $c0

	ld bc, $01a0                                     ; $5ee2: $01 $a0 $01
	nop                                              ; $5ee5: $00
	ld [hl], c                                       ; $5ee6: $71
	ld [bc], a                                       ; $5ee7: $02
	call nc, $10d5                                   ; $5ee8: $d4 $d5 $10
	pop hl                                           ; $5eeb: $e1
	ld [bc], a                                       ; $5eec: $02
	inc bc                                           ; $5eed: $03
	dec de                                           ; $5eee: $1b
	ret nz                                           ; $5eef: $c0

	ld bc, $09a0                                     ; $5ef0: $01 $a0 $09
	nop                                              ; $5ef3: $00
	ld a, a                                          ; $5ef4: $7f
	ret nz                                           ; $5ef5: $c0

	ld bc, $01a0                                     ; $5ef6: $01 $a0 $01
	nop                                              ; $5ef9: $00
	add h                                            ; $5efa: $84
	ld bc, $44d4                                     ; $5efb: $01 $d4 $44
	add d                                            ; $5efe: $82
	add d                                            ; $5eff: $82
	ld bc, $02d5                                     ; $5f00: $01 $d5 $02
	pop de                                           ; $5f03: $d1
	jp nc, $e115                                     ; $5f04: $d2 $15 $e1

	ld [bc], a                                       ; $5f07: $02
	inc bc                                           ; $5f08: $03
	inc de                                           ; $5f09: $13
	pop bc                                           ; $5f0a: $c1
	or d                                             ; $5f0b: $b2
	db $e3                                           ; $5f0c: $e3
	nop                                              ; $5f0d: $00
	ld h, h                                          ; $5f0e: $64
	ret nz                                           ; $5f0f: $c0

	ld bc, $09a0                                     ; $5f10: $01 $a0 $09
	nop                                              ; $5f13: $00
	add [hl]                                         ; $5f14: $86
	ret nz                                           ; $5f15: $c0

	ld bc, $01a0                                     ; $5f16: $01 $a0 $01
	nop                                              ; $5f19: $00
	ld [hl], c                                       ; $5f1a: $71
	ld bc, $10d3                                     ; $5f1b: $01 $d3 $10
	pop hl                                           ; $5f1e: $e1
	ld [bc], a                                       ; $5f1f: $02
	inc bc                                           ; $5f20: $03
	rla                                              ; $5f21: $17
	ret nz                                           ; $5f22: $c0

	ld bc, $09a0                                     ; $5f23: $01 $a0 $09
	nop                                              ; $5f26: $00
	sub b                                            ; $5f27: $90
	ret nz                                           ; $5f28: $c0

	ld bc, $01a0                                     ; $5f29: $01 $a0 $01
	nop                                              ; $5f2c: $00
	sub e                                            ; $5f2d: $93
	ld [bc], a                                       ; $5f2e: $02
	call nc, $10d5                                   ; $5f2f: $d4 $d5 $10
	pop hl                                           ; $5f32: $e1
	ld [bc], a                                       ; $5f33: $02
	inc bc                                           ; $5f34: $03
	dec de                                           ; $5f35: $1b
	ret nz                                           ; $5f36: $c0

	ld bc, $09a0                                     ; $5f37: $01 $a0 $09
	nop                                              ; $5f3a: $00
	sub a                                            ; $5f3b: $97
	ret nz                                           ; $5f3c: $c0

	ld bc, $01a0                                     ; $5f3d: $01 $a0 $01
	nop                                              ; $5f40: $00
	add h                                            ; $5f41: $84
	ld bc, $10d5                                     ; $5f42: $01 $d5 $10
	pop hl                                           ; $5f45: $e1
	ld [bc], a                                       ; $5f46: $02
	inc bc                                           ; $5f47: $03
	dec de                                           ; $5f48: $1b
	ret nz                                           ; $5f49: $c0

	ld bc, $09a0                                     ; $5f4a: $01 $a0 $09
	nop                                              ; $5f4d: $00
	sbc h                                            ; $5f4e: $9c
	ret nz                                           ; $5f4f: $c0

	ld bc, $01a0                                     ; $5f50: $01 $a0 $01
	nop                                              ; $5f53: $00
	and e                                            ; $5f54: $a3
	ei                                               ; $5f55: $fb
	db $fd                                           ; $5f56: $fd
	add h                                            ; $5f57: $84
	ld [bc], a                                       ; $5f58: $02
	ld l, $d0                                        ; $5f59: $2e $d0
	add hl, bc                                       ; $5f5b: $09
	pop bc                                           ; $5f5c: $c1
	ccf                                              ; $5f5d: $3f
	ret c                                            ; $5f5e: $d8

	add h                                            ; $5f5f: $84
	ld [bc], a                                       ; $5f60: $02
	ld l, $83                                        ; $5f61: $2e $83
	ld bc, $e1de                                     ; $5f63: $01 $de $e1
	ld [bc], a                                       ; $5f66: $02
	inc bc                                           ; $5f67: $03
	daa                                              ; $5f68: $27
	ei                                               ; $5f69: $fb
	cp $0a                                           ; $5f6a: $fe $0a
	db $fc                                           ; $5f6c: $fc
	ret nz                                           ; $5f6d: $c0

	ld h, l                                          ; $5f6e: $65
	ret nz                                           ; $5f6f: $c0

	ld [hl], c                                       ; $5f70: $71
	db $fc                                           ; $5f71: $fc
	ret nz                                           ; $5f72: $c0

	ld h, [hl]                                       ; $5f73: $66
	ret nz                                           ; $5f74: $c0

	ld [hl], d                                       ; $5f75: $72
	cpl                                              ; $5f76: $2f
	ei                                               ; $5f77: $fb
	ld hl, sp-$40                                    ; $5f78: $f8 $c0
	rla                                              ; $5f7a: $17
	ret c                                            ; $5f7b: $d8

	ldh [$3c], a                                     ; $5f7c: $e0 $3c
	daa                                              ; $5f7e: $27
	add b                                            ; $5f7f: $80
	ret nz                                           ; $5f80: $c0

	dec de                                           ; $5f81: $1b
	ret c                                            ; $5f82: $d8

	ld [bc], a                                       ; $5f83: $02
	ret nc                                           ; $5f84: $d0

	pop de                                           ; $5f85: $d1
	rra                                              ; $5f86: $1f
	ret nz                                           ; $5f87: $c0

	ld bc, $09a0                                     ; $5f88: $01 $a0 $09
	nop                                              ; $5f8b: $00
	and a                                            ; $5f8c: $a7
	ret nz                                           ; $5f8d: $c0

	ld bc, $01a0                                     ; $5f8e: $01 $a0 $01
	nop                                              ; $5f91: $00
	xor e                                            ; $5f92: $ab
	ret nc                                           ; $5f93: $d0

	add e                                            ; $5f94: $83
	ld [bc], a                                       ; $5f95: $02
	ld l, l                                          ; $5f96: $6d
	ret c                                            ; $5f97: $d8

	pop hl                                           ; $5f98: $e1
	ld b, [hl]                                       ; $5f99: $46
	ld bc, $c0e1                                     ; $5f9a: $01 $e1 $c0
	ld bc, $01a0                                     ; $5f9d: $01 $a0 $01
	nop                                              ; $5fa0: $00
	xor l                                            ; $5fa1: $ad
	nop                                              ; $5fa2: $00
	add b                                            ; $5fa3: $80
	nop                                              ; $5fa4: $00
	dec [hl]                                         ; $5fa5: $35
	ld h, b                                          ; $5fa6: $60
	cp $09                                           ; $5fa7: $fe $09
	db $fc                                           ; $5fa9: $fc
	ret nz                                           ; $5faa: $c0

	ld h, l                                          ; $5fab: $65
	jp c, $c0fc                                      ; $5fac: $da $fc $c0

	ld h, [hl]                                       ; $5faf: $66
	ldh [rAUD1LEN], a                                ; $5fb0: $e0 $11
	ld a, [de]                                       ; $5fb2: $1a
	ret nz                                           ; $5fb3: $c0

	ld bc, $01a0                                     ; $5fb4: $01 $a0 $01
	nop                                              ; $5fb7: $00
	jp nz, $01c0                                     ; $5fb8: $c2 $c0 $01

	and b                                            ; $5fbb: $a0
	ld bc, $c700                                     ; $5fbc: $01 $00 $c7
	ret nc                                           ; $5fbf: $d0

	adc e                                            ; $5fc0: $8b
	ld bc, $b002                                     ; $5fc1: $01 $02 $b0
	add c                                            ; $5fc4: $81
	nop                                              ; $5fc5: $00
	add b                                            ; $5fc6: $80
	nop                                              ; $5fc7: $00
	ld e, l                                          ; $5fc8: $5d
	push hl                                          ; $5fc9: $e5
	ld b, [hl]                                       ; $5fca: $46
	dec bc                                           ; $5fcb: $0b
	ld h, a                                          ; $5fcc: $67
	inc bc                                           ; $5fcd: $03
	db $e4                                           ; $5fce: $e4
	nop                                              ; $5fcf: $00
	ld [bc], a                                       ; $5fd0: $02
	add hl, bc                                       ; $5fd1: $09
	add a                                            ; $5fd2: $87
	add d                                            ; $5fd3: $82
	ret nz                                           ; $5fd4: $c0

	dec de                                           ; $5fd5: $1b
	ret c                                            ; $5fd6: $d8

	ld [bc], a                                       ; $5fd7: $02
	ret nc                                           ; $5fd8: $d0

	pop de                                           ; $5fd9: $d1
	dec bc                                           ; $5fda: $0b
	pop bc                                           ; $5fdb: $c1
	or d                                             ; $5fdc: $b2
	db $e3                                           ; $5fdd: $e3
	nop                                              ; $5fde: $00
	ld h, l                                          ; $5fdf: $65
	ret nz                                           ; $5fe0: $c0

	ld bc, $09a0                                     ; $5fe1: $01 $a0 $09
	nop                                              ; $5fe4: $00
	rst GetHLinHL                                          ; $5fe5: $cf
	inc bc                                           ; $5fe6: $03
	jp nc, $d4d3                                     ; $5fe7: $d2 $d3 $d4

	ld b, $c0                                        ; $5fea: $06 $c0
	ld bc, $09a0                                     ; $5fec: $01 $a0 $09
	nop                                              ; $5fef: $00
	rst SubAFromHL                                          ; $5ff0: $d7
	ld bc, $06d5                                     ; $5ff1: $01 $d5 $06
	ret nz                                           ; $5ff4: $c0

	ld bc, $09a0                                     ; $5ff5: $01 $a0 $09
	nop                                              ; $5ff8: $00
	call c, Call_081_5bc1                            ; $5ff9: $dc $c1 $5b
	pop bc                                           ; $5ffc: $c1
	dec sp                                           ; $5ffd: $3b
	ld h, c                                          ; $5ffe: $61
	cp $09                                           ; $5fff: $fe $09
	db $fd                                           ; $6001: $fd
	ret nz                                           ; $6002: $c0

	ld h, h                                          ; $6003: $64
	ldh [$63], a                                     ; $6004: $e0 $63
	db $fc                                           ; $6006: $fc
	ret nz                                           ; $6007: $c0

	ld h, l                                          ; $6008: $65
	push de                                          ; $6009: $d5
	dec de                                           ; $600a: $1b
	add d                                            ; $600b: $82
	ret nz                                           ; $600c: $c0

	ld h, [hl]                                       ; $600d: $66
	ld bc, $05d3                                     ; $600e: $01 $d3 $05
	ret nc                                           ; $6011: $d0

	add e                                            ; $6012: $83
	ld bc, $d872                                     ; $6013: $01 $72 $d8
	ld bc, $05d4                                     ; $6016: $01 $d4 $05
	ret nc                                           ; $6019: $d0

	add e                                            ; $601a: $83
	ld bc, $d876                                     ; $601b: $01 $76 $d8
	ld bc, $05d5                                     ; $601e: $01 $d5 $05
	ret nc                                           ; $6021: $d0

	add e                                            ; $6022: $83
	ld bc, $d87a                                     ; $6023: $01 $7a $d8
	cp $09                                           ; $6026: $fe $09
	db $fc                                           ; $6028: $fc
	ret nz                                           ; $6029: $c0

	ld h, h                                          ; $602a: $64
	ldh [$63], a                                     ; $602b: $e0 $63
	db $fc                                           ; $602d: $fc
	ret nz                                           ; $602e: $c0

	ld h, l                                          ; $602f: $65
	push de                                          ; $6030: $d5
	inc hl                                           ; $6031: $23

jr_081_6032:
	add e                                            ; $6032: $83
	ret nz                                           ; $6033: $c0

	ld h, [hl]                                       ; $6034: $66
	ld bc, $05d2                                     ; $6035: $01 $d2 $05
	ret nc                                           ; $6038: $d0

	add e                                            ; $6039: $83
	ld bc, $d872                                     ; $603a: $01 $72 $d8
	ld bc, $05d3                                     ; $603d: $01 $d3 $05
	ret nc                                           ; $6040: $d0

	add e                                            ; $6041: $83
	ld bc, $d876                                     ; $6042: $01 $76 $d8
	ld bc, $05d4                                     ; $6045: $01 $d4 $05
	ret nc                                           ; $6048: $d0

	add e                                            ; $6049: $83
	ld bc, $d87a                                     ; $604a: $01 $7a $d8
	ld bc, $05d5                                     ; $604d: $01 $d5 $05
	ret nc                                           ; $6050: $d0

	add e                                            ; $6051: $83
	ld bc, $d87e                                     ; $6052: $01 $7e $d8
	nop                                              ; $6055: $00
	push hl                                          ; $6056: $e5
	nop                                              ; $6057: $00
	jr nz, jr_081_6032                               ; $6058: $20 $d8

	ld e, e                                          ; $605a: $5b
	ld b, $09                                        ; $605b: $06 $09
	pop bc                                           ; $605d: $c1
	ld d, b                                          ; $605e: $50
	nop                                              ; $605f: $00
	add b                                            ; $6060: $80
	ld [bc], a                                       ; $6061: $02
	ld a, [hl]                                       ; $6062: $7e
	ld b, b                                          ; $6063: $40
	add b                                            ; $6064: $80
	and b                                            ; $6065: $a0
	nop                                              ; $6066: $00
	db $fd                                           ; $6067: $fd
	pop bc                                           ; $6068: $c1
	ld b, l                                          ; $6069: $45
	adc e                                            ; $606a: $8b
	ld [bc], a                                       ; $606b: $02
	inc [hl]                                         ; $606c: $34
	ld [bc], a                                       ; $606d: $02
	or b                                             ; $606e: $b0
	ld e, c                                          ; $606f: $59
	dec bc                                           ; $6070: $0b
	pop hl                                           ; $6071: $e1
	ld [bc], a                                       ; $6072: $02
	ld [bc], a                                       ; $6073: $02
	ld d, d                                          ; $6074: $52
	ldh [rSB], a                                     ; $6075: $e0 $01
	add hl, sp                                       ; $6077: $39
	push hl                                          ; $6078: $e5
	add hl, hl                                       ; $6079: $29
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	ld [bc], a                                       ; $607c: $02
	or b                                             ; $607d: $b0
	ld [de], a                                       ; $607e: $12
	dec bc                                           ; $607f: $0b
	pop hl                                           ; $6080: $e1
	ld [bc], a                                       ; $6081: $02
	ld [bc], a                                       ; $6082: $02
	ld d, d                                          ; $6083: $52
	ldh [rSB], a                                     ; $6084: $e0 $01
	ld a, [hl+]                                      ; $6086: $2a
	push hl                                          ; $6087: $e5
	add hl, hl                                       ; $6088: $29
	ld bc, $0219                                     ; $6089: $01 $19 $02
	or b                                             ; $608c: $b0
	ld e, d                                          ; $608d: $5a
	dec bc                                           ; $608e: $0b
	pop hl                                           ; $608f: $e1
	ld [bc], a                                       ; $6090: $02
	ld [bc], a                                       ; $6091: $02
	ld d, d                                          ; $6092: $52
	ldh [rSB], a                                     ; $6093: $e0 $01
	dec de                                           ; $6095: $1b
	push hl                                          ; $6096: $e5
	add hl, hl                                       ; $6097: $29
	inc bc                                           ; $6098: $03
	ld e, a                                          ; $6099: $5f
	ld [bc], a                                       ; $609a: $02
	or b                                             ; $609b: $b0
	inc d                                            ; $609c: $14
	dec bc                                           ; $609d: $0b
	pop hl                                           ; $609e: $e1
	ld [bc], a                                       ; $609f: $02
	ld [bc], a                                       ; $60a0: $02
	ld d, d                                          ; $60a1: $52
	ldh [rSB], a                                     ; $60a2: $e0 $01
	inc c                                            ; $60a4: $0c
	push hl                                          ; $60a5: $e5
	add hl, hl                                       ; $60a6: $29
	dec b                                            ; $60a7: $05
	ei                                               ; $60a8: $fb
	ld [bc], a                                       ; $60a9: $02
	or b                                             ; $60aa: $b0
	ld e, e                                          ; $60ab: $5b
	dec bc                                           ; $60ac: $0b
	pop hl                                           ; $60ad: $e1
	ld [bc], a                                       ; $60ae: $02
	ld [bc], a                                       ; $60af: $02
	ld d, d                                          ; $60b0: $52
	ldh [rP1], a                                     ; $60b1: $e0 $00
	db $fd                                           ; $60b3: $fd
	push hl                                          ; $60b4: $e5
	add hl, hl                                       ; $60b5: $29
	rlca                                             ; $60b6: $07
	dec [hl]                                         ; $60b7: $35
	ld [bc], a                                       ; $60b8: $02
	or b                                             ; $60b9: $b0
	ld d, $0b                                        ; $60ba: $16 $0b
	pop hl                                           ; $60bc: $e1
	ld [bc], a                                       ; $60bd: $02
	ld [bc], a                                       ; $60be: $02
	ld d, d                                          ; $60bf: $52
	ldh [rP1], a                                     ; $60c0: $e0 $00
	xor $e5                                          ; $60c2: $ee $e5
	add hl, hl                                       ; $60c4: $29
	ld [$0269], sp                                   ; $60c5: $08 $69 $02
	or b                                             ; $60c8: $b0
	jr jr_081_60d6                                   ; $60c9: $18 $0b

	pop hl                                           ; $60cb: $e1
	ld [bc], a                                       ; $60cc: $02
	ld [bc], a                                       ; $60cd: $02
	ld d, d                                          ; $60ce: $52
	ldh [rP1], a                                     ; $60cf: $e0 $00
	rst SubAFromDE                                          ; $60d1: $df
	push hl                                          ; $60d2: $e5
	add hl, hl                                       ; $60d3: $29
	add hl, bc                                       ; $60d4: $09
	inc sp                                           ; $60d5: $33

jr_081_60d6:
	ld [bc], a                                       ; $60d6: $02
	or b                                             ; $60d7: $b0
	inc de                                           ; $60d8: $13
	dec bc                                           ; $60d9: $0b
	pop hl                                           ; $60da: $e1
	ld [bc], a                                       ; $60db: $02
	ld [bc], a                                       ; $60dc: $02
	ld d, d                                          ; $60dd: $52
	ldh [rP1], a                                     ; $60de: $e0 $00
	ret nc                                           ; $60e0: $d0

	push hl                                          ; $60e1: $e5
	add hl, hl                                       ; $60e2: $29
	ld a, [bc]                                       ; $60e3: $0a
	ld b, d                                          ; $60e4: $42
	ld [bc], a                                       ; $60e5: $02
	or b                                             ; $60e6: $b0
	ld e, h                                          ; $60e7: $5c
	dec bc                                           ; $60e8: $0b
	pop hl                                           ; $60e9: $e1
	ld [bc], a                                       ; $60ea: $02
	ld [bc], a                                       ; $60eb: $02
	ld d, d                                          ; $60ec: $52
	ldh [rP1], a                                     ; $60ed: $e0 $00
	pop bc                                           ; $60ef: $c1
	push hl                                          ; $60f0: $e5
	add hl, hl                                       ; $60f1: $29
	inc c                                            ; $60f2: $0c
	ld a, l                                          ; $60f3: $7d
	ld [bc], a                                       ; $60f4: $02
	or b                                             ; $60f5: $b0
	ld e, l                                          ; $60f6: $5d
	dec bc                                           ; $60f7: $0b
	pop hl                                           ; $60f8: $e1
	ld [bc], a                                       ; $60f9: $02
	ld [bc], a                                       ; $60fa: $02
	ld d, d                                          ; $60fb: $52
	ldh [rP1], a                                     ; $60fc: $e0 $00
	or d                                             ; $60fe: $b2
	push hl                                          ; $60ff: $e5
	add hl, hl                                       ; $6100: $29
	dec c                                            ; $6101: $0d
	ld d, a                                          ; $6102: $57
	ld [bc], a                                       ; $6103: $02
	or b                                             ; $6104: $b0
	ld e, [hl]                                       ; $6105: $5e
	dec bc                                           ; $6106: $0b
	pop hl                                           ; $6107: $e1
	ld [bc], a                                       ; $6108: $02
	ld [bc], a                                       ; $6109: $02
	ld d, d                                          ; $610a: $52
	ldh [rP1], a                                     ; $610b: $e0 $00
	and e                                            ; $610d: $a3
	push hl                                          ; $610e: $e5
	ld a, [hl+]                                      ; $610f: $2a
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	ld [bc], a                                       ; $6112: $02
	or b                                             ; $6113: $b0
	ld e, a                                          ; $6114: $5f
	dec bc                                           ; $6115: $0b
	pop hl                                           ; $6116: $e1
	ld [bc], a                                       ; $6117: $02
	ld [bc], a                                       ; $6118: $02
	ld d, d                                          ; $6119: $52
	ldh [rP1], a                                     ; $611a: $e0 $00
	sub h                                            ; $611c: $94
	push hl                                          ; $611d: $e5
	ld a, [hl+]                                      ; $611e: $2a
	nop                                              ; $611f: $00
	ret nc                                           ; $6120: $d0

	ld [bc], a                                       ; $6121: $02
	or b                                             ; $6122: $b0
	ld h, b                                          ; $6123: $60
	dec bc                                           ; $6124: $0b
	pop hl                                           ; $6125: $e1
	ld [bc], a                                       ; $6126: $02
	ld [bc], a                                       ; $6127: $02
	ld d, d                                          ; $6128: $52
	ldh [rP1], a                                     ; $6129: $e0 $00
	add l                                            ; $612b: $85
	push hl                                          ; $612c: $e5
	ld a, [hl+]                                      ; $612d: $2a
	ld bc, $029a                                     ; $612e: $01 $9a $02
	or b                                             ; $6131: $b0
	dec d                                            ; $6132: $15
	dec bc                                           ; $6133: $0b
	pop hl                                           ; $6134: $e1
	ld [bc], a                                       ; $6135: $02
	ld [bc], a                                       ; $6136: $02
	ld d, d                                          ; $6137: $52
	ldh [rP1], a                                     ; $6138: $e0 $00
	halt                                             ; $613a: $76
	push hl                                          ; $613b: $e5
	ld a, [hl+]                                      ; $613c: $2a
	ld [$0228], sp                                   ; $613d: $08 $28 $02
	or b                                             ; $6140: $b0
	ld h, c                                          ; $6141: $61
	dec bc                                           ; $6142: $0b
	pop hl                                           ; $6143: $e1
	ld [bc], a                                       ; $6144: $02
	ld [bc], a                                       ; $6145: $02
	ld d, d                                          ; $6146: $52
	ldh [rP1], a                                     ; $6147: $e0 $00
	ld h, a                                          ; $6149: $67
	push hl                                          ; $614a: $e5
	ld a, [hl+]                                      ; $614b: $2a
	ld a, [bc]                                       ; $614c: $0a
	and c                                            ; $614d: $a1
	ld [bc], a                                       ; $614e: $02
	or b                                             ; $614f: $b0
	ld h, d                                          ; $6150: $62
	dec bc                                           ; $6151: $0b
	pop hl                                           ; $6152: $e1
	ld [bc], a                                       ; $6153: $02
	ld [bc], a                                       ; $6154: $02
	ld d, d                                          ; $6155: $52
	ldh [rP1], a                                     ; $6156: $e0 $00
	ld e, b                                          ; $6158: $58
	push hl                                          ; $6159: $e5
	ld a, [hl+]                                      ; $615a: $2a
	dec bc                                           ; $615b: $0b
	db $ec                                           ; $615c: $ec
	ld [bc], a                                       ; $615d: $02
	or b                                             ; $615e: $b0
	ld h, e                                          ; $615f: $63
	dec bc                                           ; $6160: $0b
	pop hl                                           ; $6161: $e1
	ld [bc], a                                       ; $6162: $02
	ld [bc], a                                       ; $6163: $02
	ld d, d                                          ; $6164: $52
	ldh [rP1], a                                     ; $6165: $e0 $00
	ld c, c                                          ; $6167: $49
	push hl                                          ; $6168: $e5
	ld a, [hl+]                                      ; $6169: $2a
	dec c                                            ; $616a: $0d
	ld l, c                                          ; $616b: $69
	ld [bc], a                                       ; $616c: $02
	or b                                             ; $616d: $b0
	ld h, h                                          ; $616e: $64
	dec bc                                           ; $616f: $0b
	pop hl                                           ; $6170: $e1
	ld [bc], a                                       ; $6171: $02
	ld [bc], a                                       ; $6172: $02
	ld d, d                                          ; $6173: $52
	ldh [rP1], a                                     ; $6174: $e0 $00
	ld a, [hl-]                                      ; $6176: $3a
	push hl                                          ; $6177: $e5
	ld a, [hl+]                                      ; $6178: $2a
	ld c, $3f                                        ; $6179: $0e $3f
	ld [bc], a                                       ; $617b: $02
	or b                                             ; $617c: $b0
	ld h, l                                          ; $617d: $65
	rrca                                             ; $617e: $0f

jr_081_617f:
	nop                                              ; $617f: $00
	add b                                            ; $6180: $80
	and b                                            ; $6181: $a0
	nop                                              ; $6182: $00
	pop hl                                           ; $6183: $e1
	ld [bc], a                                       ; $6184: $02
	ld [bc], a                                       ; $6185: $02
	ld d, d                                          ; $6186: $52
	ldh [rP1], a                                     ; $6187: $e0 $00
	daa                                              ; $6189: $27
	push hl                                          ; $618a: $e5
	ld a, [hl+]                                      ; $618b: $2a
	rrca                                             ; $618c: $0f
	ld e, $02                                        ; $618d: $1e $02
	or b                                             ; $618f: $b0
	ld h, [hl]                                       ; $6190: $66
	dec bc                                           ; $6191: $0b
	pop hl                                           ; $6192: $e1
	ld [bc], a                                       ; $6193: $02
	ld [bc], a                                       ; $6194: $02
	ld d, d                                          ; $6195: $52
	ldh [rP1], a                                     ; $6196: $e0 $00
	jr jr_081_617f                                   ; $6198: $18 $e5

	ld a, [hl+]                                      ; $619a: $2a
	db $10                                           ; $619b: $10
	dec d                                            ; $619c: $15
	ld [bc], a                                       ; $619d: $02
	or b                                             ; $619e: $b0
	ld h, a                                          ; $619f: $67
	ld c, $c0                                        ; $61a0: $0e $c0
	and a                                            ; $61a2: $a7
	jp c, $d2d3                                      ; $61a3: $da $d3 $d2

	ret nz                                           ; $61a6: $c0

	xor h                                            ; $61a7: $ac
	ldh [rP1], a                                     ; $61a8: $e0 $00
	ld b, $e5                                        ; $61aa: $06 $e5
	ld a, [hl+]                                      ; $61ac: $2a
	db $10                                           ; $61ad: $10
	push hl                                          ; $61ae: $e5
	pop bc                                           ; $61af: $c1
	jp nz, $f861                                     ; $61b0: $c2 $61 $f8

	ret nz                                           ; $61b3: $c0

	add e                                            ; $61b4: $83
	sub $e0                                          ; $61b5: $d6 $e0
	ld e, $3d                                        ; $61b7: $1e $3d
	ret nz                                           ; $61b9: $c0

	and l                                            ; $61ba: $a5
	ret nz                                           ; $61bb: $c0

	inc c                                            ; $61bc: $0c
	ldh [$50], a                                     ; $61bd: $e0 $50
	pop hl                                           ; $61bf: $e1
	ld [bc], a                                       ; $61c0: $02
	inc bc                                           ; $61c1: $03
	rra                                              ; $61c2: $1f
	ret nz                                           ; $61c3: $c0

	ld bc, $06a0                                     ; $61c4: $01 $a0 $06
	nop                                              ; $61c7: $00
	ld bc, $5bc1                                     ; $61c8: $01 $c1 $5b
	ret nz                                           ; $61cb: $c0

	ld bc, $01a0                                     ; $61cc: $01 $a0 $01
	nop                                              ; $61cf: $00
	ld [bc], a                                       ; $61d0: $02
	ret nz                                           ; $61d1: $c0

	ld bc, $01a0                                     ; $61d2: $01 $a0 $01
	nop                                              ; $61d5: $00
	inc c                                            ; $61d6: $0c
	ret nz                                           ; $61d7: $c0

	ld bc, $01a0                                     ; $61d8: $01 $a0 $01
	nop                                              ; $61db: $00
	add hl, de                                       ; $61dc: $19
	ret nz                                           ; $61dd: $c0

	dec h                                            ; $61de: $25
	pop de                                           ; $61df: $d1
	jp c, $24c0                                      ; $61e0: $da $c0 $24

	pop de                                           ; $61e3: $d1
	jp c, $23c0                                      ; $61e4: $da $c0 $23

	push de                                          ; $61e7: $d5
	jp c, Jump_081_4cc1                              ; $61e8: $da $c1 $4c

	db $db                                           ; $61eb: $db
	pop bc                                           ; $61ec: $c1
	dec sp                                           ; $61ed: $3b
	ld b, b                                          ; $61ee: $40
	add b                                            ; $61ef: $80
	nop                                              ; $61f0: $00

jr_081_61f1:
	set 4, l                                         ; $61f1: $cb $e5
	nop                                              ; $61f3: $00
	jr nz, @-$26                                     ; $61f4: $20 $d8

	db $fc                                           ; $61f6: $fc
	ret nz                                           ; $61f7: $c0

	dec de                                           ; $61f8: $1b

jr_081_61f9:
	jp c, $1dd5                                      ; $61f9: $da $d5 $1d

	ret nz                                           ; $61fc: $c0

	inc c                                            ; $61fd: $0c
	ldh [$78], a                                     ; $61fe: $e0 $78
	pop hl                                           ; $6200: $e1
	ld [bc], a                                       ; $6201: $02
	rlca                                             ; $6202: $07
	cp a                                             ; $6203: $bf
	ret nz                                           ; $6204: $c0

	ld bc, $01a0                                     ; $6205: $01 $a0 $01
	nop                                              ; $6208: $00
	ld e, $c0                                        ; $6209: $1e $c0
	ld bc, $01a0                                     ; $620b: $01 $a0 $01
	nop                                              ; $620e: $00
	daa                                              ; $620f: $27
	pop bc                                           ; $6210: $c1
	ld c, h                                          ; $6211: $4c
	db $db                                           ; $6212: $db
	pop bc                                           ; $6213: $c1
	dec sp                                           ; $6214: $3b
	push hl                                          ; $6215: $e5
	nop                                              ; $6216: $00
	jr nz, jr_081_61f1                               ; $6217: $20 $d8

	xor h                                            ; $6219: $ac
	ret nz                                           ; $621a: $c0

	ld h, $e0                                        ; $621b: $26 $e0
	jr z, jr_081_61f9                                ; $621d: $28 $da

	ld h, c                                          ; $621f: $61
	add b                                            ; $6220: $80
	nop                                              ; $6221: $00
	db $db                                           ; $6222: $db
	ld b, e                                          ; $6223: $43
	ret nz                                           ; $6224: $c0

	and l                                            ; $6225: $a5
	ret nz                                           ; $6226: $c0

	ld bc, $01a0                                     ; $6227: $01 $a0 $01
	nop                                              ; $622a: $00
	ld sp, $c082                                     ; $622b: $31 $82 $c0
	dec de                                           ; $622e: $1b
	jp c, $d002                                      ; $622f: $da $02 $d0

	pop de                                           ; $6232: $d1
	inc c                                            ; $6233: $0c
	ret nz                                           ; $6234: $c0

	ld bc, $06a0                                     ; $6235: $01 $a0 $06
	nop                                              ; $6238: $00
	add hl, sp                                       ; $6239: $39
	ret nz                                           ; $623a: $c0

	ld bc, $01a0                                     ; $623b: $01 $a0 $01
	nop                                              ; $623e: $00
	ld b, c                                          ; $623f: $41
	ld [bc], a                                       ; $6240: $02
	jp nc, $0cd3                                     ; $6241: $d2 $d3 $0c

	ret nz                                           ; $6244: $c0

	ld bc, $06a0                                     ; $6245: $01 $a0 $06
	nop                                              ; $6248: $00
	ld c, c                                          ; $6249: $49
	ret nz                                           ; $624a: $c0

	ld bc, $01a0                                     ; $624b: $01 $a0 $01
	nop                                              ; $624e: $00
	ld c, a                                          ; $624f: $4f
	ld bc, $0cd4                                     ; $6250: $01 $d4 $0c
	ret nz                                           ; $6253: $c0

	ld bc, $06a0                                     ; $6254: $01 $a0 $06
	nop                                              ; $6257: $00
	ld d, e                                          ; $6258: $53
	ret nz                                           ; $6259: $c0

	ld bc, $01a0                                     ; $625a: $01 $a0 $01
	nop                                              ; $625d: $00
	ld e, h                                          ; $625e: $5c
	ret nz                                           ; $625f: $c0

	inc hl                                           ; $6260: $23
	ret c                                            ; $6261: $d8

	jp c, $8040                                      ; $6262: $da $40 $80

	nop                                              ; $6265: $00
	db $db                                           ; $6266: $db
	add b                                            ; $6267: $80
	ld [bc], a                                       ; $6268: $02
	dec l                                            ; $6269: $2d
	inc bc                                           ; $626a: $03
	ldh [rSB], a                                     ; $626b: $e0 $01
	rlca                                             ; $626d: $07
	ld c, [hl]                                       ; $626e: $4e
	or b                                             ; $626f: $b0
	adc l                                            ; $6270: $8d
	ld b, b                                          ; $6271: $40
	ret nz                                           ; $6272: $c0

	and l                                            ; $6273: $a5
	ret nz                                           ; $6274: $c0

	ld bc, $01a0                                     ; $6275: $01 $a0 $01
	nop                                              ; $6278: $00
	ld h, a                                          ; $6279: $67
	add d                                            ; $627a: $82
	ret nz                                           ; $627b: $c0

	dec de                                           ; $627c: $1b
	jp c, $d002                                      ; $627d: $da $02 $d0

	pop de                                           ; $6280: $d1
	ld de, $b2c1                                     ; $6281: $11 $c1 $b2
	db $e3                                           ; $6284: $e3
	nop                                              ; $6285: $00
	halt                                             ; $6286: $76
	ret nz                                           ; $6287: $c0

	ld bc, $06a0                                     ; $6288: $01 $a0 $06
	nop                                              ; $628b: $00
	ld l, d                                          ; $628c: $6a
	ret nz                                           ; $628d: $c0

	ld bc, $01a0                                     ; $628e: $01 $a0 $01
	nop                                              ; $6291: $00
	ld [hl], e                                       ; $6292: $73
	ld [bc], a                                       ; $6293: $02
	jp nc, $0cd3                                     ; $6294: $d2 $d3 $0c

	ret nz                                           ; $6297: $c0

	ld bc, $06a0                                     ; $6298: $01 $a0 $06
	nop                                              ; $629b: $00
	halt                                             ; $629c: $76
	ret nz                                           ; $629d: $c0

	ld bc, $01a0                                     ; $629e: $01 $a0 $01
	nop                                              ; $62a1: $00
	ld a, h                                          ; $62a2: $7c
	ld bc, $0cd4                                     ; $62a3: $01 $d4 $0c
	ret nz                                           ; $62a6: $c0

	ld bc, $06a0                                     ; $62a7: $01 $a0 $06
	nop                                              ; $62aa: $00
	ld a, a                                          ; $62ab: $7f
	ret nz                                           ; $62ac: $c0

	ld bc, $01a0                                     ; $62ad: $01 $a0 $01
	nop                                              ; $62b0: $00
	ld a, h                                          ; $62b1: $7c
	rst $38                                          ; $62b2: $ff
	add hl, bc                                       ; $62b3: $09
	ret nz                                           ; $62b4: $c0

	ld bc, $01a0                                     ; $62b5: $01 $a0 $01
	nop                                              ; $62b8: $00
	add l                                            ; $62b9: $85
	ldh [rP1], a                                     ; $62ba: $e0 $00
	cp b                                             ; $62bc: $b8
	pop hl                                           ; $62bd: $e1
	jr nc, jr_081_62c0                               ; $62be: $30 $00

jr_081_62c0:
	nop                                              ; $62c0: $00
	pop bc                                           ; $62c1: $c1
	ld c, h                                          ; $62c2: $4c
	jp c, Jump_081_4fc0                              ; $62c3: $da $c0 $4f

	ei                                               ; $62c6: $fb
	cp $09                                           ; $62c7: $fe $09
	db $fc                                           ; $62c9: $fc
	ret nz                                           ; $62ca: $c0

	ld h, l                                          ; $62cb: $65
	db $d3                                           ; $62cc: $d3
	db $fc                                           ; $62cd: $fc
	ret nz                                           ; $62ce: $c0

	ld h, [hl]                                       ; $62cf: $66
	ldh [$15], a                                     ; $62d0: $e0 $15
	inc c                                            ; $62d2: $0c
	ret nz                                           ; $62d3: $c0

	ld bc, $06a0                                     ; $62d4: $01 $a0 $06
	nop                                              ; $62d7: $00
	adc [hl]                                         ; $62d8: $8e
	ret nz                                           ; $62d9: $c0

	ld bc, $01a0                                     ; $62da: $01 $a0 $01
	nop                                              ; $62dd: $00
	sub a                                            ; $62de: $97
	ei                                               ; $62df: $fb
	cp $15                                           ; $62e0: $fe $15
	db $fc                                           ; $62e2: $fc
	ret nz                                           ; $62e3: $c0

	ld h, l                                          ; $62e4: $65
	rst SubAFromHL                                          ; $62e5: $d7
	rst $38                                          ; $62e6: $ff
	rrca                                             ; $62e7: $0f
	db $fc                                           ; $62e8: $fc
	ret nz                                           ; $62e9: $c0

	ld h, [hl]                                       ; $62ea: $66
	ldh [rAUD2HIGH], a                               ; $62eb: $e0 $19
	db $fc                                           ; $62ed: $fc
	ret nz                                           ; $62ee: $c0

	ld h, [hl]                                       ; $62ef: $66
	ldh [rAUD3ENA], a                                ; $62f0: $e0 $1a
	db $fc                                           ; $62f2: $fc
	ret nz                                           ; $62f3: $c0

	ld h, [hl]                                       ; $62f4: $66
	ldh [rAUD3LEN], a                                ; $62f5: $e0 $1b
	inc c                                            ; $62f7: $0c
	ret nz                                           ; $62f8: $c0

	ld bc, $06a0                                     ; $62f9: $01 $a0 $06
	nop                                              ; $62fc: $00
	sbc [hl]                                         ; $62fd: $9e
	ret nz                                           ; $62fe: $c0

	ld bc, $01a0                                     ; $62ff: $01 $a0 $01
	nop                                              ; $6302: $00
	and e                                            ; $6303: $a3
	ei                                               ; $6304: $fb
	cp $09                                           ; $6305: $fe $09
	db $fc                                           ; $6307: $fc
	ret nz                                           ; $6308: $c0

	ld h, l                                          ; $6309: $65
	reti                                             ; $630a: $d9


	db $fc                                           ; $630b: $fc
	ret nz                                           ; $630c: $c0

	ld h, [hl]                                       ; $630d: $66
	ldh [rAUD2ENV], a                                ; $630e: $e0 $17
	inc c                                            ; $6310: $0c
	ret nz                                           ; $6311: $c0

	ld bc, $06a0                                     ; $6312: $01 $a0 $06
	nop                                              ; $6315: $00
	xor b                                            ; $6316: $a8
	ret nz                                           ; $6317: $c0

	ld bc, $01a0                                     ; $6318: $01 $a0 $01
	nop                                              ; $631b: $00
	or a                                             ; $631c: $b7
	ei                                               ; $631d: $fb
	cp $10                                           ; $631e: $fe $10
	add b                                            ; $6320: $80
	nop                                              ; $6321: $00
	ret c                                            ; $6322: $d8

	db $fc                                           ; $6323: $fc
	ret nz                                           ; $6324: $c0

	ld h, h                                          ; $6325: $64
	ldh [$62], a                                     ; $6326: $e0 $62
	db $fc                                           ; $6328: $fc
	ret nz                                           ; $6329: $c0

	ld h, l                                          ; $632a: $65
	jp c, $c0fc                                      ; $632b: $da $fc $c0

	ld h, [hl]                                       ; $632e: $66
	call nc, $8129                                   ; $632f: $d4 $29 $81
	ret nz                                           ; $6332: $c0

	dec de                                           ; $6333: $1b
	jp c, $d002                                      ; $6334: $da $02 $d0

	pop de                                           ; $6337: $d1
	inc c                                            ; $6338: $0c
	ret nz                                           ; $6339: $c0

	ld bc, $06a0                                     ; $633a: $01 $a0 $06
	nop                                              ; $633d: $00
	cp e                                             ; $633e: $bb
	ret nz                                           ; $633f: $c0

	ld bc, $01a0                                     ; $6340: $01 $a0 $01
	nop                                              ; $6343: $00
	add $03                                          ; $6344: $c6 $03
	jp nc, $d4d3                                     ; $6346: $d2 $d3 $d4

	inc c                                            ; $6349: $0c
	ret nz                                           ; $634a: $c0

	ld bc, $06a0                                     ; $634b: $01 $a0 $06
	nop                                              ; $634e: $00
	call nc, $01c0                                   ; $634f: $d4 $c0 $01
	and b                                            ; $6352: $a0
	ld bc, $dd00                                     ; $6353: $01 $00 $dd
	ld b, b                                          ; $6356: $40
	add b                                            ; $6357: $80
	nop                                              ; $6358: $00
	ret c                                            ; $6359: $d8

	ei                                               ; $635a: $fb
	cp $09                                           ; $635b: $fe $09
	db $fc                                           ; $635d: $fc
	ret nz                                           ; $635e: $c0

	ld h, l                                          ; $635f: $65
	call c, $c0fc                                    ; $6360: $dc $fc $c0
	ld h, [hl]                                       ; $6363: $66
	ldh [rAUD2ENV], a                                ; $6364: $e0 $17
	inc c                                            ; $6366: $0c
	ret nz                                           ; $6367: $c0

	ld bc, $06a0                                     ; $6368: $01 $a0 $06
	nop                                              ; $636b: $00
	ldh [c], a                                       ; $636c: $e2
	ret nz                                           ; $636d: $c0

	ld bc, $01a0                                     ; $636e: $01 $a0 $01
	nop                                              ; $6371: $00
	add sp, $3d                                      ; $6372: $e8 $3d
	ret nz                                           ; $6374: $c0

	inc c                                            ; $6375: $0c
	ldh [$78], a                                     ; $6376: $e0 $78
	pop hl                                           ; $6378: $e1
	ld [bc], a                                       ; $6379: $02
	rlca                                             ; $637a: $07
	cp a                                             ; $637b: $bf
	ret nz                                           ; $637c: $c0

	and l                                            ; $637d: $a5
	add d                                            ; $637e: $82
	ret nz                                           ; $637f: $c0

	dec de                                           ; $6380: $1b
	jp c, $d002                                      ; $6381: $da $02 $d0

	pop de                                           ; $6384: $d1
	ld b, $c0                                        ; $6385: $06 $c0
	ld bc, $06a0                                     ; $6387: $01 $a0 $06
	nop                                              ; $638a: $00
	db $ed                                           ; $638b: $ed
	ld [bc], a                                       ; $638c: $02
	jp nc, $12d3                                     ; $638d: $d2 $d3 $12

	ld h, b                                          ; $6390: $60
	add b                                            ; $6391: $80
	and b                                            ; $6392: $a0
	nop                                              ; $6393: $00
	ld b, $c0                                        ; $6394: $06 $c0
	ld bc, $06a0                                     ; $6396: $01 $a0 $06
	nop                                              ; $6399: $00
	or $06                                           ; $639a: $f6 $06
	ret nz                                           ; $639c: $c0

	ld bc, $06a0                                     ; $639d: $01 $a0 $06
	ld bc, $0100                                     ; $63a0: $01 $00 $01
	call nc, $c006                                   ; $63a3: $d4 $06 $c0
	ld bc, $06a0                                     ; $63a6: $01 $a0 $06
	ld bc, $c00a                                     ; $63a9: $01 $0a $c0
	ld bc, $01a0                                     ; $63ac: $01 $a0 $01
	ld bc, $5b0f                                     ; $63af: $01 $0f $5b
	ld b, $09                                        ; $63b2: $06 $09
	inc h                                            ; $63b4: $24
	add d                                            ; $63b5: $82
	ret nz                                           ; $63b6: $c0

	dec de                                           ; $63b7: $1b
	jp c, $d002                                      ; $63b8: $da $02 $d0

	pop de                                           ; $63bb: $d1
	ld b, $c0                                        ; $63bc: $06 $c0
	ld bc, $06a0                                     ; $63be: $01 $a0 $06
	nop                                              ; $63c1: $00
	ld bc, $d202                                     ; $63c2: $01 $02 $d2
	db $d3                                           ; $63c5: $d3
	ld b, $c0                                        ; $63c6: $06 $c0
	ld bc, $06a0                                     ; $63c8: $01 $a0 $06
	nop                                              ; $63cb: $00
	dec bc                                           ; $63cc: $0b
	ld bc, $06d4                                     ; $63cd: $01 $d4 $06
	ret nz                                           ; $63d0: $c0

	ld bc, $06a0                                     ; $63d1: $01 $a0 $06
	nop                                              ; $63d4: $00
	inc de                                           ; $63d5: $13
	db $e4                                           ; $63d6: $e4
	nop                                              ; $63d7: $00
	ld [bc], a                                       ; $63d8: $02
	jr z, jr_081_63e1                                ; $63d9: $28 $06

	ret nz                                           ; $63db: $c0

	ld bc, $01a0                                     ; $63dc: $01 $a0 $01
	nop                                              ; $63df: $00
	inc e                                            ; $63e0: $1c

jr_081_63e1:
	ld e, h                                          ; $63e1: $5c
	nop                                              ; $63e2: $00
	ld hl, $4e09                                     ; $63e3: $21 $09 $4e
	add e                                            ; $63e6: $83
	ret nz                                           ; $63e7: $c0

	ld h, l                                          ; $63e8: $65
	ld bc, $0dd3                                     ; $63e9: $01 $d3 $0d
	ld h, b                                          ; $63ec: $60
	ld a, [$66c0]                                    ; $63ed: $fa $c0 $66
	rst SubAFromDE                                          ; $63f0: $df
	inc bc                                           ; $63f1: $03
	ldh [rP1], a                                     ; $63f2: $e0 $00
	ld h, b                                          ; $63f4: $60
	inc bc                                           ; $63f5: $03
	ldh [rP1], a                                     ; $63f6: $e0 $00
	ld b, a                                          ; $63f8: $47
	ld bc, $03d4                                     ; $63f9: $01 $d4 $03
	ldh [rP1], a                                     ; $63fc: $e0 $00
	ld b, c                                          ; $63fe: $41
	ld bc, $0dd5                                     ; $63ff: $01 $d5 $0d

Call_081_6402:
	ld h, b                                          ; $6402: $60
	ld a, [$66c0]                                    ; $6403: $fa $c0 $66
	rst SubAFromDE                                          ; $6406: $df
	inc bc                                           ; $6407: $03
	ldh [rP1], a                                     ; $6408: $e0 $00
	dec [hl]                                         ; $640a: $35
	inc bc                                           ; $640b: $03
	ldh [rP1], a                                     ; $640c: $e0 $00
	ld b, [hl]                                       ; $640e: $46
	nop                                              ; $640f: $00
	jr nz, @+$62                                     ; $6410: $20 $60

	add b                                            ; $6412: $80
	ld [bc], a                                       ; $6413: $02
	ld e, c                                          ; $6414: $59
	inc bc                                           ; $6415: $03
	ldh [rP1], a                                     ; $6416: $e0 $00
	ld l, h                                          ; $6418: $6c
	rla                                              ; $6419: $17
	ld h, b                                          ; $641a: $60
	cp $0c                                           ; $641b: $fe $0c
	ei                                               ; $641d: $fb
	ret nz                                           ; $641e: $c0

	dec d                                            ; $641f: $15
	jp c, Jump_081_50e0                              ; $6420: $da $e0 $50

	ei                                               ; $6423: $fb
	ret nz                                           ; $6424: $c0

	ld d, $da                                        ; $6425: $16 $da
	ldh [$5a], a                                     ; $6427: $e0 $5a
	inc bc                                           ; $6429: $03
	ldh [rP1], a                                     ; $642a: $e0 $00
	ld e, a                                          ; $642c: $5f
	inc bc                                           ; $642d: $03
	ldh [rP1], a                                     ; $642e: $e0 $00
	inc h                                            ; $6430: $24
	db $e4                                           ; $6431: $e4
	nop                                              ; $6432: $00
	adc d                                            ; $6433: $8a
	nop                                              ; $6434: $00
	inc hl                                           ; $6435: $23
	add hl, bc                                       ; $6436: $09
	ld b, $e0                                        ; $6437: $06 $e0
	nop                                              ; $6439: $00
	ld e, b                                          ; $643a: $58
	db $e4                                           ; $643b: $e4
	nop                                              ; $643c: $00
	add b                                            ; $643d: $80
	inc d                                            ; $643e: $14
	ld h, b                                          ; $643f: $60
	add b                                            ; $6440: $80
	ld [bc], a                                       ; $6441: $02
	ld e, c                                          ; $6442: $59
	dec bc                                           ; $6443: $0b
	or b                                             ; $6444: $b0
	ld a, a                                          ; $6445: $7f
	inc bc                                           ; $6446: $03
	ldh [rP1], a                                     ; $6447: $e0 $00
	dec h                                            ; $6449: $25
	rst $38                                          ; $644a: $ff
	inc bc                                           ; $644b: $03
	ldh [rP1], a                                     ; $644c: $e0 $00
	ld [hl], $03                                     ; $644e: $36 $03
	ldh [rP1], a                                     ; $6450: $e0 $00
	inc e                                            ; $6452: $1c
	add hl, de                                       ; $6453: $19
	or c                                             ; $6454: $b1
	ld d, h                                          ; $6455: $54
	ld b, $c0                                        ; $6456: $06 $c0
	ld bc, $01a0                                     ; $6458: $01 $a0 $01
	nop                                              ; $645b: $00
	dec h                                            ; $645c: $25
	xor d                                            ; $645d: $aa
	ld b, $c0                                        ; $645e: $06 $c0
	ld bc, $01a0                                     ; $6460: $01 $a0 $01
	nop                                              ; $6463: $00
	jr nc, @+$01                                     ; $6464: $30 $ff

	ld b, $c0                                        ; $6466: $06 $c0
	ld bc, $01a0                                     ; $6468: $01 $a0 $01
	nop                                              ; $646b: $00
	add hl, sp                                       ; $646c: $39
	dec d                                            ; $646d: $15
	add c                                            ; $646e: $81
	ret nz                                           ; $646f: $c0

	add b                                            ; $6470: $80
	ld bc, $06d3                                     ; $6471: $01 $d3 $06
	ret nz                                           ; $6474: $c0

	ld bc, $01a0                                     ; $6475: $01 $a0 $01
	nop                                              ; $6478: $00
	ld b, d                                          ; $6479: $42
	ld bc, $06d2                                     ; $647a: $01 $d2 $06
	ret nz                                           ; $647d: $c0

	ld bc, $01a0                                     ; $647e: $01 $a0 $01
	nop                                              ; $6481: $00
	ld c, h                                          ; $6482: $4c
	ld b, $c0                                        ; $6483: $06 $c0
	ld bc, $01a0                                     ; $6485: $01 $a0 $01
	nop                                              ; $6488: $00
	ld e, e                                          ; $6489: $5b
	ld b, $c0                                        ; $648a: $06 $c0
	ld bc, $01a0                                     ; $648c: $01 $a0 $01
	nop                                              ; $648f: $00
	ld h, [hl]                                       ; $6490: $66
	ld a, [hl+]                                      ; $6491: $2a
	rst $38                                          ; $6492: $ff
	jr z, @+$34                                      ; $6493: $28 $32

	ld b, $c0                                        ; $6495: $06 $c0
	ld bc, $01a0                                     ; $6497: $01 $a0 $01
	nop                                              ; $649a: $00
	ld [hl], h                                       ; $649b: $74
	ld h, l                                          ; $649c: $65
	ld b, $c0                                        ; $649d: $06 $c0
	ld bc, $01a0                                     ; $649f: $01 $a0 $01
	nop                                              ; $64a2: $00
	ld a, e                                          ; $64a3: $7b
	sbc c                                            ; $64a4: $99
	ld b, $c0                                        ; $64a5: $06 $c0
	ld bc, $01a0                                     ; $64a7: $01 $a0 $01
	nop                                              ; $64aa: $00
	add d                                            ; $64ab: $82
	call z, $c006                                    ; $64ac: $cc $06 $c0
	ld bc, $01a0                                     ; $64af: $01 $a0 $01
	nop                                              ; $64b2: $00
	adc b                                            ; $64b3: $88
	rst $38                                          ; $64b4: $ff
	ld b, $c0                                        ; $64b5: $06 $c0
	ld bc, $01a0                                     ; $64b7: $01 $a0 $01
	nop                                              ; $64ba: $00
	sub h                                            ; $64bb: $94
	add hl, bc                                       ; $64bc: $09
	ld c, $d0                                        ; $64bd: $0e $d0
	add d                                            ; $64bf: $82
	ld bc, $d3d8                                     ; $64c0: $01 $d8 $d3
	ret nz                                           ; $64c3: $c0

	ld d, [hl]                                       ; $64c4: $56
	jp c, $d0d0                                      ; $64c5: $da $d0 $d0

	push hl                                          ; $64c8: $e5
	dec hl                                           ; $64c9: $2b
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	add hl, bc                                       ; $64cc: $09
	ld d, e                                          ; $64cd: $53
	add d                                            ; $64ce: $82
	ret nz                                           ; $64cf: $c0

	ld l, d                                          ; $64d0: $6a
	ld bc, $26d0                                     ; $64d1: $01 $d0 $26
	add c                                            ; $64d4: $81
	ret nz                                           ; $64d5: $c0

	ld h, l                                          ; $64d6: $65
	ld [bc], a                                       ; $64d7: $02
	db $d3                                           ; $64d8: $d3
	call nc, $d01a                                   ; $64d9: $d4 $1a $d0
	add e                                            ; $64dc: $83
	ld bc, $d1de                                     ; $64dd: $01 $de $d1

Call_081_64e0:
	ret nz                                           ; $64e0: $c0

	ld bc, $06a0                                     ; $64e1: $01 $a0 $06
	nop                                              ; $64e4: $00
	sbc [hl]                                         ; $64e5: $9e
	ret nz                                           ; $64e6: $c0

	ld bc, $01a0                                     ; $64e7: $01 $a0 $01
	nop                                              ; $64ea: $00
	and l                                            ; $64eb: $a5
	ret nz                                           ; $64ec: $c0

	ld bc, $06a0                                     ; $64ed: $01 $a0 $06
	nop                                              ; $64f0: $00
	xor b                                            ; $64f1: $a8
	db $e4                                           ; $64f2: $e4
	nop                                              ; $64f3: $00
	db $fc                                           ; $64f4: $fc
	nop                                              ; $64f5: $00
	inc bc                                           ; $64f6: $03
	ldh [rP1], a                                     ; $64f7: $e0 $00
	add hl, hl                                       ; $64f9: $29
	ld bc, $1fd1                                     ; $64fa: $01 $d1 $1f
	add c                                            ; $64fd: $81
	ret nz                                           ; $64fe: $c0

	inc e                                            ; $64ff: $1c
	jp c, wCurrMenuOption                                      ; $6500: $da $01 $d2

	inc de                                           ; $6503: $13
	and b                                            ; $6504: $a0
	add b                                            ; $6505: $80
	and b                                            ; $6506: $a0
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	ld [$83d0], sp                                   ; $6509: $08 $d0 $83
	ld bc, $d0de                                     ; $650c: $01 $de $d0
	db $e4                                           ; $650f: $e4
	ld bc, $ff2c                                     ; $6510: $01 $2c $ff
	inc bc                                           ; $6513: $03
	ldh [rP1], a                                     ; $6514: $e0 $00
	inc c                                            ; $6516: $0c
	nop                                              ; $6517: $00
	inc bc                                           ; $6518: $03
	ldh [rP1], a                                     ; $6519: $e0 $00
	rlca                                             ; $651b: $07
	nop                                              ; $651c: $00
	inc bc                                           ; $651d: $03
	ldh [rP1], a                                     ; $651e: $e0 $00
	ld [bc], a                                       ; $6520: $02
	dec [hl]                                         ; $6521: $35
	ret nc                                           ; $6522: $d0

	add e                                            ; $6523: $83
	ld bc, $d0de                                     ; $6524: $01 $de $d0
	ret nz                                           ; $6527: $c0

	ld bc, $06a0                                     ; $6528: $01 $a0 $06
	nop                                              ; $652b: $00
	xor l                                            ; $652c: $ad
	and b                                            ; $652d: $a0
	add b                                            ; $652e: $80
	and b                                            ; $652f: $a0
	ld bc, $0f00                                     ; $6530: $01 $00 $0f
	ret nz                                           ; $6533: $c0

	ld bc, $01a0                                     ; $6534: $01 $a0 $01
	nop                                              ; $6537: $00
	or [hl]                                          ; $6538: $b6
	ret nz                                           ; $6539: $c0

	ld bc, $06a0                                     ; $653a: $01 $a0 $06
	nop                                              ; $653d: $00
	cp e                                             ; $653e: $bb
	db $e4                                           ; $653f: $e4
	nop                                              ; $6540: $00
	rla                                              ; $6541: $17
	rst $38                                          ; $6542: $ff
	inc de                                           ; $6543: $13
	ret nz                                           ; $6544: $c0

	ld bc, $01a0                                     ; $6545: $01 $a0 $01
	nop                                              ; $6548: $00
	cp l                                             ; $6549: $bd
	ret nz                                           ; $654a: $c0

	ld bc, $06a0                                     ; $654b: $01 $a0 $06
	nop                                              ; $654e: $00
	cp e                                             ; $654f: $bb
	ld b, b                                          ; $6550: $40
	add b                                            ; $6551: $80
	and b                                            ; $6552: $a0
	ld bc, $00e4                                     ; $6553: $01 $e4 $00
	ld c, [hl]                                       ; $6556: $4e
	jr z, @+$0c                                      ; $6557: $28 $0a

	pop hl                                           ; $6559: $e1
	ld [bc], a                                       ; $655a: $02
	dec b                                            ; $655b: $05
	dec b                                            ; $655c: $05
	ret nz                                           ; $655d: $c0

	ld bc, $06a0                                     ; $655e: $01 $a0 $06
	nop                                              ; $6561: $00
	jp nz, $003f                                     ; $6562: $c2 $3f $00

	call z, $1109                                    ; $6565: $cc $09 $11
	pop hl                                           ; $6568: $e1
	ld [bc], a                                       ; $6569: $02
	inc bc                                           ; $656a: $03
	inc de                                           ; $656b: $13
	ret nz                                           ; $656c: $c0

	ld bc, $06a0                                     ; $656d: $01 $a0 $06
	nop                                              ; $6570: $00
	adc $e1                                          ; $6571: $ce $e1
	ld [bc], a                                       ; $6573: $02
	inc b                                            ; $6574: $04
	ld b, h                                          ; $6575: $44
	db $e4                                           ; $6576: $e4
	ld bc, $0079                                     ; $6577: $01 $79 $00
	sbc $09                                          ; $657a: $de $09
	ld de, $02e1                                     ; $657c: $11 $e1 $02
	inc bc                                           ; $657f: $03
	dec de                                           ; $6580: $1b
	ret nz                                           ; $6581: $c0

	ld bc, $06a0                                     ; $6582: $01 $a0 $06
	nop                                              ; $6585: $00
	ldh [$e1], a                                     ; $6586: $e0 $e1
	ld [bc], a                                       ; $6588: $02
	inc b                                            ; $6589: $04
	ld d, [hl]                                       ; $658a: $56
	db $e4                                           ; $658b: $e4
	ld bc, $0064                                     ; $658c: $01 $64 $00
	db $eb                                           ; $658f: $eb
	add hl, bc                                       ; $6590: $09
	ld de, $02e1                                     ; $6591: $11 $e1 $02
	inc bc                                           ; $6594: $03
	rla                                              ; $6595: $17
	ret nz                                           ; $6596: $c0

	ld bc, $06a0                                     ; $6597: $01 $a0 $06
	nop                                              ; $659a: $00
	ldh a, [$e1]                                     ; $659b: $f0 $e1
	ld [bc], a                                       ; $659d: $02
	inc b                                            ; $659e: $04
	ld c, l                                          ; $659f: $4d
	db $e4                                           ; $65a0: $e4
	ld bc, $284f                                     ; $65a1: $01 $4f $28
	ld a, [bc]                                       ; $65a4: $0a
	pop hl                                           ; $65a5: $e1
	ld [bc], a                                       ; $65a6: $02
	dec b                                            ; $65a7: $05
	rla                                              ; $65a8: $17
	ret nz                                           ; $65a9: $c0

	ld bc, $06a0                                     ; $65aa: $01 $a0 $06
	nop                                              ; $65ad: $00
	db $f4                                           ; $65ae: $f4
	ccf                                              ; $65af: $3f
	nop                                              ; $65b0: $00
	db $fd                                           ; $65b1: $fd
	add hl, bc                                       ; $65b2: $09
	ld de, $02e1                                     ; $65b3: $11 $e1 $02
	inc bc                                           ; $65b6: $03
	inc de                                           ; $65b7: $13
	ret nz                                           ; $65b8: $c0

	ld bc, $06a0                                     ; $65b9: $01 $a0 $06
	nop                                              ; $65bc: $00
	rst $38                                          ; $65bd: $ff
	pop hl                                           ; $65be: $e1
	ld [bc], a                                       ; $65bf: $02
	inc b                                            ; $65c0: $04
	dec sp                                           ; $65c1: $3b
	db $e4                                           ; $65c2: $e4
	ld bc, $012d                                     ; $65c3: $01 $2d $01
	add hl, bc                                       ; $65c6: $09
	add hl, bc                                       ; $65c7: $09
	ld de, $02e1                                     ; $65c8: $11 $e1 $02
	inc bc                                           ; $65cb: $03
	dec de                                           ; $65cc: $1b
	ret nz                                           ; $65cd: $c0

	ld bc, $06a0                                     ; $65ce: $01 $a0 $06
	ld bc, $e10f                                     ; $65d1: $01 $0f $e1
	ld [bc], a                                       ; $65d4: $02
	inc b                                            ; $65d5: $04
	ld d, [hl]                                       ; $65d6: $56
	db $e4                                           ; $65d7: $e4
	ld bc, $0118                                     ; $65d8: $01 $18 $01
	ld d, $09                                        ; $65db: $16 $09
	ld de, $02e1                                     ; $65dd: $11 $e1 $02
	inc bc                                           ; $65e0: $03
	inc de                                           ; $65e1: $13
	ret nz                                           ; $65e2: $c0

	ld bc, $06a0                                     ; $65e3: $01 $a0 $06
	ld bc, $e118                                     ; $65e6: $01 $18 $e1
	ld [bc], a                                       ; $65e9: $02
	inc b                                            ; $65ea: $04
	ld b, h                                          ; $65eb: $44
	db $e4                                           ; $65ec: $e4
	ld bc, $2803                                     ; $65ed: $01 $03 $28
	dec bc                                           ; $65f0: $0b
	pop bc                                           ; $65f1: $c1
	ld e, c                                          ; $65f2: $59
	db $e3                                           ; $65f3: $e3
	nop                                              ; $65f4: $00
	add h                                            ; $65f5: $84
	ret nz                                           ; $65f6: $c0

	ld bc, $06a0                                     ; $65f7: $01 $a0 $06
	ld bc, $3f29                                     ; $65fa: $01 $29 $3f
	ld bc, $0938                                     ; $65fd: $01 $38 $09
	ld de, $02e1                                     ; $6600: $11 $e1 $02
	inc bc                                           ; $6603: $03
	rrca                                             ; $6604: $0f
	ret nz                                           ; $6605: $c0

	ld bc, $06a0                                     ; $6606: $01 $a0 $06
	ld bc, $e13a                                     ; $6609: $01 $3a $e1
	ld [bc], a                                       ; $660c: $02
	inc b                                            ; $660d: $04
	dec sp                                           ; $660e: $3b
	db $e4                                           ; $660f: $e4
	nop                                              ; $6610: $00
	ldh [rSB], a                                     ; $6611: $e0 $01
	ld b, l                                          ; $6613: $45
	add hl, bc                                       ; $6614: $09
	ld de, $02e1                                     ; $6615: $11 $e1 $02
	inc bc                                           ; $6618: $03
	rra                                              ; $6619: $1f
	ret nz                                           ; $661a: $c0

	ld bc, $06a0                                     ; $661b: $01 $a0 $06
	ld bc, $e147                                     ; $661e: $01 $47 $e1
	ld [bc], a                                       ; $6621: $02
	inc b                                            ; $6622: $04
	ld e, a                                          ; $6623: $5f
	db $e4                                           ; $6624: $e4
	nop                                              ; $6625: $00
	rlc c                                            ; $6626: $cb $01
	ld d, b                                          ; $6628: $50
	add hl, bc                                       ; $6629: $09
	ld de, $02e1                                     ; $662a: $11 $e1 $02
	inc bc                                           ; $662d: $03
	rla                                              ; $662e: $17
	ret nz                                           ; $662f: $c0

	ld bc, $06a0                                     ; $6630: $01 $a0 $06
	ld bc, $e152                                     ; $6633: $01 $52 $e1
	ld [bc], a                                       ; $6636: $02
	inc b                                            ; $6637: $04
	ld c, l                                          ; $6638: $4d
	db $e4                                           ; $6639: $e4
	nop                                              ; $663a: $00
	or [hl]                                          ; $663b: $b6
	add hl, bc                                       ; $663c: $09
	or d                                             ; $663d: $b2
	ret nz                                           ; $663e: $c0

	ld bc, $06a0                                     ; $663f: $01 $a0 $06
	ld bc, $c063                                     ; $6642: $01 $63 $c0
	ld bc, $01a0                                     ; $6645: $01 $a0 $01
	ld bc, $e16d                                     ; $6648: $01 $6d $e1
	ld [bc], a                                       ; $664b: $02
	inc bc                                           ; $664c: $03
	dec de                                           ; $664d: $1b
	ret nz                                           ; $664e: $c0

	ld bc, $06a0                                     ; $664f: $01 $a0 $06
	ld bc, $c079                                     ; $6652: $01 $79 $c0
	ld bc, $01a0                                     ; $6655: $01 $a0 $01
	ld bc, $e17f                                     ; $6658: $01 $7f $e1
	ld [bc], a                                       ; $665b: $02
	inc bc                                           ; $665c: $03
	inc de                                           ; $665d: $13
	ret nz                                           ; $665e: $c0

	ld bc, $06a0                                     ; $665f: $01 $a0 $06
	ld bc, $e187                                     ; $6662: $01 $87 $e1
	ld [bc], a                                       ; $6665: $02
	dec b                                            ; $6666: $05
	rla                                              ; $6667: $17
	ret nz                                           ; $6668: $c0

	ld bc, $06a0                                     ; $6669: $01 $a0 $06
	ld bc, $c088                                     ; $666c: $01 $88 $c0
	ld bc, $01a0                                     ; $666f: $01 $a0 $01
	ld bc, $c090                                     ; $6672: $01 $90 $c0
	set 0, c                                         ; $6675: $cb $c1
	ld e, e                                          ; $6677: $5b
	ret nz                                           ; $6678: $c0

	rrca                                             ; $6679: $0f
	db $e3                                           ; $667a: $e3
	ld bc, $c008                                     ; $667b: $01 $08 $c0
	ld bc, $01a0                                     ; $667e: $01 $a0 $01
	ld bc, $c0a1                                     ; $6681: $01 $a1 $c0
	ld bc, $06a0                                     ; $6684: $01 $a0 $06
	ld bc, $c0a8                                     ; $6687: $01 $a8 $c0
	ld bc, $01a0                                     ; $668a: $01 $a0 $01
	ld bc, $c0ae                                     ; $668d: $01 $ae $c0
	ld bc, $06a0                                     ; $6690: $01 $a0 $06
	ld bc, $c0b3                                     ; $6693: $01 $b3 $c0
	ld bc, $01a0                                     ; $6696: $01 $a0 $01
	ld bc, $c0c1                                     ; $6699: $01 $c1 $c0
	ld bc, $06a0                                     ; $669c: $01 $a0 $06
	ld bc, $c0c4                                     ; $669f: $01 $c4 $c0
	ld bc, $01a0                                     ; $66a2: $01 $a0 $01
	ld bc, $c0cb                                     ; $66a5: $01 $cb $c0
	ld bc, $06a0                                     ; $66a8: $01 $a0 $06
	ld bc, $c0d8                                     ; $66ab: $01 $d8 $c0
	ld bc, $01a0                                     ; $66ae: $01 $a0 $01
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $66b1: $01 $e4 $c0
	ld bc, $06a0                                     ; $66b4: $01 $a0 $06
	ld bc, $c0f3                                     ; $66b7: $01 $f3 $c0
	ld bc, $01a0                                     ; $66ba: $01 $a0 $01
	ld bc, $c0fd                                     ; $66bd: $01 $fd $c0
	ld bc, $06a0                                     ; $66c0: $01 $a0 $06
	ld [bc], a                                       ; $66c3: $02
	inc bc                                           ; $66c4: $03
	ret nz                                           ; $66c5: $c0

	ld bc, $01a0                                     ; $66c6: $01 $a0 $01
	ld [bc], a                                       ; $66c9: $02
	add hl, bc                                       ; $66ca: $09
	ret nz                                           ; $66cb: $c0

	set 0, b                                         ; $66cc: $cb $c0
	ld de, $00e3                                     ; $66ce: $11 $e3 $00
	add b                                            ; $66d1: $80
	pop bc                                           ; $66d2: $c1
	ld e, h                                          ; $66d3: $5c
	ret nz                                           ; $66d4: $c0

	jp z, $82d0                                      ; $66d5: $ca $d0 $82

	ld bc, $d2d8                                     ; $66d8: $01 $d8 $d2
	pop hl                                           ; $66db: $e1
	ld [bc], a                                       ; $66dc: $02
	inc b                                            ; $66dd: $04
	pop de                                           ; $66de: $d1
	ret nz                                           ; $66df: $c0

	ld d, c                                          ; $66e0: $51
	db $d3                                           ; $66e1: $d3
	ret nz                                           ; $66e2: $c0

	ld d, b                                          ; $66e3: $50
	jp nc, $55c0                                     ; $66e4: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $66e7: $e0 $14
	pop bc                                           ; $66e9: $c1
	ld l, e                                          ; $66ea: $6b
	sub $da                                          ; $66eb: $d6 $da
	db $e4                                           ; $66ed: $e4
	nop                                              ; $66ee: $00
	dec bc                                           ; $66ef: $0b
	add hl, bc                                       ; $66f0: $09
	rlca                                             ; $66f1: $07
	pop hl                                           ; $66f2: $e1
	ld [bc], a                                       ; $66f3: $02
	dec b                                            ; $66f4: $05
	add hl, hl                                       ; $66f5: $29
	db $e4                                           ; $66f6: $e4
	nop                                              ; $66f7: $00
	ld [bc], a                                       ; $66f8: $02
	add hl, bc                                       ; $66f9: $09
	rla                                              ; $66fa: $17

jr_081_66fb:
	add c                                            ; $66fb: $81
	ret nz                                           ; $66fc: $c0

	ld h, l                                          ; $66fd: $65
	ld [bc], a                                       ; $66fe: $02
	db $d3                                           ; $66ff: $d3
	call nc, $c005                                   ; $6700: $d4 $05 $c0
	ld d, [hl]                                       ; $6703: $56
	jp c, $d1d1                                      ; $6704: $da $d1 $d1

	nop                                              ; $6707: $00
	dec b                                            ; $6708: $05
	ret nz                                           ; $6709: $c0

	ld d, [hl]                                       ; $670a: $56
	jp c, $d0d1                                      ; $670b: $da $d1 $d0

	push hl                                          ; $670e: $e5
	dec hl                                           ; $670f: $2b
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	jr z, @+$08                                      ; $6712: $28 $06

	ret nz                                           ; $6714: $c0

	ld bc, $06a0                                     ; $6715: $01 $a0 $06
	ld [bc], a                                       ; $6718: $02
	ld d, $4c                                        ; $6719: $16 $4c
	ld [bc], a                                       ; $671b: $02
	ld e, $09                                        ; $671c: $1e $09
	inc d                                            ; $671e: $14
	ret nc                                           ; $671f: $d0

jr_081_6720:
	add e                                            ; $6720: $83
	ld bc, $d0de                                     ; $6721: $01 $de $d0
	ret nz                                           ; $6724: $c0

	ld bc, $06a0                                     ; $6725: $01 $a0 $06
	ld [bc], a                                       ; $6728: $02
	jr nz, jr_081_66fb                               ; $6729: $20 $d0

	adc e                                            ; $672b: $8b
	and b                                            ; $672c: $a0
	ld [bc], a                                       ; $672d: $02
	or b                                             ; $672e: $b0
	add d                                            ; $672f: $82
	db $e4                                           ; $6730: $e4
	nop                                              ; $6731: $00
	ld [hl], $02                                     ; $6732: $36 $02
	jr z, @+$0b                                      ; $6734: $28 $09

	inc d                                            ; $6736: $14
	ret nc                                           ; $6737: $d0

	add e                                            ; $6738: $83
	ld bc, $d1de                                     ; $6739: $01 $de $d1
	ret nz                                           ; $673c: $c0

	ld bc, $06a0                                     ; $673d: $01 $a0 $06
	ld [bc], a                                       ; $6740: $02
	ld a, [hl+]                                      ; $6741: $2a
	ret nc                                           ; $6742: $d0

	adc e                                            ; $6743: $8b
	and b                                            ; $6744: $a0
	ld [bc], a                                       ; $6745: $02
	or b                                             ; $6746: $b0
	add e                                            ; $6747: $83
	db $e4                                           ; $6748: $e4
	nop                                              ; $6749: $00
	jp nc, $2f02                                     ; $674a: $d2 $02 $2f

	add hl, bc                                       ; $674d: $09
	jr jr_081_6720                                   ; $674e: $18 $d0

	add e                                            ; $6750: $83
	ld bc, $d2de                                     ; $6751: $01 $de $d2
	pop hl                                           ; $6754: $e1
	ld [bc], a                                       ; $6755: $02
	inc bc                                           ; $6756: $03
	dec de                                           ; $6757: $1b
	ret nz                                           ; $6758: $c0

	ld bc, $06a0                                     ; $6759: $01 $a0 $06
	ld [bc], a                                       ; $675c: $02
	ld sp, $8bd0                                     ; $675d: $31 $d0 $8b
	and b                                            ; $6760: $a0
	ld [bc], a                                       ; $6761: $02
	or b                                             ; $6762: $b0
	add h                                            ; $6763: $84
	db $e4                                           ; $6764: $e4
	ld bc, $0964                                     ; $6765: $01 $64 $09
	inc e                                            ; $6768: $1c
	pop bc                                           ; $6769: $c1
	ld e, c                                          ; $676a: $59
	db $e3                                           ; $676b: $e3
	nop                                              ; $676c: $00
	and b                                            ; $676d: $a0
	ret nz                                           ; $676e: $c0

	add hl, bc                                       ; $676f: $09
	db $e3                                           ; $6770: $e3
	nop                                              ; $6771: $00
	inc e                                            ; $6772: $1c
	and b                                            ; $6773: $a0
	add b                                            ; $6774: $80
	and b                                            ; $6775: $a0
	ld c, $00                                        ; $6776: $0e $00
	inc bc                                           ; $6778: $03
	db $e4                                           ; $6779: $e4
	nop                                              ; $677a: $00
	dec bc                                           ; $677b: $0b
	rst $38                                          ; $677c: $ff
	rlca                                             ; $677d: $07
	ld b, b                                          ; $677e: $40
	add b                                            ; $677f: $80
	and b                                            ; $6780: $a0
	ld c, $e4                                        ; $6781: $0e $e4
	nop                                              ; $6783: $00
	ld c, d                                          ; $6784: $4a
	jr z, jr_081_678d                                ; $6785: $28 $06

	ret nz                                           ; $6787: $c0

	ld bc, $06a0                                     ; $6788: $01 $a0 $06
	ld [bc], a                                       ; $678b: $02
	ccf                                              ; $678c: $3f

jr_081_678d:
	ccf                                              ; $678d: $3f
	ld [bc], a                                       ; $678e: $02
	ld d, l                                          ; $678f: $55
	add hl, bc                                       ; $6790: $09
	ld de, $02e1                                     ; $6791: $11 $e1 $02
	inc bc                                           ; $6794: $03
	inc de                                           ; $6795: $13
	ret nz                                           ; $6796: $c0

	ld bc, $06a0                                     ; $6797: $01 $a0 $06
	ld [bc], a                                       ; $679a: $02
	ld e, d                                          ; $679b: $5a
	pop hl                                           ; $679c: $e1
	ld [bc], a                                       ; $679d: $02
	inc b                                            ; $679e: $04
	dec sp                                           ; $679f: $3b
	db $e4                                           ; $67a0: $e4
	ld bc, $02de                                     ; $67a1: $01 $de $02
	ld h, l                                          ; $67a4: $65
	add hl, bc                                       ; $67a5: $09
	ld de, $02e1                                     ; $67a6: $11 $e1 $02
	inc bc                                           ; $67a9: $03
	rra                                              ; $67aa: $1f
	ret nz                                           ; $67ab: $c0

	ld bc, $06a0                                     ; $67ac: $01 $a0 $06
	ld [bc], a                                       ; $67af: $02
	ld l, b                                          ; $67b0: $68
	pop hl                                           ; $67b1: $e1
	ld [bc], a                                       ; $67b2: $02
	inc b                                            ; $67b3: $04
	ld e, a                                          ; $67b4: $5f
	db $e4                                           ; $67b5: $e4
	ld bc, $02c9                                     ; $67b6: $01 $c9 $02
	ld [hl], e                                       ; $67b9: $73
	add hl, bc                                       ; $67ba: $09
	ld de, $02e1                                     ; $67bb: $11 $e1 $02
	inc bc                                           ; $67be: $03
	rla                                              ; $67bf: $17
	ret nz                                           ; $67c0: $c0

	ld bc, $06a0                                     ; $67c1: $01 $a0 $06
	ld [bc], a                                       ; $67c4: $02
	ld a, c                                          ; $67c5: $79
	pop hl                                           ; $67c6: $e1
	ld [bc], a                                       ; $67c7: $02
	inc b                                            ; $67c8: $04
	ld c, l                                          ; $67c9: $4d
	db $e4                                           ; $67ca: $e4
	ld bc, $28b4                                     ; $67cb: $01 $b4 $28
	ld b, $c0                                        ; $67ce: $06 $c0
	ld bc, $06a0                                     ; $67d0: $01 $a0 $06
	ld [bc], a                                       ; $67d3: $02
	adc c                                            ; $67d4: $89
	ld b, l                                          ; $67d5: $45
	ld [bc], a                                       ; $67d6: $02
	sub d                                            ; $67d7: $92
	add hl, bc                                       ; $67d8: $09
	rla                                              ; $67d9: $17
	pop hl                                           ; $67da: $e1
	ld [bc], a                                       ; $67db: $02
	inc bc                                           ; $67dc: $03
	inc de                                           ; $67dd: $13
	ret nz                                           ; $67de: $c0

	ld bc, $06a0                                     ; $67df: $01 $a0 $06
	ld [bc], a                                       ; $67e2: $02
	sub [hl]                                         ; $67e3: $96
	ret nz                                           ; $67e4: $c0

	ld bc, $01a0                                     ; $67e5: $01 $a0 $01
	ld [bc], a                                       ; $67e8: $02
	and h                                            ; $67e9: $a4
	pop hl                                           ; $67ea: $e1
	ld [bc], a                                       ; $67eb: $02
	inc b                                            ; $67ec: $04
	ld b, h                                          ; $67ed: $44
	db $e4                                           ; $67ee: $e4
	ld bc, $0290                                     ; $67ef: $01 $90 $02
	xor l                                            ; $67f2: $ad
	add hl, bc                                       ; $67f3: $09
	ld de, $02e1                                     ; $67f4: $11 $e1 $02
	inc bc                                           ; $67f7: $03
	dec de                                           ; $67f8: $1b
	ret nz                                           ; $67f9: $c0

	ld bc, $06a0                                     ; $67fa: $01 $a0 $06
	ld [bc], a                                       ; $67fd: $02
	or h                                             ; $67fe: $b4
	pop hl                                           ; $67ff: $e1
	ld [bc], a                                       ; $6800: $02
	inc b                                            ; $6801: $04
	ld d, [hl]                                       ; $6802: $56
	db $e4                                           ; $6803: $e4
	ld bc, $027b                                     ; $6804: $01 $7b $02
	cp l                                             ; $6807: $bd
	add hl, bc                                       ; $6808: $09
	ld de, $02e1                                     ; $6809: $11 $e1 $02
	inc bc                                           ; $680c: $03
	inc de                                           ; $680d: $13
	ret nz                                           ; $680e: $c0

	ld bc, $06a0                                     ; $680f: $01 $a0 $06
	ld [bc], a                                       ; $6812: $02
	push bc                                          ; $6813: $c5
	pop hl                                           ; $6814: $e1
	ld [bc], a                                       ; $6815: $02
	inc b                                            ; $6816: $04
	ld b, h                                          ; $6817: $44
	db $e4                                           ; $6818: $e4
	ld bc, $0966                                     ; $6819: $01 $66 $09
	inc e                                            ; $681c: $1c
	pop bc                                           ; $681d: $c1
	ld e, c                                          ; $681e: $59
	db $e3                                           ; $681f: $e3
	nop                                              ; $6820: $00
	and d                                            ; $6821: $a2
	ret nz                                           ; $6822: $c0

	add hl, bc                                       ; $6823: $09
	db $e3                                           ; $6824: $e3
	nop                                              ; $6825: $00
	add hl, hl                                       ; $6826: $29
	and b                                            ; $6827: $a0
	add b                                            ; $6828: $80
	and b                                            ; $6829: $a0
	rrca                                             ; $682a: $0f
	nop                                              ; $682b: $00
	inc bc                                           ; $682c: $03
	db $e4                                           ; $682d: $e4
	nop                                              ; $682e: $00
	dec bc                                           ; $682f: $0b
	rst $38                                          ; $6830: $ff
	rlca                                             ; $6831: $07
	ld b, b                                          ; $6832: $40
	add b                                            ; $6833: $80
	and b                                            ; $6834: $a0
	rrca                                             ; $6835: $0f
	db $e4                                           ; $6836: $e4
	nop                                              ; $6837: $00
	ld c, d                                          ; $6838: $4a
	jr z, @+$08                                      ; $6839: $28 $06

	ret nz                                           ; $683b: $c0

	ld bc, $06a0                                     ; $683c: $01 $a0 $06
	ld [bc], a                                       ; $683f: $02
	jp z, $023f                                      ; $6840: $ca $3f $02

	adc $09                                          ; $6843: $ce $09
	ld de, $02e1                                     ; $6845: $11 $e1 $02
	inc bc                                           ; $6848: $03
	rrca                                             ; $6849: $0f
	ret nz                                           ; $684a: $c0

	ld bc, $06a0                                     ; $684b: $01 $a0 $06
	ld [bc], a                                       ; $684e: $02
	push de                                          ; $684f: $d5
	pop hl                                           ; $6850: $e1
	ld [bc], a                                       ; $6851: $02
	inc b                                            ; $6852: $04
	dec sp                                           ; $6853: $3b
	db $e4                                           ; $6854: $e4
	ld bc, $022a                                     ; $6855: $01 $2a $02
	jp c, $1109                                      ; $6858: $da $09 $11

	pop hl                                           ; $685b: $e1
	ld [bc], a                                       ; $685c: $02
	inc bc                                           ; $685d: $03
	rra                                              ; $685e: $1f
	ret nz                                           ; $685f: $c0

	ld bc, $06a0                                     ; $6860: $01 $a0 $06
	ld [bc], a                                       ; $6863: $02
	call c, $02e1                                    ; $6864: $dc $e1 $02
	inc b                                            ; $6867: $04
	ld e, a                                          ; $6868: $5f
	db $e4                                           ; $6869: $e4
	ld bc, $0215                                     ; $686a: $01 $15 $02
	ld [$1109], a                                    ; $686d: $ea $09 $11
	pop hl                                           ; $6870: $e1
	ld [bc], a                                       ; $6871: $02
	inc bc                                           ; $6872: $03
	inc de                                           ; $6873: $13
	ret nz                                           ; $6874: $c0

	ld bc, $06a0                                     ; $6875: $01 $a0 $06
	ld [bc], a                                       ; $6878: $02
	db $ec                                           ; $6879: $ec
	pop hl                                           ; $687a: $e1
	ld [bc], a                                       ; $687b: $02
	inc b                                            ; $687c: $04
	ld b, h                                          ; $687d: $44
	db $e4                                           ; $687e: $e4
	ld bc, $2800                                     ; $687f: $01 $00 $28
	ld b, $c0                                        ; $6882: $06 $c0
	ld bc, $06a0                                     ; $6884: $01 $a0 $06
	ld [bc], a                                       ; $6887: $02
	or $3f                                           ; $6888: $f6 $3f
	inc bc                                           ; $688a: $03
	inc b                                            ; $688b: $04
	add hl, bc                                       ; $688c: $09
	ld de, $02e1                                     ; $688d: $11 $e1 $02
	inc bc                                           ; $6890: $03
	rla                                              ; $6891: $17
	ret nz                                           ; $6892: $c0

	ld bc, $06a0                                     ; $6893: $01 $a0 $06
	inc bc                                           ; $6896: $03
	ld a, [bc]                                       ; $6897: $0a
	pop hl                                           ; $6898: $e1
	ld [bc], a                                       ; $6899: $02
	inc b                                            ; $689a: $04
	ld c, l                                          ; $689b: $4d
	db $e4                                           ; $689c: $e4
	nop                                              ; $689d: $00
	ldh [c], a                                       ; $689e: $e2
	inc bc                                           ; $689f: $03
	jr jr_081_68ab                                   ; $68a0: $18 $09

	ld de, $02e1                                     ; $68a2: $11 $e1 $02
	inc bc                                           ; $68a5: $03
	inc de                                           ; $68a6: $13
	ret nz                                           ; $68a7: $c0

	ld bc, $06a0                                     ; $68a8: $01 $a0 $06

jr_081_68ab:
	inc bc                                           ; $68ab: $03
	ld a, [de]                                       ; $68ac: $1a
	pop hl                                           ; $68ad: $e1
	ld [bc], a                                       ; $68ae: $02
	inc b                                            ; $68af: $04
	dec sp                                           ; $68b0: $3b
	db $e4                                           ; $68b1: $e4
	nop                                              ; $68b2: $00
	call $2103                                       ; $68b3: $cd $03 $21
	add hl, bc                                       ; $68b6: $09
	ld de, $02e1                                     ; $68b7: $11 $e1 $02
	inc bc                                           ; $68ba: $03
	rra                                              ; $68bb: $1f
	ret nz                                           ; $68bc: $c0

	ld bc, $06a0                                     ; $68bd: $01 $a0 $06
	inc bc                                           ; $68c0: $03
	daa                                              ; $68c1: $27
	pop hl                                           ; $68c2: $e1
	ld [bc], a                                       ; $68c3: $02
	inc b                                            ; $68c4: $04
	ld e, a                                          ; $68c5: $5f
	db $e4                                           ; $68c6: $e4
	nop                                              ; $68c7: $00
	cp b                                             ; $68c8: $b8
	add hl, bc                                       ; $68c9: $09
	inc e                                            ; $68ca: $1c
	pop bc                                           ; $68cb: $c1
	ld e, c                                          ; $68cc: $59
	db $e3                                           ; $68cd: $e3
	nop                                              ; $68ce: $00
	and e                                            ; $68cf: $a3
	ret nz                                           ; $68d0: $c0

	add hl, bc                                       ; $68d1: $09
	db $e3                                           ; $68d2: $e3
	nop                                              ; $68d3: $00
	ld l, $a0                                        ; $68d4: $2e $a0
	add b                                            ; $68d6: $80
	and b                                            ; $68d7: $a0
	stop                                             ; $68d8: $10 $00
	inc bc                                           ; $68da: $03
	db $e4                                           ; $68db: $e4
	nop                                              ; $68dc: $00
	dec bc                                           ; $68dd: $0b
	rst $38                                          ; $68de: $ff
	rlca                                             ; $68df: $07
	ld b, b                                          ; $68e0: $40
	add b                                            ; $68e1: $80
	and b                                            ; $68e2: $a0
	db $10                                           ; $68e3: $10
	db $e4                                           ; $68e4: $e4
	nop                                              ; $68e5: $00
	ld c, [hl]                                       ; $68e6: $4e
	jr z, jr_081_68f3                                ; $68e7: $28 $0a

	pop hl                                           ; $68e9: $e1
	ld [bc], a                                       ; $68ea: $02
	inc bc                                           ; $68eb: $03
	rra                                              ; $68ec: $1f
	ret nz                                           ; $68ed: $c0

	ld bc, $06a0                                     ; $68ee: $01 $a0 $06
	inc bc                                           ; $68f1: $03
	inc l                                            ; $68f2: $2c

jr_081_68f3:
	ccf                                              ; $68f3: $3f
	inc bc                                           ; $68f4: $03
	cpl                                              ; $68f5: $2f
	add hl, bc                                       ; $68f6: $09
	ld de, $02e1                                     ; $68f7: $11 $e1 $02
	inc bc                                           ; $68fa: $03
	inc de                                           ; $68fb: $13
	ret nz                                           ; $68fc: $c0

	ld bc, $06a0                                     ; $68fd: $01 $a0 $06
	inc bc                                           ; $6900: $03
	ld sp, $02e1                                     ; $6901: $31 $e1 $02
	inc b                                            ; $6904: $04
	ld b, h                                          ; $6905: $44
	db $e4                                           ; $6906: $e4
	nop                                              ; $6907: $00
	ld a, b                                          ; $6908: $78
	inc bc                                           ; $6909: $03
	add hl, sp                                       ; $690a: $39
	add hl, bc                                       ; $690b: $09
	ld de, $02e1                                     ; $690c: $11 $e1 $02
	inc bc                                           ; $690f: $03
	rra                                              ; $6910: $1f
	ret nz                                           ; $6911: $c0

	ld bc, $06a0                                     ; $6912: $01 $a0 $06
	inc bc                                           ; $6915: $03
	dec sp                                           ; $6916: $3b
	pop hl                                           ; $6917: $e1
	ld [bc], a                                       ; $6918: $02
	inc b                                            ; $6919: $04
	ld e, a                                          ; $691a: $5f
	db $e4                                           ; $691b: $e4
	nop                                              ; $691c: $00
	ld h, e                                          ; $691d: $63
	inc bc                                           ; $691e: $03
	ld b, a                                          ; $691f: $47
	add hl, bc                                       ; $6920: $09
	ld de, $02e1                                     ; $6921: $11 $e1 $02
	inc bc                                           ; $6924: $03
	rla                                              ; $6925: $17
	ret nz                                           ; $6926: $c0

	ld bc, $06a0                                     ; $6927: $01 $a0 $06
	inc bc                                           ; $692a: $03
	ld c, c                                          ; $692b: $49
	pop hl                                           ; $692c: $e1
	ld [bc], a                                       ; $692d: $02
	inc b                                            ; $692e: $04
	ld c, l                                          ; $692f: $4d
	db $e4                                           ; $6930: $e4
	nop                                              ; $6931: $00
	ld c, [hl]                                       ; $6932: $4e
	jr z, jr_081_693f                                ; $6933: $28 $0a

	pop hl                                           ; $6935: $e1
	ld [bc], a                                       ; $6936: $02
	inc bc                                           ; $6937: $03
	rra                                              ; $6938: $1f
	ret nz                                           ; $6939: $c0

	ld bc, $06a0                                     ; $693a: $01 $a0 $06
	inc bc                                           ; $693d: $03
	ld d, d                                          ; $693e: $52

jr_081_693f:
	ccf                                              ; $693f: $3f
	inc bc                                           ; $6940: $03
	ld d, [hl]                                       ; $6941: $56
	add hl, bc                                       ; $6942: $09
	ld de, $02e1                                     ; $6943: $11 $e1 $02
	inc bc                                           ; $6946: $03
	inc de                                           ; $6947: $13
	ret nz                                           ; $6948: $c0

	ld bc, $06a0                                     ; $6949: $01 $a0 $06
	inc bc                                           ; $694c: $03
	ld e, b                                          ; $694d: $58
	pop hl                                           ; $694e: $e1
	ld [bc], a                                       ; $694f: $02
	inc b                                            ; $6950: $04
	ld b, h                                          ; $6951: $44
	db $e4                                           ; $6952: $e4
	nop                                              ; $6953: $00
	inc l                                            ; $6954: $2c
	inc bc                                           ; $6955: $03
	ld h, e                                          ; $6956: $63
	add hl, bc                                       ; $6957: $09
	ld de, $02e1                                     ; $6958: $11 $e1 $02
	inc bc                                           ; $695b: $03
	dec de                                           ; $695c: $1b
	ret nz                                           ; $695d: $c0

	ld bc, $06a0                                     ; $695e: $01 $a0 $06
	inc bc                                           ; $6961: $03
	ld l, h                                          ; $6962: $6c
	pop hl                                           ; $6963: $e1
	ld [bc], a                                       ; $6964: $02
	inc b                                            ; $6965: $04
	ld d, [hl]                                       ; $6966: $56
	db $e4                                           ; $6967: $e4
	nop                                              ; $6968: $00
	rla                                              ; $6969: $17
	inc bc                                           ; $696a: $03
	ld a, c                                          ; $696b: $79
	add hl, bc                                       ; $696c: $09
	ld de, $02e1                                     ; $696d: $11 $e1 $02
	inc bc                                           ; $6970: $03
	dec de                                           ; $6971: $1b
	ret nz                                           ; $6972: $c0

	ld bc, $06a0                                     ; $6973: $01 $a0 $06
	inc bc                                           ; $6976: $03
	ld a, a                                          ; $6977: $7f
	pop hl                                           ; $6978: $e1
	ld [bc], a                                       ; $6979: $02
	inc b                                            ; $697a: $04
	ld d, [hl]                                       ; $697b: $56
	db $e4                                           ; $697c: $e4
	nop                                              ; $697d: $00
	ld [bc], a                                       ; $697e: $02
	add hl, bc                                       ; $697f: $09
	dec l                                            ; $6980: $2d
	pop bc                                           ; $6981: $c1
	ld e, c                                          ; $6982: $59
	db $e3                                           ; $6983: $e3
	nop                                              ; $6984: $00
	sbc a                                            ; $6985: $9f
	ret nz                                           ; $6986: $c0

	add hl, bc                                       ; $6987: $09
	db $e3                                           ; $6988: $e3
	nop                                              ; $6989: $00
	jr c, @-$7c                                      ; $698a: $38 $82

	adc e                                            ; $698c: $8b
	and b                                            ; $698d: $a0
	ld [bc], a                                       ; $698e: $02
	ld [bc], a                                       ; $698f: $02
	or b                                             ; $6990: $b0
	add d                                            ; $6991: $82
	dec b                                            ; $6992: $05
	ret nz                                           ; $6993: $c0

	ld d, [hl]                                       ; $6994: $56
	jp c, $d0d2                                      ; $6995: $da $d2 $d0

	ld [bc], a                                       ; $6998: $02
	or b                                             ; $6999: $b0
	add e                                            ; $699a: $83
	dec b                                            ; $699b: $05
	ret nz                                           ; $699c: $c0

	ld d, [hl]                                       ; $699d: $56
	jp c, $d1d2                                      ; $699e: $da $d2 $d1

	ld [bc], a                                       ; $69a1: $02
	or b                                             ; $69a2: $b0
	add h                                            ; $69a3: $84
	dec b                                            ; $69a4: $05
	ret nz                                           ; $69a5: $c0

	ld d, [hl]                                       ; $69a6: $56
	jp c, $d2d2                                      ; $69a7: $da $d2 $d2

	push hl                                          ; $69aa: $e5
	dec hl                                           ; $69ab: $2b
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	add hl, bc                                       ; $69ae: $09
	inc d                                            ; $69af: $14
	ret nc                                           ; $69b0: $d0

	add e                                            ; $69b1: $83
	ld bc, $d0de                                     ; $69b2: $01 $de $d0
	ret nz                                           ; $69b5: $c0

	ld bc, $06a0                                     ; $69b6: $01 $a0 $06
	inc bc                                           ; $69b9: $03
	add l                                            ; $69ba: $85
	ret nz                                           ; $69bb: $c0

	ld bc, $01a0                                     ; $69bc: $01 $a0 $01
	inc bc                                           ; $69bf: $03
	adc b                                            ; $69c0: $88
	db $e4                                           ; $69c1: $e4
	nop                                              ; $69c2: $00
	ld [bc], a                                       ; $69c3: $02
	add hl, bc                                       ; $69c4: $09
	inc [hl]                                         ; $69c5: $34
	pop bc                                           ; $69c6: $c1
	ld e, c                                          ; $69c7: $59
	db $e3                                           ; $69c8: $e3
	nop                                              ; $69c9: $00
	xor l                                            ; $69ca: $ad
	ld h, b                                          ; $69cb: $60
	add b                                            ; $69cc: $80
	ld [bc], a                                       ; $69cd: $02
	ld b, c                                          ; $69ce: $41
	rla                                              ; $69cf: $17
	and c                                            ; $69d0: $a1
	add c                                            ; $69d1: $81
	and b                                            ; $69d2: $a0
	ld de, $0300                                     ; $69d3: $11 $00 $03
	db $e4                                           ; $69d6: $e4
	nop                                              ; $69d7: $00
	or e                                             ; $69d8: $b3
	ld bc, $e403                                     ; $69d9: $01 $03 $e4
	nop                                              ; $69dc: $00
	ld e, $ff                                        ; $69dd: $1e $ff
	rlca                                             ; $69df: $07
	ld b, b                                          ; $69e0: $40
	add c                                            ; $69e1: $81
	and b                                            ; $69e2: $a0
	ld de, $00e4                                     ; $69e3: $11 $e4 $00
	ld e, l                                          ; $69e6: $5d
	ld [de], a                                       ; $69e7: $12
	and b                                            ; $69e8: $a0
	add b                                            ; $69e9: $80
	and b                                            ; $69ea: $a0
	inc de                                           ; $69eb: $13
	nop                                              ; $69ec: $00
	inc bc                                           ; $69ed: $03
	db $e4                                           ; $69ee: $e4
	nop                                              ; $69ef: $00
	dec bc                                           ; $69f0: $0b
	rst $38                                          ; $69f1: $ff
	rlca                                             ; $69f2: $07
	ld b, b                                          ; $69f3: $40
	add b                                            ; $69f4: $80
	and b                                            ; $69f5: $a0
	inc de                                           ; $69f6: $13
	db $e4                                           ; $69f7: $e4
	nop                                              ; $69f8: $00
	ld c, d                                          ; $69f9: $4a
	jr z, jr_081_6a02                                ; $69fa: $28 $06

	ret nz                                           ; $69fc: $c0

	ld bc, $06a0                                     ; $69fd: $01 $a0 $06
	inc bc                                           ; $6a00: $03
	adc l                                            ; $6a01: $8d

jr_081_6a02:
	ccf                                              ; $6a02: $3f
	inc bc                                           ; $6a03: $03
	sub [hl]                                         ; $6a04: $96
	add hl, bc                                       ; $6a05: $09
	ld de, $02e1                                     ; $6a06: $11 $e1 $02
	inc bc                                           ; $6a09: $03
	inc de                                           ; $6a0a: $13
	ret nz                                           ; $6a0b: $c0

	ld bc, $06a0                                     ; $6a0c: $01 $a0 $06
	inc bc                                           ; $6a0f: $03
	sbc b                                            ; $6a10: $98
	pop hl                                           ; $6a11: $e1
	ld [bc], a                                       ; $6a12: $02
	inc b                                            ; $6a13: $04
	dec sp                                           ; $6a14: $3b
	db $e4                                           ; $6a15: $e4
	nop                                              ; $6a16: $00
	jp nz, $a303                                     ; $6a17: $c2 $03 $a3

	add hl, bc                                       ; $6a1a: $09
	ld de, $02e1                                     ; $6a1b: $11 $e1 $02
	inc bc                                           ; $6a1e: $03
	rra                                              ; $6a1f: $1f
	ret nz                                           ; $6a20: $c0

	ld bc, $06a0                                     ; $6a21: $01 $a0 $06
	inc bc                                           ; $6a24: $03
	and l                                            ; $6a25: $a5
	pop hl                                           ; $6a26: $e1
	ld [bc], a                                       ; $6a27: $02
	inc b                                            ; $6a28: $04
	ld e, a                                          ; $6a29: $5f
	db $e4                                           ; $6a2a: $e4
	nop                                              ; $6a2b: $00
	xor l                                            ; $6a2c: $ad
	inc bc                                           ; $6a2d: $03
	xor l                                            ; $6a2e: $ad
	add hl, bc                                       ; $6a2f: $09
	ld de, $02e1                                     ; $6a30: $11 $e1 $02
	inc bc                                           ; $6a33: $03
	inc de                                           ; $6a34: $13
	ret nz                                           ; $6a35: $c0

	ld bc, $06a0                                     ; $6a36: $01 $a0 $06
	inc bc                                           ; $6a39: $03
	xor a                                            ; $6a3a: $af
	pop hl                                           ; $6a3b: $e1
	ld [bc], a                                       ; $6a3c: $02
	inc b                                            ; $6a3d: $04
	ld b, h                                          ; $6a3e: $44
	db $e4                                           ; $6a3f: $e4
	nop                                              ; $6a40: $00
	sbc b                                            ; $6a41: $98
	jr z, jr_081_6a4a                                ; $6a42: $28 $06

	ret nz                                           ; $6a44: $c0

	ld bc, $06a0                                     ; $6a45: $01 $a0 $06
	inc bc                                           ; $6a48: $03
	or l                                             ; $6a49: $b5

jr_081_6a4a:
	ccf                                              ; $6a4a: $3f
	inc bc                                           ; $6a4b: $03
	cp [hl]                                          ; $6a4c: $be
	add hl, bc                                       ; $6a4d: $09
	ld de, $02e1                                     ; $6a4e: $11 $e1 $02
	inc bc                                           ; $6a51: $03
	rrca                                             ; $6a52: $0f
	ret nz                                           ; $6a53: $c0

	ld bc, $06a0                                     ; $6a54: $01 $a0 $06
	inc bc                                           ; $6a57: $03
	call nz, $02e1                                   ; $6a58: $c4 $e1 $02
	inc b                                            ; $6a5b: $04
	dec sp                                           ; $6a5c: $3b
	db $e4                                           ; $6a5d: $e4
	nop                                              ; $6a5e: $00
	ld a, d                                          ; $6a5f: $7a
	inc bc                                           ; $6a60: $03
	adc $09                                          ; $6a61: $ce $09
	ld de, $02e1                                     ; $6a63: $11 $e1 $02
	inc bc                                           ; $6a66: $03
	rra                                              ; $6a67: $1f
	ret nz                                           ; $6a68: $c0

	ld bc, $06a0                                     ; $6a69: $01 $a0 $06
	inc bc                                           ; $6a6c: $03
	ret nc                                           ; $6a6d: $d0

	pop hl                                           ; $6a6e: $e1
	ld [bc], a                                       ; $6a6f: $02
	inc b                                            ; $6a70: $04
	ld e, a                                          ; $6a71: $5f
	db $e4                                           ; $6a72: $e4
	nop                                              ; $6a73: $00
	ld h, l                                          ; $6a74: $65
	inc bc                                           ; $6a75: $03
	sub $09                                          ; $6a76: $d6 $09
	ld de, $02e1                                     ; $6a78: $11 $e1 $02
	inc bc                                           ; $6a7b: $03
	inc de                                           ; $6a7c: $13
	ret nz                                           ; $6a7d: $c0

	ld bc, $06a0                                     ; $6a7e: $01 $a0 $06
	inc bc                                           ; $6a81: $03
	jp c, $02e1                                      ; $6a82: $da $e1 $02

	inc b                                            ; $6a85: $04
	ld b, h                                          ; $6a86: $44
	db $e4                                           ; $6a87: $e4
	nop                                              ; $6a88: $00
	ld d, b                                          ; $6a89: $50
	jr z, jr_081_6a92                                ; $6a8a: $28 $06

	ret nz                                           ; $6a8c: $c0

	ld bc, $06a0                                     ; $6a8d: $01 $a0 $06
	inc bc                                           ; $6a90: $03
	rst SubAFromDE                                          ; $6a91: $df

jr_081_6a92:
	ld b, l                                          ; $6a92: $45
	inc bc                                           ; $6a93: $03
	add sp, $09                                      ; $6a94: $e8 $09
	ld de, $02e1                                     ; $6a96: $11 $e1 $02
	inc bc                                           ; $6a99: $03
	inc de                                           ; $6a9a: $13
	ret nz                                           ; $6a9b: $c0

	ld bc, $06a0                                     ; $6a9c: $01 $a0 $06
	inc bc                                           ; $6a9f: $03
	ld [$02e1], a                                    ; $6aa0: $ea $e1 $02
	inc b                                            ; $6aa3: $04
	dec sp                                           ; $6aa4: $3b
	db $e4                                           ; $6aa5: $e4
	nop                                              ; $6aa6: $00
	ld [hl-], a                                      ; $6aa7: $32
	inc bc                                           ; $6aa8: $03
	di                                               ; $6aa9: $f3
	add hl, bc                                       ; $6aaa: $09
	rla                                              ; $6aab: $17
	pop hl                                           ; $6aac: $e1
	ld [bc], a                                       ; $6aad: $02
	inc bc                                           ; $6aae: $03
	rra                                              ; $6aaf: $1f
	ret nz                                           ; $6ab0: $c0

	ld bc, $06a0                                     ; $6ab1: $01 $a0 $06
	inc bc                                           ; $6ab4: $03
	push af                                          ; $6ab5: $f5
	ret nz                                           ; $6ab6: $c0

	ld bc, $01a0                                     ; $6ab7: $01 $a0 $01
	inc bc                                           ; $6aba: $03
	cp $e1                                           ; $6abb: $fe $e1
	ld [bc], a                                       ; $6abd: $02
	inc b                                            ; $6abe: $04
	ld e, a                                          ; $6abf: $5f
	db $e4                                           ; $6ac0: $e4
	nop                                              ; $6ac1: $00
	rla                                              ; $6ac2: $17
	inc b                                            ; $6ac3: $04
	ld b, $09                                        ; $6ac4: $06 $09
	ld de, $02e1                                     ; $6ac6: $11 $e1 $02
	inc bc                                           ; $6ac9: $03
	rla                                              ; $6aca: $17
	ret nz                                           ; $6acb: $c0

	ld bc, $06a0                                     ; $6acc: $01 $a0 $06
	inc b                                            ; $6acf: $04
	ld [$02e1], sp                                   ; $6ad0: $08 $e1 $02
	inc b                                            ; $6ad3: $04
	ld c, l                                          ; $6ad4: $4d
	db $e4                                           ; $6ad5: $e4
	nop                                              ; $6ad6: $00
	ld [bc], a                                       ; $6ad7: $02
	add hl, bc                                       ; $6ad8: $09
	ld c, $c1                                        ; $6ad9: $0e $c1
	ld e, c                                          ; $6adb: $59
	db $e3                                           ; $6adc: $e3
	nop                                              ; $6add: $00
	xor h                                            ; $6ade: $ac
	ret nz                                           ; $6adf: $c0

	ld d, [hl]                                       ; $6ae0: $56
	jp c, $d0d3                                      ; $6ae1: $da $d3 $d0

	push hl                                          ; $6ae4: $e5
	dec hl                                           ; $6ae5: $2b
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	add hl, bc                                       ; $6ae8: $09
	inc d                                            ; $6ae9: $14
	ret nc                                           ; $6aea: $d0

	add e                                            ; $6aeb: $83
	ld bc, $d0de                                     ; $6aec: $01 $de $d0
	ret nz                                           ; $6aef: $c0

	ld bc, $06a0                                     ; $6af0: $01 $a0 $06
	inc b                                            ; $6af3: $04
	dec d                                            ; $6af4: $15
	ret nz                                           ; $6af5: $c0

	ld bc, $01a0                                     ; $6af6: $01 $a0 $01
	inc b                                            ; $6af9: $04
	add hl, de                                       ; $6afa: $19
	db $e4                                           ; $6afb: $e4
	nop                                              ; $6afc: $00
	ld [bc], a                                       ; $6afd: $02
	add hl, bc                                       ; $6afe: $09
	inc [hl]                                         ; $6aff: $34
	pop bc                                           ; $6b00: $c1
	ld e, c                                          ; $6b01: $59
	db $e3                                           ; $6b02: $e3
	nop                                              ; $6b03: $00
	xor e                                            ; $6b04: $ab
	ld h, b                                          ; $6b05: $60
	add b                                            ; $6b06: $80
	ld [bc], a                                       ; $6b07: $02
	ld d, c                                          ; $6b08: $51
	rla                                              ; $6b09: $17
	and c                                            ; $6b0a: $a1
	add c                                            ; $6b0b: $81
	and b                                            ; $6b0c: $a0
	inc d                                            ; $6b0d: $14
	nop                                              ; $6b0e: $00
	inc bc                                           ; $6b0f: $03
	db $e4                                           ; $6b10: $e4
	nop                                              ; $6b11: $00
	or e                                             ; $6b12: $b3
	ld bc, $e403                                     ; $6b13: $01 $03 $e4
	nop                                              ; $6b16: $00
	ld e, $ff                                        ; $6b17: $1e $ff
	rlca                                             ; $6b19: $07
	ld b, b                                          ; $6b1a: $40
	add c                                            ; $6b1b: $81
	and b                                            ; $6b1c: $a0
	inc d                                            ; $6b1d: $14
	db $e4                                           ; $6b1e: $e4
	nop                                              ; $6b1f: $00
	ld e, l                                          ; $6b20: $5d
	ld [de], a                                       ; $6b21: $12
	and b                                            ; $6b22: $a0
	add b                                            ; $6b23: $80
	and b                                            ; $6b24: $a0
	ld d, $00                                        ; $6b25: $16 $00
	inc bc                                           ; $6b27: $03
	db $e4                                           ; $6b28: $e4
	nop                                              ; $6b29: $00
	dec bc                                           ; $6b2a: $0b
	rst $38                                          ; $6b2b: $ff
	rlca                                             ; $6b2c: $07
	ld b, b                                          ; $6b2d: $40
	add b                                            ; $6b2e: $80
	and b                                            ; $6b2f: $a0
	ld d, $e4                                        ; $6b30: $16 $e4
	nop                                              ; $6b32: $00
	ld c, d                                          ; $6b33: $4a
	jr z, jr_081_6b3c                                ; $6b34: $28 $06

	ret nz                                           ; $6b36: $c0

	ld bc, $06a0                                     ; $6b37: $01 $a0 $06
	inc b                                            ; $6b3a: $04
	rra                                              ; $6b3b: $1f

jr_081_6b3c:
	ccf                                              ; $6b3c: $3f
	inc b                                            ; $6b3d: $04
	dec hl                                           ; $6b3e: $2b
	add hl, bc                                       ; $6b3f: $09
	ld de, $02e1                                     ; $6b40: $11 $e1 $02
	inc bc                                           ; $6b43: $03
	inc de                                           ; $6b44: $13
	ret nz                                           ; $6b45: $c0

	ld bc, $06a0                                     ; $6b46: $01 $a0 $06
	inc b                                            ; $6b49: $04
	inc sp                                           ; $6b4a: $33
	pop hl                                           ; $6b4b: $e1
	ld [bc], a                                       ; $6b4c: $02
	inc b                                            ; $6b4d: $04
	dec sp                                           ; $6b4e: $3b
	db $e4                                           ; $6b4f: $e4
	nop                                              ; $6b50: $00
	cp h                                             ; $6b51: $bc
	inc b                                            ; $6b52: $04
	dec a                                            ; $6b53: $3d
	add hl, bc                                       ; $6b54: $09
	ld de, $02e1                                     ; $6b55: $11 $e1 $02
	inc bc                                           ; $6b58: $03
	rra                                              ; $6b59: $1f
	ret nz                                           ; $6b5a: $c0

	ld bc, $06a0                                     ; $6b5b: $01 $a0 $06
	inc b                                            ; $6b5e: $04
	ld b, c                                          ; $6b5f: $41
	pop hl                                           ; $6b60: $e1
	ld [bc], a                                       ; $6b61: $02
	inc b                                            ; $6b62: $04
	ld e, a                                          ; $6b63: $5f
	db $e4                                           ; $6b64: $e4
	nop                                              ; $6b65: $00
	and a                                            ; $6b66: $a7
	inc b                                            ; $6b67: $04
	ld c, b                                          ; $6b68: $48
	add hl, bc                                       ; $6b69: $09
	ld de, $02e1                                     ; $6b6a: $11 $e1 $02
	inc bc                                           ; $6b6d: $03
	rla                                              ; $6b6e: $17
	ret nz                                           ; $6b6f: $c0

	ld bc, $06a0                                     ; $6b70: $01 $a0 $06
	inc b                                            ; $6b73: $04
	ld c, [hl]                                       ; $6b74: $4e
	pop hl                                           ; $6b75: $e1
	ld [bc], a                                       ; $6b76: $02
	inc b                                            ; $6b77: $04
	ld c, l                                          ; $6b78: $4d
	db $e4                                           ; $6b79: $e4
	nop                                              ; $6b7a: $00
	sub d                                            ; $6b7b: $92
	jr z, jr_081_6b84                                ; $6b7c: $28 $06

	ret nz                                           ; $6b7e: $c0

	ld bc, $06a0                                     ; $6b7f: $01 $a0 $06
	inc b                                            ; $6b82: $04
	ld d, [hl]                                       ; $6b83: $56

jr_081_6b84:
	ccf                                              ; $6b84: $3f
	inc b                                            ; $6b85: $04
	ld e, l                                          ; $6b86: $5d
	add hl, bc                                       ; $6b87: $09
	ld de, $02e1                                     ; $6b88: $11 $e1 $02
	inc bc                                           ; $6b8b: $03
	inc de                                           ; $6b8c: $13
	ret nz                                           ; $6b8d: $c0

	ld bc, $06a0                                     ; $6b8e: $01 $a0 $06
	inc b                                            ; $6b91: $04
	ld h, e                                          ; $6b92: $63
	pop hl                                           ; $6b93: $e1
	ld [bc], a                                       ; $6b94: $02
	inc b                                            ; $6b95: $04
	ld b, h                                          ; $6b96: $44
	db $e4                                           ; $6b97: $e4
	nop                                              ; $6b98: $00
	ld [hl], h                                       ; $6b99: $74
	inc b                                            ; $6b9a: $04
	ld l, a                                          ; $6b9b: $6f
	add hl, bc                                       ; $6b9c: $09
	ld de, $02e1                                     ; $6b9d: $11 $e1 $02
	inc bc                                           ; $6ba0: $03
	rra                                              ; $6ba1: $1f
	ret nz                                           ; $6ba2: $c0

	ld bc, $06a0                                     ; $6ba3: $01 $a0 $06
	inc b                                            ; $6ba6: $04
	ld a, b                                          ; $6ba7: $78
	pop hl                                           ; $6ba8: $e1
	ld [bc], a                                       ; $6ba9: $02
	inc b                                            ; $6baa: $04
	ld e, a                                          ; $6bab: $5f
	db $e4                                           ; $6bac: $e4
	nop                                              ; $6bad: $00
	ld e, a                                          ; $6bae: $5f
	inc b                                            ; $6baf: $04
	ld a, [hl]                                       ; $6bb0: $7e
	add hl, bc                                       ; $6bb1: $09
	ld de, $02e1                                     ; $6bb2: $11 $e1 $02
	inc bc                                           ; $6bb5: $03
	rla                                              ; $6bb6: $17
	ret nz                                           ; $6bb7: $c0

	ld bc, $06a0                                     ; $6bb8: $01 $a0 $06
	inc b                                            ; $6bbb: $04
	add h                                            ; $6bbc: $84
	pop hl                                           ; $6bbd: $e1
	ld [bc], a                                       ; $6bbe: $02
	inc b                                            ; $6bbf: $04
	ld c, l                                          ; $6bc0: $4d

Jump_081_6bc1:
	db $e4                                           ; $6bc1: $e4
	nop                                              ; $6bc2: $00
	ld c, d                                          ; $6bc3: $4a
	jr z, jr_081_6bcc                                ; $6bc4: $28 $06

	ret nz                                           ; $6bc6: $c0

	ld bc, $06a0                                     ; $6bc7: $01 $a0 $06
	inc b                                            ; $6bca: $04
	adc d                                            ; $6bcb: $8a

jr_081_6bcc:
	ccf                                              ; $6bcc: $3f
	inc b                                            ; $6bcd: $04
	sub l                                            ; $6bce: $95
	add hl, bc                                       ; $6bcf: $09
	ld de, $02e1                                     ; $6bd0: $11 $e1 $02
	inc bc                                           ; $6bd3: $03
	inc de                                           ; $6bd4: $13
	ret nz                                           ; $6bd5: $c0

	ld bc, $06a0                                     ; $6bd6: $01 $a0 $06
	inc b                                            ; $6bd9: $04
	sbc e                                            ; $6bda: $9b
	pop hl                                           ; $6bdb: $e1
	ld [bc], a                                       ; $6bdc: $02
	inc b                                            ; $6bdd: $04
	dec sp                                           ; $6bde: $3b
	db $e4                                           ; $6bdf: $e4
	nop                                              ; $6be0: $00
	inc l                                            ; $6be1: $2c
	inc b                                            ; $6be2: $04
	xor b                                            ; $6be3: $a8
	add hl, bc                                       ; $6be4: $09
	ld de, $02e1                                     ; $6be5: $11 $e1 $02
	inc bc                                           ; $6be8: $03
	rra                                              ; $6be9: $1f
	ret nz                                           ; $6bea: $c0

	ld bc, $06a0                                     ; $6beb: $01 $a0 $06
	inc b                                            ; $6bee: $04

jr_081_6bef:
	xor d                                            ; $6bef: $aa
	pop hl                                           ; $6bf0: $e1
	ld [bc], a                                       ; $6bf1: $02
	inc b                                            ; $6bf2: $04
	ld e, a                                          ; $6bf3: $5f
	db $e4                                           ; $6bf4: $e4
	nop                                              ; $6bf5: $00
	rla                                              ; $6bf6: $17
	inc b                                            ; $6bf7: $04
	xor a                                            ; $6bf8: $af
	add hl, bc                                       ; $6bf9: $09
	ld de, $02e1                                     ; $6bfa: $11 $e1 $02
	inc bc                                           ; $6bfd: $03
	rla                                              ; $6bfe: $17
	ret nz                                           ; $6bff: $c0

	ld bc, $06a0                                     ; $6c00: $01 $a0 $06
	inc b                                            ; $6c03: $04
	or c                                             ; $6c04: $b1
	pop hl                                           ; $6c05: $e1
	ld [bc], a                                       ; $6c06: $02
	inc b                                            ; $6c07: $04
	ld c, l                                          ; $6c08: $4d
	db $e4                                           ; $6c09: $e4
	nop                                              ; $6c0a: $00
	ld [bc], a                                       ; $6c0b: $02
	add hl, bc                                       ; $6c0c: $09
	ld c, $c1                                        ; $6c0d: $0e $c1
	ld e, c                                          ; $6c0f: $59
	db $e3                                           ; $6c10: $e3
	nop                                              ; $6c11: $00
	xor d                                            ; $6c12: $aa
	ret nz                                           ; $6c13: $c0

	ld d, [hl]                                       ; $6c14: $56
	jp c, $d0d4                                      ; $6c15: $da $d4 $d0

	push hl                                          ; $6c18: $e5
	dec hl                                           ; $6c19: $2b
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	add hl, bc                                       ; $6c1c: $09
	jr z, jr_081_6bef                                ; $6c1d: $28 $d0

	add e                                            ; $6c1f: $83
	ld bc, $d0de                                     ; $6c20: $01 $de $d0
	ret nz                                           ; $6c23: $c0

	ld bc, $06a0                                     ; $6c24: $01 $a0 $06
	inc b                                            ; $6c27: $04
	or a                                             ; $6c28: $b7
	ret nz                                           ; $6c29: $c0

	ld bc, $01a0                                     ; $6c2a: $01 $a0 $01
	inc bc                                           ; $6c2d: $03
	adc b                                            ; $6c2e: $88
	pop bc                                           ; $6c2f: $c1
	ld e, c                                          ; $6c30: $59
	db $e3                                           ; $6c31: $e3
	nop                                              ; $6c32: $00
	or h                                             ; $6c33: $b4
	and b                                            ; $6c34: $a0
	add b                                            ; $6c35: $80
	and b                                            ; $6c36: $a0
	rla                                              ; $6c37: $17
	nop                                              ; $6c38: $00
	inc bc                                           ; $6c39: $03
	db $e4                                           ; $6c3a: $e4
	nop                                              ; $6c3b: $00
	dec bc                                           ; $6c3c: $0b
	rst $38                                          ; $6c3d: $ff
	rlca                                             ; $6c3e: $07
	ld b, b                                          ; $6c3f: $40
	add b                                            ; $6c40: $80
	and b                                            ; $6c41: $a0
	rla                                              ; $6c42: $17
	db $e4                                           ; $6c43: $e4
	nop                                              ; $6c44: $00
	ld c, d                                          ; $6c45: $4a
	jr z, jr_081_6c4e                                ; $6c46: $28 $06

	ret nz                                           ; $6c48: $c0

	ld bc, $06a0                                     ; $6c49: $01 $a0 $06
	inc b                                            ; $6c4c: $04
	cp e                                             ; $6c4d: $bb

jr_081_6c4e:
	ccf                                              ; $6c4e: $3f
	inc b                                            ; $6c4f: $04
	add $09                                          ; $6c50: $c6 $09
	ld de, $02e1                                     ; $6c52: $11 $e1 $02
	inc bc                                           ; $6c55: $03
	inc de                                           ; $6c56: $13
	ret nz                                           ; $6c57: $c0

	ld bc, $06a0                                     ; $6c58: $01 $a0 $06
	inc b                                            ; $6c5b: $04
	ret nc                                           ; $6c5c: $d0

	pop hl                                           ; $6c5d: $e1
	ld [bc], a                                       ; $6c5e: $02
	inc b                                            ; $6c5f: $04
	ld b, h                                          ; $6c60: $44
	db $e4                                           ; $6c61: $e4
	nop                                              ; $6c62: $00
	ld [hl], h                                       ; $6c63: $74
	inc b                                            ; $6c64: $04
	push de                                          ; $6c65: $d5
	add hl, bc                                       ; $6c66: $09
	ld de, $02e1                                     ; $6c67: $11 $e1 $02
	inc bc                                           ; $6c6a: $03
	dec de                                           ; $6c6b: $1b
	ret nz                                           ; $6c6c: $c0

	ld bc, $06a0                                     ; $6c6d: $01 $a0 $06
	inc b                                            ; $6c70: $04
	reti                                             ; $6c71: $d9


	pop hl                                           ; $6c72: $e1
	ld [bc], a                                       ; $6c73: $02
	inc b                                            ; $6c74: $04
	ld d, [hl]                                       ; $6c75: $56
	db $e4                                           ; $6c76: $e4
	nop                                              ; $6c77: $00
	ld e, a                                          ; $6c78: $5f
	inc b                                            ; $6c79: $04
	pop hl                                           ; $6c7a: $e1
	add hl, bc                                       ; $6c7b: $09
	ld de, $02e1                                     ; $6c7c: $11 $e1 $02
	inc bc                                           ; $6c7f: $03
	rla                                              ; $6c80: $17
	ret nz                                           ; $6c81: $c0

	ld bc, $06a0                                     ; $6c82: $01 $a0 $06
	inc b                                            ; $6c85: $04
	push hl                                          ; $6c86: $e5
	pop hl                                           ; $6c87: $e1
	ld [bc], a                                       ; $6c88: $02
	inc b                                            ; $6c89: $04
	ld c, l                                          ; $6c8a: $4d
	db $e4                                           ; $6c8b: $e4
	nop                                              ; $6c8c: $00
	ld c, d                                          ; $6c8d: $4a
	jr z, jr_081_6c96                                ; $6c8e: $28 $06

	ret nz                                           ; $6c90: $c0

	ld bc, $06a0                                     ; $6c91: $01 $a0 $06
	inc b                                            ; $6c94: $04
	db $ed                                           ; $6c95: $ed

jr_081_6c96:
	ccf                                              ; $6c96: $3f
	inc b                                            ; $6c97: $04
	ld sp, hl                                        ; $6c98: $f9
	add hl, bc                                       ; $6c99: $09
	ld de, $02e1                                     ; $6c9a: $11 $e1 $02
	inc bc                                           ; $6c9d: $03
	inc de                                           ; $6c9e: $13
	ret nz                                           ; $6c9f: $c0

	ld bc, $06a0                                     ; $6ca0: $01 $a0 $06
	ld bc, $e187                                     ; $6ca3: $01 $87 $e1
	ld [bc], a                                       ; $6ca6: $02
	inc b                                            ; $6ca7: $04
	ld b, h                                          ; $6ca8: $44
	db $e4                                           ; $6ca9: $e4
	nop                                              ; $6caa: $00
	inc l                                            ; $6cab: $2c
	inc b                                            ; $6cac: $04
	ei                                               ; $6cad: $fb
	add hl, bc                                       ; $6cae: $09
	ld de, $02e1                                     ; $6caf: $11 $e1 $02
	inc bc                                           ; $6cb2: $03
	rra                                              ; $6cb3: $1f
	ret nz                                           ; $6cb4: $c0

	ld bc, $06a0                                     ; $6cb5: $01 $a0 $06
	dec b                                            ; $6cb8: $05
	nop                                              ; $6cb9: $00
	pop hl                                           ; $6cba: $e1
	ld [bc], a                                       ; $6cbb: $02
	inc b                                            ; $6cbc: $04
	ld e, a                                          ; $6cbd: $5f
	db $e4                                           ; $6cbe: $e4
	nop                                              ; $6cbf: $00
	rla                                              ; $6cc0: $17
	dec b                                            ; $6cc1: $05
	add hl, bc                                       ; $6cc2: $09
	add hl, bc                                       ; $6cc3: $09
	ld de, $02e1                                     ; $6cc4: $11 $e1 $02
	inc bc                                           ; $6cc7: $03
	rla                                              ; $6cc8: $17
	ret nz                                           ; $6cc9: $c0

	ld bc, $06a0                                     ; $6cca: $01 $a0 $06
	dec b                                            ; $6ccd: $05
	inc c                                            ; $6cce: $0c
	pop hl                                           ; $6ccf: $e1
	ld [bc], a                                       ; $6cd0: $02
	inc b                                            ; $6cd1: $04
	ld c, l                                          ; $6cd2: $4d
	db $e4                                           ; $6cd3: $e4
	nop                                              ; $6cd4: $00
	ld [bc], a                                       ; $6cd5: $02
	add hl, bc                                       ; $6cd6: $09
	ld c, $c1                                        ; $6cd7: $0e $c1
	ld e, c                                          ; $6cd9: $59
	db $e3                                           ; $6cda: $e3
	nop                                              ; $6cdb: $00
	or e                                             ; $6cdc: $b3
	ret nz                                           ; $6cdd: $c0

	ld d, [hl]                                       ; $6cde: $56
	jp c, $d0d5                                      ; $6cdf: $da $d5 $d0

	push hl                                          ; $6ce2: $e5
	dec hl                                           ; $6ce3: $2b
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	add hl, bc                                       ; $6ce6: $09
	inc d                                            ; $6ce7: $14
	ret nc                                           ; $6ce8: $d0

	add e                                            ; $6ce9: $83
	ld bc, $d0de                                     ; $6cea: $01 $de $d0
	ret nz                                           ; $6ced: $c0

	ld bc, $06a0                                     ; $6cee: $01 $a0 $06
	dec b                                            ; $6cf1: $05
	dec de                                           ; $6cf2: $1b
	ret nz                                           ; $6cf3: $c0

	ld bc, $01a0                                     ; $6cf4: $01 $a0 $01

jr_081_6cf7:
	inc bc                                           ; $6cf7: $03
	adc b                                            ; $6cf8: $88
	db $e4                                           ; $6cf9: $e4
	nop                                              ; $6cfa: $00
	ld [bc], a                                       ; $6cfb: $02
	add hl, bc                                       ; $6cfc: $09
	ld hl, $59c1                                     ; $6cfd: $21 $c1 $59
	db $e3                                           ; $6d00: $e3

jr_081_6d01:
	nop                                              ; $6d01: $00
	or [hl]                                          ; $6d02: $b6
	ret nz                                           ; $6d03: $c0

	ld bc, $06a0                                     ; $6d04: $01 $a0 $06
	dec b                                            ; $6d07: $05
	rra                                              ; $6d08: $1f
	pop hl                                           ; $6d09: $e1
	ld [bc], a                                       ; $6d0a: $02
	rlca                                             ; $6d0b: $07
	or [hl]                                          ; $6d0c: $b6
	and b                                            ; $6d0d: $a0
	add b                                            ; $6d0e: $80
	and b                                            ; $6d0f: $a0
	jr jr_081_6d12                                   ; $6d10: $18 $00

jr_081_6d12:
	inc bc                                           ; $6d12: $03
	db $e4                                           ; $6d13: $e4
	nop                                              ; $6d14: $00
	dec bc                                           ; $6d15: $0b
	rst $38                                          ; $6d16: $ff
	rlca                                             ; $6d17: $07
	ld b, b                                          ; $6d18: $40
	add b                                            ; $6d19: $80
	and b                                            ; $6d1a: $a0
	jr jr_081_6d01                                   ; $6d1b: $18 $e4

	nop                                              ; $6d1d: $00
	ld d, [hl]                                       ; $6d1e: $56
	jr z, @+$08                                      ; $6d1f: $28 $06

	ret nz                                           ; $6d21: $c0

	ld bc, $06a0                                     ; $6d22: $01 $a0 $06
	dec b                                            ; $6d25: $05
	jr z, jr_081_6d73                                ; $6d26: $28 $4b

	dec b                                            ; $6d28: $05
	ld l, $09                                        ; $6d29: $2e $09
	dec e                                            ; $6d2b: $1d
	pop hl                                           ; $6d2c: $e1
	ld [bc], a                                       ; $6d2d: $02
	inc bc                                           ; $6d2e: $03
	rla                                              ; $6d2f: $17
	ret nz                                           ; $6d30: $c0

	ld bc, $06a0                                     ; $6d31: $01 $a0 $06
	dec b                                            ; $6d34: $05
	jr nc, jr_081_6cf7                               ; $6d35: $30 $c0

	ld bc, $01a0                                     ; $6d37: $01 $a0 $01
	dec b                                            ; $6d3a: $05
	ld b, b                                          ; $6d3b: $40
	ret nz                                           ; $6d3c: $c0

	ld bc, $06a0                                     ; $6d3d: $01 $a0 $06
	dec b                                            ; $6d40: $05
	ld b, a                                          ; $6d41: $47
	pop hl                                           ; $6d42: $e1
	ld [bc], a                                       ; $6d43: $02
	inc b                                            ; $6d44: $04
	ld c, l                                          ; $6d45: $4d
	db $e4                                           ; $6d46: $e4
	nop                                              ; $6d47: $00
	sbc [hl]                                         ; $6d48: $9e
	dec b                                            ; $6d49: $05
	ld c, b                                          ; $6d4a: $48
	add hl, bc                                       ; $6d4b: $09
	ld de, $02e1                                     ; $6d4c: $11 $e1 $02
	inc bc                                           ; $6d4f: $03
	dec de                                           ; $6d50: $1b
	ret nz                                           ; $6d51: $c0

	ld bc, $06a0                                     ; $6d52: $01 $a0 $06
	dec b                                            ; $6d55: $05
	ld c, d                                          ; $6d56: $4a
	pop hl                                           ; $6d57: $e1
	ld [bc], a                                       ; $6d58: $02
	inc b                                            ; $6d59: $04
	ld d, [hl]                                       ; $6d5a: $56
	db $e4                                           ; $6d5b: $e4
	nop                                              ; $6d5c: $00
	adc c                                            ; $6d5d: $89
	dec b                                            ; $6d5e: $05
	ld e, c                                          ; $6d5f: $59
	add hl, bc                                       ; $6d60: $09
	ld de, $02e1                                     ; $6d61: $11 $e1 $02
	inc bc                                           ; $6d64: $03
	rla                                              ; $6d65: $17
	ret nz                                           ; $6d66: $c0

	ld bc, $06a0                                     ; $6d67: $01 $a0 $06
	dec b                                            ; $6d6a: $05
	ld e, a                                          ; $6d6b: $5f
	pop hl                                           ; $6d6c: $e1
	ld [bc], a                                       ; $6d6d: $02
	inc b                                            ; $6d6e: $04
	ld c, l                                          ; $6d6f: $4d
	db $e4                                           ; $6d70: $e4
	nop                                              ; $6d71: $00
	ld [hl], h                                       ; $6d72: $74

jr_081_6d73:
	jr z, jr_081_6d7b                                ; $6d73: $28 $06

	ret nz                                           ; $6d75: $c0

	ld bc, $06a0                                     ; $6d76: $01 $a0 $06
	dec b                                            ; $6d79: $05
	ld h, e                                          ; $6d7a: $63

jr_081_6d7b:
	ld l, c                                          ; $6d7b: $69
	ret nz                                           ; $6d7c: $c0

	ei                                               ; $6d7d: $fb
	ret nz                                           ; $6d7e: $c0

	add e                                            ; $6d7f: $83
	jp nc, Jump_081_78e0                             ; $6d80: $d2 $e0 $78

	dec d                                            ; $6d83: $15
	dec b                                            ; $6d84: $05
	ld l, b                                          ; $6d85: $68
	add hl, bc                                       ; $6d86: $09
	ld de, $02e1                                     ; $6d87: $11 $e1 $02
	inc bc                                           ; $6d8a: $03
	rla                                              ; $6d8b: $17
	ret nz                                           ; $6d8c: $c0

	ld bc, $06a0                                     ; $6d8d: $01 $a0 $06
	dec b                                            ; $6d90: $05
	ld l, [hl]                                       ; $6d91: $6e
	pop hl                                           ; $6d92: $e1
	ld [bc], a                                       ; $6d93: $02
	inc b                                            ; $6d94: $04
	ld c, l                                          ; $6d95: $4d
	db $e4                                           ; $6d96: $e4
	nop                                              ; $6d97: $00
	ld c, [hl]                                       ; $6d98: $4e
	ld hl, $7905                                     ; $6d99: $21 $05 $79
	add hl, bc                                       ; $6d9c: $09
	dec e                                            ; $6d9d: $1d
	pop hl                                           ; $6d9e: $e1
	ld [bc], a                                       ; $6d9f: $02
	inc bc                                           ; $6da0: $03
	inc de                                           ; $6da1: $13
	ret nz                                           ; $6da2: $c0

	ld bc, $06a0                                     ; $6da3: $01 $a0 $06
	dec b                                            ; $6da6: $05
	add c                                            ; $6da7: $81
	ret nz                                           ; $6da8: $c0

	ld bc, $01a0                                     ; $6da9: $01 $a0 $01
	dec b                                            ; $6dac: $05
	adc c                                            ; $6dad: $89
	ret nz                                           ; $6dae: $c0

	ld bc, $20a0                                     ; $6daf: $01 $a0 $20
	dec b                                            ; $6db2: $05
	sub l                                            ; $6db3: $95
	pop hl                                           ; $6db4: $e1
	ld [bc], a                                       ; $6db5: $02
	inc b                                            ; $6db6: $04
	ld b, h                                          ; $6db7: $44
	db $e4                                           ; $6db8: $e4
	nop                                              ; $6db9: $00
	inc l                                            ; $6dba: $2c
	dec b                                            ; $6dbb: $05
	sbc b                                            ; $6dbc: $98
	add hl, bc                                       ; $6dbd: $09
	ld de, $02e1                                     ; $6dbe: $11 $e1 $02
	inc bc                                           ; $6dc1: $03
	inc de                                           ; $6dc2: $13
	ret nz                                           ; $6dc3: $c0

	ld bc, $06a0                                     ; $6dc4: $01 $a0 $06
	dec b                                            ; $6dc7: $05
	sbc [hl]                                         ; $6dc8: $9e
	pop hl                                           ; $6dc9: $e1
	ld [bc], a                                       ; $6dca: $02
	inc b                                            ; $6dcb: $04
	ld b, h                                          ; $6dcc: $44
	db $e4                                           ; $6dcd: $e4
	nop                                              ; $6dce: $00
	rla                                              ; $6dcf: $17
	dec b                                            ; $6dd0: $05
	and a                                            ; $6dd1: $a7
	add hl, bc                                       ; $6dd2: $09
	ld de, $02e1                                     ; $6dd3: $11 $e1 $02
	inc bc                                           ; $6dd6: $03
	dec de                                           ; $6dd7: $1b
	ret nz                                           ; $6dd8: $c0

	ld bc, $06a0                                     ; $6dd9: $01 $a0 $06
	dec b                                            ; $6ddc: $05
	xor c                                            ; $6ddd: $a9
	pop hl                                           ; $6dde: $e1
	ld [bc], a                                       ; $6ddf: $02
	inc b                                            ; $6de0: $04
	ld d, [hl]                                       ; $6de1: $56
	db $e4                                           ; $6de2: $e4
	nop                                              ; $6de3: $00
	ld [bc], a                                       ; $6de4: $02
	add hl, bc                                       ; $6de5: $09
	ld c, $c1                                        ; $6de6: $0e $c1
	ld e, c                                          ; $6de8: $59
	db $e3                                           ; $6de9: $e3
	nop                                              ; $6dea: $00
	or l                                             ; $6deb: $b5
	ret nz                                           ; $6dec: $c0

	ld d, [hl]                                       ; $6ded: $56
	jp c, $d0d6                                      ; $6dee: $da $d6 $d0

	push hl                                          ; $6df1: $e5
	dec hl                                           ; $6df2: $2b
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	add hl, bc                                       ; $6df5: $09
	ld d, d                                          ; $6df6: $52
	ret nz                                           ; $6df7: $c0

	ld bc, $06a0                                     ; $6df8: $01 $a0 $06
	dec b                                            ; $6dfb: $05
	xor [hl]                                         ; $6dfc: $ae
	ret nz                                           ; $6dfd: $c0

	ld bc, $01a0                                     ; $6dfe: $01 $a0 $01
	inc b                                            ; $6e01: $04
	add hl, de                                       ; $6e02: $19
	add e                                            ; $6e03: $83
	adc e                                            ; $6e04: $8b
	ld [bc], a                                       ; $6e05: $02
	ld b, d                                          ; $6e06: $42
	ld [bc], a                                       ; $6e07: $02
	or b                                             ; $6e08: $b0
	ld [hl], e                                       ; $6e09: $73
	ld [$83d0], sp                                   ; $6e0a: $08 $d0 $83
	ld bc, $d1de                                     ; $6e0d: $01 $de $d1
	db $e4                                           ; $6e10: $e4
	nop                                              ; $6e11: $00
	ret z                                            ; $6e12: $c8

	ld [bc], a                                       ; $6e13: $02
	or b                                             ; $6e14: $b0
	ld l, a                                          ; $6e15: $6f
	ld [$83d0], sp                                   ; $6e16: $08 $d0 $83
	ld bc, $d2de                                     ; $6e19: $01 $de $d2
	db $e4                                           ; $6e1c: $e4
	ld bc, $0216                                     ; $6e1d: $01 $16 $02
	or b                                             ; $6e20: $b0
	ld l, h                                          ; $6e21: $6c
	ld [$83d0], sp                                   ; $6e22: $08 $d0 $83
	ld bc, $d3de                                     ; $6e25: $01 $de $d3
	db $e4                                           ; $6e28: $e4
	ld bc, $0064                                     ; $6e29: $01 $64 $00
	inc e                                            ; $6e2c: $1c
	ret nc                                           ; $6e2d: $d0

	add e                                            ; $6e2e: $83
	ld bc, $d0de                                     ; $6e2f: $01 $de $d0
	pop bc                                           ; $6e32: $c1
	ld e, c                                          ; $6e33: $59
	db $e3                                           ; $6e34: $e3
	nop                                              ; $6e35: $00
	sbc e                                            ; $6e36: $9b
	and b                                            ; $6e37: $a0
	add b                                            ; $6e38: $80
	and b                                            ; $6e39: $a0
	add hl, de                                       ; $6e3a: $19
	nop                                              ; $6e3b: $00
	inc bc                                           ; $6e3c: $03
	db $e4                                           ; $6e3d: $e4
	nop                                              ; $6e3e: $00
	dec bc                                           ; $6e3f: $0b
	rst $38                                          ; $6e40: $ff
	rlca                                             ; $6e41: $07
	ld b, b                                          ; $6e42: $40
	add b                                            ; $6e43: $80
	and b                                            ; $6e44: $a0
	add hl, de                                       ; $6e45: $19
	db $e4                                           ; $6e46: $e4
	nop                                              ; $6e47: $00
	ld c, d                                          ; $6e48: $4a
	jr z, jr_081_6e51                                ; $6e49: $28 $06

	ret nz                                           ; $6e4b: $c0

	ld bc, $06a0                                     ; $6e4c: $01 $a0 $06
	dec b                                            ; $6e4f: $05
	or c                                             ; $6e50: $b1

jr_081_6e51:
	ccf                                              ; $6e51: $3f
	dec b                                            ; $6e52: $05
	or a                                             ; $6e53: $b7
	add hl, bc                                       ; $6e54: $09
	ld de, $02e1                                     ; $6e55: $11 $e1 $02
	inc bc                                           ; $6e58: $03
	inc de                                           ; $6e59: $13
	ret nz                                           ; $6e5a: $c0

	ld bc, $06a0                                     ; $6e5b: $01 $a0 $06
	dec b                                            ; $6e5e: $05
	cp l                                             ; $6e5f: $bd
	pop hl                                           ; $6e60: $e1
	ld [bc], a                                       ; $6e61: $02
	inc b                                            ; $6e62: $04
	dec sp                                           ; $6e63: $3b
	db $e4                                           ; $6e64: $e4
	ld bc, $059a                                     ; $6e65: $01 $9a $05
	call $1109                                       ; $6e68: $cd $09 $11
	pop hl                                           ; $6e6b: $e1
	ld [bc], a                                       ; $6e6c: $02
	inc bc                                           ; $6e6d: $03
	rra                                              ; $6e6e: $1f
	ret nz                                           ; $6e6f: $c0

	ld bc, $06a0                                     ; $6e70: $01 $a0 $06
	dec b                                            ; $6e73: $05
	call nc, $02e1                                   ; $6e74: $d4 $e1 $02
	inc b                                            ; $6e77: $04
	ld e, a                                          ; $6e78: $5f
	db $e4                                           ; $6e79: $e4
	ld bc, $0585                                     ; $6e7a: $01 $85 $05
	ldh [$09], a                                     ; $6e7d: $e0 $09
	ld de, $02e1                                     ; $6e7f: $11 $e1 $02
	inc bc                                           ; $6e82: $03
	dec de                                           ; $6e83: $1b
	ret nz                                           ; $6e84: $c0

	ld bc, $06a0                                     ; $6e85: $01 $a0 $06
	dec b                                            ; $6e88: $05
	ldh [c], a                                       ; $6e89: $e2
	pop hl                                           ; $6e8a: $e1
	ld [bc], a                                       ; $6e8b: $02
	inc b                                            ; $6e8c: $04
	ld d, [hl]                                       ; $6e8d: $56
	db $e4                                           ; $6e8e: $e4
	ld bc, $2870                                     ; $6e8f: $01 $70 $28
	ld b, $c0                                        ; $6e92: $06 $c0
	ld bc, $06a0                                     ; $6e94: $01 $a0 $06
	dec b                                            ; $6e97: $05
	db $eb                                           ; $6e98: $eb
	ccf                                              ; $6e99: $3f
	dec b                                            ; $6e9a: $05
	or $09                                           ; $6e9b: $f6 $09
	ld de, $02e1                                     ; $6e9d: $11 $e1 $02
	inc bc                                           ; $6ea0: $03
	rla                                              ; $6ea1: $17
	ret nz                                           ; $6ea2: $c0

	ld bc, $06a0                                     ; $6ea3: $01 $a0 $06
	dec b                                            ; $6ea6: $05
	ld hl, sp-$1f                                    ; $6ea7: $f8 $e1
	ld [bc], a                                       ; $6ea9: $02
	inc b                                            ; $6eaa: $04
	ld c, l                                          ; $6eab: $4d
	db $e4                                           ; $6eac: $e4
	ld bc, $0552                                     ; $6ead: $01 $52 $05
	db $fc                                           ; $6eb0: $fc
	add hl, bc                                       ; $6eb1: $09
	ld de, $02e1                                     ; $6eb2: $11 $e1 $02
	inc bc                                           ; $6eb5: $03
	rra                                              ; $6eb6: $1f
	ret nz                                           ; $6eb7: $c0

	ld bc, $06a0                                     ; $6eb8: $01 $a0 $06
	dec b                                            ; $6ebb: $05
	cp $e1                                           ; $6ebc: $fe $e1
	ld [bc], a                                       ; $6ebe: $02
	inc b                                            ; $6ebf: $04
	ld e, a                                          ; $6ec0: $5f
	db $e4                                           ; $6ec1: $e4
	ld bc, $063d                                     ; $6ec2: $01 $3d $06
	rlca                                             ; $6ec5: $07
	add hl, bc                                       ; $6ec6: $09
	ld de, $02e1                                     ; $6ec7: $11 $e1 $02
	inc bc                                           ; $6eca: $03
	dec de                                           ; $6ecb: $1b
	ret nz                                           ; $6ecc: $c0

	ld bc, $06a0                                     ; $6ecd: $01 $a0 $06
	ld b, $09                                        ; $6ed0: $06 $09
	pop hl                                           ; $6ed2: $e1
	ld [bc], a                                       ; $6ed3: $02
	inc b                                            ; $6ed4: $04
	ld d, [hl]                                       ; $6ed5: $56
	db $e4                                           ; $6ed6: $e4
	ld bc, $2e28                                     ; $6ed7: $01 $28 $2e
	dec b                                            ; $6eda: $05
	pop bc                                           ; $6edb: $c1
	ld e, c                                          ; $6edc: $59
	db $e3                                           ; $6edd: $e3
	nop                                              ; $6ede: $00
	sbc h                                            ; $6edf: $9c
	ld d, d                                          ; $6ee0: $52
	add b                                            ; $6ee1: $80
	and b                                            ; $6ee2: $a0
	ld a, [de]                                       ; $6ee3: $1a
	nop                                              ; $6ee4: $00
	jr z, jr_081_6eed                                ; $6ee5: $28 $06

	ret nz                                           ; $6ee7: $c0

	ld bc, $06a0                                     ; $6ee8: $01 $a0 $06
	ld b, $14                                        ; $6eeb: $06 $14

jr_081_6eed:
	ccf                                              ; $6eed: $3f
	ld b, $1b                                        ; $6eee: $06 $1b
	add hl, bc                                       ; $6ef0: $09
	ld de, $02e1                                     ; $6ef1: $11 $e1 $02
	inc bc                                           ; $6ef4: $03
	inc de                                           ; $6ef5: $13
	ret nz                                           ; $6ef6: $c0

	ld bc, $06a0                                     ; $6ef7: $01 $a0 $06
	ld b, $1d                                        ; $6efa: $06 $1d
	pop hl                                           ; $6efc: $e1
	ld [bc], a                                       ; $6efd: $02
	inc b                                            ; $6efe: $04
	ld b, h                                          ; $6eff: $44
	db $e4                                           ; $6f00: $e4
	nop                                              ; $6f01: $00
	cp $06                                           ; $6f02: $fe $06
	dec hl                                           ; $6f04: $2b
	add hl, bc                                       ; $6f05: $09
	ld de, $02e1                                     ; $6f06: $11 $e1 $02
	inc bc                                           ; $6f09: $03
	dec de                                           ; $6f0a: $1b
	ret nz                                           ; $6f0b: $c0

	ld bc, $06a0                                     ; $6f0c: $01 $a0 $06
	ld b, $2d                                        ; $6f0f: $06 $2d
	pop hl                                           ; $6f11: $e1
	ld [bc], a                                       ; $6f12: $02
	inc b                                            ; $6f13: $04
	ld d, [hl]                                       ; $6f14: $56
	db $e4                                           ; $6f15: $e4
	nop                                              ; $6f16: $00
	jp hl                                            ; $6f17: $e9


	ld b, $34                                        ; $6f18: $06 $34
	add hl, bc                                       ; $6f1a: $09
	ld de, $02e1                                     ; $6f1b: $11 $e1 $02
	inc bc                                           ; $6f1e: $03
	rla                                              ; $6f1f: $17
	ret nz                                           ; $6f20: $c0

	ld bc, $06a0                                     ; $6f21: $01 $a0 $06
	ld b, $36                                        ; $6f24: $06 $36
	pop hl                                           ; $6f26: $e1
	ld [bc], a                                       ; $6f27: $02
	inc b                                            ; $6f28: $04
	ld c, l                                          ; $6f29: $4d
	db $e4                                           ; $6f2a: $e4
	nop                                              ; $6f2b: $00
	call nc, $09ff                                   ; $6f2c: $d4 $ff $09
	inc bc                                           ; $6f2f: $03
	ldh [rP1], a                                     ; $6f30: $e0 $00
	cp h                                             ; $6f32: $bc
	ld l, $05                                        ; $6f33: $2e $05
	pop bc                                           ; $6f35: $c1
	ld e, c                                          ; $6f36: $59
	db $e3                                           ; $6f37: $e3
	nop                                              ; $6f38: $00
	sbc l                                            ; $6f39: $9d
	ld d, d                                          ; $6f3a: $52
	add b                                            ; $6f3b: $80
	and b                                            ; $6f3c: $a0
	dec de                                           ; $6f3d: $1b
	nop                                              ; $6f3e: $00
	jr z, jr_081_6f47                                ; $6f3f: $28 $06

	ret nz                                           ; $6f41: $c0

	ld bc, $06a0                                     ; $6f42: $01 $a0 $06
	ld b, $3c                                        ; $6f45: $06 $3c

jr_081_6f47:
	ccf                                              ; $6f47: $3f
	ld b, $44                                        ; $6f48: $06 $44
	add hl, bc                                       ; $6f4a: $09
	ld de, $02e1                                     ; $6f4b: $11 $e1 $02
	inc bc                                           ; $6f4e: $03
	inc de                                           ; $6f4f: $13
	ret nz                                           ; $6f50: $c0

	ld bc, $06a0                                     ; $6f51: $01 $a0 $06
	ld b, $46                                        ; $6f54: $06 $46
	pop hl                                           ; $6f56: $e1
	ld [bc], a                                       ; $6f57: $02
	inc b                                            ; $6f58: $04
	dec sp                                           ; $6f59: $3b
	db $e4                                           ; $6f5a: $e4
	nop                                              ; $6f5b: $00
	and h                                            ; $6f5c: $a4
	ld b, $4f                                        ; $6f5d: $06 $4f
	add hl, bc                                       ; $6f5f: $09
	ld de, $02e1                                     ; $6f60: $11 $e1 $02
	inc bc                                           ; $6f63: $03
	rra                                              ; $6f64: $1f
	ret nz                                           ; $6f65: $c0

	ld bc, $06a0                                     ; $6f66: $01 $a0 $06
	ld b, $54                                        ; $6f69: $06 $54
	pop hl                                           ; $6f6b: $e1
	ld [bc], a                                       ; $6f6c: $02
	inc b                                            ; $6f6d: $04
	ld e, a                                          ; $6f6e: $5f
	db $e4                                           ; $6f6f: $e4
	nop                                              ; $6f70: $00
	adc a                                            ; $6f71: $8f
	ld b, $5c                                        ; $6f72: $06 $5c
	add hl, bc                                       ; $6f74: $09
	ld de, $02e1                                     ; $6f75: $11 $e1 $02
	inc bc                                           ; $6f78: $03
	dec de                                           ; $6f79: $1b
	ret nz                                           ; $6f7a: $c0

	ld bc, $06a0                                     ; $6f7b: $01 $a0 $06
	ld b, $5e                                        ; $6f7e: $06 $5e
	pop hl                                           ; $6f80: $e1
	ld [bc], a                                       ; $6f81: $02
	inc b                                            ; $6f82: $04
	ld d, [hl]                                       ; $6f83: $56
	db $e4                                           ; $6f84: $e4
	nop                                              ; $6f85: $00
	ld a, d                                          ; $6f86: $7a
	rst $38                                          ; $6f87: $ff
	add hl, bc                                       ; $6f88: $09
	inc bc                                           ; $6f89: $03
	ldh [rP1], a                                     ; $6f8a: $e0 $00
	ld h, d                                          ; $6f8c: $62
	ld l, $05                                        ; $6f8d: $2e $05
	pop bc                                           ; $6f8f: $c1
	ld e, c                                          ; $6f90: $59
	db $e3                                           ; $6f91: $e3
	nop                                              ; $6f92: $00
	sbc [hl]                                         ; $6f93: $9e
	ld e, b                                          ; $6f94: $58
	add b                                            ; $6f95: $80
	and b                                            ; $6f96: $a0
	inc e                                            ; $6f97: $1c
	nop                                              ; $6f98: $00
	jr z, jr_081_6fa1                                ; $6f99: $28 $06

	ret nz                                           ; $6f9b: $c0

	ld bc, $06a0                                     ; $6f9c: $01 $a0 $06
	ld b, $68                                        ; $6f9f: $06 $68

jr_081_6fa1:
	ld b, l                                          ; $6fa1: $45
	ld b, $70                                        ; $6fa2: $06 $70
	add hl, bc                                       ; $6fa4: $09
	ld de, $02e1                                     ; $6fa5: $11 $e1 $02
	inc bc                                           ; $6fa8: $03
	rla                                              ; $6fa9: $17
	ret nz                                           ; $6faa: $c0

	ld bc, $06a0                                     ; $6fab: $01 $a0 $06
	ld b, $74                                        ; $6fae: $06 $74
	pop hl                                           ; $6fb0: $e1
	ld [bc], a                                       ; $6fb1: $02
	inc b                                            ; $6fb2: $04
	ld c, l                                          ; $6fb3: $4d
	db $e4                                           ; $6fb4: $e4
	nop                                              ; $6fb5: $00
	ld c, d                                          ; $6fb6: $4a
	ld b, $81                                        ; $6fb7: $06 $81
	add hl, bc                                       ; $6fb9: $09
	rla                                              ; $6fba: $17
	pop hl                                           ; $6fbb: $e1
	ld [bc], a                                       ; $6fbc: $02
	inc bc                                           ; $6fbd: $03
	dec de                                           ; $6fbe: $1b
	ret nz                                           ; $6fbf: $c0

	ld bc, $06a0                                     ; $6fc0: $01 $a0 $06
	ld b, $88                                        ; $6fc3: $06 $88
	ret nz                                           ; $6fc5: $c0

	ld bc, $01a0                                     ; $6fc6: $01 $a0 $01
	ld b, $96                                        ; $6fc9: $06 $96
	pop hl                                           ; $6fcb: $e1
	ld [bc], a                                       ; $6fcc: $02
	inc b                                            ; $6fcd: $04
	ld d, [hl]                                       ; $6fce: $56
	db $e4                                           ; $6fcf: $e4
	nop                                              ; $6fd0: $00
	cpl                                              ; $6fd1: $2f
	ld b, $9d                                        ; $6fd2: $06 $9d
	add hl, bc                                       ; $6fd4: $09
	ld de, $02e1                                     ; $6fd5: $11 $e1 $02
	inc bc                                           ; $6fd8: $03
	rla                                              ; $6fd9: $17
	ret nz                                           ; $6fda: $c0

	ld bc, $06a0                                     ; $6fdb: $01 $a0 $06
	ld b, $a4                                        ; $6fde: $06 $a4
	pop hl                                           ; $6fe0: $e1
	ld [bc], a                                       ; $6fe1: $02
	inc b                                            ; $6fe2: $04
	ld c, l                                          ; $6fe3: $4d
	db $e4                                           ; $6fe4: $e4
	nop                                              ; $6fe5: $00
	ld a, [de]                                       ; $6fe6: $1a
	rst $38                                          ; $6fe7: $ff
	add hl, bc                                       ; $6fe8: $09
	inc bc                                           ; $6fe9: $03
	ldh [rP1], a                                     ; $6fea: $e0 $00
	ld [bc], a                                       ; $6fec: $02
	ld de, $02e1                                     ; $6fed: $11 $e1 $02
	inc bc                                           ; $6ff0: $03
	dec de                                           ; $6ff1: $1b
	ret nz                                           ; $6ff2: $c0

	ld bc, $06a0                                     ; $6ff3: $01 $a0 $06
	ld b, $af                                        ; $6ff6: $06 $af
	pop hl                                           ; $6ff8: $e1
	ld [bc], a                                       ; $6ff9: $02
	inc b                                            ; $6ffa: $04
	ld d, [hl]                                       ; $6ffb: $56
	db $e4                                           ; $6ffc: $e4
	nop                                              ; $6ffd: $00
	ld [bc], a                                       ; $6ffe: $02
	add hl, bc                                       ; $6fff: $09
	cpl                                              ; $7000: $2f
	pop bc                                           ; $7001: $c1
	ld e, c                                          ; $7002: $59
	db $e3                                           ; $7003: $e3
	nop                                              ; $7004: $00
	sbc d                                            ; $7005: $9a
	add e                                            ; $7006: $83
	adc e                                            ; $7007: $8b
	ld [bc], a                                       ; $7008: $02
	ld b, d                                          ; $7009: $42
	ld [bc], a                                       ; $700a: $02
	or b                                             ; $700b: $b0
	ld [hl], e                                       ; $700c: $73
	dec b                                            ; $700d: $05
	ret nz                                           ; $700e: $c0

	ld d, [hl]                                       ; $700f: $56
	jp c, $d1d7                                      ; $7010: $da $d7 $d1

	ld [bc], a                                       ; $7013: $02
	or b                                             ; $7014: $b0
	ld l, a                                          ; $7015: $6f
	dec b                                            ; $7016: $05
	ret nz                                           ; $7017: $c0

	ld d, [hl]                                       ; $7018: $56
	jp c, $d2d7                                      ; $7019: $da $d7 $d2

	ld [bc], a                                       ; $701c: $02
	or b                                             ; $701d: $b0
	ld l, h                                          ; $701e: $6c
	dec b                                            ; $701f: $05
	ret nz                                           ; $7020: $c0

	ld d, [hl]                                       ; $7021: $56
	jp c, $d3d7                                      ; $7022: $da $d7 $d3

	nop                                              ; $7025: $00
	dec b                                            ; $7026: $05
	ret nz                                           ; $7027: $c0

	ld d, [hl]                                       ; $7028: $56
	jp c, $d0d7                                      ; $7029: $da $d7 $d0

	push hl                                          ; $702c: $e5
	dec hl                                           ; $702d: $2b
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	add hl, bc                                       ; $7030: $09
	inc l                                            ; $7031: $2c
	ret nc                                           ; $7032: $d0

	add e                                            ; $7033: $83
	ld bc, $d0de                                     ; $7034: $01 $de $d0
	pop bc                                           ; $7037: $c1
	jp z, $dad0                                      ; $7038: $ca $d0 $da

	ret nz                                           ; $703b: $c0

	ld bc, $06a0                                     ; $703c: $01 $a0 $06
	ld b, $b4                                        ; $703f: $06 $b4
	ret nz                                           ; $7041: $c0

	ld bc, $01a0                                     ; $7042: $01 $a0 $01
	inc b                                            ; $7045: $04
	add hl, de                                       ; $7046: $19
	pop bc                                           ; $7047: $c1
	ld e, c                                          ; $7048: $59
	db $e3                                           ; $7049: $e3
	nop                                              ; $704a: $00
	and l                                            ; $704b: $a5
	and b                                            ; $704c: $a0
	add b                                            ; $704d: $80
	and b                                            ; $704e: $a0
	dec e                                            ; $704f: $1d
	nop                                              ; $7050: $00
	inc bc                                           ; $7051: $03
	db $e4                                           ; $7052: $e4
	nop                                              ; $7053: $00
	dec bc                                           ; $7054: $0b
	rst $38                                          ; $7055: $ff
	rlca                                             ; $7056: $07
	ld b, b                                          ; $7057: $40
	add b                                            ; $7058: $80
	and b                                            ; $7059: $a0
	dec e                                            ; $705a: $1d
	db $e4                                           ; $705b: $e4
	nop                                              ; $705c: $00
	ld d, [hl]                                       ; $705d: $56
	jr z, jr_081_7066                                ; $705e: $28 $06

	ret nz                                           ; $7060: $c0

	ld bc, $06a0                                     ; $7061: $01 $a0 $06
	ld b, $b8                                        ; $7064: $06 $b8

jr_081_7066:
	ld c, e                                          ; $7066: $4b
	ld b, $bd                                        ; $7067: $06 $bd
	add hl, bc                                       ; $7069: $09
	dec e                                            ; $706a: $1d
	pop hl                                           ; $706b: $e1
	ld [bc], a                                       ; $706c: $02
	inc bc                                           ; $706d: $03
	rla                                              ; $706e: $17
	ret nz                                           ; $706f: $c0

	ld bc, $06a0                                     ; $7070: $01 $a0 $06
	ld b, $bf                                        ; $7073: $06 $bf
	ret nz                                           ; $7075: $c0

	ld bc, $21a0                                     ; $7076: $01 $a0 $21
	ld b, $ca                                        ; $7079: $06 $ca
	ret nz                                           ; $707b: $c0

	ld bc, $06a0                                     ; $707c: $01 $a0 $06
	ld b, $d2                                        ; $707f: $06 $d2
	pop hl                                           ; $7081: $e1
	ld [bc], a                                       ; $7082: $02
	inc b                                            ; $7083: $04
	ld c, l                                          ; $7084: $4d
	db $e4                                           ; $7085: $e4
	nop                                              ; $7086: $00
	ld [hl], h                                       ; $7087: $74
	ld b, $d9                                        ; $7088: $06 $d9
	add hl, bc                                       ; $708a: $09
	ld de, $02e1                                     ; $708b: $11 $e1 $02
	inc bc                                           ; $708e: $03
	dec de                                           ; $708f: $1b
	ret nz                                           ; $7090: $c0

	ld bc, $06a0                                     ; $7091: $01 $a0 $06
	ld b, $e0                                        ; $7094: $06 $e0
	pop hl                                           ; $7096: $e1
	ld [bc], a                                       ; $7097: $02
	inc b                                            ; $7098: $04
	ld d, [hl]                                       ; $7099: $56
	db $e4                                           ; $709a: $e4
	nop                                              ; $709b: $00
	ld e, a                                          ; $709c: $5f
	ld b, $eb                                        ; $709d: $06 $eb
	add hl, bc                                       ; $709f: $09
	ld de, $02e1                                     ; $70a0: $11 $e1 $02
	inc bc                                           ; $70a3: $03
	dec de                                           ; $70a4: $1b
	ret nz                                           ; $70a5: $c0

	ld bc, $06a0                                     ; $70a6: $01 $a0 $06
	ld b, $ed                                        ; $70a9: $06 $ed
	pop hl                                           ; $70ab: $e1
	ld [bc], a                                       ; $70ac: $02
	inc b                                            ; $70ad: $04
	ld d, [hl]                                       ; $70ae: $56
	db $e4                                           ; $70af: $e4
	nop                                              ; $70b0: $00
	ld c, d                                          ; $70b1: $4a
	jr z, jr_081_70ba                                ; $70b2: $28 $06

	ret nz                                           ; $70b4: $c0

	ld bc, $06a0                                     ; $70b5: $01 $a0 $06
	ld b, $f2                                        ; $70b8: $06 $f2

jr_081_70ba:
	ccf                                              ; $70ba: $3f
	ld b, $f8                                        ; $70bb: $06 $f8
	add hl, bc                                       ; $70bd: $09
	ld de, $02e1                                     ; $70be: $11 $e1 $02
	inc bc                                           ; $70c1: $03
	rla                                              ; $70c2: $17
	ret nz                                           ; $70c3: $c0

	ld bc, $06a0                                     ; $70c4: $01 $a0 $06
	ld b, $fe                                        ; $70c7: $06 $fe
	pop hl                                           ; $70c9: $e1
	ld [bc], a                                       ; $70ca: $02
	inc b                                            ; $70cb: $04
	ld c, l                                          ; $70cc: $4d
	db $e4                                           ; $70cd: $e4
	nop                                              ; $70ce: $00
	inc l                                            ; $70cf: $2c
	rlca                                             ; $70d0: $07
	dec b                                            ; $70d1: $05
	add hl, bc                                       ; $70d2: $09
	ld de, $02e1                                     ; $70d3: $11 $e1 $02
	inc bc                                           ; $70d6: $03
	dec de                                           ; $70d7: $1b
	ret nz                                           ; $70d8: $c0

	ld bc, $06a0                                     ; $70d9: $01 $a0 $06
	rlca                                             ; $70dc: $07
	rlca                                             ; $70dd: $07
	pop hl                                           ; $70de: $e1
	ld [bc], a                                       ; $70df: $02
	inc b                                            ; $70e0: $04
	ld d, [hl]                                       ; $70e1: $56
	db $e4                                           ; $70e2: $e4
	nop                                              ; $70e3: $00
	rla                                              ; $70e4: $17
	rlca                                             ; $70e5: $07
	db $10                                           ; $70e6: $10
	add hl, bc                                       ; $70e7: $09
	ld de, $02e1                                     ; $70e8: $11 $e1 $02
	inc bc                                           ; $70eb: $03
	rla                                              ; $70ec: $17
	ret nz                                           ; $70ed: $c0

	ld bc, $06a0                                     ; $70ee: $01 $a0 $06
	rlca                                             ; $70f1: $07
	ld d, $e1                                        ; $70f2: $16 $e1
	ld [bc], a                                       ; $70f4: $02
	inc b                                            ; $70f5: $04
	ld c, l                                          ; $70f6: $4d
	db $e4                                           ; $70f7: $e4
	nop                                              ; $70f8: $00
	ld [bc], a                                       ; $70f9: $02
	add hl, bc                                       ; $70fa: $09
	ld c, $c1                                        ; $70fb: $0e $c1
	ld e, c                                          ; $70fd: $59
	db $e3                                           ; $70fe: $e3
	nop                                              ; $70ff: $00
	and h                                            ; $7100: $a4
	ret nz                                           ; $7101: $c0

	ld d, [hl]                                       ; $7102: $56
	jp c, $d0d8                                      ; $7103: $da $d8 $d0

	push hl                                          ; $7106: $e5
	dec hl                                           ; $7107: $2b
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	inc l                                            ; $710a: $2c
	inc c                                            ; $710b: $0c
	ret nz                                           ; $710c: $c0

	ld bc, $06a0                                     ; $710d: $01 $a0 $06
	rlca                                             ; $7110: $07
	dec e                                            ; $7111: $1d
	ret nz                                           ; $7112: $c0

	ld bc, $01a0                                     ; $7113: $01 $a0 $01
	inc bc                                           ; $7116: $03
	adc b                                            ; $7117: $88
	add hl, de                                       ; $7118: $19
	add b                                            ; $7119: $80
	ld [bc], a                                       ; $711a: $02
	ld d, [hl]                                       ; $711b: $56
	ld [$070e], sp                                   ; $711c: $08 $0e $07
	ld hl, $0309                                     ; $711f: $21 $09 $03
	db $e4                                           ; $7122: $e4
	nop                                              ; $7123: $00
	rrca                                             ; $7124: $0f
	rlca                                             ; $7125: $07
	inc hl                                           ; $7126: $23
	add hl, bc                                       ; $7127: $09
	inc bc                                           ; $7128: $03
	db $e4                                           ; $7129: $e4
	nop                                              ; $712a: $00
	inc l                                            ; $712b: $2c
	pop de                                           ; $712c: $d1
	add hl, bc                                       ; $712d: $09
	inc bc                                           ; $712e: $03
	db $e4                                           ; $712f: $e4
	nop                                              ; $7130: $00
	ld [bc], a                                       ; $7131: $02
	add hl, bc                                       ; $7132: $09
	ld [hl+], a                                      ; $7133: $22
	ret nc                                           ; $7134: $d0

	add e                                            ; $7135: $83
	ld bc, $d1de                                     ; $7136: $01 $de $d1
	pop bc                                           ; $7139: $c1
	ld e, c                                          ; $713a: $59
	db $e3                                           ; $713b: $e3
	nop                                              ; $713c: $00
	sbc b                                            ; $713d: $98
	ret nc                                           ; $713e: $d0

	adc e                                            ; $713f: $8b
	and b                                            ; $7140: $a0
	ld e, $b0                                        ; $7141: $1e $b0
	ld a, b                                          ; $7143: $78
	and b                                            ; $7144: $a0
	add b                                            ; $7145: $80
	and b                                            ; $7146: $a0
	ld a, [hl+]                                      ; $7147: $2a
	nop                                              ; $7148: $00
	inc bc                                           ; $7149: $03
	db $e4                                           ; $714a: $e4
	nop                                              ; $714b: $00
	cpl                                              ; $714c: $2f
	rst $38                                          ; $714d: $ff
	rlca                                             ; $714e: $07
	ld b, b                                          ; $714f: $40
	add b                                            ; $7150: $80
	and b                                            ; $7151: $a0
	ld a, [hl+]                                      ; $7152: $2a
	db $e4                                           ; $7153: $e4
	nop                                              ; $7154: $00
	ld l, [hl]                                       ; $7155: $6e
	add hl, bc                                       ; $7156: $09
	ld [hl+], a                                      ; $7157: $22
	ret nc                                           ; $7158: $d0

	add e                                            ; $7159: $83
	ld bc, $d2de                                     ; $715a: $01 $de $d2
	pop bc                                           ; $715d: $c1
	ld e, c                                          ; $715e: $59
	db $e3                                           ; $715f: $e3
	nop                                              ; $7160: $00
	sbc c                                            ; $7161: $99
	ret nc                                           ; $7162: $d0

	adc e                                            ; $7163: $8b
	and b                                            ; $7164: $a0
	ld e, $b0                                        ; $7165: $1e $b0
	ld a, c                                          ; $7167: $79
	and b                                            ; $7168: $a0
	add b                                            ; $7169: $80
	and b                                            ; $716a: $a0
	dec hl                                           ; $716b: $2b
	nop                                              ; $716c: $00
	inc bc                                           ; $716d: $03
	db $e4                                           ; $716e: $e4
	nop                                              ; $716f: $00
	sbc e                                            ; $7170: $9b
	rst $38                                          ; $7171: $ff
	rlca                                             ; $7172: $07
	ld b, b                                          ; $7173: $40
	add b                                            ; $7174: $80
	and b                                            ; $7175: $a0
	dec hl                                           ; $7176: $2b
	db $e4                                           ; $7177: $e4
	nop                                              ; $7178: $00
	jp c, $0628                                      ; $7179: $da $28 $06

	ret nz                                           ; $717c: $c0

	ld bc, $06a0                                     ; $717d: $01 $a0 $06
	rlca                                             ; $7180: $07
	dec h                                            ; $7181: $25
	ccf                                              ; $7182: $3f
	rlca                                             ; $7183: $07
	cpl                                              ; $7184: $2f
	add hl, bc                                       ; $7185: $09
	ld de, $02e1                                     ; $7186: $11 $e1 $02
	inc bc                                           ; $7189: $03
	rrca                                             ; $718a: $0f
	ret nz                                           ; $718b: $c0

	ld bc, $06a0                                     ; $718c: $01 $a0 $06
	rlca                                             ; $718f: $07
	dec [hl]                                         ; $7190: $35
	pop hl                                           ; $7191: $e1
	ld [bc], a                                       ; $7192: $02
	inc b                                            ; $7193: $04
	dec sp                                           ; $7194: $3b
	db $e4                                           ; $7195: $e4
	ld bc, $0704                                     ; $7196: $01 $04 $07
	ld a, $09                                        ; $7199: $3e $09
	ld de, $02e1                                     ; $719b: $11 $e1 $02
	inc bc                                           ; $719e: $03
	rra                                              ; $719f: $1f
	ret nz                                           ; $71a0: $c0

	ld bc, $06a0                                     ; $71a1: $01 $a0 $06
	rlca                                             ; $71a4: $07
	ld b, b                                          ; $71a5: $40
	pop hl                                           ; $71a6: $e1
	ld [bc], a                                       ; $71a7: $02
	inc b                                            ; $71a8: $04
	ld e, a                                          ; $71a9: $5f
	db $e4                                           ; $71aa: $e4
	nop                                              ; $71ab: $00
	rst AddAOntoHL                                          ; $71ac: $ef
	rlca                                             ; $71ad: $07
	ld c, d                                          ; $71ae: $4a
	add hl, bc                                       ; $71af: $09
	ld de, $02e1                                     ; $71b0: $11 $e1 $02
	inc bc                                           ; $71b3: $03
	rla                                              ; $71b4: $17
	ret nz                                           ; $71b5: $c0

	ld bc, $06a0                                     ; $71b6: $01 $a0 $06
	rlca                                             ; $71b9: $07
	ld d, c                                          ; $71ba: $51
	pop hl                                           ; $71bb: $e1
	ld [bc], a                                       ; $71bc: $02
	inc b                                            ; $71bd: $04
	ld c, l                                          ; $71be: $4d
	db $e4                                           ; $71bf: $e4
	nop                                              ; $71c0: $00
	jp c, $0628                                      ; $71c1: $da $28 $06

	ret nz                                           ; $71c4: $c0

	ld bc, $06a0                                     ; $71c5: $01 $a0 $06
	rlca                                             ; $71c8: $07
	ld h, b                                          ; $71c9: $60
	ccf                                              ; $71ca: $3f
	rlca                                             ; $71cb: $07
	ld h, a                                          ; $71cc: $67
	add hl, bc                                       ; $71cd: $09
	ld de, $02e1                                     ; $71ce: $11 $e1 $02
	inc bc                                           ; $71d1: $03
	inc de                                           ; $71d2: $13
	ret nz                                           ; $71d3: $c0

	ld bc, $06a0                                     ; $71d4: $01 $a0 $06
	rlca                                             ; $71d7: $07
	ld l, c                                          ; $71d8: $69
	pop hl                                           ; $71d9: $e1
	ld [bc], a                                       ; $71da: $02
	inc b                                            ; $71db: $04
	ld b, h                                          ; $71dc: $44
	db $e4                                           ; $71dd: $e4
	nop                                              ; $71de: $00
	cp h                                             ; $71df: $bc
	rlca                                             ; $71e0: $07
	ld [hl], h                                       ; $71e1: $74
	add hl, bc                                       ; $71e2: $09
	ld de, $02e1                                     ; $71e3: $11 $e1 $02
	inc bc                                           ; $71e6: $03
	dec de                                           ; $71e7: $1b
	ret nz                                           ; $71e8: $c0

	ld bc, $06a0                                     ; $71e9: $01 $a0 $06
	rlca                                             ; $71ec: $07
	halt                                             ; $71ed: $76
	pop hl                                           ; $71ee: $e1
	ld [bc], a                                       ; $71ef: $02
	inc b                                            ; $71f0: $04
	ld d, [hl]                                       ; $71f1: $56
	db $e4                                           ; $71f2: $e4
	nop                                              ; $71f3: $00
	and a                                            ; $71f4: $a7
	rlca                                             ; $71f5: $07
	add h                                            ; $71f6: $84
	add hl, bc                                       ; $71f7: $09
	ld de, $02e1                                     ; $71f8: $11 $e1 $02
	inc bc                                           ; $71fb: $03
	rla                                              ; $71fc: $17
	ret nz                                           ; $71fd: $c0

	ld bc, $06a0                                     ; $71fe: $01 $a0 $06
	rlca                                             ; $7201: $07
	add [hl]                                         ; $7202: $86
	pop hl                                           ; $7203: $e1
	ld [bc], a                                       ; $7204: $02
	inc b                                            ; $7205: $04
	ld c, l                                          ; $7206: $4d
	db $e4                                           ; $7207: $e4
	nop                                              ; $7208: $00
	sub d                                            ; $7209: $92
	jr z, jr_081_7212                                ; $720a: $28 $06

	ret nz                                           ; $720c: $c0

	ld bc, $06a0                                     ; $720d: $01 $a0 $06
	rlca                                             ; $7210: $07
	adc a                                            ; $7211: $8f

jr_081_7212:
	ccf                                              ; $7212: $3f
	rlca                                             ; $7213: $07
	sbc h                                            ; $7214: $9c
	add hl, bc                                       ; $7215: $09
	ld de, $02e1                                     ; $7216: $11 $e1 $02
	inc bc                                           ; $7219: $03
	inc de                                           ; $721a: $13
	ret nz                                           ; $721b: $c0

	ld bc, $06a0                                     ; $721c: $01 $a0 $06
	rlca                                             ; $721f: $07
	and d                                            ; $7220: $a2
	pop hl                                           ; $7221: $e1
	ld [bc], a                                       ; $7222: $02
	inc b                                            ; $7223: $04
	ld b, h                                          ; $7224: $44
	db $e4                                           ; $7225: $e4
	nop                                              ; $7226: $00
	ld [hl], h                                       ; $7227: $74
	rlca                                             ; $7228: $07
	or b                                             ; $7229: $b0
	add hl, bc                                       ; $722a: $09
	ld de, $02e1                                     ; $722b: $11 $e1 $02
	inc bc                                           ; $722e: $03
	rra                                              ; $722f: $1f
	ret nz                                           ; $7230: $c0

	ld bc, $06a0                                     ; $7231: $01 $a0 $06
	rlca                                             ; $7234: $07
	cp b                                             ; $7235: $b8
	pop hl                                           ; $7236: $e1
	ld [bc], a                                       ; $7237: $02
	inc b                                            ; $7238: $04
	ld e, a                                          ; $7239: $5f
	db $e4                                           ; $723a: $e4
	nop                                              ; $723b: $00
	ld e, a                                          ; $723c: $5f
	rlca                                             ; $723d: $07
	jp $1109                                         ; $723e: $c3 $09 $11


	pop hl                                           ; $7241: $e1
	ld [bc], a                                       ; $7242: $02
	inc bc                                           ; $7243: $03
	dec de                                           ; $7244: $1b
	ret nz                                           ; $7245: $c0

	ld bc, $06a0                                     ; $7246: $01 $a0 $06
	rlca                                             ; $7249: $07
	set 4, c                                         ; $724a: $cb $e1
	ld [bc], a                                       ; $724c: $02
	inc b                                            ; $724d: $04
	ld d, [hl]                                       ; $724e: $56
	db $e4                                           ; $724f: $e4
	nop                                              ; $7250: $00
	ld c, d                                          ; $7251: $4a
	jr z, @+$08                                      ; $7252: $28 $06

	ret nz                                           ; $7254: $c0

	ld bc, $06a0                                     ; $7255: $01 $a0 $06
	rlca                                             ; $7258: $07
	jp nc, $073f                                     ; $7259: $d2 $3f $07

	reti                                             ; $725c: $d9


	add hl, bc                                       ; $725d: $09
	ld de, $02e1                                     ; $725e: $11 $e1 $02
	inc bc                                           ; $7261: $03
	inc de                                           ; $7262: $13
	ret nz                                           ; $7263: $c0

	ld bc, $06a0                                     ; $7264: $01 $a0 $06
	rlca                                             ; $7267: $07
	pop hl                                           ; $7268: $e1
	pop hl                                           ; $7269: $e1
	ld [bc], a                                       ; $726a: $02
	inc b                                            ; $726b: $04
	ld b, h                                          ; $726c: $44
	db $e4                                           ; $726d: $e4
	nop                                              ; $726e: $00
	inc l                                            ; $726f: $2c
	rlca                                             ; $7270: $07
	db $eb                                           ; $7271: $eb
	add hl, bc                                       ; $7272: $09
	ld de, $02e1                                     ; $7273: $11 $e1 $02
	inc bc                                           ; $7276: $03
	dec de                                           ; $7277: $1b
	ret nz                                           ; $7278: $c0

	ld bc, $06a0                                     ; $7279: $01 $a0 $06
	rlca                                             ; $727c: $07
	ldh a, [$e1]                                     ; $727d: $f0 $e1
	ld [bc], a                                       ; $727f: $02
	inc b                                            ; $7280: $04
	ld d, [hl]                                       ; $7281: $56
	db $e4                                           ; $7282: $e4
	nop                                              ; $7283: $00
	rla                                              ; $7284: $17
	rlca                                             ; $7285: $07
	push af                                          ; $7286: $f5
	add hl, bc                                       ; $7287: $09
	ld de, $02e1                                     ; $7288: $11 $e1 $02
	inc bc                                           ; $728b: $03
	rla                                              ; $728c: $17
	ret nz                                           ; $728d: $c0

	ld bc, $06a0                                     ; $728e: $01 $a0 $06
	rlca                                             ; $7291: $07
	ei                                               ; $7292: $fb
	pop hl                                           ; $7293: $e1
	ld [bc], a                                       ; $7294: $02
	inc b                                            ; $7295: $04
	ld c, l                                          ; $7296: $4d
	db $e4                                           ; $7297: $e4
	nop                                              ; $7298: $00
	ld [bc], a                                       ; $7299: $02
	add hl, bc                                       ; $729a: $09
	rra                                              ; $729b: $1f
	pop bc                                           ; $729c: $c1
	ld e, c                                          ; $729d: $59
	db $e3                                           ; $729e: $e3
	nop                                              ; $729f: $00
	sub a                                            ; $72a0: $97
	add c                                            ; $72a1: $81
	adc e                                            ; $72a2: $8b
	and b                                            ; $72a3: $a0
	ld e, $02                                        ; $72a4: $1e $02
	or b                                             ; $72a6: $b0
	ld a, b                                          ; $72a7: $78
	dec b                                            ; $72a8: $05
	ret nz                                           ; $72a9: $c0

	ld d, [hl]                                       ; $72aa: $56
	jp c, $d1d9                                      ; $72ab: $da $d9 $d1

	ld [bc], a                                       ; $72ae: $02
	or b                                             ; $72af: $b0
	ld a, c                                          ; $72b0: $79
	dec b                                            ; $72b1: $05
	ret nz                                           ; $72b2: $c0

	ld d, [hl]                                       ; $72b3: $56
	jp c, $d2d9                                      ; $72b4: $da $d9 $d2

	push hl                                          ; $72b7: $e5
	dec hl                                           ; $72b8: $2b
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	ld e, h                                          ; $72bb: $5c
	ld b, $09                                        ; $72bc: $06 $09
	jr z, @-$2e                                      ; $72be: $28 $d0

	add e                                            ; $72c0: $83
	ld bc, $d0de                                     ; $72c1: $01 $de $d0
	ret nz                                           ; $72c4: $c0

	ld bc, $06a0                                     ; $72c5: $01 $a0 $06
	nop                                              ; $72c8: $00
	ld bc, $01c0                                     ; $72c9: $01 $c0 $01
	and b                                            ; $72cc: $a0
	ld bc, $0500                                     ; $72cd: $01 $00 $05
	pop bc                                           ; $72d0: $c1
	ld e, c                                          ; $72d1: $59
	db $e3                                           ; $72d2: $e3
	nop                                              ; $72d3: $00
	cp l                                             ; $72d4: $bd
	and b                                            ; $72d5: $a0
	add b                                            ; $72d6: $80
	and b                                            ; $72d7: $a0
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	inc bc                                           ; $72da: $03
	db $e4                                           ; $72db: $e4
	nop                                              ; $72dc: $00
	dec bc                                           ; $72dd: $0b
	rst $38                                          ; $72de: $ff
	rlca                                             ; $72df: $07
	ld b, b                                          ; $72e0: $40
	add b                                            ; $72e1: $80
	and b                                            ; $72e2: $a0
	nop                                              ; $72e3: $00
	db $e4                                           ; $72e4: $e4
	nop                                              ; $72e5: $00
	ld c, d                                          ; $72e6: $4a
	jr z, jr_081_72ef                                ; $72e7: $28 $06

	ret nz                                           ; $72e9: $c0

	ld bc, $06a0                                     ; $72ea: $01 $a0 $06
	nop                                              ; $72ed: $00
	ld a, [bc]                                       ; $72ee: $0a

jr_081_72ef:
	ccf                                              ; $72ef: $3f
	nop                                              ; $72f0: $00
	dec d                                            ; $72f1: $15
	add hl, bc                                       ; $72f2: $09
	ld de, $02e1                                     ; $72f3: $11 $e1 $02
	inc bc                                           ; $72f6: $03
	inc de                                           ; $72f7: $13
	ret nz                                           ; $72f8: $c0

	ld bc, $06a0                                     ; $72f9: $01 $a0 $06
	nop                                              ; $72fc: $00
	dec de                                           ; $72fd: $1b
	pop hl                                           ; $72fe: $e1
	ld [bc], a                                       ; $72ff: $02
	inc b                                            ; $7300: $04
	ld b, h                                          ; $7301: $44
	db $e4                                           ; $7302: $e4
	nop                                              ; $7303: $00
	ld a, d                                          ; $7304: $7a
	nop                                              ; $7305: $00
	inc hl                                           ; $7306: $23
	add hl, bc                                       ; $7307: $09
	ld de, $02e1                                     ; $7308: $11 $e1 $02
	inc bc                                           ; $730b: $03
	rra                                              ; $730c: $1f
	ret nz                                           ; $730d: $c0

	ld bc, $06a0                                     ; $730e: $01 $a0 $06
	nop                                              ; $7311: $00
	jr z, @-$1d                                      ; $7312: $28 $e1

	ld [bc], a                                       ; $7314: $02
	inc b                                            ; $7315: $04
	ld e, a                                          ; $7316: $5f
	db $e4                                           ; $7317: $e4
	nop                                              ; $7318: $00
	ld h, l                                          ; $7319: $65
	nop                                              ; $731a: $00
	ld sp, $1109                                     ; $731b: $31 $09 $11
	pop hl                                           ; $731e: $e1
	ld [bc], a                                       ; $731f: $02
	inc bc                                           ; $7320: $03
	dec de                                           ; $7321: $1b
	ret nz                                           ; $7322: $c0

	ld bc, $06a0                                     ; $7323: $01 $a0 $06
	nop                                              ; $7326: $00
	dec [hl]                                         ; $7327: $35
	pop hl                                           ; $7328: $e1
	ld [bc], a                                       ; $7329: $02
	inc b                                            ; $732a: $04
	ld d, [hl]                                       ; $732b: $56
	db $e4                                           ; $732c: $e4
	nop                                              ; $732d: $00
	ld d, b                                          ; $732e: $50
	jr z, jr_081_7337                                ; $732f: $28 $06

	ret nz                                           ; $7331: $c0

	ld bc, $06a0                                     ; $7332: $01 $a0 $06
	nop                                              ; $7335: $00
	add hl, sp                                       ; $7336: $39

jr_081_7337:
	ld b, l                                          ; $7337: $45
	nop                                              ; $7338: $00
	ld b, c                                          ; $7339: $41
	add hl, bc                                       ; $733a: $09
	ld de, $02e1                                     ; $733b: $11 $e1 $02
	inc bc                                           ; $733e: $03
	inc de                                           ; $733f: $13
	ret nz                                           ; $7340: $c0

	ld bc, $06a0                                     ; $7341: $01 $a0 $06
	nop                                              ; $7344: $00
	ld c, b                                          ; $7345: $48
	pop hl                                           ; $7346: $e1
	ld [bc], a                                       ; $7347: $02
	inc b                                            ; $7348: $04
	ld b, h                                          ; $7349: $44
	db $e4                                           ; $734a: $e4
	nop                                              ; $734b: $00
	ld [hl-], a                                      ; $734c: $32
	nop                                              ; $734d: $00
	ld d, c                                          ; $734e: $51
	add hl, bc                                       ; $734f: $09
	rla                                              ; $7350: $17
	pop hl                                           ; $7351: $e1
	ld [bc], a                                       ; $7352: $02
	inc bc                                           ; $7353: $03
	rra                                              ; $7354: $1f
	ret nz                                           ; $7355: $c0

	ld bc, $06a0                                     ; $7356: $01 $a0 $06
	nop                                              ; $7359: $00
	ld e, d                                          ; $735a: $5a
	ret nz                                           ; $735b: $c0

	ld bc, $01a0                                     ; $735c: $01 $a0 $01
	nop                                              ; $735f: $00

jr_081_7360:
	ld h, d                                          ; $7360: $62
	pop hl                                           ; $7361: $e1
	ld [bc], a                                       ; $7362: $02
	inc b                                            ; $7363: $04
	ld e, a                                          ; $7364: $5f
	db $e4                                           ; $7365: $e4
	nop                                              ; $7366: $00
	rla                                              ; $7367: $17
	nop                                              ; $7368: $00
	ld l, d                                          ; $7369: $6a
	add hl, bc                                       ; $736a: $09
	ld de, $02e1                                     ; $736b: $11 $e1 $02
	inc bc                                           ; $736e: $03
	dec de                                           ; $736f: $1b
	ret nz                                           ; $7370: $c0

	ld bc, $06a0                                     ; $7371: $01 $a0 $06
	nop                                              ; $7374: $00
	ld [hl], l                                       ; $7375: $75
	pop hl                                           ; $7376: $e1
	ld [bc], a                                       ; $7377: $02
	inc b                                            ; $7378: $04
	ld d, [hl]                                       ; $7379: $56
	db $e4                                           ; $737a: $e4
	nop                                              ; $737b: $00
	ld [bc], a                                       ; $737c: $02
	add hl, bc                                       ; $737d: $09
	ld c, $c1                                        ; $737e: $0e $c1
	ld e, c                                          ; $7380: $59
	db $e3                                           ; $7381: $e3
	nop                                              ; $7382: $00
	cp h                                             ; $7383: $bc
	ret nz                                           ; $7384: $c0

	ld d, [hl]                                       ; $7385: $56
	jp c, $d0da                                      ; $7386: $da $da $d0

	push hl                                          ; $7389: $e5
	dec hl                                           ; $738a: $2b
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	add hl, bc                                       ; $738d: $09
	jr z, jr_081_7360                                ; $738e: $28 $d0

	add e                                            ; $7390: $83
	ld bc, $d0de                                     ; $7391: $01 $de $d0
	ret nz                                           ; $7394: $c0

	ld bc, $06a0                                     ; $7395: $01 $a0 $06
	nop                                              ; $7398: $00
	ld bc, $01c0                                     ; $7399: $01 $c0 $01
	and b                                            ; $739c: $a0
	ld bc, $0500                                     ; $739d: $01 $00 $05
	pop bc                                           ; $73a0: $c1
	ld e, c                                          ; $73a1: $59
	db $e3                                           ; $73a2: $e3
	nop                                              ; $73a3: $00
	cp e                                             ; $73a4: $bb
	and b                                            ; $73a5: $a0
	add b                                            ; $73a6: $80
	and b                                            ; $73a7: $a0
	ld bc, $0300                                     ; $73a8: $01 $00 $03
	db $e4                                           ; $73ab: $e4
	nop                                              ; $73ac: $00
	dec bc                                           ; $73ad: $0b
	rst $38                                          ; $73ae: $ff
	rlca                                             ; $73af: $07
	ld b, b                                          ; $73b0: $40
	add b                                            ; $73b1: $80
	and b                                            ; $73b2: $a0
	ld bc, $00e4                                     ; $73b3: $01 $e4 $00
	ld c, d                                          ; $73b6: $4a
	jr z, jr_081_73bf                                ; $73b7: $28 $06

	ret nz                                           ; $73b9: $c0

	ld bc, $06a0                                     ; $73ba: $01 $a0 $06
	nop                                              ; $73bd: $00
	ld a, [hl]                                       ; $73be: $7e

jr_081_73bf:
	ccf                                              ; $73bf: $3f
	nop                                              ; $73c0: $00
	add e                                            ; $73c1: $83
	add hl, bc                                       ; $73c2: $09
	ld de, $02e1                                     ; $73c3: $11 $e1 $02
	inc bc                                           ; $73c6: $03
	inc de                                           ; $73c7: $13
	ret nz                                           ; $73c8: $c0

	ld bc, $06a0                                     ; $73c9: $01 $a0 $06
	nop                                              ; $73cc: $00
	add l                                            ; $73cd: $85
	pop hl                                           ; $73ce: $e1
	ld [bc], a                                       ; $73cf: $02
	inc b                                            ; $73d0: $04
	ld b, h                                          ; $73d1: $44
	db $e4                                           ; $73d2: $e4
	nop                                              ; $73d3: $00
	ld [hl], h                                       ; $73d4: $74
	nop                                              ; $73d5: $00
	sub h                                            ; $73d6: $94
	add hl, bc                                       ; $73d7: $09
	ld de, $02e1                                     ; $73d8: $11 $e1 $02
	inc bc                                           ; $73db: $03
	dec de                                           ; $73dc: $1b
	ret nz                                           ; $73dd: $c0

	ld bc, $06a0                                     ; $73de: $01 $a0 $06
	nop                                              ; $73e1: $00
	sbc h                                            ; $73e2: $9c
	pop hl                                           ; $73e3: $e1
	ld [bc], a                                       ; $73e4: $02
	inc b                                            ; $73e5: $04
	ld d, [hl]                                       ; $73e6: $56
	db $e4                                           ; $73e7: $e4
	nop                                              ; $73e8: $00
	ld e, a                                          ; $73e9: $5f
	nop                                              ; $73ea: $00
	and h                                            ; $73eb: $a4
	add hl, bc                                       ; $73ec: $09
	ld de, $02e1                                     ; $73ed: $11 $e1 $02
	inc bc                                           ; $73f0: $03
	dec de                                           ; $73f1: $1b
	ret nz                                           ; $73f2: $c0

	ld bc, $06a0                                     ; $73f3: $01 $a0 $06
	nop                                              ; $73f6: $00
	and [hl]                                         ; $73f7: $a6
	pop hl                                           ; $73f8: $e1
	ld [bc], a                                       ; $73f9: $02
	inc b                                            ; $73fa: $04
	ld d, [hl]                                       ; $73fb: $56
	db $e4                                           ; $73fc: $e4
	nop                                              ; $73fd: $00
	ld c, d                                          ; $73fe: $4a
	jr z, jr_081_7407                                ; $73ff: $28 $06

	ret nz                                           ; $7401: $c0

	ld bc, $06a0                                     ; $7402: $01 $a0 $06
	nop                                              ; $7405: $00
	xor [hl]                                         ; $7406: $ae

jr_081_7407:
	ccf                                              ; $7407: $3f
	nop                                              ; $7408: $00
	or l                                             ; $7409: $b5
	add hl, bc                                       ; $740a: $09
	ld de, $02e1                                     ; $740b: $11 $e1 $02
	inc bc                                           ; $740e: $03
	inc de                                           ; $740f: $13
	ret nz                                           ; $7410: $c0

	ld bc, $06a0                                     ; $7411: $01 $a0 $06
	nop                                              ; $7414: $00
	cp l                                             ; $7415: $bd
	pop hl                                           ; $7416: $e1
	ld [bc], a                                       ; $7417: $02
	inc b                                            ; $7418: $04
	ld b, h                                          ; $7419: $44
	db $e4                                           ; $741a: $e4
	nop                                              ; $741b: $00
	inc l                                            ; $741c: $2c
	nop                                              ; $741d: $00
	push bc                                          ; $741e: $c5
	add hl, bc                                       ; $741f: $09
	ld de, $02e1                                     ; $7420: $11 $e1 $02
	inc bc                                           ; $7423: $03
	dec de                                           ; $7424: $1b
	ret nz                                           ; $7425: $c0

	ld bc, $06a0                                     ; $7426: $01 $a0 $06
	nop                                              ; $7429: $00
	jp z, $02e1                                      ; $742a: $ca $e1 $02

	inc b                                            ; $742d: $04
	ld d, [hl]                                       ; $742e: $56
	db $e4                                           ; $742f: $e4
	nop                                              ; $7430: $00
	rla                                              ; $7431: $17
	nop                                              ; $7432: $00
	call nc, $1109                                   ; $7433: $d4 $09 $11
	pop hl                                           ; $7436: $e1
	ld [bc], a                                       ; $7437: $02
	inc bc                                           ; $7438: $03
	dec de                                           ; $7439: $1b
	ret nz                                           ; $743a: $c0

	ld bc, $06a0                                     ; $743b: $01 $a0 $06
	nop                                              ; $743e: $00
	call c, $02e1                                    ; $743f: $dc $e1 $02
	inc b                                            ; $7442: $04
	ld d, [hl]                                       ; $7443: $56
	db $e4                                           ; $7444: $e4
	nop                                              ; $7445: $00
	ld [bc], a                                       ; $7446: $02
	add hl, bc                                       ; $7447: $09
	ld c, $c1                                        ; $7448: $0e $c1
	ld e, c                                          ; $744a: $59
	db $e3                                           ; $744b: $e3
	nop                                              ; $744c: $00
	cp d                                             ; $744d: $ba
	ret nz                                           ; $744e: $c0

	ld d, [hl]                                       ; $744f: $56
	jp c, $d0db                                      ; $7450: $da $db $d0

	push hl                                          ; $7453: $e5
	dec hl                                           ; $7454: $2b
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	add hl, bc                                       ; $7457: $09
	rrca                                             ; $7458: $0f
	ret nz                                           ; $7459: $c0

	ld bc, $06a0                                     ; $745a: $01 $a0 $06
	nop                                              ; $745d: $00
	pop hl                                           ; $745e: $e1
	ret nz                                           ; $745f: $c0

	ld bc, $01a0                                     ; $7460: $01 $a0 $01
	nop                                              ; $7463: $00
	rst SubAFromBC                                          ; $7464: $e7
	db $e4                                           ; $7465: $e4
	nop                                              ; $7466: $00
	ld [bc], a                                       ; $7467: $02
	inc l                                            ; $7468: $2c
	dec b                                            ; $7469: $05
	pop bc                                           ; $746a: $c1
	ld e, c                                          ; $746b: $59
	db $e3                                           ; $746c: $e3
	nop                                              ; $746d: $00
	adc d                                            ; $746e: $8a
	ld d, c                                          ; $746f: $51
	cp $08                                           ; $7470: $fe $08
	db $fc                                           ; $7472: $fc
	ret nz                                           ; $7473: $c0

	ld l, d                                          ; $7474: $6a
	ret nc                                           ; $7475: $d0

	pop af                                           ; $7476: $f1
	add b                                            ; $7477: $80
	and b                                            ; $7478: $a0
	ld [bc], a                                       ; $7479: $02
	add hl, bc                                       ; $747a: $09
	ld [$83d0], sp                                   ; $747b: $08 $d0 $83
	ld bc, $d0de                                     ; $747e: $01 $de $d0
	db $e4                                           ; $7481: $e4
	dec b                                            ; $7482: $05
	scf                                              ; $7483: $37
	pop de                                           ; $7484: $d1
	inc c                                            ; $7485: $0c
	ld a, [hl-]                                      ; $7486: $3a
	cp $08                                           ; $7487: $fe $08
	db $fc                                           ; $7489: $fc
	ret nz                                           ; $748a: $c0

	ld h, a                                          ; $748b: $67
	ret nc                                           ; $748c: $d0

	db $fc                                           ; $748d: $fc
	ret nz                                           ; $748e: $c0

	ld l, c                                          ; $748f: $69
	pop de                                           ; $7490: $d1
	jr z, jr_081_7499                                ; $7491: $28 $06

	ret nz                                           ; $7493: $c0

	ld bc, $01a0                                     ; $7494: $01 $a0 $01
	nop                                              ; $7497: $00
	db $ec                                           ; $7498: $ec

jr_081_7499:
	inc hl                                           ; $7499: $23
	nop                                              ; $749a: $00
	ldh a, [c]                                       ; $749b: $f2
	add hl, bc                                       ; $749c: $09
	ld a, [de]                                       ; $749d: $1a
	ret nz                                           ; $749e: $c0

	ld bc, $01a0                                     ; $749f: $01 $a0 $01
	nop                                              ; $74a2: $00
	push af                                          ; $74a3: $f5
	ret nz                                           ; $74a4: $c0

	ld bc, $06a0                                     ; $74a5: $01 $a0 $06
	nop                                              ; $74a8: $00
	ei                                               ; $74a9: $fb
	ret nc                                           ; $74aa: $d0

	adc e                                            ; $74ab: $8b
	and b                                            ; $74ac: $a0
	inc bc                                           ; $74ad: $03
	or b                                             ; $74ae: $b0
	ld a, d                                          ; $74af: $7a
	ret nc                                           ; $74b0: $d0

	add e                                            ; $74b1: $83
	ld bc, $d7de                                     ; $74b2: $01 $de $d7
	db $e4                                           ; $74b5: $e4
	inc b                                            ; $74b6: $04
	ld e, b                                          ; $74b7: $58
	ld bc, $0001                                     ; $74b8: $01 $01 $00
	nop                                              ; $74bb: $00
	ld b, $d1                                        ; $74bc: $06 $d1
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	ld [bc], a                                       ; $74c0: $02
	jr z, @+$0e                                      ; $74c1: $28 $0c

	ret nz                                           ; $74c3: $c0

	ld bc, $01a0                                     ; $74c4: $01 $a0 $01
	ld bc, $c003                                     ; $74c7: $01 $03 $c0
	ld bc, $06a0                                     ; $74ca: $01 $a0 $06
	ld bc, $7009                                     ; $74cd: $01 $09 $70
	ei                                               ; $74d0: $fb
	add b                                            ; $74d1: $80
	ld [bc], a                                       ; $74d2: $02
	ld d, e                                          ; $74d3: $53
	ld [de], a                                       ; $74d4: $12
	ld bc, $090d                                     ; $74d5: $01 $0d $09
	ld c, $d0                                        ; $74d8: $0e $d0
	add e                                            ; $74da: $83
	ld bc, $d4de                                     ; $74db: $01 $de $d4
	ret nc                                           ; $74de: $d0

	adc e                                            ; $74df: $8b
	and b                                            ; $74e0: $a0
	inc bc                                           ; $74e1: $03
	or b                                             ; $74e2: $b0
	ld a, e                                          ; $74e3: $7b
	db $e4                                           ; $74e4: $e4
	ld [bc], a                                       ; $74e5: $02
	adc h                                            ; $74e6: $8c
	ei                                               ; $74e7: $fb
	pop af                                           ; $74e8: $f1
	add b                                            ; $74e9: $80
	ld [bc], a                                       ; $74ea: $02
	ld d, e                                          ; $74eb: $53
	ld [de], a                                       ; $74ec: $12
	ld bc, $090f                                     ; $74ed: $01 $0f $09
	ld c, $d0                                        ; $74f0: $0e $d0
	add e                                            ; $74f2: $83
	ld bc, $d1de                                     ; $74f3: $01 $de $d1
	ret nc                                           ; $74f6: $d0

	adc e                                            ; $74f7: $8b
	and b                                            ; $74f8: $a0
	inc bc                                           ; $74f9: $03
	or b                                             ; $74fa: $b0
	ld a, h                                          ; $74fb: $7c
	db $e4                                           ; $74fc: $e4
	nop                                              ; $74fd: $00
	ld b, e                                          ; $74fe: $43
	ei                                               ; $74ff: $fb
	add b                                            ; $7500: $80
	ld [bc], a                                       ; $7501: $02
	ld e, d                                          ; $7502: $5a
	ld [de], a                                       ; $7503: $12
	ld bc, $0911                                     ; $7504: $01 $11 $09
	ld c, $d0                                        ; $7507: $0e $d0
	add e                                            ; $7509: $83
	ld bc, $d5de                                     ; $750a: $01 $de $d5
	ret nc                                           ; $750d: $d0

	adc e                                            ; $750e: $8b
	and b                                            ; $750f: $a0
	inc bc                                           ; $7510: $03
	or b                                             ; $7511: $b0
	ld a, l                                          ; $7512: $7d
	db $e4                                           ; $7513: $e4
	inc bc                                           ; $7514: $03
	ld b, c                                          ; $7515: $41
	ei                                               ; $7516: $fb
	pop af                                           ; $7517: $f1
	add b                                            ; $7518: $80
	ld [bc], a                                       ; $7519: $02
	ld e, d                                          ; $751a: $5a
	ld [de], a                                       ; $751b: $12
	ld bc, $0913                                     ; $751c: $01 $13 $09
	ld c, $d0                                        ; $751f: $0e $d0
	add e                                            ; $7521: $83
	ld bc, $d2de                                     ; $7522: $01 $de $d2
	ret nc                                           ; $7525: $d0

	adc e                                            ; $7526: $8b
	and b                                            ; $7527: $a0
	inc bc                                           ; $7528: $03
	or b                                             ; $7529: $b0
	ld a, [hl]                                       ; $752a: $7e
	db $e4                                           ; $752b: $e4
	nop                                              ; $752c: $00
	call $1501                                       ; $752d: $cd $01 $15
	add hl, bc                                       ; $7530: $09
	ld c, $d0                                        ; $7531: $0e $d0
	add e                                            ; $7533: $83
	ld bc, $d3de                                     ; $7534: $01 $de $d3
	ret nc                                           ; $7537: $d0

	adc e                                            ; $7538: $8b
	and b                                            ; $7539: $a0
	inc bc                                           ; $753a: $03
	or b                                             ; $753b: $b0
	ld a, a                                          ; $753c: $7f
	db $e4                                           ; $753d: $e4
	ld bc, $0974                                     ; $753e: $01 $74 $09
	daa                                              ; $7541: $27
	pop bc                                           ; $7542: $c1
	ld e, c                                          ; $7543: $59
	db $e3                                           ; $7544: $e3
	nop                                              ; $7545: $00
	adc h                                            ; $7546: $8c
	ret nz                                           ; $7547: $c0

	ld bc, $06a0                                     ; $7548: $01 $a0 $06
	ld bc, $c017                                     ; $754b: $01 $17 $c0
	ld bc, $01a0                                     ; $754e: $01 $a0 $01
	ld bc, $e11d                                     ; $7551: $01 $1d $e1
	ld [bc], a                                       ; $7554: $02
	rlca                                             ; $7555: $07
	call nz, $80a0                                   ; $7556: $c4 $a0 $80
	and b                                            ; $7559: $a0
	rrca                                             ; $755a: $0f
	nop                                              ; $755b: $00
	inc bc                                           ; $755c: $03
	db $e4                                           ; $755d: $e4
	nop                                              ; $755e: $00
	dec bc                                           ; $755f: $0b
	rst $38                                          ; $7560: $ff
	rlca                                             ; $7561: $07
	ld b, b                                          ; $7562: $40
	add b                                            ; $7563: $80
	and b                                            ; $7564: $a0
	rrca                                             ; $7565: $0f
	db $e4                                           ; $7566: $e4
	nop                                              ; $7567: $00
	ld c, d                                          ; $7568: $4a
	jr z, @+$08                                      ; $7569: $28 $06

	ret nz                                           ; $756b: $c0

	ld bc, $06a0                                     ; $756c: $01 $a0 $06
	ld bc, $3f21                                     ; $756f: $01 $21 $3f
	ld bc, $0927                                     ; $7572: $01 $27 $09
	ld de, $02e1                                     ; $7575: $11 $e1 $02
	inc bc                                           ; $7578: $03
	inc de                                           ; $7579: $13
	ret nz                                           ; $757a: $c0

	ld bc, $06a0                                     ; $757b: $01 $a0 $06
	ld bc, $e12d                                     ; $757e: $01 $2d $e1
	ld [bc], a                                       ; $7581: $02
	inc b                                            ; $7582: $04
	ld b, h                                          ; $7583: $44
	db $e4                                           ; $7584: $e4
	inc b                                            ; $7585: $04
	ret z                                            ; $7586: $c8

	ld bc, $0935                                     ; $7587: $01 $35 $09
	ld de, $02e1                                     ; $758a: $11 $e1 $02
	inc bc                                           ; $758d: $03
	rra                                              ; $758e: $1f
	ret nz                                           ; $758f: $c0

	ld bc, $06a0                                     ; $7590: $01 $a0 $06
	ld bc, $e137                                     ; $7593: $01 $37 $e1
	ld [bc], a                                       ; $7596: $02
	inc b                                            ; $7597: $04
	ld e, a                                          ; $7598: $5f
	db $e4                                           ; $7599: $e4
	inc b                                            ; $759a: $04
	or e                                             ; $759b: $b3
	ld bc, $093f                                     ; $759c: $01 $3f $09
	ld de, $02e1                                     ; $759f: $11 $e1 $02
	inc bc                                           ; $75a2: $03
	inc de                                           ; $75a3: $13
	ret nz                                           ; $75a4: $c0

	ld bc, $06a0                                     ; $75a5: $01 $a0 $06
	ld bc, $e143                                     ; $75a8: $01 $43 $e1
	ld [bc], a                                       ; $75ab: $02
	inc b                                            ; $75ac: $04
	ld b, h                                          ; $75ad: $44
	db $e4                                           ; $75ae: $e4
	inc b                                            ; $75af: $04
	sbc [hl]                                         ; $75b0: $9e
	jr z, @+$08                                      ; $75b1: $28 $06

	ret nz                                           ; $75b3: $c0

	ld bc, $06a0                                     ; $75b4: $01 $a0 $06
	ld bc, $3f4f                                     ; $75b7: $01 $4f $3f
	ld bc, $0956                                     ; $75ba: $01 $56 $09
	ld de, $02e1                                     ; $75bd: $11 $e1 $02
	inc bc                                           ; $75c0: $03
	rla                                              ; $75c1: $17
	ret nz                                           ; $75c2: $c0

	ld bc, $06a0                                     ; $75c3: $01 $a0 $06
	ld bc, $e15d                                     ; $75c6: $01 $5d $e1
	ld [bc], a                                       ; $75c9: $02
	inc b                                            ; $75ca: $04
	ld c, l                                          ; $75cb: $4d
	db $e4                                           ; $75cc: $e4
	inc b                                            ; $75cd: $04
	add b                                            ; $75ce: $80
	ld bc, $0966                                     ; $75cf: $01 $66 $09
	ld de, $02e1                                     ; $75d2: $11 $e1 $02
	inc bc                                           ; $75d5: $03
	dec de                                           ; $75d6: $1b
	ret nz                                           ; $75d7: $c0

	ld bc, $06a0                                     ; $75d8: $01 $a0 $06
	ld bc, $e16d                                     ; $75db: $01 $6d $e1
	ld [bc], a                                       ; $75de: $02
	inc b                                            ; $75df: $04
	ld d, [hl]                                       ; $75e0: $56
	db $e4                                           ; $75e1: $e4
	inc b                                            ; $75e2: $04
	ld l, e                                          ; $75e3: $6b
	ld bc, $0976                                     ; $75e4: $01 $76 $09
	ld de, $02e1                                     ; $75e7: $11 $e1 $02
	inc bc                                           ; $75ea: $03
	rla                                              ; $75eb: $17
	ret nz                                           ; $75ec: $c0

	ld bc, $06a0                                     ; $75ed: $01 $a0 $06
	ld bc, $e17a                                     ; $75f0: $01 $7a $e1
	ld [bc], a                                       ; $75f3: $02
	inc b                                            ; $75f4: $04
	ld c, l                                          ; $75f5: $4d
	db $e4                                           ; $75f6: $e4
	inc b                                            ; $75f7: $04
	ld d, [hl]                                       ; $75f8: $56
	add hl, bc                                       ; $75f9: $09
	daa                                              ; $75fa: $27
	pop bc                                           ; $75fb: $c1
	ld e, c                                          ; $75fc: $59
	db $e3                                           ; $75fd: $e3
	nop                                              ; $75fe: $00
	adc l                                            ; $75ff: $8d
	ret nz                                           ; $7600: $c0

	ld bc, $06a0                                     ; $7601: $01 $a0 $06
	ld bc, $c082                                     ; $7604: $01 $82 $c0
	ld bc, $01a0                                     ; $7607: $01 $a0 $01
	ld bc, $e18b                                     ; $760a: $01 $8b $e1
	ld [bc], a                                       ; $760d: $02
	rlca                                             ; $760e: $07
	db $e3                                           ; $760f: $e3
	and b                                            ; $7610: $a0
	add b                                            ; $7611: $80
	and b                                            ; $7612: $a0
	stop                                             ; $7613: $10 $00
	inc bc                                           ; $7615: $03
	db $e4                                           ; $7616: $e4
	nop                                              ; $7617: $00
	dec bc                                           ; $7618: $0b
	rst $38                                          ; $7619: $ff
	rlca                                             ; $761a: $07
	ld b, b                                          ; $761b: $40
	add b                                            ; $761c: $80
	and b                                            ; $761d: $a0
	db $10                                           ; $761e: $10
	db $e4                                           ; $761f: $e4
	nop                                              ; $7620: $00
	ld c, d                                          ; $7621: $4a
	jr z, @+$08                                      ; $7622: $28 $06

	ret nz                                           ; $7624: $c0

	ld bc, $06a0                                     ; $7625: $01 $a0 $06
	ld bc, $3f92                                     ; $7628: $01 $92 $3f
	ld bc, $0999                                     ; $762b: $01 $99 $09
	ld de, $02e1                                     ; $762e: $11 $e1 $02
	inc bc                                           ; $7631: $03
	rrca                                             ; $7632: $0f
	ret nz                                           ; $7633: $c0

	ld bc, $06a0                                     ; $7634: $01 $a0 $06
	ld bc, $e19b                                     ; $7637: $01 $9b $e1
	ld [bc], a                                       ; $763a: $02
	inc b                                            ; $763b: $04
	dec sp                                           ; $763c: $3b
	db $e4                                           ; $763d: $e4
	inc b                                            ; $763e: $04
	rrca                                             ; $763f: $0f
	ld bc, $09a3                                     ; $7640: $01 $a3 $09
	ld de, $02e1                                     ; $7643: $11 $e1 $02
	inc bc                                           ; $7646: $03
	rra                                              ; $7647: $1f
	ret nz                                           ; $7648: $c0

	ld bc, $06a0                                     ; $7649: $01 $a0 $06
	ld bc, $e1a5                                     ; $764c: $01 $a5 $e1
	ld [bc], a                                       ; $764f: $02
	inc b                                            ; $7650: $04
	ld e, a                                          ; $7651: $5f
	db $e4                                           ; $7652: $e4
	inc bc                                           ; $7653: $03
	ld a, [$aa01]                                    ; $7654: $fa $01 $aa
	add hl, bc                                       ; $7657: $09
	ld de, $02e1                                     ; $7658: $11 $e1 $02
	inc bc                                           ; $765b: $03
	rla                                              ; $765c: $17
	ret nz                                           ; $765d: $c0

	ld bc, $06a0                                     ; $765e: $01 $a0 $06
	ld bc, $e1b0                                     ; $7661: $01 $b0 $e1
	ld [bc], a                                       ; $7664: $02
	inc b                                            ; $7665: $04
	ld c, l                                          ; $7666: $4d
	db $e4                                           ; $7667: $e4
	inc bc                                           ; $7668: $03
	push hl                                          ; $7669: $e5
	jr z, @+$08                                      ; $766a: $28 $06

	ret nz                                           ; $766c: $c0

	ld bc, $06a0                                     ; $766d: $01 $a0 $06
	ld bc, $3fb3                                     ; $7670: $01 $b3 $3f
	ld bc, $09c1                                     ; $7673: $01 $c1 $09
	ld de, $02e1                                     ; $7676: $11 $e1 $02
	inc bc                                           ; $7679: $03
	inc de                                           ; $767a: $13
	ret nz                                           ; $767b: $c0

	ld bc, $06a0                                     ; $767c: $01 $a0 $06
	ld bc, $e1c5                                     ; $767f: $01 $c5 $e1
	ld [bc], a                                       ; $7682: $02
	inc b                                            ; $7683: $04
	ld b, h                                          ; $7684: $44
	db $e4                                           ; $7685: $e4
	inc bc                                           ; $7686: $03
	rst JumpTable                                          ; $7687: $c7
	ld bc, $09ca                                     ; $7688: $01 $ca $09
	ld de, $02e1                                     ; $768b: $11 $e1 $02
	inc bc                                           ; $768e: $03
	rra                                              ; $768f: $1f
	ret nz                                           ; $7690: $c0

	ld bc, $06a0                                     ; $7691: $01 $a0 $06
	ld bc, $e1cf                                     ; $7694: $01 $cf $e1
	ld [bc], a                                       ; $7697: $02
	inc b                                            ; $7698: $04
	ld e, a                                          ; $7699: $5f
	db $e4                                           ; $769a: $e4
	inc bc                                           ; $769b: $03
	or d                                             ; $769c: $b2
	ld bc, $09d7                                     ; $769d: $01 $d7 $09
	ld de, $02e1                                     ; $76a0: $11 $e1 $02
	inc bc                                           ; $76a3: $03
	rla                                              ; $76a4: $17
	ret nz                                           ; $76a5: $c0

	ld bc, $06a0                                     ; $76a6: $01 $a0 $06
	ld bc, $e1dd                                     ; $76a9: $01 $dd $e1
	ld [bc], a                                       ; $76ac: $02
	inc b                                            ; $76ad: $04
	ld c, l                                          ; $76ae: $4d
	db $e4                                           ; $76af: $e4
	inc bc                                           ; $76b0: $03
	sbc l                                            ; $76b1: $9d
	add hl, bc                                       ; $76b2: $09
	daa                                              ; $76b3: $27
	pop bc                                           ; $76b4: $c1
	ld e, c                                          ; $76b5: $59
	db $e3                                           ; $76b6: $e3
	nop                                              ; $76b7: $00
	adc [hl]                                         ; $76b8: $8e
	ret nz                                           ; $76b9: $c0

	ld bc, $06a0                                     ; $76ba: $01 $a0 $06
	ld bc, wGenericTileDataFinalDest                                     ; $76bd: $01 $e6 $c0
	ld bc, $01a0                                     ; $76c0: $01 $a0 $01
	ld bc, $e1f3                                     ; $76c3: $01 $f3 $e1
	ld [bc], a                                       ; $76c6: $02
	rlca                                             ; $76c7: $07
	rst FarCall                                          ; $76c8: $f7
	and b                                            ; $76c9: $a0
	add b                                            ; $76ca: $80
	and b                                            ; $76cb: $a0
	ld de, $0300                                     ; $76cc: $11 $00 $03
	db $e4                                           ; $76cf: $e4
	nop                                              ; $76d0: $00
	dec bc                                           ; $76d1: $0b
	rst $38                                          ; $76d2: $ff
	rlca                                             ; $76d3: $07
	ld b, b                                          ; $76d4: $40
	add b                                            ; $76d5: $80
	and b                                            ; $76d6: $a0
	ld de, $00e4                                     ; $76d7: $11 $e4 $00
	ld c, d                                          ; $76da: $4a
	jr z, @+$08                                      ; $76db: $28 $06

	ret nz                                           ; $76dd: $c0

	ld bc, $06a0                                     ; $76de: $01 $a0 $06
	ld bc, $3ff7                                     ; $76e1: $01 $f7 $3f
	ld [bc], a                                       ; $76e4: $02
	ld bc, $1109                                     ; $76e5: $01 $09 $11
	pop hl                                           ; $76e8: $e1
	ld [bc], a                                       ; $76e9: $02
	inc bc                                           ; $76ea: $03
	rrca                                             ; $76eb: $0f
	ret nz                                           ; $76ec: $c0

	ld bc, $06a0                                     ; $76ed: $01 $a0 $06
	ld [bc], a                                       ; $76f0: $02
	ld b, $e1                                        ; $76f1: $06 $e1
	ld [bc], a                                       ; $76f3: $02
	inc b                                            ; $76f4: $04
	dec sp                                           ; $76f5: $3b
	db $e4                                           ; $76f6: $e4
	inc bc                                           ; $76f7: $03
	ld d, [hl]                                       ; $76f8: $56
	ld [bc], a                                       ; $76f9: $02
	inc c                                            ; $76fa: $0c
	add hl, bc                                       ; $76fb: $09
	ld de, $02e1                                     ; $76fc: $11 $e1 $02
	inc bc                                           ; $76ff: $03
	rra                                              ; $7700: $1f
	ret nz                                           ; $7701: $c0

	ld bc, $06a0                                     ; $7702: $01 $a0 $06
	ld [bc], a                                       ; $7705: $02
	ld c, $e1                                        ; $7706: $0e $e1
	ld [bc], a                                       ; $7708: $02
	inc b                                            ; $7709: $04
	ld e, a                                          ; $770a: $5f
	db $e4                                           ; $770b: $e4
	inc bc                                           ; $770c: $03
	ld b, c                                          ; $770d: $41
	ld [bc], a                                       ; $770e: $02
	ld [de], a                                       ; $770f: $12
	add hl, bc                                       ; $7710: $09
	ld de, $02e1                                     ; $7711: $11 $e1 $02
	inc bc                                           ; $7714: $03
	rla                                              ; $7715: $17
	ret nz                                           ; $7716: $c0

	ld bc, $06a0                                     ; $7717: $01 $a0 $06
	ld [bc], a                                       ; $771a: $02
	inc d                                            ; $771b: $14
	pop hl                                           ; $771c: $e1
	ld [bc], a                                       ; $771d: $02
	inc b                                            ; $771e: $04
	ld c, l                                          ; $771f: $4d
	db $e4                                           ; $7720: $e4
	inc bc                                           ; $7721: $03
	inc l                                            ; $7722: $2c
	jr z, jr_081_772b                                ; $7723: $28 $06

	ret nz                                           ; $7725: $c0

	ld bc, $06a0                                     ; $7726: $01 $a0 $06
	ld [bc], a                                       ; $7729: $02
	dec e                                            ; $772a: $1d

jr_081_772b:
	ld b, l                                          ; $772b: $45
	ld [bc], a                                       ; $772c: $02
	ld h, $09                                        ; $772d: $26 $09
	ld de, $02e1                                     ; $772f: $11 $e1 $02
	inc bc                                           ; $7732: $03
	inc de                                           ; $7733: $13
	ret nz                                           ; $7734: $c0

	ld bc, $06a0                                     ; $7735: $01 $a0 $06
	ld [bc], a                                       ; $7738: $02
	inc l                                            ; $7739: $2c
	pop hl                                           ; $773a: $e1
	ld [bc], a                                       ; $773b: $02
	inc b                                            ; $773c: $04
	ld b, h                                          ; $773d: $44
	db $e4                                           ; $773e: $e4
	inc bc                                           ; $773f: $03
	ld c, $02                                        ; $7740: $0e $02
	ld a, [hl-]                                      ; $7742: $3a
	add hl, bc                                       ; $7743: $09
	rla                                              ; $7744: $17
	pop hl                                           ; $7745: $e1
	ld [bc], a                                       ; $7746: $02
	inc bc                                           ; $7747: $03
	dec de                                           ; $7748: $1b
	ret nz                                           ; $7749: $c0

	ld bc, $06a0                                     ; $774a: $01 $a0 $06
	ld [bc], a                                       ; $774d: $02
	ld b, c                                          ; $774e: $41
	ret nz                                           ; $774f: $c0

	ld bc, $01a0                                     ; $7750: $01 $a0 $01
	ld [bc], a                                       ; $7753: $02
	ld d, e                                          ; $7754: $53
	pop hl                                           ; $7755: $e1
	ld [bc], a                                       ; $7756: $02
	inc b                                            ; $7757: $04
	ld d, [hl]                                       ; $7758: $56
	db $e4                                           ; $7759: $e4
	ld [bc], a                                       ; $775a: $02
	di                                               ; $775b: $f3
	ld [bc], a                                       ; $775c: $02
	ld e, a                                          ; $775d: $5f
	add hl, bc                                       ; $775e: $09
	ld de, $02e1                                     ; $775f: $11 $e1 $02
	inc bc                                           ; $7762: $03
	dec de                                           ; $7763: $1b
	ret nz                                           ; $7764: $c0

	ld bc, $06a0                                     ; $7765: $01 $a0 $06
	ld [bc], a                                       ; $7768: $02
	ld h, [hl]                                       ; $7769: $66
	pop hl                                           ; $776a: $e1
	ld [bc], a                                       ; $776b: $02
	inc b                                            ; $776c: $04
	ld d, [hl]                                       ; $776d: $56
	db $e4                                           ; $776e: $e4
	ld [bc], a                                       ; $776f: $02
	sbc $09                                          ; $7770: $de $09
	daa                                              ; $7772: $27
	pop bc                                           ; $7773: $c1
	ld e, c                                          ; $7774: $59
	db $e3                                           ; $7775: $e3
	nop                                              ; $7776: $00
	adc a                                            ; $7777: $8f
	ret nz                                           ; $7778: $c0

	ld bc, $06a0                                     ; $7779: $01 $a0 $06
	ld [bc], a                                       ; $777c: $02
	ld l, e                                          ; $777d: $6b
	ret nz                                           ; $777e: $c0

	ld bc, $01a0                                     ; $777f: $01 $a0 $01
	ld [bc], a                                       ; $7782: $02
	ld [hl], h                                       ; $7783: $74
	pop hl                                           ; $7784: $e1
	ld [bc], a                                       ; $7785: $02
	ld [$a016], sp                                   ; $7786: $08 $16 $a0
	add b                                            ; $7789: $80
	and b                                            ; $778a: $a0
	ld [de], a                                       ; $778b: $12
	nop                                              ; $778c: $00
	inc bc                                           ; $778d: $03
	db $e4                                           ; $778e: $e4
	nop                                              ; $778f: $00
	dec bc                                           ; $7790: $0b
	rst $38                                          ; $7791: $ff
	rlca                                             ; $7792: $07
	ld b, b                                          ; $7793: $40
	add b                                            ; $7794: $80
	and b                                            ; $7795: $a0
	ld [de], a                                       ; $7796: $12
	db $e4                                           ; $7797: $e4
	nop                                              ; $7798: $00
	ld [hl], l                                       ; $7799: $75
	jr z, jr_081_77a2                                ; $779a: $28 $06

	ret nz                                           ; $779c: $c0

	ld bc, $06a0                                     ; $779d: $01 $a0 $06
	ld [bc], a                                       ; $77a0: $02
	ld a, c                                          ; $77a1: $79

jr_081_77a2:
	ld l, d                                          ; $77a2: $6a
	ld [bc], a                                       ; $77a3: $02
	add c                                            ; $77a4: $81
	add hl, bc                                       ; $77a5: $09
	inc a                                            ; $77a6: $3c
	and c                                            ; $77a7: $a1
	add c                                            ; $77a8: $81
	and b                                            ; $77a9: $a0
	inc de                                           ; $77aa: $13
	nop                                              ; $77ab: $00
	inc de                                           ; $77ac: $13
	pop hl                                           ; $77ad: $e1
	ld [bc], a                                       ; $77ae: $02
	inc bc                                           ; $77af: $03
	inc de                                           ; $77b0: $13
	pop bc                                           ; $77b1: $c1
	or d                                             ; $77b2: $b2
	db $e3                                           ; $77b3: $e3
	nop                                              ; $77b4: $00
	ld [hl], a                                       ; $77b5: $77
	ret nz                                           ; $77b6: $c0

	ld bc, $06a0                                     ; $77b7: $01 $a0 $06
	ld [bc], a                                       ; $77ba: $02
	adc e                                            ; $77bb: $8b
	pop hl                                           ; $77bc: $e1
	ld [bc], a                                       ; $77bd: $02
	inc b                                            ; $77be: $04
	dec sp                                           ; $77bf: $3b
	ld bc, $e10e                                     ; $77c0: $01 $0e $e1
	ld [bc], a                                       ; $77c3: $02
	inc bc                                           ; $77c4: $03
	rla                                              ; $77c5: $17
	ret nz                                           ; $77c6: $c0

	ld bc, $06a0                                     ; $77c7: $01 $a0 $06
	ld [bc], a                                       ; $77ca: $02
	sub d                                            ; $77cb: $92
	pop hl                                           ; $77cc: $e1
	ld [bc], a                                       ; $77cd: $02
	inc b                                            ; $77ce: $04
	ld c, l                                          ; $77cf: $4d
	rst $38                                          ; $77d0: $ff
	ld c, $e1                                        ; $77d1: $0e $e1
	ld [bc], a                                       ; $77d3: $02
	inc bc                                           ; $77d4: $03
	dec de                                           ; $77d5: $1b
	ret nz                                           ; $77d6: $c0

	ld bc, $06a0                                     ; $77d7: $01 $a0 $06
	ld [bc], a                                       ; $77da: $02
	sbc d                                            ; $77db: $9a
	pop hl                                           ; $77dc: $e1
	ld [bc], a                                       ; $77dd: $02
	inc b                                            ; $77de: $04
	ld d, [hl]                                       ; $77df: $56
	db $e4                                           ; $77e0: $e4
	ld [bc], a                                       ; $77e1: $02
	ld l, h                                          ; $77e2: $6c
	ld bc, $09a3                                     ; $77e3: $01 $a3 $09
	ld de, $02e1                                     ; $77e6: $11 $e1 $02
	inc bc                                           ; $77e9: $03
	rra                                              ; $77ea: $1f
	ret nz                                           ; $77eb: $c0

	ld bc, $06a0                                     ; $77ec: $01 $a0 $06
	ld [bc], a                                       ; $77ef: $02
	and c                                            ; $77f0: $a1
	pop hl                                           ; $77f1: $e1
	ld [bc], a                                       ; $77f2: $02
	inc b                                            ; $77f3: $04
	ld e, a                                          ; $77f4: $5f
	db $e4                                           ; $77f5: $e4
	ld [bc], a                                       ; $77f6: $02
	ld d, a                                          ; $77f7: $57
	ld [bc], a                                       ; $77f8: $02
	ld a, [hl-]                                      ; $77f9: $3a
	add hl, bc                                       ; $77fa: $09
	ld de, $02e1                                     ; $77fb: $11 $e1 $02
	inc bc                                           ; $77fe: $03
	inc de                                           ; $77ff: $13
	ret nz                                           ; $7800: $c0

	ld bc, $06a0                                     ; $7801: $01 $a0 $06
	ld [bc], a                                       ; $7804: $02
	and a                                            ; $7805: $a7
	pop hl                                           ; $7806: $e1
	ld [bc], a                                       ; $7807: $02
	inc b                                            ; $7808: $04
	ld b, h                                          ; $7809: $44
	db $e4                                           ; $780a: $e4
	ld [bc], a                                       ; $780b: $02
	ld b, d                                          ; $780c: $42
	jr z, jr_081_7815                                ; $780d: $28 $06

	ret nz                                           ; $780f: $c0

	ld bc, $06a0                                     ; $7810: $01 $a0 $06
	ld [bc], a                                       ; $7813: $02
	or d                                             ; $7814: $b2

jr_081_7815:
	ccf                                              ; $7815: $3f
	ld [bc], a                                       ; $7816: $02
	cp d                                             ; $7817: $ba
	add hl, bc                                       ; $7818: $09
	ld de, $02e1                                     ; $7819: $11 $e1 $02
	inc bc                                           ; $781c: $03
	rrca                                             ; $781d: $0f
	ret nz                                           ; $781e: $c0

	ld bc, $06a0                                     ; $781f: $01 $a0 $06
	ld [bc], a                                       ; $7822: $02
	ret nz                                           ; $7823: $c0

	pop hl                                           ; $7824: $e1
	ld [bc], a                                       ; $7825: $02
	inc b                                            ; $7826: $04
	dec sp                                           ; $7827: $3b
	db $e4                                           ; $7828: $e4
	ld [bc], a                                       ; $7829: $02
	inc h                                            ; $782a: $24
	ld [bc], a                                       ; $782b: $02
	rrc c                                            ; $782c: $cb $09
	ld de, $02e1                                     ; $782e: $11 $e1 $02
	inc bc                                           ; $7831: $03
	dec de                                           ; $7832: $1b
	ret nz                                           ; $7833: $c0

	ld bc, $06a0                                     ; $7834: $01 $a0 $06
	ld [bc], a                                       ; $7837: $02
	pop de                                           ; $7838: $d1
	pop hl                                           ; $7839: $e1
	ld [bc], a                                       ; $783a: $02
	inc b                                            ; $783b: $04
	ld d, [hl]                                       ; $783c: $56
	db $e4                                           ; $783d: $e4
	ld [bc], a                                       ; $783e: $02
	rrca                                             ; $783f: $0f
	ld [bc], a                                       ; $7840: $02
	sbc $09                                          ; $7841: $de $09
	ld de, $02e1                                     ; $7843: $11 $e1 $02
	inc bc                                           ; $7846: $03
	rla                                              ; $7847: $17
	ret nz                                           ; $7848: $c0

	ld bc, $06a0                                     ; $7849: $01 $a0 $06
	ld [bc], a                                       ; $784c: $02
	and $e1                                          ; $784d: $e6 $e1
	ld [bc], a                                       ; $784f: $02
	inc b                                            ; $7850: $04
	ld c, l                                          ; $7851: $4d
	db $e4                                           ; $7852: $e4
	ld bc, $09fa                                     ; $7853: $01 $fa $09
	daa                                              ; $7856: $27
	pop bc                                           ; $7857: $c1
	ld e, c                                          ; $7858: $59
	db $e3                                           ; $7859: $e3
	nop                                              ; $785a: $00
	sub b                                            ; $785b: $90
	ret nz                                           ; $785c: $c0

	ld bc, $06a0                                     ; $785d: $01 $a0 $06
	ld [bc], a                                       ; $7860: $02
	ld [$01c0], a                                    ; $7861: $ea $c0 $01
	and b                                            ; $7864: $a0
	ld bc, $f102                                     ; $7865: $01 $02 $f1
	pop hl                                           ; $7868: $e1
	ld [bc], a                                       ; $7869: $02
	ld [$a02a], sp                                   ; $786a: $08 $2a $a0
	add b                                            ; $786d: $80
	and b                                            ; $786e: $a0
	dec d                                            ; $786f: $15
	nop                                              ; $7870: $00
	inc bc                                           ; $7871: $03
	db $e4                                           ; $7872: $e4
	nop                                              ; $7873: $00
	dec bc                                           ; $7874: $0b
	rst $38                                          ; $7875: $ff
	rlca                                             ; $7876: $07
	ld b, b                                          ; $7877: $40
	add b                                            ; $7878: $80
	and b                                            ; $7879: $a0
	dec d                                            ; $787a: $15
	db $e4                                           ; $787b: $e4
	nop                                              ; $787c: $00
	ld c, d                                          ; $787d: $4a
	jr z, jr_081_7886                                ; $787e: $28 $06

	ret nz                                           ; $7880: $c0

	ld bc, $06a0                                     ; $7881: $01 $a0 $06
	ld [bc], a                                       ; $7884: $02
	db $f4                                           ; $7885: $f4

jr_081_7886:
	ccf                                              ; $7886: $3f
	ld [bc], a                                       ; $7887: $02
	ld a, [$1109]                                    ; $7888: $fa $09 $11
	pop hl                                           ; $788b: $e1
	ld [bc], a                                       ; $788c: $02
	inc bc                                           ; $788d: $03
	inc de                                           ; $788e: $13
	ret nz                                           ; $788f: $c0

	ld bc, $06a0                                     ; $7890: $01 $a0 $06
	inc bc                                           ; $7893: $03
	dec b                                            ; $7894: $05
	pop hl                                           ; $7895: $e1
	ld [bc], a                                       ; $7896: $02
	inc b                                            ; $7897: $04
	dec sp                                           ; $7898: $3b
	db $e4                                           ; $7899: $e4
	ld bc, $03b3                                     ; $789a: $01 $b3 $03
	ld [de], a                                       ; $789d: $12
	add hl, bc                                       ; $789e: $09
	ld de, $02e1                                     ; $789f: $11 $e1 $02
	inc bc                                           ; $78a2: $03
	rra                                              ; $78a3: $1f
	ret nz                                           ; $78a4: $c0

	ld bc, $06a0                                     ; $78a5: $01 $a0 $06
	inc bc                                           ; $78a8: $03
	inc d                                            ; $78a9: $14
	pop hl                                           ; $78aa: $e1
	ld [bc], a                                       ; $78ab: $02
	inc b                                            ; $78ac: $04
	ld e, a                                          ; $78ad: $5f
	db $e4                                           ; $78ae: $e4
	ld bc, $039e                                     ; $78af: $01 $9e $03
	ld e, $09                                        ; $78b2: $1e $09
	ld de, $02e1                                     ; $78b4: $11 $e1 $02
	inc bc                                           ; $78b7: $03
	rla                                              ; $78b8: $17
	ret nz                                           ; $78b9: $c0

	ld bc, $06a0                                     ; $78ba: $01 $a0 $06
	inc bc                                           ; $78bd: $03
	jr nz, @-$1d                                     ; $78be: $20 $e1

	ld [bc], a                                       ; $78c0: $02
	inc b                                            ; $78c1: $04
	ld c, l                                          ; $78c2: $4d
	db $e4                                           ; $78c3: $e4
	ld bc, $2889                                     ; $78c4: $01 $89 $28
	ld b, $c0                                        ; $78c7: $06 $c0
	ld bc, $06a0                                     ; $78c9: $01 $a0 $06
	inc bc                                           ; $78cc: $03
	inc h                                            ; $78cd: $24
	ccf                                              ; $78ce: $3f
	inc bc                                           ; $78cf: $03
	dec l                                            ; $78d0: $2d
	add hl, bc                                       ; $78d1: $09
	ld de, $02e1                                     ; $78d2: $11 $e1 $02
	inc bc                                           ; $78d5: $03
	inc de                                           ; $78d6: $13
	ret nz                                           ; $78d7: $c0

	ld bc, $06a0                                     ; $78d8: $01 $a0 $06
	inc bc                                           ; $78db: $03
	inc [hl]                                         ; $78dc: $34
	pop hl                                           ; $78dd: $e1
	ld [bc], a                                       ; $78de: $02
	inc b                                            ; $78df: $04

Jump_081_78e0:
	ld b, h                                          ; $78e0: $44
	db $e4                                           ; $78e1: $e4
	ld bc, $036b                                     ; $78e2: $01 $6b $03
	ld b, d                                          ; $78e5: $42
	add hl, bc                                       ; $78e6: $09
	ld de, $02e1                                     ; $78e7: $11 $e1 $02
	inc bc                                           ; $78ea: $03
	rra                                              ; $78eb: $1f
	ret nz                                           ; $78ec: $c0

	ld bc, $06a0                                     ; $78ed: $01 $a0 $06
	inc bc                                           ; $78f0: $03
	ld b, a                                          ; $78f1: $47
	pop hl                                           ; $78f2: $e1
	ld [bc], a                                       ; $78f3: $02
	inc b                                            ; $78f4: $04
	ld e, a                                          ; $78f5: $5f
	db $e4                                           ; $78f6: $e4
	ld bc, $0356                                     ; $78f7: $01 $56 $03
	ld d, d                                          ; $78fa: $52
	add hl, bc                                       ; $78fb: $09
	ld de, $02e1                                     ; $78fc: $11 $e1 $02
	inc bc                                           ; $78ff: $03
	rla                                              ; $7900: $17
	ret nz                                           ; $7901: $c0

	ld bc, $06a0                                     ; $7902: $01 $a0 $06
	inc bc                                           ; $7905: $03
	ld d, [hl]                                       ; $7906: $56
	pop hl                                           ; $7907: $e1
	ld [bc], a                                       ; $7908: $02
	inc b                                            ; $7909: $04
	ld c, l                                          ; $790a: $4d
	db $e4                                           ; $790b: $e4
	ld bc, $0941                                     ; $790c: $01 $41 $09
	add hl, de                                       ; $790f: $19
	pop hl                                           ; $7910: $e1
	ld [bc], a                                       ; $7911: $02
	ld [$c13e], sp                                   ; $7912: $08 $3e $c1
	ld l, l                                          ; $7915: $6d
	jp c, $80a0                                      ; $7916: $da $a0 $80

	and b                                            ; $7919: $a0
	ld d, $00                                        ; $791a: $16 $00
	inc bc                                           ; $791c: $03
	db $e4                                           ; $791d: $e4
	nop                                              ; $791e: $00
	dec bc                                           ; $791f: $0b
	rst $38                                          ; $7920: $ff
	rlca                                             ; $7921: $07
	ld b, b                                          ; $7922: $40
	add b                                            ; $7923: $80
	and b                                            ; $7924: $a0
	ld d, $e4                                        ; $7925: $16 $e4
	nop                                              ; $7927: $00
	ld c, d                                          ; $7928: $4a
	jr z, jr_081_7931                                ; $7929: $28 $06

	ret nz                                           ; $792b: $c0

	ld bc, $06a0                                     ; $792c: $01 $a0 $06
	inc bc                                           ; $792f: $03
	ld h, h                                          ; $7930: $64

jr_081_7931:
	ccf                                              ; $7931: $3f
	inc bc                                           ; $7932: $03
	ld l, d                                          ; $7933: $6a
	add hl, bc                                       ; $7934: $09
	ld de, $02e1                                     ; $7935: $11 $e1 $02
	inc bc                                           ; $7938: $03
	rrca                                             ; $7939: $0f
	ret nz                                           ; $793a: $c0

	ld bc, $06a0                                     ; $793b: $01 $a0 $06
	inc bc                                           ; $793e: $03
	ld [hl], c                                       ; $793f: $71
	pop hl                                           ; $7940: $e1
	ld [bc], a                                       ; $7941: $02
	inc b                                            ; $7942: $04
	dec sp                                           ; $7943: $3b
	db $e4                                           ; $7944: $e4
	ld bc, $0308                                     ; $7945: $01 $08 $03
	ld [hl], l                                       ; $7948: $75
	add hl, bc                                       ; $7949: $09
	ld de, $02e1                                     ; $794a: $11 $e1 $02
	inc bc                                           ; $794d: $03
	dec de                                           ; $794e: $1b
	ret nz                                           ; $794f: $c0

	ld bc, $06a0                                     ; $7950: $01 $a0 $06
	inc bc                                           ; $7953: $03
	ld a, h                                          ; $7954: $7c
	pop hl                                           ; $7955: $e1
	ld [bc], a                                       ; $7956: $02
	inc b                                            ; $7957: $04
	ld d, [hl]                                       ; $7958: $56
	db $e4                                           ; $7959: $e4
	nop                                              ; $795a: $00
	di                                               ; $795b: $f3
	inc bc                                           ; $795c: $03
	add h                                            ; $795d: $84
	add hl, bc                                       ; $795e: $09
	ld de, $02e1                                     ; $795f: $11 $e1 $02
	inc bc                                           ; $7962: $03
	inc de                                           ; $7963: $13
	ret nz                                           ; $7964: $c0

	ld bc, $06a0                                     ; $7965: $01 $a0 $06
	inc bc                                           ; $7968: $03
	adc e                                            ; $7969: $8b
	pop hl                                           ; $796a: $e1
	ld [bc], a                                       ; $796b: $02
	inc b                                            ; $796c: $04
	ld b, h                                          ; $796d: $44
	db $e4                                           ; $796e: $e4
	nop                                              ; $796f: $00
	sbc $28                                          ; $7970: $de $28
	ld b, $c0                                        ; $7972: $06 $c0
	ld bc, $06a0                                     ; $7974: $01 $a0 $06
	inc bc                                           ; $7977: $03
	sub b                                            ; $7978: $90
	ccf                                              ; $7979: $3f
	inc bc                                           ; $797a: $03
	sbc c                                            ; $797b: $99
	add hl, bc                                       ; $797c: $09
	ld de, $02e1                                     ; $797d: $11 $e1 $02
	inc bc                                           ; $7980: $03
	rla                                              ; $7981: $17
	ret nz                                           ; $7982: $c0

	ld bc, $06a0                                     ; $7983: $01 $a0 $06
	inc bc                                           ; $7986: $03
	sbc e                                            ; $7987: $9b
	pop hl                                           ; $7988: $e1
	ld [bc], a                                       ; $7989: $02
	inc b                                            ; $798a: $04
	ld c, l                                          ; $798b: $4d
	db $e4                                           ; $798c: $e4
	nop                                              ; $798d: $00
	ret nz                                           ; $798e: $c0

	inc bc                                           ; $798f: $03
	and l                                            ; $7990: $a5
	add hl, bc                                       ; $7991: $09
	ld de, $02e1                                     ; $7992: $11 $e1 $02
	inc bc                                           ; $7995: $03
	dec de                                           ; $7996: $1b
	ret nz                                           ; $7997: $c0

	ld bc, $06a0                                     ; $7998: $01 $a0 $06
	inc bc                                           ; $799b: $03
	xor b                                            ; $799c: $a8
	pop hl                                           ; $799d: $e1
	ld [bc], a                                       ; $799e: $02
	inc b                                            ; $799f: $04
	ld d, [hl]                                       ; $79a0: $56
	db $e4                                           ; $79a1: $e4
	nop                                              ; $79a2: $00
	xor e                                            ; $79a3: $ab
	inc bc                                           ; $79a4: $03
	or e                                             ; $79a5: $b3
	add hl, bc                                       ; $79a6: $09
	ld de, $02e1                                     ; $79a7: $11 $e1 $02
	inc bc                                           ; $79aa: $03
	rla                                              ; $79ab: $17
	ret nz                                           ; $79ac: $c0

	ld bc, $06a0                                     ; $79ad: $01 $a0 $06
	inc bc                                           ; $79b0: $03
	or l                                             ; $79b1: $b5
	pop hl                                           ; $79b2: $e1
	ld [bc], a                                       ; $79b3: $02
	inc b                                            ; $79b4: $04
	ld c, l                                          ; $79b5: $4d
	db $e4                                           ; $79b6: $e4
	nop                                              ; $79b7: $00
	sub [hl]                                         ; $79b8: $96
	add hl, bc                                       ; $79b9: $09
	sub d                                            ; $79ba: $92
	ret nz                                           ; $79bb: $c0

	ld bc, $06a0                                     ; $79bc: $01 $a0 $06
	inc bc                                           ; $79bf: $03
	ret nz                                           ; $79c0: $c0

	ret nz                                           ; $79c1: $c0

	ld bc, $01a0                                     ; $79c2: $01 $a0 $01
	inc bc                                           ; $79c5: $03
	pop de                                           ; $79c6: $d1
	ret nz                                           ; $79c7: $c0

	ld bc, $06a0                                     ; $79c8: $01 $a0 $06
	inc bc                                           ; $79cb: $03
	call nc, $01c0                                   ; $79cc: $d4 $c0 $01
	and b                                            ; $79cf: $a0
	ld bc, $d903                                     ; $79d0: $01 $03 $d9
	pop bc                                           ; $79d3: $c1
	ld e, e                                          ; $79d4: $5b
	ret nz                                           ; $79d5: $c0

	dec bc                                           ; $79d6: $0b
	db $e3                                           ; $79d7: $e3
	nop                                              ; $79d8: $00
	ld [hl], d                                       ; $79d9: $72

jr_081_79da:
	ret nz                                           ; $79da: $c0

	ld bc, $01a0                                     ; $79db: $01 $a0 $01
	inc bc                                           ; $79de: $03
	push hl                                          ; $79df: $e5
	ret nz                                           ; $79e0: $c0

	inc c                                            ; $79e1: $0c
	ldh [$3c], a                                     ; $79e2: $e0 $3c
	pop bc                                           ; $79e4: $c1
	ld e, c                                          ; $79e5: $59
	db $e3                                           ; $79e6: $e3
	ld bc, $c007                                     ; $79e7: $01 $07 $c0
	ld bc, $06a0                                     ; $79ea: $01 $a0 $06
	inc bc                                           ; $79ed: $03
	rst SubAFromBC                                          ; $79ee: $e7
	ret nz                                           ; $79ef: $c0

	ld bc, $01a0                                     ; $79f0: $01 $a0 $01
	inc bc                                           ; $79f3: $03
	jp hl                                            ; $79f4: $e9


	ret nz                                           ; $79f5: $c0

	ld bc, $06a0                                     ; $79f6: $01 $a0 $06
	inc bc                                           ; $79f9: $03
	xor $c0                                          ; $79fa: $ee $c0
	ld bc, $01a0                                     ; $79fc: $01 $a0 $01
	inc bc                                           ; $79ff: $03
	db $f4                                           ; $7a00: $f4
	ret nz                                           ; $7a01: $c0

	ld bc, $06a0                                     ; $7a02: $01 $a0 $06
	inc b                                            ; $7a05: $04
	ld bc, $01c0                                     ; $7a06: $01 $c0 $01
	and b                                            ; $7a09: $a0
	ld bc, $0e04                                     ; $7a0a: $01 $04 $0e
	ret nz                                           ; $7a0d: $c0

	ld bc, $06a0                                     ; $7a0e: $01 $a0 $06
	inc b                                            ; $7a11: $04
	inc d                                            ; $7a12: $14
	ret nz                                           ; $7a13: $c0

	ld bc, $01a0                                     ; $7a14: $01 $a0 $01
	inc b                                            ; $7a17: $04
	jr nz, jr_081_79da                               ; $7a18: $20 $c0

	set 0, b                                         ; $7a1a: $cb $c0
	ld de, $00e3                                     ; $7a1c: $11 $e3 $00
	adc d                                            ; $7a1f: $8a
	pop hl                                           ; $7a20: $e1
	ld [bc], a                                       ; $7a21: $02
	ld [bc], a                                       ; $7a22: $02
	ld h, b                                          ; $7a23: $60
	ret nz                                           ; $7a24: $c0

	ld bc, $06a0                                     ; $7a25: $01 $a0 $06
	inc b                                            ; $7a28: $04
	inc l                                            ; $7a29: $2c
	ret nz                                           ; $7a2a: $c0

	ld bc, $01a0                                     ; $7a2b: $01 $a0 $01
	inc b                                            ; $7a2e: $04
	ld [hl], $00                                     ; $7a2f: $36 $00
	add b                                            ; $7a31: $80
	and b                                            ; $7a32: $a0
	ld [bc], a                                       ; $7a33: $02
	ret nc                                           ; $7a34: $d0

	add d                                            ; $7a35: $82
	ld bc, $d1d8                                     ; $7a36: $01 $d8 $d1
	pop hl                                           ; $7a39: $e1
	ld [bc], a                                       ; $7a3a: $02
	inc b                                            ; $7a3b: $04
	rst JumpTable                                          ; $7a3c: $c7
	ret nz                                           ; $7a3d: $c0

	ld d, c                                          ; $7a3e: $51
	pop de                                           ; $7a3f: $d1
	ret nz                                           ; $7a40: $c0

	ld d, b                                          ; $7a41: $50
	pop de                                           ; $7a42: $d1
	ret nz                                           ; $7a43: $c0

	ld d, l                                          ; $7a44: $55
	jp c, Jump_081_6bc1                              ; $7a45: $da $c1 $6b

	pop de                                           ; $7a48: $d1
	jp c, $00e4                                      ; $7a49: $da $e4 $00

	ld [bc], a                                       ; $7a4c: $02
	inc c                                            ; $7a4d: $0c
	ld d, c                                          ; $7a4e: $51
	db $fc                                           ; $7a4f: $fc
	ret nz                                           ; $7a50: $c0

	ld h, l                                          ; $7a51: $65
	ret c                                            ; $7a52: $d8

	jr z, jr_081_7a61                                ; $7a53: $28 $0c

	ret nz                                           ; $7a55: $c0

	ld bc, $06a0                                     ; $7a56: $01 $a0 $06
	inc b                                            ; $7a59: $04
	inc a                                            ; $7a5a: $3c
	ret nz                                           ; $7a5b: $c0

	ld bc, $01a0                                     ; $7a5c: $01 $a0 $01
	inc b                                            ; $7a5f: $04
	ld b, a                                          ; $7a60: $47

jr_081_7a61:
	jr c, jr_081_7a67                                ; $7a61: $38 $04

	ld c, [hl]                                       ; $7a63: $4e
	add hl, bc                                       ; $7a64: $09
	dec l                                            ; $7a65: $2d
	pop bc                                           ; $7a66: $c1

jr_081_7a67:
	ld e, c                                          ; $7a67: $59
	db $e3                                           ; $7a68: $e3
	nop                                              ; $7a69: $00
	sub c                                            ; $7a6a: $91
	ret nz                                           ; $7a6b: $c0

	add hl, bc                                       ; $7a6c: $09
	db $e3                                           ; $7a6d: $e3
	nop                                              ; $7a6e: $00
	inc [hl]                                         ; $7a6f: $34
	and b                                            ; $7a70: $a0
	add b                                            ; $7a71: $80
	and b                                            ; $7a72: $a0
	rla                                              ; $7a73: $17
	nop                                              ; $7a74: $00
	ld b, $c0                                        ; $7a75: $06 $c0
	ld bc, $06a0                                     ; $7a77: $01 $a0 $06
	inc b                                            ; $7a7a: $04
	ld d, b                                          ; $7a7b: $50
	rst $38                                          ; $7a7c: $ff
	inc c                                            ; $7a7d: $0c
	ret nz                                           ; $7a7e: $c0

	ld bc, $06a0                                     ; $7a7f: $01 $a0 $06
	inc b                                            ; $7a82: $04
	ld e, e                                          ; $7a83: $5b
	ret nz                                           ; $7a84: $c0

	ld bc, $01a0                                     ; $7a85: $01 $a0 $01
	inc b                                            ; $7a88: $04
	ld h, d                                          ; $7a89: $62
	ret nz                                           ; $7a8a: $c0

	ld d, [hl]                                       ; $7a8b: $56
	jp c, $d6dc                                      ; $7a8c: $da $dc $d6

	push hl                                          ; $7a8f: $e5
	dec hl                                           ; $7a90: $2b
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	inc b                                            ; $7a93: $04
	ld l, e                                          ; $7a94: $6b
	add hl, bc                                       ; $7a95: $09
	inc bc                                           ; $7a96: $03
	ldh [rP1], a                                     ; $7a97: $e0 $00
	ld [$09d1], sp                                   ; $7a99: $08 $d1 $09
	inc bc                                           ; $7a9c: $03
	ldh [rP1], a                                     ; $7a9d: $e0 $00
	ld [bc], a                                       ; $7a9f: $02
	ld b, h                                          ; $7aa0: $44
	pop bc                                           ; $7aa1: $c1
	ld e, c                                          ; $7aa2: $59
	db $e3                                           ; $7aa3: $e3
	nop                                              ; $7aa4: $00
	adc c                                            ; $7aa5: $89
	db $fd                                           ; $7aa6: $fd
	add hl, sp                                       ; $7aa7: $39
	adc e                                            ; $7aa8: $8b
	and b                                            ; $7aa9: $a0
	inc bc                                           ; $7aaa: $03
	ld [bc], a                                       ; $7aab: $02
	or b                                             ; $7aac: $b0
	ld a, h                                          ; $7aad: $7c
	dec b                                            ; $7aae: $05
	ret nz                                           ; $7aaf: $c0

	ld d, [hl]                                       ; $7ab0: $56
	jp c, $d1dc                                      ; $7ab1: $da $dc $d1

	ld [bc], a                                       ; $7ab4: $02
	or b                                             ; $7ab5: $b0
	ld a, [hl]                                       ; $7ab6: $7e
	dec b                                            ; $7ab7: $05
	ret nz                                           ; $7ab8: $c0

	ld d, [hl]                                       ; $7ab9: $56
	jp c, $d2dc                                      ; $7aba: $da $dc $d2

	ld [bc], a                                       ; $7abd: $02
	or b                                             ; $7abe: $b0
	ld a, a                                          ; $7abf: $7f
	dec b                                            ; $7ac0: $05
	ret nz                                           ; $7ac1: $c0

	ld d, [hl]                                       ; $7ac2: $56
	jp c, $d3dc                                      ; $7ac3: $da $dc $d3

	ld [bc], a                                       ; $7ac6: $02
	or b                                             ; $7ac7: $b0
	ld a, e                                          ; $7ac8: $7b
	dec b                                            ; $7ac9: $05
	ret nz                                           ; $7aca: $c0

	ld d, [hl]                                       ; $7acb: $56
	jp c, $d4dc                                      ; $7acc: $da $dc $d4

	ld [bc], a                                       ; $7acf: $02
	or b                                             ; $7ad0: $b0
	ld a, l                                          ; $7ad1: $7d
	dec b                                            ; $7ad2: $05
	ret nz                                           ; $7ad3: $c0

	ld d, [hl]                                       ; $7ad4: $56
	jp c, $d5dc                                      ; $7ad5: $da $dc $d5

	ld [bc], a                                       ; $7ad8: $02
	or b                                             ; $7ad9: $b0
	ld a, d                                          ; $7ada: $7a
	dec b                                            ; $7adb: $05
	ret nz                                           ; $7adc: $c0

	ld d, [hl]                                       ; $7add: $56
	jp c, $d7dc                                      ; $7ade: $da $dc $d7

	push hl                                          ; $7ae1: $e5
	dec hl                                           ; $7ae2: $2b
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	add hl, bc                                       ; $7ae5: $09
	add hl, sp                                       ; $7ae6: $39
	add c                                            ; $7ae7: $81
	ret nz                                           ; $7ae8: $c0

	ld h, l                                          ; $7ae9: $65
	ld b, $d4                                        ; $7aea: $06 $d4
	push de                                          ; $7aec: $d5
	rst SubAFromHL                                          ; $7aed: $d7
	ret c                                            ; $7aee: $d8

	reti                                             ; $7aef: $d9


	jp c, $d014                                      ; $7af0: $da $14 $d0

	add e                                            ; $7af3: $83
	ld bc, $d0de                                     ; $7af4: $01 $de $d0
	ret nz                                           ; $7af7: $c0

	ld bc, $06a0                                     ; $7af8: $01 $a0 $06
	inc b                                            ; $7afb: $04
	ld l, l                                          ; $7afc: $6d
	ret nz                                           ; $7afd: $c0

	ld bc, $01a0                                     ; $7afe: $01 $a0 $01
	inc b                                            ; $7b01: $04
	ld [hl], d                                       ; $7b02: $72
	db $e4                                           ; $7b03: $e4
	nop                                              ; $7b04: $00
	inc e                                            ; $7b05: $1c
	inc b                                            ; $7b06: $04
	pop de                                           ; $7b07: $d1
	db $d3                                           ; $7b08: $d3
	sub $db                                          ; $7b09: $d6 $db
	inc d                                            ; $7b0b: $14
	ret nc                                           ; $7b0c: $d0

	add e                                            ; $7b0d: $83
	ld bc, $d1de                                     ; $7b0e: $01 $de $d1
	ret nz                                           ; $7b11: $c0

	ld bc, $06a0                                     ; $7b12: $01 $a0 $06
	inc b                                            ; $7b15: $04
	ld [hl], a                                       ; $7b16: $77
	ret nz                                           ; $7b17: $c0

	ld bc, $01a0                                     ; $7b18: $01 $a0 $01
	inc b                                            ; $7b1b: $04
	ld a, a                                          ; $7b1c: $7f
	db $e4                                           ; $7b1d: $e4
	nop                                              ; $7b1e: $00
	or b                                             ; $7b1f: $b0

jr_081_7b20:
	add hl, bc                                       ; $7b20: $09
	inc e                                            ; $7b21: $1c
	pop bc                                           ; $7b22: $c1
	ld e, c                                          ; $7b23: $59
	db $e3                                           ; $7b24: $e3
	nop                                              ; $7b25: $00
	cp b                                             ; $7b26: $b8
	ret nz                                           ; $7b27: $c0

	add hl, bc                                       ; $7b28: $09
	db $e3                                           ; $7b29: $e3
	nop                                              ; $7b2a: $00
	dec de                                           ; $7b2b: $1b
	and b                                            ; $7b2c: $a0
	add b                                            ; $7b2d: $80
	and b                                            ; $7b2e: $a0
	jr jr_081_7b31                                   ; $7b2f: $18 $00

jr_081_7b31:
	inc bc                                           ; $7b31: $03
	db $e4                                           ; $7b32: $e4
	nop                                              ; $7b33: $00
	dec bc                                           ; $7b34: $0b
	rst $38                                          ; $7b35: $ff
	rlca                                             ; $7b36: $07
	ld b, b                                          ; $7b37: $40
	add b                                            ; $7b38: $80
	and b                                            ; $7b39: $a0
	jr jr_081_7b20                                   ; $7b3a: $18 $e4

	nop                                              ; $7b3c: $00
	ld c, d                                          ; $7b3d: $4a
	jr z, jr_081_7b46                                ; $7b3e: $28 $06

	ret nz                                           ; $7b40: $c0

	ld bc, $06a0                                     ; $7b41: $01 $a0 $06
	inc b                                            ; $7b44: $04
	add l                                            ; $7b45: $85

jr_081_7b46:
	ccf                                              ; $7b46: $3f
	inc b                                            ; $7b47: $04
	adc e                                            ; $7b48: $8b
	add hl, bc                                       ; $7b49: $09
	ld de, $02e1                                     ; $7b4a: $11 $e1 $02
	inc bc                                           ; $7b4d: $03
	inc de                                           ; $7b4e: $13
	ret nz                                           ; $7b4f: $c0

	ld bc, $06a0                                     ; $7b50: $01 $a0 $06
	inc b                                            ; $7b53: $04
	sub c                                            ; $7b54: $91
	pop hl                                           ; $7b55: $e1
	ld [bc], a                                       ; $7b56: $02
	inc b                                            ; $7b57: $04
	ld b, h                                          ; $7b58: $44
	db $e4                                           ; $7b59: $e4
	ld bc, $04e8                                     ; $7b5a: $01 $e8 $04
	sub [hl]                                         ; $7b5d: $96
	add hl, bc                                       ; $7b5e: $09
	ld de, $02e1                                     ; $7b5f: $11 $e1 $02
	inc bc                                           ; $7b62: $03
	rra                                              ; $7b63: $1f
	ret nz                                           ; $7b64: $c0

	ld bc, $06a0                                     ; $7b65: $01 $a0 $06
	inc b                                            ; $7b68: $04
	sbc c                                            ; $7b69: $99
	pop hl                                           ; $7b6a: $e1
	ld [bc], a                                       ; $7b6b: $02
	inc b                                            ; $7b6c: $04
	ld e, a                                          ; $7b6d: $5f
	db $e4                                           ; $7b6e: $e4
	ld bc, $04d3                                     ; $7b6f: $01 $d3 $04
	and c                                            ; $7b72: $a1
	add hl, bc                                       ; $7b73: $09
	ld de, $02e1                                     ; $7b74: $11 $e1 $02
	inc bc                                           ; $7b77: $03
	rla                                              ; $7b78: $17
	ret nz                                           ; $7b79: $c0

	ld bc, $06a0                                     ; $7b7a: $01 $a0 $06
	inc b                                            ; $7b7d: $04
	and l                                            ; $7b7e: $a5
	pop hl                                           ; $7b7f: $e1
	ld [bc], a                                       ; $7b80: $02
	inc b                                            ; $7b81: $04
	ld c, l                                          ; $7b82: $4d
	db $e4                                           ; $7b83: $e4
	ld bc, $28be                                     ; $7b84: $01 $be $28
	ld b, $c0                                        ; $7b87: $06 $c0
	ld bc, $06a0                                     ; $7b89: $01 $a0 $06
	inc b                                            ; $7b8c: $04
	xor c                                            ; $7b8d: $a9
	ccf                                              ; $7b8e: $3f
	inc b                                            ; $7b8f: $04
	or h                                             ; $7b90: $b4
	add hl, bc                                       ; $7b91: $09
	ld de, $02e1                                     ; $7b92: $11 $e1 $02
	inc bc                                           ; $7b95: $03
	inc de                                           ; $7b96: $13
	ret nz                                           ; $7b97: $c0

	ld bc, $06a0                                     ; $7b98: $01 $a0 $06
	inc b                                            ; $7b9b: $04
	cp c                                             ; $7b9c: $b9
	pop hl                                           ; $7b9d: $e1
	ld [bc], a                                       ; $7b9e: $02
	inc b                                            ; $7b9f: $04
	ld b, h                                          ; $7ba0: $44
	db $e4                                           ; $7ba1: $e4
	ld bc, $04a0                                     ; $7ba2: $01 $a0 $04
	pop bc                                           ; $7ba5: $c1
	add hl, bc                                       ; $7ba6: $09
	ld de, $02e1                                     ; $7ba7: $11 $e1 $02
	inc bc                                           ; $7baa: $03
	rra                                              ; $7bab: $1f
	ret nz                                           ; $7bac: $c0

	ld bc, $06a0                                     ; $7bad: $01 $a0 $06
	inc b                                            ; $7bb0: $04
	jp $02e1                                         ; $7bb1: $c3 $e1 $02


	inc b                                            ; $7bb4: $04
	ld e, a                                          ; $7bb5: $5f
	db $e4                                           ; $7bb6: $e4
	ld bc, $048b                                     ; $7bb7: $01 $8b $04
	ret z                                            ; $7bba: $c8

	add hl, bc                                       ; $7bbb: $09
	ld de, $02e1                                     ; $7bbc: $11 $e1 $02
	inc bc                                           ; $7bbf: $03
	rla                                              ; $7bc0: $17
	ret nz                                           ; $7bc1: $c0

	ld bc, $06a0                                     ; $7bc2: $01 $a0 $06
	inc b                                            ; $7bc5: $04
	jp z, $02e1                                      ; $7bc6: $ca $e1 $02

	inc b                                            ; $7bc9: $04
	ld c, l                                          ; $7bca: $4d
	db $e4                                           ; $7bcb: $e4
	ld bc, $0976                                     ; $7bcc: $01 $76 $09
	inc l                                            ; $7bcf: $2c
	pop bc                                           ; $7bd0: $c1
	ld e, c                                          ; $7bd1: $59
	db $e3                                           ; $7bd2: $e3
	nop                                              ; $7bd3: $00
	cp c                                             ; $7bd4: $b9
	ret nz                                           ; $7bd5: $c0

	add hl, bc                                       ; $7bd6: $09
	db $e3                                           ; $7bd7: $e3
	nop                                              ; $7bd8: $00
	scf                                              ; $7bd9: $37
	ld h, b                                          ; $7bda: $60
	cp $08                                           ; $7bdb: $fe $08
	db $fc                                           ; $7bdd: $fc
	ret nz                                           ; $7bde: $c0

	ld l, d                                          ; $7bdf: $6a
	jp nc, $80f1                                     ; $7be0: $d2 $f1 $80

	ld [bc], a                                       ; $7be3: $02
	ld a, a                                          ; $7be4: $7f
	inc bc                                           ; $7be5: $03
	db $e4                                           ; $7be6: $e4
	nop                                              ; $7be7: $00
	and l                                            ; $7be8: $a5
	ld [de], a                                       ; $7be9: $12
	and b                                            ; $7bea: $a0
	add b                                            ; $7beb: $80
	and b                                            ; $7bec: $a0
	add hl, de                                       ; $7bed: $19
	nop                                              ; $7bee: $00
	inc bc                                           ; $7bef: $03
	db $e4                                           ; $7bf0: $e4
	nop                                              ; $7bf1: $00
	dec bc                                           ; $7bf2: $0b
	rst $38                                          ; $7bf3: $ff
	rlca                                             ; $7bf4: $07
	ld b, b                                          ; $7bf5: $40
	add b                                            ; $7bf6: $80
	and b                                            ; $7bf7: $a0
	add hl, de                                       ; $7bf8: $19
	db $e4                                           ; $7bf9: $e4
	nop                                              ; $7bfa: $00
	ld c, d                                          ; $7bfb: $4a
	jr z, jr_081_7c04                                ; $7bfc: $28 $06

	ret nz                                           ; $7bfe: $c0

	ld bc, $06a0                                     ; $7bff: $01 $a0 $06
	inc b                                            ; $7c02: $04
	rst SubAFromHL                                          ; $7c03: $d7

jr_081_7c04:
	ccf                                              ; $7c04: $3f
	inc b                                            ; $7c05: $04
	db $db                                           ; $7c06: $db
	add hl, bc                                       ; $7c07: $09
	ld de, $02e1                                     ; $7c08: $11 $e1 $02
	inc bc                                           ; $7c0b: $03
	inc de                                           ; $7c0c: $13
	ret nz                                           ; $7c0d: $c0

	ld bc, $06a0                                     ; $7c0e: $01 $a0 $06
	inc b                                            ; $7c11: $04
	ldh [c], a                                       ; $7c12: $e2
	pop hl                                           ; $7c13: $e1
	ld [bc], a                                       ; $7c14: $02
	inc b                                            ; $7c15: $04
	ld b, h                                          ; $7c16: $44
	db $e4                                           ; $7c17: $e4
	ld bc, $042a                                     ; $7c18: $01 $2a $04
	ld [$1109], a                                    ; $7c1b: $ea $09 $11
	pop hl                                           ; $7c1e: $e1
	ld [bc], a                                       ; $7c1f: $02
	inc bc                                           ; $7c20: $03
	dec de                                           ; $7c21: $1b
	ret nz                                           ; $7c22: $c0

	ld bc, $06a0                                     ; $7c23: $01 $a0 $06
	inc b                                            ; $7c26: $04
	db $ec                                           ; $7c27: $ec
	pop hl                                           ; $7c28: $e1
	ld [bc], a                                       ; $7c29: $02
	inc b                                            ; $7c2a: $04
	ld d, [hl]                                       ; $7c2b: $56
	db $e4                                           ; $7c2c: $e4
	ld bc, $0415                                     ; $7c2d: $01 $15 $04
	ei                                               ; $7c30: $fb
	add hl, bc                                       ; $7c31: $09
	ld de, $02e1                                     ; $7c32: $11 $e1 $02
	inc bc                                           ; $7c35: $03
	rla                                              ; $7c36: $17
	ret nz                                           ; $7c37: $c0

	ld bc, $06a0                                     ; $7c38: $01 $a0 $06
	dec b                                            ; $7c3b: $05
	ld bc, $02e1                                     ; $7c3c: $01 $e1 $02
	inc b                                            ; $7c3f: $04
	ld c, l                                          ; $7c40: $4d
	db $e4                                           ; $7c41: $e4
	ld bc, $2800                                     ; $7c42: $01 $00 $28
	ld b, $c0                                        ; $7c45: $06 $c0
	ld bc, $06a0                                     ; $7c47: $01 $a0 $06
	dec b                                            ; $7c4a: $05
	add hl, bc                                       ; $7c4b: $09
	ccf                                              ; $7c4c: $3f
	dec b                                            ; $7c4d: $05
	ld c, $09                                        ; $7c4e: $0e $09
	ld de, $02e1                                     ; $7c50: $11 $e1 $02
	inc bc                                           ; $7c53: $03
	inc de                                           ; $7c54: $13
	ret nz                                           ; $7c55: $c0

	ld bc, $06a0                                     ; $7c56: $01 $a0 $06
	dec b                                            ; $7c59: $05
	inc d                                            ; $7c5a: $14
	pop hl                                           ; $7c5b: $e1
	ld [bc], a                                       ; $7c5c: $02
	inc b                                            ; $7c5d: $04
	ld b, h                                          ; $7c5e: $44
	db $e4                                           ; $7c5f: $e4
	nop                                              ; $7c60: $00
	ldh [c], a                                       ; $7c61: $e2
	dec b                                            ; $7c62: $05
	dec de                                           ; $7c63: $1b
	add hl, bc                                       ; $7c64: $09
	ld de, $02e1                                     ; $7c65: $11 $e1 $02
	inc bc                                           ; $7c68: $03
	rra                                              ; $7c69: $1f
	ret nz                                           ; $7c6a: $c0

	ld bc, $06a0                                     ; $7c6b: $01 $a0 $06
	dec b                                            ; $7c6e: $05
	ld e, $e1                                        ; $7c6f: $1e $e1
	ld [bc], a                                       ; $7c71: $02
	inc b                                            ; $7c72: $04
	ld e, a                                          ; $7c73: $5f
	db $e4                                           ; $7c74: $e4
	nop                                              ; $7c75: $00
	call $2505                                       ; $7c76: $cd $05 $25
	add hl, bc                                       ; $7c79: $09
	ld de, $02e1                                     ; $7c7a: $11 $e1 $02
	inc bc                                           ; $7c7d: $03
	inc de                                           ; $7c7e: $13
	ret nz                                           ; $7c7f: $c0

	ld bc, $06a0                                     ; $7c80: $01 $a0 $06
	dec b                                            ; $7c83: $05
	dec hl                                           ; $7c84: $2b
	pop hl                                           ; $7c85: $e1
	ld [bc], a                                       ; $7c86: $02
	inc b                                            ; $7c87: $04
	ld b, h                                          ; $7c88: $44
	db $e4                                           ; $7c89: $e4
	nop                                              ; $7c8a: $00
	cp b                                             ; $7c8b: $b8
	add hl, bc                                       ; $7c8c: $09
	or h                                             ; $7c8d: $b4
	ret nz                                           ; $7c8e: $c0

	ld bc, $06a0                                     ; $7c8f: $01 $a0 $06
	dec b                                            ; $7c92: $05
	ld [hl-], a                                      ; $7c93: $32
	ret nz                                           ; $7c94: $c0

	ld bc, $01a0                                     ; $7c95: $01 $a0 $01
	dec b                                            ; $7c98: $05
	scf                                              ; $7c99: $37
	ret nz                                           ; $7c9a: $c0

	ld bc, $06a0                                     ; $7c9b: $01 $a0 $06
	dec b                                            ; $7c9e: $05
	ld a, $c0                                        ; $7c9f: $3e $c0
	ld bc, $01a0                                     ; $7ca1: $01 $a0 $01
	dec b                                            ; $7ca4: $05
	ld c, b                                          ; $7ca5: $48
	ret nz                                           ; $7ca6: $c0

	ld bc, $06a0                                     ; $7ca7: $01 $a0 $06
	dec b                                            ; $7caa: $05
	ld d, e                                          ; $7cab: $53
	ret nz                                           ; $7cac: $c0

	ld bc, $01a0                                     ; $7cad: $01 $a0 $01
	dec b                                            ; $7cb0: $05
	ld h, e                                          ; $7cb1: $63
	ret nz                                           ; $7cb2: $c0

	set 0, c                                         ; $7cb3: $cb $c1
	ld e, e                                          ; $7cb5: $5b
	ret nz                                           ; $7cb6: $c0

	rrca                                             ; $7cb7: $0f
	db $e3                                           ; $7cb8: $e3
	ld bc, $c00a                                     ; $7cb9: $01 $0a $c0
	ld bc, $06a0                                     ; $7cbc: $01 $a0 $06
	dec b                                            ; $7cbf: $05
	ld h, a                                          ; $7cc0: $67
	ret nz                                           ; $7cc1: $c0

	ld bc, $01a0                                     ; $7cc2: $01 $a0 $01
	dec b                                            ; $7cc5: $05
	ld l, e                                          ; $7cc6: $6b
	ret nz                                           ; $7cc7: $c0

	ld bc, $06a0                                     ; $7cc8: $01 $a0 $06
	dec b                                            ; $7ccb: $05
	ld l, [hl]                                       ; $7ccc: $6e
	ret nz                                           ; $7ccd: $c0

	ld bc, $01a0                                     ; $7cce: $01 $a0 $01
	dec b                                            ; $7cd1: $05
	ld [hl], e                                       ; $7cd2: $73
	ret nz                                           ; $7cd3: $c0

	ld bc, $06a0                                     ; $7cd4: $01 $a0 $06
	dec b                                            ; $7cd7: $05
	add b                                            ; $7cd8: $80
	ret nz                                           ; $7cd9: $c0

	ld bc, $01a0                                     ; $7cda: $01 $a0 $01
	dec b                                            ; $7cdd: $05
	adc l                                            ; $7cde: $8d
	pop bc                                           ; $7cdf: $c1
	ld d, a                                          ; $7ce0: $57
	ret nz                                           ; $7ce1: $c0

	ld de, $00e3                                     ; $7ce2: $11 $e3 $00
	cp c                                             ; $7ce5: $b9
	pop hl                                           ; $7ce6: $e1
	ld [bc], a                                       ; $7ce7: $02
	ld [bc], a                                       ; $7ce8: $02
	ld h, b                                          ; $7ce9: $60
	ret nz                                           ; $7cea: $c0

	ld bc, $01a0                                     ; $7ceb: $01 $a0 $01
	dec b                                            ; $7cee: $05
	sbc h                                            ; $7cef: $9c
	pop hl                                           ; $7cf0: $e1
	ld [bc], a                                       ; $7cf1: $02
	inc bc                                           ; $7cf2: $03
	rla                                              ; $7cf3: $17
	ret nz                                           ; $7cf4: $c0

	ld bc, $06a0                                     ; $7cf5: $01 $a0 $06
	dec b                                            ; $7cf8: $05
	and l                                            ; $7cf9: $a5
	ret nz                                           ; $7cfa: $c0

	ld bc, $01a0                                     ; $7cfb: $01 $a0 $01
	dec b                                            ; $7cfe: $05
	xor e                                            ; $7cff: $ab
	pop hl                                           ; $7d00: $e1
	ld [bc], a                                       ; $7d01: $02
	inc bc                                           ; $7d02: $03
	inc de                                           ; $7d03: $13
	ret nz                                           ; $7d04: $c0

	ld bc, $06a0                                     ; $7d05: $01 $a0 $06
	dec b                                            ; $7d08: $05
	or c                                             ; $7d09: $b1
	ret nz                                           ; $7d0a: $c0

	ld bc, $01a0                                     ; $7d0b: $01 $a0 $01
	dec b                                            ; $7d0e: $05
	jp nz, $01c0                                     ; $7d0f: $c2 $c0 $01

	and b                                            ; $7d12: $a0
	ld b, $05                                        ; $7d13: $06 $05
	db $d3                                           ; $7d15: $d3
	ret nz                                           ; $7d16: $c0

	ld bc, $01a0                                     ; $7d17: $01 $a0 $01
	dec b                                            ; $7d1a: $05
	add sp, -$40                                     ; $7d1b: $e8 $c0
	ld bc, $06a0                                     ; $7d1d: $01 $a0 $06
	dec b                                            ; $7d20: $05
	ld hl, sp-$40                                    ; $7d21: $f8 $c0
	ld bc, $01a0                                     ; $7d23: $01 $a0 $01
	ld b, $04                                        ; $7d26: $06 $04
	nop                                              ; $7d28: $00
	add b                                            ; $7d29: $80
	ld [bc], a                                       ; $7d2a: $02
	ld a, a                                          ; $7d2b: $7f
	ret nc                                           ; $7d2c: $d0

	add d                                            ; $7d2d: $82
	ld bc, $d1d8                                     ; $7d2e: $01 $d8 $d1
	pop hl                                           ; $7d31: $e1
	ld [bc], a                                       ; $7d32: $02
	inc b                                            ; $7d33: $04
	rst JumpTable                                          ; $7d34: $c7
	ret nz                                           ; $7d35: $c0

	ld d, b                                          ; $7d36: $50
	jp nc, $55c0                                     ; $7d37: $d2 $c0 $55

	jp c, Jump_081_6bc1                              ; $7d3a: $da $c1 $6b

	jp nc, $e4da                                     ; $7d3d: $d2 $da $e4

	nop                                              ; $7d40: $00
	ld [bc], a                                       ; $7d41: $02
	add hl, bc                                       ; $7d42: $09
	ld a, [de]                                       ; $7d43: $1a
	pop hl                                           ; $7d44: $e1
	ld [bc], a                                       ; $7d45: $02
	ld [$605c], sp                                   ; $7d46: $08 $5c $60
	db $fc                                           ; $7d49: $fc
	add e                                            ; $7d4a: $83
	ld bc, $d0de                                     ; $7d4b: $01 $de $d0
	dec b                                            ; $7d4e: $05
	ret nz                                           ; $7d4f: $c0

	ld d, [hl]                                       ; $7d50: $56
	jp c, $d0dd                                      ; $7d51: $da $dd $d0

	dec b                                            ; $7d54: $05
	ret nz                                           ; $7d55: $c0

	ld d, [hl]                                       ; $7d56: $56
	jp c, $d1dd                                      ; $7d57: $da $dd $d1

	push hl                                          ; $7d5a: $e5
	dec hl                                           ; $7d5b: $2b
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	add hl, bc                                       ; $7d5e: $09
	rrca                                             ; $7d5f: $0f
	ret nz                                           ; $7d60: $c0

	ld bc, $06a0                                     ; $7d61: $01 $a0 $06
	ld b, $0c                                        ; $7d64: $06 $0c
	ret nz                                           ; $7d66: $c0

	ld bc, $01a0                                     ; $7d67: $01 $a0 $01
	ld b, $13                                        ; $7d6a: $06 $13
	db $e4                                           ; $7d6c: $e4
	nop                                              ; $7d6d: $00
	ld [bc], a                                       ; $7d6e: $02
	add hl, bc                                       ; $7d6f: $09
	ld l, b                                          ; $7d70: $68
	pop bc                                           ; $7d71: $c1
	ld e, c                                          ; $7d72: $59
	db $e3                                           ; $7d73: $e3
	nop                                              ; $7d74: $00
	sub h                                            ; $7d75: $94
	ret nz                                           ; $7d76: $c0

	ld bc, $06a0                                     ; $7d77: $01 $a0 $06
	ld b, $1a                                        ; $7d7a: $06 $1a
	db $fd                                           ; $7d7c: $fd
	ld e, e                                          ; $7d7d: $5b
	adc e                                            ; $7d7e: $8b
	ld bc, $02ea                                     ; $7d7f: $01 $ea $02
	or b                                             ; $7d82: $b0
	cpl                                              ; $7d83: $2f
	rlca                                             ; $7d84: $07
	pop hl                                           ; $7d85: $e1
	ld [bc], a                                       ; $7d86: $02
	dec b                                            ; $7d87: $05
	sub h                                            ; $7d88: $94
	db $e4                                           ; $7d89: $e4
	nop                                              ; $7d8a: $00
	sub c                                            ; $7d8b: $91
	ld [bc], a                                       ; $7d8c: $02
	or b                                             ; $7d8d: $b0
	jr nc, jr_081_7d97                               ; $7d8e: $30 $07

	pop hl                                           ; $7d90: $e1
	ld [bc], a                                       ; $7d91: $02
	dec b                                            ; $7d92: $05
	xor e                                            ; $7d93: $ab
	db $e4                                           ; $7d94: $e4
	nop                                              ; $7d95: $00
	ld b, h                                          ; $7d96: $44

jr_081_7d97:
	ld [bc], a                                       ; $7d97: $02
	or b                                             ; $7d98: $b0
	ld sp, $e107                                     ; $7d99: $31 $07 $e1
	ld [bc], a                                       ; $7d9c: $02
	dec b                                            ; $7d9d: $05
	jp nz, $00e4                                     ; $7d9e: $c2 $e4 $00

	cp l                                             ; $7da1: $bd
	ld [bc], a                                       ; $7da2: $02
	or b                                             ; $7da3: $b0
	ld [hl-], a                                      ; $7da4: $32
	rlca                                             ; $7da5: $07
	pop hl                                           ; $7da6: $e1
	ld [bc], a                                       ; $7da7: $02
	dec b                                            ; $7da8: $05
	reti                                             ; $7da9: $d9


	db $e4                                           ; $7daa: $e4
	nop                                              ; $7dab: $00
	ld [hl], b                                       ; $7dac: $70
	ld [bc], a                                       ; $7dad: $02
	or b                                             ; $7dae: $b0
	inc sp                                           ; $7daf: $33
	rlca                                             ; $7db0: $07
	pop hl                                           ; $7db1: $e1
	ld [bc], a                                       ; $7db2: $02
	dec b                                            ; $7db3: $05
	ldh a, [$e4]                                     ; $7db4: $f0 $e4
	nop                                              ; $7db6: $00
	ld h, l                                          ; $7db7: $65
	ld [bc], a                                       ; $7db8: $02
	or b                                             ; $7db9: $b0
	inc [hl]                                         ; $7dba: $34
	rlca                                             ; $7dbb: $07
	pop hl                                           ; $7dbc: $e1
	ld [bc], a                                       ; $7dbd: $02
	ld b, $07                                        ; $7dbe: $06 $07
	db $e4                                           ; $7dc0: $e4
	nop                                              ; $7dc1: $00
	ld e, d                                          ; $7dc2: $5a
	ld [bc], a                                       ; $7dc3: $02
	or b                                             ; $7dc4: $b0
	dec [hl]                                         ; $7dc5: $35
	rlca                                             ; $7dc6: $07
	pop hl                                           ; $7dc7: $e1
	ld [bc], a                                       ; $7dc8: $02
	ld b, $1e                                        ; $7dc9: $06 $1e
	db $e4                                           ; $7dcb: $e4
	nop                                              ; $7dcc: $00
	ld c, a                                          ; $7dcd: $4f
	ld [bc], a                                       ; $7dce: $02
	or b                                             ; $7dcf: $b0
	ld [hl], $07                                     ; $7dd0: $36 $07
	pop hl                                           ; $7dd2: $e1
	ld [bc], a                                       ; $7dd3: $02
	ld b, $35                                        ; $7dd4: $06 $35
	db $e4                                           ; $7dd6: $e4
	nop                                              ; $7dd7: $00
	ld b, h                                          ; $7dd8: $44
	jr z, jr_081_7ddb                                ; $7dd9: $28 $00

jr_081_7ddb:
	ccf                                              ; $7ddb: $3f
	ld b, $1f                                        ; $7ddc: $06 $1f
	add hl, bc                                       ; $7dde: $09
	ld de, $02e1                                     ; $7ddf: $11 $e1 $02
	inc bc                                           ; $7de2: $03
	inc de                                           ; $7de3: $13
	ret nz                                           ; $7de4: $c0

	ld bc, $06a0                                     ; $7de5: $01 $a0 $06
	ld b, $21                                        ; $7de8: $06 $21
	pop hl                                           ; $7dea: $e1
	ld [bc], a                                       ; $7deb: $02
	inc b                                            ; $7dec: $04
	dec sp                                           ; $7ded: $3b
	db $e4                                           ; $7dee: $e4
	nop                                              ; $7def: $00
	or b                                             ; $7df0: $b0
	ld b, $26                                        ; $7df1: $06 $26
	add hl, bc                                       ; $7df3: $09
	ld de, $02e1                                     ; $7df4: $11 $e1 $02
	inc bc                                           ; $7df7: $03
	rla                                              ; $7df8: $17
	ret nz                                           ; $7df9: $c0

	ld bc, $06a0                                     ; $7dfa: $01 $a0 $06
	ld b, $28                                        ; $7dfd: $06 $28
	pop hl                                           ; $7dff: $e1
	ld [bc], a                                       ; $7e00: $02
	inc b                                            ; $7e01: $04
	ld c, l                                          ; $7e02: $4d
	db $e4                                           ; $7e03: $e4
	nop                                              ; $7e04: $00
	sbc e                                            ; $7e05: $9b
	ld b, $2e                                        ; $7e06: $06 $2e
	add hl, bc                                       ; $7e08: $09
	ld de, $02e1                                     ; $7e09: $11 $e1 $02
	inc bc                                           ; $7e0c: $03
	inc de                                           ; $7e0d: $13
	ret nz                                           ; $7e0e: $c0

	ld bc, $06a0                                     ; $7e0f: $01 $a0 $06
	ld b, $30                                        ; $7e12: $06 $30
	pop hl                                           ; $7e14: $e1
	ld [bc], a                                       ; $7e15: $02
	inc b                                            ; $7e16: $04
	ld b, h                                          ; $7e17: $44
	db $e4                                           ; $7e18: $e4
	nop                                              ; $7e19: $00
	add [hl]                                         ; $7e1a: $86
	jr z, jr_081_7e1d                                ; $7e1b: $28 $00

jr_081_7e1d:
	ccf                                              ; $7e1d: $3f
	ld b, $1f                                        ; $7e1e: $06 $1f
	add hl, bc                                       ; $7e20: $09
	ld de, $02e1                                     ; $7e21: $11 $e1 $02
	inc bc                                           ; $7e24: $03
	rra                                              ; $7e25: $1f
	ret nz                                           ; $7e26: $c0

	ld bc, $06a0                                     ; $7e27: $01 $a0 $06
	ld b, $36                                        ; $7e2a: $06 $36
	pop hl                                           ; $7e2c: $e1
	ld [bc], a                                       ; $7e2d: $02
	inc b                                            ; $7e2e: $04
	ld e, a                                          ; $7e2f: $5f
	db $e4                                           ; $7e30: $e4
	nop                                              ; $7e31: $00
	ld l, [hl]                                       ; $7e32: $6e
	ld b, $26                                        ; $7e33: $06 $26
	add hl, bc                                       ; $7e35: $09
	ld de, $02e1                                     ; $7e36: $11 $e1 $02
	inc bc                                           ; $7e39: $03
	dec de                                           ; $7e3a: $1b
	ret nz                                           ; $7e3b: $c0

	ld bc, $06a0                                     ; $7e3c: $01 $a0 $06
	ld b, $41                                        ; $7e3f: $06 $41
	pop hl                                           ; $7e41: $e1
	ld [bc], a                                       ; $7e42: $02
	inc b                                            ; $7e43: $04
	ld d, [hl]                                       ; $7e44: $56
	db $e4                                           ; $7e45: $e4
	nop                                              ; $7e46: $00
	ld e, c                                          ; $7e47: $59
	ld b, $2e                                        ; $7e48: $06 $2e
	add hl, bc                                       ; $7e4a: $09
	ld de, $02e1                                     ; $7e4b: $11 $e1 $02
	inc bc                                           ; $7e4e: $03
	rra                                              ; $7e4f: $1f
	ret nz                                           ; $7e50: $c0

	ld bc, $06a0                                     ; $7e51: $01 $a0 $06
	ld b, $48                                        ; $7e54: $06 $48
	pop hl                                           ; $7e56: $e1
	ld [bc], a                                       ; $7e57: $02
	inc b                                            ; $7e58: $04
	ld e, a                                          ; $7e59: $5f
	db $e4                                           ; $7e5a: $e4
	nop                                              ; $7e5b: $00
	ld b, h                                          ; $7e5c: $44
	jr z, jr_081_7e5f                                ; $7e5d: $28 $00

jr_081_7e5f:
	ccf                                              ; $7e5f: $3f
	ld b, $1f                                        ; $7e60: $06 $1f
	add hl, bc                                       ; $7e62: $09
	ld de, $02e1                                     ; $7e63: $11 $e1 $02
	inc bc                                           ; $7e66: $03
	rla                                              ; $7e67: $17
	ret nz                                           ; $7e68: $c0

	ld bc, $06a0                                     ; $7e69: $01 $a0 $06
	ld b, $51                                        ; $7e6c: $06 $51
	pop hl                                           ; $7e6e: $e1
	ld [bc], a                                       ; $7e6f: $02
	inc b                                            ; $7e70: $04
	ld c, l                                          ; $7e71: $4d
	db $e4                                           ; $7e72: $e4
	nop                                              ; $7e73: $00
	inc l                                            ; $7e74: $2c
	ld b, $26                                        ; $7e75: $06 $26
	add hl, bc                                       ; $7e77: $09
	ld de, $02e1                                     ; $7e78: $11 $e1 $02
	inc bc                                           ; $7e7b: $03
	dec de                                           ; $7e7c: $1b
	ret nz                                           ; $7e7d: $c0

	ld bc, $06a0                                     ; $7e7e: $01 $a0 $06
	ld b, $56                                        ; $7e81: $06 $56
	pop hl                                           ; $7e83: $e1
	ld [bc], a                                       ; $7e84: $02
	inc b                                            ; $7e85: $04
	ld d, [hl]                                       ; $7e86: $56
	db $e4                                           ; $7e87: $e4
	nop                                              ; $7e88: $00
	rla                                              ; $7e89: $17
	ld b, $2e                                        ; $7e8a: $06 $2e
	add hl, bc                                       ; $7e8c: $09
	ld de, $02e1                                     ; $7e8d: $11 $e1 $02
	inc bc                                           ; $7e90: $03
	inc de                                           ; $7e91: $13
	ret nz                                           ; $7e92: $c0

	ld bc, $06a0                                     ; $7e93: $01 $a0 $06
	ld [bc], a                                       ; $7e96: $02
	and $e1                                          ; $7e97: $e6 $e1
	ld [bc], a                                       ; $7e99: $02
	inc b                                            ; $7e9a: $04
	ld b, h                                          ; $7e9b: $44
	db $e4                                           ; $7e9c: $e4
	nop                                              ; $7e9d: $00
	ld [bc], a                                       ; $7e9e: $02
	add hl, bc                                       ; $7e9f: $09
	ld [$02e1], sp                                   ; $7ea0: $08 $e1 $02
	ld [$e5b7], sp                                   ; $7ea3: $08 $b7 $e5
	dec hl                                           ; $7ea6: $2b
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	add hl, bc                                       ; $7ea9: $09
	rrca                                             ; $7eaa: $0f
	ret nz                                           ; $7eab: $c0

	ld bc, $06a0                                     ; $7eac: $01 $a0 $06
	ld b, $62                                        ; $7eaf: $06 $62
	ret nz                                           ; $7eb1: $c0

	ld bc, $01a0                                     ; $7eb2: $01 $a0 $01
	ld b, $13                                        ; $7eb5: $06 $13
	db $e4                                           ; $7eb7: $e4
	nop                                              ; $7eb8: $00
	ld [bc], a                                       ; $7eb9: $02
	add hl, bc                                       ; $7eba: $09
	sbc l                                            ; $7ebb: $9d
	pop bc                                           ; $7ebc: $c1
	ld e, c                                          ; $7ebd: $59
	db $e3                                           ; $7ebe: $e3
	nop                                              ; $7ebf: $00
	sub [hl]                                         ; $7ec0: $96
	ret nz                                           ; $7ec1: $c0

	ld bc, $06a0                                     ; $7ec2: $01 $a0 $06
	ld b, $6c                                        ; $7ec5: $06 $6c
	ret nz                                           ; $7ec7: $c0

	ld bc, $01a0                                     ; $7ec8: $01 $a0 $01
	ld b, $74                                        ; $7ecb: $06 $74
	db $fd                                           ; $7ecd: $fd
	adc d                                            ; $7ece: $8a
	adc e                                            ; $7ecf: $8b
	ld bc, $02f6                                     ; $7ed0: $01 $f6 $02
	or b                                             ; $7ed3: $b0
	scf                                              ; $7ed4: $37
	dec bc                                           ; $7ed5: $0b
	pop hl                                           ; $7ed6: $e1
	ld [bc], a                                       ; $7ed7: $02
	ld b, $6e                                        ; $7ed8: $06 $6e
	pop hl                                           ; $7eda: $e1
	ld [bc], a                                       ; $7edb: $02
	ld [bc], a                                       ; $7edc: $02
	ld h, b                                          ; $7edd: $60
	db $e4                                           ; $7ede: $e4
	nop                                              ; $7edf: $00
	cp e                                             ; $7ee0: $bb
	ld [bc], a                                       ; $7ee1: $02
	or b                                             ; $7ee2: $b0
	dec sp                                           ; $7ee3: $3b
	dec bc                                           ; $7ee4: $0b
	pop hl                                           ; $7ee5: $e1
	ld [bc], a                                       ; $7ee6: $02
	rlca                                             ; $7ee7: $07
	inc b                                            ; $7ee8: $04
	pop hl                                           ; $7ee9: $e1
	ld [bc], a                                       ; $7eea: $02
	ld [bc], a                                       ; $7eeb: $02
	ld h, b                                          ; $7eec: $60
	db $e4                                           ; $7eed: $e4
	nop                                              ; $7eee: $00
	ld l, e                                          ; $7eef: $6b
	ld [bc], a                                       ; $7ef0: $02
	or b                                             ; $7ef1: $b0
	inc a                                            ; $7ef2: $3c
	dec bc                                           ; $7ef3: $0b
	pop hl                                           ; $7ef4: $e1
	ld [bc], a                                       ; $7ef5: $02
	rlca                                             ; $7ef6: $07
	dec de                                           ; $7ef7: $1b
	pop hl                                           ; $7ef8: $e1
	ld [bc], a                                       ; $7ef9: $02
	ld [bc], a                                       ; $7efa: $02
	ld h, b                                          ; $7efb: $60
	db $e4                                           ; $7efc: $e4
	nop                                              ; $7efd: $00
	sbc l                                            ; $7efe: $9d
	ld [bc], a                                       ; $7eff: $02
	or b                                             ; $7f00: $b0
	dec a                                            ; $7f01: $3d
	dec bc                                           ; $7f02: $0b
	pop hl                                           ; $7f03: $e1
	ld [bc], a                                       ; $7f04: $02
	ld b, $89                                        ; $7f05: $06 $89
	pop hl                                           ; $7f07: $e1
	ld [bc], a                                       ; $7f08: $02
	ld [bc], a                                       ; $7f09: $02
	ld h, b                                          ; $7f0a: $60
	db $e4                                           ; $7f0b: $e4
	nop                                              ; $7f0c: $00
	adc [hl]                                         ; $7f0d: $8e
	ld [bc], a                                       ; $7f0e: $02
	or b                                             ; $7f0f: $b0
	ld a, $0b                                        ; $7f10: $3e $0b
	pop hl                                           ; $7f12: $e1
	ld [bc], a                                       ; $7f13: $02
	rlca                                             ; $7f14: $07
	ld [hl-], a                                      ; $7f15: $32
	pop hl                                           ; $7f16: $e1
	ld [bc], a                                       ; $7f17: $02
	ld [bc], a                                       ; $7f18: $02
	ld h, b                                          ; $7f19: $60
	db $e4                                           ; $7f1a: $e4
	nop                                              ; $7f1b: $00
	ld a, a                                          ; $7f1c: $7f
	ld [bc], a                                       ; $7f1d: $02
	or b                                             ; $7f1e: $b0
	ccf                                              ; $7f1f: $3f
	dec bc                                           ; $7f20: $0b
	pop hl                                           ; $7f21: $e1
	ld [bc], a                                       ; $7f22: $02
	rlca                                             ; $7f23: $07
	ld c, c                                          ; $7f24: $49
	pop hl                                           ; $7f25: $e1
	ld [bc], a                                       ; $7f26: $02
	ld [bc], a                                       ; $7f27: $02
	ld h, b                                          ; $7f28: $60
	db $e4                                           ; $7f29: $e4
	nop                                              ; $7f2a: $00
	cpl                                              ; $7f2b: $2f
	ld [bc], a                                       ; $7f2c: $02
	or b                                             ; $7f2d: $b0
	ld b, b                                          ; $7f2e: $40
	dec bc                                           ; $7f2f: $0b
	pop hl                                           ; $7f30: $e1
	ld [bc], a                                       ; $7f31: $02
	ld b, $a4                                        ; $7f32: $06 $a4
	pop hl                                           ; $7f34: $e1
	ld [bc], a                                       ; $7f35: $02
	ld [bc], a                                       ; $7f36: $02
	ld h, b                                          ; $7f37: $60
	db $e4                                           ; $7f38: $e4
	nop                                              ; $7f39: $00
	ld h, c                                          ; $7f3a: $61
	ld [bc], a                                       ; $7f3b: $02
	or b                                             ; $7f3c: $b0
	ld b, c                                          ; $7f3d: $41
	dec bc                                           ; $7f3e: $0b
	pop hl                                           ; $7f3f: $e1
	ld [bc], a                                       ; $7f40: $02
	rlca                                             ; $7f41: $07
	ld h, b                                          ; $7f42: $60
	pop hl                                           ; $7f43: $e1
	ld [bc], a                                       ; $7f44: $02
	ld [bc], a                                       ; $7f45: $02
	ld h, b                                          ; $7f46: $60
	db $e4                                           ; $7f47: $e4
	nop                                              ; $7f48: $00
	sub e                                            ; $7f49: $93
	ld [bc], a                                       ; $7f4a: $02
	or b                                             ; $7f4b: $b0
	ld b, d                                          ; $7f4c: $42
	dec bc                                           ; $7f4d: $0b
	pop hl                                           ; $7f4e: $e1
	ld [bc], a                                       ; $7f4f: $02
	rlca                                             ; $7f50: $07
	ld [hl], a                                       ; $7f51: $77
	pop hl                                           ; $7f52: $e1
	ld [bc], a                                       ; $7f53: $02
	ld [bc], a                                       ; $7f54: $02
	ld h, b                                          ; $7f55: $60
	db $e4                                           ; $7f56: $e4
	nop                                              ; $7f57: $00
	add h                                            ; $7f58: $84
	ld [$063f], sp                                   ; $7f59: $08 $3f $06
	ld a, e                                          ; $7f5c: $7b
	add hl, bc                                       ; $7f5d: $09
	ld de, $02e1                                     ; $7f5e: $11 $e1 $02
	inc bc                                           ; $7f61: $03
	inc de                                           ; $7f62: $13
	ret nz                                           ; $7f63: $c0

	ld bc, $06a0                                     ; $7f64: $01 $a0 $06
	ld b, $7d                                        ; $7f67: $06 $7d
	pop hl                                           ; $7f69: $e1
	ld [bc], a                                       ; $7f6a: $02
	inc b                                            ; $7f6b: $04
	dec sp                                           ; $7f6c: $3b
	db $e4                                           ; $7f6d: $e4
	nop                                              ; $7f6e: $00
	xor [hl]                                         ; $7f6f: $ae
	ld b, $83                                        ; $7f70: $06 $83
	add hl, bc                                       ; $7f72: $09
	ld de, $02e1                                     ; $7f73: $11 $e1 $02
	inc bc                                           ; $7f76: $03
	rla                                              ; $7f77: $17
	ret nz                                           ; $7f78: $c0

	ld bc, $06a0                                     ; $7f79: $01 $a0 $06
	ld b, $85                                        ; $7f7c: $06 $85
	pop hl                                           ; $7f7e: $e1
	ld [bc], a                                       ; $7f7f: $02
	inc b                                            ; $7f80: $04
	ld c, l                                          ; $7f81: $4d
	db $e4                                           ; $7f82: $e4
	nop                                              ; $7f83: $00
	sbc c                                            ; $7f84: $99
	ld b, $8f                                        ; $7f85: $06 $8f
	add hl, bc                                       ; $7f87: $09
	ld de, $02e1                                     ; $7f88: $11 $e1 $02
	inc bc                                           ; $7f8b: $03
	inc de                                           ; $7f8c: $13
	ret nz                                           ; $7f8d: $c0

	ld bc, $06a0                                     ; $7f8e: $01 $a0 $06
	ld b, $91                                        ; $7f91: $06 $91
	pop hl                                           ; $7f93: $e1
	ld [bc], a                                       ; $7f94: $02
	inc b                                            ; $7f95: $04
	ld b, h                                          ; $7f96: $44
	db $e4                                           ; $7f97: $e4
	nop                                              ; $7f98: $00
	add h                                            ; $7f99: $84
	ld [$063f], sp                                   ; $7f9a: $08 $3f $06
	ld a, e                                          ; $7f9d: $7b
	add hl, bc                                       ; $7f9e: $09
	ld de, $02e1                                     ; $7f9f: $11 $e1 $02
	inc bc                                           ; $7fa2: $03
	rra                                              ; $7fa3: $1f
	ret nz                                           ; $7fa4: $c0

	ld bc, $06a0                                     ; $7fa5: $01 $a0 $06
	ld b, $98                                        ; $7fa8: $06 $98
	pop hl                                           ; $7faa: $e1
	ld [bc], a                                       ; $7fab: $02
	inc b                                            ; $7fac: $04
	ld e, a                                          ; $7fad: $5f
	db $e4                                           ; $7fae: $e4
	nop                                              ; $7faf: $00
	ld l, l                                          ; $7fb0: $6d
	ld b, $83                                        ; $7fb1: $06 $83
	add hl, bc                                       ; $7fb3: $09
	ld de, $02e1                                     ; $7fb4: $11 $e1 $02
	inc bc                                           ; $7fb7: $03
	rla                                              ; $7fb8: $17
	ret nz                                           ; $7fb9: $c0

	ld bc, $06a0                                     ; $7fba: $01 $a0 $06
	ld b, $9e                                        ; $7fbd: $06 $9e
	pop hl                                           ; $7fbf: $e1
	ld [bc], a                                       ; $7fc0: $02
	inc b                                            ; $7fc1: $04
	ld c, l                                          ; $7fc2: $4d
	db $e4                                           ; $7fc3: $e4
	nop                                              ; $7fc4: $00
	ld e, b                                          ; $7fc5: $58
	ld b, $8f                                        ; $7fc6: $06 $8f
	add hl, bc                                       ; $7fc8: $09
	ld de, $02e1                                     ; $7fc9: $11 $e1 $02
	inc bc                                           ; $7fcc: $03
	dec de                                           ; $7fcd: $1b
	ret nz                                           ; $7fce: $c0

	ld bc, $06a0                                     ; $7fcf: $01 $a0 $06
	ld b, $a5                                        ; $7fd2: $06 $a5
	pop hl                                           ; $7fd4: $e1
	ld [bc], a                                       ; $7fd5: $02
	inc b                                            ; $7fd6: $04
	ld d, [hl]                                       ; $7fd7: $56
	db $e4                                           ; $7fd8: $e4
	nop                                              ; $7fd9: $00
	ld b, e                                          ; $7fda: $43
	ld [$063f], sp                                   ; $7fdb: $08 $3f $06
	ld a, e                                          ; $7fde: $7b
	add hl, bc                                       ; $7fdf: $09
	ld de, $02e1                                     ; $7fe0: $11 $e1 $02
	inc bc                                           ; $7fe3: $03
	dec de                                           ; $7fe4: $1b
	ret nz                                           ; $7fe5: $c0

	ld bc, $06a0                                     ; $7fe6: $01 $a0 $06
	ld b, $ab                                        ; $7fe9: $06 $ab
	pop hl                                           ; $7feb: $e1
	ld [bc], a                                       ; $7fec: $02
	inc b                                            ; $7fed: $04
	ld d, [hl]                                       ; $7fee: $56
	db $e4                                           ; $7fef: $e4
	nop                                              ; $7ff0: $00
	inc l                                            ; $7ff1: $2c
	ld b, $83                                        ; $7ff2: $06 $83
	add hl, bc                                       ; $7ff4: $09
	ld de, $02e1                                     ; $7ff5: $11 $e1 $02
	inc bc                                           ; $7ff8: $03
	dec de                                           ; $7ff9: $1b
	ret nz                                           ; $7ffa: $c0

	ld bc, $06a0                                     ; $7ffb: $01 $a0 $06
	ld b, $b2                                        ; $7ffe: $06 $b2
