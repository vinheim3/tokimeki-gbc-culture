; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

	cp $b6                                           ; $4000: $fe $b6
	ld l, [hl]                                       ; $4002: $6e
	or d                                             ; $4003: $b2
	ld [bc], a                                       ; $4004: $02
	ld h, h                                          ; $4005: $64
	rlca                                             ; $4006: $07
	ld a, [hl]                                       ; $4007: $7e
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	ld [bc], a                                       ; $400a: $02
	daa                                              ; $400b: $27
	ld [$27c7], sp                                   ; $400c: $08 $c7 $27
	inc b                                            ; $400f: $04
	sla l                                            ; $4010: $cb $25
	ld [$25c7], sp                                   ; $4012: $08 $c7 $25
	inc b                                            ; $4015: $04
	sla a                                            ; $4016: $cb $27
	ld [$27c7], sp                                   ; $4018: $08 $c7 $27
	inc b                                            ; $401b: $04
	sra d                                            ; $401c: $cb $2a
	ld [$2ac7], sp                                   ; $401e: $08 $c7 $2a
	inc b                                            ; $4021: $04
	sla a                                            ; $4022: $cb $27
	add hl, bc                                       ; $4024: $09
	rst JumpTable                                          ; $4025: $c7
	daa                                              ; $4026: $27
	rrca                                             ; $4027: $0f
	sla a                                            ; $4028: $cb $27
	ld [$27c7], sp                                   ; $402a: $08 $c7 $27
	inc b                                            ; $402d: $04
	sla l                                            ; $402e: $cb $25
	ld [$25c7], sp                                   ; $4030: $08 $c7 $25
	inc b                                            ; $4033: $04
	sla a                                            ; $4034: $cb $27
	add hl, bc                                       ; $4036: $09
	rst JumpTable                                          ; $4037: $c7
	daa                                              ; $4038: $27
	rrca                                             ; $4039: $0f
	sla a                                            ; $403a: $cb $27
	ld [$27c7], sp                                   ; $403c: $08 $c7 $27
	inc b                                            ; $403f: $04
	sra d                                            ; $4040: $cb $2a
	ld [$2ac7], sp                                   ; $4042: $08 $c7 $2a
	inc b                                            ; $4045: $04
	sra h                                            ; $4046: $cb $2c
	ld [$2cc7], sp                                   ; $4048: $08 $c7 $2c
	inc b                                            ; $404b: $04
	sla a                                            ; $404c: $cb $27
	ld [$27c7], sp                                   ; $404e: $08 $c7 $27
	inc b                                            ; $4051: $04
	sla l                                            ; $4052: $cb $25
	ld [$25c7], sp                                   ; $4054: $08 $c7 $25
	inc b                                            ; $4057: $04
	sla d                                            ; $4058: $cb $22
	ld [$22c7], sp                                   ; $405a: $08 $c7 $22
	inc b                                            ; $405d: $04
	sla a                                            ; $405e: $cb $27
	ld [$27c7], sp                                   ; $4060: $08 $c7 $27
	inc b                                            ; $4063: $04
	sla l                                            ; $4064: $cb $25
	ld [$25c7], sp                                   ; $4066: $08 $c7 $25
	inc b                                            ; $4069: $04
	sla a                                            ; $406a: $cb $27
	ld [$27c7], sp                                   ; $406c: $08 $c7 $27
	inc b                                            ; $406f: $04
	sra d                                            ; $4070: $cb $2a
	ld [$2ac7], sp                                   ; $4072: $08 $c7 $2a
	inc b                                            ; $4075: $04
	sla a                                            ; $4076: $cb $27
	add hl, bc                                       ; $4078: $09
	rst JumpTable                                          ; $4079: $c7
	daa                                              ; $407a: $27
	rrca                                             ; $407b: $0f
	sla a                                            ; $407c: $cb $27
	ld [$27c7], sp                                   ; $407e: $08 $c7 $27
	inc b                                            ; $4081: $04
	sla l                                            ; $4082: $cb $25
	ld [$25c7], sp                                   ; $4084: $08 $c7 $25
	inc b                                            ; $4087: $04
	sla a                                            ; $4088: $cb $27
	add hl, bc                                       ; $408a: $09
	rst JumpTable                                          ; $408b: $c7
	daa                                              ; $408c: $27
	rrca                                             ; $408d: $0f
	sla a                                            ; $408e: $cb $27
	ld [$27c7], sp                                   ; $4090: $08 $c7 $27
	inc b                                            ; $4093: $04
	sra d                                            ; $4094: $cb $2a
	ld [$2ac7], sp                                   ; $4096: $08 $c7 $2a
	inc b                                            ; $4099: $04
	sra h                                            ; $409a: $cb $2c
	ld [$2cc7], sp                                   ; $409c: $08 $c7 $2c
	inc b                                            ; $409f: $04
	sla a                                            ; $40a0: $cb $27
	ld [$27c7], sp                                   ; $40a2: $08 $c7 $27
	inc b                                            ; $40a5: $04
	sla l                                            ; $40a6: $cb $25
	ld [$25c7], sp                                   ; $40a8: $08 $c7 $25
	inc b                                            ; $40ab: $04
	sla [hl]                                         ; $40ac: $cb $26
	ld [$bdc7], sp                                   ; $40ae: $08 $c7 $bd
	ld [bc], a                                       ; $40b1: $02
	ld h, $02                                        ; $40b2: $26 $02
	ld [bc], a                                       ; $40b4: $02
	or l                                             ; $40b5: $b5
	or d                                             ; $40b6: $b2
	ld [bc], a                                       ; $40b7: $02
	ld h, h                                          ; $40b8: $64
	rlca                                             ; $40b9: $07
	daa                                              ; $40ba: $27
	ld [$27c7], sp                                   ; $40bb: $08 $c7 $27
	inc b                                            ; $40be: $04
	sla l                                            ; $40bf: $cb $25
	ld [$25c7], sp                                   ; $40c1: $08 $c7 $25
	inc b                                            ; $40c4: $04
	sla a                                            ; $40c5: $cb $27
	ld [$27c7], sp                                   ; $40c7: $08 $c7 $27
	inc b                                            ; $40ca: $04
	sra d                                            ; $40cb: $cb $2a
	ld [$2ac7], sp                                   ; $40cd: $08 $c7 $2a
	inc b                                            ; $40d0: $04
	sla a                                            ; $40d1: $cb $27
	add hl, bc                                       ; $40d3: $09
	rst JumpTable                                          ; $40d4: $c7
	daa                                              ; $40d5: $27
	rrca                                             ; $40d6: $0f
	sla a                                            ; $40d7: $cb $27
	ld [$27c7], sp                                   ; $40d9: $08 $c7 $27
	inc b                                            ; $40dc: $04
	sla l                                            ; $40dd: $cb $25
	ld [$25c7], sp                                   ; $40df: $08 $c7 $25
	inc b                                            ; $40e2: $04
	sla a                                            ; $40e3: $cb $27
	add hl, bc                                       ; $40e5: $09
	rst JumpTable                                          ; $40e6: $c7
	daa                                              ; $40e7: $27
	rrca                                             ; $40e8: $0f
	sla a                                            ; $40e9: $cb $27
	ld [$27c7], sp                                   ; $40eb: $08 $c7 $27
	inc b                                            ; $40ee: $04
	sra d                                            ; $40ef: $cb $2a
	ld [$2ac7], sp                                   ; $40f1: $08 $c7 $2a
	inc b                                            ; $40f4: $04
	sra h                                            ; $40f5: $cb $2c
	ld [$2cc7], sp                                   ; $40f7: $08 $c7 $2c
	inc b                                            ; $40fa: $04
	sla a                                            ; $40fb: $cb $27
	ld [$27c7], sp                                   ; $40fd: $08 $c7 $27
	inc b                                            ; $4100: $04
	sla l                                            ; $4101: $cb $25
	ld [$25c7], sp                                   ; $4103: $08 $c7 $25
	inc b                                            ; $4106: $04
	sla d                                            ; $4107: $cb $22
	ld [$22c7], sp                                   ; $4109: $08 $c7 $22
	inc b                                            ; $410c: $04
	sla a                                            ; $410d: $cb $27
	ld [$27c7], sp                                   ; $410f: $08 $c7 $27
	inc b                                            ; $4112: $04
	sla l                                            ; $4113: $cb $25
	ld [$25c7], sp                                   ; $4115: $08 $c7 $25
	inc b                                            ; $4118: $04
	sla a                                            ; $4119: $cb $27
	ld [$27c7], sp                                   ; $411b: $08 $c7 $27
	inc b                                            ; $411e: $04
	sra d                                            ; $411f: $cb $2a
	ld [$2ac7], sp                                   ; $4121: $08 $c7 $2a
	inc b                                            ; $4124: $04
	sla a                                            ; $4125: $cb $27
	add hl, bc                                       ; $4127: $09
	rst JumpTable                                          ; $4128: $c7
	daa                                              ; $4129: $27
	rrca                                             ; $412a: $0f
	sla a                                            ; $412b: $cb $27
	ld [$27c7], sp                                   ; $412d: $08 $c7 $27
	inc b                                            ; $4130: $04
	sla l                                            ; $4131: $cb $25
	ld [$25c7], sp                                   ; $4133: $08 $c7 $25
	inc b                                            ; $4136: $04
	sla a                                            ; $4137: $cb $27
	ld [de], a                                       ; $4139: $12
	or c                                             ; $413a: $b1
	ld [hl], d                                       ; $413b: $72
	ld h, h                                          ; $413c: $64
	rlca                                             ; $413d: $07
	daa                                              ; $413e: $27
	rrca                                             ; $413f: $0f
	push bc                                          ; $4140: $c5
	daa                                              ; $4141: $27
	inc d                                            ; $4142: $14
	or l                                             ; $4143: $b5
	add c                                            ; $4144: $81
	inc bc                                           ; $4145: $03
	ld d, b                                          ; $4146: $50
	rlca                                             ; $4147: $07
	rla                                              ; $4148: $17
	jr jr_036_4164                                   ; $4149: $18 $19

	ld de, $f1b5                                     ; $414b: $11 $b5 $f1

jr_036_414e:
	inc bc                                           ; $414e: $03
	ld h, h                                          ; $414f: $64
	inc bc                                           ; $4150: $03
	inc d                                            ; $4151: $14
	inc c                                            ; $4152: $0c
	ret                                              ; $4153: $c9


	inc d                                            ; $4154: $14
	inc c                                            ; $4155: $0c
	rst GetHLinHL                                          ; $4156: $cf
	ld [de], a                                       ; $4157: $12
	inc c                                            ; $4158: $0c
	inc d                                            ; $4159: $14
	inc c                                            ; $415a: $0c
	add hl, de                                       ; $415b: $19
	inc c                                            ; $415c: $0c
	ret                                              ; $415d: $c9


	add hl, de                                       ; $415e: $19
	inc c                                            ; $415f: $0c
	rst GetHLinHL                                          ; $4160: $cf
	inc d                                            ; $4161: $14
	inc c                                            ; $4162: $0c
	ld [de], a                                       ; $4163: $12

jr_036_4164:
	inc c                                            ; $4164: $0c
	inc d                                            ; $4165: $14
	inc c                                            ; $4166: $0c
	ret                                              ; $4167: $c9


	inc d                                            ; $4168: $14
	inc c                                            ; $4169: $0c
	rst GetHLinHL                                          ; $416a: $cf
	ld [de], a                                       ; $416b: $12
	inc c                                            ; $416c: $0c
	inc d                                            ; $416d: $14
	inc c                                            ; $416e: $0c
	rla                                              ; $416f: $17
	inc c                                            ; $4170: $0c
	add hl, de                                       ; $4171: $19
	ld b, $17                                        ; $4172: $06 $17
	ld b, $14                                        ; $4174: $06 $14
	inc c                                            ; $4176: $0c
	ld [de], a                                       ; $4177: $12
	inc c                                            ; $4178: $0c
	inc d                                            ; $4179: $14
	inc c                                            ; $417a: $0c
	ld [de], a                                       ; $417b: $12
	inc c                                            ; $417c: $0c
	or c                                             ; $417d: $b1
	sub c                                            ; $417e: $91
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	inc d                                            ; $4181: $14
	add hl, de                                       ; $4182: $19
	add $14                                          ; $4183: $c6 $14
	dec bc                                           ; $4185: $0b
	call nz, $0914                                   ; $4186: $c4 $14 $09
	jp $0a14                                         ; $4189: $c3 $14 $0a


	or l                                             ; $418c: $b5
	ld [hl], d                                       ; $418d: $72
	inc bc                                           ; $418e: $03
	ld h, h                                          ; $418f: $64
	rlca                                             ; $4190: $07
	inc sp                                           ; $4191: $33
	inc c                                            ; $4192: $0c
	inc [hl]                                         ; $4193: $34
	inc c                                            ; $4194: $0c
	ret                                              ; $4195: $c9


	inc sp                                           ; $4196: $33
	jr nc, jr_036_414e                               ; $4197: $30 $b5

	and d                                            ; $4199: $a2
	inc bc                                           ; $419a: $03
	ld d, b                                          ; $419b: $50
	rlca                                             ; $419c: $07
	rla                                              ; $419d: $17
	jr jr_036_41b9                                   ; $419e: $18 $19

	ld de, $f1b5                                     ; $41a0: $11 $b5 $f1
	inc bc                                           ; $41a3: $03
	ld h, h                                          ; $41a4: $64
	inc bc                                           ; $41a5: $03
	inc d                                            ; $41a6: $14
	inc c                                            ; $41a7: $0c
	ret                                              ; $41a8: $c9


	inc d                                            ; $41a9: $14
	inc c                                            ; $41aa: $0c
	rst GetHLinHL                                          ; $41ab: $cf
	ld [de], a                                       ; $41ac: $12
	inc c                                            ; $41ad: $0c
	inc d                                            ; $41ae: $14
	inc c                                            ; $41af: $0c
	add hl, de                                       ; $41b0: $19
	inc c                                            ; $41b1: $0c
	ret                                              ; $41b2: $c9


	add hl, de                                       ; $41b3: $19
	inc c                                            ; $41b4: $0c
	rst GetHLinHL                                          ; $41b5: $cf
	inc d                                            ; $41b6: $14
	inc c                                            ; $41b7: $0c
	ld [de], a                                       ; $41b8: $12

jr_036_41b9:
	inc c                                            ; $41b9: $0c
	inc d                                            ; $41ba: $14
	inc c                                            ; $41bb: $0c
	ret                                              ; $41bc: $c9


	inc d                                            ; $41bd: $14
	inc c                                            ; $41be: $0c
	rst GetHLinHL                                          ; $41bf: $cf
	ld [de], a                                       ; $41c0: $12
	inc c                                            ; $41c1: $0c
	inc d                                            ; $41c2: $14
	inc c                                            ; $41c3: $0c
	rla                                              ; $41c4: $17
	inc c                                            ; $41c5: $0c
	add hl, de                                       ; $41c6: $19
	ld b, $17                                        ; $41c7: $06 $17
	ld b, $14                                        ; $41c9: $06 $14
	inc c                                            ; $41cb: $0c
	ld [de], a                                       ; $41cc: $12
	inc c                                            ; $41cd: $0c
	inc d                                            ; $41ce: $14
	inc c                                            ; $41cf: $0c
	rla                                              ; $41d0: $17
	inc c                                            ; $41d1: $0c
	inc d                                            ; $41d2: $14
	inc de                                           ; $41d3: $13
	ret z                                            ; $41d4: $c8

	jp nc, Jump_036_7e92                             ; $41d5: $d2 $92 $7e

	nop                                              ; $41d8: $00
	sub [hl]                                         ; $41d9: $96
	ld d, b                                          ; $41da: $50
	ld [bc], a                                       ; $41db: $02
	cp [hl]                                          ; $41dc: $be
	inc c                                            ; $41dd: $0c
	jr c, jr_036_4218                                ; $41de: $38 $38

	ld [hl], $36                                     ; $41e0: $36 $36
	inc sp                                           ; $41e2: $33
	inc sp                                           ; $41e3: $33
	ld sp, $2f31                                     ; $41e4: $31 $31 $2f
	cp [hl]                                          ; $41e7: $be
	sub e                                            ; $41e8: $93
	sla e                                            ; $41e9: $cb $23
	jr jr_036_4212                                   ; $41eb: $18 $25

	ld de, $c1b5                                     ; $41ed: $11 $b5 $c1
	inc bc                                           ; $41f0: $03
	ld h, h                                          ; $41f1: $64
	inc bc                                           ; $41f2: $03
	inc d                                            ; $41f3: $14
	inc c                                            ; $41f4: $0c
	rst JumpTable                                          ; $41f5: $c7
	inc d                                            ; $41f6: $14
	inc c                                            ; $41f7: $0c
	call z, $0c12                                    ; $41f8: $cc $12 $0c
	inc d                                            ; $41fb: $14
	inc c                                            ; $41fc: $0c
	add hl, de                                       ; $41fd: $19
	inc c                                            ; $41fe: $0c
	rst JumpTable                                          ; $41ff: $c7
	add hl, de                                       ; $4200: $19
	inc c                                            ; $4201: $0c
	call z, $0c14                                    ; $4202: $cc $14 $0c
	ld [de], a                                       ; $4205: $12
	inc c                                            ; $4206: $0c
	inc d                                            ; $4207: $14
	inc c                                            ; $4208: $0c
	rst JumpTable                                          ; $4209: $c7
	inc d                                            ; $420a: $14
	inc c                                            ; $420b: $0c
	call z, $0c12                                    ; $420c: $cc $12 $0c
	inc d                                            ; $420f: $14
	inc c                                            ; $4210: $0c
	rla                                              ; $4211: $17

jr_036_4212:
	inc c                                            ; $4212: $0c
	add hl, de                                       ; $4213: $19
	ld b, $17                                        ; $4214: $06 $17
	ld b, $14                                        ; $4216: $06 $14

jr_036_4218:
	inc c                                            ; $4218: $0c
	ld [de], a                                       ; $4219: $12
	inc c                                            ; $421a: $0c
	inc d                                            ; $421b: $14
	inc c                                            ; $421c: $0c
	ld [de], a                                       ; $421d: $12
	inc c                                            ; $421e: $0c
	or c                                             ; $421f: $b1
	sub c                                            ; $4220: $91
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	inc d                                            ; $4223: $14
	ld [de], a                                       ; $4224: $12
	add $14                                          ; $4225: $c6 $14
	rrca                                             ; $4227: $0f
	call nz, $1614                                   ; $4228: $c4 $14 $16
	rst JumpTable                                          ; $422b: $c7
	jp nc, Jump_036_7e93                             ; $422c: $d2 $93 $7e

	nop                                              ; $422f: $00
	sub [hl]                                         ; $4230: $96
	ld h, h                                          ; $4231: $64
	rlca                                             ; $4232: $07
	inc sp                                           ; $4233: $33
	inc c                                            ; $4234: $0c
	inc [hl]                                         ; $4235: $34
	inc c                                            ; $4236: $0c
	inc sp                                           ; $4237: $33
	jr nc, @-$49                                     ; $4238: $30 $b5

	sub d                                            ; $423a: $92
	inc bc                                           ; $423b: $03
	ld d, b                                          ; $423c: $50
	rlca                                             ; $423d: $07
	inc hl                                           ; $423e: $23
	jr jr_036_4266                                   ; $423f: $18 $25

	ld de, $c1b5                                     ; $4241: $11 $b5 $c1
	inc bc                                           ; $4244: $03
	ld h, h                                          ; $4245: $64
	inc bc                                           ; $4246: $03
	inc d                                            ; $4247: $14
	inc c                                            ; $4248: $0c
	rst JumpTable                                          ; $4249: $c7
	inc d                                            ; $424a: $14
	inc c                                            ; $424b: $0c
	call z, $0c12                                    ; $424c: $cc $12 $0c
	inc d                                            ; $424f: $14
	inc c                                            ; $4250: $0c
	add hl, de                                       ; $4251: $19
	inc c                                            ; $4252: $0c
	rst JumpTable                                          ; $4253: $c7
	add hl, de                                       ; $4254: $19
	inc c                                            ; $4255: $0c
	call z, $0c14                                    ; $4256: $cc $14 $0c
	ld [de], a                                       ; $4259: $12
	inc c                                            ; $425a: $0c
	inc d                                            ; $425b: $14
	inc c                                            ; $425c: $0c
	rst JumpTable                                          ; $425d: $c7
	inc d                                            ; $425e: $14
	inc c                                            ; $425f: $0c
	call z, $0c12                                    ; $4260: $cc $12 $0c
	inc d                                            ; $4263: $14
	inc c                                            ; $4264: $0c
	rla                                              ; $4265: $17

jr_036_4266:
	inc c                                            ; $4266: $0c
	add hl, de                                       ; $4267: $19
	ld b, $17                                        ; $4268: $06 $17
	ld b, $14                                        ; $426a: $06 $14
	inc c                                            ; $426c: $0c
	ld [de], a                                       ; $426d: $12
	inc c                                            ; $426e: $0c
	rl h                                             ; $426f: $cb $14
	inc c                                            ; $4271: $0c
	jp z, $0c17                                      ; $4272: $ca $17 $0c

	inc d                                            ; $4275: $14
	inc de                                           ; $4276: $13
	or l                                             ; $4277: $b5
	sub d                                            ; $4278: $92
	ld [bc], a                                       ; $4279: $02
	ld d, b                                          ; $427a: $50
	ld [bc], a                                       ; $427b: $02
	cp [hl]                                          ; $427c: $be
	inc c                                            ; $427d: $0c
	dec a                                            ; $427e: $3d
	dec a                                            ; $427f: $3d
	dec sp                                           ; $4280: $3b
	dec sp                                           ; $4281: $3b
	cp [hl]                                          ; $4282: $be
	ret z                                            ; $4283: $c8

	cp [hl]                                          ; $4284: $be
	inc c                                            ; $4285: $0c
	jr c, @+$3a                                      ; $4286: $38 $38

	ld [hl], $36                                     ; $4288: $36 $36
	inc sp                                           ; $428a: $33
	inc sp                                           ; $428b: $33
	ld sp, $be2f                                     ; $428c: $31 $2f $be
	inc l                                            ; $428f: $2c
	dec b                                            ; $4290: $05
	or l                                             ; $4291: $b5
	or c                                             ; $4292: $b1
	ld [bc], a                                       ; $4293: $02
	ld d, b                                          ; $4294: $50
	inc bc                                           ; $4295: $03
	ld a, [hl]                                       ; $4296: $7e
	ld a, [hl+]                                      ; $4297: $2a
	nop                                              ; $4298: $00
	xor c                                            ; $4299: $a9
	ld e, $0c                                        ; $429a: $1e $0c
	rst JumpTable                                          ; $429c: $c7
	ld e, $0c                                        ; $429d: $1e $0c
	rr [hl]                                          ; $429f: $cb $1e
	inc c                                            ; $42a1: $0c
	jr nz, jr_036_42b0                               ; $42a2: $20 $0c

	inc hl                                           ; $42a4: $23
	inc c                                            ; $42a5: $0c
	rst JumpTable                                          ; $42a6: $c7
	inc hl                                           ; $42a7: $23
	inc c                                            ; $42a8: $0c
	rr h                                             ; $42a9: $cb $1c
	inc c                                            ; $42ab: $0c
	add hl, de                                       ; $42ac: $19
	inc c                                            ; $42ad: $0c
	rla                                              ; $42ae: $17
	inc c                                            ; $42af: $0c

jr_036_42b0:
	rst JumpTable                                          ; $42b0: $c7
	rla                                              ; $42b1: $17
	inc c                                            ; $42b2: $0c
	res 7, [hl]                                      ; $42b3: $cb $be
	inc c                                            ; $42b5: $0c
	rla                                              ; $42b6: $17
	add hl, de                                       ; $42b7: $19
	rla                                              ; $42b8: $17
	add hl, de                                       ; $42b9: $19
	inc hl                                           ; $42ba: $23
	cp [hl]                                          ; $42bb: $be
	rst JumpTable                                          ; $42bc: $c7
	inc hl                                           ; $42bd: $23
	inc c                                            ; $42be: $0c
	rr [hl]                                          ; $42bf: $cb $1e
	inc c                                            ; $42c1: $0c
	rst JumpTable                                          ; $42c2: $c7
	ld e, $0c                                        ; $42c3: $1e $0c
	rr [hl]                                          ; $42c5: $cb $1e
	inc c                                            ; $42c7: $0c
	jr nz, jr_036_42d6                               ; $42c8: $20 $0c

	inc hl                                           ; $42ca: $23
	inc c                                            ; $42cb: $0c
	add $23                                          ; $42cc: $c6 $23
	inc c                                            ; $42ce: $0c
	rr h                                             ; $42cf: $cb $1c
	inc c                                            ; $42d1: $0c
	add hl, de                                       ; $42d2: $19
	inc c                                            ; $42d3: $0c
	rla                                              ; $42d4: $17
	inc c                                            ; $42d5: $0c

jr_036_42d6:
	rst JumpTable                                          ; $42d6: $c7
	rla                                              ; $42d7: $17
	inc c                                            ; $42d8: $0c
	res 7, [hl]                                      ; $42d9: $cb $be
	inc c                                            ; $42db: $0c
	rla                                              ; $42dc: $17
	add hl, de                                       ; $42dd: $19
	rla                                              ; $42de: $17
	add hl, de                                       ; $42df: $19
	inc hl                                           ; $42e0: $23
	cp [hl]                                          ; $42e1: $be
	rst JumpTable                                          ; $42e2: $c7
	inc hl                                           ; $42e3: $23
	inc c                                            ; $42e4: $0c
	res 6, l                                         ; $42e5: $cb $b5
	or c                                             ; $42e7: $b1
	ld [bc], a                                       ; $42e8: $02
	ld d, b                                          ; $42e9: $50
	inc bc                                           ; $42ea: $03
	ld a, [hl]                                       ; $42eb: $7e
	ld a, [hl+]                                      ; $42ec: $2a
	nop                                              ; $42ed: $00
	xor c                                            ; $42ee: $a9
	ld e, $0c                                        ; $42ef: $1e $0c
	rst JumpTable                                          ; $42f1: $c7
	ld e, $0c                                        ; $42f2: $1e $0c
	rl a                                             ; $42f4: $cb $17
	inc c                                            ; $42f6: $0c
	add hl, de                                       ; $42f7: $19
	inc c                                            ; $42f8: $0c
	inc hl                                           ; $42f9: $23
	inc c                                            ; $42fa: $0c
	rst JumpTable                                          ; $42fb: $c7
	inc hl                                           ; $42fc: $23
	inc c                                            ; $42fd: $0c
	rr h                                             ; $42fe: $cb $1c
	inc c                                            ; $4300: $0c
	add hl, de                                       ; $4301: $19
	inc c                                            ; $4302: $0c
	ld e, $0c                                        ; $4303: $1e $0c
	rst JumpTable                                          ; $4305: $c7
	ld e, $0c                                        ; $4306: $1e $0c
	res 7, [hl]                                      ; $4308: $cb $be
	inc c                                            ; $430a: $0c
	ld e, $20                                        ; $430b: $1e $20
	inc hl                                           ; $430d: $23
	dec h                                            ; $430e: $25
	ld e, $20                                        ; $430f: $1e $20
	cp [hl]                                          ; $4311: $be
	ld e, $0c                                        ; $4312: $1e $0c
	rst JumpTable                                          ; $4314: $c7
	ld e, $0c                                        ; $4315: $1e $0c
	rr [hl]                                          ; $4317: $cb $1e
	inc c                                            ; $4319: $0c
	jr nz, jr_036_4328                               ; $431a: $20 $0c

	ld e, $0c                                        ; $431c: $1e $0c
	rst JumpTable                                          ; $431e: $c7
	ld e, $0c                                        ; $431f: $1e $0c
	rr [hl]                                          ; $4321: $cb $1e
	inc c                                            ; $4323: $0c
	dec de                                           ; $4324: $1b
	inc c                                            ; $4325: $0c
	add hl, de                                       ; $4326: $19
	inc c                                            ; $4327: $0c

jr_036_4328:
	rst JumpTable                                          ; $4328: $c7
	add hl, de                                       ; $4329: $19
	inc c                                            ; $432a: $0c
	rr c                                             ; $432b: $cb $19
	inc c                                            ; $432d: $0c
	dec de                                           ; $432e: $1b
	inc c                                            ; $432f: $0c
	call z, $0c1e                                    ; $4330: $cc $1e $0c
	jr nz, jr_036_4341                               ; $4333: $20 $0c

	or c                                             ; $4335: $b1
	sub c                                            ; $4336: $91
	nop                                              ; $4337: $00
	nop                                              ; $4338: $00
	dec de                                           ; $4339: $1b
	inc c                                            ; $433a: $0c
	ld e, $09                                        ; $433b: $1e $09
	ret z                                            ; $433d: $c8

	ld e, $08                                        ; $433e: $1e $08
	or [hl]                                          ; $4340: $b6

jr_036_4341:
	ld h, b                                          ; $4341: $60
	ld h, e                                          ; $4342: $63
	inc bc                                           ; $4343: $03
	jr z, @+$08                                      ; $4344: $28 $06

	ld a, [hl]                                       ; $4346: $7e
	dec l                                            ; $4347: $2d
	nop                                              ; $4348: $00
	and b                                            ; $4349: $a0
	nop                                              ; $434a: $00
	ld [$302c], sp                                   ; $434b: $08 $2c $30
	inc sp                                           ; $434e: $33
	jr nc, jr_036_4382                               ; $434f: $30 $31

	jr jr_036_4382                                   ; $4351: $18 $2f

	inc c                                            ; $4353: $0c
	ld l, $0c                                        ; $4354: $2e $0c
	inc l                                            ; $4356: $2c
	jr @+$2c                                         ; $4357: $18 $2a

	jr jr_036_4382                                   ; $4359: $18 $27

	inc c                                            ; $435b: $0c
	ld a, [hl+]                                      ; $435c: $2a
	inc c                                            ; $435d: $0c
	sub [hl]                                         ; $435e: $96
	adc h                                            ; $435f: $8c
	rlca                                             ; $4360: $07
	inc l                                            ; $4361: $2c
	and b                                            ; $4362: $a0
	cp $ff                                           ; $4363: $fe $ff
	cp $b6                                           ; $4365: $fe $b6
	ld l, [hl]                                       ; $4367: $6e
	ld [hl], c                                       ; $4368: $71
	ld [bc], a                                       ; $4369: $02
	ld h, h                                          ; $436a: $64
	rlca                                             ; $436b: $07
	ld a, [hl]                                       ; $436c: $7e
	ld a, [hl+]                                      ; $436d: $2a
	nop                                              ; $436e: $00
	xor d                                            ; $436f: $aa
	ld l, $08                                        ; $4370: $2e $08
	call nz, $042e                                   ; $4372: $c4 $2e $04
	rst JumpTable                                          ; $4375: $c7
	inc l                                            ; $4376: $2c
	ld [$2cc4], sp                                   ; $4377: $08 $c4 $2c
	inc b                                            ; $437a: $04
	rst JumpTable                                          ; $437b: $c7
	ld l, $08                                        ; $437c: $2e $08
	call nz, $042e                                   ; $437e: $c4 $2e $04
	rst JumpTable                                          ; $4381: $c7

jr_036_4382:
	ld sp, $c408                                     ; $4382: $31 $08 $c4
	ld sp, $c704                                     ; $4385: $31 $04 $c7
	ld l, $09                                        ; $4388: $2e $09
	call nz, $0f2e                                   ; $438a: $c4 $2e $0f
	rst JumpTable                                          ; $438d: $c7
	ld l, $08                                        ; $438e: $2e $08
	call nz, $042e                                   ; $4390: $c4 $2e $04
	rst JumpTable                                          ; $4393: $c7
	inc l                                            ; $4394: $2c
	ld [$2cc4], sp                                   ; $4395: $08 $c4 $2c
	inc b                                            ; $4398: $04
	rst JumpTable                                          ; $4399: $c7
	ld l, $09                                        ; $439a: $2e $09
	call nz, $0f2e                                   ; $439c: $c4 $2e $0f
	rst JumpTable                                          ; $439f: $c7
	ld l, $08                                        ; $43a0: $2e $08
	call nz, $042e                                   ; $43a2: $c4 $2e $04
	rst JumpTable                                          ; $43a5: $c7
	ld sp, $c408                                     ; $43a6: $31 $08 $c4
	ld sp, $c704                                     ; $43a9: $31 $04 $c7
	inc sp                                           ; $43ac: $33
	ld [$33c4], sp                                   ; $43ad: $08 $c4 $33
	inc b                                            ; $43b0: $04
	rst JumpTable                                          ; $43b1: $c7
	ld l, $08                                        ; $43b2: $2e $08
	call nz, $042e                                   ; $43b4: $c4 $2e $04
	rst JumpTable                                          ; $43b7: $c7
	inc l                                            ; $43b8: $2c
	ld [$2cc4], sp                                   ; $43b9: $08 $c4 $2c
	inc b                                            ; $43bc: $04
	rst JumpTable                                          ; $43bd: $c7
	add hl, hl                                       ; $43be: $29
	ld [$29c4], sp                                   ; $43bf: $08 $c4 $29
	inc b                                            ; $43c2: $04
	rst JumpTable                                          ; $43c3: $c7
	ld l, $08                                        ; $43c4: $2e $08
	call nz, $042e                                   ; $43c6: $c4 $2e $04
	rst JumpTable                                          ; $43c9: $c7
	inc l                                            ; $43ca: $2c
	ld [$2cc4], sp                                   ; $43cb: $08 $c4 $2c
	inc b                                            ; $43ce: $04
	rst JumpTable                                          ; $43cf: $c7
	ld l, $08                                        ; $43d0: $2e $08
	call nz, $042e                                   ; $43d2: $c4 $2e $04
	rst JumpTable                                          ; $43d5: $c7
	ld sp, $c408                                     ; $43d6: $31 $08 $c4
	ld sp, $c704                                     ; $43d9: $31 $04 $c7
	ld l, $09                                        ; $43dc: $2e $09
	call nz, $0f2e                                   ; $43de: $c4 $2e $0f
	rst JumpTable                                          ; $43e1: $c7
	ld l, $08                                        ; $43e2: $2e $08
	call nz, $042e                                   ; $43e4: $c4 $2e $04
	rst JumpTable                                          ; $43e7: $c7
	inc l                                            ; $43e8: $2c
	ld [$2cc4], sp                                   ; $43e9: $08 $c4 $2c
	inc b                                            ; $43ec: $04
	rst JumpTable                                          ; $43ed: $c7
	ld l, $09                                        ; $43ee: $2e $09
	call nz, $0f2e                                   ; $43f0: $c4 $2e $0f
	rst JumpTable                                          ; $43f3: $c7
	ld l, $08                                        ; $43f4: $2e $08
	call nz, $042e                                   ; $43f6: $c4 $2e $04
	rst JumpTable                                          ; $43f9: $c7
	ld sp, $c408                                     ; $43fa: $31 $08 $c4
	ld sp, $c704                                     ; $43fd: $31 $04 $c7
	inc sp                                           ; $4400: $33
	ld [$33c4], sp                                   ; $4401: $08 $c4 $33
	inc b                                            ; $4404: $04
	rst JumpTable                                          ; $4405: $c7
	ld l, $08                                        ; $4406: $2e $08
	call nz, $042e                                   ; $4408: $c4 $2e $04
	rst JumpTable                                          ; $440b: $c7
	inc l                                            ; $440c: $2c
	ld [$2cc4], sp                                   ; $440d: $08 $c4 $2c
	inc b                                            ; $4410: $04
	rst JumpTable                                          ; $4411: $c7
	dec l                                            ; $4412: $2d
	ld [$2dc4], sp                                   ; $4413: $08 $c4 $2d
	inc b                                            ; $4416: $04
	or l                                             ; $4417: $b5
	ld [hl], c                                       ; $4418: $71
	ld [bc], a                                       ; $4419: $02
	ld h, h                                          ; $441a: $64
	rlca                                             ; $441b: $07
	ld a, [hl]                                       ; $441c: $7e
	ld a, [hl+]                                      ; $441d: $2a
	nop                                              ; $441e: $00
	xor d                                            ; $441f: $aa
	ld l, $08                                        ; $4420: $2e $08
	call nz, $042e                                   ; $4422: $c4 $2e $04
	rst JumpTable                                          ; $4425: $c7
	inc l                                            ; $4426: $2c
	ld [$2cc4], sp                                   ; $4427: $08 $c4 $2c
	inc b                                            ; $442a: $04
	rst JumpTable                                          ; $442b: $c7
	ld l, $08                                        ; $442c: $2e $08
	call nz, $042e                                   ; $442e: $c4 $2e $04
	rst JumpTable                                          ; $4431: $c7
	ld sp, $c408                                     ; $4432: $31 $08 $c4
	ld sp, $c704                                     ; $4435: $31 $04 $c7
	ld l, $09                                        ; $4438: $2e $09
	call nz, $0f2e                                   ; $443a: $c4 $2e $0f
	rst JumpTable                                          ; $443d: $c7
	ld l, $08                                        ; $443e: $2e $08
	call nz, $042e                                   ; $4440: $c4 $2e $04
	rst JumpTable                                          ; $4443: $c7
	inc l                                            ; $4444: $2c
	ld [$2cc4], sp                                   ; $4445: $08 $c4 $2c
	inc b                                            ; $4448: $04
	rst JumpTable                                          ; $4449: $c7
	ld l, $09                                        ; $444a: $2e $09
	call nz, $0f2e                                   ; $444c: $c4 $2e $0f
	rst JumpTable                                          ; $444f: $c7
	ld l, $08                                        ; $4450: $2e $08
	call nz, $042e                                   ; $4452: $c4 $2e $04
	rst JumpTable                                          ; $4455: $c7
	ld sp, $c408                                     ; $4456: $31 $08 $c4
	ld sp, $c704                                     ; $4459: $31 $04 $c7
	inc sp                                           ; $445c: $33
	ld [$33c4], sp                                   ; $445d: $08 $c4 $33
	inc b                                            ; $4460: $04
	rst JumpTable                                          ; $4461: $c7
	ld l, $08                                        ; $4462: $2e $08
	call nz, $042e                                   ; $4464: $c4 $2e $04
	rst JumpTable                                          ; $4467: $c7
	inc l                                            ; $4468: $2c
	ld [$2cc4], sp                                   ; $4469: $08 $c4 $2c

jr_036_446c:
	inc b                                            ; $446c: $04
	rst JumpTable                                          ; $446d: $c7
	add hl, hl                                       ; $446e: $29
	ld [$29c4], sp                                   ; $446f: $08 $c4 $29
	inc b                                            ; $4472: $04
	rst JumpTable                                          ; $4473: $c7
	ld l, $08                                        ; $4474: $2e $08
	call nz, $042e                                   ; $4476: $c4 $2e $04
	rst JumpTable                                          ; $4479: $c7
	inc l                                            ; $447a: $2c
	ld [$2cc4], sp                                   ; $447b: $08 $c4 $2c
	inc b                                            ; $447e: $04
	rst JumpTable                                          ; $447f: $c7
	ld l, $08                                        ; $4480: $2e $08
	call nz, $042e                                   ; $4482: $c4 $2e $04
	rst JumpTable                                          ; $4485: $c7
	ld sp, $c408                                     ; $4486: $31 $08 $c4
	ld sp, $c704                                     ; $4489: $31 $04 $c7
	ld l, $09                                        ; $448c: $2e $09
	call nz, $0f2e                                   ; $448e: $c4 $2e $0f
	rst JumpTable                                          ; $4491: $c7
	ld l, $08                                        ; $4492: $2e $08
	call nz, $042e                                   ; $4494: $c4 $2e $04
	rst JumpTable                                          ; $4497: $c7
	inc l                                            ; $4498: $2c
	ld [$2cc4], sp                                   ; $4499: $08 $c4 $2c
	inc b                                            ; $449c: $04
	rst JumpTable                                          ; $449d: $c7
	ld l, $12                                        ; $449e: $2e $12
	or c                                             ; $44a0: $b1
	ld d, c                                          ; $44a1: $51
	ld h, h                                          ; $44a2: $64
	rlca                                             ; $44a3: $07
	ld l, $0f                                        ; $44a4: $2e $0f
	jp $0f2e                                         ; $44a6: $c3 $2e $0f


	or l                                             ; $44a9: $b5
	or c                                             ; $44aa: $b1
	inc bc                                           ; $44ab: $03
	ld d, b                                          ; $44ac: $50
	dec b                                            ; $44ad: $05
	ld a, [hl]                                       ; $44ae: $7e
	ld a, [hl+]                                      ; $44af: $2a
	nop                                              ; $44b0: $00
	and c                                            ; $44b1: $a1
	rla                                              ; $44b2: $17
	jr jr_036_44ce                                   ; $44b3: $18 $19

	jr jr_036_446c                                   ; $44b5: $18 $b5

	pop af                                           ; $44b7: $f1
	inc bc                                           ; $44b8: $03
	ld d, b                                          ; $44b9: $50
	ld [bc], a                                       ; $44ba: $02
	ld a, [hl]                                       ; $44bb: $7e
	ld a, [hl+]                                      ; $44bc: $2a
	nop                                              ; $44bd: $00
	xor c                                            ; $44be: $a9
	dec de                                           ; $44bf: $1b
	inc c                                            ; $44c0: $0c
	rr e                                             ; $44c1: $cb $1b
	inc c                                            ; $44c3: $0c
	rst GetHLinHL                                          ; $44c4: $cf
	add hl, de                                       ; $44c5: $19
	inc c                                            ; $44c6: $0c
	dec de                                           ; $44c7: $1b
	inc c                                            ; $44c8: $0c
	jr nz, jr_036_44d7                               ; $44c9: $20 $0c

	jp z, $0c20                                      ; $44cb: $ca $20 $0c

jr_036_44ce:
	rst GetHLinHL                                          ; $44ce: $cf
	dec de                                           ; $44cf: $1b
	inc c                                            ; $44d0: $0c
	add hl, de                                       ; $44d1: $19
	inc c                                            ; $44d2: $0c
	dec de                                           ; $44d3: $1b
	inc c                                            ; $44d4: $0c
	rr e                                             ; $44d5: $cb $1b

jr_036_44d7:
	inc c                                            ; $44d7: $0c
	rst GetHLinHL                                          ; $44d8: $cf
	add hl, de                                       ; $44d9: $19
	inc c                                            ; $44da: $0c
	dec de                                           ; $44db: $1b
	inc c                                            ; $44dc: $0c
	ld e, $0c                                        ; $44dd: $1e $0c
	jr nz, jr_036_44e7                               ; $44df: $20 $06

	ld e, $06                                        ; $44e1: $1e $06
	dec de                                           ; $44e3: $1b
	inc c                                            ; $44e4: $0c
	add hl, de                                       ; $44e5: $19
	inc c                                            ; $44e6: $0c

jr_036_44e7:
	dec de                                           ; $44e7: $1b
	inc c                                            ; $44e8: $0c
	add hl, de                                       ; $44e9: $19
	inc c                                            ; $44ea: $0c
	or c                                             ; $44eb: $b1
	sub c                                            ; $44ec: $91
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	dec de                                           ; $44ef: $1b

jr_036_44f0:
	add hl, de                                       ; $44f0: $19
	rst JumpTable                                          ; $44f1: $c7
	dec de                                           ; $44f2: $1b
	add hl, bc                                       ; $44f3: $09
	call nz, $081b                                   ; $44f4: $c4 $1b $08
	jp nz, $061b                                     ; $44f7: $c2 $1b $06

	or l                                             ; $44fa: $b5
	sub e                                            ; $44fb: $93
	inc bc                                           ; $44fc: $03
	ld h, h                                          ; $44fd: $64
	rlca                                             ; $44fe: $07
	ld a, [hl]                                       ; $44ff: $7e
	nop                                              ; $4500: $00
	inc sp                                           ; $4501: $33
	inc c                                            ; $4502: $0c
	inc [hl]                                         ; $4503: $34
	inc c                                            ; $4504: $0c
	inc sp                                           ; $4505: $33
	inc c                                            ; $4506: $0c
	sub e                                            ; $4507: $93
	set 2, c                                         ; $4508: $cb $d1
	ld [de], a                                       ; $450a: $12
	inc c                                            ; $450b: $0c
	inc d                                            ; $450c: $14
	inc c                                            ; $450d: $0c
	ld a, [hl]                                       ; $450e: $7e
	scf                                              ; $450f: $37
	nop                                              ; $4510: $00
	xor c                                            ; $4511: $a9
	add hl, de                                       ; $4512: $19
	inc c                                            ; $4513: $0c
	or c                                             ; $4514: $b1
	pop bc                                           ; $4515: $c1
	ld d, b                                          ; $4516: $50
	dec b                                            ; $4517: $05
	ld a, [hl]                                       ; $4518: $7e
	ld a, [hl+]                                      ; $4519: $2a
	nop                                              ; $451a: $00
	xor c                                            ; $451b: $a9
	rla                                              ; $451c: $17
	jr @+$1b                                         ; $451d: $18 $19

	jr jr_036_44f0                                   ; $451f: $18 $cf

	pop de                                           ; $4521: $d1
	sub e                                            ; $4522: $93
	ld a, [hl]                                       ; $4523: $7e
	ld a, [hl+]                                      ; $4524: $2a
	nop                                              ; $4525: $00
	xor c                                            ; $4526: $a9
	sub [hl]                                         ; $4527: $96
	ld d, b                                          ; $4528: $50
	ld [bc], a                                       ; $4529: $02
	dec de                                           ; $452a: $1b
	inc c                                            ; $452b: $0c
	rr e                                             ; $452c: $cb $1b
	inc c                                            ; $452e: $0c
	rst GetHLinHL                                          ; $452f: $cf
	add hl, de                                       ; $4530: $19
	inc c                                            ; $4531: $0c
	dec de                                           ; $4532: $1b
	inc c                                            ; $4533: $0c
	jr nz, jr_036_4542                               ; $4534: $20 $0c

	jp z, $0c20                                      ; $4536: $ca $20 $0c

	rst GetHLinHL                                          ; $4539: $cf
	dec de                                           ; $453a: $1b
	inc c                                            ; $453b: $0c
	add hl, de                                       ; $453c: $19
	inc c                                            ; $453d: $0c
	dec de                                           ; $453e: $1b
	inc c                                            ; $453f: $0c
	rr e                                             ; $4540: $cb $1b

jr_036_4542:
	inc c                                            ; $4542: $0c
	rst GetHLinHL                                          ; $4543: $cf
	add hl, de                                       ; $4544: $19
	inc c                                            ; $4545: $0c

jr_036_4546:
	dec de                                           ; $4546: $1b
	inc c                                            ; $4547: $0c
	ld e, $0c                                        ; $4548: $1e $0c
	jr nz, jr_036_4552                               ; $454a: $20 $06

	ld e, $06                                        ; $454c: $1e $06
	dec de                                           ; $454e: $1b
	inc c                                            ; $454f: $0c
	add hl, de                                       ; $4550: $19
	inc c                                            ; $4551: $0c

jr_036_4552:
	dec de                                           ; $4552: $1b
	inc c                                            ; $4553: $0c
	ld e, $0c                                        ; $4554: $1e $0c
	dec de                                           ; $4556: $1b
	inc c                                            ; $4557: $0c
	set 2, e                                         ; $4558: $cb $d3
	sub d                                            ; $455a: $92
	ld a, [hl]                                       ; $455b: $7e
	nop                                              ; $455c: $00
	sub [hl]                                         ; $455d: $96
	ld d, b                                          ; $455e: $50
	ld [bc], a                                       ; $455f: $02
	cp [hl]                                          ; $4560: $be
	inc c                                            ; $4561: $0c
	jr c, jr_036_459c                                ; $4562: $38 $38

	ld [hl], $36                                     ; $4564: $36 $36
	cp [hl]                                          ; $4566: $be
	jp z, $0cbe                                      ; $4567: $ca $be $0c

	inc sp                                           ; $456a: $33
	inc sp                                           ; $456b: $33
	ld sp, $2f31                                     ; $456c: $31 $31 $2f
	cp [hl]                                          ; $456f: $be
	call z, $93d1                                    ; $4570: $cc $d1 $93
	ld a, [hl]                                       ; $4573: $7e
	ld a, [hl+]                                      ; $4574: $2a
	nop                                              ; $4575: $00
	xor d                                            ; $4576: $aa
	inc hl                                           ; $4577: $23
	jr @+$27                                         ; $4578: $18 $25

	jr jr_036_4546                                   ; $457a: $18 $ca

	pop de                                           ; $457c: $d1
	sub e                                            ; $457d: $93
	ld a, [hl]                                       ; $457e: $7e
	ld a, [hl+]                                      ; $457f: $2a
	nop                                              ; $4580: $00
	xor d                                            ; $4581: $aa
	sub [hl]                                         ; $4582: $96
	ld d, b                                          ; $4583: $50
	inc bc                                           ; $4584: $03
	daa                                              ; $4585: $27
	inc c                                            ; $4586: $0c
	ret z                                            ; $4587: $c8

	daa                                              ; $4588: $27
	inc c                                            ; $4589: $0c
	jp z, $0c25                                      ; $458a: $ca $25 $0c

	daa                                              ; $458d: $27
	inc c                                            ; $458e: $0c
	inc l                                            ; $458f: $2c
	inc c                                            ; $4590: $0c
	rst JumpTable                                          ; $4591: $c7
	inc l                                            ; $4592: $2c
	inc c                                            ; $4593: $0c
	jp z, $0c27                                      ; $4594: $ca $27 $0c

	dec h                                            ; $4597: $25
	inc c                                            ; $4598: $0c
	daa                                              ; $4599: $27
	inc c                                            ; $459a: $0c
	ret z                                            ; $459b: $c8

jr_036_459c:
	daa                                              ; $459c: $27
	inc c                                            ; $459d: $0c
	jp z, $0c25                                      ; $459e: $ca $25 $0c

jr_036_45a1:
	daa                                              ; $45a1: $27
	inc c                                            ; $45a2: $0c
	ld a, [hl+]                                      ; $45a3: $2a
	inc c                                            ; $45a4: $0c
	inc l                                            ; $45a5: $2c
	ld b, $2a                                        ; $45a6: $06 $2a
	ld b, $27                                        ; $45a8: $06 $27
	inc c                                            ; $45aa: $0c
	dec h                                            ; $45ab: $25
	inc c                                            ; $45ac: $0c
	daa                                              ; $45ad: $27
	inc c                                            ; $45ae: $0c
	dec h                                            ; $45af: $25
	inc c                                            ; $45b0: $0c
	or c                                             ; $45b1: $b1

jr_036_45b2:
	ld [hl], c                                       ; $45b2: $71
	nop                                              ; $45b3: $00
	nop                                              ; $45b4: $00
	daa                                              ; $45b5: $27
	inc d                                            ; $45b6: $14
	add $27                                          ; $45b7: $c6 $27
	dec c                                            ; $45b9: $0d
	call nz, $0827                                   ; $45ba: $c4 $27 $08
	jp $0727                                         ; $45bd: $c3 $27 $07


	ret                                              ; $45c0: $c9


	db $d3                                           ; $45c1: $d3
	sub e                                            ; $45c2: $93
	ld a, [hl]                                       ; $45c3: $7e
	nop                                              ; $45c4: $00
	sub [hl]                                         ; $45c5: $96
	ld h, h                                          ; $45c6: $64
	rlca                                             ; $45c7: $07
	inc sp                                           ; $45c8: $33
	inc c                                            ; $45c9: $0c
	inc [hl]                                         ; $45ca: $34
	inc c                                            ; $45cb: $0c
	inc sp                                           ; $45cc: $33
	inc c                                            ; $45cd: $0c
	sub e                                            ; $45ce: $93
	rst JumpTable                                          ; $45cf: $c7
	pop de                                           ; $45d0: $d1
	ld e, $0c                                        ; $45d1: $1e $0c
	sub [hl]                                         ; $45d3: $96
	nop                                              ; $45d4: $00
	nop                                              ; $45d5: $00
	jr nz, jr_036_45e4                               ; $45d6: $20 $0c

	inc hl                                           ; $45d8: $23
	inc bc                                           ; $45d9: $03
	inc h                                            ; $45da: $24
	inc bc                                           ; $45db: $03
	dec h                                            ; $45dc: $25
	ld b, $b1                                        ; $45dd: $06 $b1
	add c                                            ; $45df: $81
	ld d, b                                          ; $45e0: $50
	dec b                                            ; $45e1: $05
	ld a, [hl]                                       ; $45e2: $7e
	ld a, [hl+]                                      ; $45e3: $2a

jr_036_45e4:
	nop                                              ; $45e4: $00
	xor c                                            ; $45e5: $a9
	inc hl                                           ; $45e6: $23
	jr jr_036_45b2                                   ; $45e7: $18 $c9

	dec h                                            ; $45e9: $25
	jr jr_036_45a1                                   ; $45ea: $18 $b5

	and c                                            ; $45ec: $a1
	inc bc                                           ; $45ed: $03
	ld d, b                                          ; $45ee: $50
	inc bc                                           ; $45ef: $03
	ld a, [hl]                                       ; $45f0: $7e
	ld a, [hl+]                                      ; $45f1: $2a
	nop                                              ; $45f2: $00
	xor d                                            ; $45f3: $aa
	daa                                              ; $45f4: $27
	inc c                                            ; $45f5: $0c
	ret z                                            ; $45f6: $c8

	daa                                              ; $45f7: $27
	inc c                                            ; $45f8: $0c
	jp z, $0c25                                      ; $45f9: $ca $25 $0c

	daa                                              ; $45fc: $27
	inc c                                            ; $45fd: $0c
	inc l                                            ; $45fe: $2c
	inc c                                            ; $45ff: $0c
	rst JumpTable                                          ; $4600: $c7
	inc l                                            ; $4601: $2c
	inc c                                            ; $4602: $0c
	jp z, $0c27                                      ; $4603: $ca $27 $0c

	dec h                                            ; $4606: $25
	inc c                                            ; $4607: $0c
	daa                                              ; $4608: $27
	inc c                                            ; $4609: $0c
	ret z                                            ; $460a: $c8

	daa                                              ; $460b: $27
	inc c                                            ; $460c: $0c
	jp z, $0c25                                      ; $460d: $ca $25 $0c

	daa                                              ; $4610: $27
	inc c                                            ; $4611: $0c
	ld a, [hl+]                                      ; $4612: $2a
	inc c                                            ; $4613: $0c
	inc l                                            ; $4614: $2c
	ld b, $2a                                        ; $4615: $06 $2a
	ld b, $27                                        ; $4617: $06 $27
	inc c                                            ; $4619: $0c
	dec h                                            ; $461a: $25
	inc c                                            ; $461b: $0c
	ret                                              ; $461c: $c9


	daa                                              ; $461d: $27
	inc c                                            ; $461e: $0c
	ret z                                            ; $461f: $c8

	ld a, [hl+]                                      ; $4620: $2a
	inc c                                            ; $4621: $0c
	daa                                              ; $4622: $27
	inc c                                            ; $4623: $0c
	or l                                             ; $4624: $b5
	or e                                             ; $4625: $b3
	ld [bc], a                                       ; $4626: $02
	ld d, b                                          ; $4627: $50
	ld [bc], a                                       ; $4628: $02
	ld a, [hl]                                       ; $4629: $7e
	nop                                              ; $462a: $00
	cp [hl]                                          ; $462b: $be
	inc c                                            ; $462c: $0c
	dec a                                            ; $462d: $3d
	dec a                                            ; $462e: $3d
	dec sp                                           ; $462f: $3b
	dec sp                                           ; $4630: $3b
	cp [hl]                                          ; $4631: $be
	jp z, $0cbe                                      ; $4632: $ca $be $0c

	jr c, jr_036_466f                                ; $4635: $38 $38

	ld [hl], $36                                     ; $4637: $36 $36
	inc sp                                           ; $4639: $33
	inc sp                                           ; $463a: $33
	ld sp, $2c2f                                     ; $463b: $31 $2f $2c
	cp [hl]                                          ; $463e: $be
	or l                                             ; $463f: $b5
	and c                                            ; $4640: $a1
	inc bc                                           ; $4641: $03
	ld d, b                                          ; $4642: $50
	inc bc                                           ; $4643: $03
	ld a, [hl]                                       ; $4644: $7e
	ld a, [hl+]                                      ; $4645: $2a
	nop                                              ; $4646: $00
	xor e                                            ; $4647: $ab
	cp [hl]                                          ; $4648: $be
	inc c                                            ; $4649: $0c
	inc l                                            ; $464a: $2c
	ld sp, $312c                                     ; $464b: $31 $2c $31
	inc sp                                           ; $464e: $33
	cp [hl]                                          ; $464f: $be
	rst JumpTable                                          ; $4650: $c7
	inc sp                                           ; $4651: $33
	inc c                                            ; $4652: $0c
	jp z, $d192                                      ; $4653: $ca $92 $d1

	ld a, [hl]                                       ; $4656: $7e
	ld a, [hl+]                                      ; $4657: $2a
	nop                                              ; $4658: $00
	xor c                                            ; $4659: $a9
	inc hl                                           ; $465a: $23
	inc c                                            ; $465b: $0c
	jr nz, jr_036_466a                               ; $465c: $20 $0c

	ld e, $0c                                        ; $465e: $1e $0c
	rst JumpTable                                          ; $4660: $c7
	ld e, $0c                                        ; $4661: $1e $0c
	jp z, $0cbe                                      ; $4663: $ca $be $0c

	ld e, $20                                        ; $4666: $1e $20
	ld e, $20                                        ; $4668: $1e $20

jr_036_466a:
	cp [hl]                                          ; $466a: $be
	sub e                                            ; $466b: $93
	ld a, [hl]                                       ; $466c: $7e
	ld a, [hl+]                                      ; $466d: $2a
	nop                                              ; $466e: $00

jr_036_466f:
	xor e                                            ; $466f: $ab
	inc sp                                           ; $4670: $33
	inc c                                            ; $4671: $0c
	inc l                                            ; $4672: $2c
	inc c                                            ; $4673: $0c
	cp [hl]                                          ; $4674: $be
	inc c                                            ; $4675: $0c
	ld a, [hl+]                                      ; $4676: $2a
	cpl                                              ; $4677: $2f
	ld a, [hl+]                                      ; $4678: $2a
	cpl                                              ; $4679: $2f
	ld sp, $c6be                                     ; $467a: $31 $be $c6
	ld sp, $ca0c                                     ; $467d: $31 $0c $ca
	sub d                                            ; $4680: $92

jr_036_4681:
	ld a, [hl]                                       ; $4681: $7e
	ld a, [hl+]                                      ; $4682: $2a
	nop                                              ; $4683: $00
	xor c                                            ; $4684: $a9
	inc hl                                           ; $4685: $23
	inc c                                            ; $4686: $0c
	jr nz, jr_036_4695                               ; $4687: $20 $0c

	ld e, $0c                                        ; $4689: $1e $0c
	rst JumpTable                                          ; $468b: $c7
	ld e, $0c                                        ; $468c: $1e $0c
	jp z, $0cbe                                      ; $468e: $ca $be $0c

	ld e, $20                                        ; $4691: $1e $20
	ld e, $20                                        ; $4693: $1e $20

jr_036_4695:
	cp [hl]                                          ; $4695: $be
	jp z, Jump_036_7e93                              ; $4696: $ca $93 $7e

	ld a, [hl+]                                      ; $4699: $2a
	nop                                              ; $469a: $00
	xor e                                            ; $469b: $ab
	ld a, [hl+]                                      ; $469c: $2a
	inc c                                            ; $469d: $0c
	rst JumpTable                                          ; $469e: $c7
	ld a, [hl+]                                      ; $469f: $2a
	inc c                                            ; $46a0: $0c
	or l                                             ; $46a1: $b5
	and c                                            ; $46a2: $a1
	inc bc                                           ; $46a3: $03
	ld d, b                                          ; $46a4: $50
	inc bc                                           ; $46a5: $03
	ld a, [hl]                                       ; $46a6: $7e
	ld a, [hl+]                                      ; $46a7: $2a
	nop                                              ; $46a8: $00
	xor d                                            ; $46a9: $aa
	inc l                                            ; $46aa: $2c
	inc c                                            ; $46ab: $0c
	rst JumpTable                                          ; $46ac: $c7
	inc l                                            ; $46ad: $2c
	inc c                                            ; $46ae: $0c
	jp z, Jump_036_7e92                              ; $46af: $ca $92 $7e

	ld a, [hl+]                                      ; $46b2: $2a
	nop                                              ; $46b3: $00
	xor c                                            ; $46b4: $a9
	ld e, $0c                                        ; $46b5: $1e $0c
	jr nz, @+$0e                                     ; $46b7: $20 $0c

	sub e                                            ; $46b9: $93
	ld a, [hl]                                       ; $46ba: $7e
	ld a, [hl+]                                      ; $46bb: $2a
	nop                                              ; $46bc: $00
	xor d                                            ; $46bd: $aa
	inc sp                                           ; $46be: $33
	inc c                                            ; $46bf: $0c
	add $33                                          ; $46c0: $c6 $33
	inc c                                            ; $46c2: $0c
	jp z, Jump_036_7e92                              ; $46c3: $ca $92 $7e

	ld a, [hl+]                                      ; $46c6: $2a
	nop                                              ; $46c7: $00
	xor c                                            ; $46c8: $a9
	inc hl                                           ; $46c9: $23
	inc c                                            ; $46ca: $0c
	jr nz, jr_036_46d9                               ; $46cb: $20 $0c

	sub e                                            ; $46cd: $93
	ld a, [hl]                                       ; $46ce: $7e
	ld a, [hl+]                                      ; $46cf: $2a
	nop                                              ; $46d0: $00
	xor d                                            ; $46d1: $aa
	ld sp, $c60c                                     ; $46d2: $31 $0c $c6
	ld sp, $ca0c                                     ; $46d5: $31 $0c $ca
	cpl                                              ; $46d8: $2f

jr_036_46d9:
	inc c                                            ; $46d9: $0c
	ld l, $0c                                        ; $46da: $2e $0c
	inc l                                            ; $46dc: $2c
	inc c                                            ; $46dd: $0c
	rst JumpTable                                          ; $46de: $c7
	inc l                                            ; $46df: $2c
	inc c                                            ; $46e0: $0c
	jp z, $0c2a                                      ; $46e1: $ca $2a $0c

	rst JumpTable                                          ; $46e4: $c7
	ld a, [hl+]                                      ; $46e5: $2a
	inc c                                            ; $46e6: $0c
	jp z, $0c27                                      ; $46e7: $ca $27 $0c

	ld a, [hl+]                                      ; $46ea: $2a
	inc c                                            ; $46eb: $0c
	inc l                                            ; $46ec: $2c
	jr jr_036_4681                                   ; $46ed: $18 $92

	ld a, [hl]                                       ; $46ef: $7e
	ld a, [hl+]                                      ; $46f0: $2a
	nop                                              ; $46f1: $00
	xor c                                            ; $46f2: $a9
	inc hl                                           ; $46f3: $23
	jr @+$25                                         ; $46f4: $18 $23

	inc c                                            ; $46f6: $0c
	jr nz, jr_036_4705                               ; $46f7: $20 $0c

	ld e, $18                                        ; $46f9: $1e $18
	cp [hl]                                          ; $46fb: $be
	inc c                                            ; $46fc: $0c
	ld e, $20                                        ; $46fd: $1e $20
	inc hl                                           ; $46ff: $23
	dec h                                            ; $4700: $25
	cp [hl]                                          ; $4701: $be
	or l                                             ; $4702: $b5
	and c                                            ; $4703: $a1
	inc bc                                           ; $4704: $03

jr_036_4705:
	ld d, b                                          ; $4705: $50
	rlca                                             ; $4706: $07
	ld a, [hl]                                       ; $4707: $7e
	nop                                              ; $4708: $00
	ld a, [hl+]                                      ; $4709: $2a
	dec e                                            ; $470a: $1d
	or [hl]                                          ; $470b: $b6
	ld h, b                                          ; $470c: $60
	add c                                            ; $470d: $81
	inc bc                                           ; $470e: $03
	ld d, b                                          ; $470f: $50
	inc b                                            ; $4710: $04
	ld a, [hl]                                       ; $4711: $7e
	ld a, [hl+]                                      ; $4712: $2a
	nop                                              ; $4713: $00
	xor e                                            ; $4714: $ab
	inc l                                            ; $4715: $2c
	jr nc, jr_036_474b                               ; $4716: $30 $33

	jr nc, jr_036_474b                               ; $4718: $30 $31

	jr jr_036_474b                                   ; $471a: $18 $2f

	inc c                                            ; $471c: $0c
	ld l, $0c                                        ; $471d: $2e $0c
	inc l                                            ; $471f: $2c
	jr @+$2c                                         ; $4720: $18 $2a

	jr jr_036_474b                                   ; $4722: $18 $27

	inc c                                            ; $4724: $0c
	ld a, [hl+]                                      ; $4725: $2a
	inc c                                            ; $4726: $0c
	inc l                                            ; $4727: $2c
	jr jr_036_472a                                   ; $4728: $18 $00

jr_036_472a:
	sub b                                            ; $472a: $90
	cp $ff                                           ; $472b: $fe $ff
	cp $b4                                           ; $472d: $fe $b4
	ld l, [hl]                                       ; $472f: $6e
	ld hl, $1729                                     ; $4730: $21 $29 $17
	inc d                                            ; $4733: $14
	add $17                                          ; $4734: $c6 $17
	inc b                                            ; $4736: $04
	jp nz, $1e17                                     ; $4737: $c2 $17 $1e

	call nz, $0c17                                   ; $473a: $c4 $17 $0c
	add $17                                          ; $473d: $c6 $17
	ld b, $7f                                        ; $473f: $06 $7f
	jr z, jr_036_4705                                ; $4741: $28 $c2

	jr nc, jr_036_474a                               ; $4743: $30 $05

	ld sp, $3028                                     ; $4745: $31 $28 $30
	inc b                                            ; $4748: $04
	cpl                                              ; $4749: $2f

jr_036_474a:
	add hl, sp                                       ; $474a: $39

jr_036_474b:
	call nz, $092f                                   ; $474b: $c4 $2f $09
	add $2f                                          ; $474e: $c6 $2f
	dec b                                            ; $4750: $05
	ld a, a                                          ; $4751: $7f
	add hl, hl                                       ; $4752: $29
	pop de                                           ; $4753: $d1
	jp nz, $1412                                     ; $4754: $c2 $12 $14

	add $12                                          ; $4757: $c6 $12
	inc b                                            ; $4759: $04
	jp nz, $1e12                                     ; $475a: $c2 $12 $1e

	call nz, $0c12                                   ; $475d: $c4 $12 $0c
	add $12                                          ; $4760: $c6 $12
	ld b, $7f                                        ; $4762: $06 $7f
	jr z, jr_036_472a                                ; $4764: $28 $c4

	inc [hl]                                         ; $4766: $34
	dec b                                            ; $4767: $05
	dec [hl]                                         ; $4768: $35
	daa                                              ; $4769: $27
	inc [hl]                                         ; $476a: $34
	ld [bc], a                                       ; $476b: $02
	inc sp                                           ; $476c: $33
	ld [bc], a                                       ; $476d: $02
	ld [hl-], a                                      ; $476e: $32
	ld [bc], a                                       ; $476f: $02
	ld sp, $320a                                     ; $4770: $31 $0a $32
	ld [bc], a                                       ; $4773: $02
	inc sp                                           ; $4774: $33
	ld a, [bc]                                       ; $4775: $0a
	ld a, [hl]                                       ; $4776: $7e
	ld l, $22                                        ; $4777: $2e $22
	and b                                            ; $4779: $a0
	ld sp, $c230                                     ; $477a: $31 $30 $c2

jr_036_477d:
	pop de                                           ; $477d: $d1
	ld a, a                                          ; $477e: $7f
	add hl, hl                                       ; $477f: $29
	rla                                              ; $4780: $17
	inc d                                            ; $4781: $14
	add $17                                          ; $4782: $c6 $17
	inc b                                            ; $4784: $04
	jp nz, $1e17                                     ; $4785: $c2 $17 $1e

	call nz, $0c17                                   ; $4788: $c4 $17 $0c
	add $17                                          ; $478b: $c6 $17
	ld b, $00                                        ; $478d: $06 $00
	inc h                                            ; $478f: $24
	ld a, a                                          ; $4790: $7f
	inc h                                            ; $4791: $24
	jp nz, $0c1e                                     ; $4792: $c2 $1e $0c

	jr nz, @+$0e                                     ; $4795: $20 $0c

	ld a, [hl]                                       ; $4797: $7e
	scf                                              ; $4798: $37
	nop                                              ; $4799: $00
	xor c                                            ; $479a: $a9
	dec h                                            ; $479b: $25
	inc c                                            ; $479c: $0c
	ld a, [hl]                                       ; $479d: $7e
	nop                                              ; $479e: $00
	inc hl                                           ; $479f: $23
	rra                                              ; $47a0: $1f
	call nz, $0a23                                   ; $47a1: $c4 $23 $0a
	add $23                                          ; $47a4: $c6 $23
	rlca                                             ; $47a6: $07
	ld a, a                                          ; $47a7: $7f
	add hl, hl                                       ; $47a8: $29
	jp nz, $12d1                                     ; $47a9: $c2 $d1 $12

	inc d                                            ; $47ac: $14
	add $12                                          ; $47ad: $c6 $12
	inc b                                            ; $47af: $04
	jp nz, $1212                                     ; $47b0: $c2 $12 $12

	call nz, $0612                                   ; $47b3: $c4 $12 $06
	ld a, a                                          ; $47b6: $7f
	jr z, jr_036_477d                                ; $47b7: $28 $c4

	inc [hl]                                         ; $47b9: $34
	dec b                                            ; $47ba: $05
	dec [hl]                                         ; $47bb: $35
	rra                                              ; $47bc: $1f
	inc [hl]                                         ; $47bd: $34
	inc b                                            ; $47be: $04
	inc sp                                           ; $47bf: $33
	inc b                                            ; $47c0: $04
	ld [hl-], a                                      ; $47c1: $32
	inc b                                            ; $47c2: $04
	ld sp, $c624                                     ; $47c3: $31 $24 $c6
	ld sp, $7f0c                                     ; $47c6: $31 $0c $7f
	add hl, hl                                       ; $47c9: $29
	jp nz, $051c                                     ; $47ca: $c2 $1c $05

	dec e                                            ; $47cd: $1d
	ld e, $c4                                        ; $47ce: $1e $c4
	dec e                                            ; $47d0: $1d
	dec c                                            ; $47d1: $0d
	jp nz, Jump_036_7fd1                             ; $47d2: $c2 $d1 $7f

	add hl, hl                                       ; $47d5: $29
	inc e                                            ; $47d6: $1c
	ld a, $c4                                        ; $47d7: $3e $c4
	inc e                                            ; $47d9: $1c
	rrca                                             ; $47da: $0f
	add $1c                                          ; $47db: $c6 $1c
	add hl, bc                                       ; $47dd: $09
	jp nz, $0817                                     ; $47de: $c2 $17 $08

	call nz, $0417                                   ; $47e1: $c4 $17 $04
	jp nz, $0c1c                                     ; $47e4: $c2 $1c $0c

	call nz, $0c1c                                   ; $47e7: $c4 $1c $0c
	jp nz, $361c                                     ; $47ea: $c2 $1c $36

	call nz, $0a1c                                   ; $47ed: $c4 $1c $0a
	add $1c                                          ; $47f0: $c6 $1c
	ld b, $c2                                        ; $47f2: $06 $c2

jr_036_47f4:
	rla                                              ; $47f4: $17
	scf                                              ; $47f5: $37
	call nz, $1217                                   ; $47f6: $c4 $17 $12
	add $17                                          ; $47f9: $c6 $17
	dec bc                                           ; $47fb: $0b
	jp nz, $0812                                     ; $47fc: $c2 $12 $08

	call nz, $0412                                   ; $47ff: $c4 $12 $04
	jp nz, $2417                                     ; $4802: $c2 $17 $24

	call nz, $0817                                   ; $4805: $c4 $17 $08
	add $17                                          ; $4808: $c6 $17
	inc b                                            ; $480a: $04
	jp nz, $211d                                     ; $480b: $c2 $1d $21

	call nz, $091d                                   ; $480e: $c4 $1d $09
	add $1d                                          ; $4811: $c6 $1d
	ld b, $c2                                        ; $4813: $06 $c2
	pop de                                           ; $4815: $d1
	ld a, a                                          ; $4816: $7f
	add hl, hl                                       ; $4817: $29
	inc e                                            ; $4818: $1c
	ld b, b                                          ; $4819: $40
	call nz, $0d1c                                   ; $481a: $c4 $1c $0d
	add $1c                                          ; $481d: $c6 $1c
	rlca                                             ; $481f: $07
	jp nz, $0a17                                     ; $4820: $c2 $17 $0a

	call nz, $0217                                   ; $4823: $c4 $17 $02
	jp nz, $0c1c                                     ; $4826: $c2 $1c $0c

	call nz, $0c1c                                   ; $4829: $c4 $1c $0c
	jp nz, $381c                                     ; $482c: $c2 $1c $38

	cp [hl]                                          ; $482f: $be
	inc bc                                           ; $4830: $03
	dec de                                           ; $4831: $1b
	ld a, [de]                                       ; $4832: $1a
	add hl, de                                       ; $4833: $19
	jr jr_036_47f4                                   ; $4834: $18 $be

	rla                                              ; $4836: $17
	inc b                                            ; $4837: $04
	rla                                              ; $4838: $17
	inc a                                            ; $4839: $3c
	call nz, $0f17                                   ; $483a: $c4 $17 $0f
	add $17                                          ; $483d: $c6 $17
	add hl, bc                                       ; $483f: $09
	jp nz, $0a12                                     ; $4840: $c2 $12 $0a

	call nz, $0212                                   ; $4843: $c4 $12 $02
	jp nz, $0c17                                     ; $4846: $c2 $17 $0c

	call nz, $0c17                                   ; $4849: $c4 $17 $0c
	jp nz, $2f17                                     ; $484c: $c2 $17 $2f

	add hl, de                                       ; $484f: $19
	ld [bc], a                                       ; $4850: $02
	ld a, [de]                                       ; $4851: $1a
	inc bc                                           ; $4852: $03
	dec de                                           ; $4853: $1b
	inc d                                            ; $4854: $14
	jp nz, Jump_036_7fd1                             ; $4855: $c2 $d1 $7f

	add hl, hl                                       ; $4858: $29
	inc e                                            ; $4859: $1c
	ld b, b                                          ; $485a: $40
	call nz, $0d1c                                   ; $485b: $c4 $1c $0d
	add $1c                                          ; $485e: $c6 $1c
	rlca                                             ; $4860: $07
	jp nz, $0a17                                     ; $4861: $c2 $17 $0a

	call nz, $0217                                   ; $4864: $c4 $17 $02
	jp nz, $0c1c                                     ; $4867: $c2 $1c $0c

	call nz, $0c1c                                   ; $486a: $c4 $1c $0c
	jp nz, $381c                                     ; $486d: $c2 $1c $38

	call nz, $0a1c                                   ; $4870: $c4 $1c $0a
	add $1c                                          ; $4873: $c6 $1c
	ld b, $c2                                        ; $4875: $06 $c2

jr_036_4877:
	rla                                              ; $4877: $17
	scf                                              ; $4878: $37
	call nz, $1217                                   ; $4879: $c4 $17 $12
	add $17                                          ; $487c: $c6 $17
	dec bc                                           ; $487e: $0b
	jp nz, $0812                                     ; $487f: $c2 $12 $08

	call nz, $0412                                   ; $4882: $c4 $12 $04
	jp nz, $2417                                     ; $4885: $c2 $17 $24

	call nz, $0817                                   ; $4888: $c4 $17 $08
	add $17                                          ; $488b: $c6 $17
	inc b                                            ; $488d: $04
	jp nz, $211d                                     ; $488e: $c2 $1d $21

	call nz, $091d                                   ; $4891: $c4 $1d $09
	add $1d                                          ; $4894: $c6 $1d
	ld b, $c2                                        ; $4896: $06 $c2
	pop de                                           ; $4898: $d1
	ld a, a                                          ; $4899: $7f
	add hl, hl                                       ; $489a: $29
	inc e                                            ; $489b: $1c
	ld b, b                                          ; $489c: $40
	call nz, $0d1c                                   ; $489d: $c4 $1c $0d
	add $1c                                          ; $48a0: $c6 $1c
	rlca                                             ; $48a2: $07
	jp nz, $0a17                                     ; $48a3: $c2 $17 $0a

	call nz, $0217                                   ; $48a6: $c4 $17 $02
	jp nz, $0c1c                                     ; $48a9: $c2 $1c $0c

	call nz, $0c1c                                   ; $48ac: $c4 $1c $0c
	jp nz, $381c                                     ; $48af: $c2 $1c $38

	cp [hl]                                          ; $48b2: $be
	inc bc                                           ; $48b3: $03
	dec de                                           ; $48b4: $1b
	ld a, [de]                                       ; $48b5: $1a
	add hl, de                                       ; $48b6: $19
	jr jr_036_4877                                   ; $48b7: $18 $be

	rla                                              ; $48b9: $17
	inc b                                            ; $48ba: $04
	rla                                              ; $48bb: $17
	ld b, b                                          ; $48bc: $40
	call nz, $0d17                                   ; $48bd: $c4 $17 $0d
	add $17                                          ; $48c0: $c6 $17
	rlca                                             ; $48c2: $07
	jp nz, $0a12                                     ; $48c3: $c2 $12 $0a

	call nz, $0212                                   ; $48c6: $c4 $12 $02
	jp nz, $0e17                                     ; $48c9: $c2 $17 $0e

	call nz, $0a17                                   ; $48cc: $c4 $17 $0a
	jp nz, $2f17                                     ; $48cf: $c2 $17 $2f

	add hl, de                                       ; $48d2: $19
	ld [bc], a                                       ; $48d3: $02
	ld a, [de]                                       ; $48d4: $1a
	inc bc                                           ; $48d5: $03
	dec de                                           ; $48d6: $1b
	inc d                                            ; $48d7: $14
	jp nz, Jump_036_7fd1                             ; $48d8: $c2 $d1 $7f

	ld [hl+], a                                      ; $48db: $22
	inc e                                            ; $48dc: $1c
	inc d                                            ; $48dd: $14
	call nz, $041c                                   ; $48de: $c4 $1c $04
	jp nz, $1e1c                                     ; $48e1: $c2 $1c $1e

	call nz, $0c1c                                   ; $48e4: $c4 $1c $0c
	add $1c                                          ; $48e7: $c6 $1c
	ld b, $c2                                        ; $48e9: $06 $c2
	ld a, [hl]                                       ; $48eb: $7e
	scf                                              ; $48ec: $37
	nop                                              ; $48ed: $00
	xor c                                            ; $48ee: $a9
	rla                                              ; $48ef: $17
	jr @+$80                                         ; $48f0: $18 $7e

	nop                                              ; $48f2: $00
	inc e                                            ; $48f3: $1c
	jr jr_036_4974                                   ; $48f4: $18 $7e

	ld [hl-], a                                      ; $48f6: $32
	nop                                              ; $48f7: $00
	xor c                                            ; $48f8: $a9
	jr nz, @+$1a                                     ; $48f9: $20 $18

	ld a, [hl]                                       ; $48fb: $7e
	cpl                                              ; $48fc: $2f
	ld [$1ea9], sp                                   ; $48fd: $08 $a9 $1e
	ld [de], a                                       ; $4900: $12
	ld a, [hl]                                       ; $4901: $7e
	nop                                              ; $4902: $00
	inc e                                            ; $4903: $1c
	ld b, $7e                                        ; $4904: $06 $7e
	nop                                              ; $4906: $00
	rla                                              ; $4907: $17
	inc c                                            ; $4908: $0c
	inc d                                            ; $4909: $14
	inc c                                            ; $490a: $0c
	jp nz, $141b                                     ; $490b: $c2 $1b $14

	call nz, $041b                                   ; $490e: $c4 $1b $04
	jp nz, $1e1b                                     ; $4911: $c2 $1b $1e

	call nz, $0c1b                                   ; $4914: $c4 $1b $0c
	add $1b                                          ; $4917: $c6 $1b
	ld b, $c2                                        ; $4919: $06 $c2
	rrca                                             ; $491b: $0f
	inc c                                            ; $491c: $0c
	ld [de], a                                       ; $491d: $12
	inc c                                            ; $491e: $0c
	ld a, [hl]                                       ; $491f: $7e
	scf                                              ; $4920: $37
	nop                                              ; $4921: $00
	xor d                                            ; $4922: $aa
	rla                                              ; $4923: $17
	inc h                                            ; $4924: $24
	ld a, [hl]                                       ; $4925: $7e
	scf                                              ; $4926: $37
	nop                                              ; $4927: $00
	and b                                            ; $4928: $a0
	dec de                                           ; $4929: $1b
	inc c                                            ; $492a: $0c
	ld a, [hl]                                       ; $492b: $7e
	cpl                                              ; $492c: $2f
	rlca                                             ; $492d: $07
	xor c                                            ; $492e: $a9
	add hl, de                                       ; $492f: $19
	jr jr_036_49b0                                   ; $4930: $18 $7e

	nop                                              ; $4932: $00
	jp nz, $0c12                                     ; $4933: $c2 $12 $0c

	dec de                                           ; $4936: $1b
	inc c                                            ; $4937: $0c
	jp nz, Jump_036_7fd1                             ; $4938: $c2 $d1 $7f

	ld [hl+], a                                      ; $493b: $22
	add hl, de                                       ; $493c: $19
	inc d                                            ; $493d: $14
	call nz, $0419                                   ; $493e: $c4 $19 $04
	jp nz, $1e19                                     ; $4941: $c2 $19 $1e

	call nz, $0c19                                   ; $4944: $c4 $19 $0c
	add $19                                          ; $4947: $c6 $19
	ld b, $c2                                        ; $4949: $06 $c2
	rla                                              ; $494b: $17
	inc c                                            ; $494c: $0c
	add hl, de                                       ; $494d: $19
	inc c                                            ; $494e: $0c
	dec de                                           ; $494f: $1b
	inc d                                            ; $4950: $14
	add $1b                                          ; $4951: $c6 $1b
	inc b                                            ; $4953: $04
	jp nz, $1a1b                                     ; $4954: $c2 $1b $1a

	call nz, $061b                                   ; $4957: $c4 $1b $06
	add $1b                                          ; $495a: $c6 $1b
	inc b                                            ; $495c: $04
	jp nz, $2f7e                                     ; $495d: $c2 $7e $2f

	ld [$19a9], sp                                   ; $4960: $08 $a9 $19
	jr jr_036_49e3                                   ; $4963: $18 $7e

	nop                                              ; $4965: $00
	add hl, de                                       ; $4966: $19
	inc c                                            ; $4967: $0c
	jp nz, $1420                                     ; $4968: $c2 $20 $14

	add $20                                          ; $496b: $c6 $20
	inc b                                            ; $496d: $04
	jp nz, $1a20                                     ; $496e: $c2 $20 $1a

	call nz, $0620                                   ; $4971: $c4 $20 $06

jr_036_4974:
	add $20                                          ; $4974: $c6 $20
	inc b                                            ; $4976: $04
	jp nz, $0a1b                                     ; $4977: $c2 $1b $0a

	inc e                                            ; $497a: $1c
	ld [bc], a                                       ; $497b: $02
	dec e                                            ; $497c: $1d
	ld [bc], a                                       ; $497d: $02
	ld e, $0a                                        ; $497e: $1e $0a
	dec de                                           ; $4980: $1b
	inc c                                            ; $4981: $0c
	jp nz, $5514                                     ; $4982: $c2 $14 $55

	call nz, $0a14                                   ; $4985: $c4 $14 $0a
	add $14                                          ; $4988: $c6 $14
	ld b, $c2                                        ; $498a: $06 $c2
	or h                                             ; $498c: $b4
	ld h, b                                          ; $498d: $60
	ld hl, $c224                                     ; $498e: $21 $24 $c2
	inc e                                            ; $4991: $1c
	ld d, b                                          ; $4992: $50
	call nz, $0a1c                                   ; $4993: $c4 $1c $0a
	add $1c                                          ; $4996: $c6 $1c
	ld b, $c2                                        ; $4998: $06 $c2
	dec de                                           ; $499a: $1b
	ld d, b                                          ; $499b: $50
	call nz, $0a1b                                   ; $499c: $c4 $1b $0a
	add $1b                                          ; $499f: $c6 $1b
	ld b, $c2                                        ; $49a1: $06 $c2
	add hl, de                                       ; $49a3: $19
	ld e, $c6                                        ; $49a4: $1e $c6
	add hl, de                                       ; $49a6: $19
	ld b, $c2                                        ; $49a7: $06 $c2
	add hl, de                                       ; $49a9: $19
	add hl, de                                       ; $49aa: $19
	call nz, $0f19                                   ; $49ab: $c4 $19 $0f
	add $19                                          ; $49ae: $c6 $19

jr_036_49b0:
	rrca                                             ; $49b0: $0f
	nop                                              ; $49b1: $00
	ld h, l                                          ; $49b2: $65
	cp $ff                                           ; $49b3: $fe $ff
	cp $d0                                           ; $49b5: $fe $d0
	ld l, [hl]                                       ; $49b7: $6e
	ei                                               ; $49b8: $fb
	db $fd                                           ; $49b9: $fd
	add hl, sp                                       ; $49ba: $39
	ld c, d                                          ; $49bb: $4a
	ei                                               ; $49bc: $fb
	ld [bc], a                                       ; $49bd: $02
	db $fd                                           ; $49be: $fd
	add hl, sp                                       ; $49bf: $39
	ld c, d                                          ; $49c0: $4a
	inc de                                           ; $49c1: $13
	jr nc, @+$0b                                     ; $49c2: $30 $09

	inc h                                            ; $49c4: $24
	add hl, bc                                       ; $49c5: $09
	ld b, $0d                                        ; $49c6: $06 $0d
	ld b, $35                                        ; $49c8: $06 $35
	jr nc, jr_036_49d5                               ; $49ca: $30 $09

	jr nc, @-$01                                     ; $49cc: $30 $fd

	ld b, h                                          ; $49ce: $44
	ld c, d                                          ; $49cf: $4a
	db $fd                                           ; $49d0: $fd
	ld b, h                                          ; $49d1: $44
	ld c, d                                          ; $49d2: $4a
	db $fd                                           ; $49d3: $fd
	ld b, h                                          ; $49d4: $44

jr_036_49d5:
	ld c, d                                          ; $49d5: $4a
	ld [hl], $18                                     ; $49d6: $36 $18
	ld [hl], $18                                     ; $49d8: $36 $18
	cp [hl]                                          ; $49da: $be
	inc c                                            ; $49db: $0c
	ld sp, $3231                                     ; $49dc: $31 $31 $32
	inc sp                                           ; $49df: $33
	cp [hl]                                          ; $49e0: $be
	ld [hl], $18                                     ; $49e1: $36 $18

jr_036_49e3:
	ld [hl], $18                                     ; $49e3: $36 $18
	inc [hl]                                         ; $49e5: $34
	inc b                                            ; $49e6: $04
	dec [hl]                                         ; $49e7: $35
	inc l                                            ; $49e8: $2c
	ld [hl], $18                                     ; $49e9: $36 $18
	ld [hl], $18                                     ; $49eb: $36 $18
	cp [hl]                                          ; $49ed: $be
	inc c                                            ; $49ee: $0c
	ld sp, $3231                                     ; $49ef: $31 $31 $32
	inc sp                                           ; $49f2: $33
	cp [hl]                                          ; $49f3: $be
	ld [hl], $18                                     ; $49f4: $36 $18
	ld [hl], $18                                     ; $49f6: $36 $18
	dec [hl]                                         ; $49f8: $35
	jr jr_036_4a2e                                   ; $49f9: $18 $33

	ld [$0832], sp                                   ; $49fb: $08 $32 $08
	add hl, bc                                       ; $49fe: $09
	ld [$1818], sp                                   ; $49ff: $08 $18 $18
	inc de                                           ; $4a02: $13
	jr @-$40                                         ; $4a03: $18 $be

	inc c                                            ; $4a05: $0c
	ld sp, $3231                                     ; $4a06: $31 $31 $32
	inc sp                                           ; $4a09: $33
	cp [hl]                                          ; $4a0a: $be
	ld [hl], $18                                     ; $4a0b: $36 $18
	ld [hl], $18                                     ; $4a0d: $36 $18
	inc [hl]                                         ; $4a0f: $34
	inc b                                            ; $4a10: $04
	dec [hl]                                         ; $4a11: $35
	inc l                                            ; $4a12: $2c
	ld [hl], $18                                     ; $4a13: $36 $18
	ld [hl], $18                                     ; $4a15: $36 $18
	cp [hl]                                          ; $4a17: $be
	inc c                                            ; $4a18: $0c
	ld sp, $3231                                     ; $4a19: $31 $31 $32
	inc sp                                           ; $4a1c: $33
	cp [hl]                                          ; $4a1d: $be
	ld [hl], $18                                     ; $4a1e: $36 $18

jr_036_4a20:
	ld [hl], $18                                     ; $4a20: $36 $18

jr_036_4a22:
	dec [hl]                                         ; $4a22: $35
	jr nc, jr_036_4a22                               ; $4a23: $30 $fd

	ld b, h                                          ; $4a25: $44
	ld c, d                                          ; $4a26: $4a
	nop                                              ; $4a27: $00
	dec b                                            ; $4a28: $05
	ret nc                                           ; $4a29: $d0

	ld h, b                                          ; $4a2a: $60
	nop                                              ; $4a2b: $00
	add h                                            ; $4a2c: $84
	inc [hl]                                         ; $4a2d: $34

jr_036_4a2e:
	inc c                                            ; $4a2e: $0c
	dec [hl]                                         ; $4a2f: $35
	jr nc, jr_036_4a32                               ; $4a30: $30 $00

jr_036_4a32:
	add h                                            ; $4a32: $84
	dec [hl]                                         ; $4a33: $35
	inc c                                            ; $4a34: $0c
	dec [hl]                                         ; $4a35: $35

jr_036_4a36:
	jr nc, jr_036_4a36                               ; $4a36: $30 $fe

	rst $38                                          ; $4a38: $ff
	inc de                                           ; $4a39: $13
	jr nc, @+$0b                                     ; $4a3a: $30 $09

	jr nc, jr_036_4a72                               ; $4a3c: $30 $34

	inc b                                            ; $4a3e: $04
	dec [hl]                                         ; $4a3f: $35
	inc l                                            ; $4a40: $2c

jr_036_4a41:
	add hl, bc                                       ; $4a41: $09
	jr nc, jr_036_4a41                               ; $4a42: $30 $fd

	ld [hl], $18                                     ; $4a44: $36 $18
	ld [hl], $18                                     ; $4a46: $36 $18
	cp [hl]                                          ; $4a48: $be
	inc c                                            ; $4a49: $0c
	ld sp, $3231                                     ; $4a4a: $31 $31 $32
	inc sp                                           ; $4a4d: $33
	cp [hl]                                          ; $4a4e: $be
	ld [hl], $18                                     ; $4a4f: $36 $18
	ld [hl], $18                                     ; $4a51: $36 $18
	inc [hl]                                         ; $4a53: $34
	inc b                                            ; $4a54: $04
	dec [hl]                                         ; $4a55: $35
	inc l                                            ; $4a56: $2c
	ld [hl], $18                                     ; $4a57: $36 $18
	ld [hl], $18                                     ; $4a59: $36 $18
	cp [hl]                                          ; $4a5b: $be
	inc c                                            ; $4a5c: $0c
	ld sp, $3231                                     ; $4a5d: $31 $31 $32
	inc sp                                           ; $4a60: $33
	cp [hl]                                          ; $4a61: $be
	ld [hl], $18                                     ; $4a62: $36 $18
	ld [hl], $18                                     ; $4a64: $36 $18

jr_036_4a66:
	dec [hl]                                         ; $4a66: $35
	jr nc, jr_036_4a66                               ; $4a67: $30 $fd

	or h                                             ; $4a69: $b4
	ld l, [hl]                                       ; $4a6a: $6e
	ld b, c                                          ; $4a6b: $41
	inc bc                                           ; $4a6c: $03
	nop                                              ; $4a6d: $00
	inc h                                            ; $4a6e: $24
	cp $7e                                           ; $4a6f: $fe $7e
	dec b                                            ; $4a71: $05

jr_036_4a72:
	nop                                              ; $4a72: $00
	and b                                            ; $4a73: $a0
	add hl, hl                                       ; $4a74: $29
	inc b                                            ; $4a75: $04
	add hl, hl                                       ; $4a76: $29
	ld a, [de]                                       ; $4a77: $1a
	ld a, l                                          ; $4a78: $7d
	ld [bc], a                                       ; $4a79: $02
	or c                                             ; $4a7a: $b1
	ld sp, $050c                                     ; $4a7b: $31 $0c $05
	ld a, [hl]                                       ; $4a7e: $7e
	nop                                              ; $4a7f: $00
	add hl, hl                                       ; $4a80: $29
	ld a, [bc]                                       ; $4a81: $0a
	push bc                                          ; $4a82: $c5
	ld a, [hl]                                       ; $4a83: $7e
	ld bc, $a900                                     ; $4a84: $01 $00 $a9
	inc h                                            ; $4a87: $24
	jr jr_036_4a20                                   ; $4a88: $18 $96

	inc c                                            ; $4a8a: $0c
	ld [bc], a                                       ; $4a8b: $02
	ld a, [hl]                                       ; $4a8c: $7e
	nop                                              ; $4a8d: $00
	ld hl, $960c                                     ; $4a8e: $21 $0c $96
	inc c                                            ; $4a91: $0c
	dec b                                            ; $4a92: $05
	inc h                                            ; $4a93: $24
	inc c                                            ; $4a94: $0c
	ld hl, $960c                                     ; $4a95: $21 $0c $96
	inc c                                            ; $4a98: $0c
	dec b                                            ; $4a99: $05
	ld a, [hl]                                       ; $4a9a: $7e
	dec b                                            ; $4a9b: $05
	nop                                              ; $4a9c: $00
	and b                                            ; $4a9d: $a0
	ld h, $0c                                        ; $4a9e: $26 $0c
	ld a, [hl]                                       ; $4aa0: $7e
	nop                                              ; $4aa1: $00
	sub [hl]                                         ; $4aa2: $96
	inc c                                            ; $4aa3: $0c
	inc bc                                           ; $4aa4: $03
	inc h                                            ; $4aa5: $24
	inc c                                            ; $4aa6: $0c
	sub [hl]                                         ; $4aa7: $96
	inc c                                            ; $4aa8: $0c
	inc b                                            ; $4aa9: $04
	ld [hl+], a                                      ; $4aaa: $22
	inc c                                            ; $4aab: $0c
	sub [hl]                                         ; $4aac: $96
	inc c                                            ; $4aad: $0c
	dec b                                            ; $4aae: $05
	inc h                                            ; $4aaf: $24
	inc c                                            ; $4ab0: $0c
	or c                                             ; $4ab1: $b1
	ld sp, $0000                                     ; $4ab2: $31 $00 $00
	inc h                                            ; $4ab5: $24
	ld [$007e], sp                                   ; $4ab6: $08 $7e $00
	or c                                             ; $4ab9: $b1
	add c                                            ; $4aba: $81
	inc c                                            ; $4abb: $0c
	ld b, $7d                                        ; $4abc: $06 $7d
	nop                                              ; $4abe: $00
	jr jr_036_4acd                                   ; $4abf: $18 $0c

	add hl, de                                       ; $4ac1: $19
	inc c                                            ; $4ac2: $0c
	cp l                                             ; $4ac3: $bd
	ld [bc], a                                       ; $4ac4: $02
	ld a, [de]                                       ; $4ac5: $1a
	inc c                                            ; $4ac6: $0c
	inc c                                            ; $4ac7: $0c
	jp $057e                                         ; $4ac8: $c3 $7e $05


	nop                                              ; $4acb: $00
	and b                                            ; $4acc: $a0

jr_036_4acd:
	ld a, [de]                                       ; $4acd: $1a
	inc c                                            ; $4ace: $0c
	ret z                                            ; $4acf: $c8

	ld a, [hl]                                       ; $4ad0: $7e
	dec b                                            ; $4ad1: $05
	nop                                              ; $4ad2: $00
	and b                                            ; $4ad3: $a0
	dec d                                            ; $4ad4: $15
	inc c                                            ; $4ad5: $0c
	jp $0c15                                         ; $4ad6: $c3 $15 $0c


	or c                                             ; $4ad9: $b1
	add c                                            ; $4ada: $81
	inc c                                            ; $4adb: $0c
	rlca                                             ; $4adc: $07
	ld a, [hl]                                       ; $4add: $7e
	nop                                              ; $4ade: $00
	inc de                                           ; $4adf: $13
	inc c                                            ; $4ae0: $0c
	ld de, $100c                                     ; $4ae1: $11 $0c $10
	inc c                                            ; $4ae4: $0c
	sub [hl]                                         ; $4ae5: $96
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	ld a, [hl]                                       ; $4ae8: $7e
	nop                                              ; $4ae9: $00
	ld de, $b10c                                     ; $4aea: $11 $0c $b1
	ld d, c                                          ; $4aed: $51
	ld a, [bc]                                       ; $4aee: $0a
	rlca                                             ; $4aef: $07
	ld de, $920b                                     ; $4af0: $11 $0b $92
	ld h, $01                                        ; $4af3: $26 $01
	ld l, $02                                        ; $4af5: $2e $02
	jp $092e                                         ; $4af7: $c3 $2e $09


	push bc                                          ; $4afa: $c5
	ld h, $01                                        ; $4afb: $26 $01
	ld l, $02                                        ; $4afd: $2e $02
	jp $092e                                         ; $4aff: $c3 $2e $09


jr_036_4b02:
	push bc                                          ; $4b02: $c5
	ld h, $01                                        ; $4b03: $26 $01
	ld l, $02                                        ; $4b05: $2e $02
	jp $092e                                         ; $4b07: $c3 $2e $09


	push bc                                          ; $4b0a: $c5
	ld h, $01                                        ; $4b0b: $26 $01
	ld l, $02                                        ; $4b0d: $2e $02
	jp $092e                                         ; $4b0f: $c3 $2e $09


	push bc                                          ; $4b12: $c5
	ld h, $01                                        ; $4b13: $26 $01
	ld l, $02                                        ; $4b15: $2e $02
	jp $092e                                         ; $4b17: $c3 $2e $09


	push bc                                          ; $4b1a: $c5
	dec h                                            ; $4b1b: $25
	ld bc, $022d                                     ; $4b1c: $01 $2d $02
	call nz, $0125                                   ; $4b1f: $c4 $25 $01
	dec l                                            ; $4b22: $2d
	ld bc, $25c3                                     ; $4b23: $01 $c3 $25
	ld bc, $012d                                     ; $4b26: $01 $2d $01
	jp $0125                                         ; $4b29: $c3 $25 $01


	dec l                                            ; $4b2c: $2d
	ld bc, $25c3                                     ; $4b2d: $01 $c3 $25
	ld bc, $022d                                     ; $4b30: $01 $2d $02
	push bc                                          ; $4b33: $c5
	ld h, $01                                        ; $4b34: $26 $01
	ld l, $02                                        ; $4b36: $2e $02
	jp $0a2e                                         ; $4b38: $c3 $2e $0a


	ret z                                            ; $4b3b: $c8

	sub e                                            ; $4b3c: $93
	ld [hl+], a                                      ; $4b3d: $22
	jr jr_036_4b02                                   ; $4b3e: $18 $c2

	ld [hl+], a                                      ; $4b40: $22
	inc c                                            ; $4b41: $0c
	add $24                                          ; $4b42: $c6 $24
	inc c                                            ; $4b44: $0c
	jp nz, $0c24                                     ; $4b45: $c2 $24 $0c

	ret z                                            ; $4b48: $c8

	rra                                              ; $4b49: $1f
	inc c                                            ; $4b4a: $0c
	jp $0c1f                                         ; $4b4b: $c3 $1f $0c


	rst JumpTable                                          ; $4b4e: $c7
	cp l                                             ; $4b4f: $bd
	ld [bc], a                                       ; $4b50: $02
	inc e                                            ; $4b51: $1c
	inc c                                            ; $4b52: $0c
	inc c                                            ; $4b53: $0c
	or c                                             ; $4b54: $b1
	ld d, c                                          ; $4b55: $51
	inc c                                            ; $4b56: $0c
	inc b                                            ; $4b57: $04
	inc e                                            ; $4b58: $1c
	inc c                                            ; $4b59: $0c
	or c                                             ; $4b5a: $b1
	ld [hl], c                                       ; $4b5b: $71
	dec bc                                           ; $4b5c: $0b
	ld [bc], a                                       ; $4b5d: $02
	inc e                                            ; $4b5e: $1c
	dec bc                                           ; $4b5f: $0b
	nop                                              ; $4b60: $00
	ld bc, $0c1e                                     ; $4b61: $01 $1e $0c
	or c                                             ; $4b64: $b1
	ld d, c                                          ; $4b65: $51
	dec bc                                           ; $4b66: $0b
	ld b, $1e                                        ; $4b67: $06 $1e
	dec bc                                           ; $4b69: $0b
	or l                                             ; $4b6a: $b5
	ld h, c                                          ; $4b6b: $61
	ld [bc], a                                       ; $4b6c: $02
	nop                                              ; $4b6d: $00
	nop                                              ; $4b6e: $00
	ld [hl], $01                                     ; $4b6f: $36 $01
	ld a, [hl]                                       ; $4b71: $7e
	ld [bc], a                                       ; $4b72: $02
	nop                                              ; $4b73: $00
	xor d                                            ; $4b74: $aa
	rst JumpTable                                          ; $4b75: $c7
	add hl, sp                                       ; $4b76: $39
	ld [bc], a                                       ; $4b77: $02
	or c                                             ; $4b78: $b1
	ld d, c                                          ; $4b79: $51
	rst $38                                          ; $4b7a: $ff
	ld b, $39                                        ; $4b7b: $06 $39
	ld d, $c3                                        ; $4b7d: $16 $c3
	add hl, sp                                       ; $4b7f: $39
	inc c                                            ; $4b80: $0c
	ld a, [hl]                                       ; $4b81: $7e
	nop                                              ; $4b82: $00
	or c                                             ; $4b83: $b1
	ld [hl], c                                       ; $4b84: $71
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	ld h, $18                                        ; $4b87: $26 $18
	jp $0c21                                         ; $4b89: $c3 $21 $0c


	ret z                                            ; $4b8c: $c8

	ld [hl+], a                                      ; $4b8d: $22
	inc c                                            ; $4b8e: $0c
	jp nz, $0c22                                     ; $4b8f: $c2 $22 $0c

	rst JumpTable                                          ; $4b92: $c7
	inc h                                            ; $4b93: $24
	jr @-$4d                                         ; $4b94: $18 $b1

	ld d, c                                          ; $4b96: $51
	dec c                                            ; $4b97: $0d
	rlca                                             ; $4b98: $07
	inc h                                            ; $4b99: $24
	inc c                                            ; $4b9a: $0c
	or c                                             ; $4b9b: $b1
	ld [hl], c                                       ; $4b9c: $71
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	ld h, $18                                        ; $4b9f: $26 $18
	or c                                             ; $4ba1: $b1
	ld d, c                                          ; $4ba2: $51
	inc c                                            ; $4ba3: $0c
	rlca                                             ; $4ba4: $07
	ld h, $0c                                        ; $4ba5: $26 $0c
	or c                                             ; $4ba7: $b1
	ld [hl], c                                       ; $4ba8: $71
	nop                                              ; $4ba9: $00
	nop                                              ; $4baa: $00
	inc h                                            ; $4bab: $24
	inc c                                            ; $4bac: $0c
	or c                                             ; $4bad: $b1
	ld hl, $060c                                     ; $4bae: $21 $0c $06
	inc h                                            ; $4bb1: $24
	inc c                                            ; $4bb2: $0c
	or c                                             ; $4bb3: $b1
	ld [hl], c                                       ; $4bb4: $71
	nop                                              ; $4bb5: $00
	nop                                              ; $4bb6: $00
	inc h                                            ; $4bb7: $24
	ld a, [bc]                                       ; $4bb8: $0a
	jp $0224                                         ; $4bb9: $c3 $24 $02


	add $26                                          ; $4bbc: $c6 $26
	ld a, [bc]                                       ; $4bbe: $0a
	jp nz, $0126                                     ; $4bbf: $c2 $26 $01

	add $28                                          ; $4bc2: $c6 $28
	ld bc, $28c6                                     ; $4bc4: $01 $c6 $28
	inc c                                            ; $4bc7: $0c
	rst JumpTable                                          ; $4bc8: $c7
	sub e                                            ; $4bc9: $93
	ld a, [hl]                                       ; $4bca: $7e
	dec b                                            ; $4bcb: $05
	nop                                              ; $4bcc: $00
	and b                                            ; $4bcd: $a0
	ld hl, $b11a                                     ; $4bce: $21 $1a $b1
	add c                                            ; $4bd1: $81
	inc c                                            ; $4bd2: $0c
	dec b                                            ; $4bd3: $05
	ld a, [hl]                                       ; $4bd4: $7e
	nop                                              ; $4bd5: $00
	ld hl, $c80a                                     ; $4bd6: $21 $0a $c8
	dec e                                            ; $4bd9: $1d
	inc c                                            ; $4bda: $0c
	jp $0c1d                                         ; $4bdb: $c3 $1d $0c


	or c                                             ; $4bde: $b1
	add c                                            ; $4bdf: $81
	inc c                                            ; $4be0: $0c
	ld [bc], a                                       ; $4be1: $02
	ld a, [hl]                                       ; $4be2: $7e
	nop                                              ; $4be3: $00
	jr jr_036_4bf2                                   ; $4be4: $18 $0c

	sub [hl]                                         ; $4be6: $96
	inc c                                            ; $4be7: $0c
	rlca                                             ; $4be8: $07
	dec e                                            ; $4be9: $1d
	inc c                                            ; $4bea: $0c
	sub [hl]                                         ; $4beb: $96
	inc c                                            ; $4bec: $0c
	inc bc                                           ; $4bed: $03
	jr jr_036_4bfc                                   ; $4bee: $18 $0c

	or c                                             ; $4bf0: $b1
	sub c                                            ; $4bf1: $91

jr_036_4bf2:
	inc c                                            ; $4bf2: $0c
	ld [bc], a                                       ; $4bf3: $02
	inc de                                           ; $4bf4: $13
	inc c                                            ; $4bf5: $0c
	sub [hl]                                         ; $4bf6: $96
	inc c                                            ; $4bf7: $0c
	inc bc                                           ; $4bf8: $03
	ld d, $0c                                        ; $4bf9: $16 $0c
	sub [hl]                                         ; $4bfb: $96

jr_036_4bfc:
	inc c                                            ; $4bfc: $0c
	rlca                                             ; $4bfd: $07
	dec e                                            ; $4bfe: $1d
	inc c                                            ; $4bff: $0c
	sub [hl]                                         ; $4c00: $96
	inc c                                            ; $4c01: $0c
	ld [bc], a                                       ; $4c02: $02
	inc e                                            ; $4c03: $1c
	inc c                                            ; $4c04: $0c
	or c                                             ; $4c05: $b1
	ld sp, $0000                                     ; $4c06: $31 $00 $00
	inc e                                            ; $4c09: $1c
	inc c                                            ; $4c0a: $0c
	or c                                             ; $4c0b: $b1
	ld [hl], c                                       ; $4c0c: $71
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	add hl, de                                       ; $4c0f: $19
	ld a, [bc]                                       ; $4c10: $0a
	jp $0219                                         ; $4c11: $c3 $19 $02


	rst JumpTable                                          ; $4c14: $c7
	ld a, [de]                                       ; $4c15: $1a
	ld a, [bc]                                       ; $4c16: $0a
	jp $021a                                         ; $4c17: $c3 $1a $02


	rst JumpTable                                          ; $4c1a: $c7
	ld a, [de]                                       ; $4c1b: $1a
	inc c                                            ; $4c1c: $0c
	or c                                             ; $4c1d: $b1
	ld d, c                                          ; $4c1e: $51
	inc c                                            ; $4c1f: $0c
	rlca                                             ; $4c20: $07
	ld a, [de]                                       ; $4c21: $1a
	dec bc                                           ; $4c22: $0b
	nop                                              ; $4c23: $00
	ld bc, $15c6                                     ; $4c24: $01 $c6 $15
	inc c                                            ; $4c27: $0c
	rst JumpTable                                          ; $4c28: $c7
	ld hl, $c20c                                     ; $4c29: $21 $0c $c2
	ld hl, $b10c                                     ; $4c2c: $21 $0c $b1
	ld [hl], c                                       ; $4c2f: $71
	inc c                                            ; $4c30: $0c
	dec b                                            ; $4c31: $05
	ld a, [hl]                                       ; $4c32: $7e
	nop                                              ; $4c33: $00
	rra                                              ; $4c34: $1f
	inc c                                            ; $4c35: $0c
	sub [hl]                                         ; $4c36: $96
	inc c                                            ; $4c37: $0c
	ld [bc], a                                       ; $4c38: $02
	dec e                                            ; $4c39: $1d
	inc c                                            ; $4c3a: $0c
	sub [hl]                                         ; $4c3b: $96
	inc c                                            ; $4c3c: $0c
	inc bc                                           ; $4c3d: $03
	inc e                                            ; $4c3e: $1c
	inc c                                            ; $4c3f: $0c
	sub [hl]                                         ; $4c40: $96
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	dec e                                            ; $4c43: $1d
	inc c                                            ; $4c44: $0c
	or c                                             ; $4c45: $b1
	ld h, c                                          ; $4c46: $61
	ld a, [bc]                                       ; $4c47: $0a
	rlca                                             ; $4c48: $07
	dec e                                            ; $4c49: $1d
	inc c                                            ; $4c4a: $0c
	sub d                                            ; $4c4b: $92
	ld h, $01                                        ; $4c4c: $26 $01
	ld l, $02                                        ; $4c4e: $2e $02
	jp $092e                                         ; $4c50: $c3 $2e $09


	ret z                                            ; $4c53: $c8

	ld h, $01                                        ; $4c54: $26 $01
	ld l, $02                                        ; $4c56: $2e $02
	jp $092e                                         ; $4c58: $c3 $2e $09


	ret z                                            ; $4c5b: $c8

	ld h, $01                                        ; $4c5c: $26 $01
	ld l, $02                                        ; $4c5e: $2e $02
	jp $092e                                         ; $4c60: $c3 $2e $09


	ret z                                            ; $4c63: $c8

	ld h, $01                                        ; $4c64: $26 $01
	ld l, $02                                        ; $4c66: $2e $02
	jp $092e                                         ; $4c68: $c3 $2e $09


	ret z                                            ; $4c6b: $c8

	ld h, $01                                        ; $4c6c: $26 $01
	ld l, $02                                        ; $4c6e: $2e $02
	jp $092e                                         ; $4c70: $c3 $2e $09


	ret z                                            ; $4c73: $c8

	dec h                                            ; $4c74: $25
	ld bc, $022d                                     ; $4c75: $01 $2d $02
	jp $0125                                         ; $4c78: $c3 $25 $01


	dec l                                            ; $4c7b: $2d
	ld bc, $25c2                                     ; $4c7c: $01 $c2 $25
	ld bc, $012d                                     ; $4c7f: $01 $2d $01
	pop bc                                           ; $4c82: $c1
	dec h                                            ; $4c83: $25
	ld bc, $012d                                     ; $4c84: $01 $2d $01
	pop bc                                           ; $4c87: $c1
	dec h                                            ; $4c88: $25
	ld bc, $2dc1                                     ; $4c89: $01 $c1 $2d
	ld [bc], a                                       ; $4c8c: $02
	ret z                                            ; $4c8d: $c8

	ld h, $01                                        ; $4c8e: $26 $01
	ld l, $02                                        ; $4c90: $2e $02
	jp $092e                                         ; $4c92: $c3 $2e $09


	sub [hl]                                         ; $4c95: $96
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	ld a, [hl]                                       ; $4c98: $7e
	nop                                              ; $4c99: $00
	or l                                             ; $4c9a: $b5
	add c                                            ; $4c9b: $81
	inc bc                                           ; $4c9c: $03
	rst $38                                          ; $4c9d: $ff
	rlca                                             ; $4c9e: $07
	cp [hl]                                          ; $4c9f: $be
	inc c                                            ; $4ca0: $0c
	ld d, $18                                        ; $4ca1: $16 $18
	ld a, [de]                                       ; $4ca3: $1a
	inc e                                            ; $4ca4: $1c
	cp [hl]                                          ; $4ca5: $be
	or c                                             ; $4ca6: $b1
	ld hl, $0000                                     ; $4ca7: $21 $00 $00
	inc e                                            ; $4caa: $1c
	inc c                                            ; $4cab: $0c
	ret z                                            ; $4cac: $c8

	ld d, $0c                                        ; $4cad: $16 $0c
	jp nz, $0c16                                     ; $4caf: $c2 $16 $0c

	ret z                                            ; $4cb2: $c8

	cp l                                             ; $4cb3: $bd
	ld [bc], a                                       ; $4cb4: $02
	dec d                                            ; $4cb5: $15
	inc c                                            ; $4cb6: $0c
	inc c                                            ; $4cb7: $0c
	or c                                             ; $4cb8: $b1
	ld h, c                                          ; $4cb9: $61
	ld b, $06                                        ; $4cba: $06 $06
	rra                                              ; $4cbc: $1f
	ld b, $b1                                        ; $4cbd: $06 $b1
	ld sp, $0000                                     ; $4cbf: $31 $00 $00
	rra                                              ; $4cc2: $1f
	ld b, $b1                                        ; $4cc3: $06 $b1
	ld h, c                                          ; $4cc5: $61
	inc c                                            ; $4cc6: $0c
	ld b, $21                                        ; $4cc7: $06 $21
	inc c                                            ; $4cc9: $0c
	sub [hl]                                         ; $4cca: $96
	nop                                              ; $4ccb: $00
	nop                                              ; $4ccc: $00
	dec e                                            ; $4ccd: $1d
	inc c                                            ; $4cce: $0c
	or c                                             ; $4ccf: $b1
	ld d, c                                          ; $4cd0: $51
	ld a, [bc]                                       ; $4cd1: $0a
	dec b                                            ; $4cd2: $05
	dec e                                            ; $4cd3: $1d
	ld a, [bc]                                       ; $4cd4: $0a
	jp $021d                                         ; $4cd5: $c3 $1d $02


	or c                                             ; $4cd8: $b1
	add c                                            ; $4cd9: $81
	dec bc                                           ; $4cda: $0b
	rlca                                             ; $4cdb: $07
	dec d                                            ; $4cdc: $15
	dec bc                                           ; $4cdd: $0b
	jp $0115                                         ; $4cde: $c3 $15 $01


	rst JumpTable                                          ; $4ce1: $c7
	jr jr_036_4cef                                   ; $4ce2: $18 $0b

	jp $0118                                         ; $4ce4: $c3 $18 $01


	rst JumpTable                                          ; $4ce7: $c7
	ld a, [de]                                       ; $4ce8: $1a
	add hl, bc                                       ; $4ce9: $09
	push bc                                          ; $4cea: $c5
	ld a, [de]                                       ; $4ceb: $1a

jr_036_4cec:
	inc bc                                           ; $4cec: $03
	or l                                             ; $4ced: $b5
	ld [hl], c                                       ; $4cee: $71

jr_036_4cef:
	ld [bc], a                                       ; $4cef: $02
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	rra                                              ; $4cf2: $1f
	ld bc, $0b2b                                     ; $4cf3: $01 $2b $0b
	jp $0c1f                                         ; $4cf6: $c3 $1f $0c


	inc de                                           ; $4cf9: $13
	inc c                                            ; $4cfa: $0c
	rst JumpTable                                          ; $4cfb: $c7
	jr jr_036_4cff                                   ; $4cfc: $18 $01

	inc h                                            ; $4cfe: $24

jr_036_4cff:
	dec bc                                           ; $4cff: $0b
	jp $0c18                                         ; $4d00: $c3 $18 $0c


	inc c                                            ; $4d03: $0c
	inc c                                            ; $4d04: $0c
	or c                                             ; $4d05: $b1
	ld [hl], c                                       ; $4d06: $71
	inc c                                            ; $4d07: $0c
	inc bc                                           ; $4d08: $03
	ld hl, $b10c                                     ; $4d09: $21 $0c $b1
	ld [hl], c                                       ; $4d0c: $71
	nop                                              ; $4d0d: $00
	nop                                              ; $4d0e: $00
	cp l                                             ; $4d0f: $bd
	ld [bc], a                                       ; $4d10: $02
	ld hl, $0c0c                                     ; $4d11: $21 $0c $0c
	ld hl, $210c                                     ; $4d14: $21 $0c $21
	dec bc                                           ; $4d17: $0b
	jp nz, $0121                                     ; $4d18: $c2 $21 $01

	or c                                             ; $4d1b: $b1
	ld [hl], c                                       ; $4d1c: $71
	ld b, $05                                        ; $4d1d: $06 $05
	dec e                                            ; $4d1f: $1d
	ld b, $1c                                        ; $4d20: $06 $1c
	ld b, $96                                        ; $4d22: $06 $96
	inc c                                            ; $4d24: $0c
	ld b, $1a                                        ; $4d25: $06 $1a
	inc c                                            ; $4d27: $0c
	add hl, de                                       ; $4d28: $19
	inc c                                            ; $4d29: $0c
	jr @+$0e                                         ; $4d2a: $18 $0c

	ld d, $0b                                        ; $4d2c: $16 $0b
	nop                                              ; $4d2e: $00
	ld bc, $41b5                                     ; $4d2f: $01 $b5 $41
	inc bc                                           ; $4d32: $03
	nop                                              ; $4d33: $00
	nop                                              ; $4d34: $00
	ld a, [hl]                                       ; $4d35: $7e
	nop                                              ; $4d36: $00
	cp $ff                                           ; $4d37: $fe $ff
	or h                                             ; $4d39: $b4
	ld l, [hl]                                       ; $4d3a: $6e
	add c                                            ; $4d3b: $81
	inc bc                                           ; $4d3c: $03
	nop                                              ; $4d3d: $00
	inc h                                            ; $4d3e: $24
	cp $7e                                           ; $4d3f: $fe $7e
	dec b                                            ; $4d41: $05
	nop                                              ; $4d42: $00
	and b                                            ; $4d43: $a0
	add hl, hl                                       ; $4d44: $29
	ld a, [de]                                       ; $4d45: $1a
	or c                                             ; $4d46: $b1
	ld d, c                                          ; $4d47: $51
	inc c                                            ; $4d48: $0c
	dec b                                            ; $4d49: $05
	ld a, [hl]                                       ; $4d4a: $7e
	nop                                              ; $4d4b: $00
	add hl, hl                                       ; $4d4c: $29
	ld a, [bc]                                       ; $4d4d: $0a
	bit 7, [hl]                                      ; $4d4e: $cb $7e
	ld bc, $a900                                     ; $4d50: $01 $00 $a9
	inc h                                            ; $4d53: $24
	jr jr_036_4cec                                   ; $4d54: $18 $96

	inc c                                            ; $4d56: $0c
	ld [bc], a                                       ; $4d57: $02
	ld a, [hl]                                       ; $4d58: $7e
	nop                                              ; $4d59: $00
	ld hl, $960c                                     ; $4d5a: $21 $0c $96
	inc c                                            ; $4d5d: $0c
	dec b                                            ; $4d5e: $05
	inc h                                            ; $4d5f: $24
	inc c                                            ; $4d60: $0c
	ld hl, $960c                                     ; $4d61: $21 $0c $96
	inc c                                            ; $4d64: $0c
	dec b                                            ; $4d65: $05
	ld a, [hl]                                       ; $4d66: $7e
	dec b                                            ; $4d67: $05
	nop                                              ; $4d68: $00
	and b                                            ; $4d69: $a0
	ld h, $0c                                        ; $4d6a: $26 $0c
	ld a, [hl]                                       ; $4d6c: $7e
	nop                                              ; $4d6d: $00
	sub [hl]                                         ; $4d6e: $96
	inc c                                            ; $4d6f: $0c
	inc bc                                           ; $4d70: $03
	inc h                                            ; $4d71: $24
	inc c                                            ; $4d72: $0c
	sub [hl]                                         ; $4d73: $96
	inc c                                            ; $4d74: $0c
	inc b                                            ; $4d75: $04
	ld [hl+], a                                      ; $4d76: $22
	inc c                                            ; $4d77: $0c
	sub [hl]                                         ; $4d78: $96
	inc c                                            ; $4d79: $0c
	dec b                                            ; $4d7a: $05
	inc h                                            ; $4d7b: $24
	inc c                                            ; $4d7c: $0c
	or c                                             ; $4d7d: $b1
	ld b, c                                          ; $4d7e: $41
	nop                                              ; $4d7f: $00
	nop                                              ; $4d80: $00
	inc h                                            ; $4d81: $24
	inc c                                            ; $4d82: $0c
	ld a, [hl]                                       ; $4d83: $7e
	inc bc                                           ; $4d84: $03
	nop                                              ; $4d85: $00
	and b                                            ; $4d86: $a0
	or c                                             ; $4d87: $b1
	and c                                            ; $4d88: $a1
	inc c                                            ; $4d89: $0c
	ld b, $21                                        ; $4d8a: $06 $21
	inc c                                            ; $4d8c: $0c
	ld a, [hl]                                       ; $4d8d: $7e
	ld bc, $a000                                     ; $4d8e: $01 $00 $a0
	rra                                              ; $4d91: $1f
	inc c                                            ; $4d92: $0c
	ld a, [hl]                                       ; $4d93: $7e
	nop                                              ; $4d94: $00
	cp l                                             ; $4d95: $bd
	ld [bc], a                                       ; $4d96: $02
	dec e                                            ; $4d97: $1d
	inc c                                            ; $4d98: $0c
	inc c                                            ; $4d99: $0c
	call nz, $057e                                   ; $4d9a: $c4 $7e $05
	nop                                              ; $4d9d: $00
	and b                                            ; $4d9e: $a0
	dec e                                            ; $4d9f: $1d
	inc c                                            ; $4da0: $0c
	ret                                              ; $4da1: $c9


	ld a, [hl]                                       ; $4da2: $7e
	dec b                                            ; $4da3: $05
	nop                                              ; $4da4: $00
	and b                                            ; $4da5: $a0
	add hl, hl                                       ; $4da6: $29
	inc c                                            ; $4da7: $0c
	call nz, $0c29                                   ; $4da8: $c4 $29 $0c
	or c                                             ; $4dab: $b1
	or c                                             ; $4dac: $b1
	inc c                                            ; $4dad: $0c
	dec b                                            ; $4dae: $05
	ld a, [hl]                                       ; $4daf: $7e
	nop                                              ; $4db0: $00
	jr z, jr_036_4dbf                                ; $4db1: $28 $0c

	sub [hl]                                         ; $4db3: $96
	inc c                                            ; $4db4: $0c
	ld [bc], a                                       ; $4db5: $02
	ld h, $0c                                        ; $4db6: $26 $0c
	sub [hl]                                         ; $4db8: $96
	inc c                                            ; $4db9: $0c
	inc bc                                           ; $4dba: $03
	inc h                                            ; $4dbb: $24
	inc c                                            ; $4dbc: $0c
	sub [hl]                                         ; $4dbd: $96
	nop                                              ; $4dbe: $00

jr_036_4dbf:
	nop                                              ; $4dbf: $00
	ld a, [hl]                                       ; $4dc0: $7e
	nop                                              ; $4dc1: $00
	ld h, $0c                                        ; $4dc2: $26 $0c
	ld h, $30                                        ; $4dc4: $26 $30
	ld a, [hl]                                       ; $4dc6: $7e
	ld bc, $a900                                     ; $4dc7: $01 $00 $a9
	sub [hl]                                         ; $4dca: $96
	jr jr_036_4dd4                                   ; $4dcb: $18 $07

	ld h, $18                                        ; $4dcd: $26 $18
	call nz, $1826                                   ; $4dcf: $c4 $26 $18
	sub [hl]                                         ; $4dd2: $96
	nop                                              ; $4dd3: $00

jr_036_4dd4:
	nop                                              ; $4dd4: $00
	ld a, [hl]                                       ; $4dd5: $7e
	nop                                              ; $4dd6: $00
	jp z, $2693                                      ; $4dd7: $ca $93 $26

	inc d                                            ; $4dda: $14
	add $26                                          ; $4ddb: $c6 $26
	inc bc                                           ; $4ddd: $03
	ret                                              ; $4dde: $c9


	ld a, [hl+]                                      ; $4ddf: $2a
	ld bc, $2bc8                                     ; $4de0: $01 $c8 $2b
	inc c                                            ; $4de3: $0c
	jr z, jr_036_4df2                                ; $4de4: $28 $0c

	jp $0c28                                         ; $4de6: $c3 $28 $0c


	jp z, $0c26                                      ; $4de9: $ca $26 $0c

	jp $0c26                                         ; $4dec: $c3 $26 $0c


	ret                                              ; $4def: $c9


	cp l                                             ; $4df0: $bd
	ld [bc], a                                       ; $4df1: $02

jr_036_4df2:
	inc h                                            ; $4df2: $24
	inc c                                            ; $4df3: $0c
	inc c                                            ; $4df4: $0c
	sub [hl]                                         ; $4df5: $96
	ld b, $06                                        ; $4df6: $06 $06
	ld h, $06                                        ; $4df8: $26 $06
	or c                                             ; $4dfa: $b1
	ld sp, $0000                                     ; $4dfb: $31 $00 $00
	ld h, $05                                        ; $4dfe: $26 $05
	jp z, $0127                                      ; $4e00: $ca $27 $01

	sub [hl]                                         ; $4e03: $96
	inc c                                            ; $4e04: $0c
	ld b, $28                                        ; $4e05: $06 $28
	inc c                                            ; $4e07: $0c
	or c                                             ; $4e08: $b1
	add c                                            ; $4e09: $81
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	ld h, $30                                        ; $4e0c: $26 $30

jr_036_4e0e:
	jp $0c26                                         ; $4e0e: $c3 $26 $0c


	or c                                             ; $4e11: $b1
	sub c                                            ; $4e12: $91
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	ld a, [hl]                                       ; $4e15: $7e
	ld bc, $a900                                     ; $4e16: $01 $00 $a9
	ld [hl+], a                                      ; $4e19: $22
	jr jr_036_4e9a                                   ; $4e1a: $18 $7e

	nop                                              ; $4e1c: $00
	inc h                                            ; $4e1d: $24
	inc c                                            ; $4e1e: $0c
	ld h, $0c                                        ; $4e1f: $26 $0c
	jp $0c26                                         ; $4e21: $c3 $26 $0c


	ret                                              ; $4e24: $c9


	ld a, [hl]                                       ; $4e25: $7e
	ld bc, $a900                                     ; $4e26: $01 $00 $a9
	jr z, jr_036_4e43                                ; $4e29: $28 $18

	or c                                             ; $4e2b: $b1
	ld d, c                                          ; $4e2c: $51
	dec c                                            ; $4e2d: $0d
	dec b                                            ; $4e2e: $05
	jr z, jr_036_4e3d                                ; $4e2f: $28 $0c

	or c                                             ; $4e31: $b1
	sub c                                            ; $4e32: $91
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	ld a, [hl]                                       ; $4e35: $7e
	nop                                              ; $4e36: $00
	add hl, hl                                       ; $4e37: $29
	jr @-$4d                                         ; $4e38: $18 $b1

	ld h, c                                          ; $4e3a: $61
	inc c                                            ; $4e3b: $0c
	dec b                                            ; $4e3c: $05

jr_036_4e3d:
	add hl, hl                                       ; $4e3d: $29
	inc c                                            ; $4e3e: $0c
	or c                                             ; $4e3f: $b1
	sub c                                            ; $4e40: $91
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00

jr_036_4e43:
	jr z, jr_036_4e51                                ; $4e43: $28 $0c

	or c                                             ; $4e45: $b1
	ld h, c                                          ; $4e46: $61
	inc c                                            ; $4e47: $0c
	ld b, $28                                        ; $4e48: $06 $28
	inc c                                            ; $4e4a: $0c
	or c                                             ; $4e4b: $b1
	add c                                            ; $4e4c: $81
	nop                                              ; $4e4d: $00
	nop                                              ; $4e4e: $00
	jr z, jr_036_4e5b                                ; $4e4f: $28 $0a

jr_036_4e51:
	jp $0228                                         ; $4e51: $c3 $28 $02


	ret z                                            ; $4e54: $c8

	add hl, hl                                       ; $4e55: $29
	ld a, [bc]                                       ; $4e56: $0a
	jp nz, $0129                                     ; $4e57: $c2 $29 $01

	ret                                              ; $4e5a: $c9


jr_036_4e5b:
	ld a, [hl+]                                      ; $4e5b: $2a
	ld bc, $2bc7                                     ; $4e5c: $01 $c7 $2b
	inc c                                            ; $4e5f: $0c
	ret                                              ; $4e60: $c9


	sub e                                            ; $4e61: $93
	ld a, [hl]                                       ; $4e62: $7e
	dec b                                            ; $4e63: $05
	nop                                              ; $4e64: $00
	and b                                            ; $4e65: $a0
	add hl, hl                                       ; $4e66: $29
	ld a, [de]                                       ; $4e67: $1a
	or c                                             ; $4e68: $b1
	ld d, c                                          ; $4e69: $51
	inc c                                            ; $4e6a: $0c
	dec b                                            ; $4e6b: $05
	ld a, [hl]                                       ; $4e6c: $7e
	nop                                              ; $4e6d: $00
	add hl, hl                                       ; $4e6e: $29
	ld a, [bc]                                       ; $4e6f: $0a
	jp z, $017e                                      ; $4e70: $ca $7e $01

	nop                                              ; $4e73: $00
	xor c                                            ; $4e74: $a9
	inc h                                            ; $4e75: $24
	jr jr_036_4e0e                                   ; $4e76: $18 $96

	inc c                                            ; $4e78: $0c
	ld [bc], a                                       ; $4e79: $02
	ld a, [hl]                                       ; $4e7a: $7e
	nop                                              ; $4e7b: $00
	ld hl, $960c                                     ; $4e7c: $21 $0c $96
	inc c                                            ; $4e7f: $0c
	dec b                                            ; $4e80: $05
	inc h                                            ; $4e81: $24
	inc c                                            ; $4e82: $0c
	ld hl, $960c                                     ; $4e83: $21 $0c $96
	inc c                                            ; $4e86: $0c
	dec b                                            ; $4e87: $05
	ld a, [hl]                                       ; $4e88: $7e
	dec b                                            ; $4e89: $05
	nop                                              ; $4e8a: $00
	and b                                            ; $4e8b: $a0
	ld h, $0c                                        ; $4e8c: $26 $0c
	ld a, [hl]                                       ; $4e8e: $7e
	nop                                              ; $4e8f: $00
	sub [hl]                                         ; $4e90: $96
	inc c                                            ; $4e91: $0c
	inc bc                                           ; $4e92: $03
	inc h                                            ; $4e93: $24
	inc c                                            ; $4e94: $0c
	sub [hl]                                         ; $4e95: $96
	inc c                                            ; $4e96: $0c
	inc b                                            ; $4e97: $04
	ld [hl+], a                                      ; $4e98: $22
	inc c                                            ; $4e99: $0c

jr_036_4e9a:
	sub [hl]                                         ; $4e9a: $96
	inc c                                            ; $4e9b: $0c
	dec b                                            ; $4e9c: $05
	inc h                                            ; $4e9d: $24
	inc c                                            ; $4e9e: $0c
	or c                                             ; $4e9f: $b1
	ld sp, $0000                                     ; $4ea0: $31 $00 $00
	inc h                                            ; $4ea3: $24
	inc c                                            ; $4ea4: $0c
	ld a, [hl]                                       ; $4ea5: $7e
	inc bc                                           ; $4ea6: $03
	nop                                              ; $4ea7: $00
	and b                                            ; $4ea8: $a0
	or c                                             ; $4ea9: $b1
	and c                                            ; $4eaa: $a1
	inc c                                            ; $4eab: $0c
	ld b, $21                                        ; $4eac: $06 $21
	inc c                                            ; $4eae: $0c
	ld a, [hl]                                       ; $4eaf: $7e
	ld bc, $a000                                     ; $4eb0: $01 $00 $a0
	rra                                              ; $4eb3: $1f
	inc c                                            ; $4eb4: $0c
	ld a, [hl]                                       ; $4eb5: $7e
	nop                                              ; $4eb6: $00
	cp l                                             ; $4eb7: $bd
	ld [bc], a                                       ; $4eb8: $02
	dec e                                            ; $4eb9: $1d
	inc c                                            ; $4eba: $0c
	inc c                                            ; $4ebb: $0c
	jp $057e                                         ; $4ebc: $c3 $7e $05


	nop                                              ; $4ebf: $00
	and b                                            ; $4ec0: $a0
	dec e                                            ; $4ec1: $1d
	inc c                                            ; $4ec2: $0c
	ret                                              ; $4ec3: $c9


	ld a, [hl]                                       ; $4ec4: $7e
	dec b                                            ; $4ec5: $05
	nop                                              ; $4ec6: $00
	and b                                            ; $4ec7: $a0
	add hl, hl                                       ; $4ec8: $29
	inc c                                            ; $4ec9: $0c
	jp $0c29                                         ; $4eca: $c3 $29 $0c


	or c                                             ; $4ecd: $b1
	sub c                                            ; $4ece: $91
	inc c                                            ; $4ecf: $0c
	dec b                                            ; $4ed0: $05
	ld a, [hl]                                       ; $4ed1: $7e
	nop                                              ; $4ed2: $00
	jr z, jr_036_4ee1                                ; $4ed3: $28 $0c

	sub [hl]                                         ; $4ed5: $96
	inc c                                            ; $4ed6: $0c
	ld [bc], a                                       ; $4ed7: $02
	ld h, $0c                                        ; $4ed8: $26 $0c
	sub [hl]                                         ; $4eda: $96
	inc c                                            ; $4edb: $0c
	inc bc                                           ; $4edc: $03
	inc h                                            ; $4edd: $24
	inc c                                            ; $4ede: $0c
	sub [hl]                                         ; $4edf: $96
	nop                                              ; $4ee0: $00

jr_036_4ee1:
	nop                                              ; $4ee1: $00
	ld a, [hl]                                       ; $4ee2: $7e
	nop                                              ; $4ee3: $00
	ld h, $0c                                        ; $4ee4: $26 $0c
	ld h, $30                                        ; $4ee6: $26 $30
	ld a, [hl]                                       ; $4ee8: $7e
	ld bc, $a900                                     ; $4ee9: $01 $00 $a9
	sub [hl]                                         ; $4eec: $96
	jr jr_036_4ef6                                   ; $4eed: $18 $07

	ld h, $18                                        ; $4eef: $26 $18
	jp $1826                                         ; $4ef1: $c3 $26 $18


	sub [hl]                                         ; $4ef4: $96
	nop                                              ; $4ef5: $00

jr_036_4ef6:
	nop                                              ; $4ef6: $00
	ld a, [hl]                                       ; $4ef7: $7e
	nop                                              ; $4ef8: $00
	jp z, $2693                                      ; $4ef9: $ca $93 $26

	inc d                                            ; $4efc: $14
	add $26                                          ; $4efd: $c6 $26
	inc bc                                           ; $4eff: $03
	jp z, $012a                                      ; $4f00: $ca $2a $01

	ret                                              ; $4f03: $c9


	dec hl                                           ; $4f04: $2b
	inc c                                            ; $4f05: $0c
	jp z, $0c28                                      ; $4f06: $ca $28 $0c

	jp $0c28                                         ; $4f09: $c3 $28 $0c


	jp z, $0c26                                      ; $4f0c: $ca $26 $0c

	jp $0c26                                         ; $4f0f: $c3 $26 $0c


	jp z, $02bd                                      ; $4f12: $ca $bd $02

	inc h                                            ; $4f15: $24

jr_036_4f16:
	inc c                                            ; $4f16: $0c
	inc c                                            ; $4f17: $0c
	sub [hl]                                         ; $4f18: $96
	ld b, $06                                        ; $4f19: $06 $06
	ld h, $06                                        ; $4f1b: $26 $06
	or c                                             ; $4f1d: $b1
	ld sp, $0000                                     ; $4f1e: $31 $00 $00
	ld h, $05                                        ; $4f21: $26 $05
	ret z                                            ; $4f23: $c8

	daa                                              ; $4f24: $27
	ld bc, $91b1                                     ; $4f25: $01 $b1 $91
	rst $38                                          ; $4f28: $ff
	ld b, $28                                        ; $4f29: $06 $28
	inc c                                            ; $4f2b: $0c
	or c                                             ; $4f2c: $b1
	sub c                                            ; $4f2d: $91
	nop                                              ; $4f2e: $00
	nop                                              ; $4f2f: $00
	add hl, hl                                       ; $4f30: $29
	inc c                                            ; $4f31: $0c
	or c                                             ; $4f32: $b1
	add c                                            ; $4f33: $81
	rst $38                                          ; $4f34: $ff
	dec b                                            ; $4f35: $05

jr_036_4f36:
	add hl, hl                                       ; $4f36: $29
	ld a, [bc]                                       ; $4f37: $0a
	jp $0229                                         ; $4f38: $c3 $29 $02


	or c                                             ; $4f3b: $b1
	sub c                                            ; $4f3c: $91
	rst $38                                          ; $4f3d: $ff
	rlca                                             ; $4f3e: $07
	add hl, hl                                       ; $4f3f: $29
	dec bc                                           ; $4f40: $0b
	jp $0129                                         ; $4f41: $c3 $29 $01


	ret                                              ; $4f44: $c9


	dec hl                                           ; $4f45: $2b
	dec bc                                           ; $4f46: $0b
	jp $012b                                         ; $4f47: $c3 $2b $01


	ret                                              ; $4f4a: $c9


	dec l                                            ; $4f4b: $2d
	add hl, bc                                       ; $4f4c: $09
	push bc                                          ; $4f4d: $c5
	dec l                                            ; $4f4e: $2d
	ld [bc], a                                       ; $4f4f: $02
	ret                                              ; $4f50: $c9


	dec l                                            ; $4f51: $2d
	ld bc, $91b1                                     ; $4f52: $01 $b1 $91
	rst $38                                          ; $4f55: $ff
	rlca                                             ; $4f56: $07
	ld l, $0c                                        ; $4f57: $2e $0c
	sub [hl]                                         ; $4f59: $96
	inc c                                            ; $4f5a: $0c
	inc b                                            ; $4f5b: $04
	dec l                                            ; $4f5c: $2d
	inc c                                            ; $4f5d: $0c
	sub [hl]                                         ; $4f5e: $96
	inc c                                            ; $4f5f: $0c
	ld [bc], a                                       ; $4f60: $02
	add hl, hl                                       ; $4f61: $29
	inc c                                            ; $4f62: $0c
	sub [hl]                                         ; $4f63: $96
	inc c                                            ; $4f64: $0c
	rlca                                             ; $4f65: $07
	ld l, $0c                                        ; $4f66: $2e $0c
	sub [hl]                                         ; $4f68: $96
	inc c                                            ; $4f69: $0c
	inc b                                            ; $4f6a: $04
	dec l                                            ; $4f6b: $2d
	inc c                                            ; $4f6c: $0c
	sub [hl]                                         ; $4f6d: $96
	inc c                                            ; $4f6e: $0c
	ld [bc], a                                       ; $4f6f: $02
	add hl, hl                                       ; $4f70: $29
	dec bc                                           ; $4f71: $0b
	jp $0129                                         ; $4f72: $c3 $29 $01


	ret                                              ; $4f75: $c9


	add hl, hl                                       ; $4f76: $29
	inc c                                            ; $4f77: $0c
	sub [hl]                                         ; $4f78: $96
	nop                                              ; $4f79: $00
	nop                                              ; $4f7a: $00

jr_036_4f7b:
	add hl, hl                                       ; $4f7b: $29
	inc c                                            ; $4f7c: $0c
	add hl, hl                                       ; $4f7d: $29
	jr jr_036_4f16                                   ; $4f7e: $18 $96

	jr jr_036_4f89                                   ; $4f80: $18 $07

	add hl, hl                                       ; $4f82: $29
	jr jr_036_4f36                                   ; $4f83: $18 $b1

	ld sp, $0000                                     ; $4f85: $31 $00 $00
	add hl, hl                                       ; $4f88: $29

jr_036_4f89:
	ld a, [bc]                                       ; $4f89: $0a
	or c                                             ; $4f8a: $b1
	and c                                            ; $4f8b: $a1
	nop                                              ; $4f8c: $00
	nop                                              ; $4f8d: $00
	inc hl                                           ; $4f8e: $23
	ld [bc], a                                       ; $4f8f: $02
	call z, $0a24                                    ; $4f90: $cc $24 $0a
	jp $0224                                         ; $4f93: $c3 $24 $02


	jp z, $0a26                                      ; $4f96: $ca $26 $0a

	call nz, $0226                                   ; $4f99: $c4 $26 $02
	call z, $0b28                                    ; $4f9c: $cc $28 $0b
	nop                                              ; $4f9f: $00
	ld bc, $a1b5                                     ; $4fa0: $01 $b5 $a1
	inc bc                                           ; $4fa3: $03
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	ld a, [hl]                                       ; $4fa6: $7e
	nop                                              ; $4fa7: $00
	cp $ff                                           ; $4fa8: $fe $ff
	or h                                             ; $4faa: $b4
	ld l, [hl]                                       ; $4fab: $6e
	ld hl, $0001                                     ; $4fac: $21 $01 $00
	inc h                                            ; $4faf: $24
	cp $c2                                           ; $4fb0: $fe $c2
	dec e                                            ; $4fb2: $1d
	jr jr_036_4f7b                                   ; $4fb3: $18 $c6

	dec e                                            ; $4fb5: $1d
	inc c                                            ; $4fb6: $0c
	jp nz, $0c15                                     ; $4fb7: $c2 $15 $0c

	add $15                                          ; $4fba: $c6 $15
	inc c                                            ; $4fbc: $0c
	jp nz, $1815                                     ; $4fbd: $c2 $15 $18

	add $15                                          ; $4fc0: $c6 $15
	ld b, $c6                                        ; $4fc2: $06 $c6
	dec d                                            ; $4fc4: $15
	ld b, $c2                                        ; $4fc5: $06 $c2
	ld d, $22                                        ; $4fc7: $16 $22
	add $16                                          ; $4fc9: $c6 $16
	ld [bc], a                                       ; $4fcb: $02
	jp nz, $0c18                                     ; $4fcc: $c2 $18 $0c

	add $18                                          ; $4fcf: $c6 $18
	inc c                                            ; $4fd1: $0c
	jp nz, $0c19                                     ; $4fd2: $c2 $19 $0c

	add $19                                          ; $4fd5: $c6 $19
	inc c                                            ; $4fd7: $0c
	jp nz, $02bd                                     ; $4fd8: $c2 $bd $02

	ld a, [de]                                       ; $4fdb: $1a
	inc c                                            ; $4fdc: $0c
	ld a, [bc]                                       ; $4fdd: $0a
	add $1a                                          ; $4fde: $c6 $1a
	ld [bc], a                                       ; $4fe0: $02
	jp nz, $0a1a                                     ; $4fe1: $c2 $1a $0a

	add $1a                                          ; $4fe4: $c6 $1a
	ld [bc], a                                       ; $4fe6: $02
	jp nz, $0c1a                                     ; $4fe7: $c2 $1a $0c

	call nz, $061a                                   ; $4fea: $c4 $1a $06
	add $1a                                          ; $4fed: $c6 $1a
	ld b, $c6                                        ; $4fef: $06 $c6
	jp nz, $1818                                     ; $4ff1: $c2 $18 $18

	add $18                                          ; $4ff4: $c6 $18
	inc c                                            ; $4ff6: $0c
	jp nz, $02bd                                     ; $4ff7: $c2 $bd $02

	ld d, $0c                                        ; $4ffa: $16 $0c
	ld b, $c6                                        ; $4ffc: $06 $c6
	ld d, $06                                        ; $4ffe: $16 $06
	jp nz, $0616                                     ; $5000: $c2 $16 $06

	add $16                                          ; $5003: $c6 $16
	ld b, $c2                                        ; $5005: $06 $c2
	ld d, $06                                        ; $5007: $16 $06
	add $16                                          ; $5009: $c6 $16
	ld b, $c2                                        ; $500b: $06 $c2
	ld d, $06                                        ; $500d: $16 $06
	add $16                                          ; $500f: $c6 $16
	ld b, $c2                                        ; $5011: $06 $c2
	ld d, $06                                        ; $5013: $16 $06
	add $16                                          ; $5015: $c6 $16
	ld b, $c2                                        ; $5017: $06 $c2
	ld d, $06                                        ; $5019: $16 $06
	add $16                                          ; $501b: $c6 $16
	ld b, $c2                                        ; $501d: $06 $c2
	dec d                                            ; $501f: $15
	ld b, $c6                                        ; $5020: $06 $c6
	dec d                                            ; $5022: $15
	ld b, $c2                                        ; $5023: $06 $c2
	inc d                                            ; $5025: $14
	ld b, $c6                                        ; $5026: $06 $c6
	inc d                                            ; $5028: $14
	ld b, $81                                        ; $5029: $06 $81
	jp nz, $1813                                     ; $502b: $c2 $13 $18

	add $13                                          ; $502e: $c6 $13
	inc c                                            ; $5030: $0c
	jp nz, $0c18                                     ; $5031: $c2 $18 $0c

	add $18                                          ; $5034: $c6 $18
	inc c                                            ; $5036: $0c
	jp nz, $0c16                                     ; $5037: $c2 $16 $0c

	add $16                                          ; $503a: $c6 $16
	inc c                                            ; $503c: $0c
	jp nz, $02bd                                     ; $503d: $c2 $bd $02

	dec d                                            ; $5040: $15
	inc c                                            ; $5041: $0c
	inc c                                            ; $5042: $0c
	call nz, $0615                                   ; $5043: $c4 $15 $06
	add $15                                          ; $5046: $c6 $15
	ld b, $c2                                        ; $5048: $06 $c2
	dec d                                            ; $504a: $15
	ld b, $c6                                        ; $504b: $06 $c6
	dec d                                            ; $504d: $15
	ld b, $c2                                        ; $504e: $06 $c2
	ld a, [de]                                       ; $5050: $1a
	ld d, $c6                                        ; $5051: $16 $c6
	ld a, [de]                                       ; $5053: $1a
	ld [bc], a                                       ; $5054: $02
	jp nz, $0615                                     ; $5055: $c2 $15 $06

	add $15                                          ; $5058: $c6 $15
	ld b, $c2                                        ; $505a: $06 $c2
	jr @+$0e                                         ; $505c: $18 $0c

	ld a, [de]                                       ; $505e: $1a
	ld a, [bc]                                       ; $505f: $0a
	add $1a                                          ; $5060: $c6 $1a
	ld [bc], a                                       ; $5062: $02
	jp nz, $1816                                     ; $5063: $c2 $16 $18

	add $16                                          ; $5066: $c6 $16
	inc c                                            ; $5068: $0c
	jp nz, $0c16                                     ; $5069: $c2 $16 $0c

	add $16                                          ; $506c: $c6 $16
	inc c                                            ; $506e: $0c
	jp nz, $1816                                     ; $506f: $c2 $16 $18

	call nz, $0616                                   ; $5072: $c4 $16 $06
	add $16                                          ; $5075: $c6 $16
	ld b, $c2                                        ; $5077: $06 $c2
	jr jr_036_5093                                   ; $5079: $18 $18

	add $18                                          ; $507b: $c6 $18
	inc c                                            ; $507d: $0c
	jp nz, $0c18                                     ; $507e: $c2 $18 $0c

	add $18                                          ; $5081: $c6 $18
	inc c                                            ; $5083: $0c
	jp nz, $0b18                                     ; $5084: $c2 $18 $0b

	add $18                                          ; $5087: $c6 $18
	ld bc, $1ac2                                     ; $5089: $01 $c2 $1a
	dec bc                                           ; $508c: $0b
	add $1a                                          ; $508d: $c6 $1a
	ld bc, $1cc2                                     ; $508f: $01 $c2 $1c
	dec bc                                           ; $5092: $0b

jr_036_5093:
	add $1c                                          ; $5093: $c6 $1c
	ld bc, $c281                                     ; $5095: $01 $81 $c2
	jp nz, $181d                                     ; $5098: $c2 $1d $18

	add $1d                                          ; $509b: $c6 $1d
	inc c                                            ; $509d: $0c
	jp nz, $0c15                                     ; $509e: $c2 $15 $0c

	add $15                                          ; $50a1: $c6 $15
	inc c                                            ; $50a3: $0c
	jp nz, $2015                                     ; $50a4: $c2 $15 $20

	call nz, $0215                                   ; $50a7: $c4 $15 $02
	add $15                                          ; $50aa: $c6 $15
	ld [bc], a                                       ; $50ac: $02
	jp nz, $2216                                     ; $50ad: $c2 $16 $22

	add $16                                          ; $50b0: $c6 $16
	ld [bc], a                                       ; $50b2: $02
	jp nz, $0c18                                     ; $50b3: $c2 $18 $0c

	add $18                                          ; $50b6: $c6 $18
	inc c                                            ; $50b8: $0c
	jp nz, $0c19                                     ; $50b9: $c2 $19 $0c

	add $19                                          ; $50bc: $c6 $19
	inc c                                            ; $50be: $0c
	jp nz, $02bd                                     ; $50bf: $c2 $bd $02

	ld a, [de]                                       ; $50c2: $1a
	inc c                                            ; $50c3: $0c
	ld a, [bc]                                       ; $50c4: $0a
	add $1a                                          ; $50c5: $c6 $1a
	ld [bc], a                                       ; $50c7: $02
	jp nz, $0a1a                                     ; $50c8: $c2 $1a $0a

	add $1a                                          ; $50cb: $c6 $1a
	ld [bc], a                                       ; $50cd: $02
	jp nz, $0c1a                                     ; $50ce: $c2 $1a $0c

	call nz, $061a                                   ; $50d1: $c4 $1a $06
	add $1a                                          ; $50d4: $c6 $1a
	ld b, $c6                                        ; $50d6: $06 $c6
	jp nz, $1818                                     ; $50d8: $c2 $18 $18

	add $18                                          ; $50db: $c6 $18
	inc c                                            ; $50dd: $0c
	jp nz, $02bd                                     ; $50de: $c2 $bd $02

	ld d, $0c                                        ; $50e1: $16 $0c
	ld b, $c6                                        ; $50e3: $06 $c6
	ld d, $06                                        ; $50e5: $16 $06
	jp nz, $0616                                     ; $50e7: $c2 $16 $06

	add $16                                          ; $50ea: $c6 $16
	ld b, $c2                                        ; $50ec: $06 $c2
	ld d, $06                                        ; $50ee: $16 $06
	add $16                                          ; $50f0: $c6 $16
	ld b, $c2                                        ; $50f2: $06 $c2
	ld d, $06                                        ; $50f4: $16 $06
	add $16                                          ; $50f6: $c6 $16
	ld b, $c2                                        ; $50f8: $06 $c2
	ld d, $06                                        ; $50fa: $16 $06
	add $16                                          ; $50fc: $c6 $16
	ld b, $c2                                        ; $50fe: $06 $c2
	ld d, $06                                        ; $5100: $16 $06
	add $16                                          ; $5102: $c6 $16
	ld b, $c2                                        ; $5104: $06 $c2
	dec d                                            ; $5106: $15
	ld b, $c6                                        ; $5107: $06 $c6
	dec d                                            ; $5109: $15
	ld b, $c2                                        ; $510a: $06 $c2
	inc d                                            ; $510c: $14
	ld b, $c6                                        ; $510d: $06 $c6
	inc d                                            ; $510f: $14
	ld b, $81                                        ; $5110: $06 $81
	jp nz, $1813                                     ; $5112: $c2 $13 $18

	add $13                                          ; $5115: $c6 $13
	inc c                                            ; $5117: $0c
	jp nz, $0c18                                     ; $5118: $c2 $18 $0c

	add $18                                          ; $511b: $c6 $18
	inc c                                            ; $511d: $0c
	jp nz, $0c16                                     ; $511e: $c2 $16 $0c

	add $16                                          ; $5121: $c6 $16
	inc c                                            ; $5123: $0c
	jp nz, $02bd                                     ; $5124: $c2 $bd $02

	dec d                                            ; $5127: $15
	inc c                                            ; $5128: $0c
	dec bc                                           ; $5129: $0b
	add $15                                          ; $512a: $c6 $15
	ld bc, $17c2                                     ; $512c: $01 $c2 $17
	ld b, $c6                                        ; $512f: $06 $c6
	rla                                              ; $5131: $17

jr_036_5132:
	ld b, $c2                                        ; $5132: $06 $c2
	add hl, de                                       ; $5134: $19
	ld b, $c6                                        ; $5135: $06 $c6
	add hl, de                                       ; $5137: $19
	ld b, $c2                                        ; $5138: $06 $c2
	ld a, [de]                                       ; $513a: $1a
	ld d, $c6                                        ; $513b: $16 $c6
	ld a, [de]                                       ; $513d: $1a

jr_036_513e:
	ld [bc], a                                       ; $513e: $02
	jp nz, $0b1a                                     ; $513f: $c2 $1a $0b

	add $1a                                          ; $5142: $c6 $1a
	ld bc, $1cc2                                     ; $5144: $01 $c2 $1c
	dec bc                                           ; $5147: $0b
	add $1c                                          ; $5148: $c6 $1c
	ld bc, $1ec2                                     ; $514a: $01 $c2 $1e
	dec bc                                           ; $514d: $0b
	add $1e                                          ; $514e: $c6 $1e
	ld bc, $1fc2                                     ; $5150: $01 $c2 $1f
	inc c                                            ; $5153: $0c
	add $1f                                          ; $5154: $c6 $1f
	inc c                                            ; $5156: $0c
	call nz, $0c1f                                   ; $5157: $c4 $1f $0c
	jp nz, $0c18                                     ; $515a: $c2 $18 $0c

	add $18                                          ; $515d: $c6 $18
	inc c                                            ; $515f: $0c
	call nz, $0c18                                   ; $5160: $c4 $18 $0c
	jp nz, $02bd                                     ; $5163: $c2 $bd $02

	dec e                                            ; $5166: $1d
	jr jr_036_5199                                   ; $5167: $18 $30

	call nz, $181d                                   ; $5169: $c4 $1d $18
	add $1d                                          ; $516c: $c6 $1d
	jr jr_036_5132                                   ; $516e: $18 $c2

	cp $ff                                           ; $5170: $fe $ff
	ret nc                                           ; $5172: $d0

	ld l, [hl]                                       ; $5173: $6e
	add hl, bc                                       ; $5174: $09
	inc c                                            ; $5175: $0c
	inc c                                            ; $5176: $0c
	ld b, $0c                                        ; $5177: $06 $0c
	ld b, $1e                                        ; $5179: $06 $1e
	inc c                                            ; $517b: $0c
	cp $14                                           ; $517c: $fe $14
	jr jr_036_513e                                   ; $517e: $18 $be

	inc c                                            ; $5180: $0c
	inc c                                            ; $5181: $0c
	ld [de], a                                       ; $5182: $12
	add hl, bc                                       ; $5183: $09
	ld [de], a                                       ; $5184: $12
	inc c                                            ; $5185: $0c
	ld [de], a                                       ; $5186: $12
	cp [hl]                                          ; $5187: $be
	cp [hl]                                          ; $5188: $be
	inc c                                            ; $5189: $0c
	add hl, bc                                       ; $518a: $09
	ld [de], a                                       ; $518b: $12
	inc c                                            ; $518c: $0c
	ld [de], a                                       ; $518d: $12
	add hl, bc                                       ; $518e: $09
	jr jr_036_519d                                   ; $518f: $18 $0c

	add hl, bc                                       ; $5191: $09
	cp [hl]                                          ; $5192: $be
	cp [hl]                                          ; $5193: $be
	inc c                                            ; $5194: $0c
	ld [de], a                                       ; $5195: $12
	add hl, bc                                       ; $5196: $09
	inc c                                            ; $5197: $0c
	ld [de], a                                       ; $5198: $12

jr_036_5199:
	add hl, bc                                       ; $5199: $09
	ld [de], a                                       ; $519a: $12
	inc c                                            ; $519b: $0c

jr_036_519c:
	ld [de], a                                       ; $519c: $12

jr_036_519d:
	cp [hl]                                          ; $519d: $be
	cp [hl]                                          ; $519e: $be
	inc c                                            ; $519f: $0c
	add hl, bc                                       ; $51a0: $09
	ld [de], a                                       ; $51a1: $12
	inc c                                            ; $51a2: $0c
	ld [de], a                                       ; $51a3: $12
	ld [de], a                                       ; $51a4: $12
	add hl, bc                                       ; $51a5: $09
	inc c                                            ; $51a6: $0c
	add hl, bc                                       ; $51a7: $09
	cp [hl]                                          ; $51a8: $be
	cp [hl]                                          ; $51a9: $be
	inc c                                            ; $51aa: $0c
	add hl, bc                                       ; $51ab: $09
	ld [de], a                                       ; $51ac: $12
	inc c                                            ; $51ad: $0c
	add hl, bc                                       ; $51ae: $09
	ld [de], a                                       ; $51af: $12
	add hl, bc                                       ; $51b0: $09
	inc c                                            ; $51b1: $0c
	add hl, bc                                       ; $51b2: $09
	cp [hl]                                          ; $51b3: $be
	cp [hl]                                          ; $51b4: $be
	inc c                                            ; $51b5: $0c
	ld [de], a                                       ; $51b6: $12
	add hl, bc                                       ; $51b7: $09
	inc c                                            ; $51b8: $0c
	add hl, bc                                       ; $51b9: $09
	ld [de], a                                       ; $51ba: $12
	jr jr_036_51c9                                   ; $51bb: $18 $0c

	ld [de], a                                       ; $51bd: $12
	cp [hl]                                          ; $51be: $be
	cp [hl]                                          ; $51bf: $be
	inc c                                            ; $51c0: $0c
	add hl, bc                                       ; $51c1: $09
	ld [de], a                                       ; $51c2: $12
	inc c                                            ; $51c3: $0c
	ld [de], a                                       ; $51c4: $12
	add hl, bc                                       ; $51c5: $09
	ld [de], a                                       ; $51c6: $12
	inc c                                            ; $51c7: $0c
	ld [de], a                                       ; $51c8: $12

jr_036_51c9:
	cp [hl]                                          ; $51c9: $be
	cp [hl]                                          ; $51ca: $be
	inc c                                            ; $51cb: $0c
	add hl, bc                                       ; $51cc: $09
	inc de                                           ; $51cd: $13
	inc c                                            ; $51ce: $0c
	ld [de], a                                       ; $51cf: $12
	inc c                                            ; $51d0: $0c
	cp [hl]                                          ; $51d1: $be
	cp [hl]                                          ; $51d2: $be
	ld b, $12                                        ; $51d3: $06 $12
	inc de                                           ; $51d5: $13
	inc c                                            ; $51d6: $0c
	inc c                                            ; $51d7: $0c
	cp [hl]                                          ; $51d8: $be
	dec c                                            ; $51d9: $0d
	inc c                                            ; $51da: $0c
	inc d                                            ; $51db: $14

jr_036_51dc:
	jr jr_036_519c                                   ; $51dc: $18 $be

	inc c                                            ; $51de: $0c
	inc c                                            ; $51df: $0c
	ld [de], a                                       ; $51e0: $12
	add hl, bc                                       ; $51e1: $09
	ld [de], a                                       ; $51e2: $12
	inc c                                            ; $51e3: $0c
	ld [de], a                                       ; $51e4: $12
	cp [hl]                                          ; $51e5: $be
	cp [hl]                                          ; $51e6: $be
	inc c                                            ; $51e7: $0c
	add hl, bc                                       ; $51e8: $09
	ld [de], a                                       ; $51e9: $12
	inc c                                            ; $51ea: $0c
	ld [de], a                                       ; $51eb: $12
	add hl, bc                                       ; $51ec: $09
	jr jr_036_51fb                                   ; $51ed: $18 $0c

	add hl, bc                                       ; $51ef: $09
	cp [hl]                                          ; $51f0: $be
	cp [hl]                                          ; $51f1: $be
	inc c                                            ; $51f2: $0c
	ld [de], a                                       ; $51f3: $12
	add hl, bc                                       ; $51f4: $09

jr_036_51f5:
	inc c                                            ; $51f5: $0c
	ld [de], a                                       ; $51f6: $12
	add hl, bc                                       ; $51f7: $09
	ld [de], a                                       ; $51f8: $12
	inc c                                            ; $51f9: $0c
	ld [de], a                                       ; $51fa: $12

jr_036_51fb:
	cp [hl]                                          ; $51fb: $be
	cp [hl]                                          ; $51fc: $be
	inc c                                            ; $51fd: $0c
	add hl, bc                                       ; $51fe: $09
	ld [de], a                                       ; $51ff: $12
	inc c                                            ; $5200: $0c
	ld [de], a                                       ; $5201: $12
	ld [de], a                                       ; $5202: $12
	add hl, bc                                       ; $5203: $09
	inc c                                            ; $5204: $0c
	add hl, bc                                       ; $5205: $09
	cp [hl]                                          ; $5206: $be
	cp [hl]                                          ; $5207: $be
	inc c                                            ; $5208: $0c
	jr @+$14                                         ; $5209: $18 $12

	inc c                                            ; $520b: $0c
	ld [de], a                                       ; $520c: $12
	add hl, bc                                       ; $520d: $09
	jr jr_036_521c                                   ; $520e: $18 $0c

	cp [hl]                                          ; $5210: $be
	cp l                                             ; $5211: $bd
	ld [bc], a                                       ; $5212: $02
	jr jr_036_5221                                   ; $5213: $18 $0c

	inc c                                            ; $5215: $0c
	cp [hl]                                          ; $5216: $be
	inc c                                            ; $5217: $0c
	ld [de], a                                       ; $5218: $12
	inc c                                            ; $5219: $0c
	ld [de], a                                       ; $521a: $12
	add hl, bc                                       ; $521b: $09

jr_036_521c:
	jr jr_036_51dc                                   ; $521c: $18 $be

	cp l                                             ; $521e: $bd
	ld [bc], a                                       ; $521f: $02
	inc c                                            ; $5220: $0c

jr_036_5221:
	inc c                                            ; $5221: $0c
	inc b                                            ; $5222: $04
	rla                                              ; $5223: $17
	inc b                                            ; $5224: $04
	ld d, $04                                        ; $5225: $16 $04
	cp [hl]                                          ; $5227: $be
	inc c                                            ; $5228: $0c
	inc c                                            ; $5229: $0c
	add hl, bc                                       ; $522a: $09
	add hl, bc                                       ; $522b: $09
	inc c                                            ; $522c: $0c
	cp [hl]                                          ; $522d: $be
	rla                                              ; $522e: $17
	ld b, $16                                        ; $522f: $06 $16
	ld b, $12                                        ; $5231: $06 $12
	inc c                                            ; $5233: $0c
	inc d                                            ; $5234: $14
	jr jr_036_51f5                                   ; $5235: $18 $be

	inc c                                            ; $5237: $0c
	nop                                              ; $5238: $00
	jr jr_036_5244                                   ; $5239: $18 $09

	ld [de], a                                       ; $523b: $12
	inc c                                            ; $523c: $0c
	cp [hl]                                          ; $523d: $be
	ld [de], a                                       ; $523e: $12
	ld b, $16                                        ; $523f: $06 $16
	inc bc                                           ; $5241: $03
	ld d, $03                                        ; $5242: $16 $03

jr_036_5244:
	inc c                                            ; $5244: $0c
	ld b, $0c                                        ; $5245: $06 $0c
	ld b, $0d                                        ; $5247: $06 $0d
	inc c                                            ; $5249: $0c
	cp $ff                                           ; $524a: $fe $ff
	ret nc                                           ; $524c: $d0

	ld e, h                                          ; $524d: $5c
	cp $92                                           ; $524e: $fe $92
	sub [hl]                                         ; $5250: $96
	inc c                                            ; $5251: $0c
	ld [bc], a                                       ; $5252: $02
	ld a, [hl]                                       ; $5253: $7e
	nop                                              ; $5254: $00
	ld h, a                                          ; $5255: $67
	db $fd                                           ; $5256: $fd
	ld l, a                                          ; $5257: $6f
	ld d, e                                          ; $5258: $53
	ld l, c                                          ; $5259: $69
	db $fd                                           ; $525a: $fd
	ld a, d                                          ; $525b: $7a
	ld d, e                                          ; $525c: $53
	ld h, a                                          ; $525d: $67
	db $fd                                           ; $525e: $fd
	ld l, a                                          ; $525f: $6f
	ld d, e                                          ; $5260: $53
	ld h, d                                          ; $5261: $62
	db $fd                                           ; $5262: $fd
	ld l, a                                          ; $5263: $6f
	ld d, e                                          ; $5264: $53
	ld [hl], c                                       ; $5265: $71
	db $fd                                           ; $5266: $fd
	ld l, a                                          ; $5267: $6f
	ld d, e                                          ; $5268: $53
	ld [hl], e                                       ; $5269: $73
	db $fd                                           ; $526a: $fd
	ld l, a                                          ; $526b: $6f
	ld d, e                                          ; $526c: $53
	ld [hl], c                                       ; $526d: $71
	db $fd                                           ; $526e: $fd
	ld a, d                                          ; $526f: $7a
	ld d, e                                          ; $5270: $53
	ld a, b                                          ; $5271: $78
	db $fd                                           ; $5272: $fd
	ld l, a                                          ; $5273: $6f
	ld d, e                                          ; $5274: $53
	ld [hl], l                                       ; $5275: $75
	db $fd                                           ; $5276: $fd
	ld l, a                                          ; $5277: $6f
	ld d, e                                          ; $5278: $53
	ld l, e                                          ; $5279: $6b
	db $fd                                           ; $527a: $fd
	ld l, a                                          ; $527b: $6f
	ld d, e                                          ; $527c: $53
	ld l, c                                          ; $527d: $69
	db $fd                                           ; $527e: $fd
	ld a, d                                          ; $527f: $7a
	ld d, e                                          ; $5280: $53
	ld h, a                                          ; $5281: $67
	db $fd                                           ; $5282: $fd
	ld l, a                                          ; $5283: $6f
	ld d, e                                          ; $5284: $53
	ld [hl], b                                       ; $5285: $70
	db $fd                                           ; $5286: $fd
	ld l, a                                          ; $5287: $6f
	ld d, e                                          ; $5288: $53
	ld [hl], c                                       ; $5289: $71
	db $fd                                           ; $528a: $fd
	ld l, a                                          ; $528b: $6f
	ld d, e                                          ; $528c: $53
	ld [hl], e                                       ; $528d: $73
	db $fd                                           ; $528e: $fd
	ld l, a                                          ; $528f: $6f
	ld d, e                                          ; $5290: $53
	ld [hl], c                                       ; $5291: $71
	db $fd                                           ; $5292: $fd
	ld a, d                                          ; $5293: $7a

jr_036_5294:
	ld d, e                                          ; $5294: $53
	ld a, b                                          ; $5295: $78
	db $fd                                           ; $5296: $fd
	ld l, a                                          ; $5297: $6f
	ld d, e                                          ; $5298: $53
	ld [hl], l                                       ; $5299: $75
	db $fd                                           ; $529a: $fd
	ld l, a                                          ; $529b: $6f
	ld d, e                                          ; $529c: $53
	ld h, a                                          ; $529d: $67
	db $fd                                           ; $529e: $fd
	ld l, a                                          ; $529f: $6f
	ld d, e                                          ; $52a0: $53
	ld l, c                                          ; $52a1: $69
	db $fd                                           ; $52a2: $fd
	ld a, d                                          ; $52a3: $7a
	ld d, e                                          ; $52a4: $53
	ld h, a                                          ; $52a5: $67
	db $fd                                           ; $52a6: $fd
	ld l, a                                          ; $52a7: $6f
	ld d, e                                          ; $52a8: $53
	ld h, d                                          ; $52a9: $62
	db $fd                                           ; $52aa: $fd
	ld l, a                                          ; $52ab: $6f
	ld d, e                                          ; $52ac: $53
	ld [hl], c                                       ; $52ad: $71
	db $fd                                           ; $52ae: $fd
	ld l, a                                          ; $52af: $6f
	ld d, e                                          ; $52b0: $53
	ld [hl], e                                       ; $52b1: $73
	db $fd                                           ; $52b2: $fd
	ld l, a                                          ; $52b3: $6f
	ld d, e                                          ; $52b4: $53
	ld [hl], c                                       ; $52b5: $71
	db $fd                                           ; $52b6: $fd
	ld a, d                                          ; $52b7: $7a
	ld d, e                                          ; $52b8: $53
	ld a, b                                          ; $52b9: $78

jr_036_52ba:
	db $fd                                           ; $52ba: $fd
	ld l, a                                          ; $52bb: $6f
	ld d, e                                          ; $52bc: $53
	ld [hl], l                                       ; $52bd: $75
	db $fd                                           ; $52be: $fd
	ld l, a                                          ; $52bf: $6f
	ld d, e                                          ; $52c0: $53
	ld l, e                                          ; $52c1: $6b
	db $fd                                           ; $52c2: $fd
	ld l, a                                          ; $52c3: $6f
	ld d, e                                          ; $52c4: $53
	ld h, d                                          ; $52c5: $62
	db $fd                                           ; $52c6: $fd
	ld a, d                                          ; $52c7: $7a
	ld d, e                                          ; $52c8: $53
	ld h, a                                          ; $52c9: $67
	db $fd                                           ; $52ca: $fd
	ld l, a                                          ; $52cb: $6f
	ld d, e                                          ; $52cc: $53
	ld h, [hl]                                       ; $52cd: $66
	db $fd                                           ; $52ce: $fd
	ld l, a                                          ; $52cf: $6f
	ld d, e                                          ; $52d0: $53
	ld h, a                                          ; $52d1: $67
	db $fd                                           ; $52d2: $fd
	ld l, a                                          ; $52d3: $6f
	ld d, e                                          ; $52d4: $53
	ld [hl], e                                       ; $52d5: $73
	db $fd                                           ; $52d6: $fd
	ld l, a                                          ; $52d7: $6f
	ld d, e                                          ; $52d8: $53
	ld [hl], c                                       ; $52d9: $71
	db $fd                                           ; $52da: $fd
	ld a, d                                          ; $52db: $7a
	ld d, e                                          ; $52dc: $53
	sub a                                            ; $52dd: $97
	ld c, e                                          ; $52de: $4b
	or l                                             ; $52df: $b5
	pop af                                           ; $52e0: $f1
	ld [bc], a                                       ; $52e1: $02
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	ld [hl], b                                       ; $52e4: $70
	ld a, [hl]                                       ; $52e5: $7e
	inc bc                                           ; $52e6: $03
	nop                                              ; $52e7: $00
	and b                                            ; $52e8: $a0
	inc l                                            ; $52e9: $2c
	inc c                                            ; $52ea: $0c
	ld a, [hl]                                       ; $52eb: $7e
	nop                                              ; $52ec: $00
	dec hl                                           ; $52ed: $2b
	inc c                                            ; $52ee: $0c
	pop de                                           ; $52ef: $d1
	call nz, $3d97                                   ; $52f0: $c4 $97 $3d
	sub d                                            ; $52f3: $92
	ld a, [hl]                                       ; $52f4: $7e
	nop                                              ; $52f5: $00
	add hl, hl                                       ; $52f6: $29
	ld [de], a                                       ; $52f7: $12
	sub a                                            ; $52f8: $97
	ccf                                              ; $52f9: $3f
	dec h                                            ; $52fa: $25
	jr jr_036_5294                                   ; $52fb: $18 $97

	nop                                              ; $52fd: $00
	rst JumpTable                                          ; $52fe: $c7
	dec h                                            ; $52ff: $25
	ld [de], a                                       ; $5300: $12
	jp $0c25                                         ; $5301: $c3 $25 $0c


	adc $97                                          ; $5304: $ce $97
	ld c, e                                          ; $5306: $4b
	ld a, [hl]                                       ; $5307: $7e
	inc bc                                           ; $5308: $03
	nop                                              ; $5309: $00
	and b                                            ; $530a: $a0
	inc l                                            ; $530b: $2c
	inc c                                            ; $530c: $0c
	ld a, [hl]                                       ; $530d: $7e
	nop                                              ; $530e: $00
	dec hl                                           ; $530f: $2b
	inc c                                            ; $5310: $0c
	sub a                                            ; $5311: $97
	dec a                                            ; $5312: $3d
	add hl, hl                                       ; $5313: $29
	ld [de], a                                       ; $5314: $12
	sub a                                            ; $5315: $97
	ccf                                              ; $5316: $3f
	ld [hl+], a                                      ; $5317: $22
	ld [de], a                                       ; $5318: $12
	ld a, [hl]                                       ; $5319: $7e
	ld bc, $a000                                     ; $531a: $01 $00 $a0
	sub a                                            ; $531d: $97
	nop                                              ; $531e: $00
	ret z                                            ; $531f: $c8

	ld [hl+], a                                      ; $5320: $22
	jr nc, jr_036_52ba                               ; $5321: $30 $97

	nop                                              ; $5323: $00
	jp $0c22                                         ; $5324: $c3 $22 $0c


	sub a                                            ; $5327: $97
	nop                                              ; $5328: $00
	ld a, [hl]                                       ; $5329: $7e
	nop                                              ; $532a: $00
	ld [hl], c                                       ; $532b: $71
	db $fd                                           ; $532c: $fd
	ld l, a                                          ; $532d: $6f
	ld d, e                                          ; $532e: $53
	ld h, a                                          ; $532f: $67
	db $fd                                           ; $5330: $fd
	ld a, d                                          ; $5331: $7a
	ld d, e                                          ; $5332: $53
	ld h, d                                          ; $5333: $62
	db $fd                                           ; $5334: $fd
	ld l, a                                          ; $5335: $6f
	ld d, e                                          ; $5336: $53
	ld l, e                                          ; $5337: $6b
	db $fd                                           ; $5338: $fd
	ld l, a                                          ; $5339: $6f
	ld d, e                                          ; $533a: $53
	ld h, [hl]                                       ; $533b: $66
	db $fd                                           ; $533c: $fd
	ld l, a                                          ; $533d: $6f
	ld d, e                                          ; $533e: $53
	ld h, a                                          ; $533f: $67
	db $fd                                           ; $5340: $fd
	ld l, a                                          ; $5341: $6f
	ld d, e                                          ; $5342: $53
	ld h, [hl]                                       ; $5343: $66
	db $fd                                           ; $5344: $fd
	ld a, d                                          ; $5345: $7a
	ld d, e                                          ; $5346: $53
	ld h, d                                          ; $5347: $62
	db $fd                                           ; $5348: $fd
	ld l, a                                          ; $5349: $6f
	ld d, e                                          ; $534a: $53
	ld h, a                                          ; $534b: $67
	db $fd                                           ; $534c: $fd
	ld l, a                                          ; $534d: $6f
	ld d, e                                          ; $534e: $53
	or c                                             ; $534f: $b1
	ld [hl], c                                       ; $5350: $71
	nop                                              ; $5351: $00
	nop                                              ; $5352: $00
	ld a, [hl]                                       ; $5353: $7e
	inc c                                            ; $5354: $0c
	rlca                                             ; $5355: $07
	and b                                            ; $5356: $a0
	ld [hl], b                                       ; $5357: $70
	dec hl                                           ; $5358: $2b
	ld [de], a                                       ; $5359: $12
	dec hl                                           ; $535a: $2b
	ld [de], a                                       ; $535b: $12
	sub [hl]                                         ; $535c: $96
	nop                                              ; $535d: $00
	nop                                              ; $535e: $00
	ld a, [hl]                                       ; $535f: $7e
	ld bc, $a00c                                     ; $5360: $01 $0c $a0
	dec hl                                           ; $5363: $2b
	inc h                                            ; $5364: $24
	ld a, [hl]                                       ; $5365: $7e
	nop                                              ; $5366: $00
	jp nz, $0c2b                                     ; $5367: $c2 $2b $0c

	pop bc                                           ; $536a: $c1
	dec hl                                           ; $536b: $2b
	inc c                                            ; $536c: $0c
	cp $ff                                           ; $536d: $fe $ff
	or c                                             ; $536f: $b1
	ld h, c                                          ; $5370: $61
	nop                                              ; $5371: $00
	nop                                              ; $5372: $00
	dec h                                            ; $5373: $25
	inc b                                            ; $5374: $04
	jp $25d1                                         ; $5375: $c3 $d1 $25


	ld [$b1fd], sp                                   ; $5378: $08 $fd $b1
	ld h, c                                          ; $537b: $61
	nop                                              ; $537c: $00
	nop                                              ; $537d: $00
	dec h                                            ; $537e: $25
	inc b                                            ; $537f: $04
	jp $25d1                                         ; $5380: $c3 $d1 $25


	ld [bc], a                                       ; $5383: $02
	db $fd                                           ; $5384: $fd
	ret nc                                           ; $5385: $d0

	ld e, h                                          ; $5386: $5c
	cp $b5                                           ; $5387: $fe $b5
	or c                                             ; $5389: $b1
	ld bc, $06ff                                     ; $538a: $01 $ff $06
	inc h                                            ; $538d: $24
	inc c                                            ; $538e: $0c
	sub [hl]                                         ; $538f: $96
	ld b, $02                                        ; $5390: $06 $02
	dec h                                            ; $5392: $25
	ld b, $b1                                        ; $5393: $06 $b1
	sub c                                            ; $5395: $91
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	daa                                              ; $5398: $27
	ld b, $c3                                        ; $5399: $06 $c3
	daa                                              ; $539b: $27
	ld b, $c9                                        ; $539c: $06 $c9
	dec hl                                           ; $539e: $2b
	ld b, $c3                                        ; $539f: $06 $c3
	dec hl                                           ; $53a1: $2b
	ld b, $b1                                        ; $53a2: $06 $b1
	sub c                                            ; $53a4: $91
	ld de, $2c07                                     ; $53a5: $11 $07 $2c
	ld de, $0100                                     ; $53a8: $11 $00 $01
	sub [hl]                                         ; $53ab: $96
	inc c                                            ; $53ac: $0c
	rlca                                             ; $53ad: $07
	ld a, [hl]                                       ; $53ae: $7e
	inc bc                                           ; $53af: $03
	nop                                              ; $53b0: $00
	xor c                                            ; $53b1: $a9
	ld l, $0c                                        ; $53b2: $2e $0c
	ld a, [hl]                                       ; $53b4: $7e
	nop                                              ; $53b5: $00
	inc l                                            ; $53b6: $2c
	inc c                                            ; $53b7: $0c
	dec hl                                           ; $53b8: $2b
	inc c                                            ; $53b9: $0c
	sub [hl]                                         ; $53ba: $96
	ld [de], a                                       ; $53bb: $12
	rlca                                             ; $53bc: $07
	inc l                                            ; $53bd: $2c
	ld [de], a                                       ; $53be: $12
	ld a, [hl]                                       ; $53bf: $7e
	ld bc, $a920                                     ; $53c0: $01 $20 $a9
	or c                                             ; $53c3: $b1
	add c                                            ; $53c4: $81
	jr jr_036_53ce                                   ; $53c5: $18 $07

	daa                                              ; $53c7: $27
	ld b, d                                          ; $53c8: $42
	ld a, [hl]                                       ; $53c9: $7e
	ld bc, $a900                                     ; $53ca: $01 $00 $a9
	or c                                             ; $53cd: $b1

jr_036_53ce:
	ld hl, $0000                                     ; $53ce: $21 $00 $00

jr_036_53d1:
	daa                                              ; $53d1: $27
	inc c                                            ; $53d2: $0c
	or c                                             ; $53d3: $b1
	or c                                             ; $53d4: $b1
	inc c                                            ; $53d5: $0c
	inc b                                            ; $53d6: $04
	ld a, [hl]                                       ; $53d7: $7e
	nop                                              ; $53d8: $00
	inc h                                            ; $53d9: $24
	inc c                                            ; $53da: $0c
	sub [hl]                                         ; $53db: $96
	ld b, $02                                        ; $53dc: $06 $02
	dec h                                            ; $53de: $25
	ld b, $b1                                        ; $53df: $06 $b1
	sub c                                            ; $53e1: $91
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	daa                                              ; $53e4: $27

jr_036_53e5:
	ld b, $c3                                        ; $53e5: $06 $c3
	daa                                              ; $53e7: $27
	ld b, $c9                                        ; $53e8: $06 $c9
	dec hl                                           ; $53ea: $2b
	ld b, $c3                                        ; $53eb: $06 $c3
	dec hl                                           ; $53ed: $2b
	ld b, $b1                                        ; $53ee: $06 $b1
	sub c                                            ; $53f0: $91
	ld [de], a                                       ; $53f1: $12
	rlca                                             ; $53f2: $07
	inc l                                            ; $53f3: $2c
	ld [de], a                                       ; $53f4: $12
	ld a, [hl]                                       ; $53f5: $7e
	inc bc                                           ; $53f6: $03
	nop                                              ; $53f7: $00
	xor c                                            ; $53f8: $a9
	sub [hl]                                         ; $53f9: $96
	rst $38                                          ; $53fa: $ff
	dec b                                            ; $53fb: $05
	ld l, $0c                                        ; $53fc: $2e $0c
	ld a, [hl]                                       ; $53fe: $7e
	nop                                              ; $53ff: $00
	inc l                                            ; $5400: $2c
	inc c                                            ; $5401: $0c
	dec hl                                           ; $5402: $2b
	inc c                                            ; $5403: $0c
	or c                                             ; $5404: $b1
	sub c                                            ; $5405: $91
	ld [de], a                                       ; $5406: $12
	rlca                                             ; $5407: $07
	ld a, [hl]                                       ; $5408: $7e
	inc bc                                           ; $5409: $03
	nop                                              ; $540a: $00
	xor c                                            ; $540b: $a9
	inc l                                            ; $540c: $2c
	ld [de], a                                       ; $540d: $12
	ld a, [hl]                                       ; $540e: $7e
	inc bc                                           ; $540f: $03
	nop                                              ; $5410: $00
	and b                                            ; $5411: $a0
	ret                                              ; $5412: $c9


	jr nc, jr_036_5427                               ; $5413: $30 $12

	or c                                             ; $5415: $b1
	and c                                            ; $5416: $a1
	nop                                              ; $5417: $00
	nop                                              ; $5418: $00
	ld a, [hl]                                       ; $5419: $7e
	inc bc                                           ; $541a: $03
	nop                                              ; $541b: $00
	xor c                                            ; $541c: $a9
	daa                                              ; $541d: $27
	jr jr_036_53d1                                   ; $541e: $18 $b1

	ld sp, $07ff                                     ; $5420: $31 $ff $07
	ld a, [hl]                                       ; $5423: $7e
	ld bc, $a000                                     ; $5424: $01 $00 $a0

jr_036_5427:
	daa                                              ; $5427: $27
	inc c                                            ; $5428: $0c
	or l                                             ; $5429: $b5
	pop de                                           ; $542a: $d1
	nop                                              ; $542b: $00
	nop                                              ; $542c: $00
	nop                                              ; $542d: $00
	sub a                                            ; $542e: $97
	ld e, e                                          ; $542f: $5b
	ld a, [hl]                                       ; $5430: $7e
	inc bc                                           ; $5431: $03
	nop                                              ; $5432: $00
	and b                                            ; $5433: $a0
	jr nc, jr_036_5442                               ; $5434: $30 $0c

	ld a, [hl]                                       ; $5436: $7e
	nop                                              ; $5437: $00
	cpl                                              ; $5438: $2f
	inc c                                            ; $5439: $0c
	sub [hl]                                         ; $543a: $96
	nop                                              ; $543b: $00
	nop                                              ; $543c: $00
	sub b                                            ; $543d: $90
	sub a                                            ; $543e: $97
	ld c, l                                          ; $543f: $4d
	ld l, $12                                        ; $5440: $2e $12

jr_036_5442:
	add hl, hl                                       ; $5442: $29
	ld [de], a                                       ; $5443: $12
	ret                                              ; $5444: $c9


	sub a                                            ; $5445: $97
	nop                                              ; $5446: $00
	ld a, [hl]                                       ; $5447: $7e
	ld bc, $a900                                     ; $5448: $01 $00 $a9
	add hl, hl                                       ; $544b: $29
	jr jr_036_53e5                                   ; $544c: $18 $97

	nop                                              ; $544e: $00
	call nz, $0c29                                   ; $544f: $c4 $29 $0c
	sub a                                            ; $5452: $97
	dec a                                            ; $5453: $3d
	ld a, [hl]                                       ; $5454: $7e
	inc bc                                           ; $5455: $03
	nop                                              ; $5456: $00
	and b                                            ; $5457: $a0
	jr nc, jr_036_5466                               ; $5458: $30 $0c

	ld a, [hl]                                       ; $545a: $7e
	nop                                              ; $545b: $00
	cpl                                              ; $545c: $2f
	inc c                                            ; $545d: $0c
	sub a                                            ; $545e: $97
	ld c, l                                          ; $545f: $4d
	ld l, $12                                        ; $5460: $2e $12
	ld a, [hl]                                       ; $5462: $7e
	ld bc, $a01e                                     ; $5463: $01 $1e $a0

jr_036_5466:
	jr z, jr_036_547a                                ; $5466: $28 $12

	sub a                                            ; $5468: $97
	nop                                              ; $5469: $00
	ret z                                            ; $546a: $c8

	jr z, @+$1a                                      ; $546b: $28 $18

	ld a, [hl]                                       ; $546d: $7e
	ld bc, $a900                                     ; $546e: $01 $00 $a9
	jr z, jr_036_548b                                ; $5471: $28 $18

	sub a                                            ; $5473: $97
	nop                                              ; $5474: $00
	call nz, $0c28                                   ; $5475: $c4 $28 $0c
	or l                                             ; $5478: $b5
	and c                                            ; $5479: $a1

jr_036_547a:
	ld bc, $02ff                                     ; $547a: $01 $ff $02
	sub a                                            ; $547d: $97
	nop                                              ; $547e: $00
	ld a, [hl]                                       ; $547f: $7e
	nop                                              ; $5480: $00
	daa                                              ; $5481: $27
	inc c                                            ; $5482: $0c
	add hl, hl                                       ; $5483: $29
	ld b, $c9                                        ; $5484: $06 $c9
	dec hl                                           ; $5486: $2b
	inc c                                            ; $5487: $0c
	inc l                                            ; $5488: $2c
	inc c                                            ; $5489: $0c
	or c                                             ; $548a: $b1

jr_036_548b:
	add c                                            ; $548b: $81
	rst $38                                          ; $548c: $ff
	rlca                                             ; $548d: $07
	ld a, [hl]                                       ; $548e: $7e
	dec b                                            ; $548f: $05
	nop                                              ; $5490: $00
	xor c                                            ; $5491: $a9
	ld l, $12                                        ; $5492: $2e $12
	ld a, [hl]                                       ; $5494: $7e
	nop                                              ; $5495: $00
	jr nc, jr_036_54a4                               ; $5496: $30 $0c

	ld a, [hl]                                       ; $5498: $7e
	dec b                                            ; $5499: $05
	nop                                              ; $549a: $00
	xor c                                            ; $549b: $a9
	ld l, $0c                                        ; $549c: $2e $0c
	ld a, [hl]                                       ; $549e: $7e
	nop                                              ; $549f: $00
	jr nc, jr_036_54ae                               ; $54a0: $30 $0c

	rst JumpTable                                          ; $54a2: $c7
	ld a, [hl]                                       ; $54a3: $7e

jr_036_54a4:
	inc c                                            ; $54a4: $0c
	rlca                                             ; $54a5: $07
	and b                                            ; $54a6: $a0
	inc sp                                           ; $54a7: $33
	ld [de], a                                       ; $54a8: $12
	inc sp                                           ; $54a9: $33
	ld [de], a                                       ; $54aa: $12
	or c                                             ; $54ab: $b1
	ld h, c                                          ; $54ac: $61
	nop                                              ; $54ad: $00

jr_036_54ae:
	nop                                              ; $54ae: $00
	ld a, [hl]                                       ; $54af: $7e
	ld bc, $a00c                                     ; $54b0: $01 $0c $a0
	inc sp                                           ; $54b3: $33
	inc h                                            ; $54b4: $24
	ld a, [hl]                                       ; $54b5: $7e
	nop                                              ; $54b6: $00
	jp nz, $0c33                                     ; $54b7: $c2 $33 $0c

	pop bc                                           ; $54ba: $c1
	inc sp                                           ; $54bb: $33
	inc c                                            ; $54bc: $0c
	ld a, [hl]                                       ; $54bd: $7e
	nop                                              ; $54be: $00
	cp $ff                                           ; $54bf: $fe $ff
	ret nc                                           ; $54c1: $d0

	ld e, h                                          ; $54c2: $5c
	cp $c2                                           ; $54c3: $fe $c2
	ld [hl], b                                       ; $54c5: $70
	add e                                            ; $54c6: $83
	ld a, [hl]                                       ; $54c7: $7e
	nop                                              ; $54c8: $00
	inc d                                            ; $54c9: $14
	ld [de], a                                       ; $54ca: $12
	jr nz, jr_036_54d3                               ; $54cb: $20 $06

	add $20                                          ; $54cd: $c6 $20
	inc c                                            ; $54cf: $0c
	jp nz, $0620                                     ; $54d0: $c2 $20 $06

jr_036_54d3:
	add $20                                          ; $54d3: $c6 $20
	inc c                                            ; $54d5: $0c
	jp nz, $0620                                     ; $54d6: $c2 $20 $06

	dec de                                           ; $54d9: $1b
	inc c                                            ; $54da: $0c
	ld a, [hl]                                       ; $54db: $7e
	inc bc                                           ; $54dc: $03
	nop                                              ; $54dd: $00
	and b                                            ; $54de: $a0
	dec e                                            ; $54df: $1d
	inc c                                            ; $54e0: $0c
	ld a, [hl]                                       ; $54e1: $7e
	nop                                              ; $54e2: $00
	dec de                                           ; $54e3: $1b
	inc c                                            ; $54e4: $0c
	jp nz, $0620                                     ; $54e5: $c2 $20 $06

	add $20                                          ; $54e8: $c6 $20
	inc c                                            ; $54ea: $0c
	jp nz, $0620                                     ; $54eb: $c2 $20 $06

	call nz, $0c20                                   ; $54ee: $c4 $20 $0c
	jp nz, $0620                                     ; $54f1: $c2 $20 $06

	call nz, $0c20                                   ; $54f4: $c4 $20 $0c
	jp nz, $0620                                     ; $54f7: $c2 $20 $06

	ld a, [hl]                                       ; $54fa: $7e
	dec b                                            ; $54fb: $05
	nop                                              ; $54fc: $00
	and d                                            ; $54fd: $a2
	dec de                                           ; $54fe: $1b
	inc c                                            ; $54ff: $0c
	ld a, [hl]                                       ; $5500: $7e
	nop                                              ; $5501: $00
	dec e                                            ; $5502: $1d
	inc c                                            ; $5503: $0c
	dec de                                           ; $5504: $1b
	inc c                                            ; $5505: $0c
	inc d                                            ; $5506: $14
	ld [de], a                                       ; $5507: $12
	jr nz, jr_036_5510                               ; $5508: $20 $06

	add $20                                          ; $550a: $c6 $20
	inc c                                            ; $550c: $0c
	jp nz, $0620                                     ; $550d: $c2 $20 $06

jr_036_5510:
	add $20                                          ; $5510: $c6 $20
	inc c                                            ; $5512: $0c
	jp nz, $0620                                     ; $5513: $c2 $20 $06

	dec de                                           ; $5516: $1b
	inc c                                            ; $5517: $0c
	ld a, [hl]                                       ; $5518: $7e
	inc bc                                           ; $5519: $03
	nop                                              ; $551a: $00
	and b                                            ; $551b: $a0
	dec e                                            ; $551c: $1d
	inc c                                            ; $551d: $0c
	ld a, [hl]                                       ; $551e: $7e
	nop                                              ; $551f: $00
	dec de                                           ; $5520: $1b
	inc c                                            ; $5521: $0c
	jr nz, jr_036_552a                               ; $5522: $20 $06

	call nz, $0c20                                   ; $5524: $c4 $20 $0c
	jp nz, $0620                                     ; $5527: $c2 $20 $06

jr_036_552a:
	call nz, $0c20                                   ; $552a: $c4 $20 $0c
	jp nz, $0620                                     ; $552d: $c2 $20 $06

	call nz, $0c20                                   ; $5530: $c4 $20 $0c
	jp nz, $0620                                     ; $5533: $c2 $20 $06

	ld a, [hl]                                       ; $5536: $7e
	dec b                                            ; $5537: $05
	nop                                              ; $5538: $00
	and d                                            ; $5539: $a2
	dec de                                           ; $553a: $1b
	inc c                                            ; $553b: $0c
	dec e                                            ; $553c: $1d
	inc c                                            ; $553d: $0c
	jr nz, jr_036_554c                               ; $553e: $20 $0c

	jp nz, Jump_036_7083                             ; $5540: $c2 $83 $70

	ld a, [hl]                                       ; $5543: $7e
	nop                                              ; $5544: $00
	add hl, de                                       ; $5545: $19
	stop                                             ; $5546: $10 $00
	ld [bc], a                                       ; $5548: $02
	add hl, de                                       ; $5549: $19
	ld b, $c4                                        ; $554a: $06 $c4

jr_036_554c:
	add hl, de                                       ; $554c: $19
	inc c                                            ; $554d: $0c
	jp nz, $0619                                     ; $554e: $c2 $19 $06

	call nz, $0c19                                   ; $5551: $c4 $19 $0c
	jp nz, $0619                                     ; $5554: $c2 $19 $06

	inc d                                            ; $5557: $14
	inc c                                            ; $5558: $0c
	ld a, [hl]                                       ; $5559: $7e
	inc bc                                           ; $555a: $03
	nop                                              ; $555b: $00
	and d                                            ; $555c: $a2
	ld d, $0c                                        ; $555d: $16 $0c
	ld a, [hl]                                       ; $555f: $7e
	nop                                              ; $5560: $00
	inc d                                            ; $5561: $14
	inc c                                            ; $5562: $0c
	add hl, de                                       ; $5563: $19
	ld b, $c4                                        ; $5564: $06 $c4
	add hl, de                                       ; $5566: $19
	inc c                                            ; $5567: $0c
	jp nz, $0619                                     ; $5568: $c2 $19 $06

	call nz, $0c19                                   ; $556b: $c4 $19 $0c
	jp nz, $0619                                     ; $556e: $c2 $19 $06

	call nz, $0c19                                   ; $5571: $c4 $19 $0c
	jp nz, $0616                                     ; $5574: $c2 $16 $06

	add hl, de                                       ; $5577: $19
	inc c                                            ; $5578: $0c
	ld a, [hl]                                       ; $5579: $7e
	inc bc                                           ; $557a: $03
	nop                                              ; $557b: $00
	and c                                            ; $557c: $a1
	ld e, $0c                                        ; $557d: $1e $0c
	ld a, [hl]                                       ; $557f: $7e
	nop                                              ; $5580: $00
	inc e                                            ; $5581: $1c
	inc c                                            ; $5582: $0c
	jr jr_036_5597                                   ; $5583: $18 $12

	dec de                                           ; $5585: $1b
	ld b, $c4                                        ; $5586: $06 $c4
	dec de                                           ; $5588: $1b
	inc c                                            ; $5589: $0c
	jp nz, $0620                                     ; $558a: $c2 $20 $06

	call nz, $0c20                                   ; $558d: $c4 $20 $0c
	jp nz, $0418                                     ; $5590: $c2 $18 $04

	nop                                              ; $5593: $00
	ld [bc], a                                       ; $5594: $02
	dec de                                           ; $5595: $1b
	dec bc                                           ; $5596: $0b

jr_036_5597:
	nop                                              ; $5597: $00
	ld bc, $0b20                                     ; $5598: $01 $20 $0b
	nop                                              ; $559b: $00
	ld bc, $0b18                                     ; $559c: $01 $18 $0b
	nop                                              ; $559f: $00
	ld bc, $0b1b                                     ; $55a0: $01 $1b $0b
	nop                                              ; $55a3: $00
	ld bc, $041b                                     ; $55a4: $01 $1b $04
	nop                                              ; $55a7: $00
	ld [bc], a                                       ; $55a8: $02
	add hl, de                                       ; $55a9: $19
	inc c                                            ; $55aa: $0c
	jr @+$08                                         ; $55ab: $18 $06

	ld d, $0c                                        ; $55ad: $16 $0c
	dec de                                           ; $55af: $1b
	dec d                                            ; $55b0: $15
	call nz, $0c1b                                   ; $55b1: $c4 $1b $0c
	add $1b                                          ; $55b4: $c6 $1b
	ld [bc], a                                       ; $55b6: $02
	nop                                              ; $55b7: $00
	dec c                                            ; $55b8: $0d
	cp $ff                                           ; $55b9: $fe $ff
	ret nc                                           ; $55bb: $d0

	ld e, h                                          ; $55bc: $5c
	cp $0a                                           ; $55bd: $fe $0a
	inc c                                            ; $55bf: $0c
	inc c                                            ; $55c0: $0c
	ld b, $09                                        ; $55c1: $06 $09
	inc c                                            ; $55c3: $0c
	add hl, bc                                       ; $55c4: $09
	ld b, $0c                                        ; $55c5: $06 $0c
	ld [de], a                                       ; $55c7: $12
	add hl, bc                                       ; $55c8: $09
	ld b, $0c                                        ; $55c9: $06 $0c
	inc c                                            ; $55cb: $0c
	add hl, bc                                       ; $55cc: $09
	inc c                                            ; $55cd: $0c
	inc c                                            ; $55ce: $0c
	inc c                                            ; $55cf: $0c
	add hl, bc                                       ; $55d0: $09
	inc c                                            ; $55d1: $0c
	inc c                                            ; $55d2: $0c
	ld b, $09                                        ; $55d3: $06 $09
	inc c                                            ; $55d5: $0c
	add hl, bc                                       ; $55d6: $09
	ld b, $0c                                        ; $55d7: $06 $0c
	ld [de], a                                       ; $55d9: $12
	add hl, bc                                       ; $55da: $09
	ld b, $0c                                        ; $55db: $06 $0c
	inc c                                            ; $55dd: $0c
	add hl, bc                                       ; $55de: $09
	inc c                                            ; $55df: $0c
	inc c                                            ; $55e0: $0c
	inc c                                            ; $55e1: $0c
	add hl, bc                                       ; $55e2: $09
	inc c                                            ; $55e3: $0c
	inc c                                            ; $55e4: $0c
	ld b, $09                                        ; $55e5: $06 $09
	inc c                                            ; $55e7: $0c
	add hl, bc                                       ; $55e8: $09
	ld b, $0c                                        ; $55e9: $06 $0c
	ld [de], a                                       ; $55eb: $12
	add hl, bc                                       ; $55ec: $09
	ld b, $0c                                        ; $55ed: $06 $0c
	inc c                                            ; $55ef: $0c
	add hl, bc                                       ; $55f0: $09
	inc c                                            ; $55f1: $0c
	inc c                                            ; $55f2: $0c
	inc c                                            ; $55f3: $0c
	ld a, [bc]                                       ; $55f4: $0a
	inc c                                            ; $55f5: $0c
	ld c, $06                                        ; $55f6: $0e $06
	ld a, [bc]                                       ; $55f8: $0a
	inc c                                            ; $55f9: $0c
	ld c, $06                                        ; $55fa: $0e $06
	ld a, [bc]                                       ; $55fc: $0a
	inc c                                            ; $55fd: $0c
	ld a, [bc]                                       ; $55fe: $0a
	ld b, $0c                                        ; $55ff: $06 $0c
	ld b, $0c                                        ; $5601: $06 $0c
	ld b, $0a                                        ; $5603: $06 $0a
	inc c                                            ; $5605: $0c
	inc c                                            ; $5606: $0c
	ld b, $0c                                        ; $5607: $06 $0c
	ld b, $0c                                        ; $5609: $06 $0c
	ld b, $0a                                        ; $560b: $06 $0a
	inc c                                            ; $560d: $0c
	inc c                                            ; $560e: $0c
	ld b, $09                                        ; $560f: $06 $09
	inc c                                            ; $5611: $0c
	add hl, bc                                       ; $5612: $09
	ld b, $0c                                        ; $5613: $06 $0c
	ld [de], a                                       ; $5615: $12
	add hl, bc                                       ; $5616: $09
	ld b, $0c                                        ; $5617: $06 $0c
	inc c                                            ; $5619: $0c
	add hl, bc                                       ; $561a: $09
	inc c                                            ; $561b: $0c
	dec c                                            ; $561c: $0d
	ld b, $0c                                        ; $561d: $06 $0c
	ld b, $09                                        ; $561f: $06 $09
	inc c                                            ; $5621: $0c
	inc c                                            ; $5622: $0c
	ld b, $09                                        ; $5623: $06 $09
	inc c                                            ; $5625: $0c
	add hl, bc                                       ; $5626: $09
	ld b, $0c                                        ; $5627: $06 $0c
	ld [de], a                                       ; $5629: $12
	add hl, bc                                       ; $562a: $09
	ld b, $0c                                        ; $562b: $06 $0c
	inc c                                            ; $562d: $0c
	add hl, bc                                       ; $562e: $09
	inc c                                            ; $562f: $0c
	inc c                                            ; $5630: $0c
	ld b, $09                                        ; $5631: $06 $09
	inc bc                                           ; $5633: $03
	add hl, bc                                       ; $5634: $09
	inc bc                                           ; $5635: $03
	ld a, [bc]                                       ; $5636: $0a
	inc c                                            ; $5637: $0c
	inc c                                            ; $5638: $0c
	ld b, $09                                        ; $5639: $06 $09
	inc c                                            ; $563b: $0c
	add hl, bc                                       ; $563c: $09
	ld b, $0c                                        ; $563d: $06 $0c
	ld b, $09                                        ; $563f: $06 $09
	inc c                                            ; $5641: $0c
	add hl, bc                                       ; $5642: $09
	ld b, $0c                                        ; $5643: $06 $0c
	inc c                                            ; $5645: $0c
	add hl, bc                                       ; $5646: $09
	inc c                                            ; $5647: $0c
	inc c                                            ; $5648: $0c
	inc c                                            ; $5649: $0c
	ld a, [bc]                                       ; $564a: $0a

jr_036_564b:
	inc c                                            ; $564b: $0c
	cp [hl]                                          ; $564c: $be
	ld b, $0c                                        ; $564d: $06 $0c
	add hl, bc                                       ; $564f: $09
	inc c                                            ; $5650: $0c
	inc c                                            ; $5651: $0c
	add hl, bc                                       ; $5652: $09
	inc c                                            ; $5653: $0c
	cp [hl]                                          ; $5654: $be
	rrca                                             ; $5655: $0f
	jr jr_036_5661                                   ; $5656: $18 $09

jr_036_5658:
	jr jr_036_5658                                   ; $5658: $18 $fe

	rst $38                                          ; $565a: $ff
	ret nc                                           ; $565b: $d0

	or h                                             ; $565c: $b4
	nop                                              ; $565d: $00

jr_036_565e:
	jr nc, jr_036_565e                               ; $565e: $30 $fe

	or l                                             ; $5660: $b5

jr_036_5661:
	pop bc                                           ; $5661: $c1
	ld [bc], a                                       ; $5662: $02
	ld h, h                                          ; $5663: $64
	inc b                                            ; $5664: $04
	ld a, [de]                                       ; $5665: $1a
	jr @+$1f                                         ; $5666: $18 $1d

	jr nc, jr_036_5684                               ; $5668: $30 $1a

	jr @+$1f                                         ; $566a: $18 $1d

	jr @+$1f                                         ; $566c: $18 $1d

	jr jr_036_568a                                   ; $566e: $18 $1a

	jr nc, jr_036_568c                               ; $5670: $30 $1a

	jr jr_036_5692                                   ; $5672: $18 $1e

	jr nc, jr_036_5690                               ; $5674: $30 $1a

	jr jr_036_5696                                   ; $5676: $18 $1e

	jr jr_036_5698                                   ; $5678: $18 $1e

	jr jr_036_5696                                   ; $567a: $18 $1a

	jr nc, jr_036_5698                               ; $567c: $30 $1a

	jr jr_036_569f                                   ; $567e: $18 $1f

jr_036_5680:
	jr nc, jr_036_569c                               ; $5680: $30 $1a

	jr jr_036_56a3                                   ; $5682: $18 $1f

jr_036_5684:
	jr jr_036_56a5                                   ; $5684: $18 $1f

	jr @+$1c                                         ; $5686: $18 $1a

	jr nc, @+$1c                                     ; $5688: $30 $1a

jr_036_568a:
	jr @+$22                                         ; $568a: $18 $20

jr_036_568c:
	jr nc, @+$1c                                     ; $568c: $30 $1a

	jr @+$22                                         ; $568e: $18 $20

jr_036_5690:
	jr @+$22                                         ; $5690: $18 $20

jr_036_5692:
	jr @+$1c                                         ; $5692: $18 $1a

	jr nc, jr_036_564b                               ; $5694: $30 $b5

jr_036_5696:
	pop bc                                           ; $5696: $c1
	ld [bc], a                                       ; $5697: $02

jr_036_5698:
	ld h, h                                          ; $5698: $64
	inc b                                            ; $5699: $04
	ld d, $18                                        ; $569a: $16 $18

jr_036_569c:
	rra                                              ; $569c: $1f
	jr nc, jr_036_56b5                               ; $569d: $30 $16

jr_036_569f:
	jr @+$21                                         ; $569f: $18 $1f

	jr @+$21                                         ; $56a1: $18 $1f

jr_036_56a3:
	jr jr_036_56bb                                   ; $56a3: $18 $16

jr_036_56a5:
	jr nc, jr_036_56bd                               ; $56a5: $30 $16

	jr @+$21                                         ; $56a7: $18 $1f

	jr nc, jr_036_56c1                               ; $56a9: $30 $16

	jr jr_036_56cc                                   ; $56ab: $18 $1f

	jr jr_036_56ce                                   ; $56ad: $18 $1f

	jr jr_036_56c7                                   ; $56af: $18 $16

	jr nc, jr_036_56c9                               ; $56b1: $30 $16

	jr @+$20                                         ; $56b3: $18 $1e

jr_036_56b5:
	jr nc, jr_036_56cd                               ; $56b5: $30 $16

	jr @+$20                                         ; $56b7: $18 $1e

	jr @+$20                                         ; $56b9: $18 $1e

jr_036_56bb:
	jr @+$18                                         ; $56bb: $18 $16

jr_036_56bd:
	jr nc, @+$18                                     ; $56bd: $30 $16

	jr @+$20                                         ; $56bf: $18 $1e

jr_036_56c1:
	jr nc, @+$18                                     ; $56c1: $30 $16

	jr @+$20                                         ; $56c3: $18 $1e

	jr @+$20                                         ; $56c5: $18 $1e

jr_036_56c7:
	jr @+$18                                         ; $56c7: $18 $16

jr_036_56c9:
	jr nc, jr_036_5680                               ; $56c9: $30 $b5

	pop bc                                           ; $56cb: $c1

jr_036_56cc:
	ld [bc], a                                       ; $56cc: $02

jr_036_56cd:
	ld h, h                                          ; $56cd: $64

jr_036_56ce:
	inc b                                            ; $56ce: $04
	dec d                                            ; $56cf: $15
	jr @+$1f                                         ; $56d0: $18 $1d

	jr nc, @+$17                                     ; $56d2: $30 $15

	jr @+$1f                                         ; $56d4: $18 $1d

	jr @+$1f                                         ; $56d6: $18 $1d

	jr @+$17                                         ; $56d8: $18 $15

	jr nc, jr_036_56f2                               ; $56da: $30 $16

	jr @+$1f                                         ; $56dc: $18 $1d

	jr nc, jr_036_56f6                               ; $56de: $30 $16

	jr @+$1f                                         ; $56e0: $18 $1d

	jr jr_036_5701                                   ; $56e2: $18 $1d

	jr jr_036_56fc                                   ; $56e4: $18 $16

	jr nc, jr_036_56fe                               ; $56e6: $30 $16

	jr jr_036_5709                                   ; $56e8: $18 $1f

	jr nc, jr_036_5702                               ; $56ea: $30 $16

	jr jr_036_570d                                   ; $56ec: $18 $1f

	jr jr_036_570f                                   ; $56ee: $18 $1f

	jr @+$18                                         ; $56f0: $18 $16

jr_036_56f2:
	jr nc, @+$1a                                     ; $56f2: $30 $18

	jr jr_036_5717                                   ; $56f4: $18 $21

jr_036_56f6:
	jr nc, @+$1a                                     ; $56f6: $30 $18

	jr jr_036_571b                                   ; $56f8: $18 $21

	jr jr_036_571d                                   ; $56fa: $18 $21

jr_036_56fc:
	jr @+$1a                                         ; $56fc: $18 $18

jr_036_56fe:
	jr nc, jr_036_56b5                               ; $56fe: $30 $b5

	pop bc                                           ; $5700: $c1

jr_036_5701:
	ld [bc], a                                       ; $5701: $02

jr_036_5702:
	ld h, h                                          ; $5702: $64
	inc b                                            ; $5703: $04
	dec d                                            ; $5704: $15
	jr @+$1f                                         ; $5705: $18 $1d

	jr nc, @+$17                                     ; $5707: $30 $15

jr_036_5709:
	jr @+$1f                                         ; $5709: $18 $1d

	jr @+$1f                                         ; $570b: $18 $1d

jr_036_570d:
	jr @+$17                                         ; $570d: $18 $15

jr_036_570f:
	jr nc, jr_036_5727                               ; $570f: $30 $16

	jr @+$1f                                         ; $5711: $18 $1d

	jr nc, jr_036_572b                               ; $5713: $30 $16

	jr @+$1f                                         ; $5715: $18 $1d

jr_036_5717:
	jr jr_036_5736                                   ; $5717: $18 $1d

	jr jr_036_5731                                   ; $5719: $18 $16

jr_036_571b:
	jr nc, jr_036_5733                               ; $571b: $30 $16

jr_036_571d:
	jr jr_036_573e                                   ; $571d: $18 $1f

	jr nc, jr_036_5737                               ; $571f: $30 $16

	jr jr_036_5742                                   ; $5721: $18 $1f

	jr jr_036_5744                                   ; $5723: $18 $1f

	jr jr_036_573d                                   ; $5725: $18 $16

jr_036_5727:
	jr nc, jr_036_5741                               ; $5727: $30 $18

	jr @+$23                                         ; $5729: $18 $21

jr_036_572b:
	jr nc, jr_036_5745                               ; $572b: $30 $18

	jr jr_036_5750                                   ; $572d: $18 $21

	jr jr_036_5752                                   ; $572f: $18 $21

jr_036_5731:
	jr jr_036_574b                                   ; $5731: $18 $18

jr_036_5733:
	jr nc, jr_036_5733                               ; $5733: $30 $fe

	rst $38                                          ; $5735: $ff

jr_036_5736:
	ret nc                                           ; $5736: $d0

jr_036_5737:
	or h                                             ; $5737: $b4
	nop                                              ; $5738: $00

jr_036_5739:
	jr nc, jr_036_5739                               ; $5739: $30 $fe

	or l                                             ; $573b: $b5
	and c                                            ; $573c: $a1

jr_036_573d:
	ld [bc], a                                       ; $573d: $02

jr_036_573e:
	ld d, b                                          ; $573e: $50
	ld b, $7e                                        ; $573f: $06 $7e

jr_036_5741:
	dec l                                            ; $5741: $2d

jr_036_5742:
	ld e, $a0                                        ; $5742: $1e $a0

jr_036_5744:
	nop                                              ; $5744: $00

jr_036_5745:
	jr nc, jr_036_5770                               ; $5745: $30 $29

	jr nc, @-$35                                     ; $5747: $30 $c9

	ld l, $30                                        ; $5749: $2e $30

jr_036_574b:
	jp z, $3029                                      ; $574b: $ca $29 $30

	ret                                              ; $574e: $c9


	ld a, [hl+]                                      ; $574f: $2a

jr_036_5750:
	jr nz, jr_036_577c                               ; $5750: $20 $2a

jr_036_5752:
	jr nz, @+$2c                                     ; $5752: $20 $2a

	jr nz, jr_036_5784                               ; $5754: $20 $2e

	jr nc, @+$32                                     ; $5756: $30 $30

	jr nc, jr_036_578c                               ; $5758: $30 $32

	ld c, b                                          ; $575a: $48
	jr nc, jr_036_5775                               ; $575b: $30 $18

	ld l, $60                                        ; $575d: $2e $60
	or l                                             ; $575f: $b5
	db $e3                                           ; $5760: $e3
	inc bc                                           ; $5761: $03
	ret z                                            ; $5762: $c8

	inc bc                                           ; $5763: $03
	ld a, [hl]                                       ; $5764: $7e
	dec l                                            ; $5765: $2d
	add hl, de                                       ; $5766: $19
	xor c                                            ; $5767: $a9
	ld a, l                                          ; $5768: $7d
	ld bc, $483e                                     ; $5769: $01 $3e $48
	call $047d                                       ; $576c: $cd $7d $04
	dec sp                                           ; $576f: $3b

jr_036_5770:
	jr jr_036_573e                                   ; $5770: $18 $cc

	ld a, l                                          ; $5772: $7d
	dec b                                            ; $5773: $05
	add hl, sp                                       ; $5774: $39

jr_036_5775:
	jr nc, @-$49                                     ; $5775: $30 $b5

	sub c                                            ; $5777: $91
	ld [bc], a                                       ; $5778: $02
	ld d, b                                          ; $5779: $50
	ld b, $7e                                        ; $577a: $06 $7e

jr_036_577c:
	dec l                                            ; $577c: $2d
	ld e, $a0                                        ; $577d: $1e $a0
	ld a, l                                          ; $577f: $7d
	nop                                              ; $5780: $00
	inc sp                                           ; $5781: $33
	jr nc, jr_036_5739                               ; $5782: $30 $b5

jr_036_5784:
	add c                                            ; $5784: $81
	ld [bc], a                                       ; $5785: $02
	ld d, b                                          ; $5786: $50
	ld b, $7e                                        ; $5787: $06 $7e
	dec l                                            ; $5789: $2d
	ld e, $a0                                        ; $578a: $1e $a0

jr_036_578c:
	ld [hl-], a                                      ; $578c: $32
	jr nz, @+$30                                     ; $578d: $20 $2e

	jr nz, jr_036_57bc                               ; $578f: $20 $2b

	jr nz, jr_036_57c1                               ; $5791: $20 $2e

	ld h, b                                          ; $5793: $60
	or l                                             ; $5794: $b5
	db $d3                                           ; $5795: $d3
	inc bc                                           ; $5796: $03
	ret z                                            ; $5797: $c8

	inc bc                                           ; $5798: $03
	ld a, [hl]                                       ; $5799: $7e
	dec l                                            ; $579a: $2d
	ld e, $a9                                        ; $579b: $1e $a9
	ld a, l                                          ; $579d: $7d
	ld bc, $203e                                     ; $579e: $01 $3e $20
	ld a, l                                          ; $57a1: $7d
	dec b                                            ; $57a2: $05
	add hl, sp                                       ; $57a3: $39
	jr nz, jr_036_5823                               ; $57a4: $20 $7d

	ld b, $36                                        ; $57a6: $06 $36
	jr nz, jr_036_5827                               ; $57a8: $20 $7d

	dec b                                            ; $57aa: $05
	add hl, sp                                       ; $57ab: $39
	ld c, b                                          ; $57ac: $48
	or l                                             ; $57ad: $b5
	sub c                                            ; $57ae: $91
	ld [bc], a                                       ; $57af: $02
	ld d, b                                          ; $57b0: $50
	ld b, $7e                                        ; $57b1: $06 $7e
	dec l                                            ; $57b3: $2d
	add hl, de                                       ; $57b4: $19
	and b                                            ; $57b5: $a0
	ld a, l                                          ; $57b6: $7d
	nop                                              ; $57b7: $00
	ld l, $0c                                        ; $57b8: $2e $0c
	jr nc, jr_036_57c8                               ; $57ba: $30 $0c

jr_036_57bc:
	ld sp, $2e20                                     ; $57bc: $31 $20 $2e
	jr nz, jr_036_57eb                               ; $57bf: $20 $2a

jr_036_57c1:
	jr nz, jr_036_57f1                               ; $57c1: $20 $2e

	ld h, b                                          ; $57c3: $60
	or l                                             ; $57c4: $b5
	jp $0003                                         ; $57c5: $c3 $03 $00


jr_036_57c8:
	nop                                              ; $57c8: $00
	ld a, [hl]                                       ; $57c9: $7e
	nop                                              ; $57ca: $00
	ld a, l                                          ; $57cb: $7d
	inc b                                            ; $57cc: $04
	inc a                                            ; $57cd: $3c
	db $10                                           ; $57ce: $10
	ret z                                            ; $57cf: $c8

	inc a                                            ; $57d0: $3c
	ld [$3cc6], sp                                   ; $57d1: $08 $c6 $3c
	ld [$007d], sp                                   ; $57d4: $08 $7d $00
	call z, $103a                                    ; $57d7: $cc $3a $10
	ret z                                            ; $57da: $c8

	ld a, [hl-]                                      ; $57db: $3a
	ld [$3ac6], sp                                   ; $57dc: $08 $c6 $3a
	ld [$36cc], sp                                   ; $57df: $08 $cc $36
	db $10                                           ; $57e2: $10
	ret z                                            ; $57e3: $c8

	ld [hl], $08                                     ; $57e4: $36 $08
	add $36                                          ; $57e6: $c6 $36
	ld [$91b5], sp                                   ; $57e8: $08 $b5 $91

jr_036_57eb:
	inc bc                                           ; $57eb: $03
	ld d, b                                          ; $57ec: $50
	ld b, $30                                        ; $57ed: $06 $30
	ld c, b                                          ; $57ef: $48
	cpl                                              ; $57f0: $2f

jr_036_57f1:
	inc c                                            ; $57f1: $0c
	ld l, $0c                                        ; $57f2: $2e $0c
	or l                                             ; $57f4: $b5
	add c                                            ; $57f5: $81
	inc bc                                           ; $57f6: $03
	ld d, b                                          ; $57f7: $50
	dec b                                            ; $57f8: $05
	ld a, [hl]                                       ; $57f9: $7e
	dec l                                            ; $57fa: $2d
	ld e, $a0                                        ; $57fb: $1e $a0
	dec l                                            ; $57fd: $2d
	adc [hl]                                         ; $57fe: $8e
	ret                                              ; $57ff: $c9


	jr z, jr_036_5806                                ; $5800: $28 $04

	add hl, hl                                       ; $5802: $29
	ld l, $2e                                        ; $5803: $2e $2e
	ld e, [hl]                                       ; $5805: $5e

jr_036_5806:
	dec l                                            ; $5806: $2d
	inc b                                            ; $5807: $04
	ld l, $2e                                        ; $5808: $2e $2e
	jr nc, jr_036_583c                               ; $580a: $30 $30

	ld [hl-], a                                      ; $580c: $32
	ld e, $32                                        ; $580d: $1e $32
	inc b                                            ; $580f: $04
	inc sp                                           ; $5810: $33
	ld e, $32                                        ; $5811: $1e $32
	jr nz, jr_036_5840                               ; $5813: $20 $2b

	ld h, b                                          ; $5815: $60
	jr nc, jr_036_5836                               ; $5816: $30 $1e

	jr nc, @+$06                                     ; $5818: $30 $04

	ld [hl-], a                                      ; $581a: $32
	ld e, $30                                        ; $581b: $1e $30
	jr nz, jr_036_5848                               ; $581d: $20 $29

	ld h, b                                          ; $581f: $60
	or l                                             ; $5820: $b5
	sub c                                            ; $5821: $91
	inc bc                                           ; $5822: $03

jr_036_5823:
	ld d, b                                          ; $5823: $50
	dec b                                            ; $5824: $05
	ld a, [hl]                                       ; $5825: $7e
	dec l                                            ; $5826: $2d

jr_036_5827:
	ld e, $a0                                        ; $5827: $1e $a0
	nop                                              ; $5829: $00
	ld l, $28                                        ; $582a: $2e $28
	inc b                                            ; $582c: $04
	add hl, hl                                       ; $582d: $29
	ld l, $2b                                        ; $582e: $2e $2b
	jr nc, jr_036_585f                               ; $5830: $30 $2d

	jr nc, @+$30                                     ; $5832: $30 $2e

	jr nc, @+$2f                                     ; $5834: $30 $2d

jr_036_5836:
	jr @+$30                                         ; $5836: $18 $2e

	ld l, $34                                        ; $5838: $2e $34
	inc b                                            ; $583a: $04
	dec [hl]                                         ; $583b: $35

jr_036_583c:
	ld l, $33                                        ; $583c: $2e $33
	jr @+$34                                         ; $583e: $18 $32

jr_036_5840:
	ld e, $31                                        ; $5840: $1e $31
	inc b                                            ; $5842: $04
	ld [hl-], a                                      ; $5843: $32
	ld e, $c8                                        ; $5844: $1e $c8
	jr nc, jr_036_57c8                               ; $5846: $30 $80

jr_036_5848:
	ret                                              ; $5848: $c9


	scf                                              ; $5849: $37
	ld e, $36                                        ; $584a: $1e $36
	inc b                                            ; $584c: $04
	scf                                              ; $584d: $37
	ld e, $c8                                        ; $584e: $1e $c8
	dec [hl]                                         ; $5850: $35
	add b                                            ; $5851: $80
	cp $ff                                           ; $5852: $fe $ff
	ret nc                                           ; $5854: $d0

	or h                                             ; $5855: $b4
	nop                                              ; $5856: $00

jr_036_5857:
	jr nc, jr_036_5857                               ; $5857: $30 $fe

	jp nz, Jump_036_7fd1                             ; $5859: $c2 $d1 $7f

	add hl, hl                                       ; $585c: $29
	db $fc                                           ; $585d: $fc
	db $fd                                           ; $585e: $fd

jr_036_585f:
	jr z, jr_036_58ba                                ; $585f: $28 $59

	jp nz, $1811                                     ; $5861: $c2 $11 $18

	dec d                                            ; $5864: $15
	jr @-$02                                         ; $5865: $18 $fc

	inc bc                                           ; $5867: $03
	db $fd                                           ; $5868: $fd
	jr z, @+$5b                                      ; $5869: $28 $59

	jp nz, $141d                                     ; $586b: $c2 $1d $14

	call nz, $041d                                   ; $586e: $c4 $1d $04
	jp nz, $141c                                     ; $5871: $c2 $1c $14

	call nz, $041c                                   ; $5874: $c4 $1c $04
	pop de                                           ; $5877: $d1
	ld a, a                                          ; $5878: $7f
	add hl, hl                                       ; $5879: $29
	db $fc                                           ; $587a: $fc
	jp nz, $141b                                     ; $587b: $c2 $1b $14

	call nz, $041b                                   ; $587e: $c4 $1b $04
	jp nz, $1826                                     ; $5881: $c2 $26 $18

	call nz, $0c26                                   ; $5884: $c4 $26 $0c
	add $26                                          ; $5887: $c6 $26
	inc c                                            ; $5889: $0c
	jp nz, $141b                                     ; $588a: $c2 $1b $14

	call nz, $041b                                   ; $588d: $c4 $1b $04
	ei                                               ; $5890: $fb
	jp nz, $1426                                     ; $5891: $c2 $26 $14

	call nz, $0426                                   ; $5894: $c4 $26 $04
	ei                                               ; $5897: $fb
	ld [bc], a                                       ; $5898: $02
	jp nz, $1816                                     ; $5899: $c2 $16 $18

	ld a, [de]                                       ; $589c: $1a
	jr @-$02                                         ; $589d: $18 $fc

	ld [bc], a                                       ; $589f: $02
	db $fc                                           ; $58a0: $fc
	jp nz, $141b                                     ; $58a1: $c2 $1b $14

	call nz, $041b                                   ; $58a4: $c4 $1b $04
	jp nz, $1825                                     ; $58a7: $c2 $25 $18

	call nz, $0c25                                   ; $58aa: $c4 $25 $0c
	add $25                                          ; $58ad: $c6 $25
	inc c                                            ; $58af: $0c
	jp nz, $141b                                     ; $58b0: $c2 $1b $14

	call nz, $041b                                   ; $58b3: $c4 $1b $04
	ei                                               ; $58b6: $fb
	jp nz, $1425                                     ; $58b7: $c2 $25 $14

jr_036_58ba:
	call nz, $0425                                   ; $58ba: $c4 $25 $04
	ei                                               ; $58bd: $fb
	ld [bc], a                                       ; $58be: $02
	jp nz, $1816                                     ; $58bf: $c2 $16 $18

	add hl, de                                       ; $58c2: $19
	jr @-$02                                         ; $58c3: $18 $fc

	ld [bc], a                                       ; $58c5: $02
	jp nz, Jump_036_7fd1                             ; $58c6: $c2 $d1 $7f

	add hl, hl                                       ; $58c9: $29
	db $fd                                           ; $58ca: $fd
	ld c, [hl]                                       ; $58cb: $4e
	ld e, c                                          ; $58cc: $59
	jp nz, $1813                                     ; $58cd: $c2 $13 $18

	ld [de], a                                       ; $58d0: $12
	jr @+$13                                         ; $58d1: $18 $11

	inc d                                            ; $58d3: $14
	call nz, $0411                                   ; $58d4: $c4 $11 $04
	jp nz, $1829                                     ; $58d7: $c2 $29 $18

	call nz, $0c29                                   ; $58da: $c4 $29 $0c
	add $29                                          ; $58dd: $c6 $29
	inc c                                            ; $58df: $0c
	jp nz, $1411                                     ; $58e0: $c2 $11 $14

	call nz, $0411                                   ; $58e3: $c4 $11 $04
	ld a, a                                          ; $58e6: $7f
	ld h, $fb                                        ; $58e7: $26 $fb
	jp nz, $1429                                     ; $58e9: $c2 $29 $14

	call nz, $0429                                   ; $58ec: $c4 $29 $04
	ei                                               ; $58ef: $fb
	ld [bc], a                                       ; $58f0: $02
	ld a, a                                          ; $58f1: $7f
	add hl, hl                                       ; $58f2: $29
	jp nz, $1818                                     ; $58f3: $c2 $18 $18

	add hl, de                                       ; $58f6: $19

jr_036_58f7:
	jr @-$3c                                         ; $58f7: $18 $c2

	pop de                                           ; $58f9: $d1
	ld a, a                                          ; $58fa: $7f
	add hl, hl                                       ; $58fb: $29
	db $fd                                           ; $58fc: $fd
	ld c, [hl]                                       ; $58fd: $4e
	ld e, c                                          ; $58fe: $59
	jp nz, $181f                                     ; $58ff: $c2 $1f $18

	ld e, $18                                        ; $5902: $1e $18
	dec e                                            ; $5904: $1d
	inc d                                            ; $5905: $14
	call nz, $041d                                   ; $5906: $c4 $1d $04
	jp nz, $1829                                     ; $5909: $c2 $29 $18

	call nz, $0c29                                   ; $590c: $c4 $29 $0c
	add $29                                          ; $590f: $c6 $29
	inc c                                            ; $5911: $0c
	jp nz, $141d                                     ; $5912: $c2 $1d $14

	call nz, $041d                                   ; $5915: $c4 $1d $04
	ei                                               ; $5918: $fb
	jp nz, $1429                                     ; $5919: $c2 $29 $14

	call nz, $0429                                   ; $591c: $c4 $29 $04
	ei                                               ; $591f: $fb
	ld [bc], a                                       ; $5920: $02
	jp nz, $1813                                     ; $5921: $c2 $13 $18

	dec d                                            ; $5924: $15

jr_036_5925:
	jr jr_036_5925                                   ; $5925: $18 $fe

	rst $38                                          ; $5927: $ff
	ld d, $14                                        ; $5928: $16 $14
	call nz, $16d1                                   ; $592a: $c4 $d1 $16
	inc b                                            ; $592d: $04
	jp nz, $26d1                                     ; $592e: $c2 $d1 $26

	jr jr_036_58f7                                   ; $5931: $18 $c4

	pop de                                           ; $5933: $d1
	ld h, $0c                                        ; $5934: $26 $0c
	add $d1                                          ; $5936: $c6 $d1
	ld h, $0c                                        ; $5938: $26 $0c
	jp nz, $16d1                                     ; $593a: $c2 $d1 $16

	inc d                                            ; $593d: $14
	call nz, $16d1                                   ; $593e: $c4 $d1 $16
	inc b                                            ; $5941: $04
	ei                                               ; $5942: $fb
	jp nz, $26d1                                     ; $5943: $c2 $d1 $26

	inc d                                            ; $5946: $14
	call nz, $26d1                                   ; $5947: $c4 $d1 $26
	inc b                                            ; $594a: $04
	ei                                               ; $594b: $fb
	ld [bc], a                                       ; $594c: $02
	db $fd                                           ; $594d: $fd
	ld a, [de]                                       ; $594e: $1a
	inc d                                            ; $594f: $14
	call nz, $1ad1                                   ; $5950: $c4 $d1 $1a
	inc b                                            ; $5953: $04
	jp nz, $24d1                                     ; $5954: $c2 $d1 $24

	jr @-$3a                                         ; $5957: $18 $c4

	pop de                                           ; $5959: $d1
	inc h                                            ; $595a: $24
	inc c                                            ; $595b: $0c
	add $d1                                          ; $595c: $c6 $d1
	inc h                                            ; $595e: $24
	inc c                                            ; $595f: $0c
	jp nz, $1ad1                                     ; $5960: $c2 $d1 $1a

	inc d                                            ; $5963: $14
	call nz, $1ad1                                   ; $5964: $c4 $d1 $1a

jr_036_5967:
	inc b                                            ; $5967: $04
	ei                                               ; $5968: $fb
	jp nz, $24d1                                     ; $5969: $c2 $d1 $24

	inc d                                            ; $596c: $14
	call nz, $24d1                                   ; $596d: $c4 $d1 $24
	inc b                                            ; $5970: $04
	ei                                               ; $5971: $fb
	ld [bc], a                                       ; $5972: $02
	jp nz, $15d1                                     ; $5973: $c2 $d1 $15

	jr jr_036_5992                                   ; $5976: $18 $1a

	jr @+$15                                         ; $5978: $18 $13

	inc d                                            ; $597a: $14
	call nz, $13d1                                   ; $597b: $c4 $d1 $13
	inc b                                            ; $597e: $04
	jp nz, $26d1                                     ; $597f: $c2 $d1 $26

	jr @-$3a                                         ; $5982: $18 $c4

	pop de                                           ; $5984: $d1
	ld h, $0c                                        ; $5985: $26 $0c
	add $d1                                          ; $5987: $c6 $d1
	ld h, $0c                                        ; $5989: $26 $0c
	jp nz, $13d1                                     ; $598b: $c2 $d1 $13

	inc d                                            ; $598e: $14
	call nz, $13d1                                   ; $598f: $c4 $d1 $13

jr_036_5992:
	inc b                                            ; $5992: $04
	ei                                               ; $5993: $fb
	jp nz, $26d1                                     ; $5994: $c2 $d1 $26

	inc d                                            ; $5997: $14
	call nz, $26d1                                   ; $5998: $c4 $d1 $26
	inc b                                            ; $599b: $04
	ei                                               ; $599c: $fb
	ld [bc], a                                       ; $599d: $02
	jp nz, $13d1                                     ; $599e: $c2 $d1 $13

	jr @+$18                                         ; $59a1: $18 $16

	jr jr_036_5967                                   ; $59a3: $18 $c2

	pop de                                           ; $59a5: $d1
	jr jr_036_59bc                                   ; $59a6: $18 $14

	call nz, $18d1                                   ; $59a8: $c4 $d1 $18
	inc b                                            ; $59ab: $04
	jp nz, $27d1                                     ; $59ac: $c2 $d1 $27

	jr @-$3a                                         ; $59af: $18 $c4

	pop de                                           ; $59b1: $d1
	daa                                              ; $59b2: $27
	inc c                                            ; $59b3: $0c
	add $d1                                          ; $59b4: $c6 $d1
	daa                                              ; $59b6: $27
	inc c                                            ; $59b7: $0c
	jp nz, $18d1                                     ; $59b8: $c2 $d1 $18

	inc d                                            ; $59bb: $14

jr_036_59bc:
	call nz, $18d1                                   ; $59bc: $c4 $d1 $18
	inc b                                            ; $59bf: $04
	ei                                               ; $59c0: $fb
	jp nz, $27d1                                     ; $59c1: $c2 $d1 $27

	inc d                                            ; $59c4: $14
	call nz, $27d1                                   ; $59c5: $c4 $d1 $27
	inc b                                            ; $59c8: $04
	ei                                               ; $59c9: $fb
	ld [bc], a                                       ; $59ca: $02
	db $fd                                           ; $59cb: $fd
	ret nc                                           ; $59cc: $d0

	or h                                             ; $59cd: $b4
	dec c                                            ; $59ce: $0d
	inc c                                            ; $59cf: $0c
	add hl, bc                                       ; $59d0: $09
	inc c                                            ; $59d1: $0c
	inc de                                           ; $59d2: $13

jr_036_59d3:
	jr jr_036_59d3                                   ; $59d3: $18 $fe

	ei                                               ; $59d5: $fb
	db $fd                                           ; $59d6: $fd
	inc de                                           ; $59d7: $13
	ld e, d                                          ; $59d8: $5a
	ei                                               ; $59d9: $fb
	inc b                                            ; $59da: $04
	ei                                               ; $59db: $fb
	db $fd                                           ; $59dc: $fd
	inc de                                           ; $59dd: $13
	ld e, d                                          ; $59de: $5a
	ei                                               ; $59df: $fb

jr_036_59e0:
	inc bc                                           ; $59e0: $03
	inc de                                           ; $59e1: $13
	jr jr_036_59f6                                   ; $59e2: $18 $12

	inc c                                            ; $59e4: $0c
	dec a                                            ; $59e5: $3d
	inc c                                            ; $59e6: $0c
	cp [hl]                                          ; $59e7: $be
	jr jr_036_5a27                                   ; $59e8: $18 $3d

	jr jr_036_59f5                                   ; $59ea: $18 $09

	dec a                                            ; $59ec: $3d
	dec a                                            ; $59ed: $3d
	inc [hl]                                         ; $59ee: $34
	cp [hl]                                          ; $59ef: $be
	ei                                               ; $59f0: $fb
	db $fd                                           ; $59f1: $fd
	inc de                                           ; $59f2: $13
	ld e, d                                          ; $59f3: $5a
	ei                                               ; $59f4: $fb

jr_036_59f5:
	inc b                                            ; $59f5: $04

jr_036_59f6:
	ei                                               ; $59f6: $fb
	db $fd                                           ; $59f7: $fd
	inc de                                           ; $59f8: $13
	ld e, d                                          ; $59f9: $5a
	ei                                               ; $59fa: $fb
	inc bc                                           ; $59fb: $03
	inc de                                           ; $59fc: $13
	jr @+$0b                                         ; $59fd: $18 $09

	inc c                                            ; $59ff: $0c
	add hl, bc                                       ; $5a00: $09

jr_036_5a01:
	inc c                                            ; $5a01: $0c
	dec a                                            ; $5a02: $3d
	jr @+$36                                         ; $5a03: $18 $34

	jr jr_036_5a10                                   ; $5a05: $18 $09

	jr @-$40                                         ; $5a07: $18 $be

	inc c                                            ; $5a09: $0c
	inc sp                                           ; $5a0a: $33
	ld [hl-], a                                      ; $5a0b: $32
	dec a                                            ; $5a0c: $3d
	dec a                                            ; $5a0d: $3d
	cp [hl]                                          ; $5a0e: $be
	dec [hl]                                         ; $5a0f: $35

jr_036_5a10:
	jr jr_036_5a10                                   ; $5a10: $18 $fe

	rst $38                                          ; $5a12: $ff
	inc de                                           ; $5a13: $13
	jr jr_036_5a1f                                   ; $5a14: $18 $09

	inc c                                            ; $5a16: $0c
	add hl, bc                                       ; $5a17: $09
	inc c                                            ; $5a18: $0c
	cp [hl]                                          ; $5a19: $be
	jr jr_036_5a29                                   ; $5a1a: $18 $0d

	jr jr_036_5a27                                   ; $5a1c: $18 $09

	add hl, bc                                       ; $5a1e: $09

jr_036_5a1f:
	dec a                                            ; $5a1f: $3d
	jr jr_036_59e0                                   ; $5a20: $18 $be

	db $fd                                           ; $5a22: $fd
	ret nc                                           ; $5a23: $d0

	adc h                                            ; $5a24: $8c
	cp $d1                                           ; $5a25: $fe $d1

jr_036_5a27:
	sub c                                            ; $5a27: $91
	ld [hl], c                                       ; $5a28: $71

jr_036_5a29:
	db $fd                                           ; $5a29: $fd
	ld h, a                                          ; $5a2a: $67
	ld e, h                                          ; $5a2b: $5c
	jp z, $0f17                                      ; $5a2c: $ca $17 $0f

	call nz, $0917                                   ; $5a2f: $c4 $17 $09
	jp z, $0c16                                      ; $5a32: $ca $16 $0c

	call nz, $0c16                                   ; $5a35: $c4 $16 $0c
	jp nc, $20ca                                     ; $5a38: $d2 $ca $20

	jr jr_036_5a01                                   ; $5a3b: $18 $c4

	jr nz, jr_036_5a4b                               ; $5a3d: $20 $0c

	db $d3                                           ; $5a3f: $d3
	jp z, $181d                                      ; $5a40: $ca $1d $18

	call nz, $0c1d                                   ; $5a43: $c4 $1d $0c
	ld a, [hl]                                       ; $5a46: $7e
	dec e                                            ; $5a47: $1d
	inc c                                            ; $5a48: $0c
	and c                                            ; $5a49: $a1
	pop de                                           ; $5a4a: $d1

jr_036_5a4b:
	jp z, $241b                                      ; $5a4b: $ca $1b $24

	call nz, $1d7e                                   ; $5a4e: $c4 $7e $1d
	nop                                              ; $5a51: $00
	and c                                            ; $5a52: $a1
	dec de                                           ; $5a53: $1b
	jr jr_036_5ad4                                   ; $5a54: $18 $7e

	nop                                              ; $5a56: $00
	and b                                            ; $5a57: $a0
	sub c                                            ; $5a58: $91
	ret z                                            ; $5a59: $c8

	jr nz, @+$08                                     ; $5a5a: $20 $06

	ld [hl+], a                                      ; $5a5c: $22
	ld b, $25                                        ; $5a5d: $06 $25
	inc c                                            ; $5a5f: $0c
	ret z                                            ; $5a60: $c8

	jr nz, @+$08                                     ; $5a61: $20 $06

	call nz, $0620                                   ; $5a63: $c4 $20 $06
	ret z                                            ; $5a66: $c8

	ld [hl+], a                                      ; $5a67: $22
	ld b, $c4                                        ; $5a68: $06 $c4
	ld [hl+], a                                      ; $5a6a: $22
	ld b, $c8                                        ; $5a6b: $06 $c8
	dec h                                            ; $5a6d: $25
	ld b, $c4                                        ; $5a6e: $06 $c4
	dec h                                            ; $5a70: $25
	ld b, $d1                                        ; $5a71: $06 $d1
	sub c                                            ; $5a73: $91
	ld [hl], c                                       ; $5a74: $71
	db $fd                                           ; $5a75: $fd
	ld h, a                                          ; $5a76: $67
	ld e, h                                          ; $5a77: $5c
	jp z, $0f17                                      ; $5a78: $ca $17 $0f

	call nz, $0917                                   ; $5a7b: $c4 $17 $09
	jp z, $0c16                                      ; $5a7e: $ca $16 $0c

	call nz, $0c16                                   ; $5a81: $c4 $16 $0c
	jp nc, $20ca                                     ; $5a84: $d2 $ca $20

	jr @-$3a                                         ; $5a87: $18 $c4

	jr nz, jr_036_5a97                               ; $5a89: $20 $0c

	db $d3                                           ; $5a8b: $d3

jr_036_5a8c:
	jp z, $241d                                      ; $5a8c: $ca $1d $24

	call nz, $181d                                   ; $5a8f: $c4 $1d $18
	jp nc, $cd92                                     ; $5a92: $d2 $92 $cd

	nop                                              ; $5a95: $00
	inc c                                            ; $5a96: $0c

jr_036_5a97:
	dec e                                            ; $5a97: $1d
	ld [$0400], sp                                   ; $5a98: $08 $00 $04
	ld e, $08                                        ; $5a9b: $1e $08
	nop                                              ; $5a9d: $00
	inc b                                            ; $5a9e: $04
	jr nz, jr_036_5aa9                               ; $5a9f: $20 $08

	jp nz, $1020                                     ; $5aa1: $c2 $20 $10

	call $0819                                       ; $5aa4: $cd $19 $08
	nop                                              ; $5aa7: $00
	inc b                                            ; $5aa8: $04

jr_036_5aa9:
	dec de                                           ; $5aa9: $1b
	ld [$0400], sp                                   ; $5aaa: $08 $00 $04
	dec e                                            ; $5aad: $1d
	ld [$0400], sp                                   ; $5aae: $08 $00 $04
	pop de                                           ; $5ab1: $d1
	sub c                                            ; $5ab2: $91
	ld [hl], c                                       ; $5ab3: $71
	db $fd                                           ; $5ab4: $fd
	ld h, a                                          ; $5ab5: $67
	ld e, h                                          ; $5ab6: $5c
	jp z, $0f17                                      ; $5ab7: $ca $17 $0f

	call nz, $0917                                   ; $5aba: $c4 $17 $09
	jp z, $0c16                                      ; $5abd: $ca $16 $0c

	call nz, $0c16                                   ; $5ac0: $c4 $16 $0c
	jp nc, $20ca                                     ; $5ac3: $d2 $ca $20

	jr jr_036_5a8c                                   ; $5ac6: $18 $c4

	jr nz, jr_036_5ad6                               ; $5ac8: $20 $0c

	db $d3                                           ; $5aca: $d3
	jp z, $181d                                      ; $5acb: $ca $1d $18

	call nz, $0c1d                                   ; $5ace: $c4 $1d $0c
	ld a, [hl]                                       ; $5ad1: $7e
	dec e                                            ; $5ad2: $1d
	inc c                                            ; $5ad3: $0c

jr_036_5ad4:
	and c                                            ; $5ad4: $a1
	pop de                                           ; $5ad5: $d1

jr_036_5ad6:
	jp z, $241b                                      ; $5ad6: $ca $1b $24

	call nz, $1d7e                                   ; $5ad9: $c4 $7e $1d
	nop                                              ; $5adc: $00
	and c                                            ; $5add: $a1
	dec de                                           ; $5ade: $1b
	jr @+$80                                         ; $5adf: $18 $7e

	nop                                              ; $5ae1: $00
	and b                                            ; $5ae2: $a0
	sub c                                            ; $5ae3: $91
	ret z                                            ; $5ae4: $c8

	jr nz, @+$08                                     ; $5ae5: $20 $06

	ld [hl+], a                                      ; $5ae7: $22
	ld b, $25                                        ; $5ae8: $06 $25
	inc c                                            ; $5aea: $0c
	ret z                                            ; $5aeb: $c8

	jr nz, @+$08                                     ; $5aec: $20 $06

	call nz, $0620                                   ; $5aee: $c4 $20 $06
	ret z                                            ; $5af1: $c8

	ld [hl+], a                                      ; $5af2: $22
	ld b, $c4                                        ; $5af3: $06 $c4
	ld [hl+], a                                      ; $5af5: $22
	ld b, $c8                                        ; $5af6: $06 $c8
	dec h                                            ; $5af8: $25
	ld b, $c4                                        ; $5af9: $06 $c4
	dec h                                            ; $5afb: $25
	ld b, $d1                                        ; $5afc: $06 $d1
	sub c                                            ; $5afe: $91
	ld [hl], c                                       ; $5aff: $71
	db $fd                                           ; $5b00: $fd
	ld h, a                                          ; $5b01: $67
	ld e, h                                          ; $5b02: $5c
	jp z, $0f17                                      ; $5b03: $ca $17 $0f

	call nz, $0917                                   ; $5b06: $c4 $17 $09
	jp z, $0c16                                      ; $5b09: $ca $16 $0c

	call nz, $0c16                                   ; $5b0c: $c4 $16 $0c
	jp nc, $20ca                                     ; $5b0f: $d2 $ca $20

	jr @-$3a                                         ; $5b12: $18 $c4

	jr nz, jr_036_5b22                               ; $5b14: $20 $0c

	db $d3                                           ; $5b16: $d3
	jp z, $241d                                      ; $5b17: $ca $1d $24

	call nz, $241d                                   ; $5b1a: $c4 $1d $24
	pop de                                           ; $5b1d: $d1
	sub d                                            ; $5b1e: $92
	jp z, $0619                                      ; $5b1f: $ca $19 $06

jr_036_5b22:
	call nz, $0619                                   ; $5b22: $c4 $19 $06
	jp z, $0619                                      ; $5b25: $ca $19 $06

	call nz, $0619                                   ; $5b28: $c4 $19 $06
	jp z, $0616                                      ; $5b2b: $ca $16 $06

	call nz, $0616                                   ; $5b2e: $c4 $16 $06
	jp z, $0616                                      ; $5b31: $ca $16 $06

	call nz, $0616                                   ; $5b34: $c4 $16 $06
	jp z, $0614                                      ; $5b37: $ca $14 $06

	call nz, $0614                                   ; $5b3a: $c4 $14 $06
	jp z, $1d7e                                      ; $5b3d: $ca $7e $1d

	inc c                                            ; $5b40: $0c
	and c                                            ; $5b41: $a1
	inc d                                            ; $5b42: $14
	jr jr_036_5bc3                                   ; $5b43: $18 $7e

	nop                                              ; $5b45: $00
	and b                                            ; $5b46: $a0
	sub c                                            ; $5b47: $91
	pop de                                           ; $5b48: $d1
	rst JumpTable                                          ; $5b49: $c7
	ld [hl], c                                       ; $5b4a: $71
	ld [hl+], a                                      ; $5b4b: $22
	ld b, $c2                                        ; $5b4c: $06 $c2
	ld [hl+], a                                      ; $5b4e: $22
	ld b, $c7                                        ; $5b4f: $06 $c7
	inc h                                            ; $5b51: $24
	ld b, $c2                                        ; $5b52: $06 $c2
	inc h                                            ; $5b54: $24
	ld b, $c7                                        ; $5b55: $06 $c7
	dec h                                            ; $5b57: $25
	ld b, $c2                                        ; $5b58: $06 $c2
	dec h                                            ; $5b5a: $25
	ld b, $c7                                        ; $5b5b: $06 $c7
	ld [hl+], a                                      ; $5b5d: $22
	ld b, $c2                                        ; $5b5e: $06 $c2
	ld [hl+], a                                      ; $5b60: $22
	ld b, $c7                                        ; $5b61: $06 $c7
	inc h                                            ; $5b63: $24
	ld b, $c2                                        ; $5b64: $06 $c2
	inc h                                            ; $5b66: $24
	ld b, $c7                                        ; $5b67: $06 $c7
	ld [hl+], a                                      ; $5b69: $22
	ld b, $c2                                        ; $5b6a: $06 $c2
	ld [hl+], a                                      ; $5b6c: $22
	ld b, $c7                                        ; $5b6d: $06 $c7
	inc hl                                           ; $5b6f: $23
	ld b, $c2                                        ; $5b70: $06 $c2
	inc hl                                           ; $5b72: $23
	ld b, $c7                                        ; $5b73: $06 $c7
	inc h                                            ; $5b75: $24
	inc c                                            ; $5b76: $0c
	ld a, [hl]                                       ; $5b77: $7e
	dec e                                            ; $5b78: $1d
	nop                                              ; $5b79: $00
	and c                                            ; $5b7a: $a1
	inc h                                            ; $5b7b: $24
	inc c                                            ; $5b7c: $0c
	ld a, [hl]                                       ; $5b7d: $7e
	nop                                              ; $5b7e: $00
	and b                                            ; $5b7f: $a0
	rst JumpTable                                          ; $5b80: $c7
	dec h                                            ; $5b81: $25
	ld b, $c2                                        ; $5b82: $06 $c2
	dec h                                            ; $5b84: $25
	ld b, $c7                                        ; $5b85: $06 $c7
	daa                                              ; $5b87: $27
	ld b, $c2                                        ; $5b88: $06 $c2
	daa                                              ; $5b8a: $27
	ld b, $c7                                        ; $5b8b: $06 $c7
	inc h                                            ; $5b8d: $24
	ld b, $c2                                        ; $5b8e: $06 $c2
	inc h                                            ; $5b90: $24
	ld b, $c7                                        ; $5b91: $06 $c7
	dec h                                            ; $5b93: $25
	ld b, $c2                                        ; $5b94: $06 $c2
	dec h                                            ; $5b96: $25
	ld b, $c7                                        ; $5b97: $06 $c7
	daa                                              ; $5b99: $27
	ld b, $c2                                        ; $5b9a: $06 $c2
	daa                                              ; $5b9c: $27
	ld b, $c7                                        ; $5b9d: $06 $c7
	inc h                                            ; $5b9f: $24
	ld b, $c2                                        ; $5ba0: $06 $c2
	inc h                                            ; $5ba2: $24
	ld b, $d1                                        ; $5ba3: $06 $d1
	rst JumpTable                                          ; $5ba5: $c7
	dec h                                            ; $5ba6: $25
	inc c                                            ; $5ba7: $0c
	rst JumpTable                                          ; $5ba8: $c7
	ld a, [hl]                                       ; $5ba9: $7e
	dec e                                            ; $5baa: $1d
	nop                                              ; $5bab: $00
	and c                                            ; $5bac: $a1
	dec h                                            ; $5bad: $25
	inc c                                            ; $5bae: $0c
	ld a, [hl]                                       ; $5baf: $7e
	nop                                              ; $5bb0: $00
	and b                                            ; $5bb1: $a0
	rst JumpTable                                          ; $5bb2: $c7
	daa                                              ; $5bb3: $27

jr_036_5bb4:
	ld b, $c2                                        ; $5bb4: $06 $c2
	daa                                              ; $5bb6: $27
	ld b, $c6                                        ; $5bb7: $06 $c6
	add hl, hl                                       ; $5bb9: $29
	ld b, $c2                                        ; $5bba: $06 $c2
	add hl, hl                                       ; $5bbc: $29
	ld b, $c7                                        ; $5bbd: $06 $c7
	dec h                                            ; $5bbf: $25
	ld b, $c2                                        ; $5bc0: $06 $c2
	dec h                                            ; $5bc2: $25

jr_036_5bc3:
	ld b, $c7                                        ; $5bc3: $06 $c7
	daa                                              ; $5bc5: $27
	ld b, $c2                                        ; $5bc6: $06 $c2
	daa                                              ; $5bc8: $27
	ld b, $c6                                        ; $5bc9: $06 $c6
	add hl, hl                                       ; $5bcb: $29
	ld b, $c2                                        ; $5bcc: $06 $c2
	add hl, hl                                       ; $5bce: $29
	ld b, $c6                                        ; $5bcf: $06 $c6
	daa                                              ; $5bd1: $27
	ld b, $29                                        ; $5bd2: $06 $29
	ld b, $c7                                        ; $5bd4: $06 $c7
	dec h                                            ; $5bd6: $25
	ld b, $c2                                        ; $5bd7: $06 $c2
	dec h                                            ; $5bd9: $25
	ld b, $c6                                        ; $5bda: $06 $c6
	add hl, hl                                       ; $5bdc: $29
	ld b, $c2                                        ; $5bdd: $06 $c2
	add hl, hl                                       ; $5bdf: $29
	ld b, $c6                                        ; $5be0: $06 $c6
	ld a, [hl+]                                      ; $5be2: $2a
	ld b, $c2                                        ; $5be3: $06 $c2
	ld a, [hl+]                                      ; $5be5: $2a
	ld b, $c6                                        ; $5be6: $06 $c6
	inc l                                            ; $5be8: $2c
	ld b, $c2                                        ; $5be9: $06 $c2
	inc l                                            ; $5beb: $2c
	ld b, $c6                                        ; $5bec: $06 $c6
	add hl, hl                                       ; $5bee: $29
	ld b, $c2                                        ; $5bef: $06 $c2
	add hl, hl                                       ; $5bf1: $29
	ld b, $c6                                        ; $5bf2: $06 $c6
	ld a, [hl+]                                      ; $5bf4: $2a
	ld b, $c2                                        ; $5bf5: $06 $c2
	ld a, [hl+]                                      ; $5bf7: $2a
	ld b, $c6                                        ; $5bf8: $06 $c6
	inc l                                            ; $5bfa: $2c
	ld b, $c2                                        ; $5bfb: $06 $c2
	inc l                                            ; $5bfd: $2c
	ld b, $c5                                        ; $5bfe: $06 $c5
	ld a, [hl+]                                      ; $5c00: $2a
	ld b, $2c                                        ; $5c01: $06 $2c
	ld b, $c6                                        ; $5c03: $06 $c6
	add hl, hl                                       ; $5c05: $29
	ld b, $c2                                        ; $5c06: $06 $c2
	add hl, hl                                       ; $5c08: $29
	ld b, $c8                                        ; $5c09: $06 $c8
	ld [hl+], a                                      ; $5c0b: $22
	inc h                                            ; $5c0c: $24
	jp nz, $1822                                     ; $5c0d: $c2 $22 $18

	ret z                                            ; $5c10: $c8

	dec h                                            ; $5c11: $25
	inc c                                            ; $5c12: $0c
	ld [hl+], a                                      ; $5c13: $22
	inc c                                            ; $5c14: $0c
	ld a, [hl]                                       ; $5c15: $7e
	dec e                                            ; $5c16: $1d
	ld e, $24                                        ; $5c17: $1e $24
	inc a                                            ; $5c19: $3c
	ld a, [hl]                                       ; $5c1a: $7e
	nop                                              ; $5c1b: $00
	and b                                            ; $5c1c: $a0
	jr nz, jr_036_5c37                               ; $5c1d: $20 $18

	inc h                                            ; $5c1f: $24
	jr jr_036_5bb4                                   ; $5c20: $18 $92

	jp nc, $0638                                     ; $5c22: $d2 $38 $06

	jp nz, $0638                                     ; $5c25: $c2 $38 $06

	call z, $0c38                                    ; $5c28: $cc $38 $0c
	jp nz, $0c38                                     ; $5c2b: $c2 $38 $0c

	call z, $0638                                    ; $5c2e: $cc $38 $06
	jp nz, $0638                                     ; $5c31: $c2 $38 $06

	call z, $0c38                                    ; $5c34: $cc $38 $0c

jr_036_5c37:
	jp nz, $0c38                                     ; $5c37: $c2 $38 $0c

	call z, $0c38                                    ; $5c3a: $cc $38 $0c
	pop de                                           ; $5c3d: $d1
	ret z                                            ; $5c3e: $c8

	jr nz, jr_036_5c47                               ; $5c3f: $20 $06

	ld [hl+], a                                      ; $5c41: $22
	ld b, $25                                        ; $5c42: $06 $25
	ld b, $c4                                        ; $5c44: $06 $c4
	dec h                                            ; $5c46: $25

jr_036_5c47:
	ld b, $c8                                        ; $5c47: $06 $c8
	jr nz, @+$08                                     ; $5c49: $20 $06

	call nz, $0620                                   ; $5c4b: $c4 $20 $06
	ret z                                            ; $5c4e: $c8

	ld [hl+], a                                      ; $5c4f: $22
	ld b, $c4                                        ; $5c50: $06 $c4
	ld [hl+], a                                      ; $5c52: $22
	ld b, $c8                                        ; $5c53: $06 $c8
	dec h                                            ; $5c55: $25
	ld b, $c4                                        ; $5c56: $06 $c4
	dec h                                            ; $5c58: $25
	ld b, $ca                                        ; $5c59: $06 $ca
	ld a, [hl]                                       ; $5c5b: $7e
	dec e                                            ; $5c5c: $1d
	inc c                                            ; $5c5d: $0c
	dec h                                            ; $5c5e: $25
	jr jr_036_5c88                                   ; $5c5f: $18 $27

	jr jr_036_5ce1                                   ; $5c61: $18 $7e

	nop                                              ; $5c63: $00
	and b                                            ; $5c64: $a0
	cp $ff                                           ; $5c65: $fe $ff
	nop                                              ; $5c67: $00
	jr @-$2d                                         ; $5c68: $18 $d1

	call z, $0c1d                                    ; $5c6a: $cc $1d $0c
	call nz, $0c1d                                   ; $5c6d: $c4 $1d $0c
	call z, $061d                                    ; $5c70: $cc $1d $06
	call nz, $061d                                   ; $5c73: $c4 $1d $06
	call z, $0c1d                                    ; $5c76: $cc $1d $0c
	call nz, $0c1d                                   ; $5c79: $c4 $1d $0c
	call z, $1d7e                                    ; $5c7c: $cc $7e $1d
	nop                                              ; $5c7f: $00
	and b                                            ; $5c80: $a0
	dec de                                           ; $5c81: $1b
	rrca                                             ; $5c82: $0f
	call nz, $091b                                   ; $5c83: $c4 $1b $09
	ld a, [hl]                                       ; $5c86: $7e
	nop                                              ; $5c87: $00

jr_036_5c88:
	and b                                            ; $5c88: $a0
	call z, $061b                                    ; $5c89: $cc $1b $06
	call nz, $061b                                   ; $5c8c: $c4 $1b $06
	call z, $0c19                                    ; $5c8f: $cc $19 $0c
	call nz, $0c19                                   ; $5c92: $c4 $19 $0c
	db $fd                                           ; $5c95: $fd
	ret nc                                           ; $5c96: $d0

	adc h                                            ; $5c97: $8c
	cp $d1                                           ; $5c98: $fe $d1
	sub b                                            ; $5c9a: $90
	ld [hl], c                                       ; $5c9b: $71
	db $fd                                           ; $5c9c: $fd
	ld l, c                                          ; $5c9d: $69
	ld e, l                                          ; $5c9e: $5d
	db $fd                                           ; $5c9f: $fd
	sbc c                                            ; $5ca0: $99
	ld e, l                                          ; $5ca1: $5d
	pop de                                           ; $5ca2: $d1
	sub b                                            ; $5ca3: $90
	ld [hl], c                                       ; $5ca4: $71
	db $fd                                           ; $5ca5: $fd
	ld l, c                                          ; $5ca6: $69
	ld e, l                                          ; $5ca7: $5d
	db $fd                                           ; $5ca8: $fd
	db $eb                                           ; $5ca9: $eb
	ld e, l                                          ; $5caa: $5d
	db $d3                                           ; $5cab: $d3
	sub d                                            ; $5cac: $92
	adc $00                                          ; $5cad: $ce $00
	inc c                                            ; $5caf: $0c
	jr nz, @+$0a                                     ; $5cb0: $20 $08

	nop                                              ; $5cb2: $00
	inc b                                            ; $5cb3: $04
	ld [hl+], a                                      ; $5cb4: $22
	ld [$0400], sp                                   ; $5cb5: $08 $00 $04
	inc hl                                           ; $5cb8: $23
	ld [$23c2], sp                                   ; $5cb9: $08 $c2 $23
	inc c                                            ; $5cbc: $0c
	nop                                              ; $5cbd: $00
	inc b                                            ; $5cbe: $04
	adc $1d                                          ; $5cbf: $ce $1d
	ld [$0400], sp                                   ; $5cc1: $08 $00 $04
	ld e, $08                                        ; $5cc4: $1e $08
	nop                                              ; $5cc6: $00
	inc b                                            ; $5cc7: $04
	jr nz, jr_036_5cd2                               ; $5cc8: $20 $08

	nop                                              ; $5cca: $00
	inc b                                            ; $5ccb: $04
	pop de                                           ; $5ccc: $d1
	sub b                                            ; $5ccd: $90

jr_036_5cce:
	ld [hl], c                                       ; $5cce: $71
	db $fd                                           ; $5ccf: $fd
	ld l, c                                          ; $5cd0: $69
	ld e, l                                          ; $5cd1: $5d

jr_036_5cd2:
	db $fd                                           ; $5cd2: $fd
	sbc c                                            ; $5cd3: $99
	ld e, l                                          ; $5cd4: $5d
	pop de                                           ; $5cd5: $d1
	sub b                                            ; $5cd6: $90
	ld [hl], c                                       ; $5cd7: $71
	db $fd                                           ; $5cd8: $fd
	ld l, c                                          ; $5cd9: $69
	ld e, l                                          ; $5cda: $5d
	db $fd                                           ; $5cdb: $fd
	db $eb                                           ; $5cdc: $eb
	ld e, l                                          ; $5cdd: $5d
	nop                                              ; $5cde: $00
	inc c                                            ; $5cdf: $0c
	pop de                                           ; $5ce0: $d1

jr_036_5ce1:
	sub d                                            ; $5ce1: $92
	jp $062c                                         ; $5ce2: $c3 $2c $06


	pop bc                                           ; $5ce5: $c1
	inc l                                            ; $5ce6: $2c
	ld b, $c3                                        ; $5ce7: $06 $c3
	inc l                                            ; $5ce9: $2c
	ld b, $c1                                        ; $5cea: $06 $c1
	inc l                                            ; $5cec: $2c
	ld b, $c5                                        ; $5ced: $06 $c5
	ld a, [hl+]                                      ; $5cef: $2a
	ld b, $c1                                        ; $5cf0: $06 $c1
	ld a, [hl+]                                      ; $5cf2: $2a
	ld b, $c5                                        ; $5cf3: $06 $c5
	ld a, [hl+]                                      ; $5cf5: $2a
	ld b, $c1                                        ; $5cf6: $06 $c1
	ld a, [hl+]                                      ; $5cf8: $2a
	ld b, $c7                                        ; $5cf9: $06 $c7
	add hl, hl                                       ; $5cfb: $29
	ld b, $c1                                        ; $5cfc: $06 $c1
	add hl, hl                                       ; $5cfe: $29
	ld b, $c8                                        ; $5cff: $06 $c8

jr_036_5d01:
	add hl, hl                                       ; $5d01: $29
	jr jr_036_5d82                                   ; $5d02: $18 $7e

	nop                                              ; $5d04: $00
	and b                                            ; $5d05: $a0
	pop de                                           ; $5d06: $d1
	sub d                                            ; $5d07: $92
	rst JumpTable                                          ; $5d08: $c7
	ld [hl], c                                       ; $5d09: $71
	cp [hl]                                          ; $5d0a: $be
	inc c                                            ; $5d0b: $0c
	ld a, [hl+]                                      ; $5d0c: $2a
	add hl, hl                                       ; $5d0d: $29
	ld a, [hl+]                                      ; $5d0e: $2a
	add hl, hl                                       ; $5d0f: $29
	cp [hl]                                          ; $5d10: $be
	ld a, [hl+]                                      ; $5d11: $2a
	ld b, $c2                                        ; $5d12: $06 $c2
	ld a, [hl+]                                      ; $5d14: $2a
	ld b, $c7                                        ; $5d15: $06 $c7
	ld a, [hl+]                                      ; $5d17: $2a
	ld b, $c2                                        ; $5d18: $06 $c2
	ld a, [hl+]                                      ; $5d1a: $2a
	ld b, $c6                                        ; $5d1b: $06 $c6
	dec hl                                           ; $5d1d: $2b
	inc c                                            ; $5d1e: $0c
	ld a, [hl]                                       ; $5d1f: $7e
	dec e                                            ; $5d20: $1d
	jr jr_036_5cce                                   ; $5d21: $18 $ab

	add $2c                                          ; $5d23: $c6 $2c
	inc a                                            ; $5d25: $3c
	jp nz, $0c2c                                     ; $5d26: $c2 $2c $0c

	ret z                                            ; $5d29: $c8

	ld l, $0c                                        ; $5d2a: $2e $0c
	jr nc, jr_036_5d3a                               ; $5d2c: $30 $0c

	ret z                                            ; $5d2e: $c8

	ld sp, $c730                                     ; $5d2f: $31 $30 $c7
	dec [hl]                                         ; $5d32: $35
	inc h                                            ; $5d33: $24
	rst JumpTable                                          ; $5d34: $c7
	ld l, $60                                        ; $5d35: $2e $60
	nop                                              ; $5d37: $00
	jr jr_036_5d01                                   ; $5d38: $18 $c7

jr_036_5d3a:
	dec [hl]                                         ; $5d3a: $35
	inc h                                            ; $5d3b: $24
	jp $1835                                         ; $5d3c: $c3 $35 $18


	ret z                                            ; $5d3f: $c8

	ld a, [hl-]                                      ; $5d40: $3a
	inc c                                            ; $5d41: $0c
	rst JumpTable                                          ; $5d42: $c7
	dec [hl]                                         ; $5d43: $35
	inc c                                            ; $5d44: $0c
	rst JumpTable                                          ; $5d45: $c7
	jr c, @+$3e                                      ; $5d46: $38 $3c

	push bc                                          ; $5d48: $c5
	inc sp                                           ; $5d49: $33
	jr @-$37                                         ; $5d4a: $18 $c7

	jr c, jr_036_5d66                                ; $5d4c: $38 $18

	cpl                                              ; $5d4e: $2f
	inc c                                            ; $5d4f: $0c
	ld l, $0c                                        ; $5d50: $2e $0c
	call nz, $0c2e                                   ; $5d52: $c4 $2e $0c
	add $2c                                          ; $5d55: $c6 $2c
	inc c                                            ; $5d57: $0c
	add $2a                                          ; $5d58: $c6 $2a
	inc c                                            ; $5d5a: $0c
	jp nz, $0c2a                                     ; $5d5b: $c2 $2a $0c

	add $2c                                          ; $5d5e: $c6 $2c
	inc a                                            ; $5d60: $3c
	jp nz, $3c2c                                     ; $5d61: $c2 $2c $3c

	ld a, [hl]                                       ; $5d64: $7e
	nop                                              ; $5d65: $00

jr_036_5d66:
	and b                                            ; $5d66: $a0
	cp $ff                                           ; $5d67: $fe $ff
	nop                                              ; $5d69: $00
	jr @-$2d                                         ; $5d6a: $18 $d1

	call $1b7e                                       ; $5d6c: $cd $7e $1b
	nop                                              ; $5d6f: $00
	xor d                                            ; $5d70: $aa
	dec h                                            ; $5d71: $25
	inc c                                            ; $5d72: $0c
	ld a, [hl]                                       ; $5d73: $7e

jr_036_5d74:
	nop                                              ; $5d74: $00
	and b                                            ; $5d75: $a0
	call nz, $0c25                                   ; $5d76: $c4 $25 $0c
	call $0625                                       ; $5d79: $cd $25 $06
	call nz, $0625                                   ; $5d7c: $c4 $25 $06
	call $0c25                                       ; $5d7f: $cd $25 $0c

jr_036_5d82:
	call nz, $0c25                                   ; $5d82: $c4 $25 $0c
	call $1d7e                                       ; $5d85: $cd $7e $1d
	nop                                              ; $5d88: $00
	and b                                            ; $5d89: $a0
	inc hl                                           ; $5d8a: $23
	rrca                                             ; $5d8b: $0f
	call nz, $0923                                   ; $5d8c: $c4 $23 $09
	ld a, [hl]                                       ; $5d8f: $7e
	nop                                              ; $5d90: $00
	and b                                            ; $5d91: $a0
	call $0623                                       ; $5d92: $cd $23 $06
	call nz, $0623                                   ; $5d95: $c4 $23 $06
	db $fd                                           ; $5d98: $fd
	pop de                                           ; $5d99: $d1
	sla d                                            ; $5d9a: $cb $22
	inc c                                            ; $5d9c: $0c
	call nz, $0c22                                   ; $5d9d: $c4 $22 $0c
	sla b                                            ; $5da0: $cb $20
	rrca                                             ; $5da2: $0f
	call nz, $0920                                   ; $5da3: $c4 $20 $09
	rr [hl]                                          ; $5da6: $cb $1e
	inc c                                            ; $5da8: $0c
	call nz, $0c1e                                   ; $5da9: $c4 $1e $0c
	adc $1d                                          ; $5dac: $ce $1d
	jr jr_036_5d74                                   ; $5dae: $18 $c4

	dec e                                            ; $5db0: $1d
	inc c                                            ; $5db1: $0c
	adc $19                                          ; $5db2: $ce $19
	jr @-$3a                                         ; $5db4: $18 $c4

	add hl, de                                       ; $5db6: $19
	inc c                                            ; $5db7: $0c
	ld a, [hl]                                       ; $5db8: $7e
	dec e                                            ; $5db9: $1d
	inc c                                            ; $5dba: $0c
	and c                                            ; $5dbb: $a1
	ret                                              ; $5dbc: $c9


	rla                                              ; $5dbd: $17
	inc h                                            ; $5dbe: $24
	ld a, [hl]                                       ; $5dbf: $7e
	dec e                                            ; $5dc0: $1d
	nop                                              ; $5dc1: $00
	and c                                            ; $5dc2: $a1
	call nz, $1817                                   ; $5dc3: $c4 $17 $18
	ld a, [hl]                                       ; $5dc6: $7e
	nop                                              ; $5dc7: $00
	and b                                            ; $5dc8: $a0
	sub b                                            ; $5dc9: $90
	ret z                                            ; $5dca: $c8

	ld a, l                                          ; $5dcb: $7d
	ld bc, $062c                                     ; $5dcc: $01 $2c $06
	ld l, $06                                        ; $5dcf: $2e $06
	ld sp, $c406                                     ; $5dd1: $31 $06 $c4
	ld sp, $c806                                     ; $5dd4: $31 $06 $c8
	inc l                                            ; $5dd7: $2c
	ld b, $c4                                        ; $5dd8: $06 $c4
	inc l                                            ; $5dda: $2c
	ld b, $c8                                        ; $5ddb: $06 $c8
	ld sp, $c406                                     ; $5ddd: $31 $06 $c4
	ld sp, $c806                                     ; $5de0: $31 $06 $c8
	ld sp, $c406                                     ; $5de3: $31 $06 $c4
	ld sp, $7d06                                     ; $5de6: $31 $06 $7d
	nop                                              ; $5de9: $00
	db $fd                                           ; $5dea: $fd
	pop de                                           ; $5deb: $d1
	sla e                                            ; $5dec: $cb $23
	inc c                                            ; $5dee: $0c
	call nz, $0c23                                   ; $5def: $c4 $23 $0c
	jp z, $0f27                                      ; $5df2: $ca $27 $0f

	call nz, $0927                                   ; $5df5: $c4 $27 $09
	ret                                              ; $5df8: $c9


	ld a, [hl+]                                      ; $5df9: $2a
	inc c                                            ; $5dfa: $0c
	call nz, $0c2a                                   ; $5dfb: $c4 $2a $0c
	jp z, $1829                                      ; $5dfe: $ca $29 $18

	call nz, $0c29                                   ; $5e01: $c4 $29 $0c
	sla l                                            ; $5e04: $cb $25
	inc h                                            ; $5e06: $24
	call nz, $1825                                   ; $5e07: $c4 $25 $18
	db $fd                                           ; $5e0a: $fd
	ret nc                                           ; $5e0b: $d0

	adc h                                            ; $5e0c: $8c
	cp $d1                                           ; $5e0d: $fe $d1
	jp nz, $187f                                     ; $5e0f: $c2 $7f $18

	ld [hl], c                                       ; $5e12: $71
	nop                                              ; $5e13: $00
	jr jr_036_5e23                                   ; $5e14: $18 $0d

	ld [de], a                                       ; $5e16: $12
	add $0d                                          ; $5e17: $c6 $0d
	ld b, $c2                                        ; $5e19: $06 $c2
	dec bc                                           ; $5e1b: $0b
	ld b, $00                                        ; $5e1c: $06 $00
	ld [de], a                                       ; $5e1e: $12
	rrca                                             ; $5e1f: $0f
	ld [de], a                                       ; $5e20: $12
	add $0f                                          ; $5e21: $c6 $0f

jr_036_5e23:
	ld b, $fb                                        ; $5e23: $06 $fb
	db $fd                                           ; $5e25: $fd
	inc d                                            ; $5e26: $14
	ld e, a                                          ; $5e27: $5f
	ei                                               ; $5e28: $fb
	inc bc                                           ; $5e29: $03
	pop de                                           ; $5e2a: $d1
	jp nz, $187f                                     ; $5e2b: $c2 $7f $18

	ld [hl], c                                       ; $5e2e: $71
	ei                                               ; $5e2f: $fb
	db $fd                                           ; $5e30: $fd
	inc d                                            ; $5e31: $14
	ld e, a                                          ; $5e32: $5f
	ei                                               ; $5e33: $fb
	inc bc                                           ; $5e34: $03
	jp nz, $0c00                                     ; $5e35: $c2 $00 $0c

	dec c                                            ; $5e38: $0d
	ld [$0400], sp                                   ; $5e39: $08 $00 $04
	rrca                                             ; $5e3c: $0f
	ld [$0400], sp                                   ; $5e3d: $08 $00 $04
	db $10                                           ; $5e40: $10
	ld [$10c6], sp                                   ; $5e41: $08 $c6 $10
	inc c                                            ; $5e44: $0c
	nop                                              ; $5e45: $00
	inc b                                            ; $5e46: $04
	jp nz, $080d                                     ; $5e47: $c2 $0d $08

	nop                                              ; $5e4a: $00
	inc b                                            ; $5e4b: $04
	rrca                                             ; $5e4c: $0f
	ld [$0400], sp                                   ; $5e4d: $08 $00 $04
	ld de, $0008                                     ; $5e50: $11 $08 $00
	inc b                                            ; $5e53: $04
	pop de                                           ; $5e54: $d1
	jp nz, $187f                                     ; $5e55: $c2 $7f $18

	ld [hl], c                                       ; $5e58: $71
	nop                                              ; $5e59: $00
	jr jr_036_5e69                                   ; $5e5a: $18 $0d

	ld [de], a                                       ; $5e5c: $12
	add $0d                                          ; $5e5d: $c6 $0d
	ld b, $c2                                        ; $5e5f: $06 $c2
	dec bc                                           ; $5e61: $0b
	ld b, $00                                        ; $5e62: $06 $00
	ld [de], a                                       ; $5e64: $12
	rrca                                             ; $5e65: $0f
	ld [de], a                                       ; $5e66: $12
	add $0f                                          ; $5e67: $c6 $0f

jr_036_5e69:
	ld b, $fb                                        ; $5e69: $06 $fb
	db $fd                                           ; $5e6b: $fd
	inc d                                            ; $5e6c: $14
	ld e, a                                          ; $5e6d: $5f
	ei                                               ; $5e6e: $fb
	inc bc                                           ; $5e6f: $03
	pop de                                           ; $5e70: $d1
	jp nz, $187f                                     ; $5e71: $c2 $7f $18

	ld [hl], c                                       ; $5e74: $71
	ei                                               ; $5e75: $fb
	db $fd                                           ; $5e76: $fd
	inc d                                            ; $5e77: $14
	ld e, a                                          ; $5e78: $5f
	ei                                               ; $5e79: $fb
	inc bc                                           ; $5e7a: $03
	nop                                              ; $5e7b: $00
	inc c                                            ; $5e7c: $0c
	add $7e                                          ; $5e7d: $c6 $7e
	dec e                                            ; $5e7f: $1d
	nop                                              ; $5e80: $00
	xor c                                            ; $5e81: $a9
	inc l                                            ; $5e82: $2c
	jr jr_036_5eaf                                   ; $5e83: $18 $2a

	jr @+$2b                                         ; $5e85: $18 $29

	inc h                                            ; $5e87: $24
	ld a, [hl]                                       ; $5e88: $7e
	nop                                              ; $5e89: $00
	and b                                            ; $5e8a: $a0
	pop de                                           ; $5e8b: $d1
	jp nz, Jump_036_7f71                             ; $5e8c: $c2 $71 $7f

	jr @-$01                                         ; $5e8f: $18 $fd

	ld a, [hl+]                                      ; $5e91: $2a
	ld e, a                                          ; $5e92: $5f
	ld [$0006], sp                                   ; $5e93: $08 $06 $00
	ld b, $be                                        ; $5e96: $06 $be
	inc c                                            ; $5e98: $0c
	inc d                                            ; $5e99: $14
	ld [$0814], sp                                   ; $5e9a: $08 $14 $08
	cp [hl]                                          ; $5e9d: $be
	ld a, [bc]                                       ; $5e9e: $0a
	ld b, $c2                                        ; $5e9f: $06 $c2
	ld a, [bc]                                       ; $5ea1: $0a
	ld b, $c2                                        ; $5ea2: $06 $c2
	inc c                                            ; $5ea4: $0c
	ld b, $c6                                        ; $5ea5: $06 $c6
	inc c                                            ; $5ea7: $0c
	ld b, $c2                                        ; $5ea8: $06 $c2
	ld a, [bc]                                       ; $5eaa: $0a
	inc c                                            ; $5eab: $0c
	ld a, [bc]                                       ; $5eac: $0a
	ld b, $00                                        ; $5ead: $06 $00

jr_036_5eaf:
	ld b, $be                                        ; $5eaf: $06 $be
	inc c                                            ; $5eb1: $0c
	dec c                                            ; $5eb2: $0d
	ld a, [bc]                                       ; $5eb3: $0a
	dec c                                            ; $5eb4: $0d
	ld a, [bc]                                       ; $5eb5: $0a
	dec c                                            ; $5eb6: $0d
	ld a, [bc]                                       ; $5eb7: $0a
	dec c                                            ; $5eb8: $0d
	cp [hl]                                          ; $5eb9: $be
	ld a, [bc]                                       ; $5eba: $0a
	inc c                                            ; $5ebb: $0c
	ld a, a                                          ; $5ebc: $7f
	inc e                                            ; $5ebd: $1c
	ld d, $0c                                        ; $5ebe: $16 $0c
	ld a, a                                          ; $5ec0: $7f
	jr jr_036_5ecd                                   ; $5ec1: $18 $0a

	inc c                                            ; $5ec3: $0c
	ld a, a                                          ; $5ec4: $7f
	inc e                                            ; $5ec5: $1c
	ld d, $0c                                        ; $5ec6: $16 $0c
	ld a, a                                          ; $5ec8: $7f
	jr jr_036_5ed5                                   ; $5ec9: $18 $0a

	inc c                                            ; $5ecb: $0c
	ld a, a                                          ; $5ecc: $7f

jr_036_5ecd:
	inc e                                            ; $5ecd: $1c
	ld d, $0c                                        ; $5ece: $16 $0c
	ld a, a                                          ; $5ed0: $7f
	jr @+$0c                                         ; $5ed1: $18 $0a

	inc c                                            ; $5ed3: $0c
	ld a, a                                          ; $5ed4: $7f

jr_036_5ed5:
	inc e                                            ; $5ed5: $1c
	ld d, $0c                                        ; $5ed6: $16 $0c
	db $fd                                           ; $5ed8: $fd
	ld a, [hl+]                                      ; $5ed9: $2a
	ld e, a                                          ; $5eda: $5f
	ld [$0006], sp                                   ; $5edb: $08 $06 $00
	ld b, $be                                        ; $5ede: $06 $be
	inc c                                            ; $5ee0: $0c
	inc d                                            ; $5ee1: $14
	ld [$0814], sp                                   ; $5ee2: $08 $14 $08
	inc d                                            ; $5ee5: $14
	ld [$be14], sp                                   ; $5ee6: $08 $14 $be
	db $d3                                           ; $5ee9: $d3
	jr nz, jr_036_5eef                               ; $5eea: $20 $03

	add $20                                          ; $5eec: $c6 $20
	add hl, bc                                       ; $5eee: $09

jr_036_5eef:
	jp nz, $0620                                     ; $5eef: $c2 $20 $06

	add $20                                          ; $5ef2: $c6 $20
	ld [de], a                                       ; $5ef4: $12
	jp nz, $0320                                     ; $5ef5: $c2 $20 $03

	add $20                                          ; $5ef8: $c6 $20
	add hl, bc                                       ; $5efa: $09
	jp nz, $0620                                     ; $5efb: $c2 $20 $06

	add $20                                          ; $5efe: $c6 $20
	ld [de], a                                       ; $5f00: $12
	jp nz, $1d7e                                     ; $5f01: $c2 $7e $1d

	ld e, $a0                                        ; $5f04: $1e $a0
	jr nz, jr_036_5f44                               ; $5f06: $20 $3c

	ld a, [hl]                                       ; $5f08: $7e
	dec e                                            ; $5f09: $1d
	nop                                              ; $5f0a: $00
	and b                                            ; $5f0b: $a0
	add $20                                          ; $5f0c: $c6 $20
	inc a                                            ; $5f0e: $3c
	ld a, [hl]                                       ; $5f0f: $7e
	nop                                              ; $5f10: $00
	and b                                            ; $5f11: $a0
	cp $ff                                           ; $5f12: $fe $ff
	pop de                                           ; $5f14: $d1
	jp nz, $060d                                     ; $5f15: $c2 $0d $06

	nop                                              ; $5f18: $00
	ld [de], a                                       ; $5f19: $12
	dec c                                            ; $5f1a: $0d
	ld [de], a                                       ; $5f1b: $12
	add $0d                                          ; $5f1c: $c6 $0d
	ld b, $c2                                        ; $5f1e: $06 $c2
	dec bc                                           ; $5f20: $0b
	ld b, $00                                        ; $5f21: $06 $00
	ld [de], a                                       ; $5f23: $12
	rrca                                             ; $5f24: $0f
	ld [de], a                                       ; $5f25: $12
	add $0f                                          ; $5f26: $c6 $0f
	ld b, $fd                                        ; $5f28: $06 $fd

jr_036_5f2a:
	cp [hl]                                          ; $5f2a: $be
	inc c                                            ; $5f2b: $0c
	ld b, $12                                        ; $5f2c: $06 $12
	ld b, $12                                        ; $5f2e: $06 $12
	cp [hl]                                          ; $5f30: $be
	ld b, $06                                        ; $5f31: $06 $06
	pop de                                           ; $5f33: $d1
	add $06                                          ; $5f34: $c6 $06
	ld b, $c2                                        ; $5f36: $06 $c2
	ld b, $06                                        ; $5f38: $06 $06
	add $06                                          ; $5f3a: $c6 $06
	ld b, $c2                                        ; $5f3c: $06 $c2
	rlca                                             ; $5f3e: $07
	ld b, $c6                                        ; $5f3f: $06 $c6
	rlca                                             ; $5f41: $07
	ld b, $c2                                        ; $5f42: $06 $c2

jr_036_5f44:
	ld [$fd0c], sp                                   ; $5f44: $08 $0c $fd
	ret nc                                           ; $5f47: $d0

	adc h                                            ; $5f48: $8c
	cp $be                                           ; $5f49: $fe $be
	inc c                                            ; $5f4b: $0c

jr_036_5f4c:
	jr nz, jr_036_5f6d                               ; $5f4c: $20 $1f

	jr nz, jr_036_5f6d                               ; $5f4e: $20 $1d

	dec e                                            ; $5f50: $1d
	jr nz, jr_036_5f73                               ; $5f51: $20 $20

	dec e                                            ; $5f53: $1d
	cp [hl]                                          ; $5f54: $be
	ei                                               ; $5f55: $fb
	db $fd                                           ; $5f56: $fd
	jp z, $fb5f                                      ; $5f57: $ca $5f $fb

	inc bc                                           ; $5f5a: $03
	ei                                               ; $5f5b: $fb
	db $fd                                           ; $5f5c: $fd
	jp z, $fb5f                                      ; $5f5d: $ca $5f $fb

	inc bc                                           ; $5f60: $03
	cp [hl]                                          ; $5f61: $be
	inc c                                            ; $5f62: $0c
	nop                                              ; $5f63: $00
	jr nz, jr_036_5f86                               ; $5f64: $20 $20

	jr nz, jr_036_5f68                               ; $5f66: $20 $00

jr_036_5f68:
	jr nz, jr_036_5f8a                               ; $5f68: $20 $20

	jr nz, jr_036_5f2a                               ; $5f6a: $20 $be

	nop                                              ; $5f6c: $00

jr_036_5f6d:
	jr @-$40                                         ; $5f6d: $18 $be

	inc c                                            ; $5f6f: $0c
	jr nz, jr_036_5f8f                               ; $5f70: $20 $1d

	dec e                                            ; $5f72: $1d

jr_036_5f73:
	jr nz, jr_036_5f95                               ; $5f73: $20 $20

	dec e                                            ; $5f75: $1d
	cp [hl]                                          ; $5f76: $be
	ei                                               ; $5f77: $fb
	db $fd                                           ; $5f78: $fd
	jp z, $fb5f                                      ; $5f79: $ca $5f $fb

	inc bc                                           ; $5f7c: $03
	ei                                               ; $5f7d: $fb
	db $fd                                           ; $5f7e: $fd
	jp z, $fb5f                                      ; $5f7f: $ca $5f $fb

	inc bc                                           ; $5f82: $03
	cp [hl]                                          ; $5f83: $be
	inc c                                            ; $5f84: $0c
	nop                                              ; $5f85: $00

jr_036_5f86:
	jr nz, jr_036_5fa8                               ; $5f86: $20 $20

	jr nz, jr_036_5faa                               ; $5f88: $20 $20

jr_036_5f8a:
	jr nz, jr_036_5fac                               ; $5f8a: $20 $20

	jr nz, jr_036_5f4c                               ; $5f8c: $20 $be

	db $fd                                           ; $5f8e: $fd

jr_036_5f8f:
	sub $5f                                          ; $5f8f: $d6 $5f
	db $fd                                           ; $5f91: $fd
	add sp, $5f                                      ; $5f92: $e8 $5f
	db $fd                                           ; $5f94: $fd

jr_036_5f95:
	sub $5f                                          ; $5f95: $d6 $5f
	ei                                               ; $5f97: $fb
	jr nz, jr_036_5fa6                               ; $5f98: $20 $0c

	dec e                                            ; $5f9a: $1d
	inc c                                            ; $5f9b: $0c
	jr nz, jr_036_5faa                               ; $5f9c: $20 $0c

	dec e                                            ; $5f9e: $1d
	ld b, $1f                                        ; $5f9f: $06 $1f
	ld b, $be                                        ; $5fa1: $06 $be
	inc c                                            ; $5fa3: $0c
	jr nz, jr_036_5fc3                               ; $5fa4: $20 $1d

jr_036_5fa6:
	jr nz, jr_036_5fc7                               ; $5fa6: $20 $1f

jr_036_5fa8:
	cp [hl]                                          ; $5fa8: $be
	ei                                               ; $5fa9: $fb

jr_036_5faa:
	ld [bc], a                                       ; $5faa: $02
	db $fd                                           ; $5fab: $fd

jr_036_5fac:
	add sp, $5f                                      ; $5fac: $e8 $5f
	cp [hl]                                          ; $5fae: $be
	jr jr_036_5fd0                                   ; $5faf: $18 $1f

	rra                                              ; $5fb1: $1f
	rra                                              ; $5fb2: $1f
	rra                                              ; $5fb3: $1f
	cp [hl]                                          ; $5fb4: $be
	cp [hl]                                          ; $5fb5: $be
	ld b, $20                                        ; $5fb6: $06 $20
	nop                                              ; $5fb8: $00
	jr nz, @+$22                                     ; $5fb9: $20 $20

	jr nz, jr_036_5fbd                               ; $5fbb: $20 $00

jr_036_5fbd:
	jr nz, jr_036_5fdf                               ; $5fbd: $20 $20

	jr nz, jr_036_5fc1                               ; $5fbf: $20 $00

jr_036_5fc1:
	jr nz, @+$22                                     ; $5fc1: $20 $20

jr_036_5fc3:
	jr nz, @+$22                                     ; $5fc3: $20 $20

	jr nz, jr_036_5fe7                               ; $5fc5: $20 $20

jr_036_5fc7:
	cp [hl]                                          ; $5fc7: $be
	cp $ff                                           ; $5fc8: $fe $ff
	cp [hl]                                          ; $5fca: $be
	inc c                                            ; $5fcb: $0c
	dec e                                            ; $5fcc: $1d
	dec e                                            ; $5fcd: $1d
	jr nz, @+$1f                                     ; $5fce: $20 $1d

jr_036_5fd0:
	dec e                                            ; $5fd0: $1d
	jr nz, jr_036_5ff3                               ; $5fd1: $20 $20

	dec e                                            ; $5fd3: $1d
	cp [hl]                                          ; $5fd4: $be
	db $fd                                           ; $5fd5: $fd
	jr nz, jr_036_5fe4                               ; $5fd6: $20 $0c

	dec e                                            ; $5fd8: $1d
	inc c                                            ; $5fd9: $0c
	jr nz, jr_036_5fe8                               ; $5fda: $20 $0c

	dec e                                            ; $5fdc: $1d
	ld b, $1f                                        ; $5fdd: $06 $1f

jr_036_5fdf:
	ld b, $be                                        ; $5fdf: $06 $be
	inc c                                            ; $5fe1: $0c
	jr nz, @+$1f                                     ; $5fe2: $20 $1d

jr_036_5fe4:
	jr nz, jr_036_6005                               ; $5fe4: $20 $1f

	cp [hl]                                          ; $5fe6: $be

jr_036_5fe7:
	db $fd                                           ; $5fe7: $fd

jr_036_5fe8:
	nop                                              ; $5fe8: $00
	inc c                                            ; $5fe9: $0c
	dec e                                            ; $5fea: $1d
	inc c                                            ; $5feb: $0c
	jr nz, jr_036_5ffa                               ; $5fec: $20 $0c

	dec e                                            ; $5fee: $1d
	ld b, $1f                                        ; $5fef: $06 $1f
	ld b, $be                                        ; $5ff1: $06 $be

jr_036_5ff3:
	inc c                                            ; $5ff3: $0c
	jr nz, @+$1f                                     ; $5ff4: $20 $1d

	jr nz, jr_036_6017                               ; $5ff6: $20 $1f

	cp [hl]                                          ; $5ff8: $be
	db $fd                                           ; $5ff9: $fd

jr_036_5ffa:
	ret nc                                           ; $5ffa: $d0

	ld b, [hl]                                       ; $5ffb: $46
	cp $92                                           ; $5ffc: $fe $92
	pop de                                           ; $5ffe: $d1
	call nz, $0925                                   ; $5fff: $c4 $25 $09
	jp z, $0c0d                                      ; $6002: $ca $0d $0c

jr_036_6005:
	call nz, $0c0d                                   ; $6005: $c4 $0d $0c
	ret z                                            ; $6008: $c8

	jr jr_036_6017                                   ; $6009: $18 $0c

	call nz, $0c18                                   ; $600b: $c4 $18 $0c
	jp nz, $0c18                                     ; $600e: $c2 $18 $0c

	ret z                                            ; $6011: $c8

	jr nz, jr_036_6020                               ; $6012: $20 $0c

	jp $0c20                                         ; $6014: $c3 $20 $0c


jr_036_6017:
	jp nz, $0320                                     ; $6017: $c2 $20 $03

	rst JumpTable                                          ; $601a: $c7
	ld e, $06                                        ; $601b: $1e $06
	ret z                                            ; $601d: $c8

	dec h                                            ; $601e: $25
	inc bc                                           ; $601f: $03

jr_036_6020:
	ret z                                            ; $6020: $c8

	ld [de], a                                       ; $6021: $12
	inc c                                            ; $6022: $0c
	call nz, $0c12                                   ; $6023: $c4 $12 $0c
	jp z, $0c1d                                      ; $6026: $ca $1d $0c

	call nz, $0c1d                                   ; $6029: $c4 $1d $0c
	jp nz, $0c1d                                     ; $602c: $c2 $1d $0c

	jp z, $0c25                                      ; $602f: $ca $25 $0c

	add $25                                          ; $6032: $c6 $25
	inc c                                            ; $6034: $0c
	call nz, $0325                                   ; $6035: $c4 $25 $03
	rst JumpTable                                          ; $6038: $c7
	dec e                                            ; $6039: $1d
	ld b, $c8                                        ; $603a: $06 $c8
	inc h                                            ; $603c: $24
	inc bc                                           ; $603d: $03
	ret z                                            ; $603e: $c8

	ld de, $c40c                                     ; $603f: $11 $0c $c4
	ld de, $ca0c                                     ; $6042: $11 $0c $ca
	dec de                                           ; $6045: $1b
	inc c                                            ; $6046: $0c
	call nz, $0c1b                                   ; $6047: $c4 $1b $0c
	jp nz, $0c1b                                     ; $604a: $c2 $1b $0c

	jp z, $0c20                                      ; $604d: $ca $20 $0c

	add $20                                          ; $6050: $c6 $20
	inc c                                            ; $6052: $0c
	call nz, $0320                                   ; $6053: $c4 $20 $03
	rst JumpTable                                          ; $6056: $c7
	dec de                                           ; $6057: $1b
	ld b, $c8                                        ; $6058: $06 $c8
	ld [hl+], a                                      ; $605a: $22
	inc bc                                           ; $605b: $03
	ret z                                            ; $605c: $c8

	rrca                                             ; $605d: $0f
	inc c                                            ; $605e: $0c
	call nz, $0c0f                                   ; $605f: $c4 $0f $0c
	jp z, $0c1b                                      ; $6062: $ca $1b $0c

	call nz, $0c1b                                   ; $6065: $c4 $1b $0c
	jp nz, $0c1b                                     ; $6068: $c2 $1b $0c

	jp z, $0c14                                      ; $606b: $ca $14 $0c

	add $14                                          ; $606e: $c6 $14
	inc c                                            ; $6070: $0c
	call nz, $0314                                   ; $6071: $c4 $14 $03
	sub d                                            ; $6074: $92
	pop de                                           ; $6075: $d1
	call nz, $0925                                   ; $6076: $c4 $25 $09
	jp z, $0c0d                                      ; $6079: $ca $0d $0c

	call nz, $0c0d                                   ; $607c: $c4 $0d $0c
	ret z                                            ; $607f: $c8

	jr jr_036_608e                                   ; $6080: $18 $0c

	call nz, $0c18                                   ; $6082: $c4 $18 $0c
	jp nz, $0c18                                     ; $6085: $c2 $18 $0c

	ret z                                            ; $6088: $c8

	jr nz, jr_036_6097                               ; $6089: $20 $0c

	jp $0c20                                         ; $608b: $c3 $20 $0c


jr_036_608e:
	call nz, $0320                                   ; $608e: $c4 $20 $03
	rst JumpTable                                          ; $6091: $c7
	ld e, $06                                        ; $6092: $1e $06
	ret z                                            ; $6094: $c8

	dec h                                            ; $6095: $25
	inc bc                                           ; $6096: $03

jr_036_6097:
	ret z                                            ; $6097: $c8

	ld [de], a                                       ; $6098: $12
	inc c                                            ; $6099: $0c
	call nz, $0c12                                   ; $609a: $c4 $12 $0c
	jp z, $0c1d                                      ; $609d: $ca $1d $0c

	call nz, $0c1d                                   ; $60a0: $c4 $1d $0c
	jp nz, $0c1d                                     ; $60a3: $c2 $1d $0c

	jp z, $0c25                                      ; $60a6: $ca $25 $0c

	add $25                                          ; $60a9: $c6 $25
	inc c                                            ; $60ab: $0c
	call nz, $0325                                   ; $60ac: $c4 $25 $03
	rst JumpTable                                          ; $60af: $c7
	dec e                                            ; $60b0: $1d
	ld b, $c8                                        ; $60b1: $06 $c8
	inc h                                            ; $60b3: $24
	inc bc                                           ; $60b4: $03
	ret z                                            ; $60b5: $c8

	ld de, $c40c                                     ; $60b6: $11 $0c $c4
	ld de, $ca0c                                     ; $60b9: $11 $0c $ca
	dec de                                           ; $60bc: $1b
	inc c                                            ; $60bd: $0c
	call nz, $0c1b                                   ; $60be: $c4 $1b $0c
	jp nz, $0c1b                                     ; $60c1: $c2 $1b $0c

	jp z, $0c20                                      ; $60c4: $ca $20 $0c

	add $20                                          ; $60c7: $c6 $20
	inc c                                            ; $60c9: $0c
	call nz, $0320                                   ; $60ca: $c4 $20 $03
	rst JumpTable                                          ; $60cd: $c7
	dec de                                           ; $60ce: $1b
	ld b, $c8                                        ; $60cf: $06 $c8
	ld [hl+], a                                      ; $60d1: $22
	inc bc                                           ; $60d2: $03
	sub d                                            ; $60d3: $92
	pop de                                           ; $60d4: $d1
	call nz, $0622                                   ; $60d5: $c4 $22 $06
	add $29                                          ; $60d8: $c6 $29
	ld b, $c2                                        ; $60da: $06 $c2
	add hl, hl                                       ; $60dc: $29
	ld b, $c2                                        ; $60dd: $06 $c2
	add hl, hl                                       ; $60df: $29
	ld b, $c1                                        ; $60e0: $06 $c1
	add hl, hl                                       ; $60e2: $29
	ld b, $c1                                        ; $60e3: $06 $c1
	add hl, hl                                       ; $60e5: $29
	ld b, $c4                                        ; $60e6: $06 $c4
	jr nz, @+$08                                     ; $60e8: $20 $06

	add $27                                          ; $60ea: $c6 $27
	ld b, $c2                                        ; $60ec: $06 $c2
	daa                                              ; $60ee: $27
	ld b, $c1                                        ; $60ef: $06 $c1
	daa                                              ; $60f1: $27
	ld b, $c1                                        ; $60f2: $06 $c1
	daa                                              ; $60f4: $27
	ld b, $c1                                        ; $60f5: $06 $c1
	daa                                              ; $60f7: $27
	ld b, $00                                        ; $60f8: $06 $00
	inc c                                            ; $60fa: $0c
	jp z, $0c12                                      ; $60fb: $ca $12 $0c

	call nz, $0c12                                   ; $60fe: $c4 $12 $0c
	ret z                                            ; $6101: $c8

	dec e                                            ; $6102: $1d
	inc c                                            ; $6103: $0c
	call nz, $0c1d                                   ; $6104: $c4 $1d $0c
	jp nz, $0c1d                                     ; $6107: $c2 $1d $0c

	ret                                              ; $610a: $c9


	dec h                                            ; $610b: $25
	inc c                                            ; $610c: $0c
	add $25                                          ; $610d: $c6 $25
	inc c                                            ; $610f: $0c
	call nz, $0c25                                   ; $6110: $c4 $25 $0c
	ret z                                            ; $6113: $c8

	nop                                              ; $6114: $00
	inc bc                                           ; $6115: $03
	jr nz, @+$08                                     ; $6116: $20 $06

	ld [hl+], a                                      ; $6118: $22
	inc bc                                           ; $6119: $03
	sub d                                            ; $611a: $92
	pop de                                           ; $611b: $d1
	rst JumpTable                                          ; $611c: $c7
	ld de, $c40c                                     ; $611d: $11 $0c $c4
	ld de, $ca0c                                     ; $6120: $11 $0c $ca
	dec de                                           ; $6123: $1b
	inc c                                            ; $6124: $0c
	call nz, $0c1b                                   ; $6125: $c4 $1b $0c
	jp nz, $0c1b                                     ; $6128: $c2 $1b $0c

	call nz, $0c29                                   ; $612b: $c4 $29 $0c
	jp nz, $0c29                                     ; $612e: $c2 $29 $0c

	call nz, $0329                                   ; $6131: $c4 $29 $03
	rst JumpTable                                          ; $6134: $c7
	dec de                                           ; $6135: $1b
	ld b, $c8                                        ; $6136: $06 $c8
	ld [hl+], a                                      ; $6138: $22
	inc bc                                           ; $6139: $03
	ret z                                            ; $613a: $c8

	rrca                                             ; $613b: $0f
	inc c                                            ; $613c: $0c
	call nz, $0c0f                                   ; $613d: $c4 $0f $0c
	jp z, $0c1b                                      ; $6140: $ca $1b $0c

	call nz, $0c1b                                   ; $6143: $c4 $1b $0c
	jp nz, $0c1b                                     ; $6146: $c2 $1b $0c

	jp z, $0c14                                      ; $6149: $ca $14 $0c

	call nz, $0c14                                   ; $614c: $c4 $14 $0c
	sub d                                            ; $614f: $92
	pop de                                           ; $6150: $d1
	call nz, $1830                                   ; $6151: $c4 $30 $18
	jp nz, $0c30                                     ; $6154: $c2 $30 $0c

	call nz, $0c30                                   ; $6157: $c4 $30 $0c
	jp nz, $0c30                                     ; $615a: $c2 $30 $0c

	call nz, $0c2e                                   ; $615d: $c4 $2e $0c
	jp nz, $0c2e                                     ; $6160: $c2 $2e $0c

	call nz, $0c2e                                   ; $6163: $c4 $2e $0c
	jp nz, $0c2e                                     ; $6166: $c2 $2e $0c

	jp $0c30                                         ; $6169: $c3 $30 $0c


	pop bc                                           ; $616c: $c1
	jr nc, jr_036_617b                               ; $616d: $30 $0c

	jp $0c30                                         ; $616f: $c3 $30 $0c


	pop bc                                           ; $6172: $c1
	jr nc, jr_036_6181                               ; $6173: $30 $0c

	jp nz, $0c2e                                     ; $6175: $c2 $2e $0c

	pop bc                                           ; $6178: $c1
	ld l, $0c                                        ; $6179: $2e $0c

jr_036_617b:
	jp nz, $0c2e                                     ; $617b: $c2 $2e $0c

	pop bc                                           ; $617e: $c1
	ld l, $0c                                        ; $617f: $2e $0c

jr_036_6181:
	cp $ff                                           ; $6181: $fe $ff
	ret nc                                           ; $6183: $d0

	ld b, [hl]                                       ; $6184: $46
	cp $92                                           ; $6185: $fe $92
	pop de                                           ; $6187: $d1
	push bc                                          ; $6188: $c5
	nop                                              ; $6189: $00
	inc bc                                           ; $618a: $03
	add hl, hl                                       ; $618b: $29
	ld b, $c6                                        ; $618c: $06 $c6
	ld sp, $c30c                                     ; $618e: $31 $0c $c3
	ld sp, $7e0c                                     ; $6191: $31 $0c $7e
	dec e                                            ; $6194: $1d
	ld [$91aa], sp                                   ; $6195: $08 $aa $91

jr_036_6198:
	sub a                                            ; $6198: $97
	adc d                                            ; $6199: $8a
	ld sp, $9708                                     ; $619a: $31 $08 $97
	nop                                              ; $619d: $00
	ret z                                            ; $619e: $c8

	ld sp, $9704                                     ; $619f: $31 $04 $97
	adc d                                            ; $61a2: $8a
	jr nc, @+$0a                                     ; $61a3: $30 $08

	sub a                                            ; $61a5: $97
	nop                                              ; $61a6: $00
	ret z                                            ; $61a7: $c8

	jr nc, @+$06                                     ; $61a8: $30 $04

	sub a                                            ; $61aa: $97
	adc d                                            ; $61ab: $8a
	ld sp, $9708                                     ; $61ac: $31 $08 $97
	nop                                              ; $61af: $00
	ret z                                            ; $61b0: $c8

	ld sp, $9704                                     ; $61b1: $31 $04 $97
	adc d                                            ; $61b4: $8a
	jr nc, jr_036_61bf                               ; $61b5: $30 $08

	sub a                                            ; $61b7: $97
	nop                                              ; $61b8: $00

jr_036_61b9:
	ret z                                            ; $61b9: $c8

	jr nc, @+$06                                     ; $61ba: $30 $04

	sub a                                            ; $61bc: $97
	ld l, h                                          ; $61bd: $6c
	inc l                                            ; $61be: $2c

jr_036_61bf:
	ld [$0097], sp                                   ; $61bf: $08 $97 $00
	push bc                                          ; $61c2: $c5
	inc l                                            ; $61c3: $2c
	inc b                                            ; $61c4: $04
	sub a                                            ; $61c5: $97
	ld l, h                                          ; $61c6: $6c
	add hl, hl                                       ; $61c7: $29
	ld [$0097], sp                                   ; $61c8: $08 $97 $00
	push bc                                          ; $61cb: $c5
	add hl, hl                                       ; $61cc: $29
	inc b                                            ; $61cd: $04
	sub a                                            ; $61ce: $97
	ld l, a                                          ; $61cf: $6f
	ld a, [hl]                                       ; $61d0: $7e
	dec e                                            ; $61d1: $1d
	inc c                                            ; $61d2: $0c
	xor d                                            ; $61d3: $aa
	inc l                                            ; $61d4: $2c
	inc d                                            ; $61d5: $14
	sub a                                            ; $61d6: $97
	nop                                              ; $61d7: $00
	call nz, $102c                                   ; $61d8: $c4 $2c $10
	sub a                                            ; $61db: $97
	ld a, [hl]                                       ; $61dc: $7e
	ld l, $14                                        ; $61dd: $2e $14
	sub a                                            ; $61df: $97
	nop                                              ; $61e0: $00
	call nz, $1c2e                                   ; $61e1: $c4 $2e $1c
	sub a                                            ; $61e4: $97
	ld e, e                                          ; $61e5: $5b
	inc l                                            ; $61e6: $2c
	ld b, $2a                                        ; $61e7: $06 $2a
	ld b, $97                                        ; $61e9: $06 $97
	ld e, [hl]                                       ; $61eb: $5e
	inc l                                            ; $61ec: $2c
	ld [de], a                                       ; $61ed: $12
	sub a                                            ; $61ee: $97
	nop                                              ; $61ef: $00
	call nz, $062c                                   ; $61f0: $c4 $2c $06
	sub a                                            ; $61f3: $97
	ld l, d                                          ; $61f4: $6a
	dec h                                            ; $61f5: $25
	ld b, $97                                        ; $61f6: $06 $97
	nop                                              ; $61f8: $00
	call nz, $0625                                   ; $61f9: $c4 $25 $06
	sub a                                            ; $61fc: $97
	ld l, h                                          ; $61fd: $6c
	dec h                                            ; $61fe: $25
	jr jr_036_6198                                   ; $61ff: $18 $97

	nop                                              ; $6201: $00
	call nz, $1825                                   ; $6202: $c4 $25 $18
	sub a                                            ; $6205: $97
	ld l, d                                          ; $6206: $6a
	dec h                                            ; $6207: $25
	ld b, $27                                        ; $6208: $06 $27
	ld b, $97                                        ; $620a: $06 $97
	ld e, [hl]                                       ; $620c: $5e
	add hl, hl                                       ; $620d: $29
	ld [de], a                                       ; $620e: $12
	sub a                                            ; $620f: $97
	nop                                              ; $6210: $00
	call nz, $0629                                   ; $6211: $c4 $29 $06
	sub a                                            ; $6214: $97
	ld l, d                                          ; $6215: $6a
	daa                                              ; $6216: $27
	ld b, $97                                        ; $6217: $06 $97
	nop                                              ; $6219: $00
	call nz, $0627                                   ; $621a: $c4 $27 $06
	sub a                                            ; $621d: $97
	ld e, a                                          ; $621e: $5f
	daa                                              ; $621f: $27
	jr jr_036_61b9                                   ; $6220: $18 $97

	nop                                              ; $6222: $00
	call nz, $1e27                                   ; $6223: $c4 $27 $1e
	sub d                                            ; $6226: $92
	pop de                                           ; $6227: $d1
	push bc                                          ; $6228: $c5
	add hl, hl                                       ; $6229: $29
	ld b, $c6                                        ; $622a: $06 $c6
	ld sp, $c30c                                     ; $622c: $31 $0c $c3
	ld sp, $7e0c                                     ; $622f: $31 $0c $7e
	dec e                                            ; $6232: $1d
	ld [$91aa], sp                                   ; $6233: $08 $aa $91
	sub a                                            ; $6236: $97
	adc d                                            ; $6237: $8a
	ld sp, $9708                                     ; $6238: $31 $08 $97
	nop                                              ; $623b: $00
	ret z                                            ; $623c: $c8

	ld sp, $9704                                     ; $623d: $31 $04 $97

jr_036_6240:
	adc d                                            ; $6240: $8a
	jr nc, @+$0a                                     ; $6241: $30 $08

	sub a                                            ; $6243: $97
	nop                                              ; $6244: $00
	ret z                                            ; $6245: $c8

	jr nc, @+$06                                     ; $6246: $30 $04

	sub a                                            ; $6248: $97
	adc d                                            ; $6249: $8a
	ld sp, $9708                                     ; $624a: $31 $08 $97
	nop                                              ; $624d: $00
	ret z                                            ; $624e: $c8

	ld sp, $9704                                     ; $624f: $31 $04 $97
	ld e, h                                          ; $6252: $5c
	inc sp                                           ; $6253: $33
	ld [$0097], sp                                   ; $6254: $08 $97 $00
	call nz, $0433                                   ; $6257: $c4 $33 $04
	sub a                                            ; $625a: $97
	ld l, e                                          ; $625b: $6b
	dec [hl]                                         ; $625c: $35
	ld [$0097], sp                                   ; $625d: $08 $97 $00
	call nz, $0435                                   ; $6260: $c4 $35 $04
	sub a                                            ; $6263: $97
	adc d                                            ; $6264: $8a
	ld sp, $9708                                     ; $6265: $31 $08 $97
	nop                                              ; $6268: $00
	call nz, $0431                                   ; $6269: $c4 $31 $04
	sub a                                            ; $626c: $97
	ld l, l                                          ; $626d: $6d
	ld a, [hl]                                       ; $626e: $7e
	dec e                                            ; $626f: $1d
	inc h                                            ; $6270: $24
	xor d                                            ; $6271: $aa
	ld l, $18                                        ; $6272: $2e $18
	sub a                                            ; $6274: $97
	nop                                              ; $6275: $00
	add $2e                                          ; $6276: $c6 $2e
	inc h                                            ; $6278: $24
	call nz, $0c2e                                   ; $6279: $c4 $2e $0c
	sub a                                            ; $627c: $97
	ld e, h                                          ; $627d: $5c
	ld a, [hl]                                       ; $627e: $7e
	dec e                                            ; $627f: $1d
	ld [$31aa], sp                                   ; $6280: $08 $aa $31
	ld [de], a                                       ; $6283: $12
	sub a                                            ; $6284: $97
	nop                                              ; $6285: $00
	call nz, $0631                                   ; $6286: $c4 $31 $06
	sub a                                            ; $6289: $97
	ld l, d                                          ; $628a: $6a
	jr nc, @+$0a                                     ; $628b: $30 $08

	sub a                                            ; $628d: $97
	nop                                              ; $628e: $00
	call nz, $0430                                   ; $628f: $c4 $30 $04
	sub a                                            ; $6292: $97
	ld l, d                                          ; $6293: $6a
	ld sp, $9708                                     ; $6294: $31 $08 $97
	nop                                              ; $6297: $00
	call nz, $0431                                   ; $6298: $c4 $31 $04
	sub a                                            ; $629b: $97
	ld l, d                                          ; $629c: $6a
	jr nc, jr_036_62a7                               ; $629d: $30 $08

	sub a                                            ; $629f: $97
	nop                                              ; $62a0: $00
	call nz, $0430                                   ; $62a1: $c4 $30 $04
	sub a                                            ; $62a4: $97
	ld c, a                                          ; $62a5: $4f
	inc l                                            ; $62a6: $2c

jr_036_62a7:
	jr jr_036_6240                                   ; $62a7: $18 $97

	nop                                              ; $62a9: $00
	call nz, $0c2c                                   ; $62aa: $c4 $2c $0c
	sub a                                            ; $62ad: $97
	ld a, l                                          ; $62ae: $7d
	add hl, hl                                       ; $62af: $29
	inc c                                            ; $62b0: $0c
	sub a                                            ; $62b1: $97
	nop                                              ; $62b2: $00
	call nz, $0c29                                   ; $62b3: $c4 $29 $0c
	sub c                                            ; $62b6: $91
	pop de                                           ; $62b7: $d1
	sub a                                            ; $62b8: $97
	adc d                                            ; $62b9: $8a
	ld sp, $9708                                     ; $62ba: $31 $08 $97
	nop                                              ; $62bd: $00
	call nz, $0431                                   ; $62be: $c4 $31 $04
	adc $30                                          ; $62c1: $ce $30
	inc b                                            ; $62c3: $04
	call nz, $0830                                   ; $62c4: $c4 $30 $08
	ret z                                            ; $62c7: $c8

	ld l, $04                                        ; $62c8: $2e $04
	call nz, $082e                                   ; $62ca: $c4 $2e $08
	sub a                                            ; $62cd: $97
	adc d                                            ; $62ce: $8a
	jr nc, jr_036_62d9                               ; $62cf: $30 $08

	sub a                                            ; $62d1: $97
	nop                                              ; $62d2: $00
	ret z                                            ; $62d3: $c8

	jr nc, @+$06                                     ; $62d4: $30 $04

	rst JumpTable                                          ; $62d6: $c7
	inc l                                            ; $62d7: $2c
	inc b                                            ; $62d8: $04

jr_036_62d9:
	jp nz, $082c                                     ; $62d9: $c2 $2c $08

	ret z                                            ; $62dc: $c8

	add hl, hl                                       ; $62dd: $29
	inc b                                            ; $62de: $04
	jp nz, $0829                                     ; $62df: $c2 $29 $08

jr_036_62e2:
	sub a                                            ; $62e2: $97
	ld a, d                                          ; $62e3: $7a
	ld l, $08                                        ; $62e4: $2e $08
	sub a                                            ; $62e6: $97
	nop                                              ; $62e7: $00
	call nz, $042e                                   ; $62e8: $c4 $2e $04
	sub a                                            ; $62eb: $97
	ld a, h                                          ; $62ec: $7c
	ld l, $22                                        ; $62ed: $2e $22
	sub a                                            ; $62ef: $97
	nop                                              ; $62f0: $00
	ret z                                            ; $62f1: $c8

	ld l, $1e                                        ; $62f2: $2e $1e
	call nz, $1e2e                                   ; $62f4: $c4 $2e $1e
	nop                                              ; $62f7: $00
	ld [bc], a                                       ; $62f8: $02
	sub a                                            ; $62f9: $97
	ld a, d                                          ; $62fa: $7a
	ld l, $0c                                        ; $62fb: $2e $0c
	sub c                                            ; $62fd: $91
	pop de                                           ; $62fe: $d1
	sub a                                            ; $62ff: $97
	ld a, h                                          ; $6300: $7c
	inc l                                            ; $6301: $2c
	inc c                                            ; $6302: $0c
	sub a                                            ; $6303: $97
	nop                                              ; $6304: $00
	call nz, $0c2c                                   ; $6305: $c4 $2c $0c
	sub a                                            ; $6308: $97
	adc e                                            ; $6309: $8b
	add hl, hl                                       ; $630a: $29
	ld b, $97                                        ; $630b: $06 $97
	nop                                              ; $630d: $00
	call nz, $0629                                   ; $630e: $c4 $29 $06
	sub a                                            ; $6311: $97
	ld a, d                                          ; $6312: $7a
	dec h                                            ; $6313: $25
	inc h                                            ; $6314: $24
	sub a                                            ; $6315: $97
	nop                                              ; $6316: $00
	call nz, $0c25                                   ; $6317: $c4 $25 $0c
	sub a                                            ; $631a: $97
	ld a, e                                          ; $631b: $7b
	dec h                                            ; $631c: $25
	ld b, $27                                        ; $631d: $06 $27
	ld b, $97                                        ; $631f: $06 $97
	ld l, h                                          ; $6321: $6c
	add hl, hl                                       ; $6322: $29
	inc c                                            ; $6323: $0c
	sub a                                            ; $6324: $97
	nop                                              ; $6325: $00
	call nz, $0c29                                   ; $6326: $c4 $29 $0c
	sub a                                            ; $6329: $97
	ld l, h                                          ; $632a: $6c
	ld a, [hl+]                                      ; $632b: $2a
	ld b, $97                                        ; $632c: $06 $97
	nop                                              ; $632e: $00
	call nz, $062a                                   ; $632f: $c4 $2a $06
	sub a                                            ; $6332: $97
	ld l, h                                          ; $6333: $6c
	daa                                              ; $6334: $27
	inc c                                            ; $6335: $0c
	sub a                                            ; $6336: $97
	nop                                              ; $6337: $00
	call nz, $0c27                                   ; $6338: $c4 $27 $0c
	sub a                                            ; $633b: $97
	adc d                                            ; $633c: $8a
	cp [hl]                                          ; $633d: $be
	ld b, $25                                        ; $633e: $06 $25
	nop                                              ; $6340: $00
	dec h                                            ; $6341: $25
	nop                                              ; $6342: $00
	cp [hl]                                          ; $6343: $be
	sub c                                            ; $6344: $91
	pop de                                           ; $6345: $d1
	sub a                                            ; $6346: $97
	adc d                                            ; $6347: $8a
	dec h                                            ; $6348: $25
	jr jr_036_62e2                                   ; $6349: $18 $97

	nop                                              ; $634b: $00
	call z, $0c25                                    ; $634c: $cc $25 $0c
	ld a, [hl]                                       ; $634f: $7e
	dec e                                            ; $6350: $1d
	nop                                              ; $6351: $00
	xor d                                            ; $6352: $aa
	jp z, $0c25                                      ; $6353: $ca $25 $0c

	ret z                                            ; $6356: $c8

	dec h                                            ; $6357: $25
	inc c                                            ; $6358: $0c
	add $25                                          ; $6359: $c6 $25
	inc c                                            ; $635b: $0c
	call nz, $0c25                                   ; $635c: $c4 $25 $0c
	jp nz, $0c25                                     ; $635f: $c2 $25 $0c

	pop bc                                           ; $6362: $c1
	dec h                                            ; $6363: $25
	inc c                                            ; $6364: $0c
	ld a, [hl]                                       ; $6365: $7e
	nop                                              ; $6366: $00
	and b                                            ; $6367: $a0
	push bc                                          ; $6368: $c5
	ld [hl+], a                                      ; $6369: $22
	inc c                                            ; $636a: $0c
	jp $0c22                                         ; $636b: $c3 $22 $0c


	push bc                                          ; $636e: $c5
	ld [hl+], a                                      ; $636f: $22
	inc c                                            ; $6370: $0c
	jp $0c22                                         ; $6371: $c3 $22 $0c


	call nz, $0c22                                   ; $6374: $c4 $22 $0c
	jp nz, $0c22                                     ; $6377: $c2 $22 $0c

	jp $0c22                                         ; $637a: $c3 $22 $0c


	pop bc                                           ; $637d: $c1
	ld [hl+], a                                      ; $637e: $22
	inc c                                            ; $637f: $0c
	cp $ff                                           ; $6380: $fe $ff
	ret nc                                           ; $6382: $d0

	ld b, [hl]                                       ; $6383: $46
	cp $d1                                           ; $6384: $fe $d1
	call nz, $1e7f                                   ; $6386: $c4 $7f $1e
	nop                                              ; $6389: $00
	ld b, $2c                                        ; $638a: $06 $2c
	rrca                                             ; $638c: $0f
	ld a, a                                          ; $638d: $7f
	inc e                                            ; $638e: $1c
	jp nz, $0c14                                     ; $638f: $c2 $14 $0c

	add $14                                          ; $6392: $c6 $14
	inc c                                            ; $6394: $0c
	jp nz, $0c1b                                     ; $6395: $c2 $1b $0c

	call nz, $161b                                   ; $6398: $c4 $1b $16
	add $1b                                          ; $639b: $c6 $1b
	inc d                                            ; $639d: $14
	call nz, $0622                                   ; $639e: $c4 $22 $06
	call nz, $0829                                   ; $63a1: $c4 $29 $08
	add $29                                          ; $63a4: $c6 $29
	inc b                                            ; $63a6: $04
	jp nz, $0c19                                     ; $63a7: $c2 $19 $0c

	add $19                                          ; $63aa: $c6 $19
	inc c                                            ; $63ac: $0c
	jp nz, $0c1e                                     ; $63ad: $c2 $1e $0c

	call nz, $2a1e                                   ; $63b0: $c4 $1e $2a
	call nz, $0620                                   ; $63b3: $c4 $20 $06
	call nz, $0827                                   ; $63b6: $c4 $27 $08
	add $27                                          ; $63b9: $c6 $27
	inc b                                            ; $63bb: $04
	jp nz, $0c18                                     ; $63bc: $c2 $18 $0c

	add $18                                          ; $63bf: $c6 $18
	inc c                                            ; $63c1: $0c
	jp nz, $0c1d                                     ; $63c2: $c2 $1d $0c

	call nz, $2a1d                                   ; $63c5: $c4 $1d $2a
	call nz, $061e                                   ; $63c8: $c4 $1e $06
	call nz, $0825                                   ; $63cb: $c4 $25 $08
	add $25                                          ; $63ce: $c6 $25
	inc b                                            ; $63d0: $04
	call nz, $0c16                                   ; $63d1: $c4 $16 $0c
	add $16                                          ; $63d4: $c6 $16
	ld b, $15                                        ; $63d6: $06 $15
	ld b, $c4                                        ; $63d8: $06 $c4
	jr jr_036_63e8                                   ; $63da: $18 $0c

	add $18                                          ; $63dc: $c6 $18
	ld a, [hl+]                                      ; $63de: $2a
	call nz, $031e                                   ; $63df: $c4 $1e $03
	pop de                                           ; $63e2: $d1
	call nz, $1e7f                                   ; $63e3: $c4 $7f $1e
	inc l                                            ; $63e6: $2c
	rrca                                             ; $63e7: $0f

jr_036_63e8:
	ld a, a                                          ; $63e8: $7f
	inc e                                            ; $63e9: $1c
	jp nz, $0c14                                     ; $63ea: $c2 $14 $0c

	add $14                                          ; $63ed: $c6 $14
	inc c                                            ; $63ef: $0c
	jp nz, $0c1b                                     ; $63f0: $c2 $1b $0c

	call nz, $2a1b                                   ; $63f3: $c4 $1b $2a
	call nz, $0622                                   ; $63f6: $c4 $22 $06
	call nz, $0829                                   ; $63f9: $c4 $29 $08
	add $29                                          ; $63fc: $c6 $29
	inc b                                            ; $63fe: $04
	jp nz, $0c19                                     ; $63ff: $c2 $19 $0c

	add $19                                          ; $6402: $c6 $19
	inc c                                            ; $6404: $0c
	jp nz, $0c1e                                     ; $6405: $c2 $1e $0c

	call nz, $2a1e                                   ; $6408: $c4 $1e $2a
	call nz, $0620                                   ; $640b: $c4 $20 $06
	call nz, $0827                                   ; $640e: $c4 $27 $08
	add $27                                          ; $6411: $c6 $27
	inc b                                            ; $6413: $04
	call nz, $0c18                                   ; $6414: $c4 $18 $0c
	add $18                                          ; $6417: $c6 $18
	inc c                                            ; $6419: $0c
	jp nz, $0c1d                                     ; $641a: $c2 $1d $0c

	call nz, $2a1d                                   ; $641d: $c4 $1d $2a
	call nz, $061e                                   ; $6420: $c4 $1e $06
	pop de                                           ; $6423: $d1
	add $7f                                          ; $6424: $c6 $7f
	inc e                                            ; $6426: $1c
	nop                                              ; $6427: $00
	inc bc                                           ; $6428: $03
	dec h                                            ; $6429: $25
	ld b, $c4                                        ; $642a: $06 $c4
	ld l, $06                                        ; $642c: $2e $06
	add $2e                                          ; $642e: $c6 $2e
	inc bc                                           ; $6430: $03
	nop                                              ; $6431: $00
	dec d                                            ; $6432: $15
	inc h                                            ; $6433: $24
	ld b, $c4                                        ; $6434: $06 $c4
	ld l, $06                                        ; $6436: $2e $06
	add $2e                                          ; $6438: $c6 $2e
	inc bc                                           ; $643a: $03
	nop                                              ; $643b: $00
	ld [de], a                                       ; $643c: $12
	nop                                              ; $643d: $00
	inc c                                            ; $643e: $0c
	call nz, $062c                                   ; $643f: $c4 $2c $06
	add $2c                                          ; $6442: $c6 $2c
	ld b, $c2                                        ; $6444: $06 $c2
	add hl, de                                       ; $6446: $19
	inc c                                            ; $6447: $0c
	add $19                                          ; $6448: $c6 $19
	inc c                                            ; $644a: $0c
	jp nz, $0c20                                     ; $644b: $c2 $20 $0c

	call nz, $0c20                                   ; $644e: $c4 $20 $0c

jr_036_6451:
	add $20                                          ; $6451: $c6 $20
	inc h                                            ; $6453: $24
	dec e                                            ; $6454: $1d
	ld b, $24                                        ; $6455: $06 $24
	ld b, $d1                                        ; $6457: $06 $d1
	call nz, $1c7f                                   ; $6459: $c4 $7f $1c
	daa                                              ; $645c: $27
	ld [$27c6], sp                                   ; $645d: $08 $c6 $27
	inc b                                            ; $6460: $04
	call nz, $0c18                                   ; $6461: $c4 $18 $0c
	add $18                                          ; $6464: $c6 $18
	inc c                                            ; $6466: $0c
	jp nz, $0c22                                     ; $6467: $c2 $22 $0c

	call nz, $2a22                                   ; $646a: $c4 $22 $2a
	call nz, $061e                                   ; $646d: $c4 $1e $06
	call nz, $0825                                   ; $6470: $c4 $25 $08
	add $25                                          ; $6473: $c6 $25
	inc b                                            ; $6475: $04
	call nz, $0c16                                   ; $6476: $c4 $16 $0c
	add $16                                          ; $6479: $c6 $16
	ld b, $15                                        ; $647b: $06 $15
	ld b, $c4                                        ; $647d: $06 $c4
	jr jr_036_648d                                   ; $647f: $18 $0c

	add $18                                          ; $6481: $c6 $18
	inc h                                            ; $6483: $24
	pop de                                           ; $6484: $d1
	call nz, $1e7f                                   ; $6485: $c4 $7f $1e
	add hl, hl                                       ; $6488: $29
	jr jr_036_6451                                   ; $6489: $18 $c6

	add hl, hl                                       ; $648b: $29
	inc c                                            ; $648c: $0c

jr_036_648d:
	call nz, $0c29                                   ; $648d: $c4 $29 $0c
	add $29                                          ; $6490: $c6 $29
	inc c                                            ; $6492: $0c
	call nz, $0c29                                   ; $6493: $c4 $29 $0c
	add $29                                          ; $6496: $c6 $29
	inc c                                            ; $6498: $0c
	call nz, $0c29                                   ; $6499: $c4 $29 $0c
	add $29                                          ; $649c: $c6 $29
	inc c                                            ; $649e: $0c
	call nz, $0c29                                   ; $649f: $c4 $29 $0c
	add $29                                          ; $64a2: $c6 $29
	inc c                                            ; $64a4: $0c
	call nz, $0c29                                   ; $64a5: $c4 $29 $0c
	add $29                                          ; $64a8: $c6 $29
	inc c                                            ; $64aa: $0c
	call nz, $0c29                                   ; $64ab: $c4 $29 $0c
	add $29                                          ; $64ae: $c6 $29
	inc c                                            ; $64b0: $0c
	call nz, $0c29                                   ; $64b1: $c4 $29 $0c
	add $29                                          ; $64b4: $c6 $29
	inc c                                            ; $64b6: $0c
	cp $ff                                           ; $64b7: $fe $ff
	or h                                             ; $64b9: $b4
	add d                                            ; $64ba: $82
	or c                                             ; $64bb: $b1
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	ld [bc], a                                       ; $64be: $02
	dec [hl]                                         ; $64bf: $35
	inc bc                                           ; $64c0: $03
	call nz, $0335                                   ; $64c1: $c4 $35 $03
	swap e                                           ; $64c4: $cb $33
	inc bc                                           ; $64c6: $03
	call nz, $0333                                   ; $64c7: $c4 $33 $03
	swap d                                           ; $64ca: $cb $32
	inc bc                                           ; $64cc: $03
	call nz, $0332                                   ; $64cd: $c4 $32 $03
	swap b                                           ; $64d0: $cb $30
	inc bc                                           ; $64d2: $03
	call nz, $0330                                   ; $64d3: $c4 $30 $03
	sra [hl]                                         ; $64d6: $cb $2e
	inc bc                                           ; $64d8: $03
	call nz, $032e                                   ; $64d9: $c4 $2e $03
	sra l                                            ; $64dc: $cb $2d
	inc bc                                           ; $64de: $03
	call nz, $032d                                   ; $64df: $c4 $2d $03
	sra e                                            ; $64e2: $cb $2b
	inc bc                                           ; $64e4: $03
	call nz, $032b                                   ; $64e5: $c4 $2b $03
	sra c                                            ; $64e8: $cb $29
	inc bc                                           ; $64ea: $03
	call nz, $0129                                   ; $64eb: $c4 $29 $01
	ld [hl], e                                       ; $64ee: $73
	rst JumpTable                                          ; $64ef: $c7
	add hl, hl                                       ; $64f0: $29
	inc bc                                           ; $64f1: $03
	jp nz, $0329                                     ; $64f2: $c2 $29 $03

	rst JumpTable                                          ; $64f5: $c7
	dec hl                                           ; $64f6: $2b
	inc bc                                           ; $64f7: $03
	jp nz, $032b                                     ; $64f8: $c2 $2b $03

	rst JumpTable                                          ; $64fb: $c7
	add hl, hl                                       ; $64fc: $29
	inc bc                                           ; $64fd: $03
	jp nz, $0329                                     ; $64fe: $c2 $29 $03

	rst JumpTable                                          ; $6501: $c7
	dec hl                                           ; $6502: $2b
	inc bc                                           ; $6503: $03
	jp nz, $032b                                     ; $6504: $c2 $2b $03

	rst JumpTable                                          ; $6507: $c7
	add hl, hl                                       ; $6508: $29
	inc bc                                           ; $6509: $03
	jp nz, $0329                                     ; $650a: $c2 $29 $03

	rst JumpTable                                          ; $650d: $c7
	dec hl                                           ; $650e: $2b
	inc bc                                           ; $650f: $03
	jp nz, $032b                                     ; $6510: $c2 $2b $03

	rst JumpTable                                          ; $6513: $c7
	add hl, hl                                       ; $6514: $29
	inc bc                                           ; $6515: $03
	jp nz, $0329                                     ; $6516: $c2 $29 $03

	rst JumpTable                                          ; $6519: $c7
	dec hl                                           ; $651a: $2b
	inc bc                                           ; $651b: $03
	jp nz, $032b                                     ; $651c: $c2 $2b $03

	ld [hl], b                                       ; $651f: $70
	ld a, [hl]                                       ; $6520: $7e
	dec e                                            ; $6521: $1d
	inc c                                            ; $6522: $0c
	and b                                            ; $6523: $a0
	rst JumpTable                                          ; $6524: $c7
	ld l, $18                                        ; $6525: $2e $18
	jp nz, $182e                                     ; $6527: $c2 $2e $18

	rst $38                                          ; $652a: $ff
	or h                                             ; $652b: $b4
	add d                                            ; $652c: $82
	pop hl                                           ; $652d: $e1
	ld [bc], a                                       ; $652e: $02
	ld a, [hl-]                                      ; $652f: $3a
	inc bc                                           ; $6530: $03
	call nz, $033a                                   ; $6531: $c4 $3a $03
	srl b                                            ; $6534: $cb $38
	inc bc                                           ; $6536: $03
	call nz, $0338                                   ; $6537: $c4 $38 $03
	swap a                                           ; $653a: $cb $37
	inc bc                                           ; $653c: $03
	call nz, $0337                                   ; $653d: $c4 $37 $03
	ret                                              ; $6540: $c9


	dec [hl]                                         ; $6541: $35
	inc bc                                           ; $6542: $03
	call nz, $0335                                   ; $6543: $c4 $35 $03
	ret                                              ; $6546: $c9


	inc sp                                           ; $6547: $33
	inc bc                                           ; $6548: $03
	call nz, $0333                                   ; $6549: $c4 $33 $03
	ret z                                            ; $654c: $c8

	ld [hl-], a                                      ; $654d: $32
	inc bc                                           ; $654e: $03
	call nz, $0332                                   ; $654f: $c4 $32 $03
	swap b                                           ; $6552: $cb $30
	inc bc                                           ; $6554: $03
	call nz, $0330                                   ; $6555: $c4 $30 $03
	sra [hl]                                         ; $6558: $cb $2e
	inc bc                                           ; $655a: $03
	call nz, $032e                                   ; $655b: $c4 $2e $03
	ret                                              ; $655e: $c9


	add hl, hl                                       ; $655f: $29
	inc bc                                           ; $6560: $03
	jp $0329                                         ; $6561: $c3 $29 $03


	ret                                              ; $6564: $c9


	dec hl                                           ; $6565: $2b
	inc bc                                           ; $6566: $03
	jp $032b                                         ; $6567: $c3 $2b $03


	ret                                              ; $656a: $c9


	add hl, hl                                       ; $656b: $29
	inc bc                                           ; $656c: $03
	jp $0329                                         ; $656d: $c3 $29 $03


	ret                                              ; $6570: $c9


	dec hl                                           ; $6571: $2b
	inc bc                                           ; $6572: $03

jr_036_6573:
	jp $032b                                         ; $6573: $c3 $2b $03


	ret                                              ; $6576: $c9


	add hl, hl                                       ; $6577: $29
	inc bc                                           ; $6578: $03
	jp $0329                                         ; $6579: $c3 $29 $03


	ret                                              ; $657c: $c9


	dec hl                                           ; $657d: $2b
	inc bc                                           ; $657e: $03
	jp $032b                                         ; $657f: $c3 $2b $03


	ret                                              ; $6582: $c9


	add hl, hl                                       ; $6583: $29
	inc bc                                           ; $6584: $03
	jp $0329                                         ; $6585: $c3 $29 $03


	ret                                              ; $6588: $c9


	dec hl                                           ; $6589: $2b
	inc bc                                           ; $658a: $03
	jp $032b                                         ; $658b: $c3 $2b $03


	ld a, [hl]                                       ; $658e: $7e

jr_036_658f:
	dec e                                            ; $658f: $1d
	inc c                                            ; $6590: $0c
	and b                                            ; $6591: $a0
	call nz, $1829                                   ; $6592: $c4 $29 $18
	jp $1829                                         ; $6595: $c3 $29 $18


	rst $38                                          ; $6598: $ff
	or h                                             ; $6599: $b4
	add d                                            ; $659a: $82
	ld b, e                                          ; $659b: $43
	jr @+$7f                                         ; $659c: $18 $7d

	ld [bc], a                                       ; $659e: $02
	nop                                              ; $659f: $00
	add hl, bc                                       ; $65a0: $09
	ld a, [hl]                                       ; $65a1: $7e
	dec e                                            ; $65a2: $1d
	nop                                              ; $65a3: $00
	and b                                            ; $65a4: $a0
	cp [hl]                                          ; $65a5: $be
	inc bc                                           ; $65a6: $03
	ld a, [hl-]                                      ; $65a7: $3a
	ld a, [hl-]                                      ; $65a8: $3a
	jr c, jr_036_65e3                                ; $65a9: $38 $38

	scf                                              ; $65ab: $37
	scf                                              ; $65ac: $37
	dec [hl]                                         ; $65ad: $35
	dec [hl]                                         ; $65ae: $35
	inc sp                                           ; $65af: $33
	inc sp                                           ; $65b0: $33
	ld [hl-], a                                      ; $65b1: $32
	ld [hl-], a                                      ; $65b2: $32
	jr nc, jr_036_6573                               ; $65b3: $30 $be

	jp nz, Jump_036_7dd1                             ; $65b5: $c2 $d1 $7d

	nop                                              ; $65b8: $00
	ld a, [hl]                                       ; $65b9: $7e
	dec e                                            ; $65ba: $1d
	nop                                              ; $65bb: $00
	and e                                            ; $65bc: $a3
	ld a, [bc]                                       ; $65bd: $0a
	inc h                                            ; $65be: $24
	cp [hl]                                          ; $65bf: $be
	inc bc                                           ; $65c0: $03
	ld de, $1100                                     ; $65c1: $11 $00 $11
	nop                                              ; $65c4: $00
	cp [hl]                                          ; $65c5: $be
	ld d, $18                                        ; $65c6: $16 $18
	add $16                                          ; $65c8: $c6 $16
	jr @+$01                                         ; $65ca: $18 $ff

	ret nc                                           ; $65cc: $d0

	add d                                            ; $65cd: $82
	nop                                              ; $65ce: $00
	jr nc, jr_036_658f                               ; $65cf: $30 $be

	ld b, $20                                        ; $65d1: $06 $20
	ld hl, $2122                                     ; $65d3: $21 $22 $21
	jr nz, jr_036_65f8                               ; $65d6: $20 $20

	jr nz, jr_036_65fa                               ; $65d8: $20 $20

	cp [hl]                                          ; $65da: $be
	rrca                                             ; $65db: $0f
	jr nc, @+$01                                     ; $65dc: $30 $ff

	or h                                             ; $65de: $b4
	ld l, c                                          ; $65df: $69
	ldh a, [c]                                       ; $65e0: $f2
	ld [bc], a                                       ; $65e1: $02
	ld h, d                                          ; $65e2: $62

jr_036_65e3:
	ei                                               ; $65e3: $fb
	db $fc                                           ; $65e4: $fc
	ret z                                            ; $65e5: $c8

	inc l                                            ; $65e6: $2c
	inc b                                            ; $65e7: $04
	call nz, $082c                                   ; $65e8: $c4 $2c $08
	db $fc                                           ; $65eb: $fc
	ld [bc], a                                       ; $65ec: $02
	db $fc                                           ; $65ed: $fc
	add $29                                          ; $65ee: $c6 $29
	inc b                                            ; $65f0: $04
	jp nz, $0829                                     ; $65f1: $c2 $29 $08

	db $fc                                           ; $65f4: $fc
	ld [bc], a                                       ; $65f5: $02
	db $fc                                           ; $65f6: $fc
	rst JumpTable                                          ; $65f7: $c7

jr_036_65f8:
	ld a, [hl+]                                      ; $65f8: $2a
	inc b                                            ; $65f9: $04

jr_036_65fa:
	jp nz, $082a                                     ; $65fa: $c2 $2a $08

	db $fc                                           ; $65fd: $fc
	ld [bc], a                                       ; $65fe: $02
	db $fc                                           ; $65ff: $fc
	ret z                                            ; $6600: $c8

	inc h                                            ; $6601: $24
	inc b                                            ; $6602: $04
	jp nz, $0824                                     ; $6603: $c2 $24 $08

	db $fc                                           ; $6606: $fc
	ld [bc], a                                       ; $6607: $02
	ei                                               ; $6608: $fb
	ld [bc], a                                       ; $6609: $02
	cp $92                                           ; $660a: $fe $92
	ld h, d                                          ; $660c: $62
	db $fd                                           ; $660d: $fd
	ld c, [hl]                                       ; $660e: $4e
	ld h, a                                          ; $660f: $67
	add $1e                                          ; $6610: $c6 $1e
	ld b, $c2                                        ; $6612: $06 $c2
	ld e, $06                                        ; $6614: $1e $06
	add $20                                          ; $6616: $c6 $20
	ld b, $c2                                        ; $6618: $06 $c2
	jr nz, @+$08                                     ; $661a: $20 $06

	add $22                                          ; $661c: $c6 $22
	ld b, $c2                                        ; $661e: $06 $c2
	ld [hl+], a                                      ; $6620: $22
	ld b, $c6                                        ; $6621: $06 $c6
	inc h                                            ; $6623: $24
	ld b, $c2                                        ; $6624: $06 $c2
	inc h                                            ; $6626: $24
	ld b, $00                                        ; $6627: $06 $00
	add hl, bc                                       ; $6629: $09
	ld a, l                                          ; $662a: $7d
	nop                                              ; $662b: $00
	sub c                                            ; $662c: $91
	jp nc, $30ce                                     ; $662d: $d2 $ce $30

	inc bc                                           ; $6630: $03
	inc sp                                           ; $6631: $33
	inc bc                                           ; $6632: $03
	call nz, $0633                                   ; $6633: $c4 $33 $06
	adc $30                                          ; $6636: $ce $30
	inc bc                                           ; $6638: $03
	inc sp                                           ; $6639: $33
	inc bc                                           ; $663a: $03
	call nz, $0a33                                   ; $663b: $c4 $33 $0a
	jp nz, $0b33                                     ; $663e: $c2 $33 $0b

	ld a, l                                          ; $6641: $7d
	nop                                              ; $6642: $00
	sub d                                            ; $6643: $92
	db $fd                                           ; $6644: $fd
	ld c, [hl]                                       ; $6645: $4e
	ld h, a                                          ; $6646: $67
	pop de                                           ; $6647: $d1
	rst JumpTable                                          ; $6648: $c7
	ld e, $06                                        ; $6649: $1e $06
	jp $061e                                         ; $664b: $c3 $1e $06


	rst JumpTable                                          ; $664e: $c7
	jr nz, @+$08                                     ; $664f: $20 $06

	jp $0620                                         ; $6651: $c3 $20 $06


	ret z                                            ; $6654: $c8

	ld [hl+], a                                      ; $6655: $22
	ld b, $24                                        ; $6656: $06 $24
	inc c                                            ; $6658: $0c
	jp $0624                                         ; $6659: $c3 $24 $06


	ret z                                            ; $665c: $c8

	jr nz, @+$08                                     ; $665d: $20 $06

	jp $0620                                         ; $665f: $c3 $20 $06


	nop                                              ; $6662: $00
	inc c                                            ; $6663: $0c
	call nz, Call_036_7e91                           ; $6664: $c4 $91 $7e
	dec e                                            ; $6667: $1d
	ld [$29a0], sp                                   ; $6668: $08 $a0 $29
	inc c                                            ; $666b: $0c
	ld a, [hl+]                                      ; $666c: $2a
	inc c                                            ; $666d: $0c
	ld a, [hl]                                       ; $666e: $7e
	nop                                              ; $666f: $00
	and b                                            ; $6670: $a0
	sub d                                            ; $6671: $92
	pop de                                           ; $6672: $d1
	add $62                                          ; $6673: $c6 $62
	daa                                              ; $6675: $27
	inc c                                            ; $6676: $0c
	inc h                                            ; $6677: $24
	ld b, $25                                        ; $6678: $06 $25
	ld b, $27                                        ; $667a: $06 $27
	ld b, $c2                                        ; $667c: $06 $c2
	daa                                              ; $667e: $27

jr_036_667f:
	ld b, $c6                                        ; $667f: $06 $c6
	inc h                                            ; $6681: $24
	ld b, $c2                                        ; $6682: $06 $c2
	inc h                                            ; $6684: $24
	ld b, $c5                                        ; $6685: $06 $c5
	cp [hl]                                          ; $6687: $be
	ld b, $2a                                        ; $6688: $06 $2a
	ld [hl+], a                                      ; $668a: $22
	add hl, hl                                       ; $668b: $29
	ld [hl+], a                                      ; $668c: $22
	cp [hl]                                          ; $668d: $be
	call nz, $0627                                   ; $668e: $c4 $27 $06
	add $22                                          ; $6691: $c6 $22
	ld b, $26                                        ; $6693: $06 $26
	ld b, $22                                        ; $6695: $06 $22
	ld b, $c8                                        ; $6697: $06 $c8
	ld [hl+], a                                      ; $6699: $22
	ld b, $c2                                        ; $669a: $06 $c2
	ld [hl+], a                                      ; $669c: $22
	ld b, $c8                                        ; $669d: $06 $c8
	ld [hl+], a                                      ; $669f: $22
	ld b, $24                                        ; $66a0: $06 $24
	ld b, $c6                                        ; $66a2: $06 $c6
	dec h                                            ; $66a4: $25
	ld b, $c2                                        ; $66a5: $06 $c2
	dec h                                            ; $66a7: $25
	ld b, $c6                                        ; $66a8: $06 $c6
	ld [hl+], a                                      ; $66aa: $22
	ld b, $c2                                        ; $66ab: $06 $c2
	ld [hl+], a                                      ; $66ad: $22
	ld b, $c4                                        ; $66ae: $06 $c4
	add hl, hl                                       ; $66b0: $29
	ld b, $c6                                        ; $66b1: $06 $c6
	jr nz, @+$08                                     ; $66b3: $20 $06

	call nz, $0627                                   ; $66b5: $c4 $27 $06
	add $be                                          ; $66b8: $c6 $be
	ld b, $20                                        ; $66ba: $06 $20
	ld [hl+], a                                      ; $66bc: $22
	jr nz, jr_036_66e3                               ; $66bd: $20 $24

	jr nz, jr_036_667f                               ; $66bf: $20 $be

	ret                                              ; $66c1: $c9


	jr nz, jr_036_66ca                               ; $66c2: $20 $06

	jp nz, $0620                                     ; $66c4: $c2 $20 $06

	ret                                              ; $66c7: $c9


	jr nz, jr_036_66d0                               ; $66c8: $20 $06

jr_036_66ca:
	ld [hl+], a                                      ; $66ca: $22
	ld b, $c7                                        ; $66cb: $06 $c7
	inc h                                            ; $66cd: $24
	ld b, $c2                                        ; $66ce: $06 $c2

jr_036_66d0:
	inc h                                            ; $66d0: $24
	ld b, $c9                                        ; $66d1: $06 $c9
	jr nz, @+$08                                     ; $66d3: $20 $06

	jp nz, $0620                                     ; $66d5: $c2 $20 $06

	push bc                                          ; $66d8: $c5
	daa                                              ; $66d9: $27
	ld b, $c7                                        ; $66da: $06 $c7
	dec e                                            ; $66dc: $1d
	ld b, $c5                                        ; $66dd: $06 $c5
	dec h                                            ; $66df: $25
	ld b, $c7                                        ; $66e0: $06 $c7
	dec e                                            ; $66e2: $1d

jr_036_66e3:
	ld b, $c8                                        ; $66e3: $06 $c8
	cp [hl]                                          ; $66e5: $be
	ld b, $24                                        ; $66e6: $06 $24
	dec e                                            ; $66e8: $1d
	ld [hl+], a                                      ; $66e9: $22
	dec e                                            ; $66ea: $1d
	cp [hl]                                          ; $66eb: $be
	nop                                              ; $66ec: $00
	ld b, $c5                                        ; $66ed: $06 $c5
	cp [hl]                                          ; $66ef: $be
	ld b, $2c                                        ; $66f0: $06 $2c
	ld a, [hl+]                                      ; $66f2: $2a
	inc l                                            ; $66f3: $2c
	add hl, hl                                       ; $66f4: $29
	inc l                                            ; $66f5: $2c
	daa                                              ; $66f6: $27
	inc l                                            ; $66f7: $2c
	dec h                                            ; $66f8: $25
	inc l                                            ; $66f9: $2c
	inc h                                            ; $66fa: $24
	inc l                                            ; $66fb: $2c
	ld [hl+], a                                      ; $66fc: $22
	inc l                                            ; $66fd: $2c
	jr nz, jr_036_672c                               ; $66fe: $20 $2c

	cp [hl]                                          ; $6700: $be
	or l                                             ; $6701: $b5
	and c                                            ; $6702: $a1
	nop                                              ; $6703: $00
	inc h                                            ; $6704: $24
	rlca                                             ; $6705: $07
	inc h                                            ; $6706: $24
	inc h                                            ; $6707: $24
	cp [hl]                                          ; $6708: $be
	inc c                                            ; $6709: $0c
	inc h                                            ; $670a: $24
	ld [hl+], a                                      ; $670b: $22
	dec e                                            ; $670c: $1d
	ld e, $20                                        ; $670d: $1e $20
	cp [hl]                                          ; $670f: $be
	jr nz, jr_036_6736                               ; $6710: $20 $24

	ld e, $06                                        ; $6712: $1e $06
	dec e                                            ; $6714: $1d
	ld b, $96                                        ; $6715: $06 $96
	jr nc, jr_036_6720                               ; $6717: $30 $07

	dec de                                           ; $6719: $1b
	jr nc, jr_036_6735                               ; $671a: $30 $19

	jr jr_036_673b                                   ; $671c: $18 $1d

	jr @+$22                                         ; $671e: $18 $20

jr_036_6720:
	jr jr_036_67a0                                   ; $6720: $18 $7e

	dec e                                            ; $6722: $1d
	ld [$1fa0], sp                                   ; $6723: $08 $a0 $1f
	inc c                                            ; $6726: $0c
	jr nz, jr_036_6735                               ; $6727: $20 $0c

	ret z                                            ; $6729: $c8

	ld a, [hl]                                       ; $672a: $7e
	dec e                                            ; $672b: $1d

jr_036_672c:
	dec l                                            ; $672c: $2d
	xor e                                            ; $672d: $ab
	daa                                              ; $672e: $27
	add hl, sp                                       ; $672f: $39
	ld a, [hl]                                       ; $6730: $7e
	nop                                              ; $6731: $00
	xor c                                            ; $6732: $a9
	ld a, l                                          ; $6733: $7d
	nop                                              ; $6734: $00

jr_036_6735:
	sub c                                            ; $6735: $91

jr_036_6736:
	pop de                                           ; $6736: $d1
	jp z, $0330                                      ; $6737: $ca $30 $03

	inc sp                                           ; $673a: $33

jr_036_673b:
	inc bc                                           ; $673b: $03
	call nz, $0633                                   ; $673c: $c4 $33 $06
	jp z, $0330                                      ; $673f: $ca $30 $03

	inc sp                                           ; $6742: $33
	inc bc                                           ; $6743: $03
	call nz, $0933                                   ; $6744: $c4 $33 $09
	jp nz, $0c33                                     ; $6747: $c2 $33 $0c

	ld a, l                                          ; $674a: $7d
	nop                                              ; $674b: $00
	cp $ff                                           ; $674c: $fe $ff
	pop de                                           ; $674e: $d1
	add $20                                          ; $674f: $c6 $20
	ld b, $c2                                        ; $6751: $06 $c2
	jr nz, jr_036_675b                               ; $6753: $20 $06

	add $20                                          ; $6755: $c6 $20
	ld b, $c2                                        ; $6757: $06 $c2
	jr nz, jr_036_6761                               ; $6759: $20 $06

jr_036_675b:
	add $1e                                          ; $675b: $c6 $1e
	ld b, $c2                                        ; $675d: $06 $c2
	ld e, $06                                        ; $675f: $1e $06

jr_036_6761:
	add $1d                                          ; $6761: $c6 $1d
	ld b, $c2                                        ; $6763: $06 $c2
	dec e                                            ; $6765: $1d
	ld b, $c6                                        ; $6766: $06 $c6
	ld e, $0c                                        ; $6768: $1e $0c
	jp nz, $061e                                     ; $676a: $c2 $1e $06

	add $1d                                          ; $676d: $c6 $1d
	ld b, $1b                                        ; $676f: $06 $1b
	inc c                                            ; $6771: $0c
	jp nz, $0c1b                                     ; $6772: $c2 $1b $0c

	add $16                                          ; $6775: $c6 $16
	ld b, $c3                                        ; $6777: $06 $c3
	ld d, $06                                        ; $6779: $16 $06
	ret z                                            ; $677b: $c8

	jr nz, jr_036_6784                               ; $677c: $20 $06

	jp $0620                                         ; $677e: $c3 $20 $06


	ret z                                            ; $6781: $c8

	ld e, $06                                        ; $6782: $1e $06

jr_036_6784:
	jp $061e                                         ; $6784: $c3 $1e $06


	ret z                                            ; $6787: $c8

	dec e                                            ; $6788: $1d
	ld b, $c3                                        ; $6789: $06 $c3
	dec e                                            ; $678b: $1d
	ld b, $c8                                        ; $678c: $06 $c8
	ld e, $0c                                        ; $678e: $1e $0c
	jp $061e                                         ; $6790: $c3 $1e $06


	rst JumpTable                                          ; $6793: $c7
	jr nz, jr_036_679c                               ; $6794: $20 $06

	add $22                                          ; $6796: $c6 $22
	inc c                                            ; $6798: $0c
	jp $0c22                                         ; $6799: $c3 $22 $0c


jr_036_679c:
	ret z                                            ; $679c: $c8

	add hl, de                                       ; $679d: $19
	ld b, $c3                                        ; $679e: $06 $c3

jr_036_67a0:
	add hl, de                                       ; $67a0: $19
	ld b, $c8                                        ; $67a1: $06 $c8
	jr nz, jr_036_67ab                               ; $67a3: $20 $06

	jp $0620                                         ; $67a5: $c3 $20 $06


	ret z                                            ; $67a8: $c8

	ld e, $06                                        ; $67a9: $1e $06

jr_036_67ab:
	jp $061e                                         ; $67ab: $c3 $1e $06


	ret z                                            ; $67ae: $c8

	dec e                                            ; $67af: $1d
	ld b, $c3                                        ; $67b0: $06 $c3
	dec e                                            ; $67b2: $1d
	ld b, $c8                                        ; $67b3: $06 $c8
	dec de                                           ; $67b5: $1b
	inc c                                            ; $67b6: $0c
	jp $061b                                         ; $67b7: $c3 $1b $06


	ret z                                            ; $67ba: $c8

	add hl, de                                       ; $67bb: $19
	ld b, $c6                                        ; $67bc: $06 $c6
	jr nz, @+$0e                                     ; $67be: $20 $0c

	jp $0c20                                         ; $67c0: $c3 $20 $0c


	db $fd                                           ; $67c3: $fd
	or h                                             ; $67c4: $b4
	ld l, c                                          ; $67c5: $69
	pop af                                           ; $67c6: $f1
	ld [bc], a                                       ; $67c7: $02
	ld h, d                                          ; $67c8: $62
	ei                                               ; $67c9: $fb
	db $fc                                           ; $67ca: $fc
	call z, $0435                                    ; $67cb: $cc $35 $04
	call nz, $0835                                   ; $67ce: $c4 $35 $08
	db $fc                                           ; $67d1: $fc
	ld [bc], a                                       ; $67d2: $02
	db $fc                                           ; $67d3: $fc
	call nz, $0431                                   ; $67d4: $c4 $31 $04
	pop bc                                           ; $67d7: $c1
	ld sp, $fc08                                     ; $67d8: $31 $08 $fc
	ld [bc], a                                       ; $67db: $02
	db $fc                                           ; $67dc: $fc
	swap e                                           ; $67dd: $cb $33
	inc b                                            ; $67df: $04
	call nz, $0833                                   ; $67e0: $c4 $33 $08
	db $fc                                           ; $67e3: $fc
	ld [bc], a                                       ; $67e4: $02
	db $fc                                           ; $67e5: $fc
	rst JumpTable                                          ; $67e6: $c7
	inc l                                            ; $67e7: $2c
	inc b                                            ; $67e8: $04
	jp nz, $082c                                     ; $67e9: $c2 $2c $08

	db $fc                                           ; $67ec: $fc
	ld [bc], a                                       ; $67ed: $02
	ei                                               ; $67ee: $fb
	ld [bc], a                                       ; $67ef: $02
	cp $d1                                           ; $67f0: $fe $d1
	sub d                                            ; $67f2: $92
	ld h, d                                          ; $67f3: $62
	db $fd                                           ; $67f4: $fd
	dec d                                            ; $67f5: $15
	ld l, c                                          ; $67f6: $69
	ret z                                            ; $67f7: $c8

	ld a, [hl+]                                      ; $67f8: $2a
	ld b, $c3                                        ; $67f9: $06 $c3
	ld a, [hl+]                                      ; $67fb: $2a
	ld b, $c8                                        ; $67fc: $06 $c8
	add hl, hl                                       ; $67fe: $29
	ld b, $c4                                        ; $67ff: $06 $c4
	add hl, hl                                       ; $6801: $29
	ld b, $ce                                        ; $6802: $06 $ce
	dec h                                            ; $6804: $25
	ld b, $c4                                        ; $6805: $06 $c4

jr_036_6807:
	dec h                                            ; $6807: $25
	ld b, $c9                                        ; $6808: $06 $c9
	daa                                              ; $680a: $27
	ld b, $c4                                        ; $680b: $06 $c4
	daa                                              ; $680d: $27
	inc c                                            ; $680e: $0c
	nop                                              ; $680f: $00
	inc bc                                           ; $6810: $03
	ld a, l                                          ; $6811: $7d
	ld bc, $d391                                     ; $6812: $01 $91 $d3
	ret z                                            ; $6815: $c8

	inc sp                                           ; $6816: $33
	inc bc                                           ; $6817: $03
	jr c, jr_036_681d                                ; $6818: $38 $03

	call nz, $0638                                   ; $681a: $c4 $38 $06

jr_036_681d:
	ret z                                            ; $681d: $c8

	inc sp                                           ; $681e: $33
	inc bc                                           ; $681f: $03
	jr c, jr_036_6825                                ; $6820: $38 $03

	call nz, $0a38                                   ; $6822: $c4 $38 $0a

jr_036_6825:
	jp nz, $0b38                                     ; $6825: $c2 $38 $0b

	ld a, l                                          ; $6828: $7d
	nop                                              ; $6829: $00
	pop de                                           ; $682a: $d1
	sub d                                            ; $682b: $92
	db $fd                                           ; $682c: $fd
	dec d                                            ; $682d: $15
	ld l, c                                          ; $682e: $69
	ret z                                            ; $682f: $c8

	ld a, [hl+]                                      ; $6830: $2a
	ld b, $c3                                        ; $6831: $06 $c3
	ld a, [hl+]                                      ; $6833: $2a
	ld b, $c8                                        ; $6834: $06 $c8
	add hl, hl                                       ; $6836: $29
	ld b, $c4                                        ; $6837: $06 $c4
	add hl, hl                                       ; $6839: $29
	ld b, $ce                                        ; $683a: $06 $ce
	dec h                                            ; $683c: $25
	ld b, $c9                                        ; $683d: $06 $c9
	daa                                              ; $683f: $27
	inc c                                            ; $6840: $0c
	jp $0627                                         ; $6841: $c3 $27 $06


	adc $25                                          ; $6844: $ce $25
	ld b, $c4                                        ; $6846: $06 $c4
	dec h                                            ; $6848: $25

jr_036_6849:
	ld [de], a                                       ; $6849: $12
	sub c                                            ; $684a: $91
	sub a                                            ; $684b: $97
	ld a, h                                          ; $684c: $7c
	ld a, [hl]                                       ; $684d: $7e
	dec e                                            ; $684e: $1d
	ld [$2ca0], sp                                   ; $684f: $08 $a0 $2c
	inc c                                            ; $6852: $0c
	ld l, $0c                                        ; $6853: $2e $0c
	sub c                                            ; $6855: $91
	sub a                                            ; $6856: $97
	ld a, a                                          ; $6857: $7f
	ld h, d                                          ; $6858: $62
	ld a, [hl]                                       ; $6859: $7e
	dec e                                            ; $685a: $1d
	jr jr_036_6807                                   ; $685b: $18 $aa

	inc l                                            ; $685d: $2c
	inc h                                            ; $685e: $24
	sub a                                            ; $685f: $97
	ld a, h                                          ; $6860: $7c
	ld a, [hl]                                       ; $6861: $7e
	dec e                                            ; $6862: $1d
	ld [$bea9], sp                                   ; $6863: $08 $a9 $be
	inc c                                            ; $6866: $0c
	add hl, hl                                       ; $6867: $29
	ld l, $2c                                        ; $6868: $2e $2c
	ld a, [hl+]                                      ; $686a: $2a
	add hl, hl                                       ; $686b: $29
	cp [hl]                                          ; $686c: $be
	sub a                                            ; $686d: $97
	ld a, a                                          ; $686e: $7f
	ld a, [hl]                                       ; $686f: $7e
	dec e                                            ; $6870: $1d
	ld [de], a                                       ; $6871: $12
	xor d                                            ; $6872: $aa
	ld a, [hl+]                                      ; $6873: $2a
	inc h                                            ; $6874: $24
	sub a                                            ; $6875: $97
	ld a, h                                          ; $6876: $7c
	ld a, [hl]                                       ; $6877: $7e
	dec e                                            ; $6878: $1d
	ld [$bea9], sp                                   ; $6879: $08 $a9 $be
	inc c                                            ; $687c: $0c
	daa                                              ; $687d: $27
	inc l                                            ; $687e: $2c
	ld a, [hl+]                                      ; $687f: $2a
	dec h                                            ; $6880: $25
	daa                                              ; $6881: $27
	cp [hl]                                          ; $6882: $be
	sub a                                            ; $6883: $97
	ld l, [hl]                                       ; $6884: $6e
	ld a, [hl]                                       ; $6885: $7e
	dec e                                            ; $6886: $1d
	ld [de], a                                       ; $6887: $12
	xor d                                            ; $6888: $aa
	add hl, hl                                       ; $6889: $29
	inc h                                            ; $688a: $24
	sub a                                            ; $688b: $97
	ld l, h                                          ; $688c: $6c
	ld a, [hl]                                       ; $688d: $7e
	dec e                                            ; $688e: $1d
	ld [$bea9], sp                                   ; $688f: $08 $a9 $be
	inc c                                            ; $6892: $0c
	dec h                                            ; $6893: $25
	ld a, [hl+]                                      ; $6894: $2a
	add hl, hl                                       ; $6895: $29
	daa                                              ; $6896: $27
	dec h                                            ; $6897: $25
	cp [hl]                                          ; $6898: $be
	sub a                                            ; $6899: $97
	ld l, a                                          ; $689a: $6f
	ld a, [hl]                                       ; $689b: $7e
	dec e                                            ; $689c: $1d
	jr z, jr_036_6849                                ; $689d: $28 $aa

	daa                                              ; $689f: $27
	inc h                                            ; $68a0: $24
	sub a                                            ; $68a1: $97
	nop                                              ; $68a2: $00
	ld a, [hl]                                       ; $68a3: $7e
	dec e                                            ; $68a4: $1d
	nop                                              ; $68a5: $00
	xor c                                            ; $68a6: $a9
	ret z                                            ; $68a7: $c8

	daa                                              ; $68a8: $27
	inc h                                            ; $68a9: $24
	sub a                                            ; $68aa: $97
	ld a, h                                          ; $68ab: $7c
	ld a, [hl]                                       ; $68ac: $7e
	dec e                                            ; $68ad: $1d
	ld [$2ca9], sp                                   ; $68ae: $08 $a9 $2c
	inc c                                            ; $68b1: $0c
	ld l, $0c                                        ; $68b2: $2e $0c
	sub a                                            ; $68b4: $97
	ld a, a                                          ; $68b5: $7f
	ld a, [hl]                                       ; $68b6: $7e
	dec e                                            ; $68b7: $1d
	ld [de], a                                       ; $68b8: $12
	xor d                                            ; $68b9: $aa
	inc l                                            ; $68ba: $2c
	inc h                                            ; $68bb: $24
	sub a                                            ; $68bc: $97
	ld a, h                                          ; $68bd: $7c
	ld a, [hl]                                       ; $68be: $7e
	dec e                                            ; $68bf: $1d
	ld [$29a9], sp                                   ; $68c0: $08 $a9 $29
	inc c                                            ; $68c3: $0c
	ld l, $0c                                        ; $68c4: $2e $0c
	inc l                                            ; $68c6: $2c
	inc c                                            ; $68c7: $0c
	sub a                                            ; $68c8: $97
	ld l, h                                          ; $68c9: $6c
	ld sp, $2e0c                                     ; $68ca: $31 $0c $2e
	inc c                                            ; $68cd: $0c
	sub a                                            ; $68ce: $97
	ld a, a                                          ; $68cf: $7f
	ld a, [hl]                                       ; $68d0: $7e
	dec e                                            ; $68d1: $1d
	inc c                                            ; $68d2: $0c
	xor d                                            ; $68d3: $aa
	inc l                                            ; $68d4: $2c
	jr jr_036_6901                                   ; $68d5: $18 $2a

	jr jr_036_68fe                                   ; $68d7: $18 $25

	inc h                                            ; $68d9: $24
	daa                                              ; $68da: $27
	inc c                                            ; $68db: $0c
	add hl, hl                                       ; $68dc: $29
	jr jr_036_690b                                   ; $68dd: $18 $2c

	jr jr_036_6911                                   ; $68df: $18 $30

	jr @-$67                                         ; $68e1: $18 $97

	ld l, h                                          ; $68e3: $6c
	ld a, [hl]                                       ; $68e4: $7e
	dec e                                            ; $68e5: $1d
	ld [$2eaa], sp                                   ; $68e6: $08 $aa $2e
	inc c                                            ; $68e9: $0c
	jr nc, jr_036_68f8                               ; $68ea: $30 $0c

	ld a, [hl]                                       ; $68ec: $7e
	nop                                              ; $68ed: $00
	and b                                            ; $68ee: $a0
	sub a                                            ; $68ef: $97
	nop                                              ; $68f0: $00
	or c                                             ; $68f1: $b1
	ld b, c                                          ; $68f2: $41
	ld a, [bc]                                       ; $68f3: $0a
	rlca                                             ; $68f4: $07
	jr c, jr_036_6930                                ; $68f5: $38 $39

	sub [hl]                                         ; $68f7: $96

jr_036_68f8:
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	ld a, l                                          ; $68fa: $7d
	ld bc, $d391                                     ; $68fb: $01 $91 $d3

jr_036_68fe:
	jp z, $0333                                      ; $68fe: $ca $33 $03

jr_036_6901:
	jr c, jr_036_6906                                ; $6901: $38 $03

	call nz, $0638                                   ; $6903: $c4 $38 $06

jr_036_6906:
	jp z, $0333                                      ; $6906: $ca $33 $03

	jr c, jr_036_690e                                ; $6909: $38 $03

jr_036_690b:
	call nz, $0938                                   ; $690b: $c4 $38 $09

jr_036_690e:
	jp nz, $0c38                                     ; $690e: $c2 $38 $0c

jr_036_6911:
	ld a, l                                          ; $6911: $7d
	nop                                              ; $6912: $00
	cp $ff                                           ; $6913: $fe $ff
	pop de                                           ; $6915: $d1
	ret                                              ; $6916: $c9


	add hl, hl                                       ; $6917: $29
	ld b, $c3                                        ; $6918: $06 $c3
	add hl, hl                                       ; $691a: $29
	ld [de], a                                       ; $691b: $12

jr_036_691c:
	call $0625                                       ; $691c: $cd $25 $06
	call nz, $1225                                   ; $691f: $c4 $25 $12
	sla a                                            ; $6922: $cb $27
	ld b, $c3                                        ; $6924: $06 $c3
	daa                                              ; $6926: $27
	inc c                                            ; $6927: $0c
	call $0625                                       ; $6928: $cd $25 $06
	adc $24                                          ; $692b: $ce $24
	ld b, $c4                                        ; $692d: $06 $c4
	inc h                                            ; $692f: $24

jr_036_6930:
	ld [de], a                                       ; $6930: $12
	adc $25                                          ; $6931: $ce $25
	ld b, $c4                                        ; $6933: $06 $c4
	dec h                                            ; $6935: $25
	ld b, $ce                                        ; $6936: $06 $ce
	inc h                                            ; $6938: $24
	ld b, $c4                                        ; $6939: $06 $c4
	inc h                                            ; $693b: $24
	ld b, $ce                                        ; $693c: $06 $ce
	dec h                                            ; $693e: $25
	ld b, $c9                                        ; $693f: $06 $c9
	daa                                              ; $6941: $27
	ld b, $c3                                        ; $6942: $06 $c3
	daa                                              ; $6944: $27
	ld b, $cf                                        ; $6945: $06 $cf
	inc hl                                           ; $6947: $23
	ld b, $c4                                        ; $6948: $06 $c4
	inc hl                                           ; $694a: $23
	jr jr_036_691c                                   ; $694b: $18 $cf

	nop                                              ; $694d: $00
	inc c                                            ; $694e: $0c
	jr nz, @+$08                                     ; $694f: $20 $06

	call nz, $0620                                   ; $6951: $c4 $20 $06
	rst GetHLinHL                                          ; $6954: $cf
	ld [hl+], a                                      ; $6955: $22
	ld b, $c4                                        ; $6956: $06 $c4
	ld [hl+], a                                      ; $6958: $22
	ld [de], a                                       ; $6959: $12
	nop                                              ; $695a: $00
	inc c                                            ; $695b: $0c
	rst GetHLinHL                                          ; $695c: $cf
	ld [hl+], a                                      ; $695d: $22
	ld b, $c4                                        ; $695e: $06 $c4
	ld [hl+], a                                      ; $6960: $22
	ld b, $ce                                        ; $6961: $06 $ce
	jr nz, jr_036_696b                               ; $6963: $20 $06

	call nz, $1220                                   ; $6965: $c4 $20 $12
	call z, $0625                                    ; $6968: $cc $25 $06

jr_036_696b:
	call nz, $1225                                   ; $696b: $c4 $25 $12
	db $fd                                           ; $696e: $fd
	or h                                             ; $696f: $b4
	ld l, c                                          ; $6970: $69
	di                                               ; $6971: $f3
	jr jr_036_69d6                                   ; $6972: $18 $62

	ld a, l                                          ; $6974: $7d
	ld bc, $0300                                     ; $6975: $01 $00 $03
	ei                                               ; $6978: $fb
	call nz, $0435                                   ; $6979: $c4 $35 $04
	add $35                                          ; $697c: $c6 $35
	ld [$02fb], sp                                   ; $697e: $08 $fb $02
	ei                                               ; $6981: $fb
	call nz, $0431                                   ; $6982: $c4 $31 $04
	add $31                                          ; $6985: $c6 $31
	ld [$02fb], sp                                   ; $6987: $08 $fb $02
	ei                                               ; $698a: $fb
	call nz, $0433                                   ; $698b: $c4 $33 $04
	add $33                                          ; $698e: $c6 $33
	ld [$02fb], sp                                   ; $6990: $08 $fb $02
	ei                                               ; $6993: $fb
	call nz, $042c                                   ; $6994: $c4 $2c $04
	add $2c                                          ; $6997: $c6 $2c
	ld [$02fb], sp                                   ; $6999: $08 $fb $02
	ei                                               ; $699c: $fb
	call nz, $0435                                   ; $699d: $c4 $35 $04
	add $35                                          ; $69a0: $c6 $35
	ld [$02fb], sp                                   ; $69a2: $08 $fb $02
	ei                                               ; $69a5: $fb
	call nz, $0431                                   ; $69a6: $c4 $31 $04
	add $31                                          ; $69a9: $c6 $31
	ld [$02fb], sp                                   ; $69ab: $08 $fb $02
	ei                                               ; $69ae: $fb
	call nz, $0433                                   ; $69af: $c4 $33 $04
	add $33                                          ; $69b2: $c6 $33
	ld [$02fb], sp                                   ; $69b4: $08 $fb $02
	call nz, $042c                                   ; $69b7: $c4 $2c $04
	add $2c                                          ; $69ba: $c6 $2c
	ld [$2cc4], sp                                   ; $69bc: $08 $c4 $2c
	inc b                                            ; $69bf: $04
	add $2c                                          ; $69c0: $c6 $2c
	dec b                                            ; $69c2: $05
	cp $d1                                           ; $69c3: $fe $d1
	ld a, a                                          ; $69c5: $7f
	rra                                              ; $69c6: $1f
	ld h, d                                          ; $69c7: $62
	db $fd                                           ; $69c8: $fd
	adc c                                            ; $69c9: $89
	ld l, d                                          ; $69ca: $6a
	pop de                                           ; $69cb: $d1
	jp nz, $060f                                     ; $69cc: $c2 $0f $06

	add $0f                                          ; $69cf: $c6 $0f
	ld b, $7f                                        ; $69d1: $06 $7f
	ld hl, $11c2                                     ; $69d3: $21 $c2 $11

jr_036_69d6:
	ld b, $c6                                        ; $69d6: $06 $c6
	ld de, $c206                                     ; $69d8: $11 $06 $c2
	ld [de], a                                       ; $69db: $12
	ld b, $c6                                        ; $69dc: $06 $c6
	ld [de], a                                       ; $69de: $12
	ld b, $c2                                        ; $69df: $06 $c2
	inc d                                            ; $69e1: $14
	ld b, $c6                                        ; $69e2: $06 $c6
	inc d                                            ; $69e4: $14
	ld b, $7f                                        ; $69e5: $06 $7f
	rra                                              ; $69e7: $1f

jr_036_69e8:
	nop                                              ; $69e8: $00
	jr nc, jr_036_69e8                               ; $69e9: $30 $fd

	adc c                                            ; $69eb: $89
	ld l, d                                          ; $69ec: $6a
	pop de                                           ; $69ed: $d1
	jp nz, $060f                                     ; $69ee: $c2 $0f $06

	add $0f                                          ; $69f1: $c6 $0f
	ld b, $7f                                        ; $69f3: $06 $7f
	ld hl, $11c2                                     ; $69f5: $21 $c2 $11
	ld b, $c6                                        ; $69f8: $06 $c6
	ld de, $c206                                     ; $69fa: $11 $06 $c2
	ld [de], a                                       ; $69fd: $12
	ld b, $14                                        ; $69fe: $06 $14
	inc c                                            ; $6a00: $0c
	add $14                                          ; $6a01: $c6 $14
	ld b, $7f                                        ; $6a03: $06 $7f
	rra                                              ; $6a05: $1f
	jp nz, $060d                                     ; $6a06: $c2 $0d $06

	add $0d                                          ; $6a09: $c6 $0d
	ld b, $00                                        ; $6a0b: $06 $00
	inc h                                            ; $6a0d: $24
	pop de                                           ; $6a0e: $d1
	jp nz, $1f7f                                     ; $6a0f: $c2 $7f $1f

	ld h, d                                          ; $6a12: $62
	ld [$0028], sp                                   ; $6a13: $08 $28 $00
	ld [bc], a                                       ; $6a16: $02
	dec b                                            ; $6a17: $05
	ld b, $0a                                        ; $6a18: $06 $0a
	ld b, $00                                        ; $6a1a: $06 $00
	ld b, $0a                                        ; $6a1c: $06 $0a
	jr jr_036_6a25                                   ; $6a1e: $18 $05

	inc c                                            ; $6a20: $0c
	rrca                                             ; $6a21: $0f
	jr z, jr_036_6a24                                ; $6a22: $28 $00

jr_036_6a24:
	ld [bc], a                                       ; $6a24: $02

jr_036_6a25:
	ld a, [bc]                                       ; $6a25: $0a
	ld b, $08                                        ; $6a26: $06 $08
	ld b, $00                                        ; $6a28: $06 $00
	ld b, $08                                        ; $6a2a: $06 $08
	jr jr_036_6a3d                                   ; $6a2c: $18 $0f

	inc c                                            ; $6a2e: $0c
	dec c                                            ; $6a2f: $0d
	jr z, jr_036_6a32                                ; $6a30: $28 $00

jr_036_6a32:
	ld [bc], a                                       ; $6a32: $02
	ld [$0a06], sp                                   ; $6a33: $08 $06 $0a
	ld b, $00                                        ; $6a36: $06 $00
	ld b, $0a                                        ; $6a38: $06 $0a
	jr jr_036_6a41                                   ; $6a3a: $18 $05

	inc c                                            ; $6a3c: $0c

jr_036_6a3d:
	ld [$0028], sp                                   ; $6a3d: $08 $28 $00
	ld [bc], a                                       ; $6a40: $02

jr_036_6a41:
	rrca                                             ; $6a41: $0f
	ld b, $08                                        ; $6a42: $06 $08
	ld b, $00                                        ; $6a44: $06 $00
	ld b, $08                                        ; $6a46: $06 $08
	jr jr_036_6a59                                   ; $6a48: $18 $0f

	inc c                                            ; $6a4a: $0c
	ld [$0028], sp                                   ; $6a4b: $08 $28 $00
	ld [bc], a                                       ; $6a4e: $02
	rrca                                             ; $6a4f: $0f
	ld b, $0a                                        ; $6a50: $06 $0a
	ld b, $00                                        ; $6a52: $06 $00
	ld b, $0a                                        ; $6a54: $06 $0a
	jr jr_036_6a5d                                   ; $6a56: $18 $05

	inc c                                            ; $6a58: $0c

jr_036_6a59:
	rrca                                             ; $6a59: $0f
	jr z, jr_036_6a5c                                ; $6a5a: $28 $00

jr_036_6a5c:
	ld [bc], a                                       ; $6a5c: $02

jr_036_6a5d:
	ld a, [bc]                                       ; $6a5d: $0a
	ld b, $08                                        ; $6a5e: $06 $08
	ld b, $00                                        ; $6a60: $06 $00
	ld b, $08                                        ; $6a62: $06 $08
	jr jr_036_6a75                                   ; $6a64: $18 $0f

	inc c                                            ; $6a66: $0c
	dec c                                            ; $6a67: $0d
	jr z, jr_036_6a6a                                ; $6a68: $28 $00

jr_036_6a6a:
	ld [bc], a                                       ; $6a6a: $02
	ld [$0f06], sp                                   ; $6a6b: $08 $06 $0f
	ld b, $00                                        ; $6a6e: $06 $00
	ld b, $0f                                        ; $6a70: $06 $0f
	jr @+$0c                                         ; $6a72: $18 $0a

	inc c                                            ; $6a74: $0c

jr_036_6a75:
	ld [$7f0c], sp                                   ; $6a75: $08 $0c $7f
	ld hl, $0c14                                     ; $6a78: $21 $14 $0c
	ld a, a                                          ; $6a7b: $7f
	rra                                              ; $6a7c: $1f
	ld [$7f0c], sp                                   ; $6a7d: $08 $0c $7f
	ld hl, $0c14                                     ; $6a80: $21 $14 $0c
	ld a, a                                          ; $6a83: $7f
	rra                                              ; $6a84: $1f
	nop                                              ; $6a85: $00

jr_036_6a86:
	jr nc, jr_036_6a86                               ; $6a86: $30 $fe

	rst $38                                          ; $6a88: $ff
	pop de                                           ; $6a89: $d1
	jp nz, $060d                                     ; $6a8a: $c2 $0d $06

	add $0d                                          ; $6a8d: $c6 $0d
	ld b, $d2                                        ; $6a8f: $06 $d2
	jp nz, $0619                                     ; $6a91: $c2 $19 $06

	add $19                                          ; $6a94: $c6 $19
	ld b, $d1                                        ; $6a96: $06 $d1
	jp nz, $060d                                     ; $6a98: $c2 $0d $06

	add $0d                                          ; $6a9b: $c6 $0d
	ld b, $d3                                        ; $6a9d: $06 $d3
	jp nz, $0619                                     ; $6a9f: $c2 $19 $06

	add $19                                          ; $6aa2: $c6 $19
	ld b, $d1                                        ; $6aa4: $06 $d1
	jp nz, $0609                                     ; $6aa6: $c2 $09 $06

	add $09                                          ; $6aa9: $c6 $09
	ld b, $d2                                        ; $6aab: $06 $d2
	jp nz, $0615                                     ; $6aad: $c2 $15 $06

	add $15                                          ; $6ab0: $c6 $15
	ld b, $d1                                        ; $6ab2: $06 $d1
	jp nz, $0609                                     ; $6ab4: $c2 $09 $06

	add $09                                          ; $6ab7: $c6 $09
	ld b, $d3                                        ; $6ab9: $06 $d3
	jp nz, $0615                                     ; $6abb: $c2 $15 $06

	add $15                                          ; $6abe: $c6 $15
	ld b, $d1                                        ; $6ac0: $06 $d1
	jp nz, $060a                                     ; $6ac2: $c2 $0a $06

	add $0a                                          ; $6ac5: $c6 $0a
	ld b, $d2                                        ; $6ac7: $06 $d2
	jp nz, $0616                                     ; $6ac9: $c2 $16 $06

	add $16                                          ; $6acc: $c6 $16
	ld b, $d1                                        ; $6ace: $06 $d1
	jp nz, $060a                                     ; $6ad0: $c2 $0a $06

	add $0a                                          ; $6ad3: $c6 $0a
	ld b, $d3                                        ; $6ad5: $06 $d3
	jp nz, $0616                                     ; $6ad7: $c2 $16 $06

	add $16                                          ; $6ada: $c6 $16
	ld b, $d1                                        ; $6adc: $06 $d1
	jp nz, $060b                                     ; $6ade: $c2 $0b $06

	add $0b                                          ; $6ae1: $c6 $0b
	ld b, $d2                                        ; $6ae3: $06 $d2
	jp nz, $0617                                     ; $6ae5: $c2 $17 $06

	add $17                                          ; $6ae8: $c6 $17
	ld b, $d1                                        ; $6aea: $06 $d1
	jp nz, $060b                                     ; $6aec: $c2 $0b $06

	add $0b                                          ; $6aef: $c6 $0b
	ld b, $d3                                        ; $6af1: $06 $d3
	jp nz, $0617                                     ; $6af3: $c2 $17 $06

	add $17                                          ; $6af6: $c6 $17
	ld b, $d1                                        ; $6af8: $06 $d1
	jp nz, $0606                                     ; $6afa: $c2 $06 $06

	add $06                                          ; $6afd: $c6 $06
	ld b, $d2                                        ; $6aff: $06 $d2
	jp nz, $0612                                     ; $6b01: $c2 $12 $06

	add $12                                          ; $6b04: $c6 $12
	ld b, $d1                                        ; $6b06: $06 $d1
	jp nz, $0606                                     ; $6b08: $c2 $06 $06

	add $06                                          ; $6b0b: $c6 $06
	ld b, $d3                                        ; $6b0d: $06 $d3
	jp nz, $0612                                     ; $6b0f: $c2 $12 $06

	add $12                                          ; $6b12: $c6 $12
	ld b, $d1                                        ; $6b14: $06 $d1
	jp nz, $0605                                     ; $6b16: $c2 $05 $06

	add $05                                          ; $6b19: $c6 $05
	ld b, $d2                                        ; $6b1b: $06 $d2
	jp nz, $0611                                     ; $6b1d: $c2 $11 $06

	add $11                                          ; $6b20: $c6 $11
	ld b, $d1                                        ; $6b22: $06 $d1
	jp nz, $0605                                     ; $6b24: $c2 $05 $06

	add $05                                          ; $6b27: $c6 $05
	ld b, $d3                                        ; $6b29: $06 $d3
	jp nz, $0611                                     ; $6b2b: $c2 $11 $06

	add $11                                          ; $6b2e: $c6 $11
	ld b, $fd                                        ; $6b30: $06 $fd

jr_036_6b32:
	ret nc                                           ; $6b32: $d0

	ld l, c                                          ; $6b33: $69
	nop                                              ; $6b34: $00
	ret nz                                           ; $6b35: $c0

	cp $fb                                           ; $6b36: $fe $fb
	db $fd                                           ; $6b38: $fd
	ld l, c                                          ; $6b39: $69
	ld l, e                                          ; $6b3a: $6b
	ei                                               ; $6b3b: $fb
	inc bc                                           ; $6b3c: $03
	cp [hl]                                          ; $6b3d: $be
	inc c                                            ; $6b3e: $0c
	jr nz, jr_036_6b61                               ; $6b3f: $20 $20

	jr nz, jr_036_6b63                               ; $6b41: $20 $20

jr_036_6b43:
	cp [hl]                                          ; $6b43: $be
	nop                                              ; $6b44: $00
	jr nc, jr_036_6b43                               ; $6b45: $30 $fc

	db $fd                                           ; $6b47: $fd
	ld l, c                                          ; $6b48: $69
	ld l, e                                          ; $6b49: $6b
	db $fc                                           ; $6b4a: $fc
	inc bc                                           ; $6b4b: $03
	jr nz, jr_036_6b5a                               ; $6b4c: $20 $0c

	jr nz, jr_036_6b5c                               ; $6b4e: $20 $0c

	rra                                              ; $6b50: $1f
	ld b, $20                                        ; $6b51: $06 $20
	ld [de], a                                       ; $6b53: $12
	jr nz, @+$0e                                     ; $6b54: $20 $0c

	nop                                              ; $6b56: $00
	inc h                                            ; $6b57: $24
	ei                                               ; $6b58: $fb
	db $fd                                           ; $6b59: $fd

jr_036_6b5a:
	ld [hl], l                                       ; $6b5a: $75
	ld l, e                                          ; $6b5b: $6b

jr_036_6b5c:
	ei                                               ; $6b5c: $fb
	rlca                                             ; $6b5d: $07
	cp [hl]                                          ; $6b5e: $be
	inc c                                            ; $6b5f: $0c
	rra                                              ; $6b60: $1f

jr_036_6b61:
	jr nz, jr_036_6b82                               ; $6b61: $20 $1f

jr_036_6b63:
	jr nz, @-$40                                     ; $6b63: $20 $be

	nop                                              ; $6b65: $00

jr_036_6b66:
	jr nc, jr_036_6b66                               ; $6b66: $30 $fe

	rst $38                                          ; $6b68: $ff
	cp [hl]                                          ; $6b69: $be
	inc c                                            ; $6b6a: $0c
	rra                                              ; $6b6b: $1f
	jr nz, jr_036_6b8d                               ; $6b6c: $20 $1f

	jr nz, jr_036_6b8f                               ; $6b6e: $20 $1f

	jr nz, jr_036_6b91                               ; $6b70: $20 $1f

	jr nz, jr_036_6b32                               ; $6b72: $20 $be

	db $fd                                           ; $6b74: $fd
	rra                                              ; $6b75: $1f
	inc c                                            ; $6b76: $0c
	dec e                                            ; $6b77: $1d
	inc c                                            ; $6b78: $0c
	jr nz, jr_036_6b87                               ; $6b79: $20 $0c

	dec e                                            ; $6b7b: $1d
	ld b, $1f                                        ; $6b7c: $06 $1f
	ld b, $be                                        ; $6b7e: $06 $be
	inc c                                            ; $6b80: $0c
	rra                                              ; $6b81: $1f

jr_036_6b82:
	rra                                              ; $6b82: $1f
	jr nz, @+$21                                     ; $6b83: $20 $1f

	cp [hl]                                          ; $6b85: $be
	db $fd                                           ; $6b86: $fd

jr_036_6b87:
	or h                                             ; $6b87: $b4
	ld d, b                                          ; $6b88: $50
	ld h, c                                          ; $6b89: $61
	ld [bc], a                                       ; $6b8a: $02
	ld [hl], l                                       ; $6b8b: $75
	cp [hl]                                          ; $6b8c: $be

jr_036_6b8d:
	inc bc                                           ; $6b8d: $03
	dec h                                            ; $6b8e: $25

jr_036_6b8f:
	daa                                              ; $6b8f: $27
	add hl, hl                                       ; $6b90: $29

jr_036_6b91:
	ld a, [hl+]                                      ; $6b91: $2a
	inc l                                            ; $6b92: $2c
	ld l, $30                                        ; $6b93: $2e $30
	cp [hl]                                          ; $6b95: $be
	ld sp, $c20c                                     ; $6b96: $31 $0c $c2
	ld sp, $c106                                     ; $6b99: $31 $06 $c1
	ld sp, $ff06                                     ; $6b9c: $31 $06 $ff
	or h                                             ; $6b9f: $b4
	ld d, b                                          ; $6ba0: $50
	sub c                                            ; $6ba1: $91
	ld bc, $03be                                     ; $6ba2: $01 $be $03
	dec h                                            ; $6ba5: $25
	daa                                              ; $6ba6: $27
	add hl, hl                                       ; $6ba7: $29
	ld a, [hl+]                                      ; $6ba8: $2a
	inc l                                            ; $6ba9: $2c
	ld l, $30                                        ; $6baa: $2e $30
	cp [hl]                                          ; $6bac: $be
	ld sp, $c30c                                     ; $6bad: $31 $0c $c3
	ld sp, $c106                                     ; $6bb0: $31 $06 $c1
	ld sp, $ff06                                     ; $6bb3: $31 $06 $ff
	or h                                             ; $6bb6: $b4
	ld d, b                                          ; $6bb7: $50
	ld hl, $1d18                                     ; $6bb8: $21 $18 $1d
	ld b, $20                                        ; $6bbb: $06 $20
	ld b, $19                                        ; $6bbd: $06 $19
	dec d                                            ; $6bbf: $15
	call nz, $0619                                   ; $6bc0: $c4 $19 $06
	add $19                                          ; $6bc3: $c6 $19
	ld b, $ff                                        ; $6bc5: $06 $ff
	or [hl]                                          ; $6bc7: $b6
	ld e, d                                          ; $6bc8: $5a
	or d                                             ; $6bc9: $b2
	ld [bc], a                                       ; $6bca: $02
	ld h, h                                          ; $6bcb: $64
	rlca                                             ; $6bcc: $07
	nop                                              ; $6bcd: $00
	inc bc                                           ; $6bce: $03
	dec [hl]                                         ; $6bcf: $35
	inc bc                                           ; $6bd0: $03
	cp $b5                                           ; $6bd1: $fe $b5
	or d                                             ; $6bd3: $b2
	ld [bc], a                                       ; $6bd4: $02
	ld h, h                                          ; $6bd5: $64
	rlca                                             ; $6bd6: $07
	jr c, jr_036_6bdc                                ; $6bd7: $38 $03

	inc a                                            ; $6bd9: $3c
	ld a, [bc]                                       ; $6bda: $0a
	ret z                                            ; $6bdb: $c8

jr_036_6bdc:
	dec [hl]                                         ; $6bdc: $35
	inc bc                                           ; $6bdd: $03
	jr c, @+$05                                      ; $6bde: $38 $03

	inc a                                            ; $6be0: $3c
	ld a, [bc]                                       ; $6be1: $0a
	add $35                                          ; $6be2: $c6 $35
	inc bc                                           ; $6be4: $03
	jr c, @+$05                                      ; $6be5: $38 $03

	inc a                                            ; $6be7: $3c
	ld a, [bc]                                       ; $6be8: $0a
	jp $0335                                         ; $6be9: $c3 $35 $03


	jr c, jr_036_6bf1                                ; $6bec: $38 $03

	inc a                                            ; $6bee: $3c
	ld e, [hl]                                       ; $6bef: $5e
	or c                                             ; $6bf0: $b1

jr_036_6bf1:
	sub c                                            ; $6bf1: $91
	ld h, h                                          ; $6bf2: $64
	rlca                                             ; $6bf3: $07
	ld sp, $c60a                                     ; $6bf4: $31 $0a $c6
	ld sp, $c906                                     ; $6bf7: $31 $06 $c9
	inc sp                                           ; $6bfa: $33
	ld a, [bc]                                       ; $6bfb: $0a
	add $33                                          ; $6bfc: $c6 $33
	ld b, $c8                                        ; $6bfe: $06 $c8
	dec [hl]                                         ; $6c00: $35
	add hl, bc                                       ; $6c01: $09
	add $35                                          ; $6c02: $c6 $35
	ld b, $b1                                        ; $6c04: $06 $b1
	sub c                                            ; $6c06: $91
	ld [hl-], a                                      ; $6c07: $32
	rlca                                             ; $6c08: $07
	ld [hl], $0c                                     ; $6c09: $36 $0c
	call nz, $1836                                   ; $6c0b: $c4 $36 $18
	or c                                             ; $6c0e: $b1
	sub c                                            ; $6c0f: $91
	ld h, h                                          ; $6c10: $64
	rlca                                             ; $6c11: $07
	ld l, $09                                        ; $6c12: $2e $09
	call nz, $032e                                   ; $6c14: $c4 $2e $03
	jp z, $0c2e                                      ; $6c17: $ca $2e $0c

	push bc                                          ; $6c1a: $c5
	ld l, $54                                        ; $6c1b: $2e $54
	or c                                             ; $6c1d: $b1
	add c                                            ; $6c1e: $81
	ld [hl-], a                                      ; $6c1f: $32
	rlca                                             ; $6c20: $07
	dec l                                            ; $6c21: $2d
	inc c                                            ; $6c22: $0c
	call nz, $182d                                   ; $6c23: $c4 $2d $18
	or c                                             ; $6c26: $b1
	add c                                            ; $6c27: $81
	ld h, h                                          ; $6c28: $64
	inc bc                                           ; $6c29: $03
	dec l                                            ; $6c2a: $2d
	ld b, $2d                                        ; $6c2b: $06 $2d
	ld b, $b1                                        ; $6c2d: $06 $b1
	ld sp, $0000                                     ; $6c2f: $31 $00 $00
	inc l                                            ; $6c32: $2c
	inc c                                            ; $6c33: $0c
	jp nz, $0c2c                                     ; $6c34: $c2 $2c $0c

	pop bc                                           ; $6c37: $c1
	inc l                                            ; $6c38: $2c
	inc c                                            ; $6c39: $0c
	nop                                              ; $6c3a: $00
	ld l, h                                          ; $6c3b: $6c
	or c                                             ; $6c3c: $b1
	sub c                                            ; $6c3d: $91
	ld h, h                                          ; $6c3e: $64
	rlca                                             ; $6c3f: $07
	ld sp, $c60a                                     ; $6c40: $31 $0a $c6
	ld sp, $c906                                     ; $6c43: $31 $06 $c9
	inc sp                                           ; $6c46: $33
	ld a, [bc]                                       ; $6c47: $0a
	add $33                                          ; $6c48: $c6 $33
	ld b, $c8                                        ; $6c4a: $06 $c8
	dec [hl]                                         ; $6c4c: $35
	ld a, [bc]                                       ; $6c4d: $0a
	add $35                                          ; $6c4e: $c6 $35
	ld b, $b1                                        ; $6c50: $06 $b1
	sub c                                            ; $6c52: $91
	ld [hl-], a                                      ; $6c53: $32
	rlca                                             ; $6c54: $07
	ld [hl], $0c                                     ; $6c55: $36 $0c
	call nz, $1836                                   ; $6c57: $c4 $36 $18
	ret                                              ; $6c5a: $c9


	ld l, $0c                                        ; $6c5b: $2e $0c
	call nz, $182e                                   ; $6c5d: $c4 $2e $18
	ret                                              ; $6c60: $c9


	ld a, [hl-]                                      ; $6c61: $3a
	inc c                                            ; $6c62: $0c
	call nz, $163a                                   ; $6c63: $c4 $3a $16
	or c                                             ; $6c66: $b1
	ld [hl], d                                       ; $6c67: $72
	ld [hl-], a                                      ; $6c68: $32
	rlca                                             ; $6c69: $07
	ld [hl], $04                                     ; $6c6a: $36 $04
	ld a, [hl-]                                      ; $6c6c: $3a
	inc b                                            ; $6c6d: $04
	dec a                                            ; $6c6e: $3d
	inc b                                            ; $6c6f: $04
	call nz, $2041                                   ; $6c70: $c4 $41 $20
	pop de                                           ; $6c73: $d1
	ret                                              ; $6c74: $c9


	ld [hl], $25                                     ; $6c75: $36 $25
	dec [hl]                                         ; $6c77: $35
	add hl, bc                                       ; $6c78: $09
	inc sp                                           ; $6c79: $33
	ld a, [bc]                                       ; $6c7a: $0a
	cp $ff                                           ; $6c7b: $fe $ff
	or [hl]                                          ; $6c7d: $b6
	ld e, d                                          ; $6c7e: $5a
	pop de                                           ; $6c7f: $d1
	ld [bc], a                                       ; $6c80: $02
	ld h, h                                          ; $6c81: $64
	inc bc                                           ; $6c82: $03
	dec [hl]                                         ; $6c83: $35
	inc bc                                           ; $6c84: $03
	jr c, @+$05                                      ; $6c85: $38 $03

	inc a                                            ; $6c87: $3c
	ld a, [bc]                                       ; $6c88: $0a
	cp $b1                                           ; $6c89: $fe $b1
	sub e                                            ; $6c8b: $93
	ld h, h                                          ; $6c8c: $64
	rlca                                             ; $6c8d: $07
	dec [hl]                                         ; $6c8e: $35
	inc bc                                           ; $6c8f: $03
	jr c, jr_036_6c95                                ; $6c90: $38 $03

	inc a                                            ; $6c92: $3c
	ld a, [bc]                                       ; $6c93: $0a
	rst JumpTable                                          ; $6c94: $c7

jr_036_6c95:
	dec [hl]                                         ; $6c95: $35
	inc bc                                           ; $6c96: $03
	jr c, @+$05                                      ; $6c97: $38 $03

	inc a                                            ; $6c99: $3c
	ld a, [bc]                                       ; $6c9a: $0a
	call nz, $0335                                   ; $6c9b: $c4 $35 $03
	jr c, @+$05                                      ; $6c9e: $38 $03

	inc a                                            ; $6ca0: $3c
	ld a, [bc]                                       ; $6ca1: $0a
	jp nz, $0335                                     ; $6ca2: $c2 $35 $03

	jr c, jr_036_6caa                                ; $6ca5: $38 $03

	inc a                                            ; $6ca7: $3c
	ld d, e                                          ; $6ca8: $53
	or c                                             ; $6ca9: $b1

jr_036_6caa:
	and c                                            ; $6caa: $a1
	ld h, h                                          ; $6cab: $64
	rlca                                             ; $6cac: $07
	dec [hl]                                         ; $6cad: $35
	ld a, [bc]                                       ; $6cae: $0a
	add $35                                          ; $6caf: $c6 $35
	ld b, $ca                                        ; $6cb1: $06 $ca
	ld [hl], $0a                                     ; $6cb3: $36 $0a
	push bc                                          ; $6cb5: $c5
	ld [hl], $06                                     ; $6cb6: $36 $06
	jp z, $0a38                                      ; $6cb8: $ca $38 $0a

	add $38                                          ; $6cbb: $c6 $38
	ld b, $b1                                        ; $6cbd: $06 $b1
	sub c                                            ; $6cbf: $91
	ld [hl-], a                                      ; $6cc0: $32
	rlca                                             ; $6cc1: $07
	ld a, [hl-]                                      ; $6cc2: $3a
	inc c                                            ; $6cc3: $0c
	call nz, $183a                                   ; $6cc4: $c4 $3a $18
	or c                                             ; $6cc7: $b1
	sub c                                            ; $6cc8: $91
	ld h, h                                          ; $6cc9: $64
	rlca                                             ; $6cca: $07
	ld sp, $c409                                     ; $6ccb: $31 $09 $c4
	ld sp, $c903                                     ; $6cce: $31 $03 $c9
	ld sp, $c50c                                     ; $6cd1: $31 $0c $c5
	ld sp, $b154                                     ; $6cd4: $31 $54 $b1
	add c                                            ; $6cd7: $81
	ld [hl-], a                                      ; $6cd8: $32
	rlca                                             ; $6cd9: $07
	inc sp                                           ; $6cda: $33
	inc c                                            ; $6cdb: $0c
	call nz, $1533                                   ; $6cdc: $c4 $33 $15
	or c                                             ; $6cdf: $b1
	sub c                                            ; $6ce0: $91
	ld h, h                                          ; $6ce1: $64
	inc bc                                           ; $6ce2: $03
	ld sp, $3306                                     ; $6ce3: $31 $06 $33
	ld b, $96                                        ; $6ce6: $06 $96
	ld h, h                                          ; $6ce8: $64
	rlca                                             ; $6ce9: $07
	dec [hl]                                         ; $6cea: $35
	ld [$35c5], sp                                   ; $6ceb: $08 $c5 $35
	ld b, $b1                                        ; $6cee: $06 $b1
	ld h, e                                          ; $6cf0: $63
	ld h, h                                          ; $6cf1: $64
	inc b                                            ; $6cf2: $04
	ld a, l                                          ; $6cf3: $7d
	nop                                              ; $6cf4: $00
	ld sp, $3306                                     ; $6cf5: $31 $06 $33
	ld b, $35                                        ; $6cf8: $06 $35
	ld a, [bc]                                       ; $6cfa: $0a
	call nz, $0631                                   ; $6cfb: $c4 $31 $06
	inc sp                                           ; $6cfe: $33
	ld b, $35                                        ; $6cff: $06 $35
	ld a, [bc]                                       ; $6d01: $0a
	jp $0631                                         ; $6d02: $c3 $31 $06


	inc sp                                           ; $6d05: $33
	ld b, $35                                        ; $6d06: $06 $35
	ld a, [bc]                                       ; $6d08: $0a
	jp nz, $0631                                     ; $6d09: $c2 $31 $06

	inc sp                                           ; $6d0c: $33
	ld b, $35                                        ; $6d0d: $06 $35
	scf                                              ; $6d0f: $37
	or c                                             ; $6d10: $b1
	and c                                            ; $6d11: $a1
	ld h, h                                          ; $6d12: $64
	rlca                                             ; $6d13: $07
	dec [hl]                                         ; $6d14: $35
	ld a, [bc]                                       ; $6d15: $0a
	add $35                                          ; $6d16: $c6 $35
	ld b, $ca                                        ; $6d18: $06 $ca
	ld [hl], $0a                                     ; $6d1a: $36 $0a
	push bc                                          ; $6d1c: $c5
	ld [hl], $06                                     ; $6d1d: $36 $06
	jp z, $0a38                                      ; $6d1f: $ca $38 $0a

	add $38                                          ; $6d22: $c6 $38
	ld b, $b1                                        ; $6d24: $06 $b1
	sub c                                            ; $6d26: $91
	ld [hl-], a                                      ; $6d27: $32
	rlca                                             ; $6d28: $07
	ld a, [hl-]                                      ; $6d29: $3a
	inc c                                            ; $6d2a: $0c
	call nz, $183a                                   ; $6d2b: $c4 $3a $18
	ret                                              ; $6d2e: $c9


	ld sp, $c40c                                     ; $6d2f: $31 $0c $c4
	ld sp, $c918                                     ; $6d32: $31 $18 $c9
	dec a                                            ; $6d35: $3d
	ld a, [bc]                                       ; $6d36: $0a
	call nz, $0b3d                                   ; $6d37: $c4 $3d $0b
	or c                                             ; $6d3a: $b1
	ld [hl], c                                       ; $6d3b: $71
	ld h, h                                          ; $6d3c: $64
	dec b                                            ; $6d3d: $05
	ld [hl], $04                                     ; $6d3e: $36 $04
	ld a, [hl-]                                      ; $6d40: $3a
	inc b                                            ; $6d41: $04
	dec a                                            ; $6d42: $3d
	inc b                                            ; $6d43: $04
	push bc                                          ; $6d44: $c5
	ld b, c                                          ; $6d45: $41
	ld e, $cd                                        ; $6d46: $1e $cd
	jr c, jr_036_6d58                                ; $6d48: $38 $0e

	ld a, [hl-]                                      ; $6d4a: $3a
	dec h                                            ; $6d4b: $25
	jr c, @+$0a                                      ; $6d4c: $38 $08

	ld [hl], $09                                     ; $6d4e: $36 $09
	sub [hl]                                         ; $6d50: $96
	ld h, h                                          ; $6d51: $64
	rlca                                             ; $6d52: $07
	dec [hl]                                         ; $6d53: $35
	ld a, [bc]                                       ; $6d54: $0a
	cp $ff                                           ; $6d55: $fe $ff
	or h                                             ; $6d57: $b4

jr_036_6d58:
	ld e, d                                          ; $6d58: $5a
	pop af                                           ; $6d59: $f1
	dec hl                                           ; $6d5a: $2b
	nop                                              ; $6d5b: $00
	ld b, $fe                                        ; $6d5c: $06 $fe
	ei                                               ; $6d5e: $fb
	jp nz, $063c                                     ; $6d5f: $c2 $3c $06

	call nz, $063c                                   ; $6d62: $c4 $3c $06
	jp nz, $0638                                     ; $6d65: $c2 $38 $06

	call nz, $0638                                   ; $6d68: $c4 $38 $06
	jp nz, $0635                                     ; $6d6b: $c2 $35 $06

	call nz, $0635                                   ; $6d6e: $c4 $35 $06
	jp nz, $0631                                     ; $6d71: $c2 $31 $06

	call nz, $0631                                   ; $6d74: $c4 $31 $06
	jp nz, $0630                                     ; $6d77: $c2 $30 $06

	call nz, $0630                                   ; $6d7a: $c4 $30 $06
	jp nz, $0631                                     ; $6d7d: $c2 $31 $06

	call nz, $0631                                   ; $6d80: $c4 $31 $06
	jp nz, $0635                                     ; $6d83: $c2 $35 $06

	call nz, $0635                                   ; $6d86: $c4 $35 $06
	jp nz, $0638                                     ; $6d89: $c2 $38 $06

	call nz, $0638                                   ; $6d8c: $c4 $38 $06
	ei                                               ; $6d8f: $fb
	ld [bc], a                                       ; $6d90: $02
	db $fd                                           ; $6d91: $fd
	inc hl                                           ; $6d92: $23
	ld l, [hl]                                       ; $6d93: $6e
	jp nz, $063a                                     ; $6d94: $c2 $3a $06

	call nz, $063a                                   ; $6d97: $c4 $3a $06
	db $fd                                           ; $6d9a: $fd
	inc hl                                           ; $6d9b: $23
	ld l, [hl]                                       ; $6d9c: $6e
	jp nz, $0639                                     ; $6d9d: $c2 $39 $06

	call nz, $0639                                   ; $6da0: $c4 $39 $06
	ei                                               ; $6da3: $fb
	jp nz, $063f                                     ; $6da4: $c2 $3f $06

	call nz, $063f                                   ; $6da7: $c4 $3f $06
	jp nz, $063c                                     ; $6daa: $c2 $3c $06

	call nz, $063c                                   ; $6dad: $c4 $3c $06
	jp nz, $0638                                     ; $6db0: $c2 $38 $06

	call nz, $0638                                   ; $6db3: $c4 $38 $06
	jp nz, $0635                                     ; $6db6: $c2 $35 $06

	call nz, $0635                                   ; $6db9: $c4 $35 $06
	jp nz, $0633                                     ; $6dbc: $c2 $33 $06

	call nz, $0633                                   ; $6dbf: $c4 $33 $06
	jp nz, $0635                                     ; $6dc2: $c2 $35 $06

	call nz, $0635                                   ; $6dc5: $c4 $35 $06
	jp nz, $0638                                     ; $6dc8: $c2 $38 $06

	call nz, $0638                                   ; $6dcb: $c4 $38 $06
	jp nz, $063c                                     ; $6dce: $c2 $3c $06

	call nz, $063c                                   ; $6dd1: $c4 $3c $06
	ei                                               ; $6dd4: $fb
	ld [bc], a                                       ; $6dd5: $02
	jp nz, $0641                                     ; $6dd6: $c2 $41 $06

	call nz, $0641                                   ; $6dd9: $c4 $41 $06
	jp nz, $063d                                     ; $6ddc: $c2 $3d $06

	call nz, $063d                                   ; $6ddf: $c4 $3d $06
	jp nz, $063a                                     ; $6de2: $c2 $3a $06

	call nz, $063a                                   ; $6de5: $c4 $3a $06
	jp nz, $0636                                     ; $6de8: $c2 $36 $06

	call nz, $0636                                   ; $6deb: $c4 $36 $06
	jp nz, $0635                                     ; $6dee: $c2 $35 $06

	call nz, $0635                                   ; $6df1: $c4 $35 $06
	jp nz, $0636                                     ; $6df4: $c2 $36 $06

	call nz, $0636                                   ; $6df7: $c4 $36 $06
	jp nz, $063a                                     ; $6dfa: $c2 $3a $06

	call nz, $063a                                   ; $6dfd: $c4 $3a $06
	jp nz, $063d                                     ; $6e00: $c2 $3d $06

	call nz, $063d                                   ; $6e03: $c4 $3d $06
	jp nz, $2036                                     ; $6e06: $c2 $36 $20

	call nz, $0e36                                   ; $6e09: $c4 $36 $0e
	add $36                                          ; $6e0c: $c6 $36
	ld [$33c2], sp                                   ; $6e0e: $08 $c2 $33
	ld de, $33c4                                     ; $6e11: $11 $c4 $33
	ld b, $c6                                        ; $6e14: $06 $c6
	inc sp                                           ; $6e16: $33
	dec b                                            ; $6e17: $05
	jp nz, $1238                                     ; $6e18: $c2 $38 $12

	call nz, $0638                                   ; $6e1b: $c4 $38 $06
	add $38                                          ; $6e1e: $c6 $38
	inc b                                            ; $6e20: $04
	cp $ff                                           ; $6e21: $fe $ff
	jp nz, $063d                                     ; $6e23: $c2 $3d $06

	call nz, $063d                                   ; $6e26: $c4 $3d $06
	jp nz, $063a                                     ; $6e29: $c2 $3a $06

	call nz, $063a                                   ; $6e2c: $c4 $3a $06
	jp nz, $0636                                     ; $6e2f: $c2 $36 $06

	call nz, $0636                                   ; $6e32: $c4 $36 $06
	jp nz, $0633                                     ; $6e35: $c2 $33 $06

	call nz, $0633                                   ; $6e38: $c4 $33 $06
	jp nz, $0631                                     ; $6e3b: $c2 $31 $06

	call nz, $0631                                   ; $6e3e: $c4 $31 $06
	jp nz, $0633                                     ; $6e41: $c2 $33 $06

	call nz, $0633                                   ; $6e44: $c4 $33 $06
	jp nz, $0636                                     ; $6e47: $c2 $36 $06

	call nz, $0636                                   ; $6e4a: $c4 $36 $06
	db $fd                                           ; $6e4d: $fd
	or h                                             ; $6e4e: $b4
	adc h                                            ; $6e4f: $8c
	pop af                                           ; $6e50: $f1
	nop                                              ; $6e51: $00
	sub [hl]                                         ; $6e52: $96
	rrca                                             ; $6e53: $0f
	ld bc, $241c                                     ; $6e54: $01 $1c $24
	inc e                                            ; $6e57: $1c
	inc c                                            ; $6e58: $0c
	or c                                             ; $6e59: $b1
	or e                                             ; $6e5a: $b3
	ld a, [bc]                                       ; $6e5b: $0a
	rlca                                             ; $6e5c: $07
	inc e                                            ; $6e5d: $1c
	inc c                                            ; $6e5e: $0c
	jp nc, $1cc9                                     ; $6e5f: $d2 $c9 $1c

	inc c                                            ; $6e62: $0c
	db $d3                                           ; $6e63: $d3
	rst JumpTable                                          ; $6e64: $c7
	inc e                                            ; $6e65: $1c
	inc c                                            ; $6e66: $0c
	or c                                             ; $6e67: $b1
	pop af                                           ; $6e68: $f1
	rrca                                             ; $6e69: $0f
	ld bc, $181e                                     ; $6e6a: $01 $1e $18
	ld e, $0c                                        ; $6e6d: $1e $0c
	sub [hl]                                         ; $6e6f: $96
	ld e, $01                                        ; $6e70: $1e $01
	sub a                                            ; $6e72: $97
	adc d                                            ; $6e73: $8a
	ld e, $48                                        ; $6e74: $1e $48
	call $0097                                       ; $6e76: $cd $97 $00
	sub [hl]                                         ; $6e79: $96
	inc d                                            ; $6e7a: $14
	ld bc, $241e                                     ; $6e7b: $01 $1e $24
	sub a                                            ; $6e7e: $97
	ld a, a                                          ; $6e7f: $7f
	sub [hl]                                         ; $6e80: $96
	ld e, $02                                        ; $6e81: $1e $02
	dec e                                            ; $6e83: $1d
	sbc h                                            ; $6e84: $9c
	db $fd                                           ; $6e85: $fd
	ld c, [hl]                                       ; $6e86: $4e
	ld [hl], b                                       ; $6e87: $70
	rst GetHLinHL                                          ; $6e88: $cf
	db $d3                                           ; $6e89: $d3
	cp [hl]                                          ; $6e8a: $be
	inc c                                            ; $6e8b: $0c
	inc sp                                           ; $6e8c: $33
	ld [hl-], a                                      ; $6e8d: $32
	ld l, $29                                        ; $6e8e: $2e $29
	cp [hl]                                          ; $6e90: $be
	or l                                             ; $6e91: $b5
	ldh a, [c]                                       ; $6e92: $f2
	ld bc, $0673                                     ; $6e93: $01 $73 $06
	ld h, $0c                                        ; $6e96: $26 $0c
	daa                                              ; $6e98: $27
	inc c                                            ; $6e99: $0c

jr_036_6e9a:
	jp z, $182e                                      ; $6e9a: $ca $2e $18

	db $fd                                           ; $6e9d: $fd
	ld c, [hl]                                       ; $6e9e: $4e
	ld [hl], b                                       ; $6e9f: $70
	or l                                             ; $6ea0: $b5
	ldh [c], a                                       ; $6ea1: $e2
	ld [bc], a                                       ; $6ea2: $02
	ld [hl], e                                       ; $6ea3: $73
	rlca                                             ; $6ea4: $07
	cp [hl]                                          ; $6ea5: $be
	ld b, $22                                        ; $6ea6: $06 $22
	inc h                                            ; $6ea8: $24
	ld h, $27                                        ; $6ea9: $26 $27
	add hl, hl                                       ; $6eab: $29
	dec hl                                           ; $6eac: $2b
	inc l                                            ; $6ead: $2c
	dec l                                            ; $6eae: $2d
	ld l, $30                                        ; $6eaf: $2e $30
	ld [hl-], a                                      ; $6eb1: $32
	inc sp                                           ; $6eb2: $33
	dec [hl]                                         ; $6eb3: $35
	scf                                              ; $6eb4: $37
	jr c, jr_036_6ef0                                ; $6eb5: $38 $39

	cp [hl]                                          ; $6eb7: $be
	db $fd                                           ; $6eb8: $fd
	xor l                                            ; $6eb9: $ad
	ld [hl], b                                       ; $6eba: $70
	db $fd                                           ; $6ebb: $fd
	inc sp                                           ; $6ebc: $33
	ld [hl], c                                       ; $6ebd: $71
	db $fd                                           ; $6ebe: $fd
	ld a, a                                          ; $6ebf: $7f
	ld [hl], c                                       ; $6ec0: $71
	or l                                             ; $6ec1: $b5
	and e                                            ; $6ec2: $a3
	ld [bc], a                                       ; $6ec3: $02
	add hl, de                                       ; $6ec4: $19
	ld b, $7e                                        ; $6ec5: $06 $7e
	dec l                                            ; $6ec7: $2d
	inc d                                            ; $6ec8: $14
	and b                                            ; $6ec9: $a0
	ld a, [hl+]                                      ; $6eca: $2a
	inc h                                            ; $6ecb: $24
	or c                                             ; $6ecc: $b1
	jp $0182                                         ; $6ecd: $c3 $82 $01


jr_036_6ed0:
	ld c, d                                          ; $6ed0: $4a
	ld b, $4a                                        ; $6ed1: $06 $4a
	ld b, $4a                                        ; $6ed3: $06 $4a
	inc c                                            ; $6ed5: $0c
	or c                                             ; $6ed6: $b1
	and e                                            ; $6ed7: $a3
	add hl, de                                       ; $6ed8: $19
	ld b, $25                                        ; $6ed9: $06 $25
	inc h                                            ; $6edb: $24
	ld a, [hl+]                                      ; $6edc: $2a
	inc h                                            ; $6edd: $24
	dec l                                            ; $6ede: $2d
	inc h                                            ; $6edf: $24
	ld a, [hl+]                                      ; $6ee0: $2a
	jr jr_036_6f0c                                   ; $6ee1: $18 $29

	jr jr_036_6e9a                                   ; $6ee3: $18 $b5

	ldh a, [c]                                       ; $6ee5: $f2
	ld bc, $0000                                     ; $6ee6: $01 $00 $00
	dec de                                           ; $6ee9: $1b
	ld b, $00                                        ; $6eea: $06 $00
	ld [de], a                                       ; $6eec: $12
	dec de                                           ; $6eed: $1b
	inc c                                            ; $6eee: $0c
	add hl, de                                       ; $6eef: $19

jr_036_6ef0:
	inc h                                            ; $6ef0: $24
	cp [hl]                                          ; $6ef1: $be
	inc c                                            ; $6ef2: $0c
	dec de                                           ; $6ef3: $1b
	dec e                                            ; $6ef4: $1d
	nop                                              ; $6ef5: $00
	ld e, $00                                        ; $6ef6: $1e $00
	cp [hl]                                          ; $6ef8: $be
	jr nz, jr_036_6f1f                               ; $6ef9: $20 $24

	or l                                             ; $6efb: $b5
	and e                                            ; $6efc: $a3
	ld [bc], a                                       ; $6efd: $02
	add hl, de                                       ; $6efe: $19
	ld b, $2a                                        ; $6eff: $06 $2a
	inc h                                            ; $6f01: $24

jr_036_6f02:
	or c                                             ; $6f02: $b1
	db $d3                                           ; $6f03: $d3
	add hl, de                                       ; $6f04: $19

jr_036_6f05:
	ld [bc], a                                       ; $6f05: $02
	ld c, d                                          ; $6f06: $4a
	ld b, $4a                                        ; $6f07: $06 $4a
	ld b, $4a                                        ; $6f09: $06 $4a
	inc c                                            ; $6f0b: $0c

jr_036_6f0c:
	or c                                             ; $6f0c: $b1
	and e                                            ; $6f0d: $a3
	ld [hl-], a                                      ; $6f0e: $32
	rlca                                             ; $6f0f: $07
	dec h                                            ; $6f10: $25
	inc h                                            ; $6f11: $24
	ld a, [hl+]                                      ; $6f12: $2a
	inc h                                            ; $6f13: $24
	dec l                                            ; $6f14: $2d
	jr jr_036_6f43                                   ; $6f15: $18 $2c

	inc c                                            ; $6f17: $0c

jr_036_6f18:
	ld a, [hl+]                                      ; $6f18: $2a
	jr jr_036_6ed0                                   ; $6f19: $18 $b5

	or c                                             ; $6f1b: $b1
	ld bc, $0732                                     ; $6f1c: $01 $32 $07

jr_036_6f1f:
	add hl, hl                                       ; $6f1f: $29
	jr jr_036_6f4d                                   ; $6f20: $18 $2b

	inc c                                            ; $6f22: $0c
	nop                                              ; $6f23: $00
	inc c                                            ; $6f24: $0c
	dec hl                                           ; $6f25: $2b
	inc c                                            ; $6f26: $0c
	add hl, hl                                       ; $6f27: $29
	inc h                                            ; $6f28: $24
	dec hl                                           ; $6f29: $2b
	inc c                                            ; $6f2a: $0c
	nop                                              ; $6f2b: $00
	inc c                                            ; $6f2c: $0c
	dec hl                                           ; $6f2d: $2b
	inc c                                            ; $6f2e: $0c
	add hl, hl                                       ; $6f2f: $29
	inc a                                            ; $6f30: $3c
	ld a, [hl]                                       ; $6f31: $7e
	nop                                              ; $6f32: $00
	sub [hl]                                         ; $6f33: $96
	ld h, h                                          ; $6f34: $64
	dec b                                            ; $6f35: $05
	sub d                                            ; $6f36: $92
	sub a                                            ; $6f37: $97
	nop                                              ; $6f38: $00
	ret                                              ; $6f39: $c9


	jp nc, $2e32                                     ; $6f3a: $d2 $32 $2e

	or c                                             ; $6f3d: $b1
	ld h, e                                          ; $6f3e: $63
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	ld [hl+], a                                      ; $6f41: $22
	inc c                                            ; $6f42: $0c

jr_036_6f43:
	ld h, $0c                                        ; $6f43: $26 $0c
	dec hl                                           ; $6f45: $2b
	jr jr_036_6f05                                   ; $6f46: $18 $bd

	ld [bc], a                                       ; $6f48: $02
	add hl, hl                                       ; $6f49: $29
	jr jr_036_6f58                                   ; $6f4a: $18 $0c

	daa                                              ; $6f4c: $27

jr_036_6f4d:
	jr @+$28                                         ; $6f4d: $18 $26

	jr @+$26                                         ; $6f4f: $18 $24

	jr jr_036_6f79                                   ; $6f51: $18 $26

	inc h                                            ; $6f53: $24
	ld [hl+], a                                      ; $6f54: $22
	inc c                                            ; $6f55: $0c

jr_036_6f56:
	ld h, $0c                                        ; $6f56: $26 $0c

jr_036_6f58:
	inc l                                            ; $6f58: $2c
	jr jr_036_6f18                                   ; $6f59: $18 $bd

	ld [bc], a                                       ; $6f5b: $02
	dec hl                                           ; $6f5c: $2b
	jr jr_036_6f61                                   ; $6f5d: $18 $02

	pop de                                           ; $6f5f: $d1
	sub d                                            ; $6f60: $92

jr_036_6f61:
	jp z, $3b97                                      ; $6f61: $ca $97 $3b

	dec bc                                           ; $6f64: $0b
	jr jr_036_6f73                                   ; $6f65: $18 $0c

	jr jr_036_6f77                                   ; $6f67: $18 $0e

	jr jr_036_6f02                                   ; $6f69: $18 $97

	cpl                                              ; $6f6b: $2f
	rrca                                             ; $6f6c: $0f
	ld c, b                                          ; $6f6d: $48
	sub a                                            ; $6f6e: $97
	inc a                                            ; $6f6f: $3c
	ld de, $9618                                     ; $6f70: $11 $18 $96

jr_036_6f73:
	ld a, [$9705]                                    ; $6f73: $fa $05 $97
	rrca                                             ; $6f76: $0f

jr_036_6f77:
	cp l                                             ; $6f77: $bd
	ld [bc], a                                       ; $6f78: $02

jr_036_6f79:
	inc de                                           ; $6f79: $13
	ld h, b                                          ; $6f7a: $60

jr_036_6f7b:
	inc a                                            ; $6f7b: $3c
	sub [hl]                                         ; $6f7c: $96
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	sub a                                            ; $6f7f: $97
	ld e, e                                          ; $6f80: $5b
	inc c                                            ; $6f81: $0c
	inc c                                            ; $6f82: $0c
	rrca                                             ; $6f83: $0f

jr_036_6f84:
	inc c                                            ; $6f84: $0c

jr_036_6f85:
	ld d, $0c                                        ; $6f85: $16 $0c
	sub a                                            ; $6f87: $97
	dec sp                                           ; $6f88: $3b

jr_036_6f89:
	cp [hl]                                          ; $6f89: $be
	jr jr_036_6fa1                                   ; $6f8a: $18 $15

	inc de                                           ; $6f8c: $13
	ld de, $be0f                                     ; $6f8d: $11 $0f $be
	sub [hl]                                         ; $6f90: $96
	jr z, jr_036_6f9a                                ; $6f91: $28 $07

jr_036_6f93:
	sub c                                            ; $6f93: $91
	sub a                                            ; $6f94: $97
	nop                                              ; $6f95: $00
	ret z                                            ; $6f96: $c8

	pop de                                           ; $6f97: $d1
	ld d, $60                                        ; $6f98: $16 $60

jr_036_6f9a:
	dec d                                            ; $6f9a: $15
	ld h, b                                          ; $6f9b: $60
	inc d                                            ; $6f9c: $14

jr_036_6f9d:
	ld h, b                                          ; $6f9d: $60
	inc de                                           ; $6f9e: $13
	jr jr_036_6f56                                   ; $6f9f: $18 $b5

jr_036_6fa1:
	add c                                            ; $6fa1: $81
	ld bc, $0000                                     ; $6fa2: $01 $00 $00
	inc de                                           ; $6fa5: $13
	jr jr_036_6fbd                                   ; $6fa6: $18 $15

	jr @+$19                                         ; $6fa8: $18 $17

	jr jr_036_6f61                                   ; $6faa: $18 $b5

	pop af                                           ; $6fac: $f1
	ld [bc], a                                       ; $6fad: $02
	ld h, h                                          ; $6fae: $64
	inc bc                                           ; $6faf: $03
	inc c                                            ; $6fb0: $0c
	jr jr_036_6f7b                                   ; $6fb1: $18 $c8

	dec hl                                           ; $6fb3: $2b
	jr jr_036_6fe1                                   ; $6fb4: $18 $2b

	jr jr_036_6fe3                                   ; $6fb6: $18 $2b

	jr jr_036_6f89                                   ; $6fb8: $18 $cf

	dec bc                                           ; $6fba: $0b
	jr jr_036_6f85                                   ; $6fbb: $18 $c8

jr_036_6fbd:
	dec hl                                           ; $6fbd: $2b

jr_036_6fbe:
	jr jr_036_6feb                                   ; $6fbe: $18 $2b

	jr @+$2d                                         ; $6fc0: $18 $2b

	jr jr_036_6f93                                   ; $6fc2: $18 $cf

	ld a, [bc]                                       ; $6fc4: $0a
	jr @-$36                                         ; $6fc5: $18 $c8

	dec hl                                           ; $6fc7: $2b
	jr jr_036_6ff5                                   ; $6fc8: $18 $2b

	jr @+$2d                                         ; $6fca: $18 $2b

	jr jr_036_6f9d                                   ; $6fcc: $18 $cf

jr_036_6fce:
	inc h                                            ; $6fce: $24
	jr jr_036_6ff5                                   ; $6fcf: $18 $24

	jr jr_036_6f84                                   ; $6fd1: $18 $b1

	di                                               ; $6fd3: $f3
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	cp [hl]                                          ; $6fd6: $be
	ld b, $22                                        ; $6fd7: $06 $22
	inc h                                            ; $6fd9: $24
	ld h, $27                                        ; $6fda: $26 $27
	add hl, hl                                       ; $6fdc: $29
	dec hl                                           ; $6fdd: $2b
	inc l                                            ; $6fde: $2c
	dec l                                            ; $6fdf: $2d
	cp [hl]                                          ; $6fe0: $be

jr_036_6fe1:
	db $fd                                           ; $6fe1: $fd
	xor l                                            ; $6fe2: $ad

jr_036_6fe3:
	ld [hl], b                                       ; $6fe3: $70
	db $fd                                           ; $6fe4: $fd
	inc sp                                           ; $6fe5: $33
	ld [hl], c                                       ; $6fe6: $71
	db $fd                                           ; $6fe7: $fd
	ld a, a                                          ; $6fe8: $7f
	ld [hl], c                                       ; $6fe9: $71
	or l                                             ; $6fea: $b5

jr_036_6feb:
	di                                               ; $6feb: $f3
	ld bc, $0132                                     ; $6fec: $01 $32 $01
	nop                                              ; $6fef: $00
	inc c                                            ; $6ff0: $0c
	ld a, [hl+]                                      ; $6ff1: $2a
	jr @-$49                                         ; $6ff2: $18 $b5

	add e                                            ; $6ff4: $83

jr_036_6ff5:
	ld [bc], a                                       ; $6ff5: $02
	jr z, jr_036_6fff                                ; $6ff6: $28 $07

	ld a, [hl+]                                      ; $6ff8: $2a
	jr jr_036_6fce                                   ; $6ff9: $18 $d3

	ld a, [hl+]                                      ; $6ffb: $2a
	jr @-$2c                                         ; $6ffc: $18 $d2

	add hl, hl                                       ; $6ffe: $29

jr_036_6fff:
	jr jr_036_7028                                   ; $6fff: $18 $27

	jr jr_036_702a                                   ; $7001: $18 $27

	jr @+$2b                                         ; $7003: $18 $29

	jr jr_036_7031                                   ; $7005: $18 $2a

	inc c                                            ; $7007: $0c
	or c                                             ; $7008: $b1
	pop bc                                           ; $7009: $c1
	ld [hl-], a                                      ; $700a: $32
	inc b                                            ; $700b: $04
	ld [hl+], a                                      ; $700c: $22
	inc h                                            ; $700d: $24
	jr nz, @+$0e                                     ; $700e: $20 $0c

	jr nz, jr_036_7042                               ; $7010: $20 $30

	or l                                             ; $7012: $b5
	add c                                            ; $7013: $81
	inc bc                                           ; $7014: $03
	ld [hl-], a                                      ; $7015: $32
	ld bc, $0c00                                     ; $7016: $01 $00 $0c
	ld l, $18                                        ; $7019: $2e $18
	ld l, $18                                        ; $701b: $2e $18
	sub [hl]                                         ; $701d: $96

jr_036_701e:
	ld [hl-], a                                      ; $701e: $32
	inc b                                            ; $701f: $04
	inc l                                            ; $7020: $2c
	inc h                                            ; $7021: $24
	rst GetHLinHL                                          ; $7022: $cf
	pop de                                           ; $7023: $d1
	sub b                                            ; $7024: $90
	nop                                              ; $7025: $00
	jr jr_036_6fbe                                   ; $7026: $18 $96

jr_036_7028:
	ld e, $01                                        ; $7028: $1e $01

jr_036_702a:
	cp [hl]                                          ; $702a: $be
	inc h                                            ; $702b: $24
	inc e                                            ; $702c: $1c
	ld e, $1c                                        ; $702d: $1e $1c
	ld e, $be                                        ; $702f: $1e $be

jr_036_7031:
	ld e, $0c                                        ; $7031: $1e $0c
	sub [hl]                                         ; $7033: $96
	ld e, d                                          ; $7034: $5a
	rlca                                             ; $7035: $07
	cp l                                             ; $7036: $bd
	ld [bc], a                                       ; $7037: $02
	jr nz, @+$0e                                     ; $7038: $20 $0c

	ld d, h                                          ; $703a: $54
	jr nz, @+$08                                     ; $703b: $20 $06

	jr nz, @+$08                                     ; $703d: $20 $06

	jr nz, jr_036_704d                               ; $703f: $20 $0c

	push bc                                          ; $7041: $c5

jr_036_7042:
	jr nz, jr_036_704d                               ; $7042: $20 $09

	call nz, $0920                                   ; $7044: $c4 $20 $09
	jp $0620                                         ; $7047: $c3 $20 $06


	jp nz, $0620                                     ; $704a: $c2 $20 $06

jr_036_704d:
	rst $38                                          ; $704d: $ff
	or l                                             ; $704e: $b5
	db $d3                                           ; $704f: $d3
	ld [bc], a                                       ; $7050: $02
	inc d                                            ; $7051: $14
	inc bc                                           ; $7052: $03
	sub a                                            ; $7053: $97
	nop                                              ; $7054: $00
	cp [hl]                                          ; $7055: $be
	inc c                                            ; $7056: $0c
	add hl, de                                       ; $7057: $19
	jr nz, jr_036_707f                               ; $7058: $20 $25

jr_036_705a:
	add hl, hl                                       ; $705a: $29
	inc l                                            ; $705b: $2c
	add hl, hl                                       ; $705c: $29
	dec h                                            ; $705d: $25
	jr nz, jr_036_701e                               ; $705e: $20 $be

	jp nc, $0cbe                                     ; $7060: $d2 $be $0c

	jr jr_036_7085                                   ; $7063: $18 $20

	inc h                                            ; $7065: $24
	daa                                              ; $7066: $27
	inc l                                            ; $7067: $2c
	daa                                              ; $7068: $27
	inc h                                            ; $7069: $24
	jr nz, jr_036_702a                               ; $706a: $20 $be

	db $d3                                           ; $706c: $d3

jr_036_706d:
	cp [hl]                                          ; $706d: $be
	inc c                                            ; $706e: $0c
	ld d, $22                                        ; $706f: $16 $22
	dec h                                            ; $7071: $25
	add hl, hl                                       ; $7072: $29
	ld l, $29                                        ; $7073: $2e $29
	dec h                                            ; $7075: $25
	ld [hl+], a                                      ; $7076: $22
	cp [hl]                                          ; $7077: $be
	jp nc, $0cbe                                     ; $7078: $d2 $be $0c

	ld [de], a                                       ; $707b: $12
	ld [hl+], a                                      ; $707c: $22
	dec h                                            ; $707d: $25
	ld a, [hl+]                                      ; $707e: $2a

jr_036_707f:
	ld l, $2a                                        ; $707f: $2e $2a
	dec h                                            ; $7081: $25
	ld [hl+], a                                      ; $7082: $22

Jump_036_7083:
	cp [hl]                                          ; $7083: $be
	db $d3                                           ; $7084: $d3

jr_036_7085:
	cp [hl]                                          ; $7085: $be
	inc c                                            ; $7086: $0c
	dec de                                           ; $7087: $1b
	ld [hl+], a                                      ; $7088: $22
	dec h                                            ; $7089: $25
	ld a, [hl+]                                      ; $708a: $2a
	ld l, $2a                                        ; $708b: $2e $2a
	dec h                                            ; $708d: $25
	ld [hl+], a                                      ; $708e: $22
	cp [hl]                                          ; $708f: $be
	jp nc, $0cbe                                     ; $7090: $d2 $be $0c

	dec e                                            ; $7093: $1d
	jr nz, jr_036_70ba                               ; $7094: $20 $24

	add hl, hl                                       ; $7096: $29
	inc l                                            ; $7097: $2c
	add hl, hl                                       ; $7098: $29

jr_036_7099:
	inc h                                            ; $7099: $24
	jr nz, jr_036_705a                               ; $709a: $20 $be

	db $d3                                           ; $709c: $d3
	cp [hl]                                          ; $709d: $be
	inc c                                            ; $709e: $0c

jr_036_709f:
	ld e, $22                                        ; $709f: $1e $22
	dec h                                            ; $70a1: $25
	ld a, [hl+]                                      ; $70a2: $2a

jr_036_70a3:
	cp [hl]                                          ; $70a3: $be
	jp nc, $0cbe                                     ; $70a4: $d2 $be $0c

	jr nz, jr_036_70cd                               ; $70a7: $20 $24

	daa                                              ; $70a9: $27
	inc l                                            ; $70aa: $2c
	cp [hl]                                          ; $70ab: $be
	db $fd                                           ; $70ac: $fd
	or l                                             ; $70ad: $b5
	di                                               ; $70ae: $f3
	ld bc, $020f                                     ; $70af: $01 $0f $02
	ld a, [hl]                                       ; $70b2: $7e
	cpl                                              ; $70b3: $2f
	rrca                                             ; $70b4: $0f
	dec h                                            ; $70b5: $25
	jr jr_036_706d                                   ; $70b6: $18 $b5

	di                                               ; $70b8: $f3
	ld [bc], a                                       ; $70b9: $02

jr_036_70ba:
	inc a                                            ; $70ba: $3c
	dec b                                            ; $70bb: $05
	ld a, [hl]                                       ; $70bc: $7e
	nop                                              ; $70bd: $00
	ret                                              ; $70be: $c9


	nop                                              ; $70bf: $00
	inc c                                            ; $70c0: $0c
	ld l, $18                                        ; $70c1: $2e $18
	db $d3                                           ; $70c3: $d3
	ld a, [hl+]                                      ; $70c4: $2a
	jr jr_036_7099                                   ; $70c5: $18 $d2

	ld l, $18                                        ; $70c7: $2e $18
	db $d3                                           ; $70c9: $d3
	inc l                                            ; $70ca: $2c
	jr jr_036_709f                                   ; $70cb: $18 $d2

jr_036_70cd:
	ld a, [hl+]                                      ; $70cd: $2a
	jr jr_036_70a3                                   ; $70ce: $18 $d3

jr_036_70d0:
	add hl, hl                                       ; $70d0: $29
	jr @-$2c                                         ; $70d1: $18 $d2

	daa                                              ; $70d3: $27
	inc c                                            ; $70d4: $0c
	call Call_036_7ed1                               ; $70d5: $cd $d1 $7e
	dec l                                            ; $70d8: $2d
	inc d                                            ; $70d9: $14

jr_036_70da:
	and b                                            ; $70da: $a0
	jr nz, jr_036_710d                               ; $70db: $20 $30

	ld [hl+], a                                      ; $70dd: $22
	jr nc, jr_036_7104                               ; $70de: $30 $24

jr_036_70e0:
	jr nc, jr_036_7107                               ; $70e0: $30 $25

jr_036_70e2:
	inc h                                            ; $70e2: $24
	ld a, [hl]                                       ; $70e3: $7e
	nop                                              ; $70e4: $00
	jp z, $91d2                                      ; $70e5: $ca $d2 $91

	dec h                                            ; $70e8: $25
	add hl, bc                                       ; $70e9: $09
	nop                                              ; $70ea: $00
	inc bc                                           ; $70eb: $03
	or c                                             ; $70ec: $b1
	ldh a, [c]                                       ; $70ed: $f2
	rrca                                             ; $70ee: $0f
	ld [bc], a                                       ; $70ef: $02
	ld a, [hl]                                       ; $70f0: $7e
	cpl                                              ; $70f1: $2f
	rrca                                             ; $70f2: $0f

jr_036_70f3:
	dec h                                            ; $70f3: $25
	jr @-$68                                         ; $70f4: $18 $96

	jr z, @+$09                                      ; $70f6: $28 $07

	sub d                                            ; $70f8: $92
	ld a, [hl]                                       ; $70f9: $7e
	nop                                              ; $70fa: $00
	ret                                              ; $70fb: $c9


	nop                                              ; $70fc: $00
	inc c                                            ; $70fd: $0c
	ld l, $18                                        ; $70fe: $2e $18
	db $d3                                           ; $7100: $d3
	ld a, [hl+]                                      ; $7101: $2a
	jr @-$2c                                         ; $7102: $18 $d2

jr_036_7104:
	add hl, hl                                       ; $7104: $29
	jr jr_036_70da                                   ; $7105: $18 $d3

jr_036_7107:
	daa                                              ; $7107: $27
	jr @-$2c                                         ; $7108: $18 $d2

	inc h                                            ; $710a: $24
	jr jr_036_70e0                                   ; $710b: $18 $d3

jr_036_710d:
	dec h                                            ; $710d: $25
	jr jr_036_70e2                                   ; $710e: $18 $d2

	daa                                              ; $7110: $27
	inc h                                            ; $7111: $24
	pop de                                           ; $7112: $d1
	rst GetHLinHL                                          ; $7113: $cf
	jr nz, jr_036_712e                               ; $7114: $20 $18

	dec h                                            ; $7116: $25
	jr @+$26                                         ; $7117: $18 $24

	jr jr_036_70d0                                   ; $7119: $18 $b5

	ldh a, [c]                                       ; $711b: $f2
	inc bc                                           ; $711c: $03
	ld [hl], e                                       ; $711d: $73
	rlca                                             ; $711e: $07

jr_036_711f:
	cp [hl]                                          ; $711f: $be
	ld b, $17                                        ; $7120: $06 $17
	ld d, $17                                        ; $7122: $16 $17
	add hl, de                                       ; $7124: $19

jr_036_7125:
	dec de                                           ; $7125: $1b
	inc e                                            ; $7126: $1c
	dec e                                            ; $7127: $1d
	ld e, $20                                        ; $7128: $1e $20
	ld [hl+], a                                      ; $712a: $22

jr_036_712b:
	inc hl                                           ; $712b: $23
	dec h                                            ; $712c: $25
	daa                                              ; $712d: $27

jr_036_712e:
	add hl, hl                                       ; $712e: $29
	ld a, [hl+]                                      ; $712f: $2a
	inc l                                            ; $7130: $2c
	cp [hl]                                          ; $7131: $be
	db $fd                                           ; $7132: $fd
	or l                                             ; $7133: $b5
	di                                               ; $7134: $f3
	ld bc, $020f                                     ; $7135: $01 $0f $02
	ld a, [hl]                                       ; $7138: $7e
	cpl                                              ; $7139: $2f
	rrca                                             ; $713a: $0f
	dec h                                            ; $713b: $25
	jr jr_036_70f3                                   ; $713c: $18 $b5

jr_036_713e:
	di                                               ; $713e: $f3
	ld [bc], a                                       ; $713f: $02
	inc a                                            ; $7140: $3c
	dec b                                            ; $7141: $05
	ld a, [hl]                                       ; $7142: $7e
	nop                                              ; $7143: $00
	jp z, $0c00                                      ; $7144: $ca $00 $0c

	ld l, $18                                        ; $7147: $2e $18
	db $d3                                           ; $7149: $d3
	ld a, [hl+]                                      ; $714a: $2a
	jr jr_036_711f                                   ; $714b: $18 $d2

jr_036_714d:
	ld l, $18                                        ; $714d: $2e $18
	db $d3                                           ; $714f: $d3
	inc l                                            ; $7150: $2c
	jr jr_036_7125                                   ; $7151: $18 $d2

	ld a, [hl+]                                      ; $7153: $2a
	jr @-$2b                                         ; $7154: $18 $d3

	add hl, hl                                       ; $7156: $29
	jr jr_036_712b                                   ; $7157: $18 $d2

	ld a, [hl+]                                      ; $7159: $2a
	inc c                                            ; $715a: $0c
	call Call_036_7ed1                               ; $715b: $cd $d1 $7e
	inc l                                            ; $715e: $2c
	inc d                                            ; $715f: $14
	xor c                                            ; $7160: $a9
	dec e                                            ; $7161: $1d
	jr nc, jr_036_717f                               ; $7162: $30 $1b

	jr nc, jr_036_717f                               ; $7164: $30 $19

	inc c                                            ; $7166: $0c
	ld a, [hl]                                       ; $7167: $7e
	nop                                              ; $7168: $00
	rst GetHLinHL                                          ; $7169: $cf
	db $d3                                           ; $716a: $d3
	sub c                                            ; $716b: $91
	ld a, [hl]                                       ; $716c: $7e
	cpl                                              ; $716d: $2f
	dec c                                            ; $716e: $0d
	sub [hl]                                         ; $716f: $96
	ld b, [hl]                                       ; $7170: $46
	ld [bc], a                                       ; $7171: $02
	ld l, $18                                        ; $7172: $2e $18
	dec h                                            ; $7174: $25
	jr @+$80                                         ; $7175: $18 $7e

	nop                                              ; $7177: $00
	dec h                                            ; $7178: $25
	inc c                                            ; $7179: $0c
	daa                                              ; $717a: $27
	inc c                                            ; $717b: $0c
	add hl, hl                                       ; $717c: $29
	inc c                                            ; $717d: $0c
	db $fd                                           ; $717e: $fd

jr_036_717f:
	or l                                             ; $717f: $b5
	pop de                                           ; $7180: $d1
	ld bc, $0132                                     ; $7181: $01 $32 $01
	nop                                              ; $7184: $00
	inc c                                            ; $7185: $0c
	ld a, [hl+]                                      ; $7186: $2a
	jr jr_036_713e                                   ; $7187: $18 $b5

	sub e                                            ; $7189: $93
	ld [bc], a                                       ; $718a: $02
	inc a                                            ; $718b: $3c
	dec b                                            ; $718c: $05
	ld a, [hl+]                                      ; $718d: $2a
	jr @-$2b                                         ; $718e: $18 $d3

	ld a, [hl+]                                      ; $7190: $2a
	jr @-$2c                                         ; $7191: $18 $d2

	add hl, hl                                       ; $7193: $29
	jr jr_036_71bd                                   ; $7194: $18 $27

	jr jr_036_71bf                                   ; $7196: $18 $27

	jr jr_036_71bf                                   ; $7198: $18 $25

	jr @+$26                                         ; $719a: $18 $24

	inc c                                            ; $719c: $0c
	ret                                              ; $719d: $c9


	pop de                                           ; $719e: $d1
	ld a, [hl]                                       ; $719f: $7e
	dec l                                            ; $71a0: $2d
	inc d                                            ; $71a1: $14
	and b                                            ; $71a2: $a0
	ld a, [hl+]                                      ; $71a3: $2a
	inc h                                            ; $71a4: $24
	add hl, hl                                       ; $71a5: $29
	inc c                                            ; $71a6: $0c
	add hl, hl                                       ; $71a7: $29
	jr nc, jr_036_7228                               ; $71a8: $30 $7e

	nop                                              ; $71aa: $00
	or l                                             ; $71ab: $b5
	sub c                                            ; $71ac: $91
	inc bc                                           ; $71ad: $03
	ld [hl-], a                                      ; $71ae: $32
	ld bc, $0c00                                     ; $71af: $01 $00 $0c

jr_036_71b2:
	daa                                              ; $71b2: $27
	jr jr_036_71dc                                   ; $71b3: $18 $27

	jr jr_036_714d                                   ; $71b5: $18 $96

	ld [hl-], a                                      ; $71b7: $32
	inc b                                            ; $71b8: $04
	dec h                                            ; $71b9: $25
	inc h                                            ; $71ba: $24
	db $fd                                           ; $71bb: $fd
	or h                                             ; $71bc: $b4

jr_036_71bd:
	adc h                                            ; $71bd: $8c
	pop bc                                           ; $71be: $c1

jr_036_71bf:
	ld bc, $2896                                     ; $71bf: $01 $96 $28
	rlca                                             ; $71c2: $07
	db $fd                                           ; $71c3: $fd
	cp $73                                           ; $71c4: $fe $73
	inc a                                            ; $71c6: $3c
	ld b, $7e                                        ; $71c7: $06 $7e
	dec l                                            ; $71c9: $2d
	inc a                                            ; $71ca: $3c
	xor c                                            ; $71cb: $a9
	dec a                                            ; $71cc: $3d
	ld l, h                                          ; $71cd: $6c
	or l                                             ; $71ce: $b5
	di                                               ; $71cf: $f3
	ld [bc], a                                       ; $71d0: $02
	ld c, e                                          ; $71d1: $4b
	ld [bc], a                                       ; $71d2: $02
	inc l                                            ; $71d3: $2c
	inc c                                            ; $71d4: $0c
	jp z, $0c2c                                      ; $71d5: $ca $2c $0c

	rst GetHLinHL                                          ; $71d8: $cf
	jp nc, $0c31                                     ; $71d9: $d2 $31 $0c

jr_036_71dc:
	jp z, $0c31                                      ; $71dc: $ca $31 $0c

	rst GetHLinHL                                          ; $71df: $cf
	db $d3                                           ; $71e0: $d3
	inc sp                                           ; $71e1: $33
	inc c                                            ; $71e2: $0c
	jp z, $0c33                                      ; $71e3: $ca $33 $0c

	rst GetHLinHL                                          ; $71e6: $cf
	jp nc, $0c38                                     ; $71e7: $d2 $38 $0c

	sub d                                            ; $71ea: $92
	ld [hl], b                                       ; $71eb: $70
	rst JumpTable                                          ; $71ec: $c7
	jr c, jr_036_71fb                                ; $71ed: $38 $0c

	db $fd                                           ; $71ef: $fd
	inc h                                            ; $71f0: $24
	ld [hl], h                                       ; $71f1: $74
	ld a, [hl]                                       ; $71f2: $7e
	inc l                                            ; $71f3: $2c
	ld e, $a0                                        ; $71f4: $1e $a0
	ld [hl+], a                                      ; $71f6: $22
	ld [hl], $7e                                     ; $71f7: $36 $7e
	nop                                              ; $71f9: $00
	or l                                             ; $71fa: $b5

jr_036_71fb:
	ld [hl], d                                       ; $71fb: $72
	ld bc, $0773                                     ; $71fc: $01 $73 $07
	ld h, $0c                                        ; $71ff: $26 $0c
	daa                                              ; $7201: $27
	inc c                                            ; $7202: $0c
	ld a, [hl]                                       ; $7203: $7e
	inc l                                            ; $7204: $2c
	ld a, [bc]                                       ; $7205: $0a
	and b                                            ; $7206: $a0
	ld l, $1e                                        ; $7207: $2e $1e
	ld a, [hl]                                       ; $7209: $7e
	nop                                              ; $720a: $00
	db $fd                                           ; $720b: $fd
	inc h                                            ; $720c: $24
	ld [hl], h                                       ; $720d: $74
	ld a, [hl]                                       ; $720e: $7e
	inc l                                            ; $720f: $2c
	jr z, jr_036_71b2                                ; $7210: $28 $a0

	ld [hl+], a                                      ; $7212: $22
	ld d, h                                          ; $7213: $54
	ld a, [hl]                                       ; $7214: $7e
	nop                                              ; $7215: $00
	adc $d3                                          ; $7216: $ce $d3
	sub c                                            ; $7218: $91
	jr z, jr_036_7221                                ; $7219: $28 $06

	add hl, hl                                       ; $721b: $29
	ld b, $fd                                        ; $721c: $06 $fd
	and b                                            ; $721e: $a0
	ld [hl], e                                       ; $721f: $73
	db $fd                                           ; $7220: $fd

jr_036_7221:
	ld [hl], a                                       ; $7221: $77
	ld [hl], h                                       ; $7222: $74
	db $fd                                           ; $7223: $fd
	xor l                                            ; $7224: $ad
	ld [hl], h                                       ; $7225: $74
	sub [hl]                                         ; $7226: $96
	ld [hl-], a                                      ; $7227: $32

jr_036_7228:
	rlca                                             ; $7228: $07
	sub a                                            ; $7229: $97
	ld e, a                                          ; $722a: $5f
	pop de                                           ; $722b: $d1
	sub b                                            ; $722c: $90
	rst GetHLinHL                                          ; $722d: $cf
	inc sp                                           ; $722e: $33
	ld h, b                                          ; $722f: $60
	sub [hl]                                         ; $7230: $96
	ld e, $07                                        ; $7231: $1e $07
	sub a                                            ; $7233: $97
	ld a, d                                          ; $7234: $7a
	dec [hl]                                         ; $7235: $35
	inc h                                            ; $7236: $24
	inc sp                                           ; $7237: $33
	inc h                                            ; $7238: $24
	ld sp, $9618                                     ; $7239: $31 $18 $96
	ld [hl-], a                                      ; $723c: $32
	rlca                                             ; $723d: $07
	sub a                                            ; $723e: $97
	ld e, a                                          ; $723f: $5f
	inc l                                            ; $7240: $2c
	ld h, b                                          ; $7241: $60
	sub c                                            ; $7242: $91
	sub a                                            ; $7243: $97
	nop                                              ; $7244: $00
	call $bed3                                       ; $7245: $cd $d3 $be
	inc c                                            ; $7248: $0c
	daa                                              ; $7249: $27
	add hl, hl                                       ; $724a: $29
	nop                                              ; $724b: $00
	ld a, [hl+]                                      ; $724c: $2a
	nop                                              ; $724d: $00
	cp [hl]                                          ; $724e: $be
	inc l                                            ; $724f: $2c
	inc h                                            ; $7250: $24
	pop de                                           ; $7251: $d1
	rst GetHLinHL                                          ; $7252: $cf
	sub a                                            ; $7253: $97
	ld e, a                                          ; $7254: $5f
	sub b                                            ; $7255: $90
	inc sp                                           ; $7256: $33
	ld h, b                                          ; $7257: $60
	sub [hl]                                         ; $7258: $96
	ld e, $07                                        ; $7259: $1e $07
	sub a                                            ; $725b: $97
	ld a, d                                          ; $725c: $7a
	dec [hl]                                         ; $725d: $35
	inc h                                            ; $725e: $24
	inc sp                                           ; $725f: $33
	inc h                                            ; $7260: $24
	ld sp, $9618                                     ; $7261: $31 $18 $96
	ld [hl-], a                                      ; $7264: $32

jr_036_7265:
	rlca                                             ; $7265: $07
	sub a                                            ; $7266: $97
	ld e, a                                          ; $7267: $5f
	jr nc, jr_036_72ca                               ; $7268: $30 $60

	sub [hl]                                         ; $726a: $96
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	sub d                                            ; $726d: $92

jr_036_726e:
	sub a                                            ; $726e: $97
	nop                                              ; $726f: $00
	adc $d2                                          ; $7270: $ce $d2
	cp [hl]                                          ; $7272: $be
	ld b, $21                                        ; $7273: $06 $21
	rra                                              ; $7275: $1f
	ld hl, $2422                                     ; $7276: $21 $22 $24

jr_036_7279:
	ld h, $27                                        ; $7279: $26 $27
	add hl, hl                                       ; $727b: $29
	dec l                                            ; $727c: $2d

jr_036_727d:
	dec hl                                           ; $727d: $2b
	add hl, hl                                       ; $727e: $29
	dec hl                                           ; $727f: $2b
	dec l                                            ; $7280: $2d
	ld l, $30                                        ; $7281: $2e $30
	ld sp, $96be                                     ; $7283: $31 $be $96
	ld [hl-], a                                      ; $7286: $32
	inc bc                                           ; $7287: $03
	sub a                                            ; $7288: $97
	sbc c                                            ; $7289: $99
	pop de                                           ; $728a: $d1
	sub d                                            ; $728b: $92
	adc $26                                          ; $728c: $ce $26
	inc h                                            ; $728e: $24
	ld [hl+], a                                      ; $728f: $22
	inc c                                            ; $7290: $0c
	ld h, $0c                                        ; $7291: $26 $0c
	dec hl                                           ; $7293: $2b
	jr jr_036_72bf                                   ; $7294: $18 $29

	inc h                                            ; $7296: $24
	daa                                              ; $7297: $27
	jr jr_036_72c0                                   ; $7298: $18 $26

	jr jr_036_72c0                                   ; $729a: $18 $24

	jr @+$28                                         ; $729c: $18 $26

	inc h                                            ; $729e: $24
	ld [hl+], a                                      ; $729f: $22
	inc c                                            ; $72a0: $0c
	ld h, $0c                                        ; $72a1: $26 $0c
	inc l                                            ; $72a3: $2c
	jr jr_036_72d1                                   ; $72a4: $18 $2b

	inc h                                            ; $72a6: $24
	inc l                                            ; $72a7: $2c
	jr jr_036_72d5                                   ; $72a8: $18 $2b

	jr jr_036_72d2                                   ; $72aa: $18 $26

jr_036_72ac:
	jr jr_036_72d5                                   ; $72ac: $18 $27

	inc h                                            ; $72ae: $24
	daa                                              ; $72af: $27
	inc c                                            ; $72b0: $0c
	ld h, $0c                                        ; $72b1: $26 $0c
	daa                                              ; $72b3: $27
	jr jr_036_727d                                   ; $72b4: $18 $c7

	sub a                                            ; $72b6: $97
	nop                                              ; $72b7: $00
	sub [hl]                                         ; $72b8: $96
	ld d, b                                          ; $72b9: $50
	rlca                                             ; $72ba: $07
	inc h                                            ; $72bb: $24
	ld d, h                                          ; $72bc: $54
	sub a                                            ; $72bd: $97
	sbc c                                            ; $72be: $99

jr_036_72bf:
	or c                                             ; $72bf: $b1

jr_036_72c0:
	pop af                                           ; $72c0: $f1
	ld [hl-], a                                      ; $72c1: $32
	inc bc                                           ; $72c2: $03
	ld h, $18                                        ; $72c3: $26 $18
	daa                                              ; $72c5: $27
	jr jr_036_72ee                                   ; $72c6: $18 $26

	jr jr_036_72ee                                   ; $72c8: $18 $24

jr_036_72ca:
	inc c                                            ; $72ca: $0c
	ld [hl+], a                                      ; $72cb: $22
	jr jr_036_7265                                   ; $72cc: $18 $97

	nop                                              ; $72ce: $00
	ret z                                            ; $72cf: $c8

	inc h                                            ; $72d0: $24

jr_036_72d1:
	inc c                                            ; $72d1: $0c

jr_036_72d2:
	call z, $91d3                                    ; $72d2: $cc $d3 $91

jr_036_72d5:
	dec l                                            ; $72d5: $2d
	jr jr_036_726e                                   ; $72d6: $18 $96

	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	sub a                                            ; $72da: $97
	ld c, h                                          ; $72db: $4c
	add hl, hl                                       ; $72dc: $29
	jr @+$2d                                         ; $72dd: $18 $2b

	jr jr_036_730e                                   ; $72df: $18 $2d

	jr jr_036_7279                                   ; $72e1: $18 $96

	ld [hl-], a                                      ; $72e3: $32
	inc bc                                           ; $72e4: $03
	sub a                                            ; $72e5: $97
	xor c                                            ; $72e6: $a9
	pop de                                           ; $72e7: $d1
	sub d                                            ; $72e8: $92
	rst GetHLinHL                                          ; $72e9: $cf
	ld h, $24                                        ; $72ea: $26 $24
	ld [hl+], a                                      ; $72ec: $22
	inc c                                            ; $72ed: $0c

jr_036_72ee:
	ld h, $0c                                        ; $72ee: $26 $0c
	dec hl                                           ; $72f0: $2b
	jr jr_036_731c                                   ; $72f1: $18 $29

	inc h                                            ; $72f3: $24
	daa                                              ; $72f4: $27
	jr jr_036_731d                                   ; $72f5: $18 $26

	jr jr_036_731d                                   ; $72f7: $18 $24

	jr @-$67                                         ; $72f9: $18 $97

	cp c                                             ; $72fb: $b9
	ld h, $24                                        ; $72fc: $26 $24
	ld [hl+], a                                      ; $72fe: $22
	inc c                                            ; $72ff: $0c
	ld h, $0c                                        ; $7300: $26 $0c
	inc l                                            ; $7302: $2c
	jr jr_036_7330                                   ; $7303: $18 $2b

	inc h                                            ; $7305: $24

jr_036_7306:
	inc l                                            ; $7306: $2c
	jr jr_036_7334                                   ; $7307: $18 $2b

	jr jr_036_7331                                   ; $7309: $18 $26

	jr jr_036_7334                                   ; $730b: $18 $27

	inc h                                            ; $730d: $24

jr_036_730e:
	daa                                              ; $730e: $27
	inc c                                            ; $730f: $0c
	ld h, $0c                                        ; $7310: $26 $0c
	daa                                              ; $7312: $27
	jr jr_036_72ac                                   ; $7313: $18 $97

jr_036_7315:
	sbc e                                            ; $7315: $9b
	sub [hl]                                         ; $7316: $96
	ld d, b                                          ; $7317: $50
	rlca                                             ; $7318: $07
	inc h                                            ; $7319: $24

jr_036_731a:
	ld d, h                                          ; $731a: $54
	sub a                                            ; $731b: $97

jr_036_731c:
	ret                                              ; $731c: $c9


jr_036_731d:
	sub [hl]                                         ; $731d: $96
	ld [hl-], a                                      ; $731e: $32
	inc bc                                           ; $731f: $03
	ld h, $18                                        ; $7320: $26 $18
	daa                                              ; $7322: $27
	jr jr_036_734c                                   ; $7323: $18 $27

	jr jr_036_734d                                   ; $7325: $18 $26

	inc c                                            ; $7327: $0c
	daa                                              ; $7328: $27
	jr @+$2b                                         ; $7329: $18 $29

	inc h                                            ; $732b: $24
	adc $97                                          ; $732c: $ce $97
	nop                                              ; $732e: $00
	sub c                                            ; $732f: $91

jr_036_7330:
	sub [hl]                                         ; $7330: $96

jr_036_7331:
	ld [hl-], a                                      ; $7331: $32
	dec b                                            ; $7332: $05
	dec l                                            ; $7333: $2d

jr_036_7334:
	jr @+$30                                         ; $7334: $18 $2e

	jr jr_036_7368                                   ; $7336: $18 $30

	jr @-$01                                         ; $7338: $18 $fd

	and b                                            ; $733a: $a0
	ld [hl], e                                       ; $733b: $73
	db $fd                                           ; $733c: $fd
	ld [hl], a                                       ; $733d: $77
	ld [hl], h                                       ; $733e: $74
	db $fd                                           ; $733f: $fd
	xor l                                            ; $7340: $ad
	ld [hl], h                                       ; $7341: $74
	or l                                             ; $7342: $b5
	di                                               ; $7343: $f3
	ld bc, $0000                                     ; $7344: $01 $00 $00
	nop                                              ; $7347: $00
	inc c                                            ; $7348: $0c
	ld [hl+], a                                      ; $7349: $22
	inc c                                            ; $734a: $0c
	or l                                             ; $734b: $b5

jr_036_734c:
	or c                                             ; $734c: $b1

jr_036_734d:
	ld [bc], a                                       ; $734d: $02
	add hl, de                                       ; $734e: $19
	inc bc                                           ; $734f: $03
	ld a, [hl+]                                      ; $7350: $2a
	jr jr_036_737d                                   ; $7351: $18 $2a

	jr jr_036_737e                                   ; $7353: $18 $29

	jr jr_036_7315                                   ; $7355: $18 $be

	jr @+$29                                         ; $7357: $18 $27

	daa                                              ; $7359: $27
	add hl, hl                                       ; $735a: $29
	ld a, [hl+]                                      ; $735b: $2a
	cp [hl]                                          ; $735c: $be
	sra d                                            ; $735d: $cb $2a
	inc h                                            ; $735f: $24
	add hl, hl                                       ; $7360: $29

jr_036_7361:
	inc c                                            ; $7361: $0c
	add hl, hl                                       ; $7362: $29
	jr nc, jr_036_731a                               ; $7363: $30 $b5

	add c                                            ; $7365: $81
	inc bc                                           ; $7366: $03
	ld [hl-], a                                      ; $7367: $32

jr_036_7368:
	ld bc, $0c00                                     ; $7368: $01 $00 $0c
	ld a, [hl+]                                      ; $736b: $2a
	jr @+$2c                                         ; $736c: $18 $2a

	jr jr_036_7306                                   ; $736e: $18 $96

	ld [hl-], a                                      ; $7370: $32
	inc b                                            ; $7371: $04
	add hl, hl                                       ; $7372: $29
	inc h                                            ; $7373: $24
	set 2, c                                         ; $7374: $cb $d1
	sub c                                            ; $7376: $91
	sub [hl]                                         ; $7377: $96
	jr z, jr_036_7381                                ; $7378: $28 $07

	db $fd                                           ; $737a: $fd
	cp $73                                           ; $737b: $fe $73

jr_036_737d:
	rst GetHLinHL                                          ; $737d: $cf

jr_036_737e:
	ld a, [hl]                                       ; $737e: $7e
	ld l, $02                                        ; $737f: $2e $02

jr_036_7381:
	xor c                                            ; $7381: $a9
	dec a                                            ; $7382: $3d
	ld [de], a                                       ; $7383: $12
	nop                                              ; $7384: $00
	inc c                                            ; $7385: $0c
	ld a, [hl]                                       ; $7386: $7e
	dec l                                            ; $7387: $2d
	ld [hl-], a                                      ; $7388: $32
	and b                                            ; $7389: $a0
	sub b                                            ; $738a: $90
	ld e, $3c                                        ; $738b: $1e $3c

jr_036_738d:
	ld e, $06                                        ; $738d: $1e $06
	ld e, $06                                        ; $738f: $1e $06
	dec e                                            ; $7391: $1d
	inc c                                            ; $7392: $0c
	push bc                                          ; $7393: $c5
	dec e                                            ; $7394: $1d
	ld a, [bc]                                       ; $7395: $0a
	call nz, $091d                                   ; $7396: $c4 $1d $09
	jp $061d                                         ; $7399: $c3 $1d $06


	jp nz, $051d                                     ; $739c: $c2 $1d $05

	rst $38                                          ; $739f: $ff
	or l                                             ; $73a0: $b5
	di                                               ; $73a1: $f3
	ld bc, $020f                                     ; $73a2: $01 $0f $02
	ld a, [hl]                                       ; $73a5: $7e
	cpl                                              ; $73a6: $2f
	dec c                                            ; $73a7: $0d
	and b                                            ; $73a8: $a0
	ld a, [hl+]                                      ; $73a9: $2a
	jr jr_036_7361                                   ; $73aa: $18 $b5

	pop af                                           ; $73ac: $f1
	ld [bc], a                                       ; $73ad: $02
	add hl, de                                       ; $73ae: $19
	inc bc                                           ; $73af: $03
	ld a, [hl]                                       ; $73b0: $7e
	nop                                              ; $73b1: $00
	res 7, [hl]                                      ; $73b2: $cb $be
	jr jr_036_73e4                                   ; $73b4: $18 $2e

	ld a, [hl+]                                      ; $73b6: $2a
	ld l, $2c                                        ; $73b7: $2e $2c
	ld a, [hl+]                                      ; $73b9: $2a
	add hl, hl                                       ; $73ba: $29
	daa                                              ; $73bb: $27
	cp [hl]                                          ; $73bc: $be
	ld a, [hl]                                       ; $73bd: $7e
	inc l                                            ; $73be: $2c
	ld d, b                                          ; $73bf: $50
	xor c                                            ; $73c0: $a9
	add hl, hl                                       ; $73c1: $29
	inc h                                            ; $73c2: $24
	inc l                                            ; $73c3: $2c
	sub b                                            ; $73c4: $90
	ld a, [hl]                                       ; $73c5: $7e
	nop                                              ; $73c6: $00
	rst GetHLinHL                                          ; $73c7: $cf
	jp nc, $2891                                     ; $73c8: $d2 $91 $28

	ld b, $29                                        ; $73cb: $06 $29
	ld b, $96                                        ; $73cd: $06 $96

jr_036_73cf:
	rrca                                             ; $73cf: $0f
	ld [bc], a                                       ; $73d0: $02
	ld a, [hl]                                       ; $73d1: $7e
	cpl                                              ; $73d2: $2f
	dec c                                            ; $73d3: $0d
	and b                                            ; $73d4: $a0
	ld a, [hl+]                                      ; $73d5: $2a
	jr jr_036_738d                                   ; $73d6: $18 $b5

	pop af                                           ; $73d8: $f1
	ld [bc], a                                       ; $73d9: $02
	add hl, de                                       ; $73da: $19
	inc bc                                           ; $73db: $03
	ld a, [hl]                                       ; $73dc: $7e
	nop                                              ; $73dd: $00
	res 7, [hl]                                      ; $73de: $cb $be
	jr @+$30                                         ; $73e0: $18 $2e

	ld a, [hl+]                                      ; $73e2: $2a
	add hl, hl                                       ; $73e3: $29

jr_036_73e4:
	daa                                              ; $73e4: $27
	inc h                                            ; $73e5: $24
	dec h                                            ; $73e6: $25
	daa                                              ; $73e7: $27
	cp [hl]                                          ; $73e8: $be
	ld a, [hl]                                       ; $73e9: $7e
	dec l                                            ; $73ea: $2d
	inc a                                            ; $73eb: $3c
	and b                                            ; $73ec: $a0
	add hl, hl                                       ; $73ed: $29
	ld h, b                                          ; $73ee: $60
	ld a, [hl]                                       ; $73ef: $7e

jr_036_73f0:
	inc l                                            ; $73f0: $2c
	ld [hl-], a                                      ; $73f1: $32
	and b                                            ; $73f2: $a0
	inc hl                                           ; $73f3: $23
	ld d, h                                          ; $73f4: $54
	db $d3                                           ; $73f5: $d3
	ld a, [hl]                                       ; $73f6: $7e
	nop                                              ; $73f7: $00
	sub c                                            ; $73f8: $91
	jr z, jr_036_7401                                ; $73f9: $28 $06

	add hl, hl                                       ; $73fb: $29
	ld b, $fd                                        ; $73fc: $06 $fd
	cp [hl]                                          ; $73fe: $be
	ld b, $21                                        ; $73ff: $06 $21

jr_036_7401:
	inc hl                                           ; $7401: $23
	ld hl, $2120                                     ; $7402: $21 $20 $21
	inc hl                                           ; $7405: $23
	dec h                                            ; $7406: $25
	daa                                              ; $7407: $27
	jr z, @+$29                                      ; $7408: $28 $27

	dec h                                            ; $740a: $25
	daa                                              ; $740b: $27
	jr z, jr_036_7438                                ; $740c: $28 $2a

	inc l                                            ; $740e: $2c
	jr z, jr_036_73cf                                ; $740f: $28 $be

	cp [hl]                                          ; $7411: $be
	ld b, $2d                                        ; $7412: $06 $2d
	cpl                                              ; $7414: $2f
	dec l                                            ; $7415: $2d
	inc l                                            ; $7416: $2c
	dec l                                            ; $7417: $2d
	cpl                                              ; $7418: $2f
	ld sp, $3433                                     ; $7419: $31 $33 $34
	inc sp                                           ; $741c: $33
	inc [hl]                                         ; $741d: $34
	ld [hl], $38                                     ; $741e: $36 $38
	add hl, sp                                       ; $7420: $39
	dec sp                                           ; $7421: $3b
	cp [hl]                                          ; $7422: $be
	db $fd                                           ; $7423: $fd
	or l                                             ; $7424: $b5
	pop bc                                           ; $7425: $c1
	inc bc                                           ; $7426: $03
	add hl, de                                       ; $7427: $19
	inc bc                                           ; $7428: $03
	nop                                              ; $7429: $00
	inc c                                            ; $742a: $0c
	dec h                                            ; $742b: $25
	jr jr_036_7455                                   ; $742c: $18 $27

	jr jr_036_7459                                   ; $742e: $18 $29

	jr jr_036_73f0                                   ; $7430: $18 $be

	jr @+$29                                         ; $7432: $18 $27

	inc l                                            ; $7434: $2c
	daa                                              ; $7435: $27
	inc h                                            ; $7436: $24

jr_036_7437:
	cp [hl]                                          ; $7437: $be

jr_036_7438:
	dec h                                            ; $7438: $25
	inc h                                            ; $7439: $24
	daa                                              ; $743a: $27
	inc c                                            ; $743b: $0c
	dec h                                            ; $743c: $25
	inc h                                            ; $743d: $24
	inc h                                            ; $743e: $24
	inc c                                            ; $743f: $0c
	ld [hl+], a                                      ; $7440: $22
	inc c                                            ; $7441: $0c
	or l                                             ; $7442: $b5
	or c                                             ; $7443: $b1
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	sub a                                            ; $7447: $97
	sbc a                                            ; $7448: $9f
	ld l, h                                          ; $7449: $6c
	cp [hl]                                          ; $744a: $be
	inc c                                            ; $744b: $0c
	ld d, $19                                        ; $744c: $16 $19
	jr nz, jr_036_746e                               ; $744e: $20 $1e

	dec e                                            ; $7450: $1d
	dec de                                           ; $7451: $1b
	dec e                                            ; $7452: $1d
	cp [hl]                                          ; $7453: $be
	sub [hl]                                         ; $7454: $96

jr_036_7455:
	add hl, de                                       ; $7455: $19
	inc bc                                           ; $7456: $03
	sub a                                            ; $7457: $97
	nop                                              ; $7458: $00

jr_036_7459:
	call z, $1819                                    ; $7459: $cc $19 $18
	sub e                                            ; $745c: $93
	ld [hl], b                                       ; $745d: $70
	sla d                                            ; $745e: $cb $22
	jr jr_036_7487                                   ; $7460: $18 $25

	jr @+$29                                         ; $7462: $18 $27

	inc c                                            ; $7464: $0c
	ld a, [hl+]                                      ; $7465: $2a
	inc c                                            ; $7466: $0c
	cp [hl]                                          ; $7467: $be
	jr jr_036_7491                                   ; $7468: $18 $27

	inc h                                            ; $746a: $24
	jr nz, jr_036_7491                               ; $746b: $20 $24

	cp [hl]                                          ; $746d: $be

jr_036_746e:
	dec h                                            ; $746e: $25
	inc h                                            ; $746f: $24
	ld [hl+], a                                      ; $7470: $22
	inc c                                            ; $7471: $0c
	inc h                                            ; $7472: $24
	inc h                                            ; $7473: $24
	jr nz, jr_036_7482                               ; $7474: $20 $0c

jr_036_7476:
	db $fd                                           ; $7476: $fd
	or l                                             ; $7477: $b5
	di                                               ; $7478: $f3
	ld bc, $020f                                     ; $7479: $01 $0f $02
	ld a, [hl]                                       ; $747c: $7e
	cpl                                              ; $747d: $2f
	dec c                                            ; $747e: $0d
	ld a, [hl+]                                      ; $747f: $2a

jr_036_7480:
	jr jr_036_7437                                   ; $7480: $18 $b5

jr_036_7482:
	pop af                                           ; $7482: $f1
	ld [bc], a                                       ; $7483: $02
	add hl, de                                       ; $7484: $19
	inc bc                                           ; $7485: $03
	ld a, [hl]                                       ; $7486: $7e

jr_036_7487:
	nop                                              ; $7487: $00
	res 7, [hl]                                      ; $7488: $cb $be
	jr jr_036_74ba                                   ; $748a: $18 $2e

	ld a, [hl+]                                      ; $748c: $2a
	ld l, $2c                                        ; $748d: $2e $2c
	ld a, [hl+]                                      ; $748f: $2a
	add hl, hl                                       ; $7490: $29

jr_036_7491:
	ld a, [hl+]                                      ; $7491: $2a
	cp [hl]                                          ; $7492: $be
	inc l                                            ; $7493: $2c
	jr nc, @+$2b                                     ; $7494: $30 $29

	inc c                                            ; $7496: $0c
	inc l                                            ; $7497: $2c
	jr @+$2b                                         ; $7498: $18 $29

	inc c                                            ; $749a: $0c
	ld a, [hl]                                       ; $749b: $7e
	inc l                                            ; $749c: $2c
	inc hl                                           ; $749d: $23
	xor c                                            ; $749e: $a9
	dec h                                            ; $749f: $25
	inc a                                            ; $74a0: $3c
	ld a, [hl]                                       ; $74a1: $7e
	nop                                              ; $74a2: $00
	db $d3                                           ; $74a3: $d3
	sub c                                            ; $74a4: $91
	rst GetHLinHL                                          ; $74a5: $cf
	dec e                                            ; $74a6: $1d
	inc c                                            ; $74a7: $0c
	ld e, $0c                                        ; $74a8: $1e $0c
	jr nz, jr_036_74b8                               ; $74aa: $20 $0c

	db $fd                                           ; $74ac: $fd
	or l                                             ; $74ad: $b5
	pop de                                           ; $74ae: $d1
	ld bc, $0000                                     ; $74af: $01 $00 $00
	nop                                              ; $74b2: $00
	inc c                                            ; $74b3: $0c
	ld [hl+], a                                      ; $74b4: $22
	inc c                                            ; $74b5: $0c
	or l                                             ; $74b6: $b5
	or c                                             ; $74b7: $b1

jr_036_74b8:
	ld [bc], a                                       ; $74b8: $02
	add hl, de                                       ; $74b9: $19

jr_036_74ba:
	inc bc                                           ; $74ba: $03
	ld a, [hl+]                                      ; $74bb: $2a
	jr @+$2c                                         ; $74bc: $18 $2a

	jr @+$2b                                         ; $74be: $18 $29

	jr jr_036_7480                                   ; $74c0: $18 $be

	jr @+$29                                         ; $74c2: $18 $27

	daa                                              ; $74c4: $27
	dec h                                            ; $74c5: $25
	inc h                                            ; $74c6: $24
	cp [hl]                                          ; $74c7: $be
	ld a, [hl]                                       ; $74c8: $7e
	inc l                                            ; $74c9: $2c
	inc d                                            ; $74ca: $14
	xor c                                            ; $74cb: $a9
	daa                                              ; $74cc: $27
	inc h                                            ; $74cd: $24
	dec h                                            ; $74ce: $25
	inc c                                            ; $74cf: $0c
	dec h                                            ; $74d0: $25
	jr nc, jr_036_7551                               ; $74d1: $30 $7e

	nop                                              ; $74d3: $00
	or l                                             ; $74d4: $b5

jr_036_74d5:
	sub c                                            ; $74d5: $91
	inc bc                                           ; $74d6: $03
	ld [hl-], a                                      ; $74d7: $32
	ld bc, $0c00                                     ; $74d8: $01 $00 $0c
	ld a, [hl+]                                      ; $74db: $2a
	jr @+$2c                                         ; $74dc: $18 $2a

	jr jr_036_7476                                   ; $74de: $18 $96

	ld [hl-], a                                      ; $74e0: $32
	inc b                                            ; $74e1: $04
	add hl, hl                                       ; $74e2: $29
	inc h                                            ; $74e3: $24
	db $fd                                           ; $74e4: $fd
	or [hl]                                          ; $74e5: $b6
	adc h                                            ; $74e6: $8c
	ld hl, $0223                                     ; $74e7: $21 $23 $02
	ld bc, $86fd                                     ; $74ea: $01 $fd $86
	ld [hl], a                                       ; $74ed: $77
	db $fd                                           ; $74ee: $fd
	sbc b                                            ; $74ef: $98
	ld [hl], a                                       ; $74f0: $77
	db $fd                                           ; $74f1: $fd
	xor d                                            ; $74f2: $aa
	ld [hl], a                                       ; $74f3: $77
	db $fd                                           ; $74f4: $fd
	xor d                                            ; $74f5: $aa
	ld [hl], a                                       ; $74f6: $77
	jp nz, Jump_036_7fd1                             ; $74f7: $c2 $d1 $7f

	inc hl                                           ; $74fa: $23
	db $fd                                           ; $74fb: $fd
	cp h                                             ; $74fc: $bc
	ld [hl], a                                       ; $74fd: $77
	cp [hl]                                          ; $74fe: $be
	inc c                                            ; $74ff: $0c
	ld [hl+], a                                      ; $7500: $22
	dec e                                            ; $7501: $1d
	ld d, $22                                        ; $7502: $16 $22
	ld d, $22                                        ; $7504: $16 $22
	cp [hl]                                          ; $7506: $be
	jr nz, jr_036_7521                               ; $7507: $20 $18

	db $fd                                           ; $7509: $fd
	cp h                                             ; $750a: $bc
	ld [hl], a                                       ; $750b: $77
	cp [hl]                                          ; $750c: $be
	inc c                                            ; $750d: $0c
	ld [hl+], a                                      ; $750e: $22
	ld d, $00                                        ; $750f: $16 $00
	ld d, $00                                        ; $7511: $16 $00
	ld [hl+], a                                      ; $7513: $22
	inc d                                            ; $7514: $14
	jr nz, jr_036_74d5                               ; $7515: $20 $be

	or l                                             ; $7517: $b5
	ld hl, $0223                                     ; $7518: $21 $23 $02
	ld bc, $77fb                                     ; $751b: $01 $fb $77
	db $fd                                           ; $751e: $fd
	xor d                                            ; $751f: $aa
	ld [hl], a                                       ; $7520: $77

jr_036_7521:
	ld [hl], l                                       ; $7521: $75
	db $fd                                           ; $7522: $fd
	xor d                                            ; $7523: $aa
	ld [hl], a                                       ; $7524: $77
	ld [hl], b                                       ; $7525: $70
	db $fd                                           ; $7526: $fd
	xor d                                            ; $7527: $aa
	ld [hl], a                                       ; $7528: $77
	db $fd                                           ; $7529: $fd
	xor d                                            ; $752a: $aa
	ld [hl], a                                       ; $752b: $77
	ei                                               ; $752c: $fb
	ld [bc], a                                       ; $752d: $02
	jp nz, Jump_036_7fd1                             ; $752e: $c2 $d1 $7f

	inc hl                                           ; $7531: $23
	sub [hl]                                         ; $7532: $96

jr_036_7533:
	ld [bc], a                                       ; $7533: $02
	ld bc, $fd77                                     ; $7534: $01 $77 $fd
	xor d                                            ; $7537: $aa
	ld [hl], a                                       ; $7538: $77
	ld [hl], l                                       ; $7539: $75
	db $fd                                           ; $753a: $fd
	xor d                                            ; $753b: $aa
	ld [hl], a                                       ; $753c: $77
	ld [hl], b                                       ; $753d: $70
	sub [hl]                                         ; $753e: $96
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	cp [hl]                                          ; $7541: $be
	jr nc, jr_036_755d                               ; $7542: $30 $19

	jr jr_036_755c                                   ; $7544: $18 $16

	inc d                                            ; $7546: $14
	cp [hl]                                          ; $7547: $be
	jp nz, Jump_036_7fd1                             ; $7548: $c2 $d1 $7f

	inc hl                                           ; $754b: $23
	sub [hl]                                         ; $754c: $96
	ld [bc], a                                       ; $754d: $02
	ld bc, $fd77                                     ; $754e: $01 $77 $fd

jr_036_7551:
	xor d                                            ; $7551: $aa
	ld [hl], a                                       ; $7552: $77
	ld [hl], l                                       ; $7553: $75
	db $fd                                           ; $7554: $fd
	xor d                                            ; $7555: $aa
	ld [hl], a                                       ; $7556: $77
	ld [hl], b                                       ; $7557: $70

jr_036_7558:
	add hl, de                                       ; $7558: $19
	inc h                                            ; $7559: $24
	add hl, de                                       ; $755a: $19
	inc c                                            ; $755b: $0c

jr_036_755c:
	add hl, de                                       ; $755c: $19

jr_036_755d:
	inc h                                            ; $755d: $24
	inc d                                            ; $755e: $14
	inc c                                            ; $755f: $0c
	sub [hl]                                         ; $7560: $96
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	cp [hl]                                          ; $7563: $be
	inc c                                            ; $7564: $0c
	add hl, de                                       ; $7565: $19
	dec h                                            ; $7566: $25
	nop                                              ; $7567: $00
	dec h                                            ; $7568: $25
	add hl, de                                       ; $7569: $19
	dec de                                           ; $756a: $1b
	inc e                                            ; $756b: $1c
	dec e                                            ; $756c: $1d
	cp [hl]                                          ; $756d: $be
	jp nz, Jump_036_7fd1                             ; $756e: $c2 $d1 $7f

	inc h                                            ; $7571: $24
	add hl, de                                       ; $7572: $19
	jr jr_036_7533                                   ; $7573: $18 $be

	inc c                                            ; $7575: $0c
	nop                                              ; $7576: $00
	add hl, de                                       ; $7577: $19
	nop                                              ; $7578: $00
	ld e, $21                                        ; $7579: $1e $21
	ld e, $be                                        ; $757b: $1e $be
	add hl, de                                       ; $757d: $19
	ld a, [bc]                                       ; $757e: $0a
	nop                                              ; $757f: $00
	ld [bc], a                                       ; $7580: $02
	add hl, de                                       ; $7581: $19
	ld a, [bc]                                       ; $7582: $0a
	nop                                              ; $7583: $00
	ld c, $19                                        ; $7584: $0e $19
	ld a, [bc]                                       ; $7586: $0a
	nop                                              ; $7587: $00
	ld [bc], a                                       ; $7588: $02

jr_036_7589:
	add hl, de                                       ; $7589: $19
	inc c                                            ; $758a: $0c
	dec de                                           ; $758b: $1b
	inc c                                            ; $758c: $0c
	add hl, de                                       ; $758d: $19
	jr @+$1b                                         ; $758e: $18 $19

	jr @-$40                                         ; $7590: $18 $be

	inc c                                            ; $7592: $0c
	nop                                              ; $7593: $00
	add hl, de                                       ; $7594: $19
	nop                                              ; $7595: $00
	jr nz, @+$1f                                     ; $7596: $20 $1d

	jr nz, jr_036_7558                               ; $7598: $20 $be

	add hl, de                                       ; $759a: $19
	ld a, [bc]                                       ; $759b: $0a
	nop                                              ; $759c: $00
	ld [bc], a                                       ; $759d: $02
	add hl, de                                       ; $759e: $19
	ld a, [bc]                                       ; $759f: $0a
	nop                                              ; $75a0: $00
	ld c, $1b                                        ; $75a1: $0e $1b
	inc c                                            ; $75a3: $0c
	nop                                              ; $75a4: $00
	inc c                                            ; $75a5: $0c
	dec e                                            ; $75a6: $1d
	inc h                                            ; $75a7: $24
	ld e, $18                                        ; $75a8: $1e $18
	cp [hl]                                          ; $75aa: $be
	inc c                                            ; $75ab: $0c
	nop                                              ; $75ac: $00
	ld e, $00                                        ; $75ad: $1e $00
	add hl, de                                       ; $75af: $19
	dec d                                            ; $75b0: $15
	inc d                                            ; $75b1: $14
	cp [hl]                                          ; $75b2: $be
	ld [de], a                                       ; $75b3: $12
	jr @-$40                                         ; $75b4: $18 $be

	inc c                                            ; $75b6: $0c
	nop                                              ; $75b7: $00
	ld [de], a                                       ; $75b8: $12
	nop                                              ; $75b9: $00
	add hl, de                                       ; $75ba: $19
	dec de                                           ; $75bb: $1b
	inc e                                            ; $75bc: $1c
	cp [hl]                                          ; $75bd: $be
	dec e                                            ; $75be: $1d
	jr nc, jr_036_75dc                               ; $75bf: $30 $1b

	jr nc, @+$1c                                     ; $75c1: $30 $1a

	jr nc, @+$1a                                     ; $75c3: $30 $18

	jr nc, jr_036_7589                               ; $75c5: $30 $c2

	pop de                                           ; $75c7: $d1
	ld a, a                                          ; $75c8: $7f
	ld h, $22                                        ; $75c9: $26 $22
	inc c                                            ; $75cb: $0c
	call nz, $2b7f                                   ; $75cc: $c4 $7f $2b
	cp [hl]                                          ; $75cf: $be
	inc c                                            ; $75d0: $0c
	ld l, $32                                        ; $75d1: $2e $32
	dec [hl]                                         ; $75d3: $35
	ld a, [hl-]                                      ; $75d4: $3a
	dec [hl]                                         ; $75d5: $35
	ld [hl-], a                                      ; $75d6: $32
	ld l, $be                                        ; $75d7: $2e $be
	jp nz, $267f                                     ; $75d9: $c2 $7f $26

jr_036_75dc:
	ld hl, $c40c                                     ; $75dc: $21 $0c $c4

jr_036_75df:
	ld a, a                                          ; $75df: $7f
	dec hl                                           ; $75e0: $2b
	cp [hl]                                          ; $75e1: $be
	inc c                                            ; $75e2: $0c
	dec l                                            ; $75e3: $2d
	ld [hl-], a                                      ; $75e4: $32
	dec [hl]                                         ; $75e5: $35
	add hl, sp                                       ; $75e6: $39
	dec [hl]                                         ; $75e7: $35
	ld [hl-], a                                      ; $75e8: $32
	dec l                                            ; $75e9: $2d
	cp [hl]                                          ; $75ea: $be
	jp nz, $267f                                     ; $75eb: $c2 $7f $26

	jr nz, jr_036_75fc                               ; $75ee: $20 $0c

	call nz, $2b7f                                   ; $75f0: $c4 $7f $2b
	cp [hl]                                          ; $75f3: $be
	inc c                                            ; $75f4: $0c
	inc l                                            ; $75f5: $2c
	ld [hl-], a                                      ; $75f6: $32
	dec [hl]                                         ; $75f7: $35
	jr c, jr_036_762f                                ; $75f8: $38 $35

	ld [hl-], a                                      ; $75fa: $32
	inc l                                            ; $75fb: $2c

jr_036_75fc:
	cp [hl]                                          ; $75fc: $be
	jp nz, $267f                                     ; $75fd: $c2 $7f $26

	rra                                              ; $7600: $1f
	inc c                                            ; $7601: $0c
	call nz, $2b7f                                   ; $7602: $c4 $7f $2b
	cp [hl]                                          ; $7605: $be
	inc c                                            ; $7606: $0c
	dec hl                                           ; $7607: $2b
	ld [hl-], a                                      ; $7608: $32
	dec [hl]                                         ; $7609: $35
	scf                                              ; $760a: $37
	dec [hl]                                         ; $760b: $35
	ld [hl-], a                                      ; $760c: $32
	dec hl                                           ; $760d: $2b
	cp [hl]                                          ; $760e: $be
	jp nz, $267f                                     ; $760f: $c2 $7f $26

	inc h                                            ; $7612: $24
	inc c                                            ; $7613: $0c
	call nz, $2b7f                                   ; $7614: $c4 $7f $2b
	cp [hl]                                          ; $7617: $be
	inc c                                            ; $7618: $0c
	jr nc, jr_036_764e                               ; $7619: $30 $33

	scf                                              ; $761b: $37
	inc a                                            ; $761c: $3c
	scf                                              ; $761d: $37
	inc sp                                           ; $761e: $33
	jr nc, jr_036_75df                               ; $761f: $30 $be

	jp nz, $267f                                     ; $7621: $c2 $7f $26

	inc hl                                           ; $7624: $23
	inc c                                            ; $7625: $0c
	call nz, $2b7f                                   ; $7626: $c4 $7f $2b
	cp [hl]                                          ; $7629: $be
	inc c                                            ; $762a: $0c
	cpl                                              ; $762b: $2f
	inc sp                                           ; $762c: $33
	scf                                              ; $762d: $37
	dec sp                                           ; $762e: $3b

jr_036_762f:
	scf                                              ; $762f: $37
	inc sp                                           ; $7630: $33
	cpl                                              ; $7631: $2f
	cp [hl]                                          ; $7632: $be
	jp nz, $267f                                     ; $7633: $c2 $7f $26

	ld [hl+], a                                      ; $7636: $22
	inc c                                            ; $7637: $0c
	call nz, $2b7f                                   ; $7638: $c4 $7f $2b
	cp [hl]                                          ; $763b: $be
	inc c                                            ; $763c: $0c
	ld l, $33                                        ; $763d: $2e $33
	scf                                              ; $763f: $37
	ld a, [hl-]                                      ; $7640: $3a
	scf                                              ; $7641: $37
	inc sp                                           ; $7642: $33
	ld l, $be                                        ; $7643: $2e $be
	cp [hl]                                          ; $7645: $be
	inc c                                            ; $7646: $0c
	add hl, hl                                       ; $7647: $29
	ld hl, $3530                                     ; $7648: $21 $30 $35
	inc a                                            ; $764b: $3c
	add hl, sp                                       ; $764c: $39
	dec [hl]                                         ; $764d: $35

jr_036_764e:
	inc sp                                           ; $764e: $33
	cp [hl]                                          ; $764f: $be
	jp nz, Jump_036_7fd1                             ; $7650: $c2 $d1 $7f

	ld h, $22                                        ; $7653: $26 $22
	inc c                                            ; $7655: $0c
	call nz, $2b7f                                   ; $7656: $c4 $7f $2b

jr_036_7659:
	cp [hl]                                          ; $7659: $be
	inc c                                            ; $765a: $0c
	ld l, $32                                        ; $765b: $2e $32
	dec [hl]                                         ; $765d: $35
	ld a, [hl-]                                      ; $765e: $3a
	dec [hl]                                         ; $765f: $35
	ld [hl-], a                                      ; $7660: $32
	ld l, $be                                        ; $7661: $2e $be
	jp nz, $267f                                     ; $7663: $c2 $7f $26

	ld hl, $c40c                                     ; $7666: $21 $0c $c4
	ld a, a                                          ; $7669: $7f
	dec hl                                           ; $766a: $2b
	cp [hl]                                          ; $766b: $be
	inc c                                            ; $766c: $0c
	dec l                                            ; $766d: $2d
	ld [hl-], a                                      ; $766e: $32
	dec [hl]                                         ; $766f: $35
	add hl, sp                                       ; $7670: $39
	dec [hl]                                         ; $7671: $35
	ld [hl-], a                                      ; $7672: $32
	dec l                                            ; $7673: $2d
	cp [hl]                                          ; $7674: $be
	jp nz, $267f                                     ; $7675: $c2 $7f $26

	jr nz, jr_036_7686                               ; $7678: $20 $0c

	call nz, $2b7f                                   ; $767a: $c4 $7f $2b
	cp [hl]                                          ; $767d: $be
	inc c                                            ; $767e: $0c
	inc l                                            ; $767f: $2c
	ld [hl-], a                                      ; $7680: $32
	dec [hl]                                         ; $7681: $35
	jr c, @+$37                                      ; $7682: $38 $35

	ld [hl-], a                                      ; $7684: $32
	inc l                                            ; $7685: $2c

jr_036_7686:
	cp [hl]                                          ; $7686: $be
	jp nz, $267f                                     ; $7687: $c2 $7f $26

	rra                                              ; $768a: $1f
	inc c                                            ; $768b: $0c
	dec hl                                           ; $768c: $2b
	inc c                                            ; $768d: $0c
	cpl                                              ; $768e: $2f
	jr @+$32                                         ; $768f: $18 $30

	jr @+$34                                         ; $7691: $18 $32

	jr jr_036_7659                                   ; $7693: $18 $c4

	ld a, a                                          ; $7695: $7f
	dec hl                                           ; $7696: $2b
	inc a                                            ; $7697: $3c
	inc c                                            ; $7698: $0c
	jp nz, $0c30                                     ; $7699: $c2 $30 $0c

	call nz, $0c3c                                   ; $769c: $c4 $3c $0c
	jp nz, $0c37                                     ; $769f: $c2 $37 $0c

	call nz, $0c3c                                   ; $76a2: $c4 $3c $0c
	jp nz, $0c37                                     ; $76a5: $c2 $37 $0c

	call nz, $0c3c                                   ; $76a8: $c4 $3c $0c
	jp nz, $0c30                                     ; $76ab: $c2 $30 $0c

	call nz, $0c3b                                   ; $76ae: $c4 $3b $0c
	jp nz, $0c2f                                     ; $76b1: $c2 $2f $0c

	call nz, $0c3b                                   ; $76b4: $c4 $3b $0c
	jp nz, $0c37                                     ; $76b7: $c2 $37 $0c

	call nz, $0c3b                                   ; $76ba: $c4 $3b $0c
	jp nz, $0c37                                     ; $76bd: $c2 $37 $0c

	call nz, $0c3b                                   ; $76c0: $c4 $3b $0c
	jp nz, $0c2f                                     ; $76c3: $c2 $2f $0c

	call nz, $0c3a                                   ; $76c6: $c4 $3a $0c
	jp nz, $0c2e                                     ; $76c9: $c2 $2e $0c

	call nz, $0c3a                                   ; $76cc: $c4 $3a $0c
	jp nz, $0c37                                     ; $76cf: $c2 $37 $0c

	call nz, $0c3a                                   ; $76d2: $c4 $3a $0c
	jp nz, $0c37                                     ; $76d5: $c2 $37 $0c

	call nz, $0c3a                                   ; $76d8: $c4 $3a $0c
	jp nz, $0c2e                                     ; $76db: $c2 $2e $0c

	ld a, a                                          ; $76de: $7f
	inc hl                                           ; $76df: $23
	ld de, $9618                                     ; $76e0: $11 $18 $96
	ld bc, $1d01                                     ; $76e3: $01 $01 $1d
	jr jr_036_7707                                   ; $76e6: $18 $1f

	jr jr_036_770b                                   ; $76e8: $18 $21

	jr @-$49                                         ; $76ea: $18 $b5

	ld hl, $0223                                     ; $76ec: $21 $23 $02
	ld bc, $77fb                                     ; $76ef: $01 $fb $77
	db $fd                                           ; $76f2: $fd
	xor d                                            ; $76f3: $aa
	ld [hl], a                                       ; $76f4: $77
	ld [hl], l                                       ; $76f5: $75
	db $fd                                           ; $76f6: $fd
	xor d                                            ; $76f7: $aa
	ld [hl], a                                       ; $76f8: $77
	ld [hl], b                                       ; $76f9: $70
	db $fd                                           ; $76fa: $fd
	xor d                                            ; $76fb: $aa
	ld [hl], a                                       ; $76fc: $77
	db $fd                                           ; $76fd: $fd
	xor d                                            ; $76fe: $aa
	ld [hl], a                                       ; $76ff: $77
	ei                                               ; $7700: $fb
	ld [bc], a                                       ; $7701: $02
	ld [hl], a                                       ; $7702: $77
	db $fd                                           ; $7703: $fd
	xor d                                            ; $7704: $aa
	ld [hl], a                                       ; $7705: $77
	ld [hl], l                                       ; $7706: $75

jr_036_7707:
	db $fd                                           ; $7707: $fd
	xor d                                            ; $7708: $aa
	ld [hl], a                                       ; $7709: $77
	ld [hl], b                                       ; $770a: $70

jr_036_770b:
	sub [hl]                                         ; $770b: $96
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	cp [hl]                                          ; $770e: $be
	jr nc, jr_036_772a                               ; $770f: $30 $19

	jr jr_036_7729                                   ; $7711: $18 $16

	inc d                                            ; $7713: $14
	cp [hl]                                          ; $7714: $be
	sub [hl]                                         ; $7715: $96
	ld [bc], a                                       ; $7716: $02
	ld bc, $fd77                                     ; $7717: $01 $77 $fd
	xor d                                            ; $771a: $aa
	ld [hl], a                                       ; $771b: $77
	ld [hl], l                                       ; $771c: $75
	db $fd                                           ; $771d: $fd
	xor d                                            ; $771e: $aa
	ld [hl], a                                       ; $771f: $77
	ld [hl], b                                       ; $7720: $70
	add hl, de                                       ; $7721: $19
	inc h                                            ; $7722: $24
	add hl, de                                       ; $7723: $19
	inc c                                            ; $7724: $0c
	add hl, de                                       ; $7725: $19
	inc h                                            ; $7726: $24
	inc d                                            ; $7727: $14
	inc c                                            ; $7728: $0c

jr_036_7729:
	sub [hl]                                         ; $7729: $96

jr_036_772a:
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	cp [hl]                                          ; $772c: $be
	inc c                                            ; $772d: $0c
	add hl, de                                       ; $772e: $19
	dec h                                            ; $772f: $25
	nop                                              ; $7730: $00
	dec h                                            ; $7731: $25
	add hl, de                                       ; $7732: $19
	dec de                                           ; $7733: $1b
	inc e                                            ; $7734: $1c
	dec e                                            ; $7735: $1d
	cp [hl]                                          ; $7736: $be
	or l                                             ; $7737: $b5
	ld hl, $0223                                     ; $7738: $21 $23 $02
	ld bc, $fd77                                     ; $773b: $01 $77 $fd
	xor d                                            ; $773e: $aa
	ld [hl], a                                       ; $773f: $77
	ld [hl], l                                       ; $7740: $75
	db $fd                                           ; $7741: $fd
	xor d                                            ; $7742: $aa
	ld [hl], a                                       ; $7743: $77
	ld [hl], b                                       ; $7744: $70
	add hl, de                                       ; $7745: $19
	inc h                                            ; $7746: $24
	add hl, de                                       ; $7747: $19
	inc c                                            ; $7748: $0c
	add hl, de                                       ; $7749: $19
	inc h                                            ; $774a: $24
	inc d                                            ; $774b: $14
	inc c                                            ; $774c: $0c
	sub [hl]                                         ; $774d: $96
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	add hl, de                                       ; $7750: $19
	inc c                                            ; $7751: $0c
	dec h                                            ; $7752: $25
	inc c                                            ; $7753: $0c
	nop                                              ; $7754: $00
	inc c                                            ; $7755: $0c
	dec h                                            ; $7756: $25
	jr @+$26                                         ; $7757: $18 $24

	inc c                                            ; $7759: $0c
	inc hl                                           ; $775a: $23
	inc c                                            ; $775b: $0c
	ld [hl+], a                                      ; $775c: $22
	inc c                                            ; $775d: $0c
	or l                                             ; $775e: $b5
	ld hl, $1923                                     ; $775f: $21 $23 $19
	ld bc, $1800                                     ; $7762: $01 $00 $18
	cp [hl]                                          ; $7765: $be
	inc h                                            ; $7766: $24
	dec d                                            ; $7767: $15
	rla                                              ; $7768: $17
	dec d                                            ; $7769: $15
	rla                                              ; $776a: $17
	cp [hl]                                          ; $776b: $be
	sub [hl]                                         ; $776c: $96
	ld b, $01                                        ; $776d: $06 $01
	rla                                              ; $776f: $17
	inc c                                            ; $7770: $0c
	cp l                                             ; $7771: $bd
	ld [bc], a                                       ; $7772: $02
	add hl, de                                       ; $7773: $19
	inc c                                            ; $7774: $0c
	ld d, h                                          ; $7775: $54
	sub [hl]                                         ; $7776: $96
	ld bc, $1901                                     ; $7777: $01 $01 $19
	ld b, $19                                        ; $777a: $06 $19
	ld b, $19                                        ; $777c: $06 $19
	inc c                                            ; $777e: $0c
	call nz, $0c19                                   ; $777f: $c4 $19 $0c
	add $19                                          ; $7782: $c6 $19
	inc c                                            ; $7784: $0c
	rst $38                                          ; $7785: $ff
	dec d                                            ; $7786: $15
	inc c                                            ; $7787: $0c
	ld hl, $150c                                     ; $7788: $21 $0c $15
	inc c                                            ; $778b: $0c
	ld hl, $2106                                     ; $778c: $21 $06 $21
	ld b, $be                                        ; $778f: $06 $be
	inc c                                            ; $7791: $0c
	dec d                                            ; $7792: $15
	ld hl, $2115                                     ; $7793: $21 $15 $21
	cp [hl]                                          ; $7796: $be
	db $fd                                           ; $7797: $fd
	rla                                              ; $7798: $17
	inc c                                            ; $7799: $0c
	inc hl                                           ; $779a: $23
	inc c                                            ; $779b: $0c
	rla                                              ; $779c: $17
	inc c                                            ; $779d: $0c
	inc hl                                           ; $779e: $23
	ld b, $23                                        ; $779f: $06 $23
	ld b, $be                                        ; $77a1: $06 $be
	inc c                                            ; $77a3: $0c
	rla                                              ; $77a4: $17
	inc hl                                           ; $77a5: $23
	rla                                              ; $77a6: $17
	inc hl                                           ; $77a7: $23
	cp [hl]                                          ; $77a8: $be
	db $fd                                           ; $77a9: $fd
	add hl, de                                       ; $77aa: $19
	inc c                                            ; $77ab: $0c
	dec h                                            ; $77ac: $25
	inc c                                            ; $77ad: $0c
	add hl, de                                       ; $77ae: $19
	inc c                                            ; $77af: $0c
	dec h                                            ; $77b0: $25
	ld b, $25                                        ; $77b1: $06 $25
	ld b, $be                                        ; $77b3: $06 $be
	inc c                                            ; $77b5: $0c
	add hl, de                                       ; $77b6: $19
	dec h                                            ; $77b7: $25
	add hl, de                                       ; $77b8: $19
	dec h                                            ; $77b9: $25
	cp [hl]                                          ; $77ba: $be
	db $fd                                           ; $77bb: $fd
	sub [hl]                                         ; $77bc: $96
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	add hl, de                                       ; $77bf: $19
	ld a, [bc]                                       ; $77c0: $0a
	nop                                              ; $77c1: $00
	ld [bc], a                                       ; $77c2: $02
	add hl, de                                       ; $77c3: $19
	ld [de], a                                       ; $77c4: $12
	jp nc, $31c4                                     ; $77c5: $d2 $c4 $31

	jr jr_036_77fd                                   ; $77c8: $18 $33

	ld b, $d1                                        ; $77ca: $06 $d1
	jp nz, $0c20                                     ; $77cc: $c2 $20 $0c

	dec e                                            ; $77cf: $1d
	inc c                                            ; $77d0: $0c
	jr nz, jr_036_77df                               ; $77d1: $20 $0c

	jr jr_036_77df                                   ; $77d3: $18 $0a

	nop                                              ; $77d5: $00
	ld [bc], a                                       ; $77d6: $02
	jr jr_036_77e5                                   ; $77d7: $18 $0c

	nop                                              ; $77d9: $00
	inc h                                            ; $77da: $24
	dec e                                            ; $77db: $1d
	inc c                                            ; $77dc: $0c
	nop                                              ; $77dd: $00
	inc c                                            ; $77de: $0c

jr_036_77df:
	jr @+$0e                                         ; $77df: $18 $0c

	ld d, $0a                                        ; $77e1: $16 $0a
	nop                                              ; $77e3: $00
	ld [bc], a                                       ; $77e4: $02

jr_036_77e5:
	ld d, $0c                                        ; $77e5: $16 $0c
	jp nc, $31c4                                     ; $77e7: $d2 $c4 $31

	rla                                              ; $77ea: $17
	nop                                              ; $77eb: $00
	ld bc, $1831                                     ; $77ec: $01 $31 $18
	pop de                                           ; $77ef: $d1
	jp nz, $1814                                     ; $77f0: $c2 $14 $18

	ld [de], a                                       ; $77f3: $12
	ld a, [bc]                                       ; $77f4: $0a
	nop                                              ; $77f5: $00
	ld [bc], a                                       ; $77f6: $02
	ld [de], a                                       ; $77f7: $12
	inc c                                            ; $77f8: $0c
	nop                                              ; $77f9: $00
	inc h                                            ; $77fa: $24
	ld e, $0c                                        ; $77fb: $1e $0c

jr_036_77fd:
	dec e                                            ; $77fd: $1d
	inc c                                            ; $77fe: $0c
	add hl, de                                       ; $77ff: $19
	inc c                                            ; $7800: $0c
	dec de                                           ; $7801: $1b
	ld a, [bc]                                       ; $7802: $0a
	nop                                              ; $7803: $00
	ld [bc], a                                       ; $7804: $02
	dec de                                           ; $7805: $1b
	inc c                                            ; $7806: $0c
	nop                                              ; $7807: $00
	inc h                                            ; $7808: $24
	ld d, $0c                                        ; $7809: $16 $0c
	dec de                                           ; $780b: $1b
	rla                                              ; $780c: $17
	nop                                              ; $780d: $00
	ld bc, $0a1d                                     ; $780e: $01 $1d $0a
	nop                                              ; $7811: $00
	ld [bc], a                                       ; $7812: $02
	dec e                                            ; $7813: $1d
	inc c                                            ; $7814: $0c
	nop                                              ; $7815: $00
	inc h                                            ; $7816: $24
	jr @+$0e                                         ; $7817: $18 $0c

	dec e                                            ; $7819: $1d
	inc c                                            ; $781a: $0c
	jr jr_036_7829                                   ; $781b: $18 $0c

	ld e, $0a                                        ; $781d: $1e $0a
	nop                                              ; $781f: $00
	ld [bc], a                                       ; $7820: $02
	ld e, $0a                                        ; $7821: $1e $0a
	nop                                              ; $7823: $00
	ld c, $1e                                        ; $7824: $0e $1e
	inc c                                            ; $7826: $0c
	jr nz, jr_036_7833                               ; $7827: $20 $0a

jr_036_7829:
	nop                                              ; $7829: $00
	ld [bc], a                                       ; $782a: $02
	jr nz, jr_036_7837                               ; $782b: $20 $0a

	nop                                              ; $782d: $00
	ld c, $20                                        ; $782e: $0e $20
	inc c                                            ; $7830: $0c
	db $fd                                           ; $7831: $fd
	ret nc                                           ; $7832: $d0

jr_036_7833:
	adc h                                            ; $7833: $8c
	cp [hl]                                          ; $7834: $be
	jr jr_036_7868                                   ; $7835: $18 $31

jr_036_7837:
	ld [hl-], a                                      ; $7837: $32
	ld sp, $3132                                     ; $7838: $31 $32 $31
	ld [hl-], a                                      ; $783b: $32
	ld sp, $be32                                     ; $783c: $31 $32 $be
	cp [hl]                                          ; $783f: $be
	jr @+$33                                         ; $7840: $18 $31

	ld [hl-], a                                      ; $7842: $32
	ld [hl-], a                                      ; $7843: $32
	ld [hl-], a                                      ; $7844: $32
	ld sp, $be32                                     ; $7845: $31 $32 $be
	ld sp, $320c                                     ; $7848: $31 $0c $32
	inc c                                            ; $784b: $0c
	dec [hl]                                         ; $784c: $35
	jr @-$03                                         ; $784d: $18 $fb

	cp [hl]                                          ; $784f: $be
	inc c                                            ; $7850: $0c
	ld sp, $3232                                     ; $7851: $31 $32 $32
	inc sp                                           ; $7854: $33
	ld sp, $32be                                     ; $7855: $31 $be $32
	dec bc                                           ; $7858: $0b
	dec a                                            ; $7859: $3d
	inc c                                            ; $785a: $0c
	inc sp                                           ; $785b: $33
	dec c                                            ; $785c: $0d
	cp [hl]                                          ; $785d: $be
	inc c                                            ; $785e: $0c
	ld sp, $3232                                     ; $785f: $31 $32 $32
	inc sp                                           ; $7862: $33
	ld sp, $0b20                                     ; $7863: $31 $20 $0b
	ld [hl-], a                                      ; $7866: $32
	cp [hl]                                          ; $7867: $be

jr_036_7868:
	ei                                               ; $7868: $fb
	rlca                                             ; $7869: $07
	cp [hl]                                          ; $786a: $be
	inc c                                            ; $786b: $0c
	dec a                                            ; $786c: $3d
	dec a                                            ; $786d: $3d
	ld [hl], $31                                     ; $786e: $36 $31
	dec a                                            ; $7870: $3d
	dec a                                            ; $7871: $3d
	ld [hl], $31                                     ; $7872: $36 $31
	cp [hl]                                          ; $7874: $be
	cp [hl]                                          ; $7875: $be
	inc c                                            ; $7876: $0c
	ld [hl-], a                                      ; $7877: $32
	dec a                                            ; $7878: $3d
	ld [hl-], a                                      ; $7879: $32
	dec a                                            ; $787a: $3d
	ld [hl], $36                                     ; $787b: $36 $36
	cp [hl]                                          ; $787d: $be

jr_036_787e:
	dec [hl]                                         ; $787e: $35
	jr jr_036_787e                                   ; $787f: $18 $fd

	sub a                                            ; $7881: $97
	ld a, c                                          ; $7882: $79
	db $fd                                           ; $7883: $fd
	ld [hl], e                                       ; $7884: $73
	ld a, c                                          ; $7885: $79
	db $fd                                           ; $7886: $fd
	ld c, c                                          ; $7887: $49
	ld a, c                                          ; $7888: $79
	ei                                               ; $7889: $fb
	ld sp, $320c                                     ; $788a: $31 $0c $32
	inc c                                            ; $788d: $0c
	inc sp                                           ; $788e: $33
	inc c                                            ; $788f: $0c
	dec sp                                           ; $7890: $3b
	ld b, $3b                                        ; $7891: $06 $3b
	ld b, $be                                        ; $7893: $06 $be
	inc c                                            ; $7895: $0c
	ld sp, $3f31                                     ; $7896: $31 $31 $3f
	ld [hl-], a                                      ; $7899: $32
	cp [hl]                                          ; $789a: $be
	cp [hl]                                          ; $789b: $be
	inc c                                            ; $789c: $0c
	ld sp, $3332                                     ; $789d: $31 $32 $33
	ld sp, $3732                                     ; $78a0: $31 $32 $37
	scf                                              ; $78a3: $37
	ld [hl-], a                                      ; $78a4: $32
	cp [hl]                                          ; $78a5: $be
	ei                                               ; $78a6: $fb
	inc bc                                           ; $78a7: $03
	ld [hl], $0c                                     ; $78a8: $36 $0c
	dec [hl]                                         ; $78aa: $35
	jr jr_036_78df                                   ; $78ab: $18 $32

jr_036_78ad:
	inc c                                            ; $78ad: $0c
	ld [hl], $0c                                     ; $78ae: $36 $0c
	dec [hl]                                         ; $78b0: $35
	jr jr_036_78e5                                   ; $78b1: $18 $32

	inc c                                            ; $78b3: $0c
	ld [hl], $0c                                     ; $78b4: $36 $0c
	dec [hl]                                         ; $78b6: $35
	jr jr_036_78ea                                   ; $78b7: $18 $31

	ld b, $32                                        ; $78b9: $06 $32
	ld b, $be                                        ; $78bb: $06 $be
	inc c                                            ; $78bd: $0c
	ld [hl], $36                                     ; $78be: $36 $36
	dec a                                            ; $78c0: $3d
	ld [hl-], a                                      ; $78c1: $32
	cp [hl]                                          ; $78c2: $be
	ei                                               ; $78c3: $fb
	cp [hl]                                          ; $78c4: $be
	jr jr_036_78f8                                   ; $78c5: $18 $31

	inc sp                                           ; $78c7: $33
	ld [hl-], a                                      ; $78c8: $32
	inc sp                                           ; $78c9: $33
	cp [hl]                                          ; $78ca: $be
	ei                                               ; $78cb: $fb
	ld [$befb], sp                                   ; $78cc: $08 $fb $be
	jr jr_036_7902                                   ; $78cf: $18 $31

	inc sp                                           ; $78d1: $33
	ld [hl-], a                                      ; $78d2: $32
	inc sp                                           ; $78d3: $33
	cp [hl]                                          ; $78d4: $be
	ei                                               ; $78d5: $fb
	inc b                                            ; $78d6: $04
	ei                                               ; $78d7: $fb
	cp [hl]                                          ; $78d8: $be
	jr @+$38                                         ; $78d9: $18 $36

	ld [hl-], a                                      ; $78db: $32
	ld sp, $be32                                     ; $78dc: $31 $32 $be

jr_036_78df:
	ei                                               ; $78df: $fb
	ld [bc], a                                       ; $78e0: $02
	cp [hl]                                          ; $78e1: $be
	jr jr_036_791a                                   ; $78e2: $18 $36

	ld [hl-], a                                      ; $78e4: $32

jr_036_78e5:
	ld [hl], $32                                     ; $78e5: $36 $32
	cp [hl]                                          ; $78e7: $be
	ld [hl], $0c                                     ; $78e8: $36 $0c

jr_036_78ea:
	dec a                                            ; $78ea: $3d
	inc c                                            ; $78eb: $0c
	dec [hl]                                         ; $78ec: $35
	jr jr_036_78ad                                   ; $78ed: $18 $be

	ld b, $31                                        ; $78ef: $06 $31
	ld [hl-], a                                      ; $78f1: $32
	inc sp                                           ; $78f2: $33
	ld [hl-], a                                      ; $78f3: $32
	ld sp, $be3d                                     ; $78f4: $31 $3d $be
	inc [hl]                                         ; $78f7: $34

jr_036_78f8:
	inc c                                            ; $78f8: $0c
	db $fd                                           ; $78f9: $fd
	sub a                                            ; $78fa: $97
	ld a, c                                          ; $78fb: $79
	db $fd                                           ; $78fc: $fd
	ld [hl], e                                       ; $78fd: $73
	ld a, c                                          ; $78fe: $79
	ei                                               ; $78ff: $fb
	cp [hl]                                          ; $7900: $be
	inc c                                            ; $7901: $0c

jr_036_7902:
	ld sp, $3d32                                     ; $7902: $31 $32 $3d
	ld [hl-], a                                      ; $7905: $32
	ld sp, $3d32                                     ; $7906: $31 $32 $3d
	ld [hl-], a                                      ; $7909: $32
	cp [hl]                                          ; $790a: $be
	ei                                               ; $790b: $fb
	ld [bc], a                                       ; $790c: $02
	cp [hl]                                          ; $790d: $be
	inc c                                            ; $790e: $0c
	ld sp, $3332                                     ; $790f: $31 $32 $33
	ld sp, $3332                                     ; $7912: $31 $32 $33
	dec a                                            ; $7915: $3d
	ld [hl-], a                                      ; $7916: $32
	cp [hl]                                          ; $7917: $be
	cp [hl]                                          ; $7918: $be
	inc c                                            ; $7919: $0c

jr_036_791a:
	ld sp, $3332                                     ; $791a: $31 $32 $33
	ld [hl-], a                                      ; $791d: $32
	dec a                                            ; $791e: $3d
	dec a                                            ; $791f: $3d
	ccf                                              ; $7920: $3f
	ld [hl-], a                                      ; $7921: $32
	cp [hl]                                          ; $7922: $be
	db $fd                                           ; $7923: $fd
	ld c, c                                          ; $7924: $49
	ld a, c                                          ; $7925: $79
	cp [hl]                                          ; $7926: $be
	inc c                                            ; $7927: $0c
	ld sp, $3432                                     ; $7928: $31 $32 $34
	inc sp                                           ; $792b: $33
	ld [hl-], a                                      ; $792c: $32
	inc [hl]                                         ; $792d: $34
	ld [hl-], a                                      ; $792e: $32
	ld sp, $3234                                     ; $792f: $31 $34 $32
	ld sp, $3334                                     ; $7932: $31 $34 $33
	ld [hl-], a                                      ; $7935: $32
	ld sp, $35be                                     ; $7936: $31 $be $35
	jr jr_036_797a                                   ; $7939: $18 $3f

	inc c                                            ; $793b: $0c
	scf                                              ; $793c: $37
	jr jr_036_797e                                   ; $793d: $18 $3f

	ld [de], a                                       ; $793f: $12
	scf                                              ; $7940: $37
	ld [de], a                                       ; $7941: $12
	ld sp, $3b06                                     ; $7942: $31 $06 $3b
	ld b, $3f                                        ; $7945: $06 $3f
	inc c                                            ; $7947: $0c
	rst $38                                          ; $7948: $ff
	ei                                               ; $7949: $fb
	cp [hl]                                          ; $794a: $be
	inc c                                            ; $794b: $0c
	ld sp, $3d32                                     ; $794c: $31 $32 $3d
	ld [hl-], a                                      ; $794f: $32
	ld sp, $3d32                                     ; $7950: $31 $32 $3d
	ld [hl-], a                                      ; $7953: $32
	cp [hl]                                          ; $7954: $be
	ei                                               ; $7955: $fb
	ld [bc], a                                       ; $7956: $02
	cp [hl]                                          ; $7957: $be
	inc c                                            ; $7958: $0c
	ld sp, $3332                                     ; $7959: $31 $32 $33
	ld sp, $3332                                     ; $795c: $31 $32 $33
	dec a                                            ; $795f: $3d
	ld [hl-], a                                      ; $7960: $32
	cp [hl]                                          ; $7961: $be
	ld sp, $320c                                     ; $7962: $31 $0c $32
	inc c                                            ; $7965: $0c
	inc sp                                           ; $7966: $33
	inc c                                            ; $7967: $0c
	dec a                                            ; $7968: $3d
	ld b, $3d                                        ; $7969: $06 $3d
	ld b, $37                                        ; $796b: $06 $37
	db $10                                           ; $796d: $10
	dec a                                            ; $796e: $3d
	db $10                                           ; $796f: $10
	dec a                                            ; $7970: $3d
	db $10                                           ; $7971: $10
	db $fd                                           ; $7972: $fd
	ei                                               ; $7973: $fb
	cp [hl]                                          ; $7974: $be
	inc c                                            ; $7975: $0c
	ld sp, $3d32                                     ; $7976: $31 $32 $3d
	ld [hl-], a                                      ; $7979: $32

jr_036_797a:
	ld sp, $3d32                                     ; $797a: $31 $32 $3d
	ld [hl-], a                                      ; $797d: $32

jr_036_797e:
	cp [hl]                                          ; $797e: $be
	ei                                               ; $797f: $fb
	ld [bc], a                                       ; $7980: $02
	inc [hl]                                         ; $7981: $34
	inc c                                            ; $7982: $0c
	dec a                                            ; $7983: $3d
	inc c                                            ; $7984: $0c
	dec a                                            ; $7985: $3d
	jr jr_036_79bc                                   ; $7986: $18 $34

	jr jr_036_79c7                                   ; $7988: $18 $3d

	jr jr_036_79c1                                   ; $798a: $18 $35

	jr jr_036_79cb                                   ; $798c: $18 $3d

	jr @-$40                                         ; $798e: $18 $be

	inc c                                            ; $7990: $0c
	ld sp, $3d3d                                     ; $7991: $31 $3d $3d
	ld sp, $fdbe                                     ; $7994: $31 $be $fd
	ei                                               ; $7997: $fb
	cp [hl]                                          ; $7998: $be
	inc c                                            ; $7999: $0c
	ld sp, $3d32                                     ; $799a: $31 $32 $3d
	ld [hl-], a                                      ; $799d: $32
	ld sp, $3d32                                     ; $799e: $31 $32 $3d
	ld [hl-], a                                      ; $79a1: $32
	cp [hl]                                          ; $79a2: $be
	ei                                               ; $79a3: $fb
	ld [$fffd], sp                                   ; $79a4: $08 $fd $ff
	rst $38                                          ; $79a7: $ff
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	rst $38                                          ; $79aa: $ff
	rst $38                                          ; $79ab: $ff
	rst $38                                          ; $79ac: $ff
	rst $38                                          ; $79ad: $ff
	rst $38                                          ; $79ae: $ff
	rst $38                                          ; $79af: $ff
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff
	rst $38                                          ; $79b7: $ff
	rst $38                                          ; $79b8: $ff
	rst $38                                          ; $79b9: $ff
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff

jr_036_79bc:
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff

jr_036_79c1:
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff

jr_036_79c7:
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff

jr_036_79cb:
	rst $38                                          ; $79cb: $ff
	rst $38                                          ; $79cc: $ff
	rst $38                                          ; $79cd: $ff
	rst $38                                          ; $79ce: $ff
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	rst $38                                          ; $79d4: $ff
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	rst $38                                          ; $79d7: $ff
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff
	rst $38                                          ; $79da: $ff
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst $38                                          ; $79df: $ff
	rst $38                                          ; $79e0: $ff
	rst $38                                          ; $79e1: $ff
	rst $38                                          ; $79e2: $ff
	rst $38                                          ; $79e3: $ff
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	rst $38                                          ; $79e6: $ff
	rst $38                                          ; $79e7: $ff
	rst $38                                          ; $79e8: $ff
	rst $38                                          ; $79e9: $ff
	rst $38                                          ; $79ea: $ff
	rst $38                                          ; $79eb: $ff
	rst $38                                          ; $79ec: $ff
	rst $38                                          ; $79ed: $ff
	rst $38                                          ; $79ee: $ff
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	rst $38                                          ; $79f5: $ff
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff
	rst $38                                          ; $7a15: $ff
	rst $38                                          ; $7a16: $ff
	rst $38                                          ; $7a17: $ff
	rst $38                                          ; $7a18: $ff
	rst $38                                          ; $7a19: $ff
	rst $38                                          ; $7a1a: $ff
	rst $38                                          ; $7a1b: $ff
	rst $38                                          ; $7a1c: $ff
	rst $38                                          ; $7a1d: $ff
	rst $38                                          ; $7a1e: $ff
	rst $38                                          ; $7a1f: $ff
	rst $38                                          ; $7a20: $ff
	rst $38                                          ; $7a21: $ff
	rst $38                                          ; $7a22: $ff
	rst $38                                          ; $7a23: $ff
	rst $38                                          ; $7a24: $ff
	rst $38                                          ; $7a25: $ff
	rst $38                                          ; $7a26: $ff
	rst $38                                          ; $7a27: $ff
	rst $38                                          ; $7a28: $ff
	rst $38                                          ; $7a29: $ff
	rst $38                                          ; $7a2a: $ff
	rst $38                                          ; $7a2b: $ff
	rst $38                                          ; $7a2c: $ff
	rst $38                                          ; $7a2d: $ff
	rst $38                                          ; $7a2e: $ff
	rst $38                                          ; $7a2f: $ff
	rst $38                                          ; $7a30: $ff
	rst $38                                          ; $7a31: $ff
	rst $38                                          ; $7a32: $ff
	rst $38                                          ; $7a33: $ff
	rst $38                                          ; $7a34: $ff
	rst $38                                          ; $7a35: $ff
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	rst $38                                          ; $7a38: $ff
	rst $38                                          ; $7a39: $ff
	rst $38                                          ; $7a3a: $ff
	rst $38                                          ; $7a3b: $ff
	rst $38                                          ; $7a3c: $ff
	rst $38                                          ; $7a3d: $ff
	rst $38                                          ; $7a3e: $ff
	rst $38                                          ; $7a3f: $ff
	rst $38                                          ; $7a40: $ff
	rst $38                                          ; $7a41: $ff
	rst $38                                          ; $7a42: $ff
	rst $38                                          ; $7a43: $ff
	rst $38                                          ; $7a44: $ff
	rst $38                                          ; $7a45: $ff
	rst $38                                          ; $7a46: $ff
	rst $38                                          ; $7a47: $ff
	rst $38                                          ; $7a48: $ff
	rst $38                                          ; $7a49: $ff
	rst $38                                          ; $7a4a: $ff
	rst $38                                          ; $7a4b: $ff
	rst $38                                          ; $7a4c: $ff
	rst $38                                          ; $7a4d: $ff
	rst $38                                          ; $7a4e: $ff
	rst $38                                          ; $7a4f: $ff
	rst $38                                          ; $7a50: $ff
	rst $38                                          ; $7a51: $ff
	rst $38                                          ; $7a52: $ff
	rst $38                                          ; $7a53: $ff
	rst $38                                          ; $7a54: $ff
	rst $38                                          ; $7a55: $ff
	rst $38                                          ; $7a56: $ff
	rst $38                                          ; $7a57: $ff
	rst $38                                          ; $7a58: $ff
	rst $38                                          ; $7a59: $ff
	rst $38                                          ; $7a5a: $ff
	rst $38                                          ; $7a5b: $ff
	rst $38                                          ; $7a5c: $ff
	rst $38                                          ; $7a5d: $ff
	rst $38                                          ; $7a5e: $ff
	rst $38                                          ; $7a5f: $ff
	rst $38                                          ; $7a60: $ff
	rst $38                                          ; $7a61: $ff
	rst $38                                          ; $7a62: $ff
	rst $38                                          ; $7a63: $ff
	rst $38                                          ; $7a64: $ff
	rst $38                                          ; $7a65: $ff
	rst $38                                          ; $7a66: $ff
	rst $38                                          ; $7a67: $ff
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	rst $38                                          ; $7a6a: $ff
	rst $38                                          ; $7a6b: $ff
	rst $38                                          ; $7a6c: $ff
	rst $38                                          ; $7a6d: $ff
	rst $38                                          ; $7a6e: $ff
	rst $38                                          ; $7a6f: $ff
	rst $38                                          ; $7a70: $ff
	rst $38                                          ; $7a71: $ff
	rst $38                                          ; $7a72: $ff
	rst $38                                          ; $7a73: $ff
	rst $38                                          ; $7a74: $ff
	rst $38                                          ; $7a75: $ff
	rst $38                                          ; $7a76: $ff
	rst $38                                          ; $7a77: $ff
	rst $38                                          ; $7a78: $ff
	rst $38                                          ; $7a79: $ff
	rst $38                                          ; $7a7a: $ff
	rst $38                                          ; $7a7b: $ff
	rst $38                                          ; $7a7c: $ff
	rst $38                                          ; $7a7d: $ff
	rst $38                                          ; $7a7e: $ff
	rst $38                                          ; $7a7f: $ff
	rst $38                                          ; $7a80: $ff
	rst $38                                          ; $7a81: $ff
	rst $38                                          ; $7a82: $ff
	rst $38                                          ; $7a83: $ff
	rst $38                                          ; $7a84: $ff
	rst $38                                          ; $7a85: $ff
	rst $38                                          ; $7a86: $ff
	rst $38                                          ; $7a87: $ff
	rst $38                                          ; $7a88: $ff
	rst $38                                          ; $7a89: $ff
	rst $38                                          ; $7a8a: $ff
	rst $38                                          ; $7a8b: $ff
	rst $38                                          ; $7a8c: $ff
	rst $38                                          ; $7a8d: $ff
	rst $38                                          ; $7a8e: $ff
	rst $38                                          ; $7a8f: $ff
	rst $38                                          ; $7a90: $ff
	rst $38                                          ; $7a91: $ff
	rst $38                                          ; $7a92: $ff
	rst $38                                          ; $7a93: $ff
	rst $38                                          ; $7a94: $ff
	rst $38                                          ; $7a95: $ff
	rst $38                                          ; $7a96: $ff
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	rst $38                                          ; $7a99: $ff
	rst $38                                          ; $7a9a: $ff
	rst $38                                          ; $7a9b: $ff
	rst $38                                          ; $7a9c: $ff
	rst $38                                          ; $7a9d: $ff
	rst $38                                          ; $7a9e: $ff
	rst $38                                          ; $7a9f: $ff
	rst $38                                          ; $7aa0: $ff
	rst $38                                          ; $7aa1: $ff
	rst $38                                          ; $7aa2: $ff
	rst $38                                          ; $7aa3: $ff
	rst $38                                          ; $7aa4: $ff
	rst $38                                          ; $7aa5: $ff
	rst $38                                          ; $7aa6: $ff
	rst $38                                          ; $7aa7: $ff
	rst $38                                          ; $7aa8: $ff
	rst $38                                          ; $7aa9: $ff
	rst $38                                          ; $7aaa: $ff
	rst $38                                          ; $7aab: $ff
	rst $38                                          ; $7aac: $ff
	rst $38                                          ; $7aad: $ff
	rst $38                                          ; $7aae: $ff
	rst $38                                          ; $7aaf: $ff
	rst $38                                          ; $7ab0: $ff
	rst $38                                          ; $7ab1: $ff
	rst $38                                          ; $7ab2: $ff
	rst $38                                          ; $7ab3: $ff
	rst $38                                          ; $7ab4: $ff
	rst $38                                          ; $7ab5: $ff
	rst $38                                          ; $7ab6: $ff
	rst $38                                          ; $7ab7: $ff
	rst $38                                          ; $7ab8: $ff
	rst $38                                          ; $7ab9: $ff
	rst $38                                          ; $7aba: $ff
	rst $38                                          ; $7abb: $ff
	rst $38                                          ; $7abc: $ff
	rst $38                                          ; $7abd: $ff
	rst $38                                          ; $7abe: $ff
	rst $38                                          ; $7abf: $ff
	rst $38                                          ; $7ac0: $ff
	rst $38                                          ; $7ac1: $ff
	rst $38                                          ; $7ac2: $ff
	rst $38                                          ; $7ac3: $ff
	rst $38                                          ; $7ac4: $ff
	rst $38                                          ; $7ac5: $ff
	rst $38                                          ; $7ac6: $ff
	rst $38                                          ; $7ac7: $ff
	rst $38                                          ; $7ac8: $ff
	rst $38                                          ; $7ac9: $ff
	rst $38                                          ; $7aca: $ff
	rst $38                                          ; $7acb: $ff
	rst $38                                          ; $7acc: $ff
	rst $38                                          ; $7acd: $ff
	rst $38                                          ; $7ace: $ff
	rst $38                                          ; $7acf: $ff
	rst $38                                          ; $7ad0: $ff
	rst $38                                          ; $7ad1: $ff
	rst $38                                          ; $7ad2: $ff
	rst $38                                          ; $7ad3: $ff
	rst $38                                          ; $7ad4: $ff
	rst $38                                          ; $7ad5: $ff
	rst $38                                          ; $7ad6: $ff
	rst $38                                          ; $7ad7: $ff
	rst $38                                          ; $7ad8: $ff
	rst $38                                          ; $7ad9: $ff
	rst $38                                          ; $7ada: $ff
	rst $38                                          ; $7adb: $ff
	rst $38                                          ; $7adc: $ff
	rst $38                                          ; $7add: $ff
	rst $38                                          ; $7ade: $ff
	rst $38                                          ; $7adf: $ff
	rst $38                                          ; $7ae0: $ff
	rst $38                                          ; $7ae1: $ff
	rst $38                                          ; $7ae2: $ff
	rst $38                                          ; $7ae3: $ff
	rst $38                                          ; $7ae4: $ff
	rst $38                                          ; $7ae5: $ff
	rst $38                                          ; $7ae6: $ff
	rst $38                                          ; $7ae7: $ff
	rst $38                                          ; $7ae8: $ff
	rst $38                                          ; $7ae9: $ff
	rst $38                                          ; $7aea: $ff
	rst $38                                          ; $7aeb: $ff
	rst $38                                          ; $7aec: $ff
	rst $38                                          ; $7aed: $ff
	rst $38                                          ; $7aee: $ff
	rst $38                                          ; $7aef: $ff
	rst $38                                          ; $7af0: $ff
	rst $38                                          ; $7af1: $ff
	rst $38                                          ; $7af2: $ff
	rst $38                                          ; $7af3: $ff
	rst $38                                          ; $7af4: $ff
	rst $38                                          ; $7af5: $ff
	rst $38                                          ; $7af6: $ff
	rst $38                                          ; $7af7: $ff
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	rst $38                                          ; $7afe: $ff
	rst $38                                          ; $7aff: $ff
	rst $38                                          ; $7b00: $ff
	rst $38                                          ; $7b01: $ff
	rst $38                                          ; $7b02: $ff
	rst $38                                          ; $7b03: $ff
	rst $38                                          ; $7b04: $ff
	rst $38                                          ; $7b05: $ff
	rst $38                                          ; $7b06: $ff
	rst $38                                          ; $7b07: $ff
	rst $38                                          ; $7b08: $ff
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	rst $38                                          ; $7b0b: $ff
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	rst $38                                          ; $7b0e: $ff
	rst $38                                          ; $7b0f: $ff
	rst $38                                          ; $7b10: $ff
	rst $38                                          ; $7b11: $ff
	rst $38                                          ; $7b12: $ff
	rst $38                                          ; $7b13: $ff
	rst $38                                          ; $7b14: $ff
	rst $38                                          ; $7b15: $ff
	rst $38                                          ; $7b16: $ff
	rst $38                                          ; $7b17: $ff
	rst $38                                          ; $7b18: $ff
	rst $38                                          ; $7b19: $ff
	rst $38                                          ; $7b1a: $ff
	rst $38                                          ; $7b1b: $ff
	rst $38                                          ; $7b1c: $ff
	rst $38                                          ; $7b1d: $ff
	rst $38                                          ; $7b1e: $ff
	rst $38                                          ; $7b1f: $ff
	rst $38                                          ; $7b20: $ff
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	rst $38                                          ; $7b25: $ff
	rst $38                                          ; $7b26: $ff
	rst $38                                          ; $7b27: $ff
	rst $38                                          ; $7b28: $ff
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	rst $38                                          ; $7b2d: $ff
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rst $38                                          ; $7b30: $ff
	rst $38                                          ; $7b31: $ff
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	rst $38                                          ; $7b34: $ff
	rst $38                                          ; $7b35: $ff
	rst $38                                          ; $7b36: $ff
	rst $38                                          ; $7b37: $ff
	rst $38                                          ; $7b38: $ff
	rst $38                                          ; $7b39: $ff
	rst $38                                          ; $7b3a: $ff
	rst $38                                          ; $7b3b: $ff
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
	rst $38                                          ; $7b3f: $ff
	rst $38                                          ; $7b40: $ff
	rst $38                                          ; $7b41: $ff
	rst $38                                          ; $7b42: $ff
	rst $38                                          ; $7b43: $ff
	rst $38                                          ; $7b44: $ff
	rst $38                                          ; $7b45: $ff
	rst $38                                          ; $7b46: $ff
	rst $38                                          ; $7b47: $ff
	rst $38                                          ; $7b48: $ff
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	rst $38                                          ; $7b4b: $ff
	rst $38                                          ; $7b4c: $ff
	rst $38                                          ; $7b4d: $ff
	rst $38                                          ; $7b4e: $ff
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	rst $38                                          ; $7b51: $ff
	rst $38                                          ; $7b52: $ff
	rst $38                                          ; $7b53: $ff
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff

Jump_036_7dd1:
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff
	rst $38                                          ; $7e63: $ff
	rst $38                                          ; $7e64: $ff
	rst $38                                          ; $7e65: $ff
	rst $38                                          ; $7e66: $ff
	rst $38                                          ; $7e67: $ff
	rst $38                                          ; $7e68: $ff
	rst $38                                          ; $7e69: $ff
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	rst $38                                          ; $7e6c: $ff
	rst $38                                          ; $7e6d: $ff
	rst $38                                          ; $7e6e: $ff
	rst $38                                          ; $7e6f: $ff
	rst $38                                          ; $7e70: $ff
	rst $38                                          ; $7e71: $ff
	rst $38                                          ; $7e72: $ff
	rst $38                                          ; $7e73: $ff
	rst $38                                          ; $7e74: $ff
	rst $38                                          ; $7e75: $ff
	rst $38                                          ; $7e76: $ff
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
	rst $38                                          ; $7e7b: $ff
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	rst $38                                          ; $7e7f: $ff
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff
	rst $38                                          ; $7e87: $ff
	rst $38                                          ; $7e88: $ff
	rst $38                                          ; $7e89: $ff
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff

Call_036_7e91:
	rst $38                                          ; $7e91: $ff

Jump_036_7e92:
	rst $38                                          ; $7e92: $ff

Jump_036_7e93:
	rst $38                                          ; $7e93: $ff
	rst $38                                          ; $7e94: $ff
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	rst $38                                          ; $7e97: $ff
	rst $38                                          ; $7e98: $ff
	rst $38                                          ; $7e99: $ff
	rst $38                                          ; $7e9a: $ff
	rst $38                                          ; $7e9b: $ff
	rst $38                                          ; $7e9c: $ff
	rst $38                                          ; $7e9d: $ff
	rst $38                                          ; $7e9e: $ff
	rst $38                                          ; $7e9f: $ff
	rst $38                                          ; $7ea0: $ff
	rst $38                                          ; $7ea1: $ff
	rst $38                                          ; $7ea2: $ff
	rst $38                                          ; $7ea3: $ff
	rst $38                                          ; $7ea4: $ff
	rst $38                                          ; $7ea5: $ff
	rst $38                                          ; $7ea6: $ff
	rst $38                                          ; $7ea7: $ff
	rst $38                                          ; $7ea8: $ff
	rst $38                                          ; $7ea9: $ff
	rst $38                                          ; $7eaa: $ff
	rst $38                                          ; $7eab: $ff
	rst $38                                          ; $7eac: $ff
	rst $38                                          ; $7ead: $ff
	rst $38                                          ; $7eae: $ff
	rst $38                                          ; $7eaf: $ff
	rst $38                                          ; $7eb0: $ff
	rst $38                                          ; $7eb1: $ff
	rst $38                                          ; $7eb2: $ff
	rst $38                                          ; $7eb3: $ff
	rst $38                                          ; $7eb4: $ff
	rst $38                                          ; $7eb5: $ff
	rst $38                                          ; $7eb6: $ff
	rst $38                                          ; $7eb7: $ff
	rst $38                                          ; $7eb8: $ff
	rst $38                                          ; $7eb9: $ff
	rst $38                                          ; $7eba: $ff
	rst $38                                          ; $7ebb: $ff
	rst $38                                          ; $7ebc: $ff
	rst $38                                          ; $7ebd: $ff
	rst $38                                          ; $7ebe: $ff
	rst $38                                          ; $7ebf: $ff
	rst $38                                          ; $7ec0: $ff
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff

Call_036_7ed1:
	rst $38                                          ; $7ed1: $ff
	rst $38                                          ; $7ed2: $ff
	rst $38                                          ; $7ed3: $ff
	rst $38                                          ; $7ed4: $ff
	rst $38                                          ; $7ed5: $ff
	rst $38                                          ; $7ed6: $ff
	rst $38                                          ; $7ed7: $ff
	rst $38                                          ; $7ed8: $ff
	rst $38                                          ; $7ed9: $ff
	rst $38                                          ; $7eda: $ff
	rst $38                                          ; $7edb: $ff
	rst $38                                          ; $7edc: $ff
	rst $38                                          ; $7edd: $ff
	rst $38                                          ; $7ede: $ff
	rst $38                                          ; $7edf: $ff
	rst $38                                          ; $7ee0: $ff
	rst $38                                          ; $7ee1: $ff
	rst $38                                          ; $7ee2: $ff
	rst $38                                          ; $7ee3: $ff
	rst $38                                          ; $7ee4: $ff
	rst $38                                          ; $7ee5: $ff
	rst $38                                          ; $7ee6: $ff
	rst $38                                          ; $7ee7: $ff
	rst $38                                          ; $7ee8: $ff
	rst $38                                          ; $7ee9: $ff
	rst $38                                          ; $7eea: $ff
	rst $38                                          ; $7eeb: $ff
	rst $38                                          ; $7eec: $ff
	rst $38                                          ; $7eed: $ff
	rst $38                                          ; $7eee: $ff
	rst $38                                          ; $7eef: $ff
	rst $38                                          ; $7ef0: $ff
	rst $38                                          ; $7ef1: $ff
	rst $38                                          ; $7ef2: $ff
	rst $38                                          ; $7ef3: $ff
	rst $38                                          ; $7ef4: $ff
	rst $38                                          ; $7ef5: $ff
	rst $38                                          ; $7ef6: $ff
	rst $38                                          ; $7ef7: $ff
	rst $38                                          ; $7ef8: $ff
	rst $38                                          ; $7ef9: $ff
	rst $38                                          ; $7efa: $ff
	rst $38                                          ; $7efb: $ff
	rst $38                                          ; $7efc: $ff
	rst $38                                          ; $7efd: $ff
	rst $38                                          ; $7efe: $ff
	rst $38                                          ; $7eff: $ff
	rst $38                                          ; $7f00: $ff
	rst $38                                          ; $7f01: $ff
	rst $38                                          ; $7f02: $ff
	rst $38                                          ; $7f03: $ff
	rst $38                                          ; $7f04: $ff
	rst $38                                          ; $7f05: $ff
	rst $38                                          ; $7f06: $ff
	rst $38                                          ; $7f07: $ff
	rst $38                                          ; $7f08: $ff
	rst $38                                          ; $7f09: $ff
	rst $38                                          ; $7f0a: $ff
	rst $38                                          ; $7f0b: $ff
	rst $38                                          ; $7f0c: $ff
	rst $38                                          ; $7f0d: $ff
	rst $38                                          ; $7f0e: $ff
	rst $38                                          ; $7f0f: $ff
	rst $38                                          ; $7f10: $ff
	rst $38                                          ; $7f11: $ff
	rst $38                                          ; $7f12: $ff
	rst $38                                          ; $7f13: $ff
	rst $38                                          ; $7f14: $ff
	rst $38                                          ; $7f15: $ff
	rst $38                                          ; $7f16: $ff
	rst $38                                          ; $7f17: $ff
	rst $38                                          ; $7f18: $ff
	rst $38                                          ; $7f19: $ff
	rst $38                                          ; $7f1a: $ff
	rst $38                                          ; $7f1b: $ff
	rst $38                                          ; $7f1c: $ff
	rst $38                                          ; $7f1d: $ff
	rst $38                                          ; $7f1e: $ff
	rst $38                                          ; $7f1f: $ff
	rst $38                                          ; $7f20: $ff
	rst $38                                          ; $7f21: $ff
	rst $38                                          ; $7f22: $ff
	rst $38                                          ; $7f23: $ff
	rst $38                                          ; $7f24: $ff
	rst $38                                          ; $7f25: $ff
	rst $38                                          ; $7f26: $ff
	rst $38                                          ; $7f27: $ff
	rst $38                                          ; $7f28: $ff
	rst $38                                          ; $7f29: $ff
	rst $38                                          ; $7f2a: $ff
	rst $38                                          ; $7f2b: $ff
	rst $38                                          ; $7f2c: $ff
	rst $38                                          ; $7f2d: $ff
	rst $38                                          ; $7f2e: $ff
	rst $38                                          ; $7f2f: $ff
	rst $38                                          ; $7f30: $ff
	rst $38                                          ; $7f31: $ff
	rst $38                                          ; $7f32: $ff
	rst $38                                          ; $7f33: $ff
	rst $38                                          ; $7f34: $ff
	rst $38                                          ; $7f35: $ff
	rst $38                                          ; $7f36: $ff
	rst $38                                          ; $7f37: $ff
	rst $38                                          ; $7f38: $ff
	rst $38                                          ; $7f39: $ff
	rst $38                                          ; $7f3a: $ff
	rst $38                                          ; $7f3b: $ff
	rst $38                                          ; $7f3c: $ff
	rst $38                                          ; $7f3d: $ff
	rst $38                                          ; $7f3e: $ff
	rst $38                                          ; $7f3f: $ff
	rst $38                                          ; $7f40: $ff
	rst $38                                          ; $7f41: $ff
	rst $38                                          ; $7f42: $ff
	rst $38                                          ; $7f43: $ff
	rst $38                                          ; $7f44: $ff
	rst $38                                          ; $7f45: $ff
	rst $38                                          ; $7f46: $ff
	rst $38                                          ; $7f47: $ff
	rst $38                                          ; $7f48: $ff
	rst $38                                          ; $7f49: $ff
	rst $38                                          ; $7f4a: $ff
	rst $38                                          ; $7f4b: $ff
	rst $38                                          ; $7f4c: $ff
	rst $38                                          ; $7f4d: $ff
	rst $38                                          ; $7f4e: $ff
	rst $38                                          ; $7f4f: $ff
	rst $38                                          ; $7f50: $ff
	rst $38                                          ; $7f51: $ff
	rst $38                                          ; $7f52: $ff
	rst $38                                          ; $7f53: $ff
	rst $38                                          ; $7f54: $ff
	rst $38                                          ; $7f55: $ff
	rst $38                                          ; $7f56: $ff
	rst $38                                          ; $7f57: $ff
	rst $38                                          ; $7f58: $ff
	rst $38                                          ; $7f59: $ff
	rst $38                                          ; $7f5a: $ff
	rst $38                                          ; $7f5b: $ff
	rst $38                                          ; $7f5c: $ff
	rst $38                                          ; $7f5d: $ff
	rst $38                                          ; $7f5e: $ff
	rst $38                                          ; $7f5f: $ff
	rst $38                                          ; $7f60: $ff
	rst $38                                          ; $7f61: $ff
	rst $38                                          ; $7f62: $ff
	rst $38                                          ; $7f63: $ff
	rst $38                                          ; $7f64: $ff
	rst $38                                          ; $7f65: $ff
	rst $38                                          ; $7f66: $ff
	rst $38                                          ; $7f67: $ff
	rst $38                                          ; $7f68: $ff
	rst $38                                          ; $7f69: $ff
	rst $38                                          ; $7f6a: $ff
	rst $38                                          ; $7f6b: $ff
	rst $38                                          ; $7f6c: $ff
	rst $38                                          ; $7f6d: $ff
	rst $38                                          ; $7f6e: $ff
	rst $38                                          ; $7f6f: $ff
	rst $38                                          ; $7f70: $ff

Jump_036_7f71:
	rst $38                                          ; $7f71: $ff
	rst $38                                          ; $7f72: $ff
	rst $38                                          ; $7f73: $ff
	rst $38                                          ; $7f74: $ff
	rst $38                                          ; $7f75: $ff
	rst $38                                          ; $7f76: $ff
	rst $38                                          ; $7f77: $ff
	rst $38                                          ; $7f78: $ff
	rst $38                                          ; $7f79: $ff
	rst $38                                          ; $7f7a: $ff
	rst $38                                          ; $7f7b: $ff
	rst $38                                          ; $7f7c: $ff
	rst $38                                          ; $7f7d: $ff
	rst $38                                          ; $7f7e: $ff
	rst $38                                          ; $7f7f: $ff
	rst $38                                          ; $7f80: $ff
	rst $38                                          ; $7f81: $ff
	rst $38                                          ; $7f82: $ff
	rst $38                                          ; $7f83: $ff
	rst $38                                          ; $7f84: $ff
	rst $38                                          ; $7f85: $ff
	rst $38                                          ; $7f86: $ff
	rst $38                                          ; $7f87: $ff
	rst $38                                          ; $7f88: $ff
	rst $38                                          ; $7f89: $ff
	rst $38                                          ; $7f8a: $ff
	rst $38                                          ; $7f8b: $ff
	rst $38                                          ; $7f8c: $ff
	rst $38                                          ; $7f8d: $ff
	rst $38                                          ; $7f8e: $ff
	rst $38                                          ; $7f8f: $ff
	rst $38                                          ; $7f90: $ff
	rst $38                                          ; $7f91: $ff
	rst $38                                          ; $7f92: $ff
	rst $38                                          ; $7f93: $ff
	rst $38                                          ; $7f94: $ff
	rst $38                                          ; $7f95: $ff
	rst $38                                          ; $7f96: $ff
	rst $38                                          ; $7f97: $ff
	rst $38                                          ; $7f98: $ff
	rst $38                                          ; $7f99: $ff
	rst $38                                          ; $7f9a: $ff
	rst $38                                          ; $7f9b: $ff
	rst $38                                          ; $7f9c: $ff
	rst $38                                          ; $7f9d: $ff
	rst $38                                          ; $7f9e: $ff
	rst $38                                          ; $7f9f: $ff
	rst $38                                          ; $7fa0: $ff
	rst $38                                          ; $7fa1: $ff
	rst $38                                          ; $7fa2: $ff
	rst $38                                          ; $7fa3: $ff
	rst $38                                          ; $7fa4: $ff
	rst $38                                          ; $7fa5: $ff
	rst $38                                          ; $7fa6: $ff
	rst $38                                          ; $7fa7: $ff
	rst $38                                          ; $7fa8: $ff
	rst $38                                          ; $7fa9: $ff
	rst $38                                          ; $7faa: $ff
	rst $38                                          ; $7fab: $ff
	rst $38                                          ; $7fac: $ff
	rst $38                                          ; $7fad: $ff
	rst $38                                          ; $7fae: $ff
	rst $38                                          ; $7faf: $ff
	rst $38                                          ; $7fb0: $ff
	rst $38                                          ; $7fb1: $ff
	rst $38                                          ; $7fb2: $ff
	rst $38                                          ; $7fb3: $ff
	rst $38                                          ; $7fb4: $ff
	rst $38                                          ; $7fb5: $ff
	rst $38                                          ; $7fb6: $ff
	rst $38                                          ; $7fb7: $ff
	rst $38                                          ; $7fb8: $ff
	rst $38                                          ; $7fb9: $ff
	rst $38                                          ; $7fba: $ff
	rst $38                                          ; $7fbb: $ff
	rst $38                                          ; $7fbc: $ff
	rst $38                                          ; $7fbd: $ff
	rst $38                                          ; $7fbe: $ff
	rst $38                                          ; $7fbf: $ff
	rst $38                                          ; $7fc0: $ff
	rst $38                                          ; $7fc1: $ff
	rst $38                                          ; $7fc2: $ff
	rst $38                                          ; $7fc3: $ff
	rst $38                                          ; $7fc4: $ff
	rst $38                                          ; $7fc5: $ff
	rst $38                                          ; $7fc6: $ff
	rst $38                                          ; $7fc7: $ff
	rst $38                                          ; $7fc8: $ff
	rst $38                                          ; $7fc9: $ff
	rst $38                                          ; $7fca: $ff
	rst $38                                          ; $7fcb: $ff
	rst $38                                          ; $7fcc: $ff
	rst $38                                          ; $7fcd: $ff
	rst $38                                          ; $7fce: $ff
	rst $38                                          ; $7fcf: $ff
	rst $38                                          ; $7fd0: $ff

Jump_036_7fd1:
	rst $38                                          ; $7fd1: $ff
	rst $38                                          ; $7fd2: $ff
	rst $38                                          ; $7fd3: $ff
	rst $38                                          ; $7fd4: $ff
	rst $38                                          ; $7fd5: $ff
	rst $38                                          ; $7fd6: $ff
	rst $38                                          ; $7fd7: $ff
	rst $38                                          ; $7fd8: $ff
	rst $38                                          ; $7fd9: $ff
	rst $38                                          ; $7fda: $ff
	rst $38                                          ; $7fdb: $ff
	rst $38                                          ; $7fdc: $ff
	rst $38                                          ; $7fdd: $ff
	rst $38                                          ; $7fde: $ff
	rst $38                                          ; $7fdf: $ff
	rst $38                                          ; $7fe0: $ff
	rst $38                                          ; $7fe1: $ff
	rst $38                                          ; $7fe2: $ff
	rst $38                                          ; $7fe3: $ff
	rst $38                                          ; $7fe4: $ff
	rst $38                                          ; $7fe5: $ff
	rst $38                                          ; $7fe6: $ff
	rst $38                                          ; $7fe7: $ff
	rst $38                                          ; $7fe8: $ff
	rst $38                                          ; $7fe9: $ff
	rst $38                                          ; $7fea: $ff
	rst $38                                          ; $7feb: $ff
	rst $38                                          ; $7fec: $ff
	rst $38                                          ; $7fed: $ff
	rst $38                                          ; $7fee: $ff
	rst $38                                          ; $7fef: $ff
	rst $38                                          ; $7ff0: $ff
	rst $38                                          ; $7ff1: $ff
	rst $38                                          ; $7ff2: $ff
	rst $38                                          ; $7ff3: $ff
	rst $38                                          ; $7ff4: $ff
	rst $38                                          ; $7ff5: $ff
	rst $38                                          ; $7ff6: $ff
	rst $38                                          ; $7ff7: $ff
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
