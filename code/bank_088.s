; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $088", ROMX[$4000], BANK[$88]

	ld [bc], a                                       ; $4000: $02
	ret nc                                           ; $4001: $d0

	pop de                                           ; $4002: $d1
	db $20, $c0                                      ; $4003: $20 $c0
	ld bc, $02a0                                     ; $4005: $01 $a0 $02
	nop                                              ; $4008: $00
	ret z                                            ; $4009: $c8

	ret nz                                           ; $400a: $c0

	ld bc, $01a0                                     ; $400b: $01 $a0 $01
	nop                                              ; $400e: $00
	db $d3                                           ; $400f: $d3
	ret nz                                           ; $4010: $c0

	ld bc, $02a0                                     ; $4011: $01 $a0 $02
	nop                                              ; $4014: $00
	ldh [$c0], a                                     ; $4015: $e0 $c0
	ld bc, $01a0                                     ; $4017: $01 $a0 $01
	nop                                              ; $401a: $00
	ldh a, [c]                                       ; $401b: $f2
	ret nz                                           ; $401c: $c0

	ld bc, $02a0                                     ; $401d: $01 $a0 $02
	ld bc, $c101                                     ; $4020: $01 $01 $c1
	ld e, e                                          ; $4023: $5b
	ld [bc], a                                       ; $4024: $02
	jp nc, $20d3                                     ; $4025: $d2 $d3 $20

	ret nz                                           ; $4028: $c0

	ld bc, $02a0                                     ; $4029: $01 $a0 $02
	ld bc, $c009                                     ; $402c: $01 $09 $c0
	ld bc, $01a0                                     ; $402f: $01 $a0 $01
	nop                                              ; $4032: $00
	db $d3                                           ; $4033: $d3
	ret nz                                           ; $4034: $c0

	ld bc, $02a0                                     ; $4035: $01 $a0 $02
	ld bc, $c012                                     ; $4038: $01 $12 $c0
	ld bc, $01a0                                     ; $403b: $01 $a0 $01
	ld bc, $c025                                     ; $403e: $01 $25 $c0
	ld bc, $02a0                                     ; $4041: $01 $a0 $02
	ld bc, $c101                                     ; $4044: $01 $01 $c1
	ld e, e                                          ; $4047: $5b
	ld bc, $1ad4                                     ; $4048: $01 $d4 $1a
	ret nz                                           ; $404b: $c0

	ld bc, $02a0                                     ; $404c: $01 $a0 $02
	ld bc, $c009                                     ; $404f: $01 $09 $c0
	ld bc, $01a0                                     ; $4052: $01 $a0 $01
	ld bc, $c031                                     ; $4055: $01 $31 $c0
	ld bc, $02a0                                     ; $4058: $01 $a0 $02
	ld bc, $c13e                                     ; $405b: $01 $3e $c1
	ld e, e                                          ; $405e: $5b
	ret nz                                           ; $405f: $c0

	ld bc, $01a0                                     ; $4060: $01 $a0 $01
	ld bc, $014b                     ; $4063: $01 $4b $01
	push de                                          ; $4066: $d5
	ld c, $c0                                        ; $4067: $0e $c0
	ld bc, $02a0                                     ; $4069: $01 $a0 $02
	ld bc, $c154                                     ; $406c: $01 $54 $c1
	ld e, e                                          ; $406f: $5b
	ret nz                                           ; $4070: $c0

	ld bc, $01a0                                     ; $4071: $01 $a0 $01
	ld bc, $b45c                                     ; $4074: $01 $5c $b4
	add e                                            ; $4077: $83
	ret nz                                           ; $4078: $c0

	dec de                                           ; $4079: $1b
	ret nc                                           ; $407a: $d0

	ld [bc], a                                       ; $407b: $02
	ret nc                                           ; $407c: $d0

	pop de                                           ; $407d: $d1
	ld [hl-], a                                      ; $407e: $32
	ret nz                                           ; $407f: $c0

	ld bc, $02a0                                     ; $4080: $01 $a0 $02
	ld bc, $c05e                                     ; $4083: $01 $5e $c0
	ld bc, $01a0                                     ; $4086: $01 $a0 $01
	ld bc, $c069                                     ; $4089: $01 $69 $c0
	ld bc, $02a0                                     ; $408c: $01 $a0 $02
	ld bc, $c076                                     ; $408f: $01 $76 $c0
	ld bc, $01a0                                     ; $4092: $01 $a0 $01
	ld bc, $c085                                     ; $4095: $01 $85 $c0
	ld bc, $02a0                                     ; $4098: $01 $a0 $02
	ld bc, $c096                                     ; $409b: $01 $96 $c0
	ld bc, $01a0                                     ; $409e: $01 $a0 $01
	ld bc, $c0a1                                     ; $40a1: $01 $a1 $c0
	ld bc, $02a0                                     ; $40a4: $01 $a0 $02
	ld bc, $c0ab                                     ; $40a7: $01 $ab $c0
	ld bc, $01a0                                     ; $40aa: $01 $a0 $01
	ld bc, $c1b9                                     ; $40ad: $01 $b9 $c1
	ld e, e                                          ; $40b0: $5b
	ld [bc], a                                       ; $40b1: $02
	jp nc, $32d3                                     ; $40b2: $d2 $d3 $32

	ret nz                                           ; $40b5: $c0

	ld bc, $02a0                                     ; $40b6: $01 $a0 $02
	ld bc, $c0c0                                     ; $40b9: $01 $c0 $c0
	ld bc, $01a0                                     ; $40bc: $01 $a0 $01
	ld bc, $c069                                     ; $40bf: $01 $69 $c0
	ld bc, $02a0                                     ; $40c2: $01 $a0 $02
	ld bc, $c0ca                                     ; $40c5: $01 $ca $c0
	ld bc, $01a0                                     ; $40c8: $01 $a0 $01
	ld bc, $c085                                     ; $40cb: $01 $85 $c0
	ld bc, $02a0                                     ; $40ce: $01 $a0 $02
	ld bc, $c0d7                                     ; $40d1: $01 $d7 $c0
	ld bc, $01a0                                     ; $40d4: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $40d7: $01 $e2 $c0
	ld bc, $02a0                                     ; $40da: $01 $a0 $02
	ld bc, $c0ed                                     ; $40dd: $01 $ed $c0
	ld bc, $01a0                                     ; $40e0: $01 $a0 $01
	ld bc, $c1b9                                     ; $40e3: $01 $b9 $c1
	ld e, e                                          ; $40e6: $5b
	ld bc, _EnterNamesAndDates                                     ; $40e7: $01 $d4 $2a
	ret nz                                           ; $40ea: $c0

	ld bc, $02a0                                     ; $40eb: $01 $a0 $02
	ld bc, $c0c0                                     ; $40ee: $01 $c0 $c0
	ld bc, $01a0                                     ; $40f1: $01 $a0 $01
	ld bc, $c069                                     ; $40f4: $01 $69 $c0
	ld bc, $02a0                                     ; $40f7: $01 $a0 $02
	ld bc, $c0fb                                     ; $40fa: $01 $fb $c0
	ld bc, $01a0                                     ; $40fd: $01 $a0 $01
	ld bc, $e185                                     ; $4100: $01 $85 $e1
	ld [bc], a                                       ; $4103: $02
	inc bc                                           ; $4104: $03
	inc de                                           ; $4105: $13
	ret nz                                           ; $4106: $c0

	ld bc, $02a0                                     ; $4107: $01 $a0 $02
	ld [bc], a                                       ; $410a: $02
	dec bc                                           ; $410b: $0b
	pop bc                                           ; $410c: $c1
	ld e, e                                          ; $410d: $5b
	ret nz                                           ; $410e: $c0

	ld bc, $01a0                                     ; $410f: $01 $a0 $01
	ld [bc], a                                       ; $4112: $02
	dec d                                            ; $4113: $15
	ld bc, $14d5                                     ; $4114: $01 $d5 $14
	ret nz                                           ; $4117: $c0

	ld bc, $01a0                                     ; $4118: $01 $a0 $01
	ld [bc], a                                       ; $411b: $02
	jr nz, @-$3e                                     ; $411c: $20 $c0

	ld bc, $02a0                                     ; $411e: $01 $a0 $02
	ld [bc], a                                       ; $4121: $02
	add hl, hl                                       ; $4122: $29
	pop bc                                           ; $4123: $c1
	ld e, e                                          ; $4124: $5b
	ret nz                                           ; $4125: $c0

	ld bc, $01a0                                     ; $4126: $01 $a0 $01
	ld [bc], a                                       ; $4129: $02
	ld l, $b0                                        ; $412a: $2e $b0
	add e                                            ; $412c: $83
	ret nz                                           ; $412d: $c0

	dec de                                           ; $412e: $1b
	ret nc                                           ; $412f: $d0

	ld [bc], a                                       ; $4130: $02
	ret nc                                           ; $4131: $d0

	pop de                                           ; $4132: $d1
	ld [hl-], a                                      ; $4133: $32
	ret nz                                           ; $4134: $c0

	ld bc, $02a0                                     ; $4135: $01 $a0 $02
	ld [bc], a                                       ; $4138: $02
	ld a, [hl-]                                      ; $4139: $3a
	ret nz                                           ; $413a: $c0

	ld bc, $01a0                                     ; $413b: $01 $a0 $01
	ld [bc], a                                       ; $413e: $02
	ld b, e                                          ; $413f: $43
	ret nz                                           ; $4140: $c0

	ld bc, $02a0                                     ; $4141: $01 $a0 $02
	ld [bc], a                                       ; $4144: $02
	ld d, b                                          ; $4145: $50
	ret nz                                           ; $4146: $c0

	ld bc, $01a0                                     ; $4147: $01 $a0 $01
	ld [bc], a                                       ; $414a: $02
	ld e, d                                          ; $414b: $5a
	ret nz                                           ; $414c: $c0

	ld bc, $02a0                                     ; $414d: $01 $a0 $02
	ld [bc], a                                       ; $4150: $02
	ld h, h                                          ; $4151: $64
	ret nz                                           ; $4152: $c0

	ld bc, $01a0                                     ; $4153: $01 $a0 $01
	ld [bc], a                                       ; $4156: $02
	ld [hl], l                                       ; $4157: $75
	ret nz                                           ; $4158: $c0

	ld bc, $02a0                                     ; $4159: $01 $a0 $02
	ld [bc], a                                       ; $415c: $02
	add e                                            ; $415d: $83
	ret nz                                           ; $415e: $c0

	ld bc, $01a0                                     ; $415f: $01 $a0 $01
	ld [bc], a                                       ; $4162: $02
	adc a                                            ; $4163: $8f
	pop bc                                           ; $4164: $c1
	ld e, e                                          ; $4165: $5b
	ld [bc], a                                       ; $4166: $02
	jp nc, $32d3                                     ; $4167: $d2 $d3 $32

	ret nz                                           ; $416a: $c0

	ld bc, $02a0                                     ; $416b: $01 $a0 $02
	ld [bc], a                                       ; $416e: $02
	sub [hl]                                         ; $416f: $96
	ret nz                                           ; $4170: $c0

	ld bc, $01a0                                     ; $4171: $01 $a0 $01
	ld [bc], a                                       ; $4174: $02
	ld b, e                                          ; $4175: $43
	ret nz                                           ; $4176: $c0

	ld bc, $02a0                                     ; $4177: $01 $a0 $02
	ld [bc], a                                       ; $417a: $02
	sbc a                                            ; $417b: $9f
	ret nz                                           ; $417c: $c0

	ld bc, $01a0                                     ; $417d: $01 $a0 $01
	ld [bc], a                                       ; $4180: $02
	ld e, d                                          ; $4181: $5a
	ret nz                                           ; $4182: $c0

	ld bc, $02a0                                     ; $4183: $01 $a0 $02
	ld [bc], a                                       ; $4186: $02
	xor b                                            ; $4187: $a8
	ret nz                                           ; $4188: $c0

	ld bc, $01a0                                     ; $4189: $01 $a0 $01
	ld [bc], a                                       ; $418c: $02
	cp c                                             ; $418d: $b9
	ret nz                                           ; $418e: $c0

	ld bc, $02a0                                     ; $418f: $01 $a0 $02
	ld [bc], a                                       ; $4192: $02
	add $c0                                          ; $4193: $c6 $c0
	ld bc, $01a0                                     ; $4195: $01 $a0 $01
	ld [bc], a                                       ; $4198: $02
	adc a                                            ; $4199: $8f
	pop bc                                           ; $419a: $c1
	ld e, e                                          ; $419b: $5b
	ld bc, $26d4                                     ; $419c: $01 $d4 $26
	ret nz                                           ; $419f: $c0

	ld bc, $02a0                                     ; $41a0: $01 $a0 $02
	ld [bc], a                                       ; $41a3: $02
	sub [hl]                                         ; $41a4: $96
	ret nz                                           ; $41a5: $c0

	ld bc, $01a0                                     ; $41a6: $01 $a0 $01
	ld [bc], a                                       ; $41a9: $02
	ld b, e                                          ; $41aa: $43
	ret nz                                           ; $41ab: $c0

	ld bc, $02a0                                     ; $41ac: $01 $a0 $02
	ld [bc], a                                       ; $41af: $02
	xor b                                            ; $41b0: $a8
	ret nz                                           ; $41b1: $c0

	ld bc, $01a0                                     ; $41b2: $01 $a0 $01
	ld [bc], a                                       ; $41b5: $02
	cp c                                             ; $41b6: $b9
	ret nz                                           ; $41b7: $c0

	ld bc, $02a0                                     ; $41b8: $01 $a0 $02
	ld [bc], a                                       ; $41bb: $02
	pop de                                           ; $41bc: $d1
	ret nz                                           ; $41bd: $c0

	ld bc, $01a0                                     ; $41be: $01 $a0 $01
	ld [bc], a                                       ; $41c1: $02
	adc a                                            ; $41c2: $8f
	pop bc                                           ; $41c3: $c1

jr_088_41c4:
	ld e, e                                          ; $41c4: $5b
	ld bc, $14d5                                     ; $41c5: $01 $d5 $14
	ret nz                                           ; $41c8: $c0

	ld bc, $01a0                                     ; $41c9: $01 $a0 $01
	ld [bc], a                                       ; $41cc: $02
	call c, $01c0                                    ; $41cd: $dc $c0 $01
	and b                                            ; $41d0: $a0
	ld [bc], a                                       ; $41d1: $02
	ld [bc], a                                       ; $41d2: $02
	push hl                                          ; $41d3: $e5
	pop bc                                           ; $41d4: $c1
	ld e, e                                          ; $41d5: $5b
	ret nz                                           ; $41d6: $c0

	ld bc, $01a0                                     ; $41d7: $01 $a0 $01
	ld [bc], a                                       ; $41da: $02
	db $ec                                           ; $41db: $ec
	sbc b                                            ; $41dc: $98
	add e                                            ; $41dd: $83
	ret nz                                           ; $41de: $c0

	dec de                                           ; $41df: $1b
	ret nc                                           ; $41e0: $d0

	ld [bc], a                                       ; $41e1: $02
	ret nc                                           ; $41e2: $d0

	pop de                                           ; $41e3: $d1
	ld h, $c0                                        ; $41e4: $26 $c0
	ld bc, $02a0                                     ; $41e6: $01 $a0 $02
	ld [bc], a                                       ; $41e9: $02
	or $c0                                           ; $41ea: $f6 $c0
	ld bc, $01a0                                     ; $41ec: $01 $a0 $01
	inc bc                                           ; $41ef: $03
	inc bc                                           ; $41f0: $03
	ret nz                                           ; $41f1: $c0

	ld bc, $02a0                                     ; $41f2: $01 $a0 $02
	inc bc                                           ; $41f5: $03
	ld [de], a                                       ; $41f6: $12
	ret nz                                           ; $41f7: $c0

	ld bc, $01a0                                     ; $41f8: $01 $a0 $01
	inc bc                                           ; $41fb: $03
	inc e                                            ; $41fc: $1c
	ret nz                                           ; $41fd: $c0

	ld bc, $02a0                                     ; $41fe: $01 $a0 $02
	inc bc                                           ; $4201: $03
	jr c, jr_088_41c4                                ; $4202: $38 $c0

	ld bc, $01a0                                     ; $4204: $01 $a0 $01
	inc bc                                           ; $4207: $03
	ld b, a                                          ; $4208: $47
	pop bc                                           ; $4209: $c1
	ld e, e                                          ; $420a: $5b
	ld [bc], a                                       ; $420b: $02
	jp nc, $2cd3                                     ; $420c: $d2 $d3 $2c

	ret nz                                           ; $420f: $c0

	ld bc, $02a0                                     ; $4210: $01 $a0 $02
	inc bc                                           ; $4213: $03
	ld c, [hl]                                       ; $4214: $4e
	ret nz                                           ; $4215: $c0

	ld bc, $01a0                                     ; $4216: $01 $a0 $01
	inc bc                                           ; $4219: $03
	inc bc                                           ; $421a: $03
	ret nz                                           ; $421b: $c0

	ld bc, $02a0                                     ; $421c: $01 $a0 $02
	inc bc                                           ; $421f: $03
	ld e, d                                          ; $4220: $5a
	ret nz                                           ; $4221: $c0

	ld bc, $01a0                                     ; $4222: $01 $a0 $01
	inc bc                                           ; $4225: $03
	inc e                                            ; $4226: $1c
	ret nz                                           ; $4227: $c0

	ld bc, $02a0                                     ; $4228: $01 $a0 $02
	inc bc                                           ; $422b: $03
	ld h, l                                          ; $422c: $65
	ret nz                                           ; $422d: $c0

	ld bc, $01a0                                     ; $422e: $01 $a0 $01
	inc bc                                           ; $4231: $03
	ld b, a                                          ; $4232: $47
	ret nz                                           ; $4233: $c0

	ld bc, $02a0                                     ; $4234: $01 $a0 $02
	inc bc                                           ; $4237: $03
	ld [hl], h                                       ; $4238: $74
	pop bc                                           ; $4239: $c1
	ld e, e                                          ; $423a: $5b
	ld bc, $20d4                                     ; $423b: $01 $d4 $20
	ret nz                                           ; $423e: $c0

	ld bc, $02a0                                     ; $423f: $01 $a0 $02
	inc bc                                           ; $4242: $03
	ld c, [hl]                                       ; $4243: $4e
	ret nz                                           ; $4244: $c0

	ld bc, $01a0                                     ; $4245: $01 $a0 $01
	inc bc                                           ; $4248: $03
	inc bc                                           ; $4249: $03
	ret nz                                           ; $424a: $c0

	ld bc, $02a0                                     ; $424b: $01 $a0 $02
	inc bc                                           ; $424e: $03
	ld a, b                                          ; $424f: $78
	ret nz                                           ; $4250: $c0

	ld bc, $01a0                                     ; $4251: $01 $a0 $01
	inc bc                                           ; $4254: $03
	inc e                                            ; $4255: $1c
	ret nz                                           ; $4256: $c0

	ld bc, $02a0                                     ; $4257: $01 $a0 $02
	inc bc                                           ; $425a: $03
	add c                                            ; $425b: $81
	pop bc                                           ; $425c: $c1
	ld e, e                                          ; $425d: $5b
	ld bc, $14d5                                     ; $425e: $01 $d5 $14
	ret nz                                           ; $4261: $c0

	ld bc, $01a0                                     ; $4262: $01 $a0 $01
	inc bc                                           ; $4265: $03
	add [hl]                                         ; $4266: $86
	ret nz                                           ; $4267: $c0

	ld bc, $02a0                                     ; $4268: $01 $a0 $02
	inc bc                                           ; $426b: $03
	sub b                                            ; $426c: $90
	pop bc                                           ; $426d: $c1
	ld e, e                                          ; $426e: $5b
	ret nz                                           ; $426f: $c0

	ld bc, $01a0                                     ; $4270: $01 $a0 $01
	inc bc                                           ; $4273: $03
	sbc e                                            ; $4274: $9b
	add c                                            ; $4275: $81
	ld [$4c09], sp                                   ; $4276: $08 $09 $4c
	ld h, b                                          ; $4279: $60
	add b                                            ; $427a: $80
	nop                                              ; $427b: $00
	ld l, l                                          ; $427c: $6d
	ld a, [hl-]                                      ; $427d: $3a
	pop bc                                           ; $427e: $c1
	ld e, c                                          ; $427f: $59
	db $e3                                           ; $4280: $e3
	nop                                              ; $4281: $00
	ld b, b                                          ; $4282: $40
	ret nz                                           ; $4283: $c0

	add hl, bc                                       ; $4284: $09
	db $e3                                           ; $4285: $e3
	nop                                              ; $4286: $00
	ld b, $e1                                        ; $4287: $06 $e1
	ld [bc], a                                       ; $4289: $02
	ld bc, $6308                                     ; $428a: $01 $08 $63
	ei                                               ; $428d: $fb
	ret nz                                           ; $428e: $c0

	ld b, a                                          ; $428f: $47
	pop hl                                           ; $4290: $e1
	ld bc, $0364                                     ; $4291: $01 $64 $03
	ldh [rSC], a                                     ; $4294: $e0 $02
	and [hl]                                         ; $4296: $a6
	ei                                               ; $4297: $fb
	ret nz                                           ; $4298: $c0

	ld b, a                                          ; $4299: $47
	ldh [$c8], a                                     ; $429a: $e0 $c8
	inc bc                                           ; $429c: $03
	ldh [rSB], a                                     ; $429d: $e0 $01
	cp $fb                                           ; $429f: $fe $fb

jr_088_42a1:
	ret nz                                           ; $42a1: $c0

	ld b, a                                          ; $42a2: $47
	ldh [$64], a                                     ; $42a3: $e0 $64
	inc bc                                           ; $42a5: $03
	ldh [rSB], a                                     ; $42a6: $e0 $01
	ld c, d                                          ; $42a8: $4a
	ei                                               ; $42a9: $fb
	ret nz                                           ; $42aa: $c0

	ld b, a                                          ; $42ab: $47
	ldh [$32], a                                     ; $42ac: $e0 $32
	inc bc                                           ; $42ae: $03
	ldh [rP1], a                                     ; $42af: $e0 $00
	and d                                            ; $42b1: $a2
	inc bc                                           ; $42b2: $03
	ldh [rP1], a                                     ; $42b3: $e0 $00
	ld de, $05c1                                     ; $42b5: $11 $c1 $05
	ld [$59c1], sp                                   ; $42b8: $08 $c1 $59
	db $e3                                           ; $42bb: $e3
	nop                                              ; $42bc: $00
	ld a, b                                          ; $42bd: $78
	ldh [$03], a                                     ; $42be: $e0 $03
	inc sp                                           ; $42c0: $33
	push hl                                          ; $42c1: $e5
	ld d, a                                          ; $42c2: $57
	nop                                              ; $42c3: $00
	ld l, l                                          ; $42c4: $6d
	adc h                                            ; $42c5: $8c
	add e                                            ; $42c6: $83
	ret nz                                           ; $42c7: $c0

	dec de                                           ; $42c8: $1b
	pop de                                           ; $42c9: $d1
	ld [bc], a                                       ; $42ca: $02
	ret nc                                           ; $42cb: $d0

	pop de                                           ; $42cc: $d1
	ld h, $c0                                        ; $42cd: $26 $c0
	ld bc, $03a0                                     ; $42cf: $01 $a0 $03
	nop                                              ; $42d2: $00
	ld bc, $01c0                                     ; $42d3: $01 $c0 $01
	and b                                            ; $42d6: $a0
	ld bc, $0700                                     ; $42d7: $01 $00 $07
	ret nz                                           ; $42da: $c0

	ld bc, $03a0                                     ; $42db: $01 $a0 $03
	nop                                              ; $42de: $00
	jr jr_088_42a1                                   ; $42df: $18 $c0

	ld bc, $01a0                                     ; $42e1: $01 $a0 $01
	nop                                              ; $42e4: $00
	inc hl                                           ; $42e5: $23
	ret nz                                           ; $42e6: $c0

	ld bc, $03a0                                     ; $42e7: $01 $a0 $03
	nop                                              ; $42ea: $00
	jr nc, @-$3e                                     ; $42eb: $30 $c0

	ld bc, $01a0                                     ; $42ed: $01 $a0 $01
	nop                                              ; $42f0: $00
	ld b, d                                          ; $42f1: $42
	pop bc                                           ; $42f2: $c1
	ld e, e                                          ; $42f3: $5b
	ld [bc], a                                       ; $42f4: $02
	jp nc, $26d3                                     ; $42f5: $d2 $d3 $26

	ret nz                                           ; $42f8: $c0

	ld bc, $03a0                                     ; $42f9: $01 $a0 $03
	nop                                              ; $42fc: $00
	ld c, c                                          ; $42fd: $49
	ret nz                                           ; $42fe: $c0

	ld bc, $01a0                                     ; $42ff: $01 $a0 $01
	nop                                              ; $4302: $00
	ld d, b                                          ; $4303: $50
	ret nz                                           ; $4304: $c0

	ld bc, $03a0                                     ; $4305: $01 $a0 $03
	nop                                              ; $4308: $00
	ld h, c                                          ; $4309: $61
	ret nz                                           ; $430a: $c0

	ld bc, $01a0                                     ; $430b: $01 $a0 $01
	nop                                              ; $430e: $00
	inc hl                                           ; $430f: $23
	ret nz                                           ; $4310: $c0

	ld bc, $03a0                                     ; $4311: $01 $a0 $03
	nop                                              ; $4314: $00
	ld l, e                                          ; $4315: $6b
	ret nz                                           ; $4316: $c0

	ld bc, $01a0                                     ; $4317: $01 $a0 $01
	nop                                              ; $431a: $00
	ld b, d                                          ; $431b: $42
	pop bc                                           ; $431c: $c1
	ld e, e                                          ; $431d: $5b
	ld bc, $1ad4                                     ; $431e: $01 $d4 $1a
	ret nz                                           ; $4321: $c0

	ld bc, $03a0                                     ; $4322: $01 $a0 $03
	nop                                              ; $4325: $00
	ld a, b                                          ; $4326: $78
	ret nz                                           ; $4327: $c0

	ld bc, $01a0                                     ; $4328: $01 $a0 $01
	nop                                              ; $432b: $00
	ld d, b                                          ; $432c: $50
	ret nz                                           ; $432d: $c0

	ld bc, $03a0                                     ; $432e: $01 $a0 $03
	nop                                              ; $4331: $00
	ld a, e                                          ; $4332: $7b
	ret nz                                           ; $4333: $c0

	ld bc, $01a0                                     ; $4334: $01 $a0 $01
	nop                                              ; $4337: $00
	add [hl]                                         ; $4338: $86
	pop bc                                           ; $4339: $c1
	ld e, e                                          ; $433a: $5b
	ld bc, $14d5                                     ; $433b: $01 $d5 $14
	ret nz                                           ; $433e: $c0

	ld bc, $01a0                                     ; $433f: $01 $a0 $01
	nop                                              ; $4342: $00
	sub c                                            ; $4343: $91
	ret nz                                           ; $4344: $c0

	ld bc, $03a0                                     ; $4345: $01 $a0 $03
	nop                                              ; $4348: $00
	sbc h                                            ; $4349: $9c
	pop bc                                           ; $434a: $c1
	ld e, e                                          ; $434b: $5b
	ret nz                                           ; $434c: $c0

	ld bc, $01a0                                     ; $434d: $01 $a0 $01
	nop                                              ; $4350: $00
	inc hl                                           ; $4351: $23
	sbc [hl]                                         ; $4352: $9e
	add e                                            ; $4353: $83
	ret nz                                           ; $4354: $c0

	dec de                                           ; $4355: $1b
	pop de                                           ; $4356: $d1
	ld [bc], a                                       ; $4357: $02
	ret nc                                           ; $4358: $d0

	pop de                                           ; $4359: $d1
	inc l                                            ; $435a: $2c
	ret nz                                           ; $435b: $c0

	ld bc, $03a0                                     ; $435c: $01 $a0 $03
	nop                                              ; $435f: $00
	xor c                                            ; $4360: $a9
	ret nz                                           ; $4361: $c0

	ld bc, $01a0                                     ; $4362: $01 $a0 $01
	nop                                              ; $4365: $00
	cp c                                             ; $4366: $b9
	ret nz                                           ; $4367: $c0

	ld bc, $03a0                                     ; $4368: $01 $a0 $03
	nop                                              ; $436b: $00
	rst JumpTable                                          ; $436c: $c7
	ret nz                                           ; $436d: $c0

	ld bc, $01a0                                     ; $436e: $01 $a0 $01
	nop                                              ; $4371: $00
	reti                                             ; $4372: $d9


	ret nz                                           ; $4373: $c0

	ld bc, $03a0                                     ; $4374: $01 $a0 $03
	nop                                              ; $4377: $00
	db $e4                                           ; $4378: $e4
	ret nz                                           ; $4379: $c0

	ld bc, $01a0                                     ; $437a: $01 $a0 $01
	nop                                              ; $437d: $00
	ldh a, [$c0]                                     ; $437e: $f0 $c0
	ld bc, $03a0                                     ; $4380: $01 $a0 $03
	nop                                              ; $4383: $00
	cp $c1                                           ; $4384: $fe $c1
	ld e, e                                          ; $4386: $5b
	ld [bc], a                                       ; $4387: $02
	jp nc, $2cd3                                     ; $4388: $d2 $d3 $2c

	ret nz                                           ; $438b: $c0

	ld bc, $03a0                                     ; $438c: $01 $a0 $03
	nop                                              ; $438f: $00
	xor c                                            ; $4390: $a9
	ret nz                                           ; $4391: $c0

	ld bc, $01a0                                     ; $4392: $01 $a0 $01
	nop                                              ; $4395: $00
	cp c                                             ; $4396: $b9
	ret nz                                           ; $4397: $c0

	ld bc, $03a0                                     ; $4398: $01 $a0 $03
	ld bc, $c006                                     ; $439b: $01 $06 $c0
	ld bc, $01a0                                     ; $439e: $01 $a0 $01
	nop                                              ; $43a1: $00
	reti                                             ; $43a2: $d9


	ret nz                                           ; $43a3: $c0

	ld bc, $03a0                                     ; $43a4: $01 $a0 $03
	ld bc, $c012                                     ; $43a7: $01 $12 $c0
	ld bc, $01a0                                     ; $43aa: $01 $a0 $01
	ld bc, $c01e                                     ; $43ad: $01 $1e $c0
	ld bc, $03a0                                     ; $43b0: $01 $a0 $03
	ld bc, wMainLoopCounter                                     ; $43b3: $01 $29 $c1
	ld e, e                                          ; $43b6: $5b
	ld bc, $20d4                                     ; $43b7: $01 $d4 $20
	ret nz                                           ; $43ba: $c0

jr_088_43bb:
	ld bc, $03a0                                     ; $43bb: $01 $a0 $03
	nop                                              ; $43be: $00
	xor c                                            ; $43bf: $a9
	ret nz                                           ; $43c0: $c0

	ld bc, $01a0                                     ; $43c1: $01 $a0 $01
	nop                                              ; $43c4: $00
	cp c                                             ; $43c5: $b9
	ret nz                                           ; $43c6: $c0

	ld bc, $03a0                                     ; $43c7: $01 $a0 $03
	ld bc, $c02e                                     ; $43ca: $01 $2e $c0
	ld bc, $01a0                                     ; $43cd: $01 $a0 $01
	nop                                              ; $43d0: $00
	reti                                             ; $43d1: $d9


	ret nz                                           ; $43d2: $c0

	ld bc, $03a0                                     ; $43d3: $01 $a0 $03
	ld bc, $c13a                                     ; $43d6: $01 $3a $c1
	ld e, e                                          ; $43d9: $5b
	ld bc, $14d5                                     ; $43da: $01 $d5 $14
	ret nz                                           ; $43dd: $c0

	ld bc, $01a0                                     ; $43de: $01 $a0 $01
	ld bc, $c040                                     ; $43e1: $01 $40 $c0
	ld bc, $03a0                                     ; $43e4: $01 $a0 $03
	ld bc, $c14a                                     ; $43e7: $01 $4a $c1
	ld e, e                                          ; $43ea: $5b
	ret nz                                           ; $43eb: $c0

	ld bc, $01a0                                     ; $43ec: $01 $a0 $01
	ld bc, $aa57                                     ; $43ef: $01 $57 $aa
	add e                                            ; $43f2: $83
	ret nz                                           ; $43f3: $c0

	dec de                                           ; $43f4: $1b
	pop de                                           ; $43f5: $d1
	ld [bc], a                                       ; $43f6: $02
	ret nc                                           ; $43f7: $d0

	pop de                                           ; $43f8: $d1
	jr c, jr_088_43bb                                ; $43f9: $38 $c0

	ld bc, $03a0                                     ; $43fb: $01 $a0 $03
	ld bc, $c069                                     ; $43fe: $01 $69 $c0
	ld bc, $01a0                                     ; $4401: $01 $a0 $01
	nop                                              ; $4404: $00
	cp c                                             ; $4405: $b9
	ret nz                                           ; $4406: $c0

	ld bc, $03a0                                     ; $4407: $01 $a0 $03
	ld bc, $c078                                     ; $440a: $01 $78 $c0
	ld bc, $01a0                                     ; $440d: $01 $a0 $01
	ld bc, $c086                                     ; $4410: $01 $86 $c0
	ld bc, $03a0                                     ; $4413: $01 $a0 $03
	ld bc, $c089                                     ; $4416: $01 $89 $c0
	ld bc, $01a0                                     ; $4419: $01 $a0 $01
	ld bc, $c095                                     ; $441c: $01 $95 $c0
	ld bc, $03a0                                     ; $441f: $01 $a0 $03
	ld bc, $c0a7                                     ; $4422: $01 $a7 $c0
	ld bc, $01a0                                     ; $4425: $01 $a0 $01
	ld bc, $c0a9                                     ; $4428: $01 $a9 $c0
	ld bc, $03a0                                     ; $442b: $01 $a0 $03
	ld bc, $c13a                                     ; $442e: $01 $3a $c1
	ld e, e                                          ; $4431: $5b
	ld [bc], a                                       ; $4432: $02
	jp nc, $2cd3                                     ; $4433: $d2 $d3 $2c

	ret nz                                           ; $4436: $c0

	ld bc, $03a0                                     ; $4437: $01 $a0 $03
	ld bc, $c069                                     ; $443a: $01 $69 $c0
	ld bc, $01a0                                     ; $443d: $01 $a0 $01
	nop                                              ; $4440: $00
	cp c                                             ; $4441: $b9
	ret nz                                           ; $4442: $c0

	ld bc, $03a0                                     ; $4443: $01 $a0 $03
	ld bc, $c0b8                                     ; $4446: $01 $b8 $c0
	ld bc, $01a0                                     ; $4449: $01 $a0 $01
	ld bc, $c0c6                                     ; $444c: $01 $c6 $c0
	ld bc, $03a0                                     ; $444f: $01 $a0 $03
	ld bc, $c0d2                                     ; $4452: $01 $d2 $c0
	ld bc, $01a0                                     ; $4455: $01 $a0 $01
	ld bc, $c0df                                     ; $4458: $01 $df $c0
	ld bc, $03a0                                     ; $445b: $01 $a0 $03
	ld bc, wMainLoopCounter                                     ; $445e: $01 $29 $c1
	ld e, e                                          ; $4461: $5b
	ld bc, $20d4                                     ; $4462: $01 $d4 $20
	ret nz                                           ; $4465: $c0

	ld bc, $03a0                                     ; $4466: $01 $a0 $03
	ld bc, $c069                                     ; $4469: $01 $69 $c0
	ld bc, $01a0                                     ; $446c: $01 $a0 $01
	nop                                              ; $446f: $00
	cp c                                             ; $4470: $b9
	ret nz                                           ; $4471: $c0

	ld bc, $03a0                                     ; $4472: $01 $a0 $03
	ld bc, $c0ed                                     ; $4475: $01 $ed $c0
	ld bc, $01a0                                     ; $4478: $01 $a0 $01
	ld bc, $c0fc                                     ; $447b: $01 $fc $c0
	ld bc, $03a0                                     ; $447e: $01 $a0 $03
	ld bc, $c13a                                     ; $4481: $01 $3a $c1
	ld e, e                                          ; $4484: $5b
	ld bc, $14d5                                     ; $4485: $01 $d5 $14
	ret nz                                           ; $4488: $c0

	ld bc, $01a0                                     ; $4489: $01 $a0 $01
	ld [bc], a                                       ; $448c: $02
	dec bc                                           ; $448d: $0b
	ret nz                                           ; $448e: $c0

	ld bc, $03a0                                     ; $448f: $01 $a0 $03
	ld [bc], a                                       ; $4492: $02
	dec d                                            ; $4493: $15
	pop bc                                           ; $4494: $c1
	ld e, e                                          ; $4495: $5b
	ret nz                                           ; $4496: $c0

	ld bc, $01a0                                     ; $4497: $01 $a0 $01
	ld [bc], a                                       ; $449a: $02
	ld hl, $839e                                     ; $449b: $21 $9e $83
	ret nz                                           ; $449e: $c0

	dec de                                           ; $449f: $1b
	pop de                                           ; $44a0: $d1
	ld [bc], a                                       ; $44a1: $02
	ret nc                                           ; $44a2: $d0

	pop de                                           ; $44a3: $d1
	inc l                                            ; $44a4: $2c
	ret nz                                           ; $44a5: $c0

	ld bc, $03a0                                     ; $44a6: $01 $a0 $03
	ld bc, $c069                                     ; $44a9: $01 $69 $c0
	ld bc, $01a0                                     ; $44ac: $01 $a0 $01
	ld [bc], a                                       ; $44af: $02
	ld [hl-], a                                      ; $44b0: $32
	ret nz                                           ; $44b1: $c0

	ld bc, $03a0                                     ; $44b2: $01 $a0 $03
	ld [bc], a                                       ; $44b5: $02
	inc a                                            ; $44b6: $3c
	ret nz                                           ; $44b7: $c0

	ld bc, $01a0                                     ; $44b8: $01 $a0 $01
	ld [bc], a                                       ; $44bb: $02
	ld c, d                                          ; $44bc: $4a
	ret nz                                           ; $44bd: $c0

	ld bc, $03a0                                     ; $44be: $01 $a0 $03
	ld [bc], a                                       ; $44c1: $02
	ld d, h                                          ; $44c2: $54
	ret nz                                           ; $44c3: $c0

	ld bc, $01a0                                     ; $44c4: $01 $a0 $01
	ld [bc], a                                       ; $44c7: $02
	ld h, h                                          ; $44c8: $64
	ret nz                                           ; $44c9: $c0

	ld bc, $03a0                                     ; $44ca: $01 $a0 $03
	ld [bc], a                                       ; $44cd: $02
	ld [hl], b                                       ; $44ce: $70
	pop bc                                           ; $44cf: $c1
	ld e, e                                          ; $44d0: $5b
	ld [bc], a                                       ; $44d1: $02
	jp nc, $2cd3                                     ; $44d2: $d2 $d3 $2c

	ret nz                                           ; $44d5: $c0

	ld bc, $03a0                                     ; $44d6: $01 $a0 $03
	ld bc, $c069                                     ; $44d9: $01 $69 $c0
	ld bc, $01a0                                     ; $44dc: $01 $a0 $01
	ld [bc], a                                       ; $44df: $02
	ld [hl-], a                                      ; $44e0: $32
	ret nz                                           ; $44e1: $c0

	ld bc, $03a0                                     ; $44e2: $01 $a0 $03
	ld [bc], a                                       ; $44e5: $02
	ld a, c                                          ; $44e6: $79
	ret nz                                           ; $44e7: $c0

	ld bc, $01a0                                     ; $44e8: $01 $a0 $01
	ld [bc], a                                       ; $44eb: $02
	adc b                                            ; $44ec: $88
	ret nz                                           ; $44ed: $c0

	ld bc, $03a0                                     ; $44ee: $01 $a0 $03
	ld [bc], a                                       ; $44f1: $02
	sub [hl]                                         ; $44f2: $96
	ret nz                                           ; $44f3: $c0

	ld bc, $01a0                                     ; $44f4: $01 $a0 $01
	ld [bc], a                                       ; $44f7: $02
	and c                                            ; $44f8: $a1
	ret nz                                           ; $44f9: $c0

	ld bc, $03a0                                     ; $44fa: $01 $a0 $03
	ld [bc], a                                       ; $44fd: $02
	xor [hl]                                         ; $44fe: $ae
	pop bc                                           ; $44ff: $c1
	ld e, e                                          ; $4500: $5b
	ld bc, $20d4                                     ; $4501: $01 $d4 $20
	ret nz                                           ; $4504: $c0

jr_088_4505:
	ld bc, $03a0                                     ; $4505: $01 $a0 $03
	ld bc, $c069                                     ; $4508: $01 $69 $c0
	ld bc, $01a0                                     ; $450b: $01 $a0 $01
	ld [bc], a                                       ; $450e: $02
	cp b                                             ; $450f: $b8
	ret nz                                           ; $4510: $c0

	ld bc, $03a0                                     ; $4511: $01 $a0 $03
	ld [bc], a                                       ; $4514: $02
	cp h                                             ; $4515: $bc
	ret nz                                           ; $4516: $c0

	ld bc, $01a0                                     ; $4517: $01 $a0 $01
	ld [bc], a                                       ; $451a: $02
	rst JumpTable                                          ; $451b: $c7
	ret nz                                           ; $451c: $c0

	ld bc, $03a0                                     ; $451d: $01 $a0 $03
	ld [bc], a                                       ; $4520: $02
	call z, Call_088_5bc1                            ; $4521: $cc $c1 $5b
	ld bc, $14d5                                     ; $4524: $01 $d5 $14
	ret nz                                           ; $4527: $c0

	ld bc, $01a0                                     ; $4528: $01 $a0 $01
	ld [bc], a                                       ; $452b: $02
	dec bc                                           ; $452c: $0b
	ret nz                                           ; $452d: $c0

	ld bc, $03a0                                     ; $452e: $01 $a0 $03
	ld [bc], a                                       ; $4531: $02
	push de                                          ; $4532: $d5
	pop bc                                           ; $4533: $c1
	ld e, e                                          ; $4534: $5b
	ret nz                                           ; $4535: $c0

	ld bc, $01a0                                     ; $4536: $01 $a0 $01
	ld [bc], a                                       ; $4539: $02
	call c, $83b6                                    ; $453a: $dc $b6 $83
	ret nz                                           ; $453d: $c0

	dec de                                           ; $453e: $1b
	pop de                                           ; $453f: $d1
	ld [bc], a                                       ; $4540: $02
	ret nc                                           ; $4541: $d0

	pop de                                           ; $4542: $d1
	jr c, jr_088_4505                                ; $4543: $38 $c0

	ld bc, $03a0                                     ; $4545: $01 $a0 $03
	ld bc, $c069                                     ; $4548: $01 $69 $c0
	ld bc, $01a0                                     ; $454b: $01 $a0 $01
	ld [bc], a                                       ; $454e: $02
	db $ec                                           ; $454f: $ec
	ret nz                                           ; $4550: $c0

	ld bc, $03a0                                     ; $4551: $01 $a0 $03
	ld [bc], a                                       ; $4554: $02
	ldh a, [$c0]                                     ; $4555: $f0 $c0
	ld bc, $01a0                                     ; $4557: $01 $a0 $01
	ld [bc], a                                       ; $455a: $02
	db $fd                                           ; $455b: $fd
	ret nz                                           ; $455c: $c0

	ld bc, $03a0                                     ; $455d: $01 $a0 $03
	inc bc                                           ; $4560: $03
	add hl, bc                                       ; $4561: $09
	ret nz                                           ; $4562: $c0

	ld bc, $01a0                                     ; $4563: $01 $a0 $01
	inc bc                                           ; $4566: $03
	dec d                                            ; $4567: $15
	ret nz                                           ; $4568: $c0

	ld bc, $03a0                                     ; $4569: $01 $a0 $03
	inc bc                                           ; $456c: $03
	inc hl                                           ; $456d: $23
	ret nz                                           ; $456e: $c0

	ld bc, $01a0                                     ; $456f: $01 $a0 $01
	inc bc                                           ; $4572: $03
	dec hl                                           ; $4573: $2b
	ret nz                                           ; $4574: $c0

	ld bc, $03a0                                     ; $4575: $01 $a0 $03
	ld bc, wMainLoopCounter                                     ; $4578: $01 $29 $c1
	ld e, e                                          ; $457b: $5b
	ld [bc], a                                       ; $457c: $02
	jp nc, $2cd3                                     ; $457d: $d2 $d3 $2c

	ret nz                                           ; $4580: $c0

	ld bc, $03a0                                     ; $4581: $01 $a0 $03
	ld bc, $c069                                     ; $4584: $01 $69 $c0
	ld bc, $01a0                                     ; $4587: $01 $a0 $01
	inc bc                                           ; $458a: $03
	ld sp, $01c0                                     ; $458b: $31 $c0 $01
	and b                                            ; $458e: $a0
	inc bc                                           ; $458f: $03
	inc bc                                           ; $4590: $03
	inc a                                            ; $4591: $3c
	ret nz                                           ; $4592: $c0

	ld bc, $01a0                                     ; $4593: $01 $a0 $01
	inc bc                                           ; $4596: $03
	ld c, d                                          ; $4597: $4a
	ret nz                                           ; $4598: $c0

	ld bc, $03a0                                     ; $4599: $01 $a0 $03
	inc bc                                           ; $459c: $03
	ld e, l                                          ; $459d: $5d
	ret nz                                           ; $459e: $c0

	ld bc, $01a0                                     ; $459f: $01 $a0 $01
	inc bc                                           ; $45a2: $03
	ld l, b                                          ; $45a3: $68
	ret nz                                           ; $45a4: $c0

	ld bc, $03a0                                     ; $45a5: $01 $a0 $03
	inc bc                                           ; $45a8: $03
	ld [hl], l                                       ; $45a9: $75
	pop bc                                           ; $45aa: $c1
	ld e, e                                          ; $45ab: $5b
	ld bc, $2cd4                                     ; $45ac: $01 $d4 $2c
	ret nz                                           ; $45af: $c0

	ld bc, $03a0                                     ; $45b0: $01 $a0 $03
	ld bc, $c069                                     ; $45b3: $01 $69 $c0
	ld bc, $01a0                                     ; $45b6: $01 $a0 $01
	ld [bc], a                                       ; $45b9: $02
	db $ec                                           ; $45ba: $ec
	ret nz                                           ; $45bb: $c0

	ld bc, $03a0                                     ; $45bc: $01 $a0 $03
	inc bc                                           ; $45bf: $03
	ld a, [hl]                                       ; $45c0: $7e
	ret nz                                           ; $45c1: $c0

	ld bc, $01a0                                     ; $45c2: $01 $a0 $01
	inc bc                                           ; $45c5: $03
	ld c, d                                          ; $45c6: $4a
	ret nz                                           ; $45c7: $c0

	ld bc, $03a0                                     ; $45c8: $01 $a0 $03

jr_088_45cb:
	inc bc                                           ; $45cb: $03
	adc a                                            ; $45cc: $8f
	ret nz                                           ; $45cd: $c0

	ld bc, $01a0                                     ; $45ce: $01 $a0 $01
	inc bc                                           ; $45d1: $03
	ld l, b                                          ; $45d2: $68
	ret nz                                           ; $45d3: $c0

	ld bc, $03a0                                     ; $45d4: $01 $a0 $03
	ld bc, $c13a                                     ; $45d7: $01 $3a $c1
	ld e, e                                          ; $45da: $5b
	ld bc, $14d5                                     ; $45db: $01 $d5 $14
	ret nz                                           ; $45de: $c0

	ld bc, $01a0                                     ; $45df: $01 $a0 $01
	ld [bc], a                                       ; $45e2: $02
	dec bc                                           ; $45e3: $0b
	ret nz                                           ; $45e4: $c0

	ld bc, $03a0                                     ; $45e5: $01 $a0 $03
	inc bc                                           ; $45e8: $03
	sbc l                                            ; $45e9: $9d
	pop bc                                           ; $45ea: $c1
	ld e, e                                          ; $45eb: $5b
	ret nz                                           ; $45ec: $c0

	ld bc, $01a0                                     ; $45ed: $01 $a0 $01
	inc bc                                           ; $45f0: $03
	xor b                                            ; $45f1: $a8
	cp d                                             ; $45f2: $ba
	ret nz                                           ; $45f3: $c0

	ld e, $e0                                        ; $45f4: $1e $e0
	ld b, [hl]                                       ; $45f6: $46
	pop de                                           ; $45f7: $d1
	ret nz                                           ; $45f8: $c0

	jr nz, jr_088_45cb                               ; $45f9: $20 $d0

	pop de                                           ; $45fb: $d1
	ret nz                                           ; $45fc: $c0

	ld bc, $01a0                                     ; $45fd: $01 $a0 $01
	inc bc                                           ; $4600: $03
	or c                                             ; $4601: $b1
	ret nz                                           ; $4602: $c0

	ld bc, $13a0                                     ; $4603: $01 $a0 $13
	inc bc                                           ; $4606: $03
	cp h                                             ; $4607: $bc
	ret nz                                           ; $4608: $c0

	ld bc, $01a0                                     ; $4609: $01 $a0 $01
	inc bc                                           ; $460c: $03
	rst GetHLinHL                                          ; $460d: $cf
	ret nz                                           ; $460e: $c0

	add hl, bc                                       ; $460f: $09
	db $e3                                           ; $4610: $e3
	nop                                              ; $4611: $00
	ld b, $c0                                        ; $4612: $06 $c0
	and a                                            ; $4614: $a7
	pop de                                           ; $4615: $d1
	db $d3                                           ; $4616: $d3
	jp c, $a5c0                                      ; $4617: $da $c0 $a5

	ret nz                                           ; $461a: $c0

	ld bc, $03a0                                     ; $461b: $01 $a0 $03
	inc bc                                           ; $461e: $03
	pop hl                                           ; $461f: $e1
	ret nz                                           ; $4620: $c0

jr_088_4621:
	ld bc, $01a0                                     ; $4621: $01 $a0 $01
	inc bc                                           ; $4624: $03
	jp hl                                            ; $4625: $e9


	ret nz                                           ; $4626: $c0

	ld bc, $03a0                                     ; $4627: $01 $a0 $03
	inc bc                                           ; $462a: $03
	xor $c0                                          ; $462b: $ee $c0
	ld bc, $01a0                                     ; $462d: $01 $a0 $01
	inc bc                                           ; $4630: $03
	ei                                               ; $4631: $fb
	ret nz                                           ; $4632: $c0

	inc c                                            ; $4633: $0c
	ldh [$3c], a                                     ; $4634: $e0 $3c
	ret nz                                           ; $4636: $c0

	ld bc, $01a0                                     ; $4637: $01 $a0 $01
	inc b                                            ; $463a: $04
	ld a, [bc]                                       ; $463b: $0a
	ret nz                                           ; $463c: $c0

	ld bc, $03a0                                     ; $463d: $01 $a0 $03
	inc b                                            ; $4640: $04
	add hl, de                                       ; $4641: $19
	pop bc                                           ; $4642: $c1
	ld e, e                                          ; $4643: $5b
	pop bc                                           ; $4644: $c1
	ld e, c                                          ; $4645: $59
	db $e3                                           ; $4646: $e3
	nop                                              ; $4647: $00
	ld a, c                                          ; $4648: $79
	ret nz                                           ; $4649: $c0

	ld bc, $01a0                                     ; $464a: $01 $a0 $01
	inc b                                            ; $464d: $04
	dec de                                           ; $464e: $1b
	ret nz                                           ; $464f: $c0

	ld bc, $03a0                                     ; $4650: $01 $a0 $03
	inc b                                            ; $4653: $04
	inc hl                                           ; $4654: $23
	ret nz                                           ; $4655: $c0

	and l                                            ; $4656: $a5
	ret nz                                           ; $4657: $c0

	ld bc, $01a0                                     ; $4658: $01 $a0 $01
	inc b                                            ; $465b: $04
	dec h                                            ; $465c: $25
	ret nz                                           ; $465d: $c0

	ld bc, $03a0                                     ; $465e: $01 $a0 $03
	inc b                                            ; $4661: $04
	inc l                                            ; $4662: $2c
	ret nz                                           ; $4663: $c0

	ld bc, $01a0                                     ; $4664: $01 $a0 $01
	inc b                                            ; $4667: $04
	inc sp                                           ; $4668: $33
	ret nz                                           ; $4669: $c0

	ld bc, $03a0                                     ; $466a: $01 $a0 $03
	inc b                                            ; $466d: $04
	inc a                                            ; $466e: $3c
	ret nz                                           ; $466f: $c0

	ld bc, $01a0                                     ; $4670: $01 $a0 $01
	inc b                                            ; $4673: $04
	ld b, l                                          ; $4674: $45
	ret nz                                           ; $4675: $c0

	ld bc, $03a0                                     ; $4676: $01 $a0 $03
	inc b                                            ; $4679: $04
	ld d, e                                          ; $467a: $53
	ret nz                                           ; $467b: $c0

	ld bc, $01a0                                     ; $467c: $01 $a0 $01
	inc b                                            ; $467f: $04
	ld h, h                                          ; $4680: $64
	ret nz                                           ; $4681: $c0

	set 0, c                                         ; $4682: $cb $c1
	ld e, e                                          ; $4684: $5b
	ret nz                                           ; $4685: $c0

	ld bc, $01a0                                     ; $4686: $01 $a0 $01
	inc b                                            ; $4689: $04
	ld l, a                                          ; $468a: $6f
	ret nz                                           ; $468b: $c0

	ld bc, $01a0                                     ; $468c: $01 $a0 $01
	inc b                                            ; $468f: $04
	ld a, b                                          ; $4690: $78
	pop bc                                           ; $4691: $c1
	dec b                                            ; $4692: $05
	ld bc, $0080                                     ; $4693: $01 $80 $00
	ld l, l                                          ; $4696: $6d
	add b                                            ; $4697: $80
	nop                                              ; $4698: $00
	ld l, [hl]                                       ; $4699: $6e
	nop                                              ; $469a: $00
	add b                                            ; $469b: $80
	nop                                              ; $469c: $00
	ld [hl], l                                       ; $469d: $75
	jr nz, jr_088_4621                               ; $469e: $20 $81

	ld bc, $c0a6                                     ; $46a0: $01 $a6 $c0
	sbc e                                            ; $46a3: $9b
	pop de                                           ; $46a4: $d1
	ret nz                                           ; $46a5: $c0

	ret nz                                           ; $46a6: $c0

	pop de                                           ; $46a7: $d1
	ret nz                                           ; $46a8: $c0

	ld e, $e0                                        ; $46a9: $1e $e0
	jr z, @-$2d                                      ; $46ab: $28 $d1

	add hl, bc                                       ; $46ad: $09
	ld c, d                                          ; $46ae: $4a
	ret nz                                           ; $46af: $c0

	and a                                            ; $46b0: $a7
	pop de                                           ; $46b1: $d1
	db $d3                                           ; $46b2: $d3
	db $d3                                           ; $46b3: $d3
	ret nz                                           ; $46b4: $c0

	and l                                            ; $46b5: $a5
	ret nz                                           ; $46b6: $c0

	ld bc, $03a0                                     ; $46b7: $01 $a0 $03
	inc b                                            ; $46ba: $04
	adc e                                            ; $46bb: $8b

jr_088_46bc:
	ret nz                                           ; $46bc: $c0

	ld bc, $01a0                                     ; $46bd: $01 $a0 $01
	inc b                                            ; $46c0: $04
	sub a                                            ; $46c1: $97
	ret nz                                           ; $46c2: $c0

	ld bc, $03a0                                     ; $46c3: $01 $a0 $03
	inc b                                            ; $46c6: $04
	sbc h                                            ; $46c7: $9c
	ret nz                                           ; $46c8: $c0

	ld bc, $01a0                                     ; $46c9: $01 $a0 $01
	inc b                                            ; $46cc: $04
	and h                                            ; $46cd: $a4
	ret nz                                           ; $46ce: $c0

	set 0, c                                         ; $46cf: $cb $c1
	ld e, e                                          ; $46d1: $5b
	ret nz                                           ; $46d2: $c0

	inc c                                            ; $46d3: $0c
	ldh [$28], a                                     ; $46d4: $e0 $28
	ret nz                                           ; $46d6: $c0

	inc b                                            ; $46d7: $04
	ret nz                                           ; $46d8: $c0

	rrca                                             ; $46d9: $0f
	db $e3                                           ; $46da: $e3
	nop                                              ; $46db: $00
	halt                                             ; $46dc: $76
	ret nz                                           ; $46dd: $c0

	nop                                              ; $46de: $00
	inc b                                            ; $46df: $04
	or e                                             ; $46e0: $b3
	pop bc                                           ; $46e1: $c1
	dec b                                            ; $46e2: $05
	ret nz                                           ; $46e3: $c0

	ld bc, $01a0                                     ; $46e4: $01 $a0 $01
	inc b                                            ; $46e7: $04
	or [hl]                                          ; $46e8: $b6
	ret nz                                           ; $46e9: $c0

	jr nz, jr_088_46bc                               ; $46ea: $20 $d0

	pop de                                           ; $46ec: $d1
	pop bc                                           ; $46ed: $c1
	ld l, e                                          ; $46ee: $6b
	rst SubAFromHL                                          ; $46ef: $d7
	pop de                                           ; $46f0: $d1
	ret nz                                           ; $46f1: $c0

	rst GetHLinHL                                          ; $46f2: $cf
	ldh [rIE], a                                     ; $46f3: $e0 $ff
	push hl                                          ; $46f5: $e5
	ld d, a                                          ; $46f6: $57
	nop                                              ; $46f7: $00
	xor d                                            ; $46f8: $aa
	add c                                            ; $46f9: $81
	ld [$4c09], sp                                   ; $46fa: $08 $09 $4c
	ld h, b                                          ; $46fd: $60
	add b                                            ; $46fe: $80
	nop                                              ; $46ff: $00
	ld l, a                                          ; $4700: $6f
	ld a, [hl-]                                      ; $4701: $3a
	pop bc                                           ; $4702: $c1
	ld e, c                                          ; $4703: $59
	db $e3                                           ; $4704: $e3
	nop                                              ; $4705: $00
	ld b, d                                          ; $4706: $42
	ret nz                                           ; $4707: $c0

	add hl, bc                                       ; $4708: $09
	db $e3                                           ; $4709: $e3
	nop                                              ; $470a: $00
	dec b                                            ; $470b: $05
	pop hl                                           ; $470c: $e1
	ld [bc], a                                       ; $470d: $02
	ld bc, $6380                                     ; $470e: $01 $80 $63
	ei                                               ; $4711: $fb
	ret nz                                           ; $4712: $c0

	ld b, a                                          ; $4713: $47
	pop hl                                           ; $4714: $e1
	ld bc, $0364                                     ; $4715: $01 $64 $03
	ldh [rSC], a                                     ; $4718: $e0 $02
	sub h                                            ; $471a: $94
	ei                                               ; $471b: $fb
	ret nz                                           ; $471c: $c0

	ld b, a                                          ; $471d: $47
	ldh [$c8], a                                     ; $471e: $e0 $c8
	inc bc                                           ; $4720: $03
	ldh [rSB], a                                     ; $4721: $e0 $01
	cp $fb                                           ; $4723: $fe $fb
	ret nz                                           ; $4725: $c0

	ld b, a                                          ; $4726: $47
	ldh [$64], a                                     ; $4727: $e0 $64
	inc bc                                           ; $4729: $03
	ldh [rSB], a                                     ; $472a: $e0 $01
	ld l, b                                          ; $472c: $68
	ei                                               ; $472d: $fb
	ret nz                                           ; $472e: $c0

	ld b, a                                          ; $472f: $47
	ldh [$32], a                                     ; $4730: $e0 $32
	inc bc                                           ; $4732: $03
	ldh [rP1], a                                     ; $4733: $e0 $00
	call z, $e003                                    ; $4735: $cc $03 $e0
	nop                                              ; $4738: $00
	ld de, $05c1                                     ; $4739: $11 $c1 $05
	ld [$59c1], sp                                   ; $473c: $08 $c1 $59
	db $e3                                           ; $473f: $e3
	nop                                              ; $4740: $00
	ld a, b                                          ; $4741: $78
	ldh [$03], a                                     ; $4742: $e0 $03
	rrca                                             ; $4744: $0f
	push hl                                          ; $4745: $e5
	ld d, a                                          ; $4746: $57
	nop                                              ; $4747: $00
	ld l, l                                          ; $4748: $6d
	or [hl]                                          ; $4749: $b6
	add e                                            ; $474a: $83
	ret nz                                           ; $474b: $c0

	dec de                                           ; $474c: $1b
	jp nc, $d002                                     ; $474d: $d2 $02 $d0

	pop de                                           ; $4750: $d1
	ld a, $c0                                        ; $4751: $3e $c0
	ld bc, $04a0                                     ; $4753: $01 $a0 $04
	nop                                              ; $4756: $00
	ld bc, $01c0                                     ; $4757: $01 $c0 $01
	and b                                            ; $475a: $a0
	ld bc, $0500                                     ; $475b: $01 $00 $05
	ret nz                                           ; $475e: $c0

	ld bc, $04a0                                     ; $475f: $01 $a0 $04
	nop                                              ; $4762: $00
	dec d                                            ; $4763: $15
	ret nz                                           ; $4764: $c0

	ld bc, $01a0                                     ; $4765: $01 $a0 $01
	nop                                              ; $4768: $00
	ld e, $c0                                        ; $4769: $1e $c0
	ld bc, $04a0                                     ; $476b: $01 $a0 $04
	nop                                              ; $476e: $00
	jr nc, @-$3e                                     ; $476f: $30 $c0

	ld bc, $01a0                                     ; $4771: $01 $a0 $01
	nop                                              ; $4774: $00
	ld a, [hl-]                                      ; $4775: $3a
	ret nz                                           ; $4776: $c0

	ld bc, $04a0                                     ; $4777: $01 $a0 $04
	nop                                              ; $477a: $00
	ld b, e                                          ; $477b: $43
	ret nz                                           ; $477c: $c0

	ld bc, $01a0                                     ; $477d: $01 $a0 $01
	nop                                              ; $4780: $00
	ld c, e                                          ; $4781: $4b
	ret nz                                           ; $4782: $c0

	ld bc, $04a0                                     ; $4783: $01 $a0 $04
	nop                                              ; $4786: $00
	ld d, c                                          ; $4787: $51
	ret nz                                           ; $4788: $c0

	ld bc, $01a0                                     ; $4789: $01 $a0 $01
	nop                                              ; $478c: $00
	ld d, [hl]                                       ; $478d: $56
	pop bc                                           ; $478e: $c1
	ld e, e                                          ; $478f: $5b
	ld [bc], a                                       ; $4790: $02
	jp nc, $32d3                                     ; $4791: $d2 $d3 $32

	ret nz                                           ; $4794: $c0

	ld bc, $04a0                                     ; $4795: $01 $a0 $04
	nop                                              ; $4798: $00
	ld bc, $01c0                                     ; $4799: $01 $c0 $01
	and b                                            ; $479c: $a0
	ld bc, $0500                                     ; $479d: $01 $00 $05
	ret nz                                           ; $47a0: $c0

	ld bc, $04a0                                     ; $47a1: $01 $a0 $04
	nop                                              ; $47a4: $00
	ld e, d                                          ; $47a5: $5a
	ret nz                                           ; $47a6: $c0

	ld bc, $01a0                                     ; $47a7: $01 $a0 $01
	nop                                              ; $47aa: $00
	ld h, a                                          ; $47ab: $67
	ret nz                                           ; $47ac: $c0

	ld bc, $04a0                                     ; $47ad: $01 $a0 $04
	nop                                              ; $47b0: $00
	ld [hl], b                                       ; $47b1: $70
	ret nz                                           ; $47b2: $c0

	ld bc, $01a0                                     ; $47b3: $01 $a0 $01
	nop                                              ; $47b6: $00
	ld a, h                                          ; $47b7: $7c
	ret nz                                           ; $47b8: $c0

	ld bc, $04a0                                     ; $47b9: $01 $a0 $04
	nop                                              ; $47bc: $00
	add l                                            ; $47bd: $85
	pop bc                                           ; $47be: $c1
	ld e, e                                          ; $47bf: $5b
	ret nz                                           ; $47c0: $c0

	ld bc, $01a0                                     ; $47c1: $01 $a0 $01
	nop                                              ; $47c4: $00
	adc d                                            ; $47c5: $8a
	ld bc, $20d4                                     ; $47c6: $01 $d4 $20
	ret nz                                           ; $47c9: $c0

	ld bc, $04a0                                     ; $47ca: $01 $a0 $04
	nop                                              ; $47cd: $00
	ld bc, $01c0                                     ; $47ce: $01 $c0 $01
	and b                                            ; $47d1: $a0
	ld bc, $0500                                     ; $47d2: $01 $00 $05
	ret nz                                           ; $47d5: $c0

	ld bc, $04a0                                     ; $47d6: $01 $a0 $04
	nop                                              ; $47d9: $00
	adc [hl]                                         ; $47da: $8e
	ret nz                                           ; $47db: $c0

	ld bc, $01a0                                     ; $47dc: $01 $a0 $01
	nop                                              ; $47df: $00
	ld h, a                                          ; $47e0: $67
	ret nz                                           ; $47e1: $c0

	ld bc, $04a0                                     ; $47e2: $01 $a0 $04
	nop                                              ; $47e5: $00
	sbc c                                            ; $47e6: $99
	pop bc                                           ; $47e7: $c1
	ld e, e                                          ; $47e8: $5b
	ld bc, $14d5                                     ; $47e9: $01 $d5 $14
	ret nz                                           ; $47ec: $c0

	ld bc, $01a0                                     ; $47ed: $01 $a0 $01
	nop                                              ; $47f0: $00
	and a                                            ; $47f1: $a7
	ret nz                                           ; $47f2: $c0

	ld bc, $04a0                                     ; $47f3: $01 $a0 $04
	nop                                              ; $47f6: $00
	or e                                             ; $47f7: $b3
	pop bc                                           ; $47f8: $c1
	ld e, e                                          ; $47f9: $5b
	ret nz                                           ; $47fa: $c0

	ld bc, $01a0                                     ; $47fb: $01 $a0 $01
	nop                                              ; $47fe: $00
	cp a                                             ; $47ff: $bf
	sub d                                            ; $4800: $92
	ret nz                                           ; $4801: $c0

	ld bc, $01a0                                     ; $4802: $01 $a0 $01
	nop                                              ; $4805: $00
	ret z                                            ; $4806: $c8

	add e                                            ; $4807: $83
	ret nz                                           ; $4808: $c0

	dec de                                           ; $4809: $1b
	jp nc, $d002                                     ; $480a: $d2 $02 $d0

	pop de                                           ; $480d: $d1
	ld h, $c0                                        ; $480e: $26 $c0
	ld bc, $04a0                                     ; $4810: $01 $a0 $04
	nop                                              ; $4813: $00
	rst SubAFromHL                                          ; $4814: $d7
	ret nz                                           ; $4815: $c0

	ld bc, $01a0                                     ; $4816: $01 $a0 $01
	nop                                              ; $4819: $00
	db $e4                                           ; $481a: $e4
	ret nz                                           ; $481b: $c0

	ld bc, $04a0                                     ; $481c: $01 $a0 $04
	nop                                              ; $481f: $00
	and $c0                                          ; $4820: $e6 $c0
	ld bc, $01a0                                     ; $4822: $01 $a0 $01
	nop                                              ; $4825: $00
	push af                                          ; $4826: $f5
	ret nz                                           ; $4827: $c0

	ld bc, $04a0                                     ; $4828: $01 $a0 $04
	ld bc, $c001                                     ; $482b: $01 $01 $c0
	ld bc, $01a0                                     ; $482e: $01 $a0 $01
	ld bc, $c110                                     ; $4831: $01 $10 $c1
	ld e, e                                          ; $4834: $5b
	ld [bc], a                                       ; $4835: $02
	jp nc, $26d3                                     ; $4836: $d2 $d3 $26

	ret nz                                           ; $4839: $c0

	ld bc, $04a0                                     ; $483a: $01 $a0 $04
	ld bc, $c016                                     ; $483d: $01 $16 $c0
	ld bc, $01a0                                     ; $4840: $01 $a0 $01
	ld bc, $c025                                     ; $4843: $01 $25 $c0
	ld bc, $04a0                                     ; $4846: $01 $a0 $04
	ld bc, $c029                                     ; $4849: $01 $29 $c0
	ld bc, $01a0                                     ; $484c: $01 $a0 $01
	ld bc, $c035                                     ; $484f: $01 $35 $c0
	ld bc, $04a0                                     ; $4852: $01 $a0 $04
	ld bc, $c03f                                     ; $4855: $01 $3f $c0
	ld bc, $01a0                                     ; $4858: $01 $a0 $01
	ld bc, $c14b                                     ; $485b: $01 $4b $c1
	ld e, e                                          ; $485e: $5b
	ld bc, $20d4                                     ; $485f: $01 $d4 $20
	ret nz                                           ; $4862: $c0

	ld bc, $04a0                                     ; $4863: $01 $a0 $04
	ld bc, $c052                                     ; $4866: $01 $52 $c0
	ld bc, $01a0                                     ; $4869: $01 $a0 $01
	ld bc, $c05f                                     ; $486c: $01 $5f $c0
	ld bc, $04a0                                     ; $486f: $01 $a0 $04
	ld bc, $c067                                     ; $4872: $01 $67 $c0
	ld bc, $01a0                                     ; $4875: $01 $a0 $01
	ld bc, $c072                                     ; $4878: $01 $72 $c0
	ld bc, $04a0                                     ; $487b: $01 $a0 $04
	ld bc, $c181                                     ; $487e: $01 $81 $c1
	ld e, e                                          ; $4881: $5b
	ld bc, $0ed5                                     ; $4882: $01 $d5 $0e
	ret nz                                           ; $4885: $c0

	ld bc, $04a0                                     ; $4886: $01 $a0 $04
	ld bc, $c18c                                     ; $4889: $01 $8c $c1
	ld e, e                                          ; $488c: $5b
	ret nz                                           ; $488d: $c0

	ld bc, $01a0                                     ; $488e: $01 $a0 $01
	ld bc, $8c99                                     ; $4891: $01 $99 $8c
	ret nz                                           ; $4894: $c0

	ld bc, $01a0                                     ; $4895: $01 $a0 $01
	ld bc, $83a3                                     ; $4898: $01 $a3 $83
	ret nz                                           ; $489b: $c0

	dec de                                           ; $489c: $1b
	jp nc, $d002                                     ; $489d: $d2 $02 $d0

	pop de                                           ; $48a0: $d1
	ld h, $c0                                        ; $48a1: $26 $c0
	ld bc, $04a0                                     ; $48a3: $01 $a0 $04
	ld bc, $c0b4                                     ; $48a6: $01 $b4 $c0
	ld bc, $01a0                                     ; $48a9: $01 $a0 $01
	ld bc, $c0c6                                     ; $48ac: $01 $c6 $c0
	ld bc, $04a0                                     ; $48af: $01 $a0 $04
	ld bc, $c0ce                                     ; $48b2: $01 $ce $c0
	ld bc, $01a0                                     ; $48b5: $01 $a0 $01
	ld bc, $c0d6                                     ; $48b8: $01 $d6 $c0
	ld bc, $04a0                                     ; $48bb: $01 $a0 $04
	ld bc, $c0df                                     ; $48be: $01 $df $c0
	ld bc, $01a0                                     ; $48c1: $01 $a0 $01
	ld bc, $c1eb                                     ; $48c4: $01 $eb $c1
	ld e, e                                          ; $48c7: $5b
	ld [bc], a                                       ; $48c8: $02
	jp nc, $26d3                                     ; $48c9: $d2 $d3 $26

	ret nz                                           ; $48cc: $c0

	ld bc, $04a0                                     ; $48cd: $01 $a0 $04
	ld bc, $c0f6                                     ; $48d0: $01 $f6 $c0
	ld bc, $01a0                                     ; $48d3: $01 $a0 $01
	ld bc, $c0c6                                     ; $48d6: $01 $c6 $c0
	ld bc, $04a0                                     ; $48d9: $01 $a0 $04
	ld [bc], a                                       ; $48dc: $02
	dec b                                            ; $48dd: $05
	ret nz                                           ; $48de: $c0

	ld bc, $01a0                                     ; $48df: $01 $a0 $01
	ld [bc], a                                       ; $48e2: $02
	ld d, $c0                                        ; $48e3: $16 $c0
	ld bc, $04a0                                     ; $48e5: $01 $a0 $04
	ld [bc], a                                       ; $48e8: $02
	jr nz, @-$3e                                     ; $48e9: $20 $c0

	ld bc, $01a0                                     ; $48eb: $01 $a0 $01
	ld [bc], a                                       ; $48ee: $02
	ld a, [hl+]                                      ; $48ef: $2a
	pop bc                                           ; $48f0: $c1
	ld e, e                                          ; $48f1: $5b
	ld bc, $1ad4                                     ; $48f2: $01 $d4 $1a
	ret nz                                           ; $48f5: $c0

	ld bc, $04a0                                     ; $48f6: $01 $a0 $04
	ld [bc], a                                       ; $48f9: $02
	ld [hl-], a                                      ; $48fa: $32
	ret nz                                           ; $48fb: $c0

	ld bc, $01a0                                     ; $48fc: $01 $a0 $01
	ld bc, $c0c6                                     ; $48ff: $01 $c6 $c0
	ld bc, $04a0                                     ; $4902: $01 $a0 $04
	ld [bc], a                                       ; $4905: $02
	ld b, b                                          ; $4906: $40
	ret nz                                           ; $4907: $c0

	ld bc, $01a0                                     ; $4908: $01 $a0 $01
	ld [bc], a                                       ; $490b: $02
	ld d, c                                          ; $490c: $51
	pop bc                                           ; $490d: $c1
	ld e, e                                          ; $490e: $5b
	ld bc, $0ed5                                     ; $490f: $01 $d5 $0e
	ret nz                                           ; $4912: $c0

	ld bc, $04a0                                     ; $4913: $01 $a0 $04
	ld [bc], a                                       ; $4916: $02
	ld e, b                                          ; $4917: $58
	pop bc                                           ; $4918: $c1
	ld e, e                                          ; $4919: $5b
	ret nz                                           ; $491a: $c0

	ld bc, $01a0                                     ; $491b: $01 $a0 $01
	ld [bc], a                                       ; $491e: $02
	ld h, h                                          ; $491f: $64
	adc h                                            ; $4920: $8c
	add e                                            ; $4921: $83
	ret nz                                           ; $4922: $c0

	dec de                                           ; $4923: $1b
	jp nc, $d002                                     ; $4924: $d2 $02 $d0

	pop de                                           ; $4927: $d1
	jr nz, @-$3e                                     ; $4928: $20 $c0

	ld bc, $04a0                                     ; $492a: $01 $a0 $04
	ld [bc], a                                       ; $492d: $02
	ld l, h                                          ; $492e: $6c
	ret nz                                           ; $492f: $c0

	ld bc, $01a0                                     ; $4930: $01 $a0 $01
	ld [bc], a                                       ; $4933: $02
	ld [hl], a                                       ; $4934: $77
	ret nz                                           ; $4935: $c0

	ld bc, $04a0                                     ; $4936: $01 $a0 $04
	ld [bc], a                                       ; $4939: $02
	adc c                                            ; $493a: $89
	ret nz                                           ; $493b: $c0

	ld bc, $01a0                                     ; $493c: $01 $a0 $01
	ld [bc], a                                       ; $493f: $02
	sbc b                                            ; $4940: $98
	ret nz                                           ; $4941: $c0

	ld bc, $04a0                                     ; $4942: $01 $a0 $04
	ld [bc], a                                       ; $4945: $02
	and l                                            ; $4946: $a5
	pop bc                                           ; $4947: $c1
	ld e, e                                          ; $4948: $5b
	ld [bc], a                                       ; $4949: $02
	jp nc, $2cd3                                     ; $494a: $d2 $d3 $2c

	ret nz                                           ; $494d: $c0

	ld bc, $04a0                                     ; $494e: $01 $a0 $04
	ld [bc], a                                       ; $4951: $02
	xor e                                            ; $4952: $ab
	ret nz                                           ; $4953: $c0

	ld bc, $01a0                                     ; $4954: $01 $a0 $01
	ld [bc], a                                       ; $4957: $02
	ld [hl], a                                       ; $4958: $77
	ret nz                                           ; $4959: $c0

	ld bc, $04a0                                     ; $495a: $01 $a0 $04
	ld [bc], a                                       ; $495d: $02
	or e                                             ; $495e: $b3
	ret nz                                           ; $495f: $c0

	ld bc, $01a0                                     ; $4960: $01 $a0 $01
	ld [bc], a                                       ; $4963: $02
	cp h                                             ; $4964: $bc
	ret nz                                           ; $4965: $c0

	ld bc, $04a0                                     ; $4966: $01 $a0 $04
	ld [bc], a                                       ; $4969: $02
	add $c0                                          ; $496a: $c6 $c0
	ld bc, $01a0                                     ; $496c: $01 $a0 $01
	ld [bc], a                                       ; $496f: $02
	rst GetHLinHL                                          ; $4970: $cf
	ret nz                                           ; $4971: $c0

	ld bc, $04a0                                     ; $4972: $01 $a0 $04
	ld [bc], a                                       ; $4975: $02
	rst SubAFromHL                                          ; $4976: $d7
	pop bc                                           ; $4977: $c1
	ld e, e                                          ; $4978: $5b
	ld bc, $1ad4                                     ; $4979: $01 $d4 $1a
	ret nz                                           ; $497c: $c0

	ld bc, $04a0                                     ; $497d: $01 $a0 $04
	ld [bc], a                                       ; $4980: $02
	xor e                                            ; $4981: $ab
	ret nz                                           ; $4982: $c0

	ld bc, $01a0                                     ; $4983: $01 $a0 $01
	ld [bc], a                                       ; $4986: $02
	ld [hl], a                                       ; $4987: $77
	ret nz                                           ; $4988: $c0

	ld bc, $04a0                                     ; $4989: $01 $a0 $04
	ld [bc], a                                       ; $498c: $02
	rst SubAFromHL                                          ; $498d: $d7
	ret nz                                           ; $498e: $c0

	ld bc, $01a0                                     ; $498f: $01 $a0 $01
	ld [bc], a                                       ; $4992: $02
	sbc $c1                                          ; $4993: $de $c1
	ld e, e                                          ; $4995: $5b
	ld bc, $14d5                                     ; $4996: $01 $d5 $14
	ret nz                                           ; $4999: $c0

	ld bc, $01a0                                     ; $499a: $01 $a0 $01
	ld [bc], a                                       ; $499d: $02
	and $c0                                          ; $499e: $e6 $c0
	ld bc, $04a0                                     ; $49a0: $01 $a0 $04
	ld [bc], a                                       ; $49a3: $02
	di                                               ; $49a4: $f3
	pop bc                                           ; $49a5: $c1
	ld e, e                                          ; $49a6: $5b
	ret nz                                           ; $49a7: $c0

	ld bc, $01a0                                     ; $49a8: $01 $a0 $01
	ld [bc], a                                       ; $49ab: $02
	db $fc                                           ; $49ac: $fc
	and h                                            ; $49ad: $a4
	add e                                            ; $49ae: $83
	ret nz                                           ; $49af: $c0

	dec de                                           ; $49b0: $1b
	jp nc, $d002                                     ; $49b1: $d2 $02 $d0

	pop de                                           ; $49b4: $d1
	inc l                                            ; $49b5: $2c
	ret nz                                           ; $49b6: $c0

	ld bc, $04a0                                     ; $49b7: $01 $a0 $04
	inc bc                                           ; $49ba: $03
	dec b                                            ; $49bb: $05
	ret nz                                           ; $49bc: $c0

	ld bc, $01a0                                     ; $49bd: $01 $a0 $01
	inc bc                                           ; $49c0: $03
	ld de, $01c0                                     ; $49c1: $11 $c0 $01
	and b                                            ; $49c4: $a0
	inc b                                            ; $49c5: $04
	inc bc                                           ; $49c6: $03
	ld a, [de]                                       ; $49c7: $1a
	ret nz                                           ; $49c8: $c0

	ld bc, $01a0                                     ; $49c9: $01 $a0 $01
	inc bc                                           ; $49cc: $03
	ld [hl+], a                                      ; $49cd: $22
	ret nz                                           ; $49ce: $c0

	ld bc, $04a0                                     ; $49cf: $01 $a0 $04
	inc bc                                           ; $49d2: $03
	dec l                                            ; $49d3: $2d
	ret nz                                           ; $49d4: $c0

	ld bc, $01a0                                     ; $49d5: $01 $a0 $01
	inc bc                                           ; $49d8: $03
	dec sp                                           ; $49d9: $3b
	ret nz                                           ; $49da: $c0

	ld bc, $04a0                                     ; $49db: $01 $a0 $04
	inc bc                                           ; $49de: $03
	ld c, h                                          ; $49df: $4c
	pop bc                                           ; $49e0: $c1
	ld e, e                                          ; $49e1: $5b
	ld [bc], a                                       ; $49e2: $02
	jp nc, $2cd3                                     ; $49e3: $d2 $d3 $2c

	ret nz                                           ; $49e6: $c0

	ld bc, $04a0                                     ; $49e7: $01 $a0 $04
	inc bc                                           ; $49ea: $03
	ld d, h                                          ; $49eb: $54
	ret nz                                           ; $49ec: $c0

	ld bc, $01a0                                     ; $49ed: $01 $a0 $01
	inc bc                                           ; $49f0: $03
	ld de, $01c0                                     ; $49f1: $11 $c0 $01
	and b                                            ; $49f4: $a0
	inc b                                            ; $49f5: $04
	inc bc                                           ; $49f6: $03
	ld e, [hl]                                       ; $49f7: $5e
	ret nz                                           ; $49f8: $c0

	ld bc, $01a0                                     ; $49f9: $01 $a0 $01
	inc bc                                           ; $49fc: $03
	ld [hl+], a                                      ; $49fd: $22
	ret nz                                           ; $49fe: $c0

	ld bc, $04a0                                     ; $49ff: $01 $a0 $04
	inc bc                                           ; $4a02: $03
	ld h, l                                          ; $4a03: $65
	ret nz                                           ; $4a04: $c0

	ld bc, $01a0                                     ; $4a05: $01 $a0 $01
	inc bc                                           ; $4a08: $03

Jump_088_4a09:
	ld l, e                                          ; $4a09: $6b
	ret nz                                           ; $4a0a: $c0

	ld bc, $04a0                                     ; $4a0b: $01 $a0 $04
	inc bc                                           ; $4a0e: $03
	ld c, h                                          ; $4a0f: $4c
	pop bc                                           ; $4a10: $c1
	ld e, e                                          ; $4a11: $5b
	ld bc, $26d4                                     ; $4a12: $01 $d4 $26
	ret nz                                           ; $4a15: $c0

	ld bc, $04a0                                     ; $4a16: $01 $a0 $04
	inc bc                                           ; $4a19: $03
	ld d, h                                          ; $4a1a: $54
	ret nz                                           ; $4a1b: $c0

	ld bc, $01a0                                     ; $4a1c: $01 $a0 $01
	inc bc                                           ; $4a1f: $03
	ld de, $01c0                                     ; $4a20: $11 $c0 $01
	and b                                            ; $4a23: $a0
	inc b                                            ; $4a24: $04
	inc bc                                           ; $4a25: $03
	ld e, [hl]                                       ; $4a26: $5e
	ret nz                                           ; $4a27: $c0

	ld bc, $01a0                                     ; $4a28: $01 $a0 $01
	inc bc                                           ; $4a2b: $03
	ld [hl+], a                                      ; $4a2c: $22
	ret nz                                           ; $4a2d: $c0

	ld bc, $04a0                                     ; $4a2e: $01 $a0 $04
	inc bc                                           ; $4a31: $03
	ld a, c                                          ; $4a32: $79
	ret nz                                           ; $4a33: $c0

	ld bc, $01a0                                     ; $4a34: $01 $a0 $01
	inc bc                                           ; $4a37: $03
	add d                                            ; $4a38: $82
	pop bc                                           ; $4a39: $c1
	ld e, e                                          ; $4a3a: $5b
	ld bc, $14d5                                     ; $4a3b: $01 $d5 $14
	ret nz                                           ; $4a3e: $c0

	ld bc, $01a0                                     ; $4a3f: $01 $a0 $01
	inc bc                                           ; $4a42: $03
	adc e                                            ; $4a43: $8b
	ret nz                                           ; $4a44: $c0

	ld bc, $04a0                                     ; $4a45: $01 $a0 $04
	inc bc                                           ; $4a48: $03
	sbc b                                            ; $4a49: $98
	pop bc                                           ; $4a4a: $c1
	ld e, e                                          ; $4a4b: $5b
	ret nz                                           ; $4a4c: $c0

	ld bc, $01a0                                     ; $4a4d: $01 $a0 $01
	inc bc                                           ; $4a50: $03
	sbc a                                            ; $4a51: $9f
	cp d                                             ; $4a52: $ba
	ret nz                                           ; $4a53: $c0

	ld e, $e0                                        ; $4a54: $1e $e0
	ld b, [hl]                                       ; $4a56: $46
	jp nc, $20c0                                     ; $4a57: $d2 $c0 $20

	ret nc                                           ; $4a5a: $d0

	jp nc, $01c0                                     ; $4a5b: $d2 $c0 $01

	and b                                            ; $4a5e: $a0
	ld bc, $a703                                     ; $4a5f: $01 $03 $a7
	ret nz                                           ; $4a62: $c0

	ld bc, $13a0                                     ; $4a63: $01 $a0 $13
	inc bc                                           ; $4a66: $03
	or d                                             ; $4a67: $b2
	ret nz                                           ; $4a68: $c0

	ld bc, $01a0                                     ; $4a69: $01 $a0 $01
	inc bc                                           ; $4a6c: $03
	push bc                                          ; $4a6d: $c5
	ret nz                                           ; $4a6e: $c0

	add hl, bc                                       ; $4a6f: $09
	db $e3                                           ; $4a70: $e3
	nop                                              ; $4a71: $00
	dec b                                            ; $4a72: $05
	ret nz                                           ; $4a73: $c0

	and a                                            ; $4a74: $a7
	jp nc, $dad3                                     ; $4a75: $d2 $d3 $da

	ret nz                                           ; $4a78: $c0

	and l                                            ; $4a79: $a5
	ret nz                                           ; $4a7a: $c0

	ld bc, $17a0                                     ; $4a7b: $01 $a0 $17
	inc bc                                           ; $4a7e: $03
	sub $c0                                          ; $4a7f: $d6 $c0

jr_088_4a81:
	ld bc, $01a0                                     ; $4a81: $01 $a0 $01
	inc bc                                           ; $4a84: $03
	call c, $01c0                                    ; $4a85: $dc $c0 $01
	and b                                            ; $4a88: $a0
	rla                                              ; $4a89: $17
	inc bc                                           ; $4a8a: $03
	pop hl                                           ; $4a8b: $e1
	ret nz                                           ; $4a8c: $c0

	ld bc, $01a0                                     ; $4a8d: $01 $a0 $01
	inc bc                                           ; $4a90: $03
	push hl                                          ; $4a91: $e5
	ret nz                                           ; $4a92: $c0

	inc c                                            ; $4a93: $0c
	ldh [$3c], a                                     ; $4a94: $e0 $3c
	ret nz                                           ; $4a96: $c0

	ld bc, $01a0                                     ; $4a97: $01 $a0 $01
	inc bc                                           ; $4a9a: $03
	ldh a, [$c0]                                     ; $4a9b: $f0 $c0
	ld bc, $04a0                                     ; $4a9d: $01 $a0 $04
	inc bc                                           ; $4aa0: $03
	rst $38                                          ; $4aa1: $ff
	pop bc                                           ; $4aa2: $c1
	ld e, e                                          ; $4aa3: $5b
	pop bc                                           ; $4aa4: $c1
	ld e, c                                          ; $4aa5: $59
	db $e3                                           ; $4aa6: $e3
	nop                                              ; $4aa7: $00
	ld a, c                                          ; $4aa8: $79
	ret nz                                           ; $4aa9: $c0

	ld bc, $01a0                                     ; $4aaa: $01 $a0 $01
	inc b                                            ; $4aad: $04
	nop                                              ; $4aae: $00
	ret nz                                           ; $4aaf: $c0

	ld bc, $04a0                                     ; $4ab0: $01 $a0 $04
	inc b                                            ; $4ab3: $04
	ld [$5cc1], sp                                   ; $4ab4: $08 $c1 $5c
	ret nz                                           ; $4ab7: $c0

	ld bc, $01a0                                     ; $4ab8: $01 $a0 $01
	inc b                                            ; $4abb: $04
	ld a, [bc]                                       ; $4abc: $0a
	ret nz                                           ; $4abd: $c0

	ld bc, $04a0                                     ; $4abe: $01 $a0 $04
	inc b                                            ; $4ac1: $04
	ld de, $01c0                                     ; $4ac2: $11 $c0 $01
	and b                                            ; $4ac5: $a0
	ld bc, $1504                                     ; $4ac6: $01 $04 $15
	ret nz                                           ; $4ac9: $c0

	ld bc, $04a0                                     ; $4aca: $01 $a0 $04
	inc b                                            ; $4acd: $04
	inc e                                            ; $4ace: $1c
	ret nz                                           ; $4acf: $c0

	ld bc, $01a0                                     ; $4ad0: $01 $a0 $01
	inc b                                            ; $4ad3: $04
	ld l, $c0                                        ; $4ad4: $2e $c0
	ld bc, $04a0                                     ; $4ad6: $01 $a0 $04
	inc b                                            ; $4ad9: $04
	dec sp                                           ; $4ada: $3b
	pop bc                                           ; $4adb: $c1
	ld e, e                                          ; $4adc: $5b
	ret nz                                           ; $4add: $c0

	ld bc, $01a0                                     ; $4ade: $01 $a0 $01
	inc b                                            ; $4ae1: $04
	ld b, d                                          ; $4ae2: $42
	ret nz                                           ; $4ae3: $c0

	set 0, b                                         ; $4ae4: $cb $c0
	ld bc, $01a0                                     ; $4ae6: $01 $a0 $01
	inc b                                            ; $4ae9: $04
	ld c, h                                          ; $4aea: $4c
	ret nz                                           ; $4aeb: $c0

	ld bc, $01a0                                     ; $4aec: $01 $a0 $01
	inc b                                            ; $4aef: $04
	ld d, l                                          ; $4af0: $55
	pop bc                                           ; $4af1: $c1
	dec b                                            ; $4af2: $05
	ld bc, $0080                                     ; $4af3: $01 $80 $00
	ld l, a                                          ; $4af6: $6f
	add b                                            ; $4af7: $80
	nop                                              ; $4af8: $00
	ld l, b                                          ; $4af9: $68
	nop                                              ; $4afa: $00
	add b                                            ; $4afb: $80
	nop                                              ; $4afc: $00
	ld [hl], a                                       ; $4afd: $77
	jr nz, jr_088_4a81                               ; $4afe: $20 $81

	ld bc, $c0a6                                     ; $4b00: $01 $a6 $c0
	sbc e                                            ; $4b03: $9b
	jp nc, $c0c0                                     ; $4b04: $d2 $c0 $c0

	jp nc, $1ec0                                     ; $4b07: $d2 $c0 $1e

	ldh [$28], a                                     ; $4b0a: $e0 $28
	jp nc, Jump_088_4a09                             ; $4b0c: $d2 $09 $4a

	ret nz                                           ; $4b0f: $c0

	and a                                            ; $4b10: $a7
	jp nc, $d3d3                                     ; $4b11: $d2 $d3 $d3

	ret nz                                           ; $4b14: $c0

	and l                                            ; $4b15: $a5
	ret nz                                           ; $4b16: $c0

	ld bc, $04a0                                     ; $4b17: $01 $a0 $04
	inc b                                            ; $4b1a: $04
	ld l, c                                          ; $4b1b: $69

jr_088_4b1c:
	ret nz                                           ; $4b1c: $c0

	ld bc, $01a0                                     ; $4b1d: $01 $a0 $01
	inc b                                            ; $4b20: $04
	ld [hl], h                                       ; $4b21: $74
	ret nz                                           ; $4b22: $c0

	ld bc, $04a0                                     ; $4b23: $01 $a0 $04
	inc b                                            ; $4b26: $04
	add e                                            ; $4b27: $83
	ret nz                                           ; $4b28: $c0

	ld bc, $01a0                                     ; $4b29: $01 $a0 $01
	inc b                                            ; $4b2c: $04
	sub h                                            ; $4b2d: $94
	ret nz                                           ; $4b2e: $c0

	set 0, c                                         ; $4b2f: $cb $c1
	ld e, e                                          ; $4b31: $5b
	ret nz                                           ; $4b32: $c0

	inc c                                            ; $4b33: $0c
	ldh [$28], a                                     ; $4b34: $e0 $28
	ret nz                                           ; $4b36: $c0

	inc b                                            ; $4b37: $04
	ret nz                                           ; $4b38: $c0

	rrca                                             ; $4b39: $0f
	db $e3                                           ; $4b3a: $e3
	nop                                              ; $4b3b: $00
	halt                                             ; $4b3c: $76
	ret nz                                           ; $4b3d: $c0

	nop                                              ; $4b3e: $00
	inc b                                            ; $4b3f: $04
	and d                                            ; $4b40: $a2
	pop bc                                           ; $4b41: $c1
	dec b                                            ; $4b42: $05
	ret nz                                           ; $4b43: $c0

	ld bc, $01a0                                     ; $4b44: $01 $a0 $01
	inc b                                            ; $4b47: $04
	and l                                            ; $4b48: $a5
	ret nz                                           ; $4b49: $c0

	jr nz, jr_088_4b1c                               ; $4b4a: $20 $d0

	jp nc, $6bc1                                     ; $4b4c: $d2 $c1 $6b

	reti                                             ; $4b4f: $d9


	jp nc, $cfc0                                     ; $4b50: $d2 $c0 $cf

	ldh [rIE], a                                     ; $4b53: $e0 $ff
	push hl                                          ; $4b55: $e5
	ld d, a                                          ; $4b56: $57
	nop                                              ; $4b57: $00
	xor d                                            ; $4b58: $aa
	add c                                            ; $4b59: $81
	ld [$4709], sp                                   ; $4b5a: $08 $09 $47
	ld h, b                                          ; $4b5d: $60
	add b                                            ; $4b5e: $80
	nop                                              ; $4b5f: $00
	ld [hl], b                                       ; $4b60: $70
	ld a, [hl-]                                      ; $4b61: $3a
	pop bc                                           ; $4b62: $c1
	ld e, c                                          ; $4b63: $59
	db $e3                                           ; $4b64: $e3
	nop                                              ; $4b65: $00
	ld b, e                                          ; $4b66: $43
	ret nz                                           ; $4b67: $c0

	add hl, bc                                       ; $4b68: $09
	db $e3                                           ; $4b69: $e3
	nop                                              ; $4b6a: $00
	inc b                                            ; $4b6b: $04
	pop hl                                           ; $4b6c: $e1
	ld [bc], a                                       ; $4b6d: $02
	ld bc, $63c8                                     ; $4b6e: $01 $c8 $63
	ei                                               ; $4b71: $fb
	ret nz                                           ; $4b72: $c0

	ld b, a                                          ; $4b73: $47
	pop hl                                           ; $4b74: $e1
	ld bc, $0364                                     ; $4b75: $01 $64 $03
	ldh [rSC], a                                     ; $4b78: $e0 $02
	sbc l                                            ; $4b7a: $9d
	ei                                               ; $4b7b: $fb
	ret nz                                           ; $4b7c: $c0

	ld b, a                                          ; $4b7d: $47
	ldh [$c8], a                                     ; $4b7e: $e0 $c8
	inc bc                                           ; $4b80: $03
	ldh [rSB], a                                     ; $4b81: $e0 $01
	rst AddAOntoHL                                          ; $4b83: $ef
	ei                                               ; $4b84: $fb
	ret nz                                           ; $4b85: $c0

	ld b, a                                          ; $4b86: $47
	ldh [$64], a                                     ; $4b87: $e0 $64
	inc bc                                           ; $4b89: $03
	ldh [rSB], a                                     ; $4b8a: $e0 $01
	ld b, d                                          ; $4b8c: $42
	ei                                               ; $4b8d: $fb
	ret nz                                           ; $4b8e: $c0

	ld b, a                                          ; $4b8f: $47
	ldh [$32], a                                     ; $4b90: $e0 $32
	inc bc                                           ; $4b92: $03
	ldh [rP1], a                                     ; $4b93: $e0 $00
	sub b                                            ; $4b95: $90
	inc bc                                           ; $4b96: $03
	ldh [rP1], a                                     ; $4b97: $e0 $00
	inc c                                            ; $4b99: $0c
	pop bc                                           ; $4b9a: $c1
	dec b                                            ; $4b9b: $05
	inc bc                                           ; $4b9c: $03
	ldh [$03], a                                     ; $4b9d: $e0 $03
	dec e                                            ; $4b9f: $1d
	push hl                                          ; $4ba0: $e5
	ld d, a                                          ; $4ba1: $57
	nop                                              ; $4ba2: $00
	ld l, l                                          ; $4ba3: $6d
	ld a, a                                          ; $4ba4: $7f
	ret nz                                           ; $4ba5: $c0

	ld bc, $01a0                                     ; $4ba6: $01 $a0 $01

jr_088_4ba9:
	nop                                              ; $4ba9: $00
	ld bc, $c083                                     ; $4baa: $01 $83 $c0
	dec de                                           ; $4bad: $1b
	db $d3                                           ; $4bae: $d3
	ld [bc], a                                       ; $4baf: $02
	ret nc                                           ; $4bb0: $d0

	pop de                                           ; $4bb1: $d1
	dec h                                            ; $4bb2: $25
	ret nz                                           ; $4bb3: $c0

	ld bc, $05a0                                     ; $4bb4: $01 $a0 $05
	nop                                              ; $4bb7: $00
	ld de, $01c0                                     ; $4bb8: $11 $c0 $01
	and b                                            ; $4bbb: $a0
	ld bc, $2000                                     ; $4bbc: $01 $00 $20
	ret nz                                           ; $4bbf: $c0

	ld bc, $05a0                                     ; $4bc0: $01 $a0 $05
	nop                                              ; $4bc3: $00
	ld l, $c0                                        ; $4bc4: $2e $c0
	ld bc, $01a0                                     ; $4bc6: $01 $a0 $01
	nop                                              ; $4bc9: $00
	dec a                                            ; $4bca: $3d
	pop bc                                           ; $4bcb: $c1

jr_088_4bcc:
	or d                                             ; $4bcc: $b2
	db $e3                                           ; $4bcd: $e3
	nop                                              ; $4bce: $00
	ld b, e                                          ; $4bcf: $43
	ret nz                                           ; $4bd0: $c0

	ld bc, $05a0                                     ; $4bd1: $01 $a0 $05
	nop                                              ; $4bd4: $00
	ld b, a                                          ; $4bd5: $47
	pop bc                                           ; $4bd6: $c1
	ld e, e                                          ; $4bd7: $5b
	ld [bc], a                                       ; $4bd8: $02
	jp nc, $20d3                                     ; $4bd9: $d2 $d3 $20

	ret nz                                           ; $4bdc: $c0

	ld bc, $05a0                                     ; $4bdd: $01 $a0 $05
	nop                                              ; $4be0: $00
	ld c, l                                          ; $4be1: $4d
	ret nz                                           ; $4be2: $c0

	ld bc, $01a0                                     ; $4be3: $01 $a0 $01
	nop                                              ; $4be6: $00
	jr nz, jr_088_4ba9                               ; $4be7: $20 $c0

	ld bc, $05a0                                     ; $4be9: $01 $a0 $05
	nop                                              ; $4bec: $00
	ld e, d                                          ; $4bed: $5a
	ret nz                                           ; $4bee: $c0

	ld bc, $01a0                                     ; $4bef: $01 $a0 $01
	nop                                              ; $4bf2: $00
	ld h, d                                          ; $4bf3: $62
	ret nz                                           ; $4bf4: $c0

	ld bc, $05a0                                     ; $4bf5: $01 $a0 $05
	nop                                              ; $4bf8: $00
	ld l, c                                          ; $4bf9: $69
	pop bc                                           ; $4bfa: $c1
	ld e, e                                          ; $4bfb: $5b
	ld bc, $14d4                                     ; $4bfc: $01 $d4 $14
	ret nz                                           ; $4bff: $c0

	ld bc, $05a0                                     ; $4c00: $01 $a0 $05
	nop                                              ; $4c03: $00
	ld l, h                                          ; $4c04: $6c
	ret nz                                           ; $4c05: $c0

	ld bc, $01a0                                     ; $4c06: $01 $a0 $01
	nop                                              ; $4c09: $00
	jr nz, jr_088_4bcc                               ; $4c0a: $20 $c0

	ld bc, $05a0                                     ; $4c0c: $01 $a0 $05
	nop                                              ; $4c0f: $00
	ld a, d                                          ; $4c10: $7a
	pop bc                                           ; $4c11: $c1
	ld e, e                                          ; $4c12: $5b
	ld bc, $0ed5                                     ; $4c13: $01 $d5 $0e
	ret nz                                           ; $4c16: $c0

	ld bc, $05a0                                     ; $4c17: $01 $a0 $05
	nop                                              ; $4c1a: $00
	ld a, [hl]                                       ; $4c1b: $7e
	pop bc                                           ; $4c1c: $c1
	ld e, e                                          ; $4c1d: $5b
	ret nz                                           ; $4c1e: $c0

	ld bc, $01a0                                     ; $4c1f: $01 $a0 $01
	nop                                              ; $4c22: $00
	adc d                                            ; $4c23: $8a
	xor b                                            ; $4c24: $a8
	add e                                            ; $4c25: $83
	ret nz                                           ; $4c26: $c0

	dec de                                           ; $4c27: $1b
	db $d3                                           ; $4c28: $d3
	ld [bc], a                                       ; $4c29: $02
	ret nc                                           ; $4c2a: $d0

	pop de                                           ; $4c2b: $d1
	ld sp, $01c0                                     ; $4c2c: $31 $c0 $01
	and b                                            ; $4c2f: $a0
	dec b                                            ; $4c30: $05
	nop                                              ; $4c31: $00
	sub d                                            ; $4c32: $92
	ret nz                                           ; $4c33: $c0

	ld bc, $01a0                                     ; $4c34: $01 $a0 $01
	nop                                              ; $4c37: $00
	and c                                            ; $4c38: $a1
	ret nz                                           ; $4c39: $c0

	ld bc, $05a0                                     ; $4c3a: $01 $a0 $05
	nop                                              ; $4c3d: $00
	xor l                                            ; $4c3e: $ad
	ret nz                                           ; $4c3f: $c0

	ld bc, $01a0                                     ; $4c40: $01 $a0 $01
	nop                                              ; $4c43: $00
	cp h                                             ; $4c44: $bc
	ret nz                                           ; $4c45: $c0

	ld bc, $05a0                                     ; $4c46: $01 $a0 $05
	nop                                              ; $4c49: $00
	ret                                              ; $4c4a: $c9


	ret nz                                           ; $4c4b: $c0

	ld bc, $01a0                                     ; $4c4c: $01 $a0 $01
	nop                                              ; $4c4f: $00
	jp c, $b2c1                                      ; $4c50: $da $c1 $b2

	db $e3                                           ; $4c53: $e3
	nop                                              ; $4c54: $00
	ld b, e                                          ; $4c55: $43
	ret nz                                           ; $4c56: $c0

	ld bc, $05a0                                     ; $4c57: $01 $a0 $05
	nop                                              ; $4c5a: $00
	ld b, a                                          ; $4c5b: $47
	pop bc                                           ; $4c5c: $c1
	ld e, e                                          ; $4c5d: $5b
	ld [bc], a                                       ; $4c5e: $02
	jp nc, $31d3                                     ; $4c5f: $d2 $d3 $31

	ret nz                                           ; $4c62: $c0

	ld bc, $05a0                                     ; $4c63: $01 $a0 $05
	nop                                              ; $4c66: $00
	sub d                                            ; $4c67: $92
	ret nz                                           ; $4c68: $c0

	ld bc, $01a0                                     ; $4c69: $01 $a0 $01
	nop                                              ; $4c6c: $00
	and c                                            ; $4c6d: $a1
	ret nz                                           ; $4c6e: $c0

	ld bc, $05a0                                     ; $4c6f: $01 $a0 $05
	nop                                              ; $4c72: $00
	rst SubAFromDE                                          ; $4c73: $df
	ret nz                                           ; $4c74: $c0

	ld bc, $01a0                                     ; $4c75: $01 $a0 $01
	nop                                              ; $4c78: $00
	cp h                                             ; $4c79: $bc
	ret nz                                           ; $4c7a: $c0

	ld bc, $05a0                                     ; $4c7b: $01 $a0 $05
	nop                                              ; $4c7e: $00
	xor $c0                                          ; $4c7f: $ee $c0
	ld bc, $01a0                                     ; $4c81: $01 $a0 $01
	nop                                              ; $4c84: $00
	db $fc                                           ; $4c85: $fc
	pop bc                                           ; $4c86: $c1
	or d                                             ; $4c87: $b2
	db $e3                                           ; $4c88: $e3
	nop                                              ; $4c89: $00
	ld b, e                                          ; $4c8a: $43
	ret nz                                           ; $4c8b: $c0

	ld bc, $05a0                                     ; $4c8c: $01 $a0 $05
	nop                                              ; $4c8f: $00
	ld b, a                                          ; $4c90: $47
	pop bc                                           ; $4c91: $c1
	ld e, e                                          ; $4c92: $5b
	ld bc, $20d4                                     ; $4c93: $01 $d4 $20
	ret nz                                           ; $4c96: $c0

	ld bc, $05a0                                     ; $4c97: $01 $a0 $05
	nop                                              ; $4c9a: $00
	sub d                                            ; $4c9b: $92
	ret nz                                           ; $4c9c: $c0

	ld bc, $01a0                                     ; $4c9d: $01 $a0 $01
	nop                                              ; $4ca0: $00
	and c                                            ; $4ca1: $a1
	ret nz                                           ; $4ca2: $c0

	ld bc, $05a0                                     ; $4ca3: $01 $a0 $05
	ld bc, $c006                                     ; $4ca6: $01 $06 $c0
	ld bc, $01a0                                     ; $4ca9: $01 $a0 $01
	ld bc, $c015                                     ; $4cac: $01 $15 $c0
	ld bc, $05a0                                     ; $4caf: $01 $a0 $05
	nop                                              ; $4cb2: $00
	ld a, d                                          ; $4cb3: $7a
	pop bc                                           ; $4cb4: $c1
	ld e, e                                          ; $4cb5: $5b
	ld bc, $14d5                                     ; $4cb6: $01 $d5 $14
	ret nz                                           ; $4cb9: $c0

	ld bc, $01a0                                     ; $4cba: $01 $a0 $01
	ld bc, $c022                                     ; $4cbd: $01 $22 $c0
	ld bc, $05a0                                     ; $4cc0: $01 $a0 $05
	ld bc, $c12e                                     ; $4cc3: $01 $2e $c1
	ld e, e                                          ; $4cc6: $5b
	ret nz                                           ; $4cc7: $c0

	ld bc, $01a0                                     ; $4cc8: $01 $a0 $01
	ld bc, $a338                                     ; $4ccb: $01 $38 $a3
	add e                                            ; $4cce: $83
	ret nz                                           ; $4ccf: $c0

	dec de                                           ; $4cd0: $1b
	db $d3                                           ; $4cd1: $d3
	ld [bc], a                                       ; $4cd2: $02
	ret nc                                           ; $4cd3: $d0

	pop de                                           ; $4cd4: $d1
	ld sp, $01c0                                     ; $4cd5: $31 $c0 $01
	and b                                            ; $4cd8: $a0
	dec b                                            ; $4cd9: $05
	nop                                              ; $4cda: $00
	sub d                                            ; $4cdb: $92
	ret nz                                           ; $4cdc: $c0

	ld bc, $01a0                                     ; $4cdd: $01 $a0 $01
	nop                                              ; $4ce0: $00
	and c                                            ; $4ce1: $a1
	ret nz                                           ; $4ce2: $c0

	ld bc, $05a0                                     ; $4ce3: $01 $a0 $05
	ld bc, $c03e                                     ; $4ce6: $01 $3e $c0
	ld bc, $01a0                                     ; $4ce9: $01 $a0 $01
	ld bc, $c04e                                     ; $4cec: $01 $4e $c0
	ld bc, $05a0                                     ; $4cef: $01 $a0 $05
	ld bc, $c05b                                     ; $4cf2: $01 $5b $c0
	ld bc, $01a0                                     ; $4cf5: $01 $a0 $01
	ld bc, $c16c                                     ; $4cf8: $01 $6c $c1
	or d                                             ; $4cfb: $b2
	db $e3                                           ; $4cfc: $e3
	nop                                              ; $4cfd: $00
	ld b, e                                          ; $4cfe: $43
	ret nz                                           ; $4cff: $c0

	ld bc, $05a0                                     ; $4d00: $01 $a0 $05
	nop                                              ; $4d03: $00
	ld b, a                                          ; $4d04: $47
	pop bc                                           ; $4d05: $c1
	ld e, e                                          ; $4d06: $5b
	ld [bc], a                                       ; $4d07: $02
	jp nc, $2cd3                                     ; $4d08: $d2 $d3 $2c

	ret nz                                           ; $4d0b: $c0

	ld bc, $05a0                                     ; $4d0c: $01 $a0 $05
	nop                                              ; $4d0f: $00
	sub d                                            ; $4d10: $92
	ret nz                                           ; $4d11: $c0

	ld bc, $01a0                                     ; $4d12: $01 $a0 $01
	nop                                              ; $4d15: $00
	and c                                            ; $4d16: $a1
	ret nz                                           ; $4d17: $c0

	ld bc, $05a0                                     ; $4d18: $01 $a0 $05
	ld bc, $c075                                     ; $4d1b: $01 $75 $c0
	ld bc, $01a0                                     ; $4d1e: $01 $a0 $01
	ld bc, $c088                                     ; $4d21: $01 $88 $c0
	ld bc, $05a0                                     ; $4d24: $01 $a0 $05
	ld bc, $c094                                     ; $4d27: $01 $94 $c0
	ld bc, $01a0                                     ; $4d2a: $01 $a0 $01
	ld bc, $c09e                                     ; $4d2d: $01 $9e $c0
	ld bc, $05a0                                     ; $4d30: $01 $a0 $05
	nop                                              ; $4d33: $00
	ld a, d                                          ; $4d34: $7a
	pop bc                                           ; $4d35: $c1
	ld e, e                                          ; $4d36: $5b
	ld bc, $20d4                                     ; $4d37: $01 $d4 $20
	ret nz                                           ; $4d3a: $c0

	ld bc, $05a0                                     ; $4d3b: $01 $a0 $05
	nop                                              ; $4d3e: $00
	sub d                                            ; $4d3f: $92
	ret nz                                           ; $4d40: $c0

	ld bc, $01a0                                     ; $4d41: $01 $a0 $01
	nop                                              ; $4d44: $00
	and c                                            ; $4d45: $a1
	ret nz                                           ; $4d46: $c0

	ld bc, $05a0                                     ; $4d47: $01 $a0 $05
	ld bc, $c0a6                                     ; $4d4a: $01 $a6 $c0
	ld bc, $01a0                                     ; $4d4d: $01 $a0 $01
	ld bc, $c04e                                     ; $4d50: $01 $4e $c0
	ld bc, $05a0                                     ; $4d53: $01 $a0 $05
	nop                                              ; $4d56: $00
	ld a, d                                          ; $4d57: $7a
	pop bc                                           ; $4d58: $c1
	ld e, e                                          ; $4d59: $5b
	ld bc, $14d5                                     ; $4d5a: $01 $d5 $14
	ret nz                                           ; $4d5d: $c0

	ld bc, $01a0                                     ; $4d5e: $01 $a0 $01
	ld bc, $c022                                     ; $4d61: $01 $22 $c0
	ld bc, $05a0                                     ; $4d64: $01 $a0 $05
	ld bc, $c1b6                                     ; $4d67: $01 $b6 $c1
	ld e, e                                          ; $4d6a: $5b
	ret nz                                           ; $4d6b: $c0

	ld bc, $01a0                                     ; $4d6c: $01 $a0 $01
	ld bc, $a4c3                                     ; $4d6f: $01 $c3 $a4
	add e                                            ; $4d72: $83
	ret nz                                           ; $4d73: $c0

	dec de                                           ; $4d74: $1b
	db $d3                                           ; $4d75: $d3
	ld [bc], a                                       ; $4d76: $02
	ret nc                                           ; $4d77: $d0

	pop de                                           ; $4d78: $d1
	inc l                                            ; $4d79: $2c
	ret nz                                           ; $4d7a: $c0

	ld bc, $05a0                                     ; $4d7b: $01 $a0 $05
	ld bc, $c0ca                                     ; $4d7e: $01 $ca $c0
	ld bc, $01a0                                     ; $4d81: $01 $a0 $01
	ld bc, $c0d4                                     ; $4d84: $01 $d4 $c0
	ld bc, $05a0                                     ; $4d87: $01 $a0 $05
	ld bc, $c0e1                                     ; $4d8a: $01 $e1 $c0
	ld bc, $01a0                                     ; $4d8d: $01 $a0 $01
	ld bc, $c0f2                                     ; $4d90: $01 $f2 $c0
	ld bc, $05a0                                     ; $4d93: $01 $a0 $05
	ld [bc], a                                       ; $4d96: $02
	ld bc, $01c0                                     ; $4d97: $01 $c0 $01
	and b                                            ; $4d9a: $a0
	ld bc, $1002                                     ; $4d9b: $01 $02 $10
	ret nz                                           ; $4d9e: $c0

	ld bc, $05a0                                     ; $4d9f: $01 $a0 $05
	ld [bc], a                                       ; $4da2: $02
	jr nz, @-$3d                                     ; $4da3: $20 $c1

	ld e, e                                          ; $4da5: $5b
	ld [bc], a                                       ; $4da6: $02
	jp nc, $2cd3                                     ; $4da7: $d2 $d3 $2c

	ret nz                                           ; $4daa: $c0

	ld bc, $05a0                                     ; $4dab: $01 $a0 $05
	ld bc, $c0ca                                     ; $4dae: $01 $ca $c0
	ld bc, $01a0                                     ; $4db1: $01 $a0 $01
	ld bc, $c0d4                                     ; $4db4: $01 $d4 $c0
	ld bc, $05a0                                     ; $4db7: $01 $a0 $05
	ld [bc], a                                       ; $4dba: $02
	cpl                                              ; $4dbb: $2f
	ret nz                                           ; $4dbc: $c0

	ld bc, $01a0                                     ; $4dbd: $01 $a0 $01
	ld [bc], a                                       ; $4dc0: $02
	ld b, b                                          ; $4dc1: $40
	ret nz                                           ; $4dc2: $c0

	ld bc, $05a0                                     ; $4dc3: $01 $a0 $05
	ld [bc], a                                       ; $4dc6: $02
	ld c, a                                          ; $4dc7: $4f
	ret nz                                           ; $4dc8: $c0

	ld bc, $01a0                                     ; $4dc9: $01 $a0 $01
	ld [bc], a                                       ; $4dcc: $02
	ld e, c                                          ; $4dcd: $59
	ret nz                                           ; $4dce: $c0

	ld bc, $05a0                                     ; $4dcf: $01 $a0 $05
	ld [bc], a                                       ; $4dd2: $02
	ld h, l                                          ; $4dd3: $65
	pop bc                                           ; $4dd4: $c1
	ld e, e                                          ; $4dd5: $5b
	ld bc, $26d4                                     ; $4dd6: $01 $d4 $26
	ret nz                                           ; $4dd9: $c0

	ld bc, $05a0                                     ; $4dda: $01 $a0 $05
	ld bc, $c0ca                                     ; $4ddd: $01 $ca $c0
	ld bc, $01a0                                     ; $4de0: $01 $a0 $01
	ld bc, $c0d4                                     ; $4de3: $01 $d4 $c0
	ld bc, $05a0                                     ; $4de6: $01 $a0 $05
	ld [bc], a                                       ; $4de9: $02
	ld l, e                                          ; $4dea: $6b
	ret nz                                           ; $4deb: $c0

	ld bc, $01a0                                     ; $4dec: $01 $a0 $01
	ld [bc], a                                       ; $4def: $02
	ld b, b                                          ; $4df0: $40
	ret nz                                           ; $4df1: $c0

	ld bc, $05a0                                     ; $4df2: $01 $a0 $05
	ld [bc], a                                       ; $4df5: $02
	ld a, e                                          ; $4df6: $7b
	ret nz                                           ; $4df7: $c0

	ld bc, $01a0                                     ; $4df8: $01 $a0 $01
	ld [bc], a                                       ; $4dfb: $02
	add [hl]                                         ; $4dfc: $86
	pop bc                                           ; $4dfd: $c1
	ld e, e                                          ; $4dfe: $5b
	ld bc, $14d5                                     ; $4dff: $01 $d5 $14
	ret nz                                           ; $4e02: $c0

	ld bc, $01a0                                     ; $4e03: $01 $a0 $01
	ld [bc], a                                       ; $4e06: $02
	sub b                                            ; $4e07: $90
	ret nz                                           ; $4e08: $c0

	ld bc, $05a0                                     ; $4e09: $01 $a0 $05
	ld [bc], a                                       ; $4e0c: $02
	sbc h                                            ; $4e0d: $9c
	pop bc                                           ; $4e0e: $c1
	ld e, e                                          ; $4e0f: $5b
	ret nz                                           ; $4e10: $c0

	ld bc, $01a0                                     ; $4e11: $01 $a0 $01
	ld [bc], a                                       ; $4e14: $02
	xor e                                            ; $4e15: $ab
	and h                                            ; $4e16: $a4
	add e                                            ; $4e17: $83
	ret nz                                           ; $4e18: $c0

	dec de                                           ; $4e19: $1b
	db $d3                                           ; $4e1a: $d3
	ld [bc], a                                       ; $4e1b: $02
	ret nc                                           ; $4e1c: $d0

	pop de                                           ; $4e1d: $d1
	ld [hl-], a                                      ; $4e1e: $32
	ret nz                                           ; $4e1f: $c0

	ld bc, $05a0                                     ; $4e20: $01 $a0 $05
	ld [bc], a                                       ; $4e23: $02
	or e                                             ; $4e24: $b3
	ret nz                                           ; $4e25: $c0

	ld bc, $01a0                                     ; $4e26: $01 $a0 $01
	ld [bc], a                                       ; $4e29: $02
	cp l                                             ; $4e2a: $bd
	ret nz                                           ; $4e2b: $c0

	ld bc, $05a0                                     ; $4e2c: $01 $a0 $05
	ld [bc], a                                       ; $4e2f: $02
	ret                                              ; $4e30: $c9


	ret nz                                           ; $4e31: $c0

	ld bc, $01a0                                     ; $4e32: $01 $a0 $01
	ld [bc], a                                       ; $4e35: $02
	jp nc, $01c0                                     ; $4e36: $d2 $c0 $01

	and b                                            ; $4e39: $a0
	dec b                                            ; $4e3a: $05
	ld [bc], a                                       ; $4e3b: $02
	rst SubAFromDE                                          ; $4e3c: $df
	ret nz                                           ; $4e3d: $c0

	ld bc, $01a0                                     ; $4e3e: $01 $a0 $01
	ld [bc], a                                       ; $4e41: $02
	rst AddAOntoHL                                          ; $4e42: $ef
	ret nz                                           ; $4e43: $c0

	ld bc, $05a0                                     ; $4e44: $01 $a0 $05
	ld [bc], a                                       ; $4e47: $02
	ld sp, hl                                        ; $4e48: $f9
	ret nz                                           ; $4e49: $c0

	ld bc, $01a0                                     ; $4e4a: $01 $a0 $01
	inc bc                                           ; $4e4d: $03
	ld [bc], a                                       ; $4e4e: $02
	pop bc                                           ; $4e4f: $c1
	ld e, e                                          ; $4e50: $5b
	ld [bc], a                                       ; $4e51: $02
	jp nc, $2cd3                                     ; $4e52: $d2 $d3 $2c

	ret nz                                           ; $4e55: $c0

	ld bc, $05a0                                     ; $4e56: $01 $a0 $05
	ld [bc], a                                       ; $4e59: $02
	or e                                             ; $4e5a: $b3
	ret nz                                           ; $4e5b: $c0

	ld bc, $01a0                                     ; $4e5c: $01 $a0 $01
	ld [bc], a                                       ; $4e5f: $02
	cp l                                             ; $4e60: $bd
	ret nz                                           ; $4e61: $c0

	ld bc, $05a0                                     ; $4e62: $01 $a0 $05
	ld [bc], a                                       ; $4e65: $02
	ret                                              ; $4e66: $c9


	ret nz                                           ; $4e67: $c0

	ld bc, $01a0                                     ; $4e68: $01 $a0 $01
	ld [bc], a                                       ; $4e6b: $02
	jp nc, $01c0                                     ; $4e6c: $d2 $c0 $01

	and b                                            ; $4e6f: $a0
	dec b                                            ; $4e70: $05
	inc bc                                           ; $4e71: $03
	ld a, [bc]                                       ; $4e72: $0a
	ret nz                                           ; $4e73: $c0

	ld bc, $01a0                                     ; $4e74: $01 $a0 $01
	inc bc                                           ; $4e77: $03
	ld de, $01c0                                     ; $4e78: $11 $c0 $01
	and b                                            ; $4e7b: $a0
	dec b                                            ; $4e7c: $05
	inc bc                                           ; $4e7d: $03
	rra                                              ; $4e7e: $1f
	pop bc                                           ; $4e7f: $c1
	ld e, e                                          ; $4e80: $5b
	ld bc, $20d4                                     ; $4e81: $01 $d4 $20
	ret nz                                           ; $4e84: $c0

	ld bc, $05a0                                     ; $4e85: $01 $a0 $05
	ld [bc], a                                       ; $4e88: $02
	or e                                             ; $4e89: $b3
	ret nz                                           ; $4e8a: $c0

	ld bc, $01a0                                     ; $4e8b: $01 $a0 $01
	ld [bc], a                                       ; $4e8e: $02
	cp l                                             ; $4e8f: $bd
	ret nz                                           ; $4e90: $c0

	ld bc, $05a0                                     ; $4e91: $01 $a0 $05
	ld [bc], a                                       ; $4e94: $02
	ret                                              ; $4e95: $c9


	ret nz                                           ; $4e96: $c0

	ld bc, $01a0                                     ; $4e97: $01 $a0 $01

jr_088_4e9a:
	inc bc                                           ; $4e9a: $03
	cpl                                              ; $4e9b: $2f
	ret nz                                           ; $4e9c: $c0

	ld bc, $05a0                                     ; $4e9d: $01 $a0 $05
	inc bc                                           ; $4ea0: $03
	ld [hl], $c1                                     ; $4ea1: $36 $c1
	ld e, e                                          ; $4ea3: $5b
	ld bc, $14d5                                     ; $4ea4: $01 $d5 $14
	ret nz                                           ; $4ea7: $c0

	ld bc, $01a0                                     ; $4ea8: $01 $a0 $01
	ld [bc], a                                       ; $4eab: $02
	sub b                                            ; $4eac: $90
	ret nz                                           ; $4ead: $c0

	ld bc, $05a0                                     ; $4eae: $01 $a0 $05
	inc bc                                           ; $4eb1: $03
	ccf                                              ; $4eb2: $3f
	pop bc                                           ; $4eb3: $c1
	ld e, e                                          ; $4eb4: $5b
	ret nz                                           ; $4eb5: $c0

	ld bc, $01a0                                     ; $4eb6: $01 $a0 $01
	inc bc                                           ; $4eb9: $03
	ld c, c                                          ; $4eba: $49
	ret nz                                           ; $4ebb: $c0

	jp nc, Jump_088_59c1                             ; $4ebc: $d2 $c1 $59

	db $e3                                           ; $4ebf: $e3
	nop                                              ; $4ec0: $00
	ld a, b                                          ; $4ec1: $78
	ret nz                                           ; $4ec2: $c0

	ld e, $e0                                        ; $4ec3: $1e $e0
	ld b, [hl]                                       ; $4ec5: $46
	db $d3                                           ; $4ec6: $d3
	ret nz                                           ; $4ec7: $c0

	jr nz, jr_088_4e9a                               ; $4ec8: $20 $d0

	db $d3                                           ; $4eca: $d3
	ret nz                                           ; $4ecb: $c0

	ld bc, $01a0                                     ; $4ecc: $01 $a0 $01
	inc bc                                           ; $4ecf: $03
	ld d, d                                          ; $4ed0: $52
	ret nz                                           ; $4ed1: $c0

	ld bc, $13a0                                     ; $4ed2: $01 $a0 $13
	inc bc                                           ; $4ed5: $03
	ld e, l                                          ; $4ed6: $5d
	ret nz                                           ; $4ed7: $c0

	ld bc, $01a0                                     ; $4ed8: $01 $a0 $01
	inc bc                                           ; $4edb: $03
	ld [hl], b                                       ; $4edc: $70
	ret nz                                           ; $4edd: $c0

	add hl, bc                                       ; $4ede: $09
	db $e3                                           ; $4edf: $e3
	nop                                              ; $4ee0: $00
	inc b                                            ; $4ee1: $04
	ret nz                                           ; $4ee2: $c0

	and a                                            ; $4ee3: $a7
	db $d3                                           ; $4ee4: $d3
	db $d3                                           ; $4ee5: $d3
	jp c, $a5c0                                      ; $4ee6: $da $c0 $a5

	ret nz                                           ; $4ee9: $c0

	ld bc, $05a0                                     ; $4eea: $01 $a0 $05
	inc bc                                           ; $4eed: $03
	add c                                            ; $4eee: $81
	ret nz                                           ; $4eef: $c0

	ld bc, $01a0                                     ; $4ef0: $01 $a0 $01
	inc bc                                           ; $4ef3: $03
	adc h                                            ; $4ef4: $8c
	ret nz                                           ; $4ef5: $c0

	ld bc, $05a0                                     ; $4ef6: $01 $a0 $05
	inc bc                                           ; $4ef9: $03
	sub c                                            ; $4efa: $91
	ret nz                                           ; $4efb: $c0

jr_088_4efc:
	ld bc, $01a0                                     ; $4efc: $01 $a0 $01
	inc bc                                           ; $4eff: $03
	sub l                                            ; $4f00: $95
	ret nz                                           ; $4f01: $c0

	inc c                                            ; $4f02: $0c
	ldh [$3c], a                                     ; $4f03: $e0 $3c
	ret nz                                           ; $4f05: $c0

	ld bc, $01a0                                     ; $4f06: $01 $a0 $01
	inc bc                                           ; $4f09: $03
	and [hl]                                         ; $4f0a: $a6
	ret nz                                           ; $4f0b: $c0

	ld bc, $05a0                                     ; $4f0c: $01 $a0 $05
	inc bc                                           ; $4f0f: $03
	or h                                             ; $4f10: $b4
	pop bc                                           ; $4f11: $c1
	ld e, e                                          ; $4f12: $5b
	pop bc                                           ; $4f13: $c1
	ld e, c                                          ; $4f14: $59
	db $e3                                           ; $4f15: $e3
	nop                                              ; $4f16: $00
	ld a, c                                          ; $4f17: $79
	ret nz                                           ; $4f18: $c0

	ld bc, $01a0                                     ; $4f19: $01 $a0 $01
	inc bc                                           ; $4f1c: $03
	or a                                             ; $4f1d: $b7
	ret nz                                           ; $4f1e: $c0

	ld bc, $05a0                                     ; $4f1f: $01 $a0 $05
	inc bc                                           ; $4f22: $03
	cp a                                             ; $4f23: $bf
	ret nz                                           ; $4f24: $c0

	and a                                            ; $4f25: $a7
	db $d3                                           ; $4f26: $d3
	db $d3                                           ; $4f27: $d3
	db $db                                           ; $4f28: $db
	ret nz                                           ; $4f29: $c0

	and l                                            ; $4f2a: $a5
	ret nz                                           ; $4f2b: $c0

	ld bc, $01a0                                     ; $4f2c: $01 $a0 $01
	inc bc                                           ; $4f2f: $03
	pop bc                                           ; $4f30: $c1
	ret nz                                           ; $4f31: $c0

	ld bc, $05a0                                     ; $4f32: $01 $a0 $05
	inc bc                                           ; $4f35: $03
	ret z                                            ; $4f36: $c8

	ret nz                                           ; $4f37: $c0

	ld bc, $01a0                                     ; $4f38: $01 $a0 $01
	inc bc                                           ; $4f3b: $03
	pop de                                           ; $4f3c: $d1
	ret nz                                           ; $4f3d: $c0

	ld bc, $05a0                                     ; $4f3e: $01 $a0 $05
	inc bc                                           ; $4f41: $03
	sbc $c0                                          ; $4f42: $de $c0
	ld bc, $01a0                                     ; $4f44: $01 $a0 $01
	inc bc                                           ; $4f47: $03
	ld [$01c0], a                                    ; $4f48: $ea $c0 $01
	and b                                            ; $4f4b: $a0
	dec b                                            ; $4f4c: $05
	inc bc                                           ; $4f4d: $03
	di                                               ; $4f4e: $f3
	ret nz                                           ; $4f4f: $c0

	ld bc, $01a0                                     ; $4f50: $01 $a0 $01
	inc bc                                           ; $4f53: $03
	db $fc                                           ; $4f54: $fc
	ret nz                                           ; $4f55: $c0

	ld bc, $05a0                                     ; $4f56: $01 $a0 $05
	inc b                                            ; $4f59: $04
	ld bc, $01c0                                     ; $4f5a: $01 $c0 $01
	and b                                            ; $4f5d: $a0
	ld bc, $0704                                     ; $4f5e: $01 $04 $07
	ret nz                                           ; $4f61: $c0

jr_088_4f62:
	set 0, c                                         ; $4f62: $cb $c1
	ld e, e                                          ; $4f64: $5b
	ret nz                                           ; $4f65: $c0

	ld bc, $01a0                                     ; $4f66: $01 $a0 $01
	inc b                                            ; $4f69: $04
	add hl, bc                                       ; $4f6a: $09

jr_088_4f6b:
	ret nz                                           ; $4f6b: $c0

	ld bc, $01a0                                     ; $4f6c: $01 $a0 $01
	inc b                                            ; $4f6f: $04
	inc de                                           ; $4f70: $13
	pop bc                                           ; $4f71: $c1
	dec sp                                           ; $4f72: $3b
	pop bc                                           ; $4f73: $c1
	dec b                                            ; $4f74: $05
	nop                                              ; $4f75: $00
	add b                                            ; $4f76: $80
	nop                                              ; $4f77: $00
	ld a, c                                          ; $4f78: $79
	jr nz, jr_088_4efc                               ; $4f79: $20 $81

	ld bc, $01a6                                     ; $4f7b: $01 $a6 $01
	add b                                            ; $4f7e: $80
	nop                                              ; $4f7f: $00
	ld [hl], b                                       ; $4f80: $70
	add b                                            ; $4f81: $80
	nop                                              ; $4f82: $00
	ld [hl], c                                       ; $4f83: $71
	ret nz                                           ; $4f84: $c0

	sbc e                                            ; $4f85: $9b
	db $d3                                           ; $4f86: $d3
	ret nz                                           ; $4f87: $c0

	ret nz                                           ; $4f88: $c0

	db $d3                                           ; $4f89: $d3
	ret nz                                           ; $4f8a: $c0

	ld e, $e0                                        ; $4f8b: $1e $e0
	jr z, jr_088_4f62                                ; $4f8d: $28 $d3

	add hl, bc                                       ; $4f8f: $09
	ld c, d                                          ; $4f90: $4a
	ret nz                                           ; $4f91: $c0

	and a                                            ; $4f92: $a7
	db $d3                                           ; $4f93: $d3
	db $d3                                           ; $4f94: $d3
	db $d3                                           ; $4f95: $d3
	ret nz                                           ; $4f96: $c0

	and l                                            ; $4f97: $a5
	ret nz                                           ; $4f98: $c0

	ld bc, $05a0                                     ; $4f99: $01 $a0 $05
	inc b                                            ; $4f9c: $04
	ld h, $c0                                        ; $4f9d: $26 $c0
	ld bc, $01a0                                     ; $4f9f: $01 $a0 $01
	inc b                                            ; $4fa2: $04
	dec hl                                           ; $4fa3: $2b
	ret nz                                           ; $4fa4: $c0

	ld bc, $05a0                                     ; $4fa5: $01 $a0 $05
	inc b                                            ; $4fa8: $04
	jr nc, jr_088_4f6b                               ; $4fa9: $30 $c0

	ld bc, $01a0                                     ; $4fab: $01 $a0 $01
	inc b                                            ; $4fae: $04
	ccf                                              ; $4faf: $3f
	ret nz                                           ; $4fb0: $c0

	set 0, c                                         ; $4fb1: $cb $c1
	ld e, e                                          ; $4fb3: $5b
	ret nz                                           ; $4fb4: $c0

	inc c                                            ; $4fb5: $0c
	ldh [$28], a                                     ; $4fb6: $e0 $28
	ret nz                                           ; $4fb8: $c0

	inc b                                            ; $4fb9: $04
	ret nz                                           ; $4fba: $c0

	rrca                                             ; $4fbb: $0f
	db $e3                                           ; $4fbc: $e3
	nop                                              ; $4fbd: $00
	halt                                             ; $4fbe: $76
	ret nz                                           ; $4fbf: $c0

	nop                                              ; $4fc0: $00
	inc b                                            ; $4fc1: $04
	ld c, l                                          ; $4fc2: $4d
	pop bc                                           ; $4fc3: $c1
	dec b                                            ; $4fc4: $05
	ret nz                                           ; $4fc5: $c0

	ld bc, $01a0                                     ; $4fc6: $01 $a0 $01
	inc b                                            ; $4fc9: $04
	ld d, b                                          ; $4fca: $50
	ret nz                                           ; $4fcb: $c0

	jr nz, @-$2e                                     ; $4fcc: $20 $d0

	db $d3                                           ; $4fce: $d3
	pop bc                                           ; $4fcf: $c1
	ld l, e                                          ; $4fd0: $6b
	rst SubAFromHL                                          ; $4fd1: $d7
	db $d3                                           ; $4fd2: $d3
	ret nz                                           ; $4fd3: $c0

	rst GetHLinHL                                          ; $4fd4: $cf
	ldh [rIE], a                                     ; $4fd5: $e0 $ff
	push hl                                          ; $4fd7: $e5
	ld d, a                                          ; $4fd8: $57
	nop                                              ; $4fd9: $00
	xor d                                            ; $4fda: $aa
	add c                                            ; $4fdb: $81
	ld [$1138], sp                                   ; $4fdc: $08 $38 $11
	ret nc                                           ; $4fdf: $d0

	adc e                                            ; $4fe0: $8b
	nop                                              ; $4fe1: $00
	inc c                                            ; $4fe2: $0c
	or b                                             ; $4fe3: $b0
	ld bc, $59c1                                     ; $4fe4: $01 $c1 $59
	db $e3                                           ; $4fe7: $e3
	nop                                              ; $4fe8: $00
	ld l, d                                          ; $4fe9: $6a
	ret nz                                           ; $4fea: $c0

	ld bc, $01a0                                     ; $4feb: $01 $a0 $01
	nop                                              ; $4fee: $00
	ld bc, $005a                                     ; $4fef: $01 $5a $00
	rrca                                             ; $4ff2: $0f
	add hl, bc                                       ; $4ff3: $09
	ld a, [de]                                       ; $4ff4: $1a
	ret nc                                           ; $4ff5: $d0

	adc e                                            ; $4ff6: $8b
	ld [bc], a                                       ; $4ff7: $02
	db $ec                                           ; $4ff8: $ec
	or b                                             ; $4ff9: $b0
	sub d                                            ; $4ffa: $92
	ret nc                                           ; $4ffb: $d0

	add c                                            ; $4ffc: $81
	ld [bc], a                                       ; $4ffd: $02
	ld hl, sp-$30                                    ; $4ffe: $f8 $d0
	ret nz                                           ; $5000: $c0

	ld bc, $01a0                                     ; $5001: $01 $a0 $01
	nop                                              ; $5004: $00

jr_088_5005:
	ld d, $e0                                        ; $5005: $16 $e0
	dec b                                            ; $5007: $05
	rst SubAFromDE                                          ; $5008: $df
	ret nz                                           ; $5009: $c0

	ld bc, $01a0                                     ; $500a: $01 $a0 $01
	nop                                              ; $500d: $00
	rra                                              ; $500e: $1f
	nop                                              ; $500f: $00
	inc l                                            ; $5010: $2c
	add hl, bc                                       ; $5011: $09
	ld a, [de]                                       ; $5012: $1a
	ret nc                                           ; $5013: $d0

	adc e                                            ; $5014: $8b
	ld [bc], a                                       ; $5015: $02
	db $ec                                           ; $5016: $ec
	or b                                             ; $5017: $b0
	sub e                                            ; $5018: $93
	ret nc                                           ; $5019: $d0

	add c                                            ; $501a: $81
	ld [bc], a                                       ; $501b: $02
	ld hl, sp-$2f                                    ; $501c: $f8 $d1
	ret nz                                           ; $501e: $c0

	ld bc, $01a0                                     ; $501f: $01 $a0 $01
	nop                                              ; $5022: $00
	jr nc, jr_088_5005                               ; $5023: $30 $e0

	dec b                                            ; $5025: $05
	pop bc                                           ; $5026: $c1
	ret nz                                           ; $5027: $c0

	ld bc, $01a0                                     ; $5028: $01 $a0 $01
	nop                                              ; $502b: $00
	scf                                              ; $502c: $37
	nop                                              ; $502d: $00
	ld b, h                                          ; $502e: $44
	add hl, bc                                       ; $502f: $09
	ld a, [de]                                       ; $5030: $1a
	ret nc                                           ; $5031: $d0

	adc e                                            ; $5032: $8b
	ld [bc], a                                       ; $5033: $02
	db $ec                                           ; $5034: $ec
	or b                                             ; $5035: $b0
	sub h                                            ; $5036: $94
	ret nc                                           ; $5037: $d0

	add c                                            ; $5038: $81
	ld [bc], a                                       ; $5039: $02
	ld hl, sp-$2e                                    ; $503a: $f8 $d2
	ret nz                                           ; $503c: $c0

	ld bc, $01a0                                     ; $503d: $01 $a0 $01
	nop                                              ; $5040: $00
	ld c, c                                          ; $5041: $49
	ldh [rTIMA], a                                   ; $5042: $e0 $05
	and e                                            ; $5044: $a3
	ret nz                                           ; $5045: $c0

	ld bc, $01a0                                     ; $5046: $01 $a0 $01
	nop                                              ; $5049: $00
	ld d, c                                          ; $504a: $51
	inc bc                                           ; $504b: $03
	db $e4                                           ; $504c: $e4
	nop                                              ; $504d: $00
	ld [bc], a                                       ; $504e: $02
	add hl, bc                                       ; $504f: $09
	inc hl                                           ; $5050: $23
	ldh [rTIMA], a                                   ; $5051: $e0 $05
	sbc d                                            ; $5053: $9a
	ldh [rDIV], a                                    ; $5054: $e0 $04
	sbc $e0                                          ; $5056: $de $e0
	dec b                                            ; $5058: $05
	ld l, e                                          ; $5059: $6b
	ret nz                                           ; $505a: $c0

	inc b                                            ; $505b: $04
	ld b, b                                          ; $505c: $40
	add b                                            ; $505d: $80
	and b                                            ; $505e: $a0
	nop                                              ; $505f: $00
	ret nz                                           ; $5060: $c0

	ld bc, $01a0                                     ; $5061: $01 $a0 $01
	nop                                              ; $5064: $00
	ld e, a                                          ; $5065: $5f
	pop bc                                           ; $5066: $c1
	ld [hl], h                                       ; $5067: $74
	add c                                            ; $5068: $81
	ld [bc], a                                       ; $5069: $02
	ld hl, sp-$40                                    ; $506a: $f8 $c0
	ld bc, $01a0                                     ; $506c: $01 $a0 $01
	nop                                              ; $506f: $00
	ld h, a                                          ; $5070: $67
	db $e4                                           ; $5071: $e4
	nop                                              ; $5072: $00
	ld [bc], a                                       ; $5073: $02
	add hl, bc                                       ; $5074: $09
	ld [hl], $e0                                     ; $5075: $36 $e0
	inc b                                            ; $5077: $04
	cp h                                             ; $5078: $bc
	ldh [rTIMA], a                                   ; $5079: $e0 $05
	ld c, c                                          ; $507b: $49
	ret nz                                           ; $507c: $c0

	inc b                                            ; $507d: $04
	ld b, b                                          ; $507e: $40
	add b                                            ; $507f: $80
	and b                                            ; $5080: $a0
	nop                                              ; $5081: $00
	pop bc                                           ; $5082: $c1
	ld e, c                                          ; $5083: $59
	db $e3                                           ; $5084: $e3
	nop                                              ; $5085: $00
	ld l, e                                          ; $5086: $6b
	add d                                            ; $5087: $82
	adc e                                            ; $5088: $8b
	ld [bc], a                                       ; $5089: $02
	db $ec                                           ; $508a: $ec
	ld [bc], a                                       ; $508b: $02
	or b                                             ; $508c: $b0
	sub d                                            ; $508d: $92
	ld b, $c0                                        ; $508e: $06 $c0
	ld bc, $01a0                                     ; $5090: $01 $a0 $01
	nop                                              ; $5093: $00
	ld a, e                                          ; $5094: $7b
	ld [bc], a                                       ; $5095: $02
	or b                                             ; $5096: $b0
	sub e                                            ; $5097: $93
	ld b, $c0                                        ; $5098: $06 $c0
	ld bc, $01a0                                     ; $509a: $01 $a0 $01
	nop                                              ; $509d: $00
	add l                                            ; $509e: $85
	ld [bc], a                                       ; $509f: $02
	or b                                             ; $50a0: $b0
	sub h                                            ; $50a1: $94
	ld b, $c0                                        ; $50a2: $06 $c0
	ld bc, $01a0                                     ; $50a4: $01 $a0 $01
	nop                                              ; $50a7: $00
	adc a                                            ; $50a8: $8f
	db $e4                                           ; $50a9: $e4
	nop                                              ; $50aa: $00
	ld [bc], a                                       ; $50ab: $02
	add hl, bc                                       ; $50ac: $09
	ld d, l                                          ; $50ad: $55
	ldh [rP1], a                                     ; $50ae: $e0 $00
	ld d, h                                          ; $50b0: $54
	ei                                               ; $50b1: $fb
	add b                                            ; $50b2: $80
	nop                                              ; $50b3: $00
	ld l, l                                          ; $50b4: $6d
	inc bc                                           ; $50b5: $03
	ldh [rP1], a                                     ; $50b6: $e0 $00
	ld e, c                                          ; $50b8: $59
	ei                                               ; $50b9: $fb
	add b                                            ; $50ba: $80
	nop                                              ; $50bb: $00
	ld l, a                                          ; $50bc: $6f
	inc bc                                           ; $50bd: $03
	ldh [rP1], a                                     ; $50be: $e0 $00
	ld e, [hl]                                       ; $50c0: $5e
	ei                                               ; $50c1: $fb
	add b                                            ; $50c2: $80
	nop                                              ; $50c3: $00
	ld [hl], b                                       ; $50c4: $70
	inc bc                                           ; $50c5: $03
	ldh [rP1], a                                     ; $50c6: $e0 $00
	ld h, e                                          ; $50c8: $63
	ei                                               ; $50c9: $fb
	add b                                            ; $50ca: $80
	nop                                              ; $50cb: $00
	adc h                                            ; $50cc: $8c
	inc bc                                           ; $50cd: $03
	ldh [rP1], a                                     ; $50ce: $e0 $00
	ld l, b                                          ; $50d0: $68
	ei                                               ; $50d1: $fb
	add b                                            ; $50d2: $80
	nop                                              ; $50d3: $00
	adc l                                            ; $50d4: $8d
	inc bc                                           ; $50d5: $03
	ldh [rP1], a                                     ; $50d6: $e0 $00
	ld l, l                                          ; $50d8: $6d
	ei                                               ; $50d9: $fb
	add b                                            ; $50da: $80
	nop                                              ; $50db: $00
	ld a, l                                          ; $50dc: $7d
	inc bc                                           ; $50dd: $03
	ldh [rP1], a                                     ; $50de: $e0 $00
	ld [hl], d                                       ; $50e0: $72
	ld h, b                                          ; $50e1: $60
	db $fc                                           ; $50e2: $fc
	rst FarCall                                          ; $50e3: $f7
	dec d                                            ; $50e4: $15
	add b                                            ; $50e5: $80
	and b                                            ; $50e6: $a0
	ld bc, $a080                                     ; $50e7: $01 $80 $a0
	ld [bc], a                                       ; $50ea: $02
	add b                                            ; $50eb: $80
	and b                                            ; $50ec: $a0
	inc bc                                           ; $50ed: $03
	add b                                            ; $50ee: $80
	and b                                            ; $50ef: $a0
	inc b                                            ; $50f0: $04
	add b                                            ; $50f1: $80
	and b                                            ; $50f2: $a0
	dec b                                            ; $50f3: $05
	add b                                            ; $50f4: $80
	and b                                            ; $50f5: $a0
	ld b, $80                                        ; $50f6: $06 $80
	and b                                            ; $50f8: $a0
	rlca                                             ; $50f9: $07
	ret nc                                           ; $50fa: $d0

	inc bc                                           ; $50fb: $03
	db $e4                                           ; $50fc: $e4
	ld bc, $031e                                     ; $50fd: $01 $1e $03
	db $e4                                           ; $5100: $e4
	nop                                              ; $5101: $00
	ld e, l                                          ; $5102: $5d
	inc c                                            ; $5103: $0c
	add b                                            ; $5104: $80
	ret nz                                           ; $5105: $c0

	dec de                                           ; $5106: $1b
	ret nc                                           ; $5107: $d0

	ld [bc], a                                       ; $5108: $02
	ret nc                                           ; $5109: $d0

	pop de                                           ; $510a: $d1
	inc b                                            ; $510b: $04
	nop                                              ; $510c: $00
	add b                                            ; $510d: $80
	and b                                            ; $510e: $a0
	ld bc, $800c                                     ; $510f: $01 $0c $80
	ret nz                                           ; $5112: $c0

	dec de                                           ; $5113: $1b
	pop de                                           ; $5114: $d1
	ld [bc], a                                       ; $5115: $02
	ret nc                                           ; $5116: $d0

	pop de                                           ; $5117: $d1
	inc b                                            ; $5118: $04
	nop                                              ; $5119: $00
	add b                                            ; $511a: $80
	and b                                            ; $511b: $a0
	ld [bc], a                                       ; $511c: $02
	inc c                                            ; $511d: $0c
	add b                                            ; $511e: $80
	ret nz                                           ; $511f: $c0

	dec de                                           ; $5120: $1b
	jp nc, $d002                                     ; $5121: $d2 $02 $d0

jr_088_5124:
	pop de                                           ; $5124: $d1
	inc b                                            ; $5125: $04
	nop                                              ; $5126: $00
	add b                                            ; $5127: $80
	and b                                            ; $5128: $a0
	inc bc                                           ; $5129: $03
	inc c                                            ; $512a: $0c
	add b                                            ; $512b: $80
	ret nz                                           ; $512c: $c0

	dec de                                           ; $512d: $1b
	db $d3                                           ; $512e: $d3
	ld [bc], a                                       ; $512f: $02
	ret nc                                           ; $5130: $d0

	pop de                                           ; $5131: $d1
	inc b                                            ; $5132: $04
	nop                                              ; $5133: $00
	add b                                            ; $5134: $80
	and b                                            ; $5135: $a0
	inc b                                            ; $5136: $04
	inc c                                            ; $5137: $0c
	add b                                            ; $5138: $80
	ret nz                                           ; $5139: $c0

jr_088_513a:
	dec de                                           ; $513a: $1b
	rst SubAFromHL                                          ; $513b: $d7
	ld [bc], a                                       ; $513c: $02
	ret nc                                           ; $513d: $d0

	pop de                                           ; $513e: $d1
	inc b                                            ; $513f: $04
	nop                                              ; $5140: $00
	add b                                            ; $5141: $80
	and b                                            ; $5142: $a0
	dec b                                            ; $5143: $05
	inc c                                            ; $5144: $0c
	add b                                            ; $5145: $80
	ret nz                                           ; $5146: $c0

	dec de                                           ; $5147: $1b
	ret c                                            ; $5148: $d8

	ld [bc], a                                       ; $5149: $02
	ret nc                                           ; $514a: $d0

	pop de                                           ; $514b: $d1
	inc b                                            ; $514c: $04
	nop                                              ; $514d: $00
	add b                                            ; $514e: $80
	and b                                            ; $514f: $a0

jr_088_5150:
	ld b, $0c                                        ; $5150: $06 $0c
	add b                                            ; $5152: $80
	ret nz                                           ; $5153: $c0

	dec de                                           ; $5154: $1b
	db $dd                                           ; $5155: $dd
	ld [bc], a                                       ; $5156: $02
	ret nc                                           ; $5157: $d0

	pop de                                           ; $5158: $d1
	inc b                                            ; $5159: $04
	nop                                              ; $515a: $00
	add b                                            ; $515b: $80
	and b                                            ; $515c: $a0
	rlca                                             ; $515d: $07
	add hl, bc                                       ; $515e: $09
	cp e                                             ; $515f: $bb
	ret nc                                           ; $5160: $d0

	add a                                            ; $5161: $87
	and b                                            ; $5162: $a0
	ld [$02c0], sp                                   ; $5163: $08 $c0 $02

jr_088_5166:
	rst FarCall                                          ; $5166: $f7
	dec d                                            ; $5167: $15
	add b                                            ; $5168: $80
	and b                                            ; $5169: $a0
	ld bc, $a080                                     ; $516a: $01 $80 $a0
	ld [bc], a                                       ; $516d: $02
	add b                                            ; $516e: $80
	and b                                            ; $516f: $a0
	inc bc                                           ; $5170: $03
	add b                                            ; $5171: $80
	and b                                            ; $5172: $a0
	inc b                                            ; $5173: $04
	add b                                            ; $5174: $80
	and b                                            ; $5175: $a0
	dec b                                            ; $5176: $05
	add b                                            ; $5177: $80
	and b                                            ; $5178: $a0
	ld b, $80                                        ; $5179: $06 $80
	and b                                            ; $517b: $a0

jr_088_517c:
	rlca                                             ; $517c: $07
	ld b, b                                          ; $517d: $40
	adc a                                            ; $517e: $8f
	and b                                            ; $517f: $a0
	db $10                                           ; $5180: $10
	ei                                               ; $5181: $fb
	add b                                            ; $5182: $80
	and b                                            ; $5183: $a0
	ld bc, $fb11                                     ; $5184: $01 $11 $fb
	db $fc                                           ; $5187: $fc
	add a                                            ; $5188: $87
	and b                                            ; $5189: $a0
	ld [$a08f], sp                                   ; $518a: $08 $8f $a0
	db $10                                           ; $518d: $10
	inc b                                            ; $518e: $04
	push hl                                          ; $518f: $e5
	ld e, l                                          ; $5190: $5d
	nop                                              ; $5191: $00

jr_088_5192:
	nop                                              ; $5192: $00
	jr nz, jr_088_5124                               ; $5193: $20 $8f

	and b                                            ; $5195: $a0
	db $10                                           ; $5196: $10
	ei                                               ; $5197: $fb
	add b                                            ; $5198: $80
	and b                                            ; $5199: $a0
	ld [bc], a                                       ; $519a: $02
	ld de, $fcfb                                     ; $519b: $11 $fb $fc
	add a                                            ; $519e: $87
	and b                                            ; $519f: $a0
	ld [$a08f], sp                                   ; $51a0: $08 $8f $a0
	db $10                                           ; $51a3: $10
	inc b                                            ; $51a4: $04
	push hl                                          ; $51a5: $e5
	ld e, [hl]                                       ; $51a6: $5e
	nop                                              ; $51a7: $00

jr_088_51a8:
	nop                                              ; $51a8: $00
	jr nz, jr_088_513a                               ; $51a9: $20 $8f

	and b                                            ; $51ab: $a0
	db $10                                           ; $51ac: $10
	ei                                               ; $51ad: $fb
	add b                                            ; $51ae: $80
	and b                                            ; $51af: $a0
	inc bc                                           ; $51b0: $03
	ld de, $fcfb                                     ; $51b1: $11 $fb $fc
	add a                                            ; $51b4: $87
	and b                                            ; $51b5: $a0
	ld [$a08f], sp                                   ; $51b6: $08 $8f $a0
	db $10                                           ; $51b9: $10
	inc b                                            ; $51ba: $04
	push hl                                          ; $51bb: $e5
	ld e, a                                          ; $51bc: $5f
	nop                                              ; $51bd: $00
	nop                                              ; $51be: $00
	jr nz, jr_088_5150                               ; $51bf: $20 $8f

	and b                                            ; $51c1: $a0
	db $10                                           ; $51c2: $10
	ei                                               ; $51c3: $fb
	add b                                            ; $51c4: $80
	and b                                            ; $51c5: $a0
	inc b                                            ; $51c6: $04
	ld de, $fcfb                                     ; $51c7: $11 $fb $fc
	add a                                            ; $51ca: $87
	and b                                            ; $51cb: $a0
	ld [$a08f], sp                                   ; $51cc: $08 $8f $a0
	db $10                                           ; $51cf: $10
	inc b                                            ; $51d0: $04
	push hl                                          ; $51d1: $e5
	ld h, b                                          ; $51d2: $60

Jump_088_51d3:
	nop                                              ; $51d3: $00
	nop                                              ; $51d4: $00
	jr nz, jr_088_5166                               ; $51d5: $20 $8f

	and b                                            ; $51d7: $a0
	db $10                                           ; $51d8: $10
	ei                                               ; $51d9: $fb
	add b                                            ; $51da: $80
	and b                                            ; $51db: $a0
	dec b                                            ; $51dc: $05
	ld de, $fcfb                                     ; $51dd: $11 $fb $fc
	add a                                            ; $51e0: $87
	and b                                            ; $51e1: $a0
	ld [$a08f], sp                                   ; $51e2: $08 $8f $a0
	db $10                                           ; $51e5: $10
	inc b                                            ; $51e6: $04
	push hl                                          ; $51e7: $e5
	ld h, c                                          ; $51e8: $61
	nop                                              ; $51e9: $00
	nop                                              ; $51ea: $00
	jr nz, jr_088_517c                               ; $51eb: $20 $8f

	and b                                            ; $51ed: $a0
	db $10                                           ; $51ee: $10
	ei                                               ; $51ef: $fb
	add b                                            ; $51f0: $80
	and b                                            ; $51f1: $a0
	ld b, $11                                        ; $51f2: $06 $11
	ei                                               ; $51f4: $fb
	db $fc                                           ; $51f5: $fc
	add a                                            ; $51f6: $87
	and b                                            ; $51f7: $a0
	ld [$a08f], sp                                   ; $51f8: $08 $8f $a0
	db $10                                           ; $51fb: $10
	inc b                                            ; $51fc: $04
	push hl                                          ; $51fd: $e5
	ld h, d                                          ; $51fe: $62
	nop                                              ; $51ff: $00
	nop                                              ; $5200: $00
	jr nz, jr_088_5192                               ; $5201: $20 $8f

	and b                                            ; $5203: $a0
	db $10                                           ; $5204: $10
	ei                                               ; $5205: $fb
	add b                                            ; $5206: $80
	and b                                            ; $5207: $a0
	rlca                                             ; $5208: $07
	ld de, $fcfb                                     ; $5209: $11 $fb $fc
	add a                                            ; $520c: $87
	and b                                            ; $520d: $a0
	ld [$a08f], sp                                   ; $520e: $08 $8f $a0
	db $10                                           ; $5211: $10
	inc b                                            ; $5212: $04
	push hl                                          ; $5213: $e5
	ld h, e                                          ; $5214: $63
	nop                                              ; $5215: $00
	nop                                              ; $5216: $00
	jr nz, jr_088_51a8                               ; $5217: $20 $8f

	and b                                            ; $5219: $a0
	db $10                                           ; $521a: $10
	add hl, bc                                       ; $521b: $09
	ld [de], a                                       ; $521c: $12
	ei                                               ; $521d: $fb
	add b                                            ; $521e: $80
	ld [bc], a                                       ; $521f: $02
	ld a, [$fb0a]                                    ; $5220: $fa $0a $fb
	db $fc                                           ; $5223: $fc
	pop bc                                           ; $5224: $c1
	push bc                                          ; $5225: $c5
	pop de                                           ; $5226: $d1
	inc b                                            ; $5227: $04
	push hl                                          ; $5228: $e5
	ld h, h                                          ; $5229: $64
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	db $e4                                           ; $522c: $e4
	nop                                              ; $522d: $00
	ld [bc], a                                       ; $522e: $02
	jr z, jr_088_5237                                ; $522f: $28 $06

	ret nz                                           ; $5231: $c0

	ld bc, $01a0                                     ; $5232: $01 $a0 $01
	nop                                              ; $5235: $00
	sbc c                                            ; $5236: $99

jr_088_5237:
	dec d                                            ; $5237: $15
	nop                                              ; $5238: $00
	sbc a                                            ; $5239: $9f
	add hl, bc                                       ; $523a: $09
	add hl, bc                                       ; $523b: $09
	ret nz                                           ; $523c: $c0

	ld bc, $01a0                                     ; $523d: $01 $a0 $01
	nop                                              ; $5240: $00
	and h                                            ; $5241: $a4
	db $e4                                           ; $5242: $e4
	nop                                              ; $5243: $00
	ld a, [bc]                                       ; $5244: $0a
	nop                                              ; $5245: $00
	xor e                                            ; $5246: $ab
	add hl, bc                                       ; $5247: $09
	inc b                                            ; $5248: $04
	push hl                                          ; $5249: $e5
	ld h, h                                          ; $524a: $64
	nop                                              ; $524b: $00
	nop                                              ; $524c: $00
	add hl, bc                                       ; $524d: $09
	or b                                             ; $524e: $b0
	db $fd                                           ; $524f: $fd
	xor e                                            ; $5250: $ab
	ret nz                                           ; $5251: $c0

	call c, $01d2                                    ; $5252: $dc $d2 $01
	ret nc                                           ; $5255: $d0

	dec d                                            ; $5256: $15
	ld h, b                                          ; $5257: $60
	add b                                            ; $5258: $80
	ld [bc], a                                       ; $5259: $02
	ld a, [$c006]                                    ; $525a: $fa $06 $c0
	ld bc, $01a0                                     ; $525d: $01 $a0 $01
	nop                                              ; $5260: $00
	xor a                                            ; $5261: $af
	add hl, bc                                       ; $5262: $09
	ret nz                                           ; $5263: $c0

	rrca                                             ; $5264: $0f
	db $e3                                           ; $5265: $e3
	nop                                              ; $5266: $00
	ld l, e                                          ; $5267: $6b
	push hl                                          ; $5268: $e5
	ld e, l                                          ; $5269: $5d
	nop                                              ; $526a: $00
	ld h, c                                          ; $526b: $61
	ld bc, $15d1                                     ; $526c: $01 $d1 $15
	ld h, b                                          ; $526f: $60
	add b                                            ; $5270: $80
	ld [bc], a                                       ; $5271: $02
	ei                                               ; $5272: $fb
	ld b, $c0                                        ; $5273: $06 $c0
	ld bc, $01a0                                     ; $5275: $01 $a0 $01
	nop                                              ; $5278: $00
	or a                                             ; $5279: $b7
	add hl, bc                                       ; $527a: $09
	ret nz                                           ; $527b: $c0

	rrca                                             ; $527c: $0f
	db $e3                                           ; $527d: $e3
	nop                                              ; $527e: $00
	ld l, e                                          ; $527f: $6b
	push hl                                          ; $5280: $e5
	ld e, [hl]                                       ; $5281: $5e
	nop                                              ; $5282: $00
	ld h, c                                          ; $5283: $61
	ld bc, $15d2                                     ; $5284: $01 $d2 $15
	ld h, b                                          ; $5287: $60
	add b                                            ; $5288: $80
	ld [bc], a                                       ; $5289: $02
	db $fc                                           ; $528a: $fc
	ld b, $c0                                        ; $528b: $06 $c0
	ld bc, $01a0                                     ; $528d: $01 $a0 $01
	nop                                              ; $5290: $00
	ret nz                                           ; $5291: $c0

	add hl, bc                                       ; $5292: $09
	ret nz                                           ; $5293: $c0

	rrca                                             ; $5294: $0f
	db $e3                                           ; $5295: $e3
	nop                                              ; $5296: $00
	ld l, e                                          ; $5297: $6b
	push hl                                          ; $5298: $e5
	ld e, a                                          ; $5299: $5f
	nop                                              ; $529a: $00
	ld h, l                                          ; $529b: $65
	ld bc, $15d3                                     ; $529c: $01 $d3 $15
	ld h, b                                          ; $529f: $60
	add b                                            ; $52a0: $80
	ld [bc], a                                       ; $52a1: $02
	db $fd                                           ; $52a2: $fd
	ld b, $c0                                        ; $52a3: $06 $c0
	ld bc, $01a0                                     ; $52a5: $01 $a0 $01
	nop                                              ; $52a8: $00
	ret z                                            ; $52a9: $c8

	add hl, bc                                       ; $52aa: $09
	ret nz                                           ; $52ab: $c0

	rrca                                             ; $52ac: $0f
	db $e3                                           ; $52ad: $e3
	nop                                              ; $52ae: $00
	ld l, e                                          ; $52af: $6b
	push hl                                          ; $52b0: $e5
	ld h, b                                          ; $52b1: $60
	nop                                              ; $52b2: $00
	ld h, c                                          ; $52b3: $61
	ld bc, $15d7                                     ; $52b4: $01 $d7 $15
	ld h, b                                          ; $52b7: $60
	add b                                            ; $52b8: $80
	ld [bc], a                                       ; $52b9: $02
	cp $06                                           ; $52ba: $fe $06
	ret nz                                           ; $52bc: $c0

	ld bc, $01a0                                     ; $52bd: $01 $a0 $01
	nop                                              ; $52c0: $00
	pop de                                           ; $52c1: $d1
	add hl, bc                                       ; $52c2: $09
	ret nz                                           ; $52c3: $c0

	rrca                                             ; $52c4: $0f
	db $e3                                           ; $52c5: $e3
	nop                                              ; $52c6: $00
	ld l, e                                          ; $52c7: $6b
	push hl                                          ; $52c8: $e5
	ld h, c                                          ; $52c9: $61
	nop                                              ; $52ca: $00
	ld h, c                                          ; $52cb: $61
	ld bc, $15d8                                     ; $52cc: $01 $d8 $15
	ld h, b                                          ; $52cf: $60
	add b                                            ; $52d0: $80
	ld [bc], a                                       ; $52d1: $02
	rst $38                                          ; $52d2: $ff
	ld b, $c0                                        ; $52d3: $06 $c0
	ld bc, $01a0                                     ; $52d5: $01 $a0 $01
	nop                                              ; $52d8: $00
	reti                                             ; $52d9: $d9


	add hl, bc                                       ; $52da: $09
	ret nz                                           ; $52db: $c0

	rrca                                             ; $52dc: $0f
	db $e3                                           ; $52dd: $e3
	nop                                              ; $52de: $00
	ld l, e                                          ; $52df: $6b
	push hl                                          ; $52e0: $e5
	ld h, d                                          ; $52e1: $62
	nop                                              ; $52e2: $00
	ld e, e                                          ; $52e3: $5b
	ld bc, $15dd                                     ; $52e4: $01 $dd $15
	ld h, b                                          ; $52e7: $60
	add b                                            ; $52e8: $80
	inc bc                                           ; $52e9: $03
	nop                                              ; $52ea: $00
	ld b, $c0                                        ; $52eb: $06 $c0
	ld bc, $01a0                                     ; $52ed: $01 $a0 $01
	nop                                              ; $52f0: $00
	ldh [c], a                                       ; $52f1: $e2
	add hl, bc                                       ; $52f2: $09
	ret nz                                           ; $52f3: $c0

	rrca                                             ; $52f4: $0f
	db $e3                                           ; $52f5: $e3
	nop                                              ; $52f6: $00
	ld l, e                                          ; $52f7: $6b
	push hl                                          ; $52f8: $e5
	ld h, e                                          ; $52f9: $63
	nop                                              ; $52fa: $00
	add c                                            ; $52fb: $81
	db $e4                                           ; $52fc: $e4
	rst $38                                          ; $52fd: $ff
	ld d, b                                          ; $52fe: $50
	ld [hl+], a                                      ; $52ff: $22
	add d                                            ; $5300: $82
	adc e                                            ; $5301: $8b
	ld [bc], a                                       ; $5302: $02
	db $ec                                           ; $5303: $ec
	ld [bc], a                                       ; $5304: $02
	or b                                             ; $5305: $b0
	sub d                                            ; $5306: $92
	ld b, $c0                                        ; $5307: $06 $c0
	ld bc, $01a0                                     ; $5309: $01 $a0 $01
	nop                                              ; $530c: $00
	ld [$b002], a                                    ; $530d: $ea $02 $b0
	sub h                                            ; $5310: $94
	ld b, $c0                                        ; $5311: $06 $c0
	ld bc, $01a0                                     ; $5313: $01 $a0 $01
	nop                                              ; $5316: $00
	ldh a, [c]                                       ; $5317: $f2
	ld [bc], a                                       ; $5318: $02
	or b                                             ; $5319: $b0
	sub e                                            ; $531a: $93
	ld b, $c0                                        ; $531b: $06 $c0
	ld bc, $01a0                                     ; $531d: $01 $a0 $01
	nop                                              ; $5320: $00
	rst $38                                          ; $5321: $ff
	add hl, bc                                       ; $5322: $09
	ld e, $c0                                        ; $5323: $1e $c0
	set 0, c                                         ; $5325: $cb $c1
	ld e, e                                          ; $5327: $5b
	ldh [rSC], a                                     ; $5328: $e0 $02
	ld a, [bc]                                       ; $532a: $0a
	ldh [rSC], a                                     ; $532b: $e0 $02
	sub a                                            ; $532d: $97
	ret nz                                           ; $532e: $c0

	inc b                                            ; $532f: $04
	ld b, b                                          ; $5330: $40
	add b                                            ; $5331: $80
	and b                                            ; $5332: $a0
	nop                                              ; $5333: $00
	ret nz                                           ; $5334: $c0

	ld bc, $01a0                                     ; $5335: $01 $a0 $01
	nop                                              ; $5338: $00
	ld e, a                                          ; $5339: $5f
	pop bc                                           ; $533a: $c1
	ld [hl], h                                       ; $533b: $74
	add c                                            ; $533c: $81
	ld [bc], a                                       ; $533d: $02
	ld hl, sp-$1c                                    ; $533e: $f8 $e4
	nop                                              ; $5340: $00
	ld [bc], a                                       ; $5341: $02
	add hl, bc                                       ; $5342: $09
	and c                                            ; $5343: $a1
	ldh [rSB], a                                     ; $5344: $e0 $01
	xor $e0                                          ; $5346: $ee $e0
	ld [bc], a                                       ; $5348: $02
	ld a, e                                          ; $5349: $7b
	ret nz                                           ; $534a: $c0

	ld bc, $01a0                                     ; $534b: $01 $a0 $01
	ld bc, $c006                                     ; $534e: $01 $06 $c0
	inc b                                            ; $5351: $04
	ld b, b                                          ; $5352: $40
	add b                                            ; $5353: $80
	and b                                            ; $5354: $a0
	nop                                              ; $5355: $00
	pop bc                                           ; $5356: $c1
	ld e, c                                          ; $5357: $59
	db $e3                                           ; $5358: $e3
	nop                                              ; $5359: $00
	ld l, e                                          ; $535a: $6b
	db $fd                                           ; $535b: $fd
	adc b                                            ; $535c: $88
	adc e                                            ; $535d: $8b
	inc bc                                           ; $535e: $03
	ld bc, $b002                                     ; $535f: $01 $02 $b0
	inc bc                                           ; $5362: $03
	dec c                                            ; $5363: $0d
	ret nz                                           ; $5364: $c0

	ld bc, $01a0                                     ; $5365: $01 $a0 $01
	ld bc, $e012                                     ; $5368: $01 $12 $e0
	nop                                              ; $536b: $00
	ld a, d                                          ; $536c: $7a
	push hl                                          ; $536d: $e5
	ld e, l                                          ; $536e: $5d
	ld bc, $0292                                     ; $536f: $01 $92 $02
	or b                                             ; $5372: $b0
	inc b                                            ; $5373: $04
	dec c                                            ; $5374: $0d
	ret nz                                           ; $5375: $c0

	ld bc, $01a0                                     ; $5376: $01 $a0 $01
	ld bc, $e01c                                     ; $5379: $01 $1c $e0
	nop                                              ; $537c: $00
	ld l, c                                          ; $537d: $69
	push hl                                          ; $537e: $e5
	ld e, [hl]                                       ; $537f: $5e
	ld bc, $0285                                     ; $5380: $01 $85 $02
	or b                                             ; $5383: $b0
	dec b                                            ; $5384: $05
	dec c                                            ; $5385: $0d
	ret nz                                           ; $5386: $c0

	ld bc, $01a0                                     ; $5387: $01 $a0 $01
	ld bc, $e026                                     ; $538a: $01 $26 $e0
	nop                                              ; $538d: $00
	ld e, b                                          ; $538e: $58
	push hl                                          ; $538f: $e5
	ld e, a                                          ; $5390: $5f
	ld bc, $02e8                                     ; $5391: $01 $e8 $02
	or b                                             ; $5394: $b0
	ld b, $0d                                        ; $5395: $06 $0d
	ret nz                                           ; $5397: $c0

	ld bc, $01a0                                     ; $5398: $01 $a0 $01
	ld bc, $e030                                     ; $539b: $01 $30 $e0
	nop                                              ; $539e: $00
	ld b, a                                          ; $539f: $47
	push hl                                          ; $53a0: $e5
	ld h, b                                          ; $53a1: $60
	ld bc, $02c6                                     ; $53a2: $01 $c6 $02
	or b                                             ; $53a5: $b0
	rlca                                             ; $53a6: $07
	dec c                                            ; $53a7: $0d
	ret nz                                           ; $53a8: $c0

	ld bc, $01a0                                     ; $53a9: $01 $a0 $01
	ld bc, $e03a                                     ; $53ac: $01 $3a $e0
	nop                                              ; $53af: $00
	ld [hl], $e5                                     ; $53b0: $36 $e5
	ld h, c                                          ; $53b2: $61
	ld [bc], a                                       ; $53b3: $02
	inc l                                            ; $53b4: $2c
	ld [bc], a                                       ; $53b5: $02
	or b                                             ; $53b6: $b0
	ld [$c00d], sp                                   ; $53b7: $08 $0d $c0
	ld bc, $01a0                                     ; $53ba: $01 $a0 $01
	ld bc, $e044                                     ; $53bd: $01 $44 $e0
	nop                                              ; $53c0: $00
	dec h                                            ; $53c1: $25
	push hl                                          ; $53c2: $e5
	ld h, d                                          ; $53c3: $62
	ld bc, $0297                                     ; $53c4: $01 $97 $02
	or b                                             ; $53c7: $b0
	ld a, [bc]                                       ; $53c8: $0a
	dec c                                            ; $53c9: $0d
	ret nz                                           ; $53ca: $c0

	ld bc, $01a0                                     ; $53cb: $01 $a0 $01
	ld bc, $e04e                                     ; $53ce: $01 $4e $e0
	nop                                              ; $53d1: $00
	inc d                                            ; $53d2: $14
	push hl                                          ; $53d3: $e5
	ld h, e                                          ; $53d4: $63
	ld bc, $02bb                                     ; $53d5: $01 $bb $02
	or b                                             ; $53d8: $b0
	sub c                                            ; $53d9: $91
	ld a, [bc]                                       ; $53da: $0a
	ret nz                                           ; $53db: $c0

	ld bc, $01a0                                     ; $53dc: $01 $a0 $01
	ld bc, $e558                                     ; $53df: $01 $58 $e5
	ld h, h                                          ; $53e2: $64
	nop                                              ; $53e3: $00
	ldh a, [rTMA]                                    ; $53e4: $f0 $06
	ret nz                                           ; $53e6: $c0

	ld bc, $01a0                                     ; $53e7: $01 $a0 $01
	ld bc, $2264                                     ; $53ea: $01 $64 $22
	add d                                            ; $53ed: $82
	adc e                                            ; $53ee: $8b
	ld [bc], a                                       ; $53ef: $02
	db $ec                                           ; $53f0: $ec
	ld [bc], a                                       ; $53f1: $02
	or b                                             ; $53f2: $b0
	sub d                                            ; $53f3: $92
	ld b, $c0                                        ; $53f4: $06 $c0
	ld bc, $01a0                                     ; $53f6: $01 $a0 $01
	ld bc, $026d                                     ; $53f9: $01 $6d $02
	or b                                             ; $53fc: $b0
	sub h                                            ; $53fd: $94
	ld b, $c0                                        ; $53fe: $06 $c0
	ld bc, $01a0                                     ; $5400: $01 $a0 $01
	ld bc, $0277                                     ; $5403: $01 $77 $02
	or b                                             ; $5406: $b0
	sub e                                            ; $5407: $93
	ld b, $c0                                        ; $5408: $06 $c0
	ld bc, $01a0                                     ; $540a: $01 $a0 $01
	ld bc, $0696                                     ; $540d: $01 $96 $06
	ret nz                                           ; $5410: $c0

	ld bc, $01a0                                     ; $5411: $01 $a0 $01
	ld bc, $0c9d                                     ; $5414: $01 $9d $0c
	pop bc                                           ; $5417: $c1
	cp b                                             ; $5418: $b8
	pop bc                                           ; $5419: $c1
	ld e, e                                          ; $541a: $5b
	pop bc                                           ; $541b: $c1
	ld a, [de]                                       ; $541c: $1a
	ret nc                                           ; $541d: $d0

	ret nz                                           ; $541e: $c0

	rrca                                             ; $541f: $0f
	db $e3                                           ; $5420: $e3
	nop                                              ; $5421: $00
	ld [hl], c                                       ; $5422: $71
	inc c                                            ; $5423: $0c
	pop bc                                           ; $5424: $c1
	cp b                                             ; $5425: $b8
	pop bc                                           ; $5426: $c1
	ld e, e                                          ; $5427: $5b
	pop bc                                           ; $5428: $c1
	dec de                                           ; $5429: $1b
	ret nc                                           ; $542a: $d0

	ret nz                                           ; $542b: $c0

	rrca                                             ; $542c: $0f
	db $e3                                           ; $542d: $e3
	nop                                              ; $542e: $00
	ld [hl], h                                       ; $542f: $74
	inc c                                            ; $5430: $0c
	pop bc                                           ; $5431: $c1
	cp b                                             ; $5432: $b8
	pop bc                                           ; $5433: $c1
	ld e, e                                          ; $5434: $5b
	pop bc                                           ; $5435: $c1
	inc e                                            ; $5436: $1c
	ret nc                                           ; $5437: $d0

	ret nz                                           ; $5438: $c0

	rrca                                             ; $5439: $0f
	db $e3                                           ; $543a: $e3
	nop                                              ; $543b: $00
	ld l, [hl]                                       ; $543c: $6e
	add hl, bc                                       ; $543d: $09
	add hl, bc                                       ; $543e: $09
	ret nz                                           ; $543f: $c0

	ld bc, $01a0                                     ; $5440: $01 $a0 $01
	ld bc, $e4a2                                     ; $5443: $01 $a2 $e4
	nop                                              ; $5446: $00
	ld [bc], a                                       ; $5447: $02
	add hl, bc                                       ; $5448: $09
	ld a, [hl]                                       ; $5449: $7e
	ldh [rP1], a                                     ; $544a: $e0 $00
	add sp, -$20                                     ; $544c: $e8 $e0
	ld bc, $c075                                     ; $544e: $01 $75 $c0
	inc b                                            ; $5451: $04
	ld b, b                                          ; $5452: $40
	add b                                            ; $5453: $80
	and b                                            ; $5454: $a0
	nop                                              ; $5455: $00
	ret nz                                           ; $5456: $c0

	ld bc, $01a0                                     ; $5457: $01 $a0 $01
	ld bc, $c1ac                                     ; $545a: $01 $ac $c1
	ld [hl], h                                       ; $545d: $74
	add c                                            ; $545e: $81
	ld [bc], a                                       ; $545f: $02
	ld hl, sp-$3f                                    ; $5460: $f8 $c1
	ld e, c                                          ; $5462: $59
	db $e3                                           ; $5463: $e3
	nop                                              ; $5464: $00
	ld l, d                                          ; $5465: $6a
	ret nz                                           ; $5466: $c0

	ld bc, $01a0                                     ; $5467: $01 $a0 $01
	ld bc, $81b9                                     ; $546a: $01 $b9 $81
	adc e                                            ; $546d: $8b
	inc bc                                           ; $546e: $03
	ld bc, $b002                                     ; $546f: $01 $02 $b0
	sub c                                            ; $5472: $91
	ld [hl+], a                                      ; $5473: $22
	add d                                            ; $5474: $82
	adc e                                            ; $5475: $8b
	ld [bc], a                                       ; $5476: $02
	db $ec                                           ; $5477: $ec
	ld [bc], a                                       ; $5478: $02
	or b                                             ; $5479: $b0
	sub d                                            ; $547a: $92
	ld b, $c0                                        ; $547b: $06 $c0
	ld bc, $01a0                                     ; $547d: $01 $a0 $01
	ld bc, $02c6                                     ; $5480: $01 $c6 $02
	or b                                             ; $5483: $b0
	sub h                                            ; $5484: $94
	ld b, $c0                                        ; $5485: $06 $c0
	ld bc, $01a0                                     ; $5487: $01 $a0 $01
	ld bc, $02d7                                     ; $548a: $01 $d7 $02
	or b                                             ; $548d: $b0
	sub e                                            ; $548e: $93
	ld b, $c0                                        ; $548f: $06 $c0
	ld bc, $01a0                                     ; $5491: $01 $a0 $01
	ld bc, $00e9                                     ; $5494: $01 $e9 $00
	ld [de], a                                       ; $5497: $12
	ld h, b                                          ; $5498: $60
	add b                                            ; $5499: $80
	inc bc                                           ; $549a: $03
	dec c                                            ; $549b: $0d
	ld b, $c0                                        ; $549c: $06 $c0
	ld bc, $01a0                                     ; $549e: $01 $a0 $01
	ld bc, $06fa                                     ; $54a1: $01 $fa $06
	ret nz                                           ; $54a4: $c0

	ld bc, $01a0                                     ; $54a5: $01 $a0 $01
	ld [bc], a                                       ; $54a8: $02
	inc b                                            ; $54a9: $04
	ret nz                                           ; $54aa: $c0

	bit 0, b                                         ; $54ab: $cb $40
	add b                                            ; $54ad: $80
	and b                                            ; $54ae: $a0
	ld bc, $8045                                     ; $54af: $01 $45 $80
	and b                                            ; $54b2: $a0
	ld [bc], a                                       ; $54b3: $02
	add b                                            ; $54b4: $80
	and b                                            ; $54b5: $a0
	inc bc                                           ; $54b6: $03
	add b                                            ; $54b7: $80
	and b                                            ; $54b8: $a0
	inc b                                            ; $54b9: $04
	add b                                            ; $54ba: $80
	and b                                            ; $54bb: $a0
	dec b                                            ; $54bc: $05
	add b                                            ; $54bd: $80
	and b                                            ; $54be: $a0
	ld b, $80                                        ; $54bf: $06 $80
	and b                                            ; $54c1: $a0
	rlca                                             ; $54c2: $07
	pop bc                                           ; $54c3: $c1
	dec b                                            ; $54c4: $05
	db $e4                                           ; $54c5: $e4
	nop                                              ; $54c6: $00
	ld [bc], a                                       ; $54c7: $02
	inc c                                            ; $54c8: $0c
	ld c, [hl]                                       ; $54c9: $4e
	cp $0a                                           ; $54ca: $fe $0a
	db $fc                                           ; $54cc: $fc
	ret nz                                           ; $54cd: $c0

	ld h, l                                          ; $54ce: $65
	ret nz                                           ; $54cf: $c0

	ld [hl], h                                       ; $54d0: $74
	db $fc                                           ; $54d1: $fc
	ret nz                                           ; $54d2: $c0

	ld h, [hl]                                       ; $54d3: $66
	ret nz                                           ; $54d4: $c0

	ld [hl], l                                       ; $54d5: $75
	jr z, jr_088_54e6                                ; $54d6: $28 $0e

	ret nz                                           ; $54d8: $c0

	push af                                          ; $54d9: $f5
	ret nz                                           ; $54da: $c0

	ld bc, $01a0                                     ; $54db: $01 $a0 $01
	ld [bc], a                                       ; $54de: $02
	rrca                                             ; $54df: $0f
	ret nz                                           ; $54e0: $c0

	ld bc, $01a0                                     ; $54e1: $01 $a0 $01
	ld [bc], a                                       ; $54e4: $02
	add hl, de                                       ; $54e5: $19

jr_088_54e6:
	daa                                              ; $54e6: $27
	ld [bc], a                                       ; $54e7: $02
	jr z, jr_088_54f3                                ; $54e8: $28 $09

	ld a, [bc]                                       ; $54ea: $0a
	ret nc                                           ; $54eb: $d0

	adc e                                            ; $54ec: $8b
	nop                                              ; $54ed: $00
	sbc $b0                                          ; $54ee: $de $b0
	ld l, l                                          ; $54f0: $6d
	push hl                                          ; $54f1: $e5
	ld b, l                                          ; $54f2: $45

jr_088_54f3:
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	ld [bc], a                                       ; $54f5: $02
	ld a, [hl+]                                      ; $54f6: $2a
	add hl, bc                                       ; $54f7: $09
	dec d                                            ; $54f8: $15
	ret nz                                           ; $54f9: $c0

	inc h                                            ; $54fa: $24
	pop de                                           ; $54fb: $d1
	ret nc                                           ; $54fc: $d0

	ret nz                                           ; $54fd: $c0

	inc hl                                           ; $54fe: $23
	push de                                          ; $54ff: $d5
	ret nc                                           ; $5500: $d0

	ret nz                                           ; $5501: $c0

	ld bc, $01a0                                     ; $5502: $01 $a0 $01
	ld [bc], a                                       ; $5505: $02
	inc l                                            ; $5506: $2c
	ldh [rP1], a                                     ; $5507: $e0 $00
	db $10                                           ; $5509: $10
	push hl                                          ; $550a: $e5
	ld bc, $b119                                     ; $550b: $01 $19 $b1
	pop de                                           ; $550e: $d1
	add hl, bc                                       ; $550f: $09
	rlca                                             ; $5510: $07
	ldh [rP1], a                                     ; $5511: $e0 $00
	ld b, $e5                                        ; $5513: $06 $e5
	ld bc, $b119                                     ; $5515: $01 $19 $b1
	ld a, [de]                                       ; $5518: $1a
	ei                                               ; $5519: $fb
	cp $0a                                           ; $551a: $fe $0a
	db $fc                                           ; $551c: $fc

jr_088_551d:
	ret nz                                           ; $551d: $c0

	ld h, l                                          ; $551e: $65
	ret nz                                           ; $551f: $c0

	ld [hl], c                                       ; $5520: $71
	db $fc                                           ; $5521: $fc
	ret nz                                           ; $5522: $c0

	ld h, [hl]                                       ; $5523: $66
	ret nz                                           ; $5524: $c0

	ld [hl], d                                       ; $5525: $72
	inc c                                            ; $5526: $0c
	ret nz                                           ; $5527: $c0

	push af                                          ; $5528: $f5
	ret nc                                           ; $5529: $d0

	adc e                                            ; $552a: $8b
	nop                                              ; $552b: $00
	ld [$6db0], a                                    ; $552c: $ea $b0 $6d
	pop hl                                           ; $552f: $e1
	ld b, [hl]                                       ; $5530: $46
	nop                                              ; $5531: $00
	dec e                                            ; $5532: $1d
	add hl, de                                       ; $5533: $19
	ei                                               ; $5534: $fb
	cp $0a                                           ; $5535: $fe $0a
	db $fc                                           ; $5537: $fc
	ret nz                                           ; $5538: $c0

	ld h, l                                          ; $5539: $65
	ret nz                                           ; $553a: $c0

	ld [hl], h                                       ; $553b: $74
	db $fc                                           ; $553c: $fc
	ret nz                                           ; $553d: $c0

	ld h, [hl]                                       ; $553e: $66
	ret nz                                           ; $553f: $c0

	ld [hl], l                                       ; $5540: $75
	dec bc                                           ; $5541: $0b
	and b                                            ; $5542: $a0
	add b                                            ; $5543: $80
	and b                                            ; $5544: $a0
	nop                                              ; $5545: $00
	nop                                              ; $5546: $00
	inc bc                                           ; $5547: $03
	db $e4                                           ; $5548: $e4
	nop                                              ; $5549: $00
	inc b                                            ; $554a: $04
	rst $38                                          ; $554b: $ff
	nop                                              ; $554c: $00
	jr z, jr_088_5562                                ; $554d: $28 $13

	pop bc                                           ; $554f: $c1
	ld d, e                                          ; $5550: $53
	ret nz                                           ; $5551: $c0

	inc d                                            ; $5552: $14
	db $e3                                           ; $5553: $e3
	nop                                              ; $5554: $00
	ld l, e                                          ; $5555: $6b
	ret nz                                           ; $5556: $c0

	ld bc, $01a0                                     ; $5557: $01 $a0 $01
	ld [bc], a                                       ; $555a: $02
	jr nc, jr_088_551d                               ; $555b: $30 $c0

	ld bc, $01a0                                     ; $555d: $01 $a0 $01
	ld [bc], a                                       ; $5560: $02
	inc [hl]                                         ; $5561: $34

jr_088_5562:
	inc hl                                           ; $5562: $23
	ld [bc], a                                       ; $5563: $02
	jr z, jr_088_556f                                ; $5564: $28 $09

	ld a, [bc]                                       ; $5566: $0a
	ret nc                                           ; $5567: $d0

	adc e                                            ; $5568: $8b
	nop                                              ; $5569: $00
	sbc $b0                                          ; $556a: $de $b0
	ld [hl], b                                       ; $556c: $70
	push hl                                          ; $556d: $e5
	ld b, l                                          ; $556e: $45

jr_088_556f:
	nop                                              ; $556f: $00
	nop                                              ; $5570: $00
	ld [bc], a                                       ; $5571: $02
	ld a, [hl+]                                      ; $5572: $2a
	add hl, bc                                       ; $5573: $09
	ld de, $24c0                                     ; $5574: $11 $c0 $24
	pop de                                           ; $5577: $d1
	ret nc                                           ; $5578: $d0

	ret nz                                           ; $5579: $c0

	inc hl                                           ; $557a: $23
	push de                                          ; $557b: $d5
	ret nc                                           ; $557c: $d0

	ret nz                                           ; $557d: $c0

	ld bc, $01a0                                     ; $557e: $01 $a0 $01
	ld [bc], a                                       ; $5581: $02
	inc l                                            ; $5582: $2c
	db $e4                                           ; $5583: $e4
	nop                                              ; $5584: $00
	ld [bc], a                                       ; $5585: $02
	add hl, bc                                       ; $5586: $09
	dec sp                                           ; $5587: $3b
	pop bc                                           ; $5588: $c1
	cp l                                             ; $5589: $bd
	ret nc                                           ; $558a: $d0

	ret nz                                           ; $558b: $c0

	set 7, l                                         ; $558c: $cb $fd
	inc [hl]                                         ; $558e: $34
	ret nz                                           ; $558f: $c0

	ld h, a                                          ; $5590: $67
	ld bc, $03d1                                     ; $5591: $01 $d1 $03
	db $e4                                           ; $5594: $e4
	ld a, [$01ba]                                    ; $5595: $fa $ba $01
	jp nc, wPtrToDataCopyStruct                                     ; $5598: $d2 $08 $c1

	dec sp                                           ; $559b: $3b
	ldh [rP1], a                                     ; $559c: $e0 $00
	ld c, a                                          ; $559e: $4f
	db $e4                                           ; $559f: $e4
	ld a, [$01d4]                                    ; $55a0: $fa $d4 $01
	db $d3                                           ; $55a3: $d3
	ld [$3bc1], sp                                   ; $55a4: $08 $c1 $3b
	ldh [rP1], a                                     ; $55a7: $e0 $00
	ld b, h                                          ; $55a9: $44
	db $e4                                           ; $55aa: $e4
	db $fd                                           ; $55ab: $fd
	ld [hl], a                                       ; $55ac: $77
	ld bc, $08d4                                     ; $55ad: $01 $d4 $08
	pop bc                                           ; $55b0: $c1
	dec sp                                           ; $55b1: $3b
	ldh [rP1], a                                     ; $55b2: $e0 $00
	add hl, sp                                       ; $55b4: $39
	db $e4                                           ; $55b5: $e4
	db $fd                                           ; $55b6: $fd
	adc h                                            ; $55b7: $8c
	ld bc, $08d5                                     ; $55b8: $01 $d5 $08
	pop bc                                           ; $55bb: $c1
	dec sp                                           ; $55bc: $3b
	ldh [rP1], a                                     ; $55bd: $e0 $00
	ld l, $e4                                        ; $55bf: $2e $e4
	cp $87                                           ; $55c1: $fe $87
	ld [hl+], a                                      ; $55c3: $22
	ei                                               ; $55c4: $fb
	cp $0a                                           ; $55c5: $fe $0a
	db $fc                                           ; $55c7: $fc
	ret nz                                           ; $55c8: $c0

	ld h, l                                          ; $55c9: $65
	ret nz                                           ; $55ca: $c0

	ld [hl], c                                       ; $55cb: $71
	db $fc                                           ; $55cc: $fc
	ret nz                                           ; $55cd: $c0

	ld h, [hl]                                       ; $55ce: $66
	ret nz                                           ; $55cf: $c0

	ld [hl], d                                       ; $55d0: $72
	inc d                                            ; $55d1: $14
	and b                                            ; $55d2: $a0
	add b                                            ; $55d3: $80
	and b                                            ; $55d4: $a0
	jr nz, jr_088_55d7                               ; $55d5: $20 $00

jr_088_55d7:
	inc c                                            ; $55d7: $0c
	ret nc                                           ; $55d8: $d0

	adc e                                            ; $55d9: $8b
	nop                                              ; $55da: $00
	ld [$70b0], a                                    ; $55db: $ea $b0 $70
	pop hl                                           ; $55de: $e1
	ld b, [hl]                                       ; $55df: $46
	nop                                              ; $55e0: $00
	dec e                                            ; $55e1: $1d
	ret nz                                           ; $55e2: $c0

	set 7, a                                         ; $55e3: $cb $ff
	nop                                              ; $55e5: $00
	dec b                                            ; $55e6: $05
	pop bc                                           ; $55e7: $c1
	ld [hl], h                                       ; $55e8: $74
	add c                                            ; $55e9: $81
	ld [bc], a                                       ; $55ea: $02
	ld hl, sp+$1f                                    ; $55eb: $f8 $1f
	add d                                            ; $55ed: $82
	adc e                                            ; $55ee: $8b
	ld [bc], a                                       ; $55ef: $02
	db $ec                                           ; $55f0: $ec
	ld [bc], a                                       ; $55f1: $02
	or b                                             ; $55f2: $b0
	sub d                                            ; $55f3: $92
	dec b                                            ; $55f4: $05
	ret nz                                           ; $55f5: $c0

	add hl, bc                                       ; $55f6: $09
	db $e3                                           ; $55f7: $e3
	nop                                              ; $55f8: $00
	ld e, d                                          ; $55f9: $5a
	ld [bc], a                                       ; $55fa: $02
	or b                                             ; $55fb: $b0
	sub h                                            ; $55fc: $94
	dec b                                            ; $55fd: $05
	ret nz                                           ; $55fe: $c0

	add hl, bc                                       ; $55ff: $09
	db $e3                                           ; $5600: $e3
	nop                                              ; $5601: $00
	ld d, h                                          ; $5602: $54
	ld [bc], a                                       ; $5603: $02
	or b                                             ; $5604: $b0
	sub e                                            ; $5605: $93
	dec b                                            ; $5606: $05
	ret nz                                           ; $5607: $c0

	add hl, bc                                       ; $5608: $09
	db $e3                                           ; $5609: $e3
	nop                                              ; $560a: $00
	ld e, a                                          ; $560b: $5f
	add c                                            ; $560c: $81
	ld [$2228], sp                                   ; $560d: $08 $28 $22
	ret nz                                           ; $5610: $c0

	ld bc, $02a0                                     ; $5611: $01 $a0 $02
	nop                                              ; $5614: $00
	ld bc, $02e1                                     ; $5615: $01 $e1 $02
	nop                                              ; $5618: $00
	ret nz                                           ; $5619: $c0

	ret nz                                           ; $561a: $c0

	ld bc, $01a0                                     ; $561b: $01 $a0 $01
	nop                                              ; $561e: $00
	inc bc                                           ; $561f: $03
	ret nz                                           ; $5620: $c0

	ld bc, $02a0                                     ; $5621: $01 $a0 $02
	nop                                              ; $5624: $00
	add hl, bc                                       ; $5625: $09
	ret nz                                           ; $5626: $c0

	ld bc, $01a0                                     ; $5627: $01 $a0 $01
	nop                                              ; $562a: $00
	ld de, $01c0                                     ; $562b: $11 $c0 $01
	and b                                            ; $562e: $a0
	ld [bc], a                                       ; $562f: $02
	nop                                              ; $5630: $00
	ld d, $3c                                        ; $5631: $16 $3c
	nop                                              ; $5633: $00
	dec de                                           ; $5634: $1b
	add hl, bc                                       ; $5635: $09
	dec c                                            ; $5636: $0d
	pop hl                                           ; $5637: $e1
	ld [bc], a                                       ; $5638: $02
	inc bc                                           ; $5639: $03
	inc de                                           ; $563a: $13
	ret nz                                           ; $563b: $c0

	ld bc, $02a0                                     ; $563c: $01 $a0 $02
	nop                                              ; $563f: $00
	dec e                                            ; $5640: $1d
	db $e4                                           ; $5641: $e4
	nop                                              ; $5642: $00
	db $db                                           ; $5643: $db
	nop                                              ; $5644: $00
	daa                                              ; $5645: $27
	add hl, bc                                       ; $5646: $09
	daa                                              ; $5647: $27
	pop hl                                           ; $5648: $e1
	ld [bc], a                                       ; $5649: $02
	inc bc                                           ; $564a: $03
	dec de                                           ; $564b: $1b
	ret nz                                           ; $564c: $c0

	ld bc, $02a0                                     ; $564d: $01 $a0 $02
	nop                                              ; $5650: $00
	add hl, hl                                       ; $5651: $29
	pop bc                                           ; $5652: $c1
	ld e, e                                          ; $5653: $5b
	ret nz                                           ; $5654: $c0

	ld bc, $01a0                                     ; $5655: $01 $a0 $01
	nop                                              ; $5658: $00
	ld l, $00                                        ; $5659: $2e $00
	add b                                            ; $565b: $80
	ld [bc], a                                       ; $565c: $02
	ld a, [$24c0]                                    ; $565d: $fa $c0 $24
	jp nc, $c0d0                                     ; $5660: $d2 $d0 $c0

	dec h                                            ; $5663: $25
	pop de                                           ; $5664: $d1
	ret nc                                           ; $5665: $d0

	ret nz                                           ; $5666: $c0

	inc hl                                           ; $5667: $23
	ldh [rAUD1HIGH], a                               ; $5668: $e0 $14
	ret nc                                           ; $566a: $d0

	push hl                                          ; $566b: $e5
	ld e, h                                          ; $566c: $5c
	ld [bc], a                                       ; $566d: $02
	ld a, $09                                        ; $566e: $3e $09
	add [hl]                                         ; $5670: $86
	ret nz                                           ; $5671: $c0

	ld bc, $01a0                                     ; $5672: $01 $a0 $01
	nop                                              ; $5675: $00
	ld [hl-], a                                      ; $5676: $32
	ret nz                                           ; $5677: $c0

	ld bc, $01a0                                     ; $5678: $01 $a0 $01
	nop                                              ; $567b: $00
	inc a                                            ; $567c: $3c
	pop hl                                           ; $567d: $e1
	ld [bc], a                                       ; $567e: $02
	nop                                              ; $567f: $00
	ret nz                                           ; $5680: $c0

	add e                                            ; $5681: $83
	ret nz                                           ; $5682: $c0

	dec de                                           ; $5683: $1b
	ret nc                                           ; $5684: $d0

	ld [bc], a                                       ; $5685: $02
	ret nc                                           ; $5686: $d0

	pop de                                           ; $5687: $d1
	dec d                                            ; $5688: $15
	ldh [rP1], a                                     ; $5689: $e0 $00
	ld l, l                                          ; $568b: $6d
	ret nz                                           ; $568c: $c0

	ld bc, $02a0                                     ; $568d: $01 $a0 $02
	nop                                              ; $5690: $00
	ld a, $c0                                        ; $5691: $3e $c0
	ld bc, $01a0                                     ; $5693: $01 $a0 $01
	nop                                              ; $5696: $00
	ld b, [hl]                                       ; $5697: $46
	ldh [rP1], a                                     ; $5698: $e0 $00
	ld l, e                                          ; $569a: $6b
	db $e4                                           ; $569b: $e4
	nop                                              ; $569c: $00
	add c                                            ; $569d: $81
	ld [bc], a                                       ; $569e: $02
	jp nc, $12d3                                     ; $569f: $d2 $d3 $12

	ldh [rP1], a                                     ; $56a2: $e0 $00
	ld d, h                                          ; $56a4: $54
	ret nz                                           ; $56a5: $c0

	ld bc, $02a0                                     ; $56a6: $01 $a0 $02
	nop                                              ; $56a9: $00
	ld c, b                                          ; $56aa: $48
	ret nz                                           ; $56ab: $c0

	ld bc, $01a0                                     ; $56ac: $01 $a0 $01
	nop                                              ; $56af: $00
	ld d, b                                          ; $56b0: $50
	db $e4                                           ; $56b1: $e4
	nop                                              ; $56b2: $00
	ld l, e                                          ; $56b3: $6b
	ld bc, $1fd4                                     ; $56b4: $01 $d4 $1f
	ldh [rP1], a                                     ; $56b7: $e0 $00
	ccf                                              ; $56b9: $3f
	ret nz                                           ; $56ba: $c0

	ld bc, $02a0                                     ; $56bb: $01 $a0 $02
	nop                                              ; $56be: $00
	ld d, h                                          ; $56bf: $54
	pop hl                                           ; $56c0: $e1
	ld [bc], a                                       ; $56c1: $02
	rlca                                             ; $56c2: $07
	cp a                                             ; $56c3: $bf
	ret nz                                           ; $56c4: $c0

	ld bc, $02a0                                     ; $56c5: $01 $a0 $02
	nop                                              ; $56c8: $00
	ld e, h                                          ; $56c9: $5c
	ret nz                                           ; $56ca: $c0

	ld bc, $01a0                                     ; $56cb: $01 $a0 $01
	nop                                              ; $56ce: $00
	ld b, [hl]                                       ; $56cf: $46
	ldh [rP1], a                                     ; $56d0: $e0 $00
	inc sp                                           ; $56d2: $33
	db $e4                                           ; $56d3: $e4
	nop                                              ; $56d4: $00
	ld c, c                                          ; $56d5: $49
	ld bc, $1ed5                                     ; $56d6: $01 $d5 $1e
	ret nz                                           ; $56d9: $c0

	ld bc, $02a0                                     ; $56da: $01 $a0 $02
	nop                                              ; $56dd: $00
	ld e, l                                          ; $56de: $5d
	ret nz                                           ; $56df: $c0

	ld bc, $01a0                                     ; $56e0: $01 $a0 $01
	nop                                              ; $56e3: $00
	ld e, [hl]                                       ; $56e4: $5e
	ret nz                                           ; $56e5: $c0

	ld bc, $02a0                                     ; $56e6: $01 $a0 $02
	nop                                              ; $56e9: $00
	ld e, l                                          ; $56ea: $5d
	pop bc                                           ; $56eb: $c1
	ld e, e                                          ; $56ec: $5b
	ret nz                                           ; $56ed: $c0

	ld bc, $01a0                                     ; $56ee: $01 $a0 $01
	nop                                              ; $56f1: $00
	ld h, h                                          ; $56f2: $64
	push hl                                          ; $56f3: $e5
	ld h, h                                          ; $56f4: $64
	nop                                              ; $56f5: $00
	nop                                              ; $56f6: $00
	inc c                                            ; $56f7: $0c
	ret nz                                           ; $56f8: $c0

	ld bc, $02a0                                     ; $56f9: $01 $a0 $02
	nop                                              ; $56fc: $00
	ld bc, $01c0                                     ; $56fd: $01 $c0 $01
	and b                                            ; $5700: $a0
	ld bc, $6a00                                     ; $5701: $01 $00 $6a
	jr @-$3e                                         ; $5704: $18 $c0

	ld bc, $02a0                                     ; $5706: $01 $a0 $02
	nop                                              ; $5709: $00
	ld l, [hl]                                       ; $570a: $6e
	pop bc                                           ; $570b: $c1
	ld e, e                                          ; $570c: $5b
	pop hl                                           ; $570d: $e1
	ld [bc], a                                       ; $570e: $02
	rlca                                             ; $570f: $07
	cp a                                             ; $5710: $bf
	ret nz                                           ; $5711: $c0

	inc c                                            ; $5712: $0c
	ldh [$3c], a                                     ; $5713: $e0 $3c
	pop bc                                           ; $5715: $c1
	ld e, h                                          ; $5716: $5c
	ret nz                                           ; $5717: $c0

	ld bc, $02a0                                     ; $5718: $01 $a0 $02
	nop                                              ; $571b: $00
	halt                                             ; $571c: $76
	add hl, bc                                       ; $571d: $09
	rra                                              ; $571e: $1f
	ret nc                                           ; $571f: $d0

	adc e                                            ; $5720: $8b
	inc bc                                           ; $5721: $03
	ld bc, $03b0                                     ; $5722: $01 $b0 $03
	add d                                            ; $5725: $82
	adc e                                            ; $5726: $8b
	ld [bc], a                                       ; $5727: $02
	db $ec                                           ; $5728: $ec
	ld [bc], a                                       ; $5729: $02
	or b                                             ; $572a: $b0
	sub d                                            ; $572b: $92
	inc bc                                           ; $572c: $03
	db $e4                                           ; $572d: $e4
	nop                                              ; $572e: $00
	db $10                                           ; $572f: $10
	ld [bc], a                                       ; $5730: $02
	or b                                             ; $5731: $b0
	sub h                                            ; $5732: $94
	inc bc                                           ; $5733: $03
	db $e4                                           ; $5734: $e4
	nop                                              ; $5735: $00
	dec e                                            ; $5736: $1d
	ld [bc], a                                       ; $5737: $02
	or b                                             ; $5738: $b0
	sub e                                            ; $5739: $93
	inc bc                                           ; $573a: $03
	db $e4                                           ; $573b: $e4
	nop                                              ; $573c: $00
	ld a, [hl+]                                      ; $573d: $2a
	add hl, bc                                       ; $573e: $09
	ld [de], a                                       ; $573f: $12
	pop bc                                           ; $5740: $c1
	ld e, c                                          ; $5741: $59
	db $e3                                           ; $5742: $e3
	nop                                              ; $5743: $00
	ld [hl], b                                       ; $5744: $70
	pop hl                                           ; $5745: $e1
	ld e, h                                          ; $5746: $5c
	inc bc                                           ; $5747: $03
	ld [hl+], a                                      ; $5748: $22
	ret nz                                           ; $5749: $c0

	ld bc, $02a0                                     ; $574a: $01 $a0 $02
	nop                                              ; $574d: $00
	ld a, d                                          ; $574e: $7a
	db $e4                                           ; $574f: $e4
	nop                                              ; $5750: $00
	ld a, [hl+]                                      ; $5751: $2a
	add hl, bc                                       ; $5752: $09
	ld [de], a                                       ; $5753: $12
	pop bc                                           ; $5754: $c1
	ld e, c                                          ; $5755: $59
	db $e3                                           ; $5756: $e3
	nop                                              ; $5757: $00
	ld [hl], e                                       ; $5758: $73
	pop hl                                           ; $5759: $e1
	ld e, h                                          ; $575a: $5c
	inc bc                                           ; $575b: $03
	ld [hl+], a                                      ; $575c: $22
	ret nz                                           ; $575d: $c0

	ld bc, $02a0                                     ; $575e: $01 $a0 $02
	nop                                              ; $5761: $00
	adc l                                            ; $5762: $8d
	db $e4                                           ; $5763: $e4
	nop                                              ; $5764: $00
	ld d, $09                                        ; $5765: $16 $09
	ld [de], a                                       ; $5767: $12
	pop bc                                           ; $5768: $c1
	ld e, c                                          ; $5769: $59
	db $e3                                           ; $576a: $e3
	nop                                              ; $576b: $00
	ld l, l                                          ; $576c: $6d
	pop hl                                           ; $576d: $e1
	ld e, h                                          ; $576e: $5c
	inc bc                                           ; $576f: $03
	ld [hl+], a                                      ; $5770: $22
	ret nz                                           ; $5771: $c0

	ld bc, $02a0                                     ; $5772: $01 $a0 $02
	nop                                              ; $5775: $00
	sbc [hl]                                         ; $5776: $9e
	db $e4                                           ; $5777: $e4
	nop                                              ; $5778: $00
	ld [bc], a                                       ; $5779: $02
	add hl, bc                                       ; $577a: $09
	inc h                                            ; $577b: $24
	ret nz                                           ; $577c: $c0

	ld bc, $01a0                                     ; $577d: $01 $a0 $01
	nop                                              ; $5780: $00
	or l                                             ; $5781: $b5
	ret nz                                           ; $5782: $c0

	ld bc, $02a0                                     ; $5783: $01 $a0 $02
	nop                                              ; $5786: $00
	cp d                                             ; $5787: $ba
	ret nz                                           ; $5788: $c0

	ld bc, $01a0                                     ; $5789: $01 $a0 $01
	nop                                              ; $578c: $00
	cp l                                             ; $578d: $bd
	ret nz                                           ; $578e: $c0

	ld bc, $02a0                                     ; $578f: $01 $a0 $02
	nop                                              ; $5792: $00
	jp nz, $21c0                                     ; $5793: $c2 $c0 $21

	pop de                                           ; $5796: $d1
	ret nc                                           ; $5797: $d0

	ret nz                                           ; $5798: $c0

	ld [hl+], a                                      ; $5799: $22
	pop de                                           ; $579a: $d1
	ret nc                                           ; $579b: $d0

	push hl                                          ; $579c: $e5
	ld e, h                                          ; $579d: $5c
	inc bc                                           ; $579e: $03
	ld b, l                                          ; $579f: $45
	add hl, bc                                       ; $57a0: $09
	inc hl                                           ; $57a1: $23
	pop hl                                           ; $57a2: $e1
	ld [bc], a                                       ; $57a3: $02
	nop                                              ; $57a4: $00
	ret nz                                           ; $57a5: $c0

	ret nz                                           ; $57a6: $c0

	ld bc, $02a0                                     ; $57a7: $01 $a0 $02
	nop                                              ; $57aa: $00
	call z, $8b82                                    ; $57ab: $cc $82 $8b
	ld [bc], a                                       ; $57ae: $02
	db $ec                                           ; $57af: $ec
	ld [bc], a                                       ; $57b0: $02
	or b                                             ; $57b1: $b0
	sub d                                            ; $57b2: $92
	inc bc                                           ; $57b3: $03
	db $e4                                           ; $57b4: $e4
	nop                                              ; $57b5: $00
	db $10                                           ; $57b6: $10
	ld [bc], a                                       ; $57b7: $02
	or b                                             ; $57b8: $b0
	sub h                                            ; $57b9: $94
	inc bc                                           ; $57ba: $03
	db $e4                                           ; $57bb: $e4
	nop                                              ; $57bc: $00
	jr c, jr_088_57c1                                ; $57bd: $38 $02

	or b                                             ; $57bf: $b0
	sub e                                            ; $57c0: $93

jr_088_57c1:
	inc bc                                           ; $57c1: $03
	db $e4                                           ; $57c2: $e4
	nop                                              ; $57c3: $00
	ld h, b                                          ; $57c4: $60
	jr z, jr_088_57e1                                ; $57c5: $28 $1a

	pop bc                                           ; $57c7: $c1
	ld e, c                                          ; $57c8: $59
	db $e3                                           ; $57c9: $e3
	nop                                              ; $57ca: $00
	ld [hl], c                                       ; $57cb: $71
	pop hl                                           ; $57cc: $e1
	ld e, h                                          ; $57cd: $5c
	inc b                                            ; $57ce: $04
	rrca                                             ; $57cf: $0f
	ret nz                                           ; $57d0: $c0

	ld bc, $02a0                                     ; $57d1: $01 $a0 $02
	nop                                              ; $57d4: $00
	pop de                                           ; $57d5: $d1
	ret nz                                           ; $57d6: $c0

	ld bc, $01a0                                     ; $57d7: $01 $a0 $01
	nop                                              ; $57da: $00
	ret c                                            ; $57db: $d8

	ret nz                                           ; $57dc: $c0

	add hl, bc                                       ; $57dd: $09
	db $e3                                           ; $57de: $e3
	nop                                              ; $57df: $00
	ld h, e                                          ; $57e0: $63

jr_088_57e1:
	ld [de], a                                       ; $57e1: $12
	nop                                              ; $57e2: $00
	db $db                                           ; $57e3: $db
	add hl, bc                                       ; $57e4: $09
	inc bc                                           ; $57e5: $03
	db $e4                                           ; $57e6: $e4
	nop                                              ; $57e7: $00
	and l                                            ; $57e8: $a5
	nop                                              ; $57e9: $00
	db $dd                                           ; $57ea: $dd
	add hl, bc                                       ; $57eb: $09
	rlca                                             ; $57ec: $07
	pop hl                                           ; $57ed: $e1
	ld e, h                                          ; $57ee: $5c
	inc b                                            ; $57ef: $04
	add hl, sp                                       ; $57f0: $39
	db $e4                                           ; $57f1: $e4
	nop                                              ; $57f2: $00
	ld h, b                                          ; $57f3: $60
	jr z, jr_088_5810                                ; $57f4: $28 $1a

	pop bc                                           ; $57f6: $c1
	ld e, c                                          ; $57f7: $59
	db $e3                                           ; $57f8: $e3
	nop                                              ; $57f9: $00
	ld [hl], h                                       ; $57fa: $74
	pop hl                                           ; $57fb: $e1
	ld e, h                                          ; $57fc: $5c
	inc b                                            ; $57fd: $04
	rrca                                             ; $57fe: $0f
	ret nz                                           ; $57ff: $c0

	ld bc, $02a0                                     ; $5800: $01 $a0 $02
	nop                                              ; $5803: $00
	rst SubAFromDE                                          ; $5804: $df
	ret nz                                           ; $5805: $c0

	ld bc, $01a0                                     ; $5806: $01 $a0 $01
	nop                                              ; $5809: $00
	rst AddAOntoHL                                          ; $580a: $ef
	ret nz                                           ; $580b: $c0

	add hl, bc                                       ; $580c: $09
	db $e3                                           ; $580d: $e3
	nop                                              ; $580e: $00
	ld h, e                                          ; $580f: $63

jr_088_5810:
	ld [de], a                                       ; $5810: $12
	nop                                              ; $5811: $00
	db $db                                           ; $5812: $db
	add hl, bc                                       ; $5813: $09
	inc bc                                           ; $5814: $03

jr_088_5815:
	db $e4                                           ; $5815: $e4
	nop                                              ; $5816: $00
	halt                                             ; $5817: $76
	nop                                              ; $5818: $00
	db $dd                                           ; $5819: $dd
	add hl, bc                                       ; $581a: $09
	rlca                                             ; $581b: $07
	pop hl                                           ; $581c: $e1
	ld e, h                                          ; $581d: $5c
	inc b                                            ; $581e: $04
	ld b, [hl]                                       ; $581f: $46
	db $e4                                           ; $5820: $e4
	nop                                              ; $5821: $00
	ld sp, $1a28                                     ; $5822: $31 $28 $1a
	pop bc                                           ; $5825: $c1
	ld e, c                                          ; $5826: $59
	db $e3                                           ; $5827: $e3
	nop                                              ; $5828: $00
	ld l, [hl]                                       ; $5829: $6e
	pop hl                                           ; $582a: $e1
	ld e, h                                          ; $582b: $5c
	inc b                                            ; $582c: $04
	rrca                                             ; $582d: $0f
	ret nz                                           ; $582e: $c0

	ld bc, $02a0                                     ; $582f: $01 $a0 $02
	nop                                              ; $5832: $00
	pop af                                           ; $5833: $f1
	ret nz                                           ; $5834: $c0

	ld bc, $01a0                                     ; $5835: $01 $a0 $01
	nop                                              ; $5838: $00
	rst FarCall                                          ; $5839: $f7
	ret nz                                           ; $583a: $c0

	add hl, bc                                       ; $583b: $09
	db $e3                                           ; $583c: $e3
	nop                                              ; $583d: $00
	ld h, e                                          ; $583e: $63
	ld [de], a                                       ; $583f: $12
	nop                                              ; $5840: $00
	db $db                                           ; $5841: $db
	add hl, bc                                       ; $5842: $09
	inc bc                                           ; $5843: $03
	db $e4                                           ; $5844: $e4
	nop                                              ; $5845: $00
	ld b, a                                          ; $5846: $47
	nop                                              ; $5847: $00
	db $dd                                           ; $5848: $dd
	add hl, bc                                       ; $5849: $09
	rlca                                             ; $584a: $07
	pop hl                                           ; $584b: $e1
	ld e, h                                          ; $584c: $5c
	inc b                                            ; $584d: $04
	ld d, e                                          ; $584e: $53
	db $e4                                           ; $584f: $e4
	nop                                              ; $5850: $00
	ld [bc], a                                       ; $5851: $02
	add hl, bc                                       ; $5852: $09
	jr c, jr_088_5815                                ; $5853: $38 $c0

	ld bc, $01a0                                     ; $5855: $01 $a0 $01
	nop                                              ; $5858: $00
	ld a, [$02e1]                                    ; $5859: $fa $e1 $02
	nop                                              ; $585c: $00
	ret nz                                           ; $585d: $c0

	ret nz                                           ; $585e: $c0

	ld bc, $02a0                                     ; $585f: $01 $a0 $02
	ld bc, $c000                                     ; $5862: $01 $00 $c0
	ld bc, $01a0                                     ; $5865: $01 $a0 $01
	ld bc, $c007                                     ; $5868: $01 $07 $c0
	ld bc, $02a0                                     ; $586b: $01 $a0 $02
	ld bc, $c00c                                     ; $586e: $01 $0c $c0
	ld bc, $01a0                                     ; $5871: $01 $a0 $01
	ld bc, $c016                                     ; $5874: $01 $16 $c0
	ld bc, $02a0                                     ; $5877: $01 $a0 $02
	nop                                              ; $587a: $00
	cp d                                             ; $587b: $ba
	ret nz                                           ; $587c: $c0

	ld [hl+], a                                      ; $587d: $22
	push de                                          ; $587e: $d5
	ret nc                                           ; $587f: $d0

	nop                                              ; $5880: $00
	add b                                            ; $5881: $80
	inc bc                                           ; $5882: $03
	dec c                                            ; $5883: $0d
	ret nz                                           ; $5884: $c0

	set 0, c                                         ; $5885: $cb $c1
	ld e, e                                          ; $5887: $5b
	push hl                                          ; $5888: $e5
	ld e, h                                          ; $5889: $5c
	inc b                                            ; $588a: $04
	ld h, b                                          ; $588b: $60
	add hl, bc                                       ; $588c: $09
	ld a, [hl+]                                      ; $588d: $2a
	ret nz                                           ; $588e: $c0

	dec bc                                           ; $588f: $0b
	db $e3                                           ; $5890: $e3
	nop                                              ; $5891: $00
	daa                                              ; $5892: $27
	ret nz                                           ; $5893: $c0

	set 0, b                                         ; $5894: $cb $c0
	inc c                                            ; $5896: $0c
	ldh [rAUD3HIGH], a                               ; $5897: $e0 $1e
	pop hl                                           ; $5899: $e1
	ld e, h                                          ; $589a: $5c
	ld b, $0f                                        ; $589b: $06 $0f
	ret nz                                           ; $589d: $c0

	ld de, $00e3                                     ; $589e: $11 $e3 $00
	ld l, e                                          ; $58a1: $6b
	pop hl                                           ; $58a2: $e1
	ld [bc], a                                       ; $58a3: $02
	nop                                              ; $58a4: $00
	ret z                                            ; $58a5: $c8

	pop hl                                           ; $58a6: $e1
	ld e, h                                          ; $58a7: $5c
	inc b                                            ; $58a8: $04
	ld [hl-], a                                      ; $58a9: $32
	ret nz                                           ; $58aa: $c0

	ld bc, $02a0                                     ; $58ab: $01 $a0 $02
	ld bc, $c01e                                     ; $58ae: $01 $1e $c0
	set 0, c                                         ; $58b1: $cb $c1
	ld e, e                                          ; $58b3: $5b
	push hl                                          ; $58b4: $e5
	ld e, h                                          ; $58b5: $5c
	inc b                                            ; $58b6: $04
	ld h, b                                          ; $58b7: $60
	and d                                            ; $58b8: $a2
	ld [$2228], sp                                   ; $58b9: $08 $28 $22
	ret nz                                           ; $58bc: $c0

	ld bc, $03a0                                     ; $58bd: $01 $a0 $03
	nop                                              ; $58c0: $00
	ld bc, $02e1                                     ; $58c1: $01 $e1 $02
	ld bc, $c008                                     ; $58c4: $01 $08 $c0
	ld bc, $01a0                                     ; $58c7: $01 $a0 $01
	nop                                              ; $58ca: $00
	dec b                                            ; $58cb: $05
	ret nz                                           ; $58cc: $c0

	ld bc, $03a0                                     ; $58cd: $01 $a0 $03
	nop                                              ; $58d0: $00
	dec bc                                           ; $58d1: $0b
	ret nz                                           ; $58d2: $c0

	ld bc, $01a0                                     ; $58d3: $01 $a0 $01
	nop                                              ; $58d6: $00
	ld [de], a                                       ; $58d7: $12
	ret nz                                           ; $58d8: $c0

	ld bc, $03a0                                     ; $58d9: $01 $a0 $03
	nop                                              ; $58dc: $00
	rla                                              ; $58dd: $17
	inc a                                            ; $58de: $3c
	nop                                              ; $58df: $00
	jr nz, jr_088_58eb                               ; $58e0: $20 $09

	dec c                                            ; $58e2: $0d
	pop hl                                           ; $58e3: $e1
	ld [bc], a                                       ; $58e4: $02
	inc bc                                           ; $58e5: $03
	inc de                                           ; $58e6: $13
	ret nz                                           ; $58e7: $c0

	ld bc, $03a0                                     ; $58e8: $01 $a0 $03

jr_088_58eb:
	nop                                              ; $58eb: $00
	ld [hl+], a                                      ; $58ec: $22
	db $e4                                           ; $58ed: $e4
	nop                                              ; $58ee: $00
	cp [hl]                                          ; $58ef: $be
	nop                                              ; $58f0: $00
	daa                                              ; $58f1: $27
	add hl, bc                                       ; $58f2: $09
	daa                                              ; $58f3: $27
	pop hl                                           ; $58f4: $e1
	ld [bc], a                                       ; $58f5: $02
	inc bc                                           ; $58f6: $03
	dec de                                           ; $58f7: $1b
	ret nz                                           ; $58f8: $c0

	ld bc, $03a0                                     ; $58f9: $01 $a0 $03
	nop                                              ; $58fc: $00
	add hl, hl                                       ; $58fd: $29
	pop bc                                           ; $58fe: $c1
	ld e, e                                          ; $58ff: $5b
	ret nz                                           ; $5900: $c0

	ld bc, $01a0                                     ; $5901: $01 $a0 $01
	nop                                              ; $5904: $00
	dec l                                            ; $5905: $2d
	nop                                              ; $5906: $00
	add b                                            ; $5907: $80
	ld [bc], a                                       ; $5908: $02
	ei                                               ; $5909: $fb
	ret nz                                           ; $590a: $c0

	inc h                                            ; $590b: $24
	jp nc, $c0d1                                     ; $590c: $d2 $d1 $c0

	dec h                                            ; $590f: $25
	pop de                                           ; $5910: $d1
	pop de                                           ; $5911: $d1
	ret nz                                           ; $5912: $c0

	inc hl                                           ; $5913: $23
	ldh [rAUD1HIGH], a                               ; $5914: $e0 $14

jr_088_5916:
	pop de                                           ; $5916: $d1
	push hl                                          ; $5917: $e5
	ld e, h                                          ; $5918: $5c
	ld [bc], a                                       ; $5919: $02
	ld a, $09                                        ; $591a: $3e $09
	add d                                            ; $591c: $82
	ret nz                                           ; $591d: $c0

	ld bc, $01a0                                     ; $591e: $01 $a0 $01
	nop                                              ; $5921: $00
	ld sp, $01c0                                     ; $5922: $31 $c0 $01
	and b                                            ; $5925: $a0
	ld bc, $3b00                                     ; $5926: $01 $00 $3b
	pop hl                                           ; $5929: $e1

jr_088_592a:
	ld [bc], a                                       ; $592a: $02
	ld bc, $8308                                     ; $592b: $01 $08 $83
	ret nz                                           ; $592e: $c0

	dec de                                           ; $592f: $1b
	pop de                                           ; $5930: $d1
	ld [bc], a                                       ; $5931: $02
	ret nc                                           ; $5932: $d0

	pop de                                           ; $5933: $d1
	jr jr_088_5916                                   ; $5934: $18 $e0

	nop                                              ; $5936: $00
	ld l, c                                          ; $5937: $69
	ret nz                                           ; $5938: $c0

	ld bc, $03a0                                     ; $5939: $01 $a0 $03
	nop                                              ; $593c: $00
	dec a                                            ; $593d: $3d
	ret nz                                           ; $593e: $c0

	ld bc, $01a0                                     ; $593f: $01 $a0 $01
	nop                                              ; $5942: $00
	ld b, e                                          ; $5943: $43
	ret nz                                           ; $5944: $c0

	ld bc, $03a0                                     ; $5945: $01 $a0 $03
	nop                                              ; $5948: $00
	ld b, l                                          ; $5949: $45
	db $e4                                           ; $594a: $e4
	nop                                              ; $594b: $00
	ld h, c                                          ; $594c: $61
	ld [bc], a                                       ; $594d: $02
	jp nc, $12d3                                     ; $594e: $d2 $d3 $12

	ldh [rP1], a                                     ; $5951: $e0 $00
	ld c, l                                          ; $5953: $4d
	ret nz                                           ; $5954: $c0

	ld bc, $03a0                                     ; $5955: $01 $a0 $03
	nop                                              ; $5958: $00
	ld b, a                                          ; $5959: $47
	ret nz                                           ; $595a: $c0

	ld bc, $01a0                                     ; $595b: $01 $a0 $01
	nop                                              ; $595e: $00
	ld c, e                                          ; $595f: $4b
	db $e4                                           ; $5960: $e4
	nop                                              ; $5961: $00
	ld c, e                                          ; $5962: $4b
	ld bc, $12d4                                     ; $5963: $01 $d4 $12
	ldh [rP1], a                                     ; $5966: $e0 $00
	jr c, jr_088_592a                                ; $5968: $38 $c0

	ld bc, $03a0                                     ; $596a: $01 $a0 $03
	nop                                              ; $596d: $00
	ld c, [hl]                                       ; $596e: $4e
	ret nz                                           ; $596f: $c0

	ld bc, $01a0                                     ; $5970: $01 $a0 $01
	nop                                              ; $5973: $00
	ld c, e                                          ; $5974: $4b
	db $e4                                           ; $5975: $e4
	nop                                              ; $5976: $00
	ld [hl], $01                                     ; $5977: $36 $01
	push de                                          ; $5979: $d5
	inc h                                            ; $597a: $24
	ret nz                                           ; $597b: $c0

	ld bc, $03a0                                     ; $597c: $01 $a0 $03
	nop                                              ; $597f: $00
	ld d, h                                          ; $5980: $54
	ret nz                                           ; $5981: $c0

	ld bc, $01a0                                     ; $5982: $01 $a0 $01
	nop                                              ; $5985: $00
	ld e, b                                          ; $5986: $58
	ret nz                                           ; $5987: $c0

	ld bc, $03a0                                     ; $5988: $01 $a0 $03
	nop                                              ; $598b: $00
	ld e, a                                          ; $598c: $5f
	ret nz                                           ; $598d: $c0

	ld bc, $01a0                                     ; $598e: $01 $a0 $01
	nop                                              ; $5991: $00
	ld l, e                                          ; $5992: $6b
	ret nz                                           ; $5993: $c0

	ld bc, $03a0                                     ; $5994: $01 $a0 $03
	nop                                              ; $5997: $00
	ld [hl], e                                       ; $5998: $73
	pop bc                                           ; $5999: $c1
	ld e, e                                          ; $599a: $5b
	push hl                                          ; $599b: $e5
	ld h, h                                          ; $599c: $64
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	inc c                                            ; $599f: $0c
	ret nz                                           ; $59a0: $c0

	ld bc, $03a0                                     ; $59a1: $01 $a0 $03
	nop                                              ; $59a4: $00
	halt                                             ; $59a5: $76
	ret nz                                           ; $59a6: $c0

	ld bc, $01a0                                     ; $59a7: $01 $a0 $01
	nop                                              ; $59aa: $00
	ld e, b                                          ; $59ab: $58
	add hl, bc                                       ; $59ac: $09
	rra                                              ; $59ad: $1f
	ret nc                                           ; $59ae: $d0

	adc e                                            ; $59af: $8b
	inc bc                                           ; $59b0: $03
	ld bc, $04b0                                     ; $59b1: $01 $b0 $04
	add d                                            ; $59b4: $82
	adc e                                            ; $59b5: $8b
	ld [bc], a                                       ; $59b6: $02
	db $ec                                           ; $59b7: $ec
	ld [bc], a                                       ; $59b8: $02
	or b                                             ; $59b9: $b0
	sub d                                            ; $59ba: $92
	inc bc                                           ; $59bb: $03
	db $e4                                           ; $59bc: $e4
	nop                                              ; $59bd: $00
	db $10                                           ; $59be: $10
	ld [bc], a                                       ; $59bf: $02
	or b                                             ; $59c0: $b0

Jump_088_59c1:
	sub h                                            ; $59c1: $94
	inc bc                                           ; $59c2: $03
	db $e4                                           ; $59c3: $e4
	nop                                              ; $59c4: $00
	dec e                                            ; $59c5: $1d
	ld [bc], a                                       ; $59c6: $02
	or b                                             ; $59c7: $b0
	sub e                                            ; $59c8: $93
	inc bc                                           ; $59c9: $03
	db $e4                                           ; $59ca: $e4
	nop                                              ; $59cb: $00
	ld a, [hl+]                                      ; $59cc: $2a
	add hl, bc                                       ; $59cd: $09
	ld [de], a                                       ; $59ce: $12
	pop bc                                           ; $59cf: $c1
	ld e, c                                          ; $59d0: $59
	db $e3                                           ; $59d1: $e3
	nop                                              ; $59d2: $00
	ld [hl], b                                       ; $59d3: $70
	pop hl                                           ; $59d4: $e1
	ld e, h                                          ; $59d5: $5c
	inc bc                                           ; $59d6: $03
	ld [hl+], a                                      ; $59d7: $22
	ret nz                                           ; $59d8: $c0

	ld bc, $03a0                                     ; $59d9: $01 $a0 $03
	nop                                              ; $59dc: $00
	ld a, c                                          ; $59dd: $79
	db $e4                                           ; $59de: $e4
	nop                                              ; $59df: $00
	ld a, [hl-]                                      ; $59e0: $3a
	add hl, bc                                       ; $59e1: $09
	ld [de], a                                       ; $59e2: $12
	pop bc                                           ; $59e3: $c1
	ld e, c                                          ; $59e4: $59
	db $e3                                           ; $59e5: $e3
	nop                                              ; $59e6: $00
	ld [hl], e                                       ; $59e7: $73
	pop hl                                           ; $59e8: $e1
	ld e, h                                          ; $59e9: $5c
	inc bc                                           ; $59ea: $03
	ld [hl+], a                                      ; $59eb: $22
	ret nz                                           ; $59ec: $c0

	ld bc, $03a0                                     ; $59ed: $01 $a0 $03
	nop                                              ; $59f0: $00
	add l                                            ; $59f1: $85
	db $e4                                           ; $59f2: $e4
	nop                                              ; $59f3: $00
	ld h, $09                                        ; $59f4: $26 $09
	ld [hl+], a                                      ; $59f6: $22
	pop bc                                           ; $59f7: $c1
	ld e, c                                          ; $59f8: $59
	db $e3                                           ; $59f9: $e3
	nop                                              ; $59fa: $00
	ld l, l                                          ; $59fb: $6d
	pop hl                                           ; $59fc: $e1
	ld e, h                                          ; $59fd: $5c
	inc bc                                           ; $59fe: $03
	ld [hl+], a                                      ; $59ff: $22
	ret nz                                           ; $5a00: $c0

	ld bc, $03a0                                     ; $5a01: $01 $a0 $03
	nop                                              ; $5a04: $00
	sub d                                            ; $5a05: $92
	pop bc                                           ; $5a06: $c1
	ld e, e                                          ; $5a07: $5b
	ret nz                                           ; $5a08: $c0

	ld bc, $01a0                                     ; $5a09: $01 $a0 $01
	nop                                              ; $5a0c: $00
	sbc [hl]                                         ; $5a0d: $9e
	pop bc                                           ; $5a0e: $c1
	ld e, h                                          ; $5a0f: $5c
	ret nz                                           ; $5a10: $c0

	ld bc, $03a0                                     ; $5a11: $01 $a0 $03
	nop                                              ; $5a14: $00
	and l                                            ; $5a15: $a5
	db $e4                                           ; $5a16: $e4
	nop                                              ; $5a17: $00
	ld [bc], a                                       ; $5a18: $02
	add hl, bc                                       ; $5a19: $09
	inc h                                            ; $5a1a: $24
	ret nz                                           ; $5a1b: $c0

	ld bc, $01a0                                     ; $5a1c: $01 $a0 $01
	nop                                              ; $5a1f: $00
	or b                                             ; $5a20: $b0
	ret nz                                           ; $5a21: $c0

	ld bc, $03a0                                     ; $5a22: $01 $a0 $03
	nop                                              ; $5a25: $00
	or l                                             ; $5a26: $b5
	ret nz                                           ; $5a27: $c0

	ld bc, $01a0                                     ; $5a28: $01 $a0 $01
	nop                                              ; $5a2b: $00
	cp c                                             ; $5a2c: $b9
	ret nz                                           ; $5a2d: $c0

	ld bc, $03a0                                     ; $5a2e: $01 $a0 $03
	nop                                              ; $5a31: $00
	cp [hl]                                          ; $5a32: $be
	ret nz                                           ; $5a33: $c0

	ld hl, $d1d1                                     ; $5a34: $21 $d1 $d1
	ret nz                                           ; $5a37: $c0

	ld [hl+], a                                      ; $5a38: $22
	pop de                                           ; $5a39: $d1
	pop de                                           ; $5a3a: $d1
	push hl                                          ; $5a3b: $e5
	ld e, h                                          ; $5a3c: $5c
	inc bc                                           ; $5a3d: $03
	ld b, l                                          ; $5a3e: $45
	add hl, bc                                       ; $5a3f: $09
	cpl                                              ; $5a40: $2f
	pop hl                                           ; $5a41: $e1
	ld [bc], a                                       ; $5a42: $02
	ld bc, $c008                                     ; $5a43: $01 $08 $c0
	ld bc, $03a0                                     ; $5a46: $01 $a0 $03
	nop                                              ; $5a49: $00
	jp z, $01c0                                      ; $5a4a: $ca $c0 $01

	and b                                            ; $5a4d: $a0
	ld bc, $d100                                     ; $5a4e: $01 $00 $d1
	ret nz                                           ; $5a51: $c0

	ld bc, $03a0                                     ; $5a52: $01 $a0 $03
	nop                                              ; $5a55: $00
	jp c, $8b82                                      ; $5a56: $da $82 $8b

	ld [bc], a                                       ; $5a59: $02
	db $ec                                           ; $5a5a: $ec
	ld [bc], a                                       ; $5a5b: $02
	or b                                             ; $5a5c: $b0
	sub d                                            ; $5a5d: $92
	inc bc                                           ; $5a5e: $03
	db $e4                                           ; $5a5f: $e4
	nop                                              ; $5a60: $00
	db $10                                           ; $5a61: $10
	ld [bc], a                                       ; $5a62: $02
	or b                                             ; $5a63: $b0
	sub h                                            ; $5a64: $94
	inc bc                                           ; $5a65: $03
	db $e4                                           ; $5a66: $e4
	nop                                              ; $5a67: $00
	jr c, jr_088_5a6c                                ; $5a68: $38 $02

	or b                                             ; $5a6a: $b0
	sub e                                            ; $5a6b: $93

jr_088_5a6c:
	inc bc                                           ; $5a6c: $03
	db $e4                                           ; $5a6d: $e4
	nop                                              ; $5a6e: $00
	ld h, b                                          ; $5a6f: $60
	jr z, jr_088_5a8c                                ; $5a70: $28 $1a

	pop bc                                           ; $5a72: $c1
	ld e, c                                          ; $5a73: $59
	db $e3                                           ; $5a74: $e3
	nop                                              ; $5a75: $00
	ld [hl], c                                       ; $5a76: $71
	pop hl                                           ; $5a77: $e1
	ld e, h                                          ; $5a78: $5c
	inc b                                            ; $5a79: $04
	rrca                                             ; $5a7a: $0f
	ret nz                                           ; $5a7b: $c0

	ld bc, $03a0                                     ; $5a7c: $01 $a0 $03
	nop                                              ; $5a7f: $00
	sbc $c0                                          ; $5a80: $de $c0
	ld bc, $01a0                                     ; $5a82: $01 $a0 $01
	nop                                              ; $5a85: $00
	add sp, -$40                                     ; $5a86: $e8 $c0
	add hl, bc                                       ; $5a88: $09
	db $e3                                           ; $5a89: $e3
	nop                                              ; $5a8a: $00
	ld h, e                                          ; $5a8b: $63

jr_088_5a8c:
	ld [de], a                                       ; $5a8c: $12
	nop                                              ; $5a8d: $00
	ld [$0309], a                                    ; $5a8e: $ea $09 $03
	db $e4                                           ; $5a91: $e4
	nop                                              ; $5a92: $00
	xor e                                            ; $5a93: $ab
	nop                                              ; $5a94: $00
	db $ec                                           ; $5a95: $ec
	add hl, bc                                       ; $5a96: $09
	rlca                                             ; $5a97: $07
	pop hl                                           ; $5a98: $e1
	ld e, h                                          ; $5a99: $5c
	inc b                                            ; $5a9a: $04
	add hl, sp                                       ; $5a9b: $39
	db $e4                                           ; $5a9c: $e4
	nop                                              ; $5a9d: $00
	ld h, b                                          ; $5a9e: $60
	jr z, jr_088_5abb                                ; $5a9f: $28 $1a

	pop bc                                           ; $5aa1: $c1
	ld e, c                                          ; $5aa2: $59
	db $e3                                           ; $5aa3: $e3
	nop                                              ; $5aa4: $00
	ld [hl], h                                       ; $5aa5: $74
	pop hl                                           ; $5aa6: $e1
	ld e, h                                          ; $5aa7: $5c
	inc b                                            ; $5aa8: $04
	rrca                                             ; $5aa9: $0f
	ret nz                                           ; $5aaa: $c0

	ld bc, $03a0                                     ; $5aab: $01 $a0 $03
	nop                                              ; $5aae: $00
	xor $c0                                          ; $5aaf: $ee $c0
	ld bc, $01a0                                     ; $5ab1: $01 $a0 $01
	nop                                              ; $5ab4: $00
	rst FarCall                                          ; $5ab5: $f7
	ret nz                                           ; $5ab6: $c0

	add hl, bc                                       ; $5ab7: $09
	db $e3                                           ; $5ab8: $e3
	nop                                              ; $5ab9: $00
	ld h, e                                          ; $5aba: $63

jr_088_5abb:
	ld [de], a                                       ; $5abb: $12
	nop                                              ; $5abc: $00
	ld [$0309], a                                    ; $5abd: $ea $09 $03
	db $e4                                           ; $5ac0: $e4
	nop                                              ; $5ac1: $00
	ld a, h                                          ; $5ac2: $7c
	nop                                              ; $5ac3: $00
	db $ec                                           ; $5ac4: $ec
	add hl, bc                                       ; $5ac5: $09
	rlca                                             ; $5ac6: $07
	pop hl                                           ; $5ac7: $e1
	ld e, h                                          ; $5ac8: $5c
	inc b                                            ; $5ac9: $04
	ld b, [hl]                                       ; $5aca: $46
	db $e4                                           ; $5acb: $e4
	nop                                              ; $5acc: $00
	ld sp, $1a28                                     ; $5acd: $31 $28 $1a
	pop bc                                           ; $5ad0: $c1
	ld e, c                                          ; $5ad1: $59
	db $e3                                           ; $5ad2: $e3
	nop                                              ; $5ad3: $00
	ld l, [hl]                                       ; $5ad4: $6e
	pop hl                                           ; $5ad5: $e1
	ld e, h                                          ; $5ad6: $5c
	inc b                                            ; $5ad7: $04
	rrca                                             ; $5ad8: $0f
	ret nz                                           ; $5ad9: $c0

	ld bc, $03a0                                     ; $5ada: $01 $a0 $03
	nop                                              ; $5add: $00
	ld a, [$01c0]                                    ; $5ade: $fa $c0 $01
	and b                                            ; $5ae1: $a0
	ld bc, $0601                                     ; $5ae2: $01 $01 $06
	ret nz                                           ; $5ae5: $c0

	add hl, bc                                       ; $5ae6: $09
	db $e3                                           ; $5ae7: $e3
	nop                                              ; $5ae8: $00
	ld h, e                                          ; $5ae9: $63
	ld [de], a                                       ; $5aea: $12
	nop                                              ; $5aeb: $00
	ld [$0309], a                                    ; $5aec: $ea $09 $03
	db $e4                                           ; $5aef: $e4
	nop                                              ; $5af0: $00
	ld c, l                                          ; $5af1: $4d
	nop                                              ; $5af2: $00
	db $ec                                           ; $5af3: $ec
	add hl, bc                                       ; $5af4: $09
	rlca                                             ; $5af5: $07
	pop hl                                           ; $5af6: $e1
	ld e, h                                          ; $5af7: $5c
	inc b                                            ; $5af8: $04
	ld d, e                                          ; $5af9: $53
	db $e4                                           ; $5afa: $e4
	nop                                              ; $5afb: $00
	ld [bc], a                                       ; $5afc: $02
	add hl, bc                                       ; $5afd: $09
	ld a, $c0                                        ; $5afe: $3e $c0
	ld bc, $01a0                                     ; $5b00: $01 $a0 $01
	ld bc, $e108                                     ; $5b03: $01 $08 $e1
	ld [bc], a                                       ; $5b06: $02
	ld bc, $c008                                     ; $5b07: $01 $08 $c0
	ld bc, $03a0                                     ; $5b0a: $01 $a0 $03
	ld bc, $c00e                                     ; $5b0d: $01 $0e $c0
	ld bc, $01a0                                     ; $5b10: $01 $a0 $01
	ld bc, $c010                                     ; $5b13: $01 $10 $c0
	ld bc, $03a0                                     ; $5b16: $01 $a0 $03
	ld bc, $c015                                     ; $5b19: $01 $15 $c0
	ld bc, $01a0                                     ; $5b1c: $01 $a0 $01
	ld bc, $c020                                     ; $5b1f: $01 $20 $c0
	ld bc, $03a0                                     ; $5b22: $01 $a0 $03
	ld bc, $c031                                     ; $5b25: $01 $31 $c0
	ld bc, $01a0                                     ; $5b28: $01 $a0 $01
	ld bc, $c035                                     ; $5b2b: $01 $35 $c0
	ld [hl+], a                                      ; $5b2e: $22
	push de                                          ; $5b2f: $d5
	pop de                                           ; $5b30: $d1
	nop                                              ; $5b31: $00
	add b                                            ; $5b32: $80
	inc bc                                           ; $5b33: $03
	dec c                                            ; $5b34: $0d
	ret nz                                           ; $5b35: $c0

	set 0, c                                         ; $5b36: $cb $c1
	ld e, e                                          ; $5b38: $5b
	push hl                                          ; $5b39: $e5
	ld e, h                                          ; $5b3a: $5c
	inc b                                            ; $5b3b: $04
	ld h, b                                          ; $5b3c: $60
	add hl, bc                                       ; $5b3d: $09
	ld a, [hl-]                                      ; $5b3e: $3a
	ret nz                                           ; $5b3f: $c0

	dec bc                                           ; $5b40: $0b
	db $e3                                           ; $5b41: $e3
	nop                                              ; $5b42: $00
	daa                                              ; $5b43: $27
	ret nz                                           ; $5b44: $c0

	set 0, b                                         ; $5b45: $cb $c0
	inc c                                            ; $5b47: $0c
	ldh [rAUD3HIGH], a                               ; $5b48: $e0 $1e
	pop hl                                           ; $5b4a: $e1
	ld e, h                                          ; $5b4b: $5c
	ld b, $0f                                        ; $5b4c: $06 $0f
	ret nz                                           ; $5b4e: $c0

	ld de, $00e3                                     ; $5b4f: $11 $e3 $00
	ld l, e                                          ; $5b52: $6b
	pop hl                                           ; $5b53: $e1
	ld [bc], a                                       ; $5b54: $02
	ld bc, $e110                                     ; $5b55: $01 $10 $e1
	ld e, h                                          ; $5b58: $5c
	inc b                                            ; $5b59: $04
	ld [hl-], a                                      ; $5b5a: $32
	ret nz                                           ; $5b5b: $c0

	ld bc, $03a0                                     ; $5b5c: $01 $a0 $03
	ld bc, $c13d                                     ; $5b5f: $01 $3d $c1
	ld e, e                                          ; $5b62: $5b
	ret nz                                           ; $5b63: $c0

	ld bc, $01a0                                     ; $5b64: $01 $a0 $01
	ld bc, wGameState                                     ; $5b67: $01 $42 $c1
	ld e, h                                          ; $5b6a: $5c
	ret nz                                           ; $5b6b: $c0

	ld bc, $03a0                                     ; $5b6c: $01 $a0 $03
	ld bc, $c047                                     ; $5b6f: $01 $47 $c0
	set 0, c                                         ; $5b72: $cb $c1
	ld e, e                                          ; $5b74: $5b
	push hl                                          ; $5b75: $e5
	ld e, h                                          ; $5b76: $5c
	inc b                                            ; $5b77: $04
	ld h, b                                          ; $5b78: $60
	and d                                            ; $5b79: $a2
	ld [$2628], sp                                   ; $5b7a: $08 $28 $26
	ret nz                                           ; $5b7d: $c0

	ld bc, $04a0                                     ; $5b7e: $01 $a0 $04
	nop                                              ; $5b81: $00
	ld bc, $02e1                                     ; $5b82: $01 $e1 $02
	ld bc, $c050                                     ; $5b85: $01 $50 $c0
	ld bc, $01a0                                     ; $5b88: $01 $a0 $01
	nop                                              ; $5b8b: $00
	ld b, $c0                                        ; $5b8c: $06 $c0
	ld bc, $04a0                                     ; $5b8e: $01 $a0 $04
	nop                                              ; $5b91: $00
	ld c, $c0                                        ; $5b92: $0e $c0
	ld bc, $01a0                                     ; $5b94: $01 $a0 $01
	nop                                              ; $5b97: $00
	inc d                                            ; $5b98: $14
	pop hl                                           ; $5b99: $e1
	ld [bc], a                                       ; $5b9a: $02
	inc bc                                           ; $5b9b: $03
	dec de                                           ; $5b9c: $1b
	ret nz                                           ; $5b9d: $c0

	ld bc, $04a0                                     ; $5b9e: $01 $a0 $04
	nop                                              ; $5ba1: $00
	add hl, de                                       ; $5ba2: $19
	inc a                                            ; $5ba3: $3c
	nop                                              ; $5ba4: $00
	inc h                                            ; $5ba5: $24
	add hl, bc                                       ; $5ba6: $09
	dec c                                            ; $5ba7: $0d
	pop hl                                           ; $5ba8: $e1
	ld [bc], a                                       ; $5ba9: $02
	inc bc                                           ; $5baa: $03
	inc de                                           ; $5bab: $13
	ret nz                                           ; $5bac: $c0

	ld bc, $04a0                                     ; $5bad: $01 $a0 $04
	nop                                              ; $5bb0: $00
	add hl, hl                                       ; $5bb1: $29
	db $e4                                           ; $5bb2: $e4
	ld bc, $000f                                     ; $5bb3: $01 $0f $00
	ld sp, $2709                                     ; $5bb6: $31 $09 $27
	pop hl                                           ; $5bb9: $e1
	ld [bc], a                                       ; $5bba: $02
	inc bc                                           ; $5bbb: $03
	rra                                              ; $5bbc: $1f
	ret nz                                           ; $5bbd: $c0

	ld bc, $04a0                                     ; $5bbe: $01 $a0 $04

Call_088_5bc1:
Jump_088_5bc1:
	nop                                              ; $5bc1: $00
	scf                                              ; $5bc2: $37
	pop bc                                           ; $5bc3: $c1
	ld e, e                                          ; $5bc4: $5b
	ret nz                                           ; $5bc5: $c0

	ld bc, $01a0                                     ; $5bc6: $01 $a0 $01
	nop                                              ; $5bc9: $00
	ld b, h                                          ; $5bca: $44
	nop                                              ; $5bcb: $00
	add b                                            ; $5bcc: $80
	ld [bc], a                                       ; $5bcd: $02
	db $fc                                           ; $5bce: $fc
	ret nz                                           ; $5bcf: $c0

	inc h                                            ; $5bd0: $24
	jp nc, $c0d2                                     ; $5bd1: $d2 $d2 $c0

	dec h                                            ; $5bd4: $25
	pop de                                           ; $5bd5: $d1
	jp nc, $23c0                                     ; $5bd6: $d2 $c0 $23

	ldh [rAUD1HIGH], a                               ; $5bd9: $e0 $14
	jp nc, $5ce5                                     ; $5bdb: $d2 $e5 $5c

	ld [bc], a                                       ; $5bde: $02
	ld a, $09                                        ; $5bdf: $3e $09
	ret nz                                           ; $5be1: $c0

	rst SubAFromDE                                          ; $5be2: $df
	ret nz                                           ; $5be3: $c0

	ld bc, $01a0                                     ; $5be4: $01 $a0 $01
	nop                                              ; $5be7: $00
	ld b, a                                          ; $5be8: $47
	ret nz                                           ; $5be9: $c0

	ld bc, $01a0                                     ; $5bea: $01 $a0 $01
	nop                                              ; $5bed: $00
	ld d, c                                          ; $5bee: $51
	pop hl                                           ; $5bef: $e1
	ld [bc], a                                       ; $5bf0: $02
	ld bc, $8350                                     ; $5bf1: $01 $50 $83
	ret nz                                           ; $5bf4: $c0

	dec de                                           ; $5bf5: $1b
	jp nc, $d002                                     ; $5bf6: $d2 $02 $d0

	pop de                                           ; $5bf9: $d1
	dec l                                            ; $5bfa: $2d
	ret nz                                           ; $5bfb: $c0

	ld bc, $04a0                                     ; $5bfc: $01 $a0 $04
	nop                                              ; $5bff: $00
	ld d, h                                          ; $5c00: $54
	ret nz                                           ; $5c01: $c0

	ld bc, $01a0                                     ; $5c02: $01 $a0 $01
	nop                                              ; $5c05: $00
	ld e, c                                          ; $5c06: $59
	ret nz                                           ; $5c07: $c0

	ld bc, $04a0                                     ; $5c08: $01 $a0 $04
	nop                                              ; $5c0b: $00
	ld h, b                                          ; $5c0c: $60
	ret nz                                           ; $5c0d: $c0

	ld bc, $01a0                                     ; $5c0e: $01 $a0 $01
	nop                                              ; $5c11: $00
	ld l, l                                          ; $5c12: $6d
	ret nz                                           ; $5c13: $c0

	ld bc, $04a0                                     ; $5c14: $01 $a0 $04
	nop                                              ; $5c17: $00
	ld [hl], c                                       ; $5c18: $71
	ret nz                                           ; $5c19: $c0

	ld bc, $01a0                                     ; $5c1a: $01 $a0 $01
	nop                                              ; $5c1d: $00
	ld a, h                                          ; $5c1e: $7c
	ret nz                                           ; $5c1f: $c0

	ld bc, $04a0                                     ; $5c20: $01 $a0 $04
	nop                                              ; $5c23: $00
	add e                                            ; $5c24: $83
	db $e4                                           ; $5c25: $e4
	nop                                              ; $5c26: $00
	sbc h                                            ; $5c27: $9c
	ld [bc], a                                       ; $5c28: $02
	jp nc, Jump_088_51d3                             ; $5c29: $d2 $d3 $51

	ret nz                                           ; $5c2c: $c0

	ld bc, $04a0                                     ; $5c2d: $01 $a0 $04
	nop                                              ; $5c30: $00
	adc l                                            ; $5c31: $8d
	ret nz                                           ; $5c32: $c0

	ld bc, $01a0                                     ; $5c33: $01 $a0 $01
	nop                                              ; $5c36: $00
	ld e, c                                          ; $5c37: $59
	ret nz                                           ; $5c38: $c0

	ld bc, $04a0                                     ; $5c39: $01 $a0 $04
	nop                                              ; $5c3c: $00
	adc a                                            ; $5c3d: $8f
	ret nz                                           ; $5c3e: $c0

	ld bc, $01a0                                     ; $5c3f: $01 $a0 $01
	nop                                              ; $5c42: $00
	sub [hl]                                         ; $5c43: $96
	ret nz                                           ; $5c44: $c0

	ld bc, $04a0                                     ; $5c45: $01 $a0 $04
	nop                                              ; $5c48: $00
	and h                                            ; $5c49: $a4
	ret nz                                           ; $5c4a: $c0

	ld bc, $01a0                                     ; $5c4b: $01 $a0 $01
	nop                                              ; $5c4e: $00
	or c                                             ; $5c4f: $b1
	ret nz                                           ; $5c50: $c0

	ld bc, $04a0                                     ; $5c51: $01 $a0 $04
	nop                                              ; $5c54: $00
	or a                                             ; $5c55: $b7
	ret nz                                           ; $5c56: $c0

	ld bc, $01a0                                     ; $5c57: $01 $a0 $01
	nop                                              ; $5c5a: $00
	cp e                                             ; $5c5b: $bb
	ret nz                                           ; $5c5c: $c0

	ld bc, $04a0                                     ; $5c5d: $01 $a0 $04
	nop                                              ; $5c60: $00
	jp Jump_088_5bc1                                 ; $5c61: $c3 $c1 $5b


	ret nz                                           ; $5c64: $c0

	ld bc, $01a0                                     ; $5c65: $01 $a0 $01
	nop                                              ; $5c68: $00
	jp c, $02e1                                      ; $5c69: $da $e1 $02

	rlca                                             ; $5c6c: $07
	cp a                                             ; $5c6d: $bf
	ret nz                                           ; $5c6e: $c0

	inc c                                            ; $5c6f: $0c
	ldh [$3c], a                                     ; $5c70: $e0 $3c
	pop bc                                           ; $5c72: $c1
	ld e, h                                          ; $5c73: $5c
	ret nz                                           ; $5c74: $c0

	ld bc, $04a0                                     ; $5c75: $01 $a0 $04
	nop                                              ; $5c78: $00
	add sp, -$1c                                     ; $5c79: $e8 $e4
	nop                                              ; $5c7b: $00
	ld b, a                                          ; $5c7c: $47
	ld bc, $1bd4                                     ; $5c7d: $01 $d4 $1b
	ret nz                                           ; $5c80: $c0

	ld bc, $04a0                                     ; $5c81: $01 $a0 $04
	nop                                              ; $5c84: $00
	jp hl                                            ; $5c85: $e9


	ret nz                                           ; $5c86: $c0

	ld bc, $01a0                                     ; $5c87: $01 $a0 $01
	nop                                              ; $5c8a: $00
	ld e, c                                          ; $5c8b: $59
	ret nz                                           ; $5c8c: $c0

	ld bc, $04a0                                     ; $5c8d: $01 $a0 $04
	nop                                              ; $5c90: $00
	ldh a, [$c0]                                     ; $5c91: $f0 $c0
	ld bc, $01a0                                     ; $5c93: $01 $a0 $01
	ld bc, $e402                                     ; $5c96: $01 $02 $e4
	nop                                              ; $5c99: $00
	add hl, hl                                       ; $5c9a: $29
	ld bc, $24d5                                     ; $5c9b: $01 $d5 $24
	ret nz                                           ; $5c9e: $c0

	ld bc, $04a0                                     ; $5c9f: $01 $a0 $04
	ld bc, $c009                                     ; $5ca2: $01 $09 $c0
	ld bc, $01a0                                     ; $5ca5: $01 $a0 $01
	ld bc, $c00b                                     ; $5ca8: $01 $0b $c0
	ld bc, $04a0                                     ; $5cab: $01 $a0 $04
	ld bc, $c10f                                     ; $5cae: $01 $0f $c1
	ld e, e                                          ; $5cb1: $5b
	ret nz                                           ; $5cb2: $c0

	ld bc, $01a0                                     ; $5cb3: $01 $a0 $01
	ld bc, $c015                                     ; $5cb6: $01 $15 $c0
	ld bc, $01a0                                     ; $5cb9: $01 $a0 $01
	ld bc, $e51f                                     ; $5cbc: $01 $1f $e5
	ld h, h                                          ; $5cbf: $64
	nop                                              ; $5cc0: $00

Call_088_5cc1:
Jump_088_5cc1:
	nop                                              ; $5cc1: $00
	add hl, bc                                       ; $5cc2: $09
	rra                                              ; $5cc3: $1f
	ret nc                                           ; $5cc4: $d0

	adc e                                            ; $5cc5: $8b
	inc bc                                           ; $5cc6: $03
	ld bc, $05b0                                     ; $5cc7: $01 $b0 $05
	add d                                            ; $5cca: $82
	adc e                                            ; $5ccb: $8b
	ld [bc], a                                       ; $5ccc: $02
	db $ec                                           ; $5ccd: $ec
	ld [bc], a                                       ; $5cce: $02
	or b                                             ; $5ccf: $b0
	sub d                                            ; $5cd0: $92
	inc bc                                           ; $5cd1: $03
	db $e4                                           ; $5cd2: $e4
	nop                                              ; $5cd3: $00
	db $10                                           ; $5cd4: $10
	ld [bc], a                                       ; $5cd5: $02
	or b                                             ; $5cd6: $b0
	sub h                                            ; $5cd7: $94
	inc bc                                           ; $5cd8: $03
	db $e4                                           ; $5cd9: $e4
	nop                                              ; $5cda: $00

jr_088_5cdb:
	add hl, hl                                       ; $5cdb: $29
	ld [bc], a                                       ; $5cdc: $02
	or b                                             ; $5cdd: $b0
	sub e                                            ; $5cde: $93
	inc bc                                           ; $5cdf: $03
	db $e4                                           ; $5ce0: $e4

Jump_088_5ce1:
	nop                                              ; $5ce1: $00
	ld [hl], $09                                     ; $5ce2: $36 $09
	ld e, $c1                                        ; $5ce4: $1e $c1
	ld e, c                                          ; $5ce6: $59
	db $e3                                           ; $5ce7: $e3
	nop                                              ; $5ce8: $00
	ld [hl], b                                       ; $5ce9: $70
	pop hl                                           ; $5cea: $e1
	ld e, h                                          ; $5ceb: $5c
	inc bc                                           ; $5cec: $03
	ld [hl+], a                                      ; $5ced: $22
	ret nz                                           ; $5cee: $c0

	ld bc, $04a0                                     ; $5cef: $01 $a0 $04
	ld bc, $c022                                     ; $5cf2: $01 $22 $c0
	ld bc, $01a0                                     ; $5cf5: $01 $a0 $01
	ld bc, $c031                                     ; $5cf8: $01 $31 $c0
	ld bc, $04a0                                     ; $5cfb: $01 $a0 $04
	ld bc, $e435                                     ; $5cfe: $01 $35 $e4
	nop                                              ; $5d01: $00
	jr nc, jr_088_5d0d                               ; $5d02: $30 $09

	ld [de], a                                       ; $5d04: $12
	pop bc                                           ; $5d05: $c1
	ld e, c                                          ; $5d06: $59
	db $e3                                           ; $5d07: $e3
	nop                                              ; $5d08: $00
	ld [hl], e                                       ; $5d09: $73
	pop hl                                           ; $5d0a: $e1
	ld e, h                                          ; $5d0b: $5c
	inc bc                                           ; $5d0c: $03

jr_088_5d0d:
	ld [hl+], a                                      ; $5d0d: $22
	ret nz                                           ; $5d0e: $c0

	ld bc, $04a0                                     ; $5d0f: $01 $a0 $04
	ld bc, $e43a                                     ; $5d12: $01 $3a $e4
	nop                                              ; $5d15: $00
	inc e                                            ; $5d16: $1c
	add hl, bc                                       ; $5d17: $09
	jr jr_088_5cdb                                   ; $5d18: $18 $c1

	ld e, c                                          ; $5d1a: $59
	db $e3                                           ; $5d1b: $e3
	nop                                              ; $5d1c: $00
	ld l, l                                          ; $5d1d: $6d
	pop hl                                           ; $5d1e: $e1
	ld e, h                                          ; $5d1f: $5c
	inc bc                                           ; $5d20: $03
	ld [hl+], a                                      ; $5d21: $22
	ret nz                                           ; $5d22: $c0

	ld bc, $04a0                                     ; $5d23: $01 $a0 $04
	ld bc, $c046                                     ; $5d26: $01 $46 $c0
	ld bc, $01a0                                     ; $5d29: $01 $a0 $01
	ld bc, $e456                                     ; $5d2c: $01 $56 $e4
	nop                                              ; $5d2f: $00
	ld [bc], a                                       ; $5d30: $02
	add hl, bc                                       ; $5d31: $09
	jr nc, @-$3e                                     ; $5d32: $30 $c0

	ld bc, $01a0                                     ; $5d34: $01 $a0 $01
	ld bc, $c05e                                     ; $5d37: $01 $5e $c0
	ld bc, $04a0                                     ; $5d3a: $01 $a0 $04
	ld bc, $c063                                     ; $5d3d: $01 $63 $c0
	ld bc, $01a0                                     ; $5d40: $01 $a0 $01
	ld bc, $c065                                     ; $5d43: $01 $65 $c0
	ld bc, $04a0                                     ; $5d46: $01 $a0 $04
	ld bc, $c06a                                     ; $5d49: $01 $6a $c0
	ld bc, $01a0                                     ; $5d4c: $01 $a0 $01
	ld bc, $c076                                     ; $5d4f: $01 $76 $c0
	ld bc, $04a0                                     ; $5d52: $01 $a0 $04
	ld bc, $c079                                     ; $5d55: $01 $79 $c0
	ld hl, $d2d1                                     ; $5d58: $21 $d1 $d2
	ret nz                                           ; $5d5b: $c0

	ld [hl+], a                                      ; $5d5c: $22
	pop de                                           ; $5d5d: $d1
	jp nc, $5ce5                                     ; $5d5e: $d2 $e5 $5c

	inc bc                                           ; $5d61: $03
	ld b, l                                          ; $5d62: $45
	add hl, bc                                       ; $5d63: $09
	inc hl                                           ; $5d64: $23
	pop hl                                           ; $5d65: $e1
	ld [bc], a                                       ; $5d66: $02
	ld bc, $c050                                     ; $5d67: $01 $50 $c0
	ld bc, $04a0                                     ; $5d6a: $01 $a0 $04
	ld bc, $8282                                     ; $5d6d: $01 $82 $82
	adc e                                            ; $5d70: $8b
	ld [bc], a                                       ; $5d71: $02
	db $ec                                           ; $5d72: $ec
	ld [bc], a                                       ; $5d73: $02
	or b                                             ; $5d74: $b0
	sub d                                            ; $5d75: $92
	inc bc                                           ; $5d76: $03
	db $e4                                           ; $5d77: $e4
	nop                                              ; $5d78: $00
	db $10                                           ; $5d79: $10
	ld [bc], a                                       ; $5d7a: $02
	or b                                             ; $5d7b: $b0
	sub h                                            ; $5d7c: $94
	inc bc                                           ; $5d7d: $03
	db $e4                                           ; $5d7e: $e4
	nop                                              ; $5d7f: $00
	jr c, jr_088_5d84                                ; $5d80: $38 $02

	or b                                             ; $5d82: $b0
	sub e                                            ; $5d83: $93

jr_088_5d84:
	inc bc                                           ; $5d84: $03
	db $e4                                           ; $5d85: $e4
	nop                                              ; $5d86: $00
	ld h, b                                          ; $5d87: $60
	jr z, jr_088_5da4                                ; $5d88: $28 $1a

	pop bc                                           ; $5d8a: $c1
	ld e, c                                          ; $5d8b: $59
	db $e3                                           ; $5d8c: $e3
	nop                                              ; $5d8d: $00
	ld [hl], c                                       ; $5d8e: $71
	pop hl                                           ; $5d8f: $e1
	ld e, h                                          ; $5d90: $5c
	inc b                                            ; $5d91: $04
	rrca                                             ; $5d92: $0f
	ret nz                                           ; $5d93: $c0

	ld bc, $04a0                                     ; $5d94: $01 $a0 $04
	ld bc, $c08c                                     ; $5d97: $01 $8c $c0
	ld bc, $01a0                                     ; $5d9a: $01 $a0 $01
	ld bc, $c094                                     ; $5d9d: $01 $94 $c0
	add hl, bc                                       ; $5da0: $09
	db $e3                                           ; $5da1: $e3
	nop                                              ; $5da2: $00
	ld h, e                                          ; $5da3: $63

jr_088_5da4:
	ld [de], a                                       ; $5da4: $12
	ld bc, $0996                                     ; $5da5: $01 $96 $09
	inc bc                                           ; $5da8: $03
	db $e4                                           ; $5da9: $e4
	nop                                              ; $5daa: $00
	jp nc, $9801                                     ; $5dab: $d2 $01 $98

	add hl, bc                                       ; $5dae: $09
	rlca                                             ; $5daf: $07
	pop hl                                           ; $5db0: $e1
	ld e, h                                          ; $5db1: $5c
	inc b                                            ; $5db2: $04
	add hl, sp                                       ; $5db3: $39
	db $e4                                           ; $5db4: $e4
	nop                                              ; $5db5: $00
	ld l, h                                          ; $5db6: $6c
	jr z, jr_088_5dd3                                ; $5db7: $28 $1a

	pop bc                                           ; $5db9: $c1
	ld e, c                                          ; $5dba: $59
	db $e3                                           ; $5dbb: $e3
	nop                                              ; $5dbc: $00
	ld [hl], h                                       ; $5dbd: $74
	pop hl                                           ; $5dbe: $e1
	ld e, h                                          ; $5dbf: $5c
	inc b                                            ; $5dc0: $04
	rrca                                             ; $5dc1: $0f
	ret nz                                           ; $5dc2: $c0

	ld bc, $04a0                                     ; $5dc3: $01 $a0 $04
	ld bc, $c09a                                     ; $5dc6: $01 $9a $c0
	ld bc, $01a0                                     ; $5dc9: $01 $a0 $01
	ld bc, $c0a8                                     ; $5dcc: $01 $a8 $c0
	add hl, bc                                       ; $5dcf: $09
	db $e3                                           ; $5dd0: $e3
	nop                                              ; $5dd1: $00
	ld h, e                                          ; $5dd2: $63

jr_088_5dd3:
	ld [de], a                                       ; $5dd3: $12
	ld bc, $0996                                     ; $5dd4: $01 $96 $09
	inc bc                                           ; $5dd7: $03
	db $e4                                           ; $5dd8: $e4
	nop                                              ; $5dd9: $00
	and e                                            ; $5dda: $a3
	ld bc, $0998                                     ; $5ddb: $01 $98 $09
	rlca                                             ; $5dde: $07
	pop hl                                           ; $5ddf: $e1
	ld e, h                                          ; $5de0: $5c
	inc b                                            ; $5de1: $04
	ld b, [hl]                                       ; $5de2: $46
	db $e4                                           ; $5de3: $e4
	nop                                              ; $5de4: $00
	dec a                                            ; $5de5: $3d
	jr z, jr_088_5e0e                                ; $5de6: $28 $26

	pop bc                                           ; $5de8: $c1
	ld e, c                                          ; $5de9: $59
	db $e3                                           ; $5dea: $e3
	nop                                              ; $5deb: $00
	ld l, [hl]                                       ; $5dec: $6e
	pop hl                                           ; $5ded: $e1
	ld e, h                                          ; $5dee: $5c
	inc b                                            ; $5def: $04
	rrca                                             ; $5df0: $0f
	ret nz                                           ; $5df1: $c0

	ld bc, $04a0                                     ; $5df2: $01 $a0 $04
	ld bc, $c0ab                                     ; $5df5: $01 $ab $c0
	ld bc, $01a0                                     ; $5df8: $01 $a0 $01
	ld bc, $c031                                     ; $5dfb: $01 $31 $c0
	ld bc, $04a0                                     ; $5dfe: $01 $a0 $04
	ld bc, $c0b7                                     ; $5e01: $01 $b7 $c0
	ld bc, $01a0                                     ; $5e04: $01 $a0 $01
	ld bc, $c0bc                                     ; $5e07: $01 $bc $c0
	add hl, bc                                       ; $5e0a: $09
	db $e3                                           ; $5e0b: $e3
	nop                                              ; $5e0c: $00
	ld h, e                                          ; $5e0d: $63

jr_088_5e0e:
	ld [de], a                                       ; $5e0e: $12
	ld bc, $0996                                     ; $5e0f: $01 $96 $09
	inc bc                                           ; $5e12: $03
	db $e4                                           ; $5e13: $e4
	nop                                              ; $5e14: $00
	ld l, b                                          ; $5e15: $68
	ld bc, $0998                                     ; $5e16: $01 $98 $09
	rlca                                             ; $5e19: $07
	pop hl                                           ; $5e1a: $e1
	ld e, h                                          ; $5e1b: $5c
	inc b                                            ; $5e1c: $04
	ld d, e                                          ; $5e1d: $53
	db $e4                                           ; $5e1e: $e4
	nop                                              ; $5e1f: $00
	ld [bc], a                                       ; $5e20: $02
	add hl, bc                                       ; $5e21: $09
	ld e, c                                          ; $5e22: $59
	ret nz                                           ; $5e23: $c0

	ld bc, $01a0                                     ; $5e24: $01 $a0 $01
	ld bc, $e1bf                                     ; $5e27: $01 $bf $e1
	ld [bc], a                                       ; $5e2a: $02
	ld bc, $c050                                     ; $5e2b: $01 $50 $c0
	ld bc, $04a0                                     ; $5e2e: $01 $a0 $04
	ld bc, $c0c5                                     ; $5e31: $01 $c5 $c0
	ld bc, $01a0                                     ; $5e34: $01 $a0 $01
	ld bc, $c0ca                                     ; $5e37: $01 $ca $c0
	ld bc, $04a0                                     ; $5e3a: $01 $a0 $04
	ld bc, $c0cf                                     ; $5e3d: $01 $cf $c0
	ld bc, $01a0                                     ; $5e40: $01 $a0 $01
	ld bc, $c0da                                     ; $5e43: $01 $da $c0
	ld bc, $04a0                                     ; $5e46: $01 $a0 $04
	ld bc, $c0dd                                     ; $5e49: $01 $dd $c0
	ld bc, $01a0                                     ; $5e4c: $01 $a0 $01
	ld bc, $c0ed                                     ; $5e4f: $01 $ed $c0
	ld bc, $04a0                                     ; $5e52: $01 $a0 $04
	ld bc, $c0f3                                     ; $5e55: $01 $f3 $c0
	ld [hl+], a                                      ; $5e58: $22
	push de                                          ; $5e59: $d5
	jp nc, $8000                                     ; $5e5a: $d2 $00 $80

	inc bc                                           ; $5e5d: $03
	dec c                                            ; $5e5e: $0d
	ret nz                                           ; $5e5f: $c0

	set 0, c                                         ; $5e60: $cb $c1
	ld e, e                                          ; $5e62: $5b
	ld h, b                                          ; $5e63: $60
	db $fc                                           ; $5e64: $fc
	adc e                                            ; $5e65: $8b
	ld [bc], a                                       ; $5e66: $02
	db $ec                                           ; $5e67: $ec
	or b                                             ; $5e68: $b0
	sub h                                            ; $5e69: $94
	inc c                                            ; $5e6a: $0c
	ret nz                                           ; $5e6b: $c0

	ld de, $00e3                                     ; $5e6c: $11 $e3 $00
	ld l, e                                          ; $5e6f: $6b
	pop hl                                           ; $5e70: $e1
	ld [bc], a                                       ; $5e71: $02
	ld bc, $e44a                                     ; $5e72: $01 $4a $e4
	nop                                              ; $5e75: $00
	ld h, l                                          ; $5e76: $65
	inc b                                            ; $5e77: $04
	push hl                                          ; $5e78: $e5
	ld e, h                                          ; $5e79: $5c
	inc b                                            ; $5e7a: $04
	ld h, b                                          ; $5e7b: $60
	add hl, bc                                       ; $5e7c: $09
	ld e, h                                          ; $5e7d: $5c
	ret nz                                           ; $5e7e: $c0

	dec bc                                           ; $5e7f: $0b
	db $e3                                           ; $5e80: $e3
	nop                                              ; $5e81: $00
	daa                                              ; $5e82: $27
	ret nz                                           ; $5e83: $c0

	set 0, b                                         ; $5e84: $cb $c0
	inc c                                            ; $5e86: $0c
	ldh [rAUD3HIGH], a                               ; $5e87: $e0 $1e
	pop hl                                           ; $5e89: $e1
	ld e, h                                          ; $5e8a: $5c
	ld b, $0f                                        ; $5e8b: $06 $0f
	ret nz                                           ; $5e8d: $c0

	ld de, $00e3                                     ; $5e8e: $11 $e3 $00
	ld l, e                                          ; $5e91: $6b
	pop hl                                           ; $5e92: $e1
	ld [bc], a                                       ; $5e93: $02
	ld bc, $e14a                                     ; $5e94: $01 $4a $e1
	ld [bc], a                                       ; $5e97: $02
	inc bc                                           ; $5e98: $03
	dec de                                           ; $5e99: $1b
	ret nz                                           ; $5e9a: $c0

	jp z, Jump_088_5ce1                              ; $5e9b: $ca $e1 $5c

	inc b                                            ; $5e9e: $04
	ld [hl-], a                                      ; $5e9f: $32
	ret nz                                           ; $5ea0: $c0

	ld bc, $04a0                                     ; $5ea1: $01 $a0 $04
	ld bc, $c0f5                                     ; $5ea4: $01 $f5 $c0
	ld bc, $01a0                                     ; $5ea7: $01 $a0 $01
	ld [bc], a                                       ; $5eaa: $02
	dec b                                            ; $5eab: $05
	ret nz                                           ; $5eac: $c0

	ld bc, $04a0                                     ; $5ead: $01 $a0 $04
	ld [bc], a                                       ; $5eb0: $02
	rrca                                             ; $5eb1: $0f
	ret nz                                           ; $5eb2: $c0

	ld bc, $01a0                                     ; $5eb3: $01 $a0 $01
	ld [bc], a                                       ; $5eb6: $02
	ld e, $e1                                        ; $5eb7: $1e $e1
	ld [bc], a                                       ; $5eb9: $02
	inc bc                                           ; $5eba: $03
	daa                                              ; $5ebb: $27
	ret nz                                           ; $5ebc: $c0

	ld bc, $04a0                                     ; $5ebd: $01 $a0 $04
	ld [bc], a                                       ; $5ec0: $02
	inc hl                                           ; $5ec1: $23
	ret nz                                           ; $5ec2: $c0

	set 0, c                                         ; $5ec3: $cb $c1
	ld e, e                                          ; $5ec5: $5b
	ret nz                                           ; $5ec6: $c0

	inc c                                            ; $5ec7: $0c
	ldh [$3c], a                                     ; $5ec8: $e0 $3c
	ld h, b                                          ; $5eca: $60
	db $fc                                           ; $5ecb: $fc
	adc e                                            ; $5ecc: $8b
	ld [bc], a                                       ; $5ecd: $02
	db $ec                                           ; $5ece: $ec
	or b                                             ; $5ecf: $b0
	sub h                                            ; $5ed0: $94
	inc bc                                           ; $5ed1: $03
	db $e4                                           ; $5ed2: $e4
	nop                                              ; $5ed3: $00
	rlca                                             ; $5ed4: $07
	inc b                                            ; $5ed5: $04
	push hl                                          ; $5ed6: $e5
	ld e, h                                          ; $5ed7: $5c
	inc b                                            ; $5ed8: $04
	ld h, b                                          ; $5ed9: $60
	add hl, bc                                       ; $5eda: $09
	ret nz                                           ; $5edb: $c0

	jp nc, Jump_088_5cc1                             ; $5edc: $d2 $c1 $5c

	ret nz                                           ; $5edf: $c0

	jp z, $01c0                                      ; $5ee0: $ca $c0 $01

	and b                                            ; $5ee3: $a0
	ld bc, $2d02                                     ; $5ee4: $01 $02 $2d
	ret nz                                           ; $5ee7: $c0

	ld bc, $04a0                                     ; $5ee8: $01 $a0 $04
	ld [bc], a                                       ; $5eeb: $02
	ld sp, $01c0                                     ; $5eec: $31 $c0 $01
	and b                                            ; $5eef: $a0
	ld bc, $3c02                                     ; $5ef0: $01 $02 $3c
	ret nz                                           ; $5ef3: $c0

	ld bc, $04a0                                     ; $5ef4: $01 $a0 $04
	ld [bc], a                                       ; $5ef7: $02
	ld b, d                                          ; $5ef8: $42
	ret nz                                           ; $5ef9: $c0

	ld bc, $01a0                                     ; $5efa: $01 $a0 $01
	ld [bc], a                                       ; $5efd: $02
	ld d, b                                          ; $5efe: $50
	ret nz                                           ; $5eff: $c0

	set 0, c                                         ; $5f00: $cb $c1
	ld e, e                                          ; $5f02: $5b
	ret nz                                           ; $5f03: $c0

	rrca                                             ; $5f04: $0f
	db $e3                                           ; $5f05: $e3
	nop                                              ; $5f06: $00
	db $ed                                           ; $5f07: $ed
	ret nz                                           ; $5f08: $c0

	add hl, bc                                       ; $5f09: $09
	db $e3                                           ; $5f0a: $e3
	nop                                              ; $5f0b: $00
	dec b                                            ; $5f0c: $05
	ret nz                                           ; $5f0d: $c0

jr_088_5f0e:
	ld bc, $04a0                                     ; $5f0e: $01 $a0 $04
	ld [bc], a                                       ; $5f11: $02
	ld d, a                                          ; $5f12: $57
	ret nz                                           ; $5f13: $c0

	ld bc, $01a0                                     ; $5f14: $01 $a0 $01
	ld [bc], a                                       ; $5f17: $02
	ld l, d                                          ; $5f18: $6a
	ret nz                                           ; $5f19: $c0

	ld bc, $04a0                                     ; $5f1a: $01 $a0 $04
	ld [bc], a                                       ; $5f1d: $02
	ld l, a                                          ; $5f1e: $6f
	ret nz                                           ; $5f1f: $c0

	inc c                                            ; $5f20: $0c
	ldh [$3c], a                                     ; $5f21: $e0 $3c
	ret nz                                           ; $5f23: $c0

	ld bc, $01a0                                     ; $5f24: $01 $a0 $01
	ld [bc], a                                       ; $5f27: $02
	add d                                            ; $5f28: $82
	ret nz                                           ; $5f29: $c0

	ld bc, $04a0                                     ; $5f2a: $01 $a0 $04
	ld [bc], a                                       ; $5f2d: $02
	adc [hl]                                         ; $5f2e: $8e
	ret nz                                           ; $5f2f: $c0

	ld bc, $01a0                                     ; $5f30: $01 $a0 $01
	ld [bc], a                                       ; $5f33: $02
	xor b                                            ; $5f34: $a8
	pop bc                                           ; $5f35: $c1
	cp b                                             ; $5f36: $b8
	ret nc                                           ; $5f37: $d0

	add b                                            ; $5f38: $80
	and b                                            ; $5f39: $a0
	nop                                              ; $5f3a: $00
	pop bc                                           ; $5f3b: $c1
	jr nz, jr_088_5f0e                               ; $5f3c: $20 $d0

	ret nz                                           ; $5f3e: $c0

	add hl, bc                                       ; $5f3f: $09
	db $e3                                           ; $5f40: $e3
	nop                                              ; $5f41: $00
	ld d, h                                          ; $5f42: $54
	ld h, b                                          ; $5f43: $60
	db $fc                                           ; $5f44: $fc
	add b                                            ; $5f45: $80
	and b                                            ; $5f46: $a0
	nop                                              ; $5f47: $00
	ret nc                                           ; $5f48: $d0

	daa                                              ; $5f49: $27
	ret nz                                           ; $5f4a: $c0

	rrca                                             ; $5f4b: $0f
	db $e3                                           ; $5f4c: $e3
	nop                                              ; $5f4d: $00
	db $ed                                           ; $5f4e: $ed
	ret nz                                           ; $5f4f: $c0

	ld bc, $01a0                                     ; $5f50: $01 $a0 $01
	ld [bc], a                                       ; $5f53: $02
	xor l                                            ; $5f54: $ad
	ret nz                                           ; $5f55: $c0

	ld bc, $04a0                                     ; $5f56: $01 $a0 $04
	ld [bc], a                                       ; $5f59: $02
	or a                                             ; $5f5a: $b7
	ret nz                                           ; $5f5b: $c0

	ld bc, $01a0                                     ; $5f5c: $01 $a0 $01
	ld [bc], a                                       ; $5f5f: $02
	ret                                              ; $5f60: $c9


	ret nz                                           ; $5f61: $c0

	ld bc, $04a0                                     ; $5f62: $01 $a0 $04
	ld [bc], a                                       ; $5f65: $02
	call nc, $01c0                                   ; $5f66: $d4 $c0 $01
	and b                                            ; $5f69: $a0
	ld bc, $d802                                     ; $5f6a: $01 $02 $d8
	ret nz                                           ; $5f6d: $c0

	ld [hl+], a                                      ; $5f6e: $22
	push de                                          ; $5f6f: $d5
	jp nc, $c02d                                     ; $5f70: $d2 $2d $c0

	ld de, $00e3                                     ; $5f73: $11 $e3 $00
	ld l, e                                          ; $5f76: $6b
	pop hl                                           ; $5f77: $e1
	ld [bc], a                                       ; $5f78: $02
	ld bc, $e14a                                     ; $5f79: $01 $4a $e1
	ld [bc], a                                       ; $5f7c: $02
	inc bc                                           ; $5f7d: $03
	dec de                                           ; $5f7e: $1b
	pop bc                                           ; $5f7f: $c1
	ld e, h                                          ; $5f80: $5c
	ret nz                                           ; $5f81: $c0

	jp z, $01c0                                      ; $5f82: $ca $c0 $01

	and b                                            ; $5f85: $a0
	inc b                                            ; $5f86: $04
	ld [bc], a                                       ; $5f87: $02
	add sp, -$40                                     ; $5f88: $e8 $c0
	ld bc, $01a0                                     ; $5f8a: $01 $a0 $01
	ld [bc], a                                       ; $5f8d: $02
	ldh a, [$e1]                                     ; $5f8e: $f0 $e1
	ld [bc], a                                       ; $5f90: $02
	inc bc                                           ; $5f91: $03
	daa                                              ; $5f92: $27
	ret nz                                           ; $5f93: $c0

	ld bc, $04a0                                     ; $5f94: $01 $a0 $04
	ld [bc], a                                       ; $5f97: $02
	di                                               ; $5f98: $f3
	ret nz                                           ; $5f99: $c0

	ld bc, $01a0                                     ; $5f9a: $01 $a0 $01
	ld [bc], a                                       ; $5f9d: $02
	db $fd                                           ; $5f9e: $fd
	ret nz                                           ; $5f9f: $c0

	ld hl, $d2d1                                     ; $5fa0: $21 $d1 $d2
	ret nz                                           ; $5fa3: $c0

	set 0, c                                         ; $5fa4: $cb $c1
	ld e, e                                          ; $5fa6: $5b
	pop bc                                           ; $5fa7: $c1
	ld l, e                                          ; $5fa8: $6b
	call nc, $e5d2                                   ; $5fa9: $d4 $d2 $e5
	ld e, h                                          ; $5fac: $5c
	inc b                                            ; $5fad: $04
	ld h, b                                          ; $5fae: $60
	and d                                            ; $5faf: $a2
	ld [$2228], sp                                   ; $5fb0: $08 $28 $22
	ret nz                                           ; $5fb3: $c0

	ld bc, $05a0                                     ; $5fb4: $01 $a0 $05
	nop                                              ; $5fb7: $00
	ld bc, $02e1                                     ; $5fb8: $01 $e1 $02
	ld bc, $c098                                     ; $5fbb: $01 $98 $c0
	ld bc, $01a0                                     ; $5fbe: $01 $a0 $01
	nop                                              ; $5fc1: $00
	ld b, $c0                                        ; $5fc2: $06 $c0
	ld bc, $05a0                                     ; $5fc4: $01 $a0 $05
	nop                                              ; $5fc7: $00
	inc c                                            ; $5fc8: $0c
	ret nz                                           ; $5fc9: $c0

	ld bc, $01a0                                     ; $5fca: $01 $a0 $01
	nop                                              ; $5fcd: $00
	inc de                                           ; $5fce: $13
	ret nz                                           ; $5fcf: $c0

	ld bc, $05a0                                     ; $5fd0: $01 $a0 $05
	nop                                              ; $5fd3: $00
	jr @+$3e                                         ; $5fd4: $18 $3c

	nop                                              ; $5fd6: $00
	dec e                                            ; $5fd7: $1d
	add hl, bc                                       ; $5fd8: $09
	dec c                                            ; $5fd9: $0d
	pop hl                                           ; $5fda: $e1
	ld [bc], a                                       ; $5fdb: $02
	inc bc                                           ; $5fdc: $03
	inc de                                           ; $5fdd: $13
	ret nz                                           ; $5fde: $c0

	ld bc, $05a0                                     ; $5fdf: $01 $a0 $05
	nop                                              ; $5fe2: $00
	rra                                              ; $5fe3: $1f
	db $e4                                           ; $5fe4: $e4
	ld bc, $0015                                     ; $5fe5: $01 $15 $00
	dec h                                            ; $5fe8: $25
	add hl, bc                                       ; $5fe9: $09
	daa                                              ; $5fea: $27
	pop hl                                           ; $5feb: $e1
	ld [bc], a                                       ; $5fec: $02
	inc bc                                           ; $5fed: $03
	dec de                                           ; $5fee: $1b
	ret nz                                           ; $5fef: $c0

	ld bc, $05a0                                     ; $5ff0: $01 $a0 $05
	nop                                              ; $5ff3: $00
	daa                                              ; $5ff4: $27
	pop bc                                           ; $5ff5: $c1
	ld e, e                                          ; $5ff6: $5b
	ret nz                                           ; $5ff7: $c0

	ld bc, $01a0                                     ; $5ff8: $01 $a0 $01
	nop                                              ; $5ffb: $00
	ld [hl-], a                                      ; $5ffc: $32
	nop                                              ; $5ffd: $00
	add b                                            ; $5ffe: $80
	ld [bc], a                                       ; $5fff: $02
	db $fd                                           ; $6000: $fd
	ret nz                                           ; $6001: $c0

	inc h                                            ; $6002: $24
	jp nc, $c0d3                                     ; $6003: $d2 $d3 $c0

	dec h                                            ; $6006: $25
	pop de                                           ; $6007: $d1
	db $d3                                           ; $6008: $d3
	ret nz                                           ; $6009: $c0

	inc hl                                           ; $600a: $23
	ldh [rAUD1HIGH], a                               ; $600b: $e0 $14
	db $d3                                           ; $600d: $d3
	push hl                                          ; $600e: $e5
	ld e, h                                          ; $600f: $5c
	ld [bc], a                                       ; $6010: $02
	ld a, $09                                        ; $6011: $3e $09
	ret nz                                           ; $6013: $c0

	push hl                                          ; $6014: $e5
	ret nz                                           ; $6015: $c0

	ld bc, $01a0                                     ; $6016: $01 $a0 $01
	nop                                              ; $6019: $00
	dec [hl]                                         ; $601a: $35
	ret nz                                           ; $601b: $c0

	ld bc, $01a0                                     ; $601c: $01 $a0 $01
	nop                                              ; $601f: $00
	ccf                                              ; $6020: $3f
	pop hl                                           ; $6021: $e1
	ld [bc], a                                       ; $6022: $02
	ld bc, $8398                                     ; $6023: $01 $98 $83
	ret nz                                           ; $6026: $c0

	dec de                                           ; $6027: $1b
	db $d3                                           ; $6028: $d3
	ld [bc], a                                       ; $6029: $02
	ret nc                                           ; $602a: $d0

	pop de                                           ; $602b: $d1
	dec l                                            ; $602c: $2d
	ret nz                                           ; $602d: $c0

	ld bc, $05a0                                     ; $602e: $01 $a0 $05
	nop                                              ; $6031: $00
	ld b, d                                          ; $6032: $42
	ret nz                                           ; $6033: $c0

	ld bc, $01a0                                     ; $6034: $01 $a0 $01
	nop                                              ; $6037: $00
	ld c, b                                          ; $6038: $48
	ret nz                                           ; $6039: $c0

	ld bc, $05a0                                     ; $603a: $01 $a0 $05
	nop                                              ; $603d: $00
	ld c, a                                          ; $603e: $4f
	pop bc                                           ; $603f: $c1
	ld e, e                                          ; $6040: $5b
	ret nz                                           ; $6041: $c0

	ld bc, $01a0                                     ; $6042: $01 $a0 $01
	nop                                              ; $6045: $00
	ld e, d                                          ; $6046: $5a
	pop hl                                           ; $6047: $e1
	ld [bc], a                                       ; $6048: $02
	rlca                                             ; $6049: $07
	cp a                                             ; $604a: $bf
	ret nz                                           ; $604b: $c0

	inc c                                            ; $604c: $0c
	ldh [$3c], a                                     ; $604d: $e0 $3c
	pop bc                                           ; $604f: $c1
	ld e, h                                          ; $6050: $5c
	ret nz                                           ; $6051: $c0

	ld bc, $05a0                                     ; $6052: $01 $a0 $05
	nop                                              ; $6055: $00
	ld h, c                                          ; $6056: $61
	db $e4                                           ; $6057: $e4
	nop                                              ; $6058: $00
	and d                                            ; $6059: $a2
	ld [bc], a                                       ; $605a: $02
	jp nc, $33d3                                     ; $605b: $d2 $d3 $33

	ret nz                                           ; $605e: $c0

	ld bc, $05a0                                     ; $605f: $01 $a0 $05
	nop                                              ; $6062: $00
	ld h, a                                          ; $6063: $67
	ret nz                                           ; $6064: $c0

	ld bc, $01a0                                     ; $6065: $01 $a0 $01
	nop                                              ; $6068: $00
	ld c, b                                          ; $6069: $48
	ret nz                                           ; $606a: $c0

	ld bc, $05a0                                     ; $606b: $01 $a0 $05
	nop                                              ; $606e: $00
	ld l, h                                          ; $606f: $6c
	ret nz                                           ; $6070: $c0

	ld bc, $01a0                                     ; $6071: $01 $a0 $01
	nop                                              ; $6074: $00
	ld [hl], c                                       ; $6075: $71
	ret nz                                           ; $6076: $c0

	ld bc, $05a0                                     ; $6077: $01 $a0 $05
	nop                                              ; $607a: $00
	ld [hl], h                                       ; $607b: $74
	pop bc                                           ; $607c: $c1
	ld e, e                                          ; $607d: $5b
	pop hl                                           ; $607e: $e1
	ld [bc], a                                       ; $607f: $02
	rlca                                             ; $6080: $07
	cp a                                             ; $6081: $bf
	ret nz                                           ; $6082: $c0

	inc c                                            ; $6083: $0c
	ldh [$3c], a                                     ; $6084: $e0 $3c
	pop bc                                           ; $6086: $c1
	ld e, h                                          ; $6087: $5c
	ret nz                                           ; $6088: $c0

	ld bc, $05a0                                     ; $6089: $01 $a0 $05
	nop                                              ; $608c: $00
	add b                                            ; $608d: $80
	db $e4                                           ; $608e: $e4
	nop                                              ; $608f: $00
	ld l, e                                          ; $6090: $6b
	ld bc, $1bd4                                     ; $6091: $01 $d4 $1b
	ret nz                                           ; $6094: $c0

	ld bc, $05a0                                     ; $6095: $01 $a0 $05
	nop                                              ; $6098: $00
	adc b                                            ; $6099: $88
	ret nz                                           ; $609a: $c0

	ld bc, $01a0                                     ; $609b: $01 $a0 $01
	nop                                              ; $609e: $00
	ld c, b                                          ; $609f: $48
	ret nz                                           ; $60a0: $c0

	ld bc, $05a0                                     ; $60a1: $01 $a0 $05
	nop                                              ; $60a4: $00
	adc e                                            ; $60a5: $8b
	ret nz                                           ; $60a6: $c0

	ld bc, $01a0                                     ; $60a7: $01 $a0 $01
	nop                                              ; $60aa: $00
	sub h                                            ; $60ab: $94
	db $e4                                           ; $60ac: $e4
	nop                                              ; $60ad: $00
	ld c, l                                          ; $60ae: $4d
	ld bc, $48d5                                     ; $60af: $01 $d5 $48
	ret nz                                           ; $60b2: $c0

	ld bc, $05a0                                     ; $60b3: $01 $a0 $05
	nop                                              ; $60b6: $00
	sbc b                                            ; $60b7: $98
	ret nz                                           ; $60b8: $c0

	ld bc, $01a0                                     ; $60b9: $01 $a0 $01
	nop                                              ; $60bc: $00
	ld c, b                                          ; $60bd: $48
	ret nz                                           ; $60be: $c0

	ld bc, $05a0                                     ; $60bf: $01 $a0 $05
	nop                                              ; $60c2: $00
	sbc d                                            ; $60c3: $9a
	ret nz                                           ; $60c4: $c0

	ld bc, $01a0                                     ; $60c5: $01 $a0 $01
	nop                                              ; $60c8: $00
	sbc h                                            ; $60c9: $9c
	ret nz                                           ; $60ca: $c0

	ld bc, $05a0                                     ; $60cb: $01 $a0 $05
	nop                                              ; $60ce: $00
	sbc a                                            ; $60cf: $9f
	ret nz                                           ; $60d0: $c0

	ld bc, $01a0                                     ; $60d1: $01 $a0 $01
	nop                                              ; $60d4: $00
	and c                                            ; $60d5: $a1
	ret nz                                           ; $60d6: $c0

	ld bc, $05a0                                     ; $60d7: $01 $a0 $05
	nop                                              ; $60da: $00
	and h                                            ; $60db: $a4
	ret nz                                           ; $60dc: $c0

	ld bc, $01a0                                     ; $60dd: $01 $a0 $01
	nop                                              ; $60e0: $00
	and [hl]                                         ; $60e1: $a6
	ret nz                                           ; $60e2: $c0

	ld bc, $05a0                                     ; $60e3: $01 $a0 $05
	nop                                              ; $60e6: $00
	or c                                             ; $60e7: $b1
	pop bc                                           ; $60e8: $c1
	ld e, e                                          ; $60e9: $5b
	ret nz                                           ; $60ea: $c0

	ld bc, $01a0                                     ; $60eb: $01 $a0 $01
	nop                                              ; $60ee: $00
	or e                                             ; $60ef: $b3
	ret nz                                           ; $60f0: $c0

	ld bc, $01a0                                     ; $60f1: $01 $a0 $01
	nop                                              ; $60f4: $00
	cp c                                             ; $60f5: $b9
	push hl                                          ; $60f6: $e5
	ld h, h                                          ; $60f7: $64
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	add hl, bc                                       ; $60fa: $09
	rra                                              ; $60fb: $1f
	ret nc                                           ; $60fc: $d0

	adc e                                            ; $60fd: $8b
	inc bc                                           ; $60fe: $03
	ld bc, $06b0                                     ; $60ff: $01 $b0 $06
	add d                                            ; $6102: $82
	adc e                                            ; $6103: $8b
	ld [bc], a                                       ; $6104: $02
	db $ec                                           ; $6105: $ec
	ld [bc], a                                       ; $6106: $02
	or b                                             ; $6107: $b0
	sub d                                            ; $6108: $92
	inc bc                                           ; $6109: $03
	db $e4                                           ; $610a: $e4
	nop                                              ; $610b: $00
	db $10                                           ; $610c: $10
	ld [bc], a                                       ; $610d: $02
	or b                                             ; $610e: $b0
	sub h                                            ; $610f: $94
	inc bc                                           ; $6110: $03
	db $e4                                           ; $6111: $e4
	nop                                              ; $6112: $00
	dec e                                            ; $6113: $1d
	ld [bc], a                                       ; $6114: $02
	or b                                             ; $6115: $b0
	sub e                                            ; $6116: $93
	inc bc                                           ; $6117: $03
	db $e4                                           ; $6118: $e4
	nop                                              ; $6119: $00
	ld a, [hl+]                                      ; $611a: $2a
	add hl, bc                                       ; $611b: $09
	ld [de], a                                       ; $611c: $12
	pop bc                                           ; $611d: $c1
	ld e, c                                          ; $611e: $59
	db $e3                                           ; $611f: $e3
	nop                                              ; $6120: $00
	ld [hl], b                                       ; $6121: $70
	pop hl                                           ; $6122: $e1
	ld e, h                                          ; $6123: $5c
	inc bc                                           ; $6124: $03
	ld [hl+], a                                      ; $6125: $22
	ret nz                                           ; $6126: $c0

	ld bc, $05a0                                     ; $6127: $01 $a0 $05
	nop                                              ; $612a: $00
	cp h                                             ; $612b: $bc
	db $e4                                           ; $612c: $e4
	nop                                              ; $612d: $00
	ld a, [hl+]                                      ; $612e: $2a
	add hl, bc                                       ; $612f: $09
	ld [de], a                                       ; $6130: $12
	pop bc                                           ; $6131: $c1
	ld e, c                                          ; $6132: $59
	db $e3                                           ; $6133: $e3
	nop                                              ; $6134: $00
	ld [hl], e                                       ; $6135: $73
	pop hl                                           ; $6136: $e1
	ld e, h                                          ; $6137: $5c
	inc bc                                           ; $6138: $03
	ld [hl+], a                                      ; $6139: $22
	ret nz                                           ; $613a: $c0

	ld bc, $05a0                                     ; $613b: $01 $a0 $05
	nop                                              ; $613e: $00
	jp z, $00e4                                      ; $613f: $ca $e4 $00

	ld d, $09                                        ; $6142: $16 $09
	ld [de], a                                       ; $6144: $12
	pop bc                                           ; $6145: $c1
	ld e, c                                          ; $6146: $59
	db $e3                                           ; $6147: $e3
	nop                                              ; $6148: $00
	ld l, l                                          ; $6149: $6d
	pop hl                                           ; $614a: $e1
	ld e, h                                          ; $614b: $5c
	inc bc                                           ; $614c: $03
	ld [hl+], a                                      ; $614d: $22
	ret nz                                           ; $614e: $c0

	ld bc, $05a0                                     ; $614f: $01 $a0 $05
	nop                                              ; $6152: $00
	ret nc                                           ; $6153: $d0

	db $e4                                           ; $6154: $e4
	ld bc, $0946                                     ; $6155: $01 $46 $09
	ld e, $c0                                        ; $6158: $1e $c0
	ld bc, $01a0                                     ; $615a: $01 $a0 $01
	nop                                              ; $615d: $00
	db $dd                                           ; $615e: $dd
	ret nz                                           ; $615f: $c0

	ld bc, $05a0                                     ; $6160: $01 $a0 $05
	nop                                              ; $6163: $00
	db $e3                                           ; $6164: $e3
	ret nz                                           ; $6165: $c0

	ld bc, $01a0                                     ; $6166: $01 $a0 $01
	nop                                              ; $6169: $00
	jp hl                                            ; $616a: $e9


	ret nz                                           ; $616b: $c0

	ld hl, $d3d1                                     ; $616c: $21 $d1 $d3
	ret nz                                           ; $616f: $c0

	ld [hl+], a                                      ; $6170: $22
	pop de                                           ; $6171: $d1
	db $d3                                           ; $6172: $d3
	push hl                                          ; $6173: $e5
	ld e, h                                          ; $6174: $5c
	inc bc                                           ; $6175: $03
	ld b, l                                          ; $6176: $45
	add hl, bc                                       ; $6177: $09
	inc hl                                           ; $6178: $23
	pop hl                                           ; $6179: $e1
	ld [bc], a                                       ; $617a: $02
	ld bc, $c098                                     ; $617b: $01 $98 $c0
	ld bc, $05a0                                     ; $617e: $01 $a0 $05
	nop                                              ; $6181: $00
	di                                               ; $6182: $f3
	add d                                            ; $6183: $82
	adc e                                            ; $6184: $8b
	ld [bc], a                                       ; $6185: $02
	db $ec                                           ; $6186: $ec
	ld [bc], a                                       ; $6187: $02
	or b                                             ; $6188: $b0
	sub d                                            ; $6189: $92
	inc bc                                           ; $618a: $03
	db $e4                                           ; $618b: $e4
	nop                                              ; $618c: $00
	db $10                                           ; $618d: $10
	ld [bc], a                                       ; $618e: $02
	or b                                             ; $618f: $b0
	sub h                                            ; $6190: $94
	inc bc                                           ; $6191: $03
	db $e4                                           ; $6192: $e4
	nop                                              ; $6193: $00
	jr c, jr_088_6198                                ; $6194: $38 $02

	or b                                             ; $6196: $b0
	sub e                                            ; $6197: $93

jr_088_6198:
	inc bc                                           ; $6198: $03
	db $e4                                           ; $6199: $e4
	nop                                              ; $619a: $00
	ld h, b                                          ; $619b: $60
	jr z, jr_088_61b8                                ; $619c: $28 $1a

	pop bc                                           ; $619e: $c1
	ld e, c                                          ; $619f: $59
	db $e3                                           ; $61a0: $e3
	nop                                              ; $61a1: $00
	ld [hl], c                                       ; $61a2: $71
	pop hl                                           ; $61a3: $e1
	ld e, h                                          ; $61a4: $5c
	inc b                                            ; $61a5: $04
	rrca                                             ; $61a6: $0f
	ret nz                                           ; $61a7: $c0

	ld bc, $05a0                                     ; $61a8: $01 $a0 $05
	nop                                              ; $61ab: $00
	rst $38                                          ; $61ac: $ff
	ret nz                                           ; $61ad: $c0

	ld bc, $01a0                                     ; $61ae: $01 $a0 $01
	ld bc, $c00b                                     ; $61b1: $01 $0b $c0
	add hl, bc                                       ; $61b4: $09
	db $e3                                           ; $61b5: $e3
	nop                                              ; $61b6: $00
	ld h, e                                          ; $61b7: $63

jr_088_61b8:
	ld [de], a                                       ; $61b8: $12
	ld bc, $090d                                     ; $61b9: $01 $0d $09
	inc bc                                           ; $61bc: $03
	db $e4                                           ; $61bd: $e4
	nop                                              ; $61be: $00
	or c                                             ; $61bf: $b1
	ld bc, $090f                                     ; $61c0: $01 $0f $09
	rlca                                             ; $61c3: $07
	pop hl                                           ; $61c4: $e1
	ld e, h                                          ; $61c5: $5c
	inc b                                            ; $61c6: $04
	add hl, sp                                       ; $61c7: $39
	db $e4                                           ; $61c8: $e4
	nop                                              ; $61c9: $00
	ld l, h                                          ; $61ca: $6c
	jr z, jr_088_61e7                                ; $61cb: $28 $1a

	pop bc                                           ; $61cd: $c1
	ld e, c                                          ; $61ce: $59
	db $e3                                           ; $61cf: $e3
	nop                                              ; $61d0: $00
	ld [hl], h                                       ; $61d1: $74
	pop hl                                           ; $61d2: $e1
	ld e, h                                          ; $61d3: $5c
	inc b                                            ; $61d4: $04
	rrca                                             ; $61d5: $0f
	ret nz                                           ; $61d6: $c0

	ld bc, $05a0                                     ; $61d7: $01 $a0 $05
	ld bc, $c011                                     ; $61da: $01 $11 $c0
	ld bc, $01a0                                     ; $61dd: $01 $a0 $01
	ld bc, $c022                                     ; $61e0: $01 $22 $c0
	add hl, bc                                       ; $61e3: $09
	db $e3                                           ; $61e4: $e3
	nop                                              ; $61e5: $00
	ld h, e                                          ; $61e6: $63

jr_088_61e7:
	ld [de], a                                       ; $61e7: $12
	ld bc, $090d                                     ; $61e8: $01 $0d $09
	inc bc                                           ; $61eb: $03
	db $e4                                           ; $61ec: $e4
	nop                                              ; $61ed: $00
	add d                                            ; $61ee: $82
	ld bc, $090f                                     ; $61ef: $01 $0f $09
	rlca                                             ; $61f2: $07
	pop hl                                           ; $61f3: $e1
	ld e, h                                          ; $61f4: $5c
	inc b                                            ; $61f5: $04
	ld b, [hl]                                       ; $61f6: $46
	db $e4                                           ; $61f7: $e4

jr_088_61f8:
	nop                                              ; $61f8: $00
	dec a                                            ; $61f9: $3d
	jr z, jr_088_6222                                ; $61fa: $28 $26

	pop bc                                           ; $61fc: $c1
	ld e, c                                          ; $61fd: $59
	db $e3                                           ; $61fe: $e3
	nop                                              ; $61ff: $00
	ld l, [hl]                                       ; $6200: $6e
	pop hl                                           ; $6201: $e1
	ld e, h                                          ; $6202: $5c
	inc b                                            ; $6203: $04
	rrca                                             ; $6204: $0f
	ret nz                                           ; $6205: $c0

	ld bc, $05a0                                     ; $6206: $01 $a0 $05
	ld bc, $c025                                     ; $6209: $01 $25 $c0
	ld bc, $01a0                                     ; $620c: $01 $a0 $01
	ld bc, $c026                                     ; $620f: $01 $26 $c0
	ld bc, $05a0                                     ; $6212: $01 $a0 $05
	ld bc, $c02a                                     ; $6215: $01 $2a $c0
	ld bc, $01a0                                     ; $6218: $01 $a0 $01
	ld bc, $c035                                     ; $621b: $01 $35 $c0
	add hl, bc                                       ; $621e: $09
	db $e3                                           ; $621f: $e3
	nop                                              ; $6220: $00
	ld h, e                                          ; $6221: $63

jr_088_6222:
	ld [de], a                                       ; $6222: $12
	ld bc, $090d                                     ; $6223: $01 $0d $09
	inc bc                                           ; $6226: $03
	db $e4                                           ; $6227: $e4
	nop                                              ; $6228: $00
	ld b, a                                          ; $6229: $47
	ld bc, $090f                                     ; $622a: $01 $0f $09
	rlca                                             ; $622d: $07
	pop hl                                           ; $622e: $e1
	ld e, h                                          ; $622f: $5c
	inc b                                            ; $6230: $04
	ld d, e                                          ; $6231: $53
	db $e4                                           ; $6232: $e4
	nop                                              ; $6233: $00
	ld [bc], a                                       ; $6234: $02
	add hl, bc                                       ; $6235: $09
	jr c, jr_088_61f8                                ; $6236: $38 $c0

	ld bc, $01a0                                     ; $6238: $01 $a0 $01
	ld bc, $e138                                     ; $623b: $01 $38 $e1
	ld [bc], a                                       ; $623e: $02
	ld bc, $c098                                     ; $623f: $01 $98 $c0
	ld bc, $05a0                                     ; $6242: $01 $a0 $05
	ld bc, $c03e                                     ; $6245: $01 $3e $c0
	ld bc, $01a0                                     ; $6248: $01 $a0 $01
	ld bc, $c04a                                     ; $624b: $01 $4a $c0
	ld bc, $05a0                                     ; $624e: $01 $a0 $05
	ld bc, $c04f                                     ; $6251: $01 $4f $c0
	ld bc, $01a0                                     ; $6254: $01 $a0 $01
	ld bc, $c059                                     ; $6257: $01 $59 $c0
	ld bc, $05a0                                     ; $625a: $01 $a0 $05
	ld bc, $c064                                     ; $625d: $01 $64 $c0
	ld [hl+], a                                      ; $6260: $22
	push de                                          ; $6261: $d5
	db $d3                                           ; $6262: $d3
	nop                                              ; $6263: $00
	add b                                            ; $6264: $80
	inc bc                                           ; $6265: $03
	dec c                                            ; $6266: $0d
	ret nz                                           ; $6267: $c0

	set 0, c                                         ; $6268: $cb $c1
	ld e, e                                          ; $626a: $5b
	push hl                                          ; $626b: $e5
	ld e, h                                          ; $626c: $5c
	inc b                                            ; $626d: $04
	ld h, b                                          ; $626e: $60
	add hl, bc                                       ; $626f: $09
	ld a, [hl+]                                      ; $6270: $2a
	ret nz                                           ; $6271: $c0

	dec bc                                           ; $6272: $0b
	db $e3                                           ; $6273: $e3
	nop                                              ; $6274: $00
	daa                                              ; $6275: $27
	ret nz                                           ; $6276: $c0

	set 0, b                                         ; $6277: $cb $c0
	inc c                                            ; $6279: $0c
	ldh [rAUD3HIGH], a                               ; $627a: $e0 $1e
	pop hl                                           ; $627c: $e1
	ld e, h                                          ; $627d: $5c
	ld b, $0f                                        ; $627e: $06 $0f
	ret nz                                           ; $6280: $c0

	ld de, $00e3                                     ; $6281: $11 $e3 $00
	ld l, e                                          ; $6284: $6b
	pop hl                                           ; $6285: $e1
	ld [bc], a                                       ; $6286: $02
	ld bc, $e1a0                                     ; $6287: $01 $a0 $e1
	ld e, h                                          ; $628a: $5c
	inc b                                            ; $628b: $04
	ld [hl-], a                                      ; $628c: $32
	ret nz                                           ; $628d: $c0

	ld bc, $05a0                                     ; $628e: $01 $a0 $05
	ld bc, $c067                                     ; $6291: $01 $67 $c0
	set 0, c                                         ; $6294: $cb $c1
	ld e, e                                          ; $6296: $5b
	push hl                                          ; $6297: $e5
	ld e, h                                          ; $6298: $5c
	inc b                                            ; $6299: $04
	ld h, b                                          ; $629a: $60
	add hl, bc                                       ; $629b: $09
	or e                                             ; $629c: $b3
	ret nz                                           ; $629d: $c0

	inc c                                            ; $629e: $0c
	ldh [$3c], a                                     ; $629f: $e0 $3c
	ret nz                                           ; $62a1: $c0

	ld bc, $01a0                                     ; $62a2: $01 $a0 $01
	ld bc, $c075                                     ; $62a5: $01 $75 $c0
	ld bc, $05a0                                     ; $62a8: $01 $a0 $05
	ld bc, $c077                                     ; $62ab: $01 $77 $c0
	ld bc, $01a0                                     ; $62ae: $01 $a0 $01
	ld bc, $c079                                     ; $62b1: $01 $79 $c0
	ld bc, $05a0                                     ; $62b4: $01 $a0 $05
	ld bc, $c183                                     ; $62b7: $01 $83 $c1
	ld e, e                                          ; $62ba: $5b
	ret nz                                           ; $62bb: $c0

	ld bc, $01a0                                     ; $62bc: $01 $a0 $01
	ld bc, wGenericTileDataBuffer                                     ; $62bf: $01 $8f $c1
	ld e, c                                          ; $62c2: $59
	db $e3                                           ; $62c3: $e3
	nop                                              ; $62c4: $00
	rst AddAOntoHL                                          ; $62c5: $ef
	ret nz                                           ; $62c6: $c0

	ld bc, $05a0                                     ; $62c7: $01 $a0 $05
	ld bc, $c09d                                     ; $62ca: $01 $9d $c0
	ld bc, $2da0                                     ; $62cd: $01 $a0 $2d
	ld bc, $c0aa                                     ; $62d0: $01 $aa $c0
	ld bc, $05a0                                     ; $62d3: $01 $a0 $05
	ld bc, $60b7                                     ; $62d6: $01 $b7 $60
	ld hl, sp-$40                                    ; $62d9: $f8 $c0
	add e                                            ; $62db: $83
	pop de                                           ; $62dc: $d1
	ldh [$64], a                                     ; $62dd: $e0 $64
	inc c                                            ; $62df: $0c
	ret nz                                           ; $62e0: $c0

	ld bc, $2da0                                     ; $62e1: $01 $a0 $2d
	ld bc, $c0c2                                     ; $62e4: $01 $c2 $c0
	ld bc, $2da0                                     ; $62e7: $01 $a0 $2d
	ld bc, $0ce3                                     ; $62ea: $01 $e3 $0c
	ret nz                                           ; $62ed: $c0

	ld bc, $2da0                                     ; $62ee: $01 $a0 $2d
	ld [bc], a                                       ; $62f1: $02
	inc de                                           ; $62f2: $13
	ret nz                                           ; $62f3: $c0

	ld bc, $2da0                                     ; $62f4: $01 $a0 $2d
	ld [bc], a                                       ; $62f7: $02
	inc e                                            ; $62f8: $1c
	ret nz                                           ; $62f9: $c0

	ld bc, $05a0                                     ; $62fa: $01 $a0 $05
	ld [bc], a                                       ; $62fd: $02
	ld a, [hl+]                                      ; $62fe: $2a
	ld h, b                                          ; $62ff: $60
	ld hl, sp-$40                                    ; $6300: $f8 $c0
	add e                                            ; $6302: $83
	pop de                                           ; $6303: $d1
	ldh [$64], a                                     ; $6304: $e0 $64
	jr nz, @-$3e                                     ; $6306: $20 $c0

	ld bc, $01a0                                     ; $6308: $01 $a0 $01
	ld [bc], a                                       ; $630b: $02
	jr c, @-$3e                                      ; $630c: $38 $c0

	ld bc, $05a0                                     ; $630e: $01 $a0 $05
	ld [bc], a                                       ; $6311: $02
	ld b, d                                          ; $6312: $42
	ret nz                                           ; $6313: $c0

	ld bc, $01a0                                     ; $6314: $01 $a0 $01
	ld [bc], a                                       ; $6317: $02
	ld c, l                                          ; $6318: $4d
	ret nz                                           ; $6319: $c0

	ld bc, $05a0                                     ; $631a: $01 $a0 $05
	ld [bc], a                                       ; $631d: $02
	ld d, e                                          ; $631e: $53
	ret nz                                           ; $631f: $c0

	set 0, b                                         ; $6320: $cb $c0
	ld bc, $01a0                                     ; $6322: $01 $a0 $01
	ld [bc], a                                       ; $6325: $02
	ld d, l                                          ; $6326: $55
	inc d                                            ; $6327: $14
	ret nz                                           ; $6328: $c0

	ld bc, $01a0                                     ; $6329: $01 $a0 $01
	ld [bc], a                                       ; $632c: $02
	ld h, h                                          ; $632d: $64
	ret nz                                           ; $632e: $c0

	ld bc, $05a0                                     ; $632f: $01 $a0 $05
	ld [bc], a                                       ; $6332: $02
	ld [hl], h                                       ; $6333: $74
	ret nz                                           ; $6334: $c0

	set 0, b                                         ; $6335: $cb $c0
	ld bc, $01a0                                     ; $6337: $01 $a0 $01
	ld [bc], a                                       ; $633a: $02
	add e                                            ; $633b: $83
	ret nz                                           ; $633c: $c0

	ld de, $00e3                                     ; $633d: $11 $e3 $00
	ld l, e                                          ; $6340: $6b
	pop bc                                           ; $6341: $c1
	ld e, h                                          ; $6342: $5c
	ret nz                                           ; $6343: $c0

	jp z, $21c0                                      ; $6344: $ca $c0 $21

	pop de                                           ; $6347: $d1
	db $d3                                           ; $6348: $d3
	pop bc                                           ; $6349: $c1
	ld l, e                                          ; $634a: $6b
	jp nc, $e4d3                                     ; $634b: $d2 $d3 $e4

	cp $09                                           ; $634e: $fe $09
	and e                                            ; $6350: $a3
	ld [$2228], sp                                   ; $6351: $08 $28 $22
	ret nz                                           ; $6354: $c0

	ld bc, $08a0                                     ; $6355: $01 $a0 $08
	nop                                              ; $6358: $00
	ld bc, $02e1                                     ; $6359: $01 $e1 $02
	ld bc, $c0e0                                     ; $635c: $01 $e0 $c0
	ld bc, $01a0                                     ; $635f: $01 $a0 $01
	nop                                              ; $6362: $00
	inc b                                            ; $6363: $04
	ret nz                                           ; $6364: $c0

	ld bc, $08a0                                     ; $6365: $01 $a0 $08
	nop                                              ; $6368: $00
	dec bc                                           ; $6369: $0b
	ret nz                                           ; $636a: $c0

	ld bc, $01a0                                     ; $636b: $01 $a0 $01
	nop                                              ; $636e: $00
	ld d, $c0                                        ; $636f: $16 $c0
	ld bc, $08a0                                     ; $6371: $01 $a0 $08
	nop                                              ; $6374: $00
	ld a, [de]                                       ; $6375: $1a
	inc a                                            ; $6376: $3c
	nop                                              ; $6377: $00
	dec h                                            ; $6378: $25
	add hl, bc                                       ; $6379: $09
	dec c                                            ; $637a: $0d
	pop hl                                           ; $637b: $e1
	ld [bc], a                                       ; $637c: $02
	inc bc                                           ; $637d: $03
	inc de                                           ; $637e: $13
	ret nz                                           ; $637f: $c0

	ld bc, $08a0                                     ; $6380: $01 $a0 $08
	nop                                              ; $6383: $00
	inc l                                            ; $6384: $2c
	db $e4                                           ; $6385: $e4
	ld bc, $0063                                     ; $6386: $01 $63 $00
	dec sp                                           ; $6389: $3b
	add hl, bc                                       ; $638a: $09
	daa                                              ; $638b: $27
	pop hl                                           ; $638c: $e1
	ld [bc], a                                       ; $638d: $02
	inc bc                                           ; $638e: $03
	rra                                              ; $638f: $1f
	ret nz                                           ; $6390: $c0

	ld bc, $08a0                                     ; $6391: $01 $a0 $08
	nop                                              ; $6394: $00
	ccf                                              ; $6395: $3f
	pop bc                                           ; $6396: $c1
	ld e, e                                          ; $6397: $5b
	ret nz                                           ; $6398: $c0

	ld bc, $01a0                                     ; $6399: $01 $a0 $01
	nop                                              ; $639c: $00
	ld d, c                                          ; $639d: $51
	nop                                              ; $639e: $00
	add b                                            ; $639f: $80
	ld [bc], a                                       ; $63a0: $02
	cp $c0                                           ; $63a1: $fe $c0
	inc h                                            ; $63a3: $24
	jp nc, $c0d7                                     ; $63a4: $d2 $d7 $c0

	dec h                                            ; $63a7: $25
	pop de                                           ; $63a8: $d1
	rst SubAFromHL                                          ; $63a9: $d7
	ret nz                                           ; $63aa: $c0

	inc hl                                           ; $63ab: $23
	ldh [rAUD1HIGH], a                               ; $63ac: $e0 $14
	rst SubAFromHL                                          ; $63ae: $d7
	push hl                                          ; $63af: $e5
	ld e, h                                          ; $63b0: $5c
	ld [bc], a                                       ; $63b1: $02
	ld a, $09                                        ; $63b2: $3e $09
	pop bc                                           ; $63b4: $c1
	inc sp                                           ; $63b5: $33
	ret nz                                           ; $63b6: $c0

	ld bc, $01a0                                     ; $63b7: $01 $a0 $01
	nop                                              ; $63ba: $00
	ld e, c                                          ; $63bb: $59
	ret nz                                           ; $63bc: $c0

	ld bc, $01a0                                     ; $63bd: $01 $a0 $01
	nop                                              ; $63c0: $00
	ld h, e                                          ; $63c1: $63
	pop hl                                           ; $63c2: $e1
	ld [bc], a                                       ; $63c3: $02
	ld bc, $83e0                                     ; $63c4: $01 $e0 $83
	ret nz                                           ; $63c7: $c0

	dec de                                           ; $63c8: $1b
	rst SubAFromHL                                          ; $63c9: $d7
	ld [bc], a                                       ; $63ca: $02
	ret nc                                           ; $63cb: $d0

	pop de                                           ; $63cc: $d1
	ld c, c                                          ; $63cd: $49
	ret nz                                           ; $63ce: $c0

	ld bc, $08a0                                     ; $63cf: $01 $a0 $08
	nop                                              ; $63d2: $00
	ld h, l                                          ; $63d3: $65
	ret nz                                           ; $63d4: $c0

	ld bc, $01a0                                     ; $63d5: $01 $a0 $01
	nop                                              ; $63d8: $00
	ld l, d                                          ; $63d9: $6a
	ret nz                                           ; $63da: $c0

	ld bc, $08a0                                     ; $63db: $01 $a0 $08
	nop                                              ; $63de: $00
	ld [hl], d                                       ; $63df: $72
	ret nz                                           ; $63e0: $c0

	ld bc, $01a0                                     ; $63e1: $01 $a0 $01
	nop                                              ; $63e4: $00
	ld a, l                                          ; $63e5: $7d
	ret nz                                           ; $63e6: $c0

	ld bc, $08a0                                     ; $63e7: $01 $a0 $08
	nop                                              ; $63ea: $00
	add e                                            ; $63eb: $83
	ret nz                                           ; $63ec: $c0

	ld bc, $01a0                                     ; $63ed: $01 $a0 $01
	nop                                              ; $63f0: $00
	adc c                                            ; $63f1: $89
	pop bc                                           ; $63f2: $c1
	ld e, e                                          ; $63f3: $5b
	pop hl                                           ; $63f4: $e1
	ld [bc], a                                       ; $63f5: $02
	rlca                                             ; $63f6: $07
	cp a                                             ; $63f7: $bf
	ret nz                                           ; $63f8: $c0

	inc c                                            ; $63f9: $0c
	ldh [$3c], a                                     ; $63fa: $e0 $3c
	ret nz                                           ; $63fc: $c0

	ld bc, $01a0                                     ; $63fd: $01 $a0 $01
	nop                                              ; $6400: $00
	sub b                                            ; $6401: $90
	ret nz                                           ; $6402: $c0

	inc c                                            ; $6403: $0c
	ldh [$3c], a                                     ; $6404: $e0 $3c
	pop bc                                           ; $6406: $c1
	ld e, h                                          ; $6407: $5c
	ret nz                                           ; $6408: $c0

	ld bc, $08a0                                     ; $6409: $01 $a0 $08
	nop                                              ; $640c: $00
	sub a                                            ; $640d: $97
	ret nz                                           ; $640e: $c0

	ld bc, $01a0                                     ; $640f: $01 $a0 $01
	nop                                              ; $6412: $00
	xor [hl]                                         ; $6413: $ae
	db $e4                                           ; $6414: $e4
	nop                                              ; $6415: $00
	call nc, $d202                                   ; $6416: $d4 $02 $d2
	db $d3                                           ; $6419: $d3
	ld d, l                                          ; $641a: $55
	ret nz                                           ; $641b: $c0

	ld bc, $08a0                                     ; $641c: $01 $a0 $08
	nop                                              ; $641f: $00
	or e                                             ; $6420: $b3
	ret nz                                           ; $6421: $c0

	ld bc, $01a0                                     ; $6422: $01 $a0 $01
	nop                                              ; $6425: $00
	ld l, d                                          ; $6426: $6a
	ret nz                                           ; $6427: $c0

	ld bc, $08a0                                     ; $6428: $01 $a0 $08
	nop                                              ; $642b: $00
	cp b                                             ; $642c: $b8
	ret nz                                           ; $642d: $c0

	ld bc, $01a0                                     ; $642e: $01 $a0 $01
	nop                                              ; $6431: $00
	ld a, l                                          ; $6432: $7d
	ret nz                                           ; $6433: $c0

	ld bc, $08a0                                     ; $6434: $01 $a0 $08
	nop                                              ; $6437: $00
	ret nz                                           ; $6438: $c0

	ret nz                                           ; $6439: $c0

	ld bc, $01a0                                     ; $643a: $01 $a0 $01
	nop                                              ; $643d: $00
	adc c                                            ; $643e: $89
	pop bc                                           ; $643f: $c1
	ld e, e                                          ; $6440: $5b
	pop hl                                           ; $6441: $e1
	ld [bc], a                                       ; $6442: $02
	rlca                                             ; $6443: $07
	cp a                                             ; $6444: $bf
	ret nz                                           ; $6445: $c0

	inc c                                            ; $6446: $0c
	ldh [$3c], a                                     ; $6447: $e0 $3c
	ret nz                                           ; $6449: $c0

	ld bc, $01a0                                     ; $644a: $01 $a0 $01
	nop                                              ; $644d: $00
	jp z, $0cc0                                      ; $644e: $ca $c0 $0c

	ldh [$3c], a                                     ; $6451: $e0 $3c
	pop bc                                           ; $6453: $c1
	ld e, h                                          ; $6454: $5c
	ret nz                                           ; $6455: $c0

	ld bc, $08a0                                     ; $6456: $01 $a0 $08
	nop                                              ; $6459: $00
	call nc, $01c0                                   ; $645a: $d4 $c0 $01
	and b                                            ; $645d: $a0
	ld bc, $d900                                     ; $645e: $01 $00 $d9
	ret nz                                           ; $6461: $c0

	ld bc, $08a0                                     ; $6462: $01 $a0 $08
	nop                                              ; $6465: $00
	rst SubAFromBC                                          ; $6466: $e7
	ret nz                                           ; $6467: $c0

	ld bc, $01a0                                     ; $6468: $01 $a0 $01
	nop                                              ; $646b: $00
	xor [hl]                                         ; $646c: $ae
	db $e4                                           ; $646d: $e4
	nop                                              ; $646e: $00
	ld a, e                                          ; $646f: $7b
	ld bc, $4fd4                                     ; $6470: $01 $d4 $4f
	ret nz                                           ; $6473: $c0

	ld bc, $08a0                                     ; $6474: $01 $a0 $08
	nop                                              ; $6477: $00
	ld hl, sp-$40                                    ; $6478: $f8 $c0
	ld bc, $01a0                                     ; $647a: $01 $a0 $01
	nop                                              ; $647d: $00
	ld l, d                                          ; $647e: $6a
	ret nz                                           ; $647f: $c0

	ld bc, $08a0                                     ; $6480: $01 $a0 $08
	nop                                              ; $6483: $00
	db $fd                                           ; $6484: $fd
	ret nz                                           ; $6485: $c0

	ld bc, $01a0                                     ; $6486: $01 $a0 $01
	nop                                              ; $6489: $00
	ld a, l                                          ; $648a: $7d
	ret nz                                           ; $648b: $c0

	ld bc, $08a0                                     ; $648c: $01 $a0 $08
	ld bc, $c00a                                     ; $648f: $01 $0a $c0
	ld bc, $01a0                                     ; $6492: $01 $a0 $01
	nop                                              ; $6495: $00
	adc c                                            ; $6496: $89
	pop bc                                           ; $6497: $c1
	ld e, e                                          ; $6498: $5b
	pop hl                                           ; $6499: $e1
	ld [bc], a                                       ; $649a: $02
	rlca                                             ; $649b: $07
	cp a                                             ; $649c: $bf
	ret nz                                           ; $649d: $c0

	inc c                                            ; $649e: $0c
	ldh [$3c], a                                     ; $649f: $e0 $3c
	ret nz                                           ; $64a1: $c0

	ld bc, $01a0                                     ; $64a2: $01 $a0 $01
	nop                                              ; $64a5: $00
	jp z, $0cc0                                      ; $64a6: $ca $c0 $0c

	ldh [$5a], a                                     ; $64a9: $e0 $5a
	ret nz                                           ; $64ab: $c0

	ld bc, $08a0                                     ; $64ac: $01 $a0 $08
	nop                                              ; $64af: $00
	call nc, Call_088_5cc1                           ; $64b0: $d4 $c1 $5c
	ret nz                                           ; $64b3: $c0

	ld bc, $01a0                                     ; $64b4: $01 $a0 $01
	nop                                              ; $64b7: $00
	reti                                             ; $64b8: $d9


	ret nz                                           ; $64b9: $c0

	ld bc, $08a0                                     ; $64ba: $01 $a0 $08
	ld bc, $e416                                     ; $64bd: $01 $16 $e4
	nop                                              ; $64c0: $00
	add hl, hl                                       ; $64c1: $29
	ld bc, $24d5                                     ; $64c2: $01 $d5 $24
	ret nz                                           ; $64c5: $c0

	ld bc, $08a0                                     ; $64c6: $01 $a0 $08
	ld bc, $c027                                     ; $64c9: $01 $27 $c0
	ld bc, $01a0                                     ; $64cc: $01 $a0 $01
	nop                                              ; $64cf: $00
	ld l, d                                          ; $64d0: $6a
	ret nz                                           ; $64d1: $c0

	ld bc, $08a0                                     ; $64d2: $01 $a0 $08
	ld bc, $c12c                                     ; $64d5: $01 $2c $c1
	ld e, e                                          ; $64d8: $5b
	ret nz                                           ; $64d9: $c0

	ld bc, $01a0                                     ; $64da: $01 $a0 $01
	ld bc, $c03b                                     ; $64dd: $01 $3b $c0
	ld bc, $01a0                                     ; $64e0: $01 $a0 $01
	ld bc, $e545                                     ; $64e3: $01 $45 $e5
	ld h, h                                          ; $64e6: $64
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	add hl, bc                                       ; $64e9: $09
	rra                                              ; $64ea: $1f
	ret nc                                           ; $64eb: $d0

	adc e                                            ; $64ec: $8b
	inc bc                                           ; $64ed: $03
	ld bc, $07b0                                     ; $64ee: $01 $b0 $07
	add d                                            ; $64f1: $82
	adc e                                            ; $64f2: $8b
	ld [bc], a                                       ; $64f3: $02
	db $ec                                           ; $64f4: $ec
	ld [bc], a                                       ; $64f5: $02

jr_088_64f6:
	or b                                             ; $64f6: $b0
	sub d                                            ; $64f7: $92
	inc bc                                           ; $64f8: $03
	db $e4                                           ; $64f9: $e4
	nop                                              ; $64fa: $00
	db $10                                           ; $64fb: $10
	ld [bc], a                                       ; $64fc: $02
	or b                                             ; $64fd: $b0
	sub h                                            ; $64fe: $94
	inc bc                                           ; $64ff: $03
	db $e4                                           ; $6500: $e4
	nop                                              ; $6501: $00
	dec e                                            ; $6502: $1d
	ld [bc], a                                       ; $6503: $02
	or b                                             ; $6504: $b0
	sub e                                            ; $6505: $93
	inc bc                                           ; $6506: $03
	db $e4                                           ; $6507: $e4
	nop                                              ; $6508: $00
	ld a, [hl+]                                      ; $6509: $2a
	add hl, bc                                       ; $650a: $09
	ld [de], a                                       ; $650b: $12
	pop bc                                           ; $650c: $c1
	ld e, c                                          ; $650d: $59
	db $e3                                           ; $650e: $e3

jr_088_650f:
	nop                                              ; $650f: $00
	ld [hl], b                                       ; $6510: $70
	pop hl                                           ; $6511: $e1
	ld e, h                                          ; $6512: $5c
	inc bc                                           ; $6513: $03
	ld [hl+], a                                      ; $6514: $22
	ret nz                                           ; $6515: $c0

	ld bc, $08a0                                     ; $6516: $01 $a0 $08
	ld bc, $e448                                     ; $6519: $01 $48 $e4
	nop                                              ; $651c: $00
	jr nc, jr_088_6528                               ; $651d: $30 $09

	ld [de], a                                       ; $651f: $12
	pop bc                                           ; $6520: $c1
	ld e, c                                          ; $6521: $59
	db $e3                                           ; $6522: $e3
	nop                                              ; $6523: $00
	ld [hl], e                                       ; $6524: $73
	pop hl                                           ; $6525: $e1
	ld e, h                                          ; $6526: $5c
	inc bc                                           ; $6527: $03

jr_088_6528:
	ld [hl+], a                                      ; $6528: $22
	ret nz                                           ; $6529: $c0

	ld bc, $08a0                                     ; $652a: $01 $a0 $08
	ld bc, $e454                                     ; $652d: $01 $54 $e4
	nop                                              ; $6530: $00
	inc e                                            ; $6531: $1c
	add hl, bc                                       ; $6532: $09
	jr jr_088_64f6                                   ; $6533: $18 $c1

	ld e, c                                          ; $6535: $59
	db $e3                                           ; $6536: $e3
	nop                                              ; $6537: $00
	ld l, l                                          ; $6538: $6d
	pop hl                                           ; $6539: $e1
	ld e, h                                          ; $653a: $5c
	inc bc                                           ; $653b: $03
	ld [hl+], a                                      ; $653c: $22
	ret nz                                           ; $653d: $c0

	ld bc, $08a0                                     ; $653e: $01 $a0 $08
	ld bc, $c062                                     ; $6541: $01 $62 $c0
	ld bc, $01a0                                     ; $6544: $01 $a0 $01
	ld bc, $e473                                     ; $6547: $01 $73 $e4
	nop                                              ; $654a: $00
	ld [bc], a                                       ; $654b: $02
	add hl, bc                                       ; $654c: $09
	jr nc, jr_088_650f                               ; $654d: $30 $c0

	ld bc, $01a0                                     ; $654f: $01 $a0 $01
	ld bc, $c07e                                     ; $6552: $01 $7e $c0
	ld bc, $08a0                                     ; $6555: $01 $a0 $08
	ld bc, $c083                                     ; $6558: $01 $83 $c0
	ld bc, $01a0                                     ; $655b: $01 $a0 $01
	ld bc, $c088                                     ; $655e: $01 $88 $c0
	ld bc, $08a0                                     ; $6561: $01 $a0 $08
	ld bc, $c08e                                     ; $6564: $01 $8e $c0
	ld bc, $01a0                                     ; $6567: $01 $a0 $01
	ld bc, $c092                                     ; $656a: $01 $92 $c0
	ld bc, $08a0                                     ; $656d: $01 $a0 $08
	ld bc, $c098                                     ; $6570: $01 $98 $c0
	ld hl, $d7d1                                     ; $6573: $21 $d1 $d7
	ret nz                                           ; $6576: $c0

	ld [hl+], a                                      ; $6577: $22
	pop de                                           ; $6578: $d1
	rst SubAFromHL                                          ; $6579: $d7
	push hl                                          ; $657a: $e5
	ld e, h                                          ; $657b: $5c
	inc bc                                           ; $657c: $03
	ld b, l                                          ; $657d: $45
	add hl, bc                                       ; $657e: $09
	inc hl                                           ; $657f: $23
	pop hl                                           ; $6580: $e1
	ld [bc], a                                       ; $6581: $02
	ld bc, $c0e0                                     ; $6582: $01 $e0 $c0
	ld bc, $08a0                                     ; $6585: $01 $a0 $08
	ld bc, $829b                                     ; $6588: $01 $9b $82
	adc e                                            ; $658b: $8b
	ld [bc], a                                       ; $658c: $02
	db $ec                                           ; $658d: $ec
	ld [bc], a                                       ; $658e: $02
	or b                                             ; $658f: $b0
	sub d                                            ; $6590: $92
	inc bc                                           ; $6591: $03
	db $e4                                           ; $6592: $e4
	nop                                              ; $6593: $00
	db $10                                           ; $6594: $10
	ld [bc], a                                       ; $6595: $02
	or b                                             ; $6596: $b0
	sub h                                            ; $6597: $94
	inc bc                                           ; $6598: $03
	db $e4                                           ; $6599: $e4
	nop                                              ; $659a: $00
	jr c, jr_088_659f                                ; $659b: $38 $02

	or b                                             ; $659d: $b0
	sub e                                            ; $659e: $93

jr_088_659f:
	inc bc                                           ; $659f: $03
	db $e4                                           ; $65a0: $e4
	nop                                              ; $65a1: $00
	ld h, b                                          ; $65a2: $60
	jr z, jr_088_65bf                                ; $65a3: $28 $1a

	pop bc                                           ; $65a5: $c1
	ld e, c                                          ; $65a6: $59
	db $e3                                           ; $65a7: $e3
	nop                                              ; $65a8: $00
	ld [hl], c                                       ; $65a9: $71
	pop hl                                           ; $65aa: $e1
	ld e, h                                          ; $65ab: $5c
	inc b                                            ; $65ac: $04
	rrca                                             ; $65ad: $0f
	ret nz                                           ; $65ae: $c0

	ld bc, $08a0                                     ; $65af: $01 $a0 $08
	ld bc, $c09f                                     ; $65b2: $01 $9f $c0
	ld bc, $01a0                                     ; $65b5: $01 $a0 $01
	ld bc, $c0a6                                     ; $65b8: $01 $a6 $c0
	add hl, bc                                       ; $65bb: $09
	db $e3                                           ; $65bc: $e3
	nop                                              ; $65bd: $00
	ld h, e                                          ; $65be: $63

jr_088_65bf:
	ld [de], a                                       ; $65bf: $12
	ld bc, $09a9                                     ; $65c0: $01 $a9 $09
	inc bc                                           ; $65c3: $03
	db $e4                                           ; $65c4: $e4
	nop                                              ; $65c5: $00
	sbc a                                            ; $65c6: $9f
	ld bc, $09ab                                     ; $65c7: $01 $ab $09
	rlca                                             ; $65ca: $07
	pop hl                                           ; $65cb: $e1
	ld e, h                                          ; $65cc: $5c
	inc b                                            ; $65cd: $04
	add hl, sp                                       ; $65ce: $39
	db $e4                                           ; $65cf: $e4
	nop                                              ; $65d0: $00
	ld h, b                                          ; $65d1: $60
	jr z, jr_088_65ee                                ; $65d2: $28 $1a

	pop bc                                           ; $65d4: $c1
	ld e, c                                          ; $65d5: $59
	db $e3                                           ; $65d6: $e3
	nop                                              ; $65d7: $00
	ld [hl], h                                       ; $65d8: $74
	pop hl                                           ; $65d9: $e1
	ld e, h                                          ; $65da: $5c
	inc b                                            ; $65db: $04
	rrca                                             ; $65dc: $0f
	ret nz                                           ; $65dd: $c0

	ld bc, $08a0                                     ; $65de: $01 $a0 $08
	ld bc, $c0ad                                     ; $65e1: $01 $ad $c0
	ld bc, $01a0                                     ; $65e4: $01 $a0 $01
	ld bc, $c0c2                                     ; $65e7: $01 $c2 $c0
	add hl, bc                                       ; $65ea: $09
	db $e3                                           ; $65eb: $e3
	nop                                              ; $65ec: $00
	ld h, e                                          ; $65ed: $63

jr_088_65ee:
	ld [de], a                                       ; $65ee: $12
	ld bc, $09a9                                     ; $65ef: $01 $a9 $09
	inc bc                                           ; $65f2: $03
	db $e4                                           ; $65f3: $e4
	nop                                              ; $65f4: $00
	ld [hl], b                                       ; $65f5: $70
	ld bc, $09ab                                     ; $65f6: $01 $ab $09
	rlca                                             ; $65f9: $07
	pop hl                                           ; $65fa: $e1
	ld e, h                                          ; $65fb: $5c
	inc b                                            ; $65fc: $04
	ld b, [hl]                                       ; $65fd: $46
	db $e4                                           ; $65fe: $e4
	nop                                              ; $65ff: $00
	ld sp, $1a28                                     ; $6600: $31 $28 $1a
	pop bc                                           ; $6603: $c1
	ld e, c                                          ; $6604: $59
	db $e3                                           ; $6605: $e3
	nop                                              ; $6606: $00
	ld l, [hl]                                       ; $6607: $6e
	pop hl                                           ; $6608: $e1
	ld e, h                                          ; $6609: $5c
	inc b                                            ; $660a: $04
	rrca                                             ; $660b: $0f
	ret nz                                           ; $660c: $c0

	ld bc, $08a0                                     ; $660d: $01 $a0 $08
	ld bc, $c0c4                                     ; $6610: $01 $c4 $c0
	ld bc, $01a0                                     ; $6613: $01 $a0 $01
	ld bc, $c0d3                                     ; $6616: $01 $d3 $c0
	add hl, bc                                       ; $6619: $09
	db $e3                                           ; $661a: $e3
	nop                                              ; $661b: $00
	ld h, e                                          ; $661c: $63
	ld [de], a                                       ; $661d: $12
	ld bc, $09a9                                     ; $661e: $01 $a9 $09
	inc bc                                           ; $6621: $03
	db $e4                                           ; $6622: $e4
	nop                                              ; $6623: $00
	ld b, c                                          ; $6624: $41
	ld bc, $09ab                                     ; $6625: $01 $ab $09
	rlca                                             ; $6628: $07
	pop hl                                           ; $6629: $e1
	ld e, h                                          ; $662a: $5c
	inc b                                            ; $662b: $04
	ld d, e                                          ; $662c: $53
	db $e4                                           ; $662d: $e4
	nop                                              ; $662e: $00
	ld [bc], a                                       ; $662f: $02
	add hl, bc                                       ; $6630: $09
	ld [hl-], a                                      ; $6631: $32
	ret nz                                           ; $6632: $c0

	ld bc, $01a0                                     ; $6633: $01 $a0 $01
	ld bc, $e1d6                                     ; $6636: $01 $d6 $e1
	ld [bc], a                                       ; $6639: $02
	ld bc, $c0e0                                     ; $663a: $01 $e0 $c0
	ld bc, $08a0                                     ; $663d: $01 $a0 $08
	ld bc, $c0dc                                     ; $6640: $01 $dc $c0
	ld bc, $01a0                                     ; $6643: $01 $a0 $01
	ld bc, $c0df                                     ; $6646: $01 $df $c0
	ld bc, $08a0                                     ; $6649: $01 $a0 $08
	ld bc, $c0e8                                     ; $664c: $01 $e8 $c0
	ld bc, $01a0                                     ; $664f: $01 $a0 $01
	ld bc, $c0fa                                     ; $6652: $01 $fa $c0
	ld [hl+], a                                      ; $6655: $22
	push de                                          ; $6656: $d5
	rst SubAFromHL                                          ; $6657: $d7
	nop                                              ; $6658: $00
	add b                                            ; $6659: $80
	inc bc                                           ; $665a: $03
	dec c                                            ; $665b: $0d
	ret nz                                           ; $665c: $c0

	set 0, c                                         ; $665d: $cb $c1
	ld e, e                                          ; $665f: $5b
	push hl                                          ; $6660: $e5
	ld e, h                                          ; $6661: $5c
	inc b                                            ; $6662: $04
	ld h, b                                          ; $6663: $60
	add hl, bc                                       ; $6664: $09
	ld a, [hl+]                                      ; $6665: $2a
	ret nz                                           ; $6666: $c0

	dec bc                                           ; $6667: $0b
	db $e3                                           ; $6668: $e3
	nop                                              ; $6669: $00
	daa                                              ; $666a: $27
	ret nz                                           ; $666b: $c0

	set 0, b                                         ; $666c: $cb $c0
	inc c                                            ; $666e: $0c
	ldh [rAUD3HIGH], a                               ; $666f: $e0 $1e
	pop hl                                           ; $6671: $e1
	ld e, h                                          ; $6672: $5c
	ld b, $0f                                        ; $6673: $06 $0f
	ret nz                                           ; $6675: $c0

	ld de, $00e3                                     ; $6676: $11 $e3 $00
	ld l, e                                          ; $6679: $6b

jr_088_667a:
	pop hl                                           ; $667a: $e1
	ld [bc], a                                       ; $667b: $02
	ld bc, $e1e8                                     ; $667c: $01 $e8 $e1
	ld e, h                                          ; $667f: $5c
	inc b                                            ; $6680: $04
	ld [hl-], a                                      ; $6681: $32
	ret nz                                           ; $6682: $c0

	ld bc, $08a0                                     ; $6683: $01 $a0 $08
	ld [bc], a                                       ; $6686: $02
	ld [bc], a                                       ; $6687: $02
	ret nz                                           ; $6688: $c0

	set 0, c                                         ; $6689: $cb $c1
	ld e, e                                          ; $668b: $5b
	push hl                                          ; $668c: $e5
	ld e, h                                          ; $668d: $5c
	inc b                                            ; $668e: $04
	ld h, b                                          ; $668f: $60
	and e                                            ; $6690: $a3
	ld [$1628], sp                                   ; $6691: $08 $28 $16
	ret nz                                           ; $6694: $c0

	ld bc, $09a0                                     ; $6695: $01 $a0 $09
	nop                                              ; $6698: $00
	ld bc, $02e1                                     ; $6699: $01 $e1 $02
	ld [bc], a                                       ; $669c: $02
	db $10                                           ; $669d: $10
	ret nz                                           ; $669e: $c0

	ld bc, $01a0                                     ; $669f: $01 $a0 $01
	nop                                              ; $66a2: $00
	inc b                                            ; $66a3: $04
	ret nz                                           ; $66a4: $c0

	ld bc, $09a0                                     ; $66a5: $01 $a0 $09
	nop                                              ; $66a8: $00
	dec bc                                           ; $66a9: $0b
	ld b, d                                          ; $66aa: $42
	nop                                              ; $66ab: $00
	inc d                                            ; $66ac: $14
	add hl, bc                                       ; $66ad: $09
	inc de                                           ; $66ae: $13
	pop hl                                           ; $66af: $e1
	ld [bc], a                                       ; $66b0: $02
	inc bc                                           ; $66b1: $03
	inc de                                           ; $66b2: $13
	ret nz                                           ; $66b3: $c0

	ld bc, $09a0                                     ; $66b4: $01 $a0 $09
	nop                                              ; $66b7: $00
	jr jr_088_667a                                   ; $66b8: $18 $c0

	ld bc, $01a0                                     ; $66ba: $01 $a0 $01
	nop                                              ; $66bd: $00
	inc h                                            ; $66be: $24
	db $e4                                           ; $66bf: $e4
	nop                                              ; $66c0: $00
	ret c                                            ; $66c1: $d8

	nop                                              ; $66c2: $00
	ld a, [hl+]                                      ; $66c3: $2a
	add hl, bc                                       ; $66c4: $09
	daa                                              ; $66c5: $27
	pop hl                                           ; $66c6: $e1
	ld [bc], a                                       ; $66c7: $02
	inc bc                                           ; $66c8: $03
	rra                                              ; $66c9: $1f
	ret nz                                           ; $66ca: $c0

	ld bc, $09a0                                     ; $66cb: $01 $a0 $09
	nop                                              ; $66ce: $00
	ld l, $c1                                        ; $66cf: $2e $c1
	ld e, e                                          ; $66d1: $5b
	ret nz                                           ; $66d2: $c0

	ld bc, $01a0                                     ; $66d3: $01 $a0 $01
	nop                                              ; $66d6: $00
	dec sp                                           ; $66d7: $3b
	nop                                              ; $66d8: $00
	add b                                            ; $66d9: $80
	ld [bc], a                                       ; $66da: $02
	rst $38                                          ; $66db: $ff
	ret nz                                           ; $66dc: $c0

	inc h                                            ; $66dd: $24
	jp nc, $c0d8                                     ; $66de: $d2 $d8 $c0

	dec h                                            ; $66e1: $25
	pop de                                           ; $66e2: $d1
	ret c                                            ; $66e3: $d8

	ret nz                                           ; $66e4: $c0

	inc hl                                           ; $66e5: $23
	ldh [rAUD1HIGH], a                               ; $66e6: $e0 $14
	ret c                                            ; $66e8: $d8

	push hl                                          ; $66e9: $e5
	ld e, h                                          ; $66ea: $5c
	ld [bc], a                                       ; $66eb: $02
	ld a, $09                                        ; $66ec: $3e $09
	xor c                                            ; $66ee: $a9
	ret nz                                           ; $66ef: $c0

	ld bc, $01a0                                     ; $66f0: $01 $a0 $01
	nop                                              ; $66f3: $00
	ld a, $c0                                        ; $66f4: $3e $c0
	ld bc, $01a0                                     ; $66f6: $01 $a0 $01
	nop                                              ; $66f9: $00
	ld c, b                                          ; $66fa: $48
	pop hl                                           ; $66fb: $e1
	ld [bc], a                                       ; $66fc: $02
	ld [bc], a                                       ; $66fd: $02
	db $10                                           ; $66fe: $10
	add e                                            ; $66ff: $83
	ret nz                                           ; $6700: $c0

	dec de                                           ; $6701: $1b
	ret c                                            ; $6702: $d8

	ld [bc], a                                       ; $6703: $02
	ret nc                                           ; $6704: $d0

	pop de                                           ; $6705: $d1
	ld hl, $01c0                                     ; $6706: $21 $c0 $01
	and b                                            ; $6709: $a0
	add hl, bc                                       ; $670a: $09
	nop                                              ; $670b: $00
	ld c, e                                          ; $670c: $4b
	ret nz                                           ; $670d: $c0

	ld bc, $01a0                                     ; $670e: $01 $a0 $01
	nop                                              ; $6711: $00
	ld c, [hl]                                       ; $6712: $4e
	ret nz                                           ; $6713: $c0

	ld bc, $09a0                                     ; $6714: $01 $a0 $09
	nop                                              ; $6717: $00
	ld d, [hl]                                       ; $6718: $56
	ret nz                                           ; $6719: $c0

	ld bc, $01a0                                     ; $671a: $01 $a0 $01
	nop                                              ; $671d: $00
	ld h, h                                          ; $671e: $64
	ret nz                                           ; $671f: $c0

	ld bc, $09a0                                     ; $6720: $01 $a0 $09
	nop                                              ; $6723: $00
	ld [hl], c                                       ; $6724: $71
	db $e4                                           ; $6725: $e4
	nop                                              ; $6726: $00
	ld [hl], d                                       ; $6727: $72
	ld [bc], a                                       ; $6728: $02
	jp nc, $27d3                                     ; $6729: $d2 $d3 $27

	ret nz                                           ; $672c: $c0

	ld bc, $09a0                                     ; $672d: $01 $a0 $09
	nop                                              ; $6730: $00
	ld a, [hl]                                       ; $6731: $7e
	ret nz                                           ; $6732: $c0

	ld bc, $01a0                                     ; $6733: $01 $a0 $01
	nop                                              ; $6736: $00
	add e                                            ; $6737: $83
	ret nz                                           ; $6738: $c0

	ld bc, $09a0                                     ; $6739: $01 $a0 $09
	nop                                              ; $673c: $00
	add a                                            ; $673d: $87
	ret nz                                           ; $673e: $c0

	ld bc, $01a0                                     ; $673f: $01 $a0 $01
	nop                                              ; $6742: $00
	sub l                                            ; $6743: $95
	ret nz                                           ; $6744: $c0

	ld bc, $09a0                                     ; $6745: $01 $a0 $09
	nop                                              ; $6748: $00
	sbc c                                            ; $6749: $99
	ret nz                                           ; $674a: $c0

	ld bc, $01a0                                     ; $674b: $01 $a0 $01
	nop                                              ; $674e: $00
	sbc [hl]                                         ; $674f: $9e
	db $e4                                           ; $6750: $e4
	nop                                              ; $6751: $00
	ld b, a                                          ; $6752: $47
	ld bc, $1bd4                                     ; $6753: $01 $d4 $1b
	ret nz                                           ; $6756: $c0

	ld bc, $09a0                                     ; $6757: $01 $a0 $09
	nop                                              ; $675a: $00
	and [hl]                                         ; $675b: $a6
	ret nz                                           ; $675c: $c0

	ld bc, $01a0                                     ; $675d: $01 $a0 $01
	nop                                              ; $6760: $00
	ld c, [hl]                                       ; $6761: $4e
	ret nz                                           ; $6762: $c0

	ld bc, $09a0                                     ; $6763: $01 $a0 $09
	nop                                              ; $6766: $00
	xor c                                            ; $6767: $a9
	ret nz                                           ; $6768: $c0

	ld bc, $01a0                                     ; $6769: $01 $a0 $01
	nop                                              ; $676c: $00
	or e                                             ; $676d: $b3
	db $e4                                           ; $676e: $e4
	nop                                              ; $676f: $00
	add hl, hl                                       ; $6770: $29
	ld bc, $24d5                                     ; $6771: $01 $d5 $24
	ret nz                                           ; $6774: $c0

	ld bc, $09a0                                     ; $6775: $01 $a0 $09
	nop                                              ; $6778: $00
	cp a                                             ; $6779: $bf
	ret nz                                           ; $677a: $c0

	ld bc, $01a0                                     ; $677b: $01 $a0 $01
	nop                                              ; $677e: $00
	ld c, [hl]                                       ; $677f: $4e
	ret nz                                           ; $6780: $c0

	ld bc, $09a0                                     ; $6781: $01 $a0 $09
	nop                                              ; $6784: $00
	jp nz, Jump_088_5bc1                             ; $6785: $c2 $c1 $5b

	ret nz                                           ; $6788: $c0

	ld bc, $01a0                                     ; $6789: $01 $a0 $01
	nop                                              ; $678c: $00
	set 0, b                                         ; $678d: $cb $c0
	ld bc, $01a0                                     ; $678f: $01 $a0 $01
	nop                                              ; $6792: $00
	ret nc                                           ; $6793: $d0

	push hl                                          ; $6794: $e5
	ld h, h                                          ; $6795: $64
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	add hl, bc                                       ; $6798: $09
	adc a                                            ; $6799: $8f
	ret nc                                           ; $679a: $d0

	adc e                                            ; $679b: $8b
	inc bc                                           ; $679c: $03
	ld bc, $08b0                                     ; $679d: $01 $b0 $08
	add d                                            ; $67a0: $82
	adc e                                            ; $67a1: $8b
	ld [bc], a                                       ; $67a2: $02
	db $ec                                           ; $67a3: $ec
	ld [bc], a                                       ; $67a4: $02
	or b                                             ; $67a5: $b0
	sub d                                            ; $67a6: $92
	dec b                                            ; $67a7: $05
	pop bc                                           ; $67a8: $c1
	ld e, c                                          ; $67a9: $59
	db $e3                                           ; $67aa: $e3
	nop                                              ; $67ab: $00
	ld [hl], b                                       ; $67ac: $70
	ld [bc], a                                       ; $67ad: $02
	or b                                             ; $67ae: $b0
	sub h                                            ; $67af: $94
	dec b                                            ; $67b0: $05
	pop bc                                           ; $67b1: $c1
	ld e, c                                          ; $67b2: $59
	db $e3                                           ; $67b3: $e3
	nop                                              ; $67b4: $00
	ld [hl], e                                       ; $67b5: $73
	ld [bc], a                                       ; $67b6: $02
	or b                                             ; $67b7: $b0
	sub e                                            ; $67b8: $93
	dec b                                            ; $67b9: $05
	pop bc                                           ; $67ba: $c1
	ld e, c                                          ; $67bb: $59
	db $e3                                           ; $67bc: $e3
	nop                                              ; $67bd: $00
	ld l, l                                          ; $67be: $6d
	ret nz                                           ; $67bf: $c0

	ld bc, $09a0                                     ; $67c0: $01 $a0 $09
	nop                                              ; $67c3: $00
	call nc, $01c0                                   ; $67c4: $d4 $c0 $01
	and b                                            ; $67c7: $a0
	ld bc, $da00                                     ; $67c8: $01 $00 $da
	ret nz                                           ; $67cb: $c0

	ld bc, $09a0                                     ; $67cc: $01 $a0 $09
	nop                                              ; $67cf: $00
	jp hl                                            ; $67d0: $e9


	ret nz                                           ; $67d1: $c0

	ld bc, $01a0                                     ; $67d2: $01 $a0 $01
	nop                                              ; $67d5: $00
	or $e1                                           ; $67d6: $f6 $e1
	ld [bc], a                                       ; $67d8: $02
	inc bc                                           ; $67d9: $03
	inc de                                           ; $67da: $13
	ret nz                                           ; $67db: $c0

	ld bc, $09a0                                     ; $67dc: $01 $a0 $09
	nop                                              ; $67df: $00
	db $fd                                           ; $67e0: $fd
	ret nz                                           ; $67e1: $c0

	ld bc, $01a0                                     ; $67e2: $01 $a0 $01
	ld bc, $e102                                     ; $67e5: $01 $02 $e1
	ld [bc], a                                       ; $67e8: $02
	inc bc                                           ; $67e9: $03
	rra                                              ; $67ea: $1f
	ret nz                                           ; $67eb: $c0

	ld bc, $09a0                                     ; $67ec: $01 $a0 $09
	ld bc, $c007                                     ; $67ef: $01 $07 $c0
	ld bc, $01a0                                     ; $67f2: $01 $a0 $01
	ld bc, $e116                                     ; $67f5: $01 $16 $e1
	ld [bc], a                                       ; $67f8: $02
	inc bc                                           ; $67f9: $03
	rla                                              ; $67fa: $17
	ret nz                                           ; $67fb: $c0

	ld bc, $09a0                                     ; $67fc: $01 $a0 $09
	ld bc, $c01e                                     ; $67ff: $01 $1e $c0
	ld bc, $01a0                                     ; $6802: $01 $a0 $01
	ld bc, $e123                                     ; $6805: $01 $23 $e1
	ld [bc], a                                       ; $6808: $02
	inc bc                                           ; $6809: $03
	inc de                                           ; $680a: $13
	ret nz                                           ; $680b: $c0

	ld bc, $09a0                                     ; $680c: $01 $a0 $09
	ld bc, $c02a                                     ; $680f: $01 $2a $c0
	ld bc, $01a0                                     ; $6812: $01 $a0 $01
	ld bc, $c034                                     ; $6815: $01 $34 $c0
	ld bc, $09a0                                     ; $6818: $01 $a0 $09
	ld bc, $c039                                     ; $681b: $01 $39 $c0
	ld hl, $d8d1                                     ; $681e: $21 $d1 $d8
	ret nz                                           ; $6821: $c0

	ld [hl+], a                                      ; $6822: $22
	pop de                                           ; $6823: $d1
	ret c                                            ; $6824: $d8

	push hl                                          ; $6825: $e5
	ld e, h                                          ; $6826: $5c
	inc bc                                           ; $6827: $03
	ld b, l                                          ; $6828: $45
	add hl, bc                                       ; $6829: $09
	inc hl                                           ; $682a: $23
	pop hl                                           ; $682b: $e1
	ld [bc], a                                       ; $682c: $02
	ld [bc], a                                       ; $682d: $02
	db $10                                           ; $682e: $10
	ret nz                                           ; $682f: $c0

	ld bc, $09a0                                     ; $6830: $01 $a0 $09
	ld bc, $823e                                     ; $6833: $01 $3e $82
	adc e                                            ; $6836: $8b
	ld [bc], a                                       ; $6837: $02
	db $ec                                           ; $6838: $ec
	ld [bc], a                                       ; $6839: $02
	or b                                             ; $683a: $b0
	sub d                                            ; $683b: $92
	inc bc                                           ; $683c: $03
	db $e4                                           ; $683d: $e4
	nop                                              ; $683e: $00
	db $10                                           ; $683f: $10
	ld [bc], a                                       ; $6840: $02
	or b                                             ; $6841: $b0
	sub h                                            ; $6842: $94
	inc bc                                           ; $6843: $03
	db $e4                                           ; $6844: $e4
	nop                                              ; $6845: $00
	jr c, jr_088_684a                                ; $6846: $38 $02

	or b                                             ; $6848: $b0
	sub e                                            ; $6849: $93

jr_088_684a:
	inc bc                                           ; $684a: $03
	db $e4                                           ; $684b: $e4
	nop                                              ; $684c: $00
	ld l, h                                          ; $684d: $6c
	jr z, jr_088_686a                                ; $684e: $28 $1a

	pop bc                                           ; $6850: $c1
	ld e, c                                          ; $6851: $59
	db $e3                                           ; $6852: $e3
	nop                                              ; $6853: $00
	ld [hl], c                                       ; $6854: $71
	pop hl                                           ; $6855: $e1
	ld e, h                                          ; $6856: $5c
	inc b                                            ; $6857: $04
	rrca                                             ; $6858: $0f
	ret nz                                           ; $6859: $c0

	ld bc, $09a0                                     ; $685a: $01 $a0 $09
	ld bc, $c047                                     ; $685d: $01 $47 $c0
	ld bc, $01a0                                     ; $6860: $01 $a0 $01
	ld bc, $c054                                     ; $6863: $01 $54 $c0
	add hl, bc                                       ; $6866: $09
	db $e3                                           ; $6867: $e3
	nop                                              ; $6868: $00
	ld h, e                                          ; $6869: $63

jr_088_686a:
	ld [de], a                                       ; $686a: $12
	ld bc, $0957                                     ; $686b: $01 $57 $09
	inc bc                                           ; $686e: $03
	db $e4                                           ; $686f: $e4
	nop                                              ; $6870: $00
	rst GetHLinHL                                          ; $6871: $cf
	ld bc, $0959                                     ; $6872: $01 $59 $09
	rlca                                             ; $6875: $07
	pop hl                                           ; $6876: $e1
	ld e, h                                          ; $6877: $5c
	inc b                                            ; $6878: $04
	add hl, sp                                       ; $6879: $39
	db $e4                                           ; $687a: $e4
	nop                                              ; $687b: $00
	ld a, b                                          ; $687c: $78
	jr z, jr_088_68a5                                ; $687d: $28 $26

	pop bc                                           ; $687f: $c1
	ld e, c                                          ; $6880: $59
	db $e3                                           ; $6881: $e3
	nop                                              ; $6882: $00
	ld [hl], h                                       ; $6883: $74
	pop hl                                           ; $6884: $e1
	ld e, h                                          ; $6885: $5c
	inc b                                            ; $6886: $04
	rrca                                             ; $6887: $0f
	ret nz                                           ; $6888: $c0

	ld bc, $09a0                                     ; $6889: $01 $a0 $09
	ld bc, $c05b                                     ; $688c: $01 $5b $c0
	ld bc, $01a0                                     ; $688f: $01 $a0 $01
	ld bc, $c062                                     ; $6892: $01 $62 $c0
	ld bc, $09a0                                     ; $6895: $01 $a0 $09
	ld bc, $c072                                     ; $6898: $01 $72 $c0
	ld bc, $01a0                                     ; $689b: $01 $a0 $01
	ld bc, $c07c                                     ; $689e: $01 $7c $c0
	add hl, bc                                       ; $68a1: $09
	db $e3                                           ; $68a2: $e3
	nop                                              ; $68a3: $00
	ld h, e                                          ; $68a4: $63

jr_088_68a5:
	ld [de], a                                       ; $68a5: $12
	ld bc, $0957                                     ; $68a6: $01 $57 $09
	inc bc                                           ; $68a9: $03
	db $e4                                           ; $68aa: $e4
	nop                                              ; $68ab: $00
	sub h                                            ; $68ac: $94
	ld bc, $0959                                     ; $68ad: $01 $59 $09
	rlca                                             ; $68b0: $07
	pop hl                                           ; $68b1: $e1
	ld e, h                                          ; $68b2: $5c
	inc b                                            ; $68b3: $04
	ld b, [hl]                                       ; $68b4: $46
	db $e4                                           ; $68b5: $e4
	nop                                              ; $68b6: $00
	dec a                                            ; $68b7: $3d
	jr z, jr_088_68e0                                ; $68b8: $28 $26

	pop bc                                           ; $68ba: $c1
	ld e, c                                          ; $68bb: $59
	db $e3                                           ; $68bc: $e3
	nop                                              ; $68bd: $00
	ld l, [hl]                                       ; $68be: $6e
	pop hl                                           ; $68bf: $e1
	ld e, h                                          ; $68c0: $5c
	inc b                                            ; $68c1: $04
	rrca                                             ; $68c2: $0f
	ret nz                                           ; $68c3: $c0

	ld bc, $09a0                                     ; $68c4: $01 $a0 $09
	ld bc, $c07e                                     ; $68c7: $01 $7e $c0
	ld bc, $01a0                                     ; $68ca: $01 $a0 $01
	ld bc, $c088                                     ; $68cd: $01 $88 $c0
	ld bc, $09a0                                     ; $68d0: $01 $a0 $09
	ld bc, $c091                                     ; $68d3: $01 $91 $c0
	ld bc, $01a0                                     ; $68d6: $01 $a0 $01
	ld bc, $c097                                     ; $68d9: $01 $97 $c0
	add hl, bc                                       ; $68dc: $09
	db $e3                                           ; $68dd: $e3
	nop                                              ; $68de: $00
	ld h, e                                          ; $68df: $63

jr_088_68e0:
	ld [de], a                                       ; $68e0: $12
	ld bc, $0957                                     ; $68e1: $01 $57 $09
	inc bc                                           ; $68e4: $03
	db $e4                                           ; $68e5: $e4
	nop                                              ; $68e6: $00
	ld e, c                                          ; $68e7: $59
	ld bc, $0959                                     ; $68e8: $01 $59 $09
	rlca                                             ; $68eb: $07
	pop hl                                           ; $68ec: $e1
	ld e, h                                          ; $68ed: $5c
	inc b                                            ; $68ee: $04
	ld d, e                                          ; $68ef: $53
	db $e4                                           ; $68f0: $e4
	nop                                              ; $68f1: $00
	ld [bc], a                                       ; $68f2: $02
	add hl, bc                                       ; $68f3: $09
	ld c, d                                          ; $68f4: $4a
	ret nz                                           ; $68f5: $c0

	ld bc, $01a0                                     ; $68f6: $01 $a0 $01
	ld bc, $e19a                                     ; $68f9: $01 $9a $e1
	ld [bc], a                                       ; $68fc: $02
	ld [bc], a                                       ; $68fd: $02
	db $10                                           ; $68fe: $10
	ret nz                                           ; $68ff: $c0

	ld bc, $09a0                                     ; $6900: $01 $a0 $09
	ld bc, $c0a0                                     ; $6903: $01 $a0 $c0
	ld bc, $01a0                                     ; $6906: $01 $a0 $01
	ld bc, $c0a8                                     ; $6909: $01 $a8 $c0
	ld bc, $09a0                                     ; $690c: $01 $a0 $09
	ld bc, $c0af                                     ; $690f: $01 $af $c0
	ld bc, $01a0                                     ; $6912: $01 $a0 $01
	ld bc, $c0b4                                     ; $6915: $01 $b4 $c0
	ld bc, $09a0                                     ; $6918: $01 $a0 $09
	ld bc, $c0c4                                     ; $691b: $01 $c4 $c0
	inc c                                            ; $691e: $0c
	ldh [$3c], a                                     ; $691f: $e0 $3c
	ret nz                                           ; $6921: $c0

	ld bc, $01a0                                     ; $6922: $01 $a0 $01
	ld bc, $c0d4                                     ; $6925: $01 $d4 $c0
	ld bc, $09a0                                     ; $6928: $01 $a0 $09
	ld bc, $c1d8                                     ; $692b: $01 $d8 $c1
	ld e, e                                          ; $692e: $5b
	ret nz                                           ; $692f: $c0

	ld [hl+], a                                      ; $6930: $22
	push de                                          ; $6931: $d5
	ret c                                            ; $6932: $d8

	nop                                              ; $6933: $00
	add b                                            ; $6934: $80
	inc bc                                           ; $6935: $03
	dec c                                            ; $6936: $0d
	ret nz                                           ; $6937: $c0

	set 0, c                                         ; $6938: $cb $c1
	ld e, e                                          ; $693a: $5b

jr_088_693b:
	push hl                                          ; $693b: $e5
	ld e, h                                          ; $693c: $5c
	inc b                                            ; $693d: $04
	ld h, b                                          ; $693e: $60
	add hl, bc                                       ; $693f: $09
	inc a                                            ; $6940: $3c
	ret nz                                           ; $6941: $c0

	dec bc                                           ; $6942: $0b
	db $e3                                           ; $6943: $e3
	nop                                              ; $6944: $00
	daa                                              ; $6945: $27
	ret nz                                           ; $6946: $c0

	set 0, b                                         ; $6947: $cb $c0
	inc c                                            ; $6949: $0c
	ldh [rAUD3HIGH], a                               ; $694a: $e0 $1e
	pop hl                                           ; $694c: $e1
	ld e, h                                          ; $694d: $5c
	ld b, $0f                                        ; $694e: $06 $0f
	ret nz                                           ; $6950: $c0

	ld de, $00e3                                     ; $6951: $11 $e3 $00
	ld l, e                                          ; $6954: $6b
	pop hl                                           ; $6955: $e1
	ld [bc], a                                       ; $6956: $02
	ld [bc], a                                       ; $6957: $02
	jr jr_088_693b                                   ; $6958: $18 $e1

	ld e, h                                          ; $695a: $5c
	inc b                                            ; $695b: $04
	ld [hl-], a                                      ; $695c: $32
	ret nz                                           ; $695d: $c0

	ld bc, $09a0                                     ; $695e: $01 $a0 $09
	ld bc, $c0e5                                     ; $6961: $01 $e5 $c0
	ld bc, $01a0                                     ; $6964: $01 $a0 $01
	ld bc, $c0f1                                     ; $6967: $01 $f1 $c0
	ld bc, $09a0                                     ; $696a: $01 $a0 $09
	ld bc, $c0f6                                     ; $696d: $01 $f6 $c0
	ld bc, $01a0                                     ; $6970: $01 $a0 $01
	ld bc, $c0fd                                     ; $6973: $01 $fd $c0
	set 0, c                                         ; $6976: $cb $c1
	ld e, e                                          ; $6978: $5b
	push hl                                          ; $6979: $e5
	ld e, h                                          ; $697a: $5c
	inc b                                            ; $697b: $04
	ld h, b                                          ; $697c: $60
	and e                                            ; $697d: $a3
	ld [$2e28], sp                                   ; $697e: $08 $28 $2e
	ret nz                                           ; $6981: $c0

	ld bc, $0aa0                                     ; $6982: $01 $a0 $0a
	nop                                              ; $6985: $00
	ld bc, $02e1                                     ; $6986: $01 $e1 $02
	ld [bc], a                                       ; $6989: $02
	ld [hl], b                                       ; $698a: $70
	ret nz                                           ; $698b: $c0

	ld bc, $01a0                                     ; $698c: $01 $a0 $01
	nop                                              ; $698f: $00
	inc b                                            ; $6990: $04
	ret nz                                           ; $6991: $c0

	ld bc, $0aa0                                     ; $6992: $01 $a0 $0a
	nop                                              ; $6995: $00
	dec bc                                           ; $6996: $0b
	ret nz                                           ; $6997: $c0

	ld bc, $01a0                                     ; $6998: $01 $a0 $01
	nop                                              ; $699b: $00
	ld de, $01c0                                     ; $699c: $11 $c0 $01
	and b                                            ; $699f: $a0
	ld a, [bc]                                       ; $69a0: $0a
	nop                                              ; $69a1: $00
	ld d, $c0                                        ; $69a2: $16 $c0
	ld bc, $01a0                                     ; $69a4: $01 $a0 $01
	nop                                              ; $69a7: $00
	dec e                                            ; $69a8: $1d
	ret nz                                           ; $69a9: $c0

	ld bc, $0aa0                                     ; $69aa: $01 $a0 $0a
	nop                                              ; $69ad: $00
	dec h                                            ; $69ae: $25
	ld d, b                                          ; $69af: $50
	nop                                              ; $69b0: $00
	inc l                                            ; $69b1: $2c
	add hl, bc                                       ; $69b2: $09
	ld hl, $02e1                                     ; $69b3: $21 $e1 $02
	inc bc                                           ; $69b6: $03
	inc de                                           ; $69b7: $13
	ret nz                                           ; $69b8: $c0

	ld bc, $0aa0                                     ; $69b9: $01 $a0 $0a
	nop                                              ; $69bc: $00
	ld [hl-], a                                      ; $69bd: $32
	pop bc                                           ; $69be: $c1
	ld e, e                                          ; $69bf: $5b
	pop hl                                           ; $69c0: $e1
	ld [bc], a                                       ; $69c1: $02
	rlca                                             ; $69c2: $07
	cp a                                             ; $69c3: $bf
	pop bc                                           ; $69c4: $c1
	ld e, h                                          ; $69c5: $5c
	ret nz                                           ; $69c6: $c0

	ld bc, $0aa0                                     ; $69c7: $01 $a0 $0a
	nop                                              ; $69ca: $00
	ld a, $c0                                        ; $69cb: $3e $c0
	ld bc, $01a0                                     ; $69cd: $01 $a0 $01
	nop                                              ; $69d0: $00
	ld b, h                                          ; $69d1: $44
	db $e4                                           ; $69d2: $e4
	nop                                              ; $69d3: $00
	db $e4                                           ; $69d4: $e4
	nop                                              ; $69d5: $00
	ld c, b                                          ; $69d6: $48
	add hl, bc                                       ; $69d7: $09
	daa                                              ; $69d8: $27
	pop hl                                           ; $69d9: $e1
	ld [bc], a                                       ; $69da: $02
	inc bc                                           ; $69db: $03
	dec de                                           ; $69dc: $1b
	ret nz                                           ; $69dd: $c0

	ld bc, $0aa0                                     ; $69de: $01 $a0 $0a
	nop                                              ; $69e1: $00
	ld c, [hl]                                       ; $69e2: $4e
	pop bc                                           ; $69e3: $c1
	ld e, e                                          ; $69e4: $5b
	ret nz                                           ; $69e5: $c0

	ld bc, $01a0                                     ; $69e6: $01 $a0 $01
	nop                                              ; $69e9: $00
	ld e, c                                          ; $69ea: $59
	nop                                              ; $69eb: $00
	add b                                            ; $69ec: $80
	inc bc                                           ; $69ed: $03
	nop                                              ; $69ee: $00
	ret nz                                           ; $69ef: $c0

	inc h                                            ; $69f0: $24
	jp nc, $c0dd                                     ; $69f1: $d2 $dd $c0

	dec h                                            ; $69f4: $25
	pop de                                           ; $69f5: $d1
	db $dd                                           ; $69f6: $dd
	ret nz                                           ; $69f7: $c0

	inc hl                                           ; $69f8: $23
	ldh [rAUD1HIGH], a                               ; $69f9: $e0 $14
	db $dd                                           ; $69fb: $dd
	push hl                                          ; $69fc: $e5
	ld e, h                                          ; $69fd: $5c
	ld [bc], a                                       ; $69fe: $02
	ld a, $09                                        ; $69ff: $3e $09
	or l                                             ; $6a01: $b5
	ret nz                                           ; $6a02: $c0

	ld bc, $01a0                                     ; $6a03: $01 $a0 $01
	nop                                              ; $6a06: $00
	ld e, l                                          ; $6a07: $5d
	ret nz                                           ; $6a08: $c0

	ld bc, $01a0                                     ; $6a09: $01 $a0 $01
	nop                                              ; $6a0c: $00
	ld h, a                                          ; $6a0d: $67
	pop hl                                           ; $6a0e: $e1
	ld [bc], a                                       ; $6a0f: $02
	ld [bc], a                                       ; $6a10: $02
	ld [hl], b                                       ; $6a11: $70
	add e                                            ; $6a12: $83
	ret nz                                           ; $6a13: $c0

	dec de                                           ; $6a14: $1b
	db $dd                                           ; $6a15: $dd
	ld [bc], a                                       ; $6a16: $02
	ret nc                                           ; $6a17: $d0

	pop de                                           ; $6a18: $d1
	inc sp                                           ; $6a19: $33
	ret nz                                           ; $6a1a: $c0

	ld bc, $0aa0                                     ; $6a1b: $01 $a0 $0a
	nop                                              ; $6a1e: $00
	ld l, c                                          ; $6a1f: $69
	ret nz                                           ; $6a20: $c0

	ld bc, $01a0                                     ; $6a21: $01 $a0 $01
	nop                                              ; $6a24: $00
	ld l, [hl]                                       ; $6a25: $6e
	ret nz                                           ; $6a26: $c0

	ld bc, $0aa0                                     ; $6a27: $01 $a0 $0a
	nop                                              ; $6a2a: $00
	halt                                             ; $6a2b: $76
	ret nz                                           ; $6a2c: $c0

	ld bc, $01a0                                     ; $6a2d: $01 $a0 $01
	nop                                              ; $6a30: $00
	ld a, d                                          ; $6a31: $7a
	ret nz                                           ; $6a32: $c0

	ld bc, $0aa0                                     ; $6a33: $01 $a0 $0a
	nop                                              ; $6a36: $00
	ld a, a                                          ; $6a37: $7f
	pop bc                                           ; $6a38: $c1
	ld e, e                                          ; $6a39: $5b
	pop hl                                           ; $6a3a: $e1
	ld [bc], a                                       ; $6a3b: $02
	rlca                                             ; $6a3c: $07
	cp a                                             ; $6a3d: $bf
	ret nz                                           ; $6a3e: $c0

	inc c                                            ; $6a3f: $0c
	ldh [$3c], a                                     ; $6a40: $e0 $3c
	pop bc                                           ; $6a42: $c1
	ld e, h                                          ; $6a43: $5c
	ret nz                                           ; $6a44: $c0

	ld bc, $0aa0                                     ; $6a45: $01 $a0 $0a
	nop                                              ; $6a48: $00
	ld a, $e4                                        ; $6a49: $3e $e4
	nop                                              ; $6a4b: $00
	ld l, h                                          ; $6a4c: $6c
	ld [bc], a                                       ; $6a4d: $02
	jp nc, $1bd3                                     ; $6a4e: $d2 $d3 $1b

	ret nz                                           ; $6a51: $c0

	ld bc, $0aa0                                     ; $6a52: $01 $a0 $0a
	nop                                              ; $6a55: $00
	adc e                                            ; $6a56: $8b
	ret nz                                           ; $6a57: $c0

	ld bc, $01a0                                     ; $6a58: $01 $a0 $01
	nop                                              ; $6a5b: $00
	ld l, [hl]                                       ; $6a5c: $6e
	ret nz                                           ; $6a5d: $c0

	ld bc, $0aa0                                     ; $6a5e: $01 $a0 $0a
	nop                                              ; $6a61: $00
	adc a                                            ; $6a62: $8f
	ret nz                                           ; $6a63: $c0

	ld bc, $01a0                                     ; $6a64: $01 $a0 $01
	nop                                              ; $6a67: $00
	sub e                                            ; $6a68: $93
	db $e4                                           ; $6a69: $e4
	nop                                              ; $6a6a: $00
	ld c, l                                          ; $6a6b: $4d
	ld bc, $1bd4                                     ; $6a6c: $01 $d4 $1b
	ret nz                                           ; $6a6f: $c0

	ld bc, $0aa0                                     ; $6a70: $01 $a0 $0a
	nop                                              ; $6a73: $00
	sub l                                            ; $6a74: $95
	ret nz                                           ; $6a75: $c0

	ld bc, $01a0                                     ; $6a76: $01 $a0 $01
	nop                                              ; $6a79: $00
	ld l, [hl]                                       ; $6a7a: $6e
	ret nz                                           ; $6a7b: $c0

	ld bc, $0aa0                                     ; $6a7c: $01 $a0 $0a
	nop                                              ; $6a7f: $00
	sbc c                                            ; $6a80: $99
	ret nz                                           ; $6a81: $c0

	ld bc, $01a0                                     ; $6a82: $01 $a0 $01
	nop                                              ; $6a85: $00
	sbc [hl]                                         ; $6a86: $9e
	db $e4                                           ; $6a87: $e4
	nop                                              ; $6a88: $00
	cpl                                              ; $6a89: $2f
	ld bc, $2ad5                                     ; $6a8a: $01 $d5 $2a
	ret nz                                           ; $6a8d: $c0

	ld bc, $0aa0                                     ; $6a8e: $01 $a0 $0a
	nop                                              ; $6a91: $00
	and e                                            ; $6a92: $a3
	ret nz                                           ; $6a93: $c0

	ld bc, $01a0                                     ; $6a94: $01 $a0 $01
	nop                                              ; $6a97: $00
	ld l, [hl]                                       ; $6a98: $6e
	ret nz                                           ; $6a99: $c0

	ld bc, $0aa0                                     ; $6a9a: $01 $a0 $0a
	nop                                              ; $6a9d: $00
	and h                                            ; $6a9e: $a4
	ret nz                                           ; $6a9f: $c0

	ld bc, $01a0                                     ; $6aa0: $01 $a0 $01
	nop                                              ; $6aa3: $00
	xor d                                            ; $6aa4: $aa
	ret nz                                           ; $6aa5: $c0

	ld bc, $0aa0                                     ; $6aa6: $01 $a0 $0a
	nop                                              ; $6aa9: $00
	xor h                                            ; $6aaa: $ac
	pop bc                                           ; $6aab: $c1
	ld e, e                                          ; $6aac: $5b
	ret nz                                           ; $6aad: $c0

	ld bc, $01a0                                     ; $6aae: $01 $a0 $01
	nop                                              ; $6ab1: $00
	xor a                                            ; $6ab2: $af
	push hl                                          ; $6ab3: $e5
	ld h, h                                          ; $6ab4: $64
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	add hl, bc                                       ; $6ab7: $09
	rra                                              ; $6ab8: $1f
	ret nc                                           ; $6ab9: $d0

	adc e                                            ; $6aba: $8b
	inc bc                                           ; $6abb: $03
	ld bc, $0ab0                                     ; $6abc: $01 $b0 $0a
	add d                                            ; $6abf: $82
	adc e                                            ; $6ac0: $8b
	ld [bc], a                                       ; $6ac1: $02
	db $ec                                           ; $6ac2: $ec
	ld [bc], a                                       ; $6ac3: $02
	or b                                             ; $6ac4: $b0
	sub d                                            ; $6ac5: $92
	inc bc                                           ; $6ac6: $03
	db $e4                                           ; $6ac7: $e4
	nop                                              ; $6ac8: $00
	db $10                                           ; $6ac9: $10
	ld [bc], a                                       ; $6aca: $02
	or b                                             ; $6acb: $b0
	sub h                                            ; $6acc: $94
	inc bc                                           ; $6acd: $03
	db $e4                                           ; $6ace: $e4
	nop                                              ; $6acf: $00
	dec e                                            ; $6ad0: $1d
	ld [bc], a                                       ; $6ad1: $02
	or b                                             ; $6ad2: $b0
	sub e                                            ; $6ad3: $93
	inc bc                                           ; $6ad4: $03
	db $e4                                           ; $6ad5: $e4
	nop                                              ; $6ad6: $00
	ld a, [hl+]                                      ; $6ad7: $2a
	add hl, bc                                       ; $6ad8: $09
	ld [de], a                                       ; $6ad9: $12
	pop bc                                           ; $6ada: $c1
	ld e, c                                          ; $6adb: $59
	db $e3                                           ; $6adc: $e3
	nop                                              ; $6add: $00
	ld [hl], b                                       ; $6ade: $70
	pop hl                                           ; $6adf: $e1
	ld e, h                                          ; $6ae0: $5c
	inc bc                                           ; $6ae1: $03
	ld [hl+], a                                      ; $6ae2: $22
	ret nz                                           ; $6ae3: $c0

	ld bc, $0aa0                                     ; $6ae4: $01 $a0 $0a
	nop                                              ; $6ae7: $00
	or e                                             ; $6ae8: $b3
	db $e4                                           ; $6ae9: $e4
	nop                                              ; $6aea: $00
	ld a, [hl+]                                      ; $6aeb: $2a
	add hl, bc                                       ; $6aec: $09
	ld [de], a                                       ; $6aed: $12
	pop bc                                           ; $6aee: $c1
	ld e, c                                          ; $6aef: $59
	db $e3                                           ; $6af0: $e3
	nop                                              ; $6af1: $00
	ld [hl], e                                       ; $6af2: $73
	pop hl                                           ; $6af3: $e1
	ld e, h                                          ; $6af4: $5c
	inc bc                                           ; $6af5: $03
	ld [hl+], a                                      ; $6af6: $22
	ret nz                                           ; $6af7: $c0

	ld bc, $0aa0                                     ; $6af8: $01 $a0 $0a
	nop                                              ; $6afb: $00
	jp $00e4                                         ; $6afc: $c3 $e4 $00


	ld d, $09                                        ; $6aff: $16 $09
	ld [de], a                                       ; $6b01: $12
	pop bc                                           ; $6b02: $c1
	ld e, c                                          ; $6b03: $59
	db $e3                                           ; $6b04: $e3
	nop                                              ; $6b05: $00
	ld l, l                                          ; $6b06: $6d
	pop hl                                           ; $6b07: $e1
	ld e, h                                          ; $6b08: $5c
	inc bc                                           ; $6b09: $03
	ld [hl+], a                                      ; $6b0a: $22
	ret nz                                           ; $6b0b: $c0

	ld bc, $0aa0                                     ; $6b0c: $01 $a0 $0a
	nop                                              ; $6b0f: $00
	ret z                                            ; $6b10: $c8

	db $e4                                           ; $6b11: $e4
	nop                                              ; $6b12: $00
	ld [bc], a                                       ; $6b13: $02
	add hl, bc                                       ; $6b14: $09
	inc h                                            ; $6b15: $24
	ret nz                                           ; $6b16: $c0

	ld bc, $01a0                                     ; $6b17: $01 $a0 $01
	nop                                              ; $6b1a: $00
	db $d3                                           ; $6b1b: $d3
	ret nz                                           ; $6b1c: $c0

	ld bc, $0aa0                                     ; $6b1d: $01 $a0 $0a
	nop                                              ; $6b20: $00
	ret c                                            ; $6b21: $d8

	ret nz                                           ; $6b22: $c0

	ld bc, $01a0                                     ; $6b23: $01 $a0 $01
	nop                                              ; $6b26: $00
	db $e4                                           ; $6b27: $e4
	ret nz                                           ; $6b28: $c0

	ld bc, $0aa0                                     ; $6b29: $01 $a0 $0a
	nop                                              ; $6b2c: $00
	jp hl                                            ; $6b2d: $e9


	ret nz                                           ; $6b2e: $c0

	ld hl, $ddd1                                     ; $6b2f: $21 $d1 $dd
	ret nz                                           ; $6b32: $c0

	ld [hl+], a                                      ; $6b33: $22
	pop de                                           ; $6b34: $d1
	db $dd                                           ; $6b35: $dd
	push hl                                          ; $6b36: $e5
	ld e, h                                          ; $6b37: $5c
	inc bc                                           ; $6b38: $03
	ld b, l                                          ; $6b39: $45
	add hl, bc                                       ; $6b3a: $09
	inc hl                                           ; $6b3b: $23
	pop hl                                           ; $6b3c: $e1
	ld [bc], a                                       ; $6b3d: $02
	ld [bc], a                                       ; $6b3e: $02
	ld [hl], b                                       ; $6b3f: $70
	ret nz                                           ; $6b40: $c0

	ld bc, $0aa0                                     ; $6b41: $01 $a0 $0a
	nop                                              ; $6b44: $00
	ldh a, [c]                                       ; $6b45: $f2
	add d                                            ; $6b46: $82
	adc e                                            ; $6b47: $8b
	ld [bc], a                                       ; $6b48: $02
	db $ec                                           ; $6b49: $ec
	ld [bc], a                                       ; $6b4a: $02
	or b                                             ; $6b4b: $b0
	sub d                                            ; $6b4c: $92
	inc bc                                           ; $6b4d: $03
	db $e4                                           ; $6b4e: $e4
	nop                                              ; $6b4f: $00
	db $10                                           ; $6b50: $10
	ld [bc], a                                       ; $6b51: $02
	or b                                             ; $6b52: $b0
	sub h                                            ; $6b53: $94
	inc bc                                           ; $6b54: $03
	db $e4                                           ; $6b55: $e4
	nop                                              ; $6b56: $00
	ld a, $02                                        ; $6b57: $3e $02
	or b                                             ; $6b59: $b0
	sub e                                            ; $6b5a: $93
	inc bc                                           ; $6b5b: $03
	db $e4                                           ; $6b5c: $e4
	nop                                              ; $6b5d: $00
	adc b                                            ; $6b5e: $88
	jr z, jr_088_6b7b                                ; $6b5f: $28 $1a

	pop bc                                           ; $6b61: $c1
	ld e, c                                          ; $6b62: $59
	db $e3                                           ; $6b63: $e3
	nop                                              ; $6b64: $00
	ld [hl], c                                       ; $6b65: $71
	pop hl                                           ; $6b66: $e1
	ld e, h                                          ; $6b67: $5c
	inc b                                            ; $6b68: $04
	rrca                                             ; $6b69: $0f
	ret nz                                           ; $6b6a: $c0

	ld bc, $0aa0                                     ; $6b6b: $01 $a0 $0a
	nop                                              ; $6b6e: $00
	db $fd                                           ; $6b6f: $fd
	ret nz                                           ; $6b70: $c0

	ld bc, $01a0                                     ; $6b71: $01 $a0 $01
	ld bc, $c008                                     ; $6b74: $01 $08 $c0
	add hl, bc                                       ; $6b77: $09
	db $e3                                           ; $6b78: $e3
	nop                                              ; $6b79: $00
	ld h, e                                          ; $6b7a: $63

jr_088_6b7b:
	jr jr_088_6b7e                                   ; $6b7b: $18 $01

	dec bc                                           ; $6b7d: $0b

jr_088_6b7e:
	add hl, bc                                       ; $6b7e: $09
	ld b, $e0                                        ; $6b7f: $06 $e0
	nop                                              ; $6b81: $00
	and e                                            ; $6b82: $a3
	db $e4                                           ; $6b83: $e4
	ld bc, $010e                                     ; $6b84: $01 $0e $01
	dec c                                            ; $6b87: $0d
	add hl, bc                                       ; $6b88: $09
	ld a, [bc]                                       ; $6b89: $0a
	ldh [rP1], a                                     ; $6b8a: $e0 $00
	or b                                             ; $6b8c: $b0
	pop hl                                           ; $6b8d: $e1
	ld e, h                                          ; $6b8e: $5c
	inc b                                            ; $6b8f: $04
	add hl, sp                                       ; $6b90: $39
	db $e4                                           ; $6b91: $e4
	nop                                              ; $6b92: $00
	cp d                                             ; $6b93: $ba
	jr z, jr_088_6bcc                                ; $6b94: $28 $36

	pop bc                                           ; $6b96: $c1
	ld e, c                                          ; $6b97: $59
	db $e3                                           ; $6b98: $e3
	nop                                              ; $6b99: $00
	ld [hl], h                                       ; $6b9a: $74
	pop hl                                           ; $6b9b: $e1
	ld e, h                                          ; $6b9c: $5c
	inc b                                            ; $6b9d: $04
	rrca                                             ; $6b9e: $0f
	ret nz                                           ; $6b9f: $c0

	ld bc, $0aa0                                     ; $6ba0: $01 $a0 $0a
	ld bc, $c00f                                     ; $6ba3: $01 $0f $c0
	ld bc, $01a0                                     ; $6ba6: $01 $a0 $01
	ld bc, $c016                                     ; $6ba9: $01 $16 $c0
	ld bc, $0aa0                                     ; $6bac: $01 $a0 $0a
	ld bc, $c01b                                     ; $6baf: $01 $1b $c0
	ld bc, $01a0                                     ; $6bb2: $01 $a0 $01
	ld bc, $e11f                                     ; $6bb5: $01 $1f $e1
	ld [bc], a                                       ; $6bb8: $02
	inc bc                                           ; $6bb9: $03
	inc de                                           ; $6bba: $13
	ret nz                                           ; $6bbb: $c0

	ld bc, $0aa0                                     ; $6bbc: $01 $a0 $0a
	ld bc, $c026                                     ; $6bbf: $01 $26 $c0
	ld bc, $0aa0                                     ; $6bc2: $01 $a0 $0a
	ld bc, $c02b                                     ; $6bc5: $01 $2b $c0
	add hl, bc                                       ; $6bc8: $09
	db $e3                                           ; $6bc9: $e3
	nop                                              ; $6bca: $00
	ld h, e                                          ; $6bcb: $63

jr_088_6bcc:
	jr jr_088_6bcf                                   ; $6bcc: $18 $01

	dec bc                                           ; $6bce: $0b

jr_088_6bcf:
	add hl, bc                                       ; $6bcf: $09
	ld b, $e0                                        ; $6bd0: $06 $e0
	nop                                              ; $6bd2: $00
	ld d, d                                          ; $6bd3: $52
	db $e4                                           ; $6bd4: $e4
	nop                                              ; $6bd5: $00
	cp l                                             ; $6bd6: $bd
	ld bc, $090d                                     ; $6bd7: $01 $0d $09
	ld a, [bc]                                       ; $6bda: $0a
	ldh [rP1], a                                     ; $6bdb: $e0 $00
	ld e, a                                          ; $6bdd: $5f
	pop hl                                           ; $6bde: $e1
	ld e, h                                          ; $6bdf: $5c
	inc b                                            ; $6be0: $04
	ld b, [hl]                                       ; $6be1: $46
	db $e4                                           ; $6be2: $e4
	nop                                              ; $6be3: $00
	ld l, c                                          ; $6be4: $69
	jr z, jr_088_6c0b                                ; $6be5: $28 $24

	pop bc                                           ; $6be7: $c1
	ld e, c                                          ; $6be8: $59
	db $e3                                           ; $6be9: $e3
	nop                                              ; $6bea: $00
	ld l, [hl]                                       ; $6beb: $6e
	pop hl                                           ; $6bec: $e1
	ld e, h                                          ; $6bed: $5c
	inc b                                            ; $6bee: $04
	rrca                                             ; $6bef: $0f
	ret nz                                           ; $6bf0: $c0

	ld bc, $0aa0                                     ; $6bf1: $01 $a0 $0a
	ld bc, $c031                                     ; $6bf4: $01 $31 $c0
	ld bc, $01a0                                     ; $6bf7: $01 $a0 $01
	ld bc, $e13e                                     ; $6bfa: $01 $3e $e1
	ld [bc], a                                       ; $6bfd: $02
	inc bc                                           ; $6bfe: $03

jr_088_6bff:
	rla                                              ; $6bff: $17
	ret nz                                           ; $6c00: $c0

	ld bc, $0aa0                                     ; $6c01: $01 $a0 $0a
	ld bc, $c041                                     ; $6c04: $01 $41 $c0
	add hl, bc                                       ; $6c07: $09
	db $e3                                           ; $6c08: $e3
	nop                                              ; $6c09: $00
	ld h, e                                          ; $6c0a: $63

jr_088_6c0b:
	jr jr_088_6c0e                                   ; $6c0b: $18 $01

	dec bc                                           ; $6c0d: $0b

jr_088_6c0e:
	add hl, bc                                       ; $6c0e: $09
	ld b, $e0                                        ; $6c0f: $06 $e0
	nop                                              ; $6c11: $00
	inc de                                           ; $6c12: $13
	db $e4                                           ; $6c13: $e4
	nop                                              ; $6c14: $00
	ld a, [hl]                                       ; $6c15: $7e
	ld bc, $090d                                     ; $6c16: $01 $0d $09
	ld a, [bc]                                       ; $6c19: $0a
	ldh [rP1], a                                     ; $6c1a: $e0 $00
	jr nz, jr_088_6bff                               ; $6c1c: $20 $e1

	ld e, h                                          ; $6c1e: $5c
	inc b                                            ; $6c1f: $04
	ld d, e                                          ; $6c20: $53
	db $e4                                           ; $6c21: $e4
	nop                                              ; $6c22: $00
	ld a, [hl+]                                      ; $6c23: $2a
	ld d, $e1                                        ; $6c24: $16 $e1
	ld [bc], a                                       ; $6c26: $02
	inc bc                                           ; $6c27: $03
	dec de                                           ; $6c28: $1b
	ret nz                                           ; $6c29: $c0

	ld bc, $0aa0                                     ; $6c2a: $01 $a0 $0a
	ld bc, $c04d                                     ; $6c2d: $01 $4d $c0
	ld bc, $01a0                                     ; $6c30: $01 $a0 $01
	ld bc, $c054                                     ; $6c33: $01 $54 $c0
	ld bc, $0aa0                                     ; $6c36: $01 $a0 $0a
	ld bc, $1062                                     ; $6c39: $01 $62 $10
	pop hl                                           ; $6c3c: $e1
	ld [bc], a                                       ; $6c3d: $02
	inc bc                                           ; $6c3e: $03
	dec de                                           ; $6c3f: $1b
	ret nz                                           ; $6c40: $c0

	ld bc, $0aa0                                     ; $6c41: $01 $a0 $0a
	ld bc, $c06b                                     ; $6c44: $01 $6b $c0
	ld bc, $01a0                                     ; $6c47: $01 $a0 $01
	ld bc, $096f                                     ; $6c4a: $01 $6f $09
	ld b, h                                          ; $6c4d: $44
	ret nz                                           ; $6c4e: $c0

	ld bc, $01a0                                     ; $6c4f: $01 $a0 $01
	ld bc, $e17c                                     ; $6c52: $01 $7c $e1
	ld [bc], a                                       ; $6c55: $02
	ld [bc], a                                       ; $6c56: $02
	ld [hl], b                                       ; $6c57: $70
	ret nz                                           ; $6c58: $c0

	ld bc, $0aa0                                     ; $6c59: $01 $a0 $0a
	ld bc, $c082                                     ; $6c5c: $01 $82 $c0
	ld bc, $01a0                                     ; $6c5f: $01 $a0 $01
	ld bc, $c089                                     ; $6c62: $01 $89 $c0
	ld bc, $0aa0                                     ; $6c65: $01 $a0 $0a
	ld bc, $c091                                     ; $6c68: $01 $91 $c0
	ld bc, $01a0                                     ; $6c6b: $01 $a0 $01
	ld bc, $c09d                                     ; $6c6e: $01 $9d $c0
	ld bc, $0aa0                                     ; $6c71: $01 $a0 $0a
	ld bc, $c0a7                                     ; $6c74: $01 $a7 $c0
	ld bc, $01a0                                     ; $6c77: $01 $a0 $01
	ld bc, $c0a9                                     ; $6c7a: $01 $a9 $c0
	ld bc, $0aa0                                     ; $6c7d: $01 $a0 $0a
	ld bc, $c0af                                     ; $6c80: $01 $af $c0
	ld [hl+], a                                      ; $6c83: $22
	push de                                          ; $6c84: $d5
	db $dd                                           ; $6c85: $dd
	nop                                              ; $6c86: $00
	add b                                            ; $6c87: $80
	inc bc                                           ; $6c88: $03
	dec c                                            ; $6c89: $0d
	ret nz                                           ; $6c8a: $c0

	set 0, c                                         ; $6c8b: $cb $c1
	ld e, e                                          ; $6c8d: $5b
	push hl                                          ; $6c8e: $e5
	ld e, h                                          ; $6c8f: $5c
	inc b                                            ; $6c90: $04
	ld h, b                                          ; $6c91: $60
	add hl, bc                                       ; $6c92: $09
	ld c, h                                          ; $6c93: $4c
	ret nz                                           ; $6c94: $c0

	dec bc                                           ; $6c95: $0b
	db $e3                                           ; $6c96: $e3
	nop                                              ; $6c97: $00
	daa                                              ; $6c98: $27
	ret nz                                           ; $6c99: $c0

	set 0, b                                         ; $6c9a: $cb $c0
	inc c                                            ; $6c9c: $0c
	ldh [rAUD3HIGH], a                               ; $6c9d: $e0 $1e
	pop hl                                           ; $6c9f: $e1
	ld e, h                                          ; $6ca0: $5c
	ld b, $0f                                        ; $6ca1: $06 $0f
	ret nz                                           ; $6ca3: $c0

	ld de, $00e3                                     ; $6ca4: $11 $e3 $00
	ld l, e                                          ; $6ca7: $6b
	pop hl                                           ; $6ca8: $e1
	ld [bc], a                                       ; $6ca9: $02
	ld [bc], a                                       ; $6caa: $02
	ld a, b                                          ; $6cab: $78
	pop hl                                           ; $6cac: $e1
	ld e, h                                          ; $6cad: $5c
	inc b                                            ; $6cae: $04
	ld [hl-], a                                      ; $6caf: $32
	ret nz                                           ; $6cb0: $c0

	ld bc, $01a0                                     ; $6cb1: $01 $a0 $01
	ld bc, $c0b1                                     ; $6cb4: $01 $b1 $c0
	ld bc, $0aa0                                     ; $6cb7: $01 $a0 $0a
	ld bc, $c0b9                                     ; $6cba: $01 $b9 $c0
	ld bc, $01a0                                     ; $6cbd: $01 $a0 $01
	ld bc, $c0c3                                     ; $6cc0: $01 $c3 $c0
	ld bc, $0aa0                                     ; $6cc3: $01 $a0 $0a
	ld bc, $c0c6                                     ; $6cc6: $01 $c6 $c0
	ld bc, $01a0                                     ; $6cc9: $01 $a0 $01
	ld bc, $c0d2                                     ; $6ccc: $01 $d2 $c0
	ld bc, $0aa0                                     ; $6ccf: $01 $a0 $0a
	ld bc, $c0db                                     ; $6cd2: $01 $db $c0
	inc hl                                           ; $6cd5: $23
	push de                                          ; $6cd6: $d5
	db $dd                                           ; $6cd7: $dd
	ret nz                                           ; $6cd8: $c0

	set 0, c                                         ; $6cd9: $cb $c1
	ld e, e                                          ; $6cdb: $5b
	push hl                                          ; $6cdc: $e5
	ld e, h                                          ; $6cdd: $5c
	inc b                                            ; $6cde: $04
	ld h, b                                          ; $6cdf: $60
	and e                                            ; $6ce0: $a3
	ld [$3709], sp                                   ; $6ce1: $08 $09 $37
	ret nz                                           ; $6ce4: $c0

	ld bc, $07a0                                     ; $6ce5: $01 $a0 $07
	nop                                              ; $6ce8: $00
	ld bc, $02e1                                     ; $6ce9: $01 $e1 $02
	ld [bc], a                                       ; $6cec: $02
	call z, $01c0                                    ; $6ced: $cc $c0 $01
	and b                                            ; $6cf0: $a0
	ld bc, $0500                                     ; $6cf1: $01 $00 $05
	ret nz                                           ; $6cf4: $c0

	ld bc, $07a0                                     ; $6cf5: $01 $a0 $07
	nop                                              ; $6cf8: $00
	rrca                                             ; $6cf9: $0f
	ret nz                                           ; $6cfa: $c0

	ld bc, $01a0                                     ; $6cfb: $01 $a0 $01
	nop                                              ; $6cfe: $00
	add hl, de                                       ; $6cff: $19

jr_088_6d00:
	ret nz                                           ; $6d00: $c0

	ld bc, $07a0                                     ; $6d01: $01 $a0 $07
	nop                                              ; $6d04: $00
	ld e, $c0                                        ; $6d05: $1e $c0
	ld bc, $01a0                                     ; $6d07: $01 $a0 $01
	nop                                              ; $6d0a: $00
	inc l                                            ; $6d0b: $2c
	ret nz                                           ; $6d0c: $c0

	ld bc, $01a0                                     ; $6d0d: $01 $a0 $01
	nop                                              ; $6d10: $00
	inc a                                            ; $6d11: $3c
	ret nz                                           ; $6d12: $c0

	ld bc, $07a0                                     ; $6d13: $01 $a0 $07
	nop                                              ; $6d16: $00
	ld b, b                                          ; $6d17: $40
	db $e4                                           ; $6d18: $e4
	nop                                              ; $6d19: $00
	ld [bc], a                                       ; $6d1a: $02
	add hl, bc                                       ; $6d1b: $09
	rra                                              ; $6d1c: $1f
	ret nc                                           ; $6d1d: $d0

	adc e                                            ; $6d1e: $8b
	inc bc                                           ; $6d1f: $03
	ld bc, $91b0                                     ; $6d20: $01 $b0 $91
	add d                                            ; $6d23: $82
	adc e                                            ; $6d24: $8b
	ld [bc], a                                       ; $6d25: $02
	db $ec                                           ; $6d26: $ec
	ld [bc], a                                       ; $6d27: $02
	or b                                             ; $6d28: $b0
	sub d                                            ; $6d29: $92
	inc bc                                           ; $6d2a: $03
	db $e4                                           ; $6d2b: $e4
	nop                                              ; $6d2c: $00
	db $10                                           ; $6d2d: $10
	ld [bc], a                                       ; $6d2e: $02
	or b                                             ; $6d2f: $b0
	sub h                                            ; $6d30: $94
	inc bc                                           ; $6d31: $03
	db $e4                                           ; $6d32: $e4
	nop                                              ; $6d33: $00
	dec hl                                           ; $6d34: $2b
	ld [bc], a                                       ; $6d35: $02
	or b                                             ; $6d36: $b0
	sub e                                            ; $6d37: $93
	inc bc                                           ; $6d38: $03
	db $e4                                           ; $6d39: $e4
	nop                                              ; $6d3a: $00
	ld b, [hl]                                       ; $6d3b: $46
	add hl, bc                                       ; $6d3c: $09
	jr nz, jr_088_6d00                               ; $6d3d: $20 $c1

	ld e, c                                          ; $6d3f: $59
	db $e3                                           ; $6d40: $e3
	nop                                              ; $6d41: $00
	ld [hl], b                                       ; $6d42: $70
	ret nz                                           ; $6d43: $c0

jr_088_6d44:
	ld bc, $01a0                                     ; $6d44: $01 $a0 $01
	nop                                              ; $6d47: $00
	ld b, l                                          ; $6d48: $45
	ret nz                                           ; $6d49: $c0

	ld bc, $07a0                                     ; $6d4a: $01 $a0 $07
	nop                                              ; $6d4d: $00
	ld e, c                                          ; $6d4e: $59
	ret nz                                           ; $6d4f: $c0

	ld bc, $01a0                                     ; $6d50: $01 $a0 $01
	nop                                              ; $6d53: $00
	ld l, b                                          ; $6d54: $68
	ret nz                                           ; $6d55: $c0

	ld bc, $07a0                                     ; $6d56: $01 $a0 $07
	nop                                              ; $6d59: $00
	ld l, h                                          ; $6d5a: $6c
	db $e4                                           ; $6d5b: $e4
	nop                                              ; $6d5c: $00
	ld b, [hl]                                       ; $6d5d: $46
	add hl, bc                                       ; $6d5e: $09
	jr nz, @-$3d                                     ; $6d5f: $20 $c1

	ld e, c                                          ; $6d61: $59
	db $e3                                           ; $6d62: $e3
	nop                                              ; $6d63: $00
	ld [hl], e                                       ; $6d64: $73
	ret nz                                           ; $6d65: $c0

	ld bc, $01a0                                     ; $6d66: $01 $a0 $01
	nop                                              ; $6d69: $00
	ld a, c                                          ; $6d6a: $79
	ret nz                                           ; $6d6b: $c0

	ld bc, $07a0                                     ; $6d6c: $01 $a0 $07
	nop                                              ; $6d6f: $00
	ld e, c                                          ; $6d70: $59
	ret nz                                           ; $6d71: $c0

	ld bc, $01a0                                     ; $6d72: $01 $a0 $01
	nop                                              ; $6d75: $00
	ld l, b                                          ; $6d76: $68
	ret nz                                           ; $6d77: $c0

	ld bc, $07a0                                     ; $6d78: $01 $a0 $07
	nop                                              ; $6d7b: $00
	ld l, h                                          ; $6d7c: $6c
	db $e4                                           ; $6d7d: $e4
	nop                                              ; $6d7e: $00
	inc h                                            ; $6d7f: $24
	add hl, bc                                       ; $6d80: $09
	jr nz, jr_088_6d44                               ; $6d81: $20 $c1

	ld e, c                                          ; $6d83: $59
	db $e3                                           ; $6d84: $e3
	nop                                              ; $6d85: $00
	ld l, l                                          ; $6d86: $6d
	ret nz                                           ; $6d87: $c0

	ld bc, $01a0                                     ; $6d88: $01 $a0 $01
	nop                                              ; $6d8b: $00
	adc [hl]                                         ; $6d8c: $8e
	ret nz                                           ; $6d8d: $c0

	ld bc, $07a0                                     ; $6d8e: $01 $a0 $07
	nop                                              ; $6d91: $00
	sbc b                                            ; $6d92: $98
	ret nz                                           ; $6d93: $c0

	ld bc, $01a0                                     ; $6d94: $01 $a0 $01
	nop                                              ; $6d97: $00
	and [hl]                                         ; $6d98: $a6
	ret nz                                           ; $6d99: $c0

	ld bc, $07a0                                     ; $6d9a: $01 $a0 $07
	nop                                              ; $6d9d: $00
	xor d                                            ; $6d9e: $aa
	db $e4                                           ; $6d9f: $e4
	nop                                              ; $6da0: $00
	ld [bc], a                                       ; $6da1: $02
	add hl, bc                                       ; $6da2: $09
	ld l, $c0                                        ; $6da3: $2e $c0
	ld bc, $01a0                                     ; $6da5: $01 $a0 $01
	nop                                              ; $6da8: $00
	or a                                             ; $6da9: $b7
	ret nz                                           ; $6daa: $c0

	ld bc, $07a0                                     ; $6dab: $01 $a0 $07
	nop                                              ; $6dae: $00
	pop bc                                           ; $6daf: $c1
	ret nz                                           ; $6db0: $c0

	ld bc, $01a0                                     ; $6db1: $01 $a0 $01
	nop                                              ; $6db4: $00
	call $01c0                                       ; $6db5: $cd $c0 $01
	and b                                            ; $6db8: $a0
	rlca                                             ; $6db9: $07
	nop                                              ; $6dba: $00
	pop de                                           ; $6dbb: $d1
	ret nz                                           ; $6dbc: $c0

	ld bc, $01a0                                     ; $6dbd: $01 $a0 $01
	nop                                              ; $6dc0: $00
	push hl                                          ; $6dc1: $e5
	ret nz                                           ; $6dc2: $c0

	ld bc, $07a0                                     ; $6dc3: $01 $a0 $07
	nop                                              ; $6dc6: $00
	add sp, -$3f                                     ; $6dc7: $e8 $c1
	ld e, e                                          ; $6dc9: $5b
	ret nz                                           ; $6dca: $c0

	ld hl, $dad1                                     ; $6dcb: $21 $d1 $da
	push hl                                          ; $6dce: $e5
	ld e, h                                          ; $6dcf: $5c
	inc bc                                           ; $6dd0: $03
	ld b, l                                          ; $6dd1: $45
	add hl, bc                                       ; $6dd2: $09
	ld b, a                                          ; $6dd3: $47
	pop hl                                           ; $6dd4: $e1
	ld [bc], a                                       ; $6dd5: $02
	ld [bc], a                                       ; $6dd6: $02
	call z, $01c0                                    ; $6dd7: $cc $c0 $01
	and b                                            ; $6dda: $a0
	rlca                                             ; $6ddb: $07
	nop                                              ; $6ddc: $00
	db $f4                                           ; $6ddd: $f4
	ret nz                                           ; $6dde: $c0

	ld bc, $01a0                                     ; $6ddf: $01 $a0 $01
	nop                                              ; $6de2: $00
	ld hl, sp-$40                                    ; $6de3: $f8 $c0
	ld bc, $07a0                                     ; $6de5: $01 $a0 $07
	nop                                              ; $6de8: $00
	db $fd                                           ; $6de9: $fd
	ret nz                                           ; $6dea: $c0

	ld bc, $01a0                                     ; $6deb: $01 $a0 $01
	ld bc, $c00a                                     ; $6dee: $01 $0a $c0
	ld bc, $07a0                                     ; $6df1: $01 $a0 $07
	ld bc, $c011                                     ; $6df4: $01 $11 $c0
	ld bc, $01a0                                     ; $6df7: $01 $a0 $01
	ld bc, $c018                                     ; $6dfa: $01 $18 $c0
	ld bc, $07a0                                     ; $6dfd: $01 $a0 $07
	ld bc, $821b                                     ; $6e00: $01 $1b $82
	adc e                                            ; $6e03: $8b
	ld [bc], a                                       ; $6e04: $02
	db $ec                                           ; $6e05: $ec
	ld [bc], a                                       ; $6e06: $02
	or b                                             ; $6e07: $b0
	sub d                                            ; $6e08: $92
	inc bc                                           ; $6e09: $03
	db $e4                                           ; $6e0a: $e4
	nop                                              ; $6e0b: $00
	db $10                                           ; $6e0c: $10
	ld [bc], a                                       ; $6e0d: $02
	or b                                             ; $6e0e: $b0
	sub h                                            ; $6e0f: $94
	inc bc                                           ; $6e10: $03
	db $e4                                           ; $6e11: $e4
	nop                                              ; $6e12: $00
	ld b, e                                          ; $6e13: $43
	ld [bc], a                                       ; $6e14: $02
	or b                                             ; $6e15: $b0
	sub e                                            ; $6e16: $93
	inc bc                                           ; $6e17: $03
	db $e4                                           ; $6e18: $e4
	nop                                              ; $6e19: $00
	ld a, h                                          ; $6e1a: $7c
	jr z, jr_088_6e3f                                ; $6e1b: $28 $22

	pop bc                                           ; $6e1d: $c1
	ld e, c                                          ; $6e1e: $59
	db $e3                                           ; $6e1f: $e3
	nop                                              ; $6e20: $00
	ld [hl], c                                       ; $6e21: $71
	ret nz                                           ; $6e22: $c0

	ld bc, $01a0                                     ; $6e23: $01 $a0 $01
	ld bc, $c021                                     ; $6e26: $01 $21 $c0
	ld bc, $07a0                                     ; $6e29: $01 $a0 $07
	ld bc, $c02b                                     ; $6e2c: $01 $2b $c0
	ld bc, $01a0                                     ; $6e2f: $01 $a0 $01
	ld bc, $c031                                     ; $6e32: $01 $31 $c0
	ld bc, $07a0                                     ; $6e35: $01 $a0 $07
	ld bc, $c03b                                     ; $6e38: $01 $3b $c0
	add hl, bc                                       ; $6e3b: $09
	db $e3                                           ; $6e3c: $e3
	nop                                              ; $6e3d: $00
	ld h, e                                          ; $6e3e: $63

jr_088_6e3f:
	dec d                                            ; $6e3f: $15
	ld bc, $093f                                     ; $6e40: $01 $3f $09
	inc bc                                           ; $6e43: $03
	db $e4                                           ; $6e44: $e4
	ld bc, $0148                             ; $6e45: $01 $48 $01
	ld b, c                                          ; $6e48: $41
	add hl, bc                                       ; $6e49: $09
	inc bc                                           ; $6e4a: $03
	db $e4                                           ; $6e4b: $e4
	nop                                              ; $6e4c: $00
	add e                                            ; $6e4d: $83
	ld bc, $0949                                     ; $6e4e: $01 $49 $09
	inc bc                                           ; $6e51: $03
	db $e4                                           ; $6e52: $e4
	nop                                              ; $6e53: $00
	add l                                            ; $6e54: $85
	jr z, jr_088_6e7f                                ; $6e55: $28 $28

	pop bc                                           ; $6e57: $c1
	ld e, c                                          ; $6e58: $59
	db $e3                                           ; $6e59: $e3
	nop                                              ; $6e5a: $00
	ld [hl], h                                       ; $6e5b: $74
	ret nz                                           ; $6e5c: $c0

	ld bc, $01a0                                     ; $6e5d: $01 $a0 $01
	ld bc, $c04e                                     ; $6e60: $01 $4e $c0
	ld bc, $07a0                                     ; $6e63: $01 $a0 $07
	ld bc, $c071                                     ; $6e66: $01 $71 $c0
	ld bc, $01a0                                     ; $6e69: $01 $a0 $01
	ld bc, $c07e                                     ; $6e6c: $01 $7e $c0
	ld bc, $07a0                                     ; $6e6f: $01 $a0 $07
	ld bc, $c086                                     ; $6e72: $01 $86 $c0
	ld bc, $01a0                                     ; $6e75: $01 $a0 $01
	ld bc, $c08e                                     ; $6e78: $01 $8e $c0
	add hl, bc                                       ; $6e7b: $09
	db $e3                                           ; $6e7c: $e3
	nop                                              ; $6e7d: $00
	ld h, e                                          ; $6e7e: $63

jr_088_6e7f:
	dec d                                            ; $6e7f: $15
	ld bc, $093f                                     ; $6e80: $01 $3f $09
	inc bc                                           ; $6e83: $03
	db $e4                                           ; $6e84: $e4
	ld bc, $0108                                     ; $6e85: $01 $08 $01
	ld b, c                                          ; $6e88: $41
	add hl, bc                                       ; $6e89: $09
	inc bc                                           ; $6e8a: $03
	db $e4                                           ; $6e8b: $e4
	nop                                              ; $6e8c: $00
	ld e, l                                          ; $6e8d: $5d
	ld bc, $0949                                     ; $6e8e: $01 $49 $09
	inc bc                                           ; $6e91: $03
	db $e4                                           ; $6e92: $e4
	nop                                              ; $6e93: $00
	ld e, a                                          ; $6e94: $5f
	jr z, jr_088_6eb9                                ; $6e95: $28 $22

	pop bc                                           ; $6e97: $c1
	ld e, c                                          ; $6e98: $59
	db $e3                                           ; $6e99: $e3
	nop                                              ; $6e9a: $00
	ld l, [hl]                                       ; $6e9b: $6e
	ret nz                                           ; $6e9c: $c0

	ld bc, $01a0                                     ; $6e9d: $01 $a0 $01
	ld bc, $c09b                                     ; $6ea0: $01 $9b $c0
	ld bc, $07a0                                     ; $6ea3: $01 $a0 $07
	ld bc, $c0a1                                     ; $6ea6: $01 $a1 $c0
	ld bc, $01a0                                     ; $6ea9: $01 $a0 $01
	ld bc, $c0aa                                     ; $6eac: $01 $aa $c0
	ld bc, $07a0                                     ; $6eaf: $01 $a0 $07
	ld bc, $c0b6                                     ; $6eb2: $01 $b6 $c0
	add hl, bc                                       ; $6eb5: $09
	db $e3                                           ; $6eb6: $e3
	nop                                              ; $6eb7: $00
	ld h, e                                          ; $6eb8: $63

jr_088_6eb9:
	dec d                                            ; $6eb9: $15
	ld bc, $093f                                     ; $6eba: $01 $3f $09
	inc bc                                           ; $6ebd: $03
	db $e4                                           ; $6ebe: $e4
	nop                                              ; $6ebf: $00
	adc $01                                          ; $6ec0: $ce $01
	ld b, c                                          ; $6ec2: $41
	add hl, bc                                       ; $6ec3: $09
	inc bc                                           ; $6ec4: $03
	db $e4                                           ; $6ec5: $e4
	nop                                              ; $6ec6: $00
	dec a                                            ; $6ec7: $3d
	ld bc, $0949                                     ; $6ec8: $01 $49 $09
	inc bc                                           ; $6ecb: $03
	db $e4                                           ; $6ecc: $e4
	nop                                              ; $6ecd: $00
	ccf                                              ; $6ece: $3f
	add hl, bc                                       ; $6ecf: $09
	rlca                                             ; $6ed0: $07
	pop hl                                           ; $6ed1: $e1
	ld e, h                                          ; $6ed2: $5c
	inc b                                            ; $6ed3: $04
	add hl, sp                                       ; $6ed4: $39
	db $e4                                           ; $6ed5: $e4
	nop                                              ; $6ed6: $00
	ld b, a                                          ; $6ed7: $47
	add hl, bc                                       ; $6ed8: $09
	rrca                                             ; $6ed9: $0f
	pop bc                                           ; $6eda: $c1
	cp b                                             ; $6edb: $b8
	pop bc                                           ; $6edc: $c1
	ld e, e                                          ; $6edd: $5b
	pop bc                                           ; $6ede: $c1
	ld a, [de]                                       ; $6edf: $1a
	pop de                                           ; $6ee0: $d1
	ret nz                                           ; $6ee1: $c0

	rrca                                             ; $6ee2: $0f
	db $e3                                           ; $6ee3: $e3
	nop                                              ; $6ee4: $00
	ld [hl], c                                       ; $6ee5: $71
	db $e4                                           ; $6ee6: $e4
	nop                                              ; $6ee7: $00
	ld l, [hl]                                       ; $6ee8: $6e
	add hl, bc                                       ; $6ee9: $09
	rlca                                             ; $6eea: $07
	pop hl                                           ; $6eeb: $e1
	ld e, h                                          ; $6eec: $5c
	inc b                                            ; $6eed: $04
	ld b, [hl]                                       ; $6eee: $46
	db $e4                                           ; $6eef: $e4
	nop                                              ; $6ef0: $00
	dec l                                            ; $6ef1: $2d
	add hl, bc                                       ; $6ef2: $09
	rrca                                             ; $6ef3: $0f
	pop bc                                           ; $6ef4: $c1
	cp b                                             ; $6ef5: $b8
	pop bc                                           ; $6ef6: $c1
	ld e, e                                          ; $6ef7: $5b
	pop bc                                           ; $6ef8: $c1
	dec de                                           ; $6ef9: $1b
	pop de                                           ; $6efa: $d1
	ret nz                                           ; $6efb: $c0

	rrca                                             ; $6efc: $0f
	db $e3                                           ; $6efd: $e3
	nop                                              ; $6efe: $00
	ld [hl], h                                       ; $6eff: $74
	db $e4                                           ; $6f00: $e4
	nop                                              ; $6f01: $00
	ld d, h                                          ; $6f02: $54
	add hl, bc                                       ; $6f03: $09
	rlca                                             ; $6f04: $07
	pop hl                                           ; $6f05: $e1
	ld e, h                                          ; $6f06: $5c
	inc b                                            ; $6f07: $04
	ld d, e                                          ; $6f08: $53
	db $e4                                           ; $6f09: $e4
	nop                                              ; $6f0a: $00
	inc de                                           ; $6f0b: $13
	add hl, bc                                       ; $6f0c: $09
	rrca                                             ; $6f0d: $0f
	pop bc                                           ; $6f0e: $c1
	cp b                                             ; $6f0f: $b8
	pop bc                                           ; $6f10: $c1
	ld e, e                                          ; $6f11: $5b
	pop bc                                           ; $6f12: $c1
	inc e                                            ; $6f13: $1c
	pop de                                           ; $6f14: $d1
	ret nz                                           ; $6f15: $c0

	rrca                                             ; $6f16: $0f
	db $e3                                           ; $6f17: $e3
	nop                                              ; $6f18: $00
	ld l, [hl]                                       ; $6f19: $6e
	db $e4                                           ; $6f1a: $e4
	nop                                              ; $6f1b: $00
	ld a, [hl-]                                      ; $6f1c: $3a
	add hl, bc                                       ; $6f1d: $09
	ld [hl], $c0                                     ; $6f1e: $36 $c0
	ld bc, $01a0                                     ; $6f20: $01 $a0 $01
	ld bc, $e1bb                                     ; $6f23: $01 $bb $e1
	ld [bc], a                                       ; $6f26: $02
	ld [bc], a                                       ; $6f27: $02
	call z, $01c0                                    ; $6f28: $cc $c0 $01
	and b                                            ; $6f2b: $a0
	rlca                                             ; $6f2c: $07
	ld bc, $c0c9                                     ; $6f2d: $01 $c9 $c0
	ld bc, $01a0                                     ; $6f30: $01 $a0 $01
	ld bc, $c0ce                                     ; $6f33: $01 $ce $c0
	ld bc, $07a0                                     ; $6f36: $01 $a0 $07
	ld bc, $c0de                                     ; $6f39: $01 $de $c0
	ld bc, $01a0                                     ; $6f3c: $01 $a0 $01
	ld bc, $c0f3                                     ; $6f3f: $01 $f3 $c0
	ld bc, $07a0                                     ; $6f42: $01 $a0 $07
	ld bc, $c1fe                                     ; $6f45: $01 $fe $c1
	ld e, e                                          ; $6f48: $5b
	ret nz                                           ; $6f49: $c0

	ld bc, $01a0                                     ; $6f4a: $01 $a0 $01
	ld [bc], a                                       ; $6f4d: $02
	ld bc, $cbc0                                     ; $6f4e: $01 $c0 $cb
	push hl                                          ; $6f51: $e5
	ld e, h                                          ; $6f52: $5c
	inc b                                            ; $6f53: $04
	ld h, b                                          ; $6f54: $60
	add hl, bc                                       ; $6f55: $09
	ld [hl], $e1                                     ; $6f56: $36 $e1
	ld [bc], a                                       ; $6f58: $02
	ld [bc], a                                       ; $6f59: $02
	call z, $01c0                                    ; $6f5a: $cc $c0 $01
	and b                                            ; $6f5d: $a0
	ld bc, $0902                                     ; $6f5e: $01 $02 $09
	ret nz                                           ; $6f61: $c0

	ld bc, $07a0                                     ; $6f62: $01 $a0 $07
	ld [bc], a                                       ; $6f65: $02
	ld c, $c0                                        ; $6f66: $0e $c0
	ld bc, $01a0                                     ; $6f68: $01 $a0 $01
	ld [bc], a                                       ; $6f6b: $02
	ld hl, $01c0                                     ; $6f6c: $21 $c0 $01
	and b                                            ; $6f6f: $a0
	rlca                                             ; $6f70: $07
	ld [bc], a                                       ; $6f71: $02
	ld l, $c0                                        ; $6f72: $2e $c0
	ld bc, $01a0                                     ; $6f74: $01 $a0 $01
	ld [bc], a                                       ; $6f77: $02
	ld b, d                                          ; $6f78: $42
	ret nz                                           ; $6f79: $c0

	ld bc, $07a0                                     ; $6f7a: $01 $a0 $07
	ld [bc], a                                       ; $6f7d: $02
	ld c, d                                          ; $6f7e: $4a
	ret nz                                           ; $6f7f: $c0

	ld bc, $01a0                                     ; $6f80: $01 $a0 $01
	ld [bc], a                                       ; $6f83: $02
	ld d, a                                          ; $6f84: $57
	ret nz                                           ; $6f85: $c0

	set 0, c                                         ; $6f86: $cb $c1
	ld e, e                                          ; $6f88: $5b
	push hl                                          ; $6f89: $e5
	ld e, h                                          ; $6f8a: $5c
	inc b                                            ; $6f8b: $04
	ld h, b                                          ; $6f8c: $60
	add hl, bc                                       ; $6f8d: $09
	jr nc, @-$3e                                     ; $6f8e: $30 $c0

	dec bc                                           ; $6f90: $0b
	db $e3                                           ; $6f91: $e3
	nop                                              ; $6f92: $00
	daa                                              ; $6f93: $27
	ret nz                                           ; $6f94: $c0

	set 0, b                                         ; $6f95: $cb $c0
	inc c                                            ; $6f97: $0c
	ldh [rAUD3HIGH], a                               ; $6f98: $e0 $1e
	pop hl                                           ; $6f9a: $e1
	ld e, h                                          ; $6f9b: $5c
	ld b, $0f                                        ; $6f9c: $06 $0f
	ret nz                                           ; $6f9e: $c0

	ld de, $00e3                                     ; $6f9f: $11 $e3 $00
	ld l, e                                          ; $6fa2: $6b
	pop hl                                           ; $6fa3: $e1
	ld [bc], a                                       ; $6fa4: $02
	ld [bc], a                                       ; $6fa5: $02
	db $d3                                           ; $6fa6: $d3
	pop hl                                           ; $6fa7: $e1
	ld e, h                                          ; $6fa8: $5c
	inc b                                            ; $6fa9: $04
	ld [hl-], a                                      ; $6faa: $32
	ret nz                                           ; $6fab: $c0

	ld bc, $07a0                                     ; $6fac: $01 $a0 $07
	ld [bc], a                                       ; $6faf: $02
	ld e, [hl]                                       ; $6fb0: $5e
	ret nz                                           ; $6fb1: $c0

	ld bc, $01a0                                     ; $6fb2: $01 $a0 $01
	ld [bc], a                                       ; $6fb5: $02
	ld l, h                                          ; $6fb6: $6c
	ret nz                                           ; $6fb7: $c0

	set 0, c                                         ; $6fb8: $cb $c1
	ld e, e                                          ; $6fba: $5b
	push hl                                          ; $6fbb: $e5
	ld e, h                                          ; $6fbc: $5c
	inc b                                            ; $6fbd: $04
	ld h, b                                          ; $6fbe: $60
	and e                                            ; $6fbf: $a3
	ld [$1109], sp                                   ; $6fc0: $08 $09 $11
	pop bc                                           ; $6fc3: $c1
	ld d, e                                          ; $6fc4: $53
	ret nz                                           ; $6fc5: $c0

	inc d                                            ; $6fc6: $14
	db $e3                                           ; $6fc7: $e3
	nop                                              ; $6fc8: $00
	ld l, c                                          ; $6fc9: $69
	ret nz                                           ; $6fca: $c0

	inc c                                            ; $6fcb: $0c
	ldh [$3c], a                                     ; $6fcc: $e0 $3c
	ldh [rP1], a                                     ; $6fce: $e0 $00
	adc a                                            ; $6fd0: $8f
	db $e4                                           ; $6fd1: $e4
	nop                                              ; $6fd2: $00
	ld [bc], a                                       ; $6fd3: $02
	add hl, bc                                       ; $6fd4: $09
	ld [hl], e                                       ; $6fd5: $73
	ld b, b                                          ; $6fd6: $40
	add b                                            ; $6fd7: $80
	inc bc                                           ; $6fd8: $03
	ld c, $46                                        ; $6fd9: $0e $46
	add b                                            ; $6fdb: $80
	inc bc                                           ; $6fdc: $03
	rrca                                             ; $6fdd: $0f
	add b                                            ; $6fde: $80
	inc bc                                           ; $6fdf: $03
	db $10                                           ; $6fe0: $10
	add b                                            ; $6fe1: $80
	inc bc                                           ; $6fe2: $03
	ld de, $0380                                     ; $6fe3: $11 $80 $03
	ld [de], a                                       ; $6fe6: $12
	add b                                            ; $6fe7: $80
	inc bc                                           ; $6fe8: $03
	inc de                                           ; $6fe9: $13
	add b                                            ; $6fea: $80
	inc bc                                           ; $6feb: $03
	inc d                                            ; $6fec: $14
	add b                                            ; $6fed: $80
	inc bc                                           ; $6fee: $03
	dec d                                            ; $6fef: $15
	db $fd                                           ; $6ff0: $fd
	ld d, a                                          ; $6ff1: $57
	ret nz                                           ; $6ff2: $c0

	ld b, d                                          ; $6ff3: $42
	ld bc, $07d0                                     ; $6ff4: $01 $d0 $07
	ldh [rP1], a                                     ; $6ff7: $e0 $00
	ld d, c                                          ; $6ff9: $51
	push hl                                          ; $6ffa: $e5
	ld l, b                                          ; $6ffb: $68
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	ld bc, $07d1                                     ; $6ffe: $01 $d1 $07
	ldh [rP1], a                                     ; $7001: $e0 $00
	ld b, a                                          ; $7003: $47
	push hl                                          ; $7004: $e5
	ld l, c                                          ; $7005: $69
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	ld bc, $07d2                                     ; $7008: $01 $d2 $07
	ldh [rP1], a                                     ; $700b: $e0 $00
	dec a                                            ; $700d: $3d
	push hl                                          ; $700e: $e5
	ld l, d                                          ; $700f: $6a
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	ld bc, $07d3                                     ; $7012: $01 $d3 $07
	ldh [rP1], a                                     ; $7015: $e0 $00
	inc sp                                           ; $7017: $33
	push hl                                          ; $7018: $e5
	ld l, e                                          ; $7019: $6b
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	ld bc, $07d7                                     ; $701c: $01 $d7 $07
	ldh [rP1], a                                     ; $701f: $e0 $00
	add hl, hl                                       ; $7021: $29
	push hl                                          ; $7022: $e5
	ld l, h                                          ; $7023: $6c
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	ld bc, $07d8                                     ; $7026: $01 $d8 $07
	ldh [rP1], a                                     ; $7029: $e0 $00
	rra                                              ; $702b: $1f
	push hl                                          ; $702c: $e5
	ld l, l                                          ; $702d: $6d
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00

jr_088_7030:
	ld bc, $07da                                     ; $7030: $01 $da $07
	ldh [rP1], a                                     ; $7033: $e0 $00
	dec d                                            ; $7035: $15
	push hl                                          ; $7036: $e5
	ld l, [hl]                                       ; $7037: $6e
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	ld bc, $07dd                                     ; $703a: $01 $dd $07
	ldh [rP1], a                                     ; $703d: $e0 $00
	dec bc                                           ; $703f: $0b
	push hl                                          ; $7040: $e5
	ld l, a                                          ; $7041: $6f
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	inc bc                                           ; $7045: $03
	db $e4                                           ; $7046: $e4
	nop                                              ; $7047: $00
	adc c                                            ; $7048: $89
	inc d                                            ; $7049: $14

jr_088_704a:
	ret nz                                           ; $704a: $c0

	dec bc                                           ; $704b: $0b
	db $e3                                           ; $704c: $e3
	nop                                              ; $704d: $00
	ld [de], a                                       ; $704e: $12
	ret nz                                           ; $704f: $c0

	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	ld bc, $01c0                                     ; $7052: $01 $c0 $01
	and b                                            ; $7055: $a0
	ld bc, $0600                                     ; $7056: $01 $00 $06
	pop bc                                           ; $7059: $c1
	ld e, c                                          ; $705a: $59
	db $e3                                           ; $705b: $e3
	nop                                              ; $705c: $00
	ld e, a                                          ; $705d: $5f
	jr z, jr_088_7030                                ; $705e: $28 $d0

	add e                                            ; $7060: $83
	and b                                            ; $7061: $a0
	nop                                              ; $7062: $00
	pop bc                                           ; $7063: $c1
	rst GetHLinHL                                          ; $7064: $cf
	ei                                               ; $7065: $fb
	ld sp, hl                                        ; $7066: $f9

jr_088_7067:
	add e                                            ; $7067: $83
	and b                                            ; $7068: $a0
	nop                                              ; $7069: $00
	ret nc                                           ; $706a: $d0

	dec de                                           ; $706b: $1b
	ret nz                                           ; $706c: $c0

	dec bc                                           ; $706d: $0b
	db $e3                                           ; $706e: $e3
	nop                                              ; $706f: $00
	ld [de], a                                       ; $7070: $12
	ret nz                                           ; $7071: $c0

	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	ld bc, $00c0                                     ; $7074: $01 $c0 $00
	nop                                              ; $7077: $00
	ld c, $d0                                        ; $7078: $0e $d0
	adc a                                            ; $707a: $8f
	and b                                            ; $707b: $a0
	inc b                                            ; $707c: $04
	pop de                                           ; $707d: $d1
	ret nz                                           ; $707e: $c0

	ld bc, $01a0                                     ; $707f: $01 $a0 $01
	nop                                              ; $7082: $00
	dec d                                            ; $7083: $15
	db $e4                                           ; $7084: $e4
	nop                                              ; $7085: $00
	ld [bc], a                                       ; $7086: $02
	add hl, bc                                       ; $7087: $09
	scf                                              ; $7088: $37

jr_088_7089:
	ret nc                                           ; $7089: $d0

	add e                                            ; $708a: $83
	and b                                            ; $708b: $a0
	inc d                                            ; $708c: $14
	pop bc                                           ; $708d: $c1
	ret nc                                           ; $708e: $d0

	adc a                                            ; $708f: $8f
	and b                                            ; $7090: $a0
	inc b                                            ; $7091: $04
	pop bc                                           ; $7092: $c1
	ld b, a                                          ; $7093: $47
	add e                                            ; $7094: $83
	and b                                            ; $7095: $a0
	inc d                                            ; $7096: $14
	ei                                               ; $7097: $fb
	db $fc                                           ; $7098: $fc
	add e                                            ; $7099: $83
	and b                                            ; $709a: $a0
	nop                                              ; $709b: $00
	adc a                                            ; $709c: $8f
	and b                                            ; $709d: $a0
	inc b                                            ; $709e: $04
	inc de                                           ; $709f: $13
	ret nz                                           ; $70a0: $c0

	ld bc, $01a0                                     ; $70a1: $01 $a0 $01
	nop                                              ; $70a4: $00
	jr jr_088_7067                                   ; $70a5: $18 $c0

	ld bc, $01a0                                     ; $70a7: $01 $a0 $01
	nop                                              ; $70aa: $00
	inc e                                            ; $70ab: $1c
	ret nz                                           ; $70ac: $c0

	inc c                                            ; $70ad: $0c
	ldh [$3c], a                                     ; $70ae: $e0 $3c
	db $e4                                           ; $70b0: $e4
	rst $38                                          ; $70b1: $ff
	inc hl                                           ; $70b2: $23
	ret nz                                           ; $70b3: $c0

	ld bc, $01a0                                     ; $70b4: $01 $a0 $01
	nop                                              ; $70b7: $00
	inc h                                            ; $70b8: $24
	jr nz, jr_088_704a                               ; $70b9: $20 $8f

	and b                                            ; $70bb: $a0
	inc b                                            ; $70bc: $04
	db $e4                                           ; $70bd: $e4
	rst $38                                          ; $70be: $ff
	ret                                              ; $70bf: $c9


	add hl, bc                                       ; $70c0: $09
	ld c, $c0                                        ; $70c1: $0e $c0
	ld bc, $01a0                                     ; $70c3: $01 $a0 $01
	nop                                              ; $70c6: $00
	jr z, jr_088_7089                                ; $70c7: $28 $c0

	ld de, $00e3                                     ; $70c9: $11 $e3 $00
	ld l, c                                          ; $70cc: $69
	db $e4                                           ; $70cd: $e4

jr_088_70ce:
	nop                                              ; $70ce: $00
	ld [bc], a                                       ; $70cf: $02
	add hl, bc                                       ; $70d0: $09
	jr jr_088_70ce                                   ; $70d1: $18 $fb

	cp $08                                           ; $70d3: $fe $08
	db $fc                                           ; $70d5: $fc
	add c                                            ; $70d6: $81
	ld bc, $d0a6                                     ; $70d7: $01 $a6 $d0
	add b                                            ; $70da: $80
	inc bc                                           ; $70db: $03
	ld c, $09                                        ; $70dc: $0e $09
	ret nz                                           ; $70de: $c0

	ld bc, $01a0                                     ; $70df: $01 $a0 $01
	nop                                              ; $70e2: $00
	ld l, $e4                                        ; $70e3: $2e $e4
	nop                                              ; $70e5: $00
	ld [$00e4], a                                    ; $70e6: $ea $e4 $00
	ld [bc], a                                       ; $70e9: $02
	jr z, @+$08                                      ; $70ea: $28 $06

	ret nz                                           ; $70ec: $c0

	ld bc, $01a0                                     ; $70ed: $01 $a0 $01
	nop                                              ; $70f0: $00
	jr c, jr_088_7117                                ; $70f1: $38 $24

	ei                                               ; $70f3: $fb
	db $fc                                           ; $70f4: $fc
	add c                                            ; $70f5: $81
	ld bc, $d0a6                                     ; $70f6: $01 $a6 $d0
	ld [rRAMB], sp                                   ; $70f9: $08 $00 $40
	add hl, bc                                       ; $70fc: $09
	inc b                                            ; $70fd: $04
	push hl                                          ; $70fe: $e5
	ld l, b                                          ; $70ff: $68
	nop                                              ; $7100: $00
	ld h, [hl]                                       ; $7101: $66
	ei                                               ; $7102: $fb
	ld sp, hl                                        ; $7103: $f9
	add c                                            ; $7104: $81
	ld bc, $d0a6                                     ; $7105: $01 $a6 $d0
	rlca                                             ; $7108: $07
	nop                                              ; $7109: $00
	ld b, a                                          ; $710a: $47
	add hl, bc                                       ; $710b: $09
	inc bc                                           ; $710c: $03
	db $e4                                           ; $710d: $e4
	nop                                              ; $710e: $00
	add hl, bc                                       ; $710f: $09
	nop                                              ; $7110: $00
	ld c, e                                          ; $7111: $4b
	add hl, bc                                       ; $7112: $09
	inc bc                                           ; $7113: $03
	db $e4                                           ; $7114: $e4
	nop                                              ; $7115: $00
	xor a                                            ; $7116: $af

jr_088_7117:
	add hl, bc                                       ; $7117: $09
	sbc d                                            ; $7118: $9a
	ret nz                                           ; $7119: $c0

	ld bc, $01a0                                     ; $711a: $01 $a0 $01
	nop                                              ; $711d: $00
	ld c, a                                          ; $711e: $4f
	db $fd                                           ; $711f: $fd
	adc a                                            ; $7120: $8f
	ret nz                                           ; $7121: $c0

	call c, $01da                                    ; $7122: $dc $da $01
	ret nc                                           ; $7125: $d0

	dec c                                            ; $7126: $0d
	ld h, b                                          ; $7127: $60
	add b                                            ; $7128: $80
	inc bc                                           ; $7129: $03
	ld c, $03                                        ; $712a: $0e $03
	db $e4                                           ; $712c: $e4
	nop                                              ; $712d: $00
	add [hl]                                         ; $712e: $86
	inc b                                            ; $712f: $04
	push hl                                          ; $7130: $e5
	ld l, b                                          ; $7131: $68
	nop                                              ; $7132: $00
	ld h, [hl]                                       ; $7133: $66
	ld bc, $0dd1                                     ; $7134: $01 $d1 $0d
	ld h, b                                          ; $7137: $60
	add b                                            ; $7138: $80
	inc bc                                           ; $7139: $03
	rrca                                             ; $713a: $0f
	inc bc                                           ; $713b: $03
	db $e4                                           ; $713c: $e4
	nop                                              ; $713d: $00
	halt                                             ; $713e: $76
	inc b                                            ; $713f: $04
	push hl                                          ; $7140: $e5
	ld l, c                                          ; $7141: $69
	nop                                              ; $7142: $00
	ld c, a                                          ; $7143: $4f
	ld bc, $0dd2                                     ; $7144: $01 $d2 $0d
	ld h, b                                          ; $7147: $60
	add b                                            ; $7148: $80
	inc bc                                           ; $7149: $03
	db $10                                           ; $714a: $10
	inc bc                                           ; $714b: $03
	db $e4                                           ; $714c: $e4
	nop                                              ; $714d: $00
	ld h, [hl]                                       ; $714e: $66
	inc b                                            ; $714f: $04
	push hl                                          ; $7150: $e5
	ld l, d                                          ; $7151: $6a
	nop                                              ; $7152: $00
	ld d, h                                          ; $7153: $54
	ld bc, $0dd3                                     ; $7154: $01 $d3 $0d
	ld h, b                                          ; $7157: $60
	add b                                            ; $7158: $80
	inc bc                                           ; $7159: $03
	ld de, $e403                                     ; $715a: $11 $03 $e4
	nop                                              ; $715d: $00
	ld d, [hl]                                       ; $715e: $56
	inc b                                            ; $715f: $04
	push hl                                          ; $7160: $e5
	ld l, e                                          ; $7161: $6b
	nop                                              ; $7162: $00
	ld d, h                                          ; $7163: $54
	ld bc, $0dd7                                     ; $7164: $01 $d7 $0d
	ld h, b                                          ; $7167: $60
	add b                                            ; $7168: $80
	inc bc                                           ; $7169: $03
	ld [de], a                                       ; $716a: $12
	inc bc                                           ; $716b: $03
	db $e4                                           ; $716c: $e4
	nop                                              ; $716d: $00
	ld b, [hl]                                       ; $716e: $46
	inc b                                            ; $716f: $04
	push hl                                          ; $7170: $e5
	ld l, h                                          ; $7171: $6c
	nop                                              ; $7172: $00
	ld d, h                                          ; $7173: $54
	ld bc, $0dd8                                     ; $7174: $01 $d8 $0d
	ld h, b                                          ; $7177: $60
	add b                                            ; $7178: $80
	inc bc                                           ; $7179: $03
	inc de                                           ; $717a: $13
	inc bc                                           ; $717b: $03
	db $e4                                           ; $717c: $e4
	nop                                              ; $717d: $00
	ld [hl], $04                                     ; $717e: $36 $04
	push hl                                          ; $7180: $e5
	ld l, l                                          ; $7181: $6d
	nop                                              ; $7182: $00
	ld d, b                                          ; $7183: $50
	ld bc, $0dda                                     ; $7184: $01 $da $0d
	ld h, b                                          ; $7187: $60
	add b                                            ; $7188: $80
	inc bc                                           ; $7189: $03
	inc d                                            ; $718a: $14
	inc bc                                           ; $718b: $03
	db $e4                                           ; $718c: $e4
	nop                                              ; $718d: $00
	ld h, $04                                        ; $718e: $26 $04
	push hl                                          ; $7190: $e5
	ld l, [hl]                                       ; $7191: $6e
	nop                                              ; $7192: $00
	ld c, a                                          ; $7193: $4f
	ld bc, $0ddd                                     ; $7194: $01 $dd $0d
	ld h, b                                          ; $7197: $60
	add b                                            ; $7198: $80
	inc bc                                           ; $7199: $03
	dec d                                            ; $719a: $15
	inc bc                                           ; $719b: $03
	db $e4                                           ; $719c: $e4
	nop                                              ; $719d: $00
	ld d, $04                                        ; $719e: $16 $04
	push hl                                          ; $71a0: $e5
	ld l, a                                          ; $71a1: $6f
	nop                                              ; $71a2: $00
	ld d, b                                          ; $71a3: $50
	ld bc, $09df                                     ; $71a4: $01 $df $09
	ret nz                                           ; $71a7: $c0

	ld bc, $01a0                                     ; $71a8: $01 $a0 $01
	nop                                              ; $71ab: $00
	ld d, [hl]                                       ; $71ac: $56
	db $e4                                           ; $71ad: $e4
	nop                                              ; $71ae: $00
	ld d, $e4                                        ; $71af: $16 $e4
	rst $38                                          ; $71b1: $ff
	ld h, [hl]                                       ; $71b2: $66
	add hl, bc                                       ; $71b3: $09
	rrca                                             ; $71b4: $0f
	ret nz                                           ; $71b5: $c0

	ld bc, $01a0                                     ; $71b6: $01 $a0 $01
	nop                                              ; $71b9: $00
	ld e, e                                          ; $71ba: $5b
	ret nz                                           ; $71bb: $c0

	ld bc, $01a0                                     ; $71bc: $01 $a0 $01
	nop                                              ; $71bf: $00
	ld h, [hl]                                       ; $71c0: $66
	db $e4                                           ; $71c1: $e4
	nop                                              ; $71c2: $00
	dec c                                            ; $71c3: $0d
	add hl, bc                                       ; $71c4: $09
	add hl, bc                                       ; $71c5: $09
	ret nz                                           ; $71c6: $c0

	ld bc, $01a0                                     ; $71c7: $01 $a0 $01
	nop                                              ; $71ca: $00
	ld l, d                                          ; $71cb: $6a
	db $e4                                           ; $71cc: $e4
	nop                                              ; $71cd: $00
	ld [bc], a                                       ; $71ce: $02
	add hl, bc                                       ; $71cf: $09
	dec d                                            ; $71d0: $15
	pop bc                                           ; $71d1: $c1
	ld e, c                                          ; $71d2: $59
	db $e3                                           ; $71d3: $e3
	nop                                              ; $71d4: $00
	ld h, [hl]                                       ; $71d5: $66
	ret nc                                           ; $71d6: $d0

	adc e                                            ; $71d7: $8b
	inc bc                                           ; $71d8: $03
	ld d, $b0                                        ; $71d9: $16 $b0
	ld bc, $01c0                                     ; $71db: $01 $c0 $01
	and b                                            ; $71de: $a0
	ld bc, $7200                                     ; $71df: $01 $00 $72
	push hl                                          ; $71e2: $e5
	ld h, [hl]                                       ; $71e3: $66
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	add hl, bc                                       ; $71e6: $09
	inc a                                            ; $71e7: $3c
	pop bc                                           ; $71e8: $c1
	ld e, c                                          ; $71e9: $59
	db $e3                                           ; $71ea: $e3
	nop                                              ; $71eb: $00
	ld h, [hl]                                       ; $71ec: $66
	add d                                            ; $71ed: $82
	ret nz                                           ; $71ee: $c0

	add b                                            ; $71ef: $80
	ld bc, $06d3                                     ; $71f0: $01 $d3 $06
	ret nz                                           ; $71f3: $c0

	ld bc, $01a0                                     ; $71f4: $01 $a0 $01
	nop                                              ; $71f7: $00
	ld a, h                                          ; $71f8: $7c
	ld bc, $06d2                                     ; $71f9: $01 $d2 $06
	ret nz                                           ; $71fc: $c0

	ld bc, $01a0                                     ; $71fd: $01 $a0 $01
	nop                                              ; $7200: $00
	adc d                                            ; $7201: $8a
	ld bc, $06d1                                     ; $7202: $01 $d1 $06
	ret nz                                           ; $7205: $c0

	ld bc, $01a0                                     ; $7206: $01 $a0 $01
	nop                                              ; $7209: $00
	sub h                                            ; $720a: $94
	ret nz                                           ; $720b: $c0

	ld bc, $01a0                                     ; $720c: $01 $a0 $01
	nop                                              ; $720f: $00
	sbc [hl]                                         ; $7210: $9e
	add c                                            ; $7211: $81
	adc e                                            ; $7212: $8b
	ld bc, $0266                                     ; $7213: $01 $66 $02
	or b                                             ; $7216: $b0
	inc bc                                           ; $7217: $03
	inc bc                                           ; $7218: $03
	db $e4                                           ; $7219: $e4
	nop                                              ; $721a: $00
	inc h                                            ; $721b: $24
	nop                                              ; $721c: $00
	ld b, $c1                                        ; $721d: $06 $c1
	dec sp                                           ; $721f: $3b
	push hl                                          ; $7220: $e5
	ld bc, $b119                                     ; $7221: $01 $19 $b1
	add hl, bc                                       ; $7224: $09
	dec c                                            ; $7225: $0d
	pop bc                                           ; $7226: $c1
	rlca                                             ; $7227: $07
	call nc, $c0d3                                   ; $7228: $d4 $d3 $c0
	ld bc, $01a0                                     ; $722b: $01 $a0 $01
	nop                                              ; $722e: $00
	and h                                            ; $722f: $a4
	db $e4                                           ; $7230: $e4
	rst $38                                          ; $7231: $ff
	sub e                                            ; $7232: $93
	add hl, bc                                       ; $7233: $09
	add hl, bc                                       ; $7234: $09
	ret nz                                           ; $7235: $c0

	ld bc, $01a0                                     ; $7236: $01 $a0 $01
	nop                                              ; $7239: $00
	xor h                                            ; $723a: $ac
	db $e4                                           ; $723b: $e4
	rst $38                                          ; $723c: $ff
	adc b                                            ; $723d: $88
	jr z, jr_088_724e                                ; $723e: $28 $0e

	ret nz                                           ; $7240: $c0

	push af                                          ; $7241: $f5

jr_088_7242:
	ret nz                                           ; $7242: $c0

	ld bc, $01a0                                     ; $7243: $01 $a0 $01
	nop                                              ; $7246: $00
	cp h                                             ; $7247: $bc
	ret nz                                           ; $7248: $c0

	ld bc, $01a0                                     ; $7249: $01 $a0 $01
	nop                                              ; $724c: $00

jr_088_724d:
	ret nz                                           ; $724d: $c0

jr_088_724e:
	inc e                                            ; $724e: $1c
	nop                                              ; $724f: $00
	jp $0a09                                         ; $7250: $c3 $09 $0a


	ret nc                                           ; $7253: $d0

	adc e                                            ; $7254: $8b
	nop                                              ; $7255: $00
	sbc $b0                                          ; $7256: $de $b0
	ld [hl], h                                       ; $7258: $74
	push hl                                          ; $7259: $e5
	ld b, l                                          ; $725a: $45
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	push bc                                          ; $725e: $c5
	add hl, bc                                       ; $725f: $09
	ld a, [bc]                                       ; $7260: $0a
	ret nz                                           ; $7261: $c0

	ld bc, $01a0                                     ; $7262: $01 $a0 $01
	nop                                              ; $7265: $00
	rst JumpTable                                          ; $7266: $c7
	push hl                                          ; $7267: $e5
	ld bc, $b119                                     ; $7268: $01 $19 $b1
	and e                                            ; $726b: $a3
	ld [$0d28], sp                                   ; $726c: $08 $28 $0d
	pop bc                                           ; $726f: $c1
	ld e, e                                          ; $7270: $5b
	pop bc                                           ; $7271: $c1
	ld e, c                                          ; $7272: $59
	db $e3                                           ; $7273: $e3
	nop                                              ; $7274: $00
	ld h, a                                          ; $7275: $67
	ret nz                                           ; $7276: $c0

	ld bc, $01a0                                     ; $7277: $01 $a0 $01
	nop                                              ; $727a: $00
	ld bc, $0062                                     ; $727b: $01 $62 $00
	rlca                                             ; $727e: $07
	add hl, bc                                       ; $727f: $09
	jr z, jr_088_7242                                ; $7280: $28 $c0

	ld bc, $01a0                                     ; $7282: $01 $a0 $01
	nop                                              ; $7285: $00
	add hl, bc                                       ; $7286: $09
	ret nz                                           ; $7287: $c0

	dec bc                                           ; $7288: $0b
	db $e3                                           ; $7289: $e3
	nop                                              ; $728a: $00
	jr nz, jr_088_724d                               ; $728b: $20 $c0

	ld bc, $20a0                                     ; $728d: $01 $a0 $20
	nop                                              ; $7290: $00
	ld [de], a                                       ; $7291: $12
	ret nz                                           ; $7292: $c0

	ld bc, $01a0                                     ; $7293: $01 $a0 $01
	nop                                              ; $7296: $00
	dec de                                           ; $7297: $1b
	ret nz                                           ; $7298: $c0

	reti                                             ; $7299: $d9


	jp c, $c0d1                                      ; $729a: $da $d1 $c0

	reti                                             ; $729d: $d9


	jp c, $d0d2                                      ; $729e: $da $d2 $d0

	adc e                                            ; $72a1: $8b
	inc bc                                           ; $72a2: $03
	ld [hl+], a                                      ; $72a3: $22
	or b                                             ; $72a4: $b0
	sub l                                            ; $72a5: $95
	db $e4                                           ; $72a6: $e4
	nop                                              ; $72a7: $00
	pop af                                           ; $72a8: $f1

jr_088_72a9:
	nop                                              ; $72a9: $00
	inc hl                                           ; $72aa: $23
	add hl, bc                                       ; $72ab: $09
	dec h                                            ; $72ac: $25
	ret nz                                           ; $72ad: $c0

	ld bc, $01a0                                     ; $72ae: $01 $a0 $01
	nop                                              ; $72b1: $00
	dec h                                            ; $72b2: $25
	ret nz                                           ; $72b3: $c0

	dec bc                                           ; $72b4: $0b
	db $e3                                           ; $72b5: $e3
	nop                                              ; $72b6: $00
	jr nz, @-$3e                                     ; $72b7: $20 $c0

	ld bc, $20a0                                     ; $72b9: $01 $a0 $20
	nop                                              ; $72bc: $00
	ld [de], a                                       ; $72bd: $12
	ret nz                                           ; $72be: $c0

	ld bc, $01a0                                     ; $72bf: $01 $a0 $01
	nop                                              ; $72c2: $00
	ld l, $c0                                        ; $72c3: $2e $c0
	reti                                             ; $72c5: $d9


	ldh [rAUD2HIGH], a                               ; $72c6: $e0 $19
	ret nc                                           ; $72c8: $d0

	ret nc                                           ; $72c9: $d0

	adc e                                            ; $72ca: $8b
	inc bc                                           ; $72cb: $03
	ld [hl+], a                                      ; $72cc: $22
	or b                                             ; $72cd: $b0
	sub [hl]                                         ; $72ce: $96
	db $e4                                           ; $72cf: $e4
	nop                                              ; $72d0: $00
	ret z                                            ; $72d1: $c8

	nop                                              ; $72d2: $00
	ld [hl], $09                                     ; $72d3: $36 $09
	add hl, bc                                       ; $72d5: $09
	ret nc                                           ; $72d6: $d0

	adc e                                            ; $72d7: $8b
	inc bc                                           ; $72d8: $03
	ld [hl+], a                                      ; $72d9: $22
	or b                                             ; $72da: $b0
	sub a                                            ; $72db: $97
	db $e4                                           ; $72dc: $e4
	nop                                              ; $72dd: $00
	ld [bc], a                                       ; $72de: $02
	add hl, bc                                       ; $72df: $09
	or a                                             ; $72e0: $b7
	ret nz                                           ; $72e1: $c0

	ld bc, $01a0                                     ; $72e2: $01 $a0 $01
	nop                                              ; $72e5: $00
	jr c, jr_088_72a9                                ; $72e6: $38 $c1

	ld d, e                                          ; $72e8: $53
	ret nc                                           ; $72e9: $d0

	add a                                            ; $72ea: $87
	and b                                            ; $72eb: $a0
	nop                                              ; $72ec: $00
	ret nz                                           ; $72ed: $c0

	call c, $c1d3                                    ; $72ee: $dc $d3 $c1
	ld d, e                                          ; $72f1: $53
	ret nz                                           ; $72f2: $c0

	inc d                                            ; $72f3: $14
	db $e3                                           ; $72f4: $e3
	nop                                              ; $72f5: $00
	ld h, a                                          ; $72f6: $67
	db $fd                                           ; $72f7: $fd
	adc e                                            ; $72f8: $8b
	add a                                            ; $72f9: $87
	and b                                            ; $72fa: $a0
	nop                                              ; $72fb: $00
	ld bc, $0ed0                                     ; $72fc: $01 $d0 $0e
	ret nz                                           ; $72ff: $c0

	ld bc, $01a0                                     ; $7300: $01 $a0 $01
	nop                                              ; $7303: $00
	ld b, c                                          ; $7304: $41
	ret nz                                           ; $7305: $c0

	ld hl, $d0d1                                     ; $7306: $21 $d1 $d0
	ret nz                                           ; $7309: $c0

	ld [hl+], a                                      ; $730a: $22
	push de                                          ; $730b: $d5
	ret nc                                           ; $730c: $d0

	ld bc, $0ed1                                     ; $730d: $01 $d1 $0e
	ret nz                                           ; $7310: $c0

	ld bc, $01a0                                     ; $7311: $01 $a0 $01
	nop                                              ; $7314: $00
	ld b, a                                          ; $7315: $47
	ret nz                                           ; $7316: $c0

	ld hl, $d1d1                                     ; $7317: $21 $d1 $d1
	ret nz                                           ; $731a: $c0

	ld [hl+], a                                      ; $731b: $22
	push de                                          ; $731c: $d5
	pop de                                           ; $731d: $d1
	ld bc, $0ed2                                     ; $731e: $01 $d2 $0e
	ret nz                                           ; $7321: $c0

	ld bc, $01a0                                     ; $7322: $01 $a0 $01
	nop                                              ; $7325: $00
	ld c, l                                          ; $7326: $4d
	ret nz                                           ; $7327: $c0

	ld hl, $d2d1                                     ; $7328: $21 $d1 $d2
	ret nz                                           ; $732b: $c0

	ld [hl+], a                                      ; $732c: $22
	push de                                          ; $732d: $d5
	jp nc, $d301                                     ; $732e: $d2 $01 $d3

	ld c, $c0                                        ; $7331: $0e $c0
	ld bc, $01a0                                     ; $7333: $01 $a0 $01
	nop                                              ; $7336: $00
	ld d, e                                          ; $7337: $53
	ret nz                                           ; $7338: $c0

	ld hl, $d3d1                                     ; $7339: $21 $d1 $d3
	ret nz                                           ; $733c: $c0

	ld [hl+], a                                      ; $733d: $22
	push de                                          ; $733e: $d5
	db $d3                                           ; $733f: $d3
	ld bc, $0ed7                                     ; $7340: $01 $d7 $0e
	ret nz                                           ; $7343: $c0

	ld bc, $01a0                                     ; $7344: $01 $a0 $01
	nop                                              ; $7347: $00
	ld e, c                                          ; $7348: $59
	ret nz                                           ; $7349: $c0

jr_088_734a:
	ld hl, $d7d1                                     ; $734a: $21 $d1 $d7
	ret nz                                           ; $734d: $c0

	ld [hl+], a                                      ; $734e: $22
	push de                                          ; $734f: $d5
	rst SubAFromHL                                          ; $7350: $d7
	ld bc, $0ed8                                     ; $7351: $01 $d8 $0e
	ret nz                                           ; $7354: $c0

	ld bc, $01a0                                     ; $7355: $01 $a0 $01
	nop                                              ; $7358: $00
	ld e, a                                          ; $7359: $5f
	ret nz                                           ; $735a: $c0

	ld hl, $d8d1                                     ; $735b: $21 $d1 $d8
	ret nz                                           ; $735e: $c0

	ld [hl+], a                                      ; $735f: $22
	push de                                          ; $7360: $d5
	ret c                                            ; $7361: $d8

	ld bc, $0eda                                     ; $7362: $01 $da $0e
	ret nz                                           ; $7365: $c0

	ld bc, $01a0                                     ; $7366: $01 $a0 $01
	nop                                              ; $7369: $00
	ld h, l                                          ; $736a: $65
	ret nz                                           ; $736b: $c0

	ld hl, $dad1                                     ; $736c: $21 $d1 $da
	ret nz                                           ; $736f: $c0

	ld [hl+], a                                      ; $7370: $22
	push de                                          ; $7371: $d5
	jp c, $dd01                                      ; $7372: $da $01 $dd

	ld c, $c0                                        ; $7375: $0e $c0
	ld bc, $01a0                                     ; $7377: $01 $a0 $01
	nop                                              ; $737a: $00
	ld l, e                                          ; $737b: $6b
	ret nz                                           ; $737c: $c0

	ld hl, $ddd1                                     ; $737d: $21 $d1 $dd
	ret nz                                           ; $7380: $c0

	ld [hl+], a                                      ; $7381: $22
	push de                                          ; $7382: $d5
	db $dd                                           ; $7383: $dd
	ret nz                                           ; $7384: $c0

	dec bc                                           ; $7385: $0b
	db $e3                                           ; $7386: $e3
	nop                                              ; $7387: $00
	jr nz, jr_088_734a                               ; $7388: $20 $c0

	ld bc, $20a0                                     ; $738a: $01 $a0 $20
	nop                                              ; $738d: $00
	ld [de], a                                       ; $738e: $12
	ret nz                                           ; $738f: $c0

	ld bc, $01a0                                     ; $7390: $01 $a0 $01
	nop                                              ; $7393: $00
	ld [hl], c                                       ; $7394: $71
	db $e4                                           ; $7395: $e4
	nop                                              ; $7396: $00
	ld [bc], a                                       ; $7397: $02
	add hl, bc                                       ; $7398: $09
	ld e, b                                          ; $7399: $58
	ld h, b                                          ; $739a: $60
	db $fc                                           ; $739b: $fc
	adc e                                            ; $739c: $8b
	inc bc                                           ; $739d: $03
	ld d, $b0                                        ; $739e: $16 $b0
	ld bc, $c00a                                     ; $73a0: $01 $0a $c0
	ld bc, $01a0                                     ; $73a3: $01 $a0 $01
	nop                                              ; $73a6: $00
	ld a, b                                          ; $73a7: $78
	push hl                                          ; $73a8: $e5
	ld h, a                                          ; $73a9: $67
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	ld b, l                                          ; $73ac: $45
	db $fd                                           ; $73ad: $fd
	ld b, e                                          ; $73ae: $43
	adc e                                            ; $73af: $8b
	inc bc                                           ; $73b0: $03
	ld d, $02                                        ; $73b1: $16 $02
	or b                                             ; $73b3: $b0
	inc bc                                           ; $73b4: $03
	inc b                                            ; $73b5: $04
	push hl                                          ; $73b6: $e5
	ld l, b                                          ; $73b7: $68
	ld bc, $02db                                     ; $73b8: $01 $db $02
	or b                                             ; $73bb: $b0
	inc b                                            ; $73bc: $04
	inc b                                            ; $73bd: $04
	push hl                                          ; $73be: $e5
	ld l, c                                          ; $73bf: $69
	ld bc, $025e                                     ; $73c0: $01 $5e $02
	or b                                             ; $73c3: $b0
	dec b                                            ; $73c4: $05
	inc b                                            ; $73c5: $04
	push hl                                          ; $73c6: $e5
	ld l, d                                          ; $73c7: $6a
	ld bc, $0253                                     ; $73c8: $01 $53 $02
	or b                                             ; $73cb: $b0
	ld b, $04                                        ; $73cc: $06 $04
	push hl                                          ; $73ce: $e5
	ld l, e                                          ; $73cf: $6b
	ld bc, $026c                                     ; $73d0: $01 $6c $02
	or b                                             ; $73d3: $b0
	rlca                                             ; $73d4: $07
	inc b                                            ; $73d5: $04
	push hl                                          ; $73d6: $e5
	ld l, h                                          ; $73d7: $6c
	ld bc, $026b                                     ; $73d8: $01 $6b $02
	or b                                             ; $73db: $b0
	ld [$e504], sp                                   ; $73dc: $08 $04 $e5
	ld l, l                                          ; $73df: $6d
	ld bc, $0257                                     ; $73e0: $01 $57 $02
	or b                                             ; $73e3: $b0
	add hl, bc                                       ; $73e4: $09
	inc b                                            ; $73e5: $04
	push hl                                          ; $73e6: $e5
	ld l, [hl]                                       ; $73e7: $6e
	ld bc, $02b4                                     ; $73e8: $01 $b4 $02
	or b                                             ; $73eb: $b0
	ld a, [bc]                                       ; $73ec: $0a
	inc b                                            ; $73ed: $04
	push hl                                          ; $73ee: $e5
	ld l, a                                          ; $73ef: $6f
	ld bc, $bb4c                                     ; $73f0: $01 $4c $bb
	ld [$c009], sp                                   ; $73f3: $08 $09 $c0
	db $db                                           ; $73f6: $db
	pop bc                                           ; $73f7: $c1
	ld e, e                                          ; $73f8: $5b
	pop bc                                           ; $73f9: $c1
	ld e, c                                          ; $73fa: $59
	db $e3                                           ; $73fb: $e3
	nop                                              ; $73fc: $00
	ld l, b                                          ; $73fd: $68
	ret nz                                           ; $73fe: $c0

	inc c                                            ; $73ff: $0c
	ldh [$3c], a                                     ; $7400: $e0 $3c
	pop bc                                           ; $7402: $c1
	dec sp                                           ; $7403: $3b
	ret nz                                           ; $7404: $c0

	add hl, bc                                       ; $7405: $09
	db $e3                                           ; $7406: $e3
	nop                                              ; $7407: $00
	ld l, l                                          ; $7408: $6d
	ret nz                                           ; $7409: $c0

	set 7, l                                         ; $740a: $cb $fd
	ld [hl], e                                       ; $740c: $73
	ret nz                                           ; $740d: $c0

	ldh a, [c]                                       ; $740e: $f2
	ld bc, $10d0                                     ; $740f: $01 $d0 $10
	ret nc                                           ; $7412: $d0

	adc e                                            ; $7413: $8b
	inc bc                                           ; $7414: $03
	ld l, $b0                                        ; $7415: $2e $b0
	sbc b                                            ; $7417: $98
	ret nz                                           ; $7418: $c0

	ld bc, $01a0                                     ; $7419: $01 $a0 $01
	nop                                              ; $741c: $00
	ld bc, $dac0                                     ; $741d: $01 $c0 $da
	push de                                          ; $7420: $d5
	ret c                                            ; $7421: $d8

	ld bc, $0cd1                                     ; $7422: $01 $d1 $0c
	ret nc                                           ; $7425: $d0

	adc e                                            ; $7426: $8b
	inc bc                                           ; $7427: $03
	ld l, $b0                                        ; $7428: $2e $b0
	sbc c                                            ; $742a: $99
	ret nz                                           ; $742b: $c0

	ld bc, $01a0                                     ; $742c: $01 $a0 $01
	nop                                              ; $742f: $00
	dec c                                            ; $7430: $0d
	ld bc, $0cd2                                     ; $7431: $01 $d2 $0c
	ret nc                                           ; $7434: $d0

	adc e                                            ; $7435: $8b
	inc bc                                           ; $7436: $03
	ld l, $b0                                        ; $7437: $2e $b0
	sbc d                                            ; $7439: $9a
	ret nz                                           ; $743a: $c0

	ld bc, $01a0                                     ; $743b: $01 $a0 $01
	nop                                              ; $743e: $00
	dec c                                            ; $743f: $0d
	ld bc, $0cd3                                     ; $7440: $01 $d3 $0c
	ret nc                                           ; $7443: $d0

	adc e                                            ; $7444: $8b
	inc bc                                           ; $7445: $03
	ld l, $b0                                        ; $7446: $2e $b0
	sbc e                                            ; $7448: $9b
	ret nz                                           ; $7449: $c0

	ld bc, $01a0                                     ; $744a: $01 $a0 $01
	nop                                              ; $744d: $00
	jr @+$03                                         ; $744e: $18 $01

	call nc, $d00c                                   ; $7450: $d4 $0c $d0
	adc e                                            ; $7453: $8b
	inc bc                                           ; $7454: $03
	ld l, $b0                                        ; $7455: $2e $b0
	sbc h                                            ; $7457: $9c
	ret nz                                           ; $7458: $c0

	ld bc, $01a0                                     ; $7459: $01 $a0 $01
	nop                                              ; $745c: $00
	jr jr_088_7460                                   ; $745d: $18 $01

	push de                                          ; $745f: $d5

jr_088_7460:
	inc c                                            ; $7460: $0c
	ret nc                                           ; $7461: $d0

	adc e                                            ; $7462: $8b
	inc bc                                           ; $7463: $03
	ld l, $b0                                        ; $7464: $2e $b0
	sbc l                                            ; $7466: $9d
	ret nz                                           ; $7467: $c0

	ld bc, $01a0                                     ; $7468: $01 $a0 $01
	nop                                              ; $746b: $00
	ld e, $01                                        ; $746c: $1e $01
	sub $10                                          ; $746e: $d6 $10
	ret nc                                           ; $7470: $d0

	adc e                                            ; $7471: $8b
	inc bc                                           ; $7472: $03
	ld l, $b0                                        ; $7473: $2e $b0
	sbc [hl]                                         ; $7475: $9e
	ret nz                                           ; $7476: $c0

	ld bc, $01a0                                     ; $7477: $01 $a0 $01
	nop                                              ; $747a: $00
	ld e, $c0                                        ; $747b: $1e $c0
	reti                                             ; $747d: $d9


	push de                                          ; $747e: $d5
	ret c                                            ; $747f: $d8

	ret nz                                           ; $7480: $c0

	ld de, $00e3                                     ; $7481: $11 $e3 $00
	ld l, b                                          ; $7484: $68
	db $fd                                           ; $7485: $fd
	ld c, e                                          ; $7486: $4b
	adc e                                            ; $7487: $8b
	inc bc                                           ; $7488: $03
	ld d, $02                                        ; $7489: $16 $02
	or b                                             ; $748b: $b0
	inc bc                                           ; $748c: $03
	inc b                                            ; $748d: $04
	push hl                                          ; $748e: $e5
	ld l, b                                          ; $748f: $68
	ld [bc], a                                       ; $7490: $02
	add hl, de                                       ; $7491: $19
	ld [bc], a                                       ; $7492: $02
	or b                                             ; $7493: $b0
	inc b                                            ; $7494: $04
	inc b                                            ; $7495: $04
	push hl                                          ; $7496: $e5
	ld l, c                                          ; $7497: $69
	ld bc, $02b4                                     ; $7498: $01 $b4 $02
	or b                                             ; $749b: $b0
	dec b                                            ; $749c: $05
	inc b                                            ; $749d: $04
	push hl                                          ; $749e: $e5
	ld l, d                                          ; $749f: $6a
	ld bc, $0298                                     ; $74a0: $01 $98 $02
	or b                                             ; $74a3: $b0
	ld b, $04                                        ; $74a4: $06 $04
	push hl                                          ; $74a6: $e5
	ld l, e                                          ; $74a7: $6b
	ld bc, $02d1                                     ; $74a8: $01 $d1 $02
	or b                                             ; $74ab: $b0
	rlca                                             ; $74ac: $07
	inc b                                            ; $74ad: $04
	push hl                                          ; $74ae: $e5
	ld l, h                                          ; $74af: $6c
	ld bc, $02d2                                     ; $74b0: $01 $d2 $02
	or b                                             ; $74b3: $b0
	ld [$e504], sp                                   ; $74b4: $08 $04 $e5
	ld l, l                                          ; $74b7: $6d
	ld bc, $02a0                                     ; $74b8: $01 $a0 $02
	or b                                             ; $74bb: $b0
	add hl, bc                                       ; $74bc: $09
	inc b                                            ; $74bd: $04
	push hl                                          ; $74be: $e5
	ld l, [hl]                                       ; $74bf: $6e
	ld [bc], a                                       ; $74c0: $02
	add hl, bc                                       ; $74c1: $09
	ld [bc], a                                       ; $74c2: $02
	or b                                             ; $74c3: $b0
	ld a, [bc]                                       ; $74c4: $0a
	inc b                                            ; $74c5: $04
	push hl                                          ; $74c6: $e5
	ld l, a                                          ; $74c7: $6f
	ld bc, $02ee                                     ; $74c8: $01 $ee $02
	or b                                             ; $74cb: $b0
	ld bc, $e504                                     ; $74cc: $01 $04 $e5
	ld h, l                                          ; $74cf: $65
	ld [bc], a                                       ; $74d0: $02
	dec h                                            ; $74d1: $25
	jp $0908                                         ; $74d2: $c3 $08 $09


	inc l                                            ; $74d5: $2c
	ldh [$03], a                                     ; $74d6: $e0 $03
	ld e, b                                          ; $74d8: $58
	ret nz                                           ; $74d9: $c0

	and l                                            ; $74da: $a5
	ret nz                                           ; $74db: $c0

	ld bc, $02a0                                     ; $74dc: $01 $a0 $02
	nop                                              ; $74df: $00
	ld bc, $8060                                     ; $74e0: $01 $60 $80
	and b                                            ; $74e3: $a0
	nop                                              ; $74e4: $00
	inc c                                            ; $74e5: $0c
	ret nz                                           ; $74e6: $c0

	ld bc, $01a0                                     ; $74e7: $01 $a0 $01
	nop                                              ; $74ea: $00
	inc b                                            ; $74eb: $04
	ret nz                                           ; $74ec: $c0

	ld bc, $02a0                                     ; $74ed: $01 $a0 $02
	nop                                              ; $74f0: $00
	ld a, [bc]                                       ; $74f1: $0a
	inc c                                            ; $74f2: $0c
	ret nz                                           ; $74f3: $c0

	ld bc, $01a0                                     ; $74f4: $01 $a0 $01
	nop                                              ; $74f7: $00
	ld [de], a                                       ; $74f8: $12
	ret nz                                           ; $74f9: $c0

	ld bc, $02a0                                     ; $74fa: $01 $a0 $02
	nop                                              ; $74fd: $00
	dec e                                            ; $74fe: $1d
	db $e4                                           ; $74ff: $e4
	nop                                              ; $7500: $00
	ld [bc], a                                       ; $7501: $02
	ld [$0036], sp                                   ; $7502: $08 $36 $00
	add hl, hl                                       ; $7505: $29
	add hl, bc                                       ; $7506: $09
	dec c                                            ; $7507: $0d
	ret nz                                           ; $7508: $c0

	ld bc, $02a0                                     ; $7509: $01 $a0 $02
	nop                                              ; $750c: $00
	dec l                                            ; $750d: $2d
	ret nz                                           ; $750e: $c0

	ld [hl+], a                                      ; $750f: $22
	pop de                                           ; $7510: $d1
	ret nc                                           ; $7511: $d0

	ldh [rSB], a                                     ; $7512: $e0 $01
	ld a, d                                          ; $7514: $7a
	nop                                              ; $7515: $00
	add hl, sp                                       ; $7516: $39
	add hl, bc                                       ; $7517: $09
	ld hl, $02e1                                     ; $7518: $21 $e1 $02
	inc bc                                           ; $751b: $03
	dec de                                           ; $751c: $1b
	ret nz                                           ; $751d: $c0

	ld bc, $02a0                                     ; $751e: $01 $a0 $02
	nop                                              ; $7521: $00
	dec sp                                           ; $7522: $3b
	pop bc                                           ; $7523: $c1
	ld e, e                                          ; $7524: $5b
	nop                                              ; $7525: $00
	add b                                            ; $7526: $80
	inc bc                                           ; $7527: $03
	ld c, $c0                                        ; $7528: $0e $c0
	inc h                                            ; $752a: $24
	pop de                                           ; $752b: $d1
	ret nc                                           ; $752c: $d0

	ret nz                                           ; $752d: $c0

	dec h                                            ; $752e: $25
	pop de                                           ; $752f: $d1
	ret nc                                           ; $7530: $d0

	ret nz                                           ; $7531: $c0

	inc hl                                           ; $7532: $23
	ldh [rAUD1HIGH], a                               ; $7533: $e0 $14
	ret nc                                           ; $7535: $d0

	push hl                                          ; $7536: $e5
	ld h, l                                          ; $7537: $65
	nop                                              ; $7538: $00
	rst $38                                          ; $7539: $ff
	add hl, bc                                       ; $753a: $09
	ld l, $c0                                        ; $753b: $2e $c0
	rst GetHLinHL                                          ; $753d: $cf
	ldh [rIE], a                                     ; $753e: $e0 $ff
	ret nz                                           ; $7540: $c0

	ld bc, $01a0                                     ; $7541: $01 $a0 $01
	nop                                              ; $7544: $00
	ld b, b                                          ; $7545: $40
	pop hl                                           ; $7546: $e1
	ld [bc], a                                       ; $7547: $02
	ld c, $65                                        ; $7548: $0e $65
	add c                                            ; $754a: $81
	ret nz                                           ; $754b: $c0

	dec de                                           ; $754c: $1b
	ret nc                                           ; $754d: $d0

	ld bc, $04d5                                     ; $754e: $01 $d5 $04
	push hl                                          ; $7551: $e5
	ld h, l                                          ; $7552: $65
	ld [bc], a                                       ; $7553: $02
	ld h, e                                          ; $7554: $63
	nop                                              ; $7555: $00
	inc de                                           ; $7556: $13
	pop bc                                           ; $7557: $c1
	rlca                                             ; $7558: $07
	jp nc, $c0d0                                     ; $7559: $d2 $d0 $c0

	ld bc, $02a0                                     ; $755c: $01 $a0 $02
	nop                                              ; $755f: $00
	ld b, a                                          ; $7560: $47
	ret nz                                           ; $7561: $c0

	ld bc, $01a0                                     ; $7562: $01 $a0 $01
	nop                                              ; $7565: $00
	ld c, e                                          ; $7566: $4b
	db $e4                                           ; $7567: $e4
	nop                                              ; $7568: $00
	ld [bc], a                                       ; $7569: $02
	add hl, bc                                       ; $756a: $09
	and b                                            ; $756b: $a0
	add d                                            ; $756c: $82
	ret nz                                           ; $756d: $c0

	dec de                                           ; $756e: $1b
	ret nc                                           ; $756f: $d0

	ld [bc], a                                       ; $7570: $02
	ret nc                                           ; $7571: $d0

	pop de                                           ; $7572: $d1
	ld e, $c0                                        ; $7573: $1e $c0
	ld bc, $02a0                                     ; $7575: $01 $a0 $02
	nop                                              ; $7578: $00
	ld d, c                                          ; $7579: $51
	ret nz                                           ; $757a: $c0

	ld bc, $01a0                                     ; $757b: $01 $a0 $01
	nop                                              ; $757e: $00
	ld d, l                                          ; $757f: $55
	ret nz                                           ; $7580: $c0

	ld bc, $02a0                                     ; $7581: $01 $a0 $02
	nop                                              ; $7584: $00
	ld e, c                                          ; $7585: $59
	ret nz                                           ; $7586: $c0

	ld bc, $01a0                                     ; $7587: $01 $a0 $01
	nop                                              ; $758a: $00
	ld e, [hl]                                       ; $758b: $5e
	ret nz                                           ; $758c: $c0

	ld bc, $02a0                                     ; $758d: $01 $a0 $02
	nop                                              ; $7590: $00
	ld h, e                                          ; $7591: $63
	ld [bc], a                                       ; $7592: $02
	jp nc, $1ed3                                     ; $7593: $d2 $d3 $1e

	ret nz                                           ; $7596: $c0

	ld bc, $02a0                                     ; $7597: $01 $a0 $02
	nop                                              ; $759a: $00
	ld l, b                                          ; $759b: $68
	ret nz                                           ; $759c: $c0

	ld bc, $01a0                                     ; $759d: $01 $a0 $01
	nop                                              ; $75a0: $00
	ld d, l                                          ; $75a1: $55
	ret nz                                           ; $75a2: $c0

	ld bc, $02a0                                     ; $75a3: $01 $a0 $02
	nop                                              ; $75a6: $00
	ld [hl], b                                       ; $75a7: $70
	ret nz                                           ; $75a8: $c0

	ld bc, $01a0                                     ; $75a9: $01 $a0 $01
	nop                                              ; $75ac: $00
	ld e, [hl]                                       ; $75ad: $5e
	ret nz                                           ; $75ae: $c0

	ld bc, $02a0                                     ; $75af: $01 $a0 $02
	nop                                              ; $75b2: $00
	ld [hl], e                                       ; $75b3: $73
	ld bc, $1ed4                                     ; $75b4: $01 $d4 $1e
	ret nz                                           ; $75b7: $c0

	ld bc, $02a0                                     ; $75b8: $01 $a0 $02
	nop                                              ; $75bb: $00
	ld [hl], a                                       ; $75bc: $77
	ret nz                                           ; $75bd: $c0

	ld bc, $01a0                                     ; $75be: $01 $a0 $01
	nop                                              ; $75c1: $00
	ld d, l                                          ; $75c2: $55
	ret nz                                           ; $75c3: $c0

	ld bc, $02a0                                     ; $75c4: $01 $a0 $02
	nop                                              ; $75c7: $00
	ld a, e                                          ; $75c8: $7b
	ret nz                                           ; $75c9: $c0

	ld bc, $01a0                                     ; $75ca: $01 $a0 $01
	nop                                              ; $75cd: $00
	add c                                            ; $75ce: $81
	ret nz                                           ; $75cf: $c0

	ld bc, $02a0                                     ; $75d0: $01 $a0 $02
	nop                                              ; $75d3: $00
	add l                                            ; $75d4: $85
	ret nz                                           ; $75d5: $c0

	ld bc, $01a0                                     ; $75d6: $01 $a0 $01
	nop                                              ; $75d9: $00
	adc b                                            ; $75da: $88
	ret nz                                           ; $75db: $c0

	ld bc, $02a0                                     ; $75dc: $01 $a0 $02
	nop                                              ; $75df: $00
	adc a                                            ; $75e0: $8f
	ret nz                                           ; $75e1: $c0

	ld bc, $01a0                                     ; $75e2: $01 $a0 $01
	nop                                              ; $75e5: $00
	sbc h                                            ; $75e6: $9c
	ret nz                                           ; $75e7: $c0

	ld bc, $02a0                                     ; $75e8: $01 $a0 $02
	nop                                              ; $75eb: $00
	and a                                            ; $75ec: $a7
	ret nz                                           ; $75ed: $c0

	dec bc                                           ; $75ee: $0b
	db $e3                                           ; $75ef: $e3
	nop                                              ; $75f0: $00
	ld a, a                                          ; $75f1: $7f
	ret nz                                           ; $75f2: $c0

	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	xor c                                            ; $75f5: $a9
	pop hl                                           ; $75f6: $e1
	ld [bc], a                                       ; $75f7: $02
	rlca                                             ; $75f8: $07
	cp a                                             ; $75f9: $bf
	ret nz                                           ; $75fa: $c0

	dec bc                                           ; $75fb: $0b
	db $e3                                           ; $75fc: $e3
	nop                                              ; $75fd: $00
	ld [de], a                                       ; $75fe: $12
	ret nz                                           ; $75ff: $c0

	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	xor h                                            ; $7602: $ac
	ret nz                                           ; $7603: $c0

	ld bc, $01a0                                     ; $7604: $01 $a0 $01
	nop                                              ; $7607: $00
	or c                                             ; $7608: $b1
	db $e4                                           ; $7609: $e4
	nop                                              ; $760a: $00
	ld [bc], a                                       ; $760b: $02
	ld l, $0e                                        ; $760c: $2e $0e
	ret nz                                           ; $760e: $c0

	set 0, b                                         ; $760f: $cb $c0
	ld de, $00e3                                     ; $7611: $11 $e3 $00
	ld e, a                                          ; $7614: $5f
	ldh [rSC], a                                     ; $7615: $e0 $02
	add hl, de                                       ; $7617: $19
	pop bc                                           ; $7618: $c1
	ld e, h                                          ; $7619: $5c
	ret nz                                           ; $761a: $c0

	jp z, $8070                                      ; $761b: $ca $70 $80

	and b                                            ; $761e: $a0
	ld bc, $2800                                     ; $761f: $01 $00 $28
	ld [de], a                                       ; $7622: $12
	ret nz                                           ; $7623: $c0

	ld bc, $02a0                                     ; $7624: $01 $a0 $02
	nop                                              ; $7627: $00
	cp c                                             ; $7628: $b9
	ret nz                                           ; $7629: $c0

	ld bc, $01a0                                     ; $762a: $01 $a0 $01
	nop                                              ; $762d: $00
	add $c0                                          ; $762e: $c6 $c0
	ld bc, $02a0                                     ; $7630: $01 $a0 $02
	nop                                              ; $7633: $00
	adc $4b                                          ; $7634: $ce $4b
	nop                                              ; $7636: $00
	db $d3                                           ; $7637: $d3
	add hl, bc                                       ; $7638: $09
	dec d                                            ; $7639: $15
	pop hl                                           ; $763a: $e1
	ld [bc], a                                       ; $763b: $02
	inc bc                                           ; $763c: $03
	rrca                                             ; $763d: $0f
	ret nz                                           ; $763e: $c0

	ld hl, $d0d1                                     ; $763f: $21 $d1 $d0
	ret nz                                           ; $7642: $c0

	ld [hl+], a                                      ; $7643: $22
	pop de                                           ; $7644: $d1
	ret nc                                           ; $7645: $d0

	ret nz                                           ; $7646: $c0

	ld bc, $02a0                                     ; $7647: $01 $a0 $02
	nop                                              ; $764a: $00
	ret c                                            ; $764b: $d8

	ldh [rP1], a                                     ; $764c: $e0 $00
	ld b, b                                          ; $764e: $40
	nop                                              ; $764f: $00
	rst SubAFromDE                                          ; $7650: $df
	add hl, bc                                       ; $7651: $09
	ld l, $e1                                        ; $7652: $2e $e1
	ld [bc], a                                       ; $7654: $02
	inc bc                                           ; $7655: $03
	dec de                                           ; $7656: $1b
	ret nz                                           ; $7657: $c0

	ld bc, $02a0                                     ; $7658: $01 $a0 $02
	nop                                              ; $765b: $00
	pop hl                                           ; $765c: $e1
	nop                                              ; $765d: $00
	add b                                            ; $765e: $80
	and b                                            ; $765f: $a0
	nop                                              ; $7660: $00
	pop bc                                           ; $7661: $c1
	ld e, e                                          ; $7662: $5b
	ret nz                                           ; $7663: $c0

	inc c                                            ; $7664: $0c
	ldh [$3c], a                                     ; $7665: $e0 $3c
	ret nz                                           ; $7667: $c0

	inc h                                            ; $7668: $24
	pop de                                           ; $7669: $d1
	ret nc                                           ; $766a: $d0

	ret nz                                           ; $766b: $c0

	dec h                                            ; $766c: $25
	pop de                                           ; $766d: $d1
	ret nc                                           ; $766e: $d0

	ret nz                                           ; $766f: $c0

	inc hl                                           ; $7670: $23
	ldh [rAUD1HIGH], a                               ; $7671: $e0 $14
	ret nc                                           ; $7673: $d0

	pop hl                                           ; $7674: $e1
	ld [bc], a                                       ; $7675: $02
	nop                                              ; $7676: $00
	ret c                                            ; $7677: $d8

	ret nz                                           ; $7678: $c0

	ld bc, $02a0                                     ; $7679: $01 $a0 $02
	nop                                              ; $767c: $00
	jp hl                                            ; $767d: $e9


	ldh [rP1], a                                     ; $767e: $e0 $00
	ld c, $ff                                        ; $7680: $0e $ff
	add hl, bc                                       ; $7682: $09
	add hl, bc                                       ; $7683: $09
	ret nz                                           ; $7684: $c0

	ld bc, $02a0                                     ; $7685: $01 $a0 $02
	nop                                              ; $7688: $00
	jp hl                                            ; $7689: $e9


	ldh [rP1], a                                     ; $768a: $e0 $00
	ld [bc], a                                       ; $768c: $02
	ld hl, $59c1                                     ; $768d: $21 $c1 $59
	db $e3                                           ; $7690: $e3
	nop                                              ; $7691: $00
	ld h, [hl]                                       ; $7692: $66
	ret nc                                           ; $7693: $d0

	adc e                                            ; $7694: $8b
	inc bc                                           ; $7695: $03
	ld d, $b0                                        ; $7696: $16 $b0
	inc bc                                           ; $7698: $03
	ret nz                                           ; $7699: $c0

	ld bc, $02a0                                     ; $769a: $01 $a0 $02
	nop                                              ; $769d: $00
	db $ed                                           ; $769e: $ed
	ret nz                                           ; $769f: $c0

	ld bc, $01a0                                     ; $76a0: $01 $a0 $01
	nop                                              ; $76a3: $00
	ldh a, [c]                                       ; $76a4: $f2
	ret nz                                           ; $76a5: $c0

	ld bc, $02a0                                     ; $76a6: $01 $a0 $02
	nop                                              ; $76a9: $00
	or $e5                                           ; $76aa: $f6 $e5
	ld h, [hl]                                       ; $76ac: $66
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	add hl, bc                                       ; $76af: $09
	inc a                                            ; $76b0: $3c
	ldh [rSB], a                                     ; $76b1: $e0 $01
	ld a, l                                          ; $76b3: $7d
	ret nz                                           ; $76b4: $c0

	and l                                            ; $76b5: $a5
	ret nz                                           ; $76b6: $c0

	ld bc, $02a0                                     ; $76b7: $01 $a0 $02
	nop                                              ; $76ba: $00
	ei                                               ; $76bb: $fb
	ret nz                                           ; $76bc: $c0

	ld bc, $01a0                                     ; $76bd: $01 $a0 $01
	nop                                              ; $76c0: $00
	cp $82                                           ; $76c1: $fe $82
	ret nz                                           ; $76c3: $c0

	dec de                                           ; $76c4: $1b
	ret nc                                           ; $76c5: $d0

	ld [bc], a                                       ; $76c6: $02
	ret nc                                           ; $76c7: $d0

	pop de                                           ; $76c8: $d1
	ld b, $c0                                        ; $76c9: $06 $c0
	ld bc, $02a0                                     ; $76cb: $01 $a0 $02
	ld bc, $0203                                     ; $76ce: $01 $03 $02
	jp nc, $06d3                                     ; $76d1: $d2 $d3 $06

	ret nz                                           ; $76d4: $c0

	ld bc, $02a0                                     ; $76d5: $01 $a0 $02
	ld bc, $010e                                     ; $76d8: $01 $0e $01
	call nc, $c006                                   ; $76db: $d4 $06 $c0
	ld bc, $02a0                                     ; $76de: $01 $a0 $02
	ld bc, $c01a                                     ; $76e1: $01 $1a $c0
	ld bc, $01a0                                     ; $76e4: $01 $a0 $01
	ld bc, $e526                                     ; $76e7: $01 $26 $e5
	ld h, a                                          ; $76ea: $67
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	add hl, bc                                       ; $76ed: $09
	ld a, [hl]                                       ; $76ee: $7e
	ldh [rP1], a                                     ; $76ef: $e0 $00
	ld a, l                                          ; $76f1: $7d
	ret nz                                           ; $76f2: $c0

	ld bc, $02a0                                     ; $76f3: $01 $a0 $02
	ld bc, $c02a                                     ; $76f6: $01 $2a $c0
	ld bc, $01a0                                     ; $76f9: $01 $a0 $01
	ld bc, $822d                                     ; $76fc: $01 $2d $82
	adc e                                            ; $76ff: $8b
	inc bc                                           ; $7700: $03
	ld l, $04                                        ; $7701: $2e $04
	or b                                             ; $7703: $b0
	sbc b                                            ; $7704: $98
	or b                                             ; $7705: $b0
	sbc d                                            ; $7706: $9a
	inc c                                            ; $7707: $0c
	ret nz                                           ; $7708: $c0

	ld bc, $02a0                                     ; $7709: $01 $a0 $02
	ld bc, $c02f                                     ; $770c: $01 $2f $c0
	ld bc, $01a0                                     ; $770f: $01 $a0 $01
	ld bc, $063b                                     ; $7712: $01 $3b $06
	or b                                             ; $7715: $b0
	sbc c                                            ; $7716: $99
	or b                                             ; $7717: $b0
	sbc e                                            ; $7718: $9b
	or b                                             ; $7719: $b0
	sbc h                                            ; $771a: $9c
	inc h                                            ; $771b: $24
	ret nz                                           ; $771c: $c0

	ld bc, $02a0                                     ; $771d: $01 $a0 $02
	ld bc, $c040                                     ; $7720: $01 $40 $c0
	ld bc, $01a0                                     ; $7723: $01 $a0 $01
	ld bc, $c04e                                     ; $7726: $01 $4e $c0
	ld bc, $02a0                                     ; $7729: $01 $a0 $02
	ld bc, $c056                                     ; $772c: $01 $56 $c0
	ld bc, $01a0                                     ; $772f: $01 $a0 $01
	ld bc, $c05b                                     ; $7732: $01 $5b $c0
	ld bc, $02a0                                     ; $7735: $01 $a0 $02
	ld bc, $c064                                     ; $7738: $01 $64 $c0
	ld bc, $01a0                                     ; $773b: $01 $a0 $01
	ld bc, $0471                                     ; $773e: $01 $71 $04
	or b                                             ; $7741: $b0
	sbc l                                            ; $7742: $9d
	or b                                             ; $7743: $b0
	sbc [hl]                                         ; $7744: $9e
	inc h                                            ; $7745: $24
	ret nz                                           ; $7746: $c0

	ld bc, $02a0                                     ; $7747: $01 $a0 $02
	ld bc, $c07f                                     ; $774a: $01 $7f $c0
	ld bc, $01a0                                     ; $774d: $01 $a0 $01
	ld bc, $c08d                                     ; $7750: $01 $8d $c0
	ld bc, $02a0                                     ; $7753: $01 $a0 $02
	ld bc, $c092                                     ; $7756: $01 $92 $c0
	ld bc, $01a0                                     ; $7759: $01 $a0 $01
	ld bc, $c09b                                     ; $775c: $01 $9b $c0
	ld bc, $02a0                                     ; $775f: $01 $a0 $02
	ld bc, $c0a1                                     ; $7762: $01 $a1 $c0
	ld bc, $01a0                                     ; $7765: $01 $a0 $01
	ld bc, $e4ad                                     ; $7768: $01 $ad $e4
	nop                                              ; $776b: $00
	rla                                              ; $776c: $17
	inc d                                            ; $776d: $14
	ld h, b                                          ; $776e: $60
	add b                                            ; $776f: $80
	and b                                            ; $7770: $a0
	nop                                              ; $7771: $00
	inc bc                                           ; $7772: $03
	ret nz                                           ; $7773: $c0

	xor c                                            ; $7774: $a9
	ret nc                                           ; $7775: $d0

	dec b                                            ; $7776: $05
	ret nz                                           ; $7777: $c0

	and a                                            ; $7778: $a7
	ret nc                                           ; $7779: $d0

	db $d3                                           ; $777a: $d3
	ret nc                                           ; $777b: $d0

	ret nz                                           ; $777c: $c0

	xor h                                            ; $777d: $ac
	pop bc                                           ; $777e: $c1
	ld e, h                                          ; $777f: $5c
	ret nz                                           ; $7780: $c0

	jp z, $ab09                                      ; $7781: $ca $09 $ab

	pop bc                                           ; $7784: $c1
	ld e, c                                          ; $7785: $59
	db $e3                                           ; $7786: $e3
	nop                                              ; $7787: $00
	ld h, [hl]                                       ; $7788: $66
	add c                                            ; $7789: $81
	ret nz                                           ; $778a: $c0

	dec de                                           ; $778b: $1b
	ret nc                                           ; $778c: $d0

	ld [bc], a                                       ; $778d: $02
	ret nc                                           ; $778e: $d0

	pop de                                           ; $778f: $d1
	ld a, $81                                        ; $7790: $3e $81
	ret nz                                           ; $7792: $c0

	add b                                            ; $7793: $80
	ld bc, $24d3                                     ; $7794: $01 $d3 $24
	ret nz                                           ; $7797: $c0

	ld bc, $02a0                                     ; $7798: $01 $a0 $02
	ld bc, $c0b6                                     ; $779b: $01 $b6 $c0
	ld bc, $01a0                                     ; $779e: $01 $a0 $01
	ld bc, $c0b7                                     ; $77a1: $01 $b7 $c0
	ld bc, $02a0                                     ; $77a4: $01 $a0 $02
	ld bc, $c0bb                                     ; $77a7: $01 $bb $c0
	ld bc, $01a0                                     ; $77aa: $01 $a0 $01
	ld bc, $c0ca                                     ; $77ad: $01 $ca $c0
	ld bc, $02a0                                     ; $77b0: $01 $a0 $02
	ld bc, $c0d1                                     ; $77b3: $01 $d1 $c0
	ld bc, $01a0                                     ; $77b6: $01 $a0 $01
	ld bc, $00de                                     ; $77b9: $01 $de $00
	ld [de], a                                       ; $77bc: $12
	ret nz                                           ; $77bd: $c0

	ld bc, $02a0                                     ; $77be: $01 $a0 $02
	ld bc, $c0ea                                     ; $77c1: $01 $ea $c0
	ld bc, $01a0                                     ; $77c4: $01 $a0 $01
	ld bc, $c0fd                                     ; $77c7: $01 $fd $c0
	ld bc, $02a0                                     ; $77ca: $01 $a0 $02
	ld [bc], a                                       ; $77cd: $02
	ld bc, $d203                                     ; $77ce: $01 $03 $d2
	db $d3                                           ; $77d1: $d3
	call nc, $812c                                   ; $77d2: $d4 $2c $81
	ret nz                                           ; $77d5: $c0

	add b                                            ; $77d6: $80

jr_088_77d7:
	ld bc, $12d3                                     ; $77d7: $01 $d3 $12
	ret nz                                           ; $77da: $c0

	ld bc, $02a0                                     ; $77db: $01 $a0 $02
	ld bc, $c0b6                                     ; $77de: $01 $b6 $c0
	ld bc, $01a0                                     ; $77e1: $01 $a0 $01
	ld bc, $c0b7                                     ; $77e4: $01 $b7 $c0
	ld bc, $02a0                                     ; $77e7: $01 $a0 $02
	ld [bc], a                                       ; $77ea: $02
	inc bc                                           ; $77eb: $03
	nop                                              ; $77ec: $00
	ld b, $c0                                        ; $77ed: $06 $c0
	ld bc, $02a0                                     ; $77ef: $01 $a0 $02
	ld [bc], a                                       ; $77f2: $02
	rla                                              ; $77f3: $17
	ret nz                                           ; $77f4: $c0

	ld bc, $01a0                                     ; $77f5: $01 $a0 $01
	ld [bc], a                                       ; $77f8: $02
	inc hl                                           ; $77f9: $23
	ret nz                                           ; $77fa: $c0

	ld bc, $02a0                                     ; $77fb: $01 $a0 $02
	ld [bc], a                                       ; $77fe: $02
	ld bc, $21c0                                     ; $77ff: $01 $c0 $21
	pop de                                           ; $7802: $d1
	ret nc                                           ; $7803: $d0

	ld h, b                                          ; $7804: $60
	cp $08                                           ; $7805: $fe $08
	db $fc                                           ; $7807: $fc
	ret nz                                           ; $7808: $c0

	ld [hl], h                                       ; $7809: $74
	pop de                                           ; $780a: $d1
	db $fc                                           ; $780b: $fc
	ret nz                                           ; $780c: $c0

	ld [hl], l                                       ; $780d: $75
	pop de                                           ; $780e: $d1
	ld d, $c0                                        ; $780f: $16 $c0
	ld bc, $01a0                                     ; $7811: $01 $a0 $01
	ld [bc], a                                       ; $7814: $02
	jr z, jr_088_77d7                                ; $7815: $28 $c0

	ld bc, $01a0                                     ; $7817: $01 $a0 $01
	ld [bc], a                                       ; $781a: $02
	ld l, $d0                                        ; $781b: $2e $d0
	adc e                                            ; $781d: $8b
	nop                                              ; $781e: $00
	sbc $b0                                          ; $781f: $de $b0
	add l                                            ; $7821: $85
	push hl                                          ; $7822: $e5
	ld b, l                                          ; $7823: $45
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	ld [$cbc0], sp                                   ; $7826: $08 $c0 $cb
	pop bc                                           ; $7829: $c1
	ld e, e                                          ; $782a: $5b
	push hl                                          ; $782b: $e5
	ld bc, $b119                                     ; $782c: $01 $19 $b1
	db $10                                           ; $782f: $10
	ld h, b                                          ; $7830: $60
	add b                                            ; $7831: $80
	and b                                            ; $7832: $a0
	nop                                              ; $7833: $00
	inc bc                                           ; $7834: $03
	ret nz                                           ; $7835: $c0

	xor c                                            ; $7836: $a9
	ret nc                                           ; $7837: $d0

	dec b                                            ; $7838: $05
	ret nz                                           ; $7839: $c0

	and a                                            ; $783a: $a7
	ret nc                                           ; $783b: $d0

	db $d3                                           ; $783c: $d3
	ret nc                                           ; $783d: $d0

	ret nz                                           ; $783e: $c0

	xor h                                            ; $783f: $ac
	jp $2808                                         ; $7840: $c3 $08 $28


	ld d, $e1                                        ; $7843: $16 $e1
	ld [bc], a                                       ; $7845: $02
	ld bc, $c020                                     ; $7846: $01 $20 $c0
	ld bc, $03a0                                     ; $7849: $01 $a0 $03
	nop                                              ; $784c: $00
	ld bc, $01c0                                     ; $784d: $01 $c0 $01
	and b                                            ; $7850: $a0
	ld bc, $0500                                     ; $7851: $01 $00 $05

jr_088_7854:
	ret nz                                           ; $7854: $c0

	ld bc, $03a0                                     ; $7855: $01 $a0 $03
	nop                                              ; $7858: $00
	ld c, $36                                        ; $7859: $0e $36
	nop                                              ; $785b: $00
	rla                                              ; $785c: $17
	add hl, bc                                       ; $785d: $09
	dec c                                            ; $785e: $0d
	ret nz                                           ; $785f: $c0

	ld bc, $03a0                                     ; $7860: $01 $a0 $03
	nop                                              ; $7863: $00
	dec de                                           ; $7864: $1b
	nop                                              ; $7865: $00
	add b                                            ; $7866: $80
	and b                                            ; $7867: $a0
	nop                                              ; $7868: $00
	db $e4                                           ; $7869: $e4
	ld bc, $0003                                     ; $786a: $01 $03 $00
	ld hl, $2109                                     ; $786d: $21 $09 $21
	pop hl                                           ; $7870: $e1
	ld [bc], a                                       ; $7871: $02
	inc bc                                           ; $7872: $03
	dec de                                           ; $7873: $1b
	ret nz                                           ; $7874: $c0

	ld bc, $03a0                                     ; $7875: $01 $a0 $03
	nop                                              ; $7878: $00
	inc hl                                           ; $7879: $23
	pop bc                                           ; $787a: $c1
	ld e, e                                          ; $787b: $5b
	nop                                              ; $787c: $00
	add b                                            ; $787d: $80
	inc bc                                           ; $787e: $03
	rrca                                             ; $787f: $0f
	ret nz                                           ; $7880: $c0

	inc h                                            ; $7881: $24
	pop de                                           ; $7882: $d1
	pop de                                           ; $7883: $d1
	ret nz                                           ; $7884: $c0

	dec h                                            ; $7885: $25
	pop de                                           ; $7886: $d1
	pop de                                           ; $7887: $d1
	ret nz                                           ; $7888: $c0

	inc hl                                           ; $7889: $23
	ldh [rAUD1HIGH], a                               ; $788a: $e0 $14
	pop de                                           ; $788c: $d1
	push hl                                          ; $788d: $e5
	ld h, l                                          ; $788e: $65
	nop                                              ; $788f: $00
	rst $38                                          ; $7890: $ff
	add hl, bc                                       ; $7891: $09
	jr c, jr_088_7854                                ; $7892: $38 $c0

	rst GetHLinHL                                          ; $7894: $cf
	ldh [rIE], a                                     ; $7895: $e0 $ff
	ret nz                                           ; $7897: $c0

	ld bc, $01a0                                     ; $7898: $01 $a0 $01
	nop                                              ; $789b: $00
	jr z, jr_088_78fe                                ; $789c: $28 $60

	add b                                            ; $789e: $80
	nop                                              ; $789f: $00
	ld [hl], h                                       ; $78a0: $74
	inc h                                            ; $78a1: $24
	pop hl                                           ; $78a2: $e1
	ld [bc], a                                       ; $78a3: $02
	ld c, $65                                        ; $78a4: $0e $65
	add c                                            ; $78a6: $81
	ret nz                                           ; $78a7: $c0

	dec de                                           ; $78a8: $1b
	pop de                                           ; $78a9: $d1
	ld bc, $04d5                                     ; $78aa: $01 $d5 $04
	push hl                                          ; $78ad: $e5
	ld h, l                                          ; $78ae: $65
	ld [bc], a                                       ; $78af: $02
	ld h, e                                          ; $78b0: $63
	nop                                              ; $78b1: $00
	inc de                                           ; $78b2: $13
	pop bc                                           ; $78b3: $c1
	rlca                                             ; $78b4: $07
	jp nc, $c0d0                                     ; $78b5: $d2 $d0 $c0

	ld bc, $03a0                                     ; $78b8: $01 $a0 $03
	nop                                              ; $78bb: $00
	cpl                                              ; $78bc: $2f
	ret nz                                           ; $78bd: $c0

	ld bc, $01a0                                     ; $78be: $01 $a0 $01
	nop                                              ; $78c1: $00
	inc sp                                           ; $78c2: $33
	db $e4                                           ; $78c3: $e4
	nop                                              ; $78c4: $00
	rlca                                             ; $78c5: $07
	inc b                                            ; $78c6: $04
	push hl                                          ; $78c7: $e5
	ld h, l                                          ; $78c8: $65
	ld [bc], a                                       ; $78c9: $02
	ld [hl], d                                       ; $78ca: $72
	add hl, bc                                       ; $78cb: $09
	sub e                                            ; $78cc: $93
	add d                                            ; $78cd: $82
	ret nz                                           ; $78ce: $c0

	dec de                                           ; $78cf: $1b
	pop de                                           ; $78d0: $d1
	ld [bc], a                                       ; $78d1: $02
	ret nc                                           ; $78d2: $d0

	pop de                                           ; $78d3: $d1
	ld a, [hl+]                                      ; $78d4: $2a
	ret nz                                           ; $78d5: $c0

	ld bc, $03a0                                     ; $78d6: $01 $a0 $03
	nop                                              ; $78d9: $00
	add hl, sp                                       ; $78da: $39
	ret nz                                           ; $78db: $c0

	ld bc, $01a0                                     ; $78dc: $01 $a0 $01
	nop                                              ; $78df: $00
	dec a                                            ; $78e0: $3d
	ret nz                                           ; $78e1: $c0

	ld bc, $03a0                                     ; $78e2: $01 $a0 $03
	nop                                              ; $78e5: $00
	ld b, c                                          ; $78e6: $41
	ret nz                                           ; $78e7: $c0

	ld bc, $01a0                                     ; $78e8: $01 $a0 $01
	nop                                              ; $78eb: $00
	ld b, [hl]                                       ; $78ec: $46
	ret nz                                           ; $78ed: $c0

	ld bc, $03a0                                     ; $78ee: $01 $a0 $03
	nop                                              ; $78f1: $00
	ld c, h                                          ; $78f2: $4c
	ret nz                                           ; $78f3: $c0

	ld bc, $01a0                                     ; $78f4: $01 $a0 $01
	nop                                              ; $78f7: $00
	ld d, d                                          ; $78f8: $52
	ret nz                                           ; $78f9: $c0

	ld bc, $03a0                                     ; $78fa: $01 $a0 $03
	nop                                              ; $78fd: $00

jr_088_78fe:
	ld e, b                                          ; $78fe: $58
	ld [bc], a                                       ; $78ff: $02
	jp nc, $21d3                                     ; $7900: $d2 $d3 $21

	ret nz                                           ; $7903: $c0

	ld bc, $03a0                                     ; $7904: $01 $a0 $03
	nop                                              ; $7907: $00
	ld h, e                                          ; $7908: $63
	ret nz                                           ; $7909: $c0

	ld bc, $01a0                                     ; $790a: $01 $a0 $01
	nop                                              ; $790d: $00
	ld l, d                                          ; $790e: $6a
	ret nz                                           ; $790f: $c0

	ld bc, $03a0                                     ; $7910: $01 $a0 $03
	nop                                              ; $7913: $00
	ld [hl], b                                       ; $7914: $70
	ret nz                                           ; $7915: $c0

	ld bc, $01a0                                     ; $7916: $01 $a0 $01
	nop                                              ; $7919: $00
	ld b, [hl]                                       ; $791a: $46
	ret nz                                           ; $791b: $c0

	ld bc, $03a0                                     ; $791c: $01 $a0 $03
	nop                                              ; $791f: $00
	ld [hl], l                                       ; $7920: $75
	ldh [rP1], a                                     ; $7921: $e0 $00
	ld a, $01                                        ; $7923: $3e $01
	call nc, $c021                                   ; $7925: $d4 $21 $c0
	ld bc, $03a0                                     ; $7928: $01 $a0 $03
	nop                                              ; $792b: $00
	ld a, c                                          ; $792c: $79
	ret nz                                           ; $792d: $c0

	ld bc, $01a0                                     ; $792e: $01 $a0 $01
	nop                                              ; $7931: $00
	ld l, d                                          ; $7932: $6a
	ret nz                                           ; $7933: $c0

	ld bc, $03a0                                     ; $7934: $01 $a0 $03
	nop                                              ; $7937: $00
	ld a, l                                          ; $7938: $7d
	ret nz                                           ; $7939: $c0

	ld bc, $01a0                                     ; $793a: $01 $a0 $01
	nop                                              ; $793d: $00
	add e                                            ; $793e: $83
	ret nz                                           ; $793f: $c0

	ld bc, $03a0                                     ; $7940: $01 $a0 $03
	nop                                              ; $7943: $00
	adc b                                            ; $7944: $88
	ldh [rP1], a                                     ; $7945: $e0 $00
	ld a, [de]                                       ; $7947: $1a
	ret nz                                           ; $7948: $c0

	ld bc, $01a0                                     ; $7949: $01 $a0 $01
	nop                                              ; $794c: $00
	adc e                                            ; $794d: $8b
	ret nz                                           ; $794e: $c0

	dec bc                                           ; $794f: $0b
	db $e3                                           ; $7950: $e3
	nop                                              ; $7951: $00
	ld a, a                                          ; $7952: $7f
	ret nz                                           ; $7953: $c0

	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	adc [hl]                                         ; $7956: $8e
	ret nz                                           ; $7957: $c0

	ld bc, $01a0                                     ; $7958: $01 $a0 $01
	nop                                              ; $795b: $00
	sub c                                            ; $795c: $91
	db $e4                                           ; $795d: $e4
	nop                                              ; $795e: $00
	rrca                                             ; $795f: $0f
	inc c                                            ; $7960: $0c
	ret nz                                           ; $7961: $c0

	ld bc, $01a0                                     ; $7962: $01 $a0 $01
	nop                                              ; $7965: $00
	ld d, d                                          ; $7966: $52
	ret nz                                           ; $7967: $c0

	ld bc, $03a0                                     ; $7968: $01 $a0 $03
	nop                                              ; $796b: $00
	sbc c                                            ; $796c: $99
	add hl, bc                                       ; $796d: $09
	ld sp, $59c1                                     ; $796e: $31 $c1 $59
	db $e3                                           ; $7971: $e3
	nop                                              ; $7972: $00
	ld h, [hl]                                       ; $7973: $66
	ret nc                                           ; $7974: $d0

	adc e                                            ; $7975: $8b
	inc bc                                           ; $7976: $03
	ld d, $b0                                        ; $7977: $16 $b0
	inc b                                            ; $7979: $04
	ei                                               ; $797a: $fb
	pop af                                           ; $797b: $f1
	add b                                            ; $797c: $80
	and b                                            ; $797d: $a0
	nop                                              ; $797e: $00
	db $10                                           ; $797f: $10
	ret nz                                           ; $7980: $c0

	ld bc, $01a0                                     ; $7981: $01 $a0 $01
	nop                                              ; $7984: $00
	and e                                            ; $7985: $a3
	pop hl                                           ; $7986: $e1
	ld [bc], a                                       ; $7987: $02
	ld bc, $c020                                     ; $7988: $01 $20 $c0
	ld bc, $03a0                                     ; $798b: $01 $a0 $03
	nop                                              ; $798e: $00
	xor c                                            ; $798f: $a9
	ret nz                                           ; $7990: $c0

	ld bc, $01a0                                     ; $7991: $01 $a0 $01
	nop                                              ; $7994: $00
	or c                                             ; $7995: $b1
	ret nz                                           ; $7996: $c0

	ld bc, $03a0                                     ; $7997: $01 $a0 $03
	nop                                              ; $799a: $00
	or a                                             ; $799b: $b7
	push hl                                          ; $799c: $e5
	ld h, [hl]                                       ; $799d: $66
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	add hl, bc                                       ; $79a0: $09
	ld b, a                                          ; $79a1: $47
	pop hl                                           ; $79a2: $e1
	ld [bc], a                                       ; $79a3: $02
	ld bc, $c020                                     ; $79a4: $01 $20 $c0
	ld bc, $03a0                                     ; $79a7: $01 $a0 $03
	nop                                              ; $79aa: $00
	cp d                                             ; $79ab: $ba
	ret nz                                           ; $79ac: $c0

	ld bc, $01a0                                     ; $79ad: $01 $a0 $01
	nop                                              ; $79b0: $00
	pop bc                                           ; $79b1: $c1
	add d                                            ; $79b2: $82
	ret nz                                           ; $79b3: $c0

	dec de                                           ; $79b4: $1b
	pop de                                           ; $79b5: $d1
	ld [bc], a                                       ; $79b6: $02
	ret nc                                           ; $79b7: $d0

	pop de                                           ; $79b8: $d1
	ld [de], a                                       ; $79b9: $12
	ret nz                                           ; $79ba: $c0

	ld bc, $03a0                                     ; $79bb: $01 $a0 $03
	nop                                              ; $79be: $00
	add $c0                                          ; $79bf: $c6 $c0
	ld bc, $01a0                                     ; $79c1: $01 $a0 $01
	nop                                              ; $79c4: $00
	ret nc                                           ; $79c5: $d0

	ret nz                                           ; $79c6: $c0

	ld bc, $03a0                                     ; $79c7: $01 $a0 $03
	nop                                              ; $79ca: $00
	push de                                          ; $79cb: $d5
	ld [bc], a                                       ; $79cc: $02
	jp nc, $09d3                                     ; $79cd: $d2 $d3 $09

	ret nz                                           ; $79d0: $c0

	ld bc, $03a0                                     ; $79d1: $01 $a0 $03
	nop                                              ; $79d4: $00
	ret c                                            ; $79d5: $d8

	ldh [rP1], a                                     ; $79d6: $e0 $00
	ld [de], a                                       ; $79d8: $12
	ld bc, $09d4                                     ; $79d9: $01 $d4 $09
	ret nz                                           ; $79dc: $c0

	ld bc, $03a0                                     ; $79dd: $01 $a0 $03
	nop                                              ; $79e0: $00
	sbc $e0                                          ; $79e1: $de $e0
	nop                                              ; $79e3: $00
	ld b, $e5                                        ; $79e4: $06 $e5
	ld h, a                                          ; $79e6: $67
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	inc c                                            ; $79e9: $0c
	ret nz                                           ; $79ea: $c0

	ld bc, $01a0                                     ; $79eb: $01 $a0 $01
	nop                                              ; $79ee: $00
	ret nc                                           ; $79ef: $d0

	ret nz                                           ; $79f0: $c0

	ld bc, $03a0                                     ; $79f1: $01 $a0 $03
	nop                                              ; $79f4: $00
	db $e4                                           ; $79f5: $e4
	add hl, bc                                       ; $79f6: $09
	add l                                            ; $79f7: $85
	pop hl                                           ; $79f8: $e1
	ld [bc], a                                       ; $79f9: $02
	ld bc, $c028                                     ; $79fa: $01 $28 $c0
	ld bc, $03a0                                     ; $79fd: $01 $a0 $03
	nop                                              ; $7a00: $00
	push hl                                          ; $7a01: $e5
	ret nz                                           ; $7a02: $c0

	ld bc, $01a0                                     ; $7a03: $01 $a0 $01
	nop                                              ; $7a06: $00
	add sp, -$7e                                     ; $7a07: $e8 $82
	adc e                                            ; $7a09: $8b
	inc bc                                           ; $7a0a: $03
	ld l, $02                                        ; $7a0b: $2e $02
	or b                                             ; $7a0d: $b0
	sbc b                                            ; $7a0e: $98
	ld [de], a                                       ; $7a0f: $12
	ret nz                                           ; $7a10: $c0

	ld bc, $03a0                                     ; $7a11: $01 $a0 $03
	nop                                              ; $7a14: $00
	db $eb                                           ; $7a15: $eb
	ret nz                                           ; $7a16: $c0

	ld bc, $01a0                                     ; $7a17: $01 $a0 $01
	nop                                              ; $7a1a: $00
	di                                               ; $7a1b: $f3
	ret nz                                           ; $7a1c: $c0

	ld bc, $03a0                                     ; $7a1d: $01 $a0 $03
	nop                                              ; $7a20: $00
	ld a, [$b008]                                    ; $7a21: $fa $08 $b0
	sbc d                                            ; $7a24: $9a
	or b                                             ; $7a25: $b0
	sbc c                                            ; $7a26: $99
	or b                                             ; $7a27: $b0
	sbc e                                            ; $7a28: $9b
	or b                                             ; $7a29: $b0
	sbc h                                            ; $7a2a: $9c
	inc h                                            ; $7a2b: $24
	ret nz                                           ; $7a2c: $c0

	ld bc, $03a0                                     ; $7a2d: $01 $a0 $03
	ld bc, $c002                                     ; $7a30: $01 $02 $c0
	ld bc, $01a0                                     ; $7a33: $01 $a0 $01
	ld bc, $c004                                     ; $7a36: $01 $04 $c0
	ld bc, $03a0                                     ; $7a39: $01 $a0 $03
	ld bc, $c00c                                     ; $7a3c: $01 $0c $c0
	ld bc, $01a0                                     ; $7a3f: $01 $a0 $01
	ld bc, $c010                                     ; $7a42: $01 $10 $c0
	ld bc, $03a0                                     ; $7a45: $01 $a0 $03
	ld bc, $c019                                     ; $7a48: $01 $19 $c0
	ld bc, $01a0                                     ; $7a4b: $01 $a0 $01
	ld bc, $0422                                     ; $7a4e: $01 $22 $04
	or b                                             ; $7a51: $b0
	sbc l                                            ; $7a52: $9d
	or b                                             ; $7a53: $b0
	sbc [hl]                                         ; $7a54: $9e
	inc h                                            ; $7a55: $24
	ret nz                                           ; $7a56: $c0

	ld bc, $03a0                                     ; $7a57: $01 $a0 $03
	ld bc, $c02f                                     ; $7a5a: $01 $2f $c0
	ld bc, $01a0                                     ; $7a5d: $01 $a0 $01
	ld bc, $c03a                                     ; $7a60: $01 $3a $c0
	ld bc, $03a0                                     ; $7a63: $01 $a0 $03
	ld bc, $c03f                                     ; $7a66: $01 $3f $c0
	ld bc, $01a0                                     ; $7a69: $01 $a0 $01
	ld bc, $c046                                     ; $7a6c: $01 $46 $c0
	ld bc, $03a0                                     ; $7a6f: $01 $a0 $03
	ld bc, $c04d                                     ; $7a72: $01 $4d $c0
	ld bc, $01a0                                     ; $7a75: $01 $a0 $01
	ld bc, $e456                                     ; $7a78: $01 $56 $e4
	nop                                              ; $7a7b: $00
	ld [bc], a                                       ; $7a7c: $02
	add hl, bc                                       ; $7a7d: $09
	or l                                             ; $7a7e: $b5
	pop bc                                           ; $7a7f: $c1
	ld e, c                                          ; $7a80: $59
	db $e3                                           ; $7a81: $e3
	nop                                              ; $7a82: $00
	ld h, [hl]                                       ; $7a83: $66
	add c                                            ; $7a84: $81
	ret nz                                           ; $7a85: $c0

	dec de                                           ; $7a86: $1b
	pop de                                           ; $7a87: $d1
	ld [bc], a                                       ; $7a88: $02
	ret nc                                           ; $7a89: $d0

	pop de                                           ; $7a8a: $d1
	ld e, h                                          ; $7a8b: $5c
	add c                                            ; $7a8c: $81
	ret nz                                           ; $7a8d: $c0

	add b                                            ; $7a8e: $80
	ld bc, $36d3                                     ; $7a8f: $01 $d3 $36
	ret nz                                           ; $7a92: $c0

	ld bc, $03a0                                     ; $7a93: $01 $a0 $03
	ld bc, $c05d                                     ; $7a96: $01 $5d $c0
	ld bc, $01a0                                     ; $7a99: $01 $a0 $01
	ld bc, $c062                                     ; $7a9c: $01 $62 $c0
	ld bc, $03a0                                     ; $7a9f: $01 $a0 $03
	ld bc, $c066                                     ; $7aa2: $01 $66 $c0
	ld bc, $01a0                                     ; $7aa5: $01 $a0 $01
	ld bc, $c076                                     ; $7aa8: $01 $76 $c0
	ld bc, $03a0                                     ; $7aab: $01 $a0 $03
	ld bc, $c082                                     ; $7aae: $01 $82 $c0
	ld bc, $01a0                                     ; $7ab1: $01 $a0 $01
	ld bc, $c087                                     ; $7ab4: $01 $87 $c0
	ld bc, $03a0                                     ; $7ab7: $01 $a0 $03
	ld bc, $c089                                     ; $7aba: $01 $89 $c0
	ld bc, $01a0                                     ; $7abd: $01 $a0 $01
	ld bc, $c095                                     ; $7ac0: $01 $95 $c0
	ld bc, $03a0                                     ; $7ac3: $01 $a0 $03
	ld bc, $009b                                     ; $7ac6: $01 $9b $00
	ld e, $c0                                        ; $7ac9: $1e $c0
	ld bc, $03a0                                     ; $7acb: $01 $a0 $03
	ld bc, $c09d                                     ; $7ace: $01 $9d $c0
	ld bc, $01a0                                     ; $7ad1: $01 $a0 $01
	ld bc, $c0ad                                     ; $7ad4: $01 $ad $c0
	ld bc, $03a0                                     ; $7ad7: $01 $a0 $03
	ld bc, $c0b2                                     ; $7ada: $01 $b2 $c0
	ld bc, $01a0                                     ; $7add: $01 $a0 $01
	ld bc, $c0bc                                     ; $7ae0: $01 $bc $c0
	ld bc, $03a0                                     ; $7ae3: $01 $a0 $03
	ld bc, $00c2                                     ; $7ae6: $01 $c2 $00
	inc l                                            ; $7ae9: $2c
	add c                                            ; $7aea: $81
	ret nz                                           ; $7aeb: $c0

	add b                                            ; $7aec: $80
	ld bc, $12d3                                     ; $7aed: $01 $d3 $12
	ret nz                                           ; $7af0: $c0

	ld bc, $03a0                                     ; $7af1: $01 $a0 $03
	ld bc, $c05d                                     ; $7af4: $01 $5d $c0
	ld bc, $01a0                                     ; $7af7: $01 $a0 $01
	ld bc, $c062                                     ; $7afa: $01 $62 $c0
	ld bc, $03a0                                     ; $7afd: $01 $a0 $03
	ld bc, $00c5                                     ; $7b00: $01 $c5 $00
	ld b, $c0                                        ; $7b03: $06 $c0
	ld bc, $03a0                                     ; $7b05: $01 $a0 $03
	ld bc, $c0d7                                     ; $7b08: $01 $d7 $c0
	ld bc, $01a0                                     ; $7b0b: $01 $a0 $01
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $7b0e: $01 $e4 $c0
	ld bc, $03a0                                     ; $7b11: $01 $a0 $03
	ld bc, $c09b                                     ; $7b14: $01 $9b $c0
	set 0, c                                         ; $7b17: $cb $c1
	ld e, e                                          ; $7b19: $5b
	ret nz                                           ; $7b1a: $c0

	ld hl, $d1d1                                     ; $7b1b: $21 $d1 $d1
	ld b, b                                          ; $7b1e: $40
	add b                                            ; $7b1f: $80
	and b                                            ; $7b20: $a0
	nop                                              ; $7b21: $00
	add c                                            ; $7b22: $81
	adc e                                            ; $7b23: $8b
	ld bc, $0266                                     ; $7b24: $01 $66 $02
	or b                                             ; $7b27: $b0
	inc bc                                           ; $7b28: $03
	inc b                                            ; $7b29: $04
	push hl                                          ; $7b2a: $e5
	ld h, l                                          ; $7b2b: $65
	ld [bc], a                                       ; $7b2c: $02
	ld a, l                                          ; $7b2d: $7d
	nop                                              ; $7b2e: $00
	inc b                                            ; $7b2f: $04
	push hl                                          ; $7b30: $e5
	ld bc, $b119                                     ; $7b31: $01 $19 $b1
	push bc                                          ; $7b34: $c5
	ld [$1628], sp                                   ; $7b35: $08 $28 $16
	pop hl                                           ; $7b38: $e1
	ld [bc], a                                       ; $7b39: $02
	ld bc, $c068                                     ; $7b3a: $01 $68 $c0
	ld bc, $04a0                                     ; $7b3d: $01 $a0 $04
	nop                                              ; $7b40: $00
	ld bc, $01c0                                     ; $7b41: $01 $c0 $01
	and b                                            ; $7b44: $a0
	ld bc, $0200                                     ; $7b45: $01 $00 $02
	ret nz                                           ; $7b48: $c0

	ld bc, $04a0                                     ; $7b49: $01 $a0 $04
	nop                                              ; $7b4c: $00

jr_088_7b4d:
	ld de, $003b                                     ; $7b4d: $11 $3b $00
	ld a, [de]                                       ; $7b50: $1a
	add hl, bc                                       ; $7b51: $09
	ld [de], a                                       ; $7b52: $12
	ret nz                                           ; $7b53: $c0

	ld bc, $04a0                                     ; $7b54: $01 $a0 $04
	nop                                              ; $7b57: $00
	ld e, $c1                                        ; $7b58: $1e $c1
	ld e, c                                          ; $7b5a: $59
	db $e3                                           ; $7b5b: $e3
	nop                                              ; $7b5c: $00
	ld h, [hl]                                       ; $7b5d: $66
	nop                                              ; $7b5e: $00
	add b                                            ; $7b5f: $80
	and b                                            ; $7b60: $a0
	nop                                              ; $7b61: $00
	db $e4                                           ; $7b62: $e4
	ld bc, $000e                                     ; $7b63: $01 $0e $00
	daa                                              ; $7b66: $27
	add hl, bc                                       ; $7b67: $09
	ld hl, $02e1                                     ; $7b68: $21 $e1 $02
	inc bc                                           ; $7b6b: $03
	rra                                              ; $7b6c: $1f
	ret nz                                           ; $7b6d: $c0

	ld bc, $04a0                                     ; $7b6e: $01 $a0 $04
	nop                                              ; $7b71: $00
	add hl, hl                                       ; $7b72: $29
	pop bc                                           ; $7b73: $c1
	ld e, e                                          ; $7b74: $5b
	nop                                              ; $7b75: $00
	add b                                            ; $7b76: $80
	inc bc                                           ; $7b77: $03
	db $10                                           ; $7b78: $10
	ret nz                                           ; $7b79: $c0

	inc h                                            ; $7b7a: $24
	pop de                                           ; $7b7b: $d1
	jp nc, $25c0                                     ; $7b7c: $d2 $c0 $25

	pop de                                           ; $7b7f: $d1
	jp nc, $23c0                                     ; $7b80: $d2 $c0 $23

	ldh [rAUD1HIGH], a                               ; $7b83: $e0 $14
	jp nc, $65e5                                     ; $7b85: $d2 $e5 $65

	nop                                              ; $7b88: $00
	rst $38                                          ; $7b89: $ff
	add hl, bc                                       ; $7b8a: $09
	jr c, jr_088_7b4d                                ; $7b8b: $38 $c0

	rst GetHLinHL                                          ; $7b8d: $cf
	ldh [rIE], a                                     ; $7b8e: $e0 $ff
	ret nz                                           ; $7b90: $c0

	ld bc, $01a0                                     ; $7b91: $01 $a0 $01
	nop                                              ; $7b94: $00
	dec [hl]                                         ; $7b95: $35
	ld h, b                                          ; $7b96: $60
	add b                                            ; $7b97: $80
	nop                                              ; $7b98: $00
	halt                                             ; $7b99: $76
	inc h                                            ; $7b9a: $24
	pop hl                                           ; $7b9b: $e1
	ld [bc], a                                       ; $7b9c: $02
	ld c, $65                                        ; $7b9d: $0e $65
	add c                                            ; $7b9f: $81
	ret nz                                           ; $7ba0: $c0

	dec de                                           ; $7ba1: $1b
	jp nc, $d501                                     ; $7ba2: $d2 $01 $d5

	inc b                                            ; $7ba5: $04
	push hl                                          ; $7ba6: $e5
	ld h, l                                          ; $7ba7: $65
	ld [bc], a                                       ; $7ba8: $02
	ld h, e                                          ; $7ba9: $63
	nop                                              ; $7baa: $00
	inc de                                           ; $7bab: $13
	pop bc                                           ; $7bac: $c1
	rlca                                             ; $7bad: $07
	jp nc, $c0d0                                     ; $7bae: $d2 $d0 $c0

	ld bc, $04a0                                     ; $7bb1: $01 $a0 $04
	nop                                              ; $7bb4: $00
	dec sp                                           ; $7bb5: $3b
	ret nz                                           ; $7bb6: $c0

	ld bc, $01a0                                     ; $7bb7: $01 $a0 $01
	nop                                              ; $7bba: $00
	ccf                                              ; $7bbb: $3f
	db $e4                                           ; $7bbc: $e4
	nop                                              ; $7bbd: $00
	rlca                                             ; $7bbe: $07
	inc b                                            ; $7bbf: $04
	push hl                                          ; $7bc0: $e5
	ld h, l                                          ; $7bc1: $65
	ld [bc], a                                       ; $7bc2: $02
	ld [hl], d                                       ; $7bc3: $72
	add hl, bc                                       ; $7bc4: $09
	add a                                            ; $7bc5: $87
	add d                                            ; $7bc6: $82
	ret nz                                           ; $7bc7: $c0

	dec de                                           ; $7bc8: $1b
	jp nc, $d002                                     ; $7bc9: $d2 $02 $d0

	pop de                                           ; $7bcc: $d1
	ld e, $c0                                        ; $7bcd: $1e $c0
	ld bc, $04a0                                     ; $7bcf: $01 $a0 $04
	nop                                              ; $7bd2: $00
	ld b, l                                          ; $7bd3: $45
	ret nz                                           ; $7bd4: $c0

	ld bc, $01a0                                     ; $7bd5: $01 $a0 $01
	nop                                              ; $7bd8: $00
	ld c, c                                          ; $7bd9: $49
	ret nz                                           ; $7bda: $c0

	ld bc, $04a0                                     ; $7bdb: $01 $a0 $04
	nop                                              ; $7bde: $00
	ld c, l                                          ; $7bdf: $4d
	ret nz                                           ; $7be0: $c0

	ld bc, $01a0                                     ; $7be1: $01 $a0 $01
	nop                                              ; $7be4: $00
	ld d, d                                          ; $7be5: $52
	ret nz                                           ; $7be6: $c0

	ld bc, $04a0                                     ; $7be7: $01 $a0 $04
	nop                                              ; $7bea: $00
	ld d, a                                          ; $7beb: $57
	ld [bc], a                                       ; $7bec: $02
	jp nc, $1ed3                                     ; $7bed: $d2 $d3 $1e

	ret nz                                           ; $7bf0: $c0

	ld bc, $04a0                                     ; $7bf1: $01 $a0 $04
	nop                                              ; $7bf4: $00
	ld e, e                                          ; $7bf5: $5b
	ret nz                                           ; $7bf6: $c0

	ld bc, $01a0                                     ; $7bf7: $01 $a0 $01
	nop                                              ; $7bfa: $00
	ld c, c                                          ; $7bfb: $49
	ret nz                                           ; $7bfc: $c0

	ld bc, $04a0                                     ; $7bfd: $01 $a0 $04
	nop                                              ; $7c00: $00
	ld e, l                                          ; $7c01: $5d
	ret nz                                           ; $7c02: $c0

	ld bc, $01a0                                     ; $7c03: $01 $a0 $01
	nop                                              ; $7c06: $00
	ld d, d                                          ; $7c07: $52
	ret nz                                           ; $7c08: $c0

	ld bc, $04a0                                     ; $7c09: $01 $a0 $04
	nop                                              ; $7c0c: $00
	ld h, e                                          ; $7c0d: $63
	ld bc, $1ed4                                     ; $7c0e: $01 $d4 $1e
	ret nz                                           ; $7c11: $c0

	ld bc, $04a0                                     ; $7c12: $01 $a0 $04
	nop                                              ; $7c15: $00
	ld l, d                                          ; $7c16: $6a
	ret nz                                           ; $7c17: $c0

	ld bc, $01a0                                     ; $7c18: $01 $a0 $01
	nop                                              ; $7c1b: $00
	ld c, c                                          ; $7c1c: $49
	ret nz                                           ; $7c1d: $c0

	ld bc, $04a0                                     ; $7c1e: $01 $a0 $04
	nop                                              ; $7c21: $00
	ld l, [hl]                                       ; $7c22: $6e
	ret nz                                           ; $7c23: $c0

	ld bc, $01a0                                     ; $7c24: $01 $a0 $01
	nop                                              ; $7c27: $00
	ld [hl], d                                       ; $7c28: $72
	ret nz                                           ; $7c29: $c0

	ld bc, $04a0                                     ; $7c2a: $01 $a0 $04
	nop                                              ; $7c2d: $00
	halt                                             ; $7c2e: $76
	ret nz                                           ; $7c2f: $c0

	ld bc, $01a0                                     ; $7c30: $01 $a0 $01
	nop                                              ; $7c33: $00
	ld a, d                                          ; $7c34: $7a
	ret nz                                           ; $7c35: $c0

	ld bc, $04a0                                     ; $7c36: $01 $a0 $04
	nop                                              ; $7c39: $00
	add c                                            ; $7c3a: $81
	ret nz                                           ; $7c3b: $c0

	dec bc                                           ; $7c3c: $0b
	db $e3                                           ; $7c3d: $e3
	nop                                              ; $7c3e: $00
	ld a, a                                          ; $7c3f: $7f
	ret nz                                           ; $7c40: $c0

	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	add l                                            ; $7c43: $85
	ret nz                                           ; $7c44: $c0

	ld bc, $01a0                                     ; $7c45: $01 $a0 $01
	nop                                              ; $7c48: $00
	adc b                                            ; $7c49: $88
	db $e4                                           ; $7c4a: $e4
	nop                                              ; $7c4b: $00
	ld [bc], a                                       ; $7c4c: $02
	add hl, bc                                       ; $7c4d: $09
	ld [hl+], a                                      ; $7c4e: $22
	pop bc                                           ; $7c4f: $c1
	ld e, c                                          ; $7c50: $59
	db $e3                                           ; $7c51: $e3
	nop                                              ; $7c52: $00
	ld h, [hl]                                       ; $7c53: $66
	ld h, b                                          ; $7c54: $60
	add b                                            ; $7c55: $80
	and b                                            ; $7c56: $a0
	nop                                              ; $7c57: $00
	inc b                                            ; $7c58: $04
	pop hl                                           ; $7c59: $e1
	ld [bc], a                                       ; $7c5a: $02
	ld bc, $1068                                     ; $7c5b: $01 $68 $10
	ret nz                                           ; $7c5e: $c0

	ld bc, $01a0                                     ; $7c5f: $01 $a0 $01
	nop                                              ; $7c62: $00
	sub b                                            ; $7c63: $90
	pop hl                                           ; $7c64: $e1
	ld [bc], a                                       ; $7c65: $02
	ld bc, $c068                                     ; $7c66: $01 $68 $c0
	ld bc, $04a0                                     ; $7c69: $01 $a0 $04
	nop                                              ; $7c6c: $00
	sub [hl]                                         ; $7c6d: $96
	db $e4                                           ; $7c6e: $e4
	nop                                              ; $7c6f: $00
	ld [bc], a                                       ; $7c70: $02
	add hl, bc                                       ; $7c71: $09
	ld d, $d0                                        ; $7c72: $16 $d0
	adc e                                            ; $7c74: $8b
	inc bc                                           ; $7c75: $03
	ld d, $b0                                        ; $7c76: $16 $b0
	dec b                                            ; $7c78: $05
	ret nz                                           ; $7c79: $c0

	ld bc, $01a0                                     ; $7c7a: $01 $a0 $01
	nop                                              ; $7c7d: $00
	sbc b                                            ; $7c7e: $98
	ret nz                                           ; $7c7f: $c0

	ld bc, $04a0                                     ; $7c80: $01 $a0 $04
	nop                                              ; $7c83: $00
	sbc [hl]                                         ; $7c84: $9e
	push hl                                          ; $7c85: $e5
	ld h, [hl]                                       ; $7c86: $66
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	add hl, bc                                       ; $7c89: $09
	ld b, e                                          ; $7c8a: $43
	pop hl                                           ; $7c8b: $e1
	ld [bc], a                                       ; $7c8c: $02
	ld bc, $c068                                     ; $7c8d: $01 $68 $c0
	ld bc, $04a0                                     ; $7c90: $01 $a0 $04
	nop                                              ; $7c93: $00
	xor e                                            ; $7c94: $ab
	ret nz                                           ; $7c95: $c0

	ld bc, $01a0                                     ; $7c96: $01 $a0 $01
	nop                                              ; $7c99: $00
	or a                                             ; $7c9a: $b7
	add d                                            ; $7c9b: $82
	ret nz                                           ; $7c9c: $c0

	dec de                                           ; $7c9d: $1b
	jp nc, $d002                                     ; $7c9e: $d2 $02 $d0

	pop de                                           ; $7ca1: $d1
	ld b, $c0                                        ; $7ca2: $06 $c0
	ld bc, $04a0                                     ; $7ca4: $01 $a0 $04
	nop                                              ; $7ca7: $00
	cp e                                             ; $7ca8: $bb
	ld [bc], a                                       ; $7ca9: $02
	jp nc, $06d3                                     ; $7caa: $d2 $d3 $06

	ret nz                                           ; $7cad: $c0

	ld bc, $04a0                                     ; $7cae: $01 $a0 $04
	nop                                              ; $7cb1: $00
	cp l                                             ; $7cb2: $bd
	ld bc, $06d4                                     ; $7cb3: $01 $d4 $06
	ret nz                                           ; $7cb6: $c0

	ld bc, $04a0                                     ; $7cb7: $01 $a0 $04
	nop                                              ; $7cba: $00
	push bc                                          ; $7cbb: $c5
	ret nz                                           ; $7cbc: $c0

	ld bc, $01a0                                     ; $7cbd: $01 $a0 $01
	nop                                              ; $7cc0: $00
	call z, $01c0                                    ; $7cc1: $cc $c0 $01
	and b                                            ; $7cc4: $a0
	inc b                                            ; $7cc5: $04
	nop                                              ; $7cc6: $00
	jp nc, Jump_088_5bc1                             ; $7cc7: $d2 $c1 $5b

	push hl                                          ; $7cca: $e5
	ld h, a                                          ; $7ccb: $67
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	add hl, bc                                       ; $7cce: $09
	sub l                                            ; $7ccf: $95
	pop hl                                           ; $7cd0: $e1
	ld [bc], a                                       ; $7cd1: $02
	ld bc, $8270                                     ; $7cd2: $01 $70 $82
	adc e                                            ; $7cd5: $8b
	inc bc                                           ; $7cd6: $03
	ld l, $04                                        ; $7cd7: $2e $04
	or b                                             ; $7cd9: $b0
	sbc b                                            ; $7cda: $98
	or b                                             ; $7cdb: $b0
	sbc d                                            ; $7cdc: $9a
	inc h                                            ; $7cdd: $24
	add c                                            ; $7cde: $81
	adc e                                            ; $7cdf: $8b
	inc bc                                           ; $7ce0: $03
	ld l, $02                                        ; $7ce1: $2e $02
	or b                                             ; $7ce3: $b0
	sbc b                                            ; $7ce4: $98
	ld b, $c0                                        ; $7ce5: $06 $c0
	ld bc, $01a0                                     ; $7ce7: $01 $a0 $01
	nop                                              ; $7cea: $00
	ret c                                            ; $7ceb: $d8

	ld [bc], a                                       ; $7cec: $02
	or b                                             ; $7ced: $b0
	sbc d                                            ; $7cee: $9a
	ld b, $c0                                        ; $7cef: $06 $c0
	ld bc, $01a0                                     ; $7cf1: $01 $a0 $01
	nop                                              ; $7cf4: $00
	sbc $c0                                          ; $7cf5: $de $c0
	ld bc, $04a0                                     ; $7cf7: $01 $a0 $04
	nop                                              ; $7cfa: $00
	ldh [c], a                                       ; $7cfb: $e2
	ret nz                                           ; $7cfc: $c0

	ld bc, $01a0                                     ; $7cfd: $01 $a0 $01
	nop                                              ; $7d00: $00
	db $eb                                           ; $7d01: $eb
	ld b, $b0                                        ; $7d02: $06 $b0
	sbc c                                            ; $7d04: $99
	or b                                             ; $7d05: $b0
	sbc e                                            ; $7d06: $9b
	or b                                             ; $7d07: $b0
	sbc h                                            ; $7d08: $9c
	ld l, $82                                        ; $7d09: $2e $82
	adc e                                            ; $7d0b: $8b
	inc bc                                           ; $7d0c: $03
	ld l, $02                                        ; $7d0d: $2e $02
	or b                                             ; $7d0f: $b0
	sbc c                                            ; $7d10: $99
	ld b, $c0                                        ; $7d11: $06 $c0
	ld bc, $01a0                                     ; $7d13: $01 $a0 $01
	nop                                              ; $7d16: $00
	rst AddAOntoHL                                          ; $7d17: $ef
	ld [bc], a                                       ; $7d18: $02
	or b                                             ; $7d19: $b0
	sbc e                                            ; $7d1a: $9b
	ld b, $c0                                        ; $7d1b: $06 $c0
	ld bc, $01a0                                     ; $7d1d: $01 $a0 $01
	nop                                              ; $7d20: $00
	db $f4                                           ; $7d21: $f4
	ld [bc], a                                       ; $7d22: $02
	or b                                             ; $7d23: $b0
	sbc h                                            ; $7d24: $9c
	ld b, $c0                                        ; $7d25: $06 $c0
	ld bc, $01a0                                     ; $7d27: $01 $a0 $01
	nop                                              ; $7d2a: $00
	ld sp, hl                                        ; $7d2b: $f9
	ret nz                                           ; $7d2c: $c0

	ld bc, $04a0                                     ; $7d2d: $01 $a0 $04
	nop                                              ; $7d30: $00
	cp $c0                                           ; $7d31: $fe $c0
	ld bc, $01a0                                     ; $7d33: $01 $a0 $01
	ld bc, $0409                                     ; $7d36: $01 $09 $04
	or b                                             ; $7d39: $b0
	sbc l                                            ; $7d3a: $9d
	or b                                             ; $7d3b: $b0
	sbc [hl]                                         ; $7d3c: $9e
	inc h                                            ; $7d3d: $24
	add c                                            ; $7d3e: $81
	adc e                                            ; $7d3f: $8b
	inc bc                                           ; $7d40: $03
	ld l, $02                                        ; $7d41: $2e $02
	or b                                             ; $7d43: $b0
	sbc l                                            ; $7d44: $9d
	ld b, $c0                                        ; $7d45: $06 $c0
	ld bc, $01a0                                     ; $7d47: $01 $a0 $01
	ld bc, $020d                                     ; $7d4a: $01 $0d $02
	or b                                             ; $7d4d: $b0
	sbc [hl]                                         ; $7d4e: $9e
	ld b, $c0                                        ; $7d4f: $06 $c0
	ld bc, $01a0                                     ; $7d51: $01 $a0 $01
	ld bc, $c011                                     ; $7d54: $01 $11 $c0
	ld bc, $04a0                                     ; $7d57: $01 $a0 $04
	ld bc, $c017                                     ; $7d5a: $01 $17 $c0
	ld bc, $01a0                                     ; $7d5d: $01 $a0 $01
	ld bc, $e428                                     ; $7d60: $01 $28 $e4
	nop                                              ; $7d63: $00
	ld [bc], a                                       ; $7d64: $02
	add hl, bc                                       ; $7d65: $09
	xor c                                            ; $7d66: $a9
	pop bc                                           ; $7d67: $c1
	ld e, c                                          ; $7d68: $59
	db $e3                                           ; $7d69: $e3
	nop                                              ; $7d6a: $00
	ld h, [hl]                                       ; $7d6b: $66
	add c                                            ; $7d6c: $81
	ret nz                                           ; $7d6d: $c0

	dec de                                           ; $7d6e: $1b
	jp nc, $d002                                     ; $7d6f: $d2 $02 $d0

	pop de                                           ; $7d72: $d1
	ld c, d                                          ; $7d73: $4a
	add c                                            ; $7d74: $81
	ret nz                                           ; $7d75: $c0

	add b                                            ; $7d76: $80
	ld bc, $24d3                                     ; $7d77: $01 $d3 $24
	ret nz                                           ; $7d7a: $c0

	ld bc, $04a0                                     ; $7d7b: $01 $a0 $04
	ld bc, $c02f                                     ; $7d7e: $01 $2f $c0
	ld bc, $01a0                                     ; $7d81: $01 $a0 $01
	ld bc, $c030                                     ; $7d84: $01 $30 $c0
	ld bc, $04a0                                     ; $7d87: $01 $a0 $04
	ld bc, $c035                                     ; $7d8a: $01 $35 $c0
	ld bc, $01a0                                     ; $7d8d: $01 $a0 $01
	ld bc, $c041                                     ; $7d90: $01 $41 $c0
	ld bc, $04a0                                     ; $7d93: $01 $a0 $04
	ld bc, $c043                                     ; $7d96: $01 $43 $c0
	ld bc, $01a0                                     ; $7d99: $01 $a0 $01
	ld bc, $004b                                     ; $7d9c: $01 $4b $00
	ld e, $c0                                        ; $7d9f: $1e $c0
	ld bc, $04a0                                     ; $7da1: $01 $a0 $04
	ld bc, $c050                                     ; $7da4: $01 $50 $c0
	ld bc, $01a0                                     ; $7da7: $01 $a0 $01
	ld bc, $c057                                     ; $7daa: $01 $57 $c0
	ld bc, $04a0                                     ; $7dad: $01 $a0 $04
	ld bc, $c05a                                     ; $7db0: $01 $5a $c0
	ld bc, $01a0                                     ; $7db3: $01 $a0 $01
	ld bc, $c060                                     ; $7db6: $01 $60 $c0
	ld bc, $04a0                                     ; $7db9: $01 $a0 $04
	ld bc, $0066                                     ; $7dbc: $01 $66 $00
	ld [hl-], a                                      ; $7dbf: $32
	add c                                            ; $7dc0: $81
	ret nz                                           ; $7dc1: $c0

	add b                                            ; $7dc2: $80
	ld bc, $12d3                                     ; $7dc3: $01 $d3 $12
	ret nz                                           ; $7dc6: $c0

	ld bc, $04a0                                     ; $7dc7: $01 $a0 $04
	ld bc, $c02f                                     ; $7dca: $01 $2f $c0
	ld bc, $01a0                                     ; $7dcd: $01 $a0 $01
	ld bc, $c067                                     ; $7dd0: $01 $67 $c0
	ld bc, $04a0                                     ; $7dd3: $01 $a0 $04
	ld bc, $006b                                     ; $7dd6: $01 $6b $00
	ld [de], a                                       ; $7dd9: $12
	ret nz                                           ; $7dda: $c0

	ld bc, $04a0                                     ; $7ddb: $01 $a0 $04
	ld bc, $c074                                     ; $7dde: $01 $74 $c0
	ld bc, $01a0                                     ; $7de1: $01 $a0 $01
	ld bc, $c080                                     ; $7de4: $01 $80 $c0
	ld bc, $04a0                                     ; $7de7: $01 $a0 $04
	ld bc, $c086                                     ; $7dea: $01 $86 $c0
	ld bc, $01a0                                     ; $7ded: $01 $a0 $01
	ld bc, $c04b                                     ; $7df0: $01 $4b $c0
	set 0, c                                         ; $7df3: $cb $c1
	ld e, e                                          ; $7df5: $5b
	ret nz                                           ; $7df6: $c0

	ld hl, $d2d1                                     ; $7df7: $21 $d1 $d2
	ld b, b                                          ; $7dfa: $40
	add b                                            ; $7dfb: $80
	and b                                            ; $7dfc: $a0
	nop                                              ; $7dfd: $00
	add c                                            ; $7dfe: $81
	adc e                                            ; $7dff: $8b
	ld bc, $0266                                     ; $7e00: $01 $66 $02
	or b                                             ; $7e03: $b0
	inc bc                                           ; $7e04: $03
	inc b                                            ; $7e05: $04
	push hl                                          ; $7e06: $e5
	ld h, l                                          ; $7e07: $65
	ld [bc], a                                       ; $7e08: $02
	ld a, l                                          ; $7e09: $7d
	nop                                              ; $7e0a: $00
	inc b                                            ; $7e0b: $04
	push hl                                          ; $7e0c: $e5
	ld bc, $b119                                     ; $7e0d: $01 $19 $b1
	add $08                                          ; $7e10: $c6 $08
	jr z, jr_088_7e2a                                ; $7e12: $28 $16

	pop hl                                           ; $7e14: $e1
	ld [bc], a                                       ; $7e15: $02
	ld bc, $c0b0                                     ; $7e16: $01 $b0 $c0
	ld bc, $05a0                                     ; $7e19: $01 $a0 $05
	nop                                              ; $7e1c: $00
	ld bc, $01c0                                     ; $7e1d: $01 $c0 $01
	and b                                            ; $7e20: $a0
	ld bc, $0500                                     ; $7e21: $01 $00 $05
	ret nz                                           ; $7e24: $c0

	ld bc, $05a0                                     ; $7e25: $01 $a0 $05
	nop                                              ; $7e28: $00

jr_088_7e29:
	dec c                                            ; $7e29: $0d

jr_088_7e2a:
	dec sp                                           ; $7e2a: $3b
	nop                                              ; $7e2b: $00
	rla                                              ; $7e2c: $17
	add hl, bc                                       ; $7e2d: $09
	ld [de], a                                       ; $7e2e: $12
	ret nz                                           ; $7e2f: $c0

	ld bc, $05a0                                     ; $7e30: $01 $a0 $05
	nop                                              ; $7e33: $00
	dec de                                           ; $7e34: $1b
	pop bc                                           ; $7e35: $c1
	ld e, c                                          ; $7e36: $59
	db $e3                                           ; $7e37: $e3
	nop                                              ; $7e38: $00
	ld h, [hl]                                       ; $7e39: $66
	nop                                              ; $7e3a: $00
	add b                                            ; $7e3b: $80
	and b                                            ; $7e3c: $a0
	nop                                              ; $7e3d: $00
	db $e4                                           ; $7e3e: $e4
	ld bc, $0027                                     ; $7e3f: $01 $27 $00
	jr nz, jr_088_7e4d                               ; $7e42: $20 $09

	ld hl, $02e1                                     ; $7e44: $21 $e1 $02
	inc bc                                           ; $7e47: $03
	dec de                                           ; $7e48: $1b
	ret nz                                           ; $7e49: $c0

	ld bc, $05a0                                     ; $7e4a: $01 $a0 $05

jr_088_7e4d:
	nop                                              ; $7e4d: $00
	ld [hl+], a                                      ; $7e4e: $22
	pop bc                                           ; $7e4f: $c1
	ld e, e                                          ; $7e50: $5b
	nop                                              ; $7e51: $00
	add b                                            ; $7e52: $80
	inc bc                                           ; $7e53: $03
	ld de, $24c0                                     ; $7e54: $11 $c0 $24
	pop de                                           ; $7e57: $d1
	db $d3                                           ; $7e58: $d3
	ret nz                                           ; $7e59: $c0

	dec h                                            ; $7e5a: $25
	pop de                                           ; $7e5b: $d1
	db $d3                                           ; $7e5c: $d3
	ret nz                                           ; $7e5d: $c0

	inc hl                                           ; $7e5e: $23
	ldh [rAUD1HIGH], a                               ; $7e5f: $e0 $14
	db $d3                                           ; $7e61: $d3
	push hl                                          ; $7e62: $e5
	ld h, l                                          ; $7e63: $65
	nop                                              ; $7e64: $00
	rst $38                                          ; $7e65: $ff
	add hl, bc                                       ; $7e66: $09
	jr c, jr_088_7e29                                ; $7e67: $38 $c0

	rst GetHLinHL                                          ; $7e69: $cf
	ldh [rIE], a                                     ; $7e6a: $e0 $ff
	ret nz                                           ; $7e6c: $c0

	ld bc, $01a0                                     ; $7e6d: $01 $a0 $01
	nop                                              ; $7e70: $00
	dec l                                            ; $7e71: $2d
	ld h, b                                          ; $7e72: $60
	add b                                            ; $7e73: $80
	nop                                              ; $7e74: $00
	ld a, b                                          ; $7e75: $78
	inc h                                            ; $7e76: $24
	pop hl                                           ; $7e77: $e1
	ld [bc], a                                       ; $7e78: $02
	ld c, $65                                        ; $7e79: $0e $65
	add c                                            ; $7e7b: $81
	ret nz                                           ; $7e7c: $c0

	dec de                                           ; $7e7d: $1b
	db $d3                                           ; $7e7e: $d3
	ld bc, $04d5                                     ; $7e7f: $01 $d5 $04
	push hl                                          ; $7e82: $e5
	ld h, l                                          ; $7e83: $65
	ld [bc], a                                       ; $7e84: $02
	ld h, e                                          ; $7e85: $63
	nop                                              ; $7e86: $00
	inc de                                           ; $7e87: $13
	pop bc                                           ; $7e88: $c1
	rlca                                             ; $7e89: $07
	jp nc, $c0d0                                     ; $7e8a: $d2 $d0 $c0

	ld bc, $05a0                                     ; $7e8d: $01 $a0 $05
	nop                                              ; $7e90: $00
	inc sp                                           ; $7e91: $33
	ret nz                                           ; $7e92: $c0

	ld bc, $01a0                                     ; $7e93: $01 $a0 $01
	nop                                              ; $7e96: $00
	scf                                              ; $7e97: $37
	db $e4                                           ; $7e98: $e4
	nop                                              ; $7e99: $00
	rlca                                             ; $7e9a: $07
	inc b                                            ; $7e9b: $04
	push hl                                          ; $7e9c: $e5
	ld h, l                                          ; $7e9d: $65
	ld [bc], a                                       ; $7e9e: $02
	ld [hl], d                                       ; $7e9f: $72
	add hl, bc                                       ; $7ea0: $09
	sub e                                            ; $7ea1: $93
	add d                                            ; $7ea2: $82
	ret nz                                           ; $7ea3: $c0

	dec de                                           ; $7ea4: $1b
	db $d3                                           ; $7ea5: $d3
	ld [bc], a                                       ; $7ea6: $02
	ret nc                                           ; $7ea7: $d0

	pop de                                           ; $7ea8: $d1
	ld a, [hl+]                                      ; $7ea9: $2a
	ret nz                                           ; $7eaa: $c0

	ld bc, $05a0                                     ; $7eab: $01 $a0 $05
	nop                                              ; $7eae: $00
	dec a                                            ; $7eaf: $3d
	ret nz                                           ; $7eb0: $c0

	ld bc, $01a0                                     ; $7eb1: $01 $a0 $01
	nop                                              ; $7eb4: $00
	ld b, c                                          ; $7eb5: $41
	ret nz                                           ; $7eb6: $c0

	ld bc, $05a0                                     ; $7eb7: $01 $a0 $05
	nop                                              ; $7eba: $00
	ld b, l                                          ; $7ebb: $45
	ret nz                                           ; $7ebc: $c0

	ld bc, $01a0                                     ; $7ebd: $01 $a0 $01
	nop                                              ; $7ec0: $00
	ld c, c                                          ; $7ec1: $49
	ret nz                                           ; $7ec2: $c0

	ld bc, $05a0                                     ; $7ec3: $01 $a0 $05
	nop                                              ; $7ec6: $00
	ld c, a                                          ; $7ec7: $4f
	ret nz                                           ; $7ec8: $c0

	ld bc, $01a0                                     ; $7ec9: $01 $a0 $01
	nop                                              ; $7ecc: $00
	ld d, e                                          ; $7ecd: $53
	ret nz                                           ; $7ece: $c0

	ld bc, $05a0                                     ; $7ecf: $01 $a0 $05
	nop                                              ; $7ed2: $00
	ld e, c                                          ; $7ed3: $59
	ld [bc], a                                       ; $7ed4: $02
	jp nc, $21d3                                     ; $7ed5: $d2 $d3 $21

jr_088_7ed8:
	ret nz                                           ; $7ed8: $c0

	ld bc, $05a0                                     ; $7ed9: $01 $a0 $05
	nop                                              ; $7edc: $00
	ld h, d                                          ; $7edd: $62
	ret nz                                           ; $7ede: $c0

	ld bc, $01a0                                     ; $7edf: $01 $a0 $01
	nop                                              ; $7ee2: $00
	ld b, c                                          ; $7ee3: $41
	ret nz                                           ; $7ee4: $c0

	ld bc, $05a0                                     ; $7ee5: $01 $a0 $05
	nop                                              ; $7ee8: $00
	ld l, b                                          ; $7ee9: $68
	ret nz                                           ; $7eea: $c0

	ld bc, $01a0                                     ; $7eeb: $01 $a0 $01
	nop                                              ; $7eee: $00
	ld l, e                                          ; $7eef: $6b
	ldh [rP1], a                                     ; $7ef0: $e0 $00
	ld b, h                                          ; $7ef2: $44
	ret nz                                           ; $7ef3: $c0

	ld bc, $05a0                                     ; $7ef4: $01 $a0 $05
	nop                                              ; $7ef7: $00
	ld [hl], b                                       ; $7ef8: $70
	ld bc, $21d4                                     ; $7ef9: $01 $d4 $21
	ret nz                                           ; $7efc: $c0

	ld bc, $05a0                                     ; $7efd: $01 $a0 $05
	nop                                              ; $7f00: $00
	ld h, d                                          ; $7f01: $62
	ret nz                                           ; $7f02: $c0

	ld bc, $01a0                                     ; $7f03: $01 $a0 $01
	nop                                              ; $7f06: $00
	ld b, c                                          ; $7f07: $41
	ret nz                                           ; $7f08: $c0

	ld bc, $05a0                                     ; $7f09: $01 $a0 $05
	nop                                              ; $7f0c: $00
	ld a, c                                          ; $7f0d: $79
	ret nz                                           ; $7f0e: $c0

	ld bc, $01a0                                     ; $7f0f: $01 $a0 $01
	nop                                              ; $7f12: $00
	ld a, [hl]                                       ; $7f13: $7e
	ldh [rP1], a                                     ; $7f14: $e0 $00
	jr nz, jr_088_7ed8                               ; $7f16: $20 $c0

	ld bc, $05a0                                     ; $7f18: $01 $a0 $05
	nop                                              ; $7f1b: $00
	add d                                            ; $7f1c: $82
	ret nz                                           ; $7f1d: $c0

	ld bc, $01a0                                     ; $7f1e: $01 $a0 $01
	nop                                              ; $7f21: $00
	add a                                            ; $7f22: $87
	ret nz                                           ; $7f23: $c0

	dec bc                                           ; $7f24: $0b
	db $e3                                           ; $7f25: $e3
	nop                                              ; $7f26: $00
	ld a, a                                          ; $7f27: $7f
	ret nz                                           ; $7f28: $c0

	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	adc e                                            ; $7f2b: $8b
	ret nz                                           ; $7f2c: $c0

	ld bc, $01a0                                     ; $7f2d: $01 $a0 $01
	nop                                              ; $7f30: $00
	adc [hl]                                         ; $7f31: $8e
	db $e4                                           ; $7f32: $e4
	nop                                              ; $7f33: $00
	rrca                                             ; $7f34: $0f
	inc c                                            ; $7f35: $0c
	ret nz                                           ; $7f36: $c0

	ld bc, $05a0                                     ; $7f37: $01 $a0 $05
	nop                                              ; $7f3a: $00
	sub [hl]                                         ; $7f3b: $96
	ret nz                                           ; $7f3c: $c0

	ld bc, $01a0                                     ; $7f3d: $01 $a0 $01
	nop                                              ; $7f40: $00
	ld d, e                                          ; $7f41: $53
	add hl, bc                                       ; $7f42: $09
	ld [hl+], a                                      ; $7f43: $22
	pop bc                                           ; $7f44: $c1
	ld e, c                                          ; $7f45: $59
	db $e3                                           ; $7f46: $e3
	nop                                              ; $7f47: $00
	ld h, [hl]                                       ; $7f48: $66
	ld h, b                                          ; $7f49: $60
	add b                                            ; $7f4a: $80
	and b                                            ; $7f4b: $a0
	nop                                              ; $7f4c: $00
	inc b                                            ; $7f4d: $04
	pop hl                                           ; $7f4e: $e1
	ld [bc], a                                       ; $7f4f: $02
	ld bc, $10b0                                     ; $7f50: $01 $b0 $10
	ret nz                                           ; $7f53: $c0

	ld bc, $01a0                                     ; $7f54: $01 $a0 $01
	nop                                              ; $7f57: $00
	sbc b                                            ; $7f58: $98
	pop hl                                           ; $7f59: $e1
	ld [bc], a                                       ; $7f5a: $02
	ld bc, $c0b0                                     ; $7f5b: $01 $b0 $c0
	ld bc, $05a0                                     ; $7f5e: $01 $a0 $05
	nop                                              ; $7f61: $00
	sbc [hl]                                         ; $7f62: $9e
	db $e4                                           ; $7f63: $e4
	nop                                              ; $7f64: $00
	ld [bc], a                                       ; $7f65: $02
	add hl, bc                                       ; $7f66: $09
	ld d, $d0                                        ; $7f67: $16 $d0
	adc e                                            ; $7f69: $8b
	inc bc                                           ; $7f6a: $03
	ld d, $b0                                        ; $7f6b: $16 $b0
	ld b, $c0                                        ; $7f6d: $06 $c0
	ld bc, $01a0                                     ; $7f6f: $01 $a0 $01
	nop                                              ; $7f72: $00
	and d                                            ; $7f73: $a2
	ret nz                                           ; $7f74: $c0

	ld bc, $05a0                                     ; $7f75: $01 $a0 $05
	nop                                              ; $7f78: $00
	xor b                                            ; $7f79: $a8
	push hl                                          ; $7f7a: $e5
	ld h, [hl]                                       ; $7f7b: $66
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	add hl, bc                                       ; $7f7e: $09
	ld h, e                                          ; $7f7f: $63
	pop hl                                           ; $7f80: $e1
	ld [bc], a                                       ; $7f81: $02
	ld bc, $c0b0                                     ; $7f82: $01 $b0 $c0
	ld bc, $05a0                                     ; $7f85: $01 $a0 $05
	nop                                              ; $7f88: $00
	xor a                                            ; $7f89: $af
	ret nz                                           ; $7f8a: $c0

	ld bc, $01a0                                     ; $7f8b: $01 $a0 $01
	nop                                              ; $7f8e: $00
	or a                                             ; $7f8f: $b7
	add d                                            ; $7f90: $82
	ret nz                                           ; $7f91: $c0

	dec de                                           ; $7f92: $1b
	db $d3                                           ; $7f93: $d3
	ld [bc], a                                       ; $7f94: $02
	ret nc                                           ; $7f95: $d0

	pop de                                           ; $7f96: $d1
	ld b, $c0                                        ; $7f97: $06 $c0
	ld bc, $05a0                                     ; $7f99: $01 $a0 $05
	nop                                              ; $7f9c: $00
	cp h                                             ; $7f9d: $bc
	ld [bc], a                                       ; $7f9e: $02
	jp nc, $2ed3                                     ; $7f9f: $d2 $d3 $2e

	ret nz                                           ; $7fa2: $c0

	ld bc, $05a0                                     ; $7fa3: $01 $a0 $05
	nop                                              ; $7fa6: $00
	ret                                              ; $7fa7: $c9


	add d                                            ; $7fa8: $82
	adc e                                            ; $7fa9: $8b
	inc bc                                           ; $7faa: $03
	ld [hl+], a                                      ; $7fab: $22
	ld [bc], a                                       ; $7fac: $02
	or b                                             ; $7fad: $b0
	sub l                                            ; $7fae: $95
	ld b, $c0                                        ; $7faf: $06 $c0
	ld bc, $01a0                                     ; $7fb1: $01 $a0 $01
	nop                                              ; $7fb4: $00
	jp c, $b002                                      ; $7fb5: $da $02 $b0

	sub [hl]                                         ; $7fb8: $96
	ld b, $c0                                        ; $7fb9: $06 $c0
	ld bc, $01a0                                     ; $7fbb: $01 $a0 $01

jr_088_7fbe:
	nop                                              ; $7fbe: $00
	ldh [rSC], a                                     ; $7fbf: $e0 $02
	or b                                             ; $7fc1: $b0
	sub a                                            ; $7fc2: $97
	ld b, $c0                                        ; $7fc3: $06 $c0
	ld bc, $01a0                                     ; $7fc5: $01 $a0 $01
	nop                                              ; $7fc8: $00
	push hl                                          ; $7fc9: $e5
	ret nz                                           ; $7fca: $c0

	ld bc, $05a0                                     ; $7fcb: $01 $a0 $05
	nop                                              ; $7fce: $00
	db $ec                                           ; $7fcf: $ec
	ld bc, $06d4                                     ; $7fd0: $01 $d4 $06
	ret nz                                           ; $7fd3: $c0

	ld bc, $05a0                                     ; $7fd4: $01 $a0 $05
	nop                                              ; $7fd7: $00
	ld sp, hl                                        ; $7fd8: $f9
	ret nz                                           ; $7fd9: $c0

	ld bc, $01a0                                     ; $7fda: $01 $a0 $01
	ld bc, $e509                                     ; $7fdd: $01 $09 $e5
	ld h, a                                          ; $7fe0: $67
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	add hl, bc                                       ; $7fe3: $09
	add a                                            ; $7fe4: $87
	pop hl                                           ; $7fe5: $e1
	ld [bc], a                                       ; $7fe6: $02
	ld bc, $c0b8                                     ; $7fe7: $01 $b8 $c0
	ld bc, $05a0                                     ; $7fea: $01 $a0 $05
	ld bc, $c00d                                     ; $7fed: $01 $0d $c0
	ld bc, $01a0                                     ; $7ff0: $01 $a0 $01
	ld bc, $8310                                     ; $7ff3: $01 $10 $83
	adc e                                            ; $7ff6: $8b
	inc bc                                           ; $7ff7: $03
	ld l, $02                                        ; $7ff8: $2e $02
	or b                                             ; $7ffa: $b0
	sbc b                                            ; $7ffb: $98
	jr jr_088_7fbe                                   ; $7ffc: $18 $c0

	db $01                                           ; $7ffe: $01
	and b                                            ; $7fff: $a0
