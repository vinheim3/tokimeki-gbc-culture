; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

	dec de                                           ; $4000: $1b
	pop de                                           ; $4001: $d1
	ld [bc], a                                       ; $4002: $02
	ret nc                                           ; $4003: $d0

	pop de                                           ; $4004: $d1
	ld b, $c0                                        ; $4005: $06 $c0
	ld bc, $03a0                                     ; $4007: $01 $a0 $03
	ld [bc], a                                       ; $400a: $02
	cp e                                             ; $400b: $bb
	ld [bc], a                                       ; $400c: $02
	jp nc, $06d3                                     ; $400d: $d2 $d3 $06

	ret nz                                           ; $4010: $c0

	ld bc, $03a0                                     ; $4011: $01 $a0 $03
	ld [bc], a                                       ; $4014: $02

jr_07e_4015:
	ret                                              ; $4015: $c9


	ld bc, $06d4                                     ; $4016: $01 $d4 $06
	ret nz                                           ; $4019: $c0

	ld bc, $03a0                                     ; $401a: $01 $a0 $03
	ld [bc], a                                       ; $401d: $02
	reti                                             ; $401e: $d9


	pop hl                                           ; $401f: $e1
	ld [bc], a                                       ; $4020: $02
	inc bc                                           ; $4021: $03
	ld l, h                                          ; $4022: $6c
	db $e4                                           ; $4023: $e4
	inc bc                                           ; $4024: $03
	ld c, a                                          ; $4025: $4f
	jr z, @+$08                                      ; $4026: $28 $06

	ret nz                                           ; $4028: $c0

	ld bc, $03a0                                     ; $4029: $01 $a0 $03
	ld [bc], a                                       ; $402c: $02
	and $9c                                          ; $402d: $e6 $9c
	ld [bc], a                                       ; $402f: $02
	db $ed                                           ; $4030: $ed
	add hl, bc                                       ; $4031: $09
	jr c, jr_07e_4015                                ; $4032: $38 $e1

	ld [bc], a                                       ; $4034: $02
	inc bc                                           ; $4035: $03
	rrca                                             ; $4036: $0f
	add d                                            ; $4037: $82
	ret nz                                           ; $4038: $c0

	dec de                                           ; $4039: $1b
	pop de                                           ; $403a: $d1
	ld [bc], a                                       ; $403b: $02
	ret nc                                           ; $403c: $d0

	pop de                                           ; $403d: $d1
	ld [de], a                                       ; $403e: $12
	ret nz                                           ; $403f: $c0

	ld bc, $03a0                                     ; $4040: $01 $a0 $03
	ld [bc], a                                       ; $4043: $02
	pop af                                           ; $4044: $f1
	ret nz                                           ; $4045: $c0

	ld bc, $01a0                                     ; $4046: $01 $a0 $01
	ld [bc], a                                       ; $4049: $02
	ei                                               ; $404a: $fb
	ret nz                                           ; $404b: $c0

	ld bc, $03a0                                     ; $404c: $01 $a0 $03
	inc bc                                           ; $404f: $03
	inc bc                                           ; $4050: $03
	ld [bc], a                                       ; $4051: $02
	jp nc, $06d3                                     ; $4052: $d2 $d3 $06

	ret nz                                           ; $4055: $c0

	ld bc, $03a0                                     ; $4056: $01 $a0 $03
	inc bc                                           ; $4059: $03
	ld [$d401], sp                                   ; $405a: $08 $01 $d4
	ld b, $c0                                        ; $405d: $06 $c0
	ld bc, $03a0                                     ; $405f: $01 $a0 $03
	inc bc                                           ; $4062: $03
	db $10                                           ; $4063: $10
	pop hl                                           ; $4064: $e1
	ld [bc], a                                       ; $4065: $02
	inc bc                                           ; $4066: $03
	ld e, d                                          ; $4067: $5a
	db $e4                                           ; $4068: $e4
	inc bc                                           ; $4069: $03
	ld a, [bc]                                       ; $406a: $0a
	inc bc                                           ; $406b: $03
	dec de                                           ; $406c: $1b
	add hl, bc                                       ; $406d: $09
	inc l                                            ; $406e: $2c
	pop hl                                           ; $406f: $e1
	ld [bc], a                                       ; $4070: $02
	inc bc                                           ; $4071: $03
	dec de                                           ; $4072: $1b
	add d                                            ; $4073: $82
	ret nz                                           ; $4074: $c0

	dec de                                           ; $4075: $1b
	pop de                                           ; $4076: $d1
	ld [bc], a                                       ; $4077: $02
	ret nc                                           ; $4078: $d0

	pop de                                           ; $4079: $d1
	ld b, $c0                                        ; $407a: $06 $c0
	ld bc, $03a0                                     ; $407c: $01 $a0 $03
	inc bc                                           ; $407f: $03
	ld [hl+], a                                      ; $4080: $22
	ld [bc], a                                       ; $4081: $02
	jp nc, $06d3                                     ; $4082: $d2 $d3 $06

	ret nz                                           ; $4085: $c0

	ld bc, $03a0                                     ; $4086: $01 $a0 $03
	inc bc                                           ; $4089: $03
	jr nc, @+$03                                     ; $408a: $30 $01

	call nc, $c006                                   ; $408c: $d4 $06 $c0
	ld bc, $03a0                                     ; $408f: $01 $a0 $03
	inc bc                                           ; $4092: $03
	dec sp                                           ; $4093: $3b
	pop hl                                           ; $4094: $e1
	ld [bc], a                                       ; $4095: $02
	inc bc                                           ; $4096: $03
	ld [hl], l                                       ; $4097: $75
	db $e4                                           ; $4098: $e4
	ld [bc], a                                       ; $4099: $02
	jp c, Jump_07e_4603                              ; $409a: $da $03 $46

	add hl, bc                                       ; $409d: $09
	inc l                                            ; $409e: $2c
	pop hl                                           ; $409f: $e1
	ld [bc], a                                       ; $40a0: $02
	inc bc                                           ; $40a1: $03
	rla                                              ; $40a2: $17
	add d                                            ; $40a3: $82
	ret nz                                           ; $40a4: $c0

	dec de                                           ; $40a5: $1b
	pop de                                           ; $40a6: $d1
	ld [bc], a                                       ; $40a7: $02
	ret nc                                           ; $40a8: $d0

	pop de                                           ; $40a9: $d1
	ld b, $c0                                        ; $40aa: $06 $c0
	ld bc, $03a0                                     ; $40ac: $01 $a0 $03
	inc bc                                           ; $40af: $03
	ld c, h                                          ; $40b0: $4c
	ld [bc], a                                       ; $40b1: $02
	jp nc, $06d3                                     ; $40b2: $d2 $d3 $06

	ret nz                                           ; $40b5: $c0

	ld bc, $03a0                                     ; $40b6: $01 $a0 $03
	inc bc                                           ; $40b9: $03
	ld d, [hl]                                       ; $40ba: $56
	ld bc, $06d4                                     ; $40bb: $01 $d4 $06
	ret nz                                           ; $40be: $c0

	ld bc, $03a0                                     ; $40bf: $01 $a0 $03
	inc bc                                           ; $40c2: $03
	ld e, h                                          ; $40c3: $5c
	pop hl                                           ; $40c4: $e1
	ld [bc], a                                       ; $40c5: $02
	inc bc                                           ; $40c6: $03
	ld l, h                                          ; $40c7: $6c
	db $e4                                           ; $40c8: $e4
	ld [bc], a                                       ; $40c9: $02
	xor d                                            ; $40ca: $aa
	add hl, bc                                       ; $40cb: $09
	inc e                                            ; $40cc: $1c
	pop bc                                           ; $40cd: $c1
	ld e, c                                          ; $40ce: $59
	db $e3                                           ; $40cf: $e3
	nop                                              ; $40d0: $00
	and d                                            ; $40d1: $a2
	ret nz                                           ; $40d2: $c0

	add hl, bc                                       ; $40d3: $09
	db $e3                                           ; $40d4: $e3
	nop                                              ; $40d5: $00
	add hl, hl                                       ; $40d6: $29
	and b                                            ; $40d7: $a0
	add b                                            ; $40d8: $80
	and b                                            ; $40d9: $a0
	ld c, $00                                        ; $40da: $0e $00
	inc bc                                           ; $40dc: $03
	db $e4                                           ; $40dd: $e4
	nop                                              ; $40de: $00
	dec bc                                           ; $40df: $0b
	rst $38                                          ; $40e0: $ff
	rlca                                             ; $40e1: $07
	ld b, b                                          ; $40e2: $40
	add b                                            ; $40e3: $80
	and b                                            ; $40e4: $a0
	ld c, $e4                                        ; $40e5: $0e $e4
	nop                                              ; $40e7: $00
	sbc e                                            ; $40e8: $9b
	jr z, jr_07e_40f1                                ; $40e9: $28 $06

	ret nz                                           ; $40eb: $c0

	ld bc, $03a0                                     ; $40ec: $01 $a0 $03
	inc bc                                           ; $40ef: $03
	ld e, a                                          ; $40f0: $5f

jr_07e_40f1:
	sub b                                            ; $40f1: $90
	inc bc                                           ; $40f2: $03
	ld h, l                                          ; $40f3: $65
	add hl, bc                                       ; $40f4: $09
	inc l                                            ; $40f5: $2c
	pop hl                                           ; $40f6: $e1
	ld [bc], a                                       ; $40f7: $02
	inc bc                                           ; $40f8: $03
	rrca                                             ; $40f9: $0f
	add d                                            ; $40fa: $82
	ret nz                                           ; $40fb: $c0

	dec de                                           ; $40fc: $1b
	pop de                                           ; $40fd: $d1
	ld [bc], a                                       ; $40fe: $02
	ret nc                                           ; $40ff: $d0

	pop de                                           ; $4100: $d1
	ld b, $c0                                        ; $4101: $06 $c0
	ld bc, $03a0                                     ; $4103: $01 $a0 $03
	inc bc                                           ; $4106: $03
	ld l, l                                          ; $4107: $6d
	ld [bc], a                                       ; $4108: $02
	jp nc, $06d3                                     ; $4109: $d2 $d3 $06

	ret nz                                           ; $410c: $c0

	ld bc, $03a0                                     ; $410d: $01 $a0 $03
	inc bc                                           ; $4110: $03
	halt                                             ; $4111: $76
	ld bc, $06d4                                     ; $4112: $01 $d4 $06
	ret nz                                           ; $4115: $c0

	ld bc, $03a0                                     ; $4116: $01 $a0 $03
	inc bc                                           ; $4119: $03
	ld a, [hl]                                       ; $411a: $7e
	pop hl                                           ; $411b: $e1
	ld [bc], a                                       ; $411c: $02
	inc bc                                           ; $411d: $03
	ld e, d                                          ; $411e: $5a
	db $e4                                           ; $411f: $e4
	ld [bc], a                                       ; $4120: $02
	ld d, e                                          ; $4121: $53
	inc bc                                           ; $4122: $03
	add l                                            ; $4123: $85
	add hl, bc                                       ; $4124: $09
	inc l                                            ; $4125: $2c
	pop hl                                           ; $4126: $e1
	ld [bc], a                                       ; $4127: $02
	inc bc                                           ; $4128: $03
	dec de                                           ; $4129: $1b
	add d                                            ; $412a: $82
	ret nz                                           ; $412b: $c0

	dec de                                           ; $412c: $1b
	pop de                                           ; $412d: $d1
	ld [bc], a                                       ; $412e: $02
	ret nc                                           ; $412f: $d0

	pop de                                           ; $4130: $d1
	ld b, $c0                                        ; $4131: $06 $c0
	ld bc, $03a0                                     ; $4133: $01 $a0 $03
	inc bc                                           ; $4136: $03
	add a                                            ; $4137: $87
	ld [bc], a                                       ; $4138: $02
	jp nc, $06d3                                     ; $4139: $d2 $d3 $06

	ret nz                                           ; $413c: $c0

	ld bc, $03a0                                     ; $413d: $01 $a0 $03
	inc bc                                           ; $4140: $03
	adc d                                            ; $4141: $8a
	ld bc, $06d4                                     ; $4142: $01 $d4 $06
	ret nz                                           ; $4145: $c0

	ld bc, $03a0                                     ; $4146: $01 $a0 $03
	inc bc                                           ; $4149: $03
	sub c                                            ; $414a: $91
	pop hl                                           ; $414b: $e1
	ld [bc], a                                       ; $414c: $02
	inc bc                                           ; $414d: $03
	ld [hl], l                                       ; $414e: $75
	db $e4                                           ; $414f: $e4
	ld [bc], a                                       ; $4150: $02
	inc hl                                           ; $4151: $23
	inc bc                                           ; $4152: $03
	sbc d                                            ; $4153: $9a
	add hl, bc                                       ; $4154: $09
	inc l                                            ; $4155: $2c
	pop hl                                           ; $4156: $e1
	ld [bc], a                                       ; $4157: $02
	inc bc                                           ; $4158: $03
	inc de                                           ; $4159: $13
	add d                                            ; $415a: $82
	ret nz                                           ; $415b: $c0

	dec de                                           ; $415c: $1b
	pop de                                           ; $415d: $d1
	ld [bc], a                                       ; $415e: $02
	ret nc                                           ; $415f: $d0

	pop de                                           ; $4160: $d1
	ld b, $c0                                        ; $4161: $06 $c0
	ld bc, $03a0                                     ; $4163: $01 $a0 $03
	inc bc                                           ; $4166: $03
	sbc h                                            ; $4167: $9c
	ld [bc], a                                       ; $4168: $02
	jp nc, $06d3                                     ; $4169: $d2 $d3 $06

	ret nz                                           ; $416c: $c0

	ld bc, $03a0                                     ; $416d: $01 $a0 $03
	inc bc                                           ; $4170: $03
	and d                                            ; $4171: $a2
	ld bc, $06d4                                     ; $4172: $01 $d4 $06
	ret nz                                           ; $4175: $c0

	ld bc, $03a0                                     ; $4176: $01 $a0 $03
	inc bc                                           ; $4179: $03
	and a                                            ; $417a: $a7
	pop hl                                           ; $417b: $e1
	ld [bc], a                                       ; $417c: $02
	inc bc                                           ; $417d: $03
	ld h, e                                          ; $417e: $63
	db $e4                                           ; $417f: $e4
	ld bc, $28f3                                     ; $4180: $01 $f3 $28
	ld b, $c0                                        ; $4183: $06 $c0
	ld bc, $03a0                                     ; $4185: $01 $a0 $03
	inc bc                                           ; $4188: $03
	xor l                                            ; $4189: $ad
	sub b                                            ; $418a: $90
	inc bc                                           ; $418b: $03
	cp e                                             ; $418c: $bb
	add hl, bc                                       ; $418d: $09
	inc l                                            ; $418e: $2c
	pop hl                                           ; $418f: $e1
	ld [bc], a                                       ; $4190: $02
	inc bc                                           ; $4191: $03
	inc de                                           ; $4192: $13
	add d                                            ; $4193: $82
	ret nz                                           ; $4194: $c0

	dec de                                           ; $4195: $1b
	pop de                                           ; $4196: $d1
	ld [bc], a                                       ; $4197: $02
	ret nc                                           ; $4198: $d0

	pop de                                           ; $4199: $d1
	ld b, $c0                                        ; $419a: $06 $c0
	ld bc, $03a0                                     ; $419c: $01 $a0 $03
	inc bc                                           ; $419f: $03
	cp l                                             ; $41a0: $bd
	ld [bc], a                                       ; $41a1: $02
	jp nc, $06d3                                     ; $41a2: $d2 $d3 $06

	ret nz                                           ; $41a5: $c0

	ld bc, $03a0                                     ; $41a6: $01 $a0 $03
	inc bc                                           ; $41a9: $03
	jp z, $d401                                      ; $41aa: $ca $01 $d4

	ld b, $c0                                        ; $41ad: $06 $c0
	ld bc, $03a0                                     ; $41af: $01 $a0 $03
	inc bc                                           ; $41b2: $03
	db $d3                                           ; $41b3: $d3
	pop hl                                           ; $41b4: $e1
	ld [bc], a                                       ; $41b5: $02
	inc bc                                           ; $41b6: $03
	ld h, e                                          ; $41b7: $63
	db $e4                                           ; $41b8: $e4
	ld bc, $03ba                                     ; $41b9: $01 $ba $03
	reti                                             ; $41bc: $d9


	add hl, bc                                       ; $41bd: $09
	inc l                                            ; $41be: $2c
	pop hl                                           ; $41bf: $e1
	ld [bc], a                                       ; $41c0: $02
	inc bc                                           ; $41c1: $03
	dec de                                           ; $41c2: $1b
	add d                                            ; $41c3: $82
	ret nz                                           ; $41c4: $c0

	dec de                                           ; $41c5: $1b
	pop de                                           ; $41c6: $d1
	ld [bc], a                                       ; $41c7: $02
	ret nc                                           ; $41c8: $d0

	pop de                                           ; $41c9: $d1
	ld b, $c0                                        ; $41ca: $06 $c0
	ld bc, $03a0                                     ; $41cc: $01 $a0 $03
	inc bc                                           ; $41cf: $03
	db $db                                           ; $41d0: $db
	ld [bc], a                                       ; $41d1: $02
	jp nc, $06d3                                     ; $41d2: $d2 $d3 $06

	ret nz                                           ; $41d5: $c0

	ld bc, $03a0                                     ; $41d6: $01 $a0 $03
	inc bc                                           ; $41d9: $03
	pop hl                                           ; $41da: $e1
	ld bc, $06d4                                     ; $41db: $01 $d4 $06
	ret nz                                           ; $41de: $c0

	ld bc, $03a0                                     ; $41df: $01 $a0 $03
	inc bc                                           ; $41e2: $03
	add sp, -$1f                                     ; $41e3: $e8 $e1
	ld [bc], a                                       ; $41e5: $02
	inc bc                                           ; $41e6: $03
	ld [hl], l                                       ; $41e7: $75
	db $e4                                           ; $41e8: $e4
	ld bc, $038a                                     ; $41e9: $01 $8a $03
	db $ec                                           ; $41ec: $ec
	add hl, bc                                       ; $41ed: $09
	inc l                                            ; $41ee: $2c
	pop hl                                           ; $41ef: $e1
	ld [bc], a                                       ; $41f0: $02
	inc bc                                           ; $41f1: $03
	rla                                              ; $41f2: $17
	add d                                            ; $41f3: $82
	ret nz                                           ; $41f4: $c0

	dec de                                           ; $41f5: $1b
	pop de                                           ; $41f6: $d1
	ld [bc], a                                       ; $41f7: $02
	ret nc                                           ; $41f8: $d0

	pop de                                           ; $41f9: $d1
	ld b, $c0                                        ; $41fa: $06 $c0
	ld bc, $03a0                                     ; $41fc: $01 $a0 $03
	inc bc                                           ; $41ff: $03
	xor $02                                          ; $4200: $ee $02
	jp nc, $06d3                                     ; $4202: $d2 $d3 $06

	ret nz                                           ; $4205: $c0

	ld bc, $03a0                                     ; $4206: $01 $a0 $03
	inc bc                                           ; $4209: $03
	db $fc                                           ; $420a: $fc
	ld bc, $06d4                                     ; $420b: $01 $d4 $06
	ret nz                                           ; $420e: $c0

	ld bc, $03a0                                     ; $420f: $01 $a0 $03
	inc b                                            ; $4212: $04
	ld [$02e1], sp                                   ; $4213: $08 $e1 $02
	inc bc                                           ; $4216: $03
	ld l, h                                          ; $4217: $6c
	db $e4                                           ; $4218: $e4
	ld bc, $095a                                     ; $4219: $01 $5a $09
	inc e                                            ; $421c: $1c
	pop bc                                           ; $421d: $c1
	ld e, c                                          ; $421e: $59
	db $e3                                           ; $421f: $e3
	nop                                              ; $4220: $00
	and e                                            ; $4221: $a3
	ret nz                                           ; $4222: $c0

	add hl, bc                                       ; $4223: $09
	db $e3                                           ; $4224: $e3
	nop                                              ; $4225: $00
	ld l, $a0                                        ; $4226: $2e $a0
	add b                                            ; $4228: $80
	and b                                            ; $4229: $a0
	rrca                                             ; $422a: $0f
	nop                                              ; $422b: $00
	inc bc                                           ; $422c: $03
	db $e4                                           ; $422d: $e4
	nop                                              ; $422e: $00
	dec bc                                           ; $422f: $0b
	rst $38                                          ; $4230: $ff
	rlca                                             ; $4231: $07
	ld b, b                                          ; $4232: $40
	add b                                            ; $4233: $80
	and b                                            ; $4234: $a0
	rrca                                             ; $4235: $0f
	db $e4                                           ; $4236: $e4
	nop                                              ; $4237: $00
	sbc a                                            ; $4238: $9f
	jr z, jr_07e_4245                                ; $4239: $28 $0a

	pop hl                                           ; $423b: $e1
	ld [bc], a                                       ; $423c: $02
	inc bc                                           ; $423d: $03
	dec de                                           ; $423e: $1b
	ret nz                                           ; $423f: $c0

	ld bc, $03a0                                     ; $4240: $01 $a0 $03
	inc b                                            ; $4243: $04
	rrca                                             ; $4244: $0f

jr_07e_4245:
	sub b                                            ; $4245: $90
	inc b                                            ; $4246: $04
	inc d                                            ; $4247: $14
	add hl, bc                                       ; $4248: $09
	inc l                                            ; $4249: $2c
	pop hl                                           ; $424a: $e1
	ld [bc], a                                       ; $424b: $02
	inc bc                                           ; $424c: $03
	rla                                              ; $424d: $17
	add d                                            ; $424e: $82
	ret nz                                           ; $424f: $c0

	dec de                                           ; $4250: $1b

jr_07e_4251:
	pop de                                           ; $4251: $d1
	ld [bc], a                                       ; $4252: $02
	ret nc                                           ; $4253: $d0

	pop de                                           ; $4254: $d1
	ld b, $c0                                        ; $4255: $06 $c0
	ld bc, $03a0                                     ; $4257: $01 $a0 $03
	inc b                                            ; $425a: $04
	ld d, $02                                        ; $425b: $16 $02
	jp nc, $06d3                                     ; $425d: $d2 $d3 $06

	ret nz                                           ; $4260: $c0

	ld bc, $03a0                                     ; $4261: $01 $a0 $03
	inc b                                            ; $4264: $04
	dec de                                           ; $4265: $1b
	ld bc, $06d4                                     ; $4266: $01 $d4 $06
	ret nz                                           ; $4269: $c0

	ld bc, $03a0                                     ; $426a: $01 $a0 $03
	inc b                                            ; $426d: $04
	jr nz, jr_07e_4251                               ; $426e: $20 $e1

	ld [bc], a                                       ; $4270: $02
	inc bc                                           ; $4271: $03
	ld l, h                                          ; $4272: $6c
	db $e4                                           ; $4273: $e4
	nop                                              ; $4274: $00
	rst $38                                          ; $4275: $ff
	inc b                                            ; $4276: $04
	inc hl                                           ; $4277: $23
	add hl, bc                                       ; $4278: $09
	inc l                                            ; $4279: $2c
	pop hl                                           ; $427a: $e1
	ld [bc], a                                       ; $427b: $02
	inc bc                                           ; $427c: $03
	dec de                                           ; $427d: $1b
	add d                                            ; $427e: $82
	ret nz                                           ; $427f: $c0

	dec de                                           ; $4280: $1b
	pop de                                           ; $4281: $d1
	ld [bc], a                                       ; $4282: $02
	ret nc                                           ; $4283: $d0

	pop de                                           ; $4284: $d1
	ld b, $c0                                        ; $4285: $06 $c0
	ld bc, $03a0                                     ; $4287: $01 $a0 $03
	inc b                                            ; $428a: $04
	dec h                                            ; $428b: $25
	ld [bc], a                                       ; $428c: $02
	jp nc, $06d3                                     ; $428d: $d2 $d3 $06

	ret nz                                           ; $4290: $c0

	ld bc, $03a0                                     ; $4291: $01 $a0 $03
	inc b                                            ; $4294: $04
	dec l                                            ; $4295: $2d
	ld bc, $06d4                                     ; $4296: $01 $d4 $06
	ret nz                                           ; $4299: $c0

	ld bc, $03a0                                     ; $429a: $01 $a0 $03
	inc b                                            ; $429d: $04
	ld a, [hl-]                                      ; $429e: $3a
	pop hl                                           ; $429f: $e1
	ld [bc], a                                       ; $42a0: $02
	inc bc                                           ; $42a1: $03
	ld [hl], l                                       ; $42a2: $75
	db $e4                                           ; $42a3: $e4
	nop                                              ; $42a4: $00
	rst GetHLinHL                                          ; $42a5: $cf
	inc b                                            ; $42a6: $04
	ccf                                              ; $42a7: $3f
	add hl, bc                                       ; $42a8: $09
	inc l                                            ; $42a9: $2c
	pop hl                                           ; $42aa: $e1
	ld [bc], a                                       ; $42ab: $02
	inc bc                                           ; $42ac: $03
	dec de                                           ; $42ad: $1b
	add d                                            ; $42ae: $82
	ret nz                                           ; $42af: $c0

	dec de                                           ; $42b0: $1b
	pop de                                           ; $42b1: $d1
	ld [bc], a                                       ; $42b2: $02
	ret nc                                           ; $42b3: $d0

	pop de                                           ; $42b4: $d1
	ld b, $c0                                        ; $42b5: $06 $c0
	ld bc, $03a0                                     ; $42b7: $01 $a0 $03
	inc b                                            ; $42ba: $04
	ld b, c                                          ; $42bb: $41
	ld [bc], a                                       ; $42bc: $02
	jp nc, $06d3                                     ; $42bd: $d2 $d3 $06

	ret nz                                           ; $42c0: $c0

	ld bc, $03a0                                     ; $42c1: $01 $a0 $03
	inc b                                            ; $42c4: $04
	ld c, d                                          ; $42c5: $4a
	ld bc, $06d4                                     ; $42c6: $01 $d4 $06
	ret nz                                           ; $42c9: $c0

	ld bc, $03a0                                     ; $42ca: $01 $a0 $03
	inc b                                            ; $42cd: $04
	ld c, [hl]                                       ; $42ce: $4e
	pop hl                                           ; $42cf: $e1
	ld [bc], a                                       ; $42d0: $02
	inc bc                                           ; $42d1: $03
	ld [hl], l                                       ; $42d2: $75
	db $e4                                           ; $42d3: $e4
	nop                                              ; $42d4: $00
	sbc a                                            ; $42d5: $9f
	jr z, jr_07e_42e2                                ; $42d6: $28 $0a

	pop hl                                           ; $42d8: $e1
	ld [bc], a                                       ; $42d9: $02
	inc bc                                           ; $42da: $03
	dec de                                           ; $42db: $1b
	ret nz                                           ; $42dc: $c0

	ld bc, $03a0                                     ; $42dd: $01 $a0 $03
	inc b                                            ; $42e0: $04
	ld d, l                                          ; $42e1: $55

jr_07e_42e2:
	sub b                                            ; $42e2: $90
	inc b                                            ; $42e3: $04
	ld e, [hl]                                       ; $42e4: $5e
	add hl, bc                                       ; $42e5: $09
	inc l                                            ; $42e6: $2c
	pop hl                                           ; $42e7: $e1
	ld [bc], a                                       ; $42e8: $02
	inc bc                                           ; $42e9: $03
	inc de                                           ; $42ea: $13
	add d                                            ; $42eb: $82
	ret nz                                           ; $42ec: $c0

	dec de                                           ; $42ed: $1b
	pop de                                           ; $42ee: $d1
	ld [bc], a                                       ; $42ef: $02
	ret nc                                           ; $42f0: $d0

	pop de                                           ; $42f1: $d1
	ld b, $c0                                        ; $42f2: $06 $c0
	ld bc, $03a0                                     ; $42f4: $01 $a0 $03
	inc b                                            ; $42f7: $04
	ld h, b                                          ; $42f8: $60
	ld [bc], a                                       ; $42f9: $02
	jp nc, $06d3                                     ; $42fa: $d2 $d3 $06

	ret nz                                           ; $42fd: $c0

	ld bc, $03a0                                     ; $42fe: $01 $a0 $03
	inc b                                            ; $4301: $04

jr_07e_4302:
	ld l, e                                          ; $4302: $6b
	ld bc, $06d4                                     ; $4303: $01 $d4 $06
	ret nz                                           ; $4306: $c0

	ld bc, $03a0                                     ; $4307: $01 $a0 $03
	inc b                                            ; $430a: $04
	ld [hl], l                                       ; $430b: $75
	pop hl                                           ; $430c: $e1
	ld [bc], a                                       ; $430d: $02
	inc bc                                           ; $430e: $03
	ld h, e                                          ; $430f: $63
	db $e4                                           ; $4310: $e4
	nop                                              ; $4311: $00
	ld h, d                                          ; $4312: $62
	inc b                                            ; $4313: $04
	ld a, l                                          ; $4314: $7d
	add hl, bc                                       ; $4315: $09
	inc l                                            ; $4316: $2c
	pop hl                                           ; $4317: $e1
	ld [bc], a                                       ; $4318: $02
	inc bc                                           ; $4319: $03
	rra                                              ; $431a: $1f
	add d                                            ; $431b: $82
	ret nz                                           ; $431c: $c0

	dec de                                           ; $431d: $1b
	pop de                                           ; $431e: $d1
	ld [bc], a                                       ; $431f: $02
	ret nc                                           ; $4320: $d0

	pop de                                           ; $4321: $d1
	ld b, $c0                                        ; $4322: $06 $c0
	ld bc, $03a0                                     ; $4324: $01 $a0 $03
	inc b                                            ; $4327: $04
	add l                                            ; $4328: $85
	ld [bc], a                                       ; $4329: $02
	jp nc, $06d3                                     ; $432a: $d2 $d3 $06

	ret nz                                           ; $432d: $c0

	ld bc, $03a0                                     ; $432e: $01 $a0 $03
	inc b                                            ; $4331: $04
	adc [hl]                                         ; $4332: $8e
	ld bc, $06d4                                     ; $4333: $01 $d4 $06
	ret nz                                           ; $4336: $c0

	ld bc, $03a0                                     ; $4337: $01 $a0 $03
	inc b                                            ; $433a: $04
	sub a                                            ; $433b: $97
	pop hl                                           ; $433c: $e1
	ld [bc], a                                       ; $433d: $02
	inc bc                                           ; $433e: $03
	ld a, [hl]                                       ; $433f: $7e
	db $e4                                           ; $4340: $e4
	nop                                              ; $4341: $00
	ld [hl-], a                                      ; $4342: $32
	inc b                                            ; $4343: $04
	and d                                            ; $4344: $a2
	add hl, bc                                       ; $4345: $09
	inc l                                            ; $4346: $2c
	pop hl                                           ; $4347: $e1
	ld [bc], a                                       ; $4348: $02
	inc bc                                           ; $4349: $03
	dec de                                           ; $434a: $1b
	add d                                            ; $434b: $82
	ret nz                                           ; $434c: $c0

	dec de                                           ; $434d: $1b
	pop de                                           ; $434e: $d1
	ld [bc], a                                       ; $434f: $02
	ret nc                                           ; $4350: $d0

	pop de                                           ; $4351: $d1
	ld b, $c0                                        ; $4352: $06 $c0
	ld bc, $03a0                                     ; $4354: $01 $a0 $03
	inc b                                            ; $4357: $04
	xor b                                            ; $4358: $a8
	ld [bc], a                                       ; $4359: $02
	jp nc, $06d3                                     ; $435a: $d2 $d3 $06

	ret nz                                           ; $435d: $c0

	ld bc, $03a0                                     ; $435e: $01 $a0 $03
	inc b                                            ; $4361: $04
	or c                                             ; $4362: $b1
	ld bc, $06d4                                     ; $4363: $01 $d4 $06
	ret nz                                           ; $4366: $c0

	ld bc, $03a0                                     ; $4367: $01 $a0 $03
	inc b                                            ; $436a: $04
	cp c                                             ; $436b: $b9
	pop hl                                           ; $436c: $e1
	ld [bc], a                                       ; $436d: $02
	inc bc                                           ; $436e: $03
	ld [hl], l                                       ; $436f: $75
	db $e4                                           ; $4370: $e4
	nop                                              ; $4371: $00
	ld [bc], a                                       ; $4372: $02
	add hl, bc                                       ; $4373: $09
	dec l                                            ; $4374: $2d
	pop bc                                           ; $4375: $c1
	ld e, c                                          ; $4376: $59
	db $e3                                           ; $4377: $e3
	nop                                              ; $4378: $00
	sbc a                                            ; $4379: $9f
	ret nz                                           ; $437a: $c0

	add hl, bc                                       ; $437b: $09
	db $e3                                           ; $437c: $e3
	nop                                              ; $437d: $00
	jr c, jr_07e_4302                                ; $437e: $38 $82

	adc e                                            ; $4380: $8b
	and b                                            ; $4381: $a0
	ld bc, $b002                                     ; $4382: $01 $02 $b0
	add d                                            ; $4385: $82
	dec b                                            ; $4386: $05
	ret nz                                           ; $4387: $c0

	ld d, [hl]                                       ; $4388: $56
	pop de                                           ; $4389: $d1
	jp nc, $02d0                                     ; $438a: $d2 $d0 $02

	or b                                             ; $438d: $b0
	add e                                            ; $438e: $83
	dec b                                            ; $438f: $05
	ret nz                                           ; $4390: $c0

	ld d, [hl]                                       ; $4391: $56
	pop de                                           ; $4392: $d1
	jp nc, $02d1                                     ; $4393: $d2 $d1 $02

	or b                                             ; $4396: $b0
	add h                                            ; $4397: $84
	dec b                                            ; $4398: $05
	ret nz                                           ; $4399: $c0

	ld d, [hl]                                       ; $439a: $56
	pop de                                           ; $439b: $d1
	jp nc, $e5d2                                     ; $439c: $d2 $d2 $e5

	rla                                              ; $439f: $17
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	add hl, bc                                       ; $43a2: $09
	inc d                                            ; $43a3: $14
	ret nc                                           ; $43a4: $d0

	add e                                            ; $43a5: $83
	ld bc, $d0de                                     ; $43a6: $01 $de $d0
	ret nz                                           ; $43a9: $c0

	ld bc, $03a0                                     ; $43aa: $01 $a0 $03
	inc b                                            ; $43ad: $04
	jp nz, $01c0                                     ; $43ae: $c2 $c0 $01

	and b                                            ; $43b1: $a0
	ld bc, $c804                                     ; $43b2: $01 $04 $c8
	db $e4                                           ; $43b5: $e4
	nop                                              ; $43b6: $00
	ld [bc], a                                       ; $43b7: $02
	add hl, bc                                       ; $43b8: $09
	inc [hl]                                         ; $43b9: $34
	pop bc                                           ; $43ba: $c1
	ld e, c                                          ; $43bb: $59
	db $e3                                           ; $43bc: $e3
	nop                                              ; $43bd: $00
	xor l                                            ; $43be: $ad
	ld h, b                                          ; $43bf: $60
	add b                                            ; $43c0: $80
	ld [bc], a                                       ; $43c1: $02
	ld b, c                                          ; $43c2: $41
	rla                                              ; $43c3: $17
	and c                                            ; $43c4: $a1
	add c                                            ; $43c5: $81
	and b                                            ; $43c6: $a0
	stop                                             ; $43c7: $10 $00
	inc bc                                           ; $43c9: $03
	db $e4                                           ; $43ca: $e4
	ld bc, $0155                                     ; $43cb: $01 $55 $01
	inc bc                                           ; $43ce: $03
	db $e4                                           ; $43cf: $e4
	nop                                              ; $43d0: $00
	ld e, $ff                                        ; $43d1: $1e $ff
	rlca                                             ; $43d3: $07
	ld b, b                                          ; $43d4: $40
	add c                                            ; $43d5: $81
	and b                                            ; $43d6: $a0
	db $10                                           ; $43d7: $10
	db $e4                                           ; $43d8: $e4
	nop                                              ; $43d9: $00
	xor [hl]                                         ; $43da: $ae
	ld [de], a                                       ; $43db: $12
	and b                                            ; $43dc: $a0
	add b                                            ; $43dd: $80
	and b                                            ; $43de: $a0
	ld [de], a                                       ; $43df: $12
	nop                                              ; $43e0: $00
	inc bc                                           ; $43e1: $03
	db $e4                                           ; $43e2: $e4
	nop                                              ; $43e3: $00
	dec bc                                           ; $43e4: $0b
	rst $38                                          ; $43e5: $ff
	rlca                                             ; $43e6: $07
	ld b, b                                          ; $43e7: $40
	add b                                            ; $43e8: $80
	and b                                            ; $43e9: $a0
	ld [de], a                                       ; $43ea: $12
	db $e4                                           ; $43eb: $e4
	nop                                              ; $43ec: $00
	sbc e                                            ; $43ed: $9b
	jr z, @+$08                                      ; $43ee: $28 $06

	ret nz                                           ; $43f0: $c0

	ld bc, $03a0                                     ; $43f1: $01 $a0 $03
	inc b                                            ; $43f4: $04
	call $0490                                       ; $43f5: $cd $90 $04
	call nc, $2c09                                   ; $43f8: $d4 $09 $2c
	pop hl                                           ; $43fb: $e1
	ld [bc], a                                       ; $43fc: $02
	inc bc                                           ; $43fd: $03
	inc de                                           ; $43fe: $13
	add d                                            ; $43ff: $82
	ret nz                                           ; $4400: $c0

	dec de                                           ; $4401: $1b
	pop de                                           ; $4402: $d1
	ld [bc], a                                       ; $4403: $02
	ret nc                                           ; $4404: $d0

	pop de                                           ; $4405: $d1
	ld b, $c0                                        ; $4406: $06 $c0
	ld bc, $03a0                                     ; $4408: $01 $a0 $03
	inc b                                            ; $440b: $04
	sub $02                                          ; $440c: $d6 $02
	jp nc, $06d3                                     ; $440e: $d2 $d3 $06

	ret nz                                           ; $4411: $c0

	ld bc, $03a0                                     ; $4412: $01 $a0 $03
	inc b                                            ; $4415: $04
	ldh [rSB], a                                     ; $4416: $e0 $01
	call nc, $c006                                   ; $4418: $d4 $06 $c0
	ld bc, $03a0                                     ; $441b: $01 $a0 $03
	inc b                                            ; $441e: $04
	db $e4                                           ; $441f: $e4
	pop hl                                           ; $4420: $e1
	ld [bc], a                                       ; $4421: $02
	inc bc                                           ; $4422: $03
	ld e, d                                          ; $4423: $5a
	db $e4                                           ; $4424: $e4
	ld bc, $0494                                     ; $4425: $01 $94 $04
	add sp, $09                                      ; $4428: $e8 $09
	inc l                                            ; $442a: $2c
	pop hl                                           ; $442b: $e1
	ld [bc], a                                       ; $442c: $02
	inc bc                                           ; $442d: $03
	rra                                              ; $442e: $1f
	add d                                            ; $442f: $82
	ret nz                                           ; $4430: $c0

	dec de                                           ; $4431: $1b
	pop de                                           ; $4432: $d1
	ld [bc], a                                       ; $4433: $02
	ret nc                                           ; $4434: $d0

	pop de                                           ; $4435: $d1
	ld b, $c0                                        ; $4436: $06 $c0
	ld bc, $03a0                                     ; $4438: $01 $a0 $03
	inc b                                            ; $443b: $04
	ld [$d202], a                                    ; $443c: $ea $02 $d2
	db $d3                                           ; $443f: $d3
	ld b, $c0                                        ; $4440: $06 $c0
	ld bc, $03a0                                     ; $4442: $01 $a0 $03
	inc b                                            ; $4445: $04
	db $ed                                           ; $4446: $ed
	ld bc, $06d4                                     ; $4447: $01 $d4 $06
	ret nz                                           ; $444a: $c0

	ld bc, $03a0                                     ; $444b: $01 $a0 $03
	inc b                                            ; $444e: $04
	db $f4                                           ; $444f: $f4
	pop hl                                           ; $4450: $e1
	ld [bc], a                                       ; $4451: $02
	inc bc                                           ; $4452: $03
	ld a, [hl]                                       ; $4453: $7e
	db $e4                                           ; $4454: $e4
	ld bc, $0464                                     ; $4455: $01 $64 $04
	db $fc                                           ; $4458: $fc
	add hl, bc                                       ; $4459: $09
	inc l                                            ; $445a: $2c
	pop hl                                           ; $445b: $e1
	ld [bc], a                                       ; $445c: $02
	inc bc                                           ; $445d: $03
	rla                                              ; $445e: $17
	add d                                            ; $445f: $82
	ret nz                                           ; $4460: $c0

	dec de                                           ; $4461: $1b
	pop de                                           ; $4462: $d1
	ld [bc], a                                       ; $4463: $02
	ret nc                                           ; $4464: $d0

	pop de                                           ; $4465: $d1
	ld b, $c0                                        ; $4466: $06 $c0
	ld bc, $03a0                                     ; $4468: $01 $a0 $03
	inc b                                            ; $446b: $04
	cp $02                                           ; $446c: $fe $02
	jp nc, $06d3                                     ; $446e: $d2 $d3 $06

	ret nz                                           ; $4471: $c0

	ld bc, $03a0                                     ; $4472: $01 $a0 $03
	dec b                                            ; $4475: $05
	inc b                                            ; $4476: $04
	ld bc, $06d4                                     ; $4477: $01 $d4 $06
	ret nz                                           ; $447a: $c0

	ld bc, $03a0                                     ; $447b: $01 $a0 $03
	dec b                                            ; $447e: $05
	dec c                                            ; $447f: $0d
	pop hl                                           ; $4480: $e1
	ld [bc], a                                       ; $4481: $02
	inc bc                                           ; $4482: $03
	ld l, h                                          ; $4483: $6c
	db $e4                                           ; $4484: $e4
	ld bc, $2834                                     ; $4485: $01 $34 $28
	ld b, $c0                                        ; $4488: $06 $c0
	ld bc, $03a0                                     ; $448a: $01 $a0 $03
	dec b                                            ; $448d: $05
	ld [de], a                                       ; $448e: $12
	sub b                                            ; $448f: $90
	dec b                                            ; $4490: $05
	dec de                                           ; $4491: $1b
	add hl, bc                                       ; $4492: $09
	inc l                                            ; $4493: $2c
	pop hl                                           ; $4494: $e1
	ld [bc], a                                       ; $4495: $02
	inc bc                                           ; $4496: $03
	inc de                                           ; $4497: $13
	add d                                            ; $4498: $82
	ret nz                                           ; $4499: $c0

	dec de                                           ; $449a: $1b
	pop de                                           ; $449b: $d1
	ld [bc], a                                       ; $449c: $02
	ret nc                                           ; $449d: $d0

	pop de                                           ; $449e: $d1
	ld b, $c0                                        ; $449f: $06 $c0
	ld bc, $03a0                                     ; $44a1: $01 $a0 $03
	dec b                                            ; $44a4: $05
	inc hl                                           ; $44a5: $23
	ld [bc], a                                       ; $44a6: $02
	jp nc, $06d3                                     ; $44a7: $d2 $d3 $06

	ret nz                                           ; $44aa: $c0

	ld bc, $03a0                                     ; $44ab: $01 $a0 $03
	dec b                                            ; $44ae: $05
	add hl, hl                                       ; $44af: $29
	ld bc, $06d4                                     ; $44b0: $01 $d4 $06
	ret nz                                           ; $44b3: $c0

	ld bc, $03a0                                     ; $44b4: $01 $a0 $03
	dec b                                            ; $44b7: $05
	cpl                                              ; $44b8: $2f
	pop hl                                           ; $44b9: $e1
	ld [bc], a                                       ; $44ba: $02
	inc bc                                           ; $44bb: $03
	ld h, e                                          ; $44bc: $63
	db $e4                                           ; $44bd: $e4
	nop                                              ; $44be: $00
	ei                                               ; $44bf: $fb
	dec b                                            ; $44c0: $05
	jr c, jr_07e_44cc                                ; $44c1: $38 $09

	inc l                                            ; $44c3: $2c
	pop hl                                           ; $44c4: $e1
	ld [bc], a                                       ; $44c5: $02
	inc bc                                           ; $44c6: $03
	rra                                              ; $44c7: $1f
	add d                                            ; $44c8: $82
	ret nz                                           ; $44c9: $c0

	dec de                                           ; $44ca: $1b
	pop de                                           ; $44cb: $d1

jr_07e_44cc:
	ld [bc], a                                       ; $44cc: $02
	ret nc                                           ; $44cd: $d0

	pop de                                           ; $44ce: $d1
	ld b, $c0                                        ; $44cf: $06 $c0
	ld bc, $03a0                                     ; $44d1: $01 $a0 $03
	dec b                                            ; $44d4: $05
	ld a, [hl-]                                      ; $44d5: $3a
	ld [bc], a                                       ; $44d6: $02
	jp nc, $06d3                                     ; $44d7: $d2 $d3 $06

	ret nz                                           ; $44da: $c0

	ld bc, $03a0                                     ; $44db: $01 $a0 $03
	dec b                                            ; $44de: $05
	ld b, l                                          ; $44df: $45
	ld bc, $06d4                                     ; $44e0: $01 $d4 $06
	ret nz                                           ; $44e3: $c0

	ld bc, $03a0                                     ; $44e4: $01 $a0 $03
	dec b                                            ; $44e7: $05
	ld c, l                                          ; $44e8: $4d
	pop hl                                           ; $44e9: $e1
	ld [bc], a                                       ; $44ea: $02
	inc bc                                           ; $44eb: $03
	ld a, [hl]                                       ; $44ec: $7e
	db $e4                                           ; $44ed: $e4
	nop                                              ; $44ee: $00
	rlc l                                            ; $44ef: $cb $05
	ld d, e                                          ; $44f1: $53
	add hl, bc                                       ; $44f2: $09
	inc l                                            ; $44f3: $2c
	pop hl                                           ; $44f4: $e1
	ld [bc], a                                       ; $44f5: $02
	inc bc                                           ; $44f6: $03
	rla                                              ; $44f7: $17
	add d                                            ; $44f8: $82
	ret nz                                           ; $44f9: $c0

	dec de                                           ; $44fa: $1b
	pop de                                           ; $44fb: $d1
	ld [bc], a                                       ; $44fc: $02
	ret nc                                           ; $44fd: $d0

	pop de                                           ; $44fe: $d1
	ld b, $c0                                        ; $44ff: $06 $c0
	ld bc, $03a0                                     ; $4501: $01 $a0 $03
	dec b                                            ; $4504: $05
	ld d, [hl]                                       ; $4505: $56
	ld [bc], a                                       ; $4506: $02
	jp nc, $06d3                                     ; $4507: $d2 $d3 $06

	ret nz                                           ; $450a: $c0

	ld bc, $03a0                                     ; $450b: $01 $a0 $03
	dec b                                            ; $450e: $05
	ld h, d                                          ; $450f: $62
	ld bc, $06d4                                     ; $4510: $01 $d4 $06
	ret nz                                           ; $4513: $c0

	ld bc, $03a0                                     ; $4514: $01 $a0 $03
	dec b                                            ; $4517: $05
	ld l, l                                          ; $4518: $6d
	pop hl                                           ; $4519: $e1
	ld [bc], a                                       ; $451a: $02
	inc bc                                           ; $451b: $03
	ld l, h                                          ; $451c: $6c
	db $e4                                           ; $451d: $e4
	nop                                              ; $451e: $00
	sbc e                                            ; $451f: $9b
	jr z, jr_07e_4528                                ; $4520: $28 $06

	ret nz                                           ; $4522: $c0

	ld bc, $03a0                                     ; $4523: $01 $a0 $03
	dec b                                            ; $4526: $05
	ld [hl], l                                       ; $4527: $75

jr_07e_4528:
	sub b                                            ; $4528: $90
	dec b                                            ; $4529: $05
	ld a, a                                          ; $452a: $7f
	add hl, bc                                       ; $452b: $09
	inc l                                            ; $452c: $2c
	pop hl                                           ; $452d: $e1
	ld [bc], a                                       ; $452e: $02
	inc bc                                           ; $452f: $03
	inc de                                           ; $4530: $13
	add d                                            ; $4531: $82
	ret nz                                           ; $4532: $c0

	dec de                                           ; $4533: $1b
	pop de                                           ; $4534: $d1
	ld [bc], a                                       ; $4535: $02
	ret nc                                           ; $4536: $d0

	pop de                                           ; $4537: $d1
	ld b, $c0                                        ; $4538: $06 $c0
	ld bc, $03a0                                     ; $453a: $01 $a0 $03
	dec b                                            ; $453d: $05
	add c                                            ; $453e: $81
	ld [bc], a                                       ; $453f: $02
	jp nc, $06d3                                     ; $4540: $d2 $d3 $06

	ret nz                                           ; $4543: $c0

	ld bc, $03a0                                     ; $4544: $01 $a0 $03
	dec b                                            ; $4547: $05
	adc c                                            ; $4548: $89
	ld bc, $06d4                                     ; $4549: $01 $d4 $06
	ret nz                                           ; $454c: $c0

	ld bc, $03a0                                     ; $454d: $01 $a0 $03
	dec b                                            ; $4550: $05
	sub c                                            ; $4551: $91
	pop hl                                           ; $4552: $e1
	ld [bc], a                                       ; $4553: $02
	inc bc                                           ; $4554: $03
	ld h, e                                          ; $4555: $63
	db $e4                                           ; $4556: $e4
	nop                                              ; $4557: $00
	ld h, d                                          ; $4558: $62
	dec b                                            ; $4559: $05
	sub [hl]                                         ; $455a: $96
	add hl, bc                                       ; $455b: $09
	inc l                                            ; $455c: $2c
	pop hl                                           ; $455d: $e1
	ld [bc], a                                       ; $455e: $02
	inc bc                                           ; $455f: $03
	rra                                              ; $4560: $1f
	add d                                            ; $4561: $82
	ret nz                                           ; $4562: $c0

	dec de                                           ; $4563: $1b
	pop de                                           ; $4564: $d1
	ld [bc], a                                       ; $4565: $02
	ret nc                                           ; $4566: $d0

	pop de                                           ; $4567: $d1
	ld b, $c0                                        ; $4568: $06 $c0
	ld bc, $03a0                                     ; $456a: $01 $a0 $03
	dec b                                            ; $456d: $05
	sbc b                                            ; $456e: $98
	ld [bc], a                                       ; $456f: $02
	jp nc, $06d3                                     ; $4570: $d2 $d3 $06

	ret nz                                           ; $4573: $c0

	ld bc, $03a0                                     ; $4574: $01 $a0 $03
	dec b                                            ; $4577: $05
	sbc [hl]                                         ; $4578: $9e
	ld bc, $06d4                                     ; $4579: $01 $d4 $06
	ret nz                                           ; $457c: $c0

	ld bc, $03a0                                     ; $457d: $01 $a0 $03
	dec b                                            ; $4580: $05
	and l                                            ; $4581: $a5
	pop hl                                           ; $4582: $e1
	ld [bc], a                                       ; $4583: $02
	inc bc                                           ; $4584: $03
	ld a, [hl]                                       ; $4585: $7e
	db $e4                                           ; $4586: $e4
	nop                                              ; $4587: $00
	ld [hl-], a                                      ; $4588: $32
	dec b                                            ; $4589: $05
	or b                                             ; $458a: $b0
	add hl, bc                                       ; $458b: $09
	inc l                                            ; $458c: $2c
	pop hl                                           ; $458d: $e1
	ld [bc], a                                       ; $458e: $02
	inc bc                                           ; $458f: $03
	dec de                                           ; $4590: $1b
	add d                                            ; $4591: $82
	ret nz                                           ; $4592: $c0

	dec de                                           ; $4593: $1b
	pop de                                           ; $4594: $d1
	ld [bc], a                                       ; $4595: $02
	ret nc                                           ; $4596: $d0

	pop de                                           ; $4597: $d1
	ld b, $c0                                        ; $4598: $06 $c0
	ld bc, $03a0                                     ; $459a: $01 $a0 $03
	dec b                                            ; $459d: $05
	or d                                             ; $459e: $b2
	ld [bc], a                                       ; $459f: $02
	jp nc, $06d3                                     ; $45a0: $d2 $d3 $06

	ret nz                                           ; $45a3: $c0

	ld bc, $03a0                                     ; $45a4: $01 $a0 $03
	dec b                                            ; $45a7: $05
	cp e                                             ; $45a8: $bb
	ld bc, $06d4                                     ; $45a9: $01 $d4 $06
	ret nz                                           ; $45ac: $c0

	ld bc, $03a0                                     ; $45ad: $01 $a0 $03
	dec b                                            ; $45b0: $05
	cp a                                             ; $45b1: $bf
	pop hl                                           ; $45b2: $e1
	ld [bc], a                                       ; $45b3: $02
	inc bc                                           ; $45b4: $03

jr_07e_45b5:
	ld [hl], l                                       ; $45b5: $75
	db $e4                                           ; $45b6: $e4
	nop                                              ; $45b7: $00
	ld [bc], a                                       ; $45b8: $02
	add hl, bc                                       ; $45b9: $09
	ld c, $c1                                        ; $45ba: $0e $c1
	ld e, c                                          ; $45bc: $59
	db $e3                                           ; $45bd: $e3
	nop                                              ; $45be: $00
	xor h                                            ; $45bf: $ac
	ret nz                                           ; $45c0: $c0

	ld d, [hl]                                       ; $45c1: $56
	pop de                                           ; $45c2: $d1
	db $d3                                           ; $45c3: $d3
	ret nc                                           ; $45c4: $d0

	push hl                                          ; $45c5: $e5
	rla                                              ; $45c6: $17
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	add hl, bc                                       ; $45c9: $09
	inc d                                            ; $45ca: $14
	ret nc                                           ; $45cb: $d0

	add e                                            ; $45cc: $83
	ld bc, $d0de                                     ; $45cd: $01 $de $d0
	ret nz                                           ; $45d0: $c0

	ld bc, $03a0                                     ; $45d1: $01 $a0 $03
	inc b                                            ; $45d4: $04
	jp nz, $01c0                                     ; $45d5: $c2 $c0 $01

	and b                                            ; $45d8: $a0
	ld bc, $c105                                     ; $45d9: $01 $05 $c1
	db $e4                                           ; $45dc: $e4
	nop                                              ; $45dd: $00
	ld [bc], a                                       ; $45de: $02
	add hl, bc                                       ; $45df: $09
	ld b, b                                          ; $45e0: $40
	pop bc                                           ; $45e1: $c1
	ld e, c                                          ; $45e2: $59
	db $e3                                           ; $45e3: $e3
	nop                                              ; $45e4: $00
	xor e                                            ; $45e5: $ab
	add c                                            ; $45e6: $81
	ret nz                                           ; $45e7: $c0

	ld h, l                                          ; $45e8: $65
	ld [bc], a                                       ; $45e9: $02
	rst SubAFromHL                                          ; $45ea: $d7
	ret c                                            ; $45eb: $d8

	inc bc                                           ; $45ec: $03
	db $e4                                           ; $45ed: $e4
	nop                                              ; $45ee: $00
	inc sp                                           ; $45ef: $33
	nop                                              ; $45f0: $00
	cpl                                              ; $45f1: $2f
	ld h, b                                          ; $45f2: $60
	add b                                            ; $45f3: $80
	ld [bc], a                                       ; $45f4: $02
	ld d, c                                          ; $45f5: $51
	rla                                              ; $45f6: $17
	and c                                            ; $45f7: $a1
	add c                                            ; $45f8: $81
	and b                                            ; $45f9: $a0
	inc de                                           ; $45fa: $13
	nop                                              ; $45fb: $00
	inc bc                                           ; $45fc: $03
	db $e4                                           ; $45fd: $e4
	ld bc, $01e6                                     ; $45fe: $01 $e6 $01
	inc bc                                           ; $4601: $03
	db $e4                                           ; $4602: $e4

Jump_07e_4603:
	nop                                              ; $4603: $00
	xor a                                            ; $4604: $af
	rst $38                                          ; $4605: $ff
	rlca                                             ; $4606: $07
	ld b, b                                          ; $4607: $40
	add c                                            ; $4608: $81
	and b                                            ; $4609: $a0
	inc de                                           ; $460a: $13
	db $e4                                           ; $460b: $e4
	ld bc, $123f                                     ; $460c: $01 $3f $12
	and b                                            ; $460f: $a0
	add b                                            ; $4610: $80
	and b                                            ; $4611: $a0
	dec d                                            ; $4612: $15
	nop                                              ; $4613: $00
	inc bc                                           ; $4614: $03
	db $e4                                           ; $4615: $e4
	nop                                              ; $4616: $00
	sbc h                                            ; $4617: $9c
	rst $38                                          ; $4618: $ff
	rlca                                             ; $4619: $07
	ld b, b                                          ; $461a: $40
	add b                                            ; $461b: $80
	and b                                            ; $461c: $a0
	dec d                                            ; $461d: $15
	db $e4                                           ; $461e: $e4

jr_07e_461f:
	ld bc, $282c                                     ; $461f: $01 $2c $28
	ld a, [bc]                                       ; $4622: $0a
	pop hl                                           ; $4623: $e1
	ld [bc], a                                       ; $4624: $02
	inc bc                                           ; $4625: $03
	rla                                              ; $4626: $17
	ret nz                                           ; $4627: $c0

	ld bc, $03a0                                     ; $4628: $01 $a0 $03
	dec b                                            ; $462b: $05
	add $84                                          ; $462c: $c6 $84
	dec b                                            ; $462e: $05
	ret nc                                           ; $462f: $d0

	add hl, bc                                       ; $4630: $09
	jr z, jr_07e_45b5                                ; $4631: $28 $82

	ret nz                                           ; $4633: $c0

	dec de                                           ; $4634: $1b
	pop de                                           ; $4635: $d1
	ld [bc], a                                       ; $4636: $02
	ret nc                                           ; $4637: $d0

	pop de                                           ; $4638: $d1
	ld b, $c0                                        ; $4639: $06 $c0
	ld bc, $03a0                                     ; $463b: $01 $a0 $03
	dec b                                            ; $463e: $05
	reti                                             ; $463f: $d9


	ld [bc], a                                       ; $4640: $02
	jp nc, $06d3                                     ; $4641: $d2 $d3 $06

	ret nz                                           ; $4644: $c0

	ld bc, $03a0                                     ; $4645: $01 $a0 $03
	dec b                                            ; $4648: $05
	rst SubAFromDE                                          ; $4649: $df
	ld bc, $06d4                                     ; $464a: $01 $d4 $06
	ret nz                                           ; $464d: $c0

	ld bc, $03a0                                     ; $464e: $01 $a0 $03
	inc b                                            ; $4651: $04
	ld d, $e1                                        ; $4652: $16 $e1
	ld [bc], a                                       ; $4654: $02
	inc bc                                           ; $4655: $03
	ld h, e                                          ; $4656: $63
	db $e4                                           ; $4657: $e4
	ld [bc], a                                       ; $4658: $02
	dec h                                            ; $4659: $25
	dec b                                            ; $465a: $05
	add sp, $09                                      ; $465b: $e8 $09
	jr z, jr_07e_461f                                ; $465d: $28 $c0

	ld bc, $03a0                                     ; $465f: $01 $a0 $03
	dec b                                            ; $4662: $05
	ldh a, [$c1]                                     ; $4663: $f0 $c1
	ld e, e                                          ; $4665: $5b
	ret nz                                           ; $4666: $c0

	ld bc, $01a0                                     ; $4667: $01 $a0 $01
	dec b                                            ; $466a: $05
	push af                                          ; $466b: $f5
	ret nz                                           ; $466c: $c0

	set 0, b                                         ; $466d: $cb $c0
	ld bc, $01a0                                     ; $466f: $01 $a0 $01
	dec b                                            ; $4672: $05
	db $fc                                           ; $4673: $fc
	pop hl                                           ; $4674: $e1
	ld [bc], a                                       ; $4675: $02
	inc bc                                           ; $4676: $03
	ld a, [hl]                                       ; $4677: $7e
	pop bc                                           ; $4678: $c1
	ld e, h                                          ; $4679: $5c
	ret nz                                           ; $467a: $c0

	ld de, $00e3                                     ; $467b: $11 $e3 $00
	xor d                                            ; $467e: $aa
	pop hl                                           ; $467f: $e1
	ld [bc], a                                       ; $4680: $02
	ld bc, $e428                                     ; $4681: $01 $28 $e4
	ld [bc], a                                       ; $4684: $02
	inc bc                                           ; $4685: $03
	ld b, $05                                        ; $4686: $06 $05
	add hl, bc                                       ; $4688: $09
	jr z, @-$7c                                      ; $4689: $28 $82

	ret nz                                           ; $468b: $c0

	dec de                                           ; $468c: $1b
	pop de                                           ; $468d: $d1
	ld [bc], a                                       ; $468e: $02
	ret nc                                           ; $468f: $d0

	pop de                                           ; $4690: $d1
	ld b, $c0                                        ; $4691: $06 $c0
	ld bc, $03a0                                     ; $4693: $01 $a0 $03
	ld b, $09                                        ; $4696: $06 $09
	ld [bc], a                                       ; $4698: $02
	jp nc, $06d3                                     ; $4699: $d2 $d3 $06

	ret nz                                           ; $469c: $c0

	ld bc, $03a0                                     ; $469d: $01 $a0 $03
	ld b, $14                                        ; $46a0: $06 $14
	ld bc, $06d4                                     ; $46a2: $01 $d4 $06
	ret nz                                           ; $46a5: $c0

	ld bc, $03a0                                     ; $46a6: $01 $a0 $03
	ld b, $1b                                        ; $46a9: $06 $1b
	pop hl                                           ; $46ab: $e1
	ld [bc], a                                       ; $46ac: $02
	inc bc                                           ; $46ad: $03
	ld l, h                                          ; $46ae: $6c
	db $e4                                           ; $46af: $e4
	ld bc, $28cd                                     ; $46b0: $01 $cd $28
	ld b, $c0                                        ; $46b3: $06 $c0
	ld bc, $03a0                                     ; $46b5: $01 $a0 $03
	ld b, $22                                        ; $46b8: $06 $22
	sub b                                            ; $46ba: $90
	ld b, $2c                                        ; $46bb: $06 $2c
	add hl, bc                                       ; $46bd: $09
	inc l                                            ; $46be: $2c
	pop hl                                           ; $46bf: $e1
	ld [bc], a                                       ; $46c0: $02
	inc bc                                           ; $46c1: $03
	inc de                                           ; $46c2: $13
	add d                                            ; $46c3: $82
	ret nz                                           ; $46c4: $c0

	dec de                                           ; $46c5: $1b
	pop de                                           ; $46c6: $d1
	ld [bc], a                                       ; $46c7: $02
	ret nc                                           ; $46c8: $d0

	pop de                                           ; $46c9: $d1
	ld b, $c0                                        ; $46ca: $06 $c0
	ld bc, $03a0                                     ; $46cc: $01 $a0 $03
	ld b, $34                                        ; $46cf: $06 $34
	ld [bc], a                                       ; $46d1: $02
	jp nc, $06d3                                     ; $46d2: $d2 $d3 $06

	ret nz                                           ; $46d5: $c0

	ld bc, $03a0                                     ; $46d6: $01 $a0 $03
	ld b, $3c                                        ; $46d9: $06 $3c
	ld bc, $06d4                                     ; $46db: $01 $d4 $06
	ret nz                                           ; $46de: $c0

	ld bc, $03a0                                     ; $46df: $01 $a0 $03
	ld b, $42                                        ; $46e2: $06 $42
	pop hl                                           ; $46e4: $e1
	ld [bc], a                                       ; $46e5: $02
	inc bc                                           ; $46e6: $03
	ld e, d                                          ; $46e7: $5a
	db $e4                                           ; $46e8: $e4
	ld bc, $0694                                     ; $46e9: $01 $94 $06
	ld b, a                                          ; $46ec: $47
	add hl, bc                                       ; $46ed: $09
	inc l                                            ; $46ee: $2c
	pop hl                                           ; $46ef: $e1
	ld [bc], a                                       ; $46f0: $02
	inc bc                                           ; $46f1: $03
	rra                                              ; $46f2: $1f
	add d                                            ; $46f3: $82
	ret nz                                           ; $46f4: $c0

	dec de                                           ; $46f5: $1b
	pop de                                           ; $46f6: $d1
	ld [bc], a                                       ; $46f7: $02
	ret nc                                           ; $46f8: $d0

	pop de                                           ; $46f9: $d1
	ld b, $c0                                        ; $46fa: $06 $c0
	ld bc, $03a0                                     ; $46fc: $01 $a0 $03
	ld b, $4b                                        ; $46ff: $06 $4b
	ld [bc], a                                       ; $4701: $02
	jp nc, $06d3                                     ; $4702: $d2 $d3 $06

	ret nz                                           ; $4705: $c0

	ld bc, $03a0                                     ; $4706: $01 $a0 $03
	ld b, $52                                        ; $4709: $06 $52
	ld bc, $06d4                                     ; $470b: $01 $d4 $06
	ret nz                                           ; $470e: $c0

	ld bc, $03a0                                     ; $470f: $01 $a0 $03
	ld b, $5a                                        ; $4712: $06 $5a
	pop hl                                           ; $4714: $e1
	ld [bc], a                                       ; $4715: $02
	inc bc                                           ; $4716: $03
	ld a, [hl]                                       ; $4717: $7e
	db $e4                                           ; $4718: $e4
	ld bc, $0664                                     ; $4719: $01 $64 $06
	ld h, b                                          ; $471c: $60
	add hl, bc                                       ; $471d: $09
	inc l                                            ; $471e: $2c
	pop hl                                           ; $471f: $e1
	ld [bc], a                                       ; $4720: $02
	inc bc                                           ; $4721: $03
	inc de                                           ; $4722: $13
	add d                                            ; $4723: $82
	ret nz                                           ; $4724: $c0

	dec de                                           ; $4725: $1b
	pop de                                           ; $4726: $d1
	ld [bc], a                                       ; $4727: $02
	ret nc                                           ; $4728: $d0

	pop de                                           ; $4729: $d1
	ld b, $c0                                        ; $472a: $06 $c0
	ld bc, $03a0                                     ; $472c: $01 $a0 $03
	ld b, $68                                        ; $472f: $06 $68
	ld [bc], a                                       ; $4731: $02
	jp nc, $06d3                                     ; $4732: $d2 $d3 $06

	ret nz                                           ; $4735: $c0

	ld bc, $03a0                                     ; $4736: $01 $a0 $03
	ld b, $74                                        ; $4739: $06 $74
	ld bc, $06d4                                     ; $473b: $01 $d4 $06
	ret nz                                           ; $473e: $c0

	ld bc, $03a0                                     ; $473f: $01 $a0 $03
	ld b, $7d                                        ; $4742: $06 $7d
	pop hl                                           ; $4744: $e1
	ld [bc], a                                       ; $4745: $02
	inc bc                                           ; $4746: $03
	ld h, e                                          ; $4747: $63
	db $e4                                           ; $4748: $e4
	ld bc, $2834                                     ; $4749: $01 $34 $28
	ld b, $c0                                        ; $474c: $06 $c0
	ld bc, $03a0                                     ; $474e: $01 $a0 $03
	ld b, $88                                        ; $4751: $06 $88
	sub b                                            ; $4753: $90
	ld b, $92                                        ; $4754: $06 $92
	add hl, bc                                       ; $4756: $09
	inc l                                            ; $4757: $2c
	pop hl                                           ; $4758: $e1
	ld [bc], a                                       ; $4759: $02
	inc bc                                           ; $475a: $03
	inc de                                           ; $475b: $13
	add d                                            ; $475c: $82
	ret nz                                           ; $475d: $c0

	dec de                                           ; $475e: $1b
	pop de                                           ; $475f: $d1
	ld [bc], a                                       ; $4760: $02
	ret nc                                           ; $4761: $d0

	pop de                                           ; $4762: $d1
	ld b, $c0                                        ; $4763: $06 $c0
	ld bc, $03a0                                     ; $4765: $01 $a0 $03
	ld b, $98                                        ; $4768: $06 $98
	ld [bc], a                                       ; $476a: $02
	jp nc, $06d3                                     ; $476b: $d2 $d3 $06

	ret nz                                           ; $476e: $c0

	ld bc, $03a0                                     ; $476f: $01 $a0 $03
	ld b, $a1                                        ; $4772: $06 $a1
	ld bc, $06d4                                     ; $4774: $01 $d4 $06
	ret nz                                           ; $4777: $c0

	ld bc, $03a0                                     ; $4778: $01 $a0 $03
	ld b, $a8                                        ; $477b: $06 $a8
	pop hl                                           ; $477d: $e1
	ld [bc], a                                       ; $477e: $02
	inc bc                                           ; $477f: $03
	ld h, e                                          ; $4780: $63
	db $e4                                           ; $4781: $e4
	nop                                              ; $4782: $00
	ei                                               ; $4783: $fb
	ld b, $b0                                        ; $4784: $06 $b0
	add hl, bc                                       ; $4786: $09
	inc l                                            ; $4787: $2c
	pop hl                                           ; $4788: $e1
	ld [bc], a                                       ; $4789: $02
	inc bc                                           ; $478a: $03
	dec de                                           ; $478b: $1b
	add d                                            ; $478c: $82
	ret nz                                           ; $478d: $c0

	dec de                                           ; $478e: $1b
	pop de                                           ; $478f: $d1
	ld [bc], a                                       ; $4790: $02
	ret nc                                           ; $4791: $d0

	pop de                                           ; $4792: $d1
	ld b, $c0                                        ; $4793: $06 $c0
	ld bc, $03a0                                     ; $4795: $01 $a0 $03
	ld b, $b9                                        ; $4798: $06 $b9
	ld [bc], a                                       ; $479a: $02
	jp nc, $06d3                                     ; $479b: $d2 $d3 $06

	ret nz                                           ; $479e: $c0

	ld bc, $03a0                                     ; $479f: $01 $a0 $03
	ld b, $c4                                        ; $47a2: $06 $c4
	ld bc, $06d4                                     ; $47a4: $01 $d4 $06
	ret nz                                           ; $47a7: $c0

	ld bc, $03a0                                     ; $47a8: $01 $a0 $03
	ld b, $cc                                        ; $47ab: $06 $cc
	pop hl                                           ; $47ad: $e1
	ld [bc], a                                       ; $47ae: $02
	inc bc                                           ; $47af: $03
	ld [hl], l                                       ; $47b0: $75
	db $e4                                           ; $47b1: $e4
	nop                                              ; $47b2: $00
	rlc [hl]                                         ; $47b3: $cb $06
	ret nc                                           ; $47b5: $d0

	add hl, bc                                       ; $47b6: $09
	inc l                                            ; $47b7: $2c
	pop hl                                           ; $47b8: $e1
	ld [bc], a                                       ; $47b9: $02
	inc bc                                           ; $47ba: $03
	rla                                              ; $47bb: $17
	add d                                            ; $47bc: $82
	ret nz                                           ; $47bd: $c0

	dec de                                           ; $47be: $1b
	pop de                                           ; $47bf: $d1
	ld [bc], a                                       ; $47c0: $02
	ret nc                                           ; $47c1: $d0

	pop de                                           ; $47c2: $d1
	ld b, $c0                                        ; $47c3: $06 $c0
	ld bc, $03a0                                     ; $47c5: $01 $a0 $03
	ld b, $d7                                        ; $47c8: $06 $d7
	ld [bc], a                                       ; $47ca: $02
	jp nc, $06d3                                     ; $47cb: $d2 $d3 $06

	ret nz                                           ; $47ce: $c0

	ld bc, $03a0                                     ; $47cf: $01 $a0 $03
	ld b, $e0                                        ; $47d2: $06 $e0
	ld bc, $06d4                                     ; $47d4: $01 $d4 $06
	ret nz                                           ; $47d7: $c0

	ld bc, $03a0                                     ; $47d8: $01 $a0 $03
	ld b, $e8                                        ; $47db: $06 $e8
	pop hl                                           ; $47dd: $e1
	ld [bc], a                                       ; $47de: $02
	inc bc                                           ; $47df: $03
	ld l, h                                          ; $47e0: $6c
	db $e4                                           ; $47e1: $e4
	nop                                              ; $47e2: $00
	sbc e                                            ; $47e3: $9b
	jr z, jr_07e_47ec                                ; $47e4: $28 $06

	ret nz                                           ; $47e6: $c0

	ld bc, $03a0                                     ; $47e7: $01 $a0 $03
	ld b, $ee                                        ; $47ea: $06 $ee

jr_07e_47ec:
	sub b                                            ; $47ec: $90
	ld b, $f8                                        ; $47ed: $06 $f8
	add hl, bc                                       ; $47ef: $09
	inc l                                            ; $47f0: $2c
	pop hl                                           ; $47f1: $e1
	ld [bc], a                                       ; $47f2: $02
	inc bc                                           ; $47f3: $03
	inc de                                           ; $47f4: $13
	add d                                            ; $47f5: $82
	ret nz                                           ; $47f6: $c0

	dec de                                           ; $47f7: $1b
	pop de                                           ; $47f8: $d1
	ld [bc], a                                       ; $47f9: $02
	ret nc                                           ; $47fa: $d0

	pop de                                           ; $47fb: $d1
	ld b, $c0                                        ; $47fc: $06 $c0
	ld bc, $03a0                                     ; $47fe: $01 $a0 $03
	ld b, $fa                                        ; $4801: $06 $fa
	ld [bc], a                                       ; $4803: $02
	jp nc, $06d3                                     ; $4804: $d2 $d3 $06

	ret nz                                           ; $4807: $c0

	ld bc, $03a0                                     ; $4808: $01 $a0 $03
	dec b                                            ; $480b: $05
	add hl, hl                                       ; $480c: $29
	ld bc, $06d4                                     ; $480d: $01 $d4 $06
	ret nz                                           ; $4810: $c0

	ld bc, $03a0                                     ; $4811: $01 $a0 $03
	rlca                                             ; $4814: $07
	ld bc, $02e1                                     ; $4815: $01 $e1 $02
	inc bc                                           ; $4818: $03
	ld e, d                                          ; $4819: $5a
	db $e4                                           ; $481a: $e4
	nop                                              ; $481b: $00
	ld h, d                                          ; $481c: $62
	rlca                                             ; $481d: $07
	rlca                                             ; $481e: $07
	add hl, bc                                       ; $481f: $09
	inc l                                            ; $4820: $2c
	pop hl                                           ; $4821: $e1
	ld [bc], a                                       ; $4822: $02
	inc bc                                           ; $4823: $03
	rra                                              ; $4824: $1f
	add d                                            ; $4825: $82
	ret nz                                           ; $4826: $c0

	dec de                                           ; $4827: $1b

jr_07e_4828:
	pop de                                           ; $4828: $d1
	ld [bc], a                                       ; $4829: $02
	ret nc                                           ; $482a: $d0

	pop de                                           ; $482b: $d1
	ld b, $c0                                        ; $482c: $06 $c0
	ld bc, $03a0                                     ; $482e: $01 $a0 $03
	rlca                                             ; $4831: $07
	add hl, bc                                       ; $4832: $09
	ld [bc], a                                       ; $4833: $02
	jp nc, $06d3                                     ; $4834: $d2 $d3 $06

	ret nz                                           ; $4837: $c0

	ld bc, $03a0                                     ; $4838: $01 $a0 $03
	rlca                                             ; $483b: $07
	db $10                                           ; $483c: $10
	ld bc, $06d4                                     ; $483d: $01 $d4 $06
	ret nz                                           ; $4840: $c0

	ld bc, $03a0                                     ; $4841: $01 $a0 $03
	rlca                                             ; $4844: $07
	jr jr_07e_4828                                   ; $4845: $18 $e1

	ld [bc], a                                       ; $4847: $02
	inc bc                                           ; $4848: $03
	ld a, [hl]                                       ; $4849: $7e
	db $e4                                           ; $484a: $e4
	nop                                              ; $484b: $00
	ld [hl-], a                                      ; $484c: $32
	rlca                                             ; $484d: $07
	ld e, $09                                        ; $484e: $1e $09
	inc l                                            ; $4850: $2c
	pop hl                                           ; $4851: $e1
	ld [bc], a                                       ; $4852: $02
	inc bc                                           ; $4853: $03
	rla                                              ; $4854: $17

jr_07e_4855:
	add d                                            ; $4855: $82
	ret nz                                           ; $4856: $c0

	dec de                                           ; $4857: $1b
	pop de                                           ; $4858: $d1
	ld [bc], a                                       ; $4859: $02
	ret nc                                           ; $485a: $d0

	pop de                                           ; $485b: $d1
	ld b, $c0                                        ; $485c: $06 $c0
	ld bc, $03a0                                     ; $485e: $01 $a0 $03
	dec b                                            ; $4861: $05
	or d                                             ; $4862: $b2
	ld [bc], a                                       ; $4863: $02
	jp nc, $06d3                                     ; $4864: $d2 $d3 $06

	ret nz                                           ; $4867: $c0

	ld bc, $03a0                                     ; $4868: $01 $a0 $03
	dec b                                            ; $486b: $05
	cp e                                             ; $486c: $bb
	ld bc, $06d4                                     ; $486d: $01 $d4 $06
	ret nz                                           ; $4870: $c0

	ld bc, $03a0                                     ; $4871: $01 $a0 $03
	dec b                                            ; $4874: $05
	cp a                                             ; $4875: $bf
	pop hl                                           ; $4876: $e1
	ld [bc], a                                       ; $4877: $02
	inc bc                                           ; $4878: $03
	ld l, h                                          ; $4879: $6c
	db $e4                                           ; $487a: $e4
	nop                                              ; $487b: $00
	ld [bc], a                                       ; $487c: $02
	add hl, bc                                       ; $487d: $09
	ld [$59c1], sp                                   ; $487e: $08 $c1 $59
	db $e3                                           ; $4881: $e3
	nop                                              ; $4882: $00
	xor d                                            ; $4883: $aa
	db $e4                                           ; $4884: $e4
	nop                                              ; $4885: $00
	ld [bc], a                                       ; $4886: $02
	add hl, bc                                       ; $4887: $09
	add hl, bc                                       ; $4888: $09
	ret nz                                           ; $4889: $c0

	ld d, [hl]                                       ; $488a: $56
	pop de                                           ; $488b: $d1
	call nc, $e5d0                                   ; $488c: $d4 $d0 $e5
	rla                                              ; $488f: $17
	nop                                              ; $4890: $00
	nop                                              ; $4891: $00
	add hl, bc                                       ; $4892: $09
	jr z, @-$2e                                      ; $4893: $28 $d0

	add e                                            ; $4895: $83
	ld bc, $d0de                                     ; $4896: $01 $de $d0
	ret nz                                           ; $4899: $c0

	ld bc, $03a0                                     ; $489a: $01 $a0 $03
	inc b                                            ; $489d: $04
	jp nz, $01c0                                     ; $489e: $c2 $c0 $01

	and b                                            ; $48a1: $a0
	ld bc, $c804                                     ; $48a2: $01 $04 $c8
	pop bc                                           ; $48a5: $c1
	ld e, c                                          ; $48a6: $59
	db $e3                                           ; $48a7: $e3
	nop                                              ; $48a8: $00
	or h                                             ; $48a9: $b4
	and b                                            ; $48aa: $a0
	add b                                            ; $48ab: $80
	and b                                            ; $48ac: $a0
	ld d, $00                                        ; $48ad: $16 $00
	inc bc                                           ; $48af: $03
	db $e4                                           ; $48b0: $e4
	nop                                              ; $48b1: $00
	dec bc                                           ; $48b2: $0b
	rst $38                                          ; $48b3: $ff
	rlca                                             ; $48b4: $07
	ld b, b                                          ; $48b5: $40
	add b                                            ; $48b6: $80
	and b                                            ; $48b7: $a0
	ld d, $e4                                        ; $48b8: $16 $e4
	nop                                              ; $48ba: $00
	sbc e                                            ; $48bb: $9b
	jr z, @+$08                                      ; $48bc: $28 $06

	ret nz                                           ; $48be: $c0

	ld bc, $03a0                                     ; $48bf: $01 $a0 $03
	rlca                                             ; $48c2: $07
	jr nz, jr_07e_4855                               ; $48c3: $20 $90

	rlca                                             ; $48c5: $07
	daa                                              ; $48c6: $27
	add hl, bc                                       ; $48c7: $09
	inc l                                            ; $48c8: $2c
	pop hl                                           ; $48c9: $e1
	ld [bc], a                                       ; $48ca: $02
	inc bc                                           ; $48cb: $03
	inc de                                           ; $48cc: $13
	add d                                            ; $48cd: $82
	ret nz                                           ; $48ce: $c0

	dec de                                           ; $48cf: $1b
	pop de                                           ; $48d0: $d1
	ld [bc], a                                       ; $48d1: $02
	ret nc                                           ; $48d2: $d0

	pop de                                           ; $48d3: $d1
	ld b, $c0                                        ; $48d4: $06 $c0
	ld bc, $03a0                                     ; $48d6: $01 $a0 $03
	rlca                                             ; $48d9: $07
	add hl, hl                                       ; $48da: $29
	ld [bc], a                                       ; $48db: $02
	jp nc, $06d3                                     ; $48dc: $d2 $d3 $06

	ret nz                                           ; $48df: $c0

	ld bc, $03a0                                     ; $48e0: $01 $a0 $03
	rlca                                             ; $48e3: $07
	dec [hl]                                         ; $48e4: $35
	ld bc, $06d4                                     ; $48e5: $01 $d4 $06
	ret nz                                           ; $48e8: $c0

	ld bc, $03a0                                     ; $48e9: $01 $a0 $03
	dec b                                            ; $48ec: $05
	sub c                                            ; $48ed: $91
	pop hl                                           ; $48ee: $e1
	ld [bc], a                                       ; $48ef: $02
	inc bc                                           ; $48f0: $03
	ld e, d                                          ; $48f1: $5a
	db $e4                                           ; $48f2: $e4
	ld bc, $0703                                     ; $48f3: $01 $03 $07
	dec a                                            ; $48f6: $3d
	add hl, bc                                       ; $48f7: $09
	inc l                                            ; $48f8: $2c
	pop hl                                           ; $48f9: $e1
	ld [bc], a                                       ; $48fa: $02
	inc bc                                           ; $48fb: $03
	rra                                              ; $48fc: $1f
	add d                                            ; $48fd: $82
	ret nz                                           ; $48fe: $c0

	dec de                                           ; $48ff: $1b
	pop de                                           ; $4900: $d1
	ld [bc], a                                       ; $4901: $02
	ret nc                                           ; $4902: $d0

	pop de                                           ; $4903: $d1
	ld b, $c0                                        ; $4904: $06 $c0
	ld bc, $03a0                                     ; $4906: $01 $a0 $03
	rlca                                             ; $4909: $07
	ccf                                              ; $490a: $3f
	ld [bc], a                                       ; $490b: $02
	jp nc, $06d3                                     ; $490c: $d2 $d3 $06

	ret nz                                           ; $490f: $c0

	ld bc, $03a0                                     ; $4910: $01 $a0 $03
	rlca                                             ; $4913: $07
	ld c, b                                          ; $4914: $48
	ld bc, $06d4                                     ; $4915: $01 $d4 $06
	ret nz                                           ; $4918: $c0

	ld bc, $03a0                                     ; $4919: $01 $a0 $03
	rlca                                             ; $491c: $07
	ld d, c                                          ; $491d: $51
	pop hl                                           ; $491e: $e1
	ld [bc], a                                       ; $491f: $02
	inc bc                                           ; $4920: $03
	ld a, [hl]                                       ; $4921: $7e
	db $e4                                           ; $4922: $e4
	nop                                              ; $4923: $00
	db $d3                                           ; $4924: $d3
	rlca                                             ; $4925: $07
	ld d, [hl]                                       ; $4926: $56
	add hl, bc                                       ; $4927: $09
	inc l                                            ; $4928: $2c
	pop hl                                           ; $4929: $e1
	ld [bc], a                                       ; $492a: $02
	inc bc                                           ; $492b: $03
	rla                                              ; $492c: $17
	add d                                            ; $492d: $82
	ret nz                                           ; $492e: $c0

	dec de                                           ; $492f: $1b
	pop de                                           ; $4930: $d1
	ld [bc], a                                       ; $4931: $02
	ret nc                                           ; $4932: $d0

	pop de                                           ; $4933: $d1
	ld b, $c0                                        ; $4934: $06 $c0
	ld bc, $03a0                                     ; $4936: $01 $a0 $03
	rlca                                             ; $4939: $07
	ld e, b                                          ; $493a: $58
	ld [bc], a                                       ; $493b: $02
	jp nc, $06d3                                     ; $493c: $d2 $d3 $06

	ret nz                                           ; $493f: $c0

	ld bc, $03a0                                     ; $4940: $01 $a0 $03
	rlca                                             ; $4943: $07
	ld h, b                                          ; $4944: $60
	ld bc, $06d4                                     ; $4945: $01 $d4 $06
	ret nz                                           ; $4948: $c0

	ld bc, $03a0                                     ; $4949: $01 $a0 $03
	rlca                                             ; $494c: $07
	ld h, [hl]                                       ; $494d: $66
	pop hl                                           ; $494e: $e1
	ld [bc], a                                       ; $494f: $02
	inc bc                                           ; $4950: $03
	ld l, h                                          ; $4951: $6c
	db $e4                                           ; $4952: $e4
	nop                                              ; $4953: $00
	and e                                            ; $4954: $a3
	jr z, jr_07e_495d                                ; $4955: $28 $06

	ret nz                                           ; $4957: $c0

	ld bc, $03a0                                     ; $4958: $01 $a0 $03
	rlca                                             ; $495b: $07
	ld l, e                                          ; $495c: $6b

jr_07e_495d:
	sbc b                                            ; $495d: $98
	rlca                                             ; $495e: $07
	ld a, b                                          ; $495f: $78
	add hl, bc                                       ; $4960: $09
	inc l                                            ; $4961: $2c
	pop hl                                           ; $4962: $e1
	ld [bc], a                                       ; $4963: $02
	inc bc                                           ; $4964: $03
	inc de                                           ; $4965: $13
	add d                                            ; $4966: $82
	ret nz                                           ; $4967: $c0

	dec de                                           ; $4968: $1b
	pop de                                           ; $4969: $d1
	ld [bc], a                                       ; $496a: $02
	ret nc                                           ; $496b: $d0

	pop de                                           ; $496c: $d1
	ld b, $c0                                        ; $496d: $06 $c0
	ld bc, $03a0                                     ; $496f: $01 $a0 $03
	rlca                                             ; $4972: $07
	ld a, d                                          ; $4973: $7a
	ld [bc], a                                       ; $4974: $02
	jp nc, $06d3                                     ; $4975: $d2 $d3 $06

	ret nz                                           ; $4978: $c0

	ld bc, $03a0                                     ; $4979: $01 $a0 $03
	dec b                                            ; $497c: $05
	dec c                                            ; $497d: $0d
	ld bc, $06d4                                     ; $497e: $01 $d4 $06
	ret nz                                           ; $4981: $c0

	ld bc, $03a0                                     ; $4982: $01 $a0 $03
	rlca                                             ; $4985: $07
	add d                                            ; $4986: $82
	pop hl                                           ; $4987: $e1
	ld [bc], a                                       ; $4988: $02
	inc bc                                           ; $4989: $03
	ld h, e                                          ; $498a: $63
	db $e4                                           ; $498b: $e4
	nop                                              ; $498c: $00
	ld l, d                                          ; $498d: $6a
	rlca                                             ; $498e: $07
	add a                                            ; $498f: $87
	add hl, bc                                       ; $4990: $09
	inc [hl]                                         ; $4991: $34
	add d                                            ; $4992: $82
	ret nz                                           ; $4993: $c0

	dec de                                           ; $4994: $1b
	pop de                                           ; $4995: $d1
	ld [bc], a                                       ; $4996: $02
	ret nc                                           ; $4997: $d0

	pop de                                           ; $4998: $d1
	ld a, [bc]                                       ; $4999: $0a
	pop hl                                           ; $499a: $e1
	ld [bc], a                                       ; $499b: $02
	inc bc                                           ; $499c: $03
	dec de                                           ; $499d: $1b
	ret nz                                           ; $499e: $c0

	ld bc, $03a0                                     ; $499f: $01 $a0 $03
	rlca                                             ; $49a2: $07
	adc c                                            ; $49a3: $89
	ld [bc], a                                       ; $49a4: $02
	jp nc, $0ad3                                     ; $49a5: $d2 $d3 $0a

	pop hl                                           ; $49a8: $e1
	ld [bc], a                                       ; $49a9: $02
	inc bc                                           ; $49aa: $03
	rra                                              ; $49ab: $1f
	ret nz                                           ; $49ac: $c0

	ld bc, $03a0                                     ; $49ad: $01 $a0 $03
	rlca                                             ; $49b0: $07
	sub h                                            ; $49b1: $94
	ld bc, $0ad4                                     ; $49b2: $01 $d4 $0a
	pop hl                                           ; $49b5: $e1
	ld [bc], a                                       ; $49b6: $02
	inc bc                                           ; $49b7: $03
	rra                                              ; $49b8: $1f
	ret nz                                           ; $49b9: $c0

	ld bc, $03a0                                     ; $49ba: $01 $a0 $03
	rlca                                             ; $49bd: $07
	sbc h                                            ; $49be: $9c
	pop hl                                           ; $49bf: $e1
	ld [bc], a                                       ; $49c0: $02
	inc bc                                           ; $49c1: $03
	ld a, [hl]                                       ; $49c2: $7e
	db $e4                                           ; $49c3: $e4
	nop                                              ; $49c4: $00
	ld [hl-], a                                      ; $49c5: $32
	rlca                                             ; $49c6: $07
	and e                                            ; $49c7: $a3
	add hl, bc                                       ; $49c8: $09
	inc l                                            ; $49c9: $2c
	pop hl                                           ; $49ca: $e1
	ld [bc], a                                       ; $49cb: $02
	inc bc                                           ; $49cc: $03
	dec de                                           ; $49cd: $1b
	add d                                            ; $49ce: $82
	ret nz                                           ; $49cf: $c0

	dec de                                           ; $49d0: $1b
	pop de                                           ; $49d1: $d1
	ld [bc], a                                       ; $49d2: $02
	ret nc                                           ; $49d3: $d0

	pop de                                           ; $49d4: $d1
	ld b, $c0                                        ; $49d5: $06 $c0
	ld bc, $03a0                                     ; $49d7: $01 $a0 $03
	rlca                                             ; $49da: $07
	and l                                            ; $49db: $a5
	ld [bc], a                                       ; $49dc: $02
	jp nc, $06d3                                     ; $49dd: $d2 $d3 $06

	ret nz                                           ; $49e0: $c0

	ld bc, $03a0                                     ; $49e1: $01 $a0 $03
	rlca                                             ; $49e4: $07
	or b                                             ; $49e5: $b0
	ld bc, $06d4                                     ; $49e6: $01 $d4 $06
	ret nz                                           ; $49e9: $c0

	ld bc, $03a0                                     ; $49ea: $01 $a0 $03
	rlca                                             ; $49ed: $07
	cp e                                             ; $49ee: $bb
	pop hl                                           ; $49ef: $e1
	ld [bc], a                                       ; $49f0: $02
	inc bc                                           ; $49f1: $03
	ld [hl], l                                       ; $49f2: $75
	db $e4                                           ; $49f3: $e4
	nop                                              ; $49f4: $00
	ld [bc], a                                       ; $49f5: $02
	add hl, bc                                       ; $49f6: $09
	ld c, $c1                                        ; $49f7: $0e $c1
	ld e, c                                          ; $49f9: $59
	db $e3                                           ; $49fa: $e3
	nop                                              ; $49fb: $00
	or e                                             ; $49fc: $b3
	ret nz                                           ; $49fd: $c0

	ld d, [hl]                                       ; $49fe: $56
	pop de                                           ; $49ff: $d1
	push de                                          ; $4a00: $d5
	ret nc                                           ; $4a01: $d0

	push hl                                          ; $4a02: $e5
	rla                                              ; $4a03: $17
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	add hl, bc                                       ; $4a06: $09
	inc d                                            ; $4a07: $14
	ret nc                                           ; $4a08: $d0

	add e                                            ; $4a09: $83
	ld bc, $d0de                                     ; $4a0a: $01 $de $d0
	ret nz                                           ; $4a0d: $c0

	ld bc, $03a0                                     ; $4a0e: $01 $a0 $03
	rlca                                             ; $4a11: $07
	rst JumpTable                                          ; $4a12: $c7
	ret nz                                           ; $4a13: $c0

	ld bc, $01a0                                     ; $4a14: $01 $a0 $01
	inc b                                            ; $4a17: $04
	ret z                                            ; $4a18: $c8

	db $e4                                           ; $4a19: $e4
	nop                                              ; $4a1a: $00
	ld [bc], a                                       ; $4a1b: $02
	add hl, bc                                       ; $4a1c: $09
	ld hl, $59c1                                     ; $4a1d: $21 $c1 $59
	db $e3                                           ; $4a20: $e3
	nop                                              ; $4a21: $00
	or [hl]                                          ; $4a22: $b6
	ret nz                                           ; $4a23: $c0

	ld bc, $03a0                                     ; $4a24: $01 $a0 $03
	rlca                                             ; $4a27: $07
	rst GetHLinHL                                          ; $4a28: $cf
	pop hl                                           ; $4a29: $e1
	ld [bc], a                                       ; $4a2a: $02
	rlca                                             ; $4a2b: $07
	or [hl]                                          ; $4a2c: $b6
	and b                                            ; $4a2d: $a0
	add b                                            ; $4a2e: $80
	and b                                            ; $4a2f: $a0
	rla                                              ; $4a30: $17
	nop                                              ; $4a31: $00
	inc bc                                           ; $4a32: $03
	db $e4                                           ; $4a33: $e4
	nop                                              ; $4a34: $00
	dec bc                                           ; $4a35: $0b
	rst $38                                          ; $4a36: $ff
	rlca                                             ; $4a37: $07
	ld b, b                                          ; $4a38: $40
	add b                                            ; $4a39: $80
	and b                                            ; $4a3a: $a0
	rla                                              ; $4a3b: $17
	db $e4                                           ; $4a3c: $e4
	nop                                              ; $4a3d: $00
	sbc e                                            ; $4a3e: $9b
	jr z, jr_07e_4a47                                ; $4a3f: $28 $06

	ret nz                                           ; $4a41: $c0

	ld bc, $03a0                                     ; $4a42: $01 $a0 $03
	rlca                                             ; $4a45: $07
	rst SubAFromHL                                          ; $4a46: $d7

jr_07e_4a47:
	sub b                                            ; $4a47: $90
	rlca                                             ; $4a48: $07
	rst SubAFromDE                                          ; $4a49: $df
	add hl, bc                                       ; $4a4a: $09
	inc l                                            ; $4a4b: $2c
	pop hl                                           ; $4a4c: $e1
	ld [bc], a                                       ; $4a4d: $02
	inc bc                                           ; $4a4e: $03
	inc de                                           ; $4a4f: $13
	add d                                            ; $4a50: $82
	ret nz                                           ; $4a51: $c0

	dec de                                           ; $4a52: $1b
	pop de                                           ; $4a53: $d1
	ld [bc], a                                       ; $4a54: $02
	ret nc                                           ; $4a55: $d0

	pop de                                           ; $4a56: $d1
	ld b, $c0                                        ; $4a57: $06 $c0
	ld bc, $03a0                                     ; $4a59: $01 $a0 $03
	rlca                                             ; $4a5c: $07
	pop hl                                           ; $4a5d: $e1
	ld [bc], a                                       ; $4a5e: $02
	jp nc, $06d3                                     ; $4a5f: $d2 $d3 $06

	ret nz                                           ; $4a62: $c0

	ld bc, $03a0                                     ; $4a63: $01 $a0 $03
	rlca                                             ; $4a66: $07
	ld [$d401], a                                    ; $4a67: $ea $01 $d4
	ld b, $c0                                        ; $4a6a: $06 $c0
	ld bc, $03a0                                     ; $4a6c: $01 $a0 $03
	rlca                                             ; $4a6f: $07
	db $f4                                           ; $4a70: $f4
	pop hl                                           ; $4a71: $e1
	ld [bc], a                                       ; $4a72: $02
	inc bc                                           ; $4a73: $03
	ld h, e                                          ; $4a74: $63
	db $e4                                           ; $4a75: $e4
	ld bc, $0735                                     ; $4a76: $01 $35 $07
	ld sp, hl                                        ; $4a79: $f9
	add hl, bc                                       ; $4a7a: $09
	inc l                                            ; $4a7b: $2c
	pop hl                                           ; $4a7c: $e1
	ld [bc], a                                       ; $4a7d: $02
	inc bc                                           ; $4a7e: $03
	dec de                                           ; $4a7f: $1b
	add d                                            ; $4a80: $82
	ret nz                                           ; $4a81: $c0

	dec de                                           ; $4a82: $1b
	pop de                                           ; $4a83: $d1
	ld [bc], a                                       ; $4a84: $02
	ret nc                                           ; $4a85: $d0

	pop de                                           ; $4a86: $d1
	ld b, $c0                                        ; $4a87: $06 $c0
	ld bc, $03a0                                     ; $4a89: $01 $a0 $03
	rlca                                             ; $4a8c: $07
	ei                                               ; $4a8d: $fb
	ld [bc], a                                       ; $4a8e: $02
	jp nc, $06d3                                     ; $4a8f: $d2 $d3 $06

	ret nz                                           ; $4a92: $c0

	ld bc, $03a0                                     ; $4a93: $01 $a0 $03
	ld [$0103], sp                                   ; $4a96: $08 $03 $01
	call nc, $c006                                   ; $4a99: $d4 $06 $c0
	ld bc, $03a0                                     ; $4a9c: $01 $a0 $03
	ld [$e112], sp                                   ; $4a9f: $08 $12 $e1
	ld [bc], a                                       ; $4aa2: $02
	inc bc                                           ; $4aa3: $03
	ld [hl], l                                       ; $4aa4: $75
	db $e4                                           ; $4aa5: $e4
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $4aa6: $01 $05 $08
	dec e                                            ; $4aa9: $1d
	add hl, bc                                       ; $4aaa: $09
	inc l                                            ; $4aab: $2c
	pop hl                                           ; $4aac: $e1
	ld [bc], a                                       ; $4aad: $02
	inc bc                                           ; $4aae: $03
	rla                                              ; $4aaf: $17
	add d                                            ; $4ab0: $82
	ret nz                                           ; $4ab1: $c0

	dec de                                           ; $4ab2: $1b
	pop de                                           ; $4ab3: $d1
	ld [bc], a                                       ; $4ab4: $02
	ret nc                                           ; $4ab5: $d0

	pop de                                           ; $4ab6: $d1
	ld b, $c0                                        ; $4ab7: $06 $c0
	ld bc, $03a0                                     ; $4ab9: $01 $a0 $03
	ld [$0223], sp                                   ; $4abc: $08 $23 $02
	jp nc, $06d3                                     ; $4abf: $d2 $d3 $06

	ret nz                                           ; $4ac2: $c0

	ld bc, $03a0                                     ; $4ac3: $01 $a0 $03
	ld [$0135], sp                                   ; $4ac6: $08 $35 $01
	call nc, $c006                                   ; $4ac9: $d4 $06 $c0
	ld bc, $03a0                                     ; $4acc: $01 $a0 $03
	dec b                                            ; $4acf: $05
	add hl, hl                                       ; $4ad0: $29
	pop hl                                           ; $4ad1: $e1
	ld [bc], a                                       ; $4ad2: $02
	inc bc                                           ; $4ad3: $03
	ld l, h                                          ; $4ad4: $6c
	db $e4                                           ; $4ad5: $e4
	nop                                              ; $4ad6: $00
	push de                                          ; $4ad7: $d5
	jr z, @+$08                                      ; $4ad8: $28 $06

	ret nz                                           ; $4ada: $c0

	ld bc, $03a0                                     ; $4adb: $01 $a0 $03
	ld [$c044], sp                                   ; $4ade: $08 $44 $c0
	ret                                              ; $4ae1: $c9


	ret nz                                           ; $4ae2: $c0

	ei                                               ; $4ae3: $fb
	ret nz                                           ; $4ae4: $c0

	add e                                            ; $4ae5: $83
	jp nc, $78e0                                     ; $4ae6: $d2 $e0 $78

	jr nc, jr_07e_4af3                               ; $4ae9: $30 $08

	ld c, h                                          ; $4aeb: $4c
	add hl, bc                                       ; $4aec: $09
	inc l                                            ; $4aed: $2c
	pop hl                                           ; $4aee: $e1
	ld [bc], a                                       ; $4aef: $02
	inc bc                                           ; $4af0: $03
	inc de                                           ; $4af1: $13
	add d                                            ; $4af2: $82

jr_07e_4af3:
	ret nz                                           ; $4af3: $c0

	dec de                                           ; $4af4: $1b
	pop de                                           ; $4af5: $d1
	ld [bc], a                                       ; $4af6: $02
	ret nc                                           ; $4af7: $d0

	pop de                                           ; $4af8: $d1
	ld b, $c0                                        ; $4af9: $06 $c0
	ld bc, $03a0                                     ; $4afb: $01 $a0 $03
	ld [$024e], sp                                   ; $4afe: $08 $4e $02
	jp nc, $06d3                                     ; $4b01: $d2 $d3 $06

	ret nz                                           ; $4b04: $c0

	ld bc, $03a0                                     ; $4b05: $01 $a0 $03
	ld [$015d], sp                                   ; $4b08: $08 $5d $01
	call nc, $c006                                   ; $4b0b: $d4 $06 $c0
	ld bc, $03a0                                     ; $4b0e: $01 $a0 $03
	ld [$e16e], sp                                   ; $4b11: $08 $6e $e1
	ld [bc], a                                       ; $4b14: $02
	inc bc                                           ; $4b15: $03
	ld h, e                                          ; $4b16: $63
	db $e4                                           ; $4b17: $e4
	nop                                              ; $4b18: $00
	sub e                                            ; $4b19: $93
	jr nc, jr_07e_4b24                               ; $4b1a: $30 $08

	ld [hl], a                                       ; $4b1c: $77
	add hl, bc                                       ; $4b1d: $09
	inc l                                            ; $4b1e: $2c
	pop hl                                           ; $4b1f: $e1
	ld [bc], a                                       ; $4b20: $02
	inc bc                                           ; $4b21: $03
	dec de                                           ; $4b22: $1b
	add d                                            ; $4b23: $82

jr_07e_4b24:
	ret nz                                           ; $4b24: $c0

	dec de                                           ; $4b25: $1b
	pop de                                           ; $4b26: $d1
	ld [bc], a                                       ; $4b27: $02
	ret nc                                           ; $4b28: $d0

	pop de                                           ; $4b29: $d1
	ld b, $c0                                        ; $4b2a: $06 $c0
	ld bc, $03a0                                     ; $4b2c: $01 $a0 $03
	ld [$0279], sp                                   ; $4b2f: $08 $79 $02
	jp nc, $06d3                                     ; $4b32: $d2 $d3 $06

	ret nz                                           ; $4b35: $c0

	ld bc, $03a0                                     ; $4b36: $01 $a0 $03
	ld [$0186], sp                                   ; $4b39: $08 $86 $01
	call nc, $c006                                   ; $4b3c: $d4 $06 $c0
	ld bc, $03a0                                     ; $4b3f: $01 $a0 $03
	ld [$e191], sp                                   ; $4b42: $08 $91 $e1
	ld [bc], a                                       ; $4b45: $02
	inc bc                                           ; $4b46: $03
	ld [hl], l                                       ; $4b47: $75
	db $e4                                           ; $4b48: $e4
	nop                                              ; $4b49: $00
	ld h, d                                          ; $4b4a: $62
	ld [$099a], sp                                   ; $4b4b: $08 $9a $09
	inc l                                            ; $4b4e: $2c
	pop hl                                           ; $4b4f: $e1
	ld [bc], a                                       ; $4b50: $02
	inc bc                                           ; $4b51: $03
	dec de                                           ; $4b52: $1b
	add d                                            ; $4b53: $82
	ret nz                                           ; $4b54: $c0

	dec de                                           ; $4b55: $1b
	pop de                                           ; $4b56: $d1
	ld [bc], a                                       ; $4b57: $02
	ret nc                                           ; $4b58: $d0

	pop de                                           ; $4b59: $d1
	ld b, $c0                                        ; $4b5a: $06 $c0
	ld bc, $03a0                                     ; $4b5c: $01 $a0 $03
	ld [$029c], sp                                   ; $4b5f: $08 $9c $02
	jp nc, $06d3                                     ; $4b62: $d2 $d3 $06

	ret nz                                           ; $4b65: $c0

	ld bc, $03a0                                     ; $4b66: $01 $a0 $03
	ld [$01a3], sp                                   ; $4b69: $08 $a3 $01
	call nc, $c006                                   ; $4b6c: $d4 $06 $c0
	ld bc, $03a0                                     ; $4b6f: $01 $a0 $03
	ld [$e1a9], sp                                   ; $4b72: $08 $a9 $e1
	ld [bc], a                                       ; $4b75: $02
	inc bc                                           ; $4b76: $03
	ld [hl], l                                       ; $4b77: $75
	db $e4                                           ; $4b78: $e4
	nop                                              ; $4b79: $00
	ld [hl-], a                                      ; $4b7a: $32
	ld [$09b0], sp                                   ; $4b7b: $08 $b0 $09
	inc l                                            ; $4b7e: $2c
	pop hl                                           ; $4b7f: $e1
	ld [bc], a                                       ; $4b80: $02
	inc bc                                           ; $4b81: $03
	rla                                              ; $4b82: $17
	add d                                            ; $4b83: $82
	ret nz                                           ; $4b84: $c0

	dec de                                           ; $4b85: $1b
	pop de                                           ; $4b86: $d1
	ld [bc], a                                       ; $4b87: $02
	ret nc                                           ; $4b88: $d0

	pop de                                           ; $4b89: $d1
	ld b, $c0                                        ; $4b8a: $06 $c0
	ld bc, $03a0                                     ; $4b8c: $01 $a0 $03
	ld [$02b2], sp                                   ; $4b8f: $08 $b2 $02
	jp nc, $06d3                                     ; $4b92: $d2 $d3 $06

	ret nz                                           ; $4b95: $c0

	ld bc, $03a0                                     ; $4b96: $01 $a0 $03
	ld [$01bd], sp                                   ; $4b99: $08 $bd $01
	call nc, $c006                                   ; $4b9c: $d4 $06 $c0
	ld bc, $03a0                                     ; $4b9f: $01 $a0 $03
	ld [$e1cc], sp                                   ; $4ba2: $08 $cc $e1
	ld [bc], a                                       ; $4ba5: $02
	inc bc                                           ; $4ba6: $03
	ld l, h                                          ; $4ba7: $6c
	db $e4                                           ; $4ba8: $e4
	nop                                              ; $4ba9: $00
	ld [bc], a                                       ; $4baa: $02
	add hl, bc                                       ; $4bab: $09
	ld c, $c1                                        ; $4bac: $0e $c1
	ld e, c                                          ; $4bae: $59
	db $e3                                           ; $4baf: $e3
	nop                                              ; $4bb0: $00
	or l                                             ; $4bb1: $b5
	ret nz                                           ; $4bb2: $c0

	ld d, [hl]                                       ; $4bb3: $56
	pop de                                           ; $4bb4: $d1
	sub $d0                                          ; $4bb5: $d6 $d0
	push hl                                          ; $4bb7: $e5
	rla                                              ; $4bb8: $17
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	add hl, bc                                       ; $4bbb: $09
	ld d, d                                          ; $4bbc: $52
	ret nz                                           ; $4bbd: $c0

	ld bc, $03a0                                     ; $4bbe: $01 $a0 $03
	inc b                                            ; $4bc1: $04
	jp nz, $01c0                                     ; $4bc2: $c2 $c0 $01

	and b                                            ; $4bc5: $a0
	ld bc, $c105                                     ; $4bc6: $01 $05 $c1
	add e                                            ; $4bc9: $83
	adc e                                            ; $4bca: $8b
	ld [bc], a                                       ; $4bcb: $02
	ld b, d                                          ; $4bcc: $42
	ld [bc], a                                       ; $4bcd: $02
	or b                                             ; $4bce: $b0
	ld [hl], e                                       ; $4bcf: $73
	ld [$83d0], sp                                   ; $4bd0: $08 $d0 $83
	ld bc, $d1de                                     ; $4bd3: $01 $de $d1
	db $e4                                           ; $4bd6: $e4
	ld bc, $026a                                     ; $4bd7: $01 $6a $02
	or b                                             ; $4bda: $b0
	ld l, a                                          ; $4bdb: $6f
	ld [$83d0], sp                                   ; $4bdc: $08 $d0 $83
	ld bc, $d2de                                     ; $4bdf: $01 $de $d2
	db $e4                                           ; $4be2: $e4
	ld [bc], a                                       ; $4be3: $02
	add hl, bc                                       ; $4be4: $09
	ld [bc], a                                       ; $4be5: $02
	or b                                             ; $4be6: $b0
	ld l, h                                          ; $4be7: $6c
	ld [$83d0], sp                                   ; $4be8: $08 $d0 $83
	ld bc, $d3de                                     ; $4beb: $01 $de $d3
	db $e4                                           ; $4bee: $e4
	ld [bc], a                                       ; $4bef: $02
	xor b                                            ; $4bf0: $a8

jr_07e_4bf1:
	nop                                              ; $4bf1: $00
	inc e                                            ; $4bf2: $1c
	ret nc                                           ; $4bf3: $d0

	add e                                            ; $4bf4: $83
	ld bc, $d0de                                     ; $4bf5: $01 $de $d0
	pop bc                                           ; $4bf8: $c1
	ld e, c                                          ; $4bf9: $59
	db $e3                                           ; $4bfa: $e3
	nop                                              ; $4bfb: $00
	sbc e                                            ; $4bfc: $9b
	and b                                            ; $4bfd: $a0
	add b                                            ; $4bfe: $80
	and b                                            ; $4bff: $a0
	jr jr_07e_4c02                                   ; $4c00: $18 $00

jr_07e_4c02:
	inc bc                                           ; $4c02: $03
	db $e4                                           ; $4c03: $e4
	nop                                              ; $4c04: $00
	dec bc                                           ; $4c05: $0b
	rst $38                                          ; $4c06: $ff
	rlca                                             ; $4c07: $07
	ld b, b                                          ; $4c08: $40
	add b                                            ; $4c09: $80
	and b                                            ; $4c0a: $a0
	jr jr_07e_4bf1                                   ; $4c0b: $18 $e4

	nop                                              ; $4c0d: $00
	sbc e                                            ; $4c0e: $9b
	jr z, @+$08                                      ; $4c0f: $28 $06

	ret nz                                           ; $4c11: $c0

	ld bc, $03a0                                     ; $4c12: $01 $a0 $03
	ld [$90d0], sp                                   ; $4c15: $08 $d0 $90
	ld [$09d8], sp                                   ; $4c18: $08 $d8 $09
	inc l                                            ; $4c1b: $2c
	pop hl                                           ; $4c1c: $e1
	ld [bc], a                                       ; $4c1d: $02
	inc bc                                           ; $4c1e: $03
	inc de                                           ; $4c1f: $13
	add d                                            ; $4c20: $82
	ret nz                                           ; $4c21: $c0

	dec de                                           ; $4c22: $1b
	pop de                                           ; $4c23: $d1
	ld [bc], a                                       ; $4c24: $02
	ret nc                                           ; $4c25: $d0

	pop de                                           ; $4c26: $d1
	ld b, $c0                                        ; $4c27: $06 $c0
	ld bc, $03a0                                     ; $4c29: $01 $a0 $03
	ld [$02da], sp                                   ; $4c2c: $08 $da $02
	jp nc, $06d3                                     ; $4c2f: $d2 $d3 $06

	ret nz                                           ; $4c32: $c0

	ld bc, $03a0                                     ; $4c33: $01 $a0 $03
	ld [$01e1], sp                                   ; $4c36: $08 $e1 $01
	call nc, $c006                                   ; $4c39: $d4 $06 $c0
	ld bc, $03a0                                     ; $4c3c: $01 $a0 $03
	ld [$e1eb], sp                                   ; $4c3f: $08 $eb $e1
	ld [bc], a                                       ; $4c42: $02
	inc bc                                           ; $4c43: $03
	ld e, d                                          ; $4c44: $5a
	db $e4                                           ; $4c45: $e4
	inc bc                                           ; $4c46: $03
	ld sp, $f008                                     ; $4c47: $31 $08 $f0
	add hl, bc                                       ; $4c4a: $09
	inc l                                            ; $4c4b: $2c
	pop hl                                           ; $4c4c: $e1
	ld [bc], a                                       ; $4c4d: $02
	inc bc                                           ; $4c4e: $03
	rra                                              ; $4c4f: $1f
	add d                                            ; $4c50: $82
	ret nz                                           ; $4c51: $c0

	dec de                                           ; $4c52: $1b
	pop de                                           ; $4c53: $d1
	ld [bc], a                                       ; $4c54: $02
	ret nc                                           ; $4c55: $d0

	pop de                                           ; $4c56: $d1
	ld b, $c0                                        ; $4c57: $06 $c0
	ld bc, $03a0                                     ; $4c59: $01 $a0 $03
	ld [$02f3], sp                                   ; $4c5c: $08 $f3 $02
	jp nc, $06d3                                     ; $4c5f: $d2 $d3 $06

	ret nz                                           ; $4c62: $c0

	ld bc, $03a0                                     ; $4c63: $01 $a0 $03
	ld [$01fb], sp                                   ; $4c66: $08 $fb $01
	call nc, $c006                                   ; $4c69: $d4 $06 $c0
	ld bc, $03a0                                     ; $4c6c: $01 $a0 $03
	add hl, bc                                       ; $4c6f: $09
	inc b                                            ; $4c70: $04
	pop hl                                           ; $4c71: $e1
	ld [bc], a                                       ; $4c72: $02
	inc bc                                           ; $4c73: $03
	ld a, [hl]                                       ; $4c74: $7e
	db $e4                                           ; $4c75: $e4
	inc bc                                           ; $4c76: $03
	ld bc, $0909                                     ; $4c77: $01 $09 $09
	add hl, bc                                       ; $4c7a: $09
	inc l                                            ; $4c7b: $2c
	pop hl                                           ; $4c7c: $e1
	ld [bc], a                                       ; $4c7d: $02
	inc bc                                           ; $4c7e: $03
	inc de                                           ; $4c7f: $13
	add d                                            ; $4c80: $82
	ret nz                                           ; $4c81: $c0

	dec de                                           ; $4c82: $1b
	pop de                                           ; $4c83: $d1
	ld [bc], a                                       ; $4c84: $02
	ret nc                                           ; $4c85: $d0

	pop de                                           ; $4c86: $d1
	ld b, $c0                                        ; $4c87: $06 $c0
	ld bc, $03a0                                     ; $4c89: $01 $a0 $03
	add hl, bc                                       ; $4c8c: $09
	ld de, $d202                                     ; $4c8d: $11 $02 $d2
	db $d3                                           ; $4c90: $d3
	ld b, $c0                                        ; $4c91: $06 $c0
	ld bc, $03a0                                     ; $4c93: $01 $a0 $03
	add hl, bc                                       ; $4c96: $09
	inc e                                            ; $4c97: $1c
	ld bc, $06d4                                     ; $4c98: $01 $d4 $06
	ret nz                                           ; $4c9b: $c0

	ld bc, $03a0                                     ; $4c9c: $01 $a0 $03
	add hl, bc                                       ; $4c9f: $09
	ld h, $e1                                        ; $4ca0: $26 $e1
	ld [bc], a                                       ; $4ca2: $02
	inc bc                                           ; $4ca3: $03
	ld h, e                                          ; $4ca4: $63
	db $e4                                           ; $4ca5: $e4
	ld [bc], a                                       ; $4ca6: $02
	pop de                                           ; $4ca7: $d1
	jr z, @+$08                                      ; $4ca8: $28 $06

	ret nz                                           ; $4caa: $c0

	ld bc, $03a0                                     ; $4cab: $01 $a0 $03
	add hl, bc                                       ; $4cae: $09
	ld l, $90                                        ; $4caf: $2e $90
	add hl, bc                                       ; $4cb1: $09
	dec a                                            ; $4cb2: $3d
	add hl, bc                                       ; $4cb3: $09
	inc l                                            ; $4cb4: $2c
	pop hl                                           ; $4cb5: $e1
	ld [bc], a                                       ; $4cb6: $02
	inc bc                                           ; $4cb7: $03
	inc de                                           ; $4cb8: $13
	add d                                            ; $4cb9: $82
	ret nz                                           ; $4cba: $c0

	dec de                                           ; $4cbb: $1b
	pop de                                           ; $4cbc: $d1
	ld [bc], a                                       ; $4cbd: $02
	ret nc                                           ; $4cbe: $d0

	pop de                                           ; $4cbf: $d1
	ld b, $c0                                        ; $4cc0: $06 $c0
	ld bc, $03a0                                     ; $4cc2: $01 $a0 $03
	add hl, bc                                       ; $4cc5: $09
	ccf                                              ; $4cc6: $3f
	ld [bc], a                                       ; $4cc7: $02
	jp nc, $06d3                                     ; $4cc8: $d2 $d3 $06

	ret nz                                           ; $4ccb: $c0

	ld bc, $03a0                                     ; $4ccc: $01 $a0 $03
	add hl, bc                                       ; $4ccf: $09
	ld c, d                                          ; $4cd0: $4a
	ld bc, $06d4                                     ; $4cd1: $01 $d4 $06
	ret nz                                           ; $4cd4: $c0

	ld bc, $03a0                                     ; $4cd5: $01 $a0 $03
	add hl, bc                                       ; $4cd8: $09
	ld e, h                                          ; $4cd9: $5c
	pop hl                                           ; $4cda: $e1
	ld [bc], a                                       ; $4cdb: $02
	inc bc                                           ; $4cdc: $03
	ld h, e                                          ; $4cdd: $63
	db $e4                                           ; $4cde: $e4
	ld [bc], a                                       ; $4cdf: $02
	sbc b                                            ; $4ce0: $98
	add hl, bc                                       ; $4ce1: $09
	ld h, c                                          ; $4ce2: $61
	add hl, bc                                       ; $4ce3: $09
	inc l                                            ; $4ce4: $2c
	pop hl                                           ; $4ce5: $e1
	ld [bc], a                                       ; $4ce6: $02
	inc bc                                           ; $4ce7: $03
	rra                                              ; $4ce8: $1f
	add d                                            ; $4ce9: $82
	ret nz                                           ; $4cea: $c0

	dec de                                           ; $4ceb: $1b
	pop de                                           ; $4cec: $d1
	ld [bc], a                                       ; $4ced: $02
	ret nc                                           ; $4cee: $d0

	pop de                                           ; $4cef: $d1
	ld b, $c0                                        ; $4cf0: $06 $c0
	ld bc, $03a0                                     ; $4cf2: $01 $a0 $03
	add hl, bc                                       ; $4cf5: $09
	ld h, e                                          ; $4cf6: $63
	ld [bc], a                                       ; $4cf7: $02
	jp nc, $06d3                                     ; $4cf8: $d2 $d3 $06

	ret nz                                           ; $4cfb: $c0

	ld bc, $03a0                                     ; $4cfc: $01 $a0 $03
	add hl, bc                                       ; $4cff: $09
	ld l, d                                          ; $4d00: $6a
	ld bc, $06d4                                     ; $4d01: $01 $d4 $06
	ret nz                                           ; $4d04: $c0

	ld bc, $03a0                                     ; $4d05: $01 $a0 $03
	add hl, bc                                       ; $4d08: $09
	ld [hl], h                                       ; $4d09: $74
	pop hl                                           ; $4d0a: $e1
	ld [bc], a                                       ; $4d0b: $02
	inc bc                                           ; $4d0c: $03
	ld a, [hl]                                       ; $4d0d: $7e
	db $e4                                           ; $4d0e: $e4
	ld [bc], a                                       ; $4d0f: $02
	ld l, b                                          ; $4d10: $68
	add hl, bc                                       ; $4d11: $09
	ld a, h                                          ; $4d12: $7c
	add hl, bc                                       ; $4d13: $09
	inc l                                            ; $4d14: $2c
	pop hl                                           ; $4d15: $e1
	ld [bc], a                                       ; $4d16: $02
	inc bc                                           ; $4d17: $03
	inc de                                           ; $4d18: $13
	add d                                            ; $4d19: $82
	ret nz                                           ; $4d1a: $c0

	dec de                                           ; $4d1b: $1b
	pop de                                           ; $4d1c: $d1
	ld [bc], a                                       ; $4d1d: $02
	ret nc                                           ; $4d1e: $d0

	pop de                                           ; $4d1f: $d1
	ld b, $c0                                        ; $4d20: $06 $c0
	ld bc, $03a0                                     ; $4d22: $01 $a0 $03
	add hl, bc                                       ; $4d25: $09
	ld a, [hl]                                       ; $4d26: $7e
	ld [bc], a                                       ; $4d27: $02
	jp nc, $06d3                                     ; $4d28: $d2 $d3 $06

	ret nz                                           ; $4d2b: $c0

	ld bc, $03a0                                     ; $4d2c: $01 $a0 $03
	add hl, bc                                       ; $4d2f: $09
	adc e                                            ; $4d30: $8b
	ld bc, $06d4                                     ; $4d31: $01 $d4 $06
	ret nz                                           ; $4d34: $c0

	ld bc, $03a0                                     ; $4d35: $01 $a0 $03
	add hl, bc                                       ; $4d38: $09
	sub [hl]                                         ; $4d39: $96
	pop hl                                           ; $4d3a: $e1
	ld [bc], a                                       ; $4d3b: $02
	inc bc                                           ; $4d3c: $03
	ld h, e                                          ; $4d3d: $63
	db $e4                                           ; $4d3e: $e4
	ld [bc], a                                       ; $4d3f: $02
	jr c, jr_07e_4d70                                ; $4d40: $38 $2e

	dec b                                            ; $4d42: $05
	pop bc                                           ; $4d43: $c1
	ld e, c                                          ; $4d44: $59
	db $e3                                           ; $4d45: $e3
	nop                                              ; $4d46: $00
	sbc h                                            ; $4d47: $9c
	and e                                            ; $4d48: $a3
	add b                                            ; $4d49: $80
	and b                                            ; $4d4a: $a0
	add hl, de                                       ; $4d4b: $19
	nop                                              ; $4d4c: $00
	jr z, jr_07e_4d55                                ; $4d4d: $28 $06

	ret nz                                           ; $4d4f: $c0

	ld bc, $03a0                                     ; $4d50: $01 $a0 $03
	add hl, bc                                       ; $4d53: $09
	and b                                            ; $4d54: $a0

jr_07e_4d55:
	sub b                                            ; $4d55: $90
	add hl, bc                                       ; $4d56: $09
	and a                                            ; $4d57: $a7
	add hl, bc                                       ; $4d58: $09
	inc l                                            ; $4d59: $2c
	pop hl                                           ; $4d5a: $e1
	ld [bc], a                                       ; $4d5b: $02
	inc bc                                           ; $4d5c: $03
	rla                                              ; $4d5d: $17
	add d                                            ; $4d5e: $82
	ret nz                                           ; $4d5f: $c0

	dec de                                           ; $4d60: $1b
	pop de                                           ; $4d61: $d1
	ld [bc], a                                       ; $4d62: $02
	ret nc                                           ; $4d63: $d0

	pop de                                           ; $4d64: $d1
	ld b, $c0                                        ; $4d65: $06 $c0
	ld bc, $03a0                                     ; $4d67: $01 $a0 $03
	add hl, bc                                       ; $4d6a: $09
	xor c                                            ; $4d6b: $a9
	ld [bc], a                                       ; $4d6c: $02
	jp nc, $06d3                                     ; $4d6d: $d2 $d3 $06

jr_07e_4d70:
	ret nz                                           ; $4d70: $c0

	ld bc, $03a0                                     ; $4d71: $01 $a0 $03
	add hl, bc                                       ; $4d74: $09
	or e                                             ; $4d75: $b3
	ld bc, $06d4                                     ; $4d76: $01 $d4 $06
	ret nz                                           ; $4d79: $c0

	ld bc, $03a0                                     ; $4d7a: $01 $a0 $03
	add hl, bc                                       ; $4d7d: $09
	cp e                                             ; $4d7e: $bb
	pop hl                                           ; $4d7f: $e1
	ld [bc], a                                       ; $4d80: $02
	inc bc                                           ; $4d81: $03
	ld l, h                                          ; $4d82: $6c
	db $e4                                           ; $4d83: $e4
	ld bc, $09f3                                     ; $4d84: $01 $f3 $09
	call nz, $2c09                                   ; $4d87: $c4 $09 $2c
	pop hl                                           ; $4d8a: $e1
	ld [bc], a                                       ; $4d8b: $02
	inc bc                                           ; $4d8c: $03
	dec de                                           ; $4d8d: $1b
	add d                                            ; $4d8e: $82
	ret nz                                           ; $4d8f: $c0

	dec de                                           ; $4d90: $1b
	pop de                                           ; $4d91: $d1
	ld [bc], a                                       ; $4d92: $02
	ret nc                                           ; $4d93: $d0

	pop de                                           ; $4d94: $d1
	ld b, $c0                                        ; $4d95: $06 $c0
	ld bc, $03a0                                     ; $4d97: $01 $a0 $03
	add hl, bc                                       ; $4d9a: $09
	add $02                                          ; $4d9b: $c6 $02
	jp nc, $06d3                                     ; $4d9d: $d2 $d3 $06

	ret nz                                           ; $4da0: $c0

	ld bc, $03a0                                     ; $4da1: $01 $a0 $03
	add hl, bc                                       ; $4da4: $09
	ret nc                                           ; $4da5: $d0

	ld bc, $06d4                                     ; $4da6: $01 $d4 $06
	ret nz                                           ; $4da9: $c0

	ld bc, $03a0                                     ; $4daa: $01 $a0 $03
	add hl, bc                                       ; $4dad: $09
	rst SubAFromHL                                          ; $4dae: $d7
	pop hl                                           ; $4daf: $e1
	ld [bc], a                                       ; $4db0: $02
	inc bc                                           ; $4db1: $03
	ld [hl], l                                       ; $4db2: $75
	db $e4                                           ; $4db3: $e4
	ld bc, $09c3                                     ; $4db4: $01 $c3 $09
	ldh [$09], a                                     ; $4db7: $e0 $09
	inc l                                            ; $4db9: $2c
	pop hl                                           ; $4dba: $e1
	ld [bc], a                                       ; $4dbb: $02
	inc bc                                           ; $4dbc: $03
	dec de                                           ; $4dbd: $1b
	add d                                            ; $4dbe: $82
	ret nz                                           ; $4dbf: $c0

	dec de                                           ; $4dc0: $1b
	pop de                                           ; $4dc1: $d1
	ld [bc], a                                       ; $4dc2: $02
	ret nc                                           ; $4dc3: $d0

	pop de                                           ; $4dc4: $d1
	ld b, $c0                                        ; $4dc5: $06 $c0
	ld bc, $03a0                                     ; $4dc7: $01 $a0 $03
	add hl, bc                                       ; $4dca: $09
	ldh [c], a                                       ; $4dcb: $e2
	ld [bc], a                                       ; $4dcc: $02
	jp nc, $06d3                                     ; $4dcd: $d2 $d3 $06

	ret nz                                           ; $4dd0: $c0

	ld bc, $03a0                                     ; $4dd1: $01 $a0 $03
	add hl, bc                                       ; $4dd4: $09
	db $ed                                           ; $4dd5: $ed
	ld bc, $06d4                                     ; $4dd6: $01 $d4 $06
	ret nz                                           ; $4dd9: $c0

	ld bc, $03a0                                     ; $4dda: $01 $a0 $03
	add hl, bc                                       ; $4ddd: $09
	di                                               ; $4dde: $f3
	pop hl                                           ; $4ddf: $e1
	ld [bc], a                                       ; $4de0: $02
	inc bc                                           ; $4de1: $03
	ld [hl], l                                       ; $4de2: $75
	db $e4                                           ; $4de3: $e4
	ld bc, $ff93                                     ; $4de4: $01 $93 $ff
	add hl, bc                                       ; $4de7: $09
	inc bc                                           ; $4de8: $03
	ldh [rSB], a                                     ; $4de9: $e0 $01
	ld e, b                                          ; $4deb: $58
	ld l, $05                                        ; $4dec: $2e $05
	pop bc                                           ; $4dee: $c1
	ld e, c                                          ; $4def: $59
	db $e3                                           ; $4df0: $e3
	nop                                              ; $4df1: $00
	sbc l                                            ; $4df2: $9d
	and e                                            ; $4df3: $a3
	add b                                            ; $4df4: $80
	and b                                            ; $4df5: $a0
	ld a, [de]                                       ; $4df6: $1a
	nop                                              ; $4df7: $00
	jr z, jr_07e_4e00                                ; $4df8: $28 $06

	ret nz                                           ; $4dfa: $c0

	ld bc, $03a0                                     ; $4dfb: $01 $a0 $03
	add hl, bc                                       ; $4dfe: $09
	push af                                          ; $4dff: $f5

jr_07e_4e00:
	sub b                                            ; $4e00: $90
	add hl, bc                                       ; $4e01: $09
	db $fd                                           ; $4e02: $fd
	add hl, bc                                       ; $4e03: $09
	inc l                                            ; $4e04: $2c
	pop hl                                           ; $4e05: $e1
	ld [bc], a                                       ; $4e06: $02
	inc bc                                           ; $4e07: $03
	inc de                                           ; $4e08: $13
	add d                                            ; $4e09: $82
	ret nz                                           ; $4e0a: $c0

	dec de                                           ; $4e0b: $1b
	pop de                                           ; $4e0c: $d1
	ld [bc], a                                       ; $4e0d: $02
	ret nc                                           ; $4e0e: $d0

	pop de                                           ; $4e0f: $d1
	ld b, $c0                                        ; $4e10: $06 $c0
	ld bc, $03a0                                     ; $4e12: $01 $a0 $03
	add hl, bc                                       ; $4e15: $09
	rst $38                                          ; $4e16: $ff
	ld [bc], a                                       ; $4e17: $02
	jp nc, $06d3                                     ; $4e18: $d2 $d3 $06

	ret nz                                           ; $4e1b: $c0

	ld bc, $03a0                                     ; $4e1c: $01 $a0 $03
	dec b                                            ; $4e1f: $05
	dec c                                            ; $4e20: $0d
	ld bc, $06d4                                     ; $4e21: $01 $d4 $06
	ret nz                                           ; $4e24: $c0

	ld bc, $03a0                                     ; $4e25: $01 $a0 $03
	ld a, [bc]                                       ; $4e28: $0a
	ld b, $e1                                        ; $4e29: $06 $e1
	ld [bc], a                                       ; $4e2b: $02
	inc bc                                           ; $4e2c: $03
	ld e, d                                          ; $4e2d: $5a
	db $e4                                           ; $4e2e: $e4
	ld bc, $0a48                                     ; $4e2f: $01 $48 $0a
	inc c                                            ; $4e32: $0c
	add hl, bc                                       ; $4e33: $09
	inc l                                            ; $4e34: $2c
	pop hl                                           ; $4e35: $e1
	ld [bc], a                                       ; $4e36: $02
	inc bc                                           ; $4e37: $03
	dec de                                           ; $4e38: $1b
	add d                                            ; $4e39: $82
	ret nz                                           ; $4e3a: $c0

	dec de                                           ; $4e3b: $1b

jr_07e_4e3c:
	pop de                                           ; $4e3c: $d1
	ld [bc], a                                       ; $4e3d: $02
	ret nc                                           ; $4e3e: $d0

	pop de                                           ; $4e3f: $d1
	ld b, $c0                                        ; $4e40: $06 $c0
	ld bc, $03a0                                     ; $4e42: $01 $a0 $03
	ld a, [bc]                                       ; $4e45: $0a
	ld c, $02                                        ; $4e46: $0e $02
	jp nc, $06d3                                     ; $4e48: $d2 $d3 $06

	ret nz                                           ; $4e4b: $c0

	ld bc, $03a0                                     ; $4e4c: $01 $a0 $03
	ld a, [bc]                                       ; $4e4f: $0a
	ld d, $01                                        ; $4e50: $16 $01
	call nc, $c006                                   ; $4e52: $d4 $06 $c0
	ld bc, $03a0                                     ; $4e55: $01 $a0 $03
	ld a, [bc]                                       ; $4e58: $0a
	jr nz, jr_07e_4e3c                               ; $4e59: $20 $e1

	ld [bc], a                                       ; $4e5b: $02
	inc bc                                           ; $4e5c: $03
	ld [hl], l                                       ; $4e5d: $75
	db $e4                                           ; $4e5e: $e4
	ld bc, $0a18                                     ; $4e5f: $01 $18 $0a
	add hl, hl                                       ; $4e62: $29
	add hl, bc                                       ; $4e63: $09
	inc l                                            ; $4e64: $2c
	pop hl                                           ; $4e65: $e1
	ld [bc], a                                       ; $4e66: $02
	inc bc                                           ; $4e67: $03
	inc de                                           ; $4e68: $13
	add d                                            ; $4e69: $82
	ret nz                                           ; $4e6a: $c0

	dec de                                           ; $4e6b: $1b
	pop de                                           ; $4e6c: $d1
	ld [bc], a                                       ; $4e6d: $02
	ret nc                                           ; $4e6e: $d0

	pop de                                           ; $4e6f: $d1
	ld b, $c0                                        ; $4e70: $06 $c0
	ld bc, $03a0                                     ; $4e72: $01 $a0 $03
	ld a, [bc]                                       ; $4e75: $0a
	dec hl                                           ; $4e76: $2b
	ld [bc], a                                       ; $4e77: $02
	jp nc, $06d3                                     ; $4e78: $d2 $d3 $06

	ret nz                                           ; $4e7b: $c0

	ld bc, $03a0                                     ; $4e7c: $01 $a0 $03
	ld a, [bc]                                       ; $4e7f: $0a
	inc [hl]                                         ; $4e80: $34
	ld bc, $06d4                                     ; $4e81: $01 $d4 $06
	ret nz                                           ; $4e84: $c0

	ld bc, $03a0                                     ; $4e85: $01 $a0 $03
	ld a, [bc]                                       ; $4e88: $0a
	ld a, [hl-]                                      ; $4e89: $3a
	pop hl                                           ; $4e8a: $e1
	ld [bc], a                                       ; $4e8b: $02
	inc bc                                           ; $4e8c: $03
	ld h, e                                          ; $4e8d: $63
	db $e4                                           ; $4e8e: $e4
	nop                                              ; $4e8f: $00
	add sp, -$01                                     ; $4e90: $e8 $ff
	add hl, bc                                       ; $4e92: $09
	inc bc                                           ; $4e93: $03
	ldh [rP1], a                                     ; $4e94: $e0 $00
	xor l                                            ; $4e96: $ad
	ld l, $05                                        ; $4e97: $2e $05
	pop bc                                           ; $4e99: $c1
	ld e, c                                          ; $4e9a: $59
	db $e3                                           ; $4e9b: $e3
	nop                                              ; $4e9c: $00
	sbc [hl]                                         ; $4e9d: $9e
	and e                                            ; $4e9e: $a3
	add b                                            ; $4e9f: $80
	and b                                            ; $4ea0: $a0
	dec de                                           ; $4ea1: $1b
	nop                                              ; $4ea2: $00
	jr z, jr_07e_4eab                                ; $4ea3: $28 $06

	ret nz                                           ; $4ea5: $c0

	ld bc, $03a0                                     ; $4ea6: $01 $a0 $03
	ld a, [bc]                                       ; $4ea9: $0a
	ccf                                              ; $4eaa: $3f

jr_07e_4eab:
	sub b                                            ; $4eab: $90
	ld a, [bc]                                       ; $4eac: $0a
	ld c, h                                          ; $4ead: $4c
	add hl, bc                                       ; $4eae: $09
	inc l                                            ; $4eaf: $2c
	pop hl                                           ; $4eb0: $e1
	ld [bc], a                                       ; $4eb1: $02
	inc bc                                           ; $4eb2: $03
	inc de                                           ; $4eb3: $13
	add d                                            ; $4eb4: $82
	ret nz                                           ; $4eb5: $c0

	dec de                                           ; $4eb6: $1b
	pop de                                           ; $4eb7: $d1
	ld [bc], a                                       ; $4eb8: $02
	ret nc                                           ; $4eb9: $d0

	pop de                                           ; $4eba: $d1
	ld b, $c0                                        ; $4ebb: $06 $c0
	ld bc, $03a0                                     ; $4ebd: $01 $a0 $03
	ld a, [bc]                                       ; $4ec0: $0a
	ld d, d                                          ; $4ec1: $52
	ld [bc], a                                       ; $4ec2: $02
	jp nc, $06d3                                     ; $4ec3: $d2 $d3 $06

	ret nz                                           ; $4ec6: $c0

	ld bc, $03a0                                     ; $4ec7: $01 $a0 $03
	ld a, [bc]                                       ; $4eca: $0a
	ld e, h                                          ; $4ecb: $5c
	ld bc, $06d4                                     ; $4ecc: $01 $d4 $06
	ret nz                                           ; $4ecf: $c0

	ld bc, $03a0                                     ; $4ed0: $01 $a0 $03
	ld a, [bc]                                       ; $4ed3: $0a
	ld h, d                                          ; $4ed4: $62
	pop hl                                           ; $4ed5: $e1
	ld [bc], a                                       ; $4ed6: $02
	inc bc                                           ; $4ed7: $03
	ld e, d                                          ; $4ed8: $5a
	db $e4                                           ; $4ed9: $e4
	nop                                              ; $4eda: $00
	sbc l                                            ; $4edb: $9d
	ld a, [bc]                                       ; $4edc: $0a
	ld l, c                                          ; $4edd: $69
	add hl, bc                                       ; $4ede: $09
	inc l                                            ; $4edf: $2c
	pop hl                                           ; $4ee0: $e1
	ld [bc], a                                       ; $4ee1: $02
	inc bc                                           ; $4ee2: $03
	dec de                                           ; $4ee3: $1b
	add d                                            ; $4ee4: $82
	ret nz                                           ; $4ee5: $c0

	dec de                                           ; $4ee6: $1b
	pop de                                           ; $4ee7: $d1
	ld [bc], a                                       ; $4ee8: $02
	ret nc                                           ; $4ee9: $d0

	pop de                                           ; $4eea: $d1
	ld b, $c0                                        ; $4eeb: $06 $c0
	ld bc, $03a0                                     ; $4eed: $01 $a0 $03
	ld a, [bc]                                       ; $4ef0: $0a
	ld l, a                                          ; $4ef1: $6f
	ld [bc], a                                       ; $4ef2: $02
	jp nc, $06d3                                     ; $4ef3: $d2 $d3 $06

	ret nz                                           ; $4ef6: $c0

	ld bc, $03a0                                     ; $4ef7: $01 $a0 $03
	ld a, [bc]                                       ; $4efa: $0a
	ld [hl], a                                       ; $4efb: $77
	ld bc, $06d4                                     ; $4efc: $01 $d4 $06
	ret nz                                           ; $4eff: $c0

	ld bc, $03a0                                     ; $4f00: $01 $a0 $03
	ld a, [bc]                                       ; $4f03: $0a
	add b                                            ; $4f04: $80
	pop hl                                           ; $4f05: $e1
	ld [bc], a                                       ; $4f06: $02
	inc bc                                           ; $4f07: $03
	ld [hl], l                                       ; $4f08: $75
	db $e4                                           ; $4f09: $e4
	nop                                              ; $4f0a: $00
	ld l, l                                          ; $4f0b: $6d
	ld a, [bc]                                       ; $4f0c: $0a
	add [hl]                                         ; $4f0d: $86
	add hl, bc                                       ; $4f0e: $09
	inc l                                            ; $4f0f: $2c
	pop hl                                           ; $4f10: $e1
	ld [bc], a                                       ; $4f11: $02
	inc bc                                           ; $4f12: $03
	rla                                              ; $4f13: $17
	add d                                            ; $4f14: $82
	ret nz                                           ; $4f15: $c0

	dec de                                           ; $4f16: $1b
	pop de                                           ; $4f17: $d1
	ld [bc], a                                       ; $4f18: $02
	ret nc                                           ; $4f19: $d0

	pop de                                           ; $4f1a: $d1
	ld b, $c0                                        ; $4f1b: $06 $c0
	ld bc, $03a0                                     ; $4f1d: $01 $a0 $03
	ld a, [bc]                                       ; $4f20: $0a
	adc d                                            ; $4f21: $8a
	ld [bc], a                                       ; $4f22: $02
	jp nc, $06d3                                     ; $4f23: $d2 $d3 $06

	ret nz                                           ; $4f26: $c0

	ld bc, $03a0                                     ; $4f27: $01 $a0 $03
	ld a, [bc]                                       ; $4f2a: $0a
	sub a                                            ; $4f2b: $97
	ld bc, $06d4                                     ; $4f2c: $01 $d4 $06
	ret nz                                           ; $4f2f: $c0

	ld bc, $03a0                                     ; $4f30: $01 $a0 $03
	ld a, [bc]                                       ; $4f33: $0a
	and d                                            ; $4f34: $a2
	pop hl                                           ; $4f35: $e1
	ld [bc], a                                       ; $4f36: $02
	inc bc                                           ; $4f37: $03
	ld l, h                                          ; $4f38: $6c
	db $e4                                           ; $4f39: $e4
	nop                                              ; $4f3a: $00
	dec a                                            ; $4f3b: $3d
	rst $38                                          ; $4f3c: $ff
	add hl, bc                                       ; $4f3d: $09
	inc bc                                           ; $4f3e: $03
	ldh [rP1], a                                     ; $4f3f: $e0 $00
	ld [bc], a                                       ; $4f41: $02
	inc [hl]                                         ; $4f42: $34
	add d                                            ; $4f43: $82
	ret nz                                           ; $4f44: $c0

	dec de                                           ; $4f45: $1b
	pop de                                           ; $4f46: $d1
	ld [bc], a                                       ; $4f47: $02
	ret nc                                           ; $4f48: $d0

	pop de                                           ; $4f49: $d1
	ld a, [bc]                                       ; $4f4a: $0a
	pop hl                                           ; $4f4b: $e1
	ld [bc], a                                       ; $4f4c: $02
	inc bc                                           ; $4f4d: $03
	dec de                                           ; $4f4e: $1b
	ret nz                                           ; $4f4f: $c0

	ld bc, $03a0                                     ; $4f50: $01 $a0 $03
	ld a, [bc]                                       ; $4f53: $0a
	xor c                                            ; $4f54: $a9
	ld [bc], a                                       ; $4f55: $02
	jp nc, $0ad3                                     ; $4f56: $d2 $d3 $0a

	pop hl                                           ; $4f59: $e1
	ld [bc], a                                       ; $4f5a: $02
	inc bc                                           ; $4f5b: $03
	dec de                                           ; $4f5c: $1b
	ret nz                                           ; $4f5d: $c0

	ld bc, $03a0                                     ; $4f5e: $01 $a0 $03
	ld a, [bc]                                       ; $4f61: $0a
	xor a                                            ; $4f62: $af
	ld bc, $0ad4                                     ; $4f63: $01 $d4 $0a
	pop hl                                           ; $4f66: $e1
	ld [bc], a                                       ; $4f67: $02
	inc bc                                           ; $4f68: $03
	rra                                              ; $4f69: $1f
	ret nz                                           ; $4f6a: $c0

	ld bc, $03a0                                     ; $4f6b: $01 $a0 $03
	ld a, [bc]                                       ; $4f6e: $0a
	or l                                             ; $4f6f: $b5
	pop hl                                           ; $4f70: $e1
	ld [bc], a                                       ; $4f71: $02
	inc bc                                           ; $4f72: $03
	ld a, [hl]                                       ; $4f73: $7e
	db $e4                                           ; $4f74: $e4
	nop                                              ; $4f75: $00
	ld [bc], a                                       ; $4f76: $02
	add hl, bc                                       ; $4f77: $09
	cpl                                              ; $4f78: $2f
	pop bc                                           ; $4f79: $c1
	ld e, c                                          ; $4f7a: $59

jr_07e_4f7b:
	db $e3                                           ; $4f7b: $e3
	nop                                              ; $4f7c: $00
	sbc d                                            ; $4f7d: $9a
	add e                                            ; $4f7e: $83
	adc e                                            ; $4f7f: $8b
	ld [bc], a                                       ; $4f80: $02
	ld b, d                                          ; $4f81: $42
	ld [bc], a                                       ; $4f82: $02
	or b                                             ; $4f83: $b0
	ld [hl], e                                       ; $4f84: $73
	dec b                                            ; $4f85: $05
	ret nz                                           ; $4f86: $c0

	ld d, [hl]                                       ; $4f87: $56
	pop de                                           ; $4f88: $d1
	rst SubAFromHL                                          ; $4f89: $d7
	pop de                                           ; $4f8a: $d1
	ld [bc], a                                       ; $4f8b: $02
	or b                                             ; $4f8c: $b0
	ld l, a                                          ; $4f8d: $6f
	dec b                                            ; $4f8e: $05
	ret nz                                           ; $4f8f: $c0

	ld d, [hl]                                       ; $4f90: $56
	pop de                                           ; $4f91: $d1
	rst SubAFromHL                                          ; $4f92: $d7
	jp nc, $b002                                     ; $4f93: $d2 $02 $b0

	ld l, h                                          ; $4f96: $6c
	dec b                                            ; $4f97: $05
	ret nz                                           ; $4f98: $c0

	ld d, [hl]                                       ; $4f99: $56
	pop de                                           ; $4f9a: $d1
	rst SubAFromHL                                          ; $4f9b: $d7
	db $d3                                           ; $4f9c: $d3
	nop                                              ; $4f9d: $00
	dec b                                            ; $4f9e: $05
	ret nz                                           ; $4f9f: $c0

	ld d, [hl]                                       ; $4fa0: $56
	pop de                                           ; $4fa1: $d1
	rst SubAFromHL                                          ; $4fa2: $d7
	ret nc                                           ; $4fa3: $d0

	push hl                                          ; $4fa4: $e5
	rla                                              ; $4fa5: $17
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	add hl, bc                                       ; $4fa8: $09
	jr jr_07e_4f7b                                   ; $4fa9: $18 $d0

	add e                                            ; $4fab: $83
	ld bc, $d0de                                     ; $4fac: $01 $de $d0
	pop bc                                           ; $4faf: $c1
	jp z, $d1d0                                      ; $4fb0: $ca $d0 $d1

	ret nz                                           ; $4fb3: $c0

	ld bc, $03a0                                     ; $4fb4: $01 $a0 $03
	inc b                                            ; $4fb7: $04
	jp nz, $01c0                                     ; $4fb8: $c2 $c0 $01

	and b                                            ; $4fbb: $a0
	ld bc, $c105                                     ; $4fbc: $01 $05 $c1
	db $e4                                           ; $4fbf: $e4
	nop                                              ; $4fc0: $00
	ld [bc], a                                       ; $4fc1: $02
	add hl, bc                                       ; $4fc2: $09
	ld b, b                                          ; $4fc3: $40
	ld h, b                                          ; $4fc4: $60
	db $fc                                           ; $4fc5: $fc
	ret nz                                           ; $4fc6: $c0

	ld l, d                                          ; $4fc7: $6a
	jp nc, $8236                                     ; $4fc8: $d2 $36 $82

	ret nz                                           ; $4fcb: $c0

	add b                                            ; $4fcc: $80
	ld bc, $0ed3                                     ; $4fcd: $01 $d3 $0e
	and b                                            ; $4fd0: $a0
	add b                                            ; $4fd1: $80
	and b                                            ; $4fd2: $a0
	inc e                                            ; $4fd3: $1c
	nop                                              ; $4fd4: $00
	inc bc                                           ; $4fd5: $03
	db $e4                                           ; $4fd6: $e4
	ld bc, $ff7a                                     ; $4fd7: $01 $7a $ff
	inc bc                                           ; $4fda: $03
	ldh [rP1], a                                     ; $4fdb: $e0 $00
	jr z, @+$03                                      ; $4fdd: $28 $01

	jp nc, $a00e                                     ; $4fdf: $d2 $0e $a0

	add b                                            ; $4fe2: $80
	and b                                            ; $4fe3: $a0
	dec e                                            ; $4fe4: $1d
	nop                                              ; $4fe5: $00
	inc bc                                           ; $4fe6: $03
	db $e4                                           ; $4fe7: $e4
	ld bc, $ff69                                     ; $4fe8: $01 $69 $ff
	inc bc                                           ; $4feb: $03
	ldh [rP1], a                                     ; $4fec: $e0 $00
	rla                                              ; $4fee: $17
	ld bc, $0ed1                                     ; $4fef: $01 $d1 $0e
	and b                                            ; $4ff2: $a0
	add b                                            ; $4ff3: $80
	and b                                            ; $4ff4: $a0
	ld e, $00                                        ; $4ff5: $1e $00
	inc bc                                           ; $4ff7: $03
	db $e4                                           ; $4ff8: $e4
	ld bc, $ff58                                     ; $4ff9: $01 $58 $ff
	inc bc                                           ; $4ffc: $03
	ldh [rP1], a                                     ; $4ffd: $e0 $00
	ld b, $03                                        ; $4fff: $06 $03
	ldh [rP1], a                                     ; $5001: $e0 $00
	ld [bc], a                                       ; $5003: $02
	ld a, [de]                                       ; $5004: $1a
	pop bc                                           ; $5005: $c1
	ld e, c                                          ; $5006: $59
	db $e3                                           ; $5007: $e3
	nop                                              ; $5008: $00
	and l                                            ; $5009: $a5
	and b                                            ; $500a: $a0
	add b                                            ; $500b: $80
	and b                                            ; $500c: $a0
	rra                                              ; $500d: $1f
	nop                                              ; $500e: $00
	inc bc                                           ; $500f: $03
	db $e4                                           ; $5010: $e4
	nop                                              ; $5011: $00
	ld c, $ff                                        ; $5012: $0e $ff
	ld a, [bc]                                       ; $5014: $0a
	pop bc                                           ; $5015: $c1
	ld l, l                                          ; $5016: $6d
	pop de                                           ; $5017: $d1
	ld b, b                                          ; $5018: $40
	add b                                            ; $5019: $80
	and b                                            ; $501a: $a0
	rra                                              ; $501b: $1f
	db $e4                                           ; $501c: $e4
	nop                                              ; $501d: $00
	sbc e                                            ; $501e: $9b
	jr z, jr_07e_5027                                ; $501f: $28 $06

	ret nz                                           ; $5021: $c0

	ld bc, $03a0                                     ; $5022: $01 $a0 $03
	ld a, [bc]                                       ; $5025: $0a
	cp e                                             ; $5026: $bb

jr_07e_5027:
	sub b                                            ; $5027: $90
	ld a, [bc]                                       ; $5028: $0a
	call nz, $2c09                                   ; $5029: $c4 $09 $2c
	pop hl                                           ; $502c: $e1
	ld [bc], a                                       ; $502d: $02
	inc bc                                           ; $502e: $03
	inc de                                           ; $502f: $13
	add d                                            ; $5030: $82
	ret nz                                           ; $5031: $c0

	dec de                                           ; $5032: $1b
	pop de                                           ; $5033: $d1
	ld [bc], a                                       ; $5034: $02
	ret nc                                           ; $5035: $d0

	pop de                                           ; $5036: $d1
	ld b, $c0                                        ; $5037: $06 $c0
	ld bc, $03a0                                     ; $5039: $01 $a0 $03
	ld a, [bc]                                       ; $503c: $0a
	add $02                                          ; $503d: $c6 $02
	jp nc, $06d3                                     ; $503f: $d2 $d3 $06

	ret nz                                           ; $5042: $c0

	ld bc, $03a0                                     ; $5043: $01 $a0 $03
	ld a, [bc]                                       ; $5046: $0a
	rlc c                                            ; $5047: $cb $01
	call nc, $c006                                   ; $5049: $d4 $06 $c0
	ld bc, $03a0                                     ; $504c: $01 $a0 $03
	ld a, [bc]                                       ; $504f: $0a
	jp nc, $02e1                                     ; $5050: $d2 $e1 $02

	inc bc                                           ; $5053: $03
	ld h, e                                          ; $5054: $63
	db $e4                                           ; $5055: $e4
	ld bc, $0a8a                                     ; $5056: $01 $8a $0a
	rst SubAFromHL                                          ; $5059: $d7
	add hl, bc                                       ; $505a: $09
	inc l                                            ; $505b: $2c
	pop hl                                           ; $505c: $e1
	ld [bc], a                                       ; $505d: $02
	inc bc                                           ; $505e: $03
	rra                                              ; $505f: $1f
	add d                                            ; $5060: $82
	ret nz                                           ; $5061: $c0

	dec de                                           ; $5062: $1b
	pop de                                           ; $5063: $d1
	ld [bc], a                                       ; $5064: $02
	ret nc                                           ; $5065: $d0

	pop de                                           ; $5066: $d1
	ld b, $c0                                        ; $5067: $06 $c0
	ld bc, $03a0                                     ; $5069: $01 $a0 $03
	ld a, [bc]                                       ; $506c: $0a
	reti                                             ; $506d: $d9


	ld [bc], a                                       ; $506e: $02
	jp nc, $06d3                                     ; $506f: $d2 $d3 $06

	ret nz                                           ; $5072: $c0

	ld bc, $03a0                                     ; $5073: $01 $a0 $03
	ld a, [bc]                                       ; $5076: $0a
	db $e3                                           ; $5077: $e3
	ld bc, $06d4                                     ; $5078: $01 $d4 $06
	ret nz                                           ; $507b: $c0

	ld bc, $03a0                                     ; $507c: $01 $a0 $03
	ld a, [bc]                                       ; $507f: $0a
	db $eb                                           ; $5080: $eb
	pop hl                                           ; $5081: $e1
	ld [bc], a                                       ; $5082: $02
	inc bc                                           ; $5083: $03
	ld a, [hl]                                       ; $5084: $7e
	db $e4                                           ; $5085: $e4
	ld bc, $0a5a                                     ; $5086: $01 $5a $0a
	ld a, [$2c09]                                    ; $5089: $fa $09 $2c
	pop hl                                           ; $508c: $e1
	ld [bc], a                                       ; $508d: $02
	inc bc                                           ; $508e: $03
	rla                                              ; $508f: $17
	add d                                            ; $5090: $82
	ret nz                                           ; $5091: $c0

	dec de                                           ; $5092: $1b
	pop de                                           ; $5093: $d1
	ld [bc], a                                       ; $5094: $02
	ret nc                                           ; $5095: $d0

	pop de                                           ; $5096: $d1
	ld b, $c0                                        ; $5097: $06 $c0
	ld bc, $03a0                                     ; $5099: $01 $a0 $03
	ld a, [bc]                                       ; $509c: $0a
	db $fc                                           ; $509d: $fc
	ld [bc], a                                       ; $509e: $02
	jp nc, $06d3                                     ; $509f: $d2 $d3 $06

	ret nz                                           ; $50a2: $c0

	ld bc, $03a0                                     ; $50a3: $01 $a0 $03
	dec bc                                           ; $50a6: $0b
	rlca                                             ; $50a7: $07
	ld bc, $06d4                                     ; $50a8: $01 $d4 $06
	ret nz                                           ; $50ab: $c0

	ld bc, $03a0                                     ; $50ac: $01 $a0 $03
	dec bc                                           ; $50af: $0b
	dec d                                            ; $50b0: $15
	pop hl                                           ; $50b1: $e1
	ld [bc], a                                       ; $50b2: $02
	inc bc                                           ; $50b3: $03
	ld l, h                                          ; $50b4: $6c
	db $e4                                           ; $50b5: $e4
	ld bc, $282a                                     ; $50b6: $01 $2a $28
	ld b, $c0                                        ; $50b9: $06 $c0
	ld bc, $03a0                                     ; $50bb: $01 $a0 $03
	dec bc                                           ; $50be: $0b
	dec e                                            ; $50bf: $1d

Jump_07e_50c0:
	sub b                                            ; $50c0: $90
	dec bc                                           ; $50c1: $0b
	ld h, $09                                        ; $50c2: $26 $09
	inc l                                            ; $50c4: $2c
	pop hl                                           ; $50c5: $e1
	ld [bc], a                                       ; $50c6: $02
	inc bc                                           ; $50c7: $03
	inc de                                           ; $50c8: $13
	add d                                            ; $50c9: $82
	ret nz                                           ; $50ca: $c0

	dec de                                           ; $50cb: $1b
	pop de                                           ; $50cc: $d1
	ld [bc], a                                       ; $50cd: $02
	ret nc                                           ; $50ce: $d0

	pop de                                           ; $50cf: $d1
	ld b, $c0                                        ; $50d0: $06 $c0
	ld bc, $03a0                                     ; $50d2: $01 $a0 $03
	dec bc                                           ; $50d5: $0b
	jr z, @+$04                                      ; $50d6: $28 $02

	jp nc, $06d3                                     ; $50d8: $d2 $d3 $06

	ret nz                                           ; $50db: $c0

	ld bc, $03a0                                     ; $50dc: $01 $a0 $03
	dec bc                                           ; $50df: $0b

Jump_07e_50e0:
	inc [hl]                                         ; $50e0: $34
	ld bc, $06d4                                     ; $50e1: $01 $d4 $06
	ret nz                                           ; $50e4: $c0

	ld bc, $03a0                                     ; $50e5: $01 $a0 $03
	dec bc                                           ; $50e8: $0b
	ld b, l                                          ; $50e9: $45
	pop hl                                           ; $50ea: $e1
	ld [bc], a                                       ; $50eb: $02
	inc bc                                           ; $50ec: $03
	ld h, e                                          ; $50ed: $63
	db $e4                                           ; $50ee: $e4
	nop                                              ; $50ef: $00
	pop af                                           ; $50f0: $f1
	dec bc                                           ; $50f1: $0b
	ld c, [hl]                                       ; $50f2: $4e
	add hl, bc                                       ; $50f3: $09
	inc l                                            ; $50f4: $2c
	pop hl                                           ; $50f5: $e1
	ld [bc], a                                       ; $50f6: $02
	inc bc                                           ; $50f7: $03
	dec de                                           ; $50f8: $1b
	add d                                            ; $50f9: $82
	ret nz                                           ; $50fa: $c0

	dec de                                           ; $50fb: $1b
	pop de                                           ; $50fc: $d1
	ld [bc], a                                       ; $50fd: $02
	ret nc                                           ; $50fe: $d0

	pop de                                           ; $50ff: $d1
	ld b, $c0                                        ; $5100: $06 $c0
	ld bc, $03a0                                     ; $5102: $01 $a0 $03
	dec bc                                           ; $5105: $0b
	ld d, e                                          ; $5106: $53
	ld [bc], a                                       ; $5107: $02
	jp nc, $06d3                                     ; $5108: $d2 $d3 $06

	ret nz                                           ; $510b: $c0

	ld bc, $03a0                                     ; $510c: $01 $a0 $03
	dec bc                                           ; $510f: $0b
	ld e, c                                          ; $5110: $59
	ld bc, $06d4                                     ; $5111: $01 $d4 $06
	ret nz                                           ; $5114: $c0

	ld bc, $03a0                                     ; $5115: $01 $a0 $03
	dec bc                                           ; $5118: $0b
	ld h, l                                          ; $5119: $65
	pop hl                                           ; $511a: $e1
	ld [bc], a                                       ; $511b: $02
	inc bc                                           ; $511c: $03
	ld [hl], l                                       ; $511d: $75
	db $e4                                           ; $511e: $e4
	nop                                              ; $511f: $00
	pop bc                                           ; $5120: $c1
	dec bc                                           ; $5121: $0b
	ld l, l                                          ; $5122: $6d
	add hl, bc                                       ; $5123: $09
	inc l                                            ; $5124: $2c
	pop hl                                           ; $5125: $e1
	ld [bc], a                                       ; $5126: $02
	inc bc                                           ; $5127: $03
	rla                                              ; $5128: $17
	add d                                            ; $5129: $82
	ret nz                                           ; $512a: $c0

	dec de                                           ; $512b: $1b
	pop de                                           ; $512c: $d1
	ld [bc], a                                       ; $512d: $02
	ret nc                                           ; $512e: $d0

	pop de                                           ; $512f: $d1
	ld b, $c0                                        ; $5130: $06 $c0
	ld bc, $03a0                                     ; $5132: $01 $a0 $03
	dec bc                                           ; $5135: $0b
	ld [hl], e                                       ; $5136: $73
	ld [bc], a                                       ; $5137: $02
	jp nc, $06d3                                     ; $5138: $d2 $d3 $06

	ret nz                                           ; $513b: $c0

	ld bc, $03a0                                     ; $513c: $01 $a0 $03
	dec bc                                           ; $513f: $0b
	add a                                            ; $5140: $87
	ld bc, $06d4                                     ; $5141: $01 $d4 $06
	ret nz                                           ; $5144: $c0

	ld bc, $03a0                                     ; $5145: $01 $a0 $03
	dec bc                                           ; $5148: $0b
	sub [hl]                                         ; $5149: $96
	pop hl                                           ; $514a: $e1
	ld [bc], a                                       ; $514b: $02
	inc bc                                           ; $514c: $03
	ld l, h                                          ; $514d: $6c
	db $e4                                           ; $514e: $e4
	nop                                              ; $514f: $00
	sub c                                            ; $5150: $91
	add hl, bc                                       ; $5151: $09
	adc l                                            ; $5152: $8d
	ret nz                                           ; $5153: $c0

	set 0, c                                         ; $5154: $cb $c1
	ld e, e                                          ; $5156: $5b
	ret nz                                           ; $5157: $c0

	rrca                                             ; $5158: $0f
	db $e3                                           ; $5159: $e3
	nop                                              ; $515a: $00
	and l                                            ; $515b: $a5
	ret nz                                           ; $515c: $c0

	ld bc, $01a0                                     ; $515d: $01 $a0 $01
	dec bc                                           ; $5160: $0b
	sbc h                                            ; $5161: $9c
	ret nz                                           ; $5162: $c0

	ld bc, $03a0                                     ; $5163: $01 $a0 $03
	dec bc                                           ; $5166: $0b
	and b                                            ; $5167: $a0
	ret nz                                           ; $5168: $c0

	ld bc, $01a0                                     ; $5169: $01 $a0 $01
	dec bc                                           ; $516c: $0b
	and d                                            ; $516d: $a2
	ret nz                                           ; $516e: $c0

	set 0, b                                         ; $516f: $cb $c0
	rrca                                             ; $5171: $0f
	db $e3                                           ; $5172: $e3
	nop                                              ; $5173: $00
	rst SubAFromBC                                          ; $5174: $e7
	ret nz                                           ; $5175: $c0

	inc c                                            ; $5176: $0c
	ldh [$78], a                                     ; $5177: $e0 $78
	ret nz                                           ; $5179: $c0

	ld bc, $01a0                                     ; $517a: $01 $a0 $01
	dec bc                                           ; $517d: $0b
	and a                                            ; $517e: $a7
	ret nz                                           ; $517f: $c0

	ld bc, $03a0                                     ; $5180: $01 $a0 $03
	dec bc                                           ; $5183: $0b
	and b                                            ; $5184: $a0
	ret nz                                           ; $5185: $c0

	ld bc, $01a0                                     ; $5186: $01 $a0 $01
	dec bc                                           ; $5189: $0b
	or [hl]                                          ; $518a: $b6
	ret nz                                           ; $518b: $c0

	inc c                                            ; $518c: $0c
	ldh [$78], a                                     ; $518d: $e0 $78
	ret nz                                           ; $518f: $c0

	set 0, c                                         ; $5190: $cb $c1
	ld e, h                                          ; $5192: $5c
	ret nz                                           ; $5193: $c0

	ld de, $00e3                                     ; $5194: $11 $e3 $00
	and l                                            ; $5197: $a5
	pop hl                                           ; $5198: $e1
	ld [bc], a                                       ; $5199: $02
	ld bc, $c028                                     ; $519a: $01 $28 $c0
	ld bc, $03a0                                     ; $519d: $01 $a0 $03
	dec bc                                           ; $51a0: $0b
	cp [hl]                                          ; $51a1: $be
	ret nz                                           ; $51a2: $c0

	ld bc, $01a0                                     ; $51a3: $01 $a0 $01
	dec bc                                           ; $51a6: $0b
	pop bc                                           ; $51a7: $c1
	ret nz                                           ; $51a8: $c0

	ld bc, $03a0                                     ; $51a9: $01 $a0 $03
	dec bc                                           ; $51ac: $0b
	add $c0                                          ; $51ad: $c6 $c0
	ld bc, $01a0                                     ; $51af: $01 $a0 $01
	dec bc                                           ; $51b2: $0b
	call nc, $01c0                                   ; $51b3: $d4 $c0 $01
	and b                                            ; $51b6: $a0
	inc bc                                           ; $51b7: $03
	dec bc                                           ; $51b8: $0b
	db $e3                                           ; $51b9: $e3
	ret nz                                           ; $51ba: $c0

	ld bc, $01a0                                     ; $51bb: $01 $a0 $01
	dec bc                                           ; $51be: $0b
	db $eb                                           ; $51bf: $eb
	ret nz                                           ; $51c0: $c0

	ld bc, $03a0                                     ; $51c1: $01 $a0 $03
	dec bc                                           ; $51c4: $0b
	ld sp, hl                                        ; $51c5: $f9
	ret nc                                           ; $51c6: $d0

	add d                                            ; $51c7: $82
	ld bc, $d1c9                                     ; $51c8: $01 $c9 $d1
	pop hl                                           ; $51cb: $e1
	ld [bc], a                                       ; $51cc: $02
	inc b                                            ; $51cd: $04
	rst JumpTable                                          ; $51ce: $c7
	ret nz                                           ; $51cf: $c0

	ld d, c                                          ; $51d0: $51
	jp nc, Jump_07e_50c0                             ; $51d1: $d2 $c0 $50

	jp nc, $55c0                                     ; $51d4: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $51d7: $e0 $14
	pop bc                                           ; $51d9: $c1
	ld l, e                                          ; $51da: $6b
	jp nc, $e4d1                                     ; $51db: $d2 $d1 $e4

	nop                                              ; $51de: $00
	ld [bc], a                                       ; $51df: $02
	add hl, bc                                       ; $51e0: $09
	ld c, $c1                                        ; $51e1: $0e $c1
	ld e, c                                          ; $51e3: $59

jr_07e_51e4:
	db $e3                                           ; $51e4: $e3
	nop                                              ; $51e5: $00
	and h                                            ; $51e6: $a4
	ret nz                                           ; $51e7: $c0

	ld d, [hl]                                       ; $51e8: $56
	pop de                                           ; $51e9: $d1
	ret c                                            ; $51ea: $d8

	ret nc                                           ; $51eb: $d0

	push hl                                          ; $51ec: $e5
	rla                                              ; $51ed: $17
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	inc l                                            ; $51f0: $2c
	inc c                                            ; $51f1: $0c
	ret nz                                           ; $51f2: $c0

	ld bc, $03a0                                     ; $51f3: $01 $a0 $03
	dec bc                                           ; $51f6: $0b
	db $fc                                           ; $51f7: $fc
	ret nz                                           ; $51f8: $c0

	ld bc, $01a0                                     ; $51f9: $01 $a0 $01
	inc b                                            ; $51fc: $04
	ret z                                            ; $51fd: $c8

	inc h                                            ; $51fe: $24
	add b                                            ; $51ff: $80
	ld [bc], a                                       ; $5200: $02
	ld d, [hl]                                       ; $5201: $56
	ld [$0c19], sp                                   ; $5202: $08 $19 $0c
	ld bc, $0309                                     ; $5205: $01 $09 $03
	db $e4                                           ; $5208: $e4
	nop                                              ; $5209: $00
	ld a, [de]                                       ; $520a: $1a
	inc c                                            ; $520b: $0c
	inc bc                                           ; $520c: $03
	add hl, bc                                       ; $520d: $09
	ld c, $d0                                        ; $520e: $0e $d0
	add e                                            ; $5210: $83
	ld bc, $d2de                                     ; $5211: $01 $de $d2
	ret nc                                           ; $5214: $d0

	adc e                                            ; $5215: $8b
	and b                                            ; $5216: $a0
	jr nz, @-$4e                                     ; $5217: $20 $b0

	ld a, c                                          ; $5219: $79
	db $e4                                           ; $521a: $e4
	ld bc, $d15e                                     ; $521b: $01 $5e $d1
	add hl, bc                                       ; $521e: $09
	inc bc                                           ; $521f: $03
	db $e4                                           ; $5220: $e4
	nop                                              ; $5221: $00
	ld [bc], a                                       ; $5222: $02
	add hl, bc                                       ; $5223: $09
	ld [hl+], a                                      ; $5224: $22
	ret nc                                           ; $5225: $d0

	add e                                            ; $5226: $83
	ld bc, $d1de                                     ; $5227: $01 $de $d1
	pop bc                                           ; $522a: $c1
	ld e, c                                          ; $522b: $59
	db $e3                                           ; $522c: $e3
	nop                                              ; $522d: $00
	sbc b                                            ; $522e: $98
	ret nc                                           ; $522f: $d0

	adc e                                            ; $5230: $8b
	and b                                            ; $5231: $a0
	jr nz, jr_07e_51e4                               ; $5232: $20 $b0

	ld a, b                                          ; $5234: $78
	and b                                            ; $5235: $a0
	add b                                            ; $5236: $80
	and b                                            ; $5237: $a0
	inc l                                            ; $5238: $2c
	nop                                              ; $5239: $00
	inc bc                                           ; $523a: $03
	db $e4                                           ; $523b: $e4
	nop                                              ; $523c: $00
	dec bc                                           ; $523d: $0b
	rst $38                                          ; $523e: $ff
	rlca                                             ; $523f: $07
	ld b, b                                          ; $5240: $40
	add b                                            ; $5241: $80
	and b                                            ; $5242: $a0
	inc l                                            ; $5243: $2c
	db $e4                                           ; $5244: $e4
	nop                                              ; $5245: $00
	sbc e                                            ; $5246: $9b
	jr z, jr_07e_524f                                ; $5247: $28 $06

	ret nz                                           ; $5249: $c0

	ld bc, $03a0                                     ; $524a: $01 $a0 $03
	inc c                                            ; $524d: $0c
	dec b                                            ; $524e: $05

jr_07e_524f:
	sub b                                            ; $524f: $90
	inc c                                            ; $5250: $0c
	ld c, $09                                        ; $5251: $0e $09
	inc l                                            ; $5253: $2c
	pop hl                                           ; $5254: $e1
	ld [bc], a                                       ; $5255: $02
	inc bc                                           ; $5256: $03
	rla                                              ; $5257: $17
	add d                                            ; $5258: $82
	ret nz                                           ; $5259: $c0

	dec de                                           ; $525a: $1b
	pop de                                           ; $525b: $d1
	ld [bc], a                                       ; $525c: $02
	ret nc                                           ; $525d: $d0

	pop de                                           ; $525e: $d1
	ld b, $c0                                        ; $525f: $06 $c0
	ld bc, $03a0                                     ; $5261: $01 $a0 $03
	inc c                                            ; $5264: $0c
	dec d                                            ; $5265: $15
	ld [bc], a                                       ; $5266: $02
	jp nc, $06d3                                     ; $5267: $d2 $d3 $06

	ret nz                                           ; $526a: $c0

	ld bc, $03a0                                     ; $526b: $01 $a0 $03
	inc c                                            ; $526e: $0c
	ld e, $01                                        ; $526f: $1e $01
	call nc, $c006                                   ; $5271: $d4 $06 $c0
	ld bc, $03a0                                     ; $5274: $01 $a0 $03
	inc c                                            ; $5277: $0c
	daa                                              ; $5278: $27
	pop hl                                           ; $5279: $e1
	ld [bc], a                                       ; $527a: $02
	inc bc                                           ; $527b: $03
	ld l, h                                          ; $527c: $6c
	db $e4                                           ; $527d: $e4
	ld bc, $0c99                                     ; $527e: $01 $99 $0c
	inc l                                            ; $5281: $2c
	add hl, bc                                       ; $5282: $09
	inc l                                            ; $5283: $2c
	pop hl                                           ; $5284: $e1
	ld [bc], a                                       ; $5285: $02
	inc bc                                           ; $5286: $03
	dec de                                           ; $5287: $1b
	add d                                            ; $5288: $82
	ret nz                                           ; $5289: $c0

	dec de                                           ; $528a: $1b
	pop de                                           ; $528b: $d1
	ld [bc], a                                       ; $528c: $02
	ret nc                                           ; $528d: $d0

	pop de                                           ; $528e: $d1
	ld b, $c0                                        ; $528f: $06 $c0
	ld bc, $03a0                                     ; $5291: $01 $a0 $03
	inc c                                            ; $5294: $0c
	ld l, $02                                        ; $5295: $2e $02
	jp nc, $06d3                                     ; $5297: $d2 $d3 $06

	ret nz                                           ; $529a: $c0

	ld bc, $03a0                                     ; $529b: $01 $a0 $03
	inc c                                            ; $529e: $0c
	jr c, @+$03                                      ; $529f: $38 $01

	call nc, $c006                                   ; $52a1: $d4 $06 $c0
	ld bc, $03a0                                     ; $52a4: $01 $a0 $03
	inc c                                            ; $52a7: $0c
	ld b, [hl]                                       ; $52a8: $46
	pop hl                                           ; $52a9: $e1
	ld [bc], a                                       ; $52aa: $02
	inc bc                                           ; $52ab: $03
	ld [hl], l                                       ; $52ac: $75
	db $e4                                           ; $52ad: $e4
	ld bc, $0c69                                     ; $52ae: $01 $69 $0c
	ld c, e                                          ; $52b1: $4b
	add hl, bc                                       ; $52b2: $09
	inc l                                            ; $52b3: $2c
	pop hl                                           ; $52b4: $e1
	ld [bc], a                                       ; $52b5: $02
	inc bc                                           ; $52b6: $03
	dec de                                           ; $52b7: $1b
	add d                                            ; $52b8: $82
	ret nz                                           ; $52b9: $c0

	dec de                                           ; $52ba: $1b
	pop de                                           ; $52bb: $d1
	ld [bc], a                                       ; $52bc: $02
	ret nc                                           ; $52bd: $d0

	pop de                                           ; $52be: $d1
	ld b, $c0                                        ; $52bf: $06 $c0
	ld bc, $03a0                                     ; $52c1: $01 $a0 $03
	inc c                                            ; $52c4: $0c
	ld c, l                                          ; $52c5: $4d
	ld [bc], a                                       ; $52c6: $02
	jp nc, $06d3                                     ; $52c7: $d2 $d3 $06

	ret nz                                           ; $52ca: $c0

	ld bc, $03a0                                     ; $52cb: $01 $a0 $03
	inc c                                            ; $52ce: $0c
	ld d, [hl]                                       ; $52cf: $56
	ld bc, $06d4                                     ; $52d0: $01 $d4 $06
	ret nz                                           ; $52d3: $c0

	ld bc, $03a0                                     ; $52d4: $01 $a0 $03
	inc c                                            ; $52d7: $0c
	ld e, [hl]                                       ; $52d8: $5e
	pop hl                                           ; $52d9: $e1
	ld [bc], a                                       ; $52da: $02
	inc bc                                           ; $52db: $03
	ld [hl], l                                       ; $52dc: $75
	db $e4                                           ; $52dd: $e4
	ld bc, $2839                                     ; $52de: $01 $39 $28
	ld b, $c0                                        ; $52e1: $06 $c0
	ld bc, $03a0                                     ; $52e3: $01 $a0 $03
	inc c                                            ; $52e6: $0c
	ld l, c                                          ; $52e7: $69
	sub b                                            ; $52e8: $90
	inc c                                            ; $52e9: $0c
	ld [hl], e                                       ; $52ea: $73
	add hl, bc                                       ; $52eb: $09
	inc l                                            ; $52ec: $2c
	pop hl                                           ; $52ed: $e1
	ld [bc], a                                       ; $52ee: $02
	inc bc                                           ; $52ef: $03
	rla                                              ; $52f0: $17
	add d                                            ; $52f1: $82
	ret nz                                           ; $52f2: $c0

	dec de                                           ; $52f3: $1b
	pop de                                           ; $52f4: $d1
	ld [bc], a                                       ; $52f5: $02
	ret nc                                           ; $52f6: $d0

	pop de                                           ; $52f7: $d1
	ld b, $c0                                        ; $52f8: $06 $c0
	ld bc, $03a0                                     ; $52fa: $01 $a0 $03
	inc c                                            ; $52fd: $0c
	ld [hl], l                                       ; $52fe: $75
	ld [bc], a                                       ; $52ff: $02
	jp nc, $06d3                                     ; $5300: $d2 $d3 $06

	ret nz                                           ; $5303: $c0

	ld bc, $03a0                                     ; $5304: $01 $a0 $03
	inc c                                            ; $5307: $0c
	add h                                            ; $5308: $84
	ld bc, $06d4                                     ; $5309: $01 $d4 $06
	ret nz                                           ; $530c: $c0

	ld bc, $03a0                                     ; $530d: $01 $a0 $03
	inc c                                            ; $5310: $0c
	adc [hl]                                         ; $5311: $8e
	pop hl                                           ; $5312: $e1
	ld [bc], a                                       ; $5313: $02
	inc bc                                           ; $5314: $03
	ld l, h                                          ; $5315: $6c
	db $e4                                           ; $5316: $e4
	ld bc, $0c00                                     ; $5317: $01 $00 $0c
	sub e                                            ; $531a: $93
	add hl, bc                                       ; $531b: $09
	inc l                                            ; $531c: $2c
	pop hl                                           ; $531d: $e1
	ld [bc], a                                       ; $531e: $02
	inc bc                                           ; $531f: $03
	dec de                                           ; $5320: $1b
	add d                                            ; $5321: $82
	ret nz                                           ; $5322: $c0

	dec de                                           ; $5323: $1b
	pop de                                           ; $5324: $d1
	ld [bc], a                                       ; $5325: $02
	ret nc                                           ; $5326: $d0

	pop de                                           ; $5327: $d1
	ld b, $c0                                        ; $5328: $06 $c0
	ld bc, $03a0                                     ; $532a: $01 $a0 $03
	inc c                                            ; $532d: $0c
	sub l                                            ; $532e: $95
	ld [bc], a                                       ; $532f: $02
	jp nc, $06d3                                     ; $5330: $d2 $d3 $06

	ret nz                                           ; $5333: $c0

	ld bc, $03a0                                     ; $5334: $01 $a0 $03
	inc c                                            ; $5337: $0c
	sbc l                                            ; $5338: $9d
	ld bc, $06d4                                     ; $5339: $01 $d4 $06
	ret nz                                           ; $533c: $c0

	ld bc, $03a0                                     ; $533d: $01 $a0 $03
	inc c                                            ; $5340: $0c
	and d                                            ; $5341: $a2
	pop hl                                           ; $5342: $e1
	ld [bc], a                                       ; $5343: $02
	inc bc                                           ; $5344: $03
	ld [hl], l                                       ; $5345: $75
	db $e4                                           ; $5346: $e4
	nop                                              ; $5347: $00
	ret nc                                           ; $5348: $d0

	inc c                                            ; $5349: $0c
	xor d                                            ; $534a: $aa
	add hl, bc                                       ; $534b: $09
	inc l                                            ; $534c: $2c
	pop hl                                           ; $534d: $e1
	ld [bc], a                                       ; $534e: $02
	inc bc                                           ; $534f: $03
	rla                                              ; $5350: $17
	add d                                            ; $5351: $82
	ret nz                                           ; $5352: $c0

	dec de                                           ; $5353: $1b
	pop de                                           ; $5354: $d1
	ld [bc], a                                       ; $5355: $02
	ret nc                                           ; $5356: $d0

	pop de                                           ; $5357: $d1
	ld b, $c0                                        ; $5358: $06 $c0
	ld bc, $03a0                                     ; $535a: $01 $a0 $03
	inc c                                            ; $535d: $0c
	xor h                                            ; $535e: $ac
	ld [bc], a                                       ; $535f: $02
	jp nc, $06d3                                     ; $5360: $d2 $d3 $06

	ret nz                                           ; $5363: $c0

	ld bc, $03a0                                     ; $5364: $01 $a0 $03
	inc c                                            ; $5367: $0c
	cp d                                             ; $5368: $ba
	ld bc, $06d4                                     ; $5369: $01 $d4 $06
	ret nz                                           ; $536c: $c0

	ld bc, $03a0                                     ; $536d: $01 $a0 $03
	inc c                                            ; $5370: $0c
	ret z                                            ; $5371: $c8

	pop hl                                           ; $5372: $e1
	ld [bc], a                                       ; $5373: $02
	inc bc                                           ; $5374: $03
	ld l, h                                          ; $5375: $6c
	db $e4                                           ; $5376: $e4
	nop                                              ; $5377: $00
	and b                                            ; $5378: $a0
	jr z, @+$0d                                      ; $5379: $28 $0b

	pop bc                                           ; $537b: $c1
	ld e, c                                          ; $537c: $59
	db $e3                                           ; $537d: $e3
	nop                                              ; $537e: $00
	sbc c                                            ; $537f: $99
	ret nz                                           ; $5380: $c0

	ld bc, $03a0                                     ; $5381: $01 $a0 $03
	inc c                                            ; $5384: $0c
	call nc, $0c90                                   ; $5385: $d4 $90 $0c
	db $dd                                           ; $5388: $dd
	add hl, bc                                       ; $5389: $09
	inc l                                            ; $538a: $2c
	pop hl                                           ; $538b: $e1
	ld [bc], a                                       ; $538c: $02
	inc bc                                           ; $538d: $03
	inc de                                           ; $538e: $13
	add d                                            ; $538f: $82
	ret nz                                           ; $5390: $c0

	dec de                                           ; $5391: $1b
	pop de                                           ; $5392: $d1
	ld [bc], a                                       ; $5393: $02
	ret nc                                           ; $5394: $d0

	pop de                                           ; $5395: $d1
	ld b, $c0                                        ; $5396: $06 $c0
	ld bc, $03a0                                     ; $5398: $01 $a0 $03
	inc c                                            ; $539b: $0c
	and $02                                          ; $539c: $e6 $02
	jp nc, $06d3                                     ; $539e: $d2 $d3 $06

	ret nz                                           ; $53a1: $c0

	ld bc, $03a0                                     ; $53a2: $01 $a0 $03
	inc c                                            ; $53a5: $0c
	ldh a, [rSB]                                     ; $53a6: $f0 $01
	call nc, $c006                                   ; $53a8: $d4 $06 $c0
	ld bc, $03a0                                     ; $53ab: $01 $a0 $03
	inc c                                            ; $53ae: $0c
	push af                                          ; $53af: $f5
	pop hl                                           ; $53b0: $e1
	ld [bc], a                                       ; $53b1: $02
	inc bc                                           ; $53b2: $03
	ld h, e                                          ; $53b3: $63
	db $e4                                           ; $53b4: $e4
	nop                                              ; $53b5: $00
	ld h, d                                          ; $53b6: $62
	inc c                                            ; $53b7: $0c
	db $fd                                           ; $53b8: $fd
	add hl, bc                                       ; $53b9: $09
	inc l                                            ; $53ba: $2c
	pop hl                                           ; $53bb: $e1
	ld [bc], a                                       ; $53bc: $02
	inc bc                                           ; $53bd: $03
	rra                                              ; $53be: $1f
	add d                                            ; $53bf: $82

Jump_07e_53c0:
	ret nz                                           ; $53c0: $c0

	dec de                                           ; $53c1: $1b
	pop de                                           ; $53c2: $d1
	ld [bc], a                                       ; $53c3: $02
	ret nc                                           ; $53c4: $d0

	pop de                                           ; $53c5: $d1
	ld b, $c0                                        ; $53c6: $06 $c0
	ld bc, $03a0                                     ; $53c8: $01 $a0 $03
	dec c                                            ; $53cb: $0d
	dec b                                            ; $53cc: $05
	ld [bc], a                                       ; $53cd: $02
	jp nc, $06d3                                     ; $53ce: $d2 $d3 $06

	ret nz                                           ; $53d1: $c0

	ld bc, $03a0                                     ; $53d2: $01 $a0 $03
	dec c                                            ; $53d5: $0d
	db $10                                           ; $53d6: $10
	ld bc, $06d4                                     ; $53d7: $01 $d4 $06
	ret nz                                           ; $53da: $c0

	ld bc, $03a0                                     ; $53db: $01 $a0 $03
	dec c                                            ; $53de: $0d
	ld e, $e1                                        ; $53df: $1e $e1
	ld [bc], a                                       ; $53e1: $02
	inc bc                                           ; $53e2: $03
	ld a, [hl]                                       ; $53e3: $7e
	db $e4                                           ; $53e4: $e4
	nop                                              ; $53e5: $00
	ld [hl-], a                                      ; $53e6: $32
	dec c                                            ; $53e7: $0d
	daa                                              ; $53e8: $27
	add hl, bc                                       ; $53e9: $09
	inc l                                            ; $53ea: $2c
	pop hl                                           ; $53eb: $e1
	ld [bc], a                                       ; $53ec: $02
	inc bc                                           ; $53ed: $03
	dec de                                           ; $53ee: $1b
	add d                                            ; $53ef: $82
	ret nz                                           ; $53f0: $c0

	dec de                                           ; $53f1: $1b
	pop de                                           ; $53f2: $d1
	ld [bc], a                                       ; $53f3: $02
	ret nc                                           ; $53f4: $d0

	pop de                                           ; $53f5: $d1
	ld b, $c0                                        ; $53f6: $06 $c0
	ld bc, $03a0                                     ; $53f8: $01 $a0 $03
	dec c                                            ; $53fb: $0d
	dec l                                            ; $53fc: $2d
	ld [bc], a                                       ; $53fd: $02
	jp nc, $06d3                                     ; $53fe: $d2 $d3 $06

	ret nz                                           ; $5401: $c0

	ld bc, $03a0                                     ; $5402: $01 $a0 $03
	dec c                                            ; $5405: $0d
	inc sp                                           ; $5406: $33
	ld bc, $06d4                                     ; $5407: $01 $d4 $06
	ret nz                                           ; $540a: $c0

	ld bc, $03a0                                     ; $540b: $01 $a0 $03
	dec c                                            ; $540e: $0d
	dec a                                            ; $540f: $3d
	pop hl                                           ; $5410: $e1
	ld [bc], a                                       ; $5411: $02
	inc bc                                           ; $5412: $03
	ld [hl], l                                       ; $5413: $75
	db $e4                                           ; $5414: $e4
	nop                                              ; $5415: $00
	ld [bc], a                                       ; $5416: $02
	add hl, bc                                       ; $5417: $09
	rra                                              ; $5418: $1f
	pop bc                                           ; $5419: $c1
	ld e, c                                          ; $541a: $59
	db $e3                                           ; $541b: $e3
	nop                                              ; $541c: $00
	sub a                                            ; $541d: $97
	add c                                            ; $541e: $81
	adc e                                            ; $541f: $8b
	and b                                            ; $5420: $a0
	jr nz, jr_07e_5425                               ; $5421: $20 $02

	or b                                             ; $5423: $b0
	ld a, b                                          ; $5424: $78

jr_07e_5425:
	dec b                                            ; $5425: $05
	ret nz                                           ; $5426: $c0

	ld d, [hl]                                       ; $5427: $56
	pop de                                           ; $5428: $d1
	reti                                             ; $5429: $d9


	pop de                                           ; $542a: $d1
	ld [bc], a                                       ; $542b: $02
	or b                                             ; $542c: $b0
	ld a, c                                          ; $542d: $79
	dec b                                            ; $542e: $05
	ret nz                                           ; $542f: $c0

	ld d, [hl]                                       ; $5430: $56
	pop de                                           ; $5431: $d1
	reti                                             ; $5432: $d9


	jp nc, $17e5                                     ; $5433: $d2 $e5 $17

	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	and $04                                          ; $5438: $e6 $04
	add hl, bc                                       ; $543a: $09
	jr z, @-$2e                                      ; $543b: $28 $d0

	add e                                            ; $543d: $83
	ld bc, $d0de                                     ; $543e: $01 $de $d0
	ret nz                                           ; $5441: $c0

	ld bc, $03a0                                     ; $5442: $01 $a0 $03
	nop                                              ; $5445: $00
	ld bc, $01c0                                     ; $5446: $01 $c0 $01
	and b                                            ; $5449: $a0
	ld bc, $0700                                     ; $544a: $01 $00 $07
	pop bc                                           ; $544d: $c1
	ld e, c                                          ; $544e: $59
	db $e3                                           ; $544f: $e3
	nop                                              ; $5450: $00
	cp l                                             ; $5451: $bd
	and b                                            ; $5452: $a0
	add b                                            ; $5453: $80
	and b                                            ; $5454: $a0
	nop                                              ; $5455: $00
	nop                                              ; $5456: $00
	inc bc                                           ; $5457: $03
	db $e4                                           ; $5458: $e4
	nop                                              ; $5459: $00
	dec bc                                           ; $545a: $0b
	rst $38                                          ; $545b: $ff
	rlca                                             ; $545c: $07
	ld b, b                                          ; $545d: $40
	add b                                            ; $545e: $80
	and b                                            ; $545f: $a0
	nop                                              ; $5460: $00
	db $e4                                           ; $5461: $e4
	nop                                              ; $5462: $00
	and e                                            ; $5463: $a3
	jr z, jr_07e_546c                                ; $5464: $28 $06

	ret nz                                           ; $5466: $c0

	ld bc, $03a0                                     ; $5467: $01 $a0 $03
	nop                                              ; $546a: $00
	inc c                                            ; $546b: $0c

jr_07e_546c:
	sbc b                                            ; $546c: $98
	nop                                              ; $546d: $00
	dec d                                            ; $546e: $15
	add hl, bc                                       ; $546f: $09
	inc [hl]                                         ; $5470: $34
	add d                                            ; $5471: $82
	ret nz                                           ; $5472: $c0

	dec de                                           ; $5473: $1b
	pop de                                           ; $5474: $d1
	ld [bc], a                                       ; $5475: $02
	ret nc                                           ; $5476: $d0

	pop de                                           ; $5477: $d1
	ld a, [bc]                                       ; $5478: $0a
	pop hl                                           ; $5479: $e1
	ld [bc], a                                       ; $547a: $02
	inc bc                                           ; $547b: $03
	rrca                                             ; $547c: $0f
	ret nz                                           ; $547d: $c0

	ld bc, $03a0                                     ; $547e: $01 $a0 $03
	nop                                              ; $5481: $00
	dec de                                           ; $5482: $1b
	ld [bc], a                                       ; $5483: $02
	jp nc, $0ad3                                     ; $5484: $d2 $d3 $0a

	pop hl                                           ; $5487: $e1
	ld [bc], a                                       ; $5488: $02
	inc bc                                           ; $5489: $03
	inc de                                           ; $548a: $13
	ret nz                                           ; $548b: $c0

	ld bc, $03a0                                     ; $548c: $01 $a0 $03
	nop                                              ; $548f: $00
	dec h                                            ; $5490: $25
	ld bc, $0ad4                                     ; $5491: $01 $d4 $0a
	pop hl                                           ; $5494: $e1
	ld [bc], a                                       ; $5495: $02
	inc bc                                           ; $5496: $03
	inc de                                           ; $5497: $13
	ret nz                                           ; $5498: $c0

	ld bc, $03a0                                     ; $5499: $01 $a0 $03
	nop                                              ; $549c: $00
	dec l                                            ; $549d: $2d
	pop hl                                           ; $549e: $e1
	ld [bc], a                                       ; $549f: $02
	inc bc                                           ; $54a0: $03
	ld e, d                                          ; $54a1: $5a
	db $e4                                           ; $54a2: $e4
	ld bc, $0003                                     ; $54a3: $01 $03 $00
	dec [hl]                                         ; $54a6: $35
	add hl, bc                                       ; $54a7: $09
	inc l                                            ; $54a8: $2c
	pop hl                                           ; $54a9: $e1
	ld [bc], a                                       ; $54aa: $02
	inc bc                                           ; $54ab: $03
	rra                                              ; $54ac: $1f
	add d                                            ; $54ad: $82
	ret nz                                           ; $54ae: $c0

	dec de                                           ; $54af: $1b
	pop de                                           ; $54b0: $d1
	ld [bc], a                                       ; $54b1: $02
	ret nc                                           ; $54b2: $d0

	pop de                                           ; $54b3: $d1
	ld b, $c0                                        ; $54b4: $06 $c0
	ld bc, $03a0                                     ; $54b6: $01 $a0 $03
	nop                                              ; $54b9: $00
	ld a, [hl-]                                      ; $54ba: $3a
	ld [bc], a                                       ; $54bb: $02
	jp nc, $06d3                                     ; $54bc: $d2 $d3 $06

	ret nz                                           ; $54bf: $c0

	ld bc, $03a0                                     ; $54c0: $01 $a0 $03
	nop                                              ; $54c3: $00
	ld b, h                                          ; $54c4: $44
	ld bc, $06d4                                     ; $54c5: $01 $d4 $06
	ret nz                                           ; $54c8: $c0

	ld bc, $03a0                                     ; $54c9: $01 $a0 $03
	nop                                              ; $54cc: $00
	ld c, [hl]                                       ; $54cd: $4e
	pop hl                                           ; $54ce: $e1
	ld [bc], a                                       ; $54cf: $02
	inc bc                                           ; $54d0: $03
	ld a, [hl]                                       ; $54d1: $7e
	db $e4                                           ; $54d2: $e4
	nop                                              ; $54d3: $00
	db $d3                                           ; $54d4: $d3
	nop                                              ; $54d5: $00
	ld d, l                                          ; $54d6: $55
	add hl, bc                                       ; $54d7: $09
	inc l                                            ; $54d8: $2c
	pop hl                                           ; $54d9: $e1
	ld [bc], a                                       ; $54da: $02
	inc bc                                           ; $54db: $03
	dec de                                           ; $54dc: $1b
	add d                                            ; $54dd: $82
	ret nz                                           ; $54de: $c0

	dec de                                           ; $54df: $1b
	pop de                                           ; $54e0: $d1
	ld [bc], a                                       ; $54e1: $02
	ret nc                                           ; $54e2: $d0

	pop de                                           ; $54e3: $d1
	ld b, $c0                                        ; $54e4: $06 $c0
	ld bc, $03a0                                     ; $54e6: $01 $a0 $03
	nop                                              ; $54e9: $00
	ld e, c                                          ; $54ea: $59
	ld [bc], a                                       ; $54eb: $02
	jp nc, $06d3                                     ; $54ec: $d2 $d3 $06

	ret nz                                           ; $54ef: $c0

	ld bc, $03a0                                     ; $54f0: $01 $a0 $03
	nop                                              ; $54f3: $00
	ld h, b                                          ; $54f4: $60
	ld bc, $06d4                                     ; $54f5: $01 $d4 $06
	ret nz                                           ; $54f8: $c0

	ld bc, $03a0                                     ; $54f9: $01 $a0 $03
	nop                                              ; $54fc: $00
	ld l, b                                          ; $54fd: $68
	pop hl                                           ; $54fe: $e1
	ld [bc], a                                       ; $54ff: $02
	inc bc                                           ; $5500: $03
	ld [hl], l                                       ; $5501: $75
	db $e4                                           ; $5502: $e4
	nop                                              ; $5503: $00
	and e                                            ; $5504: $a3
	jr z, jr_07e_550d                                ; $5505: $28 $06

	ret nz                                           ; $5507: $c0

	ld bc, $03a0                                     ; $5508: $01 $a0 $03
	nop                                              ; $550b: $00
	ld l, [hl]                                       ; $550c: $6e

jr_07e_550d:
	sbc b                                            ; $550d: $98
	nop                                              ; $550e: $00
	ld [hl], h                                       ; $550f: $74
	add hl, bc                                       ; $5510: $09
	inc l                                            ; $5511: $2c
	pop hl                                           ; $5512: $e1
	ld [bc], a                                       ; $5513: $02
	inc bc                                           ; $5514: $03
	inc de                                           ; $5515: $13
	add d                                            ; $5516: $82
	ret nz                                           ; $5517: $c0

	dec de                                           ; $5518: $1b
	pop de                                           ; $5519: $d1
	ld [bc], a                                       ; $551a: $02
	ret nc                                           ; $551b: $d0

	pop de                                           ; $551c: $d1
	ld b, $c0                                        ; $551d: $06 $c0
	ld bc, $03a0                                     ; $551f: $01 $a0 $03
	nop                                              ; $5522: $00
	ld a, e                                          ; $5523: $7b
	ld [bc], a                                       ; $5524: $02
	jp nc, $06d3                                     ; $5525: $d2 $d3 $06

	ret nz                                           ; $5528: $c0

	ld bc, $03a0                                     ; $5529: $01 $a0 $03
	nop                                              ; $552c: $00
	add e                                            ; $552d: $83
	ld bc, $06d4                                     ; $552e: $01 $d4 $06
	ret nz                                           ; $5531: $c0

	ld bc, $03a0                                     ; $5532: $01 $a0 $03
	nop                                              ; $5535: $00
	adc e                                            ; $5536: $8b
	pop hl                                           ; $5537: $e1
	ld [bc], a                                       ; $5538: $02
	inc bc                                           ; $5539: $03
	ld h, e                                          ; $553a: $63
	db $e4                                           ; $553b: $e4
	nop                                              ; $553c: $00
	ld l, d                                          ; $553d: $6a
	nop                                              ; $553e: $00
	sub b                                            ; $553f: $90
	add hl, bc                                       ; $5540: $09
	inc [hl]                                         ; $5541: $34
	add d                                            ; $5542: $82
	ret nz                                           ; $5543: $c0

	dec de                                           ; $5544: $1b
	pop de                                           ; $5545: $d1
	ld [bc], a                                       ; $5546: $02
	ret nc                                           ; $5547: $d0

	pop de                                           ; $5548: $d1
	ld a, [bc]                                       ; $5549: $0a
	pop hl                                           ; $554a: $e1
	ld [bc], a                                       ; $554b: $02
	inc bc                                           ; $554c: $03
	dec de                                           ; $554d: $1b
	ret nz                                           ; $554e: $c0

	ld bc, $03a0                                     ; $554f: $01 $a0 $03
	nop                                              ; $5552: $00
	sub a                                            ; $5553: $97
	ld [bc], a                                       ; $5554: $02
	jp nc, $0ad3                                     ; $5555: $d2 $d3 $0a

	pop hl                                           ; $5558: $e1
	ld [bc], a                                       ; $5559: $02
	inc bc                                           ; $555a: $03
	rra                                              ; $555b: $1f
	ret nz                                           ; $555c: $c0

	ld bc, $03a0                                     ; $555d: $01 $a0 $03
	nop                                              ; $5560: $00
	sbc e                                            ; $5561: $9b
	ld bc, $0ad4                                     ; $5562: $01 $d4 $0a
	pop hl                                           ; $5565: $e1
	ld [bc], a                                       ; $5566: $02
	inc bc                                           ; $5567: $03
	rra                                              ; $5568: $1f
	ret nz                                           ; $5569: $c0

	ld bc, $03a0                                     ; $556a: $01 $a0 $03
	nop                                              ; $556d: $00
	and e                                            ; $556e: $a3
	pop hl                                           ; $556f: $e1
	ld [bc], a                                       ; $5570: $02
	inc bc                                           ; $5571: $03
	ld a, [hl]                                       ; $5572: $7e
	db $e4                                           ; $5573: $e4
	nop                                              ; $5574: $00
	ld [hl-], a                                      ; $5575: $32
	nop                                              ; $5576: $00
	xor b                                            ; $5577: $a8
	add hl, bc                                       ; $5578: $09
	inc l                                            ; $5579: $2c
	pop hl                                           ; $557a: $e1
	ld [bc], a                                       ; $557b: $02
	inc bc                                           ; $557c: $03
	dec de                                           ; $557d: $1b
	add d                                            ; $557e: $82
	ret nz                                           ; $557f: $c0

	dec de                                           ; $5580: $1b
	pop de                                           ; $5581: $d1
	ld [bc], a                                       ; $5582: $02
	ret nc                                           ; $5583: $d0

	pop de                                           ; $5584: $d1
	ld b, $c0                                        ; $5585: $06 $c0
	ld bc, $03a0                                     ; $5587: $01 $a0 $03
	nop                                              ; $558a: $00
	xor a                                            ; $558b: $af
	ld [bc], a                                       ; $558c: $02
	jp nc, $06d3                                     ; $558d: $d2 $d3 $06

	ret nz                                           ; $5590: $c0

	ld bc, $03a0                                     ; $5591: $01 $a0 $03
	nop                                              ; $5594: $00
	cp e                                             ; $5595: $bb
	ld bc, $06d4                                     ; $5596: $01 $d4 $06
	ret nz                                           ; $5599: $c0

	ld bc, $03a0                                     ; $559a: $01 $a0 $03
	nop                                              ; $559d: $00
	push bc                                          ; $559e: $c5
	pop hl                                           ; $559f: $e1
	ld [bc], a                                       ; $55a0: $02
	inc bc                                           ; $55a1: $03
	ld [hl], l                                       ; $55a2: $75
	db $e4                                           ; $55a3: $e4
	nop                                              ; $55a4: $00
	ld [bc], a                                       ; $55a5: $02
	add hl, bc                                       ; $55a6: $09
	ld c, $c1                                        ; $55a7: $0e $c1
	ld e, c                                          ; $55a9: $59
	db $e3                                           ; $55aa: $e3
	nop                                              ; $55ab: $00
	cp h                                             ; $55ac: $bc
	ret nz                                           ; $55ad: $c0

	ld d, [hl]                                       ; $55ae: $56
	pop de                                           ; $55af: $d1
	jp c, $e5d0                                      ; $55b0: $da $d0 $e5

	rla                                              ; $55b3: $17
	nop                                              ; $55b4: $00
	nop                                              ; $55b5: $00
	add hl, bc                                       ; $55b6: $09
	jr z, @-$2e                                      ; $55b7: $28 $d0

	add e                                            ; $55b9: $83
	ld bc, $d0de                                     ; $55ba: $01 $de $d0
	ret nz                                           ; $55bd: $c0

	ld bc, $03a0                                     ; $55be: $01 $a0 $03
	nop                                              ; $55c1: $00
	ld bc, $01c0                                     ; $55c2: $01 $c0 $01
	and b                                            ; $55c5: $a0
	ld bc, $0700                                     ; $55c6: $01 $00 $07
	pop bc                                           ; $55c9: $c1
	ld e, c                                          ; $55ca: $59
	db $e3                                           ; $55cb: $e3
	nop                                              ; $55cc: $00
	cp e                                             ; $55cd: $bb
	and b                                            ; $55ce: $a0
	add b                                            ; $55cf: $80
	and b                                            ; $55d0: $a0
	ld bc, $0300                                     ; $55d1: $01 $00 $03
	db $e4                                           ; $55d4: $e4
	nop                                              ; $55d5: $00
	dec bc                                           ; $55d6: $0b
	rst $38                                          ; $55d7: $ff
	rlca                                             ; $55d8: $07
	ld b, b                                          ; $55d9: $40
	add b                                            ; $55da: $80
	and b                                            ; $55db: $a0
	ld bc, $00e4                                     ; $55dc: $01 $e4 $00
	sbc e                                            ; $55df: $9b
	jr z, @+$08                                      ; $55e0: $28 $06

	ret nz                                           ; $55e2: $c0

	ld bc, $03a0                                     ; $55e3: $01 $a0 $03
	nop                                              ; $55e6: $00
	adc $90                                          ; $55e7: $ce $90
	nop                                              ; $55e9: $00
	call nc, $2c09                                   ; $55ea: $d4 $09 $2c
	pop hl                                           ; $55ed: $e1
	ld [bc], a                                       ; $55ee: $02
	inc bc                                           ; $55ef: $03
	inc de                                           ; $55f0: $13
	add d                                            ; $55f1: $82
	ret nz                                           ; $55f2: $c0

	dec de                                           ; $55f3: $1b
	pop de                                           ; $55f4: $d1
	ld [bc], a                                       ; $55f5: $02
	ret nc                                           ; $55f6: $d0

	pop de                                           ; $55f7: $d1
	ld b, $c0                                        ; $55f8: $06 $c0
	ld bc, $03a0                                     ; $55fa: $01 $a0 $03
	nop                                              ; $55fd: $00
	sub $02                                          ; $55fe: $d6 $02
	jp nc, $06d3                                     ; $5600: $d2 $d3 $06

	ret nz                                           ; $5603: $c0

	ld bc, $03a0                                     ; $5604: $01 $a0 $03
	nop                                              ; $5607: $00
	ldh [c], a                                       ; $5608: $e2
	ld bc, $06d4                                     ; $5609: $01 $d4 $06
	ret nz                                           ; $560c: $c0

	ld bc, $03a0                                     ; $560d: $01 $a0 $03
	nop                                              ; $5610: $00
	db $ed                                           ; $5611: $ed
	pop hl                                           ; $5612: $e1
	ld [bc], a                                       ; $5613: $02
	inc bc                                           ; $5614: $03
	ld h, e                                          ; $5615: $63
	db $e4                                           ; $5616: $e4
	nop                                              ; $5617: $00
	ei                                               ; $5618: $fb
	nop                                              ; $5619: $00
	ldh a, [c]                                       ; $561a: $f2
	add hl, bc                                       ; $561b: $09
	inc l                                            ; $561c: $2c
	pop hl                                           ; $561d: $e1
	ld [bc], a                                       ; $561e: $02
	inc bc                                           ; $561f: $03
	dec de                                           ; $5620: $1b
	add d                                            ; $5621: $82
	ret nz                                           ; $5622: $c0

	dec de                                           ; $5623: $1b
	pop de                                           ; $5624: $d1
	ld [bc], a                                       ; $5625: $02
	ret nc                                           ; $5626: $d0

	pop de                                           ; $5627: $d1
	ld b, $c0                                        ; $5628: $06 $c0
	ld bc, $03a0                                     ; $562a: $01 $a0 $03
	nop                                              ; $562d: $00
	ld a, [$d202]                                    ; $562e: $fa $02 $d2
	db $d3                                           ; $5631: $d3
	ld b, $c0                                        ; $5632: $06 $c0
	ld bc, $03a0                                     ; $5634: $01 $a0 $03
	ld bc, $0101                                     ; $5637: $01 $01 $01
	call nc, $c006                                   ; $563a: $d4 $06 $c0
	ld bc, $03a0                                     ; $563d: $01 $a0 $03
	ld bc, $e110                                     ; $5640: $01 $10 $e1
	ld [bc], a                                       ; $5643: $02
	inc bc                                           ; $5644: $03
	ld [hl], l                                       ; $5645: $75
	db $e4                                           ; $5646: $e4
	nop                                              ; $5647: $00
	rlc c                                            ; $5648: $cb $01
	rla                                              ; $564a: $17
	add hl, bc                                       ; $564b: $09
	inc l                                            ; $564c: $2c
	pop hl                                           ; $564d: $e1
	ld [bc], a                                       ; $564e: $02
	inc bc                                           ; $564f: $03
	rla                                              ; $5650: $17
	add d                                            ; $5651: $82
	ret nz                                           ; $5652: $c0

	dec de                                           ; $5653: $1b
	pop de                                           ; $5654: $d1
	ld [bc], a                                       ; $5655: $02
	ret nc                                           ; $5656: $d0

	pop de                                           ; $5657: $d1
	ld b, $c0                                        ; $5658: $06 $c0
	ld bc, $03a0                                     ; $565a: $01 $a0 $03
	ld bc, $0219                                     ; $565d: $01 $19 $02
	jp nc, $06d3                                     ; $5660: $d2 $d3 $06

	ret nz                                           ; $5663: $c0

	ld bc, $03a0                                     ; $5664: $01 $a0 $03
	ld bc, $0127                                     ; $5667: $01 $27 $01
	call nc, $c006                                   ; $566a: $d4 $06 $c0
	ld bc, $03a0                                     ; $566d: $01 $a0 $03
	ld bc, $e132                                     ; $5670: $01 $32 $e1
	ld [bc], a                                       ; $5673: $02
	inc bc                                           ; $5674: $03
	ld l, h                                          ; $5675: $6c
	db $e4                                           ; $5676: $e4
	nop                                              ; $5677: $00
	sbc e                                            ; $5678: $9b
	jr z, @+$08                                      ; $5679: $28 $06

	ret nz                                           ; $567b: $c0

	ld bc, $03a0                                     ; $567c: $01 $a0 $03
	ld bc, $903f                                     ; $567f: $01 $3f $90
	ld bc, $0949                                     ; $5682: $01 $49 $09
	inc l                                            ; $5685: $2c
	pop hl                                           ; $5686: $e1
	ld [bc], a                                       ; $5687: $02
	inc bc                                           ; $5688: $03
	inc de                                           ; $5689: $13
	add d                                            ; $568a: $82
	ret nz                                           ; $568b: $c0

	dec de                                           ; $568c: $1b
	pop de                                           ; $568d: $d1
	ld [bc], a                                       ; $568e: $02
	ret nc                                           ; $568f: $d0

	pop de                                           ; $5690: $d1
	ld b, $c0                                        ; $5691: $06 $c0
	ld bc, $03a0                                     ; $5693: $01 $a0 $03
	ld bc, $0250                                     ; $5696: $01 $50 $02
	jp nc, $06d3                                     ; $5699: $d2 $d3 $06

	ret nz                                           ; $569c: $c0

	ld bc, $03a0                                     ; $569d: $01 $a0 $03
	ld bc, $015a                                     ; $56a0: $01 $5a $01
	call nc, $c006                                   ; $56a3: $d4 $06 $c0
	ld bc, $03a0                                     ; $56a6: $01 $a0 $03
	ld bc, $e166                                     ; $56a9: $01 $66 $e1
	ld [bc], a                                       ; $56ac: $02
	inc bc                                           ; $56ad: $03
	ld h, e                                          ; $56ae: $63
	db $e4                                           ; $56af: $e4
	nop                                              ; $56b0: $00
	ld h, d                                          ; $56b1: $62
	ld bc, $096c                                     ; $56b2: $01 $6c $09
	inc l                                            ; $56b5: $2c
	pop hl                                           ; $56b6: $e1
	ld [bc], a                                       ; $56b7: $02
	inc bc                                           ; $56b8: $03
	dec de                                           ; $56b9: $1b
	add d                                            ; $56ba: $82
	ret nz                                           ; $56bb: $c0

	dec de                                           ; $56bc: $1b
	pop de                                           ; $56bd: $d1
	ld [bc], a                                       ; $56be: $02
	ret nc                                           ; $56bf: $d0

	pop de                                           ; $56c0: $d1
	ld b, $c0                                        ; $56c1: $06 $c0
	ld bc, $03a0                                     ; $56c3: $01 $a0 $03
	ld bc, $0271                                     ; $56c6: $01 $71 $02
	jp nc, $06d3                                     ; $56c9: $d2 $d3 $06

	ret nz                                           ; $56cc: $c0

	ld bc, $03a0                                     ; $56cd: $01 $a0 $03
	ld bc, $017d                                     ; $56d0: $01 $7d $01
	call nc, $c006                                   ; $56d3: $d4 $06 $c0
	ld bc, $03a0                                     ; $56d6: $01 $a0 $03
	ld bc, $e189                                     ; $56d9: $01 $89 $e1
	ld [bc], a                                       ; $56dc: $02
	inc bc                                           ; $56dd: $03
	ld [hl], l                                       ; $56de: $75
	db $e4                                           ; $56df: $e4
	nop                                              ; $56e0: $00
	ld [hl-], a                                      ; $56e1: $32
	ld bc, $0990                                     ; $56e2: $01 $90 $09
	inc l                                            ; $56e5: $2c
	pop hl                                           ; $56e6: $e1
	ld [bc], a                                       ; $56e7: $02
	inc bc                                           ; $56e8: $03
	rla                                              ; $56e9: $17
	add d                                            ; $56ea: $82
	ret nz                                           ; $56eb: $c0

	dec de                                           ; $56ec: $1b
	pop de                                           ; $56ed: $d1
	ld [bc], a                                       ; $56ee: $02
	ret nc                                           ; $56ef: $d0

	pop de                                           ; $56f0: $d1
	ld b, $c0                                        ; $56f1: $06 $c0
	ld bc, $03a0                                     ; $56f3: $01 $a0 $03
	ld bc, $0297                                     ; $56f6: $01 $97 $02
	jp nc, $06d3                                     ; $56f9: $d2 $d3 $06

	ret nz                                           ; $56fc: $c0

	ld bc, $03a0                                     ; $56fd: $01 $a0 $03
	ld bc, $01a2                                     ; $5700: $01 $a2 $01
	call nc, $c006                                   ; $5703: $d4 $06 $c0
	ld bc, $03a0                                     ; $5706: $01 $a0 $03
	ld bc, $e1aa                                     ; $5709: $01 $aa $e1
	ld [bc], a                                       ; $570c: $02
	inc bc                                           ; $570d: $03
	ld l, h                                          ; $570e: $6c
	db $e4                                           ; $570f: $e4
	nop                                              ; $5710: $00
	ld [bc], a                                       ; $5711: $02
	add hl, bc                                       ; $5712: $09
	ld c, $c1                                        ; $5713: $0e $c1
	ld e, c                                          ; $5715: $59
	db $e3                                           ; $5716: $e3
	nop                                              ; $5717: $00
	cp d                                             ; $5718: $ba
	ret nz                                           ; $5719: $c0

	ld d, [hl]                                       ; $571a: $56
	pop de                                           ; $571b: $d1
	db $db                                           ; $571c: $db
	ret nc                                           ; $571d: $d0

	push hl                                          ; $571e: $e5
	rla                                              ; $571f: $17
	nop                                              ; $5720: $00
	nop                                              ; $5721: $00
	add hl, bc                                       ; $5722: $09
	rrca                                             ; $5723: $0f
	ret nz                                           ; $5724: $c0

	ld bc, $03a0                                     ; $5725: $01 $a0 $03
	nop                                              ; $5728: $00
	ld bc, $01c0                                     ; $5729: $01 $c0 $01
	and b                                            ; $572c: $a0
	ld bc, $b501                                     ; $572d: $01 $01 $b5
	db $e4                                           ; $5730: $e4
	nop                                              ; $5731: $00
	ld [bc], a                                       ; $5732: $02
	inc l                                            ; $5733: $2c
	dec b                                            ; $5734: $05
	pop bc                                           ; $5735: $c1
	ld e, c                                          ; $5736: $59
	db $e3                                           ; $5737: $e3
	nop                                              ; $5738: $00
	adc d                                            ; $5739: $8a
	ld c, d                                          ; $573a: $4a
	cp $08                                           ; $573b: $fe $08
	db $fc                                           ; $573d: $fc
	ret nz                                           ; $573e: $c0

	ld h, a                                          ; $573f: $67
	ret nc                                           ; $5740: $d0

	db $fc                                           ; $5741: $fc
	ret nz                                           ; $5742: $c0

	ld l, c                                          ; $5743: $69
	pop de                                           ; $5744: $d1
	jr z, @+$08                                      ; $5745: $28 $06

	ret nz                                           ; $5747: $c0

	ld bc, $01a0                                     ; $5748: $01 $a0 $01
	ld bc, $33b9                                     ; $574b: $01 $b9 $33
	ld bc, $28be                                     ; $574e: $01 $be $28
	inc c                                            ; $5751: $0c
	ret nz                                           ; $5752: $c0

	ld bc, $01a0                                     ; $5753: $01 $a0 $01
	ld bc, $c0c1                                     ; $5756: $01 $c1 $c0
	ld bc, $03a0                                     ; $5759: $01 $a0 $03
	ld bc, $1dc8                                     ; $575c: $01 $c8 $1d
	ld bc, $09d0                                     ; $575f: $01 $d0 $09
	inc d                                            ; $5762: $14
	ret nz                                           ; $5763: $c0

	ld bc, $03a0                                     ; $5764: $01 $a0 $03
	ld bc, $d0d2                                     ; $5767: $01 $d2 $d0
	adc e                                            ; $576a: $8b
	and b                                            ; $576b: $a0
	ld [bc], a                                       ; $576c: $02
	or b                                             ; $576d: $b0
	ld a, d                                          ; $576e: $7a
	ret nc                                           ; $576f: $d0

	add e                                            ; $5770: $83
	ld bc, $d7de                                     ; $5771: $01 $de $d7
	db $e4                                           ; $5774: $e4
	ld b, $a0                                        ; $5775: $06 $a0
	ld bc, $00d7                                     ; $5777: $01 $d7 $00
	nop                                              ; $577a: $00
	dec bc                                           ; $577b: $0b
	ld bc, $00d9                                     ; $577c: $01 $d9 $00
	nop                                              ; $577f: $00
	ld b, $d1                                        ; $5780: $06 $d1
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	ld [bc], a                                       ; $5784: $02
	jr z, @+$08                                      ; $5785: $28 $06

	ret nz                                           ; $5787: $c0

	ld bc, $03a0                                     ; $5788: $01 $a0 $03
	ld bc, $70db                                     ; $578b: $01 $db $70
	ei                                               ; $578e: $fb
	add b                                            ; $578f: $80
	ld [bc], a                                       ; $5790: $02
	ld d, e                                          ; $5791: $53
	ld [de], a                                       ; $5792: $12
	ld bc, $09de                                     ; $5793: $01 $de $09
	ld c, $d0                                        ; $5796: $0e $d0
	add e                                            ; $5798: $83
	ld bc, $d4de                                     ; $5799: $01 $de $d4
	ret nc                                           ; $579c: $d0

	adc e                                            ; $579d: $8b
	and b                                            ; $579e: $a0
	ld [bc], a                                       ; $579f: $02
	or b                                             ; $57a0: $b0
	ld a, e                                          ; $57a1: $7b
	db $e4                                           ; $57a2: $e4
	inc b                                            ; $57a3: $04
	rrca                                             ; $57a4: $0f
	ei                                               ; $57a5: $fb
	pop af                                           ; $57a6: $f1
	add b                                            ; $57a7: $80
	ld [bc], a                                       ; $57a8: $02
	ld d, e                                          ; $57a9: $53
	ld [de], a                                       ; $57aa: $12
	ld bc, $09e0                                     ; $57ab: $01 $e0 $09
	ld c, $d0                                        ; $57ae: $0e $d0
	add e                                            ; $57b0: $83
	ld bc, $d1de                                     ; $57b1: $01 $de $d1
	ret nc                                           ; $57b4: $d0

	adc e                                            ; $57b5: $8b
	and b                                            ; $57b6: $a0
	ld [bc], a                                       ; $57b7: $02
	or b                                             ; $57b8: $b0
	ld a, h                                          ; $57b9: $7c
	db $e4                                           ; $57ba: $e4
	nop                                              ; $57bb: $00
	ld b, e                                          ; $57bc: $43
	ei                                               ; $57bd: $fb
	add b                                            ; $57be: $80
	ld [bc], a                                       ; $57bf: $02
	ld e, d                                          ; $57c0: $5a
	ld [de], a                                       ; $57c1: $12
	ld bc, $09e2                                     ; $57c2: $01 $e2 $09
	ld c, $d0                                        ; $57c5: $0e $d0
	add e                                            ; $57c7: $83
	ld bc, $d5de                                     ; $57c8: $01 $de $d5
	ret nc                                           ; $57cb: $d0

	adc e                                            ; $57cc: $8b
	and b                                            ; $57cd: $a0
	ld [bc], a                                       ; $57ce: $02
	or b                                             ; $57cf: $b0
	ld a, l                                          ; $57d0: $7d
	db $e4                                           ; $57d1: $e4
	inc b                                            ; $57d2: $04

Jump_07e_57d3:
	xor $fb                                          ; $57d3: $ee $fb
	pop af                                           ; $57d5: $f1
	add b                                            ; $57d6: $80
	ld [bc], a                                       ; $57d7: $02
	ld e, d                                          ; $57d8: $5a
	ld [de], a                                       ; $57d9: $12
	ld bc, $09e4                                     ; $57da: $01 $e4 $09
	ld c, $d0                                        ; $57dd: $0e $d0
	add e                                            ; $57df: $83
	ld bc, $d2de                                     ; $57e0: $01 $de $d2
	ret nc                                           ; $57e3: $d0

	adc e                                            ; $57e4: $8b
	and b                                            ; $57e5: $a0
	ld [bc], a                                       ; $57e6: $02
	or b                                             ; $57e7: $b0
	ld a, [hl]                                       ; $57e8: $7e
	db $e4                                           ; $57e9: $e4
	ld bc, $016f                                     ; $57ea: $01 $6f $01
	and $09                                          ; $57ed: $e6 $09
	ld c, $d0                                        ; $57ef: $0e $d0
	add e                                            ; $57f1: $83
	ld bc, $d3de                                     ; $57f2: $01 $de $d3
	ret nc                                           ; $57f5: $d0

	adc e                                            ; $57f6: $8b
	and b                                            ; $57f7: $a0
	ld [bc], a                                       ; $57f8: $02
	or b                                             ; $57f9: $b0
	ld a, a                                          ; $57fa: $7f
	db $e4                                           ; $57fb: $e4
	ld [bc], a                                       ; $57fc: $02
	or d                                             ; $57fd: $b2
	add hl, bc                                       ; $57fe: $09
	daa                                              ; $57ff: $27
	pop bc                                           ; $5800: $c1
	ld e, c                                          ; $5801: $59
	db $e3                                           ; $5802: $e3
	nop                                              ; $5803: $00
	adc h                                            ; $5804: $8c
	ret nz                                           ; $5805: $c0

	ld bc, $03a0                                     ; $5806: $01 $a0 $03
	ld bc, $c0e8                                     ; $5809: $01 $e8 $c0
	ld bc, $01a0                                     ; $580c: $01 $a0 $01
	ld bc, $e1ed                                     ; $580f: $01 $ed $e1
	ld [bc], a                                       ; $5812: $02
	rlca                                             ; $5813: $07
	call nz, $80a0                                   ; $5814: $c4 $a0 $80
	and b                                            ; $5817: $a0
	ld c, $00                                        ; $5818: $0e $00
	inc bc                                           ; $581a: $03
	db $e4                                           ; $581b: $e4
	nop                                              ; $581c: $00
	dec bc                                           ; $581d: $0b
	rst $38                                          ; $581e: $ff
	rlca                                             ; $581f: $07
	ld b, b                                          ; $5820: $40
	add b                                            ; $5821: $80
	and b                                            ; $5822: $a0
	ld c, $e4                                        ; $5823: $0e $e4
	nop                                              ; $5825: $00
	sbc e                                            ; $5826: $9b
	jr z, @+$08                                      ; $5827: $28 $06

	ret nz                                           ; $5829: $c0

	ld bc, $03a0                                     ; $582a: $01 $a0 $03
	ld bc, $90f2                                     ; $582d: $01 $f2 $90
	ld bc, $09f7                                     ; $5830: $01 $f7 $09
	inc l                                            ; $5833: $2c
	pop hl                                           ; $5834: $e1
	ld [bc], a                                       ; $5835: $02
	inc bc                                           ; $5836: $03
	rla                                              ; $5837: $17
	add d                                            ; $5838: $82
	ret nz                                           ; $5839: $c0

	dec de                                           ; $583a: $1b
	pop de                                           ; $583b: $d1
	ld [bc], a                                       ; $583c: $02
	ret nc                                           ; $583d: $d0

	pop de                                           ; $583e: $d1
	ld b, $c0                                        ; $583f: $06 $c0
	ld bc, $03a0                                     ; $5841: $01 $a0 $03
	ld [bc], a                                       ; $5844: $02
	nop                                              ; $5845: $00
	ld [bc], a                                       ; $5846: $02
	jp nc, $06d3                                     ; $5847: $d2 $d3 $06

	ret nz                                           ; $584a: $c0

	ld bc, $03a0                                     ; $584b: $01 $a0 $03
	ld [bc], a                                       ; $584e: $02
	dec c                                            ; $584f: $0d
	ld bc, $06d4                                     ; $5850: $01 $d4 $06
	ret nz                                           ; $5853: $c0

	ld bc, $03a0                                     ; $5854: $01 $a0 $03
	ld [bc], a                                       ; $5857: $02
	dec d                                            ; $5858: $15
	pop hl                                           ; $5859: $e1
	ld [bc], a                                       ; $585a: $02
	inc bc                                           ; $585b: $03
	ld l, h                                          ; $585c: $6c
	db $e4                                           ; $585d: $e4
	rlca                                             ; $585e: $07
	ld bc, $1802                                     ; $585f: $01 $02 $18
	add hl, bc                                       ; $5862: $09
	inc l                                            ; $5863: $2c
	pop hl                                           ; $5864: $e1
	ld [bc], a                                       ; $5865: $02
	inc bc                                           ; $5866: $03
	rra                                              ; $5867: $1f
	add d                                            ; $5868: $82
	ret nz                                           ; $5869: $c0

	dec de                                           ; $586a: $1b

jr_07e_586b:
	pop de                                           ; $586b: $d1
	ld [bc], a                                       ; $586c: $02
	ret nc                                           ; $586d: $d0

	pop de                                           ; $586e: $d1
	ld b, $c0                                        ; $586f: $06 $c0
	ld bc, $03a0                                     ; $5871: $01 $a0 $03
	ld [bc], a                                       ; $5874: $02
	ld a, [de]                                       ; $5875: $1a
	ld [bc], a                                       ; $5876: $02
	jp nc, $06d3                                     ; $5877: $d2 $d3 $06

	ret nz                                           ; $587a: $c0

	ld bc, $03a0                                     ; $587b: $01 $a0 $03
	ld [bc], a                                       ; $587e: $02
	ld hl, $d401                                     ; $587f: $21 $01 $d4
	ld b, $c0                                        ; $5882: $06 $c0
	ld bc, $03a0                                     ; $5884: $01 $a0 $03
	ld [bc], a                                       ; $5887: $02
	jr z, jr_07e_586b                                ; $5888: $28 $e1

	ld [bc], a                                       ; $588a: $02
	inc bc                                           ; $588b: $03
	ld a, [hl]                                       ; $588c: $7e
	db $e4                                           ; $588d: $e4
	ld b, $d1                                        ; $588e: $06 $d1
	ld [bc], a                                       ; $5890: $02
	jr nc, jr_07e_589c                               ; $5891: $30 $09

	inc l                                            ; $5893: $2c
	pop hl                                           ; $5894: $e1
	ld [bc], a                                       ; $5895: $02
	inc bc                                           ; $5896: $03
	dec de                                           ; $5897: $1b
	add d                                            ; $5898: $82
	ret nz                                           ; $5899: $c0

	dec de                                           ; $589a: $1b
	pop de                                           ; $589b: $d1

jr_07e_589c:
	ld [bc], a                                       ; $589c: $02
	ret nc                                           ; $589d: $d0

	pop de                                           ; $589e: $d1
	ld b, $c0                                        ; $589f: $06 $c0
	ld bc, $03a0                                     ; $58a1: $01 $a0 $03
	ld [bc], a                                       ; $58a4: $02
	ld [hl], $02                                     ; $58a5: $36 $02
	jp nc, $06d3                                     ; $58a7: $d2 $d3 $06

	ret nz                                           ; $58aa: $c0

	ld bc, $03a0                                     ; $58ab: $01 $a0 $03
	ld [bc], a                                       ; $58ae: $02
	inc a                                            ; $58af: $3c
	ld bc, $06d4                                     ; $58b0: $01 $d4 $06
	ret nz                                           ; $58b3: $c0

	ld bc, $03a0                                     ; $58b4: $01 $a0 $03
	ld [bc], a                                       ; $58b7: $02
	ld c, b                                          ; $58b8: $48
	pop hl                                           ; $58b9: $e1
	ld [bc], a                                       ; $58ba: $02
	inc bc                                           ; $58bb: $03
	ld [hl], l                                       ; $58bc: $75
	db $e4                                           ; $58bd: $e4
	ld b, $a1                                        ; $58be: $06 $a1
	jr z, jr_07e_58c8                                ; $58c0: $28 $06

	ret nz                                           ; $58c2: $c0

	ld bc, $03a0                                     ; $58c3: $01 $a0 $03
	ld [bc], a                                       ; $58c6: $02
	ld d, h                                          ; $58c7: $54

jr_07e_58c8:
	sub b                                            ; $58c8: $90
	ld [bc], a                                       ; $58c9: $02
	ld e, e                                          ; $58ca: $5b
	add hl, bc                                       ; $58cb: $09
	inc l                                            ; $58cc: $2c
	pop hl                                           ; $58cd: $e1
	ld [bc], a                                       ; $58ce: $02
	inc bc                                           ; $58cf: $03
	rla                                              ; $58d0: $17
	add d                                            ; $58d1: $82
	ret nz                                           ; $58d2: $c0

	dec de                                           ; $58d3: $1b
	pop de                                           ; $58d4: $d1
	ld [bc], a                                       ; $58d5: $02
	ret nc                                           ; $58d6: $d0

	pop de                                           ; $58d7: $d1
	ld b, $c0                                        ; $58d8: $06 $c0
	ld bc, $03a0                                     ; $58da: $01 $a0 $03
	ld [bc], a                                       ; $58dd: $02
	ld h, h                                          ; $58de: $64
	ld [bc], a                                       ; $58df: $02
	jp nc, $06d3                                     ; $58e0: $d2 $d3 $06

	ret nz                                           ; $58e3: $c0

	ld bc, $03a0                                     ; $58e4: $01 $a0 $03
	ld [bc], a                                       ; $58e7: $02
	ld l, a                                          ; $58e8: $6f
	ld bc, $06d4                                     ; $58e9: $01 $d4 $06
	ret nz                                           ; $58ec: $c0

	ld bc, $03a0                                     ; $58ed: $01 $a0 $03
	ld [bc], a                                       ; $58f0: $02
	halt                                             ; $58f1: $76
	pop hl                                           ; $58f2: $e1
	ld [bc], a                                       ; $58f3: $02
	inc bc                                           ; $58f4: $03
	ld l, h                                          ; $58f5: $6c
	db $e4                                           ; $58f6: $e4
	ld b, $68                                        ; $58f7: $06 $68
	ld [bc], a                                       ; $58f9: $02
	ld a, a                                          ; $58fa: $7f
	add hl, bc                                       ; $58fb: $09
	inc l                                            ; $58fc: $2c
	pop hl                                           ; $58fd: $e1
	ld [bc], a                                       ; $58fe: $02
	inc bc                                           ; $58ff: $03
	dec de                                           ; $5900: $1b
	add d                                            ; $5901: $82
	ret nz                                           ; $5902: $c0

	dec de                                           ; $5903: $1b
	pop de                                           ; $5904: $d1
	ld [bc], a                                       ; $5905: $02
	ret nc                                           ; $5906: $d0

	pop de                                           ; $5907: $d1
	ld b, $c0                                        ; $5908: $06 $c0
	ld bc, $03a0                                     ; $590a: $01 $a0 $03
	ld [bc], a                                       ; $590d: $02
	add [hl]                                         ; $590e: $86
	ld [bc], a                                       ; $590f: $02
	jp nc, $06d3                                     ; $5910: $d2 $d3 $06

	ret nz                                           ; $5913: $c0

	ld bc, $03a0                                     ; $5914: $01 $a0 $03
	ld [bc], a                                       ; $5917: $02
	adc l                                            ; $5918: $8d
	ld bc, $06d4                                     ; $5919: $01 $d4 $06
	ret nz                                           ; $591c: $c0

	ld bc, $03a0                                     ; $591d: $01 $a0 $03
	ld [bc], a                                       ; $5920: $02
	sub l                                            ; $5921: $95
	pop hl                                           ; $5922: $e1
	ld [bc], a                                       ; $5923: $02
	inc bc                                           ; $5924: $03
	ld [hl], l                                       ; $5925: $75
	db $e4                                           ; $5926: $e4
	ld b, $38                                        ; $5927: $06 $38
	ld [bc], a                                       ; $5929: $02
	sbc l                                            ; $592a: $9d
	add hl, bc                                       ; $592b: $09
	inc l                                            ; $592c: $2c
	pop hl                                           ; $592d: $e1
	ld [bc], a                                       ; $592e: $02
	inc bc                                           ; $592f: $03
	dec de                                           ; $5930: $1b
	add d                                            ; $5931: $82
	ret nz                                           ; $5932: $c0

	dec de                                           ; $5933: $1b
	pop de                                           ; $5934: $d1
	ld [bc], a                                       ; $5935: $02
	ret nc                                           ; $5936: $d0

	pop de                                           ; $5937: $d1
	ld b, $c0                                        ; $5938: $06 $c0
	ld bc, $03a0                                     ; $593a: $01 $a0 $03
	ld [bc], a                                       ; $593d: $02
	and c                                            ; $593e: $a1
	ld [bc], a                                       ; $593f: $02
	jp nc, $06d3                                     ; $5940: $d2 $d3 $06

	ret nz                                           ; $5943: $c0

	ld bc, $03a0                                     ; $5944: $01 $a0 $03
	ld [bc], a                                       ; $5947: $02
	xor e                                            ; $5948: $ab
	ld bc, $06d4                                     ; $5949: $01 $d4 $06
	ret nz                                           ; $594c: $c0

	ld bc, $03a0                                     ; $594d: $01 $a0 $03
	ld [bc], a                                       ; $5950: $02
	or e                                             ; $5951: $b3
	pop hl                                           ; $5952: $e1
	ld [bc], a                                       ; $5953: $02
	inc bc                                           ; $5954: $03
	ld [hl], l                                       ; $5955: $75
	db $e4                                           ; $5956: $e4
	ld b, $08                                        ; $5957: $06 $08
	add hl, bc                                       ; $5959: $09
	ld hl, $59c1                                     ; $595a: $21 $c1 $59
	db $e3                                           ; $595d: $e3
	nop                                              ; $595e: $00
	adc l                                            ; $595f: $8d
	ret nz                                           ; $5960: $c0

	ld bc, $03a0                                     ; $5961: $01 $a0 $03
	ld [bc], a                                       ; $5964: $02
	cp d                                             ; $5965: $ba
	pop hl                                           ; $5966: $e1
	ld [bc], a                                       ; $5967: $02
	rlca                                             ; $5968: $07
	db $e3                                           ; $5969: $e3
	and b                                            ; $596a: $a0
	add b                                            ; $596b: $80
	and b                                            ; $596c: $a0
	rrca                                             ; $596d: $0f
	nop                                              ; $596e: $00
	inc bc                                           ; $596f: $03
	db $e4                                           ; $5970: $e4
	nop                                              ; $5971: $00
	dec bc                                           ; $5972: $0b
	rst $38                                          ; $5973: $ff
	rlca                                             ; $5974: $07
	ld b, b                                          ; $5975: $40
	add b                                            ; $5976: $80
	and b                                            ; $5977: $a0
	rrca                                             ; $5978: $0f
	db $e4                                           ; $5979: $e4
	nop                                              ; $597a: $00
	sbc e                                            ; $597b: $9b
	jr z, jr_07e_5984                                ; $597c: $28 $06

	ret nz                                           ; $597e: $c0

	ld bc, $03a0                                     ; $597f: $01 $a0 $03
	ld [bc], a                                       ; $5982: $02
	cp [hl]                                          ; $5983: $be

jr_07e_5984:
	sub b                                            ; $5984: $90
	ld [bc], a                                       ; $5985: $02
	call nz, $2c09                                   ; $5986: $c4 $09 $2c
	pop hl                                           ; $5989: $e1
	ld [bc], a                                       ; $598a: $02
	inc bc                                           ; $598b: $03
	rrca                                             ; $598c: $0f
	add d                                            ; $598d: $82
	ret nz                                           ; $598e: $c0

	dec de                                           ; $598f: $1b
	pop de                                           ; $5990: $d1
	ld [bc], a                                       ; $5991: $02
	ret nc                                           ; $5992: $d0

	pop de                                           ; $5993: $d1
	ld b, $c0                                        ; $5994: $06 $c0
	ld bc, $03a0                                     ; $5996: $01 $a0 $03
	ld [bc], a                                       ; $5999: $02
	add $02                                          ; $599a: $c6 $02
	jp nc, $06d3                                     ; $599c: $d2 $d3 $06

	ret nz                                           ; $599f: $c0

	ld bc, $03a0                                     ; $59a0: $01 $a0 $03
	ld [bc], a                                       ; $59a3: $02
	call $d401                                       ; $59a4: $cd $01 $d4
	ld b, $c0                                        ; $59a7: $06 $c0
	ld bc, $03a0                                     ; $59a9: $01 $a0 $03
	ld [bc], a                                       ; $59ac: $02
	sub $e1                                          ; $59ad: $d6 $e1
	ld [bc], a                                       ; $59af: $02
	inc bc                                           ; $59b0: $03
	ld e, d                                          ; $59b1: $5a
	db $e4                                           ; $59b2: $e4
	dec b                                            ; $59b3: $05
	xor h                                            ; $59b4: $ac
	ld [bc], a                                       ; $59b5: $02
	sbc $09                                          ; $59b6: $de $09
	inc l                                            ; $59b8: $2c
	pop hl                                           ; $59b9: $e1
	ld [bc], a                                       ; $59ba: $02
	inc bc                                           ; $59bb: $03
	rra                                              ; $59bc: $1f
	add d                                            ; $59bd: $82
	ret nz                                           ; $59be: $c0

	dec de                                           ; $59bf: $1b
	pop de                                           ; $59c0: $d1

Jump_07e_59c1:
	ld [bc], a                                       ; $59c1: $02
	ret nc                                           ; $59c2: $d0

	pop de                                           ; $59c3: $d1
	ld b, $c0                                        ; $59c4: $06 $c0
	ld bc, $03a0                                     ; $59c6: $01 $a0 $03
	ld [bc], a                                       ; $59c9: $02
	ldh [rSC], a                                     ; $59ca: $e0 $02
	jp nc, $06d3                                     ; $59cc: $d2 $d3 $06

	ret nz                                           ; $59cf: $c0

	ld bc, $03a0                                     ; $59d0: $01 $a0 $03
	ld [bc], a                                       ; $59d3: $02
	db $e3                                           ; $59d4: $e3
	ld bc, $06d4                                     ; $59d5: $01 $d4 $06
	ret nz                                           ; $59d8: $c0

	ld bc, $03a0                                     ; $59d9: $01 $a0 $03
	ld [bc], a                                       ; $59dc: $02
	pop af                                           ; $59dd: $f1
	pop hl                                           ; $59de: $e1
	ld [bc], a                                       ; $59df: $02
	inc bc                                           ; $59e0: $03
	ld a, [hl]                                       ; $59e1: $7e
	db $e4                                           ; $59e2: $e4
	dec b                                            ; $59e3: $05
	ld a, h                                          ; $59e4: $7c
	inc bc                                           ; $59e5: $03
	ld bc, $2c09                                     ; $59e6: $01 $09 $2c
	pop hl                                           ; $59e9: $e1
	ld [bc], a                                       ; $59ea: $02
	inc bc                                           ; $59eb: $03
	rla                                              ; $59ec: $17
	add d                                            ; $59ed: $82
	ret nz                                           ; $59ee: $c0

	dec de                                           ; $59ef: $1b
	pop de                                           ; $59f0: $d1
	ld [bc], a                                       ; $59f1: $02
	ret nc                                           ; $59f2: $d0

	pop de                                           ; $59f3: $d1
	ld b, $c0                                        ; $59f4: $06 $c0
	ld bc, $03a0                                     ; $59f6: $01 $a0 $03
	inc bc                                           ; $59f9: $03
	rlca                                             ; $59fa: $07
	ld [bc], a                                       ; $59fb: $02
	jp nc, $06d3                                     ; $59fc: $d2 $d3 $06

	ret nz                                           ; $59ff: $c0

	ld bc, $03a0                                     ; $5a00: $01 $a0 $03
	inc bc                                           ; $5a03: $03
	dec c                                            ; $5a04: $0d
	ld bc, $06d4                                     ; $5a05: $01 $d4 $06
	ret nz                                           ; $5a08: $c0

	ld bc, $03a0                                     ; $5a09: $01 $a0 $03
	inc bc                                           ; $5a0c: $03
	inc d                                            ; $5a0d: $14
	pop hl                                           ; $5a0e: $e1
	ld [bc], a                                       ; $5a0f: $02
	inc bc                                           ; $5a10: $03
	ld l, h                                          ; $5a11: $6c
	db $e4                                           ; $5a12: $e4
	dec b                                            ; $5a13: $05
	ld c, h                                          ; $5a14: $4c
	jr z, jr_07e_5a1d                                ; $5a15: $28 $06

	ret nz                                           ; $5a17: $c0

	ld bc, $03a0                                     ; $5a18: $01 $a0 $03
	inc bc                                           ; $5a1b: $03
	add hl, de                                       ; $5a1c: $19

jr_07e_5a1d:
	sub b                                            ; $5a1d: $90
	inc bc                                           ; $5a1e: $03
	inc h                                            ; $5a1f: $24
	add hl, bc                                       ; $5a20: $09
	inc l                                            ; $5a21: $2c
	pop hl                                           ; $5a22: $e1
	ld [bc], a                                       ; $5a23: $02
	inc bc                                           ; $5a24: $03
	rla                                              ; $5a25: $17
	add d                                            ; $5a26: $82
	ret nz                                           ; $5a27: $c0

	dec de                                           ; $5a28: $1b
	pop de                                           ; $5a29: $d1
	ld [bc], a                                       ; $5a2a: $02
	ret nc                                           ; $5a2b: $d0

	pop de                                           ; $5a2c: $d1
	ld b, $c0                                        ; $5a2d: $06 $c0
	ld bc, $03a0                                     ; $5a2f: $01 $a0 $03
	inc bc                                           ; $5a32: $03
	ld a, [hl+]                                      ; $5a33: $2a
	ld [bc], a                                       ; $5a34: $02
	jp nc, $06d3                                     ; $5a35: $d2 $d3 $06

	ret nz                                           ; $5a38: $c0

	ld bc, $03a0                                     ; $5a39: $01 $a0 $03
	inc bc                                           ; $5a3c: $03
	inc [hl]                                         ; $5a3d: $34
	ld bc, $06d4                                     ; $5a3e: $01 $d4 $06
	ret nz                                           ; $5a41: $c0

	ld bc, $03a0                                     ; $5a42: $01 $a0 $03
	inc bc                                           ; $5a45: $03
	ld a, $e1                                        ; $5a46: $3e $e1
	ld [bc], a                                       ; $5a48: $02
	inc bc                                           ; $5a49: $03
	ld l, h                                          ; $5a4a: $6c
	db $e4                                           ; $5a4b: $e4
	dec b                                            ; $5a4c: $05
	inc de                                           ; $5a4d: $13
	inc bc                                           ; $5a4e: $03
	ld b, h                                          ; $5a4f: $44
	add hl, bc                                       ; $5a50: $09
	inc l                                            ; $5a51: $2c
	pop hl                                           ; $5a52: $e1
	ld [bc], a                                       ; $5a53: $02
	inc bc                                           ; $5a54: $03
	dec de                                           ; $5a55: $1b
	add d                                            ; $5a56: $82
	ret nz                                           ; $5a57: $c0

	dec de                                           ; $5a58: $1b
	pop de                                           ; $5a59: $d1
	ld [bc], a                                       ; $5a5a: $02
	ret nc                                           ; $5a5b: $d0

	pop de                                           ; $5a5c: $d1
	ld b, $c0                                        ; $5a5d: $06 $c0
	ld bc, $03a0                                     ; $5a5f: $01 $a0 $03
	inc bc                                           ; $5a62: $03
	ld c, h                                          ; $5a63: $4c
	ld [bc], a                                       ; $5a64: $02
	jp nc, $06d3                                     ; $5a65: $d2 $d3 $06

	ret nz                                           ; $5a68: $c0

	ld bc, $03a0                                     ; $5a69: $01 $a0 $03
	inc bc                                           ; $5a6c: $03
	ld d, e                                          ; $5a6d: $53
	ld bc, $06d4                                     ; $5a6e: $01 $d4 $06
	ret nz                                           ; $5a71: $c0

	ld bc, $03a0                                     ; $5a72: $01 $a0 $03
	inc bc                                           ; $5a75: $03
	ld e, e                                          ; $5a76: $5b
	pop hl                                           ; $5a77: $e1
	ld [bc], a                                       ; $5a78: $02
	inc bc                                           ; $5a79: $03
	ld [hl], l                                       ; $5a7a: $75
	db $e4                                           ; $5a7b: $e4
	inc b                                            ; $5a7c: $04
	db $e3                                           ; $5a7d: $e3
	inc bc                                           ; $5a7e: $03
	ld h, e                                          ; $5a7f: $63
	add hl, bc                                       ; $5a80: $09
	inc l                                            ; $5a81: $2c
	pop hl                                           ; $5a82: $e1
	ld [bc], a                                       ; $5a83: $02
	inc bc                                           ; $5a84: $03
	dec de                                           ; $5a85: $1b
	add d                                            ; $5a86: $82
	ret nz                                           ; $5a87: $c0

	dec de                                           ; $5a88: $1b
	pop de                                           ; $5a89: $d1
	ld [bc], a                                       ; $5a8a: $02
	ret nc                                           ; $5a8b: $d0

	pop de                                           ; $5a8c: $d1
	ld b, $c0                                        ; $5a8d: $06 $c0
	ld bc, $03a0                                     ; $5a8f: $01 $a0 $03
	inc bc                                           ; $5a92: $03
	ld h, [hl]                                       ; $5a93: $66
	ld [bc], a                                       ; $5a94: $02
	jp nc, $06d3                                     ; $5a95: $d2 $d3 $06

	ret nz                                           ; $5a98: $c0

	ld bc, $03a0                                     ; $5a99: $01 $a0 $03
	inc bc                                           ; $5a9c: $03
	ld [hl], h                                       ; $5a9d: $74
	ld bc, $06d4                                     ; $5a9e: $01 $d4 $06
	ret nz                                           ; $5aa1: $c0

	ld bc, $03a0                                     ; $5aa2: $01 $a0 $03
	inc bc                                           ; $5aa5: $03
	ld a, [hl]                                       ; $5aa6: $7e
	pop hl                                           ; $5aa7: $e1
	ld [bc], a                                       ; $5aa8: $02
	inc bc                                           ; $5aa9: $03
	ld [hl], l                                       ; $5aaa: $75
	db $e4                                           ; $5aab: $e4
	inc b                                            ; $5aac: $04
	or e                                             ; $5aad: $b3
	add hl, bc                                       ; $5aae: $09
	ld hl, $59c1                                     ; $5aaf: $21 $c1 $59
	db $e3                                           ; $5ab2: $e3
	nop                                              ; $5ab3: $00
	adc [hl]                                         ; $5ab4: $8e
	ret nz                                           ; $5ab5: $c0

	ld bc, $03a0                                     ; $5ab6: $01 $a0 $03
	inc bc                                           ; $5ab9: $03
	adc d                                            ; $5aba: $8a
	pop hl                                           ; $5abb: $e1
	ld [bc], a                                       ; $5abc: $02
	rlca                                             ; $5abd: $07
	rst FarCall                                          ; $5abe: $f7
	and b                                            ; $5abf: $a0
	add b                                            ; $5ac0: $80
	and b                                            ; $5ac1: $a0
	stop                                             ; $5ac2: $10 $00
	inc bc                                           ; $5ac4: $03
	db $e4                                           ; $5ac5: $e4
	nop                                              ; $5ac6: $00
	dec bc                                           ; $5ac7: $0b
	rst $38                                          ; $5ac8: $ff
	rlca                                             ; $5ac9: $07
	ld b, b                                          ; $5aca: $40
	add b                                            ; $5acb: $80
	and b                                            ; $5acc: $a0
	db $10                                           ; $5acd: $10
	db $e4                                           ; $5ace: $e4
	nop                                              ; $5acf: $00
	sbc e                                            ; $5ad0: $9b
	jr z, jr_07e_5ad9                                ; $5ad1: $28 $06

	ret nz                                           ; $5ad3: $c0

	ld bc, $03a0                                     ; $5ad4: $01 $a0 $03
	inc bc                                           ; $5ad7: $03
	sub c                                            ; $5ad8: $91

jr_07e_5ad9:
	sub b                                            ; $5ad9: $90
	inc bc                                           ; $5ada: $03
	sub a                                            ; $5adb: $97
	add hl, bc                                       ; $5adc: $09
	inc l                                            ; $5add: $2c
	pop hl                                           ; $5ade: $e1
	ld [bc], a                                       ; $5adf: $02
	inc bc                                           ; $5ae0: $03
	rrca                                             ; $5ae1: $0f
	add d                                            ; $5ae2: $82
	ret nz                                           ; $5ae3: $c0

	dec de                                           ; $5ae4: $1b
	pop de                                           ; $5ae5: $d1
	ld [bc], a                                       ; $5ae6: $02
	ret nc                                           ; $5ae7: $d0

	pop de                                           ; $5ae8: $d1
	ld b, $c0                                        ; $5ae9: $06 $c0
	ld bc, $03a0                                     ; $5aeb: $01 $a0 $03
	inc bc                                           ; $5aee: $03
	sbc [hl]                                         ; $5aef: $9e
	ld [bc], a                                       ; $5af0: $02
	jp nc, $06d3                                     ; $5af1: $d2 $d3 $06

	ret nz                                           ; $5af4: $c0

	ld bc, $03a0                                     ; $5af5: $01 $a0 $03
	inc bc                                           ; $5af8: $03
	and l                                            ; $5af9: $a5
	ld bc, $06d4                                     ; $5afa: $01 $d4 $06
	ret nz                                           ; $5afd: $c0

	ld bc, $03a0                                     ; $5afe: $01 $a0 $03
	inc bc                                           ; $5b01: $03
	xor l                                            ; $5b02: $ad
	pop hl                                           ; $5b03: $e1
	ld [bc], a                                       ; $5b04: $02
	inc bc                                           ; $5b05: $03
	ld e, d                                          ; $5b06: $5a
	db $e4                                           ; $5b07: $e4
	inc b                                            ; $5b08: $04
	ld d, a                                          ; $5b09: $57
	inc bc                                           ; $5b0a: $03
	or [hl]                                          ; $5b0b: $b6
	add hl, bc                                       ; $5b0c: $09
	inc l                                            ; $5b0d: $2c
	pop hl                                           ; $5b0e: $e1
	ld [bc], a                                       ; $5b0f: $02
	inc bc                                           ; $5b10: $03
	dec de                                           ; $5b11: $1b
	add d                                            ; $5b12: $82
	ret nz                                           ; $5b13: $c0

	dec de                                           ; $5b14: $1b
	pop de                                           ; $5b15: $d1
	ld [bc], a                                       ; $5b16: $02
	ret nc                                           ; $5b17: $d0

	pop de                                           ; $5b18: $d1
	ld b, $c0                                        ; $5b19: $06 $c0
	ld bc, $03a0                                     ; $5b1b: $01 $a0 $03
	inc bc                                           ; $5b1e: $03
	cp b                                             ; $5b1f: $b8
	ld [bc], a                                       ; $5b20: $02
	jp nc, $06d3                                     ; $5b21: $d2 $d3 $06

	ret nz                                           ; $5b24: $c0

	ld bc, $03a0                                     ; $5b25: $01 $a0 $03
	inc bc                                           ; $5b28: $03
	cp [hl]                                          ; $5b29: $be
	ld bc, $06d4                                     ; $5b2a: $01 $d4 $06
	ret nz                                           ; $5b2d: $c0

	ld bc, $03a0                                     ; $5b2e: $01 $a0 $03
	inc bc                                           ; $5b31: $03
	adc $e1                                          ; $5b32: $ce $e1
	ld [bc], a                                       ; $5b34: $02
	inc bc                                           ; $5b35: $03
	ld [hl], l                                       ; $5b36: $75
	db $e4                                           ; $5b37: $e4
	inc b                                            ; $5b38: $04
	daa                                              ; $5b39: $27
	inc bc                                           ; $5b3a: $03
	jp nc, $2c09                                     ; $5b3b: $d2 $09 $2c

	pop hl                                           ; $5b3e: $e1
	ld [bc], a                                       ; $5b3f: $02
	inc bc                                           ; $5b40: $03
	inc de                                           ; $5b41: $13
	add d                                            ; $5b42: $82
	ret nz                                           ; $5b43: $c0

	dec de                                           ; $5b44: $1b
	pop de                                           ; $5b45: $d1
	ld [bc], a                                       ; $5b46: $02
	ret nc                                           ; $5b47: $d0

	pop de                                           ; $5b48: $d1
	ld b, $c0                                        ; $5b49: $06 $c0
	ld bc, $03a0                                     ; $5b4b: $01 $a0 $03
	inc bc                                           ; $5b4e: $03
	call nc, $d202                                   ; $5b4f: $d4 $02 $d2
	db $d3                                           ; $5b52: $d3
	ld b, $c0                                        ; $5b53: $06 $c0
	ld bc, $03a0                                     ; $5b55: $01 $a0 $03
	inc bc                                           ; $5b58: $03
	ldh [c], a                                       ; $5b59: $e2
	ld bc, $06d4                                     ; $5b5a: $01 $d4 $06
	ret nz                                           ; $5b5d: $c0

	ld bc, $03a0                                     ; $5b5e: $01 $a0 $03
	inc bc                                           ; $5b61: $03
	rst SubAFromBC                                          ; $5b62: $e7
	pop hl                                           ; $5b63: $e1
	ld [bc], a                                       ; $5b64: $02
	inc bc                                           ; $5b65: $03
	ld h, e                                          ; $5b66: $63
	db $e4                                           ; $5b67: $e4
	inc bc                                           ; $5b68: $03
	rst FarCall                                          ; $5b69: $f7
	jr z, @+$08                                      ; $5b6a: $28 $06

	ret nz                                           ; $5b6c: $c0

	ld bc, $03a0                                     ; $5b6d: $01 $a0 $03
	inc bc                                           ; $5b70: $03
	xor $3f                                          ; $5b71: $ee $3f
	inc bc                                           ; $5b73: $03
	ld a, [$1109]                                    ; $5b74: $fa $09 $11
	pop hl                                           ; $5b77: $e1
	ld [bc], a                                       ; $5b78: $02
	inc bc                                           ; $5b79: $03
	rrca                                             ; $5b7a: $0f
	ret nz                                           ; $5b7b: $c0

	ld bc, $03a0                                     ; $5b7c: $01 $a0 $03
	inc b                                            ; $5b7f: $04
	ld bc, $02e1                                     ; $5b80: $01 $e1 $02
	inc bc                                           ; $5b83: $03
	ld e, d                                          ; $5b84: $5a
	db $e4                                           ; $5b85: $e4
	inc bc                                           ; $5b86: $03
	reti                                             ; $5b87: $d9


	inc b                                            ; $5b88: $04
	ld b, $09                                        ; $5b89: $06 $09
	ld de, $02e1                                     ; $5b8b: $11 $e1 $02
	inc bc                                           ; $5b8e: $03
	rra                                              ; $5b8f: $1f
	ret nz                                           ; $5b90: $c0

	ld bc, $03a0                                     ; $5b91: $01 $a0 $03
	inc b                                            ; $5b94: $04
	dec c                                            ; $5b95: $0d
	pop hl                                           ; $5b96: $e1
	ld [bc], a                                       ; $5b97: $02
	inc bc                                           ; $5b98: $03
	ld a, [hl]                                       ; $5b99: $7e
	db $e4                                           ; $5b9a: $e4
	inc bc                                           ; $5b9b: $03
	call nz, $1304                                   ; $5b9c: $c4 $04 $13
	add hl, bc                                       ; $5b9f: $09
	ld de, $02e1                                     ; $5ba0: $11 $e1 $02
	inc bc                                           ; $5ba3: $03
	dec de                                           ; $5ba4: $1b
	ret nz                                           ; $5ba5: $c0

	ld bc, $03a0                                     ; $5ba6: $01 $a0 $03
	inc b                                            ; $5ba9: $04
	ld a, [de]                                       ; $5baa: $1a
	pop hl                                           ; $5bab: $e1
	ld [bc], a                                       ; $5bac: $02
	inc bc                                           ; $5bad: $03
	ld [hl], l                                       ; $5bae: $75
	db $e4                                           ; $5baf: $e4
	inc bc                                           ; $5bb0: $03
	xor a                                            ; $5bb1: $af
	ld l, $05                                        ; $5bb2: $2e $05
	pop bc                                           ; $5bb4: $c1
	ld e, c                                          ; $5bb5: $59
	db $e3                                           ; $5bb6: $e3
	nop                                              ; $5bb7: $00
	adc a                                            ; $5bb8: $8f
	ld a, d                                          ; $5bb9: $7a
	add b                                            ; $5bba: $80
	and b                                            ; $5bbb: $a0
	ld [de], a                                       ; $5bbc: $12
	nop                                              ; $5bbd: $00
	inc c                                            ; $5bbe: $0c
	ld d, d                                          ; $5bbf: $52
	db $fc                                           ; $5bc0: $fc
	ret nz                                           ; $5bc1: $c0

	ld l, d                                          ; $5bc2: $6a
	ret nc                                           ; $5bc3: $d0

	jr z, jr_07e_5bcc                                ; $5bc4: $28 $06

	ret nz                                           ; $5bc6: $c0

	ld bc, $03a0                                     ; $5bc7: $01 $a0 $03
	inc b                                            ; $5bca: $04
	inc h                                            ; $5bcb: $24

jr_07e_5bcc:
	inc hl                                           ; $5bcc: $23
	inc b                                            ; $5bcd: $04
	dec l                                            ; $5bce: $2d
	add hl, bc                                       ; $5bcf: $09
	add hl, bc                                       ; $5bd0: $09
	ret nz                                           ; $5bd1: $c0

	ld bc, $03a0                                     ; $5bd2: $01 $a0 $03
	inc b                                            ; $5bd5: $04
	ld [hl-], a                                      ; $5bd6: $32
	db $e4                                           ; $5bd7: $e4
	nop                                              ; $5bd8: $00
	ld e, h                                          ; $5bd9: $5c
	inc b                                            ; $5bda: $04
	dec sp                                           ; $5bdb: $3b
	add hl, bc                                       ; $5bdc: $09
	ld [de], a                                       ; $5bdd: $12
	ret nz                                           ; $5bde: $c0

	ld bc, $03a0                                     ; $5bdf: $01 $a0 $03
	inc b                                            ; $5be2: $04
	ccf                                              ; $5be3: $3f
	ret nc                                           ; $5be4: $d0

	add d                                            ; $5be5: $82
	ld bc, $d3c9                                     ; $5be6: $01 $c9 $d3
	nop                                              ; $5be9: $00
	add b                                            ; $5bea: $80
	and b                                            ; $5beb: $a0
	ld de, $03e4                                     ; $5bec: $11 $e4 $03
	ld [hl], c                                       ; $5bef: $71
	pop de                                           ; $5bf0: $d1
	add hl, bc                                       ; $5bf1: $09
	rra                                              ; $5bf2: $1f
	ret nz                                           ; $5bf3: $c0

	ld bc, $03a0                                     ; $5bf4: $01 $a0 $03
	inc b                                            ; $5bf7: $04
	ld b, [hl]                                       ; $5bf8: $46
	ret nz                                           ; $5bf9: $c0

	ld bc, $01a0                                     ; $5bfa: $01 $a0 $01
	inc b                                            ; $5bfd: $04
	ld c, [hl]                                       ; $5bfe: $4e
	ret nz                                           ; $5bff: $c0

	ld bc, $03a0                                     ; $5c00: $01 $a0 $03
	inc b                                            ; $5c03: $04
	ld d, c                                          ; $5c04: $51
	ret nz                                           ; $5c05: $c0

	ld bc, $01a0                                     ; $5c06: $01 $a0 $01
	inc b                                            ; $5c09: $04
	ld e, [hl]                                       ; $5c0a: $5e
	pop hl                                           ; $5c0b: $e1
	ld [bc], a                                       ; $5c0c: $02
	inc bc                                           ; $5c0d: $03
	ld [hl], l                                       ; $5c0e: $75
	db $e4                                           ; $5c0f: $e4
	inc bc                                           ; $5c10: $03
	ld c, a                                          ; $5c11: $4f
	rst $38                                          ; $5c12: $ff
	add hl, bc                                       ; $5c13: $09
	rra                                              ; $5c14: $1f
	ld h, b                                          ; $5c15: $60
	add b                                            ; $5c16: $80
	and b                                            ; $5c17: $a0
	ld de, $c006                                     ; $5c18: $11 $06 $c0
	ld bc, $03a0                                     ; $5c1b: $01 $a0 $03
	inc b                                            ; $5c1e: $04
	ld h, l                                          ; $5c1f: $65
	ld b, $c0                                        ; $5c20: $06 $c0
	ld bc, $03a0                                     ; $5c22: $01 $a0 $03
	inc b                                            ; $5c25: $04
	ld d, c                                          ; $5c26: $51
	ret nz                                           ; $5c27: $c0

	ld bc, $01a0                                     ; $5c28: $01 $a0 $01
	inc b                                            ; $5c2b: $04
	ld e, [hl]                                       ; $5c2c: $5e
	pop hl                                           ; $5c2d: $e1
	ld [bc], a                                       ; $5c2e: $02
	inc bc                                           ; $5c2f: $03
	ld a, [hl]                                       ; $5c30: $7e
	db $e4                                           ; $5c31: $e4
	inc bc                                           ; $5c32: $03
	dec l                                            ; $5c33: $2d
	add hl, bc                                       ; $5c34: $09
	adc d                                            ; $5c35: $8a
	ret nz                                           ; $5c36: $c0

	set 0, c                                         ; $5c37: $cb $c1
	dec sp                                           ; $5c39: $3b
	ret nz                                           ; $5c3a: $c0

	add hl, bc                                       ; $5c3b: $09
	db $e3                                           ; $5c3c: $e3
	nop                                              ; $5c3d: $00
	ld b, d                                          ; $5c3e: $42
	ret nz                                           ; $5c3f: $c0

	inc c                                            ; $5c40: $0c
	ldh [$78], a                                     ; $5c41: $e0 $78
	pop bc                                           ; $5c43: $c1
	dec sp                                           ; $5c44: $3b
	ret nz                                           ; $5c45: $c0

	add hl, bc                                       ; $5c46: $09
	db $e3                                           ; $5c47: $e3
	nop                                              ; $5c48: $00
	ld b, c                                          ; $5c49: $41
	pop bc                                           ; $5c4a: $c1
	ld e, e                                          ; $5c4b: $5b
	ret nz                                           ; $5c4c: $c0

	ld bc, $01a0                                     ; $5c4d: $01 $a0 $01
	inc b                                            ; $5c50: $04
	ld [hl], e                                       ; $5c51: $73
	ret nz                                           ; $5c52: $c0

	ld bc, $03a0                                     ; $5c53: $01 $a0 $03
	inc b                                            ; $5c56: $04
	ld a, h                                          ; $5c57: $7c
	ret nz                                           ; $5c58: $c0

	ld bc, $01a0                                     ; $5c59: $01 $a0 $01
	inc b                                            ; $5c5c: $04
	ld a, l                                          ; $5c5d: $7d
	ret nz                                           ; $5c5e: $c0

	rrca                                             ; $5c5f: $0f
	db $e3                                           ; $5c60: $e3
	nop                                              ; $5c61: $00
	push hl                                          ; $5c62: $e5
	ret nz                                           ; $5c63: $c0

	ld bc, $01a0                                     ; $5c64: $01 $a0 $01
	inc b                                            ; $5c67: $04
	add c                                            ; $5c68: $81
	ret nz                                           ; $5c69: $c0

	ld bc, $03a0                                     ; $5c6a: $01 $a0 $03
	inc b                                            ; $5c6d: $04
	sub c                                            ; $5c6e: $91
	ret nz                                           ; $5c6f: $c0

	ld bc, $01a0                                     ; $5c70: $01 $a0 $01
	inc b                                            ; $5c73: $04
	sub h                                            ; $5c74: $94
	ret nz                                           ; $5c75: $c0

	ld bc, $03a0                                     ; $5c76: $01 $a0 $03
	inc b                                            ; $5c79: $04
	sbc e                                            ; $5c7a: $9b
	ret nz                                           ; $5c7b: $c0

	ld bc, $01a0                                     ; $5c7c: $01 $a0 $01
	inc b                                            ; $5c7f: $04
	and a                                            ; $5c80: $a7
	ret nz                                           ; $5c81: $c0

	set 0, b                                         ; $5c82: $cb $c0
	ld de, $00e3                                     ; $5c84: $11 $e3 $00
	adc a                                            ; $5c87: $8f
	pop bc                                           ; $5c88: $c1
	ld e, h                                          ; $5c89: $5c
	pop hl                                           ; $5c8a: $e1
	ld [bc], a                                       ; $5c8b: $02
	ld bc, $c028                                     ; $5c8c: $01 $28 $c0
	ld bc, $03a0                                     ; $5c8f: $01 $a0 $03
	inc b                                            ; $5c92: $04
	xor [hl]                                         ; $5c93: $ae
	ret nz                                           ; $5c94: $c0

	ld bc, $01a0                                     ; $5c95: $01 $a0 $01
	inc b                                            ; $5c98: $04
	or a                                             ; $5c99: $b7
	ret nz                                           ; $5c9a: $c0

	ld bc, $03a0                                     ; $5c9b: $01 $a0 $03
	inc b                                            ; $5c9e: $04
	push bc                                          ; $5c9f: $c5
	ret nz                                           ; $5ca0: $c0

	ld bc, $01a0                                     ; $5ca1: $01 $a0 $01
	inc b                                            ; $5ca4: $04
	pop de                                           ; $5ca5: $d1
	ret nc                                           ; $5ca6: $d0

	add d                                            ; $5ca7: $82
	ld bc, $d5c9                                     ; $5ca8: $01 $c9 $d5
	pop hl                                           ; $5cab: $e1
	ld [bc], a                                       ; $5cac: $02
	inc b                                            ; $5cad: $04
	db $db                                           ; $5cae: $db
	ret nz                                           ; $5caf: $c0

	ld d, h                                          ; $5cb0: $54
	jp nc, Jump_07e_53c0                             ; $5cb1: $d2 $c0 $53

	pop de                                           ; $5cb4: $d1
	ret nz                                           ; $5cb5: $c0

	ld d, d                                          ; $5cb6: $52
	ldh [rAUD1HIGH], a                               ; $5cb7: $e0 $14
	pop bc                                           ; $5cb9: $c1
	ld l, e                                          ; $5cba: $6b
	call nc, $e4d1                                   ; $5cbb: $d4 $d1 $e4
	ld [bc], a                                       ; $5cbe: $02
	and c                                            ; $5cbf: $a1
	add hl, bc                                       ; $5cc0: $09
	ld hl, $59c1                                     ; $5cc1: $21 $c1 $59
	db $e3                                           ; $5cc4: $e3
	nop                                              ; $5cc5: $00
	sub b                                            ; $5cc6: $90
	ret nz                                           ; $5cc7: $c0

	ld bc, $03a0                                     ; $5cc8: $01 $a0 $03
	inc b                                            ; $5ccb: $04
	db $dd                                           ; $5ccc: $dd
	pop hl                                           ; $5ccd: $e1
	ld [bc], a                                       ; $5cce: $02
	ld [$a02a], sp                                   ; $5ccf: $08 $2a $a0
	add b                                            ; $5cd2: $80
	and b                                            ; $5cd3: $a0
	inc de                                           ; $5cd4: $13
	nop                                              ; $5cd5: $00
	inc bc                                           ; $5cd6: $03
	db $e4                                           ; $5cd7: $e4
	nop                                              ; $5cd8: $00
	dec bc                                           ; $5cd9: $0b
	rst $38                                          ; $5cda: $ff
	rlca                                             ; $5cdb: $07
	ld b, b                                          ; $5cdc: $40
	add b                                            ; $5cdd: $80
	and b                                            ; $5cde: $a0
	inc de                                           ; $5cdf: $13
	db $e4                                           ; $5ce0: $e4
	nop                                              ; $5ce1: $00
	sbc e                                            ; $5ce2: $9b
	jr z, jr_07e_5ceb                                ; $5ce3: $28 $06

	ret nz                                           ; $5ce5: $c0

	ld bc, $03a0                                     ; $5ce6: $01 $a0 $03
	inc b                                            ; $5ce9: $04
	db $e3                                           ; $5cea: $e3

jr_07e_5ceb:
	sub b                                            ; $5ceb: $90
	inc b                                            ; $5cec: $04
	db $eb                                           ; $5ced: $eb
	add hl, bc                                       ; $5cee: $09
	inc l                                            ; $5cef: $2c
	pop hl                                           ; $5cf0: $e1
	ld [bc], a                                       ; $5cf1: $02
	inc bc                                           ; $5cf2: $03
	inc de                                           ; $5cf3: $13
	add d                                            ; $5cf4: $82
	ret nz                                           ; $5cf5: $c0

	dec de                                           ; $5cf6: $1b
	pop de                                           ; $5cf7: $d1
	ld [bc], a                                       ; $5cf8: $02
	ret nc                                           ; $5cf9: $d0

	pop de                                           ; $5cfa: $d1
	ld b, $c0                                        ; $5cfb: $06 $c0
	ld bc, $03a0                                     ; $5cfd: $01 $a0 $03
	inc b                                            ; $5d00: $04
	or $02                                           ; $5d01: $f6 $02
	jp nc, $06d3                                     ; $5d03: $d2 $d3 $06

	ret nz                                           ; $5d06: $c0

	ld bc, $03a0                                     ; $5d07: $01 $a0 $03
	dec b                                            ; $5d0a: $05
	inc b                                            ; $5d0b: $04
	ld bc, $06d4                                     ; $5d0c: $01 $d4 $06
	ret nz                                           ; $5d0f: $c0

	ld bc, $03a0                                     ; $5d10: $01 $a0 $03
	dec b                                            ; $5d13: $05
	dec bc                                           ; $5d14: $0b
	pop hl                                           ; $5d15: $e1
	ld [bc], a                                       ; $5d16: $02
	inc bc                                           ; $5d17: $03
	ld e, d                                          ; $5d18: $5a
	db $e4                                           ; $5d19: $e4
	ld [bc], a                                       ; $5d1a: $02
	ld b, l                                          ; $5d1b: $45
	dec b                                            ; $5d1c: $05
	db $10                                           ; $5d1d: $10
	add hl, bc                                       ; $5d1e: $09
	inc l                                            ; $5d1f: $2c
	pop hl                                           ; $5d20: $e1
	ld [bc], a                                       ; $5d21: $02
	inc bc                                           ; $5d22: $03
	dec de                                           ; $5d23: $1b
	add d                                            ; $5d24: $82
	ret nz                                           ; $5d25: $c0

	dec de                                           ; $5d26: $1b
	pop de                                           ; $5d27: $d1
	ld [bc], a                                       ; $5d28: $02
	ret nc                                           ; $5d29: $d0

	pop de                                           ; $5d2a: $d1
	ld b, $c0                                        ; $5d2b: $06 $c0
	ld bc, $03a0                                     ; $5d2d: $01 $a0 $03
	dec b                                            ; $5d30: $05
	ld [de], a                                       ; $5d31: $12
	ld [bc], a                                       ; $5d32: $02
	jp nc, $06d3                                     ; $5d33: $d2 $d3 $06

	ret nz                                           ; $5d36: $c0

	ld bc, $03a0                                     ; $5d37: $01 $a0 $03
	dec b                                            ; $5d3a: $05
	add hl, de                                       ; $5d3b: $19
	ld bc, $06d4                                     ; $5d3c: $01 $d4 $06
	ret nz                                           ; $5d3f: $c0

	ld bc, $03a0                                     ; $5d40: $01 $a0 $03
	dec b                                            ; $5d43: $05
	ld hl, $02e1                                     ; $5d44: $21 $e1 $02
	inc bc                                           ; $5d47: $03
	ld [hl], l                                       ; $5d48: $75
	db $e4                                           ; $5d49: $e4
	ld [bc], a                                       ; $5d4a: $02
	dec d                                            ; $5d4b: $15
	dec b                                            ; $5d4c: $05
	dec hl                                           ; $5d4d: $2b
	add hl, bc                                       ; $5d4e: $09
	inc l                                            ; $5d4f: $2c
	pop hl                                           ; $5d50: $e1
	ld [bc], a                                       ; $5d51: $02
	inc bc                                           ; $5d52: $03
	inc de                                           ; $5d53: $13
	add d                                            ; $5d54: $82
	ret nz                                           ; $5d55: $c0

	dec de                                           ; $5d56: $1b
	pop de                                           ; $5d57: $d1
	ld [bc], a                                       ; $5d58: $02
	ret nc                                           ; $5d59: $d0

	pop de                                           ; $5d5a: $d1
	ld b, $c0                                        ; $5d5b: $06 $c0
	ld bc, $03a0                                     ; $5d5d: $01 $a0 $03
	dec b                                            ; $5d60: $05
	dec l                                            ; $5d61: $2d
	ld [bc], a                                       ; $5d62: $02
	jp nc, $06d3                                     ; $5d63: $d2 $d3 $06

	ret nz                                           ; $5d66: $c0

	ld bc, $03a0                                     ; $5d67: $01 $a0 $03
	inc bc                                           ; $5d6a: $03
	ldh [c], a                                       ; $5d6b: $e2
	ld bc, $06d4                                     ; $5d6c: $01 $d4 $06
	ret nz                                           ; $5d6f: $c0

	ld bc, $03a0                                     ; $5d70: $01 $a0 $03
	dec b                                            ; $5d73: $05
	ld [hl-], a                                      ; $5d74: $32
	pop hl                                           ; $5d75: $e1
	ld [bc], a                                       ; $5d76: $02
	inc bc                                           ; $5d77: $03
	ld h, e                                          ; $5d78: $63
	db $e4                                           ; $5d79: $e4
	ld bc, $28e5                                     ; $5d7a: $01 $e5 $28
	ld b, $c0                                        ; $5d7d: $06 $c0
	ld bc, $03a0                                     ; $5d7f: $01 $a0 $03
	dec b                                            ; $5d82: $05
	dec [hl]                                         ; $5d83: $35
	sub b                                            ; $5d84: $90
	dec b                                            ; $5d85: $05
	ld b, l                                          ; $5d86: $45
	add hl, bc                                       ; $5d87: $09
	inc l                                            ; $5d88: $2c
	pop hl                                           ; $5d89: $e1
	ld [bc], a                                       ; $5d8a: $02
	inc bc                                           ; $5d8b: $03
	inc de                                           ; $5d8c: $13
	add d                                            ; $5d8d: $82
	ret nz                                           ; $5d8e: $c0

	dec de                                           ; $5d8f: $1b
	pop de                                           ; $5d90: $d1
	ld [bc], a                                       ; $5d91: $02
	ret nc                                           ; $5d92: $d0

	pop de                                           ; $5d93: $d1
	ld b, $c0                                        ; $5d94: $06 $c0
	ld bc, $03a0                                     ; $5d96: $01 $a0 $03
	dec b                                            ; $5d99: $05
	ld c, b                                          ; $5d9a: $48
	ld [bc], a                                       ; $5d9b: $02
	jp nc, $06d3                                     ; $5d9c: $d2 $d3 $06

	ret nz                                           ; $5d9f: $c0

	ld bc, $03a0                                     ; $5da0: $01 $a0 $03
	dec b                                            ; $5da3: $05
	ld d, e                                          ; $5da4: $53
	ld bc, $06d4                                     ; $5da5: $01 $d4 $06
	ret nz                                           ; $5da8: $c0

	ld bc, $03a0                                     ; $5da9: $01 $a0 $03
	dec b                                            ; $5dac: $05
	ld e, c                                          ; $5dad: $59
	pop hl                                           ; $5dae: $e1
	ld [bc], a                                       ; $5daf: $02
	inc bc                                           ; $5db0: $03
	ld e, d                                          ; $5db1: $5a
	db $e4                                           ; $5db2: $e4
	ld bc, $05ac                                     ; $5db3: $01 $ac $05
	ld h, c                                          ; $5db6: $61
	add hl, bc                                       ; $5db7: $09
	inc l                                            ; $5db8: $2c
	pop hl                                           ; $5db9: $e1
	ld [bc], a                                       ; $5dba: $02
	inc bc                                           ; $5dbb: $03
	dec de                                           ; $5dbc: $1b
	add d                                            ; $5dbd: $82
	ret nz                                           ; $5dbe: $c0

	dec de                                           ; $5dbf: $1b
	pop de                                           ; $5dc0: $d1
	ld [bc], a                                       ; $5dc1: $02
	ret nc                                           ; $5dc2: $d0

	pop de                                           ; $5dc3: $d1
	ld b, $c0                                        ; $5dc4: $06 $c0
	ld bc, $03a0                                     ; $5dc6: $01 $a0 $03
	dec b                                            ; $5dc9: $05
	ld h, [hl]                                       ; $5dca: $66
	ld [bc], a                                       ; $5dcb: $02
	jp nc, $06d3                                     ; $5dcc: $d2 $d3 $06

	ret nz                                           ; $5dcf: $c0

	ld bc, $03a0                                     ; $5dd0: $01 $a0 $03
	dec b                                            ; $5dd3: $05
	ld l, l                                          ; $5dd4: $6d
	ld bc, $06d4                                     ; $5dd5: $01 $d4 $06
	ret nz                                           ; $5dd8: $c0

	ld bc, $03a0                                     ; $5dd9: $01 $a0 $03
	dec b                                            ; $5ddc: $05
	ld [hl], e                                       ; $5ddd: $73
	pop hl                                           ; $5dde: $e1
	ld [bc], a                                       ; $5ddf: $02
	inc bc                                           ; $5de0: $03
	ld [hl], l                                       ; $5de1: $75
	db $e4                                           ; $5de2: $e4
	ld bc, $057c                                     ; $5de3: $01 $7c $05
	ld a, e                                          ; $5de6: $7b
	add hl, bc                                       ; $5de7: $09
	inc l                                            ; $5de8: $2c
	pop hl                                           ; $5de9: $e1
	ld [bc], a                                       ; $5dea: $02
	inc bc                                           ; $5deb: $03
	rla                                              ; $5dec: $17
	add d                                            ; $5ded: $82
	ret nz                                           ; $5dee: $c0

	dec de                                           ; $5def: $1b
	pop de                                           ; $5df0: $d1
	ld [bc], a                                       ; $5df1: $02
	ret nc                                           ; $5df2: $d0

	pop de                                           ; $5df3: $d1
	ld b, $c0                                        ; $5df4: $06 $c0
	ld bc, $03a0                                     ; $5df6: $01 $a0 $03
	dec b                                            ; $5df9: $05
	add d                                            ; $5dfa: $82
	ld [bc], a                                       ; $5dfb: $02
	jp nc, $06d3                                     ; $5dfc: $d2 $d3 $06

	ret nz                                           ; $5dff: $c0

	ld bc, $03a0                                     ; $5e00: $01 $a0 $03
	dec b                                            ; $5e03: $05
	adc h                                            ; $5e04: $8c
	ld bc, $06d4                                     ; $5e05: $01 $d4 $06
	ret nz                                           ; $5e08: $c0

	ld bc, $03a0                                     ; $5e09: $01 $a0 $03
	dec b                                            ; $5e0c: $05
	adc a                                            ; $5e0d: $8f
	pop hl                                           ; $5e0e: $e1
	ld [bc], a                                       ; $5e0f: $02
	inc bc                                           ; $5e10: $03
	ld l, h                                          ; $5e11: $6c
	db $e4                                           ; $5e12: $e4
	ld bc, $094c                                     ; $5e13: $01 $4c $09
	ld d, $e1                                        ; $5e16: $16 $e1
	ld [bc], a                                       ; $5e18: $02
	ld [$a03e], sp                                   ; $5e19: $08 $3e $a0
	add b                                            ; $5e1c: $80
	and b                                            ; $5e1d: $a0
	inc d                                            ; $5e1e: $14
	nop                                              ; $5e1f: $00
	inc bc                                           ; $5e20: $03
	db $e4                                           ; $5e21: $e4
	nop                                              ; $5e22: $00
	dec bc                                           ; $5e23: $0b
	rst $38                                          ; $5e24: $ff
	rlca                                             ; $5e25: $07
	ld b, b                                          ; $5e26: $40
	add b                                            ; $5e27: $80
	and b                                            ; $5e28: $a0
	inc d                                            ; $5e29: $14
	db $e4                                           ; $5e2a: $e4
	nop                                              ; $5e2b: $00
	sbc e                                            ; $5e2c: $9b
	jr z, jr_07e_5e35                                ; $5e2d: $28 $06

	ret nz                                           ; $5e2f: $c0

	ld bc, $03a0                                     ; $5e30: $01 $a0 $03
	dec b                                            ; $5e33: $05
	sub h                                            ; $5e34: $94

jr_07e_5e35:
	sub b                                            ; $5e35: $90
	dec b                                            ; $5e36: $05
	sbc l                                            ; $5e37: $9d
	add hl, bc                                       ; $5e38: $09
	inc l                                            ; $5e39: $2c
	pop hl                                           ; $5e3a: $e1
	ld [bc], a                                       ; $5e3b: $02
	inc bc                                           ; $5e3c: $03
	rla                                              ; $5e3d: $17
	add d                                            ; $5e3e: $82
	ret nz                                           ; $5e3f: $c0

	dec de                                           ; $5e40: $1b
	pop de                                           ; $5e41: $d1
	ld [bc], a                                       ; $5e42: $02
	ret nc                                           ; $5e43: $d0

	pop de                                           ; $5e44: $d1
	ld b, $c0                                        ; $5e45: $06 $c0
	ld bc, $03a0                                     ; $5e47: $01 $a0 $03
	dec b                                            ; $5e4a: $05
	sbc a                                            ; $5e4b: $9f
	ld [bc], a                                       ; $5e4c: $02
	jp nc, $06d3                                     ; $5e4d: $d2 $d3 $06

	ret nz                                           ; $5e50: $c0

	ld bc, $03a0                                     ; $5e51: $01 $a0 $03
	dec b                                            ; $5e54: $05
	and [hl]                                         ; $5e55: $a6
	ld bc, $06d4                                     ; $5e56: $01 $d4 $06
	ret nz                                           ; $5e59: $c0

	ld bc, $03a0                                     ; $5e5a: $01 $a0 $03
	dec b                                            ; $5e5d: $05
	xor a                                            ; $5e5e: $af
	pop hl                                           ; $5e5f: $e1
	ld [bc], a                                       ; $5e60: $02
	inc bc                                           ; $5e61: $03
	ld l, h                                          ; $5e62: $6c
	db $e4                                           ; $5e63: $e4
	nop                                              ; $5e64: $00
	ei                                               ; $5e65: $fb
	dec b                                            ; $5e66: $05
	or l                                             ; $5e67: $b5
	add hl, bc                                       ; $5e68: $09
	inc l                                            ; $5e69: $2c
	pop hl                                           ; $5e6a: $e1
	ld [bc], a                                       ; $5e6b: $02
	inc bc                                           ; $5e6c: $03
	rra                                              ; $5e6d: $1f
	add d                                            ; $5e6e: $82
	ret nz                                           ; $5e6f: $c0

	dec de                                           ; $5e70: $1b
	pop de                                           ; $5e71: $d1
	ld [bc], a                                       ; $5e72: $02
	ret nc                                           ; $5e73: $d0

	pop de                                           ; $5e74: $d1
	ld b, $c0                                        ; $5e75: $06 $c0
	ld bc, $03a0                                     ; $5e77: $01 $a0 $03
	dec b                                            ; $5e7a: $05
	or a                                             ; $5e7b: $b7
	ld [bc], a                                       ; $5e7c: $02
	jp nc, $06d3                                     ; $5e7d: $d2 $d3 $06

	ret nz                                           ; $5e80: $c0

	ld bc, $03a0                                     ; $5e81: $01 $a0 $03
	dec b                                            ; $5e84: $05
	ret nz                                           ; $5e85: $c0

	ld bc, $06d4                                     ; $5e86: $01 $d4 $06
	ret nz                                           ; $5e89: $c0

	ld bc, $03a0                                     ; $5e8a: $01 $a0 $03
	dec b                                            ; $5e8d: $05
	push bc                                          ; $5e8e: $c5
	pop hl                                           ; $5e8f: $e1
	ld [bc], a                                       ; $5e90: $02
	inc bc                                           ; $5e91: $03
	ld a, [hl]                                       ; $5e92: $7e
	db $e4                                           ; $5e93: $e4
	nop                                              ; $5e94: $00
	rlc l                                            ; $5e95: $cb $05
	rrc c                                            ; $5e97: $cb $09
	inc l                                            ; $5e99: $2c
	pop hl                                           ; $5e9a: $e1
	ld [bc], a                                       ; $5e9b: $02
	inc bc                                           ; $5e9c: $03
	dec de                                           ; $5e9d: $1b
	add d                                            ; $5e9e: $82
	ret nz                                           ; $5e9f: $c0

	dec de                                           ; $5ea0: $1b
	pop de                                           ; $5ea1: $d1
	ld [bc], a                                       ; $5ea2: $02
	ret nc                                           ; $5ea3: $d0

	pop de                                           ; $5ea4: $d1
	ld b, $c0                                        ; $5ea5: $06 $c0
	ld bc, $03a0                                     ; $5ea7: $01 $a0 $03
	dec b                                            ; $5eaa: $05
	adc $02                                          ; $5eab: $ce $02
	jp nc, $06d3                                     ; $5ead: $d2 $d3 $06

	ret nz                                           ; $5eb0: $c0

	ld bc, $03a0                                     ; $5eb1: $01 $a0 $03
	dec b                                            ; $5eb4: $05
	push de                                          ; $5eb5: $d5
	ld bc, $06d4                                     ; $5eb6: $01 $d4 $06
	ret nz                                           ; $5eb9: $c0

	ld bc, $03a0                                     ; $5eba: $01 $a0 $03
	dec b                                            ; $5ebd: $05
	rst SubAFromDE                                          ; $5ebe: $df
	pop hl                                           ; $5ebf: $e1
	ld [bc], a                                       ; $5ec0: $02
	inc bc                                           ; $5ec1: $03
	ld [hl], l                                       ; $5ec2: $75
	db $e4                                           ; $5ec3: $e4
	nop                                              ; $5ec4: $00
	sbc e                                            ; $5ec5: $9b
	jr z, @+$08                                      ; $5ec6: $28 $06

	ret nz                                           ; $5ec8: $c0

	ld bc, $03a0                                     ; $5ec9: $01 $a0 $03
	dec b                                            ; $5ecc: $05
	ldh [hDisp1_SCY], a                                     ; $5ecd: $e0 $90
	dec b                                            ; $5ecf: $05
	push hl                                          ; $5ed0: $e5
	add hl, bc                                       ; $5ed1: $09
	inc l                                            ; $5ed2: $2c
	pop hl                                           ; $5ed3: $e1
	ld [bc], a                                       ; $5ed4: $02
	inc bc                                           ; $5ed5: $03
	rla                                              ; $5ed6: $17
	add d                                            ; $5ed7: $82
	ret nz                                           ; $5ed8: $c0

	dec de                                           ; $5ed9: $1b
	pop de                                           ; $5eda: $d1
	ld [bc], a                                       ; $5edb: $02
	ret nc                                           ; $5edc: $d0

	pop de                                           ; $5edd: $d1
	ld b, $c0                                        ; $5ede: $06 $c0
	ld bc, $03a0                                     ; $5ee0: $01 $a0 $03
	dec b                                            ; $5ee3: $05
	rst SubAFromBC                                          ; $5ee4: $e7
	ld [bc], a                                       ; $5ee5: $02
	jp nc, $06d3                                     ; $5ee6: $d2 $d3 $06

	ret nz                                           ; $5ee9: $c0

	ld bc, $03a0                                     ; $5eea: $01 $a0 $03
	dec b                                            ; $5eed: $05
	db $eb                                           ; $5eee: $eb
	ld bc, $06d4                                     ; $5eef: $01 $d4 $06
	ret nz                                           ; $5ef2: $c0

	ld bc, $03a0                                     ; $5ef3: $01 $a0 $03
	dec b                                            ; $5ef6: $05
	di                                               ; $5ef7: $f3
	pop hl                                           ; $5ef8: $e1
	ld [bc], a                                       ; $5ef9: $02
	inc bc                                           ; $5efa: $03
	ld l, h                                          ; $5efb: $6c
	db $e4                                           ; $5efc: $e4
	nop                                              ; $5efd: $00
	ld h, d                                          ; $5efe: $62
	dec b                                            ; $5eff: $05
	rst FarCall                                          ; $5f00: $f7
	add hl, bc                                       ; $5f01: $09
	inc l                                            ; $5f02: $2c
	pop hl                                           ; $5f03: $e1
	ld [bc], a                                       ; $5f04: $02
	inc bc                                           ; $5f05: $03
	dec de                                           ; $5f06: $1b
	add d                                            ; $5f07: $82
	ret nz                                           ; $5f08: $c0

	dec de                                           ; $5f09: $1b
	pop de                                           ; $5f0a: $d1
	ld [bc], a                                       ; $5f0b: $02
	ret nc                                           ; $5f0c: $d0

	pop de                                           ; $5f0d: $d1
	ld b, $c0                                        ; $5f0e: $06 $c0
	ld bc, $03a0                                     ; $5f10: $01 $a0 $03
	dec b                                            ; $5f13: $05
	ld a, [$d202]                                    ; $5f14: $fa $02 $d2
	db $d3                                           ; $5f17: $d3
	ld b, $c0                                        ; $5f18: $06 $c0
	ld bc, $03a0                                     ; $5f1a: $01 $a0 $03
	ld b, $05                                        ; $5f1d: $06 $05
	ld bc, $06d4                                     ; $5f1f: $01 $d4 $06
	ret nz                                           ; $5f22: $c0

	ld bc, $03a0                                     ; $5f23: $01 $a0 $03
	ld b, $0f                                        ; $5f26: $06 $0f
	pop hl                                           ; $5f28: $e1
	ld [bc], a                                       ; $5f29: $02
	inc bc                                           ; $5f2a: $03
	ld [hl], l                                       ; $5f2b: $75
	db $e4                                           ; $5f2c: $e4
	nop                                              ; $5f2d: $00
	ld [hl-], a                                      ; $5f2e: $32
	ld b, $1c                                        ; $5f2f: $06 $1c
	add hl, bc                                       ; $5f31: $09
	inc l                                            ; $5f32: $2c
	pop hl                                           ; $5f33: $e1
	ld [bc], a                                       ; $5f34: $02
	inc bc                                           ; $5f35: $03
	dec de                                           ; $5f36: $1b
	add d                                            ; $5f37: $82
	ret nz                                           ; $5f38: $c0

	dec de                                           ; $5f39: $1b
	pop de                                           ; $5f3a: $d1
	ld [bc], a                                       ; $5f3b: $02
	ret nc                                           ; $5f3c: $d0

	pop de                                           ; $5f3d: $d1
	ld b, $c0                                        ; $5f3e: $06 $c0
	ld bc, $03a0                                     ; $5f40: $01 $a0 $03
	ld b, $1e                                        ; $5f43: $06 $1e
	ld [bc], a                                       ; $5f45: $02
	jp nc, $06d3                                     ; $5f46: $d2 $d3 $06

	ret nz                                           ; $5f49: $c0

	ld bc, $03a0                                     ; $5f4a: $01 $a0 $03
	ld b, $24                                        ; $5f4d: $06 $24
	ld bc, $06d4                                     ; $5f4f: $01 $d4 $06
	ret nz                                           ; $5f52: $c0

	ld bc, $03a0                                     ; $5f53: $01 $a0 $03
	ld b, $29                                        ; $5f56: $06 $29
	pop hl                                           ; $5f58: $e1
	ld [bc], a                                       ; $5f59: $02
	inc bc                                           ; $5f5a: $03
	ld [hl], l                                       ; $5f5b: $75
	db $e4                                           ; $5f5c: $e4
	nop                                              ; $5f5d: $00
	ld [bc], a                                       ; $5f5e: $02
	inc c                                            ; $5f5f: $0c
	ld d, c                                          ; $5f60: $51
	db $fc                                           ; $5f61: $fc
	ret nz                                           ; $5f62: $c0

	ld h, l                                          ; $5f63: $65
	ret c                                            ; $5f64: $d8

	jr z, jr_07e_5f73                                ; $5f65: $28 $0c

	ret nz                                           ; $5f67: $c0

	ld bc, $03a0                                     ; $5f68: $01 $a0 $03
	ld b, $30                                        ; $5f6b: $06 $30
	ret nz                                           ; $5f6d: $c0

	ld bc, $01a0                                     ; $5f6e: $01 $a0 $01
	ld b, $35                                        ; $5f71: $06 $35

jr_07e_5f73:
	jr c, jr_07e_5f7b                                ; $5f73: $38 $06

	inc a                                            ; $5f75: $3c
	add hl, bc                                       ; $5f76: $09
	dec l                                            ; $5f77: $2d
	pop bc                                           ; $5f78: $c1
	ld e, c                                          ; $5f79: $59
	db $e3                                           ; $5f7a: $e3

jr_07e_5f7b:
	nop                                              ; $5f7b: $00
	sub c                                            ; $5f7c: $91
	ret nz                                           ; $5f7d: $c0

	add hl, bc                                       ; $5f7e: $09
	db $e3                                           ; $5f7f: $e3
	nop                                              ; $5f80: $00
	inc [hl]                                         ; $5f81: $34
	and b                                            ; $5f82: $a0
	add b                                            ; $5f83: $80
	and b                                            ; $5f84: $a0
	dec d                                            ; $5f85: $15
	nop                                              ; $5f86: $00
	ld b, $c0                                        ; $5f87: $06 $c0
	ld bc, $03a0                                     ; $5f89: $01 $a0 $03
	ld b, $3e                                        ; $5f8c: $06 $3e
	rst $38                                          ; $5f8e: $ff
	inc c                                            ; $5f8f: $0c
	ret nz                                           ; $5f90: $c0

	ld bc, $03a0                                     ; $5f91: $01 $a0 $03
	ld b, $49                                        ; $5f94: $06 $49
	ret nz                                           ; $5f96: $c0

	ld bc, $01a0                                     ; $5f97: $01 $a0 $01
	ld b, $51                                        ; $5f9a: $06 $51
	ret nz                                           ; $5f9c: $c0

	ld d, [hl]                                       ; $5f9d: $56
	pop de                                           ; $5f9e: $d1
	call c, $e5d6                                    ; $5f9f: $dc $d6 $e5
	rla                                              ; $5fa2: $17
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	ld b, $5a                                        ; $5fa5: $06 $5a
	add hl, bc                                       ; $5fa7: $09
	inc bc                                           ; $5fa8: $03
	ldh [rP1], a                                     ; $5fa9: $e0 $00
	ld [$09d1], sp                                   ; $5fab: $08 $d1 $09
	inc bc                                           ; $5fae: $03
	ldh [rP1], a                                     ; $5faf: $e0 $00
	ld [bc], a                                       ; $5fb1: $02
	ld b, h                                          ; $5fb2: $44
	pop bc                                           ; $5fb3: $c1
	ld e, c                                          ; $5fb4: $59
	db $e3                                           ; $5fb5: $e3
	nop                                              ; $5fb6: $00
	adc c                                            ; $5fb7: $89
	db $fd                                           ; $5fb8: $fd
	add hl, sp                                       ; $5fb9: $39
	adc e                                            ; $5fba: $8b
	and b                                            ; $5fbb: $a0
	ld [bc], a                                       ; $5fbc: $02
	ld [bc], a                                       ; $5fbd: $02
	or b                                             ; $5fbe: $b0
	ld a, h                                          ; $5fbf: $7c
	dec b                                            ; $5fc0: $05
	ret nz                                           ; $5fc1: $c0

	ld d, [hl]                                       ; $5fc2: $56
	pop de                                           ; $5fc3: $d1
	call c, $02d1                                    ; $5fc4: $dc $d1 $02
	or b                                             ; $5fc7: $b0
	ld a, [hl]                                       ; $5fc8: $7e
	dec b                                            ; $5fc9: $05
	ret nz                                           ; $5fca: $c0

	ld d, [hl]                                       ; $5fcb: $56
	pop de                                           ; $5fcc: $d1
	call c, $02d2                                    ; $5fcd: $dc $d2 $02
	or b                                             ; $5fd0: $b0
	ld a, a                                          ; $5fd1: $7f
	dec b                                            ; $5fd2: $05
	ret nz                                           ; $5fd3: $c0

	ld d, [hl]                                       ; $5fd4: $56
	pop de                                           ; $5fd5: $d1
	call c, $02d3                                    ; $5fd6: $dc $d3 $02
	or b                                             ; $5fd9: $b0
	ld a, e                                          ; $5fda: $7b
	dec b                                            ; $5fdb: $05
	ret nz                                           ; $5fdc: $c0

	ld d, [hl]                                       ; $5fdd: $56
	pop de                                           ; $5fde: $d1
	call c, $02d4                                    ; $5fdf: $dc $d4 $02
	or b                                             ; $5fe2: $b0
	ld a, l                                          ; $5fe3: $7d
	dec b                                            ; $5fe4: $05
	ret nz                                           ; $5fe5: $c0

	ld d, [hl]                                       ; $5fe6: $56
	pop de                                           ; $5fe7: $d1
	call c, $02d5                                    ; $5fe8: $dc $d5 $02
	or b                                             ; $5feb: $b0
	ld a, d                                          ; $5fec: $7a
	dec b                                            ; $5fed: $05
	ret nz                                           ; $5fee: $c0

	ld d, [hl]                                       ; $5fef: $56
	pop de                                           ; $5ff0: $d1
	call c, $e5d7                                    ; $5ff1: $dc $d7 $e5
	rla                                              ; $5ff4: $17
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	add hl, bc                                       ; $5ff7: $09
	dec l                                            ; $5ff8: $2d
	ret nz                                           ; $5ff9: $c0

	ld bc, $03a0                                     ; $5ffa: $01 $a0 $03
	ld b, $5c                                        ; $5ffd: $06 $5c
	ret nz                                           ; $5fff: $c0

	ld bc, $01a0                                     ; $6000: $01 $a0 $01
	ld b, $65                                        ; $6003: $06 $65
	add c                                            ; $6005: $81
	ret nz                                           ; $6006: $c0

	ld h, l                                          ; $6007: $65
	ld b, $d4                                        ; $6008: $06 $d4
	push de                                          ; $600a: $d5
	rst SubAFromHL                                          ; $600b: $d7
	ret c                                            ; $600c: $d8

	reti                                             ; $600d: $d9


	jp c, $d008                                      ; $600e: $da $08 $d0

	add e                                            ; $6011: $83
	ld bc, $d0de                                     ; $6012: $01 $de $d0
	db $e4                                           ; $6015: $e4
	nop                                              ; $6016: $00
	db $10                                           ; $6017: $10
	inc b                                            ; $6018: $04
	pop de                                           ; $6019: $d1
	db $d3                                           ; $601a: $d3
	sub $db                                          ; $601b: $d6 $db
	ld [$83d0], sp                                   ; $601d: $08 $d0 $83
	ld bc, $d1de                                     ; $6020: $01 $de $d1
	db $e4                                           ; $6023: $e4
	ld bc, $0952                                     ; $6024: $01 $52 $09
	inc e                                            ; $6027: $1c
	pop bc                                           ; $6028: $c1
	ld e, c                                          ; $6029: $59
	db $e3                                           ; $602a: $e3
	nop                                              ; $602b: $00
	cp b                                             ; $602c: $b8
	ret nz                                           ; $602d: $c0

	add hl, bc                                       ; $602e: $09
	db $e3                                           ; $602f: $e3
	nop                                              ; $6030: $00
	dec de                                           ; $6031: $1b
	and b                                            ; $6032: $a0
	add b                                            ; $6033: $80
	and b                                            ; $6034: $a0
	ld d, $00                                        ; $6035: $16 $00
	inc bc                                           ; $6037: $03
	db $e4                                           ; $6038: $e4
	nop                                              ; $6039: $00
	dec bc                                           ; $603a: $0b
	rst $38                                          ; $603b: $ff
	rlca                                             ; $603c: $07
	ld b, b                                          ; $603d: $40
	add b                                            ; $603e: $80
	and b                                            ; $603f: $a0
	ld d, $e4                                        ; $6040: $16 $e4
	nop                                              ; $6042: $00
	sbc e                                            ; $6043: $9b
	jr z, jr_07e_604c                                ; $6044: $28 $06

	ret nz                                           ; $6046: $c0

	ld bc, $03a0                                     ; $6047: $01 $a0 $03
	ld b, $6b                                        ; $604a: $06 $6b

jr_07e_604c:
	sub b                                            ; $604c: $90
	ld b, $74                                        ; $604d: $06 $74
	add hl, bc                                       ; $604f: $09
	inc l                                            ; $6050: $2c
	pop hl                                           ; $6051: $e1
	ld [bc], a                                       ; $6052: $02
	inc bc                                           ; $6053: $03
	rla                                              ; $6054: $17
	add d                                            ; $6055: $82
	ret nz                                           ; $6056: $c0

	dec de                                           ; $6057: $1b
	pop de                                           ; $6058: $d1
	ld [bc], a                                       ; $6059: $02
	ret nc                                           ; $605a: $d0

	pop de                                           ; $605b: $d1
	ld b, $c0                                        ; $605c: $06 $c0
	ld bc, $03a0                                     ; $605e: $01 $a0 $03
	ld b, $7a                                        ; $6061: $06 $7a
	ld [bc], a                                       ; $6063: $02
	jp nc, $06d3                                     ; $6064: $d2 $d3 $06

	ret nz                                           ; $6067: $c0

	ld bc, $03a0                                     ; $6068: $01 $a0 $03
	ld b, $87                                        ; $606b: $06 $87
	ld bc, $06d4                                     ; $606d: $01 $d4 $06
	ret nz                                           ; $6070: $c0

	ld bc, $03a0                                     ; $6071: $01 $a0 $03
	ld b, $94                                        ; $6074: $06 $94
	pop hl                                           ; $6076: $e1
	ld [bc], a                                       ; $6077: $02
	inc bc                                           ; $6078: $03
	ld l, h                                          ; $6079: $6c
	db $e4                                           ; $607a: $e4
	ld [bc], a                                       ; $607b: $02
	ld c, e                                          ; $607c: $4b
	ld b, $9b                                        ; $607d: $06 $9b
	add hl, bc                                       ; $607f: $09
	inc l                                            ; $6080: $2c
	pop hl                                           ; $6081: $e1
	ld [bc], a                                       ; $6082: $02
	inc bc                                           ; $6083: $03
	rra                                              ; $6084: $1f
	add d                                            ; $6085: $82
	ret nz                                           ; $6086: $c0

	dec de                                           ; $6087: $1b
	pop de                                           ; $6088: $d1
	ld [bc], a                                       ; $6089: $02
	ret nc                                           ; $608a: $d0

	pop de                                           ; $608b: $d1
	ld b, $c0                                        ; $608c: $06 $c0
	ld bc, $03a0                                     ; $608e: $01 $a0 $03
	ld b, $9f                                        ; $6091: $06 $9f
	ld [bc], a                                       ; $6093: $02
	jp nc, $06d3                                     ; $6094: $d2 $d3 $06

	ret nz                                           ; $6097: $c0

	ld bc, $03a0                                     ; $6098: $01 $a0 $03
	ld b, $a7                                        ; $609b: $06 $a7
	ld bc, $06d4                                     ; $609d: $01 $d4 $06
	ret nz                                           ; $60a0: $c0

	ld bc, $03a0                                     ; $60a1: $01 $a0 $03
	ld b, $af                                        ; $60a4: $06 $af
	pop hl                                           ; $60a6: $e1
	ld [bc], a                                       ; $60a7: $02
	inc bc                                           ; $60a8: $03
	ld a, [hl]                                       ; $60a9: $7e
	db $e4                                           ; $60aa: $e4
	ld [bc], a                                       ; $60ab: $02
	dec de                                           ; $60ac: $1b
	ld b, $b7                                        ; $60ad: $06 $b7
	add hl, bc                                       ; $60af: $09
	inc l                                            ; $60b0: $2c
	pop hl                                           ; $60b1: $e1
	ld [bc], a                                       ; $60b2: $02
	inc bc                                           ; $60b3: $03
	dec de                                           ; $60b4: $1b
	add d                                            ; $60b5: $82
	ret nz                                           ; $60b6: $c0

	dec de                                           ; $60b7: $1b
	pop de                                           ; $60b8: $d1
	ld [bc], a                                       ; $60b9: $02
	ret nc                                           ; $60ba: $d0

	pop de                                           ; $60bb: $d1
	ld b, $c0                                        ; $60bc: $06 $c0
	ld bc, $03a0                                     ; $60be: $01 $a0 $03
	ld b, $bc                                        ; $60c1: $06 $bc
	ld [bc], a                                       ; $60c3: $02
	jp nc, $06d3                                     ; $60c4: $d2 $d3 $06

	ret nz                                           ; $60c7: $c0

	ld bc, $03a0                                     ; $60c8: $01 $a0 $03
	ld b, $ca                                        ; $60cb: $06 $ca
	ld bc, $06d4                                     ; $60cd: $01 $d4 $06
	ret nz                                           ; $60d0: $c0

	ld bc, $03a0                                     ; $60d1: $01 $a0 $03
	ld b, $d1                                        ; $60d4: $06 $d1
	pop hl                                           ; $60d6: $e1
	ld [bc], a                                       ; $60d7: $02
	inc bc                                           ; $60d8: $03
	ld [hl], l                                       ; $60d9: $75
	db $e4                                           ; $60da: $e4
	ld bc, $28eb                                     ; $60db: $01 $eb $28
	ld b, $c0                                        ; $60de: $06 $c0
	ld bc, $03a0                                     ; $60e0: $01 $a0 $03
	ld b, $d9                                        ; $60e3: $06 $d9
	sub b                                            ; $60e5: $90
	ld b, $e0                                        ; $60e6: $06 $e0
	add hl, bc                                       ; $60e8: $09
	inc l                                            ; $60e9: $2c
	pop hl                                           ; $60ea: $e1
	ld [bc], a                                       ; $60eb: $02
	inc bc                                           ; $60ec: $03
	rla                                              ; $60ed: $17
	add d                                            ; $60ee: $82
	ret nz                                           ; $60ef: $c0

	dec de                                           ; $60f0: $1b
	pop de                                           ; $60f1: $d1
	ld [bc], a                                       ; $60f2: $02
	ret nc                                           ; $60f3: $d0

	pop de                                           ; $60f4: $d1
	ld b, $c0                                        ; $60f5: $06 $c0
	ld bc, $03a0                                     ; $60f7: $01 $a0 $03
	ld b, $e2                                        ; $60fa: $06 $e2
	ld [bc], a                                       ; $60fc: $02
	jp nc, $06d3                                     ; $60fd: $d2 $d3 $06

	ret nz                                           ; $6100: $c0

	ld bc, $03a0                                     ; $6101: $01 $a0 $03
	ld b, $e8                                        ; $6104: $06 $e8
	ld bc, $06d4                                     ; $6106: $01 $d4 $06
	ret nz                                           ; $6109: $c0

	ld bc, $03a0                                     ; $610a: $01 $a0 $03
	ld b, $f0                                        ; $610d: $06 $f0
	pop hl                                           ; $610f: $e1
	ld [bc], a                                       ; $6110: $02
	inc bc                                           ; $6111: $03
	ld l, h                                          ; $6112: $6c
	db $e4                                           ; $6113: $e4
	ld bc, $06b2                                     ; $6114: $01 $b2 $06
	pop af                                           ; $6117: $f1
	add hl, bc                                       ; $6118: $09
	inc l                                            ; $6119: $2c
	pop hl                                           ; $611a: $e1
	ld [bc], a                                       ; $611b: $02
	inc bc                                           ; $611c: $03
	rra                                              ; $611d: $1f
	add d                                            ; $611e: $82
	ret nz                                           ; $611f: $c0

	dec de                                           ; $6120: $1b
	pop de                                           ; $6121: $d1
	ld [bc], a                                       ; $6122: $02
	ret nc                                           ; $6123: $d0

	pop de                                           ; $6124: $d1
	ld b, $c0                                        ; $6125: $06 $c0
	ld bc, $03a0                                     ; $6127: $01 $a0 $03
	ld b, $f3                                        ; $612a: $06 $f3
	ld [bc], a                                       ; $612c: $02
	jp nc, $06d3                                     ; $612d: $d2 $d3 $06

	ret nz                                           ; $6130: $c0

	ld bc, $03a0                                     ; $6131: $01 $a0 $03
	ld b, $fd                                        ; $6134: $06 $fd
	ld bc, $06d4                                     ; $6136: $01 $d4 $06
	ret nz                                           ; $6139: $c0

	ld bc, $03a0                                     ; $613a: $01 $a0 $03
	rlca                                             ; $613d: $07
	ld b, $e1                                        ; $613e: $06 $e1
	ld [bc], a                                       ; $6140: $02
	inc bc                                           ; $6141: $03
	ld a, [hl]                                       ; $6142: $7e
	db $e4                                           ; $6143: $e4
	ld bc, $0782                                     ; $6144: $01 $82 $07
	rrca                                             ; $6147: $0f
	add hl, bc                                       ; $6148: $09
	inc l                                            ; $6149: $2c
	pop hl                                           ; $614a: $e1
	ld [bc], a                                       ; $614b: $02
	inc bc                                           ; $614c: $03
	dec de                                           ; $614d: $1b
	add d                                            ; $614e: $82
	ret nz                                           ; $614f: $c0

	dec de                                           ; $6150: $1b
	pop de                                           ; $6151: $d1
	ld [bc], a                                       ; $6152: $02
	ret nc                                           ; $6153: $d0

	pop de                                           ; $6154: $d1
	ld b, $c0                                        ; $6155: $06 $c0
	ld bc, $03a0                                     ; $6157: $01 $a0 $03
	rlca                                             ; $615a: $07
	ld de, $d202                                     ; $615b: $11 $02 $d2
	db $d3                                           ; $615e: $d3
	ld b, $c0                                        ; $615f: $06 $c0
	ld bc, $03a0                                     ; $6161: $01 $a0 $03
	rlca                                             ; $6164: $07
	inc e                                            ; $6165: $1c
	ld bc, $06d4                                     ; $6166: $01 $d4 $06
	ret nz                                           ; $6169: $c0

	ld bc, $03a0                                     ; $616a: $01 $a0 $03
	rlca                                             ; $616d: $07
	ld [hl+], a                                      ; $616e: $22
	pop hl                                           ; $616f: $e1
	ld [bc], a                                       ; $6170: $02
	inc bc                                           ; $6171: $03
	ld [hl], l                                       ; $6172: $75
	db $e4                                           ; $6173: $e4
	ld bc, $0952                                     ; $6174: $01 $52 $09
	inc e                                            ; $6177: $1c
	pop bc                                           ; $6178: $c1
	ld e, c                                          ; $6179: $59
	db $e3                                           ; $617a: $e3
	nop                                              ; $617b: $00
	cp c                                             ; $617c: $b9
	ret nz                                           ; $617d: $c0

	add hl, bc                                       ; $617e: $09
	db $e3                                           ; $617f: $e3
	nop                                              ; $6180: $00
	scf                                              ; $6181: $37
	and b                                            ; $6182: $a0
	add b                                            ; $6183: $80
	and b                                            ; $6184: $a0
	rla                                              ; $6185: $17
	nop                                              ; $6186: $00
	inc bc                                           ; $6187: $03
	db $e4                                           ; $6188: $e4
	nop                                              ; $6189: $00
	dec bc                                           ; $618a: $0b
	rst $38                                          ; $618b: $ff
	rlca                                             ; $618c: $07
	ld b, b                                          ; $618d: $40
	add b                                            ; $618e: $80
	and b                                            ; $618f: $a0
	rla                                              ; $6190: $17
	db $e4                                           ; $6191: $e4
	nop                                              ; $6192: $00
	sbc e                                            ; $6193: $9b
	jr z, jr_07e_619c                                ; $6194: $28 $06

	ret nz                                           ; $6196: $c0

	ld bc, $03a0                                     ; $6197: $01 $a0 $03
	rlca                                             ; $619a: $07
	daa                                              ; $619b: $27

jr_07e_619c:
	sub b                                            ; $619c: $90
	rlca                                             ; $619d: $07
	cpl                                              ; $619e: $2f
	add hl, bc                                       ; $619f: $09
	inc l                                            ; $61a0: $2c
	pop hl                                           ; $61a1: $e1
	ld [bc], a                                       ; $61a2: $02
	inc bc                                           ; $61a3: $03
	rla                                              ; $61a4: $17
	add d                                            ; $61a5: $82
	ret nz                                           ; $61a6: $c0

	dec de                                           ; $61a7: $1b
	pop de                                           ; $61a8: $d1
	ld [bc], a                                       ; $61a9: $02
	ret nc                                           ; $61aa: $d0

	pop de                                           ; $61ab: $d1
	ld b, $c0                                        ; $61ac: $06 $c0
	ld bc, $03a0                                     ; $61ae: $01 $a0 $03
	rlca                                             ; $61b1: $07
	ld sp, $d202                                     ; $61b2: $31 $02 $d2
	db $d3                                           ; $61b5: $d3
	ld b, $c0                                        ; $61b6: $06 $c0
	ld bc, $03a0                                     ; $61b8: $01 $a0 $03
	rlca                                             ; $61bb: $07
	ld [hl], $01                                     ; $61bc: $36 $01
	call nc, $c006                                   ; $61be: $d4 $06 $c0
	ld bc, $03a0                                     ; $61c1: $01 $a0 $03
	rlca                                             ; $61c4: $07
	inc a                                            ; $61c5: $3c
	pop hl                                           ; $61c6: $e1
	ld [bc], a                                       ; $61c7: $02
	inc bc                                           ; $61c8: $03
	ld l, h                                          ; $61c9: $6c
	db $e4                                           ; $61ca: $e4
	nop                                              ; $61cb: $00
	ei                                               ; $61cc: $fb
	rlca                                             ; $61cd: $07
	ld b, a                                          ; $61ce: $47
	add hl, bc                                       ; $61cf: $09
	inc l                                            ; $61d0: $2c
	pop hl                                           ; $61d1: $e1
	ld [bc], a                                       ; $61d2: $02
	inc bc                                           ; $61d3: $03
	rra                                              ; $61d4: $1f
	add d                                            ; $61d5: $82
	ret nz                                           ; $61d6: $c0

	dec de                                           ; $61d7: $1b
	pop de                                           ; $61d8: $d1
	ld [bc], a                                       ; $61d9: $02
	ret nc                                           ; $61da: $d0

	pop de                                           ; $61db: $d1
	ld b, $c0                                        ; $61dc: $06 $c0
	ld bc, $03a0                                     ; $61de: $01 $a0 $03
	rlca                                             ; $61e1: $07
	ld c, c                                          ; $61e2: $49
	ld [bc], a                                       ; $61e3: $02
	jp nc, $06d3                                     ; $61e4: $d2 $d3 $06

	ret nz                                           ; $61e7: $c0

	ld bc, $03a0                                     ; $61e8: $01 $a0 $03
	rlca                                             ; $61eb: $07
	ld d, d                                          ; $61ec: $52
	ld bc, $06d4                                     ; $61ed: $01 $d4 $06
	ret nz                                           ; $61f0: $c0

	ld bc, $03a0                                     ; $61f1: $01 $a0 $03
	rlca                                             ; $61f4: $07
	ld h, c                                          ; $61f5: $61
	pop hl                                           ; $61f6: $e1
	ld [bc], a                                       ; $61f7: $02
	inc bc                                           ; $61f8: $03
	ld a, [hl]                                       ; $61f9: $7e
	db $e4                                           ; $61fa: $e4
	nop                                              ; $61fb: $00
	rlc a                                            ; $61fc: $cb $07
	ld h, [hl]                                       ; $61fe: $66
	add hl, bc                                       ; $61ff: $09
	inc l                                            ; $6200: $2c
	pop hl                                           ; $6201: $e1
	ld [bc], a                                       ; $6202: $02
	inc bc                                           ; $6203: $03
	dec de                                           ; $6204: $1b
	add d                                            ; $6205: $82
	ret nz                                           ; $6206: $c0

	dec de                                           ; $6207: $1b
	pop de                                           ; $6208: $d1
	ld [bc], a                                       ; $6209: $02
	ret nc                                           ; $620a: $d0

	pop de                                           ; $620b: $d1
	ld b, $c0                                        ; $620c: $06 $c0
	ld bc, $03a0                                     ; $620e: $01 $a0 $03
	rlca                                             ; $6211: $07
	ld l, b                                          ; $6212: $68
	ld [bc], a                                       ; $6213: $02
	jp nc, $06d3                                     ; $6214: $d2 $d3 $06

	ret nz                                           ; $6217: $c0

	ld bc, $03a0                                     ; $6218: $01 $a0 $03
	rlca                                             ; $621b: $07
	ld [hl], d                                       ; $621c: $72
	ld bc, $06d4                                     ; $621d: $01 $d4 $06
	ret nz                                           ; $6220: $c0

	ld bc, $03a0                                     ; $6221: $01 $a0 $03
	ld b, $f0                                        ; $6224: $06 $f0
	pop hl                                           ; $6226: $e1
	ld [bc], a                                       ; $6227: $02
	inc bc                                           ; $6228: $03
	ld [hl], l                                       ; $6229: $75
	db $e4                                           ; $622a: $e4
	nop                                              ; $622b: $00
	sbc e                                            ; $622c: $9b
	jr z, jr_07e_6235                                ; $622d: $28 $06

	ret nz                                           ; $622f: $c0

	ld bc, $03a0                                     ; $6230: $01 $a0 $03
	rlca                                             ; $6233: $07
	ld a, c                                          ; $6234: $79

jr_07e_6235:
	sub b                                            ; $6235: $90
	rlca                                             ; $6236: $07
	add d                                            ; $6237: $82
	add hl, bc                                       ; $6238: $09
	inc l                                            ; $6239: $2c
	pop hl                                           ; $623a: $e1
	ld [bc], a                                       ; $623b: $02
	inc bc                                           ; $623c: $03
	inc de                                           ; $623d: $13
	add d                                            ; $623e: $82
	ret nz                                           ; $623f: $c0

	dec de                                           ; $6240: $1b
	pop de                                           ; $6241: $d1
	ld [bc], a                                       ; $6242: $02
	ret nc                                           ; $6243: $d0

	pop de                                           ; $6244: $d1
	ld b, $c0                                        ; $6245: $06 $c0
	ld bc, $03a0                                     ; $6247: $01 $a0 $03
	rlca                                             ; $624a: $07
	adc b                                            ; $624b: $88
	ld [bc], a                                       ; $624c: $02
	jp nc, $06d3                                     ; $624d: $d2 $d3 $06

	ret nz                                           ; $6250: $c0

	ld bc, $03a0                                     ; $6251: $01 $a0 $03
	rlca                                             ; $6254: $07
	sub h                                            ; $6255: $94
	ld bc, $06d4                                     ; $6256: $01 $d4 $06
	ret nz                                           ; $6259: $c0

	ld bc, $03a0                                     ; $625a: $01 $a0 $03
	rlca                                             ; $625d: $07
	sbc c                                            ; $625e: $99
	pop hl                                           ; $625f: $e1
	ld [bc], a                                       ; $6260: $02
	inc bc                                           ; $6261: $03
	ld e, d                                          ; $6262: $5a
	db $e4                                           ; $6263: $e4
	nop                                              ; $6264: $00
	ld h, d                                          ; $6265: $62
	rlca                                             ; $6266: $07
	and c                                            ; $6267: $a1
	add hl, bc                                       ; $6268: $09
	inc l                                            ; $6269: $2c
	pop hl                                           ; $626a: $e1
	ld [bc], a                                       ; $626b: $02
	inc bc                                           ; $626c: $03
	rra                                              ; $626d: $1f
	add d                                            ; $626e: $82
	ret nz                                           ; $626f: $c0

	dec de                                           ; $6270: $1b
	pop de                                           ; $6271: $d1
	ld [bc], a                                       ; $6272: $02
	ret nc                                           ; $6273: $d0

	pop de                                           ; $6274: $d1
	ld b, $c0                                        ; $6275: $06 $c0
	ld bc, $03a0                                     ; $6277: $01 $a0 $03
	rlca                                             ; $627a: $07
	xor b                                            ; $627b: $a8
	ld [bc], a                                       ; $627c: $02
	jp nc, $06d3                                     ; $627d: $d2 $d3 $06

	ret nz                                           ; $6280: $c0

	ld bc, $03a0                                     ; $6281: $01 $a0 $03
	rlca                                             ; $6284: $07
	or h                                             ; $6285: $b4
	ld bc, $06d4                                     ; $6286: $01 $d4 $06
	ret nz                                           ; $6289: $c0

	ld bc, $03a0                                     ; $628a: $01 $a0 $03
	rlca                                             ; $628d: $07
	cp [hl]                                          ; $628e: $be
	pop hl                                           ; $628f: $e1
	ld [bc], a                                       ; $6290: $02
	inc bc                                           ; $6291: $03
	ld a, [hl]                                       ; $6292: $7e
	db $e4                                           ; $6293: $e4
	nop                                              ; $6294: $00
	ld [hl-], a                                      ; $6295: $32
	rlca                                             ; $6296: $07
	push bc                                          ; $6297: $c5
	add hl, bc                                       ; $6298: $09
	inc l                                            ; $6299: $2c
	pop hl                                           ; $629a: $e1
	ld [bc], a                                       ; $629b: $02
	inc bc                                           ; $629c: $03
	dec de                                           ; $629d: $1b
	add d                                            ; $629e: $82
	ret nz                                           ; $629f: $c0

	dec de                                           ; $62a0: $1b
	pop de                                           ; $62a1: $d1
	ld [bc], a                                       ; $62a2: $02
	ret nc                                           ; $62a3: $d0

	pop de                                           ; $62a4: $d1
	ld b, $c0                                        ; $62a5: $06 $c0
	ld bc, $03a0                                     ; $62a7: $01 $a0 $03
	rlca                                             ; $62aa: $07
	jp z, $d202                                      ; $62ab: $ca $02 $d2

	db $d3                                           ; $62ae: $d3
	ld b, $c0                                        ; $62af: $06 $c0
	ld bc, $03a0                                     ; $62b1: $01 $a0 $03
	rlca                                             ; $62b4: $07
	push de                                          ; $62b5: $d5
	ld bc, $06d4                                     ; $62b6: $01 $d4 $06
	ret nz                                           ; $62b9: $c0

	ld bc, $03a0                                     ; $62ba: $01 $a0 $03
	rlca                                             ; $62bd: $07
	db $dd                                           ; $62be: $dd
	pop hl                                           ; $62bf: $e1
	ld [bc], a                                       ; $62c0: $02
	inc bc                                           ; $62c1: $03
	ld [hl], l                                       ; $62c2: $75
	db $e4                                           ; $62c3: $e4
	nop                                              ; $62c4: $00
	ld [bc], a                                       ; $62c5: $02
	add hl, bc                                       ; $62c6: $09
	inc hl                                           ; $62c7: $23
	pop hl                                           ; $62c8: $e1
	ld [bc], a                                       ; $62c9: $02
	ld [$815c], sp                                   ; $62ca: $08 $5c $81
	ret nz                                           ; $62cd: $c0

	ld h, l                                          ; $62ce: $65
	ld b, $d4                                        ; $62cf: $06 $d4
	push de                                          ; $62d1: $d5
	rst SubAFromHL                                          ; $62d2: $d7
	ret c                                            ; $62d3: $d8

	reti                                             ; $62d4: $d9


	jp c, $c005                                      ; $62d5: $da $05 $c0

	ld d, [hl]                                       ; $62d8: $56
	pop de                                           ; $62d9: $d1
	db $dd                                           ; $62da: $dd
	ret nc                                           ; $62db: $d0

	inc b                                            ; $62dc: $04
	pop de                                           ; $62dd: $d1
	db $d3                                           ; $62de: $d3
	sub $db                                          ; $62df: $d6 $db
	dec b                                            ; $62e1: $05
	ret nz                                           ; $62e2: $c0

	ld d, [hl]                                       ; $62e3: $56
	pop de                                           ; $62e4: $d1
	db $dd                                           ; $62e5: $dd
	pop de                                           ; $62e6: $d1
	push hl                                          ; $62e7: $e5
	rla                                              ; $62e8: $17
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	add hl, bc                                       ; $62eb: $09
	rrca                                             ; $62ec: $0f
	ret nz                                           ; $62ed: $c0

	ld bc, $03a0                                     ; $62ee: $01 $a0 $03
	rlca                                             ; $62f1: $07
	and $c0                                          ; $62f2: $e6 $c0
	ld bc, $01a0                                     ; $62f4: $01 $a0 $01
	rlca                                             ; $62f7: $07
	ldh a, [$e4]                                     ; $62f8: $f0 $e4
	nop                                              ; $62fa: $00
	ld [bc], a                                       ; $62fb: $02
	add hl, bc                                       ; $62fc: $09
	and [hl]                                         ; $62fd: $a6
	pop bc                                           ; $62fe: $c1
	ld e, c                                          ; $62ff: $59
	db $e3                                           ; $6300: $e3
	nop                                              ; $6301: $00
	sub h                                            ; $6302: $94
	ret nz                                           ; $6303: $c0

	ld bc, $03a0                                     ; $6304: $01 $a0 $03
	rlca                                             ; $6307: $07
	rst FarCall                                          ; $6308: $f7
	db $fd                                           ; $6309: $fd
	sbc c                                            ; $630a: $99
	adc e                                            ; $630b: $8b
	ld bc, $02ea                                     ; $630c: $01 $ea $02
	or b                                             ; $630f: $b0
	inc l                                            ; $6310: $2c
	rlca                                             ; $6311: $07
	pop hl                                           ; $6312: $e1
	ld [bc], a                                       ; $6313: $02
	dec b                                            ; $6314: $05
	ld c, a                                          ; $6315: $4f
	db $e4                                           ; $6316: $e4
	ld bc, $0220                                     ; $6317: $01 $20 $02
	or b                                             ; $631a: $b0
	dec l                                            ; $631b: $2d
	rlca                                             ; $631c: $07
	pop hl                                           ; $631d: $e1
	ld [bc], a                                       ; $631e: $02
	dec b                                            ; $631f: $05
	ld h, [hl]                                       ; $6320: $66
	db $e4                                           ; $6321: $e4
	nop                                              ; $6322: $00
	add d                                            ; $6323: $82
	ld [bc], a                                       ; $6324: $02
	or b                                             ; $6325: $b0
	ld l, $07                                        ; $6326: $2e $07
	pop hl                                           ; $6328: $e1
	ld [bc], a                                       ; $6329: $02
	dec b                                            ; $632a: $05
	ld a, l                                          ; $632b: $7d
	db $e4                                           ; $632c: $e4
	ld bc, $020a                                     ; $632d: $01 $0a $02
	or b                                             ; $6330: $b0
	cpl                                              ; $6331: $2f
	rlca                                             ; $6332: $07
	pop hl                                           ; $6333: $e1
	ld [bc], a                                       ; $6334: $02
	dec b                                            ; $6335: $05
	sub h                                            ; $6336: $94
	db $e4                                           ; $6337: $e4
	ld bc, $0292                                     ; $6338: $01 $92 $02
	or b                                             ; $633b: $b0
	jr nc, @+$09                                     ; $633c: $30 $07

	pop hl                                           ; $633e: $e1
	ld [bc], a                                       ; $633f: $02
	dec b                                            ; $6340: $05
	xor e                                            ; $6341: $ab
	db $e4                                           ; $6342: $e4
	ld bc, $0287                                     ; $6343: $01 $87 $02
	or b                                             ; $6346: $b0
	ld sp, $e107                                     ; $6347: $31 $07 $e1
	ld [bc], a                                       ; $634a: $02
	dec b                                            ; $634b: $05
	jp nz, $00e4                                     ; $634c: $c2 $e4 $00

	jp hl                                            ; $634f: $e9


	ld [bc], a                                       ; $6350: $02
	or b                                             ; $6351: $b0
	ld [hl-], a                                      ; $6352: $32
	inc h                                            ; $6353: $24
	pop hl                                           ; $6354: $e1
	ld [bc], a                                       ; $6355: $02
	dec b                                            ; $6356: $05
	dec sp                                           ; $6357: $3b
	ret nc                                           ; $6358: $d0

	add e                                            ; $6359: $83
	ld bc, $d6de                                     ; $635a: $01 $de $d6
	ret nz                                           ; $635d: $c0

	add hl, bc                                       ; $635e: $09
	db $e3                                           ; $635f: $e3
	nop                                              ; $6360: $00
	ld h, $c0                                        ; $6361: $26 $c0
	ld bc, $01a0                                     ; $6363: $01 $a0 $01
	ld [$6000], sp                                   ; $6366: $08 $00 $60
	add b                                            ; $6369: $80
	ld [bc], a                                       ; $636a: $02
	ld [hl], d                                       ; $636b: $72
	rlca                                             ; $636c: $07
	pop hl                                           ; $636d: $e1
	ld [bc], a                                       ; $636e: $02
	ld b, $4c                                        ; $636f: $06 $4c
	db $e4                                           ; $6371: $e4
	nop                                              ; $6372: $00
	ld [hl-], a                                      ; $6373: $32
	inc bc                                           ; $6374: $03
	db $e4                                           ; $6375: $e4
	ld bc, $02e7                                     ; $6376: $01 $e7 $02
	or b                                             ; $6379: $b0
	inc sp                                           ; $637a: $33
	rlca                                             ; $637b: $07
	pop hl                                           ; $637c: $e1
	ld [bc], a                                       ; $637d: $02
	dec b                                            ; $637e: $05
	ldh a, [$e4]                                     ; $637f: $f0 $e4
	ld bc, $0249                                     ; $6381: $01 $49 $02
	or b                                             ; $6384: $b0
	inc [hl]                                         ; $6385: $34
	rlca                                             ; $6386: $07
	pop hl                                           ; $6387: $e1
	ld [bc], a                                       ; $6388: $02
	ld b, $07                                        ; $6389: $06 $07
	db $e4                                           ; $638b: $e4
	nop                                              ; $638c: $00
	xor e                                            ; $638d: $ab
	ld [bc], a                                       ; $638e: $02
	or b                                             ; $638f: $b0
	dec [hl]                                         ; $6390: $35
	rlca                                             ; $6391: $07
	pop hl                                           ; $6392: $e1
	ld [bc], a                                       ; $6393: $02
	ld b, $1e                                        ; $6394: $06 $1e
	db $e4                                           ; $6396: $e4
	nop                                              ; $6397: $00
	and b                                            ; $6398: $a0
	ld [bc], a                                       ; $6399: $02
	or b                                             ; $639a: $b0
	ld [hl], $07                                     ; $639b: $36 $07
	pop hl                                           ; $639d: $e1
	ld [bc], a                                       ; $639e: $02
	ld b, $35                                        ; $639f: $06 $35
	db $e4                                           ; $63a1: $e4
	nop                                              ; $63a2: $00
	ld [bc], a                                       ; $63a3: $02
	jr z, jr_07e_63a6                                ; $63a4: $28 $00

jr_07e_63a6:
	sub b                                            ; $63a6: $90
	ld [$0913], sp                                   ; $63a7: $08 $13 $09
	inc l                                            ; $63aa: $2c
	pop hl                                           ; $63ab: $e1
	ld [bc], a                                       ; $63ac: $02
	inc bc                                           ; $63ad: $03
	rrca                                             ; $63ae: $0f
	add d                                            ; $63af: $82
	ret nz                                           ; $63b0: $c0

	dec de                                           ; $63b1: $1b
	pop de                                           ; $63b2: $d1
	ld [bc], a                                       ; $63b3: $02
	ret nc                                           ; $63b4: $d0

	pop de                                           ; $63b5: $d1
	ld b, $c0                                        ; $63b6: $06 $c0
	ld bc, $03a0                                     ; $63b8: $01 $a0 $03
	ld [$0215], sp                                   ; $63bb: $08 $15 $02
	jp nc, $06d3                                     ; $63be: $d2 $d3 $06

	ret nz                                           ; $63c1: $c0

	ld bc, $03a0                                     ; $63c2: $01 $a0 $03
	ld [$0122], sp                                   ; $63c5: $08 $22 $01
	call nc, $c006                                   ; $63c8: $d4 $06 $c0
	ld bc, $03a0                                     ; $63cb: $01 $a0 $03
	ld [$e12d], sp                                   ; $63ce: $08 $2d $e1
	ld [bc], a                                       ; $63d1: $02
	inc bc                                           ; $63d2: $03
	ld e, d                                          ; $63d3: $5a
	db $e4                                           ; $63d4: $e4
	ld [bc], a                                       ; $63d5: $02
	ld b, d                                          ; $63d6: $42
	ld [$0931], sp                                   ; $63d7: $08 $31 $09
	inc l                                            ; $63da: $2c
	pop hl                                           ; $63db: $e1
	ld [bc], a                                       ; $63dc: $02
	inc bc                                           ; $63dd: $03
	rla                                              ; $63de: $17
	add d                                            ; $63df: $82
	ret nz                                           ; $63e0: $c0

	dec de                                           ; $63e1: $1b
	pop de                                           ; $63e2: $d1
	ld [bc], a                                       ; $63e3: $02
	ret nc                                           ; $63e4: $d0

	pop de                                           ; $63e5: $d1
	ld b, $c0                                        ; $63e6: $06 $c0
	ld bc, $03a0                                     ; $63e8: $01 $a0 $03
	ld [$0233], sp                                   ; $63eb: $08 $33 $02
	jp nc, $06d3                                     ; $63ee: $d2 $d3 $06

	ret nz                                           ; $63f1: $c0

	ld bc, $03a0                                     ; $63f2: $01 $a0 $03
	ld [$013e], sp                                   ; $63f5: $08 $3e $01
	call nc, $c006                                   ; $63f8: $d4 $06 $c0
	ld bc, $03a0                                     ; $63fb: $01 $a0 $03
	ld [$e14f], sp                                   ; $63fe: $08 $4f $e1
	ld [bc], a                                       ; $6401: $02
	inc bc                                           ; $6402: $03
	ld l, h                                          ; $6403: $6c
	db $e4                                           ; $6404: $e4
	ld [bc], a                                       ; $6405: $02
	ld [de], a                                       ; $6406: $12
	ld [$095d], sp                                   ; $6407: $08 $5d $09
	inc l                                            ; $640a: $2c
	pop hl                                           ; $640b: $e1
	ld [bc], a                                       ; $640c: $02
	inc bc                                           ; $640d: $03
	inc de                                           ; $640e: $13
	add d                                            ; $640f: $82
	ret nz                                           ; $6410: $c0

	dec de                                           ; $6411: $1b
	pop de                                           ; $6412: $d1
	ld [bc], a                                       ; $6413: $02
	ret nc                                           ; $6414: $d0

	pop de                                           ; $6415: $d1
	ld b, $c0                                        ; $6416: $06 $c0
	ld bc, $03a0                                     ; $6418: $01 $a0 $03
	ld [$025f], sp                                   ; $641b: $08 $5f $02
	jp nc, $06d3                                     ; $641e: $d2 $d3 $06

	ret nz                                           ; $6421: $c0

	ld bc, $03a0                                     ; $6422: $01 $a0 $03
	ld [$016c], sp                                   ; $6425: $08 $6c $01
	call nc, $c006                                   ; $6428: $d4 $06 $c0
	ld bc, $03a0                                     ; $642b: $01 $a0 $03
	ld [$e177], sp                                   ; $642e: $08 $77 $e1
	ld [bc], a                                       ; $6431: $02
	inc bc                                           ; $6432: $03
	ld h, e                                          ; $6433: $63
	db $e4                                           ; $6434: $e4
	ld bc, $28e2                                     ; $6435: $01 $e2 $28
	nop                                              ; $6438: $00
	sub b                                            ; $6439: $90
	ld [$0913], sp                                   ; $643a: $08 $13 $09
	inc l                                            ; $643d: $2c
	pop hl                                           ; $643e: $e1
	ld [bc], a                                       ; $643f: $02
	inc bc                                           ; $6440: $03
	dec de                                           ; $6441: $1b
	add d                                            ; $6442: $82
	ret nz                                           ; $6443: $c0

	dec de                                           ; $6444: $1b
	pop de                                           ; $6445: $d1
	ld [bc], a                                       ; $6446: $02
	ret nc                                           ; $6447: $d0

	pop de                                           ; $6448: $d1
	ld b, $c0                                        ; $6449: $06 $c0
	ld bc, $03a0                                     ; $644b: $01 $a0 $03
	ld [$0280], sp                                   ; $644e: $08 $80 $02
	jp nc, $06d3                                     ; $6451: $d2 $d3 $06

	ret nz                                           ; $6454: $c0

	ld bc, $03a0                                     ; $6455: $01 $a0 $03
	ld [$018b], sp                                   ; $6458: $08 $8b $01
	call nc, $c006                                   ; $645b: $d4 $06 $c0
	ld bc, $03a0                                     ; $645e: $01 $a0 $03
	ld [$e197], sp                                   ; $6461: $08 $97 $e1
	ld [bc], a                                       ; $6464: $02
	inc bc                                           ; $6465: $03
	ld a, [hl]                                       ; $6466: $7e
	db $e4                                           ; $6467: $e4
	ld bc, $08af                                     ; $6468: $01 $af $08
	ld sp, $2c09                                     ; $646b: $31 $09 $2c
	pop hl                                           ; $646e: $e1
	ld [bc], a                                       ; $646f: $02
	inc bc                                           ; $6470: $03
	rla                                              ; $6471: $17
	add d                                            ; $6472: $82
	ret nz                                           ; $6473: $c0

	dec de                                           ; $6474: $1b
	pop de                                           ; $6475: $d1
	ld [bc], a                                       ; $6476: $02
	ret nc                                           ; $6477: $d0

	pop de                                           ; $6478: $d1
	ld b, $c0                                        ; $6479: $06 $c0
	ld bc, $03a0                                     ; $647b: $01 $a0 $03
	ld [$02a4], sp                                   ; $647e: $08 $a4 $02
	jp nc, $06d3                                     ; $6481: $d2 $d3 $06

	ret nz                                           ; $6484: $c0

	ld bc, $03a0                                     ; $6485: $01 $a0 $03
	ld [$01ae], sp                                   ; $6488: $08 $ae $01
	call nc, $c006                                   ; $648b: $d4 $06 $c0
	ld bc, $03a0                                     ; $648e: $01 $a0 $03
	ld [$e1bc], sp                                   ; $6491: $08 $bc $e1
	ld [bc], a                                       ; $6494: $02
	inc bc                                           ; $6495: $03
	ld [hl], l                                       ; $6496: $75
	db $e4                                           ; $6497: $e4
	ld bc, $087f                                     ; $6498: $01 $7f $08
	ld e, l                                          ; $649b: $5d
	add hl, bc                                       ; $649c: $09
	inc l                                            ; $649d: $2c
	pop hl                                           ; $649e: $e1
	ld [bc], a                                       ; $649f: $02
	inc bc                                           ; $64a0: $03
	dec de                                           ; $64a1: $1b
	add d                                            ; $64a2: $82
	ret nz                                           ; $64a3: $c0

	dec de                                           ; $64a4: $1b
	pop de                                           ; $64a5: $d1
	ld [bc], a                                       ; $64a6: $02
	ret nc                                           ; $64a7: $d0

	pop de                                           ; $64a8: $d1
	ld b, $c0                                        ; $64a9: $06 $c0
	ld bc, $03a0                                     ; $64ab: $01 $a0 $03
	ld [$02be], sp                                   ; $64ae: $08 $be $02
	jp nc, $06d3                                     ; $64b1: $d2 $d3 $06

	ret nz                                           ; $64b4: $c0

	ld bc, $03a0                                     ; $64b5: $01 $a0 $03
	ld [$01c9], sp                                   ; $64b8: $08 $c9 $01
	call nc, $c006                                   ; $64bb: $d4 $06 $c0
	ld bc, $03a0                                     ; $64be: $01 $a0 $03
	ld [$e1d5], sp                                   ; $64c1: $08 $d5 $e1
	ld [bc], a                                       ; $64c4: $02
	inc bc                                           ; $64c5: $03
	ld a, [hl]                                       ; $64c6: $7e
	db $e4                                           ; $64c7: $e4
	ld bc, $284f                                     ; $64c8: $01 $4f $28
	nop                                              ; $64cb: $00
	sub b                                            ; $64cc: $90
	ld [$0913], sp                                   ; $64cd: $08 $13 $09
	inc l                                            ; $64d0: $2c
	pop hl                                           ; $64d1: $e1
	ld [bc], a                                       ; $64d2: $02
	inc bc                                           ; $64d3: $03
	rla                                              ; $64d4: $17
	add d                                            ; $64d5: $82
	ret nz                                           ; $64d6: $c0

	dec de                                           ; $64d7: $1b
	pop de                                           ; $64d8: $d1
	ld [bc], a                                       ; $64d9: $02
	ret nc                                           ; $64da: $d0

	pop de                                           ; $64db: $d1
	ld b, $c0                                        ; $64dc: $06 $c0
	ld bc, $03a0                                     ; $64de: $01 $a0 $03
	ld [$02e1], sp                                   ; $64e1: $08 $e1 $02
	jp nc, $06d3                                     ; $64e4: $d2 $d3 $06

	ret nz                                           ; $64e7: $c0

	ld bc, $03a0                                     ; $64e8: $01 $a0 $03
	ld [$01ea], sp                                   ; $64eb: $08 $ea $01
	call nc, $c006                                   ; $64ee: $d4 $06 $c0
	ld bc, $03a0                                     ; $64f1: $01 $a0 $03
	ld [$e1f1], sp                                   ; $64f4: $08 $f1 $e1
	ld [bc], a                                       ; $64f7: $02
	inc bc                                           ; $64f8: $03
	ld l, h                                          ; $64f9: $6c
	db $e4                                           ; $64fa: $e4
	ld bc, $081c                                     ; $64fb: $01 $1c $08
	ld sp, $2c09                                     ; $64fe: $31 $09 $2c
	pop hl                                           ; $6501: $e1
	ld [bc], a                                       ; $6502: $02
	inc bc                                           ; $6503: $03
	dec de                                           ; $6504: $1b
	add d                                            ; $6505: $82
	ret nz                                           ; $6506: $c0

	dec de                                           ; $6507: $1b
	pop de                                           ; $6508: $d1
	ld [bc], a                                       ; $6509: $02
	ret nc                                           ; $650a: $d0

	pop de                                           ; $650b: $d1
	ld b, $c0                                        ; $650c: $06 $c0
	ld bc, $03a0                                     ; $650e: $01 $a0 $03
	ld [$02fd], sp                                   ; $6511: $08 $fd $02
	jp nc, $06d3                                     ; $6514: $d2 $d3 $06

	ret nz                                           ; $6517: $c0

	ld bc, $03a0                                     ; $6518: $01 $a0 $03
	add hl, bc                                       ; $651b: $09
	rlca                                             ; $651c: $07
	ld bc, $06d4                                     ; $651d: $01 $d4 $06
	ret nz                                           ; $6520: $c0

	ld bc, $03a0                                     ; $6521: $01 $a0 $03
	add hl, bc                                       ; $6524: $09
	ld c, $e1                                        ; $6525: $0e $e1
	ld [bc], a                                       ; $6527: $02
	inc bc                                           ; $6528: $03
	ld [hl], l                                       ; $6529: $75
	db $e4                                           ; $652a: $e4
	nop                                              ; $652b: $00

jr_07e_652c:
	db $ec                                           ; $652c: $ec
	ld [$095d], sp                                   ; $652d: $08 $5d $09
	inc l                                            ; $6530: $2c
	pop hl                                           ; $6531: $e1
	ld [bc], a                                       ; $6532: $02
	inc bc                                           ; $6533: $03
	inc de                                           ; $6534: $13
	add d                                            ; $6535: $82
	ret nz                                           ; $6536: $c0

	dec de                                           ; $6537: $1b
	pop de                                           ; $6538: $d1
	ld [bc], a                                       ; $6539: $02
	ret nc                                           ; $653a: $d0

jr_07e_653b:
	pop de                                           ; $653b: $d1
	ld b, $c0                                        ; $653c: $06 $c0
	ld bc, $03a0                                     ; $653e: $01 $a0 $03
	add hl, bc                                       ; $6541: $09
	add hl, de                                       ; $6542: $19
	ld [bc], a                                       ; $6543: $02
	jp nc, $06d3                                     ; $6544: $d2 $d3 $06

	ret nz                                           ; $6547: $c0

	ld bc, $03a0                                     ; $6548: $01 $a0 $03
	add hl, bc                                       ; $654b: $09

jr_07e_654c:
	jr nz, @+$03                                     ; $654c: $20 $01

	call nc, $c006                                   ; $654e: $d4 $06 $c0
	ld bc, $03a0                                     ; $6551: $01 $a0 $03
	dec b                                            ; $6554: $05
	adc a                                            ; $6555: $8f
	pop hl                                           ; $6556: $e1
	ld [bc], a                                       ; $6557: $02
	inc bc                                           ; $6558: $03
	ld h, e                                          ; $6559: $63
	db $e4                                           ; $655a: $e4
	nop                                              ; $655b: $00
	cp h                                             ; $655c: $bc
	add hl, bc                                       ; $655d: $09
	add b                                            ; $655e: $80
	ret nz                                           ; $655f: $c0

	ld bc, $03a0                                     ; $6560: $01 $a0 $03
	add hl, bc                                       ; $6563: $09
	ld h, $c0                                        ; $6564: $26 $c0
	ld bc, $01a0                                     ; $6566: $01 $a0 $01
	add hl, bc                                       ; $6569: $09
	jr z, jr_07e_652c                                ; $656a: $28 $c0

	rrca                                             ; $656c: $0f
	db $e3                                           ; $656d: $e3
	nop                                              ; $656e: $00
	and $c0                                          ; $656f: $e6 $c0
	inc c                                            ; $6571: $0c
	ldh [$50], a                                     ; $6572: $e0 $50
	ret nz                                           ; $6574: $c0

	ld bc, $03a0                                     ; $6575: $01 $a0 $03
	add hl, bc                                       ; $6578: $09
	jr nc, jr_07e_653b                               ; $6579: $30 $c0

	ld bc, $01a0                                     ; $657b: $01 $a0 $01
	add hl, bc                                       ; $657e: $09
	inc [hl]                                         ; $657f: $34
	ret nz                                           ; $6580: $c0

	inc c                                            ; $6581: $0c
	ldh [$50], a                                     ; $6582: $e0 $50
	ret nz                                           ; $6584: $c0

	set 0, b                                         ; $6585: $cb $c0
	add hl, bc                                       ; $6587: $09
	db $e3                                           ; $6588: $e3
	nop                                              ; $6589: $00
	jr z, jr_07e_654c                                ; $658a: $28 $c0

	rrca                                             ; $658c: $0f
	db $e3                                           ; $658d: $e3
	nop                                              ; $658e: $00
	sub h                                            ; $658f: $94
	ret nz                                           ; $6590: $c0

	nop                                              ; $6591: $00
	add hl, bc                                       ; $6592: $09
	ld b, b                                          ; $6593: $40
	ret nz                                           ; $6594: $c0

	set 0, b                                         ; $6595: $cb $c0
	ld de, $00e3                                     ; $6597: $11 $e3 $00
	sub e                                            ; $659a: $93
	pop hl                                           ; $659b: $e1
	ld [bc], a                                       ; $659c: $02
	ld bc, $c028                                     ; $659d: $01 $28 $c0
	ld bc, $03a0                                     ; $65a0: $01 $a0 $03
	add hl, bc                                       ; $65a3: $09
	ld c, h                                          ; $65a4: $4c
	ret nz                                           ; $65a5: $c0

	ld bc, $01a0                                     ; $65a6: $01 $a0 $01
	add hl, bc                                       ; $65a9: $09
	ld d, h                                          ; $65aa: $54
	ret nz                                           ; $65ab: $c0

	ld bc, $03a0                                     ; $65ac: $01 $a0 $03
	add hl, bc                                       ; $65af: $09
	ld e, a                                          ; $65b0: $5f
	ret nz                                           ; $65b1: $c0

	ld bc, $01a0                                     ; $65b2: $01 $a0 $01
	add hl, bc                                       ; $65b5: $09
	ld h, [hl]                                       ; $65b6: $66
	pop hl                                           ; $65b7: $e1
	ld [bc], a                                       ; $65b8: $02
	inc bc                                           ; $65b9: $03
	rrca                                             ; $65ba: $0f
	ret nz                                           ; $65bb: $c0

	ld bc, $03a0                                     ; $65bc: $01 $a0 $03
	add hl, bc                                       ; $65bf: $09
	ld [hl], c                                       ; $65c0: $71
	ret nc                                           ; $65c1: $d0

	add d                                            ; $65c2: $82
	ld bc, $d1c9                                     ; $65c3: $01 $c9 $d1
	pop hl                                           ; $65c6: $e1
	ld [bc], a                                       ; $65c7: $02
	inc b                                            ; $65c8: $04
	rst JumpTable                                          ; $65c9: $c7
	ret nz                                           ; $65ca: $c0

	ld d, c                                          ; $65cb: $51
	db $d3                                           ; $65cc: $d3
	ret nz                                           ; $65cd: $c0

	ld d, b                                          ; $65ce: $50
	jp nc, $55c0                                     ; $65cf: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $65d2: $e0 $14
	nop                                              ; $65d4: $00
	add b                                            ; $65d5: $80
	ld [bc], a                                       ; $65d6: $02
	ld [hl], d                                       ; $65d7: $72
	pop bc                                           ; $65d8: $c1
	ld l, e                                          ; $65d9: $6b
	db $d3                                           ; $65da: $d3
	pop de                                           ; $65db: $d1
	db $e4                                           ; $65dc: $e4
	nop                                              ; $65dd: $00
	ld [bc], a                                       ; $65de: $02
	ld [$0936], sp                                   ; $65df: $08 $36 $09
	add d                                            ; $65e2: $82
	add hl, bc                                       ; $65e3: $09
	dec h                                            ; $65e4: $25
	ret nz                                           ; $65e5: $c0

	ld bc, $03a0                                     ; $65e6: $01 $a0 $03
	add hl, bc                                       ; $65e9: $09
	adc d                                            ; $65ea: $8a
	ret nz                                           ; $65eb: $c0

	ld bc, $01a0                                     ; $65ec: $01 $a0 $01
	add hl, bc                                       ; $65ef: $09
	adc e                                            ; $65f0: $8b
	ret nz                                           ; $65f1: $c0

	ld bc, $03a0                                     ; $65f2: $01 $a0 $03
	add hl, bc                                       ; $65f5: $09
	sbc c                                            ; $65f6: $99
	ret nz                                           ; $65f7: $c0

	ld bc, $01a0                                     ; $65f8: $01 $a0 $01
	add hl, bc                                       ; $65fb: $09
	and b                                            ; $65fc: $a0
	ret nz                                           ; $65fd: $c0

	ld bc, $03a0                                     ; $65fe: $01 $a0 $03
	add hl, bc                                       ; $6601: $09
	xor h                                            ; $6602: $ac
	nop                                              ; $6603: $00
	add b                                            ; $6604: $80
	ld [bc], a                                       ; $6605: $02
	inc l                                            ; $6606: $2c
	db $e4                                           ; $6607: $e4
	nop                                              ; $6608: $00
	rrca                                             ; $6609: $0f
	add hl, bc                                       ; $660a: $09
	or e                                             ; $660b: $b3
	add hl, bc                                       ; $660c: $09
	add hl, bc                                       ; $660d: $09
	ret nz                                           ; $660e: $c0

	ld bc, $03a0                                     ; $660f: $01 $a0 $03
	add hl, bc                                       ; $6612: $09
	cp b                                             ; $6613: $b8
	db $e4                                           ; $6614: $e4
	nop                                              ; $6615: $00
	ld [bc], a                                       ; $6616: $02
	add hl, bc                                       ; $6617: $09
	ld [$02e1], sp                                   ; $6618: $08 $e1 $02
	ld [$e5b7], sp                                   ; $661b: $08 $b7 $e5
	rla                                              ; $661e: $17
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	add hl, bc                                       ; $6621: $09
	rrca                                             ; $6622: $0f
	ret nz                                           ; $6623: $c0

	ld bc, $03a0                                     ; $6624: $01 $a0 $03
	add hl, bc                                       ; $6627: $09
	ret nz                                           ; $6628: $c0

	ret nz                                           ; $6629: $c0

	ld bc, $01a0                                     ; $662a: $01 $a0 $01
	rlca                                             ; $662d: $07
	ldh a, [$e4]                                     ; $662e: $f0 $e4
	nop                                              ; $6630: $00
	ld [bc], a                                       ; $6631: $02
	add hl, bc                                       ; $6632: $09
	ret nz                                           ; $6633: $c0

	jp z, Jump_07e_59c1                              ; $6634: $ca $c1 $59

	db $e3                                           ; $6637: $e3
	nop                                              ; $6638: $00
	sub [hl]                                         ; $6639: $96
	ret nz                                           ; $663a: $c0

	ld bc, $03a0                                     ; $663b: $01 $a0 $03
	add hl, bc                                       ; $663e: $09
	call z, $01c0                                    ; $663f: $cc $c0 $01
	and b                                            ; $6642: $a0
	ld bc, $d109                                     ; $6643: $01 $09 $d1
	db $fd                                           ; $6646: $fd
	or a                                             ; $6647: $b7
	adc e                                            ; $6648: $8b
	ld bc, $02f6                                     ; $6649: $01 $f6 $02
	or b                                             ; $664c: $b0
	scf                                              ; $664d: $37
	dec bc                                           ; $664e: $0b
	pop hl                                           ; $664f: $e1
	ld [bc], a                                       ; $6650: $02
	ld b, $6e                                        ; $6651: $06 $6e
	pop hl                                           ; $6653: $e1
	ld [bc], a                                       ; $6654: $02
	ld bc, $e428                                     ; $6655: $01 $28 $e4
	nop                                              ; $6658: $00
	and a                                            ; $6659: $a7
	ld [bc], a                                       ; $665a: $02
	or b                                             ; $665b: $b0
	jr c, @+$0d                                      ; $665c: $38 $0b

	pop hl                                           ; $665e: $e1
	ld [bc], a                                       ; $665f: $02
	ld b, $bf                                        ; $6660: $06 $bf
	pop hl                                           ; $6662: $e1
	ld [bc], a                                       ; $6663: $02
	ld bc, $e428                                     ; $6664: $01 $28 $e4
	ld bc, $022a                                     ; $6667: $01 $2a $02
	or b                                             ; $666a: $b0
	add hl, sp                                       ; $666b: $39
	dec bc                                           ; $666c: $0b
	pop hl                                           ; $666d: $e1
	ld [bc], a                                       ; $666e: $02
	ld b, $d6                                        ; $666f: $06 $d6
	pop hl                                           ; $6671: $e1
	ld [bc], a                                       ; $6672: $02
	ld bc, $e428                                     ; $6673: $01 $28 $e4
	ld bc, $021b                                     ; $6676: $01 $1b $02
	or b                                             ; $6679: $b0
	ld a, [hl-]                                      ; $667a: $3a
	dec bc                                           ; $667b: $0b
	pop hl                                           ; $667c: $e1
	ld [bc], a                                       ; $667d: $02
	ld b, $ed                                        ; $667e: $06 $ed
	pop hl                                           ; $6680: $e1
	ld [bc], a                                       ; $6681: $02
	ld bc, $e428                                     ; $6682: $01 $28 $e4
	ld bc, $02ae                                     ; $6685: $01 $ae $02
	or b                                             ; $6688: $b0
	dec sp                                           ; $6689: $3b
	dec bc                                           ; $668a: $0b
	pop hl                                           ; $668b: $e1
	ld [bc], a                                       ; $668c: $02
	rlca                                             ; $668d: $07
	inc b                                            ; $668e: $04
	pop hl                                           ; $668f: $e1
	ld [bc], a                                       ; $6690: $02
	ld bc, $e428                                     ; $6691: $01 $28 $e4
	nop                                              ; $6694: $00
	db $fd                                           ; $6695: $fd
	ld [bc], a                                       ; $6696: $02
	or b                                             ; $6697: $b0
	inc a                                            ; $6698: $3c
	dec bc                                           ; $6699: $0b
	pop hl                                           ; $669a: $e1
	ld [bc], a                                       ; $669b: $02
	rlca                                             ; $669c: $07
	dec de                                           ; $669d: $1b
	pop hl                                           ; $669e: $e1
	ld [bc], a                                       ; $669f: $02
	ld bc, $e428                                     ; $66a0: $01 $28 $e4
	nop                                              ; $66a3: $00
	xor $02                                          ; $66a4: $ee $02
	or b                                             ; $66a6: $b0
	dec a                                            ; $66a7: $3d
	dec bc                                           ; $66a8: $0b
	pop hl                                           ; $66a9: $e1
	ld [bc], a                                       ; $66aa: $02
	ld b, $89                                        ; $66ab: $06 $89
	pop hl                                           ; $66ad: $e1
	ld [bc], a                                       ; $66ae: $02
	ld bc, $e428                                     ; $66af: $01 $28 $e4
	nop                                              ; $66b2: $00
	ld c, l                                          ; $66b3: $4d
	ld [bc], a                                       ; $66b4: $02
	or b                                             ; $66b5: $b0
	ld a, $0b                                        ; $66b6: $3e $0b
	pop hl                                           ; $66b8: $e1
	ld [bc], a                                       ; $66b9: $02
	rlca                                             ; $66ba: $07
	ld [hl-], a                                      ; $66bb: $32
	pop hl                                           ; $66bc: $e1
	ld [bc], a                                       ; $66bd: $02
	ld bc, $e428                                     ; $66be: $01 $28 $e4
	ld bc, $0272                                     ; $66c1: $01 $72 $02
	or b                                             ; $66c4: $b0
	ccf                                              ; $66c5: $3f
	dec bc                                           ; $66c6: $0b
	pop hl                                           ; $66c7: $e1
	ld [bc], a                                       ; $66c8: $02
	rlca                                             ; $66c9: $07
	ld c, c                                          ; $66ca: $49
	pop hl                                           ; $66cb: $e1
	ld [bc], a                                       ; $66cc: $02
	ld bc, $e428                                     ; $66cd: $01 $28 $e4
	nop                                              ; $66d0: $00
	pop bc                                           ; $66d1: $c1
	ld [bc], a                                       ; $66d2: $02
	or b                                             ; $66d3: $b0
	ld b, b                                          ; $66d4: $40
	dec bc                                           ; $66d5: $0b
	pop hl                                           ; $66d6: $e1
	ld [bc], a                                       ; $66d7: $02
	ld b, $a4                                        ; $66d8: $06 $a4
	pop hl                                           ; $66da: $e1
	ld [bc], a                                       ; $66db: $02
	ld bc, $e428                                     ; $66dc: $01 $28 $e4
	nop                                              ; $66df: $00
	jr nz, jr_07e_66e4                               ; $66e0: $20 $02

	or b                                             ; $66e2: $b0
	ld b, c                                          ; $66e3: $41

jr_07e_66e4:
	dec bc                                           ; $66e4: $0b
	pop hl                                           ; $66e5: $e1
	ld [bc], a                                       ; $66e6: $02
	rlca                                             ; $66e7: $07
	ld h, b                                          ; $66e8: $60
	pop hl                                           ; $66e9: $e1
	ld [bc], a                                       ; $66ea: $02
	ld bc, $e428                                     ; $66eb: $01 $28 $e4
	ld bc, $0245                                     ; $66ee: $01 $45 $02
	or b                                             ; $66f1: $b0
	ld b, d                                          ; $66f2: $42
	dec bc                                           ; $66f3: $0b
	pop hl                                           ; $66f4: $e1
	ld [bc], a                                       ; $66f5: $02
	rlca                                             ; $66f6: $07
	ld [hl], a                                       ; $66f7: $77
	pop hl                                           ; $66f8: $e1
	ld [bc], a                                       ; $66f9: $02
	ld bc, $e428                                     ; $66fa: $01 $28 $e4
	nop                                              ; $66fd: $00
	sub h                                            ; $66fe: $94
	ld [$0990], sp                                   ; $66ff: $08 $90 $09
	ret c                                            ; $6702: $d8

	add hl, bc                                       ; $6703: $09
	inc l                                            ; $6704: $2c
	pop hl                                           ; $6705: $e1
	ld [bc], a                                       ; $6706: $02
	inc bc                                           ; $6707: $03
	rrca                                             ; $6708: $0f
	add d                                            ; $6709: $82
	ret nz                                           ; $670a: $c0

	dec de                                           ; $670b: $1b
	pop de                                           ; $670c: $d1
	ld [bc], a                                       ; $670d: $02
	ret nc                                           ; $670e: $d0

	pop de                                           ; $670f: $d1
	ld b, $c0                                        ; $6710: $06 $c0
	ld bc, $03a0                                     ; $6712: $01 $a0 $03
	add hl, bc                                       ; $6715: $09
	jp c, $d202                                      ; $6716: $da $02 $d2

	db $d3                                           ; $6719: $d3
	ld b, $c0                                        ; $671a: $06 $c0
	ld bc, $03a0                                     ; $671c: $01 $a0 $03
	add hl, bc                                       ; $671f: $09
	and $01                                          ; $6720: $e6 $01
	call nc, $c006                                   ; $6722: $d4 $06 $c0
	ld bc, $03a0                                     ; $6725: $01 $a0 $03
	add hl, bc                                       ; $6728: $09
	xor $e1                                          ; $6729: $ee $e1
	ld [bc], a                                       ; $672b: $02
	inc bc                                           ; $672c: $03
	ld e, d                                          ; $672d: $5a
	db $e4                                           ; $672e: $e4
	ld bc, $0996                                     ; $672f: $01 $96 $09
	ldh a, [c]                                       ; $6732: $f2
	add hl, bc                                       ; $6733: $09
	inc l                                            ; $6734: $2c
	pop hl                                           ; $6735: $e1
	ld [bc], a                                       ; $6736: $02
	inc bc                                           ; $6737: $03
	rla                                              ; $6738: $17
	add d                                            ; $6739: $82
	ret nz                                           ; $673a: $c0

	dec de                                           ; $673b: $1b
	pop de                                           ; $673c: $d1
	ld [bc], a                                       ; $673d: $02
	ret nc                                           ; $673e: $d0

	pop de                                           ; $673f: $d1
	ld b, $c0                                        ; $6740: $06 $c0
	ld bc, $03a0                                     ; $6742: $01 $a0 $03
	ld [$0233], sp                                   ; $6745: $08 $33 $02
	jp nc, $06d3                                     ; $6748: $d2 $d3 $06

	ret nz                                           ; $674b: $c0

	ld bc, $03a0                                     ; $674c: $01 $a0 $03
	add hl, bc                                       ; $674f: $09
	db $f4                                           ; $6750: $f4
	ld bc, $06d4                                     ; $6751: $01 $d4 $06
	ret nz                                           ; $6754: $c0

	ld bc, $03a0                                     ; $6755: $01 $a0 $03
	ld a, [bc]                                       ; $6758: $0a
	ld [bc], a                                       ; $6759: $02
	pop hl                                           ; $675a: $e1
	ld [bc], a                                       ; $675b: $02
	inc bc                                           ; $675c: $03
	ld l, h                                          ; $675d: $6c
	db $e4                                           ; $675e: $e4
	ld bc, $0a66                                     ; $675f: $01 $66 $0a
	dec c                                            ; $6762: $0d
	add hl, bc                                       ; $6763: $09
	inc l                                            ; $6764: $2c
	pop hl                                           ; $6765: $e1
	ld [bc], a                                       ; $6766: $02
	inc bc                                           ; $6767: $03
	inc de                                           ; $6768: $13
	add d                                            ; $6769: $82
	ret nz                                           ; $676a: $c0

	dec de                                           ; $676b: $1b

jr_07e_676c:
	pop de                                           ; $676c: $d1
	ld [bc], a                                       ; $676d: $02
	ret nc                                           ; $676e: $d0

	pop de                                           ; $676f: $d1
	ld b, $c0                                        ; $6770: $06 $c0
	ld bc, $03a0                                     ; $6772: $01 $a0 $03
	ld [$025f], sp                                   ; $6775: $08 $5f $02
	jp nc, $06d3                                     ; $6778: $d2 $d3 $06

	ret nz                                           ; $677b: $c0

	ld bc, $03a0                                     ; $677c: $01 $a0 $03
	ld a, [bc]                                       ; $677f: $0a
	rrca                                             ; $6780: $0f
	ld bc, $06d4                                     ; $6781: $01 $d4 $06
	ret nz                                           ; $6784: $c0

	ld bc, $03a0                                     ; $6785: $01 $a0 $03
	ld a, [bc]                                       ; $6788: $0a
	jr jr_07e_676c                                   ; $6789: $18 $e1

	ld [bc], a                                       ; $678b: $02
	inc bc                                           ; $678c: $03
	ld h, e                                          ; $678d: $63
	db $e4                                           ; $678e: $e4
	ld bc, $0836                                     ; $678f: $01 $36 $08
	and b                                            ; $6792: $a0
	add hl, bc                                       ; $6793: $09
	ret c                                            ; $6794: $d8

	add hl, bc                                       ; $6795: $09
	inc [hl]                                         ; $6796: $34
	add d                                            ; $6797: $82
	ret nz                                           ; $6798: $c0

	dec de                                           ; $6799: $1b
	pop de                                           ; $679a: $d1
	ld [bc], a                                       ; $679b: $02
	ret nc                                           ; $679c: $d0

	pop de                                           ; $679d: $d1
	ld a, [bc]                                       ; $679e: $0a
	pop hl                                           ; $679f: $e1
	ld [bc], a                                       ; $67a0: $02
	inc bc                                           ; $67a1: $03
	dec de                                           ; $67a2: $1b
	ret nz                                           ; $67a3: $c0

	ld bc, $03a0                                     ; $67a4: $01 $a0 $03
	ld a, [bc]                                       ; $67a7: $0a
	jr nz, @+$04                                     ; $67a8: $20 $02

	jp nc, $0ad3                                     ; $67aa: $d2 $d3 $0a

	pop hl                                           ; $67ad: $e1
	ld [bc], a                                       ; $67ae: $02
	inc bc                                           ; $67af: $03
	rra                                              ; $67b0: $1f
	ret nz                                           ; $67b1: $c0

	ld bc, $03a0                                     ; $67b2: $01 $a0 $03
	ld a, [bc]                                       ; $67b5: $0a
	dec hl                                           ; $67b6: $2b
	ld bc, $0ad4                                     ; $67b7: $01 $d4 $0a
	pop hl                                           ; $67ba: $e1
	ld [bc], a                                       ; $67bb: $02
	inc bc                                           ; $67bc: $03
	rra                                              ; $67bd: $1f
	ret nz                                           ; $67be: $c0

	ld bc, $03a0                                     ; $67bf: $01 $a0 $03
	ld a, [bc]                                       ; $67c2: $0a
	ld [hl], $e1                                     ; $67c3: $36 $e1
	ld [bc], a                                       ; $67c5: $02
	inc bc                                           ; $67c6: $03
	ld a, [hl]                                       ; $67c7: $7e
	db $e4                                           ; $67c8: $e4
	nop                                              ; $67c9: $00
	db $fc                                           ; $67ca: $fc
	add hl, bc                                       ; $67cb: $09
	ldh a, [c]                                       ; $67cc: $f2
	add hl, bc                                       ; $67cd: $09
	inc l                                            ; $67ce: $2c
	pop hl                                           ; $67cf: $e1
	ld [bc], a                                       ; $67d0: $02
	inc bc                                           ; $67d1: $03
	dec de                                           ; $67d2: $1b
	add d                                            ; $67d3: $82
	ret nz                                           ; $67d4: $c0

	dec de                                           ; $67d5: $1b
	pop de                                           ; $67d6: $d1
	ld [bc], a                                       ; $67d7: $02
	ret nc                                           ; $67d8: $d0

	pop de                                           ; $67d9: $d1
	ld b, $c0                                        ; $67da: $06 $c0
	ld bc, $03a0                                     ; $67dc: $01 $a0 $03
	ld [$02a4], sp                                   ; $67df: $08 $a4 $02
	jp nc, $06d3                                     ; $67e2: $d2 $d3 $06

	ret nz                                           ; $67e5: $c0

	ld bc, $03a0                                     ; $67e6: $01 $a0 $03
	ld a, [bc]                                       ; $67e9: $0a
	ccf                                              ; $67ea: $3f
	ld bc, $06d4                                     ; $67eb: $01 $d4 $06
	ret nz                                           ; $67ee: $c0

	ld bc, $03a0                                     ; $67ef: $01 $a0 $03
	ld [$e1bc], sp                                   ; $67f2: $08 $bc $e1
	ld [bc], a                                       ; $67f5: $02
	inc bc                                           ; $67f6: $03
	ld [hl], l                                       ; $67f7: $75
	db $e4                                           ; $67f8: $e4
	nop                                              ; $67f9: $00
	call z, $0d0a                                    ; $67fa: $cc $0a $0d
	add hl, bc                                       ; $67fd: $09
	inc [hl]                                         ; $67fe: $34
	add d                                            ; $67ff: $82
	ret nz                                           ; $6800: $c0

	dec de                                           ; $6801: $1b
	pop de                                           ; $6802: $d1
	ld [bc], a                                       ; $6803: $02
	ret nc                                           ; $6804: $d0

	pop de                                           ; $6805: $d1
	ld a, [bc]                                       ; $6806: $0a
	pop hl                                           ; $6807: $e1
	ld [bc], a                                       ; $6808: $02
	inc bc                                           ; $6809: $03
	dec de                                           ; $680a: $1b
	ret nz                                           ; $680b: $c0

	ld bc, $03a0                                     ; $680c: $01 $a0 $03
	ld [$02be], sp                                   ; $680f: $08 $be $02
	jp nc, $0ad3                                     ; $6812: $d2 $d3 $0a

	pop hl                                           ; $6815: $e1
	ld [bc], a                                       ; $6816: $02
	inc bc                                           ; $6817: $03
	rra                                              ; $6818: $1f
	ret nz                                           ; $6819: $c0

	ld bc, $03a0                                     ; $681a: $01 $a0 $03
	ld a, [bc]                                       ; $681d: $0a
	ld c, [hl]                                       ; $681e: $4e
	ld bc, $0ad4                                     ; $681f: $01 $d4 $0a
	pop hl                                           ; $6822: $e1
	ld [bc], a                                       ; $6823: $02
	inc bc                                           ; $6824: $03
	rra                                              ; $6825: $1f
	ret nz                                           ; $6826: $c0

	ld bc, $03a0                                     ; $6827: $01 $a0 $03
	ld a, [bc]                                       ; $682a: $0a
	ld e, c                                          ; $682b: $59
	pop hl                                           ; $682c: $e1
	ld [bc], a                                       ; $682d: $02
	inc bc                                           ; $682e: $03
	ld a, [hl]                                       ; $682f: $7e
	db $e4                                           ; $6830: $e4
	nop                                              ; $6831: $00
	sub h                                            ; $6832: $94
	ld [$0990], sp                                   ; $6833: $08 $90 $09
	ret c                                            ; $6836: $d8

	add hl, bc                                       ; $6837: $09
	inc l                                            ; $6838: $2c
	pop hl                                           ; $6839: $e1
	ld [bc], a                                       ; $683a: $02
	inc bc                                           ; $683b: $03
	rla                                              ; $683c: $17
	add d                                            ; $683d: $82
	ret nz                                           ; $683e: $c0

	dec de                                           ; $683f: $1b
	pop de                                           ; $6840: $d1
	ld [bc], a                                       ; $6841: $02
	ret nc                                           ; $6842: $d0

	pop de                                           ; $6843: $d1
	ld b, $c0                                        ; $6844: $06 $c0
	ld bc, $03a0                                     ; $6846: $01 $a0 $03
	ld a, [bc]                                       ; $6849: $0a
	ld h, h                                          ; $684a: $64
	ld [bc], a                                       ; $684b: $02
	jp nc, $06d3                                     ; $684c: $d2 $d3 $06

	ret nz                                           ; $684f: $c0

	ld bc, $03a0                                     ; $6850: $01 $a0 $03
	ld [$01ea], sp                                   ; $6853: $08 $ea $01
	call nc, $c006                                   ; $6856: $d4 $06 $c0
	ld bc, $03a0                                     ; $6859: $01 $a0 $03
	ld a, [bc]                                       ; $685c: $0a
	ld l, [hl]                                       ; $685d: $6e
	pop hl                                           ; $685e: $e1
	ld [bc], a                                       ; $685f: $02
	inc bc                                           ; $6860: $03
	ld l, h                                          ; $6861: $6c
	db $e4                                           ; $6862: $e4
	nop                                              ; $6863: $00
	ld h, d                                          ; $6864: $62
	add hl, bc                                       ; $6865: $09
	ldh a, [c]                                       ; $6866: $f2
	add hl, bc                                       ; $6867: $09
	inc l                                            ; $6868: $2c
	pop hl                                           ; $6869: $e1
	ld [bc], a                                       ; $686a: $02
	inc bc                                           ; $686b: $03
	rla                                              ; $686c: $17
	add d                                            ; $686d: $82
	ret nz                                           ; $686e: $c0

	dec de                                           ; $686f: $1b
	pop de                                           ; $6870: $d1
	ld [bc], a                                       ; $6871: $02
	ret nc                                           ; $6872: $d0

	pop de                                           ; $6873: $d1
	ld b, $c0                                        ; $6874: $06 $c0
	ld bc, $03a0                                     ; $6876: $01 $a0 $03
	ld a, [bc]                                       ; $6879: $0a
	ld a, c                                          ; $687a: $79
	ld [bc], a                                       ; $687b: $02
	jp nc, $06d3                                     ; $687c: $d2 $d3 $06

	ret nz                                           ; $687f: $c0

	ld bc, $03a0                                     ; $6880: $01 $a0 $03
	add hl, bc                                       ; $6883: $09
	rlca                                             ; $6884: $07
	ld bc, $06d4                                     ; $6885: $01 $d4 $06
	ret nz                                           ; $6888: $c0

	ld bc, $03a0                                     ; $6889: $01 $a0 $03
	add hl, bc                                       ; $688c: $09
	ld c, $e1                                        ; $688d: $0e $e1
	ld [bc], a                                       ; $688f: $02
	inc bc                                           ; $6890: $03
	ld l, h                                          ; $6891: $6c
	db $e4                                           ; $6892: $e4
	nop                                              ; $6893: $00
	ld [hl-], a                                      ; $6894: $32
	ld a, [bc]                                       ; $6895: $0a
	dec c                                            ; $6896: $0d
	add hl, bc                                       ; $6897: $09
	inc l                                            ; $6898: $2c
	pop hl                                           ; $6899: $e1
	ld [bc], a                                       ; $689a: $02
	inc bc                                           ; $689b: $03
	inc de                                           ; $689c: $13
	add d                                            ; $689d: $82
	ret nz                                           ; $689e: $c0

	dec de                                           ; $689f: $1b
	pop de                                           ; $68a0: $d1
	ld [bc], a                                       ; $68a1: $02
	ret nc                                           ; $68a2: $d0

	pop de                                           ; $68a3: $d1
	ld b, $c0                                        ; $68a4: $06 $c0
	ld bc, $03a0                                     ; $68a6: $01 $a0 $03
	add hl, bc                                       ; $68a9: $09
	add hl, de                                       ; $68aa: $19
	ld [bc], a                                       ; $68ab: $02
	jp nc, $06d3                                     ; $68ac: $d2 $d3 $06

	ret nz                                           ; $68af: $c0

	ld bc, $03a0                                     ; $68b0: $01 $a0 $03
	add hl, bc                                       ; $68b3: $09
	jr nz, @+$03                                     ; $68b4: $20 $01

	call nc, $c006                                   ; $68b6: $d4 $06 $c0
	ld bc, $03a0                                     ; $68b9: $01 $a0 $03
	dec b                                            ; $68bc: $05
	adc a                                            ; $68bd: $8f
	pop hl                                           ; $68be: $e1
	ld [bc], a                                       ; $68bf: $02
	inc bc                                           ; $68c0: $03
	ld h, e                                          ; $68c1: $63
	db $e4                                           ; $68c2: $e4
	nop                                              ; $68c3: $00
	ld [bc], a                                       ; $68c4: $02
	add hl, bc                                       ; $68c5: $09
	ld [$02e1], sp                                   ; $68c6: $08 $e1 $02
	add hl, bc                                       ; $68c9: $09
	ld [hl], $e5                                     ; $68ca: $36 $e5
	rla                                              ; $68cc: $17
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	add hl, bc                                       ; $68cf: $09
	inc d                                            ; $68d0: $14
	ret nc                                           ; $68d1: $d0

	add e                                            ; $68d2: $83
	ld bc, $d0de                                     ; $68d3: $01 $de $d0
	ret nz                                           ; $68d6: $c0

	ld bc, $03a0                                     ; $68d7: $01 $a0 $03
	ld a, [bc]                                       ; $68da: $0a
	add h                                            ; $68db: $84
	ret nz                                           ; $68dc: $c0

	ld bc, $01a0                                     ; $68dd: $01 $a0 $01
	ld b, $65                                        ; $68e0: $06 $65
	db $e4                                           ; $68e2: $e4
	nop                                              ; $68e3: $00
	ld [bc], a                                       ; $68e4: $02
	add hl, bc                                       ; $68e5: $09
	ld e, $c0                                        ; $68e6: $1e $c0
	set 0, b                                         ; $68e8: $cb $c0
	ld de, $00e3                                     ; $68ea: $11 $e3 $00
	or d                                             ; $68ed: $b2
	ldh [rSC], a                                     ; $68ee: $e0 $02
	xor b                                            ; $68f0: $a8
	ret nz                                           ; $68f1: $c0

	jp z, $80a0                                      ; $68f2: $ca $a0 $80

	and b                                            ; $68f5: $a0
	jr jr_07e_68f8                                   ; $68f6: $18 $00

jr_07e_68f8:
	inc bc                                           ; $68f8: $03
	db $e4                                           ; $68f9: $e4
	nop                                              ; $68fa: $00
	dec bc                                           ; $68fb: $0b
	rst $38                                          ; $68fc: $ff
	rlca                                             ; $68fd: $07
	ld b, b                                          ; $68fe: $40
	add b                                            ; $68ff: $80
	and b                                            ; $6900: $a0
	jr @-$1a                                         ; $6901: $18 $e4

	nop                                              ; $6903: $00
	sub h                                            ; $6904: $94
	ld [$0a90], sp                                   ; $6905: $08 $90 $0a
	adc b                                            ; $6908: $88
	add hl, bc                                       ; $6909: $09
	inc l                                            ; $690a: $2c
	pop hl                                           ; $690b: $e1
	ld [bc], a                                       ; $690c: $02
	inc bc                                           ; $690d: $03
	rrca                                             ; $690e: $0f
	add d                                            ; $690f: $82
	ret nz                                           ; $6910: $c0

	dec de                                           ; $6911: $1b
	pop de                                           ; $6912: $d1
	ld [bc], a                                       ; $6913: $02
	ret nc                                           ; $6914: $d0

	pop de                                           ; $6915: $d1
	ld b, $c0                                        ; $6916: $06 $c0
	ld bc, $03a0                                     ; $6918: $01 $a0 $03
	ld a, [bc]                                       ; $691b: $0a
	adc d                                            ; $691c: $8a
	ld [bc], a                                       ; $691d: $02
	jp nc, $06d3                                     ; $691e: $d2 $d3 $06

	ret nz                                           ; $6921: $c0

	ld bc, $03a0                                     ; $6922: $01 $a0 $03
	ld a, [bc]                                       ; $6925: $0a
	sub c                                            ; $6926: $91
	ld bc, $06d4                                     ; $6927: $01 $d4 $06
	ret nz                                           ; $692a: $c0

	ld bc, $03a0                                     ; $692b: $01 $a0 $03
	nop                                              ; $692e: $00
	db $ed                                           ; $692f: $ed
	pop hl                                           ; $6930: $e1
	ld [bc], a                                       ; $6931: $02
	inc bc                                           ; $6932: $03
	ld e, d                                          ; $6933: $5a
	db $e4                                           ; $6934: $e4
	nop                                              ; $6935: $00
	ei                                               ; $6936: $fb
	ld a, [bc]                                       ; $6937: $0a
	sbc d                                            ; $6938: $9a
	add hl, bc                                       ; $6939: $09
	inc l                                            ; $693a: $2c
	pop hl                                           ; $693b: $e1
	ld [bc], a                                       ; $693c: $02
	inc bc                                           ; $693d: $03
	rrca                                             ; $693e: $0f
	add d                                            ; $693f: $82
	ret nz                                           ; $6940: $c0

	dec de                                           ; $6941: $1b
	pop de                                           ; $6942: $d1
	ld [bc], a                                       ; $6943: $02
	ret nc                                           ; $6944: $d0

	pop de                                           ; $6945: $d1
	ld b, $c0                                        ; $6946: $06 $c0
	ld bc, $03a0                                     ; $6948: $01 $a0 $03
	ld a, [bc]                                       ; $694b: $0a
	sbc h                                            ; $694c: $9c
	ld [bc], a                                       ; $694d: $02
	jp nc, $06d3                                     ; $694e: $d2 $d3 $06

	ret nz                                           ; $6951: $c0

	ld bc, $03a0                                     ; $6952: $01 $a0 $03
	ld a, [bc]                                       ; $6955: $0a
	xor b                                            ; $6956: $a8
	ld bc, $06d4                                     ; $6957: $01 $d4 $06
	ret nz                                           ; $695a: $c0

	ld bc, $03a0                                     ; $695b: $01 $a0 $03
	ld a, [bc]                                       ; $695e: $0a
	xor [hl]                                         ; $695f: $ae
	pop hl                                           ; $6960: $e1
	ld [bc], a                                       ; $6961: $02
	inc bc                                           ; $6962: $03
	ld [hl], l                                       ; $6963: $75
	db $e4                                           ; $6964: $e4
	nop                                              ; $6965: $00
	rrc d                                            ; $6966: $cb $0a
	or [hl]                                          ; $6968: $b6
	add hl, bc                                       ; $6969: $09
	inc l                                            ; $696a: $2c
	pop hl                                           ; $696b: $e1
	ld [bc], a                                       ; $696c: $02
	inc bc                                           ; $696d: $03
	dec de                                           ; $696e: $1b
	add d                                            ; $696f: $82
	ret nz                                           ; $6970: $c0

	dec de                                           ; $6971: $1b
	pop de                                           ; $6972: $d1
	ld [bc], a                                       ; $6973: $02
	ret nc                                           ; $6974: $d0

	pop de                                           ; $6975: $d1
	ld b, $c0                                        ; $6976: $06 $c0
	ld bc, $03a0                                     ; $6978: $01 $a0 $03
	ld a, [bc]                                       ; $697b: $0a
	cp b                                             ; $697c: $b8
	ld [bc], a                                       ; $697d: $02
	jp nc, $06d3                                     ; $697e: $d2 $d3 $06

	ret nz                                           ; $6981: $c0

	ld bc, $03a0                                     ; $6982: $01 $a0 $03
	ld a, [bc]                                       ; $6985: $0a
	call nz, $d401                                   ; $6986: $c4 $01 $d4
	ld b, $c0                                        ; $6989: $06 $c0
	ld bc, $03a0                                     ; $698b: $01 $a0 $03
	ld a, [bc]                                       ; $698e: $0a
	set 4, c                                         ; $698f: $cb $e1
	ld [bc], a                                       ; $6991: $02
	inc bc                                           ; $6992: $03
	ld a, [hl]                                       ; $6993: $7e
	db $e4                                           ; $6994: $e4
	nop                                              ; $6995: $00
	sbc e                                            ; $6996: $9b
	jr z, jr_07e_699f                                ; $6997: $28 $06

	ret nz                                           ; $6999: $c0

	ld bc, $03a0                                     ; $699a: $01 $a0 $03
	ld a, [bc]                                       ; $699d: $0a
	db $d3                                           ; $699e: $d3

jr_07e_699f:
	sub b                                            ; $699f: $90
	ld a, [bc]                                       ; $69a0: $0a
	jp c, $2c09                                      ; $69a1: $da $09 $2c

	pop hl                                           ; $69a4: $e1
	ld [bc], a                                       ; $69a5: $02
	inc bc                                           ; $69a6: $03
	inc de                                           ; $69a7: $13
	add d                                            ; $69a8: $82
	ret nz                                           ; $69a9: $c0

	dec de                                           ; $69aa: $1b
	pop de                                           ; $69ab: $d1
	ld [bc], a                                       ; $69ac: $02
	ret nc                                           ; $69ad: $d0

	pop de                                           ; $69ae: $d1
	ld b, $c0                                        ; $69af: $06 $c0
	ld bc, $03a0                                     ; $69b1: $01 $a0 $03
	ld a, [bc]                                       ; $69b4: $0a
	call c, $d202                                    ; $69b5: $dc $02 $d2
	db $d3                                           ; $69b8: $d3
	ld b, $c0                                        ; $69b9: $06 $c0
	ld bc, $03a0                                     ; $69bb: $01 $a0 $03
	ld a, [bc]                                       ; $69be: $0a
	push hl                                          ; $69bf: $e5
	ld bc, $06d4                                     ; $69c0: $01 $d4 $06
	ret nz                                           ; $69c3: $c0

	ld bc, $03a0                                     ; $69c4: $01 $a0 $03
	ld a, [bc]                                       ; $69c7: $0a
	ld [$02e1], a                                    ; $69c8: $ea $e1 $02
	inc bc                                           ; $69cb: $03
	ld h, e                                          ; $69cc: $63
	db $e4                                           ; $69cd: $e4
	nop                                              ; $69ce: $00
	ld h, d                                          ; $69cf: $62
	ld a, [bc]                                       ; $69d0: $0a
	xor $09                                          ; $69d1: $ee $09
	inc l                                            ; $69d3: $2c
	pop hl                                           ; $69d4: $e1
	ld [bc], a                                       ; $69d5: $02
	inc bc                                           ; $69d6: $03
	dec de                                           ; $69d7: $1b
	add d                                            ; $69d8: $82
	ret nz                                           ; $69d9: $c0

	dec de                                           ; $69da: $1b
	pop de                                           ; $69db: $d1
	ld [bc], a                                       ; $69dc: $02
	ret nc                                           ; $69dd: $d0

	pop de                                           ; $69de: $d1
	ld b, $c0                                        ; $69df: $06 $c0
	ld bc, $03a0                                     ; $69e1: $01 $a0 $03
	ld a, [bc]                                       ; $69e4: $0a
	ldh a, [c]                                       ; $69e5: $f2
	ld [bc], a                                       ; $69e6: $02
	jp nc, $06d3                                     ; $69e7: $d2 $d3 $06

	ret nz                                           ; $69ea: $c0

	ld bc, $03a0                                     ; $69eb: $01 $a0 $03
	ld a, [bc]                                       ; $69ee: $0a
	db $fc                                           ; $69ef: $fc
	ld bc, $06d4                                     ; $69f0: $01 $d4 $06
	ret nz                                           ; $69f3: $c0

	ld bc, $03a0                                     ; $69f4: $01 $a0 $03
	dec bc                                           ; $69f7: $0b
	ld b, $e1                                        ; $69f8: $06 $e1
	ld [bc], a                                       ; $69fa: $02
	inc bc                                           ; $69fb: $03
	ld [hl], l                                       ; $69fc: $75
	db $e4                                           ; $69fd: $e4
	nop                                              ; $69fe: $00
	ld [hl-], a                                      ; $69ff: $32
	dec bc                                           ; $6a00: $0b
	ld c, $09                                        ; $6a01: $0e $09
	inc l                                            ; $6a03: $2c
	pop hl                                           ; $6a04: $e1
	ld [bc], a                                       ; $6a05: $02
	inc bc                                           ; $6a06: $03
	rla                                              ; $6a07: $17
	add d                                            ; $6a08: $82
	ret nz                                           ; $6a09: $c0

	dec de                                           ; $6a0a: $1b
	pop de                                           ; $6a0b: $d1
	ld [bc], a                                       ; $6a0c: $02
	ret nc                                           ; $6a0d: $d0

	pop de                                           ; $6a0e: $d1
	ld b, $c0                                        ; $6a0f: $06 $c0
	ld bc, $03a0                                     ; $6a11: $01 $a0 $03
	dec bc                                           ; $6a14: $0b
	inc de                                           ; $6a15: $13
	ld [bc], a                                       ; $6a16: $02
	jp nc, $06d3                                     ; $6a17: $d2 $d3 $06

	ret nz                                           ; $6a1a: $c0

	ld bc, $03a0                                     ; $6a1b: $01 $a0 $03
	dec bc                                           ; $6a1e: $0b
	jr nz, @+$03                                     ; $6a1f: $20 $01

	call nc, $c006                                   ; $6a21: $d4 $06 $c0
	ld bc, $03a0                                     ; $6a24: $01 $a0 $03
	dec bc                                           ; $6a27: $0b
	inc sp                                           ; $6a28: $33
	pop hl                                           ; $6a29: $e1
	ld [bc], a                                       ; $6a2a: $02
	inc bc                                           ; $6a2b: $03
	ld l, h                                          ; $6a2c: $6c
	db $e4                                           ; $6a2d: $e4
	nop                                              ; $6a2e: $00
	ld [bc], a                                       ; $6a2f: $02
	add hl, bc                                       ; $6a30: $09
	dec d                                            ; $6a31: $15
	ret nz                                           ; $6a32: $c0

	set 0, b                                         ; $6a33: $cb $c0
	ld de, $00e3                                     ; $6a35: $11 $e3 $00
	or c                                             ; $6a38: $b1
	pop hl                                           ; $6a39: $e1
	ld [bc], a                                       ; $6a3a: $02
	ld bc, $c028                                     ; $6a3b: $01 $28 $c0
	ld d, [hl]                                       ; $6a3e: $56
	pop de                                           ; $6a3f: $d1
	ldh [rAUD1SWEEP], a                              ; $6a40: $e0 $10
	ret nc                                           ; $6a42: $d0

	push hl                                          ; $6a43: $e5
	rla                                              ; $6a44: $17
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	add hl, bc                                       ; $6a47: $09
	add hl, hl                                       ; $6a48: $29
	ret nc                                           ; $6a49: $d0

	add e                                            ; $6a4a: $83
	ld bc, $d0de                                     ; $6a4b: $01 $de $d0
	ret nz                                           ; $6a4e: $c0

	ld bc, $03a0                                     ; $6a4f: $01 $a0 $03
	dec bc                                           ; $6a52: $0b
	ld a, $c1                                        ; $6a53: $3e $c1
	ld e, e                                          ; $6a55: $5b
	ret nz                                           ; $6a56: $c0

	set 0, b                                         ; $6a57: $cb $c0
	ld de, $00e3                                     ; $6a59: $11 $e3 $00
	xor a                                            ; $6a5c: $af
	ldh [rSB], a                                     ; $6a5d: $e0 $01
	add hl, sp                                       ; $6a5f: $39
	pop bc                                           ; $6a60: $c1
	ld e, h                                          ; $6a61: $5c
	ret nz                                           ; $6a62: $c0

	jp z, $80a0                                      ; $6a63: $ca $a0 $80

	and b                                            ; $6a66: $a0
	add hl, de                                       ; $6a67: $19
	nop                                              ; $6a68: $00
	inc bc                                           ; $6a69: $03
	db $e4                                           ; $6a6a: $e4
	nop                                              ; $6a6b: $00
	rlca                                             ; $6a6c: $07
	rst $38                                          ; $6a6d: $ff
	inc bc                                           ; $6a6e: $03
	db $e4                                           ; $6a6f: $e4
	nop                                              ; $6a70: $00
	ld l, a                                          ; $6a71: $6f
	add hl, bc                                       ; $6a72: $09
	ld l, e                                          ; $6a73: $6b
	ret nz                                           ; $6a74: $c0

	ld bc, $03a0                                     ; $6a75: $01 $a0 $03
	dec bc                                           ; $6a78: $0b
	ld b, e                                          ; $6a79: $43
	ret nz                                           ; $6a7a: $c0

	ld bc, $01a0                                     ; $6a7b: $01 $a0 $01
	dec bc                                           ; $6a7e: $0b
	ld d, e                                          ; $6a7f: $53
	ret nz                                           ; $6a80: $c0

	set 0, c                                         ; $6a81: $cb $c1
	ld e, e                                          ; $6a83: $5b
	ret nz                                           ; $6a84: $c0

	rrca                                             ; $6a85: $0f
	db $e3                                           ; $6a86: $e3
	nop                                              ; $6a87: $00
	add sp, -$40                                     ; $6a88: $e8 $c0
	ld bc, $03a0                                     ; $6a8a: $01 $a0 $03
	dec bc                                           ; $6a8d: $0b
	ld e, h                                          ; $6a8e: $5c
	ret nz                                           ; $6a8f: $c0

	ld bc, $01a0                                     ; $6a90: $01 $a0 $01
	dec bc                                           ; $6a93: $0b
	ld l, c                                          ; $6a94: $69
	ret nz                                           ; $6a95: $c0

	ld bc, $03a0                                     ; $6a96: $01 $a0 $03
	dec bc                                           ; $6a99: $0b
	ld [hl], b                                       ; $6a9a: $70
	ret nz                                           ; $6a9b: $c0

	ld bc, $01a0                                     ; $6a9c: $01 $a0 $01
	dec bc                                           ; $6a9f: $0b
	ld a, l                                          ; $6aa0: $7d
	ret nz                                           ; $6aa1: $c0

	ld bc, $03a0                                     ; $6aa2: $01 $a0 $03
	dec bc                                           ; $6aa5: $0b
	adc b                                            ; $6aa6: $88
	ret nz                                           ; $6aa7: $c0

	ld bc, $01a0                                     ; $6aa8: $01 $a0 $01
	dec bc                                           ; $6aab: $0b
	adc l                                            ; $6aac: $8d
	ret nz                                           ; $6aad: $c0

	ld bc, $03a0                                     ; $6aae: $01 $a0 $03
	dec bc                                           ; $6ab1: $0b
	and l                                            ; $6ab2: $a5
	ret nz                                           ; $6ab3: $c0

	ld bc, $01a0                                     ; $6ab4: $01 $a0 $01
	dec bc                                           ; $6ab7: $0b
	or h                                             ; $6ab8: $b4
	ret nz                                           ; $6ab9: $c0

	ld bc, $03a0                                     ; $6aba: $01 $a0 $03
	dec bc                                           ; $6abd: $0b
	pop bc                                           ; $6abe: $c1
	ret nz                                           ; $6abf: $c0

	ld bc, $01a0                                     ; $6ac0: $01 $a0 $01
	dec bc                                           ; $6ac3: $0b
	call z, $82d0                                    ; $6ac4: $cc $d0 $82
	ld bc, $d3c9                                     ; $6ac7: $01 $c9 $d3
	pop hl                                           ; $6aca: $e1
	ld [bc], a                                       ; $6acb: $02
	inc b                                            ; $6acc: $04
	db $db                                           ; $6acd: $db
	ret nz                                           ; $6ace: $c0

	ld d, c                                          ; $6acf: $51
	pop de                                           ; $6ad0: $d1
	ret nz                                           ; $6ad1: $c0

	ld d, b                                          ; $6ad2: $50
	jp nc, $55c0                                     ; $6ad3: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $6ad6: $e0 $14
	pop bc                                           ; $6ad8: $c1
	ld l, e                                          ; $6ad9: $6b
	pop de                                           ; $6ada: $d1
	pop de                                           ; $6adb: $d1
	db $e4                                           ; $6adc: $e4
	nop                                              ; $6add: $00
	and e                                            ; $6ade: $a3
	jr z, @+$08                                      ; $6adf: $28 $06

	ret nz                                           ; $6ae1: $c0

	ld bc, $03a0                                     ; $6ae2: $01 $a0 $03
	dec bc                                           ; $6ae5: $0b
	call nc, $0b98                                   ; $6ae6: $d4 $98 $0b
	sbc $09                                          ; $6ae9: $de $09
	inc l                                            ; $6aeb: $2c
	pop hl                                           ; $6aec: $e1
	ld [bc], a                                       ; $6aed: $02
	inc bc                                           ; $6aee: $03
	rrca                                             ; $6aef: $0f
	add d                                            ; $6af0: $82
	ret nz                                           ; $6af1: $c0

	dec de                                           ; $6af2: $1b
	pop de                                           ; $6af3: $d1
	ld [bc], a                                       ; $6af4: $02
	ret nc                                           ; $6af5: $d0

	pop de                                           ; $6af6: $d1
	ld b, $c0                                        ; $6af7: $06 $c0
	ld bc, $03a0                                     ; $6af9: $01 $a0 $03
	dec bc                                           ; $6afc: $0b
	db $e4                                           ; $6afd: $e4
	ld [bc], a                                       ; $6afe: $02
	jp nc, $06d3                                     ; $6aff: $d2 $d3 $06

	ret nz                                           ; $6b02: $c0

	ld bc, $03a0                                     ; $6b03: $01 $a0 $03
	dec bc                                           ; $6b06: $0b
	db $ed                                           ; $6b07: $ed
	ld bc, $06d4                                     ; $6b08: $01 $d4 $06
	ret nz                                           ; $6b0b: $c0

	ld bc, $03a0                                     ; $6b0c: $01 $a0 $03
	dec bc                                           ; $6b0f: $0b
	di                                               ; $6b10: $f3
	pop hl                                           ; $6b11: $e1
	ld [bc], a                                       ; $6b12: $02
	inc bc                                           ; $6b13: $03
	ld e, d                                          ; $6b14: $5a
	db $e4                                           ; $6b15: $e4
	nop                                              ; $6b16: $00
	ld l, d                                          ; $6b17: $6a
	dec bc                                           ; $6b18: $0b
	ld hl, sp+$09                                    ; $6b19: $f8 $09
	inc [hl]                                         ; $6b1b: $34
	add d                                            ; $6b1c: $82
	ret nz                                           ; $6b1d: $c0

	dec de                                           ; $6b1e: $1b
	pop de                                           ; $6b1f: $d1
	ld [bc], a                                       ; $6b20: $02
	ret nc                                           ; $6b21: $d0

	pop de                                           ; $6b22: $d1
	ld a, [bc]                                       ; $6b23: $0a
	pop hl                                           ; $6b24: $e1
	ld [bc], a                                       ; $6b25: $02
	inc bc                                           ; $6b26: $03
	dec de                                           ; $6b27: $1b
	ret nz                                           ; $6b28: $c0

	ld bc, $03a0                                     ; $6b29: $01 $a0 $03
	dec bc                                           ; $6b2c: $0b
	rst $38                                          ; $6b2d: $ff
	ld [bc], a                                       ; $6b2e: $02
	jp nc, $0ad3                                     ; $6b2f: $d2 $d3 $0a

	pop hl                                           ; $6b32: $e1
	ld [bc], a                                       ; $6b33: $02
	inc bc                                           ; $6b34: $03
	rra                                              ; $6b35: $1f
	ret nz                                           ; $6b36: $c0

	ld bc, $03a0                                     ; $6b37: $01 $a0 $03
	inc c                                            ; $6b3a: $0c
	dec bc                                           ; $6b3b: $0b
	ld bc, $0ad4                                     ; $6b3c: $01 $d4 $0a
	pop hl                                           ; $6b3f: $e1
	ld [bc], a                                       ; $6b40: $02
	inc bc                                           ; $6b41: $03
	rra                                              ; $6b42: $1f
	ret nz                                           ; $6b43: $c0

	ld bc, $03a0                                     ; $6b44: $01 $a0 $03
	inc c                                            ; $6b47: $0c
	add hl, de                                       ; $6b48: $19
	pop hl                                           ; $6b49: $e1
	ld [bc], a                                       ; $6b4a: $02
	inc bc                                           ; $6b4b: $03
	ld a, [hl]                                       ; $6b4c: $7e
	db $e4                                           ; $6b4d: $e4
	nop                                              ; $6b4e: $00
	ld [hl-], a                                      ; $6b4f: $32
	inc c                                            ; $6b50: $0c
	ld h, $09                                        ; $6b51: $26 $09
	inc l                                            ; $6b53: $2c
	pop hl                                           ; $6b54: $e1
	ld [bc], a                                       ; $6b55: $02
	inc bc                                           ; $6b56: $03
	rla                                              ; $6b57: $17
	add d                                            ; $6b58: $82
	ret nz                                           ; $6b59: $c0

	dec de                                           ; $6b5a: $1b
	pop de                                           ; $6b5b: $d1
	ld [bc], a                                       ; $6b5c: $02
	ret nc                                           ; $6b5d: $d0

	pop de                                           ; $6b5e: $d1
	ld b, $c0                                        ; $6b5f: $06 $c0
	ld bc, $03a0                                     ; $6b61: $01 $a0 $03
	inc c                                            ; $6b64: $0c
	dec l                                            ; $6b65: $2d
	ld [bc], a                                       ; $6b66: $02
	jp nc, $06d3                                     ; $6b67: $d2 $d3 $06

	ret nz                                           ; $6b6a: $c0

	ld bc, $03a0                                     ; $6b6b: $01 $a0 $03
	inc c                                            ; $6b6e: $0c
	scf                                              ; $6b6f: $37
	ld bc, $06d4                                     ; $6b70: $01 $d4 $06
	ret nz                                           ; $6b73: $c0

	ld bc, $03a0                                     ; $6b74: $01 $a0 $03
	inc c                                            ; $6b77: $0c
	ld b, c                                          ; $6b78: $41
	pop hl                                           ; $6b79: $e1
	ld [bc], a                                       ; $6b7a: $02
	inc bc                                           ; $6b7b: $03
	ld l, h                                          ; $6b7c: $6c
	db $e4                                           ; $6b7d: $e4
	nop                                              ; $6b7e: $00
	ld [bc], a                                       ; $6b7f: $02
	add hl, bc                                       ; $6b80: $09
	dec d                                            ; $6b81: $15
	ret nz                                           ; $6b82: $c0

	set 0, b                                         ; $6b83: $cb $c0
	ld de, $00e3                                     ; $6b85: $11 $e3 $00
	xor [hl]                                         ; $6b88: $ae
	pop hl                                           ; $6b89: $e1
	ld [bc], a                                       ; $6b8a: $02
	ld bc, $c028                                     ; $6b8b: $01 $28 $c0
	ld d, [hl]                                       ; $6b8e: $56
	pop de                                           ; $6b8f: $d1
	ldh [rAUD1LEN], a                                ; $6b90: $e0 $11
	ret nc                                           ; $6b92: $d0

	push hl                                          ; $6b93: $e5
	rla                                              ; $6b94: $17
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	rlca                                             ; $6b97: $07

jr_07e_6b98:
	ret nz                                           ; $6b98: $c0

	and a                                            ; $6b99: $a7
	pop de                                           ; $6b9a: $d1
	db $d3                                           ; $6b9b: $d3
	rst SubAFromHL                                          ; $6b9c: $d7
	ret nz                                           ; $6b9d: $c0

	xor h                                            ; $6b9e: $ac
	jr z, jr_07e_6baa                                ; $6b9f: $28 $09

	pop bc                                           ; $6ba1: $c1
	cp l                                             ; $6ba2: $bd
	ret nc                                           ; $6ba3: $d0

	ret nz                                           ; $6ba4: $c0

	ld bc, $03a0                                     ; $6ba5: $01 $a0 $03
	inc c                                            ; $6ba8: $0c
	ld c, d                                          ; $6ba9: $4a

jr_07e_6baa:
	add hl, hl                                       ; $6baa: $29
	inc c                                            ; $6bab: $0c
	ld c, a                                          ; $6bac: $4f
	add hl, bc                                       ; $6bad: $09
	ld e, $c0                                        ; $6bae: $1e $c0
	ld bc, $01a0                                     ; $6bb0: $01 $a0 $01
	inc c                                            ; $6bb3: $0c
	ld d, c                                          ; $6bb4: $51
	pop hl                                           ; $6bb5: $e1
	ld [bc], a                                       ; $6bb6: $02
	inc bc                                           ; $6bb7: $03
	rrca                                             ; $6bb8: $0f
	ret nz                                           ; $6bb9: $c0

	ld bc, $03a0                                     ; $6bba: $01 $a0 $03
	inc c                                            ; $6bbd: $0c
	ld e, d                                          ; $6bbe: $5a
	ret nz                                           ; $6bbf: $c0

	ld d, c                                          ; $6bc0: $51
	pop de                                           ; $6bc1: $d1
	ret nz                                           ; $6bc2: $c0

	inc c                                            ; $6bc3: $0c
	ldh [$3c], a                                     ; $6bc4: $e0 $3c
	pop hl                                           ; $6bc6: $e1
	ld [bc], a                                       ; $6bc7: $02
	inc bc                                           ; $6bc8: $03
	daa                                              ; $6bc9: $27
	db $e4                                           ; $6bca: $e4
	nop                                              ; $6bcb: $00
	add hl, bc                                       ; $6bcc: $09
	inc c                                            ; $6bcd: $0c
	ld h, [hl]                                       ; $6bce: $66
	add hl, bc                                       ; $6bcf: $09
	inc bc                                           ; $6bd0: $03
	db $e4                                           ; $6bd1: $e4
	nop                                              ; $6bd2: $00
	ld [bc], a                                       ; $6bd3: $02
	add hl, bc                                       ; $6bd4: $09
	jr jr_07e_6b98                                   ; $6bd5: $18 $c1

	cp l                                             ; $6bd7: $bd
	pop de                                           ; $6bd8: $d1
	add d                                            ; $6bd9: $82
	ret nz                                           ; $6bda: $c0

	add b                                            ; $6bdb: $80
	ld bc, $03d3                                     ; $6bdc: $01 $d3 $03
	db $e4                                           ; $6bdf: $e4
	nop                                              ; $6be0: $00
	adc d                                            ; $6be1: $8a
	ld bc, $03d2                                     ; $6be2: $01 $d2 $03
	db $e4                                           ; $6be5: $e4
	nop                                              ; $6be6: $00
	add hl, sp                                       ; $6be7: $39
	ld bc, $03d1                                     ; $6be8: $01 $d1 $03
	db $e4                                           ; $6beb: $e4
	nop                                              ; $6bec: $00
	ld [bc], a                                       ; $6bed: $02
	add hl, bc                                       ; $6bee: $09
	cpl                                              ; $6bef: $2f
	ret nz                                           ; $6bf0: $c0

	ld bc, $01a0                                     ; $6bf1: $01 $a0 $01
	inc c                                            ; $6bf4: $0c
	ld l, b                                          ; $6bf5: $68
	ret nz                                           ; $6bf6: $c0

	ld bc, $03a0                                     ; $6bf7: $01 $a0 $03
	inc c                                            ; $6bfa: $0c
	ld l, l                                          ; $6bfb: $6d
	pop hl                                           ; $6bfc: $e1
	ld [bc], a                                       ; $6bfd: $02
	ld [$c069], sp                                   ; $6bfe: $08 $69 $c0
	and a                                            ; $6c01: $a7
	pop de                                           ; $6c02: $d1
	db $d3                                           ; $6c03: $d3
	pop de                                           ; $6c04: $d1
	ret nz                                           ; $6c05: $c0

	xor h                                            ; $6c06: $ac
	ret nz                                           ; $6c07: $c0

	and l                                            ; $6c08: $a5
	ret nz                                           ; $6c09: $c0

	ld bc, $01a0                                     ; $6c0a: $01 $a0 $01
	inc c                                            ; $6c0d: $0c
	ld [hl], d                                       ; $6c0e: $72
	pop hl                                           ; $6c0f: $e1
	ld [bc], a                                       ; $6c10: $02
	inc bc                                           ; $6c11: $03
	inc de                                           ; $6c12: $13
	ret nz                                           ; $6c13: $c0

	ld bc, $03a0                                     ; $6c14: $01 $a0 $03
	nop                                              ; $6c17: $00
	db $ed                                           ; $6c18: $ed
	ret nz                                           ; $6c19: $c0

	ld d, c                                          ; $6c1a: $51
	pop de                                           ; $6c1b: $d1
	db $e4                                           ; $6c1c: $e4
	ld bc, $0901                                     ; $6c1d: $01 $01 $09
	ld c, c                                          ; $6c20: $49
	ret nz                                           ; $6c21: $c0

	ld bc, $01a0                                     ; $6c22: $01 $a0 $01
	inc c                                            ; $6c25: $0c
	ld a, b                                          ; $6c26: $78
	ret nz                                           ; $6c27: $c0

	ld bc, $03a0                                     ; $6c28: $01 $a0 $03
	inc c                                            ; $6c2b: $0c
	ld a, a                                          ; $6c2c: $7f
	ret nz                                           ; $6c2d: $c0

	ld bc, $01a0                                     ; $6c2e: $01 $a0 $01
	inc c                                            ; $6c31: $0c
	adc b                                            ; $6c32: $88
	pop hl                                           ; $6c33: $e1
	ld [bc], a                                       ; $6c34: $02
	ld [$e08d], sp                                   ; $6c35: $08 $8d $e0
	ld bc, $6014                                     ; $6c38: $01 $14 $60
	add a                                            ; $6c3b: $87
	ld bc, $13e2                                     ; $6c3c: $01 $e2 $13
	ret nz                                           ; $6c3f: $c0

	ld bc, $01a0                                     ; $6c40: $01 $a0 $01
	inc c                                            ; $6c43: $0c
	adc a                                            ; $6c44: $8f
	pop hl                                           ; $6c45: $e1
	ld [bc], a                                       ; $6c46: $02
	inc bc                                           ; $6c47: $03
	rrca                                             ; $6c48: $0f
	ret nz                                           ; $6c49: $c0

	ld bc, $03a0                                     ; $6c4a: $01 $a0 $03
	inc c                                            ; $6c4d: $0c
	sub e                                            ; $6c4e: $93
	ret nz                                           ; $6c4f: $c0

	ld d, c                                          ; $6c50: $51
	pop de                                           ; $6c51: $d1
	db $10                                           ; $6c52: $10
	ret nz                                           ; $6c53: $c0

	ld bc, $01a0                                     ; $6c54: $01 $a0 $01
	inc c                                            ; $6c57: $0c
	sbc [hl]                                         ; $6c58: $9e
	pop hl                                           ; $6c59: $e1
	ld [bc], a                                       ; $6c5a: $02
	inc bc                                           ; $6c5b: $03
	inc de                                           ; $6c5c: $13
	ret nz                                           ; $6c5d: $c0

	ld bc, $03a0                                     ; $6c5e: $01 $a0 $03
	inc c                                            ; $6c61: $0c
	xor b                                            ; $6c62: $a8
	ld b, b                                          ; $6c63: $40
	add a                                            ; $6c64: $87
	ld bc, $e4e2                                     ; $6c65: $01 $e2 $e4
	nop                                              ; $6c68: $00
	or [hl]                                          ; $6c69: $b6
	add hl, bc                                       ; $6c6a: $09
	add hl, de                                       ; $6c6b: $19
	ret nz                                           ; $6c6c: $c0

	ld bc, $01a0                                     ; $6c6d: $01 $a0 $01
	inc c                                            ; $6c70: $0c
	or c                                             ; $6c71: $b1
	ret nz                                           ; $6c72: $c0

	ld bc, $03a0                                     ; $6c73: $01 $a0 $03
	inc c                                            ; $6c76: $0c
	cp b                                             ; $6c77: $b8
	pop hl                                           ; $6c78: $e1
	ld [bc], a                                       ; $6c79: $02
	ld [$e0a4], sp                                   ; $6c7a: $08 $a4 $e0
	nop                                              ; $6c7d: $00
	rst GetHLinHL                                          ; $6c7e: $cf
	ret nz                                           ; $6c7f: $c0

	ld d, c                                          ; $6c80: $51
	pop de                                           ; $6c81: $d1
	db $e4                                           ; $6c82: $e4
	nop                                              ; $6c83: $00
	ld [bc], a                                       ; $6c84: $02
	jr z, jr_07e_6c8d                                ; $6c85: $28 $06

	ret nz                                           ; $6c87: $c0

	ld bc, $03a0                                     ; $6c88: $01 $a0 $03
	inc c                                            ; $6c8b: $0c
	cp e                                             ; $6c8c: $bb

jr_07e_6c8d:
	sub b                                            ; $6c8d: $90
	inc c                                            ; $6c8e: $0c
	cp a                                             ; $6c8f: $bf
	add hl, bc                                       ; $6c90: $09
	inc l                                            ; $6c91: $2c
	pop hl                                           ; $6c92: $e1
	ld [bc], a                                       ; $6c93: $02
	inc bc                                           ; $6c94: $03
	rrca                                             ; $6c95: $0f
	add d                                            ; $6c96: $82
	ret nz                                           ; $6c97: $c0

	dec de                                           ; $6c98: $1b
	pop de                                           ; $6c99: $d1
	ld [bc], a                                       ; $6c9a: $02
	ret nc                                           ; $6c9b: $d0

	pop de                                           ; $6c9c: $d1
	ld b, $c0                                        ; $6c9d: $06 $c0
	ld bc, $03a0                                     ; $6c9f: $01 $a0 $03
	inc c                                            ; $6ca2: $0c
	pop bc                                           ; $6ca3: $c1
	ld [bc], a                                       ; $6ca4: $02
	jp nc, $06d3                                     ; $6ca5: $d2 $d3 $06

	ret nz                                           ; $6ca8: $c0

	ld bc, $03a0                                     ; $6ca9: $01 $a0 $03
	inc c                                            ; $6cac: $0c
	rst GetHLinHL                                          ; $6cad: $cf
	ld bc, $06d4                                     ; $6cae: $01 $d4 $06
	ret nz                                           ; $6cb1: $c0

	ld bc, $03a0                                     ; $6cb2: $01 $a0 $03
	inc c                                            ; $6cb5: $0c
	db $db                                           ; $6cb6: $db
	pop hl                                           ; $6cb7: $e1
	ld [bc], a                                       ; $6cb8: $02
	inc bc                                           ; $6cb9: $03
	ld e, d                                          ; $6cba: $5a
	db $e4                                           ; $6cbb: $e4
	nop                                              ; $6cbc: $00
	ld h, d                                          ; $6cbd: $62
	inc c                                            ; $6cbe: $0c
	push hl                                          ; $6cbf: $e5
	add hl, bc                                       ; $6cc0: $09
	inc l                                            ; $6cc1: $2c
	pop hl                                           ; $6cc2: $e1
	ld [bc], a                                       ; $6cc3: $02
	inc bc                                           ; $6cc4: $03
	dec de                                           ; $6cc5: $1b
	add d                                            ; $6cc6: $82
	ret nz                                           ; $6cc7: $c0

	dec de                                           ; $6cc8: $1b
	pop de                                           ; $6cc9: $d1
	ld [bc], a                                       ; $6cca: $02
	ret nc                                           ; $6ccb: $d0

	pop de                                           ; $6ccc: $d1
	ld b, $c0                                        ; $6ccd: $06 $c0
	ld bc, $03a0                                     ; $6ccf: $01 $a0 $03
	inc c                                            ; $6cd2: $0c
	rst SubAFromBC                                          ; $6cd3: $e7
	ld [bc], a                                       ; $6cd4: $02
	jp nc, $06d3                                     ; $6cd5: $d2 $d3 $06

	ret nz                                           ; $6cd8: $c0

	ld bc, $03a0                                     ; $6cd9: $01 $a0 $03
	inc c                                            ; $6cdc: $0c
	rst AddAOntoHL                                          ; $6cdd: $ef
	ld bc, $06d4                                     ; $6cde: $01 $d4 $06
	ret nz                                           ; $6ce1: $c0

	ld bc, $03a0                                     ; $6ce2: $01 $a0 $03
	inc c                                            ; $6ce5: $0c
	rst $38                                          ; $6ce6: $ff
	pop hl                                           ; $6ce7: $e1
	ld [bc], a                                       ; $6ce8: $02
	inc bc                                           ; $6ce9: $03
	ld [hl], l                                       ; $6cea: $75
	db $e4                                           ; $6ceb: $e4
	nop                                              ; $6cec: $00
	ld [hl-], a                                      ; $6ced: $32
	dec c                                            ; $6cee: $0d
	ld b, $09                                        ; $6cef: $06 $09
	inc l                                            ; $6cf1: $2c
	pop hl                                           ; $6cf2: $e1
	ld [bc], a                                       ; $6cf3: $02
	inc bc                                           ; $6cf4: $03
	inc de                                           ; $6cf5: $13
	add d                                            ; $6cf6: $82
	ret nz                                           ; $6cf7: $c0

	dec de                                           ; $6cf8: $1b
	pop de                                           ; $6cf9: $d1
	ld [bc], a                                       ; $6cfa: $02
	ret nc                                           ; $6cfb: $d0

	pop de                                           ; $6cfc: $d1
	ld b, $c0                                        ; $6cfd: $06 $c0
	ld bc, $03a0                                     ; $6cff: $01 $a0 $03
	dec c                                            ; $6d02: $0d
	ld [$d202], sp                                   ; $6d03: $08 $02 $d2
	db $d3                                           ; $6d06: $d3
	ld b, $c0                                        ; $6d07: $06 $c0
	ld bc, $03a0                                     ; $6d09: $01 $a0 $03
	dec c                                            ; $6d0c: $0d
	ld de, $d401                                     ; $6d0d: $11 $01 $d4
	ld b, $c0                                        ; $6d10: $06 $c0
	ld bc, $03a0                                     ; $6d12: $01 $a0 $03
	dec c                                            ; $6d15: $0d
	ld d, $e1                                        ; $6d16: $16 $e1
	ld [bc], a                                       ; $6d18: $02
	inc bc                                           ; $6d19: $03
	ld h, e                                          ; $6d1a: $63
	db $e4                                           ; $6d1b: $e4
	nop                                              ; $6d1c: $00
	ld [bc], a                                       ; $6d1d: $02
	add hl, bc                                       ; $6d1e: $09
	inc l                                            ; $6d1f: $2c
	ret nc                                           ; $6d20: $d0

	add d                                            ; $6d21: $82
	ld bc, $d1c9                                     ; $6d22: $01 $c9 $d1
	pop hl                                           ; $6d25: $e1
	ld [bc], a                                       ; $6d26: $02
	inc b                                            ; $6d27: $04
	rst JumpTable                                          ; $6d28: $c7
	add c                                            ; $6d29: $81
	ret nz                                           ; $6d2a: $c0

	ld h, h                                          ; $6d2b: $64
	ld [bc], a                                       ; $6d2c: $02
	ldh [$63], a                                     ; $6d2d: $e0 $63
	dec bc                                           ; $6d2f: $0b
	ret nc                                           ; $6d30: $d0

	add e                                            ; $6d31: $83
	ld bc, $d1de                                     ; $6d32: $01 $de $d1
	ret nz                                           ; $6d35: $c0

	ld d, [hl]                                       ; $6d36: $56
	pop de                                           ; $6d37: $d1
	ldh [rAUD1ENV], a                                ; $6d38: $e0 $12
	pop de                                           ; $6d3a: $d1
	nop                                              ; $6d3b: $00
	dec bc                                           ; $6d3c: $0b
	ret nc                                           ; $6d3d: $d0

	add e                                            ; $6d3e: $83
	ld bc, $d0de                                     ; $6d3f: $01 $de $d0
	ret nz                                           ; $6d42: $c0

	ld d, [hl]                                       ; $6d43: $56
	pop de                                           ; $6d44: $d1
	ldh [rAUD1ENV], a                                ; $6d45: $e0 $12
	ret nc                                           ; $6d47: $d0

	push hl                                          ; $6d48: $e5
	rla                                              ; $6d49: $17
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	dec bc                                           ; $6d4c: $0b
	ret nz                                           ; $6d4d: $c0

	and a                                            ; $6d4e: $a7
	pop de                                           ; $6d4f: $d1
	db $d3                                           ; $6d50: $d3
	pop de                                           ; $6d51: $d1
	ret nz                                           ; $6d52: $c0

	xor h                                            ; $6d53: $ac
	pop bc                                           ; $6d54: $c1
	ld e, h                                          ; $6d55: $5c
	ret nz                                           ; $6d56: $c0

	jp z, $1409                                      ; $6d57: $ca $09 $14

	ret nc                                           ; $6d5a: $d0

	add e                                            ; $6d5b: $83
	ld bc, $d0de                                     ; $6d5c: $01 $de $d0
	ret nz                                           ; $6d5f: $c0

	ld bc, $03a0                                     ; $6d60: $01 $a0 $03
	dec c                                            ; $6d63: $0d
	ld a, [de]                                       ; $6d64: $1a
	ret nz                                           ; $6d65: $c0

	ld bc, $01a0                                     ; $6d66: $01 $a0 $01
	ld b, $65                                        ; $6d69: $06 $65
	db $e4                                           ; $6d6b: $e4
	nop                                              ; $6d6c: $00
	ld [bc], a                                       ; $6d6d: $02
	add hl, bc                                       ; $6d6e: $09
	rla                                              ; $6d6f: $17
	pop bc                                           ; $6d70: $c1
	ld e, c                                          ; $6d71: $59
	db $e3                                           ; $6d72: $e3
	nop                                              ; $6d73: $00
	xor c                                            ; $6d74: $a9
	and b                                            ; $6d75: $a0
	add b                                            ; $6d76: $80
	and b                                            ; $6d77: $a0
	ld a, [de]                                       ; $6d78: $1a
	nop                                              ; $6d79: $00
	inc bc                                           ; $6d7a: $03
	db $e4                                           ; $6d7b: $e4
	nop                                              ; $6d7c: $00
	dec bc                                           ; $6d7d: $0b
	rst $38                                          ; $6d7e: $ff
	rlca                                             ; $6d7f: $07
	ld b, b                                          ; $6d80: $40
	add b                                            ; $6d81: $80
	and b                                            ; $6d82: $a0
	ld a, [de]                                       ; $6d83: $1a
	db $e4                                           ; $6d84: $e4
	nop                                              ; $6d85: $00
	sbc e                                            ; $6d86: $9b
	jr z, jr_07e_6d8f                                ; $6d87: $28 $06

	ret nz                                           ; $6d89: $c0

	ld bc, $03a0                                     ; $6d8a: $01 $a0 $03
	dec c                                            ; $6d8d: $0d
	ld [hl+], a                                      ; $6d8e: $22

jr_07e_6d8f:
	sub b                                            ; $6d8f: $90
	ld a, [bc]                                       ; $6d90: $0a
	jp c, $2c09                                      ; $6d91: $da $09 $2c

	pop hl                                           ; $6d94: $e1
	ld [bc], a                                       ; $6d95: $02
	inc bc                                           ; $6d96: $03
	rrca                                             ; $6d97: $0f
	add d                                            ; $6d98: $82
	ret nz                                           ; $6d99: $c0

	dec de                                           ; $6d9a: $1b

jr_07e_6d9b:
	pop de                                           ; $6d9b: $d1
	ld [bc], a                                       ; $6d9c: $02
	ret nc                                           ; $6d9d: $d0

	pop de                                           ; $6d9e: $d1
	ld b, $c0                                        ; $6d9f: $06 $c0
	ld bc, $03a0                                     ; $6da1: $01 $a0 $03
	dec c                                            ; $6da4: $0d
	jr z, @+$04                                      ; $6da5: $28 $02

	jp nc, $06d3                                     ; $6da7: $d2 $d3 $06

	ret nz                                           ; $6daa: $c0

	ld bc, $03a0                                     ; $6dab: $01 $a0 $03
	dec c                                            ; $6dae: $0d
	inc [hl]                                         ; $6daf: $34
	ld bc, $06d4                                     ; $6db0: $01 $d4 $06
	ret nz                                           ; $6db3: $c0

	ld bc, $03a0                                     ; $6db4: $01 $a0 $03
	dec c                                            ; $6db7: $0d
	jr c, jr_07e_6d9b                                ; $6db8: $38 $e1

	ld [bc], a                                       ; $6dba: $02
	inc bc                                           ; $6dbb: $03
	ld e, d                                          ; $6dbc: $5a
	db $e4                                           ; $6dbd: $e4
	nop                                              ; $6dbe: $00
	ei                                               ; $6dbf: $fb
	dec c                                            ; $6dc0: $0d
	inc a                                            ; $6dc1: $3c
	add hl, bc                                       ; $6dc2: $09
	inc l                                            ; $6dc3: $2c
	pop hl                                           ; $6dc4: $e1
	ld [bc], a                                       ; $6dc5: $02
	inc bc                                           ; $6dc6: $03
	dec de                                           ; $6dc7: $1b
	add d                                            ; $6dc8: $82
	ret nz                                           ; $6dc9: $c0

	dec de                                           ; $6dca: $1b
	pop de                                           ; $6dcb: $d1
	ld [bc], a                                       ; $6dcc: $02
	ret nc                                           ; $6dcd: $d0

	pop de                                           ; $6dce: $d1
	ld b, $c0                                        ; $6dcf: $06 $c0
	ld bc, $03a0                                     ; $6dd1: $01 $a0 $03
	dec c                                            ; $6dd4: $0d
	ld b, h                                          ; $6dd5: $44
	ld [bc], a                                       ; $6dd6: $02
	jp nc, $06d3                                     ; $6dd7: $d2 $d3 $06

	ret nz                                           ; $6dda: $c0

	ld bc, $03a0                                     ; $6ddb: $01 $a0 $03
	dec c                                            ; $6dde: $0d
	ld d, b                                          ; $6ddf: $50
	ld bc, $06d4                                     ; $6de0: $01 $d4 $06
	ret nz                                           ; $6de3: $c0

	ld bc, $03a0                                     ; $6de4: $01 $a0 $03
	dec c                                            ; $6de7: $0d
	ld e, [hl]                                       ; $6de8: $5e
	pop hl                                           ; $6de9: $e1
	ld [bc], a                                       ; $6dea: $02
	inc bc                                           ; $6deb: $03
	ld [hl], l                                       ; $6dec: $75
	db $e4                                           ; $6ded: $e4
	nop                                              ; $6dee: $00
	rrc l                                            ; $6def: $cb $0d
	ld l, e                                          ; $6df1: $6b
	add hl, bc                                       ; $6df2: $09
	inc l                                            ; $6df3: $2c
	pop hl                                           ; $6df4: $e1
	ld [bc], a                                       ; $6df5: $02
	inc bc                                           ; $6df6: $03
	rla                                              ; $6df7: $17
	add d                                            ; $6df8: $82
	ret nz                                           ; $6df9: $c0

	dec de                                           ; $6dfa: $1b
	pop de                                           ; $6dfb: $d1
	ld [bc], a                                       ; $6dfc: $02
	ret nc                                           ; $6dfd: $d0

	pop de                                           ; $6dfe: $d1
	ld b, $c0                                        ; $6dff: $06 $c0
	ld bc, $03a0                                     ; $6e01: $01 $a0 $03
	dec c                                            ; $6e04: $0d
	ld [hl], c                                       ; $6e05: $71
	ld [bc], a                                       ; $6e06: $02
	jp nc, $06d3                                     ; $6e07: $d2 $d3 $06

	ret nz                                           ; $6e0a: $c0

	ld bc, $03a0                                     ; $6e0b: $01 $a0 $03
	dec c                                            ; $6e0e: $0d
	ld a, b                                          ; $6e0f: $78
	ld bc, $06d4                                     ; $6e10: $01 $d4 $06
	ret nz                                           ; $6e13: $c0

	ld bc, $03a0                                     ; $6e14: $01 $a0 $03
	dec c                                            ; $6e17: $0d
	ld a, [hl]                                       ; $6e18: $7e
	pop hl                                           ; $6e19: $e1
	ld [bc], a                                       ; $6e1a: $02
	inc bc                                           ; $6e1b: $03
	ld l, h                                          ; $6e1c: $6c
	db $e4                                           ; $6e1d: $e4
	nop                                              ; $6e1e: $00
	sbc e                                            ; $6e1f: $9b
	jr z, jr_07e_6e28                                ; $6e20: $28 $06

	ret nz                                           ; $6e22: $c0

	ld bc, $03a0                                     ; $6e23: $01 $a0 $03
	dec c                                            ; $6e26: $0d
	add a                                            ; $6e27: $87

jr_07e_6e28:
	sub b                                            ; $6e28: $90
	dec c                                            ; $6e29: $0d
	adc [hl]                                         ; $6e2a: $8e
	add hl, bc                                       ; $6e2b: $09
	inc l                                            ; $6e2c: $2c
	pop hl                                           ; $6e2d: $e1
	ld [bc], a                                       ; $6e2e: $02
	inc bc                                           ; $6e2f: $03
	rrca                                             ; $6e30: $0f
	add d                                            ; $6e31: $82
	ret nz                                           ; $6e32: $c0

	dec de                                           ; $6e33: $1b
	pop de                                           ; $6e34: $d1
	ld [bc], a                                       ; $6e35: $02
	ret nc                                           ; $6e36: $d0

	pop de                                           ; $6e37: $d1
	ld b, $c0                                        ; $6e38: $06 $c0
	ld bc, $03a0                                     ; $6e3a: $01 $a0 $03
	dec c                                            ; $6e3d: $0d
	sub b                                            ; $6e3e: $90
	ld [bc], a                                       ; $6e3f: $02
	jp nc, $06d3                                     ; $6e40: $d2 $d3 $06

	ret nz                                           ; $6e43: $c0

	ld bc, $03a0                                     ; $6e44: $01 $a0 $03
	dec c                                            ; $6e47: $0d
	sbc b                                            ; $6e48: $98
	ld bc, $06d4                                     ; $6e49: $01 $d4 $06
	ret nz                                           ; $6e4c: $c0

	ld bc, $03a0                                     ; $6e4d: $01 $a0 $03
	dec c                                            ; $6e50: $0d
	sbc [hl]                                         ; $6e51: $9e
	pop hl                                           ; $6e52: $e1
	ld [bc], a                                       ; $6e53: $02
	inc bc                                           ; $6e54: $03
	ld e, d                                          ; $6e55: $5a
	db $e4                                           ; $6e56: $e4
	nop                                              ; $6e57: $00
	ld h, d                                          ; $6e58: $62
	dec c                                            ; $6e59: $0d
	and e                                            ; $6e5a: $a3
	add hl, bc                                       ; $6e5b: $09
	inc l                                            ; $6e5c: $2c
	pop hl                                           ; $6e5d: $e1
	ld [bc], a                                       ; $6e5e: $02
	inc bc                                           ; $6e5f: $03
	rra                                              ; $6e60: $1f
	add d                                            ; $6e61: $82
	ret nz                                           ; $6e62: $c0

	dec de                                           ; $6e63: $1b
	pop de                                           ; $6e64: $d1
	ld [bc], a                                       ; $6e65: $02
	ret nc                                           ; $6e66: $d0

	pop de                                           ; $6e67: $d1
	ld b, $c0                                        ; $6e68: $06 $c0
	ld bc, $03a0                                     ; $6e6a: $01 $a0 $03
	dec c                                            ; $6e6d: $0d
	xor e                                            ; $6e6e: $ab
	ld [bc], a                                       ; $6e6f: $02
	jp nc, $06d3                                     ; $6e70: $d2 $d3 $06

	ret nz                                           ; $6e73: $c0

	ld bc, $03a0                                     ; $6e74: $01 $a0 $03
	dec c                                            ; $6e77: $0d
	or h                                             ; $6e78: $b4
	ld bc, $06d4                                     ; $6e79: $01 $d4 $06
	ret nz                                           ; $6e7c: $c0

	ld bc, $03a0                                     ; $6e7d: $01 $a0 $03
	dec c                                            ; $6e80: $0d
	cp a                                             ; $6e81: $bf
	pop hl                                           ; $6e82: $e1
	ld [bc], a                                       ; $6e83: $02
	inc bc                                           ; $6e84: $03
	ld a, [hl]                                       ; $6e85: $7e
	db $e4                                           ; $6e86: $e4
	nop                                              ; $6e87: $00
	ld [hl-], a                                      ; $6e88: $32
	dec c                                            ; $6e89: $0d
	call nz, $2c09                                   ; $6e8a: $c4 $09 $2c
	pop hl                                           ; $6e8d: $e1
	ld [bc], a                                       ; $6e8e: $02
	inc bc                                           ; $6e8f: $03
	dec de                                           ; $6e90: $1b
	add d                                            ; $6e91: $82
	ret nz                                           ; $6e92: $c0

	dec de                                           ; $6e93: $1b
	pop de                                           ; $6e94: $d1
	ld [bc], a                                       ; $6e95: $02
	ret nc                                           ; $6e96: $d0

	pop de                                           ; $6e97: $d1
	ld b, $c0                                        ; $6e98: $06 $c0
	ld bc, $03a0                                     ; $6e9a: $01 $a0 $03
	dec c                                            ; $6e9d: $0d
	rlc d                                            ; $6e9e: $cb $02
	jp nc, $06d3                                     ; $6ea0: $d2 $d3 $06

	ret nz                                           ; $6ea3: $c0

	ld bc, $03a0                                     ; $6ea4: $01 $a0 $03
	dec c                                            ; $6ea7: $0d
	jp nc, $d401                                     ; $6ea8: $d2 $01 $d4

	ld b, $c0                                        ; $6eab: $06 $c0
	ld bc, $03a0                                     ; $6ead: $01 $a0 $03
	dec c                                            ; $6eb0: $0d
	jp c, $02e1                                      ; $6eb1: $da $e1 $02

	inc bc                                           ; $6eb4: $03
	ld [hl], l                                       ; $6eb5: $75
	db $e4                                           ; $6eb6: $e4
	nop                                              ; $6eb7: $00
	ld [bc], a                                       ; $6eb8: $02
	add hl, bc                                       ; $6eb9: $09
	rrca                                             ; $6eba: $0f
	pop bc                                           ; $6ebb: $c1
	ld e, c                                          ; $6ebc: $59
	db $e3                                           ; $6ebd: $e3
	nop                                              ; $6ebe: $00
	xor b                                            ; $6ebf: $a8
	ret nz                                           ; $6ec0: $c0

	ld d, [hl]                                       ; $6ec1: $56
	pop de                                           ; $6ec2: $d1
	ldh [rAUD1LOW], a                                ; $6ec3: $e0 $13
	ret nc                                           ; $6ec5: $d0

	push hl                                          ; $6ec6: $e5
	rla                                              ; $6ec7: $17
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	inc de                                           ; $6eca: $13
	dec b                                            ; $6ecb: $05
	add hl, bc                                       ; $6ecc: $09
	jp nz, $c082                                     ; $6ecd: $c2 $82 $c0

	ld c, h                                          ; $6ed0: $4c
	pop de                                           ; $6ed1: $d1
	ret nc                                           ; $6ed2: $d0

	adc a                                            ; $6ed3: $8f
	nop                                              ; $6ed4: $00
	cp b                                             ; $6ed5: $b8
	add h                                            ; $6ed6: $84
	ld [bc], a                                       ; $6ed7: $02
	ld l, $61                                        ; $6ed8: $2e $61
	cp $07                                           ; $6eda: $fe $07
	add b                                            ; $6edc: $80
	nop                                              ; $6edd: $00
	set 7, h                                         ; $6ede: $cb $fc
	ret nz                                           ; $6ee0: $c0

	ld h, a                                          ; $6ee1: $67
	ret nc                                           ; $6ee2: $d0

	inc [hl]                                         ; $6ee3: $34
	ret nz                                           ; $6ee4: $c0

	ld bc, $03a0                                     ; $6ee5: $01 $a0 $03
	nop                                              ; $6ee8: $00
	ld bc, $01c0                                     ; $6ee9: $01 $c0 $01
	and b                                            ; $6eec: $a0
	ld bc, $0900                                     ; $6eed: $01 $00 $09
	add c                                            ; $6ef0: $81
	ret nz                                           ; $6ef1: $c0

	dec de                                           ; $6ef2: $1b
	pop de                                           ; $6ef3: $d1
	ld [bc], a                                       ; $6ef4: $02
	ret nc                                           ; $6ef5: $d0

	pop de                                           ; $6ef6: $d1
	ld a, [bc]                                       ; $6ef7: $0a
	pop hl                                           ; $6ef8: $e1
	ld [bc], a                                       ; $6ef9: $02
	inc bc                                           ; $6efa: $03
	rrca                                             ; $6efb: $0f
	ret nz                                           ; $6efc: $c0

	ld bc, $03a0                                     ; $6efd: $01 $a0 $03
	nop                                              ; $6f00: $00
	ld [de], a                                       ; $6f01: $12
	nop                                              ; $6f02: $00
	ld a, [bc]                                       ; $6f03: $0a
	pop hl                                           ; $6f04: $e1
	ld [bc], a                                       ; $6f05: $02
	inc bc                                           ; $6f06: $03
	inc de                                           ; $6f07: $13
	ret nz                                           ; $6f08: $c0

	ld bc, $03a0                                     ; $6f09: $01 $a0 $03
	nop                                              ; $6f0c: $00
	inc e                                            ; $6f0d: $1c
	ret nz                                           ; $6f0e: $c0

	ld bc, $01a0                                     ; $6f0f: $01 $a0 $01
	nop                                              ; $6f12: $00
	ld hl, $8040                                     ; $6f13: $21 $40 $80
	nop                                              ; $6f16: $00
	set 7, h                                         ; $6f17: $cb $fc
	pop bc                                           ; $6f19: $c1
	ld b, c                                          ; $6f1a: $41
	pop de                                           ; $6f1b: $d1

jr_07e_6f1c:
	add h                                            ; $6f1c: $84
	ld [bc], a                                       ; $6f1d: $02
	ld l, $83                                        ; $6f1e: $2e $83
	ld bc, $d1de                                     ; $6f20: $01 $de $d1
	inc e                                            ; $6f23: $1c
	pop hl                                           ; $6f24: $e1
	ld [bc], a                                       ; $6f25: $02
	inc bc                                           ; $6f26: $03
	dec de                                           ; $6f27: $1b
	ret nz                                           ; $6f28: $c0

	ld bc, $03a0                                     ; $6f29: $01 $a0 $03
	nop                                              ; $6f2c: $00
	daa                                              ; $6f2d: $27
	ret nz                                           ; $6f2e: $c0

	ld bc, $01a0                                     ; $6f2f: $01 $a0 $01
	nop                                              ; $6f32: $00
	cpl                                              ; $6f33: $2f
	ret nz                                           ; $6f34: $c0

	dec h                                            ; $6f35: $25
	pop de                                           ; $6f36: $d1
	pop de                                           ; $6f37: $d1
	ret nz                                           ; $6f38: $c0

	inc h                                            ; $6f39: $24
	jp nc, $c0d1                                     ; $6f3a: $d2 $d1 $c0

	inc hl                                           ; $6f3d: $23
	jp c, $c1d1                                      ; $6f3e: $da $d1 $c1

	inc l                                            ; $6f41: $2c
	add e                                            ; $6f42: $83
	ret nz                                           ; $6f43: $c0

	dec de                                           ; $6f44: $1b
	pop de                                           ; $6f45: $d1
	ld [bc], a                                       ; $6f46: $02
	ret nc                                           ; $6f47: $d0

	pop de                                           ; $6f48: $d1
	ld l, b                                          ; $6f49: $68
	add d                                            ; $6f4a: $82
	add d                                            ; $6f4b: $82
	ld bc, $02c9                                     ; $6f4c: $01 $c9 $02
	pop de                                           ; $6f4f: $d1
	jp nc, $e121                                     ; $6f50: $d2 $21 $e1

	ld [bc], a                                       ; $6f53: $02
	inc bc                                           ; $6f54: $03
	inc de                                           ; $6f55: $13
	pop bc                                           ; $6f56: $c1
	or d                                             ; $6f57: $b2
	db $e3                                           ; $6f58: $e3
	nop                                              ; $6f59: $00
	jr z, jr_07e_6f1c                                ; $6f5a: $28 $c0

	ld bc, $03a0                                     ; $6f5c: $01 $a0 $03
	nop                                              ; $6f5f: $00
	dec [hl]                                         ; $6f60: $35
	ret nz                                           ; $6f61: $c0

	ld bc, $01a0                                     ; $6f62: $01 $a0 $01
	nop                                              ; $6f65: $00
	ld a, $c0                                        ; $6f66: $3e $c0
	ld bc, $03a0                                     ; $6f68: $01 $a0 $03
	nop                                              ; $6f6b: $00
	ld b, e                                          ; $6f6c: $43
	ret nz                                           ; $6f6d: $c0

	ld bc, $01a0                                     ; $6f6e: $01 $a0 $01
	nop                                              ; $6f71: $00
	ld b, a                                          ; $6f72: $47
	ld bc, $1cd3                                     ; $6f73: $01 $d3 $1c
	pop hl                                           ; $6f76: $e1
	ld [bc], a                                       ; $6f77: $02
	inc bc                                           ; $6f78: $03
	rla                                              ; $6f79: $17
	ret nz                                           ; $6f7a: $c0

	ld bc, $03a0                                     ; $6f7b: $01 $a0 $03
	nop                                              ; $6f7e: $00
	ld c, h                                          ; $6f7f: $4c
	ret nz                                           ; $6f80: $c0

	ld bc, $01a0                                     ; $6f81: $01 $a0 $01
	nop                                              ; $6f84: $00
	ld a, $c0                                        ; $6f85: $3e $c0
	ld bc, $03a0                                     ; $6f87: $01 $a0 $03
	nop                                              ; $6f8a: $00
	ld b, e                                          ; $6f8b: $43
	ret nz                                           ; $6f8c: $c0

	ld bc, $01a0                                     ; $6f8d: $01 $a0 $01
	nop                                              ; $6f90: $00
	ld b, a                                          ; $6f91: $47
	ld [bc], a                                       ; $6f92: $02
	call nc, $1cd5                                   ; $6f93: $d4 $d5 $1c
	pop hl                                           ; $6f96: $e1
	ld [bc], a                                       ; $6f97: $02
	inc bc                                           ; $6f98: $03
	dec de                                           ; $6f99: $1b
	ret nz                                           ; $6f9a: $c0

	ld bc, $03a0                                     ; $6f9b: $01 $a0 $03
	nop                                              ; $6f9e: $00
	ld d, e                                          ; $6f9f: $53
	ret nz                                           ; $6fa0: $c0

	ld bc, $01a0                                     ; $6fa1: $01 $a0 $01
	nop                                              ; $6fa4: $00
	ld e, a                                          ; $6fa5: $5f
	ret nz                                           ; $6fa6: $c0

	ld bc, $03a0                                     ; $6fa7: $01 $a0 $03
	nop                                              ; $6faa: $00
	ld l, d                                          ; $6fab: $6a
	ret nz                                           ; $6fac: $c0

	ld bc, $01a0                                     ; $6fad: $01 $a0 $01
	nop                                              ; $6fb0: $00
	ld b, a                                          ; $6fb1: $47
	ld [bc], a                                       ; $6fb2: $02
	jp nc, Jump_07e_57d3                             ; $6fb3: $d2 $d3 $57

	add d                                            ; $6fb6: $82
	add d                                            ; $6fb7: $82
	ld bc, $02c9                                     ; $6fb8: $01 $c9 $02
	pop de                                           ; $6fbb: $d1
	jp nc, $e11c                                     ; $6fbc: $d2 $1c $e1

	ld [bc], a                                       ; $6fbf: $02
	inc bc                                           ; $6fc0: $03
	inc de                                           ; $6fc1: $13
	ret nz                                           ; $6fc2: $c0

	ld bc, $03a0                                     ; $6fc3: $01 $a0 $03
	nop                                              ; $6fc6: $00
	ld l, h                                          ; $6fc7: $6c
	ret nz                                           ; $6fc8: $c0

	ld bc, $01a0                                     ; $6fc9: $01 $a0 $01
	nop                                              ; $6fcc: $00
	ld [hl], c                                       ; $6fcd: $71
	ret nz                                           ; $6fce: $c0

	ld bc, $03a0                                     ; $6fcf: $01 $a0 $03
	nop                                              ; $6fd2: $00
	ld [hl], a                                       ; $6fd3: $77
	ret nz                                           ; $6fd4: $c0

	ld bc, $01a0                                     ; $6fd5: $01 $a0 $01
	nop                                              ; $6fd8: $00
	ld a, e                                          ; $6fd9: $7b
	ld bc, $1cd3                                     ; $6fda: $01 $d3 $1c
	pop hl                                           ; $6fdd: $e1
	ld [bc], a                                       ; $6fde: $02
	inc bc                                           ; $6fdf: $03
	rla                                              ; $6fe0: $17
	ret nz                                           ; $6fe1: $c0

	ld bc, $03a0                                     ; $6fe2: $01 $a0 $03
	nop                                              ; $6fe5: $00
	add b                                            ; $6fe6: $80
	ret nz                                           ; $6fe7: $c0

	ld bc, $01a0                                     ; $6fe8: $01 $a0 $01
	nop                                              ; $6feb: $00
	ld [hl], c                                       ; $6fec: $71
	ret nz                                           ; $6fed: $c0

	ld bc, $03a0                                     ; $6fee: $01 $a0 $03
	nop                                              ; $6ff1: $00
	add h                                            ; $6ff2: $84
	ret nz                                           ; $6ff3: $c0

	ld bc, $01a0                                     ; $6ff4: $01 $a0 $01
	nop                                              ; $6ff7: $00
	ld a, e                                          ; $6ff8: $7b
	ld [bc], a                                       ; $6ff9: $02
	call nc, $10d5                                   ; $6ffa: $d4 $d5 $10
	pop hl                                           ; $6ffd: $e1
	ld [bc], a                                       ; $6ffe: $02
	inc bc                                           ; $6fff: $03
	dec de                                           ; $7000: $1b
	ret nz                                           ; $7001: $c0

	ld bc, $03a0                                     ; $7002: $01 $a0 $03
	nop                                              ; $7005: $00
	adc b                                            ; $7006: $88
	ret nz                                           ; $7007: $c0

	ld bc, $01a0                                     ; $7008: $01 $a0 $01
	nop                                              ; $700b: $00
	adc a                                            ; $700c: $8f
	ld bc, $4bd4                                     ; $700d: $01 $d4 $4b
	add d                                            ; $7010: $82
	add d                                            ; $7011: $82
	ld bc, $02c9                                     ; $7012: $01 $c9 $02
	pop de                                           ; $7015: $d1
	jp nc, $e11c                                     ; $7016: $d2 $1c $e1

	ld [bc], a                                       ; $7019: $02
	inc bc                                           ; $701a: $03
	inc de                                           ; $701b: $13
	ret nz                                           ; $701c: $c0

	ld bc, $03a0                                     ; $701d: $01 $a0 $03
	nop                                              ; $7020: $00
	sub d                                            ; $7021: $92
	ret nz                                           ; $7022: $c0

	ld bc, $01a0                                     ; $7023: $01 $a0 $01
	nop                                              ; $7026: $00
	sub [hl]                                         ; $7027: $96
	ret nz                                           ; $7028: $c0

	ld bc, $03a0                                     ; $7029: $01 $a0 $03
	nop                                              ; $702c: $00
	add h                                            ; $702d: $84
	ret nz                                           ; $702e: $c0

	ld bc, $01a0                                     ; $702f: $01 $a0 $01
	nop                                              ; $7032: $00
	ld a, e                                          ; $7033: $7b
	ld bc, $10d3                                     ; $7034: $01 $d3 $10
	pop hl                                           ; $7037: $e1
	ld [bc], a                                       ; $7038: $02
	inc bc                                           ; $7039: $03
	rla                                              ; $703a: $17
	ret nz                                           ; $703b: $c0

	ld bc, $03a0                                     ; $703c: $01 $a0 $03
	nop                                              ; $703f: $00
	sbc e                                            ; $7040: $9b
	ret nz                                           ; $7041: $c0

	ld bc, $01a0                                     ; $7042: $01 $a0 $01
	nop                                              ; $7045: $00
	sbc [hl]                                         ; $7046: $9e
	ld [bc], a                                       ; $7047: $02
	call nc, $10d5                                   ; $7048: $d4 $d5 $10
	pop hl                                           ; $704b: $e1
	ld [bc], a                                       ; $704c: $02
	inc bc                                           ; $704d: $03
	dec de                                           ; $704e: $1b
	ret nz                                           ; $704f: $c0

	ld bc, $03a0                                     ; $7050: $01 $a0 $03
	nop                                              ; $7053: $00
	and d                                            ; $7054: $a2
	ret nz                                           ; $7055: $c0

	ld bc, $01a0                                     ; $7056: $01 $a0 $01
	nop                                              ; $7059: $00
	adc a                                            ; $705a: $8f
	ld bc, $10d5                                     ; $705b: $01 $d5 $10
	pop hl                                           ; $705e: $e1
	ld [bc], a                                       ; $705f: $02
	inc bc                                           ; $7060: $03
	dec de                                           ; $7061: $1b
	ret nz                                           ; $7062: $c0

	ld bc, $03a0                                     ; $7063: $01 $a0 $03
	nop                                              ; $7066: $00
	xor c                                            ; $7067: $a9
	ret nz                                           ; $7068: $c0

	ld bc, $01a0                                     ; $7069: $01 $a0 $01
	nop                                              ; $706c: $00
	or d                                             ; $706d: $b2
	pop hl                                           ; $706e: $e1
	ld [bc], a                                       ; $706f: $02
	inc bc                                           ; $7070: $03
	daa                                              ; $7071: $27
	ei                                               ; $7072: $fb
	cp $0a                                           ; $7073: $fe $0a
	db $fc                                           ; $7075: $fc
	ret nz                                           ; $7076: $c0

	ld h, l                                          ; $7077: $65
	ret nz                                           ; $7078: $c0

	ld [hl], c                                       ; $7079: $71
	db $fc                                           ; $707a: $fc
	ret nz                                           ; $707b: $c0

	ld h, [hl]                                       ; $707c: $66
	ret nz                                           ; $707d: $c0

	ld [hl], d                                       ; $707e: $72
	cpl                                              ; $707f: $2f
	ei                                               ; $7080: $fb
	ld hl, sp-$40                                    ; $7081: $f8 $c0
	rla                                              ; $7083: $17
	pop de                                           ; $7084: $d1
	ldh [$3c], a                                     ; $7085: $e0 $3c
	daa                                              ; $7087: $27
	add b                                            ; $7088: $80
	ret nz                                           ; $7089: $c0

	dec de                                           ; $708a: $1b
	pop de                                           ; $708b: $d1
	ld [bc], a                                       ; $708c: $02
	ret nc                                           ; $708d: $d0

	pop de                                           ; $708e: $d1
	rra                                              ; $708f: $1f
	ret nz                                           ; $7090: $c0

	ld bc, $03a0                                     ; $7091: $01 $a0 $03
	nop                                              ; $7094: $00
	or [hl]                                          ; $7095: $b6
	ret nz                                           ; $7096: $c0

	ld bc, $01a0                                     ; $7097: $01 $a0 $01
	nop                                              ; $709a: $00
	cp d                                             ; $709b: $ba
	ret nc                                           ; $709c: $d0

	add e                                            ; $709d: $83
	ld [bc], a                                       ; $709e: $02
	ld l, l                                          ; $709f: $6d
	pop de                                           ; $70a0: $d1
	pop hl                                           ; $70a1: $e1
	ld b, [hl]                                       ; $70a2: $46
	ld bc, $c0e1                                     ; $70a3: $01 $e1 $c0
	ld bc, $01a0                                     ; $70a6: $01 $a0 $01
	nop                                              ; $70a9: $00
	cp l                                             ; $70aa: $bd
	nop                                              ; $70ab: $00
	add b                                            ; $70ac: $80
	nop                                              ; $70ad: $00
	dec [hl]                                         ; $70ae: $35
	add d                                            ; $70af: $82
	ret nz                                           ; $70b0: $c0

	dec de                                           ; $70b1: $1b
	pop de                                           ; $70b2: $d1
	ld [bc], a                                       ; $70b3: $02
	ret nc                                           ; $70b4: $d0

	pop de                                           ; $70b5: $d1
	ld [de], a                                       ; $70b6: $12
	ret nz                                           ; $70b7: $c0

	ld bc, $03a0                                     ; $70b8: $01 $a0 $03
	nop                                              ; $70bb: $00
	pop de                                           ; $70bc: $d1
	ret nz                                           ; $70bd: $c0

	ld bc, $01a0                                     ; $70be: $01 $a0 $01
	nop                                              ; $70c1: $00
	db $db                                           ; $70c2: $db
	ret nz                                           ; $70c3: $c0

	ld bc, $03a0                                     ; $70c4: $01 $a0 $03
	nop                                              ; $70c7: $00
	ldh [$03], a                                     ; $70c8: $e0 $03
	jp nc, $d4d3                                     ; $70ca: $d2 $d3 $d4

	ld b, $c0                                        ; $70cd: $06 $c0
	ld bc, $03a0                                     ; $70cf: $01 $a0 $03
	nop                                              ; $70d2: $00
	ldh [c], a                                       ; $70d3: $e2
	ld bc, $0cd5                                     ; $70d4: $01 $d5 $0c
	ret nz                                           ; $70d7: $c0

	ld bc, $03a0                                     ; $70d8: $01 $a0 $03
	nop                                              ; $70db: $00
	push hl                                          ; $70dc: $e5
	pop bc                                           ; $70dd: $c1
	ld e, e                                          ; $70de: $5b
	ret nz                                           ; $70df: $c0

	inc c                                            ; $70e0: $0c
	ldh [rAUD3HIGH], a                               ; $70e1: $e0 $1e
	ei                                               ; $70e3: $fb
	db $fd                                           ; $70e4: $fd
	add h                                            ; $70e5: $84
	ld [bc], a                                       ; $70e6: $02
	ld l, $d0                                        ; $70e7: $2e $d0
	add hl, bc                                       ; $70e9: $09
	pop bc                                           ; $70ea: $c1
	ccf                                              ; $70eb: $3f
	pop de                                           ; $70ec: $d1
	add h                                            ; $70ed: $84
	ld [bc], a                                       ; $70ee: $02
	ld l, $83                                        ; $70ef: $2e $83
	ld bc, $61de                                     ; $70f1: $01 $de $61
	cp $09                                           ; $70f4: $fe $09
	db $fd                                           ; $70f6: $fd
	ret nz                                           ; $70f7: $c0

	ld h, h                                          ; $70f8: $64
	ldh [$63], a                                     ; $70f9: $e0 $63
	db $fc                                           ; $70fb: $fc
	ret nz                                           ; $70fc: $c0

	ld h, l                                          ; $70fd: $65
	push de                                          ; $70fe: $d5
	dec de                                           ; $70ff: $1b
	add d                                            ; $7100: $82
	ret nz                                           ; $7101: $c0

	ld h, [hl]                                       ; $7102: $66
	ld bc, $05d3                                     ; $7103: $01 $d3 $05
	ret nc                                           ; $7106: $d0

	add e                                            ; $7107: $83
	ld bc, $d172                                     ; $7108: $01 $72 $d1
	ld bc, $05d4                                     ; $710b: $01 $d4 $05
	ret nc                                           ; $710e: $d0

	add e                                            ; $710f: $83
	ld bc, $d176                                     ; $7110: $01 $76 $d1
	ld bc, $05d5                                     ; $7113: $01 $d5 $05
	ret nc                                           ; $7116: $d0

	add e                                            ; $7117: $83
	ld bc, $d17a                                     ; $7118: $01 $7a $d1
	cp $09                                           ; $711b: $fe $09
	db $fc                                           ; $711d: $fc
	ret nz                                           ; $711e: $c0

	ld h, h                                          ; $711f: $64
	ldh [$63], a                                     ; $7120: $e0 $63
	db $fc                                           ; $7122: $fc
	ret nz                                           ; $7123: $c0

	ld h, l                                          ; $7124: $65
	push de                                          ; $7125: $d5
	inc hl                                           ; $7126: $23
	add e                                            ; $7127: $83
	ret nz                                           ; $7128: $c0

jr_07e_7129:
	ld h, [hl]                                       ; $7129: $66
	ld bc, $05d2                                     ; $712a: $01 $d2 $05
	ret nc                                           ; $712d: $d0

	add e                                            ; $712e: $83
	ld bc, $d172                                     ; $712f: $01 $72 $d1
	ld bc, $05d3                                     ; $7132: $01 $d3 $05
	ret nc                                           ; $7135: $d0

	add e                                            ; $7136: $83
	ld bc, $d176                                     ; $7137: $01 $76 $d1
	ld bc, $05d4                                     ; $713a: $01 $d4 $05
	ret nc                                           ; $713d: $d0

	add e                                            ; $713e: $83
	ld bc, $d17a                                     ; $713f: $01 $7a $d1
	ld bc, $05d5                                     ; $7142: $01 $d5 $05
	ret nc                                           ; $7145: $d0

	add e                                            ; $7146: $83
	ld bc, $d17e                                     ; $7147: $01 $7e $d1
	nop                                              ; $714a: $00
	ret nz                                           ; $714b: $c0

	set 4, l                                         ; $714c: $cb $e5
	nop                                              ; $714e: $00
	jr nz, jr_07e_7129                               ; $714f: $20 $d8

	ld l, $05                                        ; $7151: $2e $05
	add hl, bc                                       ; $7153: $09
	ret nz                                           ; $7154: $c0

	and $00                                          ; $7155: $e6 $00
	add b                                            ; $7157: $80
	ld [bc], a                                       ; $7158: $02
	ld [hl], e                                       ; $7159: $73
	db $fd                                           ; $715a: $fd
	ret nz                                           ; $715b: $c0

	rst SubAFromDE                                          ; $715c: $df
	adc e                                            ; $715d: $8b
	ld [bc], a                                       ; $715e: $02
	inc [hl]                                         ; $715f: $34
	ld [bc], a                                       ; $7160: $02
	or b                                             ; $7161: $b0
	ld e, c                                          ; $7162: $59
	rlca                                             ; $7163: $07
	ldh [rP1], a                                     ; $7164: $e0 $00
	rst SubAFromHL                                          ; $7166: $d7
	push hl                                          ; $7167: $e5
	add hl, de                                       ; $7168: $19
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	ld [bc], a                                       ; $716b: $02
	or b                                             ; $716c: $b0
	ld [de], a                                       ; $716d: $12
	rlca                                             ; $716e: $07
	ldh [rP1], a                                     ; $716f: $e0 $00
	call z, $19e5                                    ; $7171: $cc $e5 $19
	ld bc, $0240                                     ; $7174: $01 $40 $02
	or b                                             ; $7177: $b0
	ld e, d                                          ; $7178: $5a
	rlca                                             ; $7179: $07
	ldh [rP1], a                                     ; $717a: $e0 $00
	pop bc                                           ; $717c: $c1
	push hl                                          ; $717d: $e5
	add hl, de                                       ; $717e: $19
	inc bc                                           ; $717f: $03
	jr c, jr_07e_7184                                ; $7180: $38 $02

	or b                                             ; $7182: $b0
	inc d                                            ; $7183: $14

jr_07e_7184:
	rlca                                             ; $7184: $07
	ldh [rP1], a                                     ; $7185: $e0 $00
	or [hl]                                          ; $7187: $b6
	push hl                                          ; $7188: $e5
	add hl, de                                       ; $7189: $19
	rlca                                             ; $718a: $07
	sub a                                            ; $718b: $97
	ld [bc], a                                       ; $718c: $02
	or b                                             ; $718d: $b0
	ld e, e                                          ; $718e: $5b
	rlca                                             ; $718f: $07
	ldh [rP1], a                                     ; $7190: $e0 $00
	xor e                                            ; $7192: $ab
	push hl                                          ; $7193: $e5
	add hl, de                                       ; $7194: $19
	add hl, bc                                       ; $7195: $09
	inc e                                            ; $7196: $1c
	ld [bc], a                                       ; $7197: $02
	or b                                             ; $7198: $b0
	ld d, $07                                        ; $7199: $16 $07
	ldh [rP1], a                                     ; $719b: $e0 $00
	and b                                            ; $719d: $a0
	push hl                                          ; $719e: $e5
	add hl, de                                       ; $719f: $19
	dec bc                                           ; $71a0: $0b
	scf                                              ; $71a1: $37
	ld [bc], a                                       ; $71a2: $02
	or b                                             ; $71a3: $b0
	jr jr_07e_71ad                                   ; $71a4: $18 $07

	ldh [rP1], a                                     ; $71a6: $e0 $00
	sub l                                            ; $71a8: $95
	push hl                                          ; $71a9: $e5
	add hl, de                                       ; $71aa: $19
	inc c                                            ; $71ab: $0c
	ld d, d                                          ; $71ac: $52

jr_07e_71ad:
	ld [bc], a                                       ; $71ad: $02
	or b                                             ; $71ae: $b0
	inc de                                           ; $71af: $13
	rlca                                             ; $71b0: $07
	ldh [rP1], a                                     ; $71b1: $e0 $00
	adc d                                            ; $71b3: $8a
	push hl                                          ; $71b4: $e5
	add hl, de                                       ; $71b5: $19
	dec c                                            ; $71b6: $0d
	ld d, b                                          ; $71b7: $50
	ld [bc], a                                       ; $71b8: $02
	or b                                             ; $71b9: $b0
	ld e, h                                          ; $71ba: $5c
	rlca                                             ; $71bb: $07
	ldh [rP1], a                                     ; $71bc: $e0 $00
	ld a, a                                          ; $71be: $7f
	push hl                                          ; $71bf: $e5
	add hl, de                                       ; $71c0: $19
	db $10                                           ; $71c1: $10
	sub e                                            ; $71c2: $93
	ld [bc], a                                       ; $71c3: $02
	or b                                             ; $71c4: $b0
	ld e, l                                          ; $71c5: $5d
	rlca                                             ; $71c6: $07
	ldh [rP1], a                                     ; $71c7: $e0 $00
	ld [hl], h                                       ; $71c9: $74
	push hl                                          ; $71ca: $e5
	add hl, de                                       ; $71cb: $19
	ld de, $02b2                                     ; $71cc: $11 $b2 $02
	or b                                             ; $71cf: $b0
	ld e, [hl]                                       ; $71d0: $5e
	rlca                                             ; $71d1: $07
	ldh [rP1], a                                     ; $71d2: $e0 $00
	ld l, c                                          ; $71d4: $69
	push hl                                          ; $71d5: $e5
	ld a, [de]                                       ; $71d6: $1a
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	ld [bc], a                                       ; $71d9: $02
	or b                                             ; $71da: $b0
	ld e, a                                          ; $71db: $5f
	rlca                                             ; $71dc: $07
	ldh [rP1], a                                     ; $71dd: $e0 $00
	ld e, [hl]                                       ; $71df: $5e
	push hl                                          ; $71e0: $e5
	ld a, [de]                                       ; $71e1: $1a
	ld bc, $027f                                     ; $71e2: $01 $7f $02
	or b                                             ; $71e5: $b0
	ld h, b                                          ; $71e6: $60
	rlca                                             ; $71e7: $07
	ldh [rP1], a                                     ; $71e8: $e0 $00
	ld d, e                                          ; $71ea: $53
	push hl                                          ; $71eb: $e5
	ld a, [de]                                       ; $71ec: $1a
	ld [bc], a                                       ; $71ed: $02
	sbc d                                            ; $71ee: $9a
	ld [bc], a                                       ; $71ef: $02
	or b                                             ; $71f0: $b0
	dec d                                            ; $71f1: $15
	rlca                                             ; $71f2: $07
	ldh [rP1], a                                     ; $71f3: $e0 $00
	ld c, b                                          ; $71f5: $48
	push hl                                          ; $71f6: $e5
	ld a, [de]                                       ; $71f7: $1a
	add hl, bc                                       ; $71f8: $09
	ld d, e                                          ; $71f9: $53
	ld [bc], a                                       ; $71fa: $02
	or b                                             ; $71fb: $b0
	ld h, c                                          ; $71fc: $61
	rlca                                             ; $71fd: $07
	ldh [rP1], a                                     ; $71fe: $e0 $00
	dec a                                            ; $7200: $3d
	push hl                                          ; $7201: $e5
	ld a, [de]                                       ; $7202: $1a
	dec bc                                           ; $7203: $0b
	and b                                            ; $7204: $a0
	ld [bc], a                                       ; $7205: $02
	or b                                             ; $7206: $b0
	ld h, d                                          ; $7207: $62
	rlca                                             ; $7208: $07
	ldh [rP1], a                                     ; $7209: $e0 $00
	ld [hl-], a                                      ; $720b: $32
	push hl                                          ; $720c: $e5
	ld a, [de]                                       ; $720d: $1a
	dec c                                            ; $720e: $0d
	rst $38                                          ; $720f: $ff
	ld [bc], a                                       ; $7210: $02
	or b                                             ; $7211: $b0
	ld h, e                                          ; $7212: $63
	rlca                                             ; $7213: $07
	ldh [rP1], a                                     ; $7214: $e0 $00
	daa                                              ; $7216: $27
	push hl                                          ; $7217: $e5
	ld a, [de]                                       ; $7218: $1a
	db $10                                           ; $7219: $10
	dec b                                            ; $721a: $05
	ld [bc], a                                       ; $721b: $02
	or b                                             ; $721c: $b0
	ld h, h                                          ; $721d: $64
	rlca                                             ; $721e: $07
	ldh [rP1], a                                     ; $721f: $e0 $00
	inc e                                            ; $7221: $1c
	push hl                                          ; $7222: $e5
	ld a, [de]                                       ; $7223: $1a
	db $10                                           ; $7224: $10
	db $e4                                           ; $7225: $e4
	ld [bc], a                                       ; $7226: $02
	or b                                             ; $7227: $b0
	ld h, l                                          ; $7228: $65
	rlca                                             ; $7229: $07
	ldh [rP1], a                                     ; $722a: $e0 $00
	ld de, $1ae5                                     ; $722c: $11 $e5 $1a

jr_07e_722f:
	ld de, $02c7                                     ; $722f: $11 $c7 $02
	or b                                             ; $7232: $b0
	ld h, [hl]                                       ; $7233: $66
	rlca                                             ; $7234: $07
	ldh [rP1], a                                     ; $7235: $e0 $00
	ld b, $e5                                        ; $7237: $06 $e5
	ld a, [de]                                       ; $7239: $1a
	inc de                                           ; $723a: $13
	ld d, e                                          ; $723b: $53
	jp nz, $e12c                                     ; $723c: $c2 $2c $e1

	ld [bc], a                                       ; $723f: $02

jr_07e_7240:
	ld bc, $6162                                     ; $7240: $01 $62 $61
	ld hl, sp-$40                                    ; $7243: $f8 $c0
	add e                                            ; $7245: $83
	sub $e0                                          ; $7246: $d6 $e0
	ld e, $3d                                        ; $7248: $1e $3d
	ret nz                                           ; $724a: $c0

	and l                                            ; $724b: $a5
	ret nz                                           ; $724c: $c0

	inc c                                            ; $724d: $0c
	ldh [$50], a                                     ; $724e: $e0 $50
	pop hl                                           ; $7250: $e1
	ld [bc], a                                       ; $7251: $02
	inc bc                                           ; $7252: $03
	rra                                              ; $7253: $1f
	ret nz                                           ; $7254: $c0

	ld bc, $04a0                                     ; $7255: $01 $a0 $04
	nop                                              ; $7258: $00
	ld bc, $5bc1                                     ; $7259: $01 $c1 $5b
	ret nz                                           ; $725c: $c0

	ld bc, $01a0                                     ; $725d: $01 $a0 $01
	nop                                              ; $7260: $00
	ld [bc], a                                       ; $7261: $02
	ret nz                                           ; $7262: $c0

	ld bc, $01a0                                     ; $7263: $01 $a0 $01
	nop                                              ; $7266: $00
	inc c                                            ; $7267: $0c
	ret nz                                           ; $7268: $c0

	ld bc, $01a0                                     ; $7269: $01 $a0 $01
	nop                                              ; $726c: $00
	jr jr_07e_722f                                   ; $726d: $18 $c0

	dec h                                            ; $726f: $25
	pop de                                           ; $7270: $d1
	jp nc, $24c0                                     ; $7271: $d2 $c0 $24

	pop de                                           ; $7274: $d1
	jp nc, $23c0                                     ; $7275: $d2 $c0 $23

	push de                                          ; $7278: $d5
	jp nc, $4cc1                                     ; $7279: $d2 $c1 $4c

	db $db                                           ; $727c: $db
	pop bc                                           ; $727d: $c1
	dec sp                                           ; $727e: $3b
	ld b, b                                          ; $727f: $40
	add b                                            ; $7280: $80
	nop                                              ; $7281: $00

jr_07e_7282:
	set 4, l                                         ; $7282: $cb $e5
	nop                                              ; $7284: $00
	jr nz, @-$26                                     ; $7285: $20 $d8

	db $fc                                           ; $7287: $fc
	ret nz                                           ; $7288: $c0

	dec de                                           ; $7289: $1b
	jp nc, $1dd5                                     ; $728a: $d2 $d5 $1d

	ret nz                                           ; $728d: $c0

	inc c                                            ; $728e: $0c
	ldh [$78], a                                     ; $728f: $e0 $78
	pop hl                                           ; $7291: $e1
	ld [bc], a                                       ; $7292: $02
	rlca                                             ; $7293: $07
	cp a                                             ; $7294: $bf
	ret nz                                           ; $7295: $c0

	ld bc, $01a0                                     ; $7296: $01 $a0 $01
	nop                                              ; $7299: $00
	ld e, $c0                                        ; $729a: $1e $c0
	ld bc, $01a0                                     ; $729c: $01 $a0 $01
	nop                                              ; $729f: $00
	ld h, $c1                                        ; $72a0: $26 $c1
	ld c, h                                          ; $72a2: $4c
	db $db                                           ; $72a3: $db
	pop bc                                           ; $72a4: $c1
	dec sp                                           ; $72a5: $3b
	push hl                                          ; $72a6: $e5
	nop                                              ; $72a7: $00
	jr nz, jr_07e_7282                               ; $72a8: $20 $d8

	xor l                                            ; $72aa: $ad
	ret nz                                           ; $72ab: $c0

	ld h, $e0                                        ; $72ac: $26 $e0
	jr z, jr_07e_7282                                ; $72ae: $28 $d2

	ld h, b                                          ; $72b0: $60
	add b                                            ; $72b1: $80
	nop                                              ; $72b2: $00
	db $db                                           ; $72b3: $db
	ld e, c                                          ; $72b4: $59
	ret nz                                           ; $72b5: $c0

	and l                                            ; $72b6: $a5
	ret nz                                           ; $72b7: $c0

	ld bc, $01a0                                     ; $72b8: $01 $a0 $01
	nop                                              ; $72bb: $00
	jr nc, jr_07e_7240                               ; $72bc: $30 $82

	ret nz                                           ; $72be: $c0

	dec de                                           ; $72bf: $1b
	jp nc, $d002                                     ; $72c0: $d2 $02 $d0

	pop de                                           ; $72c3: $d1
	inc c                                            ; $72c4: $0c
	ret nz                                           ; $72c5: $c0

	ld bc, $04a0                                     ; $72c6: $01 $a0 $04
	nop                                              ; $72c9: $00
	jr c, @-$3e                                      ; $72ca: $38 $c0

	ld bc, $01a0                                     ; $72cc: $01 $a0 $01
	nop                                              ; $72cf: $00
	ld c, d                                          ; $72d0: $4a
	ld [bc], a                                       ; $72d1: $02
	jp nc, $0cd3                                     ; $72d2: $d2 $d3 $0c

	ret nz                                           ; $72d5: $c0

	ld bc, $04a0                                     ; $72d6: $01 $a0 $04
	nop                                              ; $72d9: $00
	ld d, l                                          ; $72da: $55
	ret nz                                           ; $72db: $c0

	ld bc, $01a0                                     ; $72dc: $01 $a0 $01
	nop                                              ; $72df: $00
	ld h, e                                          ; $72e0: $63
	ld bc, $1fd4                                     ; $72e1: $01 $d4 $1f
	or c                                             ; $72e4: $b1
	ld d, h                                          ; $72e5: $54
	ld b, $c0                                        ; $72e6: $06 $c0
	ld bc, $04a0                                     ; $72e8: $01 $a0 $04
	nop                                              ; $72eb: $00
	ld l, c                                          ; $72ec: $69
	xor d                                            ; $72ed: $aa
	ld b, $c0                                        ; $72ee: $06 $c0
	ld bc, $04a0                                     ; $72f0: $01 $a0 $04
	nop                                              ; $72f3: $00
	ld a, h                                          ; $72f4: $7c
	rst $38                                          ; $72f5: $ff
	ld b, $c0                                        ; $72f6: $06 $c0
	ld bc, $04a0                                     ; $72f8: $01 $a0 $04
	nop                                              ; $72fb: $00
	adc a                                            ; $72fc: $8f
	ret nz                                           ; $72fd: $c0

	ld bc, $01a0                                     ; $72fe: $01 $a0 $01
	nop                                              ; $7301: $00
	and d                                            ; $7302: $a2
	ret nz                                           ; $7303: $c0

	inc hl                                           ; $7304: $23
	ret c                                            ; $7305: $d8

	jp nc, $8040                                     ; $7306: $d2 $40 $80

	nop                                              ; $7309: $00
	db $db                                           ; $730a: $db
	pop bc                                           ; $730b: $c1
	ld l, l                                          ; $730c: $6d
	jp nc, $c043                                     ; $730d: $d2 $43 $c0

	and l                                            ; $7310: $a5
	ret nz                                           ; $7311: $c0

	ld bc, $01a0                                     ; $7312: $01 $a0 $01
	nop                                              ; $7315: $00
	or [hl]                                          ; $7316: $b6
	add d                                            ; $7317: $82
	ret nz                                           ; $7318: $c0

	dec de                                           ; $7319: $1b
	jp nc, $d002                                     ; $731a: $d2 $02 $d0

	pop de                                           ; $731d: $d1
	ld de, $b2c1                                     ; $731e: $11 $c1 $b2
	db $e3                                           ; $7321: $e3
	nop                                              ; $7322: $00
	dec a                                            ; $7323: $3d
	ret nz                                           ; $7324: $c0

	ld bc, $04a0                                     ; $7325: $01 $a0 $04
	nop                                              ; $7328: $00
	cp c                                             ; $7329: $b9
	ret nz                                           ; $732a: $c0

	ld bc, $01a0                                     ; $732b: $01 $a0 $01
	nop                                              ; $732e: $00
	call nz, $d202                                   ; $732f: $c4 $02 $d2
	db $d3                                           ; $7332: $d3
	inc c                                            ; $7333: $0c
	ret nz                                           ; $7334: $c0

	ld bc, $04a0                                     ; $7335: $01 $a0 $04
	nop                                              ; $7338: $00
	rst JumpTable                                          ; $7339: $c7
	ret nz                                           ; $733a: $c0

	ld bc, $01a0                                     ; $733b: $01 $a0 $01
	nop                                              ; $733e: $00
	adc $01                                          ; $733f: $ce $01
	call nc, $c00c                                   ; $7341: $d4 $0c $c0
	ld bc, $04a0                                     ; $7344: $01 $a0 $04
	nop                                              ; $7347: $00
	ret nc                                           ; $7348: $d0

	ret nz                                           ; $7349: $c0

	ld bc, $01a0                                     ; $734a: $01 $a0 $01
	nop                                              ; $734d: $00
	adc $c1                                          ; $734e: $ce $c1
	ld c, h                                          ; $7350: $4c
	jp nc, $30e1                                     ; $7351: $d2 $e1 $30

	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	ret nz                                           ; $7356: $c0

	ld c, a                                          ; $7357: $4f
	ei                                               ; $7358: $fb
	cp $09                                           ; $7359: $fe $09
	db $fc                                           ; $735b: $fc
	ret nz                                           ; $735c: $c0

	ld h, l                                          ; $735d: $65
	db $d3                                           ; $735e: $d3
	db $fc                                           ; $735f: $fc
	ret nz                                           ; $7360: $c0

	ld h, [hl]                                       ; $7361: $66
	ldh [$15], a                                     ; $7362: $e0 $15

jr_07e_7364:
	inc c                                            ; $7364: $0c
	ret nz                                           ; $7365: $c0

	ld bc, $04a0                                     ; $7366: $01 $a0 $04
	nop                                              ; $7369: $00
	sub $c0                                          ; $736a: $d6 $c0
	ld bc, $01a0                                     ; $736c: $01 $a0 $01
	nop                                              ; $736f: $00
	call c, $fefb                                    ; $7370: $dc $fb $fe
	dec d                                            ; $7373: $15
	db $fc                                           ; $7374: $fc
	ret nz                                           ; $7375: $c0

	ld h, l                                          ; $7376: $65
	rst SubAFromHL                                          ; $7377: $d7
	rst $38                                          ; $7378: $ff
	rrca                                             ; $7379: $0f
	db $fc                                           ; $737a: $fc
	ret nz                                           ; $737b: $c0

	ld h, [hl]                                       ; $737c: $66
	ldh [rAUD2HIGH], a                               ; $737d: $e0 $19
	db $fc                                           ; $737f: $fc
	ret nz                                           ; $7380: $c0

	ld h, [hl]                                       ; $7381: $66
	ldh [rAUD3ENA], a                                ; $7382: $e0 $1a
	db $fc                                           ; $7384: $fc
	ret nz                                           ; $7385: $c0

	ld h, [hl]                                       ; $7386: $66
	ldh [rAUD3LEN], a                                ; $7387: $e0 $1b
	inc c                                            ; $7389: $0c
	ret nz                                           ; $738a: $c0

	ld bc, $04a0                                     ; $738b: $01 $a0 $04
	nop                                              ; $738e: $00
	db $e4                                           ; $738f: $e4
	ret nz                                           ; $7390: $c0

	ld bc, $01a0                                     ; $7391: $01 $a0 $01
	nop                                              ; $7394: $00
	add sp, -$05                                     ; $7395: $e8 $fb
	cp $09                                           ; $7397: $fe $09
	db $fc                                           ; $7399: $fc
	ret nz                                           ; $739a: $c0

	ld h, l                                          ; $739b: $65
	reti                                             ; $739c: $d9


	db $fc                                           ; $739d: $fc
	ret nz                                           ; $739e: $c0

	ld h, [hl]                                       ; $739f: $66
	ldh [rAUD2ENV], a                                ; $73a0: $e0 $17
	jr jr_07e_7364                                   ; $73a2: $18 $c0

	ld bc, $04a0                                     ; $73a4: $01 $a0 $04
	nop                                              ; $73a7: $00
	rst AddAOntoHL                                          ; $73a8: $ef
	ret nz                                           ; $73a9: $c0

	ld bc, $01a0                                     ; $73aa: $01 $a0 $01
	nop                                              ; $73ad: $00
	ldh a, [c]                                       ; $73ae: $f2
	ret nz                                           ; $73af: $c0

	ld bc, $04a0                                     ; $73b0: $01 $a0 $04
	nop                                              ; $73b3: $00
	or $c0                                           ; $73b4: $f6 $c0
	ld bc, $01a0                                     ; $73b6: $01 $a0 $01
	nop                                              ; $73b9: $00
	ld a, [$fefb]                                    ; $73ba: $fa $fb $fe
	db $10                                           ; $73bd: $10
	add b                                            ; $73be: $80
	nop                                              ; $73bf: $00
	ret nc                                           ; $73c0: $d0

	db $fc                                           ; $73c1: $fc
	ret nz                                           ; $73c2: $c0

	ld h, h                                          ; $73c3: $64
	ldh [$61], a                                     ; $73c4: $e0 $61
	db $fc                                           ; $73c6: $fc
	ret nz                                           ; $73c7: $c0

	ld h, l                                          ; $73c8: $65
	jp c, $c0fc                                      ; $73c9: $da $fc $c0

	ld h, [hl]                                       ; $73cc: $66
	push de                                          ; $73cd: $d5
	scf                                              ; $73ce: $37
	add d                                            ; $73cf: $82
	ret nz                                           ; $73d0: $c0

	dec de                                           ; $73d1: $1b
	jp nc, $d002                                     ; $73d2: $d2 $02 $d0

	pop de                                           ; $73d5: $d1
	inc c                                            ; $73d6: $0c
	ret nz                                           ; $73d7: $c0

	ld bc, $04a0                                     ; $73d8: $01 $a0 $04
	ld bc, $c000                                     ; $73db: $01 $00 $c0
	ld bc, $01a0                                     ; $73de: $01 $a0 $01
	ld bc, $0205                                     ; $73e1: $01 $05 $02
	jp nc, $0cd3                                     ; $73e4: $d2 $d3 $0c

	ret nz                                           ; $73e7: $c0

	ld bc, $04a0                                     ; $73e8: $01 $a0 $04
	ld bc, $c00b                                     ; $73eb: $01 $0b $c0
	ld bc, $01a0                                     ; $73ee: $01 $a0 $01
	ld bc, $0111                                     ; $73f1: $01 $11 $01
	call nc, $c00c                                   ; $73f4: $d4 $0c $c0
	ld bc, $04a0                                     ; $73f7: $01 $a0 $04
	ld bc, $c019                                     ; $73fa: $01 $19 $c0
	ld bc, $01a0                                     ; $73fd: $01 $a0 $01
	ld bc, $4011                                     ; $7400: $01 $11 $40
	add b                                            ; $7403: $80
	nop                                              ; $7404: $00
	ret nc                                           ; $7405: $d0

	ei                                               ; $7406: $fb
	cp $10                                           ; $7407: $fe $10
	add b                                            ; $7409: $80
	nop                                              ; $740a: $00
	pop de                                           ; $740b: $d1
	db $fc                                           ; $740c: $fc
	ret nz                                           ; $740d: $c0

	ld h, h                                          ; $740e: $64
	ldh [$62], a                                     ; $740f: $e0 $62
	db $fc                                           ; $7411: $fc
	ret nz                                           ; $7412: $c0

	ld h, l                                          ; $7413: $65
	jp c, $c0fc                                      ; $7414: $da $fc $c0

	ld h, [hl]                                       ; $7417: $66
	call nc, $8237                                   ; $7418: $d4 $37 $82
	ret nz                                           ; $741b: $c0

	dec de                                           ; $741c: $1b
	jp nc, $d002                                     ; $741d: $d2 $02 $d0

	pop de                                           ; $7420: $d1
	inc c                                            ; $7421: $0c
	ret nz                                           ; $7422: $c0

	ld bc, $04a0                                     ; $7423: $01 $a0 $04
	ld bc, $c022                                     ; $7426: $01 $22 $c0
	ld bc, $01a0                                     ; $7429: $01 $a0 $01
	ld bc, $0205                                     ; $742c: $01 $05 $02
	jp nc, $0cd3                                     ; $742f: $d2 $d3 $0c

	ret nz                                           ; $7432: $c0

	ld bc, $04a0                                     ; $7433: $01 $a0 $04
	ld bc, $c027                                     ; $7436: $01 $27 $c0
	ld bc, $01a0                                     ; $7439: $01 $a0 $01
	ld bc, $0111                                     ; $743c: $01 $11 $01
	call nc, $c00c                                   ; $743f: $d4 $0c $c0
	ld bc, $04a0                                     ; $7442: $01 $a0 $04
	ld bc, $c02d                                     ; $7445: $01 $2d $c0
	ld bc, $01a0                                     ; $7448: $01 $a0 $01
	ld bc, $4011                                     ; $744b: $01 $11 $40
	add b                                            ; $744e: $80
	nop                                              ; $744f: $00
	pop de                                           ; $7450: $d1
	ei                                               ; $7451: $fb
	cp $09                                           ; $7452: $fe $09
	db $fc                                           ; $7454: $fc
	ret nz                                           ; $7455: $c0

	ld h, l                                          ; $7456: $65
	call c, $c0fc                                    ; $7457: $dc $fc $c0
	ld h, [hl]                                       ; $745a: $66
	ldh [rAUD2ENV], a                                ; $745b: $e0 $17
	inc c                                            ; $745d: $0c
	ret nz                                           ; $745e: $c0

	ld bc, $04a0                                     ; $745f: $01 $a0 $04
	ld bc, $c038                                     ; $7462: $01 $38 $c0
	ld bc, $01a0                                     ; $7465: $01 $a0 $01
	ld bc, $2e3c                                     ; $7468: $01 $3c $2e
	dec b                                            ; $746b: $05
	add hl, bc                                       ; $746c: $09
	inc h                                            ; $746d: $24
	add d                                            ; $746e: $82
	ret nz                                           ; $746f: $c0

	dec de                                           ; $7470: $1b
	jp nc, $d002                                     ; $7471: $d2 $02 $d0

	pop de                                           ; $7474: $d1
	ld b, $c0                                        ; $7475: $06 $c0
	ld bc, $04a0                                     ; $7477: $01 $a0 $04
	nop                                              ; $747a: $00
	ld bc, $d202                                     ; $747b: $01 $02 $d2
	db $d3                                           ; $747e: $d3
	ld b, $c0                                        ; $747f: $06 $c0
	ld bc, $04a0                                     ; $7481: $01 $a0 $04
	nop                                              ; $7484: $00
	ld [$d401], sp                                   ; $7485: $08 $01 $d4
	ld b, $c0                                        ; $7488: $06 $c0
	ld bc, $04a0                                     ; $748a: $01 $a0 $04
	nop                                              ; $748d: $00
	db $10                                           ; $748e: $10
	db $e4                                           ; $748f: $e4
	nop                                              ; $7490: $00
	ld [bc], a                                       ; $7491: $02
	jr z, jr_07e_749a                                ; $7492: $28 $06

	ret nz                                           ; $7494: $c0

	ld bc, $01a0                                     ; $7495: $01 $a0 $01
	nop                                              ; $7498: $00
	ld a, [de]                                       ; $7499: $1a

jr_07e_749a:
	adc e                                            ; $749a: $8b
	nop                                              ; $749b: $00
	jr nz, jr_07e_74a7                               ; $749c: $20 $09

	ld a, l                                          ; $749e: $7d
	add e                                            ; $749f: $83
	ret nz                                           ; $74a0: $c0

	ld h, l                                          ; $74a1: $65
	ld bc, $36d5                                     ; $74a2: $01 $d5 $36
	add c                                            ; $74a5: $81
	ret nz                                           ; $74a6: $c0

jr_07e_74a7:
	ld h, [hl]                                       ; $74a7: $66
	add hl, hl                                       ; $74a8: $29
	rst SubAFromHL                                          ; $74a9: $d7
	ret c                                            ; $74aa: $d8

	reti                                             ; $74ab: $d9


	jp c, $dcdb                                      ; $74ac: $da $db $dc

	db $dd                                           ; $74af: $dd
	sbc $df                                          ; $74b0: $de $df
	ldh [rAUD1SWEEP], a                              ; $74b2: $e0 $10
	ldh [rAUD1LEN], a                                ; $74b4: $e0 $11
	ldh [rAUD1ENV], a                                ; $74b6: $e0 $12
	ldh [rAUD1LOW], a                                ; $74b8: $e0 $13
	ldh [rAUD1HIGH], a                               ; $74ba: $e0 $14
	ldh [$15], a                                     ; $74bc: $e0 $15
	ldh [rAUD2LEN], a                                ; $74be: $e0 $16
	ldh [rAUD2ENV], a                                ; $74c0: $e0 $17
	ldh [rAUD2LOW], a                                ; $74c2: $e0 $18
	ldh [rAUD2HIGH], a                               ; $74c4: $e0 $19
	ldh [rAUD3ENA], a                                ; $74c6: $e0 $1a
	ldh [rAUD3LEN], a                                ; $74c8: $e0 $1b
	ldh [rAUD3LEVEL], a                              ; $74ca: $e0 $1c
	ldh [rAUD3LOW], a                                ; $74cc: $e0 $1d
	ldh [rAUD3HIGH], a                               ; $74ce: $e0 $1e
	ldh [$1f], a                                     ; $74d0: $e0 $1f
	inc bc                                           ; $74d2: $03
	ldh [rP1], a                                     ; $74d3: $e0 $00
	ld d, d                                          ; $74d5: $52
	nop                                              ; $74d6: $00
	inc bc                                           ; $74d7: $03
	ldh [rP1], a                                     ; $74d8: $e0 $00
	ld d, c                                          ; $74da: $51
	ld bc, $03d6                                     ; $74db: $01 $d6 $03
	ldh [rP1], a                                     ; $74de: $e0 $00
	ld b, a                                          ; $74e0: $47
	ld bc, $13d7                                     ; $74e1: $01 $d7 $13
	add c                                            ; $74e4: $81
	ret nz                                           ; $74e5: $c0

	ld h, [hl]                                       ; $74e6: $66
	ld b, $d1                                        ; $74e7: $06 $d1
	jp nc, $d4d3                                     ; $74e9: $d2 $d3 $d4

	push de                                          ; $74ec: $d5
	sub $03                                          ; $74ed: $d6 $03
	ldh [rP1], a                                     ; $74ef: $e0 $00
	ld [hl], $00                                     ; $74f1: $36 $00
	inc bc                                           ; $74f3: $03
	ldh [rP1], a                                     ; $74f4: $e0 $00
	dec [hl]                                         ; $74f6: $35
	nop                                              ; $74f7: $00
	jr nz, jr_07e_755a                               ; $74f8: $20 $60

	add b                                            ; $74fa: $80
	ld [bc], a                                       ; $74fb: $02
	ld e, c                                          ; $74fc: $59
	inc bc                                           ; $74fd: $03
	ldh [rP1], a                                     ; $74fe: $e0 $00
	ld h, h                                          ; $7500: $64
	rla                                              ; $7501: $17
	ld h, b                                          ; $7502: $60
	cp $0c                                           ; $7503: $fe $0c
	ei                                               ; $7505: $fb
	ret nz                                           ; $7506: $c0

	dec d                                            ; $7507: $15
	jp nc, Jump_07e_50e0                             ; $7508: $d2 $e0 $50

	ei                                               ; $750b: $fb
	ret nz                                           ; $750c: $c0

	ld d, $d2                                        ; $750d: $16 $d2
	ldh [$5a], a                                     ; $750f: $e0 $5a
	inc bc                                           ; $7511: $03
	ldh [rP1], a                                     ; $7512: $e0 $00
	ld d, a                                          ; $7514: $57
	inc bc                                           ; $7515: $03
	ldh [rP1], a                                     ; $7516: $e0 $00
	inc de                                           ; $7518: $13
	db $e4                                           ; $7519: $e4
	nop                                              ; $751a: $00
	add d                                            ; $751b: $82
	nop                                              ; $751c: $00
	ld [hl+], a                                      ; $751d: $22
	add hl, bc                                       ; $751e: $09
	ld b, $e0                                        ; $751f: $06 $e0
	nop                                              ; $7521: $00
	ld d, b                                          ; $7522: $50
	db $e4                                           ; $7523: $e4
	nop                                              ; $7524: $00
	ld a, b                                          ; $7525: $78
	inc bc                                           ; $7526: $03
	ldh [rP1], a                                     ; $7527: $e0 $00
	inc e                                            ; $7529: $1c
	add hl, de                                       ; $752a: $19
	or c                                             ; $752b: $b1
	ld d, h                                          ; $752c: $54
	ld b, $c0                                        ; $752d: $06 $c0
	ld bc, $01a0                                     ; $752f: $01 $a0 $01
	nop                                              ; $7532: $00
	inc h                                            ; $7533: $24
	xor d                                            ; $7534: $aa
	ld b, $c0                                        ; $7535: $06 $c0
	ld bc, $01a0                                     ; $7537: $01 $a0 $01
	nop                                              ; $753a: $00
	dec [hl]                                         ; $753b: $35
	rst $38                                          ; $753c: $ff
	ld b, $c0                                        ; $753d: $06 $c0
	ld bc, $01a0                                     ; $753f: $01 $a0 $01
	nop                                              ; $7542: $00
	ld b, b                                          ; $7543: $40
	ld e, $82                                        ; $7544: $1e $82
	ret nz                                           ; $7546: $c0

	add b                                            ; $7547: $80
	ld bc, $06d3                                     ; $7548: $01 $d3 $06
	ret nz                                           ; $754b: $c0

	ld bc, $01a0                                     ; $754c: $01 $a0 $01
	nop                                              ; $754f: $00
	ld c, [hl]                                       ; $7550: $4e
	ld bc, $06d2                                     ; $7551: $01 $d2 $06
	ret nz                                           ; $7554: $c0

	ld bc, $01a0                                     ; $7555: $01 $a0 $01
	nop                                              ; $7558: $00
	ld e, l                                          ; $7559: $5d

jr_07e_755a:
	ld bc, $06d1                                     ; $755a: $01 $d1 $06
	ret nz                                           ; $755d: $c0

	ld bc, $01a0                                     ; $755e: $01 $a0 $01
	nop                                              ; $7561: $00
	ld l, l                                          ; $7562: $6d
	ld b, $c0                                        ; $7563: $06 $c0
	ld bc, $01a0                                     ; $7565: $01 $a0 $01
	nop                                              ; $7568: $00
	ld a, d                                          ; $7569: $7a
	ld b, $c0                                        ; $756a: $06 $c0
	ld bc, $01a0                                     ; $756c: $01 $a0 $01
	nop                                              ; $756f: $00
	adc d                                            ; $7570: $8a
	ld a, [hl+]                                      ; $7571: $2a
	rst $38                                          ; $7572: $ff
	jr z, @+$34                                      ; $7573: $28 $32

	ld b, $c0                                        ; $7575: $06 $c0
	ld bc, $01a0                                     ; $7577: $01 $a0 $01
	nop                                              ; $757a: $00
	sbc h                                            ; $757b: $9c
	ld h, l                                          ; $757c: $65
	ld b, $c0                                        ; $757d: $06 $c0
	ld bc, $01a0                                     ; $757f: $01 $a0 $01
	nop                                              ; $7582: $00
	xor e                                            ; $7583: $ab
	sbc c                                            ; $7584: $99
	ld b, $c0                                        ; $7585: $06 $c0
	ld bc, $01a0                                     ; $7587: $01 $a0 $01
	nop                                              ; $758a: $00
	or b                                             ; $758b: $b0
	call z, $c006                                    ; $758c: $cc $06 $c0
	ld bc, $01a0                                     ; $758f: $01 $a0 $01
	nop                                              ; $7592: $00
	cp e                                             ; $7593: $bb
	rst $38                                          ; $7594: $ff
	ld b, $c0                                        ; $7595: $06 $c0
	ld bc, $01a0                                     ; $7597: $01 $a0 $01
	nop                                              ; $759a: $00
	jp $0e09                                         ; $759b: $c3 $09 $0e


	ret nc                                           ; $759e: $d0

	add d                                            ; $759f: $82
	ld bc, $d3cc                                     ; $75a0: $01 $cc $d3
	ret nz                                           ; $75a3: $c0

	ld d, [hl]                                       ; $75a4: $56
	jp nc, $d0d0                                     ; $75a5: $d2 $d0 $d0

	push hl                                          ; $75a8: $e5
	dec de                                           ; $75a9: $1b
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	add hl, bc                                       ; $75ac: $09
	ld d, d                                          ; $75ad: $52
	add c                                            ; $75ae: $81
	ret nz                                           ; $75af: $c0

	ld h, l                                          ; $75b0: $65
	ld [bc], a                                       ; $75b1: $02
	db $d3                                           ; $75b2: $d3
	call nc, $c01a                                   ; $75b3: $d4 $1a $c0
	ld bc, $04a0                                     ; $75b6: $01 $a0 $04
	nop                                              ; $75b9: $00
	call $01c0                                       ; $75ba: $cd $c0 $01
	and b                                            ; $75bd: $a0
	ld bc, $d400                                     ; $75be: $01 $00 $d4
	ret nz                                           ; $75c1: $c0

	ld bc, $04a0                                     ; $75c2: $01 $a0 $04
	nop                                              ; $75c5: $00
	sub $d0                                          ; $75c6: $d6 $d0
	add e                                            ; $75c8: $83
	ld bc, $d1de                                     ; $75c9: $01 $de $d1
	db $e4                                           ; $75cc: $e4
	ld bc, $001c                                     ; $75cd: $01 $1c $00
	cpl                                              ; $75d0: $2f
	ret nc                                           ; $75d1: $d0

	add e                                            ; $75d2: $83
	ld bc, $d0de                                     ; $75d3: $01 $de $d0
	ret nz                                           ; $75d6: $c0

	ld bc, $04a0                                     ; $75d7: $01 $a0 $04
	nop                                              ; $75da: $00
	ldh [c], a                                       ; $75db: $e2
	and b                                            ; $75dc: $a0
	add b                                            ; $75dd: $80
	and b                                            ; $75de: $a0
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	rrca                                             ; $75e1: $0f
	ret nz                                           ; $75e2: $c0

	ld bc, $01a0                                     ; $75e3: $01 $a0 $01
	nop                                              ; $75e6: $00
	ldh a, [$c0]                                     ; $75e7: $f0 $c0
	ld bc, $04a0                                     ; $75e9: $01 $a0 $04
	nop                                              ; $75ec: $00
	db $f4                                           ; $75ed: $f4
	db $e4                                           ; $75ee: $e4
	nop                                              ; $75ef: $00
	ld de, $0dff                                     ; $75f0: $11 $ff $0d
	ret nz                                           ; $75f3: $c0

	ld bc, $01a0                                     ; $75f4: $01 $a0 $01
	nop                                              ; $75f7: $00
	rst FarCall                                          ; $75f8: $f7
	ld b, b                                          ; $75f9: $40
	add b                                            ; $75fa: $80
	and b                                            ; $75fb: $a0
	nop                                              ; $75fc: $00
	db $e4                                           ; $75fd: $e4
	nop                                              ; $75fe: $00
	ld c, [hl]                                       ; $75ff: $4e
	jr z, jr_07e_760c                                ; $7600: $28 $0a

	pop hl                                           ; $7602: $e1
	ld [bc], a                                       ; $7603: $02
	dec b                                            ; $7604: $05
	dec b                                            ; $7605: $05
	ret nz                                           ; $7606: $c0

	ld bc, $04a0                                     ; $7607: $01 $a0 $04
	nop                                              ; $760a: $00
	ei                                               ; $760b: $fb

jr_07e_760c:
	ccf                                              ; $760c: $3f
	ld bc, $0909                                     ; $760d: $01 $09 $09
	ld de, $02e1                                     ; $7610: $11 $e1 $02
	inc bc                                           ; $7613: $03
	inc de                                           ; $7614: $13
	ret nz                                           ; $7615: $c0

	ld bc, $04a0                                     ; $7616: $01 $a0 $04
	ld bc, $e10f                                     ; $7619: $01 $0f $e1
	ld [bc], a                                       ; $761c: $02
	inc bc                                           ; $761d: $03
	sub b                                            ; $761e: $90
	db $e4                                           ; $761f: $e4
	ld bc, $0167                                     ; $7620: $01 $67 $01
	dec d                                            ; $7623: $15
	add hl, bc                                       ; $7624: $09
	ld de, $02e1                                     ; $7625: $11 $e1 $02
	inc bc                                           ; $7628: $03
	rra                                              ; $7629: $1f
	ret nz                                           ; $762a: $c0

	ld bc, $04a0                                     ; $762b: $01 $a0 $04
	ld bc, $e117                                     ; $762e: $01 $17 $e1
	ld [bc], a                                       ; $7631: $02
	inc bc                                           ; $7632: $03
	xor e                                            ; $7633: $ab
	db $e4                                           ; $7634: $e4
	ld bc, $0152                                     ; $7635: $01 $52 $01
	dec e                                            ; $7638: $1d
	add hl, bc                                       ; $7639: $09
	ld de, $02e1                                     ; $763a: $11 $e1 $02
	inc bc                                           ; $763d: $03
	rla                                              ; $763e: $17
	ret nz                                           ; $763f: $c0

	ld bc, $04a0                                     ; $7640: $01 $a0 $04
	ld bc, $e11f                                     ; $7643: $01 $1f $e1
	ld [bc], a                                       ; $7646: $02
	inc bc                                           ; $7647: $03
	sbc c                                            ; $7648: $99
	db $e4                                           ; $7649: $e4
	ld bc, $283d                                     ; $764a: $01 $3d $28
	ld a, [bc]                                       ; $764d: $0a
	pop hl                                           ; $764e: $e1
	ld [bc], a                                       ; $764f: $02
	dec b                                            ; $7650: $05
	rla                                              ; $7651: $17
	ret nz                                           ; $7652: $c0

	ld bc, $04a0                                     ; $7653: $01 $a0 $04
	ld bc, $902a                                     ; $7656: $01 $2a $90
	ld bc, $0939                                     ; $7659: $01 $39 $09
	inc l                                            ; $765c: $2c
	pop hl                                           ; $765d: $e1
	ld [bc], a                                       ; $765e: $02
	inc bc                                           ; $765f: $03
	inc de                                           ; $7660: $13
	add d                                            ; $7661: $82
	ret nz                                           ; $7662: $c0

	dec de                                           ; $7663: $1b
	jp nc, $d002                                     ; $7664: $d2 $02 $d0

	pop de                                           ; $7667: $d1
	ld b, $c0                                        ; $7668: $06 $c0
	ld bc, $04a0                                     ; $766a: $01 $a0 $04
	ld bc, $0241                                     ; $766d: $01 $41 $02
	jp nc, $06d3                                     ; $7670: $d2 $d3 $06

	ret nz                                           ; $7673: $c0

	ld bc, $04a0                                     ; $7674: $01 $a0 $04
	ld bc, $0146                             ; $7677: $01 $46 $01
	call nc, $c006                                   ; $767a: $d4 $06 $c0
	ld bc, $04a0                                     ; $767d: $01 $a0 $04
	ld bc, $e151                                     ; $7680: $01 $51 $e1
	ld [bc], a                                       ; $7683: $02
	inc bc                                           ; $7684: $03
	add a                                            ; $7685: $87
	db $e4                                           ; $7686: $e4
	ld bc, $0100                                     ; $7687: $01 $00 $01
	ld e, c                                          ; $768a: $59
	add hl, bc                                       ; $768b: $09
	inc l                                            ; $768c: $2c
	pop hl                                           ; $768d: $e1
	ld [bc], a                                       ; $768e: $02
	inc bc                                           ; $768f: $03
	rra                                              ; $7690: $1f
	add d                                            ; $7691: $82
	ret nz                                           ; $7692: $c0

	dec de                                           ; $7693: $1b
	jp nc, $d002                                     ; $7694: $d2 $02 $d0

	pop de                                           ; $7697: $d1
	ld b, $c0                                        ; $7698: $06 $c0
	ld bc, $04a0                                     ; $769a: $01 $a0 $04
	ld bc, $025f                                     ; $769d: $01 $5f $02
	jp nc, $06d3                                     ; $76a0: $d2 $d3 $06

	ret nz                                           ; $76a3: $c0

	ld bc, $04a0                                     ; $76a4: $01 $a0 $04
	ld bc, $0163                                     ; $76a7: $01 $63 $01
	call nc, $c006                                   ; $76aa: $d4 $06 $c0
	ld bc, $04a0                                     ; $76ad: $01 $a0 $04
	ld bc, $e170                                     ; $76b0: $01 $70 $e1
	ld [bc], a                                       ; $76b3: $02
	inc bc                                           ; $76b4: $03
	xor e                                            ; $76b5: $ab
	db $e4                                           ; $76b6: $e4
	nop                                              ; $76b7: $00
	ret nc                                           ; $76b8: $d0

	ld bc, $0974                                     ; $76b9: $01 $74 $09
	inc l                                            ; $76bc: $2c
	pop hl                                           ; $76bd: $e1
	ld [bc], a                                       ; $76be: $02
	inc bc                                           ; $76bf: $03
	dec de                                           ; $76c0: $1b
	add d                                            ; $76c1: $82
	ret nz                                           ; $76c2: $c0

	dec de                                           ; $76c3: $1b
	jp nc, $d002                                     ; $76c4: $d2 $02 $d0

	pop de                                           ; $76c7: $d1
	ld b, $c0                                        ; $76c8: $06 $c0
	ld bc, $04a0                                     ; $76ca: $01 $a0 $04
	ld bc, $0279                                     ; $76cd: $01 $79 $02
	jp nc, $06d3                                     ; $76d0: $d2 $d3 $06

	ret nz                                           ; $76d3: $c0

	ld bc, $04a0                                     ; $76d4: $01 $a0 $04
	ld bc, $017b                                     ; $76d7: $01 $7b $01
	call nc, $c006                                   ; $76da: $d4 $06 $c0
	ld bc, $04a0                                     ; $76dd: $01 $a0 $04
	ld bc, $e183                                     ; $76e0: $01 $83 $e1
	ld [bc], a                                       ; $76e3: $02
	inc bc                                           ; $76e4: $03
	and d                                            ; $76e5: $a2
	db $e4                                           ; $76e6: $e4
	nop                                              ; $76e7: $00
	and b                                            ; $76e8: $a0
	jr z, @+$0d                                      ; $76e9: $28 $0b

	pop bc                                           ; $76eb: $c1
	ld e, c                                          ; $76ec: $59
	db $e3                                           ; $76ed: $e3
	nop                                              ; $76ee: $00
	add h                                            ; $76ef: $84
	ret nz                                           ; $76f0: $c0

	ld bc, $04a0                                     ; $76f1: $01 $a0 $04
	ld bc, $9089                                     ; $76f4: $01 $89 $90
	ld bc, $098c                                     ; $76f7: $01 $8c $09
	inc l                                            ; $76fa: $2c
	pop hl                                           ; $76fb: $e1
	ld [bc], a                                       ; $76fc: $02
	inc bc                                           ; $76fd: $03
	inc de                                           ; $76fe: $13
	add d                                            ; $76ff: $82
	ret nz                                           ; $7700: $c0

	dec de                                           ; $7701: $1b
	jp nc, $d002                                     ; $7702: $d2 $02 $d0

	pop de                                           ; $7705: $d1
	ld b, $c0                                        ; $7706: $06 $c0
	ld bc, $04a0                                     ; $7708: $01 $a0 $04
	ld bc, $0290                                     ; $770b: $01 $90 $02
	jp nc, $06d3                                     ; $770e: $d2 $d3 $06

	ret nz                                           ; $7711: $c0

	ld bc, $04a0                                     ; $7712: $01 $a0 $04
	ld bc, $019a                                     ; $7715: $01 $9a $01
	call nc, $c006                                   ; $7718: $d4 $06 $c0
	ld bc, $04a0                                     ; $771b: $01 $a0 $04
	ld bc, $e1a4                                     ; $771e: $01 $a4 $e1
	ld [bc], a                                       ; $7721: $02
	inc bc                                           ; $7722: $03
	sub b                                            ; $7723: $90
	db $e4                                           ; $7724: $e4
	nop                                              ; $7725: $00
	ld h, d                                          ; $7726: $62
	ld bc, $09aa                                     ; $7727: $01 $aa $09
	inc l                                            ; $772a: $2c
	pop hl                                           ; $772b: $e1
	ld [bc], a                                       ; $772c: $02
	inc bc                                           ; $772d: $03
	rra                                              ; $772e: $1f
	add d                                            ; $772f: $82
	ret nz                                           ; $7730: $c0

	dec de                                           ; $7731: $1b
	jp nc, $d002                                     ; $7732: $d2 $02 $d0

	pop de                                           ; $7735: $d1
	ld b, $c0                                        ; $7736: $06 $c0
	ld bc, $04a0                                     ; $7738: $01 $a0 $04
	ld bc, $02af                                     ; $773b: $01 $af $02
	jp nc, $06d3                                     ; $773e: $d2 $d3 $06

	ret nz                                           ; $7741: $c0

	ld bc, $04a0                                     ; $7742: $01 $a0 $04
	ld bc, $01bc                                     ; $7745: $01 $bc $01
	call nc, $c006                                   ; $7748: $d4 $06 $c0
	ld bc, $04a0                                     ; $774b: $01 $a0 $04
	ld bc, $e1c1                                     ; $774e: $01 $c1 $e1
	ld [bc], a                                       ; $7751: $02
	inc bc                                           ; $7752: $03
	xor e                                            ; $7753: $ab
	db $e4                                           ; $7754: $e4
	nop                                              ; $7755: $00
	ld [hl-], a                                      ; $7756: $32
	ld bc, $09c6                                     ; $7757: $01 $c6 $09
	inc l                                            ; $775a: $2c
	pop hl                                           ; $775b: $e1
	ld [bc], a                                       ; $775c: $02
	inc bc                                           ; $775d: $03
	rla                                              ; $775e: $17
	add d                                            ; $775f: $82
	ret nz                                           ; $7760: $c0

	dec de                                           ; $7761: $1b
	jp nc, $d002                                     ; $7762: $d2 $02 $d0

	pop de                                           ; $7765: $d1
	ld b, $c0                                        ; $7766: $06 $c0
	ld bc, $04a0                                     ; $7768: $01 $a0 $04
	ld bc, $02cf                                     ; $776b: $01 $cf $02
	jp nc, $06d3                                     ; $776e: $d2 $d3 $06

	ret nz                                           ; $7771: $c0

	ld bc, $04a0                                     ; $7772: $01 $a0 $04
	ld bc, $01d8                                     ; $7775: $01 $d8 $01
	call nc, $c006                                   ; $7778: $d4 $06 $c0
	ld bc, $04a0                                     ; $777b: $01 $a0 $04
	ld bc, $e1e1                                     ; $777e: $01 $e1 $e1
	ld [bc], a                                       ; $7781: $02
	inc bc                                           ; $7782: $03
	sbc c                                            ; $7783: $99
	db $e4                                           ; $7784: $e4
	nop                                              ; $7785: $00
	ld [bc], a                                       ; $7786: $02
	add hl, bc                                       ; $7787: $09
	dec de                                           ; $7788: $1b
	pop hl                                           ; $7789: $e1
	ld [bc], a                                       ; $778a: $02
	dec b                                            ; $778b: $05
	add hl, hl                                       ; $778c: $29
	add c                                            ; $778d: $81
	ret nz                                           ; $778e: $c0

	ld h, l                                          ; $778f: $65
	ld [bc], a                                       ; $7790: $02
	db $d3                                           ; $7791: $d3
	call nc, $c005                                   ; $7792: $d4 $05 $c0
	ld d, [hl]                                       ; $7795: $56
	jp nc, $d1d1                                     ; $7796: $d2 $d1 $d1

	nop                                              ; $7799: $00
	dec b                                            ; $779a: $05
	ret nz                                           ; $779b: $c0

	ld d, [hl]                                       ; $779c: $56
	jp nc, $d0d1                                     ; $779d: $d2 $d1 $d0

	push hl                                          ; $77a0: $e5
	dec de                                           ; $77a1: $1b
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	jr z, @+$08                                      ; $77a4: $28 $06

	ret nz                                           ; $77a6: $c0

	ld bc, $04a0                                     ; $77a7: $01 $a0 $04
	ld bc, $68e5                                     ; $77aa: $01 $e5 $68
	ld bc, $09ee                                     ; $77ad: $01 $ee $09
	jr @-$1d                                         ; $77b0: $18 $e1

	ld [bc], a                                       ; $77b2: $02
	inc bc                                           ; $77b3: $03
	dec de                                           ; $77b4: $1b
	ret nc                                           ; $77b5: $d0

	add e                                            ; $77b6: $83
	ld bc, $d0de                                     ; $77b7: $01 $de $d0
	ret nz                                           ; $77ba: $c0

	ld bc, $04a0                                     ; $77bb: $01 $a0 $04
	ld bc, $d0f0                                     ; $77be: $01 $f0 $d0
	adc e                                            ; $77c1: $8b
	and b                                            ; $77c2: $a0
	ld bc, $82b0                                     ; $77c3: $01 $b0 $82
	db $e4                                           ; $77c6: $e4
	nop                                              ; $77c7: $00
	ld c, [hl]                                       ; $77c8: $4e
	ld bc, $09f3                                     ; $77c9: $01 $f3 $09
	jr @-$1d                                         ; $77cc: $18 $e1

	ld [bc], a                                       ; $77ce: $02
	inc bc                                           ; $77cf: $03
	dec de                                           ; $77d0: $1b
	ret nc                                           ; $77d1: $d0

	add e                                            ; $77d2: $83
	ld bc, $d1de                                     ; $77d3: $01 $de $d1
	ret nz                                           ; $77d6: $c0

	ld bc, $04a0                                     ; $77d7: $01 $a0 $04
	ld bc, $d0f0                                     ; $77da: $01 $f0 $d0
	adc e                                            ; $77dd: $8b
	and b                                            ; $77de: $a0
	ld bc, $83b0                                     ; $77df: $01 $b0 $83
	db $e4                                           ; $77e2: $e4
	ld bc, $0131                                     ; $77e3: $01 $31 $01
	push af                                          ; $77e6: $f5
	add hl, bc                                       ; $77e7: $09
	inc l                                            ; $77e8: $2c
	pop hl                                           ; $77e9: $e1
	ld [bc], a                                       ; $77ea: $02
	inc bc                                           ; $77eb: $03
	inc de                                           ; $77ec: $13
	ret nc                                           ; $77ed: $d0

	add e                                            ; $77ee: $83
	ld bc, $d2de                                     ; $77ef: $01 $de $d2
	ret nz                                           ; $77f2: $c0

	ld bc, $04a0                                     ; $77f3: $01 $a0 $04
	ld bc, $d0f7                                     ; $77f6: $01 $f7 $d0
	adc e                                            ; $77f9: $8b
	and b                                            ; $77fa: $a0
	ld bc, $84b0                                     ; $77fb: $01 $b0 $84
	pop bc                                           ; $77fe: $c1
	ld e, c                                          ; $77ff: $59
	db $e3                                           ; $7800: $e3
	nop                                              ; $7801: $00
	and e                                            ; $7802: $a3
	ret nz                                           ; $7803: $c0

	add hl, bc                                       ; $7804: $09
	db $e3                                           ; $7805: $e3
	nop                                              ; $7806: $00
	ld l, $60                                        ; $7807: $2e $60
	db $fc                                           ; $7809: $fc
	ret nz                                           ; $780a: $c0

	ld h, l                                          ; $780b: $65
	call c, $e403                                    ; $780c: $dc $03 $e4
	inc bc                                           ; $780f: $03
	ld c, d                                          ; $7810: $4a
	inc bc                                           ; $7811: $03
	db $e4                                           ; $7812: $e4
	ld [bc], a                                       ; $7813: $02
	nop                                              ; $7814: $00
	add hl, bc                                       ; $7815: $09
	inc e                                            ; $7816: $1c
	pop bc                                           ; $7817: $c1
	ld e, c                                          ; $7818: $59
	db $e3                                           ; $7819: $e3
	nop                                              ; $781a: $00
	and b                                            ; $781b: $a0
	ret nz                                           ; $781c: $c0

	add hl, bc                                       ; $781d: $09
	db $e3                                           ; $781e: $e3
	nop                                              ; $781f: $00
	inc e                                            ; $7820: $1c
	and b                                            ; $7821: $a0
	add b                                            ; $7822: $80
	and b                                            ; $7823: $a0
	dec c                                            ; $7824: $0d
	nop                                              ; $7825: $00
	inc bc                                           ; $7826: $03
	db $e4                                           ; $7827: $e4
	nop                                              ; $7828: $00
	dec bc                                           ; $7829: $0b
	rst $38                                          ; $782a: $ff
	rlca                                             ; $782b: $07
	ld b, b                                          ; $782c: $40
	add b                                            ; $782d: $80
	and b                                            ; $782e: $a0
	dec c                                            ; $782f: $0d
	db $e4                                           ; $7830: $e4
	nop                                              ; $7831: $00
	sbc e                                            ; $7832: $9b
	jr z, @+$08                                      ; $7833: $28 $06

	ret nz                                           ; $7835: $c0

	ld bc, $04a0                                     ; $7836: $01 $a0 $04
	ld bc, $90f9                                     ; $7839: $01 $f9 $90
	ld [bc], a                                       ; $783c: $02
	inc b                                            ; $783d: $04
	add hl, bc                                       ; $783e: $09
	inc l                                            ; $783f: $2c
	pop hl                                           ; $7840: $e1
	ld [bc], a                                       ; $7841: $02
	inc bc                                           ; $7842: $03
	inc de                                           ; $7843: $13
	add d                                            ; $7844: $82
	ret nz                                           ; $7845: $c0

	dec de                                           ; $7846: $1b
	jp nc, $d002                                     ; $7847: $d2 $02 $d0

	pop de                                           ; $784a: $d1
	ld b, $c0                                        ; $784b: $06 $c0
	ld bc, $04a0                                     ; $784d: $01 $a0 $04
	ld [bc], a                                       ; $7850: $02
	add hl, bc                                       ; $7851: $09
	ld [bc], a                                       ; $7852: $02
	jp nc, $06d3                                     ; $7853: $d2 $d3 $06

	ret nz                                           ; $7856: $c0

	ld bc, $04a0                                     ; $7857: $01 $a0 $04
	ld [bc], a                                       ; $785a: $02
	ld de, $d401                                     ; $785b: $11 $01 $d4
	ld b, $c0                                        ; $785e: $06 $c0
	ld bc, $04a0                                     ; $7860: $01 $a0 $04
	ld [bc], a                                       ; $7863: $02
	dec de                                           ; $7864: $1b
	pop hl                                           ; $7865: $e1
	ld [bc], a                                       ; $7866: $02
	inc bc                                           ; $7867: $03
	sub b                                            ; $7868: $90
	db $e4                                           ; $7869: $e4
	inc bc                                           ; $786a: $03
	ld l, d                                          ; $786b: $6a
	ld [bc], a                                       ; $786c: $02
	inc hl                                           ; $786d: $23
	add hl, bc                                       ; $786e: $09
	inc l                                            ; $786f: $2c
	pop hl                                           ; $7870: $e1
	ld [bc], a                                       ; $7871: $02
	inc bc                                           ; $7872: $03
	rra                                              ; $7873: $1f
	add d                                            ; $7874: $82
	ret nz                                           ; $7875: $c0

	dec de                                           ; $7876: $1b
	jp nc, $d002                                     ; $7877: $d2 $02 $d0

	pop de                                           ; $787a: $d1
	ld b, $c0                                        ; $787b: $06 $c0
	ld bc, $04a0                                     ; $787d: $01 $a0 $04
	ld [bc], a                                       ; $7880: $02
	ld a, [hl+]                                      ; $7881: $2a
	ld [bc], a                                       ; $7882: $02
	jp nc, $06d3                                     ; $7883: $d2 $d3 $06

	ret nz                                           ; $7886: $c0

	ld bc, $04a0                                     ; $7887: $01 $a0 $04
	ld [bc], a                                       ; $788a: $02
	dec [hl]                                         ; $788b: $35
	ld bc, $06d4                                     ; $788c: $01 $d4 $06
	ret nz                                           ; $788f: $c0

	ld bc, $04a0                                     ; $7890: $01 $a0 $04
	ld [bc], a                                       ; $7893: $02
	ld b, b                                          ; $7894: $40
	pop hl                                           ; $7895: $e1
	ld [bc], a                                       ; $7896: $02
	inc bc                                           ; $7897: $03
	xor e                                            ; $7898: $ab
	db $e4                                           ; $7899: $e4
	inc bc                                           ; $789a: $03
	ld a, [hl-]                                      ; $789b: $3a
	ld [bc], a                                       ; $789c: $02
	ld c, l                                          ; $789d: $4d
	add hl, bc                                       ; $789e: $09
	inc l                                            ; $789f: $2c
	pop hl                                           ; $78a0: $e1
	ld [bc], a                                       ; $78a1: $02
	inc bc                                           ; $78a2: $03
	rla                                              ; $78a3: $17
	add d                                            ; $78a4: $82
	ret nz                                           ; $78a5: $c0

	dec de                                           ; $78a6: $1b
	jp nc, $d002                                     ; $78a7: $d2 $02 $d0

	pop de                                           ; $78aa: $d1
	ld b, $c0                                        ; $78ab: $06 $c0
	ld bc, $04a0                                     ; $78ad: $01 $a0 $04
	ld [bc], a                                       ; $78b0: $02
	ld d, h                                          ; $78b1: $54
	ld [bc], a                                       ; $78b2: $02
	jp nc, $06d3                                     ; $78b3: $d2 $d3 $06

	ret nz                                           ; $78b6: $c0

	ld bc, $04a0                                     ; $78b7: $01 $a0 $04
	ld [bc], a                                       ; $78ba: $02
	ld e, a                                          ; $78bb: $5f
	ld bc, $06d4                                     ; $78bc: $01 $d4 $06
	ret nz                                           ; $78bf: $c0

	ld bc, $04a0                                     ; $78c0: $01 $a0 $04
	ld [bc], a                                       ; $78c3: $02
	ld h, h                                          ; $78c4: $64
	pop hl                                           ; $78c5: $e1
	ld [bc], a                                       ; $78c6: $02
	inc bc                                           ; $78c7: $03
	sbc c                                            ; $78c8: $99
	db $e4                                           ; $78c9: $e4
	inc bc                                           ; $78ca: $03
	ld a, [bc]                                       ; $78cb: $0a
	jr z, jr_07e_78d4                                ; $78cc: $28 $06

	ret nz                                           ; $78ce: $c0

	ld bc, $04a0                                     ; $78cf: $01 $a0 $04
	ld [bc], a                                       ; $78d2: $02
	ld l, e                                          ; $78d3: $6b

jr_07e_78d4:
	ccf                                              ; $78d4: $3f
	ld [bc], a                                       ; $78d5: $02
	ld [hl], e                                       ; $78d6: $73
	add hl, bc                                       ; $78d7: $09
	ld de, $02e1                                     ; $78d8: $11 $e1 $02
	inc bc                                           ; $78db: $03
	rla                                              ; $78dc: $17
	ret nz                                           ; $78dd: $c0

	ld bc, $04a0                                     ; $78de: $01 $a0 $04
	ld [bc], a                                       ; $78e1: $02
	ld [hl], l                                       ; $78e2: $75
	pop hl                                           ; $78e3: $e1
	ld [bc], a                                       ; $78e4: $02
	inc bc                                           ; $78e5: $03
	sbc c                                            ; $78e6: $99
	db $e4                                           ; $78e7: $e4
	ld [bc], a                                       ; $78e8: $02
	db $ec                                           ; $78e9: $ec
	ld [bc], a                                       ; $78ea: $02
	ld a, c                                          ; $78eb: $79
	add hl, bc                                       ; $78ec: $09
	ld de, $02e1                                     ; $78ed: $11 $e1 $02
	inc bc                                           ; $78f0: $03
	rra                                              ; $78f1: $1f
	ret nz                                           ; $78f2: $c0

	ld bc, $04a0                                     ; $78f3: $01 $a0 $04
	ld [bc], a                                       ; $78f6: $02
	add b                                            ; $78f7: $80
	pop hl                                           ; $78f8: $e1
	ld [bc], a                                       ; $78f9: $02
	inc bc                                           ; $78fa: $03
	xor e                                            ; $78fb: $ab
	db $e4                                           ; $78fc: $e4
	ld [bc], a                                       ; $78fd: $02
	rst SubAFromHL                                          ; $78fe: $d7
	ld [bc], a                                       ; $78ff: $02
	adc b                                            ; $7900: $88
	add hl, bc                                       ; $7901: $09
	ld de, $02e1                                     ; $7902: $11 $e1 $02
	inc bc                                           ; $7905: $03
	dec de                                           ; $7906: $1b
	ret nz                                           ; $7907: $c0

	ld bc, $04a0                                     ; $7908: $01 $a0 $04
	ld [bc], a                                       ; $790b: $02
	adc d                                            ; $790c: $8a
	pop hl                                           ; $790d: $e1
	ld [bc], a                                       ; $790e: $02
	inc bc                                           ; $790f: $03
	and d                                            ; $7910: $a2
	db $e4                                           ; $7911: $e4
	ld [bc], a                                       ; $7912: $02
	jp nz, $1c09                                     ; $7913: $c2 $09 $1c

	pop bc                                           ; $7916: $c1
	ld e, c                                          ; $7917: $59
	db $e3                                           ; $7918: $e3
	nop                                              ; $7919: $00
	and d                                            ; $791a: $a2
	ret nz                                           ; $791b: $c0

	add hl, bc                                       ; $791c: $09
	db $e3                                           ; $791d: $e3
	nop                                              ; $791e: $00
	add hl, hl                                       ; $791f: $29
	and b                                            ; $7920: $a0
	add b                                            ; $7921: $80
	and b                                            ; $7922: $a0
	ld c, $00                                        ; $7923: $0e $00
	inc bc                                           ; $7925: $03
	db $e4                                           ; $7926: $e4
	nop                                              ; $7927: $00
	dec bc                                           ; $7928: $0b
	rst $38                                          ; $7929: $ff
	rlca                                             ; $792a: $07
	ld b, b                                          ; $792b: $40
	add b                                            ; $792c: $80
	and b                                            ; $792d: $a0
	ld c, $e4                                        ; $792e: $0e $e4
	nop                                              ; $7930: $00
	sbc e                                            ; $7931: $9b
	jr z, jr_07e_793a                                ; $7932: $28 $06

	ret nz                                           ; $7934: $c0

	ld bc, $04a0                                     ; $7935: $01 $a0 $04
	ld [bc], a                                       ; $7938: $02
	sub e                                            ; $7939: $93

jr_07e_793a:
	sub b                                            ; $793a: $90
	ld [bc], a                                       ; $793b: $02
	and b                                            ; $793c: $a0
	add hl, bc                                       ; $793d: $09
	inc l                                            ; $793e: $2c
	pop hl                                           ; $793f: $e1
	ld [bc], a                                       ; $7940: $02
	inc bc                                           ; $7941: $03
	rla                                              ; $7942: $17
	add d                                            ; $7943: $82
	ret nz                                           ; $7944: $c0

	dec de                                           ; $7945: $1b
	jp nc, $d002                                     ; $7946: $d2 $02 $d0

	pop de                                           ; $7949: $d1
	ld b, $c0                                        ; $794a: $06 $c0
	ld bc, $04a0                                     ; $794c: $01 $a0 $04
	ld [bc], a                                       ; $794f: $02
	and [hl]                                         ; $7950: $a6
	ld [bc], a                                       ; $7951: $02
	jp nc, $06d3                                     ; $7952: $d2 $d3 $06

	ret nz                                           ; $7955: $c0

	ld bc, $04a0                                     ; $7956: $01 $a0 $04
	ld [bc], a                                       ; $7959: $02
	xor a                                            ; $795a: $af
	ld bc, $06d4                                     ; $795b: $01 $d4 $06
	ret nz                                           ; $795e: $c0

	ld bc, $04a0                                     ; $795f: $01 $a0 $04
	ld [bc], a                                       ; $7962: $02
	cp c                                             ; $7963: $b9
	pop hl                                           ; $7964: $e1
	ld [bc], a                                       ; $7965: $02
	inc bc                                           ; $7966: $03
	sbc c                                            ; $7967: $99
	db $e4                                           ; $7968: $e4
	ld [bc], a                                       ; $7969: $02
	ld l, e                                          ; $796a: $6b
	ld [bc], a                                       ; $796b: $02
	pop bc                                           ; $796c: $c1
	add hl, bc                                       ; $796d: $09
	inc l                                            ; $796e: $2c
	pop hl                                           ; $796f: $e1
	ld [bc], a                                       ; $7970: $02
	inc bc                                           ; $7971: $03
	rra                                              ; $7972: $1f
	add d                                            ; $7973: $82
	ret nz                                           ; $7974: $c0

	dec de                                           ; $7975: $1b
	jp nc, $d002                                     ; $7976: $d2 $02 $d0

	pop de                                           ; $7979: $d1
	ld b, $c0                                        ; $797a: $06 $c0
	ld bc, $04a0                                     ; $797c: $01 $a0 $04
	ld [bc], a                                       ; $797f: $02
	ret z                                            ; $7980: $c8

	ld [bc], a                                       ; $7981: $02
	jp nc, $06d3                                     ; $7982: $d2 $d3 $06

	ret nz                                           ; $7985: $c0

	ld bc, $04a0                                     ; $7986: $01 $a0 $04
	ld [bc], a                                       ; $7989: $02
	rst GetHLinHL                                          ; $798a: $cf
	ld bc, $06d4                                     ; $798b: $01 $d4 $06
	ret nz                                           ; $798e: $c0

	ld bc, $04a0                                     ; $798f: $01 $a0 $04
	ld [bc], a                                       ; $7992: $02
	rst SubAFromHL                                          ; $7993: $d7
	pop hl                                           ; $7994: $e1
	ld [bc], a                                       ; $7995: $02
	inc bc                                           ; $7996: $03
	xor e                                            ; $7997: $ab
	db $e4                                           ; $7998: $e4
	ld [bc], a                                       ; $7999: $02
	dec sp                                           ; $799a: $3b
	ld [bc], a                                       ; $799b: $02
	sbc $09                                          ; $799c: $de $09
	inc l                                            ; $799e: $2c
	pop hl                                           ; $799f: $e1
	ld [bc], a                                       ; $79a0: $02
	inc bc                                           ; $79a1: $03
	dec de                                           ; $79a2: $1b
	add d                                            ; $79a3: $82
	ret nz                                           ; $79a4: $c0

	dec de                                           ; $79a5: $1b
	jp nc, $d002                                     ; $79a6: $d2 $02 $d0

	pop de                                           ; $79a9: $d1
	ld b, $c0                                        ; $79aa: $06 $c0
	ld bc, $04a0                                     ; $79ac: $01 $a0 $04
	ld [bc], a                                       ; $79af: $02
	db $e4                                           ; $79b0: $e4
	ld [bc], a                                       ; $79b1: $02
	jp nc, $06d3                                     ; $79b2: $d2 $d3 $06

	ret nz                                           ; $79b5: $c0

	ld bc, $04a0                                     ; $79b6: $01 $a0 $04
	ld [bc], a                                       ; $79b9: $02
	jp hl                                            ; $79ba: $e9


	ld bc, $06d4                                     ; $79bb: $01 $d4 $06
	ret nz                                           ; $79be: $c0

	ld bc, $04a0                                     ; $79bf: $01 $a0 $04
	ld [bc], a                                       ; $79c2: $02
	rst AddAOntoHL                                          ; $79c3: $ef
	pop hl                                           ; $79c4: $e1
	ld [bc], a                                       ; $79c5: $02
	inc bc                                           ; $79c6: $03
	and d                                            ; $79c7: $a2
	db $e4                                           ; $79c8: $e4
	ld [bc], a                                       ; $79c9: $02
	dec bc                                           ; $79ca: $0b
	jr z, jr_07e_79d3                                ; $79cb: $28 $06

	ret nz                                           ; $79cd: $c0

	ld bc, $04a0                                     ; $79ce: $01 $a0 $04
	ld [bc], a                                       ; $79d1: $02
	rst FarCall                                          ; $79d2: $f7

jr_07e_79d3:
	ccf                                              ; $79d3: $3f
	ld [bc], a                                       ; $79d4: $02
	cp $09                                           ; $79d5: $fe $09
	ld de, $02e1                                     ; $79d7: $11 $e1 $02
	inc bc                                           ; $79da: $03
	inc de                                           ; $79db: $13
	ret nz                                           ; $79dc: $c0

	ld bc, $04a0                                     ; $79dd: $01 $a0 $04
	inc bc                                           ; $79e0: $03
	rlca                                             ; $79e1: $07
	pop hl                                           ; $79e2: $e1
	ld [bc], a                                       ; $79e3: $02
	inc bc                                           ; $79e4: $03
	sub b                                            ; $79e5: $90
	db $e4                                           ; $79e6: $e4
	ld bc, $03ed                                     ; $79e7: $01 $ed $03
	dec d                                            ; $79ea: $15
	add hl, bc                                       ; $79eb: $09
	ld de, $02e1                                     ; $79ec: $11 $e1 $02
	inc bc                                           ; $79ef: $03
	rra                                              ; $79f0: $1f
	ret nz                                           ; $79f1: $c0

	ld bc, $04a0                                     ; $79f2: $01 $a0 $04
	inc bc                                           ; $79f5: $03
	dec de                                           ; $79f6: $1b
	pop hl                                           ; $79f7: $e1
	ld [bc], a                                       ; $79f8: $02
	inc bc                                           ; $79f9: $03
	xor e                                            ; $79fa: $ab
	db $e4                                           ; $79fb: $e4
	ld bc, $03d8                                     ; $79fc: $01 $d8 $03
	inc hl                                           ; $79ff: $23
	add hl, bc                                       ; $7a00: $09
	ld de, $02e1                                     ; $7a01: $11 $e1 $02
	inc bc                                           ; $7a04: $03
	dec de                                           ; $7a05: $1b
	ret nz                                           ; $7a06: $c0

	ld bc, $04a0                                     ; $7a07: $01 $a0 $04
	inc bc                                           ; $7a0a: $03
	inc l                                            ; $7a0b: $2c
	pop hl                                           ; $7a0c: $e1
	ld [bc], a                                       ; $7a0d: $02
	inc bc                                           ; $7a0e: $03
	and d                                            ; $7a0f: $a2
	db $e4                                           ; $7a10: $e4
	ld bc, $09c3                                     ; $7a11: $01 $c3 $09
	ld [de], a                                       ; $7a14: $12
	and b                                            ; $7a15: $a0
	add b                                            ; $7a16: $80
	and b                                            ; $7a17: $a0
	rrca                                             ; $7a18: $0f
	nop                                              ; $7a19: $00
	inc bc                                           ; $7a1a: $03
	db $e4                                           ; $7a1b: $e4
	nop                                              ; $7a1c: $00
	dec bc                                           ; $7a1d: $0b
	rst $38                                          ; $7a1e: $ff
	rlca                                             ; $7a1f: $07
	ld b, b                                          ; $7a20: $40
	add b                                            ; $7a21: $80
	and b                                            ; $7a22: $a0
	rrca                                             ; $7a23: $0f
	db $e4                                           ; $7a24: $e4
	nop                                              ; $7a25: $00
	sbc e                                            ; $7a26: $9b
	jr z, jr_07e_7a2f                                ; $7a27: $28 $06

	ret nz                                           ; $7a29: $c0

	ld bc, $04a0                                     ; $7a2a: $01 $a0 $04
	inc bc                                           ; $7a2d: $03
	ld [hl-], a                                      ; $7a2e: $32

jr_07e_7a2f:
	sub b                                            ; $7a2f: $90
	inc bc                                           ; $7a30: $03
	add hl, sp                                       ; $7a31: $39
	add hl, bc                                       ; $7a32: $09
	inc l                                            ; $7a33: $2c
	pop hl                                           ; $7a34: $e1
	ld [bc], a                                       ; $7a35: $02
	inc bc                                           ; $7a36: $03
	inc de                                           ; $7a37: $13
	add d                                            ; $7a38: $82
	ret nz                                           ; $7a39: $c0

	dec de                                           ; $7a3a: $1b
	jp nc, $d002                                     ; $7a3b: $d2 $02 $d0

	pop de                                           ; $7a3e: $d1
	ld b, $c0                                        ; $7a3f: $06 $c0
	ld bc, $04a0                                     ; $7a41: $01 $a0 $04
	inc bc                                           ; $7a44: $03
	ld b, b                                          ; $7a45: $40
	ld [bc], a                                       ; $7a46: $02
	jp nc, $06d3                                     ; $7a47: $d2 $d3 $06

	ret nz                                           ; $7a4a: $c0

	ld bc, $04a0                                     ; $7a4b: $01 $a0 $04
	inc bc                                           ; $7a4e: $03
	ld c, [hl]                                       ; $7a4f: $4e
	ld bc, $06d4                                     ; $7a50: $01 $d4 $06
	ret nz                                           ; $7a53: $c0

	ld bc, $04a0                                     ; $7a54: $01 $a0 $04
	inc bc                                           ; $7a57: $03
	ld e, e                                          ; $7a58: $5b
	pop hl                                           ; $7a59: $e1
	ld [bc], a                                       ; $7a5a: $02
	inc bc                                           ; $7a5b: $03
	add a                                            ; $7a5c: $87
	db $e4                                           ; $7a5d: $e4
	ld bc, $0376                                     ; $7a5e: $01 $76 $03
	ld h, h                                          ; $7a61: $64
	add hl, bc                                       ; $7a62: $09
	inc l                                            ; $7a63: $2c
	pop hl                                           ; $7a64: $e1
	ld [bc], a                                       ; $7a65: $02
	inc bc                                           ; $7a66: $03
	rra                                              ; $7a67: $1f
	add d                                            ; $7a68: $82
	ret nz                                           ; $7a69: $c0

	dec de                                           ; $7a6a: $1b
	jp nc, $d002                                     ; $7a6b: $d2 $02 $d0

	pop de                                           ; $7a6e: $d1
	ld b, $c0                                        ; $7a6f: $06 $c0
	ld bc, $04a0                                     ; $7a71: $01 $a0 $04
	inc bc                                           ; $7a74: $03
	ld l, d                                          ; $7a75: $6a
	ld [bc], a                                       ; $7a76: $02
	jp nc, $06d3                                     ; $7a77: $d2 $d3 $06

	ret nz                                           ; $7a7a: $c0

	ld bc, $04a0                                     ; $7a7b: $01 $a0 $04
	inc bc                                           ; $7a7e: $03
	ld [hl], a                                       ; $7a7f: $77
	ld bc, $06d4                                     ; $7a80: $01 $d4 $06
	ret nz                                           ; $7a83: $c0

	ld bc, $04a0                                     ; $7a84: $01 $a0 $04
	inc bc                                           ; $7a87: $03
	add d                                            ; $7a88: $82
	pop hl                                           ; $7a89: $e1
	ld [bc], a                                       ; $7a8a: $02
	inc bc                                           ; $7a8b: $03
	xor e                                            ; $7a8c: $ab
	db $e4                                           ; $7a8d: $e4
	ld bc, $0346                                     ; $7a8e: $01 $46 $03
	add [hl]                                         ; $7a91: $86
	add hl, bc                                       ; $7a92: $09
	inc l                                            ; $7a93: $2c
	pop hl                                           ; $7a94: $e1
	ld [bc], a                                       ; $7a95: $02
	inc bc                                           ; $7a96: $03
	rla                                              ; $7a97: $17
	add d                                            ; $7a98: $82
	ret nz                                           ; $7a99: $c0

	dec de                                           ; $7a9a: $1b
	jp nc, $d002                                     ; $7a9b: $d2 $02 $d0

	pop de                                           ; $7a9e: $d1
	ld b, $c0                                        ; $7a9f: $06 $c0
	ld bc, $04a0                                     ; $7aa1: $01 $a0 $04
	inc bc                                           ; $7aa4: $03
	adc c                                            ; $7aa5: $89
	ld [bc], a                                       ; $7aa6: $02
	jp nc, $06d3                                     ; $7aa7: $d2 $d3 $06

	ret nz                                           ; $7aaa: $c0

	ld bc, $04a0                                     ; $7aab: $01 $a0 $04
	inc bc                                           ; $7aae: $03
	sub c                                            ; $7aaf: $91
	ld bc, $06d4                                     ; $7ab0: $01 $d4 $06
	ret nz                                           ; $7ab3: $c0

	ld bc, $04a0                                     ; $7ab4: $01 $a0 $04
	inc bc                                           ; $7ab7: $03
	sub h                                            ; $7ab8: $94
	pop hl                                           ; $7ab9: $e1
	ld [bc], a                                       ; $7aba: $02
	inc bc                                           ; $7abb: $03
	sbc c                                            ; $7abc: $99
	db $e4                                           ; $7abd: $e4
	ld bc, $2816                                     ; $7abe: $01 $16 $28
	ld b, $c0                                        ; $7ac1: $06 $c0
	ld bc, $04a0                                     ; $7ac3: $01 $a0 $04
	inc bc                                           ; $7ac6: $03
	sub [hl]                                         ; $7ac7: $96
	sub b                                            ; $7ac8: $90
	inc bc                                           ; $7ac9: $03
	sbc h                                            ; $7aca: $9c
	add hl, bc                                       ; $7acb: $09
	inc l                                            ; $7acc: $2c
	pop hl                                           ; $7acd: $e1
	ld [bc], a                                       ; $7ace: $02
	inc bc                                           ; $7acf: $03
	inc de                                           ; $7ad0: $13
	add d                                            ; $7ad1: $82
	ret nz                                           ; $7ad2: $c0

	dec de                                           ; $7ad3: $1b
	jp nc, $d002                                     ; $7ad4: $d2 $02 $d0

	pop de                                           ; $7ad7: $d1
	ld b, $c0                                        ; $7ad8: $06 $c0
	ld bc, $04a0                                     ; $7ada: $01 $a0 $04
	inc bc                                           ; $7add: $03
	and e                                            ; $7ade: $a3
	ld [bc], a                                       ; $7adf: $02
	jp nc, $06d3                                     ; $7ae0: $d2 $d3 $06

	ret nz                                           ; $7ae3: $c0

	ld bc, $04a0                                     ; $7ae4: $01 $a0 $04
	inc bc                                           ; $7ae7: $03
	xor [hl]                                         ; $7ae8: $ae
	ld bc, $06d4                                     ; $7ae9: $01 $d4 $06
	ret nz                                           ; $7aec: $c0

	ld bc, $04a0                                     ; $7aed: $01 $a0 $04
	inc bc                                           ; $7af0: $03
	or a                                             ; $7af1: $b7
	pop hl                                           ; $7af2: $e1
	ld [bc], a                                       ; $7af3: $02
	inc bc                                           ; $7af4: $03
	sub b                                            ; $7af5: $90
	db $e4                                           ; $7af6: $e4
	nop                                              ; $7af7: $00
	db $dd                                           ; $7af8: $dd
	inc bc                                           ; $7af9: $03
	jp nz, $2c09                                     ; $7afa: $c2 $09 $2c

	pop hl                                           ; $7afd: $e1
	ld [bc], a                                       ; $7afe: $02
	inc bc                                           ; $7aff: $03
	rra                                              ; $7b00: $1f
	add d                                            ; $7b01: $82
	ret nz                                           ; $7b02: $c0

	dec de                                           ; $7b03: $1b
	jp nc, $d002                                     ; $7b04: $d2 $02 $d0

	pop de                                           ; $7b07: $d1
	ld b, $c0                                        ; $7b08: $06 $c0
	ld bc, $04a0                                     ; $7b0a: $01 $a0 $04
	inc bc                                           ; $7b0d: $03
	rst JumpTable                                          ; $7b0e: $c7
	ld [bc], a                                       ; $7b0f: $02
	jp nc, $06d3                                     ; $7b10: $d2 $d3 $06

	ret nz                                           ; $7b13: $c0

	ld bc, $04a0                                     ; $7b14: $01 $a0 $04
	inc bc                                           ; $7b17: $03
	call nc, $d401                                   ; $7b18: $d4 $01 $d4
	ld b, $c0                                        ; $7b1b: $06 $c0
	ld bc, $04a0                                     ; $7b1d: $01 $a0 $04
	inc bc                                           ; $7b20: $03
	ret c                                            ; $7b21: $d8

	pop hl                                           ; $7b22: $e1
	ld [bc], a                                       ; $7b23: $02
	inc bc                                           ; $7b24: $03
	xor e                                            ; $7b25: $ab
	db $e4                                           ; $7b26: $e4
	nop                                              ; $7b27: $00
	xor l                                            ; $7b28: $ad
	inc bc                                           ; $7b29: $03
	db $db                                           ; $7b2a: $db
	add hl, bc                                       ; $7b2b: $09
	inc l                                            ; $7b2c: $2c
	pop hl                                           ; $7b2d: $e1
	ld [bc], a                                       ; $7b2e: $02
	inc bc                                           ; $7b2f: $03
	rla                                              ; $7b30: $17
	add d                                            ; $7b31: $82
	ret nz                                           ; $7b32: $c0

	dec de                                           ; $7b33: $1b
	jp nc, $d002                                     ; $7b34: $d2 $02 $d0

	pop de                                           ; $7b37: $d1
	ld b, $c0                                        ; $7b38: $06 $c0
	ld bc, $04a0                                     ; $7b3a: $01 $a0 $04
	inc bc                                           ; $7b3d: $03
	rst SubAFromDE                                          ; $7b3e: $df
	ld [bc], a                                       ; $7b3f: $02
	jp nc, $06d3                                     ; $7b40: $d2 $d3 $06

	ret nz                                           ; $7b43: $c0

	ld bc, $04a0                                     ; $7b44: $01 $a0 $04
	inc bc                                           ; $7b47: $03
	add sp, $01                                      ; $7b48: $e8 $01
	call nc, $c006                                   ; $7b4a: $d4 $06 $c0
	ld bc, $04a0                                     ; $7b4d: $01 $a0 $04
	inc bc                                           ; $7b50: $03
	db $ed                                           ; $7b51: $ed
	pop hl                                           ; $7b52: $e1
	ld [bc], a                                       ; $7b53: $02
	inc bc                                           ; $7b54: $03
	sbc c                                            ; $7b55: $99
	db $e4                                           ; $7b56: $e4
	nop                                              ; $7b57: $00
	ld a, l                                          ; $7b58: $7d
	add hl, bc                                       ; $7b59: $09
	ld a, c                                          ; $7b5a: $79
	ret nz                                           ; $7b5b: $c0

	ld bc, $01a0                                     ; $7b5c: $01 $a0 $01
	inc bc                                           ; $7b5f: $03
	push af                                          ; $7b60: $f5
	ret nz                                           ; $7b61: $c0

	ld bc, $04a0                                     ; $7b62: $01 $a0 $04
	inc b                                            ; $7b65: $04
	ld bc, $01c0                                     ; $7b66: $01 $c0 $01
	and b                                            ; $7b69: $a0
	ld bc, $1004                                     ; $7b6a: $01 $04 $10
	ret nz                                           ; $7b6d: $c0

	set 0, c                                         ; $7b6e: $cb $c1
	ld e, e                                          ; $7b70: $5b
	ret nz                                           ; $7b71: $c0

	rrca                                             ; $7b72: $0f
	db $e3                                           ; $7b73: $e3
	nop                                              ; $7b74: $00
	ld [$b2c1], a                                    ; $7b75: $ea $c1 $b2
	db $e3                                           ; $7b78: $e3
	nop                                              ; $7b79: $00
	dec sp                                           ; $7b7a: $3b
	ret nz                                           ; $7b7b: $c0

	ld bc, $04a0                                     ; $7b7c: $01 $a0 $04
	inc b                                            ; $7b7f: $04
	jr nz, @-$3e                                     ; $7b80: $20 $c0

	ld bc, $01a0                                     ; $7b82: $01 $a0 $01
	inc b                                            ; $7b85: $04
	dec l                                            ; $7b86: $2d
	pop bc                                           ; $7b87: $c1
	ld d, a                                          ; $7b88: $57
	ret nz                                           ; $7b89: $c0

	ld de, $00e3                                     ; $7b8a: $11 $e3 $00
	and e                                            ; $7b8d: $a3
	pop hl                                           ; $7b8e: $e1
	ld [bc], a                                       ; $7b8f: $02
	ld bc, $c070                                     ; $7b90: $01 $70 $c0
	ld bc, $04a0                                     ; $7b93: $01 $a0 $04
	inc b                                            ; $7b96: $04
	scf                                              ; $7b97: $37
	ret nz                                           ; $7b98: $c0

	ld bc, $01a0                                     ; $7b99: $01 $a0 $01
	inc b                                            ; $7b9c: $04
	dec a                                            ; $7b9d: $3d
	pop hl                                           ; $7b9e: $e1
	ld [bc], a                                       ; $7b9f: $02
	inc bc                                           ; $7ba0: $03
	dec de                                           ; $7ba1: $1b
	ret nz                                           ; $7ba2: $c0

	ld bc, $04a0                                     ; $7ba3: $01 $a0 $04
	inc b                                            ; $7ba6: $04
	ld b, a                                          ; $7ba7: $47
	ret nz                                           ; $7ba8: $c0

	ld bc, $01a0                                     ; $7ba9: $01 $a0 $01
	inc b                                            ; $7bac: $04
	ld d, e                                          ; $7bad: $53
	ret nz                                           ; $7bae: $c0

	ld bc, $04a0                                     ; $7baf: $01 $a0 $04
	inc b                                            ; $7bb2: $04
	ld e, c                                          ; $7bb3: $59
	ret nz                                           ; $7bb4: $c0

	ld bc, $01a0                                     ; $7bb5: $01 $a0 $01
	inc b                                            ; $7bb8: $04
	ld h, l                                          ; $7bb9: $65
	ret nc                                           ; $7bba: $d0

	add d                                            ; $7bbb: $82
	ld bc, $d1cc                                     ; $7bbc: $01 $cc $d1
	pop hl                                           ; $7bbf: $e1
	ld [bc], a                                       ; $7bc0: $02
	inc b                                            ; $7bc1: $04
	rst JumpTable                                          ; $7bc2: $c7
	ret nz                                           ; $7bc3: $c0

	ld d, c                                          ; $7bc4: $51
	db $d3                                           ; $7bc5: $d3
	ret nz                                           ; $7bc6: $c0

	ld d, b                                          ; $7bc7: $50
	jp nc, $55c0                                     ; $7bc8: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $7bcb: $e0 $14
	pop bc                                           ; $7bcd: $c1
	ld l, e                                          ; $7bce: $6b
	jp nc, $e4d2                                     ; $7bcf: $d2 $d2 $e4

	nop                                              ; $7bd2: $00
	ld [bc], a                                       ; $7bd3: $02
	add hl, bc                                       ; $7bd4: $09
	dec l                                            ; $7bd5: $2d
	pop bc                                           ; $7bd6: $c1
	ld e, c                                          ; $7bd7: $59
	db $e3                                           ; $7bd8: $e3
	nop                                              ; $7bd9: $00
	sbc a                                            ; $7bda: $9f
	ret nz                                           ; $7bdb: $c0

	add hl, bc                                       ; $7bdc: $09
	db $e3                                           ; $7bdd: $e3
	nop                                              ; $7bde: $00
	jr c, @-$7c                                      ; $7bdf: $38 $82

	adc e                                            ; $7be1: $8b
	and b                                            ; $7be2: $a0
	ld bc, $b002                                     ; $7be3: $01 $02 $b0
	add d                                            ; $7be6: $82
	dec b                                            ; $7be7: $05
	ret nz                                           ; $7be8: $c0

	ld d, [hl]                                       ; $7be9: $56
	jp nc, $d0d2                                     ; $7bea: $d2 $d2 $d0

	ld [bc], a                                       ; $7bed: $02
	or b                                             ; $7bee: $b0
	add e                                            ; $7bef: $83
	dec b                                            ; $7bf0: $05
	ret nz                                           ; $7bf1: $c0

	ld d, [hl]                                       ; $7bf2: $56
	jp nc, $d1d2                                     ; $7bf3: $d2 $d2 $d1

	ld [bc], a                                       ; $7bf6: $02
	or b                                             ; $7bf7: $b0
	add h                                            ; $7bf8: $84
	dec b                                            ; $7bf9: $05
	ret nz                                           ; $7bfa: $c0

	ld d, [hl]                                       ; $7bfb: $56
	jp nc, $d2d2                                     ; $7bfc: $d2 $d2 $d2

	push hl                                          ; $7bff: $e5
	dec de                                           ; $7c00: $1b
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	add hl, bc                                       ; $7c03: $09
	inc d                                            ; $7c04: $14
	ret nc                                           ; $7c05: $d0

	add e                                            ; $7c06: $83
	ld bc, $d0de                                     ; $7c07: $01 $de $d0
	ret nz                                           ; $7c0a: $c0

	ld bc, $04a0                                     ; $7c0b: $01 $a0 $04
	inc b                                            ; $7c0e: $04
	ld l, l                                          ; $7c0f: $6d
	ret nz                                           ; $7c10: $c0

	ld bc, $01a0                                     ; $7c11: $01 $a0 $01
	inc b                                            ; $7c14: $04
	ld [hl], c                                       ; $7c15: $71
	db $e4                                           ; $7c16: $e4
	nop                                              ; $7c17: $00
	ld [bc], a                                       ; $7c18: $02
	add hl, bc                                       ; $7c19: $09
	inc [hl]                                         ; $7c1a: $34
	pop bc                                           ; $7c1b: $c1
	ld e, c                                          ; $7c1c: $59
	db $e3                                           ; $7c1d: $e3
	nop                                              ; $7c1e: $00
	xor l                                            ; $7c1f: $ad
	ld h, b                                          ; $7c20: $60
	add b                                            ; $7c21: $80
	ld [bc], a                                       ; $7c22: $02
	ld b, c                                          ; $7c23: $41
	rla                                              ; $7c24: $17
	and c                                            ; $7c25: $a1
	add c                                            ; $7c26: $81
	and b                                            ; $7c27: $a0
	stop                                             ; $7c28: $10 $00
	inc bc                                           ; $7c2a: $03
	db $e4                                           ; $7c2b: $e4
	ld bc, $0104                                ; $7c2c: $01 $04 $01
	inc bc                                           ; $7c2f: $03
	db $e4                                           ; $7c30: $e4
	nop                                              ; $7c31: $00
	ld e, $ff                                        ; $7c32: $1e $ff
	rlca                                             ; $7c34: $07
	ld b, b                                          ; $7c35: $40
	add c                                            ; $7c36: $81
	and b                                            ; $7c37: $a0
	db $10                                           ; $7c38: $10
	db $e4                                           ; $7c39: $e4
	nop                                              ; $7c3a: $00
	xor [hl]                                         ; $7c3b: $ae
	ld [de], a                                       ; $7c3c: $12
	and b                                            ; $7c3d: $a0
	add b                                            ; $7c3e: $80
	and b                                            ; $7c3f: $a0
	ld [de], a                                       ; $7c40: $12
	nop                                              ; $7c41: $00
	inc bc                                           ; $7c42: $03
	db $e4                                           ; $7c43: $e4
	nop                                              ; $7c44: $00
	dec bc                                           ; $7c45: $0b
	rst $38                                          ; $7c46: $ff
	rlca                                             ; $7c47: $07
	ld b, b                                          ; $7c48: $40
	add b                                            ; $7c49: $80
	and b                                            ; $7c4a: $a0
	ld [de], a                                       ; $7c4b: $12
	db $e4                                           ; $7c4c: $e4
	nop                                              ; $7c4d: $00
	sbc e                                            ; $7c4e: $9b
	jr z, jr_07e_7c57                                ; $7c4f: $28 $06

	ret nz                                           ; $7c51: $c0

	ld bc, $04a0                                     ; $7c52: $01 $a0 $04
	inc b                                            ; $7c55: $04
	ld [hl], a                                       ; $7c56: $77

jr_07e_7c57:
	sub b                                            ; $7c57: $90
	inc b                                            ; $7c58: $04
	ld a, a                                          ; $7c59: $7f
	add hl, bc                                       ; $7c5a: $09
	inc l                                            ; $7c5b: $2c
	pop hl                                           ; $7c5c: $e1
	ld [bc], a                                       ; $7c5d: $02
	inc bc                                           ; $7c5e: $03
	inc de                                           ; $7c5f: $13
	add d                                            ; $7c60: $82
	ret nz                                           ; $7c61: $c0

	dec de                                           ; $7c62: $1b
	jp nc, $d002                                     ; $7c63: $d2 $02 $d0

	pop de                                           ; $7c66: $d1
	ld b, $c0                                        ; $7c67: $06 $c0
	ld bc, $04a0                                     ; $7c69: $01 $a0 $04
	inc b                                            ; $7c6c: $04
	add [hl]                                         ; $7c6d: $86
	ld [bc], a                                       ; $7c6e: $02
	jp nc, $06d3                                     ; $7c6f: $d2 $d3 $06

	ret nz                                           ; $7c72: $c0

	ld bc, $04a0                                     ; $7c73: $01 $a0 $04
	inc b                                            ; $7c76: $04
	sub h                                            ; $7c77: $94
	ld bc, $06d4                                     ; $7c78: $01 $d4 $06
	ret nz                                           ; $7c7b: $c0

	ld bc, $04a0                                     ; $7c7c: $01 $a0 $04
	inc b                                            ; $7c7f: $04
	sbc a                                            ; $7c80: $9f
	pop hl                                           ; $7c81: $e1
	ld [bc], a                                       ; $7c82: $02
	inc bc                                           ; $7c83: $03
	add a                                            ; $7c84: $87
	db $e4                                           ; $7c85: $e4
	nop                                              ; $7c86: $00
	ldh a, [c]                                       ; $7c87: $f2
	inc b                                            ; $7c88: $04
	xor c                                            ; $7c89: $a9
	add hl, bc                                       ; $7c8a: $09
	inc l                                            ; $7c8b: $2c
	pop hl                                           ; $7c8c: $e1
	ld [bc], a                                       ; $7c8d: $02
	inc bc                                           ; $7c8e: $03
	rra                                              ; $7c8f: $1f
	add d                                            ; $7c90: $82
	ret nz                                           ; $7c91: $c0

	dec de                                           ; $7c92: $1b
	jp nc, $d002                                     ; $7c93: $d2 $02 $d0

	pop de                                           ; $7c96: $d1
	ld b, $c0                                        ; $7c97: $06 $c0
	ld bc, $04a0                                     ; $7c99: $01 $a0 $04
	inc b                                            ; $7c9c: $04
	xor [hl]                                         ; $7c9d: $ae
	ld [bc], a                                       ; $7c9e: $02
	jp nc, $06d3                                     ; $7c9f: $d2 $d3 $06

	ret nz                                           ; $7ca2: $c0

	ld bc, $04a0                                     ; $7ca3: $01 $a0 $04
	inc b                                            ; $7ca6: $04
	cp b                                             ; $7ca7: $b8
	ld bc, $06d4                                     ; $7ca8: $01 $d4 $06
	ret nz                                           ; $7cab: $c0

	ld bc, $04a0                                     ; $7cac: $01 $a0 $04
	inc b                                            ; $7caf: $04
	ret                                              ; $7cb0: $c9


	pop hl                                           ; $7cb1: $e1
	ld [bc], a                                       ; $7cb2: $02
	inc bc                                           ; $7cb3: $03
	xor e                                            ; $7cb4: $ab
	db $e4                                           ; $7cb5: $e4
	nop                                              ; $7cb6: $00
	jp nz, $d404                                     ; $7cb7: $c2 $04 $d4

	add hl, bc                                       ; $7cba: $09
	inc l                                            ; $7cbb: $2c
	pop hl                                           ; $7cbc: $e1
	ld [bc], a                                       ; $7cbd: $02
	inc bc                                           ; $7cbe: $03
	dec de                                           ; $7cbf: $1b
	add d                                            ; $7cc0: $82
	ret nz                                           ; $7cc1: $c0

	dec de                                           ; $7cc2: $1b
	jp nc, $d002                                     ; $7cc3: $d2 $02 $d0

	pop de                                           ; $7cc6: $d1
	ld b, $c0                                        ; $7cc7: $06 $c0
	ld bc, $04a0                                     ; $7cc9: $01 $a0 $04
	inc b                                            ; $7ccc: $04
	sub $02                                          ; $7ccd: $d6 $02
	jp nc, $06d3                                     ; $7ccf: $d2 $d3 $06

	ret nz                                           ; $7cd2: $c0

	ld bc, $04a0                                     ; $7cd3: $01 $a0 $04
	inc b                                            ; $7cd6: $04
	db $e3                                           ; $7cd7: $e3
	ld bc, $06d4                                     ; $7cd8: $01 $d4 $06
	ret nz                                           ; $7cdb: $c0

	ld bc, $04a0                                     ; $7cdc: $01 $a0 $04
	inc b                                            ; $7cdf: $04
	xor $e1                                          ; $7ce0: $ee $e1
	ld [bc], a                                       ; $7ce2: $02
	inc bc                                           ; $7ce3: $03
	and d                                            ; $7ce4: $a2
	db $e4                                           ; $7ce5: $e4
	nop                                              ; $7ce6: $00
	sub d                                            ; $7ce7: $92
	jr z, jr_07e_7cf0                                ; $7ce8: $28 $06

	ret nz                                           ; $7cea: $c0

	ld bc, $04a0                                     ; $7ceb: $01 $a0 $04
	inc b                                            ; $7cee: $04
	db $f4                                           ; $7cef: $f4

jr_07e_7cf0:
	ccf                                              ; $7cf0: $3f
	inc b                                            ; $7cf1: $04
	ei                                               ; $7cf2: $fb
	add hl, bc                                       ; $7cf3: $09
	ld de, $02e1                                     ; $7cf4: $11 $e1 $02
	inc bc                                           ; $7cf7: $03
	inc de                                           ; $7cf8: $13
	ret nz                                           ; $7cf9: $c0

	ld bc, $04a0                                     ; $7cfa: $01 $a0 $04
	dec b                                            ; $7cfd: $05
	ld [bc], a                                       ; $7cfe: $02
	pop hl                                           ; $7cff: $e1
	ld [bc], a                                       ; $7d00: $02
	inc bc                                           ; $7d01: $03
	sub b                                            ; $7d02: $90
	db $e4                                           ; $7d03: $e4
	nop                                              ; $7d04: $00
	ld [hl], h                                       ; $7d05: $74
	dec b                                            ; $7d06: $05
	db $10                                           ; $7d07: $10
	add hl, bc                                       ; $7d08: $09
	ld de, $02e1                                     ; $7d09: $11 $e1 $02
	inc bc                                           ; $7d0c: $03
	dec de                                           ; $7d0d: $1b
	ret nz                                           ; $7d0e: $c0

	ld bc, $04a0                                     ; $7d0f: $01 $a0 $04
	dec b                                            ; $7d12: $05
	rla                                              ; $7d13: $17
	pop hl                                           ; $7d14: $e1
	ld [bc], a                                       ; $7d15: $02
	inc bc                                           ; $7d16: $03
	and d                                            ; $7d17: $a2
	db $e4                                           ; $7d18: $e4
	nop                                              ; $7d19: $00
	ld e, a                                          ; $7d1a: $5f
	dec b                                            ; $7d1b: $05
	rra                                              ; $7d1c: $1f
	add hl, bc                                       ; $7d1d: $09
	ld de, $02e1                                     ; $7d1e: $11 $e1 $02
	inc bc                                           ; $7d21: $03
	rla                                              ; $7d22: $17
	ret nz                                           ; $7d23: $c0

	ld bc, $04a0                                     ; $7d24: $01 $a0 $04
	dec b                                            ; $7d27: $05
	inc hl                                           ; $7d28: $23
	pop hl                                           ; $7d29: $e1
	ld [bc], a                                       ; $7d2a: $02
	inc bc                                           ; $7d2b: $03
	sbc c                                            ; $7d2c: $99
	db $e4                                           ; $7d2d: $e4
	nop                                              ; $7d2e: $00
	ld c, d                                          ; $7d2f: $4a
	jr z, jr_07e_7d38                                ; $7d30: $28 $06

	ret nz                                           ; $7d32: $c0

	ld bc, $04a0                                     ; $7d33: $01 $a0 $04
	dec b                                            ; $7d36: $05
	dec l                                            ; $7d37: $2d

jr_07e_7d38:
	ccf                                              ; $7d38: $3f
	dec b                                            ; $7d39: $05
	dec sp                                           ; $7d3a: $3b
	add hl, bc                                       ; $7d3b: $09
	ld de, $02e1                                     ; $7d3c: $11 $e1 $02
	inc bc                                           ; $7d3f: $03
	inc de                                           ; $7d40: $13
	ret nz                                           ; $7d41: $c0

	ld bc, $04a0                                     ; $7d42: $01 $a0 $04
	dec b                                            ; $7d45: $05
	dec a                                            ; $7d46: $3d
	pop hl                                           ; $7d47: $e1
	ld [bc], a                                       ; $7d48: $02
	inc bc                                           ; $7d49: $03
	add a                                            ; $7d4a: $87
	db $e4                                           ; $7d4b: $e4
	nop                                              ; $7d4c: $00
	inc l                                            ; $7d4d: $2c
	dec b                                            ; $7d4e: $05
	ld b, [hl]                                       ; $7d4f: $46
	add hl, bc                                       ; $7d50: $09
	ld de, $02e1                                     ; $7d51: $11 $e1 $02
	inc bc                                           ; $7d54: $03
	rra                                              ; $7d55: $1f
	ret nz                                           ; $7d56: $c0

	ld bc, $04a0                                     ; $7d57: $01 $a0 $04
	dec b                                            ; $7d5a: $05
	ld c, b                                          ; $7d5b: $48
	pop hl                                           ; $7d5c: $e1
	ld [bc], a                                       ; $7d5d: $02
	inc bc                                           ; $7d5e: $03
	xor e                                            ; $7d5f: $ab
	db $e4                                           ; $7d60: $e4
	nop                                              ; $7d61: $00
	rla                                              ; $7d62: $17
	dec b                                            ; $7d63: $05
	ld d, c                                          ; $7d64: $51
	add hl, bc                                       ; $7d65: $09
	ld de, $02e1                                     ; $7d66: $11 $e1 $02
	inc bc                                           ; $7d69: $03
	dec de                                           ; $7d6a: $1b
	ret nz                                           ; $7d6b: $c0

	ld bc, $04a0                                     ; $7d6c: $01 $a0 $04
	dec b                                            ; $7d6f: $05
	ld d, e                                          ; $7d70: $53
	pop hl                                           ; $7d71: $e1
	ld [bc], a                                       ; $7d72: $02
	inc bc                                           ; $7d73: $03
	and d                                            ; $7d74: $a2
	db $e4                                           ; $7d75: $e4
	nop                                              ; $7d76: $00
	ld [bc], a                                       ; $7d77: $02
	add hl, bc                                       ; $7d78: $09
	ld c, $c1                                        ; $7d79: $0e $c1
	ld e, c                                          ; $7d7b: $59
	db $e3                                           ; $7d7c: $e3
	nop                                              ; $7d7d: $00
	xor h                                            ; $7d7e: $ac
	ret nz                                           ; $7d7f: $c0

	ld d, [hl]                                       ; $7d80: $56
	jp nc, $d0d3                                     ; $7d81: $d2 $d3 $d0

	push hl                                          ; $7d84: $e5
	dec de                                           ; $7d85: $1b
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	add hl, bc                                       ; $7d88: $09
	inc d                                            ; $7d89: $14
	ret nc                                           ; $7d8a: $d0

	add e                                            ; $7d8b: $83
	ld bc, $d0de                                     ; $7d8c: $01 $de $d0
	ret nz                                           ; $7d8f: $c0

	ld bc, $04a0                                     ; $7d90: $01 $a0 $04
	inc b                                            ; $7d93: $04
	ld l, l                                          ; $7d94: $6d
	ret nz                                           ; $7d95: $c0

	ld bc, $01a0                                     ; $7d96: $01 $a0 $01
	inc b                                            ; $7d99: $04
	ld [hl], c                                       ; $7d9a: $71
	db $e4                                           ; $7d9b: $e4
	nop                                              ; $7d9c: $00
	ld [bc], a                                       ; $7d9d: $02
	add hl, bc                                       ; $7d9e: $09
	dec [hl]                                         ; $7d9f: $35
	pop bc                                           ; $7da0: $c1
	ld e, c                                          ; $7da1: $59
	db $e3                                           ; $7da2: $e3
	nop                                              ; $7da3: $00
	xor e                                            ; $7da4: $ab
	ld h, b                                          ; $7da5: $60
	add b                                            ; $7da6: $80
	ld [bc], a                                       ; $7da7: $02
	ld d, c                                          ; $7da8: $51
	jr jr_07e_7e0b                                   ; $7da9: $18 $60

	db $fc                                           ; $7dab: $fc
	ret nz                                           ; $7dac: $c0

	ld l, d                                          ; $7dad: $6a
	ret nc                                           ; $7dae: $d0

	ld c, $a0                                        ; $7daf: $0e $a0
	add b                                            ; $7db1: $80
	and b                                            ; $7db2: $a0
	inc de                                           ; $7db3: $13
	nop                                              ; $7db4: $00
	inc bc                                           ; $7db5: $03
	db $e4                                           ; $7db6: $e4
	ld bc, $ff5f                                     ; $7db7: $01 $5f $ff
	inc bc                                           ; $7dba: $03
	ldh [rP1], a                                     ; $7dbb: $e0 $00
	add hl, de                                       ; $7dbd: $19
	inc bc                                           ; $7dbe: $03
	ldh [rP1], a                                     ; $7dbf: $e0 $00
	dec d                                            ; $7dc1: $15
	ld [de], a                                       ; $7dc2: $12
	and b                                            ; $7dc3: $a0
	add b                                            ; $7dc4: $80
	and b                                            ; $7dc5: $a0
	inc d                                            ; $7dc6: $14
	nop                                              ; $7dc7: $00
	inc bc                                           ; $7dc8: $03
	db $e4                                           ; $7dc9: $e4
	nop                                              ; $7dca: $00
	inc hl                                           ; $7dcb: $23
	rst $38                                          ; $7dcc: $ff
	rlca                                             ; $7dcd: $07
	ld b, b                                          ; $7dce: $40
	add b                                            ; $7dcf: $80
	and b                                            ; $7dd0: $a0
	inc d                                            ; $7dd1: $14
	db $e4                                           ; $7dd2: $e4
	nop                                              ; $7dd3: $00
	or e                                             ; $7dd4: $b3
	rla                                              ; $7dd5: $17
	and c                                            ; $7dd6: $a1
	add c                                            ; $7dd7: $81
	and b                                            ; $7dd8: $a0
	dec d                                            ; $7dd9: $15
	nop                                              ; $7dda: $00
	inc bc                                           ; $7ddb: $03
	db $e4                                           ; $7ddc: $e4
	nop                                              ; $7ddd: $00
	pop af                                           ; $7dde: $f1
	ld bc, $e403                                     ; $7ddf: $01 $03 $e4
	nop                                              ; $7de2: $00
	dec bc                                           ; $7de3: $0b
	rst $38                                          ; $7de4: $ff
	rlca                                             ; $7de5: $07
	ld b, b                                          ; $7de6: $40
	add c                                            ; $7de7: $81
	and b                                            ; $7de8: $a0
	dec d                                            ; $7de9: $15
	db $e4                                           ; $7dea: $e4
	nop                                              ; $7deb: $00
	sbc e                                            ; $7dec: $9b
	jr z, jr_07e_7df5                                ; $7ded: $28 $06

	ret nz                                           ; $7def: $c0

	ld bc, $04a0                                     ; $7df0: $01 $a0 $04
	dec b                                            ; $7df3: $05
	ld e, e                                          ; $7df4: $5b

jr_07e_7df5:
	sub b                                            ; $7df5: $90
	dec b                                            ; $7df6: $05
	ld h, [hl]                                       ; $7df7: $66
	add hl, bc                                       ; $7df8: $09
	inc l                                            ; $7df9: $2c
	pop hl                                           ; $7dfa: $e1
	ld [bc], a                                       ; $7dfb: $02
	inc bc                                           ; $7dfc: $03
	inc de                                           ; $7dfd: $13
	add d                                            ; $7dfe: $82
	ret nz                                           ; $7dff: $c0

	dec de                                           ; $7e00: $1b
	jp nc, $d002                                     ; $7e01: $d2 $02 $d0

	pop de                                           ; $7e04: $d1
	ld b, $c0                                        ; $7e05: $06 $c0
	ld bc, $04a0                                     ; $7e07: $01 $a0 $04
	dec b                                            ; $7e0a: $05

jr_07e_7e0b:
	ld l, [hl]                                       ; $7e0b: $6e
	ld [bc], a                                       ; $7e0c: $02
	jp nc, $06d3                                     ; $7e0d: $d2 $d3 $06

	ret nz                                           ; $7e10: $c0

	ld bc, $04a0                                     ; $7e11: $01 $a0 $04
	dec b                                            ; $7e14: $05
	ld a, d                                          ; $7e15: $7a
	ld bc, $06d4                                     ; $7e16: $01 $d4 $06
	ret nz                                           ; $7e19: $c0

	ld bc, $04a0                                     ; $7e1a: $01 $a0 $04
	dec b                                            ; $7e1d: $05
	adc b                                            ; $7e1e: $88
	pop hl                                           ; $7e1f: $e1
	ld [bc], a                                       ; $7e20: $02
	inc bc                                           ; $7e21: $03
	sub b                                            ; $7e22: $90
	db $e4                                           ; $7e23: $e4
	ld bc, $056f                                     ; $7e24: $01 $6f $05
	adc l                                            ; $7e27: $8d
	add hl, bc                                       ; $7e28: $09
	inc l                                            ; $7e29: $2c
	pop hl                                           ; $7e2a: $e1
	ld [bc], a                                       ; $7e2b: $02
	inc bc                                           ; $7e2c: $03
	rra                                              ; $7e2d: $1f
	add d                                            ; $7e2e: $82
	ret nz                                           ; $7e2f: $c0

	dec de                                           ; $7e30: $1b
	jp nc, $d002                                     ; $7e31: $d2 $02 $d0

	pop de                                           ; $7e34: $d1
	ld b, $c0                                        ; $7e35: $06 $c0
	ld bc, $04a0                                     ; $7e37: $01 $a0 $04
	dec b                                            ; $7e3a: $05
	sub d                                            ; $7e3b: $92
	ld [bc], a                                       ; $7e3c: $02
	jp nc, $06d3                                     ; $7e3d: $d2 $d3 $06

	ret nz                                           ; $7e40: $c0

	ld bc, $04a0                                     ; $7e41: $01 $a0 $04
	dec b                                            ; $7e44: $05
	and h                                            ; $7e45: $a4
	ld bc, $06d4                                     ; $7e46: $01 $d4 $06
	ret nz                                           ; $7e49: $c0

	ld bc, $04a0                                     ; $7e4a: $01 $a0 $04
	dec b                                            ; $7e4d: $05
	cp e                                             ; $7e4e: $bb
	pop hl                                           ; $7e4f: $e1
	ld [bc], a                                       ; $7e50: $02
	inc bc                                           ; $7e51: $03
	xor e                                            ; $7e52: $ab
	db $e4                                           ; $7e53: $e4
	ld bc, $053f                                     ; $7e54: $01 $3f $05
	rst JumpTable                                          ; $7e57: $c7
	add hl, bc                                       ; $7e58: $09
	inc l                                            ; $7e59: $2c
	pop hl                                           ; $7e5a: $e1
	ld [bc], a                                       ; $7e5b: $02
	inc bc                                           ; $7e5c: $03
	rla                                              ; $7e5d: $17
	add d                                            ; $7e5e: $82
	ret nz                                           ; $7e5f: $c0

	dec de                                           ; $7e60: $1b
	jp nc, $d002                                     ; $7e61: $d2 $02 $d0

	pop de                                           ; $7e64: $d1
	ld b, $c0                                        ; $7e65: $06 $c0
	ld bc, $04a0                                     ; $7e67: $01 $a0 $04
	dec b                                            ; $7e6a: $05
	call z, $d202                                    ; $7e6b: $cc $02 $d2
	db $d3                                           ; $7e6e: $d3
	ld b, $c0                                        ; $7e6f: $06 $c0
	ld bc, $04a0                                     ; $7e71: $01 $a0 $04
	dec b                                            ; $7e74: $05
	db $d3                                           ; $7e75: $d3
	ld bc, $06d4                                     ; $7e76: $01 $d4 $06
	ret nz                                           ; $7e79: $c0

	ld bc, $04a0                                     ; $7e7a: $01 $a0 $04
	dec b                                            ; $7e7d: $05
	reti                                             ; $7e7e: $d9


	pop hl                                           ; $7e7f: $e1
	ld [bc], a                                       ; $7e80: $02
	inc bc                                           ; $7e81: $03
	sbc c                                            ; $7e82: $99
	db $e4                                           ; $7e83: $e4
	ld bc, $280f                                     ; $7e84: $01 $0f $28
	ld b, $c0                                        ; $7e87: $06 $c0
	ld bc, $04a0                                     ; $7e89: $01 $a0 $04
	dec b                                            ; $7e8c: $05
	rst SubAFromDE                                          ; $7e8d: $df
	ccf                                              ; $7e8e: $3f
	dec b                                            ; $7e8f: $05
	push hl                                          ; $7e90: $e5
	add hl, bc                                       ; $7e91: $09
	ld de, $02e1                                     ; $7e92: $11 $e1 $02
	inc bc                                           ; $7e95: $03
	inc de                                           ; $7e96: $13
	ret nz                                           ; $7e97: $c0

	ld bc, $04a0                                     ; $7e98: $01 $a0 $04
	dec b                                            ; $7e9b: $05
	db $ec                                           ; $7e9c: $ec
	pop hl                                           ; $7e9d: $e1
	ld [bc], a                                       ; $7e9e: $02
	inc bc                                           ; $7e9f: $03
	sub b                                            ; $7ea0: $90
	db $e4                                           ; $7ea1: $e4
	nop                                              ; $7ea2: $00
	pop af                                           ; $7ea3: $f1
	dec b                                            ; $7ea4: $05
	rst FarCall                                          ; $7ea5: $f7
	add hl, bc                                       ; $7ea6: $09
	ld de, $02e1                                     ; $7ea7: $11 $e1 $02
	inc bc                                           ; $7eaa: $03
	dec de                                           ; $7eab: $1b
	ret nz                                           ; $7eac: $c0

	ld bc, $04a0                                     ; $7ead: $01 $a0 $04
	dec b                                            ; $7eb0: $05
	ei                                               ; $7eb1: $fb
	pop hl                                           ; $7eb2: $e1
	ld [bc], a                                       ; $7eb3: $02
	inc bc                                           ; $7eb4: $03
	and d                                            ; $7eb5: $a2
	db $e4                                           ; $7eb6: $e4
	nop                                              ; $7eb7: $00
	call c, $0006                                    ; $7eb8: $dc $06 $00
	add hl, bc                                       ; $7ebb: $09
	ld de, $02e1                                     ; $7ebc: $11 $e1 $02
	inc bc                                           ; $7ebf: $03
	rla                                              ; $7ec0: $17
	ret nz                                           ; $7ec1: $c0

	ld bc, $04a0                                     ; $7ec2: $01 $a0 $04
	ld b, $06                                        ; $7ec5: $06 $06
	pop hl                                           ; $7ec7: $e1
	ld [bc], a                                       ; $7ec8: $02
	inc bc                                           ; $7ec9: $03
	sbc c                                            ; $7eca: $99
	db $e4                                           ; $7ecb: $e4
	nop                                              ; $7ecc: $00
	rst JumpTable                                          ; $7ecd: $c7
	jr z, jr_07e_7ed6                                ; $7ece: $28 $06

	ret nz                                           ; $7ed0: $c0

	ld bc, $04a0                                     ; $7ed1: $01 $a0 $04
	ld b, $0a                                        ; $7ed4: $06 $0a

jr_07e_7ed6:
	ccf                                              ; $7ed6: $3f
	ld b, $11                                        ; $7ed7: $06 $11
	add hl, bc                                       ; $7ed9: $09
	ld de, $02e1                                     ; $7eda: $11 $e1 $02
	inc bc                                           ; $7edd: $03
	inc de                                           ; $7ede: $13
	ret nz                                           ; $7edf: $c0

	ld bc, $04a0                                     ; $7ee0: $01 $a0 $04
	ld b, $16                                        ; $7ee3: $06 $16
	pop hl                                           ; $7ee5: $e1
	ld [bc], a                                       ; $7ee6: $02
	inc bc                                           ; $7ee7: $03
	sub b                                            ; $7ee8: $90
	db $e4                                           ; $7ee9: $e4
	nop                                              ; $7eea: $00
	xor c                                            ; $7eeb: $a9
	ld b, $1d                                        ; $7eec: $06 $1d
	add hl, bc                                       ; $7eee: $09
	ld de, $02e1                                     ; $7eef: $11 $e1 $02
	inc bc                                           ; $7ef2: $03
	dec de                                           ; $7ef3: $1b
	ret nz                                           ; $7ef4: $c0

	ld bc, $04a0                                     ; $7ef5: $01 $a0 $04
	ld b, $22                                        ; $7ef8: $06 $22
	pop hl                                           ; $7efa: $e1
	ld [bc], a                                       ; $7efb: $02
	inc bc                                           ; $7efc: $03
	and d                                            ; $7efd: $a2
	db $e4                                           ; $7efe: $e4
	nop                                              ; $7eff: $00
	sub h                                            ; $7f00: $94
	ld b, $29                                        ; $7f01: $06 $29
	add hl, bc                                       ; $7f03: $09
	ld de, $02e1                                     ; $7f04: $11 $e1 $02
	inc bc                                           ; $7f07: $03
	rla                                              ; $7f08: $17
	ret nz                                           ; $7f09: $c0

	ld bc, $04a0                                     ; $7f0a: $01 $a0 $04
	ld b, $2b                                        ; $7f0d: $06 $2b
	pop hl                                           ; $7f0f: $e1
	ld [bc], a                                       ; $7f10: $02
	inc bc                                           ; $7f11: $03
	sbc c                                            ; $7f12: $99
	db $e4                                           ; $7f13: $e4
	nop                                              ; $7f14: $00
	ld a, a                                          ; $7f15: $7f
	add hl, bc                                       ; $7f16: $09
	ld a, e                                          ; $7f17: $7b
	ret nz                                           ; $7f18: $c0

	ld bc, $04a0                                     ; $7f19: $01 $a0 $04
	ld b, $33                                        ; $7f1c: $06 $33
	ret nz                                           ; $7f1e: $c0

	ld bc, $01a0                                     ; $7f1f: $01 $a0 $01
	ld b, $41                                        ; $7f22: $06 $41
	ret nz                                           ; $7f24: $c0

	dec bc                                           ; $7f25: $0b
	db $e3                                           ; $7f26: $e3
	nop                                              ; $7f27: $00
	rra                                              ; $7f28: $1f
	pop bc                                           ; $7f29: $c1
	ld e, e                                          ; $7f2a: $5b
	pop bc                                           ; $7f2b: $c1
	ld e, c                                          ; $7f2c: $59
	db $e3                                           ; $7f2d: $e3
	nop                                              ; $7f2e: $00
	db $eb                                           ; $7f2f: $eb
	ret nz                                           ; $7f30: $c0

	ld bc, $04a0                                     ; $7f31: $01 $a0 $04
	ld b, $4c                                        ; $7f34: $06 $4c
	ret nz                                           ; $7f36: $c0

	ld bc, $01a0                                     ; $7f37: $01 $a0 $01
	ld b, $4f                                        ; $7f3a: $06 $4f
	ret nz                                           ; $7f3c: $c0

	ld bc, $1ea0                                     ; $7f3d: $01 $a0 $1e
	ld b, $54                                        ; $7f40: $06 $54
	ret nz                                           ; $7f42: $c0

	inc c                                            ; $7f43: $0c
	ldh [$3c], a                                     ; $7f44: $e0 $3c
	ret nz                                           ; $7f46: $c0

	set 0, b                                         ; $7f47: $cb $c0
	ld de, $00e3                                     ; $7f49: $11 $e3 $00
	xor e                                            ; $7f4c: $ab
	pop bc                                           ; $7f4d: $c1
	ld e, h                                          ; $7f4e: $5c
	pop hl                                           ; $7f4f: $e1
	ld [bc], a                                       ; $7f50: $02
	ld bc, $e170                                     ; $7f51: $01 $70 $e1
	ld [bc], a                                       ; $7f54: $02
	inc bc                                           ; $7f55: $03
	dec de                                           ; $7f56: $1b
	ret nz                                           ; $7f57: $c0

	ld bc, $01a0                                     ; $7f58: $01 $a0 $01
	ld b, $58                                        ; $7f5b: $06 $58
	pop hl                                           ; $7f5d: $e1
	ld [bc], a                                       ; $7f5e: $02
	inc bc                                           ; $7f5f: $03
	rra                                              ; $7f60: $1f
	ret nz                                           ; $7f61: $c0

	ld bc, $04a0                                     ; $7f62: $01 $a0 $04
	ld b, $5e                                        ; $7f65: $06 $5e
	ret nz                                           ; $7f67: $c0

	ld bc, $01a0                                     ; $7f68: $01 $a0 $01
	ld b, $6d                                        ; $7f6b: $06 $6d
	ret nz                                           ; $7f6d: $c0

	ld bc, $04a0                                     ; $7f6e: $01 $a0 $04
	ld b, $75                                        ; $7f71: $06 $75
	ret nz                                           ; $7f73: $c0

	ld bc, $01a0                                     ; $7f74: $01 $a0 $01
	ld b, $83                                        ; $7f77: $06 $83
	ret nc                                           ; $7f79: $d0

	add d                                            ; $7f7a: $82
	ld bc, $d2cc                                     ; $7f7b: $01 $cc $d2
	pop hl                                           ; $7f7e: $e1
	ld [bc], a                                       ; $7f7f: $02
	inc b                                            ; $7f80: $04
	pop de                                           ; $7f81: $d1
	ret nz                                           ; $7f82: $c0

	ld d, c                                          ; $7f83: $51
	db $d3                                           ; $7f84: $d3
	ret nz                                           ; $7f85: $c0

	ld d, b                                          ; $7f86: $50
	jp nc, $55c0                                     ; $7f87: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $7f8a: $e0 $14
	pop bc                                           ; $7f8c: $c1
	ld l, e                                          ; $7f8d: $6b
	db $d3                                           ; $7f8e: $d3
	jp nc, $00e4                                     ; $7f8f: $d2 $e4 $00

	ld [bc], a                                       ; $7f92: $02
	add hl, bc                                       ; $7f93: $09
	ld c, $c1                                        ; $7f94: $0e $c1
	ld e, c                                          ; $7f96: $59
	db $e3                                           ; $7f97: $e3
	nop                                              ; $7f98: $00
	xor d                                            ; $7f99: $aa
	ret nz                                           ; $7f9a: $c0

	ld d, [hl]                                       ; $7f9b: $56
	jp nc, $d0d4                                     ; $7f9c: $d2 $d4 $d0

	push hl                                          ; $7f9f: $e5
	dec de                                           ; $7fa0: $1b
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	add hl, bc                                       ; $7fa3: $09
	jr z, @-$2e                                      ; $7fa4: $28 $d0

	add e                                            ; $7fa6: $83
	ld bc, $d0de                                     ; $7fa7: $01 $de $d0
	ret nz                                           ; $7faa: $c0

	ld bc, $04a0                                     ; $7fab: $01 $a0 $04
	inc b                                            ; $7fae: $04
	ld l, l                                          ; $7faf: $6d
	ret nz                                           ; $7fb0: $c0

	ld bc, $01a0                                     ; $7fb1: $01 $a0 $01
	inc b                                            ; $7fb4: $04
	ld [hl], c                                       ; $7fb5: $71
	pop bc                                           ; $7fb6: $c1
	ld e, c                                          ; $7fb7: $59
	db $e3                                           ; $7fb8: $e3
	nop                                              ; $7fb9: $00
	or h                                             ; $7fba: $b4
	and b                                            ; $7fbb: $a0
	add b                                            ; $7fbc: $80
	and b                                            ; $7fbd: $a0
	rla                                              ; $7fbe: $17
	nop                                              ; $7fbf: $00
	inc bc                                           ; $7fc0: $03
	db $e4                                           ; $7fc1: $e4
	nop                                              ; $7fc2: $00
	dec bc                                           ; $7fc3: $0b
	rst $38                                          ; $7fc4: $ff
	rlca                                             ; $7fc5: $07
	ld b, b                                          ; $7fc6: $40
	add b                                            ; $7fc7: $80
	and b                                            ; $7fc8: $a0
	rla                                              ; $7fc9: $17
	db $e4                                           ; $7fca: $e4
	nop                                              ; $7fcb: $00
	sbc e                                            ; $7fcc: $9b
	jr z, jr_07e_7fd5                                ; $7fcd: $28 $06

	ret nz                                           ; $7fcf: $c0

	ld bc, $04a0                                     ; $7fd0: $01 $a0 $04
	ld b, $8f                                        ; $7fd3: $06 $8f

jr_07e_7fd5:
	sub b                                            ; $7fd5: $90
	ld b, $9a                                        ; $7fd6: $06 $9a
	add hl, bc                                       ; $7fd8: $09
	inc l                                            ; $7fd9: $2c
	pop hl                                           ; $7fda: $e1
	ld [bc], a                                       ; $7fdb: $02
	inc bc                                           ; $7fdc: $03
	inc de                                           ; $7fdd: $13
	add d                                            ; $7fde: $82
	ret nz                                           ; $7fdf: $c0

	dec de                                           ; $7fe0: $1b
	jp nc, $d002                                     ; $7fe1: $d2 $02 $d0

	pop de                                           ; $7fe4: $d1
	ld b, $c0                                        ; $7fe5: $06 $c0
	ld bc, $04a0                                     ; $7fe7: $01 $a0 $04
	ld b, $a0                                        ; $7fea: $06 $a0
	ld [bc], a                                       ; $7fec: $02
	jp nc, $06d3                                     ; $7fed: $d2 $d3 $06

	ret nz                                           ; $7ff0: $c0

	ld bc, $04a0                                     ; $7ff1: $01 $a0 $04
	ld b, $ae                                        ; $7ff4: $06 $ae
	ld bc, $06d4                                     ; $7ff6: $01 $d4 $06
	ret nz                                           ; $7ff9: $c0

	ld bc, $04a0                                     ; $7ffa: $01 $a0 $04
	ld b, $ba                                        ; $7ffd: $06 $ba
	pop hl                                           ; $7fff: $e1
