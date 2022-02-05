; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

	or [hl]                                          ; $4000: $b6
	adc h                                            ; $4001: $8c
	pop af                                           ; $4002: $f1
	ld bc, $0000                                     ; $4003: $01 $00 $00
	ld a, l                                          ; $4006: $7d
	ld bc, $0163                                     ; $4007: $01 $63 $01
	ld b, $c4                                        ; $400a: $06 $c4
	dec h                                            ; $400c: $25
	ld b, $29                                        ; $400d: $06 $29
	ld b, $2c                                        ; $400f: $06 $2c
	ld b, $7d                                        ; $4011: $06 $7d
	nop                                              ; $4013: $00
	or l                                             ; $4014: $b5
	pop hl                                           ; $4015: $e1
	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	dec e                                            ; $4019: $1d
	ld [$0400], sp                                   ; $401a: $08 $00 $04
	ret                                              ; $401d: $c9


	cp [hl]                                          ; $401e: $be
	inc bc                                           ; $401f: $03
	ld [$0800], sp                                   ; $4020: $08 $00 $08
	nop                                              ; $4023: $00
	cp [hl]                                          ; $4024: $be
	or c                                             ; $4025: $b1
	sub c                                            ; $4026: $91
	ld h, h                                          ; $4027: $64
	rlca                                             ; $4028: $07
	add hl, de                                       ; $4029: $19
	inc h                                            ; $402a: $24
	or c                                             ; $402b: $b1
	or c                                             ; $402c: $b1
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	ld a, [hl]                                       ; $402f: $7e
	dec l                                            ; $4030: $2d
	inc e                                            ; $4031: $1c
	and b                                            ; $4032: $a0
	ld e, $03                                        ; $4033: $1e $03
	sub a                                            ; $4035: $97
	ld c, a                                          ; $4036: $4f
	ld e, $57                                        ; $4037: $1e $57
	sub a                                            ; $4039: $97
	nop                                              ; $403a: $00
	ld a, [hl]                                       ; $403b: $7e
	nop                                              ; $403c: $00
	sub c                                            ; $403d: $91
	call nz, $017d                                   ; $403e: $c4 $7d $01
	inc hl                                           ; $4041: $23
	ld b, $27                                        ; $4042: $06 $27
	ld b, $2a                                        ; $4044: $06 $2a
	ld b, $2f                                        ; $4046: $06 $2f
	inc c                                            ; $4048: $0c
	ld a, l                                          ; $4049: $7d
	nop                                              ; $404a: $00
	or l                                             ; $404b: $b5
	pop af                                           ; $404c: $f1
	nop                                              ; $404d: $00
	ld a, [$1e02]                                    ; $404e: $fa $02 $1e
	inc bc                                           ; $4051: $03
	call $091e                                       ; $4052: $cd $1e $09
	cp [hl]                                          ; $4055: $be
	inc c                                            ; $4056: $0c
	ld e, $1d                                        ; $4057: $1e $1d
	ld e, $1d                                        ; $4059: $1e $1d
	cp [hl]                                          ; $405b: $be
	or c                                             ; $405c: $b1
	ld sp, $0000                                     ; $405d: $31 $00 $00
	dec e                                            ; $4060: $1d
	inc c                                            ; $4061: $0c
	call z, $0319                                    ; $4062: $cc $19 $03
	sub a                                            ; $4065: $97
	ld e, a                                          ; $4066: $5f
	add hl, de                                       ; $4067: $19
	ld b, l                                          ; $4068: $45
	sub a                                            ; $4069: $97
	nop                                              ; $406a: $00
	or l                                             ; $406b: $b5
	pop af                                           ; $406c: $f1
	ld [bc], a                                       ; $406d: $02
	ld a, [$1401]                                    ; $406e: $fa $01 $14
	ld bc, $0b08                                     ; $4071: $01 $08 $0b
	ld d, $01                                        ; $4074: $16 $01
	ld a, [bc]                                       ; $4076: $0a
	dec bc                                           ; $4077: $0b
	jr jr_038_407b                                   ; $4078: $18 $01

	inc c                                            ; $407a: $0c

jr_038_407b:
	dec bc                                           ; $407b: $0b
	or l                                             ; $407c: $b5
	pop af                                           ; $407d: $f1
	ld bc, $0000                                     ; $407e: $01 $00 $00
	ld a, l                                          ; $4081: $7d
	ld bc, $0601                                     ; $4082: $01 $01 $06
	call nz, $0625                                   ; $4085: $c4 $25 $06
	add hl, hl                                       ; $4088: $29
	ld b, $2c                                        ; $4089: $06 $2c
	ld b, $7d                                        ; $408b: $06 $7d
	nop                                              ; $408d: $00
	sub b                                            ; $408e: $90
	rst GetHLinHL                                          ; $408f: $cf
	dec e                                            ; $4090: $1d
	inc bc                                           ; $4091: $03
	jp z, $211d                                      ; $4092: $ca $1d $21

	add hl, de                                       ; $4095: $19
	inc c                                            ; $4096: $0c
	jp $0c19                                         ; $4097: $c3 $19 $0c


	call z, $031e                                    ; $409a: $cc $1e $03
	sub a                                            ; $409d: $97
	ld e, a                                          ; $409e: $5f
	ld e, $57                                        ; $409f: $1e $57
	sub a                                            ; $40a1: $97

jr_038_40a2:
	nop                                              ; $40a2: $00
	sub c                                            ; $40a3: $91
	call nz, $017d                                   ; $40a4: $c4 $7d $01
	inc hl                                           ; $40a7: $23
	ld b, $27                                        ; $40a8: $06 $27
	ld b, $2a                                        ; $40aa: $06 $2a
	ld b, $2f                                        ; $40ac: $06 $2f

jr_038_40ae:
	inc c                                            ; $40ae: $0c
	ld a, l                                          ; $40af: $7d
	nop                                              ; $40b0: $00
	sub b                                            ; $40b1: $90
	jp z, $1ed1                                      ; $40b2: $ca $d1 $1e

	ld a, [bc]                                       ; $40b5: $0a
	jp nz, $021e                                     ; $40b6: $c2 $1e $02

	or c                                             ; $40b9: $b1
	pop af                                           ; $40ba: $f1
	ld a, [$1e02]                                    ; $40bb: $fa $02 $1e
	ld [bc], a                                       ; $40be: $02
	rr [hl]                                          ; $40bf: $cb $1e
	ld a, [bc]                                       ; $40c1: $0a
	dec e                                            ; $40c2: $1d
	inc c                                            ; $40c3: $0c
	ld e, $0c                                        ; $40c4: $1e $0c
	rra                                              ; $40c6: $1f
	inc c                                            ; $40c7: $0c
	jp $0c1f                                         ; $40c8: $c3 $1f $0c


	or c                                             ; $40cb: $b1
	and c                                            ; $40cc: $a1
	ld a, [$2002]                                    ; $40cd: $fa $02 $20
	jr @-$4d                                         ; $40d0: $18 $b1

	ld sp, $0000                                     ; $40d2: $31 $00 $00
	jr nz, jr_038_40e3                               ; $40d5: $20 $0c

	or c                                             ; $40d7: $b1
	pop bc                                           ; $40d8: $c1
	ld a, [$0101]                                    ; $40d9: $fa $01 $01
	inc c                                            ; $40dc: $0c
	nop                                              ; $40dd: $00
	inc c                                            ; $40de: $0c
	ld bc, $b10c                                     ; $40df: $01 $0c $b1
	and c                                            ; $40e2: $a1

jr_038_40e3:
	ld h, h                                          ; $40e3: $64
	ld [bc], a                                       ; $40e4: $02
	inc h                                            ; $40e5: $24
	inc c                                            ; $40e6: $0c
	inc h                                            ; $40e7: $24
	inc c                                            ; $40e8: $0c
	sub [hl]                                         ; $40e9: $96
	ld [hl-], a                                      ; $40ea: $32
	rlca                                             ; $40eb: $07
	dec h                                            ; $40ec: $25
	ld c, b                                          ; $40ed: $48
	sub [hl]                                         ; $40ee: $96
	ld h, h                                          ; $40ef: $64
	ld [bc], a                                       ; $40f0: $02
	inc h                                            ; $40f1: $24
	inc c                                            ; $40f2: $0c
	inc h                                            ; $40f3: $24
	inc c                                            ; $40f4: $0c
	sub [hl]                                         ; $40f5: $96
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	cp l                                             ; $40f8: $bd
	ld [bc], a                                       ; $40f9: $02
	dec h                                            ; $40fa: $25
	inc c                                            ; $40fb: $0c
	inc c                                            ; $40fc: $0c
	or l                                             ; $40fd: $b5
	ld [hl], c                                       ; $40fe: $71
	nop                                              ; $40ff: $00
	sub [hl]                                         ; $4100: $96
	inc bc                                           ; $4101: $03
	ld e, $0c                                        ; $4102: $1e $0c
	jr nz, jr_038_4112                               ; $4104: $20 $0c

	sub [hl]                                         ; $4106: $96
	ld h, h                                          ; $4107: $64
	rlca                                             ; $4108: $07
	dec h                                            ; $4109: $25
	jr jr_038_40a2                                   ; $410a: $18 $96

	sub [hl]                                         ; $410c: $96
	inc bc                                           ; $410d: $03
	ld e, $0c                                        ; $410e: $1e $0c
	jr nz, jr_038_411e                               ; $4110: $20 $0c

jr_038_4112:
	sub [hl]                                         ; $4112: $96
	ld h, h                                          ; $4113: $64
	rlca                                             ; $4114: $07
	dec h                                            ; $4115: $25
	jr jr_038_40ae                                   ; $4116: $18 $96

	sub [hl]                                         ; $4118: $96
	inc bc                                           ; $4119: $03
	ld e, $0c                                        ; $411a: $1e $0c
	jr nz, jr_038_412a                               ; $411c: $20 $0c

jr_038_411e:
	dec h                                            ; $411e: $25
	inc c                                            ; $411f: $0c
	or c                                             ; $4120: $b1
	pop de                                           ; $4121: $d1
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	dec c                                            ; $4124: $0d
	dec b                                            ; $4125: $05
	nop                                              ; $4126: $00
	rlca                                             ; $4127: $07
	dec c                                            ; $4128: $0d
	dec b                                            ; $4129: $05

jr_038_412a:
	nop                                              ; $412a: $00
	rlca                                             ; $412b: $07
	or l                                             ; $412c: $b5
	ld sp, $c802                                     ; $412d: $31 $02 $c8
	ld bc, $0525                                     ; $4130: $01 $25 $05
	add hl, hl                                       ; $4133: $29
	dec b                                            ; $4134: $05
	call nz, $052c                                   ; $4135: $c4 $2c $05
	cpl                                              ; $4138: $2f
	dec b                                            ; $4139: $05
	jr nc, jr_038_4140                               ; $413a: $30 $04

	cp $c6                                           ; $413c: $fe $c6
	sub d                                            ; $413e: $92
	pop de                                           ; $413f: $d1

jr_038_4140:
	ld h, e                                          ; $4140: $63
	sub [hl]                                         ; $4141: $96
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	ei                                               ; $4144: $fb
	call nz, $0331                                   ; $4145: $c4 $31 $03
	jp nz, $0331                                     ; $4148: $c2 $31 $03

	call nz, $032c                                   ; $414b: $c4 $2c $03
	jp nz, $0331                                     ; $414e: $c2 $31 $03

	call nz, $0329                                   ; $4151: $c4 $29 $03
	jp nz, $032c                                     ; $4154: $c2 $2c $03

	call nz, $0325                                   ; $4157: $c4 $25 $03
	jp nz, $0329                                     ; $415a: $c2 $29 $03

	ei                                               ; $415d: $fb
	ld [$c4fb], sp                                   ; $415e: $08 $fb $c4
	cpl                                              ; $4161: $2f
	inc bc                                           ; $4162: $03
	jp nz, $032f                                     ; $4163: $c2 $2f $03

	call nz, $032a                                   ; $4166: $c4 $2a $03
	jp nz, $032f                                     ; $4169: $c2 $2f $03

	call nz, $0327                                   ; $416c: $c4 $27 $03
	jp nz, $032a                                     ; $416f: $c2 $2a $03

	ld a, l                                          ; $4172: $7d
	ld bc, $23c4                                     ; $4173: $01 $c4 $23
	inc bc                                           ; $4176: $03
	jp nz, $0327                                     ; $4177: $c2 $27 $03

	ld a, l                                          ; $417a: $7d
	nop                                              ; $417b: $00
	ei                                               ; $417c: $fb
	ld [$c4fb], sp                                   ; $417d: $08 $fb $c4
	ld sp, $c203                                     ; $4180: $31 $03 $c2
	ld sp, $c403                                     ; $4183: $31 $03 $c4
	inc l                                            ; $4186: $2c
	inc bc                                           ; $4187: $03
	jp nz, $0331                                     ; $4188: $c2 $31 $03

	call nz, $0329                                   ; $418b: $c4 $29 $03
	jp nz, $032c                                     ; $418e: $c2 $2c $03

	call nz, $0325                                   ; $4191: $c4 $25 $03
	jp nz, $0329                                     ; $4194: $c2 $29 $03

	ei                                               ; $4197: $fb
	ld [$c4fb], sp                                   ; $4198: $08 $fb $c4
	cpl                                              ; $419b: $2f
	inc bc                                           ; $419c: $03
	jp nz, $032f                                     ; $419d: $c2 $2f $03

	call nz, $032a                                   ; $41a0: $c4 $2a $03
	jp nz, $032f                                     ; $41a3: $c2 $2f $03

	call nz, $0327                                   ; $41a6: $c4 $27 $03
	jp nz, $032a                                     ; $41a9: $c2 $2a $03

	call nz, $0323                                   ; $41ac: $c4 $23 $03
	jp nz, $0327                                     ; $41af: $c2 $27 $03

	ei                                               ; $41b2: $fb
	inc bc                                           ; $41b3: $03
	call nz, $032f                                   ; $41b4: $c4 $2f $03
	jp nz, $032f                                     ; $41b7: $c2 $2f $03

	call nz, $032a                                   ; $41ba: $c4 $2a $03
	jp nz, $032f                                     ; $41bd: $c2 $2f $03

	or l                                             ; $41c0: $b5
	ld d, c                                          ; $41c1: $51
	ld [bc], a                                       ; $41c2: $02
	jr z, jr_038_41cc                                ; $41c3: $28 $07

	ld a, [hl+]                                      ; $41c5: $2a
	inc h                                            ; $41c6: $24
	sub [hl]                                         ; $41c7: $96
	ld h, h                                          ; $41c8: $64
	inc b                                            ; $41c9: $04
	cp [hl]                                          ; $41ca: $be
	inc c                                            ; $41cb: $0c

jr_038_41cc:
	ld a, [hl+]                                      ; $41cc: $2a
	ld a, [hl+]                                      ; $41cd: $2a
	ld a, [hl+]                                      ; $41ce: $2a
	daa                                              ; $41cf: $27
	ld a, [hl+]                                      ; $41d0: $2a
	cpl                                              ; $41d1: $2f
	cp [hl]                                          ; $41d2: $be
	or l                                             ; $41d3: $b5
	ld sp, $0002                                     ; $41d4: $31 $02 $00
	nop                                              ; $41d7: $00
	ld h, e                                          ; $41d8: $63
	add hl, hl                                       ; $41d9: $29
	jr @-$2f                                         ; $41da: $18 $cf

	cp [hl]                                          ; $41dc: $be
	inc bc                                           ; $41dd: $03
	ld [$0800], sp                                   ; $41de: $08 $00 $08
	nop                                              ; $41e1: $00
	ld [$91be], sp                                   ; $41e2: $08 $be $91
	jp nz, $017d                                     ; $41e5: $c2 $7d $01

	add hl, hl                                       ; $41e8: $29
	inc c                                            ; $41e9: $0c
	dec h                                            ; $41ea: $25
	inc c                                            ; $41eb: $0c
	jr nz, @+$17                                     ; $41ec: $20 $15

	ld a, l                                          ; $41ee: $7d
	nop                                              ; $41ef: $00
	or c                                             ; $41f0: $b1
	ld h, c                                          ; $41f1: $61
	ld a, [$1902]                                    ; $41f2: $fa $02 $19
	ld b, $1b                                        ; $41f5: $06 $1b
	ld b, $1d                                        ; $41f7: $06 $1d
	ld b, $1b                                        ; $41f9: $06 $1b
	ld b, $c7                                        ; $41fb: $06 $c7
	cp [hl]                                          ; $41fd: $be
	ld b, $1d                                        ; $41fe: $06 $1d
	ld e, $1d                                        ; $4200: $1e $1d
	ld e, $be                                        ; $4202: $1e $be
	ret z                                            ; $4204: $c8

	jr nz, @+$08                                     ; $4205: $20 $06

	ld e, $06                                        ; $4207: $1e $06
	jr nz, jr_038_4211                               ; $4209: $20 $06

	ld a, l                                          ; $420b: $7d
	ld bc, $061e                                     ; $420c: $01 $1e $06
	ld a, l                                          ; $420f: $7d
	nop                                              ; $4210: $00

jr_038_4211:
	ret                                              ; $4211: $c9


	cp [hl]                                          ; $4212: $be
	ld b, $20                                        ; $4213: $06 $20
	ld [hl+], a                                      ; $4215: $22
	jr nz, jr_038_423a                               ; $4216: $20 $22

	inc h                                            ; $4218: $24
	dec h                                            ; $4219: $25
	cp [hl]                                          ; $421a: $be
	ld a, [hl]                                       ; $421b: $7e
	dec l                                            ; $421c: $2d
	inc c                                            ; $421d: $0c
	and c                                            ; $421e: $a1
	or l                                             ; $421f: $b5
	add c                                            ; $4220: $81
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	ld e, $0c                                        ; $4224: $1e $0c
	rst GetHLinHL                                          ; $4226: $cf
	ei                                               ; $4227: $fb
	rst GetHLinHL                                          ; $4228: $cf
	dec bc                                           ; $4229: $0b
	inc b                                            ; $422a: $04
	nop                                              ; $422b: $00
	ld [bc], a                                       ; $422c: $02
	ei                                               ; $422d: $fb
	inc bc                                           ; $422e: $03
	ret                                              ; $422f: $c9


	dec bc                                           ; $4230: $0b
	ld b, $c8                                        ; $4231: $06 $c8
	dec e                                            ; $4233: $1d
	inc c                                            ; $4234: $0c
	rst GetHLinHL                                          ; $4235: $cf
	ei                                               ; $4236: $fb
	ld a, [bc]                                       ; $4237: $0a
	inc b                                            ; $4238: $04
	nop                                              ; $4239: $00

jr_038_423a:
	ld [bc], a                                       ; $423a: $02
	ei                                               ; $423b: $fb
	inc bc                                           ; $423c: $03
	ret                                              ; $423d: $c9


	ld a, [bc]                                       ; $423e: $0a
	ld b, $c8                                        ; $423f: $06 $c8
	ld e, $0c                                        ; $4241: $1e $0c
	rst GetHLinHL                                          ; $4243: $cf
	dec bc                                           ; $4244: $0b
	ld b, $c4                                        ; $4245: $06 $c4
	dec bc                                           ; $4247: $0b
	ld b, $c8                                        ; $4248: $06 $c8
	dec e                                            ; $424a: $1d
	inc c                                            ; $424b: $0c
	rst GetHLinHL                                          ; $424c: $cf
	ei                                               ; $424d: $fb
	ld a, [bc]                                       ; $424e: $0a
	inc b                                            ; $424f: $04
	nop                                              ; $4250: $00
	ld [bc], a                                       ; $4251: $02
	ei                                               ; $4252: $fb
	inc bc                                           ; $4253: $03
	ret                                              ; $4254: $c9


	ld a, [bc]                                       ; $4255: $0a
	ld b, $c7                                        ; $4256: $06 $c7
	dec de                                           ; $4258: $1b
	jr nc, jr_038_42d9                               ; $4259: $30 $7e

	nop                                              ; $425b: $00
	or c                                             ; $425c: $b1
	pop hl                                           ; $425d: $e1
	ld h, h                                          ; $425e: $64
	ld [bc], a                                       ; $425f: $02
	inc d                                            ; $4260: $14
	inc c                                            ; $4261: $0c
	pop de                                           ; $4262: $d1
	add hl, de                                       ; $4263: $19
	inc c                                            ; $4264: $0c
	or c                                             ; $4265: $b1
	ld hl, $0000                                     ; $4266: $21 $00 $00
	add hl, de                                       ; $4269: $19
	inc c                                            ; $426a: $0c
	push bc                                          ; $426b: $c5
	ei                                               ; $426c: $fb
	add $1c                                          ; $426d: $c6 $1c
	ld b, $c6                                        ; $426f: $06 $c6
	ld d, $03                                        ; $4271: $16 $03
	add $06                                          ; $4273: $c6 $06
	inc bc                                           ; $4275: $03
	ei                                               ; $4276: $fb
	ld c, $c9                                        ; $4277: $0e $c9
	ld a, [hl]                                       ; $4279: $7e
	dec l                                            ; $427a: $2d
	ld d, $a0                                        ; $427b: $16 $a0
	sub [hl]                                         ; $427d: $96
	ld [hl-], a                                      ; $427e: $32
	ld b, $25                                        ; $427f: $06 $25
	inc h                                            ; $4281: $24
	jr nz, jr_038_42a8                               ; $4282: $20 $24

	sub [hl]                                         ; $4284: $96
	ld [hl-], a                                      ; $4285: $32
	inc b                                            ; $4286: $04
	add hl, hl                                       ; $4287: $29
	inc c                                            ; $4288: $0c
	daa                                              ; $4289: $27
	inc c                                            ; $428a: $0c
	sub [hl]                                         ; $428b: $96
	ld [hl-], a                                      ; $428c: $32
	ld b, $25                                        ; $428d: $06 $25
	inc h                                            ; $428f: $24
	jr nz, jr_038_42ce                               ; $4290: $20 $3c

	ld a, [hl]                                       ; $4292: $7e
	nop                                              ; $4293: $00
	push bc                                          ; $4294: $c5
	pop de                                           ; $4295: $d1
	sub c                                            ; $4296: $91
	call nz, $fb63                                   ; $4297: $c4 $63 $fb
	ret z                                            ; $429a: $c8

	ld e, $06                                        ; $429b: $1e $06
	rst JumpTable                                          ; $429d: $c7
	dec bc                                           ; $429e: $0b
	ld b, $fb                                        ; $429f: $06 $fb
	inc c                                            ; $42a1: $0c
	or c                                             ; $42a2: $b1
	and c                                            ; $42a3: $a1
	sub [hl]                                         ; $42a4: $96
	inc bc                                           ; $42a5: $03
	ld e, $0c                                        ; $42a6: $1e $0c

jr_038_42a8:
	rra                                              ; $42a8: $1f
	inc c                                            ; $42a9: $0c
	or c                                             ; $42aa: $b1
	pop af                                           ; $42ab: $f1
	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	ld [$c306], sp                                   ; $42ae: $08 $06 $c3
	jr nz, jr_038_42b9                               ; $42b1: $20 $06

	jp z, $2420                                      ; $42b3: $ca $20 $24

	sub c                                            ; $42b6: $91
	add $fb                                          ; $42b7: $c6 $fb

jr_038_42b9:
	rst GetHLinHL                                          ; $42b9: $cf
	ld bc, $c604                                     ; $42ba: $01 $04 $c6
	cp [hl]                                          ; $42bd: $be
	inc b                                            ; $42be: $04
	dec e                                            ; $42bf: $1d
	jr nz, jr_038_42e5                               ; $42c0: $20 $23

	add hl, hl                                       ; $42c2: $29
	inc l                                            ; $42c3: $2c
	cp [hl]                                          ; $42c4: $be
	ei                                               ; $42c5: $fb
	rlca                                             ; $42c6: $07
	or c                                             ; $42c7: $b1
	add c                                            ; $42c8: $81

jr_038_42c9:
	ld a, [$1205]                                    ; $42c9: $fa $05 $12
	jr jr_038_42c9                                   ; $42cc: $18 $fb

jr_038_42ce:
	ret z                                            ; $42ce: $c8

	ld [de], a                                       ; $42cf: $12
	inc c                                            ; $42d0: $0c
	ret z                                            ; $42d1: $c8

	rrca                                             ; $42d2: $0f
	inc c                                            ; $42d3: $0c
	ei                                               ; $42d4: $fb
	ld [bc], a                                       ; $42d5: $02
	ret z                                            ; $42d6: $c8

	ld [de], a                                       ; $42d7: $12
	inc c                                            ; $42d8: $0c

jr_038_42d9:
	ld [de], a                                       ; $42d9: $12
	inc c                                            ; $42da: $0c
	ret z                                            ; $42db: $c8

	rrca                                             ; $42dc: $0f
	inc c                                            ; $42dd: $0c
	ret z                                            ; $42de: $c8

	ld [de], a                                       ; $42df: $12
	inc c                                            ; $42e0: $0c
	ld [de], a                                       ; $42e1: $12
	inc c                                            ; $42e2: $0c
	ret z                                            ; $42e3: $c8

	rrca                                             ; $42e4: $0f

jr_038_42e5:
	inc c                                            ; $42e5: $0c
	jp z, $0612                                      ; $42e6: $ca $12 $06

	ret z                                            ; $42e9: $c8

	dec bc                                           ; $42ea: $0b
	ld b, $ca                                        ; $42eb: $06 $ca
	ld [de], a                                       ; $42ed: $12
	ld b, $c8                                        ; $42ee: $06 $c8
	dec bc                                           ; $42f0: $0b
	ld b, $b1                                        ; $42f1: $06 $b1
	ld hl, $0000                                     ; $42f3: $21 $00 $00
	ld [de], a                                       ; $42f6: $12
	inc c                                            ; $42f7: $0c
	add $20                                          ; $42f8: $c6 $20
	inc h                                            ; $42fa: $24
	sub c                                            ; $42fb: $91
	ret                                              ; $42fc: $c9


	ei                                               ; $42fd: $fb
	rst GetHLinHL                                          ; $42fe: $cf
	ld bc, $c604                                     ; $42ff: $01 $04 $c6
	cp [hl]                                          ; $4302: $be
	inc b                                            ; $4303: $04
	add hl, de                                       ; $4304: $19
	dec e                                            ; $4305: $1d
	jr nz, @+$25                                     ; $4306: $20 $23

	dec h                                            ; $4308: $25
	cp [hl]                                          ; $4309: $be
	ei                                               ; $430a: $fb
	ld b, $17                                        ; $430b: $06 $17
	inc b                                            ; $430d: $04
	add hl, de                                       ; $430e: $19
	inc b                                            ; $430f: $04
	dec e                                            ; $4310: $1d
	inc b                                            ; $4311: $04
	add $19                                          ; $4312: $c6 $19
	inc c                                            ; $4314: $0c
	cp $ff                                           ; $4315: $fe $ff
	or [hl]                                          ; $4317: $b6
	adc h                                            ; $4318: $8c
	add c                                            ; $4319: $81
	ld bc, $02c8                                     ; $431a: $01 $c8 $02
	ld h, e                                          ; $431d: $63
	cp [hl]                                          ; $431e: $be
	ld b, $25                                        ; $431f: $06 $25
	add hl, hl                                       ; $4321: $29
	inc l                                            ; $4322: $2c
	ld sp, $b5be                                     ; $4323: $31 $be $b5
	pop af                                           ; $4326: $f1
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	jr nz, jr_038_4334                               ; $432a: $20 $08

	sub c                                            ; $432c: $91
	jp nz, $0431                                     ; $432d: $c2 $31 $04

	sub b                                            ; $4330: $90
	rst GetHLinHL                                          ; $4331: $cf
	cp [hl]                                          ; $4332: $be
	inc bc                                           ; $4333: $03

jr_038_4334:
	ld bc, $0100                                     ; $4334: $01 $00 $01
	nop                                              ; $4337: $00
	cp [hl]                                          ; $4338: $be
	or c                                             ; $4339: $b1
	pop hl                                           ; $433a: $e1
	ld h, h                                          ; $433b: $64
	rlca                                             ; $433c: $07
	dec e                                            ; $433d: $1d
	inc h                                            ; $433e: $24
	sub [hl]                                         ; $433f: $96
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	ld a, [hl]                                       ; $4342: $7e
	dec l                                            ; $4343: $2d
	inc e                                            ; $4344: $1c
	and b                                            ; $4345: $a0
	rst GetHLinHL                                          ; $4346: $cf
	ld [hl+], a                                      ; $4347: $22
	inc bc                                           ; $4348: $03
	sub a                                            ; $4349: $97
	sbc a                                            ; $434a: $9f
	ld [hl+], a                                      ; $434b: $22
	ld d, c                                          ; $434c: $51
	sub a                                            ; $434d: $97
	nop                                              ; $434e: $00
	ld a, [hl]                                       ; $434f: $7e
	nop                                              ; $4350: $00
	or l                                             ; $4351: $b5
	add c                                            ; $4352: $81
	ld bc, $02c8                                     ; $4353: $01 $c8 $02
	cp [hl]                                          ; $4356: $be
	ld b, $23                                        ; $4357: $06 $23
	daa                                              ; $4359: $27
	ld a, [hl+]                                      ; $435a: $2a
	cpl                                              ; $435b: $2f
	cp [hl]                                          ; $435c: $be
	jp $062a                                         ; $435d: $c3 $2a $06


	cpl                                              ; $4360: $2f
	ld b, $b5                                        ; $4361: $06 $b5
	pop af                                           ; $4363: $f1
	nop                                              ; $4364: $00
	nop                                              ; $4365: $00
	nop                                              ; $4366: $00
	inc hl                                           ; $4367: $23
	add hl, bc                                       ; $4368: $09
	jp nz, $0323                                     ; $4369: $c2 $23 $03

	or c                                             ; $436c: $b1
	pop hl                                           ; $436d: $e1
	ret z                                            ; $436e: $c8

	ld [bc], a                                       ; $436f: $02
	cp [hl]                                          ; $4370: $be
	inc c                                            ; $4371: $0c
	inc hl                                           ; $4372: $23
	ld [hl+], a                                      ; $4373: $22
	inc hl                                           ; $4374: $23
	ld [hl+], a                                      ; $4375: $22
	cp [hl]                                          ; $4376: $be
	jp $0c22                                         ; $4377: $c3 $22 $0c


	or c                                             ; $437a: $b1
	pop af                                           ; $437b: $f1
	nop                                              ; $437c: $00
	nop                                              ; $437d: $00
	jr nz, @+$05                                     ; $437e: $20 $03

	sub a                                            ; $4380: $97
	sbc a                                            ; $4381: $9f
	jr nz, jr_038_43bd                               ; $4382: $20 $39

	add $97                                          ; $4384: $c6 $97
	nop                                              ; $4386: $00
	jr nz, jr_038_43b9                               ; $4387: $20 $30

	or l                                             ; $4389: $b5
	sub c                                            ; $438a: $91
	ld bc, $02c8                                     ; $438b: $01 $c8 $02
	cp [hl]                                          ; $438e: $be

jr_038_438f:
	ld b, $25                                        ; $438f: $06 $25
	add hl, hl                                       ; $4391: $29
	inc l                                            ; $4392: $2c
	ld sp, $b5be                                     ; $4393: $31 $be $b5
	pop af                                           ; $4396: $f1
	nop                                              ; $4397: $00
	nop                                              ; $4398: $00
	nop                                              ; $4399: $00
	jr nz, jr_038_439f                               ; $439a: $20 $03

	call $2120                                       ; $439c: $cd $20 $21

jr_038_439f:
	dec e                                            ; $439f: $1d
	inc c                                            ; $43a0: $0c
	jp $0c1d                                         ; $43a1: $c3 $1d $0c


	rst GetHLinHL                                          ; $43a4: $cf
	ld [hl+], a                                      ; $43a5: $22
	inc bc                                           ; $43a6: $03
	sub a                                            ; $43a7: $97
	sbc a                                            ; $43a8: $9f
	ld [hl+], a                                      ; $43a9: $22
	ld d, c                                          ; $43aa: $51
	sub a                                            ; $43ab: $97
	nop                                              ; $43ac: $00
	or l                                             ; $43ad: $b5
	ld [hl], c                                       ; $43ae: $71
	ld bc, $02c8                                     ; $43af: $01 $c8 $02
	cp [hl]                                          ; $43b2: $be
	ld b, $23                                        ; $43b3: $06 $23
	daa                                              ; $43b5: $27
	ld a, [hl+]                                      ; $43b6: $2a
	cpl                                              ; $43b7: $2f
	cp [hl]                                          ; $43b8: $be

jr_038_43b9:
	jp $062a                                         ; $43b9: $c3 $2a $06


	cpl                                              ; $43bc: $2f

jr_038_43bd:
	ld b, $b5                                        ; $43bd: $06 $b5
	pop af                                           ; $43bf: $f1
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	inc hl                                           ; $43c3: $23
	ld a, [bc]                                       ; $43c4: $0a
	jp $0223                                         ; $43c5: $c3 $23 $02


	or c                                             ; $43c8: $b1
	pop hl                                           ; $43c9: $e1
	ld a, [$be02]                                    ; $43ca: $fa $02 $be
	inc c                                            ; $43cd: $0c
	inc hl                                           ; $43ce: $23
	ld [hl+], a                                      ; $43cf: $22
	inc hl                                           ; $43d0: $23
	inc h                                            ; $43d1: $24
	cp [hl]                                          ; $43d2: $be
	jp $0c24                                         ; $43d3: $c3 $24 $0c


	or c                                             ; $43d6: $b1
	pop de                                           ; $43d7: $d1
	ld h, h                                          ; $43d8: $64
	rlca                                             ; $43d9: $07
	dec h                                            ; $43da: $25
	inc c                                            ; $43db: $0c
	jp $3c25                                         ; $43dc: $c3 $25 $3c


	or c                                             ; $43df: $b1
	or c                                             ; $43e0: $b1
	ld h, h                                          ; $43e1: $64
	ld [bc], a                                       ; $43e2: $02
	daa                                              ; $43e3: $27
	inc c                                            ; $43e4: $0c
	daa                                              ; $43e5: $27

jr_038_43e6:
	inc c                                            ; $43e6: $0c
	or c                                             ; $43e7: $b1
	add c                                            ; $43e8: $81
	ld e, $07                                        ; $43e9: $1e $07
	ld a, [hl]                                       ; $43eb: $7e
	dec l                                            ; $43ec: $2d
	jr nz, jr_038_438f                               ; $43ed: $20 $a0

	add hl, hl                                       ; $43ef: $29

jr_038_43f0:
	ld c, b                                          ; $43f0: $48

jr_038_43f1:
	or c                                             ; $43f1: $b1
	or c                                             ; $43f2: $b1
	ld h, h                                          ; $43f3: $64
	ld [bc], a                                       ; $43f4: $02
	daa                                              ; $43f5: $27
	inc c                                            ; $43f6: $0c
	daa                                              ; $43f7: $27
	inc c                                            ; $43f8: $0c
	or c                                             ; $43f9: $b1
	add c                                            ; $43fa: $81
	ld e, $07                                        ; $43fb: $1e $07
	ld a, [hl]                                       ; $43fd: $7e
	nop                                              ; $43fe: $00
	add hl, hl                                       ; $43ff: $29
	call z, $0096                                    ; $4400: $cc $96 $00
	nop                                              ; $4403: $00
	cp $ce                                           ; $4404: $fe $ce
	sub c                                            ; $4406: $91
	ld h, e                                          ; $4407: $63
	ld a, [hl]                                       ; $4408: $7e
	dec l                                            ; $4409: $2d
	inc c                                            ; $440a: $0c
	and b                                            ; $440b: $a0
	sub [hl]                                         ; $440c: $96
	ld h, h                                          ; $440d: $64
	ld bc, $0cbe                                     ; $440e: $01 $be $0c
	dec e                                            ; $4411: $1d
	dec e                                            ; $4412: $1d
	dec e                                            ; $4413: $1d
	dec e                                            ; $4414: $1d
	dec e                                            ; $4415: $1d
	cp [hl]                                          ; $4416: $be
	sub [hl]                                         ; $4417: $96
	ld h, h                                          ; $4418: $64
	inc b                                            ; $4419: $04
	ld e, $18                                        ; $441a: $1e $18
	jr nz, jr_038_4436                               ; $441c: $20 $18

	sub [hl]                                         ; $441e: $96
	ld h, h                                          ; $441f: $64
	ld bc, $0cbe                                     ; $4420: $01 $be $0c
	jr nz, jr_038_4445                               ; $4423: $20 $20

	dec e                                            ; $4425: $1d
	jr nz, jr_038_43e6                               ; $4426: $20 $be

	or c                                             ; $4428: $b1
	pop bc                                           ; $4429: $c1
	ld h, h                                          ; $442a: $64
	inc b                                            ; $442b: $04
	ld [hl+], a                                      ; $442c: $22
	jr jr_038_4452                                   ; $442d: $18 $23

jr_038_442f:
	jr @-$68                                         ; $442f: $18 $96

	ld h, h                                          ; $4431: $64
	ld bc, $0cbe                                     ; $4432: $01 $be $0c
	inc hl                                           ; $4435: $23

jr_038_4436:
	inc hl                                           ; $4436: $23
	ld [hl+], a                                      ; $4437: $22
	inc hl                                           ; $4438: $23
	cp [hl]                                          ; $4439: $be
	sub [hl]                                         ; $443a: $96

jr_038_443b:
	ld h, h                                          ; $443b: $64
	inc b                                            ; $443c: $04
	ld [hl+], a                                      ; $443d: $22
	jr jr_038_43f1                                   ; $443e: $18 $b1

	or c                                             ; $4440: $b1
	ld b, [hl]                                       ; $4441: $46
	rlca                                             ; $4442: $07
	ld a, [hl]                                       ; $4443: $7e
	dec l                                            ; $4444: $2d

jr_038_4445:
	ld a, $a0                                        ; $4445: $3e $a0
	inc hl                                           ; $4447: $23
	ld l, h                                          ; $4448: $6c
	ld a, [hl]                                       ; $4449: $7e
	dec l                                            ; $444a: $2d
	inc c                                            ; $444b: $0c
	and b                                            ; $444c: $a0
	or c                                             ; $444d: $b1
	ld sp, $0000                                     ; $444e: $31 $00 $00
	inc hl                                           ; $4451: $23

jr_038_4452:
	jr @-$4d                                         ; $4452: $18 $b1

	pop de                                           ; $4454: $d1
	ld h, h                                          ; $4455: $64
	inc b                                            ; $4456: $04
	dec e                                            ; $4457: $1d
	jr jr_038_43f0                                   ; $4458: $18 $96

	ld h, h                                          ; $445a: $64
	ld bc, $0c19                                     ; $445b: $01 $19 $0c
	dec e                                            ; $445e: $1d
	inc c                                            ; $445f: $0c
	ld e, $0c                                        ; $4460: $1e $0c
	sub [hl]                                         ; $4462: $96
	ld h, h                                          ; $4463: $64
	inc b                                            ; $4464: $04
	jr nz, jr_038_447f                               ; $4465: $20 $18

	sub [hl]                                         ; $4467: $96
	ld h, h                                          ; $4468: $64
	ld bc, $0cbe                                     ; $4469: $01 $be $0c
	jr nz, jr_038_448e                               ; $446c: $20 $20

	dec e                                            ; $446e: $1d

jr_038_446f:
	jr nz, jr_038_442f                               ; $446f: $20 $be

	or c                                             ; $4471: $b1
	pop bc                                           ; $4472: $c1
	ld h, h                                          ; $4473: $64
	inc b                                            ; $4474: $04
	ld [hl+], a                                      ; $4475: $22
	jr jr_038_449b                                   ; $4476: $18 $23

	jr @-$68                                         ; $4478: $18 $96

	ld h, h                                          ; $447a: $64
	ld bc, $0cbe                                     ; $447b: $01 $be $0c
	inc hl                                           ; $447e: $23

jr_038_447f:
	inc hl                                           ; $447f: $23
	ld [hl+], a                                      ; $4480: $22
	inc hl                                           ; $4481: $23
	cp [hl]                                          ; $4482: $be
	or c                                             ; $4483: $b1
	sub c                                            ; $4484: $91
	ld h, h                                          ; $4485: $64
	inc b                                            ; $4486: $04
	dec h                                            ; $4487: $25
	jr jr_038_443b                                   ; $4488: $18 $b1

	ld [hl], c                                       ; $448a: $71
	inc a                                            ; $448b: $3c
	rlca                                             ; $448c: $07
	ld a, [hl]                                       ; $448d: $7e

jr_038_448e:
	dec l                                            ; $448e: $2d
	ld a, $a0                                        ; $448f: $3e $a0
	daa                                              ; $4491: $27
	ld l, h                                          ; $4492: $6c
	ld a, [hl]                                       ; $4493: $7e
	nop                                              ; $4494: $00
	or l                                             ; $4495: $b5
	add c                                            ; $4496: $81
	ld [bc], a                                       ; $4497: $02
	ld h, h                                          ; $4498: $64
	inc b                                            ; $4499: $04
	ld h, e                                          ; $449a: $63

jr_038_449b:
	inc l                                            ; $449b: $2c
	jr @-$36                                         ; $449c: $18 $c8

	add hl, hl                                       ; $449e: $29
	jr jr_038_4452                                   ; $449f: $18 $b1

	sub c                                            ; $44a1: $91
	ld h, h                                          ; $44a2: $64
	ld bc, $0c25                                     ; $44a3: $01 $25 $0c
	or c                                             ; $44a6: $b1
	or c                                             ; $44a7: $b1
	ld h, h                                          ; $44a8: $64
	inc b                                            ; $44a9: $04
	jr nz, jr_038_44c4                               ; $44aa: $20 $18

	ret z                                            ; $44ac: $c8

	ld a, [hl+]                                      ; $44ad: $2a
	jr @-$4d                                         ; $44ae: $18 $b1

	add c                                            ; $44b0: $81
	ld h, h                                          ; $44b1: $64
	ld bc, $0c29                                     ; $44b2: $01 $29 $0c
	sra d                                            ; $44b5: $cb $2a
	inc c                                            ; $44b7: $0c
	ret z                                            ; $44b8: $c8

	add hl, hl                                       ; $44b9: $29
	inc c                                            ; $44ba: $0c
	sra d                                            ; $44bb: $cb $2a
	inc c                                            ; $44bd: $0c
	ret z                                            ; $44be: $c8

jr_038_44bf:
	add hl, hl                                       ; $44bf: $29
	inc c                                            ; $44c0: $0c
	sla l                                            ; $44c1: $cb $25
	inc c                                            ; $44c3: $0c

jr_038_44c4:
	adc $20                                          ; $44c4: $ce $20
	inc c                                            ; $44c6: $0c
	ld a, [hl]                                       ; $44c7: $7e
	dec l                                            ; $44c8: $2d
	ld d, $a0                                        ; $44c9: $16 $a0
	or c                                             ; $44cb: $b1
	pop bc                                           ; $44cc: $c1
	ld h, h                                          ; $44cd: $64
	rlca                                             ; $44ce: $07
	inc hl                                           ; $44cf: $23
	inc h                                            ; $44d0: $24
	ld [hl+], a                                      ; $44d1: $22
	inc h                                            ; $44d2: $24
	sub [hl]                                         ; $44d3: $96
	jr jr_038_44da                                   ; $44d4: $18 $04

jr_038_44d6:
	inc hl                                           ; $44d6: $23
	jr jr_038_446f                                   ; $44d7: $18 $96

jr_038_44d9:
	ld h, h                                          ; $44d9: $64

jr_038_44da:
	rlca                                             ; $44da: $07
	ld [hl+], a                                      ; $44db: $22
	inc h                                            ; $44dc: $24
	jr nz, jr_038_4503                               ; $44dd: $20 $24

	jp nz, $0c20                                     ; $44df: $c2 $20 $0c

	or l                                             ; $44e2: $b5
	pop hl                                           ; $44e3: $e1
	nop                                              ; $44e4: $00
	ld h, h                                          ; $44e5: $64
	ld [bc], a                                       ; $44e6: $02
	add hl, de                                       ; $44e7: $19
	inc c                                            ; $44e8: $0c
	ld e, $0a                                        ; $44e9: $1e $0a
	nop                                              ; $44eb: $00
	ld [bc], a                                       ; $44ec: $02
	jp $0a1e                                         ; $44ed: $c3 $1e $0a


jr_038_44f0:
	nop                                              ; $44f0: $00
	ld [bc], a                                       ; $44f1: $02
	or l                                             ; $44f2: $b5
	pop hl                                           ; $44f3: $e1
	ld [bc], a                                       ; $44f4: $02
	ld h, h                                          ; $44f5: $64
	inc b                                            ; $44f6: $04
	ld e, $18                                        ; $44f7: $1e $18
	sub [hl]                                         ; $44f9: $96
	ld h, h                                          ; $44fa: $64
	ld bc, $0c19                                     ; $44fb: $01 $19 $0c
	ld e, $0c                                        ; $44fe: $1e $0c
	jr nz, jr_038_450e                               ; $4500: $20 $0c

	or c                                             ; $4502: $b1

jr_038_4503:
	pop hl                                           ; $4503: $e1
	ld h, h                                          ; $4504: $64
	inc b                                            ; $4505: $04
	ld [hl+], a                                      ; $4506: $22
	jr jr_038_452c                                   ; $4507: $18 $23

	jr jr_038_44d6                                   ; $4509: $18 $cb

	dec h                                            ; $450b: $25
	jr jr_038_44bf                                   ; $450c: $18 $b1

jr_038_450e:
	pop bc                                           ; $450e: $c1
	ld h, h                                          ; $450f: $64
	ld bc, $0c23                                     ; $4510: $01 $23 $0c
	ld [hl+], a                                      ; $4513: $22
	inc c                                            ; $4514: $0c
	inc hl                                           ; $4515: $23
	inc c                                            ; $4516: $0c
	ld a, [hl]                                       ; $4517: $7e
	dec l                                            ; $4518: $2d
	ld d, $a0                                        ; $4519: $16 $a0
	or c                                             ; $451b: $b1
	ld [hl], c                                       ; $451c: $71
	ld h, h                                          ; $451d: $64
	rlca                                             ; $451e: $07
	add hl, hl                                       ; $451f: $29
	inc h                                            ; $4520: $24
	ret                                              ; $4521: $c9


	dec h                                            ; $4522: $25

jr_038_4523:
	inc h                                            ; $4523: $24
	or c                                             ; $4524: $b1
	add c                                            ; $4525: $81
	ld h, h                                          ; $4526: $64
	ld bc, $0c2c                                     ; $4527: $01 $2c $0c
	ret                                              ; $452a: $c9


	ld a, [hl+]                                      ; $452b: $2a

jr_038_452c:
	inc c                                            ; $452c: $0c
	or c                                             ; $452d: $b1
	ld [hl], c                                       ; $452e: $71
	ld h, h                                          ; $452f: $64
	rlca                                             ; $4530: $07
	add hl, hl                                       ; $4531: $29
	inc h                                            ; $4532: $24
	or c                                             ; $4533: $b1
	or c                                             ; $4534: $b1
	inc a                                            ; $4535: $3c
	rlca                                             ; $4536: $07
	dec h                                            ; $4537: $25

jr_038_4538:
	inc a                                            ; $4538: $3c
	call z, $92d1                                    ; $4539: $cc $d1 $92
	ld h, e                                          ; $453c: $63
	sub [hl]                                         ; $453d: $96
	ld h, h                                          ; $453e: $64
	inc bc                                           ; $453f: $03
	inc hl                                           ; $4540: $23
	jr jr_038_44d9                                   ; $4541: $18 $96

	ld h, h                                          ; $4543: $64
	ld bc, $0c23                                     ; $4544: $01 $23 $0c
	sub [hl]                                         ; $4547: $96
	ld h, h                                          ; $4548: $64
	ld [bc], a                                       ; $4549: $02
	ld [hl+], a                                      ; $454a: $22
	inc c                                            ; $454b: $0c
	sub [hl]                                         ; $454c: $96
	ld h, h                                          ; $454d: $64
	ld bc, $0c23                                     ; $454e: $01 $23 $0c
	sub [hl]                                         ; $4551: $96
	ld h, h                                          ; $4552: $64
	inc b                                            ; $4553: $04
	ld [hl+], a                                      ; $4554: $22
	jr jr_038_4523                                   ; $4555: $18 $cc

	inc hl                                           ; $4557: $23
	jr jr_038_44f0                                   ; $4558: $18 $96

	ld h, h                                          ; $455a: $64
	ld bc, $0c23                                     ; $455b: $01 $23 $0c
	inc hl                                           ; $455e: $23
	inc c                                            ; $455f: $0c
	sub [hl]                                         ; $4560: $96
	ld h, h                                          ; $4561: $64
	ld [bc], a                                       ; $4562: $02
	ld [hl+], a                                      ; $4563: $22
	inc c                                            ; $4564: $0c
	sub [hl]                                         ; $4565: $96
	ld h, h                                          ; $4566: $64
	ld bc, $0c23                                     ; $4567: $01 $23 $0c
	or c                                             ; $456a: $b1
	sub c                                            ; $456b: $91
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	inc h                                            ; $456e: $24
	ld [de], a                                       ; $456f: $12
	call nz, $0624                                   ; $4570: $c4 $24 $06
	or c                                             ; $4573: $b1
	add c                                            ; $4574: $81
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	ld a, [hl]                                       ; $4577: $7e
	add hl, sp                                       ; $4578: $39
	nop                                              ; $4579: $00
	and c                                            ; $457a: $a1
	dec h                                            ; $457b: $25
	ld l, h                                          ; $457c: $6c
	ret                                              ; $457d: $c9


jr_038_457e:
	ld a, [hl]                                       ; $457e: $7e
	dec e                                            ; $457f: $1d
	nop                                              ; $4580: $00
	xor c                                            ; $4581: $a9
	sub [hl]                                         ; $4582: $96
	ld [hl-], a                                      ; $4583: $32
	rlca                                             ; $4584: $07
	dec h                                            ; $4585: $25
	ld h, b                                          ; $4586: $60
	jp nz, $0c25                                     ; $4587: $c2 $25 $0c

	ld a, [hl]                                       ; $458a: $7e
	nop                                              ; $458b: $00
	or c                                             ; $458c: $b1
	sub c                                            ; $458d: $91
	ld h, h                                          ; $458e: $64
	inc bc                                           ; $458f: $03
	cp [hl]                                          ; $4590: $be
	inc c                                            ; $4591: $0c
	daa                                              ; $4592: $27
	daa                                              ; $4593: $27
	ld h, $27                                        ; $4594: $26 $27
	ld h, $be                                        ; $4596: $26 $be
	jp nz, $0c26                                     ; $4598: $c2 $26 $0c

	or c                                             ; $459b: $b1

jr_038_459c:
	sub c                                            ; $459c: $91
	ld h, h                                          ; $459d: $64
	inc b                                            ; $459e: $04
	daa                                              ; $459f: $27
	jr jr_038_4538                                   ; $45a0: $18 $96

	ld h, h                                          ; $45a2: $64
	inc bc                                           ; $45a3: $03
	cp [hl]                                          ; $45a4: $be
	inc c                                            ; $45a5: $0c
	daa                                              ; $45a6: $27
	daa                                              ; $45a7: $27
	ld h, $27                                        ; $45a8: $26 $27
	cp [hl]                                          ; $45aa: $be
	ret z                                            ; $45ab: $c8

	jr z, jr_038_45ba                                ; $45ac: $28 $0c

	jp nz, $0c28                                     ; $45ae: $c2 $28 $0c

	ret z                                            ; $45b1: $c8

	ld a, [hl]                                       ; $45b2: $7e
	add hl, sp                                       ; $45b3: $39
	nop                                              ; $45b4: $00
	and b                                            ; $45b5: $a0
	sub [hl]                                         ; $45b6: $96
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	add hl, hl                                       ; $45b9: $29

jr_038_45ba:
	ld l, h                                          ; $45ba: $6c
	ld a, [hl]                                       ; $45bb: $7e
	dec e                                            ; $45bc: $1d
	nop                                              ; $45bd: $00
	xor c                                            ; $45be: $a9
	sub [hl]                                         ; $45bf: $96
	ld [hl-], a                                      ; $45c0: $32
	rlca                                             ; $45c1: $07
	add hl, hl                                       ; $45c2: $29
	ld h, b                                          ; $45c3: $60
	ld a, [hl]                                       ; $45c4: $7e
	nop                                              ; $45c5: $00
	sub [hl]                                         ; $45c6: $96
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	cp $ff                                           ; $45c9: $fe $ff
	or [hl]                                          ; $45cb: $b6
	adc h                                            ; $45cc: $8c
	ld hl, $0503                                     ; $45cd: $21 $03 $05
	ld bc, $0d63                                     ; $45d0: $01 $63 $0d
	inc c                                            ; $45d3: $0c
	dec c                                            ; $45d4: $0d
	inc c                                            ; $45d5: $0c
	sub [hl]                                         ; $45d6: $96
	dec b                                            ; $45d7: $05
	ld bc, $0c0d                                     ; $45d8: $01 $0d $0c
	dec c                                            ; $45db: $0d
	ld b, $0d                                        ; $45dc: $06 $0d
	ld b, $0d                                        ; $45de: $06 $0d
	inc c                                            ; $45e0: $0c
	rrca                                             ; $45e1: $0f
	inc c                                            ; $45e2: $0c
	ld de, $120c                                     ; $45e3: $11 $0c $12
	jr jr_038_457e                                   ; $45e6: $18 $96

jr_038_45e8:
	ld b, $01                                        ; $45e8: $06 $01

jr_038_45ea:
	cp [hl]                                          ; $45ea: $be
	inc c                                            ; $45eb: $0c
	ld [de], a                                       ; $45ec: $12
	ld [de], a                                       ; $45ed: $12
	ld [de], a                                       ; $45ee: $12
	ld [de], a                                       ; $45ef: $12
	ld [de], a                                       ; $45f0: $12
	ld [de], a                                       ; $45f1: $12
	ld [de], a                                       ; $45f2: $12
	cp [hl]                                          ; $45f3: $be
	sub [hl]                                         ; $45f4: $96
	dec b                                            ; $45f5: $05
	ld bc, $180b                                     ; $45f6: $01 $0b $18
	dec bc                                           ; $45f9: $0b
	inc c                                            ; $45fa: $0c

jr_038_45fb:
	ld a, [bc]                                       ; $45fb: $0a
	ld b, $0a                                        ; $45fc: $06 $0a
	ld b, $0b                                        ; $45fe: $06 $0b
	inc c                                            ; $4600: $0c
	inc c                                            ; $4601: $0c
	jr @+$0f                                         ; $4602: $18 $0d

	jr jr_038_459c                                   ; $4604: $18 $96

	ld b, $01                                        ; $4606: $06 $01
	dec c                                            ; $4608: $0d
	inc c                                            ; $4609: $0c
	dec c                                            ; $460a: $0d
	inc c                                            ; $460b: $0c
	dec c                                            ; $460c: $0d
	inc c                                            ; $460d: $0c
	sub [hl]                                         ; $460e: $96
	rlca                                             ; $460f: $07
	ld bc, $0cbe                                     ; $4610: $01 $be $0c
	dec c                                            ; $4613: $0d
	ld a, [bc]                                       ; $4614: $0a
	dec bc                                           ; $4615: $0b
	inc c                                            ; $4616: $0c
	cp [hl]                                          ; $4617: $be
	sub [hl]                                         ; $4618: $96
	dec b                                            ; $4619: $05
	ld bc, $180d                                     ; $461a: $01 $0d $18
	dec c                                            ; $461d: $0d
	inc c                                            ; $461e: $0c
	dec c                                            ; $461f: $0d
	ld b, $0d                                        ; $4620: $06 $0d
	ld b, $0d                                        ; $4622: $06 $0d

jr_038_4624:
	inc c                                            ; $4624: $0c
	rrca                                             ; $4625: $0f
	inc c                                            ; $4626: $0c
	ld de, $120c                                     ; $4627: $11 $0c $12
	jr jr_038_45ea                                   ; $462a: $18 $be

	inc c                                            ; $462c: $0c
	ld [de], a                                       ; $462d: $12
	ld [de], a                                       ; $462e: $12
	ld [de], a                                       ; $462f: $12
	ld [de], a                                       ; $4630: $12
	ld [de], a                                       ; $4631: $12
	ld [de], a                                       ; $4632: $12
	cp [hl]                                          ; $4633: $be
	dec bc                                           ; $4634: $0b
	jr jr_038_4642                                   ; $4635: $18 $0b

	inc c                                            ; $4637: $0c
	dec bc                                           ; $4638: $0b
	inc c                                            ; $4639: $0c
	sub [hl]                                         ; $463a: $96
	dec b                                            ; $463b: $05
	ld bc, $0c0a                                     ; $463c: $01 $0a $0c
	dec bc                                           ; $463f: $0b
	inc c                                            ; $4640: $0c
	sub [hl]                                         ; $4641: $96

jr_038_4642:
	ld b, $01                                        ; $4642: $06 $01
	inc c                                            ; $4644: $0c
	jr @+$0f                                         ; $4645: $18 $0d

	inc c                                            ; $4647: $0c
	or c                                             ; $4648: $b1
	ld h, c                                          ; $4649: $61
	ld b, $01                                        ; $464a: $06 $01
	dec c                                            ; $464c: $0d
	jr @-$3c                                         ; $464d: $18 $c2

	dec c                                            ; $464f: $0d
	jr jr_038_45e8                                   ; $4650: $18 $96

jr_038_4652:
	dec b                                            ; $4652: $05
	ld bc, $0cbe                                     ; $4653: $01 $be $0c
	dec c                                            ; $4656: $0d
	ld [$0d08], sp                                   ; $4657: $08 $08 $0d
	cp [hl]                                          ; $465a: $be
	or c                                             ; $465b: $b1

jr_038_465c:
	ld h, c                                          ; $465c: $61
	ld b, $01                                        ; $465d: $06 $01
	dec c                                            ; $465f: $0d
	jr jr_038_4624                                   ; $4660: $18 $c2

	dec c                                            ; $4662: $0d
	jr jr_038_45fb                                   ; $4663: $18 $96

	dec b                                            ; $4665: $05
	ld bc, $0cbe                                     ; $4666: $01 $be $0c
	dec c                                            ; $4669: $0d
	ld [$0d08], sp                                   ; $466a: $08 $08 $0d
	cp [hl]                                          ; $466d: $be
	or c                                             ; $466e: $b1
	ld h, c                                          ; $466f: $61
	ld b, $01                                        ; $4670: $06 $01

jr_038_4672:
	dec c                                            ; $4672: $0d
	inc c                                            ; $4673: $0c
	jp nz, $96fb                                     ; $4674: $c2 $fb $96

	ld b, $01                                        ; $4677: $06 $01
	dec c                                            ; $4679: $0d
	inc c                                            ; $467a: $0c
	sub [hl]                                         ; $467b: $96
	dec b                                            ; $467c: $05

jr_038_467d:
	ld bc, $0c0d                                     ; $467d: $01 $0d $0c
	dec c                                            ; $4680: $0d
	inc c                                            ; $4681: $0c
	dec c                                            ; $4682: $0d
	inc c                                            ; $4683: $0c
	ei                                               ; $4684: $fb
	inc bc                                           ; $4685: $03
	dec c                                            ; $4686: $0d
	inc c                                            ; $4687: $0c

jr_038_4688:
	ld [$fe18], sp                                   ; $4688: $08 $18 $fe
	or l                                             ; $468b: $b5
	ld hl, $0603                                     ; $468c: $21 $03 $06
	ld bc, $0d63                                     ; $468f: $01 $63 $0d
	jr jr_038_4652                                   ; $4692: $18 $be

	inc c                                            ; $4694: $0c
	dec c                                            ; $4695: $0d
	dec c                                            ; $4696: $0d
	dec c                                            ; $4697: $0d
	dec c                                            ; $4698: $0d
	ld [$0dbe], sp                                   ; $4699: $08 $be $0d
	jr jr_038_465c                                   ; $469c: $18 $be

jr_038_469e:
	inc c                                            ; $469e: $0c
	dec c                                            ; $469f: $0d
	dec c                                            ; $46a0: $0d
	dec c                                            ; $46a1: $0d
	dec c                                            ; $46a2: $0d
	dec c                                            ; $46a3: $0d
	ld [$0bbe], sp                                   ; $46a4: $08 $be $0b
	jr @-$40                                         ; $46a7: $18 $be

	inc c                                            ; $46a9: $0c
	dec bc                                           ; $46aa: $0b
	dec bc                                           ; $46ab: $0b
	dec bc                                           ; $46ac: $0b
	dec bc                                           ; $46ad: $0b
	dec bc                                           ; $46ae: $0b
	ld b, $be                                        ; $46af: $06 $be
	dec bc                                           ; $46b1: $0b
	jr jr_038_4672                                   ; $46b2: $18 $be

	inc c                                            ; $46b4: $0c
	dec bc                                           ; $46b5: $0b
	dec bc                                           ; $46b6: $0b
	dec bc                                           ; $46b7: $0b
	dec bc                                           ; $46b8: $0b
	cp [hl]                                          ; $46b9: $be
	ld b, $18                                        ; $46ba: $06 $18
	dec c                                            ; $46bc: $0d
	jr jr_038_467d                                   ; $46bd: $18 $be

	inc c                                            ; $46bf: $0c
	dec c                                            ; $46c0: $0d
	dec c                                            ; $46c1: $0d

jr_038_46c2:
	dec c                                            ; $46c2: $0d
	dec c                                            ; $46c3: $0d
	dec c                                            ; $46c4: $0d
	ld [$0dbe], sp                                   ; $46c5: $08 $be $0d
	jr jr_038_4688                                   ; $46c8: $18 $be

	inc c                                            ; $46ca: $0c
	dec c                                            ; $46cb: $0d
	dec c                                            ; $46cc: $0d
	dec c                                            ; $46cd: $0d
	dec c                                            ; $46ce: $0d
	cp [hl]                                          ; $46cf: $be
	rrca                                             ; $46d0: $0f
	jr jr_038_46de                                   ; $46d1: $18 $0b

	jr @-$40                                         ; $46d3: $18 $be

	inc c                                            ; $46d5: $0c
	dec bc                                           ; $46d6: $0b
	dec bc                                           ; $46d7: $0b
	dec bc                                           ; $46d8: $0b
	dec bc                                           ; $46d9: $0b
	dec bc                                           ; $46da: $0b
	ld b, $be                                        ; $46db: $06 $be
	dec bc                                           ; $46dd: $0b

jr_038_46de:
	jr jr_038_469e                                   ; $46de: $18 $be

	inc c                                            ; $46e0: $0c
	dec bc                                           ; $46e1: $0b
	dec bc                                           ; $46e2: $0b
	dec bc                                           ; $46e3: $0b
	dec bc                                           ; $46e4: $0b
	dec bc                                           ; $46e5: $0b
	cp [hl]                                          ; $46e6: $be
	ld b, $18                                        ; $46e7: $06 $18

jr_038_46e9:
	or l                                             ; $46e9: $b5
	ld hl, $0603                                     ; $46ea: $21 $03 $06
	ld [bc], a                                       ; $46ed: $02
	ld h, e                                          ; $46ee: $63
	dec c                                            ; $46ef: $0d
	jr jr_038_4688                                   ; $46f0: $18 $96

	inc b                                            ; $46f2: $04
	ld bc, $060d                                     ; $46f3: $01 $0d $06
	dec c                                            ; $46f6: $0d
	ld b, $96                                        ; $46f7: $06 $96
	ld b, $02                                        ; $46f9: $06 $02
	dec c                                            ; $46fb: $0d
	inc c                                            ; $46fc: $0c
	dec c                                            ; $46fd: $0d
	inc c                                            ; $46fe: $0c
	ld [$0d18], sp                                   ; $46ff: $08 $18 $0d
	jr jr_038_46c2                                   ; $4702: $18 $be

	inc c                                            ; $4704: $0c
	dec c                                            ; $4705: $0d
	dec c                                            ; $4706: $0d
	dec c                                            ; $4707: $0d
	dec c                                            ; $4708: $0d
	dec c                                            ; $4709: $0d
	cp [hl]                                          ; $470a: $be
	ld [$0b18], sp                                   ; $470b: $08 $18 $0b
	inc h                                            ; $470e: $24
	ld a, [bc]                                       ; $470f: $0a
	inc h                                            ; $4710: $24
	dec bc                                           ; $4711: $0b
	jr jr_038_471e                                   ; $4712: $18 $0a

	inc h                                            ; $4714: $24
	ld [$0824], sp                                   ; $4715: $08 $24 $08
	inc c                                            ; $4718: $0c
	adc a                                            ; $4719: $8f
	ld b, $0c                                        ; $471a: $06 $0c
	ld b, $0c                                        ; $471c: $06 $0c

jr_038_471e:
	add e                                            ; $471e: $83
	cp [hl]                                          ; $471f: $be
	inc c                                            ; $4720: $0c
	nop                                              ; $4721: $00
	ld b, $06                                        ; $4722: $06 $06

jr_038_4724:
	ld b, $be                                        ; $4724: $06 $be
	dec c                                            ; $4726: $0d
	jr @+$08                                         ; $4727: $18 $06

	jr jr_038_46e9                                   ; $4729: $18 $be

	inc c                                            ; $472b: $0c
	ld b, $06                                        ; $472c: $06 $06
	ld b, $06                                        ; $472e: $06 $06
	ld b, $be                                        ; $4730: $06 $be
	dec c                                            ; $4732: $0d
	jr @+$0f                                         ; $4733: $18 $0d

	inc h                                            ; $4735: $24
	dec c                                            ; $4736: $0d
	inc h                                            ; $4737: $24
	ld [$0d18], sp                                   ; $4738: $08 $18 $0d
	inc h                                            ; $473b: $24
	dec c                                            ; $473c: $0d
	inc h                                            ; $473d: $24
	ld [$b518], sp                                   ; $473e: $08 $18 $b5
	ld hl, $0603                                     ; $4741: $21 $03 $06
	ld [bc], a                                       ; $4744: $02

jr_038_4745:
	ld h, e                                          ; $4745: $63
	dec bc                                           ; $4746: $0b
	inc c                                            ; $4747: $0c
	call nz, $0c0b                                   ; $4748: $c4 $0b $0c
	jp nz, $0c0b                                     ; $474b: $c2 $0b $0c

	dec bc                                           ; $474e: $0b
	inc c                                            ; $474f: $0c

jr_038_4750:
	dec bc                                           ; $4750: $0b
	inc c                                            ; $4751: $0c
	ld [de], a                                       ; $4752: $12
	jr jr_038_4760                                   ; $4753: $18 $0b

	inc c                                            ; $4755: $0c
	call nz, $0c0b                                   ; $4756: $c4 $0b $0c
	jp nz, $0cbe                                     ; $4759: $c2 $be $0c

	dec bc                                           ; $475c: $0b
	dec bc                                           ; $475d: $0b
	dec bc                                           ; $475e: $0b
	dec bc                                           ; $475f: $0b

jr_038_4760:
	cp [hl]                                          ; $4760: $be
	ld [de], a                                       ; $4761: $12
	jr jr_038_4771                                   ; $4762: $18 $0d

	jr jr_038_4724                                   ; $4764: $18 $be

	inc c                                            ; $4766: $0c
	dec c                                            ; $4767: $0d
	dec c                                            ; $4768: $0d
	dec c                                            ; $4769: $0d
	dec c                                            ; $476a: $0d
	dec c                                            ; $476b: $0d
	ld [$0dbe], sp                                   ; $476c: $08 $be $0d
	jr @-$40                                         ; $476f: $18 $be

jr_038_4771:
	inc c                                            ; $4771: $0c
	dec c                                            ; $4772: $0d
	dec c                                            ; $4773: $0d
	dec c                                            ; $4774: $0d
	dec c                                            ; $4775: $0d
	dec c                                            ; $4776: $0d
	ld [$0bbe], sp                                   ; $4777: $08 $be $0b
	jr @-$40                                         ; $477a: $18 $be

	inc c                                            ; $477c: $0c
	dec bc                                           ; $477d: $0b
	dec bc                                           ; $477e: $0b
	dec bc                                           ; $477f: $0b
	dec bc                                           ; $4780: $0b
	dec bc                                           ; $4781: $0b
	ld [de], a                                       ; $4782: $12
	cp [hl]                                          ; $4783: $be
	dec bc                                           ; $4784: $0b
	jr jr_038_4745                                   ; $4785: $18 $be

	inc c                                            ; $4787: $0c
	dec bc                                           ; $4788: $0b
	dec bc                                           ; $4789: $0b
	dec bc                                           ; $478a: $0b
	dec bc                                           ; $478b: $0b
	dec bc                                           ; $478c: $0b
	ld [de], a                                       ; $478d: $12
	cp [hl]                                          ; $478e: $be
	dec c                                            ; $478f: $0d
	jr jr_038_4750                                   ; $4790: $18 $be

	inc c                                            ; $4792: $0c
	dec c                                            ; $4793: $0d
	dec c                                            ; $4794: $0d
	dec c                                            ; $4795: $0d
	dec c                                            ; $4796: $0d
	dec c                                            ; $4797: $0d
	inc d                                            ; $4798: $14
	cp [hl]                                          ; $4799: $be
	dec c                                            ; $479a: $0d
	jr @-$40                                         ; $479b: $18 $be

	inc c                                            ; $479d: $0c
	dec c                                            ; $479e: $0d

jr_038_479f:
	dec c                                            ; $479f: $0d
	dec c                                            ; $47a0: $0d
	dec c                                            ; $47a1: $0d
	dec c                                            ; $47a2: $0d
	cp [hl]                                          ; $47a3: $be
	sub [hl]                                         ; $47a4: $96
	inc b                                            ; $47a5: $04
	ld bc, $0608                                     ; $47a6: $01 $08 $06
	ld [$1406], sp                                   ; $47a9: $08 $06 $14
	inc c                                            ; $47ac: $0c
	cp $ff                                           ; $47ad: $fe $ff
	ret nc                                           ; $47af: $d0

	adc h                                            ; $47b0: $8c
	ei                                               ; $47b1: $fb
	rra                                              ; $47b2: $1f
	ld b, $1d                                        ; $47b3: $06 $1d
	ld b, $1e                                        ; $47b5: $06 $1e
	inc c                                            ; $47b7: $0c
	ld d, d                                          ; $47b8: $52
	inc c                                            ; $47b9: $0c
	rra                                              ; $47ba: $1f
	ld b, $1f                                        ; $47bb: $06 $1f
	ld b, $1f                                        ; $47bd: $06 $1f
	inc c                                            ; $47bf: $0c
	dec e                                            ; $47c0: $1d
	inc c                                            ; $47c1: $0c
	ld d, d                                          ; $47c2: $52
	inc c                                            ; $47c3: $0c
	ld e, $18                                        ; $47c4: $1e $18
	cp [hl]                                          ; $47c6: $be
	inc c                                            ; $47c7: $0c
	rra                                              ; $47c8: $1f
	ld d, d                                          ; $47c9: $52
	dec e                                            ; $47ca: $1d
	rra                                              ; $47cb: $1f
	dec e                                            ; $47cc: $1d
	ld d, d                                          ; $47cd: $52
	dec e                                            ; $47ce: $1d
	cp [hl]                                          ; $47cf: $be
	ei                                               ; $47d0: $fb
	inc bc                                           ; $47d1: $03
	cp [hl]                                          ; $47d2: $be
	inc c                                            ; $47d3: $0c
	rra                                              ; $47d4: $1f
	rra                                              ; $47d5: $1f
	ld d, d                                          ; $47d6: $52
	dec e                                            ; $47d7: $1d
	ld d, d                                          ; $47d8: $52
	dec e                                            ; $47d9: $1d
	dec e                                            ; $47da: $1d
	ld e, $be                                        ; $47db: $1e $be
	ei                                               ; $47dd: $fb
	nop                                              ; $47de: $00
	jr jr_038_479f                                   ; $47df: $18 $be

	inc c                                            ; $47e1: $0c
	rra                                              ; $47e2: $1f
	nop                                              ; $47e3: $00
	rra                                              ; $47e4: $1f
	dec e                                            ; $47e5: $1d
	dec e                                            ; $47e6: $1d
	ld e, $be                                        ; $47e7: $1e $be
	ei                                               ; $47e9: $fb
	ld [bc], a                                       ; $47ea: $02
	rra                                              ; $47eb: $1f
	jr jr_038_480d                                   ; $47ec: $18 $1f

	jr @-$40                                         ; $47ee: $18 $be

	inc c                                            ; $47f0: $0c
	ld d, d                                          ; $47f1: $52
	rra                                              ; $47f2: $1f
	ld d, d                                          ; $47f3: $52
	rra                                              ; $47f4: $1f
	cp [hl]                                          ; $47f5: $be
	cp [hl]                                          ; $47f6: $be
	inc c                                            ; $47f7: $0c
	rra                                              ; $47f8: $1f
	dec e                                            ; $47f9: $1d
	ld d, d                                          ; $47fa: $52
	rra                                              ; $47fb: $1f
	ld d, d                                          ; $47fc: $52
	dec e                                            ; $47fd: $1d
	cp [hl]                                          ; $47fe: $be
	ld e, $18                                        ; $47ff: $1e $18
	cp $fb                                           ; $4801: $fe $fb
	db $fd                                           ; $4803: $fd
	push bc                                          ; $4804: $c5
	ld c, b                                          ; $4805: $48
	ei                                               ; $4806: $fb
	inc bc                                           ; $4807: $03
	rra                                              ; $4808: $1f
	inc c                                            ; $4809: $0c
	dec e                                            ; $480a: $1d
	ld b, $1d                                        ; $480b: $06 $1d

jr_038_480d:
	ld b, $be                                        ; $480d: $06 $be
	inc c                                            ; $480f: $0c
	ld d, d                                          ; $4810: $52
	dec e                                            ; $4811: $1d
	dec e                                            ; $4812: $1d
	dec e                                            ; $4813: $1d
	ld d, d                                          ; $4814: $52
	dec e                                            ; $4815: $1d

Jump_038_4816:
	cp [hl]                                          ; $4816: $be
	ei                                               ; $4817: $fb
	db $fd                                           ; $4818: $fd
	push bc                                          ; $4819: $c5
	ld c, b                                          ; $481a: $48

Jump_038_481b:
	ei                                               ; $481b: $fb
	inc bc                                           ; $481c: $03
	rra                                              ; $481d: $1f
	inc c                                            ; $481e: $0c
	dec e                                            ; $481f: $1d
	ld b, $1d                                        ; $4820: $06 $1d
	ld b, $be                                        ; $4822: $06 $be
	inc c                                            ; $4824: $0c
	ld d, d                                          ; $4825: $52
	dec e                                            ; $4826: $1d
	rra                                              ; $4827: $1f
	dec e                                            ; $4828: $1d
	ld d, d                                          ; $4829: $52
	cp [hl]                                          ; $482a: $be
	dec e                                            ; $482b: $1d
	ld b, $1d                                        ; $482c: $06 $1d
	ld b, $fd                                        ; $482e: $06 $fd
	push bc                                          ; $4830: $c5
	ld c, b                                          ; $4831: $48
	db $fd                                           ; $4832: $fd

Jump_038_4833:
	push bc                                          ; $4833: $c5
	ld c, b                                          ; $4834: $48
	ld d, d                                          ; $4835: $52
	inc c                                            ; $4836: $0c
	dec e                                            ; $4837: $1d
	ld b, $1d                                        ; $4838: $06 $1d
	ld b, $1d                                        ; $483a: $06 $1d
	inc c                                            ; $483c: $0c
	ld d, d                                          ; $483d: $52
	inc c                                            ; $483e: $0c
	dec e                                            ; $483f: $1d
	ld b, $1d                                        ; $4840: $06 $1d
	ld b, $1d                                        ; $4842: $06 $1d
	inc c                                            ; $4844: $0c
	ld d, d                                          ; $4845: $52
	inc c                                            ; $4846: $0c
	ld e, $0c                                        ; $4847: $1e $0c
	ld d, d                                          ; $4849: $52
	inc c                                            ; $484a: $0c
	dec e                                            ; $484b: $1d
	ld b, $1d                                        ; $484c: $06 $1d
	ld b, $1d                                        ; $484e: $06 $1d
	inc c                                            ; $4850: $0c
	ld d, d                                          ; $4851: $52
	inc c                                            ; $4852: $0c
	dec e                                            ; $4853: $1d
	ld b, $1d                                        ; $4854: $06 $1d
	ld b, $1d                                        ; $4856: $06 $1d
	inc c                                            ; $4858: $0c
	ld d, d                                          ; $4859: $52
	inc c                                            ; $485a: $0c
	rra                                              ; $485b: $1f
	inc c                                            ; $485c: $0c
	db $fd                                           ; $485d: $fd
	push bc                                          ; $485e: $c5
	ld c, b                                          ; $485f: $48
	db $fd                                           ; $4860: $fd
	push bc                                          ; $4861: $c5
	ld c, b                                          ; $4862: $48
	rra                                              ; $4863: $1f
	inc c                                            ; $4864: $0c
	dec e                                            ; $4865: $1d
	ld b, $1d                                        ; $4866: $06 $1d
	ld b, $be                                        ; $4868: $06 $be
	inc c                                            ; $486a: $0c
	dec e                                            ; $486b: $1d
	ld d, d                                          ; $486c: $52
	dec e                                            ; $486d: $1d
	dec e                                            ; $486e: $1d
	ld d, d                                          ; $486f: $52
	dec e                                            ; $4870: $1d
	cp [hl]                                          ; $4871: $be
	rra                                              ; $4872: $1f
	inc c                                            ; $4873: $0c

jr_038_4874:
	dec e                                            ; $4874: $1d
	ld b, $1d                                        ; $4875: $06 $1d
	ld b, $be                                        ; $4877: $06 $be
	inc c                                            ; $4879: $0c
	dec e                                            ; $487a: $1d
	ld d, d                                          ; $487b: $52
	dec e                                            ; $487c: $1d
	dec e                                            ; $487d: $1d
	rra                                              ; $487e: $1f
	rra                                              ; $487f: $1f
	cp [hl]                                          ; $4880: $be
	cp [hl]                                          ; $4881: $be
	inc c                                            ; $4882: $0c
	rra                                              ; $4883: $1f
	dec e                                            ; $4884: $1d
	ld d, d                                          ; $4885: $52
	dec e                                            ; $4886: $1d
	rra                                              ; $4887: $1f
	rra                                              ; $4888: $1f
	ld d, d                                          ; $4889: $52
	cp [hl]                                          ; $488a: $be
	ei                                               ; $488b: $fb
	rra                                              ; $488c: $1f
	jr @-$40                                         ; $488d: $18 $be

	inc c                                            ; $488f: $0c
	rra                                              ; $4890: $1f
	ld d, d                                          ; $4891: $52
	dec e                                            ; $4892: $1d
	rra                                              ; $4893: $1f
	rra                                              ; $4894: $1f
	ld d, d                                          ; $4895: $52
	cp [hl]                                          ; $4896: $be
	ei                                               ; $4897: $fb
	inc bc                                           ; $4898: $03
	dec e                                            ; $4899: $1d
	inc c                                            ; $489a: $0c
	cp [hl]                                          ; $489b: $be
	inc c                                            ; $489c: $0c
	rra                                              ; $489d: $1f
	dec e                                            ; $489e: $1d
	ld d, d                                          ; $489f: $52
	dec e                                            ; $48a0: $1d
	rra                                              ; $48a1: $1f
	rra                                              ; $48a2: $1f
	ld d, d                                          ; $48a3: $52
	cp [hl]                                          ; $48a4: $be
	ei                                               ; $48a5: $fb
	rra                                              ; $48a6: $1f
	jr @-$40                                         ; $48a7: $18 $be

	inc c                                            ; $48a9: $0c
	rra                                              ; $48aa: $1f
	ld d, d                                          ; $48ab: $52
	dec e                                            ; $48ac: $1d
	rra                                              ; $48ad: $1f
	rra                                              ; $48ae: $1f
	ld d, d                                          ; $48af: $52
	cp [hl]                                          ; $48b0: $be
	ei                                               ; $48b1: $fb
	ld [bc], a                                       ; $48b2: $02
	rra                                              ; $48b3: $1f
	jr jr_038_4874                                   ; $48b4: $18 $be

	inc c                                            ; $48b6: $0c
	rra                                              ; $48b7: $1f
	ld d, d                                          ; $48b8: $52
	dec e                                            ; $48b9: $1d
	rra                                              ; $48ba: $1f
	rra                                              ; $48bb: $1f
	cp [hl]                                          ; $48bc: $be
	rra                                              ; $48bd: $1f
	ld b, $1f                                        ; $48be: $06 $1f
	ld b, $1e                                        ; $48c0: $06 $1e
	inc c                                            ; $48c2: $0c
	cp $ff                                           ; $48c3: $fe $ff
	rra                                              ; $48c5: $1f
	inc c                                            ; $48c6: $0c
	dec e                                            ; $48c7: $1d
	ld b, $1d                                        ; $48c8: $06 $1d
	ld b, $be                                        ; $48ca: $06 $be
	inc c                                            ; $48cc: $0c
	ld d, d                                          ; $48cd: $52
	dec e                                            ; $48ce: $1d
	dec e                                            ; $48cf: $1d
	dec e                                            ; $48d0: $1d
	ld d, d                                          ; $48d1: $52
	rra                                              ; $48d2: $1f
	cp [hl]                                          ; $48d3: $be
	db $fd                                           ; $48d4: $fd
	ret nc                                           ; $48d5: $d0

	ld l, [hl]                                       ; $48d6: $6e
	cp $c6                                           ; $48d7: $fe $c6
	sub d                                            ; $48d9: $92
	pop de                                           ; $48da: $d1
	ld h, d                                          ; $48db: $62
	nop                                              ; $48dc: $00
	db $10                                           ; $48dd: $10
	db $fd                                           ; $48de: $fd
	ld c, l                                          ; $48df: $4d
	ld c, d                                          ; $48e0: $4a
	jp nz, $1d7e                                     ; $48e1: $c2 $7e $1d

	nop                                              ; $48e4: $00
	and b                                            ; $48e5: $a0
	sub [hl]                                         ; $48e6: $96
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00
	sub c                                            ; $48e9: $91
	nop                                              ; $48ea: $00
	ld c, $1e                                        ; $48eb: $0e $1e
	ld d, $22                                        ; $48ed: $16 $22
	db $10                                           ; $48ef: $10
	dec h                                            ; $48f0: $25
	ld [$1025], sp                                   ; $48f1: $08 $25 $10
	ld [hl+], a                                      ; $48f4: $22
	ld [$0227], sp                                   ; $48f5: $08 $27 $02
	jr z, jr_038_48fe                                ; $48f8: $28 $04

	add hl, hl                                       ; $48fa: $29
	ld [de], a                                       ; $48fb: $12
	ld a, [hl+]                                      ; $48fc: $2a
	db $10                                           ; $48fd: $10

jr_038_48fe:
	add hl, hl                                       ; $48fe: $29
	ld [$1029], sp                                   ; $48ff: $08 $29 $10
	dec h                                            ; $4902: $25
	ld [$0c25], sp                                   ; $4903: $08 $25 $0c
	ld a, [hl]                                       ; $4906: $7e
	nop                                              ; $4907: $00
	call z, $92d1                                    ; $4908: $cc $d1 $92
	ld h, d                                          ; $490b: $62
	nop                                              ; $490c: $00
	db $10                                           ; $490d: $10
	db $fd                                           ; $490e: $fd
	ld c, l                                          ; $490f: $4d
	ld c, d                                          ; $4910: $4a
	ld a, [hl]                                       ; $4911: $7e
	dec e                                            ; $4912: $1d
	nop                                              ; $4913: $00
	and b                                            ; $4914: $a0
	sub [hl]                                         ; $4915: $96
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	rst GetHLinHL                                          ; $4918: $cf
	sub d                                            ; $4919: $92
	nop                                              ; $491a: $00
	ld c, $c2                                        ; $491b: $0e $c2
	sub c                                            ; $491d: $91
	ld e, $18                                        ; $491e: $1e $18
	ld [hl+], a                                      ; $4920: $22
	db $10                                           ; $4921: $10
	dec h                                            ; $4922: $25
	ld [$1025], sp                                   ; $4923: $08 $25 $10
	ld [hl+], a                                      ; $4926: $22
	ld [$022a], sp                                   ; $4927: $08 $2a $02
	dec hl                                           ; $492a: $2b
	inc b                                            ; $492b: $04
	inc l                                            ; $492c: $2c
	ld [de], a                                       ; $492d: $12
	ld a, [hl+]                                      ; $492e: $2a
	db $10                                           ; $492f: $10
	add hl, hl                                       ; $4930: $29
	ld [$1029], sp                                   ; $4931: $08 $29 $10
	ld a, [hl+]                                      ; $4934: $2a
	ld [$0a2a], sp                                   ; $4935: $08 $2a $0a
	ld a, [hl]                                       ; $4938: $7e
	nop                                              ; $4939: $00
	add hl, hl                                       ; $493a: $29
	db $10                                           ; $493b: $10
	jp $92d1                                         ; $493c: $c3 $d1 $92


	ld h, d                                          ; $493f: $62
	ld a, [hl]                                       ; $4940: $7e
	nop                                              ; $4941: $00
	db $fd                                           ; $4942: $fd
	ld c, l                                          ; $4943: $4d
	ld c, d                                          ; $4944: $4a
	jp nz, $1d7e                                     ; $4945: $c2 $7e $1d

jr_038_4948:
	nop                                              ; $4948: $00
	and b                                            ; $4949: $a0
	sub [hl]                                         ; $494a: $96
	nop                                              ; $494b: $00
	nop                                              ; $494c: $00
	sub c                                            ; $494d: $91
	nop                                              ; $494e: $00
	ld c, $1e                                        ; $494f: $0e $1e
	ld d, $22                                        ; $4951: $16 $22
	db $10                                           ; $4953: $10
	dec h                                            ; $4954: $25
	ld [$1025], sp                                   ; $4955: $08 $25 $10
	ld [hl+], a                                      ; $4958: $22
	ld [$0227], sp                                   ; $4959: $08 $27 $02
	jr z, jr_038_4962                                ; $495c: $28 $04

	add hl, hl                                       ; $495e: $29
	ld [de], a                                       ; $495f: $12
	ld a, [hl+]                                      ; $4960: $2a
	db $10                                           ; $4961: $10

jr_038_4962:
	add hl, hl                                       ; $4962: $29
	ld [$1029], sp                                   ; $4963: $08 $29 $10
	dec h                                            ; $4966: $25
	ld [$0c25], sp                                   ; $4967: $08 $25 $0c
	ld a, [hl]                                       ; $496a: $7e
	nop                                              ; $496b: $00
	jp $92d1                                         ; $496c: $c3 $d1 $92


	ld h, d                                          ; $496f: $62
	sub [hl]                                         ; $4970: $96
	nop                                              ; $4971: $00
	nop                                              ; $4972: $00
	nop                                              ; $4973: $00
	db $10                                           ; $4974: $10
	db $fd                                           ; $4975: $fd
	ld c, l                                          ; $4976: $4d
	ld c, d                                          ; $4977: $4a
	ld a, [hl]                                       ; $4978: $7e
	nop                                              ; $4979: $00
	jp nz, $1d7e                                     ; $497a: $c2 $7e $1d

	nop                                              ; $497d: $00
	and b                                            ; $497e: $a0
	sub [hl]                                         ; $497f: $96
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	sub c                                            ; $4982: $91
	nop                                              ; $4983: $00
	ld c, $1e                                        ; $4984: $0e $1e
	inc d                                            ; $4986: $14
	ld [hl+], a                                      ; $4987: $22
	db $10                                           ; $4988: $10
	dec h                                            ; $4989: $25
	ld [$1025], sp                                   ; $498a: $08 $25 $10
	ld [hl+], a                                      ; $498d: $22
	ld [$022a], sp                                   ; $498e: $08 $2a $02
	dec hl                                           ; $4991: $2b
	inc b                                            ; $4992: $04
	inc l                                            ; $4993: $2c
	ld [de], a                                       ; $4994: $12
	ld a, [hl+]                                      ; $4995: $2a
	db $10                                           ; $4996: $10
	add hl, hl                                       ; $4997: $29
	ld [$1029], sp                                   ; $4998: $08 $29 $10
	ld a, [hl+]                                      ; $499b: $2a
	ld [$062a], sp                                   ; $499c: $08 $2a $06
	or l                                             ; $499f: $b5
	pop de                                           ; $49a0: $d1
	ld [bc], a                                       ; $49a1: $02
	ld h, h                                          ; $49a2: $64
	rlca                                             ; $49a3: $07
	ld a, [hl]                                       ; $49a4: $7e
	dec l                                            ; $49a5: $2d
	jr jr_038_4948                                   ; $49a6: $18 $a0

	ld h, d                                          ; $49a8: $62
	inc bc                                           ; $49a9: $03

jr_038_49aa:
	ld [$1000], sp                                   ; $49aa: $08 $00 $10
	ret z                                            ; $49ad: $c8

jr_038_49ae:
	dec h                                            ; $49ae: $25
	jr nz, jr_038_49d5                               ; $49af: $20 $24

	jr jr_038_49d5                                   ; $49b1: $18 $22

	ld [$0800], sp                                   ; $49b3: $08 $00 $08
	inc h                                            ; $49b6: $24
	ld [$24c3], sp                                   ; $49b7: $08 $c3 $24
	ld c, $00                                        ; $49ba: $0e $00
	ld [bc], a                                       ; $49bc: $02
	ret z                                            ; $49bd: $c8

	inc h                                            ; $49be: $24
	jr nz, jr_038_49e3                               ; $49bf: $20 $22

	jr @+$26                                         ; $49c1: $18 $24

	db $10                                           ; $49c3: $10
	dec h                                            ; $49c4: $25

jr_038_49c5:
	jr @-$49                                         ; $49c5: $18 $b5

	ld b, c                                          ; $49c7: $41
	ld bc, $0000                                     ; $49c8: $01 $00 $00
	ld a, [hl]                                       ; $49cb: $7e
	dec l                                            ; $49cc: $2d
	inc c                                            ; $49cd: $0c
	and b                                            ; $49ce: $a0
	inc l                                            ; $49cf: $2c
	ld [bc], a                                       ; $49d0: $02
	dec l                                            ; $49d1: $2d
	ld [bc], a                                       ; $49d2: $02
	ld l, $14                                        ; $49d3: $2e $14

jr_038_49d5:
	ld de, $2908                                     ; $49d5: $11 $08 $29
	ld [$29c2], sp                                   ; $49d8: $08 $c2 $29
	ld [$22c5], sp                                   ; $49db: $08 $c5 $22
	ld [$29c6], sp                                   ; $49de: $08 $c6 $29
	db $10                                           ; $49e1: $10
	daa                                              ; $49e2: $27

jr_038_49e3:
	jr jr_038_49aa                                   ; $49e3: $18 $c5

	inc h                                            ; $49e5: $24
	ld [$24c2], sp                                   ; $49e6: $08 $c2 $24
	db $10                                           ; $49e9: $10
	push bc                                          ; $49ea: $c5
	jr nz, jr_038_49f5                               ; $49eb: $20 $08

	jp nz, $0820                                     ; $49ed: $c2 $20 $08

	push bc                                          ; $49f0: $c5
	nop                                              ; $49f1: $00
	ld [$1824], sp                                   ; $49f2: $08 $24 $18

jr_038_49f5:
	sub [hl]                                         ; $49f5: $96
	ld h, h                                          ; $49f6: $64
	rlca                                             ; $49f7: $07
	sub d                                            ; $49f8: $92
	rst JumpTable                                          ; $49f9: $c7
	ld [hl+], a                                      ; $49fa: $22
	jr nc, jr_038_49c5                               ; $49fb: $30 $c8

	ld [hl+], a                                      ; $49fd: $22
	ld [$1024], sp                                   ; $49fe: $08 $24 $10
	sub [hl]                                         ; $4a01: $96
	ld h, h                                          ; $4a02: $64
	rlca                                             ; $4a03: $07
	ld [hl+], a                                      ; $4a04: $22
	stop                                             ; $4a05: $10 $00
	ld [$0824], sp                                   ; $4a07: $08 $24 $08
	jp $0e24                                         ; $4a0a: $c3 $24 $0e


	nop                                              ; $4a0d: $00
	ld [bc], a                                       ; $4a0e: $02
	ret                                              ; $4a0f: $c9


	jr nz, @+$22                                     ; $4a10: $20 $20

	jr nz, jr_038_4a2c                               ; $4a12: $20 $18

	ld [hl+], a                                      ; $4a14: $22
	db $10                                           ; $4a15: $10
	or c                                             ; $4a16: $b1
	add c                                            ; $4a17: $81
	ld [hl-], a                                      ; $4a18: $32
	rlca                                             ; $4a19: $07
	dec e                                            ; $4a1a: $1d
	jr nz, jr_038_49ae                               ; $4a1b: $20 $91

	push bc                                          ; $4a1d: $c5
	dec h                                            ; $4a1e: $25
	ld [$0827], sp                                   ; $4a1f: $08 $27 $08
	jr z, jr_038_4a2c                                ; $4a22: $28 $08

	daa                                              ; $4a24: $27
	inc b                                            ; $4a25: $04
	jr z, jr_038_4a2c                                ; $4a26: $28 $04

	daa                                              ; $4a28: $27
	ld [$0825], sp                                   ; $4a29: $08 $25 $08

jr_038_4a2c:
	jp nz, $017d                                     ; $4a2c: $c2 $7d $01

	ld [hl+], a                                      ; $4a2f: $22
	ld [$7dc5], sp                                   ; $4a30: $08 $c5 $7d
	nop                                              ; $4a33: $00
	sub [hl]                                         ; $4a34: $96
	nop                                              ; $4a35: $00
	nop                                              ; $4a36: $00
	cp [hl]                                          ; $4a37: $be
	ld [$1d20], sp                                   ; $4a38: $08 $20 $1d
	inc e                                            ; $4a3b: $1c
	dec de                                           ; $4a3c: $1b
	add hl, de                                       ; $4a3d: $19
	cp [hl]                                          ; $4a3e: $be
	inc d                                            ; $4a3f: $14
	db $10                                           ; $4a40: $10
	ld a, [hl]                                       ; $4a41: $7e
	dec l                                            ; $4a42: $2d
	inc c                                            ; $4a43: $0c
	and b                                            ; $4a44: $a0
	or c                                             ; $4a45: $b1
	ld d, c                                          ; $4a46: $51
	rra                                              ; $4a47: $1f
	rlca                                             ; $4a48: $07
	add hl, hl                                       ; $4a49: $29

jr_038_4a4a:
	jr c, jr_038_4a4a                                ; $4a4a: $38 $fe

	rst $38                                          ; $4a4c: $ff
	sub [hl]                                         ; $4a4d: $96
	inc h                                            ; $4a4e: $24
	dec b                                            ; $4a4f: $05
	ld a, [hl]                                       ; $4a50: $7e
	dec e                                            ; $4a51: $1d
	inc c                                            ; $4a52: $0c
	xor c                                            ; $4a53: $a9
	pop de                                           ; $4a54: $d1
	call z, $2020                                    ; $4a55: $cc $20 $20
	ld a, [hl]                                       ; $4a58: $7e
	nop                                              ; $4a59: $00
	xor c                                            ; $4a5a: $a9
	sub [hl]                                         ; $4a5b: $96
	inc c                                            ; $4a5c: $0c
	ld b, $20                                        ; $4a5d: $06 $20
	inc c                                            ; $4a5f: $0c
	or c                                             ; $4a60: $b1
	ld sp, $0000                                     ; $4a61: $31 $00 $00
	jr nz, jr_038_4a72                               ; $4a64: $20 $0c

	or c                                             ; $4a66: $b1
	pop bc                                           ; $4a67: $c1
	inc c                                            ; $4a68: $0c
	ld b, $20                                        ; $4a69: $06 $20
	inc c                                            ; $4a6b: $0c
	or c                                             ; $4a6c: $b1
	ld sp, $0000                                     ; $4a6d: $31 $00 $00
	jr nz, jr_038_4a7e                               ; $4a70: $20 $0c

jr_038_4a72:
	or c                                             ; $4a72: $b1
	pop bc                                           ; $4a73: $c1
	inc c                                            ; $4a74: $0c
	ld b, $20                                        ; $4a75: $06 $20
	inc c                                            ; $4a77: $0c
	or c                                             ; $4a78: $b1
	ld sp, $0000                                     ; $4a79: $31 $00 $00
	jr nz, jr_038_4a8a                               ; $4a7c: $20 $0c

jr_038_4a7e:
	or c                                             ; $4a7e: $b1
	pop bc                                           ; $4a7f: $c1
	inc c                                            ; $4a80: $0c
	ld b, $20                                        ; $4a81: $06 $20
	inc c                                            ; $4a83: $0c
	or c                                             ; $4a84: $b1
	ld sp, $0000                                     ; $4a85: $31 $00 $00
	jr nz, jr_038_4a96                               ; $4a88: $20 $0c

jr_038_4a8a:
	or c                                             ; $4a8a: $b1
	pop bc                                           ; $4a8b: $c1
	inc c                                            ; $4a8c: $0c
	ld b, $1e                                        ; $4a8d: $06 $1e
	inc c                                            ; $4a8f: $0c
	or c                                             ; $4a90: $b1
	ld sp, $0000                                     ; $4a91: $31 $00 $00
	ld e, $04                                        ; $4a94: $1e $04

jr_038_4a96:
	or c                                             ; $4a96: $b1
	pop bc                                           ; $4a97: $c1
	ld b, $05                                        ; $4a98: $06 $05
	jr nz, jr_038_4aa4                               ; $4a9a: $20 $08

	or c                                             ; $4a9c: $b1
	ld sp, $0000                                     ; $4a9d: $31 $00 $00
	jr nz, jr_038_4ab2                               ; $4aa0: $20 $10

	or c                                             ; $4aa2: $b1
	ld [hl], c                                       ; $4aa3: $71

jr_038_4aa4:
	inc c                                            ; $4aa4: $0c
	ld b, $7e                                        ; $4aa5: $06 $7e
	dec e                                            ; $4aa7: $1d
	nop                                              ; $4aa8: $00
	xor c                                            ; $4aa9: $a9
	ld [hl+], a                                      ; $4aaa: $22
	ld c, $b1                                        ; $4aab: $0e $b1
	ld sp, $0000                                     ; $4aad: $31 $00 $00
	ld [hl+], a                                      ; $4ab0: $22
	ld [de], a                                       ; $4ab1: $12

jr_038_4ab2:
	db $fd                                           ; $4ab2: $fd
	ret nc                                           ; $4ab3: $d0

	ld l, [hl]                                       ; $4ab4: $6e
	cp $ce                                           ; $4ab5: $fe $ce
	pop de                                           ; $4ab7: $d1
	sub d                                            ; $4ab8: $92
	ld h, d                                          ; $4ab9: $62
	db $fd                                           ; $4aba: $fd
	xor e                                            ; $4abb: $ab
	ld c, h                                          ; $4abc: $4c
	pop de                                           ; $4abd: $d1
	call nz, $2592                                   ; $4abe: $c4 $92 $25
	ld c, $91                                        ; $4ac1: $0e $91
	ld a, [hl]                                       ; $4ac3: $7e
	dec e                                            ; $4ac4: $1d
	db $10                                           ; $4ac5: $10
	xor c                                            ; $4ac6: $a9
	jp z, $161e                                      ; $4ac7: $ca $1e $16

	jp z, $1022                                      ; $4aca: $ca $22 $10

	dec h                                            ; $4acd: $25
	ld [$25c4], sp                                   ; $4ace: $08 $c4 $25
	db $10                                           ; $4ad1: $10
	jp z, $0822                                      ; $4ad2: $ca $22 $08

	add $27                                          ; $4ad5: $c6 $27
	ld [bc], a                                       ; $4ad7: $02
	rst JumpTable                                          ; $4ad8: $c7
	jr z, jr_038_4adf                                ; $4ad9: $28 $04

	ret z                                            ; $4adb: $c8

	add hl, hl                                       ; $4adc: $29
	ld [de], a                                       ; $4add: $12
	ld a, [hl+]                                      ; $4ade: $2a

jr_038_4adf:
	db $10                                           ; $4adf: $10
	add hl, hl                                       ; $4ae0: $29
	ld [$29c3], sp                                   ; $4ae1: $08 $c3 $29
	db $10                                           ; $4ae4: $10
	ret                                              ; $4ae5: $c9


	dec h                                            ; $4ae6: $25
	ld [$25c3], sp                                   ; $4ae7: $08 $c3 $25
	db $10                                           ; $4aea: $10
	jp z, $0822                                      ; $4aeb: $ca $22 $08

	ld a, [hl]                                       ; $4aee: $7e
	nop                                              ; $4aef: $00
	ld h, d                                          ; $4af0: $62
	jp $1022                                         ; $4af1: $c3 $22 $10


	or l                                             ; $4af4: $b5
	pop af                                           ; $4af5: $f1
	ld [bc], a                                       ; $4af6: $02
	inc h                                            ; $4af7: $24
	dec b                                            ; $4af8: $05
	ld a, [hl]                                       ; $4af9: $7e
	dec e                                            ; $4afa: $1d
	db $10                                           ; $4afb: $10
	xor c                                            ; $4afc: $a9
	inc h                                            ; $4afd: $24
	jr nz, jr_038_4b7e                               ; $4afe: $20 $7e

	nop                                              ; $4b00: $00
	sub [hl]                                         ; $4b01: $96
	inc c                                            ; $4b02: $0c
	ld b, $24                                        ; $4b03: $06 $24
	inc c                                            ; $4b05: $0c
	or c                                             ; $4b06: $b1
	ld b, c                                          ; $4b07: $41
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	inc h                                            ; $4b0a: $24
	inc c                                            ; $4b0b: $0c
	or c                                             ; $4b0c: $b1
	pop af                                           ; $4b0d: $f1
	inc c                                            ; $4b0e: $0c
	ld b, $24                                        ; $4b0f: $06 $24
	inc c                                            ; $4b11: $0c
	or c                                             ; $4b12: $b1
	ld b, c                                          ; $4b13: $41
	nop                                              ; $4b14: $00
	nop                                              ; $4b15: $00
	inc h                                            ; $4b16: $24
	inc c                                            ; $4b17: $0c
	or c                                             ; $4b18: $b1
	pop af                                           ; $4b19: $f1
	inc c                                            ; $4b1a: $0c
	ld b, $24                                        ; $4b1b: $06 $24
	inc c                                            ; $4b1d: $0c
	or c                                             ; $4b1e: $b1
	ld b, c                                          ; $4b1f: $41
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	inc h                                            ; $4b22: $24
	inc c                                            ; $4b23: $0c
	or c                                             ; $4b24: $b1
	pop af                                           ; $4b25: $f1
	inc c                                            ; $4b26: $0c
	ld b, $24                                        ; $4b27: $06 $24
	inc c                                            ; $4b29: $0c
	or c                                             ; $4b2a: $b1
	ld b, c                                          ; $4b2b: $41
	nop                                              ; $4b2c: $00
	nop                                              ; $4b2d: $00
	inc h                                            ; $4b2e: $24
	inc c                                            ; $4b2f: $0c
	or c                                             ; $4b30: $b1
	pop af                                           ; $4b31: $f1
	inc c                                            ; $4b32: $0c
	ld b, $22                                        ; $4b33: $06 $22
	inc c                                            ; $4b35: $0c
	or c                                             ; $4b36: $b1
	ld b, c                                          ; $4b37: $41
	nop                                              ; $4b38: $00
	nop                                              ; $4b39: $00
	ld [hl+], a                                      ; $4b3a: $22
	inc b                                            ; $4b3b: $04
	or c                                             ; $4b3c: $b1
	pop af                                           ; $4b3d: $f1
	inc c                                            ; $4b3e: $0c
	ld b, $24                                        ; $4b3f: $06 $24
	ld [$41b1], sp                                   ; $4b41: $08 $b1 $41
	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	inc h                                            ; $4b46: $24
	db $10                                           ; $4b47: $10
	or c                                             ; $4b48: $b1
	pop af                                           ; $4b49: $f1
	inc c                                            ; $4b4a: $0c
	ld b, $ce                                        ; $4b4b: $06 $ce
	dec h                                            ; $4b4d: $25
	db $10                                           ; $4b4e: $10
	or c                                             ; $4b4f: $b1
	ld b, c                                          ; $4b50: $41
	nop                                              ; $4b51: $00
	nop                                              ; $4b52: $00

jr_038_4b53:
	dec h                                            ; $4b53: $25
	db $10                                           ; $4b54: $10
	sub c                                            ; $4b55: $91
	ret z                                            ; $4b56: $c8

	ld e, $18                                        ; $4b57: $1e $18
	ret z                                            ; $4b59: $c8

	ld [hl+], a                                      ; $4b5a: $22
	db $10                                           ; $4b5b: $10
	dec h                                            ; $4b5c: $25
	ld [$25c4], sp                                   ; $4b5d: $08 $c4 $25
	db $10                                           ; $4b60: $10
	ret z                                            ; $4b61: $c8

	ld [hl+], a                                      ; $4b62: $22
	ld [$2ac7], sp                                   ; $4b63: $08 $c7 $2a
	ld [bc], a                                       ; $4b66: $02
	dec hl                                           ; $4b67: $2b
	inc b                                            ; $4b68: $04
	rst JumpTable                                          ; $4b69: $c7
	inc l                                            ; $4b6a: $2c
	ld [de], a                                       ; $4b6b: $12
	ld a, [hl+]                                      ; $4b6c: $2a
	db $10                                           ; $4b6d: $10
	add hl, hl                                       ; $4b6e: $29
	ld [$29c3], sp                                   ; $4b6f: $08 $c3 $29
	db $10                                           ; $4b72: $10
	ret z                                            ; $4b73: $c8

	ld a, [hl+]                                      ; $4b74: $2a
	ld [$2ac3], sp                                   ; $4b75: $08 $c3 $2a
	db $10                                           ; $4b78: $10
	ret z                                            ; $4b79: $c8

	add hl, hl                                       ; $4b7a: $29
	ld [$d1cc], sp                                   ; $4b7b: $08 $cc $d1

jr_038_4b7e:
	sub d                                            ; $4b7e: $92
	ld h, d                                          ; $4b7f: $62
	db $fd                                           ; $4b80: $fd
	xor e                                            ; $4b81: $ab
	ld c, h                                          ; $4b82: $4c
	call nz, $1025                                   ; $4b83: $c4 $25 $10
	ret z                                            ; $4b86: $c8

	sub c                                            ; $4b87: $91
	ld e, $14                                        ; $4b88: $1e $14
	ret z                                            ; $4b8a: $c8

	ld [hl+], a                                      ; $4b8b: $22
	db $10                                           ; $4b8c: $10
	dec h                                            ; $4b8d: $25
	ld [$25c4], sp                                   ; $4b8e: $08 $c4 $25
	db $10                                           ; $4b91: $10
	ret z                                            ; $4b92: $c8

	ld [hl+], a                                      ; $4b93: $22
	ld [$27c7], sp                                   ; $4b94: $08 $c7 $27
	ld [bc], a                                       ; $4b97: $02
	jr z, jr_038_4b9e                                ; $4b98: $28 $04

	rst JumpTable                                          ; $4b9a: $c7
	add hl, hl                                       ; $4b9b: $29
	ld [de], a                                       ; $4b9c: $12
	ld a, [hl+]                                      ; $4b9d: $2a

jr_038_4b9e:
	db $10                                           ; $4b9e: $10
	add hl, hl                                       ; $4b9f: $29
	ld [$29c3], sp                                   ; $4ba0: $08 $c3 $29
	db $10                                           ; $4ba3: $10
	ret z                                            ; $4ba4: $c8

	dec h                                            ; $4ba5: $25
	ld [$25c3], sp                                   ; $4ba6: $08 $c3 $25
	db $10                                           ; $4ba9: $10
	ret z                                            ; $4baa: $c8

	ld [hl+], a                                      ; $4bab: $22
	ld [$c392], sp                                   ; $4bac: $08 $92 $c3
	ld a, [hl]                                       ; $4baf: $7e
	nop                                              ; $4bb0: $00
	ld h, d                                          ; $4bb1: $62
	ld [hl+], a                                      ; $4bb2: $22
	db $10                                           ; $4bb3: $10
	pop de                                           ; $4bb4: $d1
	rst GetHLinHL                                          ; $4bb5: $cf
	sub d                                            ; $4bb6: $92
	sub [hl]                                         ; $4bb7: $96
	jr nz, @+$07                                     ; $4bb8: $20 $05

	inc h                                            ; $4bba: $24
	jr nz, jr_038_4b53                               ; $4bbb: $20 $96

	inc c                                            ; $4bbd: $0c
	ld b, $24                                        ; $4bbe: $06 $24
	inc c                                            ; $4bc0: $0c
	or c                                             ; $4bc1: $b1
	ld b, c                                          ; $4bc2: $41
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	inc h                                            ; $4bc5: $24
	inc c                                            ; $4bc6: $0c
	or c                                             ; $4bc7: $b1
	pop af                                           ; $4bc8: $f1
	inc c                                            ; $4bc9: $0c
	ld b, $24                                        ; $4bca: $06 $24
	inc c                                            ; $4bcc: $0c
	or c                                             ; $4bcd: $b1
	ld b, c                                          ; $4bce: $41
	nop                                              ; $4bcf: $00
	nop                                              ; $4bd0: $00
	inc h                                            ; $4bd1: $24
	inc c                                            ; $4bd2: $0c
	or c                                             ; $4bd3: $b1
	pop af                                           ; $4bd4: $f1
	inc c                                            ; $4bd5: $0c
	ld b, $24                                        ; $4bd6: $06 $24
	inc c                                            ; $4bd8: $0c
	or c                                             ; $4bd9: $b1
	ld b, c                                          ; $4bda: $41

jr_038_4bdb:
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	inc h                                            ; $4bdd: $24
	inc c                                            ; $4bde: $0c
	or c                                             ; $4bdf: $b1
	pop af                                           ; $4be0: $f1
	inc c                                            ; $4be1: $0c
	ld b, $24                                        ; $4be2: $06 $24
	inc c                                            ; $4be4: $0c
	or c                                             ; $4be5: $b1
	ld b, c                                          ; $4be6: $41
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	inc h                                            ; $4be9: $24
	inc c                                            ; $4bea: $0c
	or c                                             ; $4beb: $b1
	pop af                                           ; $4bec: $f1
	inc c                                            ; $4bed: $0c
	ld b, $22                                        ; $4bee: $06 $22
	inc c                                            ; $4bf0: $0c
	or c                                             ; $4bf1: $b1
	ld b, c                                          ; $4bf2: $41
	nop                                              ; $4bf3: $00
	nop                                              ; $4bf4: $00
	ld [hl+], a                                      ; $4bf5: $22
	inc b                                            ; $4bf6: $04
	or c                                             ; $4bf7: $b1
	pop af                                           ; $4bf8: $f1
	inc c                                            ; $4bf9: $0c
	ld b, $24                                        ; $4bfa: $06 $24
	ld b, $b1                                        ; $4bfc: $06 $b1
	ld b, c                                          ; $4bfe: $41
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	inc h                                            ; $4c01: $24
	ld [de], a                                       ; $4c02: $12
	or c                                             ; $4c03: $b1
	pop bc                                           ; $4c04: $c1
	inc c                                            ; $4c05: $0c
	ld b, $25                                        ; $4c06: $06 $25
	ld c, $b1                                        ; $4c08: $0e $b1
	ld b, c                                          ; $4c0a: $41
	nop                                              ; $4c0b: $00
	nop                                              ; $4c0c: $00
	dec h                                            ; $4c0d: $25
	ld d, $91                                        ; $4c0e: $16 $91
	ret z                                            ; $4c10: $c8

	ld e, $14                                        ; $4c11: $1e $14
	ld [hl+], a                                      ; $4c13: $22
	db $10                                           ; $4c14: $10
	dec h                                            ; $4c15: $25
	ld [$25c4], sp                                   ; $4c16: $08 $c4 $25
	db $10                                           ; $4c19: $10
	ret z                                            ; $4c1a: $c8

	ld [hl+], a                                      ; $4c1b: $22
	ld [$2ac6], sp                                   ; $4c1c: $08 $c6 $2a
	ld [bc], a                                       ; $4c1f: $02
	dec hl                                           ; $4c20: $2b
	inc b                                            ; $4c21: $04
	add $2c                                          ; $4c22: $c6 $2c
	ld [de], a                                       ; $4c24: $12
	ld a, [hl+]                                      ; $4c25: $2a
	db $10                                           ; $4c26: $10
	add hl, hl                                       ; $4c27: $29
	ld [$29c3], sp                                   ; $4c28: $08 $c3 $29
	db $10                                           ; $4c2b: $10
	ret z                                            ; $4c2c: $c8

	ld a, [hl+]                                      ; $4c2d: $2a
	ld [$2ac3], sp                                   ; $4c2e: $08 $c3 $2a
	db $10                                           ; $4c31: $10
	or l                                             ; $4c32: $b5
	and c                                            ; $4c33: $a1
	ld [bc], a                                       ; $4c34: $02
	ld h, h                                          ; $4c35: $64
	rlca                                             ; $4c36: $07
	ld a, [hl]                                       ; $4c37: $7e
	dec l                                            ; $4c38: $2d
	jr jr_038_4bdb                                   ; $4c39: $18 $a0

	ld h, d                                          ; $4c3b: $62
	ld e, $18                                        ; $4c3c: $1e $18
	ret z                                            ; $4c3e: $c8

	add hl, hl                                       ; $4c3f: $29
	jr nz, jr_038_4c69                               ; $4c40: $20 $27

	jr jr_038_4c69                                   ; $4c42: $18 $25

	ld [$25c2], sp                                   ; $4c44: $08 $c2 $25
	ld [$27ca], sp                                   ; $4c47: $08 $ca $27
	ld [$27c2], sp                                   ; $4c4a: $08 $c2 $27
	db $10                                           ; $4c4d: $10
	jp z, $2027                                      ; $4c4e: $ca $27 $20

	dec h                                            ; $4c51: $25
	jr @+$29                                         ; $4c52: $18 $27

	db $10                                           ; $4c54: $10
	or c                                             ; $4c55: $b1
	ld [hl], c                                       ; $4c56: $71
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	add hl, hl                                       ; $4c59: $29
	ld [$7ec6], sp                                   ; $4c5a: $08 $c6 $7e
	dec l                                            ; $4c5d: $2d
	inc a                                            ; $4c5e: $3c
	and b                                            ; $4c5f: $a0
	sub [hl]                                         ; $4c60: $96
	ld [hl-], a                                      ; $4c61: $32
	rlca                                             ; $4c62: $07
	add hl, hl                                       ; $4c63: $29
	cp b                                             ; $4c64: $b8
	sub [hl]                                         ; $4c65: $96
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	or c                                             ; $4c68: $b1

jr_038_4c69:
	and c                                            ; $4c69: $a1
	jr z, jr_038_4c73                                ; $4c6a: $28 $07

	ld e, $21                                        ; $4c6c: $1e $21
	or c                                             ; $4c6e: $b1
	sub c                                            ; $4c6f: $91
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	daa                                              ; $4c72: $27

jr_038_4c73:
	dec b                                            ; $4c73: $05
	ret                                              ; $4c74: $c9


	jr z, jr_038_4c7c                                ; $4c75: $28 $05

	daa                                              ; $4c77: $27
	dec b                                            ; $4c78: $05
	jp z, $0825                                      ; $4c79: $ca $25 $08

jr_038_4c7c:
	or c                                             ; $4c7c: $b1
	ld h, c                                          ; $4c7d: $61
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	daa                                              ; $4c80: $27
	db $10                                           ; $4c81: $10
	sub [hl]                                         ; $4c82: $96
	ld h, h                                          ; $4c83: $64
	rlca                                             ; $4c84: $07
	dec h                                            ; $4c85: $25
	stop                                             ; $4c86: $10 $00
	ld [$0096], sp                                   ; $4c88: $08 $96 $00
	nop                                              ; $4c8b: $00
	daa                                              ; $4c8c: $27
	ld [$27c4], sp                                   ; $4c8d: $08 $c4 $27
	ld c, $00                                        ; $4c90: $0e $00
	ld [bc], a                                       ; $4c92: $02
	or c                                             ; $4c93: $b1
	and c                                            ; $4c94: $a1
	ld h, h                                          ; $4c95: $64
	rlca                                             ; $4c96: $07
	daa                                              ; $4c97: $27
	jr nz, jr_038_4cbe                               ; $4c98: $20 $24

	jr jr_038_4cc1                                   ; $4c9a: $18 $25

	db $10                                           ; $4c9c: $10
	or c                                             ; $4c9d: $b1
	pop de                                           ; $4c9e: $d1
	ld [hl-], a                                      ; $4c9f: $32
	rlca                                             ; $4ca0: $07
	ld [hl+], a                                      ; $4ca1: $22
	sub b                                            ; $4ca2: $90
	or c                                             ; $4ca3: $b1
	ld h, c                                          ; $4ca4: $61
	inc hl                                           ; $4ca5: $23
	rlca                                             ; $4ca6: $07
	inc l                                            ; $4ca7: $2c

jr_038_4ca8:
	jr c, jr_038_4ca8                                ; $4ca8: $38 $fe

	rst $38                                          ; $4caa: $ff
	adc $d1                                          ; $4cab: $ce $d1
	sub d                                            ; $4cad: $92
	nop                                              ; $4cae: $00
	db $10                                           ; $4caf: $10
	or c                                             ; $4cb0: $b1
	pop af                                           ; $4cb1: $f1
	inc h                                            ; $4cb2: $24
	dec b                                            ; $4cb3: $05
	ld a, [hl]                                       ; $4cb4: $7e
	dec e                                            ; $4cb5: $1d
	db $10                                           ; $4cb6: $10
	xor c                                            ; $4cb7: $a9
	inc h                                            ; $4cb8: $24
	jr nz, jr_038_4d39                               ; $4cb9: $20 $7e

	nop                                              ; $4cbb: $00
	sub [hl]                                         ; $4cbc: $96
	inc c                                            ; $4cbd: $0c

jr_038_4cbe:
	ld b, $24                                        ; $4cbe: $06 $24
	inc c                                            ; $4cc0: $0c

jr_038_4cc1:
	or c                                             ; $4cc1: $b1
	ld b, c                                          ; $4cc2: $41
	nop                                              ; $4cc3: $00
	nop                                              ; $4cc4: $00
	inc h                                            ; $4cc5: $24
	inc c                                            ; $4cc6: $0c
	or c                                             ; $4cc7: $b1
	pop af                                           ; $4cc8: $f1
	inc c                                            ; $4cc9: $0c
	ld b, $24                                        ; $4cca: $06 $24
	inc c                                            ; $4ccc: $0c
	or c                                             ; $4ccd: $b1
	ld b, c                                          ; $4cce: $41
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	inc h                                            ; $4cd1: $24
	inc c                                            ; $4cd2: $0c
	or c                                             ; $4cd3: $b1
	pop af                                           ; $4cd4: $f1
	inc c                                            ; $4cd5: $0c
	ld b, $24                                        ; $4cd6: $06 $24
	inc c                                            ; $4cd8: $0c
	or c                                             ; $4cd9: $b1
	ld b, c                                          ; $4cda: $41
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	inc h                                            ; $4cdd: $24
	inc c                                            ; $4cde: $0c
	or c                                             ; $4cdf: $b1
	pop af                                           ; $4ce0: $f1
	inc c                                            ; $4ce1: $0c
	ld b, $24                                        ; $4ce2: $06 $24
	inc c                                            ; $4ce4: $0c
	or c                                             ; $4ce5: $b1
	ld b, c                                          ; $4ce6: $41
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	inc h                                            ; $4ce9: $24
	inc c                                            ; $4cea: $0c
	or c                                             ; $4ceb: $b1
	pop de                                           ; $4cec: $d1
	inc c                                            ; $4ced: $0c
	ld b, $22                                        ; $4cee: $06 $22
	inc c                                            ; $4cf0: $0c
	or c                                             ; $4cf1: $b1
	ld b, c                                          ; $4cf2: $41
	nop                                              ; $4cf3: $00
	nop                                              ; $4cf4: $00
	ld [hl+], a                                      ; $4cf5: $22
	inc b                                            ; $4cf6: $04
	or c                                             ; $4cf7: $b1
	pop af                                           ; $4cf8: $f1
	ld b, $05                                        ; $4cf9: $06 $05
	inc h                                            ; $4cfb: $24
	ld [$41b1], sp                                   ; $4cfc: $08 $b1 $41
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	inc h                                            ; $4d01: $24
	db $10                                           ; $4d02: $10
	or c                                             ; $4d03: $b1
	pop hl                                           ; $4d04: $e1
	inc c                                            ; $4d05: $0c
	ld b, $25                                        ; $4d06: $06 $25
	ld c, $b1                                        ; $4d08: $0e $b1
	ld b, c                                          ; $4d0a: $41
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	dec h                                            ; $4d0d: $25
	ld b, $fd                                        ; $4d0e: $06 $fd
	ret nc                                           ; $4d10: $d0

	ld l, [hl]                                       ; $4d11: $6e
	cp $c2                                           ; $4d12: $fe $c2
	pop de                                           ; $4d14: $d1
	ld a, a                                          ; $4d15: $7f
	ld e, $c2                                        ; $4d16: $1e $c2
	ld h, d                                          ; $4d18: $62
	dec b                                            ; $4d19: $05
	db $10                                           ; $4d1a: $10
	db $fd                                           ; $4d1b: $fd
	dec hl                                           ; $4d1c: $2b
	ld c, [hl]                                       ; $4d1d: $4e
	ld [de], a                                       ; $4d1e: $12
	ld [$5800], sp                                   ; $4d1f: $08 $00 $58
	ld a, a                                          ; $4d22: $7f
	ld e, $c4                                        ; $4d23: $1e $c4
	ld [de], a                                       ; $4d25: $12
	inc h                                            ; $4d26: $24
	add $12                                          ; $4d27: $c6 $12
	inc c                                            ; $4d29: $0c
	jp nz, $1014                                     ; $4d2a: $c2 $14 $10

	ld [de], a                                       ; $4d2d: $12
	ld [$12c0], sp                                   ; $4d2e: $08 $c0 $12
	db $10                                           ; $4d31: $10
	jp nz, $0711                                     ; $4d32: $c2 $11 $07

	nop                                              ; $4d35: $00
	ld bc, $d1c2                                     ; $4d36: $01 $c2 $d1

jr_038_4d39:
	ld a, a                                          ; $4d39: $7f
	ld e, $62                                        ; $4d3a: $1e $62
	nop                                              ; $4d3c: $00
	db $10                                           ; $4d3d: $10
	db $fd                                           ; $4d3e: $fd
	dec hl                                           ; $4d3f: $2b
	ld c, [hl]                                       ; $4d40: $4e
	ld [de], a                                       ; $4d41: $12
	ld b, $00                                        ; $4d42: $06 $00
	ld e, d                                          ; $4d44: $5a
	ld a, a                                          ; $4d45: $7f
	ld e, $c4                                        ; $4d46: $1e $c4
	ld [de], a                                       ; $4d48: $12
	inc h                                            ; $4d49: $24
	add $12                                          ; $4d4a: $c6 $12
	inc c                                            ; $4d4c: $0c
	jp nz, $100f                                     ; $4d4d: $c2 $0f $10

	ld de, $c608                                     ; $4d50: $11 $08 $c6
	ld de, $c210                                     ; $4d53: $11 $10 $c2
	ld [de], a                                       ; $4d56: $12
	rlca                                             ; $4d57: $07
	nop                                              ; $4d58: $00
	ld bc, $d1c2                                     ; $4d59: $01 $c2 $d1
	ld a, a                                          ; $4d5c: $7f
	ld e, $62                                        ; $4d5d: $1e $62
	nop                                              ; $4d5f: $00
	db $10                                           ; $4d60: $10
	db $fd                                           ; $4d61: $fd
	dec hl                                           ; $4d62: $2b
	ld c, [hl]                                       ; $4d63: $4e
	jp nz, $0c12                                     ; $4d64: $c2 $12 $0c

	add $12                                          ; $4d67: $c6 $12
	inc c                                            ; $4d69: $0c
	nop                                              ; $4d6a: $00
	db $10                                           ; $4d6b: $10
	add a                                            ; $4d6c: $87
	jp nz, $0811                                     ; $4d6d: $c2 $11 $08

	ld [de], a                                       ; $4d70: $12
	inc c                                            ; $4d71: $0c
	add $12                                          ; $4d72: $c6 $12
	inc c                                            ; $4d74: $0c
	nop                                              ; $4d75: $00
	db $10                                           ; $4d76: $10
	jp nz, $0811                                     ; $4d77: $c2 $11 $08

	jp nz, $0c12                                     ; $4d7a: $c2 $12 $0c

	add $12                                          ; $4d7d: $c6 $12
	inc c                                            ; $4d7f: $0c
	nop                                              ; $4d80: $00
	db $10                                           ; $4d81: $10
	jp nz, $0811                                     ; $4d82: $c2 $11 $08

	inc d                                            ; $4d85: $14
	db $10                                           ; $4d86: $10
	ld [de], a                                       ; $4d87: $12
	ld [$12c6], sp                                   ; $4d88: $08 $c6 $12
	db $10                                           ; $4d8b: $10
	or c                                             ; $4d8c: $b1
	ld hl, $0108                                     ; $4d8d: $21 $08 $01
	ld de, $9608                                     ; $4d90: $11 $08 $96
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	jp nz, Jump_038_7fd1                             ; $4d95: $c2 $d1 $7f

	ld e, $62                                        ; $4d98: $1e $62
	nop                                              ; $4d9a: $00
	db $10                                           ; $4d9b: $10
	db $fd                                           ; $4d9c: $fd
	dec hl                                           ; $4d9d: $2b
	ld c, [hl]                                       ; $4d9e: $4e
	jp nz, $0c12                                     ; $4d9f: $c2 $12 $0c

	add $87                                          ; $4da2: $c6 $87
	ld [de], a                                       ; $4da4: $12
	inc c                                            ; $4da5: $0c
	nop                                              ; $4da6: $00
	db $10                                           ; $4da7: $10
	jp nz, $0811                                     ; $4da8: $c2 $11 $08

	ld [de], a                                       ; $4dab: $12
	inc c                                            ; $4dac: $0c
	add $12                                          ; $4dad: $c6 $12
	inc c                                            ; $4daf: $0c
	nop                                              ; $4db0: $00
	db $10                                           ; $4db1: $10
	jp nz, $0811                                     ; $4db2: $c2 $11 $08

	jp nz, $0f16                                     ; $4db5: $c2 $16 $0f

	nop                                              ; $4db8: $00
	ld [bc], a                                       ; $4db9: $02
	ld d, $07                                        ; $4dba: $16 $07
	sub [hl]                                         ; $4dbc: $96
	inc bc                                           ; $4dbd: $03
	ld bc, $1814                                     ; $4dbe: $01 $14 $18
	ld [de], a                                       ; $4dc1: $12
	ld de, $0712                                     ; $4dc2: $11 $12 $07
	ld de, $9610                                     ; $4dc5: $11 $10 $96
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00
	pop de                                           ; $4dca: $d1
	jp nz, Jump_038_628a                             ; $4dcb: $c2 $8a $62

	rrca                                             ; $4dce: $0f
	ld [$1000], sp                                   ; $4dcf: $08 $00 $10
	rrca                                             ; $4dd2: $0f
	ld [$180d], sp                                   ; $4dd3: $08 $0d $18
	rrca                                             ; $4dd6: $0f
	jr @+$14                                         ; $4dd7: $18 $12

	db $10                                           ; $4dd9: $10
	ld de, $0008                                     ; $4dda: $11 $08 $00
	db $10                                           ; $4ddd: $10
	ld de, $0f08                                     ; $4dde: $11 $08 $0f
	jr @+$0f                                         ; $4de1: $18 $0d

	jr jr_038_4df1                                   ; $4de3: $18 $0c

	db $10                                           ; $4de5: $10
	ld d, $08                                        ; $4de6: $16 $08
	nop                                              ; $4de8: $00
	db $10                                           ; $4de9: $10
	ld d, $08                                        ; $4dea: $16 $08
	ld a, [bc]                                       ; $4dec: $0a
	jr jr_038_4dfb                                   ; $4ded: $18 $0c

	jr jr_038_4dfe                                   ; $4def: $18 $0d

jr_038_4df1:
	jr jr_038_4e02                                   ; $4df1: $18 $0f

	jr jr_038_4e02                                   ; $4df3: $18 $0d

	jr jr_038_4e06                                   ; $4df5: $18 $0f

	jr jr_038_4e09                                   ; $4df7: $18 $10

	db $10                                           ; $4df9: $10
	rrca                                             ; $4dfa: $0f

jr_038_4dfb:
	ld [$1000], sp                                   ; $4dfb: $08 $00 $10

jr_038_4dfe:
	rrca                                             ; $4dfe: $0f
	ld [$180d], sp                                   ; $4dff: $08 $0d $18

jr_038_4e02:
	rrca                                             ; $4e02: $0f
	jr jr_038_4e17                                   ; $4e03: $18 $12

	db $10                                           ; $4e05: $10

jr_038_4e06:
	ld de, $0008                                     ; $4e06: $11 $08 $00

jr_038_4e09:
	db $10                                           ; $4e09: $10
	ld de, $0f08                                     ; $4e0a: $11 $08 $0f
	jr @+$0f                                         ; $4e0d: $18 $0d

	jr jr_038_4e1d                                   ; $4e0f: $18 $0c

	db $10                                           ; $4e11: $10
	ld d, $08                                        ; $4e12: $16 $08
	call nz, $1016                                   ; $4e14: $c4 $16 $10

jr_038_4e17:
	jp nz, $0816                                     ; $4e17: $c2 $16 $08

	ld a, [bc]                                       ; $4e1a: $0a
	jr @+$0e                                         ; $4e1b: $18 $0c

jr_038_4e1d:
	jr jr_038_4e2c                                   ; $4e1d: $18 $0d

	db $10                                           ; $4e1f: $10
	ld de, $0008                                     ; $4e20: $11 $08 $00
	jr z, jr_038_4e36                                ; $4e23: $28 $11

	scf                                              ; $4e25: $37
	add $11                                          ; $4e26: $c6 $11
	ld bc, $fffe                                     ; $4e28: $01 $fe $ff
	ld a, a                                          ; $4e2b: $7f

jr_038_4e2c:
	ld e, $c2                                        ; $4e2c: $1e $c2
	pop de                                           ; $4e2e: $d1
	ld h, d                                          ; $4e2f: $62
	ld de, $c468                                     ; $4e30: $11 $68 $c4
	ld de, $0026                                     ; $4e33: $11 $26 $00

jr_038_4e36:
	ld [bc], a                                       ; $4e36: $02
	add a                                            ; $4e37: $87
	jp nz, $0811                                     ; $4e38: $c2 $11 $08

	add $11                                          ; $4e3b: $c6 $11
	db $10                                           ; $4e3d: $10
	jp nz, $0812                                     ; $4e3e: $c2 $12 $08

	db $fd                                           ; $4e41: $fd
	ret nc                                           ; $4e42: $d0

	ld l, [hl]                                       ; $4e43: $6e
	cp $fb                                           ; $4e44: $fe $fb
	db $fd                                           ; $4e46: $fd
	pop af                                           ; $4e47: $f1
	ld c, [hl]                                       ; $4e48: $4e
	ei                                               ; $4e49: $fb
	inc b                                            ; $4e4a: $04
	ei                                               ; $4e4b: $fb
	db $fd                                           ; $4e4c: $fd
	pop af                                           ; $4e4d: $f1
	ld c, [hl]                                       ; $4e4e: $4e
	ei                                               ; $4e4f: $fb
	inc bc                                           ; $4e50: $03
	nop                                              ; $4e51: $00
	jr @+$1f                                         ; $4e52: $18 $1d

	jr jr_038_4e56                                   ; $4e54: $18 $00

jr_038_4e56:
	jr @+$20                                         ; $4e56: $18 $1e

	ld [$081d], sp                                   ; $4e58: $08 $1d $08
	dec e                                            ; $4e5b: $1d
	ld [$101d], sp                                   ; $4e5c: $08 $1d $10
	ld e, $20                                        ; $4e5f: $1e $20
	dec e                                            ; $4e61: $1d
	db $10                                           ; $4e62: $10
	dec e                                            ; $4e63: $1d
	ld [$1052], sp                                   ; $4e64: $08 $52 $10
	nop                                              ; $4e67: $00
	ld [$181d], sp                                   ; $4e68: $08 $1d $18
	ld d, d                                          ; $4e6b: $52
	db $10                                           ; $4e6c: $10
	dec e                                            ; $4e6d: $1d
	jr @+$1f                                         ; $4e6e: $18 $1d

	ld [$1052], sp                                   ; $4e70: $08 $52 $10
	rra                                              ; $4e73: $1f
	ld [$f1fd], sp                                   ; $4e74: $08 $fd $f1
	ld c, [hl]                                       ; $4e77: $4e
	nop                                              ; $4e78: $00
	jr @+$1f                                         ; $4e79: $18 $1d

	jr jr_038_4e7d                                   ; $4e7b: $18 $00

jr_038_4e7d:
	jr jr_038_4ed1                                   ; $4e7d: $18 $52

	ld [$081d], sp                                   ; $4e7f: $08 $1d $08
	dec e                                            ; $4e82: $1d
	ld [$101d], sp                                   ; $4e83: $08 $1d $10
	ld e, $20                                        ; $4e86: $1e $20
	dec e                                            ; $4e88: $1d
	db $10                                           ; $4e89: $10
	dec e                                            ; $4e8a: $1d
	ld [$1052], sp                                   ; $4e8b: $08 $52 $10
	nop                                              ; $4e8e: $00
	ld [$181d], sp                                   ; $4e8f: $08 $1d $18
	ld d, d                                          ; $4e92: $52
	db $10                                           ; $4e93: $10
	dec e                                            ; $4e94: $1d
	jr @+$1f                                         ; $4e95: $18 $1d

	ld [$1052], sp                                   ; $4e97: $08 $52 $10
	rra                                              ; $4e9a: $1f
	ld [$18be], sp                                   ; $4e9b: $08 $be $18
	nop                                              ; $4e9e: $00
	dec e                                            ; $4e9f: $1d
	nop                                              ; $4ea0: $00
	dec e                                            ; $4ea1: $1d
	cp [hl]                                          ; $4ea2: $be
	nop                                              ; $4ea3: $00
	jr jr_038_4ec3                                   ; $4ea4: $18 $1d

	jr jr_038_4ea8                                   ; $4ea6: $18 $00

jr_038_4ea8:
	ld [$081d], sp                                   ; $4ea8: $08 $1d $08
	dec e                                            ; $4eab: $1d
	ld [$101e], sp                                   ; $4eac: $08 $1e $10
	rra                                              ; $4eaf: $1f
	jr @+$1f                                         ; $4eb0: $18 $1d

	ld [$181e], sp                                   ; $4eb2: $08 $1e $18
	rra                                              ; $4eb5: $1f
	db $10                                           ; $4eb6: $10
	dec e                                            ; $4eb7: $1d
	ld [$1052], sp                                   ; $4eb8: $08 $52 $10
	ei                                               ; $4ebb: $fb
	rra                                              ; $4ebc: $1f
	jr jr_038_4edc                                   ; $4ebd: $18 $1d

	ld [$181e], sp                                   ; $4ebf: $08 $1e $18
	rra                                              ; $4ec2: $1f

jr_038_4ec3:
	db $10                                           ; $4ec3: $10
	dec e                                            ; $4ec4: $1d
	ld [$101d], sp                                   ; $4ec5: $08 $1d $10
	ei                                               ; $4ec8: $fb
	ld [bc], a                                       ; $4ec9: $02
	rra                                              ; $4eca: $1f
	jr jr_038_4eea                                   ; $4ecb: $18 $1d

	ld [$181e], sp                                   ; $4ecd: $08 $1e $18
	rra                                              ; $4ed0: $1f

jr_038_4ed1:
	db $10                                           ; $4ed1: $10
	dec e                                            ; $4ed2: $1d
	ld [$081d], sp                                   ; $4ed3: $08 $1d $08
	dec e                                            ; $4ed6: $1d
	ld [$1ffb], sp                                   ; $4ed7: $08 $fb $1f
	jr jr_038_4ef9                                   ; $4eda: $18 $1d

jr_038_4edc:
	ld [$181e], sp                                   ; $4edc: $08 $1e $18
	rra                                              ; $4edf: $1f
	db $10                                           ; $4ee0: $10
	dec e                                            ; $4ee1: $1d
	ld [$101d], sp                                   ; $4ee2: $08 $1d $10
	ei                                               ; $4ee5: $fb
	inc bc                                           ; $4ee6: $03
	rra                                              ; $4ee7: $1f
	db $10                                           ; $4ee8: $10
	dec e                                            ; $4ee9: $1d

jr_038_4eea:
	db $10                                           ; $4eea: $10
	dec e                                            ; $4eeb: $1d
	db $10                                           ; $4eec: $10
	ld e, $38                                        ; $4eed: $1e $38
	cp $ff                                           ; $4eef: $fe $ff
	cp [hl]                                          ; $4ef1: $be
	jr jr_038_4ef4                                   ; $4ef2: $18 $00

jr_038_4ef4:
	dec e                                            ; $4ef4: $1d
	nop                                              ; $4ef5: $00
	dec e                                            ; $4ef6: $1d
	cp [hl]                                          ; $4ef7: $be
	db $fd                                           ; $4ef8: $fd

jr_038_4ef9:
	or [hl]                                          ; $4ef9: $b6
	sbc d                                            ; $4efa: $9a
	pop af                                           ; $4efb: $f1
	ld [bc], a                                       ; $4efc: $02
	ld [$7e02], sp                                   ; $4efd: $08 $02 $7e
	ld bc, sUnmappedPlayer1stName                                     ; $4f00: $01 $00 $a2
	ld bc, $9608                                     ; $4f03: $01 $08 $96
	db $10                                           ; $4f06: $10
	rlca                                             ; $4f07: $07
	ld [bc], a                                       ; $4f08: $02
	db $10                                           ; $4f09: $10
	sub [hl]                                         ; $4f0a: $96
	nop                                              ; $4f0b: $00
	nop                                              ; $4f0c: $00
	inc bc                                           ; $4f0d: $03
	ld a, [bc]                                       ; $4f0e: $0a
	ret z                                            ; $4f0f: $c8

	inc bc                                           ; $4f10: $03
	ld e, [hl]                                       ; $4f11: $5e
	add $03                                          ; $4f12: $c6 $03
	ld [hl-], a                                      ; $4f14: $32
	nop                                              ; $4f15: $00
	inc c                                            ; $4f16: $0c
	or c                                             ; $4f17: $b1
	pop hl                                           ; $4f18: $e1
	ld [$0102], sp                                   ; $4f19: $08 $02 $01
	ld [$1096], sp                                   ; $4f1c: $08 $96 $10
	rlca                                             ; $4f1f: $07
	ld [bc], a                                       ; $4f20: $02
	db $10                                           ; $4f21: $10
	sub [hl]                                         ; $4f22: $96
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	inc bc                                           ; $4f25: $03
	ld a, [bc]                                       ; $4f26: $0a
	ret z                                            ; $4f27: $c8

	inc bc                                           ; $4f28: $03
	ld e, [hl]                                       ; $4f29: $5e
	add $91                                          ; $4f2a: $c6 $91
	ld a, [hl]                                       ; $4f2c: $7e
	inc bc                                           ; $4f2d: $03
	nop                                              ; $4f2e: $00
	and b                                            ; $4f2f: $a0
	inc sp                                           ; $4f30: $33
	inc h                                            ; $4f31: $24
	nop                                              ; $4f32: $00
	inc b                                            ; $4f33: $04
	ld a, [hl]                                       ; $4f34: $7e
	ld [bc], a                                       ; $4f35: $02
	nop                                              ; $4f36: $00
	and b                                            ; $4f37: $a0
	inc sp                                           ; $4f38: $33
	ld [hl-], a                                      ; $4f39: $32
	jp $0833                                         ; $4f3a: $c3 $33 $08


	ld a, [hl]                                       ; $4f3d: $7e
	nop                                              ; $4f3e: $00
	cp $b6                                           ; $4f3f: $fe $b6
	sbc e                                            ; $4f41: $9b
	pop af                                           ; $4f42: $f1
	ld bc, $0318                                     ; $4f43: $01 $18 $03
	ld a, [hl]                                       ; $4f46: $7e
	ld [bc], a                                       ; $4f47: $02
	nop                                              ; $4f48: $00
	and c                                            ; $4f49: $a1
	cp [hl]                                          ; $4f4a: $be
	jr jr_038_4f55                                   ; $4f4b: $18 $08

	inc c                                            ; $4f4d: $0c
	rrca                                             ; $4f4e: $0f
	ld de, $1112                                     ; $4f4f: $11 $12 $11
	rrca                                             ; $4f52: $0f
	inc c                                            ; $4f53: $0c
	cp [hl]                                          ; $4f54: $be

jr_038_4f55:
	ld [$0c18], sp                                   ; $4f55: $08 $18 $0c
	jr @+$11                                         ; $4f58: $18 $0f

	db $10                                           ; $4f5a: $10
	rrca                                             ; $4f5b: $0f
	ld [$18be], sp                                   ; $4f5c: $08 $be $18
	ld de, $1112                                     ; $4f5f: $11 $12 $11
	rrca                                             ; $4f62: $0f
	inc c                                            ; $4f63: $0c
	cp [hl]                                          ; $4f64: $be
	cp [hl]                                          ; $4f65: $be
	jr @+$0f                                         ; $4f66: $18 $0d

	ld de, $1614                                     ; $4f68: $11 $14 $16
	rla                                              ; $4f6b: $17
	ld d, $14                                        ; $4f6c: $16 $14
	dec c                                            ; $4f6e: $0d
	cp [hl]                                          ; $4f6f: $be
	ld [$0810], sp                                   ; $4f70: $08 $10 $08
	ld [$18be], sp                                   ; $4f73: $08 $be $18
	inc c                                            ; $4f76: $0c
	rrca                                             ; $4f77: $0f
	ld de, $1112                                     ; $4f78: $11 $12 $11
	rrca                                             ; $4f7b: $0f
	inc c                                            ; $4f7c: $0c
	cp [hl]                                          ; $4f7d: $be
	or l                                             ; $4f7e: $b5
	pop af                                           ; $4f7f: $f1
	inc bc                                           ; $4f80: $03
	jr jr_038_4f86                                   ; $4f81: $18 $03

	cp [hl]                                          ; $4f83: $be
	jr jr_038_4f89                                   ; $4f84: $18 $03

jr_038_4f86:
	rlca                                             ; $4f86: $07
	ld a, [bc]                                       ; $4f87: $0a
	inc bc                                           ; $4f88: $03

jr_038_4f89:
	ld bc, $be05                                     ; $4f89: $01 $05 $be
	sub [hl]                                         ; $4f8c: $96
	jr @+$04                                         ; $4f8d: $18 $02

	ld [$b118], sp                                   ; $4f8f: $08 $18 $b1
	pop af                                           ; $4f92: $f1
	jr @+$08                                         ; $4f93: $18 $06

	ld bc, $be18                                     ; $4f95: $01 $18 $be
	jr @+$0a                                         ; $4f98: $18 $08

	ld b, $05                                        ; $4f9a: $06 $05
	inc b                                            ; $4f9c: $04
	cp [hl]                                          ; $4f9d: $be
	sub [hl]                                         ; $4f9e: $96
	db $10                                           ; $4f9f: $10
	ld bc, $1003                                     ; $4fa0: $01 $03 $10
	sub [hl]                                         ; $4fa3: $96

jr_038_4fa4:
	ld [$0102], sp                                   ; $4fa4: $08 $02 $01
	ld [$1096], sp                                   ; $4fa7: $08 $96 $10
	inc bc                                           ; $4faa: $03
	ld [bc], a                                       ; $4fab: $02
	db $10                                           ; $4fac: $10
	sub [hl]                                         ; $4fad: $96
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	inc bc                                           ; $4fb0: $03
	inc l                                            ; $4fb1: $2c
	jp $0c03                                         ; $4fb2: $c3 $03 $0c


	ld a, [hl]                                       ; $4fb5: $7e
	nop                                              ; $4fb6: $00
	ld [hl], b                                       ; $4fb7: $70
	cp $ff                                           ; $4fb8: $fe $ff
	or h                                             ; $4fba: $b4
	sbc d                                            ; $4fbb: $9a
	pop af                                           ; $4fbc: $f1
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	jr nz, jr_038_4fc1                               ; $4fbf: $20 $00

jr_038_4fc1:
	ld c, $26                                        ; $4fc1: $0e $26
	ld [bc], a                                       ; $4fc3: $02
	sub [hl]                                         ; $4fc4: $96
	jr jr_038_4fcc                                   ; $4fc5: $18 $05

	daa                                              ; $4fc7: $27
	jr @-$68                                         ; $4fc8: $18 $96

	nop                                              ; $4fca: $00
	nop                                              ; $4fcb: $00

jr_038_4fcc:
	ld [hl+], a                                      ; $4fcc: $22
	ld [$0224], sp                                   ; $4fcd: $08 $24 $02
	dec h                                            ; $4fd0: $25
	ld c, $96                                        ; $4fd1: $0e $96
	ld [$2202], sp                                   ; $4fd3: $08 $02 $22
	ld [$22c4], sp                                   ; $4fd6: $08 $c4 $22
	db $10                                           ; $4fd9: $10
	or c                                             ; $4fda: $b1
	pop af                                           ; $4fdb: $f1
	ld c, $02                                        ; $4fdc: $0e $02
	ld e, $08                                        ; $4fde: $1e $08
	jr nz, @+$04                                     ; $4fe0: $20 $02

	ld hl, $960e                                     ; $4fe2: $21 $0e $96
	ld [$be02], sp                                   ; $4fe5: $08 $02 $be
	ld [$1e20], sp                                   ; $4fe8: $08 $20 $1e
	dec de                                           ; $4feb: $1b
	add hl, de                                       ; $4fec: $19
	cp [hl]                                          ; $4fed: $be
	sub [hl]                                         ; $4fee: $96
	db $10                                           ; $4fef: $10
	inc bc                                           ; $4ff0: $03
	ld e, $10                                        ; $4ff1: $1e $10
	sub [hl]                                         ; $4ff3: $96
	ld [$1b02], sp                                   ; $4ff4: $08 $02 $1b
	ld [$1096], sp                                   ; $4ff7: $08 $96 $10
	inc bc                                           ; $4ffa: $03
	add hl, de                                       ; $4ffb: $19
	db $10                                           ; $4ffc: $10
	sub [hl]                                         ; $4ffd: $96
	ld [$1602], sp                                   ; $4ffe: $08 $02 $16
	ld [$22c3], sp                                   ; $5001: $08 $c3 $22
	ld c, $ce                                        ; $5004: $0e $ce
	jr @+$04                                         ; $5006: $18 $02

	sub [hl]                                         ; $5008: $96
	jr jr_038_500e                                   ; $5009: $18 $03

	add hl, de                                       ; $500b: $19
	jr jr_038_4fa4                                   ; $500c: $18 $96

jr_038_500e:
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	sub [hl]                                         ; $5010: $96
	ld [$1204], sp                                   ; $5011: $08 $04 $12
	ld [$0214], sp                                   ; $5014: $08 $14 $02
	sub [hl]                                         ; $5017: $96
	ld c, $07                                        ; $5018: $0e $07
	dec d                                            ; $501a: $15
	ld c, $96                                        ; $501b: $0e $96

jr_038_501d:
	ld [$be01], sp                                   ; $501d: $08 $01 $be
	ld [$1214], sp                                   ; $5020: $08 $14 $12
	rrca                                             ; $5023: $0f
	dec c                                            ; $5024: $0d
	cp [hl]                                          ; $5025: $be
	ld de, $9602                                     ; $5026: $11 $02 $96
	ld c, $07                                        ; $5029: $0e $07
	ld [de], a                                       ; $502b: $12
	ld c, $96                                        ; $502c: $0e $96
	ld [$0f03], sp                                   ; $502e: $08 $03 $0f
	ld [$1096], sp                                   ; $5031: $08 $96 $10
	inc b                                            ; $5034: $04
	dec c                                            ; $5035: $0d
	db $10                                           ; $5036: $10
	call z, $020e                                    ; $5037: $cc $0e $02
	sub [hl]                                         ; $503a: $96
	ld b, $07                                        ; $503b: $06 $07
	ld a, [hl]                                       ; $503d: $7e
	inc bc                                           ; $503e: $03
	nop                                              ; $503f: $00
	and c                                            ; $5040: $a1
	rrca                                             ; $5041: $0f
	ld e, $b1                                        ; $5042: $1e $b1
	ld b, c                                          ; $5044: $41
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	rrca                                             ; $5047: $0f

jr_038_5048:
	jr jr_038_5048                                   ; $5048: $18 $fe

	or [hl]                                          ; $504a: $b6
	sbc e                                            ; $504b: $9b
	pop hl                                           ; $504c: $e1
	inc bc                                           ; $504d: $03
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	ld a, l                                          ; $5050: $7d
	ld bc, $037e                                     ; $5051: $01 $7e $03
	ld c, $a0                                        ; $5054: $0e $a0
	jr nz, @+$32                                     ; $5056: $20 $30

	ld a, [hl]                                       ; $5058: $7e
	nop                                              ; $5059: $00
	dec e                                            ; $505a: $1d
	inc h                                            ; $505b: $24
	jr nz, jr_038_506a                               ; $505c: $20 $0c

	jp $1020                                         ; $505e: $c3 $20 $10


	rst JumpTable                                          ; $5061: $c7
	inc d                                            ; $5062: $14
	inc bc                                           ; $5063: $03
	jp nz, $0514                                     ; $5064: $c2 $14 $05

	rst JumpTable                                          ; $5067: $c7
	ld d, $03                                        ; $5068: $16 $03

jr_038_506a:
	jp $1516                                         ; $506a: $c3 $16 $15


	rst JumpTable                                          ; $506d: $c7
	inc d                                            ; $506e: $14
	inc bc                                           ; $506f: $03
	jp $0d14                                         ; $5070: $c3 $14 $0d


	or c                                             ; $5073: $b1
	pop hl                                           ; $5074: $e1
	ld [$2004], sp                                   ; $5075: $08 $04 $20
	ld [$1022], sp                                   ; $5078: $08 $22 $10
	jr nz, jr_038_5085                               ; $507b: $20 $08

	ld a, l                                          ; $507d: $7d
	nop                                              ; $507e: $00

jr_038_507f:
	sub [hl]                                         ; $507f: $96
	jr @+$04                                         ; $5080: $18 $02

	inc hl                                           ; $5082: $23
	jr jr_038_50a7                                   ; $5083: $18 $22

jr_038_5085:
	jr jr_038_501d                                   ; $5085: $18 $96

	jr jr_038_508f                                   ; $5087: $18 $06

	jr nz, jr_038_50a3                               ; $5089: $20 $18

	ld [hl+], a                                      ; $508b: $22
	db $10                                           ; $508c: $10
	jr nz, @+$0a                                     ; $508d: $20 $08

jr_038_508f:
	nop                                              ; $508f: $00
	db $10                                           ; $5090: $10
	ld a, [hl]                                       ; $5091: $7e
	inc bc                                           ; $5092: $03
	nop                                              ; $5093: $00
	and b                                            ; $5094: $a0
	sub [hl]                                         ; $5095: $96
	jr jr_038_509b                                   ; $5096: $18 $03

	daa                                              ; $5098: $27
	jr jr_038_5119                                   ; $5099: $18 $7e

jr_038_509b:
	nop                                              ; $509b: $00
	sub [hl]                                         ; $509c: $96
	ld [$be05], sp                                   ; $509d: $08 $05 $be
	ld [$2325], sp                                   ; $50a0: $08 $25 $23

jr_038_50a3:
	dec h                                            ; $50a3: $25
	inc hl                                           ; $50a4: $23
	cp [hl]                                          ; $50a5: $be
	sub [hl]                                         ; $50a6: $96

jr_038_50a7:
	rla                                              ; $50a7: $17
	ld b, $20                                        ; $50a8: $06 $20
	rla                                              ; $50aa: $17
	nop                                              ; $50ab: $00
	ld bc, $0096                                     ; $50ac: $01 $96 $00
	nop                                              ; $50af: $00
	ld a, [hl]                                       ; $50b0: $7e
	db $10                                           ; $50b1: $10
	ld d, $a1                                        ; $50b2: $16 $a1
	jr nz, @+$32                                     ; $50b4: $20 $30

	ld a, [hl]                                       ; $50b6: $7e
	inc bc                                           ; $50b7: $03
	nop                                              ; $50b8: $00
	and c                                            ; $50b9: $a1
	dec e                                            ; $50ba: $1d
	inc h                                            ; $50bb: $24
	ld a, [hl]                                       ; $50bc: $7e
	nop                                              ; $50bd: $00
	jr nz, jr_038_50cc                               ; $50be: $20 $0c

	jp $0c20                                         ; $50c0: $c3 $20 $0c


	nop                                              ; $50c3: $00
	inc b                                            ; $50c4: $04
	rst JumpTable                                          ; $50c5: $c7
	add hl, de                                       ; $50c6: $19
	inc bc                                           ; $50c7: $03
	jp nz, $0519                                     ; $50c8: $c2 $19 $05

	rst JumpTable                                          ; $50cb: $c7

jr_038_50cc:
	dec de                                           ; $50cc: $1b
	inc bc                                           ; $50cd: $03
	jp $151b                                         ; $50ce: $c3 $1b $15


	rst JumpTable                                          ; $50d1: $c7
	add hl, de                                       ; $50d2: $19
	inc bc                                           ; $50d3: $03
	jp $0d19                                         ; $50d4: $c3 $19 $0d


	or c                                             ; $50d7: $b1
	pop hl                                           ; $50d8: $e1
	ld [$2004], sp                                   ; $50d9: $08 $04 $20
	ld [$1022], sp                                   ; $50dc: $08 $22 $10
	jr nz, jr_038_50e9                               ; $50df: $20 $08

	sub [hl]                                         ; $50e1: $96
	jr @+$04                                         ; $50e2: $18 $02

	inc hl                                           ; $50e4: $23
	jr jr_038_5109                                   ; $50e5: $18 $22

	jr jr_038_507f                                   ; $50e7: $18 $96

jr_038_50e9:
	jr jr_038_50f1                                   ; $50e9: $18 $06

	jr nz, jr_038_5105                               ; $50eb: $20 $18

	ld [hl+], a                                      ; $50ed: $22
	db $10                                           ; $50ee: $10
	jr nz, @+$0a                                     ; $50ef: $20 $08

jr_038_50f1:
	nop                                              ; $50f1: $00
	db $10                                           ; $50f2: $10
	ld a, [hl]                                       ; $50f3: $7e
	inc bc                                           ; $50f4: $03
	nop                                              ; $50f5: $00
	and b                                            ; $50f6: $a0
	sub [hl]                                         ; $50f7: $96
	jr jr_038_50fd                                   ; $50f8: $18 $03

	daa                                              ; $50fa: $27
	jr jr_038_517b                                   ; $50fb: $18 $7e

jr_038_50fd:
	nop                                              ; $50fd: $00
	sub [hl]                                         ; $50fe: $96
	ld [$be05], sp                                   ; $50ff: $08 $05 $be
	ld [$272c], sp                                   ; $5102: $08 $2c $27

jr_038_5105:
	dec h                                            ; $5105: $25
	inc hl                                           ; $5106: $23
	cp [hl]                                          ; $5107: $be
	sub [hl]                                         ; $5108: $96

jr_038_5109:
	rla                                              ; $5109: $17
	ld b, $7e                                        ; $510a: $06 $7e
	ld bc, $a000                                     ; $510c: $01 $00 $a0
	jr nz, jr_038_5128                               ; $510f: $20 $17

	nop                                              ; $5111: $00
	ld bc, $ce93                                     ; $5112: $01 $93 $ce
	ld a, [hl]                                       ; $5115: $7e
	inc bc                                           ; $5116: $03
	ld a, [bc]                                       ; $5117: $0a
	and b                                            ; $5118: $a0

jr_038_5119:
	daa                                              ; $5119: $27
	jr jr_038_519a                                   ; $511a: $18 $7e

	nop                                              ; $511c: $00
	sub [hl]                                         ; $511d: $96
	ld [$2a02], sp                                   ; $511e: $08 $02 $2a
	ld [$0827], sp                                   ; $5121: $08 $27 $08
	inc l                                            ; $5124: $2c
	ld [$1096], sp                                   ; $5125: $08 $96 $10

jr_038_5128:
	inc b                                            ; $5128: $04
	daa                                              ; $5129: $27
	db $10                                           ; $512a: $10
	dec h                                            ; $512b: $25
	ld [$1027], sp                                   ; $512c: $08 $27 $10
	ld a, [hl]                                       ; $512f: $7e
	ld bc, $a010                                     ; $5130: $01 $10 $a0
	dec h                                            ; $5133: $25
	jr c, jr_038_50cc                                ; $5134: $38 $96

	db $10                                           ; $5136: $10
	rlca                                             ; $5137: $07
	inc hl                                           ; $5138: $23
	db $10                                           ; $5139: $10
	dec h                                            ; $513a: $25
	ld [$1020], sp                                   ; $513b: $08 $20 $10
	ld e, $08                                        ; $513e: $1e $08
	sub [hl]                                         ; $5140: $96
	db $10                                           ; $5141: $10
	inc bc                                           ; $5142: $03
	jr nz, jr_038_5155                               ; $5143: $20 $10

	or l                                             ; $5145: $b5
	ld [hl], c                                       ; $5146: $71
	nop                                              ; $5147: $00
	ld [$3802], sp                                   ; $5148: $08 $02 $38
	ld [$31b1], sp                                   ; $514b: $08 $b1 $31
	nop                                              ; $514e: $00
	nop                                              ; $514f: $00
	jr c, jr_038_515a                                ; $5150: $38 $08

	jp nz, $0838                                     ; $5152: $c2 $38 $08

jr_038_5155:
	or c                                             ; $5155: $b1
	ld h, c                                          ; $5156: $61
	ld [$3803], sp                                   ; $5157: $08 $03 $38

jr_038_515a:
	ld [$0819], sp                                   ; $515a: $08 $19 $08
	nop                                              ; $515d: $00
	ld [$38c5], sp                                   ; $515e: $08 $c5 $38
	ld [$0816], sp                                   ; $5161: $08 $16 $08
	nop                                              ; $5164: $00
	ld [$38c5], sp                                   ; $5165: $08 $c5 $38
	ld [$c1b1], sp                                   ; $5168: $08 $b1 $c1
	db $10                                           ; $516b: $10
	ld [bc], a                                       ; $516c: $02
	add hl, de                                       ; $516d: $19
	db $10                                           ; $516e: $10
	or c                                             ; $516f: $b1
	sub c                                            ; $5170: $91
	ld [$1602], sp                                   ; $5171: $08 $02 $16
	ld [$1017], sp                                   ; $5174: $08 $17 $10
	ld a, [hl]                                       ; $5177: $7e
	ld bc, $a000                                     ; $5178: $01 $00 $a0

jr_038_517b:
	add hl, de                                       ; $517b: $19
	inc l                                            ; $517c: $2c
	jp nz, $0c19                                     ; $517d: $c2 $19 $0c

	cp $ff                                           ; $5180: $fe $ff
	or h                                             ; $5182: $b4
	sbc d                                            ; $5183: $9a
	ld hl, $7e01                                     ; $5184: $21 $01 $7e
	ld [bc], a                                       ; $5187: $02
	nop                                              ; $5188: $00
	and c                                            ; $5189: $a1
	inc d                                            ; $518a: $14
	rlca                                             ; $518b: $07
	nop                                              ; $518c: $00
	ld bc, $0f15                                     ; $518d: $01 $15 $0f
	nop                                              ; $5190: $00
	ld bc, $027e                                     ; $5191: $01 $7e $02
	nop                                              ; $5194: $00
	and c                                            ; $5195: $a1
	ld d, $08                                        ; $5196: $16 $08
	ld d, $60                                        ; $5198: $16 $60

jr_038_519a:
	call nz, $3016                                   ; $519a: $c4 $16 $30
	add $16                                          ; $519d: $c6 $16
	inc b                                            ; $519f: $04
	nop                                              ; $51a0: $00
	inc c                                            ; $51a1: $0c
	jp nz, $0714                                     ; $51a2: $c2 $14 $07

	nop                                              ; $51a5: $00
	ld bc, $0f15                                     ; $51a6: $01 $15 $0f
	nop                                              ; $51a9: $00
	ld bc, $0816                                     ; $51aa: $01 $16 $08
	ld d, $60                                        ; $51ad: $16 $60
	ld a, [hl]                                       ; $51af: $7e
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00
	ld de, $c28c                                     ; $51b2: $11 $8c $c2
	pop de                                           ; $51b5: $d1
	ld de, $1203                                     ; $51b6: $11 $03 $12
	inc b                                            ; $51b9: $04
	inc d                                            ; $51ba: $14
	dec b                                            ; $51bb: $05
	jr jr_038_51c1                                   ; $51bc: $18 $03

	call nz, $053a                                   ; $51be: $c4 $3a $05

jr_038_51c1:
	jr c, jr_038_51c8                                ; $51c1: $38 $05

	ld [hl], $05                                     ; $51c3: $36 $05
	cp [hl]                                          ; $51c5: $be
	ld b, $35                                        ; $51c6: $06 $35

jr_038_51c8:
	inc sp                                           ; $51c8: $33
	ld sp, $2e30                                     ; $51c9: $31 $30 $2e
	cp [hl]                                          ; $51cc: $be
	inc l                                            ; $51cd: $2c
	dec b                                            ; $51ce: $05
	ld a, [hl+]                                      ; $51cf: $2a
	dec b                                            ; $51d0: $05
	add hl, hl                                       ; $51d1: $29
	inc b                                            ; $51d2: $04
	daa                                              ; $51d3: $27
	dec b                                            ; $51d4: $05
	cp $b4                                           ; $51d5: $fe $b4
	sbc e                                            ; $51d7: $9b
	ld hl, $7e0c                                     ; $51d8: $21 $0c $7e
	ld bc, $a100                                     ; $51db: $01 $00 $a1
	nop                                              ; $51de: $00
	db $10                                           ; $51df: $10
	ld a, [de]                                       ; $51e0: $1a
	inc bc                                           ; $51e1: $03
	dec de                                           ; $51e2: $1b
	ld [$1bc6], sp                                   ; $51e3: $08 $c6 $1b
	dec d                                            ; $51e6: $15
	jp nz, $101b                                     ; $51e7: $c2 $1b $10

	dec e                                            ; $51ea: $1d
	ld [$1dc6], sp                                   ; $51eb: $08 $c6 $1d
	db $10                                           ; $51ee: $10
	jp nz, $041d                                     ; $51ef: $c2 $1d $04

	ld e, $1c                                        ; $51f2: $1e $1c
	dec e                                            ; $51f4: $1d
	db $10                                           ; $51f5: $10
	add $1d                                          ; $51f6: $c6 $1d
	ld [$1bc2], sp                                   ; $51f8: $08 $c2 $1b
	db $10                                           ; $51fb: $10
	dec e                                            ; $51fc: $1d
	ld [$1dc6], sp                                   ; $51fd: $08 $c6 $1d
	db $10                                           ; $5200: $10
	jp nz, $0814                                     ; $5201: $c2 $14 $08

	add $14                                          ; $5204: $c6 $14
	db $10                                           ; $5206: $10
	jp nz, $021a                                     ; $5207: $c2 $1a $02

	dec de                                           ; $520a: $1b
	ld [$1bc6], sp                                   ; $520b: $08 $c6 $1b
	ld d, $c2                                        ; $520e: $16 $c2
	dec de                                           ; $5210: $1b
	db $10                                           ; $5211: $10
	dec e                                            ; $5212: $1d
	ld [$1dc6], sp                                   ; $5213: $08 $c6 $1d
	db $10                                           ; $5216: $10
	jp nz, $041a                                     ; $5217: $c2 $1a $04

jr_038_521a:
	dec de                                           ; $521a: $1b
	inc e                                            ; $521b: $1c
	dec e                                            ; $521c: $1d
	db $10                                           ; $521d: $10
	add $1d                                          ; $521e: $c6 $1d
	ld [$1bc2], sp                                   ; $5220: $08 $c2 $1b
	db $10                                           ; $5223: $10
	dec e                                            ; $5224: $1d
	ld [$1dc6], sp                                   ; $5225: $08 $c6 $1d
	db $10                                           ; $5228: $10
	jp nz, $0814                                     ; $5229: $c2 $14 $08

	add $14                                          ; $522c: $c6 $14
	db $10                                           ; $522e: $10
	jp nz, $021a                                     ; $522f: $c2 $1a $02

	dec de                                           ; $5232: $1b
	ld [$1bc6], sp                                   ; $5233: $08 $c6 $1b
	ld d, $c2                                        ; $5236: $16 $c2
	dec de                                           ; $5238: $1b
	db $10                                           ; $5239: $10
	dec e                                            ; $523a: $1d
	ld [$1dc6], sp                                   ; $523b: $08 $c6 $1d
	db $10                                           ; $523e: $10
	jp nz, $0422                                     ; $523f: $c2 $22 $04

	inc hl                                           ; $5242: $23
	inc e                                            ; $5243: $1c
	ld [hl+], a                                      ; $5244: $22
	db $10                                           ; $5245: $10
	add $22                                          ; $5246: $c6 $22
	ld [$1bc2], sp                                   ; $5248: $08 $c2 $1b
	db $10                                           ; $524b: $10
	dec e                                            ; $524c: $1d
	ld [$1dc6], sp                                   ; $524d: $08 $c6 $1d
	db $10                                           ; $5250: $10
	jp nz, $0814                                     ; $5251: $c2 $14 $08

	add $14                                          ; $5254: $c6 $14
	jr jr_038_521a                                   ; $5256: $18 $c2

	ld a, [de]                                       ; $5258: $1a
	ld [bc], a                                       ; $5259: $02
	dec de                                           ; $525a: $1b
	ld c, $c6                                        ; $525b: $0e $c6
	dec de                                           ; $525d: $1b
	ld [$1bc2], sp                                   ; $525e: $08 $c2 $1b
	db $10                                           ; $5261: $10
	dec e                                            ; $5262: $1d
	ld [$1dc6], sp                                   ; $5263: $08 $c6 $1d
	db $10                                           ; $5266: $10
	jp nz, $041d                                     ; $5267: $c2 $1d $04

	ld e, $1c                                        ; $526a: $1e $1c
	dec e                                            ; $526c: $1d
	db $10                                           ; $526d: $10
	add $1d                                          ; $526e: $c6 $1d
	ld [$1bc2], sp                                   ; $5270: $08 $c2 $1b
	db $10                                           ; $5273: $10
	dec e                                            ; $5274: $1d
	ld [$1dc6], sp                                   ; $5275: $08 $c6 $1d
	db $10                                           ; $5278: $10
	call nz, $0816                                   ; $5279: $c4 $16 $08
	add $d1                                          ; $527c: $c6 $d1
	adc h                                            ; $527e: $8c
	ld a, [hl]                                       ; $527f: $7e
	nop                                              ; $5280: $00
	ld d, $10                                        ; $5281: $16 $10
	jp nz, $0422                                     ; $5283: $c2 $22 $04

	add $22                                          ; $5286: $c6 $22
	inc b                                            ; $5288: $04
	jp nz, $08be                                     ; $5289: $c2 $be $08

	ld [hl+], a                                      ; $528c: $22
	dec h                                            ; $528d: $25
	ld h, $27                                        ; $528e: $26 $27
	cp [hl]                                          ; $5290: $be
	add $27                                          ; $5291: $c6 $27
	ld [$27c2], sp                                   ; $5293: $08 $c2 $27
	ld d, $c6                                        ; $5296: $16 $c6
	rrca                                             ; $5298: $0f
	ld [bc], a                                       ; $5299: $02
	jp nz, $0827                                     ; $529a: $c2 $27 $08

	add $27                                          ; $529d: $c6 $27
	db $10                                           ; $529f: $10
	jp nz, $08be                                     ; $52a0: $c2 $be $08

	dec h                                            ; $52a3: $25
	ld a, [hl+]                                      ; $52a4: $2a
	cpl                                              ; $52a5: $2f
	jr nc, @+$33                                     ; $52a6: $30 $31

	cp [hl]                                          ; $52a8: $be
	add $31                                          ; $52a9: $c6 $31
	ld [$31c2], sp                                   ; $52ab: $08 $c2 $31
	ld d, $c6                                        ; $52ae: $16 $c6
	ld sp, $c202                                     ; $52b0: $31 $02 $c2
	cpl                                              ; $52b3: $2f
	ld [$182c], sp                                   ; $52b4: $08 $2c $18
	pop de                                           ; $52b7: $d1
	add b                                            ; $52b8: $80
	dec hl                                           ; $52b9: $2b
	ld [bc], a                                       ; $52ba: $02
	inc l                                            ; $52bb: $2c
	ld b, $7e                                        ; $52bc: $06 $7e
	nop                                              ; $52be: $00
	cp [hl]                                          ; $52bf: $be
	ld [$272a], sp                                   ; $52c0: $08 $2a $27
	ld h, $25                                        ; $52c3: $26 $25
	inc hl                                           ; $52c5: $23
	ld e, $19                                        ; $52c6: $1e $19
	ld a, [de]                                       ; $52c8: $1a
	ld [hl+], a                                      ; $52c9: $22
	inc hl                                           ; $52ca: $23
	ld [hl+], a                                      ; $52cb: $22
	inc hl                                           ; $52cc: $23
	cp [hl]                                          ; $52cd: $be
	add $23                                          ; $52ce: $c6 $23
	ld [$7ec2], sp                                   ; $52d0: $08 $c2 $7e
	ld [bc], a                                       ; $52d3: $02
	nop                                              ; $52d4: $00
	and b                                            ; $52d5: $a0
	ld a, [hl+]                                      ; $52d6: $2a
	inc h                                            ; $52d7: $24
	call nz, $082a                                   ; $52d8: $c4 $2a $08
	add $2a                                          ; $52db: $c6 $2a
	inc c                                            ; $52dd: $0c
	jp nz, $fffe                                     ; $52de: $c2 $fe $ff

	ret nc                                           ; $52e1: $d0

	sbc d                                            ; $52e2: $9a
	inc c                                            ; $52e3: $0c
	ld [$100c], sp                                   ; $52e4: $08 $0c $10
	rrca                                             ; $52e7: $0f
	ld [$1800], sp                                   ; $52e8: $08 $00 $18
	dec c                                            ; $52eb: $0d
	ld [$2800], sp                                   ; $52ec: $08 $00 $28
	dec c                                            ; $52ef: $0d
	ld [$2800], sp                                   ; $52f0: $08 $00 $28
	dec c                                            ; $52f3: $0d
	ld [$2000], sp                                   ; $52f4: $08 $00 $20
	cp [hl]                                          ; $52f7: $be
	ld [$0c0c], sp                                   ; $52f8: $08 $0c $0c
	nop                                              ; $52fb: $00
	rrca                                             ; $52fc: $0f
	cp [hl]                                          ; $52fd: $be
	nop                                              ; $52fe: $00
	jr jr_038_530e                                   ; $52ff: $18 $0d

	ld [$2800], sp                                   ; $5301: $08 $00 $28
	dec c                                            ; $5304: $0d
	ld [$1000], sp                                   ; $5305: $08 $00 $10
	add hl, bc                                       ; $5308: $09
	db $10                                           ; $5309: $10
	add hl, bc                                       ; $530a: $09
	ld [$180a], sp                                   ; $530b: $08 $0a $18

jr_038_530e:
	cp [hl]                                          ; $530e: $be
	ld [$000b], sp                                   ; $530f: $08 $0b $00
	dec c                                            ; $5312: $0d
	dec c                                            ; $5313: $0d
	inc c                                            ; $5314: $0c
	inc c                                            ; $5315: $0c
	cp [hl]                                          ; $5316: $be
	cp $d0                                           ; $5317: $fe $d0
	sbc e                                            ; $5319: $9b
	ld a, [bc]                                       ; $531a: $0a
	ld [$100a], sp                                   ; $531b: $08 $0a $10
	cp [hl]                                          ; $531e: $be
	ld [$000c], sp                                   ; $531f: $08 $0c $00
	nop                                              ; $5322: $00
	add hl, bc                                       ; $5323: $09
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	inc c                                            ; $5326: $0c
	nop                                              ; $5327: $00
	add hl, bc                                       ; $5328: $09
	add hl, bc                                       ; $5329: $09
	nop                                              ; $532a: $00
	ld [de], a                                       ; $532b: $12
	inc c                                            ; $532c: $0c
	nop                                              ; $532d: $00
	ld [de], a                                       ; $532e: $12
	add hl, bc                                       ; $532f: $09
	nop                                              ; $5330: $00
	ld [de], a                                       ; $5331: $12
	inc c                                            ; $5332: $0c
	ld [de], a                                       ; $5333: $12
	dec c                                            ; $5334: $0d
	cp [hl]                                          ; $5335: $be
	cp [hl]                                          ; $5336: $be
	ld [$0012], sp                                   ; $5337: $08 $12 $00
	add hl, bc                                       ; $533a: $09
	inc c                                            ; $533b: $0c
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	add hl, bc                                       ; $533e: $09
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	inc c                                            ; $5341: $0c
	nop                                              ; $5342: $00
	dec c                                            ; $5343: $0d
	add hl, bc                                       ; $5344: $09
	nop                                              ; $5345: $00
	ld [de], a                                       ; $5346: $12
	inc c                                            ; $5347: $0c
	nop                                              ; $5348: $00
	ld [de], a                                       ; $5349: $12
	add hl, bc                                       ; $534a: $09
	nop                                              ; $534b: $00
	ld [de], a                                       ; $534c: $12
	inc c                                            ; $534d: $0c
	ld [de], a                                       ; $534e: $12
	add hl, bc                                       ; $534f: $09
	cp [hl]                                          ; $5350: $be
	cp [hl]                                          ; $5351: $be
	ld [rRAMG], sp                                   ; $5352: $08 $00 $00
	ld [de], a                                       ; $5355: $12
	inc c                                            ; $5356: $0c
	nop                                              ; $5357: $00
	nop                                              ; $5358: $00
	add hl, bc                                       ; $5359: $09
	nop                                              ; $535a: $00
	nop                                              ; $535b: $00
	inc c                                            ; $535c: $0c
	nop                                              ; $535d: $00
	add hl, bc                                       ; $535e: $09
	add hl, bc                                       ; $535f: $09
	nop                                              ; $5360: $00
	ld [de], a                                       ; $5361: $12
	inc c                                            ; $5362: $0c
	nop                                              ; $5363: $00
	ld [de], a                                       ; $5364: $12
	add hl, bc                                       ; $5365: $09
	nop                                              ; $5366: $00
	ld [de], a                                       ; $5367: $12
	add hl, bc                                       ; $5368: $09
	ld [de], a                                       ; $5369: $12
	add hl, bc                                       ; $536a: $09
	cp [hl]                                          ; $536b: $be
	cp [hl]                                          ; $536c: $be
	ld [$0d12], sp                                   ; $536d: $08 $12 $0d
	ld [de], a                                       ; $5370: $12
	inc c                                            ; $5371: $0c
	nop                                              ; $5372: $00
	ld [de], a                                       ; $5373: $12
	add hl, bc                                       ; $5374: $09
	nop                                              ; $5375: $00
	ld [de], a                                       ; $5376: $12
	inc c                                            ; $5377: $0c
	nop                                              ; $5378: $00
	ld [de], a                                       ; $5379: $12
	add hl, bc                                       ; $537a: $09
	nop                                              ; $537b: $00
	ld [de], a                                       ; $537c: $12
	inc c                                            ; $537d: $0c
	nop                                              ; $537e: $00
	ld [de], a                                       ; $537f: $12
	add hl, bc                                       ; $5380: $09
	nop                                              ; $5381: $00
	ld [de], a                                       ; $5382: $12
	ld a, [bc]                                       ; $5383: $0a
	ld a, [bc]                                       ; $5384: $0a
	ld [de], a                                       ; $5385: $12
	cp [hl]                                          ; $5386: $be
	cp [hl]                                          ; $5387: $be
	ld [$000b], sp                                   ; $5388: $08 $0b $00
	nop                                              ; $538b: $00
	inc c                                            ; $538c: $0c
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	inc c                                            ; $538f: $0c
	nop                                              ; $5390: $00
	nop                                              ; $5391: $00
	dec bc                                           ; $5392: $0b
	nop                                              ; $5393: $00
	ld [de], a                                       ; $5394: $12
	inc c                                            ; $5395: $0c
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	inc c                                            ; $5398: $0c
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	ld a, [bc]                                       ; $539b: $0a
	nop                                              ; $539c: $00
	inc c                                            ; $539d: $0c
	inc c                                            ; $539e: $0c
	nop                                              ; $539f: $00
	add hl, bc                                       ; $53a0: $09
	cp [hl]                                          ; $53a1: $be
	cp [hl]                                          ; $53a2: $be
	ld [$000a], sp                                   ; $53a3: $08 $0a $00
	add hl, bc                                       ; $53a6: $09
	inc c                                            ; $53a7: $0c
	nop                                              ; $53a8: $00
	ld [de], a                                       ; $53a9: $12
	ld a, [bc]                                       ; $53aa: $0a

jr_038_53ab:
	nop                                              ; $53ab: $00
	ld [de], a                                       ; $53ac: $12
	inc c                                            ; $53ad: $0c
	nop                                              ; $53ae: $00
	add hl, bc                                       ; $53af: $09
	add hl, bc                                       ; $53b0: $09
	nop                                              ; $53b1: $00

jr_038_53b2:
	dec c                                            ; $53b2: $0d
	inc c                                            ; $53b3: $0c
	nop                                              ; $53b4: $00
	rrca                                             ; $53b5: $0f
	nop                                              ; $53b6: $00
	nop                                              ; $53b7: $00
	inc c                                            ; $53b8: $0c
	inc c                                            ; $53b9: $0c

jr_038_53ba:
	nop                                              ; $53ba: $00
	ld [de], a                                       ; $53bb: $12
	cp [hl]                                          ; $53bc: $be
	cp $ff                                           ; $53bd: $fe $ff
	or h                                             ; $53bf: $b4
	ld h, c                                          ; $53c0: $61
	ld d, c                                          ; $53c1: $51
	nop                                              ; $53c2: $00
	ld a, [hl]                                       ; $53c3: $7e
	nop                                              ; $53c4: $00
	nop                                              ; $53c5: $00
	ld b, $96                                        ; $53c6: $06 $96
	inc c                                            ; $53c8: $0c
	rlca                                             ; $53c9: $07
	ld a, [hl]                                       ; $53ca: $7e
	ld bc, $a100                                     ; $53cb: $01 $00 $a1
	dec e                                            ; $53ce: $1d
	inc c                                            ; $53cf: $0c
	jr nz, jr_038_53de                               ; $53d0: $20 $0c

	ld h, $06                                        ; $53d2: $26 $06
	cp $d1                                           ; $53d4: $fe $d1
	push bc                                          ; $53d6: $c5
	sub d                                            ; $53d7: $92
	ld a, [hl]                                       ; $53d8: $7e
	ld bc, $a100                                     ; $53d9: $01 $00 $a1
	dec h                                            ; $53dc: $25
	inc c                                            ; $53dd: $0c

jr_038_53de:
	or c                                             ; $53de: $b1
	and c                                            ; $53df: $a1
	inc c                                            ; $53e0: $0c
	ld b, $7e                                        ; $53e1: $06 $7e
	inc bc                                           ; $53e3: $03

jr_038_53e4:
	nop                                              ; $53e4: $00
	and b                                            ; $53e5: $a0
	dec e                                            ; $53e6: $1d
	inc c                                            ; $53e7: $0c
	ld a, [hl]                                       ; $53e8: $7e
	nop                                              ; $53e9: $00
	jr nz, jr_038_53f8                               ; $53ea: $20 $0c

	ld h, $0c                                        ; $53ec: $26 $0c
	dec h                                            ; $53ee: $25
	ld d, h                                          ; $53ef: $54
	ld a, [hl]                                       ; $53f0: $7e
	db $10                                           ; $53f1: $10
	db $10                                           ; $53f2: $10
	and d                                            ; $53f3: $a2
	inc h                                            ; $53f4: $24
	jr jr_038_53ba                                   ; $53f5: $18 $c3

	inc h                                            ; $53f7: $24

jr_038_53f8:
	jr jr_038_53ab                                   ; $53f8: $18 $b1

	pop bc                                           ; $53fa: $c1
	inc c                                            ; $53fb: $0c
	dec b                                            ; $53fc: $05
	ld a, [hl]                                       ; $53fd: $7e
	nop                                              ; $53fe: $00
	dec e                                            ; $53ff: $1d
	inc c                                            ; $5400: $0c
	sub [hl]                                         ; $5401: $96
	inc c                                            ; $5402: $0c
	inc bc                                           ; $5403: $03
	call z, $0c20                                    ; $5404: $cc $20 $0c
	dec e                                            ; $5407: $1d
	inc c                                            ; $5408: $0c
	dec e                                            ; $5409: $1d
	inc c                                            ; $540a: $0c
	dec de                                           ; $540b: $1b
	ld b, $cb                                        ; $540c: $06 $cb
	ld a, [hl]                                       ; $540e: $7e
	db $10                                           ; $540f: $10
	jr jr_038_53b2                                   ; $5410: $18 $a0

	dec e                                            ; $5412: $1d
	inc h                                            ; $5413: $24
	jp $107e                                         ; $5414: $c3 $7e $10


	nop                                              ; $5417: $00
	and b                                            ; $5418: $a0
	inc e                                            ; $5419: $1c
	jr jr_038_53e4                                   ; $541a: $18 $c8

jr_038_541c:
	ld a, [hl]                                       ; $541c: $7e
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	ld [hl], $ce                                     ; $541f: $36 $ce
	pop de                                           ; $5421: $d1

jr_038_5422:
	sub b                                            ; $5422: $90
	ld a, [hl]                                       ; $5423: $7e
	inc bc                                           ; $5424: $03
	nop                                              ; $5425: $00
	and b                                            ; $5426: $a0
	sub [hl]                                         ; $5427: $96
	rst $38                                          ; $5428: $ff
	rlca                                             ; $5429: $07
	inc hl                                           ; $542a: $23
	jr jr_038_54ab                                   ; $542b: $18 $7e

	nop                                              ; $542d: $00
	ld [hl+], a                                      ; $542e: $22
	ld b, $20                                        ; $542f: $06 $20
	ld b, $b5                                        ; $5431: $06 $b5
	ld sp, $0602                                     ; $5433: $31 $02 $06
	ld [bc], a                                       ; $5436: $02
	ld a, [hl]                                       ; $5437: $7e
	nop                                              ; $5438: $00
	jr nc, jr_038_5441                               ; $5439: $30 $06

	jr nc, jr_038_5443                               ; $543b: $30 $06

	or c                                             ; $543d: $b1
	sub c                                            ; $543e: $91
	jr jr_038_5448                                   ; $543f: $18 $07

jr_038_5441:
	ld a, [hl]                                       ; $5441: $7e
	inc bc                                           ; $5442: $03

jr_038_5443:
	nop                                              ; $5443: $00
	and b                                            ; $5444: $a0
	inc hl                                           ; $5445: $23
	jr jr_038_54c6                                   ; $5446: $18 $7e

jr_038_5448:
	nop                                              ; $5448: $00
	ld [hl+], a                                      ; $5449: $22
	ld b, $20                                        ; $544a: $06 $20
	ld b, $7d                                        ; $544c: $06 $7d
	ld bc, $1296                                     ; $544e: $01 $96 $12
	rlca                                             ; $5451: $07
	inc h                                            ; $5452: $24
	ld [de], a                                       ; $5453: $12
	ld a, l                                          ; $5454: $7d
	nop                                              ; $5455: $00
	ld a, [hl]                                       ; $5456: $7e
	nop                                              ; $5457: $00
	daa                                              ; $5458: $27
	ld [de], a                                       ; $5459: $12
	ld [hl+], a                                      ; $545a: $22
	ld [de], a                                       ; $545b: $12
	sub [hl]                                         ; $545c: $96
	nop                                              ; $545d: $00
	nop                                              ; $545e: $00
	ld a, [hl]                                       ; $545f: $7e
	ld bc, $a029                                     ; $5460: $01 $29 $a0
	inc h                                            ; $5463: $24
	ld a, [hl+]                                      ; $5464: $2a
	sub [hl]                                         ; $5465: $96
	inc a                                            ; $5466: $3c
	rlca                                             ; $5467: $07
	inc h                                            ; $5468: $24
	jr nc, jr_038_541c                               ; $5469: $30 $b1

	ld hl, $070c                                     ; $546b: $21 $0c $07
	inc h                                            ; $546e: $24
	jr jr_038_5422                                   ; $546f: $18 $b1

	pop bc                                           ; $5471: $c1
	ld [$7e07], sp                                   ; $5472: $08 $07 $7e
	inc bc                                           ; $5475: $03
	nop                                              ; $5476: $00
	xor c                                            ; $5477: $a9
	dec e                                            ; $5478: $1d
	ld [$0820], sp                                   ; $5479: $08 $20 $08
	ld h, $08                                        ; $547c: $26 $08
	push bc                                          ; $547e: $c5
	ld h, $0c                                        ; $547f: $26 $0c
	nop                                              ; $5481: $00
	ld d, h                                          ; $5482: $54
	or l                                             ; $5483: $b5
	pop de                                           ; $5484: $d1
	nop                                              ; $5485: $00

jr_038_5486:
	rst $38                                          ; $5486: $ff
	rlca                                             ; $5487: $07
	ld a, [hl]                                       ; $5488: $7e
	inc bc                                           ; $5489: $03
	nop                                              ; $548a: $00
	and b                                            ; $548b: $a0
	nop                                              ; $548c: $00
	jr @+$1f                                         ; $548d: $18 $1d

	ld [$007e], sp                                   ; $548f: $08 $7e $00
	jr nz, jr_038_549c                               ; $5492: $20 $08

	ld h, $08                                        ; $5494: $26 $08
	sub [hl]                                         ; $5496: $96
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	cp $ff                                           ; $5499: $fe $ff
	or [hl]                                          ; $549b: $b6

jr_038_549c:
	ld h, c                                          ; $549c: $61
	pop de                                           ; $549d: $d1
	nop                                              ; $549e: $00
	rst $38                                          ; $549f: $ff
	rlca                                             ; $54a0: $07
	ld a, [hl]                                       ; $54a1: $7e
	inc bc                                           ; $54a2: $03
	nop                                              ; $54a3: $00
	and b                                            ; $54a4: $a0
	dec e                                            ; $54a5: $1d
	inc c                                            ; $54a6: $0c
	ld a, [hl]                                       ; $54a7: $7e
	nop                                              ; $54a8: $00
	jr nz, jr_038_54b7                               ; $54a9: $20 $0c

jr_038_54ab:
	ld h, $0c                                        ; $54ab: $26 $0c
	cp $b5                                           ; $54ad: $fe $b5
	pop de                                           ; $54af: $d1
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	ld a, [hl]                                       ; $54b3: $7e
	ld bc, $a030                                     ; $54b4: $01 $30 $a0

jr_038_54b7:
	dec h                                            ; $54b7: $25
	ld d, h                                          ; $54b8: $54
	ld a, [hl]                                       ; $54b9: $7e
	db $10                                           ; $54ba: $10
	db $10                                           ; $54bb: $10
	and d                                            ; $54bc: $a2
	inc h                                            ; $54bd: $24
	jr jr_038_5486                                   ; $54be: $18 $c6

	inc h                                            ; $54c0: $24
	jr @-$4d                                         ; $54c1: $18 $b1

	pop af                                           ; $54c3: $f1
	inc c                                            ; $54c4: $0c
	dec b                                            ; $54c5: $05

jr_038_54c6:
	ld a, [hl]                                       ; $54c6: $7e
	nop                                              ; $54c7: $00
	dec e                                            ; $54c8: $1d
	inc c                                            ; $54c9: $0c
	sub [hl]                                         ; $54ca: $96
	inc c                                            ; $54cb: $0c
	inc bc                                           ; $54cc: $03
	jr nz, jr_038_54db                               ; $54cd: $20 $0c

	dec e                                            ; $54cf: $1d
	inc c                                            ; $54d0: $0c
	dec e                                            ; $54d1: $1d
	inc c                                            ; $54d2: $0c
	dec de                                           ; $54d3: $1b
	ld b, $cd                                        ; $54d4: $06 $cd
	ld a, [hl]                                       ; $54d6: $7e
	db $10                                           ; $54d7: $10
	dec bc                                           ; $54d8: $0b
	and b                                            ; $54d9: $a0
	cp l                                             ; $54da: $bd

jr_038_54db:
	ld [bc], a                                       ; $54db: $02
	dec e                                            ; $54dc: $1d
	ld b, $0c                                        ; $54dd: $06 $0c
	or l                                             ; $54df: $b5
	ld [hl-], a                                      ; $54e0: $32
	ld [bc], a                                       ; $54e1: $02
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	ld a, [hl]                                       ; $54e4: $7e
	nop                                              ; $54e5: $00
	db $fd                                           ; $54e6: $fd
	db $10                                           ; $54e7: $10
	ld d, [hl]                                       ; $54e8: $56
	jp $10fd                                         ; $54e9: $c3 $fd $10


	ld d, [hl]                                       ; $54ec: $56
	call nz, $10fd                                   ; $54ed: $c4 $fd $10
	ld d, [hl]                                       ; $54f0: $56
	call nz, $10fd                                   ; $54f1: $c4 $fd $10
	ld d, [hl]                                       ; $54f4: $56
	push bc                                          ; $54f5: $c5
	db $fd                                           ; $54f6: $fd
	db $10                                           ; $54f7: $10
	ld d, [hl]                                       ; $54f8: $56
	push bc                                          ; $54f9: $c5
	db $fd                                           ; $54fa: $fd
	db $10                                           ; $54fb: $10
	ld d, [hl]                                       ; $54fc: $56
	add $fd                                          ; $54fd: $c6 $fd
	db $10                                           ; $54ff: $10
	ld d, [hl]                                       ; $5500: $56
	add $fd                                          ; $5501: $c6 $fd
	db $10                                           ; $5503: $10
	ld d, [hl]                                       ; $5504: $56
	rst JumpTable                                          ; $5505: $c7
	db $fd                                           ; $5506: $fd
	db $10                                           ; $5507: $10
	ld d, [hl]                                       ; $5508: $56
	rst JumpTable                                          ; $5509: $c7
	db $fd                                           ; $550a: $fd
	db $10                                           ; $550b: $10
	ld d, [hl]                                       ; $550c: $56
	add $fd                                          ; $550d: $c6 $fd
	db $10                                           ; $550f: $10
	ld d, [hl]                                       ; $5510: $56
	add $fd                                          ; $5511: $c6 $fd
	db $10                                           ; $5513: $10
	ld d, [hl]                                       ; $5514: $56
	push bc                                          ; $5515: $c5
	db $fd                                           ; $5516: $fd
	db $10                                           ; $5517: $10
	ld d, [hl]                                       ; $5518: $56
	push bc                                          ; $5519: $c5
	db $fd                                           ; $551a: $fd
	db $10                                           ; $551b: $10
	ld d, [hl]                                       ; $551c: $56
	call nz, $10fd                                   ; $551d: $c4 $fd $10
	ld d, [hl]                                       ; $5520: $56
	push bc                                          ; $5521: $c5
	db $fd                                           ; $5522: $fd
	db $10                                           ; $5523: $10
	ld d, [hl]                                       ; $5524: $56
	db $d3                                           ; $5525: $d3
	ld h, a                                          ; $5526: $67
	db $fd                                           ; $5527: $fd
	db $10                                           ; $5528: $10
	ld d, [hl]                                       ; $5529: $56
	add $fd                                          ; $552a: $c6 $fd
	db $10                                           ; $552c: $10
	ld d, [hl]                                       ; $552d: $56
	call nz, $10fd                                   ; $552e: $c4 $fd $10
	ld d, [hl]                                       ; $5531: $56
	call nz, $10fd                                   ; $5532: $c4 $fd $10
	ld d, [hl]                                       ; $5535: $56
	push bc                                          ; $5536: $c5
	db $fd                                           ; $5537: $fd
	db $10                                           ; $5538: $10
	ld d, [hl]                                       ; $5539: $56
	push bc                                          ; $553a: $c5
	db $fd                                           ; $553b: $fd
	db $10                                           ; $553c: $10
	ld d, [hl]                                       ; $553d: $56
	add $fd                                          ; $553e: $c6 $fd
	db $10                                           ; $5540: $10
	ld d, [hl]                                       ; $5541: $56
	add $fd                                          ; $5542: $c6 $fd
	db $10                                           ; $5544: $10
	ld d, [hl]                                       ; $5545: $56
	rst JumpTable                                          ; $5546: $c7
	db $fd                                           ; $5547: $fd
	db $10                                           ; $5548: $10
	ld d, [hl]                                       ; $5549: $56
	rst JumpTable                                          ; $554a: $c7
	db $fd                                           ; $554b: $fd
	db $10                                           ; $554c: $10
	ld d, [hl]                                       ; $554d: $56
	add $fd                                          ; $554e: $c6 $fd
	db $10                                           ; $5550: $10
	ld d, [hl]                                       ; $5551: $56
	add $fd                                          ; $5552: $c6 $fd
	db $10                                           ; $5554: $10
	ld d, [hl]                                       ; $5555: $56
	push bc                                          ; $5556: $c5
	db $fd                                           ; $5557: $fd
	db $10                                           ; $5558: $10
	ld d, [hl]                                       ; $5559: $56
	push bc                                          ; $555a: $c5
	db $fd                                           ; $555b: $fd
	db $10                                           ; $555c: $10
	ld d, [hl]                                       ; $555d: $56
	pop de                                           ; $555e: $d1
	ld [hl], b                                       ; $555f: $70
	or l                                             ; $5560: $b5
	pop hl                                           ; $5561: $e1
	nop                                              ; $5562: $00
	ld [de], a                                       ; $5563: $12
	rlca                                             ; $5564: $07
	ld a, [hl]                                       ; $5565: $7e
	inc bc                                           ; $5566: $03
	nop                                              ; $5567: $00
	and b                                            ; $5568: $a0
	inc h                                            ; $5569: $24
	ld [de], a                                       ; $556a: $12
	ld a, [hl]                                       ; $556b: $7e
	nop                                              ; $556c: $00
	daa                                              ; $556d: $27
	ld [de], a                                       ; $556e: $12
	ld [hl+], a                                      ; $556f: $22
	ld [de], a                                       ; $5570: $12
	or c                                             ; $5571: $b1
	pop de                                           ; $5572: $d1
	nop                                              ; $5573: $00
	nop                                              ; $5574: $00
	inc h                                            ; $5575: $24
	ld a, [hl+]                                      ; $5576: $2a
	sub [hl]                                         ; $5577: $96
	inc a                                            ; $5578: $3c
	rlca                                             ; $5579: $07
	inc h                                            ; $557a: $24
	inc a                                            ; $557b: $3c
	jp nz, $0c24                                     ; $557c: $c2 $24 $0c

	call $037e                                       ; $557f: $cd $7e $03
	nop                                              ; $5582: $00
	xor c                                            ; $5583: $a9
	dec e                                            ; $5584: $1d
	ld [$0820], sp                                   ; $5585: $08 $20 $08
	ld h, $08                                        ; $5588: $26 $08
	push bc                                          ; $558a: $c5
	ld h, $0c                                        ; $558b: $26 $0c
	jp $92d2                                         ; $558d: $c3 $d2 $92


	ld a, [hl]                                       ; $5590: $7e
	nop                                              ; $5591: $00
	db $fd                                           ; $5592: $fd
	db $10                                           ; $5593: $10
	ld d, [hl]                                       ; $5594: $56
	jp $10fd                                         ; $5595: $c3 $fd $10


	ld d, [hl]                                       ; $5598: $56
	call nz, $10fd                                   ; $5599: $c4 $fd $10
	ld d, [hl]                                       ; $559c: $56
	call nz, $10fd                                   ; $559d: $c4 $fd $10
	ld d, [hl]                                       ; $55a0: $56
	push bc                                          ; $55a1: $c5
	db $fd                                           ; $55a2: $fd
	db $10                                           ; $55a3: $10
	ld d, [hl]                                       ; $55a4: $56
	push bc                                          ; $55a5: $c5
	db $fd                                           ; $55a6: $fd
	db $10                                           ; $55a7: $10
	ld d, [hl]                                       ; $55a8: $56
	add $fd                                          ; $55a9: $c6 $fd
	db $10                                           ; $55ab: $10
	ld d, [hl]                                       ; $55ac: $56
	add $fd                                          ; $55ad: $c6 $fd
	db $10                                           ; $55af: $10
	ld d, [hl]                                       ; $55b0: $56
	rst JumpTable                                          ; $55b1: $c7
	db $fd                                           ; $55b2: $fd
	db $10                                           ; $55b3: $10
	ld d, [hl]                                       ; $55b4: $56
	rst JumpTable                                          ; $55b5: $c7
	db $fd                                           ; $55b6: $fd
	db $10                                           ; $55b7: $10
	ld d, [hl]                                       ; $55b8: $56
	add $fd                                          ; $55b9: $c6 $fd
	db $10                                           ; $55bb: $10
	ld d, [hl]                                       ; $55bc: $56
	add $fd                                          ; $55bd: $c6 $fd
	db $10                                           ; $55bf: $10
	ld d, [hl]                                       ; $55c0: $56
	push bc                                          ; $55c1: $c5
	db $fd                                           ; $55c2: $fd
	db $10                                           ; $55c3: $10
	ld d, [hl]                                       ; $55c4: $56
	push bc                                          ; $55c5: $c5
	db $fd                                           ; $55c6: $fd
	db $10                                           ; $55c7: $10
	ld d, [hl]                                       ; $55c8: $56
	call nz, $10fd                                   ; $55c9: $c4 $fd $10
	ld d, [hl]                                       ; $55cc: $56
	push bc                                          ; $55cd: $c5
	db $fd                                           ; $55ce: $fd
	db $10                                           ; $55cf: $10
	ld d, [hl]                                       ; $55d0: $56
	ld h, a                                          ; $55d1: $67
	db $d3                                           ; $55d2: $d3
	db $fd                                           ; $55d3: $fd
	db $10                                           ; $55d4: $10
	ld d, [hl]                                       ; $55d5: $56
	add $fd                                          ; $55d6: $c6 $fd
	db $10                                           ; $55d8: $10
	ld d, [hl]                                       ; $55d9: $56
	push bc                                          ; $55da: $c5
	db $fd                                           ; $55db: $fd
	db $10                                           ; $55dc: $10
	ld d, [hl]                                       ; $55dd: $56
	push bc                                          ; $55de: $c5
	db $fd                                           ; $55df: $fd
	db $10                                           ; $55e0: $10
	ld d, [hl]                                       ; $55e1: $56
	add $fd                                          ; $55e2: $c6 $fd
	db $10                                           ; $55e4: $10
	ld d, [hl]                                       ; $55e5: $56
	add $fd                                          ; $55e6: $c6 $fd
	db $10                                           ; $55e8: $10
	ld d, [hl]                                       ; $55e9: $56
	rst JumpTable                                          ; $55ea: $c7
	db $fd                                           ; $55eb: $fd
	db $10                                           ; $55ec: $10
	ld d, [hl]                                       ; $55ed: $56
	rst JumpTable                                          ; $55ee: $c7
	db $fd                                           ; $55ef: $fd
	db $10                                           ; $55f0: $10
	ld d, [hl]                                       ; $55f1: $56
	add $fd                                          ; $55f2: $c6 $fd
	db $10                                           ; $55f4: $10
	ld d, [hl]                                       ; $55f5: $56
	add $fd                                          ; $55f6: $c6 $fd
	db $10                                           ; $55f8: $10
	ld d, [hl]                                       ; $55f9: $56
	push bc                                          ; $55fa: $c5
	db $fd                                           ; $55fb: $fd
	db $10                                           ; $55fc: $10
	ld d, [hl]                                       ; $55fd: $56

jr_038_55fe:
	push bc                                          ; $55fe: $c5
	db $fd                                           ; $55ff: $fd
	db $10                                           ; $5600: $10
	ld d, [hl]                                       ; $5601: $56
	call nz, $10fd                                   ; $5602: $c4 $fd $10
	ld d, [hl]                                       ; $5605: $56
	call nz, $10fd                                   ; $5606: $c4 $fd $10
	ld d, [hl]                                       ; $5609: $56
	ld [hl], b                                       ; $560a: $70
	sub [hl]                                         ; $560b: $96
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	cp $ff                                           ; $560e: $fe $ff
	add hl, hl                                       ; $5610: $29
	ld [bc], a                                       ; $5611: $02
	jp nz, $29d1                                     ; $5612: $c2 $d1 $29

	inc b                                            ; $5615: $04
	db $fd                                           ; $5616: $fd
	or h                                             ; $5617: $b4
	ld h, c                                          ; $5618: $61
	ld hl, $7e03                                     ; $5619: $21 $03 $7e
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	inc h                                            ; $561e: $24
	cp $83                                           ; $561f: $fe $83
	ld a, [hl]                                       ; $5621: $7e
	nop                                              ; $5622: $00
	ei                                               ; $5623: $fb
	jp nz, $061d                                     ; $5624: $c2 $1d $06

	add $1d                                          ; $5627: $c6 $1d
	ld b, $c2                                        ; $5629: $06 $c2
	dec e                                            ; $562b: $1d
	ld b, $c6                                        ; $562c: $06 $c6
	dec e                                            ; $562e: $1d
	ld [$0a00], sp                                   ; $562f: $08 $00 $0a
	jp nz, $0b11                                     ; $5632: $c2 $11 $0b

	nop                                              ; $5635: $00
	ld bc, $03fb                                     ; $5636: $01 $fb $03
	cp [hl]                                          ; $5639: $be
	inc c                                            ; $563a: $0c
	ld de, $221d                                     ; $563b: $11 $1d $22
	jr nz, jr_038_55fe                               ; $563e: $20 $be

	cp $ff                                           ; $5640: $fe $ff
	ret nc                                           ; $5642: $d0

	ld h, c                                          ; $5643: $61
	nop                                              ; $5644: $00
	inc h                                            ; $5645: $24
	cp $be                                           ; $5646: $fe $be
	inc c                                            ; $5648: $0c
	ld a, [bc]                                       ; $5649: $0a
	dec c                                            ; $564a: $0d
	add hl, bc                                       ; $564b: $09
	dec a                                            ; $564c: $3d
	dec c                                            ; $564d: $0d
	add hl, bc                                       ; $564e: $09
	add hl, bc                                       ; $564f: $09
	dec a                                            ; $5650: $3d
	add hl, bc                                       ; $5651: $09
	inc c                                            ; $5652: $0c
	inc c                                            ; $5653: $0c
	add hl, bc                                       ; $5654: $09
	dec c                                            ; $5655: $0d
	add hl, bc                                       ; $5656: $09
	add hl, bc                                       ; $5657: $09
	cp [hl]                                          ; $5658: $be
	dec a                                            ; $5659: $3d
	ld b, $0a                                        ; $565a: $06 $0a
	ld b, $09                                        ; $565c: $06 $09
	ld b, $0d                                        ; $565e: $06 $0d
	ld b, $be                                        ; $5660: $06 $be
	inc c                                            ; $5662: $0c
	add hl, bc                                       ; $5663: $09
	dec a                                            ; $5664: $3d
	add hl, bc                                       ; $5665: $09
	dec c                                            ; $5666: $0d
	add hl, bc                                       ; $5667: $09
	dec a                                            ; $5668: $3d
	cp [hl]                                          ; $5669: $be
	add hl, bc                                       ; $566a: $09
	ld b, $0a                                        ; $566b: $06 $0a
	ld b, $0d                                        ; $566d: $06 $0d
	inc c                                            ; $566f: $0c
	add hl, bc                                       ; $5670: $09
	inc c                                            ; $5671: $0c
	dec a                                            ; $5672: $3d
	inc c                                            ; $5673: $0c
	cp [hl]                                          ; $5674: $be
	ld b, $09                                        ; $5675: $06 $09
	ld a, [bc]                                       ; $5677: $0a
	add hl, bc                                       ; $5678: $09
	inc c                                            ; $5679: $0c
	cp [hl]                                          ; $567a: $be
	add hl, bc                                       ; $567b: $09
	inc c                                            ; $567c: $0c
	dec a                                            ; $567d: $3d
	inc c                                            ; $567e: $0c
	add hl, bc                                       ; $567f: $09
	ld b, $0a                                        ; $5680: $06 $0a
	ld b, $be                                        ; $5682: $06 $be
	inc c                                            ; $5684: $0c
	dec c                                            ; $5685: $0d
	add hl, bc                                       ; $5686: $09
	dec a                                            ; $5687: $3d
	add hl, bc                                       ; $5688: $09
	dec c                                            ; $5689: $0d
	add hl, bc                                       ; $568a: $09
	dec a                                            ; $568b: $3d
	add hl, bc                                       ; $568c: $09
	cp [hl]                                          ; $568d: $be
	dec c                                            ; $568e: $0d
	ld b, $12                                        ; $568f: $06 $12
	ld b, $be                                        ; $5691: $06 $be
	inc c                                            ; $5693: $0c
	inc c                                            ; $5694: $0c
	inc c                                            ; $5695: $0c
	add hl, bc                                       ; $5696: $09
	dec c                                            ; $5697: $0d
	ld [de], a                                       ; $5698: $12
	dec a                                            ; $5699: $3d
	dec a                                            ; $569a: $3d
	cp [hl]                                          ; $569b: $be
	cp [hl]                                          ; $569c: $be
	ld b, $0d                                        ; $569d: $06 $0d
	ld a, [bc]                                       ; $569f: $0a
	add hl, bc                                       ; $56a0: $09
	ld [de], a                                       ; $56a1: $12
	cp [hl]                                          ; $56a2: $be
	cp [hl]                                          ; $56a3: $be
	inc c                                            ; $56a4: $0c
	dec a                                            ; $56a5: $3d
	add hl, bc                                       ; $56a6: $09
	dec c                                            ; $56a7: $0d
	add hl, bc                                       ; $56a8: $09
	cp [hl]                                          ; $56a9: $be
	cp [hl]                                          ; $56aa: $be
	ld b, $09                                        ; $56ab: $06 $09
	inc c                                            ; $56ad: $0c
	add hl, bc                                       ; $56ae: $09
	ld a, [bc]                                       ; $56af: $0a
	dec c                                            ; $56b0: $0d
	ld a, [bc]                                       ; $56b1: $0a
	cp [hl]                                          ; $56b2: $be
	add hl, bc                                       ; $56b3: $09
	inc c                                            ; $56b4: $0c
	dec a                                            ; $56b5: $3d
	inc c                                            ; $56b6: $0c
	add hl, bc                                       ; $56b7: $09
	inc c                                            ; $56b8: $0c
	dec c                                            ; $56b9: $0d
	ld b, $0a                                        ; $56ba: $06 $0a
	ld b, $09                                        ; $56bc: $06 $09
	inc c                                            ; $56be: $0c
	add hl, bc                                       ; $56bf: $09
	inc c                                            ; $56c0: $0c
	add hl, bc                                       ; $56c1: $09
	ld b, $09                                        ; $56c2: $06 $09
	ld b, $fe                                        ; $56c4: $06 $fe
	rst $38                                          ; $56c6: $ff
	ret nc                                           ; $56c7: $d0

	push de                                          ; $56c8: $d5
	cp $b5                                           ; $56c9: $fe $b5
	or c                                             ; $56cb: $b1
	ld bc, $06ff                                     ; $56cc: $01 $ff $06
	rra                                              ; $56cf: $1f
	rla                                              ; $56d0: $17

jr_038_56d1:
	nop                                              ; $56d1: $00
	ld bc, $81b1                                     ; $56d2: $01 $b1 $81
	rst $38                                          ; $56d5: $ff
	ld [bc], a                                       ; $56d6: $02
	cp [hl]                                          ; $56d7: $be
	inc c                                            ; $56d8: $0c
	rra                                              ; $56d9: $1f
	dec de                                           ; $56da: $1b
	rra                                              ; $56db: $1f
	dec de                                           ; $56dc: $1b
	cp [hl]                                          ; $56dd: $be
	or l                                             ; $56de: $b5
	ld d, d                                          ; $56df: $52
	ld bc, $0000                                     ; $56e0: $01 $00 $00
	dec hl                                           ; $56e3: $2b
	ld b, $c3                                        ; $56e4: $06 $c3
	dec hl                                           ; $56e6: $2b
	ld b, $ca                                        ; $56e7: $06 $ca
	ld l, $06                                        ; $56e9: $2e $06
	jp $062e                                         ; $56eb: $c3 $2e $06


	ld a, [hl]                                       ; $56ee: $7e
	ld bc, $aa18                                     ; $56ef: $01 $18 $aa
	jp z, Jump_038_4833                              ; $56f2: $ca $33 $48

	ld a, [hl]                                       ; $56f5: $7e
	ld bc, $a900                                     ; $56f6: $01 $00 $a9
	jp $1833                                         ; $56f9: $c3 $33 $18


	ld a, [hl]                                       ; $56fc: $7e
	nop                                              ; $56fd: $00
	or l                                             ; $56fe: $b5
	or c                                             ; $56ff: $b1
	inc bc                                           ; $5700: $03
	rst $38                                          ; $5701: $ff
	ld b, $1a                                        ; $5702: $06 $1a
	rla                                              ; $5704: $17
	nop                                              ; $5705: $00
	ld bc, $b1b1                                     ; $5706: $01 $b1 $b1
	rst $38                                          ; $5709: $ff
	ld [bc], a                                       ; $570a: $02
	cp [hl]                                          ; $570b: $be
	inc c                                            ; $570c: $0c
	ld a, [de]                                       ; $570d: $1a
	ld d, $1a                                        ; $570e: $16 $1a
	ld d, $be                                        ; $5710: $16 $be
	or l                                             ; $5712: $b5
	ld d, e                                          ; $5713: $53
	ld bc, $0000                                     ; $5714: $01 $00 $00
	ld h, $06                                        ; $5717: $26 $06
	jp $0626                                         ; $5719: $c3 $26 $06


	jp z, $0629                                      ; $571c: $ca $29 $06

	jp $0629                                         ; $571f: $c3 $29 $06


	jp z, $017e                                      ; $5722: $ca $7e $01

	jr jr_038_56d1                                   ; $5725: $18 $aa

	ld l, $48                                        ; $5727: $2e $48

jr_038_5729:
	ld a, [hl]                                       ; $5729: $7e
	ld bc, $a900                                     ; $572a: $01 $00 $a9
	jp $182e                                         ; $572d: $c3 $2e $18


	ld a, [hl]                                       ; $5730: $7e
	nop                                              ; $5731: $00
	call z, $92d2                                    ; $5732: $cc $d2 $92
	sub a                                            ; $5735: $97
	adc h                                            ; $5736: $8c
	cp [hl]                                          ; $5737: $be
	inc c                                            ; $5738: $0c
	dec de                                           ; $5739: $1b
	rra                                              ; $573a: $1f
	ld [hl+], a                                      ; $573b: $22
	daa                                              ; $573c: $27
	cp [hl]                                          ; $573d: $be
	sub a                                            ; $573e: $97
	adc e                                            ; $573f: $8b
	db $d3                                           ; $5740: $d3
	dec e                                            ; $5741: $1d
	inc c                                            ; $5742: $0c
	jr nz, jr_038_5751                               ; $5743: $20 $0c

	inc h                                            ; $5745: $24
	inc c                                            ; $5746: $0c
	add hl, hl                                       ; $5747: $29
	ld c, $97                                        ; $5748: $0e $97
	sbc a                                            ; $574a: $9f
	jp nc, $0cbe                                     ; $574b: $d2 $be $0c

	ld [hl+], a                                      ; $574e: $22
	add hl, hl                                       ; $574f: $29
	inc l                                            ; $5750: $2c

jr_038_5751:
	inc sp                                           ; $5751: $33
	cp [hl]                                          ; $5752: $be
	sub a                                            ; $5753: $97
	sbc [hl]                                         ; $5754: $9e
	db $d3                                           ; $5755: $d3
	cp [hl]                                          ; $5756: $be
	inc c                                            ; $5757: $0c
	ld [hl+], a                                      ; $5758: $22
	add hl, hl                                       ; $5759: $29
	inc l                                            ; $575a: $2c
	ld [hl-], a                                      ; $575b: $32
	cp [hl]                                          ; $575c: $be
	call z, $92d1                                    ; $575d: $cc $d1 $92
	sub a                                            ; $5760: $97
	cpl                                              ; $5761: $2f
	inc sp                                           ; $5762: $33
	ld l, $c5                                        ; $5763: $2e $c5
	inc sp                                           ; $5765: $33
	inc c                                            ; $5766: $0c
	jp $0c33                                         ; $5767: $c3 $33 $0c


	or l                                             ; $576a: $b5
	ld [hl], c                                       ; $576b: $71
	ld bc, $06ff                                     ; $576c: $01 $ff $06
	sub a                                            ; $576f: $97
	nop                                              ; $5770: $00
	daa                                              ; $5771: $27
	inc c                                            ; $5772: $0c
	jp $0c27                                         ; $5773: $c3 $27 $0c


	rst JumpTable                                          ; $5776: $c7
	daa                                              ; $5777: $27
	inc c                                            ; $5778: $0c
	jp $0c27                                         ; $5779: $c3 $27 $0c


	or c                                             ; $577c: $b1
	ld h, c                                          ; $577d: $61
	rst $38                                          ; $577e: $ff
	ld [bc], a                                       ; $577f: $02
	cp [hl]                                          ; $5780: $be
	inc c                                            ; $5781: $0c
	daa                                              ; $5782: $27
	add hl, hl                                       ; $5783: $29
	dec hl                                           ; $5784: $2b
	add hl, hl                                       ; $5785: $29
	ld l, $2b                                        ; $5786: $2e $2b
	cp [hl]                                          ; $5788: $be
	or c                                             ; $5789: $b1
	add c                                            ; $578a: $81
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	sub a                                            ; $578d: $97
	ld l, e                                          ; $578e: $6b
	dec hl                                           ; $578f: $2b
	jr jr_038_5729                                   ; $5790: $18 $97

	nop                                              ; $5792: $00
	inc l                                            ; $5793: $2c
	inc c                                            ; $5794: $0c
	jp $0b2c                                         ; $5795: $c3 $2c $0b


	nop                                              ; $5798: $00
	ld bc, $61b1                                     ; $5799: $01 $b1 $61
	rst $38                                          ; $579c: $ff
	ld [bc], a                                       ; $579d: $02
	sub a                                            ; $579e: $97
	nop                                              ; $579f: $00
	cp [hl]                                          ; $57a0: $be
	inc c                                            ; $57a1: $0c
	inc l                                            ; $57a2: $2c
	inc l                                            ; $57a3: $2c
	ld l, $2c                                        ; $57a4: $2e $2c
	dec hl                                           ; $57a6: $2b
	cp [hl]                                          ; $57a7: $be
	jp nz, $0c2b                                     ; $57a8: $c2 $2b $0c

	or c                                             ; $57ab: $b1
	and c                                            ; $57ac: $a1
	rst $38                                          ; $57ad: $ff
	ld [bc], a                                       ; $57ae: $02
	ld [hl+], a                                      ; $57af: $22
	inc c                                            ; $57b0: $0c
	inc h                                            ; $57b1: $24
	inc c                                            ; $57b2: $0c
	sub [hl]                                         ; $57b3: $96
	rst $38                                          ; $57b4: $ff
	ld bc, $0c26                                     ; $57b5: $01 $26 $0c
	ret                                              ; $57b8: $c9


	daa                                              ; $57b9: $27
	inc c                                            ; $57ba: $0c
	ld h, $0c                                        ; $57bb: $26 $0c
	daa                                              ; $57bd: $27
	inc c                                            ; $57be: $0c
	or l                                             ; $57bf: $b5
	sub c                                            ; $57c0: $91
	ld [bc], a                                       ; $57c1: $02
	rst $38                                          ; $57c2: $ff
	ld [bc], a                                       ; $57c3: $02
	ld a, h                                          ; $57c4: $7c
	cp [hl]                                          ; $57c5: $be
	inc c                                            ; $57c6: $0c
	ld l, $22                                        ; $57c7: $2e $22
	dec de                                           ; $57c9: $1b

jr_038_57ca:
	ld [hl+], a                                      ; $57ca: $22
	cp [hl]                                          ; $57cb: $be
	or c                                             ; $57cc: $b1
	ld [hl], c                                       ; $57cd: $71
	rst $38                                          ; $57ce: $ff
	ld bc, $063a                                     ; $57cf: $01 $3a $06
	add $3c                                          ; $57d2: $c6 $3c
	ld b, $b1                                        ; $57d4: $06 $b1
	ld h, c                                          ; $57d6: $61
	rst $38                                          ; $57d7: $ff
	ld [bc], a                                       ; $57d8: $02
	ld a, [hl-]                                      ; $57d9: $3a
	inc c                                            ; $57da: $0c
	ld [hl], b                                       ; $57db: $70
	sub [hl]                                         ; $57dc: $96
	rst $38                                          ; $57dd: $ff
	ld bc, $0c2d                                     ; $57de: $01 $2d $0c
	sub [hl]                                         ; $57e1: $96
	rst $38                                          ; $57e2: $ff
	ld [bc], a                                       ; $57e3: $02
	ld l, $0c                                        ; $57e4: $2e $0c
	pop hl                                           ; $57e6: $e1
	adc $51                                          ; $57e7: $ce $51
	cp [hl]                                          ; $57e9: $be
	inc c                                            ; $57ea: $0c
	dec [hl]                                         ; $57eb: $35
	ld [hl-], a                                      ; $57ec: $32
	ld l, $29                                        ; $57ed: $2e $29
	cp [hl]                                          ; $57ef: $be
	or c                                             ; $57f0: $b1
	add c                                            ; $57f1: $81
	nop                                              ; $57f2: $00
	nop                                              ; $57f3: $00
	ld h, $08                                        ; $57f4: $26 $08
	daa                                              ; $57f6: $27
	ld [$0826], sp                                   ; $57f7: $08 $26 $08
	sub [hl]                                         ; $57fa: $96
	rst $38                                          ; $57fb: $ff
	rlca                                             ; $57fc: $07
	ld [hl+], a                                      ; $57fd: $22
	inc c                                            ; $57fe: $0c
	or b                                             ; $57ff: $b0
	rst JumpTable                                          ; $5800: $c7
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	ld h, $0c                                        ; $5803: $26 $0c
	or c                                             ; $5805: $b1
	ld hl, $3203                                     ; $5806: $21 $03 $32
	ld a, l                                          ; $5809: $7d
	ld bc, $1827                                     ; $580a: $01 $27 $18
	pop bc                                           ; $580d: $c1
	daa                                              ; $580e: $27
	add hl, de                                       ; $580f: $19
	nop                                              ; $5810: $00
	ld bc, $1fc5                                     ; $5811: $01 $c5 $1f
	ld a, [de]                                       ; $5814: $1a
	pop bc                                           ; $5815: $c1
	rra                                              ; $5816: $1f
	jr jr_038_57ca                                   ; $5817: $18 $b1

	ld d, c                                          ; $5819: $51
	ld sp, $1f07                                     ; $581a: $31 $07 $1f
	ld a, b                                          ; $581d: $78
	sub a                                            ; $581e: $97
	nop                                              ; $581f: $00
	sub [hl]                                         ; $5820: $96
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	ld a, [hl]                                       ; $5823: $7e
	nop                                              ; $5824: $00
	ld a, l                                          ; $5825: $7d
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	ld b, [hl]                                       ; $5828: $46
	ret nc                                           ; $5829: $d0

	push de                                          ; $582a: $d5
	cp $ff                                           ; $582b: $fe $ff
	ret nc                                           ; $582d: $d0

	push de                                          ; $582e: $d5

jr_038_582f:
	cp $d1                                           ; $582f: $fe $d1
	sub d                                            ; $5831: $92
	sub a                                            ; $5832: $97
	ld c, l                                          ; $5833: $4d
	ld l, $30                                        ; $5834: $2e $30
	ret z                                            ; $5836: $c8

jr_038_5837:
	sub a                                            ; $5837: $97
	nop                                              ; $5838: $00
	ld l, $30                                        ; $5839: $2e $30
	sub a                                            ; $583b: $97
	nop                                              ; $583c: $00
	jp $182e                                         ; $583d: $c3 $2e $18


	or c                                             ; $5840: $b1
	ld [hl], c                                       ; $5841: $71
	rst $38                                          ; $5842: $ff
	ld [bc], a                                       ; $5843: $02

jr_038_5844:
	jr nc, jr_038_5852                               ; $5844: $30 $0c

	ld l, $0c                                        ; $5846: $2e $0c
	or c                                             ; $5848: $b1
	add c                                            ; $5849: $81
	rst $38                                          ; $584a: $ff
	ld [bc], a                                       ; $584b: $02
	inc l                                            ; $584c: $2c
	inc c                                            ; $584d: $0c
	or c                                             ; $584e: $b1
	ld sp, $0000                                     ; $584f: $31 $00 $00

jr_038_5852:
	inc l                                            ; $5852: $2c
	inc c                                            ; $5853: $0c
	or c                                             ; $5854: $b1
	sub c                                            ; $5855: $91
	rst $38                                          ; $5856: $ff
	ld [bc], a                                       ; $5857: $02
	dec hl                                           ; $5858: $2b
	inc c                                            ; $5859: $0c
	or c                                             ; $585a: $b1
	ld sp, $0000                                     ; $585b: $31 $00 $00
	dec hl                                           ; $585e: $2b
	inc c                                            ; $585f: $0c
	or c                                             ; $5860: $b1
	add c                                            ; $5861: $81
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	ld a, [hl]                                       ; $5864: $7e
	dec bc                                           ; $5865: $0b
	ld c, a                                          ; $5866: $4f
	xor c                                            ; $5867: $a9
	inc l                                            ; $5868: $2c
	ld h, b                                          ; $5869: $60
	ld a, [hl]                                       ; $586a: $7e
	ld bc, $a900                                     ; $586b: $01 $00 $a9
	jp $182c                                         ; $586e: $c3 $2c $18


	ld a, [hl]                                       ; $5871: $7e
	nop                                              ; $5872: $00
	or c                                             ; $5873: $b1
	add c                                            ; $5874: $81
	rst $38                                          ; $5875: $ff
	ld [bc], a                                       ; $5876: $02
	ld l, $0c                                        ; $5877: $2e $0c
	inc l                                            ; $5879: $2c
	inc c                                            ; $587a: $0c
	or c                                             ; $587b: $b1
	sub c                                            ; $587c: $91
	rst $38                                          ; $587d: $ff
	ld [bc], a                                       ; $587e: $02
	dec hl                                           ; $587f: $2b
	inc c                                            ; $5880: $0c
	or c                                             ; $5881: $b1
	ld sp, $0000                                     ; $5882: $31 $00 $00
	dec hl                                           ; $5885: $2b
	inc c                                            ; $5886: $0c
	or c                                             ; $5887: $b1
	sub c                                            ; $5888: $91
	jr jr_038_588d                                   ; $5889: $18 $02

	add hl, hl                                       ; $588b: $29
	inc c                                            ; $588c: $0c

jr_038_588d:
	or c                                             ; $588d: $b1
	ld sp, $0000                                     ; $588e: $31 $00 $00
	add hl, hl                                       ; $5891: $29
	inc c                                            ; $5892: $0c
	sub a                                            ; $5893: $97
	ld e, [hl]                                       ; $5894: $5e
	dec hl                                           ; $5895: $2b
	jr jr_038_582f                                   ; $5896: $18 $97

	ld e, [hl]                                       ; $5898: $5e
	ld l, $18                                        ; $5899: $2e $18
	sub a                                            ; $589b: $97
	ld e, [hl]                                       ; $589c: $5e
	inc h                                            ; $589d: $24
	jr jr_038_5837                                   ; $589e: $18 $97

	ld e, e                                          ; $58a0: $5b
	dec hl                                           ; $58a1: $2b
	inc c                                            ; $58a2: $0c
	add hl, hl                                       ; $58a3: $29
	inc c                                            ; $58a4: $0c

jr_038_58a5:
	sub a                                            ; $58a5: $97
	ld e, l                                          ; $58a6: $5d
	ld a, [hl]                                       ; $58a7: $7e
	dec bc                                           ; $58a8: $0b
	inc d                                            ; $58a9: $14
	daa                                              ; $58aa: $27
	jr jr_038_5844                                   ; $58ab: $18 $97

	nop                                              ; $58ad: $00
	ret z                                            ; $58ae: $c8

	daa                                              ; $58af: $27
	jr jr_038_5930                                   ; $58b0: $18 $7e

	nop                                              ; $58b2: $00
	sub a                                            ; $58b3: $97
	ld e, e                                          ; $58b4: $5b
	ld h, $18                                        ; $58b5: $26 $18
	sub a                                            ; $58b7: $97
	nop                                              ; $58b8: $00
	ld h, $16                                        ; $58b9: $26 $16
	sub a                                            ; $58bb: $97
	nop                                              ; $58bc: $00
	jp $0226                                         ; $58bd: $c3 $26 $02


	pop de                                           ; $58c0: $d1
	sub d                                            ; $58c1: $92
	sub a                                            ; $58c2: $97
	ld c, a                                          ; $58c3: $4f
	ld l, $30                                        ; $58c4: $2e $30
	ld a, [hl]                                       ; $58c6: $7e
	dec bc                                           ; $58c7: $0b
	nop                                              ; $58c8: $00
	xor c                                            ; $58c9: $a9
	add $97                                          ; $58ca: $c6 $97
	nop                                              ; $58cc: $00
	ld l, $0c                                        ; $58cd: $2e $0c
	jp $0c2e                                         ; $58cf: $c3 $2e $0c


jr_038_58d2:
	or c                                             ; $58d2: $b1
	add c                                            ; $58d3: $81
	rst $38                                          ; $58d4: $ff
	ld [bc], a                                       ; $58d5: $02
	sub a                                            ; $58d6: $97
	nop                                              ; $58d7: $00
	ld a, [hl]                                       ; $58d8: $7e
	nop                                              ; $58d9: $00
	cp [hl]                                          ; $58da: $be
	inc c                                            ; $58db: $0c
	dec l                                            ; $58dc: $2d
	ld l, $2d                                        ; $58dd: $2e $2d
	ld l, $30                                        ; $58df: $2e $30
	ld l, $2c                                        ; $58e1: $2e $2c
	dec hl                                           ; $58e3: $2b
	cp [hl]                                          ; $58e4: $be
	sub [hl]                                         ; $58e5: $96

jr_038_58e6:
	rst $38                                          ; $58e6: $ff
	ld bc, $0c29                                     ; $58e7: $01 $29 $0c
	daa                                              ; $58ea: $27
	inc c                                            ; $58eb: $0c
	sub a                                            ; $58ec: $97
	ccf                                              ; $58ed: $3f
	sub [hl]                                         ; $58ee: $96
	nop                                              ; $58ef: $00
	nop                                              ; $58f0: $00
	cpl                                              ; $58f1: $2f
	jr jr_038_58a5                                   ; $58f2: $18 $b1

	add c                                            ; $58f4: $81
	rst $38                                          ; $58f5: $ff
	ld [bc], a                                       ; $58f6: $02
	sub a                                            ; $58f7: $97
	nop                                              ; $58f8: $00
	jr nc, jr_038_5907                               ; $58f9: $30 $0c

	or c                                             ; $58fb: $b1
	ld sp, $0000                                     ; $58fc: $31 $00 $00
	jr nc, jr_038_590d                               ; $58ff: $30 $0c

	sub a                                            ; $5901: $97
	ld c, l                                          ; $5902: $4d
	jr nc, jr_038_591d                               ; $5903: $30 $18

	ld a, [hl]                                       ; $5905: $7e
	dec bc                                           ; $5906: $0b

jr_038_5907:
	nop                                              ; $5907: $00
	xor c                                            ; $5908: $a9
	sub a                                            ; $5909: $97
	nop                                              ; $590a: $00
	add $30                                          ; $590b: $c6 $30

jr_038_590d:
	jr jr_038_58d2                                   ; $590d: $18 $c3

	jr nc, jr_038_591d                               ; $590f: $30 $0c

	ld a, [hl]                                       ; $5911: $7e
	nop                                              ; $5912: $00
	sub a                                            ; $5913: $97
	ld e, h                                          ; $5914: $5c
	ld [hl-], a                                      ; $5915: $32
	inc c                                            ; $5916: $0c
	inc sp                                           ; $5917: $33
	inc c                                            ; $5918: $0c
	ld [hl-], a                                      ; $5919: $32
	inc c                                            ; $591a: $0c
	sub a                                            ; $591b: $97
	nop                                              ; $591c: $00

jr_038_591d:
	or c                                             ; $591d: $b1
	ld [hl], c                                       ; $591e: $71
	rst $38                                          ; $591f: $ff
	ld [bc], a                                       ; $5920: $02
	cp [hl]                                          ; $5921: $be
	inc c                                            ; $5922: $0c
	dec [hl]                                         ; $5923: $35
	inc sp                                           ; $5924: $33
	ld [hl-], a                                      ; $5925: $32
	jr nc, jr_038_58e6                               ; $5926: $30 $be

	or l                                             ; $5928: $b5
	add c                                            ; $5929: $81
	ld [bc], a                                       ; $592a: $02
	rst $38                                          ; $592b: $ff
	ld [bc], a                                       ; $592c: $02
	cp [hl]                                          ; $592d: $be
	inc c                                            ; $592e: $0c
	dec l                                            ; $592f: $2d

jr_038_5930:
	ld l, $30                                        ; $5930: $2e $30
	ld l, $2c                                        ; $5932: $2e $2c
	dec hl                                           ; $5934: $2b
	cp [hl]                                          ; $5935: $be
	ret                                              ; $5936: $c9


	add hl, hl                                       ; $5937: $29
	inc c                                            ; $5938: $0c
	daa                                              ; $5939: $27
	inc c                                            ; $593a: $0c
	or b                                             ; $593b: $b0
	adc $00                                          ; $593c: $ce $00
	nop                                              ; $593e: $00
	sub a                                            ; $593f: $97
	ld l, e                                          ; $5940: $6b
	cp [hl]                                          ; $5941: $be
	inc c                                            ; $5942: $0c
	add hl, hl                                       ; $5943: $29
	dec hl                                           ; $5944: $2b
	add hl, hl                                       ; $5945: $29
	dec hl                                           ; $5946: $2b
	cp [hl]                                          ; $5947: $be
	add hl, hl                                       ; $5948: $29
	ld [$082b], sp                                   ; $5949: $08 $2b $08
	add hl, hl                                       ; $594c: $29
	ld [$0c27], sp                                   ; $594d: $08 $27 $0c
	ret nc                                           ; $5950: $d0

	rst JumpTable                                          ; $5951: $c7
	add hl, hl                                       ; $5952: $29
	inc c                                            ; $5953: $0c
	sub a                                            ; $5954: $97
	nop                                              ; $5955: $00
	ret z                                            ; $5956: $c8

	daa                                              ; $5957: $27
	jr jr_038_591d                                   ; $5958: $18 $c3

	daa                                              ; $595a: $27
	add hl, de                                       ; $595b: $19
	nop                                              ; $595c: $00
	ld bc, $2bc7                                     ; $595d: $01 $c7 $2b
	ld a, [de]                                       ; $5960: $1a
	jp nz, $182b                                     ; $5961: $c2 $2b $18

	or c                                             ; $5964: $b1
	add c                                            ; $5965: $81
	jr c, jr_038_596f                                ; $5966: $38 $07

	ld a, [hl]                                       ; $5968: $7e
	ld bc, $a914                                     ; $5969: $01 $14 $a9
	daa                                              ; $596c: $27
	ld a, b                                          ; $596d: $78
	ld a, [hl]                                       ; $596e: $7e

jr_038_596f:
	nop                                              ; $596f: $00
	sub [hl]                                         ; $5970: $96
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	sub a                                            ; $5973: $97
	nop                                              ; $5974: $00
	nop                                              ; $5975: $00
	ld b, [hl]                                       ; $5976: $46
	ret nc                                           ; $5977: $d0

	push de                                          ; $5978: $d5
	cp $ff                                           ; $5979: $fe $ff
	ret nc                                           ; $597b: $d0

	push de                                          ; $597c: $d5
	cp $c2                                           ; $597d: $fe $c2
	pop de                                           ; $597f: $d1
	add c                                            ; $5980: $81
	nop                                              ; $5981: $00
	jr @+$11                                         ; $5982: $18 $0f

	inc c                                            ; $5984: $0c
	call nz, $0c0f                                   ; $5985: $c4 $0f $0c
	jp nz, $0c13                                     ; $5988: $c2 $13 $0c

	call nz, $0c13                                   ; $598b: $c4 $13 $0c
	jp nz, $0c16                                     ; $598e: $c2 $16 $0c

	call nz, $0c16                                   ; $5991: $c4 $16 $0c
	jp nz, Jump_038_481b                             ; $5994: $c2 $1b $48

	call nz, $181b                                   ; $5997: $c4 $1b $18
	nop                                              ; $599a: $00
	inc c                                            ; $599b: $0c
	jp nz, $0c00                                     ; $599c: $c2 $00 $0c

	ld a, [bc]                                       ; $599f: $0a
	inc c                                            ; $59a0: $0c
	call nz, $0c0a                                   ; $59a1: $c4 $0a $0c
	jp nz, $0c0e                                     ; $59a4: $c2 $0e $0c

	call nz, $0c0e                                   ; $59a7: $c4 $0e $0c
	jp nz, $0c11                                     ; $59aa: $c2 $11 $0c

	call nz, $0c11                                   ; $59ad: $c4 $11 $0c
	jp nz, Jump_038_4816                             ; $59b0: $c2 $16 $48

	call nz, $1816                                   ; $59b3: $c4 $16 $18
	jp nz, $1818                                     ; $59b6: $c2 $18 $18

	rra                                              ; $59b9: $1f
	inc c                                            ; $59ba: $0c
	call nz, $0c1f                                   ; $59bb: $c4 $1f $0c
	jp nz, $1814                                     ; $59be: $c2 $14 $18

	jr nz, @+$0e                                     ; $59c1: $20 $0c

	call nz, $0c20                                   ; $59c3: $c4 $20 $0c
	jp nz, $2416                                     ; $59c6: $c2 $16 $24

	ld [hl+], a                                      ; $59c9: $22
	rlca                                             ; $59ca: $07
	inc h                                            ; $59cb: $24
	rlca                                             ; $59cc: $07
	ld [hl+], a                                      ; $59cd: $22
	ld l, $c2                                        ; $59ce: $2e $c2
	pop de                                           ; $59d0: $d1
	add c                                            ; $59d1: $81

jr_038_59d2:
	ei                                               ; $59d2: $fb
	cp [hl]                                          ; $59d3: $be
	inc c                                            ; $59d4: $0c
	inc de                                           ; $59d5: $13
	dec de                                           ; $59d6: $1b
	ld d, $1b                                        ; $59d7: $16 $1b

jr_038_59d9:
	cp [hl]                                          ; $59d9: $be
	ei                                               ; $59da: $fb
	inc b                                            ; $59db: $04
	ei                                               ; $59dc: $fb
	cp [hl]                                          ; $59dd: $be
	inc c                                            ; $59de: $0c
	inc d                                            ; $59df: $14
	dec de                                           ; $59e0: $1b
	jr jr_038_59fe                                   ; $59e1: $18 $1b

	cp [hl]                                          ; $59e3: $be
	ei                                               ; $59e4: $fb
	inc b                                            ; $59e5: $04
	jp nz, $81d1                                     ; $59e6: $c2 $d1 $81

	ld d, $18                                        ; $59e9: $16 $18
	rra                                              ; $59eb: $1f
	inc c                                            ; $59ec: $0c
	add $1f                                          ; $59ed: $c6 $1f
	inc c                                            ; $59ef: $0c
	jp nz, $1816                                     ; $59f0: $c2 $16 $18

	rra                                              ; $59f3: $1f
	inc c                                            ; $59f4: $0c
	add $1f                                          ; $59f5: $c6 $1f
	inc c                                            ; $59f7: $0c
	pop hl                                           ; $59f8: $e1
	adc $21                                          ; $59f9: $ce $21
	cp [hl]                                          ; $59fb: $be
	inc c                                            ; $59fc: $0c
	ld a, [bc]                                       ; $59fd: $0a

jr_038_59fe:
	jr nz, @+$18                                     ; $59fe: $20 $16

	jr nz, jr_038_5a0c                               ; $5a00: $20 $0a

	jr nz, @+$18                                     ; $5a02: $20 $16

	cp [hl]                                          ; $5a04: $be
	ret nc                                           ; $5a05: $d0

	rst JumpTable                                          ; $5a06: $c7
	jr nz, jr_038_5a15                               ; $5a07: $20 $0c

	dec de                                           ; $5a09: $1b
	jr jr_038_59d2                                   ; $5a0a: $18 $c6

jr_038_5a0c:
	dec de                                           ; $5a0c: $1b
	add hl, de                                       ; $5a0d: $19
	nop                                              ; $5a0e: $00
	ld bc, $0fc2                                     ; $5a0f: $01 $c2 $0f
	ld a, [de]                                       ; $5a12: $1a
	add $0f                                          ; $5a13: $c6 $0f

jr_038_5a15:
	jr jr_038_59d9                                   ; $5a15: $18 $c2

	rrca                                             ; $5a17: $0f
	ld e, d                                          ; $5a18: $5a
	call nz, $100f                                   ; $5a19: $c4 $0f $10
	add $0f                                          ; $5a1c: $c6 $0f
	ld c, $00                                        ; $5a1e: $0e $00
	ld b, [hl]                                       ; $5a20: $46
	ret nc                                           ; $5a21: $d0

	push de                                          ; $5a22: $d5
	cp $ff                                           ; $5a23: $fe $ff
	or h                                             ; $5a25: $b4
	or h                                             ; $5a26: $b4
	pop af                                           ; $5a27: $f1
	nop                                              ; $5a28: $00
	ei                                               ; $5a29: $fb
	db $fd                                           ; $5a2a: $fd
	ld l, [hl]                                       ; $5a2b: $6e
	ld e, h                                          ; $5a2c: $5c
	ei                                               ; $5a2d: $fb
	ld bc, $936c                                     ; $5a2e: $01 $6c $93
	pop de                                           ; $5a31: $d1
	push bc                                          ; $5a32: $c5
	jr nz, jr_038_5a41                               ; $5a33: $20 $0c

	jp nz, $0c20                                     ; $5a35: $c2 $20 $0c

	push bc                                          ; $5a38: $c5
	jr nz, jr_038_5a47                               ; $5a39: $20 $0c

	jp nz, $0c20                                     ; $5a3b: $c2 $20 $0c

	push bc                                          ; $5a3e: $c5
	jr nz, jr_038_5a4d                               ; $5a3f: $20 $0c

jr_038_5a41:
	jp nz, $0c20                                     ; $5a41: $c2 $20 $0c

	nop                                              ; $5a44: $00
	inc c                                            ; $5a45: $0c
	push bc                                          ; $5a46: $c5

jr_038_5a47:
	ld [hl+], a                                      ; $5a47: $22
	inc c                                            ; $5a48: $0c
	jp nz, $0c22                                     ; $5a49: $c2 $22 $0c

	push bc                                          ; $5a4c: $c5

jr_038_5a4d:
	ld [hl+], a                                      ; $5a4d: $22
	ld b, $c2                                        ; $5a4e: $06 $c2
	ld [hl+], a                                      ; $5a50: $22
	ld b, $c5                                        ; $5a51: $06 $c5
	ld [hl+], a                                      ; $5a53: $22
	inc c                                            ; $5a54: $0c
	jp nz, $0c22                                     ; $5a55: $c2 $22 $0c

	ld a, [hl]                                       ; $5a58: $7e
	nop                                              ; $5a59: $00
	and b                                            ; $5a5a: $a0
	add $22                                          ; $5a5b: $c6 $22
	inc c                                            ; $5a5d: $0c
	jr nz, jr_038_5a6c                               ; $5a5e: $20 $0c

	call nz, $0c1f                                   ; $5a60: $c4 $1f $0c
	jr nz, @+$0e                                     ; $5a63: $20 $0c

	push bc                                          ; $5a65: $c5
	ld hl, $c20c                                     ; $5a66: $21 $0c $c2
	ld hl, $c50c                                     ; $5a69: $21 $0c $c5

jr_038_5a6c:
	ld hl, $c20c                                     ; $5a6c: $21 $0c $c2
	ld hl, $c50c                                     ; $5a6f: $21 $0c $c5
	ld hl, $c20c                                     ; $5a72: $21 $0c $c2
	ld hl, $000c                                     ; $5a75: $21 $0c $00
	inc c                                            ; $5a78: $0c
	push bc                                          ; $5a79: $c5
	jr nz, @+$0e                                     ; $5a7a: $20 $0c

	jp nz, $0c20                                     ; $5a7c: $c2 $20 $0c

	push bc                                          ; $5a7f: $c5
	jr nz, jr_038_5a8e                               ; $5a80: $20 $0c

	jp nz, $0c20                                     ; $5a82: $c2 $20 $0c

	push bc                                          ; $5a85: $c5
	inc l                                            ; $5a86: $2c
	ld b, $c2                                        ; $5a87: $06 $c2
	inc l                                            ; $5a89: $2c
	ld b, $c6                                        ; $5a8a: $06 $c6
	inc l                                            ; $5a8c: $2c
	inc c                                            ; $5a8d: $0c

jr_038_5a8e:
	jp nz, $0c2c                                     ; $5a8e: $c2 $2c $0c

	nop                                              ; $5a91: $00
	jr jr_038_5b04                                   ; $5a92: $18 $70

	cp $fb                                           ; $5a94: $fe $fb
	pop de                                           ; $5a96: $d1
	sub d                                            ; $5a97: $92
	rst JumpTable                                          ; $5a98: $c7
	ld a, [hl]                                       ; $5a99: $7e
	dec e                                            ; $5a9a: $1d
	ld [de], a                                       ; $5a9b: $12
	xor c                                            ; $5a9c: $a9
	inc h                                            ; $5a9d: $24
	jr jr_038_5b1e                                   ; $5a9e: $18 $7e

	dec e                                            ; $5aa0: $1d
	nop                                              ; $5aa1: $00
	and b                                            ; $5aa2: $a0
	jp nz, $0c24                                     ; $5aa3: $c2 $24 $0c

	ret z                                            ; $5aa6: $c8

	ld a, [hl]                                       ; $5aa7: $7e
	dec e                                            ; $5aa8: $1d
	ld [de], a                                       ; $5aa9: $12
	xor c                                            ; $5aaa: $a9
	ld [hl+], a                                      ; $5aab: $22
	jr @+$80                                         ; $5aac: $18 $7e

	dec e                                            ; $5aae: $1d
	nop                                              ; $5aaf: $00
	and b                                            ; $5ab0: $a0
	jp nz, $0c22                                     ; $5ab1: $c2 $22 $0c

	ret z                                            ; $5ab4: $c8

	ld a, [hl]                                       ; $5ab5: $7e
	dec e                                            ; $5ab6: $1d
	inc c                                            ; $5ab7: $0c
	xor c                                            ; $5ab8: $a9
	jr nz, jr_038_5acd                               ; $5ab9: $20 $12

	ld a, [hl]                                       ; $5abb: $7e
	dec e                                            ; $5abc: $1d
	nop                                              ; $5abd: $00
	and b                                            ; $5abe: $a0
	jp nz, $0620                                     ; $5abf: $c2 $20 $06

	ret z                                            ; $5ac2: $c8

	ld a, [hl]                                       ; $5ac3: $7e
	dec e                                            ; $5ac4: $1d
	ld [de], a                                       ; $5ac5: $12
	xor c                                            ; $5ac6: $a9
	ld hl, $7e18                                     ; $5ac7: $21 $18 $7e
	dec e                                            ; $5aca: $1d
	nop                                              ; $5acb: $00
	and b                                            ; $5acc: $a0

jr_038_5acd:
	jp nz, $0c21                                     ; $5acd: $c2 $21 $0c

	ret z                                            ; $5ad0: $c8

	ld a, [hl]                                       ; $5ad1: $7e
	dec e                                            ; $5ad2: $1d
	ld [de], a                                       ; $5ad3: $12
	xor c                                            ; $5ad4: $a9
	ld hl, $7e18                                     ; $5ad5: $21 $18 $7e
	dec e                                            ; $5ad8: $1d
	nop                                              ; $5ad9: $00
	and b                                            ; $5ada: $a0
	jp nz, $0c21                                     ; $5adb: $c2 $21 $0c

	rst JumpTable                                          ; $5ade: $c7
	ld a, [hl]                                       ; $5adf: $7e
	dec e                                            ; $5ae0: $1d
	inc c                                            ; $5ae1: $0c
	xor c                                            ; $5ae2: $a9
	dec e                                            ; $5ae3: $1d
	ld [de], a                                       ; $5ae4: $12
	ld a, [hl]                                       ; $5ae5: $7e
	dec e                                            ; $5ae6: $1d
	nop                                              ; $5ae7: $00
	and b                                            ; $5ae8: $a0
	jp nz, $061d                                     ; $5ae9: $c2 $1d $06

	ld a, [hl]                                       ; $5aec: $7e
	nop                                              ; $5aed: $00
	and b                                            ; $5aee: $a0
	push bc                                          ; $5aef: $c5
	dec e                                            ; $5af0: $1d
	ld b, $00                                        ; $5af1: $06 $00
	ld b, $2e                                        ; $5af3: $06 $2e
	ld [de], a                                       ; $5af5: $12
	jp nz, $062e                                     ; $5af6: $c2 $2e $06

	push bc                                          ; $5af9: $c5
	dec e                                            ; $5afa: $1d
	ld b, $00                                        ; $5afb: $06 $00
	ld b, $2e                                        ; $5afd: $06 $2e
	ld [de], a                                       ; $5aff: $12
	jp nz, $062e                                     ; $5b00: $c2 $2e $06

	push bc                                          ; $5b03: $c5

jr_038_5b04:
	dec e                                            ; $5b04: $1d
	ld b, $00                                        ; $5b05: $06 $00
	ld b, $2e                                        ; $5b07: $06 $2e
	inc c                                            ; $5b09: $0c
	push bc                                          ; $5b0a: $c5
	dec e                                            ; $5b0b: $1d
	ld b, $00                                        ; $5b0c: $06 $00
	ld b, $2e                                        ; $5b0e: $06 $2e
	ld [de], a                                       ; $5b10: $12
	jp nz, $062e                                     ; $5b11: $c2 $2e $06

	push bc                                          ; $5b14: $c5
	dec e                                            ; $5b15: $1d
	ld b, $00                                        ; $5b16: $06 $00
	ld b, $2e                                        ; $5b18: $06 $2e
	ld [de], a                                       ; $5b1a: $12
	jp nz, $062e                                     ; $5b1b: $c2 $2e $06

jr_038_5b1e:
	push bc                                          ; $5b1e: $c5
	dec e                                            ; $5b1f: $1d
	ld b, $00                                        ; $5b20: $06 $00
	ld b, $2e                                        ; $5b22: $06 $2e
	inc c                                            ; $5b24: $0c
	call nz, $1d7e                                   ; $5b25: $c4 $7e $1d
	inc c                                            ; $5b28: $0c
	xor c                                            ; $5b29: $a9
	inc l                                            ; $5b2a: $2c
	jr jr_038_5bab                                   ; $5b2b: $18 $7e

	dec e                                            ; $5b2d: $1d
	nop                                              ; $5b2e: $00
	xor c                                            ; $5b2f: $a9
	jp nz, $0c2c                                     ; $5b30: $c2 $2c $0c

	jp $1d7e                                         ; $5b33: $c3 $7e $1d


	inc c                                            ; $5b36: $0c
	xor c                                            ; $5b37: $a9

jr_038_5b38:
	ld a, [hl+]                                      ; $5b38: $2a
	inc h                                            ; $5b39: $24
	sub b                                            ; $5b3a: $90
	pop de                                           ; $5b3b: $d1
	ret z                                            ; $5b3c: $c8

	ld a, [hl]                                       ; $5b3d: $7e
	dec e                                            ; $5b3e: $1d
	inc c                                            ; $5b3f: $0c

jr_038_5b40:
	xor d                                            ; $5b40: $aa
	inc l                                            ; $5b41: $2c
	jr @+$80                                         ; $5b42: $18 $7e

	dec e                                            ; $5b44: $1d
	nop                                              ; $5b45: $00
	xor c                                            ; $5b46: $a9
	jp nz, $0c2c                                     ; $5b47: $c2 $2c $0c

	rst JumpTable                                          ; $5b4a: $c7
	ld a, [hl]                                       ; $5b4b: $7e
	dec e                                            ; $5b4c: $1d
	inc c                                            ; $5b4d: $0c
	xor d                                            ; $5b4e: $aa
	ld a, [hl+]                                      ; $5b4f: $2a

jr_038_5b50:
	inc h                                            ; $5b50: $24
	ld a, [hl]                                       ; $5b51: $7e
	dec e                                            ; $5b52: $1d
	nop                                              ; $5b53: $00
	xor c                                            ; $5b54: $a9
	jp nz, $182a                                     ; $5b55: $c2 $2a $18

	db $d3                                           ; $5b58: $d3
	adc $2e                                          ; $5b59: $ce $2e
	ld b, $c4                                        ; $5b5b: $06 $c4
	ld l, $06                                        ; $5b5d: $2e $06
	adc $2e                                          ; $5b5f: $ce $2e
	ld b, $c4                                        ; $5b61: $06 $c4
	ld l, $06                                        ; $5b63: $2e $06
	ld a, l                                          ; $5b65: $7d
	ld bc, $90d1                                     ; $5b66: $01 $d1 $90
	ld a, [hl]                                       ; $5b69: $7e
	nop                                              ; $5b6a: $00
	and b                                            ; $5b6b: $a0
	nop                                              ; $5b6c: $00
	jr jr_038_5b38                                   ; $5b6d: $18 $c9

	jr nc, jr_038_5b7d                               ; $5b6f: $30 $0c

	jp nz, $0c30                                     ; $5b71: $c2 $30 $0c

	nop                                              ; $5b74: $00
	jr jr_038_5b40                                   ; $5b75: $18 $c9

	jr nc, jr_038_5b85                               ; $5b77: $30 $0c

	jp nz, $0c30                                     ; $5b79: $c2 $30 $0c

jr_038_5b7c:
	nop                                              ; $5b7c: $00

jr_038_5b7d:
	jr @-$35                                         ; $5b7d: $18 $c9

	jr nc, jr_038_5b8d                               ; $5b7f: $30 $0c

	jp nz, $0c30                                     ; $5b81: $c2 $30 $0c

	nop                                              ; $5b84: $00

jr_038_5b85:
	jr jr_038_5b50                                   ; $5b85: $18 $c9

	jr nc, jr_038_5b95                               ; $5b87: $30 $0c

	jp nz, $0c30                                     ; $5b89: $c2 $30 $0c

	ld a, l                                          ; $5b8c: $7d

jr_038_5b8d:
	nop                                              ; $5b8d: $00
	ei                                               ; $5b8e: $fb
	ld [bc], a                                       ; $5b8f: $02
	pop de                                           ; $5b90: $d1
	sub d                                            ; $5b91: $92
	ei                                               ; $5b92: $fb
	rst JumpTable                                          ; $5b93: $c7
	inc h                                            ; $5b94: $24

jr_038_5b95:
	ld b, $c4                                        ; $5b95: $06 $c4
	inc h                                            ; $5b97: $24
	ld b, $c7                                        ; $5b98: $06 $c7
	ld a, l                                          ; $5b9a: $7d
	ld bc, $0625                                     ; $5b9b: $01 $25 $06
	ld a, l                                          ; $5b9e: $7d
	nop                                              ; $5b9f: $00
	call nz, $0624                                   ; $5ba0: $c4 $24 $06
	add $2c                                          ; $5ba3: $c6 $2c
	ld b, $c4                                        ; $5ba5: $06 $c4
	ld a, l                                          ; $5ba7: $7d
	ld bc, $0625                                     ; $5ba8: $01 $25 $06

jr_038_5bab:
	ld a, l                                          ; $5bab: $7d
	nop                                              ; $5bac: $00
	ei                                               ; $5bad: $fb
	inc bc                                           ; $5bae: $03
	jp nc, $38cb                                     ; $5baf: $d2 $cb $38

	jr jr_038_5b7c                                   ; $5bb2: $18 $c8

	jr c, @+$0e                                      ; $5bb4: $38 $0c

	call nz, $0c38                                   ; $5bb6: $c4 $38 $0c

jr_038_5bb9:
	jp nz, $0c38                                     ; $5bb9: $c2 $38 $0c

	pop de                                           ; $5bbc: $d1
	rst JumpTable                                          ; $5bbd: $c7
	ld l, $06                                        ; $5bbe: $2e $06
	jp nz, $062e                                     ; $5bc0: $c2 $2e $06

	rst JumpTable                                          ; $5bc3: $c7
	ld l, $06                                        ; $5bc4: $2e $06
	jp nz, $062e                                     ; $5bc6: $c2 $2e $06

	sub d                                            ; $5bc9: $92
	rr c                                             ; $5bca: $cb $19
	ld [de], a                                       ; $5bcc: $12
	call nz, $0619                                   ; $5bcd: $c4 $19 $06
	sla b                                            ; $5bd0: $cb $20
	ld bc, $0b00                                     ; $5bd2: $01 $00 $0b
	ret z                                            ; $5bd5: $c8

	jr nz, @+$08                                     ; $5bd6: $20 $06

	jp nz, $0620                                     ; $5bd8: $c2 $20 $06

	add $33                                          ; $5bdb: $c6 $33
	ld b, $c2                                        ; $5bdd: $06 $c2
	inc sp                                           ; $5bdf: $33
	ld b, $c6                                        ; $5be0: $06 $c6
	ld sp, $c206                                     ; $5be2: $31 $06 $c2
	ld sp, $c806                                     ; $5be5: $31 $06 $c8
	jr nz, jr_038_5bfc                               ; $5be8: $20 $12

	jp nz, $0620                                     ; $5bea: $c2 $20 $06

	add $24                                          ; $5bed: $c6 $24
	ld bc, $24c1                                     ; $5bef: $01 $c1 $24
	dec bc                                           ; $5bf2: $0b
	add $31                                          ; $5bf3: $c6 $31
	jr jr_038_5bb9                                   ; $5bf5: $18 $c2

	ld sp, $cb0c                                     ; $5bf7: $31 $0c $cb
	cp [hl]                                          ; $5bfa: $be
	inc c                                            ; $5bfb: $0c

jr_038_5bfc:
	jr nz, jr_038_5c20                               ; $5bfc: $20 $22

	inc h                                            ; $5bfe: $24
	dec h                                            ; $5bff: $25
	cp [hl]                                          ; $5c00: $be
	add $be                                          ; $5c01: $c6 $be
	inc c                                            ; $5c03: $0c
	ld e, $22                                        ; $5c04: $1e $22
	ld a, [hl+]                                      ; $5c06: $2a
	ld e, $be                                        ; $5c07: $1e $be
	call nz, $0c2a                                   ; $5c09: $c4 $2a $0c
	add $22                                          ; $5c0c: $c6 $22
	ld b, $c4                                        ; $5c0e: $06 $c4
	ld e, $06                                        ; $5c10: $1e $06
	push bc                                          ; $5c12: $c5
	daa                                              ; $5c13: $27
	ld b, $c3                                        ; $5c14: $06 $c3
	ld [hl+], a                                      ; $5c16: $22
	ld b, $c5                                        ; $5c17: $06 $c5
	add hl, hl                                       ; $5c19: $29
	ld b, $c3                                        ; $5c1a: $06 $c3
	daa                                              ; $5c1c: $27
	ld b, $c5                                        ; $5c1d: $06 $c5
	ld a, [hl+]                                      ; $5c1f: $2a

jr_038_5c20:
	ld b, $c3                                        ; $5c20: $06 $c3
	add hl, hl                                       ; $5c22: $29
	ld b, $d2                                        ; $5c23: $06 $d2
	swap l                                           ; $5c25: $cb $35
	jr @-$36                                         ; $5c27: $18 $c8

	dec [hl]                                         ; $5c29: $35
	inc c                                            ; $5c2a: $0c
	add $35                                          ; $5c2b: $c6 $35
	inc c                                            ; $5c2d: $0c
	call nz, $0c35                                   ; $5c2e: $c4 $35 $0c
	pop de                                           ; $5c31: $d1
	rst JumpTable                                          ; $5c32: $c7
	ld l, $06                                        ; $5c33: $2e $06
	jp nz, $062e                                     ; $5c35: $c2 $2e $06

	rst JumpTable                                          ; $5c38: $c7
	ld l, $06                                        ; $5c39: $2e $06
	jp nz, $062e                                     ; $5c3b: $c2 $2e $06

	nop                                              ; $5c3e: $00
	inc c                                            ; $5c3f: $0c
	sub b                                            ; $5c40: $90
	jp nc, $31cc                                     ; $5c41: $d2 $cc $31

	inc c                                            ; $5c44: $0c
	call nz, $0c31                                   ; $5c45: $c4 $31 $0c
	db $d3                                           ; $5c48: $d3
	call z, $0c31                                    ; $5c49: $cc $31 $0c
	call nz, $0c31                                   ; $5c4c: $c4 $31 $0c
	jp nc, $30cc                                     ; $5c4f: $d2 $cc $30

	inc c                                            ; $5c52: $0c
	call nz, $0c30                                   ; $5c53: $c4 $30 $0c
	db $d3                                           ; $5c56: $d3
	call z, $0c30                                    ; $5c57: $cc $30 $0c
	pop de                                           ; $5c5a: $d1
	inc hl                                           ; $5c5b: $23
	ld b, $c4                                        ; $5c5c: $06 $c4
	inc hl                                           ; $5c5e: $23
	ld b, $cc                                        ; $5c5f: $06 $cc
	inc h                                            ; $5c61: $24
	inc c                                            ; $5c62: $0c
	call nz, $0c24                                   ; $5c63: $c4 $24 $0c
	jp z, $2425                                      ; $5c66: $ca $25 $24

	call nz, $1825                                   ; $5c69: $c4 $25 $18
	cp $ff                                           ; $5c6c: $fe $ff
	pop de                                           ; $5c6e: $d1
	ret z                                            ; $5c6f: $c8

	jr nz, jr_038_5c7e                               ; $5c70: $20 $0c

	jp $0c20                                         ; $5c72: $c3 $20 $0c


	ret z                                            ; $5c75: $c8

	jr nz, @+$0e                                     ; $5c76: $20 $0c

	jp $0c20                                         ; $5c78: $c3 $20 $0c


	ret z                                            ; $5c7b: $c8

	jr nz, @+$0e                                     ; $5c7c: $20 $0c

jr_038_5c7e:
	jp $0c20                                         ; $5c7e: $c3 $20 $0c


	nop                                              ; $5c81: $00
	inc c                                            ; $5c82: $0c
	jp z, $0c22                                      ; $5c83: $ca $22 $0c

	jp $0c22                                         ; $5c86: $c3 $22 $0c


	jp z, $0c22                                      ; $5c89: $ca $22 $0c

	jp $0c22                                         ; $5c8c: $c3 $22 $0c


	jp z, $0622                                      ; $5c8f: $ca $22 $06

	jp $0622                                         ; $5c92: $c3 $22 $06


	jp z, $0c22                                      ; $5c95: $ca $22 $0c

	jp $0c22                                         ; $5c98: $c3 $22 $0c


	sub d                                            ; $5c9b: $92
	rst JumpTable                                          ; $5c9c: $c7
	ld a, [hl]                                       ; $5c9d: $7e
	dec e                                            ; $5c9e: $1d
	inc c                                            ; $5c9f: $0c
	and b                                            ; $5ca0: $a0
	ld [hl+], a                                      ; $5ca1: $22
	jr jr_038_5d22                                   ; $5ca2: $18 $7e

	nop                                              ; $5ca4: $00
	and b                                            ; $5ca5: $a0
	sub b                                            ; $5ca6: $90
	jp z, $0c21                                      ; $5ca7: $ca $21 $0c

	jp $0c21                                         ; $5caa: $c3 $21 $0c


	jp z, $0c21                                      ; $5cad: $ca $21 $0c

	jp $0c21                                         ; $5cb0: $c3 $21 $0c


	jp z, $0c21                                      ; $5cb3: $ca $21 $0c

	jp $0c21                                         ; $5cb6: $c3 $21 $0c


	nop                                              ; $5cb9: $00
	inc c                                            ; $5cba: $0c
	ret                                              ; $5cbb: $c9


	jr nz, jr_038_5cca                               ; $5cbc: $20 $0c

	jp $0c20                                         ; $5cbe: $c3 $20 $0c


	ret                                              ; $5cc1: $c9


	jr nz, jr_038_5cd0                               ; $5cc2: $20 $0c

	jp $0c20                                         ; $5cc4: $c3 $20 $0c


	ret                                              ; $5cc7: $c9


	jr nz, jr_038_5cd6                               ; $5cc8: $20 $0c

jr_038_5cca:
	sub d                                            ; $5cca: $92
	ret z                                            ; $5ccb: $c8

	ld a, [hl]                                       ; $5ccc: $7e
	nop                                              ; $5ccd: $00
	and b                                            ; $5cce: $a0
	cp [hl]                                          ; $5ccf: $be

jr_038_5cd0:
	inc c                                            ; $5cd0: $0c
	ld [hl+], a                                      ; $5cd1: $22
	jr nz, @+$21                                     ; $5cd2: $20 $1f

	jr nz, @-$40                                     ; $5cd4: $20 $be

jr_038_5cd6:
	db $fd                                           ; $5cd6: $fd
	or h                                             ; $5cd7: $b4
	or h                                             ; $5cd8: $b4
	pop af                                           ; $5cd9: $f1
	nop                                              ; $5cda: $00
	ei                                               ; $5cdb: $fb
	db $fd                                           ; $5cdc: $fd
	ld l, e                                          ; $5cdd: $6b
	ld e, a                                          ; $5cde: $5f
	ei                                               ; $5cdf: $fb
	ld bc, $d191                                     ; $5ce0: $01 $91 $d1
	ret                                              ; $5ce3: $c9


	add hl, hl                                       ; $5ce4: $29
	inc c                                            ; $5ce5: $0c
	jp $0c29                                         ; $5ce6: $c3 $29 $0c


	ret                                              ; $5ce9: $c9


	add hl, hl                                       ; $5cea: $29
	inc c                                            ; $5ceb: $0c
	jp $0c29                                         ; $5cec: $c3 $29 $0c


	ret                                              ; $5cef: $c9


	add hl, hl                                       ; $5cf0: $29
	inc c                                            ; $5cf1: $0c
	jp $0c29                                         ; $5cf2: $c3 $29 $0c


	nop                                              ; $5cf5: $00
	inc c                                            ; $5cf6: $0c
	rst JumpTable                                          ; $5cf7: $c7
	dec hl                                           ; $5cf8: $2b
	inc c                                            ; $5cf9: $0c
	jp $0c2b                                         ; $5cfa: $c3 $2b $0c


	rst JumpTable                                          ; $5cfd: $c7
	dec hl                                           ; $5cfe: $2b
	inc c                                            ; $5cff: $0c
	jp $0c2b                                         ; $5d00: $c3 $2b $0c


	rst JumpTable                                          ; $5d03: $c7
	dec hl                                           ; $5d04: $2b
	ld b, $c3                                        ; $5d05: $06 $c3
	dec hl                                           ; $5d07: $2b
	ld b, $c7                                        ; $5d08: $06 $c7
	dec hl                                           ; $5d0a: $2b
	inc c                                            ; $5d0b: $0c
	jp $0c2b                                         ; $5d0c: $c3 $2b $0c


	sub d                                            ; $5d0f: $92
	add $7e                                          ; $5d10: $c6 $7e
	dec e                                            ; $5d12: $1d
	inc c                                            ; $5d13: $0c
	and b                                            ; $5d14: $a0
	dec hl                                           ; $5d15: $2b
	jr @+$80                                         ; $5d16: $18 $7e

	nop                                              ; $5d18: $00
	and b                                            ; $5d19: $a0
	sub c                                            ; $5d1a: $91
	pop de                                           ; $5d1b: $d1
	rst JumpTable                                          ; $5d1c: $c7
	ld a, [hl+]                                      ; $5d1d: $2a
	inc c                                            ; $5d1e: $0c
	jp nz, $0c2a                                     ; $5d1f: $c2 $2a $0c

jr_038_5d22:
	rst JumpTable                                          ; $5d22: $c7
	ld a, [hl+]                                      ; $5d23: $2a
	inc c                                            ; $5d24: $0c
	jp nz, $0c2a                                     ; $5d25: $c2 $2a $0c

	rst JumpTable                                          ; $5d28: $c7
	ld a, [hl+]                                      ; $5d29: $2a
	inc c                                            ; $5d2a: $0c
	jp nz, $0c2a                                     ; $5d2b: $c2 $2a $0c

	nop                                              ; $5d2e: $00
	inc c                                            ; $5d2f: $0c
	rst JumpTable                                          ; $5d30: $c7
	add hl, hl                                       ; $5d31: $29
	inc c                                            ; $5d32: $0c
	jp nz, $0c29                                     ; $5d33: $c2 $29 $0c

	rst JumpTable                                          ; $5d36: $c7
	add hl, hl                                       ; $5d37: $29
	inc c                                            ; $5d38: $0c
	jp nz, $0c29                                     ; $5d39: $c2 $29 $0c

	rst JumpTable                                          ; $5d3c: $c7
	ld sp, $c206                                     ; $5d3d: $31 $06 $c2
	ld sp, $c706                                     ; $5d40: $31 $06 $c7
	ld sp, $c20c                                     ; $5d43: $31 $0c $c2
	ld sp, $920c                                     ; $5d46: $31 $0c $92
	jp z, $1d7e                                      ; $5d49: $ca $7e $1d

	inc c                                            ; $5d4c: $0c
	and c                                            ; $5d4d: $a1
	jr nz, jr_038_5d68                               ; $5d4e: $20 $18

	ld a, [hl]                                       ; $5d50: $7e
	nop                                              ; $5d51: $00
	and b                                            ; $5d52: $a0
	cp $fb                                           ; $5d53: $fe $fb
	pop de                                           ; $5d55: $d1
	sub d                                            ; $5d56: $92
	call z, $1d7e                                    ; $5d57: $cc $7e $1d
	ld [de], a                                       ; $5d5a: $12
	xor c                                            ; $5d5b: $a9
	daa                                              ; $5d5c: $27
	jr jr_038_5ddd                                   ; $5d5d: $18 $7e

	dec e                                            ; $5d5f: $1d
	nop                                              ; $5d60: $00
	and b                                            ; $5d61: $a0
	call nz, $0c27                                   ; $5d62: $c4 $27 $0c
	call z, $1d7e                                    ; $5d65: $cc $7e $1d

jr_038_5d68:
	ld [de], a                                       ; $5d68: $12
	xor c                                            ; $5d69: $a9
	dec h                                            ; $5d6a: $25
	jr jr_038_5deb                                   ; $5d6b: $18 $7e

	dec e                                            ; $5d6d: $1d
	nop                                              ; $5d6e: $00
	and b                                            ; $5d6f: $a0
	call nz, $0c25                                   ; $5d70: $c4 $25 $0c
	call $1d7e                                       ; $5d73: $cd $7e $1d
	inc c                                            ; $5d76: $0c
	xor c                                            ; $5d77: $a9
	inc h                                            ; $5d78: $24
	ld [de], a                                       ; $5d79: $12
	ld a, [hl]                                       ; $5d7a: $7e
	dec e                                            ; $5d7b: $1d
	nop                                              ; $5d7c: $00
	and b                                            ; $5d7d: $a0
	call nz, $0624                                   ; $5d7e: $c4 $24 $06
	call $1d7e                                       ; $5d81: $cd $7e $1d
	ld [de], a                                       ; $5d84: $12
	xor c                                            ; $5d85: $a9
	dec h                                            ; $5d86: $25
	jr jr_038_5e07                                   ; $5d87: $18 $7e

	dec e                                            ; $5d89: $1d
	nop                                              ; $5d8a: $00
	and b                                            ; $5d8b: $a0
	call nz, $0c25                                   ; $5d8c: $c4 $25 $0c
	call $1d7e                                       ; $5d8f: $cd $7e $1d
	ld [de], a                                       ; $5d92: $12
	xor c                                            ; $5d93: $a9
	inc h                                            ; $5d94: $24
	jr @+$80                                         ; $5d95: $18 $7e

	dec e                                            ; $5d97: $1d
	nop                                              ; $5d98: $00
	and b                                            ; $5d99: $a0
	call nz, $0c24                                   ; $5d9a: $c4 $24 $0c
	call $1d7e                                       ; $5d9d: $cd $7e $1d
	inc c                                            ; $5da0: $0c
	xor c                                            ; $5da1: $a9
	ld [hl+], a                                      ; $5da2: $22
	ld [de], a                                       ; $5da3: $12
	ld a, [hl]                                       ; $5da4: $7e
	dec e                                            ; $5da5: $1d
	nop                                              ; $5da6: $00
	and b                                            ; $5da7: $a0
	call nz, $0622                                   ; $5da8: $c4 $22 $06
	ld a, [hl]                                       ; $5dab: $7e
	nop                                              ; $5dac: $00
	and b                                            ; $5dad: $a0
	call $0c25                                       ; $5dae: $cd $25 $0c
	call nz, $0c25                                   ; $5db1: $c4 $25 $0c
	call $0c24                                       ; $5db4: $cd $24 $0c
	call nz, $0c24                                   ; $5db7: $c4 $24 $0c
	call $0c22                                       ; $5dba: $cd $22 $0c
	call nz, $0c22                                   ; $5dbd: $c4 $22 $0c
	call $0c21                                       ; $5dc0: $cd $21 $0c
	call nz, $0c21                                   ; $5dc3: $c4 $21 $0c
	call $0622                                       ; $5dc6: $cd $22 $06
	call nz, $0622                                   ; $5dc9: $c4 $22 $06
	call $0c24                                       ; $5dcc: $cd $24 $0c
	call nz, $0c24                                   ; $5dcf: $c4 $24 $0c
	call $1d7e                                       ; $5dd2: $cd $7e $1d
	inc c                                            ; $5dd5: $0c
	and c                                            ; $5dd6: $a1
	dec h                                            ; $5dd7: $25
	jr jr_038_5e58                                   ; $5dd8: $18 $7e

	dec e                                            ; $5dda: $1d
	nop                                              ; $5ddb: $00
	and c                                            ; $5ddc: $a1

jr_038_5ddd:
	call nz, $0c25                                   ; $5ddd: $c4 $25 $0c
	call $1d7e                                       ; $5de0: $cd $7e $1d
	inc c                                            ; $5de3: $0c
	xor c                                            ; $5de4: $a9
	jr nz, jr_038_5df9                               ; $5de5: $20 $12

	ld a, [hl]                                       ; $5de7: $7e
	dec e                                            ; $5de8: $1d
	nop                                              ; $5de9: $00
	and b                                            ; $5dea: $a0

jr_038_5deb:
	call nz, $0620                                   ; $5deb: $c4 $20 $06
	rst JumpTable                                          ; $5dee: $c7
	ld a, [hl]                                       ; $5def: $7e
	dec e                                            ; $5df0: $1d
	inc c                                            ; $5df1: $0c
	xor d                                            ; $5df2: $aa
	add hl, hl                                       ; $5df3: $29
	jr jr_038_5e74                                   ; $5df4: $18 $7e

	dec e                                            ; $5df6: $1d
	nop                                              ; $5df7: $00
	xor c                                            ; $5df8: $a9

jr_038_5df9:
	jp nz, $0c29                                     ; $5df9: $c2 $29 $0c

	jp z, $1d7e                                      ; $5dfc: $ca $7e $1d

	inc c                                            ; $5dff: $0c
	xor c                                            ; $5e00: $a9
	daa                                              ; $5e01: $27
	inc h                                            ; $5e02: $24
	ld a, [hl]                                       ; $5e03: $7e
	dec e                                            ; $5e04: $1d
	nop                                              ; $5e05: $00
	and b                                            ; $5e06: $a0

jr_038_5e07:
	jp $1827                                         ; $5e07: $c3 $27 $18


	ld a, l                                          ; $5e0a: $7d
	ld bc, $007e                                     ; $5e0b: $01 $7e $00
	and b                                            ; $5e0e: $a0
	nop                                              ; $5e0f: $00
	jr @-$32                                         ; $5e10: $18 $cc

	daa                                              ; $5e12: $27
	ld [de], a                                       ; $5e13: $12
	call nz, $0627                                   ; $5e14: $c4 $27 $06
	call z, $1226                                    ; $5e17: $cc $26 $12
	call nz, $0626                                   ; $5e1a: $c4 $26 $06
	call z, $1227                                    ; $5e1d: $cc $27 $12
	call nz, $0627                                   ; $5e20: $c4 $27 $06
	ld a, l                                          ; $5e23: $7d
	nop                                              ; $5e24: $00
	call $2424                                       ; $5e25: $cd $24 $24
	call nz, $0c24                                   ; $5e28: $c4 $24 $0c
	call $2425                                       ; $5e2b: $cd $25 $24
	call nz, $0c25                                   ; $5e2e: $c4 $25 $0c
	call $0c27                                       ; $5e31: $cd $27 $0c
	call nz, $0c27                                   ; $5e34: $c4 $27 $0c
	call $0c24                                       ; $5e37: $cd $24 $0c
	call nz, $0c24                                   ; $5e3a: $c4 $24 $0c
	call z, $1d7e                                    ; $5e3d: $cc $7e $1d
	inc c                                            ; $5e40: $0c
	xor c                                            ; $5e41: $a9
	daa                                              ; $5e42: $27
	jr jr_038_5e69                                   ; $5e43: $18 $24

	jr jr_038_5ec5                                   ; $5e45: $18 $7e

	nop                                              ; $5e47: $00
	and b                                            ; $5e48: $a0
	ei                                               ; $5e49: $fb
	ld [bc], a                                       ; $5e4a: $02
	pop de                                           ; $5e4b: $d1
	sub d                                            ; $5e4c: $92
	call $1d7e                                       ; $5e4d: $cd $7e $1d
	inc c                                            ; $5e50: $0c
	xor d                                            ; $5e51: $aa
	daa                                              ; $5e52: $27
	jr jr_038_5ed3                                   ; $5e53: $18 $7e

	dec e                                            ; $5e55: $1d
	nop                                              ; $5e56: $00
	xor c                                            ; $5e57: $a9

jr_038_5e58:
	call nz, $0c27                                   ; $5e58: $c4 $27 $0c
	call $1d7e                                       ; $5e5b: $cd $7e $1d
	inc c                                            ; $5e5e: $0c
	xor d                                            ; $5e5f: $aa
	dec h                                            ; $5e60: $25
	jr jr_038_5ee1                                   ; $5e61: $18 $7e

	dec e                                            ; $5e63: $1d
	nop                                              ; $5e64: $00
	xor c                                            ; $5e65: $a9
	call nz, $0c25                                   ; $5e66: $c4 $25 $0c

jr_038_5e69:
	jp nz, $0c25                                     ; $5e69: $c2 $25 $0c

	pop bc                                           ; $5e6c: $c1
	dec h                                            ; $5e6d: $25
	inc h                                            ; $5e6e: $24
	call $1d7e                                       ; $5e6f: $cd $7e $1d
	inc c                                            ; $5e72: $0c
	xor d                                            ; $5e73: $aa

jr_038_5e74:
	ld [hl+], a                                      ; $5e74: $22
	ld [de], a                                       ; $5e75: $12
	ld a, [hl]                                       ; $5e76: $7e
	dec e                                            ; $5e77: $1d
	nop                                              ; $5e78: $00
	xor c                                            ; $5e79: $a9
	call nz, $0622                                   ; $5e7a: $c4 $22 $06
	call $1d7e                                       ; $5e7d: $cd $7e $1d
	inc c                                            ; $5e80: $0c
	xor d                                            ; $5e81: $aa
	inc h                                            ; $5e82: $24
	ld [de], a                                       ; $5e83: $12
	ld a, [hl]                                       ; $5e84: $7e
	dec e                                            ; $5e85: $1d
	nop                                              ; $5e86: $00
	xor c                                            ; $5e87: $a9
	call nz, $0624                                   ; $5e88: $c4 $24 $06
	call $1d7e                                       ; $5e8b: $cd $7e $1d
	inc c                                            ; $5e8e: $0c
	xor d                                            ; $5e8f: $aa
	dec h                                            ; $5e90: $25
	ld [de], a                                       ; $5e91: $12
	ld a, [hl]                                       ; $5e92: $7e
	dec e                                            ; $5e93: $1d
	nop                                              ; $5e94: $00
	xor c                                            ; $5e95: $a9
	call nz, $0625                                   ; $5e96: $c4 $25 $06
	call $1d7e                                       ; $5e99: $cd $7e $1d
	inc c                                            ; $5e9c: $0c
	xor d                                            ; $5e9d: $aa
	jr nz, @+$1a                                     ; $5e9e: $20 $18

	ld a, [hl]                                       ; $5ea0: $7e
	dec e                                            ; $5ea1: $1d
	nop                                              ; $5ea2: $00
	xor c                                            ; $5ea3: $a9
	call nz, $0c20                                   ; $5ea4: $c4 $20 $0c
	call $1d7e                                       ; $5ea7: $cd $7e $1d
	inc c                                            ; $5eaa: $0c
	xor d                                            ; $5eab: $aa
	daa                                              ; $5eac: $27
	ld [de], a                                       ; $5ead: $12
	ld a, [hl]                                       ; $5eae: $7e
	dec e                                            ; $5eaf: $1d
	nop                                              ; $5eb0: $00
	xor c                                            ; $5eb1: $a9
	call nz, $0c27                                   ; $5eb2: $c4 $27 $0c
	pop bc                                           ; $5eb5: $c1
	daa                                              ; $5eb6: $27
	ld b, $cd                                        ; $5eb7: $06 $cd
	ld a, [hl]                                       ; $5eb9: $7e
	dec e                                            ; $5eba: $1d
	inc c                                            ; $5ebb: $0c
	xor d                                            ; $5ebc: $aa
	dec h                                            ; $5ebd: $25
	jr jr_038_5f3e                                   ; $5ebe: $18 $7e

	dec e                                            ; $5ec0: $1d
	nop                                              ; $5ec1: $00
	xor c                                            ; $5ec2: $a9
	ld a, [hl]                                       ; $5ec3: $7e
	nop                                              ; $5ec4: $00

jr_038_5ec5:
	and b                                            ; $5ec5: $a0
	call nz, $0c25                                   ; $5ec6: $c4 $25 $0c
	jp nc, $35c6                                     ; $5ec9: $d2 $c6 $35

	ld b, $38                                        ; $5ecc: $06 $38
	ld b, $c7                                        ; $5ece: $06 $c7
	dec [hl]                                         ; $5ed0: $35
	ld b, $38                                        ; $5ed1: $06 $38

jr_038_5ed3:
	ld b, $d1                                        ; $5ed3: $06 $d1
	ret z                                            ; $5ed5: $c8

	dec [hl]                                         ; $5ed6: $35
	ld b, $38                                        ; $5ed7: $06 $38
	ld b, $c9                                        ; $5ed9: $06 $c9
	dec [hl]                                         ; $5edb: $35
	ld b, $38                                        ; $5edc: $06 $38
	ld b, $d3                                        ; $5ede: $06 $d3
	ret z                                            ; $5ee0: $c8

jr_038_5ee1:
	dec [hl]                                         ; $5ee1: $35
	ld b, $38                                        ; $5ee2: $06 $38
	ld b, $c7                                        ; $5ee4: $06 $c7
	dec [hl]                                         ; $5ee6: $35
	ld b, $38                                        ; $5ee7: $06 $38
	ld b, $c6                                        ; $5ee9: $06 $c6
	dec [hl]                                         ; $5eeb: $35
	ld b, $38                                        ; $5eec: $06 $38
	ld b, $d1                                        ; $5eee: $06 $d1
	call z, $1d7e                                    ; $5ef0: $cc $7e $1d
	inc c                                            ; $5ef3: $0c
	xor d                                            ; $5ef4: $aa
	daa                                              ; $5ef5: $27
	jr @+$80                                         ; $5ef6: $18 $7e

	dec e                                            ; $5ef8: $1d
	nop                                              ; $5ef9: $00
	xor c                                            ; $5efa: $a9
	call nz, $0c27                                   ; $5efb: $c4 $27 $0c
	call $1d7e                                       ; $5efe: $cd $7e $1d
	inc c                                            ; $5f01: $0c
	xor d                                            ; $5f02: $aa
	dec h                                            ; $5f03: $25
	jr @+$80                                         ; $5f04: $18 $7e

	dec e                                            ; $5f06: $1d
	nop                                              ; $5f07: $00
	xor c                                            ; $5f08: $a9
	call nz, $0c25                                   ; $5f09: $c4 $25 $0c
	jp nz, $0c25                                     ; $5f0c: $c2 $25 $0c

	pop bc                                           ; $5f0f: $c1
	dec h                                            ; $5f10: $25
	inc h                                            ; $5f11: $24
	call $1d7e                                       ; $5f12: $cd $7e $1d
	inc c                                            ; $5f15: $0c
	xor d                                            ; $5f16: $aa
	ld [hl+], a                                      ; $5f17: $22
	ld [de], a                                       ; $5f18: $12
	ld a, [hl]                                       ; $5f19: $7e
	dec e                                            ; $5f1a: $1d
	nop                                              ; $5f1b: $00
	xor c                                            ; $5f1c: $a9
	call nz, $0622                                   ; $5f1d: $c4 $22 $06
	call $1d7e                                       ; $5f20: $cd $7e $1d
	inc c                                            ; $5f23: $0c
	xor d                                            ; $5f24: $aa
	inc h                                            ; $5f25: $24
	ld [de], a                                       ; $5f26: $12
	ld a, [hl]                                       ; $5f27: $7e
	dec e                                            ; $5f28: $1d
	nop                                              ; $5f29: $00
	xor c                                            ; $5f2a: $a9
	call nz, $0624                                   ; $5f2b: $c4 $24 $06
	call $1d7e                                       ; $5f2e: $cd $7e $1d
	inc c                                            ; $5f31: $0c
	xor d                                            ; $5f32: $aa
	dec h                                            ; $5f33: $25
	ld [de], a                                       ; $5f34: $12
	ld a, [hl]                                       ; $5f35: $7e
	dec e                                            ; $5f36: $1d
	nop                                              ; $5f37: $00
	xor c                                            ; $5f38: $a9
	call nz, $0625                                   ; $5f39: $c4 $25 $06
	ld a, [hl]                                       ; $5f3c: $7e
	nop                                              ; $5f3d: $00

jr_038_5f3e:
	and b                                            ; $5f3e: $a0
	rst JumpTable                                          ; $5f3f: $c7
	add hl, hl                                       ; $5f40: $29
	inc c                                            ; $5f41: $0c
	jp nz, $0c29                                     ; $5f42: $c2 $29 $0c

	rst JumpTable                                          ; $5f45: $c7
	add hl, hl                                       ; $5f46: $29
	inc c                                            ; $5f47: $0c
	jp nz, $0c29                                     ; $5f48: $c2 $29 $0c

	call z, $0c27                                    ; $5f4b: $cc $27 $0c
	jp $0c27                                         ; $5f4e: $c3 $27 $0c


	call z, $0c27                                    ; $5f51: $cc $27 $0c
	jp $0c27                                         ; $5f54: $c3 $27 $0c


	call $0626                                       ; $5f57: $cd $26 $06
	jp $0626                                         ; $5f5a: $c3 $26 $06


	call $0c27                                       ; $5f5d: $cd $27 $0c
	jp $0c27                                         ; $5f60: $c3 $27 $0c


	rst JumpTable                                          ; $5f63: $c7
	add hl, hl                                       ; $5f64: $29
	inc h                                            ; $5f65: $24
	call z, $1820                                    ; $5f66: $cc $20 $18
	cp $ff                                           ; $5f69: $fe $ff
	pop de                                           ; $5f6b: $d1
	jp z, $0c29                                      ; $5f6c: $ca $29 $0c

	call nz, $0c29                                   ; $5f6f: $c4 $29 $0c
	jp z, $0c29                                      ; $5f72: $ca $29 $0c

	call nz, $0c29                                   ; $5f75: $c4 $29 $0c
	jp z, $0c29                                      ; $5f78: $ca $29 $0c

	call nz, $0c29                                   ; $5f7b: $c4 $29 $0c
	nop                                              ; $5f7e: $00
	inc c                                            ; $5f7f: $0c
	ret                                              ; $5f80: $c9


	dec hl                                           ; $5f81: $2b
	inc c                                            ; $5f82: $0c
	jp $0c2b                                         ; $5f83: $c3 $2b $0c


	ret z                                            ; $5f86: $c8

	dec hl                                           ; $5f87: $2b
	inc c                                            ; $5f88: $0c
	jp $0c2b                                         ; $5f89: $c3 $2b $0c


	ret z                                            ; $5f8c: $c8

	dec hl                                           ; $5f8d: $2b
	ld b, $c3                                        ; $5f8e: $06 $c3
	dec hl                                           ; $5f90: $2b
	ld b, $c8                                        ; $5f91: $06 $c8
	dec hl                                           ; $5f93: $2b
	inc c                                            ; $5f94: $0c
	call nz, $0c2b                                   ; $5f95: $c4 $2b $0c
	sub d                                            ; $5f98: $92
	push bc                                          ; $5f99: $c5
	ld a, [hl]                                       ; $5f9a: $7e
	dec e                                            ; $5f9b: $1d
	inc c                                            ; $5f9c: $0c
	and b                                            ; $5f9d: $a0
	dec hl                                           ; $5f9e: $2b
	jr @+$80                                         ; $5f9f: $18 $7e

	nop                                              ; $5fa1: $00
	and b                                            ; $5fa2: $a0
	sub b                                            ; $5fa3: $90
	rst JumpTable                                          ; $5fa4: $c7
	ld a, [hl+]                                      ; $5fa5: $2a
	inc c                                            ; $5fa6: $0c
	jp nz, $0c2a                                     ; $5fa7: $c2 $2a $0c

	rst JumpTable                                          ; $5faa: $c7
	ld a, [hl+]                                      ; $5fab: $2a
	inc c                                            ; $5fac: $0c
	jp nz, $0c2a                                     ; $5fad: $c2 $2a $0c

	rst JumpTable                                          ; $5fb0: $c7
	ld a, [hl+]                                      ; $5fb1: $2a
	inc c                                            ; $5fb2: $0c
	jp nz, $0c2a                                     ; $5fb3: $c2 $2a $0c

	nop                                              ; $5fb6: $00
	inc c                                            ; $5fb7: $0c
	ret                                              ; $5fb8: $c9


	add hl, hl                                       ; $5fb9: $29
	inc c                                            ; $5fba: $0c
	jp $0c29                                         ; $5fbb: $c3 $29 $0c


	ret                                              ; $5fbe: $c9


	add hl, hl                                       ; $5fbf: $29
	inc c                                            ; $5fc0: $0c
	jp $0c29                                         ; $5fc1: $c3 $29 $0c


	ret                                              ; $5fc4: $c9


	add hl, hl                                       ; $5fc5: $29
	ld b, $c3                                        ; $5fc6: $06 $c3
	add hl, hl                                       ; $5fc8: $29
	ld b, $c9                                        ; $5fc9: $06 $c9
	add hl, hl                                       ; $5fcb: $29
	inc c                                            ; $5fcc: $0c
	jp $0c29                                         ; $5fcd: $c3 $29 $0c


	sub d                                            ; $5fd0: $92
	add $7e                                          ; $5fd1: $c6 $7e
	dec e                                            ; $5fd3: $1d
	inc c                                            ; $5fd4: $0c
	and b                                            ; $5fd5: $a0
	daa                                              ; $5fd6: $27
	jr jr_038_6057                                   ; $5fd7: $18 $7e

	nop                                              ; $5fd9: $00
	and b                                            ; $5fda: $a0
	db $fd                                           ; $5fdb: $fd
	or h                                             ; $5fdc: $b4
	or h                                             ; $5fdd: $b4
	ld hl, $fb1f                                     ; $5fde: $21 $1f $fb
	db $fd                                           ; $5fe1: $fd
	ld d, b                                          ; $5fe2: $50
	ld h, c                                          ; $5fe3: $61
	ei                                               ; $5fe4: $fb
	inc bc                                           ; $5fe5: $03
	jp nz, $0cbe                                     ; $5fe6: $c2 $be $0c

	dec c                                            ; $5fe9: $0d
	nop                                              ; $5fea: $00
	dec c                                            ; $5feb: $0d
	nop                                              ; $5fec: $00
	dec c                                            ; $5fed: $0d
	nop                                              ; $5fee: $00
	cp [hl]                                          ; $5fef: $be
	ld [$0006], sp                                   ; $5ff0: $08 $06 $00
	ld b, $be                                        ; $5ff3: $06 $be
	inc c                                            ; $5ff5: $0c
	dec c                                            ; $5ff6: $0d
	nop                                              ; $5ff7: $00
	dec c                                            ; $5ff8: $0d
	nop                                              ; $5ff9: $00
	cp [hl]                                          ; $5ffa: $be
	dec c                                            ; $5ffb: $0d
	ld b, $00                                        ; $5ffc: $06 $00
	ld b, $0d                                        ; $5ffe: $06 $0d
	inc c                                            ; $6000: $0c
	nop                                              ; $6001: $00
	inc h                                            ; $6002: $24
	cp $fb                                           ; $6003: $fe $fb
	pop de                                           ; $6005: $d1
	jp nz, $1f7f                                     ; $6006: $c2 $7f $1f

	dec c                                            ; $6009: $0d
	inc c                                            ; $600a: $0c
	nop                                              ; $600b: $00
	inc c                                            ; $600c: $0c
	ld a, [hl]                                       ; $600d: $7e
	dec e                                            ; $600e: $1d
	inc c                                            ; $600f: $0c
	and c                                            ; $6010: $a1
	dec c                                            ; $6011: $0d
	inc h                                            ; $6012: $24
	ld a, [hl]                                       ; $6013: $7e
	dec e                                            ; $6014: $1d
	nop                                              ; $6015: $00
	and b                                            ; $6016: $a0
	add $0d                                          ; $6017: $c6 $0d
	inc c                                            ; $6019: $0c
	ld a, [hl]                                       ; $601a: $7e
	nop                                              ; $601b: $00
	and b                                            ; $601c: $a0
	jp nz, $0c03                                     ; $601d: $c2 $03 $0c

	add $03                                          ; $6020: $c6 $03
	inc c                                            ; $6022: $0c
	jp nz, $1805                                     ; $6023: $c2 $05 $18

	add $05                                          ; $6026: $c6 $05
	inc c                                            ; $6028: $0c
	jp nz, $1809                                     ; $6029: $c2 $09 $18

	add $09                                          ; $602c: $c6 $09
	inc c                                            ; $602e: $0c
	jp nz, $0c05                                     ; $602f: $c2 $05 $0c

	add $05                                          ; $6032: $c6 $05
	inc c                                            ; $6034: $0c
	jp nz, $0cbe                                     ; $6035: $c2 $be $0c

	ld a, [bc]                                       ; $6038: $0a
	nop                                              ; $6039: $00
	ld a, [bc]                                       ; $603a: $0a
	nop                                              ; $603b: $00
	ld a, [bc]                                       ; $603c: $0a
	nop                                              ; $603d: $00
	cp [hl]                                          ; $603e: $be
	dec b                                            ; $603f: $05
	ld b, $00                                        ; $6040: $06 $00
	ld b, $be                                        ; $6042: $06 $be
	inc c                                            ; $6044: $0c
	ld de, $1100                                     ; $6045: $11 $00 $11
	rrca                                             ; $6048: $0f
	nop                                              ; $6049: $00
	cp [hl]                                          ; $604a: $be
	ld a, [hl]                                       ; $604b: $7e
	dec e                                            ; $604c: $1d
	inc c                                            ; $604d: $0c
	and c                                            ; $604e: $a1
	dec c                                            ; $604f: $0d
	jr jr_038_605c                                   ; $6050: $18 $0a

	ld d, $00                                        ; $6052: $16 $00
	ld [bc], a                                       ; $6054: $02
	ld a, [hl]                                       ; $6055: $7e
	nop                                              ; $6056: $00

jr_038_6057:
	and b                                            ; $6057: $a0
	jp nz, $0cbe                                     ; $6058: $c2 $be $0c

	rrca                                             ; $605b: $0f

jr_038_605c:
	nop                                              ; $605c: $00
	rrca                                             ; $605d: $0f
	nop                                              ; $605e: $00
	rrca                                             ; $605f: $0f
	nop                                              ; $6060: $00
	cp [hl]                                          ; $6061: $be
	ld a, [bc]                                       ; $6062: $0a
	ld b, $00                                        ; $6063: $06 $00
	ld b, $7f                                        ; $6065: $06 $7f
	ld hl, $0c16                                     ; $6067: $21 $16 $0c
	nop                                              ; $606a: $00
	inc c                                            ; $606b: $0c
	ld d, $0c                                        ; $606c: $16 $0c
	ld a, a                                          ; $606e: $7f
	rra                                              ; $606f: $1f
	inc d                                            ; $6070: $14
	inc c                                            ; $6071: $0c
	nop                                              ; $6072: $00
	inc c                                            ; $6073: $0c
	ld a, [hl]                                       ; $6074: $7e
	dec e                                            ; $6075: $1d
	inc c                                            ; $6076: $0c
	and c                                            ; $6077: $a1
	ld [de], a                                       ; $6078: $12
	jr @+$16                                         ; $6079: $18 $14

	ld d, $00                                        ; $607b: $16 $00
	ld [bc], a                                       ; $607d: $02
	ld a, [hl]                                       ; $607e: $7e
	nop                                              ; $607f: $00
	and b                                            ; $6080: $a0
	jp nz, $0cbe                                     ; $6081: $c2 $be $0c

	ld [$0800], sp                                   ; $6084: $08 $00 $08
	nop                                              ; $6087: $00
	ld [$be00], sp                                   ; $6088: $08 $00 $be
	inc bc                                           ; $608b: $03
	ld b, $00                                        ; $608c: $06 $00
	ld b, $14                                        ; $608e: $06 $14
	inc c                                            ; $6090: $0c
	nop                                              ; $6091: $00
	inc c                                            ; $6092: $0c
	inc d                                            ; $6093: $14
	inc c                                            ; $6094: $0c
	ld a, [hl]                                       ; $6095: $7e
	dec e                                            ; $6096: $1d
	inc c                                            ; $6097: $0c
	and c                                            ; $6098: $a1
	ld [$0a18], sp                                   ; $6099: $08 $18 $0a
	jr jr_038_60aa                                   ; $609c: $18 $0c

	ld d, $00                                        ; $609e: $16 $00
	ld [bc], a                                       ; $60a0: $02
	ld a, [hl]                                       ; $60a1: $7e
	nop                                              ; $60a2: $00
	and b                                            ; $60a3: $a0
	ei                                               ; $60a4: $fb
	ld [bc], a                                       ; $60a5: $02

jr_038_60a6:
	pop de                                           ; $60a6: $d1
	jp nz, $1f7f                                     ; $60a7: $c2 $7f $1f

jr_038_60aa:
	ld [de], a                                       ; $60aa: $12
	ld [de], a                                       ; $60ab: $12
	add $12                                          ; $60ac: $c6 $12
	inc c                                            ; $60ae: $0c
	nop                                              ; $60af: $00
	ld b, $c2                                        ; $60b0: $06 $c2
	ld [de], a                                       ; $60b2: $12
	ld b, $c6                                        ; $60b3: $06 $c6
	ld [de], a                                       ; $60b5: $12
	ld b, $00                                        ; $60b6: $06 $00
	jr @-$3c                                         ; $60b8: $18 $c2

	ld [de], a                                       ; $60ba: $12
	ld [de], a                                       ; $60bb: $12
	add $12                                          ; $60bc: $c6 $12
	inc c                                            ; $60be: $0c
	nop                                              ; $60bf: $00
	ld [de], a                                       ; $60c0: $12
	jp nz, $1212                                     ; $60c1: $c2 $12 $12

	add $12                                          ; $60c4: $c6 $12
	ld b, $c2                                        ; $60c6: $06 $c2
	inc d                                            ; $60c8: $14
	ld [de], a                                       ; $60c9: $12
	add $14                                          ; $60ca: $c6 $14

jr_038_60cc:
	ld b, $c2                                        ; $60cc: $06 $c2
	ld [de], a                                       ; $60ce: $12
	ld [de], a                                       ; $60cf: $12
	add $12                                          ; $60d0: $c6 $12
	ld b, $c2                                        ; $60d2: $06 $c2
	ld de, $c612                                     ; $60d4: $11 $12 $c6
	ld de, $000c                                     ; $60d7: $11 $0c $00
	ld b, $c2                                        ; $60da: $06 $c2
	ld de, $c606                                     ; $60dc: $11 $06 $c6
	ld de, $0006                                     ; $60df: $11 $06 $00
	jr jr_038_60a6                                   ; $60e2: $18 $c2

	ld de, $c612                                     ; $60e4: $11 $12 $c6
	ld de, $000c                                     ; $60e7: $11 $0c $00
	ld b, $c2                                        ; $60ea: $06 $c2
	ld de, $c60c                                     ; $60ec: $11 $0c $c6
	ld de, $000c                                     ; $60ef: $11 $0c $00
	inc c                                            ; $60f2: $0c
	jp nz, $2411                                     ; $60f3: $c2 $11 $24

	add $11                                          ; $60f6: $c6 $11
	inc c                                            ; $60f8: $0c
	jp nz, $120f                                     ; $60f9: $c2 $0f $12

	add $0f                                          ; $60fc: $c6 $0f
	inc c                                            ; $60fe: $0c
	nop                                              ; $60ff: $00
	ld b, $c2                                        ; $6100: $06 $c2
	rrca                                             ; $6102: $0f
	ld b, $c6                                        ; $6103: $06 $c6
	rrca                                             ; $6105: $0f
	ld b, $00                                        ; $6106: $06 $00
	jr jr_038_60cc                                   ; $6108: $18 $c2

	rrca                                             ; $610a: $0f
	ld [de], a                                       ; $610b: $12
	add $0f                                          ; $610c: $c6 $0f
	inc c                                            ; $610e: $0c
	nop                                              ; $610f: $00
	ld [de], a                                       ; $6110: $12
	jp nz, $120f                                     ; $6111: $c2 $0f $12

	add $0f                                          ; $6114: $c6 $0f
	ld b, $c2                                        ; $6116: $06 $c2
	ld de, $c612                                     ; $6118: $11 $12 $c6
	ld de, $c206                                     ; $611b: $11 $06 $c2
	rrca                                             ; $611e: $0f
	ld [de], a                                       ; $611f: $12
	add $0f                                          ; $6120: $c6 $0f
	ld b, $d1                                        ; $6122: $06 $d1
	jp nz, $0c08                                     ; $6124: $c2 $08 $0c

	add $08                                          ; $6127: $c6 $08
	inc c                                            ; $6129: $0c
	jp nz, $0c08                                     ; $612a: $c2 $08 $0c

	add $08                                          ; $612d: $c6 $08
	inc c                                            ; $612f: $0c
	jp nz, $0c06                                     ; $6130: $c2 $06 $0c

	add $06                                          ; $6133: $c6 $06
	inc c                                            ; $6135: $0c
	jp nz, $0c06                                     ; $6136: $c2 $06 $0c

	add $06                                          ; $6139: $c6 $06
	inc c                                            ; $613b: $0c
	jp nz, $0605                                     ; $613c: $c2 $05 $06

	add $05                                          ; $613f: $c6 $05
	ld b, $c2                                        ; $6141: $06 $c2
	ld b, $0c                                        ; $6143: $06 $0c
	add $06                                          ; $6145: $c6 $06
	inc c                                            ; $6147: $0c
	jp nz, $2408                                     ; $6148: $c2 $08 $24

	add $08                                          ; $614b: $c6 $08

jr_038_614d:
	jr jr_038_614d                                   ; $614d: $18 $fe

	rst $38                                          ; $614f: $ff
	pop de                                           ; $6150: $d1
	jp nz, $0cbe                                     ; $6151: $c2 $be $0c

	dec c                                            ; $6154: $0d
	nop                                              ; $6155: $00
	dec c                                            ; $6156: $0d
	nop                                              ; $6157: $00
	dec c                                            ; $6158: $0d
	nop                                              ; $6159: $00
	cp [hl]                                          ; $615a: $be
	ld [$0006], sp                                   ; $615b: $08 $06 $00
	ld b, $be                                        ; $615e: $06 $be
	inc c                                            ; $6160: $0c
	dec c                                            ; $6161: $0d
	nop                                              ; $6162: $00
	dec c                                            ; $6163: $0d
	nop                                              ; $6164: $00
	cp [hl]                                          ; $6165: $be
	dec c                                            ; $6166: $0d
	ld b, $00                                        ; $6167: $06 $00
	ld b, $0d                                        ; $6169: $06 $0d
	inc c                                            ; $616b: $0c
	nop                                              ; $616c: $00
	inc c                                            ; $616d: $0c
	ld a, [hl]                                       ; $616e: $7e

jr_038_616f:
	dec e                                            ; $616f: $1d
	inc c                                            ; $6170: $0c

jr_038_6171:
	and e                                            ; $6171: $a3
	ld [$7e18], sp                                   ; $6172: $08 $18 $7e
	nop                                              ; $6175: $00
	and b                                            ; $6176: $a0
	db $fd                                           ; $6177: $fd
	ret nc                                           ; $6178: $d0

	or h                                             ; $6179: $b4
	ei                                               ; $617a: $fb
	db $fd                                           ; $617b: $fd
	or l                                             ; $617c: $b5
	ld h, c                                          ; $617d: $61
	ei                                               ; $617e: $fb

jr_038_617f:
	inc bc                                           ; $617f: $03
	cp [hl]                                          ; $6180: $be
	inc c                                            ; $6181: $0c
	rra                                              ; $6182: $1f
	dec e                                            ; $6183: $1d

jr_038_6184:
	jr nz, @+$1f                                     ; $6184: $20 $1d

	rra                                              ; $6186: $1f
	dec e                                            ; $6187: $1d
	jr nz, @+$21                                     ; $6188: $20 $1f

	dec e                                            ; $618a: $1d
	rra                                              ; $618b: $1f
	jr nz, @+$22                                     ; $618c: $20 $20

	jr nz, @+$22                                     ; $618e: $20 $20

	cp [hl]                                          ; $6190: $be
	nop                                              ; $6191: $00

jr_038_6192:
	jr jr_038_6192                                   ; $6192: $18 $fe

	ei                                               ; $6194: $fb
	db $fd                                           ; $6195: $fd
	or l                                             ; $6196: $b5

jr_038_6197:
	ld h, c                                          ; $6197: $61
	ei                                               ; $6198: $fb
	ld [$fdfb], sp                                   ; $6199: $08 $fb $fd
	or l                                             ; $619c: $b5
	ld h, c                                          ; $619d: $61
	ei                                               ; $619e: $fb
	inc bc                                           ; $619f: $03
	cp [hl]                                          ; $61a0: $be
	inc c                                            ; $61a1: $0c

jr_038_61a2:
	jr nz, jr_038_61c1                               ; $61a2: $20 $1d

	jr nz, jr_038_61c3                               ; $61a4: $20 $1d

jr_038_61a6:
	jr nz, jr_038_61c5                               ; $61a6: $20 $1d

	jr nz, jr_038_61c7                               ; $61a8: $20 $1d

	jr nz, @+$22                                     ; $61aa: $20 $20

	dec e                                            ; $61ac: $1d
	jr nz, jr_038_61cf                               ; $61ad: $20 $20

	jr nz, jr_038_61d1                               ; $61af: $20 $20

	jr nz, jr_038_6171                               ; $61b1: $20 $be

	cp $ff                                           ; $61b3: $fe $ff
	cp [hl]                                          ; $61b5: $be
	inc c                                            ; $61b6: $0c
	rra                                              ; $61b7: $1f
	dec e                                            ; $61b8: $1d
	jr nz, jr_038_61d8                               ; $61b9: $20 $1d

	rra                                              ; $61bb: $1f
	dec e                                            ; $61bc: $1d
	jr nz, jr_038_61de                               ; $61bd: $20 $1f

	dec e                                            ; $61bf: $1d
	rra                                              ; $61c0: $1f

jr_038_61c1:
	jr nz, jr_038_61e2                               ; $61c1: $20 $1f

jr_038_61c3:
	rra                                              ; $61c3: $1f
	dec e                                            ; $61c4: $1d

jr_038_61c5:
	jr nz, jr_038_61e4                               ; $61c5: $20 $1d

jr_038_61c7:
	cp [hl]                                          ; $61c7: $be
	db $fd                                           ; $61c8: $fd
	ret nc                                           ; $61c9: $d0

	halt                                             ; $61ca: $76
	cp $fb                                           ; $61cb: $fe $fb
	sub d                                            ; $61cd: $92
	rst JumpTable                                          ; $61ce: $c7

jr_038_61cf:
	sub a                                            ; $61cf: $97
	rra                                              ; $61d0: $1f

jr_038_61d1:
	ld a, [hl]                                       ; $61d1: $7e
	ld bc, $a000                                     ; $61d2: $01 $00 $a0
	dec de                                           ; $61d5: $1b
	jr nc, jr_038_616f                               ; $61d6: $30 $97

jr_038_61d8:
	nop                                              ; $61d8: $00

jr_038_61d9:
	ld a, [hl]                                       ; $61d9: $7e
	ld [bc], a                                       ; $61da: $02
	nop                                              ; $61db: $00
	and c                                            ; $61dc: $a1
	dec de                                           ; $61dd: $1b

jr_038_61de:
	jr jr_038_61a6                                   ; $61de: $18 $c6

	ld a, [hl]                                       ; $61e0: $7e
	ld [bc], a                                       ; $61e1: $02

jr_038_61e2:
	nop                                              ; $61e2: $00
	and d                                            ; $61e3: $a2

jr_038_61e4:
	dec de                                           ; $61e4: $1b
	jr jr_038_6202                                   ; $61e5: $18 $1b

	jr jr_038_617f                                   ; $61e7: $18 $96

	jr jr_038_61f2                                   ; $61e9: $18 $07

	dec de                                           ; $61eb: $1b
	jr jr_038_6184                                   ; $61ec: $18 $96

	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	sub a                                            ; $61f0: $97
	rra                                              ; $61f1: $1f

jr_038_61f2:
	rst JumpTable                                          ; $61f2: $c7
	ld a, [hl]                                       ; $61f3: $7e
	dec bc                                           ; $61f4: $0b
	jr jr_038_6197                                   ; $61f5: $18 $a0

	jr nz, jr_038_6229                               ; $61f7: $20 $30

	sub a                                            ; $61f9: $97
	nop                                              ; $61fa: $00
	ei                                               ; $61fb: $fb
	ld [bc], a                                       ; $61fc: $02
	or l                                             ; $61fd: $b5
	ld [hl], c                                       ; $61fe: $71
	ld [bc], a                                       ; $61ff: $02
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00

jr_038_6202:
	sub a                                            ; $6202: $97
	rra                                              ; $6203: $1f
	ld a, [hl]                                       ; $6204: $7e
	ld bc, $a000                                     ; $6205: $01 $00 $a0
	dec de                                           ; $6208: $1b
	jr nc, jr_038_61a2                               ; $6209: $30 $97

	nop                                              ; $620b: $00
	ld a, [hl]                                       ; $620c: $7e
	ld [bc], a                                       ; $620d: $02
	nop                                              ; $620e: $00
	and c                                            ; $620f: $a1
	dec de                                           ; $6210: $1b
	jr jr_038_61d9                                   ; $6211: $18 $c6

	ld a, [hl]                                       ; $6213: $7e
	ld [bc], a                                       ; $6214: $02
	nop                                              ; $6215: $00
	and d                                            ; $6216: $a2
	dec de                                           ; $6217: $1b
	jr @+$1d                                         ; $6218: $18 $1b

	jr @-$68                                         ; $621a: $18 $96

	jr jr_038_6225                                   ; $621c: $18 $07

	dec de                                           ; $621e: $1b
	jr @-$37                                         ; $621f: $18 $c7

	ld a, [hl]                                       ; $6221: $7e
	dec bc                                           ; $6222: $0b
	jr jr_038_61c5                                   ; $6223: $18 $a0

jr_038_6225:
	jr nz, jr_038_6257                               ; $6225: $20 $30

	ei                                               ; $6227: $fb
	or l                                             ; $6228: $b5

jr_038_6229:
	jp nc, $0000                                    ; $6229: $d2 $00 $00

	nop                                              ; $622c: $00
	ld a, [hl]                                       ; $622d: $7e
	add hl, bc                                       ; $622e: $09
	nop                                              ; $622f: $00
	and b                                            ; $6230: $a0
	jr c, jr_038_6238                                ; $6231: $38 $05

	nop                                              ; $6233: $00
	ld bc, $053b                                     ; $6234: $01 $3b $05
	nop                                              ; $6237: $00

jr_038_6238:
	ld bc, $107e                                     ; $6238: $01 $7e $10
	nop                                              ; $623b: $00
	and b                                            ; $623c: $a0
	add hl, sp                                       ; $623d: $39
	inc c                                            ; $623e: $0c
	or l                                             ; $623f: $b5
	or e                                             ; $6240: $b3
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00

jr_038_6243:
	nop                                              ; $6243: $00
	ld a, [hl]                                       ; $6244: $7e
	add hl, bc                                       ; $6245: $09
	nop                                              ; $6246: $00
	and b                                            ; $6247: $a0
	jr c, jr_038_624f                                ; $6248: $38 $05

	nop                                              ; $624a: $00
	ld bc, $053b                                     ; $624b: $01 $3b $05
	nop                                              ; $624e: $00

jr_038_624f:
	ld bc, $107e                                     ; $624f: $01 $7e $10
	nop                                              ; $6252: $00
	and b                                            ; $6253: $a0
	add hl, sp                                       ; $6254: $39
	inc c                                            ; $6255: $0c
	or l                                             ; $6256: $b5

jr_038_6257:
	add d                                            ; $6257: $82
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	ld a, [hl]                                       ; $625b: $7e
	add hl, bc                                       ; $625c: $09
	nop                                              ; $625d: $00
	and b                                            ; $625e: $a0
	jr c, jr_038_6266                                ; $625f: $38 $05

	nop                                              ; $6261: $00
	ld bc, $053b                                     ; $6262: $01 $3b $05
	nop                                              ; $6265: $00

jr_038_6266:
	ld bc, $107e                                     ; $6266: $01 $7e $10
	nop                                              ; $6269: $00
	and b                                            ; $626a: $a0
	add hl, sp                                       ; $626b: $39
	inc c                                            ; $626c: $0c
	or l                                             ; $626d: $b5
	ld h, d                                          ; $626e: $62
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	ld a, [hl]                                       ; $6272: $7e
	add hl, bc                                       ; $6273: $09
	nop                                              ; $6274: $00
	and b                                            ; $6275: $a0
	jr c, jr_038_627d                                ; $6276: $38 $05

	nop                                              ; $6278: $00
	ld bc, $053b                                     ; $6279: $01 $3b $05
	nop                                              ; $627c: $00

jr_038_627d:
	ld bc, $107e                                     ; $627d: $01 $7e $10
	nop                                              ; $6280: $00
	and b                                            ; $6281: $a0
	add hl, sp                                       ; $6282: $39
	inc c                                            ; $6283: $0c
	ei                                               ; $6284: $fb
	ld [bc], a                                       ; $6285: $02
	pop de                                           ; $6286: $d1
	rst JumpTable                                          ; $6287: $c7
	sub c                                            ; $6288: $91
	ld a, [hl]                                       ; $6289: $7e

Jump_038_628a:
	nop                                              ; $628a: $00
	ld bc, $01c0                                     ; $628b: $01 $c0 $01
	sub b                                            ; $628e: $90
	sub a                                            ; $628f: $97
	ld e, e                                          ; $6290: $5b
	sub h                                            ; $6291: $94
	inc d                                            ; $6292: $14
	ld bc, $9718                                     ; $6293: $01 $18 $97
	ld a, c                                          ; $6296: $79
	sub h                                            ; $6297: $94
	inc d                                            ; $6298: $14
	ld bc, $9418                                     ; $6299: $01 $18 $94
	ld [$0097], sp                                   ; $629c: $08 $97 $00
	sub e                                            ; $629f: $93
	add $7e                                          ; $62a0: $c6 $7e
	ld [bc], a                                       ; $62a2: $02
	nop                                              ; $62a3: $00
	and e                                            ; $62a4: $a3
	dec c                                            ; $62a5: $0d
	jr jr_038_62a8                                   ; $62a6: $18 $00

jr_038_62a8:
	xor b                                            ; $62a8: $a8
	add $00                                          ; $62a9: $c6 $00
	jr nc, jr_038_6243                               ; $62ab: $30 $96

	inc c                                            ; $62ad: $0c
	ld [bc], a                                       ; $62ae: $02
	ld a, l                                          ; $62af: $7d
	ld [bc], a                                       ; $62b0: $02
	ld a, [hl]                                       ; $62b1: $7e
	add hl, bc                                       ; $62b2: $09
	nop                                              ; $62b3: $00
	and d                                            ; $62b4: $a2
	ld [hl-], a                                      ; $62b5: $32
	inc c                                            ; $62b6: $0c
	ld [hl-], a                                      ; $62b7: $32
	inc c                                            ; $62b8: $0c
	or c                                             ; $62b9: $b1
	ld hl, $030c                                     ; $62ba: $21 $0c $03
	ld [hl-], a                                      ; $62bd: $32
	inc c                                            ; $62be: $0c
	pop bc                                           ; $62bf: $c1
	ld [hl-], a                                      ; $62c0: $32
	inc c                                            ; $62c1: $0c
	jp z, $3000                                      ; $62c2: $ca $00 $30

	sub [hl]                                         ; $62c5: $96
	inc c                                            ; $62c6: $0c
	ld [bc], a                                       ; $62c7: $02
	ld a, l                                          ; $62c8: $7d
	ld [bc], a                                       ; $62c9: $02
	ld a, [hl]                                       ; $62ca: $7e
	add hl, bc                                       ; $62cb: $09
	nop                                              ; $62cc: $00
	and d                                            ; $62cd: $a2
	ld [hl-], a                                      ; $62ce: $32
	inc c                                            ; $62cf: $0c
	ld [hl-], a                                      ; $62d0: $32
	inc c                                            ; $62d1: $0c
	add $31                                          ; $62d2: $c6 $31
	ld b, $c8                                        ; $62d4: $06 $c8
	ld [hl-], a                                      ; $62d6: $32
	ld b, $32                                        ; $62d7: $06 $32
	inc c                                            ; $62d9: $0c
	ld a, [hl]                                       ; $62da: $7e
	nop                                              ; $62db: $00
	sub e                                            ; $62dc: $93
	pop de                                           ; $62dd: $d1
	ei                                               ; $62de: $fb
	or c                                             ; $62df: $b1
	sub c                                            ; $62e0: $91
	ld b, $01                                        ; $62e1: $06 $01
	ld a, l                                          ; $62e3: $7d
	ld [bc], a                                       ; $62e4: $02
	add hl, de                                       ; $62e5: $19
	ld b, $19                                        ; $62e6: $06 $19
	ld b, $92                                        ; $62e8: $06 $92
	add hl, de                                       ; $62ea: $19
	ld b, $19                                        ; $62eb: $06 $19
	ld b, $19                                        ; $62ed: $06 $19
	ld b, $cb                                        ; $62ef: $06 $cb
	sub c                                            ; $62f1: $91
	add hl, de                                       ; $62f2: $19
	ld b, $90                                        ; $62f3: $06 $90
	add hl, de                                       ; $62f5: $19
	ld b, $19                                        ; $62f6: $06 $19
	ld b, $90                                        ; $62f8: $06 $90
	add hl, de                                       ; $62fa: $19
	ld b, $cb                                        ; $62fb: $06 $cb
	add hl, de                                       ; $62fd: $19
	ld b, $19                                        ; $62fe: $06 $19
	ld b, $c9                                        ; $6300: $06 $c9
	sub c                                            ; $6302: $91
	add hl, de                                       ; $6303: $19
	ld b, $19                                        ; $6304: $06 $19
	ld b, $92                                        ; $6306: $06 $92
	add hl, de                                       ; $6308: $19
	ld b, $93                                        ; $6309: $06 $93
	add hl, de                                       ; $630b: $19
	ld b, $19                                        ; $630c: $06 $19
	ld b, $fb                                        ; $630e: $06 $fb
	inc b                                            ; $6310: $04
	sub [hl]                                         ; $6311: $96
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	or l                                             ; $6314: $b5
	sub c                                            ; $6315: $91
	inc bc                                           ; $6316: $03
	ld b, $01                                        ; $6317: $06 $01
	ld a, l                                          ; $6319: $7d
	ld [bc], a                                       ; $631a: $02
	ld l, h                                          ; $631b: $6c
	add hl, de                                       ; $631c: $19
	ld b, $19                                        ; $631d: $06 $19
	ld b, $92                                        ; $631f: $06 $92
	add hl, de                                       ; $6321: $19
	ld b, $19                                        ; $6322: $06 $19
	ld b, $19                                        ; $6324: $06 $19
	ld b, $cb                                        ; $6326: $06 $cb
	sub c                                            ; $6328: $91
	add hl, de                                       ; $6329: $19
	ld b, $90                                        ; $632a: $06 $90
	add hl, de                                       ; $632c: $19
	ld b, $19                                        ; $632d: $06 $19
	ld b, $90                                        ; $632f: $06 $90
	add hl, de                                       ; $6331: $19
	ld b, $cb                                        ; $6332: $06 $cb
	add hl, de                                       ; $6334: $19
	ld b, $19                                        ; $6335: $06 $19
	ld b, $c9                                        ; $6337: $06 $c9
	sub c                                            ; $6339: $91
	add hl, de                                       ; $633a: $19
	ld b, $19                                        ; $633b: $06 $19
	ld b, $92                                        ; $633d: $06 $92
	add hl, de                                       ; $633f: $19
	ld b, $93                                        ; $6340: $06 $93
	add hl, de                                       ; $6342: $19
	ld b, $19                                        ; $6343: $06 $19
	ld b, $fb                                        ; $6345: $06 $fb
	or c                                             ; $6347: $b1
	sub c                                            ; $6348: $91
	ld b, $01                                        ; $6349: $06 $01
	ld [hl], b                                       ; $634b: $70
	ld a, l                                          ; $634c: $7d
	ld [bc], a                                       ; $634d: $02
	add hl, de                                       ; $634e: $19
	ld b, $19                                        ; $634f: $06 $19
	ld b, $92                                        ; $6351: $06 $92
	add hl, de                                       ; $6353: $19
	ld b, $19                                        ; $6354: $06 $19
	ld b, $19                                        ; $6356: $06 $19
	ld b, $cb                                        ; $6358: $06 $cb
	sub c                                            ; $635a: $91
	add hl, de                                       ; $635b: $19
	ld b, $90                                        ; $635c: $06 $90
	add hl, de                                       ; $635e: $19
	ld b, $19                                        ; $635f: $06 $19
	ld b, $90                                        ; $6361: $06 $90
	add hl, de                                       ; $6363: $19
	ld b, $cb                                        ; $6364: $06 $cb
	add hl, de                                       ; $6366: $19
	ld b, $19                                        ; $6367: $06 $19
	ld b, $c9                                        ; $6369: $06 $c9
	sub c                                            ; $636b: $91
	add hl, de                                       ; $636c: $19
	ld b, $19                                        ; $636d: $06 $19
	ld b, $92                                        ; $636f: $06 $92
	add hl, de                                       ; $6371: $19
	ld b, $93                                        ; $6372: $06 $93
	add hl, de                                       ; $6374: $19
	ld b, $19                                        ; $6375: $06 $19
	ld b, $fb                                        ; $6377: $06 $fb
	ld [bc], a                                       ; $6379: $02
	or c                                             ; $637a: $b1
	sub c                                            ; $637b: $91
	ld b, $01                                        ; $637c: $06 $01
	ld l, h                                          ; $637e: $6c
	ld a, l                                          ; $637f: $7d
	ld [bc], a                                       ; $6380: $02
	add hl, de                                       ; $6381: $19
	ld b, $19                                        ; $6382: $06 $19
	ld b, $92                                        ; $6384: $06 $92
	add hl, de                                       ; $6386: $19
	ld b, $19                                        ; $6387: $06 $19
	ld b, $19                                        ; $6389: $06 $19
	ld b, $cb                                        ; $638b: $06 $cb
	sub c                                            ; $638d: $91
	add hl, de                                       ; $638e: $19
	ld b, $90                                        ; $638f: $06 $90
	add hl, de                                       ; $6391: $19
	ld b, $19                                        ; $6392: $06 $19
	ld b, $90                                        ; $6394: $06 $90
	add hl, de                                       ; $6396: $19
	ld b, $cb                                        ; $6397: $06 $cb
	add hl, de                                       ; $6399: $19
	ld b, $19                                        ; $639a: $06 $19
	ld b, $c9                                        ; $639c: $06 $c9
	sub c                                            ; $639e: $91
	add hl, de                                       ; $639f: $19
	ld b, $19                                        ; $63a0: $06 $19
	ld b, $92                                        ; $63a2: $06 $92
	add hl, de                                       ; $63a4: $19
	ld b, $93                                        ; $63a5: $06 $93
	add hl, de                                       ; $63a7: $19
	ld b, $19                                        ; $63a8: $06 $19
	ld b, $93                                        ; $63aa: $06 $93
	pop de                                           ; $63ac: $d1
	ei                                               ; $63ad: $fb
	or c                                             ; $63ae: $b1
	sub c                                            ; $63af: $91
	ld b, $01                                        ; $63b0: $06 $01
	ld [hl], b                                       ; $63b2: $70
	ld a, l                                          ; $63b3: $7d
	inc b                                            ; $63b4: $04
	add hl, de                                       ; $63b5: $19
	ld b, $19                                        ; $63b6: $06 $19
	ld b, $92                                        ; $63b8: $06 $92
	add hl, de                                       ; $63ba: $19
	ld b, $19                                        ; $63bb: $06 $19
	ld b, $19                                        ; $63bd: $06 $19
	ld b, $cb                                        ; $63bf: $06 $cb
	sub c                                            ; $63c1: $91
	add hl, de                                       ; $63c2: $19
	ld b, $90                                        ; $63c3: $06 $90
	add hl, de                                       ; $63c5: $19
	ld b, $19                                        ; $63c6: $06 $19
	ld b, $90                                        ; $63c8: $06 $90
	add hl, de                                       ; $63ca: $19
	ld b, $cb                                        ; $63cb: $06 $cb
	add hl, de                                       ; $63cd: $19
	ld b, $19                                        ; $63ce: $06 $19
	ld b, $c9                                        ; $63d0: $06 $c9
	sub c                                            ; $63d2: $91
	add hl, de                                       ; $63d3: $19
	ld b, $19                                        ; $63d4: $06 $19
	ld b, $92                                        ; $63d6: $06 $92
	add hl, de                                       ; $63d8: $19
	ld b, $93                                        ; $63d9: $06 $93
	add hl, de                                       ; $63db: $19
	ld b, $19                                        ; $63dc: $06 $19
	ld b, $fb                                        ; $63de: $06 $fb
	inc bc                                           ; $63e0: $03
	or l                                             ; $63e1: $b5
	ld d, c                                          ; $63e2: $51
	inc bc                                           ; $63e3: $03
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	sub h                                            ; $63e6: $94
	ccf                                              ; $63e7: $3f
	cp [hl]                                          ; $63e8: $be
	ld b, $3d                                        ; $63e9: $06 $3d
	ld a, $3f                                        ; $63eb: $3e $3f
	ld b, b                                          ; $63ed: $40
	cp [hl]                                          ; $63ee: $be
	add $41                                          ; $63ef: $c6 $41
	ld b, $42                                        ; $63f1: $06 $42
	ld b, $c7                                        ; $63f3: $06 $c7
	ld b, e                                          ; $63f5: $43
	ld b, $44                                        ; $63f6: $06 $44
	ld b, $c7                                        ; $63f8: $06 $c7
	ld h, d                                          ; $63fa: $62
	sub h                                            ; $63fb: $94
	ld c, a                                          ; $63fc: $4f
	cp [hl]                                          ; $63fd: $be
	inc b                                            ; $63fe: $04
	ld c, b                                          ; $63ff: $48
	ld b, a                                          ; $6400: $47
	ld b, [hl]                                       ; $6401: $46
	ld b, l                                          ; $6402: $45
	ld b, h                                          ; $6403: $44
	ld b, h                                          ; $6404: $44
	cp [hl]                                          ; $6405: $be
	rst JumpTable                                          ; $6406: $c7
	ld h, d                                          ; $6407: $62
	cp [hl]                                          ; $6408: $be
	inc bc                                           ; $6409: $03
	ld b, e                                          ; $640a: $43
	ld b, d                                          ; $640b: $42
	ld b, c                                          ; $640c: $41
	ld b, b                                          ; $640d: $40
	cp [hl]                                          ; $640e: $be
	add $be                                          ; $640f: $c6 $be
	inc bc                                           ; $6411: $03
	ccf                                              ; $6412: $3f
	ld a, $3d                                        ; $6413: $3e $3d
	inc a                                            ; $6415: $3c
	cp [hl]                                          ; $6416: $be
	ei                                               ; $6417: $fb
	sub e                                            ; $6418: $93
	ret z                                            ; $6419: $c8

	ld [hl], b                                       ; $641a: $70
	ld a, [hl]                                       ; $641b: $7e
	ld bc, $a300                                     ; $641c: $01 $00 $a3
	ld bc, $01c0                                     ; $641f: $01 $c0 $01
	ret nz                                           ; $6422: $c0

	ei                                               ; $6423: $fb
	ld [bc], a                                       ; $6424: $02
	sub e                                            ; $6425: $93
	res 2, a                                         ; $6426: $cb $97
	nop                                              ; $6428: $00
	ld [hl], b                                       ; $6429: $70
	ld a, l                                          ; $642a: $7d
	nop                                              ; $642b: $00
	db $fc                                           ; $642c: $fc
	ei                                               ; $642d: $fb
	ld a, [hl]                                       ; $642e: $7e
	ld bc, $a500                                     ; $642f: $01 $00 $a5
	sub [hl]                                         ; $6432: $96
	rst $38                                          ; $6433: $ff
	ld [bc], a                                       ; $6434: $02
	cp [hl]                                          ; $6435: $be
	ld b, $03                                        ; $6436: $06 $03
	inc bc                                           ; $6438: $03
	inc bc                                           ; $6439: $03
	inc bc                                           ; $643a: $03
	inc bc                                           ; $643b: $03
	inc bc                                           ; $643c: $03
	inc bc                                           ; $643d: $03
	inc bc                                           ; $643e: $03
	cp [hl]                                          ; $643f: $be
	cp [hl]                                          ; $6440: $be
	ld b, $03                                        ; $6441: $06 $03
	inc bc                                           ; $6443: $03
	ld a, [bc]                                       ; $6444: $0a
	inc bc                                           ; $6445: $03
	inc bc                                           ; $6446: $03
	inc bc                                           ; $6447: $03
	cp [hl]                                          ; $6448: $be
	ld a, [hl]                                       ; $6449: $7e
	nop                                              ; $644a: $00
	rrca                                             ; $644b: $0f
	ld b, $7e                                        ; $644c: $06 $7e
	ld bc, $a500                                     ; $644e: $01 $00 $a5
	inc bc                                           ; $6451: $03
	ld b, $fb                                        ; $6452: $06 $fb
	ld [bc], a                                       ; $6454: $02
	ei                                               ; $6455: $fb
	cp [hl]                                          ; $6456: $be
	ld b, $01                                        ; $6457: $06 $01
	ld bc, $0101                                     ; $6459: $01 $01 $01
	ld bc, $0101                                     ; $645c: $01 $01 $01
	ld bc, $bebe                                     ; $645f: $01 $be $be
	ld b, $01                                        ; $6462: $06 $01
	ld bc, $0108                                     ; $6464: $01 $08 $01
	ld bc, $0d01                                     ; $6467: $01 $01 $0d
	ld bc, $fbbe                                     ; $646a: $01 $be $fb
	ld [bc], a                                       ; $646d: $02
	ei                                               ; $646e: $fb
	jp z, $097e                                      ; $646f: $ca $7e $09

	nop                                              ; $6472: $00
	and c                                            ; $6473: $a1
	cp [hl]                                          ; $6474: $be
	ld b, $0b                                        ; $6475: $06 $0b
	dec bc                                           ; $6477: $0b
	dec bc                                           ; $6478: $0b
	dec bc                                           ; $6479: $0b
	dec bc                                           ; $647a: $0b
	dec bc                                           ; $647b: $0b
	dec bc                                           ; $647c: $0b
	dec bc                                           ; $647d: $0b
	cp [hl]                                          ; $647e: $be
	dec bc                                           ; $647f: $0b
	ld b, $0b                                        ; $6480: $06 $0b
	ld b, $7e                                        ; $6482: $06 $7e
	add hl, bc                                       ; $6484: $09
	nop                                              ; $6485: $00
	and b                                            ; $6486: $a0
	ld [de], a                                       ; $6487: $12
	ld b, $7e                                        ; $6488: $06 $7e
	add hl, bc                                       ; $648a: $09
	nop                                              ; $648b: $00
	and c                                            ; $648c: $a1
	dec bc                                           ; $648d: $0b
	ld b, $0b                                        ; $648e: $06 $0b
	ld b, $0b                                        ; $6490: $06 $0b
	ld b, $7e                                        ; $6492: $06 $7e
	add hl, bc                                       ; $6494: $09
	nop                                              ; $6495: $00
	and b                                            ; $6496: $a0
	rla                                              ; $6497: $17
	ld b, $7e                                        ; $6498: $06 $7e
	add hl, bc                                       ; $649a: $09
	nop                                              ; $649b: $00
	and c                                            ; $649c: $a1
	dec bc                                           ; $649d: $0b
	ld b, $fb                                        ; $649e: $06 $fb
	ld [bc], a                                       ; $64a0: $02
	ei                                               ; $64a1: $fb
	bit 7, [hl]                                      ; $64a2: $cb $7e
	ld bc, $a500                                     ; $64a4: $01 $00 $a5
	cp [hl]                                          ; $64a7: $be
	ld b, $01                                        ; $64a8: $06 $01
	ld bc, $0101                                     ; $64aa: $01 $01 $01
	ld bc, $0101                                     ; $64ad: $01 $01 $01
	ld bc, $bebe                                     ; $64b0: $01 $be $be
	ld b, $01                                        ; $64b3: $06 $01
	ld bc, $0108                                     ; $64b5: $01 $08 $01
	ld bc, $0d01                                     ; $64b8: $01 $01 $0d
	ld bc, $fbbe                                     ; $64bb: $01 $be $fb
	ld [bc], a                                       ; $64be: $02
	db $fc                                           ; $64bf: $fc
	inc bc                                           ; $64c0: $03

jr_038_64c1:
	cp $ff                                           ; $64c1: $fe $ff
	ret nc                                           ; $64c3: $d0

	halt                                             ; $64c4: $76
	cp $92                                           ; $64c5: $fe $92
	jp z, $4f97                                      ; $64c7: $ca $97 $4f

	ld a, [hl]                                       ; $64ca: $7e
	ld bc, $a000                                     ; $64cb: $01 $00 $a0
	ld e, $30                                        ; $64ce: $1e $30
	sub a                                            ; $64d0: $97
	nop                                              ; $64d1: $00
	ld a, [hl]                                       ; $64d2: $7e
	dec bc                                           ; $64d3: $0b
	nop                                              ; $64d4: $00
	and b                                            ; $64d5: $a0
	ld e, $18                                        ; $64d6: $1e $18
	ld a, [hl]                                       ; $64d8: $7e
	dec bc                                           ; $64d9: $0b
	nop                                              ; $64da: $00
	and c                                            ; $64db: $a1
	ld e, $18                                        ; $64dc: $1e $18
	ret                                              ; $64de: $c9


	ld e, $18                                        ; $64df: $1e $18
	sub [hl]                                         ; $64e1: $96
	jr jr_038_64eb                                   ; $64e2: $18 $07

	ld e, $18                                        ; $64e4: $1e $18
	sub [hl]                                         ; $64e6: $96
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	sub a                                            ; $64e9: $97
	ld c, l                                          ; $64ea: $4d

jr_038_64eb:
	ld a, [hl]                                       ; $64eb: $7e
	dec bc                                           ; $64ec: $0b
	jr @-$5e                                         ; $64ed: $18 $a0

	inc hl                                           ; $64ef: $23
	jr @-$67                                         ; $64f0: $18 $97

	nop                                              ; $64f2: $00
	or c                                             ; $64f3: $b1
	and c                                            ; $64f4: $a1

jr_038_64f5:
	rst $38                                          ; $64f5: $ff
	rlca                                             ; $64f6: $07
	inc hl                                           ; $64f7: $23
	jr jr_038_64f5                                   ; $64f8: $18 $fb

	or c                                             ; $64fa: $b1
	and c                                            ; $64fb: $a1
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	sub a                                            ; $64fe: $97
	ld c, a                                          ; $64ff: $4f
	ld a, [hl]                                       ; $6500: $7e
	ld bc, $a000                                     ; $6501: $01 $00 $a0
	ld e, $30                                        ; $6504: $1e $30
	sub a                                            ; $6506: $97
	nop                                              ; $6507: $00
	ld a, [hl]                                       ; $6508: $7e
	dec bc                                           ; $6509: $0b
	nop                                              ; $650a: $00
	and b                                            ; $650b: $a0
	ld e, $18                                        ; $650c: $1e $18
	ld a, [hl]                                       ; $650e: $7e
	dec bc                                           ; $650f: $0b
	nop                                              ; $6510: $00
	and c                                            ; $6511: $a1
	ld e, $18                                        ; $6512: $1e $18
	ret                                              ; $6514: $c9


	ld e, $18                                        ; $6515: $1e $18
	sub [hl]                                         ; $6517: $96
	jr jr_038_6521                                   ; $6518: $18 $07

	ld e, $18                                        ; $651a: $1e $18
	jp z, $0b7e                                      ; $651c: $ca $7e $0b

jr_038_651f:
	jr jr_038_64c1                                   ; $651f: $18 $a0

jr_038_6521:
	inc hl                                           ; $6521: $23
	jr nc, jr_038_651f                               ; $6522: $30 $fb

	dec b                                            ; $6524: $05
	sub e                                            ; $6525: $93
	adc $fb                                          ; $6526: $ce $fb
	sub [hl]                                         ; $6528: $96
	ld b, $01                                        ; $6529: $06 $01
	ld a, h                                          ; $652b: $7c
	add hl, de                                       ; $652c: $19
	ld b, $19                                        ; $652d: $06 $19
	ld b, $d3                                        ; $652f: $06 $d3
	jr nz, @+$08                                     ; $6531: $20 $06

	add hl, de                                       ; $6533: $19
	ld b, $19                                        ; $6534: $06 $19
	ld b, $d1                                        ; $6536: $06 $d1
	jr nz, jr_038_6540                               ; $6538: $20 $06

	add hl, de                                       ; $653a: $19
	ld b, $19                                        ; $653b: $06 $19
	ld b, $d2                                        ; $653d: $06 $d2
	add hl, de                                       ; $653f: $19

jr_038_6540:
	ld b, $19                                        ; $6540: $06 $19
	ld b, $23                                        ; $6542: $06 $23
	ld b, $d1                                        ; $6544: $06 $d1
	cp [hl]                                          ; $6546: $be
	ld b, $19                                        ; $6547: $06 $19
	add hl, de                                       ; $6549: $19
	jr nz, jr_038_6565                               ; $654a: $20 $19

	ld [hl+], a                                      ; $654c: $22
	cp [hl]                                          ; $654d: $be
	ei                                               ; $654e: $fb
	ld [bc], a                                       ; $654f: $02
	ei                                               ; $6550: $fb
	sub [hl]                                         ; $6551: $96
	ld b, $01                                        ; $6552: $06 $01
	inc e                                            ; $6554: $1c
	ld b, $1c                                        ; $6555: $06 $1c
	ld b, $d3                                        ; $6557: $06 $d3
	inc hl                                           ; $6559: $23
	ld b, $1c                                        ; $655a: $06 $1c
	ld b, $1c                                        ; $655c: $06 $1c
	ld b, $d1                                        ; $655e: $06 $d1
	inc hl                                           ; $6560: $23
	ld b, $1c                                        ; $6561: $06 $1c
	ld b, $1c                                        ; $6563: $06 $1c

jr_038_6565:
	ld b, $d2                                        ; $6565: $06 $d2
	inc e                                            ; $6567: $1c
	ld b, $1c                                        ; $6568: $06 $1c
	ld b, $26                                        ; $656a: $06 $26
	ld b, $d1                                        ; $656c: $06 $d1
	cp [hl]                                          ; $656e: $be
	ld b, $1c                                        ; $656f: $06 $1c
	inc e                                            ; $6571: $1c
	inc hl                                           ; $6572: $23
	inc e                                            ; $6573: $1c
	dec h                                            ; $6574: $25
	cp [hl]                                          ; $6575: $be
	ei                                               ; $6576: $fb
	ld [bc], a                                       ; $6577: $02
	sub e                                            ; $6578: $93
	adc $fb                                          ; $6579: $ce $fb
	sub [hl]                                         ; $657b: $96
	ld b, $01                                        ; $657c: $06 $01
	ld a, h                                          ; $657e: $7c
	add hl, de                                       ; $657f: $19
	ld b, $19                                        ; $6580: $06 $19
	ld b, $d3                                        ; $6582: $06 $d3
	jr nz, @+$08                                     ; $6584: $20 $06

	add hl, de                                       ; $6586: $19
	ld b, $19                                        ; $6587: $06 $19
	ld b, $d1                                        ; $6589: $06 $d1
	jr nz, jr_038_6593                               ; $658b: $20 $06

	add hl, de                                       ; $658d: $19
	ld b, $19                                        ; $658e: $06 $19
	ld b, $d2                                        ; $6590: $06 $d2
	add hl, de                                       ; $6592: $19

jr_038_6593:
	ld b, $19                                        ; $6593: $06 $19
	ld b, $23                                        ; $6595: $06 $23
	ld b, $d1                                        ; $6597: $06 $d1
	cp [hl]                                          ; $6599: $be
	ld b, $19                                        ; $659a: $06 $19
	add hl, de                                       ; $659c: $19
	jr nz, jr_038_65b8                               ; $659d: $20 $19

	ld [hl+], a                                      ; $659f: $22
	cp [hl]                                          ; $65a0: $be
	ei                                               ; $65a1: $fb
	ld [bc], a                                       ; $65a2: $02
	ei                                               ; $65a3: $fb
	sub [hl]                                         ; $65a4: $96
	ld b, $01                                        ; $65a5: $06 $01
	inc e                                            ; $65a7: $1c
	ld b, $1c                                        ; $65a8: $06 $1c
	ld b, $d3                                        ; $65aa: $06 $d3
	inc hl                                           ; $65ac: $23
	ld b, $1c                                        ; $65ad: $06 $1c
	ld b, $1c                                        ; $65af: $06 $1c
	ld b, $d1                                        ; $65b1: $06 $d1
	inc hl                                           ; $65b3: $23
	ld b, $1c                                        ; $65b4: $06 $1c
	ld b, $1c                                        ; $65b6: $06 $1c

jr_038_65b8:
	ld b, $d2                                        ; $65b8: $06 $d2
	inc e                                            ; $65ba: $1c
	ld b, $1c                                        ; $65bb: $06 $1c
	ld b, $26                                        ; $65bd: $06 $26
	ld b, $d1                                        ; $65bf: $06 $d1
	cp [hl]                                          ; $65c1: $be
	ld b, $1c                                        ; $65c2: $06 $1c
	inc e                                            ; $65c4: $1c
	inc hl                                           ; $65c5: $23
	inc e                                            ; $65c6: $1c
	dec h                                            ; $65c7: $25
	cp [hl]                                          ; $65c8: $be
	ei                                               ; $65c9: $fb
	ld [bc], a                                       ; $65ca: $02
	sub e                                            ; $65cb: $93
	adc $fb                                          ; $65cc: $ce $fb
	sub [hl]                                         ; $65ce: $96
	ld b, $01                                        ; $65cf: $06 $01
	ld a, h                                          ; $65d1: $7c
	add hl, de                                       ; $65d2: $19
	ld b, $19                                        ; $65d3: $06 $19
	ld b, $d3                                        ; $65d5: $06 $d3
	jr nz, @+$08                                     ; $65d7: $20 $06

	add hl, de                                       ; $65d9: $19
	ld b, $19                                        ; $65da: $06 $19
	ld b, $d1                                        ; $65dc: $06 $d1
	jr nz, jr_038_65e6                               ; $65de: $20 $06

	add hl, de                                       ; $65e0: $19
	ld b, $19                                        ; $65e1: $06 $19
	ld b, $d2                                        ; $65e3: $06 $d2
	add hl, de                                       ; $65e5: $19

jr_038_65e6:
	ld b, $19                                        ; $65e6: $06 $19
	ld b, $23                                        ; $65e8: $06 $23
	ld b, $d1                                        ; $65ea: $06 $d1
	cp [hl]                                          ; $65ec: $be
	ld b, $19                                        ; $65ed: $06 $19
	add hl, de                                       ; $65ef: $19
	jr nz, jr_038_660b                               ; $65f0: $20 $19

	ld [hl+], a                                      ; $65f2: $22
	cp [hl]                                          ; $65f3: $be
	ei                                               ; $65f4: $fb
	ld [bc], a                                       ; $65f5: $02
	ei                                               ; $65f6: $fb
	sub [hl]                                         ; $65f7: $96
	ld b, $01                                        ; $65f8: $06 $01
	inc e                                            ; $65fa: $1c
	ld b, $1c                                        ; $65fb: $06 $1c
	ld b, $d3                                        ; $65fd: $06 $d3
	inc hl                                           ; $65ff: $23
	ld b, $1c                                        ; $6600: $06 $1c
	ld b, $1c                                        ; $6602: $06 $1c
	ld b, $d1                                        ; $6604: $06 $d1
	inc hl                                           ; $6606: $23
	ld b, $1c                                        ; $6607: $06 $1c
	ld b, $1c                                        ; $6609: $06 $1c

jr_038_660b:
	ld b, $d2                                        ; $660b: $06 $d2
	inc e                                            ; $660d: $1c
	ld b, $1c                                        ; $660e: $06 $1c
	ld b, $26                                        ; $6610: $06 $26
	ld b, $d1                                        ; $6612: $06 $d1
	cp [hl]                                          ; $6614: $be
	ld b, $1c                                        ; $6615: $06 $1c
	inc e                                            ; $6617: $1c
	inc hl                                           ; $6618: $23
	inc e                                            ; $6619: $1c
	dec h                                            ; $661a: $25
	cp [hl]                                          ; $661b: $be
	ei                                               ; $661c: $fb
	ld [bc], a                                       ; $661d: $02
	sub e                                            ; $661e: $93
	adc $fb                                          ; $661f: $ce $fb
	sub [hl]                                         ; $6621: $96
	ld b, $01                                        ; $6622: $06 $01
	ld [hl], b                                       ; $6624: $70
	add hl, de                                       ; $6625: $19
	ld b, $19                                        ; $6626: $06 $19
	ld b, $d3                                        ; $6628: $06 $d3
	jr nz, @+$08                                     ; $662a: $20 $06

	add hl, de                                       ; $662c: $19
	ld b, $19                                        ; $662d: $06 $19
	ld b, $d1                                        ; $662f: $06 $d1
	jr nz, jr_038_6639                               ; $6631: $20 $06

	add hl, de                                       ; $6633: $19
	ld b, $19                                        ; $6634: $06 $19
	ld b, $d2                                        ; $6636: $06 $d2
	add hl, de                                       ; $6638: $19

jr_038_6639:
	ld b, $19                                        ; $6639: $06 $19
	ld b, $23                                        ; $663b: $06 $23
	ld b, $d1                                        ; $663d: $06 $d1
	cp [hl]                                          ; $663f: $be
	ld b, $19                                        ; $6640: $06 $19
	add hl, de                                       ; $6642: $19
	jr nz, jr_038_665e                               ; $6643: $20 $19

	ld [hl+], a                                      ; $6645: $22
	cp [hl]                                          ; $6646: $be
	ei                                               ; $6647: $fb
	ld [bc], a                                       ; $6648: $02
	ei                                               ; $6649: $fb
	sub [hl]                                         ; $664a: $96
	ld b, $01                                        ; $664b: $06 $01
	inc e                                            ; $664d: $1c
	ld b, $1c                                        ; $664e: $06 $1c
	ld b, $d3                                        ; $6650: $06 $d3
	inc hl                                           ; $6652: $23
	ld b, $1c                                        ; $6653: $06 $1c
	ld b, $1c                                        ; $6655: $06 $1c
	ld b, $d1                                        ; $6657: $06 $d1
	inc hl                                           ; $6659: $23
	ld b, $1c                                        ; $665a: $06 $1c
	ld b, $1c                                        ; $665c: $06 $1c

jr_038_665e:
	ld b, $d2                                        ; $665e: $06 $d2
	inc e                                            ; $6660: $1c
	ld b, $1c                                        ; $6661: $06 $1c
	ld b, $26                                        ; $6663: $06 $26
	ld b, $d1                                        ; $6665: $06 $d1
	cp [hl]                                          ; $6667: $be
	ld b, $1c                                        ; $6668: $06 $1c
	inc e                                            ; $666a: $1c
	inc hl                                           ; $666b: $23
	inc e                                            ; $666c: $1c
	dec h                                            ; $666d: $25
	cp [hl]                                          ; $666e: $be
	ei                                               ; $666f: $fb
	ld bc, $3000                                     ; $6670: $01 $00 $30
	or l                                             ; $6673: $b5
	and c                                            ; $6674: $a1
	inc bc                                           ; $6675: $03
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	ld a, [hl]                                       ; $6678: $7e
	dec b                                            ; $6679: $05
	nop                                              ; $667a: $00
	and d                                            ; $667b: $a2
	ld [de], a                                       ; $667c: $12
	ld b, $97                                        ; $667d: $06 $97
	nop                                              ; $667f: $00
	call nz, $1293                                   ; $6680: $c4 $93 $12
	ld a, [bc]                                       ; $6683: $0a
	sub a                                            ; $6684: $97
	ld l, h                                          ; $6685: $6c
	sub d                                            ; $6686: $92
	ld [de], a                                       ; $6687: $12
	ld [de], a                                       ; $6688: $12
	sub a                                            ; $6689: $97
	ld a, l                                          ; $668a: $7d
	sub c                                            ; $668b: $91
	ld [de], a                                       ; $668c: $12
	ld c, $97                                        ; $668d: $0e $97
	nop                                              ; $668f: $00
	ei                                               ; $6690: $fb
	or l                                             ; $6691: $b5
	pop bc                                           ; $6692: $c1
	ld bc, $01ff                                     ; $6693: $01 $ff $01
	cp [hl]                                          ; $6696: $be
	ld b, $14                                        ; $6697: $06 $14
	dec d                                            ; $6699: $15
	rla                                              ; $669a: $17
	add hl, de                                       ; $669b: $19
	inc d                                            ; $669c: $14
	cp [hl]                                          ; $669d: $be
	db $d3                                           ; $669e: $d3
	cp [hl]                                          ; $669f: $be
	ld b, $15                                        ; $66a0: $06 $15
	rla                                              ; $66a2: $17
	add hl, de                                       ; $66a3: $19
	inc d                                            ; $66a4: $14
	cp [hl]                                          ; $66a5: $be
	pop de                                           ; $66a6: $d1
	cp [hl]                                          ; $66a7: $be
	ld b, $15                                        ; $66a8: $06 $15
	rla                                              ; $66aa: $17
	add hl, de                                       ; $66ab: $19
	inc d                                            ; $66ac: $14
	dec d                                            ; $66ad: $15
	rla                                              ; $66ae: $17
	cp [hl]                                          ; $66af: $be
	jp nc, $0619                                     ; $66b0: $d2 $19 $06

	cp [hl]                                          ; $66b3: $be
	ld b, $12                                        ; $66b4: $06 $12
	inc d                                            ; $66b6: $14
	dec d                                            ; $66b7: $15
	rla                                              ; $66b8: $17
	rla                                              ; $66b9: $17
	cp [hl]                                          ; $66ba: $be
	pop de                                           ; $66bb: $d1
	inc d                                            ; $66bc: $14
	ld b, $15                                        ; $66bd: $06 $15
	ld b, $17                                        ; $66bf: $06 $17
	ld b, $12                                        ; $66c1: $06 $12
	ld b, $14                                        ; $66c3: $06 $14
	ld b, $15                                        ; $66c5: $06 $15
	ld b, $d3                                        ; $66c7: $06 $d3
	cp [hl]                                          ; $66c9: $be
	ld b, $17                                        ; $66ca: $06 $17
	ld [de], a                                       ; $66cc: $12
	inc d                                            ; $66cd: $14
	dec d                                            ; $66ce: $15
	cp [hl]                                          ; $66cf: $be
	pop de                                           ; $66d0: $d1
	rla                                              ; $66d1: $17
	ld b, $17                                        ; $66d2: $06 $17
	ld b, $14                                        ; $66d4: $06 $14
	ld b, $17                                        ; $66d6: $06 $17
	ld b, $d2                                        ; $66d8: $06 $d2
	cp [hl]                                          ; $66da: $be
	ld b, $19                                        ; $66db: $06 $19
	rla                                              ; $66dd: $17
	inc d                                            ; $66de: $14
	dec d                                            ; $66df: $15
	cp [hl]                                          ; $66e0: $be
	pop de                                           ; $66e1: $d1
	rla                                              ; $66e2: $17
	ld b, $14                                        ; $66e3: $06 $14
	ld b, $d3                                        ; $66e5: $06 $d3
	cp [hl]                                          ; $66e7: $be
	ld b, $15                                        ; $66e8: $06 $15
	rla                                              ; $66ea: $17
	add hl, de                                       ; $66eb: $19
	inc d                                            ; $66ec: $14
	cp [hl]                                          ; $66ed: $be
	pop de                                           ; $66ee: $d1
	dec d                                            ; $66ef: $15
	ld b, $17                                        ; $66f0: $06 $17
	ld b, $d2                                        ; $66f2: $06 $d2
	add hl, de                                       ; $66f4: $19
	ld b, $14                                        ; $66f5: $06 $14
	ld b, $17                                        ; $66f7: $06 $17
	ld b, $19                                        ; $66f9: $06 $19
	ld b, $d1                                        ; $66fb: $06 $d1
	cp [hl]                                          ; $66fd: $be
	ld b, $1a                                        ; $66fe: $06 $1a
	inc d                                            ; $6700: $14
	rla                                              ; $6701: $17
	add hl, de                                       ; $6702: $19
	cp [hl]                                          ; $6703: $be
	db $d3                                           ; $6704: $d3
	cp [hl]                                          ; $6705: $be
	ld b, $1a                                        ; $6706: $06 $1a
	inc d                                            ; $6708: $14
	rla                                              ; $6709: $17
	add hl, de                                       ; $670a: $19
	cp [hl]                                          ; $670b: $be
	pop de                                           ; $670c: $d1
	ld a, [de]                                       ; $670d: $1a
	ld b, $14                                        ; $670e: $06 $14
	ld b, $17                                        ; $6710: $06 $17
	ld b, $d2                                        ; $6712: $06 $d2
	add hl, de                                       ; $6714: $19
	ld b, $1a                                        ; $6715: $06 $1a
	ld b, $fb                                        ; $6717: $06 $fb
	ld [bc], a                                       ; $6719: $02
	sub [hl]                                         ; $671a: $96
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	ld a, l                                          ; $671d: $7d
	nop                                              ; $671e: $00
	ld a, [hl]                                       ; $671f: $7e
	nop                                              ; $6720: $00
	ld [hl], b                                       ; $6721: $70
	db $fc                                           ; $6722: $fc
	ei                                               ; $6723: $fb
	sub d                                            ; $6724: $92
	call z, $97d1                                    ; $6725: $cc $d1 $97
	ld e, a                                          ; $6728: $5f
	ld [hl+], a                                      ; $6729: $22
	inc h                                            ; $672a: $24
	daa                                              ; $672b: $27
	inc h                                            ; $672c: $24
	ld a, l                                          ; $672d: $7d
	ld bc, $182e                                     ; $672e: $01 $2e $18
	sub a                                            ; $6731: $97
	nop                                              ; $6732: $00
	ret                                              ; $6733: $c9


	ld l, $12                                        ; $6734: $2e $12
	sub [hl]                                         ; $6736: $96
	rst $38                                          ; $6737: $ff
	rlca                                             ; $6738: $07
	ld l, $1e                                        ; $6739: $2e $1e
	ld a, l                                          ; $673b: $7d
	nop                                              ; $673c: $00
	sub [hl]                                         ; $673d: $96
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	sub a                                            ; $6740: $97
	ld e, a                                          ; $6741: $5f
	daa                                              ; $6742: $27
	jr @+$7f                                         ; $6743: $18 $7d

	ld bc, $182e                                     ; $6745: $01 $2e $18
	ei                                               ; $6748: $fb
	inc b                                            ; $6749: $04
	db $fc                                           ; $674a: $fc
	inc bc                                           ; $674b: $03
	cp $ff                                           ; $674c: $fe $ff
	ret nc                                           ; $674e: $d0

	halt                                             ; $674f: $76
	cp $c4                                           ; $6750: $fe $c4
	add e                                            ; $6752: $83
	dec c                                            ; $6753: $0d
	ld h, b                                          ; $6754: $60
	dec c                                            ; $6755: $0d
	ld h, b                                          ; $6756: $60
	dec c                                            ; $6757: $0d
	ld h, b                                          ; $6758: $60
	add h                                            ; $6759: $84
	dec de                                           ; $675a: $1b
	jr nc, jr_038_67db                               ; $675b: $30 $7e

	ld bc, $a000                                     ; $675d: $01 $00 $a0
	jr nz, jr_038_6786                               ; $6760: $20 $24

	call nz, $0620                                   ; $6762: $c4 $20 $06
	add $20                                          ; $6765: $c6 $20
	ld b, $c2                                        ; $6767: $06 $c2
	ld a, a                                          ; $6769: $7f
	ld de, $7efb                                     ; $676a: $11 $fb $7e
	ld a, [bc]                                       ; $676d: $0a
	nop                                              ; $676e: $00
	and b                                            ; $676f: $a0
	inc sp                                           ; $6770: $33
	jr nz, jr_038_67f1                               ; $6771: $20 $7e

	dec b                                            ; $6773: $05
	nop                                              ; $6774: $00
	and h                                            ; $6775: $a4
	dec a                                            ; $6776: $3d
	jr z, jr_038_67f7                                ; $6777: $28 $7e

	ld a, [bc]                                       ; $6779: $0a
	nop                                              ; $677a: $00
	and b                                            ; $677b: $a0
	ld a, [hl-]                                      ; $677c: $3a
	inc h                                            ; $677d: $24
	inc sp                                           ; $677e: $33
	inc h                                            ; $677f: $24
	jr c, jr_038_6798                                ; $6780: $38 $16

	ld a, [hl]                                       ; $6782: $7e
	dec b                                            ; $6783: $05
	nop                                              ; $6784: $00
	and d                                            ; $6785: $a2

jr_038_6786:
	dec a                                            ; $6786: $3d
	ld a, [de]                                       ; $6787: $1a
	ei                                               ; $6788: $fb
	inc b                                            ; $6789: $04
	add e                                            ; $678a: $83
	nop                                              ; $678b: $00
	ret nz                                           ; $678c: $c0

	add $00                                          ; $678d: $c6 $00
	jr nc, @+$80                                     ; $678f: $30 $7e

	add hl, bc                                       ; $6791: $09
	nop                                              ; $6792: $00
	and d                                            ; $6793: $a2
	ld a, l                                          ; $6794: $7d
	inc b                                            ; $6795: $04
	dec l                                            ; $6796: $2d
	inc c                                            ; $6797: $0c

jr_038_6798:
	dec l                                            ; $6798: $2d
	inc c                                            ; $6799: $0c
	add $2d                                          ; $679a: $c6 $2d
	inc c                                            ; $679c: $0c
	nop                                              ; $679d: $00
	inc c                                            ; $679e: $0c
	add $00                                          ; $679f: $c6 $00
	jr nc, @+$80                                     ; $67a1: $30 $7e

	add hl, bc                                       ; $67a3: $09
	nop                                              ; $67a4: $00
	and d                                            ; $67a5: $a2
	ld a, l                                          ; $67a6: $7d
	ld [bc], a                                       ; $67a7: $02
	dec l                                            ; $67a8: $2d
	inc c                                            ; $67a9: $0c
	dec l                                            ; $67aa: $2d
	inc c                                            ; $67ab: $0c
	add c                                            ; $67ac: $81
	jp nz, $107e                                     ; $67ad: $c2 $7e $10

	nop                                              ; $67b0: $00
	and a                                            ; $67b1: $a7
	jr jr_038_67cc                                   ; $67b2: $18 $18

	jp nz, Jump_038_7e8a                             ; $67b4: $c2 $8a $7e

	ld bc, $a400                                     ; $67b7: $01 $00 $a4
	dec c                                            ; $67ba: $0d
	ret nz                                           ; $67bb: $c0

	ld a, [hl]                                       ; $67bc: $7e
	inc de                                           ; $67bd: $13
	ld h, $a7                                        ; $67be: $26 $a7
	dec c                                            ; $67c0: $0d
	jr nc, jr_038_6841                               ; $67c1: $30 $7e

	ld bc, $a400                                     ; $67c3: $01 $00 $a4
	db $10                                           ; $67c6: $10
	sub b                                            ; $67c7: $90
	jp nz, Jump_038_7e8a                             ; $67c8: $c2 $8a $7e

	db $10                                           ; $67cb: $10

jr_038_67cc:
	db $10                                           ; $67cc: $10
	and d                                            ; $67cd: $a2
	db $10                                           ; $67ce: $10
	jr nc, jr_038_684f                               ; $67cf: $30 $7e

	ld bc, $a400                                     ; $67d1: $01 $00 $a4
	dec c                                            ; $67d4: $0d
	sub b                                            ; $67d5: $90
	ld a, [hl]                                       ; $67d6: $7e
	inc de                                           ; $67d7: $13
	ld h, $a7                                        ; $67d8: $26 $a7
	dec c                                            ; $67da: $0d

jr_038_67db:
	jr nc, jr_038_685b                               ; $67db: $30 $7e

	ld bc, $a400                                     ; $67dd: $01 $00 $a4
	db $10                                           ; $67e0: $10
	sub b                                            ; $67e1: $90
	jp nz, Jump_038_7e8a                             ; $67e2: $c2 $8a $7e

	db $10                                           ; $67e5: $10
	db $10                                           ; $67e6: $10
	and d                                            ; $67e7: $a2
	dec c                                            ; $67e8: $0d
	jr nc, jr_038_6869                               ; $67e9: $30 $7e

	ld bc, $a400                                     ; $67eb: $01 $00 $a4
	dec c                                            ; $67ee: $0d
	sub b                                            ; $67ef: $90
	ld a, [hl]                                       ; $67f0: $7e

jr_038_67f1:
	inc de                                           ; $67f1: $13
	ld h, $a7                                        ; $67f2: $26 $a7
	dec c                                            ; $67f4: $0d
	jr nc, jr_038_6875                               ; $67f5: $30 $7e

jr_038_67f7:
	ld bc, $a400                                     ; $67f7: $01 $00 $a4
	db $10                                           ; $67fa: $10
	jr nc, @+$80                                     ; $67fb: $30 $7e

	stop                                             ; $67fd: $10 $00
	and b                                            ; $67ff: $a0
	add $be                                          ; $6800: $c6 $be
	inc c                                            ; $6802: $0c
	dec l                                            ; $6803: $2d
	inc l                                            ; $6804: $2c
	dec hl                                           ; $6805: $2b
	ld a, [hl+]                                      ; $6806: $2a
	add hl, hl                                       ; $6807: $29
	jr z, jr_038_6831                                ; $6808: $28 $27

	ld h, $be                                        ; $680a: $26 $be
	ei                                               ; $680c: $fb
	adc [hl]                                         ; $680d: $8e
	call nz, $3000                                   ; $680e: $c4 $00 $30
	ld a, [hl]                                       ; $6811: $7e
	ld c, $00                                        ; $6812: $0e $00
	and d                                            ; $6814: $a2
	add hl, de                                       ; $6815: $19
	ld a, [bc]                                       ; $6816: $0a
	add $19                                          ; $6817: $c6 $19
	ld [bc], a                                       ; $6819: $02
	call nz, $0a19                                   ; $681a: $c4 $19 $0a
	add $19                                          ; $681d: $c6 $19
	ld [bc], a                                       ; $681f: $02
	call nz, $0519                                   ; $6820: $c4 $19 $05
	nop                                              ; $6823: $00
	ld bc, $0619                                     ; $6824: $01 $19 $06
	nop                                              ; $6827: $00
	inc c                                            ; $6828: $0c
	adc [hl]                                         ; $6829: $8e
	ld l, h                                          ; $682a: $6c
	call nz, $3000                                   ; $682b: $c4 $00 $30
	ld a, [hl]                                       ; $682e: $7e
	ld c, $00                                        ; $682f: $0e $00

jr_038_6831:
	and d                                            ; $6831: $a2
	add hl, de                                       ; $6832: $19
	ld a, [bc]                                       ; $6833: $0a
	add $19                                          ; $6834: $c6 $19
	ld [bc], a                                       ; $6836: $02
	call nz, $0a19                                   ; $6837: $c4 $19 $0a
	add $19                                          ; $683a: $c6 $19
	ld [bc], a                                       ; $683c: $02
	call nz, $0519                                   ; $683d: $c4 $19 $05
	nop                                              ; $6840: $00

jr_038_6841:
	ld bc, $0619                                     ; $6841: $01 $19 $06
	nop                                              ; $6844: $00
	inc c                                            ; $6845: $0c
	ld a, [hl]                                       ; $6846: $7e
	nop                                              ; $6847: $00
	adc d                                            ; $6848: $8a
	db $10                                           ; $6849: $10
	inc h                                            ; $684a: $24
	add $10                                          ; $684b: $c6 $10
	inc c                                            ; $684d: $0c
	adc l                                            ; $684e: $8d

jr_038_684f:
	call nz, $0e7e                                   ; $684f: $c4 $7e $0e
	nop                                              ; $6852: $00
	and c                                            ; $6853: $a1
	dec h                                            ; $6854: $25
	ld b, $c6                                        ; $6855: $06 $c6
	dec h                                            ; $6857: $25
	ld b, $c4                                        ; $6858: $06 $c4
	dec h                                            ; $685a: $25

jr_038_685b:
	ld b, $c6                                        ; $685b: $06 $c6
	dec h                                            ; $685d: $25
	ld b, $c4                                        ; $685e: $06 $c4
	dec h                                            ; $6860: $25
	dec b                                            ; $6861: $05
	nop                                              ; $6862: $00
	ld bc, $0625                                     ; $6863: $01 $25 $06
	ld a, [hl]                                       ; $6866: $7e
	nop                                              ; $6867: $00
	adc d                                            ; $6868: $8a

jr_038_6869:
	nop                                              ; $6869: $00
	inc c                                            ; $686a: $0c
	db $10                                           ; $686b: $10
	inc h                                            ; $686c: $24
	add $10                                          ; $686d: $c6 $10
	inc c                                            ; $686f: $0c
	adc h                                            ; $6870: $8c
	call nz, $0e7e                                   ; $6871: $c4 $7e $0e
	nop                                              ; $6874: $00

jr_038_6875:
	and c                                            ; $6875: $a1
	dec h                                            ; $6876: $25
	ld b, $c6                                        ; $6877: $06 $c6
	dec h                                            ; $6879: $25
	ld b, $c4                                        ; $687a: $06 $c4
	dec h                                            ; $687c: $25
	ld b, $c6                                        ; $687d: $06 $c6
	dec h                                            ; $687f: $25
	ld b, $c4                                        ; $6880: $06 $c4
	dec h                                            ; $6882: $25
	dec b                                            ; $6883: $05
	nop                                              ; $6884: $00
	ld bc, $0625                                     ; $6885: $01 $25 $06
	adc d                                            ; $6888: $8a
	db $10                                           ; $6889: $10
	inc c                                            ; $688a: $0c
	ei                                               ; $688b: $fb
	ld [bc], a                                       ; $688c: $02
	jp nz, $007d                                     ; $688d: $c2 $7d $00

	ld a, a                                          ; $6890: $7f
	ld de, $fc70                                     ; $6891: $11 $70 $fc
	ei                                               ; $6894: $fb
	ld a, [hl]                                       ; $6895: $7e
	ld a, [bc]                                       ; $6896: $0a
	nop                                              ; $6897: $00
	and b                                            ; $6898: $a0
	inc sp                                           ; $6899: $33
	jr nz, jr_038_691a                               ; $689a: $20 $7e

	dec b                                            ; $689c: $05
	nop                                              ; $689d: $00
	and h                                            ; $689e: $a4
	dec a                                            ; $689f: $3d
	jr z, @+$80                                      ; $68a0: $28 $7e

	ld a, [bc]                                       ; $68a2: $0a
	nop                                              ; $68a3: $00
	and b                                            ; $68a4: $a0
	ld a, [hl-]                                      ; $68a5: $3a
	inc h                                            ; $68a6: $24
	inc sp                                           ; $68a7: $33
	inc h                                            ; $68a8: $24
	jr c, @+$18                                      ; $68a9: $38 $16

	ld a, [hl]                                       ; $68ab: $7e
	dec b                                            ; $68ac: $05
	nop                                              ; $68ad: $00
	and d                                            ; $68ae: $a2
	dec a                                            ; $68af: $3d
	ld a, [de]                                       ; $68b0: $1a
	ei                                               ; $68b1: $fb
	inc b                                            ; $68b2: $04
	db $fc                                           ; $68b3: $fc
	inc bc                                           ; $68b4: $03
	cp $ff                                           ; $68b5: $fe $ff
	ret nc                                           ; $68b7: $d0

	halt                                             ; $68b8: $76
	cp $00                                           ; $68b9: $fe $00
	ret nz                                           ; $68bb: $c0

	nop                                              ; $68bc: $00
	ret nz                                           ; $68bd: $c0

	ei                                               ; $68be: $fb
	add hl, bc                                       ; $68bf: $09
	ld b, $09                                        ; $68c0: $06 $09
	ld b, $1e                                        ; $68c2: $06 $1e
	inc c                                            ; $68c4: $0c
	ei                                               ; $68c5: $fb
	db $10                                           ; $68c6: $10
	ei                                               ; $68c7: $fb
	add hl, bc                                       ; $68c8: $09
	ld b, $09                                        ; $68c9: $06 $09
	ld b, $1e                                        ; $68cb: $06 $1e
	inc c                                            ; $68cd: $0c
	dec c                                            ; $68ce: $0d
	ld b, $09                                        ; $68cf: $06 $09
	ld b, $1e                                        ; $68d1: $06 $1e
	inc c                                            ; $68d3: $0c
	add hl, bc                                       ; $68d4: $09
	ld b, $12                                        ; $68d5: $06 $12
	ld b, $1e                                        ; $68d7: $06 $1e
	inc c                                            ; $68d9: $0c
	add hl, bc                                       ; $68da: $09
	ld b, $12                                        ; $68db: $06 $12
	ld b, $1e                                        ; $68dd: $06 $1e
	inc c                                            ; $68df: $0c
	add hl, bc                                       ; $68e0: $09
	ld b, $09                                        ; $68e1: $06 $09
	ld b, $1e                                        ; $68e3: $06 $1e
	inc c                                            ; $68e5: $0c
	dec c                                            ; $68e6: $0d
	ld b, $09                                        ; $68e7: $06 $09
	ld b, $1e                                        ; $68e9: $06 $1e
	inc c                                            ; $68eb: $0c
	add hl, bc                                       ; $68ec: $09
	ld b, $12                                        ; $68ed: $06 $12
	ld b, $1e                                        ; $68ef: $06 $1e
	inc c                                            ; $68f1: $0c
	add hl, bc                                       ; $68f2: $09
	inc c                                            ; $68f3: $0c
	ld e, $0c                                        ; $68f4: $1e $0c
	ei                                               ; $68f6: $fb
	ld [bc], a                                       ; $68f7: $02
	ei                                               ; $68f8: $fb
	add hl, bc                                       ; $68f9: $09
	inc c                                            ; $68fa: $0c
	add hl, bc                                       ; $68fb: $09
	inc c                                            ; $68fc: $0c
	ld e, $18                                        ; $68fd: $1e $18
	add hl, bc                                       ; $68ff: $09
	ld b, $12                                        ; $6900: $06 $12
	ld b, $09                                        ; $6902: $06 $09
	inc c                                            ; $6904: $0c
	add hl, bc                                       ; $6905: $09
	ld b, $12                                        ; $6906: $06 $12
	ld b, $09                                        ; $6908: $06 $09
	inc c                                            ; $690a: $0c
	ei                                               ; $690b: $fb
	inc bc                                           ; $690c: $03
	add hl, bc                                       ; $690d: $09
	inc c                                            ; $690e: $0c
	add hl, bc                                       ; $690f: $09
	inc c                                            ; $6910: $0c
	ld e, $18                                        ; $6911: $1e $18
	add hl, bc                                       ; $6913: $09
	ld b, $12                                        ; $6914: $06 $12
	ld b, $09                                        ; $6916: $06 $09
	inc c                                            ; $6918: $0c
	inc c                                            ; $6919: $0c

jr_038_691a:
	inc c                                            ; $691a: $0c
	inc c                                            ; $691b: $0c
	inc c                                            ; $691c: $0c
	ei                                               ; $691d: $fb
	add hl, bc                                       ; $691e: $09
	ld b, $09                                        ; $691f: $06 $09
	ld b, $1e                                        ; $6921: $06 $1e
	inc c                                            ; $6923: $0c
	add hl, bc                                       ; $6924: $09
	ld b, $09                                        ; $6925: $06 $09
	ld b, $1e                                        ; $6927: $06 $1e
	inc c                                            ; $6929: $0c
	add hl, bc                                       ; $692a: $09
	ld b, $09                                        ; $692b: $06 $09
	ld b, $1e                                        ; $692d: $06 $1e
	inc c                                            ; $692f: $0c
	add hl, bc                                       ; $6930: $09
	ld b, $09                                        ; $6931: $06 $09
	ld b, $1e                                        ; $6933: $06 $1e
	inc c                                            ; $6935: $0c
	ei                                               ; $6936: $fb
	inc bc                                           ; $6937: $03
	add hl, bc                                       ; $6938: $09
	ld b, $09                                        ; $6939: $06 $09
	ld b, $1e                                        ; $693b: $06 $1e
	inc c                                            ; $693d: $0c
	add hl, bc                                       ; $693e: $09
	ld b, $09                                        ; $693f: $06 $09
	ld b, $1e                                        ; $6941: $06 $1e
	inc c                                            ; $6943: $0c
	add hl, bc                                       ; $6944: $09
	ld b, $09                                        ; $6945: $06 $09
	ld b, $1e                                        ; $6947: $06 $1e
	inc c                                            ; $6949: $0c
	add hl, bc                                       ; $694a: $09
	ld b, $09                                        ; $694b: $06 $09
	ld b, $1e                                        ; $694d: $06 $1e
	inc c                                            ; $694f: $0c
	ei                                               ; $6950: $fb
	add hl, bc                                       ; $6951: $09
	ld b, $09                                        ; $6952: $06 $09
	ld b, $1e                                        ; $6954: $06 $1e
	inc c                                            ; $6956: $0c
	add hl, bc                                       ; $6957: $09
	ld b, $09                                        ; $6958: $06 $09
	ld b, $1e                                        ; $695a: $06 $1e
	inc c                                            ; $695c: $0c
	add hl, bc                                       ; $695d: $09
	ld b, $09                                        ; $695e: $06 $09
	ld b, $1e                                        ; $6960: $06 $1e
	inc c                                            ; $6962: $0c
	add hl, bc                                       ; $6963: $09
	ld b, $09                                        ; $6964: $06 $09
	ld b, $1e                                        ; $6966: $06 $1e
	inc c                                            ; $6968: $0c
	ei                                               ; $6969: $fb
	inc bc                                           ; $696a: $03
	cp [hl]                                          ; $696b: $be
	ld b, $4c                                        ; $696c: $06 $4c
	ld c, h                                          ; $696e: $4c
	ld c, h                                          ; $696f: $4c
	ld c, h                                          ; $6970: $4c
	ld c, h                                          ; $6971: $4c
	ld c, h                                          ; $6972: $4c
	ld c, h                                          ; $6973: $4c
	ld c, h                                          ; $6974: $4c
	cp [hl]                                          ; $6975: $be
	cp [hl]                                          ; $6976: $be
	inc b                                            ; $6977: $04
	ld c, h                                          ; $6978: $4c
	ld c, h                                          ; $6979: $4c
	ld c, h                                          ; $697a: $4c
	ld c, h                                          ; $697b: $4c

jr_038_697c:
	ld c, h                                          ; $697c: $4c
	ld c, h                                          ; $697d: $4c
	ld c, h                                          ; $697e: $4c
	ld c, h                                          ; $697f: $4c
	ld c, h                                          ; $6980: $4c
	ld c, h                                          ; $6981: $4c
	ld c, h                                          ; $6982: $4c
	ld c, h                                          ; $6983: $4c
	cp [hl]                                          ; $6984: $be
	ei                                               ; $6985: $fb
	add hl, bc                                       ; $6986: $09
	ld b, $09                                        ; $6987: $06 $09
	ld b, $1e                                        ; $6989: $06 $1e
	inc c                                            ; $698b: $0c
	add hl, bc                                       ; $698c: $09
	ld b, $09                                        ; $698d: $06 $09
	ld b, $1e                                        ; $698f: $06 $1e
	inc c                                            ; $6991: $0c
	add hl, bc                                       ; $6992: $09
	ld b, $09                                        ; $6993: $06 $09
	ld b, $1e                                        ; $6995: $06 $1e
	inc c                                            ; $6997: $0c
	add hl, bc                                       ; $6998: $09
	ld b, $09                                        ; $6999: $06 $09
	ld b, $1e                                        ; $699b: $06 $1e
	inc c                                            ; $699d: $0c
	ei                                               ; $699e: $fb
	inc bc                                           ; $699f: $03
	nop                                              ; $69a0: $00
	ld h, b                                          ; $69a1: $60
	ei                                               ; $69a2: $fb
	ld c, d                                          ; $69a3: $4a
	ld b, $09                                        ; $69a4: $06 $09
	ld b, $1e                                        ; $69a6: $06 $1e
	inc c                                            ; $69a8: $0c
	add hl, bc                                       ; $69a9: $09
	ld b, $09                                        ; $69aa: $06 $09
	ld b, $1e                                        ; $69ac: $06 $1e
	inc c                                            ; $69ae: $0c
	ei                                               ; $69af: $fb
	rlca                                             ; $69b0: $07
	ld c, d                                          ; $69b1: $4a
	ld b, $09                                        ; $69b2: $06 $09
	ld b, $1e                                        ; $69b4: $06 $1e
	inc c                                            ; $69b6: $0c
	cp [hl]                                          ; $69b7: $be
	ld b, $09                                        ; $69b8: $06 $09
	add hl, bc                                       ; $69ba: $09
	ld c, d                                          ; $69bb: $4a
	jr jr_038_697c                                   ; $69bc: $18 $be

	ei                                               ; $69be: $fb
	ld c, d                                          ; $69bf: $4a
	ld b, $09                                        ; $69c0: $06 $09
	ld b, $1e                                        ; $69c2: $06 $1e

jr_038_69c4:
	inc c                                            ; $69c4: $0c
	add hl, bc                                       ; $69c5: $09
	ld b, $09                                        ; $69c6: $06 $09
	ld b, $1e                                        ; $69c8: $06 $1e
	inc c                                            ; $69ca: $0c
	cp [hl]                                          ; $69cb: $be
	ld b, $09                                        ; $69cc: $06 $09
	add hl, bc                                       ; $69ce: $09
	add hl, bc                                       ; $69cf: $09
	add hl, bc                                       ; $69d0: $09
	add hl, bc                                       ; $69d1: $09
	add hl, bc                                       ; $69d2: $09
	cp [hl]                                          ; $69d3: $be
	ld e, $0c                                        ; $69d4: $1e $0c
	ei                                               ; $69d6: $fb
	inc bc                                           ; $69d7: $03
	ld c, d                                          ; $69d8: $4a
	ld b, $09                                        ; $69d9: $06 $09
	ld b, $1e                                        ; $69db: $06 $1e
	inc c                                            ; $69dd: $0c
	add hl, bc                                       ; $69de: $09
	ld b, $09                                        ; $69df: $06 $09
	ld b, $1e                                        ; $69e1: $06 $1e
	inc c                                            ; $69e3: $0c
	cp [hl]                                          ; $69e4: $be
	ld b, $09                                        ; $69e5: $06 $09
	add hl, bc                                       ; $69e7: $09
	add hl, bc                                       ; $69e8: $09
	add hl, bc                                       ; $69e9: $09
	add hl, bc                                       ; $69ea: $09
	add hl, bc                                       ; $69eb: $09
	add hl, bc                                       ; $69ec: $09
	jr @-$40                                         ; $69ed: $18 $be

	db $fc                                           ; $69ef: $fc
	ei                                               ; $69f0: $fb
	ld c, d                                          ; $69f1: $4a
	ld b, $09                                        ; $69f2: $06 $09
	ld b, $1e                                        ; $69f4: $06 $1e
	inc c                                            ; $69f6: $0c
	ei                                               ; $69f7: $fb
	ld e, $4a                                        ; $69f8: $1e $4a
	ld b, $09                                        ; $69fa: $06 $09
	ld b, $1e                                        ; $69fc: $06 $1e
	inc c                                            ; $69fe: $0c
	cp [hl]                                          ; $69ff: $be
	ld b, $4a                                        ; $6a00: $06 $4a
	add hl, bc                                       ; $6a02: $09
	ld c, d                                          ; $6a03: $4a
	jr jr_038_69c4                                   ; $6a04: $18 $be

	db $fc                                           ; $6a06: $fc
	inc bc                                           ; $6a07: $03
	cp $ff                                           ; $6a08: $fe $ff
	ret nc                                           ; $6a0a: $d0

jr_038_6a0b:
	ld a, l                                          ; $6a0b: $7d
	sub c                                            ; $6a0c: $91
	nop                                              ; $6a0d: $00
	jr nz, jr_038_6a0b                               ; $6a0e: $20 $fb

	ret z                                            ; $6a10: $c8

	jr nz, jr_038_6a21                               ; $6a11: $20 $0e

	ld a, [hl]                                       ; $6a13: $7e
	nop                                              ; $6a14: $00
	jp $0a20                                         ; $6a15: $c3 $20 $0a


	ei                                               ; $6a18: $fb
	inc bc                                           ; $6a19: $03
	jp nz, $1020                                     ; $6a1a: $c2 $20 $10

	ld a, [hl]                                       ; $6a1d: $7e
	ld bc, $a900                                     ; $6a1e: $01 $00 $a9

jr_038_6a21:
	ret z                                            ; $6a21: $c8

	ld [hl+], a                                      ; $6a22: $22
	ld [$22c3], sp                                   ; $6a23: $08 $c3 $22
	db $10                                           ; $6a26: $10
	ret z                                            ; $6a27: $c8

	ld a, [hl]                                       ; $6a28: $7e
	ld bc, $a00c                                     ; $6a29: $01 $0c $a0
	jr nz, jr_038_6a4e                               ; $6a2c: $20 $20

	ld a, [hl]                                       ; $6a2e: $7e
	nop                                              ; $6a2f: $00
	ret z                                            ; $6a30: $c8

	ld [hl+], a                                      ; $6a31: $22
	inc c                                            ; $6a32: $0c
	jp $0c22                                         ; $6a33: $c3 $22 $0c


	ret z                                            ; $6a36: $c8

	jr nz, jr_038_6a45                               ; $6a37: $20 $0c

	jp $0c20                                         ; $6a39: $c3 $20 $0c


	ei                                               ; $6a3c: $fb
	ret z                                            ; $6a3d: $c8

	ld e, $0e                                        ; $6a3e: $1e $0e
	jp $0a1e                                         ; $6a40: $c3 $1e $0a


	ei                                               ; $6a43: $fb
	ld [bc], a                                       ; $6a44: $02

jr_038_6a45:
	ret z                                            ; $6a45: $c8

	ld e, $10                                        ; $6a46: $1e $10
	jr nz, jr_038_6a52                               ; $6a48: $20 $08

jr_038_6a4a:
	jp $1020                                         ; $6a4a: $c3 $20 $10


	ret z                                            ; $6a4d: $c8

jr_038_6a4e:
	ld [hl+], a                                      ; $6a4e: $22
	ld [$017e], sp                                   ; $6a4f: $08 $7e $01

jr_038_6a52:
	nop                                              ; $6a52: $00
	and b                                            ; $6a53: $a0
	ld [hl+], a                                      ; $6a54: $22
	rla                                              ; $6a55: $17
	nop                                              ; $6a56: $00
	ld bc, $007e                                     ; $6a57: $01 $7e $00
	ret z                                            ; $6a5a: $c8

	jr nz, jr_038_6a69                               ; $6a5b: $20 $0c

	jp $0c20                                         ; $6a5d: $c3 $20 $0c


	ret z                                            ; $6a60: $c8

	ld e, $0c                                        ; $6a61: $1e $0c
	jp $0c1e                                         ; $6a63: $c3 $1e $0c


	ret z                                            ; $6a66: $c8

	jr nz, jr_038_6a75                               ; $6a67: $20 $0c

jr_038_6a69:
	jp z, $02be                                      ; $6a69: $ca $be $02

	rra                                              ; $6a6c: $1f
	ld e, $1d                                        ; $6a6d: $1e $1d
	inc e                                            ; $6a6f: $1c
	dec de                                           ; $6a70: $1b
	ld a, [de]                                       ; $6a71: $1a
	cp [hl]                                          ; $6a72: $be
	ret                                              ; $6a73: $c9


	sub d                                            ; $6a74: $92

jr_038_6a75:
	ld a, [hl]                                       ; $6a75: $7e
	nop                                              ; $6a76: $00
	ld hl, $2204                                     ; $6a77: $21 $04 $22
	inc d                                            ; $6a7a: $14
	ld a, [hl]                                       ; $6a7b: $7e
	ld bc, $a000                                     ; $6a7c: $01 $00 $a0
	ld [hl+], a                                      ; $6a7f: $22
	jr jr_038_6a4a                                   ; $6a80: $18 $c8

	ld [hl+], a                                      ; $6a82: $22
	inc c                                            ; $6a83: $0c
	rst JumpTable                                          ; $6a84: $c7
	ld [hl+], a                                      ; $6a85: $22
	inc bc                                           ; $6a86: $03
	nop                                              ; $6a87: $00
	ld bc, $7ec9                                     ; $6a88: $01 $c9 $7e
	nop                                              ; $6a8b: $00
	jr nz, jr_038_6a96                               ; $6a8c: $20 $08

	ld [hl+], a                                      ; $6a8e: $22
	db $10                                           ; $6a8f: $10
	add $28                                          ; $6a90: $c6 $28
	inc bc                                           ; $6a92: $03

jr_038_6a93:
	add hl, hl                                       ; $6a93: $29
	dec d                                            ; $6a94: $15
	ld a, [hl]                                       ; $6a95: $7e

jr_038_6a96:
	ld bc, $a000                                     ; $6a96: $01 $00 $a0
	add hl, hl                                       ; $6a99: $29
	jr z, @-$3b                                      ; $6a9a: $28 $c3

	add hl, hl                                       ; $6a9c: $29
	ld [$92c8], sp                                   ; $6a9d: $08 $c8 $92
	ld a, [hl]                                       ; $6aa0: $7e
	dec b                                            ; $6aa1: $05
	nop                                              ; $6aa2: $00
	and b                                            ; $6aa3: $a0
	jr nz, jr_038_6aae                               ; $6aa4: $20 $08

	ld a, [hl]                                       ; $6aa6: $7e
	nop                                              ; $6aa7: $00
	ld [hl+], a                                      ; $6aa8: $22
	db $10                                           ; $6aa9: $10
	dec e                                            ; $6aaa: $1d
	ld [$29c8], sp                                   ; $6aab: $08 $c8 $29

jr_038_6aae:
	db $10                                           ; $6aae: $10
	jp $0829                                         ; $6aaf: $c3 $29 $08


	ret z                                            ; $6ab2: $c8

	daa                                              ; $6ab3: $27
	db $10                                           ; $6ab4: $10
	jp $0827                                         ; $6ab5: $c3 $27 $08


	ret z                                            ; $6ab8: $c8

	dec h                                            ; $6ab9: $25
	db $10                                           ; $6aba: $10
	daa                                              ; $6abb: $27
	ld [$27c3], sp                                   ; $6abc: $08 $c3 $27
	db $10                                           ; $6abf: $10
	ret                                              ; $6ac0: $c9


	dec h                                            ; $6ac1: $25
	ld [$017e], sp                                   ; $6ac2: $08 $7e $01
	nop                                              ; $6ac5: $00
	and b                                            ; $6ac6: $a0
	dec h                                            ; $6ac7: $25
	jr jr_038_6a93                                   ; $6ac8: $18 $c9

	sub d                                            ; $6aca: $92
	ld a, [hl]                                       ; $6acb: $7e
	nop                                              ; $6acc: $00
	inc hl                                           ; $6acd: $23
	inc c                                            ; $6ace: $0c
	jp $0c23                                         ; $6acf: $c3 $23 $0c


	sub c                                            ; $6ad2: $91
	ret                                              ; $6ad3: $c9


	ld [hl+], a                                      ; $6ad4: $22
	dec d                                            ; $6ad5: $15
	nop                                              ; $6ad6: $00
	ld bc, $0323                                     ; $6ad7: $01 $23 $03
	inc h                                            ; $6ada: $24
	ld b, $00                                        ; $6adb: $06 $00
	ld bc, $0720                                     ; $6add: $01 $20 $07
	nop                                              ; $6ae0: $00
	ld bc, $0824                                     ; $6ae1: $01 $24 $08
	sub c                                            ; $6ae4: $91
	ei                                               ; $6ae5: $fb
	rst JumpTable                                          ; $6ae6: $c7
	dec h                                            ; $6ae7: $25
	ld c, $7e                                        ; $6ae8: $0e $7e
	nop                                              ; $6aea: $00
	jp $0a25                                         ; $6aeb: $c3 $25 $0a


	ei                                               ; $6aee: $fb
	ld [bc], a                                       ; $6aef: $02
	rst JumpTable                                          ; $6af0: $c7
	dec h                                            ; $6af1: $25
	ld c, $7e                                        ; $6af2: $0e $7e
	nop                                              ; $6af4: $00
	jp $0225                                         ; $6af5: $c3 $25 $02


	sub d                                            ; $6af8: $92
	rst JumpTable                                          ; $6af9: $c7
	rra                                              ; $6afa: $1f
	ld [$20c8], sp                                   ; $6afb: $08 $c8 $20
	db $10                                           ; $6afe: $10
	ld a, [hl]                                       ; $6aff: $7e
	ld bc, $a900                                     ; $6b00: $01 $00 $a9
	ret z                                            ; $6b03: $c8

	ld [hl+], a                                      ; $6b04: $22
	ld [$22c3], sp                                   ; $6b05: $08 $c3 $22
	db $10                                           ; $6b08: $10
	ret z                                            ; $6b09: $c8

	ld a, [hl]                                       ; $6b0a: $7e
	ld bc, $a00c                                     ; $6b0b: $01 $0c $a0
	jr nz, jr_038_6b30                               ; $6b0e: $20 $20

	ld a, [hl]                                       ; $6b10: $7e
	nop                                              ; $6b11: $00
	ret z                                            ; $6b12: $c8

	ld [hl+], a                                      ; $6b13: $22
	inc c                                            ; $6b14: $0c
	jp $0c22                                         ; $6b15: $c3 $22 $0c


	ret z                                            ; $6b18: $c8

	jr nz, jr_038_6b27                               ; $6b19: $20 $0c

	jp $0c20                                         ; $6b1b: $c3 $20 $0c


	ei                                               ; $6b1e: $fb
	ret z                                            ; $6b1f: $c8

	ld e, $0e                                        ; $6b20: $1e $0e
	jp $0a1e                                         ; $6b22: $c3 $1e $0a


	ei                                               ; $6b25: $fb
	ld [bc], a                                       ; $6b26: $02

jr_038_6b27:
	ret z                                            ; $6b27: $c8

	ld e, $10                                        ; $6b28: $1e $10
	jr nz, jr_038_6b34                               ; $6b2a: $20 $08

	jp $1020                                         ; $6b2c: $c3 $20 $10


	ret z                                            ; $6b2f: $c8

jr_038_6b30:
	ld [hl+], a                                      ; $6b30: $22
	ld [$017e], sp                                   ; $6b31: $08 $7e $01

jr_038_6b34:
	nop                                              ; $6b34: $00
	and b                                            ; $6b35: $a0
	ld [hl+], a                                      ; $6b36: $22
	rla                                              ; $6b37: $17
	nop                                              ; $6b38: $00
	ld bc, $007e                                     ; $6b39: $01 $7e $00
	ret                                              ; $6b3c: $c9


	jr nz, jr_038_6b4b                               ; $6b3d: $20 $0c

	jp $0c20                                         ; $6b3f: $c3 $20 $0c


	rst JumpTable                                          ; $6b42: $c7
	inc h                                            ; $6b43: $24

jr_038_6b44:
	inc c                                            ; $6b44: $0c
	jp $0c24                                         ; $6b45: $c3 $24 $0c


	add $25                                          ; $6b48: $c6 $25
	inc c                                            ; $6b4a: $0c

jr_038_6b4b:
	cp [hl]                                          ; $6b4b: $be
	ld [bc], a                                       ; $6b4c: $02
	inc h                                            ; $6b4d: $24
	inc hl                                           ; $6b4e: $23
	ld [hl+], a                                      ; $6b4f: $22
	ld hl, $1f20                                     ; $6b50: $21 $20 $1f
	cp [hl]                                          ; $6b53: $be
	ret z                                            ; $6b54: $c8

	sub d                                            ; $6b55: $92
	ld a, [hl]                                       ; $6b56: $7e
	nop                                              ; $6b57: $00
	ld hl, $2204                                     ; $6b58: $21 $04 $22
	inc d                                            ; $6b5b: $14
	ld a, [hl]                                       ; $6b5c: $7e
	ld bc, $a000                                     ; $6b5d: $01 $00 $a0
	ld [hl+], a                                      ; $6b60: $22
	jr @-$36                                         ; $6b61: $18 $c8

	ld [hl+], a                                      ; $6b63: $22
	inc c                                            ; $6b64: $0c
	rst JumpTable                                          ; $6b65: $c7
	ld [hl+], a                                      ; $6b66: $22
	inc bc                                           ; $6b67: $03
	nop                                              ; $6b68: $00
	ld bc, $7ec8                                     ; $6b69: $01 $c8 $7e
	nop                                              ; $6b6c: $00
	jr nz, @+$0a                                     ; $6b6d: $20 $08

	ld [hl+], a                                      ; $6b6f: $22
	db $10                                           ; $6b70: $10
	rst JumpTable                                          ; $6b71: $c7
	ld a, [hl]                                       ; $6b72: $7e
	dec c                                            ; $6b73: $0d
	nop                                              ; $6b74: $00
	xor c                                            ; $6b75: $a9
	jr z, jr_038_6b7b                                ; $6b76: $28 $03

	add hl, hl                                       ; $6b78: $29
	dec d                                            ; $6b79: $15
	ld a, [hl]                                       ; $6b7a: $7e

jr_038_6b7b:
	ld bc, $a000                                     ; $6b7b: $01 $00 $a0
	add hl, hl                                       ; $6b7e: $29
	jr z, jr_038_6b44                                ; $6b7f: $28 $c3

	add hl, hl                                       ; $6b81: $29
	ld [$92c8], sp                                   ; $6b82: $08 $c8 $92

jr_038_6b85:
	ret z                                            ; $6b85: $c8

	ld a, [hl]                                       ; $6b86: $7e
	dec b                                            ; $6b87: $05
	nop                                              ; $6b88: $00
	and b                                            ; $6b89: $a0
	jr nz, jr_038_6b94                               ; $6b8a: $20 $08

	ld a, [hl]                                       ; $6b8c: $7e
	nop                                              ; $6b8d: $00
	ld [hl+], a                                      ; $6b8e: $22
	db $10                                           ; $6b8f: $10
	jr nz, jr_038_6b9a                               ; $6b90: $20 $08

	rst JumpTable                                          ; $6b92: $c7
	sub d                                            ; $6b93: $92

jr_038_6b94:
	add hl, hl                                       ; $6b94: $29
	db $10                                           ; $6b95: $10
	jp $0829                                         ; $6b96: $c3 $29 $08


	ret z                                            ; $6b99: $c8

jr_038_6b9a:
	daa                                              ; $6b9a: $27
	db $10                                           ; $6b9b: $10
	jp $0827                                         ; $6b9c: $c3 $27 $08


	rst JumpTable                                          ; $6b9f: $c7
	dec h                                            ; $6ba0: $25
	db $10                                           ; $6ba1: $10
	daa                                              ; $6ba2: $27
	ld [$27c3], sp                                   ; $6ba3: $08 $c3 $27
	stop                                             ; $6ba6: $10 $00
	ld [$3000], sp                                   ; $6ba8: $08 $00 $30
	nop                                              ; $6bab: $00
	ld [$007e], sp                                   ; $6bac: $08 $7e $00
	or l                                             ; $6baf: $b5
	add c                                            ; $6bb0: $81
	ld [bc], a                                       ; $6bb1: $02
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	ld [hl+], a                                      ; $6bb4: $22
	db $10                                           ; $6bb5: $10
	inc hl                                           ; $6bb6: $23
	db $10                                           ; $6bb7: $10
	sub c                                            ; $6bb8: $91
	inc h                                            ; $6bb9: $24
	ld [$24c7], sp                                   ; $6bba: $08 $c7 $24
	jr jr_038_6b85                                   ; $6bbd: $18 $c6

	ld a, [hl]                                       ; $6bbf: $7e
	ld bc, $a000                                     ; $6bc0: $01 $00 $a0
	inc h                                            ; $6bc3: $24
	inc h                                            ; $6bc4: $24
	push bc                                          ; $6bc5: $c5
	ld a, [hl]                                       ; $6bc6: $7e
	stop                                             ; $6bc7: $10 $00
	and c                                            ; $6bc9: $a1
	inc h                                            ; $6bca: $24
	inc c                                            ; $6bcb: $0c
	call nz, $0c22                                   ; $6bcc: $c4 $22 $0c
	ld a, [hl]                                       ; $6bcf: $7e
	stop                                             ; $6bd0: $10 $00
	and b                                            ; $6bd2: $a0
	jp $0c20                                         ; $6bd3: $c3 $20 $0c


	ld a, [hl]                                       ; $6bd6: $7e
	nop                                              ; $6bd7: $00
	cp $c9                                           ; $6bd8: $fe $c9
	sub d                                            ; $6bda: $92
	inc d                                            ; $6bdb: $14
	inc b                                            ; $6bdc: $04
	jp $0c14                                         ; $6bdd: $c3 $14 $0c


	sla b                                            ; $6be0: $cb $20
	inc b                                            ; $6be2: $04
	jp $1420                                         ; $6be3: $c3 $20 $14


	call z, $0414                                    ; $6be6: $cc $14 $04
	jp $0414                                         ; $6be9: $c3 $14 $04


	sla b                                            ; $6bec: $cb $20
	inc b                                            ; $6bee: $04
	jp $1420                                         ; $6bef: $c3 $20 $14


	rl h                                             ; $6bf2: $cb $14
	rlca                                             ; $6bf4: $07
	nop                                              ; $6bf5: $00
	ld bc, $0716                                     ; $6bf6: $01 $16 $07
	nop                                              ; $6bf9: $00
	ld bc, $0814                                     ; $6bfa: $01 $14 $08
	jp $1014                                         ; $6bfd: $c3 $14 $10


	sla b                                            ; $6c00: $cb $20
	inc b                                            ; $6c02: $04
	jp $1420                                         ; $6c03: $c3 $20 $14


	call z, $0414                                    ; $6c06: $cc $14 $04
	jp $0414                                         ; $6c09: $c3 $14 $04


	sla b                                            ; $6c0c: $cb $20
	inc b                                            ; $6c0e: $04
	jp $1420                                         ; $6c0f: $c3 $20 $14


	rl h                                             ; $6c12: $cb $14
	rlca                                             ; $6c14: $07
	nop                                              ; $6c15: $00
	ld bc, $0716                                     ; $6c16: $01 $16 $07
	nop                                              ; $6c19: $00
	ld bc, $0814                                     ; $6c1a: $01 $14 $08
	jp $1014                                         ; $6c1d: $c3 $14 $10


	sla b                                            ; $6c20: $cb $20
	inc b                                            ; $6c22: $04
	jp $1420                                         ; $6c23: $c3 $20 $14


jr_038_6c26:
	call z, $0414                                    ; $6c26: $cc $14 $04
	jp $0414                                         ; $6c29: $c3 $14 $04


	sla b                                            ; $6c2c: $cb $20
	inc b                                            ; $6c2e: $04
	jp $1420                                         ; $6c2f: $c3 $20 $14


	jp z, $1012                                      ; $6c32: $ca $12 $10

	ld a, [hl]                                       ; $6c35: $7e
	ld bc, $a000                                     ; $6c36: $01 $00 $a0
	sub [hl]                                         ; $6c39: $96
	rst $38                                          ; $6c3a: $ff
	dec b                                            ; $6c3b: $05
	ld de, $b118                                     ; $6c3c: $11 $18 $b1
	and c                                            ; $6c3f: $a1
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	ld a, [hl]                                       ; $6c42: $7e
	nop                                              ; $6c43: $00
	jr nz, @+$06                                     ; $6c44: $20 $04

	jp $1420                                         ; $6c46: $c3 $20 $14


	call z, $0414                                    ; $6c49: $cc $14 $04
	jp $0414                                         ; $6c4c: $c3 $14 $04


	sla b                                            ; $6c4f: $cb $20
	inc b                                            ; $6c51: $04
	jp $1420                                         ; $6c52: $c3 $20 $14


	or c                                             ; $6c55: $b1
	sub c                                            ; $6c56: $91
	rst $38                                          ; $6c57: $ff
	ld b, $7e                                        ; $6c58: $06 $7e
	ld bc, $a000                                     ; $6c5a: $01 $00 $a0
	jr jr_038_6c77                                   ; $6c5d: $18 $18

	ld a, [hl]                                       ; $6c5f: $7e
	nop                                              ; $6c60: $00
	sub [hl]                                         ; $6c61: $96
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	rst GetHLinHL                                          ; $6c64: $cf
	sub b                                            ; $6c65: $90
	add hl, de                                       ; $6c66: $19
	inc b                                            ; $6c67: $04
	ret z                                            ; $6c68: $c8

	ld a, [hl]                                       ; $6c69: $7e
	ld bc, $a114                                     ; $6c6a: $01 $14 $a1
	add hl, de                                       ; $6c6d: $19
	inc l                                            ; $6c6e: $2c
	ld a, [hl]                                       ; $6c6f: $7e
	ld bc, $a014                                     ; $6c70: $01 $14 $a0
	jp z, $0420                                      ; $6c73: $ca $20 $04

	ret z                                            ; $6c76: $c8

jr_038_6c77:
	jr nz, @+$2e                                     ; $6c77: $20 $2c

	ld a, [hl]                                       ; $6c79: $7e
	nop                                              ; $6c7a: $00
	ld hl, $c310                                     ; $6c7b: $21 $10 $c3
	ld hl, $c808                                     ; $6c7e: $21 $08 $c8
	ld hl, $2210                                     ; $6c81: $21 $10 $22
	jr nz, jr_038_6d04                               ; $6c84: $20 $7e

	ld bc, $a000                                     ; $6c86: $01 $00 $a0
	or c                                             ; $6c89: $b1
	add c                                            ; $6c8a: $81
	rst $38                                          ; $6c8b: $ff
	inc b                                            ; $6c8c: $04
	ld [hl+], a                                      ; $6c8d: $22
	jr jr_038_6c26                                   ; $6c8e: $18 $96

	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	ld a, [hl]                                       ; $6c92: $7e
	nop                                              ; $6c93: $00
	sub d                                            ; $6c94: $92
	ret                                              ; $6c95: $c9


	ld [hl+], a                                      ; $6c96: $22
	ld c, $c3                                        ; $6c97: $0e $c3
	ld [hl+], a                                      ; $6c99: $22
	ld a, [bc]                                       ; $6c9a: $0a
	jp z, $1020                                      ; $6c9b: $ca $20 $10

	rr [hl]                                          ; $6c9e: $cb $1e
	ld [$1ec3], sp                                   ; $6ca0: $08 $c3 $1e
	db $10                                           ; $6ca3: $10
	rr l                                             ; $6ca4: $cb $1d
	inc c                                            ; $6ca6: $0c
	jp $0c1d                                         ; $6ca7: $c3 $1d $0c


	sub c                                            ; $6caa: $91
	ret                                              ; $6cab: $c9


	inc h                                            ; $6cac: $24
	inc b                                            ; $6cad: $04
	add $24                                          ; $6cae: $c6 $24
	inc e                                            ; $6cb0: $1c
	ld a, [hl]                                       ; $6cb1: $7e
	ld bc, $a000                                     ; $6cb2: $01 $00 $a0
	inc h                                            ; $6cb5: $24
	jr @-$3a                                         ; $6cb6: $18 $c4

	inc h                                            ; $6cb8: $24
	inc c                                            ; $6cb9: $0c
	jp nz, $0c24                                     ; $6cba: $c2 $24 $0c

	ret                                              ; $6cbd: $c9


	jr nz, @+$0b                                     ; $6cbe: $20 $09

	add $20                                          ; $6cc0: $c6 $20
	rlca                                             ; $6cc2: $07
	call nz, $0820                                   ; $6cc3: $c4 $20 $08
	ld a, [hl]                                       ; $6cc6: $7e
	nop                                              ; $6cc7: $00
	cp $ff                                           ; $6cc8: $fe $ff
	ret nc                                           ; $6cca: $d0

jr_038_6ccb:
	ld a, l                                          ; $6ccb: $7d
	sub b                                            ; $6ccc: $90
	nop                                              ; $6ccd: $00
	jr nz, jr_038_6ccb                               ; $6cce: $20 $fb

	ret                                              ; $6cd0: $c9


	add hl, hl                                       ; $6cd1: $29
	ld c, $7e                                        ; $6cd2: $0e $7e
	nop                                              ; $6cd4: $00
	jp $0a29                                         ; $6cd5: $c3 $29 $0a


	ei                                               ; $6cd8: $fb
	inc bc                                           ; $6cd9: $03
	jp nz, $1029                                     ; $6cda: $c2 $29 $10

	ld a, [hl]                                       ; $6cdd: $7e
	ld bc, $a900                                     ; $6cde: $01 $00 $a9
	ret                                              ; $6ce1: $c9


	ld a, [hl+]                                      ; $6ce2: $2a
	ld [$2ac3], sp                                   ; $6ce3: $08 $c3 $2a
	db $10                                           ; $6ce6: $10
	ret                                              ; $6ce7: $c9


	ld a, [hl]                                       ; $6ce8: $7e
	ld bc, $a00c                                     ; $6ce9: $01 $0c $a0
	add hl, hl                                       ; $6cec: $29
	jr nz, @+$80                                     ; $6ced: $20 $7e

	nop                                              ; $6cef: $00
	ret                                              ; $6cf0: $c9


	ld a, [hl+]                                      ; $6cf1: $2a
	inc c                                            ; $6cf2: $0c
	jp $0c2a                                         ; $6cf3: $c3 $2a $0c


	ret                                              ; $6cf6: $c9


	add hl, hl                                       ; $6cf7: $29
	inc c                                            ; $6cf8: $0c
	jp $0c29                                         ; $6cf9: $c3 $29 $0c


	ei                                               ; $6cfc: $fb
	ret                                              ; $6cfd: $c9


	daa                                              ; $6cfe: $27
	ld c, $c3                                        ; $6cff: $0e $c3
	daa                                              ; $6d01: $27
	ld a, [bc]                                       ; $6d02: $0a
	ei                                               ; $6d03: $fb

jr_038_6d04:
	ld [bc], a                                       ; $6d04: $02
	ret                                              ; $6d05: $c9


	daa                                              ; $6d06: $27
	db $10                                           ; $6d07: $10
	add hl, hl                                       ; $6d08: $29
	ld [$29c3], sp                                   ; $6d09: $08 $c3 $29
	db $10                                           ; $6d0c: $10
	ret                                              ; $6d0d: $c9


	ld a, [hl+]                                      ; $6d0e: $2a
	ld [$017e], sp                                   ; $6d0f: $08 $7e $01
	nop                                              ; $6d12: $00
	and b                                            ; $6d13: $a0
	ld a, [hl+]                                      ; $6d14: $2a
	rla                                              ; $6d15: $17
	nop                                              ; $6d16: $00
	ld bc, $007e                                     ; $6d17: $01 $7e $00
	ret                                              ; $6d1a: $c9


	add hl, hl                                       ; $6d1b: $29
	inc c                                            ; $6d1c: $0c
	jp $0c29                                         ; $6d1d: $c3 $29 $0c


	ret                                              ; $6d20: $c9


	daa                                              ; $6d21: $27
	inc c                                            ; $6d22: $0c
	jp $0c27                                         ; $6d23: $c3 $27 $0c


	ret                                              ; $6d26: $c9


	add hl, hl                                       ; $6d27: $29
	inc c                                            ; $6d28: $0c
	jp $0c29                                         ; $6d29: $c3 $29 $0c


	ret                                              ; $6d2c: $c9


	sub c                                            ; $6d2d: $91
	ld a, [hl]                                       ; $6d2e: $7e
	nop                                              ; $6d2f: $00
	inc h                                            ; $6d30: $24
	inc b                                            ; $6d31: $04
	dec h                                            ; $6d32: $25
	inc d                                            ; $6d33: $14
	ld a, [hl]                                       ; $6d34: $7e
	ld bc, $a000                                     ; $6d35: $01 $00 $a0
	dec h                                            ; $6d38: $25
	jr jr_038_6d04                                   ; $6d39: $18 $c9

	dec h                                            ; $6d3b: $25
	inc c                                            ; $6d3c: $0c
	ret z                                            ; $6d3d: $c8

	dec h                                            ; $6d3e: $25
	inc bc                                           ; $6d3f: $03
	nop                                              ; $6d40: $00
	ld bc, $7ec9                                     ; $6d41: $01 $c9 $7e
	nop                                              ; $6d44: $00
	inc h                                            ; $6d45: $24
	ld [$1025], sp                                   ; $6d46: $08 $25 $10
	ret z                                            ; $6d49: $c8

	dec hl                                           ; $6d4a: $2b
	inc bc                                           ; $6d4b: $03
	inc l                                            ; $6d4c: $2c
	dec d                                            ; $6d4d: $15
	ld a, [hl]                                       ; $6d4e: $7e
	ld bc, $a000                                     ; $6d4f: $01 $00 $a0
	inc l                                            ; $6d52: $2c
	jr z, @-$3b                                      ; $6d53: $28 $c3

	inc l                                            ; $6d55: $2c
	ld [$7eca], sp                                   ; $6d56: $08 $ca $7e
	dec b                                            ; $6d59: $05
	nop                                              ; $6d5a: $00
	and b                                            ; $6d5b: $a0
	inc h                                            ; $6d5c: $24
	ld [$007e], sp                                   ; $6d5d: $08 $7e $00
	sub d                                            ; $6d60: $92
	dec h                                            ; $6d61: $25
	db $10                                           ; $6d62: $10
	sub c                                            ; $6d63: $91
	jr nz, @+$0a                                     ; $6d64: $20 $08

	ret z                                            ; $6d66: $c8

	inc l                                            ; $6d67: $2c
	db $10                                           ; $6d68: $10
	jp $082c                                         ; $6d69: $c3 $2c $08


	jp z, $102a                                      ; $6d6c: $ca $2a $10

	jp $082a                                         ; $6d6f: $c3 $2a $08


	ret                                              ; $6d72: $c9


	add hl, hl                                       ; $6d73: $29
	db $10                                           ; $6d74: $10
	ld a, [hl+]                                      ; $6d75: $2a
	ld [$2ac3], sp                                   ; $6d76: $08 $c3 $2a
	db $10                                           ; $6d79: $10
	jp z, $0828                                      ; $6d7a: $ca $28 $08

	ld a, [hl]                                       ; $6d7d: $7e
	ld bc, $a000                                     ; $6d7e: $01 $00 $a0
	jr z, jr_038_6d9b                                ; $6d81: $28 $18

	jp z, Jump_038_7e92                              ; $6d83: $ca $92 $7e

	nop                                              ; $6d86: $00
	daa                                              ; $6d87: $27
	inc c                                            ; $6d88: $0c
	jp $0c27                                         ; $6d89: $c3 $27 $0c


	sub c                                            ; $6d8c: $91
	ret                                              ; $6d8d: $c9


	dec h                                            ; $6d8e: $25
	ld d, $c3                                        ; $6d8f: $16 $c3
	dec h                                            ; $6d91: $25
	ld [bc], a                                       ; $6d92: $02
	ret                                              ; $6d93: $c9


	daa                                              ; $6d94: $27
	ld c, $c3                                        ; $6d95: $0e $c3
	daa                                              ; $6d97: $27
	ld a, [bc]                                       ; $6d98: $0a
	sub b                                            ; $6d99: $90
	ei                                               ; $6d9a: $fb

jr_038_6d9b:
	jp z, $0e29                                      ; $6d9b: $ca $29 $0e

	ld a, [hl]                                       ; $6d9e: $7e
	nop                                              ; $6d9f: $00
	jp $0a29                                         ; $6da0: $c3 $29 $0a


	ei                                               ; $6da3: $fb
	inc bc                                           ; $6da4: $03
	jp nz, $1029                                     ; $6da5: $c2 $29 $10

	ld a, [hl]                                       ; $6da8: $7e
	ld bc, $a900                                     ; $6da9: $01 $00 $a9
	jp z, $082a                                      ; $6dac: $ca $2a $08

	jp $102a                                         ; $6daf: $c3 $2a $10


	jp z, $017e                                      ; $6db2: $ca $7e $01

	inc c                                            ; $6db5: $0c
	and b                                            ; $6db6: $a0
	add hl, hl                                       ; $6db7: $29
	jr nz, @+$80                                     ; $6db8: $20 $7e

	nop                                              ; $6dba: $00
	jp z, $0c2a                                      ; $6dbb: $ca $2a $0c

	jp $0c2a                                         ; $6dbe: $c3 $2a $0c


	jp z, $0c29                                      ; $6dc1: $ca $29 $0c

	jp $0c29                                         ; $6dc4: $c3 $29 $0c


	ei                                               ; $6dc7: $fb
	jp z, $0e27                                      ; $6dc8: $ca $27 $0e

	jp $0a27                                         ; $6dcb: $c3 $27 $0a


jr_038_6dce:
	ei                                               ; $6dce: $fb
	ld [bc], a                                       ; $6dcf: $02
	jp z, $1027                                      ; $6dd0: $ca $27 $10

	add hl, hl                                       ; $6dd3: $29
	ld [$29c3], sp                                   ; $6dd4: $08 $c3 $29
	db $10                                           ; $6dd7: $10
	ret                                              ; $6dd8: $c9


	ld a, [hl+]                                      ; $6dd9: $2a
	ld [$017e], sp                                   ; $6dda: $08 $7e $01
	nop                                              ; $6ddd: $00
	and b                                            ; $6dde: $a0
	ld a, [hl+]                                      ; $6ddf: $2a
	rla                                              ; $6de0: $17
	nop                                              ; $6de1: $00
	ld bc, $007e                                     ; $6de2: $01 $7e $00
	jp z, $0c29                                      ; $6de5: $ca $29 $0c

	jp $0c29                                         ; $6de8: $c3 $29 $0c


	jp z, $0c27                                      ; $6deb: $ca $27 $0c

	jp $0c27                                         ; $6dee: $c3 $27 $0c


	jp z, $0c29                                      ; $6df1: $ca $29 $0c

	jp $0c29                                         ; $6df4: $c3 $29 $0c


	ret                                              ; $6df7: $c9


	sub c                                            ; $6df8: $91
	ld a, [hl]                                       ; $6df9: $7e
	nop                                              ; $6dfa: $00
	inc h                                            ; $6dfb: $24
	inc b                                            ; $6dfc: $04
	dec h                                            ; $6dfd: $25
	inc d                                            ; $6dfe: $14
	ld a, [hl]                                       ; $6dff: $7e
	ld bc, $a000                                     ; $6e00: $01 $00 $a0
	dec h                                            ; $6e03: $25
	jr jr_038_6dce                                   ; $6e04: $18 $c8

	dec h                                            ; $6e06: $25
	inc c                                            ; $6e07: $0c
	rst JumpTable                                          ; $6e08: $c7
	dec h                                            ; $6e09: $25
	inc bc                                           ; $6e0a: $03
	nop                                              ; $6e0b: $00
	ld bc, $7ec9                                     ; $6e0c: $01 $c9 $7e

jr_038_6e0f:
	nop                                              ; $6e0f: $00
	inc h                                            ; $6e10: $24
	ld [$1025], sp                                   ; $6e11: $08 $25 $10
	ret z                                            ; $6e14: $c8

	dec hl                                           ; $6e15: $2b
	inc bc                                           ; $6e16: $03
	inc l                                            ; $6e17: $2c
	dec d                                            ; $6e18: $15
	ld a, [hl]                                       ; $6e19: $7e
	ld bc, $a000                                     ; $6e1a: $01 $00 $a0
	inc l                                            ; $6e1d: $2c
	jr z, @-$3b                                      ; $6e1e: $28 $c3

	inc l                                            ; $6e20: $2c
	ld [$7ec9], sp                                   ; $6e21: $08 $c9 $7e
	dec b                                            ; $6e24: $05
	nop                                              ; $6e25: $00
	and b                                            ; $6e26: $a0
	inc h                                            ; $6e27: $24

jr_038_6e28:
	ld [$007e], sp                                   ; $6e28: $08 $7e $00
	sub d                                            ; $6e2b: $92
	dec h                                            ; $6e2c: $25
	db $10                                           ; $6e2d: $10
	res 2, c                                         ; $6e2e: $cb $91
	jr nz, jr_038_6e3a                               ; $6e30: $20 $08

	ret z                                            ; $6e32: $c8

	sub c                                            ; $6e33: $91
	inc l                                            ; $6e34: $2c
	db $10                                           ; $6e35: $10
	jp $082c                                         ; $6e36: $c3 $2c $08


	ret z                                            ; $6e39: $c8

jr_038_6e3a:
	ld a, [hl+]                                      ; $6e3a: $2a
	db $10                                           ; $6e3b: $10
	jp $082a                                         ; $6e3c: $c3 $2a $08


	ret                                              ; $6e3f: $c9


	jr z, jr_038_6e52                                ; $6e40: $28 $10

	ld a, [hl+]                                      ; $6e42: $2a
	ld [$2ac3], sp                                   ; $6e43: $08 $c3 $2a
	db $10                                           ; $6e46: $10
	ret                                              ; $6e47: $c9


	inc l                                            ; $6e48: $2c
	ld [$ff96], sp                                   ; $6e49: $08 $96 $ff
	inc b                                            ; $6e4c: $04
	ld a, [hl]                                       ; $6e4d: $7e
	stop                                             ; $6e4e: $10 $00
	and d                                            ; $6e50: $a2
	inc l                                            ; $6e51: $2c

jr_038_6e52:
	db $10                                           ; $6e52: $10
	ld a, [hl]                                       ; $6e53: $7e
	db $10                                           ; $6e54: $10
	ld [$b1a2], sp                                   ; $6e55: $08 $a2 $b1
	ld [hl], c                                       ; $6e58: $71
	rst $38                                          ; $6e59: $ff
	dec b                                            ; $6e5a: $05
	inc l                                            ; $6e5b: $2c
	jr jr_038_6e0f                                   ; $6e5c: $18 $b1

	ld b, c                                          ; $6e5e: $41
	rst $38                                          ; $6e5f: $ff
	dec b                                            ; $6e60: $05
	inc l                                            ; $6e61: $2c
	db $10                                           ; $6e62: $10
	ld a, [hl]                                       ; $6e63: $7e
	nop                                              ; $6e64: $00
	or l                                             ; $6e65: $b5
	sub c                                            ; $6e66: $91
	ld [bc], a                                       ; $6e67: $02
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00

jr_038_6e6a:
	daa                                              ; $6e6a: $27
	db $10                                           ; $6e6b: $10
	jr z, jr_038_6e7e                                ; $6e6c: $28 $10

	ret                                              ; $6e6e: $c9


	sub c                                            ; $6e6f: $91
	add hl, hl                                       ; $6e70: $29
	ld [$29c8], sp                                   ; $6e71: $08 $c8 $29
	jr @+$80                                         ; $6e74: $18 $7e

	ld bc, $a000                                     ; $6e76: $01 $00 $a0
	add hl, hl                                       ; $6e79: $29
	inc h                                            ; $6e7a: $24
	ld a, [hl]                                       ; $6e7b: $7e
	stop                                             ; $6e7c: $10 $00

jr_038_6e7e:
	and c                                            ; $6e7e: $a1
	add hl, hl                                       ; $6e7f: $29
	inc c                                            ; $6e80: $0c
	rst JumpTable                                          ; $6e81: $c7
	daa                                              ; $6e82: $27
	inc c                                            ; $6e83: $0c
	ld a, [hl]                                       ; $6e84: $7e
	stop                                             ; $6e85: $10 $00
	and b                                            ; $6e87: $a0
	call nz, $0c25                                   ; $6e88: $c4 $25 $0c
	ld a, [hl]                                       ; $6e8b: $7e
	nop                                              ; $6e8c: $00
	cp $c9                                           ; $6e8d: $fe $c9

jr_038_6e8f:
	sub c                                            ; $6e8f: $91
	add hl, hl                                       ; $6e90: $29
	ld [$29c3], sp                                   ; $6e91: $08 $c3 $29
	jr nz, jr_038_6e28                               ; $6e94: $20 $92

	ret                                              ; $6e96: $c9


	daa                                              ; $6e97: $27
	ld [$c991], sp                                   ; $6e98: $08 $91 $c9
	add hl, hl                                       ; $6e9b: $29
	db $10                                           ; $6e9c: $10
	jp z, $2592                                      ; $6e9d: $ca $92 $25

	jr jr_038_6e6a                                   ; $6ea0: $18 $c8

	sub c                                            ; $6ea2: $91
	ld a, [hl+]                                      ; $6ea3: $2a
	ld [$082a], sp                                   ; $6ea4: $08 $2a $08

jr_038_6ea7:
	jp $202a                                         ; $6ea7: $c3 $2a $20


	ret                                              ; $6eaa: $c9


	sub d                                            ; $6eab: $92
	add hl, hl                                       ; $6eac: $29
	ld [$2a91], sp                                   ; $6ead: $08 $91 $2a
	ld [$2ac3], sp                                   ; $6eb0: $08 $c3 $2a
	ld [$c892], sp                                   ; $6eb3: $08 $92 $c8
	inc l                                            ; $6eb6: $2c
	ld [$7e91], sp                                   ; $6eb7: $08 $91 $7e
	inc bc                                           ; $6eba: $03
	nop                                              ; $6ebb: $00
	and b                                            ; $6ebc: $a0
	ld l, $10                                        ; $6ebd: $2e $10
	ld a, [hl]                                       ; $6ebf: $7e
	nop                                              ; $6ec0: $00
	inc l                                            ; $6ec1: $2c
	ld [$2cc3], sp                                   ; $6ec2: $08 $c3 $2c
	jr z, jr_038_6e8f                                ; $6ec5: $28 $c8

	inc l                                            ; $6ec7: $2c
	ld [$057e], sp                                   ; $6ec8: $08 $7e $05
	nop                                              ; $6ecb: $00
	and b                                            ; $6ecc: $a0
	add hl, hl                                       ; $6ecd: $29
	rrca                                             ; $6ece: $0f
	nop                                              ; $6ecf: $00
	ld bc, $7e92                                     ; $6ed0: $01 $92 $7e
	nop                                              ; $6ed3: $00
	add hl, hl                                       ; $6ed4: $29
	ld [$91c9], sp                                   ; $6ed5: $08 $c9 $91
	daa                                              ; $6ed8: $27
	db $10                                           ; $6ed9: $10
	sub d                                            ; $6eda: $92
	dec h                                            ; $6edb: $25
	ld [$1825], sp                                   ; $6edc: $08 $25 $18
	ld a, [hl]                                       ; $6edf: $7e
	ld bc, $a000                                     ; $6ee0: $01 $00 $a0
	dec h                                            ; $6ee3: $25
	jr nc, @-$3b                                     ; $6ee4: $30 $c3

jr_038_6ee6:
	dec h                                            ; $6ee6: $25
	jr @+$80                                         ; $6ee7: $18 $7e

	nop                                              ; $6ee9: $00
	or l                                             ; $6eea: $b5
	pop bc                                           ; $6eeb: $c1
	ld [bc], a                                       ; $6eec: $02
	rst $38                                          ; $6eed: $ff
	inc b                                            ; $6eee: $04
	ld [hl+], a                                      ; $6eef: $22
	jr jr_038_6ea7                                   ; $6ef0: $18 $b5

	and c                                            ; $6ef2: $a1
	ld bc, $07ff                                     ; $6ef3: $01 $ff $07
	dec h                                            ; $6ef6: $25
	db $10                                           ; $6ef7: $10
	sub d                                            ; $6ef8: $92
	call z, $0822                                    ; $6ef9: $cc $22 $08
	sub [hl]                                         ; $6efc: $96
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	inc h                                            ; $6eff: $24
	ld [$24c5], sp                                   ; $6f00: $08 $c5 $24
	ld [$ca91], sp                                   ; $6f03: $08 $91 $ca
	dec h                                            ; $6f06: $25
	ld [$92c9], sp                                   ; $6f07: $08 $c9 $92
	ld a, [hl]                                       ; $6f0a: $7e
	db $10                                           ; $6f0b: $10
	ld [$27a0], sp                                   ; $6f0c: $08 $a0 $27
	ld d, $c3                                        ; $6f0f: $16 $c3
	daa                                              ; $6f11: $27
	ld [bc], a                                       ; $6f12: $02
	ld a, [hl]                                       ; $6f13: $7e
	nop                                              ; $6f14: $00
	jp z, $2991                                      ; $6f15: $ca $91 $29

	ld [$29c3], sp                                   ; $6f18: $08 $c3 $29
	ld [$cb92], sp                                   ; $6f1b: $08 $92 $cb
	inc h                                            ; $6f1e: $24
	ld [$0827], sp                                   ; $6f1f: $08 $27 $08
	add $27                                          ; $6f22: $c6 $27
	ld [$a1b5], sp                                   ; $6f24: $08 $b5 $a1
	ld bc, $07ff                                     ; $6f27: $01 $ff $07
	ld a, [hl]                                       ; $6f2a: $7e
	ld bc, $a000                                     ; $6f2b: $01 $00 $a0
	dec h                                            ; $6f2e: $25
	jr jr_038_6ee6                                   ; $6f2f: $18 $b5

	or c                                             ; $6f31: $b1
	ld [bc], a                                       ; $6f32: $02
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	ld a, [hl]                                       ; $6f35: $7e
	nop                                              ; $6f36: $00
	ld [hl+], a                                      ; $6f37: $22
	ld [$1024], sp                                   ; $6f38: $08 $24 $10
	sub c                                            ; $6f3b: $91
	dec h                                            ; $6f3c: $25
	ld [$c891], sp                                   ; $6f3d: $08 $91 $c8
	ld a, [hl+]                                      ; $6f40: $2a
	ld c, $c3                                        ; $6f41: $0e $c3
	ld a, [hl+]                                      ; $6f43: $2a
	ld a, [bc]                                       ; $6f44: $0a
	ret                                              ; $6f45: $c9


	add hl, hl                                       ; $6f46: $29
	db $10                                           ; $6f47: $10
	daa                                              ; $6f48: $27
	ld [$27c3], sp                                   ; $6f49: $08 $c3 $27
	db $10                                           ; $6f4c: $10
	sub b                                            ; $6f4d: $90
	jp z, $0c25                                      ; $6f4e: $ca $25 $0c

	push bc                                          ; $6f51: $c5
	dec h                                            ; $6f52: $25
	inc c                                            ; $6f53: $0c
	sub c                                            ; $6f54: $91
	ret                                              ; $6f55: $c9


	daa                                              ; $6f56: $27
	ld [$0827], sp                                   ; $6f57: $08 $27 $08
	jp $1027                                         ; $6f5a: $c3 $27 $10


	nop                                              ; $6f5d: $00
	db $10                                           ; $6f5e: $10
	ret                                              ; $6f5f: $c9


	sub d                                            ; $6f60: $92
	jr c, @+$06                                      ; $6f61: $38 $04

	jp $0838                                         ; $6f63: $c3 $38 $08


	jp nz, $0c38                                     ; $6f66: $c2 $38 $0c

	rst JumpTable                                          ; $6f69: $c7
	jr c, @+$06                                      ; $6f6a: $38 $04

	jp $0838                                         ; $6f6c: $c3 $38 $08


	jp nz, $0c38                                     ; $6f6f: $c2 $38 $0c

	push bc                                          ; $6f72: $c5
	jr c, @+$06                                      ; $6f73: $38 $04

	jp nz, $0438                                     ; $6f75: $c2 $38 $04

	cp $ff                                           ; $6f78: $fe $ff
	ret nc                                           ; $6f7a: $d0

jr_038_6f7b:
	ld a, l                                          ; $6f7b: $7d
	add l                                            ; $6f7c: $85
	nop                                              ; $6f7d: $00
	jr nz, jr_038_6f7b                               ; $6f7e: $20 $fb

	db $fd                                           ; $6f80: $fd
	ld a, $72                                        ; $6f81: $3e $72
	ei                                               ; $6f83: $fb
	inc b                                            ; $6f84: $04
	db $fd                                           ; $6f85: $fd
	ld a, $72                                        ; $6f86: $3e $72
	jp nz, $1414                                     ; $6f88: $c2 $14 $14

	call nz, $0414                                   ; $6f8b: $c4 $14 $04
	ld [hl], e                                       ; $6f8e: $73
	db $fd                                           ; $6f8f: $fd
	ld a, $72                                        ; $6f90: $3e $72
	ld [hl], b                                       ; $6f92: $70
	db $fd                                           ; $6f93: $fd
	ld a, $72                                        ; $6f94: $3e $72
	ei                                               ; $6f96: $fb
	db $fd                                           ; $6f97: $fd
	ld a, $72                                        ; $6f98: $3e $72
	ei                                               ; $6f9a: $fb
	inc b                                            ; $6f9b: $04
	db $fd                                           ; $6f9c: $fd
	ld a, $72                                        ; $6f9d: $3e $72
	jp nz, $010d                                     ; $6f9f: $c2 $0d $01

	nop                                              ; $6fa2: $00
	rlca                                             ; $6fa3: $07
	dec c                                            ; $6fa4: $0d
	ld [bc], a                                       ; $6fa5: $02
	nop                                              ; $6fa6: $00
	ld b, $c4                                        ; $6fa7: $06 $c4
	add hl, de                                       ; $6fa9: $19
	inc b                                            ; $6faa: $04
	nop                                              ; $6fab: $00
	inc b                                            ; $6fac: $04
	jp nz, $1419                                     ; $6fad: $c2 $19 $14

	call nz, $0419                                   ; $6fb0: $c4 $19 $04
	jp nz, $1614                                     ; $6fb3: $c2 $14 $16

	call nz, $0214                                   ; $6fb6: $c4 $14 $02
	add l                                            ; $6fb9: $85
	jp nz, $0c16                                     ; $6fba: $c2 $16 $0c

	add $16                                          ; $6fbd: $c6 $16
	inc b                                            ; $6fbf: $04
	call nz, $0122                                   ; $6fc0: $c4 $22 $01
	nop                                              ; $6fc3: $00
	rlca                                             ; $6fc4: $07
	jp nz, $0116                                     ; $6fc5: $c2 $16 $01

	nop                                              ; $6fc8: $00
	rlca                                             ; $6fc9: $07
	ld d, $02                                        ; $6fca: $16 $02
	nop                                              ; $6fcc: $00
	ld b, $c4                                        ; $6fcd: $06 $c4
	ld d, $04                                        ; $6fcf: $16 $04
	nop                                              ; $6fd1: $00
	inc b                                            ; $6fd2: $04
	jp nz, $1416                                     ; $6fd3: $c2 $16 $14

	call nz, $0416                                   ; $6fd6: $c4 $16 $04
	jp nz, $0e16                                     ; $6fd9: $c2 $16 $0e

	call nz, $0216                                   ; $6fdc: $c4 $16 $02
	jp nz, $0814                                     ; $6fdf: $c2 $14 $08

	inc d                                            ; $6fe2: $14
	inc c                                            ; $6fe3: $0c
	add $14                                          ; $6fe4: $c6 $14
	inc b                                            ; $6fe6: $04
	jp nz, $0420                                     ; $6fe7: $c2 $20 $04

	nop                                              ; $6fea: $00
	inc b                                            ; $6feb: $04
	add l                                            ; $6fec: $85
	jp nz, $0114                                     ; $6fed: $c2 $14 $01

	nop                                              ; $6ff0: $00
	rlca                                             ; $6ff1: $07
	add a                                            ; $6ff2: $87
	jr nz, @+$04                                     ; $6ff3: $20 $02

	nop                                              ; $6ff5: $00
	ld b, $85                                        ; $6ff6: $06 $85
	jp nz, $0114                                     ; $6ff8: $c2 $14 $01

	nop                                              ; $6ffb: $00
	rlca                                             ; $6ffc: $07
	jp nz, $0e14                                     ; $6ffd: $c2 $14 $0e

	call nz, $0214                                   ; $7000: $c4 $14 $02
	add a                                            ; $7003: $87
	jp nz, $0820                                     ; $7004: $c2 $20 $08

	add l                                            ; $7007: $85
	jp nz, $1414                                     ; $7008: $c2 $14 $14

	call nz, $0414                                   ; $700b: $c4 $14 $04
	jp nz, $0c12                                     ; $700e: $c2 $12 $0c

	add $12                                          ; $7011: $c6 $12
	inc b                                            ; $7013: $04
	jp nz, $041e                                     ; $7014: $c2 $1e $04

	nop                                              ; $7017: $00
	inc b                                            ; $7018: $04
	jp nz, $0112                                     ; $7019: $c2 $12 $01

	nop                                              ; $701c: $00
	rlca                                             ; $701d: $07
	ld [de], a                                       ; $701e: $12
	ld [bc], a                                       ; $701f: $02
	nop                                              ; $7020: $00
	ld b, $87                                        ; $7021: $06 $87
	jp nz, $021e                                     ; $7023: $c2 $1e $02

	nop                                              ; $7026: $00
	ld b, $85                                        ; $7027: $06 $85
	ld [de], a                                       ; $7029: $12
	ld c, $c4                                        ; $702a: $0e $c4
	ld [de], a                                       ; $702c: $12
	ld [bc], a                                       ; $702d: $02
	jp nz, $0819                                     ; $702e: $c2 $19 $08

	add l                                            ; $7031: $85
	jp nz, $0e18                                     ; $7032: $c2 $18 $0e

	call nz, $0218                                   ; $7035: $c4 $18 $02
	jp nz, $0817                                     ; $7038: $c2 $17 $08

	rla                                              ; $703b: $17
	inc c                                            ; $703c: $0c
	add $17                                          ; $703d: $c6 $17
	inc b                                            ; $703f: $04
	jp nz, $0217                                     ; $7040: $c2 $17 $02

	nop                                              ; $7043: $00
	ld b, $17                                        ; $7044: $06 $17
	ld bc, $0700                                     ; $7046: $01 $00 $07
	call nz, $0217                                   ; $7049: $c4 $17 $02
	nop                                              ; $704c: $00
	ld b, $c2                                        ; $704d: $06 $c2
	rla                                              ; $704f: $17
	ld [bc], a                                       ; $7050: $02
	nop                                              ; $7051: $00
	ld b, $14                                        ; $7052: $06 $14
	db $10                                           ; $7054: $10
	add a                                            ; $7055: $87
	jr nz, @+$06                                     ; $7056: $20 $04

	add $20                                          ; $7058: $c6 $20
	inc b                                            ; $705a: $04
	jp nz, $1481                                     ; $705b: $c2 $81 $14

	rlca                                             ; $705e: $07
	nop                                              ; $705f: $00
	ld bc, $081e                                     ; $7060: $01 $1e $08
	jr nz, jr_038_706d                               ; $7063: $20 $08

	add l                                            ; $7065: $85
	ei                                               ; $7066: $fb
	db $fd                                           ; $7067: $fd
	ld a, $72                                        ; $7068: $3e $72
	ei                                               ; $706a: $fb
	inc b                                            ; $706b: $04
	db $fd                                           ; $706c: $fd

jr_038_706d:
	ld a, $72                                        ; $706d: $3e $72
	jp nz, $1414                                     ; $706f: $c2 $14 $14

	call nz, $0414                                   ; $7072: $c4 $14 $04
	ld [hl], e                                       ; $7075: $73
	db $fd                                           ; $7076: $fd
	ld a, $72                                        ; $7077: $3e $72
	ld [hl], b                                       ; $7079: $70
	db $fd                                           ; $707a: $fd
	ld a, $72                                        ; $707b: $3e $72
	ei                                               ; $707d: $fb
	db $fd                                           ; $707e: $fd
	ld a, $72                                        ; $707f: $3e $72
	ei                                               ; $7081: $fb
	inc b                                            ; $7082: $04
	db $fd                                           ; $7083: $fd
	ld a, $72                                        ; $7084: $3e $72
	jp nz, $010d                                     ; $7086: $c2 $0d $01

	nop                                              ; $7089: $00
	rlca                                             ; $708a: $07
	dec c                                            ; $708b: $0d
	ld [bc], a                                       ; $708c: $02
	nop                                              ; $708d: $00
	ld b, $c4                                        ; $708e: $06 $c4
	add hl, de                                       ; $7090: $19
	inc b                                            ; $7091: $04
	nop                                              ; $7092: $00
	inc b                                            ; $7093: $04
	jp nz, $1419                                     ; $7094: $c2 $19 $14

	call nz, $0419                                   ; $7097: $c4 $19 $04
	jp nz, $1614                                     ; $709a: $c2 $14 $16

	call nz, $0214                                   ; $709d: $c4 $14 $02
	add l                                            ; $70a0: $85
	jp nz, $0c16                                     ; $70a1: $c2 $16 $0c

	add $16                                          ; $70a4: $c6 $16
	inc b                                            ; $70a6: $04
	call nz, $0122                                   ; $70a7: $c4 $22 $01
	nop                                              ; $70aa: $00
	rlca                                             ; $70ab: $07
	jp nz, $0116                                     ; $70ac: $c2 $16 $01

	nop                                              ; $70af: $00
	rlca                                             ; $70b0: $07
	ld d, $02                                        ; $70b1: $16 $02
	nop                                              ; $70b3: $00
	ld b, $c4                                        ; $70b4: $06 $c4
	ld d, $04                                        ; $70b6: $16 $04
	nop                                              ; $70b8: $00
	inc b                                            ; $70b9: $04
	jp nz, $1416                                     ; $70ba: $c2 $16 $14

	call nz, $0416                                   ; $70bd: $c4 $16 $04
	jp nz, $0e16                                     ; $70c0: $c2 $16 $0e

	call nz, $0216                                   ; $70c3: $c4 $16 $02
	jp nz, $0814                                     ; $70c6: $c2 $14 $08

	inc d                                            ; $70c9: $14
	inc c                                            ; $70ca: $0c
	add $14                                          ; $70cb: $c6 $14
	inc b                                            ; $70cd: $04
	jp nz, $0420                                     ; $70ce: $c2 $20 $04

	nop                                              ; $70d1: $00
	inc b                                            ; $70d2: $04
	add l                                            ; $70d3: $85
	jp nz, $0114                                     ; $70d4: $c2 $14 $01

	nop                                              ; $70d7: $00
	rlca                                             ; $70d8: $07
	add a                                            ; $70d9: $87
	jr nz, @+$04                                     ; $70da: $20 $02

	nop                                              ; $70dc: $00
	ld b, $85                                        ; $70dd: $06 $85
	jp nz, $0114                                     ; $70df: $c2 $14 $01

	nop                                              ; $70e2: $00
	rlca                                             ; $70e3: $07
	jp nz, $0e14                                     ; $70e4: $c2 $14 $0e

	call nz, $0214                                   ; $70e7: $c4 $14 $02
	add a                                            ; $70ea: $87
	jp nz, $0820                                     ; $70eb: $c2 $20 $08

	add l                                            ; $70ee: $85
	jp nz, $1014                                     ; $70ef: $c2 $14 $10

	add a                                            ; $70f2: $87
	jr nz, jr_038_70fd                               ; $70f3: $20 $08

	add l                                            ; $70f5: $85
	jp nz, $0c12                                     ; $70f6: $c2 $12 $0c

	add $12                                          ; $70f9: $c6 $12
	inc b                                            ; $70fb: $04
	add a                                            ; $70fc: $87

jr_038_70fd:
	jp nz, $031e                                     ; $70fd: $c2 $1e $03

	nop                                              ; $7100: $00
	dec b                                            ; $7101: $05
	add l                                            ; $7102: $85
	jp nz, $1614                                     ; $7103: $c2 $14 $16

	call nz, $0214                                   ; $7106: $c4 $14 $02
	jp nz, $0c15                                     ; $7109: $c2 $15 $0c

	add $15                                          ; $710c: $c6 $15
	inc b                                            ; $710e: $04
	add c                                            ; $710f: $81
	jp nz, $0321                                     ; $7110: $c2 $21 $03

	nop                                              ; $7113: $00
	dec b                                            ; $7114: $05
	add l                                            ; $7115: $85
	jp nz, $0e19                                     ; $7116: $c2 $19 $0e

	call nz, $0219                                   ; $7119: $c4 $19 $02
	jp nz, $0817                                     ; $711c: $c2 $17 $08

	add $17                                          ; $711f: $c6 $17
	ld [$2800], sp                                   ; $7121: $08 $00 $28
	jp nz, $0112                                     ; $7124: $c2 $12 $01

	nop                                              ; $7127: $00
	rlca                                             ; $7128: $07
	ld [de], a                                       ; $7129: $12
	rrca                                             ; $712a: $0f
	nop                                              ; $712b: $00
	ld bc, $0f13                                     ; $712c: $01 $13 $0f
	nop                                              ; $712f: $00
	ld bc, $0814                                     ; $7130: $01 $14 $08
	inc d                                            ; $7133: $14
	jr @+$16                                         ; $7134: $18 $14

	db $10                                           ; $7136: $10
	add c                                            ; $7137: $81
	jr nz, @+$0a                                     ; $7138: $20 $08

	jr nz, @+$1a                                     ; $713a: $20 $18

	jr nz, jr_038_7146                               ; $713c: $20 $08

	call nz, $1020                                   ; $713e: $c4 $20 $10
	cp $85                                           ; $7141: $fe $85
	db $fd                                           ; $7143: $fd
	ld a, $72                                        ; $7144: $3e $72

jr_038_7146:
	jp nz, $1414                                     ; $7146: $c2 $14 $14

	call nz, $0414                                   ; $7149: $c4 $14 $04
	jp nz, $1016                                     ; $714c: $c2 $16 $10

	call nz, $0816                                   ; $714f: $c4 $16 $08
	jp nz, $0819                                     ; $7152: $c2 $19 $08

	add $19                                          ; $7155: $c6 $19
	ld [$19c2], sp                                   ; $7157: $08 $c2 $19
	ld [$1019], sp                                   ; $715a: $08 $19 $10
	add $19                                          ; $715d: $c6 $19
	ld [$14c2], sp                                   ; $715f: $08 $c2 $14
	inc d                                            ; $7162: $14
	call nz, $0414                                   ; $7163: $c4 $14 $04
	jp nz, $1016                                     ; $7166: $c2 $16 $10

	call nz, $0816                                   ; $7169: $c4 $16 $08
	jp nz, $0819                                     ; $716c: $c2 $19 $08

	add $19                                          ; $716f: $c6 $19
	ld [$19c2], sp                                   ; $7171: $08 $c2 $19
	ld [$1019], sp                                   ; $7174: $08 $19 $10
	add $19                                          ; $7177: $c6 $19
	ld [$14c2], sp                                   ; $7179: $08 $c2 $14
	inc d                                            ; $717c: $14
	call nz, $0414                                   ; $717d: $c4 $14 $04
	jp nz, $1019                                     ; $7180: $c2 $19 $10

	call nz, $0819                                   ; $7183: $c4 $19 $08
	jp nz, $0818                                     ; $7186: $c2 $18 $08

	add $18                                          ; $7189: $c6 $18
	ld [$16c2], sp                                   ; $718b: $08 $c2 $16
	ld [$16c2], sp                                   ; $718e: $08 $c2 $16
	ld c, $c4                                        ; $7191: $0e $c4
	ld d, $08                                        ; $7193: $16 $08
	add $16                                          ; $7195: $c6 $16
	ld [bc], a                                       ; $7197: $02
	jp nz, $0116                                     ; $7198: $c2 $16 $01

	nop                                              ; $719b: $00
	rlca                                             ; $719c: $07
	add e                                            ; $719d: $83
	jr nz, jr_038_71a8                               ; $719e: $20 $08

	ld [hl+], a                                      ; $71a0: $22
	ld [$7385], sp                                   ; $71a1: $08 $85 $73
	db $fd                                           ; $71a4: $fd
	ld a, $72                                        ; $71a5: $3e $72
	ld [hl], b                                       ; $71a7: $70

jr_038_71a8:
	jp nz, $1414                                     ; $71a8: $c2 $14 $14

	call nz, $0414                                   ; $71ab: $c4 $14 $04
	ei                                               ; $71ae: $fb
	add l                                            ; $71af: $85
	jp nz, $1012                                     ; $71b0: $c2 $12 $10

	add a                                            ; $71b3: $87
	ld e, $06                                        ; $71b4: $1e $06
	call nz, $021e                                   ; $71b6: $c4 $1e $02
	ei                                               ; $71b9: $fb
	ld [bc], a                                       ; $71ba: $02
	add l                                            ; $71bb: $85
	jp nz, $1014                                     ; $71bc: $c2 $14 $10

	add a                                            ; $71bf: $87
	jr nz, @+$08                                     ; $71c0: $20 $06

	call nz, $0220                                   ; $71c2: $c4 $20 $02
	add l                                            ; $71c5: $85
	jp nz, $1418                                     ; $71c6: $c2 $18 $14

	call nz, $0418                                   ; $71c9: $c4 $18 $04
	jp nz, $1011                                     ; $71cc: $c2 $11 $10

	add $11                                          ; $71cf: $c6 $11
	ld [$15c2], sp                                   ; $71d1: $08 $c2 $15
	ld [$15c6], sp                                   ; $71d4: $08 $c6 $15
	ld [$16c2], sp                                   ; $71d7: $08 $c2 $16
	ld [$16c2], sp                                   ; $71da: $08 $c2 $16
	inc c                                            ; $71dd: $0c
	add $16                                          ; $71de: $c6 $16
	inc b                                            ; $71e0: $04
	call nz, $0122                                   ; $71e1: $c4 $22 $01
	nop                                              ; $71e4: $00
	rlca                                             ; $71e5: $07
	jp nz, $0116                                     ; $71e6: $c2 $16 $01

	nop                                              ; $71e9: $00
	rlca                                             ; $71ea: $07
	ld a, a                                          ; $71eb: $7f
	rla                                              ; $71ec: $17
	jr nz, jr_038_71f7                               ; $71ed: $20 $08

	ld [hl+], a                                      ; $71ef: $22
	ld [$1b81], sp                                   ; $71f0: $08 $81 $1b
	db $10                                           ; $71f3: $10
	call nz, $081b                                   ; $71f4: $c4 $1b $08

jr_038_71f7:
	jp nz, $101d                                     ; $71f7: $c2 $1d $10

	call nz, $081d                                   ; $71fa: $c4 $1d $08
	jp nz, $101e                                     ; $71fd: $c2 $1e $10

	call nz, $081e                                   ; $7200: $c4 $1e $08
	jp nz, $101f                                     ; $7203: $c2 $1f $10

	add l                                            ; $7206: $85
	jp nz, $0814                                     ; $7207: $c2 $14 $08

	jp nz, $0c14                                     ; $720a: $c2 $14 $0c

	add $14                                          ; $720d: $c6 $14
	inc b                                            ; $720f: $04
	add a                                            ; $7210: $87
	jp nz, $0220                                     ; $7211: $c2 $20 $02

	nop                                              ; $7214: $00
	ld b, $85                                        ; $7215: $06 $85
	jp nz, $0114                                     ; $7217: $c2 $14 $01

	nop                                              ; $721a: $00
	rlca                                             ; $721b: $07
	inc d                                            ; $721c: $14
	ld [bc], a                                       ; $721d: $02
	nop                                              ; $721e: $00
	ld b, $81                                        ; $721f: $06 $81
	jp nz, $0420                                     ; $7221: $c2 $20 $04

	nop                                              ; $7224: $00
	inc b                                            ; $7225: $04
	add l                                            ; $7226: $85
	jp nz, $0114                                     ; $7227: $c2 $14 $01

	nop                                              ; $722a: $00
	rlca                                             ; $722b: $07
	inc d                                            ; $722c: $14
	ld [bc], a                                       ; $722d: $02
	nop                                              ; $722e: $00
	ld b, $14                                        ; $722f: $06 $14
	ld [bc], a                                       ; $7231: $02
	nop                                              ; $7232: $00
	ld b, $81                                        ; $7233: $06 $81
	ld e, $08                                        ; $7235: $1e $08
	jr nz, jr_038_7241                               ; $7237: $20 $08

	add l                                            ; $7239: $85
	inc d                                            ; $723a: $14
	ld [$fffe], sp                                   ; $723b: $08 $fe $ff
	jp nz, $19d1                                     ; $723e: $c2 $d1 $19

jr_038_7241:
	inc c                                            ; $7241: $0c
	call nz, $19d1                                   ; $7242: $c4 $d1 $19
	ld b, $c6                                        ; $7245: $06 $c6
	pop de                                           ; $7247: $d1
	add hl, de                                       ; $7248: $19
	ld b, $fd                                        ; $7249: $06 $fd
	ret nc                                           ; $724b: $d0

	ld a, l                                          ; $724c: $7d
	dec c                                            ; $724d: $0d
	inc b                                            ; $724e: $04
	dec c                                            ; $724f: $0d
	inc b                                            ; $7250: $04
	inc c                                            ; $7251: $0c
	ld [$080c], sp                                   ; $7252: $08 $0c $08
	ld c, h                                          ; $7255: $4c
	ld [$180b], sp                                   ; $7256: $08 $0b $18
	ld c, a                                          ; $7259: $4f
	jr jr_038_7267                                   ; $725a: $18 $0b

	jr jr_038_72ad                                   ; $725c: $18 $4f

	db $10                                           ; $725e: $10
	dec bc                                           ; $725f: $0b
	ld [$1009], sp                                   ; $7260: $08 $09 $10
	dec bc                                           ; $7263: $0b
	ld [$184f], sp                                   ; $7264: $08 $4f $18

jr_038_7267:
	dec bc                                           ; $7267: $0b
	jr jr_038_72b9                                   ; $7268: $18 $4f

	db $10                                           ; $726a: $10

jr_038_726b:
	ld e, $08                                        ; $726b: $1e $08
	dec bc                                           ; $726d: $0b
	jr jr_038_72bf                                   ; $726e: $18 $4f

	jr jr_038_727d                                   ; $7270: $18 $0b

	jr jr_038_72c3                                   ; $7272: $18 $4f

	db $10                                           ; $7274: $10
	dec bc                                           ; $7275: $0b
	ld [$1009], sp                                   ; $7276: $08 $09 $10
	dec bc                                           ; $7279: $0b
	ld [$184f], sp                                   ; $727a: $08 $4f $18

jr_038_727d:
	dec bc                                           ; $727d: $0b
	db $10                                           ; $727e: $10
	cp [hl]                                          ; $727f: $be
	ld [$4f09], sp                                   ; $7280: $08 $09 $4f
	ld c, a                                          ; $7283: $4f
	ld e, $be                                        ; $7284: $1e $be
	dec bc                                           ; $7286: $0b
	jr @+$51                                         ; $7287: $18 $4f

	jr @+$0d                                         ; $7289: $18 $0b

	db $10                                           ; $728b: $10
	dec bc                                           ; $728c: $0b
	ld [$104f], sp                                   ; $728d: $08 $4f $10
	dec bc                                           ; $7290: $0b
	ld [$1009], sp                                   ; $7291: $08 $09 $10
	dec bc                                           ; $7294: $0b
	ld [$184f], sp                                   ; $7295: $08 $4f $18
	dec bc                                           ; $7298: $0b
	db $10                                           ; $7299: $10
	dec bc                                           ; $729a: $0b
	ld [$104f], sp                                   ; $729b: $08 $4f $10
	ld e, $08                                        ; $729e: $1e $08
	dec bc                                           ; $72a0: $0b
	jr jr_038_72f2                                   ; $72a1: $18 $4f

	jr jr_038_72b0                                   ; $72a3: $18 $0b

	db $10                                           ; $72a5: $10
	inc c                                            ; $72a6: $0c
	ld [$104f], sp                                   ; $72a7: $08 $4f $10
	inc d                                            ; $72aa: $14
	jr jr_038_726b                                   ; $72ab: $18 $be

jr_038_72ad:
	ld [$4f4f], sp                                   ; $72ad: $08 $4f $4f

jr_038_72b0:
	inc c                                            ; $72b0: $0c
	inc c                                            ; $72b1: $0c
	cp [hl]                                          ; $72b2: $be
	dec c                                            ; $72b3: $0d
	db $10                                           ; $72b4: $10
	cp [hl]                                          ; $72b5: $be
	ld [$4f4f], sp                                   ; $72b6: $08 $4f $4f

jr_038_72b9:
	ld c, h                                          ; $72b9: $4c
	ld c, h                                          ; $72ba: $4c
	cp [hl]                                          ; $72bb: $be
	dec bc                                           ; $72bc: $0b
	jr jr_038_730e                                   ; $72bd: $18 $4f

jr_038_72bf:
	jr jr_038_72cc                                   ; $72bf: $18 $0b

	jr @+$51                                         ; $72c1: $18 $4f

jr_038_72c3:
	db $10                                           ; $72c3: $10
	dec bc                                           ; $72c4: $0b
	ld [$1009], sp                                   ; $72c5: $08 $09 $10
	dec bc                                           ; $72c8: $0b
	ld [$184f], sp                                   ; $72c9: $08 $4f $18

jr_038_72cc:
	dec bc                                           ; $72cc: $0b
	jr jr_038_731e                                   ; $72cd: $18 $4f

	ld [$0809], sp                                   ; $72cf: $08 $09 $08
	ld e, $08                                        ; $72d2: $1e $08
	dec bc                                           ; $72d4: $0b
	jr @+$51                                         ; $72d5: $18 $4f

	jr jr_038_72e4                                   ; $72d7: $18 $0b

	jr jr_038_732a                                   ; $72d9: $18 $4f

	db $10                                           ; $72db: $10
	dec bc                                           ; $72dc: $0b
	ld [$1009], sp                                   ; $72dd: $08 $09 $10
	dec bc                                           ; $72e0: $0b
	ld [$184f], sp                                   ; $72e1: $08 $4f $18

jr_038_72e4:
	dec bc                                           ; $72e4: $0b
	db $10                                           ; $72e5: $10
	cp [hl]                                          ; $72e6: $be
	ld [$4f09], sp                                   ; $72e7: $08 $09 $4f
	ld c, a                                          ; $72ea: $4f
	dec bc                                           ; $72eb: $0b
	cp [hl]                                          ; $72ec: $be
	dec bc                                           ; $72ed: $0b
	jr jr_038_733f                                   ; $72ee: $18 $4f

	jr @+$0d                                         ; $72f0: $18 $0b

jr_038_72f2:
	db $10                                           ; $72f2: $10
	dec bc                                           ; $72f3: $0b
	ld [$104f], sp                                   ; $72f4: $08 $4f $10
	dec bc                                           ; $72f7: $0b
	ld [$1009], sp                                   ; $72f8: $08 $09 $10
	dec bc                                           ; $72fb: $0b
	ld [$184f], sp                                   ; $72fc: $08 $4f $18
	dec bc                                           ; $72ff: $0b
	db $10                                           ; $7300: $10
	dec bc                                           ; $7301: $0b
	ld [$104f], sp                                   ; $7302: $08 $4f $10
	ld e, $08                                        ; $7305: $1e $08
	dec bc                                           ; $7307: $0b
	db $10                                           ; $7308: $10
	dec bc                                           ; $7309: $0b
	ld [$184f], sp                                   ; $730a: $08 $4f $18
	dec bc                                           ; $730d: $0b

jr_038_730e:
	db $10                                           ; $730e: $10
	add hl, bc                                       ; $730f: $09
	ld [$104f], sp                                   ; $7310: $08 $4f $10
	dec bc                                           ; $7313: $0b
	ld [$041b], sp                                   ; $7314: $08 $1b $04
	dec de                                           ; $7317: $1b
	inc b                                            ; $7318: $04
	dec de                                           ; $7319: $1b
	rlca                                             ; $731a: $07
	dec de                                           ; $731b: $1b
	rlca                                             ; $731c: $07
	inc e                                            ; $731d: $1c

jr_038_731e:
	inc b                                            ; $731e: $04
	inc e                                            ; $731f: $1c
	inc b                                            ; $7320: $04
	inc e                                            ; $7321: $1c
	ld b, $1c                                        ; $7322: $06 $1c
	ld [$0c4f], sp                                   ; $7324: $08 $4f $0c
	dec bc                                           ; $7327: $0b
	db $10                                           ; $7328: $10
	dec bc                                           ; $7329: $0b

jr_038_732a:
	db $10                                           ; $732a: $10
	dec bc                                           ; $732b: $0b
	ld [$08be], sp                                   ; $732c: $08 $be $08
	add hl, bc                                       ; $732f: $09
	ld [de], a                                       ; $7330: $12
	add hl, bc                                       ; $7331: $09
	add hl, bc                                       ; $7332: $09
	cp [hl]                                          ; $7333: $be
	add hl, bc                                       ; $7334: $09
	inc b                                            ; $7335: $04
	add hl, bc                                       ; $7336: $09
	inc b                                            ; $7337: $04
	cp [hl]                                          ; $7338: $be
	ld [$0909], sp                                   ; $7339: $08 $09 $09
	add hl, bc                                       ; $733c: $09
	inc c                                            ; $733d: $0c
	cp [hl]                                          ; $733e: $be

jr_038_733f:
	dec bc                                           ; $733f: $0b

jr_038_7340:
	jr jr_038_7340                                   ; $7340: $18 $fe

	cp [hl]                                          ; $7342: $be
	ld [$090b], sp                                   ; $7343: $08 $0b $09
	add hl, bc                                       ; $7346: $09
	ld c, a                                          ; $7347: $4f
	add hl, bc                                       ; $7348: $09
	add hl, bc                                       ; $7349: $09
	dec bc                                           ; $734a: $0b
	add hl, bc                                       ; $734b: $09
	dec bc                                           ; $734c: $0b
	ld c, a                                          ; $734d: $4f
	add hl, bc                                       ; $734e: $09
	ld e, $be                                        ; $734f: $1e $be
	ei                                               ; $7351: $fb
	cp [hl]                                          ; $7352: $be
	ld [$0909], sp                                   ; $7353: $08 $09 $09
	add hl, bc                                       ; $7356: $09
	ld c, a                                          ; $7357: $4f
	add hl, bc                                       ; $7358: $09
	add hl, bc                                       ; $7359: $09
	dec bc                                           ; $735a: $0b
	add hl, bc                                       ; $735b: $09
	dec bc                                           ; $735c: $0b
	ld c, a                                          ; $735d: $4f
	add hl, bc                                       ; $735e: $09
	ld e, $be                                        ; $735f: $1e $be
	ei                                               ; $7361: $fb
	ld [bc], a                                       ; $7362: $02
	cp [hl]                                          ; $7363: $be
	ld [$0909], sp                                   ; $7364: $08 $09 $09
	add hl, bc                                       ; $7367: $09
	ld c, a                                          ; $7368: $4f
	add hl, bc                                       ; $7369: $09
	add hl, bc                                       ; $736a: $09
	dec bc                                           ; $736b: $0b
	add hl, bc                                       ; $736c: $09
	dec bc                                           ; $736d: $0b
	ld c, a                                          ; $736e: $4f
	add hl, bc                                       ; $736f: $09
	add hl, bc                                       ; $7370: $09
	cp [hl]                                          ; $7371: $be
	cp [hl]                                          ; $7372: $be
	ld [$090b], sp                                   ; $7373: $08 $0b $09
	add hl, bc                                       ; $7376: $09
	ld c, a                                          ; $7377: $4f
	add hl, bc                                       ; $7378: $09
	add hl, bc                                       ; $7379: $09
	cp [hl]                                          ; $737a: $be
	dec bc                                           ; $737b: $0b
	inc b                                            ; $737c: $04
	add hl, bc                                       ; $737d: $09
	inc b                                            ; $737e: $04
	cp [hl]                                          ; $737f: $be
	ld [$0909], sp                                   ; $7380: $08 $09 $09
	ld c, a                                          ; $7383: $4f
	add hl, bc                                       ; $7384: $09
	ld e, $be                                        ; $7385: $1e $be
	cp [hl]                                          ; $7387: $be
	ld [$090b], sp                                   ; $7388: $08 $0b $09
	ld e, $4f                                        ; $738b: $1e $4f
	add hl, bc                                       ; $738d: $09
	ld e, $09                                        ; $738e: $1e $09
	cp [hl]                                          ; $7390: $be
	add hl, bc                                       ; $7391: $09
	inc b                                            ; $7392: $04
	add hl, bc                                       ; $7393: $09
	inc b                                            ; $7394: $04
	cp [hl]                                          ; $7395: $be
	ld [$4f0b], sp                                   ; $7396: $08 $0b $4f
	add hl, bc                                       ; $7399: $09
	ld e, $be                                        ; $739a: $1e $be
	cp [hl]                                          ; $739c: $be
	ld [$090b], sp                                   ; $739d: $08 $0b $09
	add hl, bc                                       ; $73a0: $09
	ld c, a                                          ; $73a1: $4f
	add hl, bc                                       ; $73a2: $09
	add hl, bc                                       ; $73a3: $09
	dec bc                                           ; $73a4: $0b
	add hl, bc                                       ; $73a5: $09
	dec bc                                           ; $73a6: $0b
	ld c, a                                          ; $73a7: $4f
	add hl, bc                                       ; $73a8: $09
	dec bc                                           ; $73a9: $0b
	cp [hl]                                          ; $73aa: $be
	cp [hl]                                          ; $73ab: $be
	ld [$0912], sp                                   ; $73ac: $08 $12 $09
	dec bc                                           ; $73af: $0b
	ld c, a                                          ; $73b0: $4f
	add hl, bc                                       ; $73b1: $09
	add hl, bc                                       ; $73b2: $09
	add hl, bc                                       ; $73b3: $09
	add hl, bc                                       ; $73b4: $09
	ld c, h                                          ; $73b5: $4c
	dec bc                                           ; $73b6: $0b
	add hl, bc                                       ; $73b7: $09
	ld e, $be                                        ; $73b8: $1e $be
	cp $ff                                           ; $73ba: $fe $ff
	rst $38                                          ; $73bc: $ff
	rst $38                                          ; $73bd: $ff
	rst $38                                          ; $73be: $ff
	rst $38                                          ; $73bf: $ff
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rst $38                                          ; $73c2: $ff
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	rst $38                                          ; $73c5: $ff
	rst $38                                          ; $73c6: $ff
	rst $38                                          ; $73c7: $ff
	rst $38                                          ; $73c8: $ff
	rst $38                                          ; $73c9: $ff
	rst $38                                          ; $73ca: $ff
	rst $38                                          ; $73cb: $ff
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	rst $38                                          ; $73ce: $ff
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	rst $38                                          ; $73d3: $ff
	rst $38                                          ; $73d4: $ff
	rst $38                                          ; $73d5: $ff
	rst $38                                          ; $73d6: $ff
	rst $38                                          ; $73d7: $ff
	rst $38                                          ; $73d8: $ff
	rst $38                                          ; $73d9: $ff
	rst $38                                          ; $73da: $ff
	rst $38                                          ; $73db: $ff
	rst $38                                          ; $73dc: $ff
	rst $38                                          ; $73dd: $ff
	rst $38                                          ; $73de: $ff
	rst $38                                          ; $73df: $ff
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	rst $38                                          ; $73e2: $ff
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	rst $38                                          ; $73e5: $ff
	rst $38                                          ; $73e6: $ff
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	rst $38                                          ; $73e9: $ff
	rst $38                                          ; $73ea: $ff
	rst $38                                          ; $73eb: $ff
	rst $38                                          ; $73ec: $ff
	rst $38                                          ; $73ed: $ff
	rst $38                                          ; $73ee: $ff
	rst $38                                          ; $73ef: $ff
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff
	rst $38                                          ; $73f2: $ff
	rst $38                                          ; $73f3: $ff
	rst $38                                          ; $73f4: $ff
	rst $38                                          ; $73f5: $ff
	rst $38                                          ; $73f6: $ff
	rst $38                                          ; $73f7: $ff
	rst $38                                          ; $73f8: $ff
	rst $38                                          ; $73f9: $ff
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	rst $38                                          ; $73fc: $ff
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff
	rst $38                                          ; $73ff: $ff
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	rst $38                                          ; $7404: $ff
	rst $38                                          ; $7405: $ff
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst $38                                          ; $7408: $ff
	rst $38                                          ; $7409: $ff
	rst $38                                          ; $740a: $ff
	rst $38                                          ; $740b: $ff
	rst $38                                          ; $740c: $ff
	rst $38                                          ; $740d: $ff
	rst $38                                          ; $740e: $ff
	rst $38                                          ; $740f: $ff
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	rst $38                                          ; $7412: $ff
	rst $38                                          ; $7413: $ff
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	rst $38                                          ; $7416: $ff
	rst $38                                          ; $7417: $ff
	rst $38                                          ; $7418: $ff
	rst $38                                          ; $7419: $ff
	rst $38                                          ; $741a: $ff
	rst $38                                          ; $741b: $ff
	rst $38                                          ; $741c: $ff
	rst $38                                          ; $741d: $ff
	rst $38                                          ; $741e: $ff
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	rst $38                                          ; $7421: $ff
	rst $38                                          ; $7422: $ff
	rst $38                                          ; $7423: $ff
	rst $38                                          ; $7424: $ff
	rst $38                                          ; $7425: $ff
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	rst $38                                          ; $7428: $ff
	rst $38                                          ; $7429: $ff
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	rst $38                                          ; $742c: $ff
	rst $38                                          ; $742d: $ff
	rst $38                                          ; $742e: $ff
	rst $38                                          ; $742f: $ff
	rst $38                                          ; $7430: $ff
	rst $38                                          ; $7431: $ff
	rst $38                                          ; $7432: $ff
	rst $38                                          ; $7433: $ff
	rst $38                                          ; $7434: $ff
	rst $38                                          ; $7435: $ff
	rst $38                                          ; $7436: $ff
	rst $38                                          ; $7437: $ff
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	rst $38                                          ; $743f: $ff
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	rst $38                                          ; $7443: $ff
	rst $38                                          ; $7444: $ff
	rst $38                                          ; $7445: $ff
	rst $38                                          ; $7446: $ff
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rst $38                                          ; $7449: $ff
	rst $38                                          ; $744a: $ff
	rst $38                                          ; $744b: $ff
	rst $38                                          ; $744c: $ff
	rst $38                                          ; $744d: $ff
	rst $38                                          ; $744e: $ff
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	rst $38                                          ; $7451: $ff
	rst $38                                          ; $7452: $ff
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff
	rst $38                                          ; $7455: $ff
	rst $38                                          ; $7456: $ff
	rst $38                                          ; $7457: $ff
	rst $38                                          ; $7458: $ff
	rst $38                                          ; $7459: $ff
	rst $38                                          ; $745a: $ff
	rst $38                                          ; $745b: $ff
	rst $38                                          ; $745c: $ff
	rst $38                                          ; $745d: $ff
	rst $38                                          ; $745e: $ff
	rst $38                                          ; $745f: $ff
	rst $38                                          ; $7460: $ff
	rst $38                                          ; $7461: $ff
	rst $38                                          ; $7462: $ff
	rst $38                                          ; $7463: $ff
	rst $38                                          ; $7464: $ff
	rst $38                                          ; $7465: $ff
	rst $38                                          ; $7466: $ff
	rst $38                                          ; $7467: $ff
	rst $38                                          ; $7468: $ff
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	rst $38                                          ; $7472: $ff
	rst $38                                          ; $7473: $ff
	rst $38                                          ; $7474: $ff
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	rst $38                                          ; $747a: $ff
	rst $38                                          ; $747b: $ff
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	rst $38                                          ; $747e: $ff
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	rst $38                                          ; $7481: $ff
	rst $38                                          ; $7482: $ff
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	rst $38                                          ; $7485: $ff
	rst $38                                          ; $7486: $ff
	rst $38                                          ; $7487: $ff
	rst $38                                          ; $7488: $ff
	rst $38                                          ; $7489: $ff
	rst $38                                          ; $748a: $ff
	rst $38                                          ; $748b: $ff
	rst $38                                          ; $748c: $ff
	rst $38                                          ; $748d: $ff
	rst $38                                          ; $748e: $ff
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	rst $38                                          ; $7491: $ff
	rst $38                                          ; $7492: $ff
	rst $38                                          ; $7493: $ff
	rst $38                                          ; $7494: $ff
	rst $38                                          ; $7495: $ff
	rst $38                                          ; $7496: $ff
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	rst $38                                          ; $7499: $ff
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	rst $38                                          ; $749d: $ff
	rst $38                                          ; $749e: $ff
	rst $38                                          ; $749f: $ff
	rst $38                                          ; $74a0: $ff
	rst $38                                          ; $74a1: $ff
	rst $38                                          ; $74a2: $ff
	rst $38                                          ; $74a3: $ff
	rst $38                                          ; $74a4: $ff
	rst $38                                          ; $74a5: $ff
	rst $38                                          ; $74a6: $ff
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	rst $38                                          ; $74a9: $ff
	rst $38                                          ; $74aa: $ff
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst $38                                          ; $74ad: $ff
	rst $38                                          ; $74ae: $ff
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	rst $38                                          ; $74b1: $ff
	rst $38                                          ; $74b2: $ff
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	rst $38                                          ; $74b7: $ff
	rst $38                                          ; $74b8: $ff
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	rst $38                                          ; $74bb: $ff
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	rst $38                                          ; $74be: $ff
	rst $38                                          ; $74bf: $ff
	rst $38                                          ; $74c0: $ff
	rst $38                                          ; $74c1: $ff
	rst $38                                          ; $74c2: $ff
	rst $38                                          ; $74c3: $ff
	rst $38                                          ; $74c4: $ff
	rst $38                                          ; $74c5: $ff
	rst $38                                          ; $74c6: $ff
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	rst $38                                          ; $74c9: $ff
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	rst $38                                          ; $74cc: $ff
	rst $38                                          ; $74cd: $ff
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	rst $38                                          ; $74d0: $ff
	rst $38                                          ; $74d1: $ff
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	rst $38                                          ; $74d7: $ff
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	rst $38                                          ; $74da: $ff
	rst $38                                          ; $74db: $ff
	rst $38                                          ; $74dc: $ff
	rst $38                                          ; $74dd: $ff
	rst $38                                          ; $74de: $ff
	rst $38                                          ; $74df: $ff
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	rst $38                                          ; $74e2: $ff
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	rst $38                                          ; $74e5: $ff
	rst $38                                          ; $74e6: $ff
	rst $38                                          ; $74e7: $ff
	rst $38                                          ; $74e8: $ff
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	rst $38                                          ; $74eb: $ff
	rst $38                                          ; $74ec: $ff
	rst $38                                          ; $74ed: $ff
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	rst $38                                          ; $74f0: $ff
	rst $38                                          ; $74f1: $ff
	rst $38                                          ; $74f2: $ff
	rst $38                                          ; $74f3: $ff
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	rst $38                                          ; $74f9: $ff
	rst $38                                          ; $74fa: $ff
	rst $38                                          ; $74fb: $ff
	rst $38                                          ; $74fc: $ff
	rst $38                                          ; $74fd: $ff
	rst $38                                          ; $74fe: $ff
	rst $38                                          ; $74ff: $ff
	rst $38                                          ; $7500: $ff
	rst $38                                          ; $7501: $ff
	rst $38                                          ; $7502: $ff
	rst $38                                          ; $7503: $ff
	rst $38                                          ; $7504: $ff
	rst $38                                          ; $7505: $ff
	rst $38                                          ; $7506: $ff
	rst $38                                          ; $7507: $ff
	rst $38                                          ; $7508: $ff
	rst $38                                          ; $7509: $ff
	rst $38                                          ; $750a: $ff
	rst $38                                          ; $750b: $ff
	rst $38                                          ; $750c: $ff
	rst $38                                          ; $750d: $ff
	rst $38                                          ; $750e: $ff
	rst $38                                          ; $750f: $ff
	rst $38                                          ; $7510: $ff
	rst $38                                          ; $7511: $ff
	rst $38                                          ; $7512: $ff
	rst $38                                          ; $7513: $ff
	rst $38                                          ; $7514: $ff
	rst $38                                          ; $7515: $ff
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	rst $38                                          ; $7518: $ff
	rst $38                                          ; $7519: $ff
	rst $38                                          ; $751a: $ff
	rst $38                                          ; $751b: $ff
	rst $38                                          ; $751c: $ff
	rst $38                                          ; $751d: $ff
	rst $38                                          ; $751e: $ff
	rst $38                                          ; $751f: $ff
	rst $38                                          ; $7520: $ff
	rst $38                                          ; $7521: $ff
	rst $38                                          ; $7522: $ff
	rst $38                                          ; $7523: $ff
	rst $38                                          ; $7524: $ff
	rst $38                                          ; $7525: $ff
	rst $38                                          ; $7526: $ff
	rst $38                                          ; $7527: $ff
	rst $38                                          ; $7528: $ff
	rst $38                                          ; $7529: $ff
	rst $38                                          ; $752a: $ff
	rst $38                                          ; $752b: $ff
	rst $38                                          ; $752c: $ff
	rst $38                                          ; $752d: $ff
	rst $38                                          ; $752e: $ff
	rst $38                                          ; $752f: $ff
	rst $38                                          ; $7530: $ff
	rst $38                                          ; $7531: $ff
	rst $38                                          ; $7532: $ff
	rst $38                                          ; $7533: $ff
	rst $38                                          ; $7534: $ff
	rst $38                                          ; $7535: $ff
	rst $38                                          ; $7536: $ff
	rst $38                                          ; $7537: $ff
	rst $38                                          ; $7538: $ff
	rst $38                                          ; $7539: $ff
	rst $38                                          ; $753a: $ff
	rst $38                                          ; $753b: $ff
	rst $38                                          ; $753c: $ff
	rst $38                                          ; $753d: $ff
	rst $38                                          ; $753e: $ff
	rst $38                                          ; $753f: $ff
	rst $38                                          ; $7540: $ff
	rst $38                                          ; $7541: $ff
	rst $38                                          ; $7542: $ff
	rst $38                                          ; $7543: $ff
	rst $38                                          ; $7544: $ff
	rst $38                                          ; $7545: $ff
	rst $38                                          ; $7546: $ff
	rst $38                                          ; $7547: $ff
	rst $38                                          ; $7548: $ff
	rst $38                                          ; $7549: $ff
	rst $38                                          ; $754a: $ff
	rst $38                                          ; $754b: $ff
	rst $38                                          ; $754c: $ff
	rst $38                                          ; $754d: $ff
	rst $38                                          ; $754e: $ff
	rst $38                                          ; $754f: $ff
	rst $38                                          ; $7550: $ff
	rst $38                                          ; $7551: $ff
	rst $38                                          ; $7552: $ff
	rst $38                                          ; $7553: $ff
	rst $38                                          ; $7554: $ff
	rst $38                                          ; $7555: $ff
	rst $38                                          ; $7556: $ff
	rst $38                                          ; $7557: $ff
	rst $38                                          ; $7558: $ff
	rst $38                                          ; $7559: $ff
	rst $38                                          ; $755a: $ff
	rst $38                                          ; $755b: $ff
	rst $38                                          ; $755c: $ff
	rst $38                                          ; $755d: $ff
	rst $38                                          ; $755e: $ff
	rst $38                                          ; $755f: $ff
	rst $38                                          ; $7560: $ff
	rst $38                                          ; $7561: $ff
	rst $38                                          ; $7562: $ff
	rst $38                                          ; $7563: $ff
	rst $38                                          ; $7564: $ff
	rst $38                                          ; $7565: $ff
	rst $38                                          ; $7566: $ff
	rst $38                                          ; $7567: $ff
	rst $38                                          ; $7568: $ff
	rst $38                                          ; $7569: $ff
	rst $38                                          ; $756a: $ff
	rst $38                                          ; $756b: $ff
	rst $38                                          ; $756c: $ff
	rst $38                                          ; $756d: $ff
	rst $38                                          ; $756e: $ff
	rst $38                                          ; $756f: $ff
	rst $38                                          ; $7570: $ff
	rst $38                                          ; $7571: $ff
	rst $38                                          ; $7572: $ff
	rst $38                                          ; $7573: $ff
	rst $38                                          ; $7574: $ff
	rst $38                                          ; $7575: $ff
	rst $38                                          ; $7576: $ff
	rst $38                                          ; $7577: $ff
	rst $38                                          ; $7578: $ff
	rst $38                                          ; $7579: $ff
	rst $38                                          ; $757a: $ff
	rst $38                                          ; $757b: $ff
	rst $38                                          ; $757c: $ff
	rst $38                                          ; $757d: $ff
	rst $38                                          ; $757e: $ff
	rst $38                                          ; $757f: $ff
	rst $38                                          ; $7580: $ff
	rst $38                                          ; $7581: $ff
	rst $38                                          ; $7582: $ff
	rst $38                                          ; $7583: $ff
	rst $38                                          ; $7584: $ff
	rst $38                                          ; $7585: $ff
	rst $38                                          ; $7586: $ff
	rst $38                                          ; $7587: $ff
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	rst $38                                          ; $758a: $ff
	rst $38                                          ; $758b: $ff
	rst $38                                          ; $758c: $ff
	rst $38                                          ; $758d: $ff
	rst $38                                          ; $758e: $ff
	rst $38                                          ; $758f: $ff
	rst $38                                          ; $7590: $ff
	rst $38                                          ; $7591: $ff
	rst $38                                          ; $7592: $ff
	rst $38                                          ; $7593: $ff
	rst $38                                          ; $7594: $ff
	rst $38                                          ; $7595: $ff
	rst $38                                          ; $7596: $ff
	rst $38                                          ; $7597: $ff
	rst $38                                          ; $7598: $ff
	rst $38                                          ; $7599: $ff
	rst $38                                          ; $759a: $ff
	rst $38                                          ; $759b: $ff
	rst $38                                          ; $759c: $ff
	rst $38                                          ; $759d: $ff
	rst $38                                          ; $759e: $ff
	rst $38                                          ; $759f: $ff
	rst $38                                          ; $75a0: $ff
	rst $38                                          ; $75a1: $ff
	rst $38                                          ; $75a2: $ff
	rst $38                                          ; $75a3: $ff
	rst $38                                          ; $75a4: $ff
	rst $38                                          ; $75a5: $ff
	rst $38                                          ; $75a6: $ff
	rst $38                                          ; $75a7: $ff
	rst $38                                          ; $75a8: $ff
	rst $38                                          ; $75a9: $ff
	rst $38                                          ; $75aa: $ff
	rst $38                                          ; $75ab: $ff
	rst $38                                          ; $75ac: $ff
	rst $38                                          ; $75ad: $ff
	rst $38                                          ; $75ae: $ff
	rst $38                                          ; $75af: $ff
	rst $38                                          ; $75b0: $ff
	rst $38                                          ; $75b1: $ff
	rst $38                                          ; $75b2: $ff
	rst $38                                          ; $75b3: $ff
	rst $38                                          ; $75b4: $ff
	rst $38                                          ; $75b5: $ff
	rst $38                                          ; $75b6: $ff
	rst $38                                          ; $75b7: $ff
	rst $38                                          ; $75b8: $ff
	rst $38                                          ; $75b9: $ff
	rst $38                                          ; $75ba: $ff
	rst $38                                          ; $75bb: $ff
	rst $38                                          ; $75bc: $ff
	rst $38                                          ; $75bd: $ff
	rst $38                                          ; $75be: $ff
	rst $38                                          ; $75bf: $ff
	rst $38                                          ; $75c0: $ff
	rst $38                                          ; $75c1: $ff
	rst $38                                          ; $75c2: $ff
	rst $38                                          ; $75c3: $ff
	rst $38                                          ; $75c4: $ff
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	rst $38                                          ; $75c7: $ff
	rst $38                                          ; $75c8: $ff
	rst $38                                          ; $75c9: $ff
	rst $38                                          ; $75ca: $ff
	rst $38                                          ; $75cb: $ff
	rst $38                                          ; $75cc: $ff
	rst $38                                          ; $75cd: $ff
	rst $38                                          ; $75ce: $ff
	rst $38                                          ; $75cf: $ff
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	rst $38                                          ; $75d2: $ff
	rst $38                                          ; $75d3: $ff
	rst $38                                          ; $75d4: $ff
	rst $38                                          ; $75d5: $ff
	rst $38                                          ; $75d6: $ff
	rst $38                                          ; $75d7: $ff
	rst $38                                          ; $75d8: $ff
	rst $38                                          ; $75d9: $ff
	rst $38                                          ; $75da: $ff
	rst $38                                          ; $75db: $ff
	rst $38                                          ; $75dc: $ff
	rst $38                                          ; $75dd: $ff
	rst $38                                          ; $75de: $ff
	rst $38                                          ; $75df: $ff
	rst $38                                          ; $75e0: $ff
	rst $38                                          ; $75e1: $ff
	rst $38                                          ; $75e2: $ff
	rst $38                                          ; $75e3: $ff
	rst $38                                          ; $75e4: $ff
	rst $38                                          ; $75e5: $ff
	rst $38                                          ; $75e6: $ff
	rst $38                                          ; $75e7: $ff
	rst $38                                          ; $75e8: $ff
	rst $38                                          ; $75e9: $ff
	rst $38                                          ; $75ea: $ff
	rst $38                                          ; $75eb: $ff
	rst $38                                          ; $75ec: $ff
	rst $38                                          ; $75ed: $ff
	rst $38                                          ; $75ee: $ff
	rst $38                                          ; $75ef: $ff
	rst $38                                          ; $75f0: $ff
	rst $38                                          ; $75f1: $ff
	rst $38                                          ; $75f2: $ff
	rst $38                                          ; $75f3: $ff
	rst $38                                          ; $75f4: $ff
	rst $38                                          ; $75f5: $ff
	rst $38                                          ; $75f6: $ff
	rst $38                                          ; $75f7: $ff
	rst $38                                          ; $75f8: $ff
	rst $38                                          ; $75f9: $ff
	rst $38                                          ; $75fa: $ff
	rst $38                                          ; $75fb: $ff
	rst $38                                          ; $75fc: $ff
	rst $38                                          ; $75fd: $ff
	rst $38                                          ; $75fe: $ff
	rst $38                                          ; $75ff: $ff
	rst $38                                          ; $7600: $ff
	rst $38                                          ; $7601: $ff
	rst $38                                          ; $7602: $ff
	rst $38                                          ; $7603: $ff
	rst $38                                          ; $7604: $ff
	rst $38                                          ; $7605: $ff
	rst $38                                          ; $7606: $ff
	rst $38                                          ; $7607: $ff
	rst $38                                          ; $7608: $ff
	rst $38                                          ; $7609: $ff
	rst $38                                          ; $760a: $ff
	rst $38                                          ; $760b: $ff
	rst $38                                          ; $760c: $ff
	rst $38                                          ; $760d: $ff
	rst $38                                          ; $760e: $ff
	rst $38                                          ; $760f: $ff
	rst $38                                          ; $7610: $ff
	rst $38                                          ; $7611: $ff
	rst $38                                          ; $7612: $ff
	rst $38                                          ; $7613: $ff
	rst $38                                          ; $7614: $ff
	rst $38                                          ; $7615: $ff
	rst $38                                          ; $7616: $ff
	rst $38                                          ; $7617: $ff
	rst $38                                          ; $7618: $ff
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	rst $38                                          ; $761b: $ff
	rst $38                                          ; $761c: $ff
	rst $38                                          ; $761d: $ff
	rst $38                                          ; $761e: $ff
	rst $38                                          ; $761f: $ff
	rst $38                                          ; $7620: $ff
	rst $38                                          ; $7621: $ff
	rst $38                                          ; $7622: $ff
	rst $38                                          ; $7623: $ff
	rst $38                                          ; $7624: $ff
	rst $38                                          ; $7625: $ff
	rst $38                                          ; $7626: $ff
	rst $38                                          ; $7627: $ff
	rst $38                                          ; $7628: $ff
	rst $38                                          ; $7629: $ff
	rst $38                                          ; $762a: $ff
	rst $38                                          ; $762b: $ff
	rst $38                                          ; $762c: $ff
	rst $38                                          ; $762d: $ff
	rst $38                                          ; $762e: $ff
	rst $38                                          ; $762f: $ff
	rst $38                                          ; $7630: $ff
	rst $38                                          ; $7631: $ff
	rst $38                                          ; $7632: $ff
	rst $38                                          ; $7633: $ff
	rst $38                                          ; $7634: $ff
	rst $38                                          ; $7635: $ff
	rst $38                                          ; $7636: $ff
	rst $38                                          ; $7637: $ff
	rst $38                                          ; $7638: $ff
	rst $38                                          ; $7639: $ff
	rst $38                                          ; $763a: $ff
	rst $38                                          ; $763b: $ff
	rst $38                                          ; $763c: $ff
	rst $38                                          ; $763d: $ff
	rst $38                                          ; $763e: $ff
	rst $38                                          ; $763f: $ff
	rst $38                                          ; $7640: $ff
	rst $38                                          ; $7641: $ff
	rst $38                                          ; $7642: $ff
	rst $38                                          ; $7643: $ff
	rst $38                                          ; $7644: $ff
	rst $38                                          ; $7645: $ff
	rst $38                                          ; $7646: $ff
	rst $38                                          ; $7647: $ff
	rst $38                                          ; $7648: $ff
	rst $38                                          ; $7649: $ff
	rst $38                                          ; $764a: $ff
	rst $38                                          ; $764b: $ff
	rst $38                                          ; $764c: $ff
	rst $38                                          ; $764d: $ff
	rst $38                                          ; $764e: $ff
	rst $38                                          ; $764f: $ff
	rst $38                                          ; $7650: $ff
	rst $38                                          ; $7651: $ff
	rst $38                                          ; $7652: $ff
	rst $38                                          ; $7653: $ff
	rst $38                                          ; $7654: $ff
	rst $38                                          ; $7655: $ff
	rst $38                                          ; $7656: $ff
	rst $38                                          ; $7657: $ff
	rst $38                                          ; $7658: $ff
	rst $38                                          ; $7659: $ff
	rst $38                                          ; $765a: $ff
	rst $38                                          ; $765b: $ff
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	rst $38                                          ; $765e: $ff
	rst $38                                          ; $765f: $ff
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	rst $38                                          ; $7662: $ff
	rst $38                                          ; $7663: $ff
	rst $38                                          ; $7664: $ff
	rst $38                                          ; $7665: $ff
	rst $38                                          ; $7666: $ff
	rst $38                                          ; $7667: $ff
	rst $38                                          ; $7668: $ff
	rst $38                                          ; $7669: $ff
	rst $38                                          ; $766a: $ff
	rst $38                                          ; $766b: $ff
	rst $38                                          ; $766c: $ff
	rst $38                                          ; $766d: $ff
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	rst $38                                          ; $7670: $ff
	rst $38                                          ; $7671: $ff
	rst $38                                          ; $7672: $ff
	rst $38                                          ; $7673: $ff
	rst $38                                          ; $7674: $ff
	rst $38                                          ; $7675: $ff
	rst $38                                          ; $7676: $ff
	rst $38                                          ; $7677: $ff
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	rst $38                                          ; $767a: $ff
	rst $38                                          ; $767b: $ff
	rst $38                                          ; $767c: $ff
	rst $38                                          ; $767d: $ff
	rst $38                                          ; $767e: $ff
	rst $38                                          ; $767f: $ff
	rst $38                                          ; $7680: $ff
	rst $38                                          ; $7681: $ff
	rst $38                                          ; $7682: $ff
	rst $38                                          ; $7683: $ff
	rst $38                                          ; $7684: $ff
	rst $38                                          ; $7685: $ff
	rst $38                                          ; $7686: $ff
	rst $38                                          ; $7687: $ff
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	rst $38                                          ; $768a: $ff
	rst $38                                          ; $768b: $ff
	rst $38                                          ; $768c: $ff
	rst $38                                          ; $768d: $ff
	rst $38                                          ; $768e: $ff
	rst $38                                          ; $768f: $ff
	rst $38                                          ; $7690: $ff
	rst $38                                          ; $7691: $ff
	rst $38                                          ; $7692: $ff
	rst $38                                          ; $7693: $ff
	rst $38                                          ; $7694: $ff
	rst $38                                          ; $7695: $ff
	rst $38                                          ; $7696: $ff
	rst $38                                          ; $7697: $ff
	rst $38                                          ; $7698: $ff
	rst $38                                          ; $7699: $ff
	rst $38                                          ; $769a: $ff
	rst $38                                          ; $769b: $ff
	rst $38                                          ; $769c: $ff
	rst $38                                          ; $769d: $ff
	rst $38                                          ; $769e: $ff
	rst $38                                          ; $769f: $ff
	rst $38                                          ; $76a0: $ff
	rst $38                                          ; $76a1: $ff
	rst $38                                          ; $76a2: $ff
	rst $38                                          ; $76a3: $ff
	rst $38                                          ; $76a4: $ff
	rst $38                                          ; $76a5: $ff
	rst $38                                          ; $76a6: $ff
	rst $38                                          ; $76a7: $ff
	rst $38                                          ; $76a8: $ff
	rst $38                                          ; $76a9: $ff
	rst $38                                          ; $76aa: $ff
	rst $38                                          ; $76ab: $ff
	rst $38                                          ; $76ac: $ff
	rst $38                                          ; $76ad: $ff
	rst $38                                          ; $76ae: $ff
	rst $38                                          ; $76af: $ff
	rst $38                                          ; $76b0: $ff
	rst $38                                          ; $76b1: $ff
	rst $38                                          ; $76b2: $ff
	rst $38                                          ; $76b3: $ff
	rst $38                                          ; $76b4: $ff
	rst $38                                          ; $76b5: $ff
	rst $38                                          ; $76b6: $ff
	rst $38                                          ; $76b7: $ff
	rst $38                                          ; $76b8: $ff
	rst $38                                          ; $76b9: $ff
	rst $38                                          ; $76ba: $ff
	rst $38                                          ; $76bb: $ff
	rst $38                                          ; $76bc: $ff
	rst $38                                          ; $76bd: $ff
	rst $38                                          ; $76be: $ff
	rst $38                                          ; $76bf: $ff
	rst $38                                          ; $76c0: $ff
	rst $38                                          ; $76c1: $ff
	rst $38                                          ; $76c2: $ff
	rst $38                                          ; $76c3: $ff
	rst $38                                          ; $76c4: $ff
	rst $38                                          ; $76c5: $ff
	rst $38                                          ; $76c6: $ff
	rst $38                                          ; $76c7: $ff
	rst $38                                          ; $76c8: $ff
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	rst $38                                          ; $76cb: $ff
	rst $38                                          ; $76cc: $ff
	rst $38                                          ; $76cd: $ff
	rst $38                                          ; $76ce: $ff
	rst $38                                          ; $76cf: $ff
	rst $38                                          ; $76d0: $ff
	rst $38                                          ; $76d1: $ff
	rst $38                                          ; $76d2: $ff
	rst $38                                          ; $76d3: $ff
	rst $38                                          ; $76d4: $ff
	rst $38                                          ; $76d5: $ff
	rst $38                                          ; $76d6: $ff
	rst $38                                          ; $76d7: $ff
	rst $38                                          ; $76d8: $ff
	rst $38                                          ; $76d9: $ff
	rst $38                                          ; $76da: $ff
	rst $38                                          ; $76db: $ff
	rst $38                                          ; $76dc: $ff
	rst $38                                          ; $76dd: $ff
	rst $38                                          ; $76de: $ff
	rst $38                                          ; $76df: $ff
	rst $38                                          ; $76e0: $ff
	rst $38                                          ; $76e1: $ff
	rst $38                                          ; $76e2: $ff
	rst $38                                          ; $76e3: $ff
	rst $38                                          ; $76e4: $ff
	rst $38                                          ; $76e5: $ff
	rst $38                                          ; $76e6: $ff
	rst $38                                          ; $76e7: $ff
	rst $38                                          ; $76e8: $ff
	rst $38                                          ; $76e9: $ff
	rst $38                                          ; $76ea: $ff
	rst $38                                          ; $76eb: $ff
	rst $38                                          ; $76ec: $ff
	rst $38                                          ; $76ed: $ff
	rst $38                                          ; $76ee: $ff
	rst $38                                          ; $76ef: $ff
	rst $38                                          ; $76f0: $ff
	rst $38                                          ; $76f1: $ff
	rst $38                                          ; $76f2: $ff
	rst $38                                          ; $76f3: $ff
	rst $38                                          ; $76f4: $ff
	rst $38                                          ; $76f5: $ff
	rst $38                                          ; $76f6: $ff
	rst $38                                          ; $76f7: $ff
	rst $38                                          ; $76f8: $ff
	rst $38                                          ; $76f9: $ff
	rst $38                                          ; $76fa: $ff
	rst $38                                          ; $76fb: $ff
	rst $38                                          ; $76fc: $ff
	rst $38                                          ; $76fd: $ff
	rst $38                                          ; $76fe: $ff
	rst $38                                          ; $76ff: $ff
	rst $38                                          ; $7700: $ff
	rst $38                                          ; $7701: $ff
	rst $38                                          ; $7702: $ff
	rst $38                                          ; $7703: $ff
	rst $38                                          ; $7704: $ff
	rst $38                                          ; $7705: $ff
	rst $38                                          ; $7706: $ff
	rst $38                                          ; $7707: $ff
	rst $38                                          ; $7708: $ff
	rst $38                                          ; $7709: $ff
	rst $38                                          ; $770a: $ff
	rst $38                                          ; $770b: $ff
	rst $38                                          ; $770c: $ff
	rst $38                                          ; $770d: $ff
	rst $38                                          ; $770e: $ff
	rst $38                                          ; $770f: $ff
	rst $38                                          ; $7710: $ff
	rst $38                                          ; $7711: $ff
	rst $38                                          ; $7712: $ff
	rst $38                                          ; $7713: $ff
	rst $38                                          ; $7714: $ff
	rst $38                                          ; $7715: $ff
	rst $38                                          ; $7716: $ff
	rst $38                                          ; $7717: $ff
	rst $38                                          ; $7718: $ff
	rst $38                                          ; $7719: $ff
	rst $38                                          ; $771a: $ff
	rst $38                                          ; $771b: $ff
	rst $38                                          ; $771c: $ff
	rst $38                                          ; $771d: $ff
	rst $38                                          ; $771e: $ff
	rst $38                                          ; $771f: $ff
	rst $38                                          ; $7720: $ff
	rst $38                                          ; $7721: $ff
	rst $38                                          ; $7722: $ff
	rst $38                                          ; $7723: $ff
	rst $38                                          ; $7724: $ff
	rst $38                                          ; $7725: $ff
	rst $38                                          ; $7726: $ff
	rst $38                                          ; $7727: $ff
	rst $38                                          ; $7728: $ff
	rst $38                                          ; $7729: $ff
	rst $38                                          ; $772a: $ff
	rst $38                                          ; $772b: $ff
	rst $38                                          ; $772c: $ff
	rst $38                                          ; $772d: $ff
	rst $38                                          ; $772e: $ff
	rst $38                                          ; $772f: $ff
	rst $38                                          ; $7730: $ff
	rst $38                                          ; $7731: $ff
	rst $38                                          ; $7732: $ff
	rst $38                                          ; $7733: $ff
	rst $38                                          ; $7734: $ff
	rst $38                                          ; $7735: $ff
	rst $38                                          ; $7736: $ff
	rst $38                                          ; $7737: $ff
	rst $38                                          ; $7738: $ff
	rst $38                                          ; $7739: $ff
	rst $38                                          ; $773a: $ff
	rst $38                                          ; $773b: $ff
	rst $38                                          ; $773c: $ff
	rst $38                                          ; $773d: $ff
	rst $38                                          ; $773e: $ff
	rst $38                                          ; $773f: $ff
	rst $38                                          ; $7740: $ff
	rst $38                                          ; $7741: $ff
	rst $38                                          ; $7742: $ff
	rst $38                                          ; $7743: $ff
	rst $38                                          ; $7744: $ff
	rst $38                                          ; $7745: $ff
	rst $38                                          ; $7746: $ff
	rst $38                                          ; $7747: $ff
	rst $38                                          ; $7748: $ff
	rst $38                                          ; $7749: $ff
	rst $38                                          ; $774a: $ff
	rst $38                                          ; $774b: $ff
	rst $38                                          ; $774c: $ff
	rst $38                                          ; $774d: $ff
	rst $38                                          ; $774e: $ff
	rst $38                                          ; $774f: $ff
	rst $38                                          ; $7750: $ff
	rst $38                                          ; $7751: $ff
	rst $38                                          ; $7752: $ff
	rst $38                                          ; $7753: $ff
	rst $38                                          ; $7754: $ff
	rst $38                                          ; $7755: $ff
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	rst $38                                          ; $7758: $ff
	rst $38                                          ; $7759: $ff
	rst $38                                          ; $775a: $ff
	rst $38                                          ; $775b: $ff
	rst $38                                          ; $775c: $ff
	rst $38                                          ; $775d: $ff
	rst $38                                          ; $775e: $ff
	rst $38                                          ; $775f: $ff
	rst $38                                          ; $7760: $ff
	rst $38                                          ; $7761: $ff
	rst $38                                          ; $7762: $ff
	rst $38                                          ; $7763: $ff
	rst $38                                          ; $7764: $ff
	rst $38                                          ; $7765: $ff
	rst $38                                          ; $7766: $ff
	rst $38                                          ; $7767: $ff
	rst $38                                          ; $7768: $ff
	rst $38                                          ; $7769: $ff
	rst $38                                          ; $776a: $ff
	rst $38                                          ; $776b: $ff
	rst $38                                          ; $776c: $ff
	rst $38                                          ; $776d: $ff
	rst $38                                          ; $776e: $ff
	rst $38                                          ; $776f: $ff
	rst $38                                          ; $7770: $ff
	rst $38                                          ; $7771: $ff
	rst $38                                          ; $7772: $ff
	rst $38                                          ; $7773: $ff
	rst $38                                          ; $7774: $ff
	rst $38                                          ; $7775: $ff
	rst $38                                          ; $7776: $ff
	rst $38                                          ; $7777: $ff
	rst $38                                          ; $7778: $ff
	rst $38                                          ; $7779: $ff
	rst $38                                          ; $777a: $ff
	rst $38                                          ; $777b: $ff
	rst $38                                          ; $777c: $ff
	rst $38                                          ; $777d: $ff
	rst $38                                          ; $777e: $ff
	rst $38                                          ; $777f: $ff
	rst $38                                          ; $7780: $ff
	rst $38                                          ; $7781: $ff
	rst $38                                          ; $7782: $ff
	rst $38                                          ; $7783: $ff
	rst $38                                          ; $7784: $ff
	rst $38                                          ; $7785: $ff
	rst $38                                          ; $7786: $ff
	rst $38                                          ; $7787: $ff
	rst $38                                          ; $7788: $ff
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	rst $38                                          ; $778b: $ff
	rst $38                                          ; $778c: $ff
	rst $38                                          ; $778d: $ff
	rst $38                                          ; $778e: $ff
	rst $38                                          ; $778f: $ff
	rst $38                                          ; $7790: $ff
	rst $38                                          ; $7791: $ff
	rst $38                                          ; $7792: $ff
	rst $38                                          ; $7793: $ff
	rst $38                                          ; $7794: $ff
	rst $38                                          ; $7795: $ff
	rst $38                                          ; $7796: $ff
	rst $38                                          ; $7797: $ff
	rst $38                                          ; $7798: $ff
	rst $38                                          ; $7799: $ff
	rst $38                                          ; $779a: $ff
	rst $38                                          ; $779b: $ff
	rst $38                                          ; $779c: $ff
	rst $38                                          ; $779d: $ff
	rst $38                                          ; $779e: $ff
	rst $38                                          ; $779f: $ff
	rst $38                                          ; $77a0: $ff
	rst $38                                          ; $77a1: $ff
	rst $38                                          ; $77a2: $ff
	rst $38                                          ; $77a3: $ff
	rst $38                                          ; $77a4: $ff
	rst $38                                          ; $77a5: $ff
	rst $38                                          ; $77a6: $ff
	rst $38                                          ; $77a7: $ff
	rst $38                                          ; $77a8: $ff
	rst $38                                          ; $77a9: $ff
	rst $38                                          ; $77aa: $ff
	rst $38                                          ; $77ab: $ff
	rst $38                                          ; $77ac: $ff
	rst $38                                          ; $77ad: $ff
	rst $38                                          ; $77ae: $ff
	rst $38                                          ; $77af: $ff
	rst $38                                          ; $77b0: $ff
	rst $38                                          ; $77b1: $ff
	rst $38                                          ; $77b2: $ff
	rst $38                                          ; $77b3: $ff
	rst $38                                          ; $77b4: $ff
	rst $38                                          ; $77b5: $ff
	rst $38                                          ; $77b6: $ff
	rst $38                                          ; $77b7: $ff
	rst $38                                          ; $77b8: $ff
	rst $38                                          ; $77b9: $ff
	rst $38                                          ; $77ba: $ff
	rst $38                                          ; $77bb: $ff
	rst $38                                          ; $77bc: $ff
	rst $38                                          ; $77bd: $ff
	rst $38                                          ; $77be: $ff
	rst $38                                          ; $77bf: $ff
	rst $38                                          ; $77c0: $ff
	rst $38                                          ; $77c1: $ff
	rst $38                                          ; $77c2: $ff
	rst $38                                          ; $77c3: $ff
	rst $38                                          ; $77c4: $ff
	rst $38                                          ; $77c5: $ff
	rst $38                                          ; $77c6: $ff
	rst $38                                          ; $77c7: $ff
	rst $38                                          ; $77c8: $ff
	rst $38                                          ; $77c9: $ff
	rst $38                                          ; $77ca: $ff
	rst $38                                          ; $77cb: $ff
	rst $38                                          ; $77cc: $ff
	rst $38                                          ; $77cd: $ff
	rst $38                                          ; $77ce: $ff
	rst $38                                          ; $77cf: $ff
	rst $38                                          ; $77d0: $ff
	rst $38                                          ; $77d1: $ff
	rst $38                                          ; $77d2: $ff
	rst $38                                          ; $77d3: $ff
	rst $38                                          ; $77d4: $ff
	rst $38                                          ; $77d5: $ff
	rst $38                                          ; $77d6: $ff
	rst $38                                          ; $77d7: $ff
	rst $38                                          ; $77d8: $ff
	rst $38                                          ; $77d9: $ff
	rst $38                                          ; $77da: $ff
	rst $38                                          ; $77db: $ff
	rst $38                                          ; $77dc: $ff
	rst $38                                          ; $77dd: $ff
	rst $38                                          ; $77de: $ff
	rst $38                                          ; $77df: $ff
	rst $38                                          ; $77e0: $ff
	rst $38                                          ; $77e1: $ff
	rst $38                                          ; $77e2: $ff
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst $38                                          ; $77e5: $ff
	rst $38                                          ; $77e6: $ff
	rst $38                                          ; $77e7: $ff
	rst $38                                          ; $77e8: $ff
	rst $38                                          ; $77e9: $ff
	rst $38                                          ; $77ea: $ff
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	rst $38                                          ; $77ed: $ff
	rst $38                                          ; $77ee: $ff
	rst $38                                          ; $77ef: $ff
	rst $38                                          ; $77f0: $ff
	rst $38                                          ; $77f1: $ff
	rst $38                                          ; $77f2: $ff
	rst $38                                          ; $77f3: $ff
	rst $38                                          ; $77f4: $ff
	rst $38                                          ; $77f5: $ff
	rst $38                                          ; $77f6: $ff
	rst $38                                          ; $77f7: $ff
	rst $38                                          ; $77f8: $ff
	rst $38                                          ; $77f9: $ff
	rst $38                                          ; $77fa: $ff
	rst $38                                          ; $77fb: $ff
	rst $38                                          ; $77fc: $ff
	rst $38                                          ; $77fd: $ff
	rst $38                                          ; $77fe: $ff
	rst $38                                          ; $77ff: $ff
	rst $38                                          ; $7800: $ff
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	rst $38                                          ; $7803: $ff
	rst $38                                          ; $7804: $ff
	rst $38                                          ; $7805: $ff
	rst $38                                          ; $7806: $ff
	rst $38                                          ; $7807: $ff
	rst $38                                          ; $7808: $ff
	rst $38                                          ; $7809: $ff
	rst $38                                          ; $780a: $ff
	rst $38                                          ; $780b: $ff
	rst $38                                          ; $780c: $ff
	rst $38                                          ; $780d: $ff
	rst $38                                          ; $780e: $ff
	rst $38                                          ; $780f: $ff
	rst $38                                          ; $7810: $ff
	rst $38                                          ; $7811: $ff
	rst $38                                          ; $7812: $ff
	rst $38                                          ; $7813: $ff
	rst $38                                          ; $7814: $ff
	rst $38                                          ; $7815: $ff
	rst $38                                          ; $7816: $ff
	rst $38                                          ; $7817: $ff
	rst $38                                          ; $7818: $ff
	rst $38                                          ; $7819: $ff
	rst $38                                          ; $781a: $ff
	rst $38                                          ; $781b: $ff
	rst $38                                          ; $781c: $ff
	rst $38                                          ; $781d: $ff
	rst $38                                          ; $781e: $ff
	rst $38                                          ; $781f: $ff
	rst $38                                          ; $7820: $ff
	rst $38                                          ; $7821: $ff
	rst $38                                          ; $7822: $ff
	rst $38                                          ; $7823: $ff
	rst $38                                          ; $7824: $ff
	rst $38                                          ; $7825: $ff
	rst $38                                          ; $7826: $ff
	rst $38                                          ; $7827: $ff
	rst $38                                          ; $7828: $ff
	rst $38                                          ; $7829: $ff
	rst $38                                          ; $782a: $ff
	rst $38                                          ; $782b: $ff
	rst $38                                          ; $782c: $ff
	rst $38                                          ; $782d: $ff
	rst $38                                          ; $782e: $ff
	rst $38                                          ; $782f: $ff
	rst $38                                          ; $7830: $ff
	rst $38                                          ; $7831: $ff
	rst $38                                          ; $7832: $ff
	rst $38                                          ; $7833: $ff
	rst $38                                          ; $7834: $ff
	rst $38                                          ; $7835: $ff
	rst $38                                          ; $7836: $ff
	rst $38                                          ; $7837: $ff
	rst $38                                          ; $7838: $ff
	rst $38                                          ; $7839: $ff
	rst $38                                          ; $783a: $ff
	rst $38                                          ; $783b: $ff
	rst $38                                          ; $783c: $ff
	rst $38                                          ; $783d: $ff
	rst $38                                          ; $783e: $ff
	rst $38                                          ; $783f: $ff
	rst $38                                          ; $7840: $ff
	rst $38                                          ; $7841: $ff
	rst $38                                          ; $7842: $ff
	rst $38                                          ; $7843: $ff
	rst $38                                          ; $7844: $ff
	rst $38                                          ; $7845: $ff
	rst $38                                          ; $7846: $ff
	rst $38                                          ; $7847: $ff
	rst $38                                          ; $7848: $ff
	rst $38                                          ; $7849: $ff
	rst $38                                          ; $784a: $ff
	rst $38                                          ; $784b: $ff
	rst $38                                          ; $784c: $ff
	rst $38                                          ; $784d: $ff
	rst $38                                          ; $784e: $ff
	rst $38                                          ; $784f: $ff
	rst $38                                          ; $7850: $ff
	rst $38                                          ; $7851: $ff
	rst $38                                          ; $7852: $ff
	rst $38                                          ; $7853: $ff
	rst $38                                          ; $7854: $ff
	rst $38                                          ; $7855: $ff
	rst $38                                          ; $7856: $ff
	rst $38                                          ; $7857: $ff
	rst $38                                          ; $7858: $ff
	rst $38                                          ; $7859: $ff
	rst $38                                          ; $785a: $ff
	rst $38                                          ; $785b: $ff
	rst $38                                          ; $785c: $ff
	rst $38                                          ; $785d: $ff
	rst $38                                          ; $785e: $ff
	rst $38                                          ; $785f: $ff
	rst $38                                          ; $7860: $ff
	rst $38                                          ; $7861: $ff
	rst $38                                          ; $7862: $ff
	rst $38                                          ; $7863: $ff
	rst $38                                          ; $7864: $ff
	rst $38                                          ; $7865: $ff
	rst $38                                          ; $7866: $ff
	rst $38                                          ; $7867: $ff
	rst $38                                          ; $7868: $ff
	rst $38                                          ; $7869: $ff
	rst $38                                          ; $786a: $ff
	rst $38                                          ; $786b: $ff
	rst $38                                          ; $786c: $ff
	rst $38                                          ; $786d: $ff
	rst $38                                          ; $786e: $ff
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	rst $38                                          ; $7871: $ff
	rst $38                                          ; $7872: $ff
	rst $38                                          ; $7873: $ff
	rst $38                                          ; $7874: $ff
	rst $38                                          ; $7875: $ff
	rst $38                                          ; $7876: $ff
	rst $38                                          ; $7877: $ff
	rst $38                                          ; $7878: $ff
	rst $38                                          ; $7879: $ff
	rst $38                                          ; $787a: $ff
	rst $38                                          ; $787b: $ff
	rst $38                                          ; $787c: $ff
	rst $38                                          ; $787d: $ff
	rst $38                                          ; $787e: $ff
	rst $38                                          ; $787f: $ff
	rst $38                                          ; $7880: $ff
	rst $38                                          ; $7881: $ff
	rst $38                                          ; $7882: $ff
	rst $38                                          ; $7883: $ff
	rst $38                                          ; $7884: $ff
	rst $38                                          ; $7885: $ff
	rst $38                                          ; $7886: $ff
	rst $38                                          ; $7887: $ff
	rst $38                                          ; $7888: $ff
	rst $38                                          ; $7889: $ff
	rst $38                                          ; $788a: $ff
	rst $38                                          ; $788b: $ff
	rst $38                                          ; $788c: $ff
	rst $38                                          ; $788d: $ff
	rst $38                                          ; $788e: $ff
	rst $38                                          ; $788f: $ff
	rst $38                                          ; $7890: $ff
	rst $38                                          ; $7891: $ff
	rst $38                                          ; $7892: $ff
	rst $38                                          ; $7893: $ff
	rst $38                                          ; $7894: $ff
	rst $38                                          ; $7895: $ff
	rst $38                                          ; $7896: $ff
	rst $38                                          ; $7897: $ff
	rst $38                                          ; $7898: $ff
	rst $38                                          ; $7899: $ff
	rst $38                                          ; $789a: $ff
	rst $38                                          ; $789b: $ff
	rst $38                                          ; $789c: $ff
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	rst $38                                          ; $789f: $ff
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	rst $38                                          ; $78a2: $ff
	rst $38                                          ; $78a3: $ff
	rst $38                                          ; $78a4: $ff
	rst $38                                          ; $78a5: $ff
	rst $38                                          ; $78a6: $ff
	rst $38                                          ; $78a7: $ff
	rst $38                                          ; $78a8: $ff
	rst $38                                          ; $78a9: $ff
	rst $38                                          ; $78aa: $ff
	rst $38                                          ; $78ab: $ff
	rst $38                                          ; $78ac: $ff
	rst $38                                          ; $78ad: $ff
	rst $38                                          ; $78ae: $ff
	rst $38                                          ; $78af: $ff
	rst $38                                          ; $78b0: $ff
	rst $38                                          ; $78b1: $ff
	rst $38                                          ; $78b2: $ff
	rst $38                                          ; $78b3: $ff
	rst $38                                          ; $78b4: $ff
	rst $38                                          ; $78b5: $ff
	rst $38                                          ; $78b6: $ff
	rst $38                                          ; $78b7: $ff
	rst $38                                          ; $78b8: $ff
	rst $38                                          ; $78b9: $ff
	rst $38                                          ; $78ba: $ff
	rst $38                                          ; $78bb: $ff
	rst $38                                          ; $78bc: $ff
	rst $38                                          ; $78bd: $ff
	rst $38                                          ; $78be: $ff
	rst $38                                          ; $78bf: $ff
	rst $38                                          ; $78c0: $ff
	rst $38                                          ; $78c1: $ff
	rst $38                                          ; $78c2: $ff
	rst $38                                          ; $78c3: $ff
	rst $38                                          ; $78c4: $ff
	rst $38                                          ; $78c5: $ff
	rst $38                                          ; $78c6: $ff
	rst $38                                          ; $78c7: $ff
	rst $38                                          ; $78c8: $ff
	rst $38                                          ; $78c9: $ff
	rst $38                                          ; $78ca: $ff
	rst $38                                          ; $78cb: $ff
	rst $38                                          ; $78cc: $ff
	rst $38                                          ; $78cd: $ff
	rst $38                                          ; $78ce: $ff
	rst $38                                          ; $78cf: $ff
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	rst $38                                          ; $78d2: $ff
	rst $38                                          ; $78d3: $ff
	rst $38                                          ; $78d4: $ff
	rst $38                                          ; $78d5: $ff
	rst $38                                          ; $78d6: $ff
	rst $38                                          ; $78d7: $ff
	rst $38                                          ; $78d8: $ff
	rst $38                                          ; $78d9: $ff
	rst $38                                          ; $78da: $ff
	rst $38                                          ; $78db: $ff
	rst $38                                          ; $78dc: $ff
	rst $38                                          ; $78dd: $ff
	rst $38                                          ; $78de: $ff
	rst $38                                          ; $78df: $ff
	rst $38                                          ; $78e0: $ff
	rst $38                                          ; $78e1: $ff
	rst $38                                          ; $78e2: $ff
	rst $38                                          ; $78e3: $ff
	rst $38                                          ; $78e4: $ff
	rst $38                                          ; $78e5: $ff
	rst $38                                          ; $78e6: $ff
	rst $38                                          ; $78e7: $ff
	rst $38                                          ; $78e8: $ff
	rst $38                                          ; $78e9: $ff
	rst $38                                          ; $78ea: $ff
	rst $38                                          ; $78eb: $ff
	rst $38                                          ; $78ec: $ff
	rst $38                                          ; $78ed: $ff
	rst $38                                          ; $78ee: $ff
	rst $38                                          ; $78ef: $ff
	rst $38                                          ; $78f0: $ff
	rst $38                                          ; $78f1: $ff
	rst $38                                          ; $78f2: $ff
	rst $38                                          ; $78f3: $ff
	rst $38                                          ; $78f4: $ff
	rst $38                                          ; $78f5: $ff
	rst $38                                          ; $78f6: $ff
	rst $38                                          ; $78f7: $ff
	rst $38                                          ; $78f8: $ff
	rst $38                                          ; $78f9: $ff
	rst $38                                          ; $78fa: $ff
	rst $38                                          ; $78fb: $ff
	rst $38                                          ; $78fc: $ff
	rst $38                                          ; $78fd: $ff
	rst $38                                          ; $78fe: $ff
	rst $38                                          ; $78ff: $ff
	rst $38                                          ; $7900: $ff
	rst $38                                          ; $7901: $ff
	rst $38                                          ; $7902: $ff
	rst $38                                          ; $7903: $ff
	rst $38                                          ; $7904: $ff
	rst $38                                          ; $7905: $ff
	rst $38                                          ; $7906: $ff
	rst $38                                          ; $7907: $ff
	rst $38                                          ; $7908: $ff
	rst $38                                          ; $7909: $ff
	rst $38                                          ; $790a: $ff
	rst $38                                          ; $790b: $ff
	rst $38                                          ; $790c: $ff
	rst $38                                          ; $790d: $ff
	rst $38                                          ; $790e: $ff
	rst $38                                          ; $790f: $ff
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	rst $38                                          ; $7912: $ff
	rst $38                                          ; $7913: $ff
	rst $38                                          ; $7914: $ff
	rst $38                                          ; $7915: $ff
	rst $38                                          ; $7916: $ff
	rst $38                                          ; $7917: $ff
	rst $38                                          ; $7918: $ff
	rst $38                                          ; $7919: $ff
	rst $38                                          ; $791a: $ff
	rst $38                                          ; $791b: $ff
	rst $38                                          ; $791c: $ff
	rst $38                                          ; $791d: $ff
	rst $38                                          ; $791e: $ff
	rst $38                                          ; $791f: $ff
	rst $38                                          ; $7920: $ff
	rst $38                                          ; $7921: $ff
	rst $38                                          ; $7922: $ff
	rst $38                                          ; $7923: $ff
	rst $38                                          ; $7924: $ff
	rst $38                                          ; $7925: $ff
	rst $38                                          ; $7926: $ff
	rst $38                                          ; $7927: $ff
	rst $38                                          ; $7928: $ff
	rst $38                                          ; $7929: $ff
	rst $38                                          ; $792a: $ff
	rst $38                                          ; $792b: $ff
	rst $38                                          ; $792c: $ff
	rst $38                                          ; $792d: $ff
	rst $38                                          ; $792e: $ff
	rst $38                                          ; $792f: $ff
	rst $38                                          ; $7930: $ff
	rst $38                                          ; $7931: $ff
	rst $38                                          ; $7932: $ff
	rst $38                                          ; $7933: $ff
	rst $38                                          ; $7934: $ff
	rst $38                                          ; $7935: $ff
	rst $38                                          ; $7936: $ff
	rst $38                                          ; $7937: $ff
	rst $38                                          ; $7938: $ff
	rst $38                                          ; $7939: $ff
	rst $38                                          ; $793a: $ff
	rst $38                                          ; $793b: $ff
	rst $38                                          ; $793c: $ff
	rst $38                                          ; $793d: $ff
	rst $38                                          ; $793e: $ff
	rst $38                                          ; $793f: $ff
	rst $38                                          ; $7940: $ff
	rst $38                                          ; $7941: $ff
	rst $38                                          ; $7942: $ff
	rst $38                                          ; $7943: $ff
	rst $38                                          ; $7944: $ff
	rst $38                                          ; $7945: $ff
	rst $38                                          ; $7946: $ff
	rst $38                                          ; $7947: $ff
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	rst $38                                          ; $794a: $ff
	rst $38                                          ; $794b: $ff
	rst $38                                          ; $794c: $ff
	rst $38                                          ; $794d: $ff
	rst $38                                          ; $794e: $ff
	rst $38                                          ; $794f: $ff
	rst $38                                          ; $7950: $ff
	rst $38                                          ; $7951: $ff
	rst $38                                          ; $7952: $ff
	rst $38                                          ; $7953: $ff
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	rst $38                                          ; $7956: $ff
	rst $38                                          ; $7957: $ff
	rst $38                                          ; $7958: $ff
	rst $38                                          ; $7959: $ff
	rst $38                                          ; $795a: $ff
	rst $38                                          ; $795b: $ff
	rst $38                                          ; $795c: $ff
	rst $38                                          ; $795d: $ff
	rst $38                                          ; $795e: $ff
	rst $38                                          ; $795f: $ff
	rst $38                                          ; $7960: $ff
	rst $38                                          ; $7961: $ff
	rst $38                                          ; $7962: $ff
	rst $38                                          ; $7963: $ff
	rst $38                                          ; $7964: $ff
	rst $38                                          ; $7965: $ff
	rst $38                                          ; $7966: $ff
	rst $38                                          ; $7967: $ff
	rst $38                                          ; $7968: $ff
	rst $38                                          ; $7969: $ff
	rst $38                                          ; $796a: $ff
	rst $38                                          ; $796b: $ff
	rst $38                                          ; $796c: $ff
	rst $38                                          ; $796d: $ff
	rst $38                                          ; $796e: $ff
	rst $38                                          ; $796f: $ff
	rst $38                                          ; $7970: $ff
	rst $38                                          ; $7971: $ff
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	rst $38                                          ; $7974: $ff
	rst $38                                          ; $7975: $ff
	rst $38                                          ; $7976: $ff
	rst $38                                          ; $7977: $ff
	rst $38                                          ; $7978: $ff
	rst $38                                          ; $7979: $ff
	rst $38                                          ; $797a: $ff
	rst $38                                          ; $797b: $ff
	rst $38                                          ; $797c: $ff
	rst $38                                          ; $797d: $ff
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	rst $38                                          ; $7980: $ff
	rst $38                                          ; $7981: $ff
	rst $38                                          ; $7982: $ff
	rst $38                                          ; $7983: $ff
	rst $38                                          ; $7984: $ff
	rst $38                                          ; $7985: $ff
	rst $38                                          ; $7986: $ff
	rst $38                                          ; $7987: $ff
	rst $38                                          ; $7988: $ff
	rst $38                                          ; $7989: $ff
	rst $38                                          ; $798a: $ff
	rst $38                                          ; $798b: $ff
	rst $38                                          ; $798c: $ff
	rst $38                                          ; $798d: $ff
	rst $38                                          ; $798e: $ff
	rst $38                                          ; $798f: $ff
	rst $38                                          ; $7990: $ff
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	rst $38                                          ; $7993: $ff
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rst $38                                          ; $7999: $ff
	rst $38                                          ; $799a: $ff
	rst $38                                          ; $799b: $ff
	rst $38                                          ; $799c: $ff
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	rst $38                                          ; $79a1: $ff
	rst $38                                          ; $79a2: $ff
	rst $38                                          ; $79a3: $ff
	rst $38                                          ; $79a4: $ff
	rst $38                                          ; $79a5: $ff
	rst $38                                          ; $79a6: $ff
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
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff
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

Jump_038_7e8a:
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff

Jump_038_7e92:
	rst $38                                          ; $7e92: $ff
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

Jump_038_7fd1:
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
