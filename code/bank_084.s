; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $084", ROMX[$4000], BANK[$84]

	add b                                            ; $4000: $80
	ld [bc], a                                       ; $4001: $02
	adc e                                            ; $4002: $8b
	ld b, $c0                                        ; $4003: $06 $c0
	ld bc, $01a0                                     ; $4005: $01 $a0 $01
	nop                                              ; $4008: $00
	ld bc, $c082                                     ; $4009: $01 $82 $c0
	add b                                            ; $400c: $80
	ld bc, $03d3                                     ; $400d: $01 $d3 $03
	db $e4                                           ; $4010: $e4
	ld [bc], a                                       ; $4011: $02
	sbc e                                            ; $4012: $9b
	ld bc, $03d2                                     ; $4013: $01 $d2 $03
	db $e4                                           ; $4016: $e4
	ld bc, $0165                                     ; $4017: $01 $65 $01
	pop de                                           ; $401a: $d1
	inc bc                                           ; $401b: $03
	db $e4                                           ; $401c: $e4
	nop                                              ; $401d: $00
	ld [bc], a                                       ; $401e: $02
	add hl, bc                                       ; $401f: $09
	adc l                                            ; $4020: $8d
	pop bc                                           ; $4021: $c1
	ld e, c                                          ; $4022: $59
	db $e3                                           ; $4023: $e3
	nop                                              ; $4024: $00
	ld b, d                                          ; $4025: $42
	add e                                            ; $4026: $83
	ret nz                                           ; $4027: $c0

	dec de                                           ; $4028: $1b
	jp nc, $d002                                     ; $4029: $d2 $02 $d0

	pop de                                           ; $402c: $d1
	ld [hl+], a                                      ; $402d: $22
	ret nz                                           ; $402e: $c0

	ld hl, $d2d2                                     ; $402f: $21 $d2 $d2
	pop hl                                           ; $4032: $e1
	ld [bc], a                                       ; $4033: $02
	ld bc, $c080                                     ; $4034: $01 $80 $c0
	ld bc, $04a0                                     ; $4037: $01 $a0 $04
	nop                                              ; $403a: $00
	dec c                                            ; $403b: $0d
	ldh [rP1], a                                     ; $403c: $e0 $00
	ld [hl], c                                       ; $403e: $71
	ret nz                                           ; $403f: $c0

	ld bc, $01a0                                     ; $4040: $01 $a0 $01
	nop                                              ; $4043: $00
	db $10                                           ; $4044: $10
	ldh [rP1], a                                     ; $4045: $e0 $00
	add c                                            ; $4047: $81
	ret nz                                           ; $4048: $c0

	ld bc, $04a0                                     ; $4049: $01 $a0 $04

jr_084_404c:
	nop                                              ; $404c: $00
	dec de                                           ; $404d: $1b
	pop bc                                           ; $404e: $c1
	ld e, e                                          ; $404f: $5b
	ld [bc], a                                       ; $4050: $02
	jp nc, $22d3                                     ; $4051: $d2 $d3 $22

	ret nz                                           ; $4054: $c0

	ld hl, $d2d2                                     ; $4055: $21 $d2 $d2
	pop hl                                           ; $4058: $e1
	ld [bc], a                                       ; $4059: $02
	ld bc, $c080                                     ; $405a: $01 $80 $c0
	ld bc, $04a0                                     ; $405d: $01 $a0 $04
	nop                                              ; $4060: $00
	ld e, $e0                                        ; $4061: $1e $e0
	nop                                              ; $4063: $00
	ld c, e                                          ; $4064: $4b
	ret nz                                           ; $4065: $c0

	ld bc, $01a0                                     ; $4066: $01 $a0 $01
	nop                                              ; $4069: $00
	jr nz, jr_084_404c                               ; $406a: $20 $e0

	nop                                              ; $406c: $00
	ld e, e                                          ; $406d: $5b
	ret nz                                           ; $406e: $c0

	ld bc, $04a0                                     ; $406f: $01 $a0 $04
	nop                                              ; $4072: $00
	add hl, hl                                       ; $4073: $29
	pop bc                                           ; $4074: $c1
	ld e, e                                          ; $4075: $5b
	ld bc, $22d4                                     ; $4076: $01 $d4 $22
	ret nz                                           ; $4079: $c0

	ld hl, $d2d2                                     ; $407a: $21 $d2 $d2
	pop hl                                           ; $407d: $e1
	ld [bc], a                                       ; $407e: $02
	ld bc, $c080                                     ; $407f: $01 $80 $c0
	ld bc, $04a0                                     ; $4082: $01 $a0 $04
	nop                                              ; $4085: $00
	dec l                                            ; $4086: $2d
	ldh [rP1], a                                     ; $4087: $e0 $00
	ld h, $c0                                        ; $4089: $26 $c0
	ld bc, $01a0                                     ; $408b: $01 $a0 $01
	nop                                              ; $408e: $00
	jr nz, @-$1e                                     ; $408f: $20 $e0

	nop                                              ; $4091: $00
	ld [hl], $c0                                     ; $4092: $36 $c0
	ld bc, $04a0                                     ; $4094: $01 $a0 $04
	nop                                              ; $4097: $00
	jr nc, @-$3d                                     ; $4098: $30 $c1

	ld e, e                                          ; $409a: $5b
	ld bc, $0cd5                                     ; $409b: $01 $d5 $0c
	ret nz                                           ; $409e: $c0

	ld bc, $01a0                                     ; $409f: $01 $a0 $01
	nop                                              ; $40a2: $00
	ld [hl-], a                                      ; $40a3: $32
	ret nz                                           ; $40a4: $c0

	ld bc, $01a0                                     ; $40a5: $01 $a0 $01
	nop                                              ; $40a8: $00
	ccf                                              ; $40a9: $3f
	push hl                                          ; $40aa: $e5
	inc sp                                           ; $40ab: $33
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	jr @-$3e                                         ; $40ae: $18 $c0

	ld bc, $01a0                                     ; $40b0: $01 $a0 $01
	nop                                              ; $40b3: $00
	ld c, a                                          ; $40b4: $4f
	ret nz                                           ; $40b5: $c0

	ld bc, $04a0                                     ; $40b6: $01 $a0 $04
	nop                                              ; $40b9: $00
	ld d, h                                          ; $40ba: $54
	ret nz                                           ; $40bb: $c0

	ld bc, $01a0                                     ; $40bc: $01 $a0 $01
	nop                                              ; $40bf: $00
	ld e, b                                          ; $40c0: $58
	ret nz                                           ; $40c1: $c0

	ld bc, $04a0                                     ; $40c2: $01 $a0 $04
	nop                                              ; $40c5: $00
	ld h, b                                          ; $40c6: $60
	rrca                                             ; $40c7: $0f
	ret nz                                           ; $40c8: $c0

	ld bc, $04a0                                     ; $40c9: $01 $a0 $04
	nop                                              ; $40cc: $00
	ld l, [hl]                                       ; $40cd: $6e
	ldh [rP1], a                                     ; $40ce: $e0 $00
	ld [$01c0], sp                                   ; $40d0: $08 $c0 $01
	and b                                            ; $40d3: $a0
	ld bc, $7000                                     ; $40d4: $01 $00 $70
	and h                                            ; $40d7: $a4
	pop hl                                           ; $40d8: $e1
	ld [hl-], a                                      ; $40d9: $32
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	pop hl                                           ; $40dc: $e1
	ld [bc], a                                       ; $40dd: $02
	ld bc, $6388                                     ; $40de: $01 $88 $63
	ld hl, sp-$79                                    ; $40e1: $f8 $87
	ld [bc], a                                       ; $40e3: $02
	sub c                                            ; $40e4: $91
	ldh [rAUD3HIGH], a                               ; $40e5: $e0 $1e
	ld a, [de]                                       ; $40e7: $1a
	pop hl                                           ; $40e8: $e1
	ld [bc], a                                       ; $40e9: $02
	inc bc                                           ; $40ea: $03
	rra                                              ; $40eb: $1f
	ret nz                                           ; $40ec: $c0

	dec h                                            ; $40ed: $25
	pop de                                           ; $40ee: $d1
	jp nc, $01c0                                     ; $40ef: $d2 $c0 $01

	and b                                            ; $40f2: $a0
	inc b                                            ; $40f3: $04
	nop                                              ; $40f4: $00
	ld [hl], h                                       ; $40f5: $74
	ret nz                                           ; $40f6: $c0

	ld bc, $01a0                                     ; $40f7: $01 $a0 $01
	nop                                              ; $40fa: $00
	ld a, c                                          ; $40fb: $79
	ret nz                                           ; $40fc: $c0

	ld bc, $04a0                                     ; $40fd: $01 $a0 $04
	nop                                              ; $4100: $00
	add a                                            ; $4101: $87
	ld hl, sp-$79                                    ; $4102: $f8 $87
	ld [bc], a                                       ; $4104: $02
	sub c                                            ; $4105: $91
	ldh [rDMA], a                                    ; $4106: $e0 $46
	ld d, $e1                                        ; $4108: $16 $e1
	ld [bc], a                                       ; $410a: $02
	inc bc                                           ; $410b: $03
	rla                                              ; $410c: $17
	ret nz                                           ; $410d: $c0

	ld bc, $04a0                                     ; $410e: $01 $a0 $04
	nop                                              ; $4111: $00
	adc [hl]                                         ; $4112: $8e
	ret nz                                           ; $4113: $c0

	ld bc, $01a0                                     ; $4114: $01 $a0 $01
	nop                                              ; $4117: $00
	sbc c                                            ; $4118: $99
	ret nz                                           ; $4119: $c0

	ld bc, $04a0                                     ; $411a: $01 $a0 $04
	nop                                              ; $411d: $00
	and l                                            ; $411e: $a5
	ld hl, sp-$79                                    ; $411f: $f8 $87
	ld [bc], a                                       ; $4121: $02
	sub c                                            ; $4122: $91
	ldh [$5a], a                                     ; $4123: $e0 $5a
	ld a, [de]                                       ; $4125: $1a
	pop hl                                           ; $4126: $e1
	ld [bc], a                                       ; $4127: $02
	inc bc                                           ; $4128: $03
	rla                                              ; $4129: $17
	ret nz                                           ; $412a: $c0

	ld bc, $04a0                                     ; $412b: $01 $a0 $04
	nop                                              ; $412e: $00
	cp b                                             ; $412f: $b8
	ret nz                                           ; $4130: $c0

	ld bc, $01a0                                     ; $4131: $01 $a0 $01
	nop                                              ; $4134: $00
	cp l                                             ; $4135: $bd
	pop hl                                           ; $4136: $e1
	ld [bc], a                                       ; $4137: $02
	inc bc                                           ; $4138: $03
	inc de                                           ; $4139: $13
	ret nz                                           ; $413a: $c0

	ld bc, $04a0                                     ; $413b: $01 $a0 $04
	nop                                              ; $413e: $00
	cp a                                             ; $413f: $bf
	db $fc                                           ; $4140: $fc
	add a                                            ; $4141: $87
	ld [bc], a                                       ; $4142: $02
	sub c                                            ; $4143: $91
	ldh [$64], a                                     ; $4144: $e0 $64
	ld e, $e1                                        ; $4146: $1e $e1
	ld [bc], a                                       ; $4148: $02
	inc bc                                           ; $4149: $03
	dec de                                           ; $414a: $1b
	ret nz                                           ; $414b: $c0

	ld [hl+], a                                      ; $414c: $22
	pop de                                           ; $414d: $d1
	jp nc, $01c0                                     ; $414e: $d2 $c0 $01

	and b                                            ; $4151: $a0
	inc b                                            ; $4152: $04
	nop                                              ; $4153: $00
	rst GetHLinHL                                          ; $4154: $cf
	ret nz                                           ; $4155: $c0

	ld bc, $01a0                                     ; $4156: $01 $a0 $01
	nop                                              ; $4159: $00
	push de                                          ; $415a: $d5
	pop hl                                           ; $415b: $e1
	ld [bc], a                                       ; $415c: $02
	inc bc                                           ; $415d: $03
	rra                                              ; $415e: $1f
	ret nz                                           ; $415f: $c0

	ld bc, $04a0                                     ; $4160: $01 $a0 $04
	nop                                              ; $4163: $00
	rst SubAFromHL                                          ; $4164: $d7
	ld d, $e1                                        ; $4165: $16 $e1
	ld [bc], a                                       ; $4167: $02
	inc bc                                           ; $4168: $03
	inc de                                           ; $4169: $13
	ret nz                                           ; $416a: $c0

	ld bc, $04a0                                     ; $416b: $01 $a0 $04
	nop                                              ; $416e: $00
	db $e3                                           ; $416f: $e3
	ret nz                                           ; $4170: $c0

	ld bc, $01a0                                     ; $4171: $01 $a0 $01
	nop                                              ; $4174: $00
	rst SubAFromBC                                          ; $4175: $e7
	ret nz                                           ; $4176: $c0

	ld bc, $04a0                                     ; $4177: $01 $a0 $04
	nop                                              ; $417a: $00
	jp hl                                            ; $417b: $e9


	add hl, bc                                       ; $417c: $09
	pop bc                                           ; $417d: $c1
	ld a, [de]                                       ; $417e: $1a
	pop bc                                           ; $417f: $c1
	ld e, c                                          ; $4180: $59
	db $e3                                           ; $4181: $e3
	nop                                              ; $4182: $00
	ld e, h                                          ; $4183: $5c
	add e                                            ; $4184: $83
	ret nz                                           ; $4185: $c0

	dec de                                           ; $4186: $1b
	jp nc, $d002                                     ; $4187: $d2 $02 $d0

	pop de                                           ; $418a: $d1
	ld e, a                                          ; $418b: $5f
	ret nz                                           ; $418c: $c0

	ld hl, $d2d2                                     ; $418d: $21 $d2 $d2
	pop hl                                           ; $4190: $e1
	ld [bc], a                                       ; $4191: $02
	ld bc, $c080                                     ; $4192: $01 $80 $c0
	ld bc, $04a0                                     ; $4195: $01 $a0 $04
	nop                                              ; $4198: $00
	dec c                                            ; $4199: $0d
	ldh [rP1], a                                     ; $419a: $e0 $00
	cp $c0                                           ; $419c: $fe $c0
	ld bc, $04a0                                     ; $419e: $01 $a0 $04
	nop                                              ; $41a1: $00
	ld sp, hl                                        ; $41a2: $f9
	pop hl                                           ; $41a3: $e1
	ld [hl-], a                                      ; $41a4: $32
	nop                                              ; $41a5: $00
	ld l, l                                          ; $41a6: $6d
	ret nz                                           ; $41a7: $c0

	ld bc, $04a0                                     ; $41a8: $01 $a0 $04
	nop                                              ; $41ab: $00
	db $fd                                           ; $41ac: $fd
	ret nz                                           ; $41ad: $c0

	ld bc, $01a0                                     ; $41ae: $01 $a0 $01
	ld bc, $c005                                     ; $41b1: $01 $05 $c0
	ld bc, $04a0                                     ; $41b4: $01 $a0 $04
	ld bc, $c00c                                     ; $41b7: $01 $0c $c0
	ld bc, $01a0                                     ; $41ba: $01 $a0 $01
	ld bc, $c011                                     ; $41bd: $01 $11 $c0
	ld bc, $04a0                                     ; $41c0: $01 $a0 $04
	ld bc, $c017                                     ; $41c3: $01 $17 $c0
	ld bc, $01a0                                     ; $41c6: $01 $a0 $01
	ld bc, $c027                                     ; $41c9: $01 $27 $c0
	ld bc, $04a0                                     ; $41cc: $01 $a0 $04
	ld bc, $c030                                     ; $41cf: $01 $30 $c0
	ld bc, $01a0                                     ; $41d2: $01 $a0 $01
	ld bc, $c040                                     ; $41d5: $01 $40 $c0
	ld bc, $04a0                                     ; $41d8: $01 $a0 $04
	ld bc, $c04c                                     ; $41db: $01 $4c $c0
	ld bc, $01a0                                     ; $41de: $01 $a0 $01
	ld bc, $c055                                     ; $41e1: $01 $55 $c0
	ld bc, $04a0                                     ; $41e4: $01 $a0 $04
	ld bc, $c159                                     ; $41e7: $01 $59 $c1
	ld e, e                                          ; $41ea: $5b
	ld [bc], a                                       ; $41eb: $02
	jp nc, $53d3                                     ; $41ec: $d2 $d3 $53

	ret nz                                           ; $41ef: $c0

	ld hl, $d2d2                                     ; $41f0: $21 $d2 $d2
	pop hl                                           ; $41f3: $e1
	ld [bc], a                                       ; $41f4: $02
	ld bc, $c080                                     ; $41f5: $01 $80 $c0
	ld bc, $04a0                                     ; $41f8: $01 $a0 $04
	nop                                              ; $41fb: $00
	ld e, $e0                                        ; $41fc: $1e $e0
	nop                                              ; $41fe: $00
	sbc e                                            ; $41ff: $9b
	ret nz                                           ; $4200: $c0

	ld bc, $04a0                                     ; $4201: $01 $a0 $04
	ld bc, $e161                                     ; $4204: $01 $61 $e1
	ld [hl-], a                                      ; $4207: $32
	nop                                              ; $4208: $00
	ld l, l                                          ; $4209: $6d
	ret nz                                           ; $420a: $c0

	ld bc, $04a0                                     ; $420b: $01 $a0 $04
	ld bc, $c067                                     ; $420e: $01 $67 $c0
	ld bc, $01a0                                     ; $4211: $01 $a0 $01
	ld bc, $c06b                                     ; $4214: $01 $6b $c0
	ld bc, $04a0                                     ; $4217: $01 $a0 $04
	ld bc, $c071                                     ; $421a: $01 $71 $c0
	ld bc, $01a0                                     ; $421d: $01 $a0 $01
	ld bc, $c073                                     ; $4220: $01 $73 $c0
	ld bc, $04a0                                     ; $4223: $01 $a0 $04
	ld bc, $c07a                                     ; $4226: $01 $7a $c0
	ld bc, $01a0                                     ; $4229: $01 $a0 $01
	ld bc, $c07b                                     ; $422c: $01 $7b $c0
	ld bc, $04a0                                     ; $422f: $01 $a0 $04
	ld bc, $c07f                                     ; $4232: $01 $7f $c0
	ld bc, $01a0                                     ; $4235: $01 $a0 $01
	ld bc, $c090                                     ; $4238: $01 $90 $c0
	ld bc, $04a0                                     ; $423b: $01 $a0 $04
	ld bc, $c159                                     ; $423e: $01 $59 $c1
	ld e, e                                          ; $4241: $5b
	ld bc, $3bd4                                     ; $4242: $01 $d4 $3b
	ret nz                                           ; $4245: $c0

	ld hl, $d2d2                                     ; $4246: $21 $d2 $d2
	pop hl                                           ; $4249: $e1
	ld [bc], a                                       ; $424a: $02
	ld bc, $c080                                     ; $424b: $01 $80 $c0
	ld bc, $04a0                                     ; $424e: $01 $a0 $04
	nop                                              ; $4251: $00
	dec l                                            ; $4252: $2d
	ldh [rP1], a                                     ; $4253: $e0 $00
	ld b, l                                          ; $4255: $45
	ret nz                                           ; $4256: $c0

	ld bc, $04a0                                     ; $4257: $01 $a0 $04
	ld bc, $e195                                     ; $425a: $01 $95 $e1
	ld [hl-], a                                      ; $425d: $32
	nop                                              ; $425e: $00
	ld l, l                                          ; $425f: $6d
	ret nz                                           ; $4260: $c0

	ld bc, $04a0                                     ; $4261: $01 $a0 $04
	ld bc, $c067                                     ; $4264: $01 $67 $c0
	ld bc, $01a0                                     ; $4267: $01 $a0 $01
	ld bc, $c06b                                     ; $426a: $01 $6b $c0
	ld bc, $04a0                                     ; $426d: $01 $a0 $04
	ld bc, $c09d                                     ; $4270: $01 $9d $c0
	ld bc, $01a0                                     ; $4273: $01 $a0 $01
	ld bc, $c0ac                                     ; $4276: $01 $ac $c0
	ld bc, $04a0                                     ; $4279: $01 $a0 $04
	ld bc, $c159                                     ; $427c: $01 $59 $c1
	ld e, e                                          ; $427f: $5b
	ld bc, $12d5                                     ; $4280: $01 $d5 $12
	ret nz                                           ; $4283: $c0

	ld bc, $01a0                                     ; $4284: $01 $a0 $01
	ld bc, $e1b1                                     ; $4287: $01 $b1 $e1
	ld [hl-], a                                      ; $428a: $32
	nop                                              ; $428b: $00
	ld c, l                                          ; $428c: $4d
	ret nz                                           ; $428d: $c0

	jp z, $01c0                                      ; $428e: $ca $c0 $01

	and b                                            ; $4291: $a0
	ld bc, $ba01                                     ; $4292: $01 $01 $ba
	push hl                                          ; $4295: $e5
	inc sp                                           ; $4296: $33
	nop                                              ; $4297: $00
	nop                                              ; $4298: $00
	ld [de], a                                       ; $4299: $12
	ret nz                                           ; $429a: $c0

	ld bc, $01a0                                     ; $429b: $01 $a0 $01
	nop                                              ; $429e: $00
	ld c, a                                          ; $429f: $4f
	ret nz                                           ; $42a0: $c0

	ld bc, $04a0                                     ; $42a1: $01 $a0 $04
	ld bc, $c0c1                                     ; $42a4: $01 $c1 $c0
	ld bc, $01a0                                     ; $42a7: $01 $a0 $01
	ld bc, $09cd                                     ; $42aa: $01 $cd $09
	pop bc                                           ; $42ad: $c1
	ld [bc], a                                       ; $42ae: $02
	pop bc                                           ; $42af: $c1
	ld e, c                                          ; $42b0: $59
	db $e3                                           ; $42b1: $e3
	nop                                              ; $42b2: $00
	ld e, h                                          ; $42b3: $5c
	add e                                            ; $42b4: $83
	ret nz                                           ; $42b5: $c0

	dec de                                           ; $42b6: $1b
	jp nc, $d002                                     ; $42b7: $d2 $02 $d0

	pop de                                           ; $42ba: $d1
	ld d, e                                          ; $42bb: $53
	ret nz                                           ; $42bc: $c0

	ld hl, $d2d2                                     ; $42bd: $21 $d2 $d2
	pop hl                                           ; $42c0: $e1
	ld [bc], a                                       ; $42c1: $02
	ld bc, $c080                                     ; $42c2: $01 $80 $c0
	ld bc, $04a0                                     ; $42c5: $01 $a0 $04
	nop                                              ; $42c8: $00
	dec c                                            ; $42c9: $0d
	ldh [rP1], a                                     ; $42ca: $e0 $00
	and $c0                                          ; $42cc: $e6 $c0
	ld bc, $04a0                                     ; $42ce: $01 $a0 $04
	ld bc, $e1d8                                     ; $42d1: $01 $d8 $e1
	ld [hl-], a                                      ; $42d4: $32
	nop                                              ; $42d5: $00
	call nz, $01c0                                   ; $42d6: $c4 $c0 $01
	and b                                            ; $42d9: $a0
	inc b                                            ; $42da: $04
	ld bc, wGenericTileDataDest                                     ; $42db: $01 $e2 $c0
	ld bc, $01a0                                     ; $42de: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $42e1: $01 $e7 $c0
	ld bc, $04a0                                     ; $42e4: $01 $a0 $04
	ld bc, $c0f1                                     ; $42e7: $01 $f1 $c0
	ld bc, $01a0                                     ; $42ea: $01 $a0 $01
	ld bc, $c0fc                                     ; $42ed: $01 $fc $c0
	ld bc, $04a0                                     ; $42f0: $01 $a0 $04
	ld [bc], a                                       ; $42f3: $02
	inc c                                            ; $42f4: $0c
	ret nz                                           ; $42f5: $c0

	ld bc, $01a0                                     ; $42f6: $01 $a0 $01
	ld [bc], a                                       ; $42f9: $02
	inc de                                           ; $42fa: $13
	ret nz                                           ; $42fb: $c0

	ld bc, $04a0                                     ; $42fc: $01 $a0 $04
	ld [bc], a                                       ; $42ff: $02
	ld [hl+], a                                      ; $4300: $22
	ret nz                                           ; $4301: $c0

	ld bc, $01a0                                     ; $4302: $01 $a0 $01
	ld [bc], a                                       ; $4305: $02
	daa                                              ; $4306: $27
	ret nz                                           ; $4307: $c0

	ld bc, $04a0                                     ; $4308: $01 $a0 $04
	nop                                              ; $430b: $00
	add hl, hl                                       ; $430c: $29
	pop bc                                           ; $430d: $c1
	ld e, e                                          ; $430e: $5b
	ld [bc], a                                       ; $430f: $02
	jp nc, $47d3                                     ; $4310: $d2 $d3 $47

	ret nz                                           ; $4313: $c0

	ld hl, $d2d2                                     ; $4314: $21 $d2 $d2
	pop hl                                           ; $4317: $e1
	ld [bc], a                                       ; $4318: $02
	ld bc, $c080                                     ; $4319: $01 $80 $c0
	ld bc, $04a0                                     ; $431c: $01 $a0 $04
	nop                                              ; $431f: $00
	dec c                                            ; $4320: $0d
	ldh [rP1], a                                     ; $4321: $e0 $00
	adc a                                            ; $4323: $8f
	ret nz                                           ; $4324: $c0

	ld bc, $04a0                                     ; $4325: $01 $a0 $04
	ld [bc], a                                       ; $4328: $02
	ld l, $e1                                        ; $4329: $2e $e1
	ld [hl-], a                                      ; $432b: $32
	nop                                              ; $432c: $00
	call nz, $01c0                                   ; $432d: $c4 $c0 $01
	and b                                            ; $4330: $a0
	inc b                                            ; $4331: $04
	ld [bc], a                                       ; $4332: $02
	ld a, [hl-]                                      ; $4333: $3a
	ret nz                                           ; $4334: $c0

	ld bc, $01a0                                     ; $4335: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $4338: $01 $e7 $c0
	ld bc, $04a0                                     ; $433b: $01 $a0 $04
	ld [bc], a                                       ; $433e: $02
	ld b, e                                          ; $433f: $43
	ret nz                                           ; $4340: $c0

	ld bc, $01a0                                     ; $4341: $01 $a0 $01
	ld [bc], a                                       ; $4344: $02
	ld c, c                                          ; $4345: $49
	ret nz                                           ; $4346: $c0

	ld bc, $04a0                                     ; $4347: $01 $a0 $04
	ld [bc], a                                       ; $434a: $02
	ld d, l                                          ; $434b: $55
	ret nz                                           ; $434c: $c0

	ld bc, $01a0                                     ; $434d: $01 $a0 $01
	ld [bc], a                                       ; $4350: $02
	ld h, h                                          ; $4351: $64
	ret nz                                           ; $4352: $c0

	ld bc, $04a0                                     ; $4353: $01 $a0 $04
	ld [bc], a                                       ; $4356: $02
	ld [hl], h                                       ; $4357: $74
	pop bc                                           ; $4358: $c1
	ld e, e                                          ; $4359: $5b
	ld bc, $3bd4                                     ; $435a: $01 $d4 $3b
	ret nz                                           ; $435d: $c0

	ld hl, $d2d2                                     ; $435e: $21 $d2 $d2
	pop hl                                           ; $4361: $e1
	ld [bc], a                                       ; $4362: $02
	ld bc, $c080                                     ; $4363: $01 $80 $c0
	ld bc, $04a0                                     ; $4366: $01 $a0 $04
	nop                                              ; $4369: $00
	dec c                                            ; $436a: $0d
	ldh [rP1], a                                     ; $436b: $e0 $00
	ld b, l                                          ; $436d: $45
	ret nz                                           ; $436e: $c0

	ld bc, $04a0                                     ; $436f: $01 $a0 $04
	ld bc, $e1d8                                     ; $4372: $01 $d8 $e1
	ld [hl-], a                                      ; $4375: $32
	nop                                              ; $4376: $00
	call nz, $01c0                                   ; $4377: $c4 $c0 $01
	and b                                            ; $437a: $a0
	inc b                                            ; $437b: $04
	ld [bc], a                                       ; $437c: $02
	ld a, d                                          ; $437d: $7a
	ret nz                                           ; $437e: $c0

	ld bc, $01a0                                     ; $437f: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $4382: $01 $e7 $c0
	ld bc, $04a0                                     ; $4385: $01 $a0 $04
	ld [bc], a                                       ; $4388: $02
	add b                                            ; $4389: $80
	ret nz                                           ; $438a: $c0

	ld bc, $01a0                                     ; $438b: $01 $a0 $01
	ld [bc], a                                       ; $438e: $02
	adc h                                            ; $438f: $8c
	ret nz                                           ; $4390: $c0

	ld bc, $04a0                                     ; $4391: $01 $a0 $04
	ld [bc], a                                       ; $4394: $02
	sub d                                            ; $4395: $92
	pop bc                                           ; $4396: $c1
	ld e, e                                          ; $4397: $5b
	ld bc, $12d5                                     ; $4398: $01 $d5 $12
	ret nz                                           ; $439b: $c0

	ld bc, $01a0                                     ; $439c: $01 $a0 $01
	ld bc, $e1b1                                     ; $439f: $01 $b1 $e1
	ld [hl-], a                                      ; $43a2: $32
	nop                                              ; $43a3: $00
	xor a                                            ; $43a4: $af
	ret nz                                           ; $43a5: $c0

	jp z, $01c0                                      ; $43a6: $ca $c0 $01

	and b                                            ; $43a9: $a0
	ld bc, $9e02                                     ; $43aa: $01 $02 $9e
	push hl                                          ; $43ad: $e5
	inc sp                                           ; $43ae: $33
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	ld [de], a                                       ; $43b1: $12
	ret nz                                           ; $43b2: $c0

	ld bc, $01a0                                     ; $43b3: $01 $a0 $01
	nop                                              ; $43b6: $00
	ld c, a                                          ; $43b7: $4f
	ret nz                                           ; $43b8: $c0

	ld bc, $04a0                                     ; $43b9: $01 $a0 $04
	ld [bc], a                                       ; $43bc: $02
	and [hl]                                         ; $43bd: $a6
	ret nz                                           ; $43be: $c0

	ld bc, $01a0                                     ; $43bf: $01 $a0 $01
	ld [bc], a                                       ; $43c2: $02
	xor e                                            ; $43c3: $ab
	rlca                                             ; $43c4: $07
	rlca                                             ; $43c5: $07
	add hl, bc                                       ; $43c6: $09
	ld hl, $21c0                                     ; $43c7: $21 $c0 $21
	jp nc, $e1d3                                     ; $43ca: $d2 $d3 $e1

	ld [bc], a                                       ; $43cd: $02
	ld bc, $8298                                     ; $43ce: $01 $98 $82
	ret nz                                           ; $43d1: $c0

	add b                                            ; $43d2: $80
	ld bc, $07d3                                     ; $43d3: $01 $d3 $07
	ret nz                                           ; $43d6: $c0

	ld [hl+], a                                      ; $43d7: $22
	pop de                                           ; $43d8: $d1
	db $d3                                           ; $43d9: $d3
	db $e4                                           ; $43da: $e4
	inc bc                                           ; $43db: $03
	ld a, b                                          ; $43dc: $78
	ld bc, $03d2                                     ; $43dd: $01 $d2 $03
	db $e4                                           ; $43e0: $e4
	ld bc, $01f9                                     ; $43e1: $01 $f9 $01
	pop de                                           ; $43e4: $d1
	inc bc                                           ; $43e5: $03
	db $e4                                           ; $43e6: $e4
	nop                                              ; $43e7: $00
	ld [bc], a                                       ; $43e8: $02
	add hl, bc                                       ; $43e9: $09
	pop bc                                           ; $43ea: $c1
	xor $00                                          ; $43eb: $ee $00
	add b                                            ; $43ed: $80
	nop                                              ; $43ee: $00
	jp nc, $c083                                     ; $43ef: $d2 $83 $c0

	dec de                                           ; $43f2: $1b
	db $d3                                           ; $43f3: $d3
	ld [bc], a                                       ; $43f4: $02
	ret nc                                           ; $43f5: $d0

	pop de                                           ; $43f6: $d1
	sbc h                                            ; $43f7: $9c
	ldh [rAUD1SWEEP], a                              ; $43f8: $e0 $10
	ld a, [de]                                       ; $43fa: $1a
	ret nz                                           ; $43fb: $c0

	ld bc, $05a0                                     ; $43fc: $01 $a0 $05
	nop                                              ; $43ff: $00
	ld bc, $01c0                                     ; $4400: $01 $c0 $01
	and b                                            ; $4403: $a0
	ld bc, $0500                                     ; $4404: $01 $00 $05
	ret nz                                           ; $4407: $c0

	ld bc, $05a0                                     ; $4408: $01 $a0 $05
	nop                                              ; $440b: $00
	rrca                                             ; $440c: $0f
	ret nz                                           ; $440d: $c0

	ld bc, $01a0                                     ; $440e: $01 $a0 $01
	nop                                              ; $4411: $00
	ld a, [de]                                       ; $4412: $1a
	ret nz                                           ; $4413: $c0

	ld bc, $05a0                                     ; $4414: $01 $a0 $05
	nop                                              ; $4417: $00
	daa                                              ; $4418: $27
	ret nz                                           ; $4419: $c0

	ld bc, $01a0                                     ; $441a: $01 $a0 $01
	nop                                              ; $441d: $00
	ld b, b                                          ; $441e: $40
	ret nz                                           ; $441f: $c0

	ld bc, $05a0                                     ; $4420: $01 $a0 $05
	nop                                              ; $4423: $00
	ld d, d                                          ; $4424: $52
	ret nz                                           ; $4425: $c0

	ld bc, $01a0                                     ; $4426: $01 $a0 $01
	nop                                              ; $4429: $00
	ld e, d                                          ; $442a: $5a
	ld h, b                                          ; $442b: $60
	rst $38                                          ; $442c: $ff
	ld b, $80                                        ; $442d: $06 $80
	nop                                              ; $442f: $00
	ld a, b                                          ; $4430: $78
	add b                                            ; $4431: $80
	nop                                              ; $4432: $00
	ld a, c                                          ; $4433: $79
	add hl, hl                                       ; $4434: $29
	ldh [$15], a                                     ; $4435: $e0 $15
	ld h, e                                          ; $4437: $63
	ret nz                                           ; $4438: $c0

	ld bc, $05a0                                     ; $4439: $01 $a0 $05
	nop                                              ; $443c: $00
	ld e, a                                          ; $443d: $5f
	ret nz                                           ; $443e: $c0

	ld bc, $01a0                                     ; $443f: $01 $a0 $01
	nop                                              ; $4442: $00
	ld h, [hl]                                       ; $4443: $66
	ret nz                                           ; $4444: $c0

	ld bc, $05a0                                     ; $4445: $01 $a0 $05
	nop                                              ; $4448: $00
	ld [hl], d                                       ; $4449: $72
	ret nz                                           ; $444a: $c0

	ld bc, $01a0                                     ; $444b: $01 $a0 $01
	nop                                              ; $444e: $00
	ld a, e                                          ; $444f: $7b
	ret nz                                           ; $4450: $c0

	ld bc, $05a0                                     ; $4451: $01 $a0 $05
	nop                                              ; $4454: $00
	ld a, [hl]                                       ; $4455: $7e
	pop bc                                           ; $4456: $c1
	ld e, e                                          ; $4457: $5b
	ret nz                                           ; $4458: $c0

	ld bc, $01a0                                     ; $4459: $01 $a0 $01
	nop                                              ; $445c: $00
	add d                                            ; $445d: $82
	dec [hl]                                         ; $445e: $35
	or b                                             ; $445f: $b0
	ld a, a                                          ; $4460: $7f
	dec l                                            ; $4461: $2d
	ldh [$15], a                                     ; $4462: $e0 $15
	ld b, e                                          ; $4464: $43
	ret nz                                           ; $4465: $c0

	ld bc, $05a0                                     ; $4466: $01 $a0 $05
	nop                                              ; $4469: $00
	adc l                                            ; $446a: $8d
	ret nz                                           ; $446b: $c0

	ld bc, $01a0                                     ; $446c: $01 $a0 $01
	nop                                              ; $446f: $00
	sub h                                            ; $4470: $94
	ret nz                                           ; $4471: $c0

	ld bc, $05a0                                     ; $4472: $01 $a0 $05
	nop                                              ; $4475: $00
	and c                                            ; $4476: $a1
	ret nz                                           ; $4477: $c0

	ld bc, $01a0                                     ; $4478: $01 $a0 $01
	nop                                              ; $447b: $00
	xor e                                            ; $447c: $ab
	ret nz                                           ; $447d: $c0

	ld bc, $05a0                                     ; $447e: $01 $a0 $05
	nop                                              ; $4481: $00
	or l                                             ; $4482: $b5
	pop bc                                           ; $4483: $c1
	ld e, e                                          ; $4484: $5b
	ret nz                                           ; $4485: $c0

	ld bc, $01a0                                     ; $4486: $01 $a0 $01
	nop                                              ; $4489: $00
	ret nz                                           ; $448a: $c0

	nop                                              ; $448b: $00
	add b                                            ; $448c: $80
	nop                                              ; $448d: $00
	ld a, c                                          ; $448e: $79
	rst $38                                          ; $448f: $ff
	inc bc                                           ; $4490: $03
	ldh [rDIV], a                                    ; $4491: $e0 $04
	inc h                                            ; $4493: $24
	ld [bc], a                                       ; $4494: $02
	jp nc, $96d3                                     ; $4495: $d2 $d3 $96

	ldh [rIF], a                                     ; $4498: $e0 $0f
	ld a, d                                          ; $449a: $7a
	ret nz                                           ; $449b: $c0

	ld bc, $05a0                                     ; $449c: $01 $a0 $05
	nop                                              ; $449f: $00
	ld bc, $01c0                                     ; $44a0: $01 $c0 $01
	and b                                            ; $44a3: $a0
	ld bc, $0500                                     ; $44a4: $01 $00 $05
	ret nz                                           ; $44a7: $c0

	ld bc, $05a0                                     ; $44a8: $01 $a0 $05
	nop                                              ; $44ab: $00
	call nz, $01c0                                   ; $44ac: $c4 $c0 $01
	and b                                            ; $44af: $a0
	ld bc, $1a00                                     ; $44b0: $01 $00 $1a
	ret nz                                           ; $44b3: $c0

	ld bc, $05a0                                     ; $44b4: $01 $a0 $05
	nop                                              ; $44b7: $00
	jp nc, $01c0                                     ; $44b8: $d2 $c0 $01

	and b                                            ; $44bb: $a0
	ld bc, $4000                                     ; $44bc: $01 $00 $40
	ret nz                                           ; $44bf: $c0

	ld bc, $05a0                                     ; $44c0: $01 $a0 $05
	nop                                              ; $44c3: $00
	ld [$01c0], a                                    ; $44c4: $ea $c0 $01
	and b                                            ; $44c7: $a0
	ld bc, $5a00                                     ; $44c8: $01 $00 $5a
	ld h, b                                          ; $44cb: $60
	rst $38                                          ; $44cc: $ff
	ld b, $80                                        ; $44cd: $06 $80
	nop                                              ; $44cf: $00
	ld a, b                                          ; $44d0: $78
	add b                                            ; $44d1: $80
	nop                                              ; $44d2: $00
	ld a, c                                          ; $44d3: $79
	add hl, hl                                       ; $44d4: $29
	ldh [rAUD1HIGH], a                               ; $44d5: $e0 $14
	jp $01c0                                         ; $44d7: $c3 $c0 $01


	and b                                            ; $44da: $a0
	dec b                                            ; $44db: $05
	nop                                              ; $44dc: $00
	di                                               ; $44dd: $f3
	ret nz                                           ; $44de: $c0

	ld bc, $01a0                                     ; $44df: $01 $a0 $01
	ld bc, $c001                                     ; $44e2: $01 $01 $c0
	ld bc, $05a0                                     ; $44e5: $01 $a0 $05
	ld bc, $c00e                                     ; $44e8: $01 $0e $c0
	ld bc, $01a0                                     ; $44eb: $01 $a0 $01
	ld bc, $c019                                     ; $44ee: $01 $19 $c0
	ld bc, $05a0                                     ; $44f1: $01 $a0 $05
	ld bc, $c122                                     ; $44f4: $01 $22 $c1
	ld e, e                                          ; $44f7: $5b
	ret nz                                           ; $44f8: $c0

	ld bc, $01a0                                     ; $44f9: $01 $a0 $01
	ld bc, $2f30                                     ; $44fc: $01 $30 $2f
	or b                                             ; $44ff: $b0
	ld a, a                                          ; $4500: $7f
	daa                                              ; $4501: $27
	ldh [rAUD1HIGH], a                               ; $4502: $e0 $14
	and e                                            ; $4504: $a3
	ldh [rAUD1HIGH], a                               ; $4505: $e0 $14
	ret nz                                           ; $4507: $c0

	ldh [rAUD1HIGH], a                               ; $4508: $e0 $14
	jp z, $01c0                                      ; $450a: $ca $c0 $01

	and b                                            ; $450d: $a0
	dec b                                            ; $450e: $05
	ld bc, $c039                                     ; $450f: $01 $39 $c0
	ld bc, $01a0                                     ; $4512: $01 $a0 $01
	ld bc, $c040                                     ; $4515: $01 $40 $c0
	ld bc, $05a0                                     ; $4518: $01 $a0 $05
	ld bc, $c14a                                     ; $451b: $01 $4a $c1
	ld e, e                                          ; $451e: $5b
	ret nz                                           ; $451f: $c0

	ld bc, $01a0                                     ; $4520: $01 $a0 $01
	ld bc, $0052                                     ; $4523: $01 $52 $00
	add b                                            ; $4526: $80
	nop                                              ; $4527: $00
	ld a, c                                          ; $4528: $79
	rst $38                                          ; $4529: $ff
	inc bc                                           ; $452a: $03
	ldh [$0e], a                                     ; $452b: $e0 $0e
	db $f4                                           ; $452d: $f4
	ld bc, $78d4                                     ; $452e: $01 $d4 $78
	ret nz                                           ; $4531: $c0

	ld bc, $05a0                                     ; $4532: $01 $a0 $05
	ld bc, $c05e                                     ; $4535: $01 $5e $c0
	ld bc, $01a0                                     ; $4538: $01 $a0 $01
	ld bc, $c061                                     ; $453b: $01 $61 $c0
	ld bc, $05a0                                     ; $453e: $01 $a0 $05
	ld bc, $c06a                                     ; $4541: $01 $6a $c0
	ld bc, $01a0                                     ; $4544: $01 $a0 $01
	ld bc, $c073                                     ; $4547: $01 $73 $c0
	ld bc, $05a0                                     ; $454a: $01 $a0 $05
	ld bc, $c07a                                     ; $454d: $01 $7a $c0
	ld bc, $01a0                                     ; $4550: $01 $a0 $01
	ld bc, $c089                                     ; $4553: $01 $89 $c0
	ld bc, $05a0                                     ; $4556: $01 $a0 $05
	ld bc, $c099                                     ; $4559: $01 $99 $c0
	ld bc, $01a0                                     ; $455c: $01 $a0 $01
	ld bc, $60aa                                     ; $455f: $01 $aa $60
	rst $38                                          ; $4562: $ff
	ld b, $80                                        ; $4563: $06 $80
	nop                                              ; $4565: $00
	ld a, b                                          ; $4566: $78
	add b                                            ; $4567: $80
	nop                                              ; $4568: $00
	ld a, c                                          ; $4569: $79
	dec e                                            ; $456a: $1d
	ldh [rAUD1HIGH], a                               ; $456b: $e0 $14

jr_084_456d:
	dec l                                            ; $456d: $2d
	ret nz                                           ; $456e: $c0

	ld bc, $05a0                                     ; $456f: $01 $a0 $05
	ld bc, $c0b8                                     ; $4572: $01 $b8 $c0
	ld bc, $01a0                                     ; $4575: $01 $a0 $01
	ld bc, $c001                                     ; $4578: $01 $01 $c0
	ld bc, $05a0                                     ; $457b: $01 $a0 $05
	ld bc, $c1c7                                     ; $457e: $01 $c7 $c1
	ld e, e                                          ; $4581: $5b
	ret nz                                           ; $4582: $c0

	ld bc, $01a0                                     ; $4583: $01 $a0 $01
	ld bc, $20c9                                     ; $4586: $01 $c9 $20
	or b                                             ; $4589: $b0
	ld a, a                                          ; $458a: $7f
	jr jr_084_456d                                   ; $458b: $18 $e0

	inc d                                            ; $458d: $14
	add hl, de                                       ; $458e: $19
	ldh [rAUD1HIGH], a                               ; $458f: $e0 $14
	ld [hl], $c0                                     ; $4591: $36 $c0
	ld bc, $05a0                                     ; $4593: $01 $a0 $05
	ld bc, $c1d2                                     ; $4596: $01 $d2 $c1
	ld e, e                                          ; $4599: $5b
	ret nz                                           ; $459a: $c0

	ld bc, $01a0                                     ; $459b: $01 $a0 $01
	ld bc, $00d7                                     ; $459e: $01 $d7 $00
	add b                                            ; $45a1: $80
	nop                                              ; $45a2: $00
	ld a, c                                          ; $45a3: $79
	rst $38                                          ; $45a4: $ff
	inc bc                                           ; $45a5: $03
	ldh [$0e], a                                     ; $45a6: $e0 $0e
	and b                                            ; $45a8: $a0
	ld bc, $2ad5                                     ; $45a9: $01 $d5 $2a
	ret nz                                           ; $45ac: $c0

	ld bc, $05a0                                     ; $45ad: $01 $a0 $05
	ld bc, $c0e0                                     ; $45b0: $01 $e0 $c0
	ld bc, $01a0                                     ; $45b3: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $45b6: $01 $e3 $c0
	ld bc, $05a0                                     ; $45b9: $01 $a0 $05
	ld bc, $c0ea                                     ; $45bc: $01 $ea $c0
	ld bc, $01a0                                     ; $45bf: $01 $a0 $01
	ld bc, $c0f6                                     ; $45c2: $01 $f6 $c0
	ld bc, $05a0                                     ; $45c5: $01 $a0 $05
	ld [bc], a                                       ; $45c8: $02
	rlca                                             ; $45c9: $07
	ret nz                                           ; $45ca: $c0

	ld bc, $01a0                                     ; $45cb: $01 $a0 $01
	ld [bc], a                                       ; $45ce: $02
	rla                                              ; $45cf: $17
	pop bc                                           ; $45d0: $c1
	ld e, e                                          ; $45d1: $5b
	ld b, b                                          ; $45d2: $40

Jump_084_45d3:
	add b                                            ; $45d3: $80
	nop                                              ; $45d4: $00
	jp nc, $33e5                                     ; $45d5: $d2 $e5 $33

	nop                                              ; $45d8: $00
	nop                                              ; $45d9: $00
	add hl, bc                                       ; $45da: $09
	pop bc                                           ; $45db: $c1
	halt                                             ; $45dc: $76
	nop                                              ; $45dd: $00
	add b                                            ; $45de: $80
	nop                                              ; $45df: $00
	db $d3                                           ; $45e0: $d3
	add e                                            ; $45e1: $83
	ret nz                                           ; $45e2: $c0

	dec de                                           ; $45e3: $1b
	db $d3                                           ; $45e4: $d3
	ld [bc], a                                       ; $45e5: $02
	ret nc                                           ; $45e6: $d0

	pop de                                           ; $45e7: $d1
	ld d, d                                          ; $45e8: $52
	ldh [$0e], a                                     ; $45e9: $e0 $0e
	add hl, hl                                       ; $45eb: $29
	ret nz                                           ; $45ec: $c0

	ld bc, $05a0                                     ; $45ed: $01 $a0 $05
	nop                                              ; $45f0: $00
	ld bc, $01c0                                     ; $45f1: $01 $c0 $01
	and b                                            ; $45f4: $a0
	ld bc, $1a02                                     ; $45f5: $01 $02 $1a
	ret nz                                           ; $45f8: $c0

	ld bc, $05a0                                     ; $45f9: $01 $a0 $05
	ld [bc], a                                       ; $45fc: $02
	inc hl                                           ; $45fd: $23
	ret nz                                           ; $45fe: $c0

	ld bc, $01a0                                     ; $45ff: $01 $a0 $01
	ld [bc], a                                       ; $4602: $02
	dec l                                            ; $4603: $2d
	ret nz                                           ; $4604: $c0

	ld bc, $05a0                                     ; $4605: $01 $a0 $05
	ld [bc], a                                       ; $4608: $02
	dec a                                            ; $4609: $3d
	ret nz                                           ; $460a: $c0

	ld bc, $01a0                                     ; $460b: $01 $a0 $01
	ld [bc], a                                       ; $460e: $02
	ld c, c                                          ; $460f: $49
	ld h, b                                          ; $4610: $60
	rst $38                                          ; $4611: $ff
	ld b, $80                                        ; $4612: $06 $80
	nop                                              ; $4614: $00
	ld a, b                                          ; $4615: $78
	add b                                            ; $4616: $80
	nop                                              ; $4617: $00
	ld a, c                                          ; $4618: $79
	ld b, $e0                                        ; $4619: $06 $e0
	inc de                                           ; $461b: $13
	ld a, [hl]                                       ; $461c: $7e
	ldh [rTMA], a                                    ; $461d: $e0 $06
	rst SubAFromBC                                          ; $461f: $e7
	ld a, [de]                                       ; $4620: $1a
	or b                                             ; $4621: $b0
	ld a, a                                          ; $4622: $7f
	ld [de], a                                       ; $4623: $12
	ldh [rAUD1LOW], a                                ; $4624: $e0 $13
	add c                                            ; $4626: $81
	ret nz                                           ; $4627: $c0

	ld bc, $05a0                                     ; $4628: $01 $a0 $05
	nop                                              ; $462b: $00
	adc l                                            ; $462c: $8d
	ret nz                                           ; $462d: $c0

	ld bc, $01a0                                     ; $462e: $01 $a0 $01
	nop                                              ; $4631: $00
	sub h                                            ; $4632: $94
	ldh [rTMA], a                                    ; $4633: $e0 $06
	ld hl, sp-$01                                    ; $4635: $f8 $ff
	inc bc                                           ; $4637: $03
	ldh [rSC], a                                     ; $4638: $e0 $02
	ld a, l                                          ; $463a: $7d
	ld [bc], a                                       ; $463b: $02
	jp nc, $4dd3                                     ; $463c: $d2 $d3 $4d

	ldh [$0d], a                                     ; $463f: $e0 $0d
	db $d3                                           ; $4641: $d3
	ret nz                                           ; $4642: $c0

	ld bc, $05a0                                     ; $4643: $01 $a0 $05
	nop                                              ; $4646: $00
	ld bc, $01c0                                     ; $4647: $01 $c0 $01
	and b                                            ; $464a: $a0
	ld bc, $1a02                                     ; $464b: $01 $02 $1a
	ret nz                                           ; $464e: $c0

	ld bc, $05a0                                     ; $464f: $01 $a0 $05
	ld [bc], a                                       ; $4652: $02
	ld d, l                                          ; $4653: $55

jr_084_4654:
	ret nz                                           ; $4654: $c0

	ld bc, $01a0                                     ; $4655: $01 $a0 $01
	ld [bc], a                                       ; $4658: $02
	dec l                                            ; $4659: $2d
	ret nz                                           ; $465a: $c0

	ld bc, $05a0                                     ; $465b: $01 $a0 $05
	ld [bc], a                                       ; $465e: $02
	ld h, b                                          ; $465f: $60
	ret nz                                           ; $4660: $c0

	ld bc, $01a0                                     ; $4661: $01 $a0 $01
	ld [bc], a                                       ; $4664: $02
	ld c, c                                          ; $4665: $49
	ld h, b                                          ; $4666: $60
	rst $38                                          ; $4667: $ff
	ld b, $80                                        ; $4668: $06 $80
	nop                                              ; $466a: $00
	ld a, b                                          ; $466b: $78
	add b                                            ; $466c: $80
	nop                                              ; $466d: $00
	ld a, c                                          ; $466e: $79
	ld b, $e0                                        ; $466f: $06 $e0
	inc de                                           ; $4671: $13
	jr z, jr_084_4654                                ; $4672: $28 $e0

	ld b, $d7                                        ; $4674: $06 $d7
	dec d                                            ; $4676: $15
	or b                                             ; $4677: $b0
	ld a, a                                          ; $4678: $7f
	dec c                                            ; $4679: $0d
	ldh [rAUD1LOW], a                                ; $467a: $e0 $13
	dec hl                                           ; $467c: $2b
	ldh [rAUD1LOW], a                                ; $467d: $e0 $13
	ld c, b                                          ; $467f: $48
	ldh [rTMA], a                                    ; $4680: $e0 $06
	jp z, $8000                                      ; $4682: $ca $00 $80

	nop                                              ; $4685: $00
	ld a, c                                          ; $4686: $79
	rst $38                                          ; $4687: $ff
	inc bc                                           ; $4688: $03
	ldh [$0d], a                                     ; $4689: $e0 $0d
	sub [hl]                                         ; $468b: $96
	ld bc, $93d4                                     ; $468c: $01 $d4 $93
	ret nz                                           ; $468f: $c0

	ld bc, $05a0                                     ; $4690: $01 $a0 $05
	ld bc, $c05e                                     ; $4693: $01 $5e $c0
	ld bc, $01a0                                     ; $4696: $01 $a0 $01
	ld bc, $c061                                     ; $4699: $01 $61 $c0
	ld bc, $05a0                                     ; $469c: $01 $a0 $05
	ld [bc], a                                       ; $469f: $02
	ld h, a                                          ; $46a0: $67
	ret nz                                           ; $46a1: $c0

	ld bc, $01a0                                     ; $46a2: $01 $a0 $01
	ld [bc], a                                       ; $46a5: $02
	ld a, [de]                                       ; $46a6: $1a
	ret nz                                           ; $46a7: $c0

	ld bc, $05a0                                     ; $46a8: $01 $a0 $05
	ld [bc], a                                       ; $46ab: $02
	ld l, [hl]                                       ; $46ac: $6e
	ret nz                                           ; $46ad: $c0

	ld bc, $01a0                                     ; $46ae: $01 $a0 $01
	ld [bc], a                                       ; $46b1: $02
	dec l                                            ; $46b2: $2d
	ret nz                                           ; $46b3: $c0

	ld bc, $05a0                                     ; $46b4: $01 $a0 $05
	ld [bc], a                                       ; $46b7: $02
	ld a, c                                          ; $46b8: $79
	ret nz                                           ; $46b9: $c0

	ld bc, $01a0                                     ; $46ba: $01 $a0 $01
	ld [bc], a                                       ; $46bd: $02
	add d                                            ; $46be: $82
	ld h, b                                          ; $46bf: $60
	rst $38                                          ; $46c0: $ff
	ld b, $80                                        ; $46c1: $06 $80
	nop                                              ; $46c3: $00
	ld a, b                                          ; $46c4: $78
	add b                                            ; $46c5: $80
	nop                                              ; $46c6: $00
	ld a, c                                          ; $46c7: $79
	dec [hl]                                         ; $46c8: $35
	ldh [rAUD1ENV], a                                ; $46c9: $e0 $12
	rst GetHLinHL                                          ; $46cb: $cf
	ret nz                                           ; $46cc: $c0

	ld bc, $05a0                                     ; $46cd: $01 $a0 $05
	ld [bc], a                                       ; $46d0: $02
	sub d                                            ; $46d1: $92
	ret nz                                           ; $46d2: $c0

Jump_084_46d3:
	ld bc, $01a0                                     ; $46d3: $01 $a0 $01
	ld [bc], a                                       ; $46d6: $02
	and b                                            ; $46d7: $a0
	ret nz                                           ; $46d8: $c0

	ld bc, $05a0                                     ; $46d9: $01 $a0 $05
	ld [bc], a                                       ; $46dc: $02
	and l                                            ; $46dd: $a5
	ret nz                                           ; $46de: $c0

	ld bc, $01a0                                     ; $46df: $01 $a0 $01
	ld [bc], a                                       ; $46e2: $02
	xor e                                            ; $46e3: $ab
	ret nz                                           ; $46e4: $c0

	ld bc, $05a0                                     ; $46e5: $01 $a0 $05
	ld [bc], a                                       ; $46e8: $02
	or l                                             ; $46e9: $b5
	ret nz                                           ; $46ea: $c0

	ld bc, $01a0                                     ; $46eb: $01 $a0 $01
	ld [bc], a                                       ; $46ee: $02
	cp l                                             ; $46ef: $bd
	ret nz                                           ; $46f0: $c0

	ld bc, $05a0                                     ; $46f1: $01 $a0 $05
	ld [bc], a                                       ; $46f4: $02
	jp Jump_084_5bc1                                 ; $46f5: $c3 $c1 $5b


	ret nz                                           ; $46f8: $c0

	ld bc, $01a0                                     ; $46f9: $01 $a0 $01
	ld [bc], a                                       ; $46fc: $02
	rst GetHLinHL                                          ; $46fd: $cf
	inc hl                                           ; $46fe: $23
	or b                                             ; $46ff: $b0
	ld a, a                                          ; $4700: $7f
	dec de                                           ; $4701: $1b
	ldh [rAUD1ENV], a                                ; $4702: $e0 $12
	and e                                            ; $4704: $a3
	ldh [rAUD1ENV], a                                ; $4705: $e0 $12
	ret nz                                           ; $4707: $c0

	ldh [rAUD1ENV], a                                ; $4708: $e0 $12
	jp z, $01c0                                      ; $470a: $ca $c0 $01

	and b                                            ; $470d: $a0
	dec b                                            ; $470e: $05
	ld [bc], a                                       ; $470f: $02
	reti                                             ; $4710: $d9


	pop bc                                           ; $4711: $c1
	ld e, e                                          ; $4712: $5b
	ret nz                                           ; $4713: $c0

	ld bc, $01a0                                     ; $4714: $01 $a0 $01
	ld [bc], a                                       ; $4717: $02
	pop hl                                           ; $4718: $e1
	nop                                              ; $4719: $00
	add b                                            ; $471a: $80
	nop                                              ; $471b: $00
	ld a, c                                          ; $471c: $79
	rst $38                                          ; $471d: $ff
	inc bc                                           ; $471e: $03
	ldh [$0d], a                                     ; $471f: $e0 $0d
	daa                                              ; $4721: $27
	ld bc, $2ad5                                     ; $4722: $01 $d5 $2a
	ret nz                                           ; $4725: $c0

	ld bc, $05a0                                     ; $4726: $01 $a0 $05
	ld bc, $c0e0                                     ; $4729: $01 $e0 $c0
	ld bc, $01a0                                     ; $472c: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $472f: $01 $e3 $c0
	ld bc, $05a0                                     ; $4732: $01 $a0 $05
	ld [bc], a                                       ; $4735: $02
	ld [$01c0], a                                    ; $4736: $ea $c0 $01
	and b                                            ; $4739: $a0
	ld bc, $f602                                     ; $473a: $01 $02 $f6
	ret nz                                           ; $473d: $c0

	ld bc, $05a0                                     ; $473e: $01 $a0 $05
	ld [bc], a                                       ; $4741: $02
	rlca                                             ; $4742: $07
	ret nz                                           ; $4743: $c0

	ld bc, $01a0                                     ; $4744: $01 $a0 $01
	ld [bc], a                                       ; $4747: $02
	rla                                              ; $4748: $17
	pop bc                                           ; $4749: $c1
	ld e, e                                          ; $474a: $5b
	ld b, b                                          ; $474b: $40
	add b                                            ; $474c: $80
	nop                                              ; $474d: $00
	db $d3                                           ; $474e: $d3
	push hl                                          ; $474f: $e5
	inc sp                                           ; $4750: $33
	nop                                              ; $4751: $00
	nop                                              ; $4752: $00
	add hl, bc                                       ; $4753: $09
	pop bc                                           ; $4754: $c1
	ld h, b                                          ; $4755: $60
	add e                                            ; $4756: $83
	ret nz                                           ; $4757: $c0

	dec de                                           ; $4758: $1b
	db $d3                                           ; $4759: $d3
	ld [bc], a                                       ; $475a: $02
	ret nc                                           ; $475b: $d0

	pop de                                           ; $475c: $d1
	ld l, a                                          ; $475d: $6f
	ret nz                                           ; $475e: $c0

	ld bc, $05a0                                     ; $475f: $01 $a0 $05
	inc bc                                           ; $4762: $03
	inc b                                            ; $4763: $04
	ret nz                                           ; $4764: $c0

	ld bc, $01a0                                     ; $4765: $01 $a0 $01
	inc bc                                           ; $4768: $03
	add hl, bc                                       ; $4769: $09
	ret nz                                           ; $476a: $c0

	ld bc, $05a0                                     ; $476b: $01 $a0 $05
	inc bc                                           ; $476e: $03
	db $10                                           ; $476f: $10
	ret nz                                           ; $4770: $c0

	ld bc, $01a0                                     ; $4771: $01 $a0 $01
	inc bc                                           ; $4774: $03
	dec d                                            ; $4775: $15
	ret nz                                           ; $4776: $c0

	ld bc, $05a0                                     ; $4777: $01 $a0 $05
	inc bc                                           ; $477a: $03
	ld a, [de]                                       ; $477b: $1a
	ret nz                                           ; $477c: $c0

	ld bc, $01a0                                     ; $477d: $01 $a0 $01
	inc bc                                           ; $4780: $03
	jr z, jr_084_47e3                                ; $4781: $28 $60

	rst $38                                          ; $4783: $ff
	ld b, $80                                        ; $4784: $06 $80
	nop                                              ; $4786: $00
	ld a, b                                          ; $4787: $78
	add b                                            ; $4788: $80
	nop                                              ; $4789: $00
	ld a, c                                          ; $478a: $79
	ld a, [de]                                       ; $478b: $1a
	ret nz                                           ; $478c: $c0

	ld bc, $05a0                                     ; $478d: $01 $a0 $05
	inc bc                                           ; $4790: $03
	dec l                                            ; $4791: $2d
	ldh [rAUD1ENV], a                                ; $4792: $e0 $12
	ld l, l                                          ; $4794: $6d
	ret nz                                           ; $4795: $c0

	ld bc, $05a0                                     ; $4796: $01 $a0 $05
	inc bc                                           ; $4799: $03
	dec [hl]                                         ; $479a: $35
	ldh [rAUD1ENV], a                                ; $479b: $e0 $12
	ld b, h                                          ; $479d: $44
	pop bc                                           ; $479e: $c1
	ld e, e                                          ; $479f: $5b
	ret nz                                           ; $47a0: $c0

	ld bc, $01a0                                     ; $47a1: $01 $a0 $01
	inc bc                                           ; $47a4: $03
	dec a                                            ; $47a5: $3d
	ld h, $b0                                        ; $47a6: $26 $b0
	ld a, a                                          ; $47a8: $7f
	ld e, $c0                                        ; $47a9: $1e $c0
	ld bc, $05a0                                     ; $47ab: $01 $a0 $05
	inc bc                                           ; $47ae: $03
	dec l                                            ; $47af: $2d
	ldh [rAUD1ENV], a                                ; $47b0: $e0 $12
	ld [bc], a                                       ; $47b2: $02
	ret nz                                           ; $47b3: $c0

	ld bc, $05a0                                     ; $47b4: $01 $a0 $05
	inc bc                                           ; $47b7: $03
	dec [hl]                                         ; $47b8: $35
	ldh [rAUD1ENV], a                                ; $47b9: $e0 $12
	ld h, $c1                                        ; $47bb: $26 $c1
	ld e, e                                          ; $47bd: $5b
	ret nz                                           ; $47be: $c0

	ld bc, $01a0                                     ; $47bf: $01 $a0 $01
	inc bc                                           ; $47c2: $03
	dec a                                            ; $47c3: $3d
	nop                                              ; $47c4: $00
	add b                                            ; $47c5: $80
	nop                                              ; $47c6: $00
	ld a, c                                          ; $47c7: $79
	rst $38                                          ; $47c8: $ff
	inc bc                                           ; $47c9: $03
	ldh [rAUD1LEN], a                                ; $47ca: $e0 $11
	ld a, $02                                        ; $47cc: $3e $02
	jp nc, Jump_084_7bd3                             ; $47ce: $d2 $d3 $7b

	ret nz                                           ; $47d1: $c0

	ld bc, $05a0                                     ; $47d2: $01 $a0 $05
	inc bc                                           ; $47d5: $03
	inc b                                            ; $47d6: $04
	ret nz                                           ; $47d7: $c0

	ld bc, $01a0                                     ; $47d8: $01 $a0 $01
	inc bc                                           ; $47db: $03
	ld b, h                                          ; $47dc: $44
	ret nz                                           ; $47dd: $c0

	ld bc, $05a0                                     ; $47de: $01 $a0 $05
	inc bc                                           ; $47e1: $03
	ld c, e                                          ; $47e2: $4b

jr_084_47e3:
	ret nz                                           ; $47e3: $c0

	ld bc, $01a0                                     ; $47e4: $01 $a0 $01
	inc bc                                           ; $47e7: $03
	ld d, b                                          ; $47e8: $50
	ret nz                                           ; $47e9: $c0

	ld bc, $05a0                                     ; $47ea: $01 $a0 $05
	inc bc                                           ; $47ed: $03
	ld e, b                                          ; $47ee: $58
	ret nz                                           ; $47ef: $c0

	ld bc, $01a0                                     ; $47f0: $01 $a0 $01
	inc bc                                           ; $47f3: $03
	ld h, h                                          ; $47f4: $64
	ret nz                                           ; $47f5: $c0

	ld bc, $05a0                                     ; $47f6: $01 $a0 $05
	inc bc                                           ; $47f9: $03
	ld l, [hl]                                       ; $47fa: $6e
	ret nz                                           ; $47fb: $c0

	ld bc, $01a0                                     ; $47fc: $01 $a0 $01
	inc bc                                           ; $47ff: $03
	ld a, c                                          ; $4800: $79
	ld h, b                                          ; $4801: $60
	rst $38                                          ; $4802: $ff
	ld b, $80                                        ; $4803: $06 $80
	nop                                              ; $4805: $00
	ld a, b                                          ; $4806: $78
	add b                                            ; $4807: $80
	nop                                              ; $4808: $00
	ld a, c                                          ; $4809: $79
	ld a, [de]                                       ; $480a: $1a
	ret nz                                           ; $480b: $c0

	ld bc, $05a0                                     ; $480c: $01 $a0 $05
	inc bc                                           ; $480f: $03
	add e                                            ; $4810: $83
	ldh [rAUD1LEN], a                                ; $4811: $e0 $11
	db $db                                           ; $4813: $db
	ret nz                                           ; $4814: $c0

	ld bc, $05a0                                     ; $4815: $01 $a0 $05
	inc bc                                           ; $4818: $03
	adc c                                            ; $4819: $89
	ldh [rAUD1LEN], a                                ; $481a: $e0 $11
	push bc                                          ; $481c: $c5
	pop bc                                           ; $481d: $c1
	ld e, e                                          ; $481e: $5b
	ret nz                                           ; $481f: $c0

	ld bc, $01a0                                     ; $4820: $01 $a0 $01
	inc bc                                           ; $4823: $03
	dec a                                            ; $4824: $3d
	ld h, $b0                                        ; $4825: $26 $b0
	ld a, a                                          ; $4827: $7f
	ld e, $c0                                        ; $4828: $1e $c0
	ld bc, $05a0                                     ; $482a: $01 $a0 $05
	inc bc                                           ; $482d: $03
	add e                                            ; $482e: $83
	ldh [rAUD1LEN], a                                ; $482f: $e0 $11
	add e                                            ; $4831: $83
	ret nz                                           ; $4832: $c0

	ld bc, $05a0                                     ; $4833: $01 $a0 $05
	inc bc                                           ; $4836: $03
	adc c                                            ; $4837: $89
	ldh [rAUD1LEN], a                                ; $4838: $e0 $11
	and a                                            ; $483a: $a7
	pop bc                                           ; $483b: $c1
	ld e, e                                          ; $483c: $5b
	ret nz                                           ; $483d: $c0

	ld bc, $01a0                                     ; $483e: $01 $a0 $01
	inc bc                                           ; $4841: $03
	dec a                                            ; $4842: $3d
	nop                                              ; $4843: $00
	add b                                            ; $4844: $80
	nop                                              ; $4845: $00
	ld a, c                                          ; $4846: $79
	rst $38                                          ; $4847: $ff
	inc bc                                           ; $4848: $03
	ldh [rAUD1SWEEP], a                              ; $4849: $e0 $10
	and $01                                          ; $484b: $e6 $01
	call nc, $c05d                                   ; $484d: $d4 $5d $c0
	ld bc, $05a0                                     ; $4850: $01 $a0 $05
	inc bc                                           ; $4853: $03
	inc b                                            ; $4854: $04
	ret nz                                           ; $4855: $c0

jr_084_4856:
	ld bc, $01a0                                     ; $4856: $01 $a0 $01
	inc bc                                           ; $4859: $03
	ld b, h                                          ; $485a: $44
	ret nz                                           ; $485b: $c0

	ld bc, $05a0                                     ; $485c: $01 $a0 $05
	inc bc                                           ; $485f: $03
	adc h                                            ; $4860: $8c
	ret nz                                           ; $4861: $c0

	ld bc, $01a0                                     ; $4862: $01 $a0 $01
	inc bc                                           ; $4865: $03
	sub l                                            ; $4866: $95
	ld h, b                                          ; $4867: $60
	rst $38                                          ; $4868: $ff
	ld b, $80                                        ; $4869: $06 $80
	nop                                              ; $486b: $00
	ld a, b                                          ; $486c: $78
	add b                                            ; $486d: $80
	nop                                              ; $486e: $00
	ld a, c                                          ; $486f: $79
	rla                                              ; $4870: $17
	ret nz                                           ; $4871: $c0

	ld bc, $05a0                                     ; $4872: $01 $a0 $05
	inc bc                                           ; $4875: $03
	add e                                            ; $4876: $83
	ldh [rAUD1LEN], a                                ; $4877: $e0 $11
	ld [hl], l                                       ; $4879: $75
	ret nz                                           ; $487a: $c0

	ld bc, $05a0                                     ; $487b: $01 $a0 $05
	inc bc                                           ; $487e: $03
	and h                                            ; $487f: $a4
	pop bc                                           ; $4880: $c1
	ld e, e                                          ; $4881: $5b
	ret nz                                           ; $4882: $c0

	ld bc, $01a0                                     ; $4883: $01 $a0 $01
	inc bc                                           ; $4886: $03
	xor d                                            ; $4887: $aa
	inc hl                                           ; $4888: $23
	or b                                             ; $4889: $b0
	ld a, a                                          ; $488a: $7f
	dec de                                           ; $488b: $1b
	ret nz                                           ; $488c: $c0

	ld bc, $05a0                                     ; $488d: $01 $a0 $05
	inc bc                                           ; $4890: $03
	add e                                            ; $4891: $83
	ldh [rAUD1LEN], a                                ; $4892: $e0 $11
	jr nz, jr_084_4856                               ; $4894: $20 $c0

	ld bc, $05a0                                     ; $4896: $01 $a0 $05
	inc bc                                           ; $4899: $03
	or a                                             ; $489a: $b7
	pop bc                                           ; $489b: $c1
	ld e, e                                          ; $489c: $5b
	ret nz                                           ; $489d: $c0

	ld bc, $01a0                                     ; $489e: $01 $a0 $01
	inc bc                                           ; $48a1: $03
	xor d                                            ; $48a2: $aa
	nop                                              ; $48a3: $00
	add b                                            ; $48a4: $80
	nop                                              ; $48a5: $00
	ld a, c                                          ; $48a6: $79
	rst $38                                          ; $48a7: $ff
	inc bc                                           ; $48a8: $03
	ldh [rP1], a                                     ; $48a9: $e0 $00
	ld d, $01                                        ; $48ab: $16 $01
	push de                                          ; $48ad: $d5
	inc bc                                           ; $48ae: $03
	ldh [rAUD1SWEEP], a                              ; $48af: $e0 $10
	ld a, $e5                                        ; $48b1: $3e $e5
	inc sp                                           ; $48b3: $33
	nop                                              ; $48b4: $00
	nop                                              ; $48b5: $00
	add hl, bc                                       ; $48b6: $09
	ret nz                                           ; $48b7: $c0

	ld bc, $05a0                                     ; $48b8: $01 $a0 $05
	inc bc                                           ; $48bb: $03
	cp l                                             ; $48bc: $bd
	ldh [rAUD1SWEEP], a                              ; $48bd: $e0 $10
	sbc c                                            ; $48bf: $99
	ld h, $c0                                        ; $48c0: $26 $c0
	ld bc, $05a0                                     ; $48c2: $01 $a0 $05
	inc bc                                           ; $48c5: $03
	call nz, $01c0                                   ; $48c6: $c4 $c0 $01
	and b                                            ; $48c9: $a0
	ld bc, $ce03                                     ; $48ca: $01 $03 $ce
	ret nz                                           ; $48cd: $c0

	ld bc, $05a0                                     ; $48ce: $01 $a0 $05
	inc bc                                           ; $48d1: $03
	rst SubAFromHL                                          ; $48d2: $d7

Jump_084_48d3:
	ret nz                                           ; $48d3: $c0

	ld bc, $01a0                                     ; $48d4: $01 $a0 $01
	inc bc                                           ; $48d7: $03
	ldh [c], a                                       ; $48d8: $e2
	ret nz                                           ; $48d9: $c0

	ld bc, $05a0                                     ; $48da: $01 $a0 $05
	inc bc                                           ; $48dd: $03
	and h                                            ; $48de: $a4
	pop bc                                           ; $48df: $c1
	ld e, e                                          ; $48e0: $5b
	ret nz                                           ; $48e1: $c0

	ld bc, $01a0                                     ; $48e2: $01 $a0 $01
	inc bc                                           ; $48e5: $03
	add sp, $09                                      ; $48e6: $e8 $09
	dec h                                            ; $48e8: $25
	ret nz                                           ; $48e9: $c0

	ld hl, $d3d2                                     ; $48ea: $21 $d2 $d3
	pop hl                                           ; $48ed: $e1
	ld [bc], a                                       ; $48ee: $02
	ld bc, $8298                                     ; $48ef: $01 $98 $82
	ret nz                                           ; $48f2: $c0

	add b                                            ; $48f3: $80
	ld bc, $07d3                                     ; $48f4: $01 $d3 $07
	ret nz                                           ; $48f7: $c0

	ld [hl+], a                                      ; $48f8: $22
	jp nc, $e4d3                                     ; $48f9: $d2 $d3 $e4

	inc b                                            ; $48fc: $04
	halt                                             ; $48fd: $76
	ld bc, $03d2                                     ; $48fe: $01 $d2 $03
	db $e4                                           ; $4901: $e4
	ld [bc], a                                       ; $4902: $02
	inc l                                            ; $4903: $2c
	ld bc, $07d1                                     ; $4904: $01 $d1 $07
	ret nz                                           ; $4907: $c0

	ld [hl+], a                                      ; $4908: $22
	pop de                                           ; $4909: $d1
	db $d3                                           ; $490a: $d3
	db $e4                                           ; $490b: $e4
	nop                                              ; $490c: $00
	ld [bc], a                                       ; $490d: $02
	add hl, bc                                       ; $490e: $09
	pop bc                                           ; $490f: $c1
	add b                                            ; $4910: $80
	add e                                            ; $4911: $83
	ret nz                                           ; $4912: $c0

	dec de                                           ; $4913: $1b
	db $d3                                           ; $4914: $d3
	ld [bc], a                                       ; $4915: $02
	ret nc                                           ; $4916: $d0

	pop de                                           ; $4917: $d1
	ld a, e                                          ; $4918: $7b
	ldh [rSB], a                                     ; $4919: $e0 $01
	ld [hl], a                                       ; $491b: $77
	ret nz                                           ; $491c: $c0

	ld bc, $05a0                                     ; $491d: $01 $a0 $05
	inc bc                                           ; $4920: $03
	xor $c0                                          ; $4921: $ee $c0
	ld bc, $01a0                                     ; $4923: $01 $a0 $01
	inc bc                                           ; $4926: $03
	rst $38                                          ; $4927: $ff
	ldh [rSB], a                                     ; $4928: $e0 $01
	add c                                            ; $492a: $81
	ld h, b                                          ; $492b: $60
	rst $38                                          ; $492c: $ff
	ld b, $80                                        ; $492d: $06 $80
	nop                                              ; $492f: $00
	ld a, b                                          ; $4930: $78
	add b                                            ; $4931: $80
	nop                                              ; $4932: $00
	ld a, c                                          ; $4933: $79
	add hl, hl                                       ; $4934: $29
	ldh [rAUD1SWEEP], a                              ; $4935: $e0 $10
	ld h, e                                          ; $4937: $63
	ret nz                                           ; $4938: $c0

	ld bc, $05a0                                     ; $4939: $01 $a0 $05
	nop                                              ; $493c: $00
	ld e, a                                          ; $493d: $5f
	ret nz                                           ; $493e: $c0

	ld bc, $01a0                                     ; $493f: $01 $a0 $01
	inc b                                            ; $4942: $04
	inc b                                            ; $4943: $04
	ret nz                                           ; $4944: $c0

	ld bc, $05a0                                     ; $4945: $01 $a0 $05
	nop                                              ; $4948: $00
	ld [hl], d                                       ; $4949: $72
	ret nz                                           ; $494a: $c0

	ld bc, $01a0                                     ; $494b: $01 $a0 $01
	inc b                                            ; $494e: $04
	add hl, bc                                       ; $494f: $09
	ret nz                                           ; $4950: $c0

	ld bc, $05a0                                     ; $4951: $01 $a0 $05
	inc bc                                           ; $4954: $03
	and h                                            ; $4955: $a4
	pop bc                                           ; $4956: $c1
	ld e, e                                          ; $4957: $5b
	ret nz                                           ; $4958: $c0

	ld bc, $01a0                                     ; $4959: $01 $a0 $01
	inc b                                            ; $495c: $04
	inc de                                           ; $495d: $13
	dec [hl]                                         ; $495e: $35
	or b                                             ; $495f: $b0
	ld a, a                                          ; $4960: $7f
	dec l                                            ; $4961: $2d
	ldh [rAUD1SWEEP], a                              ; $4962: $e0 $10
	ld b, e                                          ; $4964: $43
	ret nz                                           ; $4965: $c0

	ld bc, $05a0                                     ; $4966: $01 $a0 $05
	nop                                              ; $4969: $00
	adc l                                            ; $496a: $8d
	ret nz                                           ; $496b: $c0

	ld bc, $01a0                                     ; $496c: $01 $a0 $01
	nop                                              ; $496f: $00
	sub h                                            ; $4970: $94
	ret nz                                           ; $4971: $c0

	ld bc, $05a0                                     ; $4972: $01 $a0 $05
	inc b                                            ; $4975: $04
	rra                                              ; $4976: $1f
	ret nz                                           ; $4977: $c0

	ld bc, $01a0                                     ; $4978: $01 $a0 $01
	inc b                                            ; $497b: $04
	add hl, bc                                       ; $497c: $09
	ret nz                                           ; $497d: $c0

	ld bc, $05a0                                     ; $497e: $01 $a0 $05
	nop                                              ; $4981: $00
	ld a, [hl]                                       ; $4982: $7e
	pop bc                                           ; $4983: $c1
	ld e, e                                          ; $4984: $5b
	ret nz                                           ; $4985: $c0

	ld bc, $01a0                                     ; $4986: $01 $a0 $01
	inc b                                            ; $4989: $04
	dec l                                            ; $498a: $2d
	nop                                              ; $498b: $00
	add b                                            ; $498c: $80
	nop                                              ; $498d: $00
	ld a, c                                          ; $498e: $79
	rst $38                                          ; $498f: $ff
	inc bc                                           ; $4990: $03
	ldh [rTMA], a                                    ; $4991: $e0 $06
	ld b, h                                          ; $4993: $44
	ld [bc], a                                       ; $4994: $02
	jp nc, Jump_084_7bd3                             ; $4995: $d2 $d3 $7b

	ldh [rP1], a                                     ; $4998: $e0 $00
	ld hl, sp-$40                                    ; $499a: $f8 $c0
	ld bc, $05a0                                     ; $499c: $01 $a0 $05
	inc b                                            ; $499f: $04
	ld a, [hl-]                                      ; $49a0: $3a
	ret nz                                           ; $49a1: $c0

	ld bc, $01a0                                     ; $49a2: $01 $a0 $01
	inc bc                                           ; $49a5: $03
	rst $38                                          ; $49a6: $ff
	ldh [rSB], a                                     ; $49a7: $e0 $01
	ld [bc], a                                       ; $49a9: $02
	ld h, b                                          ; $49aa: $60
	rst $38                                          ; $49ab: $ff
	ld b, $80                                        ; $49ac: $06 $80
	nop                                              ; $49ae: $00
	ld a, b                                          ; $49af: $78
	add b                                            ; $49b0: $80
	nop                                              ; $49b1: $00
	ld a, c                                          ; $49b2: $79
	add hl, hl                                       ; $49b3: $29
	ldh [rIF], a                                     ; $49b4: $e0 $0f
	db $e4                                           ; $49b6: $e4
	ret nz                                           ; $49b7: $c0

	ld bc, $05a0                                     ; $49b8: $01 $a0 $05
	nop                                              ; $49bb: $00
	ld e, a                                          ; $49bc: $5f
	ret nz                                           ; $49bd: $c0

	ld bc, $01a0                                     ; $49be: $01 $a0 $01
	inc b                                            ; $49c1: $04
	inc b                                            ; $49c2: $04
	ret nz                                           ; $49c3: $c0

	ld bc, $05a0                                     ; $49c4: $01 $a0 $05
	inc b                                            ; $49c7: $04
	ld c, h                                          ; $49c8: $4c
	ret nz                                           ; $49c9: $c0

	ld bc, $01a0                                     ; $49ca: $01 $a0 $01
	inc b                                            ; $49cd: $04
	add hl, bc                                       ; $49ce: $09
	ret nz                                           ; $49cf: $c0

	ld bc, $05a0                                     ; $49d0: $01 $a0 $05

Jump_084_49d3:
	nop                                              ; $49d3: $00
	ld a, [hl]                                       ; $49d4: $7e
	pop bc                                           ; $49d5: $c1
	ld e, e                                          ; $49d6: $5b
	ret nz                                           ; $49d7: $c0

	ld bc, $01a0                                     ; $49d8: $01 $a0 $01
	inc b                                            ; $49db: $04
	dec l                                            ; $49dc: $2d
	dec [hl]                                         ; $49dd: $35
	or b                                             ; $49de: $b0
	ld a, a                                          ; $49df: $7f
	dec l                                            ; $49e0: $2d
	ldh [rIF], a                                     ; $49e1: $e0 $0f
	call nz, $01c0                                   ; $49e3: $c4 $c0 $01
	and b                                            ; $49e6: $a0
	dec b                                            ; $49e7: $05
	nop                                              ; $49e8: $00
	adc l                                            ; $49e9: $8d
	ret nz                                           ; $49ea: $c0

	ld bc, $01a0                                     ; $49eb: $01 $a0 $01
	nop                                              ; $49ee: $00
	sub h                                            ; $49ef: $94
	ret nz                                           ; $49f0: $c0

	ld bc, $05a0                                     ; $49f1: $01 $a0 $05
	inc b                                            ; $49f4: $04
	ld e, b                                          ; $49f5: $58
	ret nz                                           ; $49f6: $c0

	ld bc, $01a0                                     ; $49f7: $01 $a0 $01
	inc b                                            ; $49fa: $04
	add hl, bc                                       ; $49fb: $09
	ret nz                                           ; $49fc: $c0

	ld bc, $05a0                                     ; $49fd: $01 $a0 $05
	nop                                              ; $4a00: $00

jr_084_4a01:
	ld a, [hl]                                       ; $4a01: $7e
	pop bc                                           ; $4a02: $c1
	ld e, e                                          ; $4a03: $5b
	ret nz                                           ; $4a04: $c0

	ld bc, $01a0                                     ; $4a05: $01 $a0 $01
	inc b                                            ; $4a08: $04
	dec l                                            ; $4a09: $2d
	nop                                              ; $4a0a: $00
	add b                                            ; $4a0b: $80
	nop                                              ; $4a0c: $00
	ld a, c                                          ; $4a0d: $79
	rst $38                                          ; $4a0e: $ff
	inc bc                                           ; $4a0f: $03
	ldh [$0a], a                                     ; $4a10: $e0 $0a
	rrca                                             ; $4a12: $0f
	ld bc, $5ad4                                     ; $4a13: $01 $d4 $5a
	ldh [rP1], a                                     ; $4a16: $e0 $00
	ld a, d                                          ; $4a18: $7a
	ret nz                                           ; $4a19: $c0

	ld bc, $05a0                                     ; $4a1a: $01 $a0 $05
	inc b                                            ; $4a1d: $04
	ld h, e                                          ; $4a1e: $63
	ret nz                                           ; $4a1f: $c0

	ld bc, $01a0                                     ; $4a20: $01 $a0 $01
	inc bc                                           ; $4a23: $03
	rst $38                                          ; $4a24: $ff
	ldh [rP1], a                                     ; $4a25: $e0 $00
	add h                                            ; $4a27: $84
	ld h, b                                          ; $4a28: $60
	rst $38                                          ; $4a29: $ff
	ld b, $80                                        ; $4a2a: $06 $80
	nop                                              ; $4a2c: $00
	ld a, b                                          ; $4a2d: $78
	add b                                            ; $4a2e: $80
	nop                                              ; $4a2f: $00
	ld a, c                                          ; $4a30: $79
	dec e                                            ; $4a31: $1d
	ldh [rIF], a                                     ; $4a32: $e0 $0f

jr_084_4a34:
	ld h, [hl]                                       ; $4a34: $66
	ret nz                                           ; $4a35: $c0

	ld bc, $05a0                                     ; $4a36: $01 $a0 $05
	nop                                              ; $4a39: $00
	ld e, a                                          ; $4a3a: $5f
	ret nz                                           ; $4a3b: $c0

	ld bc, $01a0                                     ; $4a3c: $01 $a0 $01
	inc b                                            ; $4a3f: $04
	inc b                                            ; $4a40: $04
	ret nz                                           ; $4a41: $c0

	ld bc, $05a0                                     ; $4a42: $01 $a0 $05
	ld bc, $c1c7                                     ; $4a45: $01 $c7 $c1
	ld e, e                                          ; $4a48: $5b
	ret nz                                           ; $4a49: $c0

	ld bc, $01a0                                     ; $4a4a: $01 $a0 $01
	inc b                                            ; $4a4d: $04
	ld [hl], d                                       ; $4a4e: $72
	jr nz, jr_084_4a01                               ; $4a4f: $20 $b0

	ld a, a                                          ; $4a51: $7f
	jr jr_084_4a34                                   ; $4a52: $18 $e0

	rrca                                             ; $4a54: $0f
	ld d, d                                          ; $4a55: $52
	ldh [rIF], a                                     ; $4a56: $e0 $0f
	ld l, a                                          ; $4a58: $6f
	ret nz                                           ; $4a59: $c0

	ld bc, $05a0                                     ; $4a5a: $01 $a0 $05
	ld bc, $c1d2                                     ; $4a5d: $01 $d2 $c1
	ld e, e                                          ; $4a60: $5b
	ret nz                                           ; $4a61: $c0

	ld bc, $01a0                                     ; $4a62: $01 $a0 $01
	inc b                                            ; $4a65: $04
	ld [hl], d                                       ; $4a66: $72
	nop                                              ; $4a67: $00
	add b                                            ; $4a68: $80
	nop                                              ; $4a69: $00
	ld a, c                                          ; $4a6a: $79
	rst $38                                          ; $4a6b: $ff
	inc bc                                           ; $4a6c: $03
	ldh [$09], a                                     ; $4a6d: $e0 $09
	reti                                             ; $4a6f: $d9


	ld bc, $1ad5                                     ; $4a70: $01 $d5 $1a
	ret nz                                           ; $4a73: $c0

	ld bc, $05a0                                     ; $4a74: $01 $a0 $05
	inc b                                            ; $4a77: $04
	ld a, [hl]                                       ; $4a78: $7e
	ret nz                                           ; $4a79: $c0

	ld bc, $01a0                                     ; $4a7a: $01 $a0 $01
	inc b                                            ; $4a7d: $04
	add b                                            ; $4a7e: $80
	ret nz                                           ; $4a7f: $c0

	ld bc, $05a0                                     ; $4a80: $01 $a0 $05
	inc b                                            ; $4a83: $04
	adc h                                            ; $4a84: $8c
	pop bc                                           ; $4a85: $c1
	ld e, e                                          ; $4a86: $5b
	ret nz                                           ; $4a87: $c0

	ld bc, $01a0                                     ; $4a88: $01 $a0 $01
	inc b                                            ; $4a8b: $04
	sub c                                            ; $4a8c: $91
	push hl                                          ; $4a8d: $e5
	inc sp                                           ; $4a8e: $33
	nop                                              ; $4a8f: $00
	nop                                              ; $4a90: $00
	jr @-$3e                                         ; $4a91: $18 $c0

	ld bc, $05a0                                     ; $4a93: $01 $a0 $05
	inc b                                            ; $4a96: $04
	sbc d                                            ; $4a97: $9a
	ret nz                                           ; $4a98: $c0

	ld bc, $01a0                                     ; $4a99: $01 $a0 $01
	inc b                                            ; $4a9c: $04
	sbc l                                            ; $4a9d: $9d
	ret nz                                           ; $4a9e: $c0

	ld bc, $05a0                                     ; $4a9f: $01 $a0 $05
	inc b                                            ; $4aa2: $04
	xor e                                            ; $4aa3: $ab
	ret nz                                           ; $4aa4: $c0

	ld bc, $01a0                                     ; $4aa5: $01 $a0 $01
	inc b                                            ; $4aa8: $04
	or c                                             ; $4aa9: $b1
	add e                                            ; $4aaa: $83
	pop hl                                           ; $4aab: $e1
	ld [hl-], a                                      ; $4aac: $32
	nop                                              ; $4aad: $00
	nop                                              ; $4aae: $00
	pop hl                                           ; $4aaf: $e1
	ld [bc], a                                       ; $4ab0: $02
	ld bc, $62a0                                     ; $4ab1: $01 $a0 $62
	ld hl, sp-$79                                    ; $4ab4: $f8 $87
	ld [bc], a                                       ; $4ab6: $02
	sub c                                            ; $4ab7: $91
	ldh [rAUD3HIGH], a                               ; $4ab8: $e0 $1e
	ld e, $e1                                        ; $4aba: $1e $e1
	ld [bc], a                                       ; $4abc: $02
	inc bc                                           ; $4abd: $03
	dec de                                           ; $4abe: $1b
	ret nz                                           ; $4abf: $c0

	dec h                                            ; $4ac0: $25
	pop de                                           ; $4ac1: $d1
	db $d3                                           ; $4ac2: $d3
	ret nz                                           ; $4ac3: $c0

	ld bc, $05a0                                     ; $4ac4: $01 $a0 $05
	inc b                                            ; $4ac7: $04
	call nz, $01c0                                   ; $4ac8: $c4 $c0 $01
	and b                                            ; $4acb: $a0
	ld bc, $c504                                     ; $4acc: $01 $04 $c5
	pop hl                                           ; $4acf: $e1
	ld [bc], a                                       ; $4ad0: $02
	inc bc                                           ; $4ad1: $03
	rla                                              ; $4ad2: $17
	ret nz                                           ; $4ad3: $c0

	ld bc, $05a0                                     ; $4ad4: $01 $a0 $05
	inc b                                            ; $4ad7: $04
	db $d3                                           ; $4ad8: $d3
	ld hl, sp-$79                                    ; $4ad9: $f8 $87
	ld [bc], a                                       ; $4adb: $02
	sub c                                            ; $4adc: $91
	ldh [rDMA], a                                    ; $4add: $e0 $46
	ld d, $e1                                        ; $4adf: $16 $e1
	ld [bc], a                                       ; $4ae1: $02
	inc bc                                           ; $4ae2: $03
	rla                                              ; $4ae3: $17
	ret nz                                           ; $4ae4: $c0

	ld bc, $05a0                                     ; $4ae5: $01 $a0 $05
	inc b                                            ; $4ae8: $04
	db $db                                           ; $4ae9: $db
	ret nz                                           ; $4aea: $c0

	ld bc, $01a0                                     ; $4aeb: $01 $a0 $01
	inc b                                            ; $4aee: $04
	ldh [c], a                                       ; $4aef: $e2
	ret nz                                           ; $4af0: $c0

	ld bc, $05a0                                     ; $4af1: $01 $a0 $05
	inc b                                            ; $4af4: $04
	ld [$87f8], a                                    ; $4af5: $ea $f8 $87
	ld [bc], a                                       ; $4af8: $02
	sub c                                            ; $4af9: $91
	ldh [$5a], a                                     ; $4afa: $e0 $5a
	ld d, $e1                                        ; $4afc: $16 $e1
	ld [bc], a                                       ; $4afe: $02
	inc bc                                           ; $4aff: $03
	inc de                                           ; $4b00: $13
	ret nz                                           ; $4b01: $c0

	ld bc, $05a0                                     ; $4b02: $01 $a0 $05
	inc b                                            ; $4b05: $04
	ldh a, [c]                                       ; $4b06: $f2
	ret nz                                           ; $4b07: $c0

	ld bc, $01a0                                     ; $4b08: $01 $a0 $01
	inc b                                            ; $4b0b: $04
	ld hl, sp-$40                                    ; $4b0c: $f8 $c0
	ld bc, $05a0                                     ; $4b0e: $01 $a0 $05
	inc b                                            ; $4b11: $04
	ei                                               ; $4b12: $fb
	ld a, [de]                                       ; $4b13: $1a
	pop hl                                           ; $4b14: $e1
	ld [bc], a                                       ; $4b15: $02
	inc bc                                           ; $4b16: $03
	rrca                                             ; $4b17: $0f
	ret nz                                           ; $4b18: $c0

	ld [hl+], a                                      ; $4b19: $22
	pop de                                           ; $4b1a: $d1
	db $d3                                           ; $4b1b: $d3
	ret nz                                           ; $4b1c: $c0

	ld bc, $05a0                                     ; $4b1d: $01 $a0 $05
	dec b                                            ; $4b20: $05
	inc b                                            ; $4b21: $04
	ret nz                                           ; $4b22: $c0

	ld bc, $01a0                                     ; $4b23: $01 $a0 $01
	dec b                                            ; $4b26: $05
	ld a, [bc]                                       ; $4b27: $0a
	ret nz                                           ; $4b28: $c0

	ld bc, $05a0                                     ; $4b29: $01 $a0 $05
	dec b                                            ; $4b2c: $05
	rrca                                             ; $4b2d: $0f
	add hl, bc                                       ; $4b2e: $09
	pop bc                                           ; $4b2f: $c1
	call nc, $c083                                   ; $4b30: $d4 $83 $c0
	dec de                                           ; $4b33: $1b
	db $d3                                           ; $4b34: $d3
	ld [bc], a                                       ; $4b35: $02
	ret nc                                           ; $4b36: $d0

	pop de                                           ; $4b37: $d1
	ld h, h                                          ; $4b38: $64
	ldh [rDIV], a                                    ; $4b39: $e0 $04
	ld h, b                                          ; $4b3b: $60
	pop hl                                           ; $4b3c: $e1
	ld [hl-], a                                      ; $4b3d: $32
	nop                                              ; $4b3e: $00
	add hl, hl                                       ; $4b3f: $29
	pop hl                                           ; $4b40: $e1
	ld [bc], a                                       ; $4b41: $02
	ld bc, $c0a0                                     ; $4b42: $01 $a0 $c0
	ld bc, $05a0                                     ; $4b45: $01 $a0 $05
	dec b                                            ; $4b48: $05
	inc d                                            ; $4b49: $14
	ret nz                                           ; $4b4a: $c0

	ld bc, $01a0                                     ; $4b4b: $01 $a0 $01
	dec b                                            ; $4b4e: $05
	rla                                              ; $4b4f: $17
	ret nz                                           ; $4b50: $c0

	ld bc, $05a0                                     ; $4b51: $01 $a0 $05
	dec b                                            ; $4b54: $05
	inc e                                            ; $4b55: $1c
	ret nz                                           ; $4b56: $c0

	ld bc, $01a0                                     ; $4b57: $01 $a0 $01
	dec b                                            ; $4b5a: $05
	daa                                              ; $4b5b: $27
	ld h, b                                          ; $4b5c: $60
	rst $38                                          ; $4b5d: $ff
	ld b, $80                                        ; $4b5e: $06 $80
	nop                                              ; $4b60: $00
	ld a, b                                          ; $4b61: $78
	add b                                            ; $4b62: $80
	nop                                              ; $4b63: $00
	ld a, c                                          ; $4b64: $79
	rrca                                             ; $4b65: $0f
	ret nz                                           ; $4b66: $c0

	ld bc, $05a0                                     ; $4b67: $01 $a0 $05
	dec b                                            ; $4b6a: $05
	dec [hl]                                         ; $4b6b: $35
	ret nz                                           ; $4b6c: $c0

	ld bc, $01a0                                     ; $4b6d: $01 $a0 $01
	dec b                                            ; $4b70: $05
	dec a                                            ; $4b71: $3d
	ldh [rSB], a                                     ; $4b72: $e0 $01
	sub d                                            ; $4b74: $92
	daa                                              ; $4b75: $27
	or b                                             ; $4b76: $b0
	ld a, a                                          ; $4b77: $7f
	rra                                              ; $4b78: $1f
	ret nz                                           ; $4b79: $c0

	ld bc, $05a0                                     ; $4b7a: $01 $a0 $05
	dec b                                            ; $4b7d: $05
	dec [hl]                                         ; $4b7e: $35
	ret nz                                           ; $4b7f: $c0

	ld bc, $01a0                                     ; $4b80: $01 $a0 $01
	dec b                                            ; $4b83: $05
	ld b, c                                          ; $4b84: $41
	ret nz                                           ; $4b85: $c0

	ld bc, $05a0                                     ; $4b86: $01 $a0 $05
	nop                                              ; $4b89: $00
	adc l                                            ; $4b8a: $8d
	ret nz                                           ; $4b8b: $c0

	ld bc, $01a0                                     ; $4b8c: $01 $a0 $01
	nop                                              ; $4b8f: $00
	sub h                                            ; $4b90: $94
	nop                                              ; $4b91: $00
	add b                                            ; $4b92: $80
	nop                                              ; $4b93: $00
	ld a, c                                          ; $4b94: $79
	ldh [rSB], a                                     ; $4b95: $e0 $01
	sub [hl]                                         ; $4b97: $96
	rst $38                                          ; $4b98: $ff
	inc bc                                           ; $4b99: $03
	ldh [rDIV], a                                    ; $4b9a: $e0 $04
	dec sp                                           ; $4b9c: $3b
	ld [bc], a                                       ; $4b9d: $02
	jp nc, $8dd3                                     ; $4b9e: $d2 $d3 $8d

	ret nz                                           ; $4ba1: $c0

	ld bc, $05a0                                     ; $4ba2: $01 $a0 $05
	inc b                                            ; $4ba5: $04
	sbc d                                            ; $4ba6: $9a
	ld h, b                                          ; $4ba7: $60
	rst $38                                          ; $4ba8: $ff
	ld b, $80                                        ; $4ba9: $06 $80
	nop                                              ; $4bab: $00
	ld a, b                                          ; $4bac: $78
	add b                                            ; $4bad: $80
	nop                                              ; $4bae: $00
	ld a, c                                          ; $4baf: $79
	ld a, [hl+]                                      ; $4bb0: $2a
	ret nz                                           ; $4bb1: $c0

	ld bc, $01a0                                     ; $4bb2: $01 $a0 $01
	dec b                                            ; $4bb5: $05
	ld c, c                                          ; $4bb6: $49
	ret nz                                           ; $4bb7: $c0

	ld bc, $05a0                                     ; $4bb8: $01 $a0 $05
	dec b                                            ; $4bbb: $05
	ld d, [hl]                                       ; $4bbc: $56
	ret nz                                           ; $4bbd: $c0

	ld bc, $01a0                                     ; $4bbe: $01 $a0 $01
	dec b                                            ; $4bc1: $05
	ld e, a                                          ; $4bc2: $5f
	ret nz                                           ; $4bc3: $c0

	ld bc, $05a0                                     ; $4bc4: $01 $a0 $05
	dec b                                            ; $4bc7: $05
	ld l, a                                          ; $4bc8: $6f
	ret nz                                           ; $4bc9: $c0

	ld bc, $01a0                                     ; $4bca: $01 $a0 $01
	dec b                                            ; $4bcd: $05
	ld [hl], e                                       ; $4bce: $73
	ret nz                                           ; $4bcf: $c0

	ld bc, $05a0                                     ; $4bd0: $01 $a0 $05

Jump_084_4bd3:
	dec b                                            ; $4bd3: $05
	ld a, h                                          ; $4bd4: $7c
	ret nz                                           ; $4bd5: $c0

	ld bc, $01a0                                     ; $4bd6: $01 $a0 $01
	dec b                                            ; $4bd9: $05
	add e                                            ; $4bda: $83
	inc c                                            ; $4bdb: $0c
	ret nz                                           ; $4bdc: $c0

	ld bc, $01a0                                     ; $4bdd: $01 $a0 $01
	dec b                                            ; $4be0: $05
	add a                                            ; $4be1: $87
	ret nz                                           ; $4be2: $c0

	ld bc, $05a0                                     ; $4be3: $01 $a0 $05
	dec b                                            ; $4be6: $05
	adc h                                            ; $4be7: $8c
	pop hl                                           ; $4be8: $e1
	ld [hl-], a                                      ; $4be9: $32
	nop                                              ; $4bea: $00
	add hl, hl                                       ; $4beb: $29
	pop hl                                           ; $4bec: $e1
	ld [bc], a                                       ; $4bed: $02
	ld bc, $c0a0                                     ; $4bee: $01 $a0 $c0
	ld bc, $01a0                                     ; $4bf1: $01 $a0 $01
	dec b                                            ; $4bf4: $05
	adc [hl]                                         ; $4bf5: $8e
	ret nz                                           ; $4bf6: $c0

	ld bc, $05a0                                     ; $4bf7: $01 $a0 $05
	dec b                                            ; $4bfa: $05
	sub e                                            ; $4bfb: $93
	ret nz                                           ; $4bfc: $c0

	ld bc, $01a0                                     ; $4bfd: $01 $a0 $01
	dec b                                            ; $4c00: $05
	sub [hl]                                         ; $4c01: $96
	ret nz                                           ; $4c02: $c0

	ld bc, $05a0                                     ; $4c03: $01 $a0 $05
	dec b                                            ; $4c06: $05
	and a                                            ; $4c07: $a7
	ld h, b                                          ; $4c08: $60
	rst $38                                          ; $4c09: $ff
	ld b, $80                                        ; $4c0a: $06 $80
	nop                                              ; $4c0c: $00
	ld a, b                                          ; $4c0d: $78
	add b                                            ; $4c0e: $80
	nop                                              ; $4c0f: $00
	ld a, c                                          ; $4c10: $79
	ld b, $e0                                        ; $4c11: $06 $e0
	dec c                                            ; $4c13: $0d
	add [hl]                                         ; $4c14: $86
	ldh [rSB], a                                     ; $4c15: $e0 $01
	dec [hl]                                         ; $4c17: $35
	dec d                                            ; $4c18: $15
	or b                                             ; $4c19: $b0
	ld a, a                                          ; $4c1a: $7f
	dec c                                            ; $4c1b: $0d
	ldh [$0d], a                                     ; $4c1c: $e0 $0d
	adc c                                            ; $4c1e: $89
	ldh [$0d], a                                     ; $4c1f: $e0 $0d
	and [hl]                                         ; $4c21: $a6
	ldh [rSB], a                                     ; $4c22: $e0 $01
	jr z, jr_084_4c26                                ; $4c24: $28 $00

jr_084_4c26:
	add b                                            ; $4c26: $80
	nop                                              ; $4c27: $00
	ld a, c                                          ; $4c28: $79
	rst $38                                          ; $4c29: $ff
	inc bc                                           ; $4c2a: $03
	ldh [rTAC], a                                    ; $4c2b: $e0 $07
	db $f4                                           ; $4c2d: $f4
	ld bc, $afd4                                     ; $4c2e: $01 $d4 $af
	ret nz                                           ; $4c31: $c0

	ld bc, $05a0                                     ; $4c32: $01 $a0 $05
	inc b                                            ; $4c35: $04
	sbc d                                            ; $4c36: $9a
	ld h, b                                          ; $4c37: $60
	rst $38                                          ; $4c38: $ff
	ld b, $80                                        ; $4c39: $06 $80
	nop                                              ; $4c3b: $00
	ld a, b                                          ; $4c3c: $78
	add b                                            ; $4c3d: $80
	nop                                              ; $4c3e: $00
	ld a, c                                          ; $4c3f: $79
	ld e, $c0                                        ; $4c40: $1e $c0
	ld bc, $01a0                                     ; $4c42: $01 $a0 $01
	dec b                                            ; $4c45: $05
	ld c, c                                          ; $4c46: $49
	ret nz                                           ; $4c47: $c0

	ld bc, $05a0                                     ; $4c48: $01 $a0 $05
	dec b                                            ; $4c4b: $05
	xor l                                            ; $4c4c: $ad
	ret nz                                           ; $4c4d: $c0

	ld bc, $01a0                                     ; $4c4e: $01 $a0 $01
	dec b                                            ; $4c51: $05
	cp l                                             ; $4c52: $bd
	ret nz                                           ; $4c53: $c0

	ld bc, $05a0                                     ; $4c54: $01 $a0 $05
	dec b                                            ; $4c57: $05
	ret                                              ; $4c58: $c9


	ret nz                                           ; $4c59: $c0

	ld bc, $01a0                                     ; $4c5a: $01 $a0 $01
	dec b                                            ; $4c5d: $05
	add e                                            ; $4c5e: $83
	inc c                                            ; $4c5f: $0c
	ret nz                                           ; $4c60: $c0

	ld bc, $01a0                                     ; $4c61: $01 $a0 $01
	dec b                                            ; $4c64: $05
	add a                                            ; $4c65: $87
	ret nz                                           ; $4c66: $c0

	ld bc, $05a0                                     ; $4c67: $01 $a0 $05
	dec b                                            ; $4c6a: $05
	rst GetHLinHL                                          ; $4c6b: $cf
	pop hl                                           ; $4c6c: $e1
	ld [hl-], a                                      ; $4c6d: $32
	nop                                              ; $4c6e: $00
	add hl, hl                                       ; $4c6f: $29
	pop hl                                           ; $4c70: $e1

jr_084_4c71:
	ld [bc], a                                       ; $4c71: $02
	ld bc, $c0a0                                     ; $4c72: $01 $a0 $c0
	ld bc, $05a0                                     ; $4c75: $01 $a0 $05
	dec b                                            ; $4c78: $05
	call nc, $01c0                                   ; $4c79: $d4 $c0 $01
	and b                                            ; $4c7c: $a0
	ld bc, $d805                                     ; $4c7d: $01 $05 $d8
	ld h, b                                          ; $4c80: $60
	rst $38                                          ; $4c81: $ff
	ld b, $80                                        ; $4c82: $06 $80
	nop                                              ; $4c84: $00
	ld a, b                                          ; $4c85: $78
	add b                                            ; $4c86: $80
	nop                                              ; $4c87: $00
	ld a, c                                          ; $4c88: $79
	dec [hl]                                         ; $4c89: $35
	ldh [$0d], a                                     ; $4c8a: $e0 $0d
	ld c, $c0                                        ; $4c8c: $0e $c0
	ld bc, $05a0                                     ; $4c8e: $01 $a0 $05
	ld [bc], a                                       ; $4c91: $02
	sub d                                            ; $4c92: $92
	ret nz                                           ; $4c93: $c0

	ld bc, $01a0                                     ; $4c94: $01 $a0 $01
	ld [bc], a                                       ; $4c97: $02
	and b                                            ; $4c98: $a0
	ret nz                                           ; $4c99: $c0

	ld bc, $05a0                                     ; $4c9a: $01 $a0 $05
	ld [bc], a                                       ; $4c9d: $02
	and l                                            ; $4c9e: $a5
	ret nz                                           ; $4c9f: $c0

	ld bc, $01a0                                     ; $4ca0: $01 $a0 $01
	dec b                                            ; $4ca3: $05

jr_084_4ca4:
	rst SubAFromDE                                          ; $4ca4: $df
	ret nz                                           ; $4ca5: $c0

	ld bc, $05a0                                     ; $4ca6: $01 $a0 $05
	ld [bc], a                                       ; $4ca9: $02
	or l                                             ; $4caa: $b5
	ret nz                                           ; $4cab: $c0

	ld bc, $01a0                                     ; $4cac: $01 $a0 $01
	ld [bc], a                                       ; $4caf: $02
	cp l                                             ; $4cb0: $bd
	ret nz                                           ; $4cb1: $c0

	ld bc, $05a0                                     ; $4cb2: $01 $a0 $05
	dec b                                            ; $4cb5: $05
	and $c1                                          ; $4cb6: $e6 $c1
	ld e, e                                          ; $4cb8: $5b
	ret nz                                           ; $4cb9: $c0

	ld bc, $01a0                                     ; $4cba: $01 $a0 $01
	ld [bc], a                                       ; $4cbd: $02
	rst GetHLinHL                                          ; $4cbe: $cf
	jr nz, jr_084_4c71                               ; $4cbf: $20 $b0

	ld a, a                                          ; $4cc1: $7f
	jr jr_084_4ca4                                   ; $4cc2: $18 $e0

	inc c                                            ; $4cc4: $0c
	ldh [c], a                                       ; $4cc5: $e2
	ldh [$0c], a                                     ; $4cc6: $e0 $0c
	rst $38                                          ; $4cc8: $ff
	ret nz                                           ; $4cc9: $c0

	ld bc, $05a0                                     ; $4cca: $01 $a0 $05
	dec b                                            ; $4ccd: $05
	ldh a, [c]                                       ; $4cce: $f2
	pop bc                                           ; $4ccf: $c1
	ld e, e                                          ; $4cd0: $5b
	ret nz                                           ; $4cd1: $c0

	ld bc, $01a0                                     ; $4cd2: $01 $a0 $01
	ld [bc], a                                       ; $4cd5: $02
	pop hl                                           ; $4cd6: $e1
	nop                                              ; $4cd7: $00
	add b                                            ; $4cd8: $80
	nop                                              ; $4cd9: $00
	ld a, c                                          ; $4cda: $79
	rst $38                                          ; $4cdb: $ff
	inc bc                                           ; $4cdc: $03
	ldh [rTAC], a                                    ; $4cdd: $e0 $07
	ld l, c                                          ; $4cdf: $69
	ld bc, $1ed5                                     ; $4ce0: $01 $d5 $1e
	ret nz                                           ; $4ce3: $c0

	ld bc, $05a0                                     ; $4ce4: $01 $a0 $05
	dec b                                            ; $4ce7: $05
	ld sp, hl                                        ; $4ce8: $f9
	ret nz                                           ; $4ce9: $c0

	ld bc, $01a0                                     ; $4cea: $01 $a0 $01
	ld b, $00                                        ; $4ced: $06 $00
	ret nz                                           ; $4cef: $c0

	ld bc, $05a0                                     ; $4cf0: $01 $a0 $05
	ld b, $07                                        ; $4cf3: $06 $07
	pop hl                                           ; $4cf5: $e1
	ld [hl-], a                                      ; $4cf6: $32
	nop                                              ; $4cf7: $00
	add hl, hl                                       ; $4cf8: $29
	ret nz                                           ; $4cf9: $c0

	jp z, $01c0                                      ; $4cfa: $ca $c0 $01

	and b                                            ; $4cfd: $a0
	ld bc, $0d06                                     ; $4cfe: $01 $06 $0d
	push hl                                          ; $4d01: $e5
	inc sp                                           ; $4d02: $33
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld h, $c0                                        ; $4d05: $26 $c0
	ld bc, $05a0                                     ; $4d07: $01 $a0 $05
	nop                                              ; $4d0a: $00
	ld e, a                                          ; $4d0b: $5f
	ret nz                                           ; $4d0c: $c0

	ld bc, $01a0                                     ; $4d0d: $01 $a0 $01
	ld b, $17                                        ; $4d10: $06 $17
	ret nz                                           ; $4d12: $c0

	ld bc, $05a0                                     ; $4d13: $01 $a0 $05
	ld b, $23                                        ; $4d16: $06 $23
	ret nz                                           ; $4d18: $c0

	ld bc, $01a0                                     ; $4d19: $01 $a0 $01
	ld b, $33                                        ; $4d1c: $06 $33
	ret nz                                           ; $4d1e: $c0

	ld bc, $05a0                                     ; $4d1f: $01 $a0 $05
	ld b, $3a                                        ; $4d22: $06 $3a
	pop bc                                           ; $4d24: $c1
	ld e, e                                          ; $4d25: $5b
	ret nz                                           ; $4d26: $c0

	ld bc, $01a0                                     ; $4d27: $01 $a0 $01
	ld b, $47                                        ; $4d2a: $06 $47
	ld e, $c0                                        ; $4d2c: $1e $c0
	ld bc, $05a0                                     ; $4d2e: $01 $a0 $05
	ld b, $53                                        ; $4d31: $06 $53
	ret nz                                           ; $4d33: $c0

	ld bc, $01a0                                     ; $4d34: $01 $a0 $01
	ld b, $64                                        ; $4d37: $06 $64
	ret nz                                           ; $4d39: $c0

	ld bc, $05a0                                     ; $4d3a: $01 $a0 $05
	ld b, $73                                        ; $4d3d: $06 $73
	pop bc                                           ; $4d3f: $c1
	ld e, e                                          ; $4d40: $5b
	ret nz                                           ; $4d41: $c0

	ld bc, $01a0                                     ; $4d42: $01 $a0 $01
	ld b, $7f                                        ; $4d45: $06 $7f
	nop                                              ; $4d47: $00
	add b                                            ; $4d48: $80
	nop                                              ; $4d49: $00
	ld a, c                                          ; $4d4a: $79
	ld h, $c0                                        ; $4d4b: $26 $c0
	ld bc, $05a0                                     ; $4d4d: $01 $a0 $05
	ld b, $86                                        ; $4d50: $06 $86
	ret nz                                           ; $4d52: $c0

	ld bc, $01a0                                     ; $4d53: $01 $a0 $01
	ld b, $97                                        ; $4d56: $06 $97
	ret nz                                           ; $4d58: $c0

	ld bc, $05a0                                     ; $4d59: $01 $a0 $05
	ld b, $9d                                        ; $4d5c: $06 $9d
	ret nz                                           ; $4d5e: $c0

	ld bc, $01a0                                     ; $4d5f: $01 $a0 $01
	ld b, $a7                                        ; $4d62: $06 $a7
	ret nz                                           ; $4d64: $c0

	ld bc, $05a0                                     ; $4d65: $01 $a0 $05
	ld b, $b0                                        ; $4d68: $06 $b0
	pop bc                                           ; $4d6a: $c1
	ld e, e                                          ; $4d6b: $5b
	ret nz                                           ; $4d6c: $c0

	ld bc, $01a0                                     ; $4d6d: $01 $a0 $01
	ld b, $ba                                        ; $4d70: $06 $ba
	add hl, bc                                       ; $4d72: $09
	jp nz, $831c                                     ; $4d73: $c2 $1c $83

	ret nz                                           ; $4d76: $c0

	dec de                                           ; $4d77: $1b
	db $d3                                           ; $4d78: $d3
	ld [bc], a                                       ; $4d79: $02
	ret nc                                           ; $4d7a: $d0

	pop de                                           ; $4d7b: $d1
	add a                                            ; $4d7c: $87
	ldh [rSC], a                                     ; $4d7d: $e0 $02
	inc e                                            ; $4d7f: $1c
	ldh [rSC], a                                     ; $4d80: $e0 $02
	db $10                                           ; $4d82: $10
	ret nz                                           ; $4d83: $c0

	ld bc, $05a0                                     ; $4d84: $01 $a0 $05
	ld b, $c3                                        ; $4d87: $06 $c3
	ret nz                                           ; $4d89: $c0

	ld bc, $01a0                                     ; $4d8a: $01 $a0 $01
	ld b, $c8                                        ; $4d8d: $06 $c8
	ret nz                                           ; $4d8f: $c0

	ld bc, $05a0                                     ; $4d90: $01 $a0 $05
	ld b, $d1                                        ; $4d93: $06 $d1
	ret nz                                           ; $4d95: $c0

	ld bc, $01a0                                     ; $4d96: $01 $a0 $01
	ld b, $da                                        ; $4d99: $06 $da
	ld h, b                                          ; $4d9b: $60
	rst $38                                          ; $4d9c: $ff
	ld b, $80                                        ; $4d9d: $06 $80
	nop                                              ; $4d9f: $00
	ld a, b                                          ; $4da0: $78
	add b                                            ; $4da1: $80
	nop                                              ; $4da2: $00
	ld a, c                                          ; $4da3: $79
	add hl, hl                                       ; $4da4: $29
	ldh [$0b], a                                     ; $4da5: $e0 $0b
	di                                               ; $4da7: $f3
	ret nz                                           ; $4da8: $c0

	ld bc, $05a0                                     ; $4da9: $01 $a0 $05
	nop                                              ; $4dac: $00
	ld e, a                                          ; $4dad: $5f
	ret nz                                           ; $4dae: $c0

	ld bc, $01a0                                     ; $4daf: $01 $a0 $01
	inc b                                            ; $4db2: $04
	inc b                                            ; $4db3: $04
	ret nz                                           ; $4db4: $c0

	ld bc, $05a0                                     ; $4db5: $01 $a0 $05
	ld b, $e3                                        ; $4db8: $06 $e3
	ret nz                                           ; $4dba: $c0

	ld bc, $01a0                                     ; $4dbb: $01 $a0 $01
	inc b                                            ; $4dbe: $04
	add hl, bc                                       ; $4dbf: $09
	ret nz                                           ; $4dc0: $c0

	ld bc, $05a0                                     ; $4dc1: $01 $a0 $05
	inc bc                                           ; $4dc4: $03
	and h                                            ; $4dc5: $a4
	pop bc                                           ; $4dc6: $c1
	ld e, e                                          ; $4dc7: $5b
	ret nz                                           ; $4dc8: $c0

	ld bc, $01a0                                     ; $4dc9: $01 $a0 $01
	ld b, $eb                                        ; $4dcc: $06 $eb
	dec [hl]                                         ; $4dce: $35
	or b                                             ; $4dcf: $b0
	ld a, a                                          ; $4dd0: $7f
	dec l                                            ; $4dd1: $2d
	ldh [$0b], a                                     ; $4dd2: $e0 $0b
	db $d3                                           ; $4dd4: $d3
	ret nz                                           ; $4dd5: $c0

	ld bc, $05a0                                     ; $4dd6: $01 $a0 $05
	nop                                              ; $4dd9: $00
	adc l                                            ; $4dda: $8d
	ret nz                                           ; $4ddb: $c0

	ld bc, $01a0                                     ; $4ddc: $01 $a0 $01
	nop                                              ; $4ddf: $00
	sub h                                            ; $4de0: $94
	ret nz                                           ; $4de1: $c0

	ld bc, $05a0                                     ; $4de2: $01 $a0 $05
	ld b, $f6                                        ; $4de5: $06 $f6
	ret nz                                           ; $4de7: $c0

	ld bc, $01a0                                     ; $4de8: $01 $a0 $01
	inc b                                            ; $4deb: $04
	add hl, bc                                       ; $4dec: $09
	ret nz                                           ; $4ded: $c0

	ld bc, $05a0                                     ; $4dee: $01 $a0 $05
	inc bc                                           ; $4df1: $03
	and h                                            ; $4df2: $a4
	pop bc                                           ; $4df3: $c1
	ld e, e                                          ; $4df4: $5b
	ret nz                                           ; $4df5: $c0

	ld bc, $01a0                                     ; $4df6: $01 $a0 $01
	ld b, $eb                                        ; $4df9: $06 $eb
	nop                                              ; $4dfb: $00
	add b                                            ; $4dfc: $80
	nop                                              ; $4dfd: $00
	ld a, c                                          ; $4dfe: $79
	rst $38                                          ; $4dff: $ff
	inc bc                                           ; $4e00: $03
	ldh [rSB], a                                     ; $4e01: $e0 $01
	call nc, $d202                                   ; $4e03: $d4 $02 $d2
	db $d3                                           ; $4e06: $d3
	ret nz                                           ; $4e07: $c0

	jp nz, $01c0                                     ; $4e08: $c2 $c0 $01

	and b                                            ; $4e0b: $a0
	dec b                                            ; $4e0c: $05
	inc b                                            ; $4e0d: $04
	sbc d                                            ; $4e0e: $9a
	ld h, b                                          ; $4e0f: $60
	rst $38                                          ; $4e10: $ff
	ld b, $80                                        ; $4e11: $06 $80
	nop                                              ; $4e13: $00
	ld a, b                                          ; $4e14: $78
	add b                                            ; $4e15: $80
	nop                                              ; $4e16: $00
	ld a, c                                          ; $4e17: $79
	ld a, [hl+]                                      ; $4e18: $2a
	ret nz                                           ; $4e19: $c0

	ld bc, $01a0                                     ; $4e1a: $01 $a0 $01
	rlca                                             ; $4e1d: $07
	nop                                              ; $4e1e: $00
	ret nz                                           ; $4e1f: $c0

	ld bc, $05a0                                     ; $4e20: $01 $a0 $05
	dec b                                            ; $4e23: $05
	ld d, [hl]                                       ; $4e24: $56
	ret nz                                           ; $4e25: $c0

	ld bc, $01a0                                     ; $4e26: $01 $a0 $01
	dec b                                            ; $4e29: $05
	ld e, a                                          ; $4e2a: $5f
	ret nz                                           ; $4e2b: $c0

	ld bc, $05a0                                     ; $4e2c: $01 $a0 $05
	dec b                                            ; $4e2f: $05
	ld l, a                                          ; $4e30: $6f
	ret nz                                           ; $4e31: $c0

	ld bc, $01a0                                     ; $4e32: $01 $a0 $01
	rlca                                             ; $4e35: $07
	dec c                                            ; $4e36: $0d
	ret nz                                           ; $4e37: $c0

	ld bc, $05a0                                     ; $4e38: $01 $a0 $05
	dec b                                            ; $4e3b: $05
	ld a, h                                          ; $4e3c: $7c
	ret nz                                           ; $4e3d: $c0

	ld bc, $01a0                                     ; $4e3e: $01 $a0 $01
	dec b                                            ; $4e41: $05
	add e                                            ; $4e42: $83
	inc c                                            ; $4e43: $0c
	ret nz                                           ; $4e44: $c0

	ld bc, $01a0                                     ; $4e45: $01 $a0 $01
	dec b                                            ; $4e48: $05
	add a                                            ; $4e49: $87
	ret nz                                           ; $4e4a: $c0

	ld bc, $05a0                                     ; $4e4b: $01 $a0 $05
	dec b                                            ; $4e4e: $05
	adc h                                            ; $4e4f: $8c
	ldh [rSB], a                                     ; $4e50: $e0 $01
	ld b, b                                          ; $4e52: $40
	ret nz                                           ; $4e53: $c0

	ld bc, $05a0                                     ; $4e54: $01 $a0 $05
	ld b, $c3                                        ; $4e57: $06 $c3
	ret nz                                           ; $4e59: $c0

	ld bc, $01a0                                     ; $4e5a: $01 $a0 $01
	ld b, $c8                                        ; $4e5d: $06 $c8
	ret nz                                           ; $4e5f: $c0

	ld bc, $05a0                                     ; $4e60: $01 $a0 $05
	rlca                                             ; $4e63: $07
	rla                                              ; $4e64: $17
	ret nz                                           ; $4e65: $c0

	ld bc, $01a0                                     ; $4e66: $01 $a0 $01

jr_084_4e69:
	rlca                                             ; $4e69: $07
	ld e, $60                                        ; $4e6a: $1e $60
	rst $38                                          ; $4e6c: $ff
	ld b, $80                                        ; $4e6d: $06 $80
	nop                                              ; $4e6f: $00
	ld a, b                                          ; $4e70: $78
	add b                                            ; $4e71: $80
	nop                                              ; $4e72: $00
	ld a, c                                          ; $4e73: $79
	add hl, hl                                       ; $4e74: $29
	ldh [$0b], a                                     ; $4e75: $e0 $0b
	inc hl                                           ; $4e77: $23
	ret nz                                           ; $4e78: $c0

	ld bc, $05a0                                     ; $4e79: $01 $a0 $05
	nop                                              ; $4e7c: $00
	ld e, a                                          ; $4e7d: $5f
	ret nz                                           ; $4e7e: $c0

	ld bc, $01a0                                     ; $4e7f: $01 $a0 $01
	inc b                                            ; $4e82: $04
	inc b                                            ; $4e83: $04
	ret nz                                           ; $4e84: $c0

	ld bc, $05a0                                     ; $4e85: $01 $a0 $05
	rlca                                             ; $4e88: $07
	daa                                              ; $4e89: $27
	ret nz                                           ; $4e8a: $c0

	ld bc, $01a0                                     ; $4e8b: $01 $a0 $01
	inc b                                            ; $4e8e: $04
	add hl, bc                                       ; $4e8f: $09
	ret nz                                           ; $4e90: $c0

	ld bc, $05a0                                     ; $4e91: $01 $a0 $05
	inc bc                                           ; $4e94: $03
	and h                                            ; $4e95: $a4
	pop bc                                           ; $4e96: $c1
	ld e, e                                          ; $4e97: $5b
	ret nz                                           ; $4e98: $c0

	ld bc, $01a0                                     ; $4e99: $01 $a0 $01
	ld b, $eb                                        ; $4e9c: $06 $eb
	inc l                                            ; $4e9e: $2c
	or b                                             ; $4e9f: $b0
	ld a, a                                          ; $4ea0: $7f
	inc h                                            ; $4ea1: $24
	ldh [$0b], a                                     ; $4ea2: $e0 $0b
	inc bc                                           ; $4ea4: $03
	ldh [$0b], a                                     ; $4ea5: $e0 $0b
	jr nz, jr_084_4e69                               ; $4ea7: $20 $c0

	ld bc, $05a0                                     ; $4ea9: $01 $a0 $05
	rlca                                             ; $4eac: $07
	dec hl                                           ; $4ead: $2b
	ret nz                                           ; $4eae: $c0

	ld bc, $01a0                                     ; $4eaf: $01 $a0 $01
	inc b                                            ; $4eb2: $04
	add hl, bc                                       ; $4eb3: $09
	ret nz                                           ; $4eb4: $c0

	ld bc, $05a0                                     ; $4eb5: $01 $a0 $05
	inc bc                                           ; $4eb8: $03
	and h                                            ; $4eb9: $a4
	pop bc                                           ; $4eba: $c1
	ld e, e                                          ; $4ebb: $5b
	ret nz                                           ; $4ebc: $c0

	ld bc, $01a0                                     ; $4ebd: $01 $a0 $01
	ld b, $eb                                        ; $4ec0: $06 $eb
	nop                                              ; $4ec2: $00
	add b                                            ; $4ec3: $80
	nop                                              ; $4ec4: $00
	ld a, c                                          ; $4ec5: $79
	rst $38                                          ; $4ec6: $ff
	inc bc                                           ; $4ec7: $03
	ldh [rTIMA], a                                   ; $4ec8: $e0 $05
	ld d, a                                          ; $4eca: $57
	ld bc, $9ed4                                     ; $4ecb: $01 $d4 $9e
	ret nz                                           ; $4ece: $c0

	ld bc, $05a0                                     ; $4ecf: $01 $a0 $05
	inc b                                            ; $4ed2: $04

Jump_084_4ed3:
	sbc d                                            ; $4ed3: $9a
	ld h, b                                          ; $4ed4: $60
	rst $38                                          ; $4ed5: $ff
	ld b, $80                                        ; $4ed6: $06 $80
	nop                                              ; $4ed8: $00
	ld a, b                                          ; $4ed9: $78
	add b                                            ; $4eda: $80
	nop                                              ; $4edb: $00
	ld a, c                                          ; $4edc: $79
	ld e, $c0                                        ; $4edd: $1e $c0
	ld bc, $01a0                                     ; $4edf: $01 $a0 $01
	dec b                                            ; $4ee2: $05
	ld c, c                                          ; $4ee3: $49
	ret nz                                           ; $4ee4: $c0

	ld bc, $05a0                                     ; $4ee5: $01 $a0 $05
	dec b                                            ; $4ee8: $05
	xor l                                            ; $4ee9: $ad
	ret nz                                           ; $4eea: $c0

	ld bc, $01a0                                     ; $4eeb: $01 $a0 $01
	rlca                                             ; $4eee: $07
	ld l, $c0                                        ; $4eef: $2e $c0
	ld bc, $05a0                                     ; $4ef1: $01 $a0 $05
	dec b                                            ; $4ef4: $05
	ret                                              ; $4ef5: $c9


	ret nz                                           ; $4ef6: $c0

	ld bc, $01a0                                     ; $4ef7: $01 $a0 $01
	dec b                                            ; $4efa: $05
	add e                                            ; $4efb: $83
	inc c                                            ; $4efc: $0c

jr_084_4efd:
	ret nz                                           ; $4efd: $c0

	ld bc, $01a0                                     ; $4efe: $01 $a0 $01
	dec b                                            ; $4f01: $05
	add a                                            ; $4f02: $87
	ret nz                                           ; $4f03: $c0

	ld bc, $05a0                                     ; $4f04: $01 $a0 $05
	dec b                                            ; $4f07: $05
	rst GetHLinHL                                          ; $4f08: $cf
	ldh [rP1], a                                     ; $4f09: $e0 $00
	add a                                            ; $4f0b: $87
	ret nz                                           ; $4f0c: $c0

	ld bc, $05a0                                     ; $4f0d: $01 $a0 $05
	rlca                                             ; $4f10: $07
	dec sp                                           ; $4f11: $3b
	ret nz                                           ; $4f12: $c0

	ld bc, $01a0                                     ; $4f13: $01 $a0 $01
	rlca                                             ; $4f16: $07
	ld b, c                                          ; $4f17: $41
	ret nz                                           ; $4f18: $c0

	ld bc, $05a0                                     ; $4f19: $01 $a0 $05
	rlca                                             ; $4f1c: $07
	ld c, c                                          ; $4f1d: $49
	ret nz                                           ; $4f1e: $c0

	ld bc, $01a0                                     ; $4f1f: $01 $a0 $01
	ld b, $da                                        ; $4f22: $06 $da
	ld h, b                                          ; $4f24: $60
	rst $38                                          ; $4f25: $ff
	ld b, $80                                        ; $4f26: $06 $80
	nop                                              ; $4f28: $00
	ld a, b                                          ; $4f29: $78
	add b                                            ; $4f2a: $80
	nop                                              ; $4f2b: $00
	ld a, c                                          ; $4f2c: $79
	dec e                                            ; $4f2d: $1d
	ldh [$0a], a                                     ; $4f2e: $e0 $0a

jr_084_4f30:
	ld l, d                                          ; $4f30: $6a
	ret nz                                           ; $4f31: $c0

	ld bc, $05a0                                     ; $4f32: $01 $a0 $05
	nop                                              ; $4f35: $00
	ld e, a                                          ; $4f36: $5f
	ret nz                                           ; $4f37: $c0

	ld bc, $01a0                                     ; $4f38: $01 $a0 $01
	inc b                                            ; $4f3b: $04
	inc b                                            ; $4f3c: $04
	ret nz                                           ; $4f3d: $c0

	ld bc, $05a0                                     ; $4f3e: $01 $a0 $05
	rlca                                             ; $4f41: $07
	ld c, l                                          ; $4f42: $4d
	pop bc                                           ; $4f43: $c1
	ld e, e                                          ; $4f44: $5b
	ret nz                                           ; $4f45: $c0

	ld bc, $01a0                                     ; $4f46: $01 $a0 $01
	inc b                                            ; $4f49: $04
	ld [hl], d                                       ; $4f4a: $72
	jr nz, jr_084_4efd                               ; $4f4b: $20 $b0

	ld a, a                                          ; $4f4d: $7f
	jr jr_084_4f30                                   ; $4f4e: $18 $e0

	ld a, [bc]                                       ; $4f50: $0a
	ld d, [hl]                                       ; $4f51: $56
	ldh [$0a], a                                     ; $4f52: $e0 $0a
	ld [hl], e                                       ; $4f54: $73
	ret nz                                           ; $4f55: $c0

	ld bc, $05a0                                     ; $4f56: $01 $a0 $05
	rlca                                             ; $4f59: $07
	ld d, d                                          ; $4f5a: $52
	pop bc                                           ; $4f5b: $c1
	ld e, e                                          ; $4f5c: $5b
	ret nz                                           ; $4f5d: $c0

	ld bc, $01a0                                     ; $4f5e: $01 $a0 $01
	inc b                                            ; $4f61: $04
	ld [hl], d                                       ; $4f62: $72
	nop                                              ; $4f63: $00
	add b                                            ; $4f64: $80
	nop                                              ; $4f65: $00
	ld a, c                                          ; $4f66: $79
	rst $38                                          ; $4f67: $ff
	inc bc                                           ; $4f68: $03
	ldh [rDIV], a                                    ; $4f69: $e0 $04
	db $dd                                           ; $4f6b: $dd
	ld bc, $1ed5                                     ; $4f6c: $01 $d5 $1e
	ret nz                                           ; $4f6f: $c0

	ld bc, $05a0                                     ; $4f70: $01 $a0 $05
	dec b                                            ; $4f73: $05
	ld sp, hl                                        ; $4f74: $f9
	ret nz                                           ; $4f75: $c0

	ld bc, $01a0                                     ; $4f76: $01 $a0 $01
	ld b, $00                                        ; $4f79: $06 $00
	ret nz                                           ; $4f7b: $c0

	ld bc, $05a0                                     ; $4f7c: $01 $a0 $05
	ld b, $07                                        ; $4f7f: $06 $07
	pop hl                                           ; $4f81: $e1
	ld [hl-], a                                      ; $4f82: $32
	nop                                              ; $4f83: $00
	add c                                            ; $4f84: $81
	ret nz                                           ; $4f85: $c0

	jp z, $01c0                                      ; $4f86: $ca $c0 $01

	and b                                            ; $4f89: $a0
	ld bc, $0d06                                     ; $4f8a: $01 $06 $0d
	push hl                                          ; $4f8d: $e5
	inc sp                                           ; $4f8e: $33
	nop                                              ; $4f8f: $00
	nop                                              ; $4f90: $00
	ld [$32e1], sp                                   ; $4f91: $08 $e1 $32
	nop                                              ; $4f94: $00
	add c                                            ; $4f95: $81
	pop hl                                           ; $4f96: $e1
	ld [bc], a                                       ; $4f97: $02
	ld bc, $3ba0                                     ; $4f98: $01 $a0 $3b
	ret nz                                           ; $4f9b: $c0

	ld bc, $05a0                                     ; $4f9c: $01 $a0 $05
	inc b                                            ; $4f9f: $04
	sbc d                                            ; $4fa0: $9a
	ld h, b                                          ; $4fa1: $60
	rst $38                                          ; $4fa2: $ff
	ld b, $80                                        ; $4fa3: $06 $80
	nop                                              ; $4fa5: $00
	ld a, b                                          ; $4fa6: $78
	add b                                            ; $4fa7: $80
	nop                                              ; $4fa8: $00
	ld a, c                                          ; $4fa9: $79
	ld e, $c0                                        ; $4faa: $1e $c0
	ld bc, $01a0                                     ; $4fac: $01 $a0 $01
	dec b                                            ; $4faf: $05
	ld c, c                                          ; $4fb0: $49
	ret nz                                           ; $4fb1: $c0

	ld bc, $05a0                                     ; $4fb2: $01 $a0 $05
	rlca                                             ; $4fb5: $07
	ld d, a                                          ; $4fb6: $57
	ret nz                                           ; $4fb7: $c0

	ld bc, $01a0                                     ; $4fb8: $01 $a0 $01
	rlca                                             ; $4fbb: $07
	ld h, e                                          ; $4fbc: $63
	ret nz                                           ; $4fbd: $c0

	ld bc, $05a0                                     ; $4fbe: $01 $a0 $05
	rlca                                             ; $4fc1: $07
	ld l, a                                          ; $4fc2: $6f
	ret nz                                           ; $4fc3: $c0

	ld bc, $01a0                                     ; $4fc4: $01 $a0 $01
	rlca                                             ; $4fc7: $07
	ld [hl], a                                       ; $4fc8: $77
	inc c                                            ; $4fc9: $0c
	ret nz                                           ; $4fca: $c0

	ld bc, $01a0                                     ; $4fcb: $01 $a0 $01
	dec b                                            ; $4fce: $05
	add a                                            ; $4fcf: $87
	ret nz                                           ; $4fd0: $c0

	ld bc, $05a0                                     ; $4fd1: $01 $a0 $05
	dec b                                            ; $4fd4: $05
	adc h                                            ; $4fd5: $8c
	add hl, bc                                       ; $4fd6: $09
	ret nz                                           ; $4fd7: $c0

	ld bc, $05a0                                     ; $4fd8: $01 $a0 $05
	rlca                                             ; $4fdb: $07
	add c                                            ; $4fdc: $81
	ldh [$09], a                                     ; $4fdd: $e0 $09
	ld a, c                                          ; $4fdf: $79
	add hl, bc                                       ; $4fe0: $09
	dec d                                            ; $4fe1: $15
	add d                                            ; $4fe2: $82
	ret nz                                           ; $4fe3: $c0

	add b                                            ; $4fe4: $80
	ld bc, $03d3                                     ; $4fe5: $01 $d3 $03
	db $e4                                           ; $4fe8: $e4
	ld [bc], a                                       ; $4fe9: $02
	ld l, d                                          ; $4fea: $6a
	ld bc, $03d2                                     ; $4feb: $01 $d2 $03
	db $e4                                           ; $4fee: $e4
	ld bc, $010f                                     ; $4fef: $01 $0f $01
	pop de                                           ; $4ff2: $d1
	inc bc                                           ; $4ff3: $03
	db $e4                                           ; $4ff4: $e4
	nop                                              ; $4ff5: $00
	ld [bc], a                                       ; $4ff6: $02
	add hl, bc                                       ; $4ff7: $09
	or l                                             ; $4ff8: $b5
	pop bc                                           ; $4ff9: $c1
	ld e, c                                          ; $4ffa: $59
	db $e3                                           ; $4ffb: $e3
	nop                                              ; $4ffc: $00
	ld e, c                                          ; $4ffd: $59
	pop hl                                           ; $4ffe: $e1
	ld [bc], a                                       ; $4fff: $02
	ld bc, $82c8                                     ; $5000: $01 $c8 $82
	ret nz                                           ; $5003: $c0

	dec de                                           ; $5004: $1b
	db $d3                                           ; $5005: $d3
	ld [bc], a                                       ; $5006: $02
	ret nc                                           ; $5007: $d0

	pop de                                           ; $5008: $d1
	inc h                                            ; $5009: $24
	ldh [rP1], a                                     ; $500a: $e0 $00
	and e                                            ; $500c: $a3
	ret nz                                           ; $500d: $c0

	ld bc, $05a0                                     ; $500e: $01 $a0 $05
	rlca                                             ; $5011: $07
	add a                                            ; $5012: $87
	ret nz                                           ; $5013: $c0

	ld bc, $01a0                                     ; $5014: $01 $a0 $01
	rlca                                             ; $5017: $07
	sub b                                            ; $5018: $90
	ret nz                                           ; $5019: $c0

	ld bc, $05a0                                     ; $501a: $01 $a0 $05
	rlca                                             ; $501d: $07
	sub e                                            ; $501e: $93
	ret nz                                           ; $501f: $c0

	ld bc, $01a0                                     ; $5020: $01 $a0 $01
	rlca                                             ; $5023: $07
	and e                                            ; $5024: $a3
	ret nz                                           ; $5025: $c0

	ld bc, $05a0                                     ; $5026: $01 $a0 $05
	rlca                                             ; $5029: $07
	xor a                                            ; $502a: $af
	ldh [rP1], a                                     ; $502b: $e0 $00
	sbc e                                            ; $502d: $9b
	inc bc                                           ; $502e: $03
	jp nc, $d4d3                                     ; $502f: $d2 $d3 $d4

	ld a, [hl+]                                      ; $5032: $2a
	ldh [rP1], a                                     ; $5033: $e0 $00
	ld a, d                                          ; $5035: $7a
	ret nz                                           ; $5036: $c0

	ld bc, $05a0                                     ; $5037: $01 $a0 $05
	rlca                                             ; $503a: $07
	or l                                             ; $503b: $b5
	ret nz                                           ; $503c: $c0

	ld bc, $01a0                                     ; $503d: $01 $a0 $01
	rlca                                             ; $5040: $07
	cp [hl]                                          ; $5041: $be
	ret nz                                           ; $5042: $c0

	ld bc, $05a0                                     ; $5043: $01 $a0 $05
	rlca                                             ; $5046: $07
	add $c0                                          ; $5047: $c6 $c0
	ld bc, $01a0                                     ; $5049: $01 $a0 $01
	rlca                                             ; $504c: $07
	ret nc                                           ; $504d: $d0

	ret nz                                           ; $504e: $c0

	ld bc, $05a0                                     ; $504f: $01 $a0 $05
	rlca                                             ; $5052: $07
	reti                                             ; $5053: $d9


	ret nz                                           ; $5054: $c0

	ld bc, $01a0                                     ; $5055: $01 $a0 $01
	rlca                                             ; $5058: $07
	ldh [c], a                                       ; $5059: $e2
	ldh [rP1], a                                     ; $505a: $e0 $00
	ld l, h                                          ; $505c: $6c
	ld bc, $48d5                                     ; $505d: $01 $d5 $48
	ret nz                                           ; $5060: $c0

	ld bc, $05a0                                     ; $5061: $01 $a0 $05
	inc b                                            ; $5064: $04
	call nz, $01c0                                   ; $5065: $c4 $c0 $01
	and b                                            ; $5068: $a0
	ld bc, $ec07                                     ; $5069: $01 $07 $ec
	ret nz                                           ; $506c: $c0

	ld bc, $05a0                                     ; $506d: $01 $a0 $05

jr_084_5070:
	rlca                                             ; $5070: $07
	ld a, [$02e1]                                    ; $5071: $fa $e1 $02
	rlca                                             ; $5074: $07
	sbc e                                            ; $5075: $9b
	ld h, b                                          ; $5076: $60
	ei                                               ; $5077: $fb
	pop bc                                           ; $5078: $c1
	ld c, l                                          ; $5079: $4d
	ldh [$64], a                                     ; $507a: $e0 $64
	ld [de], a                                       ; $507c: $12
	ret nz                                           ; $507d: $c0

	ld bc, $05a0                                     ; $507e: $01 $a0 $05
	ld [$c005], sp                                   ; $5081: $08 $05 $c0
	ld bc, $01a0                                     ; $5084: $01 $a0 $01
	ld [$c011], sp                                   ; $5087: $08 $11 $c0
	ld bc, $05a0                                     ; $508a: $01 $a0 $05
	ld [$1817], sp                                   ; $508d: $08 $17 $18
	ret nz                                           ; $5090: $c0

	ld bc, $05a0                                     ; $5091: $01 $a0 $05
	ld [$c020], sp                                   ; $5094: $08 $20 $c0
	ld bc, $01a0                                     ; $5097: $01 $a0 $01
	ld [$c02c], sp                                   ; $509a: $08 $2c $c0
	ld bc, $05a0                                     ; $509d: $01 $a0 $05
	ld [$c037], sp                                   ; $50a0: $08 $37 $c0
	ld bc, $01a0                                     ; $50a3: $01 $a0 $01
	ld [$c140], sp                                   ; $50a6: $08 $40 $c1
	ld e, e                                          ; $50a9: $5b
	push hl                                          ; $50aa: $e5
	inc sp                                           ; $50ab: $33
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	jr jr_084_5070                                   ; $50ae: $18 $c0

	ld bc, $05a0                                     ; $50b0: $01 $a0 $05
	ld [$c042], sp                                   ; $50b3: $08 $42 $c0
	ld bc, $01a0                                     ; $50b6: $01 $a0 $01
	ld [$c047], sp                                   ; $50b9: $08 $47 $c0
	ld bc, $05a0                                     ; $50bc: $01 $a0 $05
	ld [$c04c], sp                                   ; $50bf: $08 $4c $c0
	ld bc, $01a0                                     ; $50c2: $01 $a0 $01
	ld [$364f], sp                                   ; $50c5: $08 $4f $36
	pop hl                                           ; $50c8: $e1
	ld [bc], a                                       ; $50c9: $02
	rlca                                             ; $50ca: $07
	sbc e                                            ; $50cb: $9b
	ld h, b                                          ; $50cc: $60
	ei                                               ; $50cd: $fb
	pop bc                                           ; $50ce: $c1
	ld c, l                                          ; $50cf: $4d
	ldh [$64], a                                     ; $50d0: $e0 $64
	ld [de], a                                       ; $50d2: $12

Jump_084_50d3:
	ret nz                                           ; $50d3: $c0

	ld bc, $05a0                                     ; $50d4: $01 $a0 $05
	ld [$c058], sp                                   ; $50d7: $08 $58 $c0
	ld bc, $01a0                                     ; $50da: $01 $a0 $01
	ld [$c011], sp                                   ; $50dd: $08 $11 $c0
	ld bc, $05a0                                     ; $50e0: $01 $a0 $05
	ld [$1864], sp                                   ; $50e3: $08 $64 $18
	ret nz                                           ; $50e6: $c0

	ld bc, $05a0                                     ; $50e7: $01 $a0 $05
	ld [$c071], sp                                   ; $50ea: $08 $71 $c0
	ld bc, $01a0                                     ; $50ed: $01 $a0 $01
	ld [$c079], sp                                   ; $50f0: $08 $79 $c0
	ld bc, $05a0                                     ; $50f3: $01 $a0 $05
	ld [$c084], sp                                   ; $50f6: $08 $84 $c0
	ld bc, $01a0                                     ; $50f9: $01 $a0 $01
	ld [$0994], sp                                   ; $50fc: $08 $94 $09
	ret nz                                           ; $50ff: $c0

	db $e4                                           ; $5100: $e4
	pop bc                                           ; $5101: $c1
	ld e, c                                          ; $5102: $59
	db $e3                                           ; $5103: $e3
	nop                                              ; $5104: $00
	ld e, d                                          ; $5105: $5a
	pop hl                                           ; $5106: $e1
	ld [bc], a                                       ; $5107: $02
	ld bc, $fdc8                                     ; $5108: $01 $c8 $fd
	ret nz                                           ; $510b: $c0

	call nc, $1bc0                                   ; $510c: $d4 $c0 $1b
	db $d3                                           ; $510f: $d3
	ld bc, $14d0                                     ; $5110: $01 $d0 $14
	ldh [rP1], a                                     ; $5113: $e0 $00
	pop de                                           ; $5115: $d1
	ret nz                                           ; $5116: $c0

	ld bc, $05a0                                     ; $5117: $01 $a0 $05
	ld [$c09a], sp                                   ; $511a: $08 $9a $c0
	ld bc, $01a0                                     ; $511d: $01 $a0 $01
	ld [$e0a5], sp                                   ; $5120: $08 $a5 $e0
	ld bc, wButtonsHeld                                     ; $5123: $01 $23 $c1
	ld e, e                                          ; $5126: $5b
	ld bc, $35d1                                     ; $5127: $01 $d1 $35
	ret nz                                           ; $512a: $c0

	ld bc, $05a0                                     ; $512b: $01 $a0 $05
	ld [$c0ae], sp                                   ; $512e: $08 $ae $c0
	ld bc, $01a0                                     ; $5131: $01 $a0 $01
	ld [$c0b6], sp                                   ; $5134: $08 $b6 $c0
	ld bc, $05a0                                     ; $5137: $01 $a0 $05
	ld [$c0c2], sp                                   ; $513a: $08 $c2 $c0
	ld bc, $01a0                                     ; $513d: $01 $a0 $01
	ld [$c0d0], sp                                   ; $5140: $08 $d0 $c0
	ld bc, $05a0                                     ; $5143: $01 $a0 $05
	ld [$c0d9], sp                                   ; $5146: $08 $d9 $c0
	ld bc, $01a0                                     ; $5149: $01 $a0 $01
	ld [wGenericTileDataDest+1], sp                                   ; $514c: $08 $e3 $c0
	ld bc, $05a0                                     ; $514f: $01 $a0 $05
	ld [wGenericTileDataFinalDest+1], sp                                   ; $5152: $08 $e7 $c0
	ld bc, $01a0                                     ; $5155: $01 $a0 $01
	ld [$e0f0], sp                                   ; $5158: $08 $f0 $e0
	nop                                              ; $515b: $00
	db $eb                                           ; $515c: $eb
	pop bc                                           ; $515d: $c1
	ld e, e                                          ; $515e: $5b
	ld [bc], a                                       ; $515f: $02
	jp nc, $08d3                                     ; $5160: $d2 $d3 $08

	ldh [rP1], a                                     ; $5163: $e0 $00
	add c                                            ; $5165: $81
	ldh [rP1], a                                     ; $5166: $e0 $00
	rst SubAFromDE                                          ; $5168: $df
	pop bc                                           ; $5169: $c1
	ld e, e                                          ; $516a: $5b
	ld bc, $4ad4                                     ; $516b: $01 $d4 $4a
	ret nz                                           ; $516e: $c0

	ld bc, $05a0                                     ; $516f: $01 $a0 $05
	ld [$c0ae], sp                                   ; $5172: $08 $ae $c0
	ld bc, $01a0                                     ; $5175: $01 $a0 $01
	ld [$c0b6], sp                                   ; $5178: $08 $b6 $c0
	ld bc, $05a0                                     ; $517b: $01 $a0 $05
	ld [$c0c2], sp                                   ; $517e: $08 $c2 $c0
	ld bc, $01a0                                     ; $5181: $01 $a0 $01
	ld [$c0d0], sp                                   ; $5184: $08 $d0 $c0
	ld bc, $05a0                                     ; $5187: $01 $a0 $05
	ld [$c0f3], sp                                   ; $518a: $08 $f3 $c0
	ld bc, $01a0                                     ; $518d: $01 $a0 $01
	ld [$c0fe], sp                                   ; $5190: $08 $fe $c0
	ld bc, $05a0                                     ; $5193: $01 $a0 $05
	add hl, bc                                       ; $5196: $09
	inc b                                            ; $5197: $04
	ret nz                                           ; $5198: $c0

	ld bc, $01a0                                     ; $5199: $01 $a0 $01
	add hl, bc                                       ; $519c: $09
	rrca                                             ; $519d: $0f
	ret nz                                           ; $519e: $c0

	ld bc, $05a0                                     ; $519f: $01 $a0 $05
	add hl, bc                                       ; $51a2: $09
	ld d, $c0                                        ; $51a3: $16 $c0
	ld bc, $01a0                                     ; $51a5: $01 $a0 $01
	add hl, bc                                       ; $51a8: $09
	add hl, de                                       ; $51a9: $19
	ret nz                                           ; $51aa: $c0

	ld bc, $05a0                                     ; $51ab: $01 $a0 $05
	add hl, bc                                       ; $51ae: $09
	dec h                                            ; $51af: $25
	ret nz                                           ; $51b0: $c0

	ld bc, $01a0                                     ; $51b1: $01 $a0 $01
	add hl, bc                                       ; $51b4: $09
	dec [hl]                                         ; $51b5: $35
	pop bc                                           ; $51b6: $c1
	ld e, e                                          ; $51b7: $5b
	ld bc, $26d5                                     ; $51b8: $01 $d5 $26
	ret nz                                           ; $51bb: $c0

	ld bc, $05a0                                     ; $51bc: $01 $a0 $05
	add hl, bc                                       ; $51bf: $09
	add hl, sp                                       ; $51c0: $39
	ret nz                                           ; $51c1: $c0

	ld bc, $01a0                                     ; $51c2: $01 $a0 $01
	add hl, bc                                       ; $51c5: $09
	ld b, e                                          ; $51c6: $43
	ret nz                                           ; $51c7: $c0

	ld bc, $05a0                                     ; $51c8: $01 $a0 $05
	add hl, bc                                       ; $51cb: $09
	ld c, e                                          ; $51cc: $4b
	ret nz                                           ; $51cd: $c0

	ld bc, $01a0                                     ; $51ce: $01 $a0 $01
	add hl, bc                                       ; $51d1: $09
	ld d, d                                          ; $51d2: $52
	ret nz                                           ; $51d3: $c0

	ld bc, $05a0                                     ; $51d4: $01 $a0 $05
	add hl, bc                                       ; $51d7: $09
	ld e, a                                          ; $51d8: $5f
	pop bc                                           ; $51d9: $c1
	ld e, e                                          ; $51da: $5b
	ret nz                                           ; $51db: $c0

	ld bc, $01a0                                     ; $51dc: $01 $a0 $01
	ld [$e540], sp                                   ; $51df: $08 $40 $e5
	inc sp                                           ; $51e2: $33
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	ld h, b                                          ; $51e5: $60
	ret nz                                           ; $51e6: $c0

	ld bc, $05a0                                     ; $51e7: $01 $a0 $05
	add hl, bc                                       ; $51ea: $09
	ld l, e                                          ; $51eb: $6b
	ret nz                                           ; $51ec: $c0

	ld bc, $01a0                                     ; $51ed: $01 $a0 $01
	ld [$c0b6], sp                                   ; $51f0: $08 $b6 $c0
	ld bc, $05a0                                     ; $51f3: $01 $a0 $05
	ld [$c0c2], sp                                   ; $51f6: $08 $c2 $c0
	ld bc, $01a0                                     ; $51f9: $01 $a0 $01
	add hl, bc                                       ; $51fc: $09
	ld [hl], h                                       ; $51fd: $74
	ret nz                                           ; $51fe: $c0

	ld bc, $05a0                                     ; $51ff: $01 $a0 $05
	add hl, bc                                       ; $5202: $09
	ld a, [hl]                                       ; $5203: $7e
	ret nz                                           ; $5204: $c0

	ld bc, $01a0                                     ; $5205: $01 $a0 $01
	ld [wGenericTileDataDest+1], sp                                   ; $5208: $08 $e3 $c0
	ld bc, $05a0                                     ; $520b: $01 $a0 $05
	add hl, bc                                       ; $520e: $09
	add e                                            ; $520f: $83
	ret nz                                           ; $5210: $c0

	ld bc, $01a0                                     ; $5211: $01 $a0 $01
	add hl, bc                                       ; $5214: $09
	adc a                                            ; $5215: $8f
	ret nz                                           ; $5216: $c0

	ld bc, $05a0                                     ; $5217: $01 $a0 $05
	add hl, bc                                       ; $521a: $09
	sbc b                                            ; $521b: $98
	ret nz                                           ; $521c: $c0

	ld bc, $01a0                                     ; $521d: $01 $a0 $01
	add hl, bc                                       ; $5220: $09
	sbc [hl]                                         ; $5221: $9e
	ret nz                                           ; $5222: $c0

	ld bc, $05a0                                     ; $5223: $01 $a0 $05
	add hl, bc                                       ; $5226: $09
	and h                                            ; $5227: $a4
	ret nz                                           ; $5228: $c0

	ld bc, $01a0                                     ; $5229: $01 $a0 $01
	add hl, bc                                       ; $522c: $09
	or h                                             ; $522d: $b4
	ret nz                                           ; $522e: $c0

	ld bc, $05a0                                     ; $522f: $01 $a0 $05
	add hl, bc                                       ; $5232: $09
	cp e                                             ; $5233: $bb
	ret nz                                           ; $5234: $c0

	ld bc, $01a0                                     ; $5235: $01 $a0 $01
	add hl, bc                                       ; $5238: $09
	jp $01c0                                         ; $5239: $c3 $c0 $01


	and b                                            ; $523c: $a0
	dec b                                            ; $523d: $05
	add hl, bc                                       ; $523e: $09
	ret                                              ; $523f: $c9


	ret nz                                           ; $5240: $c0

	ld bc, $01a0                                     ; $5241: $01 $a0 $01
	add hl, bc                                       ; $5244: $09
	call nc, $c00c                                   ; $5245: $d4 $0c $c0
	ld bc, $05a0                                     ; $5248: $01 $a0 $05
	add hl, bc                                       ; $524b: $09
	reti                                             ; $524c: $d9


	ret nz                                           ; $524d: $c0

	ld bc, $01a0                                     ; $524e: $01 $a0 $01
	add hl, bc                                       ; $5251: $09
	dec [hl]                                         ; $5252: $35
	add hl, bc                                       ; $5253: $09
	pop bc                                           ; $5254: $c1
	add a                                            ; $5255: $87
	pop bc                                           ; $5256: $c1
	ld e, c                                          ; $5257: $59
	db $e3                                           ; $5258: $e3
	nop                                              ; $5259: $00
	ld e, b                                          ; $525a: $58
	pop hl                                           ; $525b: $e1
	ld [bc], a                                       ; $525c: $02
	ld bc, $83c8                                     ; $525d: $01 $c8 $83
	ret nz                                           ; $5260: $c0

	dec de                                           ; $5261: $1b
	db $d3                                           ; $5262: $d3
	ld [bc], a                                       ; $5263: $02
	ret nc                                           ; $5264: $d0

	pop de                                           ; $5265: $d1
	ld a, h                                          ; $5266: $7c
	ret nz                                           ; $5267: $c0

	ld bc, $05a0                                     ; $5268: $01 $a0 $05
	add hl, bc                                       ; $526b: $09
	db $e4                                           ; $526c: $e4
	ret nz                                           ; $526d: $c0

	ld bc, $01a0                                     ; $526e: $01 $a0 $01
	add hl, bc                                       ; $5271: $09
	xor $c0                                          ; $5272: $ee $c0
	ld bc, $05a0                                     ; $5274: $01 $a0 $05
	add hl, bc                                       ; $5277: $09
	cp $c0                                           ; $5278: $fe $c0
	ld bc, $01a0                                     ; $527a: $01 $a0 $01
	ld a, [bc]                                       ; $527d: $0a
	dec b                                            ; $527e: $05
	ret nz                                           ; $527f: $c0

	inc c                                            ; $5280: $0c
	ldh [rAUD3HIGH], a                               ; $5281: $e0 $1e
	ret nz                                           ; $5283: $c0

	ld bc, $05a0                                     ; $5284: $01 $a0 $05
	ld a, [bc]                                       ; $5287: $0a
	dec bc                                           ; $5288: $0b
	ret nz                                           ; $5289: $c0

	ld bc, $01a0                                     ; $528a: $01 $a0 $01
	ld a, [bc]                                       ; $528d: $0a
	add hl, de                                       ; $528e: $19
	ret nz                                           ; $528f: $c0

	ld bc, $05a0                                     ; $5290: $01 $a0 $05
	ld a, [bc]                                       ; $5293: $0a
	dec h                                            ; $5294: $25
	ret nz                                           ; $5295: $c0

	ld bc, $01a0                                     ; $5296: $01 $a0 $01
	ld a, [bc]                                       ; $5299: $0a
	dec hl                                           ; $529a: $2b
	ret nz                                           ; $529b: $c0

	ld bc, $05a0                                     ; $529c: $01 $a0 $05
	ld a, [bc]                                       ; $529f: $0a
	ld sp, $01c0                                     ; $52a0: $31 $c0 $01
	and b                                            ; $52a3: $a0
	ld bc, $400a                                     ; $52a4: $01 $0a $40
	pop hl                                           ; $52a7: $e1
	ld [bc], a                                       ; $52a8: $02
	rlca                                             ; $52a9: $07
	sbc e                                            ; $52aa: $9b
	ld h, b                                          ; $52ab: $60
	ei                                               ; $52ac: $fb
	pop bc                                           ; $52ad: $c1
	ld c, l                                          ; $52ae: $4d
	ldh [$64], a                                     ; $52af: $e0 $64
	jr @-$3e                                         ; $52b1: $18 $c0

	ld bc, $05a0                                     ; $52b3: $01 $a0 $05
	ld a, [bc]                                       ; $52b6: $0a
	ld b, [hl]                                       ; $52b7: $46
	ret nz                                           ; $52b8: $c0

	ld bc, $01a0                                     ; $52b9: $01 $a0 $01
	ld a, [bc]                                       ; $52bc: $0a
	ld c, a                                          ; $52bd: $4f
	ret nz                                           ; $52be: $c0

	ld bc, $05a0                                     ; $52bf: $01 $a0 $05
	ld a, [bc]                                       ; $52c2: $0a
	ld h, c                                          ; $52c3: $61
	ret nz                                           ; $52c4: $c0

	ld bc, $01a0                                     ; $52c5: $01 $a0 $01
	ld a, [bc]                                       ; $52c8: $0a
	ld l, e                                          ; $52c9: $6b
	jr @-$3e                                         ; $52ca: $18 $c0

	ld bc, $05a0                                     ; $52cc: $01 $a0 $05
	ld a, [bc]                                       ; $52cf: $0a
	ld b, [hl]                                       ; $52d0: $46
	ret nz                                           ; $52d1: $c0

	ld bc, $01a0                                     ; $52d2: $01 $a0 $01
	ld a, [bc]                                       ; $52d5: $0a
	ld [hl], h                                       ; $52d6: $74
	ret nz                                           ; $52d7: $c0

	ld bc, $05a0                                     ; $52d8: $01 $a0 $05
	ld a, [bc]                                       ; $52db: $0a
	ld a, a                                          ; $52dc: $7f
	ret nz                                           ; $52dd: $c0

	ld bc, $01a0                                     ; $52de: $01 $a0 $01
	ld a, [bc]                                       ; $52e1: $0a
	add a                                            ; $52e2: $87
	ld [bc], a                                       ; $52e3: $02
	jp nc, Jump_084_48d3                             ; $52e4: $d2 $d3 $48

	ldh [rP1], a                                     ; $52e7: $e0 $00
	push af                                          ; $52e9: $f5
	ret nz                                           ; $52ea: $c0

	ld bc, $05a0                                     ; $52eb: $01 $a0 $05
	ld a, [bc]                                       ; $52ee: $0a
	sub h                                            ; $52ef: $94
	ret nz                                           ; $52f0: $c0

	ld bc, $01a0                                     ; $52f1: $01 $a0 $01
	ld a, [bc]                                       ; $52f4: $0a
	and h                                            ; $52f5: $a4
	ret nz                                           ; $52f6: $c0

	ld bc, $05a0                                     ; $52f7: $01 $a0 $05
	ld a, [bc]                                       ; $52fa: $0a
	xor l                                            ; $52fb: $ad
	ret nz                                           ; $52fc: $c0

	ld bc, $01a0                                     ; $52fd: $01 $a0 $01
	ld a, [bc]                                       ; $5300: $0a
	cp h                                             ; $5301: $bc
	ret nz                                           ; $5302: $c0

	ld bc, $05a0                                     ; $5303: $01 $a0 $05
	ld a, [bc]                                       ; $5306: $0a
	add $e1                                          ; $5307: $c6 $e1
	ld [bc], a                                       ; $5309: $02
	rlca                                             ; $530a: $07
	sbc e                                            ; $530b: $9b
	ld h, b                                          ; $530c: $60
	ei                                               ; $530d: $fb
	pop bc                                           ; $530e: $c1
	ld c, l                                          ; $530f: $4d
	ldh [$64], a                                     ; $5310: $e0 $64
	inc bc                                           ; $5312: $03
	ldh [rP1], a                                     ; $5313: $e0 $00
	and $18                                          ; $5315: $e6 $18

jr_084_5317:
	ret nz                                           ; $5317: $c0

	ld bc, $05a0                                     ; $5318: $01 $a0 $05
	ld a, [bc]                                       ; $531b: $0a
	ld b, [hl]                                       ; $531c: $46
	ret nz                                           ; $531d: $c0

	ld bc, $01a0                                     ; $531e: $01 $a0 $01
	ld a, [bc]                                       ; $5321: $0a
	ld [hl], h                                       ; $5322: $74
	ret nz                                           ; $5323: $c0

	ld bc, $05a0                                     ; $5324: $01 $a0 $05
	ld a, [bc]                                       ; $5327: $0a
	jp nc, $01c0                                     ; $5328: $d2 $c0 $01

	and b                                            ; $532b: $a0
	ld bc, $870a                                     ; $532c: $01 $0a $87
	ld bc, $3cd4                                     ; $532f: $01 $d4 $3c
	ldh [rP1], a                                     ; $5332: $e0 $00
	xor d                                            ; $5334: $aa
	ret nz                                           ; $5335: $c0

	ld bc, $05a0                                     ; $5336: $01 $a0 $05
	ld a, [bc]                                       ; $5339: $0a
	push hl                                          ; $533a: $e5
	ret nz                                           ; $533b: $c0

	ld bc, $01a0                                     ; $533c: $01 $a0 $01
	ld a, [bc]                                       ; $533f: $0a
	db $ec                                           ; $5340: $ec
	ret nz                                           ; $5341: $c0

	ld bc, $05a0                                     ; $5342: $01 $a0 $05
	ld a, [bc]                                       ; $5345: $0a
	add $e1                                          ; $5346: $c6 $e1
	ld [bc], a                                       ; $5348: $02
	rlca                                             ; $5349: $07
	sbc e                                            ; $534a: $9b
	ld h, b                                          ; $534b: $60
	ei                                               ; $534c: $fb
	pop bc                                           ; $534d: $c1
	ld c, l                                          ; $534e: $4d
	ldh [$64], a                                     ; $534f: $e0 $64
	inc bc                                           ; $5351: $03
	ldh [rP1], a                                     ; $5352: $e0 $00
	and a                                            ; $5354: $a7
	jr jr_084_5317                                   ; $5355: $18 $c0

	ld bc, $05a0                                     ; $5357: $01 $a0 $05
	ld a, [bc]                                       ; $535a: $0a
	ld b, [hl]                                       ; $535b: $46
	ret nz                                           ; $535c: $c0

	ld bc, $01a0                                     ; $535d: $01 $a0 $01
	ld a, [bc]                                       ; $5360: $0a
	ld [hl], h                                       ; $5361: $74
	ret nz                                           ; $5362: $c0

	ld bc, $05a0                                     ; $5363: $01 $a0 $05
	ld a, [bc]                                       ; $5366: $0a

jr_084_5367:
	db $f4                                           ; $5367: $f4
	ret nz                                           ; $5368: $c0

	ld bc, $01a0                                     ; $5369: $01 $a0 $01
	dec bc                                           ; $536c: $0b
	dec b                                            ; $536d: $05
	ld bc, $66d5                                     ; $536e: $01 $d5 $66
	ret nz                                           ; $5371: $c0

	ld bc, $05a0                                     ; $5372: $01 $a0 $05
	dec bc                                           ; $5375: $0b
	dec bc                                           ; $5376: $0b
	ret nz                                           ; $5377: $c0

	ld bc, $01a0                                     ; $5378: $01 $a0 $01
	dec bc                                           ; $537b: $0b
	add hl, de                                       ; $537c: $19
	ret nz                                           ; $537d: $c0

	ld bc, $05a0                                     ; $537e: $01 $a0 $05
	dec bc                                           ; $5381: $0b
	dec e                                            ; $5382: $1d
	ret nz                                           ; $5383: $c0

	ld bc, $01a0                                     ; $5384: $01 $a0 $01
	dec bc                                           ; $5387: $0b
	ld e, $c0                                        ; $5388: $1e $c0
	ld bc, $05a0                                     ; $538a: $01 $a0 $05
	dec bc                                           ; $538d: $0b
	dec l                                            ; $538e: $2d
	ret nz                                           ; $538f: $c0

	ld bc, $01a0                                     ; $5390: $01 $a0 $01
	dec bc                                           ; $5393: $0b
	ld [hl], $c0                                     ; $5394: $36 $c0
	ld bc, $05a0                                     ; $5396: $01 $a0 $05
	dec bc                                           ; $5399: $0b
	ld a, [hl-]                                      ; $539a: $3a
	pop hl                                           ; $539b: $e1
	ld [bc], a                                       ; $539c: $02
	rlca                                             ; $539d: $07
	sbc e                                            ; $539e: $9b
	ld h, b                                          ; $539f: $60
	ei                                               ; $53a0: $fb
	pop bc                                           ; $53a1: $c1
	ld c, l                                          ; $53a2: $4d
	ldh [$64], a                                     ; $53a3: $e0 $64
	jr jr_084_5367                                   ; $53a5: $18 $c0

	ld bc, $05a0                                     ; $53a7: $01 $a0 $05
	dec bc                                           ; $53aa: $0b
	ld b, d                                          ; $53ab: $42
	ret nz                                           ; $53ac: $c0

	ld bc, $01a0                                     ; $53ad: $01 $a0 $01
	dec bc                                           ; $53b0: $0b
	ld c, h                                          ; $53b1: $4c
	ret nz                                           ; $53b2: $c0

	ld bc, $05a0                                     ; $53b3: $01 $a0 $05
	dec bc                                           ; $53b6: $0b
	ld d, l                                          ; $53b7: $55
	ret nz                                           ; $53b8: $c0

	ld bc, $01a0                                     ; $53b9: $01 $a0 $01

jr_084_53bc:
	dec bc                                           ; $53bc: $0b
	ld e, h                                          ; $53bd: $5c
	jr @-$3e                                         ; $53be: $18 $c0

	ld bc, $05a0                                     ; $53c0: $01 $a0 $05
	dec bc                                           ; $53c3: $0b
	ld b, d                                          ; $53c4: $42
	ret nz                                           ; $53c5: $c0

	ld bc, $01a0                                     ; $53c6: $01 $a0 $01
	ld a, [bc]                                       ; $53c9: $0a
	ld [hl], h                                       ; $53ca: $74
	ret nz                                           ; $53cb: $c0

	ld bc, $05a0                                     ; $53cc: $01 $a0 $05
	dec bc                                           ; $53cf: $0b
	ld h, b                                          ; $53d0: $60
	ret nz                                           ; $53d1: $c0

	ld bc, $01a0                                     ; $53d2: $01 $a0 $01
	dec bc                                           ; $53d5: $0b
	ld h, l                                          ; $53d6: $65
	pop bc                                           ; $53d7: $c1
	ld e, e                                          ; $53d8: $5b
	push hl                                          ; $53d9: $e5
	inc sp                                           ; $53da: $33
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	inc e                                            ; $53dd: $1c
	ret nz                                           ; $53de: $c0

	ld bc, $05a0                                     ; $53df: $01 $a0 $05
	add hl, bc                                       ; $53e2: $09
	db $e4                                           ; $53e3: $e4
	ret nz                                           ; $53e4: $c0

	ld bc, $01a0                                     ; $53e5: $01 $a0 $01
	add hl, bc                                       ; $53e8: $09
	xor $c0                                          ; $53e9: $ee $c0
	ld bc, $05a0                                     ; $53eb: $01 $a0 $05
	dec bc                                           ; $53ee: $0b
	ld l, h                                          ; $53ef: $6c
	ret nz                                           ; $53f0: $c0

	ld bc, $01a0                                     ; $53f1: $01 $a0 $01
	ld a, [bc]                                       ; $53f4: $0a
	dec b                                            ; $53f5: $05
	ret nz                                           ; $53f6: $c0

	inc c                                            ; $53f7: $0c
	ldh [rAUD3HIGH], a                               ; $53f8: $e0 $1e
	jr jr_084_53bc                                   ; $53fa: $18 $c0

	ld bc, $05a0                                     ; $53fc: $01 $a0 $05
	ld a, [bc]                                       ; $53ff: $0a
	ld b, [hl]                                       ; $5400: $46
	ret nz                                           ; $5401: $c0

	ld bc, $01a0                                     ; $5402: $01 $a0 $01
	ld a, [bc]                                       ; $5405: $0a
	ld c, a                                          ; $5406: $4f
	ret nz                                           ; $5407: $c0

	ld bc, $05a0                                     ; $5408: $01 $a0 $05
	dec bc                                           ; $540b: $0b
	ld [hl], b                                       ; $540c: $70
	ret nz                                           ; $540d: $c0

	ld bc, $01a0                                     ; $540e: $01 $a0 $01
	ld a, [bc]                                       ; $5411: $0a
	ld l, e                                          ; $5412: $6b
	inc c                                            ; $5413: $0c
	ret nz                                           ; $5414: $c0

	ld bc, $05a0                                     ; $5415: $01 $a0 $05
	dec bc                                           ; $5418: $0b
	ld a, c                                          ; $5419: $79
	ret nz                                           ; $541a: $c0

	ld bc, $01a0                                     ; $541b: $01 $a0 $01
	ld bc, $2661                                     ; $541e: $01 $61 $26
	ret nz                                           ; $5421: $c0

	ld bc, $05a0                                     ; $5422: $01 $a0 $05
	dec bc                                           ; $5425: $0b
	add b                                            ; $5426: $80
	ret nz                                           ; $5427: $c0

	ld bc, $01a0                                     ; $5428: $01 $a0 $01
	dec bc                                           ; $542b: $0b
	add l                                            ; $542c: $85
	ret nz                                           ; $542d: $c0

	ld bc, $05a0                                     ; $542e: $01 $a0 $05
	dec bc                                           ; $5431: $0b
	adc c                                            ; $5432: $89
	ret nz                                           ; $5433: $c0

	ld bc, $01a0                                     ; $5434: $01 $a0 $01
	dec bc                                           ; $5437: $0b
	sub c                                            ; $5438: $91
	ret nz                                           ; $5439: $c0

	ld bc, $05a0                                     ; $543a: $01 $a0 $05
	dec bc                                           ; $543d: $0b
	sbc h                                            ; $543e: $9c
	pop bc                                           ; $543f: $c1
	ld e, e                                          ; $5440: $5b
	ret nz                                           ; $5441: $c0

	ld bc, $01a0                                     ; $5442: $01 $a0 $01
	dec bc                                           ; $5445: $0b
	xor c                                            ; $5446: $a9
	jr nz, @-$3e                                     ; $5447: $20 $c0

	ld bc, $05a0                                     ; $5449: $01 $a0 $05
	dec bc                                           ; $544c: $0b
	add b                                            ; $544d: $80
	ret nz                                           ; $544e: $c0

	ld bc, $01a0                                     ; $544f: $01 $a0 $01
	dec bc                                           ; $5452: $0b
	add l                                            ; $5453: $85
	ret nz                                           ; $5454: $c0

	ld bc, $05a0                                     ; $5455: $01 $a0 $05
	dec bc                                           ; $5458: $0b
	adc c                                            ; $5459: $89
	ret nz                                           ; $545a: $c0

	ld bc, $01a0                                     ; $545b: $01 $a0 $01
	ld [bc], a                                       ; $545e: $02
	rla                                              ; $545f: $17
	ret nz                                           ; $5460: $c0

	ld bc, $05a0                                     ; $5461: $01 $a0 $05
	dec bc                                           ; $5464: $0b
	cp d                                             ; $5465: $ba
	pop bc                                           ; $5466: $c1
	ld e, e                                          ; $5467: $5b
	add hl, bc                                       ; $5468: $09
	dec h                                            ; $5469: $25
	ret nz                                           ; $546a: $c0

	ld hl, $d3d2                                     ; $546b: $21 $d2 $d3
	add d                                            ; $546e: $82
	ret nz                                           ; $546f: $c0

	add b                                            ; $5470: $80
	ld bc, $07d3                                     ; $5471: $01 $d3 $07
	ret nz                                           ; $5474: $c0

	ld [hl+], a                                      ; $5475: $22
	jp nc, $e4d3                                     ; $5476: $d2 $d3 $e4

	inc bc                                           ; $5479: $03
	add hl, bc                                       ; $547a: $09
	ld bc, $07d2                                     ; $547b: $01 $d2 $07
	ret nz                                           ; $547e: $c0

	ld [hl+], a                                      ; $547f: $22
	pop de                                           ; $5480: $d1
	db $d3                                           ; $5481: $d3
	db $e4                                           ; $5482: $e4
	ld bc, $01ab                                     ; $5483: $01 $ab $01
	pop de                                           ; $5486: $d1
	rlca                                             ; $5487: $07
	ret nz                                           ; $5488: $c0

	ld [hl+], a                                      ; $5489: $22
	pop de                                           ; $548a: $d1
	db $d3                                           ; $548b: $d3
	db $e4                                           ; $548c: $e4
	nop                                              ; $548d: $00
	ld [bc], a                                       ; $548e: $02
	add hl, bc                                       ; $548f: $09
	pop bc                                           ; $5490: $c1
	sbc h                                            ; $5491: $9c
	add e                                            ; $5492: $83
	ret nz                                           ; $5493: $c0

	dec de                                           ; $5494: $1b
	db $d3                                           ; $5495: $d3
	ld [bc], a                                       ; $5496: $02
	ret nc                                           ; $5497: $d0

	pop de                                           ; $5498: $d1
	add l                                            ; $5499: $85
	pop hl                                           ; $549a: $e1
	ld [bc], a                                       ; $549b: $02
	ld bc, $c098                                     ; $549c: $01 $98 $c0
	ld bc, $05a0                                     ; $549f: $01 $a0 $05
	dec bc                                           ; $54a2: $0b
	cp [hl]                                          ; $54a3: $be
	ret nz                                           ; $54a4: $c0

	ld bc, $01a0                                     ; $54a5: $01 $a0 $01
	dec bc                                           ; $54a8: $0b
	jp $01c0                                         ; $54a9: $c3 $c0 $01


	and b                                            ; $54ac: $a0
	dec b                                            ; $54ad: $05
	dec bc                                           ; $54ae: $0b
	jp z, $01c0                                      ; $54af: $ca $c0 $01

	and b                                            ; $54b2: $a0
	ld bc, $d20b                                     ; $54b3: $01 $0b $d2
	ret nz                                           ; $54b6: $c0

	ld bc, $05a0                                     ; $54b7: $01 $a0 $05
	dec bc                                           ; $54ba: $0b
	reti                                             ; $54bb: $d9


	ret nz                                           ; $54bc: $c0

	ld bc, $01a0                                     ; $54bd: $01 $a0 $01
	dec bc                                           ; $54c0: $0b
	pop hl                                           ; $54c1: $e1
	ld h, b                                          ; $54c2: $60
	rst $38                                          ; $54c3: $ff
	ld b, $80                                        ; $54c4: $06 $80
	nop                                              ; $54c6: $00
	ld a, b                                          ; $54c7: $78
	add b                                            ; $54c8: $80
	nop                                              ; $54c9: $00
	ld a, c                                          ; $54ca: $79
	inc hl                                           ; $54cb: $23
	ret nz                                           ; $54cc: $c0

	ld bc, $05a0                                     ; $54cd: $01 $a0 $05
	dec bc                                           ; $54d0: $0b
	ld [$05e0], a                                    ; $54d1: $ea $e0 $05
	dec l                                            ; $54d4: $2d
	ret nz                                           ; $54d5: $c0

	ld bc, $05a0                                     ; $54d6: $01 $a0 $05
	dec bc                                           ; $54d9: $0b
	pop af                                           ; $54da: $f1
	ret nz                                           ; $54db: $c0

	ld bc, $01a0                                     ; $54dc: $01 $a0 $01
	dec bc                                           ; $54df: $0b
	ei                                               ; $54e0: $fb
	ret nz                                           ; $54e1: $c0

	ld bc, $05a0                                     ; $54e2: $01 $a0 $05
	rlca                                             ; $54e5: $07
	ld c, l                                          ; $54e6: $4d
	pop bc                                           ; $54e7: $c1
	ld e, e                                          ; $54e8: $5b
	ret nz                                           ; $54e9: $c0

	ld bc, $01a0                                     ; $54ea: $01 $a0 $01
	inc c                                            ; $54ed: $0c
	ld [bc], a                                       ; $54ee: $02
	cpl                                              ; $54ef: $2f
	or b                                             ; $54f0: $b0
	ld a, a                                          ; $54f1: $7f
	daa                                              ; $54f2: $27
	ret nz                                           ; $54f3: $c0

	ld bc, $05a0                                     ; $54f4: $01 $a0 $05
	dec bc                                           ; $54f7: $0b
	ld [$04e0], a                                    ; $54f8: $ea $e0 $04
	cp c                                             ; $54fb: $b9
	ret nz                                           ; $54fc: $c0

	ld bc, $05a0                                     ; $54fd: $01 $a0 $05
	dec bc                                           ; $5500: $0b
	pop af                                           ; $5501: $f1
	ret nz                                           ; $5502: $c0

	ld bc, $01a0                                     ; $5503: $01 $a0 $01
	inc c                                            ; $5506: $0c
	dec c                                            ; $5507: $0d
	ret nz                                           ; $5508: $c0

	ld bc, $05a0                                     ; $5509: $01 $a0 $05
	rlca                                             ; $550c: $07
	ld c, l                                          ; $550d: $4d
	pop bc                                           ; $550e: $c1
	ld e, e                                          ; $550f: $5b
	ret nz                                           ; $5510: $c0

	ld bc, $01a0                                     ; $5511: $01 $a0 $01
	inc c                                            ; $5514: $0c
	inc d                                            ; $5515: $14
	nop                                              ; $5516: $00
	add b                                            ; $5517: $80
	nop                                              ; $5518: $00
	ld a, c                                          ; $5519: $79
	rst $38                                          ; $551a: $ff
	inc bc                                           ; $551b: $03
	ldh [$03], a                                     ; $551c: $e0 $03
	db $ec                                           ; $551e: $ec
	ld [bc], a                                       ; $551f: $02
	jp nc, $91d3                                     ; $5520: $d2 $d3 $91

	pop hl                                           ; $5523: $e1
	ld [bc], a                                       ; $5524: $02
	ld bc, $c098                                     ; $5525: $01 $98 $c0
	ld bc, $05a0                                     ; $5528: $01 $a0 $05
	dec bc                                           ; $552b: $0b
	cp [hl]                                          ; $552c: $be
	ret nz                                           ; $552d: $c0

	ld bc, $01a0                                     ; $552e: $01 $a0 $01
	dec bc                                           ; $5531: $0b
	jp $01c0                                         ; $5532: $c3 $c0 $01


	and b                                            ; $5535: $a0
	dec b                                            ; $5536: $05
	inc c                                            ; $5537: $0c
	ld a, [de]                                       ; $5538: $1a
	ret nz                                           ; $5539: $c0

	ld bc, $01a0                                     ; $553a: $01 $a0 $01
	inc c                                            ; $553d: $0c
	dec h                                            ; $553e: $25
	ret nz                                           ; $553f: $c0

	ld bc, $05a0                                     ; $5540: $01 $a0 $05
	inc c                                            ; $5543: $0c
	ld a, [hl+]                                      ; $5544: $2a
	ret nz                                           ; $5545: $c0

	ld bc, $01a0                                     ; $5546: $01 $a0 $01
	inc c                                            ; $5549: $0c
	ld [hl-], a                                      ; $554a: $32
	ret nz                                           ; $554b: $c0

	ld bc, $05a0                                     ; $554c: $01 $a0 $05
	inc c                                            ; $554f: $0c
	add hl, sp                                       ; $5550: $39
	ret nz                                           ; $5551: $c0

	ld bc, $01a0                                     ; $5552: $01 $a0 $01
	inc c                                            ; $5555: $0c
	ld b, c                                          ; $5556: $41
	ld h, b                                          ; $5557: $60
	rst $38                                          ; $5558: $ff
	ld b, $80                                        ; $5559: $06 $80
	nop                                              ; $555b: $00
	ld a, b                                          ; $555c: $78
	add b                                            ; $555d: $80
	nop                                              ; $555e: $00
	ld a, c                                          ; $555f: $79
	inc hl                                           ; $5560: $23
	ret nz                                           ; $5561: $c0

	ld bc, $05a0                                     ; $5562: $01 $a0 $05
	inc bc                                           ; $5565: $03
	add e                                            ; $5566: $83
	ldh [rDIV], a                                    ; $5567: $e0 $04
	add l                                            ; $5569: $85
	ret nz                                           ; $556a: $c0

	ld bc, $05a0                                     ; $556b: $01 $a0 $05
	inc c                                            ; $556e: $0c
	ld c, c                                          ; $556f: $49
	ret nz                                           ; $5570: $c0

	ld bc, $01a0                                     ; $5571: $01 $a0 $01
	inc c                                            ; $5574: $0c
	ld d, d                                          ; $5575: $52
	ret nz                                           ; $5576: $c0

	ld bc, $05a0                                     ; $5577: $01 $a0 $05
	inc bc                                           ; $557a: $03
	and h                                            ; $557b: $a4
	pop bc                                           ; $557c: $c1
	ld e, e                                          ; $557d: $5b
	ret nz                                           ; $557e: $c0

	ld bc, $01a0                                     ; $557f: $01 $a0 $01
	inc c                                            ; $5582: $0c
	inc d                                            ; $5583: $14
	cpl                                              ; $5584: $2f
	or b                                             ; $5585: $b0
	ld a, a                                          ; $5586: $7f
	daa                                              ; $5587: $27
	ret nz                                           ; $5588: $c0

	ld bc, $05a0                                     ; $5589: $01 $a0 $05
	inc bc                                           ; $558c: $03
	add e                                            ; $558d: $83
	ldh [rDIV], a                                    ; $558e: $e0 $04
	inc h                                            ; $5590: $24
	ret nz                                           ; $5591: $c0

	ld bc, $05a0                                     ; $5592: $01 $a0 $05
	inc c                                            ; $5595: $0c
	ld e, c                                          ; $5596: $59
	ret nz                                           ; $5597: $c0

	ld bc, $01a0                                     ; $5598: $01 $a0 $01
	inc c                                            ; $559b: $0c
	ld d, d                                          ; $559c: $52
	ret nz                                           ; $559d: $c0

	ld bc, $05a0                                     ; $559e: $01 $a0 $05
	inc c                                            ; $55a1: $0c
	ld h, d                                          ; $55a2: $62
	pop bc                                           ; $55a3: $c1
	ld e, e                                          ; $55a4: $5b
	ret nz                                           ; $55a5: $c0

	ld bc, $01a0                                     ; $55a6: $01 $a0 $01
	inc c                                            ; $55a9: $0c
	inc d                                            ; $55aa: $14
	nop                                              ; $55ab: $00
	add b                                            ; $55ac: $80
	nop                                              ; $55ad: $00
	ld a, c                                          ; $55ae: $79
	rst $38                                          ; $55af: $ff
	inc bc                                           ; $55b0: $03
	ldh [$03], a                                     ; $55b1: $e0 $03
	ld a, [hl]                                       ; $55b3: $7e
	ld bc, $6dd4                                     ; $55b4: $01 $d4 $6d
	pop hl                                           ; $55b7: $e1
	ld [bc], a                                       ; $55b8: $02
	ld bc, $c098                                     ; $55b9: $01 $98 $c0
	ld bc, $05a0                                     ; $55bc: $01 $a0 $05
	dec bc                                           ; $55bf: $0b
	cp [hl]                                          ; $55c0: $be
	ret nz                                           ; $55c1: $c0

	ld bc, $01a0                                     ; $55c2: $01 $a0 $01
	dec bc                                           ; $55c5: $0b
	jp $01c0                                         ; $55c6: $c3 $c0 $01


	and b                                            ; $55c9: $a0
	dec b                                            ; $55ca: $05
	inc c                                            ; $55cb: $0c
	ld h, h                                          ; $55cc: $64
	ret nz                                           ; $55cd: $c0

	ld bc, $01a0                                     ; $55ce: $01 $a0 $01
	inc c                                            ; $55d1: $0c
	ld [hl-], a                                      ; $55d2: $32
	ret nz                                           ; $55d3: $c0

	ld bc, $05a0                                     ; $55d4: $01 $a0 $05
	inc c                                            ; $55d7: $0c
	ld [hl], b                                       ; $55d8: $70
	ret nz                                           ; $55d9: $c0

	ld bc, $01a0                                     ; $55da: $01 $a0 $01
	inc c                                            ; $55dd: $0c
	ld a, d                                          ; $55de: $7a
	ld h, b                                          ; $55df: $60
	rst $38                                          ; $55e0: $ff
	ld b, $80                                        ; $55e1: $06 $80
	nop                                              ; $55e3: $00
	ld a, b                                          ; $55e4: $78
	add b                                            ; $55e5: $80
	nop                                              ; $55e6: $00
	ld a, c                                          ; $55e7: $79
	rla                                              ; $55e8: $17
	ret nz                                           ; $55e9: $c0

	ld bc, $05a0                                     ; $55ea: $01 $a0 $05
	inc bc                                           ; $55ed: $03
	add e                                            ; $55ee: $83
	ldh [$03], a                                     ; $55ef: $e0 $03
	db $fd                                           ; $55f1: $fd
	ret nz                                           ; $55f2: $c0

	ld bc, $05a0                                     ; $55f3: $01 $a0 $05
	inc bc                                           ; $55f6: $03
	and h                                            ; $55f7: $a4
	pop bc                                           ; $55f8: $c1
	ld e, e                                          ; $55f9: $5b
	ret nz                                           ; $55fa: $c0

	ld bc, $01a0                                     ; $55fb: $01 $a0 $01
	inc c                                            ; $55fe: $0c
	add a                                            ; $55ff: $87
	inc hl                                           ; $5600: $23
	or b                                             ; $5601: $b0
	ld a, a                                          ; $5602: $7f
	dec de                                           ; $5603: $1b
	ret nz                                           ; $5604: $c0

	ld bc, $05a0                                     ; $5605: $01 $a0 $05
	inc bc                                           ; $5608: $03
	add e                                            ; $5609: $83
	ldh [$03], a                                     ; $560a: $e0 $03
	xor b                                            ; $560c: $a8
	ret nz                                           ; $560d: $c0

	ld bc, $05a0                                     ; $560e: $01 $a0 $05
	inc c                                            ; $5611: $0c
	sub e                                            ; $5612: $93
	pop bc                                           ; $5613: $c1
	ld e, e                                          ; $5614: $5b
	ret nz                                           ; $5615: $c0

	ld bc, $01a0                                     ; $5616: $01 $a0 $01
	inc c                                            ; $5619: $0c
	add a                                            ; $561a: $87
	nop                                              ; $561b: $00
	add b                                            ; $561c: $80
	nop                                              ; $561d: $00
	ld a, c                                          ; $561e: $79
	rst $38                                          ; $561f: $ff
	inc bc                                           ; $5620: $03
	ldh [$03], a                                     ; $5621: $e0 $03
	ld c, $01                                        ; $5623: $0e $01
	push de                                          ; $5625: $d5
	inc bc                                           ; $5626: $03
	ldh [rSC], a                                     ; $5627: $e0 $02
	or e                                             ; $5629: $b3
	push hl                                          ; $562a: $e5
	inc sp                                           ; $562b: $33
	nop                                              ; $562c: $00
	nop                                              ; $562d: $00
	add hl, bc                                       ; $562e: $09
	pop bc                                           ; $562f: $c1
	ld d, c                                          ; $5630: $51
	add e                                            ; $5631: $83
	ret nz                                           ; $5632: $c0

	dec de                                           ; $5633: $1b
	db $d3                                           ; $5634: $d3
	ld [bc], a                                       ; $5635: $02
	ret nc                                           ; $5636: $d0

	pop de                                           ; $5637: $d1
	ld h, a                                          ; $5638: $67
	pop hl                                           ; $5639: $e1
	ld [bc], a                                       ; $563a: $02
	ld bc, $c098                                     ; $563b: $01 $98 $c0
	ld bc, $05a0                                     ; $563e: $01 $a0 $05
	dec bc                                           ; $5641: $0b
	cp [hl]                                          ; $5642: $be
	ret nz                                           ; $5643: $c0

	ld bc, $01a0                                     ; $5644: $01 $a0 $01
	dec bc                                           ; $5647: $0b
	jp $01c0                                         ; $5648: $c3 $c0 $01


	and b                                            ; $564b: $a0
	dec b                                            ; $564c: $05
	inc c                                            ; $564d: $0c
	sbc d                                            ; $564e: $9a
	ret nz                                           ; $564f: $c0

	ld bc, $01a0                                     ; $5650: $01 $a0 $01
	inc c                                            ; $5653: $0c
	and e                                            ; $5654: $a3
	ld h, b                                          ; $5655: $60
	rst $38                                          ; $5656: $ff
	ld b, $80                                        ; $5657: $06 $80
	nop                                              ; $5659: $00
	ld a, b                                          ; $565a: $78
	add b                                            ; $565b: $80
	nop                                              ; $565c: $00
	ld a, c                                          ; $565d: $79
	ld a, [de]                                       ; $565e: $1a
	ret nz                                           ; $565f: $c0

	ld bc, $05a0                                     ; $5660: $01 $a0 $05
	dec bc                                           ; $5663: $0b
	ld [$03e0], a                                    ; $5664: $ea $e0 $03
	sbc d                                            ; $5667: $9a
	ret nz                                           ; $5668: $c0

	ld bc, $05a0                                     ; $5669: $01 $a0 $05
	inc bc                                           ; $566c: $03
	dec [hl]                                         ; $566d: $35
	ldh [$03], a                                     ; $566e: $e0 $03
	ld [hl], c                                       ; $5670: $71
	pop bc                                           ; $5671: $c1
	ld e, e                                          ; $5672: $5b
	ret nz                                           ; $5673: $c0

	ld bc, $01a0                                     ; $5674: $01 $a0 $01
	inc bc                                           ; $5677: $03
	dec a                                            ; $5678: $3d
	ld h, $b0                                        ; $5679: $26 $b0
	ld a, a                                          ; $567b: $7f
	ld e, $c0                                        ; $567c: $1e $c0
	ld bc, $05a0                                     ; $567e: $01 $a0 $05
	dec bc                                           ; $5681: $0b
	ld [$03e0], a                                    ; $5682: $ea $e0 $03
	cpl                                              ; $5685: $2f
	ret nz                                           ; $5686: $c0

	ld bc, $05a0                                     ; $5687: $01 $a0 $05
	inc bc                                           ; $568a: $03
	dec [hl]                                         ; $568b: $35
	ldh [$03], a                                     ; $568c: $e0 $03
	ld d, e                                          ; $568e: $53
	pop bc                                           ; $568f: $c1
	ld e, e                                          ; $5690: $5b
	ret nz                                           ; $5691: $c0

	ld bc, $01a0                                     ; $5692: $01 $a0 $01
	inc bc                                           ; $5695: $03
	dec a                                            ; $5696: $3d
	nop                                              ; $5697: $00
	add b                                            ; $5698: $80
	nop                                              ; $5699: $00
	ld a, c                                          ; $569a: $79
	rst $38                                          ; $569b: $ff
	inc bc                                           ; $569c: $03
	ldh [rSC], a                                     ; $569d: $e0 $02
	ld l, e                                          ; $569f: $6b
	ld [bc], a                                       ; $56a0: $02
	jp nc, $70d3                                     ; $56a1: $d2 $d3 $70

	pop hl                                           ; $56a4: $e1
	ld [bc], a                                       ; $56a5: $02
	ld bc, $c098                                     ; $56a6: $01 $98 $c0
	ld bc, $05a0                                     ; $56a9: $01 $a0 $05
	dec bc                                           ; $56ac: $0b
	cp [hl]                                          ; $56ad: $be
	ret nz                                           ; $56ae: $c0

	ld bc, $01a0                                     ; $56af: $01 $a0 $01
	dec bc                                           ; $56b2: $0b
	jp $01c0                                         ; $56b3: $c3 $c0 $01


	and b                                            ; $56b6: $a0
	dec b                                            ; $56b7: $05
	inc c                                            ; $56b8: $0c
	xor c                                            ; $56b9: $a9
	ret nz                                           ; $56ba: $c0

	ld bc, $01a0                                     ; $56bb: $01 $a0 $01
	inc c                                            ; $56be: $0c
	or c                                             ; $56bf: $b1
	ld h, b                                          ; $56c0: $60
	rst $38                                          ; $56c1: $ff
	ld b, $80                                        ; $56c2: $06 $80
	nop                                              ; $56c4: $00
	ld a, b                                          ; $56c5: $78
	add b                                            ; $56c6: $80
	nop                                              ; $56c7: $00
	ld a, c                                          ; $56c8: $79
	ld a, [de]                                       ; $56c9: $1a
	ret nz                                           ; $56ca: $c0

	ld bc, $05a0                                     ; $56cb: $01 $a0 $05
	inc c                                            ; $56ce: $0c
	cp a                                             ; $56cf: $bf
	ldh [$03], a                                     ; $56d0: $e0 $03
	inc e                                            ; $56d2: $1c
	ret nz                                           ; $56d3: $c0

	ld bc, $05a0                                     ; $56d4: $01 $a0 $05
	inc bc                                           ; $56d7: $03
	adc c                                            ; $56d8: $89
	ldh [$03], a                                     ; $56d9: $e0 $03
	ld b, $c1                                        ; $56db: $06 $c1
	ld e, e                                          ; $56dd: $5b
	ret nz                                           ; $56de: $c0

	ld bc, $01a0                                     ; $56df: $01 $a0 $01
	inc c                                            ; $56e2: $0c
	inc d                                            ; $56e3: $14
	cpl                                              ; $56e4: $2f
	or b                                             ; $56e5: $b0
	ld a, a                                          ; $56e6: $7f
	daa                                              ; $56e7: $27
	ret nz                                           ; $56e8: $c0

	ld bc, $05a0                                     ; $56e9: $01 $a0 $05
	inc bc                                           ; $56ec: $03
	add e                                            ; $56ed: $83
	ldh [rSC], a                                     ; $56ee: $e0 $02
	call nz, $01c0                                   ; $56f0: $c4 $c0 $01
	and b                                            ; $56f3: $a0
	dec b                                            ; $56f4: $05
	inc c                                            ; $56f5: $0c
	call nz, $01c0                                   ; $56f6: $c4 $c0 $01
	and b                                            ; $56f9: $a0
	ld bc, $520c                                     ; $56fa: $01 $0c $52
	ret nz                                           ; $56fd: $c0

	ld bc, $05a0                                     ; $56fe: $01 $a0 $05
	inc c                                            ; $5701: $0c
	ld h, d                                          ; $5702: $62
	pop bc                                           ; $5703: $c1
	ld e, e                                          ; $5704: $5b
	ret nz                                           ; $5705: $c0

	ld bc, $01a0                                     ; $5706: $01 $a0 $01
	inc c                                            ; $5709: $0c
	inc d                                            ; $570a: $14
	nop                                              ; $570b: $00
	add b                                            ; $570c: $80
	nop                                              ; $570d: $00
	ld a, c                                          ; $570e: $79
	rst $38                                          ; $570f: $ff
	inc bc                                           ; $5710: $03
	ldh [rSC], a                                     ; $5711: $e0 $02
	ld e, $01                                        ; $5713: $1e $01
	call nc, $e161                                   ; $5715: $d4 $61 $e1
	ld [bc], a                                       ; $5718: $02
	ld bc, $c098                                     ; $5719: $01 $98 $c0
	ld bc, $05a0                                     ; $571c: $01 $a0 $05
	dec bc                                           ; $571f: $0b
	cp [hl]                                          ; $5720: $be
	ret nz                                           ; $5721: $c0

	ld bc, $01a0                                     ; $5722: $01 $a0 $01
	dec bc                                           ; $5725: $0b
	jp $01c0                                         ; $5726: $c3 $c0 $01


	and b                                            ; $5729: $a0
	dec b                                            ; $572a: $05
	inc c                                            ; $572b: $0c
	rst JumpTable                                          ; $572c: $c7
	ret nz                                           ; $572d: $c0

	ld bc, $01a0                                     ; $572e: $01 $a0 $01
	inc c                                            ; $5731: $0c
	ret nc                                           ; $5732: $d0

	ld h, b                                          ; $5733: $60
	rst $38                                          ; $5734: $ff
	ld b, $80                                        ; $5735: $06 $80
	nop                                              ; $5737: $00
	ld a, b                                          ; $5738: $78
	add b                                            ; $5739: $80
	nop                                              ; $573a: $00
	ld a, c                                          ; $573b: $79
	rla                                              ; $573c: $17
	ret nz                                           ; $573d: $c0

	ld bc, $05a0                                     ; $573e: $01 $a0 $05
	inc bc                                           ; $5741: $03
	add e                                            ; $5742: $83
	ldh [rSC], a                                     ; $5743: $e0 $02
	xor c                                            ; $5745: $a9
	ret nz                                           ; $5746: $c0

	ld bc, $05a0                                     ; $5747: $01 $a0 $05
	inc bc                                           ; $574a: $03
	and h                                            ; $574b: $a4
	pop bc                                           ; $574c: $c1
	ld e, e                                          ; $574d: $5b
	ret nz                                           ; $574e: $c0

	ld bc, $01a0                                     ; $574f: $01 $a0 $01
	inc c                                            ; $5752: $0c
	add a                                            ; $5753: $87
	inc hl                                           ; $5754: $23
	or b                                             ; $5755: $b0
	ld a, a                                          ; $5756: $7f
	dec de                                           ; $5757: $1b
	ret nz                                           ; $5758: $c0

	ld bc, $05a0                                     ; $5759: $01 $a0 $05
	inc bc                                           ; $575c: $03
	add e                                            ; $575d: $83
	ldh [rSC], a                                     ; $575e: $e0 $02
	ld d, h                                          ; $5760: $54
	ret nz                                           ; $5761: $c0

	ld bc, $05a0                                     ; $5762: $01 $a0 $05
	inc bc                                           ; $5765: $03
	or a                                             ; $5766: $b7
	pop bc                                           ; $5767: $c1
	ld e, e                                          ; $5768: $5b
	ret nz                                           ; $5769: $c0

	ld bc, $01a0                                     ; $576a: $01 $a0 $01
	inc c                                            ; $576d: $0c
	add a                                            ; $576e: $87
	nop                                              ; $576f: $00
	add b                                            ; $5770: $80
	nop                                              ; $5771: $00
	ld a, c                                          ; $5772: $79
	rst $38                                          ; $5773: $ff
	inc bc                                           ; $5774: $03
	ldh [rSB], a                                     ; $5775: $e0 $01
	cp d                                             ; $5777: $ba
	ld bc, $03d5                                     ; $5778: $01 $d5 $03
	ldh [rSB], a                                     ; $577b: $e0 $01
	ld e, a                                          ; $577d: $5f
	push hl                                          ; $577e: $e5
	inc sp                                           ; $577f: $33
	nop                                              ; $5780: $00
	nop                                              ; $5781: $00
	add hl, bc                                       ; $5782: $09
	pop bc                                           ; $5783: $c1
	ld d, [hl]                                       ; $5784: $56
	add e                                            ; $5785: $83
	ret nz                                           ; $5786: $c0

	dec de                                           ; $5787: $1b
	db $d3                                           ; $5788: $d3
	ld [bc], a                                       ; $5789: $02
	ret nc                                           ; $578a: $d0

	pop de                                           ; $578b: $d1
	ld a, c                                          ; $578c: $79
	pop hl                                           ; $578d: $e1
	ld [bc], a                                       ; $578e: $02
	ld bc, $c098                                     ; $578f: $01 $98 $c0
	ld bc, $05a0                                     ; $5792: $01 $a0 $05
	dec bc                                           ; $5795: $0b
	cp [hl]                                          ; $5796: $be
	ret nz                                           ; $5797: $c0

	ld bc, $01a0                                     ; $5798: $01 $a0 $01
	dec bc                                           ; $579b: $0b
	jp $01c0                                         ; $579c: $c3 $c0 $01


	and b                                            ; $579f: $a0
	dec b                                            ; $57a0: $05
	inc c                                            ; $57a1: $0c
	push de                                          ; $57a2: $d5
	ret nz                                           ; $57a3: $c0

	ld bc, $01a0                                     ; $57a4: $01 $a0 $01
	inc c                                            ; $57a7: $0c
	db $e4                                           ; $57a8: $e4
	ld h, b                                          ; $57a9: $60
	rst $38                                          ; $57aa: $ff
	ld b, $80                                        ; $57ab: $06 $80
	nop                                              ; $57ad: $00
	ld a, b                                          ; $57ae: $78
	add b                                            ; $57af: $80
	nop                                              ; $57b0: $00
	ld a, c                                          ; $57b1: $79
	inc hl                                           ; $57b2: $23
	ret nz                                           ; $57b3: $c0

	ld bc, $05a0                                     ; $57b4: $01 $a0 $05
	inc c                                            ; $57b7: $0c
	ldh a, [$e0]                                     ; $57b8: $f0 $e0
	ld [bc], a                                       ; $57ba: $02
	ld b, [hl]                                       ; $57bb: $46
	ret nz                                           ; $57bc: $c0

	ld bc, $05a0                                     ; $57bd: $01 $a0 $05
	inc c                                            ; $57c0: $0c
	ei                                               ; $57c1: $fb
	ret nz                                           ; $57c2: $c0

	ld bc, $01a0                                     ; $57c3: $01 $a0 $01
	dec c                                            ; $57c6: $0d
	ld [bc], a                                       ; $57c7: $02
	ret nz                                           ; $57c8: $c0

	ld bc, $05a0                                     ; $57c9: $01 $a0 $05
	dec c                                            ; $57cc: $0d
	add hl, bc                                       ; $57cd: $09
	pop bc                                           ; $57ce: $c1
	ld e, e                                          ; $57cf: $5b
	ret nz                                           ; $57d0: $c0

	ld bc, $01a0                                     ; $57d1: $01 $a0 $01
	dec c                                            ; $57d4: $0d
	ld de, $b02f                                     ; $57d5: $11 $2f $b0
	ld a, a                                          ; $57d8: $7f
	daa                                              ; $57d9: $27
	ret nz                                           ; $57da: $c0

	ld bc, $05a0                                     ; $57db: $01 $a0 $05
	dec c                                            ; $57de: $0d
	inc e                                            ; $57df: $1c
	ldh [rSB], a                                     ; $57e0: $e0 $01
	jp nc, $01c0                                     ; $57e2: $d2 $c0 $01

	and b                                            ; $57e5: $a0
	dec b                                            ; $57e6: $05
	dec c                                            ; $57e7: $0d
	daa                                              ; $57e8: $27
	ret nz                                           ; $57e9: $c0

	ld bc, $01a0                                     ; $57ea: $01 $a0 $01
	dec c                                            ; $57ed: $0d
	ld [bc], a                                       ; $57ee: $02
	ret nz                                           ; $57ef: $c0

	ld bc, $05a0                                     ; $57f0: $01 $a0 $05
	dec c                                            ; $57f3: $0d
	add hl, bc                                       ; $57f4: $09
	pop bc                                           ; $57f5: $c1
	ld e, e                                          ; $57f6: $5b
	ret nz                                           ; $57f7: $c0

	ld bc, $01a0                                     ; $57f8: $01 $a0 $01
	dec c                                            ; $57fb: $0d
	cpl                                              ; $57fc: $2f
	nop                                              ; $57fd: $00
	add b                                            ; $57fe: $80
	nop                                              ; $57ff: $00
	ld a, c                                          ; $5800: $79
	rst $38                                          ; $5801: $ff
	inc bc                                           ; $5802: $03
	ldh [rSB], a                                     ; $5803: $e0 $01
	dec b                                            ; $5805: $05
	ld [bc], a                                       ; $5806: $02
	jp nc, $57d3                                     ; $5807: $d2 $d3 $57

	pop hl                                           ; $580a: $e1
	ld [bc], a                                       ; $580b: $02
	ld bc, $c098                                     ; $580c: $01 $98 $c0
	ld bc, $05a0                                     ; $580f: $01 $a0 $05
	dec bc                                           ; $5812: $0b
	cp [hl]                                          ; $5813: $be
	ret nz                                           ; $5814: $c0

	ld bc, $01a0                                     ; $5815: $01 $a0 $01
	dec bc                                           ; $5818: $0b
	jp $01c0                                         ; $5819: $c3 $c0 $01


	and b                                            ; $581c: $a0
	dec b                                            ; $581d: $05
	dec c                                            ; $581e: $0d
	ld [hl], $c0                                     ; $581f: $36 $c0
	ld bc, $01a0                                     ; $5821: $01 $a0 $01
	dec c                                            ; $5824: $0d
	ld b, h                                          ; $5825: $44
	ld h, b                                          ; $5826: $60
	rst $38                                          ; $5827: $ff
	ld b, $80                                        ; $5828: $06 $80
	nop                                              ; $582a: $00
	ld a, b                                          ; $582b: $78
	add b                                            ; $582c: $80
	nop                                              ; $582d: $00
	ld a, c                                          ; $582e: $79
	ld [de], a                                       ; $582f: $12
	ret nz                                           ; $5830: $c0

	ld bc, $05a0                                     ; $5831: $01 $a0 $05
	dec c                                            ; $5834: $0d
	ld e, b                                          ; $5835: $58
	ldh [rSB], a                                     ; $5836: $e0 $01
	or [hl]                                          ; $5838: $b6
	ret nz                                           ; $5839: $c0

	ld bc, $05a0                                     ; $583a: $01 $a0 $05
	dec c                                            ; $583d: $0d
	ld h, d                                          ; $583e: $62
	ldh [rSB], a                                     ; $583f: $e0 $01
	jr c, jr_084_5861                                ; $5841: $38 $1e

	or b                                             ; $5843: $b0
	ld a, a                                          ; $5844: $7f
	ld d, $c0                                        ; $5845: $16 $c0
	ld bc, $05a0                                     ; $5847: $01 $a0 $05
	dec c                                            ; $584a: $0d
	ld e, b                                          ; $584b: $58
	ldh [rSB], a                                     ; $584c: $e0 $01
	ld h, [hl]                                       ; $584e: $66
	ret nz                                           ; $584f: $c0

	ld bc, $05a0                                     ; $5850: $01 $a0 $05
	dec c                                            ; $5853: $0d
	ld h, a                                          ; $5854: $67
	ldh [rSB], a                                     ; $5855: $e0 $01
	ld [hl+], a                                      ; $5857: $22
	nop                                              ; $5858: $00
	add b                                            ; $5859: $80
	nop                                              ; $585a: $00
	ld a, c                                          ; $585b: $79
	rst $38                                          ; $585c: $ff
	inc bc                                           ; $585d: $03
	ldh [rP1], a                                     ; $585e: $e0 $00
	pop de                                           ; $5860: $d1

jr_084_5861:
	ld bc, $6dd4                                     ; $5861: $01 $d4 $6d
	pop hl                                           ; $5864: $e1
	ld [bc], a                                       ; $5865: $02
	ld bc, $c098                                     ; $5866: $01 $98 $c0
	ld bc, $05a0                                     ; $5869: $01 $a0 $05
	dec c                                            ; $586c: $0d
	ld l, l                                          ; $586d: $6d
	ret nz                                           ; $586e: $c0

	ld bc, $01a0                                     ; $586f: $01 $a0 $01
	dec bc                                           ; $5872: $0b
	jp $01c0                                         ; $5873: $c3 $c0 $01


	and b                                            ; $5876: $a0
	dec b                                            ; $5877: $05
	dec c                                            ; $5878: $0d
	ld [hl], l                                       ; $5879: $75
	ret nz                                           ; $587a: $c0

	ld bc, $01a0                                     ; $587b: $01 $a0 $01
	dec c                                            ; $587e: $0d
	add c                                            ; $587f: $81
	ret nz                                           ; $5880: $c0

	ld bc, $05a0                                     ; $5881: $01 $a0 $05
	dec c                                            ; $5884: $0d
	adc d                                            ; $5885: $8a
	ret nz                                           ; $5886: $c0

	ld bc, $01a0                                     ; $5887: $01 $a0 $01
	dec c                                            ; $588a: $0d
	sub d                                            ; $588b: $92
	ld h, b                                          ; $588c: $60
	rst $38                                          ; $588d: $ff
	ld b, $80                                        ; $588e: $06 $80
	nop                                              ; $5890: $00
	ld a, b                                          ; $5891: $78
	add b                                            ; $5892: $80
	nop                                              ; $5893: $00
	ld a, c                                          ; $5894: $79
	rla                                              ; $5895: $17
	ret nz                                           ; $5896: $c0

	ld bc, $05a0                                     ; $5897: $01 $a0 $05
	inc c                                            ; $589a: $0c
	cp a                                             ; $589b: $bf
	ldh [rSB], a                                     ; $589c: $e0 $01
	ld d, b                                          ; $589e: $50
	ret nz                                           ; $589f: $c0

	ld bc, $05a0                                     ; $58a0: $01 $a0 $05
	inc bc                                           ; $58a3: $03
	and h                                            ; $58a4: $a4
	pop bc                                           ; $58a5: $c1
	ld e, e                                          ; $58a6: $5b
	ret nz                                           ; $58a7: $c0

	ld bc, $01a0                                     ; $58a8: $01 $a0 $01
	inc bc                                           ; $58ab: $03
	xor d                                            ; $58ac: $aa
	inc hl                                           ; $58ad: $23
	or b                                             ; $58ae: $b0
	ld a, a                                          ; $58af: $7f
	dec de                                           ; $58b0: $1b
	ret nz                                           ; $58b1: $c0

	ld bc, $05a0                                     ; $58b2: $01 $a0 $05
	inc bc                                           ; $58b5: $03
	add e                                            ; $58b6: $83
	ldh [rP1], a                                     ; $58b7: $e0 $00
	ei                                               ; $58b9: $fb
	ret nz                                           ; $58ba: $c0

	ld bc, $05a0                                     ; $58bb: $01 $a0 $05
	dec c                                            ; $58be: $0d
	sbc e                                            ; $58bf: $9b
	pop bc                                           ; $58c0: $c1
	ld e, e                                          ; $58c1: $5b
	ret nz                                           ; $58c2: $c0

	ld bc, $01a0                                     ; $58c3: $01 $a0 $01
	inc c                                            ; $58c6: $0c
	add a                                            ; $58c7: $87
	nop                                              ; $58c8: $00
	add b                                            ; $58c9: $80
	nop                                              ; $58ca: $00
	ld a, c                                          ; $58cb: $79
	rst $38                                          ; $58cc: $ff
	inc bc                                           ; $58cd: $03
	ldh [rP1], a                                     ; $58ce: $e0 $00
	ld h, c                                          ; $58d0: $61
	ld bc, $03d5                                     ; $58d1: $01 $d5 $03
	ldh [rP1], a                                     ; $58d4: $e0 $00
	ld b, $e5                                        ; $58d6: $06 $e5
	inc sp                                           ; $58d8: $33
	nop                                              ; $58d9: $00
	nop                                              ; $58da: $00
	ld [de], a                                       ; $58db: $12
	or b                                             ; $58dc: $b0
	ld a, a                                          ; $58dd: $7f
	rlca                                             ; $58de: $07
	pop hl                                           ; $58df: $e1
	ld [bc], a                                       ; $58e0: $02
	ld bc, $e098                                     ; $58e1: $01 $98 $e0
	nop                                              ; $58e4: $00
	ld a, [bc]                                       ; $58e5: $0a
	rst $38                                          ; $58e6: $ff
	ld b, $c0                                        ; $58e7: $06 $c0
	ld bc, $01a0                                     ; $58e9: $01 $a0 $01
	dec c                                            ; $58ec: $0d
	and e                                            ; $58ed: $a3
	ld a, [de]                                       ; $58ee: $1a
	ret nz                                           ; $58ef: $c0

	ld bc, $05a0                                     ; $58f0: $01 $a0 $05
	dec c                                            ; $58f3: $0d
	or b                                             ; $58f4: $b0
	ret nz                                           ; $58f5: $c0

	ld bc, $01a0                                     ; $58f6: $01 $a0 $01
	dec c                                            ; $58f9: $0d
	cp l                                             ; $58fa: $bd
	ret nz                                           ; $58fb: $c0

	ld bc, $05a0                                     ; $58fc: $01 $a0 $05
	dec c                                            ; $58ff: $0d
	jp nz, Jump_084_5bc1                             ; $5900: $c2 $c1 $5b

	ret nz                                           ; $5903: $c0

	ld bc, $01a0                                     ; $5904: $01 $a0 $01
	dec c                                            ; $5907: $0d
	rst GetHLinHL                                          ; $5908: $cf
	ld h, $c0                                        ; $5909: $26 $c0
	ld bc, $05a0                                     ; $590b: $01 $a0 $05
	dec c                                            ; $590e: $0d
	jp c, $01c0                                      ; $590f: $da $c0 $01

	and b                                            ; $5912: $a0
	ld bc, $ce03                                     ; $5913: $01 $03 $ce
	ret nz                                           ; $5916: $c0

	ld bc, $05a0                                     ; $5917: $01 $a0 $05
	dec c                                            ; $591a: $0d
	db $e3                                           ; $591b: $e3
	ret nz                                           ; $591c: $c0

	ld bc, $01a0                                     ; $591d: $01 $a0 $01
	dec c                                            ; $5920: $0d
	db $ec                                           ; $5921: $ec
	ret nz                                           ; $5922: $c0

	ld bc, $05a0                                     ; $5923: $01 $a0 $05
	rlca                                             ; $5926: $07
	ld c, l                                          ; $5927: $4d
	pop bc                                           ; $5928: $c1
	ld e, e                                          ; $5929: $5b
	ret nz                                           ; $592a: $c0

	ld bc, $01a0                                     ; $592b: $01 $a0 $01
	dec c                                            ; $592e: $0d
	ldh a, [c]                                       ; $592f: $f2
	ld h, $c0                                        ; $5930: $26 $c0
	ld bc, $05a0                                     ; $5932: $01 $a0 $05
	inc bc                                           ; $5935: $03
	call nz, $01c0                                   ; $5936: $c4 $c0 $01
	and b                                            ; $5939: $a0

jr_084_593a:
	ld bc, $ce03                                     ; $593a: $01 $03 $ce
	ret nz                                           ; $593d: $c0

	ld bc, $05a0                                     ; $593e: $01 $a0 $05
	dec c                                            ; $5941: $0d
	ei                                               ; $5942: $fb
	ret nz                                           ; $5943: $c0

	ld bc, $01a0                                     ; $5944: $01 $a0 $01
	ld c, $0c                                        ; $5947: $0e $0c
	ret nz                                           ; $5949: $c0

	ld bc, $05a0                                     ; $594a: $01 $a0 $05
	inc bc                                           ; $594d: $03
	and h                                            ; $594e: $a4
	pop bc                                           ; $594f: $c1
	ld e, e                                          ; $5950: $5b
	ret nz                                           ; $5951: $c0

	ld bc, $01a0                                     ; $5952: $01 $a0 $01
	inc bc                                           ; $5955: $03
	add sp, $20                                      ; $5956: $e8 $20
	ret nz                                           ; $5958: $c0

	ld bc, $01a0                                     ; $5959: $01 $a0 $01
	dec bc                                           ; $595c: $0b
	add l                                            ; $595d: $85
	ret nz                                           ; $595e: $c0

	ld bc, $05a0                                     ; $595f: $01 $a0 $05
	ld c, $13                                        ; $5962: $0e $13
	ret nz                                           ; $5964: $c0

	ld bc, $01a0                                     ; $5965: $01 $a0 $01
	ld c, $1c                                        ; $5968: $0e $1c
	ret nz                                           ; $596a: $c0

	ld bc, $05a0                                     ; $596b: $01 $a0 $05
	ld c, $27                                        ; $596e: $0e $27
	pop bc                                           ; $5970: $c1
	ld e, e                                          ; $5971: $5b
	ret nz                                           ; $5972: $c0

	ld bc, $01a0                                     ; $5973: $01 $a0 $01
	ld c, $36                                        ; $5976: $0e $36
	jr nz, jr_084_593a                               ; $5978: $20 $c0

	ld bc, $01a0                                     ; $597a: $01 $a0 $01
	ld c, $45                                        ; $597d: $0e $45
	ret nz                                           ; $597f: $c0

	ld bc, $05a0                                     ; $5980: $01 $a0 $05
	ld c, $52                                        ; $5983: $0e $52
	ret nz                                           ; $5985: $c0

	ld bc, $01a0                                     ; $5986: $01 $a0 $01
	ld c, $5d                                        ; $5989: $0e $5d
	ret nz                                           ; $598b: $c0

	ld bc, $05a0                                     ; $598c: $01 $a0 $05
	ld c, $63                                        ; $598f: $0e $63
	pop bc                                           ; $5991: $c1
	ld e, e                                          ; $5992: $5b
	ret nz                                           ; $5993: $c0

	ld bc, $01a0                                     ; $5994: $01 $a0 $01
	ld c, $67                                        ; $5997: $0e $67
	inc c                                            ; $5999: $0c
	ret nz                                           ; $599a: $c0

	ld bc, $05a0                                     ; $599b: $01 $a0 $05
	ld c, $72                                        ; $599e: $0e $72
	ret nz                                           ; $59a0: $c0

	ld bc, $01a0                                     ; $59a1: $01 $a0 $01
	dec bc                                           ; $59a4: $0b
	add l                                            ; $59a5: $85
	inc c                                            ; $59a6: $0c
	ret nz                                           ; $59a7: $c0

	ld bc, $05a0                                     ; $59a8: $01 $a0 $05
	ld c, $72                                        ; $59ab: $0e $72
	ret nz                                           ; $59ad: $c0

	ld bc, $01a0                                     ; $59ae: $01 $a0 $01
	dec b                                            ; $59b1: $05
	ld b, c                                          ; $59b2: $41
	ld [de], a                                       ; $59b3: $12
	ret nz                                           ; $59b4: $c0

	ld bc, $01a0                                     ; $59b5: $01 $a0 $01
	ld c, $7b                                        ; $59b8: $0e $7b
	ret nz                                           ; $59ba: $c0

	ld bc, $05a0                                     ; $59bb: $01 $a0 $05
	ld c, $84                                        ; $59be: $0e $84
	ret nz                                           ; $59c0: $c0

	ld bc, $01a0                                     ; $59c1: $01 $a0 $01
	nop                                              ; $59c4: $00
	sub h                                            ; $59c5: $94
	inc c                                            ; $59c6: $0c
	ret nz                                           ; $59c7: $c0

	ld bc, $05a0                                     ; $59c8: $01 $a0 $05
	ld c, $8b                                        ; $59cb: $0e $8b
	ret nz                                           ; $59cd: $c0

	ld bc, $01a0                                     ; $59ce: $01 $a0 $01
	nop                                              ; $59d1: $00
	sub h                                            ; $59d2: $94
	inc c                                            ; $59d3: $0c
	ret nz                                           ; $59d4: $c0

	ld bc, $05a0                                     ; $59d5: $01 $a0 $05
	ld c, $92                                        ; $59d8: $0e $92
	ret nz                                           ; $59da: $c0

	ld bc, $01a0                                     ; $59db: $01 $a0 $01
	ld c, $98                                        ; $59de: $0e $98
	inc c                                            ; $59e0: $0c
	ret nz                                           ; $59e1: $c0

	ld bc, $01a0                                     ; $59e2: $01 $a0 $01
	ld c, $a0                                        ; $59e5: $0e $a0
	ret nz                                           ; $59e7: $c0

	ld bc, $05a0                                     ; $59e8: $01 $a0 $05
	ld c, $a9                                        ; $59eb: $0e $a9
	ld [de], a                                       ; $59ed: $12
	ret nz                                           ; $59ee: $c0

	ld bc, $01a0                                     ; $59ef: $01 $a0 $01
	ld c, $b1                                        ; $59f2: $0e $b1
	ret nz                                           ; $59f4: $c0

	ld bc, $05a0                                     ; $59f5: $01 $a0 $05
	ld c, $b8                                        ; $59f8: $0e $b8
	ret nz                                           ; $59fa: $c0

	ld bc, $01a0                                     ; $59fb: $01 $a0 $01
	ld c, $c3                                        ; $59fe: $0e $c3
	ld [de], a                                       ; $5a00: $12
	ret nz                                           ; $5a01: $c0

	ld bc, $01a0                                     ; $5a02: $01 $a0 $01
	ld c, $c8                                        ; $5a05: $0e $c8
	ret nz                                           ; $5a07: $c0

	ld bc, $05a0                                     ; $5a08: $01 $a0 $05
	ld c, $cf                                        ; $5a0b: $0e $cf
	ret nz                                           ; $5a0d: $c0

	ld bc, $01a0                                     ; $5a0e: $01 $a0 $01
	ld c, $df                                        ; $5a11: $0e $df
	rlca                                             ; $5a13: $07
	rlca                                             ; $5a14: $07
	add hl, bc                                       ; $5a15: $09
	ld c, $fb                                        ; $5a16: $0e $fb
	add b                                            ; $5a18: $80
	ld [bc], a                                       ; $5a19: $02
	adc h                                            ; $5a1a: $8c
	ld b, $c0                                        ; $5a1b: $06 $c0
	ld bc, $01a0                                     ; $5a1d: $01 $a0 $01
	nop                                              ; $5a20: $00
	ld bc, $00e4                                     ; $5a21: $01 $e4 $00
	ld [bc], a                                       ; $5a24: $02
	add hl, bc                                       ; $5a25: $09
	dec d                                            ; $5a26: $15
	add d                                            ; $5a27: $82
	ret nz                                           ; $5a28: $c0

	add b                                            ; $5a29: $80
	ld bc, $03d3                                     ; $5a2a: $01 $d3 $03
	db $e4                                           ; $5a2d: $e4
	ld [bc], a                                       ; $5a2e: $02
	add sp, $01                                      ; $5a2f: $e8 $01
	jp nc, $e403                                     ; $5a31: $d2 $03 $e4

	ld bc, $0162                                     ; $5a34: $01 $62 $01
	pop de                                           ; $5a37: $d1
	inc bc                                           ; $5a38: $03
	db $e4                                           ; $5a39: $e4
	nop                                              ; $5a3a: $00
	ld [bc], a                                       ; $5a3b: $02

jr_084_5a3c:
	add hl, bc                                       ; $5a3c: $09
	pop bc                                           ; $5a3d: $c1
	ld b, $c1                                        ; $5a3e: $06 $c1
	ld e, c                                          ; $5a40: $59
	db $e3                                           ; $5a41: $e3
	nop                                              ; $5a42: $00
	ld e, c                                          ; $5a43: $59
	add e                                            ; $5a44: $83
	ret nz                                           ; $5a45: $c0

	dec de                                           ; $5a46: $1b
	db $d3                                           ; $5a47: $d3
	ld [bc], a                                       ; $5a48: $02
	ret nc                                           ; $5a49: $d0

	pop de                                           ; $5a4a: $d1
	ld c, c                                          ; $5a4b: $49
	ret nz                                           ; $5a4c: $c0

	ld hl, $d3d2                                     ; $5a4d: $21 $d2 $d3
	pop hl                                           ; $5a50: $e1
	ld [bc], a                                       ; $5a51: $02
	ld bc, $c0c8                                     ; $5a52: $01 $c8 $c0
	ld bc, $05a0                                     ; $5a55: $01 $a0 $05
	nop                                              ; $5a58: $00
	dec c                                            ; $5a59: $0d
	ret nz                                           ; $5a5a: $c0

	ld bc, $01a0                                     ; $5a5b: $01 $a0 $01
	nop                                              ; $5a5e: $00
	inc d                                            ; $5a5f: $14
	ret nz                                           ; $5a60: $c0

	ld bc, $05a0                                     ; $5a61: $01 $a0 $05
	nop                                              ; $5a64: $00
	add hl, de                                       ; $5a65: $19
	ret nz                                           ; $5a66: $c0

	ld bc, $01a0                                     ; $5a67: $01 $a0 $01
	nop                                              ; $5a6a: $00
	dec e                                            ; $5a6b: $1d
	ret nz                                           ; $5a6c: $c0

	ld bc, $05a0                                     ; $5a6d: $01 $a0 $05
	nop                                              ; $5a70: $00
	ld [hl+], a                                      ; $5a71: $22
	ldh [rP1], a                                     ; $5a72: $e0 $00
	jp nc, $01c0                                     ; $5a74: $d2 $c0 $01

	and b                                            ; $5a77: $a0
	dec b                                            ; $5a78: $05
	nop                                              ; $5a79: $00
	jr z, jr_084_5a3c                                ; $5a7a: $28 $c0

	ld bc, $01a0                                     ; $5a7c: $01 $a0 $01
	nop                                              ; $5a7f: $00
	ld a, [hl-]                                      ; $5a80: $3a
	ret nz                                           ; $5a81: $c0

	ld bc, $05a0                                     ; $5a82: $01 $a0 $05
	nop                                              ; $5a85: $00
	ld b, l                                          ; $5a86: $45
	ret nz                                           ; $5a87: $c0

	ld bc, $0ba0                                     ; $5a88: $01 $a0 $0b
	nop                                              ; $5a8b: $00
	ld c, c                                          ; $5a8c: $49
	ret nz                                           ; $5a8d: $c0

	ld bc, $05a0                                     ; $5a8e: $01 $a0 $05
	nop                                              ; $5a91: $00
	ld e, c                                          ; $5a92: $59
	pop bc                                           ; $5a93: $c1
	ld e, e                                          ; $5a94: $5b
	ld [bc], a                                       ; $5a95: $02
	jp nc, Jump_084_49d3                             ; $5a96: $d2 $d3 $49

	ret nz                                           ; $5a99: $c0

	ld hl, $d3d2                                     ; $5a9a: $21 $d2 $d3
	pop hl                                           ; $5a9d: $e1
	ld [bc], a                                       ; $5a9e: $02
	ld bc, $c0c8                                     ; $5a9f: $01 $c8 $c0
	ld bc, $05a0                                     ; $5aa2: $01 $a0 $05
	nop                                              ; $5aa5: $00
	ld h, b                                          ; $5aa6: $60
	ret nz                                           ; $5aa7: $c0

	ld bc, $01a0                                     ; $5aa8: $01 $a0 $01
	nop                                              ; $5aab: $00
	inc d                                            ; $5aac: $14
	ret nz                                           ; $5aad: $c0

	ld bc, $05a0                                     ; $5aae: $01 $a0 $05
	nop                                              ; $5ab1: $00
	ld h, l                                          ; $5ab2: $65
	ret nz                                           ; $5ab3: $c0

	ld bc, $01a0                                     ; $5ab4: $01 $a0 $01
	nop                                              ; $5ab7: $00
	dec e                                            ; $5ab8: $1d
	ret nz                                           ; $5ab9: $c0

	ld bc, $05a0                                     ; $5aba: $01 $a0 $05
	nop                                              ; $5abd: $00
	ld l, l                                          ; $5abe: $6d
	ldh [rP1], a                                     ; $5abf: $e0 $00
	add l                                            ; $5ac1: $85
	ret nz                                           ; $5ac2: $c0

	ld bc, $05a0                                     ; $5ac3: $01 $a0 $05
	nop                                              ; $5ac6: $00
	ld [hl], l                                       ; $5ac7: $75
	ret nz                                           ; $5ac8: $c0

	ld bc, $01a0                                     ; $5ac9: $01 $a0 $01
	nop                                              ; $5acc: $00
	ld a, [hl-]                                      ; $5acd: $3a
	ret nz                                           ; $5ace: $c0

	ld bc, $05a0                                     ; $5acf: $01 $a0 $05
	nop                                              ; $5ad2: $00
	ld b, l                                          ; $5ad3: $45
	ret nz                                           ; $5ad4: $c0

	ld bc, $0ba0                                     ; $5ad5: $01 $a0 $0b
	nop                                              ; $5ad8: $00
	ld c, c                                          ; $5ad9: $49
	ret nz                                           ; $5ada: $c0

	ld bc, $05a0                                     ; $5adb: $01 $a0 $05
	nop                                              ; $5ade: $00
	add [hl]                                         ; $5adf: $86
	pop bc                                           ; $5ae0: $c1
	ld e, e                                          ; $5ae1: $5b
	ld bc, $49d4                                     ; $5ae2: $01 $d4 $49
	ret nz                                           ; $5ae5: $c0

	ld hl, $d3d2                                     ; $5ae6: $21 $d2 $d3
	pop hl                                           ; $5ae9: $e1
	ld [bc], a                                       ; $5aea: $02
	ld bc, $c0c8                                     ; $5aeb: $01 $c8 $c0
	ld bc, $05a0                                     ; $5aee: $01 $a0 $05
	nop                                              ; $5af1: $00
	ld h, b                                          ; $5af2: $60
	ret nz                                           ; $5af3: $c0

	ld bc, $01a0                                     ; $5af4: $01 $a0 $01
	nop                                              ; $5af7: $00
	inc d                                            ; $5af8: $14
	ret nz                                           ; $5af9: $c0

	ld bc, $05a0                                     ; $5afa: $01 $a0 $05
	nop                                              ; $5afd: $00
	adc d                                            ; $5afe: $8a
	ret nz                                           ; $5aff: $c0

	ld bc, $01a0                                     ; $5b00: $01 $a0 $01
	nop                                              ; $5b03: $00
	dec e                                            ; $5b04: $1d
	ret nz                                           ; $5b05: $c0

	ld bc, $05a0                                     ; $5b06: $01 $a0 $05
	nop                                              ; $5b09: $00
	sbc c                                            ; $5b0a: $99
	ldh [rP1], a                                     ; $5b0b: $e0 $00
	add hl, sp                                       ; $5b0d: $39
	ret nz                                           ; $5b0e: $c0

	ld bc, $05a0                                     ; $5b0f: $01 $a0 $05
	nop                                              ; $5b12: $00
	ld [hl], l                                       ; $5b13: $75
	ret nz                                           ; $5b14: $c0

	ld bc, $01a0                                     ; $5b15: $01 $a0 $01
	nop                                              ; $5b18: $00
	ld a, [hl-]                                      ; $5b19: $3a
	ret nz                                           ; $5b1a: $c0

	ld bc, $05a0                                     ; $5b1b: $01 $a0 $05
	nop                                              ; $5b1e: $00
	and b                                            ; $5b1f: $a0
	ret nz                                           ; $5b20: $c0

	ld bc, $0ba0                                     ; $5b21: $01 $a0 $0b
	nop                                              ; $5b24: $00
	ld c, c                                          ; $5b25: $49
	ret nz                                           ; $5b26: $c0

	ld bc, $05a0                                     ; $5b27: $01 $a0 $05
	nop                                              ; $5b2a: $00
	add [hl]                                         ; $5b2b: $86
	pop bc                                           ; $5b2c: $c1
	ld e, e                                          ; $5b2d: $5b
	ld bc, $10d5                                     ; $5b2e: $01 $d5 $10
	ret nz                                           ; $5b31: $c0

	ld bc, $01a0                                     ; $5b32: $01 $a0 $01
	nop                                              ; $5b35: $00
	and h                                            ; $5b36: $a4
	pop hl                                           ; $5b37: $e1
	ld [bc], a                                       ; $5b38: $02
	rlca                                             ; $5b39: $07
	cp a                                             ; $5b3a: $bf
	ret nz                                           ; $5b3b: $c0

	ld bc, $01a0                                     ; $5b3c: $01 $a0 $01
	nop                                              ; $5b3f: $00
	or c                                             ; $5b40: $b1
	push hl                                          ; $5b41: $e5
	inc sp                                           ; $5b42: $33
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	ld d, b                                          ; $5b45: $50
	ret nz                                           ; $5b46: $c0

	ld bc, $01a0                                     ; $5b47: $01 $a0 $01
	nop                                              ; $5b4a: $00
	cp c                                             ; $5b4b: $b9
	ret nz                                           ; $5b4c: $c0

	ld bc, $0ba0                                     ; $5b4d: $01 $a0 $0b
	nop                                              ; $5b50: $00
	cp a                                             ; $5b51: $bf
	ret nz                                           ; $5b52: $c0

	or e                                             ; $5b53: $b3
	pop hl                                           ; $5b54: $e1
	ld [bc], a                                       ; $5b55: $02
	ld [bc], a                                       ; $5b56: $02
	or d                                             ; $5b57: $b2
	ret nz                                           ; $5b58: $c0

	ld bc, $01a0                                     ; $5b59: $01 $a0 $01
	nop                                              ; $5b5c: $00
	ret                                              ; $5b5d: $c9


	ret nz                                           ; $5b5e: $c0

	ld bc, $0ba0                                     ; $5b5f: $01 $a0 $0b
	nop                                              ; $5b62: $00
	call $b3c0                                       ; $5b63: $cd $c0 $b3
	ret nz                                           ; $5b66: $c0

	ld bc, $01a0                                     ; $5b67: $01 $a0 $01
	nop                                              ; $5b6a: $00
	call c, $02e1                                    ; $5b6b: $dc $e1 $02
	rlca                                             ; $5b6e: $07
	cp a                                             ; $5b6f: $bf
	ret nz                                           ; $5b70: $c0

	ld bc, $01a0                                     ; $5b71: $01 $a0 $01
	nop                                              ; $5b74: $00
	add sp, -$40                                     ; $5b75: $e8 $c0
	ld bc, $0ba0                                     ; $5b77: $01 $a0 $0b
	nop                                              ; $5b7a: $00
	push af                                          ; $5b7b: $f5
	ret nz                                           ; $5b7c: $c0

	ld bc, $01a0                                     ; $5b7d: $01 $a0 $01
	nop                                              ; $5b80: $00
	rst $38                                          ; $5b81: $ff
	ret nz                                           ; $5b82: $c0

	ld bc, $0ba0                                     ; $5b83: $01 $a0 $0b
	ld bc, $c00f                                     ; $5b86: $01 $0f $c0
	ld bc, $01a0                                     ; $5b89: $01 $a0 $01
	ld bc, $e116                                     ; $5b8c: $01 $16 $e1
	ld [bc], a                                       ; $5b8f: $02
	ld bc, $c1c8                                     ; $5b90: $01 $c8 $c1
	ld l, e                                          ; $5b93: $6b
	call nc, $09df                                   ; $5b94: $d4 $df $09
	pop bc                                           ; $5b97: $c1
	scf                                              ; $5b98: $37
	pop bc                                           ; $5b99: $c1
	ld e, c                                          ; $5b9a: $59
	db $e3                                           ; $5b9b: $e3
	nop                                              ; $5b9c: $00
	ld e, d                                          ; $5b9d: $5a
	ret nz                                           ; $5b9e: $c0

	ld bc, $01a0                                     ; $5b9f: $01 $a0 $01
	ld bc, $8322                                     ; $5ba2: $01 $22 $83
	ret nz                                           ; $5ba5: $c0

	dec de                                           ; $5ba6: $1b
	db $d3                                           ; $5ba7: $d3
	ld [bc], a                                       ; $5ba8: $02
	ret nc                                           ; $5ba9: $d0

	pop de                                           ; $5baa: $d1
	ld e, e                                          ; $5bab: $5b
	ret nz                                           ; $5bac: $c0

	ld hl, $d3d2                                     ; $5bad: $21 $d2 $d3
	ret nz                                           ; $5bb0: $c0

	ld bc, $05a0                                     ; $5bb1: $01 $a0 $05
	ld bc, $e126                                     ; $5bb4: $01 $26 $e1
	ld [bc], a                                       ; $5bb7: $02
	ld bc, $60c8                                     ; $5bb8: $01 $c8 $60
	rst $38                                          ; $5bbb: $ff
	ld b, $80                                        ; $5bbc: $06 $80
	nop                                              ; $5bbe: $00
	ld a, b                                          ; $5bbf: $78
	add b                                            ; $5bc0: $80

Call_084_5bc1:
Jump_084_5bc1:
	nop                                              ; $5bc1: $00
	ld a, c                                          ; $5bc2: $79
	ld b, $c0                                        ; $5bc3: $06 $c0
	ld bc, $01a0                                     ; $5bc5: $01 $a0 $01
	ld bc, $0a28                                     ; $5bc8: $01 $28 $0a
	ret nz                                           ; $5bcb: $c0

	ld bc, $01a0                                     ; $5bcc: $01 $a0 $01
	ld bc, $0036                                     ; $5bcf: $01 $36 $00
	add b                                            ; $5bd2: $80

Jump_084_5bd3:
	nop                                              ; $5bd3: $00
	ld a, c                                          ; $5bd4: $79
	ret nz                                           ; $5bd5: $c0

	ld bc, $05a0                                     ; $5bd6: $01 $a0 $05
	ld bc, $c03f                                     ; $5bd9: $01 $3f $c0
	ld bc, $01a0                                     ; $5bdc: $01 $a0 $01
	ld bc, $c04d                                     ; $5bdf: $01 $4d $c0
	ld bc, $05a0                                     ; $5be2: $01 $a0 $05
	ld bc, $c051                                     ; $5be5: $01 $51 $c0
	ld bc, $01a0                                     ; $5be8: $01 $a0 $01
	ld bc, $c057                                     ; $5beb: $01 $57 $c0
	ld bc, $05a0                                     ; $5bee: $01 $a0 $05
	ld bc, $c05d                                     ; $5bf1: $01 $5d $c0
	ld bc, $01a0                                     ; $5bf4: $01 $a0 $01
	ld bc, $c063                                     ; $5bf7: $01 $63 $c0
	ld bc, $05a0                                     ; $5bfa: $01 $a0 $05
	ld bc, $c175                                     ; $5bfd: $01 $75 $c1
	ld e, e                                          ; $5c00: $5b
	ret nz                                           ; $5c01: $c0

	ld bc, $01a0                                     ; $5c02: $01 $a0 $01
	ld bc, $027b                                     ; $5c05: $01 $7b $02
	jp nc, Jump_084_4bd3                             ; $5c08: $d2 $d3 $4b

	ret nz                                           ; $5c0b: $c0

	ld hl, $d3d2                                     ; $5c0c: $21 $d2 $d3
	ret nz                                           ; $5c0f: $c0

	ld bc, $05a0                                     ; $5c10: $01 $a0 $05
	ld bc, $e182                                     ; $5c13: $01 $82 $e1
	ld [bc], a                                       ; $5c16: $02
	ld bc, $60c8                                     ; $5c17: $01 $c8 $60
	rst $38                                          ; $5c1a: $ff
	ld b, $80                                        ; $5c1b: $06 $80
	nop                                              ; $5c1d: $00
	ld a, b                                          ; $5c1e: $78
	add b                                            ; $5c1f: $80
	nop                                              ; $5c20: $00
	ld a, c                                          ; $5c21: $79
	ld b, $c0                                        ; $5c22: $06 $c0
	ld bc, $01a0                                     ; $5c24: $01 $a0 $01
	ld bc, $0628                                     ; $5c27: $01 $28 $06
	ret nz                                           ; $5c2a: $c0

	ld bc, $01a0                                     ; $5c2b: $01 $a0 $01
	ld bc, $c036                                     ; $5c2e: $01 $36 $c0
	ld bc, $05a0                                     ; $5c31: $01 $a0 $05
	ld bc, $c087                                     ; $5c34: $01 $87 $c0
	ld bc, $01a0                                     ; $5c37: $01 $a0 $01
	ld bc, $c091                                     ; $5c3a: $01 $91 $c0
	ld bc, $05a0                                     ; $5c3d: $01 $a0 $05
	ld bc, $c09a                                     ; $5c40: $01 $9a $c0
	ld bc, $01a0                                     ; $5c43: $01 $a0 $01
	ld bc, $c09e                                     ; $5c46: $01 $9e $c0
	ld bc, $05a0                                     ; $5c49: $01 $a0 $05
	ld bc, $c1a2                                     ; $5c4c: $01 $a2 $c1
	ld e, e                                          ; $5c4f: $5b
	ret nz                                           ; $5c50: $c0

	ld bc, $01a0                                     ; $5c51: $01 $a0 $01
	ld bc, $01a7                                     ; $5c54: $01 $a7 $01
	call nc, $c057                                   ; $5c57: $d4 $57 $c0
	ld hl, $d3d2                                     ; $5c5a: $21 $d2 $d3
	ret nz                                           ; $5c5d: $c0

	ld bc, $05a0                                     ; $5c5e: $01 $a0 $05
	ld bc, $e182                                     ; $5c61: $01 $82 $e1
	ld [bc], a                                       ; $5c64: $02
	ld bc, $60c8                                     ; $5c65: $01 $c8 $60
	rst $38                                          ; $5c68: $ff
	ld b, $80                                        ; $5c69: $06 $80
	nop                                              ; $5c6b: $00
	ld a, b                                          ; $5c6c: $78
	add b                                            ; $5c6d: $80
	nop                                              ; $5c6e: $00
	ld a, c                                          ; $5c6f: $79
	ld b, $c0                                        ; $5c70: $06 $c0
	ld bc, $01a0                                     ; $5c72: $01 $a0 $01
	ld bc, $0628                                     ; $5c75: $01 $28 $06
	ret nz                                           ; $5c78: $c0

	ld bc, $01a0                                     ; $5c79: $01 $a0 $01
	ld bc, $c036                                     ; $5c7c: $01 $36 $c0
	ld bc, $05a0                                     ; $5c7f: $01 $a0 $05
	ld bc, $c0b0                                     ; $5c82: $01 $b0 $c0
	ld bc, $01a0                                     ; $5c85: $01 $a0 $01
	ld bc, $c0b9                                     ; $5c88: $01 $b9 $c0
	ld bc, $05a0                                     ; $5c8b: $01 $a0 $05
	ld bc, $c0c4                                     ; $5c8e: $01 $c4 $c0
	ld bc, $01a0                                     ; $5c91: $01 $a0 $01
	ld bc, $c0ce                                     ; $5c94: $01 $ce $c0
	ld bc, $05a0                                     ; $5c97: $01 $a0 $05
	ld bc, $c0db                                     ; $5c9a: $01 $db $c0
	ld bc, $01a0                                     ; $5c9d: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $5ca0: $01 $e3 $c0
	ld bc, $05a0                                     ; $5ca3: $01 $a0 $05
	ld bc, $c1eb                                     ; $5ca6: $01 $eb $c1
	ld e, e                                          ; $5ca9: $5b
	ret nz                                           ; $5caa: $c0

	ld bc, $01a0                                     ; $5cab: $01 $a0 $01
	ld bc, $01f4                                     ; $5cae: $01 $f4 $01
	push de                                          ; $5cb1: $d5
	add hl, de                                       ; $5cb2: $19
	ret nz                                           ; $5cb3: $c0

	ld bc, $07a0                                     ; $5cb4: $01 $a0 $07
	ld [bc], a                                       ; $5cb7: $02
	ld bc, $02e1                                     ; $5cb8: $01 $e1 $02
	ld [bc], a                                       ; $5cbb: $02
	call z, $01c0                                    ; $5cbc: $cc $c0 $01
	and b                                            ; $5cbf: $a0
	ld bc, $0202                                     ; $5cc0: $01 $02 $02
	ret nz                                           ; $5cc3: $c0

	ld bc, $07a0                                     ; $5cc4: $01 $a0 $07
	ld [bc], a                                       ; $5cc7: $02
	ld [$00e4], sp                                   ; $5cc8: $08 $e4 $00
	ld b, $e5                                        ; $5ccb: $06 $e5
	inc sp                                           ; $5ccd: $33
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	ld [$0244], sp                                   ; $5cd0: $08 $44 $02
	inc c                                            ; $5cd3: $0c
	add hl, bc                                       ; $5cd4: $09
	ld e, $c0                                        ; $5cd5: $1e $c0
	ld bc, $07a0                                     ; $5cd7: $01 $a0 $07
	ld [bc], a                                       ; $5cda: $02
	ld c, $c0                                        ; $5cdb: $0e $c0
	ld bc, $01a0                                     ; $5cdd: $01 $a0 $01
	ld [bc], a                                       ; $5ce0: $02
	inc d                                            ; $5ce1: $14
	ret nz                                           ; $5ce2: $c0

	ld bc, $07a0                                     ; $5ce3: $01 $a0 $07
	ld [bc], a                                       ; $5ce6: $02
	rla                                              ; $5ce7: $17
	pop bc                                           ; $5ce8: $c1
	ld e, e                                          ; $5ce9: $5b
	ret nz                                           ; $5cea: $c0

	ld bc, $01a0                                     ; $5ceb: $01 $a0 $01
	ld [bc], a                                       ; $5cee: $02
	ld a, [de]                                       ; $5cef: $1a
	push hl                                          ; $5cf0: $e5
	inc sp                                           ; $5cf1: $33
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	ld [bc], a                                       ; $5cf4: $02
	ld hl, $1e09                                     ; $5cf5: $21 $09 $1e
	ret nz                                           ; $5cf8: $c0

	ld bc, $07a0                                     ; $5cf9: $01 $a0 $07
	ld [bc], a                                       ; $5cfc: $02
	inc hl                                           ; $5cfd: $23
	ret nz                                           ; $5cfe: $c0

	ld bc, $01a0                                     ; $5cff: $01 $a0 $01
	ld [bc], a                                       ; $5d02: $02
	ld h, $c0                                        ; $5d03: $26 $c0
	ld bc, $07a0                                     ; $5d05: $01 $a0 $07
	ld [bc], a                                       ; $5d08: $02
	ld l, $c1                                        ; $5d09: $2e $c1
	ld e, e                                          ; $5d0b: $5b
	ret nz                                           ; $5d0c: $c0

	ld bc, $01a0                                     ; $5d0d: $01 $a0 $01
	ld [bc], a                                       ; $5d10: $02
	ld sp, $33e5                                     ; $5d11: $31 $e5 $33
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	add hl, bc                                       ; $5d16: $09
	pop bc                                           ; $5d17: $c1
	dec de                                           ; $5d18: $1b
	pop bc                                           ; $5d19: $c1
	ld e, c                                          ; $5d1a: $59
	db $e3                                           ; $5d1b: $e3
	nop                                              ; $5d1c: $00
	ld e, b                                          ; $5d1d: $58
	add e                                            ; $5d1e: $83
	ret nz                                           ; $5d1f: $c0

	dec de                                           ; $5d20: $1b
	db $d3                                           ; $5d21: $d3
	ld [bc], a                                       ; $5d22: $02
	ret nc                                           ; $5d23: $d0

	pop de                                           ; $5d24: $d1
	ld d, b                                          ; $5d25: $50
	ret nz                                           ; $5d26: $c0

	ld hl, $d3d2                                     ; $5d27: $21 $d2 $d3
	pop hl                                           ; $5d2a: $e1
	ld [bc], a                                       ; $5d2b: $02
	ld bc, $c0c8                                     ; $5d2c: $01 $c8 $c0
	ld bc, $05a0                                     ; $5d2f: $01 $a0 $05
	ld [bc], a                                       ; $5d32: $02
	inc sp                                           ; $5d33: $33
	ret nz                                           ; $5d34: $c0

	ld bc, $01a0                                     ; $5d35: $01 $a0 $01
	ld [bc], a                                       ; $5d38: $02
	dec sp                                           ; $5d39: $3b
	ret nz                                           ; $5d3a: $c0

	ld bc, $05a0                                     ; $5d3b: $01 $a0 $05
	ld [bc], a                                       ; $5d3e: $02
	ld b, b                                          ; $5d3f: $40
	ret nz                                           ; $5d40: $c0

	ld bc, $01a0                                     ; $5d41: $01 $a0 $01
	ld [bc], a                                       ; $5d44: $02
	ld b, e                                          ; $5d45: $43
	pop hl                                           ; $5d46: $e1
	ld [bc], a                                       ; $5d47: $02
	rlca                                             ; $5d48: $07
	sbc e                                            ; $5d49: $9b
	ret nz                                           ; $5d4a: $c0

	ld bc, $05a0                                     ; $5d4b: $01 $a0 $05
	ld [bc], a                                       ; $5d4e: $02
	ld b, l                                          ; $5d4f: $45
	ret nz                                           ; $5d50: $c0

	ld bc, $01a0                                     ; $5d51: $01 $a0 $01
	ld [bc], a                                       ; $5d54: $02
	ld b, a                                          ; $5d55: $47
	ret nz                                           ; $5d56: $c0

	ld bc, $05a0                                     ; $5d57: $01 $a0 $05
	ld [bc], a                                       ; $5d5a: $02
	ld d, e                                          ; $5d5b: $53
	ret nz                                           ; $5d5c: $c0

	ld bc, $01a0                                     ; $5d5d: $01 $a0 $01
	ld [bc], a                                       ; $5d60: $02
	ld e, h                                          ; $5d61: $5c
	ret nz                                           ; $5d62: $c0

	ld bc, $05a0                                     ; $5d63: $01 $a0 $05
	ld [bc], a                                       ; $5d66: $02
	ld h, l                                          ; $5d67: $65
	ret nz                                           ; $5d68: $c0

	ld bc, $01a0                                     ; $5d69: $01 $a0 $01
	ld [bc], a                                       ; $5d6c: $02
	ld l, e                                          ; $5d6d: $6b
	ret nz                                           ; $5d6e: $c0

	ld bc, $05a0                                     ; $5d6f: $01 $a0 $05
	ld [bc], a                                       ; $5d72: $02
	ld l, a                                          ; $5d73: $6f
	pop bc                                           ; $5d74: $c1
	ld e, e                                          ; $5d75: $5b
	ld [bc], a                                       ; $5d76: $02
	jp nc, Jump_084_50d3                             ; $5d77: $d2 $d3 $50

	ret nz                                           ; $5d7a: $c0

	ld hl, $d3d2                                     ; $5d7b: $21 $d2 $d3
	pop hl                                           ; $5d7e: $e1
	ld [bc], a                                       ; $5d7f: $02
	ld bc, $c0c8                                     ; $5d80: $01 $c8 $c0
	ld bc, $05a0                                     ; $5d83: $01 $a0 $05
	ld [bc], a                                       ; $5d86: $02
	ld [hl], l                                       ; $5d87: $75
	ret nz                                           ; $5d88: $c0

	ld bc, $01a0                                     ; $5d89: $01 $a0 $01
	ld [bc], a                                       ; $5d8c: $02
	dec sp                                           ; $5d8d: $3b
	ret nz                                           ; $5d8e: $c0

	ld bc, $05a0                                     ; $5d8f: $01 $a0 $05
	ld [bc], a                                       ; $5d92: $02
	ld a, e                                          ; $5d93: $7b
	ret nz                                           ; $5d94: $c0

	ld bc, $01a0                                     ; $5d95: $01 $a0 $01
	ld [bc], a                                       ; $5d98: $02
	ld b, e                                          ; $5d99: $43
	pop hl                                           ; $5d9a: $e1
	ld [bc], a                                       ; $5d9b: $02
	rlca                                             ; $5d9c: $07
	sbc e                                            ; $5d9d: $9b
	ret nz                                           ; $5d9e: $c0

	ld bc, $05a0                                     ; $5d9f: $01 $a0 $05
	ld [bc], a                                       ; $5da2: $02
	add e                                            ; $5da3: $83
	ret nz                                           ; $5da4: $c0

	ld bc, $01a0                                     ; $5da5: $01 $a0 $01
	ld [bc], a                                       ; $5da8: $02
	ld b, a                                          ; $5da9: $47
	ret nz                                           ; $5daa: $c0

	ld bc, $05a0                                     ; $5dab: $01 $a0 $05
	ld [bc], a                                       ; $5dae: $02
	add l                                            ; $5daf: $85
	ret nz                                           ; $5db0: $c0

	ld bc, $01a0                                     ; $5db1: $01 $a0 $01
	ld [bc], a                                       ; $5db4: $02
	adc e                                            ; $5db5: $8b
	ret nz                                           ; $5db6: $c0

	ld bc, $05a0                                     ; $5db7: $01 $a0 $05
	ld [bc], a                                       ; $5dba: $02
	sub h                                            ; $5dbb: $94
	ret nz                                           ; $5dbc: $c0

	ld bc, $01a0                                     ; $5dbd: $01 $a0 $01
	ld [bc], a                                       ; $5dc0: $02
	ld l, e                                          ; $5dc1: $6b
	ret nz                                           ; $5dc2: $c0

	ld bc, $05a0                                     ; $5dc3: $01 $a0 $05
	ld [bc], a                                       ; $5dc6: $02
	sbc [hl]                                         ; $5dc7: $9e
	pop bc                                           ; $5dc8: $c1
	ld e, e                                          ; $5dc9: $5b
	ld bc, $50d4                                     ; $5dca: $01 $d4 $50
	ret nz                                           ; $5dcd: $c0

	ld hl, $d3d2                                     ; $5dce: $21 $d2 $d3
	pop hl                                           ; $5dd1: $e1
	ld [bc], a                                       ; $5dd2: $02
	ld bc, $c0c8                                     ; $5dd3: $01 $c8 $c0
	ld bc, $05a0                                     ; $5dd6: $01 $a0 $05
	ld [bc], a                                       ; $5dd9: $02
	xor c                                            ; $5dda: $a9
	ret nz                                           ; $5ddb: $c0

	ld bc, $01a0                                     ; $5ddc: $01 $a0 $01
	ld [bc], a                                       ; $5ddf: $02
	dec sp                                           ; $5de0: $3b
	ret nz                                           ; $5de1: $c0

	ld bc, $05a0                                     ; $5de2: $01 $a0 $05
	ld [bc], a                                       ; $5de5: $02
	xor [hl]                                         ; $5de6: $ae
	ret nz                                           ; $5de7: $c0

	ld bc, $01a0                                     ; $5de8: $01 $a0 $01
	ld [bc], a                                       ; $5deb: $02
	ld b, e                                          ; $5dec: $43
	pop hl                                           ; $5ded: $e1
	ld [bc], a                                       ; $5dee: $02
	rlca                                             ; $5def: $07
	sbc e                                            ; $5df0: $9b
	ret nz                                           ; $5df1: $c0

	ld bc, $05a0                                     ; $5df2: $01 $a0 $05
	ld [bc], a                                       ; $5df5: $02
	add e                                            ; $5df6: $83
	ret nz                                           ; $5df7: $c0

	ld bc, $01a0                                     ; $5df8: $01 $a0 $01
	ld [bc], a                                       ; $5dfb: $02
	or l                                             ; $5dfc: $b5
	ret nz                                           ; $5dfd: $c0

	ld bc, $05a0                                     ; $5dfe: $01 $a0 $05
	ld [bc], a                                       ; $5e01: $02
	cp c                                             ; $5e02: $b9
	ret nz                                           ; $5e03: $c0

	ld bc, $01a0                                     ; $5e04: $01 $a0 $01
	ld [bc], a                                       ; $5e07: $02
	call nz, $01c0                                   ; $5e08: $c4 $c0 $01
	and b                                            ; $5e0b: $a0
	dec b                                            ; $5e0c: $05
	ld [bc], a                                       ; $5e0d: $02
	add $c0                                          ; $5e0e: $c6 $c0
	ld bc, $01a0                                     ; $5e10: $01 $a0 $01
	ld [bc], a                                       ; $5e13: $02
	pop de                                           ; $5e14: $d1
	ret nz                                           ; $5e15: $c0

	ld bc, $05a0                                     ; $5e16: $01 $a0 $05
	ld [bc], a                                       ; $5e19: $02
	rst SubAFromHL                                          ; $5e1a: $d7
	pop bc                                           ; $5e1b: $c1
	ld e, e                                          ; $5e1c: $5b
	ld bc, $10d5                                     ; $5e1d: $01 $d5 $10
	ret nz                                           ; $5e20: $c0

	ld bc, $01a0                                     ; $5e21: $01 $a0 $01
	ld [bc], a                                       ; $5e24: $02
	db $db                                           ; $5e25: $db
	pop hl                                           ; $5e26: $e1
	ld [bc], a                                       ; $5e27: $02
	rlca                                             ; $5e28: $07
	sbc e                                            ; $5e29: $9b
	ret nz                                           ; $5e2a: $c0

	ld bc, $01a0                                     ; $5e2b: $01 $a0 $01
	ld [bc], a                                       ; $5e2e: $02
	push hl                                          ; $5e2f: $e5
	push hl                                          ; $5e30: $e5
	inc sp                                           ; $5e31: $33
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	rlca                                             ; $5e34: $07
	rlca                                             ; $5e35: $07
	add hl, bc                                       ; $5e36: $09
	dec e                                            ; $5e37: $1d
	ret nz                                           ; $5e38: $c0

	ld hl, $d7d2                                     ; $5e39: $21 $d2 $d7
	pop hl                                           ; $5e3c: $e1

jr_084_5e3d:
	ld [bc], a                                       ; $5e3d: $02
	ld bc, $82e0                                     ; $5e3e: $01 $e0 $82
	ret nz                                           ; $5e41: $c0

	add b                                            ; $5e42: $80
	ld bc, $03d3                                     ; $5e43: $01 $d3 $03
	db $e4                                           ; $5e46: $e4
	ld bc, $01d1                                     ; $5e47: $01 $d1 $01
	jp nc, $e403                                     ; $5e4a: $d2 $03 $e4

	nop                                              ; $5e4d: $00
	pop af                                           ; $5e4e: $f1

jr_084_5e4f:
	ld bc, $03d1                                     ; $5e4f: $01 $d1 $03
	db $e4                                           ; $5e52: $e4
	nop                                              ; $5e53: $00
	ld [bc], a                                       ; $5e54: $02
	add hl, bc                                       ; $5e55: $09
	ret nz                                           ; $5e56: $c0

	and $00                                          ; $5e57: $e6 $00
	add b                                            ; $5e59: $80
	nop                                              ; $5e5a: $00

jr_084_5e5b:
	call nc, $c083                                   ; $5e5b: $d4 $83 $c0
	dec de                                           ; $5e5e: $1b
	rst SubAFromHL                                          ; $5e5f: $d7
	ld [bc], a                                       ; $5e60: $02
	ret nc                                           ; $5e61: $d0

	pop de                                           ; $5e62: $d1
	ld b, d                                          ; $5e63: $42
	ret nz                                           ; $5e64: $c0

	ld bc, $08a0                                     ; $5e65: $01 $a0 $08
	nop                                              ; $5e68: $00
	ld bc, $01c0                                     ; $5e69: $01 $c0 $01
	and b                                            ; $5e6c: $a0
	ld bc, $0800                                     ; $5e6d: $01 $00 $08
	ret nz                                           ; $5e70: $c0

	ld bc, $08a0                                     ; $5e71: $01 $a0 $08
	nop                                              ; $5e74: $00
	inc c                                            ; $5e75: $0c
	ret nz                                           ; $5e76: $c0

	ld bc, $01a0                                     ; $5e77: $01 $a0 $01
	nop                                              ; $5e7a: $00
	jr jr_084_5e3d                                   ; $5e7b: $18 $c0

	ld bc, $08a0                                     ; $5e7d: $01 $a0 $08
	nop                                              ; $5e80: $00
	ld e, $c0                                        ; $5e81: $1e $c0
	ld bc, $01a0                                     ; $5e83: $01 $a0 $01
	nop                                              ; $5e86: $00
	inc h                                            ; $5e87: $24
	ret nz                                           ; $5e88: $c0

	ld bc, $08a0                                     ; $5e89: $01 $a0 $08
	nop                                              ; $5e8c: $00
	jr z, jr_084_5e4f                                ; $5e8d: $28 $c0

	ld bc, $01a0                                     ; $5e8f: $01 $a0 $01
	nop                                              ; $5e92: $00
	ld a, [hl+]                                      ; $5e93: $2a
	ret nz                                           ; $5e94: $c0

	ld bc, $08a0                                     ; $5e95: $01 $a0 $08
	nop                                              ; $5e98: $00
	jr nc, jr_084_5e5b                               ; $5e99: $30 $c0

	ld bc, $01a0                                     ; $5e9b: $01 $a0 $01
	nop                                              ; $5e9e: $00
	ld a, [hl-]                                      ; $5e9f: $3a
	ret nz                                           ; $5ea0: $c0

	ld bc, $08a0                                     ; $5ea1: $01 $a0 $08
	nop                                              ; $5ea4: $00
	ld a, $02                                        ; $5ea5: $3e $02
	jp nc, $39d3                                     ; $5ea7: $d2 $d3 $39

	ret nz                                           ; $5eaa: $c0

	ld bc, $08a0                                     ; $5eab: $01 $a0 $08
	nop                                              ; $5eae: $00
	ld bc, $01c0                                     ; $5eaf: $01 $c0 $01
	and b                                            ; $5eb2: $a0
	ld bc, $0800                                     ; $5eb3: $01 $00 $08
	ret nz                                           ; $5eb6: $c0

	ld bc, $08a0                                     ; $5eb7: $01 $a0 $08
	nop                                              ; $5eba: $00
	ld c, c                                          ; $5ebb: $49
	ret nz                                           ; $5ebc: $c0

	ld bc, $01a0                                     ; $5ebd: $01 $a0 $01
	nop                                              ; $5ec0: $00
	ld d, d                                          ; $5ec1: $52
	ret nz                                           ; $5ec2: $c0

	ld bc, $08a0                                     ; $5ec3: $01 $a0 $08
	nop                                              ; $5ec6: $00
	ld d, [hl]                                       ; $5ec7: $56
	ret nz                                           ; $5ec8: $c0

	ld bc, $01a0                                     ; $5ec9: $01 $a0 $01
	nop                                              ; $5ecc: $00
	ld a, [hl+]                                      ; $5ecd: $2a
	ret nz                                           ; $5ece: $c0

	ld bc, $08a0                                     ; $5ecf: $01 $a0 $08
	nop                                              ; $5ed2: $00

Jump_084_5ed3:
	ld h, h                                          ; $5ed3: $64
	ret nz                                           ; $5ed4: $c0

	ld bc, $01a0                                     ; $5ed5: $01 $a0 $01
	nop                                              ; $5ed8: $00
	ld l, l                                          ; $5ed9: $6d
	ldh [$09], a                                     ; $5eda: $e0 $09
	xor [hl]                                         ; $5edc: $ae
	ret nz                                           ; $5edd: $c0

	ld bc, $08a0                                     ; $5ede: $01 $a0 $08
	nop                                              ; $5ee1: $00
	ld [hl], l                                       ; $5ee2: $75
	ld bc, $27d4                                     ; $5ee3: $01 $d4 $27
	ret nz                                           ; $5ee6: $c0

	ld bc, $01a0                                     ; $5ee7: $01 $a0 $01
	nop                                              ; $5eea: $00
	add e                                            ; $5eeb: $83
	ret nz                                           ; $5eec: $c0

	ld bc, $08a0                                     ; $5eed: $01 $a0 $08
	nop                                              ; $5ef0: $00
	adc c                                            ; $5ef1: $89
	ret nz                                           ; $5ef2: $c0

	ld bc, $01a0                                     ; $5ef3: $01 $a0 $01
	nop                                              ; $5ef6: $00
	ld a, [hl+]                                      ; $5ef7: $2a
	ret nz                                           ; $5ef8: $c0

	ld bc, $08a0                                     ; $5ef9: $01 $a0 $08
	nop                                              ; $5efc: $00
	sub e                                            ; $5efd: $93
	ret nz                                           ; $5efe: $c0

	ld bc, $01a0                                     ; $5eff: $01 $a0 $01
	nop                                              ; $5f02: $00
	and d                                            ; $5f03: $a2
	ldh [$09], a                                     ; $5f04: $e0 $09
	add h                                            ; $5f06: $84
	ret nz                                           ; $5f07: $c0

	ld bc, $08a0                                     ; $5f08: $01 $a0 $08
	nop                                              ; $5f0b: $00
	xor a                                            ; $5f0c: $af
	ld bc, $28d5                                     ; $5f0d: $01 $d5 $28
	ret nz                                           ; $5f10: $c0

	ld bc, $08a0                                     ; $5f11: $01 $a0 $08
	nop                                              ; $5f14: $00
	jp $01c0                                         ; $5f15: $c3 $c0 $01


	and b                                            ; $5f18: $a0
	ld bc, $c600                                     ; $5f19: $01 $00 $c6
	ret nz                                           ; $5f1c: $c0

	ld bc, $08a0                                     ; $5f1d: $01 $a0 $08
	nop                                              ; $5f20: $00
	jp z, $01c0                                      ; $5f21: $ca $c0 $01

	and b                                            ; $5f24: $a0
	ld bc, $2a00                                     ; $5f25: $01 $00 $2a
	ret nz                                           ; $5f28: $c0

	ld bc, $08a0                                     ; $5f29: $01 $a0 $08
	nop                                              ; $5f2c: $00
	pop de                                           ; $5f2d: $d1
	ret nz                                           ; $5f2e: $c0

	ld bc, $01a0                                     ; $5f2f: $01 $a0 $01
	nop                                              ; $5f32: $00
	jp c, $8040                                      ; $5f33: $da $40 $80

	nop                                              ; $5f36: $00
	call nc, Call_084_5bc1                           ; $5f37: $d4 $c1 $5b
	push hl                                          ; $5f3a: $e5
	inc sp                                           ; $5f3b: $33
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	add hl, bc                                       ; $5f3e: $09
	ret nz                                           ; $5f3f: $c0

	rst SubAFromHL                                          ; $5f40: $d7
	nop                                              ; $5f41: $00
	add b                                            ; $5f42: $80
	nop                                              ; $5f43: $00
	push de                                          ; $5f44: $d5
	add e                                            ; $5f45: $83
	ret nz                                           ; $5f46: $c0

	dec de                                           ; $5f47: $1b
	rst SubAFromHL                                          ; $5f48: $d7
	ld [bc], a                                       ; $5f49: $02
	ret nc                                           ; $5f4a: $d0

	pop de                                           ; $5f4b: $d1
	inc sp                                           ; $5f4c: $33
	ret nz                                           ; $5f4d: $c0

	ld bc, $08a0                                     ; $5f4e: $01 $a0 $08
	nop                                              ; $5f51: $00
	ld bc, $01c0                                     ; $5f52: $01 $c0 $01
	and b                                            ; $5f55: $a0
	ld bc, $0800                                     ; $5f56: $01 $00 $08
	ret nz                                           ; $5f59: $c0

	ld bc, $08a0                                     ; $5f5a: $01 $a0 $08
	nop                                              ; $5f5d: $00
	db $dd                                           ; $5f5e: $dd
	ret nz                                           ; $5f5f: $c0

	ld bc, $01a0                                     ; $5f60: $01 $a0 $01
	nop                                              ; $5f63: $00
	db $e3                                           ; $5f64: $e3
	ret nz                                           ; $5f65: $c0

	ld bc, $08a0                                     ; $5f66: $01 $a0 $08
	nop                                              ; $5f69: $00
	db $ec                                           ; $5f6a: $ec
	ret nz                                           ; $5f6b: $c0

	ld bc, $01a0                                     ; $5f6c: $01 $a0 $01
	nop                                              ; $5f6f: $00
	or $c0                                           ; $5f70: $f6 $c0
	ld bc, $08a0                                     ; $5f72: $01 $a0 $08
	ld bc, $e001                                     ; $5f75: $01 $01 $e0
	add hl, bc                                       ; $5f78: $09
	ld de, $01c0                                     ; $5f79: $11 $c0 $01
	and b                                            ; $5f7c: $a0
	ld [$0401], sp                                   ; $5f7d: $08 $01 $04
	ld [bc], a                                       ; $5f80: $02
	jp nc, $39d3                                     ; $5f81: $d2 $d3 $39

	ret nz                                           ; $5f84: $c0

	ld bc, $08a0                                     ; $5f85: $01 $a0 $08
	nop                                              ; $5f88: $00
	ld bc, $01c0                                     ; $5f89: $01 $c0 $01
	and b                                            ; $5f8c: $a0
	ld bc, $0800                                     ; $5f8d: $01 $00 $08
	ret nz                                           ; $5f90: $c0

	ld bc, $08a0                                     ; $5f91: $01 $a0 $08
	ld bc, $c00f                                     ; $5f94: $01 $0f $c0
	ld bc, $01a0                                     ; $5f97: $01 $a0 $01
	nop                                              ; $5f9a: $00
	db $e3                                           ; $5f9b: $e3
	ret nz                                           ; $5f9c: $c0

	ld bc, $08a0                                     ; $5f9d: $01 $a0 $08
	nop                                              ; $5fa0: $00
	db $ec                                           ; $5fa1: $ec
	ret nz                                           ; $5fa2: $c0

	ld bc, $01a0                                     ; $5fa3: $01 $a0 $01
	nop                                              ; $5fa6: $00
	or $c0                                           ; $5fa7: $f6 $c0
	ld bc, $08a0                                     ; $5fa9: $01 $a0 $08
	ld bc, $c016                                     ; $5fac: $01 $16 $c0
	ld bc, $01a0                                     ; $5faf: $01 $a0 $01
	ld bc, $e021                                     ; $5fb2: $01 $21 $e0
	ld [$c0d4], sp                                   ; $5fb5: $08 $d4 $c0
	ld bc, $08a0                                     ; $5fb8: $01 $a0 $08
	nop                                              ; $5fbb: $00
	ld [hl], l                                       ; $5fbc: $75
	ld bc, $27d4                                     ; $5fbd: $01 $d4 $27
	ret nz                                           ; $5fc0: $c0

	ld bc, $01a0                                     ; $5fc1: $01 $a0 $01
	nop                                              ; $5fc4: $00
	add e                                            ; $5fc5: $83
	ret nz                                           ; $5fc6: $c0

	ld bc, $08a0                                     ; $5fc7: $01 $a0 $08
	nop                                              ; $5fca: $00
	adc c                                            ; $5fcb: $89
	ret nz                                           ; $5fcc: $c0

	ld bc, $01a0                                     ; $5fcd: $01 $a0 $01
	nop                                              ; $5fd0: $00
	or $c0                                           ; $5fd1: $f6 $c0
	ld bc, $08a0                                     ; $5fd3: $01 $a0 $08
	nop                                              ; $5fd6: $00
	sub e                                            ; $5fd7: $93
	ret nz                                           ; $5fd8: $c0

	ld bc, $01a0                                     ; $5fd9: $01 $a0 $01
	nop                                              ; $5fdc: $00
	and d                                            ; $5fdd: $a2
	ldh [$08], a                                     ; $5fde: $e0 $08
	xor d                                            ; $5fe0: $aa
	ret nz                                           ; $5fe1: $c0

	ld bc, $08a0                                     ; $5fe2: $01 $a0 $08
	nop                                              ; $5fe5: $00
	xor a                                            ; $5fe6: $af
	ld bc, $28d5                                     ; $5fe7: $01 $d5 $28
	ret nz                                           ; $5fea: $c0

	ld bc, $08a0                                     ; $5feb: $01 $a0 $08
	nop                                              ; $5fee: $00
	jp $01c0                                         ; $5fef: $c3 $c0 $01


	and b                                            ; $5ff2: $a0
	ld bc, $c600                                     ; $5ff3: $01 $00 $c6
	ret nz                                           ; $5ff6: $c0

	ld bc, $08a0                                     ; $5ff7: $01 $a0 $08
	nop                                              ; $5ffa: $00
	jp z, $01c0                                      ; $5ffb: $ca $c0 $01

	and b                                            ; $5ffe: $a0
	ld bc, $2a00                                     ; $5fff: $01 $00 $2a
	ret nz                                           ; $6002: $c0

	ld bc, $08a0                                     ; $6003: $01 $a0 $08
	ld bc, $c029                                     ; $6006: $01 $29 $c0
	ld bc, $01a0                                     ; $6009: $01 $a0 $01
	nop                                              ; $600c: $00
	jp c, $8040                                      ; $600d: $da $40 $80

	nop                                              ; $6010: $00
	push de                                          ; $6011: $d5
	pop bc                                           ; $6012: $c1
	ld e, e                                          ; $6013: $5b
	push hl                                          ; $6014: $e5
	inc sp                                           ; $6015: $33
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	add hl, bc                                       ; $6018: $09
	ld [hl], b                                       ; $6019: $70
	add e                                            ; $601a: $83
	ret nz                                           ; $601b: $c0

	dec de                                           ; $601c: $1b
	rst SubAFromHL                                          ; $601d: $d7
	ld [bc], a                                       ; $601e: $02
	ret nc                                           ; $601f: $d0

	pop de                                           ; $6020: $d1
	ld a, [de]                                       ; $6021: $1a
	ldh [$08], a                                     ; $6022: $e0 $08
	ld e, c                                          ; $6024: $59
	ret nz                                           ; $6025: $c0

	ld bc, $08a0                                     ; $6026: $01 $a0 $08
	ld bc, $c032                                     ; $6029: $01 $32 $c0
	ld bc, $01a0                                     ; $602c: $01 $a0 $01
	ld bc, $e03d                                     ; $602f: $01 $3d $e0
	ld [$c057], sp                                   ; $6032: $08 $57 $c0
	ld bc, $08a0                                     ; $6035: $01 $a0 $08
	nop                                              ; $6038: $00
	ld a, $c1                                        ; $6039: $3e $c1
	ld e, e                                          ; $603b: $5b
	ld [bc], a                                       ; $603c: $02
	jp nc, $1ad3                                     ; $603d: $d2 $d3 $1a

	ldh [$08], a                                     ; $6040: $e0 $08
	dec sp                                           ; $6042: $3b
	ret nz                                           ; $6043: $c0

	ld bc, $08a0                                     ; $6044: $01 $a0 $08
	ld bc, $c04a                                     ; $6047: $01 $4a $c0
	ld bc, $01a0                                     ; $604a: $01 $a0 $01
	ld bc, $e055                                     ; $604d: $01 $55 $e0
	ld [$c039], sp                                   ; $6050: $08 $39 $c0
	ld bc, $08a0                                     ; $6053: $01 $a0 $08
	nop                                              ; $6056: $00
	ld [hl], l                                       ; $6057: $75
	pop bc                                           ; $6058: $c1
	ld e, e                                          ; $6059: $5b
	ld bc, $23d4                                     ; $605a: $01 $d4 $23
	ret nz                                           ; $605d: $c0

	ld bc, $08a0                                     ; $605e: $01 $a0 $08
	ld bc, $c062                                     ; $6061: $01 $62 $c0
	ld bc, $01a0                                     ; $6064: $01 $a0 $01
	ld bc, $c064                                     ; $6067: $01 $64 $c0
	ld bc, $08a0                                     ; $606a: $01 $a0 $08
	ld bc, $c06b                                     ; $606d: $01 $6b $c0
	ld bc, $01a0                                     ; $6070: $01 $a0 $01
	ld bc, $e077                                     ; $6073: $01 $77 $e0
	ld [$c013], sp                                   ; $6076: $08 $13 $c0
	ld bc, $08a0                                     ; $6079: $01 $a0 $08
	ld bc, $c181                                     ; $607c: $01 $81 $c1
	ld e, e                                          ; $607f: $5b

jr_084_6080:
	ld bc, $03d5                                     ; $6080: $01 $d5 $03
	ldh [$08], a                                     ; $6083: $e0 $08
	ld [de], a                                       ; $6085: $12
	push hl                                          ; $6086: $e5
	inc sp                                           ; $6087: $33
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	add hl, bc                                       ; $608a: $09
	add hl, hl                                       ; $608b: $29
	pop hl                                           ; $608c: $e1
	ld [bc], a                                       ; $608d: $02
	ld bc, $82e0                                     ; $608e: $01 $e0 $82
	ret nz                                           ; $6091: $c0

	add b                                            ; $6092: $80
	ld bc, $0bd3                                     ; $6093: $01 $d3 $0b
	ret nz                                           ; $6096: $c0

	ld hl, $d7d2                                     ; $6097: $21 $d2 $d7
	ret nz                                           ; $609a: $c0

	ld [hl+], a                                      ; $609b: $22
	pop de                                           ; $609c: $d1
	rst SubAFromHL                                          ; $609d: $d7
	db $e4                                           ; $609e: $e4
	ld [bc], a                                       ; $609f: $02
	jr @+$03                                         ; $60a0: $18 $01

	jp nc, $c00b                                     ; $60a2: $d2 $0b $c0

	ld hl, $d7d2                                     ; $60a5: $21 $d2 $d7
	ret nz                                           ; $60a8: $c0

	ld [hl+], a                                      ; $60a9: $22
	jp nc, $e4d7                                     ; $60aa: $d2 $d7 $e4

	ld bc, $013a                                     ; $60ad: $01 $3a $01
	pop de                                           ; $60b0: $d1
	inc bc                                           ; $60b1: $03
	db $e4                                           ; $60b2: $e4
	nop                                              ; $60b3: $00
	ld [bc], a                                       ; $60b4: $02
	add hl, bc                                       ; $60b5: $09
	sub [hl]                                         ; $60b6: $96
	add e                                            ; $60b7: $83
	ret nz                                           ; $60b8: $c0

	dec de                                           ; $60b9: $1b
	rst SubAFromHL                                          ; $60ba: $d7
	ld [bc], a                                       ; $60bb: $02
	ret nc                                           ; $60bc: $d0

	pop de                                           ; $60bd: $d1
	jr nz, jr_084_6080                               ; $60be: $20 $c0

	ld bc, $08a0                                     ; $60c0: $01 $a0 $08
	nop                                              ; $60c3: $00
	ld bc, $00e0                                     ; $60c4: $01 $e0 $00
	add a                                            ; $60c7: $87
	ret nz                                           ; $60c8: $c0

	ld bc, $08a0                                     ; $60c9: $01 $a0 $08
	ld bc, $c08f                                     ; $60cc: $01 $8f $c0
	ld bc, $01a0                                     ; $60cf: $01 $a0 $01
	ld bc, $e09f                                     ; $60d2: $01 $9f $e0
	nop                                              ; $60d5: $00
	adc e                                            ; $60d6: $8b
	ret nz                                           ; $60d7: $c0

	ld bc, $08a0                                     ; $60d8: $01 $a0 $08
	ld bc, wWramBank                                     ; $60db: $01 $04 $c1
	ld e, e                                          ; $60de: $5b
	ld [bc], a                                       ; $60df: $02
	jp nc, $20d3                                     ; $60e0: $d2 $d3 $20

	ret nz                                           ; $60e3: $c0

	ld bc, $08a0                                     ; $60e4: $01 $a0 $08
	nop                                              ; $60e7: $00
	ld bc, $00e0                                     ; $60e8: $01 $e0 $00
	ld h, e                                          ; $60eb: $63
	ret nz                                           ; $60ec: $c0

	ld bc, $08a0                                     ; $60ed: $01 $a0 $08
	ld bc, $c0a3                                     ; $60f0: $01 $a3 $c0
	ld bc, $01a0                                     ; $60f3: $01 $a0 $01
	ld bc, $e09f                                     ; $60f6: $01 $9f $e0
	nop                                              ; $60f9: $00
	ld h, a                                          ; $60fa: $67
	ret nz                                           ; $60fb: $c0

	ld bc, $08a0                                     ; $60fc: $01 $a0 $08
	nop                                              ; $60ff: $00
	ld [hl], l                                       ; $6100: $75
	pop bc                                           ; $6101: $c1
	ld e, e                                          ; $6102: $5b
	ld bc, $26d4                                     ; $6103: $01 $d4 $26
	ret nz                                           ; $6106: $c0

	ld bc, $01a0                                     ; $6107: $01 $a0 $01
	nop                                              ; $610a: $00
	add e                                            ; $610b: $83
	ret nz                                           ; $610c: $c0

	ld bc, $08a0                                     ; $610d: $01 $a0 $08
	nop                                              ; $6110: $00
	adc c                                            ; $6111: $89
	ldh [rP1], a                                     ; $6112: $e0 $00
	ld a, [hl-]                                      ; $6114: $3a
	ret nz                                           ; $6115: $c0

	ld bc, $08a0                                     ; $6116: $01 $a0 $08
	ld bc, $c0b1                                     ; $6119: $01 $b1 $c0
	ld bc, $01a0                                     ; $611c: $01 $a0 $01
	ld bc, $e09f                                     ; $611f: $01 $9f $e0
	nop                                              ; $6122: $00
	ld a, $c0                                        ; $6123: $3e $c0
	ld bc, $08a0                                     ; $6125: $01 $a0 $08
	nop                                              ; $6128: $00
	xor a                                            ; $6129: $af
	pop bc                                           ; $612a: $c1
	ld e, e                                          ; $612b: $5b
	ld bc, $1ad5                                     ; $612c: $01 $d5 $1a
	ret nz                                           ; $612f: $c0

	ld bc, $08a0                                     ; $6130: $01 $a0 $08
	nop                                              ; $6133: $00
	jp $01c0                                         ; $6134: $c3 $c0 $01


	and b                                            ; $6137: $a0
	ld bc, $c001                                     ; $6138: $01 $01 $c0
	ret nz                                           ; $613b: $c0

	ld bc, $08a0                                     ; $613c: $01 $a0 $08
	ld bc, $c1cb                                     ; $613f: $01 $cb $c1
	ld e, e                                          ; $6142: $5b
	ret nz                                           ; $6143: $c0

	ld bc, $01a0                                     ; $6144: $01 $a0 $01
	ld bc, $e5ce                                     ; $6147: $01 $ce $e5
	inc sp                                           ; $614a: $33
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	ld [de], a                                       ; $614d: $12
	ret nz                                           ; $614e: $c0

	ld bc, $01a0                                     ; $614f: $01 $a0 $01
	ld bc, $c0c0                                     ; $6152: $01 $c0 $c0
	ld bc, $08a0                                     ; $6155: $01 $a0 $08
	ld bc, $c0d1                                     ; $6158: $01 $d1 $c0
	ld bc, $01a0                                     ; $615b: $01 $a0 $01
	ld bc, $06d6                                     ; $615e: $01 $d6 $06
	ldh [rP1], a                                     ; $6161: $e0 $00
	dec b                                            ; $6163: $05
	ldh [rTAC], a                                    ; $6164: $e0 $07
	inc h                                            ; $6166: $24
	ld a, a                                          ; $6167: $7f
	pop hl                                           ; $6168: $e1
	ld [hl-], a                                      ; $6169: $32
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	pop hl                                           ; $616c: $e1
	ld [bc], a                                       ; $616d: $02
	ld bc, $62e8                                     ; $616e: $01 $e8 $62
	ld hl, sp-$79                                    ; $6171: $f8 $87
	ld [bc], a                                       ; $6173: $02
	sub c                                            ; $6174: $91
	ldh [rAUD3HIGH], a                               ; $6175: $e0 $1e
	ld a, [de]                                       ; $6177: $1a
	pop hl                                           ; $6178: $e1
	ld [bc], a                                       ; $6179: $02
	inc bc                                           ; $617a: $03
	dec de                                           ; $617b: $1b
	ret nz                                           ; $617c: $c0

	dec h                                            ; $617d: $25
	pop de                                           ; $617e: $d1
	rst SubAFromHL                                          ; $617f: $d7
	ret nz                                           ; $6180: $c0

	ld bc, $08a0                                     ; $6181: $01 $a0 $08
	ld bc, $c0e8                                     ; $6184: $01 $e8 $c0
	ld bc, $01a0                                     ; $6187: $01 $a0 $01
	ld bc, $c0e9                                     ; $618a: $01 $e9 $c0
	ld bc, $08a0                                     ; $618d: $01 $a0 $08
	ld bc, $f8f7                                     ; $6190: $01 $f7 $f8
	add a                                            ; $6193: $87
	ld [bc], a                                       ; $6194: $02
	sub c                                            ; $6195: $91
	ldh [rDMA], a                                    ; $6196: $e0 $46
	ld d, $e1                                        ; $6198: $16 $e1
	ld [bc], a                                       ; $619a: $02
	inc bc                                           ; $619b: $03
	rla                                              ; $619c: $17
	ret nz                                           ; $619d: $c0

	ld bc, $08a0                                     ; $619e: $01 $a0 $08
	ld bc, $c0fa                                     ; $61a1: $01 $fa $c0
	ld bc, $01a0                                     ; $61a4: $01 $a0 $01
	ld bc, $c0fe                                     ; $61a7: $01 $fe $c0
	ld bc, $08a0                                     ; $61aa: $01 $a0 $08
	ld [bc], a                                       ; $61ad: $02
	dec bc                                           ; $61ae: $0b
	ld hl, sp-$79                                    ; $61af: $f8 $87
	ld [bc], a                                       ; $61b1: $02
	sub c                                            ; $61b2: $91
	ldh [$5a], a                                     ; $61b3: $e0 $5a
	ld d, $e1                                        ; $61b5: $16 $e1
	ld [bc], a                                       ; $61b7: $02
	inc bc                                           ; $61b8: $03
	rla                                              ; $61b9: $17
	ret nz                                           ; $61ba: $c0

	ld bc, $08a0                                     ; $61bb: $01 $a0 $08
	ld [bc], a                                       ; $61be: $02
	ld [de], a                                       ; $61bf: $12
	ret nz                                           ; $61c0: $c0

	ld bc, $01a0                                     ; $61c1: $01 $a0 $01
	ld [bc], a                                       ; $61c4: $02
	inc d                                            ; $61c5: $14
	ret nz                                           ; $61c6: $c0

	ld bc, $08a0                                     ; $61c7: $01 $a0 $08
	ld [bc], a                                       ; $61ca: $02
	jr jr_084_61e7                                   ; $61cb: $18 $1a

	pop hl                                           ; $61cd: $e1
	ld [bc], a                                       ; $61ce: $02
	inc bc                                           ; $61cf: $03
	inc de                                           ; $61d0: $13
	ret nz                                           ; $61d1: $c0

	ld [hl+], a                                      ; $61d2: $22
	pop de                                           ; $61d3: $d1
	rst SubAFromHL                                          ; $61d4: $d7
	ret nz                                           ; $61d5: $c0

	ld bc, $08a0                                     ; $61d6: $01 $a0 $08
	ld [bc], a                                       ; $61d9: $02
	ld hl, $01c0                                     ; $61da: $21 $c0 $01
	and b                                            ; $61dd: $a0
	ld bc, $2602                                     ; $61de: $01 $02 $26
	ret nz                                           ; $61e1: $c0

	ld bc, $08a0                                     ; $61e2: $01 $a0 $08
	ld [bc], a                                       ; $61e5: $02
	dec hl                                           ; $61e6: $2b

jr_084_61e7:
	add hl, bc                                       ; $61e7: $09
	ret nz                                           ; $61e8: $c0

	call $c083                                       ; $61e9: $cd $83 $c0
	dec de                                           ; $61ec: $1b
	rst SubAFromHL                                          ; $61ed: $d7
	ld [bc], a                                       ; $61ee: $02
	ret nc                                           ; $61ef: $d0

	pop de                                           ; $61f0: $d1
	ld sp, $01c0                                     ; $61f1: $31 $c0 $01
	and b                                            ; $61f4: $a0
	ld [$0100], sp                                   ; $61f5: $08 $00 $01
	ret nz                                           ; $61f8: $c0

	ld bc, $01a0                                     ; $61f9: $01 $a0 $01
	ld [bc], a                                       ; $61fc: $02
	inc a                                            ; $61fd: $3c
	ret nz                                           ; $61fe: $c0

	ld bc, $08a0                                     ; $61ff: $01 $a0 $08
	ld [bc], a                                       ; $6202: $02
	ld b, c                                          ; $6203: $41
	pop hl                                           ; $6204: $e1
	ld [hl-], a                                      ; $6205: $32
	nop                                              ; $6206: $00
	add hl, hl                                       ; $6207: $29
	pop hl                                           ; $6208: $e1
	ld [bc], a                                       ; $6209: $02
	ld bc, $c0e8                                     ; $620a: $01 $e8 $c0
	ld bc, $08a0                                     ; $620d: $01 $a0 $08
	ld [bc], a                                       ; $6210: $02
	ld c, b                                          ; $6211: $48
	ret nz                                           ; $6212: $c0

	ld bc, $01a0                                     ; $6213: $01 $a0 $01
	ld [bc], a                                       ; $6216: $02
	ld d, b                                          ; $6217: $50
	ldh [rTMA], a                                    ; $6218: $e0 $06
	ld [hl], b                                       ; $621a: $70
	ret nz                                           ; $621b: $c0

	ld bc, $08a0                                     ; $621c: $01 $a0 $08
	nop                                              ; $621f: $00
	ld a, $c1                                        ; $6220: $3e $c1
	ld e, e                                          ; $6222: $5b
	ld [bc], a                                       ; $6223: $02
	jp nc, $31d3                                     ; $6224: $d2 $d3 $31

	ret nz                                           ; $6227: $c0

	ld bc, $08a0                                     ; $6228: $01 $a0 $08
	nop                                              ; $622b: $00
	ld bc, $01c0                                     ; $622c: $01 $c0 $01
	and b                                            ; $622f: $a0
	ld bc, $3c02                                     ; $6230: $01 $02 $3c
	ret nz                                           ; $6233: $c0

	ld bc, $08a0                                     ; $6234: $01 $a0 $08
	ld [bc], a                                       ; $6237: $02
	ld d, [hl]                                       ; $6238: $56
	pop hl                                           ; $6239: $e1
	ld [hl-], a                                      ; $623a: $32
	nop                                              ; $623b: $00
	add hl, hl                                       ; $623c: $29
	pop hl                                           ; $623d: $e1
	ld [bc], a                                       ; $623e: $02
	ld bc, $c0e8                                     ; $623f: $01 $e8 $c0
	ld bc, $08a0                                     ; $6242: $01 $a0 $08
	ld [bc], a                                       ; $6245: $02
	ld h, e                                          ; $6246: $63
	ret nz                                           ; $6247: $c0

	ld bc, $01a0                                     ; $6248: $01 $a0 $01
	ld [bc], a                                       ; $624b: $02
	ld d, b                                          ; $624c: $50
	ldh [rTMA], a                                    ; $624d: $e0 $06
	dec sp                                           ; $624f: $3b
	ret nz                                           ; $6250: $c0

	ld bc, $08a0                                     ; $6251: $01 $a0 $08
	nop                                              ; $6254: $00
	ld [hl], l                                       ; $6255: $75
	pop bc                                           ; $6256: $c1
	ld e, e                                          ; $6257: $5b
	ld bc, $37d4                                     ; $6258: $01 $d4 $37
	ret nz                                           ; $625b: $c0

	ld bc, $01a0                                     ; $625c: $01 $a0 $01
	nop                                              ; $625f: $00
	add e                                            ; $6260: $83
	ret nz                                           ; $6261: $c0

	ld bc, $08a0                                     ; $6262: $01 $a0 $08
	nop                                              ; $6265: $00
	adc c                                            ; $6266: $89
	ret nz                                           ; $6267: $c0

	ld bc, $01a0                                     ; $6268: $01 $a0 $01
	ld [bc], a                                       ; $626b: $02
	ld [hl], b                                       ; $626c: $70
	ret nz                                           ; $626d: $c0

	ld bc, $08a0                                     ; $626e: $01 $a0 $08
	ld [bc], a                                       ; $6271: $02
	ld a, c                                          ; $6272: $79
	pop hl                                           ; $6273: $e1
	ld [hl-], a                                      ; $6274: $32
	nop                                              ; $6275: $00
	add hl, hl                                       ; $6276: $29
	pop hl                                           ; $6277: $e1
	ld [bc], a                                       ; $6278: $02
	ld bc, $c0e8                                     ; $6279: $01 $e8 $c0
	ld bc, $08a0                                     ; $627c: $01 $a0 $08
	ld [bc], a                                       ; $627f: $02
	add a                                            ; $6280: $87
	ret nz                                           ; $6281: $c0

	ld bc, $01a0                                     ; $6282: $01 $a0 $01
	ld bc, $e0ce                                     ; $6285: $01 $ce $e0
	ld b, $01                                        ; $6288: $06 $01
	ret nz                                           ; $628a: $c0

	ld bc, $08a0                                     ; $628b: $01 $a0 $08
	nop                                              ; $628e: $00
	xor a                                            ; $628f: $af
	pop bc                                           ; $6290: $c1
	ld e, e                                          ; $6291: $5b
	ld bc, $1ed5                                     ; $6292: $01 $d5 $1e
	ret nz                                           ; $6295: $c0

	ld bc, $08a0                                     ; $6296: $01 $a0 $08
	nop                                              ; $6299: $00
	jp $01c0                                         ; $629a: $c3 $c0 $01


	and b                                            ; $629d: $a0
	ld bc, $3c02                                     ; $629e: $01 $02 $3c
	ret nz                                           ; $62a1: $c0

	ld bc, $08a0                                     ; $62a2: $01 $a0 $08
	ld [bc], a                                       ; $62a5: $02
	sub h                                            ; $62a6: $94
	pop hl                                           ; $62a7: $e1
	ld [hl-], a                                      ; $62a8: $32
	nop                                              ; $62a9: $00
	add hl, hl                                       ; $62aa: $29
	ret nz                                           ; $62ab: $c0

	jp z, $01c0                                      ; $62ac: $ca $c0 $01

	and b                                            ; $62af: $a0
	ld bc, $9c02                                     ; $62b0: $01 $02 $9c
	push hl                                          ; $62b3: $e5
	inc sp                                           ; $62b4: $33
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	add hl, bc                                       ; $62b7: $09
	ret nz                                           ; $62b8: $c0

	ldh [c], a                                       ; $62b9: $e2
	add e                                            ; $62ba: $83
	ret nz                                           ; $62bb: $c0

	dec de                                           ; $62bc: $1b
	rst SubAFromHL                                          ; $62bd: $d7
	ld [bc], a                                       ; $62be: $02
	ret nc                                           ; $62bf: $d0

	pop de                                           ; $62c0: $d1
	jr c, @-$3e                                      ; $62c1: $38 $c0

	ld bc, $08a0                                     ; $62c3: $01 $a0 $08
	nop                                              ; $62c6: $00
	ld bc, $01c0                                     ; $62c7: $01 $c0 $01
	and b                                            ; $62ca: $a0
	ld bc, $3c02                                     ; $62cb: $01 $02 $3c
	ret nz                                           ; $62ce: $c0

	ld bc, $08a0                                     ; $62cf: $01 $a0 $08
	ld [bc], a                                       ; $62d2: $02
	ld b, c                                          ; $62d3: $41
	ldh [rP1], a                                     ; $62d4: $e0 $00
	rst JumpTable                                          ; $62d6: $c7
	ret nz                                           ; $62d7: $c0

	ld bc, $08a0                                     ; $62d8: $01 $a0 $08
	ld [bc], a                                       ; $62db: $02
	and l                                            ; $62dc: $a5
	ret nz                                           ; $62dd: $c0

	ld bc, $01a0                                     ; $62de: $01 $a0 $01
	ld [bc], a                                       ; $62e1: $02
	xor c                                            ; $62e2: $a9
	ret nz                                           ; $62e3: $c0

	ld bc, $08a0                                     ; $62e4: $01 $a0 $08
	ld [bc], a                                       ; $62e7: $02
	or [hl]                                          ; $62e8: $b6
	ret nz                                           ; $62e9: $c0

	ld bc, $01a0                                     ; $62ea: $01 $a0 $01
	ld [bc], a                                       ; $62ed: $02
	push bc                                          ; $62ee: $c5
	ldh [rTIMA], a                                   ; $62ef: $e0 $05
	sbc c                                            ; $62f1: $99
	ret nz                                           ; $62f2: $c0

	ld bc, $08a0                                     ; $62f3: $01 $a0 $08
	nop                                              ; $62f6: $00
	ld a, $c1                                        ; $62f7: $3e $c1
	ld e, e                                          ; $62f9: $5b
	ld [bc], a                                       ; $62fa: $02
	jp nc, $38d3                                     ; $62fb: $d2 $d3 $38

	ret nz                                           ; $62fe: $c0

	ld bc, $08a0                                     ; $62ff: $01 $a0 $08
	nop                                              ; $6302: $00
	ld bc, $01c0                                     ; $6303: $01 $c0 $01
	and b                                            ; $6306: $a0
	ld bc, $3c02                                     ; $6307: $01 $02 $3c
	ret nz                                           ; $630a: $c0

	ld bc, $08a0                                     ; $630b: $01 $a0 $08
	ld [bc], a                                       ; $630e: $02
	sub $e0                                          ; $630f: $d6 $e0
	nop                                              ; $6311: $00
	adc e                                            ; $6312: $8b
	ret nz                                           ; $6313: $c0

	ld bc, $08a0                                     ; $6314: $01 $a0 $08
	ld [bc], a                                       ; $6317: $02
	and l                                            ; $6318: $a5
	ret nz                                           ; $6319: $c0

	ld bc, $01a0                                     ; $631a: $01 $a0 $01
	ld [bc], a                                       ; $631d: $02
	xor c                                            ; $631e: $a9
	ret nz                                           ; $631f: $c0

	ld bc, $08a0                                     ; $6320: $01 $a0 $08
	ld [bc], a                                       ; $6323: $02
	ldh [c], a                                       ; $6324: $e2
	ret nz                                           ; $6325: $c0

	ld bc, $01a0                                     ; $6326: $01 $a0 $01
	ld [bc], a                                       ; $6329: $02
	push bc                                          ; $632a: $c5
	ldh [rTIMA], a                                   ; $632b: $e0 $05
	ld e, l                                          ; $632d: $5d
	ret nz                                           ; $632e: $c0

	ld bc, $08a0                                     ; $632f: $01 $a0 $08
	nop                                              ; $6332: $00
	ld [hl], l                                       ; $6333: $75
	pop bc                                           ; $6334: $c1
	ld e, e                                          ; $6335: $5b
	ld bc, $3ed4                                     ; $6336: $01 $d4 $3e
	ret nz                                           ; $6339: $c0

	ld bc, $01a0                                     ; $633a: $01 $a0 $01
	nop                                              ; $633d: $00
	add e                                            ; $633e: $83
	ret nz                                           ; $633f: $c0

	ld bc, $08a0                                     ; $6340: $01 $a0 $08
	nop                                              ; $6343: $00
	adc c                                            ; $6344: $89
	ret nz                                           ; $6345: $c0

	ld bc, $01a0                                     ; $6346: $01 $a0 $01
	ld [bc], a                                       ; $6349: $02
	ld [hl], b                                       ; $634a: $70
	ret nz                                           ; $634b: $c0

	ld bc, $08a0                                     ; $634c: $01 $a0 $08
	ld [bc], a                                       ; $634f: $02
	ldh a, [c]                                       ; $6350: $f2
	ldh [rP1], a                                     ; $6351: $e0 $00
	ld c, d                                          ; $6353: $4a
	ret nz                                           ; $6354: $c0

	ld bc, $08a0                                     ; $6355: $01 $a0 $08
	ld [bc], a                                       ; $6358: $02
	and l                                            ; $6359: $a5
	ret nz                                           ; $635a: $c0

	ld bc, $01a0                                     ; $635b: $01 $a0 $01
	ld [bc], a                                       ; $635e: $02
	xor c                                            ; $635f: $a9
	ret nz                                           ; $6360: $c0

	ld bc, $08a0                                     ; $6361: $01 $a0 $08
	ld [bc], a                                       ; $6364: $02
	rst $38                                          ; $6365: $ff
	ret nz                                           ; $6366: $c0

	ld bc, $01a0                                     ; $6367: $01 $a0 $01
	ld [bc], a                                       ; $636a: $02
	push bc                                          ; $636b: $c5
	ldh [rTIMA], a                                   ; $636c: $e0 $05
	inc e                                            ; $636e: $1c
	ret nz                                           ; $636f: $c0

	ld bc, $08a0                                     ; $6370: $01 $a0 $08
	nop                                              ; $6373: $00
	xor a                                            ; $6374: $af
	pop bc                                           ; $6375: $c1
	ld e, e                                          ; $6376: $5b
	ld bc, $1ed5                                     ; $6377: $01 $d5 $1e
	ret nz                                           ; $637a: $c0

	ld bc, $08a0                                     ; $637b: $01 $a0 $08
	nop                                              ; $637e: $00
	jp $01c0                                         ; $637f: $c3 $c0 $01


	and b                                            ; $6382: $a0
	ld bc, $3c02                                     ; $6383: $01 $02 $3c
	ret nz                                           ; $6386: $c0

	ld bc, $08a0                                     ; $6387: $01 $a0 $08
	ld [bc], a                                       ; $638a: $02
	sub h                                            ; $638b: $94
	pop hl                                           ; $638c: $e1
	ld [hl-], a                                      ; $638d: $32
	nop                                              ; $638e: $00
	add c                                            ; $638f: $81
	ret nz                                           ; $6390: $c0

	jp z, $01c0                                      ; $6391: $ca $c0 $01

	and b                                            ; $6394: $a0
	ld bc, $9c02                                     ; $6395: $01 $02 $9c
	push hl                                          ; $6398: $e5
	inc sp                                           ; $6399: $33
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	ld [$32e1], sp                                   ; $639c: $08 $e1 $32
	nop                                              ; $639f: $00
	add c                                            ; $63a0: $81
	pop hl                                           ; $63a1: $e1
	ld [bc], a                                       ; $63a2: $02
	ld bc, $09e8                                     ; $63a3: $01 $e8 $09
	dec h                                            ; $63a6: $25
	ret nz                                           ; $63a7: $c0

	ld hl, $d7d2                                     ; $63a8: $21 $d2 $d7
	pop hl                                           ; $63ab: $e1
	ld [bc], a                                       ; $63ac: $02
	ld bc, $82e0                                     ; $63ad: $01 $e0 $82
	ret nz                                           ; $63b0: $c0

	add b                                            ; $63b1: $80
	ld bc, $07d3                                     ; $63b2: $01 $d3 $07
	ret nz                                           ; $63b5: $c0

	ld [hl+], a                                      ; $63b6: $22
	pop de                                           ; $63b7: $d1
	rst SubAFromHL                                          ; $63b8: $d7
	db $e4                                           ; $63b9: $e4
	ld [bc], a                                       ; $63ba: $02
	daa                                              ; $63bb: $27
	ld bc, $03d2                                     ; $63bc: $01 $d2 $03
	db $e4                                           ; $63bf: $e4
	ld bc, $0140                                     ; $63c0: $01 $40 $01
	pop de                                           ; $63c3: $d1
	rlca                                             ; $63c4: $07
	ret nz                                           ; $63c5: $c0

	ld [hl+], a                                      ; $63c6: $22
	jp nc, $e4d7                                     ; $63c7: $d2 $d7 $e4

	nop                                              ; $63ca: $00
	ld [bc], a                                       ; $63cb: $02
	add hl, bc                                       ; $63cc: $09
	pop bc                                           ; $63cd: $c1
	ld sp, $c083                                     ; $63ce: $31 $83 $c0
	dec de                                           ; $63d1: $1b
	rst SubAFromHL                                          ; $63d2: $d7
	ld [bc], a                                       ; $63d3: $02
	ret nc                                           ; $63d4: $d0

	pop de                                           ; $63d5: $d1
	ld b, l                                          ; $63d6: $45
	ret nz                                           ; $63d7: $c0

	ld bc, $08a0                                     ; $63d8: $01 $a0 $08
	nop                                              ; $63db: $00
	ld bc, $01c0                                     ; $63dc: $01 $c0 $01
	and b                                            ; $63df: $a0
	ld bc, $0d03                                     ; $63e0: $01 $03 $0d
	ret nz                                           ; $63e3: $c0

	ld bc, $08a0                                     ; $63e4: $01 $a0 $08
	inc bc                                           ; $63e7: $03
	dec d                                            ; $63e8: $15
	pop hl                                           ; $63e9: $e1
	ld [bc], a                                       ; $63ea: $02
	rlca                                             ; $63eb: $07
	cp a                                             ; $63ec: $bf
	ret nz                                           ; $63ed: $c0

	ld bc, $01a0                                     ; $63ee: $01 $a0 $01
	inc bc                                           ; $63f1: $03
	ld [hl+], a                                      ; $63f2: $22
	ld h, b                                          ; $63f3: $60
	ei                                               ; $63f4: $fb
	pop bc                                           ; $63f5: $c1
	ld c, l                                          ; $63f6: $4d
	ldh [$64], a                                     ; $63f7: $e0 $64
	inc c                                            ; $63f9: $0c
	ret nz                                           ; $63fa: $c0

	ld bc, $08a0                                     ; $63fb: $01 $a0 $08
	inc bc                                           ; $63fe: $03
	ld h, $c0                                        ; $63ff: $26 $c0
	ld bc, $01a0                                     ; $6401: $01 $a0 $01
	inc bc                                           ; $6404: $03
	jr nc, jr_084_6413                               ; $6405: $30 $0c

	ret nz                                           ; $6407: $c0

	ld bc, $08a0                                     ; $6408: $01 $a0 $08
	inc bc                                           ; $640b: $03
	inc sp                                           ; $640c: $33
	ret nz                                           ; $640d: $c0

	ld bc, $01a0                                     ; $640e: $01 $a0 $01
	inc bc                                           ; $6411: $03
	dec sp                                           ; $6412: $3b

jr_084_6413:
	ldh [rDIV], a                                    ; $6413: $e0 $04
	ld [hl], l                                       ; $6415: $75
	ret nz                                           ; $6416: $c0

	ld bc, $08a0                                     ; $6417: $01 $a0 $08
	nop                                              ; $641a: $00
	ld a, $02                                        ; $641b: $3e $02
	jp nc, Jump_084_5bd3                             ; $641d: $d2 $d3 $5b

	ret nz                                           ; $6420: $c0

	ld bc, $08a0                                     ; $6421: $01 $a0 $08
	nop                                              ; $6424: $00
	ld bc, $01c0                                     ; $6425: $01 $c0 $01
	and b                                            ; $6428: $a0
	ld bc, $4e03                                     ; $6429: $01 $03 $4e
	ret nz                                           ; $642c: $c0

	ld bc, $08a0                                     ; $642d: $01 $a0 $08
	inc bc                                           ; $6430: $03
	ld d, e                                          ; $6431: $53
	pop hl                                           ; $6432: $e1
	ld [bc], a                                       ; $6433: $02
	rlca                                             ; $6434: $07
	cp a                                             ; $6435: $bf
	ret nz                                           ; $6436: $c0

	ld bc, $01a0                                     ; $6437: $01 $a0 $01
	inc bc                                           ; $643a: $03
	ld [hl+], a                                      ; $643b: $22
	ld h, b                                          ; $643c: $60
	ei                                               ; $643d: $fb
	pop bc                                           ; $643e: $c1
	ld c, l                                          ; $643f: $4d
	ldh [$64], a                                     ; $6440: $e0 $64
	inc c                                            ; $6442: $0c
	ret nz                                           ; $6443: $c0

	ld bc, $08a0                                     ; $6444: $01 $a0 $08
	inc bc                                           ; $6447: $03
	ld h, c                                          ; $6448: $61
	ret nz                                           ; $6449: $c0

	ld bc, $01a0                                     ; $644a: $01 $a0 $01
	inc bc                                           ; $644d: $03
	jr nc, jr_084_6472                               ; $644e: $30 $22

	ret nz                                           ; $6450: $c0

	ld bc, $08a0                                     ; $6451: $01 $a0 $08
	inc bc                                           ; $6454: $03
	ld l, c                                          ; $6455: $69
	ret nz                                           ; $6456: $c0

	ld bc, $01a0                                     ; $6457: $01 $a0 $01
	inc bc                                           ; $645a: $03
	ld a, c                                          ; $645b: $79
	pop hl                                           ; $645c: $e1
	ld [bc], a                                       ; $645d: $02
	rlca                                             ; $645e: $07
	cp a                                             ; $645f: $bf
	ret nz                                           ; $6460: $c0

	ld bc, $01a0                                     ; $6461: $01 $a0 $01
	inc bc                                           ; $6464: $03
	add b                                            ; $6465: $80
	ret nz                                           ; $6466: $c0

	ld bc, $08a0                                     ; $6467: $01 $a0 $08
	inc bc                                           ; $646a: $03
	add a                                            ; $646b: $87
	ret nz                                           ; $646c: $c0

	ld bc, $01a0                                     ; $646d: $01 $a0 $01
	inc bc                                           ; $6470: $03
	adc a                                            ; $6471: $8f

jr_084_6472:
	ldh [rDIV], a                                    ; $6472: $e0 $04
	ld d, $c0                                        ; $6474: $16 $c0
	ld bc, $08a0                                     ; $6476: $01 $a0 $08
	nop                                              ; $6479: $00
	ld [hl], l                                       ; $647a: $75
	ld bc, $61d4                                     ; $647b: $01 $d4 $61
	ret nz                                           ; $647e: $c0

	ld bc, $01a0                                     ; $647f: $01 $a0 $01
	nop                                              ; $6482: $00
	add e                                            ; $6483: $83
	ret nz                                           ; $6484: $c0

	ld bc, $08a0                                     ; $6485: $01 $a0 $08
	nop                                              ; $6488: $00
	adc c                                            ; $6489: $89
	ret nz                                           ; $648a: $c0

	ld bc, $01a0                                     ; $648b: $01 $a0 $01
	inc bc                                           ; $648e: $03
	dec c                                            ; $648f: $0d
	ret nz                                           ; $6490: $c0

	ld bc, $08a0                                     ; $6491: $01 $a0 $08
	inc bc                                           ; $6494: $03
	ld d, e                                          ; $6495: $53
	pop hl                                           ; $6496: $e1
	ld [bc], a                                       ; $6497: $02
	rlca                                             ; $6498: $07
	cp a                                             ; $6499: $bf
	ret nz                                           ; $649a: $c0

	ld bc, $01a0                                     ; $649b: $01 $a0 $01
	inc bc                                           ; $649e: $03
	ld [hl+], a                                      ; $649f: $22
	ld h, b                                          ; $64a0: $60
	ei                                               ; $64a1: $fb
	pop bc                                           ; $64a2: $c1
	ld c, l                                          ; $64a3: $4d
	ldh [$64], a                                     ; $64a4: $e0 $64
	inc c                                            ; $64a6: $0c
	ret nz                                           ; $64a7: $c0

	ld bc, $08a0                                     ; $64a8: $01 $a0 $08
	inc bc                                           ; $64ab: $03
	ld h, c                                          ; $64ac: $61
	ret nz                                           ; $64ad: $c0

	ld bc, $01a0                                     ; $64ae: $01 $a0 $01
	inc bc                                           ; $64b1: $03
	jr nc, jr_084_64d6                               ; $64b2: $30 $22

	ret nz                                           ; $64b4: $c0

	ld bc, $08a0                                     ; $64b5: $01 $a0 $08
	inc bc                                           ; $64b8: $03
	ld l, c                                          ; $64b9: $69
	ret nz                                           ; $64ba: $c0

	ld bc, $01a0                                     ; $64bb: $01 $a0 $01
	inc bc                                           ; $64be: $03
	ld a, c                                          ; $64bf: $79
	pop hl                                           ; $64c0: $e1
	ld [bc], a                                       ; $64c1: $02
	rlca                                             ; $64c2: $07
	cp a                                             ; $64c3: $bf
	ret nz                                           ; $64c4: $c0

	ld bc, $01a0                                     ; $64c5: $01 $a0 $01
	inc bc                                           ; $64c8: $03
	add b                                            ; $64c9: $80
	ret nz                                           ; $64ca: $c0

	ld bc, $08a0                                     ; $64cb: $01 $a0 $08
	inc bc                                           ; $64ce: $03
	add a                                            ; $64cf: $87
	ret nz                                           ; $64d0: $c0

	ld bc, $01a0                                     ; $64d1: $01 $a0 $01
	inc bc                                           ; $64d4: $03
	adc a                                            ; $64d5: $8f

jr_084_64d6:
	ldh [$03], a                                     ; $64d6: $e0 $03
	or d                                             ; $64d8: $b2
	ret nz                                           ; $64d9: $c0

	ld bc, $08a0                                     ; $64da: $01 $a0 $08
	nop                                              ; $64dd: $00
	xor a                                            ; $64de: $af
	ld bc, $18d5                                     ; $64df: $01 $d5 $18
	ret nz                                           ; $64e2: $c0

	ld bc, $08a0                                     ; $64e3: $01 $a0 $08
	nop                                              ; $64e6: $00
	jp $01c0                                         ; $64e7: $c3 $c0 $01


	and b                                            ; $64ea: $a0
	ld bc, $0d03                                     ; $64eb: $01 $03 $0d
	ret nz                                           ; $64ee: $c0

	ld bc, $08a0                                     ; $64ef: $01 $a0 $08
	inc bc                                           ; $64f2: $03
	sbc b                                            ; $64f3: $98
	ret nz                                           ; $64f4: $c0

	ld bc, $01a0                                     ; $64f5: $01 $a0 $01
	nop                                              ; $64f8: $00
	jp c, Jump_084_5bc1                              ; $64f9: $da $c1 $5b

	push hl                                          ; $64fc: $e5
	inc sp                                           ; $64fd: $33
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	add hl, bc                                       ; $6500: $09
	ret nz                                           ; $6501: $c0

	push de                                          ; $6502: $d5
	add e                                            ; $6503: $83
	ret nz                                           ; $6504: $c0

	dec de                                           ; $6505: $1b
	rst SubAFromHL                                          ; $6506: $d7
	ld [bc], a                                       ; $6507: $02
	ret nc                                           ; $6508: $d0

	pop de                                           ; $6509: $d1
	ld b, l                                          ; $650a: $45
	ret nz                                           ; $650b: $c0

	ld bc, $08a0                                     ; $650c: $01 $a0 $08
	nop                                              ; $650f: $00
	ld bc, $01c0                                     ; $6510: $01 $c0 $01
	and b                                            ; $6513: $a0
	ld bc, $9b03                                     ; $6514: $01 $03 $9b
	ret nz                                           ; $6517: $c0

	ld bc, $08a0                                     ; $6518: $01 $a0 $08
	inc bc                                           ; $651b: $03
	and c                                            ; $651c: $a1
	ret nz                                           ; $651d: $c0

	ld bc, $01a0                                     ; $651e: $01 $a0 $01
	inc bc                                           ; $6521: $03
	and a                                            ; $6522: $a7
	ret nz                                           ; $6523: $c0

	ld bc, $08a0                                     ; $6524: $01 $a0 $08
	inc bc                                           ; $6527: $03
	xor l                                            ; $6528: $ad
	ret nz                                           ; $6529: $c0

	ld bc, $01a0                                     ; $652a: $01 $a0 $01
	inc bc                                           ; $652d: $03
	or a                                             ; $652e: $b7
	ret nz                                           ; $652f: $c0

	ld bc, $08a0                                     ; $6530: $01 $a0 $08
	inc bc                                           ; $6533: $03
	pop bc                                           ; $6534: $c1
	ret nz                                           ; $6535: $c0

	ld bc, $01a0                                     ; $6536: $01 $a0 $01
	inc bc                                           ; $6539: $03
	ret c                                            ; $653a: $d8

	ret nz                                           ; $653b: $c0

	ld bc, $08a0                                     ; $653c: $01 $a0 $08
	inc bc                                           ; $653f: $03
	and $c0                                          ; $6540: $e6 $c0
	ld bc, $01a0                                     ; $6542: $01 $a0 $01
	inc bc                                           ; $6545: $03
	db $ed                                           ; $6546: $ed
	ret nz                                           ; $6547: $c0

	ld bc, $08a0                                     ; $6548: $01 $a0 $08
	inc bc                                           ; $654b: $03
	pop af                                           ; $654c: $f1
	ldh [rP1], a                                     ; $654d: $e0 $00
	adc d                                            ; $654f: $8a
	ld [bc], a                                       ; $6550: $02
	jp nc, $39d3                                     ; $6551: $d2 $d3 $39

	ret nz                                           ; $6554: $c0

	ld bc, $08a0                                     ; $6555: $01 $a0 $08
	nop                                              ; $6558: $00
	ld bc, $01c0                                     ; $6559: $01 $c0 $01
	and b                                            ; $655c: $a0
	ld bc, $9b03                                     ; $655d: $01 $03 $9b
	ret nz                                           ; $6560: $c0

	ld bc, $08a0                                     ; $6561: $01 $a0 $08
	inc bc                                           ; $6564: $03
	rst $38                                          ; $6565: $ff
	ret nz                                           ; $6566: $c0

	ld bc, $01a0                                     ; $6567: $01 $a0 $01
	inc bc                                           ; $656a: $03
	and a                                            ; $656b: $a7
	ret nz                                           ; $656c: $c0

	ld bc, $08a0                                     ; $656d: $01 $a0 $08
	inc bc                                           ; $6570: $03
	xor l                                            ; $6571: $ad
	ret nz                                           ; $6572: $c0

	ld bc, $01a0                                     ; $6573: $01 $a0 $01
	inc bc                                           ; $6576: $03
	or a                                             ; $6577: $b7
	ret nz                                           ; $6578: $c0

	ld bc, $08a0                                     ; $6579: $01 $a0 $08
	inc bc                                           ; $657c: $03
	pop bc                                           ; $657d: $c1
	ret nz                                           ; $657e: $c0

	ld bc, $01a0                                     ; $657f: $01 $a0 $01
	inc bc                                           ; $6582: $03
	ret c                                            ; $6583: $d8

	ret nz                                           ; $6584: $c0

	ld bc, $08a0                                     ; $6585: $01 $a0 $08
	inc b                                            ; $6588: $04
	ld b, $e0                                        ; $6589: $06 $e0
	nop                                              ; $658b: $00
	ld c, l                                          ; $658c: $4d
	ld bc, $27d4                                     ; $658d: $01 $d4 $27
	ret nz                                           ; $6590: $c0

	ld bc, $01a0                                     ; $6591: $01 $a0 $01
	inc bc                                           ; $6594: $03
	sbc e                                            ; $6595: $9b
	ret nz                                           ; $6596: $c0

	ld bc, $08a0                                     ; $6597: $01 $a0 $08
	inc bc                                           ; $659a: $03
	rst $38                                          ; $659b: $ff
	ret nz                                           ; $659c: $c0

	ld bc, $01a0                                     ; $659d: $01 $a0 $01
	inc bc                                           ; $65a0: $03
	and a                                            ; $65a1: $a7
	ret nz                                           ; $65a2: $c0

	ld bc, $08a0                                     ; $65a3: $01 $a0 $08
	inc bc                                           ; $65a6: $03
	xor l                                            ; $65a7: $ad
	ret nz                                           ; $65a8: $c0

	ld bc, $01a0                                     ; $65a9: $01 $a0 $01
	inc bc                                           ; $65ac: $03
	or a                                             ; $65ad: $b7
	ret nz                                           ; $65ae: $c0

	ld bc, $08a0                                     ; $65af: $01 $a0 $08
	inc b                                            ; $65b2: $04
	ld c, $e0                                        ; $65b3: $0e $e0
	nop                                              ; $65b5: $00
	inc hl                                           ; $65b6: $23
	ld bc, $1ad5                                     ; $65b7: $01 $d5 $1a
	ret nz                                           ; $65ba: $c0

	ld bc, $08a0                                     ; $65bb: $01 $a0 $08
	nop                                              ; $65be: $00

jr_084_65bf:
	jp $01c0                                         ; $65bf: $c3 $c0 $01


	and b                                            ; $65c2: $a0
	ld bc, $c600                                     ; $65c3: $01 $00 $c6
	ret nz                                           ; $65c6: $c0

	ld bc, $08a0                                     ; $65c7: $01 $a0 $08
	nop                                              ; $65ca: $00
	jp z, Jump_084_5bc1                              ; $65cb: $ca $c1 $5b

	ret nz                                           ; $65ce: $c0

	ld bc, $01a0                                     ; $65cf: $01 $a0 $01
	inc b                                            ; $65d2: $04
	add hl, de                                       ; $65d3: $19
	push hl                                          ; $65d4: $e5
	inc sp                                           ; $65d5: $33
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	ld [$5bc1], sp                                   ; $65d8: $08 $c1 $5b
	ret nz                                           ; $65db: $c0

	ld bc, $01a0                                     ; $65dc: $01 $a0 $01
	inc b                                            ; $65df: $04
	ld hl, $c009                                     ; $65e0: $21 $09 $c0
	call nz, $c083                                   ; $65e3: $c4 $83 $c0
	dec de                                           ; $65e6: $1b
	rst SubAFromHL                                          ; $65e7: $d7
	ld [bc], a                                       ; $65e8: $02
	ret nc                                           ; $65e9: $d0

	pop de                                           ; $65ea: $d1
	dec sp                                           ; $65eb: $3b
	ret nz                                           ; $65ec: $c0

	ld bc, $08a0                                     ; $65ed: $01 $a0 $08
	nop                                              ; $65f0: $00
	ld bc, $01c0                                     ; $65f1: $01 $c0 $01
	and b                                            ; $65f4: $a0
	ld bc, $0800                                     ; $65f5: $01 $00 $08
	ret nz                                           ; $65f8: $c0

	ld bc, $08a0                                     ; $65f9: $01 $a0 $08
	inc b                                            ; $65fc: $04
	jr z, jr_084_65bf                                ; $65fd: $28 $c0

	ld bc, $01a0                                     ; $65ff: $01 $a0 $01
	inc b                                            ; $6602: $04
	ld sp, $01c0                                     ; $6603: $31 $c0 $01
	and b                                            ; $6606: $a0
	ld [$3904], sp                                   ; $6607: $08 $04 $39
	ret nz                                           ; $660a: $c0

	ld bc, $01a0                                     ; $660b: $01 $a0 $01
	inc b                                            ; $660e: $04
	ld b, c                                          ; $660f: $41
	ret nz                                           ; $6610: $c0

	ld bc, $08a0                                     ; $6611: $01 $a0 $08
	inc b                                            ; $6614: $04
	ld b, [hl]                                       ; $6615: $46
	ret nz                                           ; $6616: $c0

	ld bc, $01a0                                     ; $6617: $01 $a0 $01
	inc b                                            ; $661a: $04
	ld d, c                                          ; $661b: $51
	ldh [rSC], a                                     ; $661c: $e0 $02
	ld l, h                                          ; $661e: $6c
	ret nz                                           ; $661f: $c0

	ld bc, $08a0                                     ; $6620: $01 $a0 $08
	ld bc, wWramBank                                     ; $6623: $01 $04 $c1
	ld e, e                                          ; $6626: $5b
	ld [bc], a                                       ; $6627: $02
	jp nc, $3bd3                                     ; $6628: $d2 $d3 $3b

	ret nz                                           ; $662b: $c0

	ld bc, $08a0                                     ; $662c: $01 $a0 $08
	nop                                              ; $662f: $00
	ld bc, $01c0                                     ; $6630: $01 $c0 $01
	and b                                            ; $6633: $a0
	ld bc, $0800                                     ; $6634: $01 $00 $08
	ret nz                                           ; $6637: $c0

	ld bc, $08a0                                     ; $6638: $01 $a0 $08
	inc b                                            ; $663b: $04
	jr z, @-$3e                                      ; $663c: $28 $c0

	ld bc, $01a0                                     ; $663e: $01 $a0 $01
	inc b                                            ; $6641: $04
	ld sp, $01c0                                     ; $6642: $31 $c0 $01
	and b                                            ; $6645: $a0
	ld [$5c04], sp                                   ; $6646: $08 $04 $5c
	ret nz                                           ; $6649: $c0

	ld bc, $01a0                                     ; $664a: $01 $a0 $01
	inc b                                            ; $664d: $04
	ld b, c                                          ; $664e: $41
	ret nz                                           ; $664f: $c0

	ld bc, $08a0                                     ; $6650: $01 $a0 $08
	inc b                                            ; $6653: $04
	ld h, a                                          ; $6654: $67
	ret nz                                           ; $6655: $c0

	ld bc, $01a0                                     ; $6656: $01 $a0 $01
	inc b                                            ; $6659: $04
	halt                                             ; $665a: $76
	ldh [rSC], a                                     ; $665b: $e0 $02
	dec l                                            ; $665d: $2d
	ret nz                                           ; $665e: $c0

	ld bc, $08a0                                     ; $665f: $01 $a0 $08
	nop                                              ; $6662: $00
	ld [hl], l                                       ; $6663: $75
	pop bc                                           ; $6664: $c1
	ld e, e                                          ; $6665: $5b
	ld bc, $35d4                                     ; $6666: $01 $d4 $35
	ret nz                                           ; $6669: $c0

	ld bc, $01a0                                     ; $666a: $01 $a0 $01
	nop                                              ; $666d: $00
	add e                                            ; $666e: $83
	ret nz                                           ; $666f: $c0

	ld bc, $08a0                                     ; $6670: $01 $a0 $08
	inc b                                            ; $6673: $04
	jr z, @-$3e                                      ; $6674: $28 $c0

	ld bc, $01a0                                     ; $6676: $01 $a0 $01
	inc b                                            ; $6679: $04
	ld sp, $01c0                                     ; $667a: $31 $c0 $01
	and b                                            ; $667d: $a0
	ld [$7c04], sp                                   ; $667e: $08 $04 $7c
	ret nz                                           ; $6681: $c0

	ld bc, $01a0                                     ; $6682: $01 $a0 $01
	inc b                                            ; $6685: $04
	ld b, c                                          ; $6686: $41
	ret nz                                           ; $6687: $c0

	ld bc, $08a0                                     ; $6688: $01 $a0 $08
	inc b                                            ; $668b: $04
	add h                                            ; $668c: $84
	ret nz                                           ; $668d: $c0

	ld bc, $01a0                                     ; $668e: $01 $a0 $01
	inc b                                            ; $6691: $04
	adc h                                            ; $6692: $8c
	ldh [rSB], a                                     ; $6693: $e0 $01
	push af                                          ; $6695: $f5
	ret nz                                           ; $6696: $c0

	ld bc, $08a0                                     ; $6697: $01 $a0 $08
	nop                                              ; $669a: $00
	xor a                                            ; $669b: $af
	pop bc                                           ; $669c: $c1
	ld e, e                                          ; $669d: $5b
	ld bc, $03d5                                     ; $669e: $01 $d5 $03
	ldh [rSB], a                                     ; $66a1: $e0 $01
	db $f4                                           ; $66a3: $f4
	push hl                                          ; $66a4: $e5
	inc sp                                           ; $66a5: $33
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	add hl, bc                                       ; $66a8: $09
	ld hl, $c082                                     ; $66a9: $21 $82 $c0
	add b                                            ; $66ac: $80
	ld bc, $07d3                                     ; $66ad: $01 $d3 $07
	ret nz                                           ; $66b0: $c0

	ld hl, $d7d1                                     ; $66b1: $21 $d1 $d7
	db $e4                                           ; $66b4: $e4
	ld bc, $012a                                     ; $66b5: $01 $2a $01
	jp nc, $c007                                     ; $66b8: $d2 $07 $c0

	ld hl, $d7d1                                     ; $66bb: $21 $d1 $d7
	db $e4                                           ; $66be: $e4
	nop                                              ; $66bf: $00
	and d                                            ; $66c0: $a2
	ld bc, $07d1                                     ; $66c1: $01 $d1 $07
	ret nz                                           ; $66c4: $c0

	ld hl, $d7d2                                     ; $66c5: $21 $d2 $d7
	db $e4                                           ; $66c8: $e4
	nop                                              ; $66c9: $00
	ld [bc], a                                       ; $66ca: $02
	add hl, bc                                       ; $66cb: $09
	sub h                                            ; $66cc: $94
	add e                                            ; $66cd: $83
	ret nz                                           ; $66ce: $c0

	dec de                                           ; $66cf: $1b
	rst SubAFromHL                                          ; $66d0: $d7
	ld [bc], a                                       ; $66d1: $02
	ret nc                                           ; $66d2: $d0

	pop de                                           ; $66d3: $d1
	ld a, [hl+]                                      ; $66d4: $2a
	pop hl                                           ; $66d5: $e1
	ld [bc], a                                       ; $66d6: $02
	ld bc, $e0e0                                     ; $66d7: $01 $e0 $e0
	ld bc, $c0a2                                     ; $66da: $01 $a2 $c0
	ld bc, $08a0                                     ; $66dd: $01 $a0 $08
	inc b                                            ; $66e0: $04
	adc a                                            ; $66e1: $8f
	ret nz                                           ; $66e2: $c0

	ld bc, $01a0                                     ; $66e3: $01 $a0 $01
	inc b                                            ; $66e6: $04
	sbc d                                            ; $66e7: $9a
	ret nz                                           ; $66e8: $c0

	ld bc, $08a0                                     ; $66e9: $01 $a0 $08
	inc b                                            ; $66ec: $04
	and [hl]                                         ; $66ed: $a6
	ret nz                                           ; $66ee: $c0

	ld bc, $01a0                                     ; $66ef: $01 $a0 $01
	inc b                                            ; $66f2: $04
	xor a                                            ; $66f3: $af
	ldh [rSB], a                                     ; $66f4: $e0 $01
	sub h                                            ; $66f6: $94
	ret nz                                           ; $66f7: $c0

	ld bc, $08a0                                     ; $66f8: $01 $a0 $08
	ld bc, wWramBank                                     ; $66fb: $01 $04 $c1
	ld e, e                                          ; $66fe: $5b
	ld [bc], a                                       ; $66ff: $02
	jp nc, $2ad3                                     ; $6700: $d2 $d3 $2a

	pop hl                                           ; $6703: $e1
	ld [bc], a                                       ; $6704: $02
	ld bc, $e0e0                                     ; $6705: $01 $e0 $e0
	ld bc, $c074                                     ; $6708: $01 $74 $c0
	ld bc, $08a0                                     ; $670b: $01 $a0 $08
	inc b                                            ; $670e: $04
	cp d                                             ; $670f: $ba
	ret nz                                           ; $6710: $c0

	ld bc, $01a0                                     ; $6711: $01 $a0 $01
	inc b                                            ; $6714: $04
	ret z                                            ; $6715: $c8

	ret nz                                           ; $6716: $c0

	ld bc, $08a0                                     ; $6717: $01 $a0 $08
	inc b                                            ; $671a: $04
	jp nc, $01c0                                     ; $671b: $d2 $c0 $01

	and b                                            ; $671e: $a0
	ld bc, $e104                                     ; $671f: $01 $04 $e1
	ldh [rSB], a                                     ; $6722: $e0 $01
	ld h, [hl]                                       ; $6724: $66
	ret nz                                           ; $6725: $c0

	ld bc, $08a0                                     ; $6726: $01 $a0 $08
	nop                                              ; $6729: $00
	ld [hl], l                                       ; $672a: $75
	pop bc                                           ; $672b: $c1
	ld e, e                                          ; $672c: $5b
	ld bc, $27d4                                     ; $672d: $01 $d4 $27
	pop hl                                           ; $6730: $e1
	ld [bc], a                                       ; $6731: $02
	ld bc, $c0e0                                     ; $6732: $01 $e0 $c0
	ld bc, $08a0                                     ; $6735: $01 $a0 $08
	ld bc, $c062                                     ; $6738: $01 $62 $c0
	ld bc, $01a0                                     ; $673b: $01 $a0 $01
	inc b                                            ; $673e: $04
	db $ec                                           ; $673f: $ec
	ret nz                                           ; $6740: $c0

	ld bc, $08a0                                     ; $6741: $01 $a0 $08
	inc b                                            ; $6744: $04
	di                                               ; $6745: $f3
	ret nz                                           ; $6746: $c0

	ld bc, $01a0                                     ; $6747: $01 $a0 $01
	dec b                                            ; $674a: $05
	ld bc, $01e0                                     ; $674b: $01 $e0 $01
	inc a                                            ; $674e: $3c
	ret nz                                           ; $674f: $c0

	ld bc, $08a0                                     ; $6750: $01 $a0 $08
	ld bc, $c181                                     ; $6753: $01 $81 $c1
	ld e, e                                          ; $6756: $5b
	ld bc, $03d5                                     ; $6757: $01 $d5 $03
	ldh [rSB], a                                     ; $675a: $e0 $01
	ld c, $e5                                        ; $675c: $0e $e5
	inc sp                                           ; $675e: $33
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	add hl, bc                                       ; $6761: $09
	ld a, h                                          ; $6762: $7c
	add e                                            ; $6763: $83
	ret nz                                           ; $6764: $c0

	dec de                                           ; $6765: $1b
	rst SubAFromHL                                          ; $6766: $d7
	ld [bc], a                                       ; $6767: $02
	ret nc                                           ; $6768: $d0

	pop de                                           ; $6769: $d1
	ld e, $e1                                        ; $676a: $1e $e1
	ld [bc], a                                       ; $676c: $02
	ld bc, $e0e0                                     ; $676d: $01 $e0 $e0
	ld bc, $c00c                                     ; $6770: $01 $0c $c0
	ld bc, $08a0                                     ; $6773: $01 $a0 $08
	dec b                                            ; $6776: $05
	ld c, $c0                                        ; $6777: $0e $c0
	ld bc, $01a0                                     ; $6779: $01 $a0 $01
	dec b                                            ; $677c: $05
	add hl, de                                       ; $677d: $19
	ldh [rSB], a                                     ; $677e: $e0 $01
	ld a, [bc]                                       ; $6780: $0a
	ret nz                                           ; $6781: $c0

	ld bc, $08a0                                     ; $6782: $01 $a0 $08
	ld bc, wWramBank                                     ; $6785: $01 $04 $c1
	ld e, e                                          ; $6788: $5b
	ld [bc], a                                       ; $6789: $02
	jp nc, $1ed3                                     ; $678a: $d2 $d3 $1e

	pop hl                                           ; $678d: $e1
	ld [bc], a                                       ; $678e: $02
	ld bc, $e0e0                                     ; $678f: $01 $e0 $e0
	nop                                              ; $6792: $00
	ld [$01c0], a                                    ; $6793: $ea $c0 $01
	and b                                            ; $6796: $a0
	ld [$1e05], sp                                   ; $6797: $08 $05 $1e
	ret nz                                           ; $679a: $c0

	ld bc, $01a0                                     ; $679b: $01 $a0 $01
	dec b                                            ; $679e: $05
	add hl, hl                                       ; $679f: $29
	ldh [rP1], a                                     ; $67a0: $e0 $00
	add sp, -$40                                     ; $67a2: $e8 $c0
	ld bc, $08a0                                     ; $67a4: $01 $a0 $08
	nop                                              ; $67a7: $00
	ld [hl], l                                       ; $67a8: $75
	pop bc                                           ; $67a9: $c1
	ld e, e                                          ; $67aa: $5b
	ld bc, $27d4                                     ; $67ab: $01 $d4 $27
	pop hl                                           ; $67ae: $e1
	ld [bc], a                                       ; $67af: $02
	ld bc, $c0e0                                     ; $67b0: $01 $e0 $c0
	ld bc, $08a0                                     ; $67b3: $01 $a0 $08
	ld bc, $c062                                     ; $67b6: $01 $62 $c0
	ld bc, $01a0                                     ; $67b9: $01 $a0 $01
	inc b                                            ; $67bc: $04
	db $ec                                           ; $67bd: $ec
	ret nz                                           ; $67be: $c0

	ld bc, $08a0                                     ; $67bf: $01 $a0 $08
	dec b                                            ; $67c2: $05
	cpl                                              ; $67c3: $2f
	ret nz                                           ; $67c4: $c0

	ld bc, $01a0                                     ; $67c5: $01 $a0 $01
	dec b                                            ; $67c8: $05
	ld a, [hl-]                                      ; $67c9: $3a
	ldh [rP1], a                                     ; $67ca: $e0 $00
	cp [hl]                                          ; $67cc: $be
	ret nz                                           ; $67cd: $c0

	ld bc, $08a0                                     ; $67ce: $01 $a0 $08
	ld bc, $c181                                     ; $67d1: $01 $81 $c1
	ld e, e                                          ; $67d4: $5b
	ld bc, $03d5                                     ; $67d5: $01 $d5 $03
	ldh [rP1], a                                     ; $67d8: $e0 $00
	sub b                                            ; $67da: $90
	push hl                                          ; $67db: $e5
	inc sp                                           ; $67dc: $33
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	add hl, bc                                       ; $67df: $09
	adc b                                            ; $67e0: $88
	add e                                            ; $67e1: $83
	ret nz                                           ; $67e2: $c0

	dec de                                           ; $67e3: $1b
	rst SubAFromHL                                          ; $67e4: $d7
	ld [bc], a                                       ; $67e5: $02
	ret nc                                           ; $67e6: $d0

	pop de                                           ; $67e7: $d1
	ld e, $e1                                        ; $67e8: $1e $e1
	ld [bc], a                                       ; $67ea: $02
	ld bc, $e0e0                                     ; $67eb: $01 $e0 $e0
	nop                                              ; $67ee: $00
	adc [hl]                                         ; $67ef: $8e
	ret nz                                           ; $67f0: $c0

	ld bc, $08a0                                     ; $67f1: $01 $a0 $08
	dec b                                            ; $67f4: $05
	ld b, d                                          ; $67f5: $42
	ret nz                                           ; $67f6: $c0

	ld bc, $01a0                                     ; $67f7: $01 $a0 $01
	dec b                                            ; $67fa: $05
	ld c, d                                          ; $67fb: $4a
	ldh [rP1], a                                     ; $67fc: $e0 $00
	adc h                                            ; $67fe: $8c
	ret nz                                           ; $67ff: $c0

	ld bc, $08a0                                     ; $6800: $01 $a0 $08
	ld bc, wWramBank                                     ; $6803: $01 $04 $c1
	ld e, e                                          ; $6806: $5b
	ld [bc], a                                       ; $6807: $02
	jp nc, $2ad3                                     ; $6808: $d2 $d3 $2a

	pop hl                                           ; $680b: $e1
	ld [bc], a                                       ; $680c: $02
	ld bc, $e0e0                                     ; $680d: $01 $e0 $e0
	nop                                              ; $6810: $00
	ld l, h                                          ; $6811: $6c
	ret nz                                           ; $6812: $c0

	ld bc, $08a0                                     ; $6813: $01 $a0 $08
	dec b                                            ; $6816: $05
	ld d, h                                          ; $6817: $54
	ret nz                                           ; $6818: $c0

	ld bc, $01a0                                     ; $6819: $01 $a0 $01
	dec b                                            ; $681c: $05
	ld e, a                                          ; $681d: $5f
	ret nz                                           ; $681e: $c0

	ld bc, $08a0                                     ; $681f: $01 $a0 $08
	dec b                                            ; $6822: $05
	ld l, d                                          ; $6823: $6a
	ret nz                                           ; $6824: $c0

	ld bc, $01a0                                     ; $6825: $01 $a0 $01
	dec b                                            ; $6828: $05
	ld [hl], c                                       ; $6829: $71
	ldh [rP1], a                                     ; $682a: $e0 $00
	ld e, [hl]                                       ; $682c: $5e
	ret nz                                           ; $682d: $c0

	ld bc, $08a0                                     ; $682e: $01 $a0 $08
	nop                                              ; $6831: $00
	ld [hl], l                                       ; $6832: $75
	pop bc                                           ; $6833: $c1
	ld e, e                                          ; $6834: $5b
	ld bc, $27d4                                     ; $6835: $01 $d4 $27
	pop hl                                           ; $6838: $e1
	ld [bc], a                                       ; $6839: $02
	ld bc, $c0e0                                     ; $683a: $01 $e0 $c0
	ld bc, $08a0                                     ; $683d: $01 $a0 $08
	ld bc, $c062                                     ; $6840: $01 $62 $c0
	ld bc, $01a0                                     ; $6843: $01 $a0 $01
	inc b                                            ; $6846: $04
	db $ec                                           ; $6847: $ec
	ret nz                                           ; $6848: $c0

	ld bc, $08a0                                     ; $6849: $01 $a0 $08
	dec b                                            ; $684c: $05
	ld a, b                                          ; $684d: $78
	ret nz                                           ; $684e: $c0

	ld bc, $01a0                                     ; $684f: $01 $a0 $01
	dec b                                            ; $6852: $05
	add h                                            ; $6853: $84
	ldh [rP1], a                                     ; $6854: $e0 $00
	inc [hl]                                         ; $6856: $34
	ret nz                                           ; $6857: $c0

	ld bc, $08a0                                     ; $6858: $01 $a0 $08
	ld bc, $c181                                     ; $685b: $01 $81 $c1
	ld e, e                                          ; $685e: $5b
	ld bc, $03d5                                     ; $685f: $01 $d5 $03
	ldh [rP1], a                                     ; $6862: $e0 $00
	ld b, $e5                                        ; $6864: $06 $e5
	inc sp                                           ; $6866: $33
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	ld [de], a                                       ; $6869: $12
	or b                                             ; $686a: $b0
	ld a, a                                          ; $686b: $7f
	rlca                                             ; $686c: $07
	pop hl                                           ; $686d: $e1
	ld [bc], a                                       ; $686e: $02
	ld bc, $e0e0                                     ; $686f: $01 $e0 $e0
	nop                                              ; $6872: $00
	inc h                                            ; $6873: $24
	rst $38                                          ; $6874: $ff
	ld b, $c0                                        ; $6875: $06 $c0
	ld bc, $01a0                                     ; $6877: $01 $a0 $01
	dec b                                            ; $687a: $05
	adc h                                            ; $687b: $8c
	inc c                                            ; $687c: $0c
	ret nz                                           ; $687d: $c0

	ld bc, $08a0                                     ; $687e: $01 $a0 $08
	dec b                                            ; $6881: $05
	sub h                                            ; $6882: $94
	ret nz                                           ; $6883: $c0

	ld bc, $01a0                                     ; $6884: $01 $a0 $01
	dec b                                            ; $6887: $05
	sub a                                            ; $6888: $97
	inc c                                            ; $6889: $0c
	ret nz                                           ; $688a: $c0

	ld bc, $08a0                                     ; $688b: $01 $a0 $08
	dec b                                            ; $688e: $05
	sbc [hl]                                         ; $688f: $9e
	ret nz                                           ; $6890: $c0

	ld bc, $01a0                                     ; $6891: $01 $a0 $01
	nop                                              ; $6894: $00
	ld a, [hl-]                                      ; $6895: $3a
	ld a, [de]                                       ; $6896: $1a
	ret nz                                           ; $6897: $c0

	ld bc, $08a0                                     ; $6898: $01 $a0 $08
	nop                                              ; $689b: $00
	jp $01c0                                         ; $689c: $c3 $c0 $01


	and b                                            ; $689f: $a0
	ld bc, $c600                                     ; $68a0: $01 $00 $c6
	ret nz                                           ; $68a3: $c0

	ld bc, $08a0                                     ; $68a4: $01 $a0 $08
	dec b                                            ; $68a7: $05
	and l                                            ; $68a8: $a5
	pop bc                                           ; $68a9: $c1
	ld e, e                                          ; $68aa: $5b
	ret nz                                           ; $68ab: $c0

	ld bc, $01a0                                     ; $68ac: $01 $a0 $01
	dec b                                            ; $68af: $05
	xor h                                            ; $68b0: $ac
	rlca                                             ; $68b1: $07
	rlca                                             ; $68b2: $07
	add hl, bc                                       ; $68b3: $09
	jr nz, @-$3e                                     ; $68b4: $20 $c0

	ld hl, $d7d2                                     ; $68b6: $21 $d2 $d7
	add e                                            ; $68b9: $83
	ret nz                                           ; $68ba: $c0

	call c, $01d4                                    ; $68bb: $dc $d4 $01
	ret nc                                           ; $68be: $d0

	inc bc                                           ; $68bf: $03
	db $e4                                           ; $68c0: $e4
	nop                                              ; $68c1: $00
	inc d                                            ; $68c2: $14
	ld bc, $03d1                                     ; $68c3: $01 $d1 $03
	db $e4                                           ; $68c6: $e4
	rlca                                             ; $68c7: $07
	ld [bc], a                                       ; $68c8: $02
	ld bc, $03d2                                     ; $68c9: $01 $d2 $03
	db $e4                                           ; $68cc: $e4
	ld [bc], a                                       ; $68cd: $02
	ld d, h                                          ; $68ce: $54
	ld bc, $03d3                                     ; $68cf: $01 $d3 $03
	db $e4                                           ; $68d2: $e4
	dec b                                            ; $68d3: $05
	rlca                                             ; $68d4: $07
	add hl, bc                                       ; $68d5: $09
	dec d                                            ; $68d6: $15
	add d                                            ; $68d7: $82
	ret nz                                           ; $68d8: $c0

	add b                                            ; $68d9: $80
	ld bc, $03d3                                     ; $68da: $01 $d3 $03
	db $e4                                           ; $68dd: $e4
	ld bc, $0199                                     ; $68de: $01 $99 $01
	jp nc, $e403                                     ; $68e1: $d2 $03 $e4

	nop                                              ; $68e4: $00
	push hl                                          ; $68e5: $e5
	ld bc, $03d1                                     ; $68e6: $01 $d1 $03
	db $e4                                           ; $68e9: $e4
	nop                                              ; $68ea: $00
	ld [bc], a                                       ; $68eb: $02
	add hl, bc                                       ; $68ec: $09
	ret nz                                           ; $68ed: $c0

	jp c, $11c0                                      ; $68ee: $da $c0 $11

	db $e3                                           ; $68f1: $e3
	nop                                              ; $68f2: $00
	ld d, [hl]                                       ; $68f3: $56
	pop hl                                           ; $68f4: $e1
	ld [bc], a                                       ; $68f5: $02
	ld bc, $c0e8                                     ; $68f6: $01 $e8 $c0
	ld bc, $08a0                                     ; $68f9: $01 $a0 $08
	nop                                              ; $68fc: $00
	ld bc, $01c0                                     ; $68fd: $01 $c0 $01
	and b                                            ; $6900: $a0
	ld bc, $0a00                                     ; $6901: $01 $00 $0a
	add d                                            ; $6904: $82
	ret nz                                           ; $6905: $c0

	dec de                                           ; $6906: $1b
	rst SubAFromHL                                          ; $6907: $d7
	ld [bc], a                                       ; $6908: $02
	ret nc                                           ; $6909: $d0

	pop de                                           ; $690a: $d1
	inc [hl]                                         ; $690b: $34
	ret nz                                           ; $690c: $c0

	ld bc, $08a0                                     ; $690d: $01 $a0 $08
	nop                                              ; $6910: $00
	rla                                              ; $6911: $17
	ret nz                                           ; $6912: $c0

	ld bc, $01a0                                     ; $6913: $01 $a0 $01
	nop                                              ; $6916: $00
	dec h                                            ; $6917: $25
	ret nz                                           ; $6918: $c0

	ld bc, $08a0                                     ; $6919: $01 $a0 $08
	nop                                              ; $691c: $00
	dec l                                            ; $691d: $2d
	pop hl                                           ; $691e: $e1
	ld [bc], a                                       ; $691f: $02
	rlca                                             ; $6920: $07
	sbc e                                            ; $6921: $9b
	ret nz                                           ; $6922: $c0

	ld bc, $01a0                                     ; $6923: $01 $a0 $01
	nop                                              ; $6926: $00
	inc [hl]                                         ; $6927: $34
	ret nz                                           ; $6928: $c0

	ld bc, $08a0                                     ; $6929: $01 $a0 $08
	nop                                              ; $692c: $00
	scf                                              ; $692d: $37
	ret nz                                           ; $692e: $c0

	ld bc, $01a0                                     ; $692f: $01 $a0 $01
	nop                                              ; $6932: $00
	inc a                                            ; $6933: $3c
	ret nz                                           ; $6934: $c0

	ld bc, $08a0                                     ; $6935: $01 $a0 $08
	nop                                              ; $6938: $00
	ld a, $c0                                        ; $6939: $3e $c0
	ld bc, $01a0                                     ; $693b: $01 $a0 $01
	nop                                              ; $693e: $00
	ld b, b                                          ; $693f: $40
	ld [bc], a                                       ; $6940: $02
	jp nc, Jump_084_5ed3                             ; $6941: $d2 $d3 $5e

	ret nz                                           ; $6944: $c0

	ld bc, $08a0                                     ; $6945: $01 $a0 $08
	nop                                              ; $6948: $00
	ld b, [hl]                                       ; $6949: $46
	ret nz                                           ; $694a: $c0

	ld bc, $01a0                                     ; $694b: $01 $a0 $01
	nop                                              ; $694e: $00
	ld d, e                                          ; $694f: $53
	ret nz                                           ; $6950: $c0

	ld bc, $08a0                                     ; $6951: $01 $a0 $08
	nop                                              ; $6954: $00
	ld e, e                                          ; $6955: $5b
	ret nz                                           ; $6956: $c0

	ld bc, $01a0                                     ; $6957: $01 $a0 $01
	nop                                              ; $695a: $00
	ld h, l                                          ; $695b: $65
	ret nz                                           ; $695c: $c0

	ld bc, $08a0                                     ; $695d: $01 $a0 $08
	nop                                              ; $6960: $00
	ld l, c                                          ; $6961: $69
	ret nz                                           ; $6962: $c0

	ld bc, $01a0                                     ; $6963: $01 $a0 $01
	nop                                              ; $6966: $00
	ld [hl], c                                       ; $6967: $71
	pop hl                                           ; $6968: $e1
	ld [bc], a                                       ; $6969: $02
	rlca                                             ; $696a: $07
	sbc e                                            ; $696b: $9b
	ret nz                                           ; $696c: $c0

	ld bc, $08a0                                     ; $696d: $01 $a0 $08
	nop                                              ; $6970: $00
	ld [hl], a                                       ; $6971: $77
	ret nz                                           ; $6972: $c0

	ld bc, $01a0                                     ; $6973: $01 $a0 $01
	nop                                              ; $6976: $00
	ld a, d                                          ; $6977: $7a
	ret nz                                           ; $6978: $c0

	ld bc, $08a0                                     ; $6979: $01 $a0 $08
	nop                                              ; $697c: $00
	add e                                            ; $697d: $83
	ret nz                                           ; $697e: $c0

	ld bc, $01a0                                     ; $697f: $01 $a0 $01
	nop                                              ; $6982: $00
	add a                                            ; $6983: $87
	ret nz                                           ; $6984: $c0

	ld bc, $08a0                                     ; $6985: $01 $a0 $08
	nop                                              ; $6988: $00
	sub [hl]                                         ; $6989: $96
	ret nz                                           ; $698a: $c0

	ld bc, $01a0                                     ; $698b: $01 $a0 $01
	nop                                              ; $698e: $00
	sbc h                                            ; $698f: $9c
	ret nz                                           ; $6990: $c0

	ld bc, $08a0                                     ; $6991: $01 $a0 $08
	nop                                              ; $6994: $00
	xor c                                            ; $6995: $a9
	ret nz                                           ; $6996: $c0

	ld bc, $01a0                                     ; $6997: $01 $a0 $01
	nop                                              ; $699a: $00
	or l                                             ; $699b: $b5
	ret nz                                           ; $699c: $c0

	ld bc, $08a0                                     ; $699d: $01 $a0 $08
	nop                                              ; $69a0: $00
	cp b                                             ; $69a1: $b8
	ld bc, $1ed4                                     ; $69a2: $01 $d4 $1e
	ret nz                                           ; $69a5: $c0

	ld bc, $08a0                                     ; $69a6: $01 $a0 $08

jr_084_69a9:
	nop                                              ; $69a9: $00
	jp $01c0                                         ; $69aa: $c3 $c0 $01


	and b                                            ; $69ad: $a0
	ld bc, $d000                                     ; $69ae: $01 $00 $d0
	ret nz                                           ; $69b1: $c0

	ld bc, $08a0                                     ; $69b2: $01 $a0 $08
	nop                                              ; $69b5: $00
	sub $c0                                          ; $69b6: $d6 $c0
	ld bc, $01a0                                     ; $69b8: $01 $a0 $01
	nop                                              ; $69bb: $00
	pop hl                                           ; $69bc: $e1
	ret nz                                           ; $69bd: $c0

	ld bc, $08a0                                     ; $69be: $01 $a0 $08
	nop                                              ; $69c1: $00
	db $ed                                           ; $69c2: $ed
	pop bc                                           ; $69c3: $c1
	ld e, e                                          ; $69c4: $5b
	push hl                                          ; $69c5: $e5
	inc sp                                           ; $69c6: $33
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	add hl, bc                                       ; $69c9: $09
	xor h                                            ; $69ca: $ac
	ret nz                                           ; $69cb: $c0

	ld de, $00e3                                     ; $69cc: $11 $e3 $00
	ld d, [hl]                                       ; $69cf: $56
	pop hl                                           ; $69d0: $e1
	ld [bc], a                                       ; $69d1: $02
	ld bc, $c0e8                                     ; $69d2: $01 $e8 $c0
	ld bc, $08a0                                     ; $69d5: $01 $a0 $08
	nop                                              ; $69d8: $00
	ld bc, $01c0                                     ; $69d9: $01 $c0 $01
	and b                                            ; $69dc: $a0
	ld bc, $fe00                                     ; $69dd: $01 $00 $fe
	add d                                            ; $69e0: $82
	ret nz                                           ; $69e1: $c0

	dec de                                           ; $69e2: $1b
	rst SubAFromHL                                          ; $69e3: $d7
	ld [bc], a                                       ; $69e4: $02
	ret nc                                           ; $69e5: $d0

	pop de                                           ; $69e6: $d1
	jr z, jr_084_69a9                                ; $69e7: $28 $c0

	ld bc, $08a0                                     ; $69e9: $01 $a0 $08
	ld bc, $c00d                                     ; $69ec: $01 $0d $c0
	ld bc, $01a0                                     ; $69ef: $01 $a0 $01
	nop                                              ; $69f2: $00
	dec h                                            ; $69f3: $25
	ret nz                                           ; $69f4: $c0

	ld bc, $08a0                                     ; $69f5: $01 $a0 $08
	nop                                              ; $69f8: $00
	dec l                                            ; $69f9: $2d
	pop hl                                           ; $69fa: $e1
	ld [bc], a                                       ; $69fb: $02
	rlca                                             ; $69fc: $07
	sbc e                                            ; $69fd: $9b
	ret nz                                           ; $69fe: $c0

	ld bc, $08a0                                     ; $69ff: $01 $a0 $08
	ld bc, $c01a                                     ; $6a02: $01 $1a $c0
	ld bc, $01a0                                     ; $6a05: $01 $a0 $01
	ld bc, $c02a                                     ; $6a08: $01 $2a $c0
	ld bc, $08a0                                     ; $6a0b: $01 $a0 $08
	ld bc, $0233                                     ; $6a0e: $01 $33 $02
	jp nc, $30d3                                     ; $6a11: $d2 $d3 $30

	ret nz                                           ; $6a14: $c0

	ld bc, $08a0                                     ; $6a15: $01 $a0 $08
	ld bc, $c03a                                     ; $6a18: $01 $3a $c0
	ld bc, $01a0                                     ; $6a1b: $01 $a0 $01
	ld bc, $c043                                     ; $6a1e: $01 $43 $c0
	ld bc, $08a0                                     ; $6a21: $01 $a0 $08
	ld bc, $c049                                     ; $6a24: $01 $49 $c0
	ld bc, $01a0                                     ; $6a27: $01 $a0 $01
	ld bc, $c053                                     ; $6a2a: $01 $53 $c0
	ld bc, $08a0                                     ; $6a2d: $01 $a0 $08
	ld bc, $c059                                     ; $6a30: $01 $59 $c0
	ld bc, $01a0                                     ; $6a33: $01 $a0 $01
	ld bc, $c05f                                     ; $6a36: $01 $5f $c0
	ld bc, $08a0                                     ; $6a39: $01 $a0 $08
	ld bc, $c064                                     ; $6a3c: $01 $64 $c0
	ld bc, $01a0                                     ; $6a3f: $01 $a0 $01
	ld bc, $0177                                     ; $6a42: $01 $77 $01
	call nc, $c02a                                   ; $6a45: $d4 $2a $c0
	ld bc, $08a0                                     ; $6a48: $01 $a0 $08
	ld bc, $c07a                                     ; $6a4b: $01 $7a $c0
	ld bc, $01a0                                     ; $6a4e: $01 $a0 $01
	nop                                              ; $6a51: $00
	ret nc                                           ; $6a52: $d0

	ret nz                                           ; $6a53: $c0

	ld bc, $08a0                                     ; $6a54: $01 $a0 $08
	nop                                              ; $6a57: $00
	sub $c0                                          ; $6a58: $d6 $c0
	ld bc, $01a0                                     ; $6a5a: $01 $a0 $01
	ld bc, $c08b                                     ; $6a5d: $01 $8b $c0
	ld bc, $08a0                                     ; $6a60: $01 $a0 $08
	ld bc, $c098                                     ; $6a63: $01 $98 $c0
	ld bc, $01a0                                     ; $6a66: $01 $a0 $01
	ld bc, $c0a9                                     ; $6a69: $01 $a9 $c0
	ld bc, $08a0                                     ; $6a6c: $01 $a0 $08
	ld bc, $c1af                                     ; $6a6f: $01 $af $c1
	ld e, e                                          ; $6a72: $5b
	push hl                                          ; $6a73: $e5
	inc sp                                           ; $6a74: $33
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	add hl, bc                                       ; $6a77: $09
	sbc a                                            ; $6a78: $9f
	ret nz                                           ; $6a79: $c0

	ld de, $00e3                                     ; $6a7a: $11 $e3 $00
	ld e, e                                          ; $6a7d: $5b
	pop hl                                           ; $6a7e: $e1
	ld [bc], a                                       ; $6a7f: $02
	ld bc, $c0e8                                     ; $6a80: $01 $e8 $c0
	ld bc, $08a0                                     ; $6a83: $01 $a0 $08
	ld bc, $c0c0                                     ; $6a86: $01 $c0 $c0
	ld bc, $01a0                                     ; $6a89: $01 $a0 $01
	ld bc, $82c6                                     ; $6a8c: $01 $c6 $82
	ret nz                                           ; $6a8f: $c0

	dec de                                           ; $6a90: $1b
	rst SubAFromHL                                          ; $6a91: $d7
	ld [bc], a                                       ; $6a92: $02
	ret nc                                           ; $6a93: $d0

	pop de                                           ; $6a94: $d1
	dec de                                           ; $6a95: $1b
	ldh [rP1], a                                     ; $6a96: $e0 $00
	add c                                            ; $6a98: $81
	ret nz                                           ; $6a99: $c0

	ld bc, $01a0                                     ; $6a9a: $01 $a0 $01

jr_084_6a9d:
	ld bc, $c0d0                                     ; $6a9d: $01 $d0 $c0
	ld bc, $08a0                                     ; $6aa0: $01 $a0 $08
	ld bc, $c0db                                     ; $6aa3: $01 $db $c0
	ld bc, $01a0                                     ; $6aa6: $01 $a0 $01
	ld bc, $c0e9                                     ; $6aa9: $01 $e9 $c0
	ld bc, $08a0                                     ; $6aac: $01 $a0 $08
	ld bc, $02ee                                     ; $6aaf: $01 $ee $02
	jp nc, $2dd3                                     ; $6ab2: $d2 $d3 $2d

	ret nz                                           ; $6ab5: $c0

	ld bc, $08a0                                     ; $6ab6: $01 $a0 $08
	ld bc, $c0f7                                     ; $6ab9: $01 $f7 $c0
	ld bc, $01a0                                     ; $6abc: $01 $a0 $01
	ld bc, $e0fd                                     ; $6abf: $01 $fd $e0
	nop                                              ; $6ac2: $00
	ld d, [hl]                                       ; $6ac3: $56
	ret nz                                           ; $6ac4: $c0

	ld bc, $08a0                                     ; $6ac5: $01 $a0 $08
	ld [bc], a                                       ; $6ac8: $02
	rlca                                             ; $6ac9: $07
	ret nz                                           ; $6aca: $c0

	ld bc, $01a0                                     ; $6acb: $01 $a0 $01
	ld [bc], a                                       ; $6ace: $02
	dec c                                            ; $6acf: $0d
	ret nz                                           ; $6ad0: $c0

	ld bc, $08a0                                     ; $6ad1: $01 $a0 $08
	ld [bc], a                                       ; $6ad4: $02
	add hl, de                                       ; $6ad5: $19
	ret nz                                           ; $6ad6: $c0

	ld bc, $01a0                                     ; $6ad7: $01 $a0 $01
	ld [bc], a                                       ; $6ada: $02
	jr z, jr_084_6a9d                                ; $6adb: $28 $c0

	ld bc, $08a0                                     ; $6add: $01 $a0 $08
	ld [bc], a                                       ; $6ae0: $02
	ld sp, $d401                                     ; $6ae1: $31 $01 $d4
	dec l                                            ; $6ae4: $2d
	ret nz                                           ; $6ae5: $c0

	ld bc, $08a0                                     ; $6ae6: $01 $a0 $08
	ld bc, $c0f7                                     ; $6ae9: $01 $f7 $c0
	ld bc, $01a0                                     ; $6aec: $01 $a0 $01
	ld bc, $e0fd                                     ; $6aef: $01 $fd $e0
	nop                                              ; $6af2: $00
	ld h, $c0                                        ; $6af3: $26 $c0
	ld bc, $08a0                                     ; $6af5: $01 $a0 $08
	ld [bc], a                                       ; $6af8: $02
	ld b, d                                          ; $6af9: $42
	ret nz                                           ; $6afa: $c0

	ld bc, $01a0                                     ; $6afb: $01 $a0 $01
	ld [bc], a                                       ; $6afe: $02
	ld c, [hl]                                       ; $6aff: $4e
	ret nz                                           ; $6b00: $c0

	ld bc, $08a0                                     ; $6b01: $01 $a0 $08
	ld [bc], a                                       ; $6b04: $02
	ld d, [hl]                                       ; $6b05: $56
	ret nz                                           ; $6b06: $c0

	ld bc, $01a0                                     ; $6b07: $01 $a0 $01
	ld [bc], a                                       ; $6b0a: $02
	ld l, b                                          ; $6b0b: $68
	ret nz                                           ; $6b0c: $c0

	ld bc, $08a0                                     ; $6b0d: $01 $a0 $08
	ld [bc], a                                       ; $6b10: $02
	ld sp, $5bc1                                     ; $6b11: $31 $c1 $5b
	push hl                                          ; $6b14: $e5
	inc sp                                           ; $6b15: $33
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	ld [$32e1], sp                                   ; $6b18: $08 $e1 $32
	ld bc, $e112                                     ; $6b1b: $01 $12 $e1
	ld [bc], a                                       ; $6b1e: $02
	ld bc, $09e8                                     ; $6b1f: $01 $e8 $09
	dec e                                            ; $6b22: $1d
	add d                                            ; $6b23: $82
	ret nz                                           ; $6b24: $c0

	add b                                            ; $6b25: $80
	ld bc, $07d3                                     ; $6b26: $01 $d3 $07
	ret nz                                           ; $6b29: $c0

	ld [hl+], a                                      ; $6b2a: $22
	pop de                                           ; $6b2b: $d1
	rst SubAFromHL                                          ; $6b2c: $d7
	db $e4                                           ; $6b2d: $e4
	ld bc, $01c1                                     ; $6b2e: $01 $c1 $01
	jp nc, $e403                                     ; $6b31: $d2 $03 $e4

	ld bc, $0107                                     ; $6b34: $01 $07 $01
	pop de                                           ; $6b37: $d1
	rlca                                             ; $6b38: $07
	ret nz                                           ; $6b39: $c0

	ld [hl+], a                                      ; $6b3a: $22
	jp nc, $e4d7                                     ; $6b3b: $d2 $d7 $e4

	nop                                              ; $6b3e: $00
	ld [bc], a                                       ; $6b3f: $02
	add hl, bc                                       ; $6b40: $09
	ret nz                                           ; $6b41: $c0

	db $ed                                           ; $6b42: $ed
	ret nz                                           ; $6b43: $c0

	ld de, $00e3                                     ; $6b44: $11 $e3 $00
	ld e, c                                          ; $6b47: $59
	pop hl                                           ; $6b48: $e1
	ld [bc], a                                       ; $6b49: $02
	ld bc, $c0e8                                     ; $6b4a: $01 $e8 $c0
	ld bc, $08a0                                     ; $6b4d: $01 $a0 $08
	nop                                              ; $6b50: $00
	ld bc, $01c0                                     ; $6b51: $01 $c0 $01
	and b                                            ; $6b54: $a0
	ld bc, $7002                                     ; $6b55: $01 $02 $70
	add d                                            ; $6b58: $82
	ret nz                                           ; $6b59: $c0

	dec de                                           ; $6b5a: $1b
	rst SubAFromHL                                          ; $6b5b: $d7
	ld [bc], a                                       ; $6b5c: $02
	ret nc                                           ; $6b5d: $d0

	pop de                                           ; $6b5e: $d1
	ld b, l                                          ; $6b5f: $45
	ret nz                                           ; $6b60: $c0

	ld bc, $08a0                                     ; $6b61: $01 $a0 $08
	ld [bc], a                                       ; $6b64: $02
	ld a, b                                          ; $6b65: $78
	ldh [rP1], a                                     ; $6b66: $e0 $00
	ret                                              ; $6b68: $c9


	ret nz                                           ; $6b69: $c0

	ld bc, $01a0                                     ; $6b6a: $01 $a0 $01
	ld [bc], a                                       ; $6b6d: $02
	add a                                            ; $6b6e: $87
	ret nz                                           ; $6b6f: $c0

	ld bc, $08a0                                     ; $6b70: $01 $a0 $08
	ld [bc], a                                       ; $6b73: $02
	adc c                                            ; $6b74: $89
	ret nz                                           ; $6b75: $c0

	ld bc, $01a0                                     ; $6b76: $01 $a0 $01
	ld [bc], a                                       ; $6b79: $02
	adc l                                            ; $6b7a: $8d
	ret nz                                           ; $6b7b: $c0

	ld bc, $08a0                                     ; $6b7c: $01 $a0 $08
	ld [bc], a                                       ; $6b7f: $02
	sub c                                            ; $6b80: $91
	ret nz                                           ; $6b81: $c0

	ld bc, $01a0                                     ; $6b82: $01 $a0 $01
	ld [bc], a                                       ; $6b85: $02
	and l                                            ; $6b86: $a5
	ret nz                                           ; $6b87: $c0

	ld bc, $08a0                                     ; $6b88: $01 $a0 $08
	ld [bc], a                                       ; $6b8b: $02
	xor e                                            ; $6b8c: $ab
	ret nz                                           ; $6b8d: $c0

	ld bc, $01a0                                     ; $6b8e: $01 $a0 $01
	ld [bc], a                                       ; $6b91: $02
	jp $01c0                                         ; $6b92: $c3 $c0 $01


	and b                                            ; $6b95: $a0
	ld [$d002], sp                                   ; $6b96: $08 $02 $d0
	ret nz                                           ; $6b99: $c0

	ld bc, $01a0                                     ; $6b9a: $01 $a0 $01
	ld [bc], a                                       ; $6b9d: $02
	sbc $c0                                          ; $6b9e: $de $c0
	ld bc, $08a0                                     ; $6ba0: $01 $a0 $08
	ld bc, $02ee                                     ; $6ba3: $01 $ee $02
	jp nc, Jump_084_45d3                             ; $6ba6: $d2 $d3 $45

	ret nz                                           ; $6ba9: $c0

	ld bc, $08a0                                     ; $6baa: $01 $a0 $08
	ld [bc], a                                       ; $6bad: $02
	push hl                                          ; $6bae: $e5
	ldh [rP1], a                                     ; $6baf: $e0 $00
	add b                                            ; $6bb1: $80
	ret nz                                           ; $6bb2: $c0

	ld bc, $01a0                                     ; $6bb3: $01 $a0 $01
	ld [bc], a                                       ; $6bb6: $02
	add a                                            ; $6bb7: $87
	ret nz                                           ; $6bb8: $c0

	ld bc, $08a0                                     ; $6bb9: $01 $a0 $08
	ld [bc], a                                       ; $6bbc: $02
	pop af                                           ; $6bbd: $f1
	ret nz                                           ; $6bbe: $c0

	ld bc, $01a0                                     ; $6bbf: $01 $a0 $01
	ld [bc], a                                       ; $6bc2: $02
	ld sp, hl                                        ; $6bc3: $f9
	ret nz                                           ; $6bc4: $c0

	ld bc, $08a0                                     ; $6bc5: $01 $a0 $08
	ld [bc], a                                       ; $6bc8: $02
	rst $38                                          ; $6bc9: $ff
	ret nz                                           ; $6bca: $c0

	ld bc, $01a0                                     ; $6bcb: $01 $a0 $01
	inc bc                                           ; $6bce: $03
	db $10                                           ; $6bcf: $10
	ret nz                                           ; $6bd0: $c0

	ld bc, $08a0                                     ; $6bd1: $01 $a0 $08
	inc bc                                           ; $6bd4: $03
	inc d                                            ; $6bd5: $14
	ret nz                                           ; $6bd6: $c0

	ld bc, $01a0                                     ; $6bd7: $01 $a0 $01
	inc bc                                           ; $6bda: $03
	inc e                                            ; $6bdb: $1c
	ret nz                                           ; $6bdc: $c0

	ld bc, $08a0                                     ; $6bdd: $01 $a0 $08
	inc bc                                           ; $6be0: $03
	rra                                              ; $6be1: $1f
	ret nz                                           ; $6be2: $c0

	ld bc, $01a0                                     ; $6be3: $01 $a0 $01
	ld [bc], a                                       ; $6be6: $02
	sbc $c0                                          ; $6be7: $de $c0
	ld bc, $08a0                                     ; $6be9: $01 $a0 $08
	inc bc                                           ; $6bec: $03
	ld sp, $d401                                     ; $6bed: $31 $01 $d4
	add hl, sp                                       ; $6bf0: $39
	ret nz                                           ; $6bf1: $c0

	ld bc, $08a0                                     ; $6bf2: $01 $a0 $08
	ld [bc], a                                       ; $6bf5: $02
	push hl                                          ; $6bf6: $e5
	ldh [rP1], a                                     ; $6bf7: $e0 $00
	jr c, @-$3e                                      ; $6bf9: $38 $c0

	ld bc, $01a0                                     ; $6bfb: $01 $a0 $01
	ld [bc], a                                       ; $6bfe: $02
	add a                                            ; $6bff: $87
	ret nz                                           ; $6c00: $c0

	ld bc, $08a0                                     ; $6c01: $01 $a0 $08
	inc bc                                           ; $6c04: $03
	ld b, c                                          ; $6c05: $41
	ret nz                                           ; $6c06: $c0

	ld bc, $01a0                                     ; $6c07: $01 $a0 $01
	ld [bc], a                                       ; $6c0a: $02
	ld sp, hl                                        ; $6c0b: $f9
	ret nz                                           ; $6c0c: $c0

	ld bc, $08a0                                     ; $6c0d: $01 $a0 $08
	inc bc                                           ; $6c10: $03
	ld b, a                                          ; $6c11: $47
	ret nz                                           ; $6c12: $c0

	ld bc, $01a0                                     ; $6c13: $01 $a0 $01
	nop                                              ; $6c16: $00
	inc a                                            ; $6c17: $3c
	ret nz                                           ; $6c18: $c0

	ld bc, $08a0                                     ; $6c19: $01 $a0 $08
	inc bc                                           ; $6c1c: $03
	rra                                              ; $6c1d: $1f
	ret nz                                           ; $6c1e: $c0

	ld bc, $01a0                                     ; $6c1f: $01 $a0 $01
	ld [bc], a                                       ; $6c22: $02
	sbc $c0                                          ; $6c23: $de $c0
	ld bc, $08a0                                     ; $6c25: $01 $a0 $08
	inc bc                                           ; $6c28: $03
	ld sp, $5bc1                                     ; $6c29: $31 $c1 $5b
	push hl                                          ; $6c2c: $e5
	inc sp                                           ; $6c2d: $33
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	ld a, [bc]                                       ; $6c30: $0a
	ret nz                                           ; $6c31: $c0

	or e                                             ; $6c32: $b3
	ret nz                                           ; $6c33: $c0

	inc c                                            ; $6c34: $0c
	ldh [$3c], a                                     ; $6c35: $e0 $3c
	pop hl                                           ; $6c37: $e1
	ld [bc], a                                       ; $6c38: $02
	ld bc, $09e0                                     ; $6c39: $01 $e0 $09
	or d                                             ; $6c3c: $b2
	ret nz                                           ; $6c3d: $c0

	ld de, $00e3                                     ; $6c3e: $11 $e3 $00
	ld e, d                                          ; $6c41: $5a
	pop hl                                           ; $6c42: $e1
	ld [bc], a                                       ; $6c43: $02
	ld bc, $c0e8                                     ; $6c44: $01 $e8 $c0
	ld bc, $08a0                                     ; $6c47: $01 $a0 $08
	inc bc                                           ; $6c4a: $03
	ld d, a                                          ; $6c4b: $57
	ret nz                                           ; $6c4c: $c0

	ld bc, $01a0                                     ; $6c4d: $01 $a0 $01
	inc bc                                           ; $6c50: $03
	ld e, c                                          ; $6c51: $59
	add d                                            ; $6c52: $82
	ret nz                                           ; $6c53: $c0

	dec de                                           ; $6c54: $1b
	rst SubAFromHL                                          ; $6c55: $d7
	ld [bc], a                                       ; $6c56: $02
	ret nc                                           ; $6c57: $d0

	pop de                                           ; $6c58: $d1
	ld h, $c0                                        ; $6c59: $26 $c0
	ld bc, $08a0                                     ; $6c5b: $01 $a0 $08
	inc bc                                           ; $6c5e: $03
	ld e, [hl]                                       ; $6c5f: $5e
	ret nz                                           ; $6c60: $c0

	ld bc, $01a0                                     ; $6c61: $01 $a0 $01
	inc bc                                           ; $6c64: $03
	ld h, l                                          ; $6c65: $65
	ret nz                                           ; $6c66: $c0

	ld bc, $08a0                                     ; $6c67: $01 $a0 $08
	inc bc                                           ; $6c6a: $03
	ld l, [hl]                                       ; $6c6b: $6e
	pop bc                                           ; $6c6c: $c1
	ld e, e                                          ; $6c6d: $5b
	ret nz                                           ; $6c6e: $c0

	ld bc, $01a0                                     ; $6c6f: $01 $a0 $01
	inc bc                                           ; $6c72: $03
	ld a, d                                          ; $6c73: $7a
	ret nz                                           ; $6c74: $c0

	ld bc, $26a0                                     ; $6c75: $01 $a0 $26
	inc bc                                           ; $6c78: $03
	add d                                            ; $6c79: $82
	ret nz                                           ; $6c7a: $c0

	ld bc, $01a0                                     ; $6c7b: $01 $a0 $01
	inc bc                                           ; $6c7e: $03
	add l                                            ; $6c7f: $85
	ld [bc], a                                       ; $6c80: $02
	jp nc, $3ed3                                     ; $6c81: $d2 $d3 $3e

	ret nz                                           ; $6c84: $c0

	ld bc, $08a0                                     ; $6c85: $01 $a0 $08
	inc bc                                           ; $6c88: $03
	adc [hl]                                         ; $6c89: $8e
	ret nz                                           ; $6c8a: $c0

	ld bc, $01a0                                     ; $6c8b: $01 $a0 $01
	inc bc                                           ; $6c8e: $03
	and b                                            ; $6c8f: $a0
	ret nz                                           ; $6c90: $c0

	ld bc, $08a0                                     ; $6c91: $01 $a0 $08
	inc bc                                           ; $6c94: $03
	xor e                                            ; $6c95: $ab
	ret nz                                           ; $6c96: $c0

	ld bc, $01a0                                     ; $6c97: $01 $a0 $01
	inc bc                                           ; $6c9a: $03
	cp a                                             ; $6c9b: $bf
	ret nz                                           ; $6c9c: $c0

	ld bc, $08a0                                     ; $6c9d: $01 $a0 $08
	inc bc                                           ; $6ca0: $03
	call $01c0                                       ; $6ca1: $cd $c0 $01
	and b                                            ; $6ca4: $a0
	ld bc, $db03                                     ; $6ca5: $01 $03 $db
	ret nz                                           ; $6ca8: $c0

	ld bc, $08a0                                     ; $6ca9: $01 $a0 $08
	inc bc                                           ; $6cac: $03
	ldh [c], a                                       ; $6cad: $e2
	pop bc                                           ; $6cae: $c1
	ld e, e                                          ; $6caf: $5b
	ret nz                                           ; $6cb0: $c0

	ld bc, $01a0                                     ; $6cb1: $01 $a0 $01
	inc bc                                           ; $6cb4: $03
	db $ec                                           ; $6cb5: $ec
	ret nz                                           ; $6cb6: $c0

	ld bc, $26a0                                     ; $6cb7: $01 $a0 $26
	inc bc                                           ; $6cba: $03
	add d                                            ; $6cbb: $82
	ret nz                                           ; $6cbc: $c0

	ld bc, $01a0                                     ; $6cbd: $01 $a0 $01
	inc bc                                           ; $6cc0: $03
	or $01                                           ; $6cc1: $f6 $01
	call nc, $c026                                   ; $6cc3: $d4 $26 $c0
	ld bc, $08a0                                     ; $6cc6: $01 $a0 $08
	inc b                                            ; $6cc9: $04
	ld [bc], a                                       ; $6cca: $02
	ret nz                                           ; $6ccb: $c0

	ld bc, $01a0                                     ; $6ccc: $01 $a0 $01
	inc b                                            ; $6ccf: $04
	ld de, $01c0                                     ; $6cd0: $11 $c0 $01
	and b                                            ; $6cd3: $a0
	ld [$1904], sp                                   ; $6cd4: $08 $04 $19
	pop bc                                           ; $6cd7: $c1
	ld e, e                                          ; $6cd8: $5b
	ret nz                                           ; $6cd9: $c0

	ld bc, $01a0                                     ; $6cda: $01 $a0 $01
	inc bc                                           ; $6cdd: $03
	db $ec                                           ; $6cde: $ec
	ret nz                                           ; $6cdf: $c0

	ld bc, $26a0                                     ; $6ce0: $01 $a0 $26
	inc bc                                           ; $6ce3: $03
	add d                                            ; $6ce4: $82
	ret nz                                           ; $6ce5: $c0

	ld bc, $01a0                                     ; $6ce6: $01 $a0 $01
	inc bc                                           ; $6ce9: $03
	or $e5                                           ; $6cea: $f6 $e5
	inc sp                                           ; $6cec: $33
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	add hl, bc                                       ; $6cef: $09
	ret nz                                           ; $6cf0: $c0

	add sp, -$40                                     ; $6cf1: $e8 $c0
	ld de, $00e3                                     ; $6cf3: $11 $e3 $00
	ld e, b                                          ; $6cf6: $58
	pop hl                                           ; $6cf7: $e1
	ld [bc], a                                       ; $6cf8: $02
	ld bc, $c0e8                                     ; $6cf9: $01 $e8 $c0
	ld bc, $08a0                                     ; $6cfc: $01 $a0 $08
	nop                                              ; $6cff: $00
	ld bc, $01c0                                     ; $6d00: $01 $c0 $01
	and b                                            ; $6d03: $a0
	ld bc, $2604                                     ; $6d04: $01 $04 $26
	ret nz                                           ; $6d07: $c0

	ld bc, $08a0                                     ; $6d08: $01 $a0 $08
	inc b                                            ; $6d0b: $04
	ld sp, $01c0                                     ; $6d0c: $31 $c0 $01
	and b                                            ; $6d0f: $a0
	ld bc, $3a04                                     ; $6d10: $01 $04 $3a
	add d                                            ; $6d13: $82
	ret nz                                           ; $6d14: $c0

	dec de                                           ; $6d15: $1b
	rst SubAFromHL                                          ; $6d16: $d7
	ld [bc], a                                       ; $6d17: $02
	ret nc                                           ; $6d18: $d0

	pop de                                           ; $6d19: $d1
	jr nc, @-$1d                                     ; $6d1a: $30 $e1

	ld [bc], a                                       ; $6d1c: $02
	rlca                                             ; $6d1d: $07
	sbc e                                            ; $6d1e: $9b
	ret nz                                           ; $6d1f: $c0

	ld bc, $01a0                                     ; $6d20: $01 $a0 $01
	nop                                              ; $6d23: $00
	inc [hl]                                         ; $6d24: $34
	ret nz                                           ; $6d25: $c0

	ld bc, $08a0                                     ; $6d26: $01 $a0 $08
	inc b                                            ; $6d29: $04
	ld b, b                                          ; $6d2a: $40
	ret nz                                           ; $6d2b: $c0

	ld bc, $01a0                                     ; $6d2c: $01 $a0 $01
	inc b                                            ; $6d2f: $04
	ld c, d                                          ; $6d30: $4a
	ret nz                                           ; $6d31: $c0

	ld bc, $08a0                                     ; $6d32: $01 $a0 $08
	inc b                                            ; $6d35: $04
	ld e, [hl]                                       ; $6d36: $5e
	ret nz                                           ; $6d37: $c0

	ld bc, $01a0                                     ; $6d38: $01 $a0 $01
	inc b                                            ; $6d3b: $04
	ld l, d                                          ; $6d3c: $6a
	ret nz                                           ; $6d3d: $c0

	ld bc, $08a0                                     ; $6d3e: $01 $a0 $08
	inc b                                            ; $6d41: $04
	ld a, c                                          ; $6d42: $79
	ret nz                                           ; $6d43: $c0

	ld bc, $01a0                                     ; $6d44: $01 $a0 $01
	inc b                                            ; $6d47: $04
	adc e                                            ; $6d48: $8b
	pop bc                                           ; $6d49: $c1
	ld e, e                                          ; $6d4a: $5b
	ld [bc], a                                       ; $6d4b: $02
	jp nc, $42d3                                     ; $6d4c: $d2 $d3 $42

	ret nz                                           ; $6d4f: $c0

	ld bc, $08a0                                     ; $6d50: $01 $a0 $08
	inc b                                            ; $6d53: $04
	sub b                                            ; $6d54: $90
	ret nz                                           ; $6d55: $c0

	ld bc, $01a0                                     ; $6d56: $01 $a0 $01
	inc b                                            ; $6d59: $04
	sbc h                                            ; $6d5a: $9c
	ret nz                                           ; $6d5b: $c0

	ld bc, $08a0                                     ; $6d5c: $01 $a0 $08
	inc b                                            ; $6d5f: $04
	and b                                            ; $6d60: $a0
	ret nz                                           ; $6d61: $c0

	ld bc, $01a0                                     ; $6d62: $01 $a0 $01
	inc b                                            ; $6d65: $04
	xor c                                            ; $6d66: $a9
	pop hl                                           ; $6d67: $e1
	ld [bc], a                                       ; $6d68: $02
	rlca                                             ; $6d69: $07
	sbc e                                            ; $6d6a: $9b
	ret nz                                           ; $6d6b: $c0

	ld bc, $08a0                                     ; $6d6c: $01 $a0 $08
	inc b                                            ; $6d6f: $04
	or c                                             ; $6d70: $b1
	ret nz                                           ; $6d71: $c0

	ld bc, $01a0                                     ; $6d72: $01 $a0 $01
	inc b                                            ; $6d75: $04
	or [hl]                                          ; $6d76: $b6
	ret nz                                           ; $6d77: $c0

	ld bc, $08a0                                     ; $6d78: $01 $a0 $08
	inc b                                            ; $6d7b: $04
	cp h                                             ; $6d7c: $bc
	ret nz                                           ; $6d7d: $c0

	ld bc, $01a0                                     ; $6d7e: $01 $a0 $01
	inc b                                            ; $6d81: $04
	add $c0                                          ; $6d82: $c6 $c0
	ld bc, $08a0                                     ; $6d84: $01 $a0 $08
	inc b                                            ; $6d87: $04
	adc $c1                                          ; $6d88: $ce $c1
	ld e, e                                          ; $6d8a: $5b
	ret nz                                           ; $6d8b: $c0

	ld bc, $01a0                                     ; $6d8c: $01 $a0 $01
	inc b                                            ; $6d8f: $04
	db $dd                                           ; $6d90: $dd
	ld bc, $42d4                                     ; $6d91: $01 $d4 $42
	ret nz                                           ; $6d94: $c0

	ld bc, $08a0                                     ; $6d95: $01 $a0 $08
	inc b                                            ; $6d98: $04
	db $e4                                           ; $6d99: $e4
	ret nz                                           ; $6d9a: $c0

	ld bc, $01a0                                     ; $6d9b: $01 $a0 $01
	inc b                                            ; $6d9e: $04
	sbc h                                            ; $6d9f: $9c
	ret nz                                           ; $6da0: $c0

	ld bc, $08a0                                     ; $6da1: $01 $a0 $08
	inc b                                            ; $6da4: $04
	pop af                                           ; $6da5: $f1
	ret nz                                           ; $6da6: $c0

	ld bc, $01a0                                     ; $6da7: $01 $a0 $01
	inc b                                            ; $6daa: $04
	xor c                                            ; $6dab: $a9
	pop hl                                           ; $6dac: $e1
	ld [bc], a                                       ; $6dad: $02
	rlca                                             ; $6dae: $07
	sbc e                                            ; $6daf: $9b
	ret nz                                           ; $6db0: $c0

	ld bc, $08a0                                     ; $6db1: $01 $a0 $08
	inc b                                            ; $6db4: $04
	or c                                             ; $6db5: $b1
	ret nz                                           ; $6db6: $c0

	ld bc, $01a0                                     ; $6db7: $01 $a0 $01
	inc b                                            ; $6dba: $04
	or [hl]                                          ; $6dbb: $b6
	ret nz                                           ; $6dbc: $c0

	ld bc, $08a0                                     ; $6dbd: $01 $a0 $08
	inc b                                            ; $6dc0: $04
	db $fc                                           ; $6dc1: $fc
	ret nz                                           ; $6dc2: $c0

	ld bc, $01a0                                     ; $6dc3: $01 $a0 $01
	dec b                                            ; $6dc6: $05
	inc b                                            ; $6dc7: $04
	ret nz                                           ; $6dc8: $c0

	ld bc, $08a0                                     ; $6dc9: $01 $a0 $08
	inc b                                            ; $6dcc: $04
	adc $c1                                          ; $6dcd: $ce $c1
	ld e, e                                          ; $6dcf: $5b
	ret nz                                           ; $6dd0: $c0

	ld bc, $01a0                                     ; $6dd1: $01 $a0 $01
	inc b                                            ; $6dd4: $04
	db $dd                                           ; $6dd5: $dd
	push hl                                          ; $6dd6: $e5
	inc sp                                           ; $6dd7: $33
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	add hl, bc                                       ; $6dda: $09
	ld [hl], $c0                                     ; $6ddb: $36 $c0
	ld de, $00e3                                     ; $6ddd: $11 $e3 $00
	ld e, e                                          ; $6de0: $5b
	pop hl                                           ; $6de1: $e1
	ld [bc], a                                       ; $6de2: $02
	ld bc, $c0e8                                     ; $6de3: $01 $e8 $c0
	ld bc, $08a0                                     ; $6de6: $01 $a0 $08
	dec b                                            ; $6de9: $05
	dec c                                            ; $6dea: $0d
	ret nz                                           ; $6deb: $c0

	ld bc, $01a0                                     ; $6dec: $01 $a0 $01
	dec b                                            ; $6def: $05
	inc de                                           ; $6df0: $13
	pop hl                                           ; $6df1: $e1
	ld [hl-], a                                      ; $6df2: $32
	ld bc, $e19c                                     ; $6df3: $01 $9c $e1
	ld [bc], a                                       ; $6df6: $02
	ld bc, $82e8                                     ; $6df7: $01 $e8 $82
	ret nz                                           ; $6dfa: $c0

	add b                                            ; $6dfb: $80
	ld bc, $03d3                                     ; $6dfc: $01 $d3 $03
	db $e4                                           ; $6dff: $e4
	ld bc, $0136                                     ; $6e00: $01 $36 $01
	jp nc, $c007                                     ; $6e03: $d2 $07 $c0

	ld [hl+], a                                      ; $6e06: $22
	pop de                                           ; $6e07: $d1
	rst SubAFromHL                                          ; $6e08: $d7
	db $e4                                           ; $6e09: $e4
	nop                                              ; $6e0a: $00
	xor c                                            ; $6e0b: $a9
	ld bc, $03d1                                     ; $6e0c: $01 $d1 $03
	db $e4                                           ; $6e0f: $e4
	nop                                              ; $6e10: $00
	ld [bc], a                                       ; $6e11: $02
	add hl, bc                                       ; $6e12: $09
	sbc a                                            ; $6e13: $9f
	add d                                            ; $6e14: $82
	ret nz                                           ; $6e15: $c0

	dec de                                           ; $6e16: $1b
	rst SubAFromHL                                          ; $6e17: $d7
	ld [bc], a                                       ; $6e18: $02
	ret nc                                           ; $6e19: $d0

	pop de                                           ; $6e1a: $d1
	ld a, [hl+]                                      ; $6e1b: $2a
	ret nz                                           ; $6e1c: $c0

	ld bc, $01a0                                     ; $6e1d: $01 $a0 $01
	dec b                                            ; $6e20: $05
	dec e                                            ; $6e21: $1d
	ret nz                                           ; $6e22: $c0

	ld bc, $08a0                                     ; $6e23: $01 $a0 $08
	dec b                                            ; $6e26: $05
	rra                                              ; $6e27: $1f
	ret nz                                           ; $6e28: $c0

	ld bc, $01a0                                     ; $6e29: $01 $a0 $01
	dec b                                            ; $6e2c: $05
	dec hl                                           ; $6e2d: $2b
	ret nz                                           ; $6e2e: $c0

jr_084_6e2f:
	ld bc, $08a0                                     ; $6e2f: $01 $a0 $08
	dec b                                            ; $6e32: $05
	ld a, $c0                                        ; $6e33: $3e $c0
	ld bc, $01a0                                     ; $6e35: $01 $a0 $01
	dec b                                            ; $6e38: $05
	ld c, b                                          ; $6e39: $48
	ret nz                                           ; $6e3a: $c0

	ld bc, $08a0                                     ; $6e3b: $01 $a0 $08
	dec b                                            ; $6e3e: $05
	ld d, b                                          ; $6e3f: $50
	ret nz                                           ; $6e40: $c0

	ld bc, $01a0                                     ; $6e41: $01 $a0 $01
	nop                                              ; $6e44: $00
	ld b, b                                          ; $6e45: $40
	ld [bc], a                                       ; $6e46: $02
	jp nc, $2ad3                                     ; $6e47: $d2 $d3 $2a

	ret nz                                           ; $6e4a: $c0

	ld bc, $08a0                                     ; $6e4b: $01 $a0 $08
	dec b                                            ; $6e4e: $05
	ld e, c                                          ; $6e4f: $59
	ret nz                                           ; $6e50: $c0

	ld bc, $01a0                                     ; $6e51: $01 $a0 $01
	dec b                                            ; $6e54: $05
	ld e, l                                          ; $6e55: $5d
	ret nz                                           ; $6e56: $c0

	ld bc, $08a0                                     ; $6e57: $01 $a0 $08
	dec b                                            ; $6e5a: $05
	ld h, h                                          ; $6e5b: $64
	ret nz                                           ; $6e5c: $c0

	ld bc, $01a0                                     ; $6e5d: $01 $a0 $01
	dec b                                            ; $6e60: $05
	ld a, b                                          ; $6e61: $78
	ret nz                                           ; $6e62: $c0

	ld bc, $08a0                                     ; $6e63: $01 $a0 $08
	dec b                                            ; $6e66: $05
	ld a, a                                          ; $6e67: $7f

jr_084_6e68:
	ret nz                                           ; $6e68: $c0

	ld bc, $01a0                                     ; $6e69: $01 $a0 $01
	ld [bc], a                                       ; $6e6c: $02
	jr z, jr_084_6e2f                                ; $6e6d: $28 $c0

	ld bc, $08a0                                     ; $6e6f: $01 $a0 $08
	dec b                                            ; $6e72: $05
	adc [hl]                                         ; $6e73: $8e
	ld bc, $36d4                                     ; $6e74: $01 $d4 $36
	ret nz                                           ; $6e77: $c0

	ld bc, $08a0                                     ; $6e78: $01 $a0 $08
	dec b                                            ; $6e7b: $05
	ld e, c                                          ; $6e7c: $59
	ret nz                                           ; $6e7d: $c0

	ld bc, $01a0                                     ; $6e7e: $01 $a0 $01
	dec b                                            ; $6e81: $05
	ld e, l                                          ; $6e82: $5d
	ret nz                                           ; $6e83: $c0

	ld bc, $08a0                                     ; $6e84: $01 $a0 $08
	dec b                                            ; $6e87: $05
	and b                                            ; $6e88: $a0
	ret nz                                           ; $6e89: $c0

	ld bc, $01a0                                     ; $6e8a: $01 $a0 $01
	dec b                                            ; $6e8d: $05
	ld a, b                                          ; $6e8e: $78
	ret nz                                           ; $6e8f: $c0

	ld bc, $08a0                                     ; $6e90: $01 $a0 $08
	dec b                                            ; $6e93: $05
	or h                                             ; $6e94: $b4
	ret nz                                           ; $6e95: $c0

	ld bc, $01a0                                     ; $6e96: $01 $a0 $01
	ld bc, $c077                                     ; $6e99: $01 $77 $c0
	ld bc, $08a0                                     ; $6e9c: $01 $a0 $08
	dec b                                            ; $6e9f: $05
	push bc                                          ; $6ea0: $c5
	ret nz                                           ; $6ea1: $c0

	ld bc, $01a0                                     ; $6ea2: $01 $a0 $01
	ld [bc], a                                       ; $6ea5: $02
	jr z, jr_084_6e68                                ; $6ea6: $28 $c0

	ld bc, $08a0                                     ; $6ea8: $01 $a0 $08
	dec b                                            ; $6eab: $05
	adc [hl]                                         ; $6eac: $8e
	pop bc                                           ; $6ead: $c1
	ld e, e                                          ; $6eae: $5b
	push hl                                          ; $6eaf: $e5
	inc sp                                           ; $6eb0: $33
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	add hl, bc                                       ; $6eb3: $09
	add c                                            ; $6eb4: $81
	add d                                            ; $6eb5: $82
	ret nz                                           ; $6eb6: $c0

	dec de                                           ; $6eb7: $1b
	rst SubAFromHL                                          ; $6eb8: $d7
	ld [bc], a                                       ; $6eb9: $02
	ret nc                                           ; $6eba: $d0

	pop de                                           ; $6ebb: $d1
	inc h                                            ; $6ebc: $24
	ret nz                                           ; $6ebd: $c0

	ld bc, $01a0                                     ; $6ebe: $01 $a0 $01
	dec b                                            ; $6ec1: $05
	dec e                                            ; $6ec2: $1d
	ret nz                                           ; $6ec3: $c0

	ld bc, $08a0                                     ; $6ec4: $01 $a0 $08
	dec b                                            ; $6ec7: $05
	push de                                          ; $6ec8: $d5
	ret nz                                           ; $6ec9: $c0

	ld bc, $01a0                                     ; $6eca: $01 $a0 $01
	dec b                                            ; $6ecd: $05
	ldh [c], a                                       ; $6ece: $e2
	ret nz                                           ; $6ecf: $c0

	ld bc, $08a0                                     ; $6ed0: $01 $a0 $08
	dec b                                            ; $6ed3: $05
	ld [$01c0], a                                    ; $6ed4: $ea $c0 $01
	and b                                            ; $6ed7: $a0
	ld bc, $f305                                     ; $6ed8: $01 $05 $f3
	ret nz                                           ; $6edb: $c0

	ld bc, $08a0                                     ; $6edc: $01 $a0 $08
	ld bc, $02ee                                     ; $6edf: $01 $ee $02
	jp nc, $24d3                                     ; $6ee2: $d2 $d3 $24

	ret nz                                           ; $6ee5: $c0

	ld bc, $01a0                                     ; $6ee6: $01 $a0 $01
	dec b                                            ; $6ee9: $05
	dec e                                            ; $6eea: $1d
	ret nz                                           ; $6eeb: $c0

	ld bc, $08a0                                     ; $6eec: $01 $a0 $08
	dec b                                            ; $6eef: $05
	ld sp, hl                                        ; $6ef0: $f9
	ret nz                                           ; $6ef1: $c0

	ld bc, $01a0                                     ; $6ef2: $01 $a0 $01
	dec b                                            ; $6ef5: $05
	ldh [c], a                                       ; $6ef6: $e2
	ret nz                                           ; $6ef7: $c0

	ld bc, $08a0                                     ; $6ef8: $01 $a0 $08
	ld b, $06                                        ; $6efb: $06 $06
	ret nz                                           ; $6efd: $c0

	ld bc, $01a0                                     ; $6efe: $01 $a0 $01
	ld b, $18                                        ; $6f01: $06 $18
	ret nz                                           ; $6f03: $c0

	ld bc, $08a0                                     ; $6f04: $01 $a0 $08
	dec b                                            ; $6f07: $05
	adc [hl]                                         ; $6f08: $8e
	ld bc, $24d4                                     ; $6f09: $01 $d4 $24
	ret nz                                           ; $6f0c: $c0

	ld bc, $01a0                                     ; $6f0d: $01 $a0 $01
	dec b                                            ; $6f10: $05
	dec e                                            ; $6f11: $1d
	ret nz                                           ; $6f12: $c0

	ld bc, $08a0                                     ; $6f13: $01 $a0 $08
	ld b, $1c                                        ; $6f16: $06 $1c
	ret nz                                           ; $6f18: $c0

	ld bc, $01a0                                     ; $6f19: $01 $a0 $01
	dec b                                            ; $6f1c: $05
	ldh [c], a                                       ; $6f1d: $e2
	ret nz                                           ; $6f1e: $c0

	ld bc, $08a0                                     ; $6f1f: $01 $a0 $08
	ld b, $24                                        ; $6f22: $06 $24
	ret nz                                           ; $6f24: $c0

	ld bc, $01a0                                     ; $6f25: $01 $a0 $01
	ld b, $18                                        ; $6f28: $06 $18
	ret nz                                           ; $6f2a: $c0

	ld bc, $08a0                                     ; $6f2b: $01 $a0 $08
	ld b, $35                                        ; $6f2e: $06 $35
	pop bc                                           ; $6f30: $c1
	ld e, e                                          ; $6f31: $5b
	push hl                                          ; $6f32: $e5
	inc sp                                           ; $6f33: $33
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	add hl, bc                                       ; $6f36: $09
	sub c                                            ; $6f37: $91
	add d                                            ; $6f38: $82
	ret nz                                           ; $6f39: $c0

	dec de                                           ; $6f3a: $1b
	rst SubAFromHL                                          ; $6f3b: $d7
	ld [bc], a                                       ; $6f3c: $02
	ret nc                                           ; $6f3d: $d0

	pop de                                           ; $6f3e: $d1
	inc l                                            ; $6f3f: $2c
	ret nz                                           ; $6f40: $c0

	ld bc, $08a0                                     ; $6f41: $01 $a0 $08
	ld b, $4a                                        ; $6f44: $06 $4a
	ret nz                                           ; $6f46: $c0

	ld bc, $01a0                                     ; $6f47: $01 $a0 $01
	ld b, $50                                        ; $6f4a: $06 $50
	ret nz                                           ; $6f4c: $c0

	ld bc, $08a0                                     ; $6f4d: $01 $a0 $08
	ld b, $5a                                        ; $6f50: $06 $5a
	ret nz                                           ; $6f52: $c0

	ld bc, $01a0                                     ; $6f53: $01 $a0 $01
	ld b, $60                                        ; $6f56: $06 $60
	ret nz                                           ; $6f58: $c0

	ld bc, $08a0                                     ; $6f59: $01 $a0 $08
	ld b, $6a                                        ; $6f5c: $06 $6a
	ret nz                                           ; $6f5e: $c0

	ld bc, $01a0                                     ; $6f5f: $01 $a0 $01
	ld b, $73                                        ; $6f62: $06 $73
	ret nz                                           ; $6f64: $c0

	ld bc, $08a0                                     ; $6f65: $01 $a0 $08
	ld bc, $c1ee                                     ; $6f68: $01 $ee $c1
	ld e, e                                          ; $6f6b: $5b
	ld [bc], a                                       ; $6f6c: $02
	jp nc, $2cd3                                     ; $6f6d: $d2 $d3 $2c

	ret nz                                           ; $6f70: $c0

	ld bc, $08a0                                     ; $6f71: $01 $a0 $08
	ld b, $77                                        ; $6f74: $06 $77
	ret nz                                           ; $6f76: $c0

	ld bc, $01a0                                     ; $6f77: $01 $a0 $01
	ld b, $86                                        ; $6f7a: $06 $86
	ret nz                                           ; $6f7c: $c0

	ld bc, $08a0                                     ; $6f7d: $01 $a0 $08
	ld b, $8d                                        ; $6f80: $06 $8d
	ret nz                                           ; $6f82: $c0

	ld bc, $01a0                                     ; $6f83: $01 $a0 $01
	ld b, $9c                                        ; $6f86: $06 $9c
	ret nz                                           ; $6f88: $c0

	ld bc, $08a0                                     ; $6f89: $01 $a0 $08
	ld b, $9f                                        ; $6f8c: $06 $9f
	ret nz                                           ; $6f8e: $c0

	ld bc, $01a0                                     ; $6f8f: $01 $a0 $01
	ld [bc], a                                       ; $6f92: $02
	jr z, @-$3e                                      ; $6f93: $28 $c0

	ld bc, $08a0                                     ; $6f95: $01 $a0 $08
	dec b                                            ; $6f98: $05
	adc [hl]                                         ; $6f99: $8e
	pop bc                                           ; $6f9a: $c1
	ld e, e                                          ; $6f9b: $5b
	ld bc, $26d4                                     ; $6f9c: $01 $d4 $26
	ret nz                                           ; $6f9f: $c0

	ld bc, $08a0                                     ; $6fa0: $01 $a0 $08
	ld b, $ad                                        ; $6fa3: $06 $ad
	ret nz                                           ; $6fa5: $c0

	ld bc, $01a0                                     ; $6fa6: $01 $a0 $01
	ld b, $b9                                        ; $6fa9: $06 $b9
	ret nz                                           ; $6fab: $c0

	ld bc, $08a0                                     ; $6fac: $01 $a0 $08
	ld b, $be                                        ; $6faf: $06 $be
	ret nz                                           ; $6fb1: $c0

	ld bc, $01a0                                     ; $6fb2: $01 $a0 $01
	ld b, $d2                                        ; $6fb5: $06 $d2
	ret nz                                           ; $6fb7: $c0

	ld bc, $08a0                                     ; $6fb8: $01 $a0 $08
	ld b, $d6                                        ; $6fbb: $06 $d6
	pop bc                                           ; $6fbd: $c1
	ld e, e                                          ; $6fbe: $5b
	ret nz                                           ; $6fbf: $c0

	ld bc, $01a0                                     ; $6fc0: $01 $a0 $01
	ld b, $e4                                        ; $6fc3: $06 $e4
	push hl                                          ; $6fc5: $e5
	inc sp                                           ; $6fc6: $33
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	add hl, bc                                       ; $6fc9: $09
	dec e                                            ; $6fca: $1d
	add d                                            ; $6fcb: $82
	ret nz                                           ; $6fcc: $c0

	add b                                            ; $6fcd: $80
	ld bc, $07d3                                     ; $6fce: $01 $d3 $07
	ret nz                                           ; $6fd1: $c0

	ld [hl+], a                                      ; $6fd2: $22
	pop de                                           ; $6fd3: $d1
	rst SubAFromHL                                          ; $6fd4: $d7
	db $e4                                           ; $6fd5: $e4
	ld bc, $0118                                     ; $6fd6: $01 $18 $01
	jp nc, $c007                                     ; $6fd9: $d2 $07 $c0

	ld [hl+], a                                      ; $6fdc: $22
	jp nc, $e4d7                                     ; $6fdd: $d2 $d7 $e4

	nop                                              ; $6fe0: $00
	ld h, d                                          ; $6fe1: $62
	ld bc, $03d1                                     ; $6fe2: $01 $d1 $03
	db $e4                                           ; $6fe5: $e4
	nop                                              ; $6fe6: $00
	ld [bc], a                                       ; $6fe7: $02
	add hl, bc                                       ; $6fe8: $09
	ld e, b                                          ; $6fe9: $58
	ret nz                                           ; $6fea: $c0

	ld de, $00e3                                     ; $6feb: $11 $e3 $00
	ld e, h                                          ; $6fee: $5c
	pop hl                                           ; $6fef: $e1
	ld [bc], a                                       ; $6ff0: $02
	ld bc, $c0e8                                     ; $6ff1: $01 $e8 $c0
	ld bc, $08a0                                     ; $6ff4: $01 $a0 $08
	nop                                              ; $6ff7: $00
	ld bc, $01c0                                     ; $6ff8: $01 $c0 $01
	and b                                            ; $6ffb: $a0
	ld bc, $ea06                                     ; $6ffc: $01 $06 $ea
	ret nz                                           ; $6fff: $c0

	ld bc, $08a0                                     ; $7000: $01 $a0 $08
	ld b, $fd                                        ; $7003: $06 $fd
	ret nz                                           ; $7005: $c0

	ld bc, $01a0                                     ; $7006: $01 $a0 $01
	rlca                                             ; $7009: $07
	inc b                                            ; $700a: $04
	ret nz                                           ; $700b: $c0

	ld bc, $08a0                                     ; $700c: $01 $a0 $08
	rlca                                             ; $700f: $07
	ld [$3de1], sp                                   ; $7010: $08 $e1 $3d
	inc bc                                           ; $7013: $03
	ld sp, $c082                                     ; $7014: $31 $82 $c0
	dec de                                           ; $7017: $1b
	rst SubAFromHL                                          ; $7018: $d7
	ld [bc], a                                       ; $7019: $02
	ret nc                                           ; $701a: $d0

	pop de                                           ; $701b: $d1
	inc c                                            ; $701c: $0c
	ret nz                                           ; $701d: $c0

	ld bc, $01a0                                     ; $701e: $01 $a0 $01
	rlca                                             ; $7021: $07
	ld [de], a                                       ; $7022: $12
	ret nz                                           ; $7023: $c0

	ld bc, $08a0                                     ; $7024: $01 $a0 $08
	ld bc, $02ee                                     ; $7027: $01 $ee $02
	jp nc, $06d3                                     ; $702a: $d2 $d3 $06

	ret nz                                           ; $702d: $c0

	ld bc, $08a0                                     ; $702e: $01 $a0 $08
	rlca                                             ; $7031: $07
	dec d                                            ; $7032: $15
	ld bc, $06d4                                     ; $7033: $01 $d4 $06
	ret nz                                           ; $7036: $c0

	ld bc, $08a0                                     ; $7037: $01 $a0 $08
	rlca                                             ; $703a: $07
	dec d                                            ; $703b: $15
	pop bc                                           ; $703c: $c1
	ld e, e                                          ; $703d: $5b
	push hl                                          ; $703e: $e5
	inc sp                                           ; $703f: $33
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	add hl, bc                                       ; $7042: $09
	xor d                                            ; $7043: $aa
	ret nz                                           ; $7044: $c0

	ld de, $00e3                                     ; $7045: $11 $e3 $00
	ld e, h                                          ; $7048: $5c
	pop hl                                           ; $7049: $e1
	ld [bc], a                                       ; $704a: $02
	ld bc, $c0e8                                     ; $704b: $01 $e8 $c0
	ld bc, $08a0                                     ; $704e: $01 $a0 $08
	nop                                              ; $7051: $00
	ld bc, $01c0                                     ; $7052: $01 $c0 $01
	and b                                            ; $7055: $a0
	ld bc, $2807                                     ; $7056: $01 $07 $28
	pop hl                                           ; $7059: $e1
	ld [hl-], a                                      ; $705a: $32
	nop                                              ; $705b: $00
	ld e, l                                          ; $705c: $5d
	pop hl                                           ; $705d: $e1
	ld [bc], a                                       ; $705e: $02
	ld bc, $82e8                                     ; $705f: $01 $e8 $82
	ret nz                                           ; $7062: $c0

	dec de                                           ; $7063: $1b
	rst SubAFromHL                                          ; $7064: $d7
	ld [bc], a                                       ; $7065: $02
	ret nc                                           ; $7066: $d0

	pop de                                           ; $7067: $d1
	ld a, [hl+]                                      ; $7068: $2a
	ret nz                                           ; $7069: $c0

	ld bc, $08a0                                     ; $706a: $01 $a0 $08
	rlca                                             ; $706d: $07
	ld [hl], $c0                                     ; $706e: $36 $c0
	ld bc, $01a0                                     ; $7070: $01 $a0 $01
	rlca                                             ; $7073: $07
	ld a, [hl-]                                      ; $7074: $3a
	ret nz                                           ; $7075: $c0

	ld bc, $08a0                                     ; $7076: $01 $a0 $08
	rlca                                             ; $7079: $07
	ld b, d                                          ; $707a: $42
	ret nz                                           ; $707b: $c0

	ld bc, $01a0                                     ; $707c: $01 $a0 $01
	rlca                                             ; $707f: $07
	ld d, l                                          ; $7080: $55
	ret nz                                           ; $7081: $c0

	ld bc, $08a0                                     ; $7082: $01 $a0 $08
	rlca                                             ; $7085: $07
	ld e, c                                          ; $7086: $59
	ret nz                                           ; $7087: $c0

	ld bc, $01a0                                     ; $7088: $01 $a0 $01
	rlca                                             ; $708b: $07
	ld l, b                                          ; $708c: $68
	ret nz                                           ; $708d: $c0

	ld bc, $08a0                                     ; $708e: $01 $a0 $08
	ld bc, $02ee                                     ; $7091: $01 $ee $02
	jp nc, $1ed3                                     ; $7094: $d2 $d3 $1e

	ret nz                                           ; $7097: $c0

	ld bc, $08a0                                     ; $7098: $01 $a0 $08
	rlca                                             ; $709b: $07
	ld l, a                                          ; $709c: $6f
	ret nz                                           ; $709d: $c0

	ld bc, $01a0                                     ; $709e: $01 $a0 $01
	rlca                                             ; $70a1: $07
	ld a, [hl]                                       ; $70a2: $7e
	ret nz                                           ; $70a3: $c0

	ld bc, $08a0                                     ; $70a4: $01 $a0 $08
	rlca                                             ; $70a7: $07
	adc b                                            ; $70a8: $88
	ret nz                                           ; $70a9: $c0

	ld bc, $01a0                                     ; $70aa: $01 $a0 $01
	rlca                                             ; $70ad: $07
	sbc h                                            ; $70ae: $9c
	ret nz                                           ; $70af: $c0

	ld bc, $08a0                                     ; $70b0: $01 $a0 $08
	rlca                                             ; $70b3: $07
	and c                                            ; $70b4: $a1
	ld bc, $30d4                                     ; $70b5: $01 $d4 $30
	ret nz                                           ; $70b8: $c0

	ld bc, $01a0                                     ; $70b9: $01 $a0 $01
	rlca                                             ; $70bc: $07
	xor l                                            ; $70bd: $ad
	ret nz                                           ; $70be: $c0

	ld bc, $08a0                                     ; $70bf: $01 $a0 $08
	rlca                                             ; $70c2: $07
	or b                                             ; $70c3: $b0
	ret nz                                           ; $70c4: $c0

	ld bc, $01a0                                     ; $70c5: $01 $a0 $01
	rlca                                             ; $70c8: $07
	or [hl]                                          ; $70c9: $b6
	ret nz                                           ; $70ca: $c0

	ld bc, $08a0                                     ; $70cb: $01 $a0 $08
	rlca                                             ; $70ce: $07
	cp a                                             ; $70cf: $bf
	ret nz                                           ; $70d0: $c0

	ld bc, $01a0                                     ; $70d1: $01 $a0 $01
	ld b, $d2                                        ; $70d4: $06 $d2
	ret nz                                           ; $70d6: $c0

	ld bc, $08a0                                     ; $70d7: $01 $a0 $08
	rlca                                             ; $70da: $07
	jp nz, $01c0                                     ; $70db: $c2 $c0 $01

	and b                                            ; $70de: $a0
	ld bc, $d307                                     ; $70df: $01 $07 $d3
	ret nz                                           ; $70e2: $c0

	ld bc, $08a0                                     ; $70e3: $01 $a0 $08
	rlca                                             ; $70e6: $07
	call c, Call_084_5bc1                            ; $70e7: $dc $c1 $5b
	push hl                                          ; $70ea: $e5
	inc sp                                           ; $70eb: $33
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	add hl, bc                                       ; $70ee: $09
	cp h                                             ; $70ef: $bc
	ret nz                                           ; $70f0: $c0

	ld de, $00e3                                     ; $70f1: $11 $e3 $00
	ld e, h                                          ; $70f4: $5c
	pop hl                                           ; $70f5: $e1
	ld [bc], a                                       ; $70f6: $02
	ld bc, $c0e8                                     ; $70f7: $01 $e8 $c0
	ld bc, $08a0                                     ; $70fa: $01 $a0 $08
	nop                                              ; $70fd: $00
	ld bc, $01c0                                     ; $70fe: $01 $c0 $01
	and b                                            ; $7101: $a0
	ld bc, $2807                                     ; $7102: $01 $07 $28
	pop hl                                           ; $7105: $e1
	ld [hl-], a                                      ; $7106: $32
	nop                                              ; $7107: $00
	xor a                                            ; $7108: $af
	pop hl                                           ; $7109: $e1
	ld [bc], a                                       ; $710a: $02
	ld bc, $82e8                                     ; $710b: $01 $e8 $82
	ret nz                                           ; $710e: $c0

	dec de                                           ; $710f: $1b
	rst SubAFromHL                                          ; $7110: $d7
	ld [bc], a                                       ; $7111: $02
	ret nc                                           ; $7112: $d0

	pop de                                           ; $7113: $d1
	ld [hl], $c0                                     ; $7114: $36 $c0
	ld bc, $08a0                                     ; $7116: $01 $a0 $08
	rlca                                             ; $7119: $07
	db $ec                                           ; $711a: $ec
	ret nz                                           ; $711b: $c0

	ld bc, $01a0                                     ; $711c: $01 $a0 $01
	rlca                                             ; $711f: $07
	ldh a, [c]                                       ; $7120: $f2
	ret nz                                           ; $7121: $c0

	ld bc, $08a0                                     ; $7122: $01 $a0 $08
	rlca                                             ; $7125: $07
	db $fd                                           ; $7126: $fd
	ret nz                                           ; $7127: $c0

	ld bc, $01a0                                     ; $7128: $01 $a0 $01
	ld [$c007], sp                                   ; $712b: $08 $07 $c0
	ld bc, $08a0                                     ; $712e: $01 $a0 $08
	ld [$c010], sp                                   ; $7131: $08 $10 $c0
	ld bc, $01a0                                     ; $7134: $01 $a0 $01
	ld [$c01f], sp                                   ; $7137: $08 $1f $c0
	ld bc, $08a0                                     ; $713a: $01 $a0 $08
	ld [$c029], sp                                   ; $713d: $08 $29 $c0
	ld bc, $01a0                                     ; $7140: $01 $a0 $01
	ld [$c031], sp                                   ; $7143: $08 $31 $c0
	ld bc, $08a0                                     ; $7146: $01 $a0 $08
	ld bc, $02ee                                     ; $7149: $01 $ee $02
	jp nc, $2ad3                                     ; $714c: $d2 $d3 $2a

	ret nz                                           ; $714f: $c0

	ld bc, $08a0                                     ; $7150: $01 $a0 $08
	ld [$c03a], sp                                   ; $7153: $08 $3a $c0
	ld bc, $01a0                                     ; $7156: $01 $a0 $01
	rlca                                             ; $7159: $07
	ldh a, [c]                                       ; $715a: $f2
	ret nz                                           ; $715b: $c0

	ld bc, $08a0                                     ; $715c: $01 $a0 $08
	ld [$c03f], sp                                   ; $715f: $08 $3f $c0
	ld bc, $01a0                                     ; $7162: $01 $a0 $01
	ld [$c053], sp                                   ; $7165: $08 $53 $c0
	ld bc, $08a0                                     ; $7168: $01 $a0 $08
	ld [$c05d], sp                                   ; $716b: $08 $5d $c0
	ld bc, $01a0                                     ; $716e: $01 $a0 $01
	ld [$c066], sp                                   ; $7171: $08 $66 $c0
	ld bc, $08a0                                     ; $7174: $01 $a0 $08
	ld [$016e], sp                                   ; $7177: $08 $6e $01
	call nc, $c02a                                   ; $717a: $d4 $2a $c0
	ld bc, $08a0                                     ; $717d: $01 $a0 $08
	ld [$c03a], sp                                   ; $7180: $08 $3a $c0
	ld bc, $01a0                                     ; $7183: $01 $a0 $01
	rlca                                             ; $7186: $07
	ldh a, [c]                                       ; $7187: $f2
	ret nz                                           ; $7188: $c0

	ld bc, $08a0                                     ; $7189: $01 $a0 $08
	ld [$c082], sp                                   ; $718c: $08 $82 $c0
	ld bc, $01a0                                     ; $718f: $01 $a0 $01
	ld [$c093], sp                                   ; $7192: $08 $93 $c0
	ld bc, $08a0                                     ; $7195: $01 $a0 $08
	ld [$c09e], sp                                   ; $7198: $08 $9e $c0
	ld bc, $01a0                                     ; $719b: $01 $a0 $01
	ld [$c066], sp                                   ; $719e: $08 $66 $c0
	ld bc, $08a0                                     ; $71a1: $01 $a0 $08
	ld [$c16e], sp                                   ; $71a4: $08 $6e $c1
	ld e, e                                          ; $71a7: $5b
	push hl                                          ; $71a8: $e5
	inc sp                                           ; $71a9: $33
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	rlca                                             ; $71ac: $07
	rlca                                             ; $71ad: $07
	add hl, bc                                       ; $71ae: $09
	dec e                                            ; $71af: $1d
	ret nz                                           ; $71b0: $c0

	ld hl, $d8d2                                     ; $71b1: $21 $d2 $d8
	pop hl                                           ; $71b4: $e1
	ld [bc], a                                       ; $71b5: $02
	ld [bc], a                                       ; $71b6: $02
	db $10                                           ; $71b7: $10
	add d                                            ; $71b8: $82
	ret nz                                           ; $71b9: $c0

	add b                                            ; $71ba: $80
	ld bc, $03d3                                     ; $71bb: $01 $d3 $03
	db $e4                                           ; $71be: $e4
	ld [bc], a                                       ; $71bf: $02
	ld l, h                                          ; $71c0: $6c
	ld bc, $03d2                                     ; $71c1: $01 $d2 $03
	db $e4                                           ; $71c4: $e4
	nop                                              ; $71c5: $00
	jp hl                                            ; $71c6: $e9


	ld bc, $03d1                                     ; $71c7: $01 $d1 $03
	db $e4                                           ; $71ca: $e4
	nop                                              ; $71cb: $00
	ld [bc], a                                       ; $71cc: $02
	add hl, bc                                       ; $71cd: $09
	ret nz                                           ; $71ce: $c0

	sbc $00                                          ; $71cf: $de $00
	add b                                            ; $71d1: $80
	nop                                              ; $71d2: $00
	sub $83                                          ; $71d3: $d6 $83
	ret nz                                           ; $71d5: $c0

	dec de                                           ; $71d6: $1b
	ret c                                            ; $71d7: $d8

	ld [bc], a                                       ; $71d8: $02
	ret nc                                           ; $71d9: $d0

	pop de                                           ; $71da: $d1
	dec sp                                           ; $71db: $3b
	ret nz                                           ; $71dc: $c0

	ld bc, $09a0                                     ; $71dd: $01 $a0 $09
	nop                                              ; $71e0: $00
	ld bc, $01c0                                     ; $71e1: $01 $c0 $01
	and b                                            ; $71e4: $a0
	ld bc, $0200                                     ; $71e5: $01 $00 $02
	pop hl                                           ; $71e8: $e1
	ld [bc], a                                       ; $71e9: $02
	inc bc                                           ; $71ea: $03
	dec de                                           ; $71eb: $1b
	ret nz                                           ; $71ec: $c0

	ld bc, $09a0                                     ; $71ed: $01 $a0 $09
	nop                                              ; $71f0: $00
	ld b, $c0                                        ; $71f1: $06 $c0
	ld bc, $01a0                                     ; $71f3: $01 $a0 $01
	nop                                              ; $71f6: $00
	ld c, $e1                                        ; $71f7: $0e $e1
	ld [bc], a                                       ; $71f9: $02
	inc bc                                           ; $71fa: $03
	daa                                              ; $71fb: $27
	ret nz                                           ; $71fc: $c0

	ld bc, $09a0                                     ; $71fd: $01 $a0 $09
	nop                                              ; $7200: $00
	inc de                                           ; $7201: $13
	ret nz                                           ; $7202: $c0

	ld bc, $01a0                                     ; $7203: $01 $a0 $01
	nop                                              ; $7206: $00
	jr nz, @-$3e                                     ; $7207: $20 $c0

	ld bc, $09a0                                     ; $7209: $01 $a0 $09
	nop                                              ; $720c: $00
	ld h, $c0                                        ; $720d: $26 $c0
	ld bc, $01a0                                     ; $720f: $01 $a0 $01
	nop                                              ; $7212: $00
	jr nc, @-$1e                                     ; $7213: $30 $e0

	ld bc, $027a                                     ; $7215: $01 $7a $02
	jp nc, $3bd3                                     ; $7218: $d2 $d3 $3b

	ret nz                                           ; $721b: $c0

	ld bc, $09a0                                     ; $721c: $01 $a0 $09
	nop                                              ; $721f: $00
	ld b, c                                          ; $7220: $41
	ret nz                                           ; $7221: $c0

	ld bc, $01a0                                     ; $7222: $01 $a0 $01
	nop                                              ; $7225: $00
	ld [bc], a                                       ; $7226: $02
	pop hl                                           ; $7227: $e1
	ld [bc], a                                       ; $7228: $02
	inc bc                                           ; $7229: $03
	dec de                                           ; $722a: $1b
	ret nz                                           ; $722b: $c0

	ld bc, $09a0                                     ; $722c: $01 $a0 $09
	nop                                              ; $722f: $00
	ld b, $c0                                        ; $7230: $06 $c0
	ld bc, $01a0                                     ; $7232: $01 $a0 $01
	nop                                              ; $7235: $00
	ld c, $e1                                        ; $7236: $0e $e1
	ld [bc], a                                       ; $7238: $02
	inc bc                                           ; $7239: $03
	daa                                              ; $723a: $27
	ret nz                                           ; $723b: $c0

	ld bc, $09a0                                     ; $723c: $01 $a0 $09
	nop                                              ; $723f: $00

jr_084_7240:
	ld b, a                                          ; $7240: $47
	ret nz                                           ; $7241: $c0

	ld bc, $01a0                                     ; $7242: $01 $a0 $01
	nop                                              ; $7245: $00
	jr nz, @-$3e                                     ; $7246: $20 $c0

	ld bc, $09a0                                     ; $7248: $01 $a0 $09
	nop                                              ; $724b: $00
	ld d, h                                          ; $724c: $54
	ret nz                                           ; $724d: $c0

	ld bc, $01a0                                     ; $724e: $01 $a0 $01
	nop                                              ; $7251: $00
	jr nc, @-$1e                                     ; $7252: $30 $e0

	ld bc, $0174                                     ; $7254: $01 $74 $01
	call nc, $c035                                   ; $7257: $d4 $35 $c0
	ld bc, $01a0                                     ; $725a: $01 $a0 $01
	nop                                              ; $725d: $00
	ld e, c                                          ; $725e: $59
	pop hl                                           ; $725f: $e1
	ld [bc], a                                       ; $7260: $02
	inc bc                                           ; $7261: $03
	dec de                                           ; $7262: $1b
	ret nz                                           ; $7263: $c0

	ld bc, $09a0                                     ; $7264: $01 $a0 $09
	nop                                              ; $7267: $00
	ld b, $c0                                        ; $7268: $06 $c0
	ld bc, $01a0                                     ; $726a: $01 $a0 $01
	nop                                              ; $726d: $00
	ld c, $e1                                        ; $726e: $0e $e1
	ld [bc], a                                       ; $7270: $02
	inc bc                                           ; $7271: $03
	daa                                              ; $7272: $27
	ret nz                                           ; $7273: $c0

	ld bc, $09a0                                     ; $7274: $01 $a0 $09
	nop                                              ; $7277: $00
	ld e, a                                          ; $7278: $5f
	ret nz                                           ; $7279: $c0

	ld bc, $01a0                                     ; $727a: $01 $a0 $01
	nop                                              ; $727d: $00
	jr nz, jr_084_7240                               ; $727e: $20 $c0

	ld bc, $09a0                                     ; $7280: $01 $a0 $09
	nop                                              ; $7283: $00
	ld l, h                                          ; $7284: $6c
	ret nz                                           ; $7285: $c0

	ld bc, $01a0                                     ; $7286: $01 $a0 $01
	nop                                              ; $7289: $00
	jr nc, @-$1e                                     ; $728a: $30 $e0

	ld bc, $0175                                     ; $728c: $01 $75 $01
	push de                                          ; $728f: $d5
	add hl, de                                       ; $7290: $19
	ret nz                                           ; $7291: $c0

	ld bc, $01a0                                     ; $7292: $01 $a0 $01
	nop                                              ; $7295: $00
	ld [hl], e                                       ; $7296: $73
	ret nz                                           ; $7297: $c0

	ld bc, $09a0                                     ; $7298: $01 $a0 $09
	nop                                              ; $729b: $00
	ld [hl], a                                       ; $729c: $77
	ret nz                                           ; $729d: $c0

	ld bc, $01a0                                     ; $729e: $01 $a0 $01
	nop                                              ; $72a1: $00
	ld a, [hl]                                       ; $72a2: $7e
	ldh [rSB], a                                     ; $72a3: $e0 $01
	ld [hl], d                                       ; $72a5: $72
	ld b, b                                          ; $72a6: $40
	add b                                            ; $72a7: $80
	nop                                              ; $72a8: $00
	sub $e5                                          ; $72a9: $d6 $e5
	inc sp                                           ; $72ab: $33
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	add hl, bc                                       ; $72ae: $09
	ret nz                                           ; $72af: $c0

	sbc $00                                          ; $72b0: $de $00
	add b                                            ; $72b2: $80
	nop                                              ; $72b3: $00
	rst SubAFromHL                                          ; $72b4: $d7
	add e                                            ; $72b5: $83
	ret nz                                           ; $72b6: $c0

	dec de                                           ; $72b7: $1b
	ret c                                            ; $72b8: $d8

	ld [bc], a                                       ; $72b9: $02
	ret nc                                           ; $72ba: $d0

	pop de                                           ; $72bb: $d1
	dec sp                                           ; $72bc: $3b
	ret nz                                           ; $72bd: $c0

	ld bc, $09a0                                     ; $72be: $01 $a0 $09
	nop                                              ; $72c1: $00
	ld bc, $01c0                                     ; $72c2: $01 $c0 $01
	and b                                            ; $72c5: $a0
	ld bc, $0200                                     ; $72c6: $01 $00 $02
	pop hl                                           ; $72c9: $e1
	ld [bc], a                                       ; $72ca: $02
	inc bc                                           ; $72cb: $03
	dec de                                           ; $72cc: $1b
	ret nz                                           ; $72cd: $c0

	ld bc, $09a0                                     ; $72ce: $01 $a0 $09
	nop                                              ; $72d1: $00
	add h                                            ; $72d2: $84
	ret nz                                           ; $72d3: $c0

	ld bc, $01a0                                     ; $72d4: $01 $a0 $01
	nop                                              ; $72d7: $00
	adc l                                            ; $72d8: $8d
	pop hl                                           ; $72d9: $e1
	ld [bc], a                                       ; $72da: $02
	inc bc                                           ; $72db: $03
	daa                                              ; $72dc: $27
	ret nz                                           ; $72dd: $c0

	ld bc, $09a0                                     ; $72de: $01 $a0 $09
	nop                                              ; $72e1: $00
	sub h                                            ; $72e2: $94
	ret nz                                           ; $72e3: $c0

	ld bc, $01a0                                     ; $72e4: $01 $a0 $01
	nop                                              ; $72e7: $00
	and d                                            ; $72e8: $a2
	ret nz                                           ; $72e9: $c0

	ld bc, $09a0                                     ; $72ea: $01 $a0 $09
	nop                                              ; $72ed: $00
	ld h, $c0                                        ; $72ee: $26 $c0
	ld bc, $01a0                                     ; $72f0: $01 $a0 $01
	nop                                              ; $72f3: $00
	xor l                                            ; $72f4: $ad
	ldh [rP1], a                                     ; $72f5: $e0 $00
	sbc c                                            ; $72f7: $99
	ld [bc], a                                       ; $72f8: $02
	jp nc, $3bd3                                     ; $72f9: $d2 $d3 $3b

	ret nz                                           ; $72fc: $c0

	ld bc, $09a0                                     ; $72fd: $01 $a0 $09
	nop                                              ; $7300: $00
	ld b, c                                          ; $7301: $41
	ret nz                                           ; $7302: $c0

	ld bc, $01a0                                     ; $7303: $01 $a0 $01
	nop                                              ; $7306: $00
	ld [bc], a                                       ; $7307: $02
	pop hl                                           ; $7308: $e1
	ld [bc], a                                       ; $7309: $02
	inc bc                                           ; $730a: $03
	dec de                                           ; $730b: $1b
	ret nz                                           ; $730c: $c0

	ld bc, $09a0                                     ; $730d: $01 $a0 $09
	nop                                              ; $7310: $00
	add h                                            ; $7311: $84
	ret nz                                           ; $7312: $c0

	ld bc, $01a0                                     ; $7313: $01 $a0 $01
	nop                                              ; $7316: $00
	adc l                                            ; $7317: $8d
	pop hl                                           ; $7318: $e1
	ld [bc], a                                       ; $7319: $02
	inc bc                                           ; $731a: $03
	daa                                              ; $731b: $27
	ret nz                                           ; $731c: $c0

	ld bc, $09a0                                     ; $731d: $01 $a0 $09
	nop                                              ; $7320: $00
	cp l                                             ; $7321: $bd
	ret nz                                           ; $7322: $c0

	ld bc, $01a0                                     ; $7323: $01 $a0 $01
	nop                                              ; $7326: $00
	and d                                            ; $7327: $a2
	ret nz                                           ; $7328: $c0

	ld bc, $09a0                                     ; $7329: $01 $a0 $09
	nop                                              ; $732c: $00
	ld d, h                                          ; $732d: $54
	ret nz                                           ; $732e: $c0

	ld bc, $01a0                                     ; $732f: $01 $a0 $01
	nop                                              ; $7332: $00
	xor l                                            ; $7333: $ad
	ldh [rP1], a                                     ; $7334: $e0 $00
	sub e                                            ; $7336: $93
	ld bc, $35d4                                     ; $7337: $01 $d4 $35
	ret nz                                           ; $733a: $c0

	ld bc, $01a0                                     ; $733b: $01 $a0 $01
	nop                                              ; $733e: $00
	ld e, c                                          ; $733f: $59
	pop hl                                           ; $7340: $e1
	ld [bc], a                                       ; $7341: $02
	inc bc                                           ; $7342: $03
	dec de                                           ; $7343: $1b
	ret nz                                           ; $7344: $c0

	ld bc, $09a0                                     ; $7345: $01 $a0 $09
	nop                                              ; $7348: $00
	add h                                            ; $7349: $84
	ret nz                                           ; $734a: $c0

	ld bc, $01a0                                     ; $734b: $01 $a0 $01
	nop                                              ; $734e: $00
	adc l                                            ; $734f: $8d
	pop hl                                           ; $7350: $e1

jr_084_7351:
	ld [bc], a                                       ; $7351: $02
	inc bc                                           ; $7352: $03
	daa                                              ; $7353: $27
	ret nz                                           ; $7354: $c0

	ld bc, $09a0                                     ; $7355: $01 $a0 $09
	nop                                              ; $7358: $00
	set 0, b                                         ; $7359: $cb $c0
	ld bc, $01a0                                     ; $735b: $01 $a0 $01
	nop                                              ; $735e: $00
	and d                                            ; $735f: $a2
	ret nz                                           ; $7360: $c0

	ld bc, $09a0                                     ; $7361: $01 $a0 $09
	nop                                              ; $7364: $00
	ld l, h                                          ; $7365: $6c
	ret nz                                           ; $7366: $c0

	ld bc, $01a0                                     ; $7367: $01 $a0 $01
	nop                                              ; $736a: $00
	xor l                                            ; $736b: $ad
	ldh [rP1], a                                     ; $736c: $e0 $00
	sub h                                            ; $736e: $94
	ld bc, $19d5                                     ; $736f: $01 $d5 $19
	ret nz                                           ; $7372: $c0

	ld bc, $01a0                                     ; $7373: $01 $a0 $01
	nop                                              ; $7376: $00
	ld [hl], e                                       ; $7377: $73
	ret nz                                           ; $7378: $c0

	ld bc, $09a0                                     ; $7379: $01 $a0 $09
	nop                                              ; $737c: $00
	ld [hl], a                                       ; $737d: $77
	ret nz                                           ; $737e: $c0

	ld bc, $01a0                                     ; $737f: $01 $a0 $01
	nop                                              ; $7382: $00
	reti                                             ; $7383: $d9


	ldh [rP1], a                                     ; $7384: $e0 $00
	sub c                                            ; $7386: $91
	ld b, b                                          ; $7387: $40
	add b                                            ; $7388: $80
	nop                                              ; $7389: $00

jr_084_738a:
	rst SubAFromHL                                          ; $738a: $d7
	push hl                                          ; $738b: $e5
	inc sp                                           ; $738c: $33
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	jr c, jr_084_7351                                ; $738f: $38 $c0

	ld bc, $09a0                                     ; $7391: $01 $a0 $09
	nop                                              ; $7394: $00
	db $e4                                           ; $7395: $e4
	ret nz                                           ; $7396: $c0

	ld bc, $01a0                                     ; $7397: $01 $a0 $01
	nop                                              ; $739a: $00
	ldh a, [c]                                       ; $739b: $f2
	ret nz                                           ; $739c: $c0

	ld bc, $09a0                                     ; $739d: $01 $a0 $09
	nop                                              ; $73a0: $00
	db $fc                                           ; $73a1: $fc
	ret nz                                           ; $73a2: $c0

	ld bc, $01a0                                     ; $73a3: $01 $a0 $01
	ld bc, $c004                                     ; $73a6: $01 $04 $c0
	ld bc, $09a0                                     ; $73a9: $01 $a0 $09
	ld bc, $c009                                     ; $73ac: $01 $09 $c0
	ld bc, $01a0                                     ; $73af: $01 $a0 $01
	ld bc, $c011                                     ; $73b2: $01 $11 $c0
	ld bc, $09a0                                     ; $73b5: $01 $a0 $09
	ld bc, $c01e                                     ; $73b8: $01 $1e $c0
	ld bc, $01a0                                     ; $73bb: $01 $a0 $01
	ld bc, $c025                                     ; $73be: $01 $25 $c0
	ld bc, $09a0                                     ; $73c1: $01 $a0 $09
	ld bc, $c128                                     ; $73c4: $01 $28 $c1
	ld e, e                                          ; $73c7: $5b
	jr c, jr_084_738a                                ; $73c8: $38 $c0

	ld bc, $09a0                                     ; $73ca: $01 $a0 $09
	ld bc, $c031                                     ; $73cd: $01 $31 $c0
	ld bc, $01a0                                     ; $73d0: $01 $a0 $01
	nop                                              ; $73d3: $00
	ldh a, [c]                                       ; $73d4: $f2
	ret nz                                           ; $73d5: $c0

	ld bc, $09a0                                     ; $73d6: $01 $a0 $09
	nop                                              ; $73d9: $00
	db $fc                                           ; $73da: $fc
	ret nz                                           ; $73db: $c0

	ld bc, $01a0                                     ; $73dc: $01 $a0 $01
	ld bc, $c004                                     ; $73df: $01 $04 $c0
	ld bc, $09a0                                     ; $73e2: $01 $a0 $09
	ld bc, $c03f                                     ; $73e5: $01 $3f $c0
	ld bc, $01a0                                     ; $73e8: $01 $a0 $01
	ld bc, $c011                                     ; $73eb: $01 $11 $c0
	ld bc, $09a0                                     ; $73ee: $01 $a0 $09
	ld bc, $c047                                     ; $73f1: $01 $47 $c0
	ld bc, $01a0                                     ; $73f4: $01 $a0 $01
	ld bc, $c025                                     ; $73f7: $01 $25 $c0
	ld bc, $09a0                                     ; $73fa: $01 $a0 $09
	ld bc, $c14d                                     ; $73fd: $01 $4d $c1
	ld e, e                                          ; $7400: $5b
	inc d                                            ; $7401: $14
	ret nz                                           ; $7402: $c0

	ld bc, $09a0                                     ; $7403: $01 $a0 $09
	ld bc, $c055                                     ; $7406: $01 $55 $c0
	ld bc, $01a0                                     ; $7409: $01 $a0 $01
	ld bc, $c064                                     ; $740c: $01 $64 $c0
	ld bc, $09a0                                     ; $740f: $01 $a0 $09
	ld bc, $c168                                     ; $7412: $01 $68 $c1
	ld e, e                                          ; $7415: $5b
	inc d                                            ; $7416: $14
	ret nz                                           ; $7417: $c0

	ld bc, $09a0                                     ; $7418: $01 $a0 $09
	ld bc, $c071                                     ; $741b: $01 $71 $c0
	ld bc, $01a0                                     ; $741e: $01 $a0 $01
	ld bc, $c184                                     ; $7421: $01 $84 $c1
	ld e, e                                          ; $7424: $5b
	ret nz                                           ; $7425: $c0

	ld bc, $01a0                                     ; $7426: $01 $a0 $01
	ld bc, $0987                                     ; $7429: $01 $87 $09
	add d                                            ; $742c: $82
	add e                                            ; $742d: $83
	ret nz                                           ; $742e: $c0

	dec de                                           ; $742f: $1b
	ret c                                            ; $7430: $d8

	ld [bc], a                                       ; $7431: $02
	ret nc                                           ; $7432: $d0

	pop de                                           ; $7433: $d1
	daa                                              ; $7434: $27
	ret nz                                           ; $7435: $c0

	ld bc, $09a0                                     ; $7436: $01 $a0 $09
	ld bc, $c08d                                     ; $7439: $01 $8d $c0
	ld bc, $01a0                                     ; $743c: $01 $a0 $01
	ld bc, $c092                                     ; $743f: $01 $92 $c0
	ld bc, $09a0                                     ; $7442: $01 $a0 $09
	ld bc, $c09b                                     ; $7445: $01 $9b $c0
	ld bc, $01a0                                     ; $7448: $01 $a0 $01
	ld bc, $c0ad                                     ; $744b: $01 $ad $c0
	ld bc, $09a0                                     ; $744e: $01 $a0 $09
	ld bc, $c0b4                                     ; $7451: $01 $b4 $c0
	ld bc, $01a0                                     ; $7454: $01 $a0 $01
	ld bc, $e0b9                                     ; $7457: $01 $b9 $e0
	ld [$026a], sp                                   ; $745a: $08 $6a $02
	jp nc, $27d3                                     ; $745d: $d2 $d3 $27

	ret nz                                           ; $7460: $c0

	ld bc, $09a0                                     ; $7461: $01 $a0 $09
	ld bc, $c08d                                     ; $7464: $01 $8d $c0
	ld bc, $01a0                                     ; $7467: $01 $a0 $01
	ld bc, $c092                                     ; $746a: $01 $92 $c0
	ld bc, $09a0                                     ; $746d: $01 $a0 $09
	ld bc, $c0bf                                     ; $7470: $01 $bf $c0
	ld bc, $01a0                                     ; $7473: $01 $a0 $01
	ld bc, $c0cf                                     ; $7476: $01 $cf $c0
	ld bc, $09a0                                     ; $7479: $01 $a0 $09
	ld bc, $c0d4                                     ; $747c: $01 $d4 $c0
	ld bc, $01a0                                     ; $747f: $01 $a0 $01
	ld bc, $e0b9                                     ; $7482: $01 $b9 $e0
	ld [$0154], sp                                   ; $7485: $08 $54 $01
	call nc, $c01b                                   ; $7488: $d4 $1b $c0
	ld bc, $09a0                                     ; $748b: $01 $a0 $09
	ld bc, $c0de                                     ; $748e: $01 $de $c0
	ld bc, $01a0                                     ; $7491: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $7494: $01 $e2 $c0
	ld bc, $09a0                                     ; $7497: $01 $a0 $09
	ld bc, $c0e9                                     ; $749a: $01 $e9 $c0
	ld bc, $01a0                                     ; $749d: $01 $a0 $01
	ld bc, $e0f5                                     ; $74a0: $01 $f5 $e0
	ld [$014b], sp                   ; $74a3: $08 $4b $01
	push de                                          ; $74a6: $d5
	inc bc                                           ; $74a7: $03
	ldh [$08], a                                     ; $74a8: $e0 $08
	ld e, d                                          ; $74aa: $5a
	push hl                                          ; $74ab: $e5
	inc sp                                           ; $74ac: $33
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	add hl, bc                                       ; $74af: $09
	dec h                                            ; $74b0: $25
	ret nz                                           ; $74b1: $c0

	ld hl, $d8d2                                     ; $74b2: $21 $d2 $d8
	pop hl                                           ; $74b5: $e1
	ld [bc], a                                       ; $74b6: $02
	ld [bc], a                                       ; $74b7: $02
	db $10                                           ; $74b8: $10
	add d                                            ; $74b9: $82
	ret nz                                           ; $74ba: $c0

	add b                                            ; $74bb: $80
	ld bc, $07d3                                     ; $74bc: $01 $d3 $07
	ret nz                                           ; $74bf: $c0

	ld [hl+], a                                      ; $74c0: $22
	jp nc, $e4d8                                     ; $74c1: $d2 $d8 $e4

	ld [bc], a                                       ; $74c4: $02
	jr @+$03                                         ; $74c5: $18 $01

	jp nc, $e403                                     ; $74c7: $d2 $03 $e4

	ld bc, $0136                                     ; $74ca: $01 $36 $01
	pop de                                           ; $74cd: $d1
	rlca                                             ; $74ce: $07
	ret nz                                           ; $74cf: $c0

	ld [hl+], a                                      ; $74d0: $22
	jp nc, $e4d8                                     ; $74d1: $d2 $d8 $e4

	nop                                              ; $74d4: $00
	ld [bc], a                                       ; $74d5: $02
	add hl, bc                                       ; $74d6: $09
	ret nz                                           ; $74d7: $c0

	rst SubAFromBC                                          ; $74d8: $e7
	add e                                            ; $74d9: $83
	ret nz                                           ; $74da: $c0

	dec de                                           ; $74db: $1b
	ret c                                            ; $74dc: $d8

	ld [bc], a                                       ; $74dd: $02
	ret nc                                           ; $74de: $d0

	pop de                                           ; $74df: $d1
	ld c, [hl]                                       ; $74e0: $4e
	ret nz                                           ; $74e1: $c0

	ld bc, $09a0                                     ; $74e2: $01 $a0 $09
	nop                                              ; $74e5: $00
	ld bc, $01c0                                     ; $74e6: $01 $c0 $01
	and b                                            ; $74e9: $a0
	ld bc, $ff01                                     ; $74ea: $01 $01 $ff
	ret nz                                           ; $74ed: $c0

	ld bc, $09a0                                     ; $74ee: $01 $a0 $09
	ld [bc], a                                       ; $74f1: $02
	rlca                                             ; $74f2: $07
	ret nz                                           ; $74f3: $c0

	ld bc, $01a0                                     ; $74f4: $01 $a0 $01
	ld [bc], a                                       ; $74f7: $02
	rrca                                             ; $74f8: $0f
	ret nz                                           ; $74f9: $c0

	ld bc, $09a0                                     ; $74fa: $01 $a0 $09
	ld [bc], a                                       ; $74fd: $02
	rla                                              ; $74fe: $17
	ret nz                                           ; $74ff: $c0

	ld bc, $01a0                                     ; $7500: $01 $a0 $01
	ld [bc], a                                       ; $7503: $02
	add hl, de                                       ; $7504: $19
	ret nz                                           ; $7505: $c0

	ld bc, $09a0                                     ; $7506: $01 $a0 $09
	ld [bc], a                                       ; $7509: $02
	dec hl                                           ; $750a: $2b
	ldh [rP1], a                                     ; $750b: $e0 $00
	or h                                             ; $750d: $b4
	ret nz                                           ; $750e: $c0

	ld bc, $09a0                                     ; $750f: $01 $a0 $09
	ld [bc], a                                       ; $7512: $02
	inc [hl]                                         ; $7513: $34
	ldh [rP1], a                                     ; $7514: $e0 $00
	db $e4                                           ; $7516: $e4
	ret nz                                           ; $7517: $c0

	ld bc, $09a0                                     ; $7518: $01 $a0 $09
	ld [bc], a                                       ; $751b: $02
	ld a, $e0                                        ; $751c: $3e $e0
	nop                                              ; $751e: $00
	ret z                                            ; $751f: $c8

	ret nz                                           ; $7520: $c0

	ld bc, $09a0                                     ; $7521: $01 $a0 $09
	ld [bc], a                                       ; $7524: $02
	ld b, h                                          ; $7525: $44
	ret nz                                           ; $7526: $c0

	ld bc, $01a0                                     ; $7527: $01 $a0 $01
	ld [bc], a                                       ; $752a: $02
	ld d, b                                          ; $752b: $50
	ldh [rTAC], a                                    ; $752c: $e0 $07
	sub a                                            ; $752e: $97
	ld [bc], a                                       ; $752f: $02
	jp nc, Jump_084_4ed3                             ; $7530: $d2 $d3 $4e

	ret nz                                           ; $7533: $c0

	ld bc, $09a0                                     ; $7534: $01 $a0 $09
	nop                                              ; $7537: $00
	ld b, c                                          ; $7538: $41
	ret nz                                           ; $7539: $c0

	ld bc, $01a0                                     ; $753a: $01 $a0 $01
	ld bc, $c0ff                                     ; $753d: $01 $ff $c0
	ld bc, $09a0                                     ; $7540: $01 $a0 $09
	ld [bc], a                                       ; $7543: $02
	ld e, h                                          ; $7544: $5c
	ret nz                                           ; $7545: $c0

	ld bc, $01a0                                     ; $7546: $01 $a0 $01
	ld [bc], a                                       ; $7549: $02
	rrca                                             ; $754a: $0f
	ret nz                                           ; $754b: $c0

	ld bc, $09a0                                     ; $754c: $01 $a0 $09
	ld [bc], a                                       ; $754f: $02
	ld h, b                                          ; $7550: $60
	ret nz                                           ; $7551: $c0

	ld bc, $01a0                                     ; $7552: $01 $a0 $01
	ld [bc], a                                       ; $7555: $02
	add hl, de                                       ; $7556: $19
	ret nz                                           ; $7557: $c0

	ld bc, $09a0                                     ; $7558: $01 $a0 $09
	ld [bc], a                                       ; $755b: $02
	ld h, h                                          ; $755c: $64
	ldh [rP1], a                                     ; $755d: $e0 $00
	ld h, d                                          ; $755f: $62
	ret nz                                           ; $7560: $c0

	ld bc, $09a0                                     ; $7561: $01 $a0 $09
	ld [bc], a                                       ; $7564: $02
	ld l, [hl]                                       ; $7565: $6e
	ldh [rP1], a                                     ; $7566: $e0 $00
	sub d                                            ; $7568: $92
	ret nz                                           ; $7569: $c0

	ld bc, $09a0                                     ; $756a: $01 $a0 $09
	ld [bc], a                                       ; $756d: $02
	ld [hl], d                                       ; $756e: $72
	ldh [rP1], a                                     ; $756f: $e0 $00
	halt                                             ; $7571: $76
	ret nz                                           ; $7572: $c0

	ld bc, $09a0                                     ; $7573: $01 $a0 $09
	ld bc, $c0d4                                     ; $7576: $01 $d4 $c0
	ld bc, $01a0                                     ; $7579: $01 $a0 $01
	ld [bc], a                                       ; $757c: $02
	ld d, b                                          ; $757d: $50
	ldh [rTAC], a                                    ; $757e: $e0 $07
	ld e, d                                          ; $7580: $5a
	ld bc, $21d4                                     ; $7581: $01 $d4 $21
	ret nz                                           ; $7584: $c0

	ld bc, $09a0                                     ; $7585: $01 $a0 $09
	ld [bc], a                                       ; $7588: $02
	ld [hl], a                                       ; $7589: $77
	ret nz                                           ; $758a: $c0

	ld bc, $01a0                                     ; $758b: $01 $a0 $01
	ld [bc], a                                       ; $758e: $02
	add l                                            ; $758f: $85
	ret nz                                           ; $7590: $c0

	ld bc, $09a0                                     ; $7591: $01 $a0 $09
	ld [bc], a                                       ; $7594: $02

jr_084_7595:
	adc l                                            ; $7595: $8d
	ldh [rP1], a                                     ; $7596: $e0 $00
	add hl, hl                                       ; $7598: $29
	ret nz                                           ; $7599: $c0

	ld bc, $09a0                                     ; $759a: $01 $a0 $09
	ld [bc], a                                       ; $759d: $02
	sub l                                            ; $759e: $95
	ldh [rP1], a                                     ; $759f: $e0 $00
	ld e, c                                          ; $75a1: $59
	ldh [rTAC], a                                    ; $75a2: $e0 $07
	ld c, e                                          ; $75a4: $4b
	ld bc, $14d5                                     ; $75a5: $01 $d5 $14
	ret nz                                           ; $75a8: $c0

	ld bc, $09a0                                     ; $75a9: $01 $a0 $09
	ld [bc], a                                       ; $75ac: $02
	sbc c                                            ; $75ad: $99
	ret nz                                           ; $75ae: $c0

	ld bc, $01a0                                     ; $75af: $01 $a0 $01
	ld [bc], a                                       ; $75b2: $02
	sbc [hl]                                         ; $75b3: $9e
	ret nz                                           ; $75b4: $c0

	ld bc, $09a0                                     ; $75b5: $01 $a0 $09
	ld [bc], a                                       ; $75b8: $02
	xor h                                            ; $75b9: $ac
	pop bc                                           ; $75ba: $c1
	ld e, e                                          ; $75bb: $5b
	push hl                                          ; $75bc: $e5
	inc sp                                           ; $75bd: $33
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	dec h                                            ; $75c0: $25
	pop bc                                           ; $75c1: $c1
	dec sp                                           ; $75c2: $3b
	pop bc                                           ; $75c3: $c1
	ld h, l                                          ; $75c4: $65
	ret nc                                           ; $75c5: $d0

	ret nz                                           ; $75c6: $c0

	add hl, bc                                       ; $75c7: $09
	db $e3                                           ; $75c8: $e3
	nop                                              ; $75c9: $00
	rrca                                             ; $75ca: $0f
	ret nz                                           ; $75cb: $c0

	ld de, $00e3                                     ; $75cc: $11 $e3 $00
	ld b, d                                          ; $75cf: $42
	pop hl                                           ; $75d0: $e1
	ld [bc], a                                       ; $75d1: $02
	ld [bc], a                                       ; $75d2: $02
	jr jr_084_7595                                   ; $75d3: $18 $c0

	ld bc, $01a0                                     ; $75d5: $01 $a0 $01
	ld [bc], a                                       ; $75d8: $02
	or c                                             ; $75d9: $b1
	ret nz                                           ; $75da: $c0

	ld bc, $09a0                                     ; $75db: $01 $a0 $09
	ld [bc], a                                       ; $75de: $02
	cp d                                             ; $75df: $ba
	ret nz                                           ; $75e0: $c0

	ld bc, $01a0                                     ; $75e1: $01 $a0 $01
	ld [bc], a                                       ; $75e4: $02
	rst JumpTable                                          ; $75e5: $c7

jr_084_75e6:
	ld [de], a                                       ; $75e6: $12
	ret nz                                           ; $75e7: $c0

	ld bc, $01a0                                     ; $75e8: $01 $a0 $01
	ld [bc], a                                       ; $75eb: $02
	ret nc                                           ; $75ec: $d0

	ret nz                                           ; $75ed: $c0

	ld bc, $09a0                                     ; $75ee: $01 $a0 $09
	ld [bc], a                                       ; $75f1: $02

jr_084_75f2:
	jp hl                                            ; $75f2: $e9


	ret nz                                           ; $75f3: $c0

	ld bc, $01a0                                     ; $75f4: $01 $a0 $01
	ld [bc], a                                       ; $75f7: $02
	ldh a, [rTMA]                                    ; $75f8: $f0 $06
	ret nz                                           ; $75fa: $c0

	ld bc, $01a0                                     ; $75fb: $01 $a0 $01
	ld [bc], a                                       ; $75fe: $02
	db $fd                                           ; $75ff: $fd
	add hl, bc                                       ; $7600: $09
	ret nz                                           ; $7601: $c0

	reti                                             ; $7602: $d9


	add e                                            ; $7603: $83
	ret nz                                           ; $7604: $c0

	dec de                                           ; $7605: $1b
	ret c                                            ; $7606: $d8

	ld [bc], a                                       ; $7607: $02
	ret nc                                           ; $7608: $d0

	pop de                                           ; $7609: $d1
	ld b, c                                          ; $760a: $41
	ret nz                                           ; $760b: $c0

	ld bc, $09a0                                     ; $760c: $01 $a0 $09
	nop                                              ; $760f: $00
	ld bc, $01c0                                     ; $7610: $01 $c0 $01
	and b                                            ; $7613: $a0
	ld bc, $1203                                     ; $7614: $01 $03 $12
	ret nz                                           ; $7617: $c0

	ld bc, $09a0                                     ; $7618: $01 $a0 $09
	inc bc                                           ; $761b: $03
	rla                                              ; $761c: $17
	pop hl                                           ; $761d: $e1
	ld [hl-], a                                      ; $761e: $32
	nop                                              ; $761f: $00
	add hl, hl                                       ; $7620: $29
	pop hl                                           ; $7621: $e1
	ld [bc], a                                       ; $7622: $02
	ld [bc], a                                       ; $7623: $02
	jr jr_084_75e6                                   ; $7624: $18 $c0

	ld bc, $09a0                                     ; $7626: $01 $a0 $09
	inc bc                                           ; $7629: $03
	dec de                                           ; $762a: $1b

jr_084_762b:
	ret nz                                           ; $762b: $c0

	ld bc, $01a0                                     ; $762c: $01 $a0 $01
	inc bc                                           ; $762f: $03
	jr z, jr_084_75f2                                ; $7630: $28 $c0

	ld bc, $09a0                                     ; $7632: $01 $a0 $09
	inc bc                                           ; $7635: $03
	ld sp, $01c0                                     ; $7636: $31 $c0 $01
	and b                                            ; $7639: $a0
	ld bc, $3903                                     ; $763a: $01 $03 $39
	ret nz                                           ; $763d: $c0

	ld bc, $09a0                                     ; $763e: $01 $a0 $09
	inc bc                                           ; $7641: $03
	dec sp                                           ; $7642: $3b
	ret nz                                           ; $7643: $c0

	ld bc, $01a0                                     ; $7644: $01 $a0 $01
	inc bc                                           ; $7647: $03
	ccf                                              ; $7648: $3f
	ldh [rTMA], a                                    ; $7649: $e0 $06
	ld a, d                                          ; $764b: $7a
	ld [bc], a                                       ; $764c: $02
	jp nc, $35d3                                     ; $764d: $d2 $d3 $35

	ret nz                                           ; $7650: $c0

	ld bc, $09a0                                     ; $7651: $01 $a0 $09
	nop                                              ; $7654: $00
	ld b, c                                          ; $7655: $41
	ret nz                                           ; $7656: $c0

	ld bc, $01a0                                     ; $7657: $01 $a0 $01
	inc bc                                           ; $765a: $03
	ld [de], a                                       ; $765b: $12
	ret nz                                           ; $765c: $c0

	ld bc, $09a0                                     ; $765d: $01 $a0 $09
	inc bc                                           ; $7660: $03
	rla                                              ; $7661: $17
	pop hl                                           ; $7662: $e1

jr_084_7663:
	ld [hl-], a                                      ; $7663: $32
	nop                                              ; $7664: $00
	add hl, hl                                       ; $7665: $29
	pop hl                                           ; $7666: $e1
	ld [bc], a                                       ; $7667: $02
	ld [bc], a                                       ; $7668: $02
	jr jr_084_762b                                   ; $7669: $18 $c0

	ld bc, $09a0                                     ; $766b: $01 $a0 $09
	inc bc                                           ; $766e: $03
	ld c, e                                          ; $766f: $4b
	ret nz                                           ; $7670: $c0

	ld bc, $01a0                                     ; $7671: $01 $a0 $01
	inc bc                                           ; $7674: $03
	ld d, l                                          ; $7675: $55
	ret nz                                           ; $7676: $c0

	ld bc, $09a0                                     ; $7677: $01 $a0 $09
	ld bc, $c0d4                                     ; $767a: $01 $d4 $c0
	ld bc, $01a0                                     ; $767d: $01 $a0 $01
	inc bc                                           ; $7680: $03
	ccf                                              ; $7681: $3f
	ldh [rTMA], a                                    ; $7682: $e0 $06
	ld d, [hl]                                       ; $7684: $56
	ld bc, $29d4                                     ; $7685: $01 $d4 $29
	ret nz                                           ; $7688: $c0

	ld bc, $09a0                                     ; $7689: $01 $a0 $09
	inc bc                                           ; $768c: $03
	ld e, [hl]                                       ; $768d: $5e
	ret nz                                           ; $768e: $c0

	ld bc, $01a0                                     ; $768f: $01 $a0 $01
	inc bc                                           ; $7692: $03
	ld [de], a                                       ; $7693: $12
	ret nz                                           ; $7694: $c0

	ld bc, $09a0                                     ; $7695: $01 $a0 $09
	inc bc                                           ; $7698: $03
	ld h, c                                          ; $7699: $61
	pop hl                                           ; $769a: $e1
	ld [hl-], a                                      ; $769b: $32
	nop                                              ; $769c: $00
	add hl, hl                                       ; $769d: $29
	pop hl                                           ; $769e: $e1
	ld [bc], a                                       ; $769f: $02
	ld [bc], a                                       ; $76a0: $02
	jr jr_084_7663                                   ; $76a1: $18 $c0

	ld bc, $09a0                                     ; $76a3: $01 $a0 $09
	inc bc                                           ; $76a6: $03
	ld l, c                                          ; $76a7: $69
	ret nz                                           ; $76a8: $c0

	ld bc, $01a0                                     ; $76a9: $01 $a0 $01
	inc bc                                           ; $76ac: $03
	ld [hl], a                                       ; $76ad: $77
	ldh [rTMA], a                                    ; $76ae: $e0 $06
	ccf                                              ; $76b0: $3f
	ld bc, $24d5                                     ; $76b1: $01 $d5 $24
	ret nz                                           ; $76b4: $c0

	ld bc, $01a0                                     ; $76b5: $01 $a0 $01
	nop                                              ; $76b8: $00
	ld e, c                                          ; $76b9: $59
	ret nz                                           ; $76ba: $c0

	ld bc, $09a0                                     ; $76bb: $01 $a0 $09
	inc bc                                           ; $76be: $03
	add e                                            ; $76bf: $83
	ret nz                                           ; $76c0: $c0

	ld bc, $01a0                                     ; $76c1: $01 $a0 $01
	inc bc                                           ; $76c4: $03
	adc d                                            ; $76c5: $8a
	ret nz                                           ; $76c6: $c0

	ld bc, $09a0                                     ; $76c7: $01 $a0 $09
	inc bc                                           ; $76ca: $03
	adc a                                            ; $76cb: $8f
	pop hl                                           ; $76cc: $e1
	ld [hl-], a                                      ; $76cd: $32
	nop                                              ; $76ce: $00
	add hl, hl                                       ; $76cf: $29
	ret nz                                           ; $76d0: $c0

	jp z, $01c0                                      ; $76d1: $ca $c0 $01

	and b                                            ; $76d4: $a0
	ld bc, $9703                                     ; $76d5: $01 $03 $97
	push hl                                          ; $76d8: $e5
	inc sp                                           ; $76d9: $33
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	add hl, bc                                       ; $76dc: $09
	ret nz                                           ; $76dd: $c0

	call $c083                                       ; $76de: $cd $83 $c0
	dec de                                           ; $76e1: $1b
	ret c                                            ; $76e2: $d8

	ld [bc], a                                       ; $76e3: $02
	ret nc                                           ; $76e4: $d0

	pop de                                           ; $76e5: $d1
	dec [hl]                                         ; $76e6: $35
	ret nz                                           ; $76e7: $c0

	ld bc, $09a0                                     ; $76e8: $01 $a0 $09
	nop                                              ; $76eb: $00
	ld bc, $01c0                                     ; $76ec: $01 $c0 $01
	and b                                            ; $76ef: $a0
	ld bc, $1203                                     ; $76f0: $01 $03 $12
	ret nz                                           ; $76f3: $c0

	ld bc, $09a0                                     ; $76f4: $01 $a0 $09
	inc bc                                           ; $76f7: $03
	rla                                              ; $76f8: $17
	pop hl                                           ; $76f9: $e1
	ld [hl-], a                                      ; $76fa: $32

jr_084_76fb:
	nop                                              ; $76fb: $00
	add c                                            ; $76fc: $81
	pop hl                                           ; $76fd: $e1
	ld [bc], a                                       ; $76fe: $02
	ld [bc], a                                       ; $76ff: $02
	jr @-$3e                                         ; $7700: $18 $c0

	ld bc, $09a0                                     ; $7702: $01 $a0 $09
	inc bc                                           ; $7705: $03
	and c                                            ; $7706: $a1
	ret nz                                           ; $7707: $c0

	ld bc, $01a0                                     ; $7708: $01 $a0 $01
	inc bc                                           ; $770b: $03
	xor [hl]                                         ; $770c: $ae
	ret nz                                           ; $770d: $c0

	ld bc, $09a0                                     ; $770e: $01 $a0 $09
	ld [bc], a                                       ; $7711: $02
	ld b, h                                          ; $7712: $44
	ret nz                                           ; $7713: $c0

	ld bc, $01a0                                     ; $7714: $01 $a0 $01
	inc bc                                           ; $7717: $03
	ccf                                              ; $7718: $3f
	ldh [rTIMA], a                                   ; $7719: $e0 $05
	xor d                                            ; $771b: $aa
	ld [bc], a                                       ; $771c: $02
	jp nc, $35d3                                     ; $771d: $d2 $d3 $35

	ret nz                                           ; $7720: $c0

	ld bc, $09a0                                     ; $7721: $01 $a0 $09
	nop                                              ; $7724: $00
	ld b, c                                          ; $7725: $41
	ret nz                                           ; $7726: $c0

	ld bc, $01a0                                     ; $7727: $01 $a0 $01
	inc bc                                           ; $772a: $03
	ld [de], a                                       ; $772b: $12
	ret nz                                           ; $772c: $c0

	ld bc, $09a0                                     ; $772d: $01 $a0 $09
	inc bc                                           ; $7730: $03
	rla                                              ; $7731: $17
	pop hl                                           ; $7732: $e1

jr_084_7733:
	ld [hl-], a                                      ; $7733: $32
	nop                                              ; $7734: $00
	add c                                            ; $7735: $81
	pop hl                                           ; $7736: $e1
	ld [bc], a                                       ; $7737: $02
	ld [bc], a                                       ; $7738: $02
	jr jr_084_76fb                                   ; $7739: $18 $c0

	ld bc, $09a0                                     ; $773b: $01 $a0 $09
	inc bc                                           ; $773e: $03
	or h                                             ; $773f: $b4
	ret nz                                           ; $7740: $c0

	ld bc, $01a0                                     ; $7741: $01 $a0 $01
	inc bc                                           ; $7744: $03
	xor [hl]                                         ; $7745: $ae
	ret nz                                           ; $7746: $c0

	ld bc, $09a0                                     ; $7747: $01 $a0 $09
	inc bc                                           ; $774a: $03
	pop bc                                           ; $774b: $c1
	ret nz                                           ; $774c: $c0

	ld bc, $01a0                                     ; $774d: $01 $a0 $01
	inc bc                                           ; $7750: $03
	ccf                                              ; $7751: $3f
	ldh [rTIMA], a                                   ; $7752: $e0 $05
	add [hl]                                         ; $7754: $86
	ld bc, $29d4                                     ; $7755: $01 $d4 $29
	ret nz                                           ; $7758: $c0

	ld bc, $09a0                                     ; $7759: $01 $a0 $09
	inc bc                                           ; $775c: $03
	ld e, [hl]                                       ; $775d: $5e
	ret nz                                           ; $775e: $c0

	ld bc, $01a0                                     ; $775f: $01 $a0 $01
	inc bc                                           ; $7762: $03
	ld [de], a                                       ; $7763: $12
	ret nz                                           ; $7764: $c0

	ld bc, $09a0                                     ; $7765: $01 $a0 $09
	inc bc                                           ; $7768: $03
	ld h, c                                          ; $7769: $61
	pop hl                                           ; $776a: $e1
	ld [hl-], a                                      ; $776b: $32
	nop                                              ; $776c: $00
	add c                                            ; $776d: $81
	pop hl                                           ; $776e: $e1
	ld [bc], a                                       ; $776f: $02
	ld [bc], a                                       ; $7770: $02
	jr jr_084_7733                                   ; $7771: $18 $c0

	ld bc, $09a0                                     ; $7773: $01 $a0 $09
	inc bc                                           ; $7776: $03
	or h                                             ; $7777: $b4
	ret nz                                           ; $7778: $c0

	ld bc, $01a0                                     ; $7779: $01 $a0 $01
	inc bc                                           ; $777c: $03
	xor [hl]                                         ; $777d: $ae
	ldh [rTIMA], a                                   ; $777e: $e0 $05
	ld l, a                                          ; $7780: $6f
	ld bc, $24d5                                     ; $7781: $01 $d5 $24
	ret nz                                           ; $7784: $c0

	ld bc, $01a0                                     ; $7785: $01 $a0 $01
	nop                                              ; $7788: $00
	ld e, c                                          ; $7789: $59
	ret nz                                           ; $778a: $c0

	ld bc, $09a0                                     ; $778b: $01 $a0 $09
	inc bc                                           ; $778e: $03
	add e                                            ; $778f: $83
	ret nz                                           ; $7790: $c0

	ld bc, $01a0                                     ; $7791: $01 $a0 $01
	inc bc                                           ; $7794: $03
	adc d                                            ; $7795: $8a
	ret nz                                           ; $7796: $c0

	ld bc, $09a0                                     ; $7797: $01 $a0 $09
	inc bc                                           ; $779a: $03
	adc a                                            ; $779b: $8f
	pop hl                                           ; $779c: $e1
	ld [hl-], a                                      ; $779d: $32
	nop                                              ; $779e: $00
	add c                                            ; $779f: $81
	ret nz                                           ; $77a0: $c0

	jp z, $01c0                                      ; $77a1: $ca $c0 $01

	and b                                            ; $77a4: $a0
	ld bc, $9703                                     ; $77a5: $01 $03 $97
	push hl                                          ; $77a8: $e5
	inc sp                                           ; $77a9: $33
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	add hl, bc                                       ; $77ac: $09
	ld hl, $21c0                                     ; $77ad: $21 $c0 $21
	jp nc, $e1d8                                     ; $77b0: $d2 $d8 $e1

	ld [bc], a                                       ; $77b3: $02
	ld [bc], a                                       ; $77b4: $02
	db $10                                           ; $77b5: $10
	add d                                            ; $77b6: $82
	ret nz                                           ; $77b7: $c0

	add b                                            ; $77b8: $80
	ld bc, $03d3                                     ; $77b9: $01 $d3 $03
	db $e4                                           ; $77bc: $e4
	ld bc, $01f7                                     ; $77bd: $01 $f7 $01
	jp nc, $e403                                     ; $77c0: $d2 $03 $e4

	ld bc, $0114                                     ; $77c3: $01 $14 $01
	pop de                                           ; $77c6: $d1
	rlca                                             ; $77c7: $07
	ret nz                                           ; $77c8: $c0

	ld [hl+], a                                      ; $77c9: $22
	pop de                                           ; $77ca: $d1
	ret c                                            ; $77cb: $d8

	db $e4                                           ; $77cc: $e4
	nop                                              ; $77cd: $00
	ld [bc], a                                       ; $77ce: $02
	add hl, bc                                       ; $77cf: $09
	pop bc                                           ; $77d0: $c1
	dec b                                            ; $77d1: $05
	add e                                            ; $77d2: $83
	ret nz                                           ; $77d3: $c0

	dec de                                           ; $77d4: $1b
	ret c                                            ; $77d5: $d8

	ld [bc], a                                       ; $77d6: $02
	ret nc                                           ; $77d7: $d0

	pop de                                           ; $77d8: $d1
	ld c, e                                          ; $77d9: $4b
	ret nz                                           ; $77da: $c0

	ld bc, $09a0                                     ; $77db: $01 $a0 $09
	nop                                              ; $77de: $00
	ld bc, $01c0                                     ; $77df: $01 $c0 $01
	and b                                            ; $77e2: $a0
	ld bc, $cc03                                     ; $77e3: $01 $03 $cc
	ret nz                                           ; $77e6: $c0

	ld bc, $09a0                                     ; $77e7: $01 $a0 $09
	inc bc                                           ; $77ea: $03
	call nc, $02e1                                   ; $77eb: $d4 $e1 $02
	rlca                                             ; $77ee: $07
	cp a                                             ; $77ef: $bf
	ret nz                                           ; $77f0: $c0

	ld bc, $01a0                                     ; $77f1: $01 $a0 $01
	inc bc                                           ; $77f4: $03
	jp c, $fb60                                      ; $77f5: $da $60 $fb

	pop bc                                           ; $77f8: $c1
	ld c, l                                          ; $77f9: $4d
	ldh [$64], a                                     ; $77fa: $e0 $64
	inc c                                            ; $77fc: $0c
	ret nz                                           ; $77fd: $c0

	ld bc, $09a0                                     ; $77fe: $01 $a0 $09
	inc bc                                           ; $7801: $03
	sbc $c0                                          ; $7802: $de $c0
	ld bc, $01a0                                     ; $7804: $01 $a0 $01
	inc bc                                           ; $7807: $03
	jp hl                                            ; $7808: $e9


	inc c                                            ; $7809: $0c
	ret nz                                           ; $780a: $c0

	ld bc, $09a0                                     ; $780b: $01 $a0 $09
	inc bc                                           ; $780e: $03
	db $eb                                           ; $780f: $eb
	ret nz                                           ; $7810: $c0

	ld bc, $01a0                                     ; $7811: $01 $a0 $01
	inc bc                                           ; $7814: $03
	push af                                          ; $7815: $f5
	ret nz                                           ; $7816: $c0

	ld bc, $09a0                                     ; $7817: $01 $a0 $09
	ld [bc], a                                       ; $781a: $02
	ld b, h                                          ; $781b: $44
	ret nz                                           ; $781c: $c0

	ld bc, $01a0                                     ; $781d: $01 $a0 $01
	inc bc                                           ; $7820: $03
	ei                                               ; $7821: $fb
	ldh [rDIV], a                                    ; $7822: $e0 $04
	and c                                            ; $7824: $a1
	ld [bc], a                                       ; $7825: $02
	jp nc, Jump_084_4bd3                             ; $7826: $d2 $d3 $4b

	ret nz                                           ; $7829: $c0

	ld bc, $09a0                                     ; $782a: $01 $a0 $09
	nop                                              ; $782d: $00
	ld b, c                                          ; $782e: $41
	ret nz                                           ; $782f: $c0

	ld bc, $01a0                                     ; $7830: $01 $a0 $01
	inc bc                                           ; $7833: $03
	call z, $01c0                                    ; $7834: $cc $c0 $01
	and b                                            ; $7837: $a0
	add hl, bc                                       ; $7838: $09
	inc bc                                           ; $7839: $03
	call nc, $02e1                                   ; $783a: $d4 $e1 $02
	rlca                                             ; $783d: $07
	cp a                                             ; $783e: $bf
	ret nz                                           ; $783f: $c0

	ld bc, $01a0                                     ; $7840: $01 $a0 $01
	inc bc                                           ; $7843: $03
	jp c, $fb60                                      ; $7844: $da $60 $fb

	pop bc                                           ; $7847: $c1
	ld c, l                                          ; $7848: $4d
	ldh [$64], a                                     ; $7849: $e0 $64
	inc c                                            ; $784b: $0c
	ret nz                                           ; $784c: $c0

	ld bc, $09a0                                     ; $784d: $01 $a0 $09
	inc b                                            ; $7850: $04
	rlca                                             ; $7851: $07
	ret nz                                           ; $7852: $c0

	ld bc, $01a0                                     ; $7853: $01 $a0 $01
	inc bc                                           ; $7856: $03
	jp hl                                            ; $7857: $e9


	inc c                                            ; $7858: $0c
	ret nz                                           ; $7859: $c0

	ld bc, $09a0                                     ; $785a: $01 $a0 $09
	inc b                                            ; $785d: $04
	ld [de], a                                       ; $785e: $12
	ret nz                                           ; $785f: $c0

	ld bc, $01a0                                     ; $7860: $01 $a0 $01
	inc bc                                           ; $7863: $03
	push af                                          ; $7864: $f5
	ret nz                                           ; $7865: $c0

	ld bc, $09a0                                     ; $7866: $01 $a0 $09
	inc bc                                           ; $7869: $03
	pop bc                                           ; $786a: $c1
	ret nz                                           ; $786b: $c0

	ld bc, $01a0                                     ; $786c: $01 $a0 $01
	inc bc                                           ; $786f: $03
	ei                                               ; $7870: $fb
	ldh [rDIV], a                                    ; $7871: $e0 $04
	ld h, a                                          ; $7873: $67
	ld bc, $3fd4                                     ; $7874: $01 $d4 $3f
	ret nz                                           ; $7877: $c0

	ld bc, $09a0                                     ; $7878: $01 $a0 $09
	inc b                                            ; $787b: $04
	ld a, [de]                                       ; $787c: $1a
	ret nz                                           ; $787d: $c0

	ld bc, $01a0                                     ; $787e: $01 $a0 $01
	inc b                                            ; $7881: $04
	dec h                                            ; $7882: $25
	ret nz                                           ; $7883: $c0

	ld bc, $09a0                                     ; $7884: $01 $a0 $09
	inc b                                            ; $7887: $04
	ld l, $e1                                        ; $7888: $2e $e1
	ld [bc], a                                       ; $788a: $02
	rlca                                             ; $788b: $07
	cp a                                             ; $788c: $bf
	ret nz                                           ; $788d: $c0

	ld bc, $01a0                                     ; $788e: $01 $a0 $01
	inc bc                                           ; $7891: $03
	jp c, $fb60                                      ; $7892: $da $60 $fb

	pop bc                                           ; $7895: $c1
	ld c, l                                          ; $7896: $4d
	ldh [$64], a                                     ; $7897: $e0 $64
	inc c                                            ; $7899: $0c
	ret nz                                           ; $789a: $c0

	ld bc, $09a0                                     ; $789b: $01 $a0 $09
	inc b                                            ; $789e: $04
	inc [hl]                                         ; $789f: $34
	ret nz                                           ; $78a0: $c0

	ld bc, $01a0                                     ; $78a1: $01 $a0 $01
	inc bc                                           ; $78a4: $03
	jp hl                                            ; $78a5: $e9


	inc c                                            ; $78a6: $0c
	ret nz                                           ; $78a7: $c0

	ld bc, $09a0                                     ; $78a8: $01 $a0 $09
	inc b                                            ; $78ab: $04
	inc a                                            ; $78ac: $3c
	ret nz                                           ; $78ad: $c0

	ld bc, $01a0                                     ; $78ae: $01 $a0 $01
	inc b                                            ; $78b1: $04
	ld b, l                                          ; $78b2: $45
	ldh [rDIV], a                                    ; $78b3: $e0 $04
	ld a, [hl-]                                      ; $78b5: $3a
	ld bc, $1ad5                                     ; $78b6: $01 $d5 $1a
	ret nz                                           ; $78b9: $c0

	ld bc, $01a0                                     ; $78ba: $01 $a0 $01
	nop                                              ; $78bd: $00
	ld e, c                                          ; $78be: $59
	ret nz                                           ; $78bf: $c0

	ld bc, $09a0                                     ; $78c0: $01 $a0 $09
	inc b                                            ; $78c3: $04
	ld c, l                                          ; $78c4: $4d
	ret nz                                           ; $78c5: $c0

	ld bc, $01a0                                     ; $78c6: $01 $a0 $01
	inc b                                            ; $78c9: $04
	ld e, h                                          ; $78ca: $5c
	pop bc                                           ; $78cb: $c1
	ld e, e                                          ; $78cc: $5b
	ret nz                                           ; $78cd: $c0

	ld bc, $01a0                                     ; $78ce: $01 $a0 $01
	inc b                                            ; $78d1: $04
	ld h, d                                          ; $78d2: $62
	push hl                                          ; $78d3: $e5
	inc sp                                           ; $78d4: $33
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	add hl, bc                                       ; $78d7: $09
	ret nz                                           ; $78d8: $c0

	jp c, $c083                                      ; $78d9: $da $83 $c0

	dec de                                           ; $78dc: $1b
	ret c                                            ; $78dd: $d8

	ld [bc], a                                       ; $78de: $02
	ret nc                                           ; $78df: $d0

	pop de                                           ; $78e0: $d1
	ld a, [hl-]                                      ; $78e1: $3a
	ret nz                                           ; $78e2: $c0

	ld bc, $09a0                                     ; $78e3: $01 $a0 $09
	inc b                                            ; $78e6: $04
	ld h, l                                          ; $78e7: $65
	ret nz                                           ; $78e8: $c0

	ld bc, $01a0                                     ; $78e9: $01 $a0 $01
	inc b                                            ; $78ec: $04
	ld h, a                                          ; $78ed: $67
	pop hl                                           ; $78ee: $e1
	ld [bc], a                                       ; $78ef: $02
	inc bc                                           ; $78f0: $03
	rrca                                             ; $78f1: $0f
	ret nz                                           ; $78f2: $c0

	ld bc, $09a0                                     ; $78f3: $01 $a0 $09
	inc b                                            ; $78f6: $04
	ld l, h                                          ; $78f7: $6c
	ret nz                                           ; $78f8: $c0

	ld bc, $01a0                                     ; $78f9: $01 $a0 $01
	inc b                                            ; $78fc: $04
	ld [hl], l                                       ; $78fd: $75
	pop hl                                           ; $78fe: $e1
	ld [bc], a                                       ; $78ff: $02
	inc bc                                           ; $7900: $03
	daa                                              ; $7901: $27
	ret nz                                           ; $7902: $c0

	ld bc, $09a0                                     ; $7903: $01 $a0 $09
	inc b                                            ; $7906: $04
	ld a, e                                          ; $7907: $7b
	ret nz                                           ; $7908: $c0

	ld bc, $01a0                                     ; $7909: $01 $a0 $01
	inc b                                            ; $790c: $04
	add h                                            ; $790d: $84
	ret nz                                           ; $790e: $c0

	ld bc, $09a0                                     ; $790f: $01 $a0 $09
	inc b                                            ; $7912: $04
	adc [hl]                                         ; $7913: $8e
	pop bc                                           ; $7914: $c1
	ld e, e                                          ; $7915: $5b
	ret nz                                           ; $7916: $c0

	ld bc, $01a0                                     ; $7917: $01 $a0 $01
	inc b                                            ; $791a: $04
	sbc d                                            ; $791b: $9a
	ld [bc], a                                       ; $791c: $02
	jp nc, Jump_084_46d3                             ; $791d: $d2 $d3 $46

	ret nz                                           ; $7920: $c0

	ld bc, $09a0                                     ; $7921: $01 $a0 $09
	nop                                              ; $7924: $00
	ld b, c                                          ; $7925: $41
	ret nz                                           ; $7926: $c0

	ld bc, $01a0                                     ; $7927: $01 $a0 $01
	inc b                                            ; $792a: $04
	ld h, a                                          ; $792b: $67
	pop hl                                           ; $792c: $e1
	ld [bc], a                                       ; $792d: $02
	inc bc                                           ; $792e: $03
	rrca                                             ; $792f: $0f
	ret nz                                           ; $7930: $c0

	ld bc, $09a0                                     ; $7931: $01 $a0 $09
	inc b                                            ; $7934: $04
	and c                                            ; $7935: $a1
	ret nz                                           ; $7936: $c0

	ld bc, $01a0                                     ; $7937: $01 $a0 $01
	inc b                                            ; $793a: $04
	ld [hl], l                                       ; $793b: $75
	ret nz                                           ; $793c: $c0

	ld bc, $09a0                                     ; $793d: $01 $a0 $09
	inc b                                            ; $7940: $04
	xor c                                            ; $7941: $a9
	ret nz                                           ; $7942: $c0

	ld bc, $01a0                                     ; $7943: $01 $a0 $01
	inc b                                            ; $7946: $04
	or d                                             ; $7947: $b2
	pop hl                                           ; $7948: $e1
	ld [bc], a                                       ; $7949: $02
	inc bc                                           ; $794a: $03
	inc de                                           ; $794b: $13
	ret nz                                           ; $794c: $c0

	ld bc, $09a0                                     ; $794d: $01 $a0 $09
	inc b                                            ; $7950: $04
	or l                                             ; $7951: $b5
	ret nz                                           ; $7952: $c0

	ld bc, $01a0                                     ; $7953: $01 $a0 $01
	inc b                                            ; $7956: $04
	push bc                                          ; $7957: $c5
	ret nz                                           ; $7958: $c0

	ld bc, $09a0                                     ; $7959: $01 $a0 $09
	inc b                                            ; $795c: $04
	set 0, c                                         ; $795d: $cb $c1
	ld e, e                                          ; $795f: $5b
	ret nz                                           ; $7960: $c0

	ld bc, $01a0                                     ; $7961: $01 $a0 $01
	inc b                                            ; $7964: $04
	sbc d                                            ; $7965: $9a
	ld bc, $30d4                                     ; $7966: $01 $d4 $30
	ret nz                                           ; $7969: $c0

	ld bc, $01a0                                     ; $796a: $01 $a0 $01
	inc b                                            ; $796d: $04
	ld h, a                                          ; $796e: $67
	pop hl                                           ; $796f: $e1
	ld [bc], a                                       ; $7970: $02
	inc bc                                           ; $7971: $03
	rrca                                             ; $7972: $0f
	ret nz                                           ; $7973: $c0

	ld bc, $09a0                                     ; $7974: $01 $a0 $09
	inc b                                            ; $7977: $04
	db $d3                                           ; $7978: $d3
	ret nz                                           ; $7979: $c0

	ld bc, $01a0                                     ; $797a: $01 $a0 $01
	inc b                                            ; $797d: $04
	ld [hl], l                                       ; $797e: $75
	ret nz                                           ; $797f: $c0

	ld bc, $09a0                                     ; $7980: $01 $a0 $09
	inc b                                            ; $7983: $04
	reti                                             ; $7984: $d9


	ret nz                                           ; $7985: $c0

	ld bc, $01a0                                     ; $7986: $01 $a0 $01
	inc b                                            ; $7989: $04
	rst SubAFromBC                                          ; $798a: $e7
	ret nz                                           ; $798b: $c0

	ld bc, $09a0                                     ; $798c: $01 $a0 $09
	inc b                                            ; $798f: $04
	db $eb                                           ; $7990: $eb
	pop bc                                           ; $7991: $c1
	ld e, e                                          ; $7992: $5b
	ret nz                                           ; $7993: $c0

	ld bc, $01a0                                     ; $7994: $01 $a0 $01
	inc b                                            ; $7997: $04
	db $f4                                           ; $7998: $f4
	ld bc, $14d5                                     ; $7999: $01 $d5 $14
	ret nz                                           ; $799c: $c0

	ld bc, $01a0                                     ; $799d: $01 $a0 $01
	inc b                                            ; $79a0: $04
	ld h, a                                          ; $79a1: $67
	ret nz                                           ; $79a2: $c0

	ld bc, $09a0                                     ; $79a3: $01 $a0 $09
	inc b                                            ; $79a6: $04
	ei                                               ; $79a7: $fb
	pop bc                                           ; $79a8: $c1
	ld e, e                                          ; $79a9: $5b
	ret nz                                           ; $79aa: $c0

	ld bc, $01a0                                     ; $79ab: $01 $a0 $01
	inc b                                            ; $79ae: $04
	db $fd                                           ; $79af: $fd
	push hl                                          ; $79b0: $e5
	inc sp                                           ; $79b1: $33

jr_084_79b2:
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	add hl, bc                                       ; $79b4: $09
	pop bc                                           ; $79b5: $c1
	inc bc                                           ; $79b6: $03
	add e                                            ; $79b7: $83
	ret nz                                           ; $79b8: $c0

	dec de                                           ; $79b9: $1b
	ret c                                            ; $79ba: $d8

	ld [bc], a                                       ; $79bb: $02
	ret nc                                           ; $79bc: $d0

	pop de                                           ; $79bd: $d1
	ld e, b                                          ; $79be: $58
	ret nz                                           ; $79bf: $c0

	ld bc, $09a0                                     ; $79c0: $01 $a0 $09
	inc b                                            ; $79c3: $04
	ld h, l                                          ; $79c4: $65
	ret nz                                           ; $79c5: $c0

	ld bc, $01a0                                     ; $79c6: $01 $a0 $01
	nop                                              ; $79c9: $00
	ld [bc], a                                       ; $79ca: $02
	pop hl                                           ; $79cb: $e1
	ld [bc], a                                       ; $79cc: $02
	inc bc                                           ; $79cd: $03
	dec de                                           ; $79ce: $1b
	ret nz                                           ; $79cf: $c0

	ld bc, $09a0                                     ; $79d0: $01 $a0 $09
	dec b                                            ; $79d3: $05
	dec b                                            ; $79d4: $05
	ret nz                                           ; $79d5: $c0

	ld bc, $01a0                                     ; $79d6: $01 $a0 $01
	dec b                                            ; $79d9: $05
	inc c                                            ; $79da: $0c
	pop hl                                           ; $79db: $e1
	ld [bc], a                                       ; $79dc: $02
	inc bc                                           ; $79dd: $03
	daa                                              ; $79de: $27
	ret nz                                           ; $79df: $c0

	ld bc, $09a0                                     ; $79e0: $01 $a0 $09
	dec b                                            ; $79e3: $05
	ld [de], a                                       ; $79e4: $12
	ret nz                                           ; $79e5: $c0

	ld bc, $01a0                                     ; $79e6: $01 $a0 $01
	dec b                                            ; $79e9: $05
	inc e                                            ; $79ea: $1c
	ret nz                                           ; $79eb: $c0

	ld bc, $09a0                                     ; $79ec: $01 $a0 $09
	dec b                                            ; $79ef: $05
	jr z, jr_084_79b2                                ; $79f0: $28 $c0

jr_084_79f2:
	ld bc, $01a0                                     ; $79f2: $01 $a0 $01
	ld bc, $c004                                     ; $79f5: $01 $04 $c0
	ld bc, $09a0                                     ; $79f8: $01 $a0 $09
	ld bc, $c009                                     ; $79fb: $01 $09 $c0
	ld bc, $01a0                                     ; $79fe: $01 $a0 $01
	ld bc, $c011                                     ; $7a01: $01 $11 $c0
	ld bc, $09a0                                     ; $7a04: $01 $a0 $09
	ld bc, $c01e                                     ; $7a07: $01 $1e $c0
	ld bc, $01a0                                     ; $7a0a: $01 $a0 $01
	ld bc, $c025                                     ; $7a0d: $01 $25 $c0
	ld bc, $09a0                                     ; $7a10: $01 $a0 $09
	ld bc, $c14d                                     ; $7a13: $01 $4d $c1
	ld e, e                                          ; $7a16: $5b
	ld [bc], a                                       ; $7a17: $02
	jp nc, $58d3                                     ; $7a18: $d2 $d3 $58

	ret nz                                           ; $7a1b: $c0

	ld bc, $09a0                                     ; $7a1c: $01 $a0 $09
	nop                                              ; $7a1f: $00
	ld b, c                                          ; $7a20: $41
	ret nz                                           ; $7a21: $c0

	ld bc, $01a0                                     ; $7a22: $01 $a0 $01
	nop                                              ; $7a25: $00
	ld [bc], a                                       ; $7a26: $02
	pop hl                                           ; $7a27: $e1
	ld [bc], a                                       ; $7a28: $02
	inc bc                                           ; $7a29: $03
	dec de                                           ; $7a2a: $1b
	ret nz                                           ; $7a2b: $c0

	ld bc, $09a0                                     ; $7a2c: $01 $a0 $09
	dec b                                            ; $7a2f: $05
	jr nc, jr_084_79f2                               ; $7a30: $30 $c0

	ld bc, $01a0                                     ; $7a32: $01 $a0 $01
	dec b                                            ; $7a35: $05
	inc c                                            ; $7a36: $0c
	pop hl                                           ; $7a37: $e1
	ld [bc], a                                       ; $7a38: $02
	inc bc                                           ; $7a39: $03
	daa                                              ; $7a3a: $27
	ret nz                                           ; $7a3b: $c0

	ld bc, $09a0                                     ; $7a3c: $01 $a0 $09
	dec b                                            ; $7a3f: $05
	ld [hl], $c0                                     ; $7a40: $36 $c0
	ld bc, $01a0                                     ; $7a42: $01 $a0 $01
	dec b                                            ; $7a45: $05
	inc e                                            ; $7a46: $1c
	ret nz                                           ; $7a47: $c0

	ld bc, $09a0                                     ; $7a48: $01 $a0 $09
	dec b                                            ; $7a4b: $05
	jr z, @-$3e                                      ; $7a4c: $28 $c0

	ld bc, $01a0                                     ; $7a4e: $01 $a0 $01
	ld bc, $c004                                     ; $7a51: $01 $04 $c0
	ld bc, $09a0                                     ; $7a54: $01 $a0 $09
	ld bc, $c009                                     ; $7a57: $01 $09 $c0
	ld bc, $01a0                                     ; $7a5a: $01 $a0 $01
	ld bc, $c011                                     ; $7a5d: $01 $11 $c0
	ld bc, $09a0                                     ; $7a60: $01 $a0 $09
	ld bc, $c01e                                     ; $7a63: $01 $1e $c0
	ld bc, $01a0                                     ; $7a66: $01 $a0 $01
	ld bc, $c025                                     ; $7a69: $01 $25 $c0
	ld bc, $09a0                                     ; $7a6c: $01 $a0 $09
	ld bc, $c14d                                     ; $7a6f: $01 $4d $c1
	ld e, e                                          ; $7a72: $5b
	ld bc, $29d4                                     ; $7a73: $01 $d4 $29
	ret nz                                           ; $7a76: $c0

	ld bc, $01a0                                     ; $7a77: $01 $a0 $01
	nop                                              ; $7a7a: $00
	ld e, c                                          ; $7a7b: $59
	pop hl                                           ; $7a7c: $e1
	ld [bc], a                                       ; $7a7d: $02
	inc bc                                           ; $7a7e: $03
	dec de                                           ; $7a7f: $1b
	ret nz                                           ; $7a80: $c0

	ld bc, $09a0                                     ; $7a81: $01 $a0 $09
	dec b                                            ; $7a84: $05
	ccf                                              ; $7a85: $3f
	ret nz                                           ; $7a86: $c0

	ld bc, $01a0                                     ; $7a87: $01 $a0 $01
	dec b                                            ; $7a8a: $05
	inc c                                            ; $7a8b: $0c
	pop hl                                           ; $7a8c: $e1
	ld [bc], a                                       ; $7a8d: $02
	inc bc                                           ; $7a8e: $03
	daa                                              ; $7a8f: $27
	ret nz                                           ; $7a90: $c0

	ld bc, $09a0                                     ; $7a91: $01 $a0 $09
	dec b                                            ; $7a94: $05
	ld b, a                                          ; $7a95: $47
	ret nz                                           ; $7a96: $c0

	ld bc, $01a0                                     ; $7a97: $01 $a0 $01
	dec b                                            ; $7a9a: $05
	ld c, a                                          ; $7a9b: $4f
	ldh [rSC], a                                     ; $7a9c: $e0 $02
	ld d, c                                          ; $7a9e: $51
	ld bc, $14d5                                     ; $7a9f: $01 $d5 $14
	ret nz                                           ; $7aa2: $c0

	ld bc, $01a0                                     ; $7aa3: $01 $a0 $01
	nop                                              ; $7aa6: $00
	ld [hl], e                                       ; $7aa7: $73
	ret nz                                           ; $7aa8: $c0

	ld bc, $09a0                                     ; $7aa9: $01 $a0 $09
	dec b                                            ; $7aac: $05
	ld d, a                                          ; $7aad: $57
	pop bc                                           ; $7aae: $c1
	ld e, e                                          ; $7aaf: $5b
	ret nz                                           ; $7ab0: $c0

	ld bc, $01a0                                     ; $7ab1: $01 $a0 $01
	dec b                                            ; $7ab4: $05
	ld e, h                                          ; $7ab5: $5c
	push hl                                          ; $7ab6: $e5
	inc sp                                           ; $7ab7: $33
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	add hl, bc                                       ; $7aba: $09
	ld hl, $21c0                                     ; $7abb: $21 $c0 $21
	jp nc, $82d8                                     ; $7abe: $d2 $d8 $82

	ret nz                                           ; $7ac1: $c0

	add b                                            ; $7ac2: $80
	ld bc, $07d3                                     ; $7ac3: $01 $d3 $07
	ret nz                                           ; $7ac6: $c0

	ld [hl+], a                                      ; $7ac7: $22
	pop de                                           ; $7ac8: $d1
	ret c                                            ; $7ac9: $d8

	db $e4                                           ; $7aca: $e4
	ld bc, $0156                                     ; $7acb: $01 $56 $01
	jp nc, $e403                                     ; $7ace: $d2 $03 $e4

	nop                                              ; $7ad1: $00
	ret nz                                           ; $7ad2: $c0

	ld bc, $07d1                                     ; $7ad3: $01 $d1 $07
	ret nz                                           ; $7ad6: $c0

	ld [hl+], a                                      ; $7ad7: $22
	pop de                                           ; $7ad8: $d1
	ret c                                            ; $7ad9: $d8

	db $e4                                           ; $7ada: $e4
	nop                                              ; $7adb: $00
	ld [bc], a                                       ; $7adc: $02
	add hl, bc                                       ; $7add: $09
	or d                                             ; $7ade: $b2
	add e                                            ; $7adf: $83
	ret nz                                           ; $7ae0: $c0

	dec de                                           ; $7ae1: $1b
	ret c                                            ; $7ae2: $d8

	ld [bc], a                                       ; $7ae3: $02
	ret nc                                           ; $7ae4: $d0

	pop de                                           ; $7ae5: $d1
	scf                                              ; $7ae6: $37
	pop hl                                           ; $7ae7: $e1
	ld [bc], a                                       ; $7ae8: $02
	ld [bc], a                                       ; $7ae9: $02
	db $10                                           ; $7aea: $10
	ret nz                                           ; $7aeb: $c0

	ld bc, $09a0                                     ; $7aec: $01 $a0 $09
	dec b                                            ; $7aef: $05
	ld h, d                                          ; $7af0: $62
	ret nz                                           ; $7af1: $c0

	ld bc, $01a0                                     ; $7af2: $01 $a0 $01
	ld bc, $c092                                     ; $7af5: $01 $92 $c0
	ld bc, $09a0                                     ; $7af8: $01 $a0 $09
	dec b                                            ; $7afb: $05
	ld l, d                                          ; $7afc: $6a
	ret nz                                           ; $7afd: $c0

	ld bc, $01a0                                     ; $7afe: $01 $a0 $01
	dec b                                            ; $7b01: $05
	ld [hl], d                                       ; $7b02: $72
	ret nz                                           ; $7b03: $c0

	ld bc, $09a0                                     ; $7b04: $01 $a0 $09
	dec b                                            ; $7b07: $05
	ld a, c                                          ; $7b08: $79
	ret nz                                           ; $7b09: $c0

	ld bc, $01a0                                     ; $7b0a: $01 $a0 $01
	dec b                                            ; $7b0d: $05
	add b                                            ; $7b0e: $80
	ret nz                                           ; $7b0f: $c0

	ld bc, $09a0                                     ; $7b10: $01 $a0 $09
	dec b                                            ; $7b13: $05
	add l                                            ; $7b14: $85
	ret nz                                           ; $7b15: $c0

	ld bc, $01a0                                     ; $7b16: $01 $a0 $01
	ld bc, $e0b9                                     ; $7b19: $01 $b9 $e0
	ld bc, $02a8                                     ; $7b1c: $01 $a8 $02
	jp nc, $37d3                                     ; $7b1f: $d2 $d3 $37

	pop hl                                           ; $7b22: $e1
	ld [bc], a                                       ; $7b23: $02
	ld [bc], a                                       ; $7b24: $02
	db $10                                           ; $7b25: $10
	ret nz                                           ; $7b26: $c0

	ld bc, $09a0                                     ; $7b27: $01 $a0 $09
	dec b                                            ; $7b2a: $05
	adc d                                            ; $7b2b: $8a
	ret nz                                           ; $7b2c: $c0

	ld bc, $01a0                                     ; $7b2d: $01 $a0 $01
	ld bc, $c092                                     ; $7b30: $01 $92 $c0
	ld bc, $09a0                                     ; $7b33: $01 $a0 $09
	dec b                                            ; $7b36: $05
	sub b                                            ; $7b37: $90
	ret nz                                           ; $7b38: $c0

	ld bc, $01a0                                     ; $7b39: $01 $a0 $01
	dec b                                            ; $7b3c: $05
	sub l                                            ; $7b3d: $95
	ret nz                                           ; $7b3e: $c0

	ld bc, $09a0                                     ; $7b3f: $01 $a0 $09
	dec b                                            ; $7b42: $05
	sbc h                                            ; $7b43: $9c
	ret nz                                           ; $7b44: $c0

	ld bc, $01a0                                     ; $7b45: $01 $a0 $01
	dec b                                            ; $7b48: $05
	and [hl]                                         ; $7b49: $a6
	ret nz                                           ; $7b4a: $c0

	ld bc, $09a0                                     ; $7b4b: $01 $a0 $09
	ld bc, $c0d4                                     ; $7b4e: $01 $d4 $c0
	ld bc, $01a0                                     ; $7b51: $01 $a0 $01
	ld bc, $e0b9                                     ; $7b54: $01 $b9 $e0
	ld bc, $0182                                     ; $7b57: $01 $82 $01
	call nc, $e12b                                   ; $7b5a: $d4 $2b $e1
	ld [bc], a                                       ; $7b5d: $02
	ld [bc], a                                       ; $7b5e: $02
	db $10                                           ; $7b5f: $10
	ret nz                                           ; $7b60: $c0

	ld bc, $09a0                                     ; $7b61: $01 $a0 $09
	dec b                                            ; $7b64: $05
	xor h                                            ; $7b65: $ac
	ret nz                                           ; $7b66: $c0

	ld bc, $01a0                                     ; $7b67: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $7b6a: $01 $e2 $c0
	ld bc, $09a0                                     ; $7b6d: $01 $a0 $09
	dec b                                            ; $7b70: $05
	or c                                             ; $7b71: $b1
	ret nz                                           ; $7b72: $c0

	ld bc, $01a0                                     ; $7b73: $01 $a0 $01
	dec b                                            ; $7b76: $05
	cp b                                             ; $7b77: $b8
	ret nz                                           ; $7b78: $c0

	ld bc, $09a0                                     ; $7b79: $01 $a0 $09
	dec b                                            ; $7b7c: $05
	cp a                                             ; $7b7d: $bf
	ret nz                                           ; $7b7e: $c0

	ld bc, $01a0                                     ; $7b7f: $01 $a0 $01
	dec b                                            ; $7b82: $05
	add $e0                                          ; $7b83: $c6 $e0
	ld bc, $0169                                     ; $7b85: $01 $69 $01
	push de                                          ; $7b88: $d5
	inc bc                                           ; $7b89: $03
	ldh [rSB], a                                     ; $7b8a: $e0 $01
	ld h, $e5                                        ; $7b8c: $26 $e5
	inc sp                                           ; $7b8e: $33
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	add hl, bc                                       ; $7b91: $09
	adc [hl]                                         ; $7b92: $8e
	add e                                            ; $7b93: $83
	ret nz                                           ; $7b94: $c0

	dec de                                           ; $7b95: $1b
	ret c                                            ; $7b96: $d8

	ld [bc], a                                       ; $7b97: $02
	ret nc                                           ; $7b98: $d0

	pop de                                           ; $7b99: $d1
	dec hl                                           ; $7b9a: $2b
	pop hl                                           ; $7b9b: $e1
	ld [bc], a                                       ; $7b9c: $02
	ld [bc], a                                       ; $7b9d: $02
	db $10                                           ; $7b9e: $10
	ret nz                                           ; $7b9f: $c0

	ld bc, $09a0                                     ; $7ba0: $01 $a0 $09
	dec b                                            ; $7ba3: $05
	xor h                                            ; $7ba4: $ac
	ret nz                                           ; $7ba5: $c0

	ld bc, $01a0                                     ; $7ba6: $01 $a0 $01
	ld bc, $c092                                     ; $7ba9: $01 $92 $c0
	ld bc, $09a0                                     ; $7bac: $01 $a0 $09
	dec b                                            ; $7baf: $05
	set 0, b                                         ; $7bb0: $cb $c0
	ld bc, $01a0                                     ; $7bb2: $01 $a0 $01
	dec b                                            ; $7bb5: $05
	push de                                          ; $7bb6: $d5
	ret nz                                           ; $7bb7: $c0

	ld bc, $09a0                                     ; $7bb8: $01 $a0 $09
	dec b                                            ; $7bbb: $05
	add l                                            ; $7bbc: $85
	ret nz                                           ; $7bbd: $c0

	ld bc, $01a0                                     ; $7bbe: $01 $a0 $01
	ld bc, $e0b9                                     ; $7bc1: $01 $b9 $e0
	ld bc, $0200                                     ; $7bc4: $01 $00 $02
	jp nc, $2bd3                                     ; $7bc7: $d2 $d3 $2b

	pop hl                                           ; $7bca: $e1
	ld [bc], a                                       ; $7bcb: $02
	ld [bc], a                                       ; $7bcc: $02
	db $10                                           ; $7bcd: $10
	ret nz                                           ; $7bce: $c0

	ld bc, $09a0                                     ; $7bcf: $01 $a0 $09
	dec b                                            ; $7bd2: $05

Jump_084_7bd3:
	xor h                                            ; $7bd3: $ac
	ret nz                                           ; $7bd4: $c0

	ld bc, $01a0                                     ; $7bd5: $01 $a0 $01
	dec b                                            ; $7bd8: $05
	rst SubAFromDE                                          ; $7bd9: $df
	ret nz                                           ; $7bda: $c0

	ld bc, $09a0                                     ; $7bdb: $01 $a0 $09
	dec b                                            ; $7bde: $05
	and $c0                                          ; $7bdf: $e6 $c0
	ld bc, $01a0                                     ; $7be1: $01 $a0 $01
	dec b                                            ; $7be4: $05
	push de                                          ; $7be5: $d5
	ret nz                                           ; $7be6: $c0

	ld bc, $09a0                                     ; $7be7: $01 $a0 $09
	ld bc, $c0d4                                     ; $7bea: $01 $d4 $c0
	ld bc, $01a0                                     ; $7bed: $01 $a0 $01
	ld bc, $e0b9                                     ; $7bf0: $01 $b9 $e0
	nop                                              ; $7bf3: $00
	and $01                                          ; $7bf4: $e6 $01
	call nc, $e11f                                   ; $7bf6: $d4 $1f $e1
	ld [bc], a                                       ; $7bf9: $02
	ld [bc], a                                       ; $7bfa: $02
	db $10                                           ; $7bfb: $10
	ret nz                                           ; $7bfc: $c0

	ld bc, $09a0                                     ; $7bfd: $01 $a0 $09
	dec b                                            ; $7c00: $05
	xor h                                            ; $7c01: $ac
	ret nz                                           ; $7c02: $c0

	ld bc, $01a0                                     ; $7c03: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $7c06: $01 $e2 $c0
	ld bc, $09a0                                     ; $7c09: $01 $a0 $09
	dec b                                            ; $7c0c: $05
	rst AddAOntoHL                                          ; $7c0d: $ef
	ret nz                                           ; $7c0e: $c0

	ld bc, $01a0                                     ; $7c0f: $01 $a0 $01
	dec b                                            ; $7c12: $05
	push de                                          ; $7c13: $d5
	ldh [rP1], a                                     ; $7c14: $e0 $00
	reti                                             ; $7c16: $d9


	ld bc, $03d5                                     ; $7c17: $01 $d5 $03
	ldh [rP1], a                                     ; $7c1a: $e0 $00
	sub [hl]                                         ; $7c1c: $96
	push hl                                          ; $7c1d: $e5
	inc sp                                           ; $7c1e: $33
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	add hl, bc                                       ; $7c21: $09
	adc [hl]                                         ; $7c22: $8e
	add e                                            ; $7c23: $83
	ret nz                                           ; $7c24: $c0

	dec de                                           ; $7c25: $1b
	ret c                                            ; $7c26: $d8

	ld [bc], a                                       ; $7c27: $02
	ret nc                                           ; $7c28: $d0

	pop de                                           ; $7c29: $d1
	dec hl                                           ; $7c2a: $2b
	pop hl                                           ; $7c2b: $e1
	ld [bc], a                                       ; $7c2c: $02
	ld [bc], a                                       ; $7c2d: $02
	db $10                                           ; $7c2e: $10
	ret nz                                           ; $7c2f: $c0

	ld bc, $09a0                                     ; $7c30: $01 $a0 $09
	dec b                                            ; $7c33: $05
	xor h                                            ; $7c34: $ac
	ret nz                                           ; $7c35: $c0

	ld bc, $01a0                                     ; $7c36: $01 $a0 $01
	dec b                                            ; $7c39: $05
	rst SubAFromDE                                          ; $7c3a: $df
	ret nz                                           ; $7c3b: $c0

	ld bc, $09a0                                     ; $7c3c: $01 $a0 $09
	dec b                                            ; $7c3f: $05
	ld hl, sp-$40                                    ; $7c40: $f8 $c0
	ld bc, $01a0                                     ; $7c42: $01 $a0 $01
	ld b, $01                                        ; $7c45: $06 $01
	ret nz                                           ; $7c47: $c0

	ld bc, $09a0                                     ; $7c48: $01 $a0 $09
	dec b                                            ; $7c4b: $05
	add l                                            ; $7c4c: $85
	ret nz                                           ; $7c4d: $c0

	ld bc, $01a0                                     ; $7c4e: $01 $a0 $01
	ld bc, $e0b9                                     ; $7c51: $01 $b9 $e0
	nop                                              ; $7c54: $00
	ld [hl], b                                       ; $7c55: $70
	ld [bc], a                                       ; $7c56: $02
	jp nc, $2bd3                                     ; $7c57: $d2 $d3 $2b

	pop hl                                           ; $7c5a: $e1
	ld [bc], a                                       ; $7c5b: $02
	ld [bc], a                                       ; $7c5c: $02
	db $10                                           ; $7c5d: $10
	ret nz                                           ; $7c5e: $c0

	ld bc, $09a0                                     ; $7c5f: $01 $a0 $09
	dec b                                            ; $7c62: $05
	xor h                                            ; $7c63: $ac
	ret nz                                           ; $7c64: $c0

	ld bc, $01a0                                     ; $7c65: $01 $a0 $01
	dec b                                            ; $7c68: $05
	rst SubAFromDE                                          ; $7c69: $df
	ret nz                                           ; $7c6a: $c0

	ld bc, $09a0                                     ; $7c6b: $01 $a0 $09
	ld b, $0e                                        ; $7c6e: $06 $0e
	ret nz                                           ; $7c70: $c0

	ld bc, $01a0                                     ; $7c71: $01 $a0 $01
	ld b, $01                                        ; $7c74: $06 $01
	ret nz                                           ; $7c76: $c0

	ld bc, $09a0                                     ; $7c77: $01 $a0 $09
	ld bc, $c0d4                                     ; $7c7a: $01 $d4 $c0
	ld bc, $01a0                                     ; $7c7d: $01 $a0 $01
	ld bc, $e0b9                                     ; $7c80: $01 $b9 $e0
	nop                                              ; $7c83: $00
	ld d, [hl]                                       ; $7c84: $56
	ld bc, $1fd4                                     ; $7c85: $01 $d4 $1f
	pop hl                                           ; $7c88: $e1
	ld [bc], a                                       ; $7c89: $02
	ld [bc], a                                       ; $7c8a: $02
	db $10                                           ; $7c8b: $10
	ret nz                                           ; $7c8c: $c0

	ld bc, $09a0                                     ; $7c8d: $01 $a0 $09
	dec b                                            ; $7c90: $05
	xor h                                            ; $7c91: $ac
	ret nz                                           ; $7c92: $c0

	ld bc, $01a0                                     ; $7c93: $01 $a0 $01
	ld bc, wGenericTileDataDest                                     ; $7c96: $01 $e2 $c0
	ld bc, $09a0                                     ; $7c99: $01 $a0 $09
	ld b, $18                                        ; $7c9c: $06 $18
	ret nz                                           ; $7c9e: $c0

	ld bc, $01a0                                     ; $7c9f: $01 $a0 $01
	ld b, $01                                        ; $7ca2: $06 $01
	ldh [rP1], a                                     ; $7ca4: $e0 $00
	ld c, c                                          ; $7ca6: $49
	ld bc, $03d5                                     ; $7ca7: $01 $d5 $03
	ldh [rP1], a                                     ; $7caa: $e0 $00
	ld b, $e5                                        ; $7cac: $06 $e5
	inc sp                                           ; $7cae: $33
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	ld [de], a                                       ; $7cb1: $12
	or b                                             ; $7cb2: $b0
	ld a, a                                          ; $7cb3: $7f
	rlca                                             ; $7cb4: $07
	pop hl                                           ; $7cb5: $e1
	ld [bc], a                                       ; $7cb6: $02
	ld [bc], a                                       ; $7cb7: $02
	db $10                                           ; $7cb8: $10
	ldh [rP1], a                                     ; $7cb9: $e0 $00
	ld c, c                                          ; $7cbb: $49
	rst $38                                          ; $7cbc: $ff
	ld b, $c0                                        ; $7cbd: $06 $c0
	ld bc, $01a0                                     ; $7cbf: $01 $a0 $01
	ld b, $28                                        ; $7cc2: $06 $28
	inc d                                            ; $7cc4: $14
	ret nz                                           ; $7cc5: $c0

	ld bc, $09a0                                     ; $7cc6: $01 $a0 $09
	ld b, $2f                                        ; $7cc9: $06 $2f
	ret nz                                           ; $7ccb: $c0

	ld bc, $01a0                                     ; $7ccc: $01 $a0 $01
	ld bc, $c064                                     ; $7ccf: $01 $64 $c0
	ld bc, $09a0                                     ; $7cd2: $01 $a0 $09
	ld b, $37                                        ; $7cd5: $06 $37
	pop bc                                           ; $7cd7: $c1
	ld e, e                                          ; $7cd8: $5b
	inc d                                            ; $7cd9: $14
	ret nz                                           ; $7cda: $c0

	ld bc, $09a0                                     ; $7cdb: $01 $a0 $09
	ld b, $3f                                        ; $7cde: $06 $3f
	ret nz                                           ; $7ce0: $c0

	ld bc, $01a0                                     ; $7ce1: $01 $a0 $01
	ld bc, $c064                                     ; $7ce4: $01 $64 $c0
	ld bc, $09a0                                     ; $7ce7: $01 $a0 $09
	ld b, $44                                        ; $7cea: $06 $44
	pop bc                                           ; $7cec: $c1
	ld e, e                                          ; $7ced: $5b
	inc d                                            ; $7cee: $14
	ret nz                                           ; $7cef: $c0

	ld bc, $09a0                                     ; $7cf0: $01 $a0 $09
	ld b, $4e                                        ; $7cf3: $06 $4e
	ret nz                                           ; $7cf5: $c0

	ld bc, $01a0                                     ; $7cf6: $01 $a0 $01
	ld bc, $c064                                     ; $7cf9: $01 $64 $c0
	ld bc, $09a0                                     ; $7cfc: $01 $a0 $09
	ld b, $4f                                        ; $7cff: $06 $4f
	pop bc                                           ; $7d01: $c1
	ld e, e                                          ; $7d02: $5b
	inc d                                            ; $7d03: $14
	ret nz                                           ; $7d04: $c0

	ld bc, $01a0                                     ; $7d05: $01 $a0 $01
	nop                                              ; $7d08: $00
	ld [hl], e                                       ; $7d09: $73
	ret nz                                           ; $7d0a: $c0

	ld bc, $09a0                                     ; $7d0b: $01 $a0 $09
	ld b, $5a                                        ; $7d0e: $06 $5a
	pop bc                                           ; $7d10: $c1
	ld e, e                                          ; $7d11: $5b
	ret nz                                           ; $7d12: $c0

	ld bc, $01a0                                     ; $7d13: $01 $a0 $01
	ld b, $68                                        ; $7d16: $06 $68
	rlca                                             ; $7d18: $07
	rlca                                             ; $7d19: $07
	add hl, bc                                       ; $7d1a: $09
	jr nz, @-$3e                                     ; $7d1b: $20 $c0

	ld hl, $d8d2                                     ; $7d1d: $21 $d2 $d8
	add e                                            ; $7d20: $83
	ret nz                                           ; $7d21: $c0

	call c, $01d4                                    ; $7d22: $dc $d4 $01
	ret nc                                           ; $7d25: $d0

	inc bc                                           ; $7d26: $03
	db $e4                                           ; $7d27: $e4
	nop                                              ; $7d28: $00
	inc d                                            ; $7d29: $14
	ld bc, $03d1                                     ; $7d2a: $01 $d1 $03
	db $e4                                           ; $7d2d: $e4
	ld [bc], a                                       ; $7d2e: $02
	ret nz                                           ; $7d2f: $c0

	ld bc, $03d2                                     ; $7d30: $01 $d2 $03
	db $e4                                           ; $7d33: $e4
	inc b                                            ; $7d34: $04
	add $01                                          ; $7d35: $c6 $01
	db $d3                                           ; $7d37: $d3
	inc bc                                           ; $7d38: $03
	db $e4                                           ; $7d39: $e4
	ld b, $d6                                        ; $7d3a: $06 $d6
	add hl, bc                                       ; $7d3c: $09
	dec d                                            ; $7d3d: $15
	add d                                            ; $7d3e: $82
	ret nz                                           ; $7d3f: $c0

	add b                                            ; $7d40: $80
	ld bc, $03d3                                     ; $7d41: $01 $d3 $03
	db $e4                                           ; $7d44: $e4
	ld bc, $01e1                                     ; $7d45: $01 $e1 $01
	jp nc, $e403                                     ; $7d48: $d2 $03 $e4

	nop                                              ; $7d4b: $00
	or e                                             ; $7d4c: $b3
	ld bc, $03d1                                     ; $7d4d: $01 $d1 $03
	db $e4                                           ; $7d50: $e4
	nop                                              ; $7d51: $00
	ld [bc], a                                       ; $7d52: $02
	add hl, bc                                       ; $7d53: $09
	xor c                                            ; $7d54: $a9
	ret nz                                           ; $7d55: $c0

	ld de, $00e3                                     ; $7d56: $11 $e3 $00
	ld d, [hl]                                       ; $7d59: $56
	pop hl                                           ; $7d5a: $e1
	ld [bc], a                                       ; $7d5b: $02
	ld [bc], a                                       ; $7d5c: $02
	jr @-$3e                                         ; $7d5d: $18 $c0

	ld bc, $09a0                                     ; $7d5f: $01 $a0 $09
	nop                                              ; $7d62: $00
	ld bc, $c082                                     ; $7d63: $01 $82 $c0
	dec de                                           ; $7d66: $1b
	ret c                                            ; $7d67: $d8

	ld [bc], a                                       ; $7d68: $02
	ret nc                                           ; $7d69: $d0

	pop de                                           ; $7d6a: $d1
	ld sp, $01c0                                     ; $7d6b: $31 $c0 $01
	and b                                            ; $7d6e: $a0
	ld bc, $0b00                                     ; $7d6f: $01 $00 $0b
	pop hl                                           ; $7d72: $e1
	ld [bc], a                                       ; $7d73: $02
	inc bc                                           ; $7d74: $03
	dec de                                           ; $7d75: $1b
	ret nz                                           ; $7d76: $c0

	ld bc, $09a0                                     ; $7d77: $01 $a0 $09
	nop                                              ; $7d7a: $00
	inc d                                            ; $7d7b: $14
	ret nz                                           ; $7d7c: $c0

	ld bc, $01a0                                     ; $7d7d: $01 $a0 $01
	nop                                              ; $7d80: $00
	ld a, [de]                                       ; $7d81: $1a
	ret nz                                           ; $7d82: $c0

	ld bc, $09a0                                     ; $7d83: $01 $a0 $09
	nop                                              ; $7d86: $00
	ld hl, $01c0                                     ; $7d87: $21 $c0 $01
	and b                                            ; $7d8a: $a0
	ld bc, $2800                                     ; $7d8b: $01 $00 $28
	ret nz                                           ; $7d8e: $c0

	ld bc, $09a0                                     ; $7d8f: $01 $a0 $09
	nop                                              ; $7d92: $00
	ld [hl-], a                                      ; $7d93: $32
	ret nz                                           ; $7d94: $c0

	ld bc, $01a0                                     ; $7d95: $01 $a0 $01
	nop                                              ; $7d98: $00
	add hl, sp                                       ; $7d99: $39
	ldh [rP1], a                                     ; $7d9a: $e0 $00
	ld a, [$d202]                                    ; $7d9c: $fa $02 $d2
	db $d3                                           ; $7d9f: $d3
	dec hl                                           ; $7da0: $2b
	ret nz                                           ; $7da1: $c0

	ld bc, $01a0                                     ; $7da2: $01 $a0 $01
	nop                                              ; $7da5: $00
	dec bc                                           ; $7da6: $0b
	pop hl                                           ; $7da7: $e1
	ld [bc], a                                       ; $7da8: $02
	inc bc                                           ; $7da9: $03
	dec de                                           ; $7daa: $1b
	ret nz                                           ; $7dab: $c0

	ld bc, $09a0                                     ; $7dac: $01 $a0 $09
	nop                                              ; $7daf: $00
	ld b, b                                          ; $7db0: $40
	ret nz                                           ; $7db1: $c0

	ld bc, $01a0                                     ; $7db2: $01 $a0 $01
	nop                                              ; $7db5: $00
	ld c, b                                          ; $7db6: $48
	ret nz                                           ; $7db7: $c0

	ld bc, $09a0                                     ; $7db8: $01 $a0 $09
	nop                                              ; $7dbb: $00
	ld d, a                                          ; $7dbc: $57
	ret nz                                           ; $7dbd: $c0

	ld bc, $01a0                                     ; $7dbe: $01 $a0 $01
	nop                                              ; $7dc1: $00
	ld e, a                                          ; $7dc2: $5f
	ret nz                                           ; $7dc3: $c0

	ld bc, $09a0                                     ; $7dc4: $01 $a0 $09
	nop                                              ; $7dc7: $00
	ld h, l                                          ; $7dc8: $65
	ldh [rP1], a                                     ; $7dc9: $e0 $00
	cp $01                                           ; $7dcb: $fe $01
	call nc, $c029                                   ; $7dcd: $d4 $29 $c0
	ld bc, $01a0                                     ; $7dd0: $01 $a0 $01
	nop                                              ; $7dd3: $00
	ld l, d                                          ; $7dd4: $6a
	pop hl                                           ; $7dd5: $e1
	ld [bc], a                                       ; $7dd6: $02
	inc bc                                           ; $7dd7: $03
	dec de                                           ; $7dd8: $1b
	ret nz                                           ; $7dd9: $c0

	ld bc, $09a0                                     ; $7dda: $01 $a0 $09
	nop                                              ; $7ddd: $00
	ld [hl], d                                       ; $7dde: $72
	ret nz                                           ; $7ddf: $c0

	ld bc, $01a0                                     ; $7de0: $01 $a0 $01
	nop                                              ; $7de3: $00
	ld c, b                                          ; $7de4: $48
	ret nz                                           ; $7de5: $c0

	ld bc, $09a0                                     ; $7de6: $01 $a0 $09
	nop                                              ; $7de9: $00
	ld a, l                                          ; $7dea: $7d
	ret nz                                           ; $7deb: $c0

	ld bc, $01a0                                     ; $7dec: $01 $a0 $01
	nop                                              ; $7def: $00
	adc e                                            ; $7df0: $8b
	pop hl                                           ; $7df1: $e1
	ld [bc], a                                       ; $7df2: $02
	inc bc                                           ; $7df3: $03
	daa                                              ; $7df4: $27
	ldh [rSB], a                                     ; $7df5: $e0 $01
	rla                                              ; $7df7: $17
	pop bc                                           ; $7df8: $c1
	ld e, e                                          ; $7df9: $5b
	push hl                                          ; $7dfa: $e5
	inc sp                                           ; $7dfb: $33
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	add hl, bc                                       ; $7dfe: $09
	sub l                                            ; $7dff: $95
	ret nz                                           ; $7e00: $c0

	ld de, $00e3                                     ; $7e01: $11 $e3 $00
	ld d, [hl]                                       ; $7e04: $56
	pop hl                                           ; $7e05: $e1
	ld [bc], a                                       ; $7e06: $02
	ld [bc], a                                       ; $7e07: $02
	jr @-$3e                                         ; $7e08: $18 $c0

	ld bc, $09a0                                     ; $7e0a: $01 $a0 $09
	nop                                              ; $7e0d: $00
	sub l                                            ; $7e0e: $95
	add d                                            ; $7e0f: $82
	ret nz                                           ; $7e10: $c0

	dec de                                           ; $7e11: $1b
	ret c                                            ; $7e12: $d8

	ld [bc], a                                       ; $7e13: $02
	ret nc                                           ; $7e14: $d0

	pop de                                           ; $7e15: $d1
	ld sp, $01c0                                     ; $7e16: $31 $c0 $01
	and b                                            ; $7e19: $a0
	ld bc, $0b00                                     ; $7e1a: $01 $00 $0b
	pop hl                                           ; $7e1d: $e1
	ld [bc], a                                       ; $7e1e: $02
	inc bc                                           ; $7e1f: $03
	dec de                                           ; $7e20: $1b
	ret nz                                           ; $7e21: $c0

	ld bc, $09a0                                     ; $7e22: $01 $a0 $09
	nop                                              ; $7e25: $00
	inc d                                            ; $7e26: $14
	ret nz                                           ; $7e27: $c0

	ld bc, $01a0                                     ; $7e28: $01 $a0 $01
	nop                                              ; $7e2b: $00
	and c                                            ; $7e2c: $a1
	ret nz                                           ; $7e2d: $c0

	ld bc, $09a0                                     ; $7e2e: $01 $a0 $09
	nop                                              ; $7e31: $00
	ld hl, $01c0                                     ; $7e32: $21 $c0 $01
	and b                                            ; $7e35: $a0
	ld bc, $a800                                     ; $7e36: $01 $00 $a8
	ret nz                                           ; $7e39: $c0

	ld bc, $09a0                                     ; $7e3a: $01 $a0 $09
	nop                                              ; $7e3d: $00
	or h                                             ; $7e3e: $b4
	ret nz                                           ; $7e3f: $c0

	ld bc, $01a0                                     ; $7e40: $01 $a0 $01
	nop                                              ; $7e43: $00
	cp h                                             ; $7e44: $bc
	ldh [rP1], a                                     ; $7e45: $e0 $00
	ld c, a                                          ; $7e47: $4f
	ld [bc], a                                       ; $7e48: $02
	jp nc, $1fd3                                     ; $7e49: $d2 $d3 $1f

	ret nz                                           ; $7e4c: $c0

	ld bc, $01a0                                     ; $7e4d: $01 $a0 $01
	nop                                              ; $7e50: $00
	dec bc                                           ; $7e51: $0b
	pop hl                                           ; $7e52: $e1
	ld [bc], a                                       ; $7e53: $02
	inc bc                                           ; $7e54: $03
	dec de                                           ; $7e55: $1b
	ret nz                                           ; $7e56: $c0

	ld bc, $09a0                                     ; $7e57: $01 $a0 $09
	nop                                              ; $7e5a: $00
	add $c0                                          ; $7e5b: $c6 $c0
	ld bc, $01a0                                     ; $7e5d: $01 $a0 $01
	nop                                              ; $7e60: $00
	adc $c0                                          ; $7e61: $ce $c0
	ld bc, $09a0                                     ; $7e63: $01 $a0 $09
	nop                                              ; $7e66: $00
	rst SubAFromDE                                          ; $7e67: $df
	ldh [rP1], a                                     ; $7e68: $e0 $00
	ld e, a                                          ; $7e6a: $5f
	ld bc, $21d4                                     ; $7e6b: $01 $d4 $21
	ret nz                                           ; $7e6e: $c0

	ld bc, $01a0                                     ; $7e6f: $01 $a0 $01
	nop                                              ; $7e72: $00
	ld l, d                                          ; $7e73: $6a
	ret nz                                           ; $7e74: $c0

	ld bc, $09a0                                     ; $7e75: $01 $a0 $09
	nop                                              ; $7e78: $00
	ldh [c], a                                       ; $7e79: $e2
	ret nz                                           ; $7e7a: $c0

	ld bc, $01a0                                     ; $7e7b: $01 $a0 $01
	nop                                              ; $7e7e: $00
	adc $c0                                          ; $7e7f: $ce $c0
	ld bc, $09a0                                     ; $7e81: $01 $a0 $09
	nop                                              ; $7e84: $00
	rst AddAOntoHL                                          ; $7e85: $ef
	ret nz                                           ; $7e86: $c0

	ld bc, $01a0                                     ; $7e87: $01 $a0 $01
	nop                                              ; $7e8a: $00
	cp $e0                                           ; $7e8b: $fe $e0
	nop                                              ; $7e8d: $00
	add b                                            ; $7e8e: $80
	pop bc                                           ; $7e8f: $c1
	ld e, e                                          ; $7e90: $5b
	push hl                                          ; $7e91: $e5
	inc sp                                           ; $7e92: $33
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	ld [hl-], a                                      ; $7e95: $32
	ret nz                                           ; $7e96: $c0

	ld bc, $09a0                                     ; $7e97: $01 $a0 $09
	ld bc, $e106                                     ; $7e9a: $01 $06 $e1
	ld [bc], a                                       ; $7e9d: $02
	rlca                                             ; $7e9e: $07
	sbc e                                            ; $7e9f: $9b
	ret nz                                           ; $7ea0: $c0

	ld bc, $01a0                                     ; $7ea1: $01 $a0 $01
	ld bc, $c009                                     ; $7ea4: $01 $09 $c0
	ld bc, $09a0                                     ; $7ea7: $01 $a0 $09
	ld bc, $c00d                                     ; $7eaa: $01 $0d $c0
	ld bc, $01a0                                     ; $7ead: $01 $a0 $01
	ld bc, $e115                                     ; $7eb0: $01 $15 $e1
	ld [bc], a                                       ; $7eb3: $02
	inc bc                                           ; $7eb4: $03
	daa                                              ; $7eb5: $27
	ret nz                                           ; $7eb6: $c0

	ld bc, $09a0                                     ; $7eb7: $01 $a0 $09
	ld bc, $c01d                                     ; $7eba: $01 $1d $c0
	ld bc, $01a0                                     ; $7ebd: $01 $a0 $01
	ld bc, $c027                                     ; $7ec0: $01 $27 $c0
	ld bc, $09a0                                     ; $7ec3: $01 $a0 $09
	ld bc, $442c                                     ; $7ec6: $01 $2c $44
	ret nz                                           ; $7ec9: $c0

	ld bc, $01a0                                     ; $7eca: $01 $a0 $01
	ld bc, $c034                                     ; $7ecd: $01 $34 $c0
	ld bc, $09a0                                     ; $7ed0: $01 $a0 $09
	ld bc, $c03b                                     ; $7ed3: $01 $3b $c0
	ld bc, $01a0                                     ; $7ed6: $01 $a0 $01
	ld bc, $e140                                     ; $7ed9: $01 $40 $e1
	ld [bc], a                                       ; $7edc: $02
	rlca                                             ; $7edd: $07
	sbc e                                            ; $7ede: $9b
	ret nz                                           ; $7edf: $c0

	ld bc, $01a0                                     ; $7ee0: $01 $a0 $01
	ld bc, $c009                                     ; $7ee3: $01 $09 $c0
	ld bc, $09a0                                     ; $7ee6: $01 $a0 $09
	ld bc, $c045                                     ; $7ee9: $01 $45 $c0
	ld bc, $01a0                                     ; $7eec: $01 $a0 $01
	ld bc, $e151                                     ; $7eef: $01 $51 $e1

jr_084_7ef2:
	ld [bc], a                                       ; $7ef2: $02
	inc bc                                           ; $7ef3: $03
	daa                                              ; $7ef4: $27
	ret nz                                           ; $7ef5: $c0

	ld bc, $09a0                                     ; $7ef6: $01 $a0 $09
	ld bc, $c05b                                     ; $7ef9: $01 $5b $c0
	ld bc, $01a0                                     ; $7efc: $01 $a0 $01
	ld bc, $c06e                                     ; $7eff: $01 $6e $c0
	ld bc, $09a0                                     ; $7f02: $01 $a0 $09
	ld bc, $c07a                                     ; $7f05: $01 $7a $c0
	ld bc, $01a0                                     ; $7f08: $01 $a0 $01
	ld bc, $1883                                     ; $7f0b: $01 $83 $18
	ret nz                                           ; $7f0e: $c0

	ld bc, $09a0                                     ; $7f0f: $01 $a0 $09
	ld bc, $c08e                                     ; $7f12: $01 $8e $c0
	ld bc, $01a0                                     ; $7f15: $01 $a0 $01
	ld bc, $c09a                                     ; $7f18: $01 $9a $c0
	ld bc, $09a0                                     ; $7f1b: $01 $a0 $09
	ld bc, $c09e                                     ; $7f1e: $01 $9e $c0
	ld bc, $01a0                                     ; $7f21: $01 $a0 $01
	ld bc, $09a5                                     ; $7f24: $01 $a5 $09
	cp l                                             ; $7f27: $bd
	ret nz                                           ; $7f28: $c0

	ld de, $00e3                                     ; $7f29: $11 $e3 $00
	ld e, e                                          ; $7f2c: $5b
	pop hl                                           ; $7f2d: $e1
	ld [bc], a                                       ; $7f2e: $02
	ld [bc], a                                       ; $7f2f: $02
	jr jr_084_7ef2                                   ; $7f30: $18 $c0

	ld bc, $09a0                                     ; $7f32: $01 $a0 $09
	ld bc, $82a9                                     ; $7f35: $01 $a9 $82
	ret nz                                           ; $7f38: $c0

	dec de                                           ; $7f39: $1b
	ret c                                            ; $7f3a: $d8

	ld [bc], a                                       ; $7f3b: $02
	ret nc                                           ; $7f3c: $d0

	pop de                                           ; $7f3d: $d1
	add hl, sp                                       ; $7f3e: $39
	ret nz                                           ; $7f3f: $c0

	ld bc, $01a0                                     ; $7f40: $01 $a0 $01
	nop                                              ; $7f43: $00
	dec bc                                           ; $7f44: $0b
	ldh [rP1], a                                     ; $7f45: $e0 $00
	sbc a                                            ; $7f47: $9f
	ret nz                                           ; $7f48: $c0

	ld bc, $09a0                                     ; $7f49: $01 $a0 $09
	ld bc, $c0af                                     ; $7f4c: $01 $af $c0
	ld bc, $01a0                                     ; $7f4f: $01 $a0 $01
	ld bc, $c0b8                                     ; $7f52: $01 $b8 $c0
	ld bc, $09a0                                     ; $7f55: $01 $a0 $09
	ld bc, $c0c4                                     ; $7f58: $01 $c4 $c0
	ld bc, $01a0                                     ; $7f5b: $01 $a0 $01
	ld bc, $c0ce                                     ; $7f5e: $01 $ce $c0
	ld bc, $09a0                                     ; $7f61: $01 $a0 $09
	ld bc, $c0d7                                     ; $7f64: $01 $d7 $c0
	ld bc, $01a0                                     ; $7f67: $01 $a0 $01
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $7f6a: $01 $e4 $c0
	ld bc, $09a0                                     ; $7f6d: $01 $a0 $09
	ld bc, $c0ea                                     ; $7f70: $01 $ea $c0
	ld bc, $01a0                                     ; $7f73: $01 $a0 $01
	ld bc, $02f0                                     ; $7f76: $01 $f0 $02
	jp nc, $39d3                                     ; $7f79: $d2 $d3 $39

	ret nz                                           ; $7f7c: $c0

	ld bc, $01a0                                     ; $7f7d: $01 $a0 $01
	nop                                              ; $7f80: $00
	dec bc                                           ; $7f81: $0b
	ldh [rP1], a                                     ; $7f82: $e0 $00
	ld h, d                                          ; $7f84: $62
	ret nz                                           ; $7f85: $c0

	ld bc, $09a0                                     ; $7f86: $01 $a0 $09
	ld bc, $c0f4                                     ; $7f89: $01 $f4 $c0
	ld bc, $01a0                                     ; $7f8c: $01 $a0 $01
	ld bc, $c0fd                                     ; $7f8f: $01 $fd $c0
	ld bc, $09a0                                     ; $7f92: $01 $a0 $09
	ld [bc], a                                       ; $7f95: $02
	inc b                                            ; $7f96: $04
	ret nz                                           ; $7f97: $c0

	ld bc, $01a0                                     ; $7f98: $01 $a0 $01
	ld bc, $c0ce                                     ; $7f9b: $01 $ce $c0
	ld bc, $09a0                                     ; $7f9e: $01 $a0 $09
	ld [bc], a                                       ; $7fa1: $02
	dec c                                            ; $7fa2: $0d
	ret nz                                           ; $7fa3: $c0

	ld bc, $01a0                                     ; $7fa4: $01 $a0 $01
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $7fa7: $01 $e4 $c0
	ld bc, $09a0                                     ; $7faa: $01 $a0 $09
	ld bc, $c0ea                                     ; $7fad: $01 $ea $c0
	ld bc, $01a0                                     ; $7fb0: $01 $a0 $01
	ld bc, $01f0                                     ; $7fb3: $01 $f0 $01
	call nc, $c027                                   ; $7fb6: $d4 $27 $c0
	ld bc, $01a0                                     ; $7fb9: $01 $a0 $01
	nop                                              ; $7fbc: $00
	ld l, d                                          ; $7fbd: $6a
	ldh [rP1], a                                     ; $7fbe: $e0 $00
	ld h, $c0                                        ; $7fc0: $26 $c0
	ld bc, $09a0                                     ; $7fc2: $01 $a0 $09
	ld [bc], a                                       ; $7fc5: $02
	ld a, [de]                                       ; $7fc6: $1a
	ret nz                                           ; $7fc7: $c0

	ld bc, $01a0                                     ; $7fc8: $01 $a0 $01
	ld [bc], a                                       ; $7fcb: $02
	add hl, hl                                       ; $7fcc: $29
	ret nz                                           ; $7fcd: $c0

	ld bc, $09a0                                     ; $7fce: $01 $a0 $09
	ld [bc], a                                       ; $7fd1: $02
	inc sp                                           ; $7fd2: $33
	ret nz                                           ; $7fd3: $c0

	ld bc, $01a0                                     ; $7fd4: $01 $a0 $01
	ld [bc], a                                       ; $7fd7: $02
	ld a, $c0                                        ; $7fd8: $3e $c0
	ld bc, $09a0                                     ; $7fda: $01 $a0 $09
	ld [bc], a                                       ; $7fdd: $02
	ld b, h                                          ; $7fde: $44
	pop bc                                           ; $7fdf: $c1
	ld e, e                                          ; $7fe0: $5b
	push hl                                          ; $7fe1: $e5
	inc sp                                           ; $7fe2: $33
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	ld [$32e1], sp                                   ; $7fe5: $08 $e1 $32
	ld bc, $e112                                     ; $7fe8: $01 $12 $e1
	ld [bc], a                                       ; $7feb: $02
	ld [bc], a                                       ; $7fec: $02
	jr jr_084_7ff8                                   ; $7fed: $18 $09

	dec e                                            ; $7fef: $1d
	add d                                            ; $7ff0: $82
	ret nz                                           ; $7ff1: $c0

	add b                                            ; $7ff2: $80
	ld bc, $07d3                                     ; $7ff3: $01 $d3 $07
	ret nz                                           ; $7ff6: $c0

	ld [hl+], a                                      ; $7ff7: $22

jr_084_7ff8:
	jp nc, $e4d8                                     ; $7ff8: $d2 $d8 $e4

	ld bc, $0149                             ; $7ffb: $01 $49 $01
	db $d2                                           ; $7ffe: $d2
	inc bc                                           ; $7fff: $03
