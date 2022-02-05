; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $087", ROMX[$4000], BANK[$87]

	inc b                                            ; $4000: $04
	ld bc, $c05a                                     ; $4001: $01 $5a $c0
	ld bc, $01a0                                     ; $4004: $01 $a0 $01
	ld bc, $c063                                     ; $4007: $01 $63 $c0
	ld bc, $04a0                                     ; $400a: $01 $a0 $04
	ld bc, $c16b                                     ; $400d: $01 $6b $c1
	ld e, e                                          ; $4010: $5b
	ret nz                                           ; $4011: $c0

	inc c                                            ; $4012: $0c
	ldh [rAUD3HIGH], a                               ; $4013: $e0 $1e
	ret nz                                           ; $4015: $c0

	ld bc, $01a0                                     ; $4016: $01 $a0 $01
	ld bc, $226c                                     ; $4019: $01 $6c $22
	ret nz                                           ; $401c: $c0

	xor h                                            ; $401d: $ac
	ret nz                                           ; $401e: $c0

	and l                                            ; $401f: $a5
	ret nz                                           ; $4020: $c0

	ld bc, $04a0                                     ; $4021: $01 $a0 $04
	ld bc, $c074                                     ; $4024: $01 $74 $c0
	ld bc, $01a0                                     ; $4027: $01 $a0 $01
	ld bc, $c077                                     ; $402a: $01 $77 $c0
	ld bc, $04a0                                     ; $402d: $01 $a0 $04
	ld bc, $c182                                     ; $4030: $01 $82 $c1
	ld e, e                                          ; $4033: $5b
	ret nz                                           ; $4034: $c0

	inc c                                            ; $4035: $0c
	ldh [rAUD3HIGH], a                               ; $4036: $e0 $1e
	ret nz                                           ; $4038: $c0

	ld bc, $01a0                                     ; $4039: $01 $a0 $01
	ld bc, $d092                                     ; $403c: $01 $92 $d0
	add h                                            ; $403f: $84
	ld [bc], a                                       ; $4040: $02
	cp e                                             ; $4041: $bb
	jp nc, $8040                                     ; $4042: $d2 $40 $80

	ld [bc], a                                       ; $4045: $02
	call nz, $c2c0                                   ; $4046: $c4 $c0 $c2
	jp nc, $8220                                     ; $4049: $d2 $20 $82

	ld [bc], a                                       ; $404c: $02
	ret nc                                           ; $404d: $d0

	ld e, c                                          ; $404e: $59
	ldh [rSC], a                                     ; $404f: $e0 $02
	ld b, $c0                                        ; $4051: $06 $c0
	xor b                                            ; $4053: $a8
	db $d3                                           ; $4054: $d3
	ld h, b                                          ; $4055: $60
	add b                                            ; $4056: $80
	ld [bc], a                                       ; $4057: $02
	rst JumpTable                                          ; $4058: $c7
	dec hl                                           ; $4059: $2b
	ret nz                                           ; $405a: $c0

	xor e                                            ; $405b: $ab
	jp nc, $a5c0                                     ; $405c: $d2 $c0 $a5

	ret nz                                           ; $405f: $c0

	ld bc, $05a0                                     ; $4060: $01 $a0 $05
	ld bc, $c09a                                     ; $4063: $01 $9a $c0
	ld bc, $01a0                                     ; $4066: $01 $a0 $01
	ld bc, $c09e                                     ; $4069: $01 $9e $c0
	ld bc, $05a0                                     ; $406c: $01 $a0 $05
	ld bc, $c0a9                                     ; $406f: $01 $a9 $c0
	ld bc, $01a0                                     ; $4072: $01 $a0 $01
	ld bc, $c0b4                                     ; $4075: $01 $b4 $c0
	ld bc, $05a0                                     ; $4078: $01 $a0 $05
	ld bc, $c1bd                                     ; $407b: $01 $bd $c1
	ld e, e                                          ; $407e: $5b
	ret nz                                           ; $407f: $c0

	ld bc, $01a0                                     ; $4080: $01 $a0 $01
	ld bc, $12c3                                     ; $4083: $01 $c3 $12
	ret nz                                           ; $4086: $c0

	xor h                                            ; $4087: $ac
	ret nz                                           ; $4088: $c0

	and l                                            ; $4089: $a5
	ret nz                                           ; $408a: $c0

	ld bc, $05a0                                     ; $408b: $01 $a0 $05
	ld bc, $c0ca                                     ; $408e: $01 $ca $c0
	ld bc, $01a0                                     ; $4091: $01 $a0 $01
	ld bc, $c1d3                                     ; $4094: $01 $d3 $c1
	ld e, e                                          ; $4097: $5b
	ret nc                                           ; $4098: $d0

	add h                                            ; $4099: $84
	ld [bc], a                                       ; $409a: $02
	cp e                                             ; $409b: $bb
	db $d3                                           ; $409c: $d3
	ld b, b                                          ; $409d: $40
	add b                                            ; $409e: $80
	ld [bc], a                                       ; $409f: $02
	add $c0                                          ; $40a0: $c6 $c0
	jp nz, $20d3                                     ; $40a2: $c2 $d3 $20

	add d                                            ; $40a5: $82
	ld [bc], a                                       ; $40a6: $02
	ret nc                                           ; $40a7: $d0

	ld a, c                                          ; $40a8: $79
	ldh [rSB], a                                     ; $40a9: $e0 $01
	xor h                                            ; $40ab: $ac
	ret nz                                           ; $40ac: $c0

	xor b                                            ; $40ad: $a8
	rst SubAFromHL                                          ; $40ae: $d7
	ld h, b                                          ; $40af: $60
	add b                                            ; $40b0: $80
	ld [bc], a                                       ; $40b1: $02
	ret                                              ; $40b2: $c9


	dec sp                                           ; $40b3: $3b
	ret nz                                           ; $40b4: $c0

	xor e                                            ; $40b5: $ab
	jp nc, $a5c0                                     ; $40b6: $d2 $c0 $a5

	ret nz                                           ; $40b9: $c0

	ld bc, $08a0                                     ; $40ba: $01 $a0 $08
	ld bc, $c0e1                                     ; $40bd: $01 $e1 $c0
	ld bc, $01a0                                     ; $40c0: $01 $a0 $01
	ld bc, $c0e5                                     ; $40c3: $01 $e5 $c0
	ld bc, $08a0                                     ; $40c6: $01 $a0 $08
	ld bc, $c0ea                                     ; $40c9: $01 $ea $c0
	ld bc, $01a0                                     ; $40cc: $01 $a0 $01
	ld bc, $c0f9                                     ; $40cf: $01 $f9 $c0
	ld bc, $08a0                                     ; $40d2: $01 $a0 $08
	ld [bc], a                                       ; $40d5: $02
	ld [bc], a                                       ; $40d6: $02
	ret nz                                           ; $40d7: $c0

	ld bc, $01a0                                     ; $40d8: $01 $a0 $01
	ld [bc], a                                       ; $40db: $02
	inc c                                            ; $40dc: $0c
	ret nz                                           ; $40dd: $c0

	ld bc, $08a0                                     ; $40de: $01 $a0 $08
	ld [bc], a                                       ; $40e1: $02
	inc de                                           ; $40e2: $13
	pop bc                                           ; $40e3: $c1
	ld e, e                                          ; $40e4: $5b
	ret nz                                           ; $40e5: $c0

	inc c                                            ; $40e6: $0c
	ldh [rAUD3HIGH], a                               ; $40e7: $e0 $1e
	ret nz                                           ; $40e9: $c0

	ld bc, $01a0                                     ; $40ea: $01 $a0 $01
	ld [bc], a                                       ; $40ed: $02
	ld e, $22                                        ; $40ee: $1e $22
	ret nz                                           ; $40f0: $c0

	xor h                                            ; $40f1: $ac
	ret nz                                           ; $40f2: $c0

	and l                                            ; $40f3: $a5
	ret nz                                           ; $40f4: $c0

	ld bc, $08a0                                     ; $40f5: $01 $a0 $08
	ld bc, $c074                                     ; $40f8: $01 $74 $c0
	ld bc, $01a0                                     ; $40fb: $01 $a0 $01
	ld bc, $c0e5                                     ; $40fe: $01 $e5 $c0
	ld bc, $08a0                                     ; $4101: $01 $a0 $08
	ld [bc], a                                       ; $4104: $02
	dec l                                            ; $4105: $2d
	pop bc                                           ; $4106: $c1
	ld e, e                                          ; $4107: $5b
	ret nz                                           ; $4108: $c0

	inc c                                            ; $4109: $0c
	ldh [rAUD3HIGH], a                               ; $410a: $e0 $1e
	ret nz                                           ; $410c: $c0

	ld bc, $01a0                                     ; $410d: $01 $a0 $01
	ld [bc], a                                       ; $4110: $02
	inc [hl]                                         ; $4111: $34
	ret nc                                           ; $4112: $d0

	add h                                            ; $4113: $84
	ld [bc], a                                       ; $4114: $02
	cp e                                             ; $4115: $bb
	rst SubAFromHL                                          ; $4116: $d7
	ld b, b                                          ; $4117: $40
	add b                                            ; $4118: $80
	ld [bc], a                                       ; $4119: $02

jr_087_411a:
	ret z                                            ; $411a: $c8

	ret nz                                           ; $411b: $c0

	jp nz, $20d7                                     ; $411c: $c2 $d7 $20

	add d                                            ; $411f: $82
	ld [bc], a                                       ; $4120: $02
	ret nc                                           ; $4121: $d0

	ld [hl], a                                       ; $4122: $77
	ldh [rSB], a                                     ; $4123: $e0 $01
	ld [hl-], a                                      ; $4125: $32
	ret nz                                           ; $4126: $c0

	xor b                                            ; $4127: $a8
	ret c                                            ; $4128: $d8

	ld h, b                                          ; $4129: $60
	add b                                            ; $412a: $80
	ld [bc], a                                       ; $412b: $02
	srl l                                            ; $412c: $cb $3d
	ret nz                                           ; $412e: $c0

	xor e                                            ; $412f: $ab
	jp nc, $a5c0                                     ; $4130: $d2 $c0 $a5

	ret nz                                           ; $4133: $c0

	ld bc, $09a0                                     ; $4134: $01 $a0 $09
	ld [bc], a                                       ; $4137: $02
	ld b, d                                          ; $4138: $42
	ret nz                                           ; $4139: $c0

	ld bc, $01a0                                     ; $413a: $01 $a0 $01
	ld [bc], a                                       ; $413d: $02
	ld b, a                                          ; $413e: $47
	ret nz                                           ; $413f: $c0

	ld bc, $09a0                                     ; $4140: $01 $a0 $09
	ld [bc], a                                       ; $4143: $02
	ld e, b                                          ; $4144: $58
	ret nz                                           ; $4145: $c0

	ld bc, $01a0                                     ; $4146: $01 $a0 $01
	ld [bc], a                                       ; $4149: $02
	ld h, c                                          ; $414a: $61
	ret nz                                           ; $414b: $c0

	ld bc, $09a0                                     ; $414c: $01 $a0 $09
	ld [bc], a                                       ; $414f: $02
	ld h, [hl]                                       ; $4150: $66
	ret nz                                           ; $4151: $c0

	ld bc, $01a0                                     ; $4152: $01 $a0 $01
	ld [bc], a                                       ; $4155: $02
	ld l, [hl]                                       ; $4156: $6e
	ret nz                                           ; $4157: $c0

	ld bc, $09a0                                     ; $4158: $01 $a0 $09
	ld [bc], a                                       ; $415b: $02
	ld a, e                                          ; $415c: $7b
	ret nz                                           ; $415d: $c0

	ld bc, $01a0                                     ; $415e: $01 $a0 $01
	ld [bc], a                                       ; $4161: $02
	add l                                            ; $4162: $85
	ret nz                                           ; $4163: $c0

	ld bc, $09a0                                     ; $4164: $01 $a0 $09
	ld [bc], a                                       ; $4167: $02
	add a                                            ; $4168: $87
	pop bc                                           ; $4169: $c1
	ld e, e                                          ; $416a: $5b
	ld e, $c0                                        ; $416b: $1e $c0
	xor h                                            ; $416d: $ac
	ret nz                                           ; $416e: $c0

	and l                                            ; $416f: $a5
	ret nz                                           ; $4170: $c0

	ld bc, $09a0                                     ; $4171: $01 $a0 $09
	ld [bc], a                                       ; $4174: $02
	ld b, d                                          ; $4175: $42
	ret nz                                           ; $4176: $c0

	ld bc, $01a0                                     ; $4177: $01 $a0 $01
	ld [bc], a                                       ; $417a: $02
	adc l                                            ; $417b: $8d
	ret nz                                           ; $417c: $c0

	ld bc, $09a0                                     ; $417d: $01 $a0 $09
	ld [bc], a                                       ; $4180: $02
	sbc c                                            ; $4181: $99
	pop bc                                           ; $4182: $c1
	ld e, e                                          ; $4183: $5b
	ret nz                                           ; $4184: $c0

	ld bc, $01a0                                     ; $4185: $01 $a0 $01
	ld [bc], a                                       ; $4188: $02
	inc [hl]                                         ; $4189: $34
	ret nc                                           ; $418a: $d0

	add h                                            ; $418b: $84
	ld [bc], a                                       ; $418c: $02
	cp e                                             ; $418d: $bb
	ret c                                            ; $418e: $d8

	ld b, b                                          ; $418f: $40
	add b                                            ; $4190: $80
	ld [bc], a                                       ; $4191: $02
	jp z, $c2c0                                      ; $4192: $ca $c0 $c2

	ret c                                            ; $4195: $d8

	jr nz, jr_087_411a                               ; $4196: $20 $82

	ld [bc], a                                       ; $4198: $02
	ret nc                                           ; $4199: $d0

	ld e, c                                          ; $419a: $59
	ldh [rP1], a                                     ; $419b: $e0 $00
	cp d                                             ; $419d: $ba
	ret nz                                           ; $419e: $c0

	xor b                                            ; $419f: $a8
	jp c, $8060                                      ; $41a0: $da $60 $80

	ld [bc], a                                       ; $41a3: $02
	call $c02b                                       ; $41a4: $cd $2b $c0
	xor e                                            ; $41a7: $ab
	jp nc, $a5c0                                     ; $41a8: $d2 $c0 $a5

	ret nz                                           ; $41ab: $c0

	ld bc, $06a0                                     ; $41ac: $01 $a0 $06
	ld [bc], a                                       ; $41af: $02
	and d                                            ; $41b0: $a2
	ret nz                                           ; $41b1: $c0

	ld bc, $01a0                                     ; $41b2: $01 $a0 $01
	ld [bc], a                                       ; $41b5: $02
	xor b                                            ; $41b6: $a8
	ret nz                                           ; $41b7: $c0

	ld bc, $06a0                                     ; $41b8: $01 $a0 $06
	ld [bc], a                                       ; $41bb: $02
	or d                                             ; $41bc: $b2
	ret nz                                           ; $41bd: $c0

	ld bc, $01a0                                     ; $41be: $01 $a0 $01
	ld [bc], a                                       ; $41c1: $02
	jp $01c0                                         ; $41c2: $c3 $c0 $01


	and b                                            ; $41c5: $a0
	ld b, $02                                        ; $41c6: $06 $02
	ret z                                            ; $41c8: $c8

	pop bc                                           ; $41c9: $c1
	ld e, e                                          ; $41ca: $5b
	ret nz                                           ; $41cb: $c0

	ld bc, $01a0                                     ; $41cc: $01 $a0 $01
	ld [bc], a                                       ; $41cf: $02
	ret nc                                           ; $41d0: $d0

	ld [de], a                                       ; $41d1: $12
	ret nz                                           ; $41d2: $c0

	xor h                                            ; $41d3: $ac
	ret nz                                           ; $41d4: $c0

	and l                                            ; $41d5: $a5
	ret nz                                           ; $41d6: $c0

	ld bc, $06a0                                     ; $41d7: $01 $a0 $06
	ld [bc], a                                       ; $41da: $02
	ret c                                            ; $41db: $d8

	ret nz                                           ; $41dc: $c0

	ld bc, $01a0                                     ; $41dd: $01 $a0 $01
	ld [bc], a                                       ; $41e0: $02
	ldh [$c1], a                                     ; $41e1: $e0 $c1
	ld e, e                                          ; $41e3: $5b
	ret nc                                           ; $41e4: $d0

	add h                                            ; $41e5: $84
	ld [bc], a                                       ; $41e6: $02
	cp e                                             ; $41e7: $bb
	jp c, $8040                                      ; $41e8: $da $40 $80

	ld [bc], a                                       ; $41eb: $02
	call z, $c2c0                                    ; $41ec: $cc $c0 $c2
	jp c, $8220                                      ; $41ef: $da $20 $82

	ld [bc], a                                       ; $41f2: $02
	ret nc                                           ; $41f3: $d0

	ld h, c                                          ; $41f4: $61
	ldh [rP1], a                                     ; $41f5: $e0 $00
	ld h, b                                          ; $41f7: $60
	ret nz                                           ; $41f8: $c0

	xor b                                            ; $41f9: $a8
	db $dd                                           ; $41fa: $dd
	ld h, b                                          ; $41fb: $60
	add b                                            ; $41fc: $80
	ld [bc], a                                       ; $41fd: $02
	rst GetHLinHL                                          ; $41fe: $cf
	inc sp                                           ; $41ff: $33
	ret nz                                           ; $4200: $c0

	xor e                                            ; $4201: $ab
	jp nc, $a5c0                                     ; $4202: $d2 $c0 $a5

	ret nz                                           ; $4205: $c0

	ld bc, $0aa0                                     ; $4206: $01 $a0 $0a
	ld [bc], a                                       ; $4209: $02
	and $c0                                          ; $420a: $e6 $c0
	ld bc, $01a0                                     ; $420c: $01 $a0 $01
	ld [bc], a                                       ; $420f: $02
	db $eb                                           ; $4210: $eb
	and b                                            ; $4211: $a0
	add b                                            ; $4212: $80
	and b                                            ; $4213: $a0
	jr jr_087_4216                                   ; $4214: $18 $00

jr_087_4216:
	ld b, $c0                                        ; $4216: $06 $c0
	ld bc, $0aa0                                     ; $4218: $01 $a0 $0a
	ld [bc], a                                       ; $421b: $02
	push af                                          ; $421c: $f5
	rst $38                                          ; $421d: $ff
	ld b, $c0                                        ; $421e: $06 $c0
	ld bc, $0aa0                                     ; $4220: $01 $a0 $0a
	inc bc                                           ; $4223: $03
	ld [$01c0], sp                                   ; $4224: $08 $c0 $01
	and b                                            ; $4227: $a0
	ld bc, $1903                                     ; $4228: $01 $03 $19
	ret nz                                           ; $422b: $c0

	ld bc, $0aa0                                     ; $422c: $01 $a0 $0a
	inc bc                                           ; $422f: $03
	ld h, $c1                                        ; $4230: $26 $c1
	ld e, e                                          ; $4232: $5b
	ld [de], a                                       ; $4233: $12
	ret nz                                           ; $4234: $c0

	xor h                                            ; $4235: $ac
	ret nz                                           ; $4236: $c0

	and l                                            ; $4237: $a5
	ret nz                                           ; $4238: $c0

	ld bc, $0aa0                                     ; $4239: $01 $a0 $0a
	inc bc                                           ; $423c: $03
	dec hl                                           ; $423d: $2b
	ret nz                                           ; $423e: $c0

	ld bc, $01a0                                     ; $423f: $01 $a0 $01
	ld bc, $c12f                                     ; $4242: $01 $2f $c1
	ld e, e                                          ; $4245: $5b
	ret nc                                           ; $4246: $d0

	add h                                            ; $4247: $84
	ld [bc], a                                       ; $4248: $02
	cp e                                             ; $4249: $bb
	db $dd                                           ; $424a: $dd
	ld b, b                                          ; $424b: $40
	add b                                            ; $424c: $80
	ld [bc], a                                       ; $424d: $02
	adc $c0                                          ; $424e: $ce $c0
	jp nz, $20dd                                     ; $4250: $c2 $dd $20

	add d                                            ; $4253: $82
	ld [bc], a                                       ; $4254: $02
	ret nc                                           ; $4255: $d0

	ret nz                                           ; $4256: $c0

	reti                                             ; $4257: $d9


	ld h, b                                          ; $4258: $60
	db $fc                                           ; $4259: $fc
	rst FarCall                                          ; $425a: $f7
	dec d                                            ; $425b: $15
	add b                                            ; $425c: $80
	ld [bc], a                                       ; $425d: $02
	jp nz, $0280                                     ; $425e: $c2 $80 $02

	call nz, $0280                                   ; $4261: $c4 $80 $02
	add $80                                          ; $4264: $c6 $80
	ld [bc], a                                       ; $4266: $02
	ret z                                            ; $4267: $c8

	add b                                            ; $4268: $80
	ld [bc], a                                       ; $4269: $02
	jp z, $0280                                      ; $426a: $ca $80 $02

	call z, $0280                                    ; $426d: $cc $80 $02
	adc $d1                                          ; $4270: $ce $d1
	dec b                                            ; $4272: $05
	pop bc                                           ; $4273: $c1
	ld e, c                                          ; $4274: $59
	db $e3                                           ; $4275: $e3
	nop                                              ; $4276: $00
	ld c, l                                          ; $4277: $4d
	cp b                                             ; $4278: $b8
	add e                                            ; $4279: $83
	adc e                                            ; $427a: $8b
	ld [bc], a                                       ; $427b: $02
	xor a                                            ; $427c: $af
	ld [bc], a                                       ; $427d: $02
	or b                                             ; $427e: $b0
	adc a                                            ; $427f: $8f
	add hl, de                                       ; $4280: $19
	or c                                             ; $4281: $b1
	jr c, jr_087_428a                                ; $4282: $38 $06

	ret nc                                           ; $4284: $d0

	adc e                                            ; $4285: $8b
	and b                                            ; $4286: $a0
	add hl, de                                       ; $4287: $19
	or b                                             ; $4288: $b0
	sub b                                            ; $4289: $90

jr_087_428a:
	sbc e                                            ; $428a: $9b
	ld b, $d0                                        ; $428b: $06 $d0
	adc e                                            ; $428d: $8b
	and b                                            ; $428e: $a0
	add hl, de                                       ; $428f: $19
	or b                                             ; $4290: $b0
	adc [hl]                                         ; $4291: $8e
	rst $38                                          ; $4292: $ff
	ld b, $d0                                        ; $4293: $06 $d0
	adc e                                            ; $4295: $8b
	and b                                            ; $4296: $a0
	add hl, de                                       ; $4297: $19
	or b                                             ; $4298: $b0
	adc l                                            ; $4299: $8d
	ld [bc], a                                       ; $429a: $02
	or b                                             ; $429b: $b0
	adc [hl]                                         ; $429c: $8e
	add hl, de                                       ; $429d: $19
	or c                                             ; $429e: $b1
	ld h, $06                                        ; $429f: $26 $06
	ret nc                                           ; $42a1: $d0

	adc e                                            ; $42a2: $8b
	and b                                            ; $42a3: $a0
	add hl, de                                       ; $42a4: $19
	or b                                             ; $42a5: $b0
	adc a                                            ; $42a6: $8f
	ld [hl], l                                       ; $42a7: $75
	ld b, $d0                                        ; $42a8: $06 $d0
	adc e                                            ; $42aa: $8b
	and b                                            ; $42ab: $a0
	add hl, de                                       ; $42ac: $19
	or b                                             ; $42ad: $b0
	sub b                                            ; $42ae: $90
	rst $38                                          ; $42af: $ff
	ld b, $d0                                        ; $42b0: $06 $d0
	adc e                                            ; $42b2: $8b
	and b                                            ; $42b3: $a0
	add hl, de                                       ; $42b4: $19
	or b                                             ; $42b5: $b0
	adc l                                            ; $42b6: $8d
	ld [bc], a                                       ; $42b7: $02
	or b                                             ; $42b8: $b0
	adc l                                            ; $42b9: $8d
	add hl, de                                       ; $42ba: $19
	or c                                             ; $42bb: $b1
	ld h, $06                                        ; $42bc: $26 $06
	ret nc                                           ; $42be: $d0

	adc e                                            ; $42bf: $8b
	and b                                            ; $42c0: $a0
	add hl, de                                       ; $42c1: $19
	or b                                             ; $42c2: $b0
	adc l                                            ; $42c3: $8d
	ld [hl], l                                       ; $42c4: $75
	ld b, $d0                                        ; $42c5: $06 $d0
	adc e                                            ; $42c7: $8b
	and b                                            ; $42c8: $a0
	add hl, de                                       ; $42c9: $19
	or b                                             ; $42ca: $b0
	sub b                                            ; $42cb: $90
	rst $38                                          ; $42cc: $ff
	ld b, $d0                                        ; $42cd: $06 $d0
	adc e                                            ; $42cf: $8b
	and b                                            ; $42d0: $a0
	add hl, de                                       ; $42d1: $19
	or b                                             ; $42d2: $b0
	adc [hl]                                         ; $42d3: $8e
	ld [bc], a                                       ; $42d4: $02
	or b                                             ; $42d5: $b0
	sub b                                            ; $42d6: $90
	add hl, de                                       ; $42d7: $19
	or c                                             ; $42d8: $b1
	rra                                              ; $42d9: $1f
	ld b, $d0                                        ; $42da: $06 $d0
	adc e                                            ; $42dc: $8b
	and b                                            ; $42dd: $a0
	add hl, de                                       ; $42de: $19
	or b                                             ; $42df: $b0
	adc a                                            ; $42e0: $8f
	adc a                                            ; $42e1: $8f
	ld b, $d0                                        ; $42e2: $06 $d0
	adc e                                            ; $42e4: $8b
	and b                                            ; $42e5: $a0
	add hl, de                                       ; $42e6: $19
	or b                                             ; $42e7: $b0
	adc [hl]                                         ; $42e8: $8e
	rst $38                                          ; $42e9: $ff
	ld b, $d0                                        ; $42ea: $06 $d0
	adc e                                            ; $42ec: $8b
	and b                                            ; $42ed: $a0
	add hl, de                                       ; $42ee: $19
	or b                                             ; $42ef: $b0
	adc l                                            ; $42f0: $8d
	add e                                            ; $42f1: $83
	adc e                                            ; $42f2: $8b
	and b                                            ; $42f3: $a0
	add hl, de                                       ; $42f4: $19
	ld [bc], a                                       ; $42f5: $02
	or b                                             ; $42f6: $b0
	adc [hl]                                         ; $42f7: $8e
	dec bc                                           ; $42f8: $0b
	ret nc                                           ; $42f9: $d0

	adc e                                            ; $42fa: $8b
	ld [bc], a                                       ; $42fb: $02
	xor a                                            ; $42fc: $af
	or b                                             ; $42fd: $b0
	adc [hl]                                         ; $42fe: $8e
	pop bc                                           ; $42ff: $c1
	ld e, c                                          ; $4300: $59
	db $e3                                           ; $4301: $e3
	nop                                              ; $4302: $00
	ld c, d                                          ; $4303: $4a
	ld [bc], a                                       ; $4304: $02
	or b                                             ; $4305: $b0
	adc a                                            ; $4306: $8f
	dec bc                                           ; $4307: $0b
	ret nc                                           ; $4308: $d0

	adc e                                            ; $4309: $8b
	ld [bc], a                                       ; $430a: $02
	xor a                                            ; $430b: $af

jr_087_430c:
	or b                                             ; $430c: $b0
	adc a                                            ; $430d: $8f
	pop bc                                           ; $430e: $c1
	ld e, c                                          ; $430f: $59
	db $e3                                           ; $4310: $e3
	nop                                              ; $4311: $00
	ld c, a                                          ; $4312: $4f
	ld [bc], a                                       ; $4313: $02
	or b                                             ; $4314: $b0
	sub b                                            ; $4315: $90
	dec bc                                           ; $4316: $0b
	ret nc                                           ; $4317: $d0

	adc e                                            ; $4318: $8b
	ld [bc], a                                       ; $4319: $02
	xor a                                            ; $431a: $af
	or b                                             ; $431b: $b0
	sub b                                            ; $431c: $90
	pop bc                                           ; $431d: $c1
	ld e, c                                          ; $431e: $59
	db $e3                                           ; $431f: $e3
	nop                                              ; $4320: $00
	dec a                                            ; $4321: $3d
	ld [bc], a                                       ; $4322: $02
	or b                                             ; $4323: $b0
	adc l                                            ; $4324: $8d
	dec bc                                           ; $4325: $0b
	ret nc                                           ; $4326: $d0

	adc e                                            ; $4327: $8b
	ld [bc], a                                       ; $4328: $02
	xor a                                            ; $4329: $af
	or b                                             ; $432a: $b0
	adc l                                            ; $432b: $8d
	pop bc                                           ; $432c: $c1
	ld e, c                                          ; $432d: $59
	db $e3                                           ; $432e: $e3
	nop                                              ; $432f: $00
	inc a                                            ; $4330: $3c
	add hl, bc                                       ; $4331: $09
	ld e, b                                          ; $4332: $58
	pop bc                                           ; $4333: $c1
	ld e, c                                          ; $4334: $59
	db $e3                                           ; $4335: $e3
	nop                                              ; $4336: $00
	ld h, b                                          ; $4337: $60
	ei                                               ; $4338: $fb
	add b                                            ; $4339: $80
	ld [bc], a                                       ; $433a: $02
	ret nz                                           ; $433b: $c0

	ld c, e                                          ; $433c: $4b
	ret nz                                           ; $433d: $c0

	xor b                                            ; $433e: $a8
	ret nc                                           ; $433f: $d0

	ret nz                                           ; $4340: $c0

	xor e                                            ; $4341: $ab
	jp nc, $a5c0                                     ; $4342: $d2 $c0 $a5

	ret nz                                           ; $4345: $c0

	ld bc, $02a0                                     ; $4346: $01 $a0 $02
	inc bc                                           ; $4349: $03
	jr nc, jr_087_430c                               ; $434a: $30 $c0

	ld bc, $01a0                                     ; $434c: $01 $a0 $01
	nop                                              ; $434f: $00
	db $ec                                           ; $4350: $ec
	ret nz                                           ; $4351: $c0

	ld bc, $02a0                                     ; $4352: $01 $a0 $02
	inc bc                                           ; $4355: $03
	ld a, $c0                                        ; $4356: $3e $c0
	ld bc, $01a0                                     ; $4358: $01 $a0 $01
	ld bc, $c157                                     ; $435b: $01 $57 $c1
	or d                                             ; $435e: $b2
	db $e3                                           ; $435f: $e3
	nop                                              ; $4360: $00
	rrca                                             ; $4361: $0f
	ret nz                                           ; $4362: $c0

	ld bc, $02a0                                     ; $4363: $01 $a0 $02
	inc bc                                           ; $4366: $03
	ld b, a                                          ; $4367: $47
	ret nz                                           ; $4368: $c0

	ld bc, $01a0                                     ; $4369: $01 $a0 $01
	inc bc                                           ; $436c: $03
	ld d, e                                          ; $436d: $53
	ret nz                                           ; $436e: $c0

	ld bc, $02a0                                     ; $436f: $01 $a0 $02
	inc bc                                           ; $4372: $03
	ld e, b                                          ; $4373: $58
	pop bc                                           ; $4374: $c1
	ld e, e                                          ; $4375: $5b
	ret nz                                           ; $4376: $c0

	ld bc, $01a0                                     ; $4377: $01 $a0 $01
	inc bc                                           ; $437a: $03
	ld e, e                                          ; $437b: $5b
	ret nz                                           ; $437c: $c0

	jp nz, $20d0                                     ; $437d: $c2 $d0 $20

	add d                                            ; $4380: $82
	ld [bc], a                                       ; $4381: $02
	ret nc                                           ; $4382: $d0

	ret nc                                           ; $4383: $d0

	add h                                            ; $4384: $84
	ld [bc], a                                       ; $4385: $02
	cp e                                             ; $4386: $bb
	ret nc                                           ; $4387: $d0

	db $e4                                           ; $4388: $e4
	nop                                              ; $4389: $00
	ld hl, $e11e                                     ; $438a: $21 $1e $e1
	ld [bc], a                                       ; $438d: $02
	nop                                              ; $438e: $00
	ret nz                                           ; $438f: $c0

	ret nz                                           ; $4390: $c0

	ld bc, $02a0                                     ; $4391: $01 $a0 $02
	ld [bc], a                                       ; $4394: $02
	ld b, d                                          ; $4395: $42
	ret nz                                           ; $4396: $c0

	ld bc, $01a0                                     ; $4397: $01 $a0 $01
	inc bc                                           ; $439a: $03
	ld e, [hl]                                       ; $439b: $5e
	pop bc                                           ; $439c: $c1
	ld e, e                                          ; $439d: $5b
	ret nz                                           ; $439e: $c0

	jp nz, $40d0                                     ; $439f: $c2 $d0 $40

	add b                                            ; $43a2: $80
	ld [bc], a                                       ; $43a3: $02
	pop bc                                           ; $43a4: $c1
	ret nc                                           ; $43a5: $d0

	add h                                            ; $43a6: $84
	ld [bc], a                                       ; $43a7: $02
	cp e                                             ; $43a8: $bb
	ret nc                                           ; $43a9: $d0

	add hl, bc                                       ; $43aa: $09
	add d                                            ; $43ab: $82
	ld b, b                                          ; $43ac: $40
	add b                                            ; $43ad: $80
	ld [bc], a                                       ; $43ae: $02
	db $d3                                           ; $43af: $d3
	ld h, e                                          ; $43b0: $63
	ei                                               ; $43b1: $fb
	add d                                            ; $43b2: $82
	ld [bc], a                                       ; $43b3: $02
	ret nc                                           ; $43b4: $d0

	rst SubAFromHL                                          ; $43b5: $d7
	ld b, $c0                                        ; $43b6: $06 $c0
	ld bc, $01a0                                     ; $43b8: $01 $a0 $01
	inc bc                                           ; $43bb: $03
	ld l, d                                          ; $43bc: $6a
	ei                                               ; $43bd: $fb
	add d                                            ; $43be: $82
	ld [bc], a                                       ; $43bf: $02
	ret nc                                           ; $43c0: $d0

	push de                                          ; $43c1: $d5
	ld b, $c0                                        ; $43c2: $06 $c0
	ld bc, $01a0                                     ; $43c4: $01 $a0 $01
	inc bc                                           ; $43c7: $03
	ld [hl], h                                       ; $43c8: $74
	ei                                               ; $43c9: $fb
	add d                                            ; $43ca: $82
	ld [bc], a                                       ; $43cb: $02
	ret nc                                           ; $43cc: $d0

	db $d3                                           ; $43cd: $d3
	ld b, $c0                                        ; $43ce: $06 $c0
	ld bc, $01a0                                     ; $43d0: $01 $a0 $01
	inc bc                                           ; $43d3: $03
	add c                                            ; $43d4: $81
	ei                                               ; $43d5: $fb
	add d                                            ; $43d6: $82
	ld [bc], a                                       ; $43d7: $02
	ret nc                                           ; $43d8: $d0

	pop de                                           ; $43d9: $d1
	ld b, $c0                                        ; $43da: $06 $c0
	ld bc, $01a0                                     ; $43dc: $01 $a0 $01
	inc bc                                           ; $43df: $03
	adc e                                            ; $43e0: $8b
	ld a, [bc]                                       ; $43e1: $0a
	ret nz                                           ; $43e2: $c0

	ld bc, $01a0                                     ; $43e3: $01 $a0 $01
	inc bc                                           ; $43e6: $03
	sub h                                            ; $43e7: $94
	nop                                              ; $43e8: $00
	add b                                            ; $43e9: $80
	ld [bc], a                                       ; $43ea: $02
	db $d3                                           ; $43eb: $d3
	ei                                               ; $43ec: $fb
	db $fd                                           ; $43ed: $fd
	add d                                            ; $43ee: $82
	ld [bc], a                                       ; $43ef: $02
	ret nc                                           ; $43f0: $d0

	pop de                                           ; $43f1: $d1
	ld b, $d0                                        ; $43f2: $06 $d0
	add h                                            ; $43f4: $84
	ld [bc], a                                       ; $43f5: $02
	cp e                                             ; $43f6: $bb
	ldh [rAUD1ENV], a                                ; $43f7: $e0 $12
	ld b, b                                          ; $43f9: $40
	add b                                            ; $43fa: $80
	ld [bc], a                                       ; $43fb: $02
	ret nz                                           ; $43fc: $c0

	ld b, [hl]                                       ; $43fd: $46
	add b                                            ; $43fe: $80
	ld [bc], a                                       ; $43ff: $02
	jp $0280                                         ; $4400: $c3 $80 $02


	push bc                                          ; $4403: $c5
	add b                                            ; $4404: $80
	ld [bc], a                                       ; $4405: $02
	rst JumpTable                                          ; $4406: $c7
	add b                                            ; $4407: $80
	ld [bc], a                                       ; $4408: $02
	ret                                              ; $4409: $c9


	add b                                            ; $440a: $80
	ld [bc], a                                       ; $440b: $02
	res 0, b                                         ; $440c: $cb $80
	ld [bc], a                                       ; $440e: $02
	call $0280                                       ; $440f: $cd $80 $02
	rst GetHLinHL                                          ; $4412: $cf
	ld b, b                                          ; $4413: $40
	add b                                            ; $4414: $80
	ld [bc], a                                       ; $4415: $02
	pop bc                                           ; $4416: $c1
	ld b, b                                          ; $4417: $40
	add d                                            ; $4418: $82
	ld [bc], a                                       ; $4419: $02
	ret nc                                           ; $441a: $d0

	ret nz                                           ; $441b: $c0

	res 0, c                                         ; $441c: $cb $81
	adc e                                            ; $441e: $8b
	ld bc, $0266                                     ; $441f: $01 $66 $02
	or b                                             ; $4422: $b0
	inc bc                                           ; $4423: $03
	inc bc                                           ; $4424: $03
	db $e4                                           ; $4425: $e4
	nop                                              ; $4426: $00
	ld [$0400], sp                                   ; $4427: $08 $00 $04
	push hl                                          ; $442a: $e5
	ld bc, $b119                                     ; $442b: $01 $19 $b1
	jr z, jr_087_443e                                ; $442e: $28 $0e

	ret nz                                           ; $4430: $c0

	push af                                          ; $4431: $f5
	ret nz                                           ; $4432: $c0

	ld bc, $01a0                                     ; $4433: $01 $a0 $01
	inc bc                                           ; $4436: $03
	and c                                            ; $4437: $a1
	ret nz                                           ; $4438: $c0

	ld bc, $01a0                                     ; $4439: $01 $a0 $01
	inc bc                                           ; $443c: $03
	xor [hl]                                         ; $443d: $ae

jr_087_443e:
	inc h                                            ; $443e: $24
	inc bc                                           ; $443f: $03
	or c                                             ; $4440: $b1
	add hl, bc                                       ; $4441: $09
	ld a, [bc]                                       ; $4442: $0a
	ret nc                                           ; $4443: $d0

	adc e                                            ; $4444: $8b
	nop                                              ; $4445: $00
	sbc $b0                                          ; $4446: $de $b0
	ld [hl], h                                       ; $4448: $74
	push hl                                          ; $4449: $e5
	ld b, l                                          ; $444a: $45
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	inc bc                                           ; $444d: $03
	or e                                             ; $444e: $b3
	add hl, bc                                       ; $444f: $09
	ld [de], a                                       ; $4450: $12
	ret nz                                           ; $4451: $c0

	inc h                                            ; $4452: $24
	pop de                                           ; $4453: $d1
	ret nc                                           ; $4454: $d0

	ret nz                                           ; $4455: $c0

	inc hl                                           ; $4456: $23
	push de                                          ; $4457: $d5
	ret nc                                           ; $4458: $d0

	ret nz                                           ; $4459: $c0

	ld bc, $01a0                                     ; $445a: $01 $a0 $01
	inc bc                                           ; $445d: $03
	or l                                             ; $445e: $b5
	push hl                                          ; $445f: $e5
	ld bc, $b119                                     ; $4460: $01 $19 $b1
	pop de                                           ; $4463: $d1
	rlca                                             ; $4464: $07
	add hl, bc                                       ; $4465: $09
	inc a                                            ; $4466: $3c
	pop bc                                           ; $4467: $c1
	dec sp                                           ; $4468: $3b
	ret nz                                           ; $4469: $c0

	add hl, bc                                       ; $446a: $09
	db $e3                                           ; $446b: $e3
	nop                                              ; $446c: $00
	ld a, h                                          ; $446d: $7c
	pop bc                                           ; $446e: $c1
	ld e, c                                          ; $446f: $59
	db $e3                                           ; $4470: $e3
	nop                                              ; $4471: $00
	inc a                                            ; $4472: $3c
	ei                                               ; $4473: $fb
	db $fc                                           ; $4474: $fc
	ret nz                                           ; $4475: $c0

	add b                                            ; $4476: $80
	jp nc, $c006                                     ; $4477: $d2 $06 $c0

	ld bc, $01a0                                     ; $447a: $01 $a0 $01
	nop                                              ; $447d: $00
	ld bc, $02e1                                     ; $447e: $01 $e1 $02
	ld [bc], a                                       ; $4481: $02
	or d                                             ; $4482: $b2
	pop bc                                           ; $4483: $c1
	or d                                             ; $4484: $b2
	db $e3                                           ; $4485: $e3
	nop                                              ; $4486: $00
	ld e, $c0                                        ; $4487: $1e $c0
	ld bc, $0ba0                                     ; $4489: $01 $a0 $0b
	nop                                              ; $448c: $00
	ld c, $c0                                        ; $448d: $0e $c0
	ld bc, $01a0                                     ; $448f: $01 $a0 $01
	nop                                              ; $4492: $00
	ld [de], a                                       ; $4493: $12
	add c                                            ; $4494: $81
	ret nz                                           ; $4495: $c0

	add b                                            ; $4496: $80
	ld bc, $03d2                                     ; $4497: $01 $d2 $03
	db $e4                                           ; $449a: $e4
	nop                                              ; $449b: $00
	ld l, b                                          ; $449c: $68
	ld bc, $03d1                                     ; $449d: $01 $d1 $03
	db $e4                                           ; $44a0: $e4
	nop                                              ; $44a1: $00
	ld [bc], a                                       ; $44a2: $02
	add hl, bc                                       ; $44a3: $09
	ld e, [hl]                                       ; $44a4: $5e
	ret nz                                           ; $44a5: $c0

	ld bc, $0ba0                                     ; $44a6: $01 $a0 $0b
	nop                                              ; $44a9: $00
	rla                                              ; $44aa: $17
	ret nz                                           ; $44ab: $c0

	ld bc, $01a0                                     ; $44ac: $01 $a0 $01
	nop                                              ; $44af: $00
	ld e, $c0                                        ; $44b0: $1e $c0
	ld bc, $0ba0                                     ; $44b2: $01 $a0 $0b
	nop                                              ; $44b5: $00
	ld hl, $01c0                                     ; $44b6: $21 $c0 $01
	and b                                            ; $44b9: $a0
	ld bc, $3b00                                     ; $44ba: $01 $00 $3b
	ret nz                                           ; $44bd: $c0

	ld bc, $0ba0                                     ; $44be: $01 $a0 $0b
	nop                                              ; $44c1: $00
	ld a, $60                                        ; $44c2: $3e $60
	add b                                            ; $44c4: $80
	ld [bc], a                                       ; $44c5: $02
	db $d3                                           ; $44c6: $d3
	inc hl                                           ; $44c7: $23
	ret nz                                           ; $44c8: $c0

	ld bc, $01a0                                     ; $44c9: $01 $a0 $01
	nop                                              ; $44cc: $00
	ld c, h                                          ; $44cd: $4c
	ret nz                                           ; $44ce: $c0

	ld bc, $0ba0                                     ; $44cf: $01 $a0 $0b
	nop                                              ; $44d2: $00
	ld d, b                                          ; $44d3: $50
	ret nz                                           ; $44d4: $c0

	ld bc, $01a0                                     ; $44d5: $01 $a0 $01
	nop                                              ; $44d8: $00
	ld d, [hl]                                       ; $44d9: $56
	ret nz                                           ; $44da: $c0

	ld bc, $0ba0                                     ; $44db: $01 $a0 $0b
	nop                                              ; $44de: $00
	ld e, d                                          ; $44df: $5a
	pop bc                                           ; $44e0: $c1
	ld e, e                                          ; $44e1: $5b
	ret nz                                           ; $44e2: $c0

	ld bc, $01a0                                     ; $44e3: $01 $a0 $01
	nop                                              ; $44e6: $00
	ld [hl], l                                       ; $44e7: $75
	db $e4                                           ; $44e8: $e4
	dec b                                            ; $44e9: $05
	ret nc                                           ; $44ea: $d0

	rla                                              ; $44eb: $17
	ret nz                                           ; $44ec: $c0

	ld bc, $01a0                                     ; $44ed: $01 $a0 $01
	nop                                              ; $44f0: $00
	add d                                            ; $44f1: $82
	ret nz                                           ; $44f2: $c0

	ld bc, $0ba0                                     ; $44f3: $01 $a0 $0b
	nop                                              ; $44f6: $00
	adc c                                            ; $44f7: $89
	pop bc                                           ; $44f8: $c1
	ld e, e                                          ; $44f9: $5b
	ret nz                                           ; $44fa: $c0

	ld bc, $01a0                                     ; $44fb: $01 $a0 $01
	nop                                              ; $44fe: $00
	dec sp                                           ; $44ff: $3b
	db $e4                                           ; $4500: $e4
	nop                                              ; $4501: $00
	ld a, $09                                        ; $4502: $3e $09
	ld a, [hl-]                                      ; $4504: $3a
	ret nz                                           ; $4505: $c0

	ld bc, $0ba0                                     ; $4506: $01 $a0 $0b
	nop                                              ; $4509: $00
	sbc h                                            ; $450a: $9c
	ld h, b                                          ; $450b: $60
	add b                                            ; $450c: $80
	ld [bc], a                                       ; $450d: $02
	db $d3                                           ; $450e: $d3
	rla                                              ; $450f: $17
	ret nz                                           ; $4510: $c0

	ld bc, $01a0                                     ; $4511: $01 $a0 $01
	nop                                              ; $4514: $00
	and e                                            ; $4515: $a3
	ret nz                                           ; $4516: $c0

	ld bc, $0ba0                                     ; $4517: $01 $a0 $0b
	nop                                              ; $451a: $00
	xor c                                            ; $451b: $a9
	pop bc                                           ; $451c: $c1
	ld e, e                                          ; $451d: $5b
	ret nz                                           ; $451e: $c0

	ld bc, $01a0                                     ; $451f: $01 $a0 $01
	nop                                              ; $4522: $00
	or l                                             ; $4523: $b5
	db $e4                                           ; $4524: $e4
	dec b                                            ; $4525: $05
	sub h                                            ; $4526: $94
	rla                                              ; $4527: $17
	ret nz                                           ; $4528: $c0

	ld bc, $01a0                                     ; $4529: $01 $a0 $01
	nop                                              ; $452c: $00
	cp e                                             ; $452d: $bb
	ret nz                                           ; $452e: $c0

	ld bc, $0ba0                                     ; $452f: $01 $a0 $0b
	nop                                              ; $4532: $00
	call nz, Call_087_5bc1                           ; $4533: $c4 $c1 $5b
	ret nz                                           ; $4536: $c0

	ld bc, $01a0                                     ; $4537: $01 $a0 $01
	nop                                              ; $453a: $00
	dec sp                                           ; $453b: $3b
	db $e4                                           ; $453c: $e4
	nop                                              ; $453d: $00
	ld [bc], a                                       ; $453e: $02
	add hl, bc                                       ; $453f: $09
	ld h, l                                          ; $4540: $65
	ret nz                                           ; $4541: $c0

	ld bc, $01a0                                     ; $4542: $01 $a0 $01
	nop                                              ; $4545: $00
	bit 4, b                                         ; $4546: $cb $60
	db $fc                                           ; $4548: $fc
	add h                                            ; $4549: $84
	ld [bc], a                                       ; $454a: $02
	cp e                                             ; $454b: $bb
	ldh [rAUD1ENV], a                                ; $454c: $e0 $12
	inc de                                           ; $454e: $13
	ret nz                                           ; $454f: $c0

	ld bc, $01a0                                     ; $4550: $01 $a0 $01
	nop                                              ; $4553: $00
	ret c                                            ; $4554: $d8

	ret nz                                           ; $4555: $c0

	ld bc, $01a0                                     ; $4556: $01 $a0 $01
	nop                                              ; $4559: $00
	push hl                                          ; $455a: $e5
	ret nc                                           ; $455b: $d0

	add e                                            ; $455c: $83
	and b                                            ; $455d: $a0
	nop                                              ; $455e: $00
	ret nz                                           ; $455f: $c0

	call c, $09d6                                    ; $4560: $dc $d6 $09
	ret nc                                           ; $4563: $d0

	add e                                            ; $4564: $83
	and b                                            ; $4565: $a0
	nop                                              ; $4566: $00
	add h                                            ; $4567: $84
	ld [bc], a                                       ; $4568: $02
	cp e                                             ; $4569: $bb
	ret nz                                           ; $456a: $c0

	set 0, b                                         ; $456b: $cb $c0
	rrca                                             ; $456d: $0f
	db $e3                                           ; $456e: $e3
	nop                                              ; $456f: $00
	inc a                                            ; $4570: $3c
	db $fd                                           ; $4571: $fd
	inc sp                                           ; $4572: $33
	add e                                            ; $4573: $83
	and b                                            ; $4574: $a0
	nop                                              ; $4575: $00
	ld bc, $03d0                                     ; $4576: $01 $d0 $03
	db $e4                                           ; $4579: $e4
	nop                                              ; $457a: $00
	inc l                                            ; $457b: $2c
	ld bc, $03d1                                     ; $457c: $01 $d1 $03
	db $e4                                           ; $457f: $e4
	nop                                              ; $4580: $00
	ret z                                            ; $4581: $c8

	ld bc, $03d2                                     ; $4582: $01 $d2 $03
	db $e4                                           ; $4585: $e4
	ld bc, $016b                                     ; $4586: $01 $6b $01
	db $d3                                           ; $4589: $d3
	inc bc                                           ; $458a: $03
	db $e4                                           ; $458b: $e4
	ld [bc], a                                       ; $458c: $02
	ld [bc], a                                       ; $458d: $02
	ld bc, $03d7                                     ; $458e: $01 $d7 $03
	db $e4                                           ; $4591: $e4
	ld [bc], a                                       ; $4592: $02
	sbc c                                            ; $4593: $99
	ld bc, $03d8                                     ; $4594: $01 $d8 $03
	db $e4                                           ; $4597: $e4
	inc bc                                           ; $4598: $03
	jr nc, @+$03                                     ; $4599: $30 $01

	jp c, $e403                                      ; $459b: $da $03 $e4

	inc bc                                           ; $459e: $03
	rst JumpTable                                          ; $459f: $c7
	ld bc, $03dd                                     ; $45a0: $01 $dd $03
	db $e4                                           ; $45a3: $e4
	inc b                                            ; $45a4: $04
	ld a, b                                          ; $45a5: $78
	add hl, bc                                       ; $45a6: $09
	and b                                            ; $45a7: $a0
	ret nz                                           ; $45a8: $c0

	ld bc, $01a0                                     ; $45a9: $01 $a0 $01
	nop                                              ; $45ac: $00
	pop af                                           ; $45ad: $f1
	pop hl                                           ; $45ae: $e1
	ld [bc], a                                       ; $45af: $02
	nop                                              ; $45b0: $00
	ret nz                                           ; $45b1: $c0

	add e                                            ; $45b2: $83
	ret nz                                           ; $45b3: $c0

	dec de                                           ; $45b4: $1b
	ret nc                                           ; $45b5: $d0

	ld [bc], a                                       ; $45b6: $02
	ret nc                                           ; $45b7: $d0

	pop de                                           ; $45b8: $d1
	dec hl                                           ; $45b9: $2b
	ret nz                                           ; $45ba: $c0

	ld bc, $02a0                                     ; $45bb: $01 $a0 $02
	nop                                              ; $45be: $00
	push af                                          ; $45bf: $f5
	ret nz                                           ; $45c0: $c0

	ld bc, $01a0                                     ; $45c1: $01 $a0 $01
	nop                                              ; $45c4: $00
	rst FarCall                                          ; $45c5: $f7
	pop bc                                           ; $45c6: $c1
	or d                                             ; $45c7: $b2
	db $e3                                           ; $45c8: $e3
	nop                                              ; $45c9: $00
	db $10                                           ; $45ca: $10
	ret nz                                           ; $45cb: $c0

	ld bc, $02a0                                     ; $45cc: $01 $a0 $02
	nop                                              ; $45cf: $00
	ei                                               ; $45d0: $fb
	ret nz                                           ; $45d1: $c0

	ld bc, $01a0                                     ; $45d2: $01 $a0 $01
	ld bc, $c002                                     ; $45d5: $01 $02 $c0
	ld bc, $02a0                                     ; $45d8: $01 $a0 $02
	ld bc, $c106                                     ; $45db: $01 $06 $c1
	ld e, e                                          ; $45de: $5b
	ret nz                                           ; $45df: $c0

	ld bc, $01a0                                     ; $45e0: $01 $a0 $01
	ld bc, $0210                                     ; $45e3: $01 $10 $02
	jp nc, $1ad3                                     ; $45e6: $d2 $d3 $1a

	ret nz                                           ; $45e9: $c0

	ld bc, $02a0                                     ; $45ea: $01 $a0 $02
	ld bc, $c017                                     ; $45ed: $01 $17 $c0
	ld bc, $01a0                                     ; $45f0: $01 $a0 $01
	nop                                              ; $45f3: $00
	rst FarCall                                          ; $45f4: $f7
	ret nz                                           ; $45f5: $c0

	ld bc, $02a0                                     ; $45f6: $01 $a0 $02
	ld bc, $c11a                                     ; $45f9: $01 $1a $c1
	ld e, e                                          ; $45fc: $5b
	ret nz                                           ; $45fd: $c0

	ld bc, $01a0                                     ; $45fe: $01 $a0 $01
	ld bc, $0120                                     ; $4601: $01 $20 $01
	call nc, $c01a                                   ; $4604: $d4 $1a $c0
	ld bc, $02a0                                     ; $4607: $01 $a0 $02
	ld bc, $c028                                     ; $460a: $01 $28 $c0
	ld bc, $01a0                                     ; $460d: $01 $a0 $01
	nop                                              ; $4610: $00
	rst FarCall                                          ; $4611: $f7
	ret nz                                           ; $4612: $c0

	ld bc, $02a0                                     ; $4613: $01 $a0 $02
	ld bc, wMainLoopCounter                                     ; $4616: $01 $29 $c1
	ld e, e                                          ; $4619: $5b
	ret nz                                           ; $461a: $c0

	ld bc, $01a0                                     ; $461b: $01 $a0 $01
	ld bc, $0120                                     ; $461e: $01 $20 $01
	push de                                          ; $4621: $d5
	ld a, [de]                                       ; $4622: $1a
	ret nz                                           ; $4623: $c0

	ld bc, $02a0                                     ; $4624: $01 $a0 $02
	ld bc, $c034                                     ; $4627: $01 $34 $c0
	ld bc, $01a0                                     ; $462a: $01 $a0 $01
	nop                                              ; $462d: $00
	rst FarCall                                          ; $462e: $f7
	ret nz                                           ; $462f: $c0

	ld bc, $02a0                                     ; $4630: $01 $a0 $02
	ld bc, $c138                                     ; $4633: $01 $38 $c1
	ld e, e                                          ; $4636: $5b
	ret nz                                           ; $4637: $c0

	ld bc, $01a0                                     ; $4638: $01 $a0 $01
	ld bc, $c041                                     ; $463b: $01 $41 $c0
	ld hl, $d0d7                                     ; $463e: $21 $d7 $d0
	ret nz                                           ; $4641: $c0

	ld [hl+], a                                      ; $4642: $22
	ret c                                            ; $4643: $d8

	ret nc                                           ; $4644: $d0

	db $e4                                           ; $4645: $e4
	inc b                                            ; $4646: $04
	ld [hl], e                                       ; $4647: $73
	add hl, bc                                       ; $4648: $09
	and a                                            ; $4649: $a7
	ret nz                                           ; $464a: $c0

	ld bc, $01a0                                     ; $464b: $01 $a0 $01
	ld bc, $e148                                     ; $464e: $01 $48 $e1
	ld [bc], a                                       ; $4651: $02
	ld bc, $8308                                     ; $4652: $01 $08 $83
	ret nz                                           ; $4655: $c0

	dec de                                           ; $4656: $1b
	pop de                                           ; $4657: $d1
	ld [bc], a                                       ; $4658: $02
	ret nc                                           ; $4659: $d0

	pop de                                           ; $465a: $d1
	ld [hl-], a                                      ; $465b: $32
	ret nz                                           ; $465c: $c0

	ld bc, $03a0                                     ; $465d: $01 $a0 $03
	ld bc, $c04c                                     ; $4660: $01 $4c $c0
	ld bc, $01a0                                     ; $4663: $01 $a0 $01
	nop                                              ; $4666: $00
	rst FarCall                                          ; $4667: $f7
	ret nz                                           ; $4668: $c0

	ld bc, $03a0                                     ; $4669: $01 $a0 $03
	ld bc, $c051                                     ; $466c: $01 $51 $c0
	ld bc, $01a0                                     ; $466f: $01 $a0 $01
	ld bc, $c002                                     ; $4672: $01 $02 $c0
	ld bc, $03a0                                     ; $4675: $01 $a0 $03
	ld bc, $c05d                                     ; $4678: $01 $5d $c0
	ld bc, $01a0                                     ; $467b: $01 $a0 $01
	ld bc, $c068                                     ; $467e: $01 $68 $c0
	ld bc, $03a0                                     ; $4681: $01 $a0 $03
	ld bc, $c178                                     ; $4684: $01 $78 $c1
	ld e, e                                          ; $4687: $5b
	ret nz                                           ; $4688: $c0

	ld bc, $01a0                                     ; $4689: $01 $a0 $01
	ld bc, $0210                                     ; $468c: $01 $10 $02
	jp nc, $1ad3                                     ; $468f: $d2 $d3 $1a

	ret nz                                           ; $4692: $c0

	ld bc, $03a0                                     ; $4693: $01 $a0 $03
	ld bc, $c084                                     ; $4696: $01 $84 $c0
	ld bc, $01a0                                     ; $4699: $01 $a0 $01
	nop                                              ; $469c: $00
	rst FarCall                                          ; $469d: $f7
	ret nz                                           ; $469e: $c0

	ld bc, $03a0                                     ; $469f: $01 $a0 $03
	ld bc, $c188                                     ; $46a2: $01 $88 $c1
	ld e, e                                          ; $46a5: $5b
	ret nz                                           ; $46a6: $c0

	ld bc, $01a0                                     ; $46a7: $01 $a0 $01
	ld bc, $0120                                     ; $46aa: $01 $20 $01
	call nc, $c01a                                   ; $46ad: $d4 $1a $c0
	ld bc, $03a0                                     ; $46b0: $01 $a0 $03
	ld bc, $c084                                     ; $46b3: $01 $84 $c0
	ld bc, $01a0                                     ; $46b6: $01 $a0 $01
	nop                                              ; $46b9: $00
	rst FarCall                                          ; $46ba: $f7
	ret nz                                           ; $46bb: $c0

	ld bc, $03a0                                     ; $46bc: $01 $a0 $03
	ld bc, $c195                                     ; $46bf: $01 $95 $c1
	ld e, e                                          ; $46c2: $5b
	ret nz                                           ; $46c3: $c0

	ld bc, $01a0                                     ; $46c4: $01 $a0 $01
	ld bc, $0120                                     ; $46c7: $01 $20 $01
	push de                                          ; $46ca: $d5
	ld a, [de]                                       ; $46cb: $1a
	ret nz                                           ; $46cc: $c0

	ld bc, $03a0                                     ; $46cd: $01 $a0 $03
	ld bc, $c09b                                     ; $46d0: $01 $9b $c0
	ld bc, $01a0                                     ; $46d3: $01 $a0 $01
	nop                                              ; $46d6: $00
	rst FarCall                                          ; $46d7: $f7
	ret nz                                           ; $46d8: $c0

	ld bc, $03a0                                     ; $46d9: $01 $a0 $03
	ld bc, $c1a1                                     ; $46dc: $01 $a1 $c1
	ld e, e                                          ; $46df: $5b
	ret nz                                           ; $46e0: $c0

	ld bc, $01a0                                     ; $46e1: $01 $a0 $01
	ld bc, $c041                                     ; $46e4: $01 $41 $c0
	ld hl, $d1d7                                     ; $46e7: $21 $d7 $d1
	ret nz                                           ; $46ea: $c0

	ld [hl+], a                                      ; $46eb: $22
	ret c                                            ; $46ec: $d8

	pop de                                           ; $46ed: $d1
	db $e4                                           ; $46ee: $e4
	inc bc                                           ; $46ef: $03
	jp z, $9b09                                      ; $46f0: $ca $09 $9b

	ret nz                                           ; $46f3: $c0

	ld bc, $01a0                                     ; $46f4: $01 $a0 $01
	ld bc, $e1a3                                     ; $46f7: $01 $a3 $e1
	ld [bc], a                                       ; $46fa: $02
	ld bc, $8350                                     ; $46fb: $01 $50 $83
	ret nz                                           ; $46fe: $c0

	dec de                                           ; $46ff: $1b
	jp nc, $d002                                     ; $4700: $d2 $02 $d0

	pop de                                           ; $4703: $d1
	ld h, $c0                                        ; $4704: $26 $c0
	ld bc, $04a0                                     ; $4706: $01 $a0 $04
	ld bc, $c0a7                                     ; $4709: $01 $a7 $c0
	ld bc, $01a0                                     ; $470c: $01 $a0 $01
	nop                                              ; $470f: $00
	rst FarCall                                          ; $4710: $f7
	ret nz                                           ; $4711: $c0

	ld bc, $04a0                                     ; $4712: $01 $a0 $04
	ld bc, $c0ab                                     ; $4715: $01 $ab $c0
	ld bc, $01a0                                     ; $4718: $01 $a0 $01
	ld bc, $c002                                     ; $471b: $01 $02 $c0
	ld bc, $04a0                                     ; $471e: $01 $a0 $04
	ld bc, $c1b7                                     ; $4721: $01 $b7 $c1
	ld e, e                                          ; $4724: $5b
	ret nz                                           ; $4725: $c0

	ld bc, $01a0                                     ; $4726: $01 $a0 $01
	ld bc, $0210                                     ; $4729: $01 $10 $02
	jp nc, $1ad3                                     ; $472c: $d2 $d3 $1a

	ret nz                                           ; $472f: $c0

	ld bc, $04a0                                     ; $4730: $01 $a0 $04
	ld bc, $c0c0                                     ; $4733: $01 $c0 $c0
	ld bc, $01a0                                     ; $4736: $01 $a0 $01
	nop                                              ; $4739: $00
	rst FarCall                                          ; $473a: $f7
	ret nz                                           ; $473b: $c0

	ld bc, $04a0                                     ; $473c: $01 $a0 $04
	ld bc, $c1c3                                     ; $473f: $01 $c3 $c1
	ld e, e                                          ; $4742: $5b
	ret nz                                           ; $4743: $c0

	ld bc, $01a0                                     ; $4744: $01 $a0 $01
	ld bc, $0120                                     ; $4747: $01 $20 $01
	call nc, $c01a                                   ; $474a: $d4 $1a $c0
	ld bc, $04a0                                     ; $474d: $01 $a0 $04
	ld bc, $c0d3                                     ; $4750: $01 $d3 $c0
	ld bc, $01a0                                     ; $4753: $01 $a0 $01
	nop                                              ; $4756: $00
	rst FarCall                                          ; $4757: $f7
	ret nz                                           ; $4758: $c0

	ld bc, $04a0                                     ; $4759: $01 $a0 $04
	ld bc, $c1d5                                     ; $475c: $01 $d5 $c1
	ld e, e                                          ; $475f: $5b
	ret nz                                           ; $4760: $c0

	ld bc, $01a0                                     ; $4761: $01 $a0 $01
	ld bc, $0120                                     ; $4764: $01 $20 $01
	push de                                          ; $4767: $d5
	ld a, [de]                                       ; $4768: $1a
	ret nz                                           ; $4769: $c0

	ld bc, $04a0                                     ; $476a: $01 $a0 $04
	ld bc, $c034                                     ; $476d: $01 $34 $c0
	ld bc, $01a0                                     ; $4770: $01 $a0 $01
	nop                                              ; $4773: $00
	rst FarCall                                          ; $4774: $f7
	ret nz                                           ; $4775: $c0

	ld bc, $04a0                                     ; $4776: $01 $a0 $04
	ld bc, $c1db                                     ; $4779: $01 $db $c1
	ld e, e                                          ; $477c: $5b
	ret nz                                           ; $477d: $c0

	ld bc, $01a0                                     ; $477e: $01 $a0 $01
	ld bc, $c041                                     ; $4781: $01 $41 $c0
	ld hl, $d2d7                                     ; $4784: $21 $d7 $d2
	ret nz                                           ; $4787: $c0

	ld [hl+], a                                      ; $4788: $22
	ret c                                            ; $4789: $d8

	jp nc, $03e4                                     ; $478a: $d2 $e4 $03

	dec l                                            ; $478d: $2d
	add hl, bc                                       ; $478e: $09
	sbc e                                            ; $478f: $9b
	ret nz                                           ; $4790: $c0

	ld bc, $01a0                                     ; $4791: $01 $a0 $01
	ld bc, $e1df                                     ; $4794: $01 $df $e1
	ld [bc], a                                       ; $4797: $02
	ld bc, $8398                                     ; $4798: $01 $98 $83
	ret nz                                           ; $479b: $c0

	dec de                                           ; $479c: $1b
	db $d3                                           ; $479d: $d3
	ld [bc], a                                       ; $479e: $02
	ret nc                                           ; $479f: $d0

	pop de                                           ; $47a0: $d1
	ld h, $c0                                        ; $47a1: $26 $c0
	ld bc, $05a0                                     ; $47a3: $01 $a0 $05
	ld bc, wGenericTileDataDest+1                                     ; $47a6: $01 $e3 $c0
	ld bc, $01a0                                     ; $47a9: $01 $a0 $01
	nop                                              ; $47ac: $00
	rst FarCall                                          ; $47ad: $f7
	ret nz                                           ; $47ae: $c0

	ld bc, $05a0                                     ; $47af: $01 $a0 $05
	ld bc, wGenericTileDataFinalDest+1                                     ; $47b2: $01 $e7 $c0
	ld bc, $01a0                                     ; $47b5: $01 $a0 $01
	ld bc, $c002                                     ; $47b8: $01 $02 $c0
	ld bc, $05a0                                     ; $47bb: $01 $a0 $05
	ld bc, $c1ee                                     ; $47be: $01 $ee $c1

Jump_087_47c1:
	ld e, e                                          ; $47c1: $5b
	ret nz                                           ; $47c2: $c0

	ld bc, $01a0                                     ; $47c3: $01 $a0 $01
	ld bc, $02fc                                     ; $47c6: $01 $fc $02
	jp nc, $1ad3                                     ; $47c9: $d2 $d3 $1a

	ret nz                                           ; $47cc: $c0

	ld bc, $05a0                                     ; $47cd: $01 $a0 $05
	ld [bc], a                                       ; $47d0: $02
	ld [bc], a                                       ; $47d1: $02
	ret nz                                           ; $47d2: $c0

	ld bc, $01a0                                     ; $47d3: $01 $a0 $01
	nop                                              ; $47d6: $00
	rst FarCall                                          ; $47d7: $f7
	ret nz                                           ; $47d8: $c0

	ld bc, $05a0                                     ; $47d9: $01 $a0 $05
	ld [bc], a                                       ; $47dc: $02
	ld b, $c1                                        ; $47dd: $06 $c1
	ld e, e                                          ; $47df: $5b
	ret nz                                           ; $47e0: $c0

	ld bc, $01a0                                     ; $47e1: $01 $a0 $01
	ld bc, $0120                                     ; $47e4: $01 $20 $01
	call nc, $c01a                                   ; $47e7: $d4 $1a $c0
	ld bc, $05a0                                     ; $47ea: $01 $a0 $05
	ld bc, $c0c0                                     ; $47ed: $01 $c0 $c0
	ld bc, $01a0                                     ; $47f0: $01 $a0 $01
	nop                                              ; $47f3: $00
	rst FarCall                                          ; $47f4: $f7
	ret nz                                           ; $47f5: $c0

	ld bc, $05a0                                     ; $47f6: $01 $a0 $05
	ld [bc], a                                       ; $47f9: $02
	dec bc                                           ; $47fa: $0b
	pop bc                                           ; $47fb: $c1
	ld e, e                                          ; $47fc: $5b
	ret nz                                           ; $47fd: $c0

	ld bc, $01a0                                     ; $47fe: $01 $a0 $01
	ld bc, $0120                                     ; $4801: $01 $20 $01
	push de                                          ; $4804: $d5
	ld a, [de]                                       ; $4805: $1a
	ret nz                                           ; $4806: $c0

	ld bc, $05a0                                     ; $4807: $01 $a0 $05
	ld [bc], a                                       ; $480a: $02
	rrca                                             ; $480b: $0f
	ret nz                                           ; $480c: $c0

	ld bc, $01a0                                     ; $480d: $01 $a0 $01
	nop                                              ; $4810: $00
	rst FarCall                                          ; $4811: $f7
	ret nz                                           ; $4812: $c0

	ld bc, $05a0                                     ; $4813: $01 $a0 $05
	ld bc, $c1db                                     ; $4816: $01 $db $c1
	ld e, e                                          ; $4819: $5b
	ret nz                                           ; $481a: $c0

	ld bc, $01a0                                     ; $481b: $01 $a0 $01
	ld bc, $c041                                     ; $481e: $01 $41 $c0
	ld hl, $d3d7                                     ; $4821: $21 $d7 $d3
	ret nz                                           ; $4824: $c0

	ld [hl+], a                                      ; $4825: $22
	ret c                                            ; $4826: $d8

	db $d3                                           ; $4827: $d3
	db $e4                                           ; $4828: $e4
	ld [bc], a                                       ; $4829: $02
	sub b                                            ; $482a: $90
	add hl, bc                                       ; $482b: $09
	sbc e                                            ; $482c: $9b
	ret nz                                           ; $482d: $c0

	ld bc, $01a0                                     ; $482e: $01 $a0 $01
	ld [bc], a                                       ; $4831: $02
	ld d, $e1                                        ; $4832: $16 $e1
	ld [bc], a                                       ; $4834: $02
	ld bc, $83e0                                     ; $4835: $01 $e0 $83
	ret nz                                           ; $4838: $c0

	dec de                                           ; $4839: $1b
	rst SubAFromHL                                          ; $483a: $d7
	ld [bc], a                                       ; $483b: $02
	ret nc                                           ; $483c: $d0

	pop de                                           ; $483d: $d1
	ld h, $c0                                        ; $483e: $26 $c0
	ld bc, $08a0                                     ; $4840: $01 $a0 $08
	ld [bc], a                                       ; $4843: $02
	ld a, [de]                                       ; $4844: $1a
	ret nz                                           ; $4845: $c0

	ld bc, $01a0                                     ; $4846: $01 $a0 $01
	nop                                              ; $4849: $00
	rst FarCall                                          ; $484a: $f7
	ret nz                                           ; $484b: $c0

	ld bc, $08a0                                     ; $484c: $01 $a0 $08
	ld [bc], a                                       ; $484f: $02
	ld hl, $01c0                                     ; $4850: $21 $c0 $01
	and b                                            ; $4853: $a0
	ld bc, $0201                                     ; $4854: $01 $01 $02
	ret nz                                           ; $4857: $c0

	ld bc, $08a0                                     ; $4858: $01 $a0 $08
	ld [bc], a                                       ; $485b: $02
	add hl, hl                                       ; $485c: $29
	pop bc                                           ; $485d: $c1
	ld e, e                                          ; $485e: $5b
	ret nz                                           ; $485f: $c0

	ld bc, $01a0                                     ; $4860: $01 $a0 $01
	ld bc, $02fc                                     ; $4863: $01 $fc $02
	jp nc, $1ad3                                     ; $4866: $d2 $d3 $1a

	ret nz                                           ; $4869: $c0

	ld bc, $08a0                                     ; $486a: $01 $a0 $08
	ld [bc], a                                       ; $486d: $02
	dec [hl]                                         ; $486e: $35
	ret nz                                           ; $486f: $c0

	ld bc, $01a0                                     ; $4870: $01 $a0 $01
	nop                                              ; $4873: $00
	rst FarCall                                          ; $4874: $f7
	ret nz                                           ; $4875: $c0

	ld bc, $08a0                                     ; $4876: $01 $a0 $08
	ld [bc], a                                       ; $4879: $02
	inc a                                            ; $487a: $3c
	pop bc                                           ; $487b: $c1
	ld e, e                                          ; $487c: $5b
	ret nz                                           ; $487d: $c0

	ld bc, $01a0                                     ; $487e: $01 $a0 $01
	ld bc, $0120                                     ; $4881: $01 $20 $01
	call nc, $c01a                                   ; $4884: $d4 $1a $c0
	ld bc, $08a0                                     ; $4887: $01 $a0 $08
	ld [bc], a                                       ; $488a: $02
	ld b, b                                          ; $488b: $40
	ret nz                                           ; $488c: $c0

	ld bc, $01a0                                     ; $488d: $01 $a0 $01
	nop                                              ; $4890: $00
	rst FarCall                                          ; $4891: $f7
	ret nz                                           ; $4892: $c0

	ld bc, $08a0                                     ; $4893: $01 $a0 $08
	ld [bc], a                                       ; $4896: $02
	ld b, l                                          ; $4897: $45
	pop bc                                           ; $4898: $c1
	ld e, e                                          ; $4899: $5b
	ret nz                                           ; $489a: $c0

	ld bc, $01a0                                     ; $489b: $01 $a0 $01
	ld bc, $0120                                     ; $489e: $01 $20 $01
	push de                                          ; $48a1: $d5
	ld a, [de]                                       ; $48a2: $1a
	ret nz                                           ; $48a3: $c0

	ld bc, $08a0                                     ; $48a4: $01 $a0 $08
	ld [bc], a                                       ; $48a7: $02
	ld c, l                                          ; $48a8: $4d
	ret nz                                           ; $48a9: $c0

	ld bc, $01a0                                     ; $48aa: $01 $a0 $01
	nop                                              ; $48ad: $00
	rst FarCall                                          ; $48ae: $f7
	ret nz                                           ; $48af: $c0

	ld bc, $08a0                                     ; $48b0: $01 $a0 $08
	ld [bc], a                                       ; $48b3: $02
	ld d, e                                          ; $48b4: $53
	pop bc                                           ; $48b5: $c1
	ld e, e                                          ; $48b6: $5b
	ret nz                                           ; $48b7: $c0

	ld bc, $01a0                                     ; $48b8: $01 $a0 $01
	ld bc, $c041                                     ; $48bb: $01 $41 $c0
	ld hl, $d7d7                                     ; $48be: $21 $d7 $d7
	ret nz                                           ; $48c1: $c0

	ld [hl+], a                                      ; $48c2: $22
	ret c                                            ; $48c3: $d8

	rst SubAFromHL                                          ; $48c4: $d7
	db $e4                                           ; $48c5: $e4
	ld bc, $09f3                                     ; $48c6: $01 $f3 $09
	sbc e                                            ; $48c9: $9b
	ret nz                                           ; $48ca: $c0

	ld bc, $01a0                                     ; $48cb: $01 $a0 $01
	ld [bc], a                                       ; $48ce: $02
	ld d, [hl]                                       ; $48cf: $56
	pop hl                                           ; $48d0: $e1
	ld [bc], a                                       ; $48d1: $02
	ld [bc], a                                       ; $48d2: $02
	db $10                                           ; $48d3: $10
	add e                                            ; $48d4: $83
	ret nz                                           ; $48d5: $c0

	dec de                                           ; $48d6: $1b
	ret c                                            ; $48d7: $d8

	ld [bc], a                                       ; $48d8: $02
	ret nc                                           ; $48d9: $d0

	pop de                                           ; $48da: $d1
	ld h, $c0                                        ; $48db: $26 $c0
	ld bc, $09a0                                     ; $48dd: $01 $a0 $09
	ld [bc], a                                       ; $48e0: $02
	ld e, d                                          ; $48e1: $5a
	ret nz                                           ; $48e2: $c0

	ld bc, $01a0                                     ; $48e3: $01 $a0 $01
	nop                                              ; $48e6: $00
	rst FarCall                                          ; $48e7: $f7
	ret nz                                           ; $48e8: $c0

	ld bc, $09a0                                     ; $48e9: $01 $a0 $09
	ld [bc], a                                       ; $48ec: $02
	ld e, [hl]                                       ; $48ed: $5e
	ret nz                                           ; $48ee: $c0

	ld bc, $01a0                                     ; $48ef: $01 $a0 $01
	ld bc, $c002                                     ; $48f2: $01 $02 $c0
	ld bc, $09a0                                     ; $48f5: $01 $a0 $09
	ld [bc], a                                       ; $48f8: $02
	ld l, b                                          ; $48f9: $68
	pop bc                                           ; $48fa: $c1
	ld e, e                                          ; $48fb: $5b
	ret nz                                           ; $48fc: $c0

	ld bc, $01a0                                     ; $48fd: $01 $a0 $01
	ld bc, $02fc                                     ; $4900: $01 $fc $02
	jp nc, $1ad3                                     ; $4903: $d2 $d3 $1a

	ret nz                                           ; $4906: $c0

	ld bc, $09a0                                     ; $4907: $01 $a0 $09
	ld [bc], a                                       ; $490a: $02
	ld l, a                                          ; $490b: $6f
	ret nz                                           ; $490c: $c0

	ld bc, $01a0                                     ; $490d: $01 $a0 $01
	nop                                              ; $4910: $00
	rst FarCall                                          ; $4911: $f7
	ret nz                                           ; $4912: $c0

	ld bc, $09a0                                     ; $4913: $01 $a0 $09
	ld [bc], a                                       ; $4916: $02
	ld [hl], h                                       ; $4917: $74
	pop bc                                           ; $4918: $c1
	ld e, e                                          ; $4919: $5b
	ret nz                                           ; $491a: $c0

	ld bc, $01a0                                     ; $491b: $01 $a0 $01
	ld bc, $0120                                     ; $491e: $01 $20 $01
	call nc, $c01a                                   ; $4921: $d4 $1a $c0
	ld bc, $09a0                                     ; $4924: $01 $a0 $09
	nop                                              ; $4927: $00
	push af                                          ; $4928: $f5
	ret nz                                           ; $4929: $c0

	ld bc, $01a0                                     ; $492a: $01 $a0 $01
	nop                                              ; $492d: $00
	rst FarCall                                          ; $492e: $f7
	ret nz                                           ; $492f: $c0

	ld bc, $09a0                                     ; $4930: $01 $a0 $09
	ld [bc], a                                       ; $4933: $02
	ld a, h                                          ; $4934: $7c
	pop bc                                           ; $4935: $c1
	ld e, e                                          ; $4936: $5b
	ret nz                                           ; $4937: $c0

	ld bc, $01a0                                     ; $4938: $01 $a0 $01
	ld bc, $0120                                     ; $493b: $01 $20 $01
	push de                                          ; $493e: $d5
	ld a, [de]                                       ; $493f: $1a
	ret nz                                           ; $4940: $c0

	ld bc, $09a0                                     ; $4941: $01 $a0 $09
	ld bc, $c034                                     ; $4944: $01 $34 $c0
	ld bc, $01a0                                     ; $4947: $01 $a0 $01
	nop                                              ; $494a: $00
	rst FarCall                                          ; $494b: $f7
	ret nz                                           ; $494c: $c0

	ld bc, $09a0                                     ; $494d: $01 $a0 $09
	ld [bc], a                                       ; $4950: $02
	add h                                            ; $4951: $84
	pop bc                                           ; $4952: $c1
	ld e, e                                          ; $4953: $5b
	ret nz                                           ; $4954: $c0

	ld bc, $01a0                                     ; $4955: $01 $a0 $01
	ld bc, $c041                                     ; $4958: $01 $41 $c0
	ld hl, $d8d7                                     ; $495b: $21 $d7 $d8
	ret nz                                           ; $495e: $c0

	ld [hl+], a                                      ; $495f: $22
	ret c                                            ; $4960: $d8

	ret c                                            ; $4961: $d8

	db $e4                                           ; $4962: $e4
	ld bc, $0956                                     ; $4963: $01 $56 $09
	or l                                             ; $4966: $b5
	ret nz                                           ; $4967: $c0

	ld bc, $01a0                                     ; $4968: $01 $a0 $01
	ld [bc], a                                       ; $496b: $02
	adc l                                            ; $496c: $8d
	pop hl                                           ; $496d: $e1
	ld [bc], a                                       ; $496e: $02
	rlca                                             ; $496f: $07
	sbc e                                            ; $4970: $9b
	ret nz                                           ; $4971: $c0

	inc c                                            ; $4972: $0c
	ldh [$3c], a                                     ; $4973: $e0 $3c
	ret nz                                           ; $4975: $c0

	ld bc, $01a0                                     ; $4976: $01 $a0 $01
	ld [bc], a                                       ; $4979: $02
	sub l                                            ; $497a: $95
	pop hl                                           ; $497b: $e1
	ld [bc], a                                       ; $497c: $02
	ld [bc], a                                       ; $497d: $02
	ld b, b                                          ; $497e: $40
	add e                                            ; $497f: $83
	ret nz                                           ; $4980: $c0

	dec de                                           ; $4981: $1b
	jp c, $d002                                      ; $4982: $da $02 $d0

	pop de                                           ; $4985: $d1
	ld [hl-], a                                      ; $4986: $32
	ret nz                                           ; $4987: $c0

	ld bc, $06a0                                     ; $4988: $01 $a0 $06
	ld [bc], a                                       ; $498b: $02
	sbc c                                            ; $498c: $99
	ret nz                                           ; $498d: $c0

	ld bc, $01a0                                     ; $498e: $01 $a0 $01
	nop                                              ; $4991: $00
	rst FarCall                                          ; $4992: $f7
	ret nz                                           ; $4993: $c0

	ld bc, $06a0                                     ; $4994: $01 $a0 $06
	ld [bc], a                                       ; $4997: $02
	sbc [hl]                                         ; $4998: $9e
	ret nz                                           ; $4999: $c0

	ld bc, $01a0                                     ; $499a: $01 $a0 $01
	ld [bc], a                                       ; $499d: $02
	and l                                            ; $499e: $a5
	ret nz                                           ; $499f: $c0

	ld bc, $06a0                                     ; $49a0: $01 $a0 $06
	ld [bc], a                                       ; $49a3: $02
	xor c                                            ; $49a4: $a9
	ret nz                                           ; $49a5: $c0

	ld bc, $01a0                                     ; $49a6: $01 $a0 $01
	ld [bc], a                                       ; $49a9: $02
	or b                                             ; $49aa: $b0
	ret nz                                           ; $49ab: $c0

	ld bc, $06a0                                     ; $49ac: $01 $a0 $06
	ld [bc], a                                       ; $49af: $02
	cp e                                             ; $49b0: $bb
	pop bc                                           ; $49b1: $c1
	ld e, e                                          ; $49b2: $5b
	ret nz                                           ; $49b3: $c0

	ld bc, $01a0                                     ; $49b4: $01 $a0 $01
	ld bc, $02fc                                     ; $49b7: $01 $fc $02
	jp nc, $1ad3                                     ; $49ba: $d2 $d3 $1a

	ret nz                                           ; $49bd: $c0

	ld bc, $06a0                                     ; $49be: $01 $a0 $06
	ld [bc], a                                       ; $49c1: $02
	cp [hl]                                          ; $49c2: $be
	ret nz                                           ; $49c3: $c0

	ld bc, $01a0                                     ; $49c4: $01 $a0 $01
	nop                                              ; $49c7: $00
	rst FarCall                                          ; $49c8: $f7
	ret nz                                           ; $49c9: $c0

	ld bc, $06a0                                     ; $49ca: $01 $a0 $06
	ld [bc], a                                       ; $49cd: $02
	jp Jump_087_5bc1                                 ; $49ce: $c3 $c1 $5b


	ret nz                                           ; $49d1: $c0

	ld bc, $01a0                                     ; $49d2: $01 $a0 $01
	ld bc, $0120                                     ; $49d5: $01 $20 $01
	call nc, $c01a                                   ; $49d8: $d4 $1a $c0
	ld bc, $06a0                                     ; $49db: $01 $a0 $06
	ld [bc], a                                       ; $49de: $02
	jp z, $01c0                                      ; $49df: $ca $c0 $01

	and b                                            ; $49e2: $a0
	ld bc, $f700                                     ; $49e3: $01 $00 $f7
	ret nz                                           ; $49e6: $c0

	ld bc, $06a0                                     ; $49e7: $01 $a0 $06
	ld [bc], a                                       ; $49ea: $02
	adc $c1                                          ; $49eb: $ce $c1
	ld e, e                                          ; $49ed: $5b
	ret nz                                           ; $49ee: $c0

	ld bc, $01a0                                     ; $49ef: $01 $a0 $01
	ld bc, $0120                                     ; $49f2: $01 $20 $01
	push de                                          ; $49f5: $d5
	ld a, [de]                                       ; $49f6: $1a
	ret nz                                           ; $49f7: $c0

	ld bc, $06a0                                     ; $49f8: $01 $a0 $06
	ld bc, $c0c0                                     ; $49fb: $01 $c0 $c0
	ld bc, $01a0                                     ; $49fe: $01 $a0 $01
	nop                                              ; $4a01: $00
	rst FarCall                                          ; $4a02: $f7
	ret nz                                           ; $4a03: $c0

	ld bc, $06a0                                     ; $4a04: $01 $a0 $06
	ld [bc], a                                       ; $4a07: $02
	call nc, Call_087_5bc1                           ; $4a08: $d4 $c1 $5b
	ret nz                                           ; $4a0b: $c0

	ld bc, $01a0                                     ; $4a0c: $01 $a0 $01
	ld [bc], a                                       ; $4a0f: $02
	ldh [$c0], a                                     ; $4a10: $e0 $c0
	ld hl, $dad7                                     ; $4a12: $21 $d7 $da
	ret nz                                           ; $4a15: $c0

	ld [hl+], a                                      ; $4a16: $22
	ret c                                            ; $4a17: $d8

	jp c, $00e4                                      ; $4a18: $da $e4 $00

	sbc a                                            ; $4a1b: $9f
	add hl, bc                                       ; $4a1c: $09
	sbc e                                            ; $4a1d: $9b
	ret nz                                           ; $4a1e: $c0

	ld bc, $01a0                                     ; $4a1f: $01 $a0 $01
	ld [bc], a                                       ; $4a22: $02
	jp hl                                            ; $4a23: $e9


	pop hl                                           ; $4a24: $e1
	ld [bc], a                                       ; $4a25: $02
	ld [bc], a                                       ; $4a26: $02
	ld [hl], b                                       ; $4a27: $70
	add e                                            ; $4a28: $83
	ret nz                                           ; $4a29: $c0

	dec de                                           ; $4a2a: $1b
	db $dd                                           ; $4a2b: $dd
	ld [bc], a                                       ; $4a2c: $02
	ret nc                                           ; $4a2d: $d0

jr_087_4a2e:
	pop de                                           ; $4a2e: $d1
	ld h, $c0                                        ; $4a2f: $26 $c0
	ld bc, $0aa0                                     ; $4a31: $01 $a0 $0a
	ld [bc], a                                       ; $4a34: $02
	db $ed                                           ; $4a35: $ed
	ret nz                                           ; $4a36: $c0

	ld bc, $01a0                                     ; $4a37: $01 $a0 $01
	nop                                              ; $4a3a: $00
	rst FarCall                                          ; $4a3b: $f7
	ret nz                                           ; $4a3c: $c0

	ld bc, $0aa0                                     ; $4a3d: $01 $a0 $0a
	ld [bc], a                                       ; $4a40: $02
	ldh a, [$c0]                                     ; $4a41: $f0 $c0
	ld bc, $01a0                                     ; $4a43: $01 $a0 $01
	ld [bc], a                                       ; $4a46: $02
	ld a, [$01c0]                                    ; $4a47: $fa $c0 $01
	and b                                            ; $4a4a: $a0

jr_087_4a4b:
	ld a, [bc]                                       ; $4a4b: $0a
	inc bc                                           ; $4a4c: $03
	dec b                                            ; $4a4d: $05
	pop bc                                           ; $4a4e: $c1
	ld e, e                                          ; $4a4f: $5b
	ret nz                                           ; $4a50: $c0

	ld bc, $01a0                                     ; $4a51: $01 $a0 $01
	ld bc, $02fc                                     ; $4a54: $01 $fc $02
	jp nc, $1ad3                                     ; $4a57: $d2 $d3 $1a

	ret nz                                           ; $4a5a: $c0

	ld bc, $0aa0                                     ; $4a5b: $01 $a0 $0a
	inc bc                                           ; $4a5e: $03
	inc d                                            ; $4a5f: $14
	ret nz                                           ; $4a60: $c0

	ld bc, $01a0                                     ; $4a61: $01 $a0 $01
	nop                                              ; $4a64: $00
	rst FarCall                                          ; $4a65: $f7
	ret nz                                           ; $4a66: $c0

	ld bc, $0aa0                                     ; $4a67: $01 $a0 $0a
	inc bc                                           ; $4a6a: $03
	jr jr_087_4a2e                                   ; $4a6b: $18 $c1

	ld e, e                                          ; $4a6d: $5b
	ret nz                                           ; $4a6e: $c0

	ld bc, $01a0                                     ; $4a6f: $01 $a0 $01
	ld bc, $0120                                     ; $4a72: $01 $20 $01
	call nc, $c01a                                   ; $4a75: $d4 $1a $c0
	ld bc, $0aa0                                     ; $4a78: $01 $a0 $0a
	inc bc                                           ; $4a7b: $03
	dec e                                            ; $4a7c: $1d
	ret nz                                           ; $4a7d: $c0

	ld bc, $01a0                                     ; $4a7e: $01 $a0 $01
	nop                                              ; $4a81: $00
	rst FarCall                                          ; $4a82: $f7
	ret nz                                           ; $4a83: $c0

	ld bc, $0aa0                                     ; $4a84: $01 $a0 $0a
	inc bc                                           ; $4a87: $03
	jr nz, jr_087_4a4b                               ; $4a88: $20 $c1

	ld e, e                                          ; $4a8a: $5b
	ret nz                                           ; $4a8b: $c0

	ld bc, $01a0                                     ; $4a8c: $01 $a0 $01
	ld bc, $0120                                     ; $4a8f: $01 $20 $01
	push de                                          ; $4a92: $d5
	ld a, [de]                                       ; $4a93: $1a
	ret nz                                           ; $4a94: $c0

	ld bc, $0aa0                                     ; $4a95: $01 $a0 $0a
	ld bc, $c0c0                                     ; $4a98: $01 $c0 $c0
	ld bc, $01a0                                     ; $4a9b: $01 $a0 $01
	nop                                              ; $4a9e: $00
	rst FarCall                                          ; $4a9f: $f7
	ret nz                                           ; $4aa0: $c0

	ld bc, $0aa0                                     ; $4aa1: $01 $a0 $0a
	inc bc                                           ; $4aa4: $03
	dec h                                            ; $4aa5: $25
	pop bc                                           ; $4aa6: $c1
	ld e, e                                          ; $4aa7: $5b
	ret nz                                           ; $4aa8: $c0

	ld bc, $01a0                                     ; $4aa9: $01 $a0 $01
	ld bc, $c041                                     ; $4aac: $01 $41 $c0
	ld hl, $ddd7                                     ; $4aaf: $21 $d7 $dd
	ret nz                                           ; $4ab2: $c0

	ld [hl+], a                                      ; $4ab3: $22
	ret c                                            ; $4ab4: $d8

	db $dd                                           ; $4ab5: $dd
	db $e4                                           ; $4ab6: $e4
	nop                                              ; $4ab7: $00
	ld [bc], a                                       ; $4ab8: $02
	add hl, bc                                       ; $4ab9: $09
	ld l, a                                          ; $4aba: $6f
	ei                                               ; $4abb: $fb
	db $fc                                           ; $4abc: $fc
	ret nz                                           ; $4abd: $c0

	jp $d1d0                                         ; $4abe: $c3 $d0 $d1


	inc b                                            ; $4ac1: $04
	ret nz                                           ; $4ac2: $c0

	ld hl, $d0d1                                     ; $4ac3: $21 $d1 $d0
	ei                                               ; $4ac6: $fb
	db $fc                                           ; $4ac7: $fc
	ret nz                                           ; $4ac8: $c0

	jp $d1d1                                         ; $4ac9: $c3 $d1 $d1


	inc b                                            ; $4acc: $04
	ret nz                                           ; $4acd: $c0

	ld hl, $d1d1                                     ; $4ace: $21 $d1 $d1
	ei                                               ; $4ad1: $fb
	db $fc                                           ; $4ad2: $fc
	ret nz                                           ; $4ad3: $c0

	jp $d1d2                                         ; $4ad4: $c3 $d2 $d1


	inc b                                            ; $4ad7: $04
	ret nz                                           ; $4ad8: $c0

	ld hl, $d2d1                                     ; $4ad9: $21 $d1 $d2
	ei                                               ; $4adc: $fb
	db $fc                                           ; $4add: $fc
	ret nz                                           ; $4ade: $c0

	jp $d1d3                                         ; $4adf: $c3 $d3 $d1


	inc b                                            ; $4ae2: $04
	ret nz                                           ; $4ae3: $c0

	ld hl, $d3d1                                     ; $4ae4: $21 $d1 $d3
	ei                                               ; $4ae7: $fb
	db $fc                                           ; $4ae8: $fc
	ret nz                                           ; $4ae9: $c0

	jp $d1d7                                         ; $4aea: $c3 $d7 $d1


	inc b                                            ; $4aed: $04
	ret nz                                           ; $4aee: $c0

	ld hl, $d7d1                                     ; $4aef: $21 $d1 $d7
	ei                                               ; $4af2: $fb
	db $fc                                           ; $4af3: $fc
	ret nz                                           ; $4af4: $c0

	jp $d1d8                                         ; $4af5: $c3 $d8 $d1


	inc b                                            ; $4af8: $04
	ret nz                                           ; $4af9: $c0

	ld hl, $d8d1                                     ; $4afa: $21 $d1 $d8
	ei                                               ; $4afd: $fb
	db $fc                                           ; $4afe: $fc
	ret nz                                           ; $4aff: $c0

	jp $d1da                                         ; $4b00: $c3 $da $d1


	inc b                                            ; $4b03: $04
	ret nz                                           ; $4b04: $c0

	ld hl, $dad1                                     ; $4b05: $21 $d1 $da
	ei                                               ; $4b08: $fb
	db $fc                                           ; $4b09: $fc
	ret nz                                           ; $4b0a: $c0

	jp $d1dd                                         ; $4b0b: $c3 $dd $d1


	inc b                                            ; $4b0e: $04
	ret nz                                           ; $4b0f: $c0

	ld hl, $ddd1                                     ; $4b10: $21 $d1 $dd
	ld b, b                                          ; $4b13: $40
	add b                                            ; $4b14: $80
	ld [bc], a                                       ; $4b15: $02
	db $d3                                           ; $4b16: $d3
	ret nz                                           ; $4b17: $c0

	res 0, c                                         ; $4b18: $cb $81
	adc e                                            ; $4b1a: $8b
	ld bc, $0266                                     ; $4b1b: $01 $66 $02
	or b                                             ; $4b1e: $b0
	inc bc                                           ; $4b1f: $03
	inc bc                                           ; $4b20: $03
	db $e4                                           ; $4b21: $e4
	nop                                              ; $4b22: $00
	ld [$0400], sp                                   ; $4b23: $08 $00 $04
	push hl                                          ; $4b26: $e5
	ld bc, $b119                                     ; $4b27: $01 $19 $b1
	jr z, jr_087_4b3a                                ; $4b2a: $28 $0e

	ret nz                                           ; $4b2c: $c0

	push af                                          ; $4b2d: $f5
	ret nz                                           ; $4b2e: $c0

	ld bc, $01a0                                     ; $4b2f: $01 $a0 $01
	inc bc                                           ; $4b32: $03
	ld l, $c0                                        ; $4b33: $2e $c0
	ld bc, $01a0                                     ; $4b35: $01 $a0 $01
	inc bc                                           ; $4b38: $03
	dec sp                                           ; $4b39: $3b

jr_087_4b3a:
	inc h                                            ; $4b3a: $24
	inc bc                                           ; $4b3b: $03
	ld a, $09                                        ; $4b3c: $3e $09
	ld a, [bc]                                       ; $4b3e: $0a
	ret nc                                           ; $4b3f: $d0

	adc e                                            ; $4b40: $8b
	nop                                              ; $4b41: $00
	sbc $b0                                          ; $4b42: $de $b0
	ld [hl], h                                       ; $4b44: $74
	push hl                                          ; $4b45: $e5
	ld b, l                                          ; $4b46: $45
	nop                                              ; $4b47: $00
	nop                                              ; $4b48: $00
	inc bc                                           ; $4b49: $03
	ld b, b                                          ; $4b4a: $40
	add hl, bc                                       ; $4b4b: $09
	ld [de], a                                       ; $4b4c: $12
	ret nz                                           ; $4b4d: $c0

	inc h                                            ; $4b4e: $24
	pop de                                           ; $4b4f: $d1
	ret nc                                           ; $4b50: $d0

	ret nz                                           ; $4b51: $c0

	inc hl                                           ; $4b52: $23
	push de                                          ; $4b53: $d5
	ret nc                                           ; $4b54: $d0

	ret nz                                           ; $4b55: $c0

	ld bc, $01a0                                     ; $4b56: $01 $a0 $01
	inc bc                                           ; $4b59: $03
	ld b, d                                          ; $4b5a: $42
	push hl                                          ; $4b5b: $e5
	ld bc, $b119                                     ; $4b5c: $01 $19 $b1
	or $07                                           ; $4b5f: $f6 $07
	add hl, bc                                       ; $4b61: $09
	db $10                                           ; $4b62: $10
	ret nz                                           ; $4b63: $c0

	ld bc, $01a0                                     ; $4b64: $01 $a0 $01
	nop                                              ; $4b67: $00
	ld bc, $53c1                                     ; $4b68: $01 $c1 $53
	ret nz                                           ; $4b6b: $c0

	inc d                                            ; $4b6c: $14
	db $e3                                           ; $4b6d: $e3
	nop                                              ; $4b6e: $00
	ld b, c                                          ; $4b6f: $41
	ldh [rP1], a                                     ; $4b70: $e0 $00
	inc d                                            ; $4b72: $14
	add hl, bc                                       ; $4b73: $09
	db $10                                           ; $4b74: $10
	ret nz                                           ; $4b75: $c0

	ld bc, $01a0                                     ; $4b76: $01 $a0 $01
	nop                                              ; $4b79: $00
	ld bc, $53c1                                     ; $4b7a: $01 $c1 $53
	ret nz                                           ; $4b7d: $c0

	inc d                                            ; $4b7e: $14
	db $e3                                           ; $4b7f: $e3
	nop                                              ; $4b80: $00
	inc a                                            ; $4b81: $3c
	ldh [rP1], a                                     ; $4b82: $e0 $00
	ld [bc], a                                       ; $4b84: $02
	ld a, [hl+]                                      ; $4b85: $2a
	ldh [rP1], a                                     ; $4b86: $e0 $00
	call nc, $80a0                                   ; $4b88: $d4 $a0 $80
	and b                                            ; $4b8b: $a0
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	inc c                                            ; $4b8e: $0c
	ret nz                                           ; $4b8f: $c0

	ld bc, $02a0                                     ; $4b90: $01 $a0 $02
	nop                                              ; $4b93: $00
	ld b, $c0                                        ; $4b94: $06 $c0
	ld bc, $01a0                                     ; $4b96: $01 $a0 $01
	nop                                              ; $4b99: $00
	add hl, bc                                       ; $4b9a: $09
	rst $38                                          ; $4b9b: $ff
	db $10                                           ; $4b9c: $10
	ret nz                                           ; $4b9d: $c0

	ld bc, $02a0                                     ; $4b9e: $01 $a0 $02
	nop                                              ; $4ba1: $00
	inc de                                           ; $4ba2: $13
	ret nz                                           ; $4ba3: $c0

	ld bc, $01a0                                     ; $4ba4: $01 $a0 $01
	nop                                              ; $4ba7: $00
	rra                                              ; $4ba8: $1f
	ld b, b                                          ; $4ba9: $40
	add b                                            ; $4baa: $80
	and b                                            ; $4bab: $a0
	nop                                              ; $4bac: $00
	db $e4                                           ; $4bad: $e4
	inc b                                            ; $4bae: $04
	add hl, bc                                       ; $4baf: $09
	add hl, bc                                       ; $4bb0: $09
	scf                                              ; $4bb1: $37
	ret nz                                           ; $4bb2: $c0

	ld bc, $01a0                                     ; $4bb3: $01 $a0 $01
	nop                                              ; $4bb6: $00
	ld bc, $53c1                                     ; $4bb7: $01 $c1 $53
	ret nz                                           ; $4bba: $c0

	inc d                                            ; $4bbb: $14
	db $e3                                           ; $4bbc: $e3
	nop                                              ; $4bbd: $00
	dec a                                            ; $4bbe: $3d
	ldh [rP1], a                                     ; $4bbf: $e0 $00
	sbc e                                            ; $4bc1: $9b
	and b                                            ; $4bc2: $a0
	add b                                            ; $4bc3: $80
	and b                                            ; $4bc4: $a0
	ld bc, $0c00                                     ; $4bc5: $01 $00 $0c
	ret nz                                           ; $4bc8: $c0

	ld bc, $02a0                                     ; $4bc9: $01 $a0 $02
	nop                                              ; $4bcc: $00
	ld h, $c0                                        ; $4bcd: $26 $c0
	ld bc, $01a0                                     ; $4bcf: $01 $a0 $01
	nop                                              ; $4bd2: $00
	add hl, bc                                       ; $4bd3: $09
	rst $38                                          ; $4bd4: $ff
	db $10                                           ; $4bd5: $10
	ret nz                                           ; $4bd6: $c0

	ld bc, $02a0                                     ; $4bd7: $01 $a0 $02
	nop                                              ; $4bda: $00
	ld sp, $01c0                                     ; $4bdb: $31 $c0 $01
	and b                                            ; $4bde: $a0
	ld bc, $3900                                     ; $4bdf: $01 $00 $39
	ld b, b                                          ; $4be2: $40
	add b                                            ; $4be3: $80
	and b                                            ; $4be4: $a0
	ld bc, $03e4                                     ; $4be5: $01 $e4 $03
	ret nc                                           ; $4be8: $d0

	add hl, bc                                       ; $4be9: $09
	scf                                              ; $4bea: $37
	ret nz                                           ; $4beb: $c0

	ld bc, $01a0                                     ; $4bec: $01 $a0 $01
	nop                                              ; $4bef: $00
	ld bc, $53c1                                     ; $4bf0: $01 $c1 $53
	ret nz                                           ; $4bf3: $c0

	inc d                                            ; $4bf4: $14
	db $e3                                           ; $4bf5: $e3
	nop                                              ; $4bf6: $00
	ld h, b                                          ; $4bf7: $60
	ldh [rP1], a                                     ; $4bf8: $e0 $00
	ld h, d                                          ; $4bfa: $62
	and b                                            ; $4bfb: $a0
	add b                                            ; $4bfc: $80
	and b                                            ; $4bfd: $a0
	ld [bc], a                                       ; $4bfe: $02
	nop                                              ; $4bff: $00
	inc c                                            ; $4c00: $0c
	ret nz                                           ; $4c01: $c0

	ld bc, $02a0                                     ; $4c02: $01 $a0 $02
	nop                                              ; $4c05: $00
	ld b, c                                          ; $4c06: $41
	ret nz                                           ; $4c07: $c0

	ld bc, $01a0                                     ; $4c08: $01 $a0 $01
	nop                                              ; $4c0b: $00
	ld c, l                                          ; $4c0c: $4d
	rst $38                                          ; $4c0d: $ff
	db $10                                           ; $4c0e: $10
	ret nz                                           ; $4c0f: $c0

	ld bc, $02a0                                     ; $4c10: $01 $a0 $02
	nop                                              ; $4c13: $00
	ld d, e                                          ; $4c14: $53
	ret nz                                           ; $4c15: $c0

	ld bc, $01a0                                     ; $4c16: $01 $a0 $01
	nop                                              ; $4c19: $00
	ld e, e                                          ; $4c1a: $5b
	ld b, b                                          ; $4c1b: $40
	add b                                            ; $4c1c: $80
	and b                                            ; $4c1d: $a0
	ld [bc], a                                       ; $4c1e: $02
	db $e4                                           ; $4c1f: $e4
	inc bc                                           ; $4c20: $03
	sub a                                            ; $4c21: $97
	add hl, bc                                       ; $4c22: $09
	scf                                              ; $4c23: $37
	ret nz                                           ; $4c24: $c0

	ld bc, $01a0                                     ; $4c25: $01 $a0 $01
	nop                                              ; $4c28: $00
	ld bc, $53c1                                     ; $4c29: $01 $c1 $53
	ret nz                                           ; $4c2c: $c0

	inc d                                            ; $4c2d: $14
	db $e3                                           ; $4c2e: $e3
	nop                                              ; $4c2f: $00
	inc a                                            ; $4c30: $3c
	ldh [rP1], a                                     ; $4c31: $e0 $00
	add hl, hl                                       ; $4c33: $29
	and b                                            ; $4c34: $a0
	add b                                            ; $4c35: $80
	and b                                            ; $4c36: $a0
	inc bc                                           ; $4c37: $03
	nop                                              ; $4c38: $00
	inc c                                            ; $4c39: $0c
	ret nz                                           ; $4c3a: $c0

	ld bc, $02a0                                     ; $4c3b: $01 $a0 $02
	nop                                              ; $4c3e: $00
	ld h, d                                          ; $4c3f: $62
	ret nz                                           ; $4c40: $c0

	ld bc, $01a0                                     ; $4c41: $01 $a0 $01
	nop                                              ; $4c44: $00
	ld l, d                                          ; $4c45: $6a
	rst $38                                          ; $4c46: $ff
	db $10                                           ; $4c47: $10
	ret nz                                           ; $4c48: $c0

	ld bc, $02a0                                     ; $4c49: $01 $a0 $02
	nop                                              ; $4c4c: $00
	ld [hl], b                                       ; $4c4d: $70
	ret nz                                           ; $4c4e: $c0

	ld bc, $01a0                                     ; $4c4f: $01 $a0 $01
	nop                                              ; $4c52: $00
	ld l, d                                          ; $4c53: $6a
	ld b, b                                          ; $4c54: $40
	add b                                            ; $4c55: $80
	and b                                            ; $4c56: $a0
	inc bc                                           ; $4c57: $03
	db $e4                                           ; $4c58: $e4
	inc bc                                           ; $4c59: $03
	ld e, [hl]                                       ; $4c5a: $5e
	ld a, [de]                                       ; $4c5b: $1a
	ret nz                                           ; $4c5c: $c0

	add hl, bc                                       ; $4c5d: $09
	db $e3                                           ; $4c5e: $e3
	nop                                              ; $4c5f: $00
	ld c, d                                          ; $4c60: $4a
	ret nz                                           ; $4c61: $c0

	xor b                                            ; $4c62: $a8
	ret nc                                           ; $4c63: $d0

	add c                                            ; $4c64: $81
	ret nz                                           ; $4c65: $c0

	dec de                                           ; $4c66: $1b
	ret nc                                           ; $4c67: $d0

	ld [bc], a                                       ; $4c68: $02
	ret nc                                           ; $4c69: $d0

	pop de                                           ; $4c6a: $d1
	inc bc                                           ; $4c6b: $03
	ret nz                                           ; $4c6c: $c0

	xor e                                            ; $4c6d: $ab
	jp nc, $0300                                     ; $4c6e: $d2 $00 $03

	ret nz                                           ; $4c71: $c0

	xor e                                            ; $4c72: $ab
	pop de                                           ; $4c73: $d1
	ret nz                                           ; $4c74: $c0

	and l                                            ; $4c75: $a5
	add hl, bc                                       ; $4c76: $09
	ld c, [hl]                                       ; $4c77: $4e
	ret nz                                           ; $4c78: $c0

	ld bc, $01a0                                     ; $4c79: $01 $a0 $01
	nop                                              ; $4c7c: $00
	ld bc, $53c1                                     ; $4c7d: $01 $c1 $53
	ret nz                                           ; $4c80: $c0

	inc d                                            ; $4c81: $14
	db $e3                                           ; $4c82: $e3
	nop                                              ; $4c83: $00
	ld b, c                                          ; $4c84: $41
	ret nz                                           ; $4c85: $c0

	add hl, bc                                       ; $4c86: $09
	db $e3                                           ; $4c87: $e3
	nop                                              ; $4c88: $00
	ld b, $c0                                        ; $4c89: $06 $c0
	xor b                                            ; $4c8b: $a8
	pop de                                           ; $4c8c: $d1
	add c                                            ; $4c8d: $81
	ret nz                                           ; $4c8e: $c0

	dec de                                           ; $4c8f: $1b
	pop de                                           ; $4c90: $d1
	ld [bc], a                                       ; $4c91: $02
	ret nc                                           ; $4c92: $d0

	pop de                                           ; $4c93: $d1
	inc bc                                           ; $4c94: $03
	ret nz                                           ; $4c95: $c0

	xor e                                            ; $4c96: $ab
	jp nc, $0300                                     ; $4c97: $d2 $00 $03

	ret nz                                           ; $4c9a: $c0

	xor e                                            ; $4c9b: $ab
	pop de                                           ; $4c9c: $d1
	ret nz                                           ; $4c9d: $c0

	and l                                            ; $4c9e: $a5
	and b                                            ; $4c9f: $a0
	add b                                            ; $4ca0: $80
	and b                                            ; $4ca1: $a0
	inc b                                            ; $4ca2: $04
	nop                                              ; $4ca3: $00
	inc c                                            ; $4ca4: $0c
	ret nz                                           ; $4ca5: $c0

	ld bc, $03a0                                     ; $4ca6: $01 $a0 $03
	nop                                              ; $4ca9: $00
	ld a, c                                          ; $4caa: $79
	ret nz                                           ; $4cab: $c0

	ld bc, $01a0                                     ; $4cac: $01 $a0 $01
	nop                                              ; $4caf: $00
	add hl, bc                                       ; $4cb0: $09
	rst $38                                          ; $4cb1: $ff
	db $10                                           ; $4cb2: $10
	ret nz                                           ; $4cb3: $c0

	ld bc, $03a0                                     ; $4cb4: $01 $a0 $03
	nop                                              ; $4cb7: $00
	ld a, a                                          ; $4cb8: $7f
	ret nz                                           ; $4cb9: $c0

	ld bc, $01a0                                     ; $4cba: $01 $a0 $01
	nop                                              ; $4cbd: $00
	adc b                                            ; $4cbe: $88
	ld b, b                                          ; $4cbf: $40
	add b                                            ; $4cc0: $80
	and b                                            ; $4cc1: $a0
	inc b                                            ; $4cc2: $04
	db $e4                                           ; $4cc3: $e4
	ld [bc], a                                       ; $4cc4: $02
	di                                               ; $4cc5: $f3
	add hl, bc                                       ; $4cc6: $09
	ld c, [hl]                                       ; $4cc7: $4e
	ret nz                                           ; $4cc8: $c0

	ld bc, $01a0                                     ; $4cc9: $01 $a0 $01
	nop                                              ; $4ccc: $00
	ld bc, $53c1                                     ; $4ccd: $01 $c1 $53
	ret nz                                           ; $4cd0: $c0

	inc d                                            ; $4cd1: $14
	db $e3                                           ; $4cd2: $e3
	nop                                              ; $4cd3: $00
	ld c, d                                          ; $4cd4: $4a
	ret nz                                           ; $4cd5: $c0

	add hl, bc                                       ; $4cd6: $09
	db $e3                                           ; $4cd7: $e3
	nop                                              ; $4cd8: $00
	dec b                                            ; $4cd9: $05
	ret nz                                           ; $4cda: $c0

	xor b                                            ; $4cdb: $a8
	jp nc, $c081                                     ; $4cdc: $d2 $81 $c0

	dec de                                           ; $4cdf: $1b
	jp nc, $d002                                     ; $4ce0: $d2 $02 $d0

	pop de                                           ; $4ce3: $d1
	inc bc                                           ; $4ce4: $03
	ret nz                                           ; $4ce5: $c0

	xor e                                            ; $4ce6: $ab
	jp nc, $0300                                     ; $4ce7: $d2 $00 $03

	ret nz                                           ; $4cea: $c0

	xor e                                            ; $4ceb: $ab
	pop de                                           ; $4cec: $d1
	ret nz                                           ; $4ced: $c0

	and l                                            ; $4cee: $a5
	and b                                            ; $4cef: $a0
	add b                                            ; $4cf0: $80
	and b                                            ; $4cf1: $a0
	dec b                                            ; $4cf2: $05
	nop                                              ; $4cf3: $00
	inc c                                            ; $4cf4: $0c
	ret nz                                           ; $4cf5: $c0

	ld bc, $04a0                                     ; $4cf6: $01 $a0 $04
	nop                                              ; $4cf9: $00
	adc h                                            ; $4cfa: $8c
	ret nz                                           ; $4cfb: $c0

	ld bc, $01a0                                     ; $4cfc: $01 $a0 $01
	nop                                              ; $4cff: $00
	add hl, bc                                       ; $4d00: $09
	rst $38                                          ; $4d01: $ff
	db $10                                           ; $4d02: $10
	ret nz                                           ; $4d03: $c0

	ld bc, $04a0                                     ; $4d04: $01 $a0 $04
	nop                                              ; $4d07: $00
	sub c                                            ; $4d08: $91
	ret nz                                           ; $4d09: $c0

	ld bc, $01a0                                     ; $4d0a: $01 $a0 $01
	nop                                              ; $4d0d: $00
	sbc l                                            ; $4d0e: $9d
	ld b, b                                          ; $4d0f: $40
	add b                                            ; $4d10: $80
	and b                                            ; $4d11: $a0
	dec b                                            ; $4d12: $05
	db $e4                                           ; $4d13: $e4
	ld [bc], a                                       ; $4d14: $02
	and e                                            ; $4d15: $a3
	add hl, bc                                       ; $4d16: $09
	ld e, c                                          ; $4d17: $59
	ret nz                                           ; $4d18: $c0

	ld bc, $01a0                                     ; $4d19: $01 $a0 $01
	nop                                              ; $4d1c: $00
	ld bc, $53c1                                     ; $4d1d: $01 $c1 $53
	ret nz                                           ; $4d20: $c0

	inc d                                            ; $4d21: $14
	db $e3                                           ; $4d22: $e3
	nop                                              ; $4d23: $00
	dec a                                            ; $4d24: $3d
	ret nz                                           ; $4d25: $c0

	add hl, bc                                       ; $4d26: $09
	db $e3                                           ; $4d27: $e3
	nop                                              ; $4d28: $00
	inc b                                            ; $4d29: $04
	ret nz                                           ; $4d2a: $c0

	xor b                                            ; $4d2b: $a8
	db $d3                                           ; $4d2c: $d3
	add c                                            ; $4d2d: $81
	ret nz                                           ; $4d2e: $c0

	dec de                                           ; $4d2f: $1b
	db $d3                                           ; $4d30: $d3
	ld [bc], a                                       ; $4d31: $02
	ret nc                                           ; $4d32: $d0

	pop de                                           ; $4d33: $d1
	inc bc                                           ; $4d34: $03
	ret nz                                           ; $4d35: $c0

	xor e                                            ; $4d36: $ab
	jp nc, $0300                                     ; $4d37: $d2 $00 $03

	ret nz                                           ; $4d3a: $c0

	xor e                                            ; $4d3b: $ab
	pop de                                           ; $4d3c: $d1
	ret nz                                           ; $4d3d: $c0

	and l                                            ; $4d3e: $a5
	and b                                            ; $4d3f: $a0
	add b                                            ; $4d40: $80
	and b                                            ; $4d41: $a0
	ld b, $00                                        ; $4d42: $06 $00
	rla                                              ; $4d44: $17
	pop bc                                           ; $4d45: $c1
	or d                                             ; $4d46: $b2
	db $e3                                           ; $4d47: $e3
	nop                                              ; $4d48: $00
	ccf                                              ; $4d49: $3f
	ret nz                                           ; $4d4a: $c0

	ld bc, $05a0                                     ; $4d4b: $01 $a0 $05
	nop                                              ; $4d4e: $00
	and d                                            ; $4d4f: $a2
	ret nz                                           ; $4d50: $c0

	ld bc, $05a0                                     ; $4d51: $01 $a0 $05
	nop                                              ; $4d54: $00
	xor b                                            ; $4d55: $a8
	ret nz                                           ; $4d56: $c0

	ld bc, $01a0                                     ; $4d57: $01 $a0 $01
	nop                                              ; $4d5a: $00
	add hl, bc                                       ; $4d5b: $09
	rst $38                                          ; $4d5c: $ff
	db $10                                           ; $4d5d: $10
	ret nz                                           ; $4d5e: $c0

	ld bc, $05a0                                     ; $4d5f: $01 $a0 $05
	nop                                              ; $4d62: $00
	xor l                                            ; $4d63: $ad
	ret nz                                           ; $4d64: $c0

	ld bc, $01a0                                     ; $4d65: $01 $a0 $01
	nop                                              ; $4d68: $00
	add hl, sp                                       ; $4d69: $39
	ld b, b                                          ; $4d6a: $40
	add b                                            ; $4d6b: $80
	and b                                            ; $4d6c: $a0
	ld b, $e4                                        ; $4d6d: $06 $e4
	ld [bc], a                                       ; $4d6f: $02
	ld c, b                                          ; $4d70: $48
	add hl, bc                                       ; $4d71: $09
	ld d, h                                          ; $4d72: $54
	ret nz                                           ; $4d73: $c0

	ld bc, $01a0                                     ; $4d74: $01 $a0 $01
	nop                                              ; $4d77: $00
	ld bc, $53c1                                     ; $4d78: $01 $c1 $53
	ret nz                                           ; $4d7b: $c0

	inc d                                            ; $4d7c: $14
	db $e3                                           ; $4d7d: $e3
	nop                                              ; $4d7e: $00
	inc a                                            ; $4d7f: $3c
	ret nz                                           ; $4d80: $c0

	add hl, bc                                       ; $4d81: $09
	db $e3                                           ; $4d82: $e3
	nop                                              ; $4d83: $00
	ld bc, $a8c0                                     ; $4d84: $01 $c0 $a8
	ret c                                            ; $4d87: $d8

	add c                                            ; $4d88: $81
	ret nz                                           ; $4d89: $c0

	dec de                                           ; $4d8a: $1b
	ret c                                            ; $4d8b: $d8

	ld [bc], a                                       ; $4d8c: $02
	ret nc                                           ; $4d8d: $d0

	pop de                                           ; $4d8e: $d1
	inc bc                                           ; $4d8f: $03
	ret nz                                           ; $4d90: $c0

	xor e                                            ; $4d91: $ab
	jp nc, $0300                                     ; $4d92: $d2 $00 $03

	ret nz                                           ; $4d95: $c0

	xor e                                            ; $4d96: $ab
	pop de                                           ; $4d97: $d1
	ret nz                                           ; $4d98: $c0

	and l                                            ; $4d99: $a5
	and b                                            ; $4d9a: $a0
	add b                                            ; $4d9b: $80
	and b                                            ; $4d9c: $a0
	rlca                                             ; $4d9d: $07
	nop                                              ; $4d9e: $00
	ld [de], a                                       ; $4d9f: $12
	ret nz                                           ; $4da0: $c0

	ld bc, $09a0                                     ; $4da1: $01 $a0 $09
	nop                                              ; $4da4: $00
	or d                                             ; $4da5: $b2
	ret nz                                           ; $4da6: $c0

	ld bc, $01a0                                     ; $4da7: $01 $a0 $01
	nop                                              ; $4daa: $00
	cp c                                             ; $4dab: $b9
	ret nz                                           ; $4dac: $c0

	ld bc, $09a0                                     ; $4dad: $01 $a0 $09
	nop                                              ; $4db0: $00
	cp a                                             ; $4db1: $bf
	rst $38                                          ; $4db2: $ff
	db $10                                           ; $4db3: $10
	ret nz                                           ; $4db4: $c0

	ld bc, $09a0                                     ; $4db5: $01 $a0 $09
	nop                                              ; $4db8: $00
	add $c0                                          ; $4db9: $c6 $c0
	ld bc, $01a0                                     ; $4dbb: $01 $a0 $01
	nop                                              ; $4dbe: $00
	adc $40                                          ; $4dbf: $ce $40
	add b                                            ; $4dc1: $80
	and b                                            ; $4dc2: $a0
	rlca                                             ; $4dc3: $07
	db $e4                                           ; $4dc4: $e4
	ld bc, $09f2                                     ; $4dc5: $01 $f2 $09
	ld c, [hl]                                       ; $4dc8: $4e
	ret nz                                           ; $4dc9: $c0

	ld bc, $01a0                                     ; $4dca: $01 $a0 $01
	nop                                              ; $4dcd: $00
	ld bc, $53c1                                     ; $4dce: $01 $c1 $53
	ret nz                                           ; $4dd1: $c0

	inc d                                            ; $4dd2: $14
	db $e3                                           ; $4dd3: $e3
	nop                                              ; $4dd4: $00
	inc a                                            ; $4dd5: $3c
	ret nz                                           ; $4dd6: $c0

	add hl, bc                                       ; $4dd7: $09
	db $e3                                           ; $4dd8: $e3
	nop                                              ; $4dd9: $00
	inc bc                                           ; $4dda: $03
	ret nz                                           ; $4ddb: $c0

	xor b                                            ; $4ddc: $a8
	rst SubAFromHL                                          ; $4ddd: $d7
	add c                                            ; $4dde: $81
	ret nz                                           ; $4ddf: $c0

	dec de                                           ; $4de0: $1b
	rst SubAFromHL                                          ; $4de1: $d7
	ld [bc], a                                       ; $4de2: $02
	ret nc                                           ; $4de3: $d0

	pop de                                           ; $4de4: $d1
	inc bc                                           ; $4de5: $03
	ret nz                                           ; $4de6: $c0

	xor e                                            ; $4de7: $ab
	jp nc, $0300                                     ; $4de8: $d2 $00 $03

	ret nz                                           ; $4deb: $c0

	xor e                                            ; $4dec: $ab
	pop de                                           ; $4ded: $d1
	ret nz                                           ; $4dee: $c0

	and l                                            ; $4def: $a5
	and b                                            ; $4df0: $a0
	add b                                            ; $4df1: $80
	and b                                            ; $4df2: $a0
	ld [$0c00], sp                                   ; $4df3: $08 $00 $0c
	ret nz                                           ; $4df6: $c0

	ld bc, $08a0                                     ; $4df7: $01 $a0 $08
	nop                                              ; $4dfa: $00
	push de                                          ; $4dfb: $d5
	ret nz                                           ; $4dfc: $c0

	ld bc, $01a0                                     ; $4dfd: $01 $a0 $01
	nop                                              ; $4e00: $00
	ldh [rIE], a                                     ; $4e01: $e0 $ff
	db $10                                           ; $4e03: $10
	ret nz                                           ; $4e04: $c0

	ld bc, $08a0                                     ; $4e05: $01 $a0 $08
	nop                                              ; $4e08: $00
	push hl                                          ; $4e09: $e5
	ret nz                                           ; $4e0a: $c0

	ld bc, $01a0                                     ; $4e0b: $01 $a0 $01
	nop                                              ; $4e0e: $00
	db $f4                                           ; $4e0f: $f4
	ld b, b                                          ; $4e10: $40
	add b                                            ; $4e11: $80
	and b                                            ; $4e12: $a0
	ld [$01e4], sp                                   ; $4e13: $08 $e4 $01
	and d                                            ; $4e16: $a2
	add hl, bc                                       ; $4e17: $09
	dec a                                            ; $4e18: $3d
	ret nz                                           ; $4e19: $c0

	ld bc, $01a0                                     ; $4e1a: $01 $a0 $01
	nop                                              ; $4e1d: $00
	ld bc, $53c1                                     ; $4e1e: $01 $c1 $53
	ret nz                                           ; $4e21: $c0

	inc d                                            ; $4e22: $14
	db $e3                                           ; $4e23: $e3
	nop                                              ; $4e24: $00
	inc a                                            ; $4e25: $3c
	ret nz                                           ; $4e26: $c0

	add hl, bc                                       ; $4e27: $09
	db $e3                                           ; $4e28: $e3
	nop                                              ; $4e29: $00
	rlca                                             ; $4e2a: $07
	pop hl                                           ; $4e2b: $e1
	ld [bc], a                                       ; $4e2c: $02
	ld [bc], a                                       ; $4e2d: $02
	ld [hl], b                                       ; $4e2e: $70
	and b                                            ; $4e2f: $a0
	add b                                            ; $4e30: $80
	and b                                            ; $4e31: $a0
	add hl, bc                                       ; $4e32: $09
	nop                                              ; $4e33: $00
	inc c                                            ; $4e34: $0c
	ret nz                                           ; $4e35: $c0

	ld bc, $0aa0                                     ; $4e36: $01 $a0 $0a
	nop                                              ; $4e39: $00
	db $fc                                           ; $4e3a: $fc
	ret nz                                           ; $4e3b: $c0

	ld bc, $01a0                                     ; $4e3c: $01 $a0 $01
	ld bc, $ff02                                     ; $4e3f: $01 $02 $ff
	db $10                                           ; $4e42: $10
	ret nz                                           ; $4e43: $c0

	ld bc, $0aa0                                     ; $4e44: $01 $a0 $0a
	ld bc, $c00c                                     ; $4e47: $01 $0c $c0
	ld bc, $01a0                                     ; $4e4a: $01 $a0 $01
	nop                                              ; $4e4d: $00
	ld e, e                                          ; $4e4e: $5b
	ld b, b                                          ; $4e4f: $40
	add b                                            ; $4e50: $80
	and b                                            ; $4e51: $a0
	add hl, bc                                       ; $4e52: $09
	db $e4                                           ; $4e53: $e4
	ld bc, $0963                                     ; $4e54: $01 $63 $09
	dec sp                                           ; $4e57: $3b
	ret nz                                           ; $4e58: $c0

	ld bc, $01a0                                     ; $4e59: $01 $a0 $01
	nop                                              ; $4e5c: $00
	ld bc, $53c1                                     ; $4e5d: $01 $c1 $53
	ret nz                                           ; $4e60: $c0

	inc d                                            ; $4e61: $14
	db $e3                                           ; $4e62: $e3
	nop                                              ; $4e63: $00
	ld b, h                                          ; $4e64: $44
	ldh [rP1], a                                     ; $4e65: $e0 $00
	dec l                                            ; $4e67: $2d
	and b                                            ; $4e68: $a0
	add b                                            ; $4e69: $80
	and b                                            ; $4e6a: $a0
	ld a, [bc]                                       ; $4e6b: $0a
	nop                                              ; $4e6c: $00
	ld c, $c0                                        ; $4e6d: $0e $c0
	ld bc, $02a0                                     ; $4e6f: $01 $a0 $02
	ld bc, $c015                                     ; $4e72: $01 $15 $c0
	ld bc, $01a0                                     ; $4e75: $01 $a0 $01
	nop                                              ; $4e78: $00
	add hl, bc                                       ; $4e79: $09
	pop bc                                           ; $4e7a: $c1
	ld e, e                                          ; $4e7b: $5b
	rst $38                                          ; $4e7c: $ff
	ld [de], a                                       ; $4e7d: $12
	ret nz                                           ; $4e7e: $c0

	ld bc, $02a0                                     ; $4e7f: $01 $a0 $02
	ld bc, $c01c                                     ; $4e82: $01 $1c $c0
	ld bc, $01a0                                     ; $4e85: $01 $a0 $01
	ld bc, $c122                                     ; $4e88: $01 $22 $c1
	ld e, e                                          ; $4e8b: $5b
	ld b, b                                          ; $4e8c: $40
	add b                                            ; $4e8d: $80
	and b                                            ; $4e8e: $a0
	ld a, [bc]                                       ; $4e8f: $0a
	db $e4                                           ; $4e90: $e4
	ld bc, $1a26                                     ; $4e91: $01 $26 $1a
	ret nz                                           ; $4e94: $c0

	add hl, bc                                       ; $4e95: $09
	db $e3                                           ; $4e96: $e3
	nop                                              ; $4e97: $00
	ld c, d                                          ; $4e98: $4a
	ret nz                                           ; $4e99: $c0

	xor d                                            ; $4e9a: $aa
	ret nc                                           ; $4e9b: $d0

	add c                                            ; $4e9c: $81
	ret nz                                           ; $4e9d: $c0

	dec de                                           ; $4e9e: $1b
	ret nc                                           ; $4e9f: $d0

	ld [bc], a                                       ; $4ea0: $02
	ret nc                                           ; $4ea1: $d0

	pop de                                           ; $4ea2: $d1
	inc bc                                           ; $4ea3: $03
	ret nz                                           ; $4ea4: $c0

	xor e                                            ; $4ea5: $ab
	jp nc, $0300                                     ; $4ea6: $d2 $00 $03

	ret nz                                           ; $4ea9: $c0

	xor e                                            ; $4eaa: $ab
	pop de                                           ; $4eab: $d1
	ret nz                                           ; $4eac: $c0

	and l                                            ; $4ead: $a5
	add hl, bc                                       ; $4eae: $09
	dec sp                                           ; $4eaf: $3b
	ret nz                                           ; $4eb0: $c0

	ld bc, $01a0                                     ; $4eb1: $01 $a0 $01
	nop                                              ; $4eb4: $00
	ld bc, $53c1                                     ; $4eb5: $01 $c1 $53
	ret nz                                           ; $4eb8: $c0

	inc d                                            ; $4eb9: $14
	db $e3                                           ; $4eba: $e3
	nop                                              ; $4ebb: $00
	ld b, b                                          ; $4ebc: $40
	ldh [rP1], a                                     ; $4ebd: $e0 $00
	dec l                                            ; $4ebf: $2d
	and b                                            ; $4ec0: $a0
	add b                                            ; $4ec1: $80
	and b                                            ; $4ec2: $a0
	dec bc                                           ; $4ec3: $0b
	nop                                              ; $4ec4: $00
	ld c, $c0                                        ; $4ec5: $0e $c0
	ld bc, $03a0                                     ; $4ec7: $01 $a0 $03
	ld bc, $c027                                     ; $4eca: $01 $27 $c0
	ld bc, $01a0                                     ; $4ecd: $01 $a0 $01
	ld bc, $c131                                     ; $4ed0: $01 $31 $c1
	ld e, e                                          ; $4ed3: $5b
	rst $38                                          ; $4ed4: $ff
	ld [de], a                                       ; $4ed5: $12
	ret nz                                           ; $4ed6: $c0

	ld bc, $03a0                                     ; $4ed7: $01 $a0 $03
	ld bc, $c038                                     ; $4eda: $01 $38 $c0
	ld bc, $01a0                                     ; $4edd: $01 $a0 $01
	nop                                              ; $4ee0: $00
	ldh [$c1], a                                     ; $4ee1: $e0 $c1
	ld e, e                                          ; $4ee3: $5b
	ld b, b                                          ; $4ee4: $40
	add b                                            ; $4ee5: $80
	and b                                            ; $4ee6: $a0
	dec bc                                           ; $4ee7: $0b
	db $e4                                           ; $4ee8: $e4
	nop                                              ; $4ee9: $00
	adc $1a                                          ; $4eea: $ce $1a
	ret nz                                           ; $4eec: $c0

	add hl, bc                                       ; $4eed: $09
	db $e3                                           ; $4eee: $e3
	nop                                              ; $4eef: $00
	ld b, $c0                                        ; $4ef0: $06 $c0
	xor b                                            ; $4ef2: $a8
	pop de                                           ; $4ef3: $d1
	add c                                            ; $4ef4: $81
	ret nz                                           ; $4ef5: $c0

	dec de                                           ; $4ef6: $1b
	pop de                                           ; $4ef7: $d1
	ld [bc], a                                       ; $4ef8: $02
	ret nc                                           ; $4ef9: $d0

	pop de                                           ; $4efa: $d1
	inc bc                                           ; $4efb: $03
	ret nz                                           ; $4efc: $c0

	xor e                                            ; $4efd: $ab
	jp nc, $0300                                     ; $4efe: $d2 $00 $03

	ret nz                                           ; $4f01: $c0

	xor e                                            ; $4f02: $ab
	pop de                                           ; $4f03: $d1
	ret nz                                           ; $4f04: $c0

	and l                                            ; $4f05: $a5
	add hl, bc                                       ; $4f06: $09
	ld d, d                                          ; $4f07: $52
	ret nz                                           ; $4f08: $c0

	ld bc, $01a0                                     ; $4f09: $01 $a0 $01
	nop                                              ; $4f0c: $00
	ld bc, $53c1                                     ; $4f0d: $01 $c1 $53
	ret nz                                           ; $4f10: $c0

	inc d                                            ; $4f11: $14
	db $e3                                           ; $4f12: $e3
	nop                                              ; $4f13: $00
	ld b, d                                          ; $4f14: $42
	ret nz                                           ; $4f15: $c0

	add hl, bc                                       ; $4f16: $09
	db $e3                                           ; $4f17: $e3
	nop                                              ; $4f18: $00
	dec b                                            ; $4f19: $05
	ret nz                                           ; $4f1a: $c0

	xor d                                            ; $4f1b: $aa
	jp nc, $c081                                     ; $4f1c: $d2 $81 $c0

	dec de                                           ; $4f1f: $1b
	jp nc, $d002                                     ; $4f20: $d2 $02 $d0

	pop de                                           ; $4f23: $d1
	inc bc                                           ; $4f24: $03
	ret nz                                           ; $4f25: $c0

	xor e                                            ; $4f26: $ab
	jp nc, $0300                                     ; $4f27: $d2 $00 $03

	ret nz                                           ; $4f2a: $c0

	xor e                                            ; $4f2b: $ab
	pop de                                           ; $4f2c: $d1
	ret nz                                           ; $4f2d: $c0

	and l                                            ; $4f2e: $a5
	and b                                            ; $4f2f: $a0
	add b                                            ; $4f30: $80
	and b                                            ; $4f31: $a0
	inc c                                            ; $4f32: $0c
	nop                                              ; $4f33: $00
	ld c, $c0                                        ; $4f34: $0e $c0
	ld bc, $04a0                                     ; $4f36: $01 $a0 $04
	ld bc, $c045                                     ; $4f39: $01 $45 $c0
	ld bc, $01a0                                     ; $4f3c: $01 $a0 $01
	ld bc, $c14c                                     ; $4f3f: $01 $4c $c1
	ld e, e                                          ; $4f42: $5b
	rst $38                                          ; $4f43: $ff
	ld [de], a                                       ; $4f44: $12
	ret nz                                           ; $4f45: $c0

	ld bc, $04a0                                     ; $4f46: $01 $a0 $04
	ld bc, $c054                                     ; $4f49: $01 $54 $c0
	ld bc, $01a0                                     ; $4f4c: $01 $a0 $01
	ld bc, $c15e                                     ; $4f4f: $01 $5e $c1
	ld e, e                                          ; $4f52: $5b
	ld b, b                                          ; $4f53: $40
	add b                                            ; $4f54: $80
	and b                                            ; $4f55: $a0
	inc c                                            ; $4f56: $0c
	db $e4                                           ; $4f57: $e4
	nop                                              ; $4f58: $00
	ld e, a                                          ; $4f59: $5f
	add hl, bc                                       ; $4f5a: $09
	ld b, b                                          ; $4f5b: $40
	ret nz                                           ; $4f5c: $c0

	ld bc, $01a0                                     ; $4f5d: $01 $a0 $01
	nop                                              ; $4f60: $00
	ld bc, $53c1                                     ; $4f61: $01 $c1 $53
	ret nz                                           ; $4f64: $c0

	inc d                                            ; $4f65: $14
	db $e3                                           ; $4f66: $e3
	nop                                              ; $4f67: $00
	ld b, e                                          ; $4f68: $43
	ldh [rP1], a                                     ; $4f69: $e0 $00
	ld [hl-], a                                      ; $4f6b: $32
	and b                                            ; $4f6c: $a0
	add b                                            ; $4f6d: $80
	and b                                            ; $4f6e: $a0
	dec c                                            ; $4f6f: $0d
	nop                                              ; $4f70: $00
	inc de                                           ; $4f71: $13
	pop bc                                           ; $4f72: $c1
	or d                                             ; $4f73: $b2
	db $e3                                           ; $4f74: $e3
	nop                                              ; $4f75: $00
	ccf                                              ; $4f76: $3f
	ret nz                                           ; $4f77: $c0

	ld bc, $05a0                                     ; $4f78: $01 $a0 $05
	ld bc, $c06e                                     ; $4f7b: $01 $6e $c0
	ld bc, $01a0                                     ; $4f7e: $01 $a0 $01
	ld bc, $c174                                     ; $4f81: $01 $74 $c1
	ld e, e                                          ; $4f84: $5b
	rst $38                                          ; $4f85: $ff
	ld [de], a                                       ; $4f86: $12
	ret nz                                           ; $4f87: $c0

	ld bc, $05a0                                     ; $4f88: $01 $a0 $05
	ld bc, $c07d                                     ; $4f8b: $01 $7d $c0
	ld bc, $01a0                                     ; $4f8e: $01 $a0 $01
	ld bc, $c122                                     ; $4f91: $01 $22 $c1
	ld e, e                                          ; $4f94: $5b
	ld b, b                                          ; $4f95: $40
	add b                                            ; $4f96: $80
	and b                                            ; $4f97: $a0
	dec c                                            ; $4f98: $0d
	db $e4                                           ; $4f99: $e4
	nop                                              ; $4f9a: $00
	dec e                                            ; $4f9b: $1d
	ld a, [de]                                       ; $4f9c: $1a
	ret nz                                           ; $4f9d: $c0

	add hl, bc                                       ; $4f9e: $09
	db $e3                                           ; $4f9f: $e3
	nop                                              ; $4fa0: $00
	inc b                                            ; $4fa1: $04
	ret nz                                           ; $4fa2: $c0

	xor d                                            ; $4fa3: $aa
	db $d3                                           ; $4fa4: $d3
	add c                                            ; $4fa5: $81
	ret nz                                           ; $4fa6: $c0

	dec de                                           ; $4fa7: $1b
	db $d3                                           ; $4fa8: $d3
	ld [bc], a                                       ; $4fa9: $02
	ret nc                                           ; $4faa: $d0

	pop de                                           ; $4fab: $d1
	inc bc                                           ; $4fac: $03
	ret nz                                           ; $4fad: $c0

	xor e                                            ; $4fae: $ab
	jp nc, $0300                                     ; $4faf: $d2 $00 $03

	ret nz                                           ; $4fb2: $c0

	xor e                                            ; $4fb3: $ab
	pop de                                           ; $4fb4: $d1
	ret nz                                           ; $4fb5: $c0

	and l                                            ; $4fb6: $a5
	add hl, bc                                       ; $4fb7: $09
	ld d, $c0                                        ; $4fb8: $16 $c0
	set 0, c                                         ; $4fba: $cb $c1
	ld e, e                                          ; $4fbc: $5b
	add c                                            ; $4fbd: $81
	adc e                                            ; $4fbe: $8b
	ld bc, $0266                                     ; $4fbf: $01 $66 $02
	or b                                             ; $4fc2: $b0
	ld bc, $e504                                     ; $4fc3: $01 $04 $e5
	ld bc, $b119                                     ; $4fc6: $01 $19 $b1
	nop                                              ; $4fc9: $00
	inc b                                            ; $4fca: $04
	push hl                                          ; $4fcb: $e5
	ld bc, $6015                                     ; $4fcc: $01 $15 $60
	ld a, [$0907]                                    ; $4fcf: $fa $07 $09
	ld l, [hl]                                       ; $4fd2: $6e
	ei                                               ; $4fd3: $fb
	db $fc                                           ; $4fd4: $fc
	ret nz                                           ; $4fd5: $c0

	ld h, h                                          ; $4fd6: $64
	ldh [$61], a                                     ; $4fd7: $e0 $61
	ld h, e                                          ; $4fd9: $63
	ld h, d                                          ; $4fda: $62
	cp $1a                                           ; $4fdb: $fe $1a
	rst $38                                          ; $4fdd: $ff
	inc d                                            ; $4fde: $14
	cp $08                                           ; $4fdf: $fe $08
	db $fc                                           ; $4fe1: $fc
	ret nz                                           ; $4fe2: $c0

	ld h, l                                          ; $4fe3: $65
	call nc, $c0fb                                   ; $4fe4: $d4 $fb $c0
	ld h, [hl]                                       ; $4fe7: $66
	jp c, $08fe                                      ; $4fe8: $da $fe $08

	db $fc                                           ; $4feb: $fc
	ret nz                                           ; $4fec: $c0

	ld h, l                                          ; $4fed: $65
	push de                                          ; $4fee: $d5
	ld hl, sp-$40                                    ; $4fef: $f8 $c0
	ld h, [hl]                                       ; $4ff1: $66
	jp c, $80f1                                      ; $4ff2: $da $f1 $80

	ld [bc], a                                       ; $4ff5: $02
	call nc, $b00c                                   ; $4ff6: $d4 $0c $b0
	ld a, a                                          ; $4ff9: $7f
	rlca                                             ; $4ffa: $07
	nop                                              ; $4ffb: $00
	add b                                            ; $4ffc: $80
	ld [bc], a                                       ; $4ffd: $02
	call nc, $00e0                                   ; $4ffe: $d4 $e0 $00
	ld b, c                                          ; $5001: $41
	rst $38                                          ; $5002: $ff
	nop                                              ; $5003: $00
	cp $0c                                           ; $5004: $fe $0c
	db $fc                                           ; $5006: $fc
	ret nz                                           ; $5007: $c0

	ld h, l                                          ; $5008: $65
	push de                                          ; $5009: $d5
	ei                                               ; $500a: $fb
	ret nz                                           ; $500b: $c0

	ld h, [hl]                                       ; $500c: $66
	jp c, $80f1                                      ; $500d: $da $f1 $80

	ld [bc], a                                       ; $5010: $02
	call nc, $b00c                                   ; $5011: $d4 $0c $b0
	ld a, a                                          ; $5014: $7f
	rlca                                             ; $5015: $07
	nop                                              ; $5016: $00
	add b                                            ; $5017: $80
	ld [bc], a                                       ; $5018: $02
	push de                                          ; $5019: $d5
	ldh [rP1], a                                     ; $501a: $e0 $00
	ld h, $ff                                        ; $501c: $26 $ff
	nop                                              ; $501e: $00
	cp $0e                                           ; $501f: $fe $0e
	rst $38                                          ; $5021: $ff
	ld [$c0fc], sp                                   ; $5022: $08 $fc $c0
	ld h, l                                          ; $5025: $65
	jp c, $c0fc                                      ; $5026: $da $fc $c0

	ld h, l                                          ; $5029: $65
	db $db                                           ; $502a: $db
	pop af                                           ; $502b: $f1
	add b                                            ; $502c: $80
	ld [bc], a                                       ; $502d: $02
	sub $0c                                          ; $502e: $d6 $0c
	or b                                             ; $5030: $b0
	ld a, a                                          ; $5031: $7f
	rlca                                             ; $5032: $07
	nop                                              ; $5033: $00
	add b                                            ; $5034: $80
	ld [bc], a                                       ; $5035: $02
	sub $e0                                          ; $5036: $d6 $e0
	nop                                              ; $5038: $00
	add hl, bc                                       ; $5039: $09
	rst $38                                          ; $503a: $ff
	nop                                              ; $503b: $00
	nop                                              ; $503c: $00
	push hl                                          ; $503d: $e5
	ld bc, $cb19                                     ; $503e: $01 $19 $cb
	ld b, [hl]                                       ; $5041: $46
	ret nc                                           ; $5042: $d0

	add e                                            ; $5043: $83
	and b                                            ; $5044: $a0
	nop                                              ; $5045: $00
	pop bc                                           ; $5046: $c1
	ld l, d                                          ; $5047: $6a
	ei                                               ; $5048: $fb
	db $fd                                           ; $5049: $fd
	add e                                            ; $504a: $83
	and b                                            ; $504b: $a0
	nop                                              ; $504c: $00
	ret nc                                           ; $504d: $d0

	add hl, sp                                       ; $504e: $39
	pop hl                                           ; $504f: $e1
	ld c, b                                          ; $5050: $48
	dec e                                            ; $5051: $1d
	ld d, d                                          ; $5052: $52
	or b                                             ; $5053: $b0
	ld a, a                                          ; $5054: $7f
	add hl, bc                                       ; $5055: $09
	ret nc                                           ; $5056: $d0

	adc e                                            ; $5057: $8b
	and b                                            ; $5058: $a0
	inc b                                            ; $5059: $04
	or b                                             ; $505a: $b0
	sub c                                            ; $505b: $91
	ldh [rP1], a                                     ; $505c: $e0 $00
	dec hl                                           ; $505e: $2b
	rst $38                                          ; $505f: $ff
	add hl, bc                                       ; $5060: $09
	ret nc                                           ; $5061: $d0

	adc e                                            ; $5062: $8b
	and b                                            ; $5063: $a0
	inc b                                            ; $5064: $04
	or b                                             ; $5065: $b0
	ld a, [de]                                       ; $5066: $1a
	ldh [rP1], a                                     ; $5067: $e0 $00
	ld b, d                                          ; $5069: $42
	add e                                            ; $506a: $83
	add e                                            ; $506b: $83
	and b                                            ; $506c: $a0
	nop                                              ; $506d: $00
	ld bc, $03d1                                     ; $506e: $01 $d1 $03
	ldh [rP1], a                                     ; $5071: $e0 $00
	ld a, a                                          ; $5073: $7f
	ld bc, $03d3                                     ; $5074: $01 $d3 $03
	ldh [rP1], a                                     ; $5077: $e0 $00
	xor h                                            ; $5079: $ac
	ld bc, $03d7                                     ; $507a: $01 $d7 $03
	ldh [rP1], a                                     ; $507d: $e0 $00
	reti                                             ; $507f: $d9


	ld bc, $03d8                                     ; $5080: $01 $d8 $03
	ldh [rSB], a                                     ; $5083: $e0 $01
	dec bc                                           ; $5085: $0b
	ret nz                                           ; $5086: $c0

	sla c                                            ; $5087: $cb $21
	ret nz                                           ; $5089: $c0

	add hl, bc                                       ; $508a: $09
	db $e3                                           ; $508b: $e3
	nop                                              ; $508c: $00
	ld l, d                                          ; $508d: $6a
	pop hl                                           ; $508e: $e1
	ld [bc], a                                       ; $508f: $02
	ld [bc], a                                       ; $5090: $02
	call z, $01c0                                    ; $5091: $cc $c0 $01
	and b                                            ; $5094: $a0
	rlca                                             ; $5095: $07
	nop                                              ; $5096: $00
	ld bc, $01c0                                     ; $5097: $01 $c0 $01
	and b                                            ; $509a: $a0
	ld bc, $0b00                                     ; $509b: $01 $00 $0b
	ret nz                                           ; $509e: $c0

	ld bc, $07a0                                     ; $509f: $01 $a0 $07
	nop                                              ; $50a2: $00
	ld [de], a                                       ; $50a3: $12
	ret nz                                           ; $50a4: $c0

	ld bc, $01a0                                     ; $50a5: $01 $a0 $01
	nop                                              ; $50a8: $00
	jr nz, jr_087_50f1                               ; $50a9: $20 $46

	ret nz                                           ; $50ab: $c0

	add hl, bc                                       ; $50ac: $09
	db $e3                                           ; $50ad: $e3
	nop                                              ; $50ae: $00
	ld d, a                                          ; $50af: $57
	pop hl                                           ; $50b0: $e1
	ld [bc], a                                       ; $50b1: $02
	ld [bc], a                                       ; $50b2: $02
	or d                                             ; $50b3: $b2
	ret nz                                           ; $50b4: $c0

	ld bc, $0ba0                                     ; $50b5: $01 $a0 $0b
	nop                                              ; $50b8: $00
	inc h                                            ; $50b9: $24
	ret nz                                           ; $50ba: $c0

	ld bc, $01a0                                     ; $50bb: $01 $a0 $01
	nop                                              ; $50be: $00
	jr z, jr_087_5121                                ; $50bf: $28 $60

	pop af                                           ; $50c1: $f1
	add b                                            ; $50c2: $80
	ld [bc], a                                       ; $50c3: $02
	rst SubAFromHL                                          ; $50c4: $d7
	ld b, $c0                                        ; $50c5: $06 $c0
	ld bc, $0ba0                                     ; $50c7: $01 $a0 $0b
	nop                                              ; $50ca: $00
	ld [hl-], a                                      ; $50cb: $32
	ld b, $c0                                        ; $50cc: $06 $c0
	ld bc, $0ba0                                     ; $50ce: $01 $a0 $0b
	nop                                              ; $50d1: $00
	ld b, a                                          ; $50d2: $47
	ret nz                                           ; $50d3: $c0

	ld bc, $01a0                                     ; $50d4: $01 $a0 $01
	nop                                              ; $50d7: $00
	ld e, c                                          ; $50d8: $59
	ret nz                                           ; $50d9: $c0

	ld bc, $0ba0                                     ; $50da: $01 $a0 $0b
	nop                                              ; $50dd: $00
	ld e, h                                          ; $50de: $5c
	ret nz                                           ; $50df: $c0

	ld bc, $01a0                                     ; $50e0: $01 $a0 $01
	nop                                              ; $50e3: $00
	ld a, b                                          ; $50e4: $78
	ret nz                                           ; $50e5: $c0

	ld bc, $0ba0                                     ; $50e6: $01 $a0 $0b
	nop                                              ; $50e9: $00
	ld a, a                                          ; $50ea: $7f
	ret nz                                           ; $50eb: $c0

	ld bc, $01a0                                     ; $50ec: $01 $a0 $01
	nop                                              ; $50ef: $00
	add d                                            ; $50f0: $82

jr_087_50f1:
	ld [hl-], a                                      ; $50f1: $32
	ldh [rP1], a                                     ; $50f2: $e0 $00
	jp c, $cbc0                                      ; $50f4: $da $c0 $cb

	pop bc                                           ; $50f7: $c1
	ld e, e                                          ; $50f8: $5b
	ret nz                                           ; $50f9: $c0

	rrca                                             ; $50fa: $0f
	db $e3                                           ; $50fb: $e3
	ld bc, $c01f                                     ; $50fc: $01 $1f $c0
	ld bc, $01a0                                     ; $50ff: $01 $a0 $01
	nop                                              ; $5102: $00
	adc [hl]                                         ; $5103: $8e
	ld h, b                                          ; $5104: $60
	db $fc                                           ; $5105: $fc
	adc e                                            ; $5106: $8b
	and b                                            ; $5107: $a0
	inc b                                            ; $5108: $04
	or b                                             ; $5109: $b0
	sub c                                            ; $510a: $91
	ld c, $c0                                        ; $510b: $0e $c0
	ld bc, $07a0                                     ; $510d: $01 $a0 $07
	nop                                              ; $5110: $00
	sub h                                            ; $5111: $94
	ret nz                                           ; $5112: $c0

	ld bc, $01a0                                     ; $5113: $01 $a0 $01
	nop                                              ; $5116: $00
	sbc h                                            ; $5117: $9c
	pop bc                                           ; $5118: $c1
	ld d, a                                          ; $5119: $57
	add hl, bc                                       ; $511a: $09
	ret nz                                           ; $511b: $c0

	ld bc, $0ba0                                     ; $511c: $01 $a0 $0b
	nop                                              ; $511f: $00
	and b                                            ; $5120: $a0

jr_087_5121:
	ldh [rSB], a                                     ; $5121: $e0 $01
	dec b                                            ; $5123: $05
	ld [hl-], a                                      ; $5124: $32
	ldh [rP1], a                                     ; $5125: $e0 $00
	and a                                            ; $5127: $a7
	ret nz                                           ; $5128: $c0

	set 0, c                                         ; $5129: $cb $c1
	ld e, e                                          ; $512b: $5b
	ret nz                                           ; $512c: $c0

	rrca                                             ; $512d: $0f
	db $e3                                           ; $512e: $e3
	ld bc, $c022                                     ; $512f: $01 $22 $c0
	ld bc, $01a0                                     ; $5132: $01 $a0 $01
	nop                                              ; $5135: $00
	adc [hl]                                         ; $5136: $8e
	ld h, b                                          ; $5137: $60
	db $fc                                           ; $5138: $fc
	adc e                                            ; $5139: $8b
	and b                                            ; $513a: $a0
	inc b                                            ; $513b: $04
	or b                                             ; $513c: $b0
	sub c                                            ; $513d: $91
	ld [$01c0], sp                                   ; $513e: $08 $c0 $01
	and b                                            ; $5141: $a0
	rlca                                             ; $5142: $07
	nop                                              ; $5143: $00
	or [hl]                                          ; $5144: $b6
	pop bc                                           ; $5145: $c1
	ld d, a                                          ; $5146: $57
	rrca                                             ; $5147: $0f
	ret nz                                           ; $5148: $c0

	ld bc, $0ba0                                     ; $5149: $01 $a0 $0b
	nop                                              ; $514c: $00
	adc $c0                                          ; $514d: $ce $c0
	ld bc, $01a0                                     ; $514f: $01 $a0 $01
	nop                                              ; $5152: $00
	and $e0                                          ; $5153: $e6 $e0
	nop                                              ; $5155: $00
	jp nc, $e037                                     ; $5156: $d2 $37 $e0

	nop                                              ; $5159: $00
	sbc e                                            ; $515a: $9b
	ret nz                                           ; $515b: $c0

	set 0, c                                         ; $515c: $cb $c1
	ld e, e                                          ; $515e: $5b
	ret nz                                           ; $515f: $c0

	rrca                                             ; $5160: $0f
	db $e3                                           ; $5161: $e3
	ld bc, $c021                                     ; $5162: $01 $21 $c0
	ld bc, $01a0                                     ; $5165: $01 $a0 $01
	nop                                              ; $5168: $00
	adc [hl]                                         ; $5169: $8e
	ld h, b                                          ; $516a: $60
	db $fc                                           ; $516b: $fc
	adc e                                            ; $516c: $8b
	and b                                            ; $516d: $a0
	inc b                                            ; $516e: $04
	or b                                             ; $516f: $b0
	sub c                                            ; $5170: $91
	ld c, $c0                                        ; $5171: $0e $c0
	ld bc, $07a0                                     ; $5173: $01 $a0 $07
	nop                                              ; $5176: $00
	ld [$01c0], a                                    ; $5177: $ea $c0 $01
	and b                                            ; $517a: $a0
	ld bc, $9c00                                     ; $517b: $01 $00 $9c
	pop bc                                           ; $517e: $c1
	ld d, a                                          ; $517f: $57
	ld c, $c0                                        ; $5180: $0e $c0
	ld bc, $0ba0                                     ; $5182: $01 $a0 $0b
	nop                                              ; $5185: $00
	or $c0                                           ; $5186: $f6 $c0
	ld bc, $01a0                                     ; $5188: $01 $a0 $01
	nop                                              ; $518b: $00
	and $c1                                          ; $518c: $e6 $c1
	ld d, a                                          ; $518e: $57
	dec a                                            ; $518f: $3d
	ldh [rP1], a                                     ; $5190: $e0 $00
	ld h, e                                          ; $5192: $63
	ret nz                                           ; $5193: $c0

	set 0, c                                         ; $5194: $cb $c1
	ld e, e                                          ; $5196: $5b
	ret nz                                           ; $5197: $c0

	rrca                                             ; $5198: $0f
	db $e3                                           ; $5199: $e3
	ld bc, $c020                                     ; $519a: $01 $20 $c0
	ld bc, $01a0                                     ; $519d: $01 $a0 $01
	nop                                              ; $51a0: $00
	adc [hl]                                         ; $51a1: $8e
	ld h, b                                          ; $51a2: $60
	db $fc                                           ; $51a3: $fc
	adc e                                            ; $51a4: $8b
	and b                                            ; $51a5: $a0
	inc b                                            ; $51a6: $04
	or b                                             ; $51a7: $b0
	sub c                                            ; $51a8: $91
	inc d                                            ; $51a9: $14
	ret nz                                           ; $51aa: $c0

	ld bc, $07a0                                     ; $51ab: $01 $a0 $07
	ld bc, $c012                                     ; $51ae: $01 $12 $c0
	ld bc, $01a0                                     ; $51b1: $01 $a0 $01
	ld bc, $c013                                     ; $51b4: $01 $13 $c0
	ld bc, $07a0                                     ; $51b7: $01 $a0 $07
	ld bc, $c118                                     ; $51ba: $01 $18 $c1
	ld d, a                                          ; $51bd: $57
	ld c, $c0                                        ; $51be: $0e $c0
	ld bc, $0ba0                                     ; $51c0: $01 $a0 $0b
	ld bc, $c027                                     ; $51c3: $01 $27 $c0
	ld bc, $01a0                                     ; $51c6: $01 $a0 $01
	ld bc, $c13b                                     ; $51c9: $01 $3b $c1
	ld d, a                                          ; $51cc: $57
	ld h, $c1                                        ; $51cd: $26 $c1
	ld e, c                                          ; $51cf: $59
	db $e3                                           ; $51d0: $e3
	nop                                              ; $51d1: $00
	ld a, l                                          ; $51d2: $7d
	ld h, b                                          ; $51d3: $60
	db $fc                                           ; $51d4: $fc
	adc e                                            ; $51d5: $8b
	and b                                            ; $51d6: $a0
	inc b                                            ; $51d7: $04
	or b                                             ; $51d8: $b0
	sub c                                            ; $51d9: $91
	inc c                                            ; $51da: $0c
	ret nz                                           ; $51db: $c0

	ld bc, $07a0                                     ; $51dc: $01 $a0 $07
	ld bc, $c03f                                     ; $51df: $01 $3f $c0
	ld bc, $01a0                                     ; $51e2: $01 $a0 $01
	ld bc, $0c45                                     ; $51e5: $01 $45 $0c
	ret nz                                           ; $51e8: $c0

	ld bc, $0ba0                                     ; $51e9: $01 $a0 $0b
	ld bc, $c047                                     ; $51ec: $01 $47 $c0
	ld bc, $01a0                                     ; $51ef: $01 $a0 $01
	ld bc, $3248                                     ; $51f2: $01 $48 $32
	pop bc                                           ; $51f5: $c1
	ld e, c                                          ; $51f6: $59
	db $e3                                           ; $51f7: $e3
	nop                                              ; $51f8: $00
	add $60                                          ; $51f9: $c6 $60
	db $fc                                           ; $51fb: $fc
	adc e                                            ; $51fc: $8b
	and b                                            ; $51fd: $a0
	inc b                                            ; $51fe: $04
	or b                                             ; $51ff: $b0
	sub c                                            ; $5200: $91
	inc c                                            ; $5201: $0c
	ret nz                                           ; $5202: $c0

	ld bc, $07a0                                     ; $5203: $01 $a0 $07
	ld bc, $c04c                                     ; $5206: $01 $4c $c0
	ld bc, $01a0                                     ; $5209: $01 $a0 $01
	ld bc, $1857                                     ; $520c: $01 $57 $18
	ret nz                                           ; $520f: $c0

	ld bc, $0ba0                                     ; $5210: $01 $a0 $0b
	ld bc, $c05b                                     ; $5213: $01 $5b $c0
	ld bc, $01a0                                     ; $5216: $01 $a0 $01
	ld bc, $c05d                                     ; $5219: $01 $5d $c0
	ld bc, $0ba0                                     ; $521c: $01 $a0 $0b
	ld bc, $c067                                     ; $521f: $01 $67 $c0
	ld bc, $01a0                                     ; $5222: $01 $a0 $01
	ld bc, $0a77                                     ; $5225: $01 $77 $0a
	ret nz                                           ; $5228: $c0

	set 0, c                                         ; $5229: $cb $c1
	ld e, c                                          ; $522b: $59
	db $e3                                           ; $522c: $e3
	nop                                              ; $522d: $00
	ld a, l                                          ; $522e: $7d
	ldh [rP1], a                                     ; $522f: $e0 $00
	ld [bc], a                                       ; $5231: $02
	ld h, e                                          ; $5232: $63
	ei                                               ; $5233: $fb
	add b                                            ; $5234: $80
	ld [bc], a                                       ; $5235: $02
	rst SubAFromHL                                          ; $5236: $d7
	rlca                                             ; $5237: $07
	pop bc                                           ; $5238: $c1
	add a                                            ; $5239: $87
	ret nz                                           ; $523a: $c0

	dec bc                                           ; $523b: $0b
	db $e3                                           ; $523c: $e3
	nop                                              ; $523d: $00
	dec h                                            ; $523e: $25
	pop hl                                           ; $523f: $e1
	ld [bc], a                                       ; $5240: $02
	ld [bc], a                                       ; $5241: $02
	db $ed                                           ; $5242: $ed
	ret nz                                           ; $5243: $c0

	ld bc, $01a0                                     ; $5244: $01 $a0 $01
	ld bc, $c080                                     ; $5247: $01 $80 $c0
	ld bc, $15a0                                     ; $524a: $01 $a0 $15
	ld bc, $6084                                     ; $524d: $01 $84 $60
	pop af                                           ; $5250: $f1
	add b                                            ; $5251: $80
	ld [bc], a                                       ; $5252: $02
	rst SubAFromHL                                          ; $5253: $d7
	ld e, $c0                                        ; $5254: $1e $c0
	ld bc, $0ba0                                     ; $5256: $01 $a0 $0b
	ld bc, $c08c                                     ; $5259: $01 $8c $c0
	ld bc, $15a0                                     ; $525c: $01 $a0 $15
	ld bc, $c0a4                                     ; $525f: $01 $a4 $c0
	ld bc, $0ba0                                     ; $5262: $01 $a0 $0b
	ld bc, $c1ad                                     ; $5265: $01 $ad $c1
	ld e, e                                          ; $5268: $5b
	pop bc                                           ; $5269: $c1
	dec sp                                           ; $526a: $3b
	nop                                              ; $526b: $00
	add b                                            ; $526c: $80
	ld [bc], a                                       ; $526d: $02
	rst SubAFromHL                                          ; $526e: $d7
	pop bc                                           ; $526f: $c1
	ld l, e                                          ; $5270: $6b
	push de                                          ; $5271: $d5
	rst SubAFromDE                                          ; $5272: $df
	ld [hl+], a                                      ; $5273: $22
	ret nz                                           ; $5274: $c0

	ld bc, $0ba0                                     ; $5275: $01 $a0 $0b
	ld bc, $c0c5                                     ; $5278: $01 $c5 $c0
	ld bc, $15a0                                     ; $527b: $01 $a0 $15
	ld bc, $c0dd                                     ; $527e: $01 $dd $c0
	ld bc, $0ba0                                     ; $5281: $01 $a0 $0b
	ld bc, $c1ec                                     ; $5284: $01 $ec $c1
	ld e, e                                          ; $5287: $5b
	ret nz                                           ; $5288: $c0

	ld bc, $01a0                                     ; $5289: $01 $a0 $01
	ld [bc], a                                       ; $528c: $02
	ld b, $40                                        ; $528d: $06 $40
	add b                                            ; $528f: $80
	ld [bc], a                                       ; $5290: $02
	rst SubAFromHL                                          ; $5291: $d7
	pop bc                                           ; $5292: $c1
	ld l, e                                          ; $5293: $6b
	sub $df                                          ; $5294: $d6 $df
	ld [wPtrToDataCopyStruct], sp                                   ; $5296: $08 $08 $c1
	adc l                                            ; $5299: $8d
	ret nc                                           ; $529a: $d0

	add e                                            ; $529b: $83
	ld [bc], a                                       ; $529c: $02
	ret c                                            ; $529d: $d8

	pop bc                                           ; $529e: $c1
	ld h, d                                          ; $529f: $62
	ei                                               ; $52a0: $fb
	db $fd                                           ; $52a1: $fd
	add e                                            ; $52a2: $83
	ld [bc], a                                       ; $52a3: $02
	ret c                                            ; $52a4: $d8

	ldh [rAUD1ENV], a                                ; $52a5: $e0 $12
	pop bc                                           ; $52a7: $c1
	ld a, [hl]                                       ; $52a8: $7e
	pop bc                                           ; $52a9: $c1
	ld d, e                                          ; $52aa: $53
	ret nz                                           ; $52ab: $c0

	inc d                                            ; $52ac: $14
	db $e3                                           ; $52ad: $e3
	nop                                              ; $52ae: $00
	inc a                                            ; $52af: $3c
	db $fd                                           ; $52b0: $fd
	pop bc                                           ; $52b1: $c1
	ld d, h                                          ; $52b2: $54
	add e                                            ; $52b3: $83
	ld [bc], a                                       ; $52b4: $02
	ret c                                            ; $52b5: $d8

	ld bc, $16d0                                     ; $52b6: $01 $d0 $16
	pop hl                                           ; $52b9: $e1
	ld [bc], a                                       ; $52ba: $02
	nop                                              ; $52bb: $00
	ret nz                                           ; $52bc: $c0

	ret nz                                           ; $52bd: $c0

	ld bc, $02a0                                     ; $52be: $01 $a0 $02
	nop                                              ; $52c1: $00
	ld bc, $01c0                                     ; $52c2: $01 $c0 $01
	and b                                            ; $52c5: $a0
	ld bc, $0b00                                     ; $52c6: $01 $00 $0b
	ret nz                                           ; $52c9: $c0

	ld bc, $02a0                                     ; $52ca: $01 $a0 $02
	nop                                              ; $52cd: $00
	rrca                                             ; $52ce: $0f
	ld bc, $16d1                                     ; $52cf: $01 $d1 $16
	pop hl                                           ; $52d2: $e1
	ld [bc], a                                       ; $52d3: $02
	ld bc, $c008                                     ; $52d4: $01 $08 $c0
	ld bc, $03a0                                     ; $52d7: $01 $a0 $03
	nop                                              ; $52da: $00
	dec d                                            ; $52db: $15
	ret nz                                           ; $52dc: $c0

	ld bc, $01a0                                     ; $52dd: $01 $a0 $01
	nop                                              ; $52e0: $00
	dec bc                                           ; $52e1: $0b
	ret nz                                           ; $52e2: $c0

	ld bc, $03a0                                     ; $52e3: $01 $a0 $03
	nop                                              ; $52e6: $00
	ld e, $01                                        ; $52e7: $1e $01
	jp nc, $e116                                     ; $52e9: $d2 $16 $e1

	ld [bc], a                                       ; $52ec: $02
	ld bc, $c050                                     ; $52ed: $01 $50 $c0
	ld bc, $04a0                                     ; $52f0: $01 $a0 $04
	nop                                              ; $52f3: $00
	dec h                                            ; $52f4: $25
	ret nz                                           ; $52f5: $c0

	ld bc, $01a0                                     ; $52f6: $01 $a0 $01
	nop                                              ; $52f9: $00
	dec bc                                           ; $52fa: $0b
	ret nz                                           ; $52fb: $c0

	ld bc, $04a0                                     ; $52fc: $01 $a0 $04
	nop                                              ; $52ff: $00
	cpl                                              ; $5300: $2f
	ld bc, $16d3                                     ; $5301: $01 $d3 $16
	pop hl                                           ; $5304: $e1
	ld [bc], a                                       ; $5305: $02
	ld bc, $c098                                     ; $5306: $01 $98 $c0
	ld bc, $05a0                                     ; $5309: $01 $a0 $05
	nop                                              ; $530c: $00
	inc a                                            ; $530d: $3c
	ret nz                                           ; $530e: $c0

	ld bc, $01a0                                     ; $530f: $01 $a0 $01
	nop                                              ; $5312: $00
	ld b, l                                          ; $5313: $45
	ret nz                                           ; $5314: $c0

	ld bc, $05a0                                     ; $5315: $01 $a0 $05
	nop                                              ; $5318: $00
	ld c, d                                          ; $5319: $4a
	ld bc, $16d7                                     ; $531a: $01 $d7 $16
	pop hl                                           ; $531d: $e1
	ld [bc], a                                       ; $531e: $02
	ld bc, $c0e0                                     ; $531f: $01 $e0 $c0
	ld bc, $08a0                                     ; $5322: $01 $a0 $08
	nop                                              ; $5325: $00
	ld d, c                                          ; $5326: $51
	ret nz                                           ; $5327: $c0

	ld bc, $01a0                                     ; $5328: $01 $a0 $01
	nop                                              ; $532b: $00
	ld e, b                                          ; $532c: $58
	ret nz                                           ; $532d: $c0

	ld bc, $08a0                                     ; $532e: $01 $a0 $08
	nop                                              ; $5331: $00
	ld h, b                                          ; $5332: $60
	ld bc, $16d8                                     ; $5333: $01 $d8 $16
	pop hl                                           ; $5336: $e1
	ld [bc], a                                       ; $5337: $02
	ld [bc], a                                       ; $5338: $02
	db $10                                           ; $5339: $10
	ret nz                                           ; $533a: $c0

	ld bc, $09a0                                     ; $533b: $01 $a0 $09
	nop                                              ; $533e: $00
	ld l, b                                          ; $533f: $68
	ret nz                                           ; $5340: $c0

	ld bc, $01a0                                     ; $5341: $01 $a0 $01
	nop                                              ; $5344: $00
	ld l, a                                          ; $5345: $6f
	ret nz                                           ; $5346: $c0

	ld bc, $09a0                                     ; $5347: $01 $a0 $09
	nop                                              ; $534a: $00
	ld [hl], a                                       ; $534b: $77
	ld bc, $16da                                     ; $534c: $01 $da $16
	pop hl                                           ; $534f: $e1
	ld [bc], a                                       ; $5350: $02
	ld [bc], a                                       ; $5351: $02
	ld b, b                                          ; $5352: $40
	ret nz                                           ; $5353: $c0

	ld bc, $06a0                                     ; $5354: $01 $a0 $06
	nop                                              ; $5357: $00
	ld a, a                                          ; $5358: $7f
	ret nz                                           ; $5359: $c0

	ld bc, $01a0                                     ; $535a: $01 $a0 $01
	nop                                              ; $535d: $00
	add a                                            ; $535e: $87
	ret nz                                           ; $535f: $c0

	ld bc, $06a0                                     ; $5360: $01 $a0 $06
	nop                                              ; $5363: $00
	adc l                                            ; $5364: $8d
	ld bc, $16dd                                     ; $5365: $01 $dd $16
	pop hl                                           ; $5368: $e1
	ld [bc], a                                       ; $5369: $02
	ld [bc], a                                       ; $536a: $02
	ld [hl], b                                       ; $536b: $70
	ret nz                                           ; $536c: $c0

	ld bc, $0aa0                                     ; $536d: $01 $a0 $0a
	nop                                              ; $5370: $00
	sub h                                            ; $5371: $94
	ret nz                                           ; $5372: $c0

	ld bc, $01a0                                     ; $5373: $01 $a0 $01
	nop                                              ; $5376: $00
	ld e, b                                          ; $5377: $58
	ret nz                                           ; $5378: $c0

	ld bc, $0aa0                                     ; $5379: $01 $a0 $0a
	nop                                              ; $537c: $00
	sbc e                                            ; $537d: $9b
	ld bc, $3bde                                     ; $537e: $01 $de $3b
	ret nz                                           ; $5381: $c0

	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	and l                                            ; $5384: $a5
	pop bc                                           ; $5385: $c1
	ld d, l                                          ; $5386: $55
	ret nc                                           ; $5387: $d0

	pop hl                                           ; $5388: $e1
	ld [bc], a                                       ; $5389: $02
	ld [bc], a                                       ; $538a: $02
	sbc [hl]                                         ; $538b: $9e
	pop bc                                           ; $538c: $c1
	or d                                             ; $538d: $b2
	db $e3                                           ; $538e: $e3
	nop                                              ; $538f: $00
	inc de                                           ; $5390: $13
	ret nz                                           ; $5391: $c0

	ld bc, $0da0                                     ; $5392: $01 $a0 $0d
	nop                                              ; $5395: $00
	xor c                                            ; $5396: $a9
	ret nz                                           ; $5397: $c0

	ld bc, $01a0                                     ; $5398: $01 $a0 $01
	nop                                              ; $539b: $00
	xor h                                            ; $539c: $ac
	ret nz                                           ; $539d: $c0

	ld bc, $0da0                                     ; $539e: $01 $a0 $0d
	nop                                              ; $53a1: $00
	or c                                             ; $53a2: $b1
	ret nz                                           ; $53a3: $c0

	ld bc, $01a0                                     ; $53a4: $01 $a0 $01
	nop                                              ; $53a7: $00
	or a                                             ; $53a8: $b7
	pop bc                                           ; $53a9: $c1
	or d                                             ; $53aa: $b2
	db $e3                                           ; $53ab: $e3
	nop                                              ; $53ac: $00
	inc d                                            ; $53ad: $14
	ret nz                                           ; $53ae: $c0

	ld bc, $0da0                                     ; $53af: $01 $a0 $0d
	nop                                              ; $53b2: $00
	cp d                                             ; $53b3: $ba
	pop bc                                           ; $53b4: $c1
	ld e, e                                          ; $53b5: $5b
	ret nz                                           ; $53b6: $c0

	ld bc, $01a0                                     ; $53b7: $01 $a0 $01
	nop                                              ; $53ba: $00
	cp a                                             ; $53bb: $bf
	ld bc, $22df                                     ; $53bc: $01 $df $22
	pop hl                                           ; $53bf: $e1
	ld [bc], a                                       ; $53c0: $02
	ld [bc], a                                       ; $53c1: $02
	or d                                             ; $53c2: $b2
	ret nz                                           ; $53c3: $c0

	ld bc, $0ba0                                     ; $53c4: $01 $a0 $0b
	nop                                              ; $53c7: $00
	jp $01c0                                         ; $53c8: $c3 $c0 $01


	and b                                            ; $53cb: $a0
	ld bc, $c700                                     ; $53cc: $01 $00 $c7
	ret nz                                           ; $53cf: $c0

	ld bc, $0ba0                                     ; $53d0: $01 $a0 $0b
	nop                                              ; $53d3: $00
	ret nc                                           ; $53d4: $d0

	ret nz                                           ; $53d5: $c0

	ld bc, $01a0                                     ; $53d6: $01 $a0 $01
	nop                                              ; $53d9: $00
	ldh [$c0], a                                     ; $53da: $e0 $c0
	ld bc, $0ba0                                     ; $53dc: $01 $a0 $0b
	nop                                              ; $53df: $00
	db $eb                                           ; $53e0: $eb
	ld [bc], a                                       ; $53e1: $02
	ldh [rAUD1LEN], a                                ; $53e2: $e0 $11
	ld [hl+], a                                      ; $53e4: $22
	pop hl                                           ; $53e5: $e1
	ld [bc], a                                       ; $53e6: $02
	ld [bc], a                                       ; $53e7: $02
	db $ed                                           ; $53e8: $ed
	ret nz                                           ; $53e9: $c0

	ld bc, $01a0                                     ; $53ea: $01 $a0 $01
	nop                                              ; $53ed: $00
	rst AddAOntoHL                                          ; $53ee: $ef
	ret nz                                           ; $53ef: $c0

	ld bc, $15a0                                     ; $53f0: $01 $a0 $15
	nop                                              ; $53f3: $00
	or $c0                                           ; $53f4: $f6 $c0
	ld bc, $01a0                                     ; $53f6: $01 $a0 $01
	ld bc, $c003                                     ; $53f9: $01 $03 $c0
	ld bc, $15a0                                     ; $53fc: $01 $a0 $15
	ld bc, $c00a                                     ; $53ff: $01 $0a $c0
	ld bc, $01a0                                     ; $5402: $01 $a0 $01
	ld bc, $c10d                                     ; $5405: $01 $0d $c1
	ld e, e                                          ; $5408: $5b
	add c                                            ; $5409: $81
	add e                                            ; $540a: $83
	ld [bc], a                                       ; $540b: $02
	ret c                                            ; $540c: $d8

	inc b                                            ; $540d: $04
	sbc $df                                          ; $540e: $de $df
	ldh [rAUD1LEN], a                                ; $5410: $e0 $11
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	ld [de], a                                       ; $5414: $12
	ret nz                                           ; $5415: $c0

	ld bc, $01a0                                     ; $5416: $01 $a0 $01
	ld bc, $c011                                     ; $5419: $01 $11 $c0
	ld hl, $83d1                                     ; $541c: $21 $d1 $83
	ld [bc], a                                       ; $541f: $02
	ret c                                            ; $5420: $d8

	ret nz                                           ; $5421: $c0

	ld [hl+], a                                      ; $5422: $22
	pop de                                           ; $5423: $d1
	add e                                            ; $5424: $83
	ld [bc], a                                       ; $5425: $02
	ret c                                            ; $5426: $d8

	pop bc                                           ; $5427: $c1
	adc l                                            ; $5428: $8d
	ret nc                                           ; $5429: $d0

	add e                                            ; $542a: $83
	ld [bc], a                                       ; $542b: $02
	ret c                                            ; $542c: $d8

	pop bc                                           ; $542d: $c1
	ld h, d                                          ; $542e: $62
	ei                                               ; $542f: $fb
	db $fd                                           ; $5430: $fd
	add e                                            ; $5431: $83
	ld [bc], a                                       ; $5432: $02
	ret c                                            ; $5433: $d8

	ldh [rAUD1ENV], a                                ; $5434: $e0 $12
	pop bc                                           ; $5436: $c1
	ld a, [hl]                                       ; $5437: $7e
	pop bc                                           ; $5438: $c1
	ld d, e                                          ; $5439: $53
	ret nz                                           ; $543a: $c0

	inc d                                            ; $543b: $14
	db $e3                                           ; $543c: $e3
	nop                                              ; $543d: $00
	inc a                                            ; $543e: $3c
	db $fd                                           ; $543f: $fd
	pop bc                                           ; $5440: $c1
	ld d, h                                          ; $5441: $54
	add e                                            ; $5442: $83
	ld [bc], a                                       ; $5443: $02
	ret c                                            ; $5444: $d8

	ld bc, $16d0                                     ; $5445: $01 $d0 $16
	pop hl                                           ; $5448: $e1
	ld [bc], a                                       ; $5449: $02
	nop                                              ; $544a: $00
	ret nz                                           ; $544b: $c0

	ret nz                                           ; $544c: $c0

	ld bc, $02a0                                     ; $544d: $01 $a0 $02
	ld bc, $c019                                     ; $5450: $01 $19 $c0
	ld bc, $01a0                                     ; $5453: $01 $a0 $01
	ld bc, $c020                                     ; $5456: $01 $20 $c0
	ld bc, $02a0                                     ; $5459: $01 $a0 $02
	nop                                              ; $545c: $00
	rrca                                             ; $545d: $0f
	ld bc, $16d1                                     ; $545e: $01 $d1 $16
	pop hl                                           ; $5461: $e1
	ld [bc], a                                       ; $5462: $02
	ld bc, $c008                                     ; $5463: $01 $08 $c0
	ld bc, $03a0                                     ; $5466: $01 $a0 $03
	ld bc, $c026                                     ; $5469: $01 $26 $c0
	ld bc, $01a0                                     ; $546c: $01 $a0 $01
	nop                                              ; $546f: $00
	dec bc                                           ; $5470: $0b
	ret nz                                           ; $5471: $c0

	ld bc, $03a0                                     ; $5472: $01 $a0 $03
	ld bc, $012c                                     ; $5475: $01 $2c $01
	jp nc, $e116                                     ; $5478: $d2 $16 $e1

	ld [bc], a                                       ; $547b: $02
	ld bc, $c050                                     ; $547c: $01 $50 $c0
	ld bc, $04a0                                     ; $547f: $01 $a0 $04
	ld bc, $c034                                     ; $5482: $01 $34 $c0
	ld bc, $01a0                                     ; $5485: $01 $a0 $01
	ld bc, $c044                                     ; $5488: $01 $44 $c0
	ld bc, $04a0                                     ; $548b: $01 $a0 $04
	ld bc, $014c                      ; $548e: $01 $4c $01
	db $d3                                           ; $5491: $d3
	ld d, $e1                                        ; $5492: $16 $e1
	ld [bc], a                                       ; $5494: $02
	ld bc, $c098                                     ; $5495: $01 $98 $c0
	ld bc, $05a0                                     ; $5498: $01 $a0 $05
	ld bc, $c059                                     ; $549b: $01 $59 $c0
	ld bc, $01a0                                     ; $549e: $01 $a0 $01
	nop                                              ; $54a1: $00
	dec bc                                           ; $54a2: $0b
	ret nz                                           ; $54a3: $c0

	ld bc, $05a0                                     ; $54a4: $01 $a0 $05
	ld bc, $0162                                     ; $54a7: $01 $62 $01
	rst SubAFromHL                                          ; $54aa: $d7
	ld d, $e1                                        ; $54ab: $16 $e1
	ld [bc], a                                       ; $54ad: $02
	ld bc, $c0e0                                     ; $54ae: $01 $e0 $c0
	ld bc, $08a0                                     ; $54b1: $01 $a0 $08
	ld bc, $c069                                     ; $54b4: $01 $69 $c0
	ld bc, $01a0                                     ; $54b7: $01 $a0 $01
	nop                                              ; $54ba: $00
	dec bc                                           ; $54bb: $0b
	ret nz                                           ; $54bc: $c0

	ld bc, $08a0                                     ; $54bd: $01 $a0 $08
	ld bc, $0170                                     ; $54c0: $01 $70 $01
	ret c                                            ; $54c3: $d8

	ld d, $e1                                        ; $54c4: $16 $e1
	ld [bc], a                                       ; $54c6: $02
	ld [bc], a                                       ; $54c7: $02
	db $10                                           ; $54c8: $10
	ret nz                                           ; $54c9: $c0

	ld bc, $09a0                                     ; $54ca: $01 $a0 $09
	ld bc, $c07c                                     ; $54cd: $01 $7c $c0
	ld bc, $01a0                                     ; $54d0: $01 $a0 $01
	ld bc, $c087                                     ; $54d3: $01 $87 $c0
	ld bc, $09a0                                     ; $54d6: $01 $a0 $09
	ld bc, $018d                                     ; $54d9: $01 $8d $01
	jp c, $e116                                      ; $54dc: $da $16 $e1

	ld [bc], a                                       ; $54df: $02
	ld [bc], a                                       ; $54e0: $02
	ld b, b                                          ; $54e1: $40
	ret nz                                           ; $54e2: $c0

	ld bc, $06a0                                     ; $54e3: $01 $a0 $06
	ld bc, $c095                                     ; $54e6: $01 $95 $c0
	ld bc, $01a0                                     ; $54e9: $01 $a0 $01
	ld bc, $c09e                                     ; $54ec: $01 $9e $c0
	ld bc, $06a0                                     ; $54ef: $01 $a0 $06
	ld bc, $01a2                                     ; $54f2: $01 $a2 $01
	db $dd                                           ; $54f5: $dd
	ld d, $e1                                        ; $54f6: $16 $e1
	ld [bc], a                                       ; $54f8: $02
	ld [bc], a                                       ; $54f9: $02
	ld [hl], b                                       ; $54fa: $70
	ret nz                                           ; $54fb: $c0

	ld bc, $0aa0                                     ; $54fc: $01 $a0 $0a
	ld bc, $c0ac                                     ; $54ff: $01 $ac $c0
	ld bc, $01a0                                     ; $5502: $01 $a0 $01
	nop                                              ; $5505: $00
	dec bc                                           ; $5506: $0b
	ret nz                                           ; $5507: $c0

	ld bc, $0aa0                                     ; $5508: $01 $a0 $0a
	ld bc, $01b3                                     ; $550b: $01 $b3 $01
	sbc $3b                                          ; $550e: $de $3b
	ret nz                                           ; $5510: $c0

	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	and l                                            ; $5513: $a5
	pop bc                                           ; $5514: $c1
	ld d, l                                          ; $5515: $55
	ret nc                                           ; $5516: $d0

	pop hl                                           ; $5517: $e1
	ld [bc], a                                       ; $5518: $02
	ld [bc], a                                       ; $5519: $02
	sbc [hl]                                         ; $551a: $9e
	pop bc                                           ; $551b: $c1
	or d                                             ; $551c: $b2
	db $e3                                           ; $551d: $e3
	nop                                              ; $551e: $00
	inc de                                           ; $551f: $13
	ret nz                                           ; $5520: $c0

	ld bc, $0da0                                     ; $5521: $01 $a0 $0d
	nop                                              ; $5524: $00
	xor c                                            ; $5525: $a9
	ret nz                                           ; $5526: $c0

	ld bc, $01a0                                     ; $5527: $01 $a0 $01
	nop                                              ; $552a: $00
	xor h                                            ; $552b: $ac
	ret nz                                           ; $552c: $c0

	ld bc, $0da0                                     ; $552d: $01 $a0 $0d
	ld bc, $c0b6                                     ; $5530: $01 $b6 $c0
	ld bc, $01a0                                     ; $5533: $01 $a0 $01
	nop                                              ; $5536: $00
	or a                                             ; $5537: $b7
	pop bc                                           ; $5538: $c1
	or d                                             ; $5539: $b2
	db $e3                                           ; $553a: $e3
	nop                                              ; $553b: $00
	inc d                                            ; $553c: $14
	ret nz                                           ; $553d: $c0

	ld bc, $0da0                                     ; $553e: $01 $a0 $0d
	nop                                              ; $5541: $00
	cp d                                             ; $5542: $ba
	pop bc                                           ; $5543: $c1
	ld e, e                                          ; $5544: $5b
	ret nz                                           ; $5545: $c0

	ld bc, $01a0                                     ; $5546: $01 $a0 $01
	nop                                              ; $5549: $00
	cp a                                             ; $554a: $bf
	ld bc, $22df                                     ; $554b: $01 $df $22
	pop hl                                           ; $554e: $e1
	ld [bc], a                                       ; $554f: $02
	ld [bc], a                                       ; $5550: $02
	or d                                             ; $5551: $b2
	ret nz                                           ; $5552: $c0

	ld bc, $0ba0                                     ; $5553: $01 $a0 $0b
	nop                                              ; $5556: $00
	jp $01c0                                         ; $5557: $c3 $c0 $01


	and b                                            ; $555a: $a0
	ld bc, $c700                                     ; $555b: $01 $00 $c7
	ret nz                                           ; $555e: $c0

	ld bc, $0ba0                                     ; $555f: $01 $a0 $0b
	ld bc, $c0ba                                     ; $5562: $01 $ba $c0
	ld bc, $01a0                                     ; $5565: $01 $a0 $01
	nop                                              ; $5568: $00
	ldh [$c0], a                                     ; $5569: $e0 $c0
	ld bc, $0ba0                                     ; $556b: $01 $a0 $0b
	nop                                              ; $556e: $00
	db $eb                                           ; $556f: $eb
	ld [bc], a                                       ; $5570: $02
	ldh [rAUD1LEN], a                                ; $5571: $e0 $11
	ld [hl+], a                                      ; $5573: $22
	pop hl                                           ; $5574: $e1
	ld [bc], a                                       ; $5575: $02
	ld [bc], a                                       ; $5576: $02
	db $ed                                           ; $5577: $ed
	ret nz                                           ; $5578: $c0

	ld bc, $01a0                                     ; $5579: $01 $a0 $01
	nop                                              ; $557c: $00
	rst AddAOntoHL                                          ; $557d: $ef
	ret nz                                           ; $557e: $c0

	ld bc, $15a0                                     ; $557f: $01 $a0 $15
	ld bc, $c0cb                                     ; $5582: $01 $cb $c0
	ld bc, $01a0                                     ; $5585: $01 $a0 $01
	ld bc, $c003                                     ; $5588: $01 $03 $c0
	ld bc, $15a0                                     ; $558b: $01 $a0 $15
	ld bc, $c00a                                     ; $558e: $01 $0a $c0
	ld bc, $01a0                                     ; $5591: $01 $a0 $01
	ld bc, $c10d                                     ; $5594: $01 $0d $c1
	ld e, e                                          ; $5597: $5b
	add c                                            ; $5598: $81
	add e                                            ; $5599: $83
	ld [bc], a                                       ; $559a: $02
	ret c                                            ; $559b: $d8

	inc b                                            ; $559c: $04
	sbc $df                                          ; $559d: $de $df
	ldh [rAUD1LEN], a                                ; $559f: $e0 $11
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	ld [de], a                                       ; $55a3: $12
	ret nz                                           ; $55a4: $c0

	ld bc, $01a0                                     ; $55a5: $01 $a0 $01
	ld bc, $c011                                     ; $55a8: $01 $11 $c0
	ld hl, $83d1                                     ; $55ab: $21 $d1 $83
	ld [bc], a                                       ; $55ae: $02
	ret c                                            ; $55af: $d8

	ret nz                                           ; $55b0: $c0

	ld [hl+], a                                      ; $55b1: $22
	pop de                                           ; $55b2: $d1
	add e                                            ; $55b3: $83
	ld [bc], a                                       ; $55b4: $02
	ret c                                            ; $55b5: $d8

	pop bc                                           ; $55b6: $c1
	adc l                                            ; $55b7: $8d
	ret nc                                           ; $55b8: $d0

	add e                                            ; $55b9: $83
	ld [bc], a                                       ; $55ba: $02
	ret c                                            ; $55bb: $d8

	pop bc                                           ; $55bc: $c1
	ld h, d                                          ; $55bd: $62
	ei                                               ; $55be: $fb
	db $fd                                           ; $55bf: $fd
	add e                                            ; $55c0: $83
	ld [bc], a                                       ; $55c1: $02
	ret c                                            ; $55c2: $d8

	ldh [rAUD1ENV], a                                ; $55c3: $e0 $12
	pop bc                                           ; $55c5: $c1
	ld a, [hl]                                       ; $55c6: $7e
	pop bc                                           ; $55c7: $c1
	ld d, e                                          ; $55c8: $53
	ret nz                                           ; $55c9: $c0

	inc d                                            ; $55ca: $14
	db $e3                                           ; $55cb: $e3
	nop                                              ; $55cc: $00
	inc a                                            ; $55cd: $3c
	db $fd                                           ; $55ce: $fd
	pop bc                                           ; $55cf: $c1
	ld d, h                                          ; $55d0: $54
	add e                                            ; $55d1: $83
	ld [bc], a                                       ; $55d2: $02
	ret c                                            ; $55d3: $d8

	ld bc, $16d0                                     ; $55d4: $01 $d0 $16
	pop hl                                           ; $55d7: $e1
	ld [bc], a                                       ; $55d8: $02
	nop                                              ; $55d9: $00
	ret nz                                           ; $55da: $c0

	ret nz                                           ; $55db: $c0

	ld bc, $02a0                                     ; $55dc: $01 $a0 $02
	ld bc, $c0d8                                     ; $55df: $01 $d8 $c0
	ld bc, $01a0                                     ; $55e2: $01 $a0 $01
	nop                                              ; $55e5: $00
	dec bc                                           ; $55e6: $0b
	ret nz                                           ; $55e7: $c0

	ld bc, $02a0                                     ; $55e8: $01 $a0 $02
	nop                                              ; $55eb: $00
	rrca                                             ; $55ec: $0f
	ld bc, $16d1                                     ; $55ed: $01 $d1 $16
	pop hl                                           ; $55f0: $e1
	ld [bc], a                                       ; $55f1: $02
	ld bc, $c008                                     ; $55f2: $01 $08 $c0
	ld bc, $03a0                                     ; $55f5: $01 $a0 $03
	ld bc, wGenericTileDataDest+1                                     ; $55f8: $01 $e3 $c0
	ld bc, $01a0                                     ; $55fb: $01 $a0 $01
	nop                                              ; $55fe: $00
	dec bc                                           ; $55ff: $0b
	ret nz                                           ; $5600: $c0

	ld bc, $03a0                                     ; $5601: $01 $a0 $03
	nop                                              ; $5604: $00
	ld e, $01                                        ; $5605: $1e $01
	jp nc, $e116                                     ; $5607: $d2 $16 $e1

	ld [bc], a                                       ; $560a: $02
	ld bc, $c050                                     ; $560b: $01 $50 $c0
	ld bc, $04a0                                     ; $560e: $01 $a0 $04
	ld bc, $c0f1                                     ; $5611: $01 $f1 $c0
	ld bc, $01a0                                     ; $5614: $01 $a0 $01
	ld [bc], a                                       ; $5617: $02
	add hl, bc                                       ; $5618: $09
	ret nz                                           ; $5619: $c0

	ld bc, $04a0                                     ; $561a: $01 $a0 $04
	ld bc, $014c                      ; $561d: $01 $4c $01
	db $d3                                           ; $5620: $d3
	ld d, $e1                                        ; $5621: $16 $e1
	ld [bc], a                                       ; $5623: $02
	ld bc, $c098                                     ; $5624: $01 $98 $c0
	ld bc, $05a0                                     ; $5627: $01 $a0 $05
	ld [bc], a                                       ; $562a: $02
	rrca                                             ; $562b: $0f
	ret nz                                           ; $562c: $c0

	ld bc, $01a0                                     ; $562d: $01 $a0 $01
	nop                                              ; $5630: $00
	dec bc                                           ; $5631: $0b
	ret nz                                           ; $5632: $c0

	ld bc, $05a0                                     ; $5633: $01 $a0 $05
	ld bc, $0162                                     ; $5636: $01 $62 $01
	rst SubAFromHL                                          ; $5639: $d7
	ld d, $e1                                        ; $563a: $16 $e1
	ld [bc], a                                       ; $563c: $02
	ld bc, $c0e0                                     ; $563d: $01 $e0 $c0
	ld bc, $08a0                                     ; $5640: $01 $a0 $08
	ld [bc], a                                       ; $5643: $02
	ld d, $c0                                        ; $5644: $16 $c0
	ld bc, $01a0                                     ; $5646: $01 $a0 $01
	nop                                              ; $5649: $00
	dec bc                                           ; $564a: $0b
	ret nz                                           ; $564b: $c0

	ld bc, $08a0                                     ; $564c: $01 $a0 $08
	ld [bc], a                                       ; $564f: $02
	ld e, $01                                        ; $5650: $1e $01
	ret c                                            ; $5652: $d8

	ld d, $e1                                        ; $5653: $16 $e1
	ld [bc], a                                       ; $5655: $02
	ld [bc], a                                       ; $5656: $02
	db $10                                           ; $5657: $10
	ret nz                                           ; $5658: $c0

	ld bc, $09a0                                     ; $5659: $01 $a0 $09
	ld [bc], a                                       ; $565c: $02
	ld a, [hl+]                                      ; $565d: $2a
	ret nz                                           ; $565e: $c0

	ld bc, $01a0                                     ; $565f: $01 $a0 $01
	nop                                              ; $5662: $00
	ld l, a                                          ; $5663: $6f
	ret nz                                           ; $5664: $c0

	ld bc, $09a0                                     ; $5665: $01 $a0 $09
	nop                                              ; $5668: $00
	ld [hl], a                                       ; $5669: $77
	ld bc, $16da                                     ; $566a: $01 $da $16
	pop hl                                           ; $566d: $e1
	ld [bc], a                                       ; $566e: $02
	ld [bc], a                                       ; $566f: $02
	ld b, b                                          ; $5670: $40
	ret nz                                           ; $5671: $c0

	ld bc, $06a0                                     ; $5672: $01 $a0 $06
	ld [bc], a                                       ; $5675: $02
	ld [hl], $c0                                     ; $5676: $36 $c0
	ld bc, $01a0                                     ; $5678: $01 $a0 $01
	nop                                              ; $567b: $00
	add a                                            ; $567c: $87
	ret nz                                           ; $567d: $c0

	ld bc, $06a0                                     ; $567e: $01 $a0 $06
	ld [bc], a                                       ; $5681: $02
	ld a, $01                                        ; $5682: $3e $01
	db $dd                                           ; $5684: $dd
	ld d, $e1                                        ; $5685: $16 $e1
	ld [bc], a                                       ; $5687: $02
	ld [bc], a                                       ; $5688: $02
	ld [hl], b                                       ; $5689: $70
	ret nz                                           ; $568a: $c0

	ld bc, $0aa0                                     ; $568b: $01 $a0 $0a
	ld [bc], a                                       ; $568e: $02
	ld c, b                                          ; $568f: $48
	ret nz                                           ; $5690: $c0

	ld bc, $01a0                                     ; $5691: $01 $a0 $01
	nop                                              ; $5694: $00
	dec bc                                           ; $5695: $0b
	ret nz                                           ; $5696: $c0

	ld bc, $0aa0                                     ; $5697: $01 $a0 $0a
	ld [bc], a                                       ; $569a: $02
	ld d, c                                          ; $569b: $51
	ld bc, $3bde                                     ; $569c: $01 $de $3b
	ret nz                                           ; $569f: $c0

	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	and l                                            ; $56a2: $a5
	pop bc                                           ; $56a3: $c1
	ld d, l                                          ; $56a4: $55
	ret nc                                           ; $56a5: $d0

	pop hl                                           ; $56a6: $e1
	ld [bc], a                                       ; $56a7: $02
	ld [bc], a                                       ; $56a8: $02
	sbc [hl]                                         ; $56a9: $9e
	pop bc                                           ; $56aa: $c1
	or d                                             ; $56ab: $b2
	db $e3                                           ; $56ac: $e3
	nop                                              ; $56ad: $00
	inc de                                           ; $56ae: $13
	ret nz                                           ; $56af: $c0

	ld bc, $0da0                                     ; $56b0: $01 $a0 $0d
	nop                                              ; $56b3: $00
	xor c                                            ; $56b4: $a9
	ret nz                                           ; $56b5: $c0

	ld bc, $01a0                                     ; $56b6: $01 $a0 $01
	nop                                              ; $56b9: $00
	xor h                                            ; $56ba: $ac
	ret nz                                           ; $56bb: $c0

	ld bc, $0da0                                     ; $56bc: $01 $a0 $0d
	ld [bc], a                                       ; $56bf: $02
	ld e, b                                          ; $56c0: $58
	ret nz                                           ; $56c1: $c0

	ld bc, $01a0                                     ; $56c2: $01 $a0 $01
	nop                                              ; $56c5: $00
	or a                                             ; $56c6: $b7
	pop bc                                           ; $56c7: $c1
	or d                                             ; $56c8: $b2
	db $e3                                           ; $56c9: $e3
	nop                                              ; $56ca: $00
	inc d                                            ; $56cb: $14
	ret nz                                           ; $56cc: $c0

	ld bc, $0da0                                     ; $56cd: $01 $a0 $0d
	nop                                              ; $56d0: $00
	cp d                                             ; $56d1: $ba
	pop bc                                           ; $56d2: $c1
	ld e, e                                          ; $56d3: $5b
	ret nz                                           ; $56d4: $c0

	ld bc, $01a0                                     ; $56d5: $01 $a0 $01
	nop                                              ; $56d8: $00
	cp a                                             ; $56d9: $bf
	ld bc, $22df                                     ; $56da: $01 $df $22
	pop hl                                           ; $56dd: $e1
	ld [bc], a                                       ; $56de: $02
	ld [bc], a                                       ; $56df: $02
	or d                                             ; $56e0: $b2
	ret nz                                           ; $56e1: $c0

	ld bc, $0ba0                                     ; $56e2: $01 $a0 $0b
	nop                                              ; $56e5: $00
	jp $01c0                                         ; $56e6: $c3 $c0 $01


	and b                                            ; $56e9: $a0
	ld bc, $c700                                     ; $56ea: $01 $00 $c7
	ret nz                                           ; $56ed: $c0

	ld bc, $0ba0                                     ; $56ee: $01 $a0 $0b
	ld [bc], a                                       ; $56f1: $02
	ld e, a                                          ; $56f2: $5f
	ret nz                                           ; $56f3: $c0

	ld bc, $01a0                                     ; $56f4: $01 $a0 $01
	nop                                              ; $56f7: $00
	ldh [$c0], a                                     ; $56f8: $e0 $c0
	ld bc, $0ba0                                     ; $56fa: $01 $a0 $0b
	nop                                              ; $56fd: $00
	db $eb                                           ; $56fe: $eb
	ld [bc], a                                       ; $56ff: $02
	ldh [rAUD1LEN], a                                ; $5700: $e0 $11
	ld [hl+], a                                      ; $5702: $22
	pop hl                                           ; $5703: $e1
	ld [bc], a                                       ; $5704: $02
	ld [bc], a                                       ; $5705: $02
	db $ed                                           ; $5706: $ed
	ret nz                                           ; $5707: $c0

	ld bc, $01a0                                     ; $5708: $01 $a0 $01
	nop                                              ; $570b: $00
	rst AddAOntoHL                                          ; $570c: $ef
	ret nz                                           ; $570d: $c0

	ld bc, $15a0                                     ; $570e: $01 $a0 $15
	ld [bc], a                                       ; $5711: $02
	ld [hl], d                                       ; $5712: $72
	ret nz                                           ; $5713: $c0

	ld bc, $01a0                                     ; $5714: $01 $a0 $01
	ld bc, $c003                                     ; $5717: $01 $03 $c0
	ld bc, $15a0                                     ; $571a: $01 $a0 $15
	ld bc, $c00a                                     ; $571d: $01 $0a $c0
	ld bc, $01a0                                     ; $5720: $01 $a0 $01
	ld bc, $c10d                                     ; $5723: $01 $0d $c1
	ld e, e                                          ; $5726: $5b
	add c                                            ; $5727: $81
	add e                                            ; $5728: $83
	ld [bc], a                                       ; $5729: $02
	ret c                                            ; $572a: $d8

	inc b                                            ; $572b: $04
	sbc $df                                          ; $572c: $de $df
	ldh [rAUD1LEN], a                                ; $572e: $e0 $11
	nop                                              ; $5730: $00
	nop                                              ; $5731: $00
	ld [de], a                                       ; $5732: $12
	ret nz                                           ; $5733: $c0

	ld bc, $01a0                                     ; $5734: $01 $a0 $01
	ld bc, $c011                                     ; $5737: $01 $11 $c0
	ld hl, $83d1                                     ; $573a: $21 $d1 $83
	ld [bc], a                                       ; $573d: $02
	ret c                                            ; $573e: $d8

	ret nz                                           ; $573f: $c0

	ld [hl+], a                                      ; $5740: $22
	pop de                                           ; $5741: $d1
	add e                                            ; $5742: $83
	ld [bc], a                                       ; $5743: $02
	ret c                                            ; $5744: $d8

	pop bc                                           ; $5745: $c1
	sbc a                                            ; $5746: $9f
	ret nc                                           ; $5747: $d0

	add e                                            ; $5748: $83
	ld [bc], a                                       ; $5749: $02
	ret c                                            ; $574a: $d8

	pop bc                                           ; $574b: $c1
	ld h, d                                          ; $574c: $62
	ei                                               ; $574d: $fb
	db $fd                                           ; $574e: $fd
	add e                                            ; $574f: $83
	ld [bc], a                                       ; $5750: $02
	ret c                                            ; $5751: $d8

	ldh [rAUD1ENV], a                                ; $5752: $e0 $12
	pop bc                                           ; $5754: $c1
	sub b                                            ; $5755: $90
	pop bc                                           ; $5756: $c1
	ld d, e                                          ; $5757: $53
	ret nz                                           ; $5758: $c0

	inc d                                            ; $5759: $14
	db $e3                                           ; $575a: $e3
	nop                                              ; $575b: $00
	inc a                                            ; $575c: $3c
	db $fd                                           ; $575d: $fd
	pop bc                                           ; $575e: $c1
	ld h, [hl]                                       ; $575f: $66
	add e                                            ; $5760: $83
	ld [bc], a                                       ; $5761: $02
	ret c                                            ; $5762: $d8

	ld bc, $28d0                                     ; $5763: $01 $d0 $28
	pop hl                                           ; $5766: $e1
	ld [bc], a                                       ; $5767: $02
	nop                                              ; $5768: $00
	ret nz                                           ; $5769: $c0

	ld h, b                                          ; $576a: $60
	add b                                            ; $576b: $80
	nop                                              ; $576c: $00
	ld [hl], d                                       ; $576d: $72
	inc c                                            ; $576e: $0c
	ret nz                                           ; $576f: $c0

	ld bc, $02a0                                     ; $5770: $01 $a0 $02
	ld [bc], a                                       ; $5773: $02
	add b                                            ; $5774: $80
	ret nz                                           ; $5775: $c0

	ld bc, $01a0                                     ; $5776: $01 $a0 $01
	ld [bc], a                                       ; $5779: $02
	add a                                            ; $577a: $87
	inc c                                            ; $577b: $0c
	ret nz                                           ; $577c: $c0

	ld bc, $02a0                                     ; $577d: $01 $a0 $02
	ld [bc], a                                       ; $5780: $02
	adc l                                            ; $5781: $8d
	ret nz                                           ; $5782: $c0

	ld bc, $01a0                                     ; $5783: $01 $a0 $01
	nop                                              ; $5786: $00
	dec bc                                           ; $5787: $0b
	ret nz                                           ; $5788: $c0

	ld bc, $02a0                                     ; $5789: $01 $a0 $02
	nop                                              ; $578c: $00
	rrca                                             ; $578d: $0f
	ld bc, $16d1                                     ; $578e: $01 $d1 $16
	pop hl                                           ; $5791: $e1
	ld [bc], a                                       ; $5792: $02
	ld bc, $c008                                     ; $5793: $01 $08 $c0
	ld bc, $03a0                                     ; $5796: $01 $a0 $03
	ld [bc], a                                       ; $5799: $02
	and b                                            ; $579a: $a0
	ret nz                                           ; $579b: $c0

	ld bc, $01a0                                     ; $579c: $01 $a0 $01
	nop                                              ; $579f: $00
	dec bc                                           ; $57a0: $0b
	ret nz                                           ; $57a1: $c0

	ld bc, $03a0                                     ; $57a2: $01 $a0 $03
	nop                                              ; $57a5: $00
	ld e, $01                                        ; $57a6: $1e $01
	jp nc, $e116                                     ; $57a8: $d2 $16 $e1

	ld [bc], a                                       ; $57ab: $02
	ld bc, $c050                                     ; $57ac: $01 $50 $c0
	ld bc, $04a0                                     ; $57af: $01 $a0 $04
	ld [bc], a                                       ; $57b2: $02
	xor a                                            ; $57b3: $af
	ret nz                                           ; $57b4: $c0

	ld bc, $01a0                                     ; $57b5: $01 $a0 $01
	ld [bc], a                                       ; $57b8: $02
	cp a                                             ; $57b9: $bf
	ret nz                                           ; $57ba: $c0

	ld bc, $04a0                                     ; $57bb: $01 $a0 $04
	nop                                              ; $57be: $00
	cpl                                              ; $57bf: $2f
	ld bc, $16d3                                     ; $57c0: $01 $d3 $16
	pop hl                                           ; $57c3: $e1
	ld [bc], a                                       ; $57c4: $02
	ld bc, $c098                                     ; $57c5: $01 $98 $c0
	ld bc, $05a0                                     ; $57c8: $01 $a0 $05
	ld [bc], a                                       ; $57cb: $02
	add $c0                                          ; $57cc: $c6 $c0
	ld bc, $01a0                                     ; $57ce: $01 $a0 $01
	ld [bc], a                                       ; $57d1: $02
	reti                                             ; $57d2: $d9


	ret nz                                           ; $57d3: $c0

	ld bc, $05a0                                     ; $57d4: $01 $a0 $05
	nop                                              ; $57d7: $00
	ld c, d                                          ; $57d8: $4a
	ld bc, $16d7                                     ; $57d9: $01 $d7 $16
	pop hl                                           ; $57dc: $e1
	ld [bc], a                                       ; $57dd: $02
	ld bc, $c0e0                                     ; $57de: $01 $e0 $c0
	ld bc, $08a0                                     ; $57e1: $01 $a0 $08
	ld [bc], a                                       ; $57e4: $02
	sbc $c0                                          ; $57e5: $de $c0
	ld bc, $01a0                                     ; $57e7: $01 $a0 $01
	nop                                              ; $57ea: $00
	dec bc                                           ; $57eb: $0b
	ret nz                                           ; $57ec: $c0

	ld bc, $08a0                                     ; $57ed: $01 $a0 $08
	ld bc, $0170                                     ; $57f0: $01 $70 $01
	ret c                                            ; $57f3: $d8

	ld d, $e1                                        ; $57f4: $16 $e1
	ld [bc], a                                       ; $57f6: $02
	ld [bc], a                                       ; $57f7: $02
	db $10                                           ; $57f8: $10
	ret nz                                           ; $57f9: $c0

	ld bc, $09a0                                     ; $57fa: $01 $a0 $09
	ld [bc], a                                       ; $57fd: $02
	db $ed                                           ; $57fe: $ed
	ret nz                                           ; $57ff: $c0

	ld bc, $01a0                                     ; $5800: $01 $a0 $01
	nop                                              ; $5803: $00
	dec bc                                           ; $5804: $0b
	ret nz                                           ; $5805: $c0

	ld bc, $09a0                                     ; $5806: $01 $a0 $09
	ld [bc], a                                       ; $5809: $02
	ei                                               ; $580a: $fb
	ld bc, $16da                                     ; $580b: $01 $da $16
	pop hl                                           ; $580e: $e1
	ld [bc], a                                       ; $580f: $02
	ld [bc], a                                       ; $5810: $02
	ld b, b                                          ; $5811: $40
	ret nz                                           ; $5812: $c0

	ld bc, $06a0                                     ; $5813: $01 $a0 $06
	inc bc                                           ; $5816: $03
	inc bc                                           ; $5817: $03
	ret nz                                           ; $5818: $c0

	ld bc, $01a0                                     ; $5819: $01 $a0 $01
	nop                                              ; $581c: $00
	add a                                            ; $581d: $87
	ret nz                                           ; $581e: $c0

	ld bc, $06a0                                     ; $581f: $01 $a0 $06
	ld [bc], a                                       ; $5822: $02
	ld a, $01                                        ; $5823: $3e $01
	db $dd                                           ; $5825: $dd
	ld d, $e1                                        ; $5826: $16 $e1
	ld [bc], a                                       ; $5828: $02
	ld [bc], a                                       ; $5829: $02
	ld [hl], b                                       ; $582a: $70
	ret nz                                           ; $582b: $c0

	ld bc, $0aa0                                     ; $582c: $01 $a0 $0a
	inc bc                                           ; $582f: $03
	inc de                                           ; $5830: $13
	ret nz                                           ; $5831: $c0

	ld bc, $01a0                                     ; $5832: $01 $a0 $01
	nop                                              ; $5835: $00
	dec bc                                           ; $5836: $0b
	ret nz                                           ; $5837: $c0

	ld bc, $0aa0                                     ; $5838: $01 $a0 $0a
	inc bc                                           ; $583b: $03
	ld hl, $de01                                     ; $583c: $21 $01 $de
	dec sp                                           ; $583f: $3b
	ret nz                                           ; $5840: $c0

	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	and l                                            ; $5843: $a5
	pop bc                                           ; $5844: $c1
	ld d, l                                          ; $5845: $55
	ret nc                                           ; $5846: $d0

	pop hl                                           ; $5847: $e1
	ld [bc], a                                       ; $5848: $02
	ld [bc], a                                       ; $5849: $02
	sbc [hl]                                         ; $584a: $9e
	pop bc                                           ; $584b: $c1
	or d                                             ; $584c: $b2
	db $e3                                           ; $584d: $e3
	nop                                              ; $584e: $00
	inc de                                           ; $584f: $13
	ret nz                                           ; $5850: $c0

	ld bc, $0da0                                     ; $5851: $01 $a0 $0d
	nop                                              ; $5854: $00
	xor c                                            ; $5855: $a9
	ret nz                                           ; $5856: $c0

	ld bc, $01a0                                     ; $5857: $01 $a0 $01
	nop                                              ; $585a: $00
	xor h                                            ; $585b: $ac
	ret nz                                           ; $585c: $c0

	ld bc, $0da0                                     ; $585d: $01 $a0 $0d
	inc bc                                           ; $5860: $03
	add hl, hl                                       ; $5861: $29
	ret nz                                           ; $5862: $c0

	ld bc, $01a0                                     ; $5863: $01 $a0 $01
	nop                                              ; $5866: $00
	or a                                             ; $5867: $b7
	pop bc                                           ; $5868: $c1
	or d                                             ; $5869: $b2
	db $e3                                           ; $586a: $e3
	nop                                              ; $586b: $00
	inc d                                            ; $586c: $14
	ret nz                                           ; $586d: $c0

	ld bc, $0da0                                     ; $586e: $01 $a0 $0d
	nop                                              ; $5871: $00
	cp d                                             ; $5872: $ba
	pop bc                                           ; $5873: $c1
	ld e, e                                          ; $5874: $5b
	ret nz                                           ; $5875: $c0

	ld bc, $01a0                                     ; $5876: $01 $a0 $01
	nop                                              ; $5879: $00
	cp a                                             ; $587a: $bf
	ld bc, $22df                                     ; $587b: $01 $df $22
	pop hl                                           ; $587e: $e1
	ld [bc], a                                       ; $587f: $02
	ld [bc], a                                       ; $5880: $02
	or d                                             ; $5881: $b2
	ret nz                                           ; $5882: $c0

	ld bc, $0ba0                                     ; $5883: $01 $a0 $0b
	nop                                              ; $5886: $00
	jp $01c0                                         ; $5887: $c3 $c0 $01


	and b                                            ; $588a: $a0
	ld bc, $c700                                     ; $588b: $01 $00 $c7
	ret nz                                           ; $588e: $c0

	ld bc, $0ba0                                     ; $588f: $01 $a0 $0b
	inc bc                                           ; $5892: $03
	ld sp, $01c0                                     ; $5893: $31 $c0 $01
	and b                                            ; $5896: $a0
	ld bc, $e000                                     ; $5897: $01 $00 $e0
	ret nz                                           ; $589a: $c0

	ld bc, $0ba0                                     ; $589b: $01 $a0 $0b
	nop                                              ; $589e: $00
	db $eb                                           ; $589f: $eb
	ld [bc], a                                       ; $58a0: $02
	ldh [rAUD1LEN], a                                ; $58a1: $e0 $11
	ld [hl+], a                                      ; $58a3: $22
	pop hl                                           ; $58a4: $e1
	ld [bc], a                                       ; $58a5: $02
	ld [bc], a                                       ; $58a6: $02
	db $ed                                           ; $58a7: $ed
	ret nz                                           ; $58a8: $c0

	ld bc, $01a0                                     ; $58a9: $01 $a0 $01
	nop                                              ; $58ac: $00
	rst AddAOntoHL                                          ; $58ad: $ef
	ret nz                                           ; $58ae: $c0

	ld bc, $15a0                                     ; $58af: $01 $a0 $15
	inc bc                                           ; $58b2: $03
	ld c, d                                          ; $58b3: $4a
	ret nz                                           ; $58b4: $c0

	ld bc, $01a0                                     ; $58b5: $01 $a0 $01
	ld bc, $c003                                     ; $58b8: $01 $03 $c0
	ld bc, $15a0                                     ; $58bb: $01 $a0 $15
	ld bc, $c00a                                     ; $58be: $01 $0a $c0
	ld bc, $01a0                                     ; $58c1: $01 $a0 $01
	ld bc, $c10d                                     ; $58c4: $01 $0d $c1
	ld e, e                                          ; $58c7: $5b
	add c                                            ; $58c8: $81
	add e                                            ; $58c9: $83
	ld [bc], a                                       ; $58ca: $02
	ret c                                            ; $58cb: $d8

	inc b                                            ; $58cc: $04
	sbc $df                                          ; $58cd: $de $df
	ldh [rAUD1LEN], a                                ; $58cf: $e0 $11
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	ld [de], a                                       ; $58d3: $12
	ret nz                                           ; $58d4: $c0

	ld bc, $01a0                                     ; $58d5: $01 $a0 $01
	ld bc, $c011                                     ; $58d8: $01 $11 $c0
	ld hl, $83d1                                     ; $58db: $21 $d1 $83
	ld [bc], a                                       ; $58de: $02
	ret c                                            ; $58df: $d8

	ret nz                                           ; $58e0: $c0

	ld [hl+], a                                      ; $58e1: $22
	pop de                                           ; $58e2: $d1
	add e                                            ; $58e3: $83
	ld [bc], a                                       ; $58e4: $02
	ret c                                            ; $58e5: $d8

	jr @+$0a                                         ; $58e6: $18 $08

	add hl, bc                                       ; $58e8: $09
	add hl, sp                                       ; $58e9: $39
	db $fd                                           ; $58ea: $fd
	scf                                              ; $58eb: $37
	ret nz                                           ; $58ec: $c0

	ld b, d                                          ; $58ed: $42
	ld bc, $03d0                                     ; $58ee: $01 $d0 $03
	db $e4                                           ; $58f1: $e4
	nop                                              ; $58f2: $00
	ld sp, $d101                                     ; $58f3: $31 $01 $d1
	inc bc                                           ; $58f6: $03
	db $e4                                           ; $58f7: $e4
	nop                                              ; $58f8: $00
	ld l, c                                          ; $58f9: $69
	ld bc, $03d2                                     ; $58fa: $01 $d2 $03
	db $e4                                           ; $58fd: $e4
	nop                                              ; $58fe: $00
	adc l                                            ; $58ff: $8d
	ld bc, $03d3                                     ; $5900: $01 $d3 $03
	db $e4                                           ; $5903: $e4
	nop                                              ; $5904: $00
	or c                                             ; $5905: $b1
	ld bc, $03d7                                     ; $5906: $01 $d7 $03
	db $e4                                           ; $5909: $e4
	nop                                              ; $590a: $00
	pop hl                                           ; $590b: $e1
	ld bc, $03d8                                     ; $590c: $01 $d8 $03
	db $e4                                           ; $590f: $e4
	ld bc, $0105                                     ; $5910: $01 $05 $01
	jp c, $e403                                      ; $5913: $da $03 $e4

	ld bc, $0129                                     ; $5916: $01 $29 $01
	db $dd                                           ; $5919: $dd
	inc bc                                           ; $591a: $03
	db $e4                                           ; $591b: $e4
	ld bc, $0065                                     ; $591c: $01 $65 $00
	inc bc                                           ; $591f: $03
	db $e4                                           ; $5920: $e4
	ld bc, $09b1                                     ; $5921: $01 $b1 $09
	inc a                                            ; $5924: $3c
	ret nz                                           ; $5925: $c0

	ld bc, $2ba0                                     ; $5926: $01 $a0 $2b
	nop                                              ; $5929: $00
	ld bc, $01c0                                     ; $592a: $01 $c0 $01
	and b                                            ; $592d: $a0
	ld bc, $1200                                     ; $592e: $01 $00 $12
	ret nz                                           ; $5931: $c0

	inc c                                            ; $5932: $0c
	ldh [$50], a                                     ; $5933: $e0 $50
	pop bc                                           ; $5935: $c1
	ld d, e                                          ; $5936: $53
	ret nz                                           ; $5937: $c0

	inc d                                            ; $5938: $14
	db $e3                                           ; $5939: $e3
	nop                                              ; $593a: $00
	ld e, a                                          ; $593b: $5f
	pop hl                                           ; $593c: $e1
	ld [bc], a                                       ; $593d: $02
	nop                                              ; $593e: $00
	ret c                                            ; $593f: $d8

	ret nz                                           ; $5940: $c0

	ld bc, $02a0                                     ; $5941: $01 $a0 $02

jr_087_5944:
	nop                                              ; $5944: $00
	dec de                                           ; $5945: $1b
	ret nz                                           ; $5946: $c0

	ld bc, $01a0                                     ; $5947: $01 $a0 $01
	nop                                              ; $594a: $00
	rra                                              ; $594b: $1f
	ret nz                                           ; $594c: $c0

	ld bc, $02a0                                     ; $594d: $01 $a0 $02
	nop                                              ; $5950: $00
	ld l, $c0                                        ; $5951: $2e $c0
	ld bc, $01a0                                     ; $5953: $01 $a0 $01
	nop                                              ; $5956: $00
	dec sp                                           ; $5957: $3b
	ret nz                                           ; $5958: $c0

	ld bc, $02a0                                     ; $5959: $01 $a0 $02
	nop                                              ; $595c: $00
	ld c, b                                          ; $595d: $48
	db $e4                                           ; $595e: $e4
	ld bc, $0964                                     ; $595f: $01 $64 $09
	jr z, jr_087_5944                                ; $5962: $28 $e0

	ld bc, $e147                                     ; $5964: $01 $47 $e1
	ld [bc], a                                       ; $5967: $02
	ld bc, $c020                                     ; $5968: $01 $20 $c0
	ld bc, $03a0                                     ; $596b: $01 $a0 $03

jr_087_596e:
	nop                                              ; $596e: $00
	ld d, [hl]                                       ; $596f: $56
	ret nz                                           ; $5970: $c0

	ld bc, $01a0                                     ; $5971: $01 $a0 $01
	nop                                              ; $5974: $00
	ld e, e                                          ; $5975: $5b
	ret nz                                           ; $5976: $c0

	ld bc, $03a0                                     ; $5977: $01 $a0 $03
	nop                                              ; $597a: $00
	ld l, [hl]                                       ; $597b: $6e
	ret nz                                           ; $597c: $c0

	ld bc, $01a0                                     ; $597d: $01 $a0 $01
	nop                                              ; $5980: $00
	dec sp                                           ; $5981: $3b
	ret nz                                           ; $5982: $c0

	ld bc, $03a0                                     ; $5983: $01 $a0 $03
	nop                                              ; $5986: $00
	ld [hl], a                                       ; $5987: $77
	db $e4                                           ; $5988: $e4
	ld bc, $093a                                     ; $5989: $01 $3a $09
	jr z, jr_087_596e                                ; $598c: $28 $e0

	ld bc, $e11d                                     ; $598e: $01 $1d $e1
	ld [bc], a                                       ; $5991: $02
	ld bc, $c068                                     ; $5992: $01 $68 $c0
	ld bc, $04a0                                     ; $5995: $01 $a0 $04
	nop                                              ; $5998: $00
	dec de                                           ; $5999: $1b
	ret nz                                           ; $599a: $c0

	ld bc, $01a0                                     ; $599b: $01 $a0 $01
	nop                                              ; $599e: $00
	add a                                            ; $599f: $87
	ret nz                                           ; $59a0: $c0

	ld bc, $04a0                                     ; $59a1: $01 $a0 $04
	nop                                              ; $59a4: $00
	sbc d                                            ; $59a5: $9a
	ret nz                                           ; $59a6: $c0

	ld bc, $01a0                                     ; $59a7: $01 $a0 $01
	nop                                              ; $59aa: $00
	xor b                                            ; $59ab: $a8
	ret nz                                           ; $59ac: $c0

	ld bc, $04a0                                     ; $59ad: $01 $a0 $04
	nop                                              ; $59b0: $00
	cp h                                             ; $59b1: $bc
	db $e4                                           ; $59b2: $e4
	ld bc, $0910                                     ; $59b3: $01 $10 $09
	inc [hl]                                         ; $59b6: $34
	ldh [rP1], a                                     ; $59b7: $e0 $00
	di                                               ; $59b9: $f3
	pop hl                                           ; $59ba: $e1
	ld [bc], a                                       ; $59bb: $02
	ld bc, $c0b0                                     ; $59bc: $01 $b0 $c0
	ld bc, $05a0                                     ; $59bf: $01 $a0 $05
	nop                                              ; $59c2: $00
	set 0, b                                         ; $59c3: $cb $c0
	ld bc, $01a0                                     ; $59c5: $01 $a0 $01
	nop                                              ; $59c8: $00
	rst GetHLinHL                                          ; $59c9: $cf
	ret nz                                           ; $59ca: $c0

	ld bc, $05a0                                     ; $59cb: $01 $a0 $05
	nop                                              ; $59ce: $00
	ldh [c], a                                       ; $59cf: $e2
	ret nz                                           ; $59d0: $c0

	ld bc, $01a0                                     ; $59d1: $01 $a0 $01
	nop                                              ; $59d4: $00
	dec sp                                           ; $59d5: $3b
	ret nz                                           ; $59d6: $c0

	ld bc, $05a0                                     ; $59d7: $01 $a0 $05
	nop                                              ; $59da: $00
	rst AddAOntoHL                                          ; $59db: $ef
	ret nz                                           ; $59dc: $c0

	ld bc, $01a0                                     ; $59dd: $01 $a0 $01
	nop                                              ; $59e0: $00
	ei                                               ; $59e1: $fb
	ret nz                                           ; $59e2: $c0

	ld bc, $05a0                                     ; $59e3: $01 $a0 $05
	ld bc, $e404                                     ; $59e6: $01 $04 $e4
	nop                                              ; $59e9: $00
	jp c, $2809                                      ; $59ea: $da $09 $28

	ldh [rP1], a                                     ; $59ed: $e0 $00
	cp l                                             ; $59ef: $bd
	pop hl                                           ; $59f0: $e1
	ld [bc], a                                       ; $59f1: $02
	ld bc, $c0f8                                     ; $59f2: $01 $f8 $c0
	ld bc, $08a0                                     ; $59f5: $01 $a0 $08

jr_087_59f8:
	ld bc, $c00c                                     ; $59f8: $01 $0c $c0
	ld bc, $01a0                                     ; $59fb: $01 $a0 $01
	ld bc, $c011                                     ; $59fe: $01 $11 $c0
	ld bc, $08a0                                     ; $5a01: $01 $a0 $08
	ld bc, $c024                                     ; $5a04: $01 $24 $c0
	ld bc, $01a0                                     ; $5a07: $01 $a0 $01
	ld bc, $c033                                     ; $5a0a: $01 $33 $c0
	ld bc, $08a0                                     ; $5a0d: $01 $a0 $08
	ld bc, $e442                                     ; $5a10: $01 $42 $e4
	nop                                              ; $5a13: $00
	or b                                             ; $5a14: $b0
	add hl, bc                                       ; $5a15: $09
	jr z, jr_087_59f8                                ; $5a16: $28 $e0

	nop                                              ; $5a18: $00
	sub e                                            ; $5a19: $93
	pop hl                                           ; $5a1a: $e1
	ld [bc], a                                       ; $5a1b: $02
	ld [bc], a                                       ; $5a1c: $02
	jr z, @-$3e                                      ; $5a1d: $28 $c0

	ld bc, $09a0                                     ; $5a1f: $01 $a0 $09
	ld bc, $c053                                     ; $5a22: $01 $53 $c0
	ld bc, $01a0                                     ; $5a25: $01 $a0 $01
	ld bc, $c056                                     ; $5a28: $01 $56 $c0
	ld bc, $09a0                                     ; $5a2b: $01 $a0 $09
	ld bc, $c069                                     ; $5a2e: $01 $69 $c0
	ld bc, $01a0                                     ; $5a31: $01 $a0 $01
	nop                                              ; $5a34: $00
	dec sp                                           ; $5a35: $3b
	ret nz                                           ; $5a36: $c0

	ld bc, $09a0                                     ; $5a37: $01 $a0 $09
	ld bc, $e471                                     ; $5a3a: $01 $71 $e4
	nop                                              ; $5a3d: $00
	add [hl]                                         ; $5a3e: $86
	add hl, bc                                       ; $5a3f: $09
	ld b, b                                          ; $5a40: $40
	ldh [rP1], a                                     ; $5a41: $e0 $00
	ld l, c                                          ; $5a43: $69
	pop hl                                           ; $5a44: $e1
	ld [bc], a                                       ; $5a45: $02
	ld [bc], a                                       ; $5a46: $02
	ld e, b                                          ; $5a47: $58
	ret nz                                           ; $5a48: $c0

	ld bc, $06a0                                     ; $5a49: $01 $a0 $06
	ld bc, $c07f                                     ; $5a4c: $01 $7f $c0
	ld bc, $01a0                                     ; $5a4f: $01 $a0 $01
	ld bc, $c085                                     ; $5a52: $01 $85 $c0
	ld bc, $06a0                                     ; $5a55: $01 $a0 $06
	ld bc, $c092                                     ; $5a58: $01 $92 $c0
	ld bc, $01a0                                     ; $5a5b: $01 $a0 $01
	ld bc, $c09f                                     ; $5a5e: $01 $9f $c0
	ld bc, $06a0                                     ; $5a61: $01 $a0 $06

jr_087_5a64:
	ld bc, $c0a8                                     ; $5a64: $01 $a8 $c0
	ld bc, $01a0                                     ; $5a67: $01 $a0 $01
	ld bc, $c0b0                                     ; $5a6a: $01 $b0 $c0
	ld bc, $06a0                                     ; $5a6d: $01 $a0 $06
	ld bc, $c0c1                                     ; $5a70: $01 $c1 $c0
	ld bc, $01a0                                     ; $5a73: $01 $a0 $01
	ld bc, $c0cf                                     ; $5a76: $01 $cf $c0
	ld bc, $06a0                                     ; $5a79: $01 $a0 $06
	ld bc, $e4db                                     ; $5a7c: $01 $db $e4
	nop                                              ; $5a7f: $00
	ld b, h                                          ; $5a80: $44
	add hl, bc                                       ; $5a81: $09
	jr z, jr_087_5a64                                ; $5a82: $28 $e0

	nop                                              ; $5a84: $00
	daa                                              ; $5a85: $27
	pop hl                                           ; $5a86: $e1
	ld [bc], a                                       ; $5a87: $02
	ld [bc], a                                       ; $5a88: $02
	adc b                                            ; $5a89: $88
	ret nz                                           ; $5a8a: $c0

	ld bc, $0aa0                                     ; $5a8b: $01 $a0 $0a
	nop                                              ; $5a8e: $00
	set 0, b                                         ; $5a8f: $cb $c0
	ld bc, $01a0                                     ; $5a91: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest                                     ; $5a94: $01 $e6 $c0
	ld bc, $0aa0                                     ; $5a97: $01 $a0 $0a
	ld bc, $c0f9                                     ; $5a9a: $01 $f9 $c0
	ld bc, $01a0                                     ; $5a9d: $01 $a0 $01
	nop                                              ; $5aa0: $00
	dec sp                                           ; $5aa1: $3b
	ret nz                                           ; $5aa2: $c0

	ld bc, $0aa0                                     ; $5aa3: $01 $a0 $0a
	ld [bc], a                                       ; $5aa6: $02
	inc bc                                           ; $5aa7: $03
	db $e4                                           ; $5aa8: $e4
	nop                                              ; $5aa9: $00
	ld a, [de]                                       ; $5aaa: $1a
	rla                                              ; $5aab: $17
	ret nz                                           ; $5aac: $c0

	ld bc, $2ba0                                     ; $5aad: $01 $a0 $2b
	ld [bc], a                                       ; $5ab0: $02
	inc c                                            ; $5ab1: $0c
	ret nz                                           ; $5ab2: $c0

	ld bc, $01a0                                     ; $5ab3: $01 $a0 $01
	ld [bc], a                                       ; $5ab6: $02
	inc e                                            ; $5ab7: $1c
	ret nz                                           ; $5ab8: $c0

	inc c                                            ; $5ab9: $0c
	ldh [$50], a                                     ; $5aba: $e0 $50
	pop bc                                           ; $5abc: $c1
	ld d, e                                          ; $5abd: $53
	ret nz                                           ; $5abe: $c0

	inc d                                            ; $5abf: $14
	db $e3                                           ; $5ac0: $e3
	nop                                              ; $5ac1: $00
	ld e, a                                          ; $5ac2: $5f
	add hl, bc                                       ; $5ac3: $09
	dec c                                            ; $5ac4: $0d
	pop bc                                           ; $5ac5: $c1
	ld e, e                                          ; $5ac6: $5b
	ret nz                                           ; $5ac7: $c0

	ld bc, $01a0                                     ; $5ac8: $01 $a0 $01
	ld [bc], a                                       ; $5acb: $02
	inc h                                            ; $5acc: $24
	ret nz                                           ; $5acd: $c0

	push af                                          ; $5ace: $f5
	db $e4                                           ; $5acf: $e4
	nop                                              ; $5ad0: $00
	ld [bc], a                                       ; $5ad1: $02
	add hl, bc                                       ; $5ad2: $09
	inc e                                            ; $5ad3: $1c
	ret nz                                           ; $5ad4: $c0

	inc c                                            ; $5ad5: $0c
	ldh [$5a], a                                     ; $5ad6: $e0 $5a
	ret nz                                           ; $5ad8: $c0

	dec bc                                           ; $5ad9: $0b
	db $e3                                           ; $5ada: $e3
	nop                                              ; $5adb: $00
	inc l                                            ; $5adc: $2c
	ret nz                                           ; $5add: $c0

	nop                                              ; $5ade: $00
	ld [bc], a                                       ; $5adf: $02
	ld [hl], $c0                                     ; $5ae0: $36 $c0
	ld h, e                                          ; $5ae2: $63
	ret nc                                           ; $5ae3: $d0

	adc a                                            ; $5ae4: $8f
	ld bc, $d81c                                     ; $5ae5: $01 $1c $d8
	ld b, b                                          ; $5ae8: $40
	add b                                            ; $5ae9: $80
	nop                                              ; $5aea: $00
	ld b, a                                          ; $5aeb: $47
	push hl                                          ; $5aec: $e5
	ld c, $00                                        ; $5aed: $0e $00
	nop                                              ; $5aef: $00
	jr jr_087_5afa                                   ; $5af0: $18 $08

	add hl, bc                                       ; $5af2: $09
	ld l, e                                          ; $5af3: $6b
	ld b, l                                          ; $5af4: $45
	add b                                            ; $5af5: $80
	and b                                            ; $5af6: $a0
	nop                                              ; $5af7: $00
	add d                                            ; $5af8: $82
	and b                                            ; $5af9: $a0

jr_087_5afa:
	ld bc, $a080                                     ; $5afa: $01 $80 $a0
	inc b                                            ; $5afd: $04
	add b                                            ; $5afe: $80
	and b                                            ; $5aff: $a0
	dec b                                            ; $5b00: $05
	add b                                            ; $5b01: $80
	and b                                            ; $5b02: $a0
	ld b, $80                                        ; $5b03: $06 $80
	and b                                            ; $5b05: $a0
	rlca                                             ; $5b06: $07
	pop bc                                           ; $5b07: $c1
	ld d, e                                          ; $5b08: $53
	ret nz                                           ; $5b09: $c0

	inc d                                            ; $5b0a: $14
	db $e3                                           ; $5b0b: $e3
	nop                                              ; $5b0c: $00
	ld c, c                                          ; $5b0d: $49
	ret nz                                           ; $5b0e: $c0

	ld bc, $01a0                                     ; $5b0f: $01 $a0 $01
	nop                                              ; $5b12: $00
	ld bc, $81d0                                     ; $5b13: $01 $d0 $81
	and b                                            ; $5b16: $a0
	ld [$e0d1], sp                                   ; $5b17: $08 $d1 $e0
	nop                                              ; $5b1a: $00
	ld b, l                                          ; $5b1b: $45
	ret nc                                           ; $5b1c: $d0

	add c                                            ; $5b1d: $81
	and b                                            ; $5b1e: $a0
	ld [$e0d2], sp                                   ; $5b1f: $08 $d2 $e0
	nop                                              ; $5b22: $00
	dec a                                            ; $5b23: $3d
	ret nc                                           ; $5b24: $d0

	add c                                            ; $5b25: $81
	and b                                            ; $5b26: $a0
	ld [$e0d3], sp                                   ; $5b27: $08 $d3 $e0
	nop                                              ; $5b2a: $00
	dec [hl]                                         ; $5b2b: $35
	ei                                               ; $5b2c: $fb
	ei                                               ; $5b2d: $fb
	ret nz                                           ; $5b2e: $c0

	add e                                            ; $5b2f: $83
	call nc, Call_087_64e0                           ; $5b30: $d4 $e0 $64
	inc b                                            ; $5b33: $04
	nop                                              ; $5b34: $00
	add b                                            ; $5b35: $80
	and b                                            ; $5b36: $a0
	inc b                                            ; $5b37: $04
	ei                                               ; $5b38: $fb
	ei                                               ; $5b39: $fb
	ret nz                                           ; $5b3a: $c0

	add e                                            ; $5b3b: $83
	push de                                          ; $5b3c: $d5
	ldh [$64], a                                     ; $5b3d: $e0 $64
	inc b                                            ; $5b3f: $04
	nop                                              ; $5b40: $00
	add b                                            ; $5b41: $80
	and b                                            ; $5b42: $a0
	dec b                                            ; $5b43: $05
	ei                                               ; $5b44: $fb
	ei                                               ; $5b45: $fb
	ret nz                                           ; $5b46: $c0

	add e                                            ; $5b47: $83
	sub $e0                                          ; $5b48: $d6 $e0
	ld h, h                                          ; $5b4a: $64
	inc b                                            ; $5b4b: $04
	nop                                              ; $5b4c: $00
	add b                                            ; $5b4d: $80
	and b                                            ; $5b4e: $a0
	ld b, $fb                                        ; $5b4f: $06 $fb
	ei                                               ; $5b51: $fb
	ret nz                                           ; $5b52: $c0

	add e                                            ; $5b53: $83
	rst SubAFromHL                                          ; $5b54: $d7
	ldh [$64], a                                     ; $5b55: $e0 $64
	inc b                                            ; $5b57: $04
	nop                                              ; $5b58: $00
	add b                                            ; $5b59: $80
	and b                                            ; $5b5a: $a0
	rlca                                             ; $5b5b: $07
	db $e4                                           ; $5b5c: $e4
	nop                                              ; $5b5d: $00
	ld de, $fb0e                                     ; $5b5e: $11 $0e $fb
	ei                                               ; $5b61: $fb
	ret nz                                           ; $5b62: $c0

	add e                                            ; $5b63: $83
	add c                                            ; $5b64: $81
	and b                                            ; $5b65: $a0
	ld [$64e0], sp                                   ; $5b66: $08 $e0 $64
	inc b                                            ; $5b69: $04
	jr nz, @-$7c                                     ; $5b6a: $20 $82

	and b                                            ; $5b6c: $a0
	ld bc, $a709                                     ; $5b6d: $01 $09 $a7
	ld h, c                                          ; $5b70: $61
	cp $11                                           ; $5b71: $fe $11
	db $fc                                           ; $5b73: $fc
	add d                                            ; $5b74: $82
	and b                                            ; $5b75: $a0
	ld bc, $80d3                                     ; $5b76: $01 $d3 $80
	and b                                            ; $5b79: $a0
	inc b                                            ; $5b7a: $04
	add b                                            ; $5b7b: $80
	and b                                            ; $5b7c: $a0
	dec b                                            ; $5b7d: $05
	add b                                            ; $5b7e: $80
	and b                                            ; $5b7f: $a0
	ld b, $80                                        ; $5b80: $06 $80
	and b                                            ; $5b82: $a0
	rlca                                             ; $5b83: $07
	add hl, bc                                       ; $5b84: $09
	ret nz                                           ; $5b85: $c0

	ld bc, $01a0                                     ; $5b86: $01 $a0 $01
	nop                                              ; $5b89: $00
	ld [$00e4], sp                                   ; $5b8a: $08 $e4 $00
	db $db                                           ; $5b8d: $db
	cp $14                                           ; $5b8e: $fe $14
	db $fc                                           ; $5b90: $fc
	add d                                            ; $5b91: $82
	and b                                            ; $5b92: $a0
	ld bc, $f1d0                                     ; $5b93: $01 $d0 $f1
	rst $38                                          ; $5b96: $ff
	inc c                                            ; $5b97: $0c
	add b                                            ; $5b98: $80
	and b                                            ; $5b99: $a0
	inc b                                            ; $5b9a: $04
	add b                                            ; $5b9b: $80
	and b                                            ; $5b9c: $a0
	dec b                                            ; $5b9d: $05
	add b                                            ; $5b9e: $80
	and b                                            ; $5b9f: $a0
	ld b, $80                                        ; $5ba0: $06 $80
	and b                                            ; $5ba2: $a0
	rlca                                             ; $5ba3: $07
	add hl, bc                                       ; $5ba4: $09
	ret nz                                           ; $5ba5: $c0

	ld bc, $01a0                                     ; $5ba6: $01 $a0 $01
	nop                                              ; $5ba9: $00
	inc e                                            ; $5baa: $1c
	db $e4                                           ; $5bab: $e4
	nop                                              ; $5bac: $00
	ld l, e                                          ; $5bad: $6b
	ld l, b                                          ; $5bae: $68
	ret nz                                           ; $5baf: $c0

	ld bc, $01a0                                     ; $5bb0: $01 $a0 $01
	nop                                              ; $5bb3: $00
	ld l, $82                                        ; $5bb4: $2e $82
	add d                                            ; $5bb6: $82
	and b                                            ; $5bb7: $a0
	ld bc, wCurrMenuOption                                     ; $5bb8: $01 $01 $d2
	ld b, $c0                                        ; $5bbb: $06 $c0
	ld bc, $01a0                                     ; $5bbd: $01 $a0 $01
	nop                                              ; $5bc0: $00

Call_087_5bc1:
Jump_087_5bc1:
	inc a                                            ; $5bc1: $3c
	ld bc, $06d1                                     ; $5bc2: $01 $d1 $06
	ret nz                                           ; $5bc5: $c0

	ld bc, $01a0                                     ; $5bc6: $01 $a0 $01
	nop                                              ; $5bc9: $00
	ld c, c                                          ; $5bca: $49
	ld bc, $06d0                                     ; $5bcb: $01 $d0 $06
	ret nz                                           ; $5bce: $c0

	ld bc, $01a0                                     ; $5bcf: $01 $a0 $01
	nop                                              ; $5bd2: $00
	ld d, [hl]                                       ; $5bd3: $56
	ld h, d                                          ; $5bd4: $62
	pop af                                           ; $5bd5: $f1
	rst $38                                          ; $5bd6: $ff
	ld b, $80                                        ; $5bd7: $06 $80
	and b                                            ; $5bd9: $a0
	inc b                                            ; $5bda: $04
	add b                                            ; $5bdb: $80
	and b                                            ; $5bdc: $a0
	rlca                                             ; $5bdd: $07
	ld b, $c0                                        ; $5bde: $06 $c0
	ld bc, $01a0                                     ; $5be0: $01 $a0 $01
	nop                                              ; $5be3: $00
	ld h, b                                          ; $5be4: $60
	pop af                                           ; $5be5: $f1
	add b                                            ; $5be6: $80
	and b                                            ; $5be7: $a0
	inc b                                            ; $5be8: $04
	ld b, $c0                                        ; $5be9: $06 $c0
	ld bc, $01a0                                     ; $5beb: $01 $a0 $01
	nop                                              ; $5bee: $00
	ld l, h                                          ; $5bef: $6c
	pop af                                           ; $5bf0: $f1
	add b                                            ; $5bf1: $80
	and b                                            ; $5bf2: $a0
	rlca                                             ; $5bf3: $07
	ld b, $c0                                        ; $5bf4: $06 $c0
	ld bc, $01a0                                     ; $5bf6: $01 $a0 $01
	nop                                              ; $5bf9: $00
	halt                                             ; $5bfa: $76
	nop                                              ; $5bfb: $00
	ei                                               ; $5bfc: $fb
	pop af                                           ; $5bfd: $f1
	add b                                            ; $5bfe: $80
	and b                                            ; $5bff: $a0
	dec b                                            ; $5c00: $05
	ld b, $c0                                        ; $5c01: $06 $c0
	ld bc, $01a0                                     ; $5c03: $01 $a0 $01
	nop                                              ; $5c06: $00
	add c                                            ; $5c07: $81
	ei                                               ; $5c08: $fb
	pop af                                           ; $5c09: $f1
	add b                                            ; $5c0a: $80
	and b                                            ; $5c0b: $a0
	ld b, $06                                        ; $5c0c: $06 $06
	ret nz                                           ; $5c0e: $c0

	ld bc, $01a0                                     ; $5c0f: $01 $a0 $01
	nop                                              ; $5c12: $00
	adc e                                            ; $5c13: $8b
	db $e4                                           ; $5c14: $e4
	nop                                              ; $5c15: $00
	ld [bc], a                                       ; $5c16: $02
	add hl, bc                                       ; $5c17: $09
	ld c, [hl]                                       ; $5c18: $4e
	db $fd                                           ; $5c19: $fd
	ld c, c                                          ; $5c1a: $49
	ret nz                                           ; $5c1b: $c0

	ld b, d                                          ; $5c1c: $42
	ld bc, $06d1                                     ; $5c1d: $01 $d1 $06
	ret nz                                           ; $5c20: $c0

	ld bc, $01a0                                     ; $5c21: $01 $a0 $01
	nop                                              ; $5c24: $00
	sub d                                            ; $5c25: $92
	ld bc, $06d2                                     ; $5c26: $01 $d2 $06
	ret nz                                           ; $5c29: $c0

	ld bc, $01a0                                     ; $5c2a: $01 $a0 $01
	nop                                              ; $5c2d: $00
	sbc l                                            ; $5c2e: $9d
	ld bc, $06d3                                     ; $5c2f: $01 $d3 $06
	ret nz                                           ; $5c32: $c0

	ld bc, $01a0                                     ; $5c33: $01 $a0 $01
	nop                                              ; $5c36: $00
	xor b                                            ; $5c37: $a8
	ld bc, $06d7                                     ; $5c38: $01 $d7 $06
	ret nz                                           ; $5c3b: $c0

	ld bc, $01a0                                     ; $5c3c: $01 $a0 $01
	nop                                              ; $5c3f: $00
	or e                                             ; $5c40: $b3
	ld bc, $06d8                                     ; $5c41: $01 $d8 $06
	ret nz                                           ; $5c44: $c0

	ld bc, $01a0                                     ; $5c45: $01 $a0 $01
	nop                                              ; $5c48: $00
	cp [hl]                                          ; $5c49: $be
	ld bc, $06da                                     ; $5c4a: $01 $da $06
	ret nz                                           ; $5c4d: $c0

	ld bc, $01a0                                     ; $5c4e: $01 $a0 $01
	nop                                              ; $5c51: $00
	ret                                              ; $5c52: $c9


	ld bc, $06dd                                     ; $5c53: $01 $dd $06
	ret nz                                           ; $5c56: $c0

	ld bc, $01a0                                     ; $5c57: $01 $a0 $01
	nop                                              ; $5c5a: $00
	call nc, $0600                                   ; $5c5b: $d4 $00 $06
	ret nz                                           ; $5c5e: $c0

	ld bc, $01a0                                     ; $5c5f: $01 $a0 $01
	nop                                              ; $5c62: $00
	rst SubAFromDE                                          ; $5c63: $df
	db $e4                                           ; $5c64: $e4
	nop                                              ; $5c65: $00
	ld [bc], a                                       ; $5c66: $02
	jr z, jr_087_5c83                                ; $5c67: $28 $1a

	and b                                            ; $5c69: $a0
	add b                                            ; $5c6a: $80
	and b                                            ; $5c6b: $a0
	ld a, [bc]                                       ; $5c6c: $0a
	nop                                              ; $5c6d: $00
	inc c                                            ; $5c6e: $0c
	ret nz                                           ; $5c6f: $c0

	ld bc, $01a0                                     ; $5c70: $01 $a0 $01
	nop                                              ; $5c73: $00
	and $c0                                          ; $5c74: $e6 $c0
	ld bc, $01a0                                     ; $5c76: $01 $a0 $01
	nop                                              ; $5c79: $00
	rst FarCall                                          ; $5c7a: $f7
	rst $38                                          ; $5c7b: $ff
	ld b, $c0                                        ; $5c7c: $06 $c0
	ld bc, $01a0                                     ; $5c7e: $01 $a0 $01
	nop                                              ; $5c81: $00
	db $fd                                           ; $5c82: $fd

jr_087_5c83:
	ld l, l                                          ; $5c83: $6d
	ld bc, $0906                                     ; $5c84: $01 $06 $09
	rlca                                             ; $5c87: $07
	nop                                              ; $5c88: $00
	add b                                            ; $5c89: $80
	and b                                            ; $5c8a: $a0
	nop                                              ; $5c8b: $00
	db $e4                                           ; $5c8c: $e4
	nop                                              ; $5c8d: $00
	ld h, h                                          ; $5c8e: $64
	ld bc, $090b                                     ; $5c8f: $01 $0b $09
	inc bc                                           ; $5c92: $03
	db $e4                                           ; $5c93: $e4
	nop                                              ; $5c94: $00
	ld e, l                                          ; $5c95: $5d
	ld bc, $0911                                     ; $5c96: $01 $11 $09
	ld d, a                                          ; $5c99: $57
	db $fd                                           ; $5c9a: $fd
	ld d, l                                          ; $5c9b: $55
	ret nz                                           ; $5c9c: $c0

	call c, $01d1                                    ; $5c9d: $dc $d1 $01
	ret nc                                           ; $5ca0: $d0

	ld b, $c0                                        ; $5ca1: $06 $c0
	ld bc, $01a0                                     ; $5ca3: $01 $a0 $01
	ld bc, $011a                                     ; $5ca6: $01 $1a $01
	pop de                                           ; $5ca9: $d1
	ld b, $c0                                        ; $5caa: $06 $c0
	ld bc, $01a0                                     ; $5cac: $01 $a0 $01
	ld bc, $012b                                     ; $5caf: $01 $2b $01
	jp nc, $c006                                     ; $5cb2: $d2 $06 $c0

	ld bc, $01a0                                     ; $5cb5: $01 $a0 $01
	ld bc, $013b                                     ; $5cb8: $01 $3b $01
	db $d3                                           ; $5cbb: $d3
	ld b, $c0                                        ; $5cbc: $06 $c0
	ld bc, $01a0                                     ; $5cbe: $01 $a0 $01
	ld bc, $014b                     ; $5cc1: $01 $4b $01
	rst SubAFromHL                                          ; $5cc4: $d7
	ld b, $c0                                        ; $5cc5: $06 $c0
	ld bc, $01a0                                     ; $5cc7: $01 $a0 $01
	ld bc, $015c                                     ; $5cca: $01 $5c $01
	ret c                                            ; $5ccd: $d8

	ld b, $c0                                        ; $5cce: $06 $c0
	ld bc, $01a0                                     ; $5cd0: $01 $a0 $01
	ld bc, $0177                                     ; $5cd3: $01 $77 $01
	db $dd                                           ; $5cd6: $dd
	ld b, $c0                                        ; $5cd7: $06 $c0
	ld bc, $01a0                                     ; $5cd9: $01 $a0 $01
	ld bc, $0186                                     ; $5cdc: $01 $86 $01
	rst SubAFromDE                                          ; $5cdf: $df
	ld b, $c0                                        ; $5ce0: $06 $c0
	ld bc, $01a0                                     ; $5ce2: $01 $a0 $01
	ld bc, $0297                                     ; $5ce5: $01 $97 $02
	ldh [rAUD1SWEEP], a                              ; $5ce8: $e0 $10
	ld b, $c0                                        ; $5cea: $06 $c0
	ld bc, $01a0                                     ; $5cec: $01 $a0 $01
	ld bc, $09ab                                     ; $5cef: $01 $ab $09
	and d                                            ; $5cf2: $a2
	ret nz                                           ; $5cf3: $c0

	ld bc, $01a0                                     ; $5cf4: $01 $a0 $01
	ld bc, $c1ba                                     ; $5cf7: $01 $ba $c1
	ld e, c                                          ; $5cfa: $59
	db $e3                                           ; $5cfb: $e3
	nop                                              ; $5cfc: $00
	ld d, c                                          ; $5cfd: $51
	ret nz                                           ; $5cfe: $c0

	ld bc, $01a0                                     ; $5cff: $01 $a0 $01
	ld bc, $60c2                                     ; $5d02: $01 $c2 $60
	add b                                            ; $5d05: $80
	and b                                            ; $5d06: $a0
	nop                                              ; $5d07: $00
	ld b, h                                          ; $5d08: $44
	add e                                            ; $5d09: $83
	ret nz                                           ; $5d0a: $c0

	ld b, $01                                        ; $5d0b: $06 $01
	ret nc                                           ; $5d0d: $d0

	ld de, $01c0                                     ; $5d0e: $11 $c0 $01
	and b                                            ; $5d11: $a0
	daa                                              ; $5d12: $27
	ld bc, $c0cd                                     ; $5d13: $01 $cd $c0
	add hl, bc                                       ; $5d16: $09
	db $e3                                           ; $5d17: $e3
	nop                                              ; $5d18: $00
	ld l, a                                          ; $5d19: $6f
	ret nz                                           ; $5d1a: $c0

	ld bc, $01a0                                     ; $5d1b: $01 $a0 $01
	ld bc, $01dc                                     ; $5d1e: $01 $dc $01
	pop de                                           ; $5d21: $d1
	inc c                                            ; $5d22: $0c
	ret nz                                           ; $5d23: $c0

	ld bc, $27a0                                     ; $5d24: $01 $a0 $27
	ld bc, $c0e0                                     ; $5d27: $01 $e0 $c0
	ld bc, $01a0                                     ; $5d2a: $01 $a0 $01
	ld bc, $01ee                                     ; $5d2d: $01 $ee $01
	jp nc, $c00c                                     ; $5d30: $d2 $0c $c0

	ld bc, $27a0                                     ; $5d33: $01 $a0 $27
	ld bc, $c0f2                                     ; $5d36: $01 $f2 $c0
	ld bc, $01a0                                     ; $5d39: $01 $a0 $01
	ld [bc], a                                       ; $5d3c: $02
	inc b                                            ; $5d3d: $04
	ld bc, $0cd3                                     ; $5d3e: $01 $d3 $0c
	ret nz                                           ; $5d41: $c0

	ld bc, $27a0                                     ; $5d42: $01 $a0 $27
	ld [bc], a                                       ; $5d45: $02
	add hl, bc                                       ; $5d46: $09
	ret nz                                           ; $5d47: $c0

	ld bc, $01a0                                     ; $5d48: $01 $a0 $01
	ld [bc], a                                       ; $5d4b: $02
	jr @+$46                                         ; $5d4c: $18 $44

	add e                                            ; $5d4e: $83
	ret nz                                           ; $5d4f: $c0

	rlca                                             ; $5d50: $07
	ld bc, $11d0                                     ; $5d51: $01 $d0 $11
	ret nz                                           ; $5d54: $c0

	ld bc, $27a0                                     ; $5d55: $01 $a0 $27
	ld [bc], a                                       ; $5d58: $02
	dec de                                           ; $5d59: $1b
	ret nz                                           ; $5d5a: $c0

	add hl, bc                                       ; $5d5b: $09
	db $e3                                           ; $5d5c: $e3
	nop                                              ; $5d5d: $00
	ld l, a                                          ; $5d5e: $6f
	ret nz                                           ; $5d5f: $c0

	ld bc, $01a0                                     ; $5d60: $01 $a0 $01
	ld bc, $01dc                                     ; $5d63: $01 $dc $01
	pop de                                           ; $5d66: $d1
	inc c                                            ; $5d67: $0c
	ret nz                                           ; $5d68: $c0

	ld bc, $27a0                                     ; $5d69: $01 $a0 $27
	ld [bc], a                                       ; $5d6c: $02
	cpl                                              ; $5d6d: $2f
	ret nz                                           ; $5d6e: $c0

	ld bc, $01a0                                     ; $5d6f: $01 $a0 $01
	ld bc, $01ee                                     ; $5d72: $01 $ee $01
	jp nc, $c00c                                     ; $5d75: $d2 $0c $c0

	ld bc, $27a0                                     ; $5d78: $01 $a0 $27
	ld [bc], a                                       ; $5d7b: $02
	dec a                                            ; $5d7c: $3d
	ret nz                                           ; $5d7d: $c0

	ld bc, $01a0                                     ; $5d7e: $01 $a0 $01
	ld [bc], a                                       ; $5d81: $02
	inc b                                            ; $5d82: $04
	ld bc, $0cd3                                     ; $5d83: $01 $d3 $0c
	ret nz                                           ; $5d86: $c0

	ld bc, $27a0                                     ; $5d87: $01 $a0 $27
	ld [bc], a                                       ; $5d8a: $02
	ld d, b                                          ; $5d8b: $50
	ret nz                                           ; $5d8c: $c0

	ld bc, $01a0                                     ; $5d8d: $01 $a0 $01
	ld [bc], a                                       ; $5d90: $02
	jr @-$1a                                         ; $5d91: $18 $e4

	ld [bc], a                                       ; $5d93: $02
	ldh [c], a                                       ; $5d94: $e2
	add hl, bc                                       ; $5d95: $09
	ld [hl], $c0                                     ; $5d96: $36 $c0
	inc b                                            ; $5d98: $04
	pop bc                                           ; $5d99: $c1
	dec sp                                           ; $5d9a: $3b
	pop bc                                           ; $5d9b: $c1
	ld d, e                                          ; $5d9c: $53
	ret nz                                           ; $5d9d: $c0

	add hl, bc                                       ; $5d9e: $09
	db $e3                                           ; $5d9f: $e3
	nop                                              ; $5da0: $00
	ld d, [hl]                                       ; $5da1: $56
	add e                                            ; $5da2: $83
	adc e                                            ; $5da3: $8b
	nop                                              ; $5da4: $00
	nop                                              ; $5da5: $00
	ld [bc], a                                       ; $5da6: $02

jr_087_5da7:
	or b                                             ; $5da7: $b0
	rrca                                             ; $5da8: $0f
	inc bc                                           ; $5da9: $03
	ldh [rP1], a                                     ; $5daa: $e0 $00
	ld [hl+], a                                      ; $5dac: $22
	ld [bc], a                                       ; $5dad: $02
	or b                                             ; $5dae: $b0
	ld c, $03                                        ; $5daf: $0e $03
	ldh [rP1], a                                     ; $5db1: $e0 $00
	scf                                              ; $5db3: $37
	ld [bc], a                                       ; $5db4: $02
	or b                                             ; $5db5: $b0
	db $10                                           ; $5db6: $10
	inc bc                                           ; $5db7: $03
	ldh [rP1], a                                     ; $5db8: $e0 $00
	ld c, h                                          ; $5dba: $4c
	ld [bc], a                                       ; $5dbb: $02
	or b                                             ; $5dbc: $b0
	ld de, $e003                                     ; $5dbd: $11 $03 $e0

jr_087_5dc0:
	nop                                              ; $5dc0: $00
	ld h, c                                          ; $5dc1: $61
	pop bc                                           ; $5dc2: $c1
	ret z                                            ; $5dc3: $c8

	ret nz                                           ; $5dc4: $c0

	jr z, jr_087_5da7                                ; $5dc5: $28 $e0

	inc d                                            ; $5dc7: $14
	pop bc                                           ; $5dc8: $c1
	dec sp                                           ; $5dc9: $3b
	db $e4                                           ; $5dca: $e4
	ld [bc], a                                       ; $5dcb: $02
	xor d                                            ; $5dcc: $aa
	dec de                                           ; $5dcd: $1b
	ret nz                                           ; $5dce: $c0

	inc d                                            ; $5dcf: $14
	db $e3                                           ; $5dd0: $e3
	nop                                              ; $5dd1: $00
	cp [hl]                                          ; $5dd2: $be
	ret nz                                           ; $5dd3: $c0

	ld bc, $01a0                                     ; $5dd4: $01 $a0 $01
	ld [bc], a                                       ; $5dd7: $02
	ld h, d                                          ; $5dd8: $62
	ret nz                                           ; $5dd9: $c0

	ld bc, $01a0                                     ; $5dda: $01 $a0 $01
	ld [bc], a                                       ; $5ddd: $02
	ld a, a                                          ; $5dde: $7f
	ret nz                                           ; $5ddf: $c0

	ld bc, $01a0                                     ; $5de0: $01 $a0 $01
	ld [bc], a                                       ; $5de3: $02
	adc [hl]                                         ; $5de4: $8e
	nop                                              ; $5de5: $00
	add b                                            ; $5de6: $80
	ld bc, $1b61                                     ; $5de7: $01 $61 $1b
	ret nz                                           ; $5dea: $c0

	inc d                                            ; $5deb: $14
	db $e3                                           ; $5dec: $e3
	nop                                              ; $5ded: $00
	cp a                                             ; $5dee: $bf
	ret nz                                           ; $5def: $c0

	ld bc, $01a0                                     ; $5df0: $01 $a0 $01
	ld [bc], a                                       ; $5df3: $02
	sbc c                                            ; $5df4: $99
	ret nz                                           ; $5df5: $c0

	ld bc, $01a0                                     ; $5df6: $01 $a0 $01
	ld [bc], a                                       ; $5df9: $02
	or a                                             ; $5dfa: $b7
	ret nz                                           ; $5dfb: $c0

	ld bc, $01a0                                     ; $5dfc: $01 $a0 $01
	ld [bc], a                                       ; $5dff: $02
	push bc                                          ; $5e00: $c5
	nop                                              ; $5e01: $00
	add b                                            ; $5e02: $80
	ld bc, $1b62                                     ; $5e03: $01 $62 $1b
	ret nz                                           ; $5e06: $c0

	inc d                                            ; $5e07: $14
	db $e3                                           ; $5e08: $e3
	nop                                              ; $5e09: $00
	ret nz                                           ; $5e0a: $c0

	ret nz                                           ; $5e0b: $c0

	ld bc, $01a0                                     ; $5e0c: $01 $a0 $01
	ld [bc], a                                       ; $5e0f: $02
	rst GetHLinHL                                          ; $5e10: $cf
	ret nz                                           ; $5e11: $c0

	ld bc, $01a0                                     ; $5e12: $01 $a0 $01
	ld [bc], a                                       ; $5e15: $02
	db $e4                                           ; $5e16: $e4
	ret nz                                           ; $5e17: $c0

	ld bc, $01a0                                     ; $5e18: $01 $a0 $01
	ld [bc], a                                       ; $5e1b: $02
	ldh a, [c]                                       ; $5e1c: $f2
	nop                                              ; $5e1d: $00
	add b                                            ; $5e1e: $80
	ld bc, $1b63                                     ; $5e1f: $01 $63 $1b
	ret nz                                           ; $5e22: $c0

	inc d                                            ; $5e23: $14
	db $e3                                           ; $5e24: $e3
	nop                                              ; $5e25: $00
	pop bc                                           ; $5e26: $c1
	ret nz                                           ; $5e27: $c0

	ld bc, $01a0                                     ; $5e28: $01 $a0 $01
	ld [bc], a                                       ; $5e2b: $02
	db $fd                                           ; $5e2c: $fd
	ret nz                                           ; $5e2d: $c0

	ld bc, $01a0                                     ; $5e2e: $01 $a0 $01
	inc bc                                           ; $5e31: $03
	inc d                                            ; $5e32: $14
	ret nz                                           ; $5e33: $c0

	ld bc, $01a0                                     ; $5e34: $01 $a0 $01
	inc bc                                           ; $5e37: $03
	ld hl, $8000                                     ; $5e38: $21 $00 $80
	ld bc, $0c64                                     ; $5e3b: $01 $64 $0c
	jr nc, jr_087_5dc0                               ; $5e3e: $30 $80

	and b                                            ; $5e40: $a0
	nop                                              ; $5e41: $00
	jr z, jr_087_5e4a                                ; $5e42: $28 $06

	ret nz                                           ; $5e44: $c0

	ld bc, $01a0                                     ; $5e45: $01 $a0 $01
	inc bc                                           ; $5e48: $03
	dec l                                            ; $5e49: $2d

jr_087_5e4a:
	dec c                                            ; $5e4a: $0d
	inc bc                                           ; $5e4b: $03
	inc sp                                           ; $5e4c: $33
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	ld hl, $3803                                     ; $5e4f: $21 $03 $38
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	ld [hl], c                                       ; $5e54: $71
	db $f4                                           ; $5e55: $f4
	nop                                              ; $5e56: $00
	jp $28d1                                         ; $5e57: $c3 $d1 $28


	ld b, $c0                                        ; $5e5a: $06 $c0
	ld bc, $01a0                                     ; $5e5c: $01 $a0 $01
	inc bc                                           ; $5e5f: $03
	ld b, c                                          ; $5e60: $41
	dec c                                            ; $5e61: $0d
	inc bc                                           ; $5e62: $03
	ld c, c                                          ; $5e63: $49
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	ld e, a                                          ; $5e66: $5f
	inc bc                                           ; $5e67: $03
	ld d, b                                          ; $5e68: $50
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	dec b                                            ; $5e6b: $05
	db $f4                                           ; $5e6c: $f4
	nop                                              ; $5e6d: $00
	xor h                                            ; $5e6e: $ac
	jr z, jr_087_5e7b                                ; $5e6f: $28 $0a

	nop                                              ; $5e71: $00
	add b                                            ; $5e72: $80
	ld [bc], a                                       ; $5e73: $02
	sbc h                                            ; $5e74: $9c
	ret nz                                           ; $5e75: $c0

	ld bc, $01a0                                     ; $5e76: $01 $a0 $01
	inc bc                                           ; $5e79: $03
	ld d, a                                          ; $5e7a: $57

jr_087_5e7b:
	ld c, b                                          ; $5e7b: $48
	inc bc                                           ; $5e7c: $03
	ld e, a                                          ; $5e7d: $5f
	add hl, bc                                       ; $5e7e: $09
	inc d                                            ; $5e7f: $14
	ret nz                                           ; $5e80: $c0

	ld bc, $01a0                                     ; $5e81: $01 $a0 $01
	inc bc                                           ; $5e84: $03
	ld h, h                                          ; $5e85: $64
	ret nc                                           ; $5e86: $d0

	adc e                                            ; $5e87: $8b
	ld [bc], a                                       ; $5e88: $02
	dec de                                           ; $5e89: $1b
	or b                                             ; $5e8a: $b0
	ld b, e                                          ; $5e8b: $43
	ret nc                                           ; $5e8c: $d0

	add c                                            ; $5e8d: $81
	and b                                            ; $5e8e: $a0
	dec bc                                           ; $5e8f: $0b
	pop de                                           ; $5e90: $d1
	db $e4                                           ; $5e91: $e4
	nop                                              ; $5e92: $00
	db $fc                                           ; $5e93: $fc
	inc bc                                           ; $5e94: $03
	ld l, h                                          ; $5e95: $6c
	add hl, bc                                       ; $5e96: $09
	inc d                                            ; $5e97: $14
	ret nz                                           ; $5e98: $c0

	ld bc, $01a0                                     ; $5e99: $01 $a0 $01
	inc bc                                           ; $5e9c: $03
	ld [hl], h                                       ; $5e9d: $74
	ret nc                                           ; $5e9e: $d0

	adc e                                            ; $5e9f: $8b
	ld [bc], a                                       ; $5ea0: $02
	dec de                                           ; $5ea1: $1b
	or b                                             ; $5ea2: $b0
	ld b, h                                          ; $5ea3: $44
	ret nc                                           ; $5ea4: $d0

	add c                                            ; $5ea5: $81
	and b                                            ; $5ea6: $a0
	dec bc                                           ; $5ea7: $0b
	jp nc, $00e4                                     ; $5ea8: $d2 $e4 $00

	db $e4                                           ; $5eab: $e4
	inc bc                                           ; $5eac: $03
	ld a, [hl]                                       ; $5ead: $7e
	add hl, bc                                       ; $5eae: $09
	inc d                                            ; $5eaf: $14
	ret nz                                           ; $5eb0: $c0

	ld bc, $01a0                                     ; $5eb1: $01 $a0 $01
	inc bc                                           ; $5eb4: $03
	add e                                            ; $5eb5: $83
	ret nc                                           ; $5eb6: $d0

	adc e                                            ; $5eb7: $8b
	ld [bc], a                                       ; $5eb8: $02
	dec de                                           ; $5eb9: $1b
	or b                                             ; $5eba: $b0
	ld b, l                                          ; $5ebb: $45
	ret nc                                           ; $5ebc: $d0

	add c                                            ; $5ebd: $81
	and b                                            ; $5ebe: $a0
	dec bc                                           ; $5ebf: $0b
	db $d3                                           ; $5ec0: $d3
	db $e4                                           ; $5ec1: $e4
	nop                                              ; $5ec2: $00
	call z, $0a28                                    ; $5ec3: $cc $28 $0a
	nop                                              ; $5ec6: $00
	add b                                            ; $5ec7: $80
	ld [bc], a                                       ; $5ec8: $02
	sbc l                                            ; $5ec9: $9d
	ret nz                                           ; $5eca: $c0

	ld bc, $01a0                                     ; $5ecb: $01 $a0 $01
	inc bc                                           ; $5ece: $03
	adc e                                            ; $5ecf: $8b
	ld c, b                                          ; $5ed0: $48
	inc bc                                           ; $5ed1: $03
	sub l                                            ; $5ed2: $95
	add hl, bc                                       ; $5ed3: $09
	inc d                                            ; $5ed4: $14
	ret nz                                           ; $5ed5: $c0

	ld bc, $01a0                                     ; $5ed6: $01 $a0 $01
	inc bc                                           ; $5ed9: $03
	sbc l                                            ; $5eda: $9d
	ret nc                                           ; $5edb: $d0

	adc e                                            ; $5edc: $8b
	ld [bc], a                                       ; $5edd: $02
	dec de                                           ; $5ede: $1b
	or b                                             ; $5edf: $b0
	ld b, [hl]                                       ; $5ee0: $46
	ret nc                                           ; $5ee1: $d0

	add c                                            ; $5ee2: $81
	and b                                            ; $5ee3: $a0
	dec bc                                           ; $5ee4: $0b
	pop de                                           ; $5ee5: $d1
	db $e4                                           ; $5ee6: $e4
	nop                                              ; $5ee7: $00
	call nc, $a803                                   ; $5ee8: $d4 $03 $a8
	add hl, bc                                       ; $5eeb: $09
	inc d                                            ; $5eec: $14
	ret nz                                           ; $5eed: $c0

	ld bc, $01a0                                     ; $5eee: $01 $a0 $01
	inc bc                                           ; $5ef1: $03
	or c                                             ; $5ef2: $b1
	ret nc                                           ; $5ef3: $d0

	adc e                                            ; $5ef4: $8b
	ld [bc], a                                       ; $5ef5: $02
	dec de                                           ; $5ef6: $1b
	or b                                             ; $5ef7: $b0
	ld b, a                                          ; $5ef8: $47
	ret nc                                           ; $5ef9: $d0

	add c                                            ; $5efa: $81
	and b                                            ; $5efb: $a0
	dec bc                                           ; $5efc: $0b
	jp nc, $00e4                                     ; $5efd: $d2 $e4 $00

	cp h                                             ; $5f00: $bc
	inc bc                                           ; $5f01: $03
	cp h                                             ; $5f02: $bc
	add hl, bc                                       ; $5f03: $09
	inc d                                            ; $5f04: $14
	ret nz                                           ; $5f05: $c0

	ld bc, $01a0                                     ; $5f06: $01 $a0 $01
	inc bc                                           ; $5f09: $03
	push bc                                          ; $5f0a: $c5
	ret nc                                           ; $5f0b: $d0

	adc e                                            ; $5f0c: $8b
	ld [bc], a                                       ; $5f0d: $02
	dec de                                           ; $5f0e: $1b
	or b                                             ; $5f0f: $b0
	ld c, b                                          ; $5f10: $48
	ret nc                                           ; $5f11: $d0

	add c                                            ; $5f12: $81
	and b                                            ; $5f13: $a0
	dec bc                                           ; $5f14: $0b
	db $d3                                           ; $5f15: $d3
	db $e4                                           ; $5f16: $e4
	nop                                              ; $5f17: $00
	and h                                            ; $5f18: $a4
	nop                                              ; $5f19: $00
	ld h, b                                          ; $5f1a: $60
	ei                                               ; $5f1b: $fb
	add b                                            ; $5f1c: $80
	ld bc, $1361                                     ; $5f1d: $01 $61 $13
	inc bc                                           ; $5f20: $03
	ret nc                                           ; $5f21: $d0

	add hl, bc                                       ; $5f22: $09
	rrca                                             ; $5f23: $0f
	ret nz                                           ; $5f24: $c0

	ld bc, $01a0                                     ; $5f25: $01 $a0 $01
	inc bc                                           ; $5f28: $03
	rst SubAFromHL                                          ; $5f29: $d7
	ret nc                                           ; $5f2a: $d0

	adc e                                            ; $5f2b: $8b
	ld [bc], a                                       ; $5f2c: $02
	dec de                                           ; $5f2d: $1b
	or b                                             ; $5f2e: $b0
	ld c, c                                          ; $5f2f: $49
	ldh [rP1], a                                     ; $5f30: $e0 $00
	ld c, d                                          ; $5f32: $4a
	ei                                               ; $5f33: $fb
	add b                                            ; $5f34: $80
	ld bc, $1362                                     ; $5f35: $01 $62 $13
	inc bc                                           ; $5f38: $03
	ldh [c], a                                       ; $5f39: $e2
	add hl, bc                                       ; $5f3a: $09
	rrca                                             ; $5f3b: $0f
	ret nz                                           ; $5f3c: $c0

	ld bc, $01a0                                     ; $5f3d: $01 $a0 $01
	inc bc                                           ; $5f40: $03
	db $ec                                           ; $5f41: $ec
	ret nc                                           ; $5f42: $d0

	adc e                                            ; $5f43: $8b
	ld [bc], a                                       ; $5f44: $02
	dec de                                           ; $5f45: $1b
	or b                                             ; $5f46: $b0
	ld c, d                                          ; $5f47: $4a
	ldh [rP1], a                                     ; $5f48: $e0 $00
	ld [hl-], a                                      ; $5f4a: $32
	ei                                               ; $5f4b: $fb
	add b                                            ; $5f4c: $80
	ld bc, $1363                                     ; $5f4d: $01 $63 $13
	inc bc                                           ; $5f50: $03
	ld a, [$0f09]                                    ; $5f51: $fa $09 $0f
	ret nz                                           ; $5f54: $c0

	ld bc, $01a0                                     ; $5f55: $01 $a0 $01
	inc b                                            ; $5f58: $04
	ld bc, $8bd0                                     ; $5f59: $01 $d0 $8b
	ld [bc], a                                       ; $5f5c: $02
	dec de                                           ; $5f5d: $1b
	or b                                             ; $5f5e: $b0
	ld c, h                                          ; $5f5f: $4c
	ldh [rP1], a                                     ; $5f60: $e0 $00
	ld a, [de]                                       ; $5f62: $1a
	ei                                               ; $5f63: $fb
	add b                                            ; $5f64: $80
	ld bc, $1364                                     ; $5f65: $01 $64 $13
	inc b                                            ; $5f68: $04
	dec c                                            ; $5f69: $0d
	add hl, bc                                       ; $5f6a: $09
	rrca                                             ; $5f6b: $0f
	ret nz                                           ; $5f6c: $c0

	ld bc, $01a0                                     ; $5f6d: $01 $a0 $01
	inc b                                            ; $5f70: $04
	dec d                                            ; $5f71: $15
	ret nc                                           ; $5f72: $d0

	adc e                                            ; $5f73: $8b
	ld [bc], a                                       ; $5f74: $02
	dec de                                           ; $5f75: $1b
	or b                                             ; $5f76: $b0
	ld c, e                                          ; $5f77: $4b
	ldh [rP1], a                                     ; $5f78: $e0 $00
	ld [bc], a                                       ; $5f7a: $02
	ld [de], a                                       ; $5f7b: $12
	add c                                            ; $5f7c: $81
	adc e                                            ; $5f7d: $8b
	ld bc, $0266                                     ; $5f7e: $01 $66 $02
	or b                                             ; $5f81: $b0
	ld bc, $e504                                     ; $5f82: $01 $04 $e5
	ld bc, $cb19                                     ; $5f85: $01 $19 $cb
	nop                                              ; $5f88: $00
	inc b                                            ; $5f89: $04
	push hl                                          ; $5f8a: $e5
	ld bc, $6015                                     ; $5f8b: $01 $15 $60
	add hl, bc                                       ; $5f8e: $09
	dec hl                                           ; $5f8f: $2b
	ret nz                                           ; $5f90: $c0

	ld bc, $01a0                                     ; $5f91: $01 $a0 $01
	inc b                                            ; $5f94: $04
	ld hl, $01c0                                     ; $5f95: $21 $c0 $01
	and b                                            ; $5f98: $a0
	ld bc, $2d04                                     ; $5f99: $01 $04 $2d
	ret nz                                           ; $5f9c: $c0

	adc b                                            ; $5f9d: $88
	ret nc                                           ; $5f9e: $d0

	add e                                            ; $5f9f: $83
	and b                                            ; $5fa0: $a0
	dec c                                            ; $5fa1: $0d
	ret nz                                           ; $5fa2: $c0

	adc d                                            ; $5fa3: $8a
	add c                                            ; $5fa4: $81
	and b                                            ; $5fa5: $a0
	dec bc                                           ; $5fa6: $0b
	ldh [rP1], a                                     ; $5fa7: $e0 $00
	ld a, [hl-]                                      ; $5fa9: $3a
	ret nz                                           ; $5faa: $c0

	adc c                                            ; $5fab: $89
	ret nz                                           ; $5fac: $c0

	ld bc, $01a0                                     ; $5fad: $01 $a0 $01
	inc b                                            ; $5fb0: $04
	dec [hl]                                         ; $5fb1: $35
	ret nz                                           ; $5fb2: $c0

	inc c                                            ; $5fb3: $0c
	ldh [$3c], a                                     ; $5fb4: $e0 $3c
	pop bc                                           ; $5fb6: $c1
	dec sp                                           ; $5fb7: $3b
	db $e4                                           ; $5fb8: $e4
	nop                                              ; $5fb9: $00
	ret nc                                           ; $5fba: $d0

	add hl, bc                                       ; $5fbb: $09
	dec h                                            ; $5fbc: $25
	ret nz                                           ; $5fbd: $c0

	ld bc, $01a0                                     ; $5fbe: $01 $a0 $01
	inc b                                            ; $5fc1: $04
	ld hl, $01c0                                     ; $5fc2: $21 $c0 $01
	and b                                            ; $5fc5: $a0
	ld bc, $2d04                                     ; $5fc6: $01 $04 $2d
	ret nz                                           ; $5fc9: $c0

	add [hl]                                         ; $5fca: $86
	ret nc                                           ; $5fcb: $d0

	add e                                            ; $5fcc: $83
	and b                                            ; $5fcd: $a0
	dec c                                            ; $5fce: $0d
	ret nz                                           ; $5fcf: $c0

	adc e                                            ; $5fd0: $8b
	add c                                            ; $5fd1: $81
	and b                                            ; $5fd2: $a0
	dec bc                                           ; $5fd3: $0b
	ldh [rP1], a                                     ; $5fd4: $e0 $00
	dec c                                            ; $5fd6: $0d
	ret nz                                           ; $5fd7: $c0

	add a                                            ; $5fd8: $87
	ret nz                                           ; $5fd9: $c0

	ld bc, $01a0                                     ; $5fda: $01 $a0 $01
	inc b                                            ; $5fdd: $04
	dec [hl]                                         ; $5fde: $35
	db $e4                                           ; $5fdf: $e4
	nop                                              ; $5fe0: $00
	xor c                                            ; $5fe1: $a9
	ld a, e                                          ; $5fe2: $7b
	ld b, b                                          ; $5fe3: $40
	add b                                            ; $5fe4: $80
	ld [bc], a                                       ; $5fe5: $02
	ld a, [de]                                       ; $5fe6: $1a
	ld h, h                                          ; $5fe7: $64
	db $fc                                           ; $5fe8: $fc
	add e                                            ; $5fe9: $83
	and b                                            ; $5fea: $a0
	dec c                                            ; $5feb: $0d
	jp c, $c00b                                      ; $5fec: $da $0b $c0

	add hl, bc                                       ; $5fef: $09
	db $e3                                           ; $5ff0: $e3
	nop                                              ; $5ff1: $00
	ld c, c                                          ; $5ff2: $49
	ret nz                                           ; $5ff3: $c0

	ld bc, $01a0                                     ; $5ff4: $01 $a0 $01
	inc b                                            ; $5ff7: $04
	ccf                                              ; $5ff8: $3f
	db $fc                                           ; $5ff9: $fc
	add e                                            ; $5ffa: $83
	and b                                            ; $5ffb: $a0
	dec c                                            ; $5ffc: $0d
	reti                                             ; $5ffd: $d9


	dec bc                                           ; $5ffe: $0b
	ret nz                                           ; $5fff: $c0

	add hl, bc                                       ; $6000: $09
	db $e3                                           ; $6001: $e3
	nop                                              ; $6002: $00
	ld c, c                                          ; $6003: $49
	ret nz                                           ; $6004: $c0

	ld bc, $01a0                                     ; $6005: $01 $a0 $01
	inc b                                            ; $6008: $04
	ld c, b                                          ; $6009: $48
	db $fc                                           ; $600a: $fc
	add e                                            ; $600b: $83
	and b                                            ; $600c: $a0
	dec c                                            ; $600d: $0d
	ret c                                            ; $600e: $d8

	dec bc                                           ; $600f: $0b
	ret nz                                           ; $6010: $c0

	add hl, bc                                       ; $6011: $09
	db $e3                                           ; $6012: $e3
	nop                                              ; $6013: $00
	ld c, c                                          ; $6014: $49
	ret nz                                           ; $6015: $c0

	ld bc, $01a0                                     ; $6016: $01 $a0 $01
	inc b                                            ; $6019: $04
	ld d, e                                          ; $601a: $53
	db $fc                                           ; $601b: $fc
	add e                                            ; $601c: $83
	and b                                            ; $601d: $a0
	dec c                                            ; $601e: $0d
	rst SubAFromHL                                          ; $601f: $d7
	ld [de], a                                       ; $6020: $12
	ret nz                                           ; $6021: $c0

	add hl, bc                                       ; $6022: $09
	db $e3                                           ; $6023: $e3
	nop                                              ; $6024: $00
	ld b, h                                          ; $6025: $44
	ret nz                                           ; $6026: $c0

	ld bc, $01a0                                     ; $6027: $01 $a0 $01
	inc b                                            ; $602a: $04
	ld l, d                                          ; $602b: $6a
	ldh [rP1], a                                     ; $602c: $e0 $00
	ld sp, $8000                                     ; $602e: $31 $00 $80
	ld [bc], a                                       ; $6031: $02
	ld a, [de]                                       ; $6032: $1a
	db $fc                                           ; $6033: $fc
	add e                                            ; $6034: $83
	and b                                            ; $6035: $a0
	dec c                                            ; $6036: $0d
	sub $12                                          ; $6037: $d6 $12
	ret nz                                           ; $6039: $c0

	add hl, bc                                       ; $603a: $09
	db $e3                                           ; $603b: $e3

Jump_087_603c:
	nop                                              ; $603c: $00
	ld b, h                                          ; $603d: $44
	ret nz                                           ; $603e: $c0

	ld bc, $01a0                                     ; $603f: $01 $a0 $01
	inc b                                            ; $6042: $04
	halt                                             ; $6043: $76
	ldh [rP1], a                                     ; $6044: $e0 $00
	add hl, de                                       ; $6046: $19
	nop                                              ; $6047: $00
	add b                                            ; $6048: $80
	ld [bc], a                                       ; $6049: $02
	ld a, [de]                                       ; $604a: $1a
	ld [de], a                                       ; $604b: $12
	ret nz                                           ; $604c: $c0

	add hl, bc                                       ; $604d: $09
	db $e3                                           ; $604e: $e3
	nop                                              ; $604f: $00
	ld b, h                                          ; $6050: $44
	ret nz                                           ; $6051: $c0

	ld bc, $01a0                                     ; $6052: $01 $a0 $01
	inc b                                            ; $6055: $04
	add d                                            ; $6056: $82
	ldh [rP1], a                                     ; $6057: $e0 $00
	ld b, $00                                        ; $6059: $06 $00
	add b                                            ; $605b: $80
	ld [bc], a                                       ; $605c: $02
	ld a, [de]                                       ; $605d: $1a
	ld d, $61                                        ; $605e: $16 $61
	add b                                            ; $6060: $80
	nop                                              ; $6061: $00
	ld b, a                                          ; $6062: $47
	ld b, $c0                                        ; $6063: $06 $c0
	ld bc, $01a0                                     ; $6065: $01 $a0 $01
	inc b                                            ; $6068: $04
	adc h                                            ; $6069: $8c
	add b                                            ; $606a: $80
	ld bc, $062e                                     ; $606b: $01 $2e $06
	ret nz                                           ; $606e: $c0

	ld bc, $01a0                                     ; $606f: $01 $a0 $01
	inc b                                            ; $6072: $04
	sbc e                                            ; $6073: $9b
	nop                                              ; $6074: $00
	add hl, bc                                       ; $6075: $09
	ld [de], a                                       ; $6076: $12
	add c                                            ; $6077: $81
	adc e                                            ; $6078: $8b
	ld bc, $0266                                     ; $6079: $01 $66 $02
	or b                                             ; $607c: $b0
	inc bc                                           ; $607d: $03
	inc b                                            ; $607e: $04
	push hl                                          ; $607f: $e5
	ld bc, $6015                                     ; $6080: $01 $15 $60
	nop                                              ; $6083: $00
	inc b                                            ; $6084: $04
	push hl                                          ; $6085: $e5
	ld bc, $b119                                     ; $6086: $01 $19 $b1
	dec c                                            ; $6089: $0d
	inc a                                            ; $608a: $3c
	adc e                                            ; $608b: $8b
	ld bc, $0266                                     ; $608c: $01 $66 $02
	or b                                             ; $608f: $b0
	inc bc                                           ; $6090: $03
	jr z, jr_087_60a3                                ; $6091: $28 $10

	pop bc                                           ; $6093: $c1
	dec sp                                           ; $6094: $3b
	ret nz                                           ; $6095: $c0

	push af                                          ; $6096: $f5
	ret nz                                           ; $6097: $c0

	ld bc, $01a0                                     ; $6098: $01 $a0 $01
	inc b                                            ; $609b: $04
	xor d                                            ; $609c: $aa
	ret nz                                           ; $609d: $c0

	ld bc, $01a0                                     ; $609e: $01 $a0 $01
	inc b                                            ; $60a1: $04
	xor [hl]                                         ; $60a2: $ae

jr_087_60a3:
	inc e                                            ; $60a3: $1c
	inc b                                            ; $60a4: $04
	or d                                             ; $60a5: $b2
	add hl, bc                                       ; $60a6: $09
	ld a, [bc]                                       ; $60a7: $0a
	ret nc                                           ; $60a8: $d0

	adc e                                            ; $60a9: $8b
	nop                                              ; $60aa: $00
	sbc $b0                                          ; $60ab: $de $b0
	ld [hl], h                                       ; $60ad: $74
	push hl                                          ; $60ae: $e5
	ld b, l                                          ; $60af: $45
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	inc b                                            ; $60b2: $04
	or h                                             ; $60b3: $b4
	add hl, bc                                       ; $60b4: $09
	ld a, [bc]                                       ; $60b5: $0a
	ret nz                                           ; $60b6: $c0

	ld bc, $01a0                                     ; $60b7: $01 $a0 $01
	inc b                                            ; $60ba: $04
	or [hl]                                          ; $60bb: $b6
	push hl                                          ; $60bc: $e5
	ld bc, $b119                                     ; $60bd: $01 $19 $b1
	nop                                              ; $60c0: $00
	add hl, bc                                       ; $60c1: $09
	inc b                                            ; $60c2: $04
	push hl                                          ; $60c3: $e5
	ld bc, $b119                                     ; $60c4: $01 $19 $b1
	jr jr_087_60d1                                   ; $60c7: $18 $08

	add hl, bc                                       ; $60c9: $09
	ld a, [de]                                       ; $60ca: $1a
	ld b, b                                          ; $60cb: $40
	add b                                            ; $60cc: $80
	ld [bc], a                                       ; $60cd: $02
	sbc e                                            ; $60ce: $9b
	ret nc                                           ; $60cf: $d0

Jump_087_60d0:
	adc e                                            ; $60d0: $8b

jr_087_60d1:
	nop                                              ; $60d1: $00
	inc c                                            ; $60d2: $0c
	or b                                             ; $60d3: $b0
	ld bc, $5bc1                                     ; $60d4: $01 $c1 $5b
	pop bc                                           ; $60d7: $c1
	ld e, c                                          ; $60d8: $59
	db $e3                                           ; $60d9: $e3
	nop                                              ; $60da: $00
	ld e, l                                          ; $60db: $5d
	ret nz                                           ; $60dc: $c0

	ld bc, $01a0                                     ; $60dd: $01 $a0 $01
	nop                                              ; $60e0: $00
	ld bc, $00e4                                     ; $60e1: $01 $e4 $00
	ld [bc], a                                       ; $60e4: $02
	ld [$0015], sp                                   ; $60e5: $08 $15 $00
	dec c                                            ; $60e8: $0d
	add hl, bc                                       ; $60e9: $09
	inc bc                                           ; $60ea: $03
	db $e4                                           ; $60eb: $e4
	nop                                              ; $60ec: $00
	daa                                              ; $60ed: $27
	nop                                              ; $60ee: $00
	inc d                                            ; $60ef: $14
	add hl, bc                                       ; $60f0: $09
	inc bc                                           ; $60f1: $03
	db $e4                                           ; $60f2: $e4
	nop                                              ; $60f3: $00
	dec sp                                           ; $60f4: $3b
	nop                                              ; $60f5: $00
	add hl, de                                       ; $60f6: $19
	add hl, bc                                       ; $60f7: $09
	inc bc                                           ; $60f8: $03
	db $e4                                           ; $60f9: $e4
	nop                                              ; $60fa: $00

jr_087_60fb:
	ld [bc], a                                       ; $60fb: $02
	ld [$0015], sp                                   ; $60fc: $08 $15 $00
	rra                                              ; $60ff: $1f
	add hl, bc                                       ; $6100: $09
	inc bc                                           ; $6101: $03
	db $e4                                           ; $6102: $e4
	nop                                              ; $6103: $00
	ld l, h                                          ; $6104: $6c
	nop                                              ; $6105: $00
	inc h                                            ; $6106: $24
	add hl, bc                                       ; $6107: $09
	inc bc                                           ; $6108: $03
	db $e4                                           ; $6109: $e4
	nop                                              ; $610a: $00
	add b                                            ; $610b: $80
	nop                                              ; $610c: $00
	daa                                              ; $610d: $27
	add hl, bc                                       ; $610e: $09
	inc bc                                           ; $610f: $03
	db $e4                                           ; $6110: $e4
	rst $38                                          ; $6111: $ff
	call nc, $1909                                   ; $6112: $d4 $09 $19
	ret nc                                           ; $6115: $d0

	add c                                            ; $6116: $81
	and b                                            ; $6117: $a0
	nop                                              ; $6118: $00
	ret nz                                           ; $6119: $c0

	di                                               ; $611a: $f3
	add c                                            ; $611b: $81
	add c                                            ; $611c: $81
	and b                                            ; $611d: $a0
	nop                                              ; $611e: $00
	ld bc, $03d0                                     ; $611f: $01 $d0 $03
	ret nz                                           ; $6122: $c0

	jr z, jr_087_60fb                                ; $6123: $28 $d6

	ld bc, $03d1                                     ; $6125: $01 $d1 $03
	ret nz                                           ; $6128: $c0

	jr z, @-$2b                                      ; $6129: $28 $d3

	db $e4                                           ; $612b: $e4
	nop                                              ; $612c: $00
	halt                                             ; $612d: $76
	add hl, bc                                       ; $612e: $09
	ccf                                              ; $612f: $3f
	ei                                               ; $6130: $fb
	pop af                                           ; $6131: $f1
	add b                                            ; $6132: $80
	and b                                            ; $6133: $a0
	ld [bc], a                                       ; $6134: $02
	dec bc                                           ; $6135: $0b

jr_087_6136:
	add b                                            ; $6136: $80
	ret nz                                           ; $6137: $c0

	dec de                                           ; $6138: $1b
	pop de                                           ; $6139: $d1
	ld [bc], a                                       ; $613a: $02
	ret nc                                           ; $613b: $d0

	pop de                                           ; $613c: $d1
	inc bc                                           ; $613d: $03
	db $e4                                           ; $613e: $e4
	ld [bc], a                                       ; $613f: $02
	call c, $81d0                                    ; $6140: $dc $d0 $81
	and b                                            ; $6143: $a0
	inc bc                                           ; $6144: $03
	pop bc                                           ; $6145: $c1
	ld a, c                                          ; $6146: $79
	ret nc                                           ; $6147: $d0

	add c                                            ; $6148: $81
	add c                                            ; $6149: $81
	and b                                            ; $614a: $a0
	inc bc                                           ; $614b: $03
	ld bc, $0fd0                                     ; $614c: $01 $d0 $0f
	nop                                              ; $614f: $00
	add b                                            ; $6150: $80
	ld [bc], a                                       ; $6151: $02
	sbc e                                            ; $6152: $9b
	ret nz                                           ; $6153: $c0

	jr z, @-$2a                                      ; $6154: $28 $d4

	ret nz                                           ; $6156: $c0

jr_087_6157:
	ld [hl+], a                                      ; $6157: $22
	jp nc, $c0d0                                     ; $6158: $d2 $d0 $c0

	ld hl, $d0da                                     ; $615b: $21 $da $d0
	ld bc, $0bd1                                     ; $615e: $01 $d1 $0b
	ret nz                                           ; $6161: $c0

	jr z, jr_087_6136                                ; $6162: $28 $d2

	ret nz                                           ; $6164: $c0

	ld [hl+], a                                      ; $6165: $22
	pop de                                           ; $6166: $d1
	ret nc                                           ; $6167: $d0

	ret nz                                           ; $6168: $c0

	ld hl, $d0d5                                     ; $6169: $21 $d5 $d0
	db $e4                                           ; $616c: $e4
	nop                                              ; $616d: $00
	dec [hl]                                         ; $616e: $35
	add hl, bc                                       ; $616f: $09

jr_087_6170:
	add hl, de                                       ; $6170: $19
	ret nc                                           ; $6171: $d0

	add d                                            ; $6172: $82
	and b                                            ; $6173: $a0
	dec b                                            ; $6174: $05
	pop bc                                           ; $6175: $c1
	ld [hl], l                                       ; $6176: $75
	add c                                            ; $6177: $81
	add d                                            ; $6178: $82
	and b                                            ; $6179: $a0
	dec b                                            ; $617a: $05
	ld bc, $03d0                                     ; $617b: $01 $d0 $03
	ret nz                                           ; $617e: $c0

	jr z, jr_087_6157                                ; $617f: $28 $d6

	ld bc, $03d1                                     ; $6181: $01 $d1 $03
	ret nz                                           ; $6184: $c0

	jr z, @-$2b                                      ; $6185: $28 $d3

	db $e4                                           ; $6187: $e4
	nop                                              ; $6188: $00
	ld a, [de]                                       ; $6189: $1a
	add hl, bc                                       ; $618a: $09
	ld d, $d0                                        ; $618b: $16 $d0
	add b                                            ; $618d: $80
	and b                                            ; $618e: $a0
	ld [$76c1], sp                                   ; $618f: $08 $c1 $76
	add c                                            ; $6192: $81
	add b                                            ; $6193: $80
	and b                                            ; $6194: $a0
	ld [$d001], sp                                   ; $6195: $08 $01 $d0
	inc bc                                           ; $6198: $03
	ret nz                                           ; $6199: $c0

	jr z, jr_087_6170                                ; $619a: $28 $d4

	ld bc, $00d1                                     ; $619c: $01 $d1 $00
	db $e4                                           ; $619f: $e4
	nop                                              ; $61a0: $00
	ld [bc], a                                       ; $61a1: $02
	add hl, bc                                       ; $61a2: $09
	ld c, a                                          ; $61a3: $4f
	ei                                               ; $61a4: $fb
	ei                                               ; $61a5: $fb
	add c                                            ; $61a6: $81
	ld bc, $d2a6                                     ; $61a7: $01 $a6 $d2
	ld b, e                                          ; $61aa: $43
	ld b, b                                          ; $61ab: $40
	add b                                            ; $61ac: $80
	ld [bc], a                                       ; $61ad: $02
	call c, $0fc0                                    ; $61ae: $dc $c0 $0f
	db $e3                                           ; $61b1: $e3
	nop                                              ; $61b2: $00
	ld d, e                                          ; $61b3: $53
	ret nz                                           ; $61b4: $c0

	add hl, bc                                       ; $61b5: $09
	db $e3                                           ; $61b6: $e3
	nop                                              ; $61b7: $00
	ld [hl], e                                       ; $61b8: $73
	ret nz                                           ; $61b9: $c0

	ld bc, $01a0                                     ; $61ba: $01 $a0 $01
	nop                                              ; $61bd: $00
	dec l                                            ; $61be: $2d
	pop hl                                           ; $61bf: $e1
	ld [bc], a                                       ; $61c0: $02
	rlca                                             ; $61c1: $07
	cp a                                             ; $61c2: $bf
	pop bc                                           ; $61c3: $c1
	ld h, b                                          ; $61c4: $60
	ret nc                                           ; $61c5: $d0

	ret nc                                           ; $61c6: $d0

	add e                                            ; $61c7: $83
	ld [bc], a                                       ; $61c8: $02
	db $dd                                           ; $61c9: $dd
	pop bc                                           ; $61ca: $c1
	ld h, b                                          ; $61cb: $60
	pop de                                           ; $61cc: $d1
	ldh [rP1], a                                     ; $61cd: $e0 $00
	dec h                                            ; $61cf: $25
	ret nc                                           ; $61d0: $d0

	add e                                            ; $61d1: $83
	ld [bc], a                                       ; $61d2: $02
	db $dd                                           ; $61d3: $dd
	pop bc                                           ; $61d4: $c1
	ld h, b                                          ; $61d5: $60
	pop de                                           ; $61d6: $d1
	ldh [rP1], a                                     ; $61d7: $e0 $00
	dec de                                           ; $61d9: $1b
	ret nc                                           ; $61da: $d0

	add e                                            ; $61db: $83
	ld [bc], a                                       ; $61dc: $02
	db $dd                                           ; $61dd: $dd
	pop bc                                           ; $61de: $c1
	ld h, b                                          ; $61df: $60
	pop de                                           ; $61e0: $d1
	nop                                              ; $61e1: $00
	add b                                            ; $61e2: $80
	ld [bc], a                                       ; $61e3: $02
	call c, $00e0                                    ; $61e4: $dc $e0 $00
	dec c                                            ; $61e7: $0d
	ret nz                                           ; $61e8: $c0

	ld bc, $01a0                                     ; $61e9: $01 $a0 $01
	nop                                              ; $61ec: $00
	ld a, [hl-]                                      ; $61ed: $3a
	ret nz                                           ; $61ee: $c0

	set 4, h                                         ; $61ef: $cb $e4
	ld bc, $c1df                                     ; $61f1: $01 $df $c1
	jp z, Jump_087_47c1                              ; $61f4: $ca $c1 $47

	add e                                            ; $61f7: $83
	ld [bc], a                                       ; $61f8: $02
	db $dd                                           ; $61f9: $dd
	ret nz                                           ; $61fa: $c0

	ld bc, $01a0                                     ; $61fb: $01 $a0 $01
	nop                                              ; $61fe: $00
	ld b, [hl]                                       ; $61ff: $46
	ret nz                                           ; $6200: $c0

	and a                                            ; $6201: $a7
	add e                                            ; $6202: $83
	ld [bc], a                                       ; $6203: $02
	db $dd                                           ; $6204: $dd
	db $d3                                           ; $6205: $d3
	sub $e1                                          ; $6206: $d6 $e1
	ld [bc], a                                       ; $6208: $02
	inc bc                                           ; $6209: $03
	daa                                              ; $620a: $27
	ret nz                                           ; $620b: $c0

	and l                                            ; $620c: $a5
	ei                                               ; $620d: $fb
	cp $0a                                           ; $620e: $fe $0a
	add b                                            ; $6210: $80
	ld [bc], a                                       ; $6211: $02
	call c, $c0fc                                    ; $6212: $dc $fc $c0
	dec de                                           ; $6215: $1b
	add e                                            ; $6216: $83
	ld [bc], a                                       ; $6217: $02
	db $dd                                           ; $6218: $dd
	push de                                          ; $6219: $d5
	ld d, b                                          ; $621a: $50
	db $fd                                           ; $621b: $fd
	ld c, e                                          ; $621c: $4b
	add e                                            ; $621d: $83
	ld [bc], a                                       ; $621e: $02
	db $dd                                           ; $621f: $dd
	ld bc, $06d0                                     ; $6220: $01 $d0 $06
	ret nz                                           ; $6223: $c0

	ld bc, $02a0                                     ; $6224: $01 $a0 $02
	nop                                              ; $6227: $00
	ld c, h                                          ; $6228: $4c
	ld bc, $06d1                                     ; $6229: $01 $d1 $06
	ret nz                                           ; $622c: $c0

	ld bc, $03a0                                     ; $622d: $01 $a0 $03
	nop                                              ; $6230: $00
	ld c, h                                          ; $6231: $4c
	ld bc, $06d2                                     ; $6232: $01 $d2 $06
	ret nz                                           ; $6235: $c0

	ld bc, $04a0                                     ; $6236: $01 $a0 $04
	nop                                              ; $6239: $00
	ld c, h                                          ; $623a: $4c
	ld bc, $06d3                                     ; $623b: $01 $d3 $06
	ret nz                                           ; $623e: $c0

	ld bc, $05a0                                     ; $623f: $01 $a0 $05
	nop                                              ; $6242: $00
	ld c, h                                          ; $6243: $4c
	ld bc, $06d7                                     ; $6244: $01 $d7 $06
	ret nz                                           ; $6247: $c0

	ld bc, $08a0                                     ; $6248: $01 $a0 $08
	nop                                              ; $624b: $00
	ld c, h                                          ; $624c: $4c
	ld bc, $06d8                                     ; $624d: $01 $d8 $06
	ret nz                                           ; $6250: $c0

	ld bc, $09a0                                     ; $6251: $01 $a0 $09
	nop                                              ; $6254: $00
	ld c, h                                          ; $6255: $4c
	ld bc, $06da                                     ; $6256: $01 $da $06
	ret nz                                           ; $6259: $c0

	ld bc, $06a0                                     ; $625a: $01 $a0 $06
	nop                                              ; $625d: $00
	ld c, h                                          ; $625e: $4c
	ld bc, $06dd                                     ; $625f: $01 $dd $06
	ret nz                                           ; $6262: $c0

	ld bc, $0aa0                                     ; $6263: $01 $a0 $0a
	nop                                              ; $6266: $00
	ld c, h                                          ; $6267: $4c
	db $e4                                           ; $6268: $e4
	ld bc, $fd56                                     ; $6269: $01 $56 $fd
	pop bc                                           ; $626c: $c1
	ld c, h                                          ; $626d: $4c
	add e                                            ; $626e: $83
	ld [bc], a                                       ; $626f: $02
	db $dd                                           ; $6270: $dd
	ld bc, $22d0                                     ; $6271: $01 $d0 $22
	add d                                            ; $6274: $82
	ret nz                                           ; $6275: $c0

	dec de                                           ; $6276: $1b
	ret nc                                           ; $6277: $d0

	ld [bc], a                                       ; $6278: $02
	ret nc                                           ; $6279: $d0

	pop de                                           ; $627a: $d1
	ld b, $c0                                        ; $627b: $06 $c0
	ld bc, $02a0                                     ; $627d: $01 $a0 $02
	nop                                              ; $6280: $00
	ld c, l                                          ; $6281: $4d
	inc bc                                           ; $6282: $03
	jp nc, $d4d3                                     ; $6283: $d2 $d3 $d4

	ld b, $c0                                        ; $6286: $06 $c0
	ld bc, $02a0                                     ; $6288: $01 $a0 $02
	nop                                              ; $628b: $00
	ld d, e                                          ; $628c: $53
	ld bc, $06d5                                     ; $628d: $01 $d5 $06
	ret nz                                           ; $6290: $c0

	ld bc, $02a0                                     ; $6291: $01 $a0 $02
	nop                                              ; $6294: $00
	ld c, h                                          ; $6295: $4c
	ld bc, $22d1                                     ; $6296: $01 $d1 $22
	add d                                            ; $6299: $82
	ret nz                                           ; $629a: $c0

	dec de                                           ; $629b: $1b
	pop de                                           ; $629c: $d1
	ld [bc], a                                       ; $629d: $02
	ret nc                                           ; $629e: $d0

	pop de                                           ; $629f: $d1
	ld b, $c0                                        ; $62a0: $06 $c0
	ld bc, $03a0                                     ; $62a2: $01 $a0 $03
	nop                                              ; $62a5: $00
	ld d, l                                          ; $62a6: $55
	inc bc                                           ; $62a7: $03
	jp nc, $d4d3                                     ; $62a8: $d2 $d3 $d4

	ld b, $c0                                        ; $62ab: $06 $c0
	ld bc, $03a0                                     ; $62ad: $01 $a0 $03
	nop                                              ; $62b0: $00
	ld e, c                                          ; $62b1: $59
	ld bc, $06d5                                     ; $62b2: $01 $d5 $06
	ret nz                                           ; $62b5: $c0

	ld bc, $03a0                                     ; $62b6: $01 $a0 $03
	nop                                              ; $62b9: $00
	ld c, h                                          ; $62ba: $4c
	ld bc, $2ad2                                     ; $62bb: $01 $d2 $2a
	add d                                            ; $62be: $82
	ret nz                                           ; $62bf: $c0

	dec de                                           ; $62c0: $1b
	jp nc, $d002                                     ; $62c1: $d2 $02 $d0

	pop de                                           ; $62c4: $d1
	ld b, $c0                                        ; $62c5: $06 $c0
	ld bc, $04a0                                     ; $62c7: $01 $a0 $04
	nop                                              ; $62ca: $00
	ld e, e                                          ; $62cb: $5b
	inc bc                                           ; $62cc: $03
	jp nc, $d4d3                                     ; $62cd: $d2 $d3 $d4

	ld b, $c0                                        ; $62d0: $06 $c0
	ld bc, $04a0                                     ; $62d2: $01 $a0 $04
	nop                                              ; $62d5: $00
	ld h, a                                          ; $62d6: $67
	ld bc, $0ed5                                     ; $62d7: $01 $d5 $0e
	ret nz                                           ; $62da: $c0

	ld bc, $04a0                                     ; $62db: $01 $a0 $04
	nop                                              ; $62de: $00
	ld l, [hl]                                       ; $62df: $6e
	pop bc                                           ; $62e0: $c1
	ld e, e                                          ; $62e1: $5b
	ret nz                                           ; $62e2: $c0

	ld bc, $01a0                                     ; $62e3: $01 $a0 $01
	nop                                              ; $62e6: $00
	ld [hl], a                                       ; $62e7: $77
	ld bc, $22d3                                     ; $62e8: $01 $d3 $22
	add d                                            ; $62eb: $82
	ret nz                                           ; $62ec: $c0

	dec de                                           ; $62ed: $1b
	db $d3                                           ; $62ee: $d3
	ld [bc], a                                       ; $62ef: $02
	ret nc                                           ; $62f0: $d0

	pop de                                           ; $62f1: $d1
	ld b, $c0                                        ; $62f2: $06 $c0
	ld bc, $05a0                                     ; $62f4: $01 $a0 $05
	nop                                              ; $62f7: $00
	ld a, a                                          ; $62f8: $7f
	inc bc                                           ; $62f9: $03
	jp nc, $d4d3                                     ; $62fa: $d2 $d3 $d4

	ld b, $c0                                        ; $62fd: $06 $c0
	ld bc, $05a0                                     ; $62ff: $01 $a0 $05
	nop                                              ; $6302: $00
	adc c                                            ; $6303: $89
	ld bc, $06d5                                     ; $6304: $01 $d5 $06
	ret nz                                           ; $6307: $c0

	ld bc, $05a0                                     ; $6308: $01 $a0 $05
	nop                                              ; $630b: $00
	sub d                                            ; $630c: $92
	ld bc, $22d7                                     ; $630d: $01 $d7 $22
	add d                                            ; $6310: $82
	ret nz                                           ; $6311: $c0

	dec de                                           ; $6312: $1b
	rst SubAFromHL                                          ; $6313: $d7
	ld [bc], a                                       ; $6314: $02
	ret nc                                           ; $6315: $d0

	pop de                                           ; $6316: $d1
	ld b, $c0                                        ; $6317: $06 $c0
	ld bc, $08a0                                     ; $6319: $01 $a0 $08
	nop                                              ; $631c: $00
	sub a                                            ; $631d: $97
	inc bc                                           ; $631e: $03
	jp nc, $d4d3                                     ; $631f: $d2 $d3 $d4

	ld b, $c0                                        ; $6322: $06 $c0
	ld bc, $08a0                                     ; $6324: $01 $a0 $08
	nop                                              ; $6327: $00
	sbc [hl]                                         ; $6328: $9e
	ld bc, $06d5                                     ; $6329: $01 $d5 $06
	ret nz                                           ; $632c: $c0

	ld bc, $08a0                                     ; $632d: $01 $a0 $08
	nop                                              ; $6330: $00
	and d                                            ; $6331: $a2
	ld bc, $2dd8                                     ; $6332: $01 $d8 $2d
	add d                                            ; $6335: $82
	ret nz                                           ; $6336: $c0

	dec de                                           ; $6337: $1b
	ret c                                            ; $6338: $d8

	ld [bc], a                                       ; $6339: $02
	ret nc                                           ; $633a: $d0

	pop de                                           ; $633b: $d1
	ld de, $7fb0                                     ; $633c: $11 $b0 $7f
	ld b, $c0                                        ; $633f: $06 $c0
	ld bc, $09a0                                     ; $6341: $01 $a0 $09
	nop                                              ; $6344: $00
	xor e                                            ; $6345: $ab
	rst $38                                          ; $6346: $ff
	ld b, $c0                                        ; $6347: $06 $c0
	ld bc, $09a0                                     ; $6349: $01 $a0 $09
	nop                                              ; $634c: $00
	or h                                             ; $634d: $b4
	inc bc                                           ; $634e: $03
	jp nc, $d4d3                                     ; $634f: $d2 $d3 $d4

	ld b, $c0                                        ; $6352: $06 $c0
	ld bc, $09a0                                     ; $6354: $01 $a0 $09
	nop                                              ; $6357: $00
	cp [hl]                                          ; $6358: $be
	ld bc, $06d5                                     ; $6359: $01 $d5 $06
	ret nz                                           ; $635c: $c0

	ld bc, $09a0                                     ; $635d: $01 $a0 $09
	nop                                              ; $6360: $00
	ret z                                            ; $6361: $c8

	ld bc, $30da                                     ; $6362: $01 $da $30
	add d                                            ; $6365: $82
	ret nz                                           ; $6366: $c0

	dec de                                           ; $6367: $1b
	jp c, $d002                                      ; $6368: $da $02 $d0

	pop de                                           ; $636b: $d1
	ld b, $c0                                        ; $636c: $06 $c0
	ld bc, $06a0                                     ; $636e: $01 $a0 $06
	nop                                              ; $6371: $00
	rlc e                                            ; $6372: $cb $03
	jp nc, $d4d3                                     ; $6374: $d2 $d3 $d4

	inc c                                            ; $6377: $0c
	ret nz                                           ; $6378: $c0

	ld bc, $06a0                                     ; $6379: $01 $a0 $06
	nop                                              ; $637c: $00
	db $db                                           ; $637d: $db
	ret nz                                           ; $637e: $c0

	ld bc, $01a0                                     ; $637f: $01 $a0 $01
	nop                                              ; $6382: $00
	push hl                                          ; $6383: $e5
	ld bc, $0ed5                                     ; $6384: $01 $d5 $0e
	ret nz                                           ; $6387: $c0

	ld bc, $06a0                                     ; $6388: $01 $a0 $06
	nop                                              ; $638b: $00
	rst AddAOntoHL                                          ; $638c: $ef
	pop bc                                           ; $638d: $c1
	ld e, e                                          ; $638e: $5b
	ret nz                                           ; $638f: $c0

	ld bc, $01a0                                     ; $6390: $01 $a0 $01
	nop                                              ; $6393: $00
	ld hl, sp+$01                                    ; $6394: $f8 $01
	db $dd                                           ; $6396: $dd
	ld [hl+], a                                      ; $6397: $22
	add d                                            ; $6398: $82
	ret nz                                           ; $6399: $c0

	dec de                                           ; $639a: $1b
	db $dd                                           ; $639b: $dd
	ld [bc], a                                       ; $639c: $02
	ret nc                                           ; $639d: $d0

	pop de                                           ; $639e: $d1
	ld b, $c0                                        ; $639f: $06 $c0
	ld bc, $0aa0                                     ; $63a1: $01 $a0 $0a
	ld bc, $0302                                     ; $63a4: $01 $02 $03
	jp nc, $d4d3                                     ; $63a7: $d2 $d3 $d4

	ld b, $c0                                        ; $63aa: $06 $c0
	ld bc, $0aa0                                     ; $63ac: $01 $a0 $0a
	ld bc, $0108                                     ; $63af: $01 $08 $01
	push de                                          ; $63b2: $d5
	ld b, $c0                                        ; $63b3: $06 $c0
	ld bc, $0aa0                                     ; $63b5: $01 $a0 $0a
	ld bc, $c10d                                     ; $63b8: $01 $0d $c1
	ld e, e                                          ; $63bb: $5b
	ret nz                                           ; $63bc: $c0

	inc c                                            ; $63bd: $0c
	push de                                          ; $63be: $d5
	add hl, bc                                       ; $63bf: $09
	rrca                                             ; $63c0: $0f
	pop bc                                           ; $63c1: $c1
	add a                                            ; $63c2: $87
	pop bc                                           ; $63c3: $c1
	ld e, e                                          ; $63c4: $5b
	ret nz                                           ; $63c5: $c0

	ld bc, $01a0                                     ; $63c6: $01 $a0 $01
	ld bc, $c014                                     ; $63c9: $01 $14 $c0
	set 4, h                                         ; $63cc: $cb $e4
	nop                                              ; $63ce: $00
	ld [bc], a                                       ; $63cf: $02
	inc c                                            ; $63d0: $0c
	ld c, c                                          ; $63d1: $49
	add b                                            ; $63d2: $80
	ld bc, $288f                                     ; $63d3: $01 $8f $28
	ld c, $c0                                        ; $63d6: $0e $c0
	push af                                          ; $63d8: $f5
	ret nz                                           ; $63d9: $c0

	ld bc, $01a0                                     ; $63da: $01 $a0 $01
	ld bc, $c01b                                     ; $63dd: $01 $1b $c0
	ld bc, $01a0                                     ; $63e0: $01 $a0 $01
	ld bc, $2826                                     ; $63e3: $01 $26 $28
	ld bc, $0934                                     ; $63e6: $01 $34 $09
	ld a, [bc]                                       ; $63e9: $0a
	ret nc                                           ; $63ea: $d0

	adc e                                            ; $63eb: $8b
	nop                                              ; $63ec: $00
	sbc $b0                                          ; $63ed: $de $b0
	ld l, l                                          ; $63ef: $6d
	push hl                                          ; $63f0: $e5
	ld b, l                                          ; $63f1: $45
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	ld bc, $0936                                     ; $63f4: $01 $36 $09
	ld d, $40                                        ; $63f7: $16 $40
	add b                                            ; $63f9: $80
	ld [bc], a                                       ; $63fa: $02
	sbc e                                            ; $63fb: $9b
	ret nz                                           ; $63fc: $c0

	inc h                                            ; $63fd: $24
	pop de                                           ; $63fe: $d1
	ret nc                                           ; $63ff: $d0

	ret nz                                           ; $6400: $c0

	inc hl                                           ; $6401: $23
	push de                                          ; $6402: $d5
	ret nc                                           ; $6403: $d0

	ret nz                                           ; $6404: $c0

	ld bc, $01a0                                     ; $6405: $01 $a0 $01
	ld bc, $e538                                     ; $6408: $01 $38 $e5
	ld bc, $b119                                     ; $640b: $01 $19 $b1
	pop de                                           ; $640e: $d1
	add hl, bc                                       ; $640f: $09
	ld a, [bc]                                       ; $6410: $0a
	ld b, b                                          ; $6411: $40
	add b                                            ; $6412: $80
	ld [bc], a                                       ; $6413: $02
	sbc e                                            ; $6414: $9b
	pop bc                                           ; $6415: $c1
	dec b                                            ; $6416: $05
	push hl                                          ; $6417: $e5
	ld bc, $b119                                     ; $6418: $01 $19 $b1
	jr z, @+$3c                                      ; $641b: $28 $3a

	pop bc                                           ; $641d: $c1
	ld e, c                                          ; $641e: $59
	db $e3                                           ; $641f: $e3
	nop                                              ; $6420: $00
	ld [hl], a                                       ; $6421: $77
	ret nz                                           ; $6422: $c0

	ld bc, $03a0                                     ; $6423: $01 $a0 $03
	ld bc, $c03c                                     ; $6426: $01 $3c $c0
	ld bc, $01a0                                     ; $6429: $01 $a0 $01
	ld bc, $c03f                                     ; $642c: $01 $3f $c0
	and a                                            ; $642f: $a7
	pop de                                           ; $6430: $d1
	db $d3                                           ; $6431: $d3
	sub $e1                                          ; $6432: $d6 $e1
	ld [bc], a                                       ; $6434: $02
	inc bc                                           ; $6435: $03
	daa                                              ; $6436: $27
	ret nz                                           ; $6437: $c0

	and l                                            ; $6438: $a5
	ret nz                                           ; $6439: $c0

	ld bc, $03a0                                     ; $643a: $01 $a0 $03
	ld bc, $c045                                     ; $643d: $01 $45 $c0
	ld bc, $01a0                                     ; $6440: $01 $a0 $01
	ld bc, $c050                                     ; $6443: $01 $50 $c0
	ld bc, $03a0                                     ; $6446: $01 $a0 $03
	ld bc, $c056                                     ; $6449: $01 $56 $c0
	ld bc, $01a0                                     ; $644c: $01 $a0 $01
	ld bc, $c06c                                     ; $644f: $01 $6c $c0
	ld bc, $03a0                                     ; $6452: $01 $a0 $03
	ld bc, $4870                                     ; $6455: $01 $70 $48
	ld bc, $0983                                     ; $6458: $01 $83 $09
	inc h                                            ; $645b: $24
	ret nz                                           ; $645c: $c0

	ld [hl+], a                                      ; $645d: $22
	jp nc, $c0d1                                     ; $645e: $d2 $d1 $c0

	ld hl, $d1d2                                     ; $6461: $21 $d2 $d1
	ret nz                                           ; $6464: $c0

	ld h, $e0                                        ; $6465: $26 $e0
	inc d                                            ; $6467: $14
	pop de                                           ; $6468: $d1
	ret nz                                           ; $6469: $c0

	ld bc, $03a0                                     ; $646a: $01 $a0 $03
	ld bc, $c088                                     ; $646d: $01 $88 $c0
	ld bc, $01a0                                     ; $6470: $01 $a0 $01
	ld bc, $c08e                                     ; $6473: $01 $8e $c0
	ld bc, $03a0                                     ; $6476: $01 $a0 $03
	ld bc, $c193                                     ; $6479: $01 $93 $c1
	inc a                                            ; $647c: $3c
	db $e4                                           ; $647d: $e4
	nop                                              ; $647e: $00
	ld d, d                                          ; $647f: $52
	ld bc, $09a5                                     ; $6480: $01 $a5 $09
	inc e                                            ; $6483: $1c
	ret nz                                           ; $6484: $c0

	dec h                                            ; $6485: $25
	jp nc, $c0d1                                     ; $6486: $d2 $d1 $c0

	inc h                                            ; $6489: $24
	jp nc, $c0d1                                     ; $648a: $d2 $d1 $c0

	inc hl                                           ; $648d: $23
	ldh [rAUD1HIGH], a                               ; $648e: $e0 $14
	pop de                                           ; $6490: $d1
	ret nz                                           ; $6491: $c0

	ld bc, $03a0                                     ; $6492: $01 $a0 $03
	ld bc, $c0a9                                     ; $6495: $01 $a9 $c0
	ld bc, $01a0                                     ; $6498: $01 $a0 $01
	ld bc, $e4ad                                     ; $649b: $01 $ad $e4
	nop                                              ; $649e: $00
	ld [bc], a                                       ; $649f: $02
	add hl, bc                                       ; $64a0: $09
	ld l, $d0                                        ; $64a1: $2e $d0
	add c                                            ; $64a3: $81
	and b                                            ; $64a4: $a0
	add hl, bc                                       ; $64a5: $09
	pop bc                                           ; $64a6: $c1
	ld a, c                                          ; $64a7: $79
	ret nc                                           ; $64a8: $d0

	add c                                            ; $64a9: $81
	add c                                            ; $64aa: $81
	and b                                            ; $64ab: $a0
	add hl, bc                                       ; $64ac: $09
	ld bc, $0fd0                                     ; $64ad: $01 $d0 $0f
	nop                                              ; $64b0: $00
	add b                                            ; $64b1: $80
	ld [bc], a                                       ; $64b2: $02
	sbc e                                            ; $64b3: $9b
	ret nz                                           ; $64b4: $c0

	jr z, @-$2a                                      ; $64b5: $28 $d4

	ret nz                                           ; $64b7: $c0

	ld [hl+], a                                      ; $64b8: $22
	jp nc, $c0d0                                     ; $64b9: $d2 $d0 $c0

	ld hl, $d0da                                     ; $64bc: $21 $da $d0
	ld bc, $0bd1                                     ; $64bf: $01 $d1 $0b
	ret nz                                           ; $64c2: $c0

	jr z, @-$2c                                      ; $64c3: $28 $d2

	ret nz                                           ; $64c5: $c0

	ld [hl+], a                                      ; $64c6: $22
	pop de                                           ; $64c7: $d1
	ret nc                                           ; $64c8: $d0

	ret nz                                           ; $64c9: $c0

	ld hl, $d0d5                                     ; $64ca: $21 $d5 $d0
	db $e4                                           ; $64cd: $e4
	db $fc                                           ; $64ce: $fc
	call nc, $9509                                   ; $64cf: $d4 $09 $95
	nop                                              ; $64d2: $00
	add b                                            ; $64d3: $80
	and b                                            ; $64d4: $a0
	ld [bc], a                                       ; $64d5: $02
	pop bc                                           ; $64d6: $c1
	ld e, c                                          ; $64d7: $59
	db $e3                                           ; $64d8: $e3
	nop                                              ; $64d9: $00
	ld d, d                                          ; $64da: $52
	ret nz                                           ; $64db: $c0

	add hl, bc                                       ; $64dc: $09
	db $e3                                           ; $64dd: $e3
	nop                                              ; $64de: $00
	add hl, bc                                       ; $64df: $09

Call_087_64e0:
	ret nz                                           ; $64e0: $c0

	ld bc, $01a0                                     ; $64e1: $01 $a0 $01
	ld bc, $c0bb                                     ; $64e4: $01 $bb $c0
	ld bc, $03a0                                     ; $64e7: $01 $a0 $03
	ld bc, $c0c0                                     ; $64ea: $01 $c0 $c0
	dec bc                                           ; $64ed: $0b
	db $e3                                           ; $64ee: $e3
	nop                                              ; $64ef: $00
	ld [hl], d                                       ; $64f0: $72
	ret nz                                           ; $64f1: $c0

	nop                                              ; $64f2: $00
	ld bc, $c1c2                                     ; $64f3: $01 $c2 $c1
	ld d, l                                          ; $64f6: $55
	pop de                                           ; $64f7: $d1
	ret nz                                           ; $64f8: $c0

	set 0, c                                         ; $64f9: $cb $c1
	ld e, e                                          ; $64fb: $5b
	ret nz                                           ; $64fc: $c0

	rrca                                             ; $64fd: $0f
	db $e3                                           ; $64fe: $e3
	nop                                              ; $64ff: $00
	db $e4                                           ; $6500: $e4
	ret nz                                           ; $6501: $c0

	ld bc, $01a0                                     ; $6502: $01 $a0 $01
	ld bc, $c0c7                                     ; $6505: $01 $c7 $c0
	ld bc, $03a0                                     ; $6508: $01 $a0 $03
	ld bc, $c0cb                                     ; $650b: $01 $cb $c0
	ld bc, $01a0                                     ; $650e: $01 $a0 $01
	ld bc, $c0d9                                     ; $6511: $01 $d9 $c0
	ld bc, $03a0                                     ; $6514: $01 $a0 $03
	ld bc, wGenericTileDataDest+1                                     ; $6517: $01 $e3 $c0
	ld bc, $01a0                                     ; $651a: $01 $a0 $01
	ld bc, $e1ea                                     ; $651d: $01 $ea $e1
	ld [bc], a                                       ; $6520: $02
	rlca                                             ; $6521: $07
	cp a                                             ; $6522: $bf
	ret nz                                           ; $6523: $c0

	ld bc, $03a0                                     ; $6524: $01 $a0 $03
	ld bc, $e1ef                                     ; $6527: $01 $ef $e1

jr_087_652a:
	ld [bc], a                                       ; $652a: $02
	rlca                                             ; $652b: $07
	cp a                                             ; $652c: $bf
	ret nz                                           ; $652d: $c0

	ld bc, $01a0                                     ; $652e: $01 $a0 $01
	ld bc, $c0ff                                     ; $6531: $01 $ff $c0
	set 2, b                                         ; $6534: $cb $d0
	add c                                            ; $6536: $81
	and b                                            ; $6537: $a0
	dec bc                                           ; $6538: $0b
	pop bc                                           ; $6539: $c1
	ld a, c                                          ; $653a: $79
	pop de                                           ; $653b: $d1
	add c                                            ; $653c: $81
	add c                                            ; $653d: $81
	and b                                            ; $653e: $a0
	dec bc                                           ; $653f: $0b
	ld bc, $0fd0                                     ; $6540: $01 $d0 $0f
	nop                                              ; $6543: $00
	add b                                            ; $6544: $80
	ld [bc], a                                       ; $6545: $02
	sbc e                                            ; $6546: $9b
	ret nz                                           ; $6547: $c0

	jr z, @-$2a                                      ; $6548: $28 $d4

	ret nz                                           ; $654a: $c0

	ld [hl+], a                                      ; $654b: $22
	jp nc, $c0d1                                     ; $654c: $d2 $d1 $c0

	ld hl, $d1da                                     ; $654f: $21 $da $d1
	ld bc, $0bd1                                     ; $6552: $01 $d1 $0b
	ret nz                                           ; $6555: $c0

	jr z, jr_087_652a                                ; $6556: $28 $d2

	ret nz                                           ; $6558: $c0

	ld [hl+], a                                      ; $6559: $22
	pop de                                           ; $655a: $d1
	pop de                                           ; $655b: $d1
	ret nz                                           ; $655c: $c0

	ld hl, $d1d5                                     ; $655d: $21 $d5 $d1
	pop bc                                           ; $6560: $c1
	ld l, e                                          ; $6561: $6b
	sub $d1                                          ; $6562: $d6 $d1
	db $e4                                           ; $6564: $e4
	db $fc                                           ; $6565: $fc
	dec a                                            ; $6566: $3d
	add hl, hl                                       ; $6567: $29
	ld [$6309], sp                                   ; $6568: $08 $09 $63
	pop bc                                           ; $656b: $c1
	dec sp                                           ; $656c: $3b
	pop bc                                           ; $656d: $c1
	ld e, c                                          ; $656e: $59
	db $e3                                           ; $656f: $e3
	nop                                              ; $6570: $00
	ld a, [hl]                                       ; $6571: $7e
	ret nz                                           ; $6572: $c0

	inc c                                            ; $6573: $0c
	ldh [$3c], a                                     ; $6574: $e0 $3c
	ret nz                                           ; $6576: $c0

	add hl, bc                                       ; $6577: $09
	db $e3                                           ; $6578: $e3
	nop                                              ; $6579: $00
	dec b                                            ; $657a: $05
	ret nz                                           ; $657b: $c0

	ld bc, $04a0                                     ; $657c: $01 $a0 $04
	nop                                              ; $657f: $00
	ld bc, $a8c0                                     ; $6580: $01 $c0 $a8
	jp nc, $abc0                                     ; $6583: $d2 $c0 $ab

	call nc, $a5c0                                   ; $6586: $d4 $c0 $a5
	ret nz                                           ; $6589: $c0

	ld bc, $01a0                                     ; $658a: $01 $a0 $01
	nop                                              ; $658d: $00
	dec b                                            ; $658e: $05
	ret nz                                           ; $658f: $c0

	ld bc, $04a0                                     ; $6590: $01 $a0 $04
	nop                                              ; $6593: $00
	inc c                                            ; $6594: $0c
	ld h, b                                          ; $6595: $60
	add b                                            ; $6596: $80
	ld [bc], a                                       ; $6597: $02
	xor l                                            ; $6598: $ad
	ld b, $c0                                        ; $6599: $06 $c0
	ld bc, $01a0                                     ; $659b: $01 $a0 $01
	nop                                              ; $659e: $00
	inc e                                            ; $659f: $1c
	ld b, $c0                                        ; $65a0: $06 $c0
	ld bc, $01a0                                     ; $65a2: $01 $a0 $01
	nop                                              ; $65a5: $00
	dec [hl]                                         ; $65a6: $35
	ret nz                                           ; $65a7: $c0

	ld bc, $04a0                                     ; $65a8: $01 $a0 $04
	nop                                              ; $65ab: $00
	ld b, l                                          ; $65ac: $45
	ret nz                                           ; $65ad: $c0

	ld bc, $01a0                                     ; $65ae: $01 $a0 $01
	nop                                              ; $65b1: $00
	ld c, d                                          ; $65b2: $4a
	ret nz                                           ; $65b3: $c0

	ld bc, $04a0                                     ; $65b4: $01 $a0 $04
	nop                                              ; $65b7: $00
	ld d, h                                          ; $65b8: $54
	ret nz                                           ; $65b9: $c0

	ld bc, $01a0                                     ; $65ba: $01 $a0 $01
	nop                                              ; $65bd: $00
	ld l, e                                          ; $65be: $6b
	ret nz                                           ; $65bf: $c0

	ld bc, $04a0                                     ; $65c0: $01 $a0 $04
	nop                                              ; $65c3: $00
	ld [hl], e                                       ; $65c4: $73
	ret nz                                           ; $65c5: $c0

	ld bc, $01a0                                     ; $65c6: $01 $a0 $01
	nop                                              ; $65c9: $00
	add [hl]                                         ; $65ca: $86
	db $e4                                           ; $65cb: $e4
	nop                                              ; $65cc: $00
	ld [bc], a                                       ; $65cd: $02
	add hl, bc                                       ; $65ce: $09
	ld [hl+], a                                      ; $65cf: $22
	ei                                               ; $65d0: $fb
	pop af                                           ; $65d1: $f1
	add b                                            ; $65d2: $80
	ld [bc], a                                       ; $65d3: $02
	add e                                            ; $65d4: $83
	dec b                                            ; $65d5: $05
	ret nc                                           ; $65d6: $d0

	add e                                            ; $65d7: $83
	ld [bc], a                                       ; $65d8: $02
	add h                                            ; $65d9: $84
	rst SubAFromDE                                          ; $65da: $df
	pop bc                                           ; $65db: $c1
	cp b                                             ; $65dc: $b8
	pop bc                                           ; $65dd: $c1
	ld e, e                                          ; $65de: $5b
	pop bc                                           ; $65df: $c1
	ld [hl+], a                                      ; $65e0: $22
	add e                                            ; $65e1: $83
	ld [bc], a                                       ; $65e2: $02
	add h                                            ; $65e3: $84
	ret nz                                           ; $65e4: $c0

	ld de, $00e3                                     ; $65e5: $11 $e3 $00
	ld a, [hl]                                       ; $65e8: $7e
	ret nz                                           ; $65e9: $c0

	ld bc, $01a0                                     ; $65ea: $01 $a0 $01
	nop                                              ; $65ed: $00
	sbc b                                            ; $65ee: $98
	db $e4                                           ; $65ef: $e4
	nop                                              ; $65f0: $00
	ld [bc], a                                       ; $65f1: $02
	add hl, bc                                       ; $65f2: $09
	inc sp                                           ; $65f3: $33
	ret nz                                           ; $65f4: $c0

	add hl, bc                                       ; $65f5: $09
	db $e3                                           ; $65f6: $e3
	nop                                              ; $65f7: $00
	dec b                                            ; $65f8: $05
	ret nz                                           ; $65f9: $c0

	xor b                                            ; $65fa: $a8
	jp nc, $abc0                                     ; $65fb: $d2 $c0 $ab

	pop de                                           ; $65fe: $d1
	pop bc                                           ; $65ff: $c1
	ld e, h                                          ; $6600: $5c
	ret nz                                           ; $6601: $c0

	jp z, $01c0                                      ; $6602: $ca $c0 $01

	and b                                            ; $6605: $a0
	inc b                                            ; $6606: $04
	nop                                              ; $6607: $00
	and l                                            ; $6608: $a5
	ret nz                                           ; $6609: $c0

	ld bc, $01a0                                     ; $660a: $01 $a0 $01
	nop                                              ; $660d: $00
	xor l                                            ; $660e: $ad
	ret nz                                           ; $660f: $c0

	ld bc, $04a0                                     ; $6610: $01 $a0 $04
	nop                                              ; $6613: $00
	or [hl]                                          ; $6614: $b6
	pop bc                                           ; $6615: $c1
	ld e, e                                          ; $6616: $5b
	ret nz                                           ; $6617: $c0

	ld bc, $01a0                                     ; $6618: $01 $a0 $01
	nop                                              ; $661b: $00
	jp $3bc1                                         ; $661c: $c3 $c1 $3b


	pop bc                                           ; $661f: $c1
	ld l, e                                          ; $6620: $6b
	ret c                                            ; $6621: $d8

	jp nc, $01e5                                     ; $6622: $d2 $e5 $01

	add hl, de                                       ; $6625: $19
	or c                                             ; $6626: $b1
	ld [hl], $08                                     ; $6627: $36 $08
	add hl, bc                                       ; $6629: $09
	inc h                                            ; $662a: $24
	ret nz                                           ; $662b: $c0

	ld bc, $01a0                                     ; $662c: $01 $a0 $01
	nop                                              ; $662f: $00
	ld bc, $59c1                                     ; $6630: $01 $c1 $59
	db $e3                                           ; $6633: $e3
	nop                                              ; $6634: $00
	ld h, d                                          ; $6635: $62
	ret nz                                           ; $6636: $c0

	ld bc, $01a0                                     ; $6637: $01 $a0 $01
	nop                                              ; $663a: $00
	inc c                                            ; $663b: $0c
	pop hl                                           ; $663c: $e1
	ld [bc], a                                       ; $663d: $02
	ld [bc], a                                       ; $663e: $02
	db $ed                                           ; $663f: $ed
	ret nz                                           ; $6640: $c0

	ld bc, $15a0                                     ; $6641: $01 $a0 $15
	nop                                              ; $6644: $00
	ld d, $c0                                        ; $6645: $16 $c0
	ld bc, $01a0                                     ; $6647: $01 $a0 $01
	nop                                              ; $664a: $00
	jr nz, @-$1a                                     ; $664b: $20 $e4

	nop                                              ; $664d: $00
	ld [bc], a                                       ; $664e: $02
	add hl, bc                                       ; $664f: $09
	and c                                            ; $6650: $a1
	ld h, c                                          ; $6651: $61
	db $fc                                           ; $6652: $fc
	add c                                            ; $6653: $81
	and b                                            ; $6654: $a0
	nop                                              ; $6655: $00
	jp nc, Jump_087_603c                             ; $6656: $d2 $3c $60

	add b                                            ; $6659: $80
	and b                                            ; $665a: $a0
	ld [bc], a                                       ; $665b: $02
	dec de                                           ; $665c: $1b
	ld h, b                                          ; $665d: $60
	ei                                               ; $665e: $fb
	ret nz                                           ; $665f: $c0

	add e                                            ; $6660: $83
	call nc, $c8e0                                   ; $6661: $d4 $e0 $c8
	inc bc                                           ; $6664: $03
	ldh [rP1], a                                     ; $6665: $e0 $00
	sbc b                                            ; $6667: $98
	rrca                                             ; $6668: $0f
	ld h, b                                          ; $6669: $60
	ei                                               ; $666a: $fb
	ret nz                                           ; $666b: $c0

	add e                                            ; $666c: $83
	sub $e0                                          ; $666d: $d6 $e0
	ld a, b                                          ; $666f: $78
	inc bc                                           ; $6670: $03
	ldh [rP1], a                                     ; $6671: $e0 $00
	add b                                            ; $6673: $80
	inc bc                                           ; $6674: $03
	ldh [rP1], a                                     ; $6675: $e0 $00
	ldh [rAUD3LEN], a                                ; $6677: $e0 $1b
	ld h, b                                          ; $6679: $60
	ei                                               ; $667a: $fb
	ret nz                                           ; $667b: $c0

	add e                                            ; $667c: $83
	sub $e0                                          ; $667d: $d6 $e0
	ld a, b                                          ; $667f: $78
	inc bc                                           ; $6680: $03
	ldh [rP1], a                                     ; $6681: $e0 $00
	ld [hl], b                                       ; $6683: $70
	rrca                                             ; $6684: $0f
	ld h, b                                          ; $6685: $60
	ei                                               ; $6686: $fb
	ret nz                                           ; $6687: $c0

	add e                                            ; $6688: $83
	call nc, $c8e0                                   ; $6689: $d4 $e0 $c8
	inc bc                                           ; $668c: $03
	ldh [rP1], a                                     ; $668d: $e0 $00
	ld [hl], b                                       ; $668f: $70
	inc bc                                           ; $6690: $03
	ldh [rP1], a                                     ; $6691: $e0 $00
	call nz, $81fc                                   ; $6693: $c4 $fc $81
	and b                                            ; $6696: $a0
	nop                                              ; $6697: $00
	pop de                                           ; $6698: $d1
	inc a                                            ; $6699: $3c
	ld h, b                                          ; $669a: $60
	add b                                            ; $669b: $80
	and b                                            ; $669c: $a0
	ld [bc], a                                       ; $669d: $02
	dec de                                           ; $669e: $1b
	ld h, b                                          ; $669f: $60
	ei                                               ; $66a0: $fb
	ret nz                                           ; $66a1: $c0

	add e                                            ; $66a2: $83
	call nc, $afe0                                   ; $66a3: $d4 $e0 $af
	inc bc                                           ; $66a6: $03
	ldh [rP1], a                                     ; $66a7: $e0 $00
	ld d, [hl]                                       ; $66a9: $56
	rrca                                             ; $66aa: $0f
	ld h, b                                          ; $66ab: $60
	ei                                               ; $66ac: $fb
	ret nz                                           ; $66ad: $c0

	add e                                            ; $66ae: $83
	sub $e0                                          ; $66af: $d6 $e0
	ld h, h                                          ; $66b1: $64
	inc bc                                           ; $66b2: $03
	ldh [rP1], a                                     ; $66b3: $e0 $00
	ld a, $03                                        ; $66b5: $3e $03
	ldh [rP1], a                                     ; $66b7: $e0 $00
	sbc [hl]                                         ; $66b9: $9e
	dec de                                           ; $66ba: $1b
	ld h, b                                          ; $66bb: $60
	ei                                               ; $66bc: $fb
	ret nz                                           ; $66bd: $c0

	add e                                            ; $66be: $83
	sub $e0                                          ; $66bf: $d6 $e0
	ld h, h                                          ; $66c1: $64
	inc bc                                           ; $66c2: $03
	ldh [rP1], a                                     ; $66c3: $e0 $00
	ld l, $0f                                        ; $66c5: $2e $0f
	ld h, b                                          ; $66c7: $60
	ei                                               ; $66c8: $fb
	ret nz                                           ; $66c9: $c0

	add e                                            ; $66ca: $83
	call nc, $afe0                                   ; $66cb: $d4 $e0 $af
	inc bc                                           ; $66ce: $03
	ldh [rP1], a                                     ; $66cf: $e0 $00
	ld l, $03                                        ; $66d1: $2e $03
	ldh [rP1], a                                     ; $66d3: $e0 $00
	add d                                            ; $66d5: $82
	dec de                                           ; $66d6: $1b
	ld h, b                                          ; $66d7: $60
	ei                                               ; $66d8: $fb
	ret nz                                           ; $66d9: $c0

	add e                                            ; $66da: $83
	sub $e0                                          ; $66db: $d6 $e0
	ld b, [hl]                                       ; $66dd: $46
	inc bc                                           ; $66de: $03
	ldh [rP1], a                                     ; $66df: $e0 $00
	ld [de], a                                       ; $66e1: $12
	rrca                                             ; $66e2: $0f
	ld h, b                                          ; $66e3: $60
	ei                                               ; $66e4: $fb
	ret nz                                           ; $66e5: $c0

	add e                                            ; $66e6: $83
	call nc, $96e0                                   ; $66e7: $d4 $e0 $96
	inc bc                                           ; $66ea: $03
	ldh [rP1], a                                     ; $66eb: $e0 $00
	ld [de], a                                       ; $66ed: $12
	inc bc                                           ; $66ee: $03
	ldh [rP1], a                                     ; $66ef: $e0 $00
	ld h, [hl]                                       ; $66f1: $66
	dec bc                                           ; $66f2: $0b
	ret nz                                           ; $66f3: $c0

	ld bc, $15a0                                     ; $66f4: $01 $a0 $15
	nop                                              ; $66f7: $00
	inc l                                            ; $66f8: $2c
	pop bc                                           ; $66f9: $c1
	ld e, e                                          ; $66fa: $5b
	db $e4                                           ; $66fb: $e4
	nop                                              ; $66fc: $00
	ld a, d                                          ; $66fd: $7a
	ld d, a                                          ; $66fe: $57
	and c                                            ; $66ff: $a1
	add c                                            ; $6700: $81
	and b                                            ; $6701: $a0
	inc bc                                           ; $6702: $03
	nop                                              ; $6703: $00
	inc e                                            ; $6704: $1c
	ret nz                                           ; $6705: $c0

	ld bc, $15a0                                     ; $6706: $01 $a0 $15
	nop                                              ; $6709: $00
	dec [hl]                                         ; $670a: $35
	ret nz                                           ; $670b: $c0

	inc c                                            ; $670c: $0c
	ldh [rAUD3HIGH], a                               ; $670d: $e0 $1e
	pop hl                                           ; $670f: $e1
	ld [bc], a                                       ; $6710: $02
	inc bc                                           ; $6711: $03
	rrca                                             ; $6712: $0f
	ret nz                                           ; $6713: $c0

	ld bc, $15a0                                     ; $6714: $01 $a0 $15
	nop                                              ; $6717: $00
	ld c, d                                          ; $6718: $4a
	pop bc                                           ; $6719: $c1
	ld e, e                                          ; $671a: $5b
	ret nz                                           ; $671b: $c0

	ld bc, $01a0                                     ; $671c: $01 $a0 $01
	nop                                              ; $671f: $00
	ld l, d                                          ; $6720: $6a
	ld bc, $e112                                     ; $6721: $01 $12 $e1
	ld [bc], a                                       ; $6724: $02
	inc bc                                           ; $6725: $03
	rrca                                             ; $6726: $0f
	ret nz                                           ; $6727: $c0

	ld bc, $15a0                                     ; $6728: $01 $a0 $15
	nop                                              ; $672b: $00
	ld [hl], e                                       ; $672c: $73
	pop bc                                           ; $672d: $c1
	ld e, e                                          ; $672e: $5b
	ret nz                                           ; $672f: $c0

	ld bc, $01a0                                     ; $6730: $01 $a0 $01
	nop                                              ; $6733: $00
	ld a, l                                          ; $6734: $7d
	rst $38                                          ; $6735: $ff
	ld d, $e1                                        ; $6736: $16 $e1
	ld [bc], a                                       ; $6738: $02
	inc bc                                           ; $6739: $03
	rrca                                             ; $673a: $0f
	ret nz                                           ; $673b: $c0

	ld bc, $15a0                                     ; $673c: $01 $a0 $15
	nop                                              ; $673f: $00
	add e                                            ; $6740: $83
	pop bc                                           ; $6741: $c1
	ld e, e                                          ; $6742: $5b
	ret nz                                           ; $6743: $c0

	ld bc, $01a0                                     ; $6744: $01 $a0 $01
	nop                                              ; $6747: $00
	ld a, l                                          ; $6748: $7d
	nop                                              ; $6749: $00
	add b                                            ; $674a: $80
	ld [bc], a                                       ; $674b: $02
	dec hl                                           ; $674c: $2b
	pop bc                                           ; $674d: $c1
	add h                                            ; $674e: $84
	nop                                              ; $674f: $00
	add b                                            ; $6750: $80
	and b                                            ; $6751: $a0
	ld [bc], a                                       ; $6752: $02
	db $e4                                           ; $6753: $e4
	nop                                              ; $6754: $00
	ld [hl+], a                                      ; $6755: $22
	rra                                              ; $6756: $1f
	ret nz                                           ; $6757: $c0

	ld bc, $15a0                                     ; $6758: $01 $a0 $15
	nop                                              ; $675b: $00
	dec [hl]                                         ; $675c: $35
	ret nz                                           ; $675d: $c0

	ld bc, $01a0                                     ; $675e: $01 $a0 $01
	nop                                              ; $6761: $00
	sbc b                                            ; $6762: $98
	ret nz                                           ; $6763: $c0

	ld bc, $15a0                                     ; $6764: $01 $a0 $15
	nop                                              ; $6767: $00
	sbc e                                            ; $6768: $9b
	ret nz                                           ; $6769: $c0

	ld bc, $01a0                                     ; $676a: $01 $a0 $01
	nop                                              ; $676d: $00
	and [hl]                                         ; $676e: $a6
	pop bc                                           ; $676f: $c1
	ld e, e                                          ; $6770: $5b
	pop bc                                           ; $6771: $c1
	dec sp                                           ; $6772: $3b
	db $e4                                           ; $6773: $e4
	dec c                                            ; $6774: $0d
	ld l, l                                          ; $6775: $6d
	add hl, bc                                       ; $6776: $09
	ret nz                                           ; $6777: $c0

	ldh [$d0], a                                     ; $6778: $e0 $d0
	add a                                            ; $677a: $87
	ld [bc], a                                       ; $677b: $02
	pop hl                                           ; $677c: $e1
	ret nc                                           ; $677d: $d0

	pop bc                                           ; $677e: $c1
	ld e, c                                          ; $677f: $59
	db $e3                                           ; $6780: $e3
	nop                                              ; $6781: $00
	ld h, e                                          ; $6782: $63
	ret nz                                           ; $6783: $c0

	ld bc, $01a0                                     ; $6784: $01 $a0 $01
	nop                                              ; $6787: $00
	xor e                                            ; $6788: $ab
	ret nz                                           ; $6789: $c0

	ld bc, $0ba0                                     ; $678a: $01 $a0 $0b
	nop                                              ; $678d: $00
	or e                                             ; $678e: $b3
	ret nz                                           ; $678f: $c0

	xor c                                            ; $6790: $a9
	rst SubAFromDE                                          ; $6791: $df
	and c                                            ; $6792: $a1
	add c                                            ; $6793: $81
	and b                                            ; $6794: $a0
	dec b                                            ; $6795: $05
	nop                                              ; $6796: $00
	ld b, [hl]                                       ; $6797: $46
	ret nz                                           ; $6798: $c0

	ld bc, $01a0                                     ; $6799: $01 $a0 $01
	nop                                              ; $679c: $00
	call nc, $01c0                                   ; $679d: $d4 $c0 $01
	and b                                            ; $67a0: $a0
	dec bc                                           ; $67a1: $0b
	nop                                              ; $67a2: $00
	db $dd                                           ; $67a3: $dd
	ret nz                                           ; $67a4: $c0

	and l                                            ; $67a5: $a5
	ret nz                                           ; $67a6: $c0

	ld bc, $01a0                                     ; $67a7: $01 $a0 $01
	nop                                              ; $67aa: $00
	pop hl                                           ; $67ab: $e1
	ret nz                                           ; $67ac: $c0

	ld bc, $0ba0                                     ; $67ad: $01 $a0 $0b
	nop                                              ; $67b0: $00
	ld [$01c0], a                                    ; $67b1: $ea $c0 $01
	and b                                            ; $67b4: $a0
	ld bc, $0201                                     ; $67b5: $01 $01 $02
	ret nz                                           ; $67b8: $c0

	ld bc, $0ba0                                     ; $67b9: $01 $a0 $0b
	ld bc, $c00b                                     ; $67bc: $01 $0b $c0
	ld bc, $01a0                                     ; $67bf: $01 $a0 $01
	ld bc, $c016                                     ; $67c2: $01 $16 $c0
	ld bc, $0ba0                                     ; $67c5: $01 $a0 $0b
	ld bc, $c01c                                     ; $67c8: $01 $1c $c0
	ld bc, $01a0                                     ; $67cb: $01 $a0 $01
	ld bc, $c02b                                     ; $67ce: $01 $2b $c0
	ld bc, $0ba0                                     ; $67d1: $01 $a0 $0b
	ld bc, $c135                                     ; $67d4: $01 $35 $c1
	ld e, e                                          ; $67d7: $5b
	ret nz                                           ; $67d8: $c0

	ld bc, $01a0                                     ; $67d9: $01 $a0 $01
	ld bc, $0157                                     ; $67dc: $01 $57 $01
	ld l, $c0                                        ; $67df: $2e $c0
	ld bc, $01a0                                     ; $67e1: $01 $a0 $01
	ld bc, $c05c                                     ; $67e4: $01 $5c $c0
	ld bc, $0ba0                                     ; $67e7: $01 $a0 $0b
	nop                                              ; $67ea: $00
	db $dd                                           ; $67eb: $dd
	ret nz                                           ; $67ec: $c0

	and l                                            ; $67ed: $a5
	ret nz                                           ; $67ee: $c0

	ld bc, $01a0                                     ; $67ef: $01 $a0 $01
	ld bc, $c067                                     ; $67f2: $01 $67 $c0
	ld bc, $0ba0                                     ; $67f5: $01 $a0 $0b
	ld bc, $c073                                     ; $67f8: $01 $73 $c0
	ld bc, $01a0                                     ; $67fb: $01 $a0 $01
	ld bc, $c087                                     ; $67fe: $01 $87 $c0
	ld bc, $0ba0                                     ; $6801: $01 $a0 $0b
	ld bc, $c18d                                     ; $6804: $01 $8d $c1
	ld e, e                                          ; $6807: $5b
	ret nz                                           ; $6808: $c0

jr_087_6809:
	ld bc, $01a0                                     ; $6809: $01 $a0 $01
	ld bc, $ff57                                     ; $680c: $01 $57 $ff
	ld b, [hl]                                       ; $680f: $46
	ret nz                                           ; $6810: $c0

	ld bc, $01a0                                     ; $6811: $01 $a0 $01
	ld bc, $c0ab                                     ; $6814: $01 $ab $c0
	and l                                            ; $6817: $a5
	ret nz                                           ; $6818: $c0

	ld bc, $0ba0                                     ; $6819: $01 $a0 $0b
	ld bc, $c0b3                                     ; $681c: $01 $b3 $c0
	ld bc, $01a0                                     ; $681f: $01 $a0 $01
	ld bc, $c0c2                                     ; $6822: $01 $c2 $c0
	ld bc, $0ba0                                     ; $6825: $01 $a0 $0b
	ld bc, $c0c6                                     ; $6828: $01 $c6 $c0
	ld bc, $01a0                                     ; $682b: $01 $a0 $01
	ld bc, $c0cd                                     ; $682e: $01 $cd $c0
	ld bc, $0ba0                                     ; $6831: $01 $a0 $0b
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $6834: $01 $e4 $c0
	ld bc, $01a0                                     ; $6837: $01 $a0 $01
	ld bc, $c0f4                                     ; $683a: $01 $f4 $c0
	ld bc, $0ba0                                     ; $683d: $01 $a0 $0b
	ld bc, $c0f9                                     ; $6840: $01 $f9 $c0
	ld bc, $01a0                                     ; $6843: $01 $a0 $01
	ld [bc], a                                       ; $6846: $02
	jr jr_087_6809                                   ; $6847: $18 $c0

	ld bc, $0ba0                                     ; $6849: $01 $a0 $0b
	ld [bc], a                                       ; $684c: $02
	dec h                                            ; $684d: $25
	pop bc                                           ; $684e: $c1
	ld e, e                                          ; $684f: $5b
	ret nz                                           ; $6850: $c0

	ld bc, $01a0                                     ; $6851: $01 $a0 $01
	ld [bc], a                                       ; $6854: $02
	scf                                              ; $6855: $37
	db $e4                                           ; $6856: $e4
	nop                                              ; $6857: $00
	ld [bc], a                                       ; $6858: $02
	add hl, bc                                       ; $6859: $09
	ld e, e                                          ; $685a: $5b
	ld b, b                                          ; $685b: $40
	add c                                            ; $685c: $81
	and b                                            ; $685d: $a0
	rlca                                             ; $685e: $07
	ret nz                                           ; $685f: $c0

	ld hl, $d0d4                                     ; $6860: $21 $d4 $d0
	ret nz                                           ; $6863: $c0

	ld e, l                                          ; $6864: $5d
	ret nc                                           ; $6865: $d0

	ret nz                                           ; $6866: $c0

	and a                                            ; $6867: $a7
	ret nc                                           ; $6868: $d0

	db $d3                                           ; $6869: $d3
	call nc, $acc0                                   ; $686a: $d4 $c0 $ac
	ret nz                                           ; $686d: $c0

	and l                                            ; $686e: $a5
	add c                                            ; $686f: $81
	ret nz                                           ; $6870: $c0

	dec de                                           ; $6871: $1b
	ret nc                                           ; $6872: $d0

	ld bc, $1dd5                                     ; $6873: $01 $d5 $1d
	ret nz                                           ; $6876: $c0

	ld bc, $02a0                                     ; $6877: $01 $a0 $02
	ld [bc], a                                       ; $687a: $02
	ld a, $c0                                        ; $687b: $3e $c0
	ld bc, $01a0                                     ; $687d: $01 $a0 $01
	ld [bc], a                                       ; $6880: $02
	ld b, h                                          ; $6881: $44
	ret nz                                           ; $6882: $c0

	ld bc, $02a0                                     ; $6883: $01 $a0 $02
	ld [bc], a                                       ; $6886: $02
	ld c, b                                          ; $6887: $48
	pop bc                                           ; $6888: $c1
	ld e, e                                          ; $6889: $5b
	ret nz                                           ; $688a: $c0

	ld bc, $01a0                                     ; $688b: $01 $a0 $01
	ld [bc], a                                       ; $688e: $02
	ld c, l                                          ; $688f: $4d
	db $e4                                           ; $6890: $e4
	nop                                              ; $6891: $00
	dec h                                            ; $6892: $25
	nop                                              ; $6893: $00
	ld hl, $01c0                                     ; $6894: $21 $c0 $01
	and b                                            ; $6897: $a0
	ld [bc], a                                       ; $6898: $02
	ld [bc], a                                       ; $6899: $02
	ld d, c                                          ; $689a: $51
	ret nz                                           ; $689b: $c0

	ld bc, $01a0                                     ; $689c: $01 $a0 $01
	ld [bc], a                                       ; $689f: $02
	ld b, h                                          ; $68a0: $44
	ret nz                                           ; $68a1: $c0

	nop                                              ; $68a2: $00
	ld [bc], a                                       ; $68a3: $02
	ld e, c                                          ; $68a4: $59
	ret nz                                           ; $68a5: $c0

	ld bc, $02a0                                     ; $68a6: $01 $a0 $02
	ld [bc], a                                       ; $68a9: $02
	ld e, l                                          ; $68aa: $5d

jr_087_68ab:
	ret nz                                           ; $68ab: $c0

	ld bc, $01a0                                     ; $68ac: $01 $a0 $01
	ld [bc], a                                       ; $68af: $02
	ld h, c                                          ; $68b0: $61
	pop bc                                           ; $68b1: $c1
	ld e, e                                          ; $68b2: $5b
	db $e4                                           ; $68b3: $e4
	nop                                              ; $68b4: $00
	ld [bc], a                                       ; $68b5: $02
	add hl, bc                                       ; $68b6: $09
	dec a                                            ; $68b7: $3d
	ret nc                                           ; $68b8: $d0

	add a                                            ; $68b9: $87
	ld [bc], a                                       ; $68ba: $02
	pop hl                                           ; $68bb: $e1
	ret nz                                           ; $68bc: $c0

	ld e, e                                          ; $68bd: $5b
	add a                                            ; $68be: $87
	ld [bc], a                                       ; $68bf: $02
	pop hl                                           ; $68c0: $e1
	db $fd                                           ; $68c1: $fd
	ld [hl-], a                                      ; $68c2: $32
	add a                                            ; $68c3: $87
	ld [bc], a                                       ; $68c4: $02
	pop hl                                           ; $68c5: $e1
	ld bc, $03d1                                     ; $68c6: $01 $d1 $03
	db $e4                                           ; $68c9: $e4
	nop                                              ; $68ca: $00
	ld e, h                                          ; $68cb: $5c
	ld bc, $03d2                                     ; $68cc: $01 $d2 $03
	db $e4                                           ; $68cf: $e4
	ld bc, $01b4                                     ; $68d0: $01 $b4 $01
	db $d3                                           ; $68d3: $d3
	inc bc                                           ; $68d4: $03
	db $e4                                           ; $68d5: $e4
	ld [bc], a                                       ; $68d6: $02
	or $01                                           ; $68d7: $f6 $01
	rst SubAFromHL                                          ; $68d9: $d7
	inc bc                                           ; $68da: $03
	db $e4                                           ; $68db: $e4
	inc b                                            ; $68dc: $04
	ld a, $01                                        ; $68dd: $3e $01
	ret c                                            ; $68df: $d8

	inc bc                                           ; $68e0: $03
	db $e4                                           ; $68e1: $e4
	dec b                                            ; $68e2: $05
	adc b                                            ; $68e3: $88
	ld bc, $03da                                     ; $68e4: $01 $da $03
	db $e4                                           ; $68e7: $e4
	ld b, $cd                                        ; $68e8: $06 $cd
	ld bc, $03dd                                     ; $68ea: $01 $dd $03
	db $e4                                           ; $68ed: $e4
	rlca                                             ; $68ee: $07
	add h                                            ; $68ef: $84
	nop                                              ; $68f0: $00
	inc bc                                           ; $68f1: $03
	db $e4                                           ; $68f2: $e4
	nop                                              ; $68f3: $00
	ld [bc], a                                       ; $68f4: $02
	add hl, bc                                       ; $68f5: $09
	cpl                                              ; $68f6: $2f
	ret nc                                           ; $68f7: $d0

	add a                                            ; $68f8: $87
	ld [bc], a                                       ; $68f9: $02
	pop hl                                           ; $68fa: $e1
	ret nz                                           ; $68fb: $c0

	ld e, h                                          ; $68fc: $5c
	db $fd                                           ; $68fd: $fd
	daa                                              ; $68fe: $27
	add a                                            ; $68ff: $87
	ld [bc], a                                       ; $6900: $02
	pop hl                                           ; $6901: $e1
	ld bc, $03d1                                     ; $6902: $01 $d1 $03
	db $e4                                           ; $6905: $e4
	nop                                              ; $6906: $00
	cp a                                             ; $6907: $bf
	ld bc, $03d2                                     ; $6908: $01 $d2 $03
	db $e4                                           ; $690b: $e4
	ld [bc], a                                       ; $690c: $02
	rla                                              ; $690d: $17
	ld bc, $03d3                                     ; $690e: $01 $d3 $03
	db $e4                                           ; $6911: $e4
	inc bc                                           ; $6912: $03
	ld e, c                                          ; $6913: $59
	ld bc, $03d7                                     ; $6914: $01 $d7 $03
	db $e4                                           ; $6917: $e4
	inc b                                            ; $6918: $04
	and c                                            ; $6919: $a1
	ld bc, $03d8                                     ; $691a: $01 $d8 $03
	db $e4                                           ; $691d: $e4
	dec b                                            ; $691e: $05
	db $eb                                           ; $691f: $eb
	ld bc, $03dd                                     ; $6920: $01 $dd $03
	db $e4                                           ; $6923: $e4
	rlca                                             ; $6924: $07
	db $ed                                           ; $6925: $ed
	add hl, bc                                       ; $6926: $09
	ld l, l                                          ; $6927: $6d
	jr nz, jr_087_68ab                               ; $6928: $20 $81

	and b                                            ; $692a: $a0
	rlca                                             ; $692b: $07
	ret nz                                           ; $692c: $c0

	and a                                            ; $692d: $a7
	pop de                                           ; $692e: $d1
	db $d3                                           ; $692f: $d3
	call nc, $acc0                                   ; $6930: $d4 $c0 $ac
	ret nz                                           ; $6933: $c0

	and l                                            ; $6934: $a5
	add c                                            ; $6935: $81
	ret nz                                           ; $6936: $c0

	dec de                                           ; $6937: $1b
	pop de                                           ; $6938: $d1
	ld bc, $1ad5                                     ; $6939: $01 $d5 $1a
	ret nz                                           ; $693c: $c0

	ld bc, $03a0                                     ; $693d: $01 $a0 $03
	ld [bc], a                                       ; $6940: $02
	ld h, h                                          ; $6941: $64
	ret nz                                           ; $6942: $c0

	ld bc, $01a0                                     ; $6943: $01 $a0 $01
	ld [bc], a                                       ; $6946: $02
	ld l, b                                          ; $6947: $68
	ret nz                                           ; $6948: $c0

	ld bc, $03a0                                     ; $6949: $01 $a0 $03
	ld [bc], a                                       ; $694c: $02
	ld l, h                                          ; $694d: $6c
	pop bc                                           ; $694e: $c1
	ld e, e                                          ; $694f: $5b
	ret nz                                           ; $6950: $c0

	ld bc, $01a0                                     ; $6951: $01 $a0 $01
	ld [bc], a                                       ; $6954: $02
	ld c, l                                          ; $6955: $4d
	nop                                              ; $6956: $00
	ld e, $c0                                        ; $6957: $1e $c0
	ld bc, $03a0                                     ; $6959: $01 $a0 $03
	ld [bc], a                                       ; $695c: $02
	ld l, a                                          ; $695d: $6f
	ret nz                                           ; $695e: $c0

	ld bc, $01a0                                     ; $695f: $01 $a0 $01
	ld [bc], a                                       ; $6962: $02
	ld [hl], l                                       ; $6963: $75
	ret nz                                           ; $6964: $c0

	nop                                              ; $6965: $00
	ld [bc], a                                       ; $6966: $02
	ld a, d                                          ; $6967: $7a
	ret nz                                           ; $6968: $c0

	ld bc, $03a0                                     ; $6969: $01 $a0 $03
	ld [bc], a                                       ; $696c: $02
	add d                                            ; $696d: $82
	ret nz                                           ; $696e: $c0

	ld bc, $01a0                                     ; $696f: $01 $a0 $01
	ld [bc], a                                       ; $6972: $02
	ld h, c                                          ; $6973: $61
	pop bc                                           ; $6974: $c1
	ld e, e                                          ; $6975: $5b
	ret nz                                           ; $6976: $c0

	ld hl, $d1d4                                     ; $6977: $21 $d4 $d1
	ret nz                                           ; $697a: $c0

	ld e, l                                          ; $697b: $5d
	pop de                                           ; $697c: $d1
	ld h, b                                          ; $697d: $60
	ei                                               ; $697e: $fb
	add c                                            ; $697f: $81
	and b                                            ; $6980: $a0
	rlca                                             ; $6981: $07
	jp nc, $d008                                     ; $6982: $d2 $08 $d0

	add e                                            ; $6985: $83
	and b                                            ; $6986: $a0
	add hl, bc                                       ; $6987: $09
	pop de                                           ; $6988: $d1
	db $e4                                           ; $6989: $e4
	ld [$0835], sp                                   ; $698a: $08 $35 $08
	ret nc                                           ; $698d: $d0

	add e                                            ; $698e: $83
	and b                                            ; $698f: $a0
	dec c                                            ; $6990: $0d
	pop de                                           ; $6991: $d1
	db $e4                                           ; $6992: $e4
	nop                                              ; $6993: $00
	ld [bc], a                                       ; $6994: $02
	add hl, bc                                       ; $6995: $09
	ld l, $fd                                        ; $6996: $2e $fd
	inc l                                            ; $6998: $2c
	ret nz                                           ; $6999: $c0

	ld e, e                                          ; $699a: $5b
	pop de                                           ; $699b: $d1
	ld bc, $03d2                                     ; $699c: $01 $d2 $03

jr_087_699f:
	db $e4                                           ; $699f: $e4
	nop                                              ; $69a0: $00
	db $e4                                           ; $69a1: $e4
	ld bc, $03d3                                     ; $69a2: $01 $d3 $03
	db $e4                                           ; $69a5: $e4
	ld [bc], a                                       ; $69a6: $02
	ld h, $01                                        ; $69a7: $26 $01
	rst SubAFromHL                                          ; $69a9: $d7
	inc bc                                           ; $69aa: $03
	db $e4                                           ; $69ab: $e4
	inc bc                                           ; $69ac: $03
	ld l, [hl]                                       ; $69ad: $6e
	ld bc, $03d8                                     ; $69ae: $01 $d8 $03
	db $e4                                           ; $69b1: $e4
	inc b                                            ; $69b2: $04
	cp b                                             ; $69b3: $b8
	ld bc, $03da                                     ; $69b4: $01 $da $03
	db $e4                                           ; $69b7: $e4
	dec b                                            ; $69b8: $05
	db $fd                                           ; $69b9: $fd
	ld bc, $03dd                                     ; $69ba: $01 $dd $03
	db $e4                                           ; $69bd: $e4
	ld b, $b4                                        ; $69be: $06 $b4
	nop                                              ; $69c0: $00
	inc bc                                           ; $69c1: $03
	db $e4                                           ; $69c2: $e4
	nop                                              ; $69c3: $00
	sbc l                                            ; $69c4: $9d
	add hl, bc                                       ; $69c5: $09
	sbc c                                            ; $69c6: $99
	ret nz                                           ; $69c7: $c0

	ld e, $e0                                        ; $69c8: $1e $e0
	ld b, [hl]                                       ; $69ca: $46
	pop de                                           ; $69cb: $d1
	ret nz                                           ; $69cc: $c0

	jr nz, jr_087_699f                               ; $69cd: $20 $d0

	pop de                                           ; $69cf: $d1
	jr nz, @-$7d                                     ; $69d0: $20 $81

	and b                                            ; $69d2: $a0
	rlca                                             ; $69d3: $07
	ret nz                                           ; $69d4: $c0

	ld bc, $01a0                                     ; $69d5: $01 $a0 $01
	ld [bc], a                                       ; $69d8: $02
	adc l                                            ; $69d9: $8d
	ret nz                                           ; $69da: $c0

	and a                                            ; $69db: $a7
	pop de                                           ; $69dc: $d1
	db $d3                                           ; $69dd: $d3
	call nc, $abc0                                   ; $69de: $d4 $c0 $ab
	db $d3                                           ; $69e1: $d3
	ret nz                                           ; $69e2: $c0

	and l                                            ; $69e3: $a5
	ret nz                                           ; $69e4: $c0

	ld bc, $01a0                                     ; $69e5: $01 $a0 $01
	ld [bc], a                                       ; $69e8: $02
	sbc d                                            ; $69e9: $9a
	pop bc                                           ; $69ea: $c1
	ld e, e                                          ; $69eb: $5b
	ret nz                                           ; $69ec: $c0

	dec bc                                           ; $69ed: $0b
	db $e3                                           ; $69ee: $e3
	nop                                              ; $69ef: $00
	ld [hl], d                                       ; $69f0: $72
	ret nz                                           ; $69f1: $c0

	nop                                              ; $69f2: $00
	ld [bc], a                                       ; $69f3: $02
	and l                                            ; $69f4: $a5
	ret nz                                           ; $69f5: $c0

	ld bc, $01a0                                     ; $69f6: $01 $a0 $01
	ld [bc], a                                       ; $69f9: $02
	xor c                                            ; $69fa: $a9
	ret nz                                           ; $69fb: $c0

	ld bc, $03a0                                     ; $69fc: $01 $a0 $03
	ld [bc], a                                       ; $69ff: $02
	or [hl]                                          ; $6a00: $b6
	pop bc                                           ; $6a01: $c1
	ld e, h                                          ; $6a02: $5c
	ret nz                                           ; $6a03: $c0

	ld bc, $01a0                                     ; $6a04: $01 $a0 $01
	ld [bc], a                                       ; $6a07: $02
	cp c                                             ; $6a08: $b9

jr_087_6a09:
	ret nz                                           ; $6a09: $c0

	ld bc, $03a0                                     ; $6a0a: $01 $a0 $03
	ld [bc], a                                       ; $6a0d: $02
	ret z                                            ; $6a0e: $c8

	ret nz                                           ; $6a0f: $c0

	ld bc, $01a0                                     ; $6a10: $01 $a0 $01
	ld [bc], a                                       ; $6a13: $02
	jp nc, $02e1                                     ; $6a14: $d2 $e1 $02

	inc bc                                           ; $6a17: $03
	inc de                                           ; $6a18: $13

jr_087_6a19:
	pop bc                                           ; $6a19: $c1
	or d                                             ; $6a1a: $b2
	db $e3                                           ; $6a1b: $e3
	nop                                              ; $6a1c: $00
	dec h                                            ; $6a1d: $25
	ret nz                                           ; $6a1e: $c0

	ld bc, $03a0                                     ; $6a1f: $01 $a0 $03
	ld [bc], a                                       ; $6a22: $02
	db $e4                                           ; $6a23: $e4
	ret nz                                           ; $6a24: $c0

jr_087_6a25:
	ld bc, $03a0                                     ; $6a25: $01 $a0 $03
	ld [bc], a                                       ; $6a28: $02
	db $eb                                           ; $6a29: $eb
	ret nz                                           ; $6a2a: $c0

	ld bc, $01a0                                     ; $6a2b: $01 $a0 $01
	ld [bc], a                                       ; $6a2e: $02
	ldh a, [$c0]                                     ; $6a2f: $f0 $c0
	ld bc, $03a0                                     ; $6a31: $01 $a0 $03
	ld [bc], a                                       ; $6a34: $02
	rst $38                                          ; $6a35: $ff
	pop bc                                           ; $6a36: $c1
	ld e, e                                          ; $6a37: $5b
	nop                                              ; $6a38: $00
	add b                                            ; $6a39: $80
	nop                                              ; $6a3a: $00
	ld l, l                                          ; $6a3b: $6d
	jr nz, @-$7d                                     ; $6a3c: $20 $81

	ld bc, $c0a6                                     ; $6a3e: $01 $a6 $c0
	sbc e                                            ; $6a41: $9b
	pop de                                           ; $6a42: $d1
	ret nz                                           ; $6a43: $c0

	ld e, $e0                                        ; $6a44: $1e $e0
	jr z, jr_087_6a19                                ; $6a46: $28 $d1

	ld h, b                                          ; $6a48: $60
	ei                                               ; $6a49: $fb
	add c                                            ; $6a4a: $81
	and b                                            ; $6a4b: $a0
	rlca                                             ; $6a4c: $07
	jp nc, $d008                                     ; $6a4d: $d2 $08 $d0

	add e                                            ; $6a50: $83
	and b                                            ; $6a51: $a0
	add hl, bc                                       ; $6a52: $09
	pop de                                           ; $6a53: $d1
	db $e4                                           ; $6a54: $e4
	rlca                                             ; $6a55: $07
	ld l, d                                          ; $6a56: $6a
	ld [$83d0], sp                                   ; $6a57: $08 $d0 $83
	and b                                            ; $6a5a: $a0
	dec c                                            ; $6a5b: $0d
	pop de                                           ; $6a5c: $d1
	db $e4                                           ; $6a5d: $e4
	nop                                              ; $6a5e: $00
	ld [bc], a                                       ; $6a5f: $02
	add hl, bc                                       ; $6a60: $09
	ld [hl+], a                                      ; $6a61: $22
	db $fd                                           ; $6a62: $fd
	jr nz, jr_087_6a25                               ; $6a63: $20 $c0

	ld e, h                                          ; $6a65: $5c
	ld bc, $03d2                                     ; $6a66: $01 $d2 $03
	db $e4                                           ; $6a69: $e4
	nop                                              ; $6a6a: $00
	cp c                                             ; $6a6b: $b9
	ld bc, $03d3                                     ; $6a6c: $01 $d3 $03
	db $e4                                           ; $6a6f: $e4
	ld bc, $01fb                                     ; $6a70: $01 $fb $01
	rst SubAFromHL                                          ; $6a73: $d7
	inc bc                                           ; $6a74: $03
	db $e4                                           ; $6a75: $e4
	inc bc                                           ; $6a76: $03
	ld b, e                                          ; $6a77: $43
	ld bc, $03d8                                     ; $6a78: $01 $d8 $03
	db $e4                                           ; $6a7b: $e4
	inc b                                            ; $6a7c: $04
	adc l                                            ; $6a7d: $8d
	ld bc, $03dd                                     ; $6a7e: $01 $dd $03
	db $e4                                           ; $6a81: $e4
	ld b, $8f                                        ; $6a82: $06 $8f
	add hl, bc                                       ; $6a84: $09
	ld l, l                                          ; $6a85: $6d
	jr nz, jr_087_6a09                               ; $6a86: $20 $81

	and b                                            ; $6a88: $a0
	rlca                                             ; $6a89: $07
	ret nz                                           ; $6a8a: $c0

	and a                                            ; $6a8b: $a7
	jp nc, $d4d3                                     ; $6a8c: $d2 $d3 $d4

	ret nz                                           ; $6a8f: $c0

	xor h                                            ; $6a90: $ac
	ret nz                                           ; $6a91: $c0

	and l                                            ; $6a92: $a5
	add c                                            ; $6a93: $81
	ret nz                                           ; $6a94: $c0

	dec de                                           ; $6a95: $1b
	jp nc, $d501                                     ; $6a96: $d2 $01 $d5

	ld a, [de]                                       ; $6a99: $1a
	ret nz                                           ; $6a9a: $c0

	ld bc, $04a0                                     ; $6a9b: $01 $a0 $04
	inc bc                                           ; $6a9e: $03
	inc b                                            ; $6a9f: $04
	ret nz                                           ; $6aa0: $c0

	ld bc, $01a0                                     ; $6aa1: $01 $a0 $01
	inc bc                                           ; $6aa4: $03
	ld [$01c0], sp                                   ; $6aa5: $08 $c0 $01
	and b                                            ; $6aa8: $a0
	inc b                                            ; $6aa9: $04
	inc bc                                           ; $6aaa: $03
	inc c                                            ; $6aab: $0c
	pop bc                                           ; $6aac: $c1
	ld e, e                                          ; $6aad: $5b
	ret nz                                           ; $6aae: $c0

	ld bc, $01a0                                     ; $6aaf: $01 $a0 $01
	ld [bc], a                                       ; $6ab2: $02
	ld c, l                                          ; $6ab3: $4d
	nop                                              ; $6ab4: $00
	ld e, $c0                                        ; $6ab5: $1e $c0
	ld bc, $04a0                                     ; $6ab7: $01 $a0 $04
	inc bc                                           ; $6aba: $03
	ld de, $01c0                                     ; $6abb: $11 $c0 $01
	and b                                            ; $6abe: $a0
	ld bc, $0803                                     ; $6abf: $01 $03 $08
	ret nz                                           ; $6ac2: $c0

	nop                                              ; $6ac3: $00
	inc bc                                           ; $6ac4: $03
	add hl, de                                       ; $6ac5: $19
	ret nz                                           ; $6ac6: $c0

	ld bc, $04a0                                     ; $6ac7: $01 $a0 $04
	inc bc                                           ; $6aca: $03
	ld hl, $01c0                                     ; $6acb: $21 $c0 $01
	and b                                            ; $6ace: $a0
	ld bc, $6102                                     ; $6acf: $01 $02 $61
	pop bc                                           ; $6ad2: $c1
	ld e, e                                          ; $6ad3: $5b
	ret nz                                           ; $6ad4: $c0

	ld hl, $d2d4                                     ; $6ad5: $21 $d4 $d2
	ret nz                                           ; $6ad8: $c0

	ld e, l                                          ; $6ad9: $5d
	jp nc, $fb60                                     ; $6ada: $d2 $60 $fb

	add c                                            ; $6add: $81
	and b                                            ; $6ade: $a0
	rlca                                             ; $6adf: $07
	jp nc, $d008                                     ; $6ae0: $d2 $08 $d0

	add e                                            ; $6ae3: $83
	and b                                            ; $6ae4: $a0
	add hl, bc                                       ; $6ae5: $09
	jp nc, $06e4                                     ; $6ae6: $d2 $e4 $06

	rst SubAFromHL                                          ; $6ae9: $d7
	ld [$83d0], sp                                   ; $6aea: $08 $d0 $83
	and b                                            ; $6aed: $a0
	dec c                                            ; $6aee: $0d
	jp nc, $00e4                                     ; $6aef: $d2 $e4 $00

	ld [bc], a                                       ; $6af2: $02
	add hl, bc                                       ; $6af3: $09
	ld l, $fd                                        ; $6af4: $2e $fd
	inc l                                            ; $6af6: $2c
	ret nz                                           ; $6af7: $c0

	ld e, e                                          ; $6af8: $5b
	jp nc, $d101                                     ; $6af9: $d2 $01 $d1

	inc bc                                           ; $6afc: $03
	db $e4                                           ; $6afd: $e4
	cp $28                                           ; $6afe: $fe $28
	ld bc, $03d3                                     ; $6b00: $01 $d3 $03
	db $e4                                           ; $6b03: $e4
	nop                                              ; $6b04: $00
	ret z                                            ; $6b05: $c8

jr_087_6b06:
	ld bc, $03d7                                     ; $6b06: $01 $d7 $03
	db $e4                                           ; $6b09: $e4
	ld [bc], a                                       ; $6b0a: $02
	db $10                                           ; $6b0b: $10
	ld bc, $03d8                                     ; $6b0c: $01 $d8 $03
	db $e4                                           ; $6b0f: $e4
	inc bc                                           ; $6b10: $03
	ld e, d                                          ; $6b11: $5a
	ld bc, $03da                                     ; $6b12: $01 $da $03
	db $e4                                           ; $6b15: $e4
	inc b                                            ; $6b16: $04
	sbc a                                            ; $6b17: $9f
	ld bc, $03dd                                     ; $6b18: $01 $dd $03
	db $e4                                           ; $6b1b: $e4
	dec b                                            ; $6b1c: $05
	ld d, [hl]                                       ; $6b1d: $56
	nop                                              ; $6b1e: $00
	inc bc                                           ; $6b1f: $03
	db $e4                                           ; $6b20: $e4
	nop                                              ; $6b21: $00
	add a                                            ; $6b22: $87
	add hl, bc                                       ; $6b23: $09
	add e                                            ; $6b24: $83
	ret nz                                           ; $6b25: $c0

	ld e, $e0                                        ; $6b26: $1e $e0
	ld b, [hl]                                       ; $6b28: $46
	jp nc, $20c0                                     ; $6b29: $d2 $c0 $20

	ret nc                                           ; $6b2c: $d0

	jp nc, $8120                                     ; $6b2d: $d2 $20 $81

	and b                                            ; $6b30: $a0
	rlca                                             ; $6b31: $07
	ret nz                                           ; $6b32: $c0

	and a                                            ; $6b33: $a7
	jp nc, $d4d3                                     ; $6b34: $d2 $d3 $d4

	ret nz                                           ; $6b37: $c0

	and l                                            ; $6b38: $a5
	ret nz                                           ; $6b39: $c0

	ld bc, $04a0                                     ; $6b3a: $01 $a0 $04
	inc bc                                           ; $6b3d: $03
	ld a, [hl+]                                      ; $6b3e: $2a
	ret nz                                           ; $6b3f: $c0

	ld bc, $01a0                                     ; $6b40: $01 $a0 $01
	inc bc                                           ; $6b43: $03
	jr c, jr_087_6b06                                ; $6b44: $38 $c0

	ld bc, $04a0                                     ; $6b46: $01 $a0 $04
	inc bc                                           ; $6b49: $03
	ld b, h                                          ; $6b4a: $44
	ret nz                                           ; $6b4b: $c0

	ld bc, $01a0                                     ; $6b4c: $01 $a0 $01
	inc bc                                           ; $6b4f: $03
	ld d, b                                          ; $6b50: $50

jr_087_6b51:
	ret nz                                           ; $6b51: $c0

	ld bc, $04a0                                     ; $6b52: $01 $a0 $04
	inc bc                                           ; $6b55: $03
	ld e, b                                          ; $6b56: $58
	ret nz                                           ; $6b57: $c0

	ld bc, $01a0                                     ; $6b58: $01 $a0 $01
	inc bc                                           ; $6b5b: $03
	ld h, c                                          ; $6b5c: $61
	ret nz                                           ; $6b5d: $c0

	ld bc, $04a0                                     ; $6b5e: $01 $a0 $04
	inc bc                                           ; $6b61: $03
	ld h, a                                          ; $6b62: $67
	ret nz                                           ; $6b63: $c0

	ld bc, $01a0                                     ; $6b64: $01 $a0 $01
	inc bc                                           ; $6b67: $03
	ld [hl], d                                       ; $6b68: $72
	pop bc                                           ; $6b69: $c1
	or d                                             ; $6b6a: $b2
	db $e3                                           ; $6b6b: $e3
	nop                                              ; $6b6c: $00

jr_087_6b6d:
	inc sp                                           ; $6b6d: $33
	ret nz                                           ; $6b6e: $c0

	ld bc, $04a0                                     ; $6b6f: $01 $a0 $04
	inc bc                                           ; $6b72: $03
	ld [hl], a                                       ; $6b73: $77
	nop                                              ; $6b74: $00
	add b                                            ; $6b75: $80
	nop                                              ; $6b76: $00
	ld [hl], a                                       ; $6b77: $77
	pop bc                                           ; $6b78: $c1
	ld e, e                                          ; $6b79: $5b
	ret nz                                           ; $6b7a: $c0

	ld bc, $01a0                                     ; $6b7b: $01 $a0 $01
	inc bc                                           ; $6b7e: $03
	ld a, l                                          ; $6b7f: $7d
	nop                                              ; $6b80: $00
	add b                                            ; $6b81: $80
	nop                                              ; $6b82: $00
	ld l, a                                          ; $6b83: $6f
	jr nz, @-$7d                                     ; $6b84: $20 $81

	ld bc, $c0a6                                     ; $6b86: $01 $a6 $c0
	sbc e                                            ; $6b89: $9b
	jp nc, $1ec0                                     ; $6b8a: $d2 $c0 $1e

	ldh [$28], a                                     ; $6b8d: $e0 $28
	jp nc, $fb60                                     ; $6b8f: $d2 $60 $fb

	add c                                            ; $6b92: $81
	and b                                            ; $6b93: $a0
	rlca                                             ; $6b94: $07
	jp nc, $d008                                     ; $6b95: $d2 $08 $d0

	add e                                            ; $6b98: $83
	and b                                            ; $6b99: $a0
	add hl, bc                                       ; $6b9a: $09
	jp nc, $06e4                                     ; $6b9b: $d2 $e4 $06

	ld [hl+], a                                      ; $6b9e: $22
	ld [$83d0], sp                                   ; $6b9f: $08 $d0 $83
	and b                                            ; $6ba2: $a0
	dec c                                            ; $6ba3: $0d
	jp nc, $00e4                                     ; $6ba4: $d2 $e4 $00

	ld [bc], a                                       ; $6ba7: $02
	add hl, bc                                       ; $6ba8: $09
	ld [hl+], a                                      ; $6ba9: $22
	db $fd                                           ; $6baa: $fd
	jr nz, jr_087_6b6d                               ; $6bab: $20 $c0

	ld e, h                                          ; $6bad: $5c
	ld bc, $03d1                                     ; $6bae: $01 $d1 $03
	db $e4                                           ; $6bb1: $e4
	cp $13                                           ; $6bb2: $fe $13
	ld bc, $03d3                                     ; $6bb4: $01 $d3 $03
	db $e4                                           ; $6bb7: $e4
	nop                                              ; $6bb8: $00
	or e                                             ; $6bb9: $b3
	ld bc, $03d7                                     ; $6bba: $01 $d7 $03
	db $e4                                           ; $6bbd: $e4
	ld bc, $01fb                                     ; $6bbe: $01 $fb $01
	ret c                                            ; $6bc1: $d8

	inc bc                                           ; $6bc2: $03
	db $e4                                           ; $6bc3: $e4
	inc bc                                           ; $6bc4: $03
	ld b, l                                          ; $6bc5: $45
	ld bc, $03dd                                     ; $6bc6: $01 $dd $03
	db $e4                                           ; $6bc9: $e4
	dec b                                            ; $6bca: $05
	ld b, a                                          ; $6bcb: $47
	add hl, bc                                       ; $6bcc: $09
	ld l, l                                          ; $6bcd: $6d
	jr nz, jr_087_6b51                               ; $6bce: $20 $81

	and b                                            ; $6bd0: $a0
	rlca                                             ; $6bd1: $07
	ret nz                                           ; $6bd2: $c0

	and a                                            ; $6bd3: $a7
	db $d3                                           ; $6bd4: $d3
	db $d3                                           ; $6bd5: $d3
	call nc, $acc0                                   ; $6bd6: $d4 $c0 $ac
	ret nz                                           ; $6bd9: $c0

	and l                                            ; $6bda: $a5
	add c                                            ; $6bdb: $81
	ret nz                                           ; $6bdc: $c0

	dec de                                           ; $6bdd: $1b
	db $d3                                           ; $6bde: $d3
	ld bc, $1ad5                                     ; $6bdf: $01 $d5 $1a
	ret nz                                           ; $6be2: $c0

	ld bc, $05a0                                     ; $6be3: $01 $a0 $05
	inc bc                                           ; $6be6: $03
	add [hl]                                         ; $6be7: $86
	ret nz                                           ; $6be8: $c0

	ld bc, $01a0                                     ; $6be9: $01 $a0 $01
	inc bc                                           ; $6bec: $03
	adc a                                            ; $6bed: $8f
	ret nz                                           ; $6bee: $c0

	ld bc, $05a0                                     ; $6bef: $01 $a0 $05
	inc bc                                           ; $6bf2: $03
	sub e                                            ; $6bf3: $93
	pop bc                                           ; $6bf4: $c1
	ld e, e                                          ; $6bf5: $5b
	ret nz                                           ; $6bf6: $c0

	ld bc, $01a0                                     ; $6bf7: $01 $a0 $01
	ld [bc], a                                       ; $6bfa: $02
	ld c, l                                          ; $6bfb: $4d
	nop                                              ; $6bfc: $00
	ld e, $c0                                        ; $6bfd: $1e $c0
	ld bc, $05a0                                     ; $6bff: $01 $a0 $05
	inc bc                                           ; $6c02: $03
	and b                                            ; $6c03: $a0
	ret nz                                           ; $6c04: $c0

	ld bc, $01a0                                     ; $6c05: $01 $a0 $01
	inc bc                                           ; $6c08: $03
	adc a                                            ; $6c09: $8f
	ret nz                                           ; $6c0a: $c0

	nop                                              ; $6c0b: $00
	inc bc                                           ; $6c0c: $03
	and a                                            ; $6c0d: $a7
	ret nz                                           ; $6c0e: $c0

	ld bc, $05a0                                     ; $6c0f: $01 $a0 $05
	inc bc                                           ; $6c12: $03
	xor a                                            ; $6c13: $af
	ret nz                                           ; $6c14: $c0

	ld bc, $01a0                                     ; $6c15: $01 $a0 $01
	ld [bc], a                                       ; $6c18: $02
	ld h, c                                          ; $6c19: $61
	pop bc                                           ; $6c1a: $c1
	ld e, e                                          ; $6c1b: $5b
	ret nz                                           ; $6c1c: $c0

	ld hl, $d3d4                                     ; $6c1d: $21 $d4 $d3
	ret nz                                           ; $6c20: $c0

	ld e, l                                          ; $6c21: $5d
	db $d3                                           ; $6c22: $d3
	ld h, b                                          ; $6c23: $60
	ei                                               ; $6c24: $fb
	add c                                            ; $6c25: $81
	and b                                            ; $6c26: $a0
	rlca                                             ; $6c27: $07
	jp nc, $d008                                     ; $6c28: $d2 $08 $d0

	add e                                            ; $6c2b: $83
	and b                                            ; $6c2c: $a0
	add hl, bc                                       ; $6c2d: $09
	db $d3                                           ; $6c2e: $d3
	db $e4                                           ; $6c2f: $e4
	dec b                                            ; $6c30: $05
	adc a                                            ; $6c31: $8f
	ld [$83d0], sp                                   ; $6c32: $08 $d0 $83
	and b                                            ; $6c35: $a0
	dec c                                            ; $6c36: $0d
	db $d3                                           ; $6c37: $d3
	db $e4                                           ; $6c38: $e4
	nop                                              ; $6c39: $00
	ld [bc], a                                       ; $6c3a: $02
	add hl, bc                                       ; $6c3b: $09
	ld l, $fd                                        ; $6c3c: $2e $fd
	inc l                                            ; $6c3e: $2c
	ret nz                                           ; $6c3f: $c0

	ld e, e                                          ; $6c40: $5b
	db $d3                                           ; $6c41: $d3
	ld bc, $03d1                                     ; $6c42: $01 $d1 $03

jr_087_6c45:
	db $e4                                           ; $6c45: $e4
	db $fc                                           ; $6c46: $fc
	ldh [rSB], a                                     ; $6c47: $e0 $01
	jp nc, $e403                                     ; $6c49: $d2 $03 $e4

	cp $38                                           ; $6c4c: $fe $38
	ld bc, $03d7                                     ; $6c4e: $01 $d7 $03
	db $e4                                           ; $6c51: $e4
	nop                                              ; $6c52: $00
	ret z                                            ; $6c53: $c8

	ld bc, $03d8                                     ; $6c54: $01 $d8 $03
	db $e4                                           ; $6c57: $e4
	ld [bc], a                                       ; $6c58: $02
	ld [de], a                                       ; $6c59: $12
	ld bc, $03da                                     ; $6c5a: $01 $da $03
	db $e4                                           ; $6c5d: $e4
	inc bc                                           ; $6c5e: $03
	ld d, a                                          ; $6c5f: $57
	ld bc, $03dd                                     ; $6c60: $01 $dd $03
	db $e4                                           ; $6c63: $e4
	inc b                                            ; $6c64: $04
	ld c, $00                                        ; $6c65: $0e $00
	inc bc                                           ; $6c67: $03
	db $e4                                           ; $6c68: $e4
	nop                                              ; $6c69: $00
	adc l                                            ; $6c6a: $8d
	add hl, bc                                       ; $6c6b: $09
	adc c                                            ; $6c6c: $89
	ret nz                                           ; $6c6d: $c0

	ld e, $e0                                        ; $6c6e: $1e $e0
	ld b, [hl]                                       ; $6c70: $46
	db $d3                                           ; $6c71: $d3
	ret nz                                           ; $6c72: $c0

	jr nz, jr_087_6c45                               ; $6c73: $20 $d0

	db $d3                                           ; $6c75: $d3
	jr nz, @-$7d                                     ; $6c76: $20 $81

	and b                                            ; $6c78: $a0
	rlca                                             ; $6c79: $07
	ret nz                                           ; $6c7a: $c0

	and a                                            ; $6c7b: $a7
	db $d3                                           ; $6c7c: $d3
	db $d3                                           ; $6c7d: $d3
	call nc, $abc0                                   ; $6c7e: $d4 $c0 $ab
	pop de                                           ; $6c81: $d1
	ret nz                                           ; $6c82: $c0

	and l                                            ; $6c83: $a5
	ret nz                                           ; $6c84: $c0

	ld bc, $05a0                                     ; $6c85: $01 $a0 $05
	inc bc                                           ; $6c88: $03
	cp e                                             ; $6c89: $bb
	ret nz                                           ; $6c8a: $c0

	ld bc, $01a0                                     ; $6c8b: $01 $a0 $01
	inc bc                                           ; $6c8e: $03
	cp h                                             ; $6c8f: $bc
	ret nz                                           ; $6c90: $c0

	ld bc, $05a0                                     ; $6c91: $01 $a0 $05
	inc bc                                           ; $6c94: $03
	rst JumpTable                                          ; $6c95: $c7
	ret nz                                           ; $6c96: $c0

	ld bc, $01a0                                     ; $6c97: $01 $a0 $01
	inc bc                                           ; $6c9a: $03
	db $d3                                           ; $6c9b: $d3
	ret nz                                           ; $6c9c: $c0

	ld bc, $05a0                                     ; $6c9d: $01 $a0 $05
	inc bc                                           ; $6ca0: $03
	reti                                             ; $6ca1: $d9


	ret nz                                           ; $6ca2: $c0

	ld bc, $01a0                                     ; $6ca3: $01 $a0 $01
	inc bc                                           ; $6ca6: $03
	sbc $c0                                          ; $6ca7: $de $c0
	ld bc, $05a0                                     ; $6ca9: $01 $a0 $05
	inc bc                                           ; $6cac: $03
	ldh [c], a                                       ; $6cad: $e2
	ret nz                                           ; $6cae: $c0

	ld bc, $01a0                                     ; $6caf: $01 $a0 $01
	inc bc                                           ; $6cb2: $03
	db $eb                                           ; $6cb3: $eb
	ret nz                                           ; $6cb4: $c0

	ld bc, $05a0                                     ; $6cb5: $01 $a0 $05
	inc bc                                           ; $6cb8: $03
	di                                               ; $6cb9: $f3
	ret nz                                           ; $6cba: $c0

jr_087_6cbb:
	ld bc, $01a0                                     ; $6cbb: $01 $a0 $01
	inc b                                            ; $6cbe: $04
	nop                                              ; $6cbf: $00
	ret nz                                           ; $6cc0: $c0

	ld bc, $05a0                                     ; $6cc1: $01 $a0 $05
	inc b                                            ; $6cc4: $04
	ld c, $c1                                        ; $6cc5: $0e $c1
	ld e, e                                          ; $6cc7: $5b
	ret nz                                           ; $6cc8: $c0

	ld bc, $01a0                                     ; $6cc9: $01 $a0 $01
	inc b                                            ; $6ccc: $04
	inc d                                            ; $6ccd: $14
	nop                                              ; $6cce: $00
	add b                                            ; $6ccf: $80
	nop                                              ; $6cd0: $00
	ld [hl], b                                       ; $6cd1: $70
	jr nz, @-$7d                                     ; $6cd2: $20 $81

	ld bc, $c0a6                                     ; $6cd4: $01 $a6 $c0
	sbc e                                            ; $6cd7: $9b
	db $d3                                           ; $6cd8: $d3
	ret nz                                           ; $6cd9: $c0

	ld e, $e0                                        ; $6cda: $1e $e0
	jr z, @-$2b                                      ; $6cdc: $28 $d3

	ld h, b                                          ; $6cde: $60
	ei                                               ; $6cdf: $fb
	add c                                            ; $6ce0: $81
	and b                                            ; $6ce1: $a0
	rlca                                             ; $6ce2: $07
	jp nc, $d008                                     ; $6ce3: $d2 $08 $d0

	add e                                            ; $6ce6: $83
	and b                                            ; $6ce7: $a0
	add hl, bc                                       ; $6ce8: $09
	db $d3                                           ; $6ce9: $d3
	db $e4                                           ; $6cea: $e4
	inc b                                            ; $6ceb: $04
	call nc, $d008                                   ; $6cec: $d4 $08 $d0
	add e                                            ; $6cef: $83
	and b                                            ; $6cf0: $a0
	dec c                                            ; $6cf1: $0d
	db $d3                                           ; $6cf2: $d3
	db $e4                                           ; $6cf3: $e4
	nop                                              ; $6cf4: $00
	ld [bc], a                                       ; $6cf5: $02
	add hl, bc                                       ; $6cf6: $09
	ld [hl+], a                                      ; $6cf7: $22
	db $fd                                           ; $6cf8: $fd
	jr nz, jr_087_6cbb                               ; $6cf9: $20 $c0

	ld e, h                                          ; $6cfb: $5c
	ld bc, $03d1                                     ; $6cfc: $01 $d1 $03
	db $e4                                           ; $6cff: $e4
	db $fc                                           ; $6d00: $fc
	push bc                                          ; $6d01: $c5
	ld bc, $03d2                                     ; $6d02: $01 $d2 $03
	db $e4                                           ; $6d05: $e4
	cp $1d                                           ; $6d06: $fe $1d
	ld bc, $03d7                                     ; $6d08: $01 $d7 $03
	db $e4                                           ; $6d0b: $e4
	nop                                              ; $6d0c: $00
	xor l                                            ; $6d0d: $ad
	ld bc, $03d8                                     ; $6d0e: $01 $d8 $03
	db $e4                                           ; $6d11: $e4
	ld bc, $01f7                                     ; $6d12: $01 $f7 $01
	db $dd                                           ; $6d15: $dd
	inc bc                                           ; $6d16: $03
	db $e4                                           ; $6d17: $e4
	inc bc                                           ; $6d18: $03
	ld sp, hl                                        ; $6d19: $f9
	add hl, bc                                       ; $6d1a: $09
	ld l, l                                          ; $6d1b: $6d
	jr nz, @-$7d                                     ; $6d1c: $20 $81

	and b                                            ; $6d1e: $a0
	rlca                                             ; $6d1f: $07
	ret nz                                           ; $6d20: $c0

	and a                                            ; $6d21: $a7
	rst SubAFromHL                                          ; $6d22: $d7
	db $d3                                           ; $6d23: $d3
	call nc, $acc0                                   ; $6d24: $d4 $c0 $ac
	ret nz                                           ; $6d27: $c0

	and l                                            ; $6d28: $a5
	add c                                            ; $6d29: $81
	ret nz                                           ; $6d2a: $c0

	dec de                                           ; $6d2b: $1b
	rst SubAFromHL                                          ; $6d2c: $d7
	ld bc, $1ad5                                     ; $6d2d: $01 $d5 $1a
	ret nz                                           ; $6d30: $c0

	ld bc, $08a0                                     ; $6d31: $01 $a0 $08
	inc b                                            ; $6d34: $04
	ld e, $c0                                        ; $6d35: $1e $c0
	ld bc, $01a0                                     ; $6d37: $01 $a0 $01
	inc b                                            ; $6d3a: $04
	inc h                                            ; $6d3b: $24
	ret nz                                           ; $6d3c: $c0

	ld bc, $08a0                                     ; $6d3d: $01 $a0 $08
	inc b                                            ; $6d40: $04
	add hl, hl                                       ; $6d41: $29
	pop bc                                           ; $6d42: $c1
	ld e, e                                          ; $6d43: $5b
	ret nz                                           ; $6d44: $c0

	ld bc, $01a0                                     ; $6d45: $01 $a0 $01
	inc b                                            ; $6d48: $04
	dec [hl]                                         ; $6d49: $35
	nop                                              ; $6d4a: $00
	ld e, $c0                                        ; $6d4b: $1e $c0
	ld bc, $08a0                                     ; $6d4d: $01 $a0 $08
	inc b                                            ; $6d50: $04
	ld a, [hl-]                                      ; $6d51: $3a
	ret nz                                           ; $6d52: $c0

	ld bc, $01a0                                     ; $6d53: $01 $a0 $01
	inc b                                            ; $6d56: $04
	ld b, c                                          ; $6d57: $41
	ret nz                                           ; $6d58: $c0

	nop                                              ; $6d59: $00
	inc b                                            ; $6d5a: $04
	ld b, l                                          ; $6d5b: $45
	ret nz                                           ; $6d5c: $c0

	ld bc, $08a0                                     ; $6d5d: $01 $a0 $08
	inc b                                            ; $6d60: $04
	ld c, h                                          ; $6d61: $4c
	ret nz                                           ; $6d62: $c0

	ld bc, $01a0                                     ; $6d63: $01 $a0 $01
	ld [bc], a                                       ; $6d66: $02
	ld h, c                                          ; $6d67: $61
	pop bc                                           ; $6d68: $c1
	ld e, e                                          ; $6d69: $5b
	ret nz                                           ; $6d6a: $c0

	ld hl, $d7d4                                     ; $6d6b: $21 $d4 $d7
	ret nz                                           ; $6d6e: $c0

	ld e, l                                          ; $6d6f: $5d
	rst SubAFromHL                                          ; $6d70: $d7
	ld h, b                                          ; $6d71: $60
	ei                                               ; $6d72: $fb
	add c                                            ; $6d73: $81
	and b                                            ; $6d74: $a0
	rlca                                             ; $6d75: $07
	jp nc, $d008                                     ; $6d76: $d2 $08 $d0

	add e                                            ; $6d79: $83
	and b                                            ; $6d7a: $a0
	add hl, bc                                       ; $6d7b: $09
	rst SubAFromHL                                          ; $6d7c: $d7
	db $e4                                           ; $6d7d: $e4
	inc b                                            ; $6d7e: $04
	ld b, c                                          ; $6d7f: $41
	ld [$83d0], sp                                   ; $6d80: $08 $d0 $83
	and b                                            ; $6d83: $a0
	dec c                                            ; $6d84: $0d
	rst SubAFromHL                                          ; $6d85: $d7
	db $e4                                           ; $6d86: $e4
	nop                                              ; $6d87: $00
	ld [bc], a                                       ; $6d88: $02
	add hl, bc                                       ; $6d89: $09
	ld l, $fd                                        ; $6d8a: $2e $fd
	inc l                                            ; $6d8c: $2c
	ret nz                                           ; $6d8d: $c0

	ld e, e                                          ; $6d8e: $5b
	rst SubAFromHL                                          ; $6d8f: $d7
	ld bc, $03d1                                     ; $6d90: $01 $d1 $03

jr_087_6d93:
	db $e4                                           ; $6d93: $e4
	ei                                               ; $6d94: $fb
	sub d                                            ; $6d95: $92
	ld bc, $03d2                                     ; $6d96: $01 $d2 $03
	db $e4                                           ; $6d99: $e4
	db $fc                                           ; $6d9a: $fc
	ld [$d301], a                                    ; $6d9b: $ea $01 $d3
	inc bc                                           ; $6d9e: $03
	db $e4                                           ; $6d9f: $e4
	cp $2c                                           ; $6da0: $fe $2c
	ld bc, $03d8                                     ; $6da2: $01 $d8 $03

jr_087_6da5:
	db $e4                                           ; $6da5: $e4
	nop                                              ; $6da6: $00
	call nz, $da01                                   ; $6da7: $c4 $01 $da
	inc bc                                           ; $6daa: $03
	db $e4                                           ; $6dab: $e4
	ld [bc], a                                       ; $6dac: $02
	add hl, bc                                       ; $6dad: $09
	ld bc, $03dd                                     ; $6dae: $01 $dd $03
	db $e4                                           ; $6db1: $e4
	ld [bc], a                                       ; $6db2: $02
	ret nz                                           ; $6db3: $c0

	nop                                              ; $6db4: $00
	inc bc                                           ; $6db5: $03
	db $e4                                           ; $6db6: $e4
	nop                                              ; $6db7: $00
	adc a                                            ; $6db8: $8f
	add hl, bc                                       ; $6db9: $09
	adc e                                            ; $6dba: $8b
	ret nz                                           ; $6dbb: $c0

	ld e, $e0                                        ; $6dbc: $1e $e0
	ld b, [hl]                                       ; $6dbe: $46
	rst SubAFromHL                                          ; $6dbf: $d7
	ret nz                                           ; $6dc0: $c0

	jr nz, jr_087_6d93                               ; $6dc1: $20 $d0

	rst SubAFromHL                                          ; $6dc3: $d7
	jr nz, @-$7d                                     ; $6dc4: $20 $81

	and b                                            ; $6dc6: $a0
	rlca                                             ; $6dc7: $07
	ret nz                                           ; $6dc8: $c0

	dec bc                                           ; $6dc9: $0b
	db $e3                                           ; $6dca: $e3
	nop                                              ; $6dcb: $00
	db $10                                           ; $6dcc: $10
	pop bc                                           ; $6dcd: $c1
	ld d, l                                          ; $6dce: $55
	pop de                                           ; $6dcf: $d1
	ret nz                                           ; $6dd0: $c0

	ld bc, $08a0                                     ; $6dd1: $01 $a0 $08
	inc b                                            ; $6dd4: $04
	ld d, [hl]                                       ; $6dd5: $56
	ret nz                                           ; $6dd6: $c0

	ld bc, $01a0                                     ; $6dd7: $01 $a0 $01
	inc b                                            ; $6dda: $04
	ld e, b                                          ; $6ddb: $58
	ret nz                                           ; $6ddc: $c0

	and a                                            ; $6ddd: $a7
	rst SubAFromHL                                          ; $6dde: $d7
	db $d3                                           ; $6ddf: $d3
	call nc, $a5c0                                   ; $6de0: $d4 $c0 $a5
	ret nz                                           ; $6de3: $c0

	ld bc, $08a0                                     ; $6de4: $01 $a0 $08
	inc b                                            ; $6de7: $04
	ld e, h                                          ; $6de8: $5c
	ret nz                                           ; $6de9: $c0

	ld bc, $01a0                                     ; $6dea: $01 $a0 $01
	inc b                                            ; $6ded: $04
	ld h, e                                          ; $6dee: $63

jr_087_6def:
	ret nz                                           ; $6def: $c0

	ld bc, $08a0                                     ; $6df0: $01 $a0 $08
	inc b                                            ; $6df3: $04
	ld l, a                                          ; $6df4: $6f
	ret nz                                           ; $6df5: $c0

	ld bc, $01a0                                     ; $6df6: $01 $a0 $01
	inc b                                            ; $6df9: $04
	ld a, c                                          ; $6dfa: $79
	ret nz                                           ; $6dfb: $c0

	ld bc, $08a0                                     ; $6dfc: $01 $a0 $08
	inc b                                            ; $6dff: $04
	ld a, l                                          ; $6e00: $7d
	ret nz                                           ; $6e01: $c0

	ld bc, $01a0                                     ; $6e02: $01 $a0 $01

jr_087_6e05:
	inc b                                            ; $6e05: $04
	add c                                            ; $6e06: $81
	ret nz                                           ; $6e07: $c0

	ld bc, $08a0                                     ; $6e08: $01 $a0 $08

jr_087_6e0b:
	inc b                                            ; $6e0b: $04
	add [hl]                                         ; $6e0c: $86
	pop bc                                           ; $6e0d: $c1
	ld e, e                                          ; $6e0e: $5b
	ret nz                                           ; $6e0f: $c0

	ld bc, $01a0                                     ; $6e10: $01 $a0 $01
	inc b                                            ; $6e13: $04
	sub c                                            ; $6e14: $91
	ret nz                                           ; $6e15: $c0

	ld bc, $01a0                                     ; $6e16: $01 $a0 $01
	inc b                                            ; $6e19: $04
	sbc e                                            ; $6e1a: $9b
	ld bc, $0080                                     ; $6e1b: $01 $80 $00
	adc h                                            ; $6e1e: $8c
	add b                                            ; $6e1f: $80
	ld [bc], a                                       ; $6e20: $02
	ld [hl], a                                       ; $6e21: $77
	jr nz, jr_087_6da5                               ; $6e22: $20 $81

	ld bc, $c0a6                                     ; $6e24: $01 $a6 $c0
	sbc e                                            ; $6e27: $9b
	rst SubAFromHL                                          ; $6e28: $d7
	ret nz                                           ; $6e29: $c0

	ld e, $e0                                        ; $6e2a: $1e $e0
	jr z, jr_087_6e05                                ; $6e2c: $28 $d7

	ld h, b                                          ; $6e2e: $60
	ei                                               ; $6e2f: $fb
	add c                                            ; $6e30: $81
	and b                                            ; $6e31: $a0
	rlca                                             ; $6e32: $07
	jp nc, $d008                                     ; $6e33: $d2 $08 $d0

	add e                                            ; $6e36: $83
	and b                                            ; $6e37: $a0
	add hl, bc                                       ; $6e38: $09
	rst SubAFromHL                                          ; $6e39: $d7
	db $e4                                           ; $6e3a: $e4
	inc bc                                           ; $6e3b: $03
	add h                                            ; $6e3c: $84
	ld [$83d0], sp                                   ; $6e3d: $08 $d0 $83
	and b                                            ; $6e40: $a0
	dec c                                            ; $6e41: $0d
	rst SubAFromHL                                          ; $6e42: $d7
	db $e4                                           ; $6e43: $e4
	nop                                              ; $6e44: $00
	ld [bc], a                                       ; $6e45: $02
	add hl, bc                                       ; $6e46: $09
	ld [hl+], a                                      ; $6e47: $22
	db $fd                                           ; $6e48: $fd
	jr nz, jr_087_6e0b                               ; $6e49: $20 $c0

	ld e, h                                          ; $6e4b: $5c
	ld bc, $03d1                                     ; $6e4c: $01 $d1 $03
	db $e4                                           ; $6e4f: $e4
	ei                                               ; $6e50: $fb
	ld [hl], l                                       ; $6e51: $75
	ld bc, $03d2                                     ; $6e52: $01 $d2 $03
	db $e4                                           ; $6e55: $e4
	db $fc                                           ; $6e56: $fc
	call $d301                                       ; $6e57: $cd $01 $d3
	inc bc                                           ; $6e5a: $03
	db $e4                                           ; $6e5b: $e4
	cp $0f                                           ; $6e5c: $fe $0f
	ld bc, $03d8                                     ; $6e5e: $01 $d8 $03
	db $e4                                           ; $6e61: $e4
	nop                                              ; $6e62: $00
	and a                                            ; $6e63: $a7
	ld bc, $03dd                                     ; $6e64: $01 $dd $03
	db $e4                                           ; $6e67: $e4
	ld [bc], a                                       ; $6e68: $02
	xor c                                            ; $6e69: $a9
	add hl, bc                                       ; $6e6a: $09
	ld l, l                                          ; $6e6b: $6d
	jr nz, jr_087_6def                               ; $6e6c: $20 $81

	and b                                            ; $6e6e: $a0
	rlca                                             ; $6e6f: $07
	ret nz                                           ; $6e70: $c0

	and a                                            ; $6e71: $a7
	ret c                                            ; $6e72: $d8

	db $d3                                           ; $6e73: $d3
	call nc, $acc0                                   ; $6e74: $d4 $c0 $ac
	ret nz                                           ; $6e77: $c0

	and l                                            ; $6e78: $a5
	add c                                            ; $6e79: $81
	ret nz                                           ; $6e7a: $c0

	dec de                                           ; $6e7b: $1b
	ret c                                            ; $6e7c: $d8

	ld bc, $1ad5                                     ; $6e7d: $01 $d5 $1a
	ret nz                                           ; $6e80: $c0

	ld bc, $09a0                                     ; $6e81: $01 $a0 $09
	inc b                                            ; $6e84: $04
	and c                                            ; $6e85: $a1
	ret nz                                           ; $6e86: $c0

	ld bc, $01a0                                     ; $6e87: $01 $a0 $01
	inc b                                            ; $6e8a: $04
	xor b                                            ; $6e8b: $a8
	ret nz                                           ; $6e8c: $c0

	ld bc, $09a0                                     ; $6e8d: $01 $a0 $09
	inc b                                            ; $6e90: $04
	xor l                                            ; $6e91: $ad
	pop bc                                           ; $6e92: $c1
	ld e, e                                          ; $6e93: $5b
	ret nz                                           ; $6e94: $c0

	ld bc, $01a0                                     ; $6e95: $01 $a0 $01
	inc b                                            ; $6e98: $04
	or [hl]                                          ; $6e99: $b6
	nop                                              ; $6e9a: $00
	ld e, $c0                                        ; $6e9b: $1e $c0
	ld bc, $09a0                                     ; $6e9d: $01 $a0 $09
	inc b                                            ; $6ea0: $04
	cp h                                             ; $6ea1: $bc
	ret nz                                           ; $6ea2: $c0

	ld bc, $01a0                                     ; $6ea3: $01 $a0 $01
	inc b                                            ; $6ea6: $04
	ret nz                                           ; $6ea7: $c0

	ret nz                                           ; $6ea8: $c0

	nop                                              ; $6ea9: $00
	inc b                                            ; $6eaa: $04
	push bc                                          ; $6eab: $c5
	ret nz                                           ; $6eac: $c0

	ld bc, $09a0                                     ; $6ead: $01 $a0 $09
	ld [bc], a                                       ; $6eb0: $02
	ld e, l                                          ; $6eb1: $5d
	ret nz                                           ; $6eb2: $c0

	ld bc, $01a0                                     ; $6eb3: $01 $a0 $01
	ld [bc], a                                       ; $6eb6: $02
	ld h, c                                          ; $6eb7: $61
	pop bc                                           ; $6eb8: $c1
	ld e, e                                          ; $6eb9: $5b
	ret nz                                           ; $6eba: $c0

	ld hl, $d8d4                                     ; $6ebb: $21 $d4 $d8
	ret nz                                           ; $6ebe: $c0

	ld e, l                                          ; $6ebf: $5d
	ret c                                            ; $6ec0: $d8

	ld h, b                                          ; $6ec1: $60
	ei                                               ; $6ec2: $fb
	add c                                            ; $6ec3: $81
	and b                                            ; $6ec4: $a0
	rlca                                             ; $6ec5: $07
	jp nc, $d008                                     ; $6ec6: $d2 $08 $d0

	add e                                            ; $6ec9: $83
	and b                                            ; $6eca: $a0
	add hl, bc                                       ; $6ecb: $09
	ret c                                            ; $6ecc: $d8

	db $e4                                           ; $6ecd: $e4
	ld [bc], a                                       ; $6ece: $02
	pop af                                           ; $6ecf: $f1
	ld [$83d0], sp                                   ; $6ed0: $08 $d0 $83
	and b                                            ; $6ed3: $a0
	dec c                                            ; $6ed4: $0d
	ret c                                            ; $6ed5: $d8

	db $e4                                           ; $6ed6: $e4
	nop                                              ; $6ed7: $00
	ld [bc], a                                       ; $6ed8: $02
	add hl, bc                                       ; $6ed9: $09
	ld l, $fd                                        ; $6eda: $2e $fd
	inc l                                            ; $6edc: $2c
	ret nz                                           ; $6edd: $c0

	ld e, e                                          ; $6ede: $5b
	ret c                                            ; $6edf: $d8

	ld bc, $03d1                                     ; $6ee0: $01 $d1 $03

jr_087_6ee3:
	db $e4                                           ; $6ee3: $e4
	ld a, [$0142]                                    ; $6ee4: $fa $42 $01
	jp nc, $e403                                     ; $6ee7: $d2 $03 $e4

	ei                                               ; $6eea: $fb
	sbc d                                            ; $6eeb: $9a
	ld bc, $03d3                                     ; $6eec: $01 $d3 $03
	db $e4                                           ; $6eef: $e4

jr_087_6ef0:
	db $fc                                           ; $6ef0: $fc
	call c, $d701                                    ; $6ef1: $dc $01 $d7
	inc bc                                           ; $6ef4: $03
	db $e4                                           ; $6ef5: $e4
	cp $24                                           ; $6ef6: $fe $24
	ld bc, $03da                                     ; $6ef8: $01 $da $03
	db $e4                                           ; $6efb: $e4
	nop                                              ; $6efc: $00
	cp c                                             ; $6efd: $b9
	ld bc, $03dd                                     ; $6efe: $01 $dd $03
	db $e4                                           ; $6f01: $e4
	ld bc, $0070                                     ; $6f02: $01 $70 $00
	inc bc                                           ; $6f05: $03
	db $e4                                           ; $6f06: $e4
	nop                                              ; $6f07: $00
	adc d                                            ; $6f08: $8a
	add hl, bc                                       ; $6f09: $09
	add [hl]                                         ; $6f0a: $86
	ret nz                                           ; $6f0b: $c0

	ld e, $e0                                        ; $6f0c: $1e $e0
	ld b, [hl]                                       ; $6f0e: $46
	ret c                                            ; $6f0f: $d8

	ret nz                                           ; $6f10: $c0

	jr nz, jr_087_6ee3                               ; $6f11: $20 $d0

	ret c                                            ; $6f13: $d8

	jr nz, @-$7d                                     ; $6f14: $20 $81

	and b                                            ; $6f16: $a0
	rlca                                             ; $6f17: $07
	ret nz                                           ; $6f18: $c0

	ld bc, $09a0                                     ; $6f19: $01 $a0 $09
	inc b                                            ; $6f1c: $04
	call $01c0                                       ; $6f1d: $cd $c0 $01
	and b                                            ; $6f20: $a0
	ld bc, $d104                                     ; $6f21: $01 $04 $d1
	ret nz                                           ; $6f24: $c0

	and a                                            ; $6f25: $a7
	ret c                                            ; $6f26: $d8

	db $d3                                           ; $6f27: $d3
	call nc, $a5c0                                   ; $6f28: $d4 $c0 $a5
	ret nz                                           ; $6f2b: $c0

	ld bc, $09a0                                     ; $6f2c: $01 $a0 $09
	inc b                                            ; $6f2f: $04
	sub $c0                                          ; $6f30: $d6 $c0
	ld bc, $01a0                                     ; $6f32: $01 $a0 $01
	inc b                                            ; $6f35: $04
	ldh [$c0], a                                     ; $6f36: $e0 $c0
	ld bc, $09a0                                     ; $6f38: $01 $a0 $09
	inc b                                            ; $6f3b: $04
	db $e4                                           ; $6f3c: $e4
	ret nz                                           ; $6f3d: $c0

	ld bc, $01a0                                     ; $6f3e: $01 $a0 $01
	inc b                                            ; $6f41: $04
	ld [$01c0], a                                    ; $6f42: $ea $c0 $01
	and b                                            ; $6f45: $a0
	add hl, bc                                       ; $6f46: $09
	inc b                                            ; $6f47: $04
	ldh a, [c]                                       ; $6f48: $f2
	ret nz                                           ; $6f49: $c0

	ld bc, $01a0                                     ; $6f4a: $01 $a0 $01
	inc b                                            ; $6f4d: $04
	ld sp, hl                                        ; $6f4e: $f9
	ret nz                                           ; $6f4f: $c0

	ld bc, $09a0                                     ; $6f50: $01 $a0 $09
	inc b                                            ; $6f53: $04
	cp $c0                                           ; $6f54: $fe $c0

jr_087_6f56:
	ld bc, $01a0                                     ; $6f56: $01 $a0 $01
	dec b                                            ; $6f59: $05
	dec bc                                           ; $6f5a: $0b
	ret nz                                           ; $6f5b: $c0

	ld bc, $09a0                                     ; $6f5c: $01 $a0 $09
	dec b                                            ; $6f5f: $05
	inc d                                            ; $6f60: $14
	pop bc                                           ; $6f61: $c1
	ld e, e                                          ; $6f62: $5b
	ret nz                                           ; $6f63: $c0

	ld bc, $01a0                                     ; $6f64: $01 $a0 $01
	dec b                                            ; $6f67: $05
	dec de                                           ; $6f68: $1b
	nop                                              ; $6f69: $00
	add b                                            ; $6f6a: $80
	nop                                              ; $6f6b: $00
	adc l                                            ; $6f6c: $8d
	jr nz, jr_087_6ef0                               ; $6f6d: $20 $81

	ld bc, $c0a6                                     ; $6f6f: $01 $a6 $c0
	sbc e                                            ; $6f72: $9b
	ret c                                            ; $6f73: $d8

	ret nz                                           ; $6f74: $c0

	ld e, $e0                                        ; $6f75: $1e $e0
	jr z, @-$26                                      ; $6f77: $28 $d8

	ld h, b                                          ; $6f79: $60
	ei                                               ; $6f7a: $fb
	add c                                            ; $6f7b: $81
	and b                                            ; $6f7c: $a0
	rlca                                             ; $6f7d: $07
	jp nc, $d008                                     ; $6f7e: $d2 $08 $d0

	add e                                            ; $6f81: $83
	and b                                            ; $6f82: $a0
	add hl, bc                                       ; $6f83: $09
	ret c                                            ; $6f84: $d8

	db $e4                                           ; $6f85: $e4
	ld [bc], a                                       ; $6f86: $02
	add hl, sp                                       ; $6f87: $39
	ld [$83d0], sp                                   ; $6f88: $08 $d0 $83
	and b                                            ; $6f8b: $a0
	dec c                                            ; $6f8c: $0d
	ret c                                            ; $6f8d: $d8

	db $e4                                           ; $6f8e: $e4
	nop                                              ; $6f8f: $00
	ld [bc], a                                       ; $6f90: $02
	add hl, bc                                       ; $6f91: $09
	ld [hl+], a                                      ; $6f92: $22
	db $fd                                           ; $6f93: $fd
	jr nz, jr_087_6f56                               ; $6f94: $20 $c0

	ld e, h                                          ; $6f96: $5c
	ld bc, $03d1                                     ; $6f97: $01 $d1 $03
	db $e4                                           ; $6f9a: $e4
	ld a, [$012a]                                    ; $6f9b: $fa $2a $01
	jp nc, $e403                                     ; $6f9e: $d2 $03 $e4

	ei                                               ; $6fa1: $fb
	add d                                            ; $6fa2: $82
	ld bc, $03d3                                     ; $6fa3: $01 $d3 $03
	db $e4                                           ; $6fa6: $e4
	db $fc                                           ; $6fa7: $fc

jr_087_6fa8:
	call nz, $d701                                   ; $6fa8: $c4 $01 $d7
	inc bc                                           ; $6fab: $03
	db $e4                                           ; $6fac: $e4
	cp $0c                                           ; $6fad: $fe $0c
	ld bc, $03dd                                     ; $6faf: $01 $dd $03
	db $e4                                           ; $6fb2: $e4
	ld bc, $095e                                     ; $6fb3: $01 $5e $09
	ld h, c                                          ; $6fb6: $61
	jr nz, @-$7d                                     ; $6fb7: $20 $81

	and b                                            ; $6fb9: $a0
	rlca                                             ; $6fba: $07
	ret nz                                           ; $6fbb: $c0

	and a                                            ; $6fbc: $a7
	jp c, $d4d3                                      ; $6fbd: $da $d3 $d4

	ret nz                                           ; $6fc0: $c0

	xor h                                            ; $6fc1: $ac
	ret nz                                           ; $6fc2: $c0

	and l                                            ; $6fc3: $a5
	add c                                            ; $6fc4: $81
	ret nz                                           ; $6fc5: $c0

	dec de                                           ; $6fc6: $1b
	jp c, $d501                                      ; $6fc7: $da $01 $d5

	ld c, $c0                                        ; $6fca: $0e $c0
	ld bc, $06a0                                     ; $6fcc: $01 $a0 $06
	dec b                                            ; $6fcf: $05
	ld hl, $5bc1                                     ; $6fd0: $21 $c1 $5b
	ret nz                                           ; $6fd3: $c0

	ld bc, $01a0                                     ; $6fd4: $01 $a0 $01
	dec b                                            ; $6fd7: $05
	inc hl                                           ; $6fd8: $23
	nop                                              ; $6fd9: $00
	ld e, $c0                                        ; $6fda: $1e $c0
	ld bc, $06a0                                     ; $6fdc: $01 $a0 $06
	ld [bc], a                                       ; $6fdf: $02
	ld l, a                                          ; $6fe0: $6f
	ret nz                                           ; $6fe1: $c0

	ld bc, $01a0                                     ; $6fe2: $01 $a0 $01
	dec b                                            ; $6fe5: $05
	jr nc, jr_087_6fa8                               ; $6fe6: $30 $c0

	nop                                              ; $6fe8: $00
	dec b                                            ; $6fe9: $05
	dec [hl]                                         ; $6fea: $35
	ret nz                                           ; $6feb: $c0

	ld bc, $06a0                                     ; $6fec: $01 $a0 $06
	dec b                                            ; $6fef: $05
	ld a, $c0                                        ; $6ff0: $3e $c0
	ld bc, $01a0                                     ; $6ff2: $01 $a0 $01
	dec b                                            ; $6ff5: $05
	ld c, b                                          ; $6ff6: $48

jr_087_6ff7:
	pop bc                                           ; $6ff7: $c1
	ld e, e                                          ; $6ff8: $5b
	ret nz                                           ; $6ff9: $c0

	ld hl, $dad4                                     ; $6ffa: $21 $d4 $da
	ret nz                                           ; $6ffd: $c0

	ld e, l                                          ; $6ffe: $5d
	jp c, $fb60                                      ; $6fff: $da $60 $fb

	add c                                            ; $7002: $81
	and b                                            ; $7003: $a0
	rlca                                             ; $7004: $07
	jp nc, $d008                                     ; $7005: $d2 $08 $d0

	add e                                            ; $7008: $83
	and b                                            ; $7009: $a0
	add hl, bc                                       ; $700a: $09
	jp c, $01e4                                      ; $700b: $da $e4 $01

	or d                                             ; $700e: $b2
	ld [$83d0], sp                                   ; $700f: $08 $d0 $83
	and b                                            ; $7012: $a0
	dec c                                            ; $7013: $0d
	jp c, $00e4                                      ; $7014: $da $e4 $00

	ld [bc], a                                       ; $7017: $02
	add hl, bc                                       ; $7018: $09
	ld l, $fd                                        ; $7019: $2e $fd
	inc l                                            ; $701b: $2c
	ret nz                                           ; $701c: $c0

	ld e, e                                          ; $701d: $5b
	jp c, $d101                                      ; $701e: $da $01 $d1

	inc bc                                           ; $7021: $03
	db $e4                                           ; $7022: $e4
	ld sp, hl                                        ; $7023: $f9
	inc bc                                           ; $7024: $03
	ld bc, $03d2                                     ; $7025: $01 $d2 $03
	db $e4                                           ; $7028: $e4
	ld a, [$015b]                                    ; $7029: $fa $5b $01
	db $d3                                           ; $702c: $d3
	inc bc                                           ; $702d: $03
	db $e4                                           ; $702e: $e4
	ei                                               ; $702f: $fb
	sbc l                                            ; $7030: $9d
	ld bc, $03d7                                     ; $7031: $01 $d7 $03
	db $e4                                           ; $7034: $e4
	db $fc                                           ; $7035: $fc
	push hl                                          ; $7036: $e5
	ld bc, $03d8                                     ; $7037: $01 $d8 $03
	db $e4                                           ; $703a: $e4
	cp $2f                                           ; $703b: $fe $2f
	ld bc, $03dd                                     ; $703d: $01 $dd $03
	db $e4                                           ; $7040: $e4
	nop                                              ; $7041: $00
	ld sp, $0300                                     ; $7042: $31 $00 $03
	db $e4                                           ; $7045: $e4
	nop                                              ; $7046: $00
	ld [bc], a                                       ; $7047: $02

jr_087_7048:
	add hl, bc                                       ; $7048: $09
	jr z, jr_087_7048                                ; $7049: $28 $fd

	ld h, $c0                                        ; $704b: $26 $c0
	ld e, h                                          ; $704d: $5c
	ld bc, $03d1                                     ; $704e: $01 $d1 $03
	db $e4                                           ; $7051: $e4
	ld sp, hl                                        ; $7052: $f9
	ld [hl], e                                       ; $7053: $73
	ld bc, $03d2                                     ; $7054: $01 $d2 $03
	db $e4                                           ; $7057: $e4
	ld a, [$01cb]                                    ; $7058: $fa $cb $01
	db $d3                                           ; $705b: $d3
	inc bc                                           ; $705c: $03
	db $e4                                           ; $705d: $e4
	db $fc                                           ; $705e: $fc
	dec c                                            ; $705f: $0d
	ld bc, $03d7                                     ; $7060: $01 $d7 $03
	db $e4                                           ; $7063: $e4
	db $fd                                           ; $7064: $fd
	ld d, l                                          ; $7065: $55
	ld bc, $03d8                                     ; $7066: $01 $d8 $03
	db $e4                                           ; $7069: $e4
	cp $9f                                           ; $706a: $fe $9f
	ld bc, $03dd                                     ; $706c: $01 $dd $03
	db $e4                                           ; $706f: $e4
	nop                                              ; $7070: $00
	and c                                            ; $7071: $a1
	add hl, bc                                       ; $7072: $09
	ld l, l                                          ; $7073: $6d
	jr nz, jr_087_6ff7                               ; $7074: $20 $81

	and b                                            ; $7076: $a0
	rlca                                             ; $7077: $07
	ret nz                                           ; $7078: $c0

	and a                                            ; $7079: $a7
	db $dd                                           ; $707a: $dd
	db $d3                                           ; $707b: $d3
	call nc, $acc0                                   ; $707c: $d4 $c0 $ac
	ret nz                                           ; $707f: $c0

	and l                                            ; $7080: $a5
	add c                                            ; $7081: $81
	ret nz                                           ; $7082: $c0

	dec de                                           ; $7083: $1b
	db $dd                                           ; $7084: $dd
	ld bc, $1ad5                                     ; $7085: $01 $d5 $1a
	ret nz                                           ; $7088: $c0

	ld bc, $0aa0                                     ; $7089: $01 $a0 $0a
	dec b                                            ; $708c: $05
	ld d, b                                          ; $708d: $50
	ret nz                                           ; $708e: $c0

	ld bc, $01a0                                     ; $708f: $01 $a0 $01
	dec b                                            ; $7092: $05
	ld d, h                                          ; $7093: $54
	ret nz                                           ; $7094: $c0

	ld bc, $0aa0                                     ; $7095: $01 $a0 $0a
	dec b                                            ; $7098: $05
	ld e, b                                          ; $7099: $58
	pop bc                                           ; $709a: $c1
	ld e, e                                          ; $709b: $5b
	ret nz                                           ; $709c: $c0

	ld bc, $01a0                                     ; $709d: $01 $a0 $01
	ld [bc], a                                       ; $70a0: $02
	ld c, l                                          ; $70a1: $4d
	nop                                              ; $70a2: $00
	ld e, $c0                                        ; $70a3: $1e $c0
	ld bc, $0aa0                                     ; $70a5: $01 $a0 $0a
	dec b                                            ; $70a8: $05
	ld h, b                                          ; $70a9: $60
	ret nz                                           ; $70aa: $c0

	ld bc, $01a0                                     ; $70ab: $01 $a0 $01
	dec b                                            ; $70ae: $05
	ld h, l                                          ; $70af: $65
	ret nz                                           ; $70b0: $c0

	nop                                              ; $70b1: $00
	dec b                                            ; $70b2: $05
	ld l, c                                          ; $70b3: $69
	ret nz                                           ; $70b4: $c0

	ld bc, $0aa0                                     ; $70b5: $01 $a0 $0a
	dec b                                            ; $70b8: $05
	ld [hl], d                                       ; $70b9: $72
	ret nz                                           ; $70ba: $c0

	ld bc, $01a0                                     ; $70bb: $01 $a0 $01
	ld [bc], a                                       ; $70be: $02
	ld h, c                                          ; $70bf: $61
	pop bc                                           ; $70c0: $c1
	ld e, e                                          ; $70c1: $5b
	ret nz                                           ; $70c2: $c0

	ld hl, $ddd4                                     ; $70c3: $21 $d4 $dd
	ret nz                                           ; $70c6: $c0

	ld e, l                                          ; $70c7: $5d
	db $dd                                           ; $70c8: $dd
	ld h, b                                          ; $70c9: $60
	ei                                               ; $70ca: $fb
	add c                                            ; $70cb: $81
	and b                                            ; $70cc: $a0
	rlca                                             ; $70cd: $07
	jp nc, $d008                                     ; $70ce: $d2 $08 $d0

	add e                                            ; $70d1: $83
	and b                                            ; $70d2: $a0
	add hl, bc                                       ; $70d3: $09
	db $dd                                           ; $70d4: $dd
	db $e4                                           ; $70d5: $e4
	nop                                              ; $70d6: $00
	jp hl                                            ; $70d7: $e9


	ld [$83d0], sp                                   ; $70d8: $08 $d0 $83
	and b                                            ; $70db: $a0
	dec c                                            ; $70dc: $0d
	db $dd                                           ; $70dd: $dd
	db $e4                                           ; $70de: $e4
	nop                                              ; $70df: $00
	ld [bc], a                                       ; $70e0: $02
	add hl, bc                                       ; $70e1: $09
	ld l, $fd                                        ; $70e2: $2e $fd
	inc l                                            ; $70e4: $2c
	ret nz                                           ; $70e5: $c0

	ld e, e                                          ; $70e6: $5b
	db $dd                                           ; $70e7: $dd
	ld bc, $03d1                                     ; $70e8: $01 $d1 $03

jr_087_70eb:
	db $e4                                           ; $70eb: $e4
	ld hl, sp+$3a                                    ; $70ec: $f8 $3a
	ld bc, $03d2                                     ; $70ee: $01 $d2 $03
	db $e4                                           ; $70f1: $e4
	ld sp, hl                                        ; $70f2: $f9
	sub d                                            ; $70f3: $92
	ld bc, $03d3                                     ; $70f4: $01 $d3 $03
	db $e4                                           ; $70f7: $e4
	ld a, [$01d4]                                    ; $70f8: $fa $d4 $01
	rst SubAFromHL                                          ; $70fb: $d7
	inc bc                                           ; $70fc: $03
	db $e4                                           ; $70fd: $e4
	db $fc                                           ; $70fe: $fc
	inc e                                            ; $70ff: $1c
	ld bc, $03d8                                     ; $7100: $01 $d8 $03
	db $e4                                           ; $7103: $e4
	db $fd                                           ; $7104: $fd
	ld h, [hl]                                       ; $7105: $66
	ld bc, $03da                                     ; $7106: $01 $da $03
	db $e4                                           ; $7109: $e4
	cp $ab                                           ; $710a: $fe $ab
	nop                                              ; $710c: $00
	inc bc                                           ; $710d: $03
	db $e4                                           ; $710e: $e4
	nop                                              ; $710f: $00
	adc h                                            ; $7110: $8c
	add hl, bc                                       ; $7111: $09
	adc b                                            ; $7112: $88
	ret nz                                           ; $7113: $c0

	ld e, $e0                                        ; $7114: $1e $e0
	ld b, [hl]                                       ; $7116: $46
	db $dd                                           ; $7117: $dd
	ret nz                                           ; $7118: $c0

	jr nz, jr_087_70eb                               ; $7119: $20 $d0

	db $dd                                           ; $711b: $dd
	jr nz, @-$7d                                     ; $711c: $20 $81

	and b                                            ; $711e: $a0
	rlca                                             ; $711f: $07
	ret nz                                           ; $7120: $c0

	ld bc, $0aa0                                     ; $7121: $01 $a0 $0a
	dec b                                            ; $7124: $05
	add b                                            ; $7125: $80
	ret nz                                           ; $7126: $c0

	ld bc, $01a0                                     ; $7127: $01 $a0 $01
	dec b                                            ; $712a: $05
	add e                                            ; $712b: $83
	ret nz                                           ; $712c: $c0

	and a                                            ; $712d: $a7
	db $dd                                           ; $712e: $dd
	db $d3                                           ; $712f: $d3
	call nc, $abc0                                   ; $7130: $d4 $c0 $ab
	db $d3                                           ; $7133: $d3
	ret nz                                           ; $7134: $c0

	and l                                            ; $7135: $a5
	ret nz                                           ; $7136: $c0

	ld bc, $01a0                                     ; $7137: $01 $a0 $01
	dec b                                            ; $713a: $05
	add l                                            ; $713b: $85
	ret nz                                           ; $713c: $c0

	ld bc, $0aa0                                     ; $713d: $01 $a0 $0a
	dec b                                            ; $7140: $05
	add a                                            ; $7141: $87
	ret nz                                           ; $7142: $c0

	ld bc, $01a0                                     ; $7143: $01 $a0 $01
	dec b                                            ; $7146: $05
	adc b                                            ; $7147: $88
	ret nz                                           ; $7148: $c0

	ld bc, $0aa0                                     ; $7149: $01 $a0 $0a
	dec b                                            ; $714c: $05
	adc e                                            ; $714d: $8b
	ret nz                                           ; $714e: $c0

	ld bc, $01a0                                     ; $714f: $01 $a0 $01
	dec b                                            ; $7152: $05
	and a                                            ; $7153: $a7
	ret nz                                           ; $7154: $c0

	ld bc, $0aa0                                     ; $7155: $01 $a0 $0a
	dec b                                            ; $7158: $05
	or [hl]                                          ; $7159: $b6
	ret nz                                           ; $715a: $c0

	ld bc, $01a0                                     ; $715b: $01 $a0 $01
	dec b                                            ; $715e: $05
	ret nz                                           ; $715f: $c0

jr_087_7160:
	ret nz                                           ; $7160: $c0

	ld bc, $0aa0                                     ; $7161: $01 $a0 $0a
	dec b                                            ; $7164: $05
	ret z                                            ; $7165: $c8

	ret nz                                           ; $7166: $c0

	dec bc                                           ; $7167: $0b
	db $e3                                           ; $7168: $e3
	nop                                              ; $7169: $00
	daa                                              ; $716a: $27
	pop bc                                           ; $716b: $c1
	ld e, e                                          ; $716c: $5b
	ret nz                                           ; $716d: $c0

	ld bc, $01a0                                     ; $716e: $01 $a0 $01
	dec b                                            ; $7171: $05
	db $d3                                           ; $7172: $d3
	nop                                              ; $7173: $00
	add b                                            ; $7174: $80
	nop                                              ; $7175: $00
	ld a, l                                          ; $7176: $7d
	jr nz, @-$7d                                     ; $7177: $20 $81

	ld bc, $c0a6                                     ; $7179: $01 $a6 $c0
	sbc e                                            ; $717c: $9b
	db $dd                                           ; $717d: $dd
	ret nz                                           ; $717e: $c0

	ld e, $e0                                        ; $717f: $1e $e0
	jr z, jr_087_7160                                ; $7181: $28 $dd

	ld h, b                                          ; $7183: $60
	ei                                               ; $7184: $fb
	add c                                            ; $7185: $81
	and b                                            ; $7186: $a0
	rlca                                             ; $7187: $07
	jp nc, $d008                                     ; $7188: $d2 $08 $d0

	add e                                            ; $718b: $83
	and b                                            ; $718c: $a0
	add hl, bc                                       ; $718d: $09
	db $dd                                           ; $718e: $dd
	db $e4                                           ; $718f: $e4
	nop                                              ; $7190: $00
	cpl                                              ; $7191: $2f
	ld [$83d0], sp                                   ; $7192: $08 $d0 $83
	and b                                            ; $7195: $a0
	dec c                                            ; $7196: $0d
	db $dd                                           ; $7197: $dd
	db $e4                                           ; $7198: $e4
	nop                                              ; $7199: $00
	ld [bc], a                                       ; $719a: $02
	add hl, bc                                       ; $719b: $09
	ld [hl+], a                                      ; $719c: $22
	db $fd                                           ; $719d: $fd
	jr nz, jr_087_7160                               ; $719e: $20 $c0

	ld e, h                                          ; $71a0: $5c
	ld bc, $03d1                                     ; $71a1: $01 $d1 $03
	db $e4                                           ; $71a4: $e4
	ld hl, sp+$20                                    ; $71a5: $f8 $20
	ld bc, $03d2                                     ; $71a7: $01 $d2 $03
	db $e4                                           ; $71aa: $e4
	ld sp, hl                                        ; $71ab: $f9
	ld a, b                                          ; $71ac: $78
	ld bc, $03d3                                     ; $71ad: $01 $d3 $03
	db $e4                                           ; $71b0: $e4
	ld a, [$01ba]                                    ; $71b1: $fa $ba $01
	rst SubAFromHL                                          ; $71b4: $d7
	inc bc                                           ; $71b5: $03
	db $e4                                           ; $71b6: $e4
	db $fc                                           ; $71b7: $fc
	ld [bc], a                                       ; $71b8: $02
	ld bc, $03d8                                     ; $71b9: $01 $d8 $03
	db $e4                                           ; $71bc: $e4
	db $fd                                           ; $71bd: $fd
	ld c, h                                          ; $71be: $4c
	add hl, bc                                       ; $71bf: $09
	pop bc                                           ; $71c0: $c1
	sub c                                            ; $71c1: $91
	ld b, b                                          ; $71c2: $40
	add b                                            ; $71c3: $80
	and b                                            ; $71c4: $a0
	ld de, $83d0                                     ; $71c5: $11 $d0 $83
	and b                                            ; $71c8: $a0
	ld [de], a                                       ; $71c9: $12
	ret nz                                           ; $71ca: $c0

	ldh a, [hDisp0_SCY]                                     ; $71cb: $f0 $83
	and b                                            ; $71cd: $a0
	dec c                                            ; $71ce: $0d
	add e                                            ; $71cf: $83
	and b                                            ; $71d0: $a0
	add hl, bc                                       ; $71d1: $09
	add d                                            ; $71d2: $82
	ret nz                                           ; $71d3: $c0

	add b                                            ; $71d4: $80
	ld bc, $51d1                                     ; $71d5: $01 $d1 $51
	db $fd                                           ; $71d8: $fd
	ld c, a                                          ; $71d9: $4f
	add e                                            ; $71da: $83
	and b                                            ; $71db: $a0
	ld [de], a                                       ; $71dc: $12
	ld bc, $06d0                                     ; $71dd: $01 $d0 $06
	ret nz                                           ; $71e0: $c0

	ld bc, $01a0                                     ; $71e1: $01 $a0 $01
	dec b                                            ; $71e4: $05
	jp c, $d101                                      ; $71e5: $da $01 $d1

	ld b, $c0                                        ; $71e8: $06 $c0
	ld bc, $01a0                                     ; $71ea: $01 $a0 $01
	dec b                                            ; $71ed: $05
	jp hl                                            ; $71ee: $e9


	ld bc, $06d2                                     ; $71ef: $01 $d2 $06
	ret nz                                           ; $71f2: $c0

	ld bc, $01a0                                     ; $71f3: $01 $a0 $01
	dec b                                            ; $71f6: $05
	ld sp, hl                                        ; $71f7: $f9
	ld bc, $06d3                                     ; $71f8: $01 $d3 $06
	ret nz                                           ; $71fb: $c0

	ld bc, $01a0                                     ; $71fc: $01 $a0 $01
	ld b, $0b                                        ; $71ff: $06 $0b
	ld bc, $06d7                                     ; $7201: $01 $d7 $06
	ret nz                                           ; $7204: $c0

	ld bc, $01a0                                     ; $7205: $01 $a0 $01
	ld b, $21                                        ; $7208: $06 $21
	ld bc, $06d8                                     ; $720a: $01 $d8 $06
	ret nz                                           ; $720d: $c0

	ld bc, $01a0                                     ; $720e: $01 $a0 $01
	ld b, $31                                        ; $7211: $06 $31
	ld bc, $06dd                                     ; $7213: $01 $dd $06
	ret nz                                           ; $7216: $c0

	ld bc, $01a0                                     ; $7217: $01 $a0 $01
	ld b, $45                                        ; $721a: $06 $45
	ld bc, $0adf                                     ; $721c: $01 $df $0a
	ret nz                                           ; $721f: $c0

	ld bc, $01a0                                     ; $7220: $01 $a0 $01
	ld b, $59                                        ; $7223: $06 $59
	nop                                              ; $7225: $00
	add b                                            ; $7226: $80
	and b                                            ; $7227: $a0
	ld de, wCurrMenuOption                                     ; $7228: $11 $01 $d2
	ld e, d                                          ; $722b: $5a
	db $fd                                           ; $722c: $fd
	ld e, b                                          ; $722d: $58
	add e                                            ; $722e: $83
	and b                                            ; $722f: $a0
	ld [de], a                                       ; $7230: $12
	ld bc, $06d0                                     ; $7231: $01 $d0 $06
	ret nz                                           ; $7234: $c0

	ld bc, $01a0                                     ; $7235: $01 $a0 $01
	ld b, $6e                                        ; $7238: $06 $6e
	ld bc, $06d1                                     ; $723a: $01 $d1 $06
	ret nz                                           ; $723d: $c0

	ld bc, $01a0                                     ; $723e: $01 $a0 $01
	ld b, $80                                        ; $7241: $06 $80
	ld bc, $06d2                                     ; $7243: $01 $d2 $06
	ret nz                                           ; $7246: $c0

	ld bc, $01a0                                     ; $7247: $01 $a0 $01
	ld b, $91                                        ; $724a: $06 $91
	ld bc, $06d3                                     ; $724c: $01 $d3 $06
	ret nz                                           ; $724f: $c0

	ld bc, $01a0                                     ; $7250: $01 $a0 $01
	ld b, $a1                                        ; $7253: $06 $a1
	ld bc, $06d7                                     ; $7255: $01 $d7 $06
	ret nz                                           ; $7258: $c0

	ld bc, $01a0                                     ; $7259: $01 $a0 $01
	ld b, $b3                                        ; $725c: $06 $b3
	ld bc, $06d8                                     ; $725e: $01 $d8 $06
	ret nz                                           ; $7261: $c0

	ld bc, $01a0                                     ; $7262: $01 $a0 $01
	ld b, $c7                                        ; $7265: $06 $c7
	ld bc, $06da                                     ; $7267: $01 $da $06
	ret nz                                           ; $726a: $c0

	ld bc, $01a0                                     ; $726b: $01 $a0 $01
	ld b, $d9                                        ; $726e: $06 $d9
	ld bc, $06dd                                     ; $7270: $01 $dd $06
	ret nz                                           ; $7273: $c0

	ld bc, $01a0                                     ; $7274: $01 $a0 $01
	ld b, $e8                                        ; $7277: $06 $e8
	ld bc, $0adf                                     ; $7279: $01 $df $0a
	ret nz                                           ; $727c: $c0

	ld bc, $01a0                                     ; $727d: $01 $a0 $01
	ld b, $f7                                        ; $7280: $06 $f7
	nop                                              ; $7282: $00
	add b                                            ; $7283: $80
	and b                                            ; $7284: $a0

jr_087_7285:
	ld de, $d301                                     ; $7285: $11 $01 $d3
	ld e, d                                          ; $7288: $5a
	db $fd                                           ; $7289: $fd
	ld e, b                                          ; $728a: $58
	add e                                            ; $728b: $83
	and b                                            ; $728c: $a0
	ld [de], a                                       ; $728d: $12
	ld bc, $06d0                                     ; $728e: $01 $d0 $06
	ret nz                                           ; $7291: $c0

	ld bc, $01a0                                     ; $7292: $01 $a0 $01
	rlca                                             ; $7295: $07
	dec bc                                           ; $7296: $0b
	ld bc, $06d1                                     ; $7297: $01 $d1 $06
	ret nz                                           ; $729a: $c0

	ld bc, $01a0                                     ; $729b: $01 $a0 $01
	rlca                                             ; $729e: $07
	dec e                                            ; $729f: $1d
	ld bc, $06d2                                     ; $72a0: $01 $d2 $06
	ret nz                                           ; $72a3: $c0

	ld bc, $01a0                                     ; $72a4: $01 $a0 $01
	rlca                                             ; $72a7: $07
	ld l, $01                                        ; $72a8: $2e $01
	db $d3                                           ; $72aa: $d3
	ld b, $c0                                        ; $72ab: $06 $c0
	ld bc, $01a0                                     ; $72ad: $01 $a0 $01
	rlca                                             ; $72b0: $07
	ld a, $01                                        ; $72b1: $3e $01
	rst SubAFromHL                                          ; $72b3: $d7
	ld b, $c0                                        ; $72b4: $06 $c0
	ld bc, $01a0                                     ; $72b6: $01 $a0 $01
	rlca                                             ; $72b9: $07
	ld d, h                                          ; $72ba: $54
	ld bc, $06d8                                     ; $72bb: $01 $d8 $06
	ret nz                                           ; $72be: $c0

	ld bc, $01a0                                     ; $72bf: $01 $a0 $01
	rlca                                             ; $72c2: $07
	ld l, l                                          ; $72c3: $6d
	ld bc, $06da                                     ; $72c4: $01 $da $06
	ret nz                                           ; $72c7: $c0

	ld bc, $01a0                                     ; $72c8: $01 $a0 $01
	rlca                                             ; $72cb: $07
	ld a, l                                          ; $72cc: $7d
	ld bc, $06dd                                     ; $72cd: $01 $dd $06
	ret nz                                           ; $72d0: $c0

	ld bc, $01a0                                     ; $72d1: $01 $a0 $01
	rlca                                             ; $72d4: $07
	sub b                                            ; $72d5: $90
	ld bc, $0adf                                     ; $72d6: $01 $df $0a
	ret nz                                           ; $72d9: $c0

	ld bc, $01a0                                     ; $72da: $01 $a0 $01
	rlca                                             ; $72dd: $07
	and e                                            ; $72de: $a3
	nop                                              ; $72df: $00
	add b                                            ; $72e0: $80
	and b                                            ; $72e1: $a0
	ld de, $09c0                                     ; $72e2: $11 $c0 $09
	db $e3                                           ; $72e5: $e3
	nop                                              ; $72e6: $00
	add c                                            ; $72e7: $81
	ld h, b                                          ; $72e8: $60
	add b                                            ; $72e9: $80
	and b                                            ; $72ea: $a0
	ld de, $c00a                                     ; $72eb: $11 $0a $c0
	ld bc, $01a0                                     ; $72ee: $01 $a0 $01
	rlca                                             ; $72f1: $07
	or e                                             ; $72f2: $b3
	ret nz                                           ; $72f3: $c0

	reti                                             ; $72f4: $d9


	push de                                          ; $72f5: $d5
	ret c                                            ; $72f6: $d8

	ld a, [bc]                                       ; $72f7: $0a
	ret nz                                           ; $72f8: $c0

	ld bc, $01a0                                     ; $72f9: $01 $a0 $01
	rlca                                             ; $72fc: $07
	cp a                                             ; $72fd: $bf
	ret nz                                           ; $72fe: $c0

	jp c, $d8d5                                      ; $72ff: $da $d5 $d8

	jr nz, jr_087_7285                               ; $7302: $20 $81

	and b                                            ; $7304: $a0
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	add b                                            ; $7307: $80
	ld [bc], a                                       ; $7308: $02
	jp hl                                            ; $7309: $e9


	add c                                            ; $730a: $81
	adc e                                            ; $730b: $8b
	ld bc, $0266                                     ; $730c: $01 $66 $02
	or b                                             ; $730f: $b0
	inc bc                                           ; $7310: $03
	inc bc                                           ; $7311: $03
	db $e4                                           ; $7312: $e4
	ld [bc], a                                       ; $7313: $02
	ld a, [de]                                       ; $7314: $1a
	nop                                              ; $7315: $00
	inc a                                            ; $7316: $3c
	ei                                               ; $7317: $fb
	cp $0a                                           ; $7318: $fe $0a
	pop af                                           ; $731a: $f1
	add b                                            ; $731b: $80
	and b                                            ; $731c: $a0
	ld d, $fa                                        ; $731d: $16 $fa
	ret nz                                           ; $731f: $c0

	rla                                              ; $7320: $17
	ret nc                                           ; $7321: $d0

	ldh [rAUD4GO], a                                 ; $7322: $e0 $23
	dec bc                                           ; $7324: $0b
	add b                                            ; $7325: $80
	ret nz                                           ; $7326: $c0

	dec de                                           ; $7327: $1b
	ret nc                                           ; $7328: $d0

	ld [bc], a                                       ; $7329: $02
	ret nc                                           ; $732a: $d0

	pop de                                           ; $732b: $d1
	inc bc                                           ; $732c: $03
	db $e4                                           ; $732d: $e4
	nop                                              ; $732e: $00
	dec h                                            ; $732f: $25
	ei                                               ; $7330: $fb
	cp $10                                           ; $7331: $fe $10
	pop af                                           ; $7333: $f1
	add b                                            ; $7334: $80
	and b                                            ; $7335: $a0
	rla                                              ; $7336: $17
	rst $38                                          ; $7337: $ff
	ld a, [bc]                                       ; $7338: $0a
	db $fc                                           ; $7339: $fc
	add e                                            ; $733a: $83
	and b                                            ; $733b: $a0
	dec c                                            ; $733c: $0d
	rst SubAFromHL                                          ; $733d: $d7
	db $fc                                           ; $733e: $fc
	add e                                            ; $733f: $83
	and b                                            ; $7340: $a0
	add hl, bc                                       ; $7341: $09
	rst SubAFromHL                                          ; $7342: $d7
	dec bc                                           ; $7343: $0b
	add b                                            ; $7344: $80
	ret nz                                           ; $7345: $c0

	dec de                                           ; $7346: $1b
	rst SubAFromHL                                          ; $7347: $d7
	ld [bc], a                                       ; $7348: $02
	ret nc                                           ; $7349: $d0

	pop de                                           ; $734a: $d1
	inc bc                                           ; $734b: $03
	db $e4                                           ; $734c: $e4
	nop                                              ; $734d: $00
	jp nc, $01e5                                     ; $734e: $d2 $e5 $01

	add hl, de                                       ; $7351: $19
	or c                                             ; $7352: $b1
	add hl, bc                                       ; $7353: $09
	ret nz                                           ; $7354: $c0

	ret                                              ; $7355: $c9


	nop                                              ; $7356: $00
	add b                                            ; $7357: $80
	and b                                            ; $7358: $a0
	ld d, $c0                                        ; $7359: $16 $c0
	set 0, b                                         ; $735b: $cb $c0
	ld de, $00e3                                     ; $735d: $11 $e3 $00
	ld h, e                                          ; $7360: $63
	ret nz                                           ; $7361: $c0

	and a                                            ; $7362: $a7
	ret nc                                           ; $7363: $d0

	db $d3                                           ; $7364: $d3
	call nc, $acc0                                   ; $7365: $d4 $c0 $ac
	pop bc                                           ; $7368: $c1
	ld e, h                                          ; $7369: $5c
	ret nz                                           ; $736a: $c0

	jp z, $01c0                                      ; $736b: $ca $c0 $01

	and b                                            ; $736e: $a0
	ld [bc], a                                       ; $736f: $02
	rlca                                             ; $7370: $07
	jp z, $01c0                                      ; $7371: $ca $c0 $01

	and b                                            ; $7374: $a0
	ld bc, $cd07                                     ; $7375: $01 $07 $cd
	ret nz                                           ; $7378: $c0

	ld bc, $02a0                                     ; $7379: $01 $a0 $02
	rlca                                             ; $737c: $07
	jp nc, $01c0                                     ; $737d: $d2 $c0 $01

	and b                                            ; $7380: $a0
	ld bc, $da07                                     ; $7381: $01 $07 $da
	ret nz                                           ; $7384: $c0

	set 0, c                                         ; $7385: $cb $c1
	ld e, e                                          ; $7387: $5b
	ret nz                                           ; $7388: $c0

	rrca                                             ; $7389: $0f
	db $e3                                           ; $738a: $e3
	nop                                              ; $738b: $00
	rst SubAFromHL                                          ; $738c: $d7
	ret nz                                           ; $738d: $c0

	ld bc, $02a0                                     ; $738e: $01 $a0 $02
	rlca                                             ; $7391: $07
	ldh [$c0], a                                     ; $7392: $e0 $c0
	ld bc, $01a0                                     ; $7394: $01 $a0 $01
	rlca                                             ; $7397: $07
	and $c0                                          ; $7398: $e6 $c0
	ld bc, $02a0                                     ; $739a: $01 $a0 $02
	rlca                                             ; $739d: $07
	pop af                                           ; $739e: $f1
	ret nz                                           ; $739f: $c0

	ld bc, $01a0                                     ; $73a0: $01 $a0 $01
	ld [$c000], sp                                   ; $73a3: $08 $00 $c0
	ld bc, $02a0                                     ; $73a6: $01 $a0 $02
	ld [$c00b], sp                                   ; $73a9: $08 $0b $c0
	ld bc, $01a0                                     ; $73ac: $01 $a0 $01
	ld [$c024], sp                                   ; $73af: $08 $24 $c0
	ld bc, $02a0                                     ; $73b2: $01 $a0 $02
	ld [$c027], sp                                   ; $73b5: $08 $27 $c0
	ld bc, $01a0                                     ; $73b8: $01 $a0 $01
	ld [$c030], sp                                   ; $73bb: $08 $30 $c0
	ld bc, $02a0                                     ; $73be: $01 $a0 $02
	ld [$c032], sp                                   ; $73c1: $08 $32 $c0
	ld bc, $01a0                                     ; $73c4: $01 $a0 $01
	ld [$c138], sp                                   ; $73c7: $08 $38 $c1
	ld a, d                                          ; $73ca: $7a
	ret nz                                           ; $73cb: $c0

	inc c                                            ; $73cc: $0c
	ldh [$3c], a                                     ; $73cd: $e0 $3c
	pop bc                                           ; $73cf: $c1
	adc d                                            ; $73d0: $8a
	pop de                                           ; $73d1: $d1
	pop bc                                           ; $73d2: $c1
	or d                                             ; $73d3: $b2
	db $e3                                           ; $73d4: $e3
	nop                                              ; $73d5: $00
	ld b, $c0                                        ; $73d6: $06 $c0
	ld bc, $02a0                                     ; $73d8: $01 $a0 $02
	ld [$c03e], sp                                   ; $73db: $08 $3e $c0
	ld bc, $01a0                                     ; $73de: $01 $a0 $01
	ld [wGameState], sp                                   ; $73e1: $08 $42 $c1
	or d                                             ; $73e4: $b2
	db $e3                                           ; $73e5: $e3
	nop                                              ; $73e6: $00
	rlca                                             ; $73e7: $07
	ret nz                                           ; $73e8: $c0

	ld bc, $02a0                                     ; $73e9: $01 $a0 $02
	ld [$c044], sp                                   ; $73ec: $08 $44 $c0
	ld bc, $01a0                                     ; $73ef: $01 $a0 $01
	ld [$c146], sp                                   ; $73f2: $08 $46 $c1
	or d                                             ; $73f5: $b2
	db $e3                                           ; $73f6: $e3
	nop                                              ; $73f7: $00
	ld [$01c0], sp                                   ; $73f8: $08 $c0 $01
	and b                                            ; $73fb: $a0
	ld [bc], a                                       ; $73fc: $02
	ld [$c04a], sp                                   ; $73fd: $08 $4a $c0
	ld bc, $01a0                                     ; $7400: $01 $a0 $01
	ld [$c050], sp                                   ; $7403: $08 $50 $c0
	inc c                                            ; $7406: $0c
	ldh [rAUD3HIGH], a                               ; $7407: $e0 $1e
	ret nz                                           ; $7409: $c0

	set 0, c                                         ; $740a: $cb $c1
	ld e, e                                          ; $740c: $5b
	pop bc                                           ; $740d: $c1
	ld a, e                                          ; $740e: $7b
	ret nz                                           ; $740f: $c0

	ld hl, $d0d2                                     ; $7410: $21 $d2 $d0
	ret nz                                           ; $7413: $c0

	ld [hl+], a                                      ; $7414: $22
	jp nc, $c1d0                                     ; $7415: $d2 $d0 $c1

	ld l, e                                          ; $7418: $6b
	ret c                                            ; $7419: $d8

	ret nc                                           ; $741a: $d0

	push hl                                          ; $741b: $e5
	ld bc, $b119                                     ; $741c: $01 $19 $b1
	jr z, @+$22                                      ; $741f: $28 $20

	ret nz                                           ; $7421: $c0

	set 0, c                                         ; $7422: $cb $c1
	call nz, $0fc0                                   ; $7424: $c4 $c0 $0f
	db $e3                                           ; $7427: $e3
	nop                                              ; $7428: $00
	ld h, d                                          ; $7429: $62
	ret nz                                           ; $742a: $c0

	and a                                            ; $742b: $a7
	rst SubAFromHL                                          ; $742c: $d7
	db $d3                                           ; $742d: $d3
	call nc, $02e1                                   ; $742e: $d4 $e1 $02
	inc bc                                           ; $7431: $03
	rla                                              ; $7432: $17
	ret nz                                           ; $7433: $c0

	and l                                            ; $7434: $a5
	ret nz                                           ; $7435: $c0

	ld bc, $01a0                                     ; $7436: $01 $a0 $01
	ld [$c05b], sp                                   ; $7439: $08 $5b $c0
	ld bc, $08a0                                     ; $743c: $01 $a0 $08
	ld [$2b65], sp                                   ; $743f: $08 $65 $2b
	ld [$0969], sp                                   ; $7442: $08 $69 $09
	add hl, bc                                       ; $7445: $09
	ret nz                                           ; $7446: $c0

	ld bc, $08a0                                     ; $7447: $01 $a0 $08
	ld [$e46e], sp                                   ; $744a: $08 $6e $e4
	nop                                              ; $744d: $00
	jr nz, @+$0a                                     ; $744e: $20 $08

	ld [hl], e                                       ; $7450: $73
	add hl, bc                                       ; $7451: $09
	ld a, [de]                                       ; $7452: $1a
	ret nz                                           ; $7453: $c0

	ld bc, $08a0                                     ; $7454: $01 $a0 $08
	ld [$c079], sp                                   ; $7457: $08 $79 $c0
	ld bc, $01a0                                     ; $745a: $01 $a0 $01
	ld [$c07d], sp                                   ; $745d: $08 $7d $c0
	set 0, b                                         ; $7460: $cb $c0
	inc h                                            ; $7462: $24
	pop de                                           ; $7463: $d1
	rst SubAFromHL                                          ; $7464: $d7
	ret nz                                           ; $7465: $c0

	dec h                                            ; $7466: $25
	pop de                                           ; $7467: $d1
	rst SubAFromHL                                          ; $7468: $d7
	push hl                                          ; $7469: $e5
	ld bc, $b119                                     ; $746a: $01 $19 $b1
	add hl, bc                                       ; $746d: $09
	ld [hl], d                                       ; $746e: $72
	nop                                              ; $746f: $00
	add b                                            ; $7470: $80
	and b                                            ; $7471: $a0
	rla                                              ; $7472: $17
	ret nz                                           ; $7473: $c0

	ld bc, $01a0                                     ; $7474: $01 $a0 $01
	ld [$c087], sp                                   ; $7477: $08 $87 $c0
	ld bc, $08a0                                     ; $747a: $01 $a0 $08
	ld [$c08d], sp                                   ; $747d: $08 $8d $c0
	ld bc, $01a0                                     ; $7480: $01 $a0 $01
	ld [$c092], sp                                   ; $7483: $08 $92 $c0
	ld bc, $08a0                                     ; $7486: $01 $a0 $08
	ld [$c09a], sp                                   ; $7489: $08 $9a $c0
	ld bc, $01a0                                     ; $748c: $01 $a0 $01
	ld [$c09e], sp                                   ; $748f: $08 $9e $c0
	ld bc, $08a0                                     ; $7492: $01 $a0 $08
	ld [$c0ad], sp                                   ; $7495: $08 $ad $c0
	set 0, c                                         ; $7498: $cb $c1
	ld e, e                                          ; $749a: $5b
	ret nz                                           ; $749b: $c0

	ld bc, $01a0                                     ; $749c: $01 $a0 $01
	ld [$c0ba], sp                                   ; $749f: $08 $ba $c0
	ld bc, $08a0                                     ; $74a2: $01 $a0 $08
	ld [$c0be], sp                                   ; $74a5: $08 $be $c0
	rrca                                             ; $74a8: $0f
	db $e3                                           ; $74a9: $e3
	nop                                              ; $74aa: $00
	ld hl, sp-$40                                    ; $74ab: $f8 $c0
	ld bc, $01a0                                     ; $74ad: $01 $a0 $01
	ld [$c1c1], sp                                   ; $74b0: $08 $c1 $c1
	ld a, d                                          ; $74b3: $7a
	pop bc                                           ; $74b4: $c1
	or d                                             ; $74b5: $b2
	db $e3                                           ; $74b6: $e3
	nop                                              ; $74b7: $00
	ld d, e                                          ; $74b8: $53
	ret nz                                           ; $74b9: $c0

	ld bc, $08a0                                     ; $74ba: $01 $a0 $08
	ld [$c0c7], sp                                   ; $74bd: $08 $c7 $c0
	ld bc, $01a0                                     ; $74c0: $01 $a0 $01
	ld [$c0d3], sp                                   ; $74c3: $08 $d3 $c0
	inc c                                            ; $74c6: $0c
	ldh [rAUD3HIGH], a                               ; $74c7: $e0 $1e
	ret nz                                           ; $74c9: $c0

	set 0, c                                         ; $74ca: $cb $c1
	ld a, e                                          ; $74cc: $7b
	ret nz                                           ; $74cd: $c0

	ld hl, $d7d2                                     ; $74ce: $21 $d2 $d7
	ret nz                                           ; $74d1: $c0

	ld [hl+], a                                      ; $74d2: $22
	jp nc, $00d7                                     ; $74d3: $d2 $d7 $00

	add b                                            ; $74d6: $80
	ld bc, $c160                                     ; $74d7: $01 $60 $c1
	ld l, e                                          ; $74da: $6b
	sub $d7                                          ; $74db: $d6 $d7
	push hl                                          ; $74dd: $e5
	ld bc, $b119                                     ; $74de: $01 $19 $b1
	add hl, bc                                       ; $74e1: $09
	ld c, d                                          ; $74e2: $4a
	pop bc                                           ; $74e3: $c1
	ld e, c                                          ; $74e4: $59
	db $e3                                           ; $74e5: $e3
	nop                                              ; $74e6: $00
	ld h, c                                          ; $74e7: $61
	ret nz                                           ; $74e8: $c0

	ld bc, $01a0                                     ; $74e9: $01 $a0 $01
	ld [$c0e0], sp                                   ; $74ec: $08 $e0 $c0
	ld bc, $01a0                                     ; $74ef: $01 $a0 $01
	ld [$c1e8], sp                                   ; $74f2: $08 $e8 $c1
	ld e, c                                          ; $74f5: $59
	db $e3                                           ; $74f6: $e3
	nop                                              ; $74f7: $00
	call $09c0                                       ; $74f8: $cd $c0 $09
	db $e3                                           ; $74fb: $e3
	nop                                              ; $74fc: $00
	ld a, l                                          ; $74fd: $7d
	ret nz                                           ; $74fe: $c0

	ld bc, $01a0                                     ; $74ff: $01 $a0 $01
	ld [$c0f3], sp                                   ; $7502: $08 $f3 $c0
	pop af                                           ; $7505: $f1
	pop hl                                           ; $7506: $e1
	ld [bc], a                                       ; $7507: $02
	rlca                                             ; $7508: $07
	cp a                                             ; $7509: $bf
	ret nz                                           ; $750a: $c0

	ld bc, $01a0                                     ; $750b: $01 $a0 $01
	ld [$c0fb], sp                                   ; $750e: $08 $fb $c0
	reti                                             ; $7511: $d9


	jp c, $c1d7                                      ; $7512: $da $d7 $c1

	dec sp                                           ; $7515: $3b
	nop                                              ; $7516: $00
	add b                                            ; $7517: $80
	ld [bc], a                                       ; $7518: $02
	jp hl                                            ; $7519: $e9


	ret nz                                           ; $751a: $c0

	res 0, c                                         ; $751b: $cb $81
	adc e                                            ; $751d: $8b
	ld bc, $0266                                     ; $751e: $01 $66 $02
	or b                                             ; $7521: $b0
	inc bc                                           ; $7522: $03
	inc bc                                           ; $7523: $03
	db $e4                                           ; $7524: $e4
	nop                                              ; $7525: $00
	ld [$0400], sp                                   ; $7526: $08 $00 $04
	push hl                                          ; $7529: $e5
	ld bc, $b119                                     ; $752a: $01 $19 $b1
	jr z, jr_087_753d                                ; $752d: $28 $0e

	ret nz                                           ; $752f: $c0

	push af                                          ; $7530: $f5
	ret nz                                           ; $7531: $c0

	ld bc, $01a0                                     ; $7532: $01 $a0 $01
	add hl, bc                                       ; $7535: $09
	ld [$01c0], sp                                   ; $7536: $08 $c0 $01
	and b                                            ; $7539: $a0
	ld bc, $1409                                     ; $753a: $01 $09 $14

jr_087_753d:
	inc h                                            ; $753d: $24
	add hl, bc                                       ; $753e: $09
	jr jr_087_754a                                   ; $753f: $18 $09

	ld a, [bc]                                       ; $7541: $0a
	ret nc                                           ; $7542: $d0

	adc e                                            ; $7543: $8b
	nop                                              ; $7544: $00
	sbc $b0                                          ; $7545: $de $b0
	ld [hl], h                                       ; $7547: $74
	push hl                                          ; $7548: $e5
	ld b, l                                          ; $7549: $45

jr_087_754a:
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	add hl, bc                                       ; $754c: $09
	ld a, [de]                                       ; $754d: $1a
	add hl, bc                                       ; $754e: $09
	ld [de], a                                       ; $754f: $12
	ret nz                                           ; $7550: $c0

	inc h                                            ; $7551: $24
	pop de                                           ; $7552: $d1
	ret nc                                           ; $7553: $d0

	ret nz                                           ; $7554: $c0

	inc hl                                           ; $7555: $23
	push de                                          ; $7556: $d5
	ret nc                                           ; $7557: $d0

	ret nz                                           ; $7558: $c0

	ld bc, $01a0                                     ; $7559: $01 $a0 $01
	add hl, bc                                       ; $755c: $09
	inc e                                            ; $755d: $1c
	push hl                                          ; $755e: $e5
	ld bc, $b119                                     ; $755f: $01 $19 $b1
	ld [hl], $08                                     ; $7562: $36 $08
	add hl, bc                                       ; $7564: $09
	dec l                                            ; $7565: $2d
	pop bc                                           ; $7566: $c1
	ld e, c                                          ; $7567: $59
	db $e3                                           ; $7568: $e3
	nop                                              ; $7569: $00
	ld c, d                                          ; $756a: $4a
	pop bc                                           ; $756b: $c1
	dec sp                                           ; $756c: $3b
	pop hl                                           ; $756d: $e1
	ld [bc], a                                       ; $756e: $02
	ld [bc], a                                       ; $756f: $02
	call z, $09c0                                    ; $7570: $cc $c0 $09
	db $e3                                           ; $7573: $e3
	nop                                              ; $7574: $00
	ld l, d                                          ; $7575: $6a
	ret nz                                           ; $7576: $c0

	ld bc, $07a0                                     ; $7577: $01 $a0 $07
	nop                                              ; $757a: $00
	ld bc, $01c0                                     ; $757b: $01 $c0 $01
	and b                                            ; $757e: $a0
	ld bc, $0700                                     ; $757f: $01 $00 $07
	ret nz                                           ; $7582: $c0

	ld bc, $07a0                                     ; $7583: $01 $a0 $07
	nop                                              ; $7586: $00
	inc c                                            ; $7587: $0c
	ret nz                                           ; $7588: $c0

	ld bc, $01a0                                     ; $7589: $01 $a0 $01

jr_087_758c:
	nop                                              ; $758c: $00
	rla                                              ; $758d: $17
	pop bc                                           ; $758e: $c1
	ld e, e                                          ; $758f: $5b
	db $e4                                           ; $7590: $e4
	nop                                              ; $7591: $00
	ld [bc], a                                       ; $7592: $02
	add hl, bc                                       ; $7593: $09
	ret nz                                           ; $7594: $c0

	db $ed                                           ; $7595: $ed
	pop bc                                           ; $7596: $c1
	ld e, c                                          ; $7597: $59
	db $e3                                           ; $7598: $e3
	nop                                              ; $7599: $00
	ret nc                                           ; $759a: $d0

	ret nz                                           ; $759b: $c0

	inc c                                            ; $759c: $0c
	ldh [$28], a                                     ; $759d: $e0 $28
	ret nz                                           ; $759f: $c0

	ld bc, $01a0                                     ; $75a0: $01 $a0 $01
	nop                                              ; $75a3: $00
	ld a, [de]                                       ; $75a4: $1a
	ret nz                                           ; $75a5: $c0

	ld bc, $07a0                                     ; $75a6: $01 $a0 $07
	nop                                              ; $75a9: $00
	ld e, $c1                                        ; $75aa: $1e $c1
	cp e                                             ; $75ac: $bb
	call nc, $a8c0                                   ; $75ad: $d4 $c0 $a8
	add e                                            ; $75b0: $83
	ld bc, $c084                                     ; $75b1: $01 $84 $c0
	xor e                                            ; $75b4: $ab
	jp nc, $ddc0                                     ; $75b5: $d2 $c0 $dd

	add e                                            ; $75b8: $83
	ld bc, $c084                                     ; $75b9: $01 $84 $c0
	and l                                            ; $75bc: $a5
	db $fd                                           ; $75bd: $fd
	xor e                                            ; $75be: $ab
	add e                                            ; $75bf: $83
	ld bc, $0184                                     ; $75c0: $01 $84 $01
	pop de                                           ; $75c3: $d1
	add hl, de                                       ; $75c4: $19
	ret nz                                           ; $75c5: $c0

	ld bc, $03a0                                     ; $75c6: $01 $a0 $03
	nop                                              ; $75c9: $00
	jr z, jr_087_758c                                ; $75ca: $28 $c0

	ld bc, $07a0                                     ; $75cc: $01 $a0 $07
	nop                                              ; $75cf: $00
	add hl, hl                                       ; $75d0: $29
	ret nz                                           ; $75d1: $c0

	ld bc, $03a0                                     ; $75d2: $01 $a0 $03
	nop                                              ; $75d5: $00
	dec [hl]                                         ; $75d6: $35
	ret nz                                           ; $75d7: $c0

	sbc h                                            ; $75d8: $9c
	pop de                                           ; $75d9: $d1
	nop                                              ; $75da: $00
	add b                                            ; $75db: $80
	ld bc, $01af                                     ; $75dc: $01 $af $01
	jp nc, $c019                                     ; $75df: $d2 $19 $c0

	ld bc, $04a0                                     ; $75e2: $01 $a0 $04
	nop                                              ; $75e5: $00
	add hl, sp                                       ; $75e6: $39
	ret nz                                           ; $75e7: $c0

	ld bc, $07a0                                     ; $75e8: $01 $a0 $07
	nop                                              ; $75eb: $00
	inc a                                            ; $75ec: $3c
	ret nz                                           ; $75ed: $c0

	ld bc, $04a0                                     ; $75ee: $01 $a0 $04
	nop                                              ; $75f1: $00
	ld b, a                                          ; $75f2: $47
	ret nz                                           ; $75f3: $c0

	sbc h                                            ; $75f4: $9c
	jp nc, $8000                                     ; $75f5: $d2 $00 $80

	ld bc, $01b0                                     ; $75f8: $01 $b0 $01
	db $d3                                           ; $75fb: $d3

jr_087_75fc:
	add hl, de                                       ; $75fc: $19
	ret nz                                           ; $75fd: $c0

	ld bc, $05a0                                     ; $75fe: $01 $a0 $05
	nop                                              ; $7601: $00
	ld c, h                                          ; $7602: $4c
	ret nz                                           ; $7603: $c0

	ld bc, $07a0                                     ; $7604: $01 $a0 $07
	nop                                              ; $7607: $00
	ld c, a                                          ; $7608: $4f
	ret nz                                           ; $7609: $c0

	ld bc, $05a0                                     ; $760a: $01 $a0 $05
	nop                                              ; $760d: $00
	dec [hl]                                         ; $760e: $35
	ret nz                                           ; $760f: $c0

	sbc h                                            ; $7610: $9c
	db $d3                                           ; $7611: $d3
	nop                                              ; $7612: $00
	add b                                            ; $7613: $80
	ld bc, $01b1                                     ; $7614: $01 $b1 $01
	rst SubAFromHL                                          ; $7617: $d7

jr_087_7618:
	add hl, de                                       ; $7618: $19
	ret nz                                           ; $7619: $c0

	ld bc, $08a0                                     ; $761a: $01 $a0 $08
	nop                                              ; $761d: $00
	ld e, e                                          ; $761e: $5b
	ret nz                                           ; $761f: $c0

	ld bc, $07a0                                     ; $7620: $01 $a0 $07
	nop                                              ; $7623: $00
	ld e, [hl]                                       ; $7624: $5e
	ret nz                                           ; $7625: $c0

	ld bc, $08a0                                     ; $7626: $01 $a0 $08
	nop                                              ; $7629: $00
	ld b, a                                          ; $762a: $47
	ret nz                                           ; $762b: $c0

	sbc h                                            ; $762c: $9c
	rst SubAFromHL                                          ; $762d: $d7
	nop                                              ; $762e: $00
	add b                                            ; $762f: $80
	ld bc, $01b4                                     ; $7630: $01 $b4 $01
	ret c                                            ; $7633: $d8

	add hl, de                                       ; $7634: $19
	ret nz                                           ; $7635: $c0

	ld bc, $09a0                                     ; $7636: $01 $a0 $09
	nop                                              ; $7639: $00
	jr z, jr_087_75fc                                ; $763a: $28 $c0

	ld bc, $07a0                                     ; $763c: $01 $a0 $07
	nop                                              ; $763f: $00
	ld l, d                                          ; $7640: $6a
	ret nz                                           ; $7641: $c0

	ld bc, $09a0                                     ; $7642: $01 $a0 $09
	nop                                              ; $7645: $00
	ld [hl], l                                       ; $7646: $75
	ret nz                                           ; $7647: $c0

	sbc h                                            ; $7648: $9c
	ret c                                            ; $7649: $d8

	nop                                              ; $764a: $00
	add b                                            ; $764b: $80
	ld bc, $01b3                                     ; $764c: $01 $b3 $01
	db $dd                                           ; $764f: $dd
	add hl, de                                       ; $7650: $19
	ret nz                                           ; $7651: $c0

	ld bc, $0aa0                                     ; $7652: $01 $a0 $0a
	nop                                              ; $7655: $00
	jr z, jr_087_7618                                ; $7656: $28 $c0

	ld bc, $07a0                                     ; $7658: $01 $a0 $07
	nop                                              ; $765b: $00
	ld a, d                                          ; $765c: $7a
	ret nz                                           ; $765d: $c0

	ld bc, $0aa0                                     ; $765e: $01 $a0 $0a
	nop                                              ; $7661: $00
	dec [hl]                                         ; $7662: $35
	ret nz                                           ; $7663: $c0

	sbc h                                            ; $7664: $9c
	db $dd                                           ; $7665: $dd
	nop                                              ; $7666: $00
	add b                                            ; $7667: $80
	ld bc, $c0b2                                     ; $7668: $01 $b2 $c0
	ld bc, $07a0                                     ; $766b: $01 $a0 $07
	nop                                              ; $766e: $00
	add [hl]                                         ; $766f: $86
	ret nz                                           ; $7670: $c0

	set 0, c                                         ; $7671: $cb $c1
	ld e, e                                          ; $7673: $5b
	pop bc                                           ; $7674: $c1
	cp h                                             ; $7675: $bc
	ret nc                                           ; $7676: $d0

	ret nz                                           ; $7677: $c0

	ld bc, $01a0                                     ; $7678: $01 $a0 $01
	nop                                              ; $767b: $00
	adc a                                            ; $767c: $8f
	pop bc                                           ; $767d: $c1
	dec sp                                           ; $767e: $3b
	push hl                                          ; $767f: $e5
	ld bc, $b119                                     ; $7680: $01 $19 $b1
	ld c, [hl]                                       ; $7683: $4e
	ld [$3109], sp                                   ; $7684: $08 $09 $31
	nop                                              ; $7687: $00
	add b                                            ; $7688: $80
	ld bc, $c08c                                     ; $7689: $01 $8c $c0
	push af                                          ; $768c: $f5
	pop bc                                           ; $768d: $c1
	ld [$d0d2], sp                                   ; $768e: $08 $d2 $d0
	ret nz                                           ; $7691: $c0

	ld bc, $01a0                                     ; $7692: $01 $a0 $01
	nop                                              ; $7695: $00
	ld bc, $01c0                                     ; $7696: $01 $c0 $01
	and b                                            ; $7699: $a0
	ld [bc], a                                       ; $769a: $02
	nop                                              ; $769b: $00
	rlca                                             ; $769c: $07
	ret nz                                           ; $769d: $c0

	ld bc, $01a0                                     ; $769e: $01 $a0 $01
	nop                                              ; $76a1: $00
	ld c, $c0                                        ; $76a2: $0e $c0
	ld bc, $02a0                                     ; $76a4: $01 $a0 $02
	nop                                              ; $76a7: $00
	dec d                                            ; $76a8: $15
	ret nz                                           ; $76a9: $c0

	ld bc, $01a0                                     ; $76aa: $01 $a0 $01
	nop                                              ; $76ad: $00
	rra                                              ; $76ae: $1f
	ret nz                                           ; $76af: $c0

	ld bc, $02a0                                     ; $76b0: $01 $a0 $02
	nop                                              ; $76b3: $00
	ld h, $e4                                        ; $76b4: $26 $e4
	nop                                              ; $76b6: $00
	ld [bc], a                                       ; $76b7: $02
	ld [$0056], sp                                   ; $76b8: $08 $56 $00
	dec l                                            ; $76bb: $2d
	add hl, bc                                       ; $76bc: $09
	inc h                                            ; $76bd: $24
	ret nz                                           ; $76be: $c0

	ld bc, $01a0                                     ; $76bf: $01 $a0 $01
	nop                                              ; $76c2: $00
	ld sp, $01c0                                     ; $76c3: $31 $c0 $01
	and b                                            ; $76c6: $a0
	ld [bc], a                                       ; $76c7: $02
	nop                                              ; $76c8: $00
	scf                                              ; $76c9: $37
	ret nz                                           ; $76ca: $c0

	ld bc, $01a0                                     ; $76cb: $01 $a0 $01
	nop                                              ; $76ce: $00
	ccf                                              ; $76cf: $3f
	ret nz                                           ; $76d0: $c0

	dec bc                                           ; $76d1: $0b
	db $e3                                           ; $76d2: $e3
	nop                                              ; $76d3: $00
	ld a, a                                          ; $76d4: $7f
	ret nz                                           ; $76d5: $c0

	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	ld b, l                                          ; $76d8: $45
	ret nz                                           ; $76d9: $c0

	ld bc, $01a0                                     ; $76da: $01 $a0 $01
	nop                                              ; $76dd: $00
	ld c, b                                          ; $76de: $48
	db $e4                                           ; $76df: $e4
	nop                                              ; $76e0: $00
	jr nc, jr_087_76e3                               ; $76e1: $30 $00

jr_087_76e3:
	ld d, l                                          ; $76e3: $55
	add hl, bc                                       ; $76e4: $09
	ld a, [hl+]                                      ; $76e5: $2a
	ret nz                                           ; $76e6: $c0

	ld bc, $02a0                                     ; $76e7: $01 $a0 $02
	nop                                              ; $76ea: $00
	ld e, d                                          ; $76eb: $5a
	ret nz                                           ; $76ec: $c0

	dec bc                                           ; $76ed: $0b
	db $e3                                           ; $76ee: $e3
	nop                                              ; $76ef: $00
	ld a, a                                          ; $76f0: $7f
	ret nz                                           ; $76f1: $c0

	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	ld b, l                                          ; $76f4: $45
	ret nz                                           ; $76f5: $c0

	ld bc, $01a0                                     ; $76f6: $01 $a0 $01
	nop                                              ; $76f9: $00
	ld h, d                                          ; $76fa: $62
	ret nz                                           ; $76fb: $c0

	inc hl                                           ; $76fc: $23
	push de                                          ; $76fd: $d5
	ret nc                                           ; $76fe: $d0

	ld h, b                                          ; $76ff: $60
	db $fc                                           ; $7700: $fc
	adc e                                            ; $7701: $8b
	ld bc, $b066                                     ; $7702: $01 $66 $b0
	inc bc                                           ; $7705: $03
	inc b                                            ; $7706: $04
	push hl                                          ; $7707: $e5
	ld bc, $6015                                     ; $7708: $01 $15 $60
	inc b                                            ; $770b: $04
	push hl                                          ; $770c: $e5
	ld bc, $cb19                                     ; $770d: $01 $19 $cb
	add hl, bc                                       ; $7710: $09
	pop bc                                           ; $7711: $c1
	ld l, $c0                                        ; $7712: $2e $c0
	set 0, b                                         ; $7714: $cb $c0
	ld de, $00e3                                     ; $7716: $11 $e3 $00
	ld h, c                                          ; $7719: $61
	pop hl                                           ; $771a: $e1
	ld [bc], a                                       ; $771b: $02
	nop                                              ; $771c: $00
	jp nc, $fbfb                                     ; $771d: $d2 $fb $fb

	ret nz                                           ; $7720: $c0

	dec de                                           ; $7721: $1b
	ret nc                                           ; $7722: $d0

	call nc, $e104                                   ; $7723: $d4 $04 $e1
	ld [bc], a                                       ; $7726: $02
	inc bc                                           ; $7727: $03
	rla                                              ; $7728: $17
	ret nz                                           ; $7729: $c0

	add hl, bc                                       ; $772a: $09
	db $e3                                           ; $772b: $e3
	nop                                              ; $772c: $00
	ld c, d                                          ; $772d: $4a
	pop bc                                           ; $772e: $c1
	ld e, h                                          ; $772f: $5c
	ret nz                                           ; $7730: $c0

	jp z, $01c0                                      ; $7731: $ca $c0 $01

	and b                                            ; $7734: $a0
	ld [bc], a                                       ; $7735: $02
	nop                                              ; $7736: $00
	ld h, [hl]                                       ; $7737: $66
	ret nz                                           ; $7738: $c0

	ld bc, $01a0                                     ; $7739: $01 $a0 $01
	nop                                              ; $773c: $00
	ld l, [hl]                                       ; $773d: $6e
	pop bc                                           ; $773e: $c1
	ld e, c                                          ; $773f: $59
	db $e3                                           ; $7740: $e3
	nop                                              ; $7741: $00
	ld a, a                                          ; $7742: $7f
	ret nz                                           ; $7743: $c0

	ld bc, $02a0                                     ; $7744: $01 $a0 $02
	nop                                              ; $7747: $00
	ld [hl], d                                       ; $7748: $72
	ret nz                                           ; $7749: $c0

	ld bc, $01a0                                     ; $774a: $01 $a0 $01
	nop                                              ; $774d: $00
	ld l, [hl]                                       ; $774e: $6e
	ret nz                                           ; $774f: $c0

	set 0, c                                         ; $7750: $cb $c1
	ld e, e                                          ; $7752: $5b
	ret nz                                           ; $7753: $c0

	rrca                                             ; $7754: $0f
	db $e3                                           ; $7755: $e3
	nop                                              ; $7756: $00
	call c, $0cc0                                    ; $7757: $dc $c0 $0c
	ldh [rAUD3HIGH], a                               ; $775a: $e0 $1e
	ret nz                                           ; $775c: $c0

	ld bc, $02a0                                     ; $775d: $01 $a0 $02
	nop                                              ; $7760: $00
	ld a, c                                          ; $7761: $79
	ret nz                                           ; $7762: $c0

	ld bc, $01a0                                     ; $7763: $01 $a0 $01
	nop                                              ; $7766: $00
	ld a, e                                          ; $7767: $7b
	ret nz                                           ; $7768: $c0

	ld bc, $02a0                                     ; $7769: $01 $a0 $02
	nop                                              ; $776c: $00
	ld a, l                                          ; $776d: $7d
	ret nz                                           ; $776e: $c0

	ld bc, $01a0                                     ; $776f: $01 $a0 $01
	nop                                              ; $7772: $00
	add l                                            ; $7773: $85
	ret nz                                           ; $7774: $c0

	ld bc, $02a0                                     ; $7775: $01 $a0 $02
	nop                                              ; $7778: $00
	adc b                                            ; $7779: $88
	pop bc                                           ; $777a: $c1
	ld e, c                                          ; $777b: $59
	db $e3                                           ; $777c: $e3
	nop                                              ; $777d: $00
	db $dd                                           ; $777e: $dd
	ret nz                                           ; $777f: $c0

	ld bc, $02a0                                     ; $7780: $01 $a0 $02
	nop                                              ; $7783: $00
	adc e                                            ; $7784: $8b
	ret nz                                           ; $7785: $c0

	ld bc, $01a0                                     ; $7786: $01 $a0 $01
	nop                                              ; $7789: $00
	sbc b                                            ; $778a: $98
	ret nz                                           ; $778b: $c0

	ld bc, $02a0                                     ; $778c: $01 $a0 $02
	nop                                              ; $778f: $00
	sbc h                                            ; $7790: $9c
	ret nz                                           ; $7791: $c0

	ld bc, $01a0                                     ; $7792: $01 $a0 $01
	nop                                              ; $7795: $00
	xor e                                            ; $7796: $ab
	ret nz                                           ; $7797: $c0

	set 0, b                                         ; $7798: $cb $c0
	ld bc, $02a0                                     ; $779a: $01 $a0 $02
	nop                                              ; $779d: $00
	or b                                             ; $779e: $b0
	ret nz                                           ; $779f: $c0

	rrca                                             ; $77a0: $0f
	db $e3                                           ; $77a1: $e3
	nop                                              ; $77a2: $00
	sbc $c0                                          ; $77a3: $de $c0
	ld bc, $01a0                                     ; $77a5: $01 $a0 $01
	nop                                              ; $77a8: $00
	ret nz                                           ; $77a9: $c0

	ret nz                                           ; $77aa: $c0

	ld bc, $02a0                                     ; $77ab: $01 $a0 $02
	nop                                              ; $77ae: $00
	push de                                          ; $77af: $d5
	ret nz                                           ; $77b0: $c0

	ld bc, $01a0                                     ; $77b1: $01 $a0 $01
	nop                                              ; $77b4: $00
	reti                                             ; $77b5: $d9


	ret nz                                           ; $77b6: $c0

	ld bc, $02a0                                     ; $77b7: $01 $a0 $02
	nop                                              ; $77ba: $00
	push hl                                          ; $77bb: $e5
	ret nz                                           ; $77bc: $c0

	ld bc, $01a0                                     ; $77bd: $01 $a0 $01
	nop                                              ; $77c0: $00
	rst AddAOntoHL                                          ; $77c1: $ef
	ret nz                                           ; $77c2: $c0

	ld bc, $02a0                                     ; $77c3: $01 $a0 $02
	nop                                              ; $77c6: $00
	or $c0                                           ; $77c7: $f6 $c0
	ld bc, $01a0                                     ; $77c9: $01 $a0 $01
	ld bc, $c002                                     ; $77cc: $01 $02 $c0
	ld bc, $02a0                                     ; $77cf: $01 $a0 $02
	ld bc, $c10c                                     ; $77d2: $01 $0c $c1
	ld e, c                                          ; $77d5: $59
	db $e3                                           ; $77d6: $e3
	nop                                              ; $77d7: $00
	call c, $01c0                                    ; $77d8: $dc $c0 $01
	and b                                            ; $77db: $a0
	ld [bc], a                                       ; $77dc: $02
	ld bc, $c019                                     ; $77dd: $01 $19 $c0
	ld bc, $01a0                                     ; $77e0: $01 $a0 $01
	ld bc, $c01e                                     ; $77e3: $01 $1e $c0
	ld bc, $02a0                                     ; $77e6: $01 $a0 $02
	ld bc, $c022                                     ; $77e9: $01 $22 $c0
	ld bc, $01a0                                     ; $77ec: $01 $a0 $01
	ld bc, $e125                                     ; $77ef: $01 $25 $e1
	ld [bc], a                                       ; $77f2: $02
	inc bc                                           ; $77f3: $03
	inc de                                           ; $77f4: $13
	ret nz                                           ; $77f5: $c0

	ld bc, $02a0                                     ; $77f6: $01 $a0 $02
	ld bc, $c028                                     ; $77f9: $01 $28 $c0
	set 0, b                                         ; $77fc: $cb $c0
	ld de, $00e3                                     ; $77fe: $11 $e3 $00
	ld h, c                                          ; $7801: $61
	pop hl                                           ; $7802: $e1
	ld [bc], a                                       ; $7803: $02
	nop                                              ; $7804: $00
	ldh [$c0], a                                     ; $7805: $e0 $c0
	ld bc, $02a0                                     ; $7807: $01 $a0 $02
	ld bc, $c02b                                     ; $780a: $01 $2b $c0
	ld bc, $01a0                                     ; $780d: $01 $a0 $01
	nop                                              ; $7810: $00
	ld l, [hl]                                       ; $7811: $6e
	ret nz                                           ; $7812: $c0

	ld bc, $02a0                                     ; $7813: $01 $a0 $02
	ld bc, $c032                                     ; $7816: $01 $32 $c0
	ld bc, $01a0                                     ; $7819: $01 $a0 $01
	ld bc, $c039                                     ; $781c: $01 $39 $c0
	ld hl, $d0d2                                     ; $781f: $21 $d2 $d0
	ret nz                                           ; $7822: $c0

	set 0, c                                         ; $7823: $cb $c1
	ld e, e                                          ; $7825: $5b
	pop bc                                           ; $7826: $c1
	dec b                                            ; $7827: $05
	nop                                              ; $7828: $00
	add b                                            ; $7829: $80
	ld [bc], a                                       ; $782a: $02
	ld [$6bc1], a                                    ; $782b: $ea $c1 $6b
	jp c, Jump_087_60d0                              ; $782e: $da $d0 $60

	db $fc                                           ; $7831: $fc
	adc e                                            ; $7832: $8b
	ld bc, $b066                                     ; $7833: $01 $66 $b0
	inc bc                                           ; $7836: $03
	inc b                                            ; $7837: $04
	push hl                                          ; $7838: $e5
	ld bc, $6015                                     ; $7839: $01 $15 $60
	inc b                                            ; $783c: $04
	push hl                                          ; $783d: $e5
	ld bc, $cb19                                     ; $783e: $01 $19 $cb
	add hl, bc                                       ; $7841: $09
	ld b, $e0                                        ; $7842: $06 $e0
	ld bc, $e4fd                                     ; $7844: $01 $fd $e4
	nop                                              ; $7847: $00
	ld [bc], a                                       ; $7848: $02
	ld [$0114], sp                                   ; $7849: $08 $14 $01
	dec a                                            ; $784c: $3d
	add hl, bc                                       ; $784d: $09
	add hl, bc                                       ; $784e: $09
	ret nz                                           ; $784f: $c0

	ld bc, $02a0                                     ; $7850: $01 $a0 $02
	ld bc, $e441                                     ; $7853: $01 $41 $e4
	nop                                              ; $7856: $00
	add hl, bc                                       ; $7857: $09
	ld bc, $0945                                     ; $7858: $01 $45 $09
	inc bc                                           ; $785b: $03
	db $e4                                           ; $785c: $e4
	ld [bc], a                                       ; $785d: $02
	add hl, de                                       ; $785e: $19
	add hl, bc                                       ; $785f: $09
	ret nz                                           ; $7860: $c0

	pop bc                                           ; $7861: $c1
	pop bc                                           ; $7862: $c1
	ld e, c                                          ; $7863: $59
	db $e3                                           ; $7864: $e3
	nop                                              ; $7865: $00
	ld a, [hl]                                       ; $7866: $7e
	ret nz                                           ; $7867: $c0

	ld bc, $02a0                                     ; $7868: $01 $a0 $02
	ld bc, $c04a                                     ; $786b: $01 $4a $c0
	ld bc, $01a0                                     ; $786e: $01 $a0 $01
	nop                                              ; $7871: $00
	ld l, [hl]                                       ; $7872: $6e
	pop hl                                           ; $7873: $e1
	ld [bc], a                                       ; $7874: $02
	inc bc                                           ; $7875: $03
	inc de                                           ; $7876: $13
	ret nz                                           ; $7877: $c0

	ld bc, $02a0                                     ; $7878: $01 $a0 $02
	ld bc, $c04f                                     ; $787b: $01 $4f $c0
	ld bc, $01a0                                     ; $787e: $01 $a0 $01
	ld bc, $c052                                     ; $7881: $01 $52 $c0
	ld bc, $02a0                                     ; $7884: $01 $a0 $02
	ld bc, $c05b                                     ; $7887: $01 $5b $c0
	ld bc, $01a0                                     ; $788a: $01 $a0 $01
	nop                                              ; $788d: $00
	add l                                            ; $788e: $85
	ret nz                                           ; $788f: $c0

	ld bc, $02a0                                     ; $7890: $01 $a0 $02
	ld bc, $c061                                     ; $7893: $01 $61 $c0
	set 0, c                                         ; $7896: $cb $c1
	ld e, e                                          ; $7898: $5b
	ret nz                                           ; $7899: $c0

	inc c                                            ; $789a: $0c
	ldh [rAUD3HIGH], a                               ; $789b: $e0 $1e
	ret nz                                           ; $789d: $c0

	rrca                                             ; $789e: $0f
	db $e3                                           ; $789f: $e3
	nop                                              ; $78a0: $00
	rst SubAFromDE                                          ; $78a1: $df
	ret nz                                           ; $78a2: $c0

	ld bc, $02a0                                     ; $78a3: $01 $a0 $02
	ld bc, $c06b                                     ; $78a6: $01 $6b $c0
	ld bc, $01a0                                     ; $78a9: $01 $a0 $01
	ld bc, $c081                                     ; $78ac: $01 $81 $c0
	ld bc, $02a0                                     ; $78af: $01 $a0 $02
	ld bc, $c085                                     ; $78b2: $01 $85 $c0
	ld bc, $01a0                                     ; $78b5: $01 $a0 $01
	ld bc, $c090                                     ; $78b8: $01 $90 $c0
	ld bc, $02a0                                     ; $78bb: $01 $a0 $02
	ld bc, $c099                                     ; $78be: $01 $99 $c0
	ld bc, $01a0                                     ; $78c1: $01 $a0 $01
	ld bc, $c19c                                     ; $78c4: $01 $9c $c1
	ld e, c                                          ; $78c7: $59
	db $e3                                           ; $78c8: $e3
	nop                                              ; $78c9: $00
	ldh [$c0], a                                     ; $78ca: $e0 $c0
	ld bc, $01a0                                     ; $78cc: $01 $a0 $01
	ld bc, $c0a2                                     ; $78cf: $01 $a2 $c0
	ld bc, $02a0                                     ; $78d2: $01 $a0 $02
	ld bc, $c0ac                                     ; $78d5: $01 $ac $c0
	ld bc, $01a0                                     ; $78d8: $01 $a0 $01
	ld bc, $c0bd                                     ; $78db: $01 $bd $c0
	set 0, b                                         ; $78de: $cb $c0
	inc c                                            ; $78e0: $0c
	ldh [rAUD3HIGH], a                               ; $78e1: $e0 $1e
	ret nz                                           ; $78e3: $c0

	ld de, $00e3                                     ; $78e4: $11 $e3 $00
	ld a, [hl]                                       ; $78e7: $7e
	pop hl                                           ; $78e8: $e1
	ld [bc], a                                       ; $78e9: $02
	nop                                              ; $78ea: $00
	ret z                                            ; $78eb: $c8

	ret nz                                           ; $78ec: $c0

	ld bc, $02a0                                     ; $78ed: $01 $a0 $02
	ld bc, $c0cc                                     ; $78f0: $01 $cc $c0
	ld bc, $01a0                                     ; $78f3: $01 $a0 $01
	ld bc, $e1da                                     ; $78f6: $01 $da $e1
	ld [bc], a                                       ; $78f9: $02
	inc bc                                           ; $78fa: $03
	rrca                                             ; $78fb: $0f
	ret nz                                           ; $78fc: $c0

	ld bc, $02a0                                     ; $78fd: $01 $a0 $02
	ld bc, wGenericTileDataDest                                     ; $7900: $01 $e2 $c0
	ld hl, $d0d2                                     ; $7903: $21 $d2 $d0
	ret nz                                           ; $7906: $c0

	set 0, c                                         ; $7907: $cb $c1
	ld e, e                                          ; $7909: $5b
	nop                                              ; $790a: $00
	add b                                            ; $790b: $80
	ld bc, $c18d                                     ; $790c: $01 $8d $c1
	ld l, e                                          ; $790f: $6b
	db $db                                           ; $7910: $db
	ret nc                                           ; $7911: $d0

	ld h, b                                          ; $7912: $60
	db $fc                                           ; $7913: $fc
	adc e                                            ; $7914: $8b
	ld bc, $b066                                     ; $7915: $01 $66 $b0
	inc bc                                           ; $7918: $03
	inc b                                            ; $7919: $04
	push hl                                          ; $791a: $e5
	ld bc, $6015                                     ; $791b: $01 $15 $60
	inc b                                            ; $791e: $04
	push hl                                          ; $791f: $e5
	ld bc, $cb19                                     ; $7920: $01 $19 $cb
	add hl, bc                                       ; $7923: $09
	ld b, $e0                                        ; $7924: $06 $e0
	ld bc, $e41b                                     ; $7926: $01 $1b $e4
	nop                                              ; $7929: $00
	ld [bc], a                                       ; $792a: $02
	ld [$0114], sp                                   ; $792b: $08 $14 $01
	dec a                                            ; $792e: $3d
	add hl, bc                                       ; $792f: $09
	add hl, bc                                       ; $7930: $09
	ret nz                                           ; $7931: $c0

	ld bc, $02a0                                     ; $7932: $01 $a0 $02
	ld bc, $e441                                     ; $7935: $01 $41 $e4
	nop                                              ; $7938: $00
	add hl, bc                                       ; $7939: $09
	ld bc, $0945                                     ; $793a: $01 $45 $09
	inc bc                                           ; $793d: $03
	db $e4                                           ; $793e: $e4
	ld bc, $0937                                     ; $793f: $01 $37 $09
	ret nz                                           ; $7942: $c0

	db $fd                                           ; $7943: $fd
	pop bc                                           ; $7944: $c1
	ld e, c                                          ; $7945: $59
	db $e3                                           ; $7946: $e3
	nop                                              ; $7947: $00
	ld a, [hl]                                       ; $7948: $7e
	ret nz                                           ; $7949: $c0

	ld bc, $02a0                                     ; $794a: $01 $a0 $02
	ld bc, $c0ea                                     ; $794d: $01 $ea $c0
	ld bc, $01a0                                     ; $7950: $01 $a0 $01
	nop                                              ; $7953: $00
	ld l, [hl]                                       ; $7954: $6e
	ret nz                                           ; $7955: $c0

	ld bc, $02a0                                     ; $7956: $01 $a0 $02
	ld bc, $c0f1                                     ; $7959: $01 $f1 $c0
	ld bc, $01a0                                     ; $795c: $01 $a0 $01
	ld [bc], a                                       ; $795f: $02
	inc b                                            ; $7960: $04
	pop hl                                           ; $7961: $e1
	ld [bc], a                                       ; $7962: $02
	inc bc                                           ; $7963: $03
	inc de                                           ; $7964: $13
	ret nz                                           ; $7965: $c0

	ld bc, $02a0                                     ; $7966: $01 $a0 $02
	ld [bc], a                                       ; $7969: $02
	ld [$01c0], sp                                   ; $796a: $08 $c0 $01
	and b                                            ; $796d: $a0
	ld bc, $1202                                     ; $796e: $01 $02 $12
	ret nz                                           ; $7971: $c0

	ld bc, $02a0                                     ; $7972: $01 $a0 $02
	ld [bc], a                                       ; $7975: $02
	ld a, [de]                                       ; $7976: $1a
	ret nz                                           ; $7977: $c0

	set 0, c                                         ; $7978: $cb $c1
	ld e, e                                          ; $797a: $5b
	ret nz                                           ; $797b: $c0

	inc c                                            ; $797c: $0c
	ldh [rAUD3HIGH], a                               ; $797d: $e0 $1e
	ret nz                                           ; $797f: $c0

	rrca                                             ; $7980: $0f
	db $e3                                           ; $7981: $e3
	nop                                              ; $7982: $00
	pop hl                                           ; $7983: $e1
	ret nz                                           ; $7984: $c0

	ld bc, $02a0                                     ; $7985: $01 $a0 $02
	ld [bc], a                                       ; $7988: $02
	daa                                              ; $7989: $27
	ret nz                                           ; $798a: $c0

	ld bc, $01a0                                     ; $798b: $01 $a0 $01
	ld [bc], a                                       ; $798e: $02
	dec [hl]                                         ; $798f: $35
	ret nz                                           ; $7990: $c0

	ld bc, $02a0                                     ; $7991: $01 $a0 $02
	ld [bc], a                                       ; $7994: $02
	inc a                                            ; $7995: $3c
	ret nz                                           ; $7996: $c0

	ld bc, $01a0                                     ; $7997: $01 $a0 $01
	ld [bc], a                                       ; $799a: $02
	ld b, b                                          ; $799b: $40
	ret nz                                           ; $799c: $c0

	ld bc, $02a0                                     ; $799d: $01 $a0 $02
	ld [bc], a                                       ; $79a0: $02
	ld b, h                                          ; $79a1: $44
	pop bc                                           ; $79a2: $c1
	ld e, c                                          ; $79a3: $59
	db $e3                                           ; $79a4: $e3
	nop                                              ; $79a5: $00
	ldh [c], a                                       ; $79a6: $e2
	ret nz                                           ; $79a7: $c0

	ld bc, $02a0                                     ; $79a8: $01 $a0 $02
	ld [bc], a                                       ; $79ab: $02
	ld d, b                                          ; $79ac: $50
	ret nz                                           ; $79ad: $c0

	ld bc, $01a0                                     ; $79ae: $01 $a0 $01
	ld [bc], a                                       ; $79b1: $02
	ld e, c                                          ; $79b2: $59
	ret nz                                           ; $79b3: $c0

	ld bc, $02a0                                     ; $79b4: $01 $a0 $02
	ld [bc], a                                       ; $79b7: $02
	ld l, c                                          ; $79b8: $69
	ret nz                                           ; $79b9: $c0

	ld bc, $01a0                                     ; $79ba: $01 $a0 $01
	ld [bc], a                                       ; $79bd: $02
	ld l, a                                          ; $79be: $6f
	ret nz                                           ; $79bf: $c0

	ld bc, $02a0                                     ; $79c0: $01 $a0 $02
	ld [bc], a                                       ; $79c3: $02
	ld [hl], e                                       ; $79c4: $73
	ret nz                                           ; $79c5: $c0

	set 0, b                                         ; $79c6: $cb $c0
	inc c                                            ; $79c8: $0c
	ldh [rAUD3HIGH], a                               ; $79c9: $e0 $1e
	ret nz                                           ; $79cb: $c0

	ld de, $00e3                                     ; $79cc: $11 $e3 $00
	ld a, [hl]                                       ; $79cf: $7e
	pop hl                                           ; $79d0: $e1
	ld [bc], a                                       ; $79d1: $02
	nop                                              ; $79d2: $00
	ret z                                            ; $79d3: $c8

	ret nz                                           ; $79d4: $c0

	ld bc, $01a0                                     ; $79d5: $01 $a0 $01
	ld [bc], a                                       ; $79d8: $02
	add b                                            ; $79d9: $80
	pop hl                                           ; $79da: $e1
	ld [bc], a                                       ; $79db: $02
	inc bc                                           ; $79dc: $03
	dec de                                           ; $79dd: $1b
	ret nz                                           ; $79de: $c0

	ld bc, $02a0                                     ; $79df: $01 $a0 $02
	ld [bc], a                                       ; $79e2: $02
	adc c                                            ; $79e3: $89
	ret nz                                           ; $79e4: $c0

	ld bc, $01a0                                     ; $79e5: $01 $a0 $01
	ld [bc], a                                       ; $79e8: $02
	adc e                                            ; $79e9: $8b
	ret nz                                           ; $79ea: $c0

	ld bc, $02a0                                     ; $79eb: $01 $a0 $02
	ld [bc], a                                       ; $79ee: $02
	sbc h                                            ; $79ef: $9c
	pop hl                                           ; $79f0: $e1
	ld [bc], a                                       ; $79f1: $02
	inc bc                                           ; $79f2: $03
	rrca                                             ; $79f3: $0f
	ret nz                                           ; $79f4: $c0

	ld bc, $01a0                                     ; $79f5: $01 $a0 $01
	ld [bc], a                                       ; $79f8: $02
	and e                                            ; $79f9: $a3
	ret nz                                           ; $79fa: $c0

	inc c                                            ; $79fb: $0c
	jp c, $01c0                                      ; $79fc: $da $c0 $01

	and b                                            ; $79ff: $a0
	ld [bc], a                                       ; $7a00: $02
	ld [bc], a                                       ; $7a01: $02
	and a                                            ; $7a02: $a7
	ret nz                                           ; $7a03: $c0

	ld bc, $01a0                                     ; $7a04: $01 $a0 $01
	ld bc, $e125                                     ; $7a07: $01 $25 $e1
	ld [bc], a                                       ; $7a0a: $02
	inc bc                                           ; $7a0b: $03
	inc de                                           ; $7a0c: $13
	ret nz                                           ; $7a0d: $c0

	ld bc, $02a0                                     ; $7a0e: $01 $a0 $02
	ld [bc], a                                       ; $7a11: $02
	xor l                                            ; $7a12: $ad
	ret nz                                           ; $7a13: $c0

	ld bc, $01a0                                     ; $7a14: $01 $a0 $01
	ld [bc], a                                       ; $7a17: $02
	or c                                             ; $7a18: $b1
	ret nz                                           ; $7a19: $c0

	ld bc, $02a0                                     ; $7a1a: $01 $a0 $02
	ld [bc], a                                       ; $7a1d: $02
	cp b                                             ; $7a1e: $b8
	ret nz                                           ; $7a1f: $c0

	ld hl, $d0d2                                     ; $7a20: $21 $d2 $d0
	ret nz                                           ; $7a23: $c0

	set 0, c                                         ; $7a24: $cb $c1
	ld e, e                                          ; $7a26: $5b
	nop                                              ; $7a27: $00
	add b                                            ; $7a28: $80
	ld bc, $c18e                                     ; $7a29: $01 $8e $c1
	ld l, e                                          ; $7a2c: $6b
	call c, $fbd0                                    ; $7a2d: $dc $d0 $fb
	cp $06                                           ; $7a30: $fe $06
	add b                                            ; $7a32: $80
	ld [bc], a                                       ; $7a33: $02
	ld [$0180], a                                    ; $7a34: $ea $80 $01
	adc l                                            ; $7a37: $8d
	inc b                                            ; $7a38: $04
	ret nz                                           ; $7a39: $c0

	ld [hl+], a                                      ; $7a3a: $22
	jp nc, $e5d0                                     ; $7a3b: $d2 $d0 $e5

	ld bc, $b119                                     ; $7a3e: $01 $19 $b1
	inc [hl]                                         ; $7a41: $34
	ret nc                                           ; $7a42: $d0

	add e                                            ; $7a43: $83
	and b                                            ; $7a44: $a0
	nop                                              ; $7a45: $00
	ret nz                                           ; $7a46: $c0

	sbc [hl]                                         ; $7a47: $9e
	ret nc                                           ; $7a48: $d0

	pop hl                                           ; $7a49: $e1
	ld c, b                                          ; $7a4a: $48
	dec e                                            ; $7a4b: $1d
	ld d, d                                          ; $7a4c: $52
	ret nz                                           ; $7a4d: $c0

	add hl, bc                                       ; $7a4e: $09
	db $e3                                           ; $7a4f: $e3
	nop                                              ; $7a50: $00
	ld c, d                                          ; $7a51: $4a
	ret nz                                           ; $7a52: $c0

	ld hl, $d0d2                                     ; $7a53: $21 $d2 $d0

jr_087_7a56:
	pop hl                                           ; $7a56: $e1
	ld [bc], a                                       ; $7a57: $02
	nop                                              ; $7a58: $00
	ret nz                                           ; $7a59: $c0

	pop bc                                           ; $7a5a: $c1
	or d                                             ; $7a5b: $b2
	db $e3                                           ; $7a5c: $e3
	nop                                              ; $7a5d: $00

jr_087_7a5e:
	dec bc                                           ; $7a5e: $0b
	ret nz                                           ; $7a5f: $c0

	ld bc, $02a0                                     ; $7a60: $01 $a0 $02
	ld [bc], a                                       ; $7a63: $02
	jp nz, $01c0                                     ; $7a64: $c2 $c0 $01

	and b                                            ; $7a67: $a0
	ld bc, $c502                                     ; $7a68: $01 $02 $c5
	pop bc                                           ; $7a6b: $c1
	or d                                             ; $7a6c: $b2
	db $e3                                           ; $7a6d: $e3
	nop                                              ; $7a6e: $00
	inc c                                            ; $7a6f: $0c
	ret nz                                           ; $7a70: $c0

	ld bc, $02a0                                     ; $7a71: $01 $a0 $02
	ld [bc], a                                       ; $7a74: $02
	ret                                              ; $7a75: $c9


	add hl, bc                                       ; $7a76: $09
	add hl, hl                                       ; $7a77: $29
	pop hl                                           ; $7a78: $e1
	ld [bc], a                                       ; $7a79: $02
	inc bc                                           ; $7a7a: $03
	dec de                                           ; $7a7b: $1b
	ret nz                                           ; $7a7c: $c0

	ld bc, $02a0                                     ; $7a7d: $01 $a0 $02
	ld [bc], a                                       ; $7a80: $02
	ret c                                            ; $7a81: $d8

	pop bc                                           ; $7a82: $c1
	ld e, e                                          ; $7a83: $5b
	ret nz                                           ; $7a84: $c0

	inc hl                                           ; $7a85: $23
	push af                                          ; $7a86: $f5
	jp c, $a083                                      ; $7a87: $da $83 $a0

	nop                                              ; $7a8a: $00
	ret nc                                           ; $7a8b: $d0

	pop hl                                           ; $7a8c: $e1
	ld c, b                                          ; $7a8d: $48
	dec e                                            ; $7a8e: $1d
	adc c                                            ; $7a8f: $89
	ld h, b                                          ; $7a90: $60
	db $fc                                           ; $7a91: $fc
	adc e                                            ; $7a92: $8b
	ld bc, $b066                                     ; $7a93: $01 $66 $b0
	inc bc                                           ; $7a96: $03
	inc b                                            ; $7a97: $04
	push hl                                          ; $7a98: $e5
	ld bc, $6015                                     ; $7a99: $01 $15 $60
	inc b                                            ; $7a9c: $04
	push hl                                          ; $7a9d: $e5
	ld bc, $cb19                                     ; $7a9e: $01 $19 $cb
	ld c, [hl]                                       ; $7aa1: $4e
	ld [$5209], sp                                   ; $7aa2: $08 $09 $52
	ret nz                                           ; $7aa5: $c0

	sub a                                            ; $7aa6: $97
	pop bc                                           ; $7aa7: $c1
	ld d, e                                          ; $7aa8: $53
	ret nz                                           ; $7aa9: $c0

	inc d                                            ; $7aaa: $14
	db $e3                                           ; $7aab: $e3
	nop                                              ; $7aac: $00
	halt                                             ; $7aad: $76
	ld b, c                                          ; $7aae: $41
	add b                                            ; $7aaf: $80
	and b                                            ; $7ab0: $a0
	nop                                              ; $7ab1: $00
	add b                                            ; $7ab2: $80
	ld [bc], a                                       ; $7ab3: $02
	sbc d                                            ; $7ab4: $9a
	ret nz                                           ; $7ab5: $c0

	ld bc, $01a0                                     ; $7ab6: $01 $a0 $01
	nop                                              ; $7ab9: $00
	ld bc, $80fb                                     ; $7aba: $01 $fb $80
	nop                                              ; $7abd: $00
	ld b, a                                          ; $7abe: $47
	ld b, $c0                                        ; $7abf: $06 $c0
	ld bc, $01a0                                     ; $7ac1: $01 $a0 $01
	nop                                              ; $7ac4: $00
	ld b, $40                                        ; $7ac5: $06 $40
	add b                                            ; $7ac7: $80
	and b                                            ; $7ac8: $a0
	ld bc, $8b83                                     ; $7ac9: $01 $83 $8b
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	ld [bc], a                                       ; $7ace: $02
	or b                                             ; $7acf: $b0
	rrca                                             ; $7ad0: $0f
	inc b                                            ; $7ad1: $04
	jr nz, jr_087_7a56                               ; $7ad2: $20 $82

	and b                                            ; $7ad4: $a0
	ld [bc], a                                       ; $7ad5: $02
	ld [bc], a                                       ; $7ad6: $02
	or b                                             ; $7ad7: $b0
	ld c, $04                                        ; $7ad8: $0e $04
	jr nz, jr_087_7a5e                               ; $7ada: $20 $82

	and b                                            ; $7adc: $a0
	dec b                                            ; $7add: $05
	ld [bc], a                                       ; $7ade: $02
	or b                                             ; $7adf: $b0
	db $10                                           ; $7ae0: $10
	inc b                                            ; $7ae1: $04
	jr nz, @-$7c                                     ; $7ae2: $20 $82

	and b                                            ; $7ae4: $a0
	ld [$b002], sp                                   ; $7ae5: $08 $02 $b0
	ld de, $2004                                     ; $7ae8: $11 $04 $20
	add d                                            ; $7aeb: $82
	and b                                            ; $7aec: $a0
	dec bc                                           ; $7aed: $0b
	ret nz                                           ; $7aee: $c0

	db $f4                                           ; $7aef: $f4
	ret c                                            ; $7af0: $d8

	ldh [rP1], a                                     ; $7af1: $e0 $00
	and a                                            ; $7af3: $a7
	db $e4                                           ; $7af4: $e4
	nop                                              ; $7af5: $00
	ld [bc], a                                       ; $7af6: $02
	add hl, bc                                       ; $7af7: $09
	ld b, $e0                                        ; $7af8: $06 $e0
	nop                                              ; $7afa: $00
	ld [$00e4], a                                    ; $7afb: $ea $e4 $00
	ld [bc], a                                       ; $7afe: $02
	add hl, bc                                       ; $7aff: $09
	rrca                                             ; $7b00: $0f
	ret nz                                           ; $7b01: $c0

	inc b                                            ; $7b02: $04
	ld b, b                                          ; $7b03: $40
	add b                                            ; $7b04: $80
	ld [bc], a                                       ; $7b05: $02
	sbc d                                            ; $7b06: $9a
	ret nz                                           ; $7b07: $c0

	db $f4                                           ; $7b08: $f4
	ret c                                            ; $7b09: $d8

	ldh [rP1], a                                     ; $7b0a: $e0 $00
	ld a, [$00e4]                                    ; $7b0c: $fa $e4 $00
	ld [bc], a                                       ; $7b0f: $02
	add hl, bc                                       ; $7b10: $09
	ld b, $e0                                        ; $7b11: $06 $e0
	nop                                              ; $7b13: $00
	add [hl]                                         ; $7b14: $86
	db $e4                                           ; $7b15: $e4
	nop                                              ; $7b16: $00
	ld [bc], a                                       ; $7b17: $02
	add hl, bc                                       ; $7b18: $09
	ld b, $e0                                        ; $7b19: $06 $e0
	nop                                              ; $7b1b: $00
	ret                                              ; $7b1c: $c9


	db $e4                                           ; $7b1d: $e4
	nop                                              ; $7b1e: $00
	ld [bc], a                                       ; $7b1f: $02
	add hl, bc                                       ; $7b20: $09
	dec hl                                           ; $7b21: $2b
	ei                                               ; $7b22: $fb
	rst $38                                          ; $7b23: $ff
	ld [$c0fc], sp                                   ; $7b24: $08 $fc $c0
	ld h, a                                          ; $7b27: $67
	push de                                          ; $7b28: $d5
	db $fc                                           ; $7b29: $fc
	ret nz                                           ; $7b2a: $c0

	ld h, a                                          ; $7b2b: $67
	sub $03                                          ; $7b2c: $d6 $03
	db $e4                                           ; $7b2e: $e4
	nop                                              ; $7b2f: $00
	ld h, $60                                        ; $7b30: $26 $60
	add b                                            ; $7b32: $80
	ld [bc], a                                       ; $7b33: $02
	db $eb                                           ; $7b34: $eb
	inc b                                            ; $7b35: $04
	ld b, b                                          ; $7b36: $40
	add b                                            ; $7b37: $80
	ld [bc], a                                       ; $7b38: $02
	db $eb                                           ; $7b39: $eb
	ld b, $c0                                        ; $7b3a: $06 $c0
	inc b                                            ; $7b3c: $04
	ld b, b                                          ; $7b3d: $40
	add b                                            ; $7b3e: $80
	ld [bc], a                                       ; $7b3f: $02
	sbc d                                            ; $7b40: $9a
	ret nz                                           ; $7b41: $c0

	db $f4                                           ; $7b42: $f4
	ret c                                            ; $7b43: $d8

	ldh [rP1], a                                     ; $7b44: $e0 $00
	ld d, h                                          ; $7b46: $54
	ldh [rP1], a                                     ; $7b47: $e0 $00
	ei                                               ; $7b49: $fb
	db $e4                                           ; $7b4a: $e4
	nop                                              ; $7b4b: $00
	ld [bc], a                                       ; $7b4c: $02
	add hl, bc                                       ; $7b4d: $09
	ld b, $e0                                        ; $7b4e: $06 $e0
	nop                                              ; $7b50: $00
	sub h                                            ; $7b51: $94
	db $e4                                           ; $7b52: $e4
	rst $38                                          ; $7b53: $ff
	call $2409                                       ; $7b54: $cd $09 $24
	ld h, b                                          ; $7b57: $60
	add b                                            ; $7b58: $80
	ld [bc], a                                       ; $7b59: $02
	db $eb                                           ; $7b5a: $eb
	rrca                                             ; $7b5b: $0f
	ei                                               ; $7b5c: $fb
	db $fc                                           ; $7b5d: $fc
	ret nz                                           ; $7b5e: $c0

	ld h, a                                          ; $7b5f: $67
	push de                                          ; $7b60: $d5
	dec b                                            ; $7b61: $05
	ret nz                                           ; $7b62: $c0

	db $f4                                           ; $7b63: $f4
	ret c                                            ; $7b64: $d8

	ret nz                                           ; $7b65: $c0

	inc b                                            ; $7b66: $04
	ld b, b                                          ; $7b67: $40
	add b                                            ; $7b68: $80
	ld [bc], a                                       ; $7b69: $02
	db $eb                                           ; $7b6a: $eb
	ld b, $c0                                        ; $7b6b: $06 $c0
	inc b                                            ; $7b6d: $04
	ld b, b                                          ; $7b6e: $40
	add b                                            ; $7b6f: $80
	ld [bc], a                                       ; $7b70: $02
	sbc d                                            ; $7b71: $9a
	ret nz                                           ; $7b72: $c0

	db $f4                                           ; $7b73: $f4
	ret c                                            ; $7b74: $d8

	ldh [rSB], a                                     ; $7b75: $e0 $01
	sub b                                            ; $7b77: $90
	db $e4                                           ; $7b78: $e4
	ld bc, $09e1                                     ; $7b79: $01 $e1 $09
	inc e                                            ; $7b7c: $1c
	add e                                            ; $7b7d: $83
	ret nz                                           ; $7b7e: $c0

	ld h, a                                          ; $7b7f: $67
	ld bc, $03d1                                     ; $7b80: $01 $d1 $03
	db $e4                                           ; $7b83: $e4
	rst $38                                          ; $7b84: $ff
	ld [hl], e                                       ; $7b85: $73
	ld bc, $03d2                                     ; $7b86: $01 $d2 $03
	db $e4                                           ; $7b89: $e4
	rst $38                                          ; $7b8a: $ff
	adc [hl]                                         ; $7b8b: $8e
	inc bc                                           ; $7b8c: $03
	db $d3                                           ; $7b8d: $d3
	call nc, $03d5                                   ; $7b8e: $d4 $d5 $03
	db $e4                                           ; $7b91: $e4
	rst $38                                          ; $7b92: $ff
	cp e                                             ; $7b93: $bb
	nop                                              ; $7b94: $00
	inc bc                                           ; $7b95: $03
	db $e4                                           ; $7b96: $e4
	rst $38                                          ; $7b97: $ff
	cp [hl]                                          ; $7b98: $be
	ld de, $fefb                                     ; $7b99: $11 $fb $fe
	ld a, [bc]                                       ; $7b9c: $0a
	db $fc                                           ; $7b9d: $fc
	ret nz                                           ; $7b9e: $c0

	ld h, l                                          ; $7b9f: $65
	ret nz                                           ; $7ba0: $c0

	ld [hl], h                                       ; $7ba1: $74
	db $fc                                           ; $7ba2: $fc
	ret nz                                           ; $7ba3: $c0

	ld h, [hl]                                       ; $7ba4: $66
	ret nz                                           ; $7ba5: $c0

	ld [hl], l                                       ; $7ba6: $75
	inc bc                                           ; $7ba7: $03
	db $e4                                           ; $7ba8: $e4
	nop                                              ; $7ba9: $00
	ld [bc], a                                       ; $7baa: $02
	jr z, @+$15                                      ; $7bab: $28 $13

	pop bc                                           ; $7bad: $c1
	ld d, e                                          ; $7bae: $53
	ret nz                                           ; $7baf: $c0

	inc d                                            ; $7bb0: $14
	db $e3                                           ; $7bb1: $e3
	nop                                              ; $7bb2: $00
	ld a, b                                          ; $7bb3: $78
	ret nz                                           ; $7bb4: $c0

	ld bc, $01a0                                     ; $7bb5: $01 $a0 $01
	nop                                              ; $7bb8: $00
	inc d                                            ; $7bb9: $14
	ret nz                                           ; $7bba: $c0

	ld bc, $01a0                                     ; $7bbb: $01 $a0 $01
	nop                                              ; $7bbe: $00
	jr jr_087_7be4                                   ; $7bbf: $18 $23

	nop                                              ; $7bc1: $00
	dec de                                           ; $7bc2: $1b
	add hl, bc                                       ; $7bc3: $09
	ld a, [bc]                                       ; $7bc4: $0a
	ret nc                                           ; $7bc5: $d0

	adc e                                            ; $7bc6: $8b
	nop                                              ; $7bc7: $00
	sbc $b0                                          ; $7bc8: $de $b0
	adc d                                            ; $7bca: $8a
	push hl                                          ; $7bcb: $e5
	ld b, l                                          ; $7bcc: $45
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	dec e                                            ; $7bd0: $1d
	add hl, bc                                       ; $7bd1: $09
	ld de, $24c0                                     ; $7bd2: $11 $c0 $24
	pop de                                           ; $7bd5: $d1
	ret nc                                           ; $7bd6: $d0

	ret nz                                           ; $7bd7: $c0

	inc hl                                           ; $7bd8: $23
	push de                                          ; $7bd9: $d5
	ret nc                                           ; $7bda: $d0

	ret nz                                           ; $7bdb: $c0

	ld bc, $01a0                                     ; $7bdc: $01 $a0 $01
	nop                                              ; $7bdf: $00
	rra                                              ; $7be0: $1f

jr_087_7be1:
	db $e4                                           ; $7be1: $e4
	rst $38                                          ; $7be2: $ff
	sbc c                                            ; $7be3: $99

jr_087_7be4:
	jr nz, jr_087_7be1                               ; $7be4: $20 $fb

	cp $0a                                           ; $7be6: $fe $0a
	db $fc                                           ; $7be8: $fc
	ret nz                                           ; $7be9: $c0

	ld h, l                                          ; $7bea: $65
	ret nz                                           ; $7beb: $c0

	ld [hl], c                                       ; $7bec: $71
	db $fc                                           ; $7bed: $fc
	ret nz                                           ; $7bee: $c0

	ld h, [hl]                                       ; $7bef: $66
	ret nz                                           ; $7bf0: $c0

	ld [hl], d                                       ; $7bf1: $72
	ld [de], a                                       ; $7bf2: $12
	and b                                            ; $7bf3: $a0
	add b                                            ; $7bf4: $80
	and b                                            ; $7bf5: $a0
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	ld a, [bc]                                       ; $7bf8: $0a
	ret nc                                           ; $7bf9: $d0

	adc e                                            ; $7bfa: $8b
	nop                                              ; $7bfb: $00
	ld [$8ab0], a                                    ; $7bfc: $ea $b0 $8a
	pop hl                                           ; $7bff: $e1
	ld b, [hl]                                       ; $7c00: $46
	nop                                              ; $7c01: $00
	dec e                                            ; $7c02: $1d
	rst $38                                          ; $7c03: $ff
	nop                                              ; $7c04: $00
	dec a                                            ; $7c05: $3d
	ld b, b                                          ; $7c06: $40
	add b                                            ; $7c07: $80
	and b                                            ; $7c08: $a0
	ld c, $83                                        ; $7c09: $0e $83
	adc e                                            ; $7c0b: $8b
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	ld [bc], a                                       ; $7c0e: $02
	or b                                             ; $7c0f: $b0
	rrca                                             ; $7c10: $0f
	ld [$8000], sp                                   ; $7c11: $08 $00 $80
	and b                                            ; $7c14: $a0
	ld c, $e5                                        ; $7c15: $0e $e5
	ld e, c                                          ; $7c17: $59
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	ld [bc], a                                       ; $7c1a: $02
	or b                                             ; $7c1b: $b0
	ld c, $08                                        ; $7c1c: $0e $08
	nop                                              ; $7c1e: $00
	add b                                            ; $7c1f: $80
	and b                                            ; $7c20: $a0
	ld c, $e5                                        ; $7c21: $0e $e5
	ld e, d                                          ; $7c23: $5a
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	ld [bc], a                                       ; $7c26: $02
	or b                                             ; $7c27: $b0
	db $10                                           ; $7c28: $10
	ld [$8000], sp                                   ; $7c29: $08 $00 $80
	and b                                            ; $7c2c: $a0
	ld c, $e5                                        ; $7c2d: $0e $e5
	ld e, e                                          ; $7c2f: $5b
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	ld [bc], a                                       ; $7c32: $02
	or b                                             ; $7c33: $b0
	ld de, $fb0d                                     ; $7c34: $11 $0d $fb
	add b                                            ; $7c37: $80
	nop                                              ; $7c38: $00
	ld [hl], d                                       ; $7c39: $72
	ld [$8000], sp                                   ; $7c3a: $08 $00 $80
	and b                                            ; $7c3d: $a0
	ld c, $e5                                        ; $7c3e: $0e $e5
	ld e, b                                          ; $7c40: $58
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	rla                                              ; $7c43: $17
	ei                                               ; $7c44: $fb
	cp $07                                           ; $7c45: $fe $07
	pop af                                           ; $7c47: $f1
	add b                                            ; $7c48: $80
	and b                                            ; $7c49: $a0
	ld bc, $a080                                     ; $7c4a: $01 $80 $a0
	ld c, $0c                                        ; $7c4d: $0e $0c
	or b                                             ; $7c4f: $b0
	ld a, [$ff00]                                    ; $7c50: $fa $00 $ff
	rlca                                             ; $7c53: $07
	nop                                              ; $7c54: $00
	add b                                            ; $7c55: $80
	and b                                            ; $7c56: $a0
	ld bc, $00e4                                     ; $7c57: $01 $e4 $00
	ld [bc], a                                       ; $7c5a: $02
	add hl, bc                                       ; $7c5b: $09
	ld e, [hl]                                       ; $7c5c: $5e
	nop                                              ; $7c5d: $00
	add b                                            ; $7c5e: $80
	ld [bc], a                                       ; $7c5f: $02
	db $eb                                           ; $7c60: $eb
	ret nz                                           ; $7c61: $c0

	set 0, c                                         ; $7c62: $cb $c1
	dec sp                                           ; $7c64: $3b
	ret nz                                           ; $7c65: $c0

	ld bc, $01a0                                     ; $7c66: $01 $a0 $01
	nop                                              ; $7c69: $00
	inc hl                                           ; $7c6a: $23
	ret nz                                           ; $7c6b: $c0

	ld bc, $01a0                                     ; $7c6c: $01 $a0 $01
	nop                                              ; $7c6f: $00
	dec hl                                           ; $7c70: $2b
	ei                                               ; $7c71: $fb
	ei                                               ; $7c72: $fb
	ret nz                                           ; $7c73: $c0

	add e                                            ; $7c74: $83
	ret nc                                           ; $7c75: $d0

	jp nc, $d00f                                     ; $7c76: $d2 $0f $d0

	adc a                                            ; $7c79: $8f
	and b                                            ; $7c7a: $a0
	rrca                                             ; $7c7b: $0f
	di                                               ; $7c7c: $f3
	ret nz                                           ; $7c7d: $c0

	add e                                            ; $7c7e: $83
	ret nc                                           ; $7c7f: $d0

	jp nc, $dbc0                                     ; $7c80: $d2 $c0 $db

	adc a                                            ; $7c83: $8f
	and b                                            ; $7c84: $a0
	rrca                                             ; $7c85: $0f
	ret nc                                           ; $7c86: $d0

	ret nz                                           ; $7c87: $c0

	add hl, bc                                       ; $7c88: $09
	db $e3                                           ; $7c89: $e3
	nop                                              ; $7c8a: $00
	ld c, l                                          ; $7c8b: $4d
	ret nz                                           ; $7c8c: $c0

	ld de, $00e3                                     ; $7c8d: $11 $e3 $00
	ld a, b                                          ; $7c90: $78
	ret nz                                           ; $7c91: $c0

	jp z, $8b83                                      ; $7c92: $ca $83 $8b

	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	ld [bc], a                                       ; $7c97: $02
	or b                                             ; $7c98: $b0
	rrca                                             ; $7c99: $0f
	inc b                                            ; $7c9a: $04
	push hl                                          ; $7c9b: $e5
	ld e, c                                          ; $7c9c: $59
	inc b                                            ; $7c9d: $04
	ld [hl], $02                                     ; $7c9e: $36 $02
	or b                                             ; $7ca0: $b0
	db $10                                           ; $7ca1: $10
	inc b                                            ; $7ca2: $04
	push hl                                          ; $7ca3: $e5
	ld e, e                                          ; $7ca4: $5b
	inc b                                            ; $7ca5: $04
	inc [hl]                                         ; $7ca6: $34
	ld [bc], a                                       ; $7ca7: $02
	or b                                             ; $7ca8: $b0
	ld de, $fb08                                     ; $7ca9: $11 $08 $fb
	add b                                            ; $7cac: $80
	nop                                              ; $7cad: $00
	ld [hl], d                                       ; $7cae: $72
	inc bc                                           ; $7caf: $03
	db $e4                                           ; $7cb0: $e4
	nop                                              ; $7cb1: $00
	ld a, [bc]                                       ; $7cb2: $0a
	ld [bc], a                                       ; $7cb3: $02
	or b                                             ; $7cb4: $b0
	ld c, $04                                        ; $7cb5: $0e $04
	push hl                                          ; $7cb7: $e5
	ld e, d                                          ; $7cb8: $5a
	inc b                                            ; $7cb9: $04
	ld [de], a                                       ; $7cba: $12
	add hl, bc                                       ; $7cbb: $09
	ld c, c                                          ; $7cbc: $49
	ret nz                                           ; $7cbd: $c0

	and a                                            ; $7cbe: $a7
	ret nc                                           ; $7cbf: $d0

	db $d3                                           ; $7cc0: $d3
	db $d3                                           ; $7cc1: $d3
	ret nz                                           ; $7cc2: $c0

	and l                                            ; $7cc3: $a5
	ret nz                                           ; $7cc4: $c0

	ld bc, $02a0                                     ; $7cc5: $01 $a0 $02
	nop                                              ; $7cc8: $00
	add hl, sp                                       ; $7cc9: $39

jr_087_7cca:
	ret nz                                           ; $7cca: $c0

	ld bc, $01a0                                     ; $7ccb: $01 $a0 $01
	nop                                              ; $7cce: $00
	ld b, l                                          ; $7ccf: $45
	ret nz                                           ; $7cd0: $c0

	ld bc, $02a0                                     ; $7cd1: $01 $a0 $02
	nop                                              ; $7cd4: $00
	ld c, d                                          ; $7cd5: $4a
	ret nz                                           ; $7cd6: $c0

	ld bc, $01a0                                     ; $7cd7: $01 $a0 $01
	nop                                              ; $7cda: $00
	ld c, [hl]                                       ; $7cdb: $4e
	ret nz                                           ; $7cdc: $c0

	set 0, c                                         ; $7cdd: $cb $c1
	ld e, e                                          ; $7cdf: $5b
	ret nz                                           ; $7ce0: $c0

	rrca                                             ; $7ce1: $0f
	db $e3                                           ; $7ce2: $e3
	nop                                              ; $7ce3: $00
	halt                                             ; $7ce4: $76
	ret nz                                           ; $7ce5: $c0

	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	ld d, a                                          ; $7ce8: $57
	pop bc                                           ; $7ce9: $c1
	dec b                                            ; $7cea: $05
	ret nz                                           ; $7ceb: $c0

	inc b                                            ; $7cec: $04
	ld b, b                                          ; $7ced: $40
	add b                                            ; $7cee: $80
	ld [bc], a                                       ; $7cef: $02
	sbc d                                            ; $7cf0: $9a
	ret nz                                           ; $7cf1: $c0

	ld bc, $01a0                                     ; $7cf2: $01 $a0 $01
	nop                                              ; $7cf5: $00
	ld e, e                                          ; $7cf6: $5b
	ret nz                                           ; $7cf7: $c0

	jr nz, jr_087_7cca                               ; $7cf8: $20 $d0

	ret nc                                           ; $7cfa: $d0

	pop bc                                           ; $7cfb: $c1
	ld l, e                                          ; $7cfc: $6b
	jp nc, $c0d0                                     ; $7cfd: $d2 $d0 $c0

	rst GetHLinHL                                          ; $7d00: $cf
	ldh [rIE], a                                     ; $7d01: $e0 $ff
	db $e4                                           ; $7d03: $e4
	cp $49                                           ; $7d04: $fe $49
	inc a                                            ; $7d06: $3c
	ei                                               ; $7d07: $fb
	db $fc                                           ; $7d08: $fc
	add d                                            ; $7d09: $82
	and b                                            ; $7d0a: $a0
	ld [bc], a                                       ; $7d0b: $02
	db $d3                                           ; $7d0c: $d3
	ld [$00e0], sp                                   ; $7d0d: $08 $e0 $00
	inc [hl]                                         ; $7d10: $34
	ret nc                                           ; $7d11: $d0

	add e                                            ; $7d12: $83
	ld [bc], a                                       ; $7d13: $02
	add h                                            ; $7d14: $84
	ret nc                                           ; $7d15: $d0

	ei                                               ; $7d16: $fb
	db $fc                                           ; $7d17: $fc
	add d                                            ; $7d18: $82
	and b                                            ; $7d19: $a0
	dec b                                            ; $7d1a: $05
	db $d3                                           ; $7d1b: $d3
	ld [$00e0], sp                                   ; $7d1c: $08 $e0 $00
	dec h                                            ; $7d1f: $25
	ret nc                                           ; $7d20: $d0

	add e                                            ; $7d21: $83
	ld [bc], a                                       ; $7d22: $02
	add h                                            ; $7d23: $84
	pop de                                           ; $7d24: $d1
	ei                                               ; $7d25: $fb
	db $fc                                           ; $7d26: $fc
	add d                                            ; $7d27: $82
	and b                                            ; $7d28: $a0
	ld [$08d3], sp                                   ; $7d29: $08 $d3 $08
	ldh [rP1], a                                     ; $7d2c: $e0 $00
	ld d, $d0                                        ; $7d2e: $16 $d0
	add e                                            ; $7d30: $83
	ld [bc], a                                       ; $7d31: $02
	add h                                            ; $7d32: $84
	jp nc, $fcfb                                     ; $7d33: $d2 $fb $fc

	add d                                            ; $7d36: $82
	and b                                            ; $7d37: $a0
	dec bc                                           ; $7d38: $0b
	db $d3                                           ; $7d39: $d3
	ld [$00e0], sp                                   ; $7d3a: $08 $e0 $00
	rlca                                             ; $7d3d: $07
	ret nc                                           ; $7d3e: $d0

	add e                                            ; $7d3f: $83
	ld [bc], a                                       ; $7d40: $02
	add h                                            ; $7d41: $84
	db $d3                                           ; $7d42: $d3
	ld d, $c0                                        ; $7d43: $16 $c0
	set 0, c                                         ; $7d45: $cb $c1
	dec sp                                           ; $7d47: $3b
	ret nz                                           ; $7d48: $c0

	ld bc, $01a0                                     ; $7d49: $01 $a0 $01
	nop                                              ; $7d4c: $00
	ld h, l                                          ; $7d4d: $65
	ret nz                                           ; $7d4e: $c0

	ld bc, $01a0                                     ; $7d4f: $01 $a0 $01
	nop                                              ; $7d52: $00
	ld [hl], h                                       ; $7d53: $74
	nop                                              ; $7d54: $00
	add b                                            ; $7d55: $80
	ld [bc], a                                       ; $7d56: $02
	add e                                            ; $7d57: $83
	pop bc                                           ; $7d58: $c1
	scf                                              ; $7d59: $37
	jr z, jr_087_7d78                                ; $7d5a: $28 $1c

	ret nz                                           ; $7d5c: $c0

	set 0, b                                         ; $7d5d: $cb $c0
	ld bc, $01a0                                     ; $7d5f: $01 $a0 $01
	nop                                              ; $7d62: $00
	ld a, e                                          ; $7d63: $7b
	ret nz                                           ; $7d64: $c0

	dec bc                                           ; $7d65: $0b
	db $e3                                           ; $7d66: $e3
	nop                                              ; $7d67: $00
	ld l, d                                          ; $7d68: $6a
	ret nz                                           ; $7d69: $c0

	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	add l                                            ; $7d6c: $85
	ret nz                                           ; $7d6d: $c0

	rrca                                             ; $7d6e: $0f
	db $e3                                           ; $7d6f: $e3
	nop                                              ; $7d70: $00
	jp z, $01c0                                      ; $7d71: $ca $c0 $01

	and b                                            ; $7d74: $a0
	ld bc, $8c00                                     ; $7d75: $01 $00 $8c

jr_087_7d78:
	ld [de], a                                       ; $7d78: $12
	nop                                              ; $7d79: $00
	sub [hl]                                         ; $7d7a: $96
	add hl, bc                                       ; $7d7b: $09
	rlca                                             ; $7d7c: $07
	ret nz                                           ; $7d7d: $c0

	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	sbc h                                            ; $7d80: $9c
	db $e4                                           ; $7d81: $e4
	nop                                              ; $7d82: $00
	ld [hl], $00                                     ; $7d83: $36 $00
	and c                                            ; $7d85: $a1
	add hl, bc                                       ; $7d86: $09
	inc bc                                           ; $7d87: $03
	db $e4                                           ; $7d88: $e4
	nop                                              ; $7d89: $00
	ld [bc], a                                       ; $7d8a: $02
	add hl, bc                                       ; $7d8b: $09
	dec hl                                           ; $7d8c: $2b
	ret nc                                           ; $7d8d: $d0

	add a                                            ; $7d8e: $87
	and b                                            ; $7d8f: $a0
	rra                                              ; $7d90: $1f
	ret nz                                           ; $7d91: $c0

	ld [bc], a                                       ; $7d92: $02
	db $d3                                           ; $7d93: $d3
	add d                                            ; $7d94: $82
	add a                                            ; $7d95: $87
	and b                                            ; $7d96: $a0
	rra                                              ; $7d97: $1f
	ld bc, $06d0                                     ; $7d98: $01 $d0 $06
	ret nz                                           ; $7d9b: $c0

	ld bc, $01a0                                     ; $7d9c: $01 $a0 $01
	nop                                              ; $7d9f: $00
	and [hl]                                         ; $7da0: $a6
	ld bc, $06d1                                     ; $7da1: $01 $d1 $06
	ret nz                                           ; $7da4: $c0

	ld bc, $01a0                                     ; $7da5: $01 $a0 $01
	nop                                              ; $7da8: $00
	or d                                             ; $7da9: $b2
	ld bc, $06d2                                     ; $7daa: $01 $d2 $06
	ret nz                                           ; $7dad: $c0

	ld bc, $01a0                                     ; $7dae: $01 $a0 $01
	nop                                              ; $7db1: $00
	cp [hl]                                          ; $7db2: $be
	pop bc                                           ; $7db3: $c1
	inc a                                            ; $7db4: $3c
	db $e4                                           ; $7db5: $e4
	ld bc, $080d                                     ; $7db6: $01 $0d $08
	dec d                                            ; $7db9: $15
	nop                                              ; $7dba: $00
	ret z                                            ; $7dbb: $c8

	add hl, bc                                       ; $7dbc: $09
	inc bc                                           ; $7dbd: $03
	db $e4                                           ; $7dbe: $e4
	nop                                              ; $7dbf: $00
	stop                                             ; $7dc0: $10 $00

jr_087_7dc2:
	adc $09                                          ; $7dc2: $ce $09
	inc bc                                           ; $7dc4: $03
	db $e4                                           ; $7dc5: $e4
	nop                                              ; $7dc6: $00
	add hl, bc                                       ; $7dc7: $09
	nop                                              ; $7dc8: $00
	sub $09                                          ; $7dc9: $d6 $09
	inc bc                                           ; $7dcb: $03
	db $e4                                           ; $7dcc: $e4
	nop                                              ; $7dcd: $00
	ld [bc], a                                       ; $7dce: $02
	add hl, bc                                       ; $7dcf: $09
	adc h                                            ; $7dd0: $8c
	ret nz                                           ; $7dd1: $c0

	dec bc                                           ; $7dd2: $0b
	db $e3                                           ; $7dd3: $e3
	nop                                              ; $7dd4: $00
	adc b                                            ; $7dd5: $88
	or c                                             ; $7dd6: $b1
	ld a, a                                          ; $7dd7: $7f
	ld b, e                                          ; $7dd8: $43
	ldh [rP1], a                                     ; $7dd9: $e0 $00
	add e                                            ; $7ddb: $83
	ret nz                                           ; $7ddc: $c0

	add hl, bc                                       ; $7ddd: $09
	db $e3                                           ; $7dde: $e3
	nop                                              ; $7ddf: $00

jr_087_7de0:
	ld d, c                                          ; $7de0: $51
	or b                                             ; $7de1: $b0
	ld a, a                                          ; $7de2: $7f
	dec de                                           ; $7de3: $1b
	ret nz                                           ; $7de4: $c0

	ld bc, $01a0                                     ; $7de5: $01 $a0 $01
	nop                                              ; $7de8: $00
	call c, $00c0                                    ; $7de9: $dc $c0 $00
	nop                                              ; $7dec: $00
	db $e3                                           ; $7ded: $e3
	ret nz                                           ; $7dee: $c0

	dec bc                                           ; $7def: $0b
	db $e3                                           ; $7df0: $e3
	nop                                              ; $7df1: $00
	inc bc                                           ; $7df2: $03
	ret nz                                           ; $7df3: $c0

	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	db $eb                                           ; $7df6: $eb
	ret nz                                           ; $7df7: $c0

	set 0, b                                         ; $7df8: $cb $c0
	ld bc, $01a0                                     ; $7dfa: $01 $a0 $01
	nop                                              ; $7dfd: $00
	xor $ff                                          ; $7dfe: $ee $ff
	jr jr_087_7dc2                                   ; $7e00: $18 $c0

	ld bc, $01a0                                     ; $7e02: $01 $a0 $01
	nop                                              ; $7e05: $00
	ld a, [$00c0]                                    ; $7e06: $fa $c0 $00
	ld bc, $c002                                     ; $7e09: $01 $02 $c0
	ld bc, $01a0                                     ; $7e0c: $01 $a0 $01
	ld bc, $c00b                                     ; $7e0f: $01 $0b $c0
	set 0, b                                         ; $7e12: $cb $c0
	ld bc, $01a0                                     ; $7e14: $01 $a0 $01
	ld bc, $e013                                     ; $7e17: $01 $13 $e0
	nop                                              ; $7e1a: $00
	ld l, a                                          ; $7e1b: $6f
	cp a                                             ; $7e1c: $bf
	jr z, jr_087_7de0                                ; $7e1d: $28 $c1

	ld e, c                                          ; $7e1f: $59
	db $e3                                           ; $7e20: $e3
	nop                                              ; $7e21: $00
	call z, $09c0                                    ; $7e22: $cc $c0 $09
	db $e3                                           ; $7e25: $e3
	nop                                              ; $7e26: $00
	ld d, d                                          ; $7e27: $52
	ret nz                                           ; $7e28: $c0

	ld bc, $01a0                                     ; $7e29: $01 $a0 $01
	ld bc, $c026                                     ; $7e2c: $01 $26 $c0
	ld bc, $2ca0                                     ; $7e2f: $01 $a0 $2c
	ld bc, $c02c                                     ; $7e32: $01 $2c $c0
	ld bc, $01a0                                     ; $7e35: $01 $a0 $01
	ld bc, $c032                                     ; $7e38: $01 $32 $c0
	set 0, b                                         ; $7e3b: $cb $c0
	ld bc, $01a0                                     ; $7e3d: $01 $a0 $01
	ld bc, $c039                                     ; $7e40: $01 $39 $c0
	reti                                             ; $7e43: $d9


	jp c, $ffd8                                      ; $7e44: $da $d8 $ff

	ld [de], a                                       ; $7e47: $12
	ret nz                                           ; $7e48: $c0

	ld de, $00e3                                     ; $7e49: $11 $e3 $00
	set 0, b                                         ; $7e4c: $cb $c0
	add hl, bc                                       ; $7e4e: $09
	db $e3                                           ; $7e4f: $e3
	nop                                              ; $7e50: $00
	ld d, d                                          ; $7e51: $52
	ret nz                                           ; $7e52: $c0

	ld bc, $01a0                                     ; $7e53: $01 $a0 $01
	ld bc, $c042                                     ; $7e56: $01 $42 $c0
	set 4, h                                         ; $7e59: $cb $e4
	nop                                              ; $7e5b: $00
	ld l, b                                          ; $7e5c: $68
	dec hl                                           ; $7e5d: $2b
	ret nc                                           ; $7e5e: $d0

	add a                                            ; $7e5f: $87
	and b                                            ; $7e60: $a0
	daa                                              ; $7e61: $27
	ret nz                                           ; $7e62: $c0

	ld [bc], a                                       ; $7e63: $02
	call nc, $8783                                   ; $7e64: $d4 $83 $87
	and b                                            ; $7e67: $a0
	daa                                              ; $7e68: $27
	ld bc, $05d0                                     ; $7e69: $01 $d0 $05
	pop bc                                           ; $7e6c: $c1
	ld e, c                                          ; $7e6d: $59
	db $e3                                           ; $7e6e: $e3
	ld bc, $0118                                     ; $7e6f: $01 $18 $01
	pop de                                           ; $7e72: $d1
	dec b                                            ; $7e73: $05
	pop bc                                           ; $7e74: $c1
	ld e, c                                          ; $7e75: $59
	db $e3                                           ; $7e76: $e3
	ld bc, $0119                                     ; $7e77: $01 $19 $01
	jp nc, $c105                                     ; $7e7a: $d2 $05 $c1

	ld e, c                                          ; $7e7d: $59
	db $e3                                           ; $7e7e: $e3
	ld bc, $011a                                     ; $7e7f: $01 $1a $01
	db $d3                                           ; $7e82: $d3
	dec b                                            ; $7e83: $05
	pop bc                                           ; $7e84: $c1
	ld e, c                                          ; $7e85: $59
	db $e3                                           ; $7e86: $e3
	ld bc, $391b                                     ; $7e87: $01 $1b $39
	ld h, b                                          ; $7e8a: $60
	add b                                            ; $7e8b: $80
	nop                                              ; $7e8c: $00
	ld l, c                                          ; $7e8d: $69
	inc b                                            ; $7e8e: $04
	ret nz                                           ; $7e8f: $c0

	dec h                                            ; $7e90: $25
	jp c, $2fd0                                      ; $7e91: $da $d0 $2f

	add e                                            ; $7e94: $83
	adc e                                            ; $7e95: $8b
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	ld [bc], a                                       ; $7e98: $02
	or b                                             ; $7e99: $b0
	rrca                                             ; $7e9a: $0f
	add hl, bc                                       ; $7e9b: $09
	ei                                               ; $7e9c: $fb
	add b                                            ; $7e9d: $80
	nop                                              ; $7e9e: $00
	ld l, l                                          ; $7e9f: $6d
	inc b                                            ; $7ea0: $04
	ret nz                                           ; $7ea1: $c0

	dec h                                            ; $7ea2: $25
	jp c, $02d1                                      ; $7ea3: $da $d1 $02

	or b                                             ; $7ea6: $b0
	ld c, $09                                        ; $7ea7: $0e $09
	ei                                               ; $7ea9: $fb
	add b                                            ; $7eaa: $80
	nop                                              ; $7eab: $00
	ld l, a                                          ; $7eac: $6f
	inc b                                            ; $7ead: $04
	ret nz                                           ; $7eae: $c0

	dec h                                            ; $7eaf: $25
	jp c, $02d2                                      ; $7eb0: $da $d2 $02

	or b                                             ; $7eb3: $b0
	db $10                                           ; $7eb4: $10
	add hl, bc                                       ; $7eb5: $09
	ei                                               ; $7eb6: $fb
	add b                                            ; $7eb7: $80
	nop                                              ; $7eb8: $00
	ld [hl], b                                       ; $7eb9: $70
	inc b                                            ; $7eba: $04
	ret nz                                           ; $7ebb: $c0

	dec h                                            ; $7ebc: $25
	jp c, $02d3                                      ; $7ebd: $da $d3 $02

	or b                                             ; $7ec0: $b0
	ld de, $2c00                                     ; $7ec1: $11 $00 $2c
	ld b, $c0                                        ; $7ec4: $06 $c0
	nop                                              ; $7ec6: $00
	ld bc, $c057                                     ; $7ec7: $01 $57 $c0
	sbc b                                            ; $7eca: $98
	ld c, b                                          ; $7ecb: $48
	cp $0a                                           ; $7ecc: $fe $0a
	db $fc                                           ; $7ece: $fc
	ret nz                                           ; $7ecf: $c0

	ld h, l                                          ; $7ed0: $65
	ret nz                                           ; $7ed1: $c0

	ld [hl], h                                       ; $7ed2: $74
	db $fc                                           ; $7ed3: $fc
	ret nz                                           ; $7ed4: $c0

	ld h, [hl]                                       ; $7ed5: $66
	ret nz                                           ; $7ed6: $c0

	ld [hl], l                                       ; $7ed7: $75
	jr z, @+$10                                      ; $7ed8: $28 $0e

	ret nz                                           ; $7eda: $c0

	push af                                          ; $7edb: $f5
	ret nz                                           ; $7edc: $c0

	ld bc, $01a0                                     ; $7edd: $01 $a0 $01
	nop                                              ; $7ee0: $00
	inc d                                            ; $7ee1: $14
	ret nz                                           ; $7ee2: $c0

	ld bc, $01a0                                     ; $7ee3: $01 $a0 $01
	nop                                              ; $7ee6: $00
	jr jr_087_7f0d                                   ; $7ee7: $18 $24

	nop                                              ; $7ee9: $00
	dec de                                           ; $7eea: $1b
	add hl, bc                                       ; $7eeb: $09
	ld a, [bc]                                       ; $7eec: $0a
	ret nc                                           ; $7eed: $d0

	adc e                                            ; $7eee: $8b
	nop                                              ; $7eef: $00
	sbc $b0                                          ; $7ef0: $de $b0
	ld [hl], h                                       ; $7ef2: $74
	push hl                                          ; $7ef3: $e5
	ld b, l                                          ; $7ef4: $45
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	dec e                                            ; $7ef8: $1d
	add hl, bc                                       ; $7ef9: $09
	ld [de], a                                       ; $7efa: $12
	ret nz                                           ; $7efb: $c0

	inc h                                            ; $7efc: $24
	pop de                                           ; $7efd: $d1
	ret nc                                           ; $7efe: $d0

	ret nz                                           ; $7eff: $c0

	inc hl                                           ; $7f00: $23
	push de                                          ; $7f01: $d5
	ret nc                                           ; $7f02: $d0

	ret nz                                           ; $7f03: $c0

	ld bc, $01a0                                     ; $7f04: $01 $a0 $01
	nop                                              ; $7f07: $00
	rra                                              ; $7f08: $1f
	push hl                                          ; $7f09: $e5
	ld bc, $b119                                     ; $7f0a: $01 $19 $b1

jr_087_7f0d:
	pop de                                           ; $7f0d: $d1
	add hl, bc                                       ; $7f0e: $09
	inc b                                            ; $7f0f: $04
	push hl                                          ; $7f10: $e5
	ld bc, $b119                                     ; $7f11: $01 $19 $b1
	ld d, d                                          ; $7f14: $52
	ld [$3e09], sp                                   ; $7f15: $08 $09 $3e
	pop bc                                           ; $7f18: $c1
	ld e, c                                          ; $7f19: $59
	db $e3                                           ; $7f1a: $e3
	nop                                              ; $7f1b: $00
	ld b, h                                          ; $7f1c: $44
	ret nz                                           ; $7f1d: $c0

	add hl, bc                                       ; $7f1e: $09
	db $e3                                           ; $7f1f: $e3
	nop                                              ; $7f20: $00
	ld c, d                                          ; $7f21: $4a
	pop hl                                           ; $7f22: $e1
	ld [bc], a                                       ; $7f23: $02
	nop                                              ; $7f24: $00
	ldh a, [$63]                                     ; $7f25: $f0 $63
	ei                                               ; $7f27: $fb
	ret nz                                           ; $7f28: $c0

	ld b, a                                          ; $7f29: $47
	pop hl                                           ; $7f2a: $e1
	ld bc, $0364                                     ; $7f2b: $01 $64 $03
	ldh [rSC], a                                     ; $7f2e: $e0 $02
	xor l                                            ; $7f30: $ad
	ei                                               ; $7f31: $fb
	ret nz                                           ; $7f32: $c0

	ld b, a                                          ; $7f33: $47
	ldh [$c8], a                                     ; $7f34: $e0 $c8
	inc bc                                           ; $7f36: $03
	ldh [rSB], a                                     ; $7f37: $e0 $01
	di                                               ; $7f39: $f3
	ei                                               ; $7f3a: $fb
	ret nz                                           ; $7f3b: $c0

	ld b, a                                          ; $7f3c: $47
	ldh [$64], a                                     ; $7f3d: $e0 $64
	inc bc                                           ; $7f3f: $03
	ldh [rSB], a                                     ; $7f40: $e0 $01
	dec [hl]                                         ; $7f42: $35
	ei                                               ; $7f43: $fb
	ret nz                                           ; $7f44: $c0

	ld b, a                                          ; $7f45: $47
	ldh [$32], a                                     ; $7f46: $e0 $32
	inc bc                                           ; $7f48: $03
	ldh [rP1], a                                     ; $7f49: $e0 $00
	xor e                                            ; $7f4b: $ab
	inc bc                                           ; $7f4c: $03
	ldh [rP1], a                                     ; $7f4d: $e0 $00
	ld [$05c1], sp                                   ; $7f4f: $08 $c1 $05
	push hl                                          ; $7f52: $e5
	ld d, a                                          ; $7f53: $57
	nop                                              ; $7f54: $00
	ld l, l                                          ; $7f55: $6d
	sbc [hl]                                         ; $7f56: $9e
	add e                                            ; $7f57: $83
	ret nz                                           ; $7f58: $c0

	dec de                                           ; $7f59: $1b
	ret nc                                           ; $7f5a: $d0

	ld [bc], a                                       ; $7f5b: $02
	ret nc                                           ; $7f5c: $d0

	pop de                                           ; $7f5d: $d1
	inc l                                            ; $7f5e: $2c
	ret nz                                           ; $7f5f: $c0

	ld bc, $02a0                                     ; $7f60: $01 $a0 $02
	nop                                              ; $7f63: $00
	ld bc, $01c0                                     ; $7f64: $01 $c0 $01
	and b                                            ; $7f67: $a0
	ld bc, $0600                                     ; $7f68: $01 $00 $06
	ret nz                                           ; $7f6b: $c0

	ld bc, $02a0                                     ; $7f6c: $01 $a0 $02
	nop                                              ; $7f6f: $00
	inc d                                            ; $7f70: $14
	ret nz                                           ; $7f71: $c0

	ld bc, $01a0                                     ; $7f72: $01 $a0 $01
	nop                                              ; $7f75: $00
	ld hl, $01c0                                     ; $7f76: $21 $c0 $01
	and b                                            ; $7f79: $a0
	ld [bc], a                                       ; $7f7a: $02
	nop                                              ; $7f7b: $00
	ld a, [hl+]                                      ; $7f7c: $2a
	ret nz                                           ; $7f7d: $c0

	ld bc, $01a0                                     ; $7f7e: $01 $a0 $01
	nop                                              ; $7f81: $00
	ld [hl], $c0                                     ; $7f82: $36 $c0
	ld bc, $02a0                                     ; $7f84: $01 $a0 $02
	nop                                              ; $7f87: $00
	ld c, e                                          ; $7f88: $4b
	pop bc                                           ; $7f89: $c1
	ld e, e                                          ; $7f8a: $5b
	ld [bc], a                                       ; $7f8b: $02
	jp nc, $2cd3                                     ; $7f8c: $d2 $d3 $2c

	ret nz                                           ; $7f8f: $c0

	ld bc, $02a0                                     ; $7f90: $01 $a0 $02
	nop                                              ; $7f93: $00
	ld bc, $01c0                                     ; $7f94: $01 $c0 $01
	and b                                            ; $7f97: $a0
	ld bc, $5000                                     ; $7f98: $01 $00 $50
	ret nz                                           ; $7f9b: $c0

	ld bc, $02a0                                     ; $7f9c: $01 $a0 $02
	nop                                              ; $7f9f: $00
	ld e, l                                          ; $7fa0: $5d
	ret nz                                           ; $7fa1: $c0

	ld bc, $01a0                                     ; $7fa2: $01 $a0 $01
	nop                                              ; $7fa5: $00
	ld hl, $01c0                                     ; $7fa6: $21 $c0 $01
	and b                                            ; $7fa9: $a0
	ld [bc], a                                       ; $7faa: $02
	nop                                              ; $7fab: $00
	ld l, d                                          ; $7fac: $6a
	ret nz                                           ; $7fad: $c0

	ld bc, $01a0                                     ; $7fae: $01 $a0 $01
	nop                                              ; $7fb1: $00
	halt                                             ; $7fb2: $76
	ret nz                                           ; $7fb3: $c0

	ld bc, $02a0                                     ; $7fb4: $01 $a0 $02
	nop                                              ; $7fb7: $00
	ld c, e                                          ; $7fb8: $4b
	pop bc                                           ; $7fb9: $c1
	ld e, e                                          ; $7fba: $5b
	ld bc, $20d4                                     ; $7fbb: $01 $d4 $20
	ret nz                                           ; $7fbe: $c0

	ld bc, $02a0                                     ; $7fbf: $01 $a0 $02
	nop                                              ; $7fc2: $00
	ld bc, $01c0                                     ; $7fc3: $01 $c0 $01
	and b                                            ; $7fc6: $a0
	ld bc, $5000                                     ; $7fc7: $01 $00 $50
	ret nz                                           ; $7fca: $c0

	ld bc, $02a0                                     ; $7fcb: $01 $a0 $02
	nop                                              ; $7fce: $00
	add e                                            ; $7fcf: $83
	ret nz                                           ; $7fd0: $c0

	ld bc, $01a0                                     ; $7fd1: $01 $a0 $01
	nop                                              ; $7fd4: $00
	adc a                                            ; $7fd5: $8f
	ret nz                                           ; $7fd6: $c0

	ld bc, $02a0                                     ; $7fd7: $01 $a0 $02
	nop                                              ; $7fda: $00
	sub h                                            ; $7fdb: $94
	pop bc                                           ; $7fdc: $c1
	ld e, e                                          ; $7fdd: $5b
	ld bc, $14d5                                     ; $7fde: $01 $d5 $14
	ret nz                                           ; $7fe1: $c0

	ld bc, $01a0                                     ; $7fe2: $01 $a0 $01
	nop                                              ; $7fe5: $00
	sbc h                                            ; $7fe6: $9c
	ret nz                                           ; $7fe7: $c0

	ld bc, $02a0                                     ; $7fe8: $01 $a0 $02
	nop                                              ; $7feb: $00
	xor d                                            ; $7fec: $aa
	pop bc                                           ; $7fed: $c1
	ld e, e                                          ; $7fee: $5b
	ret nz                                           ; $7fef: $c0

	ld bc, $01a0                                     ; $7ff0: $01 $a0 $01
	nop                                              ; $7ff3: $00
	or l                                             ; $7ff4: $b5
	add b                                            ; $7ff5: $80
	ret nz                                           ; $7ff6: $c0

	ld bc, $01a0                                     ; $7ff7: $01 $a0 $01
	nop                                              ; $7ffa: $00
	cp h                                             ; $7ffb: $bc
	add e                                            ; $7ffc: $83
	ret nz                                           ; $7ffd: $c0

	dec de                                           ; $7ffe: $1b
	ret nc                                           ; $7fff: $d0
